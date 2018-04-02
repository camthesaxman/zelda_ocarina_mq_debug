.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

/* B3AE10 800C3C70 00000000 */  nop   
/* B3AE14 800C3C74 00000000 */  nop   
/* B3AE18 800C3C78 00000000 */  nop   
/* B3AE1C 800C3C7C 00000000 */  nop   
glabel func_800C3C80
/* B3AE20 800C3C80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AE24 800C3C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AE28 800C3C88 8C820070 */  lw    $v0, 0x70($a0)
/* B3AE2C 800C3C8C 00002825 */  move  $a1, $zero
/* B3AE30 800C3C90 24060001 */  li    $a2, 1
/* B3AE34 800C3C94 8C4E0040 */  lw    $t6, 0x40($v0)
/* B3AE38 800C3C98 51C00004 */  beql  $t6, $zero, .L800C3CAC
/* B3AE3C 800C3C9C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3AE40 800C3CA0 0C000C18 */  jal   osSendMesg
/* B3AE44 800C3CA4 8C440040 */   lw    $a0, 0x40($v0)
/* B3AE48 800C3CA8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C3CAC:
/* B3AE4C 800C3CAC 27BD0018 */  addiu $sp, $sp, 0x18
/* B3AE50 800C3CB0 03E00008 */  jr    $ra
/* B3AE54 800C3CB4 00000000 */   nop   

