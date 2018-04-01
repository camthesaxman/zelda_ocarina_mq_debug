.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel ObjectSpawn
/* B0EDA0 80097C00 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0EDA4 80097C04 AFBF0024 */  sw    $ra, 0x24($sp)
/* B0EDA8 80097C08 AFB10020 */  sw    $s1, 0x20($sp)
/* B0EDAC 80097C0C AFB0001C */  sw    $s0, 0x1c($sp)
/* B0EDB0 80097C10 AFA5003C */  sw    $a1, 0x3c($sp)
/* B0EDB4 80097C14 908E0008 */  lbu   $t6, 8($a0)
/* B0EDB8 80097C18 24030044 */  li    $v1, 68
/* B0EDBC 80097C1C 00052C00 */  sll   $a1, $a1, 0x10
/* B0EDC0 80097C20 01C30019 */  multu $t6, $v1
/* B0EDC4 80097C24 00052C03 */  sra   $a1, $a1, 0x10
/* B0EDC8 80097C28 3C088012 */  lui   $t0, %hi(D_80127528) # $t0, 0x8012
/* B0EDCC 80097C2C 25087528 */  addiu $t0, %lo(D_80127528) # addiu $t0, $t0, 0x7528
/* B0EDD0 80097C30 0005C8C0 */  sll   $t9, $a1, 3
/* B0EDD4 80097C34 03281021 */  addu  $v0, $t9, $t0
/* B0EDD8 80097C38 00808025 */  move  $s0, $a0
/* B0EDDC 80097C3C 3C014F80 */  lui   $at, 0x4f80
/* B0EDE0 80097C40 00007812 */  mflo  $t7
/* B0EDE4 80097C44 008FC021 */  addu  $t8, $a0, $t7
/* B0EDE8 80097C48 A705000C */  sh    $a1, 0xc($t8)
/* B0EDEC 80097C4C 8C4A0000 */  lw    $t2, ($v0)
/* B0EDF0 80097C50 8C490004 */  lw    $t1, 4($v0)
/* B0EDF4 80097C54 3C048014 */  li    $a0, 0x80140000 # 0.000000
/* B0EDF8 80097C58 2484F330 */  addiu $a0, %lo(D_8013F330) # addiu $a0, $a0, -0xcd0
/* B0EDFC 80097C5C 012A8823 */  subu  $s1, $t1, $t2
/* B0EE00 80097C60 44912000 */  mtc1  $s1, $f4
/* B0EE04 80097C64 06210004 */  bgez  $s1, .L80097C78
/* B0EE08 80097C68 468021A0 */   cvt.s.w $f6, $f4
/* B0EE0C 80097C6C 44814000 */  mtc1  $at, $f8
/* B0EE10 80097C70 00000000 */  nop   
/* B0EE14 80097C74 46083180 */  add.s $f6, $f6, $f8
.L80097C78:
/* B0EE18 80097C78 920B0008 */  lbu   $t3, 8($s0)
/* B0EE1C 80097C7C 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* B0EE20 80097C80 44815000 */  mtc1  $at, $f10
/* B0EE24 80097C84 01630019 */  multu $t3, $v1
/* B0EE28 80097C88 460A3402 */  mul.s $f16, $f6, $f10
/* B0EE2C 80097C8C 460084A1 */  cvt.d.s $f18, $f16
/* B0EE30 80097C90 00006012 */  mflo  $t4
/* B0EE34 80097C94 020C6821 */  addu  $t5, $s0, $t4
/* B0EE38 80097C98 8DAE0010 */  lw    $t6, 0x10($t5)
/* B0EE3C 80097C9C 44079000 */  mfc1  $a3, $f18
/* B0EE40 80097CA0 44069800 */  mfc1  $a2, $f19
/* B0EE44 80097CA4 AFA2002C */  sw    $v0, 0x2c($sp)
/* B0EE48 80097CA8 0C00084C */  jal   DebugMessage
/* B0EE4C 80097CAC AFAE0010 */   sw    $t6, 0x10($sp)
/* B0EE50 80097CB0 92030008 */  lbu   $v1, 8($s0)
/* B0EE54 80097CB4 3C048014 */  lui   $a0, %hi(D_8013F34C) # $a0, 0x8014
/* B0EE58 80097CB8 2484F34C */  addiu $a0, %lo(D_8013F34C) # addiu $a0, $a0, -0xcb4
/* B0EE5C 80097CBC 00037900 */  sll   $t7, $v1, 4
/* B0EE60 80097CC0 01E37821 */  addu  $t7, $t7, $v1
/* B0EE64 80097CC4 000F7880 */  sll   $t7, $t7, 2
/* B0EE68 80097CC8 020FC021 */  addu  $t8, $s0, $t7
/* B0EE6C 80097CCC 8F190010 */  lw    $t9, 0x10($t8)
/* B0EE70 80097CD0 8E070004 */  lw    $a3, 4($s0)
/* B0EE74 80097CD4 00602825 */  move  $a1, $v1
/* B0EE78 80097CD8 0C00084C */  jal   DebugMessage
/* B0EE7C 80097CDC 03313021 */   addu  $a2, $t9, $s1
/* B0EE80 80097CE0 92030008 */  lbu   $v1, 8($s0)
/* B0EE84 80097CE4 3C058014 */  lui   $a1, %hi(D_8013F3C8) # $a1, 0x8014
/* B0EE88 80097CE8 24A5F3C8 */  addiu $a1, %lo(D_8013F3C8) # addiu $a1, $a1, -0xc38
/* B0EE8C 80097CEC 28610013 */  slti  $at, $v1, 0x13
/* B0EE90 80097CF0 1020000A */  beqz  $at, .L80097D1C
/* B0EE94 80097CF4 00034100 */   sll   $t0, $v1, 4
/* B0EE98 80097CF8 01034021 */  addu  $t0, $t0, $v1
/* B0EE9C 80097CFC 00084080 */  sll   $t0, $t0, 2
/* B0EEA0 80097D00 02084821 */  addu  $t1, $s0, $t0
/* B0EEA4 80097D04 8D240010 */  lw    $a0, 0x10($t1)
/* B0EEA8 80097D08 8E0B0004 */  lw    $t3, 4($s0)
/* B0EEAC 80097D0C 00915021 */  addu  $t2, $a0, $s1
/* B0EEB0 80097D10 014B082B */  sltu  $at, $t2, $t3
/* B0EEB4 80097D14 5420000C */  bnezl $at, .L80097D48
/* B0EEB8 80097D18 8FAF002C */   lw    $t7, 0x2c($sp)
.L80097D1C:
/* B0EEBC 80097D1C 3C048014 */  lui   $a0, %hi(D_8013F364) # $a0, 0x8014
/* B0EEC0 80097D20 2484F364 */  addiu $a0, %lo(D_8013F364) # addiu $a0, $a0, -0xc9c
/* B0EEC4 80097D24 0C0007FC */  jal   AssertMessage
/* B0EEC8 80097D28 2406008E */   li    $a2, 142
/* B0EECC 80097D2C 920C0008 */  lbu   $t4, 8($s0)
/* B0EED0 80097D30 000C6900 */  sll   $t5, $t4, 4
/* B0EED4 80097D34 01AC6821 */  addu  $t5, $t5, $t4
/* B0EED8 80097D38 000D6880 */  sll   $t5, $t5, 2
/* B0EEDC 80097D3C 020D7021 */  addu  $t6, $s0, $t5
/* B0EEE0 80097D40 8DC40010 */  lw    $a0, 0x10($t6)
/* B0EEE4 80097D44 8FAF002C */  lw    $t7, 0x2c($sp)
.L80097D48:
/* B0EEE8 80097D48 3C078014 */  lui   $a3, %hi(D_8013F3D8) # $a3, 0x8014
/* B0EEEC 80097D4C 24180091 */  li    $t8, 145
/* B0EEF0 80097D50 8DE50000 */  lw    $a1, ($t7)
/* B0EEF4 80097D54 AFB80010 */  sw    $t8, 0x10($sp)
/* B0EEF8 80097D58 24E7F3D8 */  addiu $a3, %lo(D_8013F3D8) # addiu $a3, $a3, -0xc28
/* B0EEFC 80097D5C 0C0006A8 */  jal   func_80001AA0
/* B0EF00 80097D60 02203025 */   move  $a2, $s1
/* B0EF04 80097D64 92030008 */  lbu   $v1, 8($s0)
/* B0EF08 80097D68 28610012 */  slti  $at, $v1, 0x12
/* B0EF0C 80097D6C 10200010 */  beqz  $at, .L80097DB0
/* B0EF10 80097D70 00601025 */   move  $v0, $v1
/* B0EF14 80097D74 0003C900 */  sll   $t9, $v1, 4
/* B0EF18 80097D78 0323C821 */  addu  $t9, $t9, $v1
/* B0EF1C 80097D7C 0019C880 */  sll   $t9, $t9, 2
/* B0EF20 80097D80 02194021 */  addu  $t0, $s0, $t9
/* B0EF24 80097D84 8D090010 */  lw    $t1, 0x10($t0)
/* B0EF28 80097D88 00026900 */  sll   $t5, $v0, 4
/* B0EF2C 80097D8C 01A26821 */  addu  $t5, $t5, $v0
/* B0EF30 80097D90 01315021 */  addu  $t2, $t1, $s1
/* B0EF34 80097D94 254B000F */  addiu $t3, $t2, 0xf
/* B0EF38 80097D98 000D6880 */  sll   $t5, $t5, 2
/* B0EF3C 80097D9C 2401FFF0 */  li    $at, -16
/* B0EF40 80097DA0 01616024 */  and   $t4, $t3, $at
/* B0EF44 80097DA4 020D7021 */  addu  $t6, $s0, $t5
/* B0EF48 80097DA8 ADCC0054 */  sw    $t4, 0x54($t6)
/* B0EF4C 80097DAC 92030008 */  lbu   $v1, 8($s0)
.L80097DB0:
/* B0EF50 80097DB0 246F0001 */  addiu $t7, $v1, 1
/* B0EF54 80097DB4 31E300FF */  andi  $v1, $t7, 0xff
/* B0EF58 80097DB8 A20F0008 */  sb    $t7, 8($s0)
/* B0EF5C 80097DBC A2030009 */  sb    $v1, 9($s0)
/* B0EF60 80097DC0 8FBF0024 */  lw    $ra, 0x24($sp)
/* B0EF64 80097DC4 8FB10020 */  lw    $s1, 0x20($sp)
/* B0EF68 80097DC8 8FB0001C */  lw    $s0, 0x1c($sp)
/* B0EF6C 80097DCC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0EF70 80097DD0 03E00008 */  jr    $ra
/* B0EF74 80097DD4 2462FFFF */   addiu $v0, $v1, -1

glabel func_80097DD8
/* B0EF78 80097DD8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0EF7C 80097DDC AFBF001C */  sw    $ra, 0x1c($sp)
/* B0EF80 80097DE0 AFB10018 */  sw    $s1, 0x18($sp)
/* B0EF84 80097DE4 AFB00014 */  sw    $s0, 0x14($sp)
/* B0EF88 80097DE8 848200A4 */  lh    $v0, 0xa4($a0)
/* B0EF8C 80097DEC 24010051 */  li    $at, 81
/* B0EF90 80097DF0 00A08025 */  move  $s0, $a1
/* B0EF94 80097DF4 14410004 */  bne   $v0, $at, .L80097E08
/* B0EF98 80097DF8 00803025 */   move  $a2, $a0
/* B0EF9C 80097DFC 3C11000F */  lui   $s1, (0x000FA000 >> 16) # lui $s1, 0xf
/* B0EFA0 80097E00 1000001F */  b     .L80097E80
/* B0EFA4 80097E04 3631A000 */   ori   $s1, (0x000FA000 & 0xFFFF) # ori $s1, $s1, 0xa000
.L80097E08:
/* B0EFA8 80097E08 2401004F */  li    $at, 79
/* B0EFAC 80097E0C 1441000B */  bne   $v0, $at, .L80097E3C
/* B0EFB0 80097E10 3C0E8016 */   lui   $t6, %hi(D_8015F9C0) # $t6, 0x8016
/* B0EFB4 80097E14 8DCEF9C0 */  lw    $t6, %lo(D_8015F9C0)($t6)
/* B0EFB8 80097E18 24010004 */  li    $at, 4
/* B0EFBC 80097E1C 3C11000F */  lui   $s1, 0xf
/* B0EFC0 80097E20 11C10004 */  beq   $t6, $at, .L80097E34
/* B0EFC4 80097E24 00000000 */   nop   
/* B0EFC8 80097E28 3C110011 */  lui   $s1, (0x0011A000 >> 16) # lui $s1, 0x11
/* B0EFCC 80097E2C 10000014 */  b     .L80097E80
/* B0EFD0 80097E30 3631F800 */   ori   $s1, (0x0011F800 & 0xFFFF) # ori $s1, $s1, 0xf800
.L80097E34:
/* B0EFD4 80097E34 10000012 */  b     .L80097E80
/* B0EFD8 80097E38 3631A000 */   ori   $s1, (0x0011A000 & 0xFFFF) # ori $s1, $s1, 0xa000
.L80097E3C:
/* B0EFDC 80097E3C 24010017 */  li    $at, 23
/* B0EFE0 80097E40 14410003 */  bne   $v0, $at, .L80097E50
/* B0EFE4 80097E44 3C110010 */   lui   $s1, (0x00106800 >> 16) # lui $s1, 0x10
/* B0EFE8 80097E48 1000000D */  b     .L80097E80
/* B0EFEC 80097E4C 36316800 */   ori   $s1, (0x00106800 & 0xFFFF) # ori $s1, $s1, 0x6800
.L80097E50:
/* B0EFF0 80097E50 24010044 */  li    $at, 68
/* B0EFF4 80097E54 14410003 */  bne   $v0, $at, .L80097E64
/* B0EFF8 80097E58 3C110010 */   lui   $s1, (0x00106800 >> 16) # lui $s1, 0x10
/* B0EFFC 80097E5C 10000008 */  b     .L80097E80
/* B0F000 80097E60 36316800 */   ori   $s1, (0x00106800 & 0xFFFF) # ori $s1, $s1, 0x6800
.L80097E64:
/* B0F004 80097E64 24010019 */  li    $at, 25
/* B0F008 80097E68 14410004 */  bne   $v0, $at, .L80097E7C
/* B0F00C 80097E6C 3C11000F */   lui   $s1, 0xf
/* B0F010 80097E70 3C110010 */  lui   $s1, (0x0010A000 >> 16) # lui $s1, 0x10
/* B0F014 80097E74 10000002 */  b     .L80097E80
/* B0F018 80097E78 36316800 */   ori   $s1, (0x00106800 & 0xFFFF) # ori $s1, $s1, 0x6800
.L80097E7C:
/* B0F01C 80097E7C 3631A000 */  ori   $s1, (0x0010A000 & 0xFFFF) # ori $s1, $s1, 0xa000
.L80097E80:
/* B0F020 80097E80 A2000009 */  sb    $zero, 9($s0)
/* B0F024 80097E84 A2000008 */  sb    $zero, 8($s0)
/* B0F028 80097E88 A200000B */  sb    $zero, 0xb($s0)
/* B0F02C 80097E8C A200000A */  sb    $zero, 0xa($s0)
/* B0F030 80097E90 A600000C */  sh    $zero, 0xc($s0)
/* B0F034 80097E94 A6000050 */  sh    $zero, 0x50($s0)
/* B0F038 80097E98 A6000094 */  sh    $zero, 0x94($s0)
/* B0F03C 80097E9C 24030003 */  li    $v1, 3
/* B0F040 80097EA0 260200CC */  addiu $v0, $s0, 0xcc
/* B0F044 80097EA4 24040013 */  li    $a0, 19
.L80097EA8:
/* B0F048 80097EA8 24630004 */  addiu $v1, $v1, 4
/* B0F04C 80097EAC A4400050 */  sh    $zero, 0x50($v0)
/* B0F050 80097EB0 A4400094 */  sh    $zero, 0x94($v0)
/* B0F054 80097EB4 A44000D8 */  sh    $zero, 0xd8($v0)
/* B0F058 80097EB8 24420110 */  addiu $v0, $v0, 0x110
/* B0F05C 80097EBC 1464FFFA */  bne   $v1, $a0, .L80097EA8
/* B0F060 80097EC0 A440FEFC */   sh    $zero, -0x104($v0)
/* B0F064 80097EC4 3C048014 */  li    $a0, 0x80140000 # 0.000000
/* B0F068 80097EC8 2484F3E8 */  addiu $a0, %lo(D_8013F3E8) # addiu $a0, $a0, -0xc18
/* B0F06C 80097ECC 0C00084C */  jal   DebugMessage
/* B0F070 80097ED0 AFA60020 */   sw    $a2, 0x20($sp)
/* B0F074 80097ED4 44912000 */  mtc1  $s1, $f4
/* B0F078 80097ED8 3C048014 */  lui   $a0, %hi(D_8013F3F0) # $a0, 0x8014
/* B0F07C 80097EDC 2484F3F0 */  addiu $a0, %lo(D_8013F3F0) # addiu $a0, $a0, -0xc10
/* B0F080 80097EE0 06210005 */  bgez  $s1, .L80097EF8
/* B0F084 80097EE4 468021A0 */   cvt.s.w $f6, $f4
/* B0F088 80097EE8 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0F08C 80097EEC 44814000 */  mtc1  $at, $f8
/* B0F090 80097EF0 00000000 */  nop   
/* B0F094 80097EF4 46083180 */  add.s $f6, $f6, $f8
.L80097EF8:
/* B0F098 80097EF8 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* B0F09C 80097EFC 44815000 */  mtc1  $at, $f10
/* B0F0A0 80097F00 00000000 */  nop   
/* B0F0A4 80097F04 460A3402 */  mul.s $f16, $f6, $f10
/* B0F0A8 80097F08 460084A1 */  cvt.d.s $f18, $f16
/* B0F0AC 80097F0C 44079000 */  mfc1  $a3, $f18
/* B0F0B0 80097F10 44069800 */  mfc1  $a2, $f19
/* B0F0B4 80097F14 0C00084C */  jal   DebugMessage
/* B0F0B8 80097F18 00000000 */   nop   
/* B0F0BC 80097F1C 3C048014 */  lui   $a0, %hi(D_8013F418) # $a0, 0x8014
/* B0F0C0 80097F20 0C00084C */  jal   DebugMessage
/* B0F0C4 80097F24 2484F418 */   addiu $a0, %lo(D_8013F418) # addiu $a0, $a0, -0xbe8
/* B0F0C8 80097F28 3C068014 */  lui   $a2, %hi(D_8013F41C) # $a2, 0x8014
/* B0F0CC 80097F2C 24C6F41C */  addiu $a2, %lo(D_8013F41C) # addiu $a2, $a2, -0xbe4
/* B0F0D0 80097F30 8FA40020 */  lw    $a0, 0x20($sp)
/* B0F0D4 80097F34 02202825 */  move  $a1, $s1
/* B0F0D8 80097F38 0C031521 */  jal   game_alloc
/* B0F0DC 80097F3C 240700DB */   li    $a3, 219
/* B0F0E0 80097F40 0051C821 */  addu  $t9, $v0, $s1
/* B0F0E4 80097F44 AE020010 */  sw    $v0, 0x10($s0)
/* B0F0E8 80097F48 AE020000 */  sw    $v0, ($s0)
/* B0F0EC 80097F4C AE190004 */  sw    $t9, 4($s0)
/* B0F0F0 80097F50 02002025 */  move  $a0, $s0
/* B0F0F4 80097F54 0C025F00 */  jal   ObjectSpawn
/* B0F0F8 80097F58 24050001 */   li    $a1, 1
/* B0F0FC 80097F5C 304800FF */  andi  $t0, $v0, 0xff
/* B0F100 80097F60 00084900 */  sll   $t1, $t0, 4
/* B0F104 80097F64 01284821 */  addu  $t1, $t1, $t0
/* B0F108 80097F68 00094880 */  sll   $t1, $t1, 2
/* B0F10C 80097F6C A202000A */  sb    $v0, 0xa($s0)
/* B0F110 80097F70 02095021 */  addu  $t2, $s0, $t1
/* B0F114 80097F74 8D4B0010 */  lw    $t3, 0x10($t2)
/* B0F118 80097F78 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0F11C 80097F7C 3C018000 */  lui   $at, 0x8000
/* B0F120 80097F80 01616021 */  addu  $t4, $t3, $at
/* B0F124 80097F84 3C018016 */  lui   $at, %hi(D_80166FB8) # $at, 0x8016
/* B0F128 80097F88 8FB00014 */  lw    $s0, 0x14($sp)
/* B0F12C 80097F8C 8FB10018 */  lw    $s1, 0x18($sp)
/* B0F130 80097F90 AC2C6FB8 */  sw    $t4, %lo(D_80166FB8)($at)
/* B0F134 80097F94 03E00008 */  jr    $ra
/* B0F138 80097F98 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_80097F9C
/* B0F13C 80097F9C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B0F140 80097FA0 AFBF005C */  sw    $ra, 0x5c($sp)
/* B0F144 80097FA4 AFBE0058 */  sw    $fp, 0x58($sp)
/* B0F148 80097FA8 AFB70054 */  sw    $s7, 0x54($sp)
/* B0F14C 80097FAC AFB60050 */  sw    $s6, 0x50($sp)
/* B0F150 80097FB0 AFB5004C */  sw    $s5, 0x4c($sp)
/* B0F154 80097FB4 AFB40048 */  sw    $s4, 0x48($sp)
/* B0F158 80097FB8 AFB30044 */  sw    $s3, 0x44($sp)
/* B0F15C 80097FBC AFB20040 */  sw    $s2, 0x40($sp)
/* B0F160 80097FC0 AFB1003C */  sw    $s1, 0x3c($sp)
/* B0F164 80097FC4 AFB00038 */  sw    $s0, 0x38($sp)
/* B0F168 80097FC8 F7B40030 */  sdc1  $f20, 0x30($sp)
/* B0F16C 80097FCC 908E0008 */  lbu   $t6, 8($a0)
/* B0F170 80097FD0 0080A825 */  move  $s5, $a0
/* B0F174 80097FD4 2490000C */  addiu $s0, $a0, 0xc
/* B0F178 80097FD8 19C00047 */  blez  $t6, .L800980F8
/* B0F17C 80097FDC 0000A025 */   move  $s4, $zero
/* B0F180 80097FE0 3C013A80 */  lui   $at, 0x3a80
/* B0F184 80097FE4 3C1E8014 */  lui   $fp, %hi(D_8013F45C) # $fp, 0x8014
/* B0F188 80097FE8 3C178014 */  lui   $s7, %hi(D_8013F42C) # $s7, 0x8014
/* B0F18C 80097FEC 3C168012 */  li    $s6, 0x80120000 # 0.000000
/* B0F190 80097FF0 4481A000 */  mtc1  $at, $f20
/* B0F194 80097FF4 26D67528 */  addiu $s6, $s6, 0x7528
/* B0F198 80097FF8 26F7F42C */  addiu $s7, %lo(D_8013F42C) # addiu $s7, $s7, -0xbd4
/* B0F19C 80097FFC 27DEF45C */  addiu $fp, %lo(D_8013F45C) # addiu $fp, $fp, -0xba4
/* B0F1A0 80098000 860F0000 */  lh    $t7, ($s0)
.L80098004:
/* B0F1A4 80098004 05E30037 */  bgezl $t7, .L800980E4
/* B0F1A8 80098008 92B80008 */   lbu   $t8, 8($s5)
/* B0F1AC 8009800C 8E180008 */  lw    $t8, 8($s0)
/* B0F1B0 80098010 26120028 */  addiu $s2, $s0, 0x28
/* B0F1B4 80098014 26040028 */  addiu $a0, $s0, 0x28
/* B0F1B8 80098018 1700002A */  bnez  $t8, .L800980C4
/* B0F1BC 8009801C 00002825 */   move  $a1, $zero
/* B0F1C0 80098020 02402025 */  move  $a0, $s2
/* B0F1C4 80098024 26050040 */  addiu $a1, $s0, 0x40
/* B0F1C8 80098028 0C001874 */  jal   osCreateMesgQueue
/* B0F1CC 8009802C 24060001 */   li    $a2, 1
/* B0F1D0 80098030 86190000 */  lh    $t9, ($s0)
/* B0F1D4 80098034 02E02025 */  move  $a0, $s7
/* B0F1D8 80098038 02802825 */  move  $a1, $s4
/* B0F1DC 8009803C 00194023 */  negu  $t0, $t9
/* B0F1E0 80098040 000848C0 */  sll   $t1, $t0, 3
/* B0F1E4 80098044 02C98821 */  addu  $s1, $s6, $t1
/* B0F1E8 80098048 8E2A0004 */  lw    $t2, 4($s1)
/* B0F1EC 8009804C 8E2B0000 */  lw    $t3, ($s1)
/* B0F1F0 80098050 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0F1F4 80098054 014B9823 */  subu  $s3, $t2, $t3
/* B0F1F8 80098058 44932000 */  mtc1  $s3, $f4
/* B0F1FC 8009805C 06610004 */  bgez  $s3, .L80098070
/* B0F200 80098060 468021A0 */   cvt.s.w $f6, $f4
/* B0F204 80098064 44814000 */  mtc1  $at, $f8
/* B0F208 80098068 00000000 */  nop   
/* B0F20C 8009806C 46083180 */  add.s $f6, $f6, $f8
.L80098070:
/* B0F210 80098070 46143282 */  mul.s $f10, $f6, $f20
/* B0F214 80098074 8E0C0004 */  lw    $t4, 4($s0)
/* B0F218 80098078 AFAC0010 */  sw    $t4, 0x10($sp)
/* B0F21C 8009807C 46005421 */  cvt.d.s $f16, $f10
/* B0F220 80098080 44078000 */  mfc1  $a3, $f16
/* B0F224 80098084 44068800 */  mfc1  $a2, $f17
/* B0F228 80098088 0C00084C */  jal   DebugMessage
/* B0F22C 8009808C 00000000 */   nop   
/* B0F230 80098090 8E050004 */  lw    $a1, 4($s0)
/* B0F234 80098094 8E260000 */  lw    $a2, ($s1)
/* B0F238 80098098 240D010A */  li    $t5, 266
/* B0F23C 8009809C AFAD0020 */  sw    $t5, 0x20($sp)
/* B0F240 800980A0 AFBE001C */  sw    $fp, 0x1c($sp)
/* B0F244 800980A4 AFA00018 */  sw    $zero, 0x18($sp)
/* B0F248 800980A8 AFB20014 */  sw    $s2, 0x14($sp)
/* B0F24C 800980AC AFA00010 */  sw    $zero, 0x10($sp)
/* B0F250 800980B0 26040008 */  addiu $a0, $s0, 8
/* B0F254 800980B4 0C000697 */  jal   func_80001A5C
/* B0F258 800980B8 02603825 */   move  $a3, $s3
/* B0F25C 800980BC 10000009 */  b     .L800980E4
/* B0F260 800980C0 92B80008 */   lbu   $t8, 8($s5)
.L800980C4:
/* B0F264 800980C4 0C000CA0 */  jal   osRecvMesg
/* B0F268 800980C8 00003025 */   move  $a2, $zero
/* B0F26C 800980CC 54400005 */  bnezl $v0, .L800980E4
/* B0F270 800980D0 92B80008 */   lbu   $t8, 8($s5)
/* B0F274 800980D4 860E0000 */  lh    $t6, ($s0)
/* B0F278 800980D8 000E7823 */  negu  $t7, $t6
/* B0F27C 800980DC A60F0000 */  sh    $t7, ($s0)
/* B0F280 800980E0 92B80008 */  lbu   $t8, 8($s5)
.L800980E4:
/* B0F284 800980E4 26940001 */  addiu $s4, $s4, 1
/* B0F288 800980E8 26100044 */  addiu $s0, $s0, 0x44
/* B0F28C 800980EC 0298082A */  slt   $at, $s4, $t8
/* B0F290 800980F0 5420FFC4 */  bnezl $at, .L80098004
/* B0F294 800980F4 860F0000 */   lh    $t7, ($s0)
.L800980F8:
/* B0F298 800980F8 8FBF005C */  lw    $ra, 0x5c($sp)
/* B0F29C 800980FC D7B40030 */  ldc1  $f20, 0x30($sp)
/* B0F2A0 80098100 8FB00038 */  lw    $s0, 0x38($sp)
/* B0F2A4 80098104 8FB1003C */  lw    $s1, 0x3c($sp)
/* B0F2A8 80098108 8FB20040 */  lw    $s2, 0x40($sp)
/* B0F2AC 8009810C 8FB30044 */  lw    $s3, 0x44($sp)
/* B0F2B0 80098110 8FB40048 */  lw    $s4, 0x48($sp)
/* B0F2B4 80098114 8FB5004C */  lw    $s5, 0x4c($sp)
/* B0F2B8 80098118 8FB60050 */  lw    $s6, 0x50($sp)
/* B0F2BC 8009811C 8FB70054 */  lw    $s7, 0x54($sp)
/* B0F2C0 80098120 8FBE0058 */  lw    $fp, 0x58($sp)
/* B0F2C4 80098124 03E00008 */  jr    $ra
/* B0F2C8 80098128 27BD0060 */   addiu $sp, $sp, 0x60

glabel func_8009812C
/* B0F2CC 8009812C AFA50004 */  sw    $a1, 4($sp)
/* B0F2D0 80098130 90820008 */  lbu   $v0, 8($a0)
/* B0F2D4 80098134 00053C00 */  sll   $a3, $a1, 0x10
/* B0F2D8 80098138 00073C03 */  sra   $a3, $a3, 0x10
/* B0F2DC 8009813C 1840000F */  blez  $v0, .L8009817C
/* B0F2E0 80098140 00001825 */   move  $v1, $zero
/* B0F2E4 80098144 00802825 */  move  $a1, $a0
.L80098148:
/* B0F2E8 80098148 84A4000C */  lh    $a0, 0xc($a1)
/* B0F2EC 8009814C 04800003 */  bltz  $a0, .L8009815C
/* B0F2F0 80098150 00043023 */   negu  $a2, $a0
/* B0F2F4 80098154 10000001 */  b     .L8009815C
/* B0F2F8 80098158 00803025 */   move  $a2, $a0
.L8009815C:
/* B0F2FC 8009815C 54C70004 */  bnel  $a2, $a3, .L80098170
/* B0F300 80098160 24630001 */   addiu $v1, $v1, 1
/* B0F304 80098164 03E00008 */  jr    $ra
/* B0F308 80098168 00601025 */   move  $v0, $v1

/* B0F30C 8009816C 24630001 */  addiu $v1, $v1, 1
.L80098170:
/* B0F310 80098170 0062082A */  slt   $at, $v1, $v0
/* B0F314 80098174 1420FFF4 */  bnez  $at, .L80098148
/* B0F318 80098178 24A50044 */   addiu $a1, $a1, 0x44
.L8009817C:
/* B0F31C 8009817C 2402FFFF */  li    $v0, -1
/* B0F320 80098180 03E00008 */  jr    $ra
/* B0F324 80098184 00000000 */   nop   

glabel func_80098188
/* B0F328 80098188 00057100 */  sll   $t6, $a1, 4
/* B0F32C 8009818C 01C57021 */  addu  $t6, $t6, $a1
/* B0F330 80098190 000E7080 */  sll   $t6, $t6, 2
/* B0F334 80098194 008E7821 */  addu  $t7, $a0, $t6
/* B0F338 80098198 85F8000C */  lh    $t8, 0xc($t7)
/* B0F33C 8009819C 00001025 */  move  $v0, $zero
/* B0F340 800981A0 1B000003 */  blez  $t8, .L800981B0
/* B0F344 800981A4 00000000 */   nop   
/* B0F348 800981A8 03E00008 */  jr    $ra
/* B0F34C 800981AC 24020001 */   li    $v0, 1

.L800981B0:
/* B0F350 800981B0 03E00008 */  jr    $ra
/* B0F354 800981B4 00000000 */   nop   

/* B0F358 800981B8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B0F35C 800981BC AFBF004C */  sw    $ra, 0x4c($sp)
/* B0F360 800981C0 AFBE0048 */  sw    $fp, 0x48($sp)
/* B0F364 800981C4 AFB70044 */  sw    $s7, 0x44($sp)
/* B0F368 800981C8 AFB60040 */  sw    $s6, 0x40($sp)
/* B0F36C 800981CC AFB5003C */  sw    $s5, 0x3c($sp)
/* B0F370 800981D0 AFB40038 */  sw    $s4, 0x38($sp)
/* B0F374 800981D4 AFB30034 */  sw    $s3, 0x34($sp)
/* B0F378 800981D8 AFB20030 */  sw    $s2, 0x30($sp)
/* B0F37C 800981DC AFB1002C */  sw    $s1, 0x2c($sp)
/* B0F380 800981E0 AFB00028 */  sw    $s0, 0x28($sp)
/* B0F384 800981E4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* B0F388 800981E8 908E0008 */  lbu   $t6, 8($a0)
/* B0F38C 800981EC 00809825 */  move  $s3, $a0
/* B0F390 800981F0 00808025 */  move  $s0, $a0
/* B0F394 800981F4 19C00034 */  blez  $t6, .L800982C8
/* B0F398 800981F8 0000A025 */   move  $s4, $zero
/* B0F39C 800981FC 3C013A80 */  lui   $at, 0x3a80
/* B0F3A0 80098200 3C1E8014 */  lui   $fp, %hi(D_8013F4A0) # $fp, 0x8014
/* B0F3A4 80098204 3C178014 */  lui   $s7, %hi(D_8013F488) # $s7, 0x8014
/* B0F3A8 80098208 3C168014 */  lui   $s6, %hi(D_8013F46C) # $s6, 0x8014
/* B0F3AC 8009820C 3C158012 */  li    $s5, 0x80120000 # 0.000000
/* B0F3B0 80098210 4481A000 */  mtc1  $at, $f20
/* B0F3B4 80098214 26B57528 */  addiu $s5, $s5, 0x7528
/* B0F3B8 80098218 26D6F46C */  addiu $s6, %lo(D_8013F46C) # addiu $s6, $s6, -0xb94
/* B0F3BC 8009821C 26F7F488 */  addiu $s7, %lo(D_8013F488) # addiu $s7, $s7, -0xb78
/* B0F3C0 80098220 27DEF4A0 */  addiu $fp, %lo(D_8013F4A0) # addiu $fp, $fp, -0xb60
/* B0F3C4 80098224 8605000C */  lh    $a1, 0xc($s0)
.L80098228:
/* B0F3C8 80098228 02C02025 */  move  $a0, $s6
/* B0F3CC 8009822C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0F3D0 80098230 000578C0 */  sll   $t7, $a1, 3
/* B0F3D4 80098234 02AF9021 */  addu  $s2, $s5, $t7
/* B0F3D8 80098238 8E580004 */  lw    $t8, 4($s2)
/* B0F3DC 8009823C 8E590000 */  lw    $t9, ($s2)
/* B0F3E0 80098240 03198823 */  subu  $s1, $t8, $t9
/* B0F3E4 80098244 44912000 */  mtc1  $s1, $f4
/* B0F3E8 80098248 06210004 */  bgez  $s1, .L8009825C
/* B0F3EC 8009824C 468021A0 */   cvt.s.w $f6, $f4
/* B0F3F0 80098250 44814000 */  mtc1  $at, $f8
/* B0F3F4 80098254 00000000 */  nop   
/* B0F3F8 80098258 46083180 */  add.s $f6, $f6, $f8
.L8009825C:
/* B0F3FC 8009825C 46143282 */  mul.s $f10, $f6, $f20
/* B0F400 80098260 8E080010 */  lw    $t0, 0x10($s0)
/* B0F404 80098264 AFA80010 */  sw    $t0, 0x10($sp)
/* B0F408 80098268 46005421 */  cvt.d.s $f16, $f10
/* B0F40C 8009826C 44078000 */  mfc1  $a3, $f16
/* B0F410 80098270 44068800 */  mfc1  $a2, $f17
/* B0F414 80098274 0C00084C */  jal   DebugMessage
/* B0F418 80098278 00000000 */   nop   
/* B0F41C 8009827C 8E090010 */  lw    $t1, 0x10($s0)
/* B0F420 80098280 02E02025 */  move  $a0, $s7
/* B0F424 80098284 92650008 */  lbu   $a1, 8($s3)
/* B0F428 80098288 8E670004 */  lw    $a3, 4($s3)
/* B0F42C 8009828C 0C00084C */  jal   DebugMessage
/* B0F430 80098290 01313021 */   addu  $a2, $t1, $s1
/* B0F434 80098294 8E040010 */  lw    $a0, 0x10($s0)
/* B0F438 80098298 240A0156 */  li    $t2, 342
/* B0F43C 8009829C AFAA0010 */  sw    $t2, 0x10($sp)
/* B0F440 800982A0 8E450000 */  lw    $a1, ($s2)
/* B0F444 800982A4 02203025 */  move  $a2, $s1
/* B0F448 800982A8 0C0006A8 */  jal   func_80001AA0
/* B0F44C 800982AC 03C03825 */   move  $a3, $fp
/* B0F450 800982B0 926B0008 */  lbu   $t3, 8($s3)
/* B0F454 800982B4 26940001 */  addiu $s4, $s4, 1
/* B0F458 800982B8 26100044 */  addiu $s0, $s0, 0x44
/* B0F45C 800982BC 028B082A */  slt   $at, $s4, $t3
/* B0F460 800982C0 5420FFD9 */  bnezl $at, .L80098228
/* B0F464 800982C4 8605000C */   lh    $a1, 0xc($s0)
.L800982C8:
/* B0F468 800982C8 8FBF004C */  lw    $ra, 0x4c($sp)
/* B0F46C 800982CC D7B40020 */  ldc1  $f20, 0x20($sp)
/* B0F470 800982D0 8FB00028 */  lw    $s0, 0x28($sp)
/* B0F474 800982D4 8FB1002C */  lw    $s1, 0x2c($sp)
/* B0F478 800982D8 8FB20030 */  lw    $s2, 0x30($sp)
/* B0F47C 800982DC 8FB30034 */  lw    $s3, 0x34($sp)
/* B0F480 800982E0 8FB40038 */  lw    $s4, 0x38($sp)
/* B0F484 800982E4 8FB5003C */  lw    $s5, 0x3c($sp)
/* B0F488 800982E8 8FB60040 */  lw    $s6, 0x40($sp)
/* B0F48C 800982EC 8FB70044 */  lw    $s7, 0x44($sp)
/* B0F490 800982F0 8FBE0048 */  lw    $fp, 0x48($sp)
/* B0F494 800982F4 03E00008 */  jr    $ra
/* B0F498 800982F8 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_800982FC
/* B0F49C 800982FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0F4A0 80098300 AFA60040 */  sw    $a2, 0x40($sp)
/* B0F4A4 80098304 00057900 */  sll   $t7, $a1, 4
/* B0F4A8 80098308 00063400 */  sll   $a2, $a2, 0x10
/* B0F4AC 8009830C 01E57821 */  addu  $t7, $t7, $a1
/* B0F4B0 80098310 00063403 */  sra   $a2, $a2, 0x10
/* B0F4B4 80098314 000F7880 */  sll   $t7, $t7, 2
/* B0F4B8 80098318 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0F4BC 8009831C AFA40038 */  sw    $a0, 0x38($sp)
/* B0F4C0 80098320 008F1821 */  addu  $v1, $a0, $t7
/* B0F4C4 80098324 3C098012 */  lui   $t1, %hi(D_80127528) # $t1, 0x8012
/* B0F4C8 80098328 0006C023 */  negu  $t8, $a2
/* B0F4CC 8009832C 25297528 */  addiu $t1, %lo(D_80127528) # addiu $t1, $t1, 0x7528
/* B0F4D0 80098330 0006C8C0 */  sll   $t9, $a2, 3
/* B0F4D4 80098334 A478000C */  sh    $t8, 0xc($v1)
/* B0F4D8 80098338 AC600014 */  sw    $zero, 0x14($v1)
/* B0F4DC 8009833C 03291021 */  addu  $v0, $t9, $t1
/* B0F4E0 80098340 8C4A0004 */  lw    $t2, 4($v0)
/* B0F4E4 80098344 8C4B0000 */  lw    $t3, ($v0)
/* B0F4E8 80098348 3C048014 */  lui   $a0, %hi(D_8013F4B0) # $a0, 0x8014
/* B0F4EC 8009834C 2484F4B0 */  addiu $a0, %lo(D_8013F4B0) # addiu $a0, $a0, -0xb50
/* B0F4F0 80098350 014B3823 */  subu  $a3, $t2, $t3
/* B0F4F4 80098354 44872000 */  mtc1  $a3, $f4
/* B0F4F8 80098358 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0F4FC 8009835C 04E10004 */  bgez  $a3, .L80098370
/* B0F500 80098360 468021A0 */   cvt.s.w $f6, $f4
/* B0F504 80098364 44814000 */  mtc1  $at, $f8
/* B0F508 80098368 00000000 */  nop   
/* B0F50C 8009836C 46083180 */  add.s $f6, $f6, $f8
.L80098370:
/* B0F510 80098370 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* B0F514 80098374 44815000 */  mtc1  $at, $f10
/* B0F518 80098378 AFA30024 */  sw    $v1, 0x24($sp)
/* B0F51C 8009837C AFA7002C */  sw    $a3, 0x2c($sp)
/* B0F520 80098380 460A3402 */  mul.s $f16, $f6, $f10
/* B0F524 80098384 460084A1 */  cvt.d.s $f18, $f16
/* B0F528 80098388 0C00084C */  jal   DebugMessage
/* B0F52C 8009838C F7B20010 */   sdc1  $f18, 0x10($sp)
/* B0F530 80098390 8FA30024 */  lw    $v1, 0x24($sp)
/* B0F534 80098394 8FA7002C */  lw    $a3, 0x2c($sp)
/* B0F538 80098398 8FAD0038 */  lw    $t5, 0x38($sp)
/* B0F53C 8009839C 8C6C0010 */  lw    $t4, 0x10($v1)
/* B0F540 800983A0 2401FFF0 */  li    $at, -16
/* B0F544 800983A4 8DA20004 */  lw    $v0, 4($t5)
/* B0F548 800983A8 01874021 */  addu  $t0, $t4, $a3
/* B0F54C 800983AC 2508000F */  addiu $t0, $t0, 0xf
/* B0F550 800983B0 01014024 */  and   $t0, $t0, $at
/* B0F554 800983B4 0102082B */  sltu  $at, $t0, $v0
/* B0F558 800983B8 1420000A */  bnez  $at, .L800983E4
/* B0F55C 800983BC 3C048014 */   lui   $a0, %hi(D_8013F4E0) # $a0, 0x8014
/* B0F560 800983C0 3C058014 */  lui   $a1, %hi(D_8013F4FC) # $a1, 0x8014
/* B0F564 800983C4 24A5F4FC */  addiu $a1, %lo(D_8013F4FC) # addiu $a1, $a1, -0xb04
/* B0F568 800983C8 2484F4E0 */  addiu $a0, %lo(D_8013F4E0) # addiu $a0, $a0, -0xb20
/* B0F56C 800983CC 2406017D */  li    $a2, 381
/* B0F570 800983D0 0C0007FC */  jal   AssertMessage
/* B0F574 800983D4 AFA80028 */   sw    $t0, 0x28($sp)
/* B0F578 800983D8 8FAE0038 */  lw    $t6, 0x38($sp)
/* B0F57C 800983DC 8FA80028 */  lw    $t0, 0x28($sp)
/* B0F580 800983E0 8DC20004 */  lw    $v0, 4($t6)
.L800983E4:
/* B0F584 800983E4 3C048014 */  lui   $a0, %hi(D_8013F50C) # $a0, 0x8014
/* B0F588 800983E8 2484F50C */  addiu $a0, %lo(D_8013F50C) # addiu $a0, $a0, -0xaf4
/* B0F58C 800983EC 00482823 */  subu  $a1, $v0, $t0
/* B0F590 800983F0 0C00084C */  jal   DebugMessage
/* B0F594 800983F4 AFA80028 */   sw    $t0, 0x28($sp)
/* B0F598 800983F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0F59C 800983FC 8FA20028 */  lw    $v0, 0x28($sp)
/* B0F5A0 80098400 27BD0038 */  addiu $sp, $sp, 0x38
/* B0F5A4 80098404 03E00008 */  jr    $ra
/* B0F5A8 80098408 00000000 */   nop   

glabel func_8009840C
/* B0F5AC 8009840C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B0F5B0 80098410 AFBE0038 */  sw    $fp, 0x38($sp)
/* B0F5B4 80098414 AFB70034 */  sw    $s7, 0x34($sp)
/* B0F5B8 80098418 AFB60030 */  sw    $s6, 0x30($sp)
/* B0F5BC 8009841C AFB5002C */  sw    $s5, 0x2c($sp)
/* B0F5C0 80098420 AFB30024 */  sw    $s3, 0x24($sp)
/* B0F5C4 80098424 AFB40028 */  sw    $s4, 0x28($sp)
/* B0F5C8 80098428 AFB20020 */  sw    $s2, 0x20($sp)
/* B0F5CC 8009842C AFB1001C */  sw    $s1, 0x1c($sp)
/* B0F5D0 80098430 3C138014 */  lui   $s3, %hi(D_8013F534) # $s3, 0x8014
/* B0F5D4 80098434 3C158012 */  lui   $s5, %hi(D_801274A0) # $s5, 0x8012
/* B0F5D8 80098438 3C168014 */  lui   $s6, %hi(D_8013F570) # $s6, 0x8014
/* B0F5DC 8009843C 3C178014 */  lui   $s7, %hi(D_8013F578) # $s7, 0x8014
/* B0F5E0 80098440 3C1E8014 */  lui   $fp, %hi(D_8013F590) # $fp, 0x8014
/* B0F5E4 80098444 00A08825 */  move  $s1, $a1
/* B0F5E8 80098448 00809025 */  move  $s2, $a0
/* B0F5EC 8009844C AFBF003C */  sw    $ra, 0x3c($sp)
/* B0F5F0 80098450 AFB00018 */  sw    $s0, 0x18($sp)
/* B0F5F4 80098454 27DEF590 */  addiu $fp, %lo(D_8013F590) # addiu $fp, $fp, -0xa70
/* B0F5F8 80098458 26F7F578 */  addiu $s7, %lo(D_8013F578) # addiu $s7, $s7, -0xa88
/* B0F5FC 8009845C 26D6F570 */  addiu $s6, %lo(D_8013F570) # addiu $s6, $s6, -0xa90
/* B0F600 80098460 26B574A0 */  addiu $s5, %lo(D_801274A0) # addiu $s5, $s5, 0x74a0
/* B0F604 80098464 2673F534 */  addiu $s3, %lo(D_8013F534) # addiu $s3, $s3, -0xacc
/* B0F608 80098468 24140014 */  li    $s4, 20
.L8009846C:
/* B0F60C 8009846C 92300000 */  lbu   $s0, ($s1)
/* B0F610 80098470 02602025 */  move  $a0, $s3
/* B0F614 80098474 92260001 */  lbu   $a2, 1($s1)
/* B0F618 80098478 8E270004 */  lw    $a3, 4($s1)
/* B0F61C 8009847C 0C00084C */  jal   DebugMessage
/* B0F620 80098480 02002825 */   move  $a1, $s0
/* B0F624 80098484 12140013 */  beq   $s0, $s4, .L800984D4
/* B0F628 80098488 2E01001A */   sltiu $at, $s0, 0x1a
/* B0F62C 8009848C 10200009 */  beqz  $at, .L800984B4
/* B0F630 80098490 00107080 */   sll   $t6, $s0, 2
/* B0F634 80098494 02AE7821 */  addu  $t7, $s5, $t6
/* B0F638 80098498 8DF90000 */  lw    $t9, ($t7)
/* B0F63C 8009849C 02402025 */  move  $a0, $s2
/* B0F640 800984A0 02202825 */  move  $a1, $s1
/* B0F644 800984A4 0320F809 */  jalr  $t9
/* B0F648 800984A8 00000000 */  nop   
/* B0F64C 800984AC 1000FFEF */  b     .L8009846C
/* B0F650 800984B0 26310008 */   addiu $s1, $s1, 8
.L800984B4:
/* B0F654 800984B4 0C00084C */  jal   DebugMessage
/* B0F658 800984B8 02C02025 */   move  $a0, $s6
/* B0F65C 800984BC 0C00084C */  jal   DebugMessage
/* B0F660 800984C0 02E02025 */   move  $a0, $s7
/* B0F664 800984C4 0C00084C */  jal   DebugMessage
/* B0F668 800984C8 03C02025 */   move  $a0, $fp
/* B0F66C 800984CC 1000FFE7 */  b     .L8009846C
/* B0F670 800984D0 26310008 */   addiu $s1, $s1, 8
.L800984D4:
/* B0F674 800984D4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0F678 800984D8 8FB00018 */  lw    $s0, 0x18($sp)
/* B0F67C 800984DC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B0F680 800984E0 8FB20020 */  lw    $s2, 0x20($sp)
/* B0F684 800984E4 8FB30024 */  lw    $s3, 0x24($sp)
/* B0F688 800984E8 8FB40028 */  lw    $s4, 0x28($sp)
/* B0F68C 800984EC 8FB5002C */  lw    $s5, 0x2c($sp)
/* B0F690 800984F0 8FB60030 */  lw    $s6, 0x30($sp)
/* B0F694 800984F4 8FB70034 */  lw    $s7, 0x34($sp)
/* B0F698 800984F8 8FBE0038 */  lw    $fp, 0x38($sp)
/* B0F69C 800984FC 27BD0040 */  addiu $sp, $sp, 0x40
/* B0F6A0 80098500 03E00008 */  jr    $ra
/* B0F6A4 80098504 00001025 */   move  $v0, $zero

/* B0F6A8 80098508 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0F6AC 8009850C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0F6B0 80098510 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0F6B4 80098514 3C010001 */  lui   $at, 1
/* B0F6B8 80098518 00811821 */  addu  $v1, $a0, $at
/* B0F6BC 8009851C 90781DEA */  lbu   $t8, 0x1dea($v1)
/* B0F6C0 80098520 8CA70004 */  lw    $a3, 4($a1)
/* B0F6C4 80098524 8C6F1E00 */  lw    $t7, 0x1e00($v1)
/* B0F6C8 80098528 0018C840 */  sll   $t9, $t8, 1
/* B0F6CC 8009852C 00076900 */  sll   $t5, $a3, 4
/* B0F6D0 80098530 000D7702 */  srl   $t6, $t5, 0x1c
/* B0F6D4 80098534 01F95021 */  addu  $t2, $t7, $t9
/* B0F6D8 80098538 3C0F8016 */  lui   $t7, 0x8016
/* B0F6DC 8009853C 000EC080 */  sll   $t8, $t6, 2
/* B0F6E0 80098540 01F87821 */  addu  $t7, $t7, $t8
/* B0F6E4 80098544 8DEF6FA8 */  lw    $t7, 0x6fa8($t7)
/* B0F6E8 80098548 914B0000 */  lbu   $t3, ($t2)
/* B0F6EC 8009854C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0F6F0 80098550 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0F6F4 80098554 00E1C824 */  and   $t9, $a3, $at
/* B0F6F8 80098558 01F95021 */  addu  $t2, $t7, $t9
/* B0F6FC 8009855C 000B6100 */  sll   $t4, $t3, 4
/* B0F700 80098560 018A1021 */  addu  $v0, $t4, $t2
/* B0F704 80098564 3C018000 */  lui   $at, 0x8000
/* B0F708 80098568 00414021 */  addu  $t0, $v0, $at
/* B0F70C 8009856C 3C010001 */  lui   $at, 1
/* B0F710 80098570 3C098016 */  lui   $t1, %hi(D_8015E660) # $t1, 0x8016
/* B0F714 80098574 00240821 */  addu  $at, $at, $a0
/* B0F718 80098578 2529E660 */  addiu $t1, %lo(D_8015E660) # addiu $t1, $t1, -0x19a0
/* B0F71C 8009857C AC281DF4 */  sw    $t0, 0x1df4($at)
/* B0F720 80098580 8D2B0004 */  lw    $t3, 4($t1)
/* B0F724 80098584 3C010001 */  lui   $at, 1
/* B0F728 80098588 00240821 */  addu  $at, $at, $a0
/* B0F72C 8009858C A02B1DE8 */  sb    $t3, 0x1de8($at)
/* B0F730 80098590 8D220004 */  lw    $v0, 4($t1)
/* B0F734 80098594 850E0000 */  lh    $t6, ($t0)
/* B0F738 80098598 3C058012 */  lui   $a1, 0x8012
/* B0F73C 8009859C 3C0F8011 */  lui   $t7, 0x8011
/* B0F740 800985A0 00026840 */  sll   $t5, $v0, 1
/* B0F744 800985A4 000EC140 */  sll   $t8, $t6, 5
/* B0F748 800985A8 00AD2821 */  addu  $a1, $a1, $t5
/* B0F74C 800985AC 01F87821 */  addu  $t7, $t7, $t8
/* B0F750 800985B0 84A57520 */  lh    $a1, 0x7520($a1)
/* B0F754 800985B4 8DEF62B4 */  lw    $t7, 0x62b4($t7)
/* B0F758 800985B8 3C010001 */  lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* B0F75C 800985BC 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* B0F760 800985C0 00812021 */  addu  $a0, $a0, $at
/* B0F764 800985C4 0C025F00 */  jal   ObjectSpawn
/* B0F768 800985C8 A5E50008 */   sh    $a1, 8($t7)
/* B0F76C 800985CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0F770 800985D0 27BD0018 */  addiu $sp, $sp, 0x18
/* B0F774 800985D4 03E00008 */  jr    $ra
/* B0F778 800985D8 00000000 */   nop   

/* B0F77C 800985DC 90AE0001 */  lbu   $t6, 1($a1)
/* B0F780 800985E0 3C010001 */  lui   $at, 1
/* B0F784 800985E4 00240821 */  addu  $at, $at, $a0
/* B0F788 800985E8 A02E1DEB */  sb    $t6, 0x1deb($at)
/* B0F78C 800985EC 8CA20004 */  lw    $v0, 4($a1)
/* B0F790 800985F0 3C088016 */  lui   $t0, 0x8016
/* B0F794 800985F4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0F798 800985F8 00027900 */  sll   $t7, $v0, 4
/* B0F79C 800985FC 000FC702 */  srl   $t8, $t7, 0x1c
/* B0F7A0 80098600 0018C880 */  sll   $t9, $t8, 2
/* B0F7A4 80098604 01194021 */  addu  $t0, $t0, $t9
/* B0F7A8 80098608 8D086FA8 */  lw    $t0, 0x6fa8($t0)
/* B0F7AC 8009860C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0F7B0 80098610 00414824 */  and   $t1, $v0, $at
/* B0F7B4 80098614 3C018000 */  lui   $at, 0x8000
/* B0F7B8 80098618 01095021 */  addu  $t2, $t0, $t1
/* B0F7BC 8009861C 01415821 */  addu  $t3, $t2, $at
/* B0F7C0 80098620 3C010001 */  lui   $at, 1
/* B0F7C4 80098624 00240821 */  addu  $at, $at, $a0
/* B0F7C8 80098628 03E00008 */  jr    $ra
/* B0F7CC 8009862C AC2B1DF8 */   sw    $t3, 0x1df8($at)

/* B0F7D0 80098630 8CA20004 */  lw    $v0, 4($a1)
/* B0F7D4 80098634 3C198016 */  lui   $t9, 0x8016
/* B0F7D8 80098638 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0F7DC 8009863C 00027100 */  sll   $t6, $v0, 4
/* B0F7E0 80098640 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0F7E4 80098644 000FC080 */  sll   $t8, $t7, 2
/* B0F7E8 80098648 0338C821 */  addu  $t9, $t9, $t8
/* B0F7EC 8009864C 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B0F7F0 80098650 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0F7F4 80098654 00414024 */  and   $t0, $v0, $at
/* B0F7F8 80098658 3C018000 */  lui   $at, 0x8000
/* B0F7FC 8009865C 03284821 */  addu  $t1, $t9, $t0
/* B0F800 80098660 01215021 */  addu  $t2, $t1, $at
/* B0F804 80098664 3C010001 */  lui   $at, 1
/* B0F808 80098668 00240821 */  addu  $at, $at, $a0
/* B0F80C 8009866C 03E00008 */  jr    $ra
/* B0F810 80098670 AC2A1DFC */   sw    $t2, 0x1dfc($at)

/* B0F814 80098674 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0F818 80098678 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0F81C 8009867C 8FAE001C */  lw    $t6, 0x1c($sp)
/* B0F820 80098680 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0F824 80098684 AFA40018 */  sw    $a0, 0x18($sp)
/* B0F828 80098688 8DC80004 */  lw    $t0, 4($t6)
/* B0F82C 8009868C 3C028016 */  lui   $v0, %hi(D_80166FA8) # $v0, 0x8016
/* B0F830 80098690 24426FA8 */  addiu $v0, %lo(D_80166FA8) # addiu $v0, $v0, 0x6fa8
/* B0F834 80098694 00087900 */  sll   $t7, $t0, 4
/* B0F838 80098698 000FC702 */  srl   $t8, $t7, 0x1c
/* B0F83C 8009869C 0018C880 */  sll   $t9, $t8, 2
/* B0F840 800986A0 00597021 */  addu  $t6, $v0, $t9
/* B0F844 800986A4 8DCF0000 */  lw    $t7, ($t6)
/* B0F848 800986A8 3C0300FF */  lui   $v1, (0x00FFFFFF >> 16) # lui $v1, 0xff
/* B0F84C 800986AC 3463FFFF */  ori   $v1, (0x00FFFFFF & 0xFFFF) # ori $v1, $v1, 0xffff
/* B0F850 800986B0 0103C024 */  and   $t8, $t0, $v1
/* B0F854 800986B4 3C078000 */  lui   $a3, 0x8000
/* B0F858 800986B8 01F8C821 */  addu  $t9, $t7, $t8
/* B0F85C 800986BC 03273021 */  addu  $a2, $t9, $a3
/* B0F860 800986C0 8CC90010 */  lw    $t1, 0x10($a2)
/* B0F864 800986C4 8CCA0018 */  lw    $t2, 0x18($a2)
/* B0F868 800986C8 8CCB001C */  lw    $t3, 0x1c($a2)
/* B0F86C 800986CC 00097100 */  sll   $t6, $t1, 4
/* B0F870 800986D0 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0F874 800986D4 000FC080 */  sll   $t8, $t7, 2
/* B0F878 800986D8 0058C821 */  addu  $t9, $v0, $t8
/* B0F87C 800986DC 8F2E0000 */  lw    $t6, ($t9)
/* B0F880 800986E0 01237824 */  and   $t7, $t1, $v1
/* B0F884 800986E4 8CCC0020 */  lw    $t4, 0x20($a2)
/* B0F888 800986E8 01CFC021 */  addu  $t8, $t6, $t7
/* B0F88C 800986EC 0307C821 */  addu  $t9, $t8, $a3
/* B0F890 800986F0 000A7100 */  sll   $t6, $t2, 4
/* B0F894 800986F4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0F898 800986F8 ACD90010 */  sw    $t9, 0x10($a2)
/* B0F89C 800986FC 000FC080 */  sll   $t8, $t7, 2
/* B0F8A0 80098700 0058C821 */  addu  $t9, $v0, $t8
/* B0F8A4 80098704 8F2E0000 */  lw    $t6, ($t9)
/* B0F8A8 80098708 01437824 */  and   $t7, $t2, $v1
/* B0F8AC 8009870C 8CCD0028 */  lw    $t5, 0x28($a2)
/* B0F8B0 80098710 01CFC021 */  addu  $t8, $t6, $t7
/* B0F8B4 80098714 0307C821 */  addu  $t9, $t8, $a3
/* B0F8B8 80098718 000B7100 */  sll   $t6, $t3, 4
/* B0F8BC 8009871C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0F8C0 80098720 ACD90018 */  sw    $t9, 0x18($a2)
/* B0F8C4 80098724 000FC080 */  sll   $t8, $t7, 2
/* B0F8C8 80098728 0058C821 */  addu  $t9, $v0, $t8
/* B0F8CC 8009872C 8F2E0000 */  lw    $t6, ($t9)
/* B0F8D0 80098730 01637824 */  and   $t7, $t3, $v1
/* B0F8D4 80098734 00802825 */  move  $a1, $a0
/* B0F8D8 80098738 01CFC021 */  addu  $t8, $t6, $t7
/* B0F8DC 8009873C 0307C821 */  addu  $t9, $t8, $a3
/* B0F8E0 80098740 000C7100 */  sll   $t6, $t4, 4
/* B0F8E4 80098744 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0F8E8 80098748 ACD9001C */  sw    $t9, 0x1c($a2)
/* B0F8EC 8009874C 000FC080 */  sll   $t8, $t7, 2
/* B0F8F0 80098750 0058C821 */  addu  $t9, $v0, $t8
/* B0F8F4 80098754 8F2E0000 */  lw    $t6, ($t9)
/* B0F8F8 80098758 01837824 */  and   $t7, $t4, $v1
/* B0F8FC 8009875C 248407C0 */  addiu $a0, $a0, 0x7c0
/* B0F900 80098760 01CFC021 */  addu  $t8, $t6, $t7
/* B0F904 80098764 0307C821 */  addu  $t9, $t8, $a3
/* B0F908 80098768 000D7100 */  sll   $t6, $t5, 4
/* B0F90C 8009876C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0F910 80098770 ACD90020 */  sw    $t9, 0x20($a2)
/* B0F914 80098774 000FC080 */  sll   $t8, $t7, 2
/* B0F918 80098778 0058C821 */  addu  $t9, $v0, $t8
/* B0F91C 8009877C 8F2E0000 */  lw    $t6, ($t9)
/* B0F920 80098780 01A37824 */  and   $t7, $t5, $v1
/* B0F924 80098784 01CFC021 */  addu  $t8, $t6, $t7
/* B0F928 80098788 0307C821 */  addu  $t9, $t8, $a3
/* B0F92C 8009878C 0C00F01E */  jal   func_8003C078
/* B0F930 80098790 ACD90028 */   sw    $t9, 0x28($a2)
/* B0F934 80098794 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0F938 80098798 27BD0018 */  addiu $sp, $sp, 0x18
/* B0F93C 8009879C 03E00008 */  jr    $ra
/* B0F940 800987A0 00000000 */   nop   

/* B0F944 800987A4 90AE0001 */  lbu   $t6, 1($a1)
/* B0F948 800987A8 3C010001 */  lui   $at, 1
/* B0F94C 800987AC 00240821 */  addu  $at, $at, $a0
/* B0F950 800987B0 A02E1DEC */  sb    $t6, 0x1dec($at)
/* B0F954 800987B4 8CA20004 */  lw    $v0, 4($a1)
/* B0F958 800987B8 3C088016 */  lui   $t0, 0x8016
/* B0F95C 800987BC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0F960 800987C0 00027900 */  sll   $t7, $v0, 4
/* B0F964 800987C4 000FC702 */  srl   $t8, $t7, 0x1c
/* B0F968 800987C8 0018C880 */  sll   $t9, $t8, 2
/* B0F96C 800987CC 01194021 */  addu  $t0, $t0, $t9
/* B0F970 800987D0 8D086FA8 */  lw    $t0, 0x6fa8($t0)
/* B0F974 800987D4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0F978 800987D8 00414824 */  and   $t1, $v0, $at
/* B0F97C 800987DC 3C018000 */  lui   $at, 0x8000
/* B0F980 800987E0 01095021 */  addu  $t2, $t0, $t1
/* B0F984 800987E4 01415821 */  addu  $t3, $t2, $at
/* B0F988 800987E8 3C010001 */  lui   $at, 1
/* B0F98C 800987EC 00240821 */  addu  $at, $at, $a0
/* B0F990 800987F0 03E00008 */  jr    $ra
/* B0F994 800987F4 AC2B1DF0 */   sw    $t3, 0x1df0($at)

/* B0F998 800987F8 8CA20004 */  lw    $v0, 4($a1)
/* B0F99C 800987FC 3C198016 */  lui   $t9, 0x8016
/* B0F9A0 80098800 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0F9A4 80098804 00027100 */  sll   $t6, $v0, 4
/* B0F9A8 80098808 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0F9AC 8009880C 000FC080 */  sll   $t8, $t7, 2
/* B0F9B0 80098810 0338C821 */  addu  $t9, $t9, $t8
/* B0F9B4 80098814 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B0F9B8 80098818 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0F9BC 8009881C 00414024 */  and   $t0, $v0, $at
/* B0F9C0 80098820 3C018000 */  lui   $at, 0x8000
/* B0F9C4 80098824 03284821 */  addu  $t1, $t9, $t0
/* B0F9C8 80098828 01215021 */  addu  $t2, $t1, $at
/* B0F9CC 8009882C 3C010001 */  lui   $at, 1
/* B0F9D0 80098830 00240821 */  addu  $at, $at, $a0
/* B0F9D4 80098834 03E00008 */  jr    $ra
/* B0F9D8 80098838 AC2A1E00 */   sw    $t2, 0x1e00($at)

/* B0F9DC 8009883C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0F9E0 80098840 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0F9E4 80098844 8CA20004 */  lw    $v0, 4($a1)
/* B0F9E8 80098848 00803025 */  move  $a2, $a0
/* B0F9EC 8009884C 00A03825 */  move  $a3, $a1
/* B0F9F0 80098850 1040001A */  beqz  $v0, .L800988BC
/* B0F9F4 80098854 3C010001 */   lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* B0F9F8 80098858 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* B0F9FC 8009885C 00022C00 */  sll   $a1, $v0, 0x10
/* B0FA00 80098860 00052C03 */  sra   $a1, $a1, 0x10
/* B0FA04 80098864 00812021 */  addu  $a0, $a0, $at
/* B0FA08 80098868 AFA60018 */  sw    $a2, 0x18($sp)
/* B0FA0C 8009886C 0C025F00 */  jal   ObjectSpawn
/* B0FA10 80098870 AFA7001C */   sw    $a3, 0x1c($sp)
/* B0FA14 80098874 8FA60018 */  lw    $a2, 0x18($sp)
/* B0FA18 80098878 3C010001 */  lui   $at, 1
/* B0FA1C 8009887C 3C030001 */  lui   $v1, 1
/* B0FA20 80098880 8FA7001C */  lw    $a3, 0x1c($sp)
/* B0FA24 80098884 00260821 */  addu  $at, $at, $a2
/* B0FA28 80098888 A02217AF */  sb    $v0, 0x17af($at)
/* B0FA2C 8009888C 00C37021 */  addu  $t6, $a2, $v1
/* B0FA30 80098890 91CF17AF */  lbu   $t7, 0x17af($t6)
/* B0FA34 80098894 3C018000 */  lui   $at, 0x8000
/* B0FA38 80098898 000FC100 */  sll   $t8, $t7, 4
/* B0FA3C 8009889C 030FC021 */  addu  $t8, $t8, $t7
/* B0FA40 800988A0 0018C080 */  sll   $t8, $t8, 2
/* B0FA44 800988A4 00D8C821 */  addu  $t9, $a2, $t8
/* B0FA48 800988A8 03234021 */  addu  $t0, $t9, $v1
/* B0FA4C 800988AC 8D0917B4 */  lw    $t1, 0x17b4($t0)
/* B0FA50 800988B0 01215021 */  addu  $t2, $t1, $at
/* B0FA54 800988B4 3C018016 */  lui   $at, %hi(D_80166FBC) # $at, 0x8016
/* B0FA58 800988B8 AC2A6FBC */  sw    $t2, %lo(D_80166FBC)($at)
.L800988BC:
/* B0FA5C 800988BC 90E20001 */  lbu   $v0, 1($a3)
/* B0FA60 800988C0 00C02025 */  move  $a0, $a2
/* B0FA64 800988C4 3C0D8012 */  lui   $t5, %hi(D_80127508) # $t5, 0x8012
/* B0FA68 800988C8 1040000A */  beqz  $v0, .L800988F4
/* B0FA6C 800988CC 000258C0 */   sll   $t3, $v0, 3
/* B0FA70 800988D0 256CFFF8 */  addiu $t4, $t3, -8
/* B0FA74 800988D4 25AD7508 */  addiu $t5, %lo(D_80127508) # addiu $t5, $t5, 0x7508
/* B0FA78 800988D8 018D2821 */  addu  $a1, $t4, $t5
/* B0FA7C 800988DC 0C02FF97 */  jal   func_800BFE5C
/* B0FA80 800988E0 AFA60018 */   sw    $a2, 0x18($sp)
/* B0FA84 800988E4 8FA60018 */  lw    $a2, 0x18($sp)
/* B0FA88 800988E8 3C010001 */  lui   $at, 1
/* B0FA8C 800988EC 00260821 */  addu  $at, $at, $a2
/* B0FA90 800988F0 AC221E0C */  sw    $v0, 0x1e0c($at)
.L800988F4:
/* B0FA94 800988F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0FA98 800988F8 27BD0018 */  addiu $sp, $sp, 0x18
/* B0FA9C 800988FC 03E00008 */  jr    $ra
/* B0FAA0 80098900 00000000 */   nop   

/* B0FAA4 80098904 90AE0001 */  lbu   $t6, 1($a1)
/* B0FAA8 80098908 3C010001 */  lui   $at, 1
/* B0FAAC 8009890C 00240821 */  addu  $at, $at, $a0
/* B0FAB0 80098910 A02E1CBF */  sb    $t6, 0x1cbf($at)
/* B0FAB4 80098914 8CB80004 */  lw    $t8, 4($a1)
/* B0FAB8 80098918 3C010001 */  lui   $at, 1
/* B0FABC 8009891C 00240821 */  addu  $at, $at, $a0
/* B0FAC0 80098920 A0381CBE */  sb    $t8, 0x1cbe($at)
/* B0FAC4 80098924 8CB90004 */  lw    $t9, 4($a1)
/* B0FAC8 80098928 3C010001 */  lui   $at, 1
/* B0FACC 8009892C 00240821 */  addu  $at, $at, $a0
/* B0FAD0 80098930 00194202 */  srl   $t0, $t9, 8
/* B0FAD4 80098934 31090001 */  andi  $t1, $t0, 1
/* B0FAD8 80098938 A0291CC1 */  sb    $t1, 0x1cc1($at)
/* B0FADC 8009893C 8CAA0004 */  lw    $t2, 4($a1)
/* B0FAE0 80098940 3C010001 */  lui   $at, 1
/* B0FAE4 80098944 00240821 */  addu  $at, $at, $a0
/* B0FAE8 80098948 000A5A82 */  srl   $t3, $t2, 0xa
/* B0FAEC 8009894C 316C0001 */  andi  $t4, $t3, 1
/* B0FAF0 80098950 03E00008 */  jr    $ra
/* B0FAF4 80098954 A42C04E4 */   sh    $t4, 0x4e4($at)

/* B0FAF8 80098958 8CA20004 */  lw    $v0, 4($a1)
/* B0FAFC 8009895C 3C198016 */  lui   $t9, 0x8016
/* B0FB00 80098960 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0FB04 80098964 00027100 */  sll   $t6, $v0, 4
/* B0FB08 80098968 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0FB0C 8009896C 000FC080 */  sll   $t8, $t7, 2
/* B0FB10 80098970 0338C821 */  addu  $t9, $t9, $t8
/* B0FB14 80098974 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B0FB18 80098978 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0FB1C 8009897C 00414024 */  and   $t0, $v0, $at
/* B0FB20 80098980 3C018000 */  lui   $at, 0x8000
/* B0FB24 80098984 03284821 */  addu  $t1, $t9, $t0
/* B0FB28 80098988 01215021 */  addu  $t2, $t1, $at
/* B0FB2C 8009898C 3C010001 */  lui   $at, 1
/* B0FB30 80098990 00240821 */  addu  $at, $at, $a0
/* B0FB34 80098994 03E00008 */  jr    $ra
/* B0FB38 80098998 AC2A1CC4 */   sw    $t2, 0x1cc4($at)

/* B0FB3C 8009899C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B0FB40 800989A0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B0FB44 800989A4 AFBE0038 */  sw    $fp, 0x38($sp)
/* B0FB48 800989A8 AFB70034 */  sw    $s7, 0x34($sp)
/* B0FB4C 800989AC AFB60030 */  sw    $s6, 0x30($sp)
/* B0FB50 800989B0 AFB5002C */  sw    $s5, 0x2c($sp)
/* B0FB54 800989B4 AFB40028 */  sw    $s4, 0x28($sp)
/* B0FB58 800989B8 AFB30024 */  sw    $s3, 0x24($sp)
/* B0FB5C 800989BC AFB20020 */  sw    $s2, 0x20($sp)
/* B0FB60 800989C0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B0FB64 800989C4 AFB00018 */  sw    $s0, 0x18($sp)
/* B0FB68 800989C8 8CA20004 */  lw    $v0, 4($a1)
/* B0FB6C 800989CC 3C198016 */  lui   $t9, 0x8016
/* B0FB70 800989D0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0FB74 800989D4 00027100 */  sll   $t6, $v0, 4
/* B0FB78 800989D8 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0FB7C 800989DC 000FC080 */  sll   $t8, $t7, 2
/* B0FB80 800989E0 0338C821 */  addu  $t9, $t9, $t8
/* B0FB84 800989E4 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B0FB88 800989E8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0FB8C 800989EC 00414024 */  and   $t0, $v0, $at
/* B0FB90 800989F0 3C018000 */  lui   $at, 0x8000
/* B0FB94 800989F4 03289021 */  addu  $s2, $t9, $t0
/* B0FB98 800989F8 02419021 */  addu  $s2, $s2, $at
/* B0FB9C 800989FC 3C010001 */  lui   $at, (0x000117B0 >> 16) # lui $at, 1
/* B0FBA0 80098A00 00818021 */  addu  $s0, $a0, $at
/* B0FBA4 80098A04 921117AD */  lbu   $s1, 0x17ad($s0)
/* B0FBA8 80098A08 920617AC */  lbu   $a2, 0x17ac($s0)
/* B0FBAC 80098A0C 342117B0 */  ori   $at, (0x000117B0 & 0xFFFF) # ori $at, $at, 0x17b0
/* B0FBB0 80098A10 0011B100 */  sll   $s6, $s1, 4
/* B0FBB4 80098A14 02D1B021 */  addu  $s6, $s6, $s1
/* B0FBB8 80098A18 0016B080 */  sll   $s6, $s6, 2
/* B0FBBC 80098A1C 00969821 */  addu  $s3, $a0, $s6
/* B0FBC0 80098A20 02619821 */  addu  $s3, $s3, $at
/* B0FBC4 80098A24 0226082A */  slt   $at, $s1, $a2
/* B0FBC8 80098A28 0080B825 */  move  $s7, $a0
/* B0FBCC 80098A2C 00A0F025 */  move  $fp, $a1
/* B0FBD0 80098A30 0000A825 */  move  $s5, $zero
/* B0FBD4 80098A34 10200020 */  beqz  $at, .L80098AB8
/* B0FBD8 80098A38 0260A025 */   move  $s4, $s3
/* B0FBDC 80098A3C 86890000 */  lh    $t1, ($s4)
.L80098A40:
/* B0FBE0 80098A40 864A0000 */  lh    $t2, ($s2)
/* B0FBE4 80098A44 02601025 */  move  $v0, $s3
/* B0FBE8 80098A48 02201825 */  move  $v1, $s1
/* B0FBEC 80098A4C 112A0011 */  beq   $t1, $t2, .L80098A94
/* B0FBF0 80098A50 0226082A */   slt   $at, $s1, $a2
/* B0FBF4 80098A54 10200008 */  beqz  $at, .L80098A78
/* B0FBF8 80098A58 26E51C24 */   addiu $a1, $s7, 0x1c24
/* B0FBFC 80098A5C A4400000 */  sh    $zero, ($v0)
.L80098A60:
/* B0FC00 80098A60 920B17AC */  lbu   $t3, 0x17ac($s0)
/* B0FC04 80098A64 24630001 */  addiu $v1, $v1, 1
/* B0FC08 80098A68 24420044 */  addiu $v0, $v0, 0x44
/* B0FC0C 80098A6C 006B082A */  slt   $at, $v1, $t3
/* B0FC10 80098A70 5420FFFB */  bnezl $at, .L80098A60
/* B0FC14 80098A74 A4400000 */   sh    $zero, ($v0)
.L80098A78:
/* B0FC18 80098A78 3C010001 */  lui   $at, 1
/* B0FC1C 80098A7C 00370821 */  addu  $at, $at, $s7
/* B0FC20 80098A80 A03117AC */  sb    $s1, 0x17ac($at)
/* B0FC24 80098A84 0C00C68A */  jal   func_80031A28
/* B0FC28 80098A88 02E02025 */   move  $a0, $s7
/* B0FC2C 80098A8C 10000007 */  b     .L80098AAC
/* B0FC30 80098A90 920617AC */   lbu   $a2, 0x17ac($s0)
.L80098A94:
/* B0FC34 80098A94 26310001 */  addiu $s1, $s1, 1
/* B0FC38 80098A98 26D60044 */  addiu $s6, $s6, 0x44
/* B0FC3C 80098A9C 26730044 */  addiu $s3, $s3, 0x44
/* B0FC40 80098AA0 26B50001 */  addiu $s5, $s5, 1
/* B0FC44 80098AA4 26520002 */  addiu $s2, $s2, 2
/* B0FC48 80098AA8 26940044 */  addiu $s4, $s4, 0x44
.L80098AAC:
/* B0FC4C 80098AAC 0226082A */  slt   $at, $s1, $a2
/* B0FC50 80098AB0 5420FFE3 */  bnezl $at, .L80098A40
/* B0FC54 80098AB4 86890000 */   lh    $t1, ($s4)
.L80098AB8:
/* B0FC58 80098AB8 93C20001 */  lbu   $v0, 1($fp)
/* B0FC5C 80098ABC 3C048014 */  lui   $a0, %hi(D_8013F594) # $a0, 0x8014
/* B0FC60 80098AC0 2484F594 */  addiu $a0, %lo(D_8013F594) # addiu $a0, $a0, -0xa6c
/* B0FC64 80098AC4 28410014 */  slti  $at, $v0, 0x14
/* B0FC68 80098AC8 14200005 */  bnez  $at, .L80098AE0
/* B0FC6C 80098ACC 3C058014 */   lui   $a1, %hi(D_8013F5CC) # $a1, 0x8014
/* B0FC70 80098AD0 24A5F5CC */  addiu $a1, %lo(D_8013F5CC) # addiu $a1, $a1, -0xa34
/* B0FC74 80098AD4 0C0007FC */  jal   AssertMessage
/* B0FC78 80098AD8 240602C1 */   li    $a2, 705
/* B0FC7C 80098ADC 93C20001 */  lbu   $v0, 1($fp)
.L80098AE0:
/* B0FC80 80098AE0 02A2082A */  slt   $at, $s5, $v0
/* B0FC84 80098AE4 10200014 */  beqz  $at, .L80098B38
/* B0FC88 80098AE8 3C010001 */   lui   $at, (0x000117A4 >> 16) # lui $at, 1
/* B0FC8C 80098AEC 342117A4 */  ori   $at, (0x000117A4 & 0xFFFF) # ori $at, $at, 0x17a4
/* B0FC90 80098AF0 02E18021 */  addu  $s0, $s7, $at
.L80098AF4:
/* B0FC94 80098AF4 02002025 */  move  $a0, $s0
/* B0FC98 80098AF8 02202825 */  move  $a1, $s1
/* B0FC9C 80098AFC 0C0260BF */  jal   func_800982FC
/* B0FCA0 80098B00 86460000 */   lh    $a2, ($s2)
/* B0FCA4 80098B04 2A210012 */  slti  $at, $s1, 0x12
/* B0FCA8 80098B08 10200005 */  beqz  $at, .L80098B20
/* B0FCAC 80098B0C 26310001 */   addiu $s1, $s1, 1
/* B0FCB0 80098B10 02F66021 */  addu  $t4, $s7, $s6
/* B0FCB4 80098B14 3C010001 */  lui   $at, 1
/* B0FCB8 80098B18 002C0821 */  addu  $at, $at, $t4
/* B0FCBC 80098B1C AC2217F8 */  sw    $v0, 0x17f8($at)
.L80098B20:
/* B0FCC0 80098B20 93CD0001 */  lbu   $t5, 1($fp)
/* B0FCC4 80098B24 26B50001 */  addiu $s5, $s5, 1
/* B0FCC8 80098B28 26D60044 */  addiu $s6, $s6, 0x44
/* B0FCCC 80098B2C 02AD082A */  slt   $at, $s5, $t5
/* B0FCD0 80098B30 1420FFF0 */  bnez  $at, .L80098AF4
/* B0FCD4 80098B34 26520002 */   addiu $s2, $s2, 2
.L80098B38:
/* B0FCD8 80098B38 3C010001 */  lui   $at, 1
/* B0FCDC 80098B3C 00370821 */  addu  $at, $at, $s7
/* B0FCE0 80098B40 A03117AC */  sb    $s1, 0x17ac($at)
/* B0FCE4 80098B44 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0FCE8 80098B48 8FBE0038 */  lw    $fp, 0x38($sp)
/* B0FCEC 80098B4C 8FB70034 */  lw    $s7, 0x34($sp)
/* B0FCF0 80098B50 8FB60030 */  lw    $s6, 0x30($sp)
/* B0FCF4 80098B54 8FB5002C */  lw    $s5, 0x2c($sp)
/* B0FCF8 80098B58 8FB40028 */  lw    $s4, 0x28($sp)
/* B0FCFC 80098B5C 8FB30024 */  lw    $s3, 0x24($sp)
/* B0FD00 80098B60 8FB20020 */  lw    $s2, 0x20($sp)
/* B0FD04 80098B64 8FB1001C */  lw    $s1, 0x1c($sp)
/* B0FD08 80098B68 8FB00018 */  lw    $s0, 0x18($sp)
/* B0FD0C 80098B6C 03E00008 */  jr    $ra
/* B0FD10 80098B70 27BD0040 */   addiu $sp, $sp, 0x40

/* B0FD14 80098B74 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0FD18 80098B78 AFBF002C */  sw    $ra, 0x2c($sp)
/* B0FD1C 80098B7C AFB40028 */  sw    $s4, 0x28($sp)
/* B0FD20 80098B80 AFB30024 */  sw    $s3, 0x24($sp)
/* B0FD24 80098B84 AFB20020 */  sw    $s2, 0x20($sp)
/* B0FD28 80098B88 AFB1001C */  sw    $s1, 0x1c($sp)
/* B0FD2C 80098B8C AFB00018 */  sw    $s0, 0x18($sp)
/* B0FD30 80098B90 8CA20004 */  lw    $v0, 4($a1)
/* B0FD34 80098B94 3C198016 */  lui   $t9, 0x8016
/* B0FD38 80098B98 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0FD3C 80098B9C 00027100 */  sll   $t6, $v0, 4
/* B0FD40 80098BA0 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0FD44 80098BA4 000FC080 */  sll   $t8, $t7, 2
/* B0FD48 80098BA8 0338C821 */  addu  $t9, $t9, $t8
/* B0FD4C 80098BAC 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B0FD50 80098BB0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0FD54 80098BB4 90A90001 */  lbu   $t1, 1($a1)
/* B0FD58 80098BB8 00414024 */  and   $t0, $v0, $at
/* B0FD5C 80098BBC 3C018000 */  lui   $at, 0x8000
/* B0FD60 80098BC0 03288021 */  addu  $s0, $t9, $t0
/* B0FD64 80098BC4 00A09025 */  move  $s2, $a1
/* B0FD68 80098BC8 00809825 */  move  $s3, $a0
/* B0FD6C 80098BCC 02018021 */  addu  $s0, $s0, $at
/* B0FD70 80098BD0 1920000C */  blez  $t1, .L80098C04
/* B0FD74 80098BD4 00008825 */   move  $s1, $zero
/* B0FD78 80098BD8 249407A8 */  addiu $s4, $a0, 0x7a8
/* B0FD7C 80098BDC 02602025 */  move  $a0, $s3
.L80098BE0:
/* B0FD80 80098BE0 02802825 */  move  $a1, $s4
/* B0FD84 80098BE4 0C01E9D9 */  jal   func_8007A764
/* B0FD88 80098BE8 02003025 */   move  $a2, $s0
/* B0FD8C 80098BEC 924A0001 */  lbu   $t2, 1($s2)
/* B0FD90 80098BF0 26310001 */  addiu $s1, $s1, 1
/* B0FD94 80098BF4 2610000E */  addiu $s0, $s0, 0xe
/* B0FD98 80098BF8 022A082A */  slt   $at, $s1, $t2
/* B0FD9C 80098BFC 5420FFF8 */  bnezl $at, .L80098BE0
/* B0FDA0 80098C00 02602025 */   move  $a0, $s3
.L80098C04:
/* B0FDA4 80098C04 8FBF002C */  lw    $ra, 0x2c($sp)
/* B0FDA8 80098C08 8FB00018 */  lw    $s0, 0x18($sp)
/* B0FDAC 80098C0C 8FB1001C */  lw    $s1, 0x1c($sp)
/* B0FDB0 80098C10 8FB20020 */  lw    $s2, 0x20($sp)
/* B0FDB4 80098C14 8FB30024 */  lw    $s3, 0x24($sp)
/* B0FDB8 80098C18 8FB40028 */  lw    $s4, 0x28($sp)
/* B0FDBC 80098C1C 03E00008 */  jr    $ra
/* B0FDC0 80098C20 27BD0030 */   addiu $sp, $sp, 0x30

/* B0FDC4 80098C24 8CA20004 */  lw    $v0, 4($a1)
/* B0FDC8 80098C28 3C198016 */  lui   $t9, 0x8016
/* B0FDCC 80098C2C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0FDD0 80098C30 00027100 */  sll   $t6, $v0, 4
/* B0FDD4 80098C34 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0FDD8 80098C38 000FC080 */  sll   $t8, $t7, 2
/* B0FDDC 80098C3C 0338C821 */  addu  $t9, $t9, $t8
/* B0FDE0 80098C40 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B0FDE4 80098C44 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0FDE8 80098C48 00414024 */  and   $t0, $v0, $at
/* B0FDEC 80098C4C 3C018000 */  lui   $at, 0x8000
/* B0FDF0 80098C50 03284821 */  addu  $t1, $t9, $t0
/* B0FDF4 80098C54 01215021 */  addu  $t2, $t1, $at
/* B0FDF8 80098C58 3C010001 */  lui   $at, 1
/* B0FDFC 80098C5C 00240821 */  addu  $at, $at, $a0
/* B0FE00 80098C60 03E00008 */  jr    $ra
/* B0FE04 80098C64 AC2A1E08 */   sw    $t2, 0x1e08($at)

/* B0FE08 80098C68 90AE0001 */  lbu   $t6, 1($a1)
/* B0FE0C 80098C6C 3C010001 */  lui   $at, 1
/* B0FE10 80098C70 00240821 */  addu  $at, $at, $a0
/* B0FE14 80098C74 A02E1D34 */  sb    $t6, 0x1d34($at)
/* B0FE18 80098C78 8CA20004 */  lw    $v0, 4($a1)
/* B0FE1C 80098C7C 3C088016 */  lui   $t0, 0x8016
/* B0FE20 80098C80 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0FE24 80098C84 00027900 */  sll   $t7, $v0, 4
/* B0FE28 80098C88 000FC702 */  srl   $t8, $t7, 0x1c
/* B0FE2C 80098C8C 0018C880 */  sll   $t9, $t8, 2
/* B0FE30 80098C90 01194021 */  addu  $t0, $t0, $t9
/* B0FE34 80098C94 8D086FA8 */  lw    $t0, 0x6fa8($t0)
/* B0FE38 80098C98 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0FE3C 80098C9C 00414824 */  and   $t1, $v0, $at
/* B0FE40 80098CA0 3C018000 */  lui   $at, 0x8000
/* B0FE44 80098CA4 01095021 */  addu  $t2, $t0, $t1
/* B0FE48 80098CA8 01415821 */  addu  $t3, $t2, $at
/* B0FE4C 80098CAC 3C010001 */  lui   $at, 1
/* B0FE50 80098CB0 00240821 */  addu  $at, $at, $a0
/* B0FE54 80098CB4 03E00008 */  jr    $ra
/* B0FE58 80098CB8 AC2B1D38 */   sw    $t3, 0x1d38($at)

glabel func_80098CBC
/* B0FE5C 80098CBC AFA40000 */  sw    $a0, ($sp)
/* B0FE60 80098CC0 03E00008 */  jr    $ra
/* B0FE64 80098CC4 A0A00000 */   sb    $zero, ($a1)

/* B0FE68 80098CC8 90AE0001 */  lbu   $t6, 1($a1)
/* B0FE6C 80098CCC 3C010001 */  lui   $at, 1
/* B0FE70 80098CD0 00240821 */  addu  $at, $at, $a0
/* B0FE74 80098CD4 A02E0AD8 */  sb    $t6, 0xad8($at)
/* B0FE78 80098CD8 8CA20004 */  lw    $v0, 4($a1)
/* B0FE7C 80098CDC 3C088016 */  lui   $t0, 0x8016
/* B0FE80 80098CE0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0FE84 80098CE4 00027900 */  sll   $t7, $v0, 4
/* B0FE88 80098CE8 000FC702 */  srl   $t8, $t7, 0x1c
/* B0FE8C 80098CEC 0018C880 */  sll   $t9, $t8, 2
/* B0FE90 80098CF0 01194021 */  addu  $t0, $t0, $t9
/* B0FE94 80098CF4 8D086FA8 */  lw    $t0, 0x6fa8($t0)
/* B0FE98 80098CF8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0FE9C 80098CFC 00414824 */  and   $t1, $v0, $at
/* B0FEA0 80098D00 3C018000 */  lui   $at, 0x8000
/* B0FEA4 80098D04 01095021 */  addu  $t2, $t0, $t1
/* B0FEA8 80098D08 01415821 */  addu  $t3, $t2, $at
/* B0FEAC 80098D0C 3C010001 */  lui   $at, 1
/* B0FEB0 80098D10 00240821 */  addu  $at, $at, $a0
/* B0FEB4 80098D14 03E00008 */  jr    $ra
/* B0FEB8 80098D18 AC2B0ADC */   sw    $t3, 0xadc($at)

/* B0FEBC 80098D1C 90AE0004 */  lbu   $t6, 4($a1)
/* B0FEC0 80098D20 3C010001 */  lui   $at, 1
/* B0FEC4 80098D24 00240821 */  addu  $at, $at, $a0
/* B0FEC8 80098D28 A02E1E14 */  sb    $t6, 0x1e14($at)
/* B0FECC 80098D2C 90A20005 */  lbu   $v0, 5($a1)
/* B0FED0 80098D30 3C010001 */  lui   $at, 1
/* B0FED4 80098D34 00240821 */  addu  $at, $at, $a0
/* B0FED8 80098D38 A0220A3C */  sb    $v0, 0xa3c($at)
/* B0FEDC 80098D3C 3C010001 */  lui   $at, 1
/* B0FEE0 80098D40 00240821 */  addu  $at, $at, $a0
/* B0FEE4 80098D44 A0220A3B */  sb    $v0, 0xa3b($at)
/* B0FEE8 80098D48 90AF0006 */  lbu   $t7, 6($a1)
/* B0FEEC 80098D4C 3C010001 */  lui   $at, 1
/* B0FEF0 80098D50 00240821 */  addu  $at, $at, $a0
/* B0FEF4 80098D54 03E00008 */  jr    $ra
/* B0FEF8 80098D58 A02F0A42 */   sb    $t7, 0xa42($at)

/* B0FEFC 80098D5C 90AE0004 */  lbu   $t6, 4($a1)
/* B0FF00 80098D60 3C010001 */  lui   $at, 1
/* B0FF04 80098D64 00240821 */  addu  $at, $at, $a0
/* B0FF08 80098D68 A02E0A39 */  sb    $t6, 0xa39($at)
/* B0FF0C 80098D6C 90AF0005 */  lbu   $t7, 5($a1)
/* B0FF10 80098D70 3C010001 */  lui   $at, 1
/* B0FF14 80098D74 00240821 */  addu  $at, $at, $a0
/* B0FF18 80098D78 03E00008 */  jr    $ra
/* B0FF1C 80098D7C A02F0A3A */   sb    $t7, 0xa3a($at)

/* B0FF20 80098D80 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0FF24 80098D84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0FF28 80098D88 90A20004 */  lbu   $v0, 4($a1)
/* B0FF2C 80098D8C 240700FF */  li    $a3, 255
/* B0FF30 80098D90 00803025 */  move  $a2, $a0
/* B0FF34 80098D94 10E2003E */  beq   $a3, $v0, .L80098E90
/* B0FF38 80098D98 3C080001 */   lui   $t0, 1
/* B0FF3C 80098D9C 90A40005 */  lbu   $a0, 5($a1)
/* B0FF40 80098DA0 3C038016 */  li    $v1, 0x80160000 # 0.000000
/* B0FF44 80098DA4 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B0FF48 80098DA8 10E40039 */  beq   $a3, $a0, .L80098E90
/* B0FF4C 80098DAC 3C014270 */   li    $at, 0x42700000 # 0.000000
/* B0FF50 80098DB0 44822000 */  mtc1  $v0, $f4
/* B0FF54 80098DB4 44810000 */  mtc1  $at, $f0
/* B0FF58 80098DB8 04410005 */  bgez  $v0, .L80098DD0
/* B0FF5C 80098DBC 468021A0 */   cvt.s.w $f6, $f4
/* B0FF60 80098DC0 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0FF64 80098DC4 44814000 */  mtc1  $at, $f8
/* B0FF68 80098DC8 00000000 */  nop   
/* B0FF6C 80098DCC 46083180 */  add.s $f6, $f6, $f8
.L80098DD0:
/* B0FF70 80098DD0 44845000 */  mtc1  $a0, $f10
/* B0FF74 80098DD4 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0FF78 80098DD8 04810004 */  bgez  $a0, .L80098DEC
/* B0FF7C 80098DDC 46805420 */   cvt.s.w $f16, $f10
/* B0FF80 80098DE0 44819000 */  mtc1  $at, $f18
/* B0FF84 80098DE4 00000000 */  nop   
/* B0FF88 80098DE8 46128400 */  add.s $f16, $f16, $f18
.L80098DEC:
/* B0FF8C 80098DEC 46008103 */  div.s $f4, $f16, $f0
/* B0FF90 80098DF0 3C013CB4 */  li    $at, 0x3CB40000 # 0.000000
/* B0FF94 80098DF4 44819000 */  mtc1  $at, $f18
/* B0FF98 80098DF8 240F0001 */  li    $t7, 1
/* B0FF9C 80098DFC 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B0FFA0 80098E00 46043200 */  add.s $f8, $f6, $f4
/* B0FFA4 80098E04 46004282 */  mul.s $f10, $f8, $f0
/* B0FFA8 80098E08 46125403 */  div.s $f16, $f10, $f18
/* B0FFAC 80098E0C 444EF800 */  cfc1  $t6, $31
/* B0FFB0 80098E10 44CFF800 */  ctc1  $t7, $31
/* B0FFB4 80098E14 00000000 */  nop   
/* B0FFB8 80098E18 460081A4 */  cvt.w.s $f6, $f16
/* B0FFBC 80098E1C 444FF800 */  cfc1  $t7, $31
/* B0FFC0 80098E20 00000000 */  nop   
/* B0FFC4 80098E24 31EF0078 */  andi  $t7, $t7, 0x78
/* B0FFC8 80098E28 51E00013 */  beql  $t7, $zero, .L80098E78
/* B0FFCC 80098E2C 440F3000 */   mfc1  $t7, $f6
/* B0FFD0 80098E30 44813000 */  mtc1  $at, $f6
/* B0FFD4 80098E34 240F0001 */  li    $t7, 1
/* B0FFD8 80098E38 46068181 */  sub.s $f6, $f16, $f6
/* B0FFDC 80098E3C 44CFF800 */  ctc1  $t7, $31
/* B0FFE0 80098E40 00000000 */  nop   
/* B0FFE4 80098E44 460031A4 */  cvt.w.s $f6, $f6
/* B0FFE8 80098E48 444FF800 */  cfc1  $t7, $31
/* B0FFEC 80098E4C 00000000 */  nop   
/* B0FFF0 80098E50 31EF0078 */  andi  $t7, $t7, 0x78
/* B0FFF4 80098E54 15E00005 */  bnez  $t7, .L80098E6C
/* B0FFF8 80098E58 00000000 */   nop   
/* B0FFFC 80098E5C 440F3000 */  mfc1  $t7, $f6
/* B10000 80098E60 3C018000 */  lui   $at, 0x8000
/* B10004 80098E64 10000007 */  b     .L80098E84
/* B10008 80098E68 01E17825 */   or    $t7, $t7, $at
.L80098E6C:
/* B1000C 80098E6C 10000005 */  b     .L80098E84
/* B10010 80098E70 240FFFFF */   li    $t7, -1
/* B10014 80098E74 440F3000 */  mfc1  $t7, $f6
.L80098E78:
/* B10018 80098E78 00000000 */  nop   
/* B1001C 80098E7C 05E0FFFB */  bltz  $t7, .L80098E6C
/* B10020 80098E80 00000000 */   nop   
.L80098E84:
/* B10024 80098E84 44CEF800 */  ctc1  $t6, $31
/* B10028 80098E88 A46F000C */  sh    $t7, 0xc($v1)
/* B1002C 80098E8C A46F141A */  sh    $t7, 0x141a($v1)
.L80098E90:
/* B10030 80098E90 90A20006 */  lbu   $v0, 6($a1)
/* B10034 80098E94 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B10038 80098E98 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B1003C 80098E9C 10E20005 */  beq   $a3, $v0, .L80098EB4
/* B10040 80098EA0 3C010001 */   lui   $at, 1
/* B10044 80098EA4 3C010001 */  lui   $at, 1
/* B10048 80098EA8 00260821 */  addu  $at, $at, $a2
/* B1004C 80098EAC 10000003 */  b     .L80098EBC
/* B10050 80098EB0 A4220A26 */   sh    $v0, 0xa26($at)
.L80098EB4:
/* B10054 80098EB4 00260821 */  addu  $at, $at, $a2
/* B10058 80098EB8 A4200A26 */  sh    $zero, 0xa26($at)
.L80098EBC:
/* B1005C 80098EBC 84791422 */  lh    $t9, 0x1422($v1)
/* B10060 80098EC0 01064021 */  addu  $t0, $t0, $a2
/* B10064 80098EC4 57200005 */  bnezl $t9, .L80098EDC
/* B10068 80098EC8 9462000C */   lhu   $v0, 0xc($v1)
/* B1006C 80098ECC 95080A26 */  lhu   $t0, 0xa26($t0)
/* B10070 80098ED0 3C018012 */  lui   $at, %hi(D_8011FB40) # $at, 0x8012
/* B10074 80098ED4 A428FB40 */  sh    $t0, %lo(D_8011FB40)($at)
/* B10078 80098ED8 9462000C */  lhu   $v0, 0xc($v1)
.L80098EDC:
/* B1007C 80098EDC 24018000 */  li    $at, -32768
/* B10080 80098EE0 AFA60020 */  sw    $a2, 0x20($sp)
/* B10084 80098EE4 00412021 */  addu  $a0, $v0, $at
/* B10088 80098EE8 3C010001 */  lui   $at, 1
/* B1008C 80098EEC 00C14821 */  addu  $t1, $a2, $at
/* B10090 80098EF0 00042400 */  sll   $a0, $a0, 0x10
/* B10094 80098EF4 00042403 */  sra   $a0, $a0, 0x10
/* B10098 80098EF8 0C01DE1C */  jal   func_80077870
/* B1009C 80098EFC AFA90018 */   sw    $t1, 0x18($sp)
/* B100A0 80098F00 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* B100A4 80098F04 44812000 */  mtc1  $at, $f4
/* B100A8 80098F08 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* B100AC 80098F0C 44819000 */  mtc1  $at, $f18
/* B100B0 80098F10 46040202 */  mul.s $f8, $f0, $f4
/* B100B4 80098F14 8FA60020 */  lw    $a2, 0x20($sp)
/* B100B8 80098F18 3C010001 */  lui   $at, 1
/* B100BC 80098F1C 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B100C0 80098F20 00260821 */  addu  $at, $at, $a2
/* B100C4 80098F24 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B100C8 80098F28 46004287 */  neg.s $f10, $f8
/* B100CC 80098F2C 46125402 */  mul.s $f16, $f10, $f18
/* B100D0 80098F30 E4300A28 */  swc1  $f16, 0xa28($at)
/* B100D4 80098F34 9462000C */  lhu   $v0, 0xc($v1)
/* B100D8 80098F38 24018000 */  li    $at, -32768
/* B100DC 80098F3C 00412021 */  addu  $a0, $v0, $at
/* B100E0 80098F40 00042400 */  sll   $a0, $a0, 0x10
/* B100E4 80098F44 0C01DE0D */  jal   func_80077834
/* B100E8 80098F48 00042403 */   sra   $a0, $a0, 0x10
/* B100EC 80098F4C 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* B100F0 80098F50 44813000 */  mtc1  $at, $f6
/* B100F4 80098F54 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* B100F8 80098F58 44814000 */  mtc1  $at, $f8
/* B100FC 80098F5C 46060102 */  mul.s $f4, $f0, $f6
/* B10100 80098F60 8FA60020 */  lw    $a2, 0x20($sp)
/* B10104 80098F64 3C010001 */  lui   $at, 1
/* B10108 80098F68 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B1010C 80098F6C 00260821 */  addu  $at, $at, $a2
/* B10110 80098F70 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B10114 80098F74 46082282 */  mul.s $f10, $f4, $f8
/* B10118 80098F78 E42A0A2C */  swc1  $f10, 0xa2c($at)
/* B1011C 80098F7C 9462000C */  lhu   $v0, 0xc($v1)
/* B10120 80098F80 24018000 */  li    $at, -32768
/* B10124 80098F84 00412021 */  addu  $a0, $v0, $at
/* B10128 80098F88 00042400 */  sll   $a0, $a0, 0x10
/* B1012C 80098F8C 0C01DE0D */  jal   func_80077834
/* B10130 80098F90 00042403 */   sra   $a0, $a0, 0x10
/* B10134 80098F94 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* B10138 80098F98 44819000 */  mtc1  $at, $f18
/* B1013C 80098F9C 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* B10140 80098FA0 44813000 */  mtc1  $at, $f6
/* B10144 80098FA4 46120402 */  mul.s $f16, $f0, $f18
/* B10148 80098FA8 8FA60020 */  lw    $a2, 0x20($sp)
/* B1014C 80098FAC 3C010001 */  lui   $at, 1
/* B10150 80098FB0 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B10154 80098FB4 00260821 */  addu  $at, $at, $a2
/* B10158 80098FB8 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B1015C 80098FBC 46068102 */  mul.s $f4, $f16, $f6
/* B10160 80098FC0 E4240A30 */  swc1  $f4, 0xa30($at)
/* B10164 80098FC4 8FAA0018 */  lw    $t2, 0x18($sp)
/* B10168 80098FC8 954B0A26 */  lhu   $t3, 0xa26($t2)
/* B1016C 80098FCC 55600007 */  bnezl $t3, .L80098FEC
/* B10170 80098FD0 8C6D0000 */   lw    $t5, ($v1)
/* B10174 80098FD4 8C6C0008 */  lw    $t4, 8($v1)
/* B10178 80098FD8 3401FFF0 */  li    $at, 65520
/* B1017C 80098FDC 0181082A */  slt   $at, $t4, $at
/* B10180 80098FE0 54200006 */  bnezl $at, .L80098FFC
/* B10184 80098FE4 946E000C */   lhu   $t6, 0xc($v1)
/* B10188 80098FE8 8C6D0000 */  lw    $t5, ($v1)
.L80098FEC:
/* B1018C 80098FEC 24010604 */  li    $at, 1540
/* B10190 80098FF0 55A10024 */  bnel  $t5, $at, .L80099084
/* B10194 80098FF4 8FBF0014 */   lw    $ra, 0x14($sp)
/* B10198 80098FF8 946E000C */  lhu   $t6, 0xc($v1)
.L80098FFC:
/* B1019C 80098FFC 31C2FFFF */  andi  $v0, $t6, 0xffff
/* B101A0 80099000 28412AAC */  slti  $at, $v0, 0x2aac
/* B101A4 80099004 14200006 */  bnez  $at, .L80099020
/* B101A8 80099008 A46E141A */   sh    $t6, 0x141a($v1)
/* B101AC 8009900C 28414555 */  slti  $at, $v0, 0x4555
/* B101B0 80099010 10200003 */  beqz  $at, .L80099020
/* B101B4 80099014 240F3556 */   li    $t7, 13654
/* B101B8 80099018 10000019 */  b     .L80099080
/* B101BC 8009901C A46F141A */   sh    $t7, 0x141a($v1)
.L80099020:
/* B101C0 80099020 28414555 */  slti  $at, $v0, 0x4555
/* B101C4 80099024 14200005 */  bnez  $at, .L8009903C
/* B101C8 80099028 28415556 */   slti  $at, $v0, 0x5556
/* B101CC 8009902C 10200003 */  beqz  $at, .L8009903C
/* B101D0 80099030 24185556 */   li    $t8, 21846
/* B101D4 80099034 10000012 */  b     .L80099080
/* B101D8 80099038 A478141A */   sh    $t8, 0x141a($v1)
.L8009903C:
/* B101DC 8009903C 3401AAAB */  li    $at, 43691
/* B101E0 80099040 0041082A */  slt   $at, $v0, $at
/* B101E4 80099044 14200006 */  bnez  $at, .L80099060
/* B101E8 80099048 3401B556 */   li    $at, 46422
/* B101EC 8009904C 0041082A */  slt   $at, $v0, $at
/* B101F0 80099050 10200003 */  beqz  $at, .L80099060
/* B101F4 80099054 3419B556 */   li    $t9, 46422
/* B101F8 80099058 10000009 */  b     .L80099080
/* B101FC 8009905C A479141A */   sh    $t9, 0x141a($v1)
.L80099060:
/* B10200 80099060 3401C001 */  li    $at, 49153
/* B10204 80099064 0041082A */  slt   $at, $v0, $at
/* B10208 80099068 14200005 */  bnez  $at, .L80099080
/* B1020C 8009906C 3401CAAC */   li    $at, 51884
/* B10210 80099070 0041082A */  slt   $at, $v0, $at
/* B10214 80099074 10200002 */  beqz  $at, .L80099080
/* B10218 80099078 3408CAAC */   li    $t0, 51884
/* B1021C 8009907C A468141A */  sh    $t0, 0x141a($v1)
.L80099080:
/* B10220 80099080 8FBF0014 */  lw    $ra, 0x14($sp)
.L80099084:
/* B10224 80099084 27BD0020 */  addiu $sp, $sp, 0x20
/* B10228 80099088 03E00008 */  jr    $ra
/* B1022C 8009908C 00000000 */   nop   

/* B10230 80099090 80A20004 */  lb    $v0, 4($a1)
/* B10234 80099094 3C010001 */  lui   $at, 1
/* B10238 80099098 80A30005 */  lb    $v1, 5($a1)
/* B1023C 8009909C 80A60006 */  lb    $a2, 6($a1)
/* B10240 800990A0 00240821 */  addu  $at, $at, $a0
/* B10244 800990A4 A4220ACC */  sh    $v0, 0xacc($at)
/* B10248 800990A8 3C010001 */  lui   $at, 1
/* B1024C 800990AC 00240821 */  addu  $at, $at, $a0
/* B10250 800990B0 A4230ACE */  sh    $v1, 0xace($at)
/* B10254 800990B4 3C010001 */  li    $at, 0x00010000 # 0.000000
/* B10258 800990B8 00240821 */  addu  $at, $at, $a0
/* B1025C 800990BC A4260AD0 */  sh    $a2, 0xad0($at)
/* B10260 800990C0 90AE0007 */  lbu   $t6, 7($a1)
/* B10264 800990C4 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B10268 800990C8 448E2000 */  mtc1  $t6, $f4
/* B1026C 800990CC 05C10004 */  bgez  $t6, .L800990E0
/* B10270 800990D0 468021A0 */   cvt.s.w $f6, $f4
/* B10274 800990D4 44814000 */  mtc1  $at, $f8
/* B10278 800990D8 00000000 */  nop   
/* B1027C 800990DC 46083180 */  add.s $f6, $f6, $f8
.L800990E0:
/* B10280 800990E0 3C010001 */  lui   $at, 1
/* B10284 800990E4 00240821 */  addu  $at, $at, $a0
/* B10288 800990E8 03E00008 */  jr    $ra
/* B1028C 800990EC E4260AD4 */   swc1  $f6, 0xad4($at)

/* B10290 800990F0 8CA20004 */  lw    $v0, 4($a1)
/* B10294 800990F4 3C198016 */  lui   $t9, 0x8016
/* B10298 800990F8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1029C 800990FC 00027100 */  sll   $t6, $v0, 4
/* B102A0 80099100 000E7F02 */  srl   $t7, $t6, 0x1c
/* B102A4 80099104 000FC080 */  sll   $t8, $t7, 2
/* B102A8 80099108 0338C821 */  addu  $t9, $t9, $t8
/* B102AC 8009910C 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B102B0 80099110 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B102B4 80099114 00414024 */  and   $t0, $v0, $at
/* B102B8 80099118 3C018000 */  lui   $at, 0x8000
/* B102BC 8009911C 03284821 */  addu  $t1, $t9, $t0
/* B102C0 80099120 01215021 */  addu  $t2, $t1, $at
/* B102C4 80099124 3C010001 */  lui   $at, 1
/* B102C8 80099128 00240821 */  addu  $at, $at, $a0
/* B102CC 8009912C 03E00008 */  jr    $ra
/* B102D0 80099130 AC2A1E04 */   sw    $t2, 0x1e04($at)

/* B102D4 80099134 AFA40000 */  sw    $a0, ($sp)
/* B102D8 80099138 03E00008 */  jr    $ra
/* B102DC 8009913C AFA50004 */   sw    $a1, 4($sp)

/* B102E0 80099140 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B102E4 80099144 AFBF0014 */  sw    $ra, 0x14($sp)
/* B102E8 80099148 90AE0007 */  lbu   $t6, 7($a1)
/* B102EC 8009914C 3C188016 */  lui   $t8, %hi(D_8015FA40) # $t8, 0x8016
/* B102F0 80099150 240100FF */  li    $at, 255
/* B102F4 80099154 A08E07A4 */  sb    $t6, 0x7a4($a0)
/* B102F8 80099158 90AF0006 */  lbu   $t7, 6($a1)
/* B102FC 8009915C A08F07A5 */  sb    $t7, 0x7a5($a0)
/* B10300 80099160 9318FA40 */  lbu   $t8, %lo(D_8015FA40)($t8)
/* B10304 80099164 57010006 */  bnel  $t8, $at, .L80099180
/* B10308 80099168 8FBF0014 */   lw    $ra, 0x14($sp)
/* B1030C 8009916C 90A40001 */  lbu   $a0, 1($a1)
/* B10310 80099170 3C01F000 */  lui   $at, 0xf000
/* B10314 80099174 0C03E803 */  jal   set_bgm
/* B10318 80099178 00812025 */   or    $a0, $a0, $at
/* B1031C 8009917C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80099180:
/* B10320 80099180 27BD0018 */  addiu $sp, $sp, 0x18
/* B10324 80099184 03E00008 */  jr    $ra
/* B10328 80099188 00000000 */   nop   

/* B1032C 8009918C 90AE0007 */  lbu   $t6, 7($a1)
/* B10330 80099190 3C010001 */  lui   $at, 1
/* B10334 80099194 00240821 */  addu  $at, $at, $a0
/* B10338 80099198 03E00008 */  jr    $ra
/* B1033C 8009919C A02E1CC0 */   sb    $t6, 0x1cc0($at)

/* B10340 800991A0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B10344 800991A4 AFA40020 */  sw    $a0, 0x20($sp)
/* B10348 800991A8 AFA50024 */  sw    $a1, 0x24($sp)
/* B1034C 800991AC AFBF0014 */  sw    $ra, 0x14($sp)
/* B10350 800991B0 3C058016 */  lui   $a1, %hi(D_8015E664) # $a1, 0x8016
/* B10354 800991B4 3C048014 */  lui   $a0, %hi(D_8013F5DC) # $a0, 0x8014
/* B10358 800991B8 2484F5DC */  addiu $a0, %lo(D_8013F5DC) # addiu $a0, $a0, -0xa24
/* B1035C 800991BC 0C00084C */  jal   DebugMessage
/* B10360 800991C0 8CA5E664 */   lw    $a1, %lo(D_8015E664)($a1)
/* B10364 800991C4 3C058016 */  lui   $a1, %hi(D_8015E668) # $a1, 0x8016
/* B10368 800991C8 3C048014 */  lui   $a0, %hi(D_8013F5F8) # $a0, 0x8014
/* B1036C 800991CC 2484F5F8 */  addiu $a0, %lo(D_8013F5F8) # addiu $a0, $a0, -0xa08
/* B10370 800991D0 0C00084C */  jal   DebugMessage
/* B10374 800991D4 8CA5E668 */   lw    $a1, %lo(D_8015E668)($a1)
/* B10378 800991D8 3C058016 */  lui   $a1, %hi(D_8015F9C0) # $a1, 0x8016
/* B1037C 800991DC 3C048014 */  lui   $a0, %hi(D_8013F614) # $a0, 0x8014
/* B10380 800991E0 2484F614 */  addiu $a0, %lo(D_8013F614) # addiu $a0, $a0, -0x9ec
/* B10384 800991E4 0C00084C */  jal   DebugMessage
/* B10388 800991E8 8CA5F9C0 */   lw    $a1, %lo(D_8015F9C0)($a1)
/* B1038C 800991EC 3C028016 */  lui   $v0, %hi(D_8015F9C0) # $v0, 0x8016
/* B10390 800991F0 8C42F9C0 */  lw    $v0, %lo(D_8015F9C0)($v0)
/* B10394 800991F4 3C078016 */  lui   $a3, %hi(D_80166FA8) # $a3, 0x8016
/* B10398 800991F8 8FAE0024 */  lw    $t6, 0x24($sp)
/* B1039C 800991FC 50400050 */  beql  $v0, $zero, .L80099340
/* B103A0 80099200 8FBF0014 */   lw    $ra, 0x14($sp)
/* B103A4 80099204 8DC30004 */  lw    $v1, 4($t6)
/* B103A8 80099208 24E76FA8 */  addiu $a3, %lo(D_80166FA8) # addiu $a3, $a3, 0x6fa8
/* B103AC 8009920C 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B103B0 80099210 00037900 */  sll   $t7, $v1, 4
/* B103B4 80099214 000FC702 */  srl   $t8, $t7, 0x1c
/* B103B8 80099218 0018C880 */  sll   $t9, $t8, 2
/* B103BC 8009921C 00F95021 */  addu  $t2, $a3, $t9
/* B103C0 80099220 8D4B0000 */  lw    $t3, ($t2)
/* B103C4 80099224 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B103C8 80099228 00686024 */  and   $t4, $v1, $t0
/* B103CC 8009922C 3C098000 */  lui   $t1, 0x8000
/* B103D0 80099230 016C6821 */  addu  $t5, $t3, $t4
/* B103D4 80099234 01A97021 */  addu  $t6, $t5, $t1
/* B103D8 80099238 00027880 */  sll   $t7, $v0, 2
/* B103DC 8009923C 01CFC021 */  addu  $t8, $t6, $t7
/* B103E0 80099240 8F06FFFC */  lw    $a2, -4($t8)
/* B103E4 80099244 3C048014 */  lui   $a0, 0x8014
/* B103E8 80099248 10C0000E */  beqz  $a2, .L80099284
/* B103EC 8009924C 0006C900 */   sll   $t9, $a2, 4
/* B103F0 80099250 00195702 */  srl   $t2, $t9, 0x1c
/* B103F4 80099254 000A5880 */  sll   $t3, $t2, 2
/* B103F8 80099258 00EB6021 */  addu  $t4, $a3, $t3
/* B103FC 8009925C 8D8D0000 */  lw    $t5, ($t4)
/* B10400 80099260 00C87024 */  and   $t6, $a2, $t0
/* B10404 80099264 8FA40020 */  lw    $a0, 0x20($sp)
/* B10408 80099268 01AE7821 */  addu  $t7, $t5, $t6
/* B1040C 8009926C 0C026103 */  jal   func_8009840C
/* B10410 80099270 01E92821 */   addu  $a1, $t7, $t1
/* B10414 80099274 8FB90024 */  lw    $t9, 0x24($sp)
/* B10418 80099278 24180014 */  li    $t8, 20
/* B1041C 8009927C 1000002F */  b     .L8009933C
/* B10420 80099280 A3380008 */   sb    $t8, 8($t9)
.L80099284:
/* B10424 80099284 0C00084C */  jal   DebugMessage
/* B10428 80099288 2484F630 */   addiu $a0, $a0, -0x9d0
/* B1042C 8009928C 3C028016 */  lui   $v0, %hi(D_8015F9C0) # $v0, 0x8016
/* B10430 80099290 8C42F9C0 */  lw    $v0, %lo(D_8015F9C0)($v0)
/* B10434 80099294 24010003 */  li    $at, 3
/* B10438 80099298 8FAA0024 */  lw    $t2, 0x24($sp)
/* B1043C 8009929C 14410027 */  bne   $v0, $at, .L8009933C
/* B10440 800992A0 3C0E8016 */   lui   $t6, 0x8016
/* B10444 800992A4 8D430004 */  lw    $v1, 4($t2)
/* B10448 800992A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1044C 800992AC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B10450 800992B0 00035900 */  sll   $t3, $v1, 4
/* B10454 800992B4 000B6702 */  srl   $t4, $t3, 0x1c
/* B10458 800992B8 000C6880 */  sll   $t5, $t4, 2
/* B1045C 800992BC 01CD7021 */  addu  $t6, $t6, $t5
/* B10460 800992C0 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B10464 800992C4 00617824 */  and   $t7, $v1, $at
/* B10468 800992C8 0002C880 */  sll   $t9, $v0, 2
/* B1046C 800992CC 01CFC021 */  addu  $t8, $t6, $t7
/* B10470 800992D0 03195021 */  addu  $t2, $t8, $t9
/* B10474 800992D4 3C068000 */  lui   $a2, 0x8000
/* B10478 800992D8 00CA3021 */  addu  $a2, $a2, $t2
/* B1047C 800992DC 8CC6FFF8 */  lw    $a2, -8($a2)
/* B10480 800992E0 3C048014 */  lui   $a0, %hi(D_8013F660) # $a0, 0x8014
/* B10484 800992E4 2484F660 */  addiu $a0, %lo(D_8013F660) # addiu $a0, $a0, -0x9a0
/* B10488 800992E8 0C00084C */  jal   DebugMessage
/* B1048C 800992EC AFA60018 */   sw    $a2, 0x18($sp)
/* B10490 800992F0 8FA60018 */  lw    $a2, 0x18($sp)
/* B10494 800992F4 8FA40020 */  lw    $a0, 0x20($sp)
/* B10498 800992F8 3C0E8016 */  lui   $t6, 0x8016
/* B1049C 800992FC 10C0000F */  beqz  $a2, .L8009933C
/* B104A0 80099300 00065900 */   sll   $t3, $a2, 4
/* B104A4 80099304 000B6702 */  srl   $t4, $t3, 0x1c
/* B104A8 80099308 000C6880 */  sll   $t5, $t4, 2
/* B104AC 8009930C 01CD7021 */  addu  $t6, $t6, $t5
/* B104B0 80099310 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B104B4 80099314 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B104B8 80099318 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B104BC 8009931C 00C17824 */  and   $t7, $a2, $at
/* B104C0 80099320 3C018000 */  lui   $at, 0x8000
/* B104C4 80099324 01CF2821 */  addu  $a1, $t6, $t7
/* B104C8 80099328 0C026103 */  jal   func_8009840C
/* B104CC 8009932C 00A12821 */   addu  $a1, $a1, $at
/* B104D0 80099330 8FB90024 */  lw    $t9, 0x24($sp)
/* B104D4 80099334 24180014 */  li    $t8, 20
/* B104D8 80099338 A3380008 */  sb    $t8, 8($t9)
.L8009933C:
/* B104DC 8009933C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80099340:
/* B104E0 80099340 27BD0020 */  addiu $sp, $sp, 0x20
/* B104E4 80099344 03E00008 */  jr    $ra
/* B104E8 80099348 00000000 */   nop   

/* B104EC 8009934C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B104F0 80099350 AFA40018 */  sw    $a0, 0x18($sp)
/* B104F4 80099354 8FAE0018 */  lw    $t6, 0x18($sp)
/* B104F8 80099358 AFBF0014 */  sw    $ra, 0x14($sp)
/* B104FC 8009935C AFA5001C */  sw    $a1, 0x1c($sp)
/* B10500 80099360 3C048014 */  lui   $a0, %hi(D_8013F690) # $a0, 0x8014
/* B10504 80099364 2484F690 */  addiu $a0, %lo(D_8013F690) # addiu $a0, $a0, -0x970
/* B10508 80099368 0C00084C */  jal   DebugMessage
/* B1050C 8009936C 8DC51D68 */   lw    $a1, 0x1d68($t6)
/* B10510 80099370 8FAF001C */  lw    $t7, 0x1c($sp)
/* B10514 80099374 3C098016 */  lui   $t1, 0x8016
/* B10518 80099378 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1051C 8009937C 8DE20004 */  lw    $v0, 4($t7)
/* B10520 80099380 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B10524 80099384 8FAD0018 */  lw    $t5, 0x18($sp)
/* B10528 80099388 0002C100 */  sll   $t8, $v0, 4
/* B1052C 8009938C 0018CF02 */  srl   $t9, $t8, 0x1c
/* B10530 80099390 00194080 */  sll   $t0, $t9, 2
/* B10534 80099394 01284821 */  addu  $t1, $t1, $t0
/* B10538 80099398 8D296FA8 */  lw    $t1, 0x6fa8($t1)
/* B1053C 8009939C 00415024 */  and   $t2, $v0, $at
/* B10540 800993A0 3C018000 */  lui   $at, 0x8000
/* B10544 800993A4 012A5821 */  addu  $t3, $t1, $t2
/* B10548 800993A8 01616021 */  addu  $t4, $t3, $at
/* B1054C 800993AC ADAC1D68 */  sw    $t4, 0x1d68($t5)
/* B10550 800993B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B10554 800993B4 27BD0018 */  addiu $sp, $sp, 0x18
/* B10558 800993B8 03E00008 */  jr    $ra
/* B1055C 800993BC 00000000 */   nop   

/* B10560 800993C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B10564 800993C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B10568 800993C8 3C0F8016 */  lui   $t7, %hi(D_8015FA90) # $t7, 0x8016
/* B1056C 800993CC 8DEFFA90 */  lw    $t7, %lo(D_8015FA90)($t7)
/* B10570 800993D0 90AE0001 */  lbu   $t6, 1($a1)
/* B10574 800993D4 3C078016 */  lui   $a3, %hi(D_8015E660) # $a3, 0x8016
/* B10578 800993D8 24E7E660 */  addiu $a3, %lo(D_8015E660) # addiu $a3, $a3, -0x19a0
/* B1057C 800993DC A5EE04B2 */  sh    $t6, 0x4b2($t7)
/* B10580 800993E0 8CB80004 */  lw    $t8, 4($a1)
/* B10584 800993E4 2401002C */  li    $at, 44
/* B10588 800993E8 A4F81420 */  sh    $t8, 0x1420($a3)
/* B1058C 800993EC 848200A4 */  lh    $v0, 0xa4($a0)
/* B10590 800993F0 10410003 */  beq   $v0, $at, .L80099400
/* B10594 800993F4 24010042 */   li    $at, 66
/* B10598 800993F8 5441000D */  bnel  $v0, $at, .L80099430
/* B1059C 800993FC 28410051 */   slti  $at, $v0, 0x51
.L80099400:
/* B105A0 80099400 8CF90004 */  lw    $t9, 4($a3)
/* B105A4 80099404 24010011 */  li    $at, 17
/* B105A8 80099408 24030011 */  li    $v1, 17
/* B105AC 8009940C 13200003 */  beqz  $t9, .L8009941C
/* B105B0 80099410 24080001 */   li    $t0, 1
/* B105B4 80099414 10000001 */  b     .L8009941C
/* B105B8 80099418 24030005 */   li    $v1, 5
.L8009941C:
/* B105BC 8009941C 54610004 */  bnel  $v1, $at, .L80099430
/* B105C0 80099420 28410051 */   slti  $at, $v0, 0x51
/* B105C4 80099424 A4E81420 */  sh    $t0, 0x1420($a3)
/* B105C8 80099428 848200A4 */  lh    $v0, 0xa4($a0)
/* B105CC 8009942C 28410051 */  slti  $at, $v0, 0x51
.L80099430:
/* B105D0 80099430 14200002 */  bnez  $at, .L8009943C
/* B105D4 80099434 28410065 */   slti  $at, $v0, 0x65
/* B105D8 80099438 14200005 */  bnez  $at, .L80099450
.L8009943C:
/* B105DC 8009943C 2841001B */   slti  $at, $v0, 0x1b
/* B105E0 80099440 14200013 */  bnez  $at, .L80099490
/* B105E4 80099444 28410026 */   slti  $at, $v0, 0x26
/* B105E8 80099448 50200012 */  beql  $at, $zero, .L80099494
/* B105EC 8009944C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80099450:
/* B105F0 80099450 8CE90008 */  lw    $t1, 8($a3)
/* B105F4 80099454 3401FFF0 */  li    $at, 65520
/* B105F8 80099458 0121082A */  slt   $at, $t1, $at
/* B105FC 8009945C 5020000D */  beql  $at, $zero, .L80099494
/* B10600 80099460 8FBF0014 */   lw    $ra, 0x14($sp)
/* B10604 80099464 84E61420 */  lh    $a2, 0x1420($a3)
/* B10608 80099468 3C0C8012 */  lui   $t4, 0x8012
/* B1060C 8009946C 8CEA0F38 */  lw    $t2, 0xf38($a3)
/* B10610 80099470 00065880 */  sll   $t3, $a2, 2
/* B10614 80099474 018B6021 */  addu  $t4, $t4, $t3
/* B10618 80099478 8D8C7120 */  lw    $t4, 0x7120($t4)
/* B1061C 8009947C 3C048014 */  lui   $a0, %hi(D_8013F6B0) # $a0, 0x8014
/* B10620 80099480 2484F6B0 */  addiu $a0, %lo(D_8013F6B0) # addiu $a0, $a0, -0x950
/* B10624 80099484 014C2825 */  or    $a1, $t2, $t4
/* B10628 80099488 0C00084C */  jal   DebugMessage
/* B1062C 8009948C ACE50F38 */   sw    $a1, 0xf38($a3)
.L80099490:
/* B10630 80099490 8FBF0014 */  lw    $ra, 0x14($sp)
.L80099494:
/* B10634 80099494 27BD0018 */  addiu $sp, $sp, 0x18
/* B10638 80099498 03E00008 */  jr    $ra
/* B1063C 8009949C 00000000 */   nop   

/* B10640 800994A0 3C028016 */  lui   $v0, %hi(D_8015E660) # $v0, 0x8016
/* B10644 800994A4 2442E660 */  addiu $v0, %lo(D_8015E660) # addiu $v0, $v0, -0x19a0
/* B10648 800994A8 8C4E0010 */  lw    $t6, 0x10($v0)
/* B1064C 800994AC 3C088013 */  lui   $t0, 0x8013
/* B10650 800994B0 51C00013 */  beql  $t6, $zero, .L80099500
/* B10654 800994B4 8C580004 */   lw    $t8, 4($v0)
/* B10658 800994B8 8C4F0004 */  lw    $t7, 4($v0)
/* B1065C 800994BC 3C020001 */  lui   $v0, 1
/* B10660 800994C0 00441021 */  addu  $v0, $v0, $a0
/* B10664 800994C4 51E00009 */  beql  $t7, $zero, .L800994EC
/* B10668 800994C8 84421E1A */   lh    $v0, 0x1e1a($v0)
/* B1066C 800994CC 3C020001 */  lui   $v0, 1
/* B10670 800994D0 00441021 */  addu  $v0, $v0, $a0
/* B10674 800994D4 84421E1A */  lh    $v0, 0x1e1a($v0)
/* B10678 800994D8 24420001 */  addiu $v0, $v0, 1
/* B1067C 800994DC 00021400 */  sll   $v0, $v0, 0x10
/* B10680 800994E0 10000013 */  b     .L80099530
/* B10684 800994E4 00021403 */   sra   $v0, $v0, 0x10
/* B10688 800994E8 84421E1A */  lh    $v0, 0x1e1a($v0)
.L800994EC:
/* B1068C 800994EC 24420003 */  addiu $v0, $v0, 3
/* B10690 800994F0 00021400 */  sll   $v0, $v0, 0x10
/* B10694 800994F4 1000000E */  b     .L80099530
/* B10698 800994F8 00021403 */   sra   $v0, $v0, 0x10
/* B1069C 800994FC 8C580004 */  lw    $t8, 4($v0)
.L80099500:
/* B106A0 80099500 3C020001 */  lui   $v0, 1
/* B106A4 80099504 00441021 */  addu  $v0, $v0, $a0
/* B106A8 80099508 53000006 */  beql  $t8, $zero, .L80099524
/* B106AC 8009950C 84421E1A */   lh    $v0, 0x1e1a($v0)
/* B106B0 80099510 3C020001 */  lui   $v0, 1
/* B106B4 80099514 00441021 */  addu  $v0, $v0, $a0
/* B106B8 80099518 10000005 */  b     .L80099530
/* B106BC 8009951C 84421E1A */   lh    $v0, 0x1e1a($v0)
/* B106C0 80099520 84421E1A */  lh    $v0, 0x1e1a($v0)
.L80099524:
/* B106C4 80099524 24420002 */  addiu $v0, $v0, 2
/* B106C8 80099528 00021400 */  sll   $v0, $v0, 0x10
/* B106CC 8009952C 00021403 */  sra   $v0, $v0, 0x10
.L80099530:
/* B106D0 80099530 0002C880 */  sll   $t9, $v0, 2
/* B106D4 80099534 01194021 */  addu  $t0, $t0, $t9
/* B106D8 80099538 950881C2 */  lhu   $t0, -0x7e3e($t0)
/* B106DC 8009953C 3C010001 */  lui   $at, 1
/* B106E0 80099540 00240821 */  addu  $at, $at, $a0
/* B106E4 80099544 3109007F */  andi  $t1, $t0, 0x7f
/* B106E8 80099548 03E00008 */  jr    $ra
/* B106EC 8009954C A0291E5E */   sb    $t1, 0x1e5e($at)

/* B106F0 80099550 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B106F4 80099554 AFBF0014 */  sw    $ra, 0x14($sp)
/* B106F8 80099558 AFA40040 */  sw    $a0, 0x40($sp)
/* B106FC 8009955C 8C850000 */  lw    $a1, ($a0)
/* B10700 80099560 3C068014 */  lui   $a2, %hi(D_8013F6E0) # $a2, 0x8014
/* B10704 80099564 24C6F6E0 */  addiu $a2, %lo(D_8013F6E0) # addiu $a2, $a2, -0x920
/* B10708 80099568 27A4002C */  addiu $a0, $sp, 0x2c
/* B1070C 8009956C 24071275 */  li    $a3, 4725
/* B10710 80099570 0C031AB1 */  jal   func_800C6AC4
/* B10714 80099574 AFA5003C */   sw    $a1, 0x3c($sp)
/* B10718 80099578 8FA8003C */  lw    $t0, 0x3c($sp)
/* B1071C 8009957C 3C048013 */  lui   $a0, %hi(D_8012A2A8) # $a0, 0x8013
/* B10720 80099580 2484A2A8 */  addiu $a0, %lo(D_8012A2A8) # addiu $a0, $a0, -0x5d58
/* B10724 80099584 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B10728 80099588 3C05DE00 */  lui   $a1, 0xde00
/* B1072C 8009958C 3C068014 */  lui   $a2, %hi(D_8013F6F4) # $a2, 0x8014
/* B10730 80099590 246F0008 */  addiu $t7, $v1, 8
/* B10734 80099594 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B10738 80099598 AC640004 */  sw    $a0, 4($v1)
/* B1073C 8009959C AC650000 */  sw    $a1, ($v1)
/* B10740 800995A0 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B10744 800995A4 24C6F6F4 */  addiu $a2, %lo(D_8013F6F4) # addiu $a2, $a2, -0x90c
/* B10748 800995A8 2407127F */  li    $a3, 4735
/* B1074C 800995AC 24780008 */  addiu $t8, $v1, 8
/* B10750 800995B0 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B10754 800995B4 AC640004 */  sw    $a0, 4($v1)
/* B10758 800995B8 AC650000 */  sw    $a1, ($v1)
/* B1075C 800995BC 8FB90040 */  lw    $t9, 0x40($sp)
/* B10760 800995C0 27A4002C */  addiu $a0, $sp, 0x2c
/* B10764 800995C4 0C031AD5 */  jal   func_800C6B54
/* B10768 800995C8 8F250000 */   lw    $a1, ($t9)
/* B1076C 800995CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B10770 800995D0 27BD0040 */  addiu $sp, $sp, 0x40
/* B10774 800995D4 03E00008 */  jr    $ra
/* B10778 800995D8 00000000 */   nop   

/* B1077C 800995DC 27BDFF90 */  addiu $sp, $sp, -0x70
/* B10780 800995E0 AFBF0034 */  sw    $ra, 0x34($sp)
/* B10784 800995E4 AFA40070 */  sw    $a0, 0x70($sp)
/* B10788 800995E8 3C090001 */  lui   $t1, 1
/* B1078C 800995EC 01244821 */  addu  $t1, $t1, $a0
/* B10790 800995F0 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B10794 800995F4 8C850000 */  lw    $a1, ($a0)
/* B10798 800995F8 3C068014 */  lui   $a2, %hi(D_8013F708) # $a2, 0x8014
/* B1079C 800995FC 24C6F708 */  addiu $a2, %lo(D_8013F708) # addiu $a2, $a2, -0x8f8
/* B107A0 80099600 27A40058 */  addiu $a0, $sp, 0x58
/* B107A4 80099604 2407129B */  li    $a3, 4763
/* B107A8 80099608 AFA9006C */  sw    $t1, 0x6c($sp)
/* B107AC 8009960C 0C031AB1 */  jal   func_800C6AC4
/* B107B0 80099610 AFA50068 */   sw    $a1, 0x68($sp)
/* B107B4 80099614 8FA80068 */  lw    $t0, 0x68($sp)
/* B107B8 80099618 8FA9006C */  lw    $t1, 0x6c($sp)
/* B107BC 8009961C 3C18DB06 */  lui   $t8, (0xDB060024 >> 16) # lui $t8, 0xdb06
/* B107C0 80099620 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B107C4 80099624 37180024 */  ori   $t8, (0xDB060024 & 0xFFFF) # ori $t8, $t8, 0x24
/* B107C8 80099628 240B007F */  li    $t3, 127
/* B107CC 8009962C 244F0008 */  addiu $t7, $v0, 8
/* B107D0 80099630 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B107D4 80099634 AC580000 */  sw    $t8, ($v0)
/* B107D8 80099638 8FB90070 */  lw    $t9, 0x70($sp)
/* B107DC 8009963C 24180020 */  li    $t8, 32
/* B107E0 80099640 240F0020 */  li    $t7, 32
/* B107E4 80099644 8F240000 */  lw    $a0, ($t9)
/* B107E8 80099648 240C0020 */  li    $t4, 32
/* B107EC 8009964C 240D0020 */  li    $t5, 32
/* B107F0 80099650 240E0001 */  li    $t6, 1
/* B107F4 80099654 3123007F */  andi  $v1, $t1, 0x7f
/* B107F8 80099658 3127007F */  andi  $a3, $t1, 0x7f
/* B107FC 8009965C AFA70020 */  sw    $a3, 0x20($sp)
/* B10800 80099660 01633023 */  subu  $a2, $t3, $v1
/* B10804 80099664 AFA3001C */  sw    $v1, 0x1c($sp)
/* B10808 80099668 AFAE0018 */  sw    $t6, 0x18($sp)
/* B1080C 8009966C AFAD0014 */  sw    $t5, 0x14($sp)
/* B10810 80099670 AFAC0010 */  sw    $t4, 0x10($sp)
/* B10814 80099674 AFB80028 */  sw    $t8, 0x28($sp)
/* B10818 80099678 AFAF0024 */  sw    $t7, 0x24($sp)
/* B1081C 8009967C 00002825 */  move  $a1, $zero
/* B10820 80099680 AFA80068 */  sw    $t0, 0x68($sp)
/* B10824 80099684 0C0253D0 */  jal   func_80094F40
/* B10828 80099688 AFA20054 */   sw    $v0, 0x54($sp)
/* B1082C 8009968C 8FAA0054 */  lw    $t2, 0x54($sp)
/* B10830 80099690 8FA80068 */  lw    $t0, 0x68($sp)
/* B10834 80099694 3C0BE700 */  lui   $t3, 0xe700
/* B10838 80099698 AD420004 */  sw    $v0, 4($t2)
/* B1083C 8009969C 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B10840 800996A0 3C0E8080 */  lui   $t6, (0x80808080 >> 16) # lui $t6, 0x8080
/* B10844 800996A4 35CE8080 */  ori   $t6, (0x80808080 & 0xFFFF) # ori $t6, $t6, 0x8080
/* B10848 800996A8 24590008 */  addiu $t9, $v0, 8
/* B1084C 800996AC AD1902D0 */  sw    $t9, 0x2d0($t0)
/* B10850 800996B0 AC400004 */  sw    $zero, 4($v0)
/* B10854 800996B4 AC4B0000 */  sw    $t3, ($v0)
/* B10858 800996B8 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B1085C 800996BC 3C0DFB00 */  lui   $t5, 0xfb00
/* B10860 800996C0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B10864 800996C4 244C0008 */  addiu $t4, $v0, 8
/* B10868 800996C8 AD0C02D0 */  sw    $t4, 0x2d0($t0)
/* B1086C 800996CC AC4E0004 */  sw    $t6, 4($v0)
/* B10870 800996D0 AC4D0000 */  sw    $t5, ($v0)
/* B10874 800996D4 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B10878 800996D8 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B1087C 800996DC 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B10880 800996E0 246F0008 */  addiu $t7, $v1, 8
/* B10884 800996E4 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B10888 800996E8 AC780000 */  sw    $t8, ($v1)
/* B1088C 800996EC 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B10890 800996F0 3C048013 */  lui   $a0, 0x8013
/* B10894 800996F4 3C188016 */  lui   $t8, 0x8016
/* B10898 800996F8 00195880 */  sll   $t3, $t9, 2
/* B1089C 800996FC 008B2021 */  addu  $a0, $a0, $t3
/* B108A0 80099700 8C84A2F8 */  lw    $a0, -0x5d08($a0)
/* B108A4 80099704 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B108A8 80099708 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B108AC 8009970C 00046900 */  sll   $t5, $a0, 4
/* B108B0 80099710 000D7702 */  srl   $t6, $t5, 0x1c
/* B108B4 80099714 000E7880 */  sll   $t7, $t6, 2
/* B108B8 80099718 030FC021 */  addu  $t8, $t8, $t7
/* B108BC 8009971C 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B108C0 80099720 00816024 */  and   $t4, $a0, $at
/* B108C4 80099724 3C018000 */  lui   $at, 0x8000
/* B108C8 80099728 0198C821 */  addu  $t9, $t4, $t8
/* B108CC 8009972C 03215821 */  addu  $t3, $t9, $at
/* B108D0 80099730 AC6B0004 */  sw    $t3, 4($v1)
/* B108D4 80099734 8FAD0070 */  lw    $t5, 0x70($sp)
/* B108D8 80099738 3C068014 */  lui   $a2, %hi(D_8013F71C) # $a2, 0x8014
/* B108DC 8009973C 24C6F71C */  addiu $a2, %lo(D_8013F71C) # addiu $a2, $a2, -0x8e4
/* B108E0 80099740 27A40058 */  addiu $a0, $sp, 0x58
/* B108E4 80099744 240712AF */  li    $a3, 4783
/* B108E8 80099748 0C031AD5 */  jal   func_800C6B54
/* B108EC 8009974C 8DA50000 */   lw    $a1, ($t5)
/* B108F0 80099750 8FBF0034 */  lw    $ra, 0x34($sp)
/* B108F4 80099754 27BD0070 */  addiu $sp, $sp, 0x70
/* B108F8 80099758 03E00008 */  jr    $ra
/* B108FC 8009975C 00000000 */   nop   

/* B10900 80099760 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B10904 80099764 AFBF0034 */  sw    $ra, 0x34($sp)
/* B10908 80099768 AFA40060 */  sw    $a0, 0x60($sp)
/* B1090C 8009976C 8C850000 */  lw    $a1, ($a0)
/* B10910 80099770 3C068014 */  lui   $a2, %hi(D_8013F730) # $a2, 0x8014
/* B10914 80099774 24C6F730 */  addiu $a2, %lo(D_8013F730) # addiu $a2, $a2, -0x8d0
/* B10918 80099778 27A40048 */  addiu $a0, $sp, 0x48
/* B1091C 8009977C 240712ED */  li    $a3, 4845
/* B10920 80099780 0C031AB1 */  jal   func_800C6AC4
/* B10924 80099784 AFA50058 */   sw    $a1, 0x58($sp)
/* B10928 80099788 8FA80058 */  lw    $t0, 0x58($sp)
/* B1092C 8009978C 8FAB0060 */  lw    $t3, 0x60($sp)
/* B10930 80099790 3C0A0001 */  lui   $t2, 1
/* B10934 80099794 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B10938 80099798 014B5021 */  addu  $t2, $t2, $t3
/* B1093C 8009979C 8D4A1DE4 */  lw    $t2, 0x1de4($t2)
/* B10940 800997A0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B10944 800997A4 244F0008 */  addiu $t7, $v0, 8
/* B10948 800997A8 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B1094C 800997AC AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B10950 800997B0 AC580000 */  sw    $t8, ($v0)
/* B10954 800997B4 8D640000 */  lw    $a0, ($t3)
/* B10958 800997B8 000A1840 */  sll   $v1, $t2, 1
/* B1095C 800997BC 306E007F */  andi  $t6, $v1, 0x7f
/* B10960 800997C0 24180020 */  li    $t8, 32
/* B10964 800997C4 240F0040 */  li    $t7, 64
/* B10968 800997C8 24190040 */  li    $t9, 64
/* B1096C 800997CC 240C0020 */  li    $t4, 32
/* B10970 800997D0 240D0001 */  li    $t5, 1
/* B10974 800997D4 AFAD0018 */  sw    $t5, 0x18($sp)
/* B10978 800997D8 AFAC0014 */  sw    $t4, 0x14($sp)
/* B1097C 800997DC AFB90010 */  sw    $t9, 0x10($sp)
/* B10980 800997E0 AFAF0024 */  sw    $t7, 0x24($sp)
/* B10984 800997E4 AFB80028 */  sw    $t8, 0x28($sp)
/* B10988 800997E8 AFAE0020 */  sw    $t6, 0x20($sp)
/* B1098C 800997EC 306600FF */  andi  $a2, $v1, 0xff
/* B10990 800997F0 AFA0001C */  sw    $zero, 0x1c($sp)
/* B10994 800997F4 00002825 */  move  $a1, $zero
/* B10998 800997F8 00003825 */  move  $a3, $zero
/* B1099C 800997FC AFA80058 */  sw    $t0, 0x58($sp)
/* B109A0 80099800 0C0253D0 */  jal   func_80094F40
/* B109A4 80099804 AFA20044 */   sw    $v0, 0x44($sp)
/* B109A8 80099808 8FA90044 */  lw    $t1, 0x44($sp)
/* B109AC 8009980C 8FA80058 */  lw    $t0, 0x58($sp)
/* B109B0 80099810 3C0CE700 */  lui   $t4, 0xe700
/* B109B4 80099814 AD220004 */  sw    $v0, 4($t1)
/* B109B8 80099818 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B109BC 8009981C 3C0F8080 */  lui   $t7, (0x80808080 >> 16) # lui $t7, 0x8080
/* B109C0 80099820 35EF8080 */  ori   $t7, (0x80808080 & 0xFFFF) # ori $t7, $t7, 0x8080
/* B109C4 80099824 24590008 */  addiu $t9, $v0, 8
/* B109C8 80099828 AD1902D0 */  sw    $t9, 0x2d0($t0)
/* B109CC 8009982C AC400004 */  sw    $zero, 4($v0)
/* B109D0 80099830 AC4C0000 */  sw    $t4, ($v0)
/* B109D4 80099834 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B109D8 80099838 3C0EFB00 */  lui   $t6, 0xfb00
/* B109DC 8009983C 3C068014 */  lui   $a2, %hi(D_8013F744) # $a2, 0x8014
/* B109E0 80099840 244D0008 */  addiu $t5, $v0, 8
/* B109E4 80099844 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B109E8 80099848 AC4F0004 */  sw    $t7, 4($v0)
/* B109EC 8009984C AC4E0000 */  sw    $t6, ($v0)
/* B109F0 80099850 8FB80060 */  lw    $t8, 0x60($sp)
/* B109F4 80099854 24C6F744 */  addiu $a2, %lo(D_8013F744) # addiu $a2, $a2, -0x8bc
/* B109F8 80099858 27A40048 */  addiu $a0, $sp, 0x48
/* B109FC 8009985C 240712FB */  li    $a3, 4859
/* B10A00 80099860 0C031AD5 */  jal   func_800C6B54
/* B10A04 80099864 8F050000 */   lw    $a1, ($t8)
/* B10A08 80099868 8FBF0034 */  lw    $ra, 0x34($sp)
/* B10A0C 8009986C 27BD0060 */  addiu $sp, $sp, 0x60
/* B10A10 80099870 03E00008 */  jr    $ra
/* B10A14 80099874 00000000 */   nop   

/* B10A18 80099878 27BDFF50 */  addiu $sp, $sp, -0xb0
/* B10A1C 8009987C AFBF0034 */  sw    $ra, 0x34($sp)
/* B10A20 80099880 AFA400B0 */  sw    $a0, 0xb0($sp)
/* B10A24 80099884 8C840000 */  lw    $a0, ($a0)
/* B10A28 80099888 0C031A73 */  jal   graph_alloc
/* B10A2C 8009988C 24050030 */   li    $a1, 48
/* B10A30 80099890 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* B10A34 80099894 3C068014 */  lui   $a2, %hi(D_8013F758) # $a2, 0x8014
/* B10A38 80099898 24C6F758 */  addiu $a2, %lo(D_8013F758) # addiu $a2, $a2, -0x8a8
/* B10A3C 8009989C 8DE50000 */  lw    $a1, ($t7)
/* B10A40 800998A0 AFA200A4 */  sw    $v0, 0xa4($sp)
/* B10A44 800998A4 27A40090 */  addiu $a0, $sp, 0x90
/* B10A48 800998A8 24071329 */  li    $a3, 4905
/* B10A4C 800998AC 0C031AB1 */  jal   func_800C6AC4
/* B10A50 800998B0 AFA500A0 */   sw    $a1, 0xa0($sp)
/* B10A54 800998B4 8FA800A0 */  lw    $t0, 0xa0($sp)
/* B10A58 800998B8 8FBF00B0 */  lw    $ra, 0xb0($sp)
/* B10A5C 800998BC 3C010001 */  lui   $at, 1
/* B10A60 800998C0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10A64 800998C4 03E1F821 */  addu  $ra, $ra, $at
/* B10A68 800998C8 8FA900A4 */  lw    $t1, 0xa4($sp)
/* B10A6C 800998CC 8FE31DE4 */  lw    $v1, 0x1de4($ra)
/* B10A70 800998D0 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B10A74 800998D4 24580008 */  addiu $t8, $v0, 8
/* B10A78 800998D8 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B10A7C 800998DC AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B10A80 800998E0 3C0E8016 */  lui   $t6, %hi(D_8015E670) # $t6, 0x8016
/* B10A84 800998E4 AC590000 */  sw    $t9, ($v0)
/* B10A88 800998E8 8DCEE670 */  lw    $t6, %lo(D_8015E670)($t6)
/* B10A8C 800998EC 3C048013 */  lui   $a0, 0x8013
/* B10A90 800998F0 3C068016 */  lui   $a2, %hi(D_80166FA8) # $a2, 0x8016
/* B10A94 800998F4 000E7880 */  sll   $t7, $t6, 2
/* B10A98 800998F8 008F2021 */  addu  $a0, $a0, $t7
/* B10A9C 800998FC 8C84A300 */  lw    $a0, -0x5d00($a0)
/* B10AA0 80099900 24C66FA8 */  addiu $a2, %lo(D_80166FA8) # addiu $a2, $a2, 0x6fa8
/* B10AA4 80099904 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* B10AA8 80099908 0004C900 */  sll   $t9, $a0, 4
/* B10AAC 8009990C 00197702 */  srl   $t6, $t9, 0x1c
/* B10AB0 80099910 000E7880 */  sll   $t7, $t6, 2
/* B10AB4 80099914 00CFC821 */  addu  $t9, $a2, $t7
/* B10AB8 80099918 8F2E0000 */  lw    $t6, ($t9)
/* B10ABC 8009991C 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* B10AC0 80099920 0085C024 */  and   $t8, $a0, $a1
/* B10AC4 80099924 3C078000 */  lui   $a3, 0x8000
/* B10AC8 80099928 030E7821 */  addu  $t7, $t8, $t6
/* B10ACC 8009992C 01E7C821 */  addu  $t9, $t7, $a3
/* B10AD0 80099930 AC590004 */  sw    $t9, 4($v0)
/* B10AD4 80099934 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10AD8 80099938 306E000E */  andi  $t6, $v1, 0xe
/* B10ADC 8009993C 000E7843 */  sra   $t7, $t6, 1
/* B10AE0 80099940 3C0DDB06 */  lui   $t5, (0xDB060024 >> 16) # lui $t5, 0xdb06
/* B10AE4 80099944 24580008 */  addiu $t8, $v0, 8
/* B10AE8 80099948 35AD0024 */  ori   $t5, (0xDB060024 & 0xFFFF) # ori $t5, $t5, 0x24
/* B10AEC 8009994C 000FC880 */  sll   $t9, $t7, 2
/* B10AF0 80099950 3C048013 */  lui   $a0, 0x8013
/* B10AF4 80099954 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B10AF8 80099958 00992021 */  addu  $a0, $a0, $t9
/* B10AFC 8009995C AC4D0000 */  sw    $t5, ($v0)
/* B10B00 80099960 8C84A308 */  lw    $a0, -0x5cf8($a0)
/* B10B04 80099964 306C007F */  andi  $t4, $v1, 0x7f
/* B10B08 80099968 00047100 */  sll   $t6, $a0, 4
/* B10B0C 8009996C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B10B10 80099970 000FC880 */  sll   $t9, $t7, 2
/* B10B14 80099974 00D97021 */  addu  $t6, $a2, $t9
/* B10B18 80099978 8DCF0000 */  lw    $t7, ($t6)
/* B10B1C 8009997C 0085C024 */  and   $t8, $a0, $a1
/* B10B20 80099980 00002825 */  move  $a1, $zero
/* B10B24 80099984 030FC821 */  addu  $t9, $t8, $t7
/* B10B28 80099988 03277021 */  addu  $t6, $t9, $a3
/* B10B2C 8009998C AC4E0004 */  sw    $t6, 4($v0)
/* B10B30 80099990 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B10B34 80099994 24190040 */  li    $t9, 64
/* B10B38 80099998 240E0020 */  li    $t6, 32
/* B10B3C 8009999C 24580008 */  addiu $t8, $v0, 8
/* B10B40 800999A0 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B10B44 800999A4 AC4D0000 */  sw    $t5, ($v0)
/* B10B48 800999A8 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* B10B4C 800999AC 24180001 */  li    $t8, 1
/* B10B50 800999B0 00003825 */  move  $a3, $zero
/* B10B54 800999B4 8DE40000 */  lw    $a0, ($t7)
/* B10B58 800999B8 AFB90010 */  sw    $t9, 0x10($sp)
/* B10B5C 800999BC 24190020 */  li    $t9, 32
/* B10B60 800999C0 AFBF0044 */  sw    $ra, 0x44($sp)
/* B10B64 800999C4 240F0040 */  li    $t7, 64
/* B10B68 800999C8 AFAF0024 */  sw    $t7, 0x24($sp)
/* B10B6C 800999CC AFB90028 */  sw    $t9, 0x28($sp)
/* B10B70 800999D0 AFAC0040 */  sw    $t4, 0x40($sp)
/* B10B74 800999D4 AFAC0020 */  sw    $t4, 0x20($sp)
/* B10B78 800999D8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B10B7C 800999DC AFB80018 */  sw    $t8, 0x18($sp)
/* B10B80 800999E0 AFAE0014 */  sw    $t6, 0x14($sp)
/* B10B84 800999E4 AFA800A0 */  sw    $t0, 0xa0($sp)
/* B10B88 800999E8 AFA900A4 */  sw    $t1, 0xa4($sp)
/* B10B8C 800999EC AFA300AC */  sw    $v1, 0xac($sp)
/* B10B90 800999F0 306600FF */  andi  $a2, $v1, 0xff
/* B10B94 800999F4 0C0253D0 */  jal   func_80094F40
/* B10B98 800999F8 AFA20084 */   sw    $v0, 0x84($sp)
/* B10B9C 800999FC 8FAA0084 */  lw    $t2, 0x84($sp)
/* B10BA0 80099A00 8FA800A0 */  lw    $t0, 0xa0($sp)
/* B10BA4 80099A04 8FA900A4 */  lw    $t1, 0xa4($sp)
/* B10BA8 80099A08 8FAB00AC */  lw    $t3, 0xac($sp)
/* B10BAC 80099A0C 8FBF0044 */  lw    $ra, 0x44($sp)
/* B10BB0 80099A10 AD420004 */  sw    $v0, 4($t2)
/* B10BB4 80099A14 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10BB8 80099A18 3C18DB06 */  lui   $t8, (0xDB060028 >> 16) # lui $t8, 0xdb06
/* B10BBC 80099A1C 37180028 */  ori   $t8, (0xDB060028 & 0xFFFF) # ori $t8, $t8, 0x28
/* B10BC0 80099A20 244E0008 */  addiu $t6, $v0, 8
/* B10BC4 80099A24 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B10BC8 80099A28 AC580000 */  sw    $t8, ($v0)
/* B10BCC 80099A2C 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* B10BD0 80099A30 24180001 */  li    $t8, 1
/* B10BD4 80099A34 24190020 */  li    $t9, 32
/* B10BD8 80099A38 8DE40000 */  lw    $a0, ($t7)
/* B10BDC 80099A3C AFB80018 */  sw    $t8, 0x18($sp)
/* B10BE0 80099A40 AFB90010 */  sw    $t9, 0x10($sp)
/* B10BE4 80099A44 000B7840 */  sll   $t7, $t3, 1
/* B10BE8 80099A48 31F9007F */  andi  $t9, $t7, 0x7f
/* B10BEC 80099A4C 24180020 */  li    $t8, 32
/* B10BF0 80099A50 240E0020 */  li    $t6, 32
/* B10BF4 80099A54 AFBF0044 */  sw    $ra, 0x44($sp)
/* B10BF8 80099A58 AFAE0014 */  sw    $t6, 0x14($sp)
/* B10BFC 80099A5C AFAE0024 */  sw    $t6, 0x24($sp)
/* B10C00 80099A60 AFB80028 */  sw    $t8, 0x28($sp)
/* B10C04 80099A64 AFB90020 */  sw    $t9, 0x20($sp)
/* B10C08 80099A68 AFA0001C */  sw    $zero, 0x1c($sp)
/* B10C0C 80099A6C 8FA70040 */  lw    $a3, 0x40($sp)
/* B10C10 80099A70 00002825 */  move  $a1, $zero
/* B10C14 80099A74 00003025 */  move  $a2, $zero
/* B10C18 80099A78 AFA800A0 */  sw    $t0, 0xa0($sp)
/* B10C1C 80099A7C AFA900A4 */  sw    $t1, 0xa4($sp)
/* B10C20 80099A80 0C0253D0 */  jal   func_80094F40
/* B10C24 80099A84 AFA20080 */   sw    $v0, 0x80($sp)
/* B10C28 80099A88 8FA30080 */  lw    $v1, 0x80($sp)
/* B10C2C 80099A8C 8FA800A0 */  lw    $t0, 0xa0($sp)
/* B10C30 80099A90 8FA900A4 */  lw    $t1, 0xa4($sp)
/* B10C34 80099A94 8FBF0044 */  lw    $ra, 0x44($sp)
/* B10C38 80099A98 AC620004 */  sw    $v0, 4($v1)
/* B10C3C 80099A9C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10C40 80099AA0 3C04E700 */  lui   $a0, 0xe700
/* B10C44 80099AA4 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B10C48 80099AA8 244F0008 */  addiu $t7, $v0, 8
/* B10C4C 80099AAC AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B10C50 80099AB0 AC400004 */  sw    $zero, 4($v0)
/* B10C54 80099AB4 AC440000 */  sw    $a0, ($v0)
/* B10C58 80099AB8 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10C5C 80099ABC 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B10C60 80099AC0 3C05FB00 */  lui   $a1, 0xfb00
/* B10C64 80099AC4 24590008 */  addiu $t9, $v0, 8
/* B10C68 80099AC8 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B10C6C 80099ACC AC460004 */  sw    $a2, 4($v0)
/* B10C70 80099AD0 AC450000 */  sw    $a1, ($v0)
/* B10C74 80099AD4 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B10C78 80099AD8 3C19DB06 */  lui   $t9, (0xDB06002C >> 16) # lui $t9, 0xdb06
/* B10C7C 80099ADC 3739002C */  ori   $t9, (0xDB06002C & 0xFFFF) # ori $t9, $t9, 0x2c
/* B10C80 80099AE0 244E0008 */  addiu $t6, $v0, 8
/* B10C84 80099AE4 AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B10C88 80099AE8 AC400004 */  sw    $zero, 4($v0)
/* B10C8C 80099AEC AC440000 */  sw    $a0, ($v0)
/* B10C90 80099AF0 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B10C94 80099AF4 3C07DF00 */  lui   $a3, 0xdf00
/* B10C98 80099AF8 24580008 */  addiu $t8, $v0, 8
/* B10C9C 80099AFC AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B10CA0 80099B00 AC460004 */  sw    $a2, 4($v0)
/* B10CA4 80099B04 AC450000 */  sw    $a1, ($v0)
/* B10CA8 80099B08 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10CAC 80099B0C 2406FF00 */  li    $a2, -256
/* B10CB0 80099B10 244F0008 */  addiu $t7, $v0, 8
/* B10CB4 80099B14 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B10CB8 80099B18 AC490004 */  sw    $t1, 4($v0)
/* B10CBC 80099B1C AC590000 */  sw    $t9, ($v0)
/* B10CC0 80099B20 01201025 */  move  $v0, $t1
/* B10CC4 80099B24 AC440000 */  sw    $a0, ($v0)
/* B10CC8 80099B28 AC400004 */  sw    $zero, 4($v0)
/* B10CCC 80099B2C 25290008 */  addiu $t1, $t1, 8
/* B10CD0 80099B30 01201025 */  move  $v0, $t1
/* B10CD4 80099B34 AC450000 */  sw    $a1, ($v0)
/* B10CD8 80099B38 87EE1D30 */  lh    $t6, 0x1d30($ra)
/* B10CDC 80099B3C 25290008 */  addiu $t1, $t1, 8
/* B10CE0 80099B40 31D800FF */  andi  $t8, $t6, 0xff
/* B10CE4 80099B44 03067825 */  or    $t7, $t8, $a2
/* B10CE8 80099B48 AC4F0004 */  sw    $t7, 4($v0)
/* B10CEC 80099B4C 01201025 */  move  $v0, $t1
/* B10CF0 80099B50 AC470000 */  sw    $a3, ($v0)
/* B10CF4 80099B54 AC400004 */  sw    $zero, 4($v0)
/* B10CF8 80099B58 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10CFC 80099B5C 3C0EDB06 */  lui   $t6, (0xDB060030 >> 16) # lui $t6, 0xdb06
/* B10D00 80099B60 25290008 */  addiu $t1, $t1, 8
/* B10D04 80099B64 24590008 */  addiu $t9, $v0, 8
/* B10D08 80099B68 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B10D0C 80099B6C 35CE0030 */  ori   $t6, (0xDB060030 & 0xFFFF) # ori $t6, $t6, 0x30
/* B10D10 80099B70 AC4E0000 */  sw    $t6, ($v0)
/* B10D14 80099B74 AC490004 */  sw    $t1, 4($v0)
/* B10D18 80099B78 01201025 */  move  $v0, $t1
/* B10D1C 80099B7C AC440000 */  sw    $a0, ($v0)
/* B10D20 80099B80 AC400004 */  sw    $zero, 4($v0)
/* B10D24 80099B84 25290008 */  addiu $t1, $t1, 8
/* B10D28 80099B88 01201025 */  move  $v0, $t1
/* B10D2C 80099B8C AC450000 */  sw    $a1, ($v0)
/* B10D30 80099B90 87F81D32 */  lh    $t8, 0x1d32($ra)
/* B10D34 80099B94 25290008 */  addiu $t1, $t1, 8
/* B10D38 80099B98 27A40090 */  addiu $a0, $sp, 0x90
/* B10D3C 80099B9C 330F00FF */  andi  $t7, $t8, 0xff
/* B10D40 80099BA0 01E6C825 */  or    $t9, $t7, $a2
/* B10D44 80099BA4 AC590004 */  sw    $t9, 4($v0)
/* B10D48 80099BA8 AD200004 */  sw    $zero, 4($t1)
/* B10D4C 80099BAC AD270000 */  sw    $a3, ($t1)
/* B10D50 80099BB0 8FAE00B0 */  lw    $t6, 0xb0($sp)
/* B10D54 80099BB4 3C068014 */  lui   $a2, %hi(D_8013F76C) # $a2, 0x8014
/* B10D58 80099BB8 24C6F76C */  addiu $a2, %lo(D_8013F76C) # addiu $a2, $a2, -0x894
/* B10D5C 80099BBC 2407135C */  li    $a3, 4956
/* B10D60 80099BC0 0C031AD5 */  jal   func_800C6B54
/* B10D64 80099BC4 8DC50000 */   lw    $a1, ($t6)
/* B10D68 80099BC8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B10D6C 80099BCC 27BD00B0 */  addiu $sp, $sp, 0xb0
/* B10D70 80099BD0 03E00008 */  jr    $ra
/* B10D74 80099BD4 00000000 */   nop   

/* B10D78 80099BD8 27BDFF48 */  addiu $sp, $sp, -0xb8
/* B10D7C 80099BDC AFBF0014 */  sw    $ra, 0x14($sp)
/* B10D80 80099BE0 AFA400B8 */  sw    $a0, 0xb8($sp)
/* B10D84 80099BE4 8C840000 */  lw    $a0, ($a0)
/* B10D88 80099BE8 0C031A73 */  jal   graph_alloc
/* B10D8C 80099BEC 24050090 */   li    $a1, 144
/* B10D90 80099BF0 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* B10D94 80099BF4 3C068014 */  lui   $a2, %hi(D_8013F780) # $a2, 0x8014
/* B10D98 80099BF8 24C6F780 */  addiu $a2, %lo(D_8013F780) # addiu $a2, $a2, -0x880
/* B10D9C 80099BFC 8DE50000 */  lw    $a1, ($t7)
/* B10DA0 80099C00 AFA200B0 */  sw    $v0, 0xb0($sp)
/* B10DA4 80099C04 27A4009C */  addiu $a0, $sp, 0x9c
/* B10DA8 80099C08 240713CD */  li    $a3, 5069
/* B10DAC 80099C0C 0C031AB1 */  jal   func_800C6AC4
/* B10DB0 80099C10 AFA500AC */   sw    $a1, 0xac($sp)
/* B10DB4 80099C14 8FAC00B8 */  lw    $t4, 0xb8($sp)
/* B10DB8 80099C18 3C010001 */  lui   $at, 1
/* B10DBC 80099C1C 8FA800AC */  lw    $t0, 0xac($sp)
/* B10DC0 80099C20 01813021 */  addu  $a2, $t4, $at
/* B10DC4 80099C24 84D81D30 */  lh    $t8, 0x1d30($a2)
/* B10DC8 80099C28 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* B10DCC 80099C2C 44814000 */  mtc1  $at, $f8
/* B10DD0 80099C30 44982000 */  mtc1  $t8, $f4
/* B10DD4 80099C34 3C014339 */  li    $at, 0x43390000 # 0.000000
/* B10DD8 80099C38 44815000 */  mtc1  $at, $f10
/* B10DDC 80099C3C 468021A0 */  cvt.s.w $f6, $f4
/* B10DE0 80099C40 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B10DE4 80099C44 8FA300B0 */  lw    $v1, 0xb0($sp)
/* B10DE8 80099C48 240F0001 */  li    $t7, 1
/* B10DEC 80099C4C 24590008 */  addiu $t9, $v0, 8
/* B10DF0 80099C50 3C05DB06 */  lui   $a1, (0xDB060020 >> 16) # lui $a1, 0xdb06
/* B10DF4 80099C54 46083003 */  div.s $f0, $f6, $f8
/* B10DF8 80099C58 AD1902D0 */  sw    $t9, 0x2d0($t0)
/* B10DFC 80099C5C 34A50020 */  ori   $a1, (0xDB060020 & 0xFFFF) # ori $a1, $a1, 0x20
/* B10E00 80099C60 AC450000 */  sw    $a1, ($v0)
/* B10E04 80099C64 AC430004 */  sw    $v1, 4($v0)
/* B10E08 80099C68 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B10E0C 80099C6C 3C0BFA00 */  lui   $t3, 0xfa00
/* B10E10 80099C70 240400FF */  li    $a0, 255
/* B10E14 80099C74 244D0008 */  addiu $t5, $v0, 8
/* B10E18 80099C78 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B10E1C 80099C7C AC450000 */  sw    $a1, ($v0)
/* B10E20 80099C80 AC430004 */  sw    $v1, 4($v0)
/* B10E24 80099C84 3C05DB06 */  lui   $a1, (0xDB060024 >> 16) # lui $a1, 0xdb06
/* B10E28 80099C88 00601025 */  move  $v0, $v1
/* B10E2C 80099C8C AC4B0000 */  sw    $t3, ($v0)
/* B10E30 80099C90 3C07DF00 */  lui   $a3, 0xdf00
/* B10E34 80099C94 34A50024 */  ori   $a1, (0xDB060024 & 0xFFFF) # ori $a1, $a1, 0x24
/* B10E38 80099C98 3C09E700 */  lui   $t1, 0xe700
/* B10E3C 80099C9C 3C0AFB00 */  lui   $t2, 0xfb00
/* B10E40 80099CA0 24630008 */  addiu $v1, $v1, 8
/* B10E44 80099CA4 46005402 */  mul.s $f16, $f10, $f0
/* B10E48 80099CA8 444EF800 */  cfc1  $t6, $31
/* B10E4C 80099CAC 44CFF800 */  ctc1  $t7, $31
/* B10E50 80099CB0 00000000 */  nop   
/* B10E54 80099CB4 460084A4 */  cvt.w.s $f18, $f16
/* B10E58 80099CB8 444FF800 */  cfc1  $t7, $31
/* B10E5C 80099CBC 00000000 */  nop   
/* B10E60 80099CC0 31EF0078 */  andi  $t7, $t7, 0x78
/* B10E64 80099CC4 11E00012 */  beqz  $t7, .L80099D10
/* B10E68 80099CC8 3C014F00 */   li    $at, 0x4F000000 # 0.000000
/* B10E6C 80099CCC 44819000 */  mtc1  $at, $f18
/* B10E70 80099CD0 240F0001 */  li    $t7, 1
/* B10E74 80099CD4 46128481 */  sub.s $f18, $f16, $f18
/* B10E78 80099CD8 44CFF800 */  ctc1  $t7, $31
/* B10E7C 80099CDC 00000000 */  nop   
/* B10E80 80099CE0 460094A4 */  cvt.w.s $f18, $f18
/* B10E84 80099CE4 444FF800 */  cfc1  $t7, $31
/* B10E88 80099CE8 00000000 */  nop   
/* B10E8C 80099CEC 31EF0078 */  andi  $t7, $t7, 0x78
/* B10E90 80099CF0 15E00005 */  bnez  $t7, .L80099D08
/* B10E94 80099CF4 00000000 */   nop   
/* B10E98 80099CF8 440F9000 */  mfc1  $t7, $f18
/* B10E9C 80099CFC 3C018000 */  lui   $at, 0x8000
/* B10EA0 80099D00 10000007 */  b     .L80099D20
/* B10EA4 80099D04 01E17825 */   or    $t7, $t7, $at
.L80099D08:
/* B10EA8 80099D08 10000005 */  b     .L80099D20
/* B10EAC 80099D0C 240FFFFF */   li    $t7, -1
.L80099D10:
/* B10EB0 80099D10 440F9000 */  mfc1  $t7, $f18
/* B10EB4 80099D14 00000000 */  nop   
/* B10EB8 80099D18 05E0FFFB */  bltz  $t7, .L80099D08
/* B10EBC 80099D1C 00000000 */   nop   
.L80099D20:
/* B10EC0 80099D20 3C014311 */  li    $at, 0x43110000 # 0.000000
/* B10EC4 80099D24 44CEF800 */  ctc1  $t6, $31
/* B10EC8 80099D28 44812000 */  mtc1  $at, $f4
/* B10ECC 80099D2C 01E0C025 */  move  $t8, $t7
/* B10ED0 80099D30 00986823 */  subu  $t5, $a0, $t8
/* B10ED4 80099D34 46002182 */  mul.s $f6, $f4, $f0
/* B10ED8 80099D38 24180001 */  li    $t8, 1
/* B10EDC 80099D3C 000D7600 */  sll   $t6, $t5, 0x18
/* B10EE0 80099D40 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B10EE4 80099D44 444FF800 */  cfc1  $t7, $31
/* B10EE8 80099D48 44D8F800 */  ctc1  $t8, $31
/* B10EEC 80099D4C 00000000 */  nop   
/* B10EF0 80099D50 46003224 */  cvt.w.s $f8, $f6
/* B10EF4 80099D54 4458F800 */  cfc1  $t8, $31
/* B10EF8 80099D58 00000000 */  nop   
/* B10EFC 80099D5C 33180078 */  andi  $t8, $t8, 0x78
/* B10F00 80099D60 53000013 */  beql  $t8, $zero, .L80099DB0
/* B10F04 80099D64 44184000 */   mfc1  $t8, $f8
/* B10F08 80099D68 44814000 */  mtc1  $at, $f8
/* B10F0C 80099D6C 24180001 */  li    $t8, 1
/* B10F10 80099D70 46083201 */  sub.s $f8, $f6, $f8
/* B10F14 80099D74 44D8F800 */  ctc1  $t8, $31
/* B10F18 80099D78 00000000 */  nop   
/* B10F1C 80099D7C 46004224 */  cvt.w.s $f8, $f8
/* B10F20 80099D80 4458F800 */  cfc1  $t8, $31
/* B10F24 80099D84 00000000 */  nop   
/* B10F28 80099D88 33180078 */  andi  $t8, $t8, 0x78
/* B10F2C 80099D8C 17000005 */  bnez  $t8, .L80099DA4
/* B10F30 80099D90 00000000 */   nop   
/* B10F34 80099D94 44184000 */  mfc1  $t8, $f8
/* B10F38 80099D98 3C018000 */  lui   $at, 0x8000
/* B10F3C 80099D9C 10000007 */  b     .L80099DBC
/* B10F40 80099DA0 0301C025 */   or    $t8, $t8, $at
.L80099DA4:
/* B10F44 80099DA4 10000005 */  b     .L80099DBC
/* B10F48 80099DA8 2418FFFF */   li    $t8, -1
/* B10F4C 80099DAC 44184000 */  mfc1  $t8, $f8
.L80099DB0:
/* B10F50 80099DB0 00000000 */  nop   
/* B10F54 80099DB4 0700FFFB */  bltz  $t8, .L80099DA4
/* B10F58 80099DB8 00000000 */   nop   
.L80099DBC:
/* B10F5C 80099DBC 3C0142D2 */  li    $at, 0x42D20000 # 0.000000
/* B10F60 80099DC0 44CFF800 */  ctc1  $t7, $31
/* B10F64 80099DC4 44815000 */  mtc1  $at, $f10
/* B10F68 80099DC8 0300C825 */  move  $t9, $t8
/* B10F6C 80099DCC 00996823 */  subu  $t5, $a0, $t9
/* B10F70 80099DD0 46005402 */  mul.s $f16, $f10, $f0
/* B10F74 80099DD4 31AF00FF */  andi  $t7, $t5, 0xff
/* B10F78 80099DD8 000FC400 */  sll   $t8, $t7, 0x10
/* B10F7C 80099DDC 240F0001 */  li    $t7, 1
/* B10F80 80099DE0 01D8C825 */  or    $t9, $t6, $t8
/* B10F84 80099DE4 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B10F88 80099DE8 444DF800 */  cfc1  $t5, $31
/* B10F8C 80099DEC 44CFF800 */  ctc1  $t7, $31
/* B10F90 80099DF0 00000000 */  nop   
/* B10F94 80099DF4 460084A4 */  cvt.w.s $f18, $f16
/* B10F98 80099DF8 444FF800 */  cfc1  $t7, $31
/* B10F9C 80099DFC 00000000 */  nop   
/* B10FA0 80099E00 31EF0078 */  andi  $t7, $t7, 0x78
/* B10FA4 80099E04 51E00013 */  beql  $t7, $zero, .L80099E54
/* B10FA8 80099E08 440F9000 */   mfc1  $t7, $f18
/* B10FAC 80099E0C 44819000 */  mtc1  $at, $f18
/* B10FB0 80099E10 240F0001 */  li    $t7, 1
/* B10FB4 80099E14 46128481 */  sub.s $f18, $f16, $f18
/* B10FB8 80099E18 44CFF800 */  ctc1  $t7, $31
/* B10FBC 80099E1C 00000000 */  nop   
/* B10FC0 80099E20 460094A4 */  cvt.w.s $f18, $f18
/* B10FC4 80099E24 444FF800 */  cfc1  $t7, $31
/* B10FC8 80099E28 00000000 */  nop   
/* B10FCC 80099E2C 31EF0078 */  andi  $t7, $t7, 0x78
/* B10FD0 80099E30 15E00005 */  bnez  $t7, .L80099E48
/* B10FD4 80099E34 00000000 */   nop   
/* B10FD8 80099E38 440F9000 */  mfc1  $t7, $f18
/* B10FDC 80099E3C 3C018000 */  lui   $at, 0x8000
/* B10FE0 80099E40 10000007 */  b     .L80099E60
/* B10FE4 80099E44 01E17825 */   or    $t7, $t7, $at
.L80099E48:
/* B10FE8 80099E48 10000005 */  b     .L80099E60
/* B10FEC 80099E4C 240FFFFF */   li    $t7, -1
/* B10FF0 80099E50 440F9000 */  mfc1  $t7, $f18
.L80099E54:
/* B10FF4 80099E54 00000000 */  nop   
/* B10FF8 80099E58 05E0FFFB */  bltz  $t7, .L80099E48
/* B10FFC 80099E5C 00000000 */   nop   
.L80099E60:
/* B11000 80099E60 01E07025 */  move  $t6, $t7
/* B11004 80099E64 44CDF800 */  ctc1  $t5, $31
/* B11008 80099E68 008EC023 */  subu  $t8, $a0, $t6
/* B1100C 80099E6C 330D00FF */  andi  $t5, $t8, 0xff
/* B11010 80099E70 3C0140C0 */  li    $at, 0x40C00000 # 0.000000
/* B11014 80099E74 44812000 */  mtc1  $at, $f4
/* B11018 80099E78 000D7A00 */  sll   $t7, $t5, 8
/* B1101C 80099E7C 032F7025 */  or    $t6, $t9, $t7
/* B11020 80099E80 35D800FF */  ori   $t8, $t6, 0xff
/* B11024 80099E84 46002182 */  mul.s $f6, $f4, $f0
/* B11028 80099E88 AC580004 */  sw    $t8, 4($v0)
/* B1102C 80099E8C 00601025 */  move  $v0, $v1
/* B11030 80099E90 AC470000 */  sw    $a3, ($v0)
/* B11034 80099E94 AC400004 */  sw    $zero, 4($v0)
/* B11038 80099E98 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B1103C 80099E9C 240E0001 */  li    $t6, 1
/* B11040 80099EA0 444FF800 */  cfc1  $t7, $31
/* B11044 80099EA4 244D0008 */  addiu $t5, $v0, 8
/* B11048 80099EA8 44CEF800 */  ctc1  $t6, $31
/* B1104C 80099EAC AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B11050 80099EB0 24630008 */  addiu $v1, $v1, 8
/* B11054 80099EB4 AC430004 */  sw    $v1, 4($v0)
/* B11058 80099EB8 AC450000 */  sw    $a1, ($v0)
/* B1105C 80099EBC 46003224 */  cvt.w.s $f8, $f6
/* B11060 80099EC0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B11064 80099EC4 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B11068 80099EC8 24590008 */  addiu $t9, $v0, 8
/* B1106C 80099ECC 444EF800 */  cfc1  $t6, $31
/* B11070 80099ED0 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B11074 80099ED4 AC450000 */  sw    $a1, ($v0)
/* B11078 80099ED8 AC430004 */  sw    $v1, 4($v0)
/* B1107C 80099EDC 00601025 */  move  $v0, $v1
/* B11080 80099EE0 31CE0078 */  andi  $t6, $t6, 0x78
/* B11084 80099EE4 AC4B0000 */  sw    $t3, ($v0)
/* B11088 80099EE8 11C00012 */  beqz  $t6, .L80099F34
/* B1108C 80099EEC 24630008 */   addiu $v1, $v1, 8
/* B11090 80099EF0 44814000 */  mtc1  $at, $f8
/* B11094 80099EF4 240E0001 */  li    $t6, 1
/* B11098 80099EF8 46083201 */  sub.s $f8, $f6, $f8
/* B1109C 80099EFC 44CEF800 */  ctc1  $t6, $31
/* B110A0 80099F00 00000000 */  nop   
/* B110A4 80099F04 46004224 */  cvt.w.s $f8, $f8
/* B110A8 80099F08 444EF800 */  cfc1  $t6, $31
/* B110AC 80099F0C 00000000 */  nop   
/* B110B0 80099F10 31CE0078 */  andi  $t6, $t6, 0x78
/* B110B4 80099F14 15C00005 */  bnez  $t6, .L80099F2C
/* B110B8 80099F18 00000000 */   nop   
/* B110BC 80099F1C 440E4000 */  mfc1  $t6, $f8
/* B110C0 80099F20 3C018000 */  lui   $at, 0x8000
/* B110C4 80099F24 10000007 */  b     .L80099F44
/* B110C8 80099F28 01C17025 */   or    $t6, $t6, $at
.L80099F2C:
/* B110CC 80099F2C 10000005 */  b     .L80099F44
/* B110D0 80099F30 240EFFFF */   li    $t6, -1
.L80099F34:
/* B110D4 80099F34 440E4000 */  mfc1  $t6, $f8
/* B110D8 80099F38 00000000 */  nop   
/* B110DC 80099F3C 05C0FFFB */  bltz  $t6, .L80099F2C
/* B110E0 80099F40 00000000 */   nop   
.L80099F44:
/* B110E4 80099F44 3C014208 */  li    $at, 0x42080000 # 0.000000
/* B110E8 80099F48 44CFF800 */  ctc1  $t7, $31
/* B110EC 80099F4C 44815000 */  mtc1  $at, $f10
/* B110F0 80099F50 01C0C025 */  move  $t8, $t6
/* B110F4 80099F54 2719004C */  addiu $t9, $t8, 0x4c
/* B110F8 80099F58 46005402 */  mul.s $f16, $f10, $f0
/* B110FC 80099F5C 24180001 */  li    $t8, 1
/* B11100 80099F60 00197E00 */  sll   $t7, $t9, 0x18
/* B11104 80099F64 3C014F00 */  lui   $at, 0x4f00
/* B11108 80099F68 3C05DB06 */  li    $a1, 0xDB060000 # 0.000000
/* B1110C 80099F6C 444EF800 */  cfc1  $t6, $31
/* B11110 80099F70 44D8F800 */  ctc1  $t8, $31
/* B11114 80099F74 00000000 */  nop   
/* B11118 80099F78 460084A4 */  cvt.w.s $f18, $f16
/* B1111C 80099F7C 4458F800 */  cfc1  $t8, $31
/* B11120 80099F80 00000000 */  nop   
/* B11124 80099F84 33180078 */  andi  $t8, $t8, 0x78
/* B11128 80099F88 53000013 */  beql  $t8, $zero, .L80099FD8
/* B1112C 80099F8C 44189000 */   mfc1  $t8, $f18
/* B11130 80099F90 44819000 */  mtc1  $at, $f18
/* B11134 80099F94 24180001 */  li    $t8, 1
/* B11138 80099F98 46128481 */  sub.s $f18, $f16, $f18
/* B1113C 80099F9C 44D8F800 */  ctc1  $t8, $31
/* B11140 80099FA0 00000000 */  nop   
/* B11144 80099FA4 460094A4 */  cvt.w.s $f18, $f18
/* B11148 80099FA8 4458F800 */  cfc1  $t8, $31
/* B1114C 80099FAC 00000000 */  nop   
/* B11150 80099FB0 33180078 */  andi  $t8, $t8, 0x78
/* B11154 80099FB4 17000005 */  bnez  $t8, .L80099FCC
/* B11158 80099FB8 00000000 */   nop   
/* B1115C 80099FBC 44189000 */  mfc1  $t8, $f18
/* B11160 80099FC0 3C018000 */  lui   $at, 0x8000
/* B11164 80099FC4 10000007 */  b     .L80099FE4
/* B11168 80099FC8 0301C025 */   or    $t8, $t8, $at
.L80099FCC:
/* B1116C 80099FCC 10000005 */  b     .L80099FE4
/* B11170 80099FD0 2418FFFF */   li    $t8, -1
/* B11174 80099FD4 44189000 */  mfc1  $t8, $f18
.L80099FD8:
/* B11178 80099FD8 00000000 */  nop   
/* B1117C 80099FDC 0700FFFB */  bltz  $t8, .L80099FCC
/* B11180 80099FE0 00000000 */   nop   
.L80099FE4:
/* B11184 80099FE4 3C014294 */  li    $at, 0x42940000 # 0.000000
/* B11188 80099FE8 44CEF800 */  ctc1  $t6, $31
/* B1118C 80099FEC 44812000 */  mtc1  $at, $f4
/* B11190 80099FF0 03006825 */  move  $t5, $t8
/* B11194 80099FF4 25B9004C */  addiu $t9, $t5, 0x4c
/* B11198 80099FF8 46002182 */  mul.s $f6, $f4, $f0
/* B1119C 80099FFC 332E00FF */  andi  $t6, $t9, 0xff
/* B111A0 8009A000 000EC400 */  sll   $t8, $t6, 0x10
/* B111A4 8009A004 240E0001 */  li    $t6, 1
/* B111A8 8009A008 01F86825 */  or    $t5, $t7, $t8
/* B111AC 8009A00C 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B111B0 8009A010 4459F800 */  cfc1  $t9, $31
/* B111B4 8009A014 44CEF800 */  ctc1  $t6, $31
/* B111B8 8009A018 00000000 */  nop   
/* B111BC 8009A01C 46003224 */  cvt.w.s $f8, $f6
/* B111C0 8009A020 444EF800 */  cfc1  $t6, $31
/* B111C4 8009A024 00000000 */  nop   
/* B111C8 8009A028 31CE0078 */  andi  $t6, $t6, 0x78
/* B111CC 8009A02C 51C00013 */  beql  $t6, $zero, .L8009A07C
/* B111D0 8009A030 440E4000 */   mfc1  $t6, $f8
/* B111D4 8009A034 44814000 */  mtc1  $at, $f8
/* B111D8 8009A038 240E0001 */  li    $t6, 1
/* B111DC 8009A03C 46083201 */  sub.s $f8, $f6, $f8
/* B111E0 8009A040 44CEF800 */  ctc1  $t6, $31
/* B111E4 8009A044 00000000 */  nop   
/* B111E8 8009A048 46004224 */  cvt.w.s $f8, $f8
/* B111EC 8009A04C 444EF800 */  cfc1  $t6, $31
/* B111F0 8009A050 00000000 */  nop   
/* B111F4 8009A054 31CE0078 */  andi  $t6, $t6, 0x78
/* B111F8 8009A058 15C00005 */  bnez  $t6, .L8009A070
/* B111FC 8009A05C 00000000 */   nop   
/* B11200 8009A060 440E4000 */  mfc1  $t6, $f8
/* B11204 8009A064 3C018000 */  lui   $at, 0x8000
/* B11208 8009A068 10000007 */  b     .L8009A088
/* B1120C 8009A06C 01C17025 */   or    $t6, $t6, $at
.L8009A070:
/* B11210 8009A070 10000005 */  b     .L8009A088
/* B11214 8009A074 240EFFFF */   li    $t6, -1
/* B11218 8009A078 440E4000 */  mfc1  $t6, $f8
.L8009A07C:
/* B1121C 8009A07C 00000000 */  nop   
/* B11220 8009A080 05C0FFFB */  bltz  $t6, .L8009A070
/* B11224 8009A084 00000000 */   nop   
.L8009A088:
/* B11228 8009A088 01C07825 */  move  $t7, $t6
/* B1122C 8009A08C 44D9F800 */  ctc1  $t9, $31
/* B11230 8009A090 25F8004C */  addiu $t8, $t7, 0x4c
/* B11234 8009A094 331900FF */  andi  $t9, $t8, 0xff
/* B11238 8009A098 00197200 */  sll   $t6, $t9, 8
/* B1123C 8009A09C 01AE7825 */  or    $t7, $t5, $t6
/* B11240 8009A0A0 35F800FF */  ori   $t8, $t7, 0xff
/* B11244 8009A0A4 AC580004 */  sw    $t8, 4($v0)
/* B11248 8009A0A8 00601025 */  move  $v0, $v1
/* B1124C 8009A0AC AC470000 */  sw    $a3, ($v0)
/* B11250 8009A0B0 AC400004 */  sw    $zero, 4($v0)
/* B11254 8009A0B4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B11258 8009A0B8 24630008 */  addiu $v1, $v1, 8
/* B1125C 8009A0BC 34A50028 */  ori   $a1, $a1, 0x28
/* B11260 8009A0C0 24590008 */  addiu $t9, $v0, 8
/* B11264 8009A0C4 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B11268 8009A0C8 AC430004 */  sw    $v1, 4($v0)
/* B1126C 8009A0CC AC450000 */  sw    $a1, ($v0)
/* B11270 8009A0D0 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B11274 8009A0D4 3C014326 */  li    $at, 0x43260000 # 0.000000
/* B11278 8009A0D8 44815000 */  mtc1  $at, $f10
/* B1127C 8009A0DC 244D0008 */  addiu $t5, $v0, 8
/* B11280 8009A0E0 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B11284 8009A0E4 AC430004 */  sw    $v1, 4($v0)
/* B11288 8009A0E8 AC450000 */  sw    $a1, ($v0)
/* B1128C 8009A0EC 00601025 */  move  $v0, $v1
/* B11290 8009A0F0 AC490000 */  sw    $t1, ($v0)
/* B11294 8009A0F4 AC400004 */  sw    $zero, 4($v0)
/* B11298 8009A0F8 24630008 */  addiu $v1, $v1, 8
/* B1129C 8009A0FC 00601025 */  move  $v0, $v1
/* B112A0 8009A100 AC4A0000 */  sw    $t2, ($v0)
/* B112A4 8009A104 84CE1D30 */  lh    $t6, 0x1d30($a2)
/* B112A8 8009A108 24630008 */  addiu $v1, $v1, 8
/* B112AC 8009A10C 3C05DB06 */  lui   $a1, (0xDB06002C >> 16) # lui $a1, 0xdb06
/* B112B0 8009A110 31CF00FF */  andi  $t7, $t6, 0xff
/* B112B4 8009A114 AC4F0004 */  sw    $t7, 4($v0)
/* B112B8 8009A118 00601025 */  move  $v0, $v1
/* B112BC 8009A11C AC470000 */  sw    $a3, ($v0)
/* B112C0 8009A120 AC400004 */  sw    $zero, 4($v0)
/* B112C4 8009A124 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B112C8 8009A128 24630008 */  addiu $v1, $v1, 8
/* B112CC 8009A12C 34A5002C */  ori   $a1, (0xDB06002C & 0xFFFF) # ori $a1, $a1, 0x2c
/* B112D0 8009A130 24580008 */  addiu $t8, $v0, 8
/* B112D4 8009A134 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B112D8 8009A138 AC430004 */  sw    $v1, 4($v0)
/* B112DC 8009A13C AC450000 */  sw    $a1, ($v0)
/* B112E0 8009A140 46005402 */  mul.s $f16, $f10, $f0
/* B112E4 8009A144 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B112E8 8009A148 00602025 */  move  $a0, $v1
/* B112EC 8009A14C 3C014F00 */  lui   $at, 0x4f00
/* B112F0 8009A150 24590008 */  addiu $t9, $v0, 8
/* B112F4 8009A154 AD1902D0 */  sw    $t9, 0x2d0($t0)
/* B112F8 8009A158 AC430004 */  sw    $v1, 4($v0)
/* B112FC 8009A15C AC450000 */  sw    $a1, ($v0)
/* B11300 8009A160 24020001 */  li    $v0, 1
/* B11304 8009A164 444DF800 */  cfc1  $t5, $31
/* B11308 8009A168 44C2F800 */  ctc1  $v0, $31
/* B1130C 8009A16C 3C05DB06 */  li    $a1, 0xDB060000 # 0.000000
/* B11310 8009A170 AC8B0000 */  sw    $t3, ($a0)
/* B11314 8009A174 460084A4 */  cvt.w.s $f18, $f16
/* B11318 8009A178 24630008 */  addiu $v1, $v1, 8
/* B1131C 8009A17C 34A50030 */  ori   $a1, (0xDB060030 & 0xFFFF) # ori $a1, $a1, 0x30
/* B11320 8009A180 4442F800 */  cfc1  $v0, $31
/* B11324 8009A184 00000000 */  nop   
/* B11328 8009A188 30420078 */  andi  $v0, $v0, 0x78
/* B1132C 8009A18C 50400013 */  beql  $v0, $zero, .L8009A1DC
/* B11330 8009A190 44029000 */   mfc1  $v0, $f18
/* B11334 8009A194 44819000 */  mtc1  $at, $f18
/* B11338 8009A198 24020001 */  li    $v0, 1
/* B1133C 8009A19C 46128481 */  sub.s $f18, $f16, $f18
/* B11340 8009A1A0 44C2F800 */  ctc1  $v0, $31
/* B11344 8009A1A4 00000000 */  nop   
/* B11348 8009A1A8 460094A4 */  cvt.w.s $f18, $f18
/* B1134C 8009A1AC 4442F800 */  cfc1  $v0, $31
/* B11350 8009A1B0 00000000 */  nop   
/* B11354 8009A1B4 30420078 */  andi  $v0, $v0, 0x78
/* B11358 8009A1B8 14400005 */  bnez  $v0, .L8009A1D0
/* B1135C 8009A1BC 00000000 */   nop   
/* B11360 8009A1C0 44029000 */  mfc1  $v0, $f18
/* B11364 8009A1C4 3C018000 */  lui   $at, 0x8000
/* B11368 8009A1C8 10000007 */  b     .L8009A1E8
/* B1136C 8009A1CC 00411025 */   or    $v0, $v0, $at
.L8009A1D0:
/* B11370 8009A1D0 10000005 */  b     .L8009A1E8
/* B11374 8009A1D4 2402FFFF */   li    $v0, -1
/* B11378 8009A1D8 44029000 */  mfc1  $v0, $f18
.L8009A1DC:
/* B1137C 8009A1DC 00000000 */  nop   
/* B11380 8009A1E0 0440FFFB */  bltz  $v0, .L8009A1D0
/* B11384 8009A1E4 00000000 */   nop   
.L8009A1E8:
/* B11388 8009A1E8 24420059 */  addiu $v0, $v0, 0x59
/* B1138C 8009A1EC 304200FF */  andi  $v0, $v0, 0xff
/* B11390 8009A1F0 00027600 */  sll   $t6, $v0, 0x18
/* B11394 8009A1F4 00027C00 */  sll   $t7, $v0, 0x10
/* B11398 8009A1F8 44CDF800 */  ctc1  $t5, $31
/* B1139C 8009A1FC 01CFC025 */  or    $t8, $t6, $t7
/* B113A0 8009A200 0002CA00 */  sll   $t9, $v0, 8
/* B113A4 8009A204 03196825 */  or    $t5, $t8, $t9
/* B113A8 8009A208 35AE00FF */  ori   $t6, $t5, 0xff
/* B113AC 8009A20C 00601025 */  move  $v0, $v1
/* B113B0 8009A210 AC8E0004 */  sw    $t6, 4($a0)
/* B113B4 8009A214 AC400004 */  sw    $zero, 4($v0)
/* B113B8 8009A218 AC490000 */  sw    $t1, ($v0)
/* B113BC 8009A21C 24630008 */  addiu $v1, $v1, 8
/* B113C0 8009A220 00601025 */  move  $v0, $v1
/* B113C4 8009A224 AC4A0000 */  sw    $t2, ($v0)
/* B113C8 8009A228 84CF1D30 */  lh    $t7, 0x1d30($a2)
/* B113CC 8009A22C 24630008 */  addiu $v1, $v1, 8
/* B113D0 8009A230 3C014333 */  li    $at, 0x43330000 # 0.000000
/* B113D4 8009A234 31F800FF */  andi  $t8, $t7, 0xff
/* B113D8 8009A238 AC580004 */  sw    $t8, 4($v0)
/* B113DC 8009A23C 00601025 */  move  $v0, $v1
/* B113E0 8009A240 AC470000 */  sw    $a3, ($v0)
/* B113E4 8009A244 AC400004 */  sw    $zero, 4($v0)
/* B113E8 8009A248 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B113EC 8009A24C 44812000 */  mtc1  $at, $f4
/* B113F0 8009A250 24630008 */  addiu $v1, $v1, 8
/* B113F4 8009A254 24590008 */  addiu $t9, $v0, 8
/* B113F8 8009A258 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B113FC 8009A25C AC430004 */  sw    $v1, 4($v0)
/* B11400 8009A260 AC450000 */  sw    $a1, ($v0)
/* B11404 8009A264 46002182 */  mul.s $f6, $f4, $f0
/* B11408 8009A268 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B1140C 8009A26C 00602025 */  move  $a0, $v1
/* B11410 8009A270 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B11414 8009A274 244D0008 */  addiu $t5, $v0, 8
/* B11418 8009A278 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B1141C 8009A27C AC430004 */  sw    $v1, 4($v0)
/* B11420 8009A280 AC450000 */  sw    $a1, ($v0)
/* B11424 8009A284 24020001 */  li    $v0, 1
/* B11428 8009A288 444EF800 */  cfc1  $t6, $31
/* B1142C 8009A28C 44C2F800 */  ctc1  $v0, $31
/* B11430 8009A290 AC8B0000 */  sw    $t3, ($a0)
/* B11434 8009A294 24630008 */  addiu $v1, $v1, 8
/* B11438 8009A298 46003224 */  cvt.w.s $f8, $f6
/* B1143C 8009A29C 4442F800 */  cfc1  $v0, $31
/* B11440 8009A2A0 00000000 */  nop   
/* B11444 8009A2A4 30420078 */  andi  $v0, $v0, 0x78
/* B11448 8009A2A8 50400013 */  beql  $v0, $zero, .L8009A2F8
/* B1144C 8009A2AC 44024000 */   mfc1  $v0, $f8
/* B11450 8009A2B0 44814000 */  mtc1  $at, $f8
/* B11454 8009A2B4 24020001 */  li    $v0, 1
/* B11458 8009A2B8 46083201 */  sub.s $f8, $f6, $f8
/* B1145C 8009A2BC 44C2F800 */  ctc1  $v0, $31
/* B11460 8009A2C0 00000000 */  nop   
/* B11464 8009A2C4 46004224 */  cvt.w.s $f8, $f8
/* B11468 8009A2C8 4442F800 */  cfc1  $v0, $31
/* B1146C 8009A2CC 00000000 */  nop   
/* B11470 8009A2D0 30420078 */  andi  $v0, $v0, 0x78
/* B11474 8009A2D4 14400005 */  bnez  $v0, .L8009A2EC
/* B11478 8009A2D8 00000000 */   nop   
/* B1147C 8009A2DC 44024000 */  mfc1  $v0, $f8
/* B11480 8009A2E0 3C018000 */  lui   $at, 0x8000
/* B11484 8009A2E4 10000007 */  b     .L8009A304
/* B11488 8009A2E8 00411025 */   or    $v0, $v0, $at
.L8009A2EC:
/* B1148C 8009A2EC 10000005 */  b     .L8009A304
/* B11490 8009A2F0 2402FFFF */   li    $v0, -1
/* B11494 8009A2F4 44024000 */  mfc1  $v0, $f8
.L8009A2F8:
/* B11498 8009A2F8 00000000 */  nop   
/* B1149C 8009A2FC 0440FFFB */  bltz  $v0, .L8009A2EC
/* B114A0 8009A300 00000000 */   nop   
.L8009A304:
/* B114A4 8009A304 244200FF */  addiu $v0, $v0, 0xff
/* B114A8 8009A308 304200FF */  andi  $v0, $v0, 0xff
/* B114AC 8009A30C 00027E00 */  sll   $t7, $v0, 0x18
/* B114B0 8009A310 0002C400 */  sll   $t8, $v0, 0x10
/* B114B4 8009A314 01F8C825 */  or    $t9, $t7, $t8
/* B114B8 8009A318 00026A00 */  sll   $t5, $v0, 8
/* B114BC 8009A31C 44CEF800 */  ctc1  $t6, $31
/* B114C0 8009A320 032D7025 */  or    $t6, $t9, $t5
/* B114C4 8009A324 35CF00FF */  ori   $t7, $t6, 0xff
/* B114C8 8009A328 00601025 */  move  $v0, $v1
/* B114CC 8009A32C AC8F0004 */  sw    $t7, 4($a0)
/* B114D0 8009A330 AC400004 */  sw    $zero, 4($v0)
/* B114D4 8009A334 AC490000 */  sw    $t1, ($v0)
/* B114D8 8009A338 24630008 */  addiu $v1, $v1, 8
/* B114DC 8009A33C 00601025 */  move  $v0, $v1
/* B114E0 8009A340 AC4A0000 */  sw    $t2, ($v0)
/* B114E4 8009A344 84D81D30 */  lh    $t8, 0x1d30($a2)
/* B114E8 8009A348 24630008 */  addiu $v1, $v1, 8
/* B114EC 8009A34C 3C05DB06 */  lui   $a1, (0xDB060034 >> 16) # lui $a1, 0xdb06
/* B114F0 8009A350 331900FF */  andi  $t9, $t8, 0xff
/* B114F4 8009A354 AC590004 */  sw    $t9, 4($v0)
/* B114F8 8009A358 00601025 */  move  $v0, $v1
/* B114FC 8009A35C AC470000 */  sw    $a3, ($v0)
/* B11500 8009A360 AC400004 */  sw    $zero, 4($v0)
/* B11504 8009A364 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B11508 8009A368 24630008 */  addiu $v1, $v1, 8
/* B1150C 8009A36C 34A50034 */  ori   $a1, (0xDB060034 & 0xFFFF) # ori $a1, $a1, 0x34
/* B11510 8009A370 244D0008 */  addiu $t5, $v0, 8
/* B11514 8009A374 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B11518 8009A378 AC430004 */  sw    $v1, 4($v0)
/* B1151C 8009A37C AC450000 */  sw    $a1, ($v0)
/* B11520 8009A380 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B11524 8009A384 27A4009C */  addiu $a0, $sp, 0x9c
/* B11528 8009A388 244E0008 */  addiu $t6, $v0, 8
/* B1152C 8009A38C AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B11530 8009A390 AC430004 */  sw    $v1, 4($v0)
/* B11534 8009A394 AC450000 */  sw    $a1, ($v0)
/* B11538 8009A398 00601025 */  move  $v0, $v1
/* B1153C 8009A39C AC490000 */  sw    $t1, ($v0)
/* B11540 8009A3A0 AC400004 */  sw    $zero, 4($v0)
/* B11544 8009A3A4 24630008 */  addiu $v1, $v1, 8
/* B11548 8009A3A8 00601025 */  move  $v0, $v1
/* B1154C 8009A3AC AC4A0000 */  sw    $t2, ($v0)
/* B11550 8009A3B0 84CF1D32 */  lh    $t7, 0x1d32($a2)
/* B11554 8009A3B4 3C068014 */  lui   $a2, %hi(D_8013F794) # $a2, 0x8014
/* B11558 8009A3B8 24630008 */  addiu $v1, $v1, 8
/* B1155C 8009A3BC 31F800FF */  andi  $t8, $t7, 0xff
/* B11560 8009A3C0 AC580004 */  sw    $t8, 4($v0)
/* B11564 8009A3C4 AC600004 */  sw    $zero, 4($v1)
/* B11568 8009A3C8 AC670000 */  sw    $a3, ($v1)
/* B1156C 8009A3CC 8D850000 */  lw    $a1, ($t4)
/* B11570 8009A3D0 24071419 */  li    $a3, 5145
/* B11574 8009A3D4 0C031AD5 */  jal   func_800C6B54
/* B11578 8009A3D8 24C6F794 */   addiu $a2, %lo(D_8013F794) # addiu $a2, $a2, -0x86c
/* B1157C 8009A3DC 3C198016 */  lui   $t9, %hi(D_8015F9C0) # $t9, 0x8016
/* B11580 8009A3E0 8F39F9C0 */  lw    $t9, %lo(D_8015F9C0)($t9)
/* B11584 8009A3E4 24010005 */  li    $at, 5
/* B11588 8009A3E8 3C028016 */  lui   $v0, %hi(D_8015FCF8) # $v0, 0x8016
/* B1158C 8009A3EC 17210017 */  bne   $t9, $at, .L8009A44C
/* B11590 8009A3F0 2442FCF8 */   addiu $v0, %lo(D_8015FCF8) # addiu $v0, $v0, -0x308
/* B11594 8009A3F4 240D0001 */  li    $t5, 1
/* B11598 8009A3F8 3C018016 */  lui   $at, %hi(D_8015FCF0) # $at, 0x8016
/* B1159C 8009A3FC A02DFCF0 */  sb    $t5, %lo(D_8015FCF0)($at)
/* B115A0 8009A400 3C01C1A0 */  li    $at, 0xC1A00000 # 0.000000
/* B115A4 8009A404 44815000 */  mtc1  $at, $f10
/* B115A8 8009A408 3C018014 */  lui   $at, 0x8014
/* B115AC 8009A40C 240E000A */  li    $t6, 10
/* B115B0 8009A410 E44A0000 */  swc1  $f10, ($v0)
/* B115B4 8009A414 C430FF14 */  lwc1  $f16, -0xec($at)
/* B115B8 8009A418 3C01C42B */  li    $at, 0xC42B0000 # 0.000000
/* B115BC 8009A41C 44819000 */  mtc1  $at, $f18
/* B115C0 8009A420 3C018016 */  lui   $at, %hi(D_8015FD06) # $at, 0x8016
/* B115C4 8009A424 E4500004 */  swc1  $f16, 4($v0)
/* B115C8 8009A428 E4520008 */  swc1  $f18, 8($v0)
/* B115CC 8009A42C A42EFD06 */  sh    $t6, %lo(D_8015FD06)($at)
/* B115D0 8009A430 3C014100 */  li    $at, 0x41000000 # 0.000000
/* B115D4 8009A434 44812000 */  mtc1  $at, $f4
/* B115D8 8009A438 3C018016 */  lui   $at, 0x8016
/* B115DC 8009A43C 240F00C8 */  li    $t7, 200
/* B115E0 8009A440 E424FD08 */  swc1  $f4, -0x2f8($at)
/* B115E4 8009A444 3C018016 */  lui   $at, %hi(D_8015FD0C) # $at, 0x8016
/* B115E8 8009A448 A42FFD0C */  sh    $t7, %lo(D_8015FD0C)($at)
.L8009A44C:
/* B115EC 8009A44C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B115F0 8009A450 27BD00B8 */  addiu $sp, $sp, 0xb8
/* B115F4 8009A454 03E00008 */  jr    $ra
/* B115F8 8009A458 00000000 */   nop   

/* B115FC 8009A45C 27BDFF70 */  addiu $sp, $sp, -0x90
/* B11600 8009A460 AFBF003C */  sw    $ra, 0x3c($sp)
/* B11604 8009A464 AFB10038 */  sw    $s1, 0x38($sp)
/* B11608 8009A468 AFB00034 */  sw    $s0, 0x34($sp)
/* B1160C 8009A46C 8C850000 */  lw    $a1, ($a0)
/* B11610 8009A470 00808825 */  move  $s1, $a0
/* B11614 8009A474 3C068014 */  lui   $a2, %hi(D_8013F7A8) # $a2, 0x8014
/* B11618 8009A478 24C6F7A8 */  addiu $a2, %lo(D_8013F7A8) # addiu $a2, $a2, -0x858
/* B1161C 8009A47C 27A40078 */  addiu $a0, $sp, 0x78
/* B11620 8009A480 24071433 */  li    $a3, 5171
/* B11624 8009A484 0C031AB1 */  jal   func_800C6AC4
/* B11628 8009A488 00A08025 */   move  $s0, $a1
/* B1162C 8009A48C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11630 8009A490 3C090001 */  lui   $t1, 1
/* B11634 8009A494 01314821 */  addu  $t1, $t1, $s1
/* B11638 8009A498 8D281DE4 */  lw    $t0, 0x1de4($t1)
/* B1163C 8009A49C 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B11640 8009A4A0 244E0008 */  addiu $t6, $v0, 8
/* B11644 8009A4A4 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B11648 8009A4A8 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B1164C 8009A4AC AC4F0000 */  sw    $t7, ($v0)
/* B11650 8009A4B0 8E240000 */  lw    $a0, ($s1)
/* B11654 8009A4B4 24180010 */  li    $t8, 16
/* B11658 8009A4B8 AFB80010 */  sw    $t8, 0x10($sp)
/* B1165C 8009A4BC 00002825 */  move  $a1, $zero
/* B11660 8009A4C0 24070100 */  li    $a3, 256
/* B11664 8009A4C4 AFA20074 */  sw    $v0, 0x74($sp)
/* B11668 8009A4C8 AFA8008C */  sw    $t0, 0x8c($sp)
/* B1166C 8009A4CC AFA8004C */  sw    $t0, 0x4c($sp)
/* B11670 8009A4D0 0C0253A7 */  jal   func_80094E9C
/* B11674 8009A4D4 3106003F */   andi  $a2, $t0, 0x3f
/* B11678 8009A4D8 8FA30074 */  lw    $v1, 0x74($sp)
/* B1167C 8009A4DC 8FA8004C */  lw    $t0, 0x4c($sp)
/* B11680 8009A4E0 3C0ADB06 */  lui   $t2, (0xDB060024 >> 16) # lui $t2, 0xdb06
/* B11684 8009A4E4 AC620004 */  sw    $v0, 4($v1)
/* B11688 8009A4E8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1168C 8009A4EC 354A0024 */  ori   $t2, (0xDB060024 & 0xFFFF) # ori $t2, $t2, 0x24
/* B11690 8009A4F0 240B007F */  li    $t3, 127
/* B11694 8009A4F4 24590008 */  addiu $t9, $v0, 8
/* B11698 8009A4F8 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B1169C 8009A4FC AC4A0000 */  sw    $t2, ($v0)
/* B116A0 8009A500 8E240000 */  lw    $a0, ($s1)
/* B116A4 8009A504 8FA3008C */  lw    $v1, 0x8c($sp)
/* B116A8 8009A508 240C0020 */  li    $t4, 32
/* B116AC 8009A50C 240D0020 */  li    $t5, 32
/* B116B0 8009A510 240E0001 */  li    $t6, 1
/* B116B4 8009A514 240F0020 */  li    $t7, 32
/* B116B8 8009A518 24180020 */  li    $t8, 32
/* B116BC 8009A51C 3107007F */  andi  $a3, $t0, 0x7f
/* B116C0 8009A520 3063007F */  andi  $v1, $v1, 0x7f
/* B116C4 8009A524 01633023 */  subu  $a2, $t3, $v1
/* B116C8 8009A528 AFA3001C */  sw    $v1, 0x1c($sp)
/* B116CC 8009A52C AFA70020 */  sw    $a3, 0x20($sp)
/* B116D0 8009A530 AFA70048 */  sw    $a3, 0x48($sp)
/* B116D4 8009A534 AFB80028 */  sw    $t8, 0x28($sp)
/* B116D8 8009A538 AFAF0024 */  sw    $t7, 0x24($sp)
/* B116DC 8009A53C AFAE0018 */  sw    $t6, 0x18($sp)
/* B116E0 8009A540 AFAD0014 */  sw    $t5, 0x14($sp)
/* B116E4 8009A544 AFAC0010 */  sw    $t4, 0x10($sp)
/* B116E8 8009A548 00002825 */  move  $a1, $zero
/* B116EC 8009A54C 0C0253D0 */  jal   func_80094F40
/* B116F0 8009A550 AFA20070 */   sw    $v0, 0x70($sp)
/* B116F4 8009A554 8FA90070 */  lw    $t1, 0x70($sp)
/* B116F8 8009A558 3C0ADB06 */  lui   $t2, (0xDB060028 >> 16) # lui $t2, 0xdb06
/* B116FC 8009A55C 354A0028 */  ori   $t2, (0xDB060028 & 0xFFFF) # ori $t2, $t2, 0x28
/* B11700 8009A560 AD220004 */  sw    $v0, 4($t1)
/* B11704 8009A564 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B11708 8009A568 240F007F */  li    $t7, 127
/* B1170C 8009A56C 240B0020 */  li    $t3, 32
/* B11710 8009A570 24590008 */  addiu $t9, $v0, 8
/* B11714 8009A574 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B11718 8009A578 AC4A0000 */  sw    $t2, ($v0)
/* B1171C 8009A57C 8E240000 */  lw    $a0, ($s1)
/* B11720 8009A580 8FAE0048 */  lw    $t6, 0x48($sp)
/* B11724 8009A584 240A0020 */  li    $t2, 32
/* B11728 8009A588 24190020 */  li    $t9, 32
/* B1172C 8009A58C 240C0020 */  li    $t4, 32
/* B11730 8009A590 240D0001 */  li    $t5, 1
/* B11734 8009A594 01EEC023 */  subu  $t8, $t7, $t6
/* B11738 8009A598 AFB80020 */  sw    $t8, 0x20($sp)
/* B1173C 8009A59C AFAD0018 */  sw    $t5, 0x18($sp)
/* B11740 8009A5A0 AFAC0014 */  sw    $t4, 0x14($sp)
/* B11744 8009A5A4 AFB90024 */  sw    $t9, 0x24($sp)
/* B11748 8009A5A8 AFAA0028 */  sw    $t2, 0x28($sp)
/* B1174C 8009A5AC AFA0001C */  sw    $zero, 0x1c($sp)
/* B11750 8009A5B0 AFAB0010 */  sw    $t3, 0x10($sp)
/* B11754 8009A5B4 00002825 */  move  $a1, $zero
/* B11758 8009A5B8 00003025 */  move  $a2, $zero
/* B1175C 8009A5BC 00003825 */  move  $a3, $zero
/* B11760 8009A5C0 0C0253D0 */  jal   func_80094F40
/* B11764 8009A5C4 AFA2006C */   sw    $v0, 0x6c($sp)
/* B11768 8009A5C8 8FA3006C */  lw    $v1, 0x6c($sp)
/* B1176C 8009A5CC 3C0CDB06 */  lui   $t4, (0xDB06002C >> 16) # lui $t4, 0xdb06
/* B11770 8009A5D0 358C002C */  ori   $t4, (0xDB06002C & 0xFFFF) # ori $t4, $t4, 0x2c
/* B11774 8009A5D4 AC620004 */  sw    $v0, 4($v1)
/* B11778 8009A5D8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1177C 8009A5DC 240D0020 */  li    $t5, 32
/* B11780 8009A5E0 00002825 */  move  $a1, $zero
/* B11784 8009A5E4 244B0008 */  addiu $t3, $v0, 8
/* B11788 8009A5E8 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B1178C 8009A5EC AC4C0000 */  sw    $t4, ($v0)
/* B11790 8009A5F0 8E240000 */  lw    $a0, ($s1)
/* B11794 8009A5F4 AFAD0010 */  sw    $t5, 0x10($sp)
/* B11798 8009A5F8 8FA60048 */  lw    $a2, 0x48($sp)
/* B1179C 8009A5FC 24070020 */  li    $a3, 32
/* B117A0 8009A600 0C0253A7 */  jal   func_80094E9C
/* B117A4 8009A604 AFA20068 */   sw    $v0, 0x68($sp)
/* B117A8 8009A608 8FA30068 */  lw    $v1, 0x68($sp)
/* B117AC 8009A60C 3C0EDB06 */  lui   $t6, (0xDB060030 >> 16) # lui $t6, 0xdb06
/* B117B0 8009A610 35CE0030 */  ori   $t6, (0xDB060030 & 0xFFFF) # ori $t6, $t6, 0x30
/* B117B4 8009A614 AC620004 */  sw    $v0, 4($v1)
/* B117B8 8009A618 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B117BC 8009A61C 24190008 */  li    $t9, 8
/* B117C0 8009A620 240A0200 */  li    $t2, 512
/* B117C4 8009A624 244F0008 */  addiu $t7, $v0, 8
/* B117C8 8009A628 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B117CC 8009A62C AC4E0000 */  sw    $t6, ($v0)
/* B117D0 8009A630 8FB8008C */  lw    $t8, 0x8c($sp)
/* B117D4 8009A634 8E240000 */  lw    $a0, ($s1)
/* B117D8 8009A638 240E0200 */  li    $t6, 512
/* B117DC 8009A63C 00183880 */  sll   $a3, $t8, 2
/* B117E0 8009A640 00F83823 */  subu  $a3, $a3, $t8
/* B117E4 8009A644 00186100 */  sll   $t4, $t8, 4
/* B117E8 8009A648 000738C0 */  sll   $a3, $a3, 3
/* B117EC 8009A64C 01986023 */  subu  $t4, $t4, $t8
/* B117F0 8009A650 000C6080 */  sll   $t4, $t4, 2
/* B117F4 8009A654 00F83821 */  addu  $a3, $a3, $t8
/* B117F8 8009A658 00073840 */  sll   $a3, $a3, 1
/* B117FC 8009A65C 318D07FF */  andi  $t5, $t4, 0x7ff
/* B11800 8009A660 240F0008 */  li    $t7, 8
/* B11804 8009A664 240B0001 */  li    $t3, 1
/* B11808 8009A668 AFAB0018 */  sw    $t3, 0x18($sp)
/* B1180C 8009A66C AFAF0024 */  sw    $t7, 0x24($sp)
/* B11810 8009A670 AFAD0020 */  sw    $t5, 0x20($sp)
/* B11814 8009A674 30E707FF */  andi  $a3, $a3, 0x7ff
/* B11818 8009A678 AFAE0028 */  sw    $t6, 0x28($sp)
/* B1181C 8009A67C AFA0001C */  sw    $zero, 0x1c($sp)
/* B11820 8009A680 AFAA0014 */  sw    $t2, 0x14($sp)
/* B11824 8009A684 AFB90010 */  sw    $t9, 0x10($sp)
/* B11828 8009A688 00002825 */  move  $a1, $zero
/* B1182C 8009A68C 00003025 */  move  $a2, $zero
/* B11830 8009A690 0C0253D0 */  jal   func_80094F40
/* B11834 8009A694 AFA20064 */   sw    $v0, 0x64($sp)
/* B11838 8009A698 8FA30064 */  lw    $v1, 0x64($sp)
/* B1183C 8009A69C 3C0ADB06 */  lui   $t2, (0xDB060034 >> 16) # lui $t2, 0xdb06
/* B11840 8009A6A0 354A0034 */  ori   $t2, (0xDB060034 & 0xFFFF) # ori $t2, $t2, 0x34
/* B11844 8009A6A4 AC620004 */  sw    $v0, 4($v1)
/* B11848 8009A6A8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1184C 8009A6AC 240B0020 */  li    $t3, 32
/* B11850 8009A6B0 24180040 */  li    $t8, 64
/* B11854 8009A6B4 24590008 */  addiu $t9, $v0, 8
/* B11858 8009A6B8 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B1185C 8009A6BC AC4A0000 */  sw    $t2, ($v0)
/* B11860 8009A6C0 8E240000 */  lw    $a0, ($s1)
/* B11864 8009A6C4 8FAD0048 */  lw    $t5, 0x48($sp)
/* B11868 8009A6C8 240C0001 */  li    $t4, 1
/* B1186C 8009A6CC 240F0020 */  li    $t7, 32
/* B11870 8009A6D0 240E0020 */  li    $t6, 32
/* B11874 8009A6D4 AFAE0028 */  sw    $t6, 0x28($sp)
/* B11878 8009A6D8 AFAF0024 */  sw    $t7, 0x24($sp)
/* B1187C 8009A6DC AFAC0018 */  sw    $t4, 0x18($sp)
/* B11880 8009A6E0 AFA0001C */  sw    $zero, 0x1c($sp)
/* B11884 8009A6E4 AFB80014 */  sw    $t8, 0x14($sp)
/* B11888 8009A6E8 AFAB0010 */  sw    $t3, 0x10($sp)
/* B1188C 8009A6EC 00002825 */  move  $a1, $zero
/* B11890 8009A6F0 00003025 */  move  $a2, $zero
/* B11894 8009A6F4 00003825 */  move  $a3, $zero
/* B11898 8009A6F8 AFA20060 */  sw    $v0, 0x60($sp)
/* B1189C 8009A6FC 0C0253D0 */  jal   func_80094F40
/* B118A0 8009A700 AFAD0020 */   sw    $t5, 0x20($sp)
/* B118A4 8009A704 8FA30060 */  lw    $v1, 0x60($sp)
/* B118A8 8009A708 3C04E700 */  lui   $a0, 0xe700
/* B118AC 8009A70C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B118B0 8009A710 AC620004 */  sw    $v0, 4($v1)
/* B118B4 8009A714 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B118B8 8009A718 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B118BC 8009A71C 3C05FB00 */  lui   $a1, 0xfb00
/* B118C0 8009A720 24590008 */  addiu $t9, $v0, 8
/* B118C4 8009A724 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B118C8 8009A728 AC400004 */  sw    $zero, 4($v0)
/* B118CC 8009A72C AC440000 */  sw    $a0, ($v0)
/* B118D0 8009A730 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B118D4 8009A734 2407145C */  li    $a3, 5212
/* B118D8 8009A738 244A0008 */  addiu $t2, $v0, 8
/* B118DC 8009A73C AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* B118E0 8009A740 AC460004 */  sw    $a2, 4($v0)
/* B118E4 8009A744 AC450000 */  sw    $a1, ($v0)
/* B118E8 8009A748 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B118EC 8009A74C 244B0008 */  addiu $t3, $v0, 8
/* B118F0 8009A750 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B118F4 8009A754 AC400004 */  sw    $zero, 4($v0)
/* B118F8 8009A758 AC440000 */  sw    $a0, ($v0)
/* B118FC 8009A75C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B11900 8009A760 27A40078 */  addiu $a0, $sp, 0x78
/* B11904 8009A764 24580008 */  addiu $t8, $v0, 8
/* B11908 8009A768 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B1190C 8009A76C AC460004 */  sw    $a2, 4($v0)
/* B11910 8009A770 3C068014 */  lui   $a2, %hi(D_8013F7BC) # $a2, 0x8014
/* B11914 8009A774 AC450000 */  sw    $a1, ($v0)
/* B11918 8009A778 8E250000 */  lw    $a1, ($s1)
/* B1191C 8009A77C 0C031AD5 */  jal   func_800C6B54
/* B11920 8009A780 24C6F7BC */   addiu $a2, %lo(D_8013F7BC) # addiu $a2, $a2, -0x844
/* B11924 8009A784 8FBF003C */  lw    $ra, 0x3c($sp)
/* B11928 8009A788 8FB00034 */  lw    $s0, 0x34($sp)
/* B1192C 8009A78C 8FB10038 */  lw    $s1, 0x38($sp)
/* B11930 8009A790 03E00008 */  jr    $ra
/* B11934 8009A794 27BD0090 */   addiu $sp, $sp, 0x90

/* B11938 8009A798 27BDFF78 */  addiu $sp, $sp, -0x88
/* B1193C 8009A79C AFBF003C */  sw    $ra, 0x3c($sp)
/* B11940 8009A7A0 AFB00038 */  sw    $s0, 0x38($sp)
/* B11944 8009A7A4 AFA40088 */  sw    $a0, 0x88($sp)
/* B11948 8009A7A8 8C850000 */  lw    $a1, ($a0)
/* B1194C 8009A7AC 3C068014 */  lui   $a2, %hi(D_8013F7D0) # $a2, 0x8014
/* B11950 8009A7B0 24C6F7D0 */  addiu $a2, %lo(D_8013F7D0) # addiu $a2, $a2, -0x830
/* B11954 8009A7B4 27A40070 */  addiu $a0, $sp, 0x70
/* B11958 8009A7B8 2407146A */  li    $a3, 5226
/* B1195C 8009A7BC 0C031AB1 */  jal   func_800C6AC4
/* B11960 8009A7C0 00A08025 */   move  $s0, $a1
/* B11964 8009A7C4 8FA80088 */  lw    $t0, 0x88($sp)
/* B11968 8009A7C8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1196C 8009A7CC 3C0A0001 */  lui   $t2, 1
/* B11970 8009A7D0 01485021 */  addu  $t2, $t2, $t0
/* B11974 8009A7D4 8D4A1DE4 */  lw    $t2, 0x1de4($t2)
/* B11978 8009A7D8 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B1197C 8009A7DC 244F0008 */  addiu $t7, $v0, 8
/* B11980 8009A7E0 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B11984 8009A7E4 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B11988 8009A7E8 AC580000 */  sw    $t8, ($v0)
/* B1198C 8009A7EC 8D040000 */  lw    $a0, ($t0)
/* B11990 8009A7F0 24190040 */  li    $t9, 64
/* B11994 8009A7F4 000A3040 */  sll   $a2, $t2, 1
/* B11998 8009A7F8 30C600FF */  andi  $a2, $a2, 0xff
/* B1199C 8009A7FC AFB90010 */  sw    $t9, 0x10($sp)
/* B119A0 8009A800 00002825 */  move  $a1, $zero
/* B119A4 8009A804 24070040 */  li    $a3, 64
/* B119A8 8009A808 AFA2006C */  sw    $v0, 0x6c($sp)
/* B119AC 8009A80C 0C0253A7 */  jal   func_80094E9C
/* B119B0 8009A810 AFAA0084 */   sw    $t2, 0x84($sp)
/* B119B4 8009A814 8FA3006C */  lw    $v1, 0x6c($sp)
/* B119B8 8009A818 8FA90084 */  lw    $t1, 0x84($sp)
/* B119BC 8009A81C 3C0CE700 */  lui   $t4, 0xe700
/* B119C0 8009A820 AC620004 */  sw    $v0, 4($v1)
/* B119C4 8009A824 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B119C8 8009A828 3C0F8080 */  lui   $t7, (0x80808080 >> 16) # lui $t7, 0x8080
/* B119CC 8009A82C 35EF8080 */  ori   $t7, (0x80808080 & 0xFFFF) # ori $t7, $t7, 0x8080
/* B119D0 8009A830 244B0008 */  addiu $t3, $v0, 8
/* B119D4 8009A834 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B119D8 8009A838 AC4C0000 */  sw    $t4, ($v0)
/* B119DC 8009A83C AC400004 */  sw    $zero, 4($v0)
/* B119E0 8009A840 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B119E4 8009A844 3C0EFB00 */  lui   $t6, 0xfb00
/* B119E8 8009A848 3C19DB06 */  lui   $t9, (0xDB060028 >> 16) # lui $t9, 0xdb06
/* B119EC 8009A84C 244D0008 */  addiu $t5, $v0, 8
/* B119F0 8009A850 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B119F4 8009A854 AC4E0000 */  sw    $t6, ($v0)
/* B119F8 8009A858 AC4F0004 */  sw    $t7, 4($v0)
/* B119FC 8009A85C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B11A00 8009A860 37390028 */  ori   $t9, (0xDB060028 & 0xFFFF) # ori $t9, $t9, 0x28
/* B11A04 8009A864 240F0001 */  li    $t7, 1
/* B11A08 8009A868 24580008 */  addiu $t8, $v0, 8
/* B11A0C 8009A86C AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B11A10 8009A870 AC590000 */  sw    $t9, ($v0)
/* B11A14 8009A874 8FAB0088 */  lw    $t3, 0x88($sp)
/* B11A18 8009A878 24190020 */  li    $t9, 32
/* B11A1C 8009A87C 24180020 */  li    $t8, 32
/* B11A20 8009A880 8D640000 */  lw    $a0, ($t3)
/* B11A24 8009A884 240E0020 */  li    $t6, 32
/* B11A28 8009A888 240D0020 */  li    $t5, 32
/* B11A2C 8009A88C 240C007F */  li    $t4, 127
/* B11A30 8009A890 3123007F */  andi  $v1, $t1, 0x7f
/* B11A34 8009A894 3127007F */  andi  $a3, $t1, 0x7f
/* B11A38 8009A898 AFA70020 */  sw    $a3, 0x20($sp)
/* B11A3C 8009A89C AFA70044 */  sw    $a3, 0x44($sp)
/* B11A40 8009A8A0 01833023 */  subu  $a2, $t4, $v1
/* B11A44 8009A8A4 AFA3001C */  sw    $v1, 0x1c($sp)
/* B11A48 8009A8A8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B11A4C 8009A8AC AFAE0014 */  sw    $t6, 0x14($sp)
/* B11A50 8009A8B0 AFB90028 */  sw    $t9, 0x28($sp)
/* B11A54 8009A8B4 AFB80024 */  sw    $t8, 0x24($sp)
/* B11A58 8009A8B8 AFAF0018 */  sw    $t7, 0x18($sp)
/* B11A5C 8009A8BC 00002825 */  move  $a1, $zero
/* B11A60 8009A8C0 AFA90048 */  sw    $t1, 0x48($sp)
/* B11A64 8009A8C4 0C0253D0 */  jal   func_80094F40
/* B11A68 8009A8C8 AFA20060 */   sw    $v0, 0x60($sp)
/* B11A6C 8009A8CC 8FA80060 */  lw    $t0, 0x60($sp)
/* B11A70 8009A8D0 8FA90048 */  lw    $t1, 0x48($sp)
/* B11A74 8009A8D4 3C0CDB06 */  lui   $t4, (0xDB060024 >> 16) # lui $t4, 0xdb06
/* B11A78 8009A8D8 AD020004 */  sw    $v0, 4($t0)
/* B11A7C 8009A8DC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11A80 8009A8E0 358C0024 */  ori   $t4, (0xDB060024 & 0xFFFF) # ori $t4, $t4, 0x24
/* B11A84 8009A8E4 240F007F */  li    $t7, 127
/* B11A88 8009A8E8 244B0008 */  addiu $t3, $v0, 8
/* B11A8C 8009A8EC AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B11A90 8009A8F0 AC4C0000 */  sw    $t4, ($v0)
/* B11A94 8009A8F4 8FAD0088 */  lw    $t5, 0x88($sp)
/* B11A98 8009A8F8 8FAE0044 */  lw    $t6, 0x44($sp)
/* B11A9C 8009A8FC 240C0020 */  li    $t4, 32
/* B11AA0 8009A900 8DA40000 */  lw    $a0, ($t5)
/* B11AA4 8009A904 240D0080 */  li    $t5, 128
/* B11AA8 8009A908 240B0001 */  li    $t3, 1
/* B11AAC 8009A90C 24180020 */  li    $t8, 32
/* B11AB0 8009A910 24190040 */  li    $t9, 64
/* B11AB4 8009A914 AFB90014 */  sw    $t9, 0x14($sp)
/* B11AB8 8009A918 AFB80010 */  sw    $t8, 0x10($sp)
/* B11ABC 8009A91C AFAB0018 */  sw    $t3, 0x18($sp)
/* B11AC0 8009A920 AFAD0028 */  sw    $t5, 0x28($sp)
/* B11AC4 8009A924 AFAC0024 */  sw    $t4, 0x24($sp)
/* B11AC8 8009A928 AFA00020 */  sw    $zero, 0x20($sp)
/* B11ACC 8009A92C AFA0001C */  sw    $zero, 0x1c($sp)
/* B11AD0 8009A930 00002825 */  move  $a1, $zero
/* B11AD4 8009A934 312700FF */  andi  $a3, $t1, 0xff
/* B11AD8 8009A938 AFA2005C */  sw    $v0, 0x5c($sp)
/* B11ADC 8009A93C 0C0253D0 */  jal   func_80094F40
/* B11AE0 8009A940 01EE3023 */   subu  $a2, $t7, $t6
/* B11AE4 8009A944 8FA3005C */  lw    $v1, 0x5c($sp)
/* B11AE8 8009A948 3C04E700 */  lui   $a0, 0xe700
/* B11AEC 8009A94C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B11AF0 8009A950 AC620004 */  sw    $v0, 4($v1)
/* B11AF4 8009A954 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B11AF8 8009A958 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B11AFC 8009A95C 3C05FB00 */  lui   $a1, 0xfb00
/* B11B00 8009A960 244F0008 */  addiu $t7, $v0, 8
/* B11B04 8009A964 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B11B08 8009A968 AC400004 */  sw    $zero, 4($v0)
/* B11B0C 8009A96C AC440000 */  sw    $a0, ($v0)
/* B11B10 8009A970 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B11B14 8009A974 24071490 */  li    $a3, 5264
/* B11B18 8009A978 244E0008 */  addiu $t6, $v0, 8
/* B11B1C 8009A97C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B11B20 8009A980 AC460004 */  sw    $a2, 4($v0)
/* B11B24 8009A984 AC450000 */  sw    $a1, ($v0)
/* B11B28 8009A988 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11B2C 8009A98C 24580008 */  addiu $t8, $v0, 8
/* B11B30 8009A990 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B11B34 8009A994 AC400004 */  sw    $zero, 4($v0)
/* B11B38 8009A998 AC440000 */  sw    $a0, ($v0)
/* B11B3C 8009A99C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11B40 8009A9A0 27A40070 */  addiu $a0, $sp, 0x70
/* B11B44 8009A9A4 24590008 */  addiu $t9, $v0, 8
/* B11B48 8009A9A8 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B11B4C 8009A9AC AC460004 */  sw    $a2, 4($v0)
/* B11B50 8009A9B0 AC450000 */  sw    $a1, ($v0)
/* B11B54 8009A9B4 8FAB0088 */  lw    $t3, 0x88($sp)
/* B11B58 8009A9B8 3C068014 */  lui   $a2, %hi(D_8013F7E4) # $a2, 0x8014
/* B11B5C 8009A9BC 24C6F7E4 */  addiu $a2, %lo(D_8013F7E4) # addiu $a2, $a2, -0x81c
/* B11B60 8009A9C0 0C031AD5 */  jal   func_800C6B54
/* B11B64 8009A9C4 8D650000 */   lw    $a1, ($t3)
/* B11B68 8009A9C8 8FBF003C */  lw    $ra, 0x3c($sp)
/* B11B6C 8009A9CC 8FB00038 */  lw    $s0, 0x38($sp)
/* B11B70 8009A9D0 27BD0088 */  addiu $sp, $sp, 0x88
/* B11B74 8009A9D4 03E00008 */  jr    $ra
/* B11B78 8009A9D8 00000000 */   nop   

/* B11B7C 8009A9DC 27BDFF80 */  addiu $sp, $sp, -0x80
/* B11B80 8009A9E0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B11B84 8009A9E4 AFB10038 */  sw    $s1, 0x38($sp)
/* B11B88 8009A9E8 AFB00034 */  sw    $s0, 0x34($sp)
/* B11B8C 8009A9EC 8C850000 */  lw    $a1, ($a0)
/* B11B90 8009A9F0 00808825 */  move  $s1, $a0
/* B11B94 8009A9F4 3C068014 */  lui   $a2, %hi(D_8013F7F8) # $a2, 0x8014
/* B11B98 8009A9F8 24C6F7F8 */  addiu $a2, %lo(D_8013F7F8) # addiu $a2, $a2, -0x808
/* B11B9C 8009A9FC 27A40068 */  addiu $a0, $sp, 0x68
/* B11BA0 8009AA00 2407149E */  li    $a3, 5278
/* B11BA4 8009AA04 0C031AB1 */  jal   func_800C6AC4
/* B11BA8 8009AA08 00A08025 */   move  $s0, $a1
/* B11BAC 8009AA0C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11BB0 8009AA10 3C080001 */  lui   $t0, 1
/* B11BB4 8009AA14 01114021 */  addu  $t0, $t0, $s1
/* B11BB8 8009AA18 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B11BBC 8009AA1C 244E0008 */  addiu $t6, $v0, 8
/* B11BC0 8009AA20 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B11BC4 8009AA24 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B11BC8 8009AA28 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B11BCC 8009AA2C AC4F0000 */  sw    $t7, ($v0)
/* B11BD0 8009AA30 8E240000 */  lw    $a0, ($s1)
/* B11BD4 8009AA34 00085080 */  sll   $t2, $t0, 2
/* B11BD8 8009AA38 2418007F */  li    $t8, 127
/* B11BDC 8009AA3C 01485023 */  subu  $t2, $t2, $t0
/* B11BE0 8009AA40 3103007F */  andi  $v1, $t0, 0x7f
/* B11BE4 8009AA44 03033023 */  subu  $a2, $t8, $v1
/* B11BE8 8009AA48 314700FF */  andi  $a3, $t2, 0xff
/* B11BEC 8009AA4C 240E0040 */  li    $t6, 64
/* B11BF0 8009AA50 24190020 */  li    $t9, 32
/* B11BF4 8009AA54 240B0040 */  li    $t3, 64
/* B11BF8 8009AA58 240C0001 */  li    $t4, 1
/* B11BFC 8009AA5C 240D0020 */  li    $t5, 32
/* B11C00 8009AA60 AFAD0024 */  sw    $t5, 0x24($sp)
/* B11C04 8009AA64 AFAC0018 */  sw    $t4, 0x18($sp)
/* B11C08 8009AA68 AFAB0014 */  sw    $t3, 0x14($sp)
/* B11C0C 8009AA6C AFB90010 */  sw    $t9, 0x10($sp)
/* B11C10 8009AA70 AFAE0028 */  sw    $t6, 0x28($sp)
/* B11C14 8009AA74 AFA70020 */  sw    $a3, 0x20($sp)
/* B11C18 8009AA78 AFA60048 */  sw    $a2, 0x48($sp)
/* B11C1C 8009AA7C AFA3001C */  sw    $v1, 0x1c($sp)
/* B11C20 8009AA80 AFA3004C */  sw    $v1, 0x4c($sp)
/* B11C24 8009AA84 AFAA0044 */  sw    $t2, 0x44($sp)
/* B11C28 8009AA88 00002825 */  move  $a1, $zero
/* B11C2C 8009AA8C 0C0253D0 */  jal   func_80094F40
/* B11C30 8009AA90 AFA20064 */   sw    $v0, 0x64($sp)
/* B11C34 8009AA94 8FA90064 */  lw    $t1, 0x64($sp)
/* B11C38 8009AA98 8FA3004C */  lw    $v1, 0x4c($sp)
/* B11C3C 8009AA9C 8FAA0044 */  lw    $t2, 0x44($sp)
/* B11C40 8009AAA0 8FA60048 */  lw    $a2, 0x48($sp)
/* B11C44 8009AAA4 AD220004 */  sw    $v0, 4($t1)
/* B11C48 8009AAA8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11C4C 8009AAAC 3C18DB06 */  lui   $t8, (0xDB060024 >> 16) # lui $t8, 0xdb06
/* B11C50 8009AAB0 37180024 */  ori   $t8, (0xDB060024 & 0xFFFF) # ori $t8, $t8, 0x24
/* B11C54 8009AAB4 244F0008 */  addiu $t7, $v0, 8
/* B11C58 8009AAB8 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B11C5C 8009AABC AC580000 */  sw    $t8, ($v0)
/* B11C60 8009AAC0 8E240000 */  lw    $a0, ($s1)
/* B11C64 8009AAC4 24190020 */  li    $t9, 32
/* B11C68 8009AAC8 240B0020 */  li    $t3, 32
/* B11C6C 8009AACC 240C0001 */  li    $t4, 1
/* B11C70 8009AAD0 240D0020 */  li    $t5, 32
/* B11C74 8009AAD4 240E0020 */  li    $t6, 32
/* B11C78 8009AAD8 3147007F */  andi  $a3, $t2, 0x7f
/* B11C7C 8009AADC AFA70020 */  sw    $a3, 0x20($sp)
/* B11C80 8009AAE0 AFAE0028 */  sw    $t6, 0x28($sp)
/* B11C84 8009AAE4 AFAD0024 */  sw    $t5, 0x24($sp)
/* B11C88 8009AAE8 AFAC0018 */  sw    $t4, 0x18($sp)
/* B11C8C 8009AAEC AFAB0014 */  sw    $t3, 0x14($sp)
/* B11C90 8009AAF0 AFB90010 */  sw    $t9, 0x10($sp)
/* B11C94 8009AAF4 00002825 */  move  $a1, $zero
/* B11C98 8009AAF8 AFA3001C */  sw    $v1, 0x1c($sp)
/* B11C9C 8009AAFC 0C0253D0 */  jal   func_80094F40
/* B11CA0 8009AB00 AFA20060 */   sw    $v0, 0x60($sp)
/* B11CA4 8009AB04 8FA80060 */  lw    $t0, 0x60($sp)
/* B11CA8 8009AB08 3C04E700 */  lui   $a0, 0xe700
/* B11CAC 8009AB0C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B11CB0 8009AB10 AD020004 */  sw    $v0, 4($t0)
/* B11CB4 8009AB14 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B11CB8 8009AB18 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B11CBC 8009AB1C 3C05FB00 */  lui   $a1, 0xfb00
/* B11CC0 8009AB20 246F0008 */  addiu $t7, $v1, 8
/* B11CC4 8009AB24 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B11CC8 8009AB28 AC600004 */  sw    $zero, 4($v1)
/* B11CCC 8009AB2C AC640000 */  sw    $a0, ($v1)
/* B11CD0 8009AB30 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B11CD4 8009AB34 240714B5 */  li    $a3, 5301
/* B11CD8 8009AB38 24780008 */  addiu $t8, $v1, 8
/* B11CDC 8009AB3C AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B11CE0 8009AB40 AC660004 */  sw    $a2, 4($v1)
/* B11CE4 8009AB44 AC650000 */  sw    $a1, ($v1)
/* B11CE8 8009AB48 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11CEC 8009AB4C 24590008 */  addiu $t9, $v0, 8
/* B11CF0 8009AB50 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B11CF4 8009AB54 AC400004 */  sw    $zero, 4($v0)
/* B11CF8 8009AB58 AC440000 */  sw    $a0, ($v0)
/* B11CFC 8009AB5C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11D00 8009AB60 27A40068 */  addiu $a0, $sp, 0x68
/* B11D04 8009AB64 244B0008 */  addiu $t3, $v0, 8
/* B11D08 8009AB68 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B11D0C 8009AB6C AC460004 */  sw    $a2, 4($v0)
/* B11D10 8009AB70 3C068014 */  lui   $a2, %hi(D_8013F80C) # $a2, 0x8014
/* B11D14 8009AB74 AC450000 */  sw    $a1, ($v0)
/* B11D18 8009AB78 8E250000 */  lw    $a1, ($s1)
/* B11D1C 8009AB7C 0C031AD5 */  jal   func_800C6B54
/* B11D20 8009AB80 24C6F80C */   addiu $a2, %lo(D_8013F80C) # addiu $a2, $a2, -0x7f4
/* B11D24 8009AB84 8FBF003C */  lw    $ra, 0x3c($sp)
/* B11D28 8009AB88 8FB00034 */  lw    $s0, 0x34($sp)
/* B11D2C 8009AB8C 8FB10038 */  lw    $s1, 0x38($sp)
/* B11D30 8009AB90 03E00008 */  jr    $ra
/* B11D34 8009AB94 27BD0080 */   addiu $sp, $sp, 0x80

/* B11D38 8009AB98 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B11D3C 8009AB9C AFBF001C */  sw    $ra, 0x1c($sp)
/* B11D40 8009ABA0 AFA40050 */  sw    $a0, 0x50($sp)
/* B11D44 8009ABA4 8C850000 */  lw    $a1, ($a0)
/* B11D48 8009ABA8 3C068014 */  lui   $a2, %hi(D_8013F820) # $a2, 0x8014
/* B11D4C 8009ABAC 24C6F820 */  addiu $a2, %lo(D_8013F820) # addiu $a2, $a2, -0x7e0
/* B11D50 8009ABB0 27A40038 */  addiu $a0, $sp, 0x38
/* B11D54 8009ABB4 240714C5 */  li    $a3, 5317
/* B11D58 8009ABB8 0C031AB1 */  jal   func_800C6AC4
/* B11D5C 8009ABBC AFA50048 */   sw    $a1, 0x48($sp)
/* B11D60 8009ABC0 8FA80048 */  lw    $t0, 0x48($sp)
/* B11D64 8009ABC4 8FAA0050 */  lw    $t2, 0x50($sp)
/* B11D68 8009ABC8 3C090001 */  lui   $t1, 1
/* B11D6C 8009ABCC 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B11D70 8009ABD0 012A4821 */  addu  $t1, $t1, $t2
/* B11D74 8009ABD4 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B11D78 8009ABD8 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B11D7C 8009ABDC 244F0008 */  addiu $t7, $v0, 8
/* B11D80 8009ABE0 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B11D84 8009ABE4 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B11D88 8009ABE8 AC580000 */  sw    $t8, ($v0)
/* B11D8C 8009ABEC 8D440000 */  lw    $a0, ($t2)
/* B11D90 8009ABF0 24190010 */  li    $t9, 16
/* B11D94 8009ABF4 AFB90010 */  sw    $t9, 0x10($sp)
/* B11D98 8009ABF8 00002825 */  move  $a1, $zero
/* B11D9C 8009ABFC 24070100 */  li    $a3, 256
/* B11DA0 8009AC00 AFA80048 */  sw    $t0, 0x48($sp)
/* B11DA4 8009AC04 AFA20034 */  sw    $v0, 0x34($sp)
/* B11DA8 8009AC08 0C0253A7 */  jal   func_80094E9C
/* B11DAC 8009AC0C 3126003F */   andi  $a2, $t1, 0x3f
/* B11DB0 8009AC10 8FA30034 */  lw    $v1, 0x34($sp)
/* B11DB4 8009AC14 8FA80048 */  lw    $t0, 0x48($sp)
/* B11DB8 8009AC18 3C04E700 */  lui   $a0, 0xe700
/* B11DBC 8009AC1C AC620004 */  sw    $v0, 4($v1)
/* B11DC0 8009AC20 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B11DC4 8009AC24 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B11DC8 8009AC28 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B11DCC 8009AC2C 244B0008 */  addiu $t3, $v0, 8
/* B11DD0 8009AC30 AD0B02D0 */  sw    $t3, 0x2d0($t0)
/* B11DD4 8009AC34 AC400004 */  sw    $zero, 4($v0)
/* B11DD8 8009AC38 AC440000 */  sw    $a0, ($v0)
/* B11DDC 8009AC3C 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B11DE0 8009AC40 3C05FB00 */  lui   $a1, 0xfb00
/* B11DE4 8009AC44 240714D2 */  li    $a3, 5330
/* B11DE8 8009AC48 244C0008 */  addiu $t4, $v0, 8
/* B11DEC 8009AC4C AD0C02D0 */  sw    $t4, 0x2d0($t0)
/* B11DF0 8009AC50 AC460004 */  sw    $a2, 4($v0)
/* B11DF4 8009AC54 AC450000 */  sw    $a1, ($v0)
/* B11DF8 8009AC58 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B11DFC 8009AC5C 246D0008 */  addiu $t5, $v1, 8
/* B11E00 8009AC60 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B11E04 8009AC64 AC600004 */  sw    $zero, 4($v1)
/* B11E08 8009AC68 AC640000 */  sw    $a0, ($v1)
/* B11E0C 8009AC6C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B11E10 8009AC70 27A40038 */  addiu $a0, $sp, 0x38
/* B11E14 8009AC74 246E0008 */  addiu $t6, $v1, 8
/* B11E18 8009AC78 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B11E1C 8009AC7C AC660004 */  sw    $a2, 4($v1)
/* B11E20 8009AC80 AC650000 */  sw    $a1, ($v1)
/* B11E24 8009AC84 8FAF0050 */  lw    $t7, 0x50($sp)
/* B11E28 8009AC88 3C068014 */  lui   $a2, %hi(D_8013F834) # $a2, 0x8014
/* B11E2C 8009AC8C 24C6F834 */  addiu $a2, %lo(D_8013F834) # addiu $a2, $a2, -0x7cc
/* B11E30 8009AC90 0C031AD5 */  jal   func_800C6B54
/* B11E34 8009AC94 8DE50000 */   lw    $a1, ($t7)
/* B11E38 8009AC98 8FBF001C */  lw    $ra, 0x1c($sp)
/* B11E3C 8009AC9C 27BD0050 */  addiu $sp, $sp, 0x50
/* B11E40 8009ACA0 03E00008 */  jr    $ra
/* B11E44 8009ACA4 00000000 */   nop   

/* B11E48 8009ACA8 27BDFF88 */  addiu $sp, $sp, -0x78
/* B11E4C 8009ACAC AFBF003C */  sw    $ra, 0x3c($sp)
/* B11E50 8009ACB0 AFB10038 */  sw    $s1, 0x38($sp)
/* B11E54 8009ACB4 AFB00034 */  sw    $s0, 0x34($sp)
/* B11E58 8009ACB8 8C850000 */  lw    $a1, ($a0)
/* B11E5C 8009ACBC 00808825 */  move  $s1, $a0
/* B11E60 8009ACC0 3C068014 */  lui   $a2, %hi(D_8013F848) # $a2, 0x8014
/* B11E64 8009ACC4 24C6F848 */  addiu $a2, %lo(D_8013F848) # addiu $a2, $a2, -0x7b8
/* B11E68 8009ACC8 27A40060 */  addiu $a0, $sp, 0x60
/* B11E6C 8009ACCC 240714E2 */  li    $a3, 5346
/* B11E70 8009ACD0 0C031AB1 */  jal   func_800C6AC4
/* B11E74 8009ACD4 00A08025 */   move  $s0, $a1
/* B11E78 8009ACD8 3C080001 */  lui   $t0, 1
/* B11E7C 8009ACDC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11E80 8009ACE0 01114021 */  addu  $t0, $t0, $s1
/* B11E84 8009ACE4 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B11E88 8009ACE8 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B11E8C 8009ACEC 244E0008 */  addiu $t6, $v0, 8
/* B11E90 8009ACF0 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B11E94 8009ACF4 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B11E98 8009ACF8 AC4F0000 */  sw    $t7, ($v0)
/* B11E9C 8009ACFC 8E240000 */  lw    $a0, ($s1)
/* B11EA0 8009AD00 00083880 */  sll   $a3, $t0, 2
/* B11EA4 8009AD04 00E83823 */  subu  $a3, $a3, $t0
/* B11EA8 8009AD08 30E7007F */  andi  $a3, $a3, 0x7f
/* B11EAC 8009AD0C 2418007F */  li    $t8, 127
/* B11EB0 8009AD10 24190020 */  li    $t9, 32
/* B11EB4 8009AD14 240A0020 */  li    $t2, 32
/* B11EB8 8009AD18 240B0001 */  li    $t3, 1
/* B11EBC 8009AD1C 240C0020 */  li    $t4, 32
/* B11EC0 8009AD20 240D0020 */  li    $t5, 32
/* B11EC4 8009AD24 3103007F */  andi  $v1, $t0, 0x7f
/* B11EC8 8009AD28 03033023 */  subu  $a2, $t8, $v1
/* B11ECC 8009AD2C AFA3001C */  sw    $v1, 0x1c($sp)
/* B11ED0 8009AD30 AFAD0028 */  sw    $t5, 0x28($sp)
/* B11ED4 8009AD34 AFAC0024 */  sw    $t4, 0x24($sp)
/* B11ED8 8009AD38 AFAB0018 */  sw    $t3, 0x18($sp)
/* B11EDC 8009AD3C AFAA0014 */  sw    $t2, 0x14($sp)
/* B11EE0 8009AD40 AFB90010 */  sw    $t9, 0x10($sp)
/* B11EE4 8009AD44 AFA70020 */  sw    $a3, 0x20($sp)
/* B11EE8 8009AD48 00002825 */  move  $a1, $zero
/* B11EEC 8009AD4C AFA2005C */  sw    $v0, 0x5c($sp)
/* B11EF0 8009AD50 0C0253D0 */  jal   func_80094F40
/* B11EF4 8009AD54 AFA80074 */   sw    $t0, 0x74($sp)
/* B11EF8 8009AD58 8FA9005C */  lw    $t1, 0x5c($sp)
/* B11EFC 8009AD5C 8FA80074 */  lw    $t0, 0x74($sp)
/* B11F00 8009AD60 3C0FDB06 */  lui   $t7, (0xDB060024 >> 16) # lui $t7, 0xdb06
/* B11F04 8009AD64 AD220004 */  sw    $v0, 4($t1)
/* B11F08 8009AD68 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11F0C 8009AD6C 35EF0024 */  ori   $t7, (0xDB060024 & 0xFFFF) # ori $t7, $t7, 0x24
/* B11F10 8009AD70 24180010 */  li    $t8, 16
/* B11F14 8009AD74 244E0008 */  addiu $t6, $v0, 8
/* B11F18 8009AD78 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B11F1C 8009AD7C AC4F0000 */  sw    $t7, ($v0)
/* B11F20 8009AD80 8E240000 */  lw    $a0, ($s1)
/* B11F24 8009AD84 AFB80010 */  sw    $t8, 0x10($sp)
/* B11F28 8009AD88 00002825 */  move  $a1, $zero
/* B11F2C 8009AD8C 24070100 */  li    $a3, 256
/* B11F30 8009AD90 3106003F */  andi  $a2, $t0, 0x3f
/* B11F34 8009AD94 0C0253A7 */  jal   func_80094E9C
/* B11F38 8009AD98 AFA20058 */   sw    $v0, 0x58($sp)
/* B11F3C 8009AD9C 8FA30058 */  lw    $v1, 0x58($sp)
/* B11F40 8009ADA0 3C04E700 */  lui   $a0, 0xe700
/* B11F44 8009ADA4 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B11F48 8009ADA8 AC620004 */  sw    $v0, 4($v1)
/* B11F4C 8009ADAC 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B11F50 8009ADB0 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B11F54 8009ADB4 3C05FB00 */  lui   $a1, 0xfb00
/* B11F58 8009ADB8 24790008 */  addiu $t9, $v1, 8
/* B11F5C 8009ADBC AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B11F60 8009ADC0 AC600004 */  sw    $zero, 4($v1)
/* B11F64 8009ADC4 AC640000 */  sw    $a0, ($v1)
/* B11F68 8009ADC8 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B11F6C 8009ADCC 240714F7 */  li    $a3, 5367
/* B11F70 8009ADD0 246A0008 */  addiu $t2, $v1, 8
/* B11F74 8009ADD4 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B11F78 8009ADD8 AC660004 */  sw    $a2, 4($v1)
/* B11F7C 8009ADDC AC650000 */  sw    $a1, ($v1)
/* B11F80 8009ADE0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11F84 8009ADE4 244B0008 */  addiu $t3, $v0, 8
/* B11F88 8009ADE8 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B11F8C 8009ADEC AC400004 */  sw    $zero, 4($v0)
/* B11F90 8009ADF0 AC440000 */  sw    $a0, ($v0)
/* B11F94 8009ADF4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B11F98 8009ADF8 27A40060 */  addiu $a0, $sp, 0x60
/* B11F9C 8009ADFC 244C0008 */  addiu $t4, $v0, 8
/* B11FA0 8009AE00 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B11FA4 8009AE04 AC460004 */  sw    $a2, 4($v0)
/* B11FA8 8009AE08 3C068014 */  lui   $a2, %hi(D_8013F85C) # $a2, 0x8014
/* B11FAC 8009AE0C AC450000 */  sw    $a1, ($v0)
/* B11FB0 8009AE10 8E250000 */  lw    $a1, ($s1)
/* B11FB4 8009AE14 0C031AD5 */  jal   func_800C6B54
/* B11FB8 8009AE18 24C6F85C */   addiu $a2, %lo(D_8013F85C) # addiu $a2, $a2, -0x7a4
/* B11FBC 8009AE1C 8FBF003C */  lw    $ra, 0x3c($sp)
/* B11FC0 8009AE20 8FB00034 */  lw    $s0, 0x34($sp)
/* B11FC4 8009AE24 8FB10038 */  lw    $s1, 0x38($sp)
/* B11FC8 8009AE28 03E00008 */  jr    $ra
/* B11FCC 8009AE2C 27BD0078 */   addiu $sp, $sp, 0x78

/* B11FD0 8009AE30 27BDFF88 */  addiu $sp, $sp, -0x78
/* B11FD4 8009AE34 AFBF003C */  sw    $ra, 0x3c($sp)
/* B11FD8 8009AE38 AFB10038 */  sw    $s1, 0x38($sp)
/* B11FDC 8009AE3C AFB00034 */  sw    $s0, 0x34($sp)
/* B11FE0 8009AE40 8C850000 */  lw    $a1, ($a0)
/* B11FE4 8009AE44 00808825 */  move  $s1, $a0
/* B11FE8 8009AE48 3C068014 */  lui   $a2, %hi(D_8013F870) # $a2, 0x8014
/* B11FEC 8009AE4C 24C6F870 */  addiu $a2, %lo(D_8013F870) # addiu $a2, $a2, -0x790
/* B11FF0 8009AE50 27A40060 */  addiu $a0, $sp, 0x60
/* B11FF4 8009AE54 24071508 */  li    $a3, 5384
/* B11FF8 8009AE58 0C031AB1 */  jal   func_800C6AC4
/* B11FFC 8009AE5C 00A08025 */   move  $s0, $a1
/* B12000 8009AE60 862E00A4 */  lh    $t6, 0xa4($s1)
/* B12004 8009AE64 3C030001 */  lui   $v1, 1
/* B12008 8009AE68 00711821 */  addu  $v1, $v1, $s1
/* B1200C 8009AE6C 24010018 */  li    $at, 24
/* B12010 8009AE70 15C1001D */  bne   $t6, $at, .L8009AEE8
/* B12014 8009AE74 8C631DE4 */   lw    $v1, 0x1de4($v1)
/* B12018 8009AE78 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1201C 8009AE7C 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B12020 8009AE80 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B12024 8009AE84 244F0008 */  addiu $t7, $v0, 8
/* B12028 8009AE88 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B1202C 8009AE8C AC580000 */  sw    $t8, ($v0)
/* B12030 8009AE90 8E240000 */  lw    $a0, ($s1)
/* B12034 8009AE94 00033040 */  sll   $a2, $v1, 1
/* B12038 8009AE98 30C6007F */  andi  $a2, $a2, 0x7f
/* B1203C 8009AE9C 24190020 */  li    $t9, 32
/* B12040 8009AEA0 24090020 */  li    $t1, 32
/* B12044 8009AEA4 240A0001 */  li    $t2, 1
/* B12048 8009AEA8 240B0020 */  li    $t3, 32
/* B1204C 8009AEAC 240C0020 */  li    $t4, 32
/* B12050 8009AEB0 AFAC0028 */  sw    $t4, 0x28($sp)
/* B12054 8009AEB4 AFAB0024 */  sw    $t3, 0x24($sp)
/* B12058 8009AEB8 AFAA0018 */  sw    $t2, 0x18($sp)
/* B1205C 8009AEBC AFA90014 */  sw    $t1, 0x14($sp)
/* B12060 8009AEC0 AFB90010 */  sw    $t9, 0x10($sp)
/* B12064 8009AEC4 AFA6001C */  sw    $a2, 0x1c($sp)
/* B12068 8009AEC8 AFA00020 */  sw    $zero, 0x20($sp)
/* B1206C 8009AECC 00002825 */  move  $a1, $zero
/* B12070 8009AED0 00003825 */  move  $a3, $zero
/* B12074 8009AED4 0C0253D0 */  jal   func_80094F40
/* B12078 8009AED8 AFA2005C */   sw    $v0, 0x5c($sp)
/* B1207C 8009AEDC 8FA8005C */  lw    $t0, 0x5c($sp)
/* B12080 8009AEE0 1000001C */  b     .L8009AF54
/* B12084 8009AEE4 AD020004 */   sw    $v0, 4($t0)
.L8009AEE8:
/* B12088 8009AEE8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1208C 8009AEEC 3C0EDB06 */  lui   $t6, (0xDB060020 >> 16) # lui $t6, 0xdb06
/* B12090 8009AEF0 35CE0020 */  ori   $t6, (0xDB060020 & 0xFFFF) # ori $t6, $t6, 0x20
/* B12094 8009AEF4 244D0008 */  addiu $t5, $v0, 8
/* B12098 8009AEF8 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B1209C 8009AEFC AC4E0000 */  sw    $t6, ($v0)
/* B120A0 8009AF00 8E240000 */  lw    $a0, ($s1)
/* B120A4 8009AF04 00033040 */  sll   $a2, $v1, 1
/* B120A8 8009AF08 30C6007F */  andi  $a2, $a2, 0x7f
/* B120AC 8009AF0C 240F0020 */  li    $t7, 32
/* B120B0 8009AF10 24180020 */  li    $t8, 32
/* B120B4 8009AF14 24190001 */  li    $t9, 1
/* B120B8 8009AF18 24090020 */  li    $t1, 32
/* B120BC 8009AF1C 240A0020 */  li    $t2, 32
/* B120C0 8009AF20 AFAA0028 */  sw    $t2, 0x28($sp)
/* B120C4 8009AF24 AFA90024 */  sw    $t1, 0x24($sp)
/* B120C8 8009AF28 AFB90018 */  sw    $t9, 0x18($sp)
/* B120CC 8009AF2C AFB80014 */  sw    $t8, 0x14($sp)
/* B120D0 8009AF30 AFAF0010 */  sw    $t7, 0x10($sp)
/* B120D4 8009AF34 AFA6001C */  sw    $a2, 0x1c($sp)
/* B120D8 8009AF38 AFA00020 */  sw    $zero, 0x20($sp)
/* B120DC 8009AF3C 00002825 */  move  $a1, $zero
/* B120E0 8009AF40 00003825 */  move  $a3, $zero
/* B120E4 8009AF44 0C0253D0 */  jal   func_80094F40
/* B120E8 8009AF48 AFA20058 */   sw    $v0, 0x58($sp)
/* B120EC 8009AF4C 8FA80058 */  lw    $t0, 0x58($sp)
/* B120F0 8009AF50 AD020004 */  sw    $v0, 4($t0)
.L8009AF54:
/* B120F4 8009AF54 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B120F8 8009AF58 3C04E700 */  lui   $a0, 0xe700
/* B120FC 8009AF5C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B12100 8009AF60 244B0008 */  addiu $t3, $v0, 8
/* B12104 8009AF64 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B12108 8009AF68 AC400004 */  sw    $zero, 4($v0)
/* B1210C 8009AF6C AC440000 */  sw    $a0, ($v0)
/* B12110 8009AF70 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12114 8009AF74 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B12118 8009AF78 3C05FB00 */  lui   $a1, 0xfb00
/* B1211C 8009AF7C 244C0008 */  addiu $t4, $v0, 8
/* B12120 8009AF80 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B12124 8009AF84 AC460004 */  sw    $a2, 4($v0)
/* B12128 8009AF88 AC450000 */  sw    $a1, ($v0)
/* B1212C 8009AF8C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12130 8009AF90 24071528 */  li    $a3, 5416
/* B12134 8009AF94 244D0008 */  addiu $t5, $v0, 8
/* B12138 8009AF98 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B1213C 8009AF9C AC400004 */  sw    $zero, 4($v0)
/* B12140 8009AFA0 AC440000 */  sw    $a0, ($v0)
/* B12144 8009AFA4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12148 8009AFA8 27A40060 */  addiu $a0, $sp, 0x60
/* B1214C 8009AFAC 244E0008 */  addiu $t6, $v0, 8
/* B12150 8009AFB0 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B12154 8009AFB4 AC460004 */  sw    $a2, 4($v0)
/* B12158 8009AFB8 3C068014 */  lui   $a2, %hi(D_8013F884) # $a2, 0x8014
/* B1215C 8009AFBC AC450000 */  sw    $a1, ($v0)
/* B12160 8009AFC0 8E250000 */  lw    $a1, ($s1)
/* B12164 8009AFC4 0C031AD5 */  jal   func_800C6B54
/* B12168 8009AFC8 24C6F884 */   addiu $a2, %lo(D_8013F884) # addiu $a2, $a2, -0x77c
/* B1216C 8009AFCC 8FBF003C */  lw    $ra, 0x3c($sp)
/* B12170 8009AFD0 8FB00034 */  lw    $s0, 0x34($sp)
/* B12174 8009AFD4 8FB10038 */  lw    $s1, 0x38($sp)
/* B12178 8009AFD8 03E00008 */  jr    $ra
/* B1217C 8009AFDC 27BD0078 */   addiu $sp, $sp, 0x78

/* B12180 8009AFE0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B12184 8009AFE4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B12188 8009AFE8 AFA40050 */  sw    $a0, 0x50($sp)
/* B1218C 8009AFEC 8C850000 */  lw    $a1, ($a0)
/* B12190 8009AFF0 3C068014 */  lui   $a2, %hi(D_8013F898) # $a2, 0x8014
/* B12194 8009AFF4 24C6F898 */  addiu $a2, %lo(D_8013F898) # addiu $a2, $a2, -0x768
/* B12198 8009AFF8 27A40038 */  addiu $a0, $sp, 0x38
/* B1219C 8009AFFC 24071572 */  li    $a3, 5490
/* B121A0 8009B000 0C031AB1 */  jal   func_800C6AC4
/* B121A4 8009B004 AFA50048 */   sw    $a1, 0x48($sp)
/* B121A8 8009B008 8FA80048 */  lw    $t0, 0x48($sp)
/* B121AC 8009B00C 8FAA0050 */  lw    $t2, 0x50($sp)
/* B121B0 8009B010 3C090001 */  lui   $t1, 1
/* B121B4 8009B014 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B121B8 8009B018 012A4821 */  addu  $t1, $t1, $t2
/* B121BC 8009B01C 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B121C0 8009B020 3C18DB06 */  lui   $t8, (0xDB060024 >> 16) # lui $t8, 0xdb06
/* B121C4 8009B024 244F0008 */  addiu $t7, $v0, 8
/* B121C8 8009B028 37180024 */  ori   $t8, (0xDB060024 & 0xFFFF) # ori $t8, $t8, 0x24
/* B121CC 8009B02C AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B121D0 8009B030 AC580000 */  sw    $t8, ($v0)
/* B121D4 8009B034 8D440000 */  lw    $a0, ($t2)
/* B121D8 8009B038 00093080 */  sll   $a2, $t1, 2
/* B121DC 8009B03C 24190020 */  li    $t9, 32
/* B121E0 8009B040 00C93023 */  subu  $a2, $a2, $t1
/* B121E4 8009B044 30C6007F */  andi  $a2, $a2, 0x7f
/* B121E8 8009B048 AFB90010 */  sw    $t9, 0x10($sp)
/* B121EC 8009B04C 00002825 */  move  $a1, $zero
/* B121F0 8009B050 24070020 */  li    $a3, 32
/* B121F4 8009B054 AFA80048 */  sw    $t0, 0x48($sp)
/* B121F8 8009B058 0C0253A7 */  jal   func_80094E9C
/* B121FC 8009B05C AFA20034 */   sw    $v0, 0x34($sp)
/* B12200 8009B060 8FA30034 */  lw    $v1, 0x34($sp)
/* B12204 8009B064 8FA80048 */  lw    $t0, 0x48($sp)
/* B12208 8009B068 3C0CDB06 */  lui   $t4, (0xDB060020 >> 16) # lui $t4, 0xdb06
/* B1220C 8009B06C AC620004 */  sw    $v0, 4($v1)
/* B12210 8009B070 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B12214 8009B074 358C0020 */  ori   $t4, (0xDB060020 & 0xFFFF) # ori $t4, $t4, 0x20
/* B12218 8009B078 3C0D8016 */  lui   $t5, %hi(D_8015E670) # $t5, 0x8016
/* B1221C 8009B07C 246B0008 */  addiu $t3, $v1, 8
/* B12220 8009B080 AD0B02D0 */  sw    $t3, 0x2d0($t0)
/* B12224 8009B084 AC6C0000 */  sw    $t4, ($v1)
/* B12228 8009B088 8DADE670 */  lw    $t5, %lo(D_8015E670)($t5)
/* B1222C 8009B08C 3C048013 */  lui   $a0, 0x8013
/* B12230 8009B090 3C0C8016 */  lui   $t4, 0x8016
/* B12234 8009B094 000D7080 */  sll   $t6, $t5, 2
/* B12238 8009B098 008E2021 */  addu  $a0, $a0, $t6
/* B1223C 8009B09C 8C84A328 */  lw    $a0, -0x5cd8($a0)
/* B12240 8009B0A0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B12244 8009B0A4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B12248 8009B0A8 0004C100 */  sll   $t8, $a0, 4
/* B1224C 8009B0AC 0018CF02 */  srl   $t9, $t8, 0x1c
/* B12250 8009B0B0 00195880 */  sll   $t3, $t9, 2
/* B12254 8009B0B4 018B6021 */  addu  $t4, $t4, $t3
/* B12258 8009B0B8 8D8C6FA8 */  lw    $t4, 0x6fa8($t4)
/* B1225C 8009B0BC 00817824 */  and   $t7, $a0, $at
/* B12260 8009B0C0 3C018000 */  lui   $at, 0x8000
/* B12264 8009B0C4 01EC6821 */  addu  $t5, $t7, $t4
/* B12268 8009B0C8 01A17021 */  addu  $t6, $t5, $at
/* B1226C 8009B0CC AC6E0004 */  sw    $t6, 4($v1)
/* B12270 8009B0D0 8FB80050 */  lw    $t8, 0x50($sp)
/* B12274 8009B0D4 3C068014 */  lui   $a2, %hi(D_8013F8AC) # $a2, 0x8014
/* B12278 8009B0D8 24C6F8AC */  addiu $a2, %lo(D_8013F8AC) # addiu $a2, $a2, -0x754
/* B1227C 8009B0DC 27A40038 */  addiu $a0, $sp, 0x38
/* B12280 8009B0E0 24071583 */  li    $a3, 5507
/* B12284 8009B0E4 0C031AD5 */  jal   func_800C6B54
/* B12288 8009B0E8 8F050000 */   lw    $a1, ($t8)
/* B1228C 8009B0EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B12290 8009B0F0 27BD0050 */  addiu $sp, $sp, 0x50
/* B12294 8009B0F4 03E00008 */  jr    $ra
/* B12298 8009B0F8 00000000 */   nop   

/* B1229C 8009B0FC 27BDFF48 */  addiu $sp, $sp, -0xb8
/* B122A0 8009B100 AFBF004C */  sw    $ra, 0x4c($sp)
/* B122A4 8009B104 AFB10048 */  sw    $s1, 0x48($sp)
/* B122A8 8009B108 AFB00044 */  sw    $s0, 0x44($sp)
/* B122AC 8009B10C 8C850000 */  lw    $a1, ($a0)
/* B122B0 8009B110 00808825 */  move  $s1, $a0
/* B122B4 8009B114 3C068014 */  lui   $a2, %hi(D_8013F8C0) # $a2, 0x8014
/* B122B8 8009B118 24C6F8C0 */  addiu $a2, %lo(D_8013F8C0) # addiu $a2, $a2, -0x740
/* B122BC 8009B11C 27A40098 */  addiu $a0, $sp, 0x98
/* B122C0 8009B120 2407159F */  li    $a3, 5535
/* B122C4 8009B124 0C031AB1 */  jal   func_800C6AC4
/* B122C8 8009B128 00A08025 */   move  $s0, $a1
/* B122CC 8009B12C 3C010001 */  lui   $at, 1
/* B122D0 8009B130 02211021 */  addu  $v0, $s1, $at
/* B122D4 8009B134 84431D32 */  lh    $v1, 0x1d32($v0)
/* B122D8 8009B138 3C08DB06 */  lui   $t0, (0xDB060020 >> 16) # lui $t0, 0xdb06
/* B122DC 8009B13C 35080020 */  ori   $t0, (0xDB060020 & 0xFFFF) # ori $t0, $t0, 0x20
/* B122E0 8009B140 00037203 */  sra   $t6, $v1, 8
/* B122E4 8009B144 31CF00FF */  andi  $t7, $t6, 0xff
/* B122E8 8009B148 307800FF */  andi  $t8, $v1, 0xff
/* B122EC 8009B14C AFAF00B0 */  sw    $t7, 0xb0($sp)
/* B122F0 8009B150 AFB800AC */  sw    $t8, 0xac($sp)
/* B122F4 8009B154 8C491DE4 */  lw    $t1, 0x1de4($v0)
/* B122F8 8009B158 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B122FC 8009B15C 3C0A8016 */  lui   $t2, %hi(D_8015E670) # $t2, 0x8016
/* B12300 8009B160 3C048013 */  lui   $a0, 0x8013
/* B12304 8009B164 24590008 */  addiu $t9, $v0, 8
/* B12308 8009B168 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B1230C 8009B16C AC480000 */  sw    $t0, ($v0)
/* B12310 8009B170 8D4AE670 */  lw    $t2, %lo(D_8015E670)($t2)
/* B12314 8009B174 3C188016 */  lui   $t8, 0x8016
/* B12318 8009B178 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1231C 8009B17C 000A5880 */  sll   $t3, $t2, 2
/* B12320 8009B180 008B2021 */  addu  $a0, $a0, $t3
/* B12324 8009B184 8C84A330 */  lw    $a0, -0x5cd0($a0)
/* B12328 8009B188 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1232C 8009B18C 00002825 */  move  $a1, $zero
/* B12330 8009B190 00046900 */  sll   $t5, $a0, 4
/* B12334 8009B194 000D7702 */  srl   $t6, $t5, 0x1c
/* B12338 8009B198 000E7880 */  sll   $t7, $t6, 2
/* B1233C 8009B19C 030FC021 */  addu  $t8, $t8, $t7
/* B12340 8009B1A0 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B12344 8009B1A4 00816024 */  and   $t4, $a0, $at
/* B12348 8009B1A8 3C018000 */  lui   $at, 0x8000
/* B1234C 8009B1AC 0198C821 */  addu  $t9, $t4, $t8
/* B12350 8009B1B0 03215021 */  addu  $t2, $t9, $at
/* B12354 8009B1B4 AC4A0004 */  sw    $t2, 4($v0)
/* B12358 8009B1B8 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B1235C 8009B1BC 24010001 */  li    $at, 1
/* B12360 8009B1C0 00003825 */  move  $a3, $zero
/* B12364 8009B1C4 1561001E */  bne   $t3, $at, .L8009B240
/* B12368 8009B1C8 01203025 */   move  $a2, $t1
/* B1236C 8009B1CC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12370 8009B1D0 240E0020 */  li    $t6, 32
/* B12374 8009B1D4 240F0020 */  li    $t7, 32
/* B12378 8009B1D8 244D0008 */  addiu $t5, $v0, 8
/* B1237C 8009B1DC AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B12380 8009B1E0 AC480000 */  sw    $t0, ($v0)
/* B12384 8009B1E4 8E240000 */  lw    $a0, ($s1)
/* B12388 8009B1E8 8FAA00AC */  lw    $t2, 0xac($sp)
/* B1238C 8009B1EC 240C0001 */  li    $t4, 1
/* B12390 8009B1F0 24180020 */  li    $t8, 32
/* B12394 8009B1F4 24190020 */  li    $t9, 32
/* B12398 8009B1F8 AFB90028 */  sw    $t9, 0x28($sp)
/* B1239C 8009B1FC AFB80024 */  sw    $t8, 0x24($sp)
/* B123A0 8009B200 AFAC0018 */  sw    $t4, 0x18($sp)
/* B123A4 8009B204 AFA900B4 */  sw    $t1, 0xb4($sp)
/* B123A8 8009B208 AFA90058 */  sw    $t1, 0x58($sp)
/* B123AC 8009B20C AFA00034 */  sw    $zero, 0x34($sp)
/* B123B0 8009B210 AFA00030 */  sw    $zero, 0x30($sp)
/* B123B4 8009B214 AFA0002C */  sw    $zero, 0x2c($sp)
/* B123B8 8009B218 AFA00020 */  sw    $zero, 0x20($sp)
/* B123BC 8009B21C AFA0001C */  sw    $zero, 0x1c($sp)
/* B123C0 8009B220 AFAF0014 */  sw    $t7, 0x14($sp)
/* B123C4 8009B224 AFAE0010 */  sw    $t6, 0x10($sp)
/* B123C8 8009B228 AFA20090 */  sw    $v0, 0x90($sp)
/* B123CC 8009B22C 0C02541A */  jal   func_80095068
/* B123D0 8009B230 AFAA0038 */   sw    $t2, 0x38($sp)
/* B123D4 8009B234 8FA30090 */  lw    $v1, 0x90($sp)
/* B123D8 8009B238 10000042 */  b     .L8009B344
/* B123DC 8009B23C AC620004 */   sw    $v0, 4($v1)
.L8009B240:
/* B123E0 8009B240 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B123E4 8009B244 00002825 */  move  $a1, $zero
/* B123E8 8009B248 01203025 */  move  $a2, $t1
/* B123EC 8009B24C 1D600021 */  bgtz  $t3, .L8009B2D4
/* B123F0 8009B250 00003825 */   move  $a3, $zero
/* B123F4 8009B254 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B123F8 8009B258 240E0020 */  li    $t6, 32
/* B123FC 8009B25C 240F0020 */  li    $t7, 32
/* B12400 8009B260 244D0008 */  addiu $t5, $v0, 8
/* B12404 8009B264 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B12408 8009B268 AC480000 */  sw    $t0, ($v0)
/* B1240C 8009B26C 8E240000 */  lw    $a0, ($s1)
/* B12410 8009B270 240C0001 */  li    $t4, 1
/* B12414 8009B274 24180020 */  li    $t8, 32
/* B12418 8009B278 24190020 */  li    $t9, 32
/* B1241C 8009B27C 240A00FF */  li    $t2, 255
/* B12420 8009B280 AFAA0038 */  sw    $t2, 0x38($sp)
/* B12424 8009B284 AFB90028 */  sw    $t9, 0x28($sp)
/* B12428 8009B288 AFB80024 */  sw    $t8, 0x24($sp)
/* B1242C 8009B28C AFAC0018 */  sw    $t4, 0x18($sp)
/* B12430 8009B290 AFA900B4 */  sw    $t1, 0xb4($sp)
/* B12434 8009B294 AFA90058 */  sw    $t1, 0x58($sp)
/* B12438 8009B298 AFA00034 */  sw    $zero, 0x34($sp)
/* B1243C 8009B29C AFA00030 */  sw    $zero, 0x30($sp)
/* B12440 8009B2A0 AFA0002C */  sw    $zero, 0x2c($sp)
/* B12444 8009B2A4 AFA00020 */  sw    $zero, 0x20($sp)
/* B12448 8009B2A8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1244C 8009B2AC AFAF0014 */  sw    $t7, 0x14($sp)
/* B12450 8009B2B0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B12454 8009B2B4 00002825 */  move  $a1, $zero
/* B12458 8009B2B8 01203025 */  move  $a2, $t1
/* B1245C 8009B2BC 00003825 */  move  $a3, $zero
/* B12460 8009B2C0 0C02541A */  jal   func_80095068
/* B12464 8009B2C4 AFA2008C */   sw    $v0, 0x8c($sp)
/* B12468 8009B2C8 8FA3008C */  lw    $v1, 0x8c($sp)
/* B1246C 8009B2CC 1000001D */  b     .L8009B344
/* B12470 8009B2D0 AC620004 */   sw    $v0, 4($v1)
.L8009B2D4:
/* B12474 8009B2D4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12478 8009B2D8 240D0020 */  li    $t5, 32
/* B1247C 8009B2DC 240E0020 */  li    $t6, 32
/* B12480 8009B2E0 244B0008 */  addiu $t3, $v0, 8
/* B12484 8009B2E4 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B12488 8009B2E8 AC480000 */  sw    $t0, ($v0)
/* B1248C 8009B2EC 8E240000 */  lw    $a0, ($s1)
/* B12490 8009B2F0 240F0001 */  li    $t7, 1
/* B12494 8009B2F4 240C0020 */  li    $t4, 32
/* B12498 8009B2F8 24180020 */  li    $t8, 32
/* B1249C 8009B2FC 241900A0 */  li    $t9, 160
/* B124A0 8009B300 AFB90038 */  sw    $t9, 0x38($sp)
/* B124A4 8009B304 AFB80028 */  sw    $t8, 0x28($sp)
/* B124A8 8009B308 AFAC0024 */  sw    $t4, 0x24($sp)
/* B124AC 8009B30C AFAF0018 */  sw    $t7, 0x18($sp)
/* B124B0 8009B310 AFA900B4 */  sw    $t1, 0xb4($sp)
/* B124B4 8009B314 AFA90058 */  sw    $t1, 0x58($sp)
/* B124B8 8009B318 AFA00034 */  sw    $zero, 0x34($sp)
/* B124BC 8009B31C AFA00030 */  sw    $zero, 0x30($sp)
/* B124C0 8009B320 AFA0002C */  sw    $zero, 0x2c($sp)
/* B124C4 8009B324 AFA00020 */  sw    $zero, 0x20($sp)
/* B124C8 8009B328 AFA0001C */  sw    $zero, 0x1c($sp)
/* B124CC 8009B32C AFAE0014 */  sw    $t6, 0x14($sp)
/* B124D0 8009B330 AFAD0010 */  sw    $t5, 0x10($sp)
/* B124D4 8009B334 0C02541A */  jal   func_80095068
/* B124D8 8009B338 AFA20088 */   sw    $v0, 0x88($sp)
/* B124DC 8009B33C 8FA30088 */  lw    $v1, 0x88($sp)
/* B124E0 8009B340 AC620004 */  sw    $v0, 4($v1)
.L8009B344:
/* B124E4 8009B344 8FAA00B0 */  lw    $t2, 0xb0($sp)
/* B124E8 8009B348 24010002 */  li    $at, 2
/* B124EC 8009B34C 3C0DDB06 */  lui   $t5, (0xDB060024 >> 16) # lui $t5, 0xdb06
/* B124F0 8009B350 15410020 */  bne   $t2, $at, .L8009B3D4
/* B124F4 8009B354 8FAB00B0 */   lw    $t3, 0xb0($sp)
/* B124F8 8009B358 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B124FC 8009B35C 35AD0024 */  ori   $t5, (0xDB060024 & 0xFFFF) # ori $t5, $t5, 0x24
/* B12500 8009B360 240E0020 */  li    $t6, 32
/* B12504 8009B364 244B0008 */  addiu $t3, $v0, 8
/* B12508 8009B368 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B1250C 8009B36C AC4D0000 */  sw    $t5, ($v0)
/* B12510 8009B370 8E240000 */  lw    $a0, ($s1)
/* B12514 8009B374 8FAA00AC */  lw    $t2, 0xac($sp)
/* B12518 8009B378 240F0020 */  li    $t7, 32
/* B1251C 8009B37C 240C0001 */  li    $t4, 1
/* B12520 8009B380 24180020 */  li    $t8, 32
/* B12524 8009B384 24190020 */  li    $t9, 32
/* B12528 8009B388 AFB90028 */  sw    $t9, 0x28($sp)
/* B1252C 8009B38C AFB80024 */  sw    $t8, 0x24($sp)
/* B12530 8009B390 AFAC0018 */  sw    $t4, 0x18($sp)
/* B12534 8009B394 AFAF0014 */  sw    $t7, 0x14($sp)
/* B12538 8009B398 AFA00034 */  sw    $zero, 0x34($sp)
/* B1253C 8009B39C AFA00030 */  sw    $zero, 0x30($sp)
/* B12540 8009B3A0 AFA0002C */  sw    $zero, 0x2c($sp)
/* B12544 8009B3A4 AFA00020 */  sw    $zero, 0x20($sp)
/* B12548 8009B3A8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1254C 8009B3AC AFAE0010 */  sw    $t6, 0x10($sp)
/* B12550 8009B3B0 8FA60058 */  lw    $a2, 0x58($sp)
/* B12554 8009B3B4 00002825 */  move  $a1, $zero
/* B12558 8009B3B8 00003825 */  move  $a3, $zero
/* B1255C 8009B3BC AFA20084 */  sw    $v0, 0x84($sp)
/* B12560 8009B3C0 0C02541A */  jal   func_80095068
/* B12564 8009B3C4 AFAA0038 */   sw    $t2, 0x38($sp)
/* B12568 8009B3C8 8FA30084 */  lw    $v1, 0x84($sp)
/* B1256C 8009B3CC 10000042 */  b     .L8009B4D8
/* B12570 8009B3D0 AC620004 */   sw    $v0, 4($v1)
.L8009B3D4:
/* B12574 8009B3D4 29610002 */  slti  $at, $t3, 2
/* B12578 8009B3D8 10200021 */  beqz  $at, .L8009B460
/* B1257C 8009B3DC 3C0EDB06 */   lui   $t6, 0xdb06
/* B12580 8009B3E0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12584 8009B3E4 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B12588 8009B3E8 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B1258C 8009B3EC 244D0008 */  addiu $t5, $v0, 8
/* B12590 8009B3F0 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B12594 8009B3F4 AC4E0000 */  sw    $t6, ($v0)
/* B12598 8009B3F8 8E240000 */  lw    $a0, ($s1)
/* B1259C 8009B3FC 240F0020 */  li    $t7, 32
/* B125A0 8009B400 240C0020 */  li    $t4, 32
/* B125A4 8009B404 24180001 */  li    $t8, 1
/* B125A8 8009B408 24190020 */  li    $t9, 32
/* B125AC 8009B40C 240A0020 */  li    $t2, 32
/* B125B0 8009B410 240B00FF */  li    $t3, 255
/* B125B4 8009B414 AFAB0038 */  sw    $t3, 0x38($sp)
/* B125B8 8009B418 AFAA0028 */  sw    $t2, 0x28($sp)
/* B125BC 8009B41C AFB90024 */  sw    $t9, 0x24($sp)
/* B125C0 8009B420 AFB80018 */  sw    $t8, 0x18($sp)
/* B125C4 8009B424 AFAC0014 */  sw    $t4, 0x14($sp)
/* B125C8 8009B428 AFAF0010 */  sw    $t7, 0x10($sp)
/* B125CC 8009B42C AFA00034 */  sw    $zero, 0x34($sp)
/* B125D0 8009B430 AFA00030 */  sw    $zero, 0x30($sp)
/* B125D4 8009B434 AFA0002C */  sw    $zero, 0x2c($sp)
/* B125D8 8009B438 AFA00020 */  sw    $zero, 0x20($sp)
/* B125DC 8009B43C AFA0001C */  sw    $zero, 0x1c($sp)
/* B125E0 8009B440 8FA60058 */  lw    $a2, 0x58($sp)
/* B125E4 8009B444 00002825 */  move  $a1, $zero
/* B125E8 8009B448 00003825 */  move  $a3, $zero
/* B125EC 8009B44C 0C02541A */  jal   func_80095068
/* B125F0 8009B450 AFA20080 */   sw    $v0, 0x80($sp)
/* B125F4 8009B454 8FA30080 */  lw    $v1, 0x80($sp)
/* B125F8 8009B458 1000001F */  b     .L8009B4D8
/* B125FC 8009B45C AC620004 */   sw    $v0, 4($v1)
.L8009B460:
/* B12600 8009B460 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12604 8009B464 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B12608 8009B468 240F0020 */  li    $t7, 32
/* B1260C 8009B46C 244D0008 */  addiu $t5, $v0, 8
/* B12610 8009B470 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B12614 8009B474 AC4E0000 */  sw    $t6, ($v0)
/* B12618 8009B478 8E240000 */  lw    $a0, ($s1)
/* B1261C 8009B47C 240C0020 */  li    $t4, 32
/* B12620 8009B480 24180001 */  li    $t8, 1
/* B12624 8009B484 24190020 */  li    $t9, 32
/* B12628 8009B488 240A0020 */  li    $t2, 32
/* B1262C 8009B48C 240B00A0 */  li    $t3, 160
/* B12630 8009B490 AFAB0038 */  sw    $t3, 0x38($sp)
/* B12634 8009B494 AFAA0028 */  sw    $t2, 0x28($sp)
/* B12638 8009B498 AFB90024 */  sw    $t9, 0x24($sp)
/* B1263C 8009B49C AFB80018 */  sw    $t8, 0x18($sp)
/* B12640 8009B4A0 AFAC0014 */  sw    $t4, 0x14($sp)
/* B12644 8009B4A4 AFA00034 */  sw    $zero, 0x34($sp)
/* B12648 8009B4A8 AFA00030 */  sw    $zero, 0x30($sp)
/* B1264C 8009B4AC AFA0002C */  sw    $zero, 0x2c($sp)
/* B12650 8009B4B0 AFA00020 */  sw    $zero, 0x20($sp)
/* B12654 8009B4B4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B12658 8009B4B8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B1265C 8009B4BC 8FA60058 */  lw    $a2, 0x58($sp)
/* B12660 8009B4C0 00002825 */  move  $a1, $zero
/* B12664 8009B4C4 00003825 */  move  $a3, $zero
/* B12668 8009B4C8 0C02541A */  jal   func_80095068
/* B1266C 8009B4CC AFA2007C */   sw    $v0, 0x7c($sp)
/* B12670 8009B4D0 8FA3007C */  lw    $v1, 0x7c($sp)
/* B12674 8009B4D4 AC620004 */  sw    $v0, 4($v1)
.L8009B4D8:
/* B12678 8009B4D8 8FAD00B0 */  lw    $t5, 0xb0($sp)
/* B1267C 8009B4DC 3C0FDB06 */  lui   $t7, (0xDB060028 >> 16) # lui $t7, 0xdb06
/* B12680 8009B4E0 35EF0028 */  ori   $t7, (0xDB060028 & 0xFFFF) # ori $t7, $t7, 0x28
/* B12684 8009B4E4 11A00040 */  beqz  $t5, .L8009B5E8
/* B12688 8009B4E8 00002825 */   move  $a1, $zero
/* B1268C 8009B4EC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12690 8009B4F0 240C0020 */  li    $t4, 32
/* B12694 8009B4F4 24180020 */  li    $t8, 32
/* B12698 8009B4F8 244E0008 */  addiu $t6, $v0, 8
/* B1269C 8009B4FC AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B126A0 8009B500 AC4F0000 */  sw    $t7, ($v0)
/* B126A4 8009B504 8E240000 */  lw    $a0, ($s1)
/* B126A8 8009B508 24190001 */  li    $t9, 1
/* B126AC 8009B50C 240A0020 */  li    $t2, 32
/* B126B0 8009B510 240B0020 */  li    $t3, 32
/* B126B4 8009B514 240D00A0 */  li    $t5, 160
/* B126B8 8009B518 AFAD0038 */  sw    $t5, 0x38($sp)
/* B126BC 8009B51C AFAB0028 */  sw    $t3, 0x28($sp)
/* B126C0 8009B520 AFAA0024 */  sw    $t2, 0x24($sp)
/* B126C4 8009B524 AFB90018 */  sw    $t9, 0x18($sp)
/* B126C8 8009B528 AFA00034 */  sw    $zero, 0x34($sp)
/* B126CC 8009B52C AFA00030 */  sw    $zero, 0x30($sp)
/* B126D0 8009B530 AFA0002C */  sw    $zero, 0x2c($sp)
/* B126D4 8009B534 AFA00020 */  sw    $zero, 0x20($sp)
/* B126D8 8009B538 AFA0001C */  sw    $zero, 0x1c($sp)
/* B126DC 8009B53C AFB80014 */  sw    $t8, 0x14($sp)
/* B126E0 8009B540 AFAC0010 */  sw    $t4, 0x10($sp)
/* B126E4 8009B544 8FA60058 */  lw    $a2, 0x58($sp)
/* B126E8 8009B548 00003825 */  move  $a3, $zero
/* B126EC 8009B54C 0C02541A */  jal   func_80095068
/* B126F0 8009B550 AFA20078 */   sw    $v0, 0x78($sp)
/* B126F4 8009B554 8FA30078 */  lw    $v1, 0x78($sp)
/* B126F8 8009B558 3C0FDB06 */  lui   $t7, (0xDB06002C >> 16) # lui $t7, 0xdb06
/* B126FC 8009B55C 35EF002C */  ori   $t7, (0xDB06002C & 0xFFFF) # ori $t7, $t7, 0x2c
/* B12700 8009B560 AC620004 */  sw    $v0, 4($v1)
/* B12704 8009B564 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12708 8009B568 240C0020 */  li    $t4, 32
/* B1270C 8009B56C 24180020 */  li    $t8, 32
/* B12710 8009B570 244E0008 */  addiu $t6, $v0, 8
/* B12714 8009B574 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B12718 8009B578 AC4F0000 */  sw    $t7, ($v0)
/* B1271C 8009B57C 8E240000 */  lw    $a0, ($s1)
/* B12720 8009B580 8FA600B4 */  lw    $a2, 0xb4($sp)
/* B12724 8009B584 24190001 */  li    $t9, 1
/* B12728 8009B588 240A0020 */  li    $t2, 32
/* B1272C 8009B58C 00C00821 */  addu  $at, $a2, $zero
/* B12730 8009B590 240B0020 */  li    $t3, 32
/* B12734 8009B594 240D00B4 */  li    $t5, 180
/* B12738 8009B598 00063080 */  sll   $a2, $a2, 2
/* B1273C 8009B59C 00C13023 */  subu  $a2, $a2, $at
/* B12740 8009B5A0 AFAD0038 */  sw    $t5, 0x38($sp)
/* B12744 8009B5A4 AFAB0028 */  sw    $t3, 0x28($sp)
/* B12748 8009B5A8 AFAA0024 */  sw    $t2, 0x24($sp)
/* B1274C 8009B5AC AFB90018 */  sw    $t9, 0x18($sp)
/* B12750 8009B5B0 AFA00034 */  sw    $zero, 0x34($sp)
/* B12754 8009B5B4 AFA00030 */  sw    $zero, 0x30($sp)
/* B12758 8009B5B8 AFA0002C */  sw    $zero, 0x2c($sp)
/* B1275C 8009B5BC AFA00020 */  sw    $zero, 0x20($sp)
/* B12760 8009B5C0 AFA0001C */  sw    $zero, 0x1c($sp)
/* B12764 8009B5C4 AFB80014 */  sw    $t8, 0x14($sp)
/* B12768 8009B5C8 AFAC0010 */  sw    $t4, 0x10($sp)
/* B1276C 8009B5CC 00002825 */  move  $a1, $zero
/* B12770 8009B5D0 00003825 */  move  $a3, $zero
/* B12774 8009B5D4 0C02541A */  jal   func_80095068
/* B12778 8009B5D8 AFA20074 */   sw    $v0, 0x74($sp)
/* B1277C 8009B5DC 8FA30074 */  lw    $v1, 0x74($sp)
/* B12780 8009B5E0 10000056 */  b     .L8009B73C
/* B12784 8009B5E4 AC620004 */   sw    $v0, 4($v1)
.L8009B5E8:
/* B12788 8009B5E8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1278C 8009B5EC 3C0FDB06 */  lui   $t7, (0xDB060028 >> 16) # lui $t7, 0xdb06
/* B12790 8009B5F0 35EF0028 */  ori   $t7, (0xDB060028 & 0xFFFF) # ori $t7, $t7, 0x28
/* B12794 8009B5F4 244E0008 */  addiu $t6, $v0, 8
/* B12798 8009B5F8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B1279C 8009B5FC AC4F0000 */  sw    $t7, ($v0)
/* B127A0 8009B600 8FAD00AC */  lw    $t5, 0xac($sp)
/* B127A4 8009B604 3C014348 */  li    $at, 0x43480000 # 0.000000
/* B127A8 8009B608 44814000 */  mtc1  $at, $f8
/* B127AC 8009B60C 448D2000 */  mtc1  $t5, $f4
/* B127B0 8009B610 3C0142BE */  li    $at, 0x42BE0000 # 0.000000
/* B127B4 8009B614 44815000 */  mtc1  $at, $f10
/* B127B8 8009B618 468021A0 */  cvt.s.w $f6, $f4
/* B127BC 8009B61C 8E240000 */  lw    $a0, ($s1)
/* B127C0 8009B620 240C0020 */  li    $t4, 32
/* B127C4 8009B624 8FA60058 */  lw    $a2, 0x58($sp)
/* B127C8 8009B628 AFAC0010 */  sw    $t4, 0x10($sp)
/* B127CC 8009B62C 24180020 */  li    $t8, 32
/* B127D0 8009B630 46083003 */  div.s $f0, $f6, $f8
/* B127D4 8009B634 24190001 */  li    $t9, 1
/* B127D8 8009B638 240A0020 */  li    $t2, 32
/* B127DC 8009B63C 240B0020 */  li    $t3, 32
/* B127E0 8009B640 AFAB0028 */  sw    $t3, 0x28($sp)
/* B127E4 8009B644 AFAA0024 */  sw    $t2, 0x24($sp)
/* B127E8 8009B648 AFB90018 */  sw    $t9, 0x18($sp)
/* B127EC 8009B64C AFB80014 */  sw    $t8, 0x14($sp)
/* B127F0 8009B650 AFA00034 */  sw    $zero, 0x34($sp)
/* B127F4 8009B654 AFA00030 */  sw    $zero, 0x30($sp)
/* B127F8 8009B658 AFA0002C */  sw    $zero, 0x2c($sp)
/* B127FC 8009B65C AFA00020 */  sw    $zero, 0x20($sp)
/* B12800 8009B660 AFA0001C */  sw    $zero, 0x1c($sp)
/* B12804 8009B664 00002825 */  move  $a1, $zero
/* B12808 8009B668 00003825 */  move  $a3, $zero
/* B1280C 8009B66C AFA20070 */  sw    $v0, 0x70($sp)
/* B12810 8009B670 30C6007F */  andi  $a2, $a2, 0x7f
/* B12814 8009B674 460A0402 */  mul.s $f16, $f0, $f10
/* B12818 8009B678 E7A00054 */  swc1  $f0, 0x54($sp)
/* B1281C 8009B67C 4600848D */  trunc.w.s $f18, $f16
/* B12820 8009B680 440F9000 */  mfc1  $t7, $f18
/* B12824 8009B684 00000000 */  nop   
/* B12828 8009B688 25EC00A0 */  addiu $t4, $t7, 0xa0
/* B1282C 8009B68C 0C02541A */  jal   func_80095068
/* B12830 8009B690 AFAC0038 */   sw    $t4, 0x38($sp)
/* B12834 8009B694 8FA30070 */  lw    $v1, 0x70($sp)
/* B12838 8009B698 C7A00054 */  lwc1  $f0, 0x54($sp)
/* B1283C 8009B69C 3C19DB06 */  lui   $t9, (0xDB06002C >> 16) # lui $t9, 0xdb06
/* B12840 8009B6A0 AC620004 */  sw    $v0, 4($v1)
/* B12844 8009B6A4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12848 8009B6A8 3739002C */  ori   $t9, (0xDB06002C & 0xFFFF) # ori $t9, $t9, 0x2c
/* B1284C 8009B6AC 240A0020 */  li    $t2, 32
/* B12850 8009B6B0 24580008 */  addiu $t8, $v0, 8
/* B12854 8009B6B4 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B12858 8009B6B8 AC590000 */  sw    $t9, ($v0)
/* B1285C 8009B6BC 8FA600B4 */  lw    $a2, 0xb4($sp)
/* B12860 8009B6C0 8E240000 */  lw    $a0, ($s1)
/* B12864 8009B6C4 240B0020 */  li    $t3, 32
/* B12868 8009B6C8 00C00821 */  addu  $at, $a2, $zero
/* B1286C 8009B6CC 00063080 */  sll   $a2, $a2, 2
/* B12870 8009B6D0 00C13023 */  subu  $a2, $a2, $at
/* B12874 8009B6D4 3C01428C */  li    $at, 0x428C0000 # 0.000000
/* B12878 8009B6D8 44812000 */  mtc1  $at, $f4
/* B1287C 8009B6DC 240D0001 */  li    $t5, 1
/* B12880 8009B6E0 240E0020 */  li    $t6, 32
/* B12884 8009B6E4 46040182 */  mul.s $f6, $f0, $f4
/* B12888 8009B6E8 240F0020 */  li    $t7, 32
/* B1288C 8009B6EC AFAF0028 */  sw    $t7, 0x28($sp)
/* B12890 8009B6F0 AFAE0024 */  sw    $t6, 0x24($sp)
/* B12894 8009B6F4 AFAD0018 */  sw    $t5, 0x18($sp)
/* B12898 8009B6F8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B1289C 8009B6FC AFA00034 */  sw    $zero, 0x34($sp)
/* B128A0 8009B700 4600320D */  trunc.w.s $f8, $f6
/* B128A4 8009B704 AFA00030 */  sw    $zero, 0x30($sp)
/* B128A8 8009B708 AFA0002C */  sw    $zero, 0x2c($sp)
/* B128AC 8009B70C AFA00020 */  sw    $zero, 0x20($sp)
/* B128B0 8009B710 44184000 */  mfc1  $t8, $f8
/* B128B4 8009B714 AFA0001C */  sw    $zero, 0x1c($sp)
/* B128B8 8009B718 AFAA0010 */  sw    $t2, 0x10($sp)
/* B128BC 8009B71C 271900B9 */  addiu $t9, $t8, 0xb9
/* B128C0 8009B720 AFB90038 */  sw    $t9, 0x38($sp)
/* B128C4 8009B724 00002825 */  move  $a1, $zero
/* B128C8 8009B728 00003825 */  move  $a3, $zero
/* B128CC 8009B72C 0C02541A */  jal   func_80095068
/* B128D0 8009B730 AFA2006C */   sw    $v0, 0x6c($sp)
/* B128D4 8009B734 8FA3006C */  lw    $v1, 0x6c($sp)
/* B128D8 8009B738 AC620004 */  sw    $v0, 4($v1)
.L8009B73C:
/* B128DC 8009B73C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B128E0 8009B740 8FA60058 */  lw    $a2, 0x58($sp)
/* B128E4 8009B744 3C0BDB06 */  lui   $t3, (0xDB060030 >> 16) # lui $t3, 0xdb06
/* B128E8 8009B748 244A0008 */  addiu $t2, $v0, 8
/* B128EC 8009B74C AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* B128F0 8009B750 356B0030 */  ori   $t3, (0xDB060030 & 0xFFFF) # ori $t3, $t3, 0x30
/* B128F4 8009B754 AC4B0000 */  sw    $t3, ($v0)
/* B128F8 8009B758 8E240000 */  lw    $a0, ($s1)
/* B128FC 8009B75C 240C007F */  li    $t4, 127
/* B12900 8009B760 240B0080 */  li    $t3, 128
/* B12904 8009B764 240A0020 */  li    $t2, 32
/* B12908 8009B768 240D0020 */  li    $t5, 32
/* B1290C 8009B76C 240E0020 */  li    $t6, 32
/* B12910 8009B770 240F0001 */  li    $t7, 1
/* B12914 8009B774 24190020 */  li    $t9, 32
/* B12918 8009B778 0186C023 */  subu  $t8, $t4, $a2
/* B1291C 8009B77C AFB80020 */  sw    $t8, 0x20($sp)
/* B12920 8009B780 AFB90024 */  sw    $t9, 0x24($sp)
/* B12924 8009B784 AFAF0018 */  sw    $t7, 0x18($sp)
/* B12928 8009B788 AFAE0014 */  sw    $t6, 0x14($sp)
/* B1292C 8009B78C AFAD0010 */  sw    $t5, 0x10($sp)
/* B12930 8009B790 AFAA0028 */  sw    $t2, 0x28($sp)
/* B12934 8009B794 AFAB0038 */  sw    $t3, 0x38($sp)
/* B12938 8009B798 AFA00034 */  sw    $zero, 0x34($sp)
/* B1293C 8009B79C AFA00030 */  sw    $zero, 0x30($sp)
/* B12940 8009B7A0 AFA0002C */  sw    $zero, 0x2c($sp)
/* B12944 8009B7A4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B12948 8009B7A8 00002825 */  move  $a1, $zero
/* B1294C 8009B7AC AFA20068 */  sw    $v0, 0x68($sp)
/* B12950 8009B7B0 0C02541A */  jal   func_80095068
/* B12954 8009B7B4 00C03825 */   move  $a3, $a2
/* B12958 8009B7B8 8FA30068 */  lw    $v1, 0x68($sp)
/* B1295C 8009B7BC 3C0EDB06 */  lui   $t6, (0xDB060034 >> 16) # lui $t6, 0xdb06
/* B12960 8009B7C0 35CE0034 */  ori   $t6, (0xDB060034 & 0xFFFF) # ori $t6, $t6, 0x34
/* B12964 8009B7C4 AC620004 */  sw    $v0, 4($v1)
/* B12968 8009B7C8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1296C 8009B7CC 240F0020 */  li    $t7, 32
/* B12970 8009B7D0 240C0020 */  li    $t4, 32
/* B12974 8009B7D4 244D0008 */  addiu $t5, $v0, 8
/* B12978 8009B7D8 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B1297C 8009B7DC AC4E0000 */  sw    $t6, ($v0)
/* B12980 8009B7E0 8E240000 */  lw    $a0, ($s1)
/* B12984 8009B7E4 8FA600B4 */  lw    $a2, 0xb4($sp)
/* B12988 8009B7E8 24180001 */  li    $t8, 1
/* B1298C 8009B7EC 24190020 */  li    $t9, 32
/* B12990 8009B7F0 240A0020 */  li    $t2, 32
/* B12994 8009B7F4 240B0080 */  li    $t3, 128
/* B12998 8009B7F8 00063080 */  sll   $a2, $a2, 2
/* B1299C 8009B7FC AFA6001C */  sw    $a2, 0x1c($sp)
/* B129A0 8009B800 AFAB0038 */  sw    $t3, 0x38($sp)
/* B129A4 8009B804 AFAA0028 */  sw    $t2, 0x28($sp)
/* B129A8 8009B808 AFB90024 */  sw    $t9, 0x24($sp)
/* B129AC 8009B80C AFB80018 */  sw    $t8, 0x18($sp)
/* B129B0 8009B810 AFA00034 */  sw    $zero, 0x34($sp)
/* B129B4 8009B814 AFA00030 */  sw    $zero, 0x30($sp)
/* B129B8 8009B818 AFA0002C */  sw    $zero, 0x2c($sp)
/* B129BC 8009B81C AFA00020 */  sw    $zero, 0x20($sp)
/* B129C0 8009B820 AFAC0014 */  sw    $t4, 0x14($sp)
/* B129C4 8009B824 AFAF0010 */  sw    $t7, 0x10($sp)
/* B129C8 8009B828 00002825 */  move  $a1, $zero
/* B129CC 8009B82C 00003825 */  move  $a3, $zero
/* B129D0 8009B830 0C02541A */  jal   func_80095068
/* B129D4 8009B834 AFA20064 */   sw    $v0, 0x64($sp)
/* B129D8 8009B838 8FA30064 */  lw    $v1, 0x64($sp)
/* B129DC 8009B83C 3C068014 */  lui   $a2, %hi(D_8013F8D4) # $a2, 0x8014
/* B129E0 8009B840 24C6F8D4 */  addiu $a2, %lo(D_8013F8D4) # addiu $a2, $a2, -0x72c
/* B129E4 8009B844 AC620004 */  sw    $v0, 4($v1)
/* B129E8 8009B848 8E250000 */  lw    $a1, ($s1)
/* B129EC 8009B84C 27A40098 */  addiu $a0, $sp, 0x98
/* B129F0 8009B850 0C031AD5 */  jal   func_800C6B54
/* B129F4 8009B854 2407160C */   li    $a3, 5644
/* B129F8 8009B858 8FBF004C */  lw    $ra, 0x4c($sp)
/* B129FC 8009B85C 8FB00044 */  lw    $s0, 0x44($sp)
/* B12A00 8009B860 8FB10048 */  lw    $s1, 0x48($sp)
/* B12A04 8009B864 03E00008 */  jr    $ra
/* B12A08 8009B868 27BD00B8 */   addiu $sp, $sp, 0xb8

/* B12A0C 8009B86C 27BDFF90 */  addiu $sp, $sp, -0x70
/* B12A10 8009B870 AFBF0034 */  sw    $ra, 0x34($sp)
/* B12A14 8009B874 AFA40070 */  sw    $a0, 0x70($sp)
/* B12A18 8009B878 8C850000 */  lw    $a1, ($a0)
/* B12A1C 8009B87C 3C068014 */  lui   $a2, %hi(D_8013F8E8) # $a2, 0x8014
/* B12A20 8009B880 24C6F8E8 */  addiu $a2, %lo(D_8013F8E8) # addiu $a2, $a2, -0x718
/* B12A24 8009B884 27A40058 */  addiu $a0, $sp, 0x58
/* B12A28 8009B888 2407169F */  li    $a3, 5791
/* B12A2C 8009B88C 0C031AB1 */  jal   func_800C6AC4
/* B12A30 8009B890 AFA50068 */   sw    $a1, 0x68($sp)
/* B12A34 8009B894 8FA80068 */  lw    $t0, 0x68($sp)
/* B12A38 8009B898 8FAB0070 */  lw    $t3, 0x70($sp)
/* B12A3C 8009B89C 3C010001 */  lui   $at, 1
/* B12A40 8009B8A0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B12A44 8009B8A4 01615021 */  addu  $t2, $t3, $at
/* B12A48 8009B8A8 8D461DE4 */  lw    $a2, 0x1de4($t2)
/* B12A4C 8009B8AC 244F0008 */  addiu $t7, $v0, 8
/* B12A50 8009B8B0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B12A54 8009B8B4 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B12A58 8009B8B8 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B12A5C 8009B8BC AC580000 */  sw    $t8, ($v0)
/* B12A60 8009B8C0 8D640000 */  lw    $a0, ($t3)
/* B12A64 8009B8C4 240F0020 */  li    $t7, 32
/* B12A68 8009B8C8 24190020 */  li    $t9, 32
/* B12A6C 8009B8CC 240C0020 */  li    $t4, 32
/* B12A70 8009B8D0 240D0001 */  li    $t5, 1
/* B12A74 8009B8D4 240E0020 */  li    $t6, 32
/* B12A78 8009B8D8 AFAE0024 */  sw    $t6, 0x24($sp)
/* B12A7C 8009B8DC AFAD0018 */  sw    $t5, 0x18($sp)
/* B12A80 8009B8E0 AFAC0014 */  sw    $t4, 0x14($sp)
/* B12A84 8009B8E4 AFB90010 */  sw    $t9, 0x10($sp)
/* B12A88 8009B8E8 AFAF0028 */  sw    $t7, 0x28($sp)
/* B12A8C 8009B8EC AFAA0040 */  sw    $t2, 0x40($sp)
/* B12A90 8009B8F0 AFA00020 */  sw    $zero, 0x20($sp)
/* B12A94 8009B8F4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B12A98 8009B8F8 00002825 */  move  $a1, $zero
/* B12A9C 8009B8FC 00003825 */  move  $a3, $zero
/* B12AA0 8009B900 AFA80068 */  sw    $t0, 0x68($sp)
/* B12AA4 8009B904 0C0253D0 */  jal   func_80094F40
/* B12AA8 8009B908 AFA20054 */   sw    $v0, 0x54($sp)
/* B12AAC 8009B90C 8FA30054 */  lw    $v1, 0x54($sp)
/* B12AB0 8009B910 8FA80068 */  lw    $t0, 0x68($sp)
/* B12AB4 8009B914 8FAA0040 */  lw    $t2, 0x40($sp)
/* B12AB8 8009B918 AC620004 */  sw    $v0, 4($v1)
/* B12ABC 8009B91C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B12AC0 8009B920 3C04E700 */  lui   $a0, 0xe700
/* B12AC4 8009B924 3C05FB00 */  lui   $a1, 0xfb00
/* B12AC8 8009B928 24580008 */  addiu $t8, $v0, 8
/* B12ACC 8009B92C AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B12AD0 8009B930 AC400004 */  sw    $zero, 4($v0)
/* B12AD4 8009B934 AC440000 */  sw    $a0, ($v0)
/* B12AD8 8009B938 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B12ADC 8009B93C 3C018080 */  lui   $at, (0x80808000 >> 16) # lui $at, 0x8080
/* B12AE0 8009B940 34218000 */  ori   $at, (0x80808000 & 0xFFFF) # ori $at, $at, 0x8000
/* B12AE4 8009B944 24590008 */  addiu $t9, $v0, 8
/* B12AE8 8009B948 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B12AEC 8009B94C AC450000 */  sw    $a1, ($v0)
/* B12AF0 8009B950 854C1D30 */  lh    $t4, 0x1d30($t2)
/* B12AF4 8009B954 3C198080 */  lui   $t9, (0x80808091 >> 16) # lui $t9, 0x8080
/* B12AF8 8009B958 37398091 */  ori   $t9, (0x80808091 & 0xFFFF) # ori $t9, $t9, 0x8091
/* B12AFC 8009B95C 318D00FF */  andi  $t5, $t4, 0xff
/* B12B00 8009B960 01A17025 */  or    $t6, $t5, $at
/* B12B04 8009B964 AC4E0004 */  sw    $t6, 4($v0)
/* B12B08 8009B968 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B12B0C 8009B96C 3C068014 */  lui   $a2, %hi(D_8013F8FC) # $a2, 0x8014
/* B12B10 8009B970 24C6F8FC */  addiu $a2, %lo(D_8013F8FC) # addiu $a2, $a2, -0x704
/* B12B14 8009B974 246F0008 */  addiu $t7, $v1, 8
/* B12B18 8009B978 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B12B1C 8009B97C AC600004 */  sw    $zero, 4($v1)
/* B12B20 8009B980 AC640000 */  sw    $a0, ($v1)
/* B12B24 8009B984 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B12B28 8009B988 27A40058 */  addiu $a0, $sp, 0x58
/* B12B2C 8009B98C 240716B0 */  li    $a3, 5808
/* B12B30 8009B990 24780008 */  addiu $t8, $v1, 8
/* B12B34 8009B994 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B12B38 8009B998 AC790004 */  sw    $t9, 4($v1)
/* B12B3C 8009B99C AC650000 */  sw    $a1, ($v1)
/* B12B40 8009B9A0 8FAC0070 */  lw    $t4, 0x70($sp)
/* B12B44 8009B9A4 0C031AD5 */  jal   func_800C6B54
/* B12B48 8009B9A8 8D850000 */   lw    $a1, ($t4)
/* B12B4C 8009B9AC 8FBF0034 */  lw    $ra, 0x34($sp)
/* B12B50 8009B9B0 27BD0070 */  addiu $sp, $sp, 0x70
/* B12B54 8009B9B4 03E00008 */  jr    $ra
/* B12B58 8009B9B8 00000000 */   nop   

/* B12B5C 8009B9BC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B12B60 8009B9C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B12B64 8009B9C4 AFA40048 */  sw    $a0, 0x48($sp)
/* B12B68 8009B9C8 8C850000 */  lw    $a1, ($a0)
/* B12B6C 8009B9CC 3C068014 */  lui   $a2, %hi(D_8013F910) # $a2, 0x8014
/* B12B70 8009B9D0 24C6F910 */  addiu $a2, %lo(D_8013F910) # addiu $a2, $a2, -0x6f0
/* B12B74 8009B9D4 27A40030 */  addiu $a0, $sp, 0x30
/* B12B78 8009B9D8 240716BE */  li    $a3, 5822
/* B12B7C 8009B9DC 0C031AB1 */  jal   func_800C6AC4
/* B12B80 8009B9E0 AFA50040 */   sw    $a1, 0x40($sp)
/* B12B84 8009B9E4 8FA80040 */  lw    $t0, 0x40($sp)
/* B12B88 8009B9E8 8FAA0048 */  lw    $t2, 0x48($sp)
/* B12B8C 8009B9EC 3C090001 */  lui   $t1, 1
/* B12B90 8009B9F0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B12B94 8009B9F4 012A4821 */  addu  $t1, $t1, $t2
/* B12B98 8009B9F8 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B12B9C 8009B9FC 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B12BA0 8009BA00 244F0008 */  addiu $t7, $v0, 8
/* B12BA4 8009BA04 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B12BA8 8009BA08 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B12BAC 8009BA0C AC580000 */  sw    $t8, ($v0)
/* B12BB0 8009BA10 8D440000 */  lw    $a0, ($t2)
/* B12BB4 8009BA14 24190010 */  li    $t9, 16
/* B12BB8 8009BA18 AFB90010 */  sw    $t9, 0x10($sp)
/* B12BBC 8009BA1C 00002825 */  move  $a1, $zero
/* B12BC0 8009BA20 24070004 */  li    $a3, 4
/* B12BC4 8009BA24 AFA80040 */  sw    $t0, 0x40($sp)
/* B12BC8 8009BA28 AFA2002C */  sw    $v0, 0x2c($sp)
/* B12BCC 8009BA2C 0C0253A7 */  jal   func_80094E9C
/* B12BD0 8009BA30 3126003F */   andi  $a2, $t1, 0x3f
/* B12BD4 8009BA34 8FA3002C */  lw    $v1, 0x2c($sp)
/* B12BD8 8009BA38 8FA80040 */  lw    $t0, 0x40($sp)
/* B12BDC 8009BA3C 3C0CE700 */  lui   $t4, 0xe700
/* B12BE0 8009BA40 AC620004 */  sw    $v0, 4($v1)
/* B12BE4 8009BA44 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B12BE8 8009BA48 3C0F8080 */  lui   $t7, (0x80808080 >> 16) # lui $t7, 0x8080
/* B12BEC 8009BA4C 35EF8080 */  ori   $t7, (0x80808080 & 0xFFFF) # ori $t7, $t7, 0x8080
/* B12BF0 8009BA50 244B0008 */  addiu $t3, $v0, 8
/* B12BF4 8009BA54 AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B12BF8 8009BA58 AC400004 */  sw    $zero, 4($v0)
/* B12BFC 8009BA5C AC4C0000 */  sw    $t4, ($v0)
/* B12C00 8009BA60 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B12C04 8009BA64 3C0EFB00 */  lui   $t6, 0xfb00
/* B12C08 8009BA68 3C068014 */  lui   $a2, %hi(D_8013F924) # $a2, 0x8014
/* B12C0C 8009BA6C 244D0008 */  addiu $t5, $v0, 8
/* B12C10 8009BA70 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B12C14 8009BA74 AC4F0004 */  sw    $t7, 4($v0)
/* B12C18 8009BA78 AC4E0000 */  sw    $t6, ($v0)
/* B12C1C 8009BA7C 8FB80048 */  lw    $t8, 0x48($sp)
/* B12C20 8009BA80 24C6F924 */  addiu $a2, %lo(D_8013F924) # addiu $a2, $a2, -0x6dc
/* B12C24 8009BA84 27A40030 */  addiu $a0, $sp, 0x30
/* B12C28 8009BA88 240716CC */  li    $a3, 5836
/* B12C2C 8009BA8C 0C031AD5 */  jal   func_800C6B54
/* B12C30 8009BA90 8F050000 */   lw    $a1, ($t8)
/* B12C34 8009BA94 8FBF001C */  lw    $ra, 0x1c($sp)
/* B12C38 8009BA98 27BD0048 */  addiu $sp, $sp, 0x48
/* B12C3C 8009BA9C 03E00008 */  jr    $ra
/* B12C40 8009BAA0 00000000 */   nop   

/* B12C44 8009BAA4 27BDFF88 */  addiu $sp, $sp, -0x78
/* B12C48 8009BAA8 AFBF003C */  sw    $ra, 0x3c($sp)
/* B12C4C 8009BAAC AFB10038 */  sw    $s1, 0x38($sp)
/* B12C50 8009BAB0 AFB00034 */  sw    $s0, 0x34($sp)
/* B12C54 8009BAB4 8C850000 */  lw    $a1, ($a0)
/* B12C58 8009BAB8 00808825 */  move  $s1, $a0
/* B12C5C 8009BABC 3C068014 */  lui   $a2, %hi(D_8013F938) # $a2, 0x8014
/* B12C60 8009BAC0 24C6F938 */  addiu $a2, %lo(D_8013F938) # addiu $a2, $a2, -0x6c8
/* B12C64 8009BAC4 27A40060 */  addiu $a0, $sp, 0x60
/* B12C68 8009BAC8 240716DA */  li    $a3, 5850
/* B12C6C 8009BACC 0C031AB1 */  jal   func_800C6AC4
/* B12C70 8009BAD0 00A08025 */   move  $s0, $a1
/* B12C74 8009BAD4 3C090001 */  lui   $t1, 1
/* B12C78 8009BAD8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12C7C 8009BADC 01314821 */  addu  $t1, $t1, $s1
/* B12C80 8009BAE0 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B12C84 8009BAE4 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B12C88 8009BAE8 244E0008 */  addiu $t6, $v0, 8
/* B12C8C 8009BAEC AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B12C90 8009BAF0 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B12C94 8009BAF4 AC4F0000 */  sw    $t7, ($v0)
/* B12C98 8009BAF8 8E240000 */  lw    $a0, ($s1)
/* B12C9C 8009BAFC 00093880 */  sll   $a3, $t1, 2
/* B12CA0 8009BB00 00E93823 */  subu  $a3, $a3, $t1
/* B12CA4 8009BB04 30E7007F */  andi  $a3, $a3, 0x7f
/* B12CA8 8009BB08 2418007F */  li    $t8, 127
/* B12CAC 8009BB0C 24190020 */  li    $t9, 32
/* B12CB0 8009BB10 240A0020 */  li    $t2, 32
/* B12CB4 8009BB14 240B0001 */  li    $t3, 1
/* B12CB8 8009BB18 240C0020 */  li    $t4, 32
/* B12CBC 8009BB1C 240D0020 */  li    $t5, 32
/* B12CC0 8009BB20 3123007F */  andi  $v1, $t1, 0x7f
/* B12CC4 8009BB24 03033023 */  subu  $a2, $t8, $v1
/* B12CC8 8009BB28 AFA3001C */  sw    $v1, 0x1c($sp)
/* B12CCC 8009BB2C AFAD0028 */  sw    $t5, 0x28($sp)
/* B12CD0 8009BB30 AFAC0024 */  sw    $t4, 0x24($sp)
/* B12CD4 8009BB34 AFAB0018 */  sw    $t3, 0x18($sp)
/* B12CD8 8009BB38 AFAA0014 */  sw    $t2, 0x14($sp)
/* B12CDC 8009BB3C AFB90010 */  sw    $t9, 0x10($sp)
/* B12CE0 8009BB40 AFA70020 */  sw    $a3, 0x20($sp)
/* B12CE4 8009BB44 00002825 */  move  $a1, $zero
/* B12CE8 8009BB48 AFA2005C */  sw    $v0, 0x5c($sp)
/* B12CEC 8009BB4C 0C0253D0 */  jal   func_80094F40
/* B12CF0 8009BB50 AFA90074 */   sw    $t1, 0x74($sp)
/* B12CF4 8009BB54 8FA8005C */  lw    $t0, 0x5c($sp)
/* B12CF8 8009BB58 8FA90074 */  lw    $t1, 0x74($sp)
/* B12CFC 8009BB5C 24010045 */  li    $at, 69
/* B12D00 8009BB60 AD020004 */  sw    $v0, 4($t0)
/* B12D04 8009BB64 862E00A4 */  lh    $t6, 0xa4($s1)
/* B12D08 8009BB68 3C18DB06 */  lui   $t8, (0xDB060024 >> 16) # lui $t8, 0xdb06
/* B12D0C 8009BB6C 37180024 */  ori   $t8, (0xDB060024 & 0xFFFF) # ori $t8, $t8, 0x24
/* B12D10 8009BB70 15C10011 */  bne   $t6, $at, .L8009BBB8
/* B12D14 8009BB74 00002825 */   move  $a1, $zero
/* B12D18 8009BB78 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12D1C 8009BB7C 00093080 */  sll   $a2, $t1, 2
/* B12D20 8009BB80 00C93021 */  addu  $a2, $a2, $t1
/* B12D24 8009BB84 244F0008 */  addiu $t7, $v0, 8
/* B12D28 8009BB88 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B12D2C 8009BB8C AC580000 */  sw    $t8, ($v0)
/* B12D30 8009BB90 8E240000 */  lw    $a0, ($s1)
/* B12D34 8009BB94 00063040 */  sll   $a2, $a2, 1
/* B12D38 8009BB98 24190040 */  li    $t9, 64
/* B12D3C 8009BB9C AFB90010 */  sw    $t9, 0x10($sp)
/* B12D40 8009BBA0 30C600FF */  andi  $a2, $a2, 0xff
/* B12D44 8009BBA4 24070020 */  li    $a3, 32
/* B12D48 8009BBA8 0C0253A7 */  jal   func_80094E9C
/* B12D4C 8009BBAC AFA20058 */   sw    $v0, 0x58($sp)
/* B12D50 8009BBB0 8FA30058 */  lw    $v1, 0x58($sp)
/* B12D54 8009BBB4 AC620004 */  sw    $v0, 4($v1)
.L8009BBB8:
/* B12D58 8009BBB8 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B12D5C 8009BBBC 3C04E700 */  lui   $a0, 0xe700
/* B12D60 8009BBC0 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B12D64 8009BBC4 246A0008 */  addiu $t2, $v1, 8
/* B12D68 8009BBC8 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B12D6C 8009BBCC AC600004 */  sw    $zero, 4($v1)
/* B12D70 8009BBD0 AC640000 */  sw    $a0, ($v1)
/* B12D74 8009BBD4 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B12D78 8009BBD8 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B12D7C 8009BBDC 3C05FB00 */  lui   $a1, 0xfb00
/* B12D80 8009BBE0 246B0008 */  addiu $t3, $v1, 8
/* B12D84 8009BBE4 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B12D88 8009BBE8 AC660004 */  sw    $a2, 4($v1)
/* B12D8C 8009BBEC AC650000 */  sw    $a1, ($v1)
/* B12D90 8009BBF0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12D94 8009BBF4 240716F4 */  li    $a3, 5876
/* B12D98 8009BBF8 244C0008 */  addiu $t4, $v0, 8
/* B12D9C 8009BBFC AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B12DA0 8009BC00 AC400004 */  sw    $zero, 4($v0)
/* B12DA4 8009BC04 AC440000 */  sw    $a0, ($v0)
/* B12DA8 8009BC08 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12DAC 8009BC0C 27A40060 */  addiu $a0, $sp, 0x60
/* B12DB0 8009BC10 244D0008 */  addiu $t5, $v0, 8
/* B12DB4 8009BC14 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B12DB8 8009BC18 AC460004 */  sw    $a2, 4($v0)
/* B12DBC 8009BC1C 3C068014 */  lui   $a2, %hi(D_8013F94C) # $a2, 0x8014
/* B12DC0 8009BC20 AC450000 */  sw    $a1, ($v0)
/* B12DC4 8009BC24 8E250000 */  lw    $a1, ($s1)
/* B12DC8 8009BC28 0C031AD5 */  jal   func_800C6B54
/* B12DCC 8009BC2C 24C6F94C */   addiu $a2, %lo(D_8013F94C) # addiu $a2, $a2, -0x6b4
/* B12DD0 8009BC30 8FBF003C */  lw    $ra, 0x3c($sp)
/* B12DD4 8009BC34 8FB00034 */  lw    $s0, 0x34($sp)
/* B12DD8 8009BC38 8FB10038 */  lw    $s1, 0x38($sp)
/* B12DDC 8009BC3C 03E00008 */  jr    $ra
/* B12DE0 8009BC40 27BD0078 */   addiu $sp, $sp, 0x78

/* B12DE4 8009BC44 27BDFF78 */  addiu $sp, $sp, -0x88
/* B12DE8 8009BC48 3C010001 */  lui   $at, 1
/* B12DEC 8009BC4C AFBF003C */  sw    $ra, 0x3c($sp)
/* B12DF0 8009BC50 AFB00038 */  sw    $s0, 0x38($sp)
/* B12DF4 8009BC54 AFA40088 */  sw    $a0, 0x88($sp)
/* B12DF8 8009BC58 00811021 */  addu  $v0, $a0, $at
/* B12DFC 8009BC5C 8C441DE4 */  lw    $a0, 0x1de4($v0)
/* B12E00 8009BC60 AFA20044 */  sw    $v0, 0x44($sp)
/* B12E04 8009BC64 00800821 */  addu  $at, $a0, $zero
/* B12E08 8009BC68 00042080 */  sll   $a0, $a0, 2
/* B12E0C 8009BC6C 00812023 */  subu  $a0, $a0, $at
/* B12E10 8009BC70 00042100 */  sll   $a0, $a0, 4
/* B12E14 8009BC74 00812023 */  subu  $a0, $a0, $at
/* B12E18 8009BC78 000420C0 */  sll   $a0, $a0, 3
/* B12E1C 8009BC7C 00812023 */  subu  $a0, $a0, $at
/* B12E20 8009BC80 00042080 */  sll   $a0, $a0, 2
/* B12E24 8009BC84 0C0411E0 */  jal   coss
/* B12E28 8009BC88 3084FFFF */   andi  $a0, $a0, 0xffff
/* B12E2C 8009BC8C 8FAF0088 */  lw    $t7, 0x88($sp)
/* B12E30 8009BC90 00027203 */  sra   $t6, $v0, 8
/* B12E34 8009BC94 A3AE0083 */  sb    $t6, 0x83($sp)
/* B12E38 8009BC98 8DE50000 */  lw    $a1, ($t7)
/* B12E3C 8009BC9C 3C068014 */  lui   $a2, %hi(D_8013F960) # $a2, 0x8014
/* B12E40 8009BCA0 24C6F960 */  addiu $a2, %lo(D_8013F960) # addiu $a2, $a2, -0x6a0
/* B12E44 8009BCA4 27A4006C */  addiu $a0, $sp, 0x6c
/* B12E48 8009BCA8 24071706 */  li    $a3, 5894
/* B12E4C 8009BCAC 0C031AB1 */  jal   func_800C6AC4
/* B12E50 8009BCB0 00A08025 */   move  $s0, $a1
/* B12E54 8009BCB4 8FB80044 */  lw    $t8, 0x44($sp)
/* B12E58 8009BCB8 8FA90088 */  lw    $t1, 0x88($sp)
/* B12E5C 8009BCBC 24010064 */  li    $at, 100
/* B12E60 8009BCC0 8F191DE4 */  lw    $t9, 0x1de4($t8)
/* B12E64 8009BCC4 3C0CDB06 */  lui   $t4, (0xDB060024 >> 16) # lui $t4, 0xdb06
/* B12E68 8009BCC8 358C0024 */  ori   $t4, (0xDB060024 & 0xFFFF) # ori $t4, $t4, 0x24
/* B12E6C 8009BCCC AFB90084 */  sw    $t9, 0x84($sp)
/* B12E70 8009BCD0 852A00A4 */  lh    $t2, 0xa4($t1)
/* B12E74 8009BCD4 00002825 */  move  $a1, $zero
/* B12E78 8009BCD8 5541002F */  bnel  $t2, $at, .L8009BD98
/* B12E7C 8009BCDC 8E0202C0 */   lw    $v0, 0x2c0($s0)
/* B12E80 8009BCE0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12E84 8009BCE4 240D0040 */  li    $t5, 64
/* B12E88 8009BCE8 24070040 */  li    $a3, 64
/* B12E8C 8009BCEC 244B0008 */  addiu $t3, $v0, 8
/* B12E90 8009BCF0 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B12E94 8009BCF4 AC4C0000 */  sw    $t4, ($v0)
/* B12E98 8009BCF8 8FA60084 */  lw    $a2, 0x84($sp)
/* B12E9C 8009BCFC 8D240000 */  lw    $a0, ($t1)
/* B12EA0 8009BD00 AFAD0010 */  sw    $t5, 0x10($sp)
/* B12EA4 8009BD04 30C600FF */  andi  $a2, $a2, 0xff
/* B12EA8 8009BD08 AFA60044 */  sw    $a2, 0x44($sp)
/* B12EAC 8009BD0C 0C0253A7 */  jal   func_80094E9C
/* B12EB0 8009BD10 AFA20068 */   sw    $v0, 0x68($sp)
/* B12EB4 8009BD14 8FA30068 */  lw    $v1, 0x68($sp)
/* B12EB8 8009BD18 8FA80044 */  lw    $t0, 0x44($sp)
/* B12EBC 8009BD1C 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B12EC0 8009BD20 AC620004 */  sw    $v0, 4($v1)
/* B12EC4 8009BD24 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12EC8 8009BD28 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B12ECC 8009BD2C 241900FF */  li    $t9, 255
/* B12ED0 8009BD30 244E0008 */  addiu $t6, $v0, 8
/* B12ED4 8009BD34 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B12ED8 8009BD38 AC4F0000 */  sw    $t7, ($v0)
/* B12EDC 8009BD3C 8FB80088 */  lw    $t8, 0x88($sp)
/* B12EE0 8009BD40 240E0040 */  li    $t6, 64
/* B12EE4 8009BD44 240A0040 */  li    $t2, 64
/* B12EE8 8009BD48 8F040000 */  lw    $a0, ($t8)
/* B12EEC 8009BD4C 240B0040 */  li    $t3, 64
/* B12EF0 8009BD50 240C0001 */  li    $t4, 1
/* B12EF4 8009BD54 240D0040 */  li    $t5, 64
/* B12EF8 8009BD58 AFAD0024 */  sw    $t5, 0x24($sp)
/* B12EFC 8009BD5C AFAC0018 */  sw    $t4, 0x18($sp)
/* B12F00 8009BD60 AFAB0014 */  sw    $t3, 0x14($sp)
/* B12F04 8009BD64 AFAE0028 */  sw    $t6, 0x28($sp)
/* B12F08 8009BD68 AFA0001C */  sw    $zero, 0x1c($sp)
/* B12F0C 8009BD6C AFAA0010 */  sw    $t2, 0x10($sp)
/* B12F10 8009BD70 00002825 */  move  $a1, $zero
/* B12F14 8009BD74 00003025 */  move  $a2, $zero
/* B12F18 8009BD78 AFA80020 */  sw    $t0, 0x20($sp)
/* B12F1C 8009BD7C 03283823 */  subu  $a3, $t9, $t0
/* B12F20 8009BD80 0C0253D0 */  jal   func_80094F40
/* B12F24 8009BD84 AFA20064 */   sw    $v0, 0x64($sp)
/* B12F28 8009BD88 8FA30064 */  lw    $v1, 0x64($sp)
/* B12F2C 8009BD8C AC620004 */  sw    $v0, 4($v1)
/* B12F30 8009BD90 8FA90088 */  lw    $t1, 0x88($sp)
/* B12F34 8009BD94 8E0202C0 */  lw    $v0, 0x2c0($s0)
.L8009BD98:
/* B12F38 8009BD98 8FA80084 */  lw    $t0, 0x84($sp)
/* B12F3C 8009BD9C 3C18DB06 */  lui   $t8, (0xDB06002C >> 16) # lui $t8, 0xdb06
/* B12F40 8009BDA0 244F0008 */  addiu $t7, $v0, 8
/* B12F44 8009BDA4 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B12F48 8009BDA8 3718002C */  ori   $t8, (0xDB06002C & 0xFFFF) # ori $t8, $t8, 0x2c
/* B12F4C 8009BDAC AC580000 */  sw    $t8, ($v0)
/* B12F50 8009BDB0 8D240000 */  lw    $a0, ($t1)
/* B12F54 8009BDB4 3107007F */  andi  $a3, $t0, 0x7f
/* B12F58 8009BDB8 241900FF */  li    $t9, 255
/* B12F5C 8009BDBC 240A0020 */  li    $t2, 32
/* B12F60 8009BDC0 240B0020 */  li    $t3, 32
/* B12F64 8009BDC4 240C0001 */  li    $t4, 1
/* B12F68 8009BDC8 240D0020 */  li    $t5, 32
/* B12F6C 8009BDCC 240E0020 */  li    $t6, 32
/* B12F70 8009BDD0 AFAE0028 */  sw    $t6, 0x28($sp)
/* B12F74 8009BDD4 AFAD0024 */  sw    $t5, 0x24($sp)
/* B12F78 8009BDD8 AFAC0018 */  sw    $t4, 0x18($sp)
/* B12F7C 8009BDDC AFAB0014 */  sw    $t3, 0x14($sp)
/* B12F80 8009BDE0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B12F84 8009BDE4 03273023 */  subu  $a2, $t9, $a3
/* B12F88 8009BDE8 AFA7001C */  sw    $a3, 0x1c($sp)
/* B12F8C 8009BDEC AFA70020 */  sw    $a3, 0x20($sp)
/* B12F90 8009BDF0 00002825 */  move  $a1, $zero
/* B12F94 8009BDF4 0C0253D0 */  jal   func_80094F40
/* B12F98 8009BDF8 AFA20060 */   sw    $v0, 0x60($sp)
/* B12F9C 8009BDFC 8FA30060 */  lw    $v1, 0x60($sp)
/* B12FA0 8009BE00 3C04E700 */  lui   $a0, 0xe700
/* B12FA4 8009BE04 3C068080 */  lui   $a2, %hi(D_808000C0) # $a2, 0x8080
/* B12FA8 8009BE08 AC620004 */  sw    $v0, 4($v1)
/* B12FAC 8009BE0C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12FB0 8009BE10 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B12FB4 8009BE14 3C05FB00 */  lui   $a1, 0xfb00
/* B12FB8 8009BE18 244F0008 */  addiu $t7, $v0, 8
/* B12FBC 8009BE1C AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B12FC0 8009BE20 AC400004 */  sw    $zero, 4($v0)
/* B12FC4 8009BE24 AC440000 */  sw    $a0, ($v0)
/* B12FC8 8009BE28 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B12FCC 8009BE2C 2407172A */  li    $a3, 5930
/* B12FD0 8009BE30 24580008 */  addiu $t8, $v0, 8
/* B12FD4 8009BE34 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B12FD8 8009BE38 AC460004 */  sw    $a2, 4($v0)
/* B12FDC 8009BE3C AC450000 */  sw    $a1, ($v0)
/* B12FE0 8009BE40 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12FE4 8009BE44 24590008 */  addiu $t9, $v0, 8
/* B12FE8 8009BE48 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B12FEC 8009BE4C AC400004 */  sw    $zero, 4($v0)
/* B12FF0 8009BE50 AC440000 */  sw    $a0, ($v0)
/* B12FF4 8009BE54 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B12FF8 8009BE58 244A0008 */  addiu $t2, $v0, 8
/* B12FFC 8009BE5C AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* B13000 8009BE60 AC460004 */  sw    $a2, 4($v0)
/* B13004 8009BE64 AC450000 */  sw    $a1, ($v0)
/* B13008 8009BE68 83A60083 */  lb    $a2, 0x83($sp)
/* B1300C 8009BE6C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13010 8009BE70 00063043 */  sra   $a2, $a2, 1
/* B13014 8009BE74 244B0008 */  addiu $t3, $v0, 8
/* B13018 8009BE78 24C600C0 */  addiu $a2, %lo(D_808000C0) # addiu $a2, $a2, 0xc0
/* B1301C 8009BE7C AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B13020 8009BE80 00063600 */  sll   $a2, $a2, 0x18
/* B13024 8009BE84 00063603 */  sra   $a2, $a2, 0x18
/* B13028 8009BE88 AC400004 */  sw    $zero, 4($v0)
/* B1302C 8009BE8C AC440000 */  sw    $a0, ($v0)
/* B13030 8009BE90 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13034 8009BE94 30C300FF */  andi  $v1, $a2, 0xff
/* B13038 8009BE98 00036E00 */  sll   $t5, $v1, 0x18
/* B1303C 8009BE9C 00037400 */  sll   $t6, $v1, 0x10
/* B13040 8009BEA0 01AE7825 */  or    $t7, $t5, $t6
/* B13044 8009BEA4 0003C200 */  sll   $t8, $v1, 8
/* B13048 8009BEA8 244C0008 */  addiu $t4, $v0, 8
/* B1304C 8009BEAC AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B13050 8009BEB0 01F8C825 */  or    $t9, $t7, $t8
/* B13054 8009BEB4 372A0080 */  ori   $t2, $t9, 0x80
/* B13058 8009BEB8 AC4A0004 */  sw    $t2, 4($v0)
/* B1305C 8009BEBC AC450000 */  sw    $a1, ($v0)
/* B13060 8009BEC0 8FAB0088 */  lw    $t3, 0x88($sp)
/* B13064 8009BEC4 3C068014 */  lui   $a2, %hi(D_8013F974) # $a2, 0x8014
/* B13068 8009BEC8 24C6F974 */  addiu $a2, %lo(D_8013F974) # addiu $a2, $a2, -0x68c
/* B1306C 8009BECC 27A4006C */  addiu $a0, $sp, 0x6c
/* B13070 8009BED0 0C031AD5 */  jal   func_800C6B54
/* B13074 8009BED4 8D650000 */   lw    $a1, ($t3)
/* B13078 8009BED8 8FBF003C */  lw    $ra, 0x3c($sp)
/* B1307C 8009BEDC 8FB00038 */  lw    $s0, 0x38($sp)
/* B13080 8009BEE0 27BD0088 */  addiu $sp, $sp, 0x88
/* B13084 8009BEE4 03E00008 */  jr    $ra
/* B13088 8009BEE8 00000000 */   nop   

glabel func_8009BEEC
/* B1308C 8009BEEC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B13090 8009BEF0 3C010001 */  lui   $at, 1
/* B13094 8009BEF4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B13098 8009BEF8 AFB10020 */  sw    $s1, 0x20($sp)
/* B1309C 8009BEFC AFB0001C */  sw    $s0, 0x1c($sp)
/* B130A0 8009BF00 00811021 */  addu  $v0, $a0, $at
/* B130A4 8009BF04 8C431DE4 */  lw    $v1, 0x1de4($v0)
/* B130A8 8009BF08 2401000D */  li    $at, 13
/* B130AC 8009BF0C 00808825 */  move  $s1, $a0
/* B130B0 8009BF10 306E007F */  andi  $t6, $v1, 0x7f
/* B130B4 8009BF14 55C1001C */  bnel  $t6, $at, .L8009BF88
/* B130B8 8009BF18 3069003F */   andi  $t1, $v1, 0x3f
/* B130BC 8009BF1C 848F07A0 */  lh    $t7, 0x7a0($a0)
/* B130C0 8009BF20 24050002 */  li    $a1, 2
/* B130C4 8009BF24 000FC080 */  sll   $t8, $t7, 2
/* B130C8 8009BF28 0098C821 */  addu  $t9, $a0, $t8
/* B130CC 8009BF2C 8F240790 */  lw    $a0, 0x790($t9)
/* B130D0 8009BF30 0C024BE2 */  jal   func_80092F88
/* B130D4 8009BF34 AFA2002C */   sw    $v0, 0x2c($sp)
/* B130D8 8009BF38 00022400 */  sll   $a0, $v0, 0x10
/* B130DC 8009BF3C AFA20034 */  sw    $v0, 0x34($sp)
/* B130E0 8009BF40 00042403 */  sra   $a0, $a0, 0x10
/* B130E4 8009BF44 0C024B6B */  jal   func_80092DAC
/* B130E8 8009BF48 24052710 */   li    $a1, 10000
/* B130EC 8009BF4C 87B00036 */  lh    $s0, 0x36($sp)
/* B130F0 8009BF50 24050004 */  li    $a1, 4
/* B130F4 8009BF54 00003025 */  move  $a2, $zero
/* B130F8 8009BF58 00102400 */  sll   $a0, $s0, 0x10
/* B130FC 8009BF5C 00042403 */  sra   $a0, $a0, 0x10
/* B13100 8009BF60 00003825 */  move  $a3, $zero
/* B13104 8009BF64 0C024B9C */  jal   func_80092E70
/* B13108 8009BF68 AFA00010 */   sw    $zero, 0x10($sp)
/* B1310C 8009BF6C 00102400 */  sll   $a0, $s0, 0x10
/* B13110 8009BF70 00042403 */  sra   $a0, $a0, 0x10
/* B13114 8009BF74 0C024B7C */  jal   func_80092DF0
/* B13118 8009BF78 2405007F */   li    $a1, 127
/* B1311C 8009BF7C 8FA8002C */  lw    $t0, 0x2c($sp)
/* B13120 8009BF80 8D031DE4 */  lw    $v1, 0x1de4($t0)
/* B13124 8009BF84 3069003F */  andi  $t1, $v1, 0x3f
.L8009BF88:
/* B13128 8009BF88 55200044 */  bnezl $t1, .L8009C09C
/* B1312C 8009BF8C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B13130 8009BF90 0C03F66B */  jal   func_800FD9AC
/* B13134 8009BF94 00000000 */   nop   
/* B13138 8009BF98 3C018014 */  lui   $at, 0x8014
/* B1313C 8009BF9C C424FF18 */  lwc1  $f4, -0xe8($at)
/* B13140 8009BFA0 4600203C */  c.lt.s $f4, $f0
/* B13144 8009BFA4 00000000 */  nop   
/* B13148 8009BFA8 4502003C */  bc1fl .L8009C09C
/* B1314C 8009BFAC 8FBF0024 */   lw    $ra, 0x24($sp)
/* B13150 8009BFB0 862A07A0 */  lh    $t2, 0x7a0($s1)
/* B13154 8009BFB4 24050003 */  li    $a1, 3
/* B13158 8009BFB8 000A5880 */  sll   $t3, $t2, 2
/* B1315C 8009BFBC 022B6021 */  addu  $t4, $s1, $t3
/* B13160 8009BFC0 0C024BE2 */  jal   func_80092F88
/* B13164 8009BFC4 8D840790 */   lw    $a0, 0x790($t4)
/* B13168 8009BFC8 0C03F66B */  jal   func_800FD9AC
/* B1316C 8009BFCC AFA20034 */   sw    $v0, 0x34($sp)
/* B13170 8009BFD0 3C018014 */  lui   $at, 0x8014
/* B13174 8009BFD4 C426FF1C */  lwc1  $f6, -0xe4($at)
/* B13178 8009BFD8 3C0146FA */  li    $at, 0x46FA0000 # 0.000000
/* B1317C 8009BFDC 44815000 */  mtc1  $at, $f10
/* B13180 8009BFE0 46060202 */  mul.s $f8, $f0, $f6
/* B13184 8009BFE4 87B00036 */  lh    $s0, 0x36($sp)
/* B13188 8009BFE8 00102400 */  sll   $a0, $s0, 0x10
/* B1318C 8009BFEC 00042403 */  sra   $a0, $a0, 0x10
/* B13190 8009BFF0 460A4400 */  add.s $f16, $f8, $f10
/* B13194 8009BFF4 4600848D */  trunc.w.s $f18, $f16
/* B13198 8009BFF8 44059000 */  mfc1  $a1, $f18
/* B1319C 8009BFFC 00000000 */  nop   
/* B131A0 8009C000 00052C00 */  sll   $a1, $a1, 0x10
/* B131A4 8009C004 0C024B6B */  jal   func_80092DAC
/* B131A8 8009C008 00052C03 */   sra   $a1, $a1, 0x10
/* B131AC 8009C00C 0C03F66B */  jal   func_800FD9AC
/* B131B0 8009C010 00000000 */   nop   
/* B131B4 8009C014 3C014120 */  li    $at, 0x41200000 # 0.000000
/* B131B8 8009C018 44812000 */  mtc1  $at, $f4
/* B131BC 8009C01C 3C014110 */  li    $at, 0x41100000 # 0.000000
/* B131C0 8009C020 44813000 */  mtc1  $at, $f6
/* B131C4 8009C024 00102400 */  sll   $a0, $s0, 0x10
/* B131C8 8009C028 00042403 */  sra   $a0, $a0, 0x10
/* B131CC 8009C02C 46060202 */  mul.s $f8, $f0, $f6
/* B131D0 8009C030 00003025 */  move  $a2, $zero
/* B131D4 8009C034 00003825 */  move  $a3, $zero
/* B131D8 8009C038 AFA00010 */  sw    $zero, 0x10($sp)
/* B131DC 8009C03C 46082281 */  sub.s $f10, $f4, $f8
/* B131E0 8009C040 4600540D */  trunc.w.s $f16, $f10
/* B131E4 8009C044 44058000 */  mfc1  $a1, $f16
/* B131E8 8009C048 00000000 */  nop   
/* B131EC 8009C04C 00052C00 */  sll   $a1, $a1, 0x10
/* B131F0 8009C050 0C024B9C */  jal   func_80092E70
/* B131F4 8009C054 00052C03 */   sra   $a1, $a1, 0x10
/* B131F8 8009C058 0C03F66B */  jal   func_800FD9AC
/* B131FC 8009C05C 00000000 */   nop   
/* B13200 8009C060 3C014240 */  li    $at, 0x42400000 # 0.000000
/* B13204 8009C064 44819000 */  mtc1  $at, $f18
/* B13208 8009C068 3C014170 */  li    $at, 0x41700000 # 0.000000
/* B1320C 8009C06C 44813000 */  mtc1  $at, $f6
/* B13210 8009C070 00102400 */  sll   $a0, $s0, 0x10
/* B13214 8009C074 00042403 */  sra   $a0, $a0, 0x10
/* B13218 8009C078 46060102 */  mul.s $f4, $f0, $f6
/* B1321C 8009C07C 46049201 */  sub.s $f8, $f18, $f4
/* B13220 8009C080 4600428D */  trunc.w.s $f10, $f8
/* B13224 8009C084 44055000 */  mfc1  $a1, $f10
/* B13228 8009C088 00000000 */  nop   
/* B1322C 8009C08C 00052C00 */  sll   $a1, $a1, 0x10
/* B13230 8009C090 0C024B7C */  jal   func_80092DF0
/* B13234 8009C094 00052C03 */   sra   $a1, $a1, 0x10
/* B13238 8009C098 8FBF0024 */  lw    $ra, 0x24($sp)
.L8009C09C:
/* B1323C 8009C09C 8FB0001C */  lw    $s0, 0x1c($sp)
/* B13240 8009C0A0 8FB10020 */  lw    $s1, 0x20($sp)
/* B13244 8009C0A4 03E00008 */  jr    $ra
/* B13248 8009C0A8 27BD0038 */   addiu $sp, $sp, 0x38

/* B1324C 8009C0AC 27BDFF80 */  addiu $sp, $sp, -0x80
/* B13250 8009C0B0 3C010001 */  lui   $at, 1
/* B13254 8009C0B4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B13258 8009C0B8 AFA40080 */  sw    $a0, 0x80($sp)
/* B1325C 8009C0BC 00811021 */  addu  $v0, $a0, $at
/* B13260 8009C0C0 8C441DE4 */  lw    $a0, 0x1de4($v0)
/* B13264 8009C0C4 AFA2003C */  sw    $v0, 0x3c($sp)
/* B13268 8009C0C8 00800821 */  addu  $at, $a0, $zero
/* B1326C 8009C0CC 00042080 */  sll   $a0, $a0, 2
/* B13270 8009C0D0 00812023 */  subu  $a0, $a0, $at
/* B13274 8009C0D4 00042100 */  sll   $a0, $a0, 4
/* B13278 8009C0D8 00812023 */  subu  $a0, $a0, $at
/* B1327C 8009C0DC 000420C0 */  sll   $a0, $a0, 3
/* B13280 8009C0E0 00812023 */  subu  $a0, $a0, $at
/* B13284 8009C0E4 00042080 */  sll   $a0, $a0, 2
/* B13288 8009C0E8 0C0411E0 */  jal   coss
/* B1328C 8009C0EC 3084FFFF */   andi  $a0, $a0, 0xffff
/* B13290 8009C0F0 8FAF0080 */  lw    $t7, 0x80($sp)
/* B13294 8009C0F4 00027203 */  sra   $t6, $v0, 8
/* B13298 8009C0F8 A3AE007B */  sb    $t6, 0x7b($sp)
/* B1329C 8009C0FC 8DE50000 */  lw    $a1, ($t7)
/* B132A0 8009C100 3C068014 */  lui   $a2, %hi(D_8013F988) # $a2, 0x8014
/* B132A4 8009C104 24C6F988 */  addiu $a2, %lo(D_8013F988) # addiu $a2, $a2, -0x678
/* B132A8 8009C108 27A40064 */  addiu $a0, $sp, 0x64
/* B132AC 8009C10C 24071750 */  li    $a3, 5968
/* B132B0 8009C110 0C031AB1 */  jal   func_800C6AC4
/* B132B4 8009C114 AFA50074 */   sw    $a1, 0x74($sp)
/* B132B8 8009C118 8FA80074 */  lw    $t0, 0x74($sp)
/* B132BC 8009C11C 8FB8003C */  lw    $t8, 0x3c($sp)
/* B132C0 8009C120 3C0BDB06 */  lui   $t3, (0xDB060020 >> 16) # lui $t3, 0xdb06
/* B132C4 8009C124 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B132C8 8009C128 8F091DE4 */  lw    $t1, 0x1de4($t8)
/* B132CC 8009C12C 356B0020 */  ori   $t3, (0xDB060020 & 0xFFFF) # ori $t3, $t3, 0x20
/* B132D0 8009C130 24590008 */  addiu $t9, $v0, 8
/* B132D4 8009C134 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B132D8 8009C138 AC4B0000 */  sw    $t3, ($v0)
/* B132DC 8009C13C 8FAC0080 */  lw    $t4, 0x80($sp)
/* B132E0 8009C140 241801FF */  li    $t8, 511
/* B132E4 8009C144 312701FF */  andi  $a3, $t1, 0x1ff
/* B132E8 8009C148 8D840000 */  lw    $a0, ($t4)
/* B132EC 8009C14C 240C0080 */  li    $t4, 128
/* B132F0 8009C150 0307C823 */  subu  $t9, $t8, $a3
/* B132F4 8009C154 240B0040 */  li    $t3, 64
/* B132F8 8009C158 240D0040 */  li    $t5, 64
/* B132FC 8009C15C 240E0080 */  li    $t6, 128
/* B13300 8009C160 240F0001 */  li    $t7, 1
/* B13304 8009C164 AFAF0018 */  sw    $t7, 0x18($sp)
/* B13308 8009C168 AFAE0014 */  sw    $t6, 0x14($sp)
/* B1330C 8009C16C AFAD0010 */  sw    $t5, 0x10($sp)
/* B13310 8009C170 AFAB0024 */  sw    $t3, 0x24($sp)
/* B13314 8009C174 AFB90020 */  sw    $t9, 0x20($sp)
/* B13318 8009C178 AFAC0028 */  sw    $t4, 0x28($sp)
/* B1331C 8009C17C AFA0001C */  sw    $zero, 0x1c($sp)
/* B13320 8009C180 00002825 */  move  $a1, $zero
/* B13324 8009C184 00003025 */  move  $a2, $zero
/* B13328 8009C188 AFA80074 */  sw    $t0, 0x74($sp)
/* B1332C 8009C18C AFA20060 */  sw    $v0, 0x60($sp)
/* B13330 8009C190 AFA9007C */  sw    $t1, 0x7c($sp)
/* B13334 8009C194 0C0253D0 */  jal   func_80094F40
/* B13338 8009C198 AFA9003C */   sw    $t1, 0x3c($sp)
/* B1333C 8009C19C 8FA30060 */  lw    $v1, 0x60($sp)
/* B13340 8009C1A0 8FA80074 */  lw    $t0, 0x74($sp)
/* B13344 8009C1A4 8FA9003C */  lw    $t1, 0x3c($sp)
/* B13348 8009C1A8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B1334C 8009C1AC AC620004 */  sw    $v0, 4($v1)
/* B13350 8009C1B0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B13354 8009C1B4 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B13358 8009C1B8 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B1335C 8009C1BC 244D0008 */  addiu $t5, $v0, 8
/* B13360 8009C1C0 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B13364 8009C1C4 AC4E0000 */  sw    $t6, ($v0)
/* B13368 8009C1C8 8FAF0080 */  lw    $t7, 0x80($sp)
/* B1336C 8009C1CC 240C00FF */  li    $t4, 255
/* B13370 8009C1D0 312700FF */  andi  $a3, $t1, 0xff
/* B13374 8009C1D4 8DE40000 */  lw    $a0, ($t7)
/* B13378 8009C1D8 240F0040 */  li    $t7, 64
/* B1337C 8009C1DC 01876823 */  subu  $t5, $t4, $a3
/* B13380 8009C1E0 240E0020 */  li    $t6, 32
/* B13384 8009C1E4 24180020 */  li    $t8, 32
/* B13388 8009C1E8 24190040 */  li    $t9, 64
/* B1338C 8009C1EC 240B0001 */  li    $t3, 1
/* B13390 8009C1F0 AFAB0018 */  sw    $t3, 0x18($sp)
/* B13394 8009C1F4 AFB90014 */  sw    $t9, 0x14($sp)
/* B13398 8009C1F8 AFB80010 */  sw    $t8, 0x10($sp)
/* B1339C 8009C1FC AFAE0024 */  sw    $t6, 0x24($sp)
/* B133A0 8009C200 AFAD0020 */  sw    $t5, 0x20($sp)
/* B133A4 8009C204 AFAF0028 */  sw    $t7, 0x28($sp)
/* B133A8 8009C208 AFA0001C */  sw    $zero, 0x1c($sp)
/* B133AC 8009C20C 00002825 */  move  $a1, $zero
/* B133B0 8009C210 00003025 */  move  $a2, $zero
/* B133B4 8009C214 AFA80074 */  sw    $t0, 0x74($sp)
/* B133B8 8009C218 AFAA007C */  sw    $t2, 0x7c($sp)
/* B133BC 8009C21C 0C0253D0 */  jal   func_80094F40
/* B133C0 8009C220 AFA2005C */   sw    $v0, 0x5c($sp)
/* B133C4 8009C224 8FA3005C */  lw    $v1, 0x5c($sp)
/* B133C8 8009C228 8FA80074 */  lw    $t0, 0x74($sp)
/* B133CC 8009C22C 8FAA007C */  lw    $t2, 0x7c($sp)
/* B133D0 8009C230 AC620004 */  sw    $v0, 4($v1)
/* B133D4 8009C234 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B133D8 8009C238 3C19DB06 */  lui   $t9, (0xDB060028 >> 16) # lui $t9, 0xdb06
/* B133DC 8009C23C 37390028 */  ori   $t9, (0xDB060028 & 0xFFFF) # ori $t9, $t9, 0x28
/* B133E0 8009C240 24580008 */  addiu $t8, $v0, 8
/* B133E4 8009C244 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B133E8 8009C248 AC590000 */  sw    $t9, ($v0)
/* B133EC 8009C24C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B133F0 8009C250 000A7900 */  sll   $t7, $t2, 4
/* B133F4 8009C254 01EA7823 */  subu  $t7, $t7, $t2
/* B133F8 8009C258 8D640000 */  lw    $a0, ($t3)
/* B133FC 8009C25C 000A3880 */  sll   $a3, $t2, 2
/* B13400 8009C260 000F7840 */  sll   $t7, $t7, 1
/* B13404 8009C264 00EA3821 */  addu  $a3, $a3, $t2
/* B13408 8009C268 00073880 */  sll   $a3, $a3, 2
/* B1340C 8009C26C 31F807FF */  andi  $t8, $t7, 0x7ff
/* B13410 8009C270 240B0200 */  li    $t3, 512
/* B13414 8009C274 24190010 */  li    $t9, 16
/* B13418 8009C278 240C0010 */  li    $t4, 16
/* B1341C 8009C27C 240D0200 */  li    $t5, 512
/* B13420 8009C280 240E0001 */  li    $t6, 1
/* B13424 8009C284 AFAE0018 */  sw    $t6, 0x18($sp)
/* B13428 8009C288 AFAD0014 */  sw    $t5, 0x14($sp)
/* B1342C 8009C28C AFAC0010 */  sw    $t4, 0x10($sp)
/* B13430 8009C290 AFB90024 */  sw    $t9, 0x24($sp)
/* B13434 8009C294 AFAB0028 */  sw    $t3, 0x28($sp)
/* B13438 8009C298 AFB80020 */  sw    $t8, 0x20($sp)
/* B1343C 8009C29C 30E707FF */  andi  $a3, $a3, 0x7ff
/* B13440 8009C2A0 AFA0001C */  sw    $zero, 0x1c($sp)
/* B13444 8009C2A4 00002825 */  move  $a1, $zero
/* B13448 8009C2A8 00003025 */  move  $a2, $zero
/* B1344C 8009C2AC AFA80074 */  sw    $t0, 0x74($sp)
/* B13450 8009C2B0 0C0253D0 */  jal   func_80094F40
/* B13454 8009C2B4 AFA20058 */   sw    $v0, 0x58($sp)
/* B13458 8009C2B8 8FA30058 */  lw    $v1, 0x58($sp)
/* B1345C 8009C2BC 8FA80074 */  lw    $t0, 0x74($sp)
/* B13460 8009C2C0 3C04E700 */  lui   $a0, 0xe700
/* B13464 8009C2C4 AC620004 */  sw    $v0, 4($v1)
/* B13468 8009C2C8 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B1346C 8009C2CC 3C068080 */  lui   $a2, %hi(D_808000C0) # $a2, 0x8080
/* B13470 8009C2D0 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B13474 8009C2D4 244C0008 */  addiu $t4, $v0, 8
/* B13478 8009C2D8 AD0C02C0 */  sw    $t4, 0x2c0($t0)
/* B1347C 8009C2DC AC400004 */  sw    $zero, 4($v0)
/* B13480 8009C2E0 AC440000 */  sw    $a0, ($v0)
/* B13484 8009C2E4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B13488 8009C2E8 3C05FB00 */  lui   $a1, 0xfb00
/* B1348C 8009C2EC 24071774 */  li    $a3, 6004
/* B13490 8009C2F0 244D0008 */  addiu $t5, $v0, 8
/* B13494 8009C2F4 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B13498 8009C2F8 AC460004 */  sw    $a2, 4($v0)
/* B1349C 8009C2FC AC450000 */  sw    $a1, ($v0)
/* B134A0 8009C300 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B134A4 8009C304 244E0008 */  addiu $t6, $v0, 8
/* B134A8 8009C308 AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B134AC 8009C30C AC400004 */  sw    $zero, 4($v0)
/* B134B0 8009C310 AC440000 */  sw    $a0, ($v0)
/* B134B4 8009C314 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B134B8 8009C318 244F0008 */  addiu $t7, $v0, 8
/* B134BC 8009C31C AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B134C0 8009C320 AC460004 */  sw    $a2, 4($v0)
/* B134C4 8009C324 AC450000 */  sw    $a1, ($v0)
/* B134C8 8009C328 83A6007B */  lb    $a2, 0x7b($sp)
/* B134CC 8009C32C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B134D0 8009C330 00063043 */  sra   $a2, $a2, 1
/* B134D4 8009C334 24580008 */  addiu $t8, $v0, 8
/* B134D8 8009C338 24C600C0 */  addiu $a2, %lo(D_808000C0) # addiu $a2, $a2, 0xc0
/* B134DC 8009C33C AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B134E0 8009C340 00063600 */  sll   $a2, $a2, 0x18
/* B134E4 8009C344 00063603 */  sra   $a2, $a2, 0x18
/* B134E8 8009C348 AC400004 */  sw    $zero, 4($v0)
/* B134EC 8009C34C AC440000 */  sw    $a0, ($v0)
/* B134F0 8009C350 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B134F4 8009C354 30C300FF */  andi  $v1, $a2, 0xff
/* B134F8 8009C358 00035E00 */  sll   $t3, $v1, 0x18
/* B134FC 8009C35C 00036400 */  sll   $t4, $v1, 0x10
/* B13500 8009C360 016C6825 */  or    $t5, $t3, $t4
/* B13504 8009C364 00037200 */  sll   $t6, $v1, 8
/* B13508 8009C368 24590008 */  addiu $t9, $v0, 8
/* B1350C 8009C36C 01AE7825 */  or    $t7, $t5, $t6
/* B13510 8009C370 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B13514 8009C374 35F80080 */  ori   $t8, $t7, 0x80
/* B13518 8009C378 AC580004 */  sw    $t8, 4($v0)
/* B1351C 8009C37C AC450000 */  sw    $a1, ($v0)
/* B13520 8009C380 8FB90080 */  lw    $t9, 0x80($sp)
/* B13524 8009C384 3C068014 */  lui   $a2, %hi(D_8013F99C) # $a2, 0x8014
/* B13528 8009C388 24C6F99C */  addiu $a2, %lo(D_8013F99C) # addiu $a2, $a2, -0x664
/* B1352C 8009C38C 27A40064 */  addiu $a0, $sp, 0x64
/* B13530 8009C390 0C031AD5 */  jal   func_800C6B54
/* B13534 8009C394 8F250000 */   lw    $a1, ($t9)
/* B13538 8009C398 8FA40080 */  lw    $a0, 0x80($sp)
/* B1353C 8009C39C 0C00B2D0 */  jal   func_8002CB40
/* B13540 8009C3A0 24050037 */   li    $a1, 55
/* B13544 8009C3A4 1040000D */  beqz  $v0, .L8009C3DC
/* B13548 8009C3A8 8FAB0080 */   lw    $t3, 0x80($sp)
/* B1354C 8009C3AC 856200A4 */  lh    $v0, 0xa4($t3)
/* B13550 8009C3B0 2401004F */  li    $at, 79
/* B13554 8009C3B4 10410007 */  beq   $v0, $at, .L8009C3D4
/* B13558 8009C3B8 2401001A */   li    $at, 26
/* B1355C 8009C3BC 10410005 */  beq   $v0, $at, .L8009C3D4
/* B13560 8009C3C0 2401000E */   li    $at, 14
/* B13564 8009C3C4 10410003 */  beq   $v0, $at, .L8009C3D4
/* B13568 8009C3C8 2401000F */   li    $at, 15
/* B1356C 8009C3CC 54410004 */  bnel  $v0, $at, .L8009C3E0
/* B13570 8009C3D0 8FBF0034 */   lw    $ra, 0x34($sp)
.L8009C3D4:
/* B13574 8009C3D4 0C026FBB */  jal   func_8009BEEC
/* B13578 8009C3D8 8FA40080 */   lw    $a0, 0x80($sp)
.L8009C3DC:
/* B1357C 8009C3DC 8FBF0034 */  lw    $ra, 0x34($sp)
.L8009C3E0:
/* B13580 8009C3E0 27BD0080 */  addiu $sp, $sp, 0x80
/* B13584 8009C3E4 03E00008 */  jr    $ra
/* B13588 8009C3E8 00000000 */   nop   

/* B1358C 8009C3EC 27BDFF70 */  addiu $sp, $sp, -0x90
/* B13590 8009C3F0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B13594 8009C3F4 AFB00038 */  sw    $s0, 0x38($sp)
/* B13598 8009C3F8 AFA40090 */  sw    $a0, 0x90($sp)
/* B1359C 8009C3FC 8C850000 */  lw    $a1, ($a0)
/* B135A0 8009C400 3C068014 */  lui   $a2, %hi(D_8013F9B0) # $a2, 0x8014
/* B135A4 8009C404 24C6F9B0 */  addiu $a2, %lo(D_8013F9B0) # addiu $a2, $a2, -0x650
/* B135A8 8009C408 27A40078 */  addiu $a0, $sp, 0x78
/* B135AC 8009C40C 2407179A */  li    $a3, 6042
/* B135B0 8009C410 0C031AB1 */  jal   func_800C6AC4
/* B135B4 8009C414 00A08025 */   move  $s0, $a1
/* B135B8 8009C418 8FAA0090 */  lw    $t2, 0x90($sp)
/* B135BC 8009C41C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B135C0 8009C420 3C080001 */  lui   $t0, 1
/* B135C4 8009C424 010A4021 */  addu  $t0, $t0, $t2
/* B135C8 8009C428 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B135CC 8009C42C 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B135D0 8009C430 244F0008 */  addiu $t7, $v0, 8
/* B135D4 8009C434 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B135D8 8009C438 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B135DC 8009C43C 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B135E0 8009C440 AC580000 */  sw    $t8, ($v0)
/* B135E4 8009C444 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B135E8 8009C448 3C048013 */  lui   $a0, 0x8013
/* B135EC 8009C44C 3C188016 */  lui   $t8, 0x8016
/* B135F0 8009C450 00195880 */  sll   $t3, $t9, 2
/* B135F4 8009C454 008B2021 */  addu  $a0, $a0, $t3
/* B135F8 8009C458 8C84A338 */  lw    $a0, -0x5cc8($a0)
/* B135FC 8009C45C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B13600 8009C460 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B13604 8009C464 00046900 */  sll   $t5, $a0, 4
/* B13608 8009C468 000D7702 */  srl   $t6, $t5, 0x1c
/* B1360C 8009C46C 000E7880 */  sll   $t7, $t6, 2
/* B13610 8009C470 030FC021 */  addu  $t8, $t8, $t7
/* B13614 8009C474 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B13618 8009C478 00816024 */  and   $t4, $a0, $at
/* B1361C 8009C47C 3C018000 */  lui   $at, 0x8000
/* B13620 8009C480 0198C821 */  addu  $t9, $t4, $t8
/* B13624 8009C484 03215821 */  addu  $t3, $t9, $at
/* B13628 8009C488 AC4B0004 */  sw    $t3, 4($v0)
/* B1362C 8009C48C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13630 8009C490 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B13634 8009C494 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B13638 8009C498 244D0008 */  addiu $t5, $v0, 8
/* B1363C 8009C49C AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B13640 8009C4A0 AC4E0000 */  sw    $t6, ($v0)
/* B13644 8009C4A4 8D440000 */  lw    $a0, ($t2)
/* B13648 8009C4A8 240F007F */  li    $t7, 127
/* B1364C 8009C4AC 3103007F */  andi  $v1, $t0, 0x7f
/* B13650 8009C4B0 01E33023 */  subu  $a2, $t7, $v1
/* B13654 8009C4B4 240D0020 */  li    $t5, 32
/* B13658 8009C4B8 240B0020 */  li    $t3, 32
/* B1365C 8009C4BC 24190001 */  li    $t9, 1
/* B13660 8009C4C0 24180020 */  li    $t8, 32
/* B13664 8009C4C4 240C0020 */  li    $t4, 32
/* B13668 8009C4C8 3107007F */  andi  $a3, $t0, 0x7f
/* B1366C 8009C4CC AFA70020 */  sw    $a3, 0x20($sp)
/* B13670 8009C4D0 AFA70048 */  sw    $a3, 0x48($sp)
/* B13674 8009C4D4 AFAC0010 */  sw    $t4, 0x10($sp)
/* B13678 8009C4D8 AFB80014 */  sw    $t8, 0x14($sp)
/* B1367C 8009C4DC AFB90018 */  sw    $t9, 0x18($sp)
/* B13680 8009C4E0 AFAB0024 */  sw    $t3, 0x24($sp)
/* B13684 8009C4E4 AFAD0028 */  sw    $t5, 0x28($sp)
/* B13688 8009C4E8 AFA6004C */  sw    $a2, 0x4c($sp)
/* B1368C 8009C4EC AFA3001C */  sw    $v1, 0x1c($sp)
/* B13690 8009C4F0 AFA30050 */  sw    $v1, 0x50($sp)
/* B13694 8009C4F4 00002825 */  move  $a1, $zero
/* B13698 8009C4F8 0C0253D0 */  jal   func_80094F40
/* B1369C 8009C4FC AFA20070 */   sw    $v0, 0x70($sp)
/* B136A0 8009C500 8FA90070 */  lw    $t1, 0x70($sp)
/* B136A4 8009C504 8FA30050 */  lw    $v1, 0x50($sp)
/* B136A8 8009C508 8FA70048 */  lw    $a3, 0x48($sp)
/* B136AC 8009C50C 8FA6004C */  lw    $a2, 0x4c($sp)
/* B136B0 8009C510 AD220004 */  sw    $v0, 4($t1)
/* B136B4 8009C514 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B136B8 8009C518 3C0FDB06 */  lui   $t7, (0xDB060028 >> 16) # lui $t7, 0xdb06
/* B136BC 8009C51C 35EF0028 */  ori   $t7, (0xDB060028 & 0xFFFF) # ori $t7, $t7, 0x28
/* B136C0 8009C520 244E0008 */  addiu $t6, $v0, 8
/* B136C4 8009C524 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B136C8 8009C528 AC4F0000 */  sw    $t7, ($v0)
/* B136CC 8009C52C 8FAC0090 */  lw    $t4, 0x90($sp)
/* B136D0 8009C530 240E0020 */  li    $t6, 32
/* B136D4 8009C534 24180020 */  li    $t8, 32
/* B136D8 8009C538 8D840000 */  lw    $a0, ($t4)
/* B136DC 8009C53C 24190020 */  li    $t9, 32
/* B136E0 8009C540 240B0001 */  li    $t3, 1
/* B136E4 8009C544 240D0020 */  li    $t5, 32
/* B136E8 8009C548 AFAD0024 */  sw    $t5, 0x24($sp)
/* B136EC 8009C54C AFAB0018 */  sw    $t3, 0x18($sp)
/* B136F0 8009C550 AFB90014 */  sw    $t9, 0x14($sp)
/* B136F4 8009C554 AFAE0028 */  sw    $t6, 0x28($sp)
/* B136F8 8009C558 AFB80010 */  sw    $t8, 0x10($sp)
/* B136FC 8009C55C 00002825 */  move  $a1, $zero
/* B13700 8009C560 AFA3001C */  sw    $v1, 0x1c($sp)
/* B13704 8009C564 AFA70020 */  sw    $a3, 0x20($sp)
/* B13708 8009C568 0C0253D0 */  jal   func_80094F40
/* B1370C 8009C56C AFA2006C */   sw    $v0, 0x6c($sp)
/* B13710 8009C570 8FA8006C */  lw    $t0, 0x6c($sp)
/* B13714 8009C574 3C04E700 */  lui   $a0, 0xe700
/* B13718 8009C578 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B1371C 8009C57C AD020004 */  sw    $v0, 4($t0)
/* B13720 8009C580 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13724 8009C584 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B13728 8009C588 3C05FB00 */  lui   $a1, 0xfb00
/* B1372C 8009C58C 244F0008 */  addiu $t7, $v0, 8
/* B13730 8009C590 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B13734 8009C594 AC400004 */  sw    $zero, 4($v0)
/* B13738 8009C598 AC440000 */  sw    $a0, ($v0)
/* B1373C 8009C59C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13740 8009C5A0 240717BC */  li    $a3, 6076
/* B13744 8009C5A4 244C0008 */  addiu $t4, $v0, 8
/* B13748 8009C5A8 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B1374C 8009C5AC AC460004 */  sw    $a2, 4($v0)
/* B13750 8009C5B0 AC450000 */  sw    $a1, ($v0)
/* B13754 8009C5B4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13758 8009C5B8 24580008 */  addiu $t8, $v0, 8
/* B1375C 8009C5BC AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B13760 8009C5C0 AC400004 */  sw    $zero, 4($v0)
/* B13764 8009C5C4 AC440000 */  sw    $a0, ($v0)
/* B13768 8009C5C8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1376C 8009C5CC 27A40078 */  addiu $a0, $sp, 0x78
/* B13770 8009C5D0 24590008 */  addiu $t9, $v0, 8
/* B13774 8009C5D4 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B13778 8009C5D8 AC460004 */  sw    $a2, 4($v0)
/* B1377C 8009C5DC AC450000 */  sw    $a1, ($v0)
/* B13780 8009C5E0 8FAB0090 */  lw    $t3, 0x90($sp)
/* B13784 8009C5E4 3C068014 */  lui   $a2, %hi(D_8013F9C4) # $a2, 0x8014
/* B13788 8009C5E8 24C6F9C4 */  addiu $a2, %lo(D_8013F9C4) # addiu $a2, $a2, -0x63c
/* B1378C 8009C5EC 0C031AD5 */  jal   func_800C6B54
/* B13790 8009C5F0 8D650000 */   lw    $a1, ($t3)
/* B13794 8009C5F4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B13798 8009C5F8 8FB00038 */  lw    $s0, 0x38($sp)
/* B1379C 8009C5FC 27BD0090 */  addiu $sp, $sp, 0x90
/* B137A0 8009C600 03E00008 */  jr    $ra
/* B137A4 8009C604 00000000 */   nop   

/* B137A8 8009C608 27BDFF80 */  addiu $sp, $sp, -0x80
/* B137AC 8009C60C AFBF003C */  sw    $ra, 0x3c($sp)
/* B137B0 8009C610 AFB10038 */  sw    $s1, 0x38($sp)
/* B137B4 8009C614 AFB00034 */  sw    $s0, 0x34($sp)
/* B137B8 8009C618 8C850000 */  lw    $a1, ($a0)
/* B137BC 8009C61C 00808825 */  move  $s1, $a0
/* B137C0 8009C620 3C068014 */  lui   $a2, %hi(D_8013F9D8) # $a2, 0x8014
/* B137C4 8009C624 24C6F9D8 */  addiu $a2, %lo(D_8013F9D8) # addiu $a2, $a2, -0x628
/* B137C8 8009C628 27A40068 */  addiu $a0, $sp, 0x68
/* B137CC 8009C62C 24071807 */  li    $a3, 6151
/* B137D0 8009C630 0C031AB1 */  jal   func_800C6AC4
/* B137D4 8009C634 00A08025 */   move  $s0, $a1
/* B137D8 8009C638 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B137DC 8009C63C 3C080001 */  lui   $t0, 1
/* B137E0 8009C640 01114021 */  addu  $t0, $t0, $s1
/* B137E4 8009C644 8D091DE4 */  lw    $t1, 0x1de4($t0)
/* B137E8 8009C648 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B137EC 8009C64C 244E0008 */  addiu $t6, $v0, 8
/* B137F0 8009C650 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B137F4 8009C654 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B137F8 8009C658 AC4F0000 */  sw    $t7, ($v0)
/* B137FC 8009C65C 8E240000 */  lw    $a0, ($s1)
/* B13800 8009C660 24180010 */  li    $t8, 16
/* B13804 8009C664 AFB80010 */  sw    $t8, 0x10($sp)
/* B13808 8009C668 00002825 */  move  $a1, $zero
/* B1380C 8009C66C 24070100 */  li    $a3, 256
/* B13810 8009C670 AFA20064 */  sw    $v0, 0x64($sp)
/* B13814 8009C674 AFA90044 */  sw    $t1, 0x44($sp)
/* B13818 8009C678 AFA9007C */  sw    $t1, 0x7c($sp)
/* B1381C 8009C67C 0C0253A7 */  jal   func_80094E9C
/* B13820 8009C680 3126003F */   andi  $a2, $t1, 0x3f
/* B13824 8009C684 8FA30064 */  lw    $v1, 0x64($sp)
/* B13828 8009C688 8FA8007C */  lw    $t0, 0x7c($sp)
/* B1382C 8009C68C 3C0ADB06 */  lui   $t2, (0xDB060024 >> 16) # lui $t2, 0xdb06
/* B13830 8009C690 AC620004 */  sw    $v0, 4($v1)
/* B13834 8009C694 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13838 8009C698 354A0024 */  ori   $t2, (0xDB060024 & 0xFFFF) # ori $t2, $t2, 0x24
/* B1383C 8009C69C 00087080 */  sll   $t6, $t0, 2
/* B13840 8009C6A0 24590008 */  addiu $t9, $v0, 8
/* B13844 8009C6A4 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B13848 8009C6A8 AC4A0000 */  sw    $t2, ($v0)
/* B1384C 8009C6AC 8E240000 */  lw    $a0, ($s1)
/* B13850 8009C6B0 01C87023 */  subu  $t6, $t6, $t0
/* B13854 8009C6B4 000E70C0 */  sll   $t6, $t6, 3
/* B13858 8009C6B8 01C87021 */  addu  $t6, $t6, $t0
/* B1385C 8009C6BC 00083900 */  sll   $a3, $t0, 4
/* B13860 8009C6C0 000E7040 */  sll   $t6, $t6, 1
/* B13864 8009C6C4 00E83823 */  subu  $a3, $a3, $t0
/* B13868 8009C6C8 00073880 */  sll   $a3, $a3, 2
/* B1386C 8009C6CC 31CF07FF */  andi  $t7, $t6, 0x7ff
/* B13870 8009C6D0 24190200 */  li    $t9, 512
/* B13874 8009C6D4 240B0008 */  li    $t3, 8
/* B13878 8009C6D8 240C0200 */  li    $t4, 512
/* B1387C 8009C6DC 240D0001 */  li    $t5, 1
/* B13880 8009C6E0 24180008 */  li    $t8, 8
/* B13884 8009C6E4 AFB80024 */  sw    $t8, 0x24($sp)
/* B13888 8009C6E8 AFAD0018 */  sw    $t5, 0x18($sp)
/* B1388C 8009C6EC AFAC0014 */  sw    $t4, 0x14($sp)
/* B13890 8009C6F0 AFAB0010 */  sw    $t3, 0x10($sp)
/* B13894 8009C6F4 AFB90028 */  sw    $t9, 0x28($sp)
/* B13898 8009C6F8 AFAF0020 */  sw    $t7, 0x20($sp)
/* B1389C 8009C6FC 30E707FF */  andi  $a3, $a3, 0x7ff
/* B138A0 8009C700 AFA0001C */  sw    $zero, 0x1c($sp)
/* B138A4 8009C704 00002825 */  move  $a1, $zero
/* B138A8 8009C708 00003025 */  move  $a2, $zero
/* B138AC 8009C70C AFA8007C */  sw    $t0, 0x7c($sp)
/* B138B0 8009C710 0C0253D0 */  jal   func_80094F40
/* B138B4 8009C714 AFA20060 */   sw    $v0, 0x60($sp)
/* B138B8 8009C718 8FA30060 */  lw    $v1, 0x60($sp)
/* B138BC 8009C71C 8FA8007C */  lw    $t0, 0x7c($sp)
/* B138C0 8009C720 3C0BDB06 */  lui   $t3, (0xDB060028 >> 16) # lui $t3, 0xdb06
/* B138C4 8009C724 AC620004 */  sw    $v0, 4($v1)
/* B138C8 8009C728 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B138CC 8009C72C 356B0028 */  ori   $t3, (0xDB060028 & 0xFFFF) # ori $t3, $t3, 0x28
/* B138D0 8009C730 240C007F */  li    $t4, 127
/* B138D4 8009C734 244A0008 */  addiu $t2, $v0, 8
/* B138D8 8009C738 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B138DC 8009C73C AC4B0000 */  sw    $t3, ($v0)
/* B138E0 8009C740 8E240000 */  lw    $a0, ($s1)
/* B138E4 8009C744 8FA30044 */  lw    $v1, 0x44($sp)
/* B138E8 8009C748 240D0020 */  li    $t5, 32
/* B138EC 8009C74C 240E0020 */  li    $t6, 32
/* B138F0 8009C750 240F0001 */  li    $t7, 1
/* B138F4 8009C754 24180020 */  li    $t8, 32
/* B138F8 8009C758 24190020 */  li    $t9, 32
/* B138FC 8009C75C 3063007F */  andi  $v1, $v1, 0x7f
/* B13900 8009C760 01833023 */  subu  $a2, $t4, $v1
/* B13904 8009C764 AFA3001C */  sw    $v1, 0x1c($sp)
/* B13908 8009C768 AFB90028 */  sw    $t9, 0x28($sp)
/* B1390C 8009C76C AFB80024 */  sw    $t8, 0x24($sp)
/* B13910 8009C770 AFAF0018 */  sw    $t7, 0x18($sp)
/* B13914 8009C774 AFAE0014 */  sw    $t6, 0x14($sp)
/* B13918 8009C778 AFAD0010 */  sw    $t5, 0x10($sp)
/* B1391C 8009C77C AFA00020 */  sw    $zero, 0x20($sp)
/* B13920 8009C780 00002825 */  move  $a1, $zero
/* B13924 8009C784 00003825 */  move  $a3, $zero
/* B13928 8009C788 AFA8007C */  sw    $t0, 0x7c($sp)
/* B1392C 8009C78C 0C0253D0 */  jal   func_80094F40
/* B13930 8009C790 AFA2005C */   sw    $v0, 0x5c($sp)
/* B13934 8009C794 8FA9005C */  lw    $t1, 0x5c($sp)
/* B13938 8009C798 8FA8007C */  lw    $t0, 0x7c($sp)
/* B1393C 8009C79C 3C0BDB06 */  lui   $t3, (0xDB06002C >> 16) # lui $t3, 0xdb06
/* B13940 8009C7A0 AD220004 */  sw    $v0, 4($t1)
/* B13944 8009C7A4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13948 8009C7A8 356B002C */  ori   $t3, (0xDB06002C & 0xFFFF) # ori $t3, $t3, 0x2c
/* B1394C 8009C7AC 00086080 */  sll   $t4, $t0, 2
/* B13950 8009C7B0 244A0008 */  addiu $t2, $v0, 8
/* B13954 8009C7B4 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* B13958 8009C7B8 AC4B0000 */  sw    $t3, ($v0)
/* B1395C 8009C7BC 8E240000 */  lw    $a0, ($s1)
/* B13960 8009C7C0 01886023 */  subu  $t4, $t4, $t0
/* B13964 8009C7C4 000C6040 */  sll   $t4, $t4, 1
/* B13968 8009C7C8 318D03FF */  andi  $t5, $t4, 0x3ff
/* B1396C 8009C7CC 0008C880 */  sll   $t9, $t0, 2
/* B13970 8009C7D0 240903FF */  li    $t1, 1023
/* B13974 8009C7D4 0328C823 */  subu  $t9, $t9, $t0
/* B13978 8009C7D8 332A03FF */  andi  $t2, $t9, 0x3ff
/* B1397C 8009C7DC 012D3823 */  subu  $a3, $t1, $t5
/* B13980 8009C7E0 240D0100 */  li    $t5, 256
/* B13984 8009C7E4 012A5823 */  subu  $t3, $t1, $t2
/* B13988 8009C7E8 240C0010 */  li    $t4, 16
/* B1398C 8009C7EC 240E0010 */  li    $t6, 16
/* B13990 8009C7F0 240F0100 */  li    $t7, 256
/* B13994 8009C7F4 24180001 */  li    $t8, 1
/* B13998 8009C7F8 AFB80018 */  sw    $t8, 0x18($sp)
/* B1399C 8009C7FC AFAF0014 */  sw    $t7, 0x14($sp)
/* B139A0 8009C800 AFAE0010 */  sw    $t6, 0x10($sp)
/* B139A4 8009C804 AFAC0024 */  sw    $t4, 0x24($sp)
/* B139A8 8009C808 AFAB0020 */  sw    $t3, 0x20($sp)
/* B139AC 8009C80C AFAD0028 */  sw    $t5, 0x28($sp)
/* B139B0 8009C810 AFA0001C */  sw    $zero, 0x1c($sp)
/* B139B4 8009C814 00002825 */  move  $a1, $zero
/* B139B8 8009C818 00003025 */  move  $a2, $zero
/* B139BC 8009C81C 0C0253D0 */  jal   func_80094F40
/* B139C0 8009C820 AFA20058 */   sw    $v0, 0x58($sp)
/* B139C4 8009C824 8FA30058 */  lw    $v1, 0x58($sp)
/* B139C8 8009C828 3C04E700 */  lui   $a0, 0xe700
/* B139CC 8009C82C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B139D0 8009C830 AC620004 */  sw    $v0, 4($v1)
/* B139D4 8009C834 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B139D8 8009C838 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B139DC 8009C83C 3C05FB00 */  lui   $a1, 0xfb00
/* B139E0 8009C840 244E0008 */  addiu $t6, $v0, 8
/* B139E4 8009C844 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B139E8 8009C848 AC400004 */  sw    $zero, 4($v0)
/* B139EC 8009C84C AC440000 */  sw    $a0, ($v0)
/* B139F0 8009C850 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B139F4 8009C854 2407182B */  li    $a3, 6187
/* B139F8 8009C858 244F0008 */  addiu $t7, $v0, 8
/* B139FC 8009C85C AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B13A00 8009C860 AC460004 */  sw    $a2, 4($v0)
/* B13A04 8009C864 AC450000 */  sw    $a1, ($v0)
/* B13A08 8009C868 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13A0C 8009C86C 24580008 */  addiu $t8, $v0, 8
/* B13A10 8009C870 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B13A14 8009C874 AC400004 */  sw    $zero, 4($v0)
/* B13A18 8009C878 AC440000 */  sw    $a0, ($v0)
/* B13A1C 8009C87C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13A20 8009C880 27A40068 */  addiu $a0, $sp, 0x68
/* B13A24 8009C884 24590008 */  addiu $t9, $v0, 8
/* B13A28 8009C888 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B13A2C 8009C88C AC460004 */  sw    $a2, 4($v0)
/* B13A30 8009C890 3C068014 */  lui   $a2, %hi(D_8013F9EC) # $a2, 0x8014
/* B13A34 8009C894 AC450000 */  sw    $a1, ($v0)
/* B13A38 8009C898 8E250000 */  lw    $a1, ($s1)
/* B13A3C 8009C89C 0C031AD5 */  jal   func_800C6B54
/* B13A40 8009C8A0 24C6F9EC */   addiu $a2, %lo(D_8013F9EC) # addiu $a2, $a2, -0x614
/* B13A44 8009C8A4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B13A48 8009C8A8 8FB00034 */  lw    $s0, 0x34($sp)
/* B13A4C 8009C8AC 8FB10038 */  lw    $s1, 0x38($sp)
/* B13A50 8009C8B0 03E00008 */  jr    $ra
/* B13A54 8009C8B4 27BD0080 */   addiu $sp, $sp, 0x80

/* B13A58 8009C8B8 27BDFF80 */  addiu $sp, $sp, -0x80
/* B13A5C 8009C8BC AFBF003C */  sw    $ra, 0x3c($sp)
/* B13A60 8009C8C0 AFB10038 */  sw    $s1, 0x38($sp)
/* B13A64 8009C8C4 AFB00034 */  sw    $s0, 0x34($sp)
/* B13A68 8009C8C8 8C850000 */  lw    $a1, ($a0)
/* B13A6C 8009C8CC 00808825 */  move  $s1, $a0
/* B13A70 8009C8D0 3C068014 */  lui   $a2, %hi(D_8013FA00) # $a2, 0x8014
/* B13A74 8009C8D4 24C6FA00 */  addiu $a2, %lo(D_8013FA00) # addiu $a2, $a2, -0x600
/* B13A78 8009C8D8 27A40068 */  addiu $a0, $sp, 0x68
/* B13A7C 8009C8DC 24071839 */  li    $a3, 6201
/* B13A80 8009C8E0 0C031AB1 */  jal   func_800C6AC4
/* B13A84 8009C8E4 00A08025 */   move  $s0, $a1
/* B13A88 8009C8E8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13A8C 8009C8EC 3C090001 */  lui   $t1, 1
/* B13A90 8009C8F0 01314821 */  addu  $t1, $t1, $s1
/* B13A94 8009C8F4 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B13A98 8009C8F8 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B13A9C 8009C8FC 244E0008 */  addiu $t6, $v0, 8
/* B13AA0 8009C900 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B13AA4 8009C904 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B13AA8 8009C908 AC4F0000 */  sw    $t7, ($v0)
/* B13AAC 8009C90C 8E240000 */  lw    $a0, ($s1)
/* B13AB0 8009C910 24180020 */  li    $t8, 32
/* B13AB4 8009C914 24190020 */  li    $t9, 32
/* B13AB8 8009C918 240A0001 */  li    $t2, 1
/* B13ABC 8009C91C 240B0020 */  li    $t3, 32
/* B13AC0 8009C920 240C0020 */  li    $t4, 32
/* B13AC4 8009C924 3128007F */  andi  $t0, $t1, 0x7f
/* B13AC8 8009C928 AFA80020 */  sw    $t0, 0x20($sp)
/* B13ACC 8009C92C AFA80048 */  sw    $t0, 0x48($sp)
/* B13AD0 8009C930 AFAC0028 */  sw    $t4, 0x28($sp)
/* B13AD4 8009C934 AFAB0024 */  sw    $t3, 0x24($sp)
/* B13AD8 8009C938 AFAA0018 */  sw    $t2, 0x18($sp)
/* B13ADC 8009C93C AFB90014 */  sw    $t9, 0x14($sp)
/* B13AE0 8009C940 AFB80010 */  sw    $t8, 0x10($sp)
/* B13AE4 8009C944 AFA0001C */  sw    $zero, 0x1c($sp)
/* B13AE8 8009C948 00002825 */  move  $a1, $zero
/* B13AEC 8009C94C 00003025 */  move  $a2, $zero
/* B13AF0 8009C950 00003825 */  move  $a3, $zero
/* B13AF4 8009C954 AFA20064 */  sw    $v0, 0x64($sp)
/* B13AF8 8009C958 0C0253D0 */  jal   func_80094F40
/* B13AFC 8009C95C AFA9007C */   sw    $t1, 0x7c($sp)
/* B13B00 8009C960 8FA30064 */  lw    $v1, 0x64($sp)
/* B13B04 8009C964 8FA70048 */  lw    $a3, 0x48($sp)
/* B13B08 8009C968 3C0EDB06 */  lui   $t6, (0xDB060028 >> 16) # lui $t6, 0xdb06
/* B13B0C 8009C96C AC620004 */  sw    $v0, 4($v1)
/* B13B10 8009C970 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13B14 8009C974 35CE0028 */  ori   $t6, (0xDB060028 & 0xFFFF) # ori $t6, $t6, 0x28
/* B13B18 8009C978 240F007F */  li    $t7, 127
/* B13B1C 8009C97C 244D0008 */  addiu $t5, $v0, 8
/* B13B20 8009C980 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B13B24 8009C984 AC4E0000 */  sw    $t6, ($v0)
/* B13B28 8009C988 8E240000 */  lw    $a0, ($s1)
/* B13B2C 8009C98C 8FA3007C */  lw    $v1, 0x7c($sp)
/* B13B30 8009C990 24180020 */  li    $t8, 32
/* B13B34 8009C994 24190020 */  li    $t9, 32
/* B13B38 8009C998 240A0001 */  li    $t2, 1
/* B13B3C 8009C99C 240B0020 */  li    $t3, 32
/* B13B40 8009C9A0 240C0020 */  li    $t4, 32
/* B13B44 8009C9A4 3063007F */  andi  $v1, $v1, 0x7f
/* B13B48 8009C9A8 01E33023 */  subu  $a2, $t7, $v1
/* B13B4C 8009C9AC AFA3001C */  sw    $v1, 0x1c($sp)
/* B13B50 8009C9B0 AFAC0028 */  sw    $t4, 0x28($sp)
/* B13B54 8009C9B4 AFAB0024 */  sw    $t3, 0x24($sp)
/* B13B58 8009C9B8 AFAA0018 */  sw    $t2, 0x18($sp)
/* B13B5C 8009C9BC AFB90014 */  sw    $t9, 0x14($sp)
/* B13B60 8009C9C0 AFB80010 */  sw    $t8, 0x10($sp)
/* B13B64 8009C9C4 00002825 */  move  $a1, $zero
/* B13B68 8009C9C8 AFA70020 */  sw    $a3, 0x20($sp)
/* B13B6C 8009C9CC 0C0253D0 */  jal   func_80094F40
/* B13B70 8009C9D0 AFA20060 */   sw    $v0, 0x60($sp)
/* B13B74 8009C9D4 8FA80060 */  lw    $t0, 0x60($sp)
/* B13B78 8009C9D8 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B13B7C 8009C9DC 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B13B80 8009C9E0 AD020004 */  sw    $v0, 4($t0)
/* B13B84 8009C9E4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13B88 8009C9E8 240A00FF */  li    $t2, 255
/* B13B8C 8009C9EC 240B0040 */  li    $t3, 64
/* B13B90 8009C9F0 244D0008 */  addiu $t5, $v0, 8
/* B13B94 8009C9F4 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B13B98 8009C9F8 AC4E0000 */  sw    $t6, ($v0)
/* B13B9C 8009C9FC 8FAF007C */  lw    $t7, 0x7c($sp)
/* B13BA0 8009CA00 8E240000 */  lw    $a0, ($s1)
/* B13BA4 8009CA04 AFAB0010 */  sw    $t3, 0x10($sp)
/* B13BA8 8009CA08 000FC080 */  sll   $t8, $t7, 2
/* B13BAC 8009CA0C 030FC021 */  addu  $t8, $t8, $t7
/* B13BB0 8009CA10 0018C040 */  sll   $t8, $t8, 1
/* B13BB4 8009CA14 331900FF */  andi  $t9, $t8, 0xff
/* B13BB8 8009CA18 01593023 */  subu  $a2, $t2, $t9
/* B13BBC 8009CA1C 00002825 */  move  $a1, $zero
/* B13BC0 8009CA20 24070020 */  li    $a3, 32
/* B13BC4 8009CA24 0C0253A7 */  jal   func_80094E9C
/* B13BC8 8009CA28 AFA2005C */   sw    $v0, 0x5c($sp)
/* B13BCC 8009CA2C 8FA3005C */  lw    $v1, 0x5c($sp)
/* B13BD0 8009CA30 3C04E700 */  lui   $a0, 0xe700
/* B13BD4 8009CA34 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B13BD8 8009CA38 AC620004 */  sw    $v0, 4($v1)
/* B13BDC 8009CA3C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13BE0 8009CA40 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B13BE4 8009CA44 3C05FB00 */  lui   $a1, 0xfb00
/* B13BE8 8009CA48 244C0008 */  addiu $t4, $v0, 8
/* B13BEC 8009CA4C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B13BF0 8009CA50 AC400004 */  sw    $zero, 4($v0)
/* B13BF4 8009CA54 AC440000 */  sw    $a0, ($v0)
/* B13BF8 8009CA58 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13BFC 8009CA5C 24071858 */  li    $a3, 6232
/* B13C00 8009CA60 244D0008 */  addiu $t5, $v0, 8
/* B13C04 8009CA64 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B13C08 8009CA68 AC460004 */  sw    $a2, 4($v0)
/* B13C0C 8009CA6C AC450000 */  sw    $a1, ($v0)
/* B13C10 8009CA70 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13C14 8009CA74 244E0008 */  addiu $t6, $v0, 8
/* B13C18 8009CA78 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B13C1C 8009CA7C AC400004 */  sw    $zero, 4($v0)
/* B13C20 8009CA80 AC440000 */  sw    $a0, ($v0)
/* B13C24 8009CA84 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13C28 8009CA88 27A40068 */  addiu $a0, $sp, 0x68
/* B13C2C 8009CA8C 244F0008 */  addiu $t7, $v0, 8
/* B13C30 8009CA90 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B13C34 8009CA94 AC460004 */  sw    $a2, 4($v0)
/* B13C38 8009CA98 3C068014 */  lui   $a2, %hi(D_8013FA14) # $a2, 0x8014
/* B13C3C 8009CA9C AC450000 */  sw    $a1, ($v0)
/* B13C40 8009CAA0 8E250000 */  lw    $a1, ($s1)
/* B13C44 8009CAA4 0C031AD5 */  jal   func_800C6B54
/* B13C48 8009CAA8 24C6FA14 */   addiu $a2, %lo(D_8013FA14) # addiu $a2, $a2, -0x5ec
/* B13C4C 8009CAAC 8FBF003C */  lw    $ra, 0x3c($sp)
/* B13C50 8009CAB0 8FB00034 */  lw    $s0, 0x34($sp)
/* B13C54 8009CAB4 8FB10038 */  lw    $s1, 0x38($sp)
/* B13C58 8009CAB8 03E00008 */  jr    $ra
/* B13C5C 8009CABC 27BD0080 */   addiu $sp, $sp, 0x80

/* B13C60 8009CAC0 27BDFF90 */  addiu $sp, $sp, -0x70
/* B13C64 8009CAC4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B13C68 8009CAC8 AFA40070 */  sw    $a0, 0x70($sp)
/* B13C6C 8009CACC 8C850000 */  lw    $a1, ($a0)
/* B13C70 8009CAD0 3C068014 */  lui   $a2, %hi(D_8013FA28) # $a2, 0x8014
/* B13C74 8009CAD4 24C6FA28 */  addiu $a2, %lo(D_8013FA28) # addiu $a2, $a2, -0x5d8
/* B13C78 8009CAD8 27A40058 */  addiu $a0, $sp, 0x58
/* B13C7C 8009CADC 24071869 */  li    $a3, 6249
/* B13C80 8009CAE0 0C031AB1 */  jal   func_800C6AC4
/* B13C84 8009CAE4 AFA50068 */   sw    $a1, 0x68($sp)
/* B13C88 8009CAE8 8FA80068 */  lw    $t0, 0x68($sp)
/* B13C8C 8009CAEC 8FAB0070 */  lw    $t3, 0x70($sp)
/* B13C90 8009CAF0 3C090001 */  lui   $t1, 1
/* B13C94 8009CAF4 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B13C98 8009CAF8 012B4821 */  addu  $t1, $t1, $t3
/* B13C9C 8009CAFC 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B13CA0 8009CB00 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B13CA4 8009CB04 244F0008 */  addiu $t7, $v0, 8
/* B13CA8 8009CB08 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B13CAC 8009CB0C AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B13CB0 8009CB10 AC580000 */  sw    $t8, ($v0)
/* B13CB4 8009CB14 8D640000 */  lw    $a0, ($t3)
/* B13CB8 8009CB18 24180020 */  li    $t8, 32
/* B13CBC 8009CB1C 240F0020 */  li    $t7, 32
/* B13CC0 8009CB20 2419007F */  li    $t9, 127
/* B13CC4 8009CB24 240C0020 */  li    $t4, 32
/* B13CC8 8009CB28 240D0020 */  li    $t5, 32
/* B13CCC 8009CB2C 240E0001 */  li    $t6, 1
/* B13CD0 8009CB30 3123007F */  andi  $v1, $t1, 0x7f
/* B13CD4 8009CB34 3127007F */  andi  $a3, $t1, 0x7f
/* B13CD8 8009CB38 AFA70020 */  sw    $a3, 0x20($sp)
/* B13CDC 8009CB3C 03233023 */  subu  $a2, $t9, $v1
/* B13CE0 8009CB40 AFA3001C */  sw    $v1, 0x1c($sp)
/* B13CE4 8009CB44 AFAE0018 */  sw    $t6, 0x18($sp)
/* B13CE8 8009CB48 AFAD0014 */  sw    $t5, 0x14($sp)
/* B13CEC 8009CB4C AFAC0010 */  sw    $t4, 0x10($sp)
/* B13CF0 8009CB50 AFAF0024 */  sw    $t7, 0x24($sp)
/* B13CF4 8009CB54 AFB80028 */  sw    $t8, 0x28($sp)
/* B13CF8 8009CB58 00002825 */  move  $a1, $zero
/* B13CFC 8009CB5C AFA80068 */  sw    $t0, 0x68($sp)
/* B13D00 8009CB60 0C0253D0 */  jal   func_80094F40
/* B13D04 8009CB64 AFA20054 */   sw    $v0, 0x54($sp)
/* B13D08 8009CB68 8FAA0054 */  lw    $t2, 0x54($sp)
/* B13D0C 8009CB6C 8FA80068 */  lw    $t0, 0x68($sp)
/* B13D10 8009CB70 3C04E700 */  lui   $a0, 0xe700
/* B13D14 8009CB74 AD420004 */  sw    $v0, 4($t2)
/* B13D18 8009CB78 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B13D1C 8009CB7C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B13D20 8009CB80 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B13D24 8009CB84 24790008 */  addiu $t9, $v1, 8
/* B13D28 8009CB88 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B13D2C 8009CB8C AC600004 */  sw    $zero, 4($v1)
/* B13D30 8009CB90 AC640000 */  sw    $a0, ($v1)
/* B13D34 8009CB94 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B13D38 8009CB98 3C05FB00 */  lui   $a1, 0xfb00
/* B13D3C 8009CB9C 24071878 */  li    $a3, 6264
/* B13D40 8009CBA0 246C0008 */  addiu $t4, $v1, 8
/* B13D44 8009CBA4 AD0C02C0 */  sw    $t4, 0x2c0($t0)
/* B13D48 8009CBA8 AC660004 */  sw    $a2, 4($v1)
/* B13D4C 8009CBAC AC650000 */  sw    $a1, ($v1)
/* B13D50 8009CBB0 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B13D54 8009CBB4 244D0008 */  addiu $t5, $v0, 8
/* B13D58 8009CBB8 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B13D5C 8009CBBC AC400004 */  sw    $zero, 4($v0)
/* B13D60 8009CBC0 AC440000 */  sw    $a0, ($v0)
/* B13D64 8009CBC4 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B13D68 8009CBC8 27A40058 */  addiu $a0, $sp, 0x58
/* B13D6C 8009CBCC 244E0008 */  addiu $t6, $v0, 8
/* B13D70 8009CBD0 AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B13D74 8009CBD4 AC460004 */  sw    $a2, 4($v0)
/* B13D78 8009CBD8 AC450000 */  sw    $a1, ($v0)
/* B13D7C 8009CBDC 8FAF0070 */  lw    $t7, 0x70($sp)
/* B13D80 8009CBE0 3C068014 */  lui   $a2, %hi(D_8013FA3C) # $a2, 0x8014
/* B13D84 8009CBE4 24C6FA3C */  addiu $a2, %lo(D_8013FA3C) # addiu $a2, $a2, -0x5c4
/* B13D88 8009CBE8 0C031AD5 */  jal   func_800C6B54
/* B13D8C 8009CBEC 8DE50000 */   lw    $a1, ($t7)
/* B13D90 8009CBF0 8FBF0034 */  lw    $ra, 0x34($sp)
/* B13D94 8009CBF4 27BD0070 */  addiu $sp, $sp, 0x70
/* B13D98 8009CBF8 03E00008 */  jr    $ra
/* B13D9C 8009CBFC 00000000 */   nop   

/* B13DA0 8009CC00 27BDFF70 */  addiu $sp, $sp, -0x90
/* B13DA4 8009CC04 AFBF003C */  sw    $ra, 0x3c($sp)
/* B13DA8 8009CC08 AFB00038 */  sw    $s0, 0x38($sp)
/* B13DAC 8009CC0C AFA40090 */  sw    $a0, 0x90($sp)
/* B13DB0 8009CC10 8C850000 */  lw    $a1, ($a0)
/* B13DB4 8009CC14 3C068014 */  lui   $a2, %hi(D_8013FA50) # $a2, 0x8014
/* B13DB8 8009CC18 24C6FA50 */  addiu $a2, %lo(D_8013FA50) # addiu $a2, $a2, -0x5b0
/* B13DBC 8009CC1C 27A40078 */  addiu $a0, $sp, 0x78
/* B13DC0 8009CC20 24071892 */  li    $a3, 6290
/* B13DC4 8009CC24 0C031AB1 */  jal   func_800C6AC4
/* B13DC8 8009CC28 00A08025 */   move  $s0, $a1
/* B13DCC 8009CC2C 8FAA0090 */  lw    $t2, 0x90($sp)
/* B13DD0 8009CC30 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13DD4 8009CC34 3C080001 */  lui   $t0, 1
/* B13DD8 8009CC38 010A4021 */  addu  $t0, $t0, $t2
/* B13DDC 8009CC3C 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B13DE0 8009CC40 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B13DE4 8009CC44 244F0008 */  addiu $t7, $v0, 8
/* B13DE8 8009CC48 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B13DEC 8009CC4C 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B13DF0 8009CC50 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B13DF4 8009CC54 AC580000 */  sw    $t8, ($v0)
/* B13DF8 8009CC58 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B13DFC 8009CC5C 3C048013 */  lui   $a0, 0x8013
/* B13E00 8009CC60 3C188016 */  lui   $t8, 0x8016
/* B13E04 8009CC64 00195880 */  sll   $t3, $t9, 2
/* B13E08 8009CC68 008B2021 */  addu  $a0, $a0, $t3
/* B13E0C 8009CC6C 8C84A340 */  lw    $a0, -0x5cc0($a0)
/* B13E10 8009CC70 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B13E14 8009CC74 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B13E18 8009CC78 00046900 */  sll   $t5, $a0, 4
/* B13E1C 8009CC7C 000D7702 */  srl   $t6, $t5, 0x1c
/* B13E20 8009CC80 000E7880 */  sll   $t7, $t6, 2
/* B13E24 8009CC84 030FC021 */  addu  $t8, $t8, $t7
/* B13E28 8009CC88 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B13E2C 8009CC8C 00816024 */  and   $t4, $a0, $at
/* B13E30 8009CC90 3C018000 */  lui   $at, 0x8000
/* B13E34 8009CC94 0198C821 */  addu  $t9, $t4, $t8
/* B13E38 8009CC98 03215821 */  addu  $t3, $t9, $at
/* B13E3C 8009CC9C AC4B0004 */  sw    $t3, 4($v0)
/* B13E40 8009CCA0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13E44 8009CCA4 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B13E48 8009CCA8 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B13E4C 8009CCAC 244D0008 */  addiu $t5, $v0, 8
/* B13E50 8009CCB0 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B13E54 8009CCB4 AC4E0000 */  sw    $t6, ($v0)
/* B13E58 8009CCB8 8D440000 */  lw    $a0, ($t2)
/* B13E5C 8009CCBC 240F007F */  li    $t7, 127
/* B13E60 8009CCC0 3103007F */  andi  $v1, $t0, 0x7f
/* B13E64 8009CCC4 01E33023 */  subu  $a2, $t7, $v1
/* B13E68 8009CCC8 240D0020 */  li    $t5, 32
/* B13E6C 8009CCCC 240B0020 */  li    $t3, 32
/* B13E70 8009CCD0 24190001 */  li    $t9, 1
/* B13E74 8009CCD4 24180020 */  li    $t8, 32
/* B13E78 8009CCD8 240C0020 */  li    $t4, 32
/* B13E7C 8009CCDC 3107007F */  andi  $a3, $t0, 0x7f
/* B13E80 8009CCE0 AFA70020 */  sw    $a3, 0x20($sp)
/* B13E84 8009CCE4 AFA70048 */  sw    $a3, 0x48($sp)
/* B13E88 8009CCE8 AFAC0010 */  sw    $t4, 0x10($sp)
/* B13E8C 8009CCEC AFB80014 */  sw    $t8, 0x14($sp)
/* B13E90 8009CCF0 AFB90018 */  sw    $t9, 0x18($sp)
/* B13E94 8009CCF4 AFAB0024 */  sw    $t3, 0x24($sp)
/* B13E98 8009CCF8 AFAD0028 */  sw    $t5, 0x28($sp)
/* B13E9C 8009CCFC AFA6004C */  sw    $a2, 0x4c($sp)
/* B13EA0 8009CD00 AFA3001C */  sw    $v1, 0x1c($sp)
/* B13EA4 8009CD04 AFA30050 */  sw    $v1, 0x50($sp)
/* B13EA8 8009CD08 00002825 */  move  $a1, $zero
/* B13EAC 8009CD0C 0C0253D0 */  jal   func_80094F40
/* B13EB0 8009CD10 AFA20070 */   sw    $v0, 0x70($sp)
/* B13EB4 8009CD14 8FA90070 */  lw    $t1, 0x70($sp)
/* B13EB8 8009CD18 8FA30050 */  lw    $v1, 0x50($sp)
/* B13EBC 8009CD1C 8FA70048 */  lw    $a3, 0x48($sp)
/* B13EC0 8009CD20 8FA6004C */  lw    $a2, 0x4c($sp)
/* B13EC4 8009CD24 AD220004 */  sw    $v0, 4($t1)
/* B13EC8 8009CD28 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13ECC 8009CD2C 3C0FDB06 */  lui   $t7, (0xDB060028 >> 16) # lui $t7, 0xdb06
/* B13ED0 8009CD30 35EF0028 */  ori   $t7, (0xDB060028 & 0xFFFF) # ori $t7, $t7, 0x28
/* B13ED4 8009CD34 244E0008 */  addiu $t6, $v0, 8
/* B13ED8 8009CD38 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B13EDC 8009CD3C AC4F0000 */  sw    $t7, ($v0)
/* B13EE0 8009CD40 8FAC0090 */  lw    $t4, 0x90($sp)
/* B13EE4 8009CD44 240E0020 */  li    $t6, 32
/* B13EE8 8009CD48 24180020 */  li    $t8, 32
/* B13EEC 8009CD4C 8D840000 */  lw    $a0, ($t4)
/* B13EF0 8009CD50 24190020 */  li    $t9, 32
/* B13EF4 8009CD54 240B0001 */  li    $t3, 1
/* B13EF8 8009CD58 240D0020 */  li    $t5, 32
/* B13EFC 8009CD5C AFAD0024 */  sw    $t5, 0x24($sp)
/* B13F00 8009CD60 AFAB0018 */  sw    $t3, 0x18($sp)
/* B13F04 8009CD64 AFB90014 */  sw    $t9, 0x14($sp)
/* B13F08 8009CD68 AFAE0028 */  sw    $t6, 0x28($sp)
/* B13F0C 8009CD6C AFB80010 */  sw    $t8, 0x10($sp)
/* B13F10 8009CD70 00002825 */  move  $a1, $zero
/* B13F14 8009CD74 AFA3001C */  sw    $v1, 0x1c($sp)
/* B13F18 8009CD78 AFA70020 */  sw    $a3, 0x20($sp)
/* B13F1C 8009CD7C 0C0253D0 */  jal   func_80094F40
/* B13F20 8009CD80 AFA2006C */   sw    $v0, 0x6c($sp)
/* B13F24 8009CD84 8FA8006C */  lw    $t0, 0x6c($sp)
/* B13F28 8009CD88 3C04E700 */  lui   $a0, 0xe700
/* B13F2C 8009CD8C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B13F30 8009CD90 AD020004 */  sw    $v0, 4($t0)
/* B13F34 8009CD94 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13F38 8009CD98 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B13F3C 8009CD9C 3C05FB00 */  lui   $a1, 0xfb00
/* B13F40 8009CDA0 244F0008 */  addiu $t7, $v0, 8
/* B13F44 8009CDA4 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B13F48 8009CDA8 AC400004 */  sw    $zero, 4($v0)
/* B13F4C 8009CDAC AC440000 */  sw    $a0, ($v0)
/* B13F50 8009CDB0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B13F54 8009CDB4 240718B0 */  li    $a3, 6320
/* B13F58 8009CDB8 244C0008 */  addiu $t4, $v0, 8
/* B13F5C 8009CDBC AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B13F60 8009CDC0 AC460004 */  sw    $a2, 4($v0)
/* B13F64 8009CDC4 AC450000 */  sw    $a1, ($v0)
/* B13F68 8009CDC8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13F6C 8009CDCC 24580008 */  addiu $t8, $v0, 8
/* B13F70 8009CDD0 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B13F74 8009CDD4 AC400004 */  sw    $zero, 4($v0)
/* B13F78 8009CDD8 AC440000 */  sw    $a0, ($v0)
/* B13F7C 8009CDDC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B13F80 8009CDE0 27A40078 */  addiu $a0, $sp, 0x78
/* B13F84 8009CDE4 24590008 */  addiu $t9, $v0, 8
/* B13F88 8009CDE8 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B13F8C 8009CDEC AC460004 */  sw    $a2, 4($v0)
/* B13F90 8009CDF0 AC450000 */  sw    $a1, ($v0)
/* B13F94 8009CDF4 8FAB0090 */  lw    $t3, 0x90($sp)
/* B13F98 8009CDF8 3C068014 */  lui   $a2, %hi(D_8013FA64) # $a2, 0x8014
/* B13F9C 8009CDFC 24C6FA64 */  addiu $a2, %lo(D_8013FA64) # addiu $a2, $a2, -0x59c
/* B13FA0 8009CE00 0C031AD5 */  jal   func_800C6B54
/* B13FA4 8009CE04 8D650000 */   lw    $a1, ($t3)
/* B13FA8 8009CE08 8FBF003C */  lw    $ra, 0x3c($sp)
/* B13FAC 8009CE0C 8FB00038 */  lw    $s0, 0x38($sp)
/* B13FB0 8009CE10 27BD0090 */  addiu $sp, $sp, 0x90
/* B13FB4 8009CE14 03E00008 */  jr    $ra
/* B13FB8 8009CE18 00000000 */   nop   

glabel func_8009CE1C
/* B13FBC 8009CE1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B13FC0 8009CE20 AFBF0014 */  sw    $ra, 0x14($sp)
/* B13FC4 8009CE24 AFA5001C */  sw    $a1, 0x1c($sp)
/* B13FC8 8009CE28 24050050 */  li    $a1, 80
/* B13FCC 8009CE2C AFA60020 */  sw    $a2, 0x20($sp)
/* B13FD0 8009CE30 0C031A73 */  jal   graph_alloc
/* B13FD4 8009CE34 AFA70024 */   sw    $a3, 0x24($sp)
/* B13FD8 8009CE38 8FA60020 */  lw    $a2, 0x20($sp)
/* B13FDC 8009CE3C 8FA70024 */  lw    $a3, 0x24($sp)
/* B13FE0 8009CE40 8FA30034 */  lw    $v1, 0x34($sp)
/* B13FE4 8009CE44 30C607FF */  andi  $a2, $a2, 0x7ff
/* B13FE8 8009CE48 30CE0FFF */  andi  $t6, $a2, 0xfff
/* B13FEC 8009CE4C 8FA40038 */  lw    $a0, 0x38($sp)
/* B13FF0 8009CE50 000E7B00 */  sll   $t7, $t6, 0xc
/* B13FF4 8009CE54 3C09F200 */  lui   $t1, 0xf200
/* B13FF8 8009CE58 30E707FF */  andi  $a3, $a3, 0x7ff
/* B13FFC 8009CE5C 30F90FFF */  andi  $t9, $a3, 0xfff
/* B14000 8009CE60 01E9C025 */  or    $t8, $t7, $t1
/* B14004 8009CE64 3C08E800 */  lui   $t0, 0xe800
/* B14008 8009CE68 03195025 */  or    $t2, $t8, $t9
/* B1400C 8009CE6C AC480000 */  sw    $t0, ($v0)
/* B14010 8009CE70 AC400004 */  sw    $zero, 4($v0)
/* B14014 8009CE74 AC4A0008 */  sw    $t2, 8($v0)
/* B14018 8009CE78 8FAE0028 */  lw    $t6, 0x28($sp)
/* B1401C 8009CE7C 8FAB001C */  lw    $t3, 0x1c($sp)
/* B14020 8009CE80 306307FF */  andi  $v1, $v1, 0x7ff
/* B14024 8009CE84 25CFFFFF */  addiu $t7, $t6, -1
/* B14028 8009CE88 8FAE002C */  lw    $t6, 0x2c($sp)
/* B1402C 8009CE8C 000FC080 */  sll   $t8, $t7, 2
/* B14030 8009CE90 00D8C821 */  addu  $t9, $a2, $t8
/* B14034 8009CE94 316C0007 */  andi  $t4, $t3, 7
/* B14038 8009CE98 332A0FFF */  andi  $t2, $t9, 0xfff
/* B1403C 8009CE9C 000A5B00 */  sll   $t3, $t2, 0xc
/* B14040 8009CEA0 000C6E00 */  sll   $t5, $t4, 0x18
/* B14044 8009CEA4 25CFFFFF */  addiu $t7, $t6, -1
/* B14048 8009CEA8 000FC080 */  sll   $t8, $t7, 2
/* B1404C 8009CEAC 01AB6025 */  or    $t4, $t5, $t3
/* B14050 8009CEB0 00F8C821 */  addu  $t9, $a3, $t8
/* B14054 8009CEB4 306B0FFF */  andi  $t3, $v1, 0xfff
/* B14058 8009CEB8 332A0FFF */  andi  $t2, $t9, 0xfff
/* B1405C 8009CEBC 000B7300 */  sll   $t6, $t3, 0xc
/* B14060 8009CEC0 308407FF */  andi  $a0, $a0, 0x7ff
/* B14064 8009CEC4 30980FFF */  andi  $t8, $a0, 0xfff
/* B14068 8009CEC8 01C97825 */  or    $t7, $t6, $t1
/* B1406C 8009CECC 018A6825 */  or    $t5, $t4, $t2
/* B14070 8009CED0 01F8C825 */  or    $t9, $t7, $t8
/* B14074 8009CED4 AC4D000C */  sw    $t5, 0xc($v0)
/* B14078 8009CED8 AC400014 */  sw    $zero, 0x14($v0)
/* B1407C 8009CEDC AC480010 */  sw    $t0, 0x10($v0)
/* B14080 8009CEE0 AC590018 */  sw    $t9, 0x18($v0)
/* B14084 8009CEE4 8FAB003C */  lw    $t3, 0x3c($sp)
/* B14088 8009CEE8 8FAC0030 */  lw    $t4, 0x30($sp)
/* B1408C 8009CEEC 256EFFFF */  addiu $t6, $t3, -1
/* B14090 8009CEF0 8FAB0040 */  lw    $t3, 0x40($sp)
/* B14094 8009CEF4 000E7880 */  sll   $t7, $t6, 2
/* B14098 8009CEF8 006FC021 */  addu  $t8, $v1, $t7
/* B1409C 8009CEFC 318A0007 */  andi  $t2, $t4, 7
/* B140A0 8009CF00 33190FFF */  andi  $t9, $t8, 0xfff
/* B140A4 8009CF04 256EFFFF */  addiu $t6, $t3, -1
/* B140A8 8009CF08 000E7880 */  sll   $t7, $t6, 2
/* B140AC 8009CF0C 00196300 */  sll   $t4, $t9, 0xc
/* B140B0 8009CF10 000A6E00 */  sll   $t5, $t2, 0x18
/* B140B4 8009CF14 01AC5025 */  or    $t2, $t5, $t4
/* B140B8 8009CF18 008FC021 */  addu  $t8, $a0, $t7
/* B140BC 8009CF1C 33190FFF */  andi  $t9, $t8, 0xfff
/* B140C0 8009CF20 01596825 */  or    $t5, $t2, $t9
/* B140C4 8009CF24 3C0CFA00 */  lui   $t4, 0xfa00
/* B140C8 8009CF28 AC4D001C */  sw    $t5, 0x1c($v0)
/* B140CC 8009CF2C AC4C0020 */  sw    $t4, 0x20($v0)
/* B140D0 8009CF30 8FB80048 */  lw    $t8, 0x48($sp)
/* B140D4 8009CF34 8FAE0044 */  lw    $t6, 0x44($sp)
/* B140D8 8009CF38 8FAC004C */  lw    $t4, 0x4c($sp)
/* B140DC 8009CF3C 330A00FF */  andi  $t2, $t8, 0xff
/* B140E0 8009CF40 000ACC00 */  sll   $t9, $t2, 0x10
/* B140E4 8009CF44 8FAA0050 */  lw    $t2, 0x50($sp)
/* B140E8 8009CF48 000E7E00 */  sll   $t7, $t6, 0x18
/* B140EC 8009CF4C 01F96825 */  or    $t5, $t7, $t9
/* B140F0 8009CF50 318B00FF */  andi  $t3, $t4, 0xff
/* B140F4 8009CF54 000B7200 */  sll   $t6, $t3, 8
/* B140F8 8009CF58 01AEC025 */  or    $t8, $t5, $t6
/* B140FC 8009CF5C 314F00FF */  andi  $t7, $t2, 0xff
/* B14100 8009CF60 030FC825 */  or    $t9, $t8, $t7
/* B14104 8009CF64 3C0CDF00 */  lui   $t4, 0xdf00
/* B14108 8009CF68 AC590024 */  sw    $t9, 0x24($v0)
/* B1410C 8009CF6C AC4C0028 */  sw    $t4, 0x28($v0)
/* B14110 8009CF70 AC40002C */  sw    $zero, 0x2c($v0)
/* B14114 8009CF74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B14118 8009CF78 27BD0018 */  addiu $sp, $sp, 0x18
/* B1411C 8009CF7C 03E00008 */  jr    $ra
/* B14120 8009CF80 00000000 */   nop   

/* B14124 8009CF84 27BDFF80 */  addiu $sp, $sp, -0x80
/* B14128 8009CF88 AFBF0044 */  sw    $ra, 0x44($sp)
/* B1412C 8009CF8C AFA40080 */  sw    $a0, 0x80($sp)
/* B14130 8009CF90 8C850000 */  lw    $a1, ($a0)
/* B14134 8009CF94 3C068014 */  lui   $a2, %hi(D_8013FA78) # $a2, 0x8014
/* B14138 8009CF98 24C6FA78 */  addiu $a2, %lo(D_8013FA78) # addiu $a2, $a2, -0x588
/* B1413C 8009CF9C 27A40068 */  addiu $a0, $sp, 0x68
/* B14140 8009CFA0 24071921 */  li    $a3, 6433
/* B14144 8009CFA4 0C031AB1 */  jal   func_800C6AC4
/* B14148 8009CFA8 AFA50078 */   sw    $a1, 0x78($sp)
/* B1414C 8009CFAC 8FA80078 */  lw    $t0, 0x78($sp)
/* B14150 8009CFB0 8FAC0080 */  lw    $t4, 0x80($sp)
/* B14154 8009CFB4 3C010001 */  lui   $at, 1
/* B14158 8009CFB8 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B1415C 8009CFBC 01815021 */  addu  $t2, $t4, $at
/* B14160 8009CFC0 8D491DE4 */  lw    $t1, 0x1de4($t2)
/* B14164 8009CFC4 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B14168 8009CFC8 244F0008 */  addiu $t7, $v0, 8
/* B1416C 8009CFCC 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B14170 8009CFD0 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B14174 8009CFD4 AC580000 */  sw    $t8, ($v0)
/* B14178 8009CFD8 8D840000 */  lw    $a0, ($t4)
/* B1417C 8009CFDC 240F0001 */  li    $t7, 1
/* B14180 8009CFE0 2419007F */  li    $t9, 127
/* B14184 8009CFE4 240D0020 */  li    $t5, 32
/* B14188 8009CFE8 240E0020 */  li    $t6, 32
/* B1418C 8009CFEC 3123007F */  andi  $v1, $t1, 0x7f
/* B14190 8009CFF0 03233023 */  subu  $a2, $t9, $v1
/* B14194 8009CFF4 AFAE0014 */  sw    $t6, 0x14($sp)
/* B14198 8009CFF8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B1419C 8009CFFC AFAF0018 */  sw    $t7, 0x18($sp)
/* B141A0 8009D000 240F00FF */  li    $t7, 255
/* B141A4 8009D004 240D00FF */  li    $t5, 255
/* B141A8 8009D008 240E00FF */  li    $t6, 255
/* B141AC 8009D00C 24190020 */  li    $t9, 32
/* B141B0 8009D010 24180020 */  li    $t8, 32
/* B141B4 8009D014 3127007F */  andi  $a3, $t1, 0x7f
/* B141B8 8009D018 AFA70020 */  sw    $a3, 0x20($sp)
/* B141BC 8009D01C AFB80024 */  sw    $t8, 0x24($sp)
/* B141C0 8009D020 AFB90028 */  sw    $t9, 0x28($sp)
/* B141C4 8009D024 AFAE0030 */  sw    $t6, 0x30($sp)
/* B141C8 8009D028 AFAD002C */  sw    $t5, 0x2c($sp)
/* B141CC 8009D02C AFAF0034 */  sw    $t7, 0x34($sp)
/* B141D0 8009D030 AFA3001C */  sw    $v1, 0x1c($sp)
/* B141D4 8009D034 85581D30 */  lh    $t8, 0x1d30($t2)
/* B141D8 8009D038 00002825 */  move  $a1, $zero
/* B141DC 8009D03C AFA80078 */  sw    $t0, 0x78($sp)
/* B141E0 8009D040 2719007F */  addiu $t9, $t8, 0x7f
/* B141E4 8009D044 AFB90038 */  sw    $t9, 0x38($sp)
/* B141E8 8009D048 0C027387 */  jal   func_8009CE1C
/* B141EC 8009D04C AFA20064 */   sw    $v0, 0x64($sp)
/* B141F0 8009D050 8FAB0064 */  lw    $t3, 0x64($sp)
/* B141F4 8009D054 8FA80078 */  lw    $t0, 0x78($sp)
/* B141F8 8009D058 3C04E700 */  lui   $a0, 0xe700
/* B141FC 8009D05C AD620004 */  sw    $v0, 4($t3)
/* B14200 8009D060 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B14204 8009D064 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B14208 8009D068 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B1420C 8009D06C 246D0008 */  addiu $t5, $v1, 8
/* B14210 8009D070 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B14214 8009D074 AC600004 */  sw    $zero, 4($v1)
/* B14218 8009D078 AC640000 */  sw    $a0, ($v1)
/* B1421C 8009D07C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B14220 8009D080 3C05FB00 */  lui   $a1, 0xfb00
/* B14224 8009D084 24071931 */  li    $a3, 6449
/* B14228 8009D088 246E0008 */  addiu $t6, $v1, 8
/* B1422C 8009D08C AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B14230 8009D090 AC660004 */  sw    $a2, 4($v1)
/* B14234 8009D094 AC650000 */  sw    $a1, ($v1)
/* B14238 8009D098 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B1423C 8009D09C 244F0008 */  addiu $t7, $v0, 8
/* B14240 8009D0A0 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B14244 8009D0A4 AC400004 */  sw    $zero, 4($v0)
/* B14248 8009D0A8 AC440000 */  sw    $a0, ($v0)
/* B1424C 8009D0AC 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B14250 8009D0B0 27A40068 */  addiu $a0, $sp, 0x68
/* B14254 8009D0B4 24580008 */  addiu $t8, $v0, 8
/* B14258 8009D0B8 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B1425C 8009D0BC AC460004 */  sw    $a2, 4($v0)
/* B14260 8009D0C0 AC450000 */  sw    $a1, ($v0)
/* B14264 8009D0C4 8FB90080 */  lw    $t9, 0x80($sp)
/* B14268 8009D0C8 3C068014 */  lui   $a2, %hi(D_8013FA8C) # $a2, 0x8014
/* B1426C 8009D0CC 24C6FA8C */  addiu $a2, %lo(D_8013FA8C) # addiu $a2, $a2, -0x574
/* B14270 8009D0D0 0C031AD5 */  jal   func_800C6B54
/* B14274 8009D0D4 8F250000 */   lw    $a1, ($t9)
/* B14278 8009D0D8 8FBF0044 */  lw    $ra, 0x44($sp)
/* B1427C 8009D0DC 27BD0080 */  addiu $sp, $sp, 0x80
/* B14280 8009D0E0 03E00008 */  jr    $ra
/* B14284 8009D0E4 00000000 */   nop   

/* B14288 8009D0E8 27BDFF80 */  addiu $sp, $sp, -0x80
/* B1428C 8009D0EC AFBF003C */  sw    $ra, 0x3c($sp)
/* B14290 8009D0F0 AFB10038 */  sw    $s1, 0x38($sp)
/* B14294 8009D0F4 AFB00034 */  sw    $s0, 0x34($sp)
/* B14298 8009D0F8 8C850000 */  lw    $a1, ($a0)
/* B1429C 8009D0FC 00808825 */  move  $s1, $a0
/* B142A0 8009D100 3C068014 */  lui   $a2, %hi(D_8013FAA0) # $a2, 0x8014
/* B142A4 8009D104 24C6FAA0 */  addiu $a2, %lo(D_8013FAA0) # addiu $a2, $a2, -0x560
/* B142A8 8009D108 27A40068 */  addiu $a0, $sp, 0x68
/* B142AC 8009D10C 2407193F */  li    $a3, 6463
/* B142B0 8009D110 0C031AB1 */  jal   func_800C6AC4
/* B142B4 8009D114 00A08025 */   move  $s0, $a1
/* B142B8 8009D118 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B142BC 8009D11C 3C080001 */  lui   $t0, 1
/* B142C0 8009D120 01114021 */  addu  $t0, $t0, $s1
/* B142C4 8009D124 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B142C8 8009D128 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B142CC 8009D12C 244E0008 */  addiu $t6, $v0, 8
/* B142D0 8009D130 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B142D4 8009D134 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B142D8 8009D138 AC4F0000 */  sw    $t7, ($v0)
/* B142DC 8009D13C 8E240000 */  lw    $a0, ($s1)
/* B142E0 8009D140 0008C080 */  sll   $t8, $t0, 2
/* B142E4 8009D144 3319007F */  andi  $t9, $t8, 0x7f
/* B142E8 8009D148 2409007F */  li    $t1, 127
/* B142EC 8009D14C 240A0020 */  li    $t2, 32
/* B142F0 8009D150 AFAA0010 */  sw    $t2, 0x10($sp)
/* B142F4 8009D154 01392823 */  subu  $a1, $t1, $t9
/* B142F8 8009D158 00003025 */  move  $a2, $zero
/* B142FC 8009D15C 24070020 */  li    $a3, 32
/* B14300 8009D160 AFA20064 */  sw    $v0, 0x64($sp)
/* B14304 8009D164 0C0253A7 */  jal   func_80094E9C
/* B14308 8009D168 AFA8007C */   sw    $t0, 0x7c($sp)
/* B1430C 8009D16C 8FA30064 */  lw    $v1, 0x64($sp)
/* B14310 8009D170 3C0CDB06 */  lui   $t4, (0xDB060024 >> 16) # lui $t4, 0xdb06
/* B14314 8009D174 358C0024 */  ori   $t4, (0xDB060024 & 0xFFFF) # ori $t4, $t4, 0x24
/* B14318 8009D178 AC620004 */  sw    $v0, 4($v1)
/* B1431C 8009D17C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14320 8009D180 240D0010 */  li    $t5, 16
/* B14324 8009D184 00002825 */  move  $a1, $zero
/* B14328 8009D188 244B0008 */  addiu $t3, $v0, 8
/* B1432C 8009D18C AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B14330 8009D190 AC4C0000 */  sw    $t4, ($v0)
/* B14334 8009D194 8FA6007C */  lw    $a2, 0x7c($sp)
/* B14338 8009D198 8E240000 */  lw    $a0, ($s1)
/* B1433C 8009D19C AFAD0010 */  sw    $t5, 0x10($sp)
/* B14340 8009D1A0 00C00821 */  addu  $at, $a2, $zero
/* B14344 8009D1A4 00063080 */  sll   $a2, $a2, 2
/* B14348 8009D1A8 00C13021 */  addu  $a2, $a2, $at
/* B1434C 8009D1AC 30C6003F */  andi  $a2, $a2, 0x3f
/* B14350 8009D1B0 24070010 */  li    $a3, 16
/* B14354 8009D1B4 0C0253A7 */  jal   func_80094E9C
/* B14358 8009D1B8 AFA20060 */   sw    $v0, 0x60($sp)
/* B1435C 8009D1BC 8FA30060 */  lw    $v1, 0x60($sp)
/* B14360 8009D1C0 3C0FDB06 */  lui   $t7, (0xDB060028 >> 16) # lui $t7, 0xdb06
/* B14364 8009D1C4 35EF0028 */  ori   $t7, (0xDB060028 & 0xFFFF) # ori $t7, $t7, 0x28
/* B14368 8009D1C8 AC620004 */  sw    $v0, 4($v1)
/* B1436C 8009D1CC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14370 8009D1D0 240A003F */  li    $t2, 63
/* B14374 8009D1D4 240B0010 */  li    $t3, 16
/* B14378 8009D1D8 244E0008 */  addiu $t6, $v0, 8
/* B1437C 8009D1DC AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B14380 8009D1E0 AC4F0000 */  sw    $t7, ($v0)
/* B14384 8009D1E4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B14388 8009D1E8 8E240000 */  lw    $a0, ($s1)
/* B1438C 8009D1EC AFAB0010 */  sw    $t3, 0x10($sp)
/* B14390 8009D1F0 00184840 */  sll   $t1, $t8, 1
/* B14394 8009D1F4 3139003F */  andi  $t9, $t1, 0x3f
/* B14398 8009D1F8 01593023 */  subu  $a2, $t2, $t9
/* B1439C 8009D1FC 00002825 */  move  $a1, $zero
/* B143A0 8009D200 24070010 */  li    $a3, 16
/* B143A4 8009D204 0C0253A7 */  jal   func_80094E9C
/* B143A8 8009D208 AFA2005C */   sw    $v0, 0x5c($sp)
/* B143AC 8009D20C 8FA3005C */  lw    $v1, 0x5c($sp)
/* B143B0 8009D210 3C0DDB06 */  lui   $t5, (0xDB06002C >> 16) # lui $t5, 0xdb06
/* B143B4 8009D214 35AD002C */  ori   $t5, (0xDB06002C & 0xFFFF) # ori $t5, $t5, 0x2c
/* B143B8 8009D218 AC620004 */  sw    $v0, 4($v1)
/* B143BC 8009D21C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B143C0 8009D220 2409007F */  li    $t1, 127
/* B143C4 8009D224 240A0020 */  li    $t2, 32
/* B143C8 8009D228 244C0008 */  addiu $t4, $v0, 8
/* B143CC 8009D22C AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B143D0 8009D230 AC4D0000 */  sw    $t5, ($v0)
/* B143D4 8009D234 8E240000 */  lw    $a0, ($s1)
/* B143D8 8009D238 8FAE007C */  lw    $t6, 0x7c($sp)
/* B143DC 8009D23C 240D0020 */  li    $t5, 32
/* B143E0 8009D240 240C0020 */  li    $t4, 32
/* B143E4 8009D244 000E7880 */  sll   $t7, $t6, 2
/* B143E8 8009D248 01EE7823 */  subu  $t7, $t7, $t6
/* B143EC 8009D24C 31F8007F */  andi  $t8, $t7, 0x7f
/* B143F0 8009D250 24190020 */  li    $t9, 32
/* B143F4 8009D254 240B0001 */  li    $t3, 1
/* B143F8 8009D258 AFAB0018 */  sw    $t3, 0x18($sp)
/* B143FC 8009D25C AFB90014 */  sw    $t9, 0x14($sp)
/* B14400 8009D260 01383823 */  subu  $a3, $t1, $t8
/* B14404 8009D264 AFAC0024 */  sw    $t4, 0x24($sp)
/* B14408 8009D268 AFAD0028 */  sw    $t5, 0x28($sp)
/* B1440C 8009D26C AFA00020 */  sw    $zero, 0x20($sp)
/* B14410 8009D270 AFA0001C */  sw    $zero, 0x1c($sp)
/* B14414 8009D274 AFAA0010 */  sw    $t2, 0x10($sp)
/* B14418 8009D278 00002825 */  move  $a1, $zero
/* B1441C 8009D27C 00003025 */  move  $a2, $zero
/* B14420 8009D280 0C0253D0 */  jal   func_80094F40
/* B14424 8009D284 AFA20058 */   sw    $v0, 0x58($sp)
/* B14428 8009D288 8FA30058 */  lw    $v1, 0x58($sp)
/* B1442C 8009D28C 3C04E700 */  lui   $a0, 0xe700
/* B14430 8009D290 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B14434 8009D294 AC620004 */  sw    $v0, 4($v1)
/* B14438 8009D298 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1443C 8009D29C 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B14440 8009D2A0 3C05FB00 */  lui   $a1, 0xfb00
/* B14444 8009D2A4 244E0008 */  addiu $t6, $v0, 8
/* B14448 8009D2A8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B1444C 8009D2AC AC400004 */  sw    $zero, 4($v0)
/* B14450 8009D2B0 AC440000 */  sw    $a0, ($v0)
/* B14454 8009D2B4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14458 8009D2B8 2407195B */  li    $a3, 6491
/* B1445C 8009D2BC 244F0008 */  addiu $t7, $v0, 8
/* B14460 8009D2C0 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B14464 8009D2C4 AC460004 */  sw    $a2, 4($v0)
/* B14468 8009D2C8 AC450000 */  sw    $a1, ($v0)
/* B1446C 8009D2CC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B14470 8009D2D0 24490008 */  addiu $t1, $v0, 8
/* B14474 8009D2D4 AE0902D0 */  sw    $t1, 0x2d0($s0)
/* B14478 8009D2D8 AC400004 */  sw    $zero, 4($v0)
/* B1447C 8009D2DC AC440000 */  sw    $a0, ($v0)
/* B14480 8009D2E0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B14484 8009D2E4 27A40068 */  addiu $a0, $sp, 0x68
/* B14488 8009D2E8 24580008 */  addiu $t8, $v0, 8
/* B1448C 8009D2EC AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B14490 8009D2F0 AC460004 */  sw    $a2, 4($v0)
/* B14494 8009D2F4 3C068014 */  lui   $a2, %hi(D_8013FAB4) # $a2, 0x8014
/* B14498 8009D2F8 AC450000 */  sw    $a1, ($v0)
/* B1449C 8009D2FC 8E250000 */  lw    $a1, ($s1)
/* B144A0 8009D300 0C031AD5 */  jal   func_800C6B54
/* B144A4 8009D304 24C6FAB4 */   addiu $a2, %lo(D_8013FAB4) # addiu $a2, $a2, -0x54c
/* B144A8 8009D308 8FBF003C */  lw    $ra, 0x3c($sp)
/* B144AC 8009D30C 8FB00034 */  lw    $s0, 0x34($sp)
/* B144B0 8009D310 8FB10038 */  lw    $s1, 0x38($sp)
/* B144B4 8009D314 03E00008 */  jr    $ra
/* B144B8 8009D318 27BD0080 */   addiu $sp, $sp, 0x80

/* B144BC 8009D31C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B144C0 8009D320 AFBF0014 */  sw    $ra, 0x14($sp)
/* B144C4 8009D324 AFA40050 */  sw    $a0, 0x50($sp)
/* B144C8 8009D328 8C850000 */  lw    $a1, ($a0)
/* B144CC 8009D32C 3C068014 */  lui   $a2, %hi(D_8013FAC8) # $a2, 0x8014
/* B144D0 8009D330 24C6FAC8 */  addiu $a2, %lo(D_8013FAC8) # addiu $a2, $a2, -0x538
/* B144D4 8009D334 27A4003C */  addiu $a0, $sp, 0x3c
/* B144D8 8009D338 24071973 */  li    $a3, 6515
/* B144DC 8009D33C 0C031AB1 */  jal   func_800C6AC4
/* B144E0 8009D340 AFA5004C */   sw    $a1, 0x4c($sp)
/* B144E4 8009D344 8FA8004C */  lw    $t0, 0x4c($sp)
/* B144E8 8009D348 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B144EC 8009D34C 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B144F0 8009D350 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B144F4 8009D354 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B144F8 8009D358 3C048013 */  lui   $a0, 0x8013
/* B144FC 8009D35C 244F0008 */  addiu $t7, $v0, 8
/* B14500 8009D360 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B14504 8009D364 AC580000 */  sw    $t8, ($v0)
/* B14508 8009D368 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B1450C 8009D36C 3C0E8016 */  lui   $t6, 0x8016
/* B14510 8009D370 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B14514 8009D374 00194880 */  sll   $t1, $t9, 2
/* B14518 8009D378 00892021 */  addu  $a0, $a0, $t1
/* B1451C 8009D37C 8C84A348 */  lw    $a0, -0x5cb8($a0)
/* B14520 8009D380 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B14524 8009D384 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B14528 8009D388 00045900 */  sll   $t3, $a0, 4
/* B1452C 8009D38C 000B6702 */  srl   $t4, $t3, 0x1c
/* B14530 8009D390 000C6880 */  sll   $t5, $t4, 2
/* B14534 8009D394 01CD7021 */  addu  $t6, $t6, $t5
/* B14538 8009D398 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B1453C 8009D39C 00815024 */  and   $t2, $a0, $at
/* B14540 8009D3A0 3C018000 */  lui   $at, 0x8000
/* B14544 8009D3A4 014E7821 */  addu  $t7, $t2, $t6
/* B14548 8009D3A8 01E1C021 */  addu  $t8, $t7, $at
/* B1454C 8009D3AC AC580004 */  sw    $t8, 4($v0)
/* B14550 8009D3B0 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B14554 8009D3B4 3C04E700 */  lui   $a0, 0xe700
/* B14558 8009D3B8 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B1455C 8009D3BC 24790008 */  addiu $t9, $v1, 8
/* B14560 8009D3C0 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B14564 8009D3C4 AC600004 */  sw    $zero, 4($v1)
/* B14568 8009D3C8 AC640000 */  sw    $a0, ($v1)
/* B1456C 8009D3CC 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B14570 8009D3D0 3C05FB00 */  lui   $a1, 0xfb00
/* B14574 8009D3D4 24071980 */  li    $a3, 6528
/* B14578 8009D3D8 24690008 */  addiu $t1, $v1, 8
/* B1457C 8009D3DC AD0902C0 */  sw    $t1, 0x2c0($t0)
/* B14580 8009D3E0 AC660004 */  sw    $a2, 4($v1)
/* B14584 8009D3E4 AC650000 */  sw    $a1, ($v1)
/* B14588 8009D3E8 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B1458C 8009D3EC 244B0008 */  addiu $t3, $v0, 8
/* B14590 8009D3F0 AD0B02D0 */  sw    $t3, 0x2d0($t0)
/* B14594 8009D3F4 AC400004 */  sw    $zero, 4($v0)
/* B14598 8009D3F8 AC440000 */  sw    $a0, ($v0)
/* B1459C 8009D3FC 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B145A0 8009D400 27A4003C */  addiu $a0, $sp, 0x3c
/* B145A4 8009D404 244C0008 */  addiu $t4, $v0, 8
/* B145A8 8009D408 AD0C02D0 */  sw    $t4, 0x2d0($t0)
/* B145AC 8009D40C AC460004 */  sw    $a2, 4($v0)
/* B145B0 8009D410 AC450000 */  sw    $a1, ($v0)
/* B145B4 8009D414 8FAD0050 */  lw    $t5, 0x50($sp)
/* B145B8 8009D418 3C068014 */  lui   $a2, %hi(D_8013FADC) # $a2, 0x8014
/* B145BC 8009D41C 24C6FADC */  addiu $a2, %lo(D_8013FADC) # addiu $a2, $a2, -0x524
/* B145C0 8009D420 0C031AD5 */  jal   func_800C6B54
/* B145C4 8009D424 8DA50000 */   lw    $a1, ($t5)
/* B145C8 8009D428 8FBF0014 */  lw    $ra, 0x14($sp)
/* B145CC 8009D42C 27BD0050 */  addiu $sp, $sp, 0x50
/* B145D0 8009D430 03E00008 */  jr    $ra
/* B145D4 8009D434 00000000 */   nop   

/* B145D8 8009D438 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B145DC 8009D43C AFBF0014 */  sw    $ra, 0x14($sp)
/* B145E0 8009D440 AFA40050 */  sw    $a0, 0x50($sp)
/* B145E4 8009D444 8C850000 */  lw    $a1, ($a0)
/* B145E8 8009D448 3C068014 */  lui   $a2, %hi(D_8013FAF0) # $a2, 0x8014
/* B145EC 8009D44C 24C6FAF0 */  addiu $a2, %lo(D_8013FAF0) # addiu $a2, $a2, -0x510
/* B145F0 8009D450 27A40038 */  addiu $a0, $sp, 0x38
/* B145F4 8009D454 240719A0 */  li    $a3, 6560
/* B145F8 8009D458 0C031AB1 */  jal   func_800C6AC4
/* B145FC 8009D45C AFA50048 */   sw    $a1, 0x48($sp)
/* B14600 8009D460 3C028016 */  lui   $v0, %hi(D_8015E660) # $v0, 0x8016
/* B14604 8009D464 2442E660 */  addiu $v0, %lo(D_8015E660) # addiu $v0, $v0, -0x19a0
/* B14608 8009D468 8C4F0004 */  lw    $t7, 4($v0)
/* B1460C 8009D46C 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B14610 8009D470 8FA80048 */  lw    $t0, 0x48($sp)
/* B14614 8009D474 15E00003 */  bnez  $t7, .L8009D484
/* B14618 8009D478 34E7FFFF */   ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1461C 8009D47C 10000002 */  b     .L8009D488
/* B14620 8009D480 24050001 */   li    $a1, 1
.L8009D484:
/* B14624 8009D484 8C450010 */  lw    $a1, 0x10($v0)
.L8009D488:
/* B14628 8009D488 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B1462C 8009D48C 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B14630 8009D490 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B14634 8009D494 24580008 */  addiu $t8, $v0, 8
/* B14638 8009D498 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B1463C 8009D49C 00053080 */  sll   $a2, $a1, 2
/* B14640 8009D4A0 3C048013 */  lui   $a0, 0x8013
/* B14644 8009D4A4 00862021 */  addu  $a0, $a0, $a2
/* B14648 8009D4A8 AC590000 */  sw    $t9, ($v0)
/* B1464C 8009D4AC 8C84A358 */  lw    $a0, -0x5ca8($a0)
/* B14650 8009D4B0 3C098016 */  lui   $t1, %hi(D_80166FA8) # $t1, 0x8016
/* B14654 8009D4B4 25296FA8 */  addiu $t1, %lo(D_80166FA8) # addiu $t1, $t1, 0x6fa8
/* B14658 8009D4B8 00046100 */  sll   $t4, $a0, 4
/* B1465C 8009D4BC 000C6F02 */  srl   $t5, $t4, 0x1c
/* B14660 8009D4C0 000D7080 */  sll   $t6, $t5, 2
/* B14664 8009D4C4 012E7821 */  addu  $t7, $t1, $t6
/* B14668 8009D4C8 8DF80000 */  lw    $t8, ($t7)
/* B1466C 8009D4CC 00875824 */  and   $t3, $a0, $a3
/* B14670 8009D4D0 3C0A8000 */  lui   $t2, 0x8000
/* B14674 8009D4D4 0178C821 */  addu  $t9, $t3, $t8
/* B14678 8009D4D8 032A6021 */  addu  $t4, $t9, $t2
/* B1467C 8009D4DC AC4C0004 */  sw    $t4, 4($v0)
/* B14680 8009D4E0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B14684 8009D4E4 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B14688 8009D4E8 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B1468C 8009D4EC 244D0008 */  addiu $t5, $v0, 8
/* B14690 8009D4F0 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B14694 8009D4F4 3C048013 */  lui   $a0, 0x8013
/* B14698 8009D4F8 00862021 */  addu  $a0, $a0, $a2
/* B1469C 8009D4FC AC4E0000 */  sw    $t6, ($v0)
/* B146A0 8009D500 8C84A350 */  lw    $a0, -0x5cb0($a0)
/* B146A4 8009D504 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B146A8 8009D508 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B146AC 8009D50C 00045900 */  sll   $t3, $a0, 4
/* B146B0 8009D510 000BC702 */  srl   $t8, $t3, 0x1c
/* B146B4 8009D514 0018C880 */  sll   $t9, $t8, 2
/* B146B8 8009D518 01396021 */  addu  $t4, $t1, $t9
/* B146BC 8009D51C 8D8D0000 */  lw    $t5, ($t4)
/* B146C0 8009D520 00877824 */  and   $t7, $a0, $a3
/* B146C4 8009D524 3C04E700 */  lui   $a0, 0xe700
/* B146C8 8009D528 01ED7021 */  addu  $t6, $t7, $t5
/* B146CC 8009D52C 01CA5821 */  addu  $t3, $t6, $t2
/* B146D0 8009D530 AC4B0004 */  sw    $t3, 4($v0)
/* B146D4 8009D534 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B146D8 8009D538 3C05FB00 */  lui   $a1, 0xfb00
/* B146DC 8009D53C 240719B5 */  li    $a3, 6581
/* B146E0 8009D540 24580008 */  addiu $t8, $v0, 8
/* B146E4 8009D544 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B146E8 8009D548 AC400004 */  sw    $zero, 4($v0)
/* B146EC 8009D54C AC440000 */  sw    $a0, ($v0)
/* B146F0 8009D550 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B146F4 8009D554 24590008 */  addiu $t9, $v0, 8
/* B146F8 8009D558 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B146FC 8009D55C AC460004 */  sw    $a2, 4($v0)
/* B14700 8009D560 AC450000 */  sw    $a1, ($v0)
/* B14704 8009D564 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B14708 8009D568 246C0008 */  addiu $t4, $v1, 8
/* B1470C 8009D56C AD0C02D0 */  sw    $t4, 0x2d0($t0)
/* B14710 8009D570 AC600004 */  sw    $zero, 4($v1)
/* B14714 8009D574 AC640000 */  sw    $a0, ($v1)
/* B14718 8009D578 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B1471C 8009D57C 27A40038 */  addiu $a0, $sp, 0x38
/* B14720 8009D580 246F0008 */  addiu $t7, $v1, 8
/* B14724 8009D584 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B14728 8009D588 AC660004 */  sw    $a2, 4($v1)
/* B1472C 8009D58C AC650000 */  sw    $a1, ($v1)
/* B14730 8009D590 8FAD0050 */  lw    $t5, 0x50($sp)
/* B14734 8009D594 3C068014 */  lui   $a2, %hi(D_8013FB04) # $a2, 0x8014
/* B14738 8009D598 24C6FB04 */  addiu $a2, %lo(D_8013FB04) # addiu $a2, $a2, -0x4fc
/* B1473C 8009D59C 0C031AD5 */  jal   func_800C6B54
/* B14740 8009D5A0 8DA50000 */   lw    $a1, ($t5)
/* B14744 8009D5A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B14748 8009D5A8 27BD0050 */  addiu $sp, $sp, 0x50
/* B1474C 8009D5AC 03E00008 */  jr    $ra
/* B14750 8009D5B0 00000000 */   nop   

/* B14754 8009D5B4 27BDFF88 */  addiu $sp, $sp, -0x78
/* B14758 8009D5B8 AFBF003C */  sw    $ra, 0x3c($sp)
/* B1475C 8009D5BC AFB10038 */  sw    $s1, 0x38($sp)
/* B14760 8009D5C0 AFB00034 */  sw    $s0, 0x34($sp)
/* B14764 8009D5C4 8C850000 */  lw    $a1, ($a0)
/* B14768 8009D5C8 00808825 */  move  $s1, $a0
/* B1476C 8009D5CC 3C068014 */  lui   $a2, %hi(D_8013FB18) # $a2, 0x8014
/* B14770 8009D5D0 24C6FB18 */  addiu $a2, %lo(D_8013FB18) # addiu $a2, $a2, -0x4e8
/* B14774 8009D5D4 27A40060 */  addiu $a0, $sp, 0x60
/* B14778 8009D5D8 240719C3 */  li    $a3, 6595
/* B1477C 8009D5DC 0C031AB1 */  jal   func_800C6AC4
/* B14780 8009D5E0 00A08025 */   move  $s0, $a1
/* B14784 8009D5E4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14788 8009D5E8 3C030001 */  lui   $v1, 1
/* B1478C 8009D5EC 00711821 */  addu  $v1, $v1, $s1
/* B14790 8009D5F0 8C631DE4 */  lw    $v1, 0x1de4($v1)
/* B14794 8009D5F4 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B14798 8009D5F8 244E0008 */  addiu $t6, $v0, 8
/* B1479C 8009D5FC AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B147A0 8009D600 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B147A4 8009D604 AC4F0000 */  sw    $t7, ($v0)
/* B147A8 8009D608 8E240000 */  lw    $a0, ($s1)
/* B147AC 8009D60C 00034880 */  sll   $t1, $v1, 2
/* B147B0 8009D610 24180020 */  li    $t8, 32
/* B147B4 8009D614 01234823 */  subu  $t1, $t1, $v1
/* B147B8 8009D618 3126007F */  andi  $a2, $t1, 0x7f
/* B147BC 8009D61C AFA90044 */  sw    $t1, 0x44($sp)
/* B147C0 8009D620 AFB80010 */  sw    $t8, 0x10($sp)
/* B147C4 8009D624 00002825 */  move  $a1, $zero
/* B147C8 8009D628 24070020 */  li    $a3, 32
/* B147CC 8009D62C AFA2005C */  sw    $v0, 0x5c($sp)
/* B147D0 8009D630 0C0253A7 */  jal   func_80094E9C
/* B147D4 8009D634 AFA30074 */   sw    $v1, 0x74($sp)
/* B147D8 8009D638 8FA8005C */  lw    $t0, 0x5c($sp)
/* B147DC 8009D63C 8FA30074 */  lw    $v1, 0x74($sp)
/* B147E0 8009D640 8FA90044 */  lw    $t1, 0x44($sp)
/* B147E4 8009D644 AD020004 */  sw    $v0, 4($t0)
/* B147E8 8009D648 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B147EC 8009D64C 3C0BDB06 */  lui   $t3, (0xDB060024 >> 16) # lui $t3, 0xdb06
/* B147F0 8009D650 356B0024 */  ori   $t3, (0xDB060024 & 0xFFFF) # ori $t3, $t3, 0x24
/* B147F4 8009D654 24590008 */  addiu $t9, $v0, 8
/* B147F8 8009D658 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B147FC 8009D65C AC4B0000 */  sw    $t3, ($v0)
/* B14800 8009D660 8E240000 */  lw    $a0, ($s1)
/* B14804 8009D664 0003C080 */  sll   $t8, $v1, 2
/* B14808 8009D668 0303C023 */  subu  $t8, $t8, $v1
/* B1480C 8009D66C 0018C040 */  sll   $t8, $t8, 1
/* B14810 8009D670 240A03FF */  li    $t2, 1023
/* B14814 8009D674 240D0010 */  li    $t5, 16
/* B14818 8009D678 312C03FF */  andi  $t4, $t1, 0x3ff
/* B1481C 8009D67C 014C3823 */  subu  $a3, $t2, $t4
/* B14820 8009D680 AFAD0010 */  sw    $t5, 0x10($sp)
/* B14824 8009D684 331903FF */  andi  $t9, $t8, 0x3ff
/* B14828 8009D688 01595823 */  subu  $t3, $t2, $t9
/* B1482C 8009D68C 240D0100 */  li    $t5, 256
/* B14830 8009D690 240C0010 */  li    $t4, 16
/* B14834 8009D694 240E0100 */  li    $t6, 256
/* B14838 8009D698 240F0001 */  li    $t7, 1
/* B1483C 8009D69C AFAF0018 */  sw    $t7, 0x18($sp)
/* B14840 8009D6A0 AFAE0014 */  sw    $t6, 0x14($sp)
/* B14844 8009D6A4 AFAC0024 */  sw    $t4, 0x24($sp)
/* B14848 8009D6A8 AFAD0028 */  sw    $t5, 0x28($sp)
/* B1484C 8009D6AC AFAB0020 */  sw    $t3, 0x20($sp)
/* B14850 8009D6B0 AFA0001C */  sw    $zero, 0x1c($sp)
/* B14854 8009D6B4 00002825 */  move  $a1, $zero
/* B14858 8009D6B8 00003025 */  move  $a2, $zero
/* B1485C 8009D6BC 0C0253D0 */  jal   func_80094F40
/* B14860 8009D6C0 AFA20058 */   sw    $v0, 0x58($sp)
/* B14864 8009D6C4 8FA80058 */  lw    $t0, 0x58($sp)
/* B14868 8009D6C8 3C04E700 */  lui   $a0, 0xe700
/* B1486C 8009D6CC 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B14870 8009D6D0 AD020004 */  sw    $v0, 4($t0)
/* B14874 8009D6D4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14878 8009D6D8 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B1487C 8009D6DC 3C05FB00 */  lui   $a1, 0xfb00
/* B14880 8009D6E0 244E0008 */  addiu $t6, $v0, 8
/* B14884 8009D6E4 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B14888 8009D6E8 AC400004 */  sw    $zero, 4($v0)
/* B1488C 8009D6EC AC440000 */  sw    $a0, ($v0)
/* B14890 8009D6F0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14894 8009D6F4 240719D7 */  li    $a3, 6615
/* B14898 8009D6F8 244F0008 */  addiu $t7, $v0, 8
/* B1489C 8009D6FC AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B148A0 8009D700 AC460004 */  sw    $a2, 4($v0)
/* B148A4 8009D704 AC450000 */  sw    $a1, ($v0)
/* B148A8 8009D708 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B148AC 8009D70C 24580008 */  addiu $t8, $v0, 8
/* B148B0 8009D710 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B148B4 8009D714 AC400004 */  sw    $zero, 4($v0)
/* B148B8 8009D718 AC440000 */  sw    $a0, ($v0)
/* B148BC 8009D71C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B148C0 8009D720 27A40060 */  addiu $a0, $sp, 0x60
/* B148C4 8009D724 24590008 */  addiu $t9, $v0, 8
/* B148C8 8009D728 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B148CC 8009D72C AC460004 */  sw    $a2, 4($v0)
/* B148D0 8009D730 3C068014 */  lui   $a2, %hi(D_8013FB2C) # $a2, 0x8014
/* B148D4 8009D734 AC450000 */  sw    $a1, ($v0)
/* B148D8 8009D738 8E250000 */  lw    $a1, ($s1)
/* B148DC 8009D73C 0C031AD5 */  jal   func_800C6B54
/* B148E0 8009D740 24C6FB2C */   addiu $a2, %lo(D_8013FB2C) # addiu $a2, $a2, -0x4d4
/* B148E4 8009D744 8FBF003C */  lw    $ra, 0x3c($sp)
/* B148E8 8009D748 8FB00034 */  lw    $s0, 0x34($sp)
/* B148EC 8009D74C 8FB10038 */  lw    $s1, 0x38($sp)
/* B148F0 8009D750 03E00008 */  jr    $ra
/* B148F4 8009D754 27BD0078 */   addiu $sp, $sp, 0x78

/* B148F8 8009D758 27BDFF70 */  addiu $sp, $sp, -0x90
/* B148FC 8009D75C AFBF003C */  sw    $ra, 0x3c($sp)
/* B14900 8009D760 AFB00038 */  sw    $s0, 0x38($sp)
/* B14904 8009D764 AFA40090 */  sw    $a0, 0x90($sp)
/* B14908 8009D768 8C850000 */  lw    $a1, ($a0)
/* B1490C 8009D76C 3C068014 */  lui   $a2, %hi(D_8013FB40) # $a2, 0x8014
/* B14910 8009D770 24C6FB40 */  addiu $a2, %lo(D_8013FB40) # addiu $a2, $a2, -0x4c0
/* B14914 8009D774 27A40078 */  addiu $a0, $sp, 0x78
/* B14918 8009D778 240719F0 */  li    $a3, 6640
/* B1491C 8009D77C 0C031AB1 */  jal   func_800C6AC4
/* B14920 8009D780 00A08025 */   move  $s0, $a1
/* B14924 8009D784 8FAA0090 */  lw    $t2, 0x90($sp)
/* B14928 8009D788 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1492C 8009D78C 3C080001 */  lui   $t0, 1
/* B14930 8009D790 010A4021 */  addu  $t0, $t0, $t2
/* B14934 8009D794 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B14938 8009D798 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B1493C 8009D79C 244F0008 */  addiu $t7, $v0, 8
/* B14940 8009D7A0 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B14944 8009D7A4 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B14948 8009D7A8 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B1494C 8009D7AC AC580000 */  sw    $t8, ($v0)
/* B14950 8009D7B0 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B14954 8009D7B4 3C048013 */  lui   $a0, 0x8013
/* B14958 8009D7B8 3C188016 */  lui   $t8, 0x8016
/* B1495C 8009D7BC 00195880 */  sll   $t3, $t9, 2
/* B14960 8009D7C0 008B2021 */  addu  $a0, $a0, $t3
/* B14964 8009D7C4 8C84A360 */  lw    $a0, -0x5ca0($a0)
/* B14968 8009D7C8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1496C 8009D7CC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B14970 8009D7D0 00046900 */  sll   $t5, $a0, 4
/* B14974 8009D7D4 000D7702 */  srl   $t6, $t5, 0x1c
/* B14978 8009D7D8 000E7880 */  sll   $t7, $t6, 2
/* B1497C 8009D7DC 030FC021 */  addu  $t8, $t8, $t7
/* B14980 8009D7E0 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B14984 8009D7E4 00816024 */  and   $t4, $a0, $at
/* B14988 8009D7E8 3C018000 */  lui   $at, 0x8000
/* B1498C 8009D7EC 0198C821 */  addu  $t9, $t4, $t8
/* B14990 8009D7F0 03215821 */  addu  $t3, $t9, $at
/* B14994 8009D7F4 AC4B0004 */  sw    $t3, 4($v0)
/* B14998 8009D7F8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1499C 8009D7FC 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B149A0 8009D800 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B149A4 8009D804 244D0008 */  addiu $t5, $v0, 8
/* B149A8 8009D808 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B149AC 8009D80C AC4E0000 */  sw    $t6, ($v0)
/* B149B0 8009D810 8D440000 */  lw    $a0, ($t2)
/* B149B4 8009D814 240F007F */  li    $t7, 127
/* B149B8 8009D818 3103007F */  andi  $v1, $t0, 0x7f
/* B149BC 8009D81C 01E33023 */  subu  $a2, $t7, $v1
/* B149C0 8009D820 240D0020 */  li    $t5, 32
/* B149C4 8009D824 240B0020 */  li    $t3, 32
/* B149C8 8009D828 24190001 */  li    $t9, 1
/* B149CC 8009D82C 24180020 */  li    $t8, 32
/* B149D0 8009D830 240C0020 */  li    $t4, 32
/* B149D4 8009D834 3107007F */  andi  $a3, $t0, 0x7f
/* B149D8 8009D838 AFA70020 */  sw    $a3, 0x20($sp)
/* B149DC 8009D83C AFA70048 */  sw    $a3, 0x48($sp)
/* B149E0 8009D840 AFAC0010 */  sw    $t4, 0x10($sp)
/* B149E4 8009D844 AFB80014 */  sw    $t8, 0x14($sp)
/* B149E8 8009D848 AFB90018 */  sw    $t9, 0x18($sp)
/* B149EC 8009D84C AFAB0024 */  sw    $t3, 0x24($sp)
/* B149F0 8009D850 AFAD0028 */  sw    $t5, 0x28($sp)
/* B149F4 8009D854 AFA6004C */  sw    $a2, 0x4c($sp)
/* B149F8 8009D858 AFA3001C */  sw    $v1, 0x1c($sp)
/* B149FC 8009D85C AFA30050 */  sw    $v1, 0x50($sp)
/* B14A00 8009D860 00002825 */  move  $a1, $zero
/* B14A04 8009D864 0C0253D0 */  jal   func_80094F40
/* B14A08 8009D868 AFA20070 */   sw    $v0, 0x70($sp)
/* B14A0C 8009D86C 8FA90070 */  lw    $t1, 0x70($sp)
/* B14A10 8009D870 8FA30050 */  lw    $v1, 0x50($sp)
/* B14A14 8009D874 8FA70048 */  lw    $a3, 0x48($sp)
/* B14A18 8009D878 8FA6004C */  lw    $a2, 0x4c($sp)
/* B14A1C 8009D87C AD220004 */  sw    $v0, 4($t1)
/* B14A20 8009D880 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14A24 8009D884 3C0FDB06 */  lui   $t7, (0xDB060028 >> 16) # lui $t7, 0xdb06
/* B14A28 8009D888 35EF0028 */  ori   $t7, (0xDB060028 & 0xFFFF) # ori $t7, $t7, 0x28
/* B14A2C 8009D88C 244E0008 */  addiu $t6, $v0, 8
/* B14A30 8009D890 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B14A34 8009D894 AC4F0000 */  sw    $t7, ($v0)
/* B14A38 8009D898 8FAC0090 */  lw    $t4, 0x90($sp)
/* B14A3C 8009D89C 240E0020 */  li    $t6, 32
/* B14A40 8009D8A0 24180020 */  li    $t8, 32
/* B14A44 8009D8A4 8D840000 */  lw    $a0, ($t4)
/* B14A48 8009D8A8 24190020 */  li    $t9, 32
/* B14A4C 8009D8AC 240B0001 */  li    $t3, 1
/* B14A50 8009D8B0 240D0020 */  li    $t5, 32
/* B14A54 8009D8B4 AFAD0024 */  sw    $t5, 0x24($sp)
/* B14A58 8009D8B8 AFAB0018 */  sw    $t3, 0x18($sp)
/* B14A5C 8009D8BC AFB90014 */  sw    $t9, 0x14($sp)
/* B14A60 8009D8C0 AFAE0028 */  sw    $t6, 0x28($sp)
/* B14A64 8009D8C4 AFB80010 */  sw    $t8, 0x10($sp)
/* B14A68 8009D8C8 00002825 */  move  $a1, $zero
/* B14A6C 8009D8CC AFA3001C */  sw    $v1, 0x1c($sp)
/* B14A70 8009D8D0 AFA70020 */  sw    $a3, 0x20($sp)
/* B14A74 8009D8D4 0C0253D0 */  jal   func_80094F40
/* B14A78 8009D8D8 AFA2006C */   sw    $v0, 0x6c($sp)
/* B14A7C 8009D8DC 8FA8006C */  lw    $t0, 0x6c($sp)
/* B14A80 8009D8E0 3C04E700 */  lui   $a0, 0xe700
/* B14A84 8009D8E4 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B14A88 8009D8E8 AD020004 */  sw    $v0, 4($t0)
/* B14A8C 8009D8EC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14A90 8009D8F0 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B14A94 8009D8F4 3C05FB00 */  lui   $a1, 0xfb00
/* B14A98 8009D8F8 244F0008 */  addiu $t7, $v0, 8
/* B14A9C 8009D8FC AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B14AA0 8009D900 AC400004 */  sw    $zero, 4($v0)
/* B14AA4 8009D904 AC440000 */  sw    $a0, ($v0)
/* B14AA8 8009D908 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B14AAC 8009D90C 24071A0F */  li    $a3, 6671
/* B14AB0 8009D910 244C0008 */  addiu $t4, $v0, 8
/* B14AB4 8009D914 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B14AB8 8009D918 AC460004 */  sw    $a2, 4($v0)
/* B14ABC 8009D91C AC450000 */  sw    $a1, ($v0)
/* B14AC0 8009D920 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B14AC4 8009D924 24580008 */  addiu $t8, $v0, 8
/* B14AC8 8009D928 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B14ACC 8009D92C AC400004 */  sw    $zero, 4($v0)
/* B14AD0 8009D930 AC440000 */  sw    $a0, ($v0)
/* B14AD4 8009D934 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B14AD8 8009D938 27A40078 */  addiu $a0, $sp, 0x78
/* B14ADC 8009D93C 24590008 */  addiu $t9, $v0, 8
/* B14AE0 8009D940 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B14AE4 8009D944 AC460004 */  sw    $a2, 4($v0)
/* B14AE8 8009D948 AC450000 */  sw    $a1, ($v0)
/* B14AEC 8009D94C 8FAB0090 */  lw    $t3, 0x90($sp)
/* B14AF0 8009D950 3C068014 */  lui   $a2, %hi(D_8013FB54) # $a2, 0x8014
/* B14AF4 8009D954 24C6FB54 */  addiu $a2, %lo(D_8013FB54) # addiu $a2, $a2, -0x4ac
/* B14AF8 8009D958 0C031AD5 */  jal   func_800C6B54
/* B14AFC 8009D95C 8D650000 */   lw    $a1, ($t3)
/* B14B00 8009D960 8FBF003C */  lw    $ra, 0x3c($sp)
/* B14B04 8009D964 8FB00038 */  lw    $s0, 0x38($sp)
/* B14B08 8009D968 27BD0090 */  addiu $sp, $sp, 0x90
/* B14B0C 8009D96C 03E00008 */  jr    $ra
/* B14B10 8009D970 00000000 */   nop   

/* B14B14 8009D974 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B14B18 8009D978 AFBF0014 */  sw    $ra, 0x14($sp)
/* B14B1C 8009D97C AFA40040 */  sw    $a0, 0x40($sp)
/* B14B20 8009D980 8C850000 */  lw    $a1, ($a0)
/* B14B24 8009D984 3C068014 */  lui   $a2, %hi(D_8013FB68) # $a2, 0x8014
/* B14B28 8009D988 24C6FB68 */  addiu $a2, %lo(D_8013FB68) # addiu $a2, $a2, -0x498
/* B14B2C 8009D98C 27A4002C */  addiu $a0, $sp, 0x2c
/* B14B30 8009D990 24071A60 */  li    $a3, 6752
/* B14B34 8009D994 0C031AB1 */  jal   func_800C6AC4
/* B14B38 8009D998 AFA5003C */   sw    $a1, 0x3c($sp)
/* B14B3C 8009D99C 8FA8003C */  lw    $t0, 0x3c($sp)
/* B14B40 8009D9A0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B14B44 8009D9A4 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B14B48 8009D9A8 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B14B4C 8009D9AC 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B14B50 8009D9B0 3C048013 */  lui   $a0, 0x8013
/* B14B54 8009D9B4 246F0008 */  addiu $t7, $v1, 8
/* B14B58 8009D9B8 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B14B5C 8009D9BC AC780000 */  sw    $t8, ($v1)
/* B14B60 8009D9C0 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B14B64 8009D9C4 3C0E8016 */  lui   $t6, 0x8016
/* B14B68 8009D9C8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B14B6C 8009D9CC 00194880 */  sll   $t1, $t9, 2
/* B14B70 8009D9D0 00892021 */  addu  $a0, $a0, $t1
/* B14B74 8009D9D4 8C84A368 */  lw    $a0, -0x5c98($a0)
/* B14B78 8009D9D8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B14B7C 8009D9DC 3C068014 */  lui   $a2, %hi(D_8013FB7C) # $a2, 0x8014
/* B14B80 8009D9E0 00045900 */  sll   $t3, $a0, 4
/* B14B84 8009D9E4 000B6702 */  srl   $t4, $t3, 0x1c
/* B14B88 8009D9E8 000C6880 */  sll   $t5, $t4, 2
/* B14B8C 8009D9EC 01CD7021 */  addu  $t6, $t6, $t5
/* B14B90 8009D9F0 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B14B94 8009D9F4 00815024 */  and   $t2, $a0, $at
/* B14B98 8009D9F8 3C018000 */  lui   $at, 0x8000
/* B14B9C 8009D9FC 014E7821 */  addu  $t7, $t2, $t6
/* B14BA0 8009DA00 01E1C021 */  addu  $t8, $t7, $at
/* B14BA4 8009DA04 AC780004 */  sw    $t8, 4($v1)
/* B14BA8 8009DA08 8FB90040 */  lw    $t9, 0x40($sp)
/* B14BAC 8009DA0C 27A4002C */  addiu $a0, $sp, 0x2c
/* B14BB0 8009DA10 24C6FB7C */  addiu $a2, %lo(D_8013FB7C) # addiu $a2, $a2, -0x484
/* B14BB4 8009DA14 24071A6A */  li    $a3, 6762
/* B14BB8 8009DA18 0C031AD5 */  jal   func_800C6B54
/* B14BBC 8009DA1C 8F250000 */   lw    $a1, ($t9)
/* B14BC0 8009DA20 8FBF0014 */  lw    $ra, 0x14($sp)
/* B14BC4 8009DA24 27BD0040 */  addiu $sp, $sp, 0x40
/* B14BC8 8009DA28 03E00008 */  jr    $ra
/* B14BCC 8009DA2C 00000000 */   nop   

/* B14BD0 8009DA30 27BDFF70 */  addiu $sp, $sp, -0x90
/* B14BD4 8009DA34 AFBF0034 */  sw    $ra, 0x34($sp)
/* B14BD8 8009DA38 AFA40090 */  sw    $a0, 0x90($sp)
/* B14BDC 8009DA3C 8C840000 */  lw    $a0, ($a0)
/* B14BE0 8009DA40 0C031A73 */  jal   graph_alloc
/* B14BE4 8009DA44 24050018 */   li    $a1, 24
/* B14BE8 8009DA48 8FAF0090 */  lw    $t7, 0x90($sp)
/* B14BEC 8009DA4C 3C068014 */  lui   $a2, %hi(D_8013FB90) # $a2, 0x8014
/* B14BF0 8009DA50 24C6FB90 */  addiu $a2, %lo(D_8013FB90) # addiu $a2, $a2, -0x470
/* B14BF4 8009DA54 8DE50000 */  lw    $a1, ($t7)
/* B14BF8 8009DA58 AFA20088 */  sw    $v0, 0x88($sp)
/* B14BFC 8009DA5C 27A40074 */  addiu $a0, $sp, 0x74
/* B14C00 8009DA60 24071A9E */  li    $a3, 6814
/* B14C04 8009DA64 0C031AB1 */  jal   func_800C6AC4
/* B14C08 8009DA68 AFA50084 */   sw    $a1, 0x84($sp)
/* B14C0C 8009DA6C 8FA30084 */  lw    $v1, 0x84($sp)
/* B14C10 8009DA70 8FAD0090 */  lw    $t5, 0x90($sp)
/* B14C14 8009DA74 3C010001 */  lui   $at, 1
/* B14C18 8009DA78 8C6202D0 */  lw    $v0, 0x2d0($v1)
/* B14C1C 8009DA7C 01A16021 */  addu  $t4, $t5, $at
/* B14C20 8009DA80 8D881DE4 */  lw    $t0, 0x1de4($t4)
/* B14C24 8009DA84 8FAB0088 */  lw    $t3, 0x88($sp)
/* B14C28 8009DA88 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B14C2C 8009DA8C 24580008 */  addiu $t8, $v0, 8
/* B14C30 8009DA90 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B14C34 8009DA94 AC7802D0 */  sw    $t8, 0x2d0($v1)
/* B14C38 8009DA98 AC590000 */  sw    $t9, ($v0)
/* B14C3C 8009DA9C 8DA40000 */  lw    $a0, ($t5)
/* B14C40 8009DAA0 240E007F */  li    $t6, 127
/* B14C44 8009DAA4 3109007F */  andi  $t1, $t0, 0x7f
/* B14C48 8009DAA8 00083880 */  sll   $a3, $t0, 2
/* B14C4C 8009DAAC 01C93023 */  subu  $a2, $t6, $t1
/* B14C50 8009DAB0 00E83823 */  subu  $a3, $a3, $t0
/* B14C54 8009DAB4 30E7007F */  andi  $a3, $a3, 0x7f
/* B14C58 8009DAB8 240E0020 */  li    $t6, 32
/* B14C5C 8009DABC 24190001 */  li    $t9, 1
/* B14C60 8009DAC0 24180020 */  li    $t8, 32
/* B14C64 8009DAC4 240F0020 */  li    $t7, 32
/* B14C68 8009DAC8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B14C6C 8009DACC AFAF0028 */  sw    $t7, 0x28($sp)
/* B14C70 8009DAD0 AFB80014 */  sw    $t8, 0x14($sp)
/* B14C74 8009DAD4 AFB90018 */  sw    $t9, 0x18($sp)
/* B14C78 8009DAD8 AFAE0024 */  sw    $t6, 0x24($sp)
/* B14C7C 8009DADC AFA70020 */  sw    $a3, 0x20($sp)
/* B14C80 8009DAE0 AFA6003C */  sw    $a2, 0x3c($sp)
/* B14C84 8009DAE4 AFA9001C */  sw    $t1, 0x1c($sp)
/* B14C88 8009DAE8 AFA90040 */  sw    $t1, 0x40($sp)
/* B14C8C 8009DAEC AFAC0044 */  sw    $t4, 0x44($sp)
/* B14C90 8009DAF0 00002825 */  move  $a1, $zero
/* B14C94 8009DAF4 AFA30084 */  sw    $v1, 0x84($sp)
/* B14C98 8009DAF8 AFA20070 */  sw    $v0, 0x70($sp)
/* B14C9C 8009DAFC AFA8008C */  sw    $t0, 0x8c($sp)
/* B14CA0 8009DB00 0C0253D0 */  jal   func_80094F40
/* B14CA4 8009DB04 AFAB0088 */   sw    $t3, 0x88($sp)
/* B14CA8 8009DB08 8FAA0070 */  lw    $t2, 0x70($sp)
/* B14CAC 8009DB0C 8FA30084 */  lw    $v1, 0x84($sp)
/* B14CB0 8009DB10 8FA8008C */  lw    $t0, 0x8c($sp)
/* B14CB4 8009DB14 8FA90040 */  lw    $t1, 0x40($sp)
/* B14CB8 8009DB18 8FAB0088 */  lw    $t3, 0x88($sp)
/* B14CBC 8009DB1C 8FAC0044 */  lw    $t4, 0x44($sp)
/* B14CC0 8009DB20 8FA6003C */  lw    $a2, 0x3c($sp)
/* B14CC4 8009DB24 AD420004 */  sw    $v0, 4($t2)
/* B14CC8 8009DB28 8C6202D0 */  lw    $v0, 0x2d0($v1)
/* B14CCC 8009DB2C 3C19DB06 */  lui   $t9, (0xDB060024 >> 16) # lui $t9, 0xdb06
/* B14CD0 8009DB30 37390024 */  ori   $t9, (0xDB060024 & 0xFFFF) # ori $t9, $t9, 0x24
/* B14CD4 8009DB34 24580008 */  addiu $t8, $v0, 8
/* B14CD8 8009DB38 AC7802D0 */  sw    $t8, 0x2d0($v1)
/* B14CDC 8009DB3C AC590000 */  sw    $t9, ($v0)
/* B14CE0 8009DB40 8FAE0090 */  lw    $t6, 0x90($sp)
/* B14CE4 8009DB44 00083880 */  sll   $a3, $t0, 2
/* B14CE8 8009DB48 00E83821 */  addu  $a3, $a3, $t0
/* B14CEC 8009DB4C 8DC40000 */  lw    $a0, ($t6)
/* B14CF0 8009DB50 00073840 */  sll   $a3, $a3, 1
/* B14CF4 8009DB54 30E7007F */  andi  $a3, $a3, 0x7f
/* B14CF8 8009DB58 240E0020 */  li    $t6, 32
/* B14CFC 8009DB5C 24190001 */  li    $t9, 1
/* B14D00 8009DB60 24180020 */  li    $t8, 32
/* B14D04 8009DB64 240F0020 */  li    $t7, 32
/* B14D08 8009DB68 AFAF0010 */  sw    $t7, 0x10($sp)
/* B14D0C 8009DB6C AFAF0028 */  sw    $t7, 0x28($sp)
/* B14D10 8009DB70 AFB80014 */  sw    $t8, 0x14($sp)
/* B14D14 8009DB74 AFB90018 */  sw    $t9, 0x18($sp)
/* B14D18 8009DB78 AFAE0024 */  sw    $t6, 0x24($sp)
/* B14D1C 8009DB7C AFA70020 */  sw    $a3, 0x20($sp)
/* B14D20 8009DB80 00002825 */  move  $a1, $zero
/* B14D24 8009DB84 AFA30084 */  sw    $v1, 0x84($sp)
/* B14D28 8009DB88 AFA9001C */  sw    $t1, 0x1c($sp)
/* B14D2C 8009DB8C AFAB0088 */  sw    $t3, 0x88($sp)
/* B14D30 8009DB90 AFAC0044 */  sw    $t4, 0x44($sp)
/* B14D34 8009DB94 0C0253D0 */  jal   func_80094F40
/* B14D38 8009DB98 AFA2006C */   sw    $v0, 0x6c($sp)
/* B14D3C 8009DB9C 8FAA006C */  lw    $t2, 0x6c($sp)
/* B14D40 8009DBA0 8FA30084 */  lw    $v1, 0x84($sp)
/* B14D44 8009DBA4 8FAB0088 */  lw    $t3, 0x88($sp)
/* B14D48 8009DBA8 8FAC0044 */  lw    $t4, 0x44($sp)
/* B14D4C 8009DBAC AD420004 */  sw    $v0, 4($t2)
/* B14D50 8009DBB0 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B14D54 8009DBB4 3C05E700 */  lui   $a1, 0xe700
/* B14D58 8009DBB8 3C078080 */  lui   $a3, (0x80808080 >> 16) # lui $a3, 0x8080
/* B14D5C 8009DBBC 24980008 */  addiu $t8, $a0, 8
/* B14D60 8009DBC0 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* B14D64 8009DBC4 AC800004 */  sw    $zero, 4($a0)
/* B14D68 8009DBC8 AC850000 */  sw    $a1, ($a0)
/* B14D6C 8009DBCC 8C6402C0 */  lw    $a0, 0x2c0($v1)
/* B14D70 8009DBD0 34E78080 */  ori   $a3, (0x80808080 & 0xFFFF) # ori $a3, $a3, 0x8080
/* B14D74 8009DBD4 3C06FB00 */  lui   $a2, 0xfb00
/* B14D78 8009DBD8 24990008 */  addiu $t9, $a0, 8
/* B14D7C 8009DBDC AC7902C0 */  sw    $t9, 0x2c0($v1)
/* B14D80 8009DBE0 AC870004 */  sw    $a3, 4($a0)
/* B14D84 8009DBE4 AC860000 */  sw    $a2, ($a0)
/* B14D88 8009DBE8 8C6202D0 */  lw    $v0, 0x2d0($v1)
/* B14D8C 8009DBEC 3C19DB06 */  lui   $t9, (0xDB060028 >> 16) # lui $t9, 0xdb06
/* B14D90 8009DBF0 37390028 */  ori   $t9, (0xDB060028 & 0xFFFF) # ori $t9, $t9, 0x28
/* B14D94 8009DBF4 244E0008 */  addiu $t6, $v0, 8
/* B14D98 8009DBF8 AC6E02D0 */  sw    $t6, 0x2d0($v1)
/* B14D9C 8009DBFC AC400004 */  sw    $zero, 4($v0)
/* B14DA0 8009DC00 AC450000 */  sw    $a1, ($v0)
/* B14DA4 8009DC04 8C6202D0 */  lw    $v0, 0x2d0($v1)
/* B14DA8 8009DC08 244F0008 */  addiu $t7, $v0, 8
/* B14DAC 8009DC0C AC6F02D0 */  sw    $t7, 0x2d0($v1)
/* B14DB0 8009DC10 AC470004 */  sw    $a3, 4($v0)
/* B14DB4 8009DC14 AC460000 */  sw    $a2, ($v0)
/* B14DB8 8009DC18 8C6202D0 */  lw    $v0, 0x2d0($v1)
/* B14DBC 8009DC1C 24580008 */  addiu $t8, $v0, 8
/* B14DC0 8009DC20 AC7802D0 */  sw    $t8, 0x2d0($v1)
/* B14DC4 8009DC24 AC4B0004 */  sw    $t3, 4($v0)
/* B14DC8 8009DC28 AC590000 */  sw    $t9, ($v0)
/* B14DCC 8009DC2C 3C028016 */  lui   $v0, %hi(D_80160004) # $v0, 0x8016
/* B14DD0 8009DC30 9442E66C */  lhu   $v0, %lo(D_8015E66C)($v0)
/* B14DD4 8009DC34 28414AAC */  slti  $at, $v0, 0x4aac
/* B14DD8 8009DC38 14200007 */  bnez  $at, .L8009DC58
/* B14DDC 8009DC3C 3401C556 */   li    $at, 50518
/* B14DE0 8009DC40 0041082A */  slt   $at, $v0, $at
/* B14DE4 8009DC44 10200004 */  beqz  $at, .L8009DC58
/* B14DE8 8009DC48 3C0EDF00 */   lui   $t6, 0xdf00
/* B14DEC 8009DC4C AD6E0000 */  sw    $t6, ($t3)
/* B14DF0 8009DC50 10000037 */  b     .L8009DD30
/* B14DF4 8009DC54 AD600004 */   sw    $zero, 4($t3)
.L8009DC58:
/* B14DF8 8009DC58 3401C556 */  li    $at, 50518
/* B14DFC 8009DC5C 0041082A */  slt   $at, $v0, $at
/* B14E00 8009DC60 54200011 */  bnezl $at, .L8009DCA8
/* B14E04 8009DC64 28414000 */   slti  $at, $v0, 0x4000
/* B14E08 8009DC68 858F1D30 */  lh    $t7, 0x1d30($t4)
/* B14E0C 8009DC6C 240100FF */  li    $at, 255
/* B14E10 8009DC70 8FA40090 */  lw    $a0, 0x90($sp)
/* B14E14 8009DC74 11E1001B */  beq   $t7, $at, .L8009DCE4
/* B14E18 8009DC78 240500FF */   li    $a1, 255
/* B14E1C 8009DC7C 3C010001 */  lui   $at, (0x00011D30 >> 16) # lui $at, 1
/* B14E20 8009DC80 34211D30 */  ori   $at, (0x00011D30 & 0xFFFF) # ori $at, $at, 0x1d30
/* B14E24 8009DC84 00812021 */  addu  $a0, $a0, $at
/* B14E28 8009DC88 24060005 */  li    $a2, 5
/* B14E2C 8009DC8C AFAB0088 */  sw    $t3, 0x88($sp)
/* B14E30 8009DC90 0C01DE5F */  jal   func_8007797C
/* B14E34 8009DC94 AFAC0044 */   sw    $t4, 0x44($sp)
/* B14E38 8009DC98 8FAB0088 */  lw    $t3, 0x88($sp)
/* B14E3C 8009DC9C 10000011 */  b     .L8009DCE4
/* B14E40 8009DCA0 8FAC0044 */   lw    $t4, 0x44($sp)
/* B14E44 8009DCA4 28414000 */  slti  $at, $v0, 0x4000
.L8009DCA8:
/* B14E48 8009DCA8 5420000F */  bnezl $at, .L8009DCE8
/* B14E4C 8009DCAC 01601025 */   move  $v0, $t3
/* B14E50 8009DCB0 85981D30 */  lh    $t8, 0x1d30($t4)
/* B14E54 8009DCB4 3C010001 */  lui   $at, (0x00011D30 >> 16) # lui $at, 1
/* B14E58 8009DCB8 34211D30 */  ori   $at, (0x00011D30 & 0xFFFF) # ori $at, $at, 0x1d30
/* B14E5C 8009DCBC 13000009 */  beqz  $t8, .L8009DCE4
/* B14E60 8009DCC0 8FA40090 */   lw    $a0, 0x90($sp)
/* B14E64 8009DCC4 00812021 */  addu  $a0, $a0, $at
/* B14E68 8009DCC8 00002825 */  move  $a1, $zero
/* B14E6C 8009DCCC 2406000A */  li    $a2, 10
/* B14E70 8009DCD0 AFAB0088 */  sw    $t3, 0x88($sp)
/* B14E74 8009DCD4 0C01DE5F */  jal   func_8007797C
/* B14E78 8009DCD8 AFAC0044 */   sw    $t4, 0x44($sp)
/* B14E7C 8009DCDC 8FAB0088 */  lw    $t3, 0x88($sp)
/* B14E80 8009DCE0 8FAC0044 */  lw    $t4, 0x44($sp)
.L8009DCE4:
/* B14E84 8009DCE4 01601025 */  move  $v0, $t3
.L8009DCE8:
/* B14E88 8009DCE8 3C19FA00 */  lui   $t9, 0xfa00
/* B14E8C 8009DCEC AC590000 */  sw    $t9, ($v0)
/* B14E90 8009DCF0 858E1D30 */  lh    $t6, 0x1d30($t4)
/* B14E94 8009DCF4 2401FF00 */  li    $at, -256
/* B14E98 8009DCF8 256B0008 */  addiu $t3, $t3, 8
/* B14E9C 8009DCFC 31CF00FF */  andi  $t7, $t6, 0xff
/* B14EA0 8009DD00 01E1C025 */  or    $t8, $t7, $at
/* B14EA4 8009DD04 AC580004 */  sw    $t8, %lo(D_80160004)($v0)
/* B14EA8 8009DD08 01601025 */  move  $v0, $t3
/* B14EAC 8009DD0C 3C0E0301 */  lui   $t6, %hi(D_03012B20) # $t6, 0x301
/* B14EB0 8009DD10 25CE2B20 */  addiu $t6, %lo(D_03012B20) # addiu $t6, $t6, 0x2b20
/* B14EB4 8009DD14 3C19DE00 */  lui   $t9, 0xde00
/* B14EB8 8009DD18 AC590000 */  sw    $t9, ($v0)
/* B14EBC 8009DD1C AC4E0004 */  sw    $t6, %lo(D_80160004)($v0)
/* B14EC0 8009DD20 3C0FDF00 */  lui   $t7, 0xdf00
/* B14EC4 8009DD24 256B0008 */  addiu $t3, $t3, 8
/* B14EC8 8009DD28 AD6F0000 */  sw    $t7, ($t3)
/* B14ECC 8009DD2C AD600004 */  sw    $zero, 4($t3)
.L8009DD30:
/* B14ED0 8009DD30 8FB80090 */  lw    $t8, 0x90($sp)
/* B14ED4 8009DD34 3C068014 */  lui   $a2, %hi(D_8013FBA4) # $a2, 0x8014
/* B14ED8 8009DD38 24C6FBA4 */  addiu $a2, %lo(D_8013FBA4) # addiu $a2, $a2, -0x45c
/* B14EDC 8009DD3C 27A40074 */  addiu $a0, $sp, 0x74
/* B14EE0 8009DD40 24071AD2 */  li    $a3, 6866
/* B14EE4 8009DD44 0C031AD5 */  jal   func_800C6B54
/* B14EE8 8009DD48 8F050000 */   lw    $a1, ($t8)
/* B14EEC 8009DD4C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B14EF0 8009DD50 27BD0090 */  addiu $sp, $sp, 0x90
/* B14EF4 8009DD54 03E00008 */  jr    $ra
/* B14EF8 8009DD58 00000000 */   nop   

/* B14EFC 8009DD5C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B14F00 8009DD60 AFBF0014 */  sw    $ra, 0x14($sp)
/* B14F04 8009DD64 AFA40050 */  sw    $a0, 0x50($sp)
/* B14F08 8009DD68 8C850000 */  lw    $a1, ($a0)
/* B14F0C 8009DD6C 3C068014 */  lui   $a2, %hi(D_8013FBB8) # $a2, 0x8014
/* B14F10 8009DD70 24C6FBB8 */  addiu $a2, %lo(D_8013FBB8) # addiu $a2, $a2, -0x448
/* B14F14 8009DD74 27A4003C */  addiu $a0, $sp, 0x3c
/* B14F18 8009DD78 24071AEA */  li    $a3, 6890
/* B14F1C 8009DD7C 0C031AB1 */  jal   func_800C6AC4
/* B14F20 8009DD80 AFA5004C */   sw    $a1, 0x4c($sp)
/* B14F24 8009DD84 8FA8004C */  lw    $t0, 0x4c($sp)
/* B14F28 8009DD88 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B14F2C 8009DD8C 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B14F30 8009DD90 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B14F34 8009DD94 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B14F38 8009DD98 3C048013 */  lui   $a0, 0x8013
/* B14F3C 8009DD9C 244F0008 */  addiu $t7, $v0, 8
/* B14F40 8009DDA0 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B14F44 8009DDA4 AC580000 */  sw    $t8, ($v0)
/* B14F48 8009DDA8 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B14F4C 8009DDAC 3C0E8016 */  lui   $t6, 0x8016
/* B14F50 8009DDB0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B14F54 8009DDB4 00194880 */  sll   $t1, $t9, 2
/* B14F58 8009DDB8 00892021 */  addu  $a0, $a0, $t1
/* B14F5C 8009DDBC 8C84A370 */  lw    $a0, -0x5c90($a0)
/* B14F60 8009DDC0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B14F64 8009DDC4 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B14F68 8009DDC8 00045900 */  sll   $t3, $a0, 4
/* B14F6C 8009DDCC 000B6702 */  srl   $t4, $t3, 0x1c
/* B14F70 8009DDD0 000C6880 */  sll   $t5, $t4, 2
/* B14F74 8009DDD4 01CD7021 */  addu  $t6, $t6, $t5
/* B14F78 8009DDD8 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B14F7C 8009DDDC 00815024 */  and   $t2, $a0, $at
/* B14F80 8009DDE0 3C018000 */  lui   $at, 0x8000
/* B14F84 8009DDE4 014E7821 */  addu  $t7, $t2, $t6
/* B14F88 8009DDE8 01E1C021 */  addu  $t8, $t7, $at
/* B14F8C 8009DDEC AC580004 */  sw    $t8, 4($v0)
/* B14F90 8009DDF0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B14F94 8009DDF4 3C04E700 */  lui   $a0, 0xe700
/* B14F98 8009DDF8 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B14F9C 8009DDFC 24590008 */  addiu $t9, $v0, 8
/* B14FA0 8009DE00 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B14FA4 8009DE04 AC400004 */  sw    $zero, 4($v0)
/* B14FA8 8009DE08 AC440000 */  sw    $a0, ($v0)
/* B14FAC 8009DE0C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B14FB0 8009DE10 3C05FB00 */  lui   $a1, 0xfb00
/* B14FB4 8009DE14 24071AF7 */  li    $a3, 6903
/* B14FB8 8009DE18 24490008 */  addiu $t1, $v0, 8
/* B14FBC 8009DE1C AD0902C0 */  sw    $t1, 0x2c0($t0)
/* B14FC0 8009DE20 AC460004 */  sw    $a2, 4($v0)
/* B14FC4 8009DE24 AC450000 */  sw    $a1, ($v0)
/* B14FC8 8009DE28 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B14FCC 8009DE2C 246B0008 */  addiu $t3, $v1, 8
/* B14FD0 8009DE30 AD0B02D0 */  sw    $t3, 0x2d0($t0)
/* B14FD4 8009DE34 AC600004 */  sw    $zero, 4($v1)
/* B14FD8 8009DE38 AC640000 */  sw    $a0, ($v1)
/* B14FDC 8009DE3C 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B14FE0 8009DE40 27A4003C */  addiu $a0, $sp, 0x3c
/* B14FE4 8009DE44 246C0008 */  addiu $t4, $v1, 8
/* B14FE8 8009DE48 AD0C02D0 */  sw    $t4, 0x2d0($t0)
/* B14FEC 8009DE4C AC660004 */  sw    $a2, 4($v1)
/* B14FF0 8009DE50 AC650000 */  sw    $a1, ($v1)
/* B14FF4 8009DE54 8FAD0050 */  lw    $t5, 0x50($sp)
/* B14FF8 8009DE58 3C068014 */  lui   $a2, %hi(D_8013FBCC) # $a2, 0x8014
/* B14FFC 8009DE5C 24C6FBCC */  addiu $a2, %lo(D_8013FBCC) # addiu $a2, $a2, -0x434
/* B15000 8009DE60 0C031AD5 */  jal   func_800C6B54
/* B15004 8009DE64 8DA50000 */   lw    $a1, ($t5)
/* B15008 8009DE68 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1500C 8009DE6C 27BD0050 */  addiu $sp, $sp, 0x50
/* B15010 8009DE70 03E00008 */  jr    $ra
/* B15014 8009DE74 00000000 */   nop   

/* B15018 8009DE78 27BDFF80 */  addiu $sp, $sp, -0x80
/* B1501C 8009DE7C AFBF003C */  sw    $ra, 0x3c($sp)
/* B15020 8009DE80 AFB10038 */  sw    $s1, 0x38($sp)
/* B15024 8009DE84 AFB00034 */  sw    $s0, 0x34($sp)
/* B15028 8009DE88 8C850000 */  lw    $a1, ($a0)
/* B1502C 8009DE8C 00808825 */  move  $s1, $a0
/* B15030 8009DE90 3C068014 */  lui   $a2, %hi(D_8013FBE0) # $a2, 0x8014
/* B15034 8009DE94 24C6FBE0 */  addiu $a2, %lo(D_8013FBE0) # addiu $a2, $a2, -0x420
/* B15038 8009DE98 27A40068 */  addiu $a0, $sp, 0x68
/* B1503C 8009DE9C 24071B05 */  li    $a3, 6917
/* B15040 8009DEA0 0C031AB1 */  jal   func_800C6AC4
/* B15044 8009DEA4 00A08025 */   move  $s0, $a1
/* B15048 8009DEA8 3C030001 */  lui   $v1, 1
/* B1504C 8009DEAC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15050 8009DEB0 00711821 */  addu  $v1, $v1, $s1
/* B15054 8009DEB4 8C631DE4 */  lw    $v1, 0x1de4($v1)
/* B15058 8009DEB8 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B1505C 8009DEBC 244E0008 */  addiu $t6, $v0, 8
/* B15060 8009DEC0 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B15064 8009DEC4 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B15068 8009DEC8 AC4F0000 */  sw    $t7, ($v0)
/* B1506C 8009DECC 8E240000 */  lw    $a0, ($s1)
/* B15070 8009DED0 00033880 */  sll   $a3, $v1, 2
/* B15074 8009DED4 00E33823 */  subu  $a3, $a3, $v1
/* B15078 8009DED8 00073840 */  sll   $a3, $a3, 1
/* B1507C 8009DEDC 2418007F */  li    $t8, 127
/* B15080 8009DEE0 3068007F */  andi  $t0, $v1, 0x7f
/* B15084 8009DEE4 03083023 */  subu  $a2, $t8, $t0
/* B15088 8009DEE8 30E7007F */  andi  $a3, $a3, 0x7f
/* B1508C 8009DEEC 24190020 */  li    $t9, 32
/* B15090 8009DEF0 240A0020 */  li    $t2, 32
/* B15094 8009DEF4 240B0001 */  li    $t3, 1
/* B15098 8009DEF8 240C0020 */  li    $t4, 32
/* B1509C 8009DEFC 240D0020 */  li    $t5, 32
/* B150A0 8009DF00 AFAD0028 */  sw    $t5, 0x28($sp)
/* B150A4 8009DF04 AFAC0024 */  sw    $t4, 0x24($sp)
/* B150A8 8009DF08 AFAB0018 */  sw    $t3, 0x18($sp)
/* B150AC 8009DF0C AFAA0014 */  sw    $t2, 0x14($sp)
/* B150B0 8009DF10 AFB90010 */  sw    $t9, 0x10($sp)
/* B150B4 8009DF14 AFA70020 */  sw    $a3, 0x20($sp)
/* B150B8 8009DF18 AFA60044 */  sw    $a2, 0x44($sp)
/* B150BC 8009DF1C AFA8001C */  sw    $t0, 0x1c($sp)
/* B150C0 8009DF20 AFA80048 */  sw    $t0, 0x48($sp)
/* B150C4 8009DF24 00002825 */  move  $a1, $zero
/* B150C8 8009DF28 AFA20064 */  sw    $v0, 0x64($sp)
/* B150CC 8009DF2C 0C0253D0 */  jal   func_80094F40
/* B150D0 8009DF30 AFA3007C */   sw    $v1, 0x7c($sp)
/* B150D4 8009DF34 8FA90064 */  lw    $t1, 0x64($sp)
/* B150D8 8009DF38 8FA3007C */  lw    $v1, 0x7c($sp)
/* B150DC 8009DF3C 8FA80048 */  lw    $t0, 0x48($sp)
/* B150E0 8009DF40 AD220004 */  sw    $v0, 4($t1)
/* B150E4 8009DF44 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B150E8 8009DF48 3C0FDB06 */  lui   $t7, (0xDB060024 >> 16) # lui $t7, 0xdb06
/* B150EC 8009DF4C 35EF0024 */  ori   $t7, (0xDB060024 & 0xFFFF) # ori $t7, $t7, 0x24
/* B150F0 8009DF50 244E0008 */  addiu $t6, $v0, 8
/* B150F4 8009DF54 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B150F8 8009DF58 AC4F0000 */  sw    $t7, ($v0)
/* B150FC 8009DF5C 8E240000 */  lw    $a0, ($s1)
/* B15100 8009DF60 00033880 */  sll   $a3, $v1, 2
/* B15104 8009DF64 00E33823 */  subu  $a3, $a3, $v1
/* B15108 8009DF68 30E7007F */  andi  $a3, $a3, 0x7f
/* B1510C 8009DF6C 24180020 */  li    $t8, 32
/* B15110 8009DF70 24190020 */  li    $t9, 32
/* B15114 8009DF74 240A0001 */  li    $t2, 1
/* B15118 8009DF78 240B0020 */  li    $t3, 32
/* B1511C 8009DF7C 240C0020 */  li    $t4, 32
/* B15120 8009DF80 AFAC0028 */  sw    $t4, 0x28($sp)
/* B15124 8009DF84 AFAB0024 */  sw    $t3, 0x24($sp)
/* B15128 8009DF88 AFAA0018 */  sw    $t2, 0x18($sp)
/* B1512C 8009DF8C AFB90014 */  sw    $t9, 0x14($sp)
/* B15130 8009DF90 AFB80010 */  sw    $t8, 0x10($sp)
/* B15134 8009DF94 AFA70020 */  sw    $a3, 0x20($sp)
/* B15138 8009DF98 8FA60044 */  lw    $a2, 0x44($sp)
/* B1513C 8009DF9C 00002825 */  move  $a1, $zero
/* B15140 8009DFA0 AFA3007C */  sw    $v1, 0x7c($sp)
/* B15144 8009DFA4 AFA80048 */  sw    $t0, 0x48($sp)
/* B15148 8009DFA8 AFA8001C */  sw    $t0, 0x1c($sp)
/* B1514C 8009DFAC 0C0253D0 */  jal   func_80094F40
/* B15150 8009DFB0 AFA20060 */   sw    $v0, 0x60($sp)
/* B15154 8009DFB4 8FA90060 */  lw    $t1, 0x60($sp)
/* B15158 8009DFB8 8FA3007C */  lw    $v1, 0x7c($sp)
/* B1515C 8009DFBC 8FA80048 */  lw    $t0, 0x48($sp)
/* B15160 8009DFC0 AD220004 */  sw    $v0, 4($t1)
/* B15164 8009DFC4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15168 8009DFC8 3C0EDB06 */  lui   $t6, (0xDB060028 >> 16) # lui $t6, 0xdb06
/* B1516C 8009DFCC 35CE0028 */  ori   $t6, (0xDB060028 & 0xFFFF) # ori $t6, $t6, 0x28
/* B15170 8009DFD0 244D0008 */  addiu $t5, $v0, 8
/* B15174 8009DFD4 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B15178 8009DFD8 AC4E0000 */  sw    $t6, ($v0)
/* B1517C 8009DFDC 8E240000 */  lw    $a0, ($s1)
/* B15180 8009DFE0 240F0020 */  li    $t7, 32
/* B15184 8009DFE4 24180020 */  li    $t8, 32
/* B15188 8009DFE8 24190001 */  li    $t9, 1
/* B1518C 8009DFEC 240A0020 */  li    $t2, 32
/* B15190 8009DFF0 240B0020 */  li    $t3, 32
/* B15194 8009DFF4 3067007F */  andi  $a3, $v1, 0x7f
/* B15198 8009DFF8 AFA70020 */  sw    $a3, 0x20($sp)
/* B1519C 8009DFFC AFAB0028 */  sw    $t3, 0x28($sp)
/* B151A0 8009E000 AFAA0024 */  sw    $t2, 0x24($sp)
/* B151A4 8009E004 AFB90018 */  sw    $t9, 0x18($sp)
/* B151A8 8009E008 AFB80014 */  sw    $t8, 0x14($sp)
/* B151AC 8009E00C AFAF0010 */  sw    $t7, 0x10($sp)
/* B151B0 8009E010 8FA60044 */  lw    $a2, 0x44($sp)
/* B151B4 8009E014 00002825 */  move  $a1, $zero
/* B151B8 8009E018 AFA8001C */  sw    $t0, 0x1c($sp)
/* B151BC 8009E01C 0C0253D0 */  jal   func_80094F40
/* B151C0 8009E020 AFA2005C */   sw    $v0, 0x5c($sp)
/* B151C4 8009E024 8FA9005C */  lw    $t1, 0x5c($sp)
/* B151C8 8009E028 3C04E700 */  lui   $a0, 0xe700
/* B151CC 8009E02C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B151D0 8009E030 AD220004 */  sw    $v0, 4($t1)
/* B151D4 8009E034 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B151D8 8009E038 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B151DC 8009E03C 3C05FB00 */  lui   $a1, 0xfb00
/* B151E0 8009E040 246C0008 */  addiu $t4, $v1, 8
/* B151E4 8009E044 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B151E8 8009E048 AC600004 */  sw    $zero, 4($v1)
/* B151EC 8009E04C AC640000 */  sw    $a0, ($v1)
/* B151F0 8009E050 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B151F4 8009E054 24071B24 */  li    $a3, 6948
/* B151F8 8009E058 246D0008 */  addiu $t5, $v1, 8
/* B151FC 8009E05C AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B15200 8009E060 AC660004 */  sw    $a2, 4($v1)
/* B15204 8009E064 AC650000 */  sw    $a1, ($v1)
/* B15208 8009E068 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1520C 8009E06C 244E0008 */  addiu $t6, $v0, 8
/* B15210 8009E070 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B15214 8009E074 AC400004 */  sw    $zero, 4($v0)
/* B15218 8009E078 AC440000 */  sw    $a0, ($v0)
/* B1521C 8009E07C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15220 8009E080 27A40068 */  addiu $a0, $sp, 0x68
/* B15224 8009E084 244F0008 */  addiu $t7, $v0, 8
/* B15228 8009E088 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B1522C 8009E08C AC460004 */  sw    $a2, 4($v0)
/* B15230 8009E090 3C068014 */  lui   $a2, %hi(D_8013FBF4) # $a2, 0x8014
/* B15234 8009E094 AC450000 */  sw    $a1, ($v0)
/* B15238 8009E098 8E250000 */  lw    $a1, ($s1)
/* B1523C 8009E09C 0C031AD5 */  jal   func_800C6B54
/* B15240 8009E0A0 24C6FBF4 */   addiu $a2, %lo(D_8013FBF4) # addiu $a2, $a2, -0x40c
/* B15244 8009E0A4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B15248 8009E0A8 8FB00034 */  lw    $s0, 0x34($sp)
/* B1524C 8009E0AC 8FB10038 */  lw    $s1, 0x38($sp)
/* B15250 8009E0B0 03E00008 */  jr    $ra
/* B15254 8009E0B4 27BD0080 */   addiu $sp, $sp, 0x80

/* B15258 8009E0B8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* B1525C 8009E0BC 240E0080 */  li    $t6, 128
/* B15260 8009E0C0 240F01F4 */  li    $t7, 500
/* B15264 8009E0C4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B15268 8009E0C8 AFA400A8 */  sw    $a0, 0xa8($sp)
/* B1526C 8009E0CC A3AE00A3 */  sb    $t6, 0xa3($sp)
/* B15270 8009E0D0 A7AF00A0 */  sh    $t7, 0xa0($sp)
/* B15274 8009E0D4 8C840000 */  lw    $a0, ($a0)
/* B15278 8009E0D8 0C031A73 */  jal   graph_alloc
/* B1527C 8009E0DC 24050030 */   li    $a1, 48
/* B15280 8009E0E0 8FB900A8 */  lw    $t9, 0xa8($sp)
/* B15284 8009E0E4 3C068014 */  lui   $a2, %hi(D_8013FC08) # $a2, 0x8014
/* B15288 8009E0E8 24C6FC08 */  addiu $a2, %lo(D_8013FC08) # addiu $a2, $a2, -0x3f8
/* B1528C 8009E0EC 8F250000 */  lw    $a1, ($t9)
/* B15290 8009E0F0 AFA2009C */  sw    $v0, 0x9c($sp)
/* B15294 8009E0F4 27A40088 */  addiu $a0, $sp, 0x88
/* B15298 8009E0F8 24071B35 */  li    $a3, 6965
/* B1529C 8009E0FC 0C031AB1 */  jal   func_800C6AC4
/* B152A0 8009E100 AFA50098 */   sw    $a1, 0x98($sp)
/* B152A4 8009E104 8FA90098 */  lw    $t1, 0x98($sp)
/* B152A8 8009E108 8FAD00A8 */  lw    $t5, 0xa8($sp)
/* B152AC 8009E10C 3C010001 */  lui   $at, 1
/* B152B0 8009E110 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B152B4 8009E114 01A16021 */  addu  $t4, $t5, $at
/* B152B8 8009E118 8FAA009C */  lw    $t2, 0x9c($sp)
/* B152BC 8009E11C 8D831DE4 */  lw    $v1, 0x1de4($t4)
/* B152C0 8009E120 3C0FDB06 */  lui   $t7, (0xDB060024 >> 16) # lui $t7, 0xdb06
/* B152C4 8009E124 244E0008 */  addiu $t6, $v0, 8
/* B152C8 8009E128 35EF0024 */  ori   $t7, (0xDB060024 & 0xFFFF) # ori $t7, $t7, 0x24
/* B152CC 8009E12C AD2E02D0 */  sw    $t6, 0x2d0($t1)
/* B152D0 8009E130 AC4F0000 */  sw    $t7, ($v0)
/* B152D4 8009E134 8DA40000 */  lw    $a0, ($t5)
/* B152D8 8009E138 2418007F */  li    $t8, 127
/* B152DC 8009E13C 3068007F */  andi  $t0, $v1, 0x7f
/* B152E0 8009E140 03083023 */  subu  $a2, $t8, $t0
/* B152E4 8009E144 24180020 */  li    $t8, 32
/* B152E8 8009E148 240F0001 */  li    $t7, 1
/* B152EC 8009E14C 240E0020 */  li    $t6, 32
/* B152F0 8009E150 24190020 */  li    $t9, 32
/* B152F4 8009E154 3067007F */  andi  $a3, $v1, 0x7f
/* B152F8 8009E158 AFA70020 */  sw    $a3, 0x20($sp)
/* B152FC 8009E15C AFB90010 */  sw    $t9, 0x10($sp)
/* B15300 8009E160 AFB90028 */  sw    $t9, 0x28($sp)
/* B15304 8009E164 AFAE0014 */  sw    $t6, 0x14($sp)
/* B15308 8009E168 AFAF0018 */  sw    $t7, 0x18($sp)
/* B1530C 8009E16C AFB80024 */  sw    $t8, 0x24($sp)
/* B15310 8009E170 AFA6003C */  sw    $a2, 0x3c($sp)
/* B15314 8009E174 AFA8001C */  sw    $t0, 0x1c($sp)
/* B15318 8009E178 AFA80040 */  sw    $t0, 0x40($sp)
/* B1531C 8009E17C AFAC0044 */  sw    $t4, 0x44($sp)
/* B15320 8009E180 00002825 */  move  $a1, $zero
/* B15324 8009E184 AFA90098 */  sw    $t1, 0x98($sp)
/* B15328 8009E188 AFA20084 */  sw    $v0, 0x84($sp)
/* B1532C 8009E18C AFAA009C */  sw    $t2, 0x9c($sp)
/* B15330 8009E190 0C0253D0 */  jal   func_80094F40
/* B15334 8009E194 AFA300A4 */   sw    $v1, 0xa4($sp)
/* B15338 8009E198 8FAB0084 */  lw    $t3, 0x84($sp)
/* B1533C 8009E19C 8FA90098 */  lw    $t1, 0x98($sp)
/* B15340 8009E1A0 8FA300A4 */  lw    $v1, 0xa4($sp)
/* B15344 8009E1A4 8FA80040 */  lw    $t0, 0x40($sp)
/* B15348 8009E1A8 8FAA009C */  lw    $t2, 0x9c($sp)
/* B1534C 8009E1AC 8FAC0044 */  lw    $t4, 0x44($sp)
/* B15350 8009E1B0 8FA6003C */  lw    $a2, 0x3c($sp)
/* B15354 8009E1B4 AD620004 */  sw    $v0, 4($t3)
/* B15358 8009E1B8 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B1535C 8009E1BC 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B15360 8009E1C0 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B15364 8009E1C4 244E0008 */  addiu $t6, $v0, 8
/* B15368 8009E1C8 AD2E02D0 */  sw    $t6, 0x2d0($t1)
/* B1536C 8009E1CC AC4F0000 */  sw    $t7, ($v0)
/* B15370 8009E1D0 8FB800A8 */  lw    $t8, 0xa8($sp)
/* B15374 8009E1D4 00033880 */  sll   $a3, $v1, 2
/* B15378 8009E1D8 00E33821 */  addu  $a3, $a3, $v1
/* B1537C 8009E1DC 8F040000 */  lw    $a0, ($t8)
/* B15380 8009E1E0 00073840 */  sll   $a3, $a3, 1
/* B15384 8009E1E4 30E7007F */  andi  $a3, $a3, 0x7f
/* B15388 8009E1E8 24180020 */  li    $t8, 32
/* B1538C 8009E1EC 240F0001 */  li    $t7, 1
/* B15390 8009E1F0 240E0020 */  li    $t6, 32
/* B15394 8009E1F4 24190020 */  li    $t9, 32
/* B15398 8009E1F8 AFB90010 */  sw    $t9, 0x10($sp)
/* B1539C 8009E1FC AFB90028 */  sw    $t9, 0x28($sp)
/* B153A0 8009E200 AFAE0014 */  sw    $t6, 0x14($sp)
/* B153A4 8009E204 AFAF0018 */  sw    $t7, 0x18($sp)
/* B153A8 8009E208 AFB80024 */  sw    $t8, 0x24($sp)
/* B153AC 8009E20C AFA70020 */  sw    $a3, 0x20($sp)
/* B153B0 8009E210 00002825 */  move  $a1, $zero
/* B153B4 8009E214 AFA90098 */  sw    $t1, 0x98($sp)
/* B153B8 8009E218 AFA8001C */  sw    $t0, 0x1c($sp)
/* B153BC 8009E21C AFAA009C */  sw    $t2, 0x9c($sp)
/* B153C0 8009E220 AFAC0044 */  sw    $t4, 0x44($sp)
/* B153C4 8009E224 0C0253D0 */  jal   func_80094F40
/* B153C8 8009E228 AFA20080 */   sw    $v0, 0x80($sp)
/* B153CC 8009E22C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B153D0 8009E230 8FA90098 */  lw    $t1, 0x98($sp)
/* B153D4 8009E234 8FAA009C */  lw    $t2, 0x9c($sp)
/* B153D8 8009E238 8FAC0044 */  lw    $t4, 0x44($sp)
/* B153DC 8009E23C AD620004 */  sw    $v0, 4($t3)
/* B153E0 8009E240 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B153E4 8009E244 3C05E700 */  lui   $a1, 0xe700
/* B153E8 8009E248 3C048080 */  lui   $a0, (0x80808080 >> 16) # lui $a0, 0x8080
/* B153EC 8009E24C 244E0008 */  addiu $t6, $v0, 8
/* B153F0 8009E250 AD2E02C0 */  sw    $t6, 0x2c0($t1)
/* B153F4 8009E254 AC400004 */  sw    $zero, 4($v0)
/* B153F8 8009E258 AC450000 */  sw    $a1, ($v0)
/* B153FC 8009E25C 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B15400 8009E260 34848080 */  ori   $a0, (0x80808080 & 0xFFFF) # ori $a0, $a0, 0x8080
/* B15404 8009E264 3C06FB00 */  lui   $a2, 0xfb00
/* B15408 8009E268 244F0008 */  addiu $t7, $v0, 8
/* B1540C 8009E26C AD2F02C0 */  sw    $t7, 0x2c0($t1)
/* B15410 8009E270 AC440004 */  sw    $a0, 4($v0)
/* B15414 8009E274 AC460000 */  sw    $a2, ($v0)
/* B15418 8009E278 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B1541C 8009E27C 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B15420 8009E280 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B15424 8009E284 24580008 */  addiu $t8, $v0, 8
/* B15428 8009E288 AD3802D0 */  sw    $t8, 0x2d0($t1)
/* B1542C 8009E28C AC400004 */  sw    $zero, 4($v0)
/* B15430 8009E290 AC450000 */  sw    $a1, ($v0)
/* B15434 8009E294 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B15438 8009E298 24010004 */  li    $at, 4
/* B1543C 8009E29C 3C078080 */  lui   $a3, (0x80808000 >> 16) # lui $a3, 0x8080
/* B15440 8009E2A0 24590008 */  addiu $t9, $v0, 8
/* B15444 8009E2A4 AD3902D0 */  sw    $t9, 0x2d0($t1)
/* B15448 8009E2A8 AC440004 */  sw    $a0, 4($v0)
/* B1544C 8009E2AC AC460000 */  sw    $a2, ($v0)
/* B15450 8009E2B0 8C621360 */  lw    $v0, 0x1360($v1)
/* B15454 8009E2B4 34E78000 */  ori   $a3, (0x80808000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* B15458 8009E2B8 3C08DF00 */  lui   $t0, 0xdf00
/* B1545C 8009E2BC 54410007 */  bnel  $v0, $at, .L8009E2DC
/* B15460 8009E2C0 24010006 */   li    $at, 6
/* B15464 8009E2C4 918E1D31 */  lbu   $t6, 0x1d31($t4)
/* B15468 8009E2C8 240F00FF */  li    $t7, 255
/* B1546C 8009E2CC 01EEC023 */  subu  $t8, $t7, $t6
/* B15470 8009E2D0 10000014 */  b     .L8009E324
/* B15474 8009E2D4 A3B800A3 */   sb    $t8, 0xa3($sp)
/* B15478 8009E2D8 24010006 */  li    $at, 6
.L8009E2DC:
/* B1547C 8009E2DC 54410006 */  bnel  $v0, $at, .L8009E2F8
/* B15480 8009E2E0 28410004 */   slti  $at, $v0, 4
/* B15484 8009E2E4 85991D30 */  lh    $t9, 0x1d30($t4)
/* B15488 8009E2E8 272F01F4 */  addiu $t7, $t9, 0x1f4
/* B1548C 8009E2EC 1000000D */  b     .L8009E324
/* B15490 8009E2F0 A7AF00A0 */   sh    $t7, 0xa0($sp)
/* B15494 8009E2F4 28410004 */  slti  $at, $v0, 4
.L8009E2F8:
/* B15498 8009E2F8 54200005 */  bnezl $at, .L8009E310
/* B1549C 8009E2FC 94780ED4 */   lhu   $t8, 0xed4($v1)
/* B154A0 8009E300 8C6E0004 */  lw    $t6, 4($v1)
/* B154A4 8009E304 55C00008 */  bnezl $t6, .L8009E328
/* B154A8 8009E308 8D2202C0 */   lw    $v0, 0x2c0($t1)
/* B154AC 8009E30C 94780ED4 */  lhu   $t8, 0xed4($v1)
.L8009E310:
/* B154B0 8009E310 240F0866 */  li    $t7, 2150
/* B154B4 8009E314 33190080 */  andi  $t9, $t8, 0x80
/* B154B8 8009E318 53200003 */  beql  $t9, $zero, .L8009E328
/* B154BC 8009E31C 8D2202C0 */   lw    $v0, 0x2c0($t1)
/* B154C0 8009E320 A7AF00A0 */  sh    $t7, 0xa0($sp)
.L8009E324:
/* B154C4 8009E324 8D2202C0 */  lw    $v0, 0x2c0($t1)
.L8009E328:
/* B154C8 8009E328 3C18DB06 */  lui   $t8, (0xDB060028 >> 16) # lui $t8, 0xdb06
/* B154CC 8009E32C 37180028 */  ori   $t8, (0xDB060028 & 0xFFFF) # ori $t8, $t8, 0x28
/* B154D0 8009E330 244E0008 */  addiu $t6, $v0, 8
/* B154D4 8009E334 AD2E02C0 */  sw    $t6, 0x2c0($t1)
/* B154D8 8009E338 AC580000 */  sw    $t8, ($v0)
/* B154DC 8009E33C AC4A0004 */  sw    $t2, 4($v0)
/* B154E0 8009E340 01401025 */  move  $v0, $t2
/* B154E4 8009E344 AC450000 */  sw    $a1, ($v0)
/* B154E8 8009E348 AC400004 */  sw    $zero, 4($v0)
/* B154EC 8009E34C 254A0008 */  addiu $t2, $t2, 8
/* B154F0 8009E350 01401025 */  move  $v0, $t2
/* B154F4 8009E354 AC460000 */  sw    $a2, ($v0)
/* B154F8 8009E358 93AF00A3 */  lbu   $t7, 0xa3($sp)
/* B154FC 8009E35C 254A0008 */  addiu $t2, $t2, 8
/* B15500 8009E360 3C04DB06 */  lui   $a0, (0xDB06002C >> 16) # lui $a0, 0xdb06
/* B15504 8009E364 01E77025 */  or    $t6, $t7, $a3
/* B15508 8009E368 AC4E0004 */  sw    $t6, 4($v0)
/* B1550C 8009E36C 01401025 */  move  $v0, $t2
/* B15510 8009E370 AC480000 */  sw    $t0, ($v0)
/* B15514 8009E374 AC400004 */  sw    $zero, 4($v0)
/* B15518 8009E378 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B1551C 8009E37C 254A0008 */  addiu $t2, $t2, 8
/* B15520 8009E380 3484002C */  ori   $a0, (0xDB06002C & 0xFFFF) # ori $a0, $a0, 0x2c
/* B15524 8009E384 24580008 */  addiu $t8, $v0, 8
/* B15528 8009E388 AD3802D0 */  sw    $t8, 0x2d0($t1)
/* B1552C 8009E38C AC440000 */  sw    $a0, ($v0)
/* B15530 8009E390 AC4A0004 */  sw    $t2, 4($v0)
/* B15534 8009E394 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B15538 8009E398 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B1553C 8009E39C 24590008 */  addiu $t9, $v0, 8
/* B15540 8009E3A0 AD3902C0 */  sw    $t9, 0x2c0($t1)
/* B15544 8009E3A4 AC440000 */  sw    $a0, ($v0)
/* B15548 8009E3A8 AC4A0004 */  sw    $t2, 4($v0)
/* B1554C 8009E3AC 01401025 */  move  $v0, $t2
/* B15550 8009E3B0 AC450000 */  sw    $a1, ($v0)
/* B15554 8009E3B4 AC400004 */  sw    $zero, 4($v0)
/* B15558 8009E3B8 254A0008 */  addiu $t2, $t2, 8
/* B1555C 8009E3BC 01401025 */  move  $v0, $t2
/* B15560 8009E3C0 AC460000 */  sw    $a2, ($v0)
/* B15564 8009E3C4 97AF00A0 */  lhu   $t7, 0xa0($sp)
/* B15568 8009E3C8 254A0008 */  addiu $t2, $t2, 8
/* B1556C 8009E3CC 448F2000 */  mtc1  $t7, $f4
/* B15570 8009E3D0 05E10004 */  bgez  $t7, .L8009E3E4
/* B15574 8009E3D4 468021A0 */   cvt.s.w $f6, $f4
/* B15578 8009E3D8 44814000 */  mtc1  $at, $f8
/* B1557C 8009E3DC 00000000 */  nop   
/* B15580 8009E3E0 46083180 */  add.s $f6, $f6, $f8
.L8009E3E4:
/* B15584 8009E3E4 3C018014 */  lui   $at, 0x8014
/* B15588 8009E3E8 C42AFF20 */  lwc1  $f10, -0xe0($at)
/* B1558C 8009E3EC 24180001 */  li    $t8, 1
/* B15590 8009E3F0 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B15594 8009E3F4 460A3402 */  mul.s $f16, $f6, $f10
/* B15598 8009E3F8 444EF800 */  cfc1  $t6, $31
/* B1559C 8009E3FC 44D8F800 */  ctc1  $t8, $31
/* B155A0 8009E400 00000000 */  nop   
/* B155A4 8009E404 460084A4 */  cvt.w.s $f18, $f16
/* B155A8 8009E408 4458F800 */  cfc1  $t8, $31
/* B155AC 8009E40C 00000000 */  nop   
/* B155B0 8009E410 33180078 */  andi  $t8, $t8, 0x78
/* B155B4 8009E414 53000013 */  beql  $t8, $zero, .L8009E464
/* B155B8 8009E418 44189000 */   mfc1  $t8, $f18
/* B155BC 8009E41C 44819000 */  mtc1  $at, $f18
/* B155C0 8009E420 24180001 */  li    $t8, 1
/* B155C4 8009E424 46128481 */  sub.s $f18, $f16, $f18
/* B155C8 8009E428 44D8F800 */  ctc1  $t8, $31
/* B155CC 8009E42C 00000000 */  nop   
/* B155D0 8009E430 460094A4 */  cvt.w.s $f18, $f18
/* B155D4 8009E434 4458F800 */  cfc1  $t8, $31
/* B155D8 8009E438 00000000 */  nop   
/* B155DC 8009E43C 33180078 */  andi  $t8, $t8, 0x78
/* B155E0 8009E440 17000005 */  bnez  $t8, .L8009E458
/* B155E4 8009E444 00000000 */   nop   
/* B155E8 8009E448 44189000 */  mfc1  $t8, $f18
/* B155EC 8009E44C 3C018000 */  lui   $at, 0x8000
/* B155F0 8009E450 10000007 */  b     .L8009E470
/* B155F4 8009E454 0301C025 */   or    $t8, $t8, $at
.L8009E458:
/* B155F8 8009E458 10000005 */  b     .L8009E470
/* B155FC 8009E45C 2418FFFF */   li    $t8, -1
/* B15600 8009E460 44189000 */  mfc1  $t8, $f18
.L8009E464:
/* B15604 8009E464 00000000 */  nop   
/* B15608 8009E468 0700FFFB */  bltz  $t8, .L8009E458
/* B1560C 8009E46C 00000000 */   nop   
.L8009E470:
/* B15610 8009E470 331900FF */  andi  $t9, $t8, 0xff
/* B15614 8009E474 03277825 */  or    $t7, $t9, $a3
/* B15618 8009E478 AC4F0004 */  sw    $t7, 4($v0)
/* B1561C 8009E47C AD400004 */  sw    $zero, 4($t2)
/* B15620 8009E480 AD480000 */  sw    $t0, ($t2)
/* B15624 8009E484 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B15628 8009E488 44CEF800 */  ctc1  $t6, $31
/* B1562C 8009E48C 3C18DB06 */  lui   $t8, (0xDB060030 >> 16) # lui $t8, 0xdb06
/* B15630 8009E490 244E0008 */  addiu $t6, $v0, 8
/* B15634 8009E494 AD2E02C0 */  sw    $t6, 0x2c0($t1)
/* B15638 8009E498 37180030 */  ori   $t8, (0xDB060030 & 0xFFFF) # ori $t8, $t8, 0x30
/* B1563C 8009E49C AC580000 */  sw    $t8, ($v0)
/* B15640 8009E4A0 858F1D30 */  lh    $t7, 0x1d30($t4)
/* B15644 8009E4A4 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B15648 8009E4A8 C426FF24 */  lwc1  $f6, -0xdc($at)
/* B1564C 8009E4AC 000F7023 */  negu  $t6, $t7
/* B15650 8009E4B0 448E2000 */  mtc1  $t6, $f4
/* B15654 8009E4B4 8FB900A8 */  lw    $t9, 0xa8($sp)
/* B15658 8009E4B8 240E0001 */  li    $t6, 1
/* B1565C 8009E4BC 46802220 */  cvt.s.w $f8, $f4
/* B15660 8009E4C0 8F240000 */  lw    $a0, ($t9)
/* B15664 8009E4C4 24190020 */  li    $t9, 32
/* B15668 8009E4C8 AFB90010 */  sw    $t9, 0x10($sp)
/* B1566C 8009E4CC 24190010 */  li    $t9, 16
/* B15670 8009E4D0 240F0010 */  li    $t7, 16
/* B15674 8009E4D4 46064282 */  mul.s $f10, $f8, $f6
/* B15678 8009E4D8 24180020 */  li    $t8, 32
/* B1567C 8009E4DC AFB80024 */  sw    $t8, 0x24($sp)
/* B15680 8009E4E0 AFAF0014 */  sw    $t7, 0x14($sp)
/* B15684 8009E4E4 AFB90028 */  sw    $t9, 0x28($sp)
/* B15688 8009E4E8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1568C 8009E4EC AFAE0018 */  sw    $t6, 0x18($sp)
/* B15690 8009E4F0 4600540D */  trunc.w.s $f16, $f10
/* B15694 8009E4F4 00002825 */  move  $a1, $zero
/* B15698 8009E4F8 00003025 */  move  $a2, $zero
/* B1569C 8009E4FC AFA20048 */  sw    $v0, 0x48($sp)
/* B156A0 8009E500 44078000 */  mfc1  $a3, $f16
/* B156A4 8009E504 00000000 */  nop   
/* B156A8 8009E508 00073C00 */  sll   $a3, $a3, 0x10
/* B156AC 8009E50C 00073C03 */  sra   $a3, $a3, 0x10
/* B156B0 8009E510 0C0253D0 */  jal   func_80094F40
/* B156B4 8009E514 AFA70020 */   sw    $a3, 0x20($sp)
/* B156B8 8009E518 8FA30048 */  lw    $v1, 0x48($sp)
/* B156BC 8009E51C 3C068014 */  lui   $a2, %hi(D_8013FC1C) # $a2, 0x8014
/* B156C0 8009E520 24C6FC1C */  addiu $a2, %lo(D_8013FC1C) # addiu $a2, $a2, -0x3e4
/* B156C4 8009E524 AC620004 */  sw    $v0, 4($v1)
/* B156C8 8009E528 8FAF00A8 */  lw    $t7, 0xa8($sp)
/* B156CC 8009E52C 27A40088 */  addiu $a0, $sp, 0x88
/* B156D0 8009E530 24071B84 */  li    $a3, 7044
/* B156D4 8009E534 0C031AD5 */  jal   func_800C6B54
/* B156D8 8009E538 8DE50000 */   lw    $a1, ($t7)
/* B156DC 8009E53C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B156E0 8009E540 27BD00A8 */  addiu $sp, $sp, 0xa8
/* B156E4 8009E544 03E00008 */  jr    $ra
/* B156E8 8009E548 00000000 */   nop   

/* B156EC 8009E54C 27BDFF80 */  addiu $sp, $sp, -0x80
/* B156F0 8009E550 AFBF004C */  sw    $ra, 0x4c($sp)
/* B156F4 8009E554 AFB10048 */  sw    $s1, 0x48($sp)
/* B156F8 8009E558 AFB00044 */  sw    $s0, 0x44($sp)
/* B156FC 8009E55C 8C850000 */  lw    $a1, ($a0)
/* B15700 8009E560 00808825 */  move  $s1, $a0
/* B15704 8009E564 3C068014 */  lui   $a2, %hi(D_8013FC30) # $a2, 0x8014
/* B15708 8009E568 24C6FC30 */  addiu $a2, %lo(D_8013FC30) # addiu $a2, $a2, -0x3d0
/* B1570C 8009E56C 27A40068 */  addiu $a0, $sp, 0x68
/* B15710 8009E570 24071B92 */  li    $a3, 7058
/* B15714 8009E574 0C031AB1 */  jal   func_800C6AC4
/* B15718 8009E578 00A08025 */   move  $s0, $a1
/* B1571C 8009E57C 3C028016 */  lui   $v0, %hi(D_8015E660) # $v0, 0x8016
/* B15720 8009E580 2442E660 */  addiu $v0, %lo(D_8015E660) # addiu $v0, $v0, -0x19a0
/* B15724 8009E584 8C4E1360 */  lw    $t6, 0x1360($v0)
/* B15728 8009E588 3C0BDB06 */  lui   $t3, (0xDB060020 >> 16) # lui $t3, 0xdb06
/* B1572C 8009E58C 356B0020 */  ori   $t3, (0xDB060020 & 0xFFFF) # ori $t3, $t3, 0x20
/* B15730 8009E590 29C10004 */  slti  $at, $t6, 4
/* B15734 8009E594 10200007 */  beqz  $at, .L8009E5B4
/* B15738 8009E598 00002825 */   move  $a1, $zero
/* B1573C 8009E59C 8C4F0004 */  lw    $t7, 4($v0)
/* B15740 8009E5A0 55E00009 */  bnezl $t7, .L8009E5C8
/* B15744 8009E5A4 8E0202C0 */   lw    $v0, 0x2c0($s0)
/* B15748 8009E5A8 94580EE0 */  lhu   $t8, 0xee0($v0)
/* B1574C 8009E5AC 33190200 */  andi  $t9, $t8, 0x200
/* B15750 8009E5B0 17200004 */  bnez  $t9, .L8009E5C4
.L8009E5B4:
/* B15754 8009E5B4 3C010001 */   lui   $at, 1
/* B15758 8009E5B8 00310821 */  addu  $at, $at, $s1
/* B1575C 8009E5BC 24090057 */  li    $t1, 87
/* B15760 8009E5C0 A4291D30 */  sh    $t1, 0x1d30($at)
.L8009E5C4:
/* B15764 8009E5C4 8E0202C0 */  lw    $v0, 0x2c0($s0)
.L8009E5C8:
/* B15768 8009E5C8 3C010001 */  lui   $at, 1
/* B1576C 8009E5CC 02211821 */  addu  $v1, $s1, $at
/* B15770 8009E5D0 8C661DE4 */  lw    $a2, 0x1de4($v1)
/* B15774 8009E5D4 244A0008 */  addiu $t2, $v0, 8
/* B15778 8009E5D8 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B1577C 8009E5DC AC4B0000 */  sw    $t3, ($v0)
/* B15780 8009E5E0 8E240000 */  lw    $a0, ($s1)
/* B15784 8009E5E4 240C0020 */  li    $t4, 32
/* B15788 8009E5E8 240D0020 */  li    $t5, 32
/* B1578C 8009E5EC 240E0001 */  li    $t6, 1
/* B15790 8009E5F0 240F0020 */  li    $t7, 32
/* B15794 8009E5F4 24180020 */  li    $t8, 32
/* B15798 8009E5F8 AFB80028 */  sw    $t8, 0x28($sp)
/* B1579C 8009E5FC AFAF0024 */  sw    $t7, 0x24($sp)
/* B157A0 8009E600 AFAE0018 */  sw    $t6, 0x18($sp)
/* B157A4 8009E604 AFAD0014 */  sw    $t5, 0x14($sp)
/* B157A8 8009E608 AFAC0010 */  sw    $t4, 0x10($sp)
/* B157AC 8009E60C AFA00034 */  sw    $zero, 0x34($sp)
/* B157B0 8009E610 AFA00030 */  sw    $zero, 0x30($sp)
/* B157B4 8009E614 AFA0002C */  sw    $zero, 0x2c($sp)
/* B157B8 8009E618 AFA00020 */  sw    $zero, 0x20($sp)
/* B157BC 8009E61C AFA0001C */  sw    $zero, 0x1c($sp)
/* B157C0 8009E620 84791D30 */  lh    $t9, 0x1d30($v1)
/* B157C4 8009E624 AFA30054 */  sw    $v1, 0x54($sp)
/* B157C8 8009E628 AFA20064 */  sw    $v0, 0x64($sp)
/* B157CC 8009E62C 272900A8 */  addiu $t1, $t9, 0xa8
/* B157D0 8009E630 AFA90038 */  sw    $t1, 0x38($sp)
/* B157D4 8009E634 AFA6007C */  sw    $a2, 0x7c($sp)
/* B157D8 8009E638 0C02541A */  jal   func_80095068
/* B157DC 8009E63C 00C03825 */   move  $a3, $a2
/* B157E0 8009E640 8FA80064 */  lw    $t0, 0x64($sp)
/* B157E4 8009E644 8FA30054 */  lw    $v1, 0x54($sp)
/* B157E8 8009E648 3C0BDB06 */  lui   $t3, (0xDB060024 >> 16) # lui $t3, 0xdb06
/* B157EC 8009E64C AD020004 */  sw    $v0, 4($t0)
/* B157F0 8009E650 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B157F4 8009E654 356B0024 */  ori   $t3, (0xDB060024 & 0xFFFF) # ori $t3, $t3, 0x24
/* B157F8 8009E658 240C0020 */  li    $t4, 32
/* B157FC 8009E65C 244A0008 */  addiu $t2, $v0, 8
/* B15800 8009E660 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B15804 8009E664 AC4B0000 */  sw    $t3, ($v0)
/* B15808 8009E668 8E240000 */  lw    $a0, ($s1)
/* B1580C 8009E66C 240D0020 */  li    $t5, 32
/* B15810 8009E670 240E0001 */  li    $t6, 1
/* B15814 8009E674 240F0010 */  li    $t7, 16
/* B15818 8009E678 24180040 */  li    $t8, 64
/* B1581C 8009E67C AFB80028 */  sw    $t8, 0x28($sp)
/* B15820 8009E680 AFAF0024 */  sw    $t7, 0x24($sp)
/* B15824 8009E684 AFAE0018 */  sw    $t6, 0x18($sp)
/* B15828 8009E688 AFAD0014 */  sw    $t5, 0x14($sp)
/* B1582C 8009E68C AFA00034 */  sw    $zero, 0x34($sp)
/* B15830 8009E690 AFA00030 */  sw    $zero, 0x30($sp)
/* B15834 8009E694 AFA0002C */  sw    $zero, 0x2c($sp)
/* B15838 8009E698 AFA00020 */  sw    $zero, 0x20($sp)
/* B1583C 8009E69C AFA0001C */  sw    $zero, 0x1c($sp)
/* B15840 8009E6A0 AFAC0010 */  sw    $t4, 0x10($sp)
/* B15844 8009E6A4 8FA6007C */  lw    $a2, 0x7c($sp)
/* B15848 8009E6A8 84791D30 */  lh    $t9, 0x1d30($v1)
/* B1584C 8009E6AC 00002825 */  move  $a1, $zero
/* B15850 8009E6B0 00063023 */  negu  $a2, $a2
/* B15854 8009E6B4 272900A8 */  addiu $t1, $t9, 0xa8
/* B15858 8009E6B8 AFA90038 */  sw    $t1, 0x38($sp)
/* B1585C 8009E6BC 00C03825 */  move  $a3, $a2
/* B15860 8009E6C0 0C02541A */  jal   func_80095068
/* B15864 8009E6C4 AFA20060 */   sw    $v0, 0x60($sp)
/* B15868 8009E6C8 8FA80060 */  lw    $t0, 0x60($sp)
/* B1586C 8009E6CC 3C0BE700 */  lui   $t3, 0xe700
/* B15870 8009E6D0 3C0DFB00 */  lui   $t5, 0xfb00
/* B15874 8009E6D4 AD020004 */  sw    $v0, 4($t0)
/* B15878 8009E6D8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1587C 8009E6DC 240EFF80 */  li    $t6, -128
/* B15880 8009E6E0 3C068014 */  lui   $a2, %hi(D_8013FC44) # $a2, 0x8014
/* B15884 8009E6E4 244A0008 */  addiu $t2, $v0, 8
/* B15888 8009E6E8 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B1588C 8009E6EC AC400004 */  sw    $zero, 4($v0)
/* B15890 8009E6F0 AC4B0000 */  sw    $t3, ($v0)
/* B15894 8009E6F4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B15898 8009E6F8 24C6FC44 */  addiu $a2, %lo(D_8013FC44) # addiu $a2, $a2, -0x3bc
/* B1589C 8009E6FC 27A40068 */  addiu $a0, $sp, 0x68
/* B158A0 8009E700 244C0008 */  addiu $t4, $v0, 8
/* B158A4 8009E704 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B158A8 8009E708 AC4E0004 */  sw    $t6, 4($v0)
/* B158AC 8009E70C AC4D0000 */  sw    $t5, ($v0)
/* B158B0 8009E710 8E250000 */  lw    $a1, ($s1)
/* B158B4 8009E714 0C031AD5 */  jal   func_800C6B54
/* B158B8 8009E718 24071BB9 */   li    $a3, 7097
/* B158BC 8009E71C 8FBF004C */  lw    $ra, 0x4c($sp)
/* B158C0 8009E720 8FB00044 */  lw    $s0, 0x44($sp)
/* B158C4 8009E724 8FB10048 */  lw    $s1, 0x48($sp)
/* B158C8 8009E728 03E00008 */  jr    $ra
/* B158CC 8009E72C 27BD0080 */   addiu $sp, $sp, 0x80

/* B158D0 8009E730 27BDFF90 */  addiu $sp, $sp, -0x70
/* B158D4 8009E734 AFBF0034 */  sw    $ra, 0x34($sp)
/* B158D8 8009E738 AFA40070 */  sw    $a0, 0x70($sp)
/* B158DC 8009E73C 8C850000 */  lw    $a1, ($a0)
/* B158E0 8009E740 3C068014 */  lui   $a2, %hi(D_8013FC58) # $a2, 0x8014
/* B158E4 8009E744 24C6FC58 */  addiu $a2, %lo(D_8013FC58) # addiu $a2, $a2, -0x3a8
/* B158E8 8009E748 27A40054 */  addiu $a0, $sp, 0x54
/* B158EC 8009E74C 24071BD3 */  li    $a3, 7123
/* B158F0 8009E750 0C031AB1 */  jal   func_800C6AC4
/* B158F4 8009E754 AFA50064 */   sw    $a1, 0x64($sp)
/* B158F8 8009E758 8FAA0070 */  lw    $t2, 0x70($sp)
/* B158FC 8009E75C 3C020001 */  lui   $v0, 1
/* B15900 8009E760 3C198016 */  lui   $t9, %hi(D_8015E664) # $t9, 0x8016
/* B15904 8009E764 004A1021 */  addu  $v0, $v0, $t2
/* B15908 8009E768 8C421DE4 */  lw    $v0, 0x1de4($v0)
/* B1590C 8009E76C 8F39E664 */  lw    $t9, %lo(D_8015E664)($t9)
/* B15910 8009E770 2418007F */  li    $t8, 127
/* B15914 8009E774 304F007F */  andi  $t7, $v0, 0x7f
/* B15918 8009E778 8FA80064 */  lw    $t0, 0x64($sp)
/* B1591C 8009E77C 17200002 */  bnez  $t9, .L8009E788
/* B15920 8009E780 030F1823 */   subu  $v1, $t8, $t7
/* B15924 8009E784 00001825 */  move  $v1, $zero
.L8009E788:
/* B15928 8009E788 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B1592C 8009E78C 3C0CDB06 */  lui   $t4, (0xDB060030 >> 16) # lui $t4, 0xdb06
/* B15930 8009E790 358C0030 */  ori   $t4, (0xDB060030 & 0xFFFF) # ori $t4, $t4, 0x30
/* B15934 8009E794 244B0008 */  addiu $t3, $v0, 8
/* B15938 8009E798 AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B1593C 8009E79C AC4C0000 */  sw    $t4, ($v0)
/* B15940 8009E7A0 8D440000 */  lw    $a0, ($t2)
/* B15944 8009E7A4 240D0040 */  li    $t5, 64
/* B15948 8009E7A8 240E0020 */  li    $t6, 32
/* B1594C 8009E7AC 24180001 */  li    $t8, 1
/* B15950 8009E7B0 240F0040 */  li    $t7, 64
/* B15954 8009E7B4 24190020 */  li    $t9, 32
/* B15958 8009E7B8 AFB90028 */  sw    $t9, 0x28($sp)
/* B1595C 8009E7BC AFAF0024 */  sw    $t7, 0x24($sp)
/* B15960 8009E7C0 AFB80018 */  sw    $t8, 0x18($sp)
/* B15964 8009E7C4 AFAE0014 */  sw    $t6, 0x14($sp)
/* B15968 8009E7C8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B1596C 8009E7CC AFA80064 */  sw    $t0, 0x64($sp)
/* B15970 8009E7D0 AFA30020 */  sw    $v1, 0x20($sp)
/* B15974 8009E7D4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B15978 8009E7D8 00002825 */  move  $a1, $zero
/* B1597C 8009E7DC 00003025 */  move  $a2, $zero
/* B15980 8009E7E0 00003825 */  move  $a3, $zero
/* B15984 8009E7E4 0C0253D0 */  jal   func_80094F40
/* B15988 8009E7E8 AFA20050 */   sw    $v0, 0x50($sp)
/* B1598C 8009E7EC 8FA90050 */  lw    $t1, 0x50($sp)
/* B15990 8009E7F0 8FA80064 */  lw    $t0, 0x64($sp)
/* B15994 8009E7F4 3C0CE700 */  lui   $t4, 0xe700
/* B15998 8009E7F8 AD220004 */  sw    $v0, 4($t1)
/* B1599C 8009E7FC 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B159A0 8009E800 3C188080 */  lui   $t8, (0x80808080 >> 16) # lui $t8, 0x8080
/* B159A4 8009E804 37188080 */  ori   $t8, (0x80808080 & 0xFFFF) # ori $t8, $t8, 0x8080
/* B159A8 8009E808 244B0008 */  addiu $t3, $v0, 8
/* B159AC 8009E80C AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B159B0 8009E810 AC400004 */  sw    $zero, 4($v0)
/* B159B4 8009E814 AC4C0000 */  sw    $t4, ($v0)
/* B159B8 8009E818 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B159BC 8009E81C 3C0EFB00 */  lui   $t6, 0xfb00
/* B159C0 8009E820 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B159C4 8009E824 244D0008 */  addiu $t5, $v0, 8
/* B159C8 8009E828 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B159CC 8009E82C AC580004 */  sw    $t8, 4($v0)
/* B159D0 8009E830 AC4E0000 */  sw    $t6, ($v0)
/* B159D4 8009E834 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B159D8 8009E838 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B159DC 8009E83C 3C0B8016 */  lui   $t3, %hi(D_8015E670) # $t3, 0x8016
/* B159E0 8009E840 246F0008 */  addiu $t7, $v1, 8
/* B159E4 8009E844 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B159E8 8009E848 AC790000 */  sw    $t9, ($v1)
/* B159EC 8009E84C 8D6BE670 */  lw    $t3, %lo(D_8015E670)($t3)
/* B159F0 8009E850 3C048013 */  lui   $a0, 0x8013
/* B159F4 8009E854 3C198016 */  lui   $t9, 0x8016
/* B159F8 8009E858 000B6080 */  sll   $t4, $t3, 2
/* B159FC 8009E85C 008C2021 */  addu  $a0, $a0, $t4
/* B15A00 8009E860 8C84A378 */  lw    $a0, -0x5c88($a0)
/* B15A04 8009E864 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B15A08 8009E868 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B15A0C 8009E86C 00047100 */  sll   $t6, $a0, 4
/* B15A10 8009E870 000EC702 */  srl   $t8, $t6, 0x1c
/* B15A14 8009E874 00187880 */  sll   $t7, $t8, 2
/* B15A18 8009E878 032FC821 */  addu  $t9, $t9, $t7
/* B15A1C 8009E87C 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B15A20 8009E880 00816824 */  and   $t5, $a0, $at
/* B15A24 8009E884 3C018000 */  lui   $at, 0x8000
/* B15A28 8009E888 01B95821 */  addu  $t3, $t5, $t9
/* B15A2C 8009E88C 01616021 */  addu  $t4, $t3, $at
/* B15A30 8009E890 AC6C0004 */  sw    $t4, 4($v1)
/* B15A34 8009E894 8FAE0070 */  lw    $t6, 0x70($sp)
/* B15A38 8009E898 3C068014 */  lui   $a2, %hi(D_8013FC6C) # $a2, 0x8014
/* B15A3C 8009E89C 24C6FC6C */  addiu $a2, %lo(D_8013FC6C) # addiu $a2, $a2, -0x394
/* B15A40 8009E8A0 27A40054 */  addiu $a0, $sp, 0x54
/* B15A44 8009E8A4 24071BEB */  li    $a3, 7147
/* B15A48 8009E8A8 0C031AD5 */  jal   func_800C6B54
/* B15A4C 8009E8AC 8DC50000 */   lw    $a1, ($t6)
/* B15A50 8009E8B0 8FBF0034 */  lw    $ra, 0x34($sp)
/* B15A54 8009E8B4 27BD0070 */  addiu $sp, $sp, 0x70
/* B15A58 8009E8B8 03E00008 */  jr    $ra
/* B15A5C 8009E8BC 00000000 */   nop   

/* B15A60 8009E8C0 27BDFF80 */  addiu $sp, $sp, -0x80
/* B15A64 8009E8C4 AFBF003C */  sw    $ra, 0x3c($sp)
/* B15A68 8009E8C8 AFB10038 */  sw    $s1, 0x38($sp)
/* B15A6C 8009E8CC AFB00034 */  sw    $s0, 0x34($sp)
/* B15A70 8009E8D0 8C850000 */  lw    $a1, ($a0)
/* B15A74 8009E8D4 00808825 */  move  $s1, $a0
/* B15A78 8009E8D8 3C068014 */  lui   $a2, %hi(D_8013FC80) # $a2, 0x8014
/* B15A7C 8009E8DC 24C6FC80 */  addiu $a2, %lo(D_8013FC80) # addiu $a2, $a2, -0x380
/* B15A80 8009E8E0 27A40068 */  addiu $a0, $sp, 0x68
/* B15A84 8009E8E4 24071BF9 */  li    $a3, 7161
/* B15A88 8009E8E8 0C031AB1 */  jal   func_800C6AC4
/* B15A8C 8009E8EC 00A08025 */   move  $s0, $a1
/* B15A90 8009E8F0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B15A94 8009E8F4 3C030001 */  lui   $v1, 1
/* B15A98 8009E8F8 00711821 */  addu  $v1, $v1, $s1
/* B15A9C 8009E8FC 8C631DE4 */  lw    $v1, 0x1de4($v1)
/* B15AA0 8009E900 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B15AA4 8009E904 244E0008 */  addiu $t6, $v0, 8
/* B15AA8 8009E908 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B15AAC 8009E90C 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B15AB0 8009E910 AC4F0000 */  sw    $t7, ($v0)
/* B15AB4 8009E914 8E240000 */  lw    $a0, ($s1)
/* B15AB8 8009E918 24180020 */  li    $t8, 32
/* B15ABC 8009E91C 24190020 */  li    $t9, 32
/* B15AC0 8009E920 24090001 */  li    $t1, 1
/* B15AC4 8009E924 240A0020 */  li    $t2, 32
/* B15AC8 8009E928 240B0020 */  li    $t3, 32
/* B15ACC 8009E92C 3066007F */  andi  $a2, $v1, 0x7f
/* B15AD0 8009E930 AFA60048 */  sw    $a2, 0x48($sp)
/* B15AD4 8009E934 AFAB0028 */  sw    $t3, 0x28($sp)
/* B15AD8 8009E938 AFAA0024 */  sw    $t2, 0x24($sp)
/* B15ADC 8009E93C AFA90018 */  sw    $t1, 0x18($sp)
/* B15AE0 8009E940 AFB90014 */  sw    $t9, 0x14($sp)
/* B15AE4 8009E944 AFB80010 */  sw    $t8, 0x10($sp)
/* B15AE8 8009E948 AFA00020 */  sw    $zero, 0x20($sp)
/* B15AEC 8009E94C AFA0001C */  sw    $zero, 0x1c($sp)
/* B15AF0 8009E950 00002825 */  move  $a1, $zero
/* B15AF4 8009E954 00003825 */  move  $a3, $zero
/* B15AF8 8009E958 AFA20064 */  sw    $v0, 0x64($sp)
/* B15AFC 8009E95C 0C0253D0 */  jal   func_80094F40
/* B15B00 8009E960 AFA3007C */   sw    $v1, 0x7c($sp)
/* B15B04 8009E964 8FA80064 */  lw    $t0, 0x64($sp)
/* B15B08 8009E968 8FA3007C */  lw    $v1, 0x7c($sp)
/* B15B0C 8009E96C 3C0DDB06 */  lui   $t5, (0xDB060024 >> 16) # lui $t5, 0xdb06
/* B15B10 8009E970 AD020004 */  sw    $v0, 4($t0)
/* B15B14 8009E974 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15B18 8009E978 35AD0024 */  ori   $t5, (0xDB060024 & 0xFFFF) # ori $t5, $t5, 0x24
/* B15B1C 8009E97C 00037040 */  sll   $t6, $v1, 1
/* B15B20 8009E980 244C0008 */  addiu $t4, $v0, 8
/* B15B24 8009E984 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B15B28 8009E988 AC4D0000 */  sw    $t5, ($v0)
/* B15B2C 8009E98C 8E240000 */  lw    $a0, ($s1)
/* B15B30 8009E990 31CF00FF */  andi  $t7, $t6, 0xff
/* B15B34 8009E994 241800FF */  li    $t8, 255
/* B15B38 8009E998 030F3823 */  subu  $a3, $t8, $t7
/* B15B3C 8009E99C 240C0040 */  li    $t4, 64
/* B15B40 8009E9A0 24190040 */  li    $t9, 64
/* B15B44 8009E9A4 24090040 */  li    $t1, 64
/* B15B48 8009E9A8 240A0001 */  li    $t2, 1
/* B15B4C 8009E9AC 240B0040 */  li    $t3, 64
/* B15B50 8009E9B0 AFAB0024 */  sw    $t3, 0x24($sp)
/* B15B54 8009E9B4 AFAA0018 */  sw    $t2, 0x18($sp)
/* B15B58 8009E9B8 AFA90014 */  sw    $t1, 0x14($sp)
/* B15B5C 8009E9BC AFB90010 */  sw    $t9, 0x10($sp)
/* B15B60 8009E9C0 AFAC0028 */  sw    $t4, 0x28($sp)
/* B15B64 8009E9C4 AFA70020 */  sw    $a3, 0x20($sp)
/* B15B68 8009E9C8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B15B6C 8009E9CC 00002825 */  move  $a1, $zero
/* B15B70 8009E9D0 00003025 */  move  $a2, $zero
/* B15B74 8009E9D4 0C0253D0 */  jal   func_80094F40
/* B15B78 8009E9D8 AFA20060 */   sw    $v0, 0x60($sp)
/* B15B7C 8009E9DC 8FA80060 */  lw    $t0, 0x60($sp)
/* B15B80 8009E9E0 3C0EDB06 */  lui   $t6, (0xDB060028 >> 16) # lui $t6, 0xdb06
/* B15B84 8009E9E4 35CE0028 */  ori   $t6, (0xDB060028 & 0xFFFF) # ori $t6, $t6, 0x28
/* B15B88 8009E9E8 AD020004 */  sw    $v0, 4($t0)
/* B15B8C 8009E9EC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15B90 8009E9F0 8FA70048 */  lw    $a3, 0x48($sp)
/* B15B94 8009E9F4 24180020 */  li    $t8, 32
/* B15B98 8009E9F8 244D0008 */  addiu $t5, $v0, 8
/* B15B9C 8009E9FC AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B15BA0 8009EA00 AC4E0000 */  sw    $t6, ($v0)
/* B15BA4 8009EA04 8E240000 */  lw    $a0, ($s1)
/* B15BA8 8009EA08 240F0020 */  li    $t7, 32
/* B15BAC 8009EA0C 24190001 */  li    $t9, 1
/* B15BB0 8009EA10 24090020 */  li    $t1, 32
/* B15BB4 8009EA14 240A0020 */  li    $t2, 32
/* B15BB8 8009EA18 AFAA0028 */  sw    $t2, 0x28($sp)
/* B15BBC 8009EA1C AFA90024 */  sw    $t1, 0x24($sp)
/* B15BC0 8009EA20 AFB90018 */  sw    $t9, 0x18($sp)
/* B15BC4 8009EA24 AFAF0014 */  sw    $t7, 0x14($sp)
/* B15BC8 8009EA28 AFA0001C */  sw    $zero, 0x1c($sp)
/* B15BCC 8009EA2C AFB80010 */  sw    $t8, 0x10($sp)
/* B15BD0 8009EA30 00002825 */  move  $a1, $zero
/* B15BD4 8009EA34 00003025 */  move  $a2, $zero
/* B15BD8 8009EA38 AFA2005C */  sw    $v0, 0x5c($sp)
/* B15BDC 8009EA3C 0C0253D0 */  jal   func_80094F40
/* B15BE0 8009EA40 AFA70020 */   sw    $a3, 0x20($sp)
/* B15BE4 8009EA44 8FA3005C */  lw    $v1, 0x5c($sp)
/* B15BE8 8009EA48 3C04E700 */  lui   $a0, 0xe700
/* B15BEC 8009EA4C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B15BF0 8009EA50 AC620004 */  sw    $v0, 4($v1)
/* B15BF4 8009EA54 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B15BF8 8009EA58 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B15BFC 8009EA5C 3C05FB00 */  lui   $a1, 0xfb00
/* B15C00 8009EA60 244B0008 */  addiu $t3, $v0, 8
/* B15C04 8009EA64 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B15C08 8009EA68 AC400004 */  sw    $zero, 4($v0)
/* B15C0C 8009EA6C AC440000 */  sw    $a0, ($v0)
/* B15C10 8009EA70 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B15C14 8009EA74 24071C18 */  li    $a3, 7192
/* B15C18 8009EA78 244C0008 */  addiu $t4, $v0, 8
/* B15C1C 8009EA7C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B15C20 8009EA80 AC460004 */  sw    $a2, 4($v0)
/* B15C24 8009EA84 AC450000 */  sw    $a1, ($v0)
/* B15C28 8009EA88 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15C2C 8009EA8C 244D0008 */  addiu $t5, $v0, 8
/* B15C30 8009EA90 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B15C34 8009EA94 AC400004 */  sw    $zero, 4($v0)
/* B15C38 8009EA98 AC440000 */  sw    $a0, ($v0)
/* B15C3C 8009EA9C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15C40 8009EAA0 27A40068 */  addiu $a0, $sp, 0x68
/* B15C44 8009EAA4 244E0008 */  addiu $t6, $v0, 8
/* B15C48 8009EAA8 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B15C4C 8009EAAC AC460004 */  sw    $a2, 4($v0)
/* B15C50 8009EAB0 3C068014 */  lui   $a2, %hi(D_8013FC94) # $a2, 0x8014
/* B15C54 8009EAB4 AC450000 */  sw    $a1, ($v0)
/* B15C58 8009EAB8 8E250000 */  lw    $a1, ($s1)
/* B15C5C 8009EABC 0C031AD5 */  jal   func_800C6B54
/* B15C60 8009EAC0 24C6FC94 */   addiu $a2, %lo(D_8013FC94) # addiu $a2, $a2, -0x36c
/* B15C64 8009EAC4 8FBF003C */  lw    $ra, 0x3c($sp)
/* B15C68 8009EAC8 8FB00034 */  lw    $s0, 0x34($sp)
/* B15C6C 8009EACC 8FB10038 */  lw    $s1, 0x38($sp)
/* B15C70 8009EAD0 03E00008 */  jr    $ra
/* B15C74 8009EAD4 27BD0080 */   addiu $sp, $sp, 0x80

/* B15C78 8009EAD8 27BDFF70 */  addiu $sp, $sp, -0x90
/* B15C7C 8009EADC AFBF003C */  sw    $ra, 0x3c($sp)
/* B15C80 8009EAE0 AFB10038 */  sw    $s1, 0x38($sp)
/* B15C84 8009EAE4 AFB00034 */  sw    $s0, 0x34($sp)
/* B15C88 8009EAE8 8C850000 */  lw    $a1, ($a0)
/* B15C8C 8009EAEC 00808825 */  move  $s1, $a0
/* B15C90 8009EAF0 3C068014 */  lui   $a2, %hi(D_8013FCA8) # $a2, 0x8014
/* B15C94 8009EAF4 24C6FCA8 */  addiu $a2, %lo(D_8013FCA8) # addiu $a2, $a2, -0x358
/* B15C98 8009EAF8 27A40078 */  addiu $a0, $sp, 0x78
/* B15C9C 8009EAFC 24071C26 */  li    $a3, 7206
/* B15CA0 8009EB00 0C031AB1 */  jal   func_800C6AC4
/* B15CA4 8009EB04 00A08025 */   move  $s0, $a1
/* B15CA8 8009EB08 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15CAC 8009EB0C 3C090001 */  lui   $t1, 1
/* B15CB0 8009EB10 01314821 */  addu  $t1, $t1, $s1
/* B15CB4 8009EB14 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B15CB8 8009EB18 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B15CBC 8009EB1C 244E0008 */  addiu $t6, $v0, 8
/* B15CC0 8009EB20 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B15CC4 8009EB24 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B15CC8 8009EB28 AC4F0000 */  sw    $t7, ($v0)
/* B15CCC 8009EB2C 8E240000 */  lw    $a0, ($s1)
/* B15CD0 8009EB30 00094080 */  sll   $t0, $t1, 2
/* B15CD4 8009EB34 01094023 */  subu  $t0, $t0, $t1
/* B15CD8 8009EB38 310703FF */  andi  $a3, $t0, 0x3ff
/* B15CDC 8009EB3C 24180020 */  li    $t8, 32
/* B15CE0 8009EB40 24190100 */  li    $t9, 256
/* B15CE4 8009EB44 240A0001 */  li    $t2, 1
/* B15CE8 8009EB48 240B0020 */  li    $t3, 32
/* B15CEC 8009EB4C 240C0100 */  li    $t4, 256
/* B15CF0 8009EB50 AFAC0028 */  sw    $t4, 0x28($sp)
/* B15CF4 8009EB54 AFAB0024 */  sw    $t3, 0x24($sp)
/* B15CF8 8009EB58 AFAA0018 */  sw    $t2, 0x18($sp)
/* B15CFC 8009EB5C AFB90014 */  sw    $t9, 0x14($sp)
/* B15D00 8009EB60 AFB80010 */  sw    $t8, 0x10($sp)
/* B15D04 8009EB64 AFA70020 */  sw    $a3, 0x20($sp)
/* B15D08 8009EB68 AFA8004C */  sw    $t0, 0x4c($sp)
/* B15D0C 8009EB6C AFA0001C */  sw    $zero, 0x1c($sp)
/* B15D10 8009EB70 00002825 */  move  $a1, $zero
/* B15D14 8009EB74 00003025 */  move  $a2, $zero
/* B15D18 8009EB78 AFA20074 */  sw    $v0, 0x74($sp)
/* B15D1C 8009EB7C 0C0253D0 */  jal   func_80094F40
/* B15D20 8009EB80 AFA9008C */   sw    $t1, 0x8c($sp)
/* B15D24 8009EB84 8FA30074 */  lw    $v1, 0x74($sp)
/* B15D28 8009EB88 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B15D2C 8009EB8C 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B15D30 8009EB90 AC620004 */  sw    $v0, 4($v1)
/* B15D34 8009EB94 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15D38 8009EB98 240F0040 */  li    $t7, 64
/* B15D3C 8009EB9C 24180040 */  li    $t8, 64
/* B15D40 8009EBA0 244D0008 */  addiu $t5, $v0, 8
/* B15D44 8009EBA4 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B15D48 8009EBA8 AC4E0000 */  sw    $t6, ($v0)
/* B15D4C 8009EBAC 8E240000 */  lw    $a0, ($s1)
/* B15D50 8009EBB0 8FA8008C */  lw    $t0, 0x8c($sp)
/* B15D54 8009EBB4 24190001 */  li    $t9, 1
/* B15D58 8009EBB8 240A0040 */  li    $t2, 64
/* B15D5C 8009EBBC 240B0040 */  li    $t3, 64
/* B15D60 8009EBC0 310700FF */  andi  $a3, $t0, 0xff
/* B15D64 8009EBC4 AFA70020 */  sw    $a3, 0x20($sp)
/* B15D68 8009EBC8 AFAB0028 */  sw    $t3, 0x28($sp)
/* B15D6C 8009EBCC AFAA0024 */  sw    $t2, 0x24($sp)
/* B15D70 8009EBD0 AFB90018 */  sw    $t9, 0x18($sp)
/* B15D74 8009EBD4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B15D78 8009EBD8 AFB80014 */  sw    $t8, 0x14($sp)
/* B15D7C 8009EBDC AFAF0010 */  sw    $t7, 0x10($sp)
/* B15D80 8009EBE0 00002825 */  move  $a1, $zero
/* B15D84 8009EBE4 00003025 */  move  $a2, $zero
/* B15D88 8009EBE8 AFA20070 */  sw    $v0, 0x70($sp)
/* B15D8C 8009EBEC 0C0253D0 */  jal   func_80094F40
/* B15D90 8009EBF0 AFA80048 */   sw    $t0, 0x48($sp)
/* B15D94 8009EBF4 8FA30070 */  lw    $v1, 0x70($sp)
/* B15D98 8009EBF8 3C0DDB06 */  lui   $t5, (0xDB060028 >> 16) # lui $t5, 0xdb06
/* B15D9C 8009EBFC 35AD0028 */  ori   $t5, (0xDB060028 & 0xFFFF) # ori $t5, $t5, 0x28
/* B15DA0 8009EC00 AC620004 */  sw    $v0, 4($v1)
/* B15DA4 8009EC04 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15DA8 8009EC08 240E0020 */  li    $t6, 32
/* B15DAC 8009EC0C 240F0020 */  li    $t7, 32
/* B15DB0 8009EC10 244C0008 */  addiu $t4, $v0, 8
/* B15DB4 8009EC14 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B15DB8 8009EC18 AC4D0000 */  sw    $t5, ($v0)
/* B15DBC 8009EC1C 8E240000 */  lw    $a0, ($s1)
/* B15DC0 8009EC20 8FA7008C */  lw    $a3, 0x8c($sp)
/* B15DC4 8009EC24 24180001 */  li    $t8, 1
/* B15DC8 8009EC28 24190020 */  li    $t9, 32
/* B15DCC 8009EC2C 00073840 */  sll   $a3, $a3, 1
/* B15DD0 8009EC30 30E7007F */  andi  $a3, $a3, 0x7f
/* B15DD4 8009EC34 240A0020 */  li    $t2, 32
/* B15DD8 8009EC38 AFAA0028 */  sw    $t2, 0x28($sp)
/* B15DDC 8009EC3C AFA70020 */  sw    $a3, 0x20($sp)
/* B15DE0 8009EC40 AFB90024 */  sw    $t9, 0x24($sp)
/* B15DE4 8009EC44 AFB80018 */  sw    $t8, 0x18($sp)
/* B15DE8 8009EC48 AFA0001C */  sw    $zero, 0x1c($sp)
/* B15DEC 8009EC4C AFAF0014 */  sw    $t7, 0x14($sp)
/* B15DF0 8009EC50 AFAE0010 */  sw    $t6, 0x10($sp)
/* B15DF4 8009EC54 00002825 */  move  $a1, $zero
/* B15DF8 8009EC58 00003025 */  move  $a2, $zero
/* B15DFC 8009EC5C 0C0253D0 */  jal   func_80094F40
/* B15E00 8009EC60 AFA2006C */   sw    $v0, 0x6c($sp)
/* B15E04 8009EC64 8FA3006C */  lw    $v1, 0x6c($sp)
/* B15E08 8009EC68 3C0CDB06 */  lui   $t4, (0xDB06002C >> 16) # lui $t4, 0xdb06
/* B15E0C 8009EC6C 358C002C */  ori   $t4, (0xDB06002C & 0xFFFF) # ori $t4, $t4, 0x2c
/* B15E10 8009EC70 AC620004 */  sw    $v0, 4($v1)
/* B15E14 8009EC74 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B15E18 8009EC78 240A007F */  li    $t2, 127
/* B15E1C 8009EC7C 240D0020 */  li    $t5, 32
/* B15E20 8009EC80 244B0008 */  addiu $t3, $v0, 8
/* B15E24 8009EC84 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B15E28 8009EC88 AC4C0000 */  sw    $t4, ($v0)
/* B15E2C 8009EC8C 8E240000 */  lw    $a0, ($s1)
/* B15E30 8009EC90 8FB8004C */  lw    $t8, 0x4c($sp)
/* B15E34 8009EC94 240C0020 */  li    $t4, 32
/* B15E38 8009EC98 240E0020 */  li    $t6, 32
/* B15E3C 8009EC9C 3319007F */  andi  $t9, $t8, 0x7f
/* B15E40 8009ECA0 01595823 */  subu  $t3, $t2, $t9
/* B15E44 8009ECA4 240F0001 */  li    $t7, 1
/* B15E48 8009ECA8 AFAF0018 */  sw    $t7, 0x18($sp)
/* B15E4C 8009ECAC AFAB0020 */  sw    $t3, 0x20($sp)
/* B15E50 8009ECB0 AFAE0014 */  sw    $t6, 0x14($sp)
/* B15E54 8009ECB4 AFAC0024 */  sw    $t4, 0x24($sp)
/* B15E58 8009ECB8 AFAD0028 */  sw    $t5, 0x28($sp)
/* B15E5C 8009ECBC AFA0001C */  sw    $zero, 0x1c($sp)
/* B15E60 8009ECC0 AFAD0010 */  sw    $t5, 0x10($sp)
/* B15E64 8009ECC4 00002825 */  move  $a1, $zero
/* B15E68 8009ECC8 00003025 */  move  $a2, $zero
/* B15E6C 8009ECCC 00003825 */  move  $a3, $zero
/* B15E70 8009ECD0 0C0253D0 */  jal   func_80094F40
/* B15E74 8009ECD4 AFA20068 */   sw    $v0, 0x68($sp)
/* B15E78 8009ECD8 8FA30068 */  lw    $v1, 0x68($sp)
/* B15E7C 8009ECDC 3C0FDB06 */  lui   $t7, (0xDB060030 >> 16) # lui $t7, 0xdb06
/* B15E80 8009ECE0 35EF0030 */  ori   $t7, (0xDB060030 & 0xFFFF) # ori $t7, $t7, 0x30
/* B15E84 8009ECE4 AC620004 */  sw    $v0, 4($v1)
/* B15E88 8009ECE8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15E8C 8009ECEC 24180020 */  li    $t8, 32
/* B15E90 8009ECF0 240A0020 */  li    $t2, 32
/* B15E94 8009ECF4 244E0008 */  addiu $t6, $v0, 8
/* B15E98 8009ECF8 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B15E9C 8009ECFC AC4F0000 */  sw    $t7, ($v0)
/* B15EA0 8009ED00 8E240000 */  lw    $a0, ($s1)
/* B15EA4 8009ED04 8FA70048 */  lw    $a3, 0x48($sp)
/* B15EA8 8009ED08 24190001 */  li    $t9, 1
/* B15EAC 8009ED0C 240B0020 */  li    $t3, 32
/* B15EB0 8009ED10 240C0020 */  li    $t4, 32
/* B15EB4 8009ED14 30E7007F */  andi  $a3, $a3, 0x7f
/* B15EB8 8009ED18 AFA70020 */  sw    $a3, 0x20($sp)
/* B15EBC 8009ED1C AFAC0028 */  sw    $t4, 0x28($sp)
/* B15EC0 8009ED20 AFAB0024 */  sw    $t3, 0x24($sp)
/* B15EC4 8009ED24 AFB90018 */  sw    $t9, 0x18($sp)
/* B15EC8 8009ED28 AFA0001C */  sw    $zero, 0x1c($sp)
/* B15ECC 8009ED2C AFAA0014 */  sw    $t2, 0x14($sp)
/* B15ED0 8009ED30 AFB80010 */  sw    $t8, 0x10($sp)
/* B15ED4 8009ED34 00002825 */  move  $a1, $zero
/* B15ED8 8009ED38 00003025 */  move  $a2, $zero
/* B15EDC 8009ED3C 0C0253D0 */  jal   func_80094F40
/* B15EE0 8009ED40 AFA20064 */   sw    $v0, 0x64($sp)
/* B15EE4 8009ED44 8FA30064 */  lw    $v1, 0x64($sp)
/* B15EE8 8009ED48 3C0EDB06 */  lui   $t6, (0xDB060034 >> 16) # lui $t6, 0xdb06
/* B15EEC 8009ED4C 35CE0034 */  ori   $t6, (0xDB060034 & 0xFFFF) # ori $t6, $t6, 0x34
/* B15EF0 8009ED50 AC620004 */  sw    $v0, 4($v1)
/* B15EF4 8009ED54 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15EF8 8009ED58 240F0010 */  li    $t7, 16
/* B15EFC 8009ED5C 24180010 */  li    $t8, 16
/* B15F00 8009ED60 244D0008 */  addiu $t5, $v0, 8
/* B15F04 8009ED64 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B15F08 8009ED68 AC4E0000 */  sw    $t6, ($v0)
/* B15F0C 8009ED6C 8E240000 */  lw    $a0, ($s1)
/* B15F10 8009ED70 8FA70048 */  lw    $a3, 0x48($sp)
/* B15F14 8009ED74 240A0001 */  li    $t2, 1
/* B15F18 8009ED78 24190010 */  li    $t9, 16
/* B15F1C 8009ED7C 240B0010 */  li    $t3, 16
/* B15F20 8009ED80 30E7003F */  andi  $a3, $a3, 0x3f
/* B15F24 8009ED84 AFA70020 */  sw    $a3, 0x20($sp)
/* B15F28 8009ED88 AFAB0028 */  sw    $t3, 0x28($sp)
/* B15F2C 8009ED8C AFB90024 */  sw    $t9, 0x24($sp)
/* B15F30 8009ED90 AFAA0018 */  sw    $t2, 0x18($sp)
/* B15F34 8009ED94 AFA0001C */  sw    $zero, 0x1c($sp)
/* B15F38 8009ED98 AFB80014 */  sw    $t8, 0x14($sp)
/* B15F3C 8009ED9C AFAF0010 */  sw    $t7, 0x10($sp)
/* B15F40 8009EDA0 00002825 */  move  $a1, $zero
/* B15F44 8009EDA4 00003025 */  move  $a2, $zero
/* B15F48 8009EDA8 0C0253D0 */  jal   func_80094F40
/* B15F4C 8009EDAC AFA20060 */   sw    $v0, 0x60($sp)
/* B15F50 8009EDB0 8FA30060 */  lw    $v1, 0x60($sp)
/* B15F54 8009EDB4 3C04E700 */  lui   $a0, 0xe700
/* B15F58 8009EDB8 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B15F5C 8009EDBC AC620004 */  sw    $v0, 4($v1)
/* B15F60 8009EDC0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B15F64 8009EDC4 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B15F68 8009EDC8 3C05FB00 */  lui   $a1, 0xfb00
/* B15F6C 8009EDCC 244C0008 */  addiu $t4, $v0, 8
/* B15F70 8009EDD0 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B15F74 8009EDD4 AC400004 */  sw    $zero, 4($v0)
/* B15F78 8009EDD8 AC440000 */  sw    $a0, ($v0)
/* B15F7C 8009EDDC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B15F80 8009EDE0 24071C5C */  li    $a3, 7260
/* B15F84 8009EDE4 244D0008 */  addiu $t5, $v0, 8
/* B15F88 8009EDE8 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B15F8C 8009EDEC AC460004 */  sw    $a2, 4($v0)
/* B15F90 8009EDF0 AC450000 */  sw    $a1, ($v0)
/* B15F94 8009EDF4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15F98 8009EDF8 244E0008 */  addiu $t6, $v0, 8
/* B15F9C 8009EDFC AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B15FA0 8009EE00 AC400004 */  sw    $zero, 4($v0)
/* B15FA4 8009EE04 AC440000 */  sw    $a0, ($v0)
/* B15FA8 8009EE08 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B15FAC 8009EE0C 27A40078 */  addiu $a0, $sp, 0x78
/* B15FB0 8009EE10 244F0008 */  addiu $t7, $v0, 8
/* B15FB4 8009EE14 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B15FB8 8009EE18 AC460004 */  sw    $a2, 4($v0)
/* B15FBC 8009EE1C 3C068014 */  lui   $a2, %hi(D_8013FCBC) # $a2, 0x8014
/* B15FC0 8009EE20 AC450000 */  sw    $a1, ($v0)
/* B15FC4 8009EE24 8E250000 */  lw    $a1, ($s1)
/* B15FC8 8009EE28 0C031AD5 */  jal   func_800C6B54
/* B15FCC 8009EE2C 24C6FCBC */   addiu $a2, %lo(D_8013FCBC) # addiu $a2, $a2, -0x344
/* B15FD0 8009EE30 8FBF003C */  lw    $ra, 0x3c($sp)
/* B15FD4 8009EE34 8FB00034 */  lw    $s0, 0x34($sp)
/* B15FD8 8009EE38 8FB10038 */  lw    $s1, 0x38($sp)
/* B15FDC 8009EE3C 03E00008 */  jr    $ra
/* B15FE0 8009EE40 27BD0090 */   addiu $sp, $sp, 0x90

/* B15FE4 8009EE44 27BDFF80 */  addiu $sp, $sp, -0x80
/* B15FE8 8009EE48 AFBF003C */  sw    $ra, 0x3c($sp)
/* B15FEC 8009EE4C AFB00038 */  sw    $s0, 0x38($sp)
/* B15FF0 8009EE50 AFA40080 */  sw    $a0, 0x80($sp)
/* B15FF4 8009EE54 8C850000 */  lw    $a1, ($a0)
/* B15FF8 8009EE58 3C068014 */  lui   $a2, %hi(D_8013FCD0) # $a2, 0x8014
/* B15FFC 8009EE5C 24C6FCD0 */  addiu $a2, %lo(D_8013FCD0) # addiu $a2, $a2, -0x330
/* B16000 8009EE60 27A40068 */  addiu $a0, $sp, 0x68
/* B16004 8009EE64 24071C6A */  li    $a3, 7274
/* B16008 8009EE68 0C031AB1 */  jal   func_800C6AC4
/* B1600C 8009EE6C AFA50078 */   sw    $a1, 0x78($sp)
/* B16010 8009EE70 8FA80078 */  lw    $t0, 0x78($sp)
/* B16014 8009EE74 8FAB0080 */  lw    $t3, 0x80($sp)
/* B16018 8009EE78 3C010001 */  lui   $at, 1
/* B1601C 8009EE7C 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B16020 8009EE80 01614821 */  addu  $t1, $t3, $at
/* B16024 8009EE84 8D2A1DE4 */  lw    $t2, 0x1de4($t1)
/* B16028 8009EE88 244F0008 */  addiu $t7, $v0, 8
/* B1602C 8009EE8C 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B16030 8009EE90 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B16034 8009EE94 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B16038 8009EE98 AC580000 */  sw    $t8, ($v0)
/* B1603C 8009EE9C 8D640000 */  lw    $a0, ($t3)
/* B16040 8009EEA0 240F0010 */  li    $t7, 16
/* B16044 8009EEA4 24190020 */  li    $t9, 32
/* B16048 8009EEA8 240C0010 */  li    $t4, 16
/* B1604C 8009EEAC 240D0001 */  li    $t5, 1
/* B16050 8009EEB0 240E0020 */  li    $t6, 32
/* B16054 8009EEB4 3150007F */  andi  $s0, $t2, 0x7f
/* B16058 8009EEB8 02003025 */  move  $a2, $s0
/* B1605C 8009EEBC AFB0001C */  sw    $s0, 0x1c($sp)
/* B16060 8009EEC0 AFAE0024 */  sw    $t6, 0x24($sp)
/* B16064 8009EEC4 AFAD0018 */  sw    $t5, 0x18($sp)
/* B16068 8009EEC8 AFAC0014 */  sw    $t4, 0x14($sp)
/* B1606C 8009EECC AFB90010 */  sw    $t9, 0x10($sp)
/* B16070 8009EED0 AFAF0028 */  sw    $t7, 0x28($sp)
/* B16074 8009EED4 AFA9004C */  sw    $t1, 0x4c($sp)
/* B16078 8009EED8 AFA00020 */  sw    $zero, 0x20($sp)
/* B1607C 8009EEDC 00002825 */  move  $a1, $zero
/* B16080 8009EEE0 00003825 */  move  $a3, $zero
/* B16084 8009EEE4 AFA80078 */  sw    $t0, 0x78($sp)
/* B16088 8009EEE8 0C0253D0 */  jal   func_80094F40
/* B1608C 8009EEEC AFA20064 */   sw    $v0, 0x64($sp)
/* B16090 8009EEF0 8FA30064 */  lw    $v1, 0x64($sp)
/* B16094 8009EEF4 8FA80078 */  lw    $t0, 0x78($sp)
/* B16098 8009EEF8 8FA9004C */  lw    $t1, 0x4c($sp)
/* B1609C 8009EEFC AC620004 */  sw    $v0, 4($v1)
/* B160A0 8009EF00 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B160A4 8009EF04 3C19DB06 */  lui   $t9, (0xDB060024 >> 16) # lui $t9, 0xdb06
/* B160A8 8009EF08 37390024 */  ori   $t9, (0xDB060024 & 0xFFFF) # ori $t9, $t9, 0x24
/* B160AC 8009EF0C 24580008 */  addiu $t8, $v0, 8
/* B160B0 8009EF10 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B160B4 8009EF14 AC590000 */  sw    $t9, ($v0)
/* B160B8 8009EF18 8FAC0080 */  lw    $t4, 0x80($sp)
/* B160BC 8009EF1C 24190020 */  li    $t9, 32
/* B160C0 8009EF20 24180001 */  li    $t8, 1
/* B160C4 8009EF24 8D840000 */  lw    $a0, ($t4)
/* B160C8 8009EF28 240C0020 */  li    $t4, 32
/* B160CC 8009EF2C 240D007F */  li    $t5, 127
/* B160D0 8009EF30 240E0020 */  li    $t6, 32
/* B160D4 8009EF34 240F0020 */  li    $t7, 32
/* B160D8 8009EF38 AFAF0014 */  sw    $t7, 0x14($sp)
/* B160DC 8009EF3C AFAE0010 */  sw    $t6, 0x10($sp)
/* B160E0 8009EF40 01B03023 */  subu  $a2, $t5, $s0
/* B160E4 8009EF44 AFAC0028 */  sw    $t4, 0x28($sp)
/* B160E8 8009EF48 AFB90024 */  sw    $t9, 0x24($sp)
/* B160EC 8009EF4C AFB00020 */  sw    $s0, 0x20($sp)
/* B160F0 8009EF50 AFB0001C */  sw    $s0, 0x1c($sp)
/* B160F4 8009EF54 AFB80018 */  sw    $t8, 0x18($sp)
/* B160F8 8009EF58 00002825 */  move  $a1, $zero
/* B160FC 8009EF5C 02003825 */  move  $a3, $s0
/* B16100 8009EF60 AFA80078 */  sw    $t0, 0x78($sp)
/* B16104 8009EF64 AFA9004C */  sw    $t1, 0x4c($sp)
/* B16108 8009EF68 0C0253D0 */  jal   func_80094F40
/* B1610C 8009EF6C AFA20060 */   sw    $v0, 0x60($sp)
/* B16110 8009EF70 8FA30060 */  lw    $v1, 0x60($sp)
/* B16114 8009EF74 8FA80078 */  lw    $t0, 0x78($sp)
/* B16118 8009EF78 8FA9004C */  lw    $t1, 0x4c($sp)
/* B1611C 8009EF7C AC620004 */  sw    $v0, 4($v1)
/* B16120 8009EF80 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B16124 8009EF84 3C04E700 */  lui   $a0, 0xe700
/* B16128 8009EF88 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B1612C 8009EF8C 244D0008 */  addiu $t5, $v0, 8
/* B16130 8009EF90 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B16134 8009EF94 AC400004 */  sw    $zero, 4($v0)
/* B16138 8009EF98 AC440000 */  sw    $a0, ($v0)
/* B1613C 8009EF9C 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B16140 8009EFA0 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B16144 8009EFA4 3C05FB00 */  lui   $a1, 0xfb00
/* B16148 8009EFA8 244E0008 */  addiu $t6, $v0, 8
/* B1614C 8009EFAC AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B16150 8009EFB0 AC460004 */  sw    $a2, 4($v0)
/* B16154 8009EFB4 AC450000 */  sw    $a1, ($v0)
/* B16158 8009EFB8 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B1615C 8009EFBC 3C0C8012 */  lui   $t4, %hi(D_80127493) # $t4, 0x8012
/* B16160 8009EFC0 246F0008 */  addiu $t7, $v1, 8
/* B16164 8009EFC4 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B16168 8009EFC8 AC600004 */  sw    $zero, 4($v1)
/* B1616C 8009EFCC AC640000 */  sw    $a0, ($v1)
/* B16170 8009EFD0 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B16174 8009EFD4 24780008 */  addiu $t8, $v1, 8
/* B16178 8009EFD8 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B1617C 8009EFDC AC660004 */  sw    $a2, 4($v1)
/* B16180 8009EFE0 AC650000 */  sw    $a1, ($v1)
/* B16184 8009EFE4 85391D30 */  lh    $t9, 0x1d30($t1)
/* B16188 8009EFE8 57200017 */  bnezl $t9, .L8009F048
/* B1618C 8009EFEC 8FB90080 */   lw    $t9, 0x80($sp)
/* B16190 8009EFF0 918C7493 */  lbu   $t4, %lo(D_80127493)($t4)
/* B16194 8009EFF4 3C0D8016 */  lui   $t5, 0x8016
/* B16198 8009EFF8 2401002F */  li    $at, 47
/* B1619C 8009EFFC 01AC6821 */  addu  $t5, $t5, $t4
/* B161A0 8009F000 91ADE6D4 */  lbu   $t5, -0x192c($t5)
/* B161A4 8009F004 55A10010 */  bnel  $t5, $at, .L8009F048
/* B161A8 8009F008 8FB90080 */   lw    $t9, 0x80($sp)
/* B161AC 8009F00C 85221D32 */  lh    $v0, 0x1d32($t1)
/* B161B0 8009F010 24010032 */  li    $at, 50
/* B161B4 8009F014 8FAE0080 */  lw    $t6, 0x80($sp)
/* B161B8 8009F018 14410008 */  bne   $v0, $at, .L8009F03C
/* B161BC 8009F01C 24052813 */   li    $a1, 10259
/* B161C0 8009F020 8DC41C44 */  lw    $a0, 0x1c44($t6)
/* B161C4 8009F024 0C00BDF7 */  jal   func_8002F7DC
/* B161C8 8009F028 AFA9004C */   sw    $t1, 0x4c($sp)
/* B161CC 8009F02C 8FA9004C */  lw    $t1, 0x4c($sp)
/* B161D0 8009F030 240F0001 */  li    $t7, 1
/* B161D4 8009F034 A52F1D30 */  sh    $t7, 0x1d30($t1)
/* B161D8 8009F038 85221D32 */  lh    $v0, 0x1d32($t1)
.L8009F03C:
/* B161DC 8009F03C 24580001 */  addiu $t8, $v0, 1
/* B161E0 8009F040 A5381D32 */  sh    $t8, 0x1d32($t1)
/* B161E4 8009F044 8FB90080 */  lw    $t9, 0x80($sp)
.L8009F048:
/* B161E8 8009F048 3C068014 */  lui   $a2, %hi(D_8013FCE4) # $a2, 0x8014
/* B161EC 8009F04C 24C6FCE4 */  addiu $a2, %lo(D_8013FCE4) # addiu $a2, $a2, -0x31c
/* B161F0 8009F050 27A40068 */  addiu $a0, $sp, 0x68
/* B161F4 8009F054 24071C8D */  li    $a3, 7309
/* B161F8 8009F058 0C031AD5 */  jal   func_800C6B54
/* B161FC 8009F05C 8F250000 */   lw    $a1, ($t9)
/* B16200 8009F060 8FBF003C */  lw    $ra, 0x3c($sp)
/* B16204 8009F064 8FB00038 */  lw    $s0, 0x38($sp)
/* B16208 8009F068 27BD0080 */  addiu $sp, $sp, 0x80
/* B1620C 8009F06C 03E00008 */  jr    $ra
/* B16210 8009F070 00000000 */   nop   

/* B16214 8009F074 27BDFF98 */  addiu $sp, $sp, -0x68
/* B16218 8009F078 AFBF0034 */  sw    $ra, 0x34($sp)
/* B1621C 8009F07C AFA40068 */  sw    $a0, 0x68($sp)
/* B16220 8009F080 8C850000 */  lw    $a1, ($a0)
/* B16224 8009F084 3C068014 */  lui   $a2, %hi(D_8013FCF8) # $a2, 0x8014
/* B16228 8009F088 24C6FCF8 */  addiu $a2, %lo(D_8013FCF8) # addiu $a2, $a2, -0x308
/* B1622C 8009F08C 27A40050 */  addiu $a0, $sp, 0x50
/* B16230 8009F090 24071C9B */  li    $a3, 7323
/* B16234 8009F094 0C031AB1 */  jal   func_800C6AC4
/* B16238 8009F098 AFA50060 */   sw    $a1, 0x60($sp)
/* B1623C 8009F09C 8FA80060 */  lw    $t0, 0x60($sp)
/* B16240 8009F0A0 8FAA0068 */  lw    $t2, 0x68($sp)
/* B16244 8009F0A4 3C090001 */  lui   $t1, 1
/* B16248 8009F0A8 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B1624C 8009F0AC 012A4821 */  addu  $t1, $t1, $t2
/* B16250 8009F0B0 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B16254 8009F0B4 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B16258 8009F0B8 244F0008 */  addiu $t7, $v0, 8
/* B1625C 8009F0BC 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B16260 8009F0C0 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B16264 8009F0C4 AC580000 */  sw    $t8, ($v0)
/* B16268 8009F0C8 8D440000 */  lw    $a0, ($t2)
/* B1626C 8009F0CC 240E007F */  li    $t6, 127
/* B16270 8009F0D0 312D007F */  andi  $t5, $t1, 0x7f
/* B16274 8009F0D4 01CD7823 */  subu  $t7, $t6, $t5
/* B16278 8009F0D8 24180020 */  li    $t8, 32
/* B1627C 8009F0DC 24190020 */  li    $t9, 32
/* B16280 8009F0E0 240B0020 */  li    $t3, 32
/* B16284 8009F0E4 240C0001 */  li    $t4, 1
/* B16288 8009F0E8 AFAC0018 */  sw    $t4, 0x18($sp)
/* B1628C 8009F0EC AFAB0014 */  sw    $t3, 0x14($sp)
/* B16290 8009F0F0 AFB90010 */  sw    $t9, 0x10($sp)
/* B16294 8009F0F4 AFB90028 */  sw    $t9, 0x28($sp)
/* B16298 8009F0F8 AFB80024 */  sw    $t8, 0x24($sp)
/* B1629C 8009F0FC AFAF0020 */  sw    $t7, 0x20($sp)
/* B162A0 8009F100 AFA0001C */  sw    $zero, 0x1c($sp)
/* B162A4 8009F104 00002825 */  move  $a1, $zero
/* B162A8 8009F108 00003025 */  move  $a2, $zero
/* B162AC 8009F10C 00003825 */  move  $a3, $zero
/* B162B0 8009F110 AFA80060 */  sw    $t0, 0x60($sp)
/* B162B4 8009F114 0C0253D0 */  jal   func_80094F40
/* B162B8 8009F118 AFA2004C */   sw    $v0, 0x4c($sp)
/* B162BC 8009F11C 8FA3004C */  lw    $v1, 0x4c($sp)
/* B162C0 8009F120 8FA80060 */  lw    $t0, 0x60($sp)
/* B162C4 8009F124 3C04E700 */  lui   $a0, 0xe700
/* B162C8 8009F128 AC620004 */  sw    $v0, 4($v1)
/* B162CC 8009F12C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B162D0 8009F130 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B162D4 8009F134 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B162D8 8009F138 244B0008 */  addiu $t3, $v0, 8
/* B162DC 8009F13C AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B162E0 8009F140 AC400004 */  sw    $zero, 4($v0)
/* B162E4 8009F144 AC440000 */  sw    $a0, ($v0)
/* B162E8 8009F148 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B162EC 8009F14C 3C05FB00 */  lui   $a1, 0xfb00
/* B162F0 8009F150 24071CAB */  li    $a3, 7339
/* B162F4 8009F154 244C0008 */  addiu $t4, $v0, 8
/* B162F8 8009F158 AD0C02C0 */  sw    $t4, 0x2c0($t0)
/* B162FC 8009F15C AC460004 */  sw    $a2, 4($v0)
/* B16300 8009F160 AC450000 */  sw    $a1, ($v0)
/* B16304 8009F164 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B16308 8009F168 246E0008 */  addiu $t6, $v1, 8
/* B1630C 8009F16C AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B16310 8009F170 AC600004 */  sw    $zero, 4($v1)
/* B16314 8009F174 AC640000 */  sw    $a0, ($v1)
/* B16318 8009F178 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B1631C 8009F17C 27A40050 */  addiu $a0, $sp, 0x50
/* B16320 8009F180 246D0008 */  addiu $t5, $v1, 8
/* B16324 8009F184 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B16328 8009F188 AC660004 */  sw    $a2, 4($v1)
/* B1632C 8009F18C AC650000 */  sw    $a1, ($v1)
/* B16330 8009F190 8FAF0068 */  lw    $t7, 0x68($sp)
/* B16334 8009F194 3C068014 */  lui   $a2, %hi(D_8013FD0C) # $a2, 0x8014
/* B16338 8009F198 24C6FD0C */  addiu $a2, %lo(D_8013FD0C) # addiu $a2, $a2, -0x2f4
/* B1633C 8009F19C 0C031AD5 */  jal   func_800C6B54
/* B16340 8009F1A0 8DE50000 */   lw    $a1, ($t7)
/* B16344 8009F1A4 8FBF0034 */  lw    $ra, 0x34($sp)
/* B16348 8009F1A8 27BD0068 */  addiu $sp, $sp, 0x68
/* B1634C 8009F1AC 03E00008 */  jr    $ra
/* B16350 8009F1B0 00000000 */   nop   

/* B16354 8009F1B4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B16358 8009F1B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1635C 8009F1BC AFA40040 */  sw    $a0, 0x40($sp)
/* B16360 8009F1C0 8C850000 */  lw    $a1, ($a0)
/* B16364 8009F1C4 3C068014 */  lui   $a2, %hi(D_8013FD20) # $a2, 0x8014
/* B16368 8009F1C8 24C6FD20 */  addiu $a2, %lo(D_8013FD20) # addiu $a2, $a2, -0x2e0
/* B1636C 8009F1CC 27A4002C */  addiu $a0, $sp, 0x2c
/* B16370 8009F1D0 24071CC3 */  li    $a3, 7363
/* B16374 8009F1D4 0C031AB1 */  jal   func_800C6AC4
/* B16378 8009F1D8 AFA5003C */   sw    $a1, 0x3c($sp)
/* B1637C 8009F1DC 8FA8003C */  lw    $t0, 0x3c($sp)
/* B16380 8009F1E0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B16384 8009F1E4 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B16388 8009F1E8 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B1638C 8009F1EC 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B16390 8009F1F0 3C048013 */  lui   $a0, 0x8013
/* B16394 8009F1F4 246F0008 */  addiu $t7, $v1, 8
/* B16398 8009F1F8 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B1639C 8009F1FC AC780000 */  sw    $t8, ($v1)
/* B163A0 8009F200 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B163A4 8009F204 3C0E8016 */  lui   $t6, 0x8016
/* B163A8 8009F208 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B163AC 8009F20C 00194880 */  sll   $t1, $t9, 2
/* B163B0 8009F210 00892021 */  addu  $a0, $a0, $t1
/* B163B4 8009F214 8C84A380 */  lw    $a0, -0x5c80($a0)
/* B163B8 8009F218 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B163BC 8009F21C 3C068014 */  lui   $a2, %hi(D_8013FD34) # $a2, 0x8014
/* B163C0 8009F220 00045900 */  sll   $t3, $a0, 4
/* B163C4 8009F224 000B6702 */  srl   $t4, $t3, 0x1c
/* B163C8 8009F228 000C6880 */  sll   $t5, $t4, 2
/* B163CC 8009F22C 01CD7021 */  addu  $t6, $t6, $t5
/* B163D0 8009F230 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B163D4 8009F234 00815024 */  and   $t2, $a0, $at
/* B163D8 8009F238 3C018000 */  lui   $at, 0x8000
/* B163DC 8009F23C 014E7821 */  addu  $t7, $t2, $t6
/* B163E0 8009F240 01E1C021 */  addu  $t8, $t7, $at
/* B163E4 8009F244 AC780004 */  sw    $t8, 4($v1)
/* B163E8 8009F248 8FB90040 */  lw    $t9, 0x40($sp)
/* B163EC 8009F24C 27A4002C */  addiu $a0, $sp, 0x2c
/* B163F0 8009F250 24C6FD34 */  addiu $a2, %lo(D_8013FD34) # addiu $a2, $a2, -0x2cc
/* B163F4 8009F254 24071CCB */  li    $a3, 7371
/* B163F8 8009F258 0C031AD5 */  jal   func_800C6B54
/* B163FC 8009F25C 8F250000 */   lw    $a1, ($t9)
/* B16400 8009F260 8FBF0014 */  lw    $ra, 0x14($sp)
/* B16404 8009F264 27BD0040 */  addiu $sp, $sp, 0x40
/* B16408 8009F268 03E00008 */  jr    $ra
/* B1640C 8009F26C 00000000 */   nop   

/* B16410 8009F270 27BDFF88 */  addiu $sp, $sp, -0x78
/* B16414 8009F274 AFBF003C */  sw    $ra, 0x3c($sp)
/* B16418 8009F278 AFB10038 */  sw    $s1, 0x38($sp)
/* B1641C 8009F27C AFB00034 */  sw    $s0, 0x34($sp)
/* B16420 8009F280 8C850000 */  lw    $a1, ($a0)
/* B16424 8009F284 00808825 */  move  $s1, $a0
/* B16428 8009F288 3C068014 */  lui   $a2, %hi(D_8013FD48) # $a2, 0x8014
/* B1642C 8009F28C 24C6FD48 */  addiu $a2, %lo(D_8013FD48) # addiu $a2, $a2, -0x2b8
/* B16430 8009F290 27A40060 */  addiu $a0, $sp, 0x60
/* B16434 8009F294 24071CD9 */  li    $a3, 7385
/* B16438 8009F298 0C031AB1 */  jal   func_800C6AC4
/* B1643C 8009F29C 00A08025 */   move  $s0, $a1
/* B16440 8009F2A0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B16444 8009F2A4 3C080001 */  lui   $t0, 1
/* B16448 8009F2A8 01114021 */  addu  $t0, $t0, $s1
/* B1644C 8009F2AC 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B16450 8009F2B0 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B16454 8009F2B4 244E0008 */  addiu $t6, $v0, 8
/* B16458 8009F2B8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B1645C 8009F2BC 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B16460 8009F2C0 AC4F0000 */  sw    $t7, ($v0)
/* B16464 8009F2C4 8E240000 */  lw    $a0, ($s1)
/* B16468 8009F2C8 24180020 */  li    $t8, 32
/* B1646C 8009F2CC 24190020 */  li    $t9, 32
/* B16470 8009F2D0 24090001 */  li    $t1, 1
/* B16474 8009F2D4 240A0020 */  li    $t2, 32
/* B16478 8009F2D8 240B0020 */  li    $t3, 32
/* B1647C 8009F2DC 3107007F */  andi  $a3, $t0, 0x7f
/* B16480 8009F2E0 AFA70020 */  sw    $a3, 0x20($sp)
/* B16484 8009F2E4 AFA70044 */  sw    $a3, 0x44($sp)
/* B16488 8009F2E8 AFAB0028 */  sw    $t3, 0x28($sp)
/* B1648C 8009F2EC AFAA0024 */  sw    $t2, 0x24($sp)
/* B16490 8009F2F0 AFA90018 */  sw    $t1, 0x18($sp)
/* B16494 8009F2F4 AFB90014 */  sw    $t9, 0x14($sp)
/* B16498 8009F2F8 AFB80010 */  sw    $t8, 0x10($sp)
/* B1649C 8009F2FC AFA0001C */  sw    $zero, 0x1c($sp)
/* B164A0 8009F300 00002825 */  move  $a1, $zero
/* B164A4 8009F304 00003025 */  move  $a2, $zero
/* B164A8 8009F308 0C0253D0 */  jal   func_80094F40
/* B164AC 8009F30C AFA2005C */   sw    $v0, 0x5c($sp)
/* B164B0 8009F310 8FA3005C */  lw    $v1, 0x5c($sp)
/* B164B4 8009F314 8FA70044 */  lw    $a3, 0x44($sp)
/* B164B8 8009F318 3C0DDB06 */  lui   $t5, (0xDB060024 >> 16) # lui $t5, 0xdb06
/* B164BC 8009F31C AC620004 */  sw    $v0, 4($v1)
/* B164C0 8009F320 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B164C4 8009F324 35AD0024 */  ori   $t5, (0xDB060024 & 0xFFFF) # ori $t5, $t5, 0x24
/* B164C8 8009F328 240E0020 */  li    $t6, 32
/* B164CC 8009F32C 244C0008 */  addiu $t4, $v0, 8
/* B164D0 8009F330 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B164D4 8009F334 AC4D0000 */  sw    $t5, ($v0)
/* B164D8 8009F338 8E240000 */  lw    $a0, ($s1)
/* B164DC 8009F33C 240F0020 */  li    $t7, 32
/* B164E0 8009F340 24180001 */  li    $t8, 1
/* B164E4 8009F344 24190020 */  li    $t9, 32
/* B164E8 8009F348 24090020 */  li    $t1, 32
/* B164EC 8009F34C AFA90028 */  sw    $t1, 0x28($sp)
/* B164F0 8009F350 AFB90024 */  sw    $t9, 0x24($sp)
/* B164F4 8009F354 AFB80018 */  sw    $t8, 0x18($sp)
/* B164F8 8009F358 AFAF0014 */  sw    $t7, 0x14($sp)
/* B164FC 8009F35C AFA0001C */  sw    $zero, 0x1c($sp)
/* B16500 8009F360 AFAE0010 */  sw    $t6, 0x10($sp)
/* B16504 8009F364 00002825 */  move  $a1, $zero
/* B16508 8009F368 00003025 */  move  $a2, $zero
/* B1650C 8009F36C AFA70020 */  sw    $a3, 0x20($sp)
/* B16510 8009F370 0C0253D0 */  jal   func_80094F40
/* B16514 8009F374 AFA20058 */   sw    $v0, 0x58($sp)
/* B16518 8009F378 8FA30058 */  lw    $v1, 0x58($sp)
/* B1651C 8009F37C 3C04E700 */  lui   $a0, 0xe700
/* B16520 8009F380 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B16524 8009F384 AC620004 */  sw    $v0, 4($v1)
/* B16528 8009F388 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1652C 8009F38C 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B16530 8009F390 3C05FB00 */  lui   $a1, 0xfb00
/* B16534 8009F394 244A0008 */  addiu $t2, $v0, 8
/* B16538 8009F398 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B1653C 8009F39C AC400004 */  sw    $zero, 4($v0)
/* B16540 8009F3A0 AC440000 */  sw    $a0, ($v0)
/* B16544 8009F3A4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B16548 8009F3A8 24071CF1 */  li    $a3, 7409
/* B1654C 8009F3AC 244B0008 */  addiu $t3, $v0, 8
/* B16550 8009F3B0 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B16554 8009F3B4 AC460004 */  sw    $a2, 4($v0)
/* B16558 8009F3B8 AC450000 */  sw    $a1, ($v0)
/* B1655C 8009F3BC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B16560 8009F3C0 244C0008 */  addiu $t4, $v0, 8
/* B16564 8009F3C4 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B16568 8009F3C8 AC400004 */  sw    $zero, 4($v0)
/* B1656C 8009F3CC AC440000 */  sw    $a0, ($v0)
/* B16570 8009F3D0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B16574 8009F3D4 27A40060 */  addiu $a0, $sp, 0x60
/* B16578 8009F3D8 244D0008 */  addiu $t5, $v0, 8
/* B1657C 8009F3DC AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B16580 8009F3E0 AC460004 */  sw    $a2, 4($v0)
/* B16584 8009F3E4 3C068014 */  lui   $a2, %hi(D_8013FD5C) # $a2, 0x8014
/* B16588 8009F3E8 AC450000 */  sw    $a1, ($v0)
/* B1658C 8009F3EC 8E250000 */  lw    $a1, ($s1)
/* B16590 8009F3F0 0C031AD5 */  jal   func_800C6B54
/* B16594 8009F3F4 24C6FD5C */   addiu $a2, %lo(D_8013FD5C) # addiu $a2, $a2, -0x2a4
/* B16598 8009F3F8 8FBF003C */  lw    $ra, 0x3c($sp)
/* B1659C 8009F3FC 8FB00034 */  lw    $s0, 0x34($sp)
/* B165A0 8009F400 8FB10038 */  lw    $s1, 0x38($sp)
/* B165A4 8009F404 03E00008 */  jr    $ra
/* B165A8 8009F408 27BD0078 */   addiu $sp, $sp, 0x78

/* B165AC 8009F40C 27BDFF80 */  addiu $sp, $sp, -0x80
/* B165B0 8009F410 AFBF003C */  sw    $ra, 0x3c($sp)
/* B165B4 8009F414 AFB10038 */  sw    $s1, 0x38($sp)
/* B165B8 8009F418 AFB00034 */  sw    $s0, 0x34($sp)
/* B165BC 8009F41C 8C850000 */  lw    $a1, ($a0)
/* B165C0 8009F420 00808825 */  move  $s1, $a0
/* B165C4 8009F424 3C068014 */  lui   $a2, %hi(D_8013FD70) # $a2, 0x8014
/* B165C8 8009F428 24C6FD70 */  addiu $a2, %lo(D_8013FD70) # addiu $a2, $a2, -0x290
/* B165CC 8009F42C 27A40068 */  addiu $a0, $sp, 0x68
/* B165D0 8009F430 24071CFF */  li    $a3, 7423
/* B165D4 8009F434 0C031AB1 */  jal   func_800C6AC4
/* B165D8 8009F438 00A08025 */   move  $s0, $a1
/* B165DC 8009F43C 3C030001 */  lui   $v1, 1
/* B165E0 8009F440 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B165E4 8009F444 00711821 */  addu  $v1, $v1, $s1
/* B165E8 8009F448 8C631DE4 */  lw    $v1, 0x1de4($v1)
/* B165EC 8009F44C 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B165F0 8009F450 244E0008 */  addiu $t6, $v0, 8
/* B165F4 8009F454 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B165F8 8009F458 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B165FC 8009F45C AC4F0000 */  sw    $t7, ($v0)
/* B16600 8009F460 8E240000 */  lw    $a0, ($s1)
/* B16604 8009F464 00033880 */  sll   $a3, $v1, 2
/* B16608 8009F468 00E33821 */  addu  $a3, $a3, $v1
/* B1660C 8009F46C 00073840 */  sll   $a3, $a3, 1
/* B16610 8009F470 2418007F */  li    $t8, 127
/* B16614 8009F474 3068007F */  andi  $t0, $v1, 0x7f
/* B16618 8009F478 03083023 */  subu  $a2, $t8, $t0
/* B1661C 8009F47C 30E7007F */  andi  $a3, $a3, 0x7f
/* B16620 8009F480 24190020 */  li    $t9, 32
/* B16624 8009F484 240A0020 */  li    $t2, 32
/* B16628 8009F488 240B0001 */  li    $t3, 1
/* B1662C 8009F48C 240C0020 */  li    $t4, 32
/* B16630 8009F490 240D0020 */  li    $t5, 32
/* B16634 8009F494 AFAD0028 */  sw    $t5, 0x28($sp)
/* B16638 8009F498 AFAC0024 */  sw    $t4, 0x24($sp)
/* B1663C 8009F49C AFAB0018 */  sw    $t3, 0x18($sp)
/* B16640 8009F4A0 AFAA0014 */  sw    $t2, 0x14($sp)
/* B16644 8009F4A4 AFB90010 */  sw    $t9, 0x10($sp)
/* B16648 8009F4A8 AFA70020 */  sw    $a3, 0x20($sp)
/* B1664C 8009F4AC AFA60048 */  sw    $a2, 0x48($sp)
/* B16650 8009F4B0 AFA8001C */  sw    $t0, 0x1c($sp)
/* B16654 8009F4B4 AFA8004C */  sw    $t0, 0x4c($sp)
/* B16658 8009F4B8 00002825 */  move  $a1, $zero
/* B1665C 8009F4BC AFA20064 */  sw    $v0, 0x64($sp)
/* B16660 8009F4C0 0C0253D0 */  jal   func_80094F40
/* B16664 8009F4C4 AFA3007C */   sw    $v1, 0x7c($sp)
/* B16668 8009F4C8 8FA90064 */  lw    $t1, 0x64($sp)
/* B1666C 8009F4CC 8FA3007C */  lw    $v1, 0x7c($sp)
/* B16670 8009F4D0 8FA8004C */  lw    $t0, 0x4c($sp)
/* B16674 8009F4D4 8FA60048 */  lw    $a2, 0x48($sp)
/* B16678 8009F4D8 AD220004 */  sw    $v0, 4($t1)
/* B1667C 8009F4DC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B16680 8009F4E0 3C0FDB06 */  lui   $t7, (0xDB060024 >> 16) # lui $t7, 0xdb06
/* B16684 8009F4E4 35EF0024 */  ori   $t7, (0xDB060024 & 0xFFFF) # ori $t7, $t7, 0x24
/* B16688 8009F4E8 244E0008 */  addiu $t6, $v0, 8
/* B1668C 8009F4EC AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B16690 8009F4F0 AC4F0000 */  sw    $t7, ($v0)
/* B16694 8009F4F4 8E240000 */  lw    $a0, ($s1)
/* B16698 8009F4F8 00033880 */  sll   $a3, $v1, 2
/* B1669C 8009F4FC 00E33823 */  subu  $a3, $a3, $v1
/* B166A0 8009F500 30E7007F */  andi  $a3, $a3, 0x7f
/* B166A4 8009F504 24180020 */  li    $t8, 32
/* B166A8 8009F508 24190020 */  li    $t9, 32
/* B166AC 8009F50C 240A0001 */  li    $t2, 1
/* B166B0 8009F510 240B0020 */  li    $t3, 32
/* B166B4 8009F514 240C0020 */  li    $t4, 32
/* B166B8 8009F518 AFAC0028 */  sw    $t4, 0x28($sp)
/* B166BC 8009F51C AFAB0024 */  sw    $t3, 0x24($sp)
/* B166C0 8009F520 AFAA0018 */  sw    $t2, 0x18($sp)
/* B166C4 8009F524 AFB90014 */  sw    $t9, 0x14($sp)
/* B166C8 8009F528 AFB80010 */  sw    $t8, 0x10($sp)
/* B166CC 8009F52C AFA70020 */  sw    $a3, 0x20($sp)
/* B166D0 8009F530 00002825 */  move  $a1, $zero
/* B166D4 8009F534 AFA8001C */  sw    $t0, 0x1c($sp)
/* B166D8 8009F538 0C0253D0 */  jal   func_80094F40
/* B166DC 8009F53C AFA20060 */   sw    $v0, 0x60($sp)
/* B166E0 8009F540 8FA90060 */  lw    $t1, 0x60($sp)
/* B166E4 8009F544 3C04E700 */  lui   $a0, 0xe700
/* B166E8 8009F548 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B166EC 8009F54C AD220004 */  sw    $v0, 4($t1)
/* B166F0 8009F550 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B166F4 8009F554 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B166F8 8009F558 3C05FB00 */  lui   $a1, 0xfb00
/* B166FC 8009F55C 246D0008 */  addiu $t5, $v1, 8
/* B16700 8009F560 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B16704 8009F564 AC600004 */  sw    $zero, 4($v1)
/* B16708 8009F568 AC640000 */  sw    $a0, ($v1)
/* B1670C 8009F56C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B16710 8009F570 24071D13 */  li    $a3, 7443
/* B16714 8009F574 246E0008 */  addiu $t6, $v1, 8
/* B16718 8009F578 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B1671C 8009F57C AC660004 */  sw    $a2, 4($v1)
/* B16720 8009F580 AC650000 */  sw    $a1, ($v1)
/* B16724 8009F584 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B16728 8009F588 244F0008 */  addiu $t7, $v0, 8
/* B1672C 8009F58C AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B16730 8009F590 AC400004 */  sw    $zero, 4($v0)
/* B16734 8009F594 AC440000 */  sw    $a0, ($v0)
/* B16738 8009F598 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B1673C 8009F59C 27A40068 */  addiu $a0, $sp, 0x68
/* B16740 8009F5A0 24580008 */  addiu $t8, $v0, 8
/* B16744 8009F5A4 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B16748 8009F5A8 AC460004 */  sw    $a2, 4($v0)
/* B1674C 8009F5AC 3C068014 */  lui   $a2, %hi(D_8013FD84) # $a2, 0x8014
/* B16750 8009F5B0 AC450000 */  sw    $a1, ($v0)
/* B16754 8009F5B4 8E250000 */  lw    $a1, ($s1)
/* B16758 8009F5B8 0C031AD5 */  jal   func_800C6B54
/* B1675C 8009F5BC 24C6FD84 */   addiu $a2, %lo(D_8013FD84) # addiu $a2, $a2, -0x27c
/* B16760 8009F5C0 8FBF003C */  lw    $ra, 0x3c($sp)
/* B16764 8009F5C4 8FB00034 */  lw    $s0, 0x34($sp)
/* B16768 8009F5C8 8FB10038 */  lw    $s1, 0x38($sp)
/* B1676C 8009F5CC 03E00008 */  jr    $ra
/* B16770 8009F5D0 27BD0080 */   addiu $sp, $sp, 0x80

/* B16774 8009F5D4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B16778 8009F5D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1677C 8009F5DC AFA40058 */  sw    $a0, 0x58($sp)
/* B16780 8009F5E0 8C840000 */  lw    $a0, ($a0)
/* B16784 8009F5E4 0C031A73 */  jal   graph_alloc
/* B16788 8009F5E8 24050018 */   li    $a1, 24
/* B1678C 8009F5EC 8FAF0058 */  lw    $t7, 0x58($sp)
/* B16790 8009F5F0 3C068014 */  lui   $a2, %hi(D_8013FD98) # $a2, 0x8014
/* B16794 8009F5F4 24C6FD98 */  addiu $a2, %lo(D_8013FD98) # addiu $a2, $a2, -0x268
/* B16798 8009F5F8 8DE50000 */  lw    $a1, ($t7)
/* B1679C 8009F5FC AFA20054 */  sw    $v0, 0x54($sp)
/* B167A0 8009F600 27A40040 */  addiu $a0, $sp, 0x40
/* B167A4 8009F604 24071D25 */  li    $a3, 7461
/* B167A8 8009F608 0C031AB1 */  jal   func_800C6AC4
/* B167AC 8009F60C AFA50050 */   sw    $a1, 0x50($sp)
/* B167B0 8009F610 8FA90050 */  lw    $t1, 0x50($sp)
/* B167B4 8009F614 8FA80054 */  lw    $t0, 0x54($sp)
/* B167B8 8009F618 8FAA0058 */  lw    $t2, 0x58($sp)
/* B167BC 8009F61C 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B167C0 8009F620 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B167C4 8009F624 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B167C8 8009F628 24580008 */  addiu $t8, $v0, 8
/* B167CC 8009F62C AD3802D0 */  sw    $t8, 0x2d0($t1)
/* B167D0 8009F630 AC480004 */  sw    $t0, 4($v0)
/* B167D4 8009F634 AC590000 */  sw    $t9, ($v0)
/* B167D8 8009F638 3C028016 */  lui   $v0, %hi(D_80160004) # $v0, 0x8016
/* B167DC 8009F63C 9442E66C */  lhu   $v0, %lo(D_8015E66C)($v0)
/* B167E0 8009F640 28414AAC */  slti  $at, $v0, 0x4aac
/* B167E4 8009F644 14200007 */  bnez  $at, .L8009F664
/* B167E8 8009F648 3401C001 */   li    $at, 49153
/* B167EC 8009F64C 0041082A */  slt   $at, $v0, $at
/* B167F0 8009F650 10200004 */  beqz  $at, .L8009F664
/* B167F4 8009F654 3C0BDF00 */   lui   $t3, 0xdf00
/* B167F8 8009F658 AD0B0000 */  sw    $t3, ($t0)
/* B167FC 8009F65C 1000003B */  b     .L8009F74C
/* B16800 8009F660 AD000004 */   sw    $zero, 4($t0)
.L8009F664:
/* B16804 8009F664 3401C001 */  li    $at, 49153
/* B16808 8009F668 0041082A */  slt   $at, $v0, $at
/* B1680C 8009F66C 14200011 */  bnez  $at, .L8009F6B4
/* B16810 8009F670 3C0C0001 */   lui   $t4, 1
/* B16814 8009F674 018A6021 */  addu  $t4, $t4, $t2
/* B16818 8009F678 858C1D30 */  lh    $t4, 0x1d30($t4)
/* B1681C 8009F67C 240100FF */  li    $at, 255
/* B16820 8009F680 240500FF */  li    $a1, 255
/* B16824 8009F684 1181001C */  beq   $t4, $at, .L8009F6F8
/* B16828 8009F688 24060005 */   li    $a2, 5
/* B1682C 8009F68C 3C010001 */  lui   $at, (0x00011D30 >> 16) # lui $at, 1
/* B16830 8009F690 34211D30 */  ori   $at, (0x00011D30 & 0xFFFF) # ori $at, $at, 0x1d30
/* B16834 8009F694 01412021 */  addu  $a0, $t2, $at
/* B16838 8009F698 AFA80054 */  sw    $t0, 0x54($sp)
/* B1683C 8009F69C 0C01DE5F */  jal   func_8007797C
/* B16840 8009F6A0 AFA90050 */   sw    $t1, 0x50($sp)
/* B16844 8009F6A4 8FA80054 */  lw    $t0, 0x54($sp)
/* B16848 8009F6A8 8FA90050 */  lw    $t1, 0x50($sp)
/* B1684C 8009F6AC 10000012 */  b     .L8009F6F8
/* B16850 8009F6B0 8FAA0058 */   lw    $t2, 0x58($sp)
.L8009F6B4:
/* B16854 8009F6B4 28414000 */  slti  $at, $v0, 0x4000
/* B16858 8009F6B8 1420000F */  bnez  $at, .L8009F6F8
/* B1685C 8009F6BC 3C0D0001 */   lui   $t5, 1
/* B16860 8009F6C0 01AA6821 */  addu  $t5, $t5, $t2
/* B16864 8009F6C4 85AD1D30 */  lh    $t5, 0x1d30($t5)
/* B16868 8009F6C8 3C010001 */  lui   $at, (0x00011D30 >> 16) # lui $at, 1
/* B1686C 8009F6CC 34211D30 */  ori   $at, (0x00011D30 & 0xFFFF) # ori $at, $at, 0x1d30
/* B16870 8009F6D0 11A00009 */  beqz  $t5, .L8009F6F8
/* B16874 8009F6D4 01412021 */   addu  $a0, $t2, $at
/* B16878 8009F6D8 00002825 */  move  $a1, $zero
/* B1687C 8009F6DC 2406000A */  li    $a2, 10
/* B16880 8009F6E0 AFA80054 */  sw    $t0, 0x54($sp)
/* B16884 8009F6E4 0C01DE5F */  jal   func_8007797C
/* B16888 8009F6E8 AFA90050 */   sw    $t1, 0x50($sp)
/* B1688C 8009F6EC 8FA80054 */  lw    $t0, 0x54($sp)
/* B16890 8009F6F0 8FA90050 */  lw    $t1, 0x50($sp)
/* B16894 8009F6F4 8FAA0058 */  lw    $t2, 0x58($sp)
.L8009F6F8:
/* B16898 8009F6F8 3C010001 */  lui   $at, 1
/* B1689C 8009F6FC 01001025 */  move  $v0, $t0
/* B168A0 8009F700 3C0EFA00 */  lui   $t6, 0xfa00
/* B168A4 8009F704 AC4E0000 */  sw    $t6, ($v0)
/* B168A8 8009F708 01411821 */  addu  $v1, $t2, $at
/* B168AC 8009F70C 846F1D30 */  lh    $t7, 0x1d30($v1)
/* B168B0 8009F710 2401FF00 */  li    $at, -256
/* B168B4 8009F714 25080008 */  addiu $t0, $t0, 8
/* B168B8 8009F718 31F800FF */  andi  $t8, $t7, 0xff
/* B168BC 8009F71C 0301C825 */  or    $t9, $t8, $at
/* B168C0 8009F720 AC590004 */  sw    $t9, %lo(D_80160004)($v0)
/* B168C4 8009F724 01001025 */  move  $v0, $t0
/* B168C8 8009F728 3C0C0301 */  lui   $t4, %hi(D_0300AA48) # $t4, 0x301
/* B168CC 8009F72C 258CAA48 */  addiu $t4, %lo(D_0300AA48) # addiu $t4, $t4, -0x55b8
/* B168D0 8009F730 3C0BDE00 */  lui   $t3, 0xde00
/* B168D4 8009F734 AC4B0000 */  sw    $t3, ($v0)
/* B168D8 8009F738 AC4C0004 */  sw    $t4, %lo(D_80160004)($v0)
/* B168DC 8009F73C 3C0DDF00 */  lui   $t5, 0xdf00
/* B168E0 8009F740 25080008 */  addiu $t0, $t0, 8
/* B168E4 8009F744 AD0D0000 */  sw    $t5, ($t0)
/* B168E8 8009F748 AD000004 */  sw    $zero, 4($t0)
.L8009F74C:
/* B168EC 8009F74C 8D2302C0 */  lw    $v1, 0x2c0($t1)
/* B168F0 8009F750 3C04E700 */  lui   $a0, 0xe700
/* B168F4 8009F754 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B168F8 8009F758 246E0008 */  addiu $t6, $v1, 8
/* B168FC 8009F75C AD2E02C0 */  sw    $t6, 0x2c0($t1)
/* B16900 8009F760 AC600004 */  sw    $zero, 4($v1)
/* B16904 8009F764 AC640000 */  sw    $a0, ($v1)
/* B16908 8009F768 8D2302C0 */  lw    $v1, 0x2c0($t1)
/* B1690C 8009F76C 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B16910 8009F770 3C05FB00 */  lui   $a1, 0xfb00
/* B16914 8009F774 246F0008 */  addiu $t7, $v1, 8
/* B16918 8009F778 AD2F02C0 */  sw    $t7, 0x2c0($t1)
/* B1691C 8009F77C AC660004 */  sw    $a2, 4($v1)
/* B16920 8009F780 AC650000 */  sw    $a1, ($v1)
/* B16924 8009F784 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B16928 8009F788 24071D47 */  li    $a3, 7495
/* B1692C 8009F78C 24580008 */  addiu $t8, $v0, 8
/* B16930 8009F790 AD3802D0 */  sw    $t8, 0x2d0($t1)
/* B16934 8009F794 AC400004 */  sw    $zero, 4($v0)
/* B16938 8009F798 AC440000 */  sw    $a0, ($v0)
/* B1693C 8009F79C 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B16940 8009F7A0 27A40040 */  addiu $a0, $sp, 0x40
/* B16944 8009F7A4 24590008 */  addiu $t9, $v0, 8
/* B16948 8009F7A8 AD3902D0 */  sw    $t9, 0x2d0($t1)
/* B1694C 8009F7AC AC460004 */  sw    $a2, 4($v0)
/* B16950 8009F7B0 3C068014 */  lui   $a2, %hi(D_8013FDAC) # $a2, 0x8014
/* B16954 8009F7B4 AC450000 */  sw    $a1, ($v0)
/* B16958 8009F7B8 8D450000 */  lw    $a1, ($t2)
/* B1695C 8009F7BC 0C031AD5 */  jal   func_800C6B54
/* B16960 8009F7C0 24C6FDAC */   addiu $a2, %lo(D_8013FDAC) # addiu $a2, $a2, -0x254
/* B16964 8009F7C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B16968 8009F7C8 27BD0058 */  addiu $sp, $sp, 0x58
/* B1696C 8009F7CC 03E00008 */  jr    $ra
/* B16970 8009F7D0 00000000 */   nop   

/* B16974 8009F7D4 27BDFF90 */  addiu $sp, $sp, -0x70
/* B16978 8009F7D8 3C010001 */  lui   $at, 1
/* B1697C 8009F7DC AFBF0034 */  sw    $ra, 0x34($sp)
/* B16980 8009F7E0 AFA40070 */  sw    $a0, 0x70($sp)
/* B16984 8009F7E4 00811021 */  addu  $v0, $a0, $at
/* B16988 8009F7E8 8C441DE4 */  lw    $a0, 0x1de4($v0)
/* B1698C 8009F7EC AFA2003C */  sw    $v0, 0x3c($sp)
/* B16990 8009F7F0 00800821 */  addu  $at, $a0, $zero
/* B16994 8009F7F4 00042080 */  sll   $a0, $a0, 2
/* B16998 8009F7F8 00812023 */  subu  $a0, $a0, $at
/* B1699C 8009F7FC 00042100 */  sll   $a0, $a0, 4
/* B169A0 8009F800 00812023 */  subu  $a0, $a0, $at
/* B169A4 8009F804 000420C0 */  sll   $a0, $a0, 3
/* B169A8 8009F808 00812023 */  subu  $a0, $a0, $at
/* B169AC 8009F80C 00042080 */  sll   $a0, $a0, 2
/* B169B0 8009F810 0C0411E0 */  jal   coss
/* B169B4 8009F814 3084FFFF */   andi  $a0, $a0, 0xffff
/* B169B8 8009F818 8FAF003C */  lw    $t7, 0x3c($sp)
/* B169BC 8009F81C 00027203 */  sra   $t6, $v0, 8
/* B169C0 8009F820 A3AE006F */  sb    $t6, 0x6f($sp)
/* B169C4 8009F824 8DE41DE4 */  lw    $a0, 0x1de4($t7)
/* B169C8 8009F828 00800821 */  addu  $at, $a0, $zero
/* B169CC 8009F82C 00042080 */  sll   $a0, $a0, 2
/* B169D0 8009F830 00812023 */  subu  $a0, $a0, $at
/* B169D4 8009F834 00042100 */  sll   $a0, $a0, 4
/* B169D8 8009F838 00812023 */  subu  $a0, $a0, $at
/* B169DC 8009F83C 000420C0 */  sll   $a0, $a0, 3
/* B169E0 8009F840 00812023 */  subu  $a0, $a0, $at
/* B169E4 8009F844 00042080 */  sll   $a0, $a0, 2
/* B169E8 8009F848 0C0411E0 */  jal   coss
/* B169EC 8009F84C 3084FFFF */   andi  $a0, $a0, 0xffff
/* B169F0 8009F850 8FB80070 */  lw    $t8, 0x70($sp)
/* B169F4 8009F854 00024A03 */  sra   $t1, $v0, 8
/* B169F8 8009F858 00094E00 */  sll   $t1, $t1, 0x18
/* B169FC 8009F85C 8F050000 */  lw    $a1, ($t8)
/* B16A00 8009F860 00094E03 */  sra   $t1, $t1, 0x18
/* B16A04 8009F864 3C068014 */  lui   $a2, %hi(D_8013FDC0) # $a2, 0x8014
/* B16A08 8009F868 24C6FDC0 */  addiu $a2, %lo(D_8013FDC0) # addiu $a2, $a2, -0x240
/* B16A0C 8009F86C A3A9006E */  sb    $t1, 0x6e($sp)
/* B16A10 8009F870 27A40054 */  addiu $a0, $sp, 0x54
/* B16A14 8009F874 24071D58 */  li    $a3, 7512
/* B16A18 8009F878 0C031AB1 */  jal   func_800C6AC4
/* B16A1C 8009F87C AFA50064 */   sw    $a1, 0x64($sp)
/* B16A20 8009F880 83AB006F */  lb    $t3, 0x6f($sp)
/* B16A24 8009F884 8FB9003C */  lw    $t9, 0x3c($sp)
/* B16A28 8009F888 8FA80064 */  lw    $t0, 0x64($sp)
/* B16A2C 8009F88C 000B6043 */  sra   $t4, $t3, 1
/* B16A30 8009F890 8F2A1DE4 */  lw    $t2, 0x1de4($t9)
/* B16A34 8009F894 258D00C0 */  addiu $t5, $t4, 0xc0
/* B16A38 8009F898 A3AD006F */  sb    $t5, 0x6f($sp)
/* B16A3C 8009F89C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16A40 8009F8A0 83A9006E */  lb    $t1, 0x6e($sp)
/* B16A44 8009F8A4 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B16A48 8009F8A8 244E0008 */  addiu $t6, $v0, 8
/* B16A4C 8009F8AC 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B16A50 8009F8B0 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B16A54 8009F8B4 AC4F0000 */  sw    $t7, ($v0)
/* B16A58 8009F8B8 8FB80070 */  lw    $t8, 0x70($sp)
/* B16A5C 8009F8BC 00094843 */  sra   $t1, $t1, 1
/* B16A60 8009F8C0 252900C0 */  addiu $t1, $t1, 0xc0
/* B16A64 8009F8C4 8F040000 */  lw    $a0, ($t8)
/* B16A68 8009F8C8 00094E00 */  sll   $t1, $t1, 0x18
/* B16A6C 8009F8CC 00094E03 */  sra   $t1, $t1, 0x18
/* B16A70 8009F8D0 240E0020 */  li    $t6, 32
/* B16A74 8009F8D4 240D0020 */  li    $t5, 32
/* B16A78 8009F8D8 240C0001 */  li    $t4, 1
/* B16A7C 8009F8DC 24190020 */  li    $t9, 32
/* B16A80 8009F8E0 240B0020 */  li    $t3, 32
/* B16A84 8009F8E4 3147007F */  andi  $a3, $t2, 0x7f
/* B16A88 8009F8E8 AFA70020 */  sw    $a3, 0x20($sp)
/* B16A8C 8009F8EC AFAB0014 */  sw    $t3, 0x14($sp)
/* B16A90 8009F8F0 AFB90010 */  sw    $t9, 0x10($sp)
/* B16A94 8009F8F4 AFAC0018 */  sw    $t4, 0x18($sp)
/* B16A98 8009F8F8 AFAD0024 */  sw    $t5, 0x24($sp)
/* B16A9C 8009F8FC AFAE0028 */  sw    $t6, 0x28($sp)
/* B16AA0 8009F900 A3A9006E */  sb    $t1, 0x6e($sp)
/* B16AA4 8009F904 AFA0001C */  sw    $zero, 0x1c($sp)
/* B16AA8 8009F908 00002825 */  move  $a1, $zero
/* B16AAC 8009F90C 00003025 */  move  $a2, $zero
/* B16AB0 8009F910 AFA80064 */  sw    $t0, 0x64($sp)
/* B16AB4 8009F914 0C0253D0 */  jal   func_80094F40
/* B16AB8 8009F918 AFA20050 */   sw    $v0, 0x50($sp)
/* B16ABC 8009F91C 8FA30050 */  lw    $v1, 0x50($sp)
/* B16AC0 8009F920 8FA80064 */  lw    $t0, 0x64($sp)
/* B16AC4 8009F924 83A9006E */  lb    $t1, 0x6e($sp)
/* B16AC8 8009F928 AC620004 */  sw    $v0, 4($v1)
/* B16ACC 8009F92C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16AD0 8009F930 3C04E700 */  lui   $a0, 0xe700
/* B16AD4 8009F934 3C05FB00 */  lui   $a1, 0xfb00
/* B16AD8 8009F938 244F0008 */  addiu $t7, $v0, 8
/* B16ADC 8009F93C AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B16AE0 8009F940 AC400004 */  sw    $zero, 4($v0)
/* B16AE4 8009F944 AC440000 */  sw    $a0, ($v0)
/* B16AE8 8009F948 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16AEC 8009F94C 312D00FF */  andi  $t5, $t1, 0xff
/* B16AF0 8009F950 000D7400 */  sll   $t6, $t5, 0x10
/* B16AF4 8009F954 24580008 */  addiu $t8, $v0, 8
/* B16AF8 8009F958 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B16AFC 8009F95C AC450000 */  sw    $a1, ($v0)
/* B16B00 8009F960 83AB006F */  lb    $t3, 0x6f($sp)
/* B16B04 8009F964 3C068014 */  lui   $a2, %hi(D_8013FDD4) # $a2, 0x8014
/* B16B08 8009F968 24C6FDD4 */  addiu $a2, %lo(D_8013FDD4) # addiu $a2, $a2, -0x22c
/* B16B0C 8009F96C 000B6600 */  sll   $t4, $t3, 0x18
/* B16B10 8009F970 018EC025 */  or    $t8, $t4, $t6
/* B16B14 8009F974 3719FF80 */  ori   $t9, $t8, 0xff80
/* B16B18 8009F978 AC590004 */  sw    $t9, 4($v0)
/* B16B1C 8009F97C 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B16B20 8009F980 3C0C8080 */  lui   $t4, (0x80808080 >> 16) # lui $t4, 0x8080
/* B16B24 8009F984 358C8080 */  ori   $t4, (0x80808080 & 0xFFFF) # ori $t4, $t4, 0x8080
/* B16B28 8009F988 246B0008 */  addiu $t3, $v1, 8
/* B16B2C 8009F98C AD0B02D0 */  sw    $t3, 0x2d0($t0)
/* B16B30 8009F990 AC600004 */  sw    $zero, 4($v1)
/* B16B34 8009F994 AC640000 */  sw    $a0, ($v1)
/* B16B38 8009F998 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B16B3C 8009F99C 27A40054 */  addiu $a0, $sp, 0x54
/* B16B40 8009F9A0 24071D6A */  li    $a3, 7530
/* B16B44 8009F9A4 246D0008 */  addiu $t5, $v1, 8
/* B16B48 8009F9A8 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B16B4C 8009F9AC AC6C0004 */  sw    $t4, 4($v1)
/* B16B50 8009F9B0 AC650000 */  sw    $a1, ($v1)
/* B16B54 8009F9B4 8FAE0070 */  lw    $t6, 0x70($sp)
/* B16B58 8009F9B8 0C031AD5 */  jal   func_800C6B54
/* B16B5C 8009F9BC 8DC50000 */   lw    $a1, ($t6)
/* B16B60 8009F9C0 8FBF0034 */  lw    $ra, 0x34($sp)
/* B16B64 8009F9C4 27BD0070 */  addiu $sp, $sp, 0x70
/* B16B68 8009F9C8 03E00008 */  jr    $ra
/* B16B6C 8009F9CC 00000000 */   nop   

/* B16B70 8009F9D0 27BDFF88 */  addiu $sp, $sp, -0x78
/* B16B74 8009F9D4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B16B78 8009F9D8 AFA40078 */  sw    $a0, 0x78($sp)
/* B16B7C 8009F9DC 8C850000 */  lw    $a1, ($a0)
/* B16B80 8009F9E0 3C068014 */  lui   $a2, %hi(D_8013FDE8) # $a2, 0x8014
/* B16B84 8009F9E4 24C6FDE8 */  addiu $a2, %lo(D_8013FDE8) # addiu $a2, $a2, -0x218
/* B16B88 8009F9E8 27A40060 */  addiu $a0, $sp, 0x60
/* B16B8C 8009F9EC 24071D83 */  li    $a3, 7555
/* B16B90 8009F9F0 0C031AB1 */  jal   func_800C6AC4
/* B16B94 8009F9F4 AFA50070 */   sw    $a1, 0x70($sp)
/* B16B98 8009F9F8 8FA80070 */  lw    $t0, 0x70($sp)
/* B16B9C 8009F9FC 8FAB0078 */  lw    $t3, 0x78($sp)
/* B16BA0 8009FA00 3C0A0001 */  lui   $t2, 1
/* B16BA4 8009FA04 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16BA8 8009FA08 014B5021 */  addu  $t2, $t2, $t3
/* B16BAC 8009FA0C 8D4A1DE4 */  lw    $t2, 0x1de4($t2)
/* B16BB0 8009FA10 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B16BB4 8009FA14 244F0008 */  addiu $t7, $v0, 8
/* B16BB8 8009FA18 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B16BBC 8009FA1C AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B16BC0 8009FA20 AC580000 */  sw    $t8, ($v0)
/* B16BC4 8009FA24 8D640000 */  lw    $a0, ($t3)
/* B16BC8 8009FA28 24180020 */  li    $t8, 32
/* B16BCC 8009FA2C 240F0020 */  li    $t7, 32
/* B16BD0 8009FA30 2419007F */  li    $t9, 127
/* B16BD4 8009FA34 240C0020 */  li    $t4, 32
/* B16BD8 8009FA38 240D0020 */  li    $t5, 32
/* B16BDC 8009FA3C 240E0001 */  li    $t6, 1
/* B16BE0 8009FA40 3143007F */  andi  $v1, $t2, 0x7f
/* B16BE4 8009FA44 03233823 */  subu  $a3, $t9, $v1
/* B16BE8 8009FA48 AFA3001C */  sw    $v1, 0x1c($sp)
/* B16BEC 8009FA4C AFAE0018 */  sw    $t6, 0x18($sp)
/* B16BF0 8009FA50 AFAD0014 */  sw    $t5, 0x14($sp)
/* B16BF4 8009FA54 AFAC0010 */  sw    $t4, 0x10($sp)
/* B16BF8 8009FA58 AFAF0024 */  sw    $t7, 0x24($sp)
/* B16BFC 8009FA5C AFB80028 */  sw    $t8, 0x28($sp)
/* B16C00 8009FA60 AFA00020 */  sw    $zero, 0x20($sp)
/* B16C04 8009FA64 00002825 */  move  $a1, $zero
/* B16C08 8009FA68 00003025 */  move  $a2, $zero
/* B16C0C 8009FA6C AFA80070 */  sw    $t0, 0x70($sp)
/* B16C10 8009FA70 0C0253D0 */  jal   func_80094F40
/* B16C14 8009FA74 AFA2005C */   sw    $v0, 0x5c($sp)
/* B16C18 8009FA78 8FA9005C */  lw    $t1, 0x5c($sp)
/* B16C1C 8009FA7C 8FA80070 */  lw    $t0, 0x70($sp)
/* B16C20 8009FA80 3C04E700 */  lui   $a0, 0xe700
/* B16C24 8009FA84 AD220004 */  sw    $v0, 4($t1)
/* B16C28 8009FA88 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16C2C 8009FA8C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B16C30 8009FA90 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B16C34 8009FA94 24590008 */  addiu $t9, $v0, 8
/* B16C38 8009FA98 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B16C3C 8009FA9C AC400004 */  sw    $zero, 4($v0)
/* B16C40 8009FAA0 AC440000 */  sw    $a0, ($v0)
/* B16C44 8009FAA4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16C48 8009FAA8 3C05FB00 */  lui   $a1, 0xfb00
/* B16C4C 8009FAAC 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B16C50 8009FAB0 244C0008 */  addiu $t4, $v0, 8
/* B16C54 8009FAB4 AD0C02C0 */  sw    $t4, 0x2c0($t0)
/* B16C58 8009FAB8 AC460004 */  sw    $a2, 4($v0)
/* B16C5C 8009FABC AC450000 */  sw    $a1, ($v0)
/* B16C60 8009FAC0 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B16C64 8009FAC4 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B16C68 8009FAC8 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B16C6C 8009FACC 244D0008 */  addiu $t5, $v0, 8
/* B16C70 8009FAD0 AD0D02D0 */  sw    $t5, 0x2d0($t0)
/* B16C74 8009FAD4 AC400004 */  sw    $zero, 4($v0)
/* B16C78 8009FAD8 AC440000 */  sw    $a0, ($v0)
/* B16C7C 8009FADC 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B16C80 8009FAE0 3C048013 */  lui   $a0, 0x8013
/* B16C84 8009FAE4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B16C88 8009FAE8 244E0008 */  addiu $t6, $v0, 8
/* B16C8C 8009FAEC AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B16C90 8009FAF0 AC460004 */  sw    $a2, 4($v0)
/* B16C94 8009FAF4 AC450000 */  sw    $a1, ($v0)
/* B16C98 8009FAF8 8D0202D0 */  lw    $v0, 0x2d0($t0)
/* B16C9C 8009FAFC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B16CA0 8009FB00 3C068014 */  lui   $a2, %hi(D_8013FDFC) # $a2, 0x8014
/* B16CA4 8009FB04 244F0008 */  addiu $t7, $v0, 8
/* B16CA8 8009FB08 AD0F02D0 */  sw    $t7, 0x2d0($t0)
/* B16CAC 8009FB0C AC580000 */  sw    $t8, ($v0)
/* B16CB0 8009FB10 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B16CB4 8009FB14 24C6FDFC */  addiu $a2, %lo(D_8013FDFC) # addiu $a2, $a2, -0x204
/* B16CB8 8009FB18 24071D9A */  li    $a3, 7578
/* B16CBC 8009FB1C 00196080 */  sll   $t4, $t9, 2
/* B16CC0 8009FB20 008C2021 */  addu  $a0, $a0, $t4
/* B16CC4 8009FB24 8C84A388 */  lw    $a0, -0x5c78($a0)
/* B16CC8 8009FB28 3C198016 */  lui   $t9, 0x8016
/* B16CCC 8009FB2C 00047100 */  sll   $t6, $a0, 4
/* B16CD0 8009FB30 000E7F02 */  srl   $t7, $t6, 0x1c
/* B16CD4 8009FB34 000FC080 */  sll   $t8, $t7, 2
/* B16CD8 8009FB38 0338C821 */  addu  $t9, $t9, $t8
/* B16CDC 8009FB3C 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B16CE0 8009FB40 00816824 */  and   $t5, $a0, $at
/* B16CE4 8009FB44 3C018000 */  lui   $at, 0x8000
/* B16CE8 8009FB48 01B96021 */  addu  $t4, $t5, $t9
/* B16CEC 8009FB4C 01817021 */  addu  $t6, $t4, $at
/* B16CF0 8009FB50 AC4E0004 */  sw    $t6, 4($v0)
/* B16CF4 8009FB54 8FAF0078 */  lw    $t7, 0x78($sp)
/* B16CF8 8009FB58 27A40060 */  addiu $a0, $sp, 0x60
/* B16CFC 8009FB5C 0C031AD5 */  jal   func_800C6B54
/* B16D00 8009FB60 8DE50000 */   lw    $a1, ($t7)
/* B16D04 8009FB64 8FBF0034 */  lw    $ra, 0x34($sp)
/* B16D08 8009FB68 27BD0078 */  addiu $sp, $sp, 0x78
/* B16D0C 8009FB6C 03E00008 */  jr    $ra
/* B16D10 8009FB70 00000000 */   nop   

/* B16D14 8009FB74 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B16D18 8009FB78 AFBF0014 */  sw    $ra, 0x14($sp)
/* B16D1C 8009FB7C AFA40050 */  sw    $a0, 0x50($sp)
/* B16D20 8009FB80 8C850000 */  lw    $a1, ($a0)
/* B16D24 8009FB84 3C068014 */  lui   $a2, %hi(D_8013FE10) # $a2, 0x8014
/* B16D28 8009FB88 24C6FE10 */  addiu $a2, %lo(D_8013FE10) # addiu $a2, $a2, -0x1f0
/* B16D2C 8009FB8C 27A4003C */  addiu $a0, $sp, 0x3c
/* B16D30 8009FB90 24071DB2 */  li    $a3, 7602
/* B16D34 8009FB94 0C031AB1 */  jal   func_800C6AC4
/* B16D38 8009FB98 AFA5004C */   sw    $a1, 0x4c($sp)
/* B16D3C 8009FB9C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B16D40 8009FBA0 3C18DB06 */  lui   $t8, (0xDB060020 >> 16) # lui $t8, 0xdb06
/* B16D44 8009FBA4 37180020 */  ori   $t8, (0xDB060020 & 0xFFFF) # ori $t8, $t8, 0x20
/* B16D48 8009FBA8 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16D4C 8009FBAC 3C198016 */  lui   $t9, %hi(D_8015E670) # $t9, 0x8016
/* B16D50 8009FBB0 3C048013 */  lui   $a0, 0x8013
/* B16D54 8009FBB4 244F0008 */  addiu $t7, $v0, 8
/* B16D58 8009FBB8 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B16D5C 8009FBBC AC580000 */  sw    $t8, ($v0)
/* B16D60 8009FBC0 8F39E670 */  lw    $t9, %lo(D_8015E670)($t9)
/* B16D64 8009FBC4 3C0E8016 */  lui   $t6, 0x8016
/* B16D68 8009FBC8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B16D6C 8009FBCC 00194880 */  sll   $t1, $t9, 2
/* B16D70 8009FBD0 00892021 */  addu  $a0, $a0, $t1
/* B16D74 8009FBD4 8C84A390 */  lw    $a0, -0x5c70($a0)
/* B16D78 8009FBD8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B16D7C 8009FBDC 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B16D80 8009FBE0 00045900 */  sll   $t3, $a0, 4
/* B16D84 8009FBE4 000B6702 */  srl   $t4, $t3, 0x1c
/* B16D88 8009FBE8 000C6880 */  sll   $t5, $t4, 2
/* B16D8C 8009FBEC 01CD7021 */  addu  $t6, $t6, $t5
/* B16D90 8009FBF0 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B16D94 8009FBF4 00815024 */  and   $t2, $a0, $at
/* B16D98 8009FBF8 3C018000 */  lui   $at, 0x8000
/* B16D9C 8009FBFC 014E7821 */  addu  $t7, $t2, $t6
/* B16DA0 8009FC00 01E1C021 */  addu  $t8, $t7, $at
/* B16DA4 8009FC04 AC580004 */  sw    $t8, 4($v0)
/* B16DA8 8009FC08 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16DAC 8009FC0C 3C04E700 */  lui   $a0, 0xe700
/* B16DB0 8009FC10 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B16DB4 8009FC14 24590008 */  addiu $t9, $v0, 8
/* B16DB8 8009FC18 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B16DBC 8009FC1C AC400004 */  sw    $zero, 4($v0)
/* B16DC0 8009FC20 AC440000 */  sw    $a0, ($v0)
/* B16DC4 8009FC24 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B16DC8 8009FC28 3C05FB00 */  lui   $a1, 0xfb00
/* B16DCC 8009FC2C 24071DBF */  li    $a3, 7615
/* B16DD0 8009FC30 24490008 */  addiu $t1, $v0, 8
/* B16DD4 8009FC34 AD0902C0 */  sw    $t1, 0x2c0($t0)
/* B16DD8 8009FC38 AC460004 */  sw    $a2, 4($v0)
/* B16DDC 8009FC3C AC450000 */  sw    $a1, ($v0)
/* B16DE0 8009FC40 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B16DE4 8009FC44 246B0008 */  addiu $t3, $v1, 8
/* B16DE8 8009FC48 AD0B02D0 */  sw    $t3, 0x2d0($t0)
/* B16DEC 8009FC4C AC600004 */  sw    $zero, 4($v1)
/* B16DF0 8009FC50 AC640000 */  sw    $a0, ($v1)
/* B16DF4 8009FC54 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B16DF8 8009FC58 27A4003C */  addiu $a0, $sp, 0x3c
/* B16DFC 8009FC5C 246C0008 */  addiu $t4, $v1, 8
/* B16E00 8009FC60 AD0C02D0 */  sw    $t4, 0x2d0($t0)
/* B16E04 8009FC64 AC660004 */  sw    $a2, 4($v1)
/* B16E08 8009FC68 AC650000 */  sw    $a1, ($v1)
/* B16E0C 8009FC6C 8FAD0050 */  lw    $t5, 0x50($sp)
/* B16E10 8009FC70 3C068014 */  lui   $a2, %hi(D_8013FE24) # $a2, 0x8014
/* B16E14 8009FC74 24C6FE24 */  addiu $a2, %lo(D_8013FE24) # addiu $a2, $a2, -0x1dc
/* B16E18 8009FC78 0C031AD5 */  jal   func_800C6B54
/* B16E1C 8009FC7C 8DA50000 */   lw    $a1, ($t5)
/* B16E20 8009FC80 8FBF0014 */  lw    $ra, 0x14($sp)
/* B16E24 8009FC84 27BD0050 */  addiu $sp, $sp, 0x50
/* B16E28 8009FC88 03E00008 */  jr    $ra
/* B16E2C 8009FC8C 00000000 */   nop   

/* B16E30 8009FC90 27BDFF88 */  addiu $sp, $sp, -0x78
/* B16E34 8009FC94 AFBF003C */  sw    $ra, 0x3c($sp)
/* B16E38 8009FC98 AFB10038 */  sw    $s1, 0x38($sp)
/* B16E3C 8009FC9C AFB00034 */  sw    $s0, 0x34($sp)
/* B16E40 8009FCA0 8C850000 */  lw    $a1, ($a0)
/* B16E44 8009FCA4 00808825 */  move  $s1, $a0
/* B16E48 8009FCA8 3C068014 */  lui   $a2, %hi(D_8013FE38) # $a2, 0x8014
/* B16E4C 8009FCAC 24C6FE38 */  addiu $a2, %lo(D_8013FE38) # addiu $a2, $a2, -0x1c8
/* B16E50 8009FCB0 27A40060 */  addiu $a0, $sp, 0x60
/* B16E54 8009FCB4 24071DCE */  li    $a3, 7630
/* B16E58 8009FCB8 0C031AB1 */  jal   func_800C6AC4
/* B16E5C 8009FCBC 00A08025 */   move  $s0, $a1
/* B16E60 8009FCC0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B16E64 8009FCC4 3C080001 */  lui   $t0, 1
/* B16E68 8009FCC8 01114021 */  addu  $t0, $t0, $s1
/* B16E6C 8009FCCC 8D081DE4 */  lw    $t0, 0x1de4($t0)
/* B16E70 8009FCD0 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B16E74 8009FCD4 244E0008 */  addiu $t6, $v0, 8
/* B16E78 8009FCD8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B16E7C 8009FCDC 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B16E80 8009FCE0 AC4F0000 */  sw    $t7, ($v0)
/* B16E84 8009FCE4 8E240000 */  lw    $a0, ($s1)
/* B16E88 8009FCE8 2419007F */  li    $t9, 127
/* B16E8C 8009FCEC 3118007F */  andi  $t8, $t0, 0x7f
/* B16E90 8009FCF0 03383823 */  subu  $a3, $t9, $t8
/* B16E94 8009FCF4 240F0020 */  li    $t7, 32
/* B16E98 8009FCF8 240E0020 */  li    $t6, 32
/* B16E9C 8009FCFC 240B0020 */  li    $t3, 32
/* B16EA0 8009FD00 240C0020 */  li    $t4, 32
/* B16EA4 8009FD04 240D0001 */  li    $t5, 1
/* B16EA8 8009FD08 AFAD0018 */  sw    $t5, 0x18($sp)
/* B16EAC 8009FD0C AFAC0014 */  sw    $t4, 0x14($sp)
/* B16EB0 8009FD10 AFAB0010 */  sw    $t3, 0x10($sp)
/* B16EB4 8009FD14 AFAE0024 */  sw    $t6, 0x24($sp)
/* B16EB8 8009FD18 AFAF0028 */  sw    $t7, 0x28($sp)
/* B16EBC 8009FD1C AFA7001C */  sw    $a3, 0x1c($sp)
/* B16EC0 8009FD20 AFA00020 */  sw    $zero, 0x20($sp)
/* B16EC4 8009FD24 00002825 */  move  $a1, $zero
/* B16EC8 8009FD28 00003025 */  move  $a2, $zero
/* B16ECC 8009FD2C AFA2005C */  sw    $v0, 0x5c($sp)
/* B16ED0 8009FD30 0C0253D0 */  jal   func_80094F40
/* B16ED4 8009FD34 AFA80074 */   sw    $t0, 0x74($sp)
/* B16ED8 8009FD38 8FA3005C */  lw    $v1, 0x5c($sp)
/* B16EDC 8009FD3C 8FA80074 */  lw    $t0, 0x74($sp)
/* B16EE0 8009FD40 3C18DB06 */  lui   $t8, (0xDB060024 >> 16) # lui $t8, 0xdb06
/* B16EE4 8009FD44 AC620004 */  sw    $v0, 4($v1)
/* B16EE8 8009FD48 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B16EEC 8009FD4C 37180024 */  ori   $t8, (0xDB060024 & 0xFFFF) # ori $t8, $t8, 0x24
/* B16EF0 8009FD50 00081880 */  sll   $v1, $t0, 2
/* B16EF4 8009FD54 24590008 */  addiu $t9, $v0, 8
/* B16EF8 8009FD58 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B16EFC 8009FD5C AC580000 */  sw    $t8, ($v0)
/* B16F00 8009FD60 8E240000 */  lw    $a0, ($s1)
/* B16F04 8009FD64 00083080 */  sll   $a2, $t0, 2
/* B16F08 8009FD68 00C83023 */  subu  $a2, $a2, $t0
/* B16F0C 8009FD6C 00681823 */  subu  $v1, $v1, $t0
/* B16F10 8009FD70 240A007F */  li    $t2, 127
/* B16F14 8009FD74 00031840 */  sll   $v1, $v1, 1
/* B16F18 8009FD78 30C6007F */  andi  $a2, $a2, 0x7f
/* B16F1C 8009FD7C 01467023 */  subu  $t6, $t2, $a2
/* B16F20 8009FD80 3063007F */  andi  $v1, $v1, 0x7f
/* B16F24 8009FD84 24190020 */  li    $t9, 32
/* B16F28 8009FD88 240B0020 */  li    $t3, 32
/* B16F2C 8009FD8C 240C0020 */  li    $t4, 32
/* B16F30 8009FD90 240D0001 */  li    $t5, 1
/* B16F34 8009FD94 240F0020 */  li    $t7, 32
/* B16F38 8009FD98 AFAF0024 */  sw    $t7, 0x24($sp)
/* B16F3C 8009FD9C AFAD0018 */  sw    $t5, 0x18($sp)
/* B16F40 8009FDA0 AFAC0014 */  sw    $t4, 0x14($sp)
/* B16F44 8009FDA4 AFAB0010 */  sw    $t3, 0x10($sp)
/* B16F48 8009FDA8 AFB90028 */  sw    $t9, 0x28($sp)
/* B16F4C 8009FDAC 01433823 */  subu  $a3, $t2, $v1
/* B16F50 8009FDB0 AFA3001C */  sw    $v1, 0x1c($sp)
/* B16F54 8009FDB4 AFAE0020 */  sw    $t6, 0x20($sp)
/* B16F58 8009FDB8 00002825 */  move  $a1, $zero
/* B16F5C 8009FDBC 0C0253D0 */  jal   func_80094F40
/* B16F60 8009FDC0 AFA20058 */   sw    $v0, 0x58($sp)
/* B16F64 8009FDC4 8FA90058 */  lw    $t1, 0x58($sp)
/* B16F68 8009FDC8 3C04E700 */  lui   $a0, 0xe700
/* B16F6C 8009FDCC 3C068080 */  lui   $a2, (0x80808040 >> 16) # lui $a2, 0x8080
/* B16F70 8009FDD0 AD220004 */  sw    $v0, 4($t1)
/* B16F74 8009FDD4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B16F78 8009FDD8 34C68040 */  ori   $a2, (0x80808040 & 0xFFFF) # ori $a2, $a2, 0x8040
/* B16F7C 8009FDDC 3C05FB00 */  lui   $a1, 0xfb00
/* B16F80 8009FDE0 24580008 */  addiu $t8, $v0, 8
/* B16F84 8009FDE4 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B16F88 8009FDE8 AC400004 */  sw    $zero, 4($v0)
/* B16F8C 8009FDEC AC440000 */  sw    $a0, ($v0)
/* B16F90 8009FDF0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B16F94 8009FDF4 24071DE5 */  li    $a3, 7653
/* B16F98 8009FDF8 244B0008 */  addiu $t3, $v0, 8
/* B16F9C 8009FDFC AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B16FA0 8009FE00 AC460004 */  sw    $a2, 4($v0)
/* B16FA4 8009FE04 AC450000 */  sw    $a1, ($v0)
/* B16FA8 8009FE08 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B16FAC 8009FE0C 246C0008 */  addiu $t4, $v1, 8
/* B16FB0 8009FE10 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* B16FB4 8009FE14 AC600004 */  sw    $zero, 4($v1)
/* B16FB8 8009FE18 AC640000 */  sw    $a0, ($v1)
/* B16FBC 8009FE1C 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B16FC0 8009FE20 27A40060 */  addiu $a0, $sp, 0x60
/* B16FC4 8009FE24 246D0008 */  addiu $t5, $v1, 8
/* B16FC8 8009FE28 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B16FCC 8009FE2C AC660004 */  sw    $a2, 4($v1)
/* B16FD0 8009FE30 3C068014 */  lui   $a2, %hi(D_8013FE4C) # $a2, 0x8014
/* B16FD4 8009FE34 AC650000 */  sw    $a1, ($v1)
/* B16FD8 8009FE38 8E250000 */  lw    $a1, ($s1)
/* B16FDC 8009FE3C 0C031AD5 */  jal   func_800C6B54
/* B16FE0 8009FE40 24C6FE4C */   addiu $a2, %lo(D_8013FE4C) # addiu $a2, $a2, -0x1b4
/* B16FE4 8009FE44 8FBF003C */  lw    $ra, 0x3c($sp)
/* B16FE8 8009FE48 8FB00034 */  lw    $s0, 0x34($sp)
/* B16FEC 8009FE4C 8FB10038 */  lw    $s1, 0x38($sp)
/* B16FF0 8009FE50 03E00008 */  jr    $ra
/* B16FF4 8009FE54 27BD0078 */   addiu $sp, $sp, 0x78

/* B16FF8 8009FE58 27BDFF68 */  addiu $sp, $sp, -0x98
/* B16FFC 8009FE5C AFBF003C */  sw    $ra, 0x3c($sp)
/* B17000 8009FE60 AFB00038 */  sw    $s0, 0x38($sp)
/* B17004 8009FE64 AFA40098 */  sw    $a0, 0x98($sp)
/* B17008 8009FE68 8C850000 */  lw    $a1, ($a0)
/* B1700C 8009FE6C 3C068014 */  lui   $a2, %hi(D_8013FE60) # $a2, 0x8014
/* B17010 8009FE70 24C6FE60 */  addiu $a2, %lo(D_8013FE60) # addiu $a2, $a2, -0x1a0
/* B17014 8009FE74 27A4007C */  addiu $a0, $sp, 0x7c
/* B17018 8009FE78 24071E20 */  li    $a3, 7712
/* B1701C 8009FE7C 0C031AB1 */  jal   func_800C6AC4
/* B17020 8009FE80 00A08025 */   move  $s0, $a1
/* B17024 8009FE84 8FAA0098 */  lw    $t2, 0x98($sp)
/* B17028 8009FE88 3C010001 */  lui   $at, 1
/* B1702C 8009FE8C 240C007F */  li    $t4, 127
/* B17030 8009FE90 01417821 */  addu  $t7, $t2, $at
/* B17034 8009FE94 AFAF0048 */  sw    $t7, 0x48($sp)
/* B17038 8009FE98 855900A4 */  lh    $t9, 0xa4($t2)
/* B1703C 8009FE9C 8DE81DE4 */  lw    $t0, 0x1de4($t7)
/* B17040 8009FEA0 24010002 */  li    $at, 2
/* B17044 8009FEA4 1721003F */  bne   $t9, $at, .L8009FFA4
/* B17048 8009FEA8 01001825 */   move  $v1, $t0
/* B1704C 8009FEAC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B17050 8009FEB0 3C0CDB06 */  lui   $t4, (0xDB060020 >> 16) # lui $t4, 0xdb06
/* B17054 8009FEB4 358C0020 */  ori   $t4, (0xDB060020 & 0xFFFF) # ori $t4, $t4, 0x20
/* B17058 8009FEB8 244B0008 */  addiu $t3, $v0, 8
/* B1705C 8009FEBC AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B17060 8009FEC0 AC4C0000 */  sw    $t4, ($v0)
/* B17064 8009FEC4 8D440000 */  lw    $a0, ($t2)
/* B17068 8009FEC8 3106007F */  andi  $a2, $t0, 0x7f
/* B1706C 8009FECC 00083840 */  sll   $a3, $t0, 1
/* B17070 8009FED0 2418007F */  li    $t8, 127
/* B17074 8009FED4 0306C823 */  subu  $t9, $t8, $a2
/* B17078 8009FED8 30E7007F */  andi  $a3, $a3, 0x7f
/* B1707C 8009FEDC 240C0020 */  li    $t4, 32
/* B17080 8009FEE0 240B0020 */  li    $t3, 32
/* B17084 8009FEE4 240D0020 */  li    $t5, 32
/* B17088 8009FEE8 240E0020 */  li    $t6, 32
/* B1708C 8009FEEC 240F0001 */  li    $t7, 1
/* B17090 8009FEF0 AFAF0018 */  sw    $t7, 0x18($sp)
/* B17094 8009FEF4 AFAE0014 */  sw    $t6, 0x14($sp)
/* B17098 8009FEF8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B1709C 8009FEFC AFAB0024 */  sw    $t3, 0x24($sp)
/* B170A0 8009FF00 AFAC0028 */  sw    $t4, 0x28($sp)
/* B170A4 8009FF04 AFA70020 */  sw    $a3, 0x20($sp)
/* B170A8 8009FF08 AFB9001C */  sw    $t9, 0x1c($sp)
/* B170AC 8009FF0C AFA80094 */  sw    $t0, 0x94($sp)
/* B170B0 8009FF10 00002825 */  move  $a1, $zero
/* B170B4 8009FF14 0C0253D0 */  jal   func_80094F40
/* B170B8 8009FF18 AFA20078 */   sw    $v0, 0x78($sp)
/* B170BC 8009FF1C 8FA30078 */  lw    $v1, 0x78($sp)
/* B170C0 8009FF20 8FA80094 */  lw    $t0, 0x94($sp)
/* B170C4 8009FF24 3C0EDB06 */  lui   $t6, (0xDB06002C >> 16) # lui $t6, 0xdb06
/* B170C8 8009FF28 AC620004 */  sw    $v0, 4($v1)
/* B170CC 8009FF2C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B170D0 8009FF30 35CE002C */  ori   $t6, (0xDB06002C & 0xFFFF) # ori $t6, $t6, 0x2c
/* B170D4 8009FF34 0008C080 */  sll   $t8, $t0, 2
/* B170D8 8009FF38 244D0008 */  addiu $t5, $v0, 8
/* B170DC 8009FF3C AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B170E0 8009FF40 AC4E0000 */  sw    $t6, ($v0)
/* B170E4 8009FF44 8FAF0098 */  lw    $t7, 0x98($sp)
/* B170E8 8009FF48 331900FF */  andi  $t9, $t8, 0xff
/* B170EC 8009FF4C 240B00FF */  li    $t3, 255
/* B170F0 8009FF50 8DE40000 */  lw    $a0, ($t7)
/* B170F4 8009FF54 240F0020 */  li    $t7, 32
/* B170F8 8009FF58 01793823 */  subu  $a3, $t3, $t9
/* B170FC 8009FF5C 24180040 */  li    $t8, 64
/* B17100 8009FF60 240E0001 */  li    $t6, 1
/* B17104 8009FF64 240D0040 */  li    $t5, 64
/* B17108 8009FF68 240C0020 */  li    $t4, 32
/* B1710C 8009FF6C AFAC0010 */  sw    $t4, 0x10($sp)
/* B17110 8009FF70 AFAD0014 */  sw    $t5, 0x14($sp)
/* B17114 8009FF74 AFAE0018 */  sw    $t6, 0x18($sp)
/* B17118 8009FF78 AFB80028 */  sw    $t8, 0x28($sp)
/* B1711C 8009FF7C AFA70020 */  sw    $a3, 0x20($sp)
/* B17120 8009FF80 AFAF0024 */  sw    $t7, 0x24($sp)
/* B17124 8009FF84 AFA0001C */  sw    $zero, 0x1c($sp)
/* B17128 8009FF88 00002825 */  move  $a1, $zero
/* B1712C 8009FF8C 00003025 */  move  $a2, $zero
/* B17130 8009FF90 0C0253D0 */  jal   func_80094F40
/* B17134 8009FF94 AFA20074 */   sw    $v0, 0x74($sp)
/* B17138 8009FF98 8FA30074 */  lw    $v1, 0x74($sp)
/* B1713C 8009FF9C 10000012 */  b     .L8009FFE8
/* B17140 8009FFA0 AC620004 */   sw    $v0, 4($v1)
.L8009FFA4:
/* B17144 8009FFA4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B17148 8009FFA8 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B1714C 8009FFAC 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B17150 8009FFB0 244B0008 */  addiu $t3, $v0, 8
/* B17154 8009FFB4 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B17158 8009FFB8 AC590000 */  sw    $t9, ($v0)
/* B1715C 8009FFBC 8D440000 */  lw    $a0, ($t2)
/* B17160 8009FFC0 01882823 */  subu  $a1, $t4, $t0
/* B17164 8009FFC4 240D0020 */  li    $t5, 32
/* B17168 8009FFC8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B1716C 8009FFCC 30A5007F */  andi  $a1, $a1, 0x7f
/* B17170 8009FFD0 3106007F */  andi  $a2, $t0, 0x7f
/* B17174 8009FFD4 24070020 */  li    $a3, 32
/* B17178 8009FFD8 0C0253A7 */  jal   func_80094E9C
/* B1717C 8009FFDC AFA20070 */   sw    $v0, 0x70($sp)
/* B17180 8009FFE0 8FA90070 */  lw    $t1, 0x70($sp)
/* B17184 8009FFE4 AD220004 */  sw    $v0, 4($t1)
.L8009FFE8:
/* B17188 8009FFE8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1718C 8009FFEC 3C04E700 */  lui   $a0, 0xe700
/* B17190 8009FFF0 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B17194 8009FFF4 244E0008 */  addiu $t6, $v0, 8
/* B17198 8009FFF8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B1719C 8009FFFC AC400004 */  sw    $zero, 4($v0)
/* B171A0 800A0000 AC440000 */  sw    $a0, ($v0)
/* B171A4 800A0004 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B171A8 800A0008 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B171AC 800A000C 3C05FB00 */  lui   $a1, 0xfb00
/* B171B0 800A0010 244F0008 */  addiu $t7, $v0, 8
/* B171B4 800A0014 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B171B8 800A0018 AC460004 */  sw    $a2, 4($v0)
/* B171BC 800A001C AC450000 */  sw    $a1, ($v0)
/* B171C0 800A0020 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B171C4 800A0024 24780008 */  addiu $t8, $v1, 8
/* B171C8 800A0028 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B171CC 800A002C AC600004 */  sw    $zero, 4($v1)
/* B171D0 800A0030 AC640000 */  sw    $a0, ($v1)
/* B171D4 800A0034 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B171D8 800A0038 246B0008 */  addiu $t3, $v1, 8
/* B171DC 800A003C AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B171E0 800A0040 AC660004 */  sw    $a2, 4($v1)
/* B171E4 800A0044 AC650000 */  sw    $a1, ($v1)
/* B171E8 800A0048 0C03034A */  jal   func_800C0D28
/* B171EC 800A004C 8FA40098 */   lw    $a0, 0x98($sp)
/* B171F0 800A0050 24010001 */  li    $at, 1
/* B171F4 800A0054 1041007D */  beq   $v0, $at, .L800A024C
/* B171F8 800A0058 3C048013 */   lui   $a0, %hi(D_8013071C) # $a0, 0x8013
/* B171FC 800A005C 3C198013 */  lui   $t9, %hi(D_8012A3A0) # $t9, 0x8013
/* B17200 800A0060 8484A39C */  lh    $a0, %lo(D_8012A39C)($a0)
/* B17204 800A0064 8739A3A0 */  lh    $t9, %lo(D_8012A3A0)($t9)
/* B17208 800A0068 3C018013 */  lui   $at, %hi(D_8012A3A0) # $at, 0x8013
/* B1720C 800A006C 2484071C */  addiu $a0, %lo(D_8013071C) # addiu $a0, $a0, 0x71c
/* B17210 800A0070 272C071C */  addiu $t4, $t9, 0x71c
/* B17214 800A0074 00042400 */  sll   $a0, $a0, 0x10
/* B17218 800A0078 A42CA3A0 */  sh    $t4, %lo(D_8012A3A0)($at)
/* B1721C 800A007C 00042403 */  sra   $a0, $a0, 0x10
/* B17220 800A0080 3C018013 */  lui   $at, %hi(D_8012A39C) # $at, 0x8013
/* B17224 800A0084 0C01DE0D */  jal   func_80077834
/* B17228 800A0088 A424A39C */   sh    $a0, %lo(D_8012A39C)($at)
/* B1722C 800A008C 3C048013 */  lui   $a0, %hi(D_8012A39C) # $a0, 0x8013
/* B17230 800A0090 8484A39C */  lh    $a0, %lo(D_8012A39C)($a0)
/* B17234 800A0094 0C01DE1C */  jal   func_80077870
/* B17238 800A0098 E7A00050 */   swc1  $f0, 0x50($sp)
/* B1723C 800A009C 3C048013 */  lui   $a0, %hi(D_8012A3A0) # $a0, 0x8013
/* B17240 800A00A0 8484A3A0 */  lh    $a0, %lo(D_8012A3A0)($a0)
/* B17244 800A00A4 0C01DE1C */  jal   func_80077870
/* B17248 800A00A8 E7A00054 */   swc1  $f0, 0x54($sp)
/* B1724C 800A00AC 3C018014 */  lui   $at, 0x8014
/* B17250 800A00B0 C424FF28 */  lwc1  $f4, -0xd8($at)
/* B17254 800A00B4 3C018014 */  lui   $at, 0x8014
/* B17258 800A00B8 C426FF2C */  lwc1  $f6, -0xd4($at)
/* B1725C 800A00BC C7A80050 */  lwc1  $f8, 0x50($sp)
/* B17260 800A00C0 C7B00054 */  lwc1  $f16, 0x54($sp)
/* B17264 800A00C4 46062082 */  mul.s $f2, $f4, $f6
/* B17268 800A00C8 8FA40098 */  lw    $a0, 0x98($sp)
/* B1726C 800A00CC 248400B8 */  addiu $a0, $a0, 0xb8
/* B17270 800A00D0 AFA40044 */  sw    $a0, 0x44($sp)
/* B17274 800A00D4 46024282 */  mul.s $f10, $f8, $f2
/* B17278 800A00D8 00000000 */  nop   
/* B1727C 800A00DC 46028482 */  mul.s $f18, $f16, $f2
/* B17280 800A00E0 00000000 */  nop   
/* B17284 800A00E4 46020102 */  mul.s $f4, $f0, $f2
/* B17288 800A00E8 44055000 */  mfc1  $a1, $f10
/* B1728C 800A00EC 44069000 */  mfc1  $a2, $f18
/* B17290 800A00F0 44072000 */  mfc1  $a3, $f4
/* B17294 800A00F4 0C02A9DB */  jal   func_800AA76C
/* B17298 800A00F8 00000000 */   nop   
/* B1729C 800A00FC 3C048013 */  lui   $a0, %hi(D_8012A3A0) # $a0, 0x8013
/* B172A0 800A0100 0C01DE1C */  jal   func_80077870
/* B172A4 800A0104 8484A3A0 */   lh    $a0, %lo(D_8012A3A0)($a0)
/* B172A8 800A0108 3C048013 */  lui   $a0, %hi(D_8012A3A0) # $a0, 0x8013
/* B172AC 800A010C 8484A3A0 */  lh    $a0, %lo(D_8012A3A0)($a0)
/* B172B0 800A0110 0C01DE0D */  jal   func_80077834
/* B172B4 800A0114 E7A00050 */   swc1  $f0, 0x50($sp)
/* B172B8 800A0118 3C048013 */  lui   $a0, %hi(D_8012A39C) # $a0, 0x8013
/* B172BC 800A011C 8484A39C */  lh    $a0, %lo(D_8012A39C)($a0)
/* B172C0 800A0120 0C01DE0D */  jal   func_80077834
/* B172C4 800A0124 E7A00054 */   swc1  $f0, 0x54($sp)
/* B172C8 800A0128 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B172CC 800A012C 44811000 */  mtc1  $at, $f2
/* B172D0 800A0130 3C018014 */  lui   $at, 0x8014
/* B172D4 800A0134 C42CFF30 */  lwc1  $f12, -0xd0($at)
/* B172D8 800A0138 3C018014 */  lui   $at, 0x8014
/* B172DC 800A013C C428FF34 */  lwc1  $f8, -0xcc($at)
/* B172E0 800A0140 C7A60050 */  lwc1  $f6, 0x50($sp)
/* B172E4 800A0144 3C018014 */  lui   $at, 0x8014
/* B172E8 800A0148 460C4282 */  mul.s $f10, $f8, $f12
/* B172EC 800A014C C428FF38 */  lwc1  $f8, -0xc8($at)
/* B172F0 800A0150 C7A40054 */  lwc1  $f4, 0x54($sp)
/* B172F4 800A0154 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B172F8 800A0158 8FA40044 */  lw    $a0, 0x44($sp)
/* B172FC 800A015C 460A3402 */  mul.s $f16, $f6, $f10
/* B17300 800A0160 46028480 */  add.s $f18, $f16, $f2
/* B17304 800A0164 460C4182 */  mul.s $f6, $f8, $f12
/* B17308 800A0168 44059000 */  mfc1  $a1, $f18
/* B1730C 800A016C 44819000 */  mtc1  $at, $f18
/* B17310 800A0170 46062282 */  mul.s $f10, $f4, $f6
/* B17314 800A0174 00000000 */  nop   
/* B17318 800A0178 460C9202 */  mul.s $f8, $f18, $f12
/* B1731C 800A017C 46025400 */  add.s $f16, $f10, $f2
/* B17320 800A0180 46080102 */  mul.s $f4, $f0, $f8
/* B17324 800A0184 44068000 */  mfc1  $a2, $f16
/* B17328 800A0188 46022180 */  add.s $f6, $f4, $f2
/* B1732C 800A018C 44073000 */  mfc1  $a3, $f6
/* B17330 800A0190 0C02A9E3 */  jal   func_800AA78C
/* B17334 800A0194 00000000 */   nop   
/* B17338 800A0198 3C053F73 */  lui   $a1, (0x3F733333 >> 16) # lui $a1, 0x3f73
/* B1733C 800A019C 34A53333 */  ori   $a1, (0x3F733333 & 0xFFFF) # ori $a1, $a1, 0x3333
/* B17340 800A01A0 0C02A9EB */  jal   func_800AA7AC
/* B17344 800A01A4 8FA40044 */   lw    $a0, 0x44($sp)
/* B17348 800A01A8 8FA50048 */  lw    $a1, 0x48($sp)
/* B1734C 800A01AC 24010001 */  li    $at, 1
/* B17350 800A01B0 84A41D30 */  lh    $a0, 0x1d30($a1)
/* B17354 800A01B4 10800017 */  beqz  $a0, .L800A0214
/* B17358 800A01B8 00801825 */   move  $v1, $a0
/* B1735C 800A01BC 10810005 */  beq   $a0, $at, .L800A01D4
/* B17360 800A01C0 24010002 */   li    $at, 2
/* B17364 800A01C4 5061000D */  beql  $v1, $at, .L800A01FC
/* B17368 800A01C8 84A21D32 */   lh    $v0, 0x1d32($a1)
/* B1736C 800A01CC 10000012 */  b     .L800A0218
/* B17370 800A01D0 84B81D32 */   lh    $t8, 0x1d32($a1)
.L800A01D4:
/* B17374 800A01D4 84A21D32 */  lh    $v0, 0x1d32($a1)
/* B17378 800A01D8 248E0001 */  addiu $t6, $a0, 1
/* B1737C 800A01DC 284104B0 */  slti  $at, $v0, 0x4b0
/* B17380 800A01E0 10200003 */  beqz  $at, .L800A01F0
/* B17384 800A01E4 244D00C8 */   addiu $t5, $v0, 0xc8
/* B17388 800A01E8 1000000A */  b     .L800A0214
/* B1738C 800A01EC A4AD1D32 */   sh    $t5, 0x1d32($a1)
.L800A01F0:
/* B17390 800A01F0 10000008 */  b     .L800A0214
/* B17394 800A01F4 A4AE1D30 */   sh    $t6, 0x1d30($a1)
/* B17398 800A01F8 84A21D32 */  lh    $v0, 0x1d32($a1)
.L800A01FC:
/* B1739C 800A01FC 18400003 */  blez  $v0, .L800A020C
/* B173A0 800A0200 244FFFE2 */   addiu $t7, $v0, -0x1e
/* B173A4 800A0204 10000003 */  b     .L800A0214
/* B173A8 800A0208 A4AF1D32 */   sh    $t7, 0x1d32($a1)
.L800A020C:
/* B173AC 800A020C A4A01D32 */  sh    $zero, 0x1d32($a1)
/* B173B0 800A0210 A4A01D30 */  sh    $zero, 0x1d30($a1)
.L800A0214:
/* B173B4 800A0214 84B81D32 */  lh    $t8, 0x1d32($a1)
.L800A0218:
/* B173B8 800A0218 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B173BC 800A021C C432FF3C */  lwc1  $f18, -0xc4($at)
/* B173C0 800A0220 44985000 */  mtc1  $t8, $f10
/* B173C4 800A0224 3C018014 */  lui   $at, 0x8014
/* B173C8 800A0228 C424FF40 */  lwc1  $f4, -0xc0($at)
/* B173CC 800A022C 46805420 */  cvt.s.w $f16, $f10
/* B173D0 800A0230 3C028013 */  lui   $v0, %hi(D_8012A398) # $v0, 0x8013
/* B173D4 800A0234 2442A398 */  addiu $v0, %lo(D_8012A398) # addiu $v0, $v0, -0x5c68
/* B173D8 800A0238 C44A0000 */  lwc1  $f10, ($v0)
/* B173DC 800A023C 46128202 */  mul.s $f8, $f16, $f18
/* B173E0 800A0240 46082180 */  add.s $f6, $f4, $f8
/* B173E4 800A0244 46065400 */  add.s $f16, $f10, $f6
/* B173E8 800A0248 E4500000 */  swc1  $f16, ($v0)
.L800A024C:
/* B173EC 800A024C 8FA50048 */  lw    $a1, 0x48($sp)
/* B173F0 800A0250 3C028013 */  lui   $v0, %hi(D_8012A398) # $v0, 0x8013
/* B173F4 800A0254 24010002 */  li    $at, 2
/* B173F8 800A0258 80AB1CBC */  lb    $t3, 0x1cbc($a1)
/* B173FC 800A025C 2442A398 */  addiu $v0, %lo(D_8012A398) # addiu $v0, $v0, -0x5c68
/* B17400 800A0260 1561000E */  bne   $t3, $at, .L800A029C
/* B17404 800A0264 00000000 */   nop   
/* B17408 800A0268 0C0400A4 */  jal   sinf
/* B1740C 800A026C C44C0000 */   lwc1  $f12, ($v0)
/* B17410 800A0270 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B17414 800A0274 44816000 */  mtc1  $at, $f12
/* B17418 800A0278 3C018014 */  lui   $at, 0x8014
/* B1741C 800A027C C432FF44 */  lwc1  $f18, -0xbc($at)
/* B17420 800A0280 44066000 */  mfc1  $a2, $f12
/* B17424 800A0284 00003825 */  move  $a3, $zero
/* B17428 800A0288 46120382 */  mul.s $f14, $f0, $f18
/* B1742C 800A028C 0C0342A3 */  jal   func_800D0A8C
/* B17430 800A0290 00000000 */   nop   
/* B17434 800A0294 1000000D */  b     .L800A02CC
/* B17438 800A0298 8E0202C0 */   lw    $v0, 0x2c0($s0)
.L800A029C:
/* B1743C 800A029C 0C0400A4 */  jal   sinf
/* B17440 800A02A0 C44C0000 */   lwc1  $f12, ($v0)
/* B17444 800A02A4 3C018014 */  lui   $at, 0x8014
/* B17448 800A02A8 C42CFF48 */  lwc1  $f12, -0xb8($at)
/* B1744C 800A02AC 3C018014 */  lui   $at, 0x8014
/* B17450 800A02B0 C424FF4C */  lwc1  $f4, -0xb4($at)
/* B17454 800A02B4 44066000 */  mfc1  $a2, $f12
/* B17458 800A02B8 00003825 */  move  $a3, $zero
/* B1745C 800A02BC 46040382 */  mul.s $f14, $f0, $f4
/* B17460 800A02C0 0C0342A3 */  jal   func_800D0A8C
/* B17464 800A02C4 00000000 */   nop   
/* B17468 800A02C8 8E0202C0 */  lw    $v0, 0x2c0($s0)
.L800A02CC:
/* B1746C 800A02CC 3C0CDB06 */  lui   $t4, (0xDB060034 >> 16) # lui $t4, 0xdb06
/* B17470 800A02D0 358C0034 */  ori   $t4, (0xDB060034 & 0xFFFF) # ori $t4, $t4, 0x34
/* B17474 800A02D4 24590008 */  addiu $t9, $v0, 8
/* B17478 800A02D8 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B1747C 800A02DC AC4C0000 */  sw    $t4, ($v0)
/* B17480 800A02E0 8FAD0098 */  lw    $t5, 0x98($sp)
/* B17484 800A02E4 3C058014 */  lui   $a1, %hi(D_8013FE74) # $a1, 0x8014
/* B17488 800A02E8 24A5FE74 */  addiu $a1, %lo(D_8013FE74) # addiu $a1, $a1, -0x18c
/* B1748C 800A02EC 8DA40000 */  lw    $a0, ($t5)
/* B17490 800A02F0 24061E81 */  li    $a2, 7809
/* B17494 800A02F4 0C0346A2 */  jal   func_800D1A88
/* B17498 800A02F8 AFA2005C */   sw    $v0, 0x5c($sp)
/* B1749C 800A02FC 8FA3005C */  lw    $v1, 0x5c($sp)
/* B174A0 800A0300 3C068014 */  lui   $a2, %hi(D_8013FE88) # $a2, 0x8014
/* B174A4 800A0304 24C6FE88 */  addiu $a2, %lo(D_8013FE88) # addiu $a2, $a2, -0x178
/* B174A8 800A0308 AC620004 */  sw    $v0, 4($v1)
/* B174AC 800A030C 8FAE0098 */  lw    $t6, 0x98($sp)
/* B174B0 800A0310 27A4007C */  addiu $a0, $sp, 0x7c
/* B174B4 800A0314 24071E83 */  li    $a3, 7811
/* B174B8 800A0318 0C031AD5 */  jal   func_800C6B54
/* B174BC 800A031C 8DC50000 */   lw    $a1, ($t6)
/* B174C0 800A0320 8FBF003C */  lw    $ra, 0x3c($sp)
/* B174C4 800A0324 8FB00038 */  lw    $s0, 0x38($sp)
/* B174C8 800A0328 27BD0098 */  addiu $sp, $sp, 0x98
/* B174CC 800A032C 03E00008 */  jr    $ra
/* B174D0 800A0330 00000000 */   nop   

/* B174D4 800A0334 27BDFF78 */  addiu $sp, $sp, -0x88
/* B174D8 800A0338 AFBF003C */  sw    $ra, 0x3c($sp)
/* B174DC 800A033C AFB10038 */  sw    $s1, 0x38($sp)
/* B174E0 800A0340 AFB00034 */  sw    $s0, 0x34($sp)
/* B174E4 800A0344 8C850000 */  lw    $a1, ($a0)
/* B174E8 800A0348 00808825 */  move  $s1, $a0
/* B174EC 800A034C 3C068014 */  lui   $a2, %hi(D_8013FE9C) # $a2, 0x8014
/* B174F0 800A0350 24C6FE9C */  addiu $a2, %lo(D_8013FE9C) # addiu $a2, $a2, -0x164
/* B174F4 800A0354 27A40070 */  addiu $a0, $sp, 0x70
/* B174F8 800A0358 24071E91 */  li    $a3, 7825
/* B174FC 800A035C 0C031AB1 */  jal   func_800C6AC4
/* B17500 800A0360 00A08025 */   move  $s0, $a1
/* B17504 800A0364 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B17508 800A0368 3C080001 */  lui   $t0, 1
/* B1750C 800A036C 01114021 */  addu  $t0, $t0, $s1
/* B17510 800A0370 8D0A1DE4 */  lw    $t2, 0x1de4($t0)
/* B17514 800A0374 244E0008 */  addiu $t6, $v0, 8
/* B17518 800A0378 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B1751C 800A037C 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B17520 800A0380 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B17524 800A0384 AC4F0000 */  sw    $t7, ($v0)
/* B17528 800A0388 8E240000 */  lw    $a0, ($s1)
/* B1752C 800A038C 2418007F */  li    $t8, 127
/* B17530 800A0390 3143007F */  andi  $v1, $t2, 0x7f
/* B17534 800A0394 03033023 */  subu  $a2, $t8, $v1
/* B17538 800A0398 240E0080 */  li    $t6, 128
/* B1753C 800A039C 24190020 */  li    $t9, 32
/* B17540 800A03A0 240B0080 */  li    $t3, 128
/* B17544 800A03A4 240C0001 */  li    $t4, 1
/* B17548 800A03A8 240D0020 */  li    $t5, 32
/* B1754C 800A03AC 314701FF */  andi  $a3, $t2, 0x1ff
/* B17550 800A03B0 AFA70020 */  sw    $a3, 0x20($sp)
/* B17554 800A03B4 AFAD0024 */  sw    $t5, 0x24($sp)
/* B17558 800A03B8 AFAC0018 */  sw    $t4, 0x18($sp)
/* B1755C 800A03BC AFAB0014 */  sw    $t3, 0x14($sp)
/* B17560 800A03C0 AFB90010 */  sw    $t9, 0x10($sp)
/* B17564 800A03C4 AFAE0028 */  sw    $t6, 0x28($sp)
/* B17568 800A03C8 AFA6004C */  sw    $a2, 0x4c($sp)
/* B1756C 800A03CC AFA3001C */  sw    $v1, 0x1c($sp)
/* B17570 800A03D0 AFA30050 */  sw    $v1, 0x50($sp)
/* B17574 800A03D4 00002825 */  move  $a1, $zero
/* B17578 800A03D8 AFA2006C */  sw    $v0, 0x6c($sp)
/* B1757C 800A03DC 0C0253D0 */  jal   func_80094F40
/* B17580 800A03E0 AFAA0048 */   sw    $t2, 0x48($sp)
/* B17584 800A03E4 8FA9006C */  lw    $t1, 0x6c($sp)
/* B17588 800A03E8 8FA30050 */  lw    $v1, 0x50($sp)
/* B1758C 800A03EC 8FAA0048 */  lw    $t2, 0x48($sp)
/* B17590 800A03F0 AD220004 */  sw    $v0, 4($t1)
/* B17594 800A03F4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B17598 800A03F8 3C18DB06 */  lui   $t8, (0xDB060024 >> 16) # lui $t8, 0xdb06
/* B1759C 800A03FC 37180024 */  ori   $t8, (0xDB060024 & 0xFFFF) # ori $t8, $t8, 0x24
/* B175A0 800A0400 244F0008 */  addiu $t7, $v0, 8
/* B175A4 800A0404 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B175A8 800A0408 AC580000 */  sw    $t8, ($v0)
/* B175AC 800A040C 8E240000 */  lw    $a0, ($s1)
/* B175B0 800A0410 24190020 */  li    $t9, 32
/* B175B4 800A0414 240B0020 */  li    $t3, 32
/* B175B8 800A0418 240C0001 */  li    $t4, 1
/* B175BC 800A041C 240D0020 */  li    $t5, 32
/* B175C0 800A0420 240E0020 */  li    $t6, 32
/* B175C4 800A0424 3147007F */  andi  $a3, $t2, 0x7f
/* B175C8 800A0428 AFA70020 */  sw    $a3, 0x20($sp)
/* B175CC 800A042C AFA70044 */  sw    $a3, 0x44($sp)
/* B175D0 800A0430 AFAE0028 */  sw    $t6, 0x28($sp)
/* B175D4 800A0434 AFAD0024 */  sw    $t5, 0x24($sp)
/* B175D8 800A0438 AFAC0018 */  sw    $t4, 0x18($sp)
/* B175DC 800A043C AFAB0014 */  sw    $t3, 0x14($sp)
/* B175E0 800A0440 AFB90010 */  sw    $t9, 0x10($sp)
/* B175E4 800A0444 8FA6004C */  lw    $a2, 0x4c($sp)
/* B175E8 800A0448 00002825 */  move  $a1, $zero
/* B175EC 800A044C AFA30050 */  sw    $v1, 0x50($sp)
/* B175F0 800A0450 AFA3001C */  sw    $v1, 0x1c($sp)
/* B175F4 800A0454 0C0253D0 */  jal   func_80094F40
/* B175F8 800A0458 AFA20068 */   sw    $v0, 0x68($sp)
/* B175FC 800A045C 8FA80068 */  lw    $t0, 0x68($sp)
/* B17600 800A0460 8FA30050 */  lw    $v1, 0x50($sp)
/* B17604 800A0464 8FA70044 */  lw    $a3, 0x44($sp)
/* B17608 800A0468 AD020004 */  sw    $v0, 4($t0)
/* B1760C 800A046C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B17610 800A0470 3C18DB06 */  lui   $t8, (0xDB060028 >> 16) # lui $t8, 0xdb06
/* B17614 800A0474 37180028 */  ori   $t8, (0xDB060028 & 0xFFFF) # ori $t8, $t8, 0x28
/* B17618 800A0478 244F0008 */  addiu $t7, $v0, 8
/* B1761C 800A047C AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B17620 800A0480 AC580000 */  sw    $t8, ($v0)
/* B17624 800A0484 8E240000 */  lw    $a0, ($s1)
/* B17628 800A0488 24190020 */  li    $t9, 32
/* B1762C 800A048C 240B0020 */  li    $t3, 32
/* B17630 800A0490 240C0001 */  li    $t4, 1
/* B17634 800A0494 240D0020 */  li    $t5, 32
/* B17638 800A0498 240E0020 */  li    $t6, 32
/* B1763C 800A049C AFAE0028 */  sw    $t6, 0x28($sp)
/* B17640 800A04A0 AFAD0024 */  sw    $t5, 0x24($sp)
/* B17644 800A04A4 AFAC0018 */  sw    $t4, 0x18($sp)
/* B17648 800A04A8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B1764C 800A04AC AFB90010 */  sw    $t9, 0x10($sp)
/* B17650 800A04B0 8FA6004C */  lw    $a2, 0x4c($sp)
/* B17654 800A04B4 00002825 */  move  $a1, $zero
/* B17658 800A04B8 AFA3001C */  sw    $v1, 0x1c($sp)
/* B1765C 800A04BC AFA70020 */  sw    $a3, 0x20($sp)
/* B17660 800A04C0 0C0253D0 */  jal   func_80094F40
/* B17664 800A04C4 AFA20064 */   sw    $v0, 0x64($sp)
/* B17668 800A04C8 8FA80064 */  lw    $t0, 0x64($sp)
/* B1766C 800A04CC 3C04E700 */  lui   $a0, 0xe700
/* B17670 800A04D0 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B17674 800A04D4 AD020004 */  sw    $v0, 4($t0)
/* B17678 800A04D8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B1767C 800A04DC 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B17680 800A04E0 3C05FB00 */  lui   $a1, 0xfb00
/* B17684 800A04E4 244F0008 */  addiu $t7, $v0, 8
/* B17688 800A04E8 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B1768C 800A04EC AC400004 */  sw    $zero, 4($v0)
/* B17690 800A04F0 AC440000 */  sw    $a0, ($v0)
/* B17694 800A04F4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B17698 800A04F8 24071EAC */  li    $a3, 7852
/* B1769C 800A04FC 24580008 */  addiu $t8, $v0, 8
/* B176A0 800A0500 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B176A4 800A0504 AC460004 */  sw    $a2, 4($v0)
/* B176A8 800A0508 AC450000 */  sw    $a1, ($v0)
/* B176AC 800A050C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B176B0 800A0510 24590008 */  addiu $t9, $v0, 8
/* B176B4 800A0514 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B176B8 800A0518 AC400004 */  sw    $zero, 4($v0)
/* B176BC 800A051C AC440000 */  sw    $a0, ($v0)
/* B176C0 800A0520 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B176C4 800A0524 27A40070 */  addiu $a0, $sp, 0x70
/* B176C8 800A0528 244B0008 */  addiu $t3, $v0, 8
/* B176CC 800A052C AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B176D0 800A0530 AC460004 */  sw    $a2, 4($v0)
/* B176D4 800A0534 3C068014 */  lui   $a2, %hi(D_8013FEB0) # $a2, 0x8014
/* B176D8 800A0538 AC450000 */  sw    $a1, ($v0)
/* B176DC 800A053C 8E250000 */  lw    $a1, ($s1)
/* B176E0 800A0540 0C031AD5 */  jal   func_800C6B54
/* B176E4 800A0544 24C6FEB0 */   addiu $a2, %lo(D_8013FEB0) # addiu $a2, $a2, -0x150
/* B176E8 800A0548 8FBF003C */  lw    $ra, 0x3c($sp)
/* B176EC 800A054C 8FB00034 */  lw    $s0, 0x34($sp)
/* B176F0 800A0550 8FB10038 */  lw    $s1, 0x38($sp)
/* B176F4 800A0554 03E00008 */  jr    $ra
/* B176F8 800A0558 27BD0088 */   addiu $sp, $sp, 0x88

/* B176FC 800A055C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B17700 800A0560 AFBF0014 */  sw    $ra, 0x14($sp)
/* B17704 800A0564 0C026FBB */  jal   func_8009BEEC
/* B17708 800A0568 00000000 */   nop   
/* B1770C 800A056C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B17710 800A0570 27BD0018 */  addiu $sp, $sp, 0x18
/* B17714 800A0574 03E00008 */  jr    $ra
/* B17718 800A0578 00000000 */   nop   

/* B1771C 800A057C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B17720 800A0580 AFBF0014 */  sw    $ra, 0x14($sp)
/* B17724 800A0584 0C026FBB */  jal   func_8009BEEC
/* B17728 800A0588 00000000 */   nop   
/* B1772C 800A058C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B17730 800A0590 27BD0018 */  addiu $sp, $sp, 0x18
/* B17734 800A0594 03E00008 */  jr    $ra
/* B17738 800A0598 00000000 */   nop   

/* B1773C 800A059C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B17740 800A05A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B17744 800A05A4 AFB10020 */  sw    $s1, 0x20($sp)
/* B17748 800A05A8 AFB0001C */  sw    $s0, 0x1c($sp)
/* B1774C 800A05AC 8C850000 */  lw    $a1, ($a0)
/* B17750 800A05B0 00808825 */  move  $s1, $a0
/* B17754 800A05B4 3C068014 */  lui   $a2, %hi(D_8013FEC4) # $a2, 0x8014
/* B17758 800A05B8 24C6FEC4 */  addiu $a2, %lo(D_8013FEC4) # addiu $a2, $a2, -0x13c
/* B1775C 800A05BC 27A40048 */  addiu $a0, $sp, 0x48
/* B17760 800A05C0 24071ED5 */  li    $a3, 7893
/* B17764 800A05C4 0C031AB1 */  jal   func_800C6AC4
/* B17768 800A05C8 00A08025 */   move  $s0, $a1
/* B1776C 800A05CC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B17770 800A05D0 3C090001 */  lui   $t1, 1
/* B17774 800A05D4 01314821 */  addu  $t1, $t1, $s1
/* B17778 800A05D8 8D291DE4 */  lw    $t1, 0x1de4($t1)
/* B1777C 800A05DC 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* B17780 800A05E0 244E0008 */  addiu $t6, $v0, 8
/* B17784 800A05E4 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B17788 800A05E8 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* B1778C 800A05EC AC4F0000 */  sw    $t7, ($v0)
/* B17790 800A05F0 8E240000 */  lw    $a0, ($s1)
/* B17794 800A05F4 00094040 */  sll   $t0, $t1, 1
/* B17798 800A05F8 3118007F */  andi  $t8, $t0, 0x7f
/* B1779C 800A05FC 2419007F */  li    $t9, 127
/* B177A0 800A0600 240A0040 */  li    $t2, 64
/* B177A4 800A0604 AFAA0010 */  sw    $t2, 0x10($sp)
/* B177A8 800A0608 03382823 */  subu  $a1, $t9, $t8
/* B177AC 800A060C AFA8002C */  sw    $t0, 0x2c($sp)
/* B177B0 800A0610 00003025 */  move  $a2, $zero
/* B177B4 800A0614 24070020 */  li    $a3, 32
/* B177B8 800A0618 0C0253A7 */  jal   func_80094E9C
/* B177BC 800A061C AFA20044 */   sw    $v0, 0x44($sp)
/* B177C0 800A0620 8FA30044 */  lw    $v1, 0x44($sp)
/* B177C4 800A0624 8FA8002C */  lw    $t0, 0x2c($sp)
/* B177C8 800A0628 3C0CDB06 */  lui   $t4, (0xDB060024 >> 16) # lui $t4, 0xdb06
/* B177CC 800A062C AC620004 */  sw    $v0, 4($v1)
/* B177D0 800A0630 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B177D4 800A0634 358C0024 */  ori   $t4, (0xDB060024 & 0xFFFF) # ori $t4, $t4, 0x24
/* B177D8 800A0638 240D0080 */  li    $t5, 128
/* B177DC 800A063C 244B0008 */  addiu $t3, $v0, 8
/* B177E0 800A0640 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B177E4 800A0644 AC4C0000 */  sw    $t4, ($v0)
/* B177E8 800A0648 8E240000 */  lw    $a0, ($s1)
/* B177EC 800A064C AFAD0010 */  sw    $t5, 0x10($sp)
/* B177F0 800A0650 00002825 */  move  $a1, $zero
/* B177F4 800A0654 24070080 */  li    $a3, 128
/* B177F8 800A0658 310601FF */  andi  $a2, $t0, 0x1ff
/* B177FC 800A065C 0C0253A7 */  jal   func_80094E9C
/* B17800 800A0660 AFA20040 */   sw    $v0, 0x40($sp)
/* B17804 800A0664 8FA30040 */  lw    $v1, 0x40($sp)
/* B17808 800A0668 3C04E700 */  lui   $a0, 0xe700
/* B1780C 800A066C 3C068080 */  lui   $a2, (0x80808080 >> 16) # lui $a2, 0x8080
/* B17810 800A0670 AC620004 */  sw    $v0, 4($v1)
/* B17814 800A0674 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B17818 800A0678 34C68080 */  ori   $a2, (0x80808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* B1781C 800A067C 3C05FB00 */  lui   $a1, 0xfb00
/* B17820 800A0680 244E0008 */  addiu $t6, $v0, 8
/* B17824 800A0684 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B17828 800A0688 AC400004 */  sw    $zero, 4($v0)
/* B1782C 800A068C AC440000 */  sw    $a0, ($v0)
/* B17830 800A0690 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B17834 800A0694 24071EE6 */  li    $a3, 7910
/* B17838 800A0698 244F0008 */  addiu $t7, $v0, 8
/* B1783C 800A069C AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B17840 800A06A0 AC460004 */  sw    $a2, 4($v0)
/* B17844 800A06A4 AC450000 */  sw    $a1, ($v0)
/* B17848 800A06A8 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B1784C 800A06AC 24790008 */  addiu $t9, $v1, 8
/* B17850 800A06B0 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B17854 800A06B4 AC600004 */  sw    $zero, 4($v1)
/* B17858 800A06B8 AC640000 */  sw    $a0, ($v1)
/* B1785C 800A06BC 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B17860 800A06C0 27A40048 */  addiu $a0, $sp, 0x48
/* B17864 800A06C4 24780008 */  addiu $t8, $v1, 8
/* B17868 800A06C8 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* B1786C 800A06CC AC660004 */  sw    $a2, 4($v1)
/* B17870 800A06D0 3C068014 */  lui   $a2, %hi(D_8013FED8) # $a2, 0x8014
/* B17874 800A06D4 AC650000 */  sw    $a1, ($v1)
/* B17878 800A06D8 8E250000 */  lw    $a1, ($s1)
/* B1787C 800A06DC 0C031AD5 */  jal   func_800C6B54
/* B17880 800A06E0 24C6FED8 */   addiu $a2, %lo(D_8013FED8) # addiu $a2, $a2, -0x128
/* B17884 800A06E4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B17888 800A06E8 8FB0001C */  lw    $s0, 0x1c($sp)
/* B1788C 800A06EC 8FB10020 */  lw    $s1, 0x20($sp)
/* B17890 800A06F0 03E00008 */  jr    $ra
/* B17894 800A06F4 27BD0060 */   addiu $sp, $sp, 0x60

glabel func_800A06F8
/* B17898 800A06F8 3C028016 */  lui   $v0, %hi(D_8015FA90) # $v0, 0x8016
/* B1789C 800A06FC 2442FA90 */  addiu $v0, %lo(D_8015FA90) # addiu $v0, $v0, -0x570
/* B178A0 800A0700 8C430000 */  lw    $v1, ($v0)
/* B178A4 800A0704 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B178A8 800A0708 AFBF001C */  sw    $ra, 0x1c($sp)
/* B178AC 800A070C AFB00018 */  sw    $s0, 0x18($sp)
/* B178B0 800A0710 846E1074 */  lh    $t6, 0x1074($v1)
/* B178B4 800A0714 00808025 */  move  $s0, $a0
/* B178B8 800A0718 24050011 */  li    $a1, 17
/* B178BC 800A071C 14AE0053 */  bne   $a1, $t6, .L800A086C
/* B178C0 800A0720 27A40034 */   addiu $a0, $sp, 0x34
/* B178C4 800A0724 846F1092 */  lh    $t7, 0x1092($v1)
/* B178C8 800A0728 3C068014 */  lui   $a2, %hi(D_8013FEEC) # $a2, 0x8014
/* B178CC 800A072C 24C6FEEC */  addiu $a2, %lo(D_8013FEEC) # addiu $a2, $a2, -0x114
/* B178D0 800A0730 50AF001F */  beql  $a1, $t7, .L800A07B0
/* B178D4 800A0734 8E050000 */   lw    $a1, ($s0)
/* B178D8 800A0738 A4651092 */  sh    $a1, 0x1092($v1)
/* B178DC 800A073C 8C590000 */  lw    $t9, ($v0)
/* B178E0 800A0740 24180001 */  li    $t8, 1
/* B178E4 800A0744 24090001 */  li    $t1, 1
/* B178E8 800A0748 A7381076 */  sh    $t8, 0x1076($t9)
/* B178EC 800A074C 8C4A0000 */  lw    $t2, ($v0)
/* B178F0 800A0750 A5491078 */  sh    $t1, 0x1078($t2)
/* B178F4 800A0754 8C4B0000 */  lw    $t3, ($v0)
/* B178F8 800A0758 A560107A */  sh    $zero, 0x107a($t3)
/* B178FC 800A075C 8C4C0000 */  lw    $t4, ($v0)
/* B17900 800A0760 A580107C */  sh    $zero, 0x107c($t4)
/* B17904 800A0764 8C4D0000 */  lw    $t5, ($v0)
/* B17908 800A0768 A5A0107E */  sh    $zero, 0x107e($t5)
/* B1790C 800A076C 8C4E0000 */  lw    $t6, ($v0)
/* B17910 800A0770 A5C01080 */  sh    $zero, 0x1080($t6)
/* B17914 800A0774 8C4F0000 */  lw    $t7, ($v0)
/* B17918 800A0778 A5E01082 */  sh    $zero, 0x1082($t7)
/* B1791C 800A077C 8C580000 */  lw    $t8, ($v0)
/* B17920 800A0780 A7001084 */  sh    $zero, 0x1084($t8)
/* B17924 800A0784 8C590000 */  lw    $t9, ($v0)
/* B17928 800A0788 A7201086 */  sh    $zero, 0x1086($t9)
/* B1792C 800A078C 8C490000 */  lw    $t1, ($v0)
/* B17930 800A0790 A520108A */  sh    $zero, 0x108a($t1)
/* B17934 800A0794 8C4A0000 */  lw    $t2, ($v0)
/* B17938 800A0798 A540108C */  sh    $zero, 0x108c($t2)
/* B1793C 800A079C 8C4B0000 */  lw    $t3, ($v0)
/* B17940 800A07A0 A560108E */  sh    $zero, 0x108e($t3)
/* B17944 800A07A4 8C4C0000 */  lw    $t4, ($v0)
/* B17948 800A07A8 A5801090 */  sh    $zero, 0x1090($t4)
/* B1794C 800A07AC 8E050000 */  lw    $a1, ($s0)
.L800A07B0:
/* B17950 800A07B0 24071FA8 */  li    $a3, 8104
/* B17954 800A07B4 0C031AB1 */  jal   func_800C6AC4
/* B17958 800A07B8 AFA50044 */   sw    $a1, 0x44($sp)
/* B1795C 800A07BC 3C028016 */  lui   $v0, %hi(D_8015FA90) # $v0, 0x8016
/* B17960 800A07C0 2442FA90 */  addiu $v0, %lo(D_8015FA90) # addiu $v0, $v0, -0x570
/* B17964 800A07C4 8C4D0000 */  lw    $t5, ($v0)
/* B17968 800A07C8 24010001 */  li    $at, 1
/* B1796C 800A07CC 8FA80044 */  lw    $t0, 0x44($sp)
/* B17970 800A07D0 85AE1076 */  lh    $t6, 0x1076($t5)
/* B17974 800A07D4 3C06DE00 */  lui   $a2, 0xde00
/* B17978 800A07D8 24071FAD */  li    $a3, 8109
/* B1797C 800A07DC 15C1000D */  bne   $t6, $at, .L800A0814
/* B17980 800A07E0 00000000 */   nop   
/* B17984 800A07E4 8D0402C0 */  lw    $a0, 0x2c0($t0)
/* B17988 800A07E8 3C058013 */  lui   $a1, %hi(D_8012A2A8) # $a1, 0x8013
/* B1798C 800A07EC 24A5A2A8 */  addiu $a1, %lo(D_8012A2A8) # addiu $a1, $a1, -0x5d58
/* B17990 800A07F0 248F0008 */  addiu $t7, $a0, 8
/* B17994 800A07F4 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B17998 800A07F8 AC850004 */  sw    $a1, 4($a0)
/* B1799C 800A07FC AC860000 */  sw    $a2, ($a0)
/* B179A0 800A0800 8D0402D0 */  lw    $a0, 0x2d0($t0)
/* B179A4 800A0804 24980008 */  addiu $t8, $a0, 8
/* B179A8 800A0808 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B179AC 800A080C AC850004 */  sw    $a1, 4($a0)
/* B179B0 800A0810 AC860000 */  sw    $a2, ($a0)
.L800A0814:
/* B179B4 800A0814 3C068014 */  lui   $a2, %hi(D_8013FF00) # $a2, 0x8014
/* B179B8 800A0818 24C6FF00 */  addiu $a2, %lo(D_8013FF00) # addiu $a2, $a2, -0x100
/* B179BC 800A081C 27A40034 */  addiu $a0, $sp, 0x34
/* B179C0 800A0820 0C031AD5 */  jal   func_800C6B54
/* B179C4 800A0824 8E050000 */   lw    $a1, ($s0)
/* B179C8 800A0828 3C028016 */  lui   $v0, %hi(D_8015FA90) # $v0, 0x8016
/* B179CC 800A082C 2442FA90 */  addiu $v0, %lo(D_8015FA90) # addiu $v0, $v0, -0x570
/* B179D0 800A0830 8C590000 */  lw    $t9, ($v0)
/* B179D4 800A0834 24010001 */  li    $at, 1
/* B179D8 800A0838 87291078 */  lh    $t1, 0x1078($t9)
/* B179DC 800A083C 55210014 */  bnel  $t1, $at, .L800A0890
/* B179E0 800A0840 8FBF001C */   lw    $ra, 0x1c($sp)
/* B179E4 800A0844 920A00A6 */  lbu   $t2, 0xa6($s0)
/* B179E8 800A0848 3C198013 */  lui   $t9, 0x8013
/* B179EC 800A084C 02002025 */  move  $a0, $s0
/* B179F0 800A0850 000A5880 */  sll   $t3, $t2, 2
/* B179F4 800A0854 032BC821 */  addu  $t9, $t9, $t3
/* B179F8 800A0858 8F39A3A4 */  lw    $t9, -0x5c5c($t9)
/* B179FC 800A085C 0320F809 */  jalr  $t9
/* B17A00 800A0860 00000000 */  nop   
/* B17A04 800A0864 1000000A */  b     .L800A0890
/* B17A08 800A0868 8FBF001C */   lw    $ra, 0x1c($sp)
.L800A086C:
/* B17A0C 800A086C 920C00A6 */  lbu   $t4, 0xa6($s0)
/* B17A10 800A0870 3C198013 */  lui   $t9, 0x8013
/* B17A14 800A0874 02002025 */  move  $a0, $s0
/* B17A18 800A0878 000C6880 */  sll   $t5, $t4, 2
/* B17A1C 800A087C 032DC821 */  addu  $t9, $t9, $t5
/* B17A20 800A0880 8F39A3A4 */  lw    $t9, -0x5c5c($t9)
/* B17A24 800A0884 0320F809 */  jalr  $t9
/* B17A28 800A0888 00000000 */  nop   
/* B17A2C 800A088C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A0890:
/* B17A30 800A0890 8FB00018 */  lw    $s0, 0x18($sp)
/* B17A34 800A0894 27BD0048 */  addiu $sp, $sp, 0x48
/* B17A38 800A0898 03E00008 */  jr    $ra
/* B17A3C 800A089C 00000000 */   nop   

glabel func_800A08A0
/* B17A40 800A08A0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B17A44 800A08A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B17A48 800A08A8 AFA40068 */  sw    $a0, 0x68($sp)
/* B17A4C 800A08AC AFA5006C */  sw    $a1, 0x6c($sp)
/* B17A50 800A08B0 AFA60070 */  sw    $a2, 0x70($sp)
/* B17A54 800A08B4 AFA70074 */  sw    $a3, 0x74($sp)
/* B17A58 800A08B8 8C850000 */  lw    $a1, ($a0)
/* B17A5C 800A08BC 3C068014 */  lui   $a2, %hi(D_8013FF50) # $a2, 0x8014
/* B17A60 800A08C0 24C6FF50 */  addiu $a2, %lo(D_8013FF50) # addiu $a2, $a2, -0xb0
/* B17A64 800A08C4 27A40038 */  addiu $a0, $sp, 0x38
/* B17A68 800A08C8 24070305 */  li    $a3, 773
/* B17A6C 800A08CC 0C031AB1 */  jal   func_800C6AC4
/* B17A70 800A08D0 AFA50048 */   sw    $a1, 0x48($sp)
/* B17A74 800A08D4 0C034213 */  jal   func_800D084C
/* B17A78 800A08D8 00000000 */   nop   
/* B17A7C 800A08DC 8FB8006C */  lw    $t8, 0x6c($sp)
/* B17A80 800A08E0 8FAF0070 */  lw    $t7, 0x70($sp)
/* B17A84 800A08E4 3C0E8016 */  lui   $t6, 0x8016
/* B17A88 800A08E8 0018C880 */  sll   $t9, $t8, 2
/* B17A8C 800A08EC 01F94821 */  addu  $t1, $t7, $t9
/* B17A90 800A08F0 8D220000 */  lw    $v0, ($t1)
/* B17A94 800A08F4 270F0001 */  addiu $t7, $t8, 1
/* B17A98 800A08F8 8FA90074 */  lw    $t1, 0x74($sp)
/* B17A9C 800A08FC 00025900 */  sll   $t3, $v0, 4
/* B17AA0 800A0900 000B6702 */  srl   $t4, $t3, 0x1c
/* B17AA4 800A0904 000C6880 */  sll   $t5, $t4, 2
/* B17AA8 800A0908 01CD7021 */  addu  $t6, $t6, $t5
/* B17AAC 800A090C 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B17AB0 800A0910 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17AB4 800A0914 000F5880 */  sll   $t3, $t7, 2
/* B17AB8 800A0918 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17ABC 800A091C 016F5823 */  subu  $t3, $t3, $t7
/* B17AC0 800A0920 000B5840 */  sll   $t3, $t3, 1
/* B17AC4 800A0924 00415024 */  and   $t2, $v0, $at
/* B17AC8 800A0928 AFAF006C */  sw    $t7, 0x6c($sp)
/* B17ACC 800A092C 012B6021 */  addu  $t4, $t1, $t3
/* B17AD0 800A0930 014E4021 */  addu  $t0, $t2, $t6
/* B17AD4 800A0934 898A0000 */  lwl   $t2, ($t4)
/* B17AD8 800A0938 998A0003 */  lwr   $t2, 3($t4)
/* B17ADC 800A093C 27B9004C */  addiu $t9, $sp, 0x4c
/* B17AE0 800A0940 3C018000 */  lui   $at, 0x8000
/* B17AE4 800A0944 AF2A0000 */  sw    $t2, ($t9)
/* B17AE8 800A0948 958A0004 */  lhu   $t2, 4($t4)
/* B17AEC 800A094C 01014021 */  addu  $t0, $t0, $at
/* B17AF0 800A0950 27A60060 */  addiu $a2, $sp, 0x60
/* B17AF4 800A0954 A72A0004 */  sh    $t2, 4($t9)
/* B17AF8 800A0958 850E0000 */  lh    $t6, ($t0)
/* B17AFC 800A095C 8FA90084 */  lw    $t1, 0x84($sp)
/* B17B00 800A0960 8FAD0078 */  lw    $t5, 0x78($sp)
/* B17B04 800A0964 448E2000 */  mtc1  $t6, $f4
/* B17B08 800A0968 00095880 */  sll   $t3, $t1, 2
/* B17B0C 800A096C 010BC821 */  addu  $t9, $t0, $t3
/* B17B10 800A0970 468021A0 */  cvt.s.w $f6, $f4
/* B17B14 800A0974 8FA5006C */  lw    $a1, 0x6c($sp)
/* B17B18 800A0978 8FA40068 */  lw    $a0, 0x68($sp)
/* B17B1C 800A097C 27AA004C */  addiu $t2, $sp, 0x4c
/* B17B20 800A0980 27A70054 */  addiu $a3, $sp, 0x54
/* B17B24 800A0984 E7A60054 */  swc1  $f6, 0x54($sp)
/* B17B28 800A0988 85180002 */  lh    $t8, 2($t0)
/* B17B2C 800A098C 44984000 */  mtc1  $t8, $f8
/* B17B30 800A0990 00000000 */  nop   
/* B17B34 800A0994 468042A0 */  cvt.s.w $f10, $f8
/* B17B38 800A0998 E7AA0058 */  swc1  $f10, 0x58($sp)
/* B17B3C 800A099C 850F0004 */  lh    $t7, 4($t0)
/* B17B40 800A09A0 448F8000 */  mtc1  $t7, $f16
/* B17B44 800A09A4 00000000 */  nop   
/* B17B48 800A09A8 468084A0 */  cvt.s.w $f18, $f16
/* B17B4C 800A09AC E7B2005C */  swc1  $f18, 0x5c($sp)
/* B17B50 800A09B0 8F2C0008 */  lw    $t4, 8($t9)
/* B17B54 800A09B4 11A00008 */  beqz  $t5, .L800A09D8
/* B17B58 800A09B8 AFAC0060 */   sw    $t4, 0x60($sp)
/* B17B5C 800A09BC 8FAE0080 */  lw    $t6, 0x80($sp)
/* B17B60 800A09C0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B17B64 800A09C4 AFA80064 */  sw    $t0, 0x64($sp)
/* B17B68 800A09C8 01A0F809 */  jalr  $t5
/* B17B6C 800A09CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B17B70 800A09D0 14400022 */  bnez  $v0, .L800A0A5C
/* B17B74 800A09D4 8FA80064 */   lw    $t0, 0x64($sp)
.L800A09D8:
/* B17B78 800A09D8 27A40054 */  addiu $a0, $sp, 0x54
/* B17B7C 800A09DC 27A5004C */  addiu $a1, $sp, 0x4c
/* B17B80 800A09E0 0C0344D0 */  jal   func_800D1340
/* B17B84 800A09E4 AFA80064 */   sw    $t0, 0x64($sp)
/* B17B88 800A09E8 8FB80060 */  lw    $t8, 0x60($sp)
/* B17B8C 800A09EC 8FA80064 */  lw    $t0, 0x64($sp)
/* B17B90 800A09F0 8FA70048 */  lw    $a3, 0x48($sp)
/* B17B94 800A09F4 13000019 */  beqz  $t8, .L800A0A5C
/* B17B98 800A09F8 3C09DA38 */   lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B17B9C 800A09FC 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B17BA0 800A0A00 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B17BA4 800A0A04 3C058014 */  lui   $a1, %hi(D_8013FF64) # $a1, 0x8014
/* B17BA8 800A0A08 244F0008 */  addiu $t7, $v0, 8
/* B17BAC 800A0A0C ACEF02C0 */  sw    $t7, 0x2c0($a3)
/* B17BB0 800A0A10 AC490000 */  sw    $t1, ($v0)
/* B17BB4 800A0A14 8FAB0068 */  lw    $t3, 0x68($sp)
/* B17BB8 800A0A18 24A5FF64 */  addiu $a1, %lo(D_8013FF64) # addiu $a1, $a1, -0x9c
/* B17BBC 800A0A1C 24060325 */  li    $a2, 805
/* B17BC0 800A0A20 8D640000 */  lw    $a0, ($t3)
/* B17BC4 800A0A24 AFA80064 */  sw    $t0, 0x64($sp)
/* B17BC8 800A0A28 0C0346A2 */  jal   func_800D1A88
/* B17BCC 800A0A2C AFA20034 */   sw    $v0, 0x34($sp)
/* B17BD0 800A0A30 8FA30034 */  lw    $v1, 0x34($sp)
/* B17BD4 800A0A34 8FA80064 */  lw    $t0, 0x64($sp)
/* B17BD8 800A0A38 3C0ADE00 */  lui   $t2, 0xde00
/* B17BDC 800A0A3C AC620004 */  sw    $v0, 4($v1)
/* B17BE0 800A0A40 8FB90048 */  lw    $t9, 0x48($sp)
/* B17BE4 800A0A44 8F2202C0 */  lw    $v0, 0x2c0($t9)
/* B17BE8 800A0A48 244C0008 */  addiu $t4, $v0, 8
/* B17BEC 800A0A4C AF2C02C0 */  sw    $t4, 0x2c0($t9)
/* B17BF0 800A0A50 AC4A0000 */  sw    $t2, ($v0)
/* B17BF4 800A0A54 8FAE0060 */  lw    $t6, 0x60($sp)
/* B17BF8 800A0A58 AC4E0004 */  sw    $t6, 4($v0)
.L800A0A5C:
/* B17BFC 800A0A5C 8FAD007C */  lw    $t5, 0x7c($sp)
/* B17C00 800A0A60 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C04 800A0A64 8FA5006C */  lw    $a1, 0x6c($sp)
/* B17C08 800A0A68 11A00007 */  beqz  $t5, .L800A0A88
/* B17C0C 800A0A6C 27A60060 */   addiu $a2, $sp, 0x60
/* B17C10 800A0A70 8FB80080 */  lw    $t8, 0x80($sp)
/* B17C14 800A0A74 27A7004C */  addiu $a3, $sp, 0x4c
/* B17C18 800A0A78 AFA80064 */  sw    $t0, 0x64($sp)
/* B17C1C 800A0A7C 01A0F809 */  jalr  $t5
/* B17C20 800A0A80 AFB80010 */  sw    $t8, 0x10($sp)
/* B17C24 800A0A84 8FA80064 */  lw    $t0, 0x64($sp)
.L800A0A88:
/* B17C28 800A0A88 91050006 */  lbu   $a1, 6($t0)
/* B17C2C 800A0A8C 240100FF */  li    $at, 255
/* B17C30 800A0A90 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C34 800A0A94 10A1000D */  beq   $a1, $at, .L800A0ACC
/* B17C38 800A0A98 8FA60070 */   lw    $a2, 0x70($sp)
/* B17C3C 800A0A9C 8FAF0078 */  lw    $t7, 0x78($sp)
/* B17C40 800A0AA0 8FA9007C */  lw    $t1, 0x7c($sp)
/* B17C44 800A0AA4 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17C48 800A0AA8 8FAC0084 */  lw    $t4, 0x84($sp)
/* B17C4C 800A0AAC 8FA70074 */  lw    $a3, 0x74($sp)
/* B17C50 800A0AB0 AFA80064 */  sw    $t0, 0x64($sp)
/* B17C54 800A0AB4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B17C58 800A0AB8 AFA90014 */  sw    $t1, 0x14($sp)
/* B17C5C 800A0ABC AFAB0018 */  sw    $t3, 0x18($sp)
/* B17C60 800A0AC0 0C028228 */  jal   func_800A08A0
/* B17C64 800A0AC4 AFAC001C */   sw    $t4, 0x1c($sp)
/* B17C68 800A0AC8 8FA80064 */  lw    $t0, 0x64($sp)
.L800A0ACC:
/* B17C6C 800A0ACC 0C034221 */  jal   func_800D0884
/* B17C70 800A0AD0 AFA80064 */   sw    $t0, 0x64($sp)
/* B17C74 800A0AD4 8FA80064 */  lw    $t0, 0x64($sp)
/* B17C78 800A0AD8 240100FF */  li    $at, 255
/* B17C7C 800A0ADC 8FA40068 */  lw    $a0, 0x68($sp)
/* B17C80 800A0AE0 91050007 */  lbu   $a1, 7($t0)
/* B17C84 800A0AE4 8FA60070 */  lw    $a2, 0x70($sp)
/* B17C88 800A0AE8 8FA70074 */  lw    $a3, 0x74($sp)
/* B17C8C 800A0AEC 10A10009 */  beq   $a1, $at, .L800A0B14
/* B17C90 800A0AF0 8FB90078 */   lw    $t9, 0x78($sp)
/* B17C94 800A0AF4 8FAA007C */  lw    $t2, 0x7c($sp)
/* B17C98 800A0AF8 8FAE0080 */  lw    $t6, 0x80($sp)
/* B17C9C 800A0AFC 8FB80084 */  lw    $t8, 0x84($sp)
/* B17CA0 800A0B00 AFB90010 */  sw    $t9, 0x10($sp)
/* B17CA4 800A0B04 AFAA0014 */  sw    $t2, 0x14($sp)
/* B17CA8 800A0B08 AFAE0018 */  sw    $t6, 0x18($sp)
/* B17CAC 800A0B0C 0C028228 */  jal   func_800A08A0
/* B17CB0 800A0B10 AFB8001C */   sw    $t8, 0x1c($sp)
.L800A0B14:
/* B17CB4 800A0B14 8FAD0068 */  lw    $t5, 0x68($sp)
/* B17CB8 800A0B18 3C068014 */  lui   $a2, %hi(D_8013FF78) # $a2, 0x8014
/* B17CBC 800A0B1C 24C6FF78 */  addiu $a2, %lo(D_8013FF78) # addiu $a2, $a2, -0x88
/* B17CC0 800A0B20 27A40038 */  addiu $a0, $sp, 0x38
/* B17CC4 800A0B24 24070335 */  li    $a3, 821
/* B17CC8 800A0B28 0C031AD5 */  jal   func_800C6B54
/* B17CCC 800A0B2C 8DA50000 */   lw    $a1, ($t5)
/* B17CD0 800A0B30 8FBF0024 */  lw    $ra, 0x24($sp)
/* B17CD4 800A0B34 27BD0068 */  addiu $sp, $sp, 0x68
/* B17CD8 800A0B38 03E00008 */  jr    $ra
/* B17CDC 800A0B3C 00000000 */   nop   

/* B17CE0 800A0B40 27BDFF98 */  addiu $sp, $sp, -0x68
/* B17CE4 800A0B44 AFBF0024 */  sw    $ra, 0x24($sp)
/* B17CE8 800A0B48 AFA40068 */  sw    $a0, 0x68($sp)
/* B17CEC 800A0B4C AFA5006C */  sw    $a1, 0x6c($sp)
/* B17CF0 800A0B50 AFA60070 */  sw    $a2, 0x70($sp)
/* B17CF4 800A0B54 14A0000C */  bnez  $a1, .L800A0B88
/* B17CF8 800A0B58 AFA70074 */   sw    $a3, 0x74($sp)
/* B17CFC 800A0B5C 3C048014 */  lui   $a0, %hi(D_8013FF8C) # $a0, 0x8014
/* B17D00 800A0B60 0C00084C */  jal   DebugMessage
/* B17D04 800A0B64 2484FF8C */   addiu $a0, %lo(D_8013FF8C) # addiu $a0, $a0, -0x74
/* B17D08 800A0B68 3C048014 */  lui   $a0, %hi(D_8013FF94) # $a0, 0x8014
/* B17D0C 800A0B6C 0C00084C */  jal   DebugMessage
/* B17D10 800A0B70 2484FF94 */   addiu $a0, %lo(D_8013FF94) # addiu $a0, $a0, -0x6c
/* B17D14 800A0B74 3C048014 */  lui   $a0, %hi(D_8013FFB8) # $a0, 0x8014
/* B17D18 800A0B78 0C00084C */  jal   DebugMessage
/* B17D1C 800A0B7C 2484FFB8 */   addiu $a0, %lo(D_8013FFB8) # addiu $a0, $a0, -0x48
/* B17D20 800A0B80 10000081 */  b     .L800A0D88
/* B17D24 800A0B84 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A0B88:
/* B17D28 800A0B88 8FAF0068 */  lw    $t7, 0x68($sp)
/* B17D2C 800A0B8C 3C068014 */  lui   $a2, %hi(D_8013FFBC) # $a2, 0x8014
/* B17D30 800A0B90 24C6FFBC */  addiu $a2, %lo(D_8013FFBC) # addiu $a2, $a2, -0x44
/* B17D34 800A0B94 8DE50000 */  lw    $a1, ($t7)
/* B17D38 800A0B98 27A40034 */  addiu $a0, $sp, 0x34
/* B17D3C 800A0B9C 24070351 */  li    $a3, 849
/* B17D40 800A0BA0 0C031AB1 */  jal   func_800C6AC4
/* B17D44 800A0BA4 AFA50044 */   sw    $a1, 0x44($sp)
/* B17D48 800A0BA8 0C034213 */  jal   func_800D084C
/* B17D4C 800A0BAC 00000000 */   nop   
/* B17D50 800A0BB0 8FB8006C */  lw    $t8, 0x6c($sp)
/* B17D54 800A0BB4 3C0B8016 */  lui   $t3, 0x8016
/* B17D58 800A0BB8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17D5C 800A0BBC 8F020000 */  lw    $v0, ($t8)
/* B17D60 800A0BC0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17D64 800A0BC4 8FA30070 */  lw    $v1, 0x70($sp)
/* B17D68 800A0BC8 00024100 */  sll   $t0, $v0, 4
/* B17D6C 800A0BCC 00084F02 */  srl   $t1, $t0, 0x1c
/* B17D70 800A0BD0 00095080 */  sll   $t2, $t1, 2
/* B17D74 800A0BD4 016A5821 */  addu  $t3, $t3, $t2
/* B17D78 800A0BD8 8D6B6FA8 */  lw    $t3, 0x6fa8($t3)
/* B17D7C 800A0BDC 0041C824 */  and   $t9, $v0, $at
/* B17D80 800A0BE0 3C018000 */  lui   $at, 0x8000
/* B17D84 800A0BE4 032B6021 */  addu  $t4, $t9, $t3
/* B17D88 800A0BE8 01816821 */  addu  $t5, $t4, $at
/* B17D8C 800A0BEC AFAD0064 */  sw    $t5, 0x64($sp)
/* B17D90 800A0BF0 846E0000 */  lh    $t6, ($v1)
/* B17D94 800A0BF4 27A80048 */  addiu $t0, $sp, 0x48
/* B17D98 800A0BF8 24050001 */  li    $a1, 1
/* B17D9C 800A0BFC 448E2000 */  mtc1  $t6, $f4
/* B17DA0 800A0C00 27A6005C */  addiu $a2, $sp, 0x5c
/* B17DA4 800A0C04 27A70050 */  addiu $a3, $sp, 0x50
/* B17DA8 800A0C08 468021A0 */  cvt.s.w $f6, $f4
/* B17DAC 800A0C0C E7A60050 */  swc1  $f6, 0x50($sp)
/* B17DB0 800A0C10 846F0002 */  lh    $t7, 2($v1)
/* B17DB4 800A0C14 448F4000 */  mtc1  $t7, $f8
/* B17DB8 800A0C18 00000000 */  nop   
/* B17DBC 800A0C1C 468042A0 */  cvt.s.w $f10, $f8
/* B17DC0 800A0C20 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B17DC4 800A0C24 84780004 */  lh    $t8, 4($v1)
/* B17DC8 800A0C28 44988000 */  mtc1  $t8, $f16
/* B17DCC 800A0C2C 27B80048 */  addiu $t8, $sp, 0x48
/* B17DD0 800A0C30 468084A0 */  cvt.s.w $f18, $f16
/* B17DD4 800A0C34 E7B20058 */  swc1  $f18, 0x58($sp)
/* B17DD8 800A0C38 886A0006 */  lwl   $t2, 6($v1)
/* B17DDC 800A0C3C 986A0009 */  lwr   $t2, 9($v1)
/* B17DE0 800A0C40 AD0A0000 */  sw    $t2, ($t0)
/* B17DE4 800A0C44 946A000A */  lhu   $t2, 0xa($v1)
/* B17DE8 800A0C48 A50A0004 */  sh    $t2, 4($t0)
/* B17DEC 800A0C4C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17DF0 800A0C50 8FB90064 */  lw    $t9, 0x64($sp)
/* B17DF4 800A0C54 8FAF0074 */  lw    $t7, 0x74($sp)
/* B17DF8 800A0C58 000B6080 */  sll   $t4, $t3, 2
/* B17DFC 800A0C5C 032C6821 */  addu  $t5, $t9, $t4
/* B17E00 800A0C60 8DAE0008 */  lw    $t6, 8($t5)
/* B17E04 800A0C64 8FA40068 */  lw    $a0, 0x68($sp)
/* B17E08 800A0C68 11E00006 */  beqz  $t7, .L800A0C84
/* B17E0C 800A0C6C AFAE005C */   sw    $t6, 0x5c($sp)
/* B17E10 800A0C70 8FA8007C */  lw    $t0, 0x7c($sp)
/* B17E14 800A0C74 AFB80010 */  sw    $t8, 0x10($sp)
/* B17E18 800A0C78 01E0F809 */  jalr  $t7
/* B17E1C 800A0C7C AFA80014 */  sw    $t0, 0x14($sp)
/* B17E20 800A0C80 1440001E */  bnez  $v0, .L800A0CFC
.L800A0C84:
/* B17E24 800A0C84 27A40050 */   addiu $a0, $sp, 0x50
/* B17E28 800A0C88 0C0344D0 */  jal   func_800D1340
/* B17E2C 800A0C8C 27A50048 */   addiu $a1, $sp, 0x48
/* B17E30 800A0C90 8FA9005C */  lw    $t1, 0x5c($sp)
/* B17E34 800A0C94 8FA70044 */  lw    $a3, 0x44($sp)
/* B17E38 800A0C98 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* B17E3C 800A0C9C 51200018 */  beql  $t1, $zero, .L800A0D00
/* B17E40 800A0CA0 8FA20078 */   lw    $v0, 0x78($sp)
/* B17E44 800A0CA4 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B17E48 800A0CA8 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* B17E4C 800A0CAC 3C058014 */  lui   $a1, %hi(D_8013FFD0) # $a1, 0x8014
/* B17E50 800A0CB0 244A0008 */  addiu $t2, $v0, 8
/* B17E54 800A0CB4 ACEA02C0 */  sw    $t2, 0x2c0($a3)
/* B17E58 800A0CB8 AC4B0000 */  sw    $t3, ($v0)
/* B17E5C 800A0CBC 8FB90068 */  lw    $t9, 0x68($sp)
/* B17E60 800A0CC0 24A5FFD0 */  addiu $a1, %lo(D_8013FFD0) # addiu $a1, $a1, -0x30
/* B17E64 800A0CC4 24060371 */  li    $a2, 881
/* B17E68 800A0CC8 8F240000 */  lw    $a0, ($t9)
/* B17E6C 800A0CCC 0C0346A2 */  jal   func_800D1A88
/* B17E70 800A0CD0 AFA20030 */   sw    $v0, 0x30($sp)
/* B17E74 800A0CD4 8FA30030 */  lw    $v1, 0x30($sp)
/* B17E78 800A0CD8 3C0EDE00 */  lui   $t6, 0xde00
/* B17E7C 800A0CDC AC620004 */  sw    $v0, 4($v1)
/* B17E80 800A0CE0 8FAC0044 */  lw    $t4, 0x44($sp)
/* B17E84 800A0CE4 8D8202C0 */  lw    $v0, 0x2c0($t4)
/* B17E88 800A0CE8 244D0008 */  addiu $t5, $v0, 8
/* B17E8C 800A0CEC AD8D02C0 */  sw    $t5, 0x2c0($t4)
/* B17E90 800A0CF0 AC4E0000 */  sw    $t6, ($v0)
/* B17E94 800A0CF4 8FB8005C */  lw    $t8, 0x5c($sp)
/* B17E98 800A0CF8 AC580004 */  sw    $t8, 4($v0)
.L800A0CFC:
/* B17E9C 800A0CFC 8FA20078 */  lw    $v0, 0x78($sp)
.L800A0D00:
/* B17EA0 800A0D00 8FA40068 */  lw    $a0, 0x68($sp)
/* B17EA4 800A0D04 24050001 */  li    $a1, 1
/* B17EA8 800A0D08 10400006 */  beqz  $v0, .L800A0D24
/* B17EAC 800A0D0C 27A6005C */   addiu $a2, $sp, 0x5c
/* B17EB0 800A0D10 8FA8007C */  lw    $t0, 0x7c($sp)
/* B17EB4 800A0D14 27A70048 */  addiu $a3, $sp, 0x48
/* B17EB8 800A0D18 0040F809 */  jalr  $v0
/* B17EBC 800A0D1C AFA80010 */  sw    $t0, 0x10($sp)
/* B17EC0 800A0D20 8FA20078 */  lw    $v0, 0x78($sp)
.L800A0D24:
/* B17EC4 800A0D24 8FAF0064 */  lw    $t7, 0x64($sp)
/* B17EC8 800A0D28 240100FF */  li    $at, 255
/* B17ECC 800A0D2C 8FA40068 */  lw    $a0, 0x68($sp)
/* B17ED0 800A0D30 91E50006 */  lbu   $a1, 6($t7)
/* B17ED4 800A0D34 8FA6006C */  lw    $a2, 0x6c($sp)
/* B17ED8 800A0D38 8FA70070 */  lw    $a3, 0x70($sp)
/* B17EDC 800A0D3C 10A10008 */  beq   $a1, $at, .L800A0D60
/* B17EE0 800A0D40 8FA90074 */   lw    $t1, 0x74($sp)
/* B17EE4 800A0D44 8FAA007C */  lw    $t2, 0x7c($sp)
/* B17EE8 800A0D48 8FAB0080 */  lw    $t3, 0x80($sp)
/* B17EEC 800A0D4C AFA90010 */  sw    $t1, 0x10($sp)
/* B17EF0 800A0D50 AFA20014 */  sw    $v0, 0x14($sp)
/* B17EF4 800A0D54 AFAA0018 */  sw    $t2, 0x18($sp)
/* B17EF8 800A0D58 0C028228 */  jal   func_800A08A0
/* B17EFC 800A0D5C AFAB001C */   sw    $t3, 0x1c($sp)
.L800A0D60:
/* B17F00 800A0D60 0C034221 */  jal   func_800D0884
/* B17F04 800A0D64 00000000 */   nop   
/* B17F08 800A0D68 8FB90068 */  lw    $t9, 0x68($sp)
/* B17F0C 800A0D6C 3C068014 */  lui   $a2, %hi(D_8013FFE4) # $a2, 0x8014
/* B17F10 800A0D70 24C6FFE4 */  addiu $a2, %lo(D_8013FFE4) # addiu $a2, $a2, -0x1c
/* B17F14 800A0D74 27A40034 */  addiu $a0, $sp, 0x34
/* B17F18 800A0D78 2407037E */  li    $a3, 894
/* B17F1C 800A0D7C 0C031AD5 */  jal   func_800C6B54
/* B17F20 800A0D80 8F250000 */   lw    $a1, ($t9)
/* B17F24 800A0D84 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A0D88:
/* B17F28 800A0D88 27BD0068 */  addiu $sp, $sp, 0x68
/* B17F2C 800A0D8C 03E00008 */  jr    $ra
/* B17F30 800A0D90 00000000 */   nop   

glabel func_800A0D94
/* B17F34 800A0D94 27BDFF90 */  addiu $sp, $sp, -0x70
/* B17F38 800A0D98 AFBF002C */  sw    $ra, 0x2c($sp)
/* B17F3C 800A0D9C AFA40070 */  sw    $a0, 0x70($sp)
/* B17F40 800A0DA0 AFA50074 */  sw    $a1, 0x74($sp)
/* B17F44 800A0DA4 AFA60078 */  sw    $a2, 0x78($sp)
/* B17F48 800A0DA8 0C034213 */  jal   func_800D084C
/* B17F4C 800A0DAC AFA7007C */   sw    $a3, 0x7c($sp)
/* B17F50 800A0DB0 8FAF0074 */  lw    $t7, 0x74($sp)
/* B17F54 800A0DB4 8FAE0078 */  lw    $t6, 0x78($sp)
/* B17F58 800A0DB8 3C0D8016 */  lui   $t5, 0x8016
/* B17F5C 800A0DBC 000FC080 */  sll   $t8, $t7, 2
/* B17F60 800A0DC0 01D8C821 */  addu  $t9, $t6, $t8
/* B17F64 800A0DC4 8F220000 */  lw    $v0, ($t9)
/* B17F68 800A0DC8 25EE0001 */  addiu $t6, $t7, 1
/* B17F6C 800A0DCC 8FB9007C */  lw    $t9, 0x7c($sp)
/* B17F70 800A0DD0 00025100 */  sll   $t2, $v0, 4
/* B17F74 800A0DD4 000A5F02 */  srl   $t3, $t2, 0x1c
/* B17F78 800A0DD8 000B6080 */  sll   $t4, $t3, 2
/* B17F7C 800A0DDC 01AC6821 */  addu  $t5, $t5, $t4
/* B17F80 800A0DE0 8DAD6FA8 */  lw    $t5, 0x6fa8($t5)
/* B17F84 800A0DE4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B17F88 800A0DE8 000E5080 */  sll   $t2, $t6, 2
/* B17F8C 800A0DEC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B17F90 800A0DF0 014E5023 */  subu  $t2, $t2, $t6
/* B17F94 800A0DF4 000A5040 */  sll   $t2, $t2, 1
/* B17F98 800A0DF8 00414824 */  and   $t1, $v0, $at
/* B17F9C 800A0DFC AFAE0074 */  sw    $t6, 0x74($sp)
/* B17FA0 800A0E00 032A5821 */  addu  $t3, $t9, $t2
/* B17FA4 800A0E04 012D1821 */  addu  $v1, $t1, $t5
/* B17FA8 800A0E08 89690000 */  lwl   $t1, ($t3)
/* B17FAC 800A0E0C 99690003 */  lwr   $t1, 3($t3)
/* B17FB0 800A0E10 27B80050 */  addiu $t8, $sp, 0x50
/* B17FB4 800A0E14 3C018000 */  lui   $at, 0x8000
/* B17FB8 800A0E18 AF090000 */  sw    $t1, ($t8)
/* B17FBC 800A0E1C 95690004 */  lhu   $t1, 4($t3)
/* B17FC0 800A0E20 00611821 */  addu  $v1, $v1, $at
/* B17FC4 800A0E24 27A60068 */  addiu $a2, $sp, 0x68
/* B17FC8 800A0E28 A7090004 */  sh    $t1, 4($t8)
/* B17FCC 800A0E2C 846D0000 */  lh    $t5, ($v1)
/* B17FD0 800A0E30 8FB9008C */  lw    $t9, 0x8c($sp)
/* B17FD4 800A0E34 8FAC0080 */  lw    $t4, 0x80($sp)
/* B17FD8 800A0E38 448D2000 */  mtc1  $t5, $f4
/* B17FDC 800A0E3C 00195080 */  sll   $t2, $t9, 2
/* B17FE0 800A0E40 006AC021 */  addu  $t8, $v1, $t2
/* B17FE4 800A0E44 468021A0 */  cvt.s.w $f6, $f4
/* B17FE8 800A0E48 8FA50074 */  lw    $a1, 0x74($sp)
/* B17FEC 800A0E4C 8FA40070 */  lw    $a0, 0x70($sp)
/* B17FF0 800A0E50 27A90050 */  addiu $t1, $sp, 0x50
/* B17FF4 800A0E54 27A70058 */  addiu $a3, $sp, 0x58
/* B17FF8 800A0E58 E7A60058 */  swc1  $f6, 0x58($sp)
/* B17FFC 800A0E5C 846F0002 */  lh    $t7, 2($v1)
/* B18000 800A0E60 448F4000 */  mtc1  $t7, $f8
/* B18004 800A0E64 00000000 */  nop   
/* B18008 800A0E68 468042A0 */  cvt.s.w $f10, $f8
/* B1800C 800A0E6C E7AA005C */  swc1  $f10, 0x5c($sp)
/* B18010 800A0E70 846E0004 */  lh    $t6, 4($v1)
/* B18014 800A0E74 448E8000 */  mtc1  $t6, $f16
/* B18018 800A0E78 00000000 */  nop   
/* B1801C 800A0E7C 468084A0 */  cvt.s.w $f18, $f16
/* B18020 800A0E80 E7B20060 */  swc1  $f18, 0x60($sp)
/* B18024 800A0E84 8F0B0008 */  lw    $t3, 8($t8)
/* B18028 800A0E88 AFA3006C */  sw    $v1, 0x6c($sp)
/* B1802C 800A0E8C AFAB0064 */  sw    $t3, 0x64($sp)
/* B18030 800A0E90 11800007 */  beqz  $t4, .L800A0EB0
/* B18034 800A0E94 AFAB0068 */   sw    $t3, 0x68($sp)
/* B18038 800A0E98 8FAD0088 */  lw    $t5, 0x88($sp)
/* B1803C 800A0E9C AFA90010 */  sw    $t1, 0x10($sp)
/* B18040 800A0EA0 AFA3006C */  sw    $v1, 0x6c($sp)
/* B18044 800A0EA4 0180F809 */  jalr  $t4
/* B18048 800A0EA8 AFAD0014 */  sw    $t5, 0x14($sp)
/* B1804C 800A0EAC 1440003C */  bnez  $v0, .L800A0FA0
.L800A0EB0:
/* B18050 800A0EB0 27A40058 */   addiu $a0, $sp, 0x58
/* B18054 800A0EB4 0C0344D0 */  jal   func_800D1340
/* B18058 800A0EB8 27A50050 */   addiu $a1, $sp, 0x50
/* B1805C 800A0EBC 8FAF0068 */  lw    $t7, 0x68($sp)
/* B18060 800A0EC0 8FAE0090 */  lw    $t6, 0x90($sp)
/* B18064 800A0EC4 3C058014 */  lui   $a1, %hi(D_8013FFF8) # $a1, 0x8014
/* B18068 800A0EC8 11E0002A */  beqz  $t7, .L800A0F74
/* B1806C 800A0ECC 8FAB0064 */   lw    $t3, 0x64($sp)
/* B18070 800A0ED0 8DC40000 */  lw    $a0, ($t6)
/* B18074 800A0ED4 24A5FFF8 */  addiu $a1, %lo(D_8013FFF8) # addiu $a1, $a1, -8
/* B18078 800A0ED8 0C034695 */  jal   func_800D1A54
/* B1807C 800A0EDC 240603B1 */   li    $a2, 945
/* B18080 800A0EE0 8FB90070 */  lw    $t9, 0x70($sp)
/* B18084 800A0EE4 3C068014 */  lui   $a2, %hi(D_8014000C) # $a2, 0x8014
/* B18088 800A0EE8 24C6000C */  addiu $a2, %lo(D_8014000C) # addiu $a2, $a2, 0xc
/* B1808C 800A0EEC 8F250000 */  lw    $a1, ($t9)
/* B18090 800A0EF0 27A4003C */  addiu $a0, $sp, 0x3c
/* B18094 800A0EF4 240703B2 */  li    $a3, 946
/* B18098 800A0EF8 0C031AB1 */  jal   func_800C6AC4
/* B1809C 800A0EFC AFA5004C */   sw    $a1, 0x4c($sp)
/* B180A0 800A0F00 8FA8004C */  lw    $t0, 0x4c($sp)
/* B180A4 800A0F04 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B180A8 800A0F08 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B180AC 800A0F0C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B180B0 800A0F10 3C0CDE00 */  lui   $t4, 0xde00
/* B180B4 800A0F14 3C068014 */  lui   $a2, %hi(D_80140020) # $a2, 0x8014
/* B180B8 800A0F18 246A0008 */  addiu $t2, $v1, 8
/* B180BC 800A0F1C AD0A02C0 */  sw    $t2, 0x2c0($t0)
/* B180C0 800A0F20 AC780000 */  sw    $t8, ($v1)
/* B180C4 800A0F24 8FAB0090 */  lw    $t3, 0x90($sp)
/* B180C8 800A0F28 24C60020 */  addiu $a2, %lo(D_80140020) # addiu $a2, $a2, 0x20
/* B180CC 800A0F2C 27A4003C */  addiu $a0, $sp, 0x3c
/* B180D0 800A0F30 8D690000 */  lw    $t1, ($t3)
/* B180D4 800A0F34 240703B5 */  li    $a3, 949
/* B180D8 800A0F38 AC690004 */  sw    $t1, 4($v1)
/* B180DC 800A0F3C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B180E0 800A0F40 246D0008 */  addiu $t5, $v1, 8
/* B180E4 800A0F44 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B180E8 800A0F48 AC6C0000 */  sw    $t4, ($v1)
/* B180EC 800A0F4C 8FAF0068 */  lw    $t7, 0x68($sp)
/* B180F0 800A0F50 AC6F0004 */  sw    $t7, 4($v1)
/* B180F4 800A0F54 8FAE0070 */  lw    $t6, 0x70($sp)
/* B180F8 800A0F58 0C031AD5 */  jal   func_800C6B54
/* B180FC 800A0F5C 8DC50000 */   lw    $a1, ($t6)
/* B18100 800A0F60 8FB90090 */  lw    $t9, 0x90($sp)
/* B18104 800A0F64 8F2A0000 */  lw    $t2, ($t9)
/* B18108 800A0F68 25580040 */  addiu $t8, $t2, 0x40
/* B1810C 800A0F6C 1000000C */  b     .L800A0FA0
/* B18110 800A0F70 AF380000 */   sw    $t8, ($t9)
.L800A0F74:
/* B18114 800A0F74 1160000A */  beqz  $t3, .L800A0FA0
/* B18118 800A0F78 8FA90090 */   lw    $t1, 0x90($sp)
/* B1811C 800A0F7C 3C058014 */  lui   $a1, %hi(D_80140034) # $a1, 0x8014
/* B18120 800A0F80 24A50034 */  addiu $a1, %lo(D_80140034) # addiu $a1, $a1, 0x34
/* B18124 800A0F84 8D240000 */  lw    $a0, ($t1)
/* B18128 800A0F88 0C034695 */  jal   func_800D1A54
/* B1812C 800A0F8C 240603BA */   li    $a2, 954
/* B18130 800A0F90 8FAD0090 */  lw    $t5, 0x90($sp)
/* B18134 800A0F94 8DAC0000 */  lw    $t4, ($t5)
/* B18138 800A0F98 258F0040 */  addiu $t7, $t4, 0x40
/* B1813C 800A0F9C ADAF0000 */  sw    $t7, ($t5)
.L800A0FA0:
/* B18140 800A0FA0 8FAE0084 */  lw    $t6, 0x84($sp)
/* B18144 800A0FA4 8FA40070 */  lw    $a0, 0x70($sp)
/* B18148 800A0FA8 8FA50074 */  lw    $a1, 0x74($sp)
/* B1814C 800A0FAC 11C00005 */  beqz  $t6, .L800A0FC4
/* B18150 800A0FB0 27A60064 */   addiu $a2, $sp, 0x64
/* B18154 800A0FB4 8FAA0088 */  lw    $t2, 0x88($sp)
/* B18158 800A0FB8 27A70050 */  addiu $a3, $sp, 0x50
/* B1815C 800A0FBC 01C0F809 */  jalr  $t6
/* B18160 800A0FC0 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A0FC4:
/* B18164 800A0FC4 8FB8006C */  lw    $t8, 0x6c($sp)
/* B18168 800A0FC8 240100FF */  li    $at, 255
/* B1816C 800A0FCC 8FA40070 */  lw    $a0, 0x70($sp)
/* B18170 800A0FD0 93050006 */  lbu   $a1, 6($t8)
/* B18174 800A0FD4 8FA60078 */  lw    $a2, 0x78($sp)
/* B18178 800A0FD8 8FA7007C */  lw    $a3, 0x7c($sp)
/* B1817C 800A0FDC 10A1000B */  beq   $a1, $at, .L800A100C
/* B18180 800A0FE0 8FB90080 */   lw    $t9, 0x80($sp)
/* B18184 800A0FE4 8FAB0084 */  lw    $t3, 0x84($sp)
/* B18188 800A0FE8 8FA90088 */  lw    $t1, 0x88($sp)
/* B1818C 800A0FEC 8FAC008C */  lw    $t4, 0x8c($sp)
/* B18190 800A0FF0 8FAF0090 */  lw    $t7, 0x90($sp)
/* B18194 800A0FF4 AFB90010 */  sw    $t9, 0x10($sp)
/* B18198 800A0FF8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B1819C 800A0FFC AFA90018 */  sw    $t1, 0x18($sp)
/* B181A0 800A1000 AFAC001C */  sw    $t4, 0x1c($sp)
/* B181A4 800A1004 0C028365 */  jal   func_800A0D94
/* B181A8 800A1008 AFAF0020 */   sw    $t7, 0x20($sp)
.L800A100C:
/* B181AC 800A100C 0C034221 */  jal   func_800D0884
/* B181B0 800A1010 00000000 */   nop   
/* B181B4 800A1014 8FAD006C */  lw    $t5, 0x6c($sp)
/* B181B8 800A1018 240100FF */  li    $at, 255
/* B181BC 800A101C 8FA40070 */  lw    $a0, 0x70($sp)
/* B181C0 800A1020 91A50007 */  lbu   $a1, 7($t5)
/* B181C4 800A1024 8FA60078 */  lw    $a2, 0x78($sp)
/* B181C8 800A1028 8FA7007C */  lw    $a3, 0x7c($sp)
/* B181CC 800A102C 10A1000B */  beq   $a1, $at, .L800A105C
/* B181D0 800A1030 8FAA0080 */   lw    $t2, 0x80($sp)
/* B181D4 800A1034 8FAE0084 */  lw    $t6, 0x84($sp)
/* B181D8 800A1038 8FB80088 */  lw    $t8, 0x88($sp)
/* B181DC 800A103C 8FB9008C */  lw    $t9, 0x8c($sp)
/* B181E0 800A1040 8FAB0090 */  lw    $t3, 0x90($sp)
/* B181E4 800A1044 AFAA0010 */  sw    $t2, 0x10($sp)
/* B181E8 800A1048 AFAE0014 */  sw    $t6, 0x14($sp)
/* B181EC 800A104C AFB80018 */  sw    $t8, 0x18($sp)
/* B181F0 800A1050 AFB9001C */  sw    $t9, 0x1c($sp)
/* B181F4 800A1054 0C028365 */  jal   func_800A0D94
/* B181F8 800A1058 AFAB0020 */   sw    $t3, 0x20($sp)
.L800A105C:
/* B181FC 800A105C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B18200 800A1060 27BD0070 */  addiu $sp, $sp, 0x70
/* B18204 800A1064 03E00008 */  jr    $ra
/* B18208 800A1068 00000000 */   nop   

glabel func_800A106C
/* B1820C 800A106C 27BDFF80 */  addiu $sp, $sp, -0x80
/* B18210 800A1070 AFBF002C */  sw    $ra, 0x2c($sp)
/* B18214 800A1074 AFA40080 */  sw    $a0, 0x80($sp)
/* B18218 800A1078 AFA50084 */  sw    $a1, 0x84($sp)
/* B1821C 800A107C AFA60088 */  sw    $a2, 0x88($sp)
/* B18220 800A1080 8C840000 */  lw    $a0, ($a0)
/* B18224 800A1084 0C031A73 */  jal   graph_alloc
/* B18228 800A1088 00072980 */   sll   $a1, $a3, 6
/* B1822C 800A108C 8FAF0084 */  lw    $t7, 0x84($sp)
/* B18230 800A1090 AFA20058 */  sw    $v0, 0x58($sp)
/* B18234 800A1094 8FB80080 */  lw    $t8, 0x80($sp)
/* B18238 800A1098 15E0000C */  bnez  $t7, .L800A10CC
/* B1823C 800A109C 27A40044 */   addiu $a0, $sp, 0x44
/* B18240 800A10A0 3C048014 */  lui   $a0, %hi(D_80140048) # $a0, 0x8014
/* B18244 800A10A4 0C00084C */  jal   DebugMessage
/* B18248 800A10A8 24840048 */   addiu $a0, %lo(D_80140048) # addiu $a0, $a0, 0x48
/* B1824C 800A10AC 3C048014 */  lui   $a0, %hi(D_80140050) # $a0, 0x8014
/* B18250 800A10B0 0C00084C */  jal   DebugMessage
/* B18254 800A10B4 24840050 */   addiu $a0, %lo(D_80140050) # addiu $a0, $a0, 0x50
/* B18258 800A10B8 3C048014 */  lui   $a0, %hi(D_80140074) # $a0, 0x8014
/* B1825C 800A10BC 0C00084C */  jal   DebugMessage
/* B18260 800A10C0 24840074 */   addiu $a0, %lo(D_80140074) # addiu $a0, $a0, 0x74
/* B18264 800A10C4 1000009C */  b     .L800A1338
/* B18268 800A10C8 8FBF002C */   lw    $ra, 0x2c($sp)
.L800A10CC:
/* B1826C 800A10CC 8F050000 */  lw    $a1, ($t8)
/* B18270 800A10D0 3C068014 */  lui   $a2, %hi(D_80140078) # $a2, 0x8014
/* B18274 800A10D4 24C60078 */  addiu $a2, %lo(D_80140078) # addiu $a2, $a2, 0x78
/* B18278 800A10D8 240703E8 */  li    $a3, 1000
/* B1827C 800A10DC 0C031AB1 */  jal   func_800C6AC4
/* B18280 800A10E0 AFA50054 */   sw    $a1, 0x54($sp)
/* B18284 800A10E4 8FA80054 */  lw    $t0, 0x54($sp)
/* B18288 800A10E8 3C09DB06 */  lui   $t1, (0xDB060034 >> 16) # lui $t1, 0xdb06
/* B1828C 800A10EC 35290034 */  ori   $t1, (0xDB060034 & 0xFFFF) # ori $t1, $t1, 0x34
/* B18290 800A10F0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18294 800A10F4 24590008 */  addiu $t9, $v0, 8
/* B18298 800A10F8 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B1829C 800A10FC AC490000 */  sw    $t1, ($v0)
/* B182A0 800A1100 8FAA0058 */  lw    $t2, 0x58($sp)
/* B182A4 800A1104 AC4A0004 */  sw    $t2, 4($v0)
/* B182A8 800A1108 0C034213 */  jal   func_800D084C
/* B182AC 800A110C AFA80054 */   sw    $t0, 0x54($sp)
/* B182B0 800A1110 8FAB0084 */  lw    $t3, 0x84($sp)
/* B182B4 800A1114 3C188016 */  lui   $t8, 0x8016
/* B182B8 800A1118 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B182BC 800A111C 8D620000 */  lw    $v0, ($t3)
/* B182C0 800A1120 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B182C4 800A1124 8FA30088 */  lw    $v1, 0x88($sp)
/* B182C8 800A1128 00026900 */  sll   $t5, $v0, 4
/* B182CC 800A112C 000D7702 */  srl   $t6, $t5, 0x1c
/* B182D0 800A1130 000E7880 */  sll   $t7, $t6, 2
/* B182D4 800A1134 030FC021 */  addu  $t8, $t8, $t7
/* B182D8 800A1138 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B182DC 800A113C 00416024 */  and   $t4, $v0, $at
/* B182E0 800A1140 3C018000 */  lui   $at, 0x8000
/* B182E4 800A1144 0198C821 */  addu  $t9, $t4, $t8
/* B182E8 800A1148 03214821 */  addu  $t1, $t9, $at
/* B182EC 800A114C AFA9007C */  sw    $t1, 0x7c($sp)
/* B182F0 800A1150 846A0000 */  lh    $t2, ($v1)
/* B182F4 800A1154 8FA80054 */  lw    $t0, 0x54($sp)
/* B182F8 800A1158 27AE005C */  addiu $t6, $sp, 0x5c
/* B182FC 800A115C 448A2000 */  mtc1  $t2, $f4
/* B18300 800A1160 24050001 */  li    $a1, 1
/* B18304 800A1164 27A60074 */  addiu $a2, $sp, 0x74
/* B18308 800A1168 468021A0 */  cvt.s.w $f6, $f4
/* B1830C 800A116C 27A70064 */  addiu $a3, $sp, 0x64
/* B18310 800A1170 E7A60064 */  swc1  $f6, 0x64($sp)
/* B18314 800A1174 846B0002 */  lh    $t3, 2($v1)
/* B18318 800A1178 448B4000 */  mtc1  $t3, $f8
/* B1831C 800A117C 00000000 */  nop   
/* B18320 800A1180 468042A0 */  cvt.s.w $f10, $f8
/* B18324 800A1184 E7AA0068 */  swc1  $f10, 0x68($sp)
/* B18328 800A1188 846D0004 */  lh    $t5, 4($v1)
/* B1832C 800A118C 448D8000 */  mtc1  $t5, $f16
/* B18330 800A1190 00000000 */  nop   
/* B18334 800A1194 468084A0 */  cvt.s.w $f18, $f16
/* B18338 800A1198 E7B2006C */  swc1  $f18, 0x6c($sp)
/* B1833C 800A119C 886C0006 */  lwl   $t4, 6($v1)
/* B18340 800A11A0 986C0009 */  lwr   $t4, 9($v1)
/* B18344 800A11A4 ADCC0000 */  sw    $t4, ($t6)
/* B18348 800A11A8 946C000A */  lhu   $t4, 0xa($v1)
/* B1834C 800A11AC A5CC0004 */  sh    $t4, 4($t6)
/* B18350 800A11B0 8FB9009C */  lw    $t9, 0x9c($sp)
/* B18354 800A11B4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18358 800A11B8 8FAD0090 */  lw    $t5, 0x90($sp)
/* B1835C 800A11BC 00194880 */  sll   $t1, $t9, 2
/* B18360 800A11C0 03095021 */  addu  $t2, $t8, $t1
/* B18364 800A11C4 8D4B0008 */  lw    $t3, 8($t2)
/* B18368 800A11C8 8FA40080 */  lw    $a0, 0x80($sp)
/* B1836C 800A11CC 27AE005C */  addiu $t6, $sp, 0x5c
/* B18370 800A11D0 AFAB0070 */  sw    $t3, 0x70($sp)
/* B18374 800A11D4 11A00008 */  beqz  $t5, .L800A11F8
/* B18378 800A11D8 AFAB0074 */   sw    $t3, 0x74($sp)
/* B1837C 800A11DC 8FAF0098 */  lw    $t7, 0x98($sp)
/* B18380 800A11E0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B18384 800A11E4 AFA80054 */  sw    $t0, 0x54($sp)
/* B18388 800A11E8 01A0F809 */  jalr  $t5
/* B1838C 800A11EC AFAF0014 */  sw    $t7, 0x14($sp)
/* B18390 800A11F0 1440002C */  bnez  $v0, .L800A12A4
/* B18394 800A11F4 8FA80054 */   lw    $t0, 0x54($sp)
.L800A11F8:
/* B18398 800A11F8 27A40064 */  addiu $a0, $sp, 0x64
/* B1839C 800A11FC 27A5005C */  addiu $a1, $sp, 0x5c
/* B183A0 800A1200 0C0344D0 */  jal   func_800D1340
/* B183A4 800A1204 AFA80054 */   sw    $t0, 0x54($sp)
/* B183A8 800A1208 8FAC0074 */  lw    $t4, 0x74($sp)
/* B183AC 800A120C 8FA80054 */  lw    $t0, 0x54($sp)
/* B183B0 800A1210 8FA40058 */  lw    $a0, 0x58($sp)
/* B183B4 800A1214 11800019 */  beqz  $t4, .L800A127C
/* B183B8 800A1218 3C058014 */   lui   $a1, %hi(D_8014008C) # $a1, 0x8014
/* B183BC 800A121C 24A5008C */  addiu $a1, %lo(D_8014008C) # addiu $a1, $a1, 0x8c
/* B183C0 800A1220 24060409 */  li    $a2, 1033
/* B183C4 800A1224 0C034695 */  jal   func_800D1A54
/* B183C8 800A1228 AFA80054 */   sw    $t0, 0x54($sp)
/* B183CC 800A122C 8FA80054 */  lw    $t0, 0x54($sp)
/* B183D0 800A1230 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B183D4 800A1234 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B183D8 800A1238 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B183DC 800A123C 3C0BDE00 */  lui   $t3, 0xde00
/* B183E0 800A1240 24590008 */  addiu $t9, $v0, 8
/* B183E4 800A1244 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B183E8 800A1248 AC580000 */  sw    $t8, ($v0)
/* B183EC 800A124C 8FA90058 */  lw    $t1, 0x58($sp)
/* B183F0 800A1250 AC490004 */  sw    $t1, 4($v0)
/* B183F4 800A1254 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B183F8 800A1258 244A0008 */  addiu $t2, $v0, 8
/* B183FC 800A125C AD0A02C0 */  sw    $t2, 0x2c0($t0)
/* B18400 800A1260 AC4B0000 */  sw    $t3, ($v0)
/* B18404 800A1264 8FAE0074 */  lw    $t6, 0x74($sp)
/* B18408 800A1268 AC4E0004 */  sw    $t6, 4($v0)
/* B1840C 800A126C 8FAF0058 */  lw    $t7, 0x58($sp)
/* B18410 800A1270 25ED0040 */  addiu $t5, $t7, 0x40
/* B18414 800A1274 1000000B */  b     .L800A12A4
/* B18418 800A1278 AFAD0058 */   sw    $t5, 0x58($sp)
.L800A127C:
/* B1841C 800A127C 8FAC0070 */  lw    $t4, 0x70($sp)
/* B18420 800A1280 3C058014 */  lui   $a1, %hi(D_801400A0) # $a1, 0x8014
/* B18424 800A1284 24A500A0 */  addiu $a1, %lo(D_801400A0) # addiu $a1, $a1, 0xa0
/* B18428 800A1288 11800006 */  beqz  $t4, .L800A12A4
/* B1842C 800A128C 8FA40058 */   lw    $a0, 0x58($sp)
/* B18430 800A1290 0C034695 */  jal   func_800D1A54
/* B18434 800A1294 24060410 */   li    $a2, 1040
/* B18438 800A1298 8FB90058 */  lw    $t9, 0x58($sp)
/* B1843C 800A129C 27380040 */  addiu $t8, $t9, 0x40
/* B18440 800A12A0 AFB80058 */  sw    $t8, 0x58($sp)
.L800A12A4:
/* B18444 800A12A4 8FA20094 */  lw    $v0, 0x94($sp)
/* B18448 800A12A8 8FA40080 */  lw    $a0, 0x80($sp)
/* B1844C 800A12AC 24050001 */  li    $a1, 1
/* B18450 800A12B0 10400006 */  beqz  $v0, .L800A12CC
/* B18454 800A12B4 27A60070 */   addiu $a2, $sp, 0x70
/* B18458 800A12B8 8FA90098 */  lw    $t1, 0x98($sp)
/* B1845C 800A12BC 27A7005C */  addiu $a3, $sp, 0x5c
/* B18460 800A12C0 0040F809 */  jalr  $v0
/* B18464 800A12C4 AFA90010 */  sw    $t1, 0x10($sp)
/* B18468 800A12C8 8FA20094 */  lw    $v0, 0x94($sp)
.L800A12CC:
/* B1846C 800A12CC 8FAA007C */  lw    $t2, 0x7c($sp)
/* B18470 800A12D0 240100FF */  li    $at, 255
/* B18474 800A12D4 8FA40080 */  lw    $a0, 0x80($sp)
/* B18478 800A12D8 91450006 */  lbu   $a1, 6($t2)
/* B1847C 800A12DC 8FA60084 */  lw    $a2, 0x84($sp)
/* B18480 800A12E0 8FA70088 */  lw    $a3, 0x88($sp)
/* B18484 800A12E4 10A1000A */  beq   $a1, $at, .L800A1310
/* B18488 800A12E8 8FAB0090 */   lw    $t3, 0x90($sp)
/* B1848C 800A12EC 8FAE0098 */  lw    $t6, 0x98($sp)
/* B18490 800A12F0 8FAF009C */  lw    $t7, 0x9c($sp)
/* B18494 800A12F4 27AD0058 */  addiu $t5, $sp, 0x58
/* B18498 800A12F8 AFAD0020 */  sw    $t5, 0x20($sp)
/* B1849C 800A12FC AFAB0010 */  sw    $t3, 0x10($sp)
/* B184A0 800A1300 AFA20014 */  sw    $v0, 0x14($sp)
/* B184A4 800A1304 AFAE0018 */  sw    $t6, 0x18($sp)
/* B184A8 800A1308 0C028365 */  jal   func_800A0D94
/* B184AC 800A130C AFAF001C */   sw    $t7, 0x1c($sp)
.L800A1310:
/* B184B0 800A1310 0C034221 */  jal   func_800D0884
/* B184B4 800A1314 00000000 */   nop   
/* B184B8 800A1318 8FAC0080 */  lw    $t4, 0x80($sp)
/* B184BC 800A131C 3C068014 */  lui   $a2, %hi(D_801400B4) # $a2, 0x8014
/* B184C0 800A1320 24C600B4 */  addiu $a2, %lo(D_801400B4) # addiu $a2, $a2, 0xb4
/* B184C4 800A1324 27A40044 */  addiu $a0, $sp, 0x44
/* B184C8 800A1328 2407041D */  li    $a3, 1053
/* B184CC 800A132C 0C031AD5 */  jal   func_800C6B54
/* B184D0 800A1330 8D850000 */   lw    $a1, ($t4)
/* B184D4 800A1334 8FBF002C */  lw    $ra, 0x2c($sp)
.L800A1338:
/* B184D8 800A1338 27BD0080 */  addiu $sp, $sp, 0x80
/* B184DC 800A133C 03E00008 */  jr    $ra
/* B184E0 800A1340 00000000 */   nop   

glabel func_800A1344
/* B184E4 800A1344 27BDFF98 */  addiu $sp, $sp, -0x68
/* B184E8 800A1348 AFBF0024 */  sw    $ra, 0x24($sp)
/* B184EC 800A134C AFA40068 */  sw    $a0, 0x68($sp)
/* B184F0 800A1350 AFA5006C */  sw    $a1, 0x6c($sp)
/* B184F4 800A1354 AFA60070 */  sw    $a2, 0x70($sp)
/* B184F8 800A1358 AFA70074 */  sw    $a3, 0x74($sp)
/* B184FC 800A135C 8C850000 */  lw    $a1, ($a0)
/* B18500 800A1360 3C068014 */  lui   $a2, %hi(D_801400C8) # $a2, 0x8014
/* B18504 800A1364 24C600C8 */  addiu $a2, %lo(D_801400C8) # addiu $a2, $a2, 0xc8
/* B18508 800A1368 27A40038 */  addiu $a0, $sp, 0x38
/* B1850C 800A136C 24070434 */  li    $a3, 1076
/* B18510 800A1370 0C031AB1 */  jal   func_800C6AC4
/* B18514 800A1374 AFA50048 */   sw    $a1, 0x48($sp)
/* B18518 800A1378 0C034213 */  jal   func_800D084C
/* B1851C 800A137C 00000000 */   nop   
/* B18520 800A1380 8FB8006C */  lw    $t8, 0x6c($sp)
/* B18524 800A1384 8FAF0070 */  lw    $t7, 0x70($sp)
/* B18528 800A1388 3C0E8016 */  lui   $t6, 0x8016
/* B1852C 800A138C 0018C880 */  sll   $t9, $t8, 2
/* B18530 800A1390 01F94821 */  addu  $t1, $t7, $t9
/* B18534 800A1394 8D220000 */  lw    $v0, ($t1)
/* B18538 800A1398 270F0001 */  addiu $t7, $t8, 1
/* B1853C 800A139C 8FA90074 */  lw    $t1, 0x74($sp)
/* B18540 800A13A0 00025900 */  sll   $t3, $v0, 4
/* B18544 800A13A4 000B6702 */  srl   $t4, $t3, 0x1c
/* B18548 800A13A8 000C6880 */  sll   $t5, $t4, 2
/* B1854C 800A13AC 01CD7021 */  addu  $t6, $t6, $t5
/* B18550 800A13B0 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B18554 800A13B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18558 800A13B8 000F5880 */  sll   $t3, $t7, 2
/* B1855C 800A13BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18560 800A13C0 016F5823 */  subu  $t3, $t3, $t7
/* B18564 800A13C4 000B5840 */  sll   $t3, $t3, 1
/* B18568 800A13C8 00415024 */  and   $t2, $v0, $at
/* B1856C 800A13CC AFAF006C */  sw    $t7, 0x6c($sp)
/* B18570 800A13D0 012B6021 */  addu  $t4, $t1, $t3
/* B18574 800A13D4 014E4021 */  addu  $t0, $t2, $t6
/* B18578 800A13D8 898A0000 */  lwl   $t2, ($t4)
/* B1857C 800A13DC 998A0003 */  lwr   $t2, 3($t4)
/* B18580 800A13E0 27B9004C */  addiu $t9, $sp, 0x4c
/* B18584 800A13E4 3C018000 */  lui   $at, 0x8000
/* B18588 800A13E8 AF2A0000 */  sw    $t2, ($t9)
/* B1858C 800A13EC 958A0004 */  lhu   $t2, 4($t4)
/* B18590 800A13F0 01014021 */  addu  $t0, $t0, $at
/* B18594 800A13F4 27A60060 */  addiu $a2, $sp, 0x60
/* B18598 800A13F8 A72A0004 */  sh    $t2, 4($t9)
/* B1859C 800A13FC 850E0000 */  lh    $t6, ($t0)
/* B185A0 800A1400 8FAB0078 */  lw    $t3, 0x78($sp)
/* B185A4 800A1404 8FA5006C */  lw    $a1, 0x6c($sp)
/* B185A8 800A1408 448E2000 */  mtc1  $t6, $f4
/* B185AC 800A140C 8FA40068 */  lw    $a0, 0x68($sp)
/* B185B0 800A1410 27B9004C */  addiu $t9, $sp, 0x4c
/* B185B4 800A1414 468021A0 */  cvt.s.w $f6, $f4
/* B185B8 800A1418 27A70054 */  addiu $a3, $sp, 0x54
/* B185BC 800A141C E7A60054 */  swc1  $f6, 0x54($sp)
/* B185C0 800A1420 85180002 */  lh    $t8, 2($t0)
/* B185C4 800A1424 44984000 */  mtc1  $t8, $f8
/* B185C8 800A1428 00000000 */  nop   
/* B185CC 800A142C 468042A0 */  cvt.s.w $f10, $f8
/* B185D0 800A1430 E7AA0058 */  swc1  $f10, 0x58($sp)
/* B185D4 800A1434 850F0004 */  lh    $t7, 4($t0)
/* B185D8 800A1438 448F8000 */  mtc1  $t7, $f16
/* B185DC 800A143C 00000000 */  nop   
/* B185E0 800A1440 468084A0 */  cvt.s.w $f18, $f16
/* B185E4 800A1444 E7B2005C */  swc1  $f18, 0x5c($sp)
/* B185E8 800A1448 8D090008 */  lw    $t1, 8($t0)
/* B185EC 800A144C 11600008 */  beqz  $t3, .L800A1470
/* B185F0 800A1450 AFA90060 */   sw    $t1, 0x60($sp)
/* B185F4 800A1454 8FAC0080 */  lw    $t4, 0x80($sp)
/* B185F8 800A1458 AFB90010 */  sw    $t9, 0x10($sp)
/* B185FC 800A145C AFA80064 */  sw    $t0, 0x64($sp)
/* B18600 800A1460 0160F809 */  jalr  $t3
/* B18604 800A1464 AFAC0014 */  sw    $t4, 0x14($sp)
/* B18608 800A1468 14400022 */  bnez  $v0, .L800A14F4
/* B1860C 800A146C 8FA80064 */   lw    $t0, 0x64($sp)
.L800A1470:
/* B18610 800A1470 27A40054 */  addiu $a0, $sp, 0x54
/* B18614 800A1474 27A5004C */  addiu $a1, $sp, 0x4c
/* B18618 800A1478 0C0344D0 */  jal   func_800D1340
/* B1861C 800A147C AFA80064 */   sw    $t0, 0x64($sp)
/* B18620 800A1480 8FAD0060 */  lw    $t5, 0x60($sp)
/* B18624 800A1484 8FA80064 */  lw    $t0, 0x64($sp)
/* B18628 800A1488 8FA70048 */  lw    $a3, 0x48($sp)
/* B1862C 800A148C 11A00019 */  beqz  $t5, .L800A14F4
/* B18630 800A1490 3C0EDA38 */   lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* B18634 800A1494 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B18638 800A1498 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* B1863C 800A149C 3C058014 */  lui   $a1, %hi(D_801400DC) # $a1, 0x8014
/* B18640 800A14A0 244A0008 */  addiu $t2, $v0, 8
/* B18644 800A14A4 ACEA02C0 */  sw    $t2, 0x2c0($a3)
/* B18648 800A14A8 AC4E0000 */  sw    $t6, ($v0)
/* B1864C 800A14AC 8FB80068 */  lw    $t8, 0x68($sp)
/* B18650 800A14B0 24A500DC */  addiu $a1, %lo(D_801400DC) # addiu $a1, $a1, 0xdc
/* B18654 800A14B4 2406044F */  li    $a2, 1103
/* B18658 800A14B8 8F040000 */  lw    $a0, ($t8)
/* B1865C 800A14BC AFA80064 */  sw    $t0, 0x64($sp)
/* B18660 800A14C0 0C0346A2 */  jal   func_800D1A88
/* B18664 800A14C4 AFA20034 */   sw    $v0, 0x34($sp)
/* B18668 800A14C8 8FA30034 */  lw    $v1, 0x34($sp)
/* B1866C 800A14CC 8FA80064 */  lw    $t0, 0x64($sp)
/* B18670 800A14D0 3C19DE00 */  lui   $t9, 0xde00
/* B18674 800A14D4 AC620004 */  sw    $v0, 4($v1)
/* B18678 800A14D8 8FAF0048 */  lw    $t7, 0x48($sp)
/* B1867C 800A14DC 8DE202C0 */  lw    $v0, 0x2c0($t7)
/* B18680 800A14E0 24490008 */  addiu $t1, $v0, 8
/* B18684 800A14E4 ADE902C0 */  sw    $t1, 0x2c0($t7)
/* B18688 800A14E8 AC590000 */  sw    $t9, ($v0)
/* B1868C 800A14EC 8FAC0060 */  lw    $t4, 0x60($sp)
/* B18690 800A14F0 AC4C0004 */  sw    $t4, 4($v0)
.L800A14F4:
/* B18694 800A14F4 8FAB007C */  lw    $t3, 0x7c($sp)
/* B18698 800A14F8 8FA40068 */  lw    $a0, 0x68($sp)
/* B1869C 800A14FC 8FA5006C */  lw    $a1, 0x6c($sp)
/* B186A0 800A1500 11600007 */  beqz  $t3, .L800A1520
/* B186A4 800A1504 27A60060 */   addiu $a2, $sp, 0x60
/* B186A8 800A1508 8FAD0080 */  lw    $t5, 0x80($sp)
/* B186AC 800A150C 27A7004C */  addiu $a3, $sp, 0x4c
/* B186B0 800A1510 AFA80064 */  sw    $t0, 0x64($sp)
/* B186B4 800A1514 0160F809 */  jalr  $t3
/* B186B8 800A1518 AFAD0010 */  sw    $t5, 0x10($sp)
/* B186BC 800A151C 8FA80064 */  lw    $t0, 0x64($sp)
.L800A1520:
/* B186C0 800A1520 91050006 */  lbu   $a1, 6($t0)
/* B186C4 800A1524 240100FF */  li    $at, 255
/* B186C8 800A1528 8FA40068 */  lw    $a0, 0x68($sp)
/* B186CC 800A152C 10A1000B */  beq   $a1, $at, .L800A155C
/* B186D0 800A1530 8FA60070 */   lw    $a2, 0x70($sp)
/* B186D4 800A1534 8FAA0078 */  lw    $t2, 0x78($sp)
/* B186D8 800A1538 8FAE007C */  lw    $t6, 0x7c($sp)
/* B186DC 800A153C 8FB80080 */  lw    $t8, 0x80($sp)
/* B186E0 800A1540 8FA70074 */  lw    $a3, 0x74($sp)
/* B186E4 800A1544 AFA80064 */  sw    $t0, 0x64($sp)
/* B186E8 800A1548 AFAA0010 */  sw    $t2, 0x10($sp)
/* B186EC 800A154C AFAE0014 */  sw    $t6, 0x14($sp)
/* B186F0 800A1550 0C0284D1 */  jal   func_800A1344
/* B186F4 800A1554 AFB80018 */   sw    $t8, 0x18($sp)
/* B186F8 800A1558 8FA80064 */  lw    $t0, 0x64($sp)
.L800A155C:
/* B186FC 800A155C 0C034221 */  jal   func_800D0884
/* B18700 800A1560 AFA80064 */   sw    $t0, 0x64($sp)
/* B18704 800A1564 8FA80064 */  lw    $t0, 0x64($sp)
/* B18708 800A1568 240100FF */  li    $at, 255
/* B1870C 800A156C 8FA40068 */  lw    $a0, 0x68($sp)
/* B18710 800A1570 91050007 */  lbu   $a1, 7($t0)
/* B18714 800A1574 8FA60070 */  lw    $a2, 0x70($sp)
/* B18718 800A1578 8FA70074 */  lw    $a3, 0x74($sp)
/* B1871C 800A157C 10A10007 */  beq   $a1, $at, .L800A159C
/* B18720 800A1580 8FA90078 */   lw    $t1, 0x78($sp)
/* B18724 800A1584 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18728 800A1588 8FB90080 */  lw    $t9, 0x80($sp)
/* B1872C 800A158C AFA90010 */  sw    $t1, 0x10($sp)
/* B18730 800A1590 AFAF0014 */  sw    $t7, 0x14($sp)
/* B18734 800A1594 0C0284D1 */  jal   func_800A1344
/* B18738 800A1598 AFB90018 */   sw    $t9, 0x18($sp)
.L800A159C:
/* B1873C 800A159C 8FAC0068 */  lw    $t4, 0x68($sp)
/* B18740 800A15A0 3C068014 */  lui   $a2, %hi(D_801400F0) # $a2, 0x8014
/* B18744 800A15A4 24C600F0 */  addiu $a2, %lo(D_801400F0) # addiu $a2, $a2, 0xf0
/* B18748 800A15A8 27A40038 */  addiu $a0, $sp, 0x38
/* B1874C 800A15AC 24070461 */  li    $a3, 1121
/* B18750 800A15B0 0C031AD5 */  jal   func_800C6B54
/* B18754 800A15B4 8D850000 */   lw    $a1, ($t4)
/* B18758 800A15B8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1875C 800A15BC 27BD0068 */  addiu $sp, $sp, 0x68
/* B18760 800A15C0 03E00008 */  jr    $ra
/* B18764 800A15C4 00000000 */   nop   

/* B18768 800A15C8 27BDFF98 */  addiu $sp, $sp, -0x68
/* B1876C 800A15CC AFBF0024 */  sw    $ra, 0x24($sp)
/* B18770 800A15D0 AFA40068 */  sw    $a0, 0x68($sp)
/* B18774 800A15D4 AFA5006C */  sw    $a1, 0x6c($sp)
/* B18778 800A15D8 AFA60070 */  sw    $a2, 0x70($sp)
/* B1877C 800A15DC 14A0000C */  bnez  $a1, .L800A1610
/* B18780 800A15E0 AFA70074 */   sw    $a3, 0x74($sp)
/* B18784 800A15E4 3C048014 */  lui   $a0, %hi(D_80140104) # $a0, 0x8014
/* B18788 800A15E8 0C00084C */  jal   DebugMessage
/* B1878C 800A15EC 24840104 */   addiu $a0, %lo(D_80140104) # addiu $a0, $a0, 0x104
/* B18790 800A15F0 3C048014 */  lui   $a0, %hi(D_8014010C) # $a0, 0x8014
/* B18794 800A15F4 0C00084C */  jal   DebugMessage
/* B18798 800A15F8 2484010C */   addiu $a0, %lo(D_8014010C) # addiu $a0, $a0, 0x10c
/* B1879C 800A15FC 3C048014 */  lui   $a0, %hi(D_8014012C) # $a0, 0x8014
/* B187A0 800A1600 0C00084C */  jal   DebugMessage
/* B187A4 800A1604 2484012C */   addiu $a0, %lo(D_8014012C) # addiu $a0, $a0, 0x12c
/* B187A8 800A1608 1000007D */  b     .L800A1800
/* B187AC 800A160C 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A1610:
/* B187B0 800A1610 8FAF0068 */  lw    $t7, 0x68($sp)
/* B187B4 800A1614 3C068014 */  lui   $a2, %hi(D_80140130) # $a2, 0x8014
/* B187B8 800A1618 24C60130 */  addiu $a2, %lo(D_80140130) # addiu $a2, $a2, 0x130
/* B187BC 800A161C 8DE50000 */  lw    $a1, ($t7)
/* B187C0 800A1620 27A40034 */  addiu $a0, $sp, 0x34
/* B187C4 800A1624 2407047C */  li    $a3, 1148
/* B187C8 800A1628 0C031AB1 */  jal   func_800C6AC4
/* B187CC 800A162C AFA50044 */   sw    $a1, 0x44($sp)
/* B187D0 800A1630 0C034213 */  jal   func_800D084C
/* B187D4 800A1634 00000000 */   nop   
/* B187D8 800A1638 8FB8006C */  lw    $t8, 0x6c($sp)
/* B187DC 800A163C 3C0B8016 */  lui   $t3, 0x8016
/* B187E0 800A1640 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B187E4 800A1644 8F020000 */  lw    $v0, ($t8)
/* B187E8 800A1648 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B187EC 800A164C 8FA30070 */  lw    $v1, 0x70($sp)
/* B187F0 800A1650 00024100 */  sll   $t0, $v0, 4
/* B187F4 800A1654 00084F02 */  srl   $t1, $t0, 0x1c
/* B187F8 800A1658 00095080 */  sll   $t2, $t1, 2
/* B187FC 800A165C 016A5821 */  addu  $t3, $t3, $t2
/* B18800 800A1660 8D6B6FA8 */  lw    $t3, 0x6fa8($t3)
/* B18804 800A1664 0041C824 */  and   $t9, $v0, $at
/* B18808 800A1668 3C018000 */  lui   $at, 0x8000
/* B1880C 800A166C 032B6021 */  addu  $t4, $t9, $t3
/* B18810 800A1670 01816821 */  addu  $t5, $t4, $at
/* B18814 800A1674 AFAD0064 */  sw    $t5, 0x64($sp)
/* B18818 800A1678 846E0000 */  lh    $t6, ($v1)
/* B1881C 800A167C 27A80048 */  addiu $t0, $sp, 0x48
/* B18820 800A1680 27AD0048 */  addiu $t5, $sp, 0x48
/* B18824 800A1684 448E2000 */  mtc1  $t6, $f4
/* B18828 800A1688 24050001 */  li    $a1, 1
/* B1882C 800A168C 27A6005C */  addiu $a2, $sp, 0x5c
/* B18830 800A1690 468021A0 */  cvt.s.w $f6, $f4
/* B18834 800A1694 27A70050 */  addiu $a3, $sp, 0x50
/* B18838 800A1698 E7A60050 */  swc1  $f6, 0x50($sp)
/* B1883C 800A169C 846F0002 */  lh    $t7, 2($v1)
/* B18840 800A16A0 448F4000 */  mtc1  $t7, $f8
/* B18844 800A16A4 00000000 */  nop   
/* B18848 800A16A8 468042A0 */  cvt.s.w $f10, $f8
/* B1884C 800A16AC E7AA0054 */  swc1  $f10, 0x54($sp)
/* B18850 800A16B0 84780004 */  lh    $t8, 4($v1)
/* B18854 800A16B4 44988000 */  mtc1  $t8, $f16
/* B18858 800A16B8 00000000 */  nop   
/* B1885C 800A16BC 468084A0 */  cvt.s.w $f18, $f16
/* B18860 800A16C0 E7B20058 */  swc1  $f18, 0x58($sp)
/* B18864 800A16C4 886A0006 */  lwl   $t2, 6($v1)
/* B18868 800A16C8 986A0009 */  lwr   $t2, 9($v1)
/* B1886C 800A16CC AD0A0000 */  sw    $t2, ($t0)
/* B18870 800A16D0 946A000A */  lhu   $t2, 0xa($v1)
/* B18874 800A16D4 A50A0004 */  sh    $t2, 4($t0)
/* B18878 800A16D8 8FB90064 */  lw    $t9, 0x64($sp)
/* B1887C 800A16DC 8FAC0074 */  lw    $t4, 0x74($sp)
/* B18880 800A16E0 8FA40068 */  lw    $a0, 0x68($sp)
/* B18884 800A16E4 8F2B0008 */  lw    $t3, 8($t9)
/* B18888 800A16E8 11800006 */  beqz  $t4, .L800A1704
/* B1888C 800A16EC AFAB005C */   sw    $t3, 0x5c($sp)
/* B18890 800A16F0 8FAE007C */  lw    $t6, 0x7c($sp)
/* B18894 800A16F4 AFAD0010 */  sw    $t5, 0x10($sp)
/* B18898 800A16F8 0180F809 */  jalr  $t4
/* B1889C 800A16FC AFAE0014 */  sw    $t6, 0x14($sp)
/* B188A0 800A1700 1440001E */  bnez  $v0, .L800A177C
.L800A1704:
/* B188A4 800A1704 27A40050 */   addiu $a0, $sp, 0x50
/* B188A8 800A1708 0C0344D0 */  jal   func_800D1340
/* B188AC 800A170C 27A50048 */   addiu $a1, $sp, 0x48
/* B188B0 800A1710 8FAF005C */  lw    $t7, 0x5c($sp)
/* B188B4 800A1714 8FA70044 */  lw    $a3, 0x44($sp)
/* B188B8 800A1718 3C08DA38 */  lui   $t0, (0xDA380003 >> 16) # lui $t0, 0xda38
/* B188BC 800A171C 51E00018 */  beql  $t7, $zero, .L800A1780
/* B188C0 800A1720 8FA20078 */   lw    $v0, 0x78($sp)
/* B188C4 800A1724 8CE202C0 */  lw    $v0, 0x2c0($a3)
/* B188C8 800A1728 35080003 */  ori   $t0, (0xDA380003 & 0xFFFF) # ori $t0, $t0, 3
/* B188CC 800A172C 3C058014 */  lui   $a1, %hi(D_80140144) # $a1, 0x8014
/* B188D0 800A1730 24580008 */  addiu $t8, $v0, 8
/* B188D4 800A1734 ACF802C0 */  sw    $t8, 0x2c0($a3)
/* B188D8 800A1738 AC480000 */  sw    $t0, ($v0)
/* B188DC 800A173C 8FA90068 */  lw    $t1, 0x68($sp)
/* B188E0 800A1740 24A50144 */  addiu $a1, %lo(D_80140144) # addiu $a1, $a1, 0x144
/* B188E4 800A1744 24060498 */  li    $a2, 1176
/* B188E8 800A1748 8D240000 */  lw    $a0, ($t1)
/* B188EC 800A174C 0C0346A2 */  jal   func_800D1A88
/* B188F0 800A1750 AFA20030 */   sw    $v0, 0x30($sp)
/* B188F4 800A1754 8FA30030 */  lw    $v1, 0x30($sp)
/* B188F8 800A1758 3C0BDE00 */  lui   $t3, 0xde00
/* B188FC 800A175C AC620004 */  sw    $v0, 4($v1)
/* B18900 800A1760 8FAA0044 */  lw    $t2, 0x44($sp)
/* B18904 800A1764 8D4202C0 */  lw    $v0, 0x2c0($t2)
/* B18908 800A1768 24590008 */  addiu $t9, $v0, 8
/* B1890C 800A176C AD5902C0 */  sw    $t9, 0x2c0($t2)
/* B18910 800A1770 AC4B0000 */  sw    $t3, ($v0)
/* B18914 800A1774 8FAD005C */  lw    $t5, 0x5c($sp)
/* B18918 800A1778 AC4D0004 */  sw    $t5, 4($v0)
.L800A177C:
/* B1891C 800A177C 8FA20078 */  lw    $v0, 0x78($sp)
.L800A1780:
/* B18920 800A1780 8FA40068 */  lw    $a0, 0x68($sp)
/* B18924 800A1784 24050001 */  li    $a1, 1
/* B18928 800A1788 10400006 */  beqz  $v0, .L800A17A4
/* B1892C 800A178C 27A6005C */   addiu $a2, $sp, 0x5c
/* B18930 800A1790 8FAE007C */  lw    $t6, 0x7c($sp)
/* B18934 800A1794 27A70048 */  addiu $a3, $sp, 0x48
/* B18938 800A1798 0040F809 */  jalr  $v0
/* B1893C 800A179C AFAE0010 */  sw    $t6, 0x10($sp)
/* B18940 800A17A0 8FA20078 */  lw    $v0, 0x78($sp)
.L800A17A4:
/* B18944 800A17A4 8FAC0064 */  lw    $t4, 0x64($sp)
/* B18948 800A17A8 240100FF */  li    $at, 255
/* B1894C 800A17AC 8FA40068 */  lw    $a0, 0x68($sp)
/* B18950 800A17B0 91850006 */  lbu   $a1, 6($t4)
/* B18954 800A17B4 8FA6006C */  lw    $a2, 0x6c($sp)
/* B18958 800A17B8 8FA70070 */  lw    $a3, 0x70($sp)
/* B1895C 800A17BC 10A10006 */  beq   $a1, $at, .L800A17D8
/* B18960 800A17C0 8FAF0074 */   lw    $t7, 0x74($sp)
/* B18964 800A17C4 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18968 800A17C8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B1896C 800A17CC AFA20014 */  sw    $v0, 0x14($sp)
/* B18970 800A17D0 0C0284D1 */  jal   func_800A1344
/* B18974 800A17D4 AFB80018 */   sw    $t8, 0x18($sp)
.L800A17D8:
/* B18978 800A17D8 0C034221 */  jal   func_800D0884
/* B1897C 800A17DC 00000000 */   nop   
/* B18980 800A17E0 8FA80068 */  lw    $t0, 0x68($sp)
/* B18984 800A17E4 3C068014 */  lui   $a2, %hi(D_80140158) # $a2, 0x8014
/* B18988 800A17E8 24C60158 */  addiu $a2, %lo(D_80140158) # addiu $a2, $a2, 0x158
/* B1898C 800A17EC 27A40034 */  addiu $a0, $sp, 0x34
/* B18990 800A17F0 240704A6 */  li    $a3, 1190
/* B18994 800A17F4 0C031AD5 */  jal   func_800C6B54
/* B18998 800A17F8 8D050000 */   lw    $a1, ($t0)
/* B1899C 800A17FC 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A1800:
/* B189A0 800A1800 27BD0068 */  addiu $sp, $sp, 0x68
/* B189A4 800A1804 03E00008 */  jr    $ra
/* B189A8 800A1808 00000000 */   nop   

glabel func_800A180C
/* B189AC 800A180C 27BDFF98 */  addiu $sp, $sp, -0x68
/* B189B0 800A1810 AFBF0024 */  sw    $ra, 0x24($sp)
/* B189B4 800A1814 AFA40068 */  sw    $a0, 0x68($sp)
/* B189B8 800A1818 AFA5006C */  sw    $a1, 0x6c($sp)
/* B189BC 800A181C AFA60070 */  sw    $a2, 0x70($sp)
/* B189C0 800A1820 AFA70074 */  sw    $a3, 0x74($sp)
/* B189C4 800A1824 8C850000 */  lw    $a1, ($a0)
/* B189C8 800A1828 3C068014 */  lui   $a2, %hi(D_8014016C) # $a2, 0x8014
/* B189CC 800A182C 24C6016C */  addiu $a2, %lo(D_8014016C) # addiu $a2, $a2, 0x16c
/* B189D0 800A1830 27A40034 */  addiu $a0, $sp, 0x34
/* B189D4 800A1834 240704BE */  li    $a3, 1214
/* B189D8 800A1838 0C031AB1 */  jal   func_800C6AC4
/* B189DC 800A183C AFA50044 */   sw    $a1, 0x44($sp)
/* B189E0 800A1840 0C034213 */  jal   func_800D084C
/* B189E4 800A1844 00000000 */   nop   
/* B189E8 800A1848 8FB8006C */  lw    $t8, 0x6c($sp)
/* B189EC 800A184C 8FAF0070 */  lw    $t7, 0x70($sp)
/* B189F0 800A1850 3C0D8016 */  lui   $t5, 0x8016
/* B189F4 800A1854 0018C880 */  sll   $t9, $t8, 2
/* B189F8 800A1858 01F94021 */  addu  $t0, $t7, $t9
/* B189FC 800A185C 8D020000 */  lw    $v0, ($t0)
/* B18A00 800A1860 270E0001 */  addiu $t6, $t8, 1
/* B18A04 800A1864 8FB90074 */  lw    $t9, 0x74($sp)
/* B18A08 800A1868 000E4080 */  sll   $t0, $t6, 2
/* B18A0C 800A186C 00025100 */  sll   $t2, $v0, 4
/* B18A10 800A1870 000A5F02 */  srl   $t3, $t2, 0x1c
/* B18A14 800A1874 010E4023 */  subu  $t0, $t0, $t6
/* B18A18 800A1878 000B6080 */  sll   $t4, $t3, 2
/* B18A1C 800A187C 00084040 */  sll   $t0, $t0, 1
/* B18A20 800A1880 01AC6821 */  addu  $t5, $t5, $t4
/* B18A24 800A1884 AFAE006C */  sw    $t6, 0x6c($sp)
/* B18A28 800A1888 03285021 */  addu  $t2, $t9, $t0
/* B18A2C 800A188C 894C0000 */  lwl   $t4, ($t2)
/* B18A30 800A1890 994C0003 */  lwr   $t4, 3($t2)
/* B18A34 800A1894 8DAD6FA8 */  lw    $t5, 0x6fa8($t5)
/* B18A38 800A1898 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18A3C 800A189C 27AF0048 */  addiu $t7, $sp, 0x48
/* B18A40 800A18A0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18A44 800A18A4 ADEC0000 */  sw    $t4, ($t7)
/* B18A48 800A18A8 954C0004 */  lhu   $t4, 4($t2)
/* B18A4C 800A18AC 00414824 */  and   $t1, $v0, $at
/* B18A50 800A18B0 3C018000 */  lui   $at, 0x8000
/* B18A54 800A18B4 012D1821 */  addu  $v1, $t1, $t5
/* B18A58 800A18B8 00611821 */  addu  $v1, $v1, $at
/* B18A5C 800A18BC A5EC0004 */  sh    $t4, 4($t7)
/* B18A60 800A18C0 84690000 */  lh    $t1, ($v1)
/* B18A64 800A18C4 8FA80078 */  lw    $t0, 0x78($sp)
/* B18A68 800A18C8 8FA5006C */  lw    $a1, 0x6c($sp)
/* B18A6C 800A18CC 44892000 */  mtc1  $t1, $f4
/* B18A70 800A18D0 8FA40068 */  lw    $a0, 0x68($sp)
/* B18A74 800A18D4 27AF0048 */  addiu $t7, $sp, 0x48
/* B18A78 800A18D8 468021A0 */  cvt.s.w $f6, $f4
/* B18A7C 800A18DC 27A60060 */  addiu $a2, $sp, 0x60
/* B18A80 800A18E0 27A70050 */  addiu $a3, $sp, 0x50
/* B18A84 800A18E4 E7A60050 */  swc1  $f6, 0x50($sp)
/* B18A88 800A18E8 846D0002 */  lh    $t5, 2($v1)
/* B18A8C 800A18EC 448D4000 */  mtc1  $t5, $f8
/* B18A90 800A18F0 00000000 */  nop   
/* B18A94 800A18F4 468042A0 */  cvt.s.w $f10, $f8
/* B18A98 800A18F8 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B18A9C 800A18FC 84780004 */  lh    $t8, 4($v1)
/* B18AA0 800A1900 44988000 */  mtc1  $t8, $f16
/* B18AA4 800A1904 00000000 */  nop   
/* B18AA8 800A1908 468084A0 */  cvt.s.w $f18, $f16
/* B18AAC 800A190C E7B20058 */  swc1  $f18, 0x58($sp)
/* B18AB0 800A1910 8C6E0008 */  lw    $t6, 8($v1)
/* B18AB4 800A1914 AFA30064 */  sw    $v1, 0x64($sp)
/* B18AB8 800A1918 AFAE005C */  sw    $t6, 0x5c($sp)
/* B18ABC 800A191C 11000007 */  beqz  $t0, .L800A193C
/* B18AC0 800A1920 AFAE0060 */   sw    $t6, 0x60($sp)
/* B18AC4 800A1924 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18AC8 800A1928 AFAF0010 */  sw    $t7, 0x10($sp)
/* B18ACC 800A192C AFA30064 */  sw    $v1, 0x64($sp)
/* B18AD0 800A1930 0100F809 */  jalr  $t0
/* B18AD4 800A1934 AFAA0014 */  sw    $t2, 0x14($sp)
/* B18AD8 800A1938 1440002D */  bnez  $v0, .L800A19F0
.L800A193C:
/* B18ADC 800A193C 27A40050 */   addiu $a0, $sp, 0x50
/* B18AE0 800A1940 0C0344D0 */  jal   func_800D1340
/* B18AE4 800A1944 27A50048 */   addiu $a1, $sp, 0x48
/* B18AE8 800A1948 8FAB0060 */  lw    $t3, 0x60($sp)
/* B18AEC 800A194C 8FAC0084 */  lw    $t4, 0x84($sp)
/* B18AF0 800A1950 3C058014 */  lui   $a1, %hi(D_80140180) # $a1, 0x8014
/* B18AF4 800A1954 1160001B */  beqz  $t3, .L800A19C4
/* B18AF8 800A1958 8FA9005C */   lw    $t1, 0x5c($sp)
/* B18AFC 800A195C 8D840000 */  lw    $a0, ($t4)
/* B18B00 800A1960 24A50180 */  addiu $a1, %lo(D_80140180) # addiu $a1, $a1, 0x180
/* B18B04 800A1964 0C034695 */  jal   func_800D1A54
/* B18B08 800A1968 240604DA */   li    $a2, 1242
/* B18B0C 800A196C 8FA40044 */  lw    $a0, 0x44($sp)
/* B18B10 800A1970 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* B18B14 800A1974 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* B18B18 800A1978 8C8302C0 */  lw    $v1, 0x2c0($a0)
/* B18B1C 800A197C 3C0FDE00 */  lui   $t7, 0xde00
/* B18B20 800A1980 24690008 */  addiu $t1, $v1, 8
/* B18B24 800A1984 AC8902C0 */  sw    $t1, 0x2c0($a0)
/* B18B28 800A1988 AC6D0000 */  sw    $t5, ($v1)
/* B18B2C 800A198C 8FB80084 */  lw    $t8, 0x84($sp)
/* B18B30 800A1990 8F0E0000 */  lw    $t6, ($t8)
/* B18B34 800A1994 AC6E0004 */  sw    $t6, 4($v1)
/* B18B38 800A1998 8C8302C0 */  lw    $v1, 0x2c0($a0)
/* B18B3C 800A199C 24790008 */  addiu $t9, $v1, 8
/* B18B40 800A19A0 AC9902C0 */  sw    $t9, 0x2c0($a0)
/* B18B44 800A19A4 AC6F0000 */  sw    $t7, ($v1)
/* B18B48 800A19A8 8FAA0060 */  lw    $t2, 0x60($sp)
/* B18B4C 800A19AC AC6A0004 */  sw    $t2, 4($v1)
/* B18B50 800A19B0 8FA80084 */  lw    $t0, 0x84($sp)
/* B18B54 800A19B4 8D0B0000 */  lw    $t3, ($t0)
/* B18B58 800A19B8 256C0040 */  addiu $t4, $t3, 0x40
/* B18B5C 800A19BC 1000000C */  b     .L800A19F0
/* B18B60 800A19C0 AD0C0000 */   sw    $t4, ($t0)
.L800A19C4:
/* B18B64 800A19C4 1120000A */  beqz  $t1, .L800A19F0
/* B18B68 800A19C8 8FAD0084 */   lw    $t5, 0x84($sp)
/* B18B6C 800A19CC 3C058014 */  lui   $a1, %hi(D_80140194) # $a1, 0x8014
/* B18B70 800A19D0 24A50194 */  addiu $a1, %lo(D_80140194) # addiu $a1, $a1, 0x194
/* B18B74 800A19D4 8DA40000 */  lw    $a0, ($t5)
/* B18B78 800A19D8 0C034695 */  jal   func_800D1A54
/* B18B7C 800A19DC 240604E1 */   li    $a2, 1249
/* B18B80 800A19E0 8FB80084 */  lw    $t8, 0x84($sp)
/* B18B84 800A19E4 8F0E0000 */  lw    $t6, ($t8)
/* B18B88 800A19E8 25D90040 */  addiu $t9, $t6, 0x40
/* B18B8C 800A19EC AF190000 */  sw    $t9, ($t8)
.L800A19F0:
/* B18B90 800A19F0 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18B94 800A19F4 8FA40068 */  lw    $a0, 0x68($sp)
/* B18B98 800A19F8 8FA5006C */  lw    $a1, 0x6c($sp)
/* B18B9C 800A19FC 11E00005 */  beqz  $t7, .L800A1A14
/* B18BA0 800A1A00 27A6005C */   addiu $a2, $sp, 0x5c
/* B18BA4 800A1A04 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18BA8 800A1A08 27A70048 */  addiu $a3, $sp, 0x48
/* B18BAC 800A1A0C 01E0F809 */  jalr  $t7
/* B18BB0 800A1A10 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A1A14:
/* B18BB4 800A1A14 8FAB0064 */  lw    $t3, 0x64($sp)
/* B18BB8 800A1A18 240100FF */  li    $at, 255
/* B18BBC 800A1A1C 8FA40068 */  lw    $a0, 0x68($sp)
/* B18BC0 800A1A20 91650006 */  lbu   $a1, 6($t3)
/* B18BC4 800A1A24 8FA60070 */  lw    $a2, 0x70($sp)
/* B18BC8 800A1A28 8FA70074 */  lw    $a3, 0x74($sp)
/* B18BCC 800A1A2C 10A10009 */  beq   $a1, $at, .L800A1A54
/* B18BD0 800A1A30 8FAC0078 */   lw    $t4, 0x78($sp)
/* B18BD4 800A1A34 8FA8007C */  lw    $t0, 0x7c($sp)
/* B18BD8 800A1A38 8FA90080 */  lw    $t1, 0x80($sp)
/* B18BDC 800A1A3C 8FAD0084 */  lw    $t5, 0x84($sp)
/* B18BE0 800A1A40 AFAC0010 */  sw    $t4, 0x10($sp)
/* B18BE4 800A1A44 AFA80014 */  sw    $t0, 0x14($sp)
/* B18BE8 800A1A48 AFA90018 */  sw    $t1, 0x18($sp)
/* B18BEC 800A1A4C 0C028603 */  jal   func_800A180C
/* B18BF0 800A1A50 AFAD001C */   sw    $t5, 0x1c($sp)
.L800A1A54:
/* B18BF4 800A1A54 0C034221 */  jal   func_800D0884
/* B18BF8 800A1A58 00000000 */   nop   
/* B18BFC 800A1A5C 8FAE0064 */  lw    $t6, 0x64($sp)
/* B18C00 800A1A60 240100FF */  li    $at, 255
/* B18C04 800A1A64 8FA40068 */  lw    $a0, 0x68($sp)
/* B18C08 800A1A68 91C50007 */  lbu   $a1, 7($t6)
/* B18C0C 800A1A6C 8FA60070 */  lw    $a2, 0x70($sp)
/* B18C10 800A1A70 8FA70074 */  lw    $a3, 0x74($sp)
/* B18C14 800A1A74 10A10009 */  beq   $a1, $at, .L800A1A9C
/* B18C18 800A1A78 8FB90078 */   lw    $t9, 0x78($sp)
/* B18C1C 800A1A7C 8FB8007C */  lw    $t8, 0x7c($sp)
/* B18C20 800A1A80 8FAA0080 */  lw    $t2, 0x80($sp)
/* B18C24 800A1A84 8FAF0084 */  lw    $t7, 0x84($sp)
/* B18C28 800A1A88 AFB90010 */  sw    $t9, 0x10($sp)
/* B18C2C 800A1A8C AFB80014 */  sw    $t8, 0x14($sp)
/* B18C30 800A1A90 AFAA0018 */  sw    $t2, 0x18($sp)
/* B18C34 800A1A94 0C028603 */  jal   func_800A180C
/* B18C38 800A1A98 AFAF001C */   sw    $t7, 0x1c($sp)
.L800A1A9C:
/* B18C3C 800A1A9C 8FAB0068 */  lw    $t3, 0x68($sp)
/* B18C40 800A1AA0 3C068014 */  lui   $a2, %hi(D_801401A8) # $a2, 0x8014
/* B18C44 800A1AA4 24C601A8 */  addiu $a2, %lo(D_801401A8) # addiu $a2, $a2, 0x1a8
/* B18C48 800A1AA8 27A40034 */  addiu $a0, $sp, 0x34
/* B18C4C 800A1AAC 240704F1 */  li    $a3, 1265
/* B18C50 800A1AB0 0C031AD5 */  jal   func_800C6B54
/* B18C54 800A1AB4 8D650000 */   lw    $a1, ($t3)
/* B18C58 800A1AB8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B18C5C 800A1ABC 27BD0068 */  addiu $sp, $sp, 0x68
/* B18C60 800A1AC0 03E00008 */  jr    $ra
/* B18C64 800A1AC4 00000000 */   nop   

/* B18C68 800A1AC8 27BDFF88 */  addiu $sp, $sp, -0x78
/* B18C6C 800A1ACC AFBF0024 */  sw    $ra, 0x24($sp)
/* B18C70 800A1AD0 AFA40078 */  sw    $a0, 0x78($sp)
/* B18C74 800A1AD4 AFA5007C */  sw    $a1, 0x7c($sp)
/* B18C78 800A1AD8 AFA60080 */  sw    $a2, 0x80($sp)
/* B18C7C 800A1ADC 8C840000 */  lw    $a0, ($a0)
/* B18C80 800A1AE0 0C031A73 */  jal   graph_alloc
/* B18C84 800A1AE4 00072980 */   sll   $a1, $a3, 6
/* B18C88 800A1AE8 8FAF007C */  lw    $t7, 0x7c($sp)
/* B18C8C 800A1AEC AFA20050 */  sw    $v0, 0x50($sp)
/* B18C90 800A1AF0 8FB80078 */  lw    $t8, 0x78($sp)
/* B18C94 800A1AF4 15E0000C */  bnez  $t7, .L800A1B28
/* B18C98 800A1AF8 27A4003C */   addiu $a0, $sp, 0x3c
/* B18C9C 800A1AFC 3C048014 */  lui   $a0, %hi(D_801401BC) # $a0, 0x8014
/* B18CA0 800A1B00 0C00084C */  jal   DebugMessage
/* B18CA4 800A1B04 248401BC */   addiu $a0, %lo(D_801401BC) # addiu $a0, $a0, 0x1bc
/* B18CA8 800A1B08 3C048014 */  lui   $a0, %hi(D_801401C4) # $a0, 0x8014
/* B18CAC 800A1B0C 0C00084C */  jal   DebugMessage
/* B18CB0 800A1B10 248401C4 */   addiu $a0, %lo(D_801401C4) # addiu $a0, $a0, 0x1c4
/* B18CB4 800A1B14 3C048014 */  lui   $a0, %hi(D_801401E4) # $a0, 0x8014
/* B18CB8 800A1B18 0C00084C */  jal   DebugMessage
/* B18CBC 800A1B1C 248401E4 */   addiu $a0, %lo(D_801401E4) # addiu $a0, $a0, 0x1e4
/* B18CC0 800A1B20 10000097 */  b     .L800A1D80
/* B18CC4 800A1B24 8FBF0024 */   lw    $ra, 0x24($sp)
.L800A1B28:
/* B18CC8 800A1B28 8F050000 */  lw    $a1, ($t8)
/* B18CCC 800A1B2C 3C068014 */  lui   $a2, %hi(D_801401E8) # $a2, 0x8014
/* B18CD0 800A1B30 24C601E8 */  addiu $a2, %lo(D_801401E8) # addiu $a2, $a2, 0x1e8
/* B18CD4 800A1B34 2407050E */  li    $a3, 1294
/* B18CD8 800A1B38 0C031AB1 */  jal   func_800C6AC4
/* B18CDC 800A1B3C AFA5004C */   sw    $a1, 0x4c($sp)
/* B18CE0 800A1B40 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18CE4 800A1B44 3C09DB06 */  lui   $t1, (0xDB060034 >> 16) # lui $t1, 0xdb06
/* B18CE8 800A1B48 35290034 */  ori   $t1, (0xDB060034 & 0xFFFF) # ori $t1, $t1, 0x34
/* B18CEC 800A1B4C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18CF0 800A1B50 24590008 */  addiu $t9, $v0, 8
/* B18CF4 800A1B54 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B18CF8 800A1B58 AC490000 */  sw    $t1, ($v0)
/* B18CFC 800A1B5C 8FAA0050 */  lw    $t2, 0x50($sp)
/* B18D00 800A1B60 AC4A0004 */  sw    $t2, 4($v0)
/* B18D04 800A1B64 0C034213 */  jal   func_800D084C
/* B18D08 800A1B68 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18D0C 800A1B6C 8FAB007C */  lw    $t3, 0x7c($sp)
/* B18D10 800A1B70 3C188016 */  lui   $t8, 0x8016
/* B18D14 800A1B74 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B18D18 800A1B78 8D620000 */  lw    $v0, ($t3)
/* B18D1C 800A1B7C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B18D20 800A1B80 8FA30080 */  lw    $v1, 0x80($sp)
/* B18D24 800A1B84 00026900 */  sll   $t5, $v0, 4
/* B18D28 800A1B88 000D7702 */  srl   $t6, $t5, 0x1c
/* B18D2C 800A1B8C 000E7880 */  sll   $t7, $t6, 2
/* B18D30 800A1B90 030FC021 */  addu  $t8, $t8, $t7
/* B18D34 800A1B94 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B18D38 800A1B98 00416024 */  and   $t4, $v0, $at
/* B18D3C 800A1B9C 3C018000 */  lui   $at, 0x8000
/* B18D40 800A1BA0 0198C821 */  addu  $t9, $t4, $t8
/* B18D44 800A1BA4 03214821 */  addu  $t1, $t9, $at
/* B18D48 800A1BA8 AFA90074 */  sw    $t1, 0x74($sp)
/* B18D4C 800A1BAC 846A0000 */  lh    $t2, ($v1)
/* B18D50 800A1BB0 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18D54 800A1BB4 27AE0054 */  addiu $t6, $sp, 0x54
/* B18D58 800A1BB8 448A2000 */  mtc1  $t2, $f4
/* B18D5C 800A1BBC 27AA0054 */  addiu $t2, $sp, 0x54
/* B18D60 800A1BC0 24050001 */  li    $a1, 1
/* B18D64 800A1BC4 468021A0 */  cvt.s.w $f6, $f4
/* B18D68 800A1BC8 27A6006C */  addiu $a2, $sp, 0x6c
/* B18D6C 800A1BCC 27A7005C */  addiu $a3, $sp, 0x5c
/* B18D70 800A1BD0 E7A6005C */  swc1  $f6, 0x5c($sp)
/* B18D74 800A1BD4 846B0002 */  lh    $t3, 2($v1)
/* B18D78 800A1BD8 448B4000 */  mtc1  $t3, $f8
/* B18D7C 800A1BDC 00000000 */  nop   
/* B18D80 800A1BE0 468042A0 */  cvt.s.w $f10, $f8
/* B18D84 800A1BE4 E7AA0060 */  swc1  $f10, 0x60($sp)
/* B18D88 800A1BE8 846D0004 */  lh    $t5, 4($v1)
/* B18D8C 800A1BEC 448D8000 */  mtc1  $t5, $f16
/* B18D90 800A1BF0 00000000 */  nop   
/* B18D94 800A1BF4 468084A0 */  cvt.s.w $f18, $f16
/* B18D98 800A1BF8 E7B20064 */  swc1  $f18, 0x64($sp)
/* B18D9C 800A1BFC 886C0006 */  lwl   $t4, 6($v1)
/* B18DA0 800A1C00 986C0009 */  lwr   $t4, 9($v1)
/* B18DA4 800A1C04 ADCC0000 */  sw    $t4, ($t6)
/* B18DA8 800A1C08 946C000A */  lhu   $t4, 0xa($v1)
/* B18DAC 800A1C0C A5CC0004 */  sh    $t4, 4($t6)
/* B18DB0 800A1C10 8FB80074 */  lw    $t8, 0x74($sp)
/* B18DB4 800A1C14 8FA90088 */  lw    $t1, 0x88($sp)
/* B18DB8 800A1C18 8FA40078 */  lw    $a0, 0x78($sp)
/* B18DBC 800A1C1C 8F190008 */  lw    $t9, 8($t8)
/* B18DC0 800A1C20 AFB90068 */  sw    $t9, 0x68($sp)
/* B18DC4 800A1C24 11200008 */  beqz  $t1, .L800A1C48
/* B18DC8 800A1C28 AFB9006C */   sw    $t9, 0x6c($sp)
/* B18DCC 800A1C2C 8FAB0090 */  lw    $t3, 0x90($sp)
/* B18DD0 800A1C30 AFAA0010 */  sw    $t2, 0x10($sp)
/* B18DD4 800A1C34 AFA8004C */  sw    $t0, 0x4c($sp)
/* B18DD8 800A1C38 0120F809 */  jalr  $t1
/* B18DDC 800A1C3C AFAB0014 */  sw    $t3, 0x14($sp)
/* B18DE0 800A1C40 1440002C */  bnez  $v0, .L800A1CF4
/* B18DE4 800A1C44 8FA8004C */   lw    $t0, 0x4c($sp)
.L800A1C48:
/* B18DE8 800A1C48 27A4005C */  addiu $a0, $sp, 0x5c
/* B18DEC 800A1C4C 27A50054 */  addiu $a1, $sp, 0x54
/* B18DF0 800A1C50 0C0344D0 */  jal   func_800D1340
/* B18DF4 800A1C54 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18DF8 800A1C58 8FAD006C */  lw    $t5, 0x6c($sp)
/* B18DFC 800A1C5C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18E00 800A1C60 8FA40050 */  lw    $a0, 0x50($sp)
/* B18E04 800A1C64 11A00019 */  beqz  $t5, .L800A1CCC
/* B18E08 800A1C68 3C058014 */   lui   $a1, %hi(D_801401FC) # $a1, 0x8014
/* B18E0C 800A1C6C 24A501FC */  addiu $a1, %lo(D_801401FC) # addiu $a1, $a1, 0x1fc
/* B18E10 800A1C70 2406052F */  li    $a2, 1327
/* B18E14 800A1C74 0C034695 */  jal   func_800D1A54
/* B18E18 800A1C78 AFA8004C */   sw    $t0, 0x4c($sp)
/* B18E1C 800A1C7C 8FA8004C */  lw    $t0, 0x4c($sp)
/* B18E20 800A1C80 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* B18E24 800A1C84 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* B18E28 800A1C88 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18E2C 800A1C8C 3C19DE00 */  lui   $t9, 0xde00
/* B18E30 800A1C90 244E0008 */  addiu $t6, $v0, 8
/* B18E34 800A1C94 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B18E38 800A1C98 AC4F0000 */  sw    $t7, ($v0)
/* B18E3C 800A1C9C 8FAC0050 */  lw    $t4, 0x50($sp)
/* B18E40 800A1CA0 AC4C0004 */  sw    $t4, 4($v0)
/* B18E44 800A1CA4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B18E48 800A1CA8 24580008 */  addiu $t8, $v0, 8
/* B18E4C 800A1CAC AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B18E50 800A1CB0 AC590000 */  sw    $t9, ($v0)
/* B18E54 800A1CB4 8FAA006C */  lw    $t2, 0x6c($sp)
/* B18E58 800A1CB8 AC4A0004 */  sw    $t2, 4($v0)
/* B18E5C 800A1CBC 8FAB0050 */  lw    $t3, 0x50($sp)
/* B18E60 800A1CC0 25690040 */  addiu $t1, $t3, 0x40
/* B18E64 800A1CC4 1000000B */  b     .L800A1CF4
/* B18E68 800A1CC8 AFA90050 */   sw    $t1, 0x50($sp)
.L800A1CCC:
/* B18E6C 800A1CCC 8FAD0068 */  lw    $t5, 0x68($sp)
/* B18E70 800A1CD0 3C058014 */  lui   $a1, %hi(D_80140210) # $a1, 0x8014
/* B18E74 800A1CD4 24A50210 */  addiu $a1, %lo(D_80140210) # addiu $a1, $a1, 0x210
/* B18E78 800A1CD8 11A00006 */  beqz  $t5, .L800A1CF4
/* B18E7C 800A1CDC 8FA40050 */   lw    $a0, 0x50($sp)
/* B18E80 800A1CE0 0C034695 */  jal   func_800D1A54
/* B18E84 800A1CE4 24060536 */   li    $a2, 1334
/* B18E88 800A1CE8 8FAE0050 */  lw    $t6, 0x50($sp)
/* B18E8C 800A1CEC 25CF0040 */  addiu $t7, $t6, 0x40
/* B18E90 800A1CF0 AFAF0050 */  sw    $t7, 0x50($sp)
.L800A1CF4:
/* B18E94 800A1CF4 8FA2008C */  lw    $v0, 0x8c($sp)
/* B18E98 800A1CF8 8FA40078 */  lw    $a0, 0x78($sp)
/* B18E9C 800A1CFC 24050001 */  li    $a1, 1
/* B18EA0 800A1D00 10400006 */  beqz  $v0, .L800A1D1C
/* B18EA4 800A1D04 27A60068 */   addiu $a2, $sp, 0x68
/* B18EA8 800A1D08 8FAC0090 */  lw    $t4, 0x90($sp)
/* B18EAC 800A1D0C 27A70054 */  addiu $a3, $sp, 0x54
/* B18EB0 800A1D10 0040F809 */  jalr  $v0
/* B18EB4 800A1D14 AFAC0010 */  sw    $t4, 0x10($sp)
/* B18EB8 800A1D18 8FA2008C */  lw    $v0, 0x8c($sp)
.L800A1D1C:
/* B18EBC 800A1D1C 8FB80074 */  lw    $t8, 0x74($sp)
/* B18EC0 800A1D20 240100FF */  li    $at, 255
/* B18EC4 800A1D24 8FA40078 */  lw    $a0, 0x78($sp)
/* B18EC8 800A1D28 93050006 */  lbu   $a1, 6($t8)
/* B18ECC 800A1D2C 8FA6007C */  lw    $a2, 0x7c($sp)
/* B18ED0 800A1D30 8FA70080 */  lw    $a3, 0x80($sp)
/* B18ED4 800A1D34 10A10008 */  beq   $a1, $at, .L800A1D58
/* B18ED8 800A1D38 8FB90088 */   lw    $t9, 0x88($sp)
/* B18EDC 800A1D3C 8FAA0090 */  lw    $t2, 0x90($sp)
/* B18EE0 800A1D40 27AB0050 */  addiu $t3, $sp, 0x50
/* B18EE4 800A1D44 AFAB001C */  sw    $t3, 0x1c($sp)
/* B18EE8 800A1D48 AFB90010 */  sw    $t9, 0x10($sp)
/* B18EEC 800A1D4C AFA20014 */  sw    $v0, 0x14($sp)
/* B18EF0 800A1D50 0C028603 */  jal   func_800A180C
/* B18EF4 800A1D54 AFAA0018 */   sw    $t2, 0x18($sp)
.L800A1D58:
/* B18EF8 800A1D58 0C034221 */  jal   func_800D0884
/* B18EFC 800A1D5C 00000000 */   nop   
/* B18F00 800A1D60 8FA90078 */  lw    $t1, 0x78($sp)
/* B18F04 800A1D64 3C068014 */  lui   $a2, %hi(D_80140224) # $a2, 0x8014
/* B18F08 800A1D68 24C60224 */  addiu $a2, %lo(D_80140224) # addiu $a2, $a2, 0x224
/* B18F0C 800A1D6C 27A4003C */  addiu $a0, $sp, 0x3c
/* B18F10 800A1D70 24070543 */  li    $a3, 1347
/* B18F14 800A1D74 0C031AD5 */  jal   func_800C6B54
/* B18F18 800A1D78 8D250000 */   lw    $a1, ($t1)
/* B18F1C 800A1D7C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A1D80:
/* B18F20 800A1D80 27BD0078 */  addiu $sp, $sp, 0x78
/* B18F24 800A1D84 03E00008 */  jr    $ra
/* B18F28 800A1D88 00000000 */   nop   

glabel func_800A1D8C
/* B18F2C 800A1D8C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B18F30 800A1D90 00047100 */  sll   $t6, $a0, 4
/* B18F34 800A1D94 3C098016 */  lui   $t1, %hi(D_80166FA8) # $t1, 0x8016
/* B18F38 800A1D98 000E7F02 */  srl   $t7, $t6, 0x1c
/* B18F3C 800A1D9C 25296FA8 */  addiu $t1, %lo(D_80166FA8) # addiu $t1, $t1, 0x6fa8
/* B18F40 800A1DA0 000FC080 */  sll   $t8, $t7, 2
/* B18F44 800A1DA4 0138C821 */  addu  $t9, $t1, $t8
/* B18F48 800A1DA8 8F2D0000 */  lw    $t5, ($t9)
/* B18F4C 800A1DAC 3C0A00FF */  lui   $t2, (0x00FFFFFF >> 16) # lui $t2, 0xff
/* B18F50 800A1DB0 354AFFFF */  ori   $t2, (0x00FFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* B18F54 800A1DB4 008A7024 */  and   $t6, $a0, $t2
/* B18F58 800A1DB8 3C0B8000 */  lui   $t3, 0x8000
/* B18F5C 800A1DBC 01AE7821 */  addu  $t7, $t5, $t6
/* B18F60 800A1DC0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B18F64 800A1DC4 AFBE0038 */  sw    $fp, 0x38($sp)
/* B18F68 800A1DC8 AFB70034 */  sw    $s7, 0x34($sp)
/* B18F6C 800A1DCC AFB60030 */  sw    $s6, 0x30($sp)
/* B18F70 800A1DD0 AFB5002C */  sw    $s5, 0x2c($sp)
/* B18F74 800A1DD4 AFB40028 */  sw    $s4, 0x28($sp)
/* B18F78 800A1DD8 AFB30024 */  sw    $s3, 0x24($sp)
/* B18F7C 800A1DDC AFB20020 */  sw    $s2, 0x20($sp)
/* B18F80 800A1DE0 AFB1001C */  sw    $s1, 0x1c($sp)
/* B18F84 800A1DE4 AFB00018 */  sw    $s0, 0x18($sp)
/* B18F88 800A1DE8 01EB1021 */  addu  $v0, $t7, $t3
/* B18F8C 800A1DEC 8C430008 */  lw    $v1, 8($v0)
/* B18F90 800A1DF0 8C480004 */  lw    $t0, 4($v0)
/* B18F94 800A1DF4 00E08025 */  move  $s0, $a3
/* B18F98 800A1DF8 0003C100 */  sll   $t8, $v1, 4
/* B18F9C 800A1DFC 0018CF02 */  srl   $t9, $t8, 0x1c
/* B18FA0 800A1E00 00196880 */  sll   $t5, $t9, 2
/* B18FA4 800A1E04 012D7021 */  addu  $t6, $t1, $t5
/* B18FA8 800A1E08 8DCF0000 */  lw    $t7, ($t6)
/* B18FAC 800A1E0C 006AC024 */  and   $t8, $v1, $t2
/* B18FB0 800A1E10 00086900 */  sll   $t5, $t0, 4
/* B18FB4 800A1E14 01F8C821 */  addu  $t9, $t7, $t8
/* B18FB8 800A1E18 000D7702 */  srl   $t6, $t5, 0x1c
/* B18FBC 800A1E1C 000E7880 */  sll   $t7, $t6, 2
/* B18FC0 800A1E20 032B8821 */  addu  $s1, $t9, $t3
/* B18FC4 800A1E24 012FC021 */  addu  $t8, $t1, $t7
/* B18FC8 800A1E28 8F190000 */  lw    $t9, ($t8)
/* B18FCC 800A1E2C 010A6824 */  and   $t5, $t0, $t2
/* B18FD0 800A1E30 00C0B025 */  move  $s6, $a2
/* B18FD4 800A1E34 032D7021 */  addu  $t6, $t9, $t5
/* B18FD8 800A1E38 01CB9021 */  addu  $s2, $t6, $t3
/* B18FDC 800A1E3C 944C000C */  lhu   $t4, 0xc($v0)
/* B18FE0 800A1E40 18C00055 */  blez  $a2, .L800A1F98
/* B18FE4 800A1E44 0000A025 */   move  $s4, $zero
/* B18FE8 800A1E48 00057840 */  sll   $t7, $a1, 1
/* B18FEC 800A1E4C 3C1E8014 */  lui   $fp, %hi(D_8014024C) # $fp, 0x8014
/* B18FF0 800A1E50 3C178014 */  lui   $s7, %hi(D_80140238) # $s7, 0x8014
/* B18FF4 800A1E54 26F70238 */  addiu $s7, %lo(D_80140238) # addiu $s7, $s7, 0x238
/* B18FF8 800A1E58 27DE024C */  addiu $fp, %lo(D_8014024C) # addiu $fp, $fp, 0x24c
/* B18FFC 800A1E5C 01F29821 */  addu  $s3, $t7, $s2
/* B19000 800A1E60 0180A825 */  move  $s5, $t4
.L800A1E64:
/* B19004 800A1E64 12000007 */  beqz  $s0, .L800A1E84
/* B19008 800A1E68 02E02025 */   move  $a0, $s7
/* B1900C 800A1E6C 12200005 */  beqz  $s1, .L800A1E84
/* B19010 800A1E70 00000000 */   nop   
/* B19014 800A1E74 12600003 */  beqz  $s3, .L800A1E84
/* B19018 800A1E78 00000000 */   nop   
/* B1901C 800A1E7C 5640001F */  bnezl $s2, .L800A1EFC
/* B19020 800A1E80 96220000 */   lhu   $v0, ($s1)
.L800A1E84:
/* B19024 800A1E84 0C000B84 */  jal   DebugMessageWithThreadId
/* B19028 800A1E88 24050570 */   li    $a1, 1392
/* B1902C 800A1E8C 03C02025 */  move  $a0, $fp
/* B19030 800A1E90 0C00084C */  jal   DebugMessage
/* B19034 800A1E94 02002825 */   move  $a1, $s0
/* B19038 800A1E98 3C048014 */  lui   $a0, %hi(D_80140258) # $a0, 0x8014
/* B1903C 800A1E9C 24840258 */  addiu $a0, %lo(D_80140258) # addiu $a0, $a0, 0x258
/* B19040 800A1EA0 0C000B84 */  jal   DebugMessageWithThreadId
/* B19044 800A1EA4 24050571 */   li    $a1, 1393
/* B19048 800A1EA8 3C048014 */  lui   $a0, %hi(D_8014026C) # $a0, 0x8014
/* B1904C 800A1EAC 2484026C */  addiu $a0, %lo(D_8014026C) # addiu $a0, $a0, 0x26c
/* B19050 800A1EB0 0C00084C */  jal   DebugMessage
/* B19054 800A1EB4 02202825 */   move  $a1, $s1
/* B19058 800A1EB8 3C048014 */  lui   $a0, %hi(D_8014027C) # $a0, 0x8014
/* B1905C 800A1EBC 2484027C */  addiu $a0, %lo(D_8014027C) # addiu $a0, $a0, 0x27c
/* B19060 800A1EC0 0C000B84 */  jal   DebugMessageWithThreadId
/* B19064 800A1EC4 24050572 */   li    $a1, 1394
/* B19068 800A1EC8 3C048014 */  lui   $a0, %hi(D_80140290) # $a0, 0x8014
/* B1906C 800A1ECC 24840290 */  addiu $a0, %lo(D_80140290) # addiu $a0, $a0, 0x290
/* B19070 800A1ED0 0C00084C */  jal   DebugMessage
/* B19074 800A1ED4 02602825 */   move  $a1, $s3
/* B19078 800A1ED8 3C048014 */  lui   $a0, %hi(D_801402A4) # $a0, 0x8014
/* B1907C 800A1EDC 248402A4 */  addiu $a0, %lo(D_801402A4) # addiu $a0, $a0, 0x2a4
/* B19080 800A1EE0 0C000B84 */  jal   DebugMessageWithThreadId
/* B19084 800A1EE4 24050573 */   li    $a1, 1395
/* B19088 800A1EE8 3C048014 */  lui   $a0, %hi(D_801402B8) # $a0, 0x8014
/* B1908C 800A1EEC 248402B8 */  addiu $a0, %lo(D_801402B8) # addiu $a0, $a0, 0x2b8
/* B19090 800A1EF0 0C00084C */  jal   DebugMessage
/* B19094 800A1EF4 02402825 */   move  $a1, $s2
/* B19098 800A1EF8 96220000 */  lhu   $v0, ($s1)
.L800A1EFC:
/* B1909C 800A1EFC 26940001 */  addiu $s4, $s4, 1
/* B190A0 800A1F00 0055082A */  slt   $at, $v0, $s5
/* B190A4 800A1F04 14200006 */  bnez  $at, .L800A1F20
/* B190A8 800A1F08 00027040 */   sll   $t6, $v0, 1
/* B190AC 800A1F0C 0002C040 */  sll   $t8, $v0, 1
/* B190B0 800A1F10 0278C821 */  addu  $t9, $s3, $t8
/* B190B4 800A1F14 872D0000 */  lh    $t5, ($t9)
/* B190B8 800A1F18 10000004 */  b     .L800A1F2C
/* B190BC 800A1F1C A60D0000 */   sh    $t5, ($s0)
.L800A1F20:
/* B190C0 800A1F20 024E7821 */  addu  $t7, $s2, $t6
/* B190C4 800A1F24 85F80000 */  lh    $t8, ($t7)
/* B190C8 800A1F28 A6180000 */  sh    $t8, ($s0)
.L800A1F2C:
/* B190CC 800A1F2C 96220002 */  lhu   $v0, 2($s1)
/* B190D0 800A1F30 0055082A */  slt   $at, $v0, $s5
/* B190D4 800A1F34 14200006 */  bnez  $at, .L800A1F50
/* B190D8 800A1F38 00027840 */   sll   $t7, $v0, 1
/* B190DC 800A1F3C 0002C840 */  sll   $t9, $v0, 1
/* B190E0 800A1F40 02796821 */  addu  $t5, $s3, $t9
/* B190E4 800A1F44 85AE0000 */  lh    $t6, ($t5)
/* B190E8 800A1F48 10000004 */  b     .L800A1F5C
/* B190EC 800A1F4C A60E0002 */   sh    $t6, 2($s0)
.L800A1F50:
/* B190F0 800A1F50 024FC021 */  addu  $t8, $s2, $t7
/* B190F4 800A1F54 87190000 */  lh    $t9, ($t8)
/* B190F8 800A1F58 A6190002 */  sh    $t9, 2($s0)
.L800A1F5C:
/* B190FC 800A1F5C 96220004 */  lhu   $v0, 4($s1)
/* B19100 800A1F60 26310006 */  addiu $s1, $s1, 6
/* B19104 800A1F64 0055082A */  slt   $at, $v0, $s5
/* B19108 800A1F68 14200006 */  bnez  $at, .L800A1F84
/* B1910C 800A1F6C 0002C040 */   sll   $t8, $v0, 1
/* B19110 800A1F70 00026840 */  sll   $t5, $v0, 1
/* B19114 800A1F74 026D7021 */  addu  $t6, $s3, $t5
/* B19118 800A1F78 85CF0000 */  lh    $t7, ($t6)
/* B1911C 800A1F7C 10000004 */  b     .L800A1F90
/* B19120 800A1F80 A60F0004 */   sh    $t7, 4($s0)
.L800A1F84:
/* B19124 800A1F84 0258C821 */  addu  $t9, $s2, $t8
/* B19128 800A1F88 872D0000 */  lh    $t5, ($t9)
/* B1912C 800A1F8C A60D0004 */  sh    $t5, 4($s0)
.L800A1F90:
/* B19130 800A1F90 1696FFB4 */  bne   $s4, $s6, .L800A1E64
/* B19134 800A1F94 26100006 */   addiu $s0, $s0, 6
.L800A1F98:
/* B19138 800A1F98 8FBF003C */  lw    $ra, 0x3c($sp)
/* B1913C 800A1F9C 8FB00018 */  lw    $s0, 0x18($sp)
/* B19140 800A1FA0 8FB1001C */  lw    $s1, 0x1c($sp)
/* B19144 800A1FA4 8FB20020 */  lw    $s2, 0x20($sp)
/* B19148 800A1FA8 8FB30024 */  lw    $s3, 0x24($sp)
/* B1914C 800A1FAC 8FB40028 */  lw    $s4, 0x28($sp)
/* B19150 800A1FB0 8FB5002C */  lw    $s5, 0x2c($sp)
/* B19154 800A1FB4 8FB60030 */  lw    $s6, 0x30($sp)
/* B19158 800A1FB8 8FB70034 */  lw    $s7, 0x34($sp)
/* B1915C 800A1FBC 8FBE0038 */  lw    $fp, 0x38($sp)
/* B19160 800A1FC0 03E00008 */  jr    $ra
/* B19164 800A1FC4 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_800A1FC8
/* B19168 800A1FC8 00047100 */  sll   $t6, $a0, 4
/* B1916C 800A1FCC 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19170 800A1FD0 000FC080 */  sll   $t8, $t7, 2
/* B19174 800A1FD4 3C198016 */  lui   $t9, 0x8016
/* B19178 800A1FD8 0338C821 */  addu  $t9, $t9, $t8
/* B1917C 800A1FDC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19180 800A1FE0 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B19184 800A1FE4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19188 800A1FE8 00814024 */  and   $t0, $a0, $at
/* B1918C 800A1FEC 3C018000 */  lui   $at, 0x8000
/* B19190 800A1FF0 03281821 */  addu  $v1, $t9, $t0
/* B19194 800A1FF4 00611821 */  addu  $v1, $v1, $at
/* B19198 800A1FF8 03E00008 */  jr    $ra
/* B1919C 800A1FFC 84620000 */   lh    $v0, ($v1)

glabel func_800A2000
/* B191A0 800A2000 00047100 */  sll   $t6, $a0, 4
/* B191A4 800A2004 000E7F02 */  srl   $t7, $t6, 0x1c
/* B191A8 800A2008 000FC080 */  sll   $t8, $t7, 2
/* B191AC 800A200C 3C198016 */  lui   $t9, 0x8016
/* B191B0 800A2010 0338C821 */  addu  $t9, $t9, $t8
/* B191B4 800A2014 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B191B8 800A2018 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B191BC 800A201C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B191C0 800A2020 00814024 */  and   $t0, $a0, $at
/* B191C4 800A2024 3C018000 */  lui   $at, 0x8000
/* B191C8 800A2028 03281821 */  addu  $v1, $t9, $t0
/* B191CC 800A202C 00611821 */  addu  $v1, $v1, $at
/* B191D0 800A2030 94620000 */  lhu   $v0, ($v1)
/* B191D4 800A2034 2442FFFF */  addiu $v0, $v0, -1
/* B191D8 800A2038 00021400 */  sll   $v0, $v0, 0x10
/* B191DC 800A203C 03E00008 */  jr    $ra
/* B191E0 800A2040 00021403 */   sra   $v0, $v0, 0x10

glabel func_800A2044
/* B191E4 800A2044 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B191E8 800A2048 AFBF002C */  sw    $ra, 0x2c($sp)
/* B191EC 800A204C AFB00028 */  sw    $s0, 0x28($sp)
/* B191F0 800A2050 AFA40058 */  sw    $a0, 0x58($sp)
/* B191F4 800A2054 AFA5005C */  sw    $a1, 0x5c($sp)
/* B191F8 800A2058 AFA60060 */  sw    $a2, 0x60($sp)
/* B191FC 800A205C 0C034213 */  jal   func_800D084C
/* B19200 800A2060 AFA70064 */   sw    $a3, 0x64($sp)
/* B19204 800A2064 8FAF005C */  lw    $t7, 0x5c($sp)
/* B19208 800A2068 8FAE0060 */  lw    $t6, 0x60($sp)
/* B1920C 800A206C 3C0C8016 */  lui   $t4, 0x8016
/* B19210 800A2070 000FC080 */  sll   $t8, $t7, 2
/* B19214 800A2074 01D8C821 */  addu  $t9, $t6, $t8
/* B19218 800A2078 8F220000 */  lw    $v0, ($t9)
/* B1921C 800A207C 25ED0001 */  addiu $t5, $t7, 1
/* B19220 800A2080 8FB80064 */  lw    $t8, 0x64($sp)
/* B19224 800A2084 000DC880 */  sll   $t9, $t5, 2
/* B19228 800A2088 00024900 */  sll   $t1, $v0, 4
/* B1922C 800A208C 00095702 */  srl   $t2, $t1, 0x1c
/* B19230 800A2090 032DC823 */  subu  $t9, $t9, $t5
/* B19234 800A2094 000A5880 */  sll   $t3, $t2, 2
/* B19238 800A2098 0019C840 */  sll   $t9, $t9, 1
/* B1923C 800A209C 018B6021 */  addu  $t4, $t4, $t3
/* B19240 800A20A0 AFAD005C */  sw    $t5, 0x5c($sp)
/* B19244 800A20A4 03194821 */  addu  $t1, $t8, $t9
/* B19248 800A20A8 892B0000 */  lwl   $t3, ($t1)
/* B1924C 800A20AC 992B0003 */  lwr   $t3, 3($t1)
/* B19250 800A20B0 8D8C6FA8 */  lw    $t4, 0x6fa8($t4)
/* B19254 800A20B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19258 800A20B8 27AE003C */  addiu $t6, $sp, 0x3c
/* B1925C 800A20BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19260 800A20C0 ADCB0000 */  sw    $t3, ($t6)
/* B19264 800A20C4 952B0004 */  lhu   $t3, 4($t1)
/* B19268 800A20C8 00414024 */  and   $t0, $v0, $at
/* B1926C 800A20CC 3C018000 */  lui   $at, 0x8000
/* B19270 800A20D0 010C8021 */  addu  $s0, $t0, $t4
/* B19274 800A20D4 02018021 */  addu  $s0, $s0, $at
/* B19278 800A20D8 A5CB0004 */  sh    $t3, 4($t6)
/* B1927C 800A20DC 86080000 */  lh    $t0, ($s0)
/* B19280 800A20E0 8FB80068 */  lw    $t8, 0x68($sp)
/* B19284 800A20E4 8FA5005C */  lw    $a1, 0x5c($sp)
/* B19288 800A20E8 44882000 */  mtc1  $t0, $f4
/* B1928C 800A20EC 8FA40058 */  lw    $a0, 0x58($sp)
/* B19290 800A20F0 27A90074 */  addiu $t1, $sp, 0x74
/* B19294 800A20F4 468021A0 */  cvt.s.w $f6, $f4
/* B19298 800A20F8 27B9003C */  addiu $t9, $sp, 0x3c
/* B1929C 800A20FC 27A60050 */  addiu $a2, $sp, 0x50
/* B192A0 800A2100 27A70044 */  addiu $a3, $sp, 0x44
/* B192A4 800A2104 E7A60044 */  swc1  $f6, 0x44($sp)
/* B192A8 800A2108 860C0002 */  lh    $t4, 2($s0)
/* B192AC 800A210C 448C4000 */  mtc1  $t4, $f8
/* B192B0 800A2110 00000000 */  nop   
/* B192B4 800A2114 468042A0 */  cvt.s.w $f10, $f8
/* B192B8 800A2118 E7AA0048 */  swc1  $f10, 0x48($sp)
/* B192BC 800A211C 860F0004 */  lh    $t7, 4($s0)
/* B192C0 800A2120 448F8000 */  mtc1  $t7, $f16
/* B192C4 800A2124 00000000 */  nop   
/* B192C8 800A2128 468084A0 */  cvt.s.w $f18, $f16
/* B192CC 800A212C E7B2004C */  swc1  $f18, 0x4c($sp)
/* B192D0 800A2130 8E0D0008 */  lw    $t5, 8($s0)
/* B192D4 800A2134 13000007 */  beqz  $t8, .L800A2154
/* B192D8 800A2138 AFAD0050 */   sw    $t5, 0x50($sp)
/* B192DC 800A213C 8FAE0070 */  lw    $t6, 0x70($sp)
/* B192E0 800A2140 AFB90010 */  sw    $t9, 0x10($sp)
/* B192E4 800A2144 AFA90018 */  sw    $t1, 0x18($sp)
/* B192E8 800A2148 0300F809 */  jalr  $t8
/* B192EC 800A214C AFAE0014 */  sw    $t6, 0x14($sp)
/* B192F0 800A2150 1440001B */  bnez  $v0, .L800A21C0
.L800A2154:
/* B192F4 800A2154 27A40044 */   addiu $a0, $sp, 0x44
/* B192F8 800A2158 0C0344D0 */  jal   func_800D1340
/* B192FC 800A215C 27A5003C */   addiu $a1, $sp, 0x3c
/* B19300 800A2160 8FAA0050 */  lw    $t2, 0x50($sp)
/* B19304 800A2164 8FAB0074 */  lw    $t3, 0x74($sp)
/* B19308 800A2168 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* B1930C 800A216C 11400014 */  beqz  $t2, .L800A21C0
/* B19310 800A2170 25680008 */   addiu $t0, $t3, 8
/* B19314 800A2174 AFA80074 */  sw    $t0, 0x74($sp)
/* B19318 800A2178 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* B1931C 800A217C AD6C0000 */  sw    $t4, ($t3)
/* B19320 800A2180 8FAF0058 */  lw    $t7, 0x58($sp)
/* B19324 800A2184 3C058014 */  lui   $a1, %hi(D_801402C4) # $a1, 0x8014
/* B19328 800A2188 24A502C4 */  addiu $a1, %lo(D_801402C4) # addiu $a1, $a1, 0x2c4
/* B1932C 800A218C 8DE40000 */  lw    $a0, ($t7)
/* B19330 800A2190 AFAB0038 */  sw    $t3, 0x38($sp)
/* B19334 800A2194 0C0346A2 */  jal   func_800D1A88
/* B19338 800A2198 240605D1 */   li    $a2, 1489
/* B1933C 800A219C 8FA30038 */  lw    $v1, 0x38($sp)
/* B19340 800A21A0 3C0EDE00 */  lui   $t6, 0xde00
/* B19344 800A21A4 AC620004 */  sw    $v0, 4($v1)
/* B19348 800A21A8 8FAD0074 */  lw    $t5, 0x74($sp)
/* B1934C 800A21AC 25B90008 */  addiu $t9, $t5, 8
/* B19350 800A21B0 AFB90074 */  sw    $t9, 0x74($sp)
/* B19354 800A21B4 ADAE0000 */  sw    $t6, ($t5)
/* B19358 800A21B8 8FA90050 */  lw    $t1, 0x50($sp)
/* B1935C 800A21BC ADA90004 */  sw    $t1, 4($t5)
.L800A21C0:
/* B19360 800A21C0 8FB8006C */  lw    $t8, 0x6c($sp)
/* B19364 800A21C4 8FA40058 */  lw    $a0, 0x58($sp)
/* B19368 800A21C8 8FA5005C */  lw    $a1, 0x5c($sp)
/* B1936C 800A21CC 13000007 */  beqz  $t8, .L800A21EC
/* B19370 800A21D0 27A60050 */   addiu $a2, $sp, 0x50
/* B19374 800A21D4 8FAA0070 */  lw    $t2, 0x70($sp)
/* B19378 800A21D8 27AB0074 */  addiu $t3, $sp, 0x74
/* B1937C 800A21DC AFAB0014 */  sw    $t3, 0x14($sp)
/* B19380 800A21E0 27A7003C */  addiu $a3, $sp, 0x3c
/* B19384 800A21E4 0300F809 */  jalr  $t8
/* B19388 800A21E8 AFAA0010 */  sw    $t2, 0x10($sp)
.L800A21EC:
/* B1938C 800A21EC 92050006 */  lbu   $a1, 6($s0)
/* B19390 800A21F0 240100FF */  li    $at, 255
/* B19394 800A21F4 8FA40058 */  lw    $a0, 0x58($sp)
/* B19398 800A21F8 10A1000C */  beq   $a1, $at, .L800A222C
/* B1939C 800A21FC 8FA60060 */   lw    $a2, 0x60($sp)
/* B193A0 800A2200 8FA80068 */  lw    $t0, 0x68($sp)
/* B193A4 800A2204 8FAC006C */  lw    $t4, 0x6c($sp)
/* B193A8 800A2208 8FAF0070 */  lw    $t7, 0x70($sp)
/* B193AC 800A220C 8FAD0074 */  lw    $t5, 0x74($sp)
/* B193B0 800A2210 8FA70064 */  lw    $a3, 0x64($sp)
/* B193B4 800A2214 AFA80010 */  sw    $t0, 0x10($sp)
/* B193B8 800A2218 AFAC0014 */  sw    $t4, 0x14($sp)
/* B193BC 800A221C AFAF0018 */  sw    $t7, 0x18($sp)
/* B193C0 800A2220 0C028811 */  jal   func_800A2044
/* B193C4 800A2224 AFAD001C */   sw    $t5, 0x1c($sp)
/* B193C8 800A2228 AFA20074 */  sw    $v0, 0x74($sp)
.L800A222C:
/* B193CC 800A222C 0C034221 */  jal   func_800D0884
/* B193D0 800A2230 00000000 */   nop   
/* B193D4 800A2234 92050007 */  lbu   $a1, 7($s0)
/* B193D8 800A2238 240100FF */  li    $at, 255
/* B193DC 800A223C 8FA40058 */  lw    $a0, 0x58($sp)
/* B193E0 800A2240 10A1000C */  beq   $a1, $at, .L800A2274
/* B193E4 800A2244 8FA60060 */   lw    $a2, 0x60($sp)
/* B193E8 800A2248 8FB90068 */  lw    $t9, 0x68($sp)
/* B193EC 800A224C 8FAE006C */  lw    $t6, 0x6c($sp)
/* B193F0 800A2250 8FA90070 */  lw    $t1, 0x70($sp)
/* B193F4 800A2254 8FAA0074 */  lw    $t2, 0x74($sp)
/* B193F8 800A2258 8FA70064 */  lw    $a3, 0x64($sp)
/* B193FC 800A225C AFB90010 */  sw    $t9, 0x10($sp)
/* B19400 800A2260 AFAE0014 */  sw    $t6, 0x14($sp)
/* B19404 800A2264 AFA90018 */  sw    $t1, 0x18($sp)
/* B19408 800A2268 0C028811 */  jal   func_800A2044
/* B1940C 800A226C AFAA001C */   sw    $t2, 0x1c($sp)
/* B19410 800A2270 AFA20074 */  sw    $v0, 0x74($sp)
.L800A2274:
/* B19414 800A2274 8FBF002C */  lw    $ra, 0x2c($sp)
/* B19418 800A2278 8FA20074 */  lw    $v0, 0x74($sp)
/* B1941C 800A227C 8FB00028 */  lw    $s0, 0x28($sp)
/* B19420 800A2280 03E00008 */  jr    $ra
/* B19424 800A2284 27BD0058 */   addiu $sp, $sp, 0x58

/* B19428 800A2288 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1942C 800A228C AFBF0024 */  sw    $ra, 0x24($sp)
/* B19430 800A2290 AFA40058 */  sw    $a0, 0x58($sp)
/* B19434 800A2294 AFA5005C */  sw    $a1, 0x5c($sp)
/* B19438 800A2298 AFA60060 */  sw    $a2, 0x60($sp)
/* B1943C 800A229C 14A0000C */  bnez  $a1, .L800A22D0
/* B19440 800A22A0 AFA70064 */   sw    $a3, 0x64($sp)
/* B19444 800A22A4 3C048014 */  lui   $a0, %hi(D_801402D8) # $a0, 0x8014
/* B19448 800A22A8 0C00084C */  jal   DebugMessage
/* B1944C 800A22AC 248402D8 */   addiu $a0, %lo(D_801402D8) # addiu $a0, $a0, 0x2d8
/* B19450 800A22B0 3C048014 */  lui   $a0, %hi(D_801402E0) # $a0, 0x8014
/* B19454 800A22B4 0C00084C */  jal   DebugMessage
/* B19458 800A22B8 248402E0 */   addiu $a0, %lo(D_801402E0) # addiu $a0, $a0, 0x2e0
/* B1945C 800A22BC 3C048014 */  lui   $a0, %hi(D_80140310) # $a0, 0x8014
/* B19460 800A22C0 0C00084C */  jal   DebugMessage
/* B19464 800A22C4 24840310 */   addiu $a0, %lo(D_80140310) # addiu $a0, $a0, 0x310
/* B19468 800A22C8 10000071 */  b     .L800A2490
/* B1946C 800A22CC 00001025 */   move  $v0, $zero
.L800A22D0:
/* B19470 800A22D0 0C034213 */  jal   func_800D084C
/* B19474 800A22D4 00000000 */   nop   
/* B19478 800A22D8 8FAF005C */  lw    $t7, 0x5c($sp)
/* B1947C 800A22DC 3C0A8016 */  lui   $t2, 0x8016
/* B19480 800A22E0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19484 800A22E4 8DE20000 */  lw    $v0, ($t7)
/* B19488 800A22E8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1948C 800A22EC 8FA30060 */  lw    $v1, 0x60($sp)
/* B19490 800A22F0 0002C900 */  sll   $t9, $v0, 4
/* B19494 800A22F4 00194702 */  srl   $t0, $t9, 0x1c
/* B19498 800A22F8 00084880 */  sll   $t1, $t0, 2
/* B1949C 800A22FC 01495021 */  addu  $t2, $t2, $t1
/* B194A0 800A2300 8D4A6FA8 */  lw    $t2, 0x6fa8($t2)
/* B194A4 800A2304 0041C024 */  and   $t8, $v0, $at
/* B194A8 800A2308 3C018000 */  lui   $at, 0x8000
/* B194AC 800A230C 030A5821 */  addu  $t3, $t8, $t2
/* B194B0 800A2310 01616021 */  addu  $t4, $t3, $at
/* B194B4 800A2314 AFAC0054 */  sw    $t4, 0x54($sp)
/* B194B8 800A2318 846D0000 */  lh    $t5, ($v1)
/* B194BC 800A231C 27B90038 */  addiu $t9, $sp, 0x38
/* B194C0 800A2320 27AC0038 */  addiu $t4, $sp, 0x38
/* B194C4 800A2324 448D2000 */  mtc1  $t5, $f4
/* B194C8 800A2328 24050001 */  li    $a1, 1
/* B194CC 800A232C 27A6004C */  addiu $a2, $sp, 0x4c
/* B194D0 800A2330 468021A0 */  cvt.s.w $f6, $f4
/* B194D4 800A2334 27A70040 */  addiu $a3, $sp, 0x40
/* B194D8 800A2338 E7A60040 */  swc1  $f6, 0x40($sp)
/* B194DC 800A233C 846E0002 */  lh    $t6, 2($v1)
/* B194E0 800A2340 448E4000 */  mtc1  $t6, $f8
/* B194E4 800A2344 27AE0070 */  addiu $t6, $sp, 0x70
/* B194E8 800A2348 468042A0 */  cvt.s.w $f10, $f8
/* B194EC 800A234C E7AA0044 */  swc1  $f10, 0x44($sp)
/* B194F0 800A2350 846F0004 */  lh    $t7, 4($v1)
/* B194F4 800A2354 448F8000 */  mtc1  $t7, $f16
/* B194F8 800A2358 00000000 */  nop   
/* B194FC 800A235C 468084A0 */  cvt.s.w $f18, $f16
/* B19500 800A2360 E7B20048 */  swc1  $f18, 0x48($sp)
/* B19504 800A2364 88690006 */  lwl   $t1, 6($v1)
/* B19508 800A2368 98690009 */  lwr   $t1, 9($v1)
/* B1950C 800A236C AF290000 */  sw    $t1, ($t9)
/* B19510 800A2370 9469000A */  lhu   $t1, 0xa($v1)
/* B19514 800A2374 A7290004 */  sh    $t1, 4($t9)
/* B19518 800A2378 8FB80054 */  lw    $t8, 0x54($sp)
/* B1951C 800A237C 8FAB0064 */  lw    $t3, 0x64($sp)
/* B19520 800A2380 8FA40058 */  lw    $a0, 0x58($sp)
/* B19524 800A2384 8F0A0008 */  lw    $t2, 8($t8)
/* B19528 800A2388 11600007 */  beqz  $t3, .L800A23A8
/* B1952C 800A238C AFAA004C */   sw    $t2, 0x4c($sp)
/* B19530 800A2390 8FAD006C */  lw    $t5, 0x6c($sp)
/* B19534 800A2394 AFAC0010 */  sw    $t4, 0x10($sp)
/* B19538 800A2398 AFAE0018 */  sw    $t6, 0x18($sp)
/* B1953C 800A239C 0160F809 */  jalr  $t3
/* B19540 800A23A0 AFAD0014 */  sw    $t5, 0x14($sp)
/* B19544 800A23A4 1440001B */  bnez  $v0, .L800A2414
.L800A23A8:
/* B19548 800A23A8 27A40040 */   addiu $a0, $sp, 0x40
/* B1954C 800A23AC 0C0344D0 */  jal   func_800D1340
/* B19550 800A23B0 27A50038 */   addiu $a1, $sp, 0x38
/* B19554 800A23B4 8FAF004C */  lw    $t7, 0x4c($sp)
/* B19558 800A23B8 8FB90070 */  lw    $t9, 0x70($sp)
/* B1955C 800A23BC 3C09DA38 */  lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B19560 800A23C0 11E00014 */  beqz  $t7, .L800A2414
/* B19564 800A23C4 27280008 */   addiu $t0, $t9, 8
/* B19568 800A23C8 AFA80070 */  sw    $t0, 0x70($sp)
/* B1956C 800A23CC 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B19570 800A23D0 AF290000 */  sw    $t1, ($t9)
/* B19574 800A23D4 8FB80058 */  lw    $t8, 0x58($sp)
/* B19578 800A23D8 3C058014 */  lui   $a1, %hi(D_80140314) # $a1, 0x8014
/* B1957C 800A23DC 24A50314 */  addiu $a1, %lo(D_80140314) # addiu $a1, $a1, 0x314
/* B19580 800A23E0 8F040000 */  lw    $a0, ($t8)
/* B19584 800A23E4 AFB90034 */  sw    $t9, 0x34($sp)
/* B19588 800A23E8 0C0346A2 */  jal   func_800D1A88
/* B1958C 800A23EC 24060616 */   li    $a2, 1558
/* B19590 800A23F0 8FA30034 */  lw    $v1, 0x34($sp)
/* B19594 800A23F4 3C0DDE00 */  lui   $t5, 0xde00
/* B19598 800A23F8 AC620004 */  sw    $v0, 4($v1)
/* B1959C 800A23FC 8FAA0070 */  lw    $t2, 0x70($sp)
/* B195A0 800A2400 254C0008 */  addiu $t4, $t2, 8
/* B195A4 800A2404 AFAC0070 */  sw    $t4, 0x70($sp)
/* B195A8 800A2408 AD4D0000 */  sw    $t5, ($t2)
/* B195AC 800A240C 8FAE004C */  lw    $t6, 0x4c($sp)
/* B195B0 800A2410 AD4E0004 */  sw    $t6, 4($t2)
.L800A2414:
/* B195B4 800A2414 8FA20068 */  lw    $v0, 0x68($sp)
/* B195B8 800A2418 8FA40058 */  lw    $a0, 0x58($sp)
/* B195BC 800A241C 24050001 */  li    $a1, 1
/* B195C0 800A2420 10400008 */  beqz  $v0, .L800A2444
/* B195C4 800A2424 27A6004C */   addiu $a2, $sp, 0x4c
/* B195C8 800A2428 8FAB006C */  lw    $t3, 0x6c($sp)
/* B195CC 800A242C 27AF0070 */  addiu $t7, $sp, 0x70
/* B195D0 800A2430 AFAF0014 */  sw    $t7, 0x14($sp)
/* B195D4 800A2434 27A70038 */  addiu $a3, $sp, 0x38
/* B195D8 800A2438 0040F809 */  jalr  $v0
/* B195DC 800A243C AFAB0010 */  sw    $t3, 0x10($sp)
/* B195E0 800A2440 8FA20068 */  lw    $v0, 0x68($sp)
.L800A2444:
/* B195E4 800A2444 8FB90054 */  lw    $t9, 0x54($sp)
/* B195E8 800A2448 240100FF */  li    $at, 255
/* B195EC 800A244C 8FA40058 */  lw    $a0, 0x58($sp)
/* B195F0 800A2450 93250006 */  lbu   $a1, 6($t9)
/* B195F4 800A2454 8FA6005C */  lw    $a2, 0x5c($sp)
/* B195F8 800A2458 8FA70060 */  lw    $a3, 0x60($sp)
/* B195FC 800A245C 10A10009 */  beq   $a1, $at, .L800A2484
/* B19600 800A2460 8FA80064 */   lw    $t0, 0x64($sp)
/* B19604 800A2464 8FA9006C */  lw    $t1, 0x6c($sp)
/* B19608 800A2468 8FB80070 */  lw    $t8, 0x70($sp)
/* B1960C 800A246C AFA80010 */  sw    $t0, 0x10($sp)
/* B19610 800A2470 AFA20014 */  sw    $v0, 0x14($sp)
/* B19614 800A2474 AFA90018 */  sw    $t1, 0x18($sp)
/* B19618 800A2478 0C028811 */  jal   func_800A2044
/* B1961C 800A247C AFB8001C */   sw    $t8, 0x1c($sp)
/* B19620 800A2480 AFA20070 */  sw    $v0, 0x70($sp)
.L800A2484:
/* B19624 800A2484 0C034221 */  jal   func_800D0884
/* B19628 800A2488 00000000 */   nop   
/* B1962C 800A248C 8FA20070 */  lw    $v0, 0x70($sp)
.L800A2490:
/* B19630 800A2490 8FBF0024 */  lw    $ra, 0x24($sp)
/* B19634 800A2494 27BD0058 */  addiu $sp, $sp, 0x58
/* B19638 800A2498 03E00008 */  jr    $ra
/* B1963C 800A249C 00000000 */   nop   

glabel func_800A24A0
/* B19640 800A24A0 27BDFF98 */  addiu $sp, $sp, -0x68
/* B19644 800A24A4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B19648 800A24A8 AFB00030 */  sw    $s0, 0x30($sp)
/* B1964C 800A24AC AFA40068 */  sw    $a0, 0x68($sp)
/* B19650 800A24B0 AFA5006C */  sw    $a1, 0x6c($sp)
/* B19654 800A24B4 AFA60070 */  sw    $a2, 0x70($sp)
/* B19658 800A24B8 0C034213 */  jal   func_800D084C
/* B1965C 800A24BC AFA70074 */   sw    $a3, 0x74($sp)
/* B19660 800A24C0 8FAF006C */  lw    $t7, 0x6c($sp)
/* B19664 800A24C4 8FAE0070 */  lw    $t6, 0x70($sp)
/* B19668 800A24C8 3C0C8016 */  lui   $t4, 0x8016
/* B1966C 800A24CC 000FC080 */  sll   $t8, $t7, 2
/* B19670 800A24D0 01D8C821 */  addu  $t9, $t6, $t8
/* B19674 800A24D4 8F220000 */  lw    $v0, ($t9)
/* B19678 800A24D8 25ED0001 */  addiu $t5, $t7, 1
/* B1967C 800A24DC 8FB80074 */  lw    $t8, 0x74($sp)
/* B19680 800A24E0 000DC880 */  sll   $t9, $t5, 2
/* B19684 800A24E4 00024900 */  sll   $t1, $v0, 4
/* B19688 800A24E8 00095702 */  srl   $t2, $t1, 0x1c
/* B1968C 800A24EC 032DC823 */  subu  $t9, $t9, $t5
/* B19690 800A24F0 000A5880 */  sll   $t3, $t2, 2
/* B19694 800A24F4 0019C840 */  sll   $t9, $t9, 1
/* B19698 800A24F8 018B6021 */  addu  $t4, $t4, $t3
/* B1969C 800A24FC AFAD006C */  sw    $t5, 0x6c($sp)
/* B196A0 800A2500 03194821 */  addu  $t1, $t8, $t9
/* B196A4 800A2504 892B0000 */  lwl   $t3, ($t1)
/* B196A8 800A2508 992B0003 */  lwr   $t3, 3($t1)
/* B196AC 800A250C 8D8C6FA8 */  lw    $t4, 0x6fa8($t4)
/* B196B0 800A2510 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B196B4 800A2514 27AE0048 */  addiu $t6, $sp, 0x48
/* B196B8 800A2518 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B196BC 800A251C ADCB0000 */  sw    $t3, ($t6)
/* B196C0 800A2520 952B0004 */  lhu   $t3, 4($t1)
/* B196C4 800A2524 00414024 */  and   $t0, $v0, $at
/* B196C8 800A2528 3C018000 */  lui   $at, 0x8000
/* B196CC 800A252C 010C8021 */  addu  $s0, $t0, $t4
/* B196D0 800A2530 02018021 */  addu  $s0, $s0, $at
/* B196D4 800A2534 A5CB0004 */  sh    $t3, 4($t6)
/* B196D8 800A2538 86080000 */  lh    $t0, ($s0)
/* B196DC 800A253C 8FB90078 */  lw    $t9, 0x78($sp)
/* B196E0 800A2540 8FA5006C */  lw    $a1, 0x6c($sp)
/* B196E4 800A2544 44882000 */  mtc1  $t0, $f4
/* B196E8 800A2548 8FA40068 */  lw    $a0, 0x68($sp)
/* B196EC 800A254C 27AE0048 */  addiu $t6, $sp, 0x48
/* B196F0 800A2550 468021A0 */  cvt.s.w $f6, $f4
/* B196F4 800A2554 27AA0088 */  addiu $t2, $sp, 0x88
/* B196F8 800A2558 27A60060 */  addiu $a2, $sp, 0x60
/* B196FC 800A255C 27A70050 */  addiu $a3, $sp, 0x50
/* B19700 800A2560 E7A60050 */  swc1  $f6, 0x50($sp)
/* B19704 800A2564 860C0002 */  lh    $t4, 2($s0)
/* B19708 800A2568 448C4000 */  mtc1  $t4, $f8
/* B1970C 800A256C 00000000 */  nop   
/* B19710 800A2570 468042A0 */  cvt.s.w $f10, $f8
/* B19714 800A2574 E7AA0054 */  swc1  $f10, 0x54($sp)
/* B19718 800A2578 860F0004 */  lh    $t7, 4($s0)
/* B1971C 800A257C 448F8000 */  mtc1  $t7, $f16
/* B19720 800A2580 00000000 */  nop   
/* B19724 800A2584 468084A0 */  cvt.s.w $f18, $f16
/* B19728 800A2588 E7B20058 */  swc1  $f18, 0x58($sp)
/* B1972C 800A258C 8E0D0008 */  lw    $t5, 8($s0)
/* B19730 800A2590 AFAD005C */  sw    $t5, 0x5c($sp)
/* B19734 800A2594 13200007 */  beqz  $t9, .L800A25B4
/* B19738 800A2598 AFAD0060 */   sw    $t5, 0x60($sp)
/* B1973C 800A259C 8FA90080 */  lw    $t1, 0x80($sp)
/* B19740 800A25A0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B19744 800A25A4 AFAA0018 */  sw    $t2, 0x18($sp)
/* B19748 800A25A8 0320F809 */  jalr  $t9
/* B1974C 800A25AC AFA90014 */  sw    $t1, 0x14($sp)
/* B19750 800A25B0 1440002C */  bnez  $v0, .L800A2664
.L800A25B4:
/* B19754 800A25B4 27A40050 */   addiu $a0, $sp, 0x50
/* B19758 800A25B8 0C0344D0 */  jal   func_800D1340
/* B1975C 800A25BC 27A50048 */   addiu $a1, $sp, 0x48
/* B19760 800A25C0 8FAB0060 */  lw    $t3, 0x60($sp)
/* B19764 800A25C4 8FA80084 */  lw    $t0, 0x84($sp)
/* B19768 800A25C8 3C058014 */  lui   $a1, %hi(D_80140328) # $a1, 0x8014
/* B1976C 800A25CC 1160001A */  beqz  $t3, .L800A2638
/* B19770 800A25D0 8FAD005C */   lw    $t5, 0x5c($sp)
/* B19774 800A25D4 8D040000 */  lw    $a0, ($t0)
/* B19778 800A25D8 24A50328 */  addiu $a1, %lo(D_80140328) # addiu $a1, $a1, 0x328
/* B1977C 800A25DC 0C034695 */  jal   func_800D1A54
/* B19780 800A25E0 24060657 */   li    $a2, 1623
/* B19784 800A25E4 8FAC0088 */  lw    $t4, 0x88($sp)
/* B19788 800A25E8 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* B1978C 800A25EC 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* B19790 800A25F0 258F0008 */  addiu $t7, $t4, 8
/* B19794 800A25F4 AFAF0088 */  sw    $t7, 0x88($sp)
/* B19798 800A25F8 AD8D0000 */  sw    $t5, ($t4)
/* B1979C 800A25FC 8FB80084 */  lw    $t8, 0x84($sp)
/* B197A0 800A2600 3C19DE00 */  lui   $t9, 0xde00
/* B197A4 800A2604 8F0E0000 */  lw    $t6, ($t8)
/* B197A8 800A2608 AD8E0004 */  sw    $t6, 4($t4)
/* B197AC 800A260C 8FA90088 */  lw    $t1, 0x88($sp)
/* B197B0 800A2610 252A0008 */  addiu $t2, $t1, 8
/* B197B4 800A2614 AFAA0088 */  sw    $t2, 0x88($sp)
/* B197B8 800A2618 AD390000 */  sw    $t9, ($t1)
/* B197BC 800A261C 8FAB0060 */  lw    $t3, 0x60($sp)
/* B197C0 800A2620 AD2B0004 */  sw    $t3, 4($t1)
/* B197C4 800A2624 8FA80084 */  lw    $t0, 0x84($sp)
/* B197C8 800A2628 8D0C0000 */  lw    $t4, ($t0)
/* B197CC 800A262C 258F0040 */  addiu $t7, $t4, 0x40
/* B197D0 800A2630 1000000C */  b     .L800A2664
/* B197D4 800A2634 AD0F0000 */   sw    $t7, ($t0)
.L800A2638:
/* B197D8 800A2638 11A0000A */  beqz  $t5, .L800A2664
/* B197DC 800A263C 8FB80084 */   lw    $t8, 0x84($sp)
/* B197E0 800A2640 3C058014 */  lui   $a1, %hi(D_8014033C) # $a1, 0x8014
/* B197E4 800A2644 24A5033C */  addiu $a1, %lo(D_8014033C) # addiu $a1, $a1, 0x33c
/* B197E8 800A2648 8F040000 */  lw    $a0, ($t8)
/* B197EC 800A264C 0C034695 */  jal   func_800D1A54
/* B197F0 800A2650 2406065E */   li    $a2, 1630
/* B197F4 800A2654 8FAE0084 */  lw    $t6, 0x84($sp)
/* B197F8 800A2658 8DC90000 */  lw    $t1, ($t6)
/* B197FC 800A265C 252A0040 */  addiu $t2, $t1, 0x40
/* B19800 800A2660 ADCA0000 */  sw    $t2, ($t6)
.L800A2664:
/* B19804 800A2664 8FB9007C */  lw    $t9, 0x7c($sp)
/* B19808 800A2668 8FA40068 */  lw    $a0, 0x68($sp)
/* B1980C 800A266C 8FA5006C */  lw    $a1, 0x6c($sp)
/* B19810 800A2670 13200007 */  beqz  $t9, .L800A2690
/* B19814 800A2674 27A6005C */   addiu $a2, $sp, 0x5c
/* B19818 800A2678 8FAB0080 */  lw    $t3, 0x80($sp)
/* B1981C 800A267C 27AC0088 */  addiu $t4, $sp, 0x88
/* B19820 800A2680 AFAC0014 */  sw    $t4, 0x14($sp)
/* B19824 800A2684 27A70048 */  addiu $a3, $sp, 0x48
/* B19828 800A2688 0320F809 */  jalr  $t9
/* B1982C 800A268C AFAB0010 */  sw    $t3, 0x10($sp)
.L800A2690:
/* B19830 800A2690 92050006 */  lbu   $a1, 6($s0)
/* B19834 800A2694 240100FF */  li    $at, 255
/* B19838 800A2698 8FA40068 */  lw    $a0, 0x68($sp)
/* B1983C 800A269C 10A1000E */  beq   $a1, $at, .L800A26D8
/* B19840 800A26A0 8FA60070 */   lw    $a2, 0x70($sp)
/* B19844 800A26A4 8FAF0078 */  lw    $t7, 0x78($sp)
/* B19848 800A26A8 8FA8007C */  lw    $t0, 0x7c($sp)
/* B1984C 800A26AC 8FAD0080 */  lw    $t5, 0x80($sp)
/* B19850 800A26B0 8FB80084 */  lw    $t8, 0x84($sp)
/* B19854 800A26B4 8FA90088 */  lw    $t1, 0x88($sp)
/* B19858 800A26B8 8FA70074 */  lw    $a3, 0x74($sp)
/* B1985C 800A26BC AFAF0010 */  sw    $t7, 0x10($sp)
/* B19860 800A26C0 AFA80014 */  sw    $t0, 0x14($sp)
/* B19864 800A26C4 AFAD0018 */  sw    $t5, 0x18($sp)
/* B19868 800A26C8 AFB8001C */  sw    $t8, 0x1c($sp)
/* B1986C 800A26CC 0C028928 */  jal   func_800A24A0
/* B19870 800A26D0 AFA90020 */   sw    $t1, 0x20($sp)
/* B19874 800A26D4 AFA20088 */  sw    $v0, 0x88($sp)
.L800A26D8:
/* B19878 800A26D8 0C034221 */  jal   func_800D0884
/* B1987C 800A26DC 00000000 */   nop   
/* B19880 800A26E0 92050007 */  lbu   $a1, 7($s0)
/* B19884 800A26E4 240100FF */  li    $at, 255
/* B19888 800A26E8 8FA40068 */  lw    $a0, 0x68($sp)
/* B1988C 800A26EC 10A1000E */  beq   $a1, $at, .L800A2728
/* B19890 800A26F0 8FA60070 */   lw    $a2, 0x70($sp)
/* B19894 800A26F4 8FAA0078 */  lw    $t2, 0x78($sp)
/* B19898 800A26F8 8FAE007C */  lw    $t6, 0x7c($sp)
/* B1989C 800A26FC 8FAB0080 */  lw    $t3, 0x80($sp)
/* B198A0 800A2700 8FAC0084 */  lw    $t4, 0x84($sp)
/* B198A4 800A2704 8FB90088 */  lw    $t9, 0x88($sp)
/* B198A8 800A2708 8FA70074 */  lw    $a3, 0x74($sp)
/* B198AC 800A270C AFAA0010 */  sw    $t2, 0x10($sp)
/* B198B0 800A2710 AFAE0014 */  sw    $t6, 0x14($sp)
/* B198B4 800A2714 AFAB0018 */  sw    $t3, 0x18($sp)
/* B198B8 800A2718 AFAC001C */  sw    $t4, 0x1c($sp)
/* B198BC 800A271C 0C028928 */  jal   func_800A24A0
/* B198C0 800A2720 AFB90020 */   sw    $t9, 0x20($sp)
/* B198C4 800A2724 AFA20088 */  sw    $v0, 0x88($sp)
.L800A2728:
/* B198C8 800A2728 8FBF0034 */  lw    $ra, 0x34($sp)
/* B198CC 800A272C 8FA20088 */  lw    $v0, 0x88($sp)
/* B198D0 800A2730 8FB00030 */  lw    $s0, 0x30($sp)
/* B198D4 800A2734 03E00008 */  jr    $ra
/* B198D8 800A2738 27BD0068 */   addiu $sp, $sp, 0x68

glabel func_800A273C
/* B198DC 800A273C 27BDFF98 */  addiu $sp, $sp, -0x68
/* B198E0 800A2740 AFBF002C */  sw    $ra, 0x2c($sp)
/* B198E4 800A2744 AFA40068 */  sw    $a0, 0x68($sp)
/* B198E8 800A2748 AFA5006C */  sw    $a1, 0x6c($sp)
/* B198EC 800A274C AFA60070 */  sw    $a2, 0x70($sp)
/* B198F0 800A2750 8C840000 */  lw    $a0, ($a0)
/* B198F4 800A2754 0C031A73 */  jal   graph_alloc
/* B198F8 800A2758 00072980 */   sll   $a1, $a3, 6
/* B198FC 800A275C 8FAF006C */  lw    $t7, 0x6c($sp)
/* B19900 800A2760 8FB80084 */  lw    $t8, 0x84($sp)
/* B19904 800A2764 AFA20040 */  sw    $v0, 0x40($sp)
/* B19908 800A2768 15E0000C */  bnez  $t7, .L800A279C
/* B1990C 800A276C 27190008 */   addiu $t9, $t8, 8
/* B19910 800A2770 3C048014 */  lui   $a0, %hi(D_80140350) # $a0, 0x8014
/* B19914 800A2774 0C00084C */  jal   DebugMessage
/* B19918 800A2778 24840350 */   addiu $a0, %lo(D_80140350) # addiu $a0, $a0, 0x350
/* B1991C 800A277C 3C048014 */  lui   $a0, %hi(D_80140358) # $a0, 0x8014
/* B19920 800A2780 0C00084C */  jal   DebugMessage
/* B19924 800A2784 24840358 */   addiu $a0, %lo(D_80140358) # addiu $a0, $a0, 0x358
/* B19928 800A2788 3C048014 */  lui   $a0, %hi(D_8014038C) # $a0, 0x8014
/* B1992C 800A278C 0C00084C */  jal   DebugMessage
/* B19930 800A2790 2484038C */   addiu $a0, %lo(D_8014038C) # addiu $a0, $a0, 0x38c
/* B19934 800A2794 10000085 */  b     .L800A29AC
/* B19938 800A2798 00001025 */   move  $v0, $zero
.L800A279C:
/* B1993C 800A279C 3C08DB06 */  lui   $t0, (0xDB060034 >> 16) # lui $t0, 0xdb06
/* B19940 800A27A0 35080034 */  ori   $t0, (0xDB060034 & 0xFFFF) # ori $t0, $t0, 0x34
/* B19944 800A27A4 AFB90084 */  sw    $t9, 0x84($sp)
/* B19948 800A27A8 AF080000 */  sw    $t0, ($t8)
/* B1994C 800A27AC 8FA90040 */  lw    $t1, 0x40($sp)
/* B19950 800A27B0 0C034213 */  jal   func_800D084C
/* B19954 800A27B4 AF090004 */   sw    $t1, 4($t8)
/* B19958 800A27B8 8FAA006C */  lw    $t2, 0x6c($sp)
/* B1995C 800A27BC 3C0F8016 */  lui   $t7, 0x8016
/* B19960 800A27C0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19964 800A27C4 8D420000 */  lw    $v0, ($t2)
/* B19968 800A27C8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1996C 800A27CC 8FA30070 */  lw    $v1, 0x70($sp)
/* B19970 800A27D0 00026100 */  sll   $t4, $v0, 4
/* B19974 800A27D4 000C6F02 */  srl   $t5, $t4, 0x1c
/* B19978 800A27D8 000D7080 */  sll   $t6, $t5, 2
/* B1997C 800A27DC 01EE7821 */  addu  $t7, $t7, $t6
/* B19980 800A27E0 8DEF6FA8 */  lw    $t7, 0x6fa8($t7)
/* B19984 800A27E4 00415824 */  and   $t3, $v0, $at
/* B19988 800A27E8 3C018000 */  lui   $at, 0x8000
/* B1998C 800A27EC 016FC021 */  addu  $t8, $t3, $t7
/* B19990 800A27F0 0301C821 */  addu  $t9, $t8, $at
/* B19994 800A27F4 AFB90064 */  sw    $t9, 0x64($sp)
/* B19998 800A27F8 84680000 */  lh    $t0, ($v1)
/* B1999C 800A27FC 27AC0044 */  addiu $t4, $sp, 0x44
/* B199A0 800A2800 27B90044 */  addiu $t9, $sp, 0x44
/* B199A4 800A2804 44882000 */  mtc1  $t0, $f4
/* B199A8 800A2808 24050001 */  li    $a1, 1
/* B199AC 800A280C 27A6005C */  addiu $a2, $sp, 0x5c
/* B199B0 800A2810 468021A0 */  cvt.s.w $f6, $f4
/* B199B4 800A2814 27A7004C */  addiu $a3, $sp, 0x4c
/* B199B8 800A2818 E7A6004C */  swc1  $f6, 0x4c($sp)
/* B199BC 800A281C 84690002 */  lh    $t1, 2($v1)
/* B199C0 800A2820 44894000 */  mtc1  $t1, $f8
/* B199C4 800A2824 27A90084 */  addiu $t1, $sp, 0x84
/* B199C8 800A2828 468042A0 */  cvt.s.w $f10, $f8
/* B199CC 800A282C E7AA0050 */  swc1  $f10, 0x50($sp)
/* B199D0 800A2830 846A0004 */  lh    $t2, 4($v1)
/* B199D4 800A2834 448A8000 */  mtc1  $t2, $f16
/* B199D8 800A2838 00000000 */  nop   
/* B199DC 800A283C 468084A0 */  cvt.s.w $f18, $f16
/* B199E0 800A2840 E7B20054 */  swc1  $f18, 0x54($sp)
/* B199E4 800A2844 886E0006 */  lwl   $t6, 6($v1)
/* B199E8 800A2848 986E0009 */  lwr   $t6, 9($v1)
/* B199EC 800A284C AD8E0000 */  sw    $t6, ($t4)
/* B199F0 800A2850 946E000A */  lhu   $t6, 0xa($v1)
/* B199F4 800A2854 A58E0004 */  sh    $t6, 4($t4)
/* B199F8 800A2858 8FAB0064 */  lw    $t3, 0x64($sp)
/* B199FC 800A285C 8FB80078 */  lw    $t8, 0x78($sp)
/* B19A00 800A2860 8FA40068 */  lw    $a0, 0x68($sp)
/* B19A04 800A2864 8D6F0008 */  lw    $t7, 8($t3)
/* B19A08 800A2868 AFAF0058 */  sw    $t7, 0x58($sp)
/* B19A0C 800A286C 13000007 */  beqz  $t8, .L800A288C
/* B19A10 800A2870 AFAF005C */   sw    $t7, 0x5c($sp)
/* B19A14 800A2874 8FA80080 */  lw    $t0, 0x80($sp)
/* B19A18 800A2878 AFB90010 */  sw    $t9, 0x10($sp)
/* B19A1C 800A287C AFA90018 */  sw    $t1, 0x18($sp)
/* B19A20 800A2880 0300F809 */  jalr  $t8
/* B19A24 800A2884 AFA80014 */  sw    $t0, 0x14($sp)
/* B19A28 800A2888 14400027 */  bnez  $v0, .L800A2928
.L800A288C:
/* B19A2C 800A288C 27A4004C */   addiu $a0, $sp, 0x4c
/* B19A30 800A2890 0C0344D0 */  jal   func_800D1340
/* B19A34 800A2894 27A50044 */   addiu $a1, $sp, 0x44
/* B19A38 800A2898 8FAA005C */  lw    $t2, 0x5c($sp)
/* B19A3C 800A289C 8FA40040 */  lw    $a0, 0x40($sp)
/* B19A40 800A28A0 3C058014 */  lui   $a1, %hi(D_80140390) # $a1, 0x8014
/* B19A44 800A28A4 11400017 */  beqz  $t2, .L800A2904
/* B19A48 800A28A8 8FAC0058 */   lw    $t4, 0x58($sp)
/* B19A4C 800A28AC 24A50390 */  addiu $a1, %lo(D_80140390) # addiu $a1, $a1, 0x390
/* B19A50 800A28B0 0C034695 */  jal   func_800D1A54
/* B19A54 800A28B4 240606AE */   li    $a2, 1710
/* B19A58 800A28B8 8FAC0084 */  lw    $t4, 0x84($sp)
/* B19A5C 800A28BC 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* B19A60 800A28C0 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* B19A64 800A28C4 258D0008 */  addiu $t5, $t4, 8
/* B19A68 800A28C8 AFAD0084 */  sw    $t5, 0x84($sp)
/* B19A6C 800A28CC AD8E0000 */  sw    $t6, ($t4)
/* B19A70 800A28D0 8FAB0040 */  lw    $t3, 0x40($sp)
/* B19A74 800A28D4 3C08DE00 */  lui   $t0, 0xde00
/* B19A78 800A28D8 AD8B0004 */  sw    $t3, 4($t4)
/* B19A7C 800A28DC 8FAF0084 */  lw    $t7, 0x84($sp)
/* B19A80 800A28E0 25F90008 */  addiu $t9, $t7, 8
/* B19A84 800A28E4 AFB90084 */  sw    $t9, 0x84($sp)
/* B19A88 800A28E8 ADE80000 */  sw    $t0, ($t7)
/* B19A8C 800A28EC 8FA9005C */  lw    $t1, 0x5c($sp)
/* B19A90 800A28F0 ADE90004 */  sw    $t1, 4($t7)
/* B19A94 800A28F4 8FB80040 */  lw    $t8, 0x40($sp)
/* B19A98 800A28F8 270A0040 */  addiu $t2, $t8, 0x40
/* B19A9C 800A28FC 1000000A */  b     .L800A2928
/* B19AA0 800A2900 AFAA0040 */   sw    $t2, 0x40($sp)
.L800A2904:
/* B19AA4 800A2904 11800008 */  beqz  $t4, .L800A2928
/* B19AA8 800A2908 8FA40040 */   lw    $a0, 0x40($sp)
/* B19AAC 800A290C 3C058014 */  lui   $a1, %hi(D_801403A4) # $a1, 0x8014
/* B19AB0 800A2910 24A503A4 */  addiu $a1, %lo(D_801403A4) # addiu $a1, $a1, 0x3a4
/* B19AB4 800A2914 0C034695 */  jal   func_800D1A54
/* B19AB8 800A2918 240606B5 */   li    $a2, 1717
/* B19ABC 800A291C 8FAD0040 */  lw    $t5, 0x40($sp)
/* B19AC0 800A2920 25AE0040 */  addiu $t6, $t5, 0x40
/* B19AC4 800A2924 AFAE0040 */  sw    $t6, 0x40($sp)
.L800A2928:
/* B19AC8 800A2928 8FA2007C */  lw    $v0, 0x7c($sp)
/* B19ACC 800A292C 8FA40068 */  lw    $a0, 0x68($sp)
/* B19AD0 800A2930 24050001 */  li    $a1, 1
/* B19AD4 800A2934 10400008 */  beqz  $v0, .L800A2958
/* B19AD8 800A2938 27A60058 */   addiu $a2, $sp, 0x58
/* B19ADC 800A293C 8FAB0080 */  lw    $t3, 0x80($sp)
/* B19AE0 800A2940 27AF0084 */  addiu $t7, $sp, 0x84
/* B19AE4 800A2944 AFAF0014 */  sw    $t7, 0x14($sp)
/* B19AE8 800A2948 27A70044 */  addiu $a3, $sp, 0x44
/* B19AEC 800A294C 0040F809 */  jalr  $v0
/* B19AF0 800A2950 AFAB0010 */  sw    $t3, 0x10($sp)
/* B19AF4 800A2954 8FA2007C */  lw    $v0, 0x7c($sp)
.L800A2958:
/* B19AF8 800A2958 8FB90064 */  lw    $t9, 0x64($sp)
/* B19AFC 800A295C 240100FF */  li    $at, 255
/* B19B00 800A2960 8FA40068 */  lw    $a0, 0x68($sp)
/* B19B04 800A2964 93250006 */  lbu   $a1, 6($t9)
/* B19B08 800A2968 8FA6006C */  lw    $a2, 0x6c($sp)
/* B19B0C 800A296C 8FA70070 */  lw    $a3, 0x70($sp)
/* B19B10 800A2970 10A1000B */  beq   $a1, $at, .L800A29A0
/* B19B14 800A2974 8FA80078 */   lw    $t0, 0x78($sp)
/* B19B18 800A2978 8FA90080 */  lw    $t1, 0x80($sp)
/* B19B1C 800A297C 8FAA0084 */  lw    $t2, 0x84($sp)
/* B19B20 800A2980 27B80040 */  addiu $t8, $sp, 0x40
/* B19B24 800A2984 AFB8001C */  sw    $t8, 0x1c($sp)
/* B19B28 800A2988 AFA80010 */  sw    $t0, 0x10($sp)
/* B19B2C 800A298C AFA20014 */  sw    $v0, 0x14($sp)
/* B19B30 800A2990 AFA90018 */  sw    $t1, 0x18($sp)
/* B19B34 800A2994 0C028928 */  jal   func_800A24A0
/* B19B38 800A2998 AFAA0020 */   sw    $t2, 0x20($sp)
/* B19B3C 800A299C AFA20084 */  sw    $v0, 0x84($sp)
.L800A29A0:
/* B19B40 800A29A0 0C034221 */  jal   func_800D0884
/* B19B44 800A29A4 00000000 */   nop   
/* B19B48 800A29A8 8FA20084 */  lw    $v0, 0x84($sp)
.L800A29AC:
/* B19B4C 800A29AC 8FBF002C */  lw    $ra, 0x2c($sp)
/* B19B50 800A29B0 27BD0068 */  addiu $sp, $sp, 0x68
/* B19B54 800A29B4 03E00008 */  jr    $ra
/* B19B58 800A29B8 00000000 */   nop   

/* B19B5C 800A29BC 00047100 */  sll   $t6, $a0, 4
/* B19B60 800A29C0 3C0B8016 */  lui   $t3, %hi(D_80166FA8) # $t3, 0x8016
/* B19B64 800A29C4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19B68 800A29C8 256B6FA8 */  addiu $t3, %lo(D_80166FA8) # addiu $t3, $t3, 0x6fa8
/* B19B6C 800A29CC 000FC080 */  sll   $t8, $t7, 2
/* B19B70 800A29D0 0178C821 */  addu  $t9, $t3, $t8
/* B19B74 800A29D4 8F2E0000 */  lw    $t6, ($t9)
/* B19B78 800A29D8 3C0C00FF */  lui   $t4, (0x00FFFFFF >> 16) # lui $t4, 0xff
/* B19B7C 800A29DC 358CFFFF */  ori   $t4, (0x00FFFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* B19B80 800A29E0 008C7824 */  and   $t7, $a0, $t4
/* B19B84 800A29E4 3C0D8000 */  lui   $t5, 0x8000
/* B19B88 800A29E8 01CFC021 */  addu  $t8, $t6, $t7
/* B19B8C 800A29EC 030D1021 */  addu  $v0, $t8, $t5
/* B19B90 800A29F0 8C480008 */  lw    $t0, 8($v0)
/* B19B94 800A29F4 8C4A0004 */  lw    $t2, 4($v0)
/* B19B98 800A29F8 84430002 */  lh    $v1, 2($v0)
/* B19B9C 800A29FC 0008C900 */  sll   $t9, $t0, 4
/* B19BA0 800A2A00 00197702 */  srl   $t6, $t9, 0x1c
/* B19BA4 800A2A04 000E7880 */  sll   $t7, $t6, 2
/* B19BA8 800A2A08 016FC021 */  addu  $t8, $t3, $t7
/* B19BAC 800A2A0C 8F190000 */  lw    $t9, ($t8)
/* B19BB0 800A2A10 010C7024 */  and   $t6, $t0, $t4
/* B19BB4 800A2A14 000AC100 */  sll   $t8, $t2, 4
/* B19BB8 800A2A18 032E7821 */  addu  $t7, $t9, $t6
/* B19BBC 800A2A1C 0018CF02 */  srl   $t9, $t8, 0x1c
/* B19BC0 800A2A20 01ED3821 */  addu  $a3, $t7, $t5
/* B19BC4 800A2A24 00197080 */  sll   $t6, $t9, 2
/* B19BC8 800A2A28 016E7821 */  addu  $t7, $t3, $t6
/* B19BCC 800A2A2C 8DF80000 */  lw    $t8, ($t7)
/* B19BD0 800A2A30 84EF0000 */  lh    $t7, ($a3)
/* B19BD4 800A2A34 014CC824 */  and   $t9, $t2, $t4
/* B19BD8 800A2A38 03197021 */  addu  $t6, $t8, $t9
/* B19BDC 800A2A3C 00AF082A */  slt   $at, $a1, $t7
/* B19BE0 800A2A40 10200009 */  beqz  $at, .L800A2A68
/* B19BE4 800A2A44 01CD4821 */   addu  $t1, $t6, $t5
/* B19BE8 800A2A48 84EE0002 */  lh    $t6, 2($a3)
/* B19BEC 800A2A4C 0005C040 */  sll   $t8, $a1, 1
/* B19BF0 800A2A50 0309C821 */  addu  $t9, $t8, $t1
/* B19BF4 800A2A54 000E7840 */  sll   $t7, $t6, 1
/* B19BF8 800A2A58 032FC021 */  addu  $t8, $t9, $t7
/* B19BFC 800A2A5C 870E0000 */  lh    $t6, ($t8)
/* B19C00 800A2A60 10000006 */  b     .L800A2A7C
/* B19C04 800A2A64 A4CE0000 */   sh    $t6, ($a2)
.L800A2A68:
/* B19C08 800A2A68 84F90002 */  lh    $t9, 2($a3)
/* B19C0C 800A2A6C 00197840 */  sll   $t7, $t9, 1
/* B19C10 800A2A70 012FC021 */  addu  $t8, $t1, $t7
/* B19C14 800A2A74 870E0000 */  lh    $t6, ($t8)
/* B19C18 800A2A78 A4CE0000 */  sh    $t6, ($a2)
.L800A2A7C:
/* B19C1C 800A2A7C 84F90004 */  lh    $t9, 4($a3)
/* B19C20 800A2A80 24020001 */  li    $v0, 1
/* B19C24 800A2A84 30640001 */  andi  $a0, $v1, 1
/* B19C28 800A2A88 00B9082A */  slt   $at, $a1, $t9
/* B19C2C 800A2A8C 5020000A */  beql  $at, $zero, .L800A2AB8
/* B19C30 800A2A90 84F80006 */   lh    $t8, 6($a3)
/* B19C34 800A2A94 84EE0006 */  lh    $t6, 6($a3)
/* B19C38 800A2A98 00057840 */  sll   $t7, $a1, 1
/* B19C3C 800A2A9C 01E9C021 */  addu  $t8, $t7, $t1
/* B19C40 800A2AA0 000EC840 */  sll   $t9, $t6, 1
/* B19C44 800A2AA4 03197821 */  addu  $t7, $t8, $t9
/* B19C48 800A2AA8 85EE0000 */  lh    $t6, ($t7)
/* B19C4C 800A2AAC 10000006 */  b     .L800A2AC8
/* B19C50 800A2AB0 A4CE0002 */   sh    $t6, 2($a2)
/* B19C54 800A2AB4 84F80006 */  lh    $t8, 6($a3)
.L800A2AB8:
/* B19C58 800A2AB8 0018C840 */  sll   $t9, $t8, 1
/* B19C5C 800A2ABC 01397821 */  addu  $t7, $t1, $t9
/* B19C60 800A2AC0 85EE0000 */  lh    $t6, ($t7)
/* B19C64 800A2AC4 A4CE0002 */  sh    $t6, 2($a2)
.L800A2AC8:
/* B19C68 800A2AC8 84F80008 */  lh    $t8, 8($a3)
/* B19C6C 800A2ACC 00B8082A */  slt   $at, $a1, $t8
/* B19C70 800A2AD0 5020000A */  beql  $at, $zero, .L800A2AFC
/* B19C74 800A2AD4 84EF000A */   lh    $t7, 0xa($a3)
/* B19C78 800A2AD8 84EE000A */  lh    $t6, 0xa($a3)
/* B19C7C 800A2ADC 0005C840 */  sll   $t9, $a1, 1
/* B19C80 800A2AE0 03297821 */  addu  $t7, $t9, $t1
/* B19C84 800A2AE4 000EC040 */  sll   $t8, $t6, 1
/* B19C88 800A2AE8 01F8C821 */  addu  $t9, $t7, $t8
/* B19C8C 800A2AEC 872E0000 */  lh    $t6, ($t9)
/* B19C90 800A2AF0 10000006 */  b     .L800A2B0C
/* B19C94 800A2AF4 A4CE0004 */   sh    $t6, 4($a2)
/* B19C98 800A2AF8 84EF000A */  lh    $t7, 0xa($a3)
.L800A2AFC:
/* B19C9C 800A2AFC 000FC040 */  sll   $t8, $t7, 1
/* B19CA0 800A2B00 0138C821 */  addu  $t9, $t1, $t8
/* B19CA4 800A2B04 872E0000 */  lh    $t6, ($t9)
/* B19CA8 800A2B08 A4CE0004 */  sh    $t6, 4($a2)
.L800A2B0C:
/* B19CAC 800A2B0C 24C60006 */  addiu $a2, $a2, 6
/* B19CB0 800A2B10 186000A8 */  blez  $v1, .L800A2DB4
/* B19CB4 800A2B14 24E7000C */   addiu $a3, $a3, 0xc
/* B19CB8 800A2B18 5080003A */  beql  $a0, $zero, .L800A2C04
/* B19CBC 800A2B1C 84F80000 */   lh    $t8, ($a3)
/* B19CC0 800A2B20 84EF0000 */  lh    $t7, ($a3)
/* B19CC4 800A2B24 24020002 */  li    $v0, 2
/* B19CC8 800A2B28 00AF082A */  slt   $at, $a1, $t7
/* B19CCC 800A2B2C 5020000A */  beql  $at, $zero, .L800A2B58
/* B19CD0 800A2B30 84F90002 */   lh    $t9, 2($a3)
/* B19CD4 800A2B34 84EE0002 */  lh    $t6, 2($a3)
/* B19CD8 800A2B38 0005C040 */  sll   $t8, $a1, 1
/* B19CDC 800A2B3C 0309C821 */  addu  $t9, $t8, $t1
/* B19CE0 800A2B40 000E7840 */  sll   $t7, $t6, 1
/* B19CE4 800A2B44 032FC021 */  addu  $t8, $t9, $t7
/* B19CE8 800A2B48 870E0000 */  lh    $t6, ($t8)
/* B19CEC 800A2B4C 10000006 */  b     .L800A2B68
/* B19CF0 800A2B50 A4CE0000 */   sh    $t6, ($a2)
/* B19CF4 800A2B54 84F90002 */  lh    $t9, 2($a3)
.L800A2B58:
/* B19CF8 800A2B58 00197840 */  sll   $t7, $t9, 1
/* B19CFC 800A2B5C 012FC021 */  addu  $t8, $t1, $t7
/* B19D00 800A2B60 870E0000 */  lh    $t6, ($t8)
/* B19D04 800A2B64 A4CE0000 */  sh    $t6, ($a2)
.L800A2B68:
/* B19D08 800A2B68 84F90004 */  lh    $t9, 4($a3)
/* B19D0C 800A2B6C 00B9082A */  slt   $at, $a1, $t9
/* B19D10 800A2B70 5020000A */  beql  $at, $zero, .L800A2B9C
/* B19D14 800A2B74 84F80006 */   lh    $t8, 6($a3)
/* B19D18 800A2B78 84EE0006 */  lh    $t6, 6($a3)
/* B19D1C 800A2B7C 00057840 */  sll   $t7, $a1, 1
/* B19D20 800A2B80 01E9C021 */  addu  $t8, $t7, $t1
/* B19D24 800A2B84 000EC840 */  sll   $t9, $t6, 1
/* B19D28 800A2B88 03197821 */  addu  $t7, $t8, $t9
/* B19D2C 800A2B8C 85EE0000 */  lh    $t6, ($t7)
/* B19D30 800A2B90 10000006 */  b     .L800A2BAC
/* B19D34 800A2B94 A4CE0002 */   sh    $t6, 2($a2)
/* B19D38 800A2B98 84F80006 */  lh    $t8, 6($a3)
.L800A2B9C:
/* B19D3C 800A2B9C 0018C840 */  sll   $t9, $t8, 1
/* B19D40 800A2BA0 01397821 */  addu  $t7, $t1, $t9
/* B19D44 800A2BA4 85EE0000 */  lh    $t6, ($t7)
/* B19D48 800A2BA8 A4CE0002 */  sh    $t6, 2($a2)
.L800A2BAC:
/* B19D4C 800A2BAC 84F80008 */  lh    $t8, 8($a3)
/* B19D50 800A2BB0 00B8082A */  slt   $at, $a1, $t8
/* B19D54 800A2BB4 5020000A */  beql  $at, $zero, .L800A2BE0
/* B19D58 800A2BB8 84EF000A */   lh    $t7, 0xa($a3)
/* B19D5C 800A2BBC 84EE000A */  lh    $t6, 0xa($a3)
/* B19D60 800A2BC0 0005C840 */  sll   $t9, $a1, 1
/* B19D64 800A2BC4 03297821 */  addu  $t7, $t9, $t1
/* B19D68 800A2BC8 000EC040 */  sll   $t8, $t6, 1
/* B19D6C 800A2BCC 01F8C821 */  addu  $t9, $t7, $t8
/* B19D70 800A2BD0 872E0000 */  lh    $t6, ($t9)
/* B19D74 800A2BD4 10000006 */  b     .L800A2BF0
/* B19D78 800A2BD8 A4CE0004 */   sh    $t6, 4($a2)
/* B19D7C 800A2BDC 84EF000A */  lh    $t7, 0xa($a3)
.L800A2BE0:
/* B19D80 800A2BE0 000FC040 */  sll   $t8, $t7, 1
/* B19D84 800A2BE4 0138C821 */  addu  $t9, $t1, $t8
/* B19D88 800A2BE8 872E0000 */  lh    $t6, ($t9)
/* B19D8C 800A2BEC A4CE0004 */  sh    $t6, 4($a2)
.L800A2BF0:
/* B19D90 800A2BF0 246F0001 */  addiu $t7, $v1, 1
/* B19D94 800A2BF4 24E7000C */  addiu $a3, $a3, 0xc
/* B19D98 800A2BF8 11E2006E */  beq   $t7, $v0, .L800A2DB4
/* B19D9C 800A2BFC 24C60006 */   addiu $a2, $a2, 6
.L800A2C00:
/* B19DA0 800A2C00 84F80000 */  lh    $t8, ($a3)
.L800A2C04:
/* B19DA4 800A2C04 24420002 */  addiu $v0, $v0, 2
/* B19DA8 800A2C08 00B8082A */  slt   $at, $a1, $t8
/* B19DAC 800A2C0C 5020000A */  beql  $at, $zero, .L800A2C38
/* B19DB0 800A2C10 84EE0002 */   lh    $t6, 2($a3)
/* B19DB4 800A2C14 84EF0002 */  lh    $t7, 2($a3)
/* B19DB8 800A2C18 0005C840 */  sll   $t9, $a1, 1
/* B19DBC 800A2C1C 03297021 */  addu  $t6, $t9, $t1
/* B19DC0 800A2C20 000FC040 */  sll   $t8, $t7, 1
/* B19DC4 800A2C24 01D8C821 */  addu  $t9, $t6, $t8
/* B19DC8 800A2C28 872F0000 */  lh    $t7, ($t9)
/* B19DCC 800A2C2C 10000006 */  b     .L800A2C48
/* B19DD0 800A2C30 A4CF0000 */   sh    $t7, ($a2)
/* B19DD4 800A2C34 84EE0002 */  lh    $t6, 2($a3)
.L800A2C38:
/* B19DD8 800A2C38 000EC040 */  sll   $t8, $t6, 1
/* B19DDC 800A2C3C 0138C821 */  addu  $t9, $t1, $t8
/* B19DE0 800A2C40 872F0000 */  lh    $t7, ($t9)
/* B19DE4 800A2C44 A4CF0000 */  sh    $t7, ($a2)
.L800A2C48:
/* B19DE8 800A2C48 84EE0004 */  lh    $t6, 4($a3)
/* B19DEC 800A2C4C 00AE082A */  slt   $at, $a1, $t6
/* B19DF0 800A2C50 5020000A */  beql  $at, $zero, .L800A2C7C
/* B19DF4 800A2C54 84F90006 */   lh    $t9, 6($a3)
/* B19DF8 800A2C58 84EF0006 */  lh    $t7, 6($a3)
/* B19DFC 800A2C5C 0005C040 */  sll   $t8, $a1, 1
/* B19E00 800A2C60 0309C821 */  addu  $t9, $t8, $t1
/* B19E04 800A2C64 000F7040 */  sll   $t6, $t7, 1
/* B19E08 800A2C68 032EC021 */  addu  $t8, $t9, $t6
/* B19E0C 800A2C6C 870F0000 */  lh    $t7, ($t8)
/* B19E10 800A2C70 10000006 */  b     .L800A2C8C
/* B19E14 800A2C74 A4CF0002 */   sh    $t7, 2($a2)
/* B19E18 800A2C78 84F90006 */  lh    $t9, 6($a3)
.L800A2C7C:
/* B19E1C 800A2C7C 00197040 */  sll   $t6, $t9, 1
/* B19E20 800A2C80 012EC021 */  addu  $t8, $t1, $t6
/* B19E24 800A2C84 870F0000 */  lh    $t7, ($t8)
/* B19E28 800A2C88 A4CF0002 */  sh    $t7, 2($a2)
.L800A2C8C:
/* B19E2C 800A2C8C 84F90008 */  lh    $t9, 8($a3)
/* B19E30 800A2C90 00B9082A */  slt   $at, $a1, $t9
/* B19E34 800A2C94 5020000A */  beql  $at, $zero, .L800A2CC0
/* B19E38 800A2C98 84F8000A */   lh    $t8, 0xa($a3)
/* B19E3C 800A2C9C 84EF000A */  lh    $t7, 0xa($a3)
/* B19E40 800A2CA0 00057040 */  sll   $t6, $a1, 1
/* B19E44 800A2CA4 01C9C021 */  addu  $t8, $t6, $t1
/* B19E48 800A2CA8 000FC840 */  sll   $t9, $t7, 1
/* B19E4C 800A2CAC 03197021 */  addu  $t6, $t8, $t9
/* B19E50 800A2CB0 85CF0000 */  lh    $t7, ($t6)
/* B19E54 800A2CB4 10000006 */  b     .L800A2CD0
/* B19E58 800A2CB8 A4CF0004 */   sh    $t7, 4($a2)
/* B19E5C 800A2CBC 84F8000A */  lh    $t8, 0xa($a3)
.L800A2CC0:
/* B19E60 800A2CC0 0018C840 */  sll   $t9, $t8, 1
/* B19E64 800A2CC4 01397021 */  addu  $t6, $t1, $t9
/* B19E68 800A2CC8 85CF0000 */  lh    $t7, ($t6)
/* B19E6C 800A2CCC A4CF0004 */  sh    $t7, 4($a2)
.L800A2CD0:
/* B19E70 800A2CD0 84F8000C */  lh    $t8, 0xc($a3)
/* B19E74 800A2CD4 24E7000C */  addiu $a3, $a3, 0xc
/* B19E78 800A2CD8 24C60006 */  addiu $a2, $a2, 6
/* B19E7C 800A2CDC 00B8082A */  slt   $at, $a1, $t8
/* B19E80 800A2CE0 5020000A */  beql  $at, $zero, .L800A2D0C
/* B19E84 800A2CE4 84EE0002 */   lh    $t6, 2($a3)
/* B19E88 800A2CE8 84EF0002 */  lh    $t7, 2($a3)
/* B19E8C 800A2CEC 0005C840 */  sll   $t9, $a1, 1
/* B19E90 800A2CF0 03297021 */  addu  $t6, $t9, $t1
/* B19E94 800A2CF4 000FC040 */  sll   $t8, $t7, 1
/* B19E98 800A2CF8 01D8C821 */  addu  $t9, $t6, $t8
/* B19E9C 800A2CFC 872F0000 */  lh    $t7, ($t9)
/* B19EA0 800A2D00 10000006 */  b     .L800A2D1C
/* B19EA4 800A2D04 A4CF0000 */   sh    $t7, ($a2)
/* B19EA8 800A2D08 84EE0002 */  lh    $t6, 2($a3)
.L800A2D0C:
/* B19EAC 800A2D0C 000EC040 */  sll   $t8, $t6, 1
/* B19EB0 800A2D10 0138C821 */  addu  $t9, $t1, $t8
/* B19EB4 800A2D14 872F0000 */  lh    $t7, ($t9)
/* B19EB8 800A2D18 A4CF0000 */  sh    $t7, ($a2)
.L800A2D1C:
/* B19EBC 800A2D1C 84EE0004 */  lh    $t6, 4($a3)
/* B19EC0 800A2D20 00AE082A */  slt   $at, $a1, $t6
/* B19EC4 800A2D24 5020000A */  beql  $at, $zero, .L800A2D50
/* B19EC8 800A2D28 84F90006 */   lh    $t9, 6($a3)
/* B19ECC 800A2D2C 84EF0006 */  lh    $t7, 6($a3)
/* B19ED0 800A2D30 0005C040 */  sll   $t8, $a1, 1
/* B19ED4 800A2D34 0309C821 */  addu  $t9, $t8, $t1
/* B19ED8 800A2D38 000F7040 */  sll   $t6, $t7, 1
/* B19EDC 800A2D3C 032EC021 */  addu  $t8, $t9, $t6
/* B19EE0 800A2D40 870F0000 */  lh    $t7, ($t8)
/* B19EE4 800A2D44 10000006 */  b     .L800A2D60
/* B19EE8 800A2D48 A4CF0002 */   sh    $t7, 2($a2)
/* B19EEC 800A2D4C 84F90006 */  lh    $t9, 6($a3)
.L800A2D50:
/* B19EF0 800A2D50 00197040 */  sll   $t6, $t9, 1
/* B19EF4 800A2D54 012EC021 */  addu  $t8, $t1, $t6
/* B19EF8 800A2D58 870F0000 */  lh    $t7, ($t8)
/* B19EFC 800A2D5C A4CF0002 */  sh    $t7, 2($a2)
.L800A2D60:
/* B19F00 800A2D60 84F90008 */  lh    $t9, 8($a3)
/* B19F04 800A2D64 00B9082A */  slt   $at, $a1, $t9
/* B19F08 800A2D68 5020000A */  beql  $at, $zero, .L800A2D94
/* B19F0C 800A2D6C 84F8000A */   lh    $t8, 0xa($a3)
/* B19F10 800A2D70 84EF000A */  lh    $t7, 0xa($a3)
/* B19F14 800A2D74 00057040 */  sll   $t6, $a1, 1
/* B19F18 800A2D78 01C9C021 */  addu  $t8, $t6, $t1
/* B19F1C 800A2D7C 000FC840 */  sll   $t9, $t7, 1
/* B19F20 800A2D80 03197021 */  addu  $t6, $t8, $t9
/* B19F24 800A2D84 85CF0000 */  lh    $t7, ($t6)
/* B19F28 800A2D88 10000006 */  b     .L800A2DA4
/* B19F2C 800A2D8C A4CF0004 */   sh    $t7, 4($a2)
/* B19F30 800A2D90 84F8000A */  lh    $t8, 0xa($a3)
.L800A2D94:
/* B19F34 800A2D94 0018C840 */  sll   $t9, $t8, 1
/* B19F38 800A2D98 01397021 */  addu  $t6, $t1, $t9
/* B19F3C 800A2D9C 85CF0000 */  lh    $t7, ($t6)
/* B19F40 800A2DA0 A4CF0004 */  sh    $t7, 4($a2)
.L800A2DA4:
/* B19F44 800A2DA4 24780001 */  addiu $t8, $v1, 1
/* B19F48 800A2DA8 24E7000C */  addiu $a3, $a3, 0xc
/* B19F4C 800A2DAC 1702FF94 */  bne   $t8, $v0, .L800A2C00
/* B19F50 800A2DB0 24C60006 */   addiu $a2, $a2, 6
.L800A2DB4:
/* B19F54 800A2DB4 03E00008 */  jr    $ra
/* B19F58 800A2DB8 00601025 */   move  $v0, $v1

/* B19F5C 800A2DBC 00047100 */  sll   $t6, $a0, 4
/* B19F60 800A2DC0 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19F64 800A2DC4 000FC080 */  sll   $t8, $t7, 2
/* B19F68 800A2DC8 3C198016 */  lui   $t9, 0x8016
/* B19F6C 800A2DCC 0338C821 */  addu  $t9, $t9, $t8
/* B19F70 800A2DD0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19F74 800A2DD4 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B19F78 800A2DD8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19F7C 800A2DDC 00814024 */  and   $t0, $a0, $at
/* B19F80 800A2DE0 3C018000 */  lui   $at, 0x8000
/* B19F84 800A2DE4 03281821 */  addu  $v1, $t9, $t0
/* B19F88 800A2DE8 00611821 */  addu  $v1, $v1, $at
/* B19F8C 800A2DEC 03E00008 */  jr    $ra
/* B19F90 800A2DF0 84620002 */   lh    $v0, 2($v1)

/* B19F94 800A2DF4 00047100 */  sll   $t6, $a0, 4
/* B19F98 800A2DF8 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19F9C 800A2DFC 000FC080 */  sll   $t8, $t7, 2
/* B19FA0 800A2E00 3C198016 */  lui   $t9, 0x8016
/* B19FA4 800A2E04 0338C821 */  addu  $t9, $t9, $t8
/* B19FA8 800A2E08 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19FAC 800A2E0C 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B19FB0 800A2E10 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19FB4 800A2E14 00814024 */  and   $t0, $a0, $at
/* B19FB8 800A2E18 3C018000 */  lui   $at, 0x8000
/* B19FBC 800A2E1C 03281821 */  addu  $v1, $t9, $t0
/* B19FC0 800A2E20 00611821 */  addu  $v1, $v1, $at
/* B19FC4 800A2E24 03E00008 */  jr    $ra
/* B19FC8 800A2E28 84620000 */   lh    $v0, ($v1)

/* B19FCC 800A2E2C 00047100 */  sll   $t6, $a0, 4
/* B19FD0 800A2E30 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19FD4 800A2E34 000FC080 */  sll   $t8, $t7, 2
/* B19FD8 800A2E38 3C198016 */  lui   $t9, 0x8016
/* B19FDC 800A2E3C 0338C821 */  addu  $t9, $t9, $t8
/* B19FE0 800A2E40 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19FE4 800A2E44 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B19FE8 800A2E48 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19FEC 800A2E4C 00814024 */  and   $t0, $a0, $at
/* B19FF0 800A2E50 3C018000 */  lui   $at, 0x8000
/* B19FF4 800A2E54 03281821 */  addu  $v1, $t9, $t0
/* B19FF8 800A2E58 00611821 */  addu  $v1, $v1, $at
/* B19FFC 800A2E5C 84620000 */  lh    $v0, ($v1)
/* B1A000 800A2E60 2442FFFF */  addiu $v0, $v0, -1
/* B1A004 800A2E64 00021400 */  sll   $v0, $v0, 0x10
/* B1A008 800A2E68 03E00008 */  jr    $ra
/* B1A00C 800A2E6C 00021403 */   sra   $v0, $v0, 0x10

glabel func_800A2E70
/* B1A010 800A2E70 27BDFFF8 */  addiu $sp, $sp, -8
/* B1A014 800A2E74 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1A018 800A2E78 C7AC0018 */  lwc1  $f12, 0x18($sp)
/* B1A01C 800A2E7C 44812000 */  mtc1  $at, $f4
/* B1A020 800A2E80 AFB00004 */  sw    $s0, 4($sp)
/* B1A024 800A2E84 00A08025 */  move  $s0, $a1
/* B1A028 800A2E88 4604603C */  c.lt.s $f12, $f4
/* B1A02C 800A2E8C 00000000 */  nop   
/* B1A030 800A2E90 450000E6 */  bc1f  .L800A322C
/* B1A034 800A2E94 00000000 */   nop   
/* B1A038 800A2E98 18800111 */  blez  $a0, .L800A32E0
/* B1A03C 800A2E9C 00001025 */   move  $v0, $zero
/* B1A040 800A2EA0 30830001 */  andi  $v1, $a0, 1
/* B1A044 800A2EA4 50600030 */  beql  $v1, $zero, .L800A2F68
/* B1A048 800A2EA8 24420002 */   addiu $v0, $v0, 2
/* B1A04C 800A2EAC 84C30000 */  lh    $v1, ($a2)
/* B1A050 800A2EB0 84EE0000 */  lh    $t6, ($a3)
/* B1A054 800A2EB4 24020001 */  li    $v0, 1
/* B1A058 800A2EB8 26100006 */  addiu $s0, $s0, 6
/* B1A05C 800A2EBC 01C32823 */  subu  $a1, $t6, $v1
/* B1A060 800A2EC0 00052C00 */  sll   $a1, $a1, 0x10
/* B1A064 800A2EC4 00052C03 */  sra   $a1, $a1, 0x10
/* B1A068 800A2EC8 44853000 */  mtc1  $a1, $f6
/* B1A06C 800A2ECC 24C60006 */  addiu $a2, $a2, 6
/* B1A070 800A2ED0 24E70006 */  addiu $a3, $a3, 6
/* B1A074 800A2ED4 46803220 */  cvt.s.w $f8, $f6
/* B1A078 800A2ED8 460C4282 */  mul.s $f10, $f8, $f12
/* B1A07C 800A2EDC 4600540D */  trunc.w.s $f16, $f10
/* B1A080 800A2EE0 44088000 */  mfc1  $t0, $f16
/* B1A084 800A2EE4 00000000 */  nop   
/* B1A088 800A2EE8 01034821 */  addu  $t1, $t0, $v1
/* B1A08C 800A2EEC A609FFFA */  sh    $t1, -6($s0)
/* B1A090 800A2EF0 84EAFFFC */  lh    $t2, -4($a3)
/* B1A094 800A2EF4 84C3FFFC */  lh    $v1, -4($a2)
/* B1A098 800A2EF8 01432823 */  subu  $a1, $t2, $v1
/* B1A09C 800A2EFC 00052C00 */  sll   $a1, $a1, 0x10
/* B1A0A0 800A2F00 00052C03 */  sra   $a1, $a1, 0x10
/* B1A0A4 800A2F04 44859000 */  mtc1  $a1, $f18
/* B1A0A8 800A2F08 00000000 */  nop   
/* B1A0AC 800A2F0C 46809120 */  cvt.s.w $f4, $f18
/* B1A0B0 800A2F10 460C2182 */  mul.s $f6, $f4, $f12
/* B1A0B4 800A2F14 4600320D */  trunc.w.s $f8, $f6
/* B1A0B8 800A2F18 440E4000 */  mfc1  $t6, $f8
/* B1A0BC 800A2F1C 00000000 */  nop   
/* B1A0C0 800A2F20 01C37821 */  addu  $t7, $t6, $v1
/* B1A0C4 800A2F24 A60FFFFC */  sh    $t7, -4($s0)
/* B1A0C8 800A2F28 84F8FFFE */  lh    $t8, -2($a3)
/* B1A0CC 800A2F2C 84C3FFFE */  lh    $v1, -2($a2)
/* B1A0D0 800A2F30 03032823 */  subu  $a1, $t8, $v1
/* B1A0D4 800A2F34 00052C00 */  sll   $a1, $a1, 0x10
/* B1A0D8 800A2F38 00052C03 */  sra   $a1, $a1, 0x10
/* B1A0DC 800A2F3C 44855000 */  mtc1  $a1, $f10
/* B1A0E0 800A2F40 00000000 */  nop   
/* B1A0E4 800A2F44 46805420 */  cvt.s.w $f16, $f10
/* B1A0E8 800A2F48 460C8482 */  mul.s $f18, $f16, $f12
/* B1A0EC 800A2F4C 4600910D */  trunc.w.s $f4, $f18
/* B1A0F0 800A2F50 440A2000 */  mfc1  $t2, $f4
/* B1A0F4 800A2F54 00000000 */  nop   
/* B1A0F8 800A2F58 01435821 */  addu  $t3, $t2, $v1
/* B1A0FC 800A2F5C 104400E0 */  beq   $v0, $a0, .L800A32E0
/* B1A100 800A2F60 A60BFFFE */   sh    $t3, -2($s0)
/* B1A104 800A2F64 24420002 */  addiu $v0, $v0, 2
.L800A2F68:
/* B1A108 800A2F68 84C30000 */  lh    $v1, ($a2)
/* B1A10C 800A2F6C 10440059 */  beq   $v0, $a0, .L800A30D4
/* B1A110 800A2F70 84EC0000 */   lh    $t4, ($a3)
.L800A2F74:
/* B1A114 800A2F74 01832823 */  subu  $a1, $t4, $v1
/* B1A118 800A2F78 00052C00 */  sll   $a1, $a1, 0x10
/* B1A11C 800A2F7C 00052C03 */  sra   $a1, $a1, 0x10
/* B1A120 800A2F80 44859000 */  mtc1  $a1, $f18
/* B1A124 800A2F84 24420002 */  addiu $v0, $v0, 2
/* B1A128 800A2F88 2610000C */  addiu $s0, $s0, 0xc
/* B1A12C 800A2F8C 468094A0 */  cvt.s.w $f18, $f18
/* B1A130 800A2F90 24C6000C */  addiu $a2, $a2, 0xc
/* B1A134 800A2F94 24E7000C */  addiu $a3, $a3, 0xc
/* B1A138 800A2F98 460C9482 */  mul.s $f18, $f18, $f12
/* B1A13C 800A2F9C 4600948D */  trunc.w.s $f18, $f18
/* B1A140 800A2FA0 44189000 */  mfc1  $t8, $f18
/* B1A144 800A2FA4 00000000 */  nop   
/* B1A148 800A2FA8 0303C821 */  addu  $t9, $t8, $v1
/* B1A14C 800A2FAC A619FFF4 */  sh    $t9, -0xc($s0)
/* B1A150 800A2FB0 84C3FFF6 */  lh    $v1, -0xa($a2)
/* B1A154 800A2FB4 84E8FFF6 */  lh    $t0, -0xa($a3)
/* B1A158 800A2FB8 01032823 */  subu  $a1, $t0, $v1
/* B1A15C 800A2FBC 00052C00 */  sll   $a1, $a1, 0x10
/* B1A160 800A2FC0 00052C03 */  sra   $a1, $a1, 0x10
/* B1A164 800A2FC4 44859000 */  mtc1  $a1, $f18
/* B1A168 800A2FC8 00000000 */  nop   
/* B1A16C 800A2FCC 468094A0 */  cvt.s.w $f18, $f18
/* B1A170 800A2FD0 460C9482 */  mul.s $f18, $f18, $f12
/* B1A174 800A2FD4 4600948D */  trunc.w.s $f18, $f18
/* B1A178 800A2FD8 440C9000 */  mfc1  $t4, $f18
/* B1A17C 800A2FDC 00000000 */  nop   
/* B1A180 800A2FE0 01836821 */  addu  $t5, $t4, $v1
/* B1A184 800A2FE4 A60DFFF6 */  sh    $t5, -0xa($s0)
/* B1A188 800A2FE8 84C3FFF8 */  lh    $v1, -8($a2)
/* B1A18C 800A2FEC 84EEFFF8 */  lh    $t6, -8($a3)
/* B1A190 800A2FF0 01C32823 */  subu  $a1, $t6, $v1
/* B1A194 800A2FF4 00052C00 */  sll   $a1, $a1, 0x10
/* B1A198 800A2FF8 00052C03 */  sra   $a1, $a1, 0x10
/* B1A19C 800A2FFC 44859000 */  mtc1  $a1, $f18
/* B1A1A0 800A3000 00000000 */  nop   
/* B1A1A4 800A3004 468094A0 */  cvt.s.w $f18, $f18
/* B1A1A8 800A3008 460C9482 */  mul.s $f18, $f18, $f12
/* B1A1AC 800A300C 4600948D */  trunc.w.s $f18, $f18
/* B1A1B0 800A3010 44089000 */  mfc1  $t0, $f18
/* B1A1B4 800A3014 00000000 */  nop   
/* B1A1B8 800A3018 01034821 */  addu  $t1, $t0, $v1
/* B1A1BC 800A301C A609FFF8 */  sh    $t1, -8($s0)
/* B1A1C0 800A3020 84C3FFFA */  lh    $v1, -6($a2)
/* B1A1C4 800A3024 84EAFFFA */  lh    $t2, -6($a3)
/* B1A1C8 800A3028 01432823 */  subu  $a1, $t2, $v1
/* B1A1CC 800A302C 00052C00 */  sll   $a1, $a1, 0x10
/* B1A1D0 800A3030 00052C03 */  sra   $a1, $a1, 0x10
/* B1A1D4 800A3034 44859000 */  mtc1  $a1, $f18
/* B1A1D8 800A3038 00000000 */  nop   
/* B1A1DC 800A303C 468094A0 */  cvt.s.w $f18, $f18
/* B1A1E0 800A3040 460C9482 */  mul.s $f18, $f18, $f12
/* B1A1E4 800A3044 4600948D */  trunc.w.s $f18, $f18
/* B1A1E8 800A3048 440E9000 */  mfc1  $t6, $f18
/* B1A1EC 800A304C 00000000 */  nop   
/* B1A1F0 800A3050 01C37821 */  addu  $t7, $t6, $v1
/* B1A1F4 800A3054 A60FFFFA */  sh    $t7, -6($s0)
/* B1A1F8 800A3058 84C3FFFC */  lh    $v1, -4($a2)
/* B1A1FC 800A305C 84F8FFFC */  lh    $t8, -4($a3)
/* B1A200 800A3060 03032823 */  subu  $a1, $t8, $v1
/* B1A204 800A3064 00052C00 */  sll   $a1, $a1, 0x10
/* B1A208 800A3068 00052C03 */  sra   $a1, $a1, 0x10
/* B1A20C 800A306C 44859000 */  mtc1  $a1, $f18
/* B1A210 800A3070 00000000 */  nop   
/* B1A214 800A3074 468094A0 */  cvt.s.w $f18, $f18
/* B1A218 800A3078 460C9482 */  mul.s $f18, $f18, $f12
/* B1A21C 800A307C 4600948D */  trunc.w.s $f18, $f18
/* B1A220 800A3080 440A9000 */  mfc1  $t2, $f18
/* B1A224 800A3084 00000000 */  nop   
/* B1A228 800A3088 01435821 */  addu  $t3, $t2, $v1
/* B1A22C 800A308C A60BFFFC */  sh    $t3, -4($s0)
/* B1A230 800A3090 84C3FFFE */  lh    $v1, -2($a2)
/* B1A234 800A3094 84ECFFFE */  lh    $t4, -2($a3)
/* B1A238 800A3098 01832823 */  subu  $a1, $t4, $v1
/* B1A23C 800A309C 00052C00 */  sll   $a1, $a1, 0x10
/* B1A240 800A30A0 00052C03 */  sra   $a1, $a1, 0x10
/* B1A244 800A30A4 44859000 */  mtc1  $a1, $f18
/* B1A248 800A30A8 00000000 */  nop   
/* B1A24C 800A30AC 468094A0 */  cvt.s.w $f18, $f18
/* B1A250 800A30B0 460C9482 */  mul.s $f18, $f18, $f12
/* B1A254 800A30B4 4600948D */  trunc.w.s $f18, $f18
/* B1A258 800A30B8 44189000 */  mfc1  $t8, $f18
/* B1A25C 800A30BC 00000000 */  nop   
/* B1A260 800A30C0 0303C821 */  addu  $t9, $t8, $v1
/* B1A264 800A30C4 A619FFFE */  sh    $t9, -2($s0)
/* B1A268 800A30C8 84C30000 */  lh    $v1, ($a2)
/* B1A26C 800A30CC 1444FFA9 */  bne   $v0, $a0, .L800A2F74
/* B1A270 800A30D0 84EC0000 */   lh    $t4, ($a3)
.L800A30D4:
/* B1A274 800A30D4 01832823 */  subu  $a1, $t4, $v1
/* B1A278 800A30D8 00052C00 */  sll   $a1, $a1, 0x10
/* B1A27C 800A30DC 00052C03 */  sra   $a1, $a1, 0x10
/* B1A280 800A30E0 44859000 */  mtc1  $a1, $f18
/* B1A284 800A30E4 2610000C */  addiu $s0, $s0, 0xc
/* B1A288 800A30E8 24C6000C */  addiu $a2, $a2, 0xc
/* B1A28C 800A30EC 468094A0 */  cvt.s.w $f18, $f18
/* B1A290 800A30F0 24E7000C */  addiu $a3, $a3, 0xc
/* B1A294 800A30F4 460C9482 */  mul.s $f18, $f18, $f12
/* B1A298 800A30F8 4600948D */  trunc.w.s $f18, $f18
/* B1A29C 800A30FC 44189000 */  mfc1  $t8, $f18
/* B1A2A0 800A3100 00000000 */  nop   
/* B1A2A4 800A3104 0303C821 */  addu  $t9, $t8, $v1
/* B1A2A8 800A3108 A619FFF4 */  sh    $t9, -0xc($s0)
/* B1A2AC 800A310C 84C3FFF6 */  lh    $v1, -0xa($a2)
/* B1A2B0 800A3110 84E8FFF6 */  lh    $t0, -0xa($a3)
/* B1A2B4 800A3114 01032823 */  subu  $a1, $t0, $v1
/* B1A2B8 800A3118 00052C00 */  sll   $a1, $a1, 0x10
/* B1A2BC 800A311C 00052C03 */  sra   $a1, $a1, 0x10
/* B1A2C0 800A3120 44859000 */  mtc1  $a1, $f18
/* B1A2C4 800A3124 00000000 */  nop   
/* B1A2C8 800A3128 468094A0 */  cvt.s.w $f18, $f18
/* B1A2CC 800A312C 460C9482 */  mul.s $f18, $f18, $f12
/* B1A2D0 800A3130 4600948D */  trunc.w.s $f18, $f18
/* B1A2D4 800A3134 440C9000 */  mfc1  $t4, $f18
/* B1A2D8 800A3138 00000000 */  nop   
/* B1A2DC 800A313C 01836821 */  addu  $t5, $t4, $v1
/* B1A2E0 800A3140 A60DFFF6 */  sh    $t5, -0xa($s0)
/* B1A2E4 800A3144 84C3FFF8 */  lh    $v1, -8($a2)
/* B1A2E8 800A3148 84EEFFF8 */  lh    $t6, -8($a3)
/* B1A2EC 800A314C 01C32823 */  subu  $a1, $t6, $v1
/* B1A2F0 800A3150 00052C00 */  sll   $a1, $a1, 0x10
/* B1A2F4 800A3154 00052C03 */  sra   $a1, $a1, 0x10
/* B1A2F8 800A3158 44859000 */  mtc1  $a1, $f18
/* B1A2FC 800A315C 00000000 */  nop   
/* B1A300 800A3160 468094A0 */  cvt.s.w $f18, $f18
/* B1A304 800A3164 460C9482 */  mul.s $f18, $f18, $f12
/* B1A308 800A3168 4600948D */  trunc.w.s $f18, $f18
/* B1A30C 800A316C 44089000 */  mfc1  $t0, $f18
/* B1A310 800A3170 00000000 */  nop   
/* B1A314 800A3174 01034821 */  addu  $t1, $t0, $v1
/* B1A318 800A3178 A609FFF8 */  sh    $t1, -8($s0)
/* B1A31C 800A317C 84EAFFFA */  lh    $t2, -6($a3)
/* B1A320 800A3180 84C3FFFA */  lh    $v1, -6($a2)
/* B1A324 800A3184 01432823 */  subu  $a1, $t2, $v1
/* B1A328 800A3188 00052C00 */  sll   $a1, $a1, 0x10
/* B1A32C 800A318C 00052C03 */  sra   $a1, $a1, 0x10
/* B1A330 800A3190 44859000 */  mtc1  $a1, $f18
/* B1A334 800A3194 00000000 */  nop   
/* B1A338 800A3198 468094A0 */  cvt.s.w $f18, $f18
/* B1A33C 800A319C 460C9482 */  mul.s $f18, $f18, $f12
/* B1A340 800A31A0 4600948D */  trunc.w.s $f18, $f18
/* B1A344 800A31A4 440E9000 */  mfc1  $t6, $f18
/* B1A348 800A31A8 00000000 */  nop   
/* B1A34C 800A31AC 01C37821 */  addu  $t7, $t6, $v1
/* B1A350 800A31B0 A60FFFFA */  sh    $t7, -6($s0)
/* B1A354 800A31B4 84F8FFFC */  lh    $t8, -4($a3)
/* B1A358 800A31B8 84C3FFFC */  lh    $v1, -4($a2)
/* B1A35C 800A31BC 03032823 */  subu  $a1, $t8, $v1
/* B1A360 800A31C0 00052C00 */  sll   $a1, $a1, 0x10
/* B1A364 800A31C4 00052C03 */  sra   $a1, $a1, 0x10
/* B1A368 800A31C8 44859000 */  mtc1  $a1, $f18
/* B1A36C 800A31CC 00000000 */  nop   
/* B1A370 800A31D0 468094A0 */  cvt.s.w $f18, $f18
/* B1A374 800A31D4 460C9482 */  mul.s $f18, $f18, $f12
/* B1A378 800A31D8 4600948D */  trunc.w.s $f18, $f18
/* B1A37C 800A31DC 440A9000 */  mfc1  $t2, $f18
/* B1A380 800A31E0 00000000 */  nop   
/* B1A384 800A31E4 01435821 */  addu  $t3, $t2, $v1
/* B1A388 800A31E8 A60BFFFC */  sh    $t3, -4($s0)
/* B1A38C 800A31EC 84ECFFFE */  lh    $t4, -2($a3)
/* B1A390 800A31F0 84C3FFFE */  lh    $v1, -2($a2)
/* B1A394 800A31F4 01832823 */  subu  $a1, $t4, $v1
/* B1A398 800A31F8 00052C00 */  sll   $a1, $a1, 0x10
/* B1A39C 800A31FC 00052C03 */  sra   $a1, $a1, 0x10
/* B1A3A0 800A3200 44859000 */  mtc1  $a1, $f18
/* B1A3A4 800A3204 00000000 */  nop   
/* B1A3A8 800A3208 468094A0 */  cvt.s.w $f18, $f18
/* B1A3AC 800A320C 460C9482 */  mul.s $f18, $f18, $f12
/* B1A3B0 800A3210 4600948D */  trunc.w.s $f18, $f18
/* B1A3B4 800A3214 44189000 */  mfc1  $t8, $f18
/* B1A3B8 800A3218 00000000 */  nop   
/* B1A3BC 800A321C 0303C821 */  addu  $t9, $t8, $v1
/* B1A3C0 800A3220 A619FFFE */  sh    $t9, -2($s0)
/* B1A3C4 800A3224 1000002F */  b     .L800A32E4
/* B1A3C8 800A3228 8FB00004 */   lw    $s0, 4($sp)
.L800A322C:
/* B1A3CC 800A322C 1880002C */  blez  $a0, .L800A32E0
/* B1A3D0 800A3230 00001025 */   move  $v0, $zero
/* B1A3D4 800A3234 30850003 */  andi  $a1, $a0, 3
/* B1A3D8 800A3238 10A0000D */  beqz  $a1, .L800A3270
/* B1A3DC 800A323C 00A01825 */   move  $v1, $a1
.L800A3240:
/* B1A3E0 800A3240 84E80000 */  lh    $t0, ($a3)
/* B1A3E4 800A3244 24420001 */  addiu $v0, $v0, 1
/* B1A3E8 800A3248 26100006 */  addiu $s0, $s0, 6
/* B1A3EC 800A324C A608FFFA */  sh    $t0, -6($s0)
/* B1A3F0 800A3250 84E90002 */  lh    $t1, 2($a3)
/* B1A3F4 800A3254 24E70006 */  addiu $a3, $a3, 6
/* B1A3F8 800A3258 A609FFFC */  sh    $t1, -4($s0)
/* B1A3FC 800A325C 84EAFFFE */  lh    $t2, -2($a3)
/* B1A400 800A3260 1462FFF7 */  bne   $v1, $v0, .L800A3240
/* B1A404 800A3264 A60AFFFE */   sh    $t2, -2($s0)
/* B1A408 800A3268 5044001E */  beql  $v0, $a0, .L800A32E4
/* B1A40C 800A326C 8FB00004 */   lw    $s0, 4($sp)
.L800A3270:
/* B1A410 800A3270 84EB0000 */  lh    $t3, ($a3)
/* B1A414 800A3274 24420004 */  addiu $v0, $v0, 4
/* B1A418 800A3278 26100018 */  addiu $s0, $s0, 0x18
/* B1A41C 800A327C A60BFFE8 */  sh    $t3, -0x18($s0)
/* B1A420 800A3280 84EC0002 */  lh    $t4, 2($a3)
/* B1A424 800A3284 24E70018 */  addiu $a3, $a3, 0x18
/* B1A428 800A3288 A60CFFEA */  sh    $t4, -0x16($s0)
/* B1A42C 800A328C 84EDFFEC */  lh    $t5, -0x14($a3)
/* B1A430 800A3290 A60DFFEC */  sh    $t5, -0x14($s0)
/* B1A434 800A3294 84EEFFEE */  lh    $t6, -0x12($a3)
/* B1A438 800A3298 A60EFFEE */  sh    $t6, -0x12($s0)
/* B1A43C 800A329C 84EFFFF0 */  lh    $t7, -0x10($a3)
/* B1A440 800A32A0 A60FFFF0 */  sh    $t7, -0x10($s0)
/* B1A444 800A32A4 84F8FFF2 */  lh    $t8, -0xe($a3)
/* B1A448 800A32A8 A618FFF2 */  sh    $t8, -0xe($s0)
/* B1A44C 800A32AC 84F9FFF4 */  lh    $t9, -0xc($a3)
/* B1A450 800A32B0 A619FFF4 */  sh    $t9, -0xc($s0)
/* B1A454 800A32B4 84E8FFF6 */  lh    $t0, -0xa($a3)
/* B1A458 800A32B8 A608FFF6 */  sh    $t0, -0xa($s0)
/* B1A45C 800A32BC 84E9FFF8 */  lh    $t1, -8($a3)
/* B1A460 800A32C0 A609FFF8 */  sh    $t1, -8($s0)
/* B1A464 800A32C4 84EAFFFA */  lh    $t2, -6($a3)
/* B1A468 800A32C8 A60AFFFA */  sh    $t2, -6($s0)
/* B1A46C 800A32CC 84EBFFFC */  lh    $t3, -4($a3)
/* B1A470 800A32D0 A60BFFFC */  sh    $t3, -4($s0)
/* B1A474 800A32D4 84ECFFFE */  lh    $t4, -2($a3)
/* B1A478 800A32D8 1444FFE5 */  bne   $v0, $a0, .L800A3270
/* B1A47C 800A32DC A60CFFFE */   sh    $t4, -2($s0)
.L800A32E0:
/* B1A480 800A32E0 8FB00004 */  lw    $s0, 4($sp)
.L800A32E4:
/* B1A484 800A32E4 03E00008 */  jr    $ra
/* B1A488 800A32E8 27BD0008 */   addiu $sp, $sp, 8

glabel func_800A32EC
/* B1A48C 800A32EC 03E00008 */  jr    $ra
/* B1A490 800A32F0 A4800000 */   sh    $zero, ($a0)

/* B1A494 800A32F4 3C028016 */  lui   $v0, %hi(D_801600B0) # $v0, 0x8016
/* B1A498 800A32F8 244200B0 */  addiu $v0, %lo(D_801600B0) # addiu $v0, $v0, 0xb0
/* B1A49C 800A32FC 8C4E0000 */  lw    $t6, ($v0)
/* B1A4A0 800A3300 AFA40000 */  sw    $a0, ($sp)
/* B1A4A4 800A3304 000E7840 */  sll   $t7, $t6, 1
/* B1A4A8 800A3308 03E00008 */  jr    $ra
/* B1A4AC 800A330C AC4F0000 */   sw    $t7, ($v0)

/* B1A4B0 800A3310 3C028013 */  lui   $v0, %hi(D_8012A480) # $v0, 0x8013
/* B1A4B4 800A3314 2442A480 */  addiu $v0, %lo(D_8012A480) # addiu $v0, $v0, -0x5b80
/* B1A4B8 800A3318 3C0F8016 */  lui   $t7, %hi(D_801600B0) # $t7, 0x8016
/* B1A4BC 800A331C 8DEF00B0 */  lw    $t7, %lo(D_801600B0)($t7)
/* B1A4C0 800A3320 8C4E0000 */  lw    $t6, ($v0)
/* B1A4C4 800A3324 AFA40000 */  sw    $a0, ($sp)
/* B1A4C8 800A3328 01CFC025 */  or    $t8, $t6, $t7
/* B1A4CC 800A332C 03E00008 */  jr    $ra
/* B1A4D0 800A3330 AC580000 */   sw    $t8, ($v0)

glabel func_800A3334
/* B1A4D4 800A3334 84830000 */  lh    $v1, ($a0)
/* B1A4D8 800A3338 00A03025 */  move  $a2, $a1
/* B1A4DC 800A333C 28610032 */  slti  $at, $v1, 0x32
/* B1A4E0 800A3340 14200003 */  bnez  $at, .L800A3350
/* B1A4E4 800A3344 246E0001 */   addiu $t6, $v1, 1
/* B1A4E8 800A3348 03E00008 */  jr    $ra
/* B1A4EC 800A334C 00001025 */   move  $v0, $zero

.L800A3350:
/* B1A4F0 800A3350 00037980 */  sll   $t7, $v1, 6
/* B1A4F4 800A3354 008F2821 */  addu  $a1, $a0, $t7
/* B1A4F8 800A3358 A48E0000 */  sh    $t6, ($a0)
/* B1A4FC 800A335C A0A60004 */  sb    $a2, 4($a1)
/* B1A500 800A3360 24A20004 */  addiu $v0, $a1, 4
/* B1A504 800A3364 03E00008 */  jr    $ra
/* B1A508 800A3368 00000000 */   nop   

glabel func_800A336C
/* B1A50C 800A336C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B1A510 800A3370 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A514 800A3374 AFBF002C */  sw    $ra, 0x2c($sp)
/* B1A518 800A3378 AFA40040 */  sw    $a0, 0x40($sp)
/* B1A51C 800A337C AFA50044 */  sw    $a1, 0x44($sp)
/* B1A520 800A3380 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A524 800A3384 AFA60048 */  sw    $a2, 0x48($sp)
/* B1A528 800A3388 AFA7004C */  sw    $a3, 0x4c($sp)
/* B1A52C 800A338C 00812021 */  addu  $a0, $a0, $at
/* B1A530 800A3390 0C028CCD */  jal   func_800A3334
/* B1A534 800A3394 00002825 */   move  $a1, $zero
/* B1A538 800A3398 10400033 */  beqz  $v0, .L800A3468
/* B1A53C 800A339C 8FA70044 */   lw    $a3, 0x44($sp)
/* B1A540 800A33A0 00077100 */  sll   $t6, $a3, 4
/* B1A544 800A33A4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1A548 800A33A8 000FC080 */  sll   $t8, $t7, 2
/* B1A54C 800A33AC 3C198016 */  lui   $t9, 0x8016
/* B1A550 800A33B0 0338C821 */  addu  $t9, $t9, $t8
/* B1A554 800A33B4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1A558 800A33B8 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B1A55C 800A33BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1A560 800A33C0 00E14024 */  and   $t0, $a3, $at
/* B1A564 800A33C4 3C018000 */  lui   $at, 0x8000
/* B1A568 800A33C8 03284821 */  addu  $t1, $t9, $t0
/* B1A56C 800A33CC 01215021 */  addu  $t2, $t1, $at
/* B1A570 800A33D0 24440024 */  addiu $a0, $v0, 0x24
/* B1A574 800A33D4 AFAA0038 */  sw    $t2, 0x38($sp)
/* B1A578 800A33D8 AFA40030 */  sw    $a0, 0x30($sp)
/* B1A57C 800A33DC 2445003C */  addiu $a1, $v0, 0x3c
/* B1A580 800A33E0 24060001 */  li    $a2, 1
/* B1A584 800A33E4 0C001874 */  jal   osCreateMesgQueue
/* B1A588 800A33E8 AFA2003C */   sw    $v0, 0x3c($sp)
/* B1A58C 800A33EC 8FA7004C */  lw    $a3, 0x4c($sp)
/* B1A590 800A33F0 8FB90048 */  lw    $t9, 0x48($sp)
/* B1A594 800A33F4 8FAB0038 */  lw    $t3, 0x38($sp)
/* B1A598 800A33F8 00E00821 */  addu  $at, $a3, $zero
/* B1A59C 800A33FC 00073880 */  sll   $a3, $a3, 2
/* B1A5A0 800A3400 00E13823 */  subu  $a3, $a3, $at
/* B1A5A4 800A3404 00073840 */  sll   $a3, $a3, 1
/* B1A5A8 800A3408 24E70002 */  addiu $a3, $a3, 2
/* B1A5AC 800A340C 00F90019 */  multu $a3, $t9
/* B1A5B0 800A3410 8D6C0004 */  lw    $t4, 4($t3)
/* B1A5B4 800A3414 3C0D004E */  lui   $t5, %hi(D_004E5C00) # $t5, 0x4e
/* B1A5B8 800A3418 25AD5C00 */  addiu $t5, %lo(D_004E5C00) # addiu $t5, $t5, 0x5c00
/* B1A5BC 800A341C 3C0F0700 */  lui   $t7, 0x700
/* B1A5C0 800A3420 8FA3003C */  lw    $v1, 0x3c($sp)
/* B1A5C4 800A3424 8FA90030 */  lw    $t1, 0x30($sp)
/* B1A5C8 800A3428 25EF0000 */  addiu $t7, $t7, 0
/* B1A5CC 800A342C 3C0A8014 */  lui   $t2, %hi(D_801403B8) # $t2, 0x8014
/* B1A5D0 800A3430 018D7021 */  addu  $t6, $t4, $t5
/* B1A5D4 800A3434 01CFC023 */  subu  $t8, $t6, $t7
/* B1A5D8 800A3438 254A03B8 */  addiu $t2, %lo(D_801403B8) # addiu $t2, $t2, 0x3b8
/* B1A5DC 800A343C 240B07D4 */  li    $t3, 2004
/* B1A5E0 800A3440 00004012 */  mflo  $t0
/* B1A5E4 800A3444 03083021 */  addu  $a2, $t8, $t0
/* B1A5E8 800A3448 AFAB0020 */  sw    $t3, 0x20($sp)
/* B1A5EC 800A344C AFAA001C */  sw    $t2, 0x1c($sp)
/* B1A5F0 800A3450 AFA00018 */  sw    $zero, 0x18($sp)
/* B1A5F4 800A3454 AFA00010 */  sw    $zero, 0x10($sp)
/* B1A5F8 800A3458 8FA50050 */  lw    $a1, 0x50($sp)
/* B1A5FC 800A345C 24640004 */  addiu $a0, $v1, 4
/* B1A600 800A3460 0C000697 */  jal   func_80001A5C
/* B1A604 800A3464 AFA90014 */   sw    $t1, 0x14($sp)
.L800A3468:
/* B1A608 800A3468 8FBF002C */  lw    $ra, 0x2c($sp)
/* B1A60C 800A346C 27BD0040 */  addiu $sp, $sp, 0x40
/* B1A610 800A3470 03E00008 */  jr    $ra
/* B1A614 800A3474 00000000 */   nop   

glabel func_800A3478
/* B1A618 800A3478 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A61C 800A347C 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A620 800A3480 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A624 800A3484 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A628 800A3488 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A62C 800A348C 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A630 800A3490 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A634 800A3494 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A638 800A3498 00812021 */  addu  $a0, $a0, $at
/* B1A63C 800A349C 0C028CCD */  jal   func_800A3334
/* B1A640 800A34A0 24050001 */   li    $a1, 1
/* B1A644 800A34A4 10400009 */  beqz  $v0, .L800A34CC
/* B1A648 800A34A8 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A64C 800A34AC 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A650 800A34B0 A04E0004 */  sb    $t6, 4($v0)
/* B1A654 800A34B4 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A658 800A34B8 A04F0005 */  sb    $t7, 5($v0)
/* B1A65C 800A34BC 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A660 800A34C0 AC580008 */  sw    $t8, 8($v0)
/* B1A664 800A34C4 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A668 800A34C8 AC59000C */  sw    $t9, 0xc($v0)
.L800A34CC:
/* B1A66C 800A34CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A670 800A34D0 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A674 800A34D4 03E00008 */  jr    $ra
/* B1A678 800A34D8 00000000 */   nop   

glabel func_800A34DC
/* B1A67C 800A34DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A680 800A34E0 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A684 800A34E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A688 800A34E8 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A68C 800A34EC AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A690 800A34F0 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A694 800A34F4 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A698 800A34F8 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A69C 800A34FC 00812021 */  addu  $a0, $a0, $at
/* B1A6A0 800A3500 0C028CCD */  jal   func_800A3334
/* B1A6A4 800A3504 24050002 */   li    $a1, 2
/* B1A6A8 800A3508 1040000B */  beqz  $v0, .L800A3538
/* B1A6AC 800A350C 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A6B0 800A3510 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A6B4 800A3514 A04E0004 */  sb    $t6, 4($v0)
/* B1A6B8 800A3518 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A6BC 800A351C A04F0005 */  sb    $t7, 5($v0)
/* B1A6C0 800A3520 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A6C4 800A3524 AC580008 */  sw    $t8, 8($v0)
/* B1A6C8 800A3528 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A6CC 800A352C AC59000C */  sw    $t9, 0xc($v0)
/* B1A6D0 800A3530 C7A40028 */  lwc1  $f4, 0x28($sp)
/* B1A6D4 800A3534 E4440010 */  swc1  $f4, 0x10($v0)
.L800A3538:
/* B1A6D8 800A3538 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A6DC 800A353C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A6E0 800A3540 03E00008 */  jr    $ra
/* B1A6E4 800A3544 00000000 */   nop   

/* B1A6E8 800A3548 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A6EC 800A354C 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A6F0 800A3550 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A6F4 800A3554 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A6F8 800A3558 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A6FC 800A355C 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A700 800A3560 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A704 800A3564 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A708 800A3568 00812021 */  addu  $a0, $a0, $at
/* B1A70C 800A356C 0C028CCD */  jal   func_800A3334
/* B1A710 800A3570 24050003 */   li    $a1, 3
/* B1A714 800A3574 1040000B */  beqz  $v0, .L800A35A4
/* B1A718 800A3578 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A71C 800A357C 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A720 800A3580 A04E0004 */  sb    $t6, 4($v0)
/* B1A724 800A3584 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A728 800A3588 A04F0005 */  sb    $t7, 5($v0)
/* B1A72C 800A358C 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A730 800A3590 AC580008 */  sw    $t8, 8($v0)
/* B1A734 800A3594 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A738 800A3598 AC59000C */  sw    $t9, 0xc($v0)
/* B1A73C 800A359C 8FA80028 */  lw    $t0, 0x28($sp)
/* B1A740 800A35A0 AC480010 */  sw    $t0, 0x10($v0)
.L800A35A4:
/* B1A744 800A35A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A748 800A35A8 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A74C 800A35AC 03E00008 */  jr    $ra
/* B1A750 800A35B0 00000000 */   nop   

/* B1A754 800A35B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A758 800A35B8 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A75C 800A35BC AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A760 800A35C0 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A764 800A35C4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A768 800A35C8 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A76C 800A35CC AFA60020 */  sw    $a2, 0x20($sp)
/* B1A770 800A35D0 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A774 800A35D4 00812021 */  addu  $a0, $a0, $at
/* B1A778 800A35D8 0C028CCD */  jal   func_800A3334
/* B1A77C 800A35DC 24050004 */   li    $a1, 4
/* B1A780 800A35E0 1040000B */  beqz  $v0, .L800A3610
/* B1A784 800A35E4 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A788 800A35E8 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A78C 800A35EC A04E0004 */  sb    $t6, 4($v0)
/* B1A790 800A35F0 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A794 800A35F4 A04F0005 */  sb    $t7, 5($v0)
/* B1A798 800A35F8 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A79C 800A35FC AC580008 */  sw    $t8, 8($v0)
/* B1A7A0 800A3600 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A7A4 800A3604 AC59000C */  sw    $t9, 0xc($v0)
/* B1A7A8 800A3608 8FA80028 */  lw    $t0, 0x28($sp)
/* B1A7AC 800A360C AC480010 */  sw    $t0, 0x10($v0)
.L800A3610:
/* B1A7B0 800A3610 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A7B4 800A3614 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A7B8 800A3618 03E00008 */  jr    $ra
/* B1A7BC 800A361C 00000000 */   nop   

/* B1A7C0 800A3620 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A7C4 800A3624 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A7C8 800A3628 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A7CC 800A362C AFA40018 */  sw    $a0, 0x18($sp)
/* B1A7D0 800A3630 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A7D4 800A3634 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A7D8 800A3638 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A7DC 800A363C AFA70024 */  sw    $a3, 0x24($sp)
/* B1A7E0 800A3640 00812021 */  addu  $a0, $a0, $at
/* B1A7E4 800A3644 0C028CCD */  jal   func_800A3334
/* B1A7E8 800A3648 24050005 */   li    $a1, 5
/* B1A7EC 800A364C 10400006 */  beqz  $v0, .L800A3668
/* B1A7F0 800A3650 8FAE001C */   lw    $t6, 0x1c($sp)
/* B1A7F4 800A3654 AC4E0004 */  sw    $t6, 4($v0)
/* B1A7F8 800A3658 8FAF0020 */  lw    $t7, 0x20($sp)
/* B1A7FC 800A365C AC4F0008 */  sw    $t7, 8($v0)
/* B1A800 800A3660 C7A40024 */  lwc1  $f4, 0x24($sp)
/* B1A804 800A3664 E444000C */  swc1  $f4, 0xc($v0)
.L800A3668:
/* B1A808 800A3668 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A80C 800A366C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A810 800A3670 03E00008 */  jr    $ra
/* B1A814 800A3674 00000000 */   nop   

/* B1A818 800A3678 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A81C 800A367C AFA40018 */  sw    $a0, 0x18($sp)
/* B1A820 800A3680 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A824 800A3684 24A40020 */  addiu $a0, $a1, 0x20
/* B1A828 800A3688 00002825 */  move  $a1, $zero
/* B1A82C 800A368C 0C000CA0 */  jal   osRecvMesg
/* B1A830 800A3690 24060001 */   li    $a2, 1
/* B1A834 800A3694 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A838 800A3698 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A83C 800A369C 03E00008 */  jr    $ra
/* B1A840 800A36A0 00000000 */   nop   

/* B1A844 800A36A4 AFA40000 */  sw    $a0, ($sp)
/* B1A848 800A36A8 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A84C 800A36AC 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A850 800A36B0 90AE0000 */  lbu   $t6, ($a1)
/* B1A854 800A36B4 00A01025 */  move  $v0, $a1
/* B1A858 800A36B8 01CFC024 */  and   $t8, $t6, $t7
/* B1A85C 800A36BC 17000013 */  bnez  $t8, .L800A370C
/* B1A860 800A36C0 00000000 */   nop   
/* B1A864 800A36C4 90B90001 */  lbu   $t9, 1($a1)
/* B1A868 800A36C8 8CA30004 */  lw    $v1, 4($a1)
/* B1A86C 800A36CC 8CA40008 */  lw    $a0, 8($a1)
/* B1A870 800A36D0 1B20000E */  blez  $t9, .L800A370C
/* B1A874 800A36D4 00003025 */   move  $a2, $zero
/* B1A878 800A36D8 88890000 */  lwl   $t1, ($a0)
.L800A36DC:
/* B1A87C 800A36DC 98890003 */  lwr   $t1, 3($a0)
/* B1A880 800A36E0 24C60001 */  addiu $a2, $a2, 1
/* B1A884 800A36E4 24630006 */  addiu $v1, $v1, 6
/* B1A888 800A36E8 A869FFFA */  swl   $t1, -6($v1)
/* B1A88C 800A36EC B869FFFD */  swr   $t1, -3($v1)
/* B1A890 800A36F0 94890004 */  lhu   $t1, 4($a0)
/* B1A894 800A36F4 24840006 */  addiu $a0, $a0, 6
/* B1A898 800A36F8 A469FFFE */  sh    $t1, -2($v1)
/* B1A89C 800A36FC 904A0001 */  lbu   $t2, 1($v0)
/* B1A8A0 800A3700 00CA082A */  slt   $at, $a2, $t2
/* B1A8A4 800A3704 5420FFF5 */  bnezl $at, .L800A36DC
/* B1A8A8 800A3708 88890000 */   lwl   $t1, ($a0)
.L800A370C:
/* B1A8AC 800A370C 03E00008 */  jr    $ra
/* B1A8B0 800A3710 00000000 */   nop   

/* B1A8B4 800A3714 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1A8B8 800A3718 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1A8BC 800A371C AFB00020 */  sw    $s0, 0x20($sp)
/* B1A8C0 800A3720 AFA40028 */  sw    $a0, 0x28($sp)
/* B1A8C4 800A3724 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A8C8 800A3728 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A8CC 800A372C 90AE0000 */  lbu   $t6, ($a1)
/* B1A8D0 800A3730 00A08025 */  move  $s0, $a1
/* B1A8D4 800A3734 01CFC024 */  and   $t8, $t6, $t7
/* B1A8D8 800A3738 57000009 */  bnezl $t8, .L800A3760
/* B1A8DC 800A373C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B1A8E0 800A3740 90A40001 */  lbu   $a0, 1($a1)
/* B1A8E4 800A3744 8CA50004 */  lw    $a1, 4($a1)
/* B1A8E8 800A3748 C604000C */  lwc1  $f4, 0xc($s0)
/* B1A8EC 800A374C 8E070008 */  lw    $a3, 8($s0)
/* B1A8F0 800A3750 00A03025 */  move  $a2, $a1
/* B1A8F4 800A3754 0C028B9C */  jal   func_800A2E70
/* B1A8F8 800A3758 E7A40010 */   swc1  $f4, 0x10($sp)
/* B1A8FC 800A375C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A3760:
/* B1A900 800A3760 8FB00020 */  lw    $s0, 0x20($sp)
/* B1A904 800A3764 27BD0028 */  addiu $sp, $sp, 0x28
/* B1A908 800A3768 03E00008 */  jr    $ra
/* B1A90C 800A376C 00000000 */   nop   

/* B1A910 800A3770 AFA40000 */  sw    $a0, ($sp)
/* B1A914 800A3774 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A918 800A3778 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A91C 800A377C 90AE0000 */  lbu   $t6, ($a1)
/* B1A920 800A3780 00A01025 */  move  $v0, $a1
/* B1A924 800A3784 00003825 */  move  $a3, $zero
/* B1A928 800A3788 01CFC024 */  and   $t8, $t6, $t7
/* B1A92C 800A378C 17000016 */  bnez  $t8, .L800A37E8
/* B1A930 800A3790 00000000 */   nop   
/* B1A934 800A3794 90B90001 */  lbu   $t9, 1($a1)
/* B1A938 800A3798 8CA30004 */  lw    $v1, 4($a1)
/* B1A93C 800A379C 8CA40008 */  lw    $a0, 8($a1)
/* B1A940 800A37A0 1B200011 */  blez  $t9, .L800A37E8
/* B1A944 800A37A4 8CA6000C */   lw    $a2, 0xc($a1)
.L800A37A8:
/* B1A948 800A37A8 90C50000 */  lbu   $a1, ($a2)
/* B1A94C 800A37AC 24C60001 */  addiu $a2, $a2, 1
/* B1A950 800A37B0 50A00008 */  beql  $a1, $zero, .L800A37D4
/* B1A954 800A37B4 904A0001 */   lbu   $t2, 1($v0)
/* B1A958 800A37B8 88890000 */  lwl   $t1, ($a0)
/* B1A95C 800A37BC 98890003 */  lwr   $t1, 3($a0)
/* B1A960 800A37C0 A8690000 */  swl   $t1, ($v1)
/* B1A964 800A37C4 B8690003 */  swr   $t1, 3($v1)
/* B1A968 800A37C8 94890004 */  lhu   $t1, 4($a0)
/* B1A96C 800A37CC A4690004 */  sh    $t1, 4($v1)
/* B1A970 800A37D0 904A0001 */  lbu   $t2, 1($v0)
.L800A37D4:
/* B1A974 800A37D4 24E70001 */  addiu $a3, $a3, 1
/* B1A978 800A37D8 24630006 */  addiu $v1, $v1, 6
/* B1A97C 800A37DC 00EA082A */  slt   $at, $a3, $t2
/* B1A980 800A37E0 1420FFF1 */  bnez  $at, .L800A37A8
/* B1A984 800A37E4 24840006 */   addiu $a0, $a0, 6
.L800A37E8:
/* B1A988 800A37E8 03E00008 */  jr    $ra
/* B1A98C 800A37EC 00000000 */   nop   

/* B1A990 800A37F0 AFA40000 */  sw    $a0, ($sp)
/* B1A994 800A37F4 3C0F8013 */  lui   $t7, %hi(D_8012A480) # $t7, 0x8013
/* B1A998 800A37F8 8DEFA480 */  lw    $t7, %lo(D_8012A480)($t7)
/* B1A99C 800A37FC 90AE0000 */  lbu   $t6, ($a1)
/* B1A9A0 800A3800 00A01025 */  move  $v0, $a1
/* B1A9A4 800A3804 00003825 */  move  $a3, $zero
/* B1A9A8 800A3808 01CFC024 */  and   $t8, $t6, $t7
/* B1A9AC 800A380C 17000017 */  bnez  $t8, .L800A386C
/* B1A9B0 800A3810 00000000 */   nop   
/* B1A9B4 800A3814 90B90001 */  lbu   $t9, 1($a1)
/* B1A9B8 800A3818 8CA30004 */  lw    $v1, 4($a1)
/* B1A9BC 800A381C 8CA40008 */  lw    $a0, 8($a1)
/* B1A9C0 800A3820 1B200012 */  blez  $t9, .L800A386C
/* B1A9C4 800A3824 8CA6000C */   lw    $a2, 0xc($a1)
.L800A3828:
/* B1A9C8 800A3828 90C50000 */  lbu   $a1, ($a2)
/* B1A9CC 800A382C 24C60001 */  addiu $a2, $a2, 1
/* B1A9D0 800A3830 2CA50001 */  sltiu $a1, $a1, 1
/* B1A9D4 800A3834 50A00008 */  beql  $a1, $zero, .L800A3858
/* B1A9D8 800A3838 904A0001 */   lbu   $t2, 1($v0)
/* B1A9DC 800A383C 88890000 */  lwl   $t1, ($a0)
/* B1A9E0 800A3840 98890003 */  lwr   $t1, 3($a0)
/* B1A9E4 800A3844 A8690000 */  swl   $t1, ($v1)
/* B1A9E8 800A3848 B8690003 */  swr   $t1, 3($v1)
/* B1A9EC 800A384C 94890004 */  lhu   $t1, 4($a0)
/* B1A9F0 800A3850 A4690004 */  sh    $t1, 4($v1)
/* B1A9F4 800A3854 904A0001 */  lbu   $t2, 1($v0)
.L800A3858:
/* B1A9F8 800A3858 24E70001 */  addiu $a3, $a3, 1
/* B1A9FC 800A385C 24630006 */  addiu $v1, $v1, 6
/* B1AA00 800A3860 00EA082A */  slt   $at, $a3, $t2
/* B1AA04 800A3864 1420FFF0 */  bnez  $at, .L800A3828
/* B1AA08 800A3868 24840006 */   addiu $a0, $a0, 6
.L800A386C:
/* B1AA0C 800A386C 03E00008 */  jr    $ra
/* B1AA10 800A3870 00000000 */   nop   

/* B1AA14 800A3874 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1AA18 800A3878 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AA1C 800A387C AFA40030 */  sw    $a0, 0x30($sp)
/* B1AA20 800A3880 8CA20000 */  lw    $v0, ($a1)
/* B1AA24 800A3884 8CA40004 */  lw    $a0, 4($a1)
/* B1AA28 800A3888 00A03825 */  move  $a3, $a1
/* B1AA2C 800A388C 844600B6 */  lh    $a2, 0xb6($v0)
/* B1AA30 800A3890 AFA70034 */  sw    $a3, 0x34($sp)
/* B1AA34 800A3894 27A5001C */  addiu $a1, $sp, 0x1c
/* B1AA38 800A3898 0C02953F */  jal   func_800A54FC
/* B1AA3C 800A389C AFA20028 */   sw    $v0, 0x28($sp)
/* B1AA40 800A38A0 8FA20028 */  lw    $v0, 0x28($sp)
/* B1AA44 800A38A4 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* B1AA48 800A38A8 8FA70034 */  lw    $a3, 0x34($sp)
/* B1AA4C 800A38AC C4460050 */  lwc1  $f6, 0x50($v0)
/* B1AA50 800A38B0 C44A0024 */  lwc1  $f10, 0x24($v0)
/* B1AA54 800A38B4 46062202 */  mul.s $f8, $f4, $f6
/* B1AA58 800A38B8 C4440054 */  lwc1  $f4, 0x54($v0)
/* B1AA5C 800A38BC 46085400 */  add.s $f16, $f10, $f8
/* B1AA60 800A38C0 E4500024 */  swc1  $f16, 0x24($v0)
/* B1AA64 800A38C4 C7B20020 */  lwc1  $f18, 0x20($sp)
/* B1AA68 800A38C8 C4EA0008 */  lwc1  $f10, 8($a3)
/* B1AA6C 800A38CC C4500028 */  lwc1  $f16, 0x28($v0)
/* B1AA70 800A38D0 46049182 */  mul.s $f6, $f18, $f4
/* B1AA74 800A38D4 00000000 */  nop   
/* B1AA78 800A38D8 460A3202 */  mul.s $f8, $f6, $f10
/* B1AA7C 800A38DC C4460058 */  lwc1  $f6, 0x58($v0)
/* B1AA80 800A38E0 46088480 */  add.s $f18, $f16, $f8
/* B1AA84 800A38E4 C450002C */  lwc1  $f16, 0x2c($v0)
/* B1AA88 800A38E8 E4520028 */  swc1  $f18, 0x28($v0)
/* B1AA8C 800A38EC C7A40024 */  lwc1  $f4, 0x24($sp)
/* B1AA90 800A38F0 46062282 */  mul.s $f10, $f4, $f6
/* B1AA94 800A38F4 460A8200 */  add.s $f8, $f16, $f10
/* B1AA98 800A38F8 E448002C */  swc1  $f8, 0x2c($v0)
/* B1AA9C 800A38FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1AAA0 800A3900 27BD0030 */  addiu $sp, $sp, 0x30
/* B1AAA4 800A3904 03E00008 */  jr    $ra
/* B1AAA8 800A3908 00000000 */   nop   

glabel func_800A390C
/* B1AAAC 800A390C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1AAB0 800A3910 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1AAB4 800A3914 AFB30020 */  sw    $s3, 0x20($sp)
/* B1AAB8 800A3918 AFB2001C */  sw    $s2, 0x1c($sp)
/* B1AABC 800A391C AFB10018 */  sw    $s1, 0x18($sp)
/* B1AAC0 800A3920 AFB00014 */  sw    $s0, 0x14($sp)
/* B1AAC4 800A3924 84AE0000 */  lh    $t6, ($a1)
/* B1AAC8 800A3928 00A08825 */  move  $s1, $a1
/* B1AACC 800A392C 00809025 */  move  $s2, $a0
/* B1AAD0 800A3930 11C00012 */  beqz  $t6, .L800A397C
/* B1AAD4 800A3934 24B00004 */   addiu $s0, $a1, 4
/* B1AAD8 800A3938 3C138013 */  lui   $s3, %hi(D_8012A484) # $s3, 0x8013
/* B1AADC 800A393C 2673A484 */  addiu $s3, %lo(D_8012A484) # addiu $s3, $s3, -0x5b7c
/* B1AAE0 800A3940 920F0000 */  lbu   $t7, ($s0)
.L800A3944:
/* B1AAE4 800A3944 02402025 */  move  $a0, $s2
/* B1AAE8 800A3948 26050004 */  addiu $a1, $s0, 4
/* B1AAEC 800A394C 000FC080 */  sll   $t8, $t7, 2
/* B1AAF0 800A3950 0278C821 */  addu  $t9, $s3, $t8
/* B1AAF4 800A3954 8F390000 */  lw    $t9, ($t9)
/* B1AAF8 800A3958 0320F809 */  jalr  $t9
/* B1AAFC 800A395C 00000000 */  nop   
/* B1AB00 800A3960 86280000 */  lh    $t0, ($s1)
/* B1AB04 800A3964 26100040 */  addiu $s0, $s0, 0x40
/* B1AB08 800A3968 2509FFFF */  addiu $t1, $t0, -1
/* B1AB0C 800A396C A6290000 */  sh    $t1, ($s1)
/* B1AB10 800A3970 862A0000 */  lh    $t2, ($s1)
/* B1AB14 800A3974 5540FFF3 */  bnezl $t2, .L800A3944
/* B1AB18 800A3978 920F0000 */   lbu   $t7, ($s0)
.L800A397C:
/* B1AB1C 800A397C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1AB20 800A3980 240B0001 */  li    $t3, 1
/* B1AB24 800A3984 3C018016 */  lui   $at, %hi(D_801600B0) # $at, 0x8016
/* B1AB28 800A3988 AC2B00B0 */  sw    $t3, %lo(D_801600B0)($at)
/* B1AB2C 800A398C 3C018013 */  lui   $at, %hi(D_8012A480) # $at, 0x8013
/* B1AB30 800A3990 8FB00014 */  lw    $s0, 0x14($sp)
/* B1AB34 800A3994 8FB10018 */  lw    $s1, 0x18($sp)
/* B1AB38 800A3998 8FB2001C */  lw    $s2, 0x1c($sp)
/* B1AB3C 800A399C 8FB30020 */  lw    $s3, 0x20($sp)
/* B1AB40 800A39A0 AC20A480 */  sw    $zero, %lo(D_8012A480)($at)
/* B1AB44 800A39A4 03E00008 */  jr    $ra
/* B1AB48 800A39A8 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800A39AC
/* B1AB4C 800A39AC 00067100 */  sll   $t6, $a2, 4
/* B1AB50 800A39B0 3C098016 */  lui   $t1, %hi(D_80166FA8) # $t1, 0x8016
/* B1AB54 800A39B4 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1AB58 800A39B8 25296FA8 */  addiu $t1, %lo(D_80166FA8) # addiu $t1, $t1, 0x6fa8
/* B1AB5C 800A39BC 000FC080 */  sll   $t8, $t7, 2
/* B1AB60 800A39C0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B1AB64 800A39C4 0138C821 */  addu  $t9, $t1, $t8
/* B1AB68 800A39C8 8F2C0000 */  lw    $t4, ($t9)
/* B1AB6C 800A39CC 3C0A00FF */  lui   $t2, (0x00FFFFFF >> 16) # lui $t2, 0xff
/* B1AB70 800A39D0 354AFFFF */  ori   $t2, (0x00FFFFFF & 0xFFFF) # ori $t2, $t2, 0xffff
/* B1AB74 800A39D4 00CA6824 */  and   $t5, $a2, $t2
/* B1AB78 800A39D8 8FAF0050 */  lw    $t7, 0x50($sp)
/* B1AB7C 800A39DC 3C0B8000 */  lui   $t3, 0x8000
/* B1AB80 800A39E0 018D7021 */  addu  $t6, $t4, $t5
/* B1AB84 800A39E4 AFBF002C */  sw    $ra, 0x2c($sp)
/* B1AB88 800A39E8 AFB00028 */  sw    $s0, 0x28($sp)
/* B1AB8C 800A39EC AFA40040 */  sw    $a0, 0x40($sp)
/* B1AB90 800A39F0 AFA7004C */  sw    $a3, 0x4c($sp)
/* B1AB94 800A39F4 01CB4021 */  addu  $t0, $t6, $t3
/* B1AB98 800A39F8 91020004 */  lbu   $v0, 4($t0)
/* B1AB9C 800A39FC A0AF0034 */  sb    $t7, 0x34($a1)
/* B1ABA0 800A3A00 8FB80050 */  lw    $t8, 0x50($sp)
/* B1ABA4 800A3A04 8FAC0050 */  lw    $t4, 0x50($sp)
/* B1ABA8 800A3A08 00A08025 */  move  $s0, $a1
/* B1ABAC 800A3A0C 33190002 */  andi  $t9, $t8, 2
/* B1ABB0 800A3A10 13200003 */  beqz  $t9, .L800A3A20
/* B1ABB4 800A3A14 318D0001 */   andi  $t5, $t4, 1
/* B1ABB8 800A3A18 10000002 */  b     .L800A3A24
/* B1ABBC 800A3A1C 00401825 */   move  $v1, $v0
.L800A3A20:
/* B1ABC0 800A3A20 24030001 */  li    $v1, 1
.L800A3A24:
/* B1ABC4 800A3A24 11A00002 */  beqz  $t5, .L800A3A30
/* B1ABC8 800A3A28 8FAE0050 */   lw    $t6, 0x50($sp)
/* B1ABCC 800A3A2C 00621821 */  addu  $v1, $v1, $v0
.L800A3A30:
/* B1ABD0 800A3A30 31CF0004 */  andi  $t7, $t6, 4
/* B1ABD4 800A3A34 11E00002 */  beqz  $t7, .L800A3A40
/* B1ABD8 800A3A38 2406093C */   li    $a2, 2364
/* B1ABDC 800A3A3C 00621821 */  addu  $v1, $v1, $v0
.L800A3A40:
/* B1ABE0 800A3A40 A2030000 */  sb    $v1, ($s0)
/* B1ABE4 800A3A44 91180008 */  lbu   $t8, 8($t0)
/* B1ABE8 800A3A48 00032880 */  sll   $a1, $v1, 2
/* B1ABEC 800A3A4C 00A32823 */  subu  $a1, $a1, $v1
/* B1ABF0 800A3A50 A2180002 */  sb    $t8, 2($s0)
/* B1ABF4 800A3A54 8D020000 */  lw    $v0, ($t0)
/* B1ABF8 800A3A58 00052840 */  sll   $a1, $a1, 1
/* B1ABFC 800A3A5C 00A02025 */  move  $a0, $a1
/* B1AC00 800A3A60 0002C900 */  sll   $t9, $v0, 4
/* B1AC04 800A3A64 00196702 */  srl   $t4, $t9, 0x1c
/* B1AC08 800A3A68 000C6880 */  sll   $t5, $t4, 2
/* B1AC0C 800A3A6C 012D7021 */  addu  $t6, $t1, $t5
/* B1AC10 800A3A70 8DCF0000 */  lw    $t7, ($t6)
/* B1AC14 800A3A74 004AC024 */  and   $t8, $v0, $t2
/* B1AC18 800A3A78 01F8C821 */  addu  $t9, $t7, $t8
/* B1AC1C 800A3A7C 032B6021 */  addu  $t4, $t9, $t3
/* B1AC20 800A3A80 AE0C0004 */  sw    $t4, 4($s0)
/* B1AC24 800A3A84 8FAD0050 */  lw    $t5, 0x50($sp)
/* B1AC28 800A3A88 8FAF0054 */  lw    $t7, 0x54($sp)
/* B1AC2C 800A3A8C 8FB8005C */  lw    $t8, 0x5c($sp)
/* B1AC30 800A3A90 31AE0008 */  andi  $t6, $t5, 8
/* B1AC34 800A3A94 11C00002 */  beqz  $t6, .L800A3AA0
/* B1AC38 800A3A98 00000000 */   nop   
/* B1AC3C 800A3A9C 24A40002 */  addiu $a0, $a1, 2
.L800A3AA0:
/* B1AC40 800A3AA0 15E0000C */  bnez  $t7, .L800A3AD4
/* B1AC44 800A3AA4 3C058014 */   lui   $a1, %hi(D_801403CC) # $a1, 0x8014
/* B1AC48 800A3AA8 24A503CC */  addiu $a1, %lo(D_801403CC) # addiu $a1, $a1, 0x3cc
/* B1AC4C 800A3AAC 0C01EBB8 */  jal   func_8007AEE0
/* B1AC50 800A3AB0 AFA40030 */   sw    $a0, 0x30($sp)
/* B1AC54 800A3AB4 8FA40030 */  lw    $a0, 0x30($sp)
/* B1AC58 800A3AB8 3C058014 */  lui   $a1, %hi(D_801403E0) # $a1, 0x8014
/* B1AC5C 800A3ABC AE020020 */  sw    $v0, 0x20($s0)
/* B1AC60 800A3AC0 24A503E0 */  addiu $a1, %lo(D_801403E0) # addiu $a1, $a1, 0x3e0
/* B1AC64 800A3AC4 0C01EBB8 */  jal   func_8007AEE0
/* B1AC68 800A3AC8 2406093D */   li    $a2, 2365
/* B1AC6C 800A3ACC 10000011 */  b     .L800A3B14
/* B1AC70 800A3AD0 AE020024 */   sw    $v0, 0x24($s0)
.L800A3AD4:
/* B1AC74 800A3AD4 13030006 */  beq   $t8, $v1, .L800A3AF0
/* B1AC78 800A3AD8 3C048014 */   lui   $a0, %hi(D_801403F4) # $a0, 0x8014
/* B1AC7C 800A3ADC 3C058014 */  lui   $a1, %hi(D_80140410) # $a1, 0x8014
/* B1AC80 800A3AE0 24A50410 */  addiu $a1, %lo(D_80140410) # addiu $a1, $a1, 0x410
/* B1AC84 800A3AE4 248403F4 */  addiu $a0, %lo(D_801403F4) # addiu $a0, $a0, 0x3f4
/* B1AC88 800A3AE8 0C0007FC */  jal   AssertMessage
/* B1AC8C 800A3AEC 24060941 */   li    $a2, 2369
.L800A3AF0:
/* B1AC90 800A3AF0 8FB90054 */  lw    $t9, 0x54($sp)
/* B1AC94 800A3AF4 2402FFF0 */  li    $v0, -16
/* B1AC98 800A3AF8 272C000F */  addiu $t4, $t9, 0xf
/* B1AC9C 800A3AFC 01826824 */  and   $t5, $t4, $v0
/* B1ACA0 800A3B00 AE0D0020 */  sw    $t5, 0x20($s0)
/* B1ACA4 800A3B04 8FAE0058 */  lw    $t6, 0x58($sp)
/* B1ACA8 800A3B08 25CF000F */  addiu $t7, $t6, 0xf
/* B1ACAC 800A3B0C 01E2C024 */  and   $t8, $t7, $v0
/* B1ACB0 800A3B10 AE180024 */  sw    $t8, 0x24($s0)
.L800A3B14:
/* B1ACB4 800A3B14 8E190020 */  lw    $t9, 0x20($s0)
/* B1ACB8 800A3B18 3C048014 */  li    $a0, 0x80140000 # 0.000000
/* B1ACBC 800A3B1C 13200004 */  beqz  $t9, .L800A3B30
/* B1ACC0 800A3B20 00000000 */   nop   
/* B1ACC4 800A3B24 8E0C0024 */  lw    $t4, 0x24($s0)
/* B1ACC8 800A3B28 5580000A */  bnezl $t4, .L800A3B54
/* B1ACCC 800A3B2C 44800000 */   mtc1  $zero, $f0
.L800A3B30:
/* B1ACD0 800A3B30 0C00084C */  jal   DebugMessage
/* B1ACD4 800A3B34 24840424 */   addiu $a0, $a0, 0x424
/* B1ACD8 800A3B38 3C048014 */  lui   $a0, %hi(D_8014042C) # $a0, 0x8014
/* B1ACDC 800A3B3C 0C00084C */  jal   DebugMessage
/* B1ACE0 800A3B40 2484042C */   addiu $a0, %lo(D_8014042C) # addiu $a0, $a0, 0x42c
/* B1ACE4 800A3B44 3C048014 */  li    $a0, 0x80140000 # 0.000000
/* B1ACE8 800A3B48 0C00084C */  jal   DebugMessage
/* B1ACEC 800A3B4C 24840460 */   addiu $a0, %lo(D_80140460) # addiu $a0, $a0, 0x460
/* B1ACF0 800A3B50 44800000 */  mtc1  $zero, $f0
.L800A3B54:
/* B1ACF4 800A3B54 8FA40040 */  lw    $a0, 0x40($sp)
/* B1ACF8 800A3B58 02002825 */  move  $a1, $s0
/* B1ACFC 800A3B5C 8FA6004C */  lw    $a2, 0x4c($sp)
/* B1AD00 800A3B60 3C073F80 */  lui   $a3, 0x3f80
/* B1AD04 800A3B64 AFA00018 */  sw    $zero, 0x18($sp)
/* B1AD08 800A3B68 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1AD0C 800A3B6C E7A00014 */  swc1  $f0, 0x14($sp)
/* B1AD10 800A3B70 0C028FC2 */  jal   func_800A3F08
/* B1AD14 800A3B74 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1AD18 800A3B78 8FBF002C */  lw    $ra, 0x2c($sp)
/* B1AD1C 800A3B7C 8FB00028 */  lw    $s0, 0x28($sp)
/* B1AD20 800A3B80 27BD0040 */  addiu $sp, $sp, 0x40
/* B1AD24 800A3B84 03E00008 */  jr    $ra
/* B1AD28 800A3B88 00000000 */   nop   

glabel func_800A3B8C
/* B1AD2C 800A3B8C 908E0001 */  lbu   $t6, 1($a0)
/* B1AD30 800A3B90 3C18800A */  li    $t8, 0x800A0000 # 0.000000
/* B1AD34 800A3B94 44802000 */  mtc1  $zero, $f4
/* B1AD38 800A3B98 29C10002 */  slti  $at, $t6, 2
/* B1AD3C 800A3B9C 10200005 */  beqz  $at, .L800A3BB4
/* B1AD40 800A3BA0 27183E0C */   addiu $t8, $t8, 0x3e0c
/* B1AD44 800A3BA4 3C0F800A */  lui   $t7, %hi(func_800A3D70) # $t7, 0x800a
/* B1AD48 800A3BA8 25EF3D70 */  addiu $t7, %lo(func_800A3D70) # addiu $t7, $t7, 0x3d70
/* B1AD4C 800A3BAC 10000002 */  b     .L800A3BB8
/* B1AD50 800A3BB0 AC8F0030 */   sw    $t7, 0x30($a0)
.L800A3BB4:
/* B1AD54 800A3BB4 AC980030 */  sw    $t8, 0x30($a0)
.L800A3BB8:
/* B1AD58 800A3BB8 03E00008 */  jr    $ra
/* B1AD5C 800A3BBC E4840028 */   swc1  $f4, 0x28($a0)

/* B1AD60 800A3BC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1AD64 800A3BC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AD68 800A3BC8 8CB90030 */  lw    $t9, 0x30($a1)
/* B1AD6C 800A3BCC 0320F809 */  jalr  $t9
/* B1AD70 800A3BD0 00000000 */  nop   
/* B1AD74 800A3BD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1AD78 800A3BD8 27BD0018 */  addiu $sp, $sp, 0x18
/* B1AD7C 800A3BDC 03E00008 */  jr    $ra
/* B1AD80 800A3BE0 00000000 */   nop   

glabel func_800A3BE4
/* B1AD84 800A3BE4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1AD88 800A3BE8 3C0E8016 */  li    $t6, 0x80160000 # 0.000000
/* B1AD8C 800A3BEC 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1AD90 800A3BF0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1AD94 800A3BF4 AFB00020 */  sw    $s0, 0x20($sp)
/* B1AD98 800A3BF8 AFA40030 */  sw    $a0, 0x30($sp)
/* B1AD9C 800A3BFC 85CF0110 */  lh    $t7, 0x110($t6)
/* B1ADA0 800A3C00 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1ADA4 800A3C04 44814000 */  mtc1  $at, $f8
/* B1ADA8 800A3C08 448F2000 */  mtc1  $t7, $f4
/* B1ADAC 800A3C0C C4AA002C */  lwc1  $f10, 0x2c($a1)
/* B1ADB0 800A3C10 C4A00028 */  lwc1  $f0, 0x28($a1)
/* B1ADB4 800A3C14 468021A0 */  cvt.s.w $f6, $f4
/* B1ADB8 800A3C18 44802000 */  mtc1  $zero, $f4
/* B1ADBC 800A3C1C 46000306 */  mov.s $f12, $f0
/* B1ADC0 800A3C20 00A08025 */  move  $s0, $a1
/* B1ADC4 800A3C24 00A02025 */  move  $a0, $a1
/* B1ADC8 800A3C28 46083082 */  mul.s $f2, $f6, $f8
/* B1ADCC 800A3C2C 00000000 */  nop   
/* B1ADD0 800A3C30 46025402 */  mul.s $f16, $f10, $f2
/* B1ADD4 800A3C34 46100481 */  sub.s $f18, $f0, $f16
/* B1ADD8 800A3C38 E4B20028 */  swc1  $f18, 0x28($a1)
/* B1ADDC 800A3C3C C4A00028 */  lwc1  $f0, 0x28($a1)
/* B1ADE0 800A3C40 4604003E */  c.le.s $f0, $f4
/* B1ADE4 800A3C44 00000000 */  nop   
/* B1ADE8 800A3C48 45000005 */  bc1f  .L800A3C60
/* B1ADEC 800A3C4C 00000000 */   nop   
/* B1ADF0 800A3C50 0C028EE3 */  jal   func_800A3B8C
/* B1ADF4 800A3C54 E7AC002C */   swc1  $f12, 0x2c($sp)
/* B1ADF8 800A3C58 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* B1ADFC 800A3C5C C6000028 */  lwc1  $f0, 0x28($s0)
.L800A3C60:
/* B1AE00 800A3C60 460C0203 */  div.s $f8, $f0, $f12
/* B1AE04 800A3C64 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1AE08 800A3C68 44813000 */  mtc1  $at, $f6
/* B1AE0C 800A3C6C 92050000 */  lbu   $a1, ($s0)
/* B1AE10 800A3C70 8E060020 */  lw    $a2, 0x20($s0)
/* B1AE14 800A3C74 8E070024 */  lw    $a3, 0x24($s0)
/* B1AE18 800A3C78 8FA40030 */  lw    $a0, 0x30($sp)
/* B1AE1C 800A3C7C 46083281 */  sub.s $f10, $f6, $f8
/* B1AE20 800A3C80 0C028D37 */  jal   func_800A34DC
/* B1AE24 800A3C84 E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1AE28 800A3C88 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1AE2C 800A3C8C 8FB00020 */  lw    $s0, 0x20($sp)
/* B1AE30 800A3C90 27BD0030 */  addiu $sp, $sp, 0x30
/* B1AE34 800A3C94 03E00008 */  jr    $ra
/* B1AE38 800A3C98 00001025 */   move  $v0, $zero

glabel func_800A3C9C
/* B1AE3C 800A3C9C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1AE40 800A3CA0 AFB00020 */  sw    $s0, 0x20($sp)
/* B1AE44 800A3CA4 00A08025 */  move  $s0, $a1
/* B1AE48 800A3CA8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1AE4C 800A3CAC AFA40028 */  sw    $a0, 0x28($sp)
/* B1AE50 800A3CB0 C6040018 */  lwc1  $f4, 0x18($s0)
/* B1AE54 800A3CB4 8E0F0020 */  lw    $t7, 0x20($s0)
/* B1AE58 800A3CB8 92070000 */  lbu   $a3, ($s0)
/* B1AE5C 800A3CBC 4600218D */  trunc.w.s $f6, $f4
/* B1AE60 800A3CC0 8CA50008 */  lw    $a1, 8($a1)
/* B1AE64 800A3CC4 AFAF0010 */  sw    $t7, 0x10($sp)
/* B1AE68 800A3CC8 44063000 */  mfc1  $a2, $f6
/* B1AE6C 800A3CCC 0C028CDB */  jal   func_800A336C
/* B1AE70 800A3CD0 00000000 */   nop   
/* B1AE74 800A3CD4 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1AE78 800A3CD8 44804000 */  mtc1  $zero, $f8
/* B1AE7C 800A3CDC 3C188016 */  li    $t8, 0x80160000 # 0.000000
/* B1AE80 800A3CE0 46004032 */  c.eq.s $f8, $f0
/* B1AE84 800A3CE4 00000000 */  nop   
/* B1AE88 800A3CE8 4503001D */  bc1tl .L800A3D60
/* B1AE8C 800A3CEC 8FBF0024 */   lw    $ra, 0x24($sp)
/* B1AE90 800A3CF0 8F18FA90 */  lw    $t8, %lo(D_8015FA90)($t8)
/* B1AE94 800A3CF4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1AE98 800A3CF8 44819000 */  mtc1  $at, $f18
/* B1AE9C 800A3CFC 87190110 */  lh    $t9, 0x110($t8)
/* B1AEA0 800A3D00 C604002C */  lwc1  $f4, 0x2c($s0)
/* B1AEA4 800A3D04 44806000 */  mtc1  $zero, $f12
/* B1AEA8 800A3D08 44995000 */  mtc1  $t9, $f10
/* B1AEAC 800A3D0C 00000000 */  nop   
/* B1AEB0 800A3D10 46805420 */  cvt.s.w $f16, $f10
/* B1AEB4 800A3D14 46128082 */  mul.s $f2, $f16, $f18
/* B1AEB8 800A3D18 00000000 */  nop   
/* B1AEBC 800A3D1C 46022182 */  mul.s $f6, $f4, $f2
/* B1AEC0 800A3D20 46060201 */  sub.s $f8, $f0, $f6
/* B1AEC4 800A3D24 E6080028 */  swc1  $f8, 0x28($s0)
/* B1AEC8 800A3D28 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1AECC 800A3D2C 8FA40028 */  lw    $a0, 0x28($sp)
/* B1AED0 800A3D30 460C003E */  c.le.s $f0, $f12
/* B1AED4 800A3D34 00000000 */  nop   
/* B1AED8 800A3D38 45000003 */  bc1f  .L800A3D48
/* B1AEDC 800A3D3C 00000000 */   nop   
/* B1AEE0 800A3D40 10000006 */  b     .L800A3D5C
/* B1AEE4 800A3D44 E60C0028 */   swc1  $f12, 0x28($s0)
.L800A3D48:
/* B1AEE8 800A3D48 92050000 */  lbu   $a1, ($s0)
/* B1AEEC 800A3D4C 8E060020 */  lw    $a2, 0x20($s0)
/* B1AEF0 800A3D50 8E070024 */  lw    $a3, 0x24($s0)
/* B1AEF4 800A3D54 0C028D37 */  jal   func_800A34DC
/* B1AEF8 800A3D58 E7A00010 */   swc1  $f0, 0x10($sp)
.L800A3D5C:
/* B1AEFC 800A3D5C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A3D60:
/* B1AF00 800A3D60 8FB00020 */  lw    $s0, 0x20($sp)
/* B1AF04 800A3D64 27BD0028 */  addiu $sp, $sp, 0x28
/* B1AF08 800A3D68 03E00008 */  jr    $ra
/* B1AF0C 800A3D6C 00000000 */   nop   

glabel func_800A3D70
/* B1AF10 800A3D70 3C0E8016 */  li    $t6, 0x80160000 # 0.000000
/* B1AF14 800A3D74 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1AF18 800A3D78 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1AF1C 800A3D7C AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AF20 800A3D80 85CF0110 */  lh    $t7, 0x110($t6)
/* B1AF24 800A3D84 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1AF28 800A3D88 44814000 */  mtc1  $at, $f8
/* B1AF2C 800A3D8C 448F2000 */  mtc1  $t7, $f4
/* B1AF30 800A3D90 C4B0001C */  lwc1  $f16, 0x1c($a1)
/* B1AF34 800A3D94 C4AA0018 */  lwc1  $f10, 0x18($a1)
/* B1AF38 800A3D98 468021A0 */  cvt.s.w $f6, $f4
/* B1AF3C 800A3D9C 46083082 */  mul.s $f2, $f6, $f8
/* B1AF40 800A3DA0 44803000 */  mtc1  $zero, $f6
/* B1AF44 800A3DA4 46028482 */  mul.s $f18, $f16, $f2
/* B1AF48 800A3DA8 46125100 */  add.s $f4, $f10, $f18
/* B1AF4C 800A3DAC E4A40018 */  swc1  $f4, 0x18($a1)
/* B1AF50 800A3DB0 C4A00018 */  lwc1  $f0, 0x18($a1)
/* B1AF54 800A3DB4 4606003C */  c.lt.s $f0, $f6
/* B1AF58 800A3DB8 00000000 */  nop   
/* B1AF5C 800A3DBC 45020006 */  bc1fl .L800A3DD8
/* B1AF60 800A3DC0 C4A20014 */   lwc1  $f2, 0x14($a1)
/* B1AF64 800A3DC4 C4A80014 */  lwc1  $f8, 0x14($a1)
/* B1AF68 800A3DC8 46080400 */  add.s $f16, $f0, $f8
/* B1AF6C 800A3DCC 10000008 */  b     .L800A3DF0
/* B1AF70 800A3DD0 E4B00018 */   swc1  $f16, 0x18($a1)
/* B1AF74 800A3DD4 C4A20014 */  lwc1  $f2, 0x14($a1)
.L800A3DD8:
/* B1AF78 800A3DD8 4600103E */  c.le.s $f2, $f0
/* B1AF7C 800A3DDC 00000000 */  nop   
/* B1AF80 800A3DE0 45000003 */  bc1f  .L800A3DF0
/* B1AF84 800A3DE4 00000000 */   nop   
/* B1AF88 800A3DE8 46020281 */  sub.s $f10, $f0, $f2
/* B1AF8C 800A3DEC E4AA0018 */  swc1  $f10, 0x18($a1)
.L800A3DF0:
/* B1AF90 800A3DF0 0C028F27 */  jal   func_800A3C9C
/* B1AF94 800A3DF4 00000000 */   nop   
/* B1AF98 800A3DF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1AF9C 800A3DFC 27BD0018 */  addiu $sp, $sp, 0x18
/* B1AFA0 800A3E00 00001025 */  move  $v0, $zero
/* B1AFA4 800A3E04 03E00008 */  jr    $ra
/* B1AFA8 800A3E08 00000000 */   nop   

/* B1AFAC 800A3E0C 3C0E8016 */  li    $t6, 0x80160000 # 0.000000
/* B1AFB0 800A3E10 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1AFB4 800A3E14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1AFB8 800A3E18 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1AFBC 800A3E1C 85CF0110 */  lh    $t7, 0x110($t6)
/* B1AFC0 800A3E20 C4A00018 */  lwc1  $f0, 0x18($a1)
/* B1AFC4 800A3E24 C4AC0010 */  lwc1  $f12, 0x10($a1)
/* B1AFC8 800A3E28 448F2000 */  mtc1  $t7, $f4
/* B1AFCC 800A3E2C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1AFD0 800A3E30 46006032 */  c.eq.s $f12, $f0
/* B1AFD4 800A3E34 44814000 */  mtc1  $at, $f8
/* B1AFD8 800A3E38 468021A0 */  cvt.s.w $f6, $f4
/* B1AFDC 800A3E3C 46083382 */  mul.s $f14, $f6, $f8
/* B1AFE0 800A3E40 45020006 */  bc1fl .L800A3E5C
/* B1AFE4 800A3E44 C4A2001C */   lwc1  $f2, 0x1c($a1)
/* B1AFE8 800A3E48 0C028F27 */  jal   func_800A3C9C
/* B1AFEC 800A3E4C 00000000 */   nop   
/* B1AFF0 800A3E50 10000021 */  b     .L800A3ED8
/* B1AFF4 800A3E54 24020001 */   li    $v0, 1
/* B1AFF8 800A3E58 C4A2001C */  lwc1  $f2, 0x1c($a1)
.L800A3E5C:
/* B1AFFC 800A3E5C 44808000 */  mtc1  $zero, $f16
/* B1B000 800A3E60 460E1282 */  mul.s $f10, $f2, $f14
/* B1B004 800A3E64 460A0480 */  add.s $f18, $f0, $f10
/* B1B008 800A3E68 E4B20018 */  swc1  $f18, 0x18($a1)
/* B1B00C 800A3E6C C4A00018 */  lwc1  $f0, 0x18($a1)
/* B1B010 800A3E70 460C0101 */  sub.s $f4, $f0, $f12
/* B1B014 800A3E74 46022182 */  mul.s $f6, $f4, $f2
/* B1B018 800A3E78 4606803C */  c.lt.s $f16, $f6
/* B1B01C 800A3E7C 00000000 */  nop   
/* B1B020 800A3E80 45020004 */  bc1fl .L800A3E94
/* B1B024 800A3E84 4610003C */   c.lt.s $f0, $f16
/* B1B028 800A3E88 10000010 */  b     .L800A3ECC
/* B1B02C 800A3E8C E4AC0018 */   swc1  $f12, 0x18($a1)
/* B1B030 800A3E90 4610003C */  c.lt.s $f0, $f16
.L800A3E94:
/* B1B034 800A3E94 00000000 */  nop   
/* B1B038 800A3E98 45020006 */  bc1fl .L800A3EB4
/* B1B03C 800A3E9C C4A20014 */   lwc1  $f2, 0x14($a1)
/* B1B040 800A3EA0 C4A80014 */  lwc1  $f8, 0x14($a1)
/* B1B044 800A3EA4 46080280 */  add.s $f10, $f0, $f8
/* B1B048 800A3EA8 10000008 */  b     .L800A3ECC
/* B1B04C 800A3EAC E4AA0018 */   swc1  $f10, 0x18($a1)
/* B1B050 800A3EB0 C4A20014 */  lwc1  $f2, 0x14($a1)
.L800A3EB4:
/* B1B054 800A3EB4 4600103E */  c.le.s $f2, $f0
/* B1B058 800A3EB8 00000000 */  nop   
/* B1B05C 800A3EBC 45000003 */  bc1f  .L800A3ECC
/* B1B060 800A3EC0 00000000 */   nop   
/* B1B064 800A3EC4 46020481 */  sub.s $f18, $f0, $f2
/* B1B068 800A3EC8 E4B20018 */  swc1  $f18, 0x18($a1)
.L800A3ECC:
/* B1B06C 800A3ECC 0C028F27 */  jal   func_800A3C9C
/* B1B070 800A3ED0 00000000 */   nop   
/* B1B074 800A3ED4 00001025 */  move  $v0, $zero
.L800A3ED8:
/* B1B078 800A3ED8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B07C 800A3EDC 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B080 800A3EE0 03E00008 */  jr    $ra
/* B1B084 800A3EE4 00000000 */   nop   

/* B1B088 800A3EE8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1B08C 800A3EEC 44810000 */  mtc1  $at, $f0
/* B1B090 800A3EF0 44866000 */  mtc1  $a2, $f12
/* B1B094 800A3EF4 AFA40000 */  sw    $a0, ($sp)
/* B1B098 800A3EF8 E4A00028 */  swc1  $f0, 0x28($a1)
/* B1B09C 800A3EFC 460C0103 */  div.s $f4, $f0, $f12
/* B1B0A0 800A3F00 03E00008 */  jr    $ra
/* B1B0A4 800A3F04 E4A4002C */   swc1  $f4, 0x2c($a1)

glabel func_800A3F08
/* B1B0A8 800A3F08 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B0AC 800A3F0C C7AC0044 */  lwc1  $f12, 0x44($sp)
/* B1B0B0 800A3F10 44802000 */  mtc1  $zero, $f4
/* B1B0B4 800A3F14 93AE0043 */  lbu   $t6, 0x43($sp)
/* B1B0B8 800A3F18 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B0BC 800A3F1C 46046032 */  c.eq.s $f12, $f4
/* B1B0C0 800A3F20 AFB10020 */  sw    $s1, 0x20($sp)
/* B1B0C4 800A3F24 AFB0001C */  sw    $s0, 0x1c($sp)
/* B1B0C8 800A3F28 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B0CC 800A3F2C AFA70034 */  sw    $a3, 0x34($sp)
/* B1B0D0 800A3F30 00A08025 */  move  $s0, $a1
/* B1B0D4 800A3F34 00C08825 */  move  $s1, $a2
/* B1B0D8 800A3F38 4501002D */  bc1t  .L800A3FF0
/* B1B0DC 800A3F3C A0AE0001 */   sb    $t6, 1($a1)
/* B1B0E0 800A3F40 8CAF0008 */  lw    $t7, 8($a1)
/* B1B0E4 800A3F44 C7A60038 */  lwc1  $f6, 0x38($sp)
/* B1B0E8 800A3F48 54CF0007 */  bnel  $a2, $t7, .L800A3F68
/* B1B0EC 800A3F4C 44805000 */   mtc1  $zero, $f10
/* B1B0F0 800A3F50 C4A80018 */  lwc1  $f8, 0x18($a1)
/* B1B0F4 800A3F54 46083032 */  c.eq.s $f6, $f8
/* B1B0F8 800A3F58 00000000 */  nop   
/* B1B0FC 800A3F5C 45010024 */  bc1t  .L800A3FF0
/* B1B100 800A3F60 00000000 */   nop   
/* B1B104 800A3F64 44805000 */  mtc1  $zero, $f10
.L800A3F68:
/* B1B108 800A3F68 3C18800A */  li    $t8, 0x800A0000 # 0.000000
/* B1B10C 800A3F6C 02002025 */  move  $a0, $s0
/* B1B110 800A3F70 460A603C */  c.lt.s $f12, $f10
/* B1B114 800A3F74 27183BE4 */  addiu $t8, %lo(func_800A3BE4) # addiu $t8, $t8, 0x3be4
/* B1B118 800A3F78 4502000B */  bc1fl .L800A3FA8
/* B1B11C 800A3F7C AE180030 */   sw    $t8, 0x30($s0)
/* B1B120 800A3F80 0C028EE3 */  jal   func_800A3B8C
/* B1B124 800A3F84 E7AC0044 */   swc1  $f12, 0x44($sp)
/* B1B128 800A3F88 02002025 */  move  $a0, $s0
/* B1B12C 800A3F8C 8E050024 */  lw    $a1, 0x24($s0)
/* B1B130 800A3F90 0C0295DD */  jal   func_800A5774
/* B1B134 800A3F94 8E060020 */   lw    $a2, 0x20($s0)
/* B1B138 800A3F98 C7AC0044 */  lwc1  $f12, 0x44($sp)
/* B1B13C 800A3F9C 1000000D */  b     .L800A3FD4
/* B1B140 800A3FA0 46006307 */   neg.s $f12, $f12
/* B1B144 800A3FA4 AE180030 */  sw    $t8, 0x30($s0)
.L800A3FA8:
/* B1B148 800A3FA8 C7B00038 */  lwc1  $f16, 0x38($sp)
/* B1B14C 800A3FAC 8E080024 */  lw    $t0, 0x24($s0)
/* B1B150 800A3FB0 92070000 */  lbu   $a3, ($s0)
/* B1B154 800A3FB4 4600848D */  trunc.w.s $f18, $f16
/* B1B158 800A3FB8 E7AC0044 */  swc1  $f12, 0x44($sp)
/* B1B15C 800A3FBC 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B160 800A3FC0 02202825 */  move  $a1, $s1
/* B1B164 800A3FC4 44069000 */  mfc1  $a2, $f18
/* B1B168 800A3FC8 0C028CDB */  jal   func_800A336C
/* B1B16C 800A3FCC AFA80010 */   sw    $t0, 0x10($sp)
/* B1B170 800A3FD0 C7AC0044 */  lwc1  $f12, 0x44($sp)
.L800A3FD4:
/* B1B174 800A3FD4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1B178 800A3FD8 44810000 */  mtc1  $at, $f0
/* B1B17C 800A3FDC 00000000 */  nop   
/* B1B180 800A3FE0 460C0103 */  div.s $f4, $f0, $f12
/* B1B184 800A3FE4 E6000028 */  swc1  $f0, 0x28($s0)
/* B1B188 800A3FE8 10000010 */  b     .L800A402C
/* B1B18C 800A3FEC E604002C */   swc1  $f4, 0x2c($s0)
.L800A3FF0:
/* B1B190 800A3FF0 0C028EE3 */  jal   func_800A3B8C
/* B1B194 800A3FF4 02002025 */   move  $a0, $s0
/* B1B198 800A3FF8 C7A60038 */  lwc1  $f6, 0x38($sp)
/* B1B19C 800A3FFC 8E0A0020 */  lw    $t2, 0x20($s0)
/* B1B1A0 800A4000 92070000 */  lbu   $a3, ($s0)
/* B1B1A4 800A4004 4600320D */  trunc.w.s $f8, $f6
/* B1B1A8 800A4008 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B1AC 800A400C 02202825 */  move  $a1, $s1
/* B1B1B0 800A4010 AFAA0010 */  sw    $t2, 0x10($sp)
/* B1B1B4 800A4014 44064000 */  mfc1  $a2, $f8
/* B1B1B8 800A4018 0C028CDB */  jal   func_800A336C
/* B1B1BC 800A401C 00000000 */   nop   
/* B1B1C0 800A4020 44805000 */  mtc1  $zero, $f10
/* B1B1C4 800A4024 00000000 */  nop   
/* B1B1C8 800A4028 E60A0028 */  swc1  $f10, 0x28($s0)
.L800A402C:
/* B1B1CC 800A402C AE110008 */  sw    $s1, 8($s0)
/* B1B1D0 800A4030 C7B00038 */  lwc1  $f16, 0x38($sp)
/* B1B1D4 800A4034 02202025 */  move  $a0, $s1
/* B1B1D8 800A4038 E610000C */  swc1  $f16, 0xc($s0)
/* B1B1DC 800A403C C7B20038 */  lwc1  $f18, 0x38($sp)
/* B1B1E0 800A4040 E6120018 */  swc1  $f18, 0x18($s0)
/* B1B1E4 800A4044 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* B1B1E8 800A4048 0C0287F2 */  jal   func_800A1FC8
/* B1B1EC 800A404C E6040010 */   swc1  $f4, 0x10($s0)
/* B1B1F0 800A4050 44823000 */  mtc1  $v0, $f6
/* B1B1F4 800A4054 00000000 */  nop   
/* B1B1F8 800A4058 46803220 */  cvt.s.w $f8, $f6
/* B1B1FC 800A405C E6080014 */  swc1  $f8, 0x14($s0)
/* B1B200 800A4060 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* B1B204 800A4064 E60A001C */  swc1  $f10, 0x1c($s0)
/* B1B208 800A4068 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B20C 800A406C 8FB10020 */  lw    $s1, 0x20($sp)
/* B1B210 800A4070 8FB0001C */  lw    $s0, 0x1c($sp)
/* B1B214 800A4074 03E00008 */  jr    $ra
/* B1B218 800A4078 27BD0028 */   addiu $sp, $sp, 0x28

/* B1B21C 800A407C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B220 800A4080 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B224 800A4084 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B228 800A4088 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B22C 800A408C AFA60030 */  sw    $a2, 0x30($sp)
/* B1B230 800A4090 0C028800 */  jal   func_800A2000
/* B1B234 800A4094 00C02025 */   move  $a0, $a2
/* B1B238 800A4098 44822000 */  mtc1  $v0, $f4
/* B1B23C 800A409C 44800000 */  mtc1  $zero, $f0
/* B1B240 800A40A0 240E0002 */  li    $t6, 2
/* B1B244 800A40A4 468021A0 */  cvt.s.w $f6, $f4
/* B1B248 800A40A8 AFAE0018 */  sw    $t6, 0x18($sp)
/* B1B24C 800A40AC 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B250 800A40B0 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B254 800A40B4 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B258 800A40B8 3C073F80 */  lui   $a3, 0x3f80
/* B1B25C 800A40BC E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B260 800A40C0 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B264 800A40C4 0C028FC2 */  jal   func_800A3F08
/* B1B268 800A40C8 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B26C 800A40CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B270 800A40D0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B274 800A40D4 03E00008 */  jr    $ra
/* B1B278 800A40D8 00000000 */   nop   

/* B1B27C 800A40DC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B280 800A40E0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B284 800A40E4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B288 800A40E8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B28C 800A40EC AFA60030 */  sw    $a2, 0x30($sp)
/* B1B290 800A40F0 AFA70034 */  sw    $a3, 0x34($sp)
/* B1B294 800A40F4 0C028800 */  jal   func_800A2000
/* B1B298 800A40F8 00C02025 */   move  $a0, $a2
/* B1B29C 800A40FC 44822000 */  mtc1  $v0, $f4
/* B1B2A0 800A4100 44800000 */  mtc1  $zero, $f0
/* B1B2A4 800A4104 240E0002 */  li    $t6, 2
/* B1B2A8 800A4108 468021A0 */  cvt.s.w $f6, $f4
/* B1B2AC 800A410C AFAE0018 */  sw    $t6, 0x18($sp)
/* B1B2B0 800A4110 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B2B4 800A4114 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B2B8 800A4118 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B2BC 800A411C 8FA70034 */  lw    $a3, 0x34($sp)
/* B1B2C0 800A4120 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B2C4 800A4124 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B2C8 800A4128 0C028FC2 */  jal   func_800A3F08
/* B1B2CC 800A412C E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B2D0 800A4130 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B2D4 800A4134 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B2D8 800A4138 03E00008 */  jr    $ra
/* B1B2DC 800A413C 00000000 */   nop   

/* B1B2E0 800A4140 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B2E4 800A4144 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B2E8 800A4148 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B2EC 800A414C AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B2F0 800A4150 AFA60030 */  sw    $a2, 0x30($sp)
/* B1B2F4 800A4154 0C028800 */  jal   func_800A2000
/* B1B2F8 800A4158 00C02025 */   move  $a0, $a2
/* B1B2FC 800A415C 44822000 */  mtc1  $v0, $f4
/* B1B300 800A4160 44800000 */  mtc1  $zero, $f0
/* B1B304 800A4164 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B308 800A4168 468021A0 */  cvt.s.w $f6, $f4
/* B1B30C 800A416C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B310 800A4170 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B314 800A4174 3C073F80 */  lui   $a3, 0x3f80
/* B1B318 800A4178 AFA00018 */  sw    $zero, 0x18($sp)
/* B1B31C 800A417C E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B320 800A4180 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B324 800A4184 0C028FC2 */  jal   func_800A3F08
/* B1B328 800A4188 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B32C 800A418C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B330 800A4190 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B334 800A4194 03E00008 */  jr    $ra
/* B1B338 800A4198 00000000 */   nop   

/* B1B33C 800A419C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1B340 800A41A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B344 800A41A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1B348 800A41A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1B34C 800A41AC AFA60030 */  sw    $a2, 0x30($sp)
/* B1B350 800A41B0 AFA70034 */  sw    $a3, 0x34($sp)
/* B1B354 800A41B4 0C028800 */  jal   func_800A2000
/* B1B358 800A41B8 00C02025 */   move  $a0, $a2
/* B1B35C 800A41BC 44822000 */  mtc1  $v0, $f4
/* B1B360 800A41C0 44800000 */  mtc1  $zero, $f0
/* B1B364 800A41C4 8FA40028 */  lw    $a0, 0x28($sp)
/* B1B368 800A41C8 468021A0 */  cvt.s.w $f6, $f4
/* B1B36C 800A41CC 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1B370 800A41D0 8FA60030 */  lw    $a2, 0x30($sp)
/* B1B374 800A41D4 8FA70034 */  lw    $a3, 0x34($sp)
/* B1B378 800A41D8 AFA00018 */  sw    $zero, 0x18($sp)
/* B1B37C 800A41DC E7A00010 */  swc1  $f0, 0x10($sp)
/* B1B380 800A41E0 E7A60014 */  swc1  $f6, 0x14($sp)
/* B1B384 800A41E4 0C028FC2 */  jal   func_800A3F08
/* B1B388 800A41E8 E7A0001C */   swc1  $f0, 0x1c($sp)
/* B1B38C 800A41EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B390 800A41F0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1B394 800A41F4 03E00008 */  jr    $ra
/* B1B398 800A41F8 00000000 */   nop   

/* B1B39C 800A41FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B3A0 800A4200 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B3A4 800A4204 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1B3A8 800A4208 00A07025 */  move  $t6, $a1
/* B1B3AC 800A420C 8DC60024 */  lw    $a2, 0x24($t6)
/* B1B3B0 800A4210 8DC70020 */  lw    $a3, 0x20($t6)
/* B1B3B4 800A4214 0C028D1E */  jal   func_800A3478
/* B1B3B8 800A4218 90A50000 */   lbu   $a1, ($a1)
/* B1B3BC 800A421C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B3C0 800A4220 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B3C4 800A4224 03E00008 */  jr    $ra
/* B1B3C8 800A4228 00000000 */   nop   

/* B1B3CC 800A422C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B3D0 800A4230 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B3D4 800A4234 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1B3D8 800A4238 00A07025 */  move  $t6, $a1
/* B1B3DC 800A423C 8DC60020 */  lw    $a2, 0x20($t6)
/* B1B3E0 800A4240 8DC70024 */  lw    $a3, 0x24($t6)
/* B1B3E4 800A4244 0C028D1E */  jal   func_800A3478
/* B1B3E8 800A4248 90A50000 */   lbu   $a1, ($a1)
/* B1B3EC 800A424C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B3F0 800A4250 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B3F4 800A4254 03E00008 */  jr    $ra
/* B1B3F8 800A4258 00000000 */   nop   

/* B1B3FC 800A425C 44876000 */  mtc1  $a3, $f12
/* B1B400 800A4260 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B404 800A4264 AFA50024 */  sw    $a1, 0x24($sp)
/* B1B408 800A4268 4600610D */  trunc.w.s $f4, $f12
/* B1B40C 800A426C 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1B410 800A4270 AFA60028 */  sw    $a2, 0x28($sp)
/* B1B414 800A4274 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B418 800A4278 8DF80024 */  lw    $t8, 0x24($t7)
/* B1B41C 800A427C 00C02825 */  move  $a1, $a2
/* B1B420 800A4280 44062000 */  mfc1  $a2, $f4
/* B1B424 800A4284 91E70000 */  lbu   $a3, ($t7)
/* B1B428 800A4288 0C028CDB */  jal   func_800A336C
/* B1B42C 800A428C AFB80010 */   sw    $t8, 0x10($sp)
/* B1B430 800A4290 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B434 800A4294 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B438 800A4298 03E00008 */  jr    $ra
/* B1B43C 800A429C 00000000 */   nop   

/* B1B440 800A42A0 44876000 */  mtc1  $a3, $f12
/* B1B444 800A42A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B448 800A42A8 AFA50024 */  sw    $a1, 0x24($sp)
/* B1B44C 800A42AC 4600610D */  trunc.w.s $f4, $f12
/* B1B450 800A42B0 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1B454 800A42B4 AFA60028 */  sw    $a2, 0x28($sp)
/* B1B458 800A42B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B45C 800A42BC 8DF80020 */  lw    $t8, 0x20($t7)
/* B1B460 800A42C0 00C02825 */  move  $a1, $a2
/* B1B464 800A42C4 44062000 */  mfc1  $a2, $f4
/* B1B468 800A42C8 91E70000 */  lbu   $a3, ($t7)
/* B1B46C 800A42CC 0C028CDB */  jal   func_800A336C
/* B1B470 800A42D0 AFB80010 */   sw    $t8, 0x10($sp)
/* B1B474 800A42D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B478 800A42D8 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B47C 800A42DC 03E00008 */  jr    $ra
/* B1B480 800A42E0 00000000 */   nop   

/* B1B484 800A42E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B488 800A42E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B48C 800A42EC AFA50024 */  sw    $a1, 0x24($sp)
/* B1B490 800A42F0 00A07025 */  move  $t6, $a1
/* B1B494 800A42F4 44866000 */  mtc1  $a2, $f12
/* B1B498 800A42F8 8DC60020 */  lw    $a2, 0x20($t6)
/* B1B49C 800A42FC 8DC70024 */  lw    $a3, 0x24($t6)
/* B1B4A0 800A4300 90A50000 */  lbu   $a1, ($a1)
/* B1B4A4 800A4304 0C028D37 */  jal   func_800A34DC
/* B1B4A8 800A4308 E7AC0010 */   swc1  $f12, 0x10($sp)
/* B1B4AC 800A430C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1B4B0 800A4310 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B4B4 800A4314 03E00008 */  jr    $ra
/* B1B4B8 800A4318 00000000 */   nop   

/* B1B4BC 800A431C 44876000 */  mtc1  $a3, $f12
/* B1B4C0 800A4320 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1B4C4 800A4324 AFB00020 */  sw    $s0, 0x20($sp)
/* B1B4C8 800A4328 4600610D */  trunc.w.s $f4, $f12
/* B1B4CC 800A432C 00A08025 */  move  $s0, $a1
/* B1B4D0 800A4330 AFA60038 */  sw    $a2, 0x38($sp)
/* B1B4D4 800A4334 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B4D8 800A4338 AFA40030 */  sw    $a0, 0x30($sp)
/* B1B4DC 800A433C 8E0F0020 */  lw    $t7, 0x20($s0)
/* B1B4E0 800A4340 00C02825 */  move  $a1, $a2
/* B1B4E4 800A4344 44062000 */  mfc1  $a2, $f4
/* B1B4E8 800A4348 92070000 */  lbu   $a3, ($s0)
/* B1B4EC 800A434C 0C028CDB */  jal   func_800A336C
/* B1B4F0 800A4350 AFAF0010 */   sw    $t7, 0x10($sp)
/* B1B4F4 800A4354 C7A60044 */  lwc1  $f6, 0x44($sp)
/* B1B4F8 800A4358 8FA2004C */  lw    $v0, 0x4c($sp)
/* B1B4FC 800A435C 2401FFF0 */  li    $at, -16
/* B1B500 800A4360 4600320D */  trunc.w.s $f8, $f6
/* B1B504 800A4364 2442000F */  addiu $v0, $v0, 0xf
/* B1B508 800A4368 00411024 */  and   $v0, $v0, $at
/* B1B50C 800A436C 92070000 */  lbu   $a3, ($s0)
/* B1B510 800A4370 44064000 */  mfc1  $a2, $f8
/* B1B514 800A4374 AFA20028 */  sw    $v0, 0x28($sp)
/* B1B518 800A4378 AFA20010 */  sw    $v0, 0x10($sp)
/* B1B51C 800A437C 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B520 800A4380 0C028CDB */  jal   func_800A336C
/* B1B524 800A4384 8FA50040 */   lw    $a1, 0x40($sp)
/* B1B528 800A4388 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B1B52C 800A438C 92050000 */  lbu   $a1, ($s0)
/* B1B530 800A4390 8E060020 */  lw    $a2, 0x20($s0)
/* B1B534 800A4394 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B538 800A4398 8FA70028 */  lw    $a3, 0x28($sp)
/* B1B53C 800A439C 0C028D37 */  jal   func_800A34DC
/* B1B540 800A43A0 E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1B544 800A43A4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B548 800A43A8 8FB00020 */  lw    $s0, 0x20($sp)
/* B1B54C 800A43AC 27BD0030 */  addiu $sp, $sp, 0x30
/* B1B550 800A43B0 03E00008 */  jr    $ra
/* B1B554 800A43B4 00000000 */   nop   

/* B1B558 800A43B8 44876000 */  mtc1  $a3, $f12
/* B1B55C 800A43BC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1B560 800A43C0 AFB00020 */  sw    $s0, 0x20($sp)
/* B1B564 800A43C4 4600610D */  trunc.w.s $f4, $f12
/* B1B568 800A43C8 00A08025 */  move  $s0, $a1
/* B1B56C 800A43CC AFA60038 */  sw    $a2, 0x38($sp)
/* B1B570 800A43D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B574 800A43D4 AFA40030 */  sw    $a0, 0x30($sp)
/* B1B578 800A43D8 8E0F0024 */  lw    $t7, 0x24($s0)
/* B1B57C 800A43DC 00C02825 */  move  $a1, $a2
/* B1B580 800A43E0 44062000 */  mfc1  $a2, $f4
/* B1B584 800A43E4 92070000 */  lbu   $a3, ($s0)
/* B1B588 800A43E8 0C028CDB */  jal   func_800A336C
/* B1B58C 800A43EC AFAF0010 */   sw    $t7, 0x10($sp)
/* B1B590 800A43F0 C7A60044 */  lwc1  $f6, 0x44($sp)
/* B1B594 800A43F4 8FA2004C */  lw    $v0, 0x4c($sp)
/* B1B598 800A43F8 2401FFF0 */  li    $at, -16
/* B1B59C 800A43FC 4600320D */  trunc.w.s $f8, $f6
/* B1B5A0 800A4400 2442000F */  addiu $v0, $v0, 0xf
/* B1B5A4 800A4404 00411024 */  and   $v0, $v0, $at
/* B1B5A8 800A4408 92070000 */  lbu   $a3, ($s0)
/* B1B5AC 800A440C 44064000 */  mfc1  $a2, $f8
/* B1B5B0 800A4410 AFA20028 */  sw    $v0, 0x28($sp)
/* B1B5B4 800A4414 AFA20010 */  sw    $v0, 0x10($sp)
/* B1B5B8 800A4418 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B5BC 800A441C 0C028CDB */  jal   func_800A336C
/* B1B5C0 800A4420 8FA50040 */   lw    $a1, 0x40($sp)
/* B1B5C4 800A4424 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B1B5C8 800A4428 92050000 */  lbu   $a1, ($s0)
/* B1B5CC 800A442C 8E060024 */  lw    $a2, 0x24($s0)
/* B1B5D0 800A4430 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B5D4 800A4434 8FA70028 */  lw    $a3, 0x28($sp)
/* B1B5D8 800A4438 0C028D37 */  jal   func_800A34DC
/* B1B5DC 800A443C E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1B5E0 800A4440 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B5E4 800A4444 8FB00020 */  lw    $s0, 0x20($sp)
/* B1B5E8 800A4448 27BD0030 */  addiu $sp, $sp, 0x30
/* B1B5EC 800A444C 03E00008 */  jr    $ra
/* B1B5F0 800A4450 00000000 */   nop   

/* B1B5F4 800A4454 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B5F8 800A4458 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B5FC 800A445C 240E0002 */  li    $t6, 2
/* B1B600 800A4460 0C028EE3 */  jal   func_800A3B8C
/* B1B604 800A4464 A08E0001 */   sb    $t6, 1($a0)
/* B1B608 800A4468 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B60C 800A446C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B610 800A4470 03E00008 */  jr    $ra
/* B1B614 800A4474 00000000 */   nop   

glabel func_800A4478
/* B1B618 800A4478 44866000 */  mtc1  $a2, $f12
/* B1B61C 800A447C C484001C */  lwc1  $f4, 0x1c($a0)
/* B1B620 800A4480 C4860018 */  lwc1  $f6, 0x18($a0)
/* B1B624 800A4484 44808000 */  mtc1  $zero, $f16
/* B1B628 800A4488 460C2002 */  mul.s $f0, $f4, $f12
/* B1B62C 800A448C 44857000 */  mtc1  $a1, $f14
/* B1B630 800A4490 00001025 */  move  $v0, $zero
/* B1B634 800A4494 46003081 */  sub.s $f2, $f6, $f0
/* B1B638 800A4498 4610103C */  c.lt.s $f2, $f16
/* B1B63C 800A449C 00000000 */  nop   
/* B1B640 800A44A0 45020005 */  bc1fl .L800A44B8
/* B1B644 800A44A4 C48C0014 */   lwc1  $f12, 0x14($a0)
/* B1B648 800A44A8 C48C0014 */  lwc1  $f12, 0x14($a0)
/* B1B64C 800A44AC 10000007 */  b     .L800A44CC
/* B1B650 800A44B0 460C1080 */   add.s $f2, $f2, $f12
/* B1B654 800A44B4 C48C0014 */  lwc1  $f12, 0x14($a0)
.L800A44B8:
/* B1B658 800A44B8 4602603E */  c.le.s $f12, $f2
/* B1B65C 800A44BC 00000000 */  nop   
/* B1B660 800A44C0 45020003 */  bc1fl .L800A44D0
/* B1B664 800A44C4 46107032 */   c.eq.s $f14, $f16
/* B1B668 800A44C8 460C1081 */  sub.s $f2, $f2, $f12
.L800A44CC:
/* B1B66C 800A44CC 46107032 */  c.eq.s $f14, $f16
.L800A44D0:
/* B1B670 800A44D0 46001200 */  add.s $f8, $f2, $f0
/* B1B674 800A44D4 45020007 */  bc1fl .L800A44F4
/* B1B678 800A44D8 460E4301 */   sub.s $f12, $f8, $f14
/* B1B67C 800A44DC 4600803C */  c.lt.s $f16, $f0
/* B1B680 800A44E0 00000000 */  nop   
/* B1B684 800A44E4 45020003 */  bc1fl .L800A44F4
/* B1B688 800A44E8 460E4301 */   sub.s $f12, $f8, $f14
/* B1B68C 800A44EC 46006386 */  mov.s $f14, $f12
/* B1B690 800A44F0 460E4301 */  sub.s $f12, $f8, $f14
.L800A44F4:
/* B1B694 800A44F4 46006282 */  mul.s $f10, $f12, $f0
/* B1B698 800A44F8 460A803E */  c.le.s $f16, $f10
/* B1B69C 800A44FC 00000000 */  nop   
/* B1B6A0 800A4500 45000009 */  bc1f  .L800A4528
/* B1B6A4 800A4504 00000000 */   nop   
/* B1B6A8 800A4508 46006481 */  sub.s $f18, $f12, $f0
/* B1B6AC 800A450C 46009102 */  mul.s $f4, $f18, $f0
/* B1B6B0 800A4510 4610203C */  c.lt.s $f4, $f16
/* B1B6B4 800A4514 00000000 */  nop   
/* B1B6B8 800A4518 45000003 */  bc1f  .L800A4528
/* B1B6BC 800A451C 00000000 */   nop   
/* B1B6C0 800A4520 03E00008 */  jr    $ra
/* B1B6C4 800A4524 24020001 */   li    $v0, 1

.L800A4528:
/* B1B6C8 800A4528 03E00008 */  jr    $ra
/* B1B6CC 800A452C 00000000 */   nop   

/* B1B6D0 800A4530 3C0E8016 */  li    $t6, 0x80160000 # 0.000000
/* B1B6D4 800A4534 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1B6D8 800A4538 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B6DC 800A453C AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B6E0 800A4540 85CF0110 */  lh    $t7, 0x110($t6)
/* B1B6E4 800A4544 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B1B6E8 800A4548 44814000 */  mtc1  $at, $f8
/* B1B6EC 800A454C 448F2000 */  mtc1  $t7, $f4
/* B1B6F0 800A4550 44856000 */  mtc1  $a1, $f12
/* B1B6F4 800A4554 468021A0 */  cvt.s.w $f6, $f4
/* B1B6F8 800A4558 44056000 */  mfc1  $a1, $f12
/* B1B6FC 800A455C 46083002 */  mul.s $f0, $f6, $f8
/* B1B700 800A4560 44060000 */  mfc1  $a2, $f0
/* B1B704 800A4564 0C02911E */  jal   func_800A4478
/* B1B708 800A4568 00000000 */   nop   
/* B1B70C 800A456C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B710 800A4570 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B714 800A4574 03E00008 */  jr    $ra
/* B1B718 800A4578 00000000 */   nop   

/* B1B71C 800A457C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B720 800A4580 AFA40020 */  sw    $a0, 0x20($sp)
/* B1B724 800A4584 00067100 */  sll   $t6, $a2, 4
/* B1B728 800A4588 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* B1B72C 800A458C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1B730 800A4590 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* B1B734 800A4594 000FC080 */  sll   $t8, $t7, 2
/* B1B738 800A4598 0098C821 */  addu  $t9, $a0, $t8
/* B1B73C 800A459C 8F2A0000 */  lw    $t2, ($t9)
/* B1B740 800A45A0 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B1B744 800A45A4 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B1B748 800A45A8 00C85824 */  and   $t3, $a2, $t0
/* B1B74C 800A45AC 3C098000 */  lui   $t1, 0x8000
/* B1B750 800A45B0 014B6021 */  addu  $t4, $t2, $t3
/* B1B754 800A45B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B758 800A45B8 AFB00018 */  sw    $s0, 0x18($sp)
/* B1B75C 800A45BC AFA7002C */  sw    $a3, 0x2c($sp)
/* B1B760 800A45C0 01891021 */  addu  $v0, $t4, $t1
/* B1B764 800A45C4 904D0004 */  lbu   $t5, 4($v0)
/* B1B768 800A45C8 00A08025 */  move  $s0, $a1
/* B1B76C 800A45CC 24060B98 */  li    $a2, 2968
/* B1B770 800A45D0 25AE0001 */  addiu $t6, $t5, 1
/* B1B774 800A45D4 A0AE0000 */  sb    $t6, ($a1)
/* B1B778 800A45D8 8C430000 */  lw    $v1, ($v0)
/* B1B77C 800A45DC 00037900 */  sll   $t7, $v1, 4
/* B1B780 800A45E0 000FC702 */  srl   $t8, $t7, 0x1c
/* B1B784 800A45E4 0018C880 */  sll   $t9, $t8, 2
/* B1B788 800A45E8 00995021 */  addu  $t2, $a0, $t9
/* B1B78C 800A45EC 8D4B0000 */  lw    $t3, ($t2)
/* B1B790 800A45F0 00686024 */  and   $t4, $v1, $t0
/* B1B794 800A45F4 016C6821 */  addu  $t5, $t3, $t4
/* B1B798 800A45F8 01A97021 */  addu  $t6, $t5, $t1
/* B1B79C 800A45FC ACAE0004 */  sw    $t6, 4($a1)
/* B1B7A0 800A4600 8FAF0030 */  lw    $t7, 0x30($sp)
/* B1B7A4 800A4604 8FB80038 */  lw    $t8, 0x38($sp)
/* B1B7A8 800A4608 55E00016 */  bnezl $t7, .L800A4664
/* B1B7AC 800A460C 92190000 */   lbu   $t9, ($s0)
/* B1B7B0 800A4610 90A40000 */  lbu   $a0, ($a1)
/* B1B7B4 800A4614 3C058014 */  lui   $a1, %hi(D_80140464) # $a1, 0x8014
/* B1B7B8 800A4618 24A50464 */  addiu $a1, %lo(D_80140464) # addiu $a1, $a1, 0x464
/* B1B7BC 800A461C 00800821 */  addu  $at, $a0, $zero
/* B1B7C0 800A4620 00042080 */  sll   $a0, $a0, 2
/* B1B7C4 800A4624 00812023 */  subu  $a0, $a0, $at
/* B1B7C8 800A4628 0C01EBB8 */  jal   func_8007AEE0
/* B1B7CC 800A462C 00042040 */   sll   $a0, $a0, 1
/* B1B7D0 800A4630 92040000 */  lbu   $a0, ($s0)
/* B1B7D4 800A4634 3C058014 */  lui   $a1, %hi(D_80140478) # $a1, 0x8014
/* B1B7D8 800A4638 AE020020 */  sw    $v0, 0x20($s0)
/* B1B7DC 800A463C 00800821 */  addu  $at, $a0, $zero
/* B1B7E0 800A4640 00042080 */  sll   $a0, $a0, 2
/* B1B7E4 800A4644 00812023 */  subu  $a0, $a0, $at
/* B1B7E8 800A4648 00042040 */  sll   $a0, $a0, 1
/* B1B7EC 800A464C 24A50478 */  addiu $a1, %lo(D_80140478) # addiu $a1, $a1, 0x478
/* B1B7F0 800A4650 0C01EBB8 */  jal   func_8007AEE0
/* B1B7F4 800A4654 24060B99 */   li    $a2, 2969
/* B1B7F8 800A4658 1000000D */  b     .L800A4690
/* B1B7FC 800A465C AE020024 */   sw    $v0, 0x24($s0)
/* B1B800 800A4660 92190000 */  lbu   $t9, ($s0)
.L800A4664:
/* B1B804 800A4664 3C048014 */  lui   $a0, %hi(D_8014048C) # $a0, 0x8014
/* B1B808 800A4668 2484048C */  addiu $a0, %lo(D_8014048C) # addiu $a0, $a0, 0x48c
/* B1B80C 800A466C 13190004 */  beq   $t8, $t9, .L800A4680
/* B1B810 800A4670 3C058014 */   lui   $a1, %hi(D_801404B0) # $a1, 0x8014
/* B1B814 800A4674 24A504B0 */  addiu $a1, %lo(D_801404B0) # addiu $a1, $a1, 0x4b0
/* B1B818 800A4678 0C0007FC */  jal   AssertMessage
/* B1B81C 800A467C 24060B9D */   li    $a2, 2973
.L800A4680:
/* B1B820 800A4680 8FAA0030 */  lw    $t2, 0x30($sp)
/* B1B824 800A4684 AE0A0020 */  sw    $t2, 0x20($s0)
/* B1B828 800A4688 8FAB0034 */  lw    $t3, 0x34($sp)
/* B1B82C 800A468C AE0B0024 */  sw    $t3, 0x24($s0)
.L800A4690:
/* B1B830 800A4690 8E0C0020 */  lw    $t4, 0x20($s0)
/* B1B834 800A4694 3C048014 */  lui   $a0, %hi(D_801404C4) # $a0, 0x8014
/* B1B838 800A4698 11800004 */  beqz  $t4, .L800A46AC
/* B1B83C 800A469C 00000000 */   nop   
/* B1B840 800A46A0 8E0D0024 */  lw    $t5, 0x24($s0)
/* B1B844 800A46A4 55A0000A */  bnezl $t5, .L800A46D0
/* B1B848 800A46A8 8FAE002C */   lw    $t6, 0x2c($sp)
.L800A46AC:
/* B1B84C 800A46AC 0C00084C */  jal   DebugMessage
/* B1B850 800A46B0 248404C4 */   addiu $a0, %lo(D_801404C4) # addiu $a0, $a0, 0x4c4
/* B1B854 800A46B4 3C048014 */  lui   $a0, %hi(D_801404CC) # $a0, 0x8014
/* B1B858 800A46B8 0C00084C */  jal   DebugMessage
/* B1B85C 800A46BC 248404CC */   addiu $a0, %lo(D_801404CC) # addiu $a0, $a0, 0x4cc
/* B1B860 800A46C0 3C048014 */  lui   $a0, %hi(D_801404FC) # $a0, 0x8014
/* B1B864 800A46C4 0C00084C */  jal   DebugMessage
/* B1B868 800A46C8 248404FC */   addiu $a0, %lo(D_801404FC) # addiu $a0, $a0, 0x4fc
/* B1B86C 800A46CC 8FAE002C */  lw    $t6, 0x2c($sp)
.L800A46D0:
/* B1B870 800A46D0 02002025 */  move  $a0, $s0
/* B1B874 800A46D4 51C00004 */  beql  $t6, $zero, .L800A46E8
/* B1B878 800A46D8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1B87C 800A46DC 0C0294BE */  jal   func_800A52F8
/* B1B880 800A46E0 01C02825 */   move  $a1, $t6
/* B1B884 800A46E4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A46E8:
/* B1B888 800A46E8 8FB00018 */  lw    $s0, 0x18($sp)
/* B1B88C 800A46EC 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B890 800A46F0 03E00008 */  jr    $ra
/* B1B894 800A46F4 00000000 */   nop   

/* B1B898 800A46F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B89C 800A46FC AFA40020 */  sw    $a0, 0x20($sp)
/* B1B8A0 800A4700 00067100 */  sll   $t6, $a2, 4
/* B1B8A4 800A4704 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* B1B8A8 800A4708 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1B8AC 800A470C 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* B1B8B0 800A4710 000FC080 */  sll   $t8, $t7, 2
/* B1B8B4 800A4714 0098C821 */  addu  $t9, $a0, $t8
/* B1B8B8 800A4718 8F2A0000 */  lw    $t2, ($t9)
/* B1B8BC 800A471C 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B1B8C0 800A4720 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B1B8C4 800A4724 00C85824 */  and   $t3, $a2, $t0
/* B1B8C8 800A4728 3C098000 */  lui   $t1, 0x8000
/* B1B8CC 800A472C 014B6021 */  addu  $t4, $t2, $t3
/* B1B8D0 800A4730 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B8D4 800A4734 AFB00018 */  sw    $s0, 0x18($sp)
/* B1B8D8 800A4738 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1B8DC 800A473C 01891021 */  addu  $v0, $t4, $t1
/* B1B8E0 800A4740 904D0004 */  lbu   $t5, 4($v0)
/* B1B8E4 800A4744 00A08025 */  move  $s0, $a1
/* B1B8E8 800A4748 24060BE7 */  li    $a2, 3047
/* B1B8EC 800A474C 25AE0001 */  addiu $t6, $t5, 1
/* B1B8F0 800A4750 A0AE0000 */  sb    $t6, ($a1)
/* B1B8F4 800A4754 904F0008 */  lbu   $t7, 8($v0)
/* B1B8F8 800A4758 A0AF0002 */  sb    $t7, 2($a1)
/* B1B8FC 800A475C 8C430000 */  lw    $v1, ($v0)
/* B1B900 800A4760 0003C100 */  sll   $t8, $v1, 4
/* B1B904 800A4764 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1B908 800A4768 00195080 */  sll   $t2, $t9, 2
/* B1B90C 800A476C 008A5821 */  addu  $t3, $a0, $t2
/* B1B910 800A4770 8D6C0000 */  lw    $t4, ($t3)
/* B1B914 800A4774 00686824 */  and   $t5, $v1, $t0
/* B1B918 800A4778 018D7021 */  addu  $t6, $t4, $t5
/* B1B91C 800A477C 01C97821 */  addu  $t7, $t6, $t1
/* B1B920 800A4780 ACAF0004 */  sw    $t7, 4($a1)
/* B1B924 800A4784 8FB80030 */  lw    $t8, 0x30($sp)
/* B1B928 800A4788 8FB90038 */  lw    $t9, 0x38($sp)
/* B1B92C 800A478C 57000016 */  bnezl $t8, .L800A47E8
/* B1B930 800A4790 920A0000 */   lbu   $t2, ($s0)
/* B1B934 800A4794 90A40000 */  lbu   $a0, ($a1)
/* B1B938 800A4798 3C058014 */  lui   $a1, %hi(D_80140500) # $a1, 0x8014
/* B1B93C 800A479C 24A50500 */  addiu $a1, %lo(D_80140500) # addiu $a1, $a1, 0x500
/* B1B940 800A47A0 00800821 */  addu  $at, $a0, $zero
/* B1B944 800A47A4 00042080 */  sll   $a0, $a0, 2
/* B1B948 800A47A8 00812023 */  subu  $a0, $a0, $at
/* B1B94C 800A47AC 0C01EBB8 */  jal   func_8007AEE0
/* B1B950 800A47B0 00042040 */   sll   $a0, $a0, 1
/* B1B954 800A47B4 92040000 */  lbu   $a0, ($s0)
/* B1B958 800A47B8 3C058014 */  lui   $a1, %hi(D_80140514) # $a1, 0x8014
/* B1B95C 800A47BC AE020020 */  sw    $v0, 0x20($s0)
/* B1B960 800A47C0 00800821 */  addu  $at, $a0, $zero
/* B1B964 800A47C4 00042080 */  sll   $a0, $a0, 2
/* B1B968 800A47C8 00812023 */  subu  $a0, $a0, $at
/* B1B96C 800A47CC 00042040 */  sll   $a0, $a0, 1
/* B1B970 800A47D0 24A50514 */  addiu $a1, %lo(D_80140514) # addiu $a1, $a1, 0x514
/* B1B974 800A47D4 0C01EBB8 */  jal   func_8007AEE0
/* B1B978 800A47D8 24060BE8 */   li    $a2, 3048
/* B1B97C 800A47DC 1000000D */  b     .L800A4814
/* B1B980 800A47E0 AE020024 */   sw    $v0, 0x24($s0)
/* B1B984 800A47E4 920A0000 */  lbu   $t2, ($s0)
.L800A47E8:
/* B1B988 800A47E8 3C048014 */  lui   $a0, %hi(D_80140528) # $a0, 0x8014
/* B1B98C 800A47EC 24840528 */  addiu $a0, %lo(D_80140528) # addiu $a0, $a0, 0x528
/* B1B990 800A47F0 132A0004 */  beq   $t9, $t2, .L800A4804
/* B1B994 800A47F4 3C058014 */   lui   $a1, %hi(D_8014054C) # $a1, 0x8014
/* B1B998 800A47F8 24A5054C */  addiu $a1, %lo(D_8014054C) # addiu $a1, $a1, 0x54c
/* B1B99C 800A47FC 0C0007FC */  jal   AssertMessage
/* B1B9A0 800A4800 24060BEC */   li    $a2, 3052
.L800A4804:
/* B1B9A4 800A4804 8FAB0030 */  lw    $t3, 0x30($sp)
/* B1B9A8 800A4808 AE0B0020 */  sw    $t3, 0x20($s0)
/* B1B9AC 800A480C 8FAC0034 */  lw    $t4, 0x34($sp)
/* B1B9B0 800A4810 AE0C0024 */  sw    $t4, 0x24($s0)
.L800A4814:
/* B1B9B4 800A4814 8E0D0020 */  lw    $t5, 0x20($s0)
/* B1B9B8 800A4818 3C048014 */  lui   $a0, %hi(D_80140560) # $a0, 0x8014
/* B1B9BC 800A481C 11A00004 */  beqz  $t5, .L800A4830
/* B1B9C0 800A4820 00000000 */   nop   
/* B1B9C4 800A4824 8E0E0024 */  lw    $t6, 0x24($s0)
/* B1B9C8 800A4828 55C0000A */  bnezl $t6, .L800A4854
/* B1B9CC 800A482C 8FAF002C */   lw    $t7, 0x2c($sp)
.L800A4830:
/* B1B9D0 800A4830 0C00084C */  jal   DebugMessage
/* B1B9D4 800A4834 24840560 */   addiu $a0, %lo(D_80140560) # addiu $a0, $a0, 0x560
/* B1B9D8 800A4838 3C048014 */  lui   $a0, %hi(D_80140568) # $a0, 0x8014
/* B1B9DC 800A483C 0C00084C */  jal   DebugMessage
/* B1B9E0 800A4840 24840568 */   addiu $a0, %lo(D_80140568) # addiu $a0, $a0, 0x568
/* B1B9E4 800A4844 3C048014 */  lui   $a0, %hi(D_8014059C) # $a0, 0x8014
/* B1B9E8 800A4848 0C00084C */  jal   DebugMessage
/* B1B9EC 800A484C 2484059C */   addiu $a0, %lo(D_8014059C) # addiu $a0, $a0, 0x59c
/* B1B9F0 800A4850 8FAF002C */  lw    $t7, 0x2c($sp)
.L800A4854:
/* B1B9F4 800A4854 02002025 */  move  $a0, $s0
/* B1B9F8 800A4858 51E00004 */  beql  $t7, $zero, .L800A486C
/* B1B9FC 800A485C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1BA00 800A4860 0C0294BE */  jal   func_800A52F8
/* B1BA04 800A4864 01E02825 */   move  $a1, $t7
/* B1BA08 800A4868 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A486C:
/* B1BA0C 800A486C 8FB00018 */  lw    $s0, 0x18($sp)
/* B1BA10 800A4870 27BD0020 */  addiu $sp, $sp, 0x20
/* B1BA14 800A4874 03E00008 */  jr    $ra
/* B1BA18 800A4878 00000000 */   nop   

glabel func_800A487C
/* B1BA1C 800A487C 00067900 */  sll   $t7, $a2, 4
/* B1BA20 800A4880 3C088016 */  lui   $t0, %hi(D_80166FA8) # $t0, 0x8016
/* B1BA24 800A4884 000FC702 */  srl   $t8, $t7, 0x1c
/* B1BA28 800A4888 25086FA8 */  addiu $t0, %lo(D_80166FA8) # addiu $t0, $t0, 0x6fa8
/* B1BA2C 800A488C 0018C880 */  sll   $t9, $t8, 2
/* B1BA30 800A4890 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1BA34 800A4894 01195821 */  addu  $t3, $t0, $t9
/* B1BA38 800A4898 8D6C0000 */  lw    $t4, ($t3)
/* B1BA3C 800A489C 3C0900FF */  lui   $t1, (0x00FFFFFF >> 16) # lui $t1, 0xff
/* B1BA40 800A48A0 3529FFFF */  ori   $t1, (0x00FFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* B1BA44 800A48A4 00C96824 */  and   $t5, $a2, $t1
/* B1BA48 800A48A8 3C0A8000 */  lui   $t2, 0x8000
/* B1BA4C 800A48AC 018D7821 */  addu  $t7, $t4, $t5
/* B1BA50 800A48B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1BA54 800A48B4 AFB00018 */  sw    $s0, 0x18($sp)
/* B1BA58 800A48B8 AFA40020 */  sw    $a0, 0x20($sp)
/* B1BA5C 800A48BC AFA60028 */  sw    $a2, 0x28($sp)
/* B1BA60 800A48C0 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1BA64 800A48C4 01EA1021 */  addu  $v0, $t7, $t2
/* B1BA68 800A48C8 90580004 */  lbu   $t8, 4($v0)
/* B1BA6C 800A48CC 00A08025 */  move  $s0, $a1
/* B1BA70 800A48D0 24060C30 */  li    $a2, 3120
/* B1BA74 800A48D4 27190001 */  addiu $t9, $t8, 1
/* B1BA78 800A48D8 A0B90000 */  sb    $t9, ($a1)
/* B1BA7C 800A48DC 8C430000 */  lw    $v1, ($v0)
/* B1BA80 800A48E0 90A40000 */  lbu   $a0, ($a1)
/* B1BA84 800A48E4 00035900 */  sll   $t3, $v1, 4
/* B1BA88 800A48E8 000B7702 */  srl   $t6, $t3, 0x1c
/* B1BA8C 800A48EC 000E6080 */  sll   $t4, $t6, 2
/* B1BA90 800A48F0 010C6821 */  addu  $t5, $t0, $t4
/* B1BA94 800A48F4 8DAF0000 */  lw    $t7, ($t5)
/* B1BA98 800A48F8 0069C024 */  and   $t8, $v1, $t1
/* B1BA9C 800A48FC 00800821 */  addu  $at, $a0, $zero
/* B1BAA0 800A4900 01F8C821 */  addu  $t9, $t7, $t8
/* B1BAA4 800A4904 032A5821 */  addu  $t3, $t9, $t2
/* B1BAA8 800A4908 ACAB0004 */  sw    $t3, 4($a1)
/* B1BAAC 800A490C 00042080 */  sll   $a0, $a0, 2
/* B1BAB0 800A4910 00812023 */  subu  $a0, $a0, $at
/* B1BAB4 800A4914 3C058014 */  lui   $a1, %hi(D_801405A0) # $a1, 0x8014
/* B1BAB8 800A4918 24A505A0 */  addiu $a1, %lo(D_801405A0) # addiu $a1, $a1, 0x5a0
/* B1BABC 800A491C 0C01EBB8 */  jal   func_8007AEE0
/* B1BAC0 800A4920 00042040 */   sll   $a0, $a0, 1
/* B1BAC4 800A4924 92040000 */  lbu   $a0, ($s0)
/* B1BAC8 800A4928 3C058014 */  lui   $a1, %hi(D_801405B4) # $a1, 0x8014
/* B1BACC 800A492C AE020020 */  sw    $v0, 0x20($s0)
/* B1BAD0 800A4930 00800821 */  addu  $at, $a0, $zero
/* B1BAD4 800A4934 00042080 */  sll   $a0, $a0, 2
/* B1BAD8 800A4938 00812023 */  subu  $a0, $a0, $at
/* B1BADC 800A493C 00042040 */  sll   $a0, $a0, 1
/* B1BAE0 800A4940 24A505B4 */  addiu $a1, %lo(D_801405B4) # addiu $a1, $a1, 0x5b4
/* B1BAE4 800A4944 0C01EBB8 */  jal   func_8007AEE0
/* B1BAE8 800A4948 24060C31 */   li    $a2, 3121
/* B1BAEC 800A494C 8E0E0020 */  lw    $t6, 0x20($s0)
/* B1BAF0 800A4950 AE020024 */  sw    $v0, 0x24($s0)
/* B1BAF4 800A4954 3C048014 */  lui   $a0, %hi(D_801405C8) # $a0, 0x8014
/* B1BAF8 800A4958 11C00003 */  beqz  $t6, .L800A4968
/* B1BAFC 800A495C 00000000 */   nop   
/* B1BB00 800A4960 5440000A */  bnezl $v0, .L800A498C
/* B1BB04 800A4964 8FA5002C */   lw    $a1, 0x2c($sp)
.L800A4968:
/* B1BB08 800A4968 0C00084C */  jal   DebugMessage
/* B1BB0C 800A496C 248405C8 */   addiu $a0, %lo(D_801405C8) # addiu $a0, $a0, 0x5c8
/* B1BB10 800A4970 3C048014 */  lui   $a0, %hi(D_801405D0) # $a0, 0x8014
/* B1BB14 800A4974 0C00084C */  jal   DebugMessage
/* B1BB18 800A4978 248405D0 */   addiu $a0, %lo(D_801405D0) # addiu $a0, $a0, 0x5d0
/* B1BB1C 800A497C 3C048014 */  lui   $a0, %hi(D_80140604) # $a0, 0x8014
/* B1BB20 800A4980 0C00084C */  jal   DebugMessage
/* B1BB24 800A4984 24840604 */   addiu $a0, %lo(D_80140604) # addiu $a0, $a0, 0x604
/* B1BB28 800A4988 8FA5002C */  lw    $a1, 0x2c($sp)
.L800A498C:
/* B1BB2C 800A498C 50A00004 */  beql  $a1, $zero, .L800A49A0
/* B1BB30 800A4990 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1BB34 800A4994 0C0294BE */  jal   func_800A52F8
/* B1BB38 800A4998 02002025 */   move  $a0, $s0
/* B1BB3C 800A499C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A49A0:
/* B1BB40 800A49A0 8FB00018 */  lw    $s0, 0x18($sp)
/* B1BB44 800A49A4 27BD0020 */  addiu $sp, $sp, 0x20
/* B1BB48 800A49A8 03E00008 */  jr    $ra
/* B1BB4C 800A49AC 00000000 */   nop   

glabel func_800A49B0
/* B1BB50 800A49B0 90820001 */  lbu   $v0, 1($a0)
/* B1BB54 800A49B4 3C0E800A */  lui   $t6, %hi(func_800A4D9C) # $t6, 0x800a
/* B1BB58 800A49B8 25CE4D9C */  addiu $t6, %lo(func_800A4D9C) # addiu $t6, $t6, 0x4d9c
/* B1BB5C 800A49BC 28410002 */  slti  $at, $v0, 2
/* B1BB60 800A49C0 50200004 */  beql  $at, $zero, .L800A49D4
/* B1BB64 800A49C4 28410004 */   slti  $at, $v0, 4
/* B1BB68 800A49C8 03E00008 */  jr    $ra
/* B1BB6C 800A49CC AC8E0030 */   sw    $t6, 0x30($a0)

/* B1BB70 800A49D0 28410004 */  slti  $at, $v0, 4
.L800A49D4:
/* B1BB74 800A49D4 10200005 */  beqz  $at, .L800A49EC
/* B1BB78 800A49D8 3C18800A */   lui   $t8, 0x800a
/* B1BB7C 800A49DC 3C0F800A */  lui   $t7, %hi(func_800A4EE0) # $t7, 0x800a
/* B1BB80 800A49E0 25EF4EE0 */  addiu $t7, %lo(func_800A4EE0) # addiu $t7, $t7, 0x4ee0
/* B1BB84 800A49E4 03E00008 */  jr    $ra
/* B1BB88 800A49E8 AC8F0030 */   sw    $t7, 0x30($a0)

.L800A49EC:
/* B1BB8C 800A49EC 27184E38 */  addiu $t8, $t8, 0x4e38
/* B1BB90 800A49F0 AC980030 */  sw    $t8, 0x30($a0)
/* B1BB94 800A49F4 03E00008 */  jr    $ra
/* B1BB98 800A49F8 00000000 */   nop   

/* B1BB9C 800A49FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1BBA0 800A4A00 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1BBA4 800A4A04 8C990030 */  lw    $t9, 0x30($a0)
/* B1BBA8 800A4A08 0320F809 */  jalr  $t9
/* B1BBAC 800A4A0C 00000000 */  nop   
/* B1BBB0 800A4A10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1BBB4 800A4A14 27BD0018 */  addiu $sp, $sp, 0x18
/* B1BBB8 800A4A18 03E00008 */  jr    $ra
/* B1BBBC 800A4A1C 00000000 */   nop   

glabel func_800A4A20
/* B1BBC0 800A4A20 3C0E8016 */  li    $t6, 0x80160000 # 0.000000
/* B1BBC4 800A4A24 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1BBC8 800A4A28 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1BBCC 800A4A2C AFBF0024 */  sw    $ra, 0x24($sp)
/* B1BBD0 800A4A30 AFB00020 */  sw    $s0, 0x20($sp)
/* B1BBD4 800A4A34 85CF0110 */  lh    $t7, 0x110($t6)
/* B1BBD8 800A4A38 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B1BBDC 800A4A3C C4280668 */  lwc1  $f8, 0x668($at)
/* B1BBE0 800A4A40 448F2000 */  mtc1  $t7, $f4
/* B1BBE4 800A4A44 C48A002C */  lwc1  $f10, 0x2c($a0)
/* B1BBE8 800A4A48 C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BBEC 800A4A4C 468021A0 */  cvt.s.w $f6, $f4
/* B1BBF0 800A4A50 44802000 */  mtc1  $zero, $f4
/* B1BBF4 800A4A54 46000306 */  mov.s $f12, $f0
/* B1BBF8 800A4A58 00808025 */  move  $s0, $a0
/* B1BBFC 800A4A5C 46083082 */  mul.s $f2, $f6, $f8
/* B1BC00 800A4A60 00000000 */  nop   
/* B1BC04 800A4A64 46025402 */  mul.s $f16, $f10, $f2
/* B1BC08 800A4A68 46100481 */  sub.s $f18, $f0, $f16
/* B1BC0C 800A4A6C E4920028 */  swc1  $f18, 0x28($a0)
/* B1BC10 800A4A70 C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BC14 800A4A74 4604003E */  c.le.s $f0, $f4
/* B1BC18 800A4A78 00000000 */  nop   
/* B1BC1C 800A4A7C 45000007 */  bc1f  .L800A4A9C
/* B1BC20 800A4A80 00000000 */   nop   
/* B1BC24 800A4A84 0C02926C */  jal   func_800A49B0
/* B1BC28 800A4A88 E7AC002C */   swc1  $f12, 0x2c($sp)
/* B1BC2C 800A4A8C 44803000 */  mtc1  $zero, $f6
/* B1BC30 800A4A90 C7AC002C */  lwc1  $f12, 0x2c($sp)
/* B1BC34 800A4A94 E6060028 */  swc1  $f6, 0x28($s0)
/* B1BC38 800A4A98 C6000028 */  lwc1  $f0, 0x28($s0)
.L800A4A9C:
/* B1BC3C 800A4A9C 460C0283 */  div.s $f10, $f0, $f12
/* B1BC40 800A4AA0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BC44 800A4AA4 44814000 */  mtc1  $at, $f8
/* B1BC48 800A4AA8 8E050020 */  lw    $a1, 0x20($s0)
/* B1BC4C 800A4AAC 92040000 */  lbu   $a0, ($s0)
/* B1BC50 800A4AB0 8E070024 */  lw    $a3, 0x24($s0)
/* B1BC54 800A4AB4 00A03025 */  move  $a2, $a1
/* B1BC58 800A4AB8 460A4401 */  sub.s $f16, $f8, $f10
/* B1BC5C 800A4ABC 0C028B9C */  jal   func_800A2E70
/* B1BC60 800A4AC0 E7B00010 */   swc1  $f16, 0x10($sp)
/* B1BC64 800A4AC4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1BC68 800A4AC8 8FB00020 */  lw    $s0, 0x20($sp)
/* B1BC6C 800A4ACC 27BD0030 */  addiu $sp, $sp, 0x30
/* B1BC70 800A4AD0 03E00008 */  jr    $ra
/* B1BC74 800A4AD4 00001025 */   move  $v0, $zero

glabel func_800A4AD8
/* B1BC78 800A4AD8 3C0F8016 */  li    $t7, 0x80160000 # 0.000000
/* B1BC7C 800A4ADC 8DEFFA90 */  lw    $t7, %lo(D_8015FA90)($t7)
/* B1BC80 800A4AE0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1BC84 800A4AE4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1BC88 800A4AE8 AFB00020 */  sw    $s0, 0x20($sp)
/* B1BC8C 800A4AEC 85F80110 */  lh    $t8, 0x110($t7)
/* B1BC90 800A4AF0 3C014680 */  li    $at, 0x46800000 # 0.000000
/* B1BC94 800A4AF4 44812000 */  mtc1  $at, $f4
/* B1BC98 800A4AF8 44985000 */  mtc1  $t8, $f10
/* B1BC9C 800A4AFC C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BCA0 800A4B00 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B1BCA4 800A4B04 46805420 */  cvt.s.w $f16, $f10
/* B1BCA8 800A4B08 46040182 */  mul.s $f6, $f0, $f4
/* B1BCAC 800A4B0C C432066C */  lwc1  $f18, 0x66c($at)
/* B1BCB0 800A4B10 C484002C */  lwc1  $f4, 0x2c($a0)
/* B1BCB4 800A4B14 44805000 */  mtc1  $zero, $f10
/* B1BCB8 800A4B18 00808025 */  move  $s0, $a0
/* B1BCBC 800A4B1C 46128082 */  mul.s $f2, $f16, $f18
/* B1BCC0 800A4B20 4600320D */  trunc.w.s $f8, $f6
/* B1BCC4 800A4B24 46022182 */  mul.s $f6, $f4, $f2
/* B1BCC8 800A4B28 44064000 */  mfc1  $a2, $f8
/* B1BCCC 800A4B2C 00000000 */  nop   
/* B1BCD0 800A4B30 00063400 */  sll   $a2, $a2, 0x10
/* B1BCD4 800A4B34 46060201 */  sub.s $f8, $f0, $f6
/* B1BCD8 800A4B38 00063403 */  sra   $a2, $a2, 0x10
/* B1BCDC 800A4B3C E4880028 */  swc1  $f8, 0x28($a0)
/* B1BCE0 800A4B40 C4800028 */  lwc1  $f0, 0x28($a0)
/* B1BCE4 800A4B44 460A003E */  c.le.s $f0, $f10
/* B1BCE8 800A4B48 00000000 */  nop   
/* B1BCEC 800A4B4C 45020008 */  bc1fl .L800A4B70
/* B1BCF0 800A4B50 3C014680 */   li    $at, 0x46800000 # 0.000000
/* B1BCF4 800A4B54 0C02926C */  jal   func_800A49B0
/* B1BCF8 800A4B58 A7A6002E */   sh    $a2, 0x2e($sp)
/* B1BCFC 800A4B5C 44808000 */  mtc1  $zero, $f16
/* B1BD00 800A4B60 87A6002E */  lh    $a2, 0x2e($sp)
/* B1BD04 800A4B64 E6100028 */  swc1  $f16, 0x28($s0)
/* B1BD08 800A4B68 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1BD0C 800A4B6C 3C014680 */  li    $at, 0x46800000 # 0.000000
.L800A4B70:
/* B1BD10 800A4B70 44819000 */  mtc1  $at, $f18
/* B1BD14 800A4B74 82080003 */  lb    $t0, 3($s0)
/* B1BD18 800A4B78 00062400 */  sll   $a0, $a2, 0x10
/* B1BD1C 800A4B7C 46120102 */  mul.s $f4, $f0, $f18
/* B1BD20 800A4B80 00042403 */  sra   $a0, $a0, 0x10
/* B1BD24 800A4B84 4600218D */  trunc.w.s $f6, $f4
/* B1BD28 800A4B88 44053000 */  mfc1  $a1, $f6
/* B1BD2C 800A4B8C 00000000 */  nop   
/* B1BD30 800A4B90 00052C00 */  sll   $a1, $a1, 0x10
/* B1BD34 800A4B94 05010011 */  bgez  $t0, .L800A4BDC
/* B1BD38 800A4B98 00052C03 */   sra   $a1, $a1, 0x10
/* B1BD3C 800A4B9C 00062400 */  sll   $a0, $a2, 0x10
/* B1BD40 800A4BA0 00042403 */  sra   $a0, $a0, 0x10
/* B1BD44 800A4BA4 0C01DE0D */  jal   func_80077834
/* B1BD48 800A4BA8 A7A5002C */   sh    $a1, 0x2c($sp)
/* B1BD4C 800A4BAC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BD50 800A4BB0 44814000 */  mtc1  $at, $f8
/* B1BD54 800A4BB4 87A5002C */  lh    $a1, 0x2c($sp)
/* B1BD58 800A4BB8 46004281 */  sub.s $f10, $f8, $f0
/* B1BD5C 800A4BBC 00052400 */  sll   $a0, $a1, 0x10
/* B1BD60 800A4BC0 00042403 */  sra   $a0, $a0, 0x10
/* B1BD64 800A4BC4 0C01DE0D */  jal   func_80077834
/* B1BD68 800A4BC8 E7AA0028 */   swc1  $f10, 0x28($sp)
/* B1BD6C 800A4BCC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BD70 800A4BD0 44818000 */  mtc1  $at, $f16
/* B1BD74 800A4BD4 10000009 */  b     .L800A4BFC
/* B1BD78 800A4BD8 46008081 */   sub.s $f2, $f16, $f0
.L800A4BDC:
/* B1BD7C 800A4BDC 0C01DE1C */  jal   func_80077870
/* B1BD80 800A4BE0 A7A5002C */   sh    $a1, 0x2c($sp)
/* B1BD84 800A4BE4 87A5002C */  lh    $a1, 0x2c($sp)
/* B1BD88 800A4BE8 E7A00028 */  swc1  $f0, 0x28($sp)
/* B1BD8C 800A4BEC 00052400 */  sll   $a0, $a1, 0x10
/* B1BD90 800A4BF0 0C01DE1C */  jal   func_80077870
/* B1BD94 800A4BF4 00042403 */   sra   $a0, $a0, 0x10
/* B1BD98 800A4BF8 46000086 */  mov.s $f2, $f0
.L800A4BFC:
/* B1BD9C 800A4BFC 44809000 */  mtc1  $zero, $f18
/* B1BDA0 800A4C00 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1BDA4 800A4C04 44813000 */  mtc1  $at, $f6
/* B1BDA8 800A4C08 46121032 */  c.eq.s $f2, $f18
/* B1BDAC 800A4C0C C7A40028 */  lwc1  $f4, 0x28($sp)
/* B1BDB0 800A4C10 45030004 */  bc1tl .L800A4C24
/* B1BDB4 800A4C14 44801000 */   mtc1  $zero, $f2
/* B1BDB8 800A4C18 10000003 */  b     .L800A4C28
/* B1BDBC 800A4C1C 46041083 */   div.s $f2, $f2, $f4
/* B1BDC0 800A4C20 44801000 */  mtc1  $zero, $f2
.L800A4C24:
/* B1BDC4 800A4C24 00000000 */  nop   
.L800A4C28:
/* B1BDC8 800A4C28 46023201 */  sub.s $f8, $f6, $f2
/* B1BDCC 800A4C2C 8E050020 */  lw    $a1, 0x20($s0)
/* B1BDD0 800A4C30 92040000 */  lbu   $a0, ($s0)
/* B1BDD4 800A4C34 8E070024 */  lw    $a3, 0x24($s0)
/* B1BDD8 800A4C38 E7A80010 */  swc1  $f8, 0x10($sp)
/* B1BDDC 800A4C3C 0C028B9C */  jal   func_800A2E70
/* B1BDE0 800A4C40 00A03025 */   move  $a2, $a1
/* B1BDE4 800A4C44 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1BDE8 800A4C48 8FB00020 */  lw    $s0, 0x20($sp)
/* B1BDEC 800A4C4C 27BD0030 */  addiu $sp, $sp, 0x30
/* B1BDF0 800A4C50 03E00008 */  jr    $ra
/* B1BDF4 800A4C54 00001025 */   move  $v0, $zero

glabel func_800A4C58
/* B1BDF8 800A4C58 27BDFD70 */  addiu $sp, $sp, -0x290
/* B1BDFC 800A4C5C AFB00020 */  sw    $s0, 0x20($sp)
/* B1BE00 800A4C60 00808025 */  move  $s0, $a0
/* B1BE04 800A4C64 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1BE08 800A4C68 C6040018 */  lwc1  $f4, 0x18($s0)
/* B1BE0C 800A4C6C 8E070020 */  lw    $a3, 0x20($s0)
/* B1BE10 800A4C70 92060000 */  lbu   $a2, ($s0)
/* B1BE14 800A4C74 4600218D */  trunc.w.s $f6, $f4
/* B1BE18 800A4C78 8C840008 */  lw    $a0, 8($a0)
/* B1BE1C 800A4C7C 44053000 */  mfc1  $a1, $f6
/* B1BE20 800A4C80 0C028763 */  jal   func_800A1D8C
/* B1BE24 800A4C84 00000000 */   nop   
/* B1BE28 800A4C88 920F0001 */  lbu   $t7, 1($s0)
/* B1BE2C 800A4C8C 27A70038 */  addiu $a3, $sp, 0x38
/* B1BE30 800A4C90 31F80001 */  andi  $t8, $t7, 1
/* B1BE34 800A4C94 5300001B */  beql  $t8, $zero, .L800A4D04
/* B1BE38 800A4C98 C6000028 */   lwc1  $f0, 0x28($s0)
/* B1BE3C 800A4C9C C6000018 */  lwc1  $f0, 0x18($s0)
/* B1BE40 800A4CA0 C6120014 */  lwc1  $f18, 0x14($s0)
/* B1BE44 800A4CA4 4600020D */  trunc.w.s $f8, $f0
/* B1BE48 800A4CA8 4600910D */  trunc.w.s $f4, $f18
/* B1BE4C 800A4CAC 44054000 */  mfc1  $a1, $f8
/* B1BE50 800A4CB0 00000000 */  nop   
/* B1BE54 800A4CB4 44855000 */  mtc1  $a1, $f10
/* B1BE58 800A4CB8 44092000 */  mfc1  $t1, $f4
/* B1BE5C 800A4CBC 24A50001 */  addiu $a1, $a1, 1
/* B1BE60 800A4CC0 46805420 */  cvt.s.w $f16, $f10
/* B1BE64 800A4CC4 00A9082A */  slt   $at, $a1, $t1
/* B1BE68 800A4CC8 14200002 */  bnez  $at, .L800A4CD4
/* B1BE6C 800A4CCC 46100081 */   sub.s $f2, $f0, $f16
/* B1BE70 800A4CD0 00002825 */  move  $a1, $zero
.L800A4CD4:
/* B1BE74 800A4CD4 8E040008 */  lw    $a0, 8($s0)
/* B1BE78 800A4CD8 92060000 */  lbu   $a2, ($s0)
/* B1BE7C 800A4CDC 0C028763 */  jal   func_800A1D8C
/* B1BE80 800A4CE0 E7A20030 */   swc1  $f2, 0x30($sp)
/* B1BE84 800A4CE4 C7A20030 */  lwc1  $f2, 0x30($sp)
/* B1BE88 800A4CE8 8E050020 */  lw    $a1, 0x20($s0)
/* B1BE8C 800A4CEC 92040000 */  lbu   $a0, ($s0)
/* B1BE90 800A4CF0 27A70038 */  addiu $a3, $sp, 0x38
/* B1BE94 800A4CF4 E7A20010 */  swc1  $f2, 0x10($sp)
/* B1BE98 800A4CF8 0C028B9C */  jal   func_800A2E70
/* B1BE9C 800A4CFC 00A03025 */   move  $a2, $a1
/* B1BEA0 800A4D00 C6000028 */  lwc1  $f0, 0x28($s0)
.L800A4D04:
/* B1BEA4 800A4D04 44803000 */  mtc1  $zero, $f6
/* B1BEA8 800A4D08 3C0A8016 */  lui   $t2, %hi(D_8015FA90) # $t2, 0x8016
/* B1BEAC 800A4D0C 46003032 */  c.eq.s $f6, $f0
/* B1BEB0 800A4D10 00000000 */  nop   
/* B1BEB4 800A4D14 4503001D */  bc1tl .L800A4D8C
/* B1BEB8 800A4D18 8FBF0024 */   lw    $ra, 0x24($sp)
/* B1BEBC 800A4D1C 8D4AFA90 */  lw    $t2, %lo(D_8015FA90)($t2)
/* B1BEC0 800A4D20 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B1BEC4 800A4D24 C4300670 */  lwc1  $f16, 0x670($at)
/* B1BEC8 800A4D28 854B0110 */  lh    $t3, 0x110($t2)
/* B1BECC 800A4D2C C612002C */  lwc1  $f18, 0x2c($s0)
/* B1BED0 800A4D30 44806000 */  mtc1  $zero, $f12
/* B1BED4 800A4D34 448B4000 */  mtc1  $t3, $f8
/* B1BED8 800A4D38 00000000 */  nop   
/* B1BEDC 800A4D3C 468042A0 */  cvt.s.w $f10, $f8
/* B1BEE0 800A4D40 46105082 */  mul.s $f2, $f10, $f16
/* B1BEE4 800A4D44 00000000 */  nop   
/* B1BEE8 800A4D48 46029102 */  mul.s $f4, $f18, $f2
/* B1BEEC 800A4D4C 46040181 */  sub.s $f6, $f0, $f4
/* B1BEF0 800A4D50 E6060028 */  swc1  $f6, 0x28($s0)
/* B1BEF4 800A4D54 C6000028 */  lwc1  $f0, 0x28($s0)
/* B1BEF8 800A4D58 460C003E */  c.le.s $f0, $f12
/* B1BEFC 800A4D5C 00000000 */  nop   
/* B1BF00 800A4D60 45000003 */  bc1f  .L800A4D70
/* B1BF04 800A4D64 00000000 */   nop   
/* B1BF08 800A4D68 10000007 */  b     .L800A4D88
/* B1BF0C 800A4D6C E60C0028 */   swc1  $f12, 0x28($s0)
.L800A4D70:
/* B1BF10 800A4D70 8E050020 */  lw    $a1, 0x20($s0)
/* B1BF14 800A4D74 92040000 */  lbu   $a0, ($s0)
/* B1BF18 800A4D78 8E070024 */  lw    $a3, 0x24($s0)
/* B1BF1C 800A4D7C E7A00010 */  swc1  $f0, 0x10($sp)
/* B1BF20 800A4D80 0C028B9C */  jal   func_800A2E70
/* B1BF24 800A4D84 00A03025 */   move  $a2, $a1
.L800A4D88:
/* B1BF28 800A4D88 8FBF0024 */  lw    $ra, 0x24($sp)
.L800A4D8C:
/* B1BF2C 800A4D8C 8FB00020 */  lw    $s0, 0x20($sp)
/* B1BF30 800A4D90 27BD0290 */  addiu $sp, $sp, 0x290
/* B1BF34 800A4D94 03E00008 */  jr    $ra
/* B1BF38 800A4D98 00000000 */   nop   

glabel func_800A4D9C
/* B1BF3C 800A4D9C 3C0E8016 */  li    $t6, 0x80160000 # 0.000000
/* B1BF40 800A4DA0 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1BF44 800A4DA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1BF48 800A4DA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1BF4C 800A4DAC 85CF0110 */  lh    $t7, 0x110($t6)
/* B1BF50 800A4DB0 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B1BF54 800A4DB4 C4280674 */  lwc1  $f8, 0x674($at)
/* B1BF58 800A4DB8 448F2000 */  mtc1  $t7, $f4
/* B1BF5C 800A4DBC C490001C */  lwc1  $f16, 0x1c($a0)
/* B1BF60 800A4DC0 C48A0018 */  lwc1  $f10, 0x18($a0)
/* B1BF64 800A4DC4 468021A0 */  cvt.s.w $f6, $f4
/* B1BF68 800A4DC8 46083082 */  mul.s $f2, $f6, $f8
/* B1BF6C 800A4DCC 44803000 */  mtc1  $zero, $f6
/* B1BF70 800A4DD0 46028482 */  mul.s $f18, $f16, $f2
/* B1BF74 800A4DD4 46125100 */  add.s $f4, $f10, $f18
/* B1BF78 800A4DD8 E4840018 */  swc1  $f4, 0x18($a0)
/* B1BF7C 800A4DDC C4800018 */  lwc1  $f0, 0x18($a0)
/* B1BF80 800A4DE0 4606003C */  c.lt.s $f0, $f6
/* B1BF84 800A4DE4 00000000 */  nop   
/* B1BF88 800A4DE8 45020006 */  bc1fl .L800A4E04
/* B1BF8C 800A4DEC C4820014 */   lwc1  $f2, 0x14($a0)
/* B1BF90 800A4DF0 C4880014 */  lwc1  $f8, 0x14($a0)
/* B1BF94 800A4DF4 46080400 */  add.s $f16, $f0, $f8
/* B1BF98 800A4DF8 10000008 */  b     .L800A4E1C
/* B1BF9C 800A4DFC E4900018 */   swc1  $f16, 0x18($a0)
/* B1BFA0 800A4E00 C4820014 */  lwc1  $f2, 0x14($a0)
.L800A4E04:
/* B1BFA4 800A4E04 4600103E */  c.le.s $f2, $f0
/* B1BFA8 800A4E08 00000000 */  nop   
/* B1BFAC 800A4E0C 45000003 */  bc1f  .L800A4E1C
/* B1BFB0 800A4E10 00000000 */   nop   
/* B1BFB4 800A4E14 46020281 */  sub.s $f10, $f0, $f2
/* B1BFB8 800A4E18 E48A0018 */  swc1  $f10, 0x18($a0)
.L800A4E1C:
/* B1BFBC 800A4E1C 0C029316 */  jal   func_800A4C58
/* B1BFC0 800A4E20 00000000 */   nop   
/* B1BFC4 800A4E24 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1BFC8 800A4E28 27BD0018 */  addiu $sp, $sp, 0x18
/* B1BFCC 800A4E2C 00001025 */  move  $v0, $zero
/* B1BFD0 800A4E30 03E00008 */  jr    $ra
/* B1BFD4 800A4E34 00000000 */   nop   

/* B1BFD8 800A4E38 3C0E8016 */  lui   $t6, %hi(D_8015FA90) # $t6, 0x8016
/* B1BFDC 800A4E3C 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1BFE0 800A4E40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1BFE4 800A4E44 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1BFE8 800A4E48 85CF0110 */  lh    $t7, 0x110($t6)
/* B1BFEC 800A4E4C 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B1BFF0 800A4E50 C4280678 */  lwc1  $f8, 0x678($at)
/* B1BFF4 800A4E54 448F2000 */  mtc1  $t7, $f4
/* B1BFF8 800A4E58 C490001C */  lwc1  $f16, 0x1c($a0)
/* B1BFFC 800A4E5C C48A0018 */  lwc1  $f10, 0x18($a0)
/* B1C000 800A4E60 468021A0 */  cvt.s.w $f6, $f4
/* B1C004 800A4E64 C48C000C */  lwc1  $f12, 0xc($a0)
/* B1C008 800A4E68 46083082 */  mul.s $f2, $f6, $f8
/* B1C00C 800A4E6C 00000000 */  nop   
/* B1C010 800A4E70 46028482 */  mul.s $f18, $f16, $f2
/* B1C014 800A4E74 46125100 */  add.s $f4, $f10, $f18
/* B1C018 800A4E78 E4840018 */  swc1  $f4, 0x18($a0)
/* B1C01C 800A4E7C C4800018 */  lwc1  $f0, 0x18($a0)
/* B1C020 800A4E80 460C003C */  c.lt.s $f0, $f12
/* B1C024 800A4E84 00000000 */  nop   
/* B1C028 800A4E88 45000006 */  bc1f  .L800A4EA4
/* B1C02C 800A4E8C 00000000 */   nop   
/* B1C030 800A4E90 460C0181 */  sub.s $f6, $f0, $f12
/* B1C034 800A4E94 C4880010 */  lwc1  $f8, 0x10($a0)
/* B1C038 800A4E98 46083400 */  add.s $f16, $f6, $f8
/* B1C03C 800A4E9C 10000009 */  b     .L800A4EC4
/* B1C040 800A4EA0 E4900018 */   swc1  $f16, 0x18($a0)
.L800A4EA4:
/* B1C044 800A4EA4 C4820010 */  lwc1  $f2, 0x10($a0)
/* B1C048 800A4EA8 4600103E */  c.le.s $f2, $f0
/* B1C04C 800A4EAC 00000000 */  nop   
/* B1C050 800A4EB0 45000004 */  bc1f  .L800A4EC4
/* B1C054 800A4EB4 00000000 */   nop   
/* B1C058 800A4EB8 46020281 */  sub.s $f10, $f0, $f2
/* B1C05C 800A4EBC 460C5480 */  add.s $f18, $f10, $f12
/* B1C060 800A4EC0 E4920018 */  swc1  $f18, 0x18($a0)
.L800A4EC4:
/* B1C064 800A4EC4 0C029316 */  jal   func_800A4C58
/* B1C068 800A4EC8 00000000 */   nop   
/* B1C06C 800A4ECC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1C070 800A4ED0 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C074 800A4ED4 00001025 */  move  $v0, $zero
/* B1C078 800A4ED8 03E00008 */  jr    $ra
/* B1C07C 800A4EDC 00000000 */   nop   

glabel func_800A4EE0
/* B1C080 800A4EE0 3C0E8016 */  lui   $t6, %hi(D_8015FA90) # $t6, 0x8016
/* B1C084 800A4EE4 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B1C088 800A4EE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1C08C 800A4EEC AFBF001C */  sw    $ra, 0x1c($sp)
/* B1C090 800A4EF0 AFB00018 */  sw    $s0, 0x18($sp)
/* B1C094 800A4EF4 85CF0110 */  lh    $t7, 0x110($t6)
/* B1C098 800A4EF8 C4800018 */  lwc1  $f0, 0x18($a0)
/* B1C09C 800A4EFC C48C0010 */  lwc1  $f12, 0x10($a0)
/* B1C0A0 800A4F00 448F2000 */  mtc1  $t7, $f4
/* B1C0A4 800A4F04 3C018014 */  li    $at, 0x80140000 # 0.000000
/* B1C0A8 800A4F08 46006032 */  c.eq.s $f12, $f0
/* B1C0AC 800A4F0C C428067C */  lwc1  $f8, 0x67c($at)
/* B1C0B0 800A4F10 468021A0 */  cvt.s.w $f6, $f4
/* B1C0B4 800A4F14 00808025 */  move  $s0, $a0
/* B1C0B8 800A4F18 46083382 */  mul.s $f14, $f6, $f8
/* B1C0BC 800A4F1C 4502000D */  bc1fl .L800A4F54
/* B1C0C0 800A4F20 C602001C */   lwc1  $f2, 0x1c($s0)
/* B1C0C4 800A4F24 4600028D */  trunc.w.s $f10, $f0
/* B1C0C8 800A4F28 8C840008 */  lw    $a0, 8($a0)
/* B1C0CC 800A4F2C 92060000 */  lbu   $a2, ($s0)
/* B1C0D0 800A4F30 8E070020 */  lw    $a3, 0x20($s0)
/* B1C0D4 800A4F34 44055000 */  mfc1  $a1, $f10
/* B1C0D8 800A4F38 0C028763 */  jal   func_800A1D8C
/* B1C0DC 800A4F3C 00000000 */   nop   
/* B1C0E0 800A4F40 0C029316 */  jal   func_800A4C58
/* B1C0E4 800A4F44 02002025 */   move  $a0, $s0
/* B1C0E8 800A4F48 10000021 */  b     .L800A4FD0
/* B1C0EC 800A4F4C 24020001 */   li    $v0, 1
/* B1C0F0 800A4F50 C602001C */  lwc1  $f2, 0x1c($s0)
.L800A4F54:
/* B1C0F4 800A4F54 44808000 */  mtc1  $zero, $f16
/* B1C0F8 800A4F58 460E1482 */  mul.s $f18, $f2, $f14
/* B1C0FC 800A4F5C 46120100 */  add.s $f4, $f0, $f18
/* B1C100 800A4F60 E6040018 */  swc1  $f4, 0x18($s0)
/* B1C104 800A4F64 C6000018 */  lwc1  $f0, 0x18($s0)
/* B1C108 800A4F68 460C0181 */  sub.s $f6, $f0, $f12
/* B1C10C 800A4F6C 46023202 */  mul.s $f8, $f6, $f2
/* B1C110 800A4F70 4608803C */  c.lt.s $f16, $f8
/* B1C114 800A4F74 00000000 */  nop   
/* B1C118 800A4F78 45020004 */  bc1fl .L800A4F8C
/* B1C11C 800A4F7C 4610003C */   c.lt.s $f0, $f16
/* B1C120 800A4F80 10000010 */  b     .L800A4FC4
/* B1C124 800A4F84 E60C0018 */   swc1  $f12, 0x18($s0)
/* B1C128 800A4F88 4610003C */  c.lt.s $f0, $f16
.L800A4F8C:
/* B1C12C 800A4F8C 00000000 */  nop   
/* B1C130 800A4F90 45020006 */  bc1fl .L800A4FAC
/* B1C134 800A4F94 C6020014 */   lwc1  $f2, 0x14($s0)
/* B1C138 800A4F98 C60A0014 */  lwc1  $f10, 0x14($s0)
/* B1C13C 800A4F9C 460A0480 */  add.s $f18, $f0, $f10
/* B1C140 800A4FA0 10000008 */  b     .L800A4FC4
/* B1C144 800A4FA4 E6120018 */   swc1  $f18, 0x18($s0)
/* B1C148 800A4FA8 C6020014 */  lwc1  $f2, 0x14($s0)
.L800A4FAC:
/* B1C14C 800A4FAC 4600103E */  c.le.s $f2, $f0
/* B1C150 800A4FB0 00000000 */  nop   
/* B1C154 800A4FB4 45000003 */  bc1f  .L800A4FC4
/* B1C158 800A4FB8 00000000 */   nop   
/* B1C15C 800A4FBC 46020101 */  sub.s $f4, $f0, $f2
/* B1C160 800A4FC0 E6040018 */  swc1  $f4, 0x18($s0)
.L800A4FC4:
/* B1C164 800A4FC4 0C029316 */  jal   func_800A4C58
/* B1C168 800A4FC8 02002025 */   move  $a0, $s0
/* B1C16C 800A4FCC 00001025 */  move  $v0, $zero
.L800A4FD0:
/* B1C170 800A4FD0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1C174 800A4FD4 8FB00018 */  lw    $s0, 0x18($sp)
/* B1C178 800A4FD8 27BD0020 */  addiu $sp, $sp, 0x20
/* B1C17C 800A4FDC 03E00008 */  jr    $ra
/* B1C180 800A4FE0 00000000 */   nop   

glabel func_800A4FE4
/* B1C184 800A4FE4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1C188 800A4FE8 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* B1C18C 800A4FEC 44802000 */  mtc1  $zero, $f4
/* B1C190 800A4FF0 93AE0037 */  lbu   $t6, 0x37($sp)
/* B1C194 800A4FF4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1C198 800A4FF8 46046032 */  c.eq.s $f12, $f4
/* B1C19C 800A4FFC AFB00018 */  sw    $s0, 0x18($sp)
/* B1C1A0 800A5000 AFA50024 */  sw    $a1, 0x24($sp)
/* B1C1A4 800A5004 AFA60028 */  sw    $a2, 0x28($sp)
/* B1C1A8 800A5008 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1C1AC 800A500C 00808025 */  move  $s0, $a0
/* B1C1B0 800A5010 45010035 */  bc1t  .L800A50E8
/* B1C1B4 800A5014 A08E0001 */   sb    $t6, 1($a0)
/* B1C1B8 800A5018 8FAF0024 */  lw    $t7, 0x24($sp)
/* B1C1BC 800A501C 8C980008 */  lw    $t8, 8($a0)
/* B1C1C0 800A5020 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* B1C1C4 800A5024 55F80007 */  bnel  $t7, $t8, .L800A5044
/* B1C1C8 800A5028 44805000 */   mtc1  $zero, $f10
/* B1C1CC 800A502C C4880018 */  lwc1  $f8, 0x18($a0)
/* B1C1D0 800A5030 46083032 */  c.eq.s $f6, $f8
/* B1C1D4 800A5034 00000000 */  nop   
/* B1C1D8 800A5038 4501002B */  bc1t  .L800A50E8
/* B1C1DC 800A503C 00000000 */   nop   
/* B1C1E0 800A5040 44805000 */  mtc1  $zero, $f10
.L800A5044:
/* B1C1E4 800A5044 02002025 */  move  $a0, $s0
/* B1C1E8 800A5048 83A2003F */  lb    $v0, 0x3f($sp)
/* B1C1EC 800A504C 460A603C */  c.lt.s $f12, $f10
/* B1C1F0 800A5050 00000000 */  nop   
/* B1C1F4 800A5054 4500000A */  bc1f  .L800A5080
/* B1C1F8 800A5058 00000000 */   nop   
/* B1C1FC 800A505C 0C02926C */  jal   func_800A49B0
/* B1C200 800A5060 E7AC0038 */   swc1  $f12, 0x38($sp)
/* B1C204 800A5064 02002025 */  move  $a0, $s0
/* B1C208 800A5068 8E050024 */  lw    $a1, 0x24($s0)
/* B1C20C 800A506C 0C0295DD */  jal   func_800A5774
/* B1C210 800A5070 8E060020 */   lw    $a2, 0x20($s0)
/* B1C214 800A5074 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* B1C218 800A5078 10000014 */  b     .L800A50CC
/* B1C21C 800A507C 46006307 */   neg.s $f12, $f12
.L800A5080:
/* B1C220 800A5080 10400006 */  beqz  $v0, .L800A509C
/* B1C224 800A5084 3C08800A */   li    $t0, 0x800A0000 # 0.000000
/* B1C228 800A5088 3C19800A */  li    $t9, 0x800A0000 # 0.000000
/* B1C22C 800A508C 27394AD8 */  addiu $t9, %lo(func_800A4AD8) # addiu $t9, $t9, 0x4ad8
/* B1C230 800A5090 AE190030 */  sw    $t9, 0x30($s0)
/* B1C234 800A5094 10000003 */  b     .L800A50A4
/* B1C238 800A5098 A2020003 */   sb    $v0, 3($s0)
.L800A509C:
/* B1C23C 800A509C 25084A20 */  addiu $t0, %lo(func_800A4A20) # addiu $t0, $t0, 0x4a20
/* B1C240 800A50A0 AE080030 */  sw    $t0, 0x30($s0)
.L800A50A4:
/* B1C244 800A50A4 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* B1C248 800A50A8 92060000 */  lbu   $a2, ($s0)
/* B1C24C 800A50AC 8E070024 */  lw    $a3, 0x24($s0)
/* B1C250 800A50B0 4600848D */  trunc.w.s $f18, $f16
/* B1C254 800A50B4 E7AC0038 */  swc1  $f12, 0x38($sp)
/* B1C258 800A50B8 8FA40024 */  lw    $a0, 0x24($sp)
/* B1C25C 800A50BC 44059000 */  mfc1  $a1, $f18
/* B1C260 800A50C0 0C028763 */  jal   func_800A1D8C
/* B1C264 800A50C4 00000000 */   nop   
/* B1C268 800A50C8 C7AC0038 */  lwc1  $f12, 0x38($sp)
.L800A50CC:
/* B1C26C 800A50CC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1C270 800A50D0 44813000 */  mtc1  $at, $f6
/* B1C274 800A50D4 44812000 */  mtc1  $at, $f4
/* B1C278 800A50D8 460C3203 */  div.s $f8, $f6, $f12
/* B1C27C 800A50DC E6040028 */  swc1  $f4, 0x28($s0)
/* B1C280 800A50E0 1000000E */  b     .L800A511C
/* B1C284 800A50E4 E608002C */   swc1  $f8, 0x2c($s0)
.L800A50E8:
/* B1C288 800A50E8 0C02926C */  jal   func_800A49B0
/* B1C28C 800A50EC 02002025 */   move  $a0, $s0
/* B1C290 800A50F0 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* B1C294 800A50F4 8FA40024 */  lw    $a0, 0x24($sp)
/* B1C298 800A50F8 92060000 */  lbu   $a2, ($s0)
/* B1C29C 800A50FC 4600540D */  trunc.w.s $f16, $f10
/* B1C2A0 800A5100 8E070020 */  lw    $a3, 0x20($s0)
/* B1C2A4 800A5104 44058000 */  mfc1  $a1, $f16
/* B1C2A8 800A5108 0C028763 */  jal   func_800A1D8C
/* B1C2AC 800A510C 00000000 */   nop   
/* B1C2B0 800A5110 44809000 */  mtc1  $zero, $f18
/* B1C2B4 800A5114 00000000 */  nop   
/* B1C2B8 800A5118 E6120028 */  swc1  $f18, 0x28($s0)
.L800A511C:
/* B1C2BC 800A511C 8FAB0024 */  lw    $t3, 0x24($sp)
/* B1C2C0 800A5120 AE0B0008 */  sw    $t3, 8($s0)
/* B1C2C4 800A5124 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* B1C2C8 800A5128 E604000C */  swc1  $f4, 0xc($s0)
/* B1C2CC 800A512C C7A60030 */  lwc1  $f6, 0x30($sp)
/* B1C2D0 800A5130 E6060010 */  swc1  $f6, 0x10($s0)
/* B1C2D4 800A5134 0C0287F2 */  jal   func_800A1FC8
/* B1C2D8 800A5138 8FA40024 */   lw    $a0, 0x24($sp)
/* B1C2DC 800A513C 44824000 */  mtc1  $v0, $f8
/* B1C2E0 800A5140 92030001 */  lbu   $v1, 1($s0)
/* B1C2E4 800A5144 468042A0 */  cvt.s.w $f10, $f8
/* B1C2E8 800A5148 28610004 */  slti  $at, $v1, 4
/* B1C2EC 800A514C 14200004 */  bnez  $at, .L800A5160
/* B1C2F0 800A5150 E60A0014 */   swc1  $f10, 0x14($s0)
/* B1C2F4 800A5154 44808000 */  mtc1  $zero, $f16
/* B1C2F8 800A5158 1000000A */  b     .L800A5184
/* B1C2FC 800A515C E6100018 */   swc1  $f16, 0x18($s0)
.L800A5160:
/* B1C300 800A5160 C7B2002C */  lwc1  $f18, 0x2c($sp)
/* B1C304 800A5164 28610002 */  slti  $at, $v1, 2
/* B1C308 800A5168 10200006 */  beqz  $at, .L800A5184
/* B1C30C 800A516C E6120018 */   swc1  $f18, 0x18($s0)
/* B1C310 800A5170 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1C314 800A5174 44813000 */  mtc1  $at, $f6
/* B1C318 800A5178 C6040014 */  lwc1  $f4, 0x14($s0)
/* B1C31C 800A517C 46062201 */  sub.s $f8, $f4, $f6
/* B1C320 800A5180 E6080010 */  swc1  $f8, 0x10($s0)
.L800A5184:
/* B1C324 800A5184 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* B1C328 800A5188 E60A001C */  swc1  $f10, 0x1c($s0)
/* B1C32C 800A518C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1C330 800A5190 8FB00018 */  lw    $s0, 0x18($sp)
/* B1C334 800A5194 27BD0020 */  addiu $sp, $sp, 0x20
/* B1C338 800A5198 03E00008 */  jr    $ra
/* B1C33C 800A519C 00000000 */   nop   

glabel func_800A51A0
/* B1C340 800A51A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C344 800A51A4 44866000 */  mtc1  $a2, $f12
/* B1C348 800A51A8 44877000 */  mtc1  $a3, $f14
/* B1C34C 800A51AC C7A40038 */  lwc1  $f4, 0x38($sp)
/* B1C350 800A51B0 93AE003F */  lbu   $t6, 0x3f($sp)
/* B1C354 800A51B4 C7A60040 */  lwc1  $f6, 0x40($sp)
/* B1C358 800A51B8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C35C 800A51BC 44066000 */  mfc1  $a2, $f12
/* B1C360 800A51C0 44077000 */  mfc1  $a3, $f14
/* B1C364 800A51C4 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1C368 800A51C8 E7A40010 */  swc1  $f4, 0x10($sp)
/* B1C36C 800A51CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C370 800A51D0 0C0293F9 */  jal   func_800A4FE4
/* B1C374 800A51D4 E7A60018 */   swc1  $f6, 0x18($sp)
/* B1C378 800A51D8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C37C 800A51DC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C380 800A51E0 03E00008 */  jr    $ra
/* B1C384 800A51E4 00000000 */   nop   

/* B1C388 800A51E8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C38C 800A51EC AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C390 800A51F0 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C394 800A51F4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C398 800A51F8 0C028800 */  jal   func_800A2000
/* B1C39C 800A51FC 00A02025 */   move  $a0, $a1
/* B1C3A0 800A5200 44822000 */  mtc1  $v0, $f4
/* B1C3A4 800A5204 44800000 */  mtc1  $zero, $f0
/* B1C3A8 800A5208 240E0002 */  li    $t6, 2
/* B1C3AC 800A520C 468021A0 */  cvt.s.w $f6, $f4
/* B1C3B0 800A5210 44070000 */  mfc1  $a3, $f0
/* B1C3B4 800A5214 AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C3B8 800A5218 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C3BC 800A521C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C3C0 800A5220 3C063F80 */  lui   $a2, 0x3f80
/* B1C3C4 800A5224 E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C3C8 800A5228 0C029468 */  jal   func_800A51A0
/* B1C3CC 800A522C E7A00018 */   swc1  $f0, 0x18($sp)
/* B1C3D0 800A5230 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C3D4 800A5234 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C3D8 800A5238 03E00008 */  jr    $ra
/* B1C3DC 800A523C 00000000 */   nop   

/* B1C3E0 800A5240 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C3E4 800A5244 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C3E8 800A5248 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C3EC 800A524C AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C3F0 800A5250 AFA60030 */  sw    $a2, 0x30($sp)
/* B1C3F4 800A5254 0C028800 */  jal   func_800A2000
/* B1C3F8 800A5258 00A02025 */   move  $a0, $a1
/* B1C3FC 800A525C 44822000 */  mtc1  $v0, $f4
/* B1C400 800A5260 C7A80030 */  lwc1  $f8, 0x30($sp)
/* B1C404 800A5264 240E0002 */  li    $t6, 2
/* B1C408 800A5268 468021A0 */  cvt.s.w $f6, $f4
/* B1C40C 800A526C AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C410 800A5270 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C414 800A5274 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C418 800A5278 3C063F80 */  lui   $a2, 0x3f80
/* B1C41C 800A527C 24070000 */  li    $a3, 0
/* B1C420 800A5280 E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C424 800A5284 0C029468 */  jal   func_800A51A0
/* B1C428 800A5288 E7A80018 */   swc1  $f8, 0x18($sp)
/* B1C42C 800A528C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C430 800A5290 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C434 800A5294 03E00008 */  jr    $ra
/* B1C438 800A5298 00000000 */   nop   

/* B1C43C 800A529C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C440 800A52A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C444 800A52A4 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C448 800A52A8 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C44C 800A52AC AFA60030 */  sw    $a2, 0x30($sp)
/* B1C450 800A52B0 0C028800 */  jal   func_800A2000
/* B1C454 800A52B4 00A02025 */   move  $a0, $a1
/* B1C458 800A52B8 44822000 */  mtc1  $v0, $f4
/* B1C45C 800A52BC 44800000 */  mtc1  $zero, $f0
/* B1C460 800A52C0 240E0002 */  li    $t6, 2
/* B1C464 800A52C4 468021A0 */  cvt.s.w $f6, $f4
/* B1C468 800A52C8 44070000 */  mfc1  $a3, $f0
/* B1C46C 800A52CC AFAE0014 */  sw    $t6, 0x14($sp)
/* B1C470 800A52D0 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C474 800A52D4 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C478 800A52D8 8FA60030 */  lw    $a2, 0x30($sp)
/* B1C47C 800A52DC E7A60010 */  swc1  $f6, 0x10($sp)
/* B1C480 800A52E0 0C029468 */  jal   func_800A51A0
/* B1C484 800A52E4 E7A00018 */   swc1  $f0, 0x18($sp)
/* B1C488 800A52E8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C48C 800A52EC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C490 800A52F0 03E00008 */  jr    $ra
/* B1C494 800A52F4 00000000 */   nop   

glabel func_800A52F8
/* B1C498 800A52F8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C49C 800A52FC AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C4A0 800A5300 AFA40028 */  sw    $a0, 0x28($sp)
/* B1C4A4 800A5304 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C4A8 800A5308 0C028800 */  jal   func_800A2000
/* B1C4AC 800A530C 00A02025 */   move  $a0, $a1
/* B1C4B0 800A5310 44822000 */  mtc1  $v0, $f4
/* B1C4B4 800A5314 44800000 */  mtc1  $zero, $f0
/* B1C4B8 800A5318 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C4BC 800A531C 468021A0 */  cvt.s.w $f6, $f4
/* B1C4C0 800A5320 44070000 */  mfc1  $a3, $f0
/* B1C4C4 800A5324 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C4C8 800A5328 3C063F80 */  lui   $a2, 0x3f80
/* B1C4CC 800A532C AFA00014 */  sw    $zero, 0x14($sp)
/* B1C4D0 800A5330 E7A00018 */  swc1  $f0, 0x18($sp)
/* B1C4D4 800A5334 0C029468 */  jal   func_800A51A0
/* B1C4D8 800A5338 E7A60010 */   swc1  $f6, 0x10($sp)
/* B1C4DC 800A533C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C4E0 800A5340 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C4E4 800A5344 03E00008 */  jr    $ra
/* B1C4E8 800A5348 00000000 */   nop   

/* B1C4EC 800A534C 44800000 */  mtc1  $zero, $f0
/* B1C4F0 800A5350 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C4F4 800A5354 44866000 */  mtc1  $a2, $f12
/* B1C4F8 800A5358 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C4FC 800A535C 44070000 */  mfc1  $a3, $f0
/* B1C500 800A5360 3C063F80 */  lui   $a2, 0x3f80
/* B1C504 800A5364 AFA00014 */  sw    $zero, 0x14($sp)
/* B1C508 800A5368 E7A00010 */  swc1  $f0, 0x10($sp)
/* B1C50C 800A536C 0C029468 */  jal   func_800A51A0
/* B1C510 800A5370 E7AC0018 */   swc1  $f12, 0x18($sp)
/* B1C514 800A5374 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C518 800A5378 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C51C 800A537C 03E00008 */  jr    $ra
/* B1C520 800A5380 00000000 */   nop   

/* B1C524 800A5384 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1C528 800A5388 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1C52C 800A538C AFA40028 */  sw    $a0, 0x28($sp)
/* B1C530 800A5390 AFA5002C */  sw    $a1, 0x2c($sp)
/* B1C534 800A5394 AFA60030 */  sw    $a2, 0x30($sp)
/* B1C538 800A5398 0C028800 */  jal   func_800A2000
/* B1C53C 800A539C 00A02025 */   move  $a0, $a1
/* B1C540 800A53A0 44822000 */  mtc1  $v0, $f4
/* B1C544 800A53A4 44800000 */  mtc1  $zero, $f0
/* B1C548 800A53A8 8FA40028 */  lw    $a0, 0x28($sp)
/* B1C54C 800A53AC 468021A0 */  cvt.s.w $f6, $f4
/* B1C550 800A53B0 44070000 */  mfc1  $a3, $f0
/* B1C554 800A53B4 8FA5002C */  lw    $a1, 0x2c($sp)
/* B1C558 800A53B8 8FA60030 */  lw    $a2, 0x30($sp)
/* B1C55C 800A53BC AFA00014 */  sw    $zero, 0x14($sp)
/* B1C560 800A53C0 E7A00018 */  swc1  $f0, 0x18($sp)
/* B1C564 800A53C4 0C029468 */  jal   func_800A51A0
/* B1C568 800A53C8 E7A60010 */   swc1  $f6, 0x10($sp)
/* B1C56C 800A53CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1C570 800A53D0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1C574 800A53D4 03E00008 */  jr    $ra
/* B1C578 800A53D8 00000000 */   nop   

/* B1C57C 800A53DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1C580 800A53E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1C584 800A53E4 C4840014 */  lwc1  $f4, 0x14($a0)
/* B1C588 800A53E8 240E0002 */  li    $t6, 2
/* B1C58C 800A53EC A08E0001 */  sb    $t6, 1($a0)
/* B1C590 800A53F0 0C02926C */  jal   func_800A49B0
/* B1C594 800A53F4 E4840010 */   swc1  $f4, 0x10($a0)
/* B1C598 800A53F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1C59C 800A53FC 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C5A0 800A5400 03E00008 */  jr    $ra
/* B1C5A4 800A5404 00000000 */   nop   

/* B1C5A8 800A5408 C486001C */  lwc1  $f6, 0x1c($a0)
/* B1C5AC 800A540C C480000C */  lwc1  $f0, 0xc($a0)
/* B1C5B0 800A5410 C4840010 */  lwc1  $f4, 0x10($a0)
/* B1C5B4 800A5414 46003207 */  neg.s $f8, $f6
/* B1C5B8 800A5418 E4800010 */  swc1  $f0, 0x10($a0)
/* B1C5BC 800A541C E488001C */  swc1  $f8, 0x1c($a0)
/* B1C5C0 800A5420 03E00008 */  jr    $ra
/* B1C5C4 800A5424 E484000C */   swc1  $f4, 0xc($a0)

/* B1C5C8 800A5428 27BDFFF8 */  addiu $sp, $sp, -8
/* B1C5CC 800A542C AFB00004 */  sw    $s0, 4($sp)
/* B1C5D0 800A5430 90830000 */  lbu   $v1, ($a0)
/* B1C5D4 800A5434 00A08025 */  move  $s0, $a1
/* B1C5D8 800A5438 00001025 */  move  $v0, $zero
/* B1C5DC 800A543C 58600012 */  blezl $v1, .L800A5488
/* B1C5E0 800A5440 8FB00004 */   lw    $s0, 4($sp)
.L800A5444:
/* B1C5E4 800A5444 90E50000 */  lbu   $a1, ($a3)
/* B1C5E8 800A5448 24420001 */  addiu $v0, $v0, 1
/* B1C5EC 800A544C 24E70001 */  addiu $a3, $a3, 1
/* B1C5F0 800A5450 50A00009 */  beql  $a1, $zero, .L800A5478
/* B1C5F4 800A5454 0043082A */   slt   $at, $v0, $v1
/* B1C5F8 800A5458 88CF0000 */  lwl   $t7, ($a2)
/* B1C5FC 800A545C 98CF0003 */  lwr   $t7, 3($a2)
/* B1C600 800A5460 AA0F0000 */  swl   $t7, ($s0)
/* B1C604 800A5464 BA0F0003 */  swr   $t7, 3($s0)
/* B1C608 800A5468 94CF0004 */  lhu   $t7, 4($a2)
/* B1C60C 800A546C A60F0004 */  sh    $t7, 4($s0)
/* B1C610 800A5470 90830000 */  lbu   $v1, ($a0)
/* B1C614 800A5474 0043082A */  slt   $at, $v0, $v1
.L800A5478:
/* B1C618 800A5478 26100006 */  addiu $s0, $s0, 6
/* B1C61C 800A547C 1420FFF1 */  bnez  $at, .L800A5444
/* B1C620 800A5480 24C60006 */   addiu $a2, $a2, 6
/* B1C624 800A5484 8FB00004 */  lw    $s0, 4($sp)
.L800A5488:
/* B1C628 800A5488 03E00008 */  jr    $ra
/* B1C62C 800A548C 27BD0008 */   addiu $sp, $sp, 8

/* B1C630 800A5490 27BDFFF8 */  addiu $sp, $sp, -8
/* B1C634 800A5494 AFB00004 */  sw    $s0, 4($sp)
/* B1C638 800A5498 90830000 */  lbu   $v1, ($a0)
/* B1C63C 800A549C 00A08025 */  move  $s0, $a1
/* B1C640 800A54A0 00001025 */  move  $v0, $zero
/* B1C644 800A54A4 58600013 */  blezl $v1, .L800A54F4
/* B1C648 800A54A8 8FB00004 */   lw    $s0, 4($sp)
.L800A54AC:
/* B1C64C 800A54AC 90E50000 */  lbu   $a1, ($a3)
/* B1C650 800A54B0 24420001 */  addiu $v0, $v0, 1
/* B1C654 800A54B4 24E70001 */  addiu $a3, $a3, 1
/* B1C658 800A54B8 2CA50001 */  sltiu $a1, $a1, 1
/* B1C65C 800A54BC 50A00009 */  beql  $a1, $zero, .L800A54E4
/* B1C660 800A54C0 0043082A */   slt   $at, $v0, $v1
/* B1C664 800A54C4 88CF0000 */  lwl   $t7, ($a2)
/* B1C668 800A54C8 98CF0003 */  lwr   $t7, 3($a2)
/* B1C66C 800A54CC AA0F0000 */  swl   $t7, ($s0)
/* B1C670 800A54D0 BA0F0003 */  swr   $t7, 3($s0)
/* B1C674 800A54D4 94CF0004 */  lhu   $t7, 4($a2)
/* B1C678 800A54D8 A60F0004 */  sh    $t7, 4($s0)
/* B1C67C 800A54DC 90830000 */  lbu   $v1, ($a0)
/* B1C680 800A54E0 0043082A */  slt   $at, $v0, $v1
.L800A54E4:
/* B1C684 800A54E4 26100006 */  addiu $s0, $s0, 6
/* B1C688 800A54E8 1420FFF0 */  bnez  $at, .L800A54AC
/* B1C68C 800A54EC 24C60006 */   addiu $a2, $a2, 6
/* B1C690 800A54F0 8FB00004 */  lw    $s0, 4($sp)
.L800A54F4:
/* B1C694 800A54F4 03E00008 */  jr    $ra
/* B1C698 800A54F8 27BD0008 */   addiu $sp, $sp, 8

glabel func_800A54FC
/* B1C69C 800A54FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B1C6A0 800A5500 AFBF0034 */  sw    $ra, 0x34($sp)
/* B1C6A4 800A5504 AFB10030 */  sw    $s1, 0x30($sp)
/* B1C6A8 800A5508 AFB0002C */  sw    $s0, 0x2c($sp)
/* B1C6AC 800A550C F7B80020 */  sdc1  $f24, 0x20($sp)
/* B1C6B0 800A5510 F7B60018 */  sdc1  $f22, 0x18($sp)
/* B1C6B4 800A5514 F7B40010 */  sdc1  $f20, 0x10($sp)
/* B1C6B8 800A5518 AFA60040 */  sw    $a2, 0x40($sp)
/* B1C6BC 800A551C 908E0035 */  lbu   $t6, 0x35($a0)
/* B1C6C0 800A5520 00808025 */  move  $s0, $a0
/* B1C6C4 800A5524 00A08825 */  move  $s1, $a1
/* B1C6C8 800A5528 31CF0010 */  andi  $t7, $t6, 0x10
/* B1C6CC 800A552C 51E00007 */  beql  $t7, $zero, .L800A554C
/* B1C6D0 800A5530 8E020020 */   lw    $v0, 0x20($s0)
/* B1C6D4 800A5534 44800000 */  mtc1  $zero, $f0
/* B1C6D8 800A5538 00000000 */  nop   
/* B1C6DC 800A553C E4A00008 */  swc1  $f0, 8($a1)
/* B1C6E0 800A5540 10000030 */  b     .L800A5604
/* B1C6E4 800A5544 E4A00000 */   swc1  $f0, ($a1)
/* B1C6E8 800A5548 8E020020 */  lw    $v0, 0x20($s0)
.L800A554C:
/* B1C6EC 800A554C 87A40042 */  lh    $a0, 0x42($sp)
/* B1C6F0 800A5550 84580000 */  lh    $t8, ($v0)
/* B1C6F4 800A5554 84590004 */  lh    $t9, 4($v0)
/* B1C6F8 800A5558 44982000 */  mtc1  $t8, $f4
/* B1C6FC 800A555C 44993000 */  mtc1  $t9, $f6
/* B1C700 800A5560 46802520 */  cvt.s.w $f20, $f4
/* B1C704 800A5564 0C01DE1C */  jal   func_80077870
/* B1C708 800A5568 468035A0 */   cvt.s.w $f22, $f6
/* B1C70C 800A556C 46000606 */  mov.s $f24, $f0
/* B1C710 800A5570 0C01DE0D */  jal   func_80077834
/* B1C714 800A5574 87A40042 */   lh    $a0, 0x42($sp)
/* B1C718 800A5578 4600A202 */  mul.s $f8, $f20, $f0
/* B1C71C 800A557C 00000000 */  nop   
/* B1C720 800A5580 4618B282 */  mul.s $f10, $f22, $f24
/* B1C724 800A5584 00000000 */  nop   
/* B1C728 800A5588 4600B482 */  mul.s $f18, $f22, $f0
/* B1C72C 800A558C 00000000 */  nop   
/* B1C730 800A5590 4618A102 */  mul.s $f4, $f20, $f24
/* B1C734 800A5594 460A4400 */  add.s $f16, $f8, $f10
/* B1C738 800A5598 E6300000 */  swc1  $f16, ($s1)
/* B1C73C 800A559C 46049181 */  sub.s $f6, $f18, $f4
/* B1C740 800A55A0 E6260008 */  swc1  $f6, 8($s1)
/* B1C744 800A55A4 86080038 */  lh    $t0, 0x38($s0)
/* B1C748 800A55A8 8609003C */  lh    $t1, 0x3c($s0)
/* B1C74C 800A55AC 86040036 */  lh    $a0, 0x36($s0)
/* B1C750 800A55B0 44884000 */  mtc1  $t0, $f8
/* B1C754 800A55B4 44895000 */  mtc1  $t1, $f10
/* B1C758 800A55B8 46804520 */  cvt.s.w $f20, $f8
/* B1C75C 800A55BC 0C01DE1C */  jal   func_80077870
/* B1C760 800A55C0 468055A0 */   cvt.s.w $f22, $f10
/* B1C764 800A55C4 46000606 */  mov.s $f24, $f0
/* B1C768 800A55C8 0C01DE0D */  jal   func_80077834
/* B1C76C 800A55CC 86040036 */   lh    $a0, 0x36($s0)
/* B1C770 800A55D0 4600A402 */  mul.s $f16, $f20, $f0
/* B1C774 800A55D4 C6260000 */  lwc1  $f6, ($s1)
/* B1C778 800A55D8 4618B482 */  mul.s $f18, $f22, $f24
/* B1C77C 800A55DC 46128100 */  add.s $f4, $f16, $f18
/* B1C780 800A55E0 4600B282 */  mul.s $f10, $f22, $f0
/* B1C784 800A55E4 44800000 */  mtc1  $zero, $f0
/* B1C788 800A55E8 4618A402 */  mul.s $f16, $f20, $f24
/* B1C78C 800A55EC 46043201 */  sub.s $f8, $f6, $f4
/* B1C790 800A55F0 C6260008 */  lwc1  $f6, 8($s1)
/* B1C794 800A55F4 E6280000 */  swc1  $f8, ($s1)
/* B1C798 800A55F8 46105481 */  sub.s $f18, $f10, $f16
/* B1C79C 800A55FC 46123101 */  sub.s $f4, $f6, $f18
/* B1C7A0 800A5600 E6240008 */  swc1  $f4, 8($s1)
.L800A5604:
/* B1C7A4 800A5604 87AA0042 */  lh    $t2, 0x42($sp)
/* B1C7A8 800A5608 8E020020 */  lw    $v0, 0x20($s0)
/* B1C7AC 800A560C 860C003E */  lh    $t4, 0x3e($s0)
/* B1C7B0 800A5610 A60A0036 */  sh    $t2, 0x36($s0)
/* B1C7B4 800A5614 844B0000 */  lh    $t3, ($v0)
/* B1C7B8 800A5618 A60B0038 */  sh    $t3, 0x38($s0)
/* B1C7BC 800A561C A44C0000 */  sh    $t4, ($v0)
/* B1C7C0 800A5620 8E020020 */  lw    $v0, 0x20($s0)
/* B1C7C4 800A5624 860E0042 */  lh    $t6, 0x42($s0)
/* B1C7C8 800A5628 844D0004 */  lh    $t5, 4($v0)
/* B1C7CC 800A562C A60D003C */  sh    $t5, 0x3c($s0)
/* B1C7D0 800A5630 A44E0004 */  sh    $t6, 4($v0)
/* B1C7D4 800A5634 92030035 */  lbu   $v1, 0x35($s0)
/* B1C7D8 800A5638 306F0002 */  andi  $t7, $v1, 2
/* B1C7DC 800A563C 11E00013 */  beqz  $t7, .L800A568C
/* B1C7E0 800A5640 30780010 */   andi  $t8, $v1, 0x10
/* B1C7E4 800A5644 53000004 */  beql  $t8, $zero, .L800A5658
/* B1C7E8 800A5648 8E190020 */   lw    $t9, 0x20($s0)
/* B1C7EC 800A564C 10000009 */  b     .L800A5674
/* B1C7F0 800A5650 E6200004 */   swc1  $f0, 4($s1)
/* B1C7F4 800A5654 8E190020 */  lw    $t9, 0x20($s0)
.L800A5658:
/* B1C7F8 800A5658 8609003A */  lh    $t1, 0x3a($s0)
/* B1C7FC 800A565C 87280002 */  lh    $t0, 2($t9)
/* B1C800 800A5660 01095023 */  subu  $t2, $t0, $t1
/* B1C804 800A5664 448A4000 */  mtc1  $t2, $f8
/* B1C808 800A5668 00000000 */  nop   
/* B1C80C 800A566C 468042A0 */  cvt.s.w $f10, $f8
/* B1C810 800A5670 E62A0004 */  swc1  $f10, 4($s1)
.L800A5674:
/* B1C814 800A5674 8E020020 */  lw    $v0, 0x20($s0)
/* B1C818 800A5678 860C0040 */  lh    $t4, 0x40($s0)
/* B1C81C 800A567C 844B0002 */  lh    $t3, 2($v0)
/* B1C820 800A5680 A60B003A */  sh    $t3, 0x3a($s0)
/* B1C824 800A5684 10000005 */  b     .L800A569C
/* B1C828 800A5688 A44C0002 */   sh    $t4, 2($v0)
.L800A568C:
/* B1C82C 800A568C E6200004 */  swc1  $f0, 4($s1)
/* B1C830 800A5690 8E0D0020 */  lw    $t5, 0x20($s0)
/* B1C834 800A5694 85AE0002 */  lh    $t6, 2($t5)
/* B1C838 800A5698 A60E003A */  sh    $t6, 0x3a($s0)
.L800A569C:
/* B1C83C 800A569C 920F0035 */  lbu   $t7, 0x35($s0)
/* B1C840 800A56A0 31F8FFEF */  andi  $t8, $t7, 0xffef
/* B1C844 800A56A4 A2180035 */  sb    $t8, 0x35($s0)
/* B1C848 800A56A8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B1C84C 800A56AC 8FB10030 */  lw    $s1, 0x30($sp)
/* B1C850 800A56B0 8FB0002C */  lw    $s0, 0x2c($sp)
/* B1C854 800A56B4 D7B80020 */  ldc1  $f24, 0x20($sp)
/* B1C858 800A56B8 D7B60018 */  ldc1  $f22, 0x18($sp)
/* B1C85C 800A56BC D7B40010 */  ldc1  $f20, 0x10($sp)
/* B1C860 800A56C0 03E00008 */  jr    $ra
/* B1C864 800A56C4 27BD0038 */   addiu $sp, $sp, 0x38

/* B1C868 800A56C8 44856000 */  mtc1  $a1, $f12
/* B1C86C 800A56CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1C870 800A56D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1C874 800A56D4 44056000 */  mfc1  $a1, $f12
/* B1C878 800A56D8 0C02911E */  jal   func_800A4478
/* B1C87C 800A56DC 3C063F80 */   lui   $a2, 0x3f80
/* B1C880 800A56E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1C884 800A56E4 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C888 800A56E8 03E00008 */  jr    $ra
/* B1C88C 800A56EC 00000000 */   nop   

glabel func_800A56F0
/* B1C890 800A56F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1C894 800A56F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1C898 800A56F8 AFA40018 */  sw    $a0, 0x18($sp)
/* B1C89C 800A56FC AFA5001C */  sw    $a1, 0x1c($sp)
/* B1C8A0 800A5700 8C870020 */  lw    $a3, 0x20($a0)
/* B1C8A4 800A5704 3C058014 */  lui   $a1, %hi(D_80140608) # $a1, 0x8014
/* B1C8A8 800A5708 24A50608 */  addiu $a1, %lo(D_80140608) # addiu $a1, $a1, 0x608
/* B1C8AC 800A570C 10E00006 */  beqz  $a3, .L800A5728
/* B1C8B0 800A5710 3C048014 */   lui   $a0, %hi(D_8014061C) # $a0, 0x8014
/* B1C8B4 800A5714 00E02025 */  move  $a0, $a3
/* B1C8B8 800A5718 0C01EC35 */  jal   func_8007B0D4
/* B1C8BC 800A571C 24060E91 */   li    $a2, 3729
/* B1C8C0 800A5720 10000004 */  b     .L800A5734
/* B1C8C4 800A5724 8FAF0018 */   lw    $t7, 0x18($sp)
.L800A5728:
/* B1C8C8 800A5728 0C00084C */  jal   DebugMessage
/* B1C8CC 800A572C 2484061C */   addiu $a0, %lo(D_8014061C) # addiu $a0, $a0, 0x61c
/* B1C8D0 800A5730 8FAF0018 */  lw    $t7, 0x18($sp)
.L800A5734:
/* B1C8D4 800A5734 3C058014 */  lui   $a1, %hi(D_80140638) # $a1, 0x8014
/* B1C8D8 800A5738 24A50638 */  addiu $a1, %lo(D_80140638) # addiu $a1, $a1, 0x638
/* B1C8DC 800A573C 8DE40024 */  lw    $a0, 0x24($t7)
/* B1C8E0 800A5740 10800005 */  beqz  $a0, .L800A5758
/* B1C8E4 800A5744 00000000 */   nop   
/* B1C8E8 800A5748 0C01EC35 */  jal   func_8007B0D4
/* B1C8EC 800A574C 24060E93 */   li    $a2, 3731
/* B1C8F0 800A5750 10000005 */  b     .L800A5768
/* B1C8F4 800A5754 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A5758:
/* B1C8F8 800A5758 3C048014 */  lui   $a0, %hi(D_8014064C) # $a0, 0x8014
/* B1C8FC 800A575C 0C00084C */  jal   DebugMessage
/* B1C900 800A5760 2484064C */   addiu $a0, %lo(D_8014064C) # addiu $a0, $a0, 0x64c
/* B1C904 800A5764 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A5768:
/* B1C908 800A5768 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C90C 800A576C 03E00008 */  jr    $ra
/* B1C910 800A5770 00000000 */   nop   

glabel func_800A5774
/* B1C914 800A5774 908E0000 */  lbu   $t6, ($a0)
/* B1C918 800A5778 00001025 */  move  $v0, $zero
/* B1C91C 800A577C 19C0000E */  blez  $t6, .L800A57B8
/* B1C920 800A5780 00000000 */   nop   
/* B1C924 800A5784 88D80000 */  lwl   $t8, ($a2)
.L800A5788:
/* B1C928 800A5788 98D80003 */  lwr   $t8, 3($a2)
/* B1C92C 800A578C 24420001 */  addiu $v0, $v0, 1
/* B1C930 800A5790 24A50006 */  addiu $a1, $a1, 6
/* B1C934 800A5794 A8B8FFFA */  swl   $t8, -6($a1)
/* B1C938 800A5798 B8B8FFFD */  swr   $t8, -3($a1)
/* B1C93C 800A579C 94D80004 */  lhu   $t8, 4($a2)
/* B1C940 800A57A0 24C60006 */  addiu $a2, $a2, 6
/* B1C944 800A57A4 A4B8FFFE */  sh    $t8, -2($a1)
/* B1C948 800A57A8 90990000 */  lbu   $t9, ($a0)
/* B1C94C 800A57AC 0059082A */  slt   $at, $v0, $t9
/* B1C950 800A57B0 5420FFF5 */  bnezl $at, .L800A5788
/* B1C954 800A57B4 88D80000 */   lwl   $t8, ($a2)
.L800A57B8:
/* B1C958 800A57B8 03E00008 */  jr    $ra
/* B1C95C 800A57BC 00000000 */   nop   

glabel func_800A57C0
/* B1C960 800A57C0 27BDFF70 */  addiu $sp, $sp, -0x90
/* B1C964 800A57C4 AFBF005C */  sw    $ra, 0x5c($sp)
/* B1C968 800A57C8 AFBE0058 */  sw    $fp, 0x58($sp)
/* B1C96C 800A57CC AFB70054 */  sw    $s7, 0x54($sp)
/* B1C970 800A57D0 AFB60050 */  sw    $s6, 0x50($sp)
/* B1C974 800A57D4 AFB5004C */  sw    $s5, 0x4c($sp)
/* B1C978 800A57D8 AFB40048 */  sw    $s4, 0x48($sp)
/* B1C97C 800A57DC AFB30044 */  sw    $s3, 0x44($sp)
/* B1C980 800A57E0 AFB20040 */  sw    $s2, 0x40($sp)
/* B1C984 800A57E4 AFB1003C */  sw    $s1, 0x3c($sp)
/* B1C988 800A57E8 AFB00038 */  sw    $s0, 0x38($sp)
/* B1C98C 800A57EC F7BA0030 */  sdc1  $f26, 0x30($sp)
/* B1C990 800A57F0 F7B80028 */  sdc1  $f24, 0x28($sp)
/* B1C994 800A57F4 F7B60020 */  sdc1  $f22, 0x20($sp)
/* B1C998 800A57F8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* B1C99C 800A57FC 94CE0000 */  lhu   $t6, ($a2)
/* B1C9A0 800A5800 2417000A */  li    $s7, 10
/* B1C9A4 800A5804 00808025 */  move  $s0, $a0
/* B1C9A8 800A5808 01D70019 */  multu $t6, $s7
/* B1C9AC 800A580C 00A0A025 */  move  $s4, $a1
/* B1C9B0 800A5810 00C0A825 */  move  $s5, $a2
/* B1C9B4 800A5814 00E0B025 */  move  $s6, $a3
/* B1C9B8 800A5818 00A08825 */  move  $s1, $a1
/* B1C9BC 800A581C 27BE0064 */  addiu $fp, $sp, 0x64
/* B1C9C0 800A5820 00007812 */  mflo  $t7
/* B1C9C4 800A5824 01E5C021 */  addu  $t8, $t7, $a1
/* B1C9C8 800A5828 00B8082B */  sltu  $at, $a1, $t8
/* B1C9CC 800A582C 50200048 */  beql  $at, $zero, .L800A5950
/* B1C9D0 800A5830 8FBF005C */   lw    $ra, 0x5c($sp)
/* B1C9D4 800A5834 4480A000 */  mtc1  $zero, $f20
/* B1C9D8 800A5838 8FB300A0 */  lw    $s3, 0xa0($sp)
/* B1C9DC 800A583C C6640000 */  lwc1  $f4, ($s3)
.L800A5840:
/* B1C9E0 800A5840 96390000 */  lhu   $t9, ($s1)
/* B1C9E4 800A5844 02002025 */  move  $a0, $s0
/* B1C9E8 800A5848 4600218D */  trunc.w.s $f6, $f4
/* B1C9EC 800A584C 00194100 */  sll   $t0, $t9, 4
/* B1C9F0 800A5850 01169021 */  addu  $s2, $t0, $s6
/* B1C9F4 800A5854 03C02825 */  move  $a1, $fp
/* B1C9F8 800A5858 440A3000 */  mfc1  $t2, $f6
/* B1C9FC 800A585C 27A60070 */  addiu $a2, $sp, 0x70
/* B1CA00 800A5860 A64A0000 */  sh    $t2, ($s2)
/* B1CA04 800A5864 C6680004 */  lwc1  $f8, 4($s3)
/* B1CA08 800A5868 4600428D */  trunc.w.s $f10, $f8
/* B1CA0C 800A586C 440C5000 */  mfc1  $t4, $f10
/* B1CA10 800A5870 00000000 */  nop   
/* B1CA14 800A5874 A64C0002 */  sh    $t4, 2($s2)
/* B1CA18 800A5878 C6700008 */  lwc1  $f16, 8($s3)
/* B1CA1C 800A587C 4600848D */  trunc.w.s $f18, $f16
/* B1CA20 800A5880 440E9000 */  mfc1  $t6, $f18
/* B1CA24 800A5884 00000000 */  nop   
/* B1CA28 800A5888 A64E0004 */  sh    $t6, 4($s2)
/* B1CA2C 800A588C C6160030 */  lwc1  $f22, 0x30($s0)
/* B1CA30 800A5890 C6180034 */  lwc1  $f24, 0x34($s0)
/* B1CA34 800A5894 C61A0038 */  lwc1  $f26, 0x38($s0)
/* B1CA38 800A5898 E6140038 */  swc1  $f20, 0x38($s0)
/* B1CA3C 800A589C E6140034 */  swc1  $f20, 0x34($s0)
/* B1CA40 800A58A0 E6140030 */  swc1  $f20, 0x30($s0)
/* B1CA44 800A58A4 822F0006 */  lb    $t7, 6($s1)
/* B1CA48 800A58A8 448F2000 */  mtc1  $t7, $f4
/* B1CA4C 800A58AC 00000000 */  nop   
/* B1CA50 800A58B0 468021A0 */  cvt.s.w $f6, $f4
/* B1CA54 800A58B4 E7A60064 */  swc1  $f6, 0x64($sp)
/* B1CA58 800A58B8 82380007 */  lb    $t8, 7($s1)
/* B1CA5C 800A58BC 44984000 */  mtc1  $t8, $f8
/* B1CA60 800A58C0 00000000 */  nop   
/* B1CA64 800A58C4 468042A0 */  cvt.s.w $f10, $f8
/* B1CA68 800A58C8 E7AA0068 */  swc1  $f10, 0x68($sp)
/* B1CA6C 800A58CC 82390008 */  lb    $t9, 8($s1)
/* B1CA70 800A58D0 44998000 */  mtc1  $t9, $f16
/* B1CA74 800A58D4 00000000 */  nop   
/* B1CA78 800A58D8 468084A0 */  cvt.s.w $f18, $f16
/* B1CA7C 800A58DC 0C029BBD */  jal   func_800A6EF4
/* B1CA80 800A58E0 E7B2006C */   swc1  $f18, 0x6c($sp)
/* B1CA84 800A58E4 C7A40070 */  lwc1  $f4, 0x70($sp)
/* B1CA88 800A58E8 2631000A */  addiu $s1, $s1, 0xa
/* B1CA8C 800A58EC 4600218D */  trunc.w.s $f6, $f4
/* B1CA90 800A58F0 44093000 */  mfc1  $t1, $f6
/* B1CA94 800A58F4 00000000 */  nop   
/* B1CA98 800A58F8 A249000C */  sb    $t1, 0xc($s2)
/* B1CA9C 800A58FC C7A80074 */  lwc1  $f8, 0x74($sp)
/* B1CAA0 800A5900 4600428D */  trunc.w.s $f10, $f8
/* B1CAA4 800A5904 440B5000 */  mfc1  $t3, $f10
/* B1CAA8 800A5908 00000000 */  nop   
/* B1CAAC 800A590C A24B000D */  sb    $t3, 0xd($s2)
/* B1CAB0 800A5910 C7B00078 */  lwc1  $f16, 0x78($sp)
/* B1CAB4 800A5914 4600848D */  trunc.w.s $f18, $f16
/* B1CAB8 800A5918 440D9000 */  mfc1  $t5, $f18
/* B1CABC 800A591C 00000000 */  nop   
/* B1CAC0 800A5920 A24D000E */  sb    $t5, 0xe($s2)
/* B1CAC4 800A5924 E6160030 */  swc1  $f22, 0x30($s0)
/* B1CAC8 800A5928 E6180034 */  swc1  $f24, 0x34($s0)
/* B1CACC 800A592C E61A0038 */  swc1  $f26, 0x38($s0)
/* B1CAD0 800A5930 96AE0000 */  lhu   $t6, ($s5)
/* B1CAD4 800A5934 01D70019 */  multu $t6, $s7
/* B1CAD8 800A5938 00007812 */  mflo  $t7
/* B1CADC 800A593C 01F4C021 */  addu  $t8, $t7, $s4
/* B1CAE0 800A5940 0238082B */  sltu  $at, $s1, $t8
/* B1CAE4 800A5944 5420FFBE */  bnezl $at, .L800A5840
/* B1CAE8 800A5948 C6640000 */   lwc1  $f4, ($s3)
/* B1CAEC 800A594C 8FBF005C */  lw    $ra, 0x5c($sp)
.L800A5950:
/* B1CAF0 800A5950 D7B40018 */  ldc1  $f20, 0x18($sp)
/* B1CAF4 800A5954 D7B60020 */  ldc1  $f22, 0x20($sp)
/* B1CAF8 800A5958 D7B80028 */  ldc1  $f24, 0x28($sp)
/* B1CAFC 800A595C D7BA0030 */  ldc1  $f26, 0x30($sp)
/* B1CB00 800A5960 8FB00038 */  lw    $s0, 0x38($sp)
/* B1CB04 800A5964 8FB1003C */  lw    $s1, 0x3c($sp)
/* B1CB08 800A5968 8FB20040 */  lw    $s2, 0x40($sp)
/* B1CB0C 800A596C 8FB30044 */  lw    $s3, 0x44($sp)
/* B1CB10 800A5970 8FB40048 */  lw    $s4, 0x48($sp)
/* B1CB14 800A5974 8FB5004C */  lw    $s5, 0x4c($sp)
/* B1CB18 800A5978 8FB60050 */  lw    $s6, 0x50($sp)
/* B1CB1C 800A597C 8FB70054 */  lw    $s7, 0x54($sp)
/* B1CB20 800A5980 8FBE0058 */  lw    $fp, 0x58($sp)
/* B1CB24 800A5984 03E00008 */  jr    $ra
/* B1CB28 800A5988 27BD0090 */   addiu $sp, $sp, 0x90

glabel func_800A598C
/* B1CB2C 800A598C 27BDFEE8 */  addiu $sp, $sp, -0x118
/* B1CB30 800A5990 AFB10054 */  sw    $s1, 0x54($sp)
/* B1CB34 800A5994 00C08825 */  move  $s1, $a2
/* B1CB38 800A5998 AFB00050 */  sw    $s0, 0x50($sp)
/* B1CB3C 800A599C 00A08025 */  move  $s0, $a1
/* B1CB40 800A59A0 AFBF0074 */  sw    $ra, 0x74($sp)
/* B1CB44 800A59A4 AFA40118 */  sw    $a0, 0x118($sp)
/* B1CB48 800A59A8 AFA70124 */  sw    $a3, 0x124($sp)
/* B1CB4C 800A59AC 3C068014 */  lui   $a2, %hi(D_80140680) # $a2, 0x8014
/* B1CB50 800A59B0 AFBE0070 */  sw    $fp, 0x70($sp)
/* B1CB54 800A59B4 AFB7006C */  sw    $s7, 0x6c($sp)
/* B1CB58 800A59B8 AFB60068 */  sw    $s6, 0x68($sp)
/* B1CB5C 800A59BC AFB50064 */  sw    $s5, 0x64($sp)
/* B1CB60 800A59C0 AFB40060 */  sw    $s4, 0x60($sp)
/* B1CB64 800A59C4 AFB3005C */  sw    $s3, 0x5c($sp)
/* B1CB68 800A59C8 AFB20058 */  sw    $s2, 0x58($sp)
/* B1CB6C 800A59CC F7BE0048 */  sdc1  $f30, 0x48($sp)
/* B1CB70 800A59D0 F7BC0040 */  sdc1  $f28, 0x40($sp)
/* B1CB74 800A59D4 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* B1CB78 800A59D8 F7B80030 */  sdc1  $f24, 0x30($sp)
/* B1CB7C 800A59DC F7B60028 */  sdc1  $f22, 0x28($sp)
/* B1CB80 800A59E0 F7B40020 */  sdc1  $f20, 0x20($sp)
/* B1CB84 800A59E4 24C60680 */  addiu $a2, %lo(D_80140680) # addiu $a2, $a2, 0x680
/* B1CB88 800A59E8 240700FE */  li    $a3, 254
/* B1CB8C 800A59EC 8FA50118 */  lw    $a1, 0x118($sp)
/* B1CB90 800A59F0 0C031AB1 */  jal   func_800C6AC4
/* B1CB94 800A59F4 27A400B8 */   addiu $a0, $sp, 0xb8
/* B1CB98 800A59F8 8E0E0000 */  lw    $t6, ($s0)
/* B1CB9C 800A59FC 3C0A8016 */  lui   $t2, %hi(D_80166FA8) # $t2, 0x8016
/* B1CBA0 800A5A00 254A6FA8 */  addiu $t2, %lo(D_80166FA8) # addiu $t2, $t2, 0x6fa8
/* B1CBA4 800A5A04 8DC30000 */  lw    $v1, ($t6)
/* B1CBA8 800A5A08 3C0B00FF */  lui   $t3, (0x00FFFFFF >> 16) # lui $t3, 0xff
/* B1CBAC 800A5A0C 356BFFFF */  ori   $t3, (0x00FFFFFF & 0xFFFF) # ori $t3, $t3, 0xffff
/* B1CBB0 800A5A10 00037900 */  sll   $t7, $v1, 4
/* B1CBB4 800A5A14 000FC702 */  srl   $t8, $t7, 0x1c
/* B1CBB8 800A5A18 0018C880 */  sll   $t9, $t8, 2
/* B1CBBC 800A5A1C 01597021 */  addu  $t6, $t2, $t9
/* B1CBC0 800A5A20 8DCF0000 */  lw    $t7, ($t6)
/* B1CBC4 800A5A24 006BC024 */  and   $t8, $v1, $t3
/* B1CBC8 800A5A28 3C0C8000 */  lui   $t4, 0x8000
/* B1CBCC 800A5A2C 01F8C821 */  addu  $t9, $t7, $t8
/* B1CBD0 800A5A30 032C4021 */  addu  $t0, $t9, $t4
/* B1CBD4 800A5A34 00117080 */  sll   $t6, $s1, 2
/* B1CBD8 800A5A38 010E7821 */  addu  $t7, $t0, $t6
/* B1CBDC 800A5A3C 8DE50000 */  lw    $a1, ($t7)
/* B1CBE0 800A5A40 3C128016 */  lui   $s2, %hi(D_801600C0) # $s2, 0x8016
/* B1CBE4 800A5A44 265200C0 */  addiu $s2, %lo(D_801600C0) # addiu $s2, $s2, 0xc0
/* B1CBE8 800A5A48 0005C900 */  sll   $t9, $a1, 4
/* B1CBEC 800A5A4C 00197702 */  srl   $t6, $t9, 0x1c
/* B1CBF0 800A5A50 000E7880 */  sll   $t7, $t6, 2
/* B1CBF4 800A5A54 014FC821 */  addu  $t9, $t2, $t7
/* B1CBF8 800A5A58 8F2E0000 */  lw    $t6, ($t9)
/* B1CBFC 800A5A5C 00ABC024 */  and   $t8, $a1, $t3
/* B1CC00 800A5A60 27B700DC */  addiu $s7, $sp, 0xdc
/* B1CC04 800A5A64 030E7821 */  addu  $t7, $t8, $t6
/* B1CC08 800A5A68 01ECC821 */  addu  $t9, $t7, $t4
/* B1CC0C 800A5A6C 8F26000C */  lw    $a2, 0xc($t9)
/* B1CC10 800A5A70 27B500D0 */  addiu $s5, $sp, 0xd0
/* B1CC14 800A5A74 27B40088 */  addiu $s4, $sp, 0x88
/* B1CC18 800A5A78 00067100 */  sll   $t6, $a2, 4
/* B1CC1C 800A5A7C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1CC20 800A5A80 000FC880 */  sll   $t9, $t7, 2
/* B1CC24 800A5A84 01597021 */  addu  $t6, $t2, $t9
/* B1CC28 800A5A88 8DCF0000 */  lw    $t7, ($t6)
/* B1CC2C 800A5A8C 00CBC024 */  and   $t8, $a2, $t3
/* B1CC30 800A5A90 030FC821 */  addu  $t9, $t8, $t7
/* B1CC34 800A5A94 032C2021 */  addu  $a0, $t9, $t4
/* B1CC38 800A5A98 8C870004 */  lw    $a3, 4($a0)
/* B1CC3C 800A5A9C 00077100 */  sll   $t6, $a3, 4
/* B1CC40 800A5AA0 000EC702 */  srl   $t8, $t6, 0x1c
/* B1CC44 800A5AA4 00187880 */  sll   $t7, $t8, 2
/* B1CC48 800A5AA8 014FC821 */  addu  $t9, $t2, $t7
/* B1CC4C 800A5AAC 8F2E0000 */  lw    $t6, ($t9)
/* B1CC50 800A5AB0 00EBC024 */  and   $t8, $a3, $t3
/* B1CC54 800A5AB4 8E190048 */  lw    $t9, 0x48($s0)
/* B1CC58 800A5AB8 01D87821 */  addu  $t7, $t6, $t8
/* B1CC5C 800A5ABC 00117080 */  sll   $t6, $s1, 2
/* B1CC60 800A5AC0 01D17023 */  subu  $t6, $t6, $s1
/* B1CC64 800A5AC4 000E7080 */  sll   $t6, $t6, 2
/* B1CC68 800A5AC8 032E6821 */  addu  $t5, $t9, $t6
/* B1CC6C 800A5ACC 91B80000 */  lbu   $t8, ($t5)
/* B1CC70 800A5AD0 01ECB021 */  addu  $s6, $t7, $t4
/* B1CC74 800A5AD4 00187880 */  sll   $t7, $t8, 2
/* B1CC78 800A5AD8 01AFC821 */  addu  $t9, $t5, $t7
/* B1CC7C 800A5ADC 8F2E0004 */  lw    $t6, 4($t9)
/* B1CC80 800A5AE0 AFAE00EC */  sw    $t6, 0xec($sp)
/* B1CC84 800A5AE4 94890002 */  lhu   $t1, 2($a0)
/* B1CC88 800A5AE8 0009C100 */  sll   $t8, $t1, 4
/* B1CC8C 800A5AEC 0316F821 */  addu  $ra, $t8, $s6
/* B1CC90 800A5AF0 02DF082B */  sltu  $at, $s6, $ra
/* B1CC94 800A5AF4 102000A2 */  beqz  $at, .L800A5D80
/* B1CC98 800A5AF8 3C018014 */   li    $at, 0x80140000 # 0.000000
/* B1CC9C 800A5AFC 4480F000 */  mtc1  $zero, $f30
/* B1CCA0 800A5B00 C43C06E0 */  lwc1  $f28, 0x6e0($at)
/* B1CCA4 800A5B04 AFAD0100 */  sw    $t5, 0x100($sp)
/* B1CCA8 800A5B08 AFBF0080 */  sw    $ra, 0x80($sp)
/* B1CCAC 800A5B0C 8EC20008 */  lw    $v0, 8($s6)
.L800A5B10:
/* B1CCB0 800A5B10 3C068016 */  lui   $a2, %hi(D_80166FA8) # $a2, 0x8016
/* B1CCB4 800A5B14 24C66FA8 */  addiu $a2, %lo(D_80166FA8) # addiu $a2, $a2, 0x6fa8
/* B1CCB8 800A5B18 00027900 */  sll   $t7, $v0, 4
/* B1CCBC 800A5B1C 000FCF02 */  srl   $t9, $t7, 0x1c
/* B1CCC0 800A5B20 00197080 */  sll   $t6, $t9, 2
/* B1CCC4 800A5B24 00CEC021 */  addu  $t8, $a2, $t6
/* B1CCC8 800A5B28 8F0F0000 */  lw    $t7, ($t8)
/* B1CCCC 800A5B2C 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1CCD0 800A5B30 8EC3000C */  lw    $v1, 0xc($s6)
/* B1CCD4 800A5B34 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1CCD8 800A5B38 0047C824 */  and   $t9, $v0, $a3
/* B1CCDC 800A5B3C 01F97021 */  addu  $t6, $t7, $t9
/* B1CCE0 800A5B40 0003C100 */  sll   $t8, $v1, 4
/* B1CCE4 800A5B44 3C088000 */  li    $t0, 0x80000000 # 0.000000
/* B1CCE8 800A5B48 00187F02 */  srl   $t7, $t8, 0x1c
/* B1CCEC 800A5B4C 01C8F021 */  addu  $fp, $t6, $t0
/* B1CCF0 800A5B50 000FC880 */  sll   $t9, $t7, 2
/* B1CCF4 800A5B54 00D97021 */  addu  $t6, $a2, $t9
/* B1CCF8 800A5B58 8DD80000 */  lw    $t8, ($t6)
/* B1CCFC 800A5B5C 96C40002 */  lhu   $a0, 2($s6)
/* B1CD00 800A5B60 00677824 */  and   $t7, $v1, $a3
/* B1CD04 800A5B64 24050001 */  li    $a1, 1
/* B1CD08 800A5B68 030FC821 */  addu  $t9, $t8, $t7
/* B1CD0C 800A5B6C 14850018 */  bne   $a0, $a1, .L800A5BD0
/* B1CD10 800A5B70 03289821 */   addu  $s3, $t9, $t0
/* B1CD14 800A5B74 866E0002 */  lh    $t6, 2($s3)
/* B1CD18 800A5B78 27A500AC */  addiu $a1, $sp, 0xac
/* B1CD1C 800A5B7C 02E03025 */  move  $a2, $s7
/* B1CD20 800A5B80 448E2000 */  mtc1  $t6, $f4
/* B1CD24 800A5B84 00000000 */  nop   
/* B1CD28 800A5B88 468021A0 */  cvt.s.w $f6, $f4
/* B1CD2C 800A5B8C E7A600AC */  swc1  $f6, 0xac($sp)
/* B1CD30 800A5B90 86780004 */  lh    $t8, 4($s3)
/* B1CD34 800A5B94 44984000 */  mtc1  $t8, $f8
/* B1CD38 800A5B98 00000000 */  nop   
/* B1CD3C 800A5B9C 468042A0 */  cvt.s.w $f10, $f8
/* B1CD40 800A5BA0 E7AA00B0 */  swc1  $f10, 0xb0($sp)
/* B1CD44 800A5BA4 866F0006 */  lh    $t7, 6($s3)
/* B1CD48 800A5BA8 448F8000 */  mtc1  $t7, $f16
/* B1CD4C 800A5BAC 00000000 */  nop   
/* B1CD50 800A5BB0 468084A0 */  cvt.s.w $f18, $f16
/* B1CD54 800A5BB4 E7B200B4 */  swc1  $f18, 0xb4($sp)
/* B1CD58 800A5BB8 92790000 */  lbu   $t9, ($s3)
/* B1CD5C 800A5BBC 00197180 */  sll   $t6, $t9, 6
/* B1CD60 800A5BC0 0C029BBD */  jal   func_800A6EF4
/* B1CD64 800A5BC4 024E2021 */   addu  $a0, $s2, $t6
/* B1CD68 800A5BC8 1000005B */  b     .L800A5D38
/* B1CD6C 800A5BCC 96CE0004 */   lhu   $t6, 4($s6)
.L800A5BD0:
/* B1CD70 800A5BD0 8FB80124 */  lw    $t8, 0x124($sp)
/* B1CD74 800A5BD4 02608025 */  move  $s0, $s3
/* B1CD78 800A5BD8 5705001E */  bnel  $t8, $a1, .L800A5C54
/* B1CD7C 800A5BDC 0004C080 */   sll   $t8, $a0, 2
/* B1CD80 800A5BE0 96CF0004 */  lhu   $t7, 4($s6)
/* B1CD84 800A5BE4 27A500A0 */  addiu $a1, $sp, 0xa0
/* B1CD88 800A5BE8 02E03025 */  move  $a2, $s7
/* B1CD8C 800A5BEC 000FC880 */  sll   $t9, $t7, 2
/* B1CD90 800A5BF0 032FC821 */  addu  $t9, $t9, $t7
/* B1CD94 800A5BF4 0019C840 */  sll   $t9, $t9, 1
/* B1CD98 800A5BF8 03338021 */  addu  $s0, $t9, $s3
/* B1CD9C 800A5BFC 860E0002 */  lh    $t6, 2($s0)
/* B1CDA0 800A5C00 448E2000 */  mtc1  $t6, $f4
/* B1CDA4 800A5C04 00000000 */  nop   
/* B1CDA8 800A5C08 468021A0 */  cvt.s.w $f6, $f4
/* B1CDAC 800A5C0C E7A600A0 */  swc1  $f6, 0xa0($sp)
/* B1CDB0 800A5C10 86180004 */  lh    $t8, 4($s0)
/* B1CDB4 800A5C14 44984000 */  mtc1  $t8, $f8
/* B1CDB8 800A5C18 00000000 */  nop   
/* B1CDBC 800A5C1C 468042A0 */  cvt.s.w $f10, $f8
/* B1CDC0 800A5C20 E7AA00A4 */  swc1  $f10, 0xa4($sp)
/* B1CDC4 800A5C24 860F0006 */  lh    $t7, 6($s0)
/* B1CDC8 800A5C28 448F8000 */  mtc1  $t7, $f16
/* B1CDCC 800A5C2C 00000000 */  nop   
/* B1CDD0 800A5C30 468084A0 */  cvt.s.w $f18, $f16
/* B1CDD4 800A5C34 E7B200A8 */  swc1  $f18, 0xa8($sp)
/* B1CDD8 800A5C38 92190000 */  lbu   $t9, ($s0)
/* B1CDDC 800A5C3C 00197180 */  sll   $t6, $t9, 6
/* B1CDE0 800A5C40 0C029BBD */  jal   func_800A6EF4
/* B1CDE4 800A5C44 024E2021 */   addu  $a0, $s2, $t6
/* B1CDE8 800A5C48 1000003B */  b     .L800A5D38
/* B1CDEC 800A5C4C 96CE0004 */   lhu   $t6, 4($s6)
/* B1CDF0 800A5C50 0004C080 */  sll   $t8, $a0, 2
.L800A5C54:
/* B1CDF4 800A5C54 0304C021 */  addu  $t8, $t8, $a0
/* B1CDF8 800A5C58 0018C040 */  sll   $t8, $t8, 1
/* B1CDFC 800A5C5C 03138821 */  addu  $s1, $t8, $s3
/* B1CE00 800A5C60 0271082B */  sltu  $at, $s3, $s1
/* B1CE04 800A5C64 4600F586 */  mov.s $f22, $f30
/* B1CE08 800A5C68 4600F606 */  mov.s $f24, $f30
/* B1CE0C 800A5C6C 1020002E */  beqz  $at, .L800A5D28
/* B1CE10 800A5C70 4600F686 */   mov.s $f26, $f30
.L800A5C74:
/* B1CE14 800A5C74 920F0008 */  lbu   $t7, 8($s0)
/* B1CE18 800A5C78 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B1CE1C 800A5C7C 448F2000 */  mtc1  $t7, $f4
/* B1CE20 800A5C80 05E10004 */  bgez  $t7, .L800A5C94
/* B1CE24 800A5C84 468021A0 */   cvt.s.w $f6, $f4
/* B1CE28 800A5C88 44814000 */  mtc1  $at, $f8
/* B1CE2C 800A5C8C 00000000 */  nop   
/* B1CE30 800A5C90 46083180 */  add.s $f6, $f6, $f8
.L800A5C94:
/* B1CE34 800A5C94 86190002 */  lh    $t9, 2($s0)
/* B1CE38 800A5C98 461C3502 */  mul.s $f20, $f6, $f28
/* B1CE3C 800A5C9C 02802825 */  move  $a1, $s4
/* B1CE40 800A5CA0 44995000 */  mtc1  $t9, $f10
/* B1CE44 800A5CA4 02A03025 */  move  $a2, $s5
/* B1CE48 800A5CA8 46805420 */  cvt.s.w $f16, $f10
/* B1CE4C 800A5CAC E7B00088 */  swc1  $f16, 0x88($sp)
/* B1CE50 800A5CB0 860E0004 */  lh    $t6, 4($s0)
/* B1CE54 800A5CB4 448E9000 */  mtc1  $t6, $f18
/* B1CE58 800A5CB8 00000000 */  nop   
/* B1CE5C 800A5CBC 46809120 */  cvt.s.w $f4, $f18
/* B1CE60 800A5CC0 E7A4008C */  swc1  $f4, 0x8c($sp)
/* B1CE64 800A5CC4 86180006 */  lh    $t8, 6($s0)
/* B1CE68 800A5CC8 44984000 */  mtc1  $t8, $f8
/* B1CE6C 800A5CCC 00000000 */  nop   
/* B1CE70 800A5CD0 468041A0 */  cvt.s.w $f6, $f8
/* B1CE74 800A5CD4 E7A60090 */  swc1  $f6, 0x90($sp)
/* B1CE78 800A5CD8 920F0000 */  lbu   $t7, ($s0)
/* B1CE7C 800A5CDC 000FC980 */  sll   $t9, $t7, 6
/* B1CE80 800A5CE0 0C029BBD */  jal   func_800A6EF4
/* B1CE84 800A5CE4 02592021 */   addu  $a0, $s2, $t9
/* B1CE88 800A5CE8 C7A000D0 */  lwc1  $f0, 0xd0($sp)
/* B1CE8C 800A5CEC C7A200D4 */  lwc1  $f2, 0xd4($sp)
/* B1CE90 800A5CF0 C7AC00D8 */  lwc1  $f12, 0xd8($sp)
/* B1CE94 800A5CF4 46140002 */  mul.s $f0, $f0, $f20
/* B1CE98 800A5CF8 2610000A */  addiu $s0, $s0, 0xa
/* B1CE9C 800A5CFC 0211082B */  sltu  $at, $s0, $s1
/* B1CEA0 800A5D00 46141082 */  mul.s $f2, $f2, $f20
/* B1CEA4 800A5D04 00000000 */  nop   
/* B1CEA8 800A5D08 46146302 */  mul.s $f12, $f12, $f20
/* B1CEAC 800A5D0C E7A000D0 */  swc1  $f0, 0xd0($sp)
/* B1CEB0 800A5D10 4600D680 */  add.s $f26, $f26, $f0
/* B1CEB4 800A5D14 E7A200D4 */  swc1  $f2, 0xd4($sp)
/* B1CEB8 800A5D18 4602C600 */  add.s $f24, $f24, $f2
/* B1CEBC 800A5D1C E7AC00D8 */  swc1  $f12, 0xd8($sp)
/* B1CEC0 800A5D20 1420FFD4 */  bnez  $at, .L800A5C74
/* B1CEC4 800A5D24 460CB580 */   add.s $f22, $f22, $f12
.L800A5D28:
/* B1CEC8 800A5D28 E7BA00DC */  swc1  $f26, 0xdc($sp)
/* B1CECC 800A5D2C E7B800E0 */  swc1  $f24, 0xe0($sp)
/* B1CED0 800A5D30 E7B600E4 */  swc1  $f22, 0xe4($sp)
/* B1CED4 800A5D34 96CE0004 */  lhu   $t6, 4($s6)
.L800A5D38:
/* B1CED8 800A5D38 03C02825 */  move  $a1, $fp
/* B1CEDC 800A5D3C 02C03025 */  move  $a2, $s6
/* B1CEE0 800A5D40 000EC080 */  sll   $t8, $t6, 2
/* B1CEE4 800A5D44 030EC021 */  addu  $t8, $t8, $t6
/* B1CEE8 800A5D48 0018C040 */  sll   $t8, $t8, 1
/* B1CEEC 800A5D4C 02787821 */  addu  $t7, $s3, $t8
/* B1CEF0 800A5D50 91F90000 */  lbu   $t9, ($t7)
/* B1CEF4 800A5D54 AFB70010 */  sw    $s7, 0x10($sp)
/* B1CEF8 800A5D58 8FA700EC */  lw    $a3, 0xec($sp)
/* B1CEFC 800A5D5C 00197180 */  sll   $t6, $t9, 6
/* B1CF00 800A5D60 0C0295F0 */  jal   func_800A57C0
/* B1CF04 800A5D64 024E2021 */   addu  $a0, $s2, $t6
/* B1CF08 800A5D68 8FB80080 */  lw    $t8, 0x80($sp)
/* B1CF0C 800A5D6C 26D60010 */  addiu $s6, $s6, 0x10
/* B1CF10 800A5D70 02D8082B */  sltu  $at, $s6, $t8
/* B1CF14 800A5D74 5420FF66 */  bnezl $at, .L800A5B10
/* B1CF18 800A5D78 8EC20008 */   lw    $v0, 8($s6)
/* B1CF1C 800A5D7C 8FAD0100 */  lw    $t5, 0x100($sp)
.L800A5D80:
/* B1CF20 800A5D80 8FA50118 */  lw    $a1, 0x118($sp)
/* B1CF24 800A5D84 3C19DB06 */  lui   $t9, (0xDB060020 >> 16) # lui $t9, 0xdb06
/* B1CF28 800A5D88 37390020 */  ori   $t9, (0xDB060020 & 0xFFFF) # ori $t9, $t9, 0x20
/* B1CF2C 800A5D8C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B1CF30 800A5D90 3C068014 */  lui   $a2, %hi(D_8014068C) # $a2, 0x8014
/* B1CF34 800A5D94 24C6068C */  addiu $a2, %lo(D_8014068C) # addiu $a2, $a2, 0x68c
/* B1CF38 800A5D98 246F0008 */  addiu $t7, $v1, 8
/* B1CF3C 800A5D9C ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B1CF40 800A5DA0 AC790000 */  sw    $t9, ($v1)
/* B1CF44 800A5DA4 91AE0000 */  lbu   $t6, ($t5)
/* B1CF48 800A5DA8 27A400B8 */  addiu $a0, $sp, 0xb8
/* B1CF4C 800A5DAC 000EC080 */  sll   $t8, $t6, 2
/* B1CF50 800A5DB0 01B87821 */  addu  $t7, $t5, $t8
/* B1CF54 800A5DB4 8DF90004 */  lw    $t9, 4($t7)
/* B1CF58 800A5DB8 24180001 */  li    $t8, 1
/* B1CF5C 800A5DBC AC790004 */  sw    $t9, 4($v1)
/* B1CF60 800A5DC0 91AE0000 */  lbu   $t6, ($t5)
/* B1CF64 800A5DC4 55C00004 */  bnezl $t6, .L800A5DD8
/* B1CF68 800A5DC8 A1A00000 */   sb    $zero, ($t5)
/* B1CF6C 800A5DCC 10000002 */  b     .L800A5DD8
/* B1CF70 800A5DD0 A1B80000 */   sb    $t8, ($t5)
/* B1CF74 800A5DD4 A1A00000 */  sb    $zero, ($t5)
.L800A5DD8:
/* B1CF78 800A5DD8 0C031AD5 */  jal   func_800C6B54
/* B1CF7C 800A5DDC 24070158 */   li    $a3, 344
/* B1CF80 800A5DE0 8FBF0074 */  lw    $ra, 0x74($sp)
/* B1CF84 800A5DE4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* B1CF88 800A5DE8 D7B60028 */  ldc1  $f22, 0x28($sp)
/* B1CF8C 800A5DEC D7B80030 */  ldc1  $f24, 0x30($sp)
/* B1CF90 800A5DF0 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* B1CF94 800A5DF4 D7BC0040 */  ldc1  $f28, 0x40($sp)
/* B1CF98 800A5DF8 D7BE0048 */  ldc1  $f30, 0x48($sp)
/* B1CF9C 800A5DFC 8FB00050 */  lw    $s0, 0x50($sp)
/* B1CFA0 800A5E00 8FB10054 */  lw    $s1, 0x54($sp)
/* B1CFA4 800A5E04 8FB20058 */  lw    $s2, 0x58($sp)
/* B1CFA8 800A5E08 8FB3005C */  lw    $s3, 0x5c($sp)
/* B1CFAC 800A5E0C 8FB40060 */  lw    $s4, 0x60($sp)
/* B1CFB0 800A5E10 8FB50064 */  lw    $s5, 0x64($sp)
/* B1CFB4 800A5E14 8FB60068 */  lw    $s6, 0x68($sp)
/* B1CFB8 800A5E18 8FB7006C */  lw    $s7, 0x6c($sp)
/* B1CFBC 800A5E1C 8FBE0070 */  lw    $fp, 0x70($sp)
/* B1CFC0 800A5E20 03E00008 */  jr    $ra
/* B1CFC4 800A5E24 27BD0118 */   addiu $sp, $sp, 0x118

glabel func_800A5E28
/* B1CFC8 800A5E28 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1CFCC 800A5E2C AFB00018 */  sw    $s0, 0x18($sp)
/* B1CFD0 800A5E30 AFA60050 */  sw    $a2, 0x50($sp)
/* B1CFD4 800A5E34 00808025 */  move  $s0, $a0
/* B1CFD8 800A5E38 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1CFDC 800A5E3C AFA5004C */  sw    $a1, 0x4c($sp)
/* B1CFE0 800A5E40 AFA70054 */  sw    $a3, 0x54($sp)
/* B1CFE4 800A5E44 3C068014 */  lui   $a2, %hi(D_80140698) # $a2, 0x8014
/* B1CFE8 800A5E48 24C60698 */  addiu $a2, %lo(D_80140698) # addiu $a2, $a2, 0x698
/* B1CFEC 800A5E4C 2407016C */  li    $a3, 364
/* B1CFF0 800A5E50 02002825 */  move  $a1, $s0
/* B1CFF4 800A5E54 0C031AB1 */  jal   func_800C6AC4
/* B1CFF8 800A5E58 27A4002C */   addiu $a0, $sp, 0x2c
/* B1CFFC 800A5E5C 8FAE004C */  lw    $t6, 0x4c($sp)
/* B1D000 800A5E60 3C068016 */  lui   $a2, %hi(D_80166FA8) # $a2, 0x8016
/* B1D004 800A5E64 24C66FA8 */  addiu $a2, %lo(D_80166FA8) # addiu $a2, $a2, 0x6fa8
/* B1D008 800A5E68 8DCF0000 */  lw    $t7, ($t6)
/* B1D00C 800A5E6C 3C0700FF */  lui   $a3, (0x00FFFFFF >> 16) # lui $a3, 0xff
/* B1D010 800A5E70 34E7FFFF */  ori   $a3, (0x00FFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* B1D014 800A5E74 8DE20000 */  lw    $v0, ($t7)
/* B1D018 800A5E78 3C088000 */  lui   $t0, 0x8000
/* B1D01C 800A5E7C 0002C100 */  sll   $t8, $v0, 4
/* B1D020 800A5E80 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D024 800A5E84 00195080 */  sll   $t2, $t9, 2
/* B1D028 800A5E88 00CA5821 */  addu  $t3, $a2, $t2
/* B1D02C 800A5E8C 8D6C0000 */  lw    $t4, ($t3)
/* B1D030 800A5E90 8FB80050 */  lw    $t8, 0x50($sp)
/* B1D034 800A5E94 00476824 */  and   $t5, $v0, $a3
/* B1D038 800A5E98 018D7821 */  addu  $t7, $t4, $t5
/* B1D03C 800A5E9C 01E82821 */  addu  $a1, $t7, $t0
/* B1D040 800A5EA0 0018C880 */  sll   $t9, $t8, 2
/* B1D044 800A5EA4 00B95021 */  addu  $t2, $a1, $t9
/* B1D048 800A5EA8 8D430000 */  lw    $v1, ($t2)
/* B1D04C 800A5EAC 01C02825 */  move  $a1, $t6
/* B1D050 800A5EB0 00036100 */  sll   $t4, $v1, 4
/* B1D054 800A5EB4 000C6F02 */  srl   $t5, $t4, 0x1c
/* B1D058 800A5EB8 000D7880 */  sll   $t7, $t5, 2
/* B1D05C 800A5EBC 00CFC821 */  addu  $t9, $a2, $t7
/* B1D060 800A5EC0 8F2A0000 */  lw    $t2, ($t9)
/* B1D064 800A5EC4 00675824 */  and   $t3, $v1, $a3
/* B1D068 800A5EC8 016A6021 */  addu  $t4, $t3, $t2
/* B1D06C 800A5ECC 01886821 */  addu  $t5, $t4, $t0
/* B1D070 800A5ED0 8DA4000C */  lw    $a0, 0xc($t5)
/* B1D074 800A5ED4 0004C900 */  sll   $t9, $a0, 4
/* B1D078 800A5ED8 00195F02 */  srl   $t3, $t9, 0x1c
/* B1D07C 800A5EDC 000B5080 */  sll   $t2, $t3, 2
/* B1D080 800A5EE0 00CA6021 */  addu  $t4, $a2, $t2
/* B1D084 800A5EE4 8D8D0000 */  lw    $t5, ($t4)
/* B1D088 800A5EE8 8FAB0058 */  lw    $t3, 0x58($sp)
/* B1D08C 800A5EEC 00877824 */  and   $t7, $a0, $a3
/* B1D090 800A5EF0 01EDC821 */  addu  $t9, $t7, $t5
/* B1D094 800A5EF4 316A0001 */  andi  $t2, $t3, 1
/* B1D098 800A5EF8 15400007 */  bnez  $t2, .L800A5F18
/* B1D09C 800A5EFC 03284821 */   addu  $t1, $t9, $t0
/* B1D0A0 800A5F00 02002025 */  move  $a0, $s0
/* B1D0A4 800A5F04 03003025 */  move  $a2, $t8
/* B1D0A8 800A5F08 8FA70054 */  lw    $a3, 0x54($sp)
/* B1D0AC 800A5F0C 0C029663 */  jal   func_800A598C
/* B1D0B0 800A5F10 AFA90040 */   sw    $t1, 0x40($sp)
/* B1D0B4 800A5F14 8FA90040 */  lw    $t1, 0x40($sp)
.L800A5F18:
/* B1D0B8 800A5F18 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D0BC 800A5F1C 3C0FDE00 */  lui   $t7, 0xde00
/* B1D0C0 800A5F20 3C068014 */  lui   $a2, %hi(D_801406A4) # $a2, 0x8014
/* B1D0C4 800A5F24 246C0008 */  addiu $t4, $v1, 8
/* B1D0C8 800A5F28 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B1D0CC 800A5F2C AC6F0000 */  sw    $t7, ($v1)
/* B1D0D0 800A5F30 8D2D0008 */  lw    $t5, 8($t1)
/* B1D0D4 800A5F34 24C606A4 */  addiu $a2, %lo(D_801406A4) # addiu $a2, $a2, 0x6a4
/* B1D0D8 800A5F38 27A4002C */  addiu $a0, $sp, 0x2c
/* B1D0DC 800A5F3C 02002825 */  move  $a1, $s0
/* B1D0E0 800A5F40 24070179 */  li    $a3, 377
/* B1D0E4 800A5F44 0C031AD5 */  jal   func_800C6B54
/* B1D0E8 800A5F48 AC6D0004 */   sw    $t5, 4($v1)
/* B1D0EC 800A5F4C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1D0F0 800A5F50 8FB00018 */  lw    $s0, 0x18($sp)
/* B1D0F4 800A5F54 27BD0048 */  addiu $sp, $sp, 0x48
/* B1D0F8 800A5F58 03E00008 */  jr    $ra
/* B1D0FC 800A5F5C 00000000 */   nop   

glabel func_800A5F60
/* B1D100 800A5F60 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1D104 800A5F64 AFB00018 */  sw    $s0, 0x18($sp)
/* B1D108 800A5F68 AFA60060 */  sw    $a2, 0x60($sp)
/* B1D10C 800A5F6C 00808025 */  move  $s0, $a0
/* B1D110 800A5F70 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1D114 800A5F74 AFA5005C */  sw    $a1, 0x5c($sp)
/* B1D118 800A5F78 AFA70064 */  sw    $a3, 0x64($sp)
/* B1D11C 800A5F7C 00E04025 */  move  $t0, $a3
/* B1D120 800A5F80 3C068014 */  lui   $a2, %hi(D_801406B0) # $a2, 0x8014
/* B1D124 800A5F84 24C606B0 */  addiu $a2, %lo(D_801406B0) # addiu $a2, $a2, 0x6b0
/* B1D128 800A5F88 AFA80054 */  sw    $t0, 0x54($sp)
/* B1D12C 800A5F8C 2407018B */  li    $a3, 395
/* B1D130 800A5F90 02002825 */  move  $a1, $s0
/* B1D134 800A5F94 0C031AB1 */  jal   func_800C6AC4
/* B1D138 800A5F98 27A40038 */   addiu $a0, $sp, 0x38
/* B1D13C 800A5F9C 8FAE005C */  lw    $t6, 0x5c($sp)
/* B1D140 800A5FA0 3C048016 */  lui   $a0, %hi(D_80166FA8) # $a0, 0x8016
/* B1D144 800A5FA4 24846FA8 */  addiu $a0, %lo(D_80166FA8) # addiu $a0, $a0, 0x6fa8
/* B1D148 800A5FA8 8DCF0000 */  lw    $t7, ($t6)
/* B1D14C 800A5FAC 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* B1D150 800A5FB0 8FAE0064 */  lw    $t6, 0x64($sp)
/* B1D154 800A5FB4 8DE20000 */  lw    $v0, ($t7)
/* B1D158 800A5FB8 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* B1D15C 800A5FBC 3C068000 */  lui   $a2, 0x8000
/* B1D160 800A5FC0 0002C100 */  sll   $t8, $v0, 4
/* B1D164 800A5FC4 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D168 800A5FC8 00194880 */  sll   $t1, $t9, 2
/* B1D16C 800A5FCC 00895021 */  addu  $t2, $a0, $t1
/* B1D170 800A5FD0 8D4B0000 */  lw    $t3, ($t2)
/* B1D174 800A5FD4 00456024 */  and   $t4, $v0, $a1
/* B1D178 800A5FD8 8FA70060 */  lw    $a3, 0x60($sp)
/* B1D17C 800A5FDC 016C6821 */  addu  $t5, $t3, $t4
/* B1D180 800A5FE0 8FA80054 */  lw    $t0, 0x54($sp)
/* B1D184 800A5FE4 15C0000D */  bnez  $t6, .L800A601C
/* B1D188 800A5FE8 01A61821 */   addu  $v1, $t5, $a2
/* B1D18C 800A5FEC 00077880 */  sll   $t7, $a3, 2
/* B1D190 800A5FF0 006FC021 */  addu  $t8, $v1, $t7
/* B1D194 800A5FF4 8F020000 */  lw    $v0, ($t8)
/* B1D198 800A5FF8 00024900 */  sll   $t1, $v0, 4
/* B1D19C 800A5FFC 00095702 */  srl   $t2, $t1, 0x1c
/* B1D1A0 800A6000 000A5880 */  sll   $t3, $t2, 2
/* B1D1A4 800A6004 008B6021 */  addu  $t4, $a0, $t3
/* B1D1A8 800A6008 8D8D0000 */  lw    $t5, ($t4)
/* B1D1AC 800A600C 0045C824 */  and   $t9, $v0, $a1
/* B1D1B0 800A6010 032D7021 */  addu  $t6, $t9, $t5
/* B1D1B4 800A6014 01C67821 */  addu  $t7, $t6, $a2
/* B1D1B8 800A6018 8DE8000C */  lw    $t0, 0xc($t7)
.L800A601C:
/* B1D1BC 800A601C 11000023 */  beqz  $t0, .L800A60AC
/* B1D1C0 800A6020 02002025 */   move  $a0, $s0
/* B1D1C4 800A6024 3C098016 */  lui   $t1, %hi(D_801600C0) # $t1, 0x8016
/* B1D1C8 800A6028 252900C0 */  addiu $t1, %lo(D_801600C0) # addiu $t1, $t1, 0xc0
/* B1D1CC 800A602C 0007C180 */  sll   $t8, $a3, 6
/* B1D1D0 800A6030 03092821 */  addu  $a1, $t8, $t1
/* B1D1D4 800A6034 0C029F9C */  jal   func_800A7E70
/* B1D1D8 800A6038 AFA80054 */   sw    $t0, 0x54($sp)
/* B1D1DC 800A603C 1040001B */  beqz  $v0, .L800A60AC
/* B1D1E0 800A6040 8FA80054 */   lw    $t0, 0x54($sp)
/* B1D1E4 800A6044 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D1E8 800A6048 3C0BDA38 */  lui   $t3, 0xda38
/* B1D1EC 800A604C 3C19DE00 */  lui   $t9, 0xde00
/* B1D1F0 800A6050 246A0008 */  addiu $t2, $v1, 8
/* B1D1F4 800A6054 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B1D1F8 800A6058 AC620004 */  sw    $v0, 4($v1)
/* B1D1FC 800A605C AC6B0000 */  sw    $t3, ($v1)
/* B1D200 800A6060 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D204 800A6064 3C0ED838 */  lui   $t6, (0xD8380002 >> 16) # lui $t6, 0xd838
/* B1D208 800A6068 35CE0002 */  ori   $t6, (0xD8380002 & 0xFFFF) # ori $t6, $t6, 2
/* B1D20C 800A606C 246C0008 */  addiu $t4, $v1, 8
/* B1D210 800A6070 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B1D214 800A6074 AC680004 */  sw    $t0, 4($v1)
/* B1D218 800A6078 AC790000 */  sw    $t9, ($v1)
/* B1D21C 800A607C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D220 800A6080 240F0040 */  li    $t7, 64
/* B1D224 800A6084 3C09E700 */  lui   $t1, 0xe700
/* B1D228 800A6088 246D0008 */  addiu $t5, $v1, 8
/* B1D22C 800A608C AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B1D230 800A6090 AC6F0004 */  sw    $t7, 4($v1)
/* B1D234 800A6094 AC6E0000 */  sw    $t6, ($v1)
/* B1D238 800A6098 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B1D23C 800A609C 24780008 */  addiu $t8, $v1, 8
/* B1D240 800A60A0 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B1D244 800A60A4 AC600004 */  sw    $zero, 4($v1)
/* B1D248 800A60A8 AC690000 */  sw    $t1, ($v1)
.L800A60AC:
/* B1D24C 800A60AC 3C068014 */  lui   $a2, %hi(D_801406BC) # $a2, 0x8014
/* B1D250 800A60B0 24C606BC */  addiu $a2, %lo(D_801406BC) # addiu $a2, $a2, 0x6bc
/* B1D254 800A60B4 27A40038 */  addiu $a0, $sp, 0x38
/* B1D258 800A60B8 02002825 */  move  $a1, $s0
/* B1D25C 800A60BC 0C031AD5 */  jal   func_800C6B54
/* B1D260 800A60C0 240701B1 */   li    $a3, 433
/* B1D264 800A60C4 8FBF001C */  lw    $ra, 0x1c($sp)
/* B1D268 800A60C8 8FB00018 */  lw    $s0, 0x18($sp)
/* B1D26C 800A60CC 27BD0058 */  addiu $sp, $sp, 0x58
/* B1D270 800A60D0 03E00008 */  jr    $ra
/* B1D274 800A60D4 00000000 */   nop   

glabel func_800A60D8
/* B1D278 800A60D8 27BDFF78 */  addiu $sp, $sp, -0x88
/* B1D27C 800A60DC AFB20028 */  sw    $s2, 0x28($sp)
/* B1D280 800A60E0 AFBF0044 */  sw    $ra, 0x44($sp)
/* B1D284 800A60E4 AFBE0040 */  sw    $fp, 0x40($sp)
/* B1D288 800A60E8 AFB7003C */  sw    $s7, 0x3c($sp)
/* B1D28C 800A60EC AFB60038 */  sw    $s6, 0x38($sp)
/* B1D290 800A60F0 AFB50034 */  sw    $s5, 0x34($sp)
/* B1D294 800A60F4 AFB40030 */  sw    $s4, 0x30($sp)
/* B1D298 800A60F8 AFB3002C */  sw    $s3, 0x2c($sp)
/* B1D29C 800A60FC AFB10024 */  sw    $s1, 0x24($sp)
/* B1D2A0 800A6100 AFB00020 */  sw    $s0, 0x20($sp)
/* B1D2A4 800A6104 AFA40088 */  sw    $a0, 0x88($sp)
/* B1D2A8 800A6108 AFA5008C */  sw    $a1, 0x8c($sp)
/* B1D2AC 800A610C AFA70094 */  sw    $a3, 0x94($sp)
/* B1D2B0 800A6110 8CB50000 */  lw    $s5, ($a1)
/* B1D2B4 800A6114 00C09025 */  move  $s2, $a2
/* B1D2B8 800A6118 3C068014 */  lui   $a2, %hi(D_801406C8) # $a2, 0x8014
/* B1D2BC 800A611C 24C606C8 */  addiu $a2, %lo(D_801406C8) # addiu $a2, $a2, 0x6c8
/* B1D2C0 800A6120 240701D7 */  li    $a3, 471
/* B1D2C4 800A6124 27A40060 */  addiu $a0, $sp, 0x60
/* B1D2C8 800A6128 0C031AB1 */  jal   func_800C6AC4
/* B1D2CC 800A612C 02A02825 */   move  $a1, $s5
/* B1D2D0 800A6130 8FB600A4 */  lw    $s6, 0xa4($sp)
/* B1D2D4 800A6134 3C058016 */  lui   $a1, %hi(D_801600C0) # $a1, 0x8016
/* B1D2D8 800A6138 24A500C0 */  addiu $a1, %lo(D_801600C0) # addiu $a1, $a1, 0xc0
/* B1D2DC 800A613C 32CF0001 */  andi  $t7, $s6, 1
/* B1D2E0 800A6140 15E00004 */  bnez  $t7, .L800A6154
/* B1D2E4 800A6144 02402025 */   move  $a0, $s2
/* B1D2E8 800A6148 8FA60088 */  lw    $a2, 0x88($sp)
/* B1D2EC 800A614C 0C029AB1 */  jal   func_800A6AC4
/* B1D2F0 800A6150 8FA7009C */   lw    $a3, 0x9c($sp)
.L800A6154:
/* B1D2F4 800A6154 8E450000 */  lw    $a1, ($s2)
/* B1D2F8 800A6158 3C098016 */  lui   $t1, 0x8016
/* B1D2FC 800A615C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1D300 800A6160 8CA20000 */  lw    $v0, ($a1)
/* B1D304 800A6164 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1D308 800A6168 32CB0002 */  andi  $t3, $s6, 2
/* B1D30C 800A616C 0002C100 */  sll   $t8, $v0, 4
/* B1D310 800A6170 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1D314 800A6174 00194080 */  sll   $t0, $t9, 2
/* B1D318 800A6178 01284821 */  addu  $t1, $t1, $t0
/* B1D31C 800A617C 8D296FA8 */  lw    $t1, 0x6fa8($t1)
/* B1D320 800A6180 00415024 */  and   $t2, $v0, $at
/* B1D324 800A6184 3C018000 */  lui   $at, 0x8000
/* B1D328 800A6188 012A9821 */  addu  $s3, $t1, $t2
/* B1D32C 800A618C 15600015 */  bnez  $t3, .L800A61E4
/* B1D330 800A6190 02619821 */   addu  $s3, $s3, $at
/* B1D334 800A6194 8EA402C0 */  lw    $a0, 0x2c0($s5)
/* B1D338 800A6198 3C10DA38 */  lui   $s0, %hi(D_DA380001) # $s0, 0xda38
/* B1D33C 800A619C 3C0D8013 */  lui   $t5, %hi(D_8012DB20) # $t5, 0x8013
/* B1D340 800A61A0 248C0008 */  addiu $t4, $a0, 8
/* B1D344 800A61A4 AEAC02C0 */  sw    $t4, 0x2c0($s5)
/* B1D348 800A61A8 25ADDB20 */  addiu $t5, %lo(D_8012DB20) # addiu $t5, $t5, -0x24e0
/* B1D34C 800A61AC 36100003 */  ori   $s0, (0xDA380003 & 0xFFFF) # ori $s0, $s0, 3
/* B1D350 800A61B0 AC900000 */  sw    $s0, ($a0)
/* B1D354 800A61B4 AC8D0004 */  sw    $t5, 4($a0)
/* B1D358 800A61B8 02A02025 */  move  $a0, $s5
/* B1D35C 800A61BC 0C029F9C */  jal   func_800A7E70
/* B1D360 800A61C0 26450004 */   addiu $a1, $s2, 4
/* B1D364 800A61C4 10400048 */  beqz  $v0, .L800A62E8
/* B1D368 800A61C8 00000000 */   nop   
/* B1D36C 800A61CC 8EA402C0 */  lw    $a0, 0x2c0($s5)
/* B1D370 800A61D0 248E0008 */  addiu $t6, $a0, 8
/* B1D374 800A61D4 AEAE02C0 */  sw    $t6, 0x2c0($s5)
/* B1D378 800A61D8 AC820004 */  sw    $v0, 4($a0)
/* B1D37C 800A61DC AC900000 */  sw    $s0, ($a0)
/* B1D380 800A61E0 8E450000 */  lw    $a1, ($s2)
.L800A61E4:
/* B1D384 800A61E4 90AF0004 */  lbu   $t7, 4($a1)
/* B1D388 800A61E8 00008025 */  move  $s0, $zero
/* B1D38C 800A61EC 02608825 */  move  $s1, $s3
/* B1D390 800A61F0 19E00036 */  blez  $t7, .L800A62CC
/* B1D394 800A61F4 8FB700A0 */   lw    $s7, 0xa0($sp)
/* B1D398 800A61F8 241E0004 */  li    $fp, 4
/* B1D39C 800A61FC 24140001 */  li    $s4, 1
/* B1D3A0 800A6200 8FB30098 */  lw    $s3, 0x98($sp)
.L800A6204:
/* B1D3A4 800A6204 12600007 */  beqz  $s3, .L800A6224
/* B1D3A8 800A6208 02802025 */   move  $a0, $s4
/* B1D3AC 800A620C 8FA40088 */  lw    $a0, 0x88($sp)
/* B1D3B0 800A6210 8FA5008C */  lw    $a1, 0x8c($sp)
/* B1D3B4 800A6214 02003025 */  move  $a2, $s0
/* B1D3B8 800A6218 0260F809 */  jalr  $s3
/* B1D3BC 800A621C 02403825 */  move  $a3, $s2
/* B1D3C0 800A6220 00402025 */  move  $a0, $v0
.L800A6224:
/* B1D3C4 800A6224 8E220000 */  lw    $v0, ($s1)
/* B1D3C8 800A6228 3C0A8016 */  lui   $t2, 0x8016
/* B1D3CC 800A622C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B1D3D0 800A6230 0002C900 */  sll   $t9, $v0, 4
/* B1D3D4 800A6234 00194702 */  srl   $t0, $t9, 0x1c
/* B1D3D8 800A6238 00084880 */  sll   $t1, $t0, 2
/* B1D3DC 800A623C 01495021 */  addu  $t2, $t2, $t1
/* B1D3E0 800A6240 8D4A6FA8 */  lw    $t2, 0x6fa8($t2)
/* B1D3E4 800A6244 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1D3E8 800A6248 0041C024 */  and   $t8, $v0, $at
/* B1D3EC 800A624C 3C038000 */  lui   $v1, 0x8000
/* B1D3F0 800A6250 030A5821 */  addu  $t3, $t8, $t2
/* B1D3F4 800A6254 006B1821 */  addu  $v1, $v1, $t3
/* B1D3F8 800A6258 8C630008 */  lw    $v1, 8($v1)
/* B1D3FC 800A625C 2401000B */  li    $at, 11
/* B1D400 800A6260 147E000A */  bne   $v1, $fp, .L800A628C
/* B1D404 800A6264 00000000 */   nop   
/* B1D408 800A6268 14940008 */  bne   $a0, $s4, .L800A628C
/* B1D40C 800A626C 02402825 */   move  $a1, $s2
/* B1D410 800A6270 02A02025 */  move  $a0, $s5
/* B1D414 800A6274 02003025 */  move  $a2, $s0
/* B1D418 800A6278 02E03825 */  move  $a3, $s7
/* B1D41C 800A627C 0C02978A */  jal   func_800A5E28
/* B1D420 800A6280 AFB60010 */   sw    $s6, 0x10($sp)
/* B1D424 800A6284 1000000B */  b     .L800A62B4
/* B1D428 800A6288 8E4C0000 */   lw    $t4, ($s2)
.L800A628C:
/* B1D42C 800A628C 54610009 */  bnel  $v1, $at, .L800A62B4
/* B1D430 800A6290 8E4C0000 */   lw    $t4, ($s2)
/* B1D434 800A6294 14940006 */  bne   $a0, $s4, .L800A62B0
/* B1D438 800A6298 02402825 */   move  $a1, $s2
/* B1D43C 800A629C 02A02025 */  move  $a0, $s5
/* B1D440 800A62A0 02003025 */  move  $a2, $s0
/* B1D444 800A62A4 00003825 */  move  $a3, $zero
/* B1D448 800A62A8 0C0297D8 */  jal   func_800A5F60
/* B1D44C 800A62AC AFB60010 */   sw    $s6, 0x10($sp)
.L800A62B0:
/* B1D450 800A62B0 8E4C0000 */  lw    $t4, ($s2)
.L800A62B4:
/* B1D454 800A62B4 26100001 */  addiu $s0, %lo(D_DA380001) # addiu $s0, $s0, 1
/* B1D458 800A62B8 26310004 */  addiu $s1, $s1, 4
/* B1D45C 800A62BC 918D0004 */  lbu   $t5, 4($t4)
/* B1D460 800A62C0 020D082A */  slt   $at, $s0, $t5
/* B1D464 800A62C4 1420FFCF */  bnez  $at, .L800A6204
/* B1D468 800A62C8 00000000 */   nop   
.L800A62CC:
/* B1D46C 800A62CC 8FA20094 */  lw    $v0, 0x94($sp)
/* B1D470 800A62D0 8FA40088 */  lw    $a0, 0x88($sp)
/* B1D474 800A62D4 8FA5008C */  lw    $a1, 0x8c($sp)
/* B1D478 800A62D8 10400003 */  beqz  $v0, .L800A62E8
/* B1D47C 800A62DC 00000000 */   nop   
/* B1D480 800A62E0 0040F809 */  jalr  $v0
/* B1D484 800A62E4 02403025 */  move  $a2, $s2
.L800A62E8:
/* B1D488 800A62E8 3C068014 */  lui   $a2, %hi(D_801406D4) # $a2, 0x8014
/* B1D48C 800A62EC 24C606D4 */  addiu $a2, %lo(D_801406D4) # addiu $a2, $a2, 0x6d4
/* B1D490 800A62F0 27A40060 */  addiu $a0, $sp, 0x60
/* B1D494 800A62F4 02A02825 */  move  $a1, $s5
/* B1D498 800A62F8 0C031AD5 */  jal   func_800C6B54
/* B1D49C 800A62FC 24070216 */   li    $a3, 534
/* B1D4A0 800A6300 8FBF0044 */  lw    $ra, 0x44($sp)
/* B1D4A4 800A6304 8FB00020 */  lw    $s0, 0x20($sp)
/* B1D4A8 800A6308 8FB10024 */  lw    $s1, 0x24($sp)
/* B1D4AC 800A630C 8FB20028 */  lw    $s2, 0x28($sp)
/* B1D4B0 800A6310 8FB3002C */  lw    $s3, 0x2c($sp)
/* B1D4B4 800A6314 8FB40030 */  lw    $s4, 0x30($sp)
/* B1D4B8 800A6318 8FB50034 */  lw    $s5, 0x34($sp)
/* B1D4BC 800A631C 8FB60038 */  lw    $s6, 0x38($sp)
/* B1D4C0 800A6320 8FB7003C */  lw    $s7, 0x3c($sp)
/* B1D4C4 800A6324 8FBE0040 */  lw    $fp, 0x40($sp)
/* B1D4C8 800A6328 03E00008 */  jr    $ra
/* B1D4CC 800A632C 27BD0088 */   addiu $sp, $sp, 0x88

/* B1D4D0 800A6330 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D4D4 800A6334 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D4D8 800A6338 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D4DC 800A633C AFA00010 */  sw    $zero, 0x10($sp)
/* B1D4E0 800A6340 AFA00018 */  sw    $zero, 0x18($sp)
/* B1D4E4 800A6344 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1D4E8 800A6348 0C029836 */  jal   func_800A60D8
/* B1D4EC 800A634C AFAE0014 */   sw    $t6, 0x14($sp)
/* B1D4F0 800A6350 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D4F4 800A6354 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D4F8 800A6358 03E00008 */  jr    $ra
/* B1D4FC 800A635C 00000000 */   nop   

/* B1D500 800A6360 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D504 800A6364 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D508 800A6368 8FAF003C */  lw    $t7, 0x3c($sp)
/* B1D50C 800A636C AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D510 800A6370 AFA00018 */  sw    $zero, 0x18($sp)
/* B1D514 800A6374 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1D518 800A6378 AFAE0010 */  sw    $t6, 0x10($sp)
/* B1D51C 800A637C 0C029836 */  jal   func_800A60D8
/* B1D520 800A6380 AFAF0014 */   sw    $t7, 0x14($sp)
/* B1D524 800A6384 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D528 800A6388 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D52C 800A638C 03E00008 */  jr    $ra
/* B1D530 800A6390 00000000 */   nop   

/* B1D534 800A6394 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D538 800A6398 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D53C 800A639C 8FAF003C */  lw    $t7, 0x3c($sp)
/* B1D540 800A63A0 8FB80040 */  lw    $t8, 0x40($sp)
/* B1D544 800A63A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D548 800A63A8 AFA0001C */  sw    $zero, 0x1c($sp)
/* B1D54C 800A63AC AFAE0010 */  sw    $t6, 0x10($sp)
/* B1D550 800A63B0 AFAF0014 */  sw    $t7, 0x14($sp)
/* B1D554 800A63B4 0C029836 */  jal   func_800A60D8
/* B1D558 800A63B8 AFB80018 */   sw    $t8, 0x18($sp)
/* B1D55C 800A63BC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D560 800A63C0 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D564 800A63C4 03E00008 */  jr    $ra
/* B1D568 800A63C8 00000000 */   nop   

/* B1D56C 800A63CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B1D570 800A63D0 8FAE0038 */  lw    $t6, 0x38($sp)
/* B1D574 800A63D4 8FAF003C */  lw    $t7, 0x3c($sp)
/* B1D578 800A63D8 8FB80040 */  lw    $t8, 0x40($sp)
/* B1D57C 800A63DC 8FB90044 */  lw    $t9, 0x44($sp)
/* B1D580 800A63E0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1D584 800A63E4 AFAE0010 */  sw    $t6, 0x10($sp)
/* B1D588 800A63E8 AFAF0014 */  sw    $t7, 0x14($sp)
/* B1D58C 800A63EC AFB80018 */  sw    $t8, 0x18($sp)
/* B1D590 800A63F0 0C029836 */  jal   func_800A60D8
/* B1D594 800A63F4 AFB9001C */   sw    $t9, 0x1c($sp)
/* B1D598 800A63F8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1D59C 800A63FC 27BD0028 */  addiu $sp, $sp, 0x28
/* B1D5A0 800A6400 03E00008 */  jr    $ra
/* B1D5A4 800A6404 00000000 */   nop   

/* B1D5A8 800A6408 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1D5AC 800A640C 3C188016 */  lui   $t8, %hi(D_801600C0) # $t8, 0x8016
/* B1D5B0 800A6410 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1D5B4 800A6414 AFA40058 */  sw    $a0, 0x58($sp)
/* B1D5B8 800A6418 AFA5005C */  sw    $a1, 0x5c($sp)
/* B1D5BC 800A641C AFA60060 */  sw    $a2, 0x60($sp)
/* B1D5C0 800A6420 271800C0 */  addiu $t8, %lo(D_801600C0) # addiu $t8, $t8, 0xc0
/* B1D5C4 800A6424 00057980 */  sll   $t7, $a1, 6
/* B1D5C8 800A6428 AFA70064 */  sw    $a3, 0x64($sp)
/* B1D5CC 800A642C 01F82821 */  addu  $a1, $t7, $t8
/* B1D5D0 800A6430 27A60018 */  addiu $a2, $sp, 0x18
/* B1D5D4 800A6434 0C029BE8 */  jal   func_800A6FA0
/* B1D5D8 800A6438 24840004 */   addiu $a0, $a0, 4
/* B1D5DC 800A643C 27A40018 */  addiu $a0, $sp, 0x18
/* B1D5E0 800A6440 8FA50060 */  lw    $a1, 0x60($sp)
/* B1D5E4 800A6444 0C029BBD */  jal   func_800A6EF4
/* B1D5E8 800A6448 8FA60064 */   lw    $a2, 0x64($sp)
/* B1D5EC 800A644C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1D5F0 800A6450 27BD0058 */  addiu $sp, $sp, 0x58
/* B1D5F4 800A6454 03E00008 */  jr    $ra
/* B1D5F8 800A6458 00000000 */   nop   
