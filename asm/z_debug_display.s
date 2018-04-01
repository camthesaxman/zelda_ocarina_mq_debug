.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80063E90
/* ADB030 80063E90 3C018016 */  lui   $at, 0x8016
/* ADB034 80063E94 03E00008 */  jr    $ra
/* ADB038 80063E98 AC20FCB0 */   sw    $zero, -0x350($at)

glabel func_80063E9C
/* ADB03C 80063E9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* ADB040 80063EA0 3C038016 */  lui   $v1, %hi(D_8015FCB0) # $v1, 0x8016
/* ADB044 80063EA4 2463FCB0 */  addiu $v1, %lo(D_8015FCB0) # addiu $v1, $v1, -0x350
/* ADB048 80063EA8 8C6E0000 */  lw    $t6, ($v1)
/* ADB04C 80063EAC AFBF0014 */  sw    $ra, 0x14($sp)
/* ADB050 80063EB0 E7AC0020 */  swc1  $f12, 0x20($sp)
/* ADB054 80063EB4 E7AE0024 */  swc1  $f14, 0x24($sp)
/* ADB058 80063EB8 AFA60028 */  sw    $a2, 0x28($sp)
/* ADB05C 80063EBC AFA7002C */  sw    $a3, 0x2c($sp)
/* ADB060 80063EC0 8FA40058 */  lw    $a0, 0x58($sp)
/* ADB064 80063EC4 2405002C */  li    $a1, 44
/* ADB068 80063EC8 0C031A73 */  jal   graph_alloc
/* ADB06C 80063ECC AFAE001C */   sw    $t6, 0x1c($sp)
/* ADB070 80063ED0 C7A40020 */  lwc1  $f4, 0x20($sp)
/* ADB074 80063ED4 3C038016 */  lui   $v1, %hi(D_8015FCB0) # $v1, 0x8016
/* ADB078 80063ED8 2463FCB0 */  addiu $v1, %lo(D_8015FCB0) # addiu $v1, $v1, -0x350
/* ADB07C 80063EDC AC620000 */  sw    $v0, ($v1)
/* ADB080 80063EE0 E4440000 */  swc1  $f4, ($v0)
/* ADB084 80063EE4 8C780000 */  lw    $t8, ($v1)
/* ADB088 80063EE8 C7A60024 */  lwc1  $f6, 0x24($sp)
/* ADB08C 80063EEC E7060004 */  swc1  $f6, 4($t8)
/* ADB090 80063EF0 8C790000 */  lw    $t9, ($v1)
/* ADB094 80063EF4 C7A80028 */  lwc1  $f8, 0x28($sp)
/* ADB098 80063EF8 E7280008 */  swc1  $f8, 8($t9)
/* ADB09C 80063EFC 8C690000 */  lw    $t1, ($v1)
/* ADB0A0 80063F00 87A8002E */  lh    $t0, 0x2e($sp)
/* ADB0A4 80063F04 A528000C */  sh    $t0, 0xc($t1)
/* ADB0A8 80063F08 8C6B0000 */  lw    $t3, ($v1)
/* ADB0AC 80063F0C 87AA0032 */  lh    $t2, 0x32($sp)
/* ADB0B0 80063F10 A56A000E */  sh    $t2, 0xe($t3)
/* ADB0B4 80063F14 8C6D0000 */  lw    $t5, ($v1)
/* ADB0B8 80063F18 87AC0036 */  lh    $t4, 0x36($sp)
/* ADB0BC 80063F1C A5AC0010 */  sh    $t4, 0x10($t5)
/* ADB0C0 80063F20 8C6E0000 */  lw    $t6, ($v1)
/* ADB0C4 80063F24 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* ADB0C8 80063F28 E5CA0014 */  swc1  $f10, 0x14($t6)
/* ADB0CC 80063F2C 8C6F0000 */  lw    $t7, ($v1)
/* ADB0D0 80063F30 C7B0003C */  lwc1  $f16, 0x3c($sp)
/* ADB0D4 80063F34 E5F00018 */  swc1  $f16, 0x18($t7)
/* ADB0D8 80063F38 8C780000 */  lw    $t8, ($v1)
/* ADB0DC 80063F3C C7B20040 */  lwc1  $f18, 0x40($sp)
/* ADB0E0 80063F40 E712001C */  swc1  $f18, 0x1c($t8)
/* ADB0E4 80063F44 8C680000 */  lw    $t0, ($v1)
/* ADB0E8 80063F48 93B90047 */  lbu   $t9, 0x47($sp)
/* ADB0EC 80063F4C A1190020 */  sb    $t9, 0x20($t0)
/* ADB0F0 80063F50 8C6A0000 */  lw    $t2, ($v1)
/* ADB0F4 80063F54 93A9004B */  lbu   $t1, 0x4b($sp)
/* ADB0F8 80063F58 A1490021 */  sb    $t1, 0x21($t2)
/* ADB0FC 80063F5C 8C6C0000 */  lw    $t4, ($v1)
/* ADB100 80063F60 93AB004F */  lbu   $t3, 0x4f($sp)
/* ADB104 80063F64 A18B0022 */  sb    $t3, 0x22($t4)
/* ADB108 80063F68 8C6E0000 */  lw    $t6, ($v1)
/* ADB10C 80063F6C 93AD0053 */  lbu   $t5, 0x53($sp)
/* ADB110 80063F70 A1CD0023 */  sb    $t5, 0x23($t6)
/* ADB114 80063F74 8C780000 */  lw    $t8, ($v1)
/* ADB118 80063F78 87AF0056 */  lh    $t7, 0x56($sp)
/* ADB11C 80063F7C A70F0024 */  sh    $t7, 0x24($t8)
/* ADB120 80063F80 8C680000 */  lw    $t0, ($v1)
/* ADB124 80063F84 8FB9001C */  lw    $t9, 0x1c($sp)
/* ADB128 80063F88 AD190028 */  sw    $t9, 0x28($t0)
/* ADB12C 80063F8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* ADB130 80063F90 8C620000 */  lw    $v0, ($v1)
/* ADB134 80063F94 27BD0020 */  addiu $sp, $sp, 0x20
/* ADB138 80063F98 03E00008 */  jr    $ra
/* ADB13C 80063F9C 00000000 */   nop   

