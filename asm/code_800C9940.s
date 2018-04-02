.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C9940
/* B40AE0 800C9940 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B40AE4 800C9944 AFA5001C */  sw    $a1, 0x1c($sp)
/* B40AE8 800C9948 00802825 */  move  $a1, $a0
/* B40AEC 800C994C AFA40018 */  sw    $a0, 0x18($sp)
/* B40AF0 800C9950 AFA60020 */  sw    $a2, 0x20($sp)
/* B40AF4 800C9954 AFBF0014 */  sw    $ra, 0x14($sp)
/* B40AF8 800C9958 3C068014 */  lui   $a2, %hi(D_80146238) # $a2, 0x8014
/* B40AFC 800C995C 3C048014 */  lui   $a0, %hi(D_80146230) # $a0, 0x8014
/* B40B00 800C9960 24846230 */  addiu $a0, %lo(D_80146230) # addiu $a0, $a0, 0x6230
/* B40B04 800C9964 24C66238 */  addiu $a2, %lo(D_80146238) # addiu $a2, $a2, 0x6238
/* B40B08 800C9968 AFA50018 */  sw    $a1, 0x18($sp)
/* B40B0C 800C996C 0C000B58 */  jal   NullPointerCheck
/* B40B10 800C9970 240700B5 */   li    $a3, 181
/* B40B14 800C9974 8FA50018 */  lw    $a1, 0x18($sp)
/* B40B18 800C9978 8FAE001C */  lw    $t6, 0x1c($sp)
/* B40B1C 800C997C ACAE0018 */  sw    $t6, 0x18($a1)
/* B40B20 800C9980 8FAF0020 */  lw    $t7, 0x20($sp)
/* B40B24 800C9984 ACAF001C */  sw    $t7, 0x1c($a1)
/* B40B28 800C9988 8FBF0014 */  lw    $ra, 0x14($sp)
/* B40B2C 800C998C 27BD0018 */  addiu $sp, $sp, 0x18
/* B40B30 800C9990 03E00008 */  jr    $ra
/* B40B34 800C9994 00000000 */   nop   

glabel func_800C9998
/* B40B38 800C9998 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B40B3C 800C999C AFBF0014 */  sw    $ra, 0x14($sp)
/* B40B40 800C99A0 24050020 */  li    $a1, 32
/* B40B44 800C99A4 0C032650 */  jal   func_800C9940
/* B40B48 800C99A8 24060016 */   li    $a2, 22
/* B40B4C 800C99AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B40B50 800C99B0 27BD0018 */  addiu $sp, $sp, 0x18
/* B40B54 800C99B4 03E00008 */  jr    $ra
/* B40B58 800C99B8 00000000 */   nop   

glabel func_800C99BC
/* B40B5C 800C99BC 03E00008 */  jr    $ra
/* B40B60 800C99C0 AFA40000 */   sw    $a0, ($sp)