glabel func_800C3CB8
/* B3AE58 800C3CB8 3C0E8016 */  lui   $t6, %hi(D_8015FA90) # $t6, 0x8016
/* B3AE5C 800C3CBC 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B3AE60 800C3CC0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3AE64 800C3CC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3AE68 800C3CC8 AFB00018 */  sw    $s0, 0x18($sp)
/* B3AE6C 800C3CCC 85CF00FC */  lh    $t7, 0xfc($t6)
/* B3AE70 800C3CD0 00808025 */  move  $s0, $a0
/* B3AE74 800C3CD4 24180002 */  li    $t8, 2
/* B3AE78 800C3CD8 19E00002 */  blez  $t7, .L800C3CE4
/* B3AE7C 800C3CDC 02005025 */   move  $t2, $s0
/* B3AE80 800C3CE0 AC800070 */  sw    $zero, 0x70($a0)
.L800C3CE4:
/* B3AE84 800C3CE4 8E020070 */  lw    $v0, 0x70($s0)
/* B3AE88 800C3CE8 260C00AC */  addiu $t4, $s0, 0xac
/* B3AE8C 800C3CEC 10400019 */  beqz  $v0, .L800C3D54
/* B3AE90 800C3CF0 00404825 */   move  $t1, $v0
/* B3AE94 800C3CF4 AE000008 */  sw    $zero, 8($s0)
/* B3AE98 800C3CF8 AE180010 */  sw    $t8, 0x10($s0)
/* B3AE9C 800C3CFC AE000014 */  sw    $zero, 0x14($s0)
/* B3AEA0 800C3D00 244B003C */  addiu $t3, $v0, 0x3c
.L800C3D04:
/* B3AEA4 800C3D04 8D280000 */  lw    $t0, ($t1)
/* B3AEA8 800C3D08 2529000C */  addiu $t1, $t1, 0xc
/* B3AEAC 800C3D0C 254A000C */  addiu $t2, $t2, 0xc
/* B3AEB0 800C3D10 AD48000C */  sw    $t0, 0xc($t2)
/* B3AEB4 800C3D14 8D39FFF8 */  lw    $t9, -8($t1)
/* B3AEB8 800C3D18 AD590010 */  sw    $t9, 0x10($t2)
/* B3AEBC 800C3D1C 8D28FFFC */  lw    $t0, -4($t1)
/* B3AEC0 800C3D20 152BFFF8 */  bne   $t1, $t3, .L800C3D04
/* B3AEC4 800C3D24 AD480014 */   sw    $t0, 0x14($t2)
/* B3AEC8 800C3D28 8D280000 */  lw    $t0, ($t1)
/* B3AECC 800C3D2C 26050008 */  addiu $a1, $s0, 8
/* B3AED0 800C3D30 24060001 */  li    $a2, 1
/* B3AED4 800C3D34 AD480018 */  sw    $t0, 0x18($t2)
/* B3AED8 800C3D38 8E040004 */  lw    $a0, 4($s0)
/* B3AEDC 800C3D3C AE0C0058 */  sw    $t4, 0x58($s0)
/* B3AEE0 800C3D40 AE00005C */  sw    $zero, 0x5c($s0)
/* B3AEE4 800C3D44 0C000C18 */  jal   osSendMesg
/* B3AEE8 800C3D48 24840038 */   addiu $a0, $a0, 0x38
/* B3AEEC 800C3D4C 0C03257E */  jal   func_800C95F8
/* B3AEF0 800C3D50 8E040004 */   lw    $a0, 4($s0)
.L800C3D54:
/* B3AEF4 800C3D54 0C001A78 */  jal   osGetTime
/* B3AEF8 800C3D58 00000000 */   nop   
/* B3AEFC 800C3D5C 3C0D8017 */  lui   $t5, %hi(D_8016A550) # $t5, 0x8017
/* B3AF00 800C3D60 25ADA550 */  addiu $t5, %lo(D_8016A550) # addiu $t5, $t5, -0x5ab0
/* B3AF04 800C3D64 ADA20000 */  sw    $v0, ($t5)
/* B3AF08 800C3D68 ADA30004 */  sw    $v1, 4($t5)
/* B3AF0C 800C3D6C 3C0E8016 */  lui   $t6, %hi(D_8015FA90) # $t6, 0x8016
/* B3AF10 800C3D70 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B3AF14 800C3D74 85CF00FC */  lh    $t7, 0xfc($t6)
/* B3AF18 800C3D78 29E10002 */  slti  $at, $t7, 2
/* B3AF1C 800C3D7C 14200003 */  bnez  $at, .L800C3D8C
/* B3AF20 800C3D80 00000000 */   nop   
/* B3AF24 800C3D84 10000004 */  b     .L800C3D98
/* B3AF28 800C3D88 AFA00024 */   sw    $zero, 0x24($sp)
.L800C3D8C:
/* B3AF2C 800C3D8C 0C0393F8 */  jal   func_800E4FE0
/* B3AF30 800C3D90 00000000 */   nop   
/* B3AF34 800C3D94 AFA20024 */  sw    $v0, 0x24($sp)
.L800C3D98:
/* B3AF38 800C3D98 0C001A78 */  jal   osGetTime
/* B3AF3C 800C3D9C 00000000 */   nop   
/* B3AF40 800C3DA0 3C188017 */  lui   $t8, %hi(D_8016A550) # $t8, 0x8017
/* B3AF44 800C3DA4 2718A550 */  addiu $t8, %lo(D_8016A550) # addiu $t8, $t8, -0x5ab0
/* B3AF48 800C3DA8 8F0A0000 */  lw    $t2, ($t8)
/* B3AF4C 800C3DAC 8F0B0004 */  lw    $t3, 4($t8)
/* B3AF50 800C3DB0 3C198017 */  lui   $t9, %hi(D_8016A558) # $t9, 0x8017
/* B3AF54 800C3DB4 2739A558 */  addiu $t9, %lo(D_8016A558) # addiu $t9, $t9, -0x5aa8
/* B3AF58 800C3DB8 8F2C0000 */  lw    $t4, ($t9)
/* B3AF5C 800C3DBC 8F2D0004 */  lw    $t5, 4($t9)
/* B3AF60 800C3DC0 004A4023 */  subu  $t0, $v0, $t2
/* B3AF64 800C3DC4 006B082B */  sltu  $at, $v1, $t3
/* B3AF68 800C3DC8 006B4823 */  subu  $t1, $v1, $t3
/* B3AF6C 800C3DCC 01014023 */  subu  $t0, $t0, $at
/* B3AF70 800C3DD0 012D7821 */  addu  $t7, $t1, $t5
/* B3AF74 800C3DD4 01ED082B */  sltu  $at, $t7, $t5
/* B3AF78 800C3DD8 00287021 */  addu  $t6, $at, $t0
/* B3AF7C 800C3DDC 3C018017 */  lui   $at, %hi(D_8016A558) # $at, 0x8017
/* B3AF80 800C3DE0 01CC7021 */  addu  $t6, $t6, $t4
/* B3AF84 800C3DE4 AC2EA558 */  sw    $t6, %lo(D_8016A558)($at)
/* B3AF88 800C3DE8 3C018017 */  lui   $at, %hi(D_8016A55C) # $at, 0x8017
/* B3AF8C 800C3DEC AC2FA55C */  sw    $t7, %lo(D_8016A55C)($at)
/* B3AF90 800C3DF0 240A0000 */  li    $t2, 0
/* B3AF94 800C3DF4 AF0A0000 */  sw    $t2, ($t8)
/* B3AF98 800C3DF8 240B0000 */  li    $t3, 0
/* B3AF9C 800C3DFC AF0B0004 */  sw    $t3, 4($t8)
/* B3AFA0 800C3E00 8E190070 */  lw    $t9, 0x70($s0)
/* B3AFA4 800C3E04 260400AC */  addiu $a0, $s0, 0xac
/* B3AFA8 800C3E08 00002825 */  move  $a1, $zero
/* B3AFAC 800C3E0C 53200006 */  beql  $t9, $zero, .L800C3E28
/* B3AFB0 800C3E10 8FA80024 */   lw    $t0, 0x24($sp)
/* B3AFB4 800C3E14 0C000CA0 */  jal   osRecvMesg
/* B3AFB8 800C3E18 24060001 */   li    $a2, 1
/* B3AFBC 800C3E1C 0C030F20 */  jal   func_800C3C80
/* B3AFC0 800C3E20 02002025 */   move  $a0, $s0
/* B3AFC4 800C3E24 8FA80024 */  lw    $t0, 0x24($sp)
.L800C3E28:
/* B3AFC8 800C3E28 AE080070 */  sw    $t0, 0x70($s0)
/* B3AFCC 800C3E2C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3AFD0 800C3E30 8FB00018 */  lw    $s0, 0x18($sp)
/* B3AFD4 800C3E34 27BD0028 */  addiu $sp, $sp, 0x28
/* B3AFD8 800C3E38 03E00008 */  jr    $ra
/* B3AFDC 800C3E3C 00000000 */   nop   

