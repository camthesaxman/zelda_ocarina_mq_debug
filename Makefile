.SUFFIXES:

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

#### Tools ####

AS         := $(MIPS_BINUTILS_PREFIX)as
LD         := $(MIPS_BINUTILS_PREFIX)ld
OBJCOPY    := $(MIPS_BINUTILS_PREFIX)objcopy
OBJDUMP    := $(MIPS_BINUTILS_PREFIX)objdump
CC         := $(QEMU_IRIX) -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc
CPP        := cpp
MKLDSCRIPT := tools/mkldscript
ELF2ROM    := tools/elf2rom
ZAP        := tools/ZAP/ZAP/bin/Debug/ZAP.exe
MONO       := mono

OPTIMIZATION := -O2
ASFLAGS := -march=vr4300 -32 -I include
CFLAGS  := -mips2 -G 0 -non_shared -Xfullwarn -Xcpluscomm -I include


#### Files ####

# ROM image
ROM := zelda_ocarina_mq_dbg.z64
ELF := $(ROM:.z64=.elf)
# description of ROM segments
SPEC := spec

# baserom files
include baserom_files.mk

SRC_DIRS := src src/libultra
ASM_DIRS := asm
TEXTURE_DIRS = textures


# source code
C_FILES       := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
S_FILES       := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
TEXTURE_FILES := $(foreach dir,$(TEXTURE_DIRS),$(wildcard $(dir)/*.xml))
O_FILES       := $(foreach f,$(S_FILES:.s=.o),build/$f) \
                 $(foreach f,$(C_FILES:.c=.o),build/$f) \
                 $(foreach f,$(BASEROM_FILES),build/$f.o) \
		         $(foreach f,$(TEXTURE_FILES:.xml=.o),build/$f)

# create build directories
$(shell mkdir -p build/baserom)
$(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(TEXTURE_DIRS),$(shell mkdir -p build/$(dir)))

build/src/libultra/%.o: OPTIMIZATION := -O1
#build/src/libultra/osGetTime.o: OPTIMIZATION := -O2


#### Main Targets ###

compare: $(ROM)
	@md5sum -c checksum.md5

$(ROM): $(ELF)
	$(ELF2ROM) $< $@

$(ELF): $(O_FILES) build/ldscript.txt
	$(LD) -T undefined_syms.txt -T build/ldscript.txt --no-check-sections --accept-unknown-input-arch -o $@

build/ldscript.txt: $(SPEC)
	$(CPP) -P $< > build/spec
	$(MKLDSCRIPT) build/spec $@

clean:
	$(RM) $(ROM) $(ELF) -r build


#### Various Recipes ####

build/baserom/%.o: baserom/%
	$(OBJCOPY) -I binary -O elf32-big $< $@

build/asm/%.o: asm/%.s
	$(AS) $(ASFLAGS) $^ -o $@

build/src/%.o: src/%.c
	$(CC) -c $(CFLAGS) $(OPTIMIZATION) $^ -o $@
	#@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/textures/%.o: textures/%.zdata
	$(OBJCOPY) -I binary -O elf32-big $< $@

textures/%.zdata: textures/%
	$(MONO) $(ZAP) $<.xml b
