.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80002FA0
/* 003BA0 80002FA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003BA4 80002FA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003BA8 80002FA8 240E0001 */  li    $t6, 1
/* 003BAC 80002FAC 3C018001 */  lui   $at, %hi(D_8000AC90) # $at, 0x8001
/* 003BB0 80002FB0 3C048001 */  lui   $a0, %hi(D_800145A8) # $a0, 0x8001
/* 003BB4 80002FB4 3C058001 */  lui   $a1, %hi(D_800145A0) # $a1, 0x8001
/* 003BB8 80002FB8 AC2EAC90 */  sw    $t6, %lo(D_8000AC90)($at)
/* 003BBC 80002FBC 24A545A0 */  addiu $a1, %lo(D_800145A0) # addiu $a1, $a1, 0x45a0
/* 003BC0 80002FC0 248445A8 */  addiu $a0, %lo(D_800145A8) # addiu $a0, $a0, 0x45a8
/* 003BC4 80002FC4 0C001874 */  jal   osCreateMesgQueue
/* 003BC8 80002FC8 24060001 */   li    $a2, 1
/* 003BCC 80002FCC 3C048001 */  lui   $a0, %hi(D_800145A8) # $a0, 0x8001
/* 003BD0 80002FD0 248445A8 */  addiu $a0, %lo(D_800145A8) # addiu $a0, $a0, 0x45a8
/* 003BD4 80002FD4 00002825 */  move  $a1, $zero
/* 003BD8 80002FD8 0C000C18 */  jal   osSendMesg
/* 003BDC 80002FDC 00003025 */   move  $a2, $zero
/* 003BE0 80002FE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003BE4 80002FE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 003BE8 80002FE8 03E00008 */  jr    $ra
/* 003BEC 80002FEC 00000000 */   nop   

glabel func_80002FF0
/* 003BF0 80002FF0 3C0E8001 */  lui   $t6, %hi(D_8000AC90) # $t6, 0x8001
/* 003BF4 80002FF4 8DCEAC90 */  lw    $t6, %lo(D_8000AC90)($t6)
/* 003BF8 80002FF8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 003BFC 80002FFC AFBF0014 */  sw    $ra, 0x14($sp)
/* 003C00 80003000 15C00003 */  bnez  $t6, .L80003010
/* 003C04 80003004 00000000 */   nop   
/* 003C08 80003008 0C000BE8 */  jal   func_80002FA0
/* 003C0C 8000300C 00000000 */   nop   
.L80003010:
/* 003C10 80003010 3C048001 */  lui   $a0, %hi(D_800145A8) # $a0, 0x8001
/* 003C14 80003014 248445A8 */  addiu $a0, %lo(D_800145A8) # addiu $a0, $a0, 0x45a8
/* 003C18 80003018 27A5001C */  addiu $a1, $sp, 0x1c
/* 003C1C 8000301C 0C000CA0 */  jal   osRecvMesg
/* 003C20 80003020 24060001 */   li    $a2, 1
/* 003C24 80003024 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003C28 80003028 27BD0020 */  addiu $sp, $sp, 0x20
/* 003C2C 8000302C 03E00008 */  jr    $ra
/* 003C30 80003030 00000000 */   nop   

glabel func_80003034
/* 003C34 80003034 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003C38 80003038 AFBF0014 */  sw    $ra, 0x14($sp)
/* 003C3C 8000303C 3C048001 */  lui   $a0, %hi(D_800145A8) # $a0, 0x8001
/* 003C40 80003040 248445A8 */  addiu $a0, %lo(D_800145A8) # addiu $a0, $a0, 0x45a8
/* 003C44 80003044 00002825 */  move  $a1, $zero
/* 003C48 80003048 0C000C18 */  jal   osSendMesg
/* 003C4C 8000304C 00003025 */   move  $a2, $zero
/* 003C50 80003050 8FBF0014 */  lw    $ra, 0x14($sp)
/* 003C54 80003054 27BD0018 */  addiu $sp, $sp, 0x18
/* 003C58 80003058 03E00008 */  jr    $ra
/* 003C5C 8000305C 00000000 */   nop   

