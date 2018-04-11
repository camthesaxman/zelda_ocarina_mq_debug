CC := gcc
CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O0
XBUILD := xbuild
PROGRAMS := yaz0 makeromfs elf2rom mkldscript
PROGRAMS_CS := ZAP.exe

all: $(PROGRAMS) $(PROGRAMS_CS)

#TODO: Clean this up
ZAP.exe:
	$(XBUILD) ZAP/ZAP.sln

clean:
	$(RM) $(PROGRAMS)

mkldscript_SOURCES := mkldscript.c util.c
elf2rom_SOURCES    := elf2rom.c elf32.c n64chksum.c util.c
yaz0_SOURCES       := yaz0tool.c yaz0.c util.c
makeromfs_SOURCES  := makeromfs.c n64chksum.c util.c

define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -o $$@
endef

define COMPILE_CS = 
$(1): 
	$(XBUILD) $1/$1.sln
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))