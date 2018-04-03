.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osGetTime
/* 0075E0 800069E0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0075E4 800069E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0075E8 800069E8 0C001CA0 */  jal   __osDisableInt
/* 0075EC 800069EC AFB00018 */   sw    $s0, 0x18($sp)
/* 0075F0 800069F0 0C001BA8 */  jal   osGetCount
/* 0075F4 800069F4 00408025 */   move  $s0, $v0
/* 0075F8 800069F8 AFA20034 */  sw    $v0, 0x34($sp)
/* 0075FC 800069FC 3C0F8001 */  lui   $t7, %hi(D_80015AE8) # $t7, 0x8001
/* 007600 80006A00 8DEF5AE8 */  lw    $t7, %lo(D_80015AE8)($t7)
/* 007604 80006A04 8FAE0034 */  lw    $t6, 0x34($sp)
/* 007608 80006A08 3C088001 */  lui   $t0, %hi(D_80015AE0) # $t0, 0x8001
/* 00760C 80006A0C 3C098001 */  lui   $t1, %hi(D_80015AE4) # $t1, 0x8001
/* 007610 80006A10 8D295AE4 */  lw    $t1, %lo(D_80015AE4)($t1)
/* 007614 80006A14 8D085AE0 */  lw    $t0, %lo(D_80015AE0)($t0)
/* 007618 80006A18 01CFC023 */  subu  $t8, $t6, $t7
/* 00761C 80006A1C AFB80030 */  sw    $t8, 0x30($sp)
/* 007620 80006A20 02002025 */  move  $a0, $s0
/* 007624 80006A24 AFA9002C */  sw    $t1, 0x2c($sp)
/* 007628 80006A28 0C001CBC */  jal   func_800072F0
/* 00762C 80006A2C AFA80028 */   sw    $t0, 0x28($sp)
/* 007630 80006A30 8FB90030 */  lw    $t9, 0x30($sp)
/* 007634 80006A34 8FAD002C */  lw    $t5, 0x2c($sp)
/* 007638 80006A38 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00763C 80006A3C 03205825 */  move  $t3, $t9
/* 007640 80006A40 016D1821 */  addu  $v1, $t3, $t5
/* 007644 80006A44 8FAC0028 */  lw    $t4, 0x28($sp)
/* 007648 80006A48 240A0000 */  li    $t2, 0
/* 00764C 80006A4C 006D082B */  sltu  $at, $v1, $t5
/* 007650 80006A50 002A1021 */  addu  $v0, $at, $t2
/* 007654 80006A54 8FB00018 */  lw    $s0, 0x18($sp)
/* 007658 80006A58 27BD0038 */  addiu $sp, $sp, 0x38
/* 00765C 80006A5C 03E00008 */  jr    $ra
/* 007660 80006A60 004C1021 */   addu  $v0, $v0, $t4