glabel func_800C3E40
/* B3AFE0 800C3E40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3AFE4 800C3E44 AFA40018 */  sw    $a0, 0x18($sp)
/* B3AFE8 800C3E48 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3AFEC 800C3E4C 3C048014 */  lui   $a0, %hi(D_80144C80) # $a0, 0x8014
/* B3AFF0 800C3E50 0C00084C */  jal   DebugMessage
/* B3AFF4 800C3E54 24844C80 */   addiu $a0, %lo(D_80144C80) # addiu $a0, $a0, 0x4c80
/* B3AFF8 800C3E58 0C03DB05 */  jal   func_800F6C14
/* B3AFFC 800C3E5C 00000000 */   nop   
/* B3B000 800C3E60 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B004 800C3E64 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B008 800C3E68 03E00008 */  jr    $ra
/* B3B00C 800C3E6C 00000000 */   nop   

glabel func_800C3E70
/* B3B010 800C3E70 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B3B014 800C3E74 AFB50028 */  sw    $s5, 0x28($sp)
/* B3B018 800C3E78 AFB00014 */  sw    $s0, 0x14($sp)
/* B3B01C 800C3E7C 00808025 */  move  $s0, $a0
/* B3B020 800C3E80 0080A825 */  move  $s5, $a0
/* B3B024 800C3E84 AFBF002C */  sw    $ra, 0x2c($sp)
/* B3B028 800C3E88 3C048014 */  lui   $a0, %hi(D_80144CBC) # $a0, 0x8014
/* B3B02C 800C3E8C AFB40024 */  sw    $s4, 0x24($sp)
/* B3B030 800C3E90 AFB30020 */  sw    $s3, 0x20($sp)
/* B3B034 800C3E94 AFB2001C */  sw    $s2, 0x1c($sp)
/* B3B038 800C3E98 AFB10018 */  sw    $s1, 0x18($sp)
/* B3B03C 800C3E9C AFA00038 */  sw    $zero, 0x38($sp)
/* B3B040 800C3EA0 0C00084C */  jal   DebugMessage
/* B3B044 800C3EA4 24844CBC */   addiu $a0, %lo(D_80144CBC) # addiu $a0, $a0, 0x4cbc
/* B3B048 800C3EA8 0C03DC3E */  jal   func_800F70F8
/* B3B04C 800C3EAC 00000000 */   nop   
/* B3B050 800C3EB0 3C048000 */  lui   $a0, %hi(D_80000F68) # $a0, 0x8000
/* B3B054 800C3EB4 0C038C07 */  jal   func_800E301C
/* B3B058 800C3EB8 24840F68 */   addiu $a0, %lo(D_80000F68) # addiu $a0, $a0, 0xf68
/* B3B05C 800C3EBC 0C03DC47 */  jal   func_800F711C
/* B3B060 800C3EC0 00000000 */   nop   
/* B3B064 800C3EC4 260400C8 */  addiu $a0, $s0, 0xc8
/* B3B068 800C3EC8 00002825 */  move  $a1, $zero
/* B3B06C 800C3ECC 0C000C18 */  jal   osSendMesg
/* B3B070 800C3ED0 24060001 */   li    $a2, 1
/* B3B074 800C3ED4 26140074 */  addiu $s4, $s0, 0x74
/* B3B078 800C3ED8 02803025 */  move  $a2, $s4
/* B3B07C 800C3EDC 8E040000 */  lw    $a0, ($s0)
/* B3B080 800C3EE0 0C034C88 */  jal   func_800D3220
/* B3B084 800C3EE4 27A5003C */   addiu $a1, $sp, 0x3c
/* B3B088 800C3EE8 24130004 */  li    $s3, 4
/* B3B08C 800C3EEC 24120001 */  li    $s2, 1
/* B3B090 800C3EF0 27B10038 */  addiu $s1, $sp, 0x38
/* B3B094 800C3EF4 02802025 */  move  $a0, $s4
.L800C3EF8:
/* B3B098 800C3EF8 02202825 */  move  $a1, $s1
/* B3B09C 800C3EFC 0C000CA0 */  jal   osRecvMesg
/* B3B0A0 800C3F00 02403025 */   move  $a2, $s2
/* B3B0A4 800C3F04 8FAE0038 */  lw    $t6, 0x38($sp)
/* B3B0A8 800C3F08 85C20000 */  lh    $v0, ($t6)
/* B3B0AC 800C3F0C 10520005 */  beq   $v0, $s2, .L800C3F24
/* B3B0B0 800C3F10 00000000 */   nop   
/* B3B0B4 800C3F14 10530019 */  beq   $v0, $s3, .L800C3F7C
/* B3B0B8 800C3F18 00000000 */   nop   
/* B3B0BC 800C3F1C 1000FFF6 */  b     .L800C3EF8
/* B3B0C0 800C3F20 02802025 */   move  $a0, $s4
.L800C3F24:
/* B3B0C4 800C3F24 0C030F2E */  jal   func_800C3CB8
/* B3B0C8 800C3F28 02002025 */   move  $a0, $s0
/* B3B0CC 800C3F2C 8E0F007C */  lw    $t7, 0x7c($s0)
/* B3B0D0 800C3F30 51E0FFF1 */  beql  $t7, $zero, .L800C3EF8
/* B3B0D4 800C3F34 02802025 */   move  $a0, $s4
/* B3B0D8 800C3F38 02802025 */  move  $a0, $s4
.L800C3F3C:
/* B3B0DC 800C3F3C 02202825 */  move  $a1, $s1
/* B3B0E0 800C3F40 0C000CA0 */  jal   osRecvMesg
/* B3B0E4 800C3F44 02403025 */   move  $a2, $s2
/* B3B0E8 800C3F48 8FB80038 */  lw    $t8, 0x38($sp)
/* B3B0EC 800C3F4C 87020000 */  lh    $v0, ($t8)
/* B3B0F0 800C3F50 50520006 */  beql  $v0, $s2, .L800C3F6C
/* B3B0F4 800C3F54 8EB9007C */   lw    $t9, 0x7c($s5)
/* B3B0F8 800C3F58 54530004 */  bnel  $v0, $s3, .L800C3F6C
/* B3B0FC 800C3F5C 8EB9007C */   lw    $t9, 0x7c($s5)
/* B3B100 800C3F60 0C030F90 */  jal   func_800C3E40
/* B3B104 800C3F64 02002025 */   move  $a0, $s0
/* B3B108 800C3F68 8EB9007C */  lw    $t9, 0x7c($s5)
.L800C3F6C:
/* B3B10C 800C3F6C 5720FFF3 */  bnezl $t9, .L800C3F3C
/* B3B110 800C3F70 02802025 */   move  $a0, $s4
/* B3B114 800C3F74 1000FFE0 */  b     .L800C3EF8
/* B3B118 800C3F78 02802025 */   move  $a0, $s4
.L800C3F7C:
/* B3B11C 800C3F7C 0C030F90 */  jal   func_800C3E40
/* B3B120 800C3F80 02002025 */   move  $a0, $s0
/* B3B124 800C3F84 1000FFDC */  b     .L800C3EF8
/* B3B128 800C3F88 02802025 */   move  $a0, $s4
/* B3B12C 800C3F8C 00000000 */  nop   
/* B3B130 800C3F90 00000000 */  nop   
/* B3B134 800C3F94 00000000 */  nop   
/* B3B138 800C3F98 00000000 */  nop   
/* B3B13C 800C3F9C 00000000 */  nop   
/* B3B140 800C3FA0 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3B144 800C3FA4 8FB00014 */  lw    $s0, 0x14($sp)
/* B3B148 800C3FA8 8FB10018 */  lw    $s1, 0x18($sp)
/* B3B14C 800C3FAC 8FB2001C */  lw    $s2, 0x1c($sp)
/* B3B150 800C3FB0 8FB30020 */  lw    $s3, 0x20($sp)
/* B3B154 800C3FB4 8FB40024 */  lw    $s4, 0x24($sp)
/* B3B158 800C3FB8 8FB50028 */  lw    $s5, 0x28($sp)
/* B3B15C 800C3FBC 03E00008 */  jr    $ra
/* B3B160 800C3FC0 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800C3FC4
/* B3B164 800C3FC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B168 800C3FC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B16C 800C3FCC 248400C8 */  addiu $a0, $a0, 0xc8
/* B3B170 800C3FD0 00002825 */  move  $a1, $zero
/* B3B174 800C3FD4 0C000CA0 */  jal   osRecvMesg
/* B3B178 800C3FD8 24060001 */   li    $a2, 1
/* B3B17C 800C3FDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B180 800C3FE0 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B184 800C3FE4 03E00008 */  jr    $ra
/* B3B188 800C3FE8 00000000 */   nop   