glabel osSendMesg
/* 003C60 80003060 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 003C64 80003064 AFBF0024 */  sw    $ra, 0x24($sp)
/* 003C68 80003068 AFA40038 */  sw    $a0, 0x38($sp)
/* 003C6C 8000306C AFA5003C */  sw    $a1, 0x3c($sp)
/* 003C70 80003070 AFA60040 */  sw    $a2, 0x40($sp)
/* 003C74 80003074 AFB20020 */  sw    $s2, 0x20($sp)
/* 003C78 80003078 AFB1001C */  sw    $s1, 0x1c($sp)
/* 003C7C 8000307C 0C001CA0 */  jal   func_80007280
/* 003C80 80003080 AFB00018 */   sw    $s0, 0x18($sp)
/* 003C84 80003084 8FAE0038 */  lw    $t6, 0x38($sp)
/* 003C88 80003088 00408025 */  move  $s0, $v0
/* 003C8C 8000308C 8DCF0008 */  lw    $t7, 8($t6)
/* 003C90 80003090 8DD80010 */  lw    $t8, 0x10($t6)
/* 003C94 80003094 01F8082A */  slt   $at, $t7, $t8
/* 003C98 80003098 14200018 */  bnez  $at, .L800030FC
/* 003C9C 8000309C 00000000 */   nop   
.L800030A0:
/* 003CA0 800030A0 8FB90040 */  lw    $t9, 0x40($sp)
/* 003CA4 800030A4 24010001 */  li    $at, 1
/* 003CA8 800030A8 1721000A */  bne   $t9, $at, .L800030D4
/* 003CAC 800030AC 00000000 */   nop   
/* 003CB0 800030B0 3C098001 */  lui   $t1, %hi(D_8000AD50) # $t1, 0x8001
/* 003CB4 800030B4 8D29AD50 */  lw    $t1, %lo(D_8000AD50)($t1)
/* 003CB8 800030B8 24080008 */  li    $t0, 8
/* 003CBC 800030BC A5280010 */  sh    $t0, 0x10($t1)
/* 003CC0 800030C0 8FA40038 */  lw    $a0, 0x38($sp)
/* 003CC4 800030C4 0C001005 */  jal   func_80004014
/* 003CC8 800030C8 24840004 */   addiu $a0, $a0, 4
/* 003CCC 800030CC 10000005 */  b     .L800030E4
/* 003CD0 800030D0 00000000 */   nop   
.L800030D4:
/* 003CD4 800030D4 0C001CBC */  jal   func_800072F0
/* 003CD8 800030D8 02002025 */   move  $a0, $s0
/* 003CDC 800030DC 1000002D */  b     .L80003194
/* 003CE0 800030E0 2402FFFF */   li    $v0, -1
.L800030E4:
/* 003CE4 800030E4 8FAA0038 */  lw    $t2, 0x38($sp)
/* 003CE8 800030E8 8D4B0008 */  lw    $t3, 8($t2)
/* 003CEC 800030EC 8D4C0010 */  lw    $t4, 0x10($t2)
/* 003CF0 800030F0 016C082A */  slt   $at, $t3, $t4
/* 003CF4 800030F4 1020FFEA */  beqz  $at, .L800030A0
/* 003CF8 800030F8 00000000 */   nop   
.L800030FC:
/* 003CFC 800030FC 8FAD0038 */  lw    $t5, 0x38($sp)
/* 003D00 80003100 8FA8003C */  lw    $t0, 0x3c($sp)
/* 003D04 80003104 8DAE000C */  lw    $t6, 0xc($t5)
/* 003D08 80003108 8DAF0008 */  lw    $t7, 8($t5)
/* 003D0C 8000310C 8DB90010 */  lw    $t9, 0x10($t5)
/* 003D10 80003110 8DA90014 */  lw    $t1, 0x14($t5)
/* 003D14 80003114 01CFC021 */  addu  $t8, $t6, $t7
/* 003D18 80003118 0319001A */  div   $zero, $t8, $t9
/* 003D1C 8000311C 00008810 */  mfhi  $s1
/* 003D20 80003120 00115080 */  sll   $t2, $s1, 2
/* 003D24 80003124 012A5821 */  addu  $t3, $t1, $t2
/* 003D28 80003128 AD680000 */  sw    $t0, ($t3)
/* 003D2C 8000312C 8FAC0038 */  lw    $t4, 0x38($sp)
/* 003D30 80003130 17200002 */  bnez  $t9, .L8000313C
/* 003D34 80003134 00000000 */   nop   
/* 003D38 80003138 0007000D */  break 7
.L8000313C:
/* 003D3C 8000313C 2401FFFF */  li    $at, -1
/* 003D40 80003140 17210004 */  bne   $t9, $at, .L80003154
/* 003D44 80003144 3C018000 */   lui   $at, 0x8000
/* 003D48 80003148 17010002 */  bne   $t8, $at, .L80003154
/* 003D4C 8000314C 00000000 */   nop   
/* 003D50 80003150 0006000D */  break 6
.L80003154:
/* 003D54 80003154 8D8E0008 */  lw    $t6, 8($t4)
/* 003D58 80003158 25CF0001 */  addiu $t7, $t6, 1
/* 003D5C 8000315C AD8F0008 */  sw    $t7, 8($t4)
/* 003D60 80003160 8FB80038 */  lw    $t8, 0x38($sp)
/* 003D64 80003164 8F190000 */  lw    $t9, ($t8)
/* 003D68 80003168 8F2D0000 */  lw    $t5, ($t9)
/* 003D6C 8000316C 11A00006 */  beqz  $t5, .L80003188
/* 003D70 80003170 00000000 */   nop   
/* 003D74 80003174 0C001057 */  jal   func_8000415C
/* 003D78 80003178 03002025 */   move  $a0, $t8
/* 003D7C 8000317C 00409025 */  move  $s2, $v0
/* 003D80 80003180 0C0023F0 */  jal   osStartThread
/* 003D84 80003184 02402025 */   move  $a0, $s2
.L80003188:
/* 003D88 80003188 0C001CBC */  jal   func_800072F0
/* 003D8C 8000318C 02002025 */   move  $a0, $s0
/* 003D90 80003190 00001025 */  move  $v0, $zero
.L80003194:
/* 003D94 80003194 8FBF0024 */  lw    $ra, 0x24($sp)
/* 003D98 80003198 8FB00018 */  lw    $s0, 0x18($sp)
/* 003D9C 8000319C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 003DA0 800031A0 8FB20020 */  lw    $s2, 0x20($sp)
/* 003DA4 800031A4 03E00008 */  jr    $ra
/* 003DA8 800031A8 27BD0038 */   addiu $sp, $sp, 0x38

