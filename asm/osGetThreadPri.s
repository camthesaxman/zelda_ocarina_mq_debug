.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osGetThreadPri
/* 007110 80006510 14800003 */  bnez  $a0, .L80006520
/* 007114 80006514 00000000 */   nop   
/* 007118 80006518 3C048001 */  lui   $a0, %hi(D_8000AD50) # $a0, 0x8001
/* 00711C 8000651C 8C84AD50 */  lw    $a0, %lo(D_8000AD50)($a0)
.L80006520:
/* 007120 80006520 03E00008 */  jr    $ra
/* 007124 80006524 8C820004 */   lw    $v0, 4($a0)
