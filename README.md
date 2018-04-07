# Legend of Zelda: Ocarina of Time Master Quest (debug)

This is a disassembly of Legend of Zelda: Ocarina of Time Master Quest (debug)

It builds the following ROM:
* zelda_ocarina_mq_dbg.z64 `md5: 717179476af84133b14ff73af87db57a`

#### Requirements

* Linux or Windows 10 with WSL. Other operating systems may be supported in the future
* GCC and GNU Make
* Python 2.x or 3.x (for extracting the baserom files)
* An existing copy of the ROM named `baserom.z64` in the repository directory.
* GNU binutils compiled for the `mips64-elf` target
* installation of the IRIS Development Option 5.3 C compiler (see the Releases section)
* [irixemu](https://github.com/camthesaxman/irixemu) This is a special modified version of QEMU meant for running IRIX executables on Linux.
* Mono C# Runtime `monodevelop`

#### Setting up and building

* Download the freeware IDO 5.3 compiler from the releases section, and extract it.
* Build the tools with `make -C tools`
* Run `python extract_baserom.py` to extract files from baserom.z64
* Set the following environment variables:
  - `MIPS_BINUTILS` - path to mips64-elf binutils. This directory should contain `bin`, `mips64-elf`, and `share` subdirectories.
  - `QEMU_IRIX` - path to the irixemu `qemu-mips` binary.
  - `IRIX_ROOT` - directory where you extracted the IDO 5.3 compiler. This directory should contain `usr` and `lib` subdirectories.
* Build the ROM by running `make`.
