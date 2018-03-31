.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel osVirtualToPhysical
/* 0059E0 80004DE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0059E4 80004DE4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0059E8 80004DE8 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0059EC 80004DEC 3C018000 */  lui   $at, 0x8000
/* 0059F0 80004DF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0059F4 80004DF4 01C1082B */  sltu  $at, $t6, $at
/* 0059F8 80004DF8 14200007 */  bnez  $at, .L80004E18
/* 0059FC 80004DFC 3C01A000 */   lui   $at, 0xa000
/* 005A00 80004E00 01C1082B */  sltu  $at, $t6, $at
/* 005A04 80004E04 10200004 */  beqz  $at, .L80004E18
/* 005A08 80004E08 3C011FFF */   lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 005A0C 80004E0C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 005A10 80004E10 1000000E */  b     .L80004E4C
/* 005A14 80004E14 01C11024 */   and   $v0, $t6, $at
.L80004E18:
/* 005A18 80004E18 8FAF0018 */  lw    $t7, 0x18($sp)
/* 005A1C 80004E1C 3C01A000 */  lui   $at, 0xa000
/* 005A20 80004E20 01E1082B */  sltu  $at, $t7, $at
/* 005A24 80004E24 14200007 */  bnez  $at, .L80004E44
/* 005A28 80004E28 3C01C000 */   lui   $at, 0xc000
/* 005A2C 80004E2C 01E1082B */  sltu  $at, $t7, $at
/* 005A30 80004E30 10200004 */  beqz  $at, .L80004E44
/* 005A34 80004E34 3C011FFF */   lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 005A38 80004E38 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 005A3C 80004E3C 10000003 */  b     .L80004E4C
/* 005A40 80004E40 01E11024 */   and   $v0, $t7, $at
.L80004E44:
/* 005A44 80004E44 0C001410 */  jal   __osProbeTLB
/* 005A48 80004E48 8FA40018 */   lw    $a0, 0x18($sp)
.L80004E4C:
/* 005A4C 80004E4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005A50 80004E50 27BD0018 */  addiu $sp, $sp, 0x18
/* 005A54 80004E54 03E00008 */  jr    $ra
/* 005A58 80004E58 00000000 */   nop   
