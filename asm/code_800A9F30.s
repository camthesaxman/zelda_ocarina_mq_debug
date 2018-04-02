.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800A9F30
/* B210D0 800A9F30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B210D4 800A9F34 AFA40018 */  sw    $a0, 0x18($sp)
/* B210D8 800A9F38 AFBF0014 */  sw    $ra, 0x14($sp)
/* B210DC 800A9F3C 3C048016 */  lui   $a0, %hi(D_80160FD0) # $a0, 0x8016
/* B210E0 800A9F40 AFA5001C */  sw    $a1, 0x1c($sp)
/* B210E4 800A9F44 0C034B8C */  jal   func_800D2E30
/* B210E8 800A9F48 24840FD0 */   addiu $a0, %lo(D_80160FD0) # addiu $a0, $a0, 0xfd0
/* B210EC 800A9F4C 3C058016 */  lui   $a1, %hi(D_80160FD0) # $a1, 0x8016
/* B210F0 800A9F50 24A50FD0 */  addiu $a1, %lo(D_80160FD0) # addiu $a1, $a1, 0xfd0
/* B210F4 800A9F54 0C031E52 */  jal   func_800C7948
/* B210F8 800A9F58 8FA40018 */   lw    $a0, 0x18($sp)
/* B210FC 800A9F5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B21100 800A9F60 27BD0018 */  addiu $sp, $sp, 0x18
/* B21104 800A9F64 03E00008 */  jr    $ra
/* B21108 800A9F68 00000000 */   nop   

/* B2110C 800A9F6C 3C018014 */  lui   $at, 0x8014
/* B21110 800A9F70 C4241060 */  lwc1  $f4, 0x1060($at)
/* B21114 800A9F74 AFA50004 */  sw    $a1, 4($sp)
/* B21118 800A9F78 AFA60008 */  sw    $a2, 8($sp)
/* B2111C 800A9F7C 460C203C */  c.lt.s $f4, $f12
/* B21120 800A9F80 AFA7000C */  sw    $a3, 0xc($sp)
/* B21124 800A9F84 30E700FF */  andi  $a3, $a3, 0xff
/* B21128 800A9F88 30C600FF */  andi  $a2, $a2, 0xff
/* B2112C 800A9F8C 45000003 */  bc1f  .L800A9F9C
/* B21130 800A9F90 30A500FF */   andi  $a1, $a1, 0xff
/* B21134 800A9F94 10000005 */  b     .L800A9FAC
/* B21138 800A9F98 240203E8 */   li    $v0, 1000
.L800A9F9C:
/* B2113C 800A9F9C 46006004 */  sqrt.s $f0, $f12
/* B21140 800A9FA0 4600018D */  trunc.w.s $f6, $f0
/* B21144 800A9FA4 44023000 */  mfc1  $v0, $f6
/* B21148 800A9FA8 00000000 */  nop   
.L800A9FAC:
/* B2114C 800A9FAC 284103E8 */  slti  $at, $v0, 0x3e8
/* B21150 800A9FB0 10200011 */  beqz  $at, .L800A9FF8
/* B21154 800A9FB4 00000000 */   nop   
/* B21158 800A9FB8 10A0000F */  beqz  $a1, .L800A9FF8
/* B2115C 800A9FBC 00000000 */   nop   
/* B21160 800A9FC0 10E0000D */  beqz  $a3, .L800A9FF8
/* B21164 800A9FC4 00027A00 */   sll   $t7, $v0, 8
/* B21168 800A9FC8 01E27823 */  subu  $t7, $t7, $v0
/* B2116C 800A9FCC 240103E8 */  li    $at, 1000
/* B21170 800A9FD0 01E1001A */  div   $zero, $t7, $at
/* B21174 800A9FD4 0000C012 */  mflo  $t8
/* B21178 800A9FD8 00B82023 */  subu  $a0, $a1, $t8
/* B2117C 800A9FDC 18800006 */  blez  $a0, .L800A9FF8
/* B21180 800A9FE0 3C028016 */   lui   $v0, %hi(D_80160FD0) # $v0, 0x8016
/* B21184 800A9FE4 3C018016 */  lui   $at, %hi(D_801610DA) # $at, 0x8016
/* B21188 800A9FE8 24420FD0 */  addiu $v0, %lo(D_80160FD0) # addiu $v0, $v0, 0xfd0
/* B2118C 800A9FEC A02410DA */  sb    $a0, %lo(D_801610DA)($at)
/* B21190 800A9FF0 A046010B */  sb    $a2, 0x10b($v0)
/* B21194 800A9FF4 A047010C */  sb    $a3, 0x10c($v0)
.L800A9FF8:
/* B21198 800A9FF8 03E00008 */  jr    $ra
/* B2119C 800A9FFC 00000000 */   nop   