glabel func_800C3FEC
/* B3B18C 800C3FEC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3B190 800C3FF0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3B194 800C3FF4 AFB00020 */  sw    $s0, 0x20($sp)
/* B3B198 800C3FF8 AFA50034 */  sw    $a1, 0x34($sp)
/* B3B19C 800C3FFC 00808025 */  move  $s0, $a0
/* B3B1A0 800C4000 AFA60038 */  sw    $a2, 0x38($sp)
/* B3B1A4 800C4004 AFA7003C */  sw    $a3, 0x3c($sp)
/* B3B1A8 800C4008 0C001114 */  jal   bzero
/* B3B1AC 800C400C 24050298 */   li    $a1, 664
/* B3B1B0 800C4010 8FAE0040 */  lw    $t6, 0x40($sp)
/* B3B1B4 800C4014 260400AC */  addiu $a0, $s0, 0xac
/* B3B1B8 800C4018 260500C4 */  addiu $a1, $s0, 0xc4
/* B3B1BC 800C401C AE0E0004 */  sw    $t6, 4($s0)
/* B3B1C0 800C4020 8FAF0044 */  lw    $t7, 0x44($sp)
/* B3B1C4 800C4024 AE000070 */  sw    $zero, 0x70($s0)
/* B3B1C8 800C4028 24060001 */  li    $a2, 1
/* B3B1CC 800C402C AE0F0000 */  sw    $t7, ($s0)
/* B3B1D0 800C4030 0C001874 */  jal   osCreateMesgQueue
/* B3B1D4 800C4034 AFA4002C */   sw    $a0, 0x2c($sp)
/* B3B1D8 800C4038 26040074 */  addiu $a0, $s0, 0x74
/* B3B1DC 800C403C 2605008C */  addiu $a1, $s0, 0x8c
/* B3B1E0 800C4040 0C001874 */  jal   osCreateMesgQueue
/* B3B1E4 800C4044 24060008 */   li    $a2, 8
/* B3B1E8 800C4048 260400C8 */  addiu $a0, $s0, 0xc8
/* B3B1EC 800C404C 260500E0 */  addiu $a1, $s0, 0xe0
/* B3B1F0 800C4050 0C001874 */  jal   osCreateMesgQueue
/* B3B1F4 800C4054 24060001 */   li    $a2, 1
/* B3B1F8 800C4058 8FA4002C */  lw    $a0, 0x2c($sp)
/* B3B1FC 800C405C 00002825 */  move  $a1, $zero
/* B3B200 800C4060 0C000C18 */  jal   osSendMesg
/* B3B204 800C4064 24060001 */   li    $a2, 1
/* B3B208 800C4068 8FB80034 */  lw    $t8, 0x34($sp)
/* B3B20C 800C406C 8FB90038 */  lw    $t9, 0x38($sp)
/* B3B210 800C4070 260400E8 */  addiu $a0, $s0, 0xe8
/* B3B214 800C4074 3C06800C */  lui   $a2, %hi(func_800C3E70) # $a2, 0x800c
/* B3B218 800C4078 24C63E70 */  addiu $a2, %lo(func_800C3E70) # addiu $a2, $a2, 0x3e70
/* B3B21C 800C407C AFA4002C */  sw    $a0, 0x2c($sp)
/* B3B220 800C4080 8FA5003C */  lw    $a1, 0x3c($sp)
/* B3B224 800C4084 02003825 */  move  $a3, $s0
/* B3B228 800C4088 AFB80010 */  sw    $t8, 0x10($sp)
/* B3B22C 800C408C 0C001154 */  jal   osCreateThread
/* B3B230 800C4090 AFB90014 */   sw    $t9, 0x14($sp)
/* B3B234 800C4094 0C0023F0 */  jal   osStartThread
/* B3B238 800C4098 8FA4002C */   lw    $a0, 0x2c($sp)
/* B3B23C 800C409C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B3B240 800C40A0 8FB00020 */  lw    $s0, 0x20($sp)
/* B3B244 800C40A4 27BD0030 */  addiu $sp, $sp, 0x30
/* B3B248 800C40A8 03E00008 */  jr    $ra
/* B3B24C 800C40AC 00000000 */   nop   

