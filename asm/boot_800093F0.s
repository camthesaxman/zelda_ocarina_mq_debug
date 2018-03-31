.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800093F0
/* 009FF0 800093F0 E80C2001 */  swc2  $12, 0x2001($zero)
/* 009FF4 800093F4 34014000 */  ori   $at, $zero, 16384
/* 009FF8 800093F8 40812000 */  mtc0  $at, $4
/* 009FFC 800093FC 0000000D */  break 
/* 00A000 80009400 00000000 */  nop   
/* 00A004 80009404 09000425 */  j     0x84001094
/* 00A008 80009408 00000000 */   nop   
