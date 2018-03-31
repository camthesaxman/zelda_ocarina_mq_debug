.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80001E60
/* 002A60 80001E60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 002A64 80001E64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 002A68 80001E68 3C048001 */  lui   $a0, %hi(D_80009450) # $a0, 0x8001
/* 002A6C 80001E6C 3C068001 */  lui   $a2, %hi(D_80014508) # $a2, 0x8001
/* 002A70 80001E70 24C64508 */  addiu $a2, %lo(D_80014508) # addiu $a2, $a2, 0x4508
/* 002A74 80001E74 8C849450 */  lw    $a0, %lo(D_80009450)($a0)
/* 002A78 80001E78 0C001DD8 */  jal   func_80007760
/* 002A7C 80001E7C 24050038 */   li    $a1, 56
/* 002A80 80001E80 3C048001 */  lui   $a0, %hi(D_80009450) # $a0, 0x8001
/* 002A84 80001E84 3C068001 */  lui   $a2, %hi(D_8001450C) # $a2, 0x8001
/* 002A88 80001E88 24C6450C */  addiu $a2, %lo(D_8001450C) # addiu $a2, $a2, 0x450c
/* 002A8C 80001E8C 8C849450 */  lw    $a0, %lo(D_80009450)($a0)
/* 002A90 80001E90 0C001DD8 */  jal   func_80007760
/* 002A94 80001E94 2405003C */   li    $a1, 60
/* 002A98 80001E98 3C028001 */  lui   $v0, %hi(D_8001450E) # $v0, 0x8001
/* 002A9C 80001E9C 9042450E */  lbu   $v0, %lo(D_8001450E)($v0)
/* 002AA0 80001EA0 24010045 */  li    $at, 69
/* 002AA4 80001EA4 240F0002 */  li    $t7, 2
/* 002AA8 80001EA8 1041000B */  beq   $v0, $at, .L80001ED8
/* 002AAC 80001EAC 2401004A */   li    $at, 74
/* 002AB0 80001EB0 10410006 */  beq   $v0, $at, .L80001ECC
/* 002AB4 80001EB4 240E0001 */   li    $t6, 1
/* 002AB8 80001EB8 24010050 */  li    $at, 80
/* 002ABC 80001EBC 10410009 */  beq   $v0, $at, .L80001EE4
/* 002AC0 80001EC0 24180003 */   li    $t8, 3
/* 002AC4 80001EC4 1000000A */  b     .L80001EF0
/* 002AC8 80001EC8 3C048001 */   lui   $a0, %hi(D_80011D20) # $a0, 0x8001
.L80001ECC:
/* 002ACC 80001ECC 3C018001 */  lui   $at, %hi(D_8000AC60) # $at, 0x8001
/* 002AD0 80001ED0 10000013 */  b     .L80001F20
/* 002AD4 80001ED4 AC2EAC60 */   sw    $t6, %lo(D_8000AC60)($at)
.L80001ED8:
/* 002AD8 80001ED8 3C018001 */  lui   $at, %hi(D_8000AC60) # $at, 0x8001
/* 002ADC 80001EDC 10000010 */  b     .L80001F20
/* 002AE0 80001EE0 AC2FAC60 */   sw    $t7, %lo(D_8000AC60)($at)
.L80001EE4:
/* 002AE4 80001EE4 3C018001 */  lui   $at, %hi(D_8000AC60) # $at, 0x8001
/* 002AE8 80001EE8 1000000D */  b     .L80001F20
/* 002AEC 80001EEC AC38AC60 */   sw    $t8, %lo(D_8000AC60)($at)
.L80001EF0:
/* 002AF0 80001EF0 0C00084C */  jal   DebugMessage
/* 002AF4 80001EF4 24841D20 */   addiu $a0, %lo(D_80011D20) # addiu $a0, $a0, 0x1d20
/* 002AF8 80001EF8 3C048001 */  lui   $a0, %hi(D_80011D2C) # $a0, 0x8001
/* 002AFC 80001EFC 0C00084C */  jal   DebugMessage
/* 002B00 80001F00 24841D2C */   addiu $a0, %lo(D_80011D2C) # addiu $a0, $a0, 0x1d2c
/* 002B04 80001F04 3C048001 */  lui   $a0, %hi(D_80011D60) # $a0, 0x8001
/* 002B08 80001F08 24841D60 */  addiu $a0, %lo(D_80011D60) # addiu $a0, $a0, 0x1d60
/* 002B0C 80001F0C 0C000B94 */  jal   func_80002E50
/* 002B10 80001F10 24050076 */   li    $a1, 118
/* 002B14 80001F14 3C048001 */  lui   $a0, %hi(D_80011D70) # $a0, 0x8001
/* 002B18 80001F18 0C00084C */  jal   DebugMessage
/* 002B1C 80001F1C 24841D70 */   addiu $a0, %lo(D_80011D70) # addiu $a0, $a0, 0x1d70
.L80001F20:
/* 002B20 80001F20 3C048001 */  lui   $a0, %hi(D_80011D74) # $a0, 0x8001
/* 002B24 80001F24 0C00084C */  jal   DebugMessage
/* 002B28 80001F28 24841D74 */   addiu $a0, %lo(D_80011D74) # addiu $a0, $a0, 0x1d74
/* 002B2C 80001F2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 002B30 80001F30 27BD0018 */  addiu $sp, $sp, 0x18
/* 002B34 80001F34 03E00008 */  jr    $ra
/* 002B38 80001F38 00000000 */   nop   

