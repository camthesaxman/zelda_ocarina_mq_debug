#!/bin/bash

OBJDUMP="$MIPS_BINUTILS/bin/mips64-elf-objdump -D -bbinary -mmips -EB"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS baserom.z64 > baserom.dump
$OBJDUMP $OPTIONS zelda_ocarina_mq_dbg.z64 > zelda_ocarina_mq_dbg.dump
diff baserom.dump zelda_ocarina_mq_dbg.dump
