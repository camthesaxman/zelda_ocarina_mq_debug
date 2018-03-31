.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osGetThreadId
/* 005B20 80004F20 14800003 */  bnez  $a0, .L80004F30
/* 005B24 80004F24 00000000 */   nop   
/* 005B28 80004F28 3C048001 */  lui   $a0, %hi(D_8000AD50) # $a0, 0x8001
/* 005B2C 80004F2C 8C84AD50 */  lw    $a0, %lo(D_8000AD50)($a0)
.L80004F30:
/* 005B30 80004F30 03E00008 */  jr    $ra
/* 005B34 80004F34 8C820014 */   lw    $v0, 0x14($a0)
