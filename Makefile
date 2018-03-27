.SUFFIXES:

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

#### Tools ####

AS        := $(MIPS_BINUTILS)/bin/mips64-elf-as
LD        := $(MIPS_BINUTILS)/bin/mips64-elf-ld
OBJCOPY   := $(MIPS_BINUTILS)/bin/mips64-elf-objcopy
CC        := $(QEMU_IRIX) -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc -v

CFLAGS := -mips2 -G 0 -O0 -I $(PROJECT_DIR)include -I include -I ./include

#### Files ####

# ROM image
ROM := zelda_ocarina_mq_dbg.z64
ELF := $(ROM:.z64=.elf)
MAP := $(ROM:.z64=.map)

# baserom files
include baserom_files.mk

# source code
S_FILES := $(wildcard asm/*.s)
O_FILES := $(foreach f,$(S_FILES:.s=.o),build/$f) \
           $(foreach f,$(BASEROM_FILES),build/$f.o)

$(shell mkdir -p build/asm)
$(shell mkdir -p build/baserom)
$(shell mkdir -p build/src)


#### Main Targets ###

compare: $(ROM)
	@md5sum -c checksum.md5

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@
    # pad to 54 MiB
    # note that this build does not include the garbage data from the rest of the cartridge dump
	$(OBJCOPY) -I binary -O binary $@ $@ --pad-to 0x03600000 --gap-fill=0xFF

$(ELF): $(O_FILES) ldscript.txt
	$(LD) -T ldscript.txt -Map $(MAP) $(O_FILES) -o $@

clean:
	$(RM) $(ROM) $(ELF) $(MAP) -r build


#### Various Recipes ####

build/baserom/%.o: baserom/%
	$(OBJCOPY) -I binary -O elf32-bigmips -B mips $< $@

# assemble code into object file
build/asm/%.o: asm/%.s
	$(AS) $^ -o $@

build/%.o: src/%.c
	$(CC) -c $(CFLAGS) $^ -o $@
