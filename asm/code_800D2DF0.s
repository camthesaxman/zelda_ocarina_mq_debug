.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800D2DF0
/* B49F90 800D2DF0 3C028001 */  lui   $v0, 0x8001
/* B49F94 800D2DF4 03E00008 */  jr    $ra
/* B49F98 800D2DF8 24429320 */   addiu $v0, $v0, -0x6ce0

glabel func_800D2DFC
/* B49F9C 800D2DFC 3C0E8001 */  lui   $t6, %hi(D_800093F0) # $t6, 0x8001
/* B49FA0 800D2E00 3C0F8001 */  lui   $t7, %hi(D_80009320) # $t7, 0x8001
/* B49FA4 800D2E04 25EF9320 */  addiu $t7, %lo(D_80009320) # addiu $t7, $t7, -0x6ce0
/* B49FA8 800D2E08 25CE93F0 */  addiu $t6, %lo(D_800093F0) # addiu $t6, $t6, -0x6c10
/* B49FAC 800D2E0C 03E00008 */  jr    $ra
/* B49FB0 800D2E10 01CF1023 */   subu  $v0, $t6, $t7

glabel func_800D2E14
/* B49FB4 800D2E14 3C028013 */  lui   $v0, 0x8013
/* B49FB8 800D2E18 03E00008 */  jr    $ra
/* B49FBC 800D2E1C 8C42DBA0 */   lw    $v0, -0x2460($v0)

glabel func_800D2E20
/* B49FC0 800D2E20 3C028013 */  lui   $v0, 0x8013
/* B49FC4 800D2E24 03E00008 */  jr    $ra
/* B49FC8 800D2E28 8C42DBA4 */   lw    $v0, -0x245c($v0)