/* 003DAC 800031AC 00000000 */  nop   
glabel osStopThread
/* 003DB0 800031B0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 003DB4 800031B4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 003DB8 800031B8 AFA40038 */  sw    $a0, 0x38($sp)
/* 003DBC 800031BC AFB20020 */  sw    $s2, 0x20($sp)
/* 003DC0 800031C0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 003DC4 800031C4 0C001CA0 */  jal   func_80007280
/* 003DC8 800031C8 AFB00018 */   sw    $s0, 0x18($sp)
/* 003DCC 800031CC 8FAE0038 */  lw    $t6, 0x38($sp)
/* 003DD0 800031D0 00408025 */  move  $s0, $v0
/* 003DD4 800031D4 15C00003 */  bnez  $t6, .L800031E4
/* 003DD8 800031D8 00000000 */   nop   
/* 003DDC 800031DC 10000003 */  b     .L800031EC
/* 003DE0 800031E0 24110004 */   li    $s1, 4
.L800031E4:
/* 003DE4 800031E4 8FAF0038 */  lw    $t7, 0x38($sp)
/* 003DE8 800031E8 95F10010 */  lhu   $s1, 0x10($t7)
.L800031EC:
/* 003DEC 800031EC 02209025 */  move  $s2, $s1
/* 003DF0 800031F0 24010002 */  li    $at, 2
/* 003DF4 800031F4 1241000F */  beq   $s2, $at, .L80003234
/* 003DF8 800031F8 24010004 */   li    $at, 4
/* 003DFC 800031FC 12410005 */  beq   $s2, $at, .L80003214
/* 003E00 80003200 24010008 */   li    $at, 8
/* 003E04 80003204 1241000B */  beq   $s2, $at, .L80003234
/* 003E08 80003208 00000000 */   nop   
/* 003E0C 8000320C 10000010 */  b     .L80003250
/* 003E10 80003210 00000000 */   nop   
.L80003214:
/* 003E14 80003214 3C198001 */  lui   $t9, %hi(D_8000AD50) # $t9, 0x8001
/* 003E18 80003218 8F39AD50 */  lw    $t9, %lo(D_8000AD50)($t9)
/* 003E1C 8000321C 24180001 */  li    $t8, 1
/* 003E20 80003220 00002025 */  move  $a0, $zero
/* 003E24 80003224 0C001005 */  jal   func_80004014
/* 003E28 80003228 A7380010 */   sh    $t8, 0x10($t9)
/* 003E2C 8000322C 10000008 */  b     .L80003250
/* 003E30 80003230 00000000 */   nop   
.L80003234:
/* 003E34 80003234 8FA90038 */  lw    $t1, 0x38($sp)
/* 003E38 80003238 24080001 */  li    $t0, 1
/* 003E3C 8000323C A5280010 */  sh    $t0, 0x10($t1)
/* 003E40 80003240 8FAA0038 */  lw    $t2, 0x38($sp)
/* 003E44 80003244 8D440008 */  lw    $a0, 8($t2)
/* 003E48 80003248 0C0010C0 */  jal   __osDequeueThread
/* 003E4C 8000324C 01402825 */   move  $a1, $t2
.L80003250:
/* 003E50 80003250 0C001CBC */  jal   func_800072F0
/* 003E54 80003254 02002025 */   move  $a0, $s0
/* 003E58 80003258 8FBF0024 */  lw    $ra, 0x24($sp)
/* 003E5C 8000325C 8FB00018 */  lw    $s0, 0x18($sp)
/* 003E60 80003260 8FB1001C */  lw    $s1, 0x1c($sp)
/* 003E64 80003264 8FB20020 */  lw    $s2, 0x20($sp)
/* 003E68 80003268 03E00008 */  jr    $ra
/* 003E6C 8000326C 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_80003270
/* 003E70 80003270 3C018001 */  lui   $at, 0x8001
/* 003E74 80003274 03E00008 */  jr    $ra
/* 003E78 80003278 AC24AFBC */   sw    $a0, -0x5044($at)