glabel func_800C99C4
/* B40B64 800C99C4 27BDFDE0 */  addiu $sp, $sp, -0x220
/* B40B68 800C99C8 AFBF0034 */  sw    $ra, 0x34($sp)
/* B40B6C 800C99CC AFB20030 */  sw    $s2, 0x30($sp)
/* B40B70 800C99D0 AFB1002C */  sw    $s1, 0x2c($sp)
/* B40B74 800C99D4 AFB00028 */  sw    $s0, 0x28($sp)
/* B40B78 800C99D8 F7B60020 */  sdc1  $f22, 0x20($sp)
/* B40B7C 800C99DC F7B40018 */  sdc1  $f20, 0x18($sp)
/* B40B80 800C99E0 AFA50224 */  sw    $a1, 0x224($sp)
/* B40B84 800C99E4 8C82001C */  lw    $v0, 0x1c($a0)
/* B40B88 800C99E8 3C068014 */  lui   $a2, %hi(D_8014624C) # $a2, 0x8014
/* B40B8C 800C99EC 24C6624C */  addiu $a2, %lo(D_8014624C) # addiu $a2, $a2, 0x624c
/* B40B90 800C99F0 27A400B4 */  addiu $a0, $sp, 0xb4
/* B40B94 800C99F4 240700E1 */  li    $a3, 225
/* B40B98 800C99F8 AFA20208 */  sw    $v0, 0x208($sp)
/* B40B9C 800C99FC 0C031AB1 */  jal   func_800C6AC4
/* B40BA0 800C9A00 24520002 */   addiu $s2, $v0, 2
/* B40BA4 800C9A04 3C0E8013 */  lui   $t6, %hi(D_8012DBE0) # $t6, 0x8013
/* B40BA8 800C9A08 25CEDBE0 */  addiu $t6, %lo(D_8012DBE0) # addiu $t6, $t6, -0x2420
/* B40BAC 800C9A0C 8DD80000 */  lw    $t8, ($t6)
/* B40BB0 800C9A10 3C118017 */  lui   $s1, %hi(D_8016A588) # $s1, 0x8017
/* B40BB4 800C9A14 8DD90004 */  lw    $t9, 4($t6)
/* B40BB8 800C9A18 17000002 */  bnez  $t8, .L800C9A24
/* B40BBC 800C9A1C 2631A588 */   addiu $s1, %lo(D_8016A588) # addiu $s1, $s1, -0x5a78
/* B40BC0 800C9A20 132000F1 */  beqz  $t9, .L800C9DE8
.L800C9A24:
/* B40BC4 800C9A24 3C0F8013 */   li    $t7, 0x80130000 # 0.000000
/* B40BC8 800C9A28 3C014050 */  li    $at, 0x40500000 # 0.000000
/* B40BCC 800C9A2C 25EFD2A0 */  addiu $t7, %lo(D_8012D2A0) # addiu $t7, $t7, -0x2d60
/* B40BD0 800C9A30 4481B800 */  mtc1  $at, $f23
/* B40BD4 800C9A34 4480B000 */  mtc1  $zero, $f22
/* B40BD8 800C9A38 AE2F0000 */  sw    $t7, ($s1)
/* B40BDC 800C9A3C 00008025 */  move  $s0, $zero
.L800C9A40:
/* B40BE0 800C9A40 8E290000 */  lw    $t1, ($s1)
/* B40BE4 800C9A44 8D2A0000 */  lw    $t2, ($t1)
/* B40BE8 800C9A48 8D440000 */  lw    $a0, ($t2)
/* B40BEC 800C9A4C 0C0419BD */  jal   __ull_to_d
/* B40BF0 800C9A50 8D450004 */   lw    $a1, 4($t2)
/* B40BF4 800C9A54 3C0B8013 */  lui   $t3, %hi(D_8012DBE0) # $t3, 0x8013
/* B40BF8 800C9A58 256BDBE0 */  addiu $t3, %lo(D_8012DBE0) # addiu $t3, $t3, -0x2420
/* B40BFC 800C9A5C 8D640000 */  lw    $a0, ($t3)
/* B40C00 800C9A60 8D650004 */  lw    $a1, 4($t3)
/* B40C04 800C9A64 0C0419BD */  jal   __ull_to_d
/* B40C08 800C9A68 46200506 */   mov.d $f20, $f0
/* B40C0C 800C9A6C 4620A103 */  div.d $f4, $f20, $f0
/* B40C10 800C9A70 8E380000 */  lw    $t8, ($s1)
/* B40C14 800C9A74 26100001 */  addiu $s0, $s0, 1
/* B40C18 800C9A78 2A010006 */  slti  $at, $s0, 6
/* B40C1C 800C9A7C 46362182 */  mul.d $f6, $f4, $f22
/* B40C20 800C9A80 4620320D */  trunc.w.d $f8, $f6
/* B40C24 800C9A84 440D4000 */  mfc1  $t5, $f8
/* B40C28 800C9A88 00000000 */  nop   
/* B40C2C 800C9A8C 25AE0020 */  addiu $t6, $t5, 0x20
/* B40C30 800C9A90 A30E0004 */  sb    $t6, 4($t8)
/* B40C34 800C9A94 8E390000 */  lw    $t9, ($s1)
/* B40C38 800C9A98 272F0008 */  addiu $t7, $t9, 8
/* B40C3C 800C9A9C 1420FFE8 */  bnez  $at, .L800C9A40
/* B40C40 800C9AA0 AE2F0000 */   sw    $t7, ($s1)
/* B40C44 800C9AA4 27B000D8 */  addiu $s0, $sp, 0xd8
/* B40C48 800C9AA8 02002025 */  move  $a0, $s0
/* B40C4C 800C9AAC 0C02A89E */  jal   func_800AA278
/* B40C50 800C9AB0 8FA50224 */   lw    $a1, 0x224($sp)
/* B40C54 800C9AB4 2409000A */  li    $t1, 10
/* B40C58 800C9AB8 240A00F0 */  li    $t2, 240
/* B40C5C 800C9ABC 240B0140 */  li    $t3, 320
/* B40C60 800C9AC0 AFA901F8 */  sw    $t1, 0x1f8($sp)
/* B40C64 800C9AC4 AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B40C68 800C9AC8 AFAA00A8 */  sw    $t2, 0xa8($sp)
/* B40C6C 800C9ACC AFA000A4 */  sw    $zero, 0xa4($sp)
/* B40C70 800C9AD0 AFA000AC */  sw    $zero, 0xac($sp)
/* B40C74 800C9AD4 02002025 */  move  $a0, $s0
/* B40C78 800C9AD8 0C02A93F */  jal   func_800AA4FC
/* B40C7C 800C9ADC 27A500A4 */   addiu $a1, $sp, 0xa4
/* B40C80 800C9AE0 8FAC0224 */  lw    $t4, 0x224($sp)
/* B40C84 800C9AE4 02002025 */  move  $a0, $s0
/* B40C88 800C9AE8 2405000F */  li    $a1, 15
/* B40C8C 800C9AEC 8D8D02B0 */  lw    $t5, 0x2b0($t4)
/* B40C90 800C9AF0 27A600C8 */  addiu $a2, $sp, 0xc8
/* B40C94 800C9AF4 0C02AE7B */  jal   func_800AB9EC
/* B40C98 800C9AF8 AFAD00C8 */   sw    $t5, 0xc8($sp)
/* B40C9C 800C9AFC 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40CA0 800C9B00 3C06E700 */  lui   $a2, 0xe700
/* B40CA4 800C9B04 3C09EF30 */  lui   $t1, 0xef30
/* B40CA8 800C9B08 25D80008 */  addiu $t8, $t6, 8
/* B40CAC 800C9B0C AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40CB0 800C9B10 ADC00004 */  sw    $zero, 4($t6)
/* B40CB4 800C9B14 ADC60000 */  sw    $a2, ($t6)
/* B40CB8 800C9B18 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40CBC 800C9B1C 3C0E003F */  lui   $t6, (0x003F003F >> 16) # lui $t6, 0x3f
/* B40CC0 800C9B20 35CE003F */  ori   $t6, (0x003F003F & 0xFFFF) # ori $t6, $t6, 0x3f
/* B40CC4 800C9B24 272F0008 */  addiu $t7, $t9, 8
/* B40CC8 800C9B28 AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40CCC 800C9B2C AF200004 */  sw    $zero, 4($t9)
/* B40CD0 800C9B30 AF290000 */  sw    $t1, ($t9)
/* B40CD4 800C9B34 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40CD8 800C9B38 3C07F700 */  lui   $a3, 0xf700
/* B40CDC 800C9B3C 324303FF */  andi  $v1, $s2, 0x3ff
/* B40CE0 800C9B40 254B0008 */  addiu $t3, $t2, 8
/* B40CE4 800C9B44 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40CE8 800C9B48 AD400004 */  sw    $zero, 4($t2)
/* B40CEC 800C9B4C AD460000 */  sw    $a2, ($t2)
/* B40CF0 800C9B50 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40CF4 800C9B54 00031880 */  sll   $v1, $v1, 2
/* B40CF8 800C9B58 3C01F618 */  lui   $at, 0xf618
/* B40CFC 800C9B5C 258D0008 */  addiu $t5, $t4, 8
/* B40D00 800C9B60 AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40D04 800C9B64 AD8E0004 */  sw    $t6, 4($t4)
/* B40D08 800C9B68 AD870000 */  sw    $a3, ($t4)
/* B40D0C 800C9B6C 8FB800C8 */  lw    $t8, 0xc8($sp)
/* B40D10 800C9B70 00617825 */  or    $t7, $v1, $at
/* B40D14 800C9B74 3C080008 */  lui   $t0, 8
/* B40D18 800C9B78 27190008 */  addiu $t9, $t8, 8
/* B40D1C 800C9B7C AFB900C8 */  sw    $t9, 0xc8($sp)
/* B40D20 800C9B80 AF0F0000 */  sw    $t7, ($t8)
/* B40D24 800C9B84 8FA40208 */  lw    $a0, 0x208($sp)
/* B40D28 800C9B88 3C1907C1 */  lui   $t9, (0x07C107C1 >> 16) # lui $t9, 0x7c1
/* B40D2C 800C9B8C 373907C1 */  ori   $t9, (0x07C107C1 & 0xFFFF) # ori $t9, $t9, 0x7c1
/* B40D30 800C9B90 308403FF */  andi  $a0, $a0, 0x3ff
/* B40D34 800C9B94 00042080 */  sll   $a0, $a0, 2
/* B40D38 800C9B98 01044825 */  or    $t1, $t0, $a0
/* B40D3C 800C9B9C AF090004 */  sw    $t1, 4($t8)
/* B40D40 800C9BA0 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40D44 800C9BA4 3C01F628 */  lui   $at, 0xf628
/* B40D48 800C9BA8 00008025 */  move  $s0, $zero
/* B40D4C 800C9BAC 254B0008 */  addiu $t3, $t2, 8
/* B40D50 800C9BB0 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40D54 800C9BB4 AD400004 */  sw    $zero, 4($t2)
/* B40D58 800C9BB8 AD460000 */  sw    $a2, ($t2)
/* B40D5C 800C9BBC 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40D60 800C9BC0 00615025 */  or    $t2, $v1, $at
/* B40D64 800C9BC4 3C010018 */  lui   $at, 0x18
/* B40D68 800C9BC8 258D0008 */  addiu $t5, $t4, 8
/* B40D6C 800C9BCC AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40D70 800C9BD0 AD800004 */  sw    $zero, 4($t4)
/* B40D74 800C9BD4 AD860000 */  sw    $a2, ($t4)
/* B40D78 800C9BD8 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40D7C 800C9BDC 00815825 */  or    $t3, $a0, $at
/* B40D80 800C9BE0 3C01F638 */  lui   $at, 0xf638
/* B40D84 800C9BE4 25D80008 */  addiu $t8, $t6, 8
/* B40D88 800C9BE8 AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40D8C 800C9BEC ADD90004 */  sw    $t9, 4($t6)
/* B40D90 800C9BF0 ADC70000 */  sw    $a3, ($t6)
/* B40D94 800C9BF4 8FAF00C8 */  lw    $t7, 0xc8($sp)
/* B40D98 800C9BF8 24050006 */  li    $a1, 6
/* B40D9C 800C9BFC 25E90008 */  addiu $t1, $t7, 8
/* B40DA0 800C9C00 AFA900C8 */  sw    $t1, 0xc8($sp)
/* B40DA4 800C9C04 ADEB0004 */  sw    $t3, 4($t7)
/* B40DA8 800C9C08 ADEA0000 */  sw    $t2, ($t7)
/* B40DAC 800C9C0C 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40DB0 800C9C10 3C09F801 */  lui   $t1, (0xF801F801 >> 16) # lui $t1, 0xf801
/* B40DB4 800C9C14 3529F801 */  ori   $t1, (0xF801F801 & 0xFFFF) # ori $t1, $t1, 0xf801
/* B40DB8 800C9C18 258D0008 */  addiu $t5, $t4, 8
/* B40DBC 800C9C1C AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40DC0 800C9C20 AD800004 */  sw    $zero, 4($t4)
/* B40DC4 800C9C24 AD860000 */  sw    $a2, ($t4)
/* B40DC8 800C9C28 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40DCC 800C9C2C 00616025 */  or    $t4, $v1, $at
/* B40DD0 800C9C30 3C010028 */  lui   $at, 0x28
/* B40DD4 800C9C34 25D80008 */  addiu $t8, $t6, 8
/* B40DD8 800C9C38 AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40DDC 800C9C3C ADC00004 */  sw    $zero, 4($t6)
/* B40DE0 800C9C40 ADC60000 */  sw    $a2, ($t6)
/* B40DE4 800C9C44 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40DE8 800C9C48 00816825 */  or    $t5, $a0, $at
/* B40DEC 800C9C4C 3C01F648 */  lui   $at, 0xf648
/* B40DF0 800C9C50 272F0008 */  addiu $t7, $t9, 8
/* B40DF4 800C9C54 AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40DF8 800C9C58 AF290004 */  sw    $t1, 4($t9)
/* B40DFC 800C9C5C AF270000 */  sw    $a3, ($t9)
/* B40E00 800C9C60 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40E04 800C9C64 254B0008 */  addiu $t3, $t2, 8
/* B40E08 800C9C68 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40E0C 800C9C6C AD4D0004 */  sw    $t5, 4($t2)
/* B40E10 800C9C70 AD4C0000 */  sw    $t4, ($t2)
/* B40E14 800C9C74 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* B40E18 800C9C78 3C0BF83F */  lui   $t3, (0xF83FF83F >> 16) # lui $t3, 0xf83f
/* B40E1C 800C9C7C 356BF83F */  ori   $t3, (0xF83FF83F & 0xFFFF) # ori $t3, $t3, 0xf83f
/* B40E20 800C9C80 25D80008 */  addiu $t8, $t6, 8
/* B40E24 800C9C84 AFB800C8 */  sw    $t8, 0xc8($sp)
/* B40E28 800C9C88 ADC00004 */  sw    $zero, 4($t6)
/* B40E2C 800C9C8C ADC60000 */  sw    $a2, ($t6)
/* B40E30 800C9C90 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40E34 800C9C94 00617025 */  or    $t6, $v1, $at
/* B40E38 800C9C98 3C010038 */  lui   $at, 0x38
/* B40E3C 800C9C9C 272F0008 */  addiu $t7, $t9, 8
/* B40E40 800C9CA0 AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40E44 800C9CA4 AF200004 */  sw    $zero, 4($t9)
/* B40E48 800C9CA8 AF260000 */  sw    $a2, ($t9)
/* B40E4C 800C9CAC 8FA900C8 */  lw    $t1, 0xc8($sp)
/* B40E50 800C9CB0 0081C025 */  or    $t8, $a0, $at
/* B40E54 800C9CB4 3C04F600 */  lui   $a0, 0xf600
/* B40E58 800C9CB8 252A0008 */  addiu $t2, $t1, 8
/* B40E5C 800C9CBC AFAA00C8 */  sw    $t2, 0xc8($sp)
/* B40E60 800C9CC0 AD2B0004 */  sw    $t3, 4($t1)
/* B40E64 800C9CC4 AD270000 */  sw    $a3, ($t1)
/* B40E68 800C9CC8 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40E6C 800C9CCC 3C098013 */  lui   $t1, %hi(D_8012D2A0) # $t1, 0x8013
/* B40E70 800C9CD0 2529D2A0 */  addiu $t1, %lo(D_8012D2A0) # addiu $t1, $t1, -0x2d60
/* B40E74 800C9CD4 258D0008 */  addiu $t5, $t4, 8
/* B40E78 800C9CD8 AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40E7C 800C9CDC AD980004 */  sw    $t8, 4($t4)
/* B40E80 800C9CE0 AD8E0000 */  sw    $t6, ($t4)
/* B40E84 800C9CE4 8FB900C8 */  lw    $t9, 0xc8($sp)
/* B40E88 800C9CE8 272F0008 */  addiu $t7, $t9, 8
/* B40E8C 800C9CEC AFAF00C8 */  sw    $t7, 0xc8($sp)
/* B40E90 800C9CF0 AF200004 */  sw    $zero, 4($t9)
/* B40E94 800C9CF4 AF260000 */  sw    $a2, ($t9)
/* B40E98 800C9CF8 AE290000 */  sw    $t1, ($s1)
.L800C9CFC:
/* B40E9C 800C9CFC 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* B40EA0 800C9D00 26100001 */  addiu $s0, $s0, 1
/* B40EA4 800C9D04 254B0008 */  addiu $t3, $t2, 8
/* B40EA8 800C9D08 AFAB00C8 */  sw    $t3, 0xc8($sp)
/* B40EAC 800C9D0C AD400004 */  sw    $zero, 4($t2)
/* B40EB0 800C9D10 AD460000 */  sw    $a2, ($t2)
/* B40EB4 800C9D14 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40EB8 800C9D18 258D0008 */  addiu $t5, $t4, 8
/* B40EBC 800C9D1C AFAD00C8 */  sw    $t5, 0xc8($sp)
/* B40EC0 800C9D20 AD870000 */  sw    $a3, ($t4)
/* B40EC4 800C9D24 8E2E0000 */  lw    $t6, ($s1)
/* B40EC8 800C9D28 95C30006 */  lhu   $v1, 6($t6)
/* B40ECC 800C9D2C 0003C400 */  sll   $t8, $v1, 0x10
/* B40ED0 800C9D30 0303C825 */  or    $t9, $t8, $v1
/* B40ED4 800C9D34 AD990004 */  sw    $t9, 4($t4)
/* B40ED8 800C9D38 8FA300C8 */  lw    $v1, 0xc8($sp)
/* B40EDC 800C9D3C 8E220000 */  lw    $v0, ($s1)
/* B40EE0 800C9D40 24690008 */  addiu $t1, $v1, 8
/* B40EE4 800C9D44 AFA900C8 */  sw    $t1, 0xc8($sp)
/* B40EE8 800C9D48 904E0005 */  lbu   $t6, 5($v0)
/* B40EEC 800C9D4C 904B0004 */  lbu   $t3, 4($v0)
/* B40EF0 800C9D50 024EC021 */  addu  $t8, $s2, $t6
/* B40EF4 800C9D54 27190001 */  addiu $t9, $t8, 1
/* B40EF8 800C9D58 332F03FF */  andi  $t7, $t9, 0x3ff
/* B40EFC 800C9D5C 000B6380 */  sll   $t4, $t3, 0xe
/* B40F00 800C9D60 01846825 */  or    $t5, $t4, $a0
/* B40F04 800C9D64 000F4880 */  sll   $t1, $t7, 2
/* B40F08 800C9D68 01A95025 */  or    $t2, $t5, $t1
/* B40F0C 800C9D6C AC6A0000 */  sw    $t2, ($v1)
/* B40F10 800C9D70 8E2B0000 */  lw    $t3, ($s1)
/* B40F14 800C9D74 916C0005 */  lbu   $t4, 5($t3)
/* B40F18 800C9D78 024C7021 */  addu  $t6, $s2, $t4
/* B40F1C 800C9D7C 31D803FF */  andi  $t8, $t6, 0x3ff
/* B40F20 800C9D80 0018C880 */  sll   $t9, $t8, 2
/* B40F24 800C9D84 01197825 */  or    $t7, $t0, $t9
/* B40F28 800C9D88 AC6F0004 */  sw    $t7, 4($v1)
/* B40F2C 800C9D8C 8FAD00C8 */  lw    $t5, 0xc8($sp)
/* B40F30 800C9D90 25A90008 */  addiu $t1, $t5, 8
/* B40F34 800C9D94 AFA900C8 */  sw    $t1, 0xc8($sp)
/* B40F38 800C9D98 ADA00004 */  sw    $zero, 4($t5)
/* B40F3C 800C9D9C ADA60000 */  sw    $a2, ($t5)
/* B40F40 800C9DA0 8E2A0000 */  lw    $t2, ($s1)
/* B40F44 800C9DA4 254B0008 */  addiu $t3, $t2, 8
/* B40F48 800C9DA8 1605FFD4 */  bne   $s0, $a1, .L800C9CFC
/* B40F4C 800C9DAC AE2B0000 */   sw    $t3, ($s1)
/* B40F50 800C9DB0 8FAC00C8 */  lw    $t4, 0xc8($sp)
/* B40F54 800C9DB4 27A400B4 */  addiu $a0, $sp, 0xb4
/* B40F58 800C9DB8 24070114 */  li    $a3, 276
/* B40F5C 800C9DBC 258E0008 */  addiu $t6, $t4, 8
/* B40F60 800C9DC0 AFAE00C8 */  sw    $t6, 0xc8($sp)
/* B40F64 800C9DC4 AD800004 */  sw    $zero, 4($t4)
/* B40F68 800C9DC8 AD860000 */  sw    $a2, ($t4)
/* B40F6C 800C9DCC 8FB90224 */  lw    $t9, 0x224($sp)
/* B40F70 800C9DD0 8FB800C8 */  lw    $t8, 0xc8($sp)
/* B40F74 800C9DD4 3C068014 */  lui   $a2, %hi(D_80146260) # $a2, 0x8014
/* B40F78 800C9DD8 24C66260 */  addiu $a2, %lo(D_80146260) # addiu $a2, $a2, 0x6260
/* B40F7C 800C9DDC AF3802B0 */  sw    $t8, 0x2b0($t9)
/* B40F80 800C9DE0 0C031AD5 */  jal   func_800C6B54
/* B40F84 800C9DE4 8FA50224 */   lw    $a1, 0x224($sp)
.L800C9DE8:
/* B40F88 800C9DE8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B40F8C 800C9DEC D7B40018 */  ldc1  $f20, 0x18($sp)
/* B40F90 800C9DF0 D7B60020 */  ldc1  $f22, 0x20($sp)
/* B40F94 800C9DF4 8FB00028 */  lw    $s0, 0x28($sp)
/* B40F98 800C9DF8 8FB1002C */  lw    $s1, 0x2c($sp)
/* B40F9C 800C9DFC 8FB20030 */  lw    $s2, 0x30($sp)
/* B40FA0 800C9E00 03E00008 */  jr    $ra
/* B40FA4 800C9E04 27BD0220 */   addiu $sp, $sp, 0x220

