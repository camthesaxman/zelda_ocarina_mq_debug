.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_801067A0
/* B7D940 801067A0 3C0EA404 */  lui   $t6, %hi(D_A4040010) # $t6, 0xa404
/* B7D944 801067A4 8DC20010 */  lw    $v0, %lo(D_A4040010)($t6)
/* B7D948 801067A8 3C18A408 */  lui   $t8, 0xa408
/* B7D94C 801067AC 304F0001 */  andi  $t7, $v0, 1
/* B7D950 801067B0 15E00003 */  bnez  $t7, .L801067C0
/* B7D954 801067B4 00001025 */   move  $v0, $zero
/* B7D958 801067B8 03E00008 */  jr    $ra
/* B7D95C 801067BC 2402FFFF */   li    $v0, -1

.L801067C0:
/* B7D960 801067C0 AF040000 */  sw    $a0, ($t8)
/* B7D964 801067C4 03E00008 */  jr    $ra
/* B7D968 801067C8 00000000 */   nop   