/* 002B3C 80001F3C 3C018001 */  lui   $at, 0x8001
/* 002B40 80001F40 03E00008 */  jr    $ra
/* 002B44 80001F44 AC20AC60 */   sw    $zero, -0x53a0($at)

/* 002B48 80001F48 3C0E8001 */  lui   $t6, %hi(D_8000AC60) # $t6, 0x8001
/* 002B4C 80001F4C 8DCEAC60 */  lw    $t6, %lo(D_8000AC60)($t6)
/* 002B50 80001F50 24010003 */  li    $at, 3
/* 002B54 80001F54 3C0F8016 */  lui   $t7, %hi(D_801668C0) # $t7, 0x8016
/* 002B58 80001F58 15C10003 */  bne   $t6, $at, .L80001F68
/* 002B5C 80001F5C 25EF68C0 */   addiu $t7, %lo(D_801668C0) # addiu $t7, $t7, 0x68c0
/* 002B60 80001F60 03E00008 */  jr    $ra
/* 002B64 80001F64 00001025 */   move  $v0, $zero

.L80001F68:
/* 002B68 80001F68 91F802A8 */  lbu   $t8, 0x2a8($t7)
/* 002B6C 80001F6C 24020001 */  li    $v0, 1
/* 002B70 80001F70 33190004 */  andi  $t9, $t8, 4
/* 002B74 80001F74 13200003 */  beqz  $t9, .L80001F84
/* 002B78 80001F78 00000000 */   nop   
/* 002B7C 80001F7C 03E00008 */  jr    $ra
/* 002B80 80001F80 00001025 */   move  $v0, $zero

.L80001F84:
/* 002B84 80001F84 03E00008 */  jr    $ra
/* 002B88 80001F88 00000000 */   nop   

/* 002B8C 80001F8C 3C0E8001 */  lui   $t6, %hi(D_8000AC60) # $t6, 0x8001
/* 002B90 80001F90 8DCEAC60 */  lw    $t6, %lo(D_8000AC60)($t6)
/* 002B94 80001F94 24010003 */  li    $at, 3
/* 002B98 80001F98 3C0F8016 */  lui   $t7, %hi(D_801668C0) # $t7, 0x8016
/* 002B9C 80001F9C 15C10003 */  bne   $t6, $at, .L80001FAC
/* 002BA0 80001FA0 25EF68C0 */   addiu $t7, %lo(D_801668C0) # addiu $t7, $t7, 0x68c0
/* 002BA4 80001FA4 03E00008 */  jr    $ra
/* 002BA8 80001FA8 00001025 */   move  $v0, $zero

.L80001FAC:
/* 002BAC 80001FAC 91F802A8 */  lbu   $t8, 0x2a8($t7)
/* 002BB0 80001FB0 00001025 */  move  $v0, $zero
/* 002BB4 80001FB4 33190004 */  andi  $t9, $t8, 4
/* 002BB8 80001FB8 13200003 */  beqz  $t9, .L80001FC8
/* 002BBC 80001FBC 00000000 */   nop   
/* 002BC0 80001FC0 03E00008 */  jr    $ra
/* 002BC4 80001FC4 24020001 */   li    $v0, 1

glabel func_80001FC8
.L80001FC8:
/* 002BC8 80001FC8 03E00008 */  jr    $ra
/* 002BCC 80001FCC 00000000 */   nop   

/* 002BD0 80001FD0 3C028001 */  lui   $v0, %hi(D_8000AC60) # $v0, 0x8001
/* 002BD4 80001FD4 8C42AC60 */  lw    $v0, %lo(D_8000AC60)($v0)
/* 002BD8 80001FD8 38420003 */  xori  $v0, $v0, 3
/* 002BDC 80001FDC 03E00008 */  jr    $ra
/* 002BE0 80001FE0 2C420001 */   sltiu $v0, $v0, 1
