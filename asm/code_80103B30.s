.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80103B30
/* B7ACD0 80103B30 3C0EA404 */  lui   $t6, %hi(D_A4040010) # $t6, 0xa404
/* B7ACD4 80103B34 8DC20010 */  lw    $v0, %lo(D_A4040010)($t6)
/* B7ACD8 80103B38 304F001C */  andi  $t7, $v0, 0x1c
/* B7ACDC 80103B3C 11E00003 */  beqz  $t7, .L80103B4C
/* B7ACE0 80103B40 00001025 */   move  $v0, $zero
/* B7ACE4 80103B44 03E00008 */  jr    $ra
/* B7ACE8 80103B48 24020001 */   li    $v0, 1

.L80103B4C:
/* B7ACEC 80103B4C 03E00008 */  jr    $ra
/* B7ACF0 80103B50 00000000 */   nop   
