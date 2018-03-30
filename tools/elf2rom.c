#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "elf32.h"
#include "util.h"

#define ROM_SEG_START_SUFFIX ".rom_start"
#define ROM_SEG_END_SUFFIX ".rom_end"

struct RomSegment
{
    const char *name;
    const void *data;
    int size;
    int romStart;
    int romEnd;
};

static struct RomSegment *g_romSegments = NULL;
static int g_romSegmentsCount = 0;
static int g_romSize;

static unsigned int round_up(unsigned int num, unsigned int multiple)
{
    num += multiple - 1;
    return num / multiple * multiple;
}

static char *sprintf_alloc(const char *fmt, ...)
{
    va_list args;
    int size;
    char *buffer;

    va_start(args, fmt);
    size = vsnprintf(NULL, 0, fmt, args) + 1;
    va_end(args);

    buffer = malloc(size);
    
    va_start(args, fmt);
    vsprintf(buffer, fmt, args);
    va_end(args);

    return buffer;
}

static struct RomSegment *add_rom_segment(const char *name)
{
    int index = g_romSegmentsCount;

    g_romSegmentsCount++;
    g_romSegments = realloc(g_romSegments, g_romSegmentsCount * sizeof(*g_romSegments));

    g_romSegments[index].name = name;
    g_romSegments[index].romStart = -1;
    g_romSegments[index].romEnd = -1;
    return &g_romSegments[index];
}

static void find_segment_info(struct Elf32 *elf, struct RomSegment *segment)
{
    int i;
    char *romStartSymName = sprintf_alloc("_%sSegmentRomStart", segment->name);
    char *romEndSymName = sprintf_alloc("_%sSegmentRomEnd", segment->name);

    segment->romStart = -1;
    segment->romEnd = -1;

    for (i = 0; i < elf->numsymbols; i++)
    {
        struct Elf32_Symbol sym;
        
        if (!elf32_get_symbol(elf, &sym, i))
            util_fatal_error("invalid or corrupt ELF file");

        if (strcmp(sym.name, romStartSymName) == 0)
            segment->romStart = sym.value;
        else if (strcmp(sym.name, romEndSymName) == 0)
            segment->romEnd = sym.value;
    }
    
    if (segment->romStart == -1)
        util_fatal_error("ROM start address of %s is not defined\n", segment->name);
    if (segment->romEnd == -1)
        util_fatal_error("ROM end address of %s is not defined\n", segment->name);
    
    free(romStartSymName);
    free(romEndSymName);
}

static void parse_input_file(const char *filename)
{
    struct Elf32 elf;
    const void *data;
    size_t size;
    int i;

    data = util_read_whole_file(filename, &size);

    if (!elf32_init(&elf, data, size) || elf.machine != ELF_MACHINE_MIPS)
        util_fatal_error("%s is not a valid 32-bit MIPS ELF file", filename);

    // get ROM segments
    // sections of type SHT_PROGBITS and  whose name is ..secname are considered ROM segments
    for (i = 0; i < elf.shnum; i++)
    {
        struct Elf32_Section sec;
        struct RomSegment *segment;

        if (!elf32_get_section(&elf, &sec, i))
            util_fatal_error("invalid or corrupt ELF file");
        if (sec.type == SHT_PROGBITS && sec.name[0] == '.' && sec.name[1] == '.'
        // HACK! ld sometimes marks NOLOAD sections as SHT_PROGBITS for no apparent reason,
        // so we must ignore the ..secname.bss sections explicitly
         && strchr(sec.name + 2, '.') == NULL)
        {
            
            segment = add_rom_segment(sec.name + 2);
            find_segment_info(&elf, segment);
            segment->data = elf.data + sec.offset;
        }
            
    }

    // find ROM size
    for (i = 0; i < elf.numsymbols; i++)
    {
        struct Elf32_Symbol sym;

        if (!elf32_get_symbol(&elf, &sym, i))
            util_fatal_error("invalid or corrupt ELF file");
        if (strcmp(sym.name, "_RomSize") == 0)
        {
            g_romSize = sym.value;
            goto got_rom_size;
        }
    }
    util_fatal_error("could not find symbol _RomSize");
  got_rom_size:

    // verify segment info
    for (i = 0; i < g_romSegmentsCount; i++)
    {
        if (g_romSegments[i].romStart == -1)
            util_fatal_error("segment %s has no ROM start address defined.", g_romSegments[i].name);
        if (g_romSegments[i].romEnd == -1)
            util_fatal_error("segment %s has no ROM end address defined.", g_romSegments[i].name);
    }
}

// Writes the N64 ROM, padding the file size to a multiple of 1 MiB
static void write_rom_file(const char *filename)
{
    size_t fileSize = round_up(g_romSize, 0x100000);
    uint8_t *buffer = calloc(fileSize, 1);
    int i;

    // write segments
    for (i = 0; i < g_romSegmentsCount; i++)
    {
        int size = g_romSegments[i].romEnd - g_romSegments[i].romStart;

        memcpy(buffer + g_romSegments[i].romStart, g_romSegments[i].data, size);
    }

    // pad the remaining space with 0xFF
    for (i = g_romSize; i < fileSize; i++)
        buffer[i] = 0xFF;

    util_write_whole_file(filename, buffer, fileSize);
    free(buffer);
}

static void usage(const char *execname)
{
    printf("usage: %s\n", execname);
}

int main(int argc, char **argv)
{
    if (argc != 3)
    {
        usage(argv[0]);
        return 1;
    }

    parse_input_file(argv[1]);
    write_rom_file(argv[2]);

    return 0;
}