glabel func_80063FA0
/* ADB140 80063FA0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* ADB144 80063FA4 AFB00014 */  sw    $s0, 0x14($sp)
/* ADB148 80063FA8 3C108016 */  lui   $s0, %hi(D_8015FCB0) # $s0, 0x8016
/* ADB14C 80063FAC 8E10FCB0 */  lw    $s0, %lo(D_8015FCB0)($s0)
/* ADB150 80063FB0 AFB10018 */  sw    $s1, 0x18($sp)
/* ADB154 80063FB4 00808825 */  move  $s1, $a0
/* ADB158 80063FB8 AFBF0024 */  sw    $ra, 0x24($sp)
/* ADB15C 80063FBC AFB30020 */  sw    $s3, 0x20($sp)
/* ADB160 80063FC0 12000014 */  beqz  $s0, .L80064014
/* ADB164 80063FC4 AFB2001C */   sw    $s2, 0x1c($sp)
/* ADB168 80063FC8 3C138012 */  lui   $s3, %hi(D_8011E170) # $s3, 0x8012
/* ADB16C 80063FCC 3C128012 */  lui   $s2, %hi(D_8011E178) # $s2, 0x8012
/* ADB170 80063FD0 2652E178 */  addiu $s2, %lo(D_8011E178) # addiu $s2, $s2, -0x1e88
/* ADB174 80063FD4 2673E170 */  addiu $s3, %lo(D_8011E170) # addiu $s3, $s3, -0x1e90
/* ADB178 80063FD8 860E0024 */  lh    $t6, 0x24($s0)
.L80063FDC:
/* ADB17C 80063FDC 02002025 */  move  $a0, $s0
/* ADB180 80063FE0 02203025 */  move  $a2, $s1
/* ADB184 80063FE4 000E78C0 */  sll   $t7, $t6, 3
/* ADB188 80063FE8 024F1021 */  addu  $v0, $s2, $t7
/* ADB18C 80063FEC 84580000 */  lh    $t8, ($v0)
/* ADB190 80063FF0 8C450004 */  lw    $a1, 4($v0)
/* ADB194 80063FF4 0018C880 */  sll   $t9, $t8, 2
/* ADB198 80063FF8 02794021 */  addu  $t0, $s3, $t9
/* ADB19C 80063FFC 8D190000 */  lw    $t9, ($t0)
/* ADB1A0 80064000 0320F809 */  jalr  $t9
/* ADB1A4 80064004 00000000 */  nop   
/* ADB1A8 80064008 8E100028 */  lw    $s0, 0x28($s0)
/* ADB1AC 8006400C 5600FFF3 */  bnezl $s0, .L80063FDC
/* ADB1B0 80064010 860E0024 */   lh    $t6, 0x24($s0)
.L80064014:
/* ADB1B4 80064014 8FBF0024 */  lw    $ra, 0x24($sp)
/* ADB1B8 80064018 8FB00014 */  lw    $s0, 0x14($sp)
/* ADB1BC 8006401C 8FB10018 */  lw    $s1, 0x18($sp)
/* ADB1C0 80064020 8FB2001C */  lw    $s2, 0x1c($sp)
/* ADB1C4 80064024 8FB30020 */  lw    $s3, 0x20($sp)
/* ADB1C8 80064028 03E00008 */  jr    $ra
/* ADB1CC 8006402C 27BD0028 */   addiu $sp, $sp, 0x28