glabel func_800C40B0
/* B3B250 800C40B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B254 800C40B4 AFA40018 */  sw    $a0, 0x18($sp)
/* B3B258 800C40B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B25C 800C40BC 3C048014 */  lui   $a0, %hi(D_80144CF0) # $a0, 0x8014
/* B3B260 800C40C0 0C00084C */  jal   DebugMessage
/* B3B264 800C40C4 24844CF0 */   addiu $a0, %lo(D_80144CF0) # addiu $a0, $a0, 0x4cf0
/* B3B268 800C40C8 0C018D90 */  jal   func_80063640
/* B3B26C 800C40CC 00000000 */   nop   
/* B3B270 800C40D0 8FA20018 */  lw    $v0, 0x18($sp)
/* B3B274 800C40D4 3C0E8080 */  lui   $t6, %hi(D_80800878) # $t6, 0x8080
/* B3B278 800C40D8 25CE0878 */  addiu $t6, %lo(D_80800878) # addiu $t6, $t6, 0x878
/* B3B27C 800C40DC 240F01E8 */  li    $t7, 488
/* B3B280 800C40E0 AC400098 */  sw    $zero, 0x98($v0)
/* B3B284 800C40E4 AC4F0010 */  sw    $t7, 0x10($v0)
/* B3B288 800C40E8 AC4E000C */  sw    $t6, 0xc($v0)
/* B3B28C 800C40EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B290 800C40F0 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B294 800C40F4 03E00008 */  jr    $ra
/* B3B298 800C40F8 00000000 */   nop   

glabel func_800C40FC
/* B3B29C 800C40FC 03E00008 */  jr    $ra
/* B3B2A0 800C4100 AFA40000 */   sw    $a0, ($sp)

glabel func_800C4104
/* B3B2A4 800C4104 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B2A8 800C4108 3C0E800C */  lui   $t6, %hi(func_800C40FC) # $t6, 0x800c
/* B3B2AC 800C410C AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B2B0 800C4110 25CE40FC */  addiu $t6, %lo(func_800C40FC) # addiu $t6, $t6, 0x40fc
/* B3B2B4 800C4114 0C03102C */  jal   func_800C40B0
/* B3B2B8 800C4118 AC8E0008 */   sw    $t6, 8($a0)
/* B3B2BC 800C411C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B2C0 800C4120 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B2C4 800C4124 03E00008 */  jr    $ra
/* B3B2C8 800C4128 00000000 */   nop   
