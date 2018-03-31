.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel osCreateMesgQueue
/* 006DD0 800061D0 3C0E8001 */  lui   $t6, %hi(D_8000AD40) # $t6, 0x8001
/* 006DD4 800061D4 3C0F8001 */  lui   $t7, %hi(D_8000AD40) # $t7, 0x8001
/* 006DD8 800061D8 25CEAD40 */  addiu $t6, %lo(D_8000AD40) # addiu $t6, $t6, -0x52c0
/* 006DDC 800061DC 25EFAD40 */  addiu $t7, %lo(D_8000AD40) # addiu $t7, $t7, -0x52c0
/* 006DE0 800061E0 AC8E0000 */  sw    $t6, ($a0)
/* 006DE4 800061E4 AC8F0004 */  sw    $t7, 4($a0)
/* 006DE8 800061E8 AC800008 */  sw    $zero, 8($a0)
/* 006DEC 800061EC AC80000C */  sw    $zero, 0xc($a0)
/* 006DF0 800061F0 AC860010 */  sw    $a2, 0x10($a0)
/* 006DF4 800061F4 03E00008 */  jr    $ra
/* 006DF8 800061F8 AC850014 */   sw    $a1, 0x14($a0)