/* ADB1D0 80064030 27BDFFA0 */  addiu $sp, $sp, -0x60
/* ADB1D4 80064034 AFBF001C */  sw    $ra, 0x1c($sp)
/* ADB1D8 80064038 AFB10018 */  sw    $s1, 0x18($sp)
/* ADB1DC 8006403C AFB00014 */  sw    $s0, 0x14($sp)
/* ADB1E0 80064040 AFA50064 */  sw    $a1, 0x64($sp)
/* ADB1E4 80064044 AFA60068 */  sw    $a2, 0x68($sp)
/* ADB1E8 80064048 8CC50000 */  lw    $a1, ($a2)
/* ADB1EC 8006404C 00808025 */  move  $s0, $a0
/* ADB1F0 80064050 3C068014 */  lui   $a2, %hi(D_8013ADA0) # $a2, 0x8014
/* ADB1F4 80064054 24C6ADA0 */  addiu $a2, %lo(D_8013ADA0) # addiu $a2, $a2, -0x5260
/* ADB1F8 80064058 27A4004C */  addiu $a0, $sp, 0x4c
/* ADB1FC 8006405C 240700A9 */  li    $a3, 169
/* ADB200 80064060 0C031AB1 */  jal   func_800C6AC4
/* ADB204 80064064 00A08825 */   move  $s1, $a1
/* ADB208 80064068 8FAF0068 */  lw    $t7, 0x68($sp)
/* ADB20C 8006406C 0C02519E */  jal   func_80094678
/* ADB210 80064070 8DE40000 */   lw    $a0, ($t7)
/* ADB214 80064074 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB218 80064078 3C19FA00 */  lui   $t9, 0xfa00
/* ADB21C 8006407C 00003825 */  move  $a3, $zero
/* ADB220 80064080 24580008 */  addiu $t8, $v0, 8
/* ADB224 80064084 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* ADB228 80064088 AC590000 */  sw    $t9, ($v0)
/* ADB22C 8006408C 920C0021 */  lbu   $t4, 0x21($s0)
/* ADB230 80064090 92090020 */  lbu   $t1, 0x20($s0)
/* ADB234 80064094 92180022 */  lbu   $t8, 0x22($s0)
/* ADB238 80064098 920B0023 */  lbu   $t3, 0x23($s0)
/* ADB23C 8006409C 000C6C00 */  sll   $t5, $t4, 0x10
/* ADB240 800640A0 00095600 */  sll   $t2, $t1, 0x18
/* ADB244 800640A4 014D7025 */  or    $t6, $t2, $t5
/* ADB248 800640A8 0018CA00 */  sll   $t9, $t8, 8
/* ADB24C 800640AC 01D94025 */  or    $t0, $t6, $t9
/* ADB250 800640B0 010B6025 */  or    $t4, $t0, $t3
/* ADB254 800640B4 AC4C0004 */  sw    $t4, 4($v0)
/* ADB258 800640B8 8E060008 */  lw    $a2, 8($s0)
/* ADB25C 800640BC C60E0004 */  lwc1  $f14, 4($s0)
/* ADB260 800640C0 0C034261 */  jal   func_800D0984
/* ADB264 800640C4 C60C0000 */   lwc1  $f12, ($s0)
/* ADB268 800640C8 C60C0014 */  lwc1  $f12, 0x14($s0)
/* ADB26C 800640CC C60E0018 */  lwc1  $f14, 0x18($s0)
/* ADB270 800640D0 8E06001C */  lw    $a2, 0x1c($s0)
/* ADB274 800640D4 0C0342A3 */  jal   func_800D0A8C
/* ADB278 800640D8 24070001 */   li    $a3, 1
/* ADB27C 800640DC 8FA40068 */  lw    $a0, 0x68($sp)
/* ADB280 800640E0 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* ADB284 800640E4 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* ADB288 800640E8 24050001 */  li    $a1, 1
/* ADB28C 800640EC 0C03424C */  jal   func_800D0930
/* ADB290 800640F0 00812021 */   addu  $a0, $a0, $at
/* ADB294 800640F4 8604000C */  lh    $a0, 0xc($s0)
/* ADB298 800640F8 8605000E */  lh    $a1, 0xe($s0)
/* ADB29C 800640FC 86060010 */  lh    $a2, 0x10($s0)
/* ADB2A0 80064100 0C034421 */  jal   func_800D1084
/* ADB2A4 80064104 24070001 */   li    $a3, 1
/* ADB2A8 80064108 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB2AC 8006410C 3C0DFD90 */  lui   $t5, 0xfd90
/* ADB2B0 80064110 3C0EF590 */  lui   $t6, 0xf590
/* ADB2B4 80064114 244A0008 */  addiu $t2, $v0, 8
/* ADB2B8 80064118 AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* ADB2BC 8006411C AC4D0000 */  sw    $t5, ($v0)
/* ADB2C0 80064120 8FAF0064 */  lw    $t7, 0x64($sp)
/* ADB2C4 80064124 3C190700 */  lui   $t9, 0x700
/* ADB2C8 80064128 3C08E600 */  lui   $t0, 0xe600
/* ADB2CC 8006412C AC4F0004 */  sw    $t7, 4($v0)
/* ADB2D0 80064130 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB2D4 80064134 3C0A0707 */  lui   $t2, (0x0707F400 >> 16) # lui $t2, 0x707
/* ADB2D8 80064138 354AF400 */  ori   $t2, (0x0707F400 & 0xFFFF) # ori $t2, $t2, 0xf400
/* ADB2DC 8006413C 24580008 */  addiu $t8, $v0, 8
/* ADB2E0 80064140 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* ADB2E4 80064144 AC4E0000 */  sw    $t6, ($v0)
/* ADB2E8 80064148 AC590004 */  sw    $t9, 4($v0)
/* ADB2EC 8006414C 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB2F0 80064150 3C0CF300 */  lui   $t4, 0xf300
/* ADB2F4 80064154 3C0FE700 */  lui   $t7, 0xe700
/* ADB2F8 80064158 24490008 */  addiu $t1, $v0, 8
/* ADB2FC 8006415C AE2902D0 */  sw    $t1, 0x2d0($s1)
/* ADB300 80064160 AC480000 */  sw    $t0, ($v0)
/* ADB304 80064164 AC400004 */  sw    $zero, 4($v0)
/* ADB308 80064168 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB30C 8006416C 3C0EF588 */  lui   $t6, (0xF5880400 >> 16) # lui $t6, 0xf588
/* ADB310 80064170 35CE0400 */  ori   $t6, (0xF5880400 & 0xFFFF) # ori $t6, $t6, 0x400
/* ADB314 80064174 244B0008 */  addiu $t3, $v0, 8
/* ADB318 80064178 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* ADB31C 8006417C AC4C0000 */  sw    $t4, ($v0)
/* ADB320 80064180 AC4A0004 */  sw    $t2, 4($v0)
/* ADB324 80064184 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB328 80064188 3C080003 */  lui   $t0, (0x0003C03C >> 16) # lui $t0, 3
/* ADB32C 8006418C 3508C03C */  ori   $t0, (0x0003C03C & 0xFFFF) # ori $t0, $t0, 0xc03c
/* ADB330 80064190 244D0008 */  addiu $t5, $v0, 8
/* ADB334 80064194 AE2D02D0 */  sw    $t5, 0x2d0($s1)
/* ADB338 80064198 AC4F0000 */  sw    $t7, ($v0)
/* ADB33C 8006419C AC400004 */  sw    $zero, 4($v0)
/* ADB340 800641A0 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB344 800641A4 3C09F200 */  lui   $t1, 0xf200
/* ADB348 800641A8 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* ADB34C 800641AC 24580008 */  addiu $t8, $v0, 8
/* ADB350 800641B0 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* ADB354 800641B4 AC4E0000 */  sw    $t6, ($v0)
/* ADB358 800641B8 AC400004 */  sw    $zero, 4($v0)
/* ADB35C 800641BC 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB360 800641C0 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* ADB364 800641C4 3C058014 */  lui   $a1, %hi(D_8013ADB8) # $a1, 0x8014
/* ADB368 800641C8 24590008 */  addiu $t9, $v0, 8
/* ADB36C 800641CC AE3902D0 */  sw    $t9, 0x2d0($s1)
/* ADB370 800641D0 AC490000 */  sw    $t1, ($v0)
/* ADB374 800641D4 AC480004 */  sw    $t0, 4($v0)
/* ADB378 800641D8 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB37C 800641DC 24A5ADB8 */  addiu $a1, %lo(D_8013ADB8) # addiu $a1, $a1, -0x5248
/* ADB380 800641E0 240600BD */  li    $a2, 189
/* ADB384 800641E4 244B0008 */  addiu $t3, $v0, 8
/* ADB388 800641E8 AE2B02D0 */  sw    $t3, 0x2d0($s1)
/* ADB38C 800641EC AC4C0000 */  sw    $t4, ($v0)
/* ADB390 800641F0 8FAA0068 */  lw    $t2, 0x68($sp)
/* ADB394 800641F4 00408025 */  move  $s0, $v0
/* ADB398 800641F8 0C0346A2 */  jal   func_800D1A88
/* ADB39C 800641FC 8D440000 */   lw    $a0, ($t2)
/* ADB3A0 80064200 AE020004 */  sw    $v0, 4($s0)
/* ADB3A4 80064204 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB3A8 80064208 3C180400 */  lui   $t8, %hi(D_04004298) # $t8, 0x400
/* ADB3AC 8006420C 27184298 */  addiu $t8, %lo(D_04004298) # addiu $t8, $t8, 0x4298
/* ADB3B0 80064210 244D0008 */  addiu $t5, $v0, 8
/* ADB3B4 80064214 AE2D02D0 */  sw    $t5, 0x2d0($s1)
/* ADB3B8 80064218 3C0FDE00 */  lui   $t7, 0xde00
/* ADB3BC 8006421C AC4F0000 */  sw    $t7, ($v0)
/* ADB3C0 80064220 AC580004 */  sw    $t8, 4($v0)
/* ADB3C4 80064224 8FAE0068 */  lw    $t6, 0x68($sp)
/* ADB3C8 80064228 3C068014 */  lui   $a2, %hi(D_8013ADD0) # $a2, 0x8014
/* ADB3CC 8006422C 24C6ADD0 */  addiu $a2, %lo(D_8013ADD0) # addiu $a2, $a2, -0x5230
/* ADB3D0 80064230 27A4004C */  addiu $a0, $sp, 0x4c
/* ADB3D4 80064234 240700C0 */  li    $a3, 192
/* ADB3D8 80064238 0C031AD5 */  jal   func_800C6B54
/* ADB3DC 8006423C 8DC50000 */   lw    $a1, ($t6)
/* ADB3E0 80064240 8FBF001C */  lw    $ra, 0x1c($sp)
/* ADB3E4 80064244 8FB00014 */  lw    $s0, 0x14($sp)
/* ADB3E8 80064248 8FB10018 */  lw    $s1, 0x18($sp)
/* ADB3EC 8006424C 03E00008 */  jr    $ra
/* ADB3F0 80064250 27BD0060 */   addiu $sp, $sp, 0x60

