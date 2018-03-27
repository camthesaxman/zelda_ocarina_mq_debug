.SUFFIXES:

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

#### Tools ####

AS        := $(MIPS_BINUTILS)/bin/mips64-elf-as
LD        := $(MIPS_BINUTILS)/bin/mips64-elf-ld
OBJCOPY   := $(MIPS_BINUTILS)/bin/mips64-elf-objcopy
CC        := $(QEMU_IRIX) -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc

ASFLAGS := -march=vr4300 -32
CFLAGS := -mips2 -G 0 -O2 -non_shared -Xcpluscomm -I $(PROJECT_DIR)include -I include -I ./include


#### Files ####

# ROM image
ROM := zelda_ocarina_mq_dbg.z64
ELF := $(ROM:.z64=.elf)
MAP := $(ROM:.z64=.map)

# baserom files
include baserom_files.mk

# source code
C_FILES := $(wildcard src/*.c)
S_FILES := $(wildcard asm/*.s)
O_FILES := $(foreach f,$(S_FILES:.s=.o),build/$f) \
	   $(foreach f,$(C_FILES:.c=.o),build/$f) \
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
	$(LD) -T ldscript.txt --no-check-sections --accept-unknown-input-arch -Map $(MAP) $(O_FILES) -o $@

clean:
	$(RM) $(ROM) $(ELF) $(MAP) -r build


#### Various Recipes ####

build/baserom/%.o: baserom/%
	$(OBJCOPY) -I binary -O elf32-big $< $@

build/asm/%.o: asm/%.s
	$(AS) $(ASFLAGS) $^ -o $@

build/src/%.o: src/%.c
	$(CC) -c $(CFLAGS) $^ -o $@