glabel func_800C9E08
/* B40FA8 800C9E08 AFA7000C */  sw    $a3, 0xc($sp)
/* B40FAC 800C9E0C AC850000 */  sw    $a1, ($a0)
/* B40FB0 800C9E10 AC860004 */  sw    $a2, 4($a0)
/* B40FB4 800C9E14 A4870008 */  sh    $a3, 8($a0)
/* B40FB8 800C9E18 97AE0012 */  lhu   $t6, 0x12($sp)
/* B40FBC 800C9E1C A48E000A */  sh    $t6, 0xa($a0)
/* B40FC0 800C9E20 8FAF0014 */  lw    $t7, 0x14($sp)
/* B40FC4 800C9E24 AC8F000C */  sw    $t7, 0xc($a0)
/* B40FC8 800C9E28 8FB80018 */  lw    $t8, 0x18($sp)
/* B40FCC 800C9E2C AC980010 */  sw    $t8, 0x10($a0)
/* B40FD0 800C9E30 8FB9001C */  lw    $t9, 0x1c($sp)
/* B40FD4 800C9E34 AC990014 */  sw    $t9, 0x14($a0)
/* B40FD8 800C9E38 8FA80020 */  lw    $t0, 0x20($sp)
/* B40FDC 800C9E3C 03E00008 */  jr    $ra
/* B40FE0 800C9E40 AC880018 */   sw    $t0, 0x18($a0)