/* ADB3F4 80064254 27BDFFB0 */  addiu $sp, $sp, -0x50
/* ADB3F8 80064258 AFBF001C */  sw    $ra, 0x1c($sp)
/* ADB3FC 8006425C AFB10018 */  sw    $s1, 0x18($sp)
/* ADB400 80064260 AFB00014 */  sw    $s0, 0x14($sp)
/* ADB404 80064264 AFA50054 */  sw    $a1, 0x54($sp)
/* ADB408 80064268 AFA60058 */  sw    $a2, 0x58($sp)
/* ADB40C 8006426C 8CC50000 */  lw    $a1, ($a2)
/* ADB410 80064270 00808025 */  move  $s0, $a0
/* ADB414 80064274 3C068014 */  lui   $a2, %hi(D_8013ADE8) # $a2, 0x8014
/* ADB418 80064278 24C6ADE8 */  addiu $a2, %lo(D_8013ADE8) # addiu $a2, $a2, -0x5218
/* ADB41C 8006427C 27A4003C */  addiu $a0, $sp, 0x3c
/* ADB420 80064280 240700D3 */  li    $a3, 211
/* ADB424 80064284 0C031AB1 */  jal   func_800C6AC4
/* ADB428 80064288 00A08825 */   move  $s1, $a1
/* ADB42C 8006428C 8FAF0058 */  lw    $t7, 0x58($sp)
/* ADB430 80064290 0C0250D7 */  jal   func_8009435C
/* ADB434 80064294 8DE40000 */   lw    $a0, ($t7)
/* ADB438 80064298 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB43C 8006429C 3C19FA00 */  lui   $t9, 0xfa00
/* ADB440 800642A0 240F0018 */  li    $t7, 24
/* ADB444 800642A4 24580008 */  addiu $t8, $v0, 8
/* ADB448 800642A8 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* ADB44C 800642AC AC590000 */  sw    $t9, ($v0)
/* ADB450 800642B0 920C0021 */  lbu   $t4, 0x21($s0)
/* ADB454 800642B4 92090020 */  lbu   $t1, 0x20($s0)
/* ADB458 800642B8 92180022 */  lbu   $t8, 0x22($s0)
/* ADB45C 800642BC 920B0023 */  lbu   $t3, 0x23($s0)
/* ADB460 800642C0 000C6C00 */  sll   $t5, $t4, 0x10
/* ADB464 800642C4 00095600 */  sll   $t2, $t1, 0x18
/* ADB468 800642C8 014D7025 */  or    $t6, $t2, $t5
/* ADB46C 800642CC 0018CA00 */  sll   $t9, $t8, 8
/* ADB470 800642D0 01D94025 */  or    $t0, $t6, $t9
/* ADB474 800642D4 010B6025 */  or    $t4, $t0, $t3
/* ADB478 800642D8 AC4C0004 */  sw    $t4, 4($v0)
/* ADB47C 800642DC 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB480 800642E0 3C0DDB02 */  lui   $t5, 0xdb02
/* ADB484 800642E4 3C198012 */  lui   $t9, %hi(D_8011E1B0) # $t9, 0x8012
/* ADB488 800642E8 244A0008 */  addiu $t2, $v0, 8
/* ADB48C 800642EC AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* ADB490 800642F0 AC4F0004 */  sw    $t7, 4($v0)
/* ADB494 800642F4 AC4D0000 */  sw    $t5, ($v0)
/* ADB498 800642F8 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB49C 800642FC 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* ADB4A0 80064300 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* ADB4A4 80064304 24580008 */  addiu $t8, $v0, 8
/* ADB4A8 80064308 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* ADB4AC 8006430C 2739E1B0 */  addiu $t9, %lo(D_8011E1B0) # addiu $t9, $t9, -0x1e50
/* ADB4B0 80064310 AC590004 */  sw    $t9, 4($v0)
/* ADB4B4 80064314 AC4E0000 */  sw    $t6, ($v0)
/* ADB4B8 80064318 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB4BC 8006431C 3C0B8012 */  lui   $t3, %hi(D_8011E1A8) # $t3, 0x8012
/* ADB4C0 80064320 3C08DC08 */  lui   $t0, (0xDC08090A >> 16) # lui $t0, 0xdc08
/* ADB4C4 80064324 24490008 */  addiu $t1, $v0, 8
/* ADB4C8 80064328 AE2902D0 */  sw    $t1, 0x2d0($s1)
/* ADB4CC 8006432C 3508090A */  ori   $t0, (0xDC08090A & 0xFFFF) # ori $t0, $t0, 0x90a
/* ADB4D0 80064330 256BE1A8 */  addiu $t3, %lo(D_8011E1A8) # addiu $t3, $t3, -0x1e58
/* ADB4D4 80064334 AC4B0004 */  sw    $t3, 4($v0)
/* ADB4D8 80064338 AC480000 */  sw    $t0, ($v0)
/* ADB4DC 8006433C 8E060008 */  lw    $a2, 8($s0)
/* ADB4E0 80064340 C60E0004 */  lwc1  $f14, 4($s0)
/* ADB4E4 80064344 C60C0000 */  lwc1  $f12, ($s0)
/* ADB4E8 80064348 0C0345A5 */  jal   func_800D1694
/* ADB4EC 8006434C 2607000C */   addiu $a3, $s0, 0xc
/* ADB4F0 80064350 C60C0014 */  lwc1  $f12, 0x14($s0)
/* ADB4F4 80064354 C60E0018 */  lwc1  $f14, 0x18($s0)
/* ADB4F8 80064358 8E06001C */  lw    $a2, 0x1c($s0)
/* ADB4FC 8006435C 0C0342A3 */  jal   func_800D0A8C
/* ADB500 80064360 24070001 */   li    $a3, 1
/* ADB504 80064364 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB508 80064368 3C0ADA38 */  lui   $t2, (0xDA380003 >> 16) # lui $t2, 0xda38
/* ADB50C 8006436C 354A0003 */  ori   $t2, (0xDA380003 & 0xFFFF) # ori $t2, $t2, 3
/* ADB510 80064370 244C0008 */  addiu $t4, $v0, 8
/* ADB514 80064374 AE2C02D0 */  sw    $t4, 0x2d0($s1)
/* ADB518 80064378 AC4A0000 */  sw    $t2, ($v0)
/* ADB51C 8006437C 8FAD0058 */  lw    $t5, 0x58($sp)
/* ADB520 80064380 3C058014 */  lui   $a1, %hi(D_8013AE00) # $a1, 0x8014
/* ADB524 80064384 24A5AE00 */  addiu $a1, %lo(D_8013AE00) # addiu $a1, $a1, -0x5200
/* ADB528 80064388 240600E4 */  li    $a2, 228
/* ADB52C 8006438C 00408025 */  move  $s0, $v0
/* ADB530 80064390 0C0346A2 */  jal   func_800D1A88
/* ADB534 80064394 8DA40000 */   lw    $a0, ($t5)
/* ADB538 80064398 AE020004 */  sw    $v0, 4($s0)
/* ADB53C 8006439C 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* ADB540 800643A0 3C18DE00 */  lui   $t8, 0xde00
/* ADB544 800643A4 3C068014 */  lui   $a2, %hi(D_8013AE18) # $a2, 0x8014
/* ADB548 800643A8 244F0008 */  addiu $t7, $v0, 8
/* ADB54C 800643AC AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* ADB550 800643B0 AC580000 */  sw    $t8, ($v0)
/* ADB554 800643B4 8FAE0054 */  lw    $t6, 0x54($sp)
/* ADB558 800643B8 24C6AE18 */  addiu $a2, %lo(D_8013AE18) # addiu $a2, $a2, -0x51e8
/* ADB55C 800643BC 27A4003C */  addiu $a0, $sp, 0x3c
/* ADB560 800643C0 AC4E0004 */  sw    $t6, 4($v0)
/* ADB564 800643C4 8FB90058 */  lw    $t9, 0x58($sp)
/* ADB568 800643C8 240700E7 */  li    $a3, 231
/* ADB56C 800643CC 0C031AD5 */  jal   func_800C6B54
/* ADB570 800643D0 8F250000 */   lw    $a1, ($t9)
/* ADB574 800643D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* ADB578 800643D8 8FB00014 */  lw    $s0, 0x14($sp)
/* ADB57C 800643DC 8FB10018 */  lw    $s1, 0x18($sp)
/* ADB580 800643E0 03E00008 */  jr    $ra
/* ADB584 800643E4 27BD0050 */   addiu $sp, $sp, 0x50