glabel func_800AA000
/* B211A0 800AA000 3C018014 */  lui   $at, 0x8014
/* B211A4 800AA004 C4241064 */  lwc1  $f4, 0x1064($at)
/* B211A8 800AA008 AFA50004 */  sw    $a1, 4($sp)
/* B211AC 800AA00C AFA60008 */  sw    $a2, 8($sp)
/* B211B0 800AA010 460C203C */  c.lt.s $f4, $f12
/* B211B4 800AA014 AFA7000C */  sw    $a3, 0xc($sp)
/* B211B8 800AA018 30E700FF */  andi  $a3, $a3, 0xff
/* B211BC 800AA01C 30C600FF */  andi  $a2, $a2, 0xff
/* B211C0 800AA020 45000003 */  bc1f  .L800AA030
/* B211C4 800AA024 30A500FF */   andi  $a1, $a1, 0xff
/* B211C8 800AA028 10000005 */  b     .L800AA040
/* B211CC 800AA02C 240203E8 */   li    $v0, 1000
.L800AA030:
/* B211D0 800AA030 46006004 */  sqrt.s $f0, $f12
/* B211D4 800AA034 4600018D */  trunc.w.s $f6, $f0
/* B211D8 800AA038 44023000 */  mfc1  $v0, $f6
/* B211DC 800AA03C 00000000 */  nop   
.L800AA040:
/* B211E0 800AA040 284103E8 */  slti  $at, $v0, 0x3e8
/* B211E4 800AA044 10200019 */  beqz  $at, .L800AA0AC
/* B211E8 800AA048 00000000 */   nop   
/* B211EC 800AA04C 10A00017 */  beqz  $a1, .L800AA0AC
/* B211F0 800AA050 00A01825 */   move  $v1, $a1
/* B211F4 800AA054 10E00015 */  beqz  $a3, .L800AA0AC
/* B211F8 800AA058 3C058016 */   lui   $a1, %hi(D_80160FD0) # $a1, 0x8016
/* B211FC 800AA05C 3C048016 */  lui   $a0, %hi(D_80161010) # $a0, 0x8016
/* B21200 800AA060 24841010 */  addiu $a0, %lo(D_80161010) # addiu $a0, $a0, 0x1010
/* B21204 800AA064 24A50FD0 */  addiu $a1, %lo(D_80160FD0) # addiu $a1, $a1, 0xfd0
/* B21208 800AA068 90AF0004 */  lbu   $t7, 4($a1)
.L800AA06C:
/* B2120C 800AA06C 15E0000C */  bnez  $t7, .L800AA0A0
/* B21210 800AA070 0002C200 */   sll   $t8, $v0, 8
/* B21214 800AA074 0302C023 */  subu  $t8, $t8, $v0
/* B21218 800AA078 240103E8 */  li    $at, 1000
/* B2121C 800AA07C 0301001A */  div   $zero, $t8, $at
/* B21220 800AA080 0000C812 */  mflo  $t9
/* B21224 800AA084 00792023 */  subu  $a0, $v1, $t9
/* B21228 800AA088 18800008 */  blez  $a0, .L800AA0AC
/* B2122C 800AA08C 00000000 */   nop   
/* B21230 800AA090 A0A40004 */  sb    $a0, 4($a1)
/* B21234 800AA094 A0A60044 */  sb    $a2, 0x44($a1)
/* B21238 800AA098 03E00008 */  jr    $ra
/* B2123C 800AA09C A0A70084 */   sb    $a3, 0x84($a1)

.L800AA0A0:
/* B21240 800AA0A0 24A50001 */  addiu $a1, $a1, 1
/* B21244 800AA0A4 54A4FFF1 */  bnel  $a1, $a0, .L800AA06C
/* B21248 800AA0A8 90AF0004 */   lbu   $t7, 4($a1)
.L800AA0AC:
/* B2124C 800AA0AC 03E00008 */  jr    $ra
/* B21250 800AA0B0 00000000 */   nop   