glabel func_800C9E44
/* B40FE4 800C9E44 27BDFE50 */  addiu $sp, $sp, -0x1b0
/* B40FE8 800C9E48 AFBF001C */  sw    $ra, 0x1c($sp)
/* B40FEC 800C9E4C AFB00018 */  sw    $s0, 0x18($sp)
/* B40FF0 800C9E50 AFA501B4 */  sw    $a1, 0x1b4($sp)
/* B40FF4 800C9E54 8C8E0000 */  lw    $t6, ($a0)
/* B40FF8 800C9E58 00808025 */  move  $s0, $a0
/* B40FFC 800C9E5C 27A40068 */  addiu $a0, $sp, 0x68
/* B41000 800C9E60 15C00011 */  bnez  $t6, .L800C9EA8
/* B41004 800C9E64 8FA501B4 */   lw    $a1, 0x1b4($sp)
/* B41008 800C9E68 3C048014 */  lui   $a0, %hi(D_80146274) # $a0, 0x8014
/* B4100C 800C9E6C 0C00084C */  jal   DebugMessage
/* B41010 800C9E70 24846274 */   addiu $a0, %lo(D_80146274) # addiu $a0, $a0, 0x6274
/* B41014 800C9E74 3C048014 */  lui   $a0, %hi(D_8014627C) # $a0, 0x8014
/* B41018 800C9E78 2484627C */  addiu $a0, %lo(D_8014627C) # addiu $a0, $a0, 0x627c
/* B4101C 800C9E7C 0C000B84 */  jal   DebugMessageWithThreadId
/* B41020 800C9E80 24050139 */   li    $a1, 313
/* B41024 800C9E84 3C048014 */  lui   $a0, %hi(D_80146290) # $a0, 0x8014
/* B41028 800C9E88 24846290 */  addiu $a0, %lo(D_80146290) # addiu $a0, $a0, 0x6290
/* B4102C 800C9E8C 0C00084C */  jal   DebugMessage
/* B41030 800C9E90 8E050000 */   lw    $a1, ($s0)
/* B41034 800C9E94 3C048014 */  lui   $a0, %hi(D_801462A4) # $a0, 0x8014
/* B41038 800C9E98 0C00084C */  jal   DebugMessage
/* B4103C 800C9E9C 248462A4 */   addiu $a0, %lo(D_801462A4) # addiu $a0, $a0, 0x62a4
/* B41040 800C9EA0 10000094 */  b     .L800CA0F4
/* B41044 800C9EA4 8FBF001C */   lw    $ra, 0x1c($sp)
.L800C9EA8:
/* B41048 800C9EA8 3C068014 */  lui   $a2, %hi(D_801462A8) # $a2, 0x8014
/* B4104C 800C9EAC 24C662A8 */  addiu $a2, %lo(D_801462A8) # addiu $a2, $a2, 0x62a8
/* B41050 800C9EB0 0C031AB1 */  jal   func_800C6AC4
/* B41054 800C9EB4 2407013E */   li    $a3, 318
/* B41058 800C9EB8 27A40080 */  addiu $a0, $sp, 0x80
/* B4105C 800C9EBC 0C02A89E */  jal   func_800AA278
/* B41060 800C9EC0 8FA501B4 */   lw    $a1, 0x1b4($sp)
/* B41064 800C9EC4 240F000A */  li    $t7, 10
/* B41068 800C9EC8 241800F0 */  li    $t8, 240
/* B4106C 800C9ECC 24190140 */  li    $t9, 320
/* B41070 800C9ED0 AFAF01A0 */  sw    $t7, 0x1a0($sp)
/* B41074 800C9ED4 AFB90064 */  sw    $t9, 0x64($sp)
/* B41078 800C9ED8 AFB8005C */  sw    $t8, 0x5c($sp)
/* B4107C 800C9EDC AFA00058 */  sw    $zero, 0x58($sp)
/* B41080 800C9EE0 AFA00060 */  sw    $zero, 0x60($sp)
/* B41084 800C9EE4 27A40080 */  addiu $a0, $sp, 0x80
/* B41088 800C9EE8 0C02A93F */  jal   func_800AA4FC
/* B4108C 800C9EEC 27A50058 */   addiu $a1, $sp, 0x58
/* B41090 800C9EF0 8FA901B4 */  lw    $t1, 0x1b4($sp)
/* B41094 800C9EF4 27A40080 */  addiu $a0, $sp, 0x80
/* B41098 800C9EF8 2405000F */  li    $a1, 15
/* B4109C 800C9EFC 8D2A02B0 */  lw    $t2, 0x2b0($t1)
/* B410A0 800C9F00 27A6007C */  addiu $a2, $sp, 0x7c
/* B410A4 800C9F04 0C02AE7B */  jal   func_800AB9EC
/* B410A8 800C9F08 AFAA007C */   sw    $t2, 0x7c($sp)
/* B410AC 800C9F0C 8FAB007C */  lw    $t3, 0x7c($sp)
/* B410B0 800C9F10 3C05E700 */  lui   $a1, 0xe700
/* B410B4 800C9F14 3C0FEF30 */  lui   $t7, 0xef30
/* B410B8 800C9F18 256C0008 */  addiu $t4, $t3, 8
/* B410BC 800C9F1C AFAC007C */  sw    $t4, 0x7c($sp)
/* B410C0 800C9F20 AD600004 */  sw    $zero, 4($t3)
/* B410C4 800C9F24 AD650000 */  sw    $a1, ($t3)
/* B410C8 800C9F28 8FAD007C */  lw    $t5, 0x7c($sp)
/* B410CC 800C9F2C 3C07F700 */  lui   $a3, 0xf700
/* B410D0 800C9F30 3C08F600 */  lui   $t0, 0xf600
/* B410D4 800C9F34 25AE0008 */  addiu $t6, $t5, 8
/* B410D8 800C9F38 AFAE007C */  sw    $t6, 0x7c($sp)
/* B410DC 800C9F3C ADA00004 */  sw    $zero, 4($t5)
/* B410E0 800C9F40 ADAF0000 */  sw    $t7, ($t5)
/* B410E4 800C9F44 8E02000C */  lw    $v0, 0xc($s0)
/* B410E8 800C9F48 8E180010 */  lw    $t8, 0x10($s0)
/* B410EC 800C9F4C 8E090004 */  lw    $t1, 4($s0)
/* B410F0 800C9F50 8E0B0000 */  lw    $t3, ($s0)
/* B410F4 800C9F54 0302C823 */  subu  $t9, $t8, $v0
/* B410F8 800C9F58 03290019 */  multu $t9, $t1
/* B410FC 800C9F5C 8FAD007C */  lw    $t5, 0x7c($sp)
/* B41100 800C9F60 25AE0008 */  addiu $t6, $t5, 8
/* B41104 800C9F64 AFAE007C */  sw    $t6, 0x7c($sp)
/* B41108 800C9F68 ADA00004 */  sw    $zero, 4($t5)
/* B4110C 800C9F6C ADA50000 */  sw    $a1, ($t5)
/* B41110 800C9F70 8FAF007C */  lw    $t7, 0x7c($sp)
/* B41114 800C9F74 00005012 */  mflo  $t2
/* B41118 800C9F78 25F80008 */  addiu $t8, $t7, 8
/* B4111C 800C9F7C AFB8007C */  sw    $t8, 0x7c($sp)
/* B41120 800C9F80 014B001A */  div   $zero, $t2, $t3
/* B41124 800C9F84 ADE70000 */  sw    $a3, ($t7)
/* B41128 800C9F88 96030008 */  lhu   $v1, 8($s0)
/* B4112C 800C9F8C 15600002 */  bnez  $t3, .L800C9F98
/* B41130 800C9F90 00000000 */   nop   
/* B41134 800C9F94 0007000D */  break 7
.L800C9F98:
/* B41138 800C9F98 2401FFFF */  li    $at, -1
/* B4113C 800C9F9C 15610004 */  bne   $t3, $at, .L800C9FB0
/* B41140 800C9FA0 3C018000 */   lui   $at, 0x8000
/* B41144 800C9FA4 15410002 */  bne   $t2, $at, .L800C9FB0
/* B41148 800C9FA8 00000000 */   nop   
/* B4114C 800C9FAC 0006000D */  break 6
.L800C9FB0:
/* B41150 800C9FB0 0003CC00 */  sll   $t9, $v1, 0x10
/* B41154 800C9FB4 03234825 */  or    $t1, $t9, $v1
/* B41158 800C9FB8 ADE90004 */  sw    $t1, 4($t7)
/* B4115C 800C9FBC 8FAA007C */  lw    $t2, 0x7c($sp)
/* B41160 800C9FC0 00006012 */  mflo  $t4
/* B41164 800C9FC4 01823021 */  addu  $a2, $t4, $v0
/* B41168 800C9FC8 254B0008 */  addiu $t3, $t2, 8
/* B4116C 800C9FCC AFAB007C */  sw    $t3, 0x7c($sp)
/* B41170 800C9FD0 8E0C0010 */  lw    $t4, 0x10($s0)
/* B41174 800C9FD4 8E180018 */  lw    $t8, 0x18($s0)
/* B41178 800C9FD8 01401025 */  move  $v0, $t2
/* B4117C 800C9FDC 318D03FF */  andi  $t5, $t4, 0x3ff
/* B41180 800C9FE0 000D7380 */  sll   $t6, $t5, 0xe
/* B41184 800C9FE4 331903FF */  andi  $t9, $t8, 0x3ff
/* B41188 800C9FE8 00194880 */  sll   $t1, $t9, 2
/* B4118C 800C9FEC 01C87825 */  or    $t7, $t6, $t0
/* B41190 800C9FF0 01E95025 */  or    $t2, $t7, $t1
/* B41194 800C9FF4 AC4A0000 */  sw    $t2, ($v0)
/* B41198 800C9FF8 8E0B0014 */  lw    $t3, 0x14($s0)
/* B4119C 800C9FFC 30C403FF */  andi  $a0, $a2, 0x3ff
/* B411A0 800CA000 00042380 */  sll   $a0, $a0, 0xe
/* B411A4 800CA004 316C03FF */  andi  $t4, $t3, 0x3ff
/* B411A8 800CA008 000C6880 */  sll   $t5, $t4, 2
/* B411AC 800CA00C 008D7025 */  or    $t6, $a0, $t5
/* B411B0 800CA010 AC4E0004 */  sw    $t6, 4($v0)
/* B411B4 800CA014 8FB8007C */  lw    $t8, 0x7c($sp)
/* B411B8 800CA018 3C068014 */  lui   $a2, %hi(D_801462BC) # $a2, 0x8014
/* B411BC 800CA01C 24C662BC */  addiu $a2, %lo(D_801462BC) # addiu $a2, $a2, 0x62bc
/* B411C0 800CA020 27190008 */  addiu $t9, $t8, 8
/* B411C4 800CA024 AFB9007C */  sw    $t9, 0x7c($sp)
/* B411C8 800CA028 AF000004 */  sw    $zero, 4($t8)
/* B411CC 800CA02C AF050000 */  sw    $a1, ($t8)
/* B411D0 800CA030 8FAF007C */  lw    $t7, 0x7c($sp)
/* B411D4 800CA034 0088C825 */  or    $t9, $a0, $t0
/* B411D8 800CA038 27A40068 */  addiu $a0, $sp, 0x68
/* B411DC 800CA03C 25E90008 */  addiu $t1, $t7, 8
/* B411E0 800CA040 AFA9007C */  sw    $t1, 0x7c($sp)
/* B411E4 800CA044 ADE00004 */  sw    $zero, 4($t7)
/* B411E8 800CA048 ADE50000 */  sw    $a1, ($t7)
/* B411EC 800CA04C 8FAA007C */  lw    $t2, 0x7c($sp)
/* B411F0 800CA050 254B0008 */  addiu $t3, $t2, 8
/* B411F4 800CA054 AFAB007C */  sw    $t3, 0x7c($sp)
/* B411F8 800CA058 AD470000 */  sw    $a3, ($t2)
/* B411FC 800CA05C 9603000A */  lhu   $v1, 0xa($s0)
/* B41200 800CA060 24070153 */  li    $a3, 339
/* B41204 800CA064 00036400 */  sll   $t4, $v1, 0x10
/* B41208 800CA068 01836825 */  or    $t5, $t4, $v1
/* B4120C 800CA06C AD4D0004 */  sw    $t5, 4($t2)
/* B41210 800CA070 8FAE007C */  lw    $t6, 0x7c($sp)
/* B41214 800CA074 25D80008 */  addiu $t8, $t6, 8
/* B41218 800CA078 AFB8007C */  sw    $t8, 0x7c($sp)
/* B4121C 800CA07C 8E0F0018 */  lw    $t7, 0x18($s0)
/* B41220 800CA080 01C01025 */  move  $v0, $t6
/* B41224 800CA084 31E903FF */  andi  $t1, $t7, 0x3ff
/* B41228 800CA088 00095080 */  sll   $t2, $t1, 2
/* B4122C 800CA08C 032A5825 */  or    $t3, $t9, $t2
/* B41230 800CA090 ADCB0000 */  sw    $t3, ($t6)
/* B41234 800CA094 8E180014 */  lw    $t8, 0x14($s0)
/* B41238 800CA098 8E0C000C */  lw    $t4, 0xc($s0)
/* B4123C 800CA09C 330F03FF */  andi  $t7, $t8, 0x3ff
/* B41240 800CA0A0 318D03FF */  andi  $t5, $t4, 0x3ff
/* B41244 800CA0A4 000D7380 */  sll   $t6, $t5, 0xe
/* B41248 800CA0A8 000F4880 */  sll   $t1, $t7, 2
/* B4124C 800CA0AC 01C9C825 */  or    $t9, $t6, $t1
/* B41250 800CA0B0 AC590004 */  sw    $t9, 4($v0)
/* B41254 800CA0B4 8FAA007C */  lw    $t2, 0x7c($sp)
/* B41258 800CA0B8 254B0008 */  addiu $t3, $t2, 8
/* B4125C 800CA0BC AFAB007C */  sw    $t3, 0x7c($sp)
/* B41260 800CA0C0 AD400004 */  sw    $zero, 4($t2)
/* B41264 800CA0C4 AD450000 */  sw    $a1, ($t2)
/* B41268 800CA0C8 8FAC007C */  lw    $t4, 0x7c($sp)
/* B4126C 800CA0CC 258D0008 */  addiu $t5, $t4, 8
/* B41270 800CA0D0 AFAD007C */  sw    $t5, 0x7c($sp)
/* B41274 800CA0D4 AD800004 */  sw    $zero, 4($t4)
/* B41278 800CA0D8 AD850000 */  sw    $a1, ($t4)
/* B4127C 800CA0DC 8FAF01B4 */  lw    $t7, 0x1b4($sp)
/* B41280 800CA0E0 8FB8007C */  lw    $t8, 0x7c($sp)
/* B41284 800CA0E4 ADF802B0 */  sw    $t8, 0x2b0($t7)
/* B41288 800CA0E8 0C031AD5 */  jal   func_800C6B54
/* B4128C 800CA0EC 8FA501B4 */   lw    $a1, 0x1b4($sp)
/* B41290 800CA0F0 8FBF001C */  lw    $ra, 0x1c($sp)
.L800CA0F4:
/* B41294 800CA0F4 8FB00018 */  lw    $s0, 0x18($sp)
/* B41298 800CA0F8 27BD01B0 */  addiu $sp, $sp, 0x1b0
/* B4129C 800CA0FC 03E00008 */  jr    $ra
/* B412A0 800CA100 00000000 */   nop   