/* 003E7C 8000327C 00000000 */  nop   
glabel osRecvMesg
/* 003E80 80003280 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 003E84 80003284 AFBF001C */  sw    $ra, 0x1c($sp)
/* 003E88 80003288 AFA40028 */  sw    $a0, 0x28($sp)
/* 003E8C 8000328C AFA5002C */  sw    $a1, 0x2c($sp)
/* 003E90 80003290 AFA60030 */  sw    $a2, 0x30($sp)
/* 003E94 80003294 AFB10018 */  sw    $s1, 0x18($sp)
/* 003E98 80003298 0C001CA0 */  jal   func_80007280
/* 003E9C 8000329C AFB00014 */   sw    $s0, 0x14($sp)
/* 003EA0 800032A0 8FAE0028 */  lw    $t6, 0x28($sp)
/* 003EA4 800032A4 00408025 */  move  $s0, $v0
/* 003EA8 800032A8 8DCF0008 */  lw    $t7, 8($t6)
/* 003EAC 800032AC 15E00012 */  bnez  $t7, .L800032F8
/* 003EB0 800032B0 00000000 */   nop   
.L800032B4:
/* 003EB4 800032B4 8FB80030 */  lw    $t8, 0x30($sp)
/* 003EB8 800032B8 17000005 */  bnez  $t8, .L800032D0
/* 003EBC 800032BC 00000000 */   nop   
/* 003EC0 800032C0 0C001CBC */  jal   func_800072F0
/* 003EC4 800032C4 02002025 */   move  $a0, $s0
/* 003EC8 800032C8 10000036 */  b     .L800033A4
/* 003ECC 800032CC 2402FFFF */   li    $v0, -1
.L800032D0:
/* 003ED0 800032D0 3C088001 */  lui   $t0, %hi(D_8000AD50) # $t0, 0x8001
/* 003ED4 800032D4 8D08AD50 */  lw    $t0, %lo(D_8000AD50)($t0)
/* 003ED8 800032D8 24190008 */  li    $t9, 8
/* 003EDC 800032DC A5190010 */  sh    $t9, 0x10($t0)
/* 003EE0 800032E0 0C001005 */  jal   func_80004014
/* 003EE4 800032E4 8FA40028 */   lw    $a0, 0x28($sp)
/* 003EE8 800032E8 8FA90028 */  lw    $t1, 0x28($sp)
/* 003EEC 800032EC 8D2A0008 */  lw    $t2, 8($t1)
/* 003EF0 800032F0 1140FFF0 */  beqz  $t2, .L800032B4
/* 003EF4 800032F4 00000000 */   nop   
.L800032F8:
/* 003EF8 800032F8 8FAB002C */  lw    $t3, 0x2c($sp)
/* 003EFC 800032FC 11600008 */  beqz  $t3, .L80003320
/* 003F00 80003300 00000000 */   nop   
/* 003F04 80003304 8FAC0028 */  lw    $t4, 0x28($sp)
/* 003F08 80003308 8D8E000C */  lw    $t6, 0xc($t4)
/* 003F0C 8000330C 8D8D0014 */  lw    $t5, 0x14($t4)
/* 003F10 80003310 000E7880 */  sll   $t7, $t6, 2
/* 003F14 80003314 01AFC021 */  addu  $t8, $t5, $t7
/* 003F18 80003318 8F190000 */  lw    $t9, ($t8)
/* 003F1C 8000331C AD790000 */  sw    $t9, ($t3)
.L80003320:
/* 003F20 80003320 8FA80028 */  lw    $t0, 0x28($sp)
/* 003F24 80003324 8D09000C */  lw    $t1, 0xc($t0)
/* 003F28 80003328 8D0C0010 */  lw    $t4, 0x10($t0)
/* 003F2C 8000332C 252A0001 */  addiu $t2, $t1, 1
/* 003F30 80003330 014C001A */  div   $zero, $t2, $t4
/* 003F34 80003334 00007010 */  mfhi  $t6
/* 003F38 80003338 AD0E000C */  sw    $t6, 0xc($t0)
/* 003F3C 8000333C 8FAD0028 */  lw    $t5, 0x28($sp)
/* 003F40 80003340 15800002 */  bnez  $t4, .L8000334C
/* 003F44 80003344 00000000 */   nop   
/* 003F48 80003348 0007000D */  break 7
.L8000334C:
/* 003F4C 8000334C 2401FFFF */  li    $at, -1
/* 003F50 80003350 15810004 */  bne   $t4, $at, .L80003364
/* 003F54 80003354 3C018000 */   lui   $at, 0x8000
/* 003F58 80003358 15410002 */  bne   $t2, $at, .L80003364
/* 003F5C 8000335C 00000000 */   nop   
/* 003F60 80003360 0006000D */  break 6
.L80003364:
/* 003F64 80003364 8DAF0008 */  lw    $t7, 8($t5)
/* 003F68 80003368 25F8FFFF */  addiu $t8, $t7, -1
/* 003F6C 8000336C ADB80008 */  sw    $t8, 8($t5)
/* 003F70 80003370 8FB90028 */  lw    $t9, 0x28($sp)
/* 003F74 80003374 8F2B0004 */  lw    $t3, 4($t9)
/* 003F78 80003378 8D690000 */  lw    $t1, ($t3)
/* 003F7C 8000337C 11200006 */  beqz  $t1, .L80003398
/* 003F80 80003380 00000000 */   nop   
/* 003F84 80003384 0C001057 */  jal   func_8000415C
/* 003F88 80003388 27240004 */   addiu $a0, $t9, 4
/* 003F8C 8000338C 00408825 */  move  $s1, $v0
/* 003F90 80003390 0C0023F0 */  jal   osStartThread
/* 003F94 80003394 02202025 */   move  $a0, $s1
.L80003398:
/* 003F98 80003398 0C001CBC */  jal   func_800072F0
/* 003F9C 8000339C 02002025 */   move  $a0, $s0
/* 003FA0 800033A0 00001025 */  move  $v0, $zero
.L800033A4:
/* 003FA4 800033A4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 003FA8 800033A8 8FB00014 */  lw    $s0, 0x14($sp)
/* 003FAC 800033AC 8FB10018 */  lw    $s1, 0x18($sp)
/* 003FB0 800033B0 03E00008 */  jr    $ra
/* 003FB4 800033B4 27BD0028 */   addiu $sp, $sp, 0x28