glabel func_800AA0B4
/* B21254 800AA0B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B21258 800AA0B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2125C 800AA0BC 3C048016 */  lui   $a0, %hi(D_80160FD0) # $a0, 0x8016
/* B21260 800AA0C0 0C034C50 */  jal   func_800D3140
/* B21264 800AA0C4 24840FD0 */   addiu $a0, %lo(D_80160FD0) # addiu $a0, $a0, 0xfd0
/* B21268 800AA0C8 3C028016 */  lui   $v0, %hi(D_801668C0) # $v0, 0x8016
/* B2126C 800AA0CC 244268C0 */  addiu $v0, %lo(D_801668C0) # addiu $v0, $v0, 0x68c0
/* B21270 800AA0D0 3C0E800B */  lui   $t6, %hi(func_800A9F30) # $t6, 0x800b
/* B21274 800AA0D4 25CE9F30 */  addiu $t6, %lo(func_800A9F30) # addiu $t6, $t6, -0x60d0
/* B21278 800AA0D8 AC4E0460 */  sw    $t6, 0x460($v0)
/* B2127C 800AA0DC AC400464 */  sw    $zero, 0x464($v0)
/* B21280 800AA0E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B21284 800AA0E4 27BD0018 */  addiu $sp, $sp, 0x18
/* B21288 800AA0E8 03E00008 */  jr    $ra
/* B2128C 800AA0EC 00000000 */   nop   

glabel func_800AA0F0
/* B21290 800AA0F0 3C0F8016 */  lui   $t7, %hi(D_80166D20) # $t7, 0x8016
/* B21294 800AA0F4 8DEF6D20 */  lw    $t7, %lo(D_80166D20)($t7)
/* B21298 800AA0F8 3C0E800B */  lui   $t6, %hi(func_800A9F30) # $t6, 0x800b
/* B2129C 800AA0FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B212A0 800AA100 25CE9F30 */  addiu $t6, %lo(func_800A9F30) # addiu $t6, $t6, -0x60d0
/* B212A4 800AA104 15CF0009 */  bne   $t6, $t7, .L800AA12C
/* B212A8 800AA108 AFBF0014 */   sw    $ra, 0x14($sp)
/* B212AC 800AA10C 3C188016 */  lui   $t8, %hi(D_80166D24) # $t8, 0x8016
/* B212B0 800AA110 8F186D24 */  lw    $t8, %lo(D_80166D24)($t8)
/* B212B4 800AA114 3C018016 */  lui   $at, %hi(D_80166D20) # $at, 0x8016
/* B212B8 800AA118 17000004 */  bnez  $t8, .L800AA12C
/* B212BC 800AA11C 00000000 */   nop   
/* B212C0 800AA120 AC206D20 */  sw    $zero, %lo(D_80166D20)($at)
/* B212C4 800AA124 3C018016 */  lui   $at, %hi(D_80166D24) # $at, 0x8016
/* B212C8 800AA128 AC206D24 */  sw    $zero, %lo(D_80166D24)($at)
.L800AA12C:
/* B212CC 800AA12C 3C048016 */  lui   $a0, %hi(D_80160FD0) # $a0, 0x8016
/* B212D0 800AA130 0C034C5E */  jal   func_800D3178
/* B212D4 800AA134 24840FD0 */   addiu $a0, %lo(D_80160FD0) # addiu $a0, $a0, 0xfd0
/* B212D8 800AA138 8FBF0014 */  lw    $ra, 0x14($sp)
/* B212DC 800AA13C 27BD0018 */  addiu $sp, $sp, 0x18
/* B212E0 800AA140 03E00008 */  jr    $ra
/* B212E4 800AA144 00000000 */   nop   

/* B212E8 800AA148 3C028016 */  lui   $v0, %hi(D_80166B6E) # $v0, 0x8016
/* B212EC 800AA14C 90426B6E */  lbu   $v0, %lo(D_80166B6E)($v0)
/* B212F0 800AA150 38420001 */  xori  $v0, $v0, 1
/* B212F4 800AA154 03E00008 */  jr    $ra
/* B212F8 800AA158 2C420001 */   sltiu $v0, $v0, 1

glabel func_800AA15C
/* B212FC 800AA15C 240E0002 */  li    $t6, 2
/* B21300 800AA160 3C018016 */  lui   $at, 0x8016
/* B21304 800AA164 03E00008 */  jr    $ra
/* B21308 800AA168 A02E10D4 */   sb    $t6, 0x10d4($at)

glabel func_800AA16C
/* B2130C 800AA16C 3C018016 */  lui   $at, 0x8016
/* B21310 800AA170 03E00008 */  jr    $ra
/* B21314 800AA174 A02010D4 */   sb    $zero, 0x10d4($at)

glabel func_800AA178
/* B21318 800AA178 0004702B */  sltu  $t6, $zero, $a0
/* B2131C 800AA17C 3C018016 */  lui   $at, 0x8016
/* B21320 800AA180 03E00008 */  jr    $ra
/* B21324 800AA184 A02E10D5 */   sb    $t6, 0x10d5($at)