glabel func_800CA104
/* B412A4 800CA104 27BDFF68 */  addiu $sp, $sp, -0x98
/* B412A8 800CA108 3C0E8016 */  lui   $t6, %hi(D_8015FA90) # $t6, 0x8016
/* B412AC 800CA10C 8DCEFA90 */  lw    $t6, %lo(D_8015FA90)($t6)
/* B412B0 800CA110 AFBF003C */  sw    $ra, 0x3c($sp)
/* B412B4 800CA114 AFB20038 */  sw    $s2, 0x38($sp)
/* B412B8 800CA118 AFB10034 */  sw    $s1, 0x34($sp)
/* B412BC 800CA11C AFB00030 */  sw    $s0, 0x30($sp)
/* B412C0 800CA120 AFA40098 */  sw    $a0, 0x98($sp)
/* B412C4 800CA124 AFA600A0 */  sw    $a2, 0xa0($sp)
/* B412C8 800CA128 85CF00D4 */  lh    $t7, 0xd4($t6)
/* B412CC 800CA12C 00A09025 */  move  $s2, $a1
/* B412D0 800CA130 241000D4 */  li    $s0, 212
/* B412D4 800CA134 29E10003 */  slti  $at, $t7, 3
/* B412D8 800CA138 1420001E */  bnez  $at, .L800CA1B4
/* B412DC 800CA13C 00000000 */   nop   
/* B412E0 800CA140 0C01EC9A */  jal   func_8007B268
/* B412E4 800CA144 00000000 */   nop   
/* B412E8 800CA148 1040001A */  beqz  $v0, .L800CA1B4
/* B412EC 800CA14C 27A4005C */   addiu $a0, $sp, 0x5c
/* B412F0 800CA150 27A50058 */  addiu $a1, $sp, 0x58
/* B412F4 800CA154 0C01EC6A */  jal   func_8007B1A8
/* B412F8 800CA158 27A60054 */   addiu $a2, $sp, 0x54
/* B412FC 800CA15C 8FA60054 */  lw    $a2, 0x54($sp)
/* B41300 800CA160 8FB80058 */  lw    $t8, 0x58($sp)
/* B41304 800CA164 27B1006C */  addiu $s1, $sp, 0x6c
/* B41308 800CA168 3419FFFF */  li    $t9, 65535
/* B4130C 800CA16C 2408001E */  li    $t0, 30
/* B41310 800CA170 24090122 */  li    $t1, 290
/* B41314 800CA174 240A00D4 */  li    $t2, 212
/* B41318 800CA178 240B00D5 */  li    $t3, 213
/* B4131C 800CA17C AFAB0020 */  sw    $t3, 0x20($sp)
/* B41320 800CA180 AFAA001C */  sw    $t2, 0x1c($sp)
/* B41324 800CA184 AFA90018 */  sw    $t1, 0x18($sp)
/* B41328 800CA188 AFA80014 */  sw    $t0, 0x14($sp)
/* B4132C 800CA18C AFB90010 */  sw    $t9, 0x10($sp)
/* B41330 800CA190 02202025 */  move  $a0, $s1
/* B41334 800CA194 2407003F */  li    $a3, 63
/* B41338 800CA198 0C032782 */  jal   func_800C9E08
/* B4133C 800CA19C 03062821 */   addu  $a1, $t8, $a2
/* B41340 800CA1A0 02202025 */  move  $a0, $s1
/* B41344 800CA1A4 0C032791 */  jal   func_800C9E44
/* B41348 800CA1A8 02402825 */   move  $a1, $s2
/* B4134C 800CA1AC 00008025 */  move  $s0, $zero
/* B41350 800CA1B0 261000D6 */  addiu $s0, $s0, 0xd6
.L800CA1B4:
/* B41354 800CA1B4 3C0C8016 */  lui   $t4, %hi(D_8015FA90) # $t4, 0x8016
/* B41358 800CA1B8 8D8CFA90 */  lw    $t4, %lo(D_8015FA90)($t4)
/* B4135C 800CA1BC 27B1006C */  addiu $s1, $sp, 0x6c
/* B41360 800CA1C0 858D00D4 */  lh    $t5, 0xd4($t4)
/* B41364 800CA1C4 29A10002 */  slti  $at, $t5, 2
/* B41368 800CA1C8 1420001A */  bnez  $at, .L800CA234
/* B4136C 800CA1CC 27A40050 */   addiu $a0, $sp, 0x50
/* B41370 800CA1D0 27A5004C */  addiu $a1, $sp, 0x4c
/* B41374 800CA1D4 0C03F622 */  jal   func_800FD888
/* B41378 800CA1D8 27A60048 */   addiu $a2, $sp, 0x48
/* B4137C 800CA1DC 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* B41380 800CA1E0 8FAF004C */  lw    $t7, 0x4c($sp)
/* B41384 800CA1E4 8FB80048 */  lw    $t8, 0x48($sp)
/* B41388 800CA1E8 8DC20074 */  lw    $v0, 0x74($t6)
/* B4138C 800CA1EC 3409FC21 */  li    $t1, 64545
/* B41390 800CA1F0 240A001E */  li    $t2, 30
/* B41394 800CA1F4 240B0122 */  li    $t3, 290
/* B41398 800CA1F8 01F8C821 */  addu  $t9, $t7, $t8
/* B4139C 800CA1FC AFAB0018 */  sw    $t3, 0x18($sp)
/* B413A0 800CA200 AFAA0014 */  sw    $t2, 0x14($sp)
/* B413A4 800CA204 AFA90010 */  sw    $t1, 0x10($sp)
/* B413A8 800CA208 AFB00020 */  sw    $s0, 0x20($sp)
/* B413AC 800CA20C AFB0001C */  sw    $s0, 0x1c($sp)
/* B413B0 800CA210 02202025 */  move  $a0, $s1
/* B413B4 800CA214 2407003F */  li    $a3, 63
/* B413B8 800CA218 03222823 */  subu  $a1, $t9, $v0
/* B413BC 800CA21C 0C032782 */  jal   func_800C9E08
/* B413C0 800CA220 03023023 */   subu  $a2, $t8, $v0
/* B413C4 800CA224 02202025 */  move  $a0, $s1
/* B413C8 800CA228 0C032791 */  jal   func_800C9E44
/* B413CC 800CA22C 02402825 */   move  $a1, $s2
/* B413D0 800CA230 26100001 */  addiu $s0, $s0, 1
.L800CA234:
/* B413D4 800CA234 8FA400A0 */  lw    $a0, 0xa0($sp)
/* B413D8 800CA238 24840074 */  addiu $a0, $a0, 0x74
/* B413DC 800CA23C 0C030EE2 */  jal   func_800C3B88
/* B413E0 800CA240 AFA40040 */   sw    $a0, 0x40($sp)
/* B413E4 800CA244 8FAC0040 */  lw    $t4, 0x40($sp)
/* B413E8 800CA248 240D07C1 */  li    $t5, 1985
/* B413EC 800CA24C 240E001E */  li    $t6, 30
/* B413F0 800CA250 8D850000 */  lw    $a1, ($t4)
/* B413F4 800CA254 240F0122 */  li    $t7, 290
/* B413F8 800CA258 AFAF0018 */  sw    $t7, 0x18($sp)
/* B413FC 800CA25C AFB00020 */  sw    $s0, 0x20($sp)
/* B41400 800CA260 AFB0001C */  sw    $s0, 0x1c($sp)
/* B41404 800CA264 AFAE0014 */  sw    $t6, 0x14($sp)
/* B41408 800CA268 AFAD0010 */  sw    $t5, 0x10($sp)
/* B4140C 800CA26C 02202025 */  move  $a0, $s1
/* B41410 800CA270 2407003F */  li    $a3, 63
/* B41414 800CA274 0C032782 */  jal   func_800C9E08
/* B41418 800CA278 00A23023 */   subu  $a2, $a1, $v0
/* B4141C 800CA27C 02202025 */  move  $a0, $s1
/* B41420 800CA280 0C032791 */  jal   func_800C9E44
/* B41424 800CA284 02402825 */   move  $a1, $s2
/* B41428 800CA288 264402B8 */  addiu $a0, $s2, 0x2b8
/* B4142C 800CA28C 26100001 */  addiu $s0, $s0, 1
/* B41430 800CA290 0C030E40 */  jal   func_800C3900
/* B41434 800CA294 AFA40040 */   sw    $a0, 0x40($sp)
/* B41438 800CA298 8FB80040 */  lw    $t8, 0x40($sp)
/* B4143C 800CA29C 3419F83F */  li    $t9, 63551
/* B41440 800CA2A0 2408001E */  li    $t0, 30
/* B41444 800CA2A4 8F050000 */  lw    $a1, ($t8)
/* B41448 800CA2A8 24090122 */  li    $t1, 290
/* B4144C 800CA2AC AFA90018 */  sw    $t1, 0x18($sp)
/* B41450 800CA2B0 AFB00020 */  sw    $s0, 0x20($sp)
/* B41454 800CA2B4 AFB0001C */  sw    $s0, 0x1c($sp)
/* B41458 800CA2B8 AFA80014 */  sw    $t0, 0x14($sp)
/* B4145C 800CA2BC AFB90010 */  sw    $t9, 0x10($sp)
/* B41460 800CA2C0 02202025 */  move  $a0, $s1
/* B41464 800CA2C4 2407003F */  li    $a3, 63
/* B41468 800CA2C8 0C032782 */  jal   func_800C9E08
/* B4146C 800CA2CC 00A23023 */   subu  $a2, $a1, $v0
/* B41470 800CA2D0 02202025 */  move  $a0, $s1
/* B41474 800CA2D4 0C032791 */  jal   func_800C9E44
/* B41478 800CA2D8 02402825 */   move  $a1, $s2
/* B4147C 800CA2DC 264402C8 */  addiu $a0, $s2, 0x2c8
/* B41480 800CA2E0 26100001 */  addiu $s0, $s0, 1
/* B41484 800CA2E4 0C030E40 */  jal   func_800C3900
/* B41488 800CA2E8 AFA40040 */   sw    $a0, 0x40($sp)
/* B4148C 800CA2EC 8FAA0040 */  lw    $t2, 0x40($sp)
/* B41490 800CA2F0 340BFFC1 */  li    $t3, 65473
/* B41494 800CA2F4 240C001E */  li    $t4, 30
/* B41498 800CA2F8 8D450000 */  lw    $a1, ($t2)
/* B4149C 800CA2FC 240D0122 */  li    $t5, 290
/* B414A0 800CA300 AFAD0018 */  sw    $t5, 0x18($sp)
/* B414A4 800CA304 AFB00020 */  sw    $s0, 0x20($sp)
/* B414A8 800CA308 AFB0001C */  sw    $s0, 0x1c($sp)
/* B414AC 800CA30C AFAC0014 */  sw    $t4, 0x14($sp)
/* B414B0 800CA310 AFAB0010 */  sw    $t3, 0x10($sp)
/* B414B4 800CA314 02202025 */  move  $a0, $s1
/* B414B8 800CA318 2407003F */  li    $a3, 63
/* B414BC 800CA31C 0C032782 */  jal   func_800C9E08
/* B414C0 800CA320 00A23023 */   subu  $a2, $a1, $v0
/* B414C4 800CA324 02202025 */  move  $a0, $s1
/* B414C8 800CA328 0C032791 */  jal   func_800C9E44
/* B414CC 800CA32C 02402825 */   move  $a1, $s2
/* B414D0 800CA330 264402A8 */  addiu $a0, $s2, 0x2a8
/* B414D4 800CA334 26100001 */  addiu $s0, $s0, 1
/* B414D8 800CA338 0C030E40 */  jal   func_800C3900
/* B414DC 800CA33C AFA40040 */   sw    $a0, 0x40($sp)
/* B414E0 800CA340 8FAE0040 */  lw    $t6, 0x40($sp)
/* B414E4 800CA344 340FF801 */  li    $t7, 63489
/* B414E8 800CA348 2418001E */  li    $t8, 30
/* B414EC 800CA34C 8DC50000 */  lw    $a1, ($t6)
/* B414F0 800CA350 24190122 */  li    $t9, 290
/* B414F4 800CA354 AFB90018 */  sw    $t9, 0x18($sp)
/* B414F8 800CA358 AFB00020 */  sw    $s0, 0x20($sp)
/* B414FC 800CA35C AFB0001C */  sw    $s0, 0x1c($sp)
/* B41500 800CA360 AFB80014 */  sw    $t8, 0x14($sp)
/* B41504 800CA364 AFAF0010 */  sw    $t7, 0x10($sp)
/* B41508 800CA368 02202025 */  move  $a0, $s1
/* B4150C 800CA36C 2407003F */  li    $a3, 63
/* B41510 800CA370 0C032782 */  jal   func_800C9E08
/* B41514 800CA374 00A23023 */   subu  $a2, $a1, $v0
/* B41518 800CA378 02202025 */  move  $a0, $s1
/* B4151C 800CA37C 0C032791 */  jal   func_800C9E44
/* B41520 800CA380 02402825 */   move  $a1, $s2
/* B41524 800CA384 8FBF003C */  lw    $ra, 0x3c($sp)
/* B41528 800CA388 8FB00030 */  lw    $s0, 0x30($sp)
/* B4152C 800CA38C 8FB10034 */  lw    $s1, 0x34($sp)
/* B41530 800CA390 8FB20038 */  lw    $s2, 0x38($sp)
/* B41534 800CA394 03E00008 */  jr    $ra
/* B41538 800CA398 27BD0098 */   addiu $sp, $sp, 0x98
