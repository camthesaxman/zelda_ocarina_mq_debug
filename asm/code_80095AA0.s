.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80095AA0
/* B0CC40 80095AA0 AFA40000 */  sw    $a0, ($sp)
/* B0CC44 80095AA4 AFA50004 */  sw    $a1, 4($sp)
/* B0CC48 80095AA8 AFA60008 */  sw    $a2, 8($sp)
/* B0CC4C 80095AAC 03E00008 */  jr    $ra
/* B0CC50 80095AB0 AFA7000C */   sw    $a3, 0xc($sp)

/* B0CC54 80095AB4 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B0CC58 80095AB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0CC5C 80095ABC AFA40060 */  sw    $a0, 0x60($sp)
/* B0CC60 80095AC0 AFA50064 */  sw    $a1, 0x64($sp)
/* B0CC64 80095AC4 AFA60068 */  sw    $a2, 0x68($sp)
/* B0CC68 80095AC8 8C850000 */  lw    $a1, ($a0)
/* B0CC6C 80095ACC 3C068014 */  lui   $a2, %hi(D_8013EF30) # $a2, 0x8014
/* B0CC70 80095AD0 24C6EF30 */  addiu $a2, %lo(D_8013EF30) # addiu $a2, $a2, -0x10d0
/* B0CC74 80095AD4 27A40040 */  addiu $a0, $sp, 0x40
/* B0CC78 80095AD8 240700C1 */  li    $a3, 193
/* B0CC7C 80095ADC 0C031AB1 */  jal   func_800C6AC4
/* B0CC80 80095AE0 AFA50050 */   sw    $a1, 0x50($sp)
/* B0CC84 80095AE4 8FAA0068 */  lw    $t2, 0x68($sp)
/* B0CC88 80095AE8 3C048012 */  lui   $a0, %hi(D_801270A0) # $a0, 0x8012
/* B0CC8C 80095AEC 8FA80050 */  lw    $t0, 0x50($sp)
/* B0CC90 80095AF0 314A0001 */  andi  $t2, $t2, 1
/* B0CC94 80095AF4 1140001F */  beqz  $t2, .L80095B74
/* B0CC98 80095AF8 248470A0 */   addiu $a0, %lo(D_801270A0) # addiu $a0, $a0, 0x70a0
/* B0CC9C 80095AFC 8FA50060 */  lw    $a1, 0x60($sp)
/* B0CCA0 80095B00 AFA80050 */  sw    $t0, 0x50($sp)
/* B0CCA4 80095B04 0C00D0BB */  jal   func_800342EC
/* B0CCA8 80095B08 AFAA0024 */   sw    $t2, 0x24($sp)
/* B0CCAC 80095B0C 8FA80050 */  lw    $t0, 0x50($sp)
/* B0CCB0 80095B10 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0CCB4 80095B14 3C18DB06 */  lui   $t8, (0xDB06000C >> 16) # lui $t8, 0xdb06
/* B0CCB8 80095B18 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B0CCBC 80095B1C 3718000C */  ori   $t8, (0xDB06000C & 0xFFFF) # ori $t8, $t8, 0xc
/* B0CCC0 80095B20 246F0008 */  addiu $t7, $v1, 8
/* B0CCC4 80095B24 AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B0CCC8 80095B28 AC780000 */  sw    $t8, ($v1)
/* B0CCCC 80095B2C 8FB90064 */  lw    $t9, 0x64($sp)
/* B0CCD0 80095B30 8F2B000C */  lw    $t3, 0xc($t9)
/* B0CCD4 80095B34 AC6B0004 */  sw    $t3, 4($v1)
/* B0CCD8 80095B38 8FA40060 */  lw    $a0, 0x60($sp)
/* B0CCDC 80095B3C AFA80050 */  sw    $t0, 0x50($sp)
/* B0CCE0 80095B40 0C024F20 */  jal   func_80093C80
/* B0CCE4 80095B44 AFAA0024 */   sw    $t2, 0x24($sp)
/* B0CCE8 80095B48 8FA80050 */  lw    $t0, 0x50($sp)
/* B0CCEC 80095B4C 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0CCF0 80095B50 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* B0CCF4 80095B54 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B0CCF8 80095B58 3C0E8013 */  lui   $t6, %hi(D_8012DB20) # $t6, 0x8013
/* B0CCFC 80095B5C 25CEDB20 */  addiu $t6, %lo(D_8012DB20) # addiu $t6, $t6, -0x24e0
/* B0CD00 80095B60 246C0008 */  addiu $t4, $v1, 8
/* B0CD04 80095B64 AD0C02C0 */  sw    $t4, 0x2c0($t0)
/* B0CD08 80095B68 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* B0CD0C 80095B6C AC6D0000 */  sw    $t5, ($v1)
/* B0CD10 80095B70 AC6E0004 */  sw    $t6, 4($v1)
.L80095B74:
/* B0CD14 80095B74 8FA90068 */  lw    $t1, 0x68($sp)
/* B0CD18 80095B78 3C048012 */  lui   $a0, %hi(D_801270A0) # $a0, 0x8012
/* B0CD1C 80095B7C 248470A0 */  addiu $a0, %lo(D_801270A0) # addiu $a0, $a0, 0x70a0
/* B0CD20 80095B80 31290002 */  andi  $t1, $t1, 2
/* B0CD24 80095B84 11200025 */  beqz  $t1, .L80095C1C
/* B0CD28 80095B88 8FA50060 */   lw    $a1, 0x60($sp)
/* B0CD2C 80095B8C 3C0F8013 */  lui   $t7, %hi(D_8012DB20) # $t7, 0x8013
/* B0CD30 80095B90 25EFDB20 */  addiu $t7, %lo(D_8012DB20) # addiu $t7, $t7, -0x24e0
/* B0CD34 80095B94 AFAF0020 */  sw    $t7, 0x20($sp)
/* B0CD38 80095B98 AFA80050 */  sw    $t0, 0x50($sp)
/* B0CD3C 80095B9C AFA9001C */  sw    $t1, 0x1c($sp)
/* B0CD40 80095BA0 0C00D0D7 */  jal   func_8003435C
/* B0CD44 80095BA4 AFAA0024 */   sw    $t2, 0x24($sp)
/* B0CD48 80095BA8 8FA80050 */  lw    $t0, 0x50($sp)
/* B0CD4C 80095BAC 8FA9001C */  lw    $t1, 0x1c($sp)
/* B0CD50 80095BB0 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0CD54 80095BB4 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B0CD58 80095BB8 3C19DB06 */  lui   $t9, (0xDB06000C >> 16) # lui $t9, 0xdb06
/* B0CD5C 80095BBC 3739000C */  ori   $t9, (0xDB06000C & 0xFFFF) # ori $t9, $t9, 0xc
/* B0CD60 80095BC0 24780008 */  addiu $t8, $v1, 8
/* B0CD64 80095BC4 AD1802D0 */  sw    $t8, 0x2d0($t0)
/* B0CD68 80095BC8 AC790000 */  sw    $t9, ($v1)
/* B0CD6C 80095BCC 8FAB0064 */  lw    $t3, 0x64($sp)
/* B0CD70 80095BD0 8D6C000C */  lw    $t4, 0xc($t3)
/* B0CD74 80095BD4 AC6C0004 */  sw    $t4, 4($v1)
/* B0CD78 80095BD8 8FAD0060 */  lw    $t5, 0x60($sp)
/* B0CD7C 80095BDC 8DA40000 */  lw    $a0, ($t5)
/* B0CD80 80095BE0 AFA80050 */  sw    $t0, 0x50($sp)
/* B0CD84 80095BE4 AFA9001C */  sw    $t1, 0x1c($sp)
/* B0CD88 80095BE8 0C024F61 */  jal   func_80093D84
/* B0CD8C 80095BEC AFAA0024 */   sw    $t2, 0x24($sp)
/* B0CD90 80095BF0 8FA80050 */  lw    $t0, 0x50($sp)
/* B0CD94 80095BF4 8FA9001C */  lw    $t1, 0x1c($sp)
/* B0CD98 80095BF8 8FAA0024 */  lw    $t2, 0x24($sp)
/* B0CD9C 80095BFC 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B0CDA0 80095C00 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* B0CDA4 80095C04 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* B0CDA8 80095C08 246E0008 */  addiu $t6, $v1, 8
/* B0CDAC 80095C0C AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B0CDB0 80095C10 AC6F0000 */  sw    $t7, ($v1)
/* B0CDB4 80095C14 8FB80020 */  lw    $t8, 0x20($sp)
/* B0CDB8 80095C18 AC780004 */  sw    $t8, 4($v1)
.L80095C1C:
/* B0CDBC 80095C1C 8FB90064 */  lw    $t9, 0x64($sp)
/* B0CDC0 80095C20 3C0E8016 */  lui   $t6, 0x8016
/* B0CDC4 80095C24 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0CDC8 80095C28 8F270008 */  lw    $a3, 8($t9)
/* B0CDCC 80095C2C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0CDD0 80095C30 00002825 */  move  $a1, $zero
/* B0CDD4 80095C34 8CE20004 */  lw    $v0, 4($a3)
/* B0CDD8 80095C38 90F80001 */  lbu   $t8, 1($a3)
/* B0CDDC 80095C3C 3C06DE00 */  lui   $a2, 0xde00
/* B0CDE0 80095C40 00025900 */  sll   $t3, $v0, 4
/* B0CDE4 80095C44 000B6702 */  srl   $t4, $t3, 0x1c
/* B0CDE8 80095C48 000C6880 */  sll   $t5, $t4, 2
/* B0CDEC 80095C4C 01CD7021 */  addu  $t6, $t6, $t5
/* B0CDF0 80095C50 8DCE6FA8 */  lw    $t6, 0x6fa8($t6)
/* B0CDF4 80095C54 00417824 */  and   $t7, $v0, $at
/* B0CDF8 80095C58 3C018000 */  lui   $at, 0x8000
/* B0CDFC 80095C5C 01CF2021 */  addu  $a0, $t6, $t7
/* B0CE00 80095C60 1B00001D */  blez  $t8, .L80095CD8
/* B0CE04 80095C64 00812021 */   addu  $a0, $a0, $at
.L80095C68:
/* B0CE08 80095C68 1140000A */  beqz  $t2, .L80095C94
/* B0CE0C 80095C6C 00000000 */   nop   
/* B0CE10 80095C70 8C990000 */  lw    $t9, ($a0)
/* B0CE14 80095C74 13200007 */  beqz  $t9, .L80095C94
/* B0CE18 80095C78 00000000 */   nop   
/* B0CE1C 80095C7C 8D0302C0 */  lw    $v1, 0x2c0($t0)
/* B0CE20 80095C80 246B0008 */  addiu $t3, $v1, 8
/* B0CE24 80095C84 AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B0CE28 80095C88 AC660000 */  sw    $a2, ($v1)
/* B0CE2C 80095C8C 8C8C0000 */  lw    $t4, ($a0)
/* B0CE30 80095C90 AC6C0004 */  sw    $t4, 4($v1)
.L80095C94:
/* B0CE34 80095C94 5120000B */  beql  $t1, $zero, .L80095CC4
/* B0CE38 80095C98 90F80001 */   lbu   $t8, 1($a3)
/* B0CE3C 80095C9C 8C8D0004 */  lw    $t5, 4($a0)
/* B0CE40 80095CA0 51A00008 */  beql  $t5, $zero, .L80095CC4
/* B0CE44 80095CA4 90F80001 */   lbu   $t8, 1($a3)
/* B0CE48 80095CA8 8D0302D0 */  lw    $v1, 0x2d0($t0)
/* B0CE4C 80095CAC 246E0008 */  addiu $t6, $v1, 8
/* B0CE50 80095CB0 AD0E02D0 */  sw    $t6, 0x2d0($t0)
/* B0CE54 80095CB4 AC660000 */  sw    $a2, ($v1)
/* B0CE58 80095CB8 8C8F0004 */  lw    $t7, 4($a0)
/* B0CE5C 80095CBC AC6F0004 */  sw    $t7, 4($v1)
/* B0CE60 80095CC0 90F80001 */  lbu   $t8, 1($a3)
.L80095CC4:
/* B0CE64 80095CC4 24A50001 */  addiu $a1, $a1, 1
/* B0CE68 80095CC8 24840008 */  addiu $a0, $a0, 8
/* B0CE6C 80095CCC 00B8082A */  slt   $at, $a1, $t8
/* B0CE70 80095CD0 1420FFE5 */  bnez  $at, .L80095C68
/* B0CE74 80095CD4 00000000 */   nop   
.L80095CD8:
/* B0CE78 80095CD8 8FB90060 */  lw    $t9, 0x60($sp)
/* B0CE7C 80095CDC 3C068014 */  lui   $a2, %hi(D_8013EF3C) # $a2, 0x8014
/* B0CE80 80095CE0 24C6EF3C */  addiu $a2, %lo(D_8013EF3C) # addiu $a2, $a2, -0x10c4
/* B0CE84 80095CE4 27A40040 */  addiu $a0, $sp, 0x40
/* B0CE88 80095CE8 240700EF */  li    $a3, 239
/* B0CE8C 80095CEC 0C031AD5 */  jal   func_800C6B54
/* B0CE90 80095CF0 8F250000 */   lw    $a1, ($t9)
/* B0CE94 80095CF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0CE98 80095CF8 27BD0060 */  addiu $sp, $sp, 0x60
/* B0CE9C 80095CFC 03E00008 */  jr    $ra
/* B0CEA0 80095D00 00000000 */   nop   

/* B0CEA4 80095D04 27BDFB40 */  addiu $sp, $sp, -0x4c0
/* B0CEA8 80095D08 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0CEAC 80095D0C AFB10018 */  sw    $s1, 0x18($sp)
/* B0CEB0 80095D10 AFB00014 */  sw    $s0, 0x14($sp)
/* B0CEB4 80095D14 AFA404C0 */  sw    $a0, 0x4c0($sp)
/* B0CEB8 80095D18 AFA504C4 */  sw    $a1, 0x4c4($sp)
/* B0CEBC 80095D1C 8C850000 */  lw    $a1, ($a0)
/* B0CEC0 80095D20 00C08025 */  move  $s0, $a2
/* B0CEC4 80095D24 3C068014 */  lui   $a2, %hi(D_8013EF48) # $a2, 0x8014
/* B0CEC8 80095D28 24C6EF48 */  addiu $a2, %lo(D_8013EF48) # addiu $a2, $a2, -0x10b8
/* B0CECC 80095D2C AFA000B0 */  sw    $zero, 0xb0($sp)
/* B0CED0 80095D30 AFA000B4 */  sw    $zero, 0xb4($sp)
/* B0CED4 80095D34 27A4005C */  addiu $a0, $sp, 0x5c
/* B0CED8 80095D38 2407011F */  li    $a3, 287
/* B0CEDC 80095D3C 0C031AB1 */  jal   func_800C6AC4
/* B0CEE0 80095D40 AFA5006C */   sw    $a1, 0x6c($sp)
/* B0CEE4 80095D44 32110001 */  andi  $s1, $s0, 1
/* B0CEE8 80095D48 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CEEC 80095D4C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CEF0 80095D50 12200025 */  beqz  $s1, .L80095DE8
/* B0CEF4 80095D54 8FAB00B0 */   lw    $t3, 0xb0($sp)
/* B0CEF8 80095D58 3C048012 */  lui   $a0, %hi(D_801270A0) # $a0, 0x8012
/* B0CEFC 80095D5C 248470A0 */  addiu $a0, %lo(D_801270A0) # addiu $a0, $a0, 0x70a0
/* B0CF00 80095D60 8FA504C0 */  lw    $a1, 0x4c0($sp)
/* B0CF04 80095D64 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CF08 80095D68 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CF0C 80095D6C 0C00D0BB */  jal   func_800342EC
/* B0CF10 80095D70 AFAB00B0 */   sw    $t3, 0xb0($sp)
/* B0CF14 80095D74 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CF18 80095D78 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CF1C 80095D7C 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0CF20 80095D80 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0CF24 80095D84 3C18DB06 */  lui   $t8, (0xDB06000C >> 16) # lui $t8, 0xdb06
/* B0CF28 80095D88 3718000C */  ori   $t8, (0xDB06000C & 0xFFFF) # ori $t8, $t8, 0xc
/* B0CF2C 80095D8C 244F0008 */  addiu $t7, $v0, 8
/* B0CF30 80095D90 AD2F02C0 */  sw    $t7, 0x2c0($t1)
/* B0CF34 80095D94 AC580000 */  sw    $t8, ($v0)
/* B0CF38 80095D98 8FB904C4 */  lw    $t9, 0x4c4($sp)
/* B0CF3C 80095D9C 8F2E000C */  lw    $t6, 0xc($t9)
/* B0CF40 80095DA0 AC4E0004 */  sw    $t6, 4($v0)
/* B0CF44 80095DA4 8FA404C0 */  lw    $a0, 0x4c0($sp)
/* B0CF48 80095DA8 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CF4C 80095DAC AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CF50 80095DB0 0C024F20 */  jal   func_80093C80
/* B0CF54 80095DB4 AFAB00B0 */   sw    $t3, 0xb0($sp)
/* B0CF58 80095DB8 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CF5C 80095DBC 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CF60 80095DC0 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0CF64 80095DC4 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0CF68 80095DC8 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B0CF6C 80095DCC 3C198013 */  lui   $t9, %hi(D_8012DB20) # $t9, 0x8013
/* B0CF70 80095DD0 244F0008 */  addiu $t7, $v0, 8
/* B0CF74 80095DD4 AD2F02C0 */  sw    $t7, 0x2c0($t1)
/* B0CF78 80095DD8 2739DB20 */  addiu $t9, %lo(D_8012DB20) # addiu $t9, $t9, -0x24e0
/* B0CF7C 80095DDC 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B0CF80 80095DE0 AC580000 */  sw    $t8, ($v0)
/* B0CF84 80095DE4 AC590004 */  sw    $t9, 4($v0)
.L80095DE8:
/* B0CF88 80095DE8 320D0002 */  andi  $t5, $s0, 2
/* B0CF8C 80095DEC 11A00029 */  beqz  $t5, .L80095E94
/* B0CF90 80095DF0 3C048012 */   lui   $a0, %hi(D_801270A0) # $a0, 0x8012
/* B0CF94 80095DF4 3C108013 */  lui   $s0, %hi(D_8012DB20) # $s0, 0x8013
/* B0CF98 80095DF8 2610DB20 */  addiu $s0, %lo(D_8012DB20) # addiu $s0, $s0, -0x24e0
/* B0CF9C 80095DFC 248470A0 */  addiu $a0, %lo(D_801270A0) # addiu $a0, $a0, 0x70a0
/* B0CFA0 80095E00 8FA504C0 */  lw    $a1, 0x4c0($sp)
/* B0CFA4 80095E04 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CFA8 80095E08 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CFAC 80095E0C AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0CFB0 80095E10 0C00D0D7 */  jal   func_8003435C
/* B0CFB4 80095E14 AFAD002C */   sw    $t5, 0x2c($sp)
/* B0CFB8 80095E18 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CFBC 80095E1C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CFC0 80095E20 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0CFC4 80095E24 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0CFC8 80095E28 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0CFCC 80095E2C 3C0FDB06 */  lui   $t7, (0xDB06000C >> 16) # lui $t7, 0xdb06
/* B0CFD0 80095E30 244E0008 */  addiu $t6, $v0, 8
/* B0CFD4 80095E34 35EF000C */  ori   $t7, (0xDB06000C & 0xFFFF) # ori $t7, $t7, 0xc
/* B0CFD8 80095E38 AD2E02D0 */  sw    $t6, 0x2d0($t1)
/* B0CFDC 80095E3C AC4F0000 */  sw    $t7, ($v0)
/* B0CFE0 80095E40 8FB804C4 */  lw    $t8, 0x4c4($sp)
/* B0CFE4 80095E44 8F19000C */  lw    $t9, 0xc($t8)
/* B0CFE8 80095E48 AC590004 */  sw    $t9, 4($v0)
/* B0CFEC 80095E4C 8FAE04C0 */  lw    $t6, 0x4c0($sp)
/* B0CFF0 80095E50 8DC40000 */  lw    $a0, ($t6)
/* B0CFF4 80095E54 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CFF8 80095E58 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CFFC 80095E5C AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0D000 80095E60 0C024F61 */  jal   func_80093D84
/* B0D004 80095E64 AFAD002C */   sw    $t5, 0x2c($sp)
/* B0D008 80095E68 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0D00C 80095E6C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0D010 80095E70 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0D014 80095E74 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0D018 80095E78 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0D01C 80095E7C 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B0D020 80095E80 244F0008 */  addiu $t7, $v0, 8
/* B0D024 80095E84 AD2F02D0 */  sw    $t7, 0x2d0($t1)
/* B0D028 80095E88 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B0D02C 80095E8C AC580000 */  sw    $t8, ($v0)
/* B0D030 80095E90 AC500004 */  sw    $s0, 4($v0)
.L80095E94:
/* B0D034 80095E94 8FB904C4 */  lw    $t9, 0x4c4($sp)
/* B0D038 80095E98 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0D03C 80095E9C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0D040 80095EA0 8F2C0008 */  lw    $t4, 8($t9)
/* B0D044 80095EA4 3C198016 */  lui   $t9, 0x8016
/* B0D048 80095EA8 3C058014 */  lui   $a1, %hi(D_8013EF74) # $a1, 0x8014
/* B0D04C 80095EAC 8D820004 */  lw    $v0, 4($t4)
/* B0D050 80095EB0 91840001 */  lbu   $a0, 1($t4)
/* B0D054 80095EB4 27A300B8 */  addiu $v1, $sp, 0xb8
/* B0D058 80095EB8 00027100 */  sll   $t6, $v0, 4
/* B0D05C 80095EBC 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0D060 80095EC0 000FC080 */  sll   $t8, $t7, 2
/* B0D064 80095EC4 0338C821 */  addu  $t9, $t9, $t8
/* B0D068 80095EC8 8F396FA8 */  lw    $t9, 0x6fa8($t9)
/* B0D06C 80095ECC 00417024 */  and   $t6, $v0, $at
/* B0D070 80095ED0 3C018000 */  lui   $at, 0x8000
/* B0D074 80095ED4 032E8021 */  addu  $s0, $t9, $t6
/* B0D078 80095ED8 02018021 */  addu  $s0, $s0, $at
/* B0D07C 80095EDC 28810041 */  slti  $at, $a0, 0x41
/* B0D080 80095EE0 14200012 */  bnez  $at, .L80095F2C
/* B0D084 80095EE4 24A5EF74 */   addiu $a1, %lo(D_8013EF74) # addiu $a1, $a1, -0x108c
/* B0D088 80095EE8 3C048014 */  lui   $a0, %hi(D_8013EF54) # $a0, 0x8014
/* B0D08C 80095EEC 2484EF54 */  addiu $a0, %lo(D_8013EF54) # addiu $a0, $a0, -0x10ac
/* B0D090 80095EF0 2406013D */  li    $a2, 317
/* B0D094 80095EF4 AFA300A4 */  sw    $v1, 0xa4($sp)
/* B0D098 80095EF8 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0D09C 80095EFC AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0D0A0 80095F00 AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0D0A4 80095F04 AFAC04BC */  sw    $t4, 0x4bc($sp)
/* B0D0A8 80095F08 0C0007FC */  jal   AssertMessage
/* B0D0AC 80095F0C AFAD002C */   sw    $t5, 0x2c($sp)
/* B0D0B0 80095F10 8FAC04BC */  lw    $t4, 0x4bc($sp)
/* B0D0B4 80095F14 8FA300A4 */  lw    $v1, 0xa4($sp)
/* B0D0B8 80095F18 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0D0BC 80095F1C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0D0C0 80095F20 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0D0C4 80095F24 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0D0C8 80095F28 91840001 */  lbu   $a0, 1($t4)
.L80095F2C:
/* B0D0CC 80095F2C AFB00078 */  sw    $s0, 0x78($sp)
/* B0D0D0 80095F30 18800061 */  blez  $a0, .L800960B8
/* B0D0D4 80095F34 00004025 */   move  $t0, $zero
/* B0D0D8 80095F38 8FA404C0 */  lw    $a0, 0x4c0($sp)
/* B0D0DC 80095F3C 3C010001 */  lui   $at, (0x00011D60 >> 16) # lui $at, 1
/* B0D0E0 80095F40 34211D60 */  ori   $at, (0x00011D60 & 0xFFFF) # ori $at, $at, 0x1d60
/* B0D0E4 80095F44 00812021 */  addu  $a0, $a0, $at
/* B0D0E8 80095F48 AFA40028 */  sw    $a0, 0x28($sp)
/* B0D0EC 80095F4C 860F0000 */  lh    $t7, ($s0)
.L80095F50:
/* B0D0F0 80095F50 8FA40028 */  lw    $a0, 0x28($sp)
/* B0D0F4 80095F54 27A50090 */  addiu $a1, $sp, 0x90
/* B0D0F8 80095F58 448F2000 */  mtc1  $t7, $f4
/* B0D0FC 80095F5C 27A60084 */  addiu $a2, $sp, 0x84
/* B0D100 80095F60 27A70080 */  addiu $a3, $sp, 0x80
/* B0D104 80095F64 468021A0 */  cvt.s.w $f6, $f4
/* B0D108 80095F68 E7A60090 */  swc1  $f6, 0x90($sp)
/* B0D10C 80095F6C 86180002 */  lh    $t8, 2($s0)
/* B0D110 80095F70 44984000 */  mtc1  $t8, $f8
/* B0D114 80095F74 00000000 */  nop   
/* B0D118 80095F78 468042A0 */  cvt.s.w $f10, $f8
/* B0D11C 80095F7C E7AA0094 */  swc1  $f10, 0x94($sp)
/* B0D120 80095F80 86190004 */  lh    $t9, 4($s0)
/* B0D124 80095F84 AFAD002C */  sw    $t5, 0x2c($sp)
/* B0D128 80095F88 AFAC04BC */  sw    $t4, 0x4bc($sp)
/* B0D12C 80095F8C 44998000 */  mtc1  $t9, $f16
/* B0D130 80095F90 AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0D134 80095F94 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0D138 80095F98 468084A0 */  cvt.s.w $f18, $f16
/* B0D13C 80095F9C AFA9006C */  sw    $t1, 0x6c($sp)
/* B0D140 80095FA0 AFA8009C */  sw    $t0, 0x9c($sp)
/* B0D144 80095FA4 AFA300A4 */  sw    $v1, 0xa4($sp)
/* B0D148 80095FA8 0C029B84 */  jal   func_800A6E10
/* B0D14C 80095FAC E7B20098 */   swc1  $f18, 0x98($sp)
/* B0D150 80095FB0 860E0006 */  lh    $t6, 6($s0)
/* B0D154 80095FB4 C7A8008C */  lwc1  $f8, 0x8c($sp)
/* B0D158 80095FB8 8FA300A4 */  lw    $v1, 0xa4($sp)
/* B0D15C 80095FBC 448E2000 */  mtc1  $t6, $f4
/* B0D160 80095FC0 8FA8009C */  lw    $t0, 0x9c($sp)
/* B0D164 80095FC4 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0D168 80095FC8 46802020 */  cvt.s.w $f0, $f4
/* B0D16C 80095FCC 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0D170 80095FD0 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0D174 80095FD4 8FAC04BC */  lw    $t4, 0x4bc($sp)
/* B0D178 80095FD8 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0D17C 80095FDC 8FAF04C0 */  lw    $t7, 0x4c0($sp)
/* B0D180 80095FE0 46000187 */  neg.s $f6, $f0
/* B0D184 80095FE4 4608303C */  c.lt.s $f6, $f8
/* B0D188 80095FE8 00000000 */  nop   
/* B0D18C 80095FEC 4502002D */  bc1fl .L800960A4
/* B0D190 80095FF0 91840001 */   lbu   $a0, 1($t4)
/* B0D194 80095FF4 85F807B4 */  lh    $t8, 0x7b4($t7)
/* B0D198 80095FF8 46004081 */  sub.s $f2, $f8, $f0
/* B0D19C 80095FFC 01401025 */  move  $v0, $t2
/* B0D1A0 80096000 44985000 */  mtc1  $t8, $f10
/* B0D1A4 80096004 00000000 */  nop   
/* B0D1A8 80096008 46805420 */  cvt.s.w $f16, $f10
/* B0D1AC 8009600C 4610103C */  c.lt.s $f2, $f16
/* B0D1B0 80096010 00000000 */  nop   
/* B0D1B4 80096014 45020023 */  bc1fl .L800960A4
/* B0D1B8 80096018 91840001 */   lbu   $a0, 1($t4)
/* B0D1BC 8009601C AC700000 */  sw    $s0, ($v1)
/* B0D1C0 80096020 15400006 */  bnez  $t2, .L8009603C
/* B0D1C4 80096024 E4620004 */   swc1  $f2, 4($v1)
/* B0D1C8 80096028 00605825 */  move  $t3, $v1
/* B0D1CC 8009602C 00605025 */  move  $t2, $v1
/* B0D1D0 80096030 AC60000C */  sw    $zero, 0xc($v1)
/* B0D1D4 80096034 10000019 */  b     .L8009609C
/* B0D1D8 80096038 AC600008 */   sw    $zero, 8($v1)
.L8009603C:
/* B0D1DC 8009603C C4600004 */  lwc1  $f0, 4($v1)
/* B0D1E0 80096040 C4520004 */  lwc1  $f18, 4($v0)
.L80096044:
/* B0D1E4 80096044 4612003C */  c.lt.s $f0, $f18
/* B0D1E8 80096048 00000000 */  nop   
/* B0D1EC 8009604C 45010004 */  bc1t  .L80096060
/* B0D1F0 80096050 00000000 */   nop   
/* B0D1F4 80096054 8C42000C */  lw    $v0, 0xc($v0)
/* B0D1F8 80096058 5440FFFA */  bnezl $v0, .L80096044
/* B0D1FC 8009605C C4520004 */   lwc1  $f18, 4($v0)
.L80096060:
/* B0D200 80096060 54400007 */  bnezl $v0, .L80096080
/* B0D204 80096064 8C440008 */   lw    $a0, 8($v0)
/* B0D208 80096068 AC6B0008 */  sw    $t3, 8($v1)
/* B0D20C 8009606C AC60000C */  sw    $zero, 0xc($v1)
/* B0D210 80096070 AD63000C */  sw    $v1, 0xc($t3)
/* B0D214 80096074 10000009 */  b     .L8009609C
/* B0D218 80096078 00605825 */   move  $t3, $v1
/* B0D21C 8009607C 8C440008 */  lw    $a0, 8($v0)
.L80096080:
/* B0D220 80096080 14800003 */  bnez  $a0, .L80096090
/* B0D224 80096084 AC640008 */   sw    $a0, 8($v1)
/* B0D228 80096088 10000002 */  b     .L80096094
/* B0D22C 8009608C 00605025 */   move  $t2, $v1
.L80096090:
/* B0D230 80096090 AC83000C */  sw    $v1, 0xc($a0)
.L80096094:
/* B0D234 80096094 AC430008 */  sw    $v1, 8($v0)
/* B0D238 80096098 AC62000C */  sw    $v0, 0xc($v1)
.L8009609C:
/* B0D23C 8009609C 24630010 */  addiu $v1, $v1, 0x10
/* B0D240 800960A0 91840001 */  lbu   $a0, 1($t4)
.L800960A4:
/* B0D244 800960A4 25080001 */  addiu $t0, $t0, 1
/* B0D248 800960A8 26100010 */  addiu $s0, $s0, 0x10
/* B0D24C 800960AC 0104082A */  slt   $at, $t0, $a0
/* B0D250 800960B0 5420FFA7 */  bnezl $at, .L80095F50
/* B0D254 800960B4 860F0000 */   lh    $t7, ($s0)
.L800960B8:
/* B0D258 800960B8 3C198016 */  lui   $t9, %hi(D_8015FA90) # $t9, 0x8016
/* B0D25C 800960BC 8F39FA90 */  lw    $t9, %lo(D_8015FA90)($t9)
/* B0D260 800960C0 24080001 */  li    $t0, 1
/* B0D264 800960C4 1140004C */  beqz  $t2, .L800961F8
/* B0D268 800960C8 A7240D82 */   sh    $a0, 0xd82($t9)
/* B0D26C 800960CC 241F0002 */  li    $ra, 2
/* B0D270 800960D0 240B0001 */  li    $t3, 1
/* B0D274 800960D4 3C07DE00 */  lui   $a3, 0xde00
.L800960D8:
/* B0D278 800960D8 3C058016 */  lui   $a1, %hi(D_8015FA90) # $a1, 0x8016
/* B0D27C 800960DC 8CA5FA90 */  lw    $a1, %lo(D_8015FA90)($a1)
/* B0D280 800960E0 8D500000 */  lw    $s0, ($t2)
/* B0D284 800960E4 84A60D80 */  lh    $a2, 0xd80($a1)
/* B0D288 800960E8 10C0002B */  beqz  $a2, .L80096198
/* B0D28C 800960EC 00000000 */   nop   
/* B0D290 800960F0 91840001 */  lbu   $a0, 1($t4)
/* B0D294 800960F4 8FA20078 */  lw    $v0, 0x78($sp)
/* B0D298 800960F8 00001825 */  move  $v1, $zero
/* B0D29C 800960FC 18800006 */  blez  $a0, .L80096118
/* B0D2A0 80096100 00000000 */   nop   
.L80096104:
/* B0D2A4 80096104 12020004 */  beq   $s0, $v0, .L80096118
/* B0D2A8 80096108 24630001 */   addiu $v1, $v1, 1
/* B0D2AC 8009610C 0064082A */  slt   $at, $v1, $a0
/* B0D2B0 80096110 1420FFFC */  bnez  $at, .L80096104
/* B0D2B4 80096114 24420010 */   addiu $v0, $v0, 0x10
.L80096118:
/* B0D2B8 80096118 15660005 */  bne   $t3, $a2, .L80096130
/* B0D2BC 8009611C 00000000 */   nop   
/* B0D2C0 80096120 84AE0D86 */  lh    $t6, 0xd86($a1)
/* B0D2C4 80096124 01C8082A */  slt   $at, $t6, $t0
/* B0D2C8 80096128 10200006 */  beqz  $at, .L80096144
/* B0D2CC 8009612C 00000000 */   nop   
.L80096130:
/* B0D2D0 80096130 57E6002E */  bnel  $ra, $a2, .L800961EC
/* B0D2D4 80096134 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D2D8 80096138 84AF0D86 */  lh    $t7, 0xd86($a1)
/* B0D2DC 8009613C 550F002B */  bnel  $t0, $t7, .L800961EC
/* B0D2E0 80096140 8D4A000C */   lw    $t2, 0xc($t2)
.L80096144:
/* B0D2E4 80096144 12200009 */  beqz  $s1, .L8009616C
/* B0D2E8 80096148 00000000 */   nop   
/* B0D2EC 8009614C 8E030008 */  lw    $v1, 8($s0)
/* B0D2F0 80096150 10600006 */  beqz  $v1, .L8009616C
/* B0D2F4 80096154 00000000 */   nop   
/* B0D2F8 80096158 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0D2FC 8009615C 24580008 */  addiu $t8, $v0, 8
/* B0D300 80096160 AD3802C0 */  sw    $t8, 0x2c0($t1)
/* B0D304 80096164 AC430004 */  sw    $v1, 4($v0)
/* B0D308 80096168 AC470000 */  sw    $a3, ($v0)
.L8009616C:
/* B0D30C 8009616C 51A0001F */  beql  $t5, $zero, .L800961EC
/* B0D310 80096170 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D314 80096174 8E03000C */  lw    $v1, 0xc($s0)
/* B0D318 80096178 5060001C */  beql  $v1, $zero, .L800961EC
/* B0D31C 8009617C 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D320 80096180 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0D324 80096184 24590008 */  addiu $t9, $v0, 8
/* B0D328 80096188 AD3902D0 */  sw    $t9, 0x2d0($t1)
/* B0D32C 8009618C AC430004 */  sw    $v1, 4($v0)
/* B0D330 80096190 10000015 */  b     .L800961E8
/* B0D334 80096194 AC470000 */   sw    $a3, ($v0)
.L80096198:
/* B0D338 80096198 12200009 */  beqz  $s1, .L800961C0
/* B0D33C 8009619C 00000000 */   nop   
/* B0D340 800961A0 8E030008 */  lw    $v1, 8($s0)
/* B0D344 800961A4 10600006 */  beqz  $v1, .L800961C0
/* B0D348 800961A8 00000000 */   nop   
/* B0D34C 800961AC 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0D350 800961B0 244E0008 */  addiu $t6, $v0, 8
/* B0D354 800961B4 AD2E02C0 */  sw    $t6, 0x2c0($t1)
/* B0D358 800961B8 AC430004 */  sw    $v1, 4($v0)
/* B0D35C 800961BC AC470000 */  sw    $a3, ($v0)
.L800961C0:
/* B0D360 800961C0 51A0000A */  beql  $t5, $zero, .L800961EC
/* B0D364 800961C4 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D368 800961C8 8E03000C */  lw    $v1, 0xc($s0)
/* B0D36C 800961CC 50600007 */  beql  $v1, $zero, .L800961EC
/* B0D370 800961D0 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D374 800961D4 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0D378 800961D8 244F0008 */  addiu $t7, $v0, 8
/* B0D37C 800961DC AD2F02D0 */  sw    $t7, 0x2d0($t1)
/* B0D380 800961E0 AC430004 */  sw    $v1, 4($v0)
/* B0D384 800961E4 AC470000 */  sw    $a3, ($v0)
.L800961E8:
/* B0D388 800961E8 8D4A000C */  lw    $t2, 0xc($t2)
.L800961EC:
/* B0D38C 800961EC 25080001 */  addiu $t0, $t0, 1
/* B0D390 800961F0 1540FFB9 */  bnez  $t2, .L800960D8
/* B0D394 800961F4 00000000 */   nop   
.L800961F8:
/* B0D398 800961F8 3C198016 */  lui   $t9, %hi(D_8015FA90) # $t9, 0x8016
/* B0D39C 800961FC 8F39FA90 */  lw    $t9, %lo(D_8015FA90)($t9)
/* B0D3A0 80096200 2518FFFF */  addiu $t8, $t0, -1
/* B0D3A4 80096204 3C068014 */  lui   $a2, %hi(D_8013EF80) # $a2, 0x8014
/* B0D3A8 80096208 A7380D84 */  sh    $t8, 0xd84($t9)
/* B0D3AC 8009620C 8FAE04C0 */  lw    $t6, 0x4c0($sp)
/* B0D3B0 80096210 24C6EF80 */  addiu $a2, %lo(D_8013EF80) # addiu $a2, $a2, -0x1080
/* B0D3B4 80096214 27A4005C */  addiu $a0, $sp, 0x5c
/* B0D3B8 80096218 240701AE */  li    $a3, 430
/* B0D3BC 8009621C 0C031AD5 */  jal   func_800C6B54
/* B0D3C0 80096220 8DC50000 */   lw    $a1, ($t6)
/* B0D3C4 80096224 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0D3C8 80096228 8FB00014 */  lw    $s0, 0x14($sp)
/* B0D3CC 8009622C 8FB10018 */  lw    $s1, 0x18($sp)
/* B0D3D0 80096230 03E00008 */  jr    $ra
/* B0D3D4 80096234 27BD04C0 */   addiu $sp, $sp, 0x4c0

glabel func_80096238
/* B0D3D8 80096238 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0D3DC 8009623C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0D3E0 80096240 AFA40020 */  sw    $a0, 0x20($sp)
/* B0D3E4 80096244 8C8F0000 */  lw    $t7, ($a0)
/* B0D3E8 80096248 3C01FFD8 */  lui   $at, (0xFFD8FFE0 >> 16) # lui $at, 0xffd8
/* B0D3EC 8009624C 3421FFE0 */  ori   $at, (0xFFD8FFE0 & 0xFFFF) # ori $at, $at, 0xffe0
/* B0D3F0 80096250 15E10049 */  bne   $t7, $at, .L80096378
/* B0D3F4 80096254 3C048014 */   lui   $a0, %hi(D_8013EF8C) # $a0, 0x8014
/* B0D3F8 80096258 0C00084C */  jal   DebugMessage
/* B0D3FC 8009625C 2484EF8C */   addiu $a0, %lo(D_8013EF8C) # addiu $a0, $a0, -0x1074
/* B0D400 80096260 3C048014 */  lui   $a0, %hi(D_8013EFA4) # $a0, 0x8014
/* B0D404 80096264 2484EFA4 */  addiu $a0, %lo(D_8013EFA4) # addiu $a0, $a0, -0x105c
/* B0D408 80096268 0C00084C */  jal   DebugMessage
/* B0D40C 8009626C 8FA50020 */   lw    $a1, 0x20($sp)
/* B0D410 80096270 3C048014 */  lui   $a0, %hi(D_8013EFC0) # $a0, 0x8014
/* B0D414 80096274 3C058017 */  lui   $a1, %hi(D_801759C0) # $a1, 0x8017
/* B0D418 80096278 24A559C0 */  addiu $a1, %lo(D_801759C0) # addiu $a1, $a1, 0x59c0
/* B0D41C 8009627C 0C00084C */  jal   DebugMessage
/* B0D420 80096280 2484EFC0 */   addiu $a0, %lo(D_8013EFC0) # addiu $a0, $a0, -0x1040
/* B0D424 80096284 0C001A78 */  jal   osGetTime
/* B0D428 80096288 00000000 */   nop   
/* B0D42C 8009628C 3C058017 */  lui   $a1, %hi(D_801759C0) # $a1, 0x8017
/* B0D430 80096290 3C06801A */  lui   $a2, %hi(D_8019B1C0) # $a2, 0x801a
/* B0D434 80096294 3C070001 */  lui   $a3, (0x00018000 >> 16) # lui $a3, 1
/* B0D438 80096298 AFA20018 */  sw    $v0, 0x18($sp)
/* B0D43C 8009629C AFA3001C */  sw    $v1, 0x1c($sp)
/* B0D440 800962A0 34E78000 */  ori   $a3, (0x00018000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* B0D444 800962A4 24C6B1C0 */  addiu $a2, %lo(D_8019B1C0) # addiu $a2, $a2, -0x4e40
/* B0D448 800962A8 24A559C0 */  addiu $a1, %lo(D_801759C0) # addiu $a1, $a1, 0x59c0
/* B0D44C 800962AC 0C01B906 */  jal   func_8006E418
/* B0D450 800962B0 8FA40020 */   lw    $a0, 0x20($sp)
/* B0D454 800962B4 1440002E */  bnez  $v0, .L80096370
/* B0D458 800962B8 3C048014 */   lui   $a0, 0x8014
/* B0D45C 800962BC 0C001A78 */  jal   osGetTime
/* B0D460 800962C0 00000000 */   nop   
/* B0D464 800962C4 8FB80018 */  lw    $t8, 0x18($sp)
/* B0D468 800962C8 8FB9001C */  lw    $t9, 0x1c($sp)
/* B0D46C 800962CC 24060000 */  li    $a2, 0
/* B0D470 800962D0 00584023 */  subu  $t0, $v0, $t8
/* B0D474 800962D4 0079082B */  sltu  $at, $v1, $t9
/* B0D478 800962D8 01012023 */  subu  $a0, $t0, $at
/* B0D47C 800962DC 00792823 */  subu  $a1, $v1, $t9
/* B0D480 800962E0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B0D484 800962E4 AFA40018 */  sw    $a0, 0x18($sp)
/* B0D488 800962E8 0C000E1E */  jal   __ll_mul
/* B0D48C 800962EC 24070040 */   li    $a3, 64
/* B0D490 800962F0 00402025 */  move  $a0, $v0
/* B0D494 800962F4 00602825 */  move  $a1, $v1
/* B0D498 800962F8 24060000 */  li    $a2, 0
/* B0D49C 800962FC 0C000DDE */  jal   __ull_div
/* B0D4A0 80096300 24070BB8 */   li    $a3, 3000
/* B0D4A4 80096304 00402025 */  move  $a0, $v0
/* B0D4A8 80096308 0C0419CA */  jal   __ull_to_f
/* B0D4AC 8009630C 00602825 */   move  $a1, $v1
/* B0D4B0 80096310 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* B0D4B4 80096314 44812000 */  mtc1  $at, $f4
/* B0D4B8 80096318 3C048014 */  lui   $a0, %hi(D_8013EFEC) # $a0, 0x8014
/* B0D4BC 8009631C 2484EFEC */  addiu $a0, %lo(D_8013EFEC) # addiu $a0, $a0, -0x1014
/* B0D4C0 80096320 46040183 */  div.s $f6, $f0, $f4
/* B0D4C4 80096324 46003221 */  cvt.d.s $f8, $f6
/* B0D4C8 80096328 44074000 */  mfc1  $a3, $f8
/* B0D4CC 8009632C 44064800 */  mfc1  $a2, $f9
/* B0D4D0 80096330 0C00084C */  jal   DebugMessage
/* B0D4D4 80096334 00000000 */   nop   
/* B0D4D8 80096338 3C048014 */  lui   $a0, %hi(D_8013F010) # $a0, 0x8014
/* B0D4DC 8009633C 0C00084C */  jal   DebugMessage
/* B0D4E0 80096340 2484F010 */   addiu $a0, %lo(D_8013F010) # addiu $a0, $a0, -0xff0
/* B0D4E4 80096344 3C048014 */  lui   $a0, %hi(D_8013F040) # $a0, 0x8014
/* B0D4E8 80096348 0C00084C */  jal   DebugMessage
/* B0D4EC 8009634C 2484F040 */   addiu $a0, %lo(D_8013F040) # addiu $a0, $a0, -0xfc0
/* B0D4F0 80096350 3C048017 */  lui   $a0, %hi(D_801759C0) # $a0, 0x8017
/* B0D4F4 80096354 3C060002 */  lui   $a2, (0x00025800 >> 16) # lui $a2, 2
/* B0D4F8 80096358 34C65800 */  ori   $a2, (0x00025800 & 0xFFFF) # ori $a2, $a2, 0x5800
/* B0D4FC 8009635C 248459C0 */  addiu $a0, %lo(D_801759C0) # addiu $a0, $a0, 0x59c0
/* B0D500 80096360 0C001BC4 */  jal   bcopy
/* B0D504 80096364 8FA50020 */   lw    $a1, 0x20($sp)
/* B0D508 80096368 10000004 */  b     .L8009637C
/* B0D50C 8009636C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80096370:
/* B0D510 80096370 0C00084C */  jal   DebugMessage
/* B0D514 80096374 2484F080 */   addiu $a0, $a0, -0xf80
.L80096378:
/* B0D518 80096378 8FBF0014 */  lw    $ra, 0x14($sp)
.L8009637C:
/* B0D51C 8009637C 27BD0020 */  addiu $sp, $sp, 0x20
/* B0D520 80096380 00001025 */  move  $v0, $zero
/* B0D524 80096384 03E00008 */  jr    $ra
/* B0D528 80096388 00000000 */   nop   

glabel func_8009638C
/* B0D52C 8009638C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0D530 80096390 00057900 */  sll   $t7, $a1, 4
/* B0D534 80096394 000FC702 */  srl   $t8, $t7, 0x1c
/* B0D538 80096398 0018C880 */  sll   $t9, $t8, 2
/* B0D53C 8009639C 3C098016 */  lui   $t1, 0x8016
/* B0D540 800963A0 01394821 */  addu  $t1, $t1, $t9
/* B0D544 800963A4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0D548 800963A8 8D296FA8 */  lw    $t1, 0x6fa8($t1)
/* B0D54C 800963AC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0D550 800963B0 AFA40020 */  sw    $a0, 0x20($sp)
/* B0D554 800963B4 AFA60028 */  sw    $a2, 0x28($sp)
/* B0D558 800963B8 AFA7002C */  sw    $a3, 0x2c($sp)
/* B0D55C 800963BC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0D560 800963C0 8C820000 */  lw    $v0, ($a0)
/* B0D564 800963C4 00A15024 */  and   $t2, $a1, $at
/* B0D568 800963C8 3C018000 */  lui   $at, 0x8000
/* B0D56C 800963CC 012A2021 */  addu  $a0, $t1, $t2
/* B0D570 800963D0 00812021 */  addu  $a0, $a0, $at
/* B0D574 800963D4 AFA50024 */  sw    $a1, 0x24($sp)
/* B0D578 800963D8 0C02588E */  jal   func_80096238
/* B0D57C 800963DC AFA2001C */   sw    $v0, 0x1c($sp)
/* B0D580 800963E0 8FA2001C */  lw    $v0, 0x1c($sp)
/* B0D584 800963E4 3C0BDE01 */  lui   $t3, 0xde01
/* B0D588 800963E8 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B0D58C 800963EC 24430008 */  addiu $v1, $v0, 8
/* B0D590 800963F0 246C0028 */  addiu $t4, $v1, 0x28
/* B0D594 800963F4 AC4C0004 */  sw    $t4, 4($v0)
/* B0D598 800963F8 AC4B0000 */  sw    $t3, ($v0)
/* B0D59C 800963FC 93A80037 */  lbu   $t0, 0x37($sp)
/* B0D5A0 80096400 A4600000 */  sh    $zero, ($v1)
/* B0D5A4 80096404 97A6002E */  lhu   $a2, 0x2e($sp)
/* B0D5A8 80096408 44810000 */  mtc1  $at, $f0
/* B0D5AC 8009640C 3409FFF4 */  li    $t1, 65524
/* B0D5B0 80096410 00063080 */  sll   $a2, $a2, 2
/* B0D5B4 80096414 A4660002 */  sh    $a2, 2($v1)
/* B0D5B8 80096418 C7A40044 */  lwc1  $f4, 0x44($sp)
/* B0D5BC 8009641C A4600008 */  sh    $zero, 8($v1)
/* B0D5C0 80096420 00602825 */  move  $a1, $v1
/* B0D5C4 80096424 46002182 */  mul.s $f6, $f4, $f0
/* B0D5C8 80096428 24010002 */  li    $at, 2
/* B0D5CC 8009642C 24630028 */  addiu $v1, $v1, 0x28
/* B0D5D0 80096430 24620008 */  addiu $v0, $v1, 8
/* B0D5D4 80096434 3C0BFD10 */  lui   $t3, 0xfd10
/* B0D5D8 80096438 3C0DE800 */  lui   $t5, 0xe800
/* B0D5DC 8009643C 3C040700 */  lui   $a0, 0x700
/* B0D5E0 80096440 4600320D */  trunc.w.s $f8, $f6
/* B0D5E4 80096444 3C0FE600 */  lui   $t7, 0xe600
/* B0D5E8 80096448 440E4000 */  mfc1  $t6, $f8
/* B0D5EC 8009644C 00000000 */  nop   
/* B0D5F0 80096450 A46EFFDC */  sh    $t6, -0x24($v1)
/* B0D5F4 80096454 97A70032 */  lhu   $a3, 0x32($sp)
/* B0D5F8 80096458 3C0EE700 */  lui   $t6, 0xe700
/* B0D5FC 8009645C 00073880 */  sll   $a3, $a3, 2
/* B0D600 80096460 A467FFE2 */  sh    $a3, -0x1e($v1)
/* B0D604 80096464 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B0D608 80096468 46005402 */  mul.s $f16, $f10, $f0
/* B0D60C 8009646C 4600848D */  trunc.w.s $f18, $f16
/* B0D610 80096470 44189000 */  mfc1  $t8, $f18
/* B0D614 80096474 00000000 */  nop   
/* B0D618 80096478 A478FFE4 */  sh    $t8, -0x1c($v1)
/* B0D61C 8009647C 8FB90024 */  lw    $t9, 0x24($sp)
/* B0D620 80096480 A469FFEC */  sh    $t1, -0x14($v1)
/* B0D624 80096484 A068FFEE */  sb    $t0, -0x12($v1)
/* B0D628 80096488 AC79FFE8 */  sw    $t9, -0x18($v1)
/* B0D62C 8009648C 93AA003B */  lbu   $t2, 0x3b($sp)
/* B0D630 80096490 A460FFF0 */  sh    $zero, -0x10($v1)
/* B0D634 80096494 A460FFF2 */  sh    $zero, -0xe($v1)
/* B0D638 80096498 15010022 */  bne   $t0, $at, .L80096524
/* B0D63C 8009649C A06AFFEF */   sb    $t2, -0x11($v1)
/* B0D640 800964A0 AC6B0000 */  sw    $t3, ($v1)
/* B0D644 800964A4 8FAC0028 */  lw    $t4, 0x28($sp)
/* B0D648 800964A8 3C0EF500 */  lui   $t6, (0xF5000100 >> 16) # lui $t6, 0xf500
/* B0D64C 800964AC 35CE0100 */  ori   $t6, (0xF5000100 & 0xFFFF) # ori $t6, $t6, 0x100
/* B0D650 800964B0 AC6C0004 */  sw    $t4, 4($v1)
/* B0D654 800964B4 00401825 */  move  $v1, $v0
/* B0D658 800964B8 AC6D0000 */  sw    $t5, ($v1)
/* B0D65C 800964BC AC600004 */  sw    $zero, 4($v1)
/* B0D660 800964C0 24420008 */  addiu $v0, $v0, 8
/* B0D664 800964C4 00401825 */  move  $v1, $v0
/* B0D668 800964C8 AC6E0000 */  sw    $t6, ($v1)
/* B0D66C 800964CC AC640004 */  sw    $a0, 4($v1)
/* B0D670 800964D0 24420008 */  addiu $v0, $v0, 8
/* B0D674 800964D4 00401825 */  move  $v1, $v0
/* B0D678 800964D8 AC6F0000 */  sw    $t7, ($v1)
/* B0D67C 800964DC AC600004 */  sw    $zero, 4($v1)
/* B0D680 800964E0 24420008 */  addiu $v0, $v0, 8
/* B0D684 800964E4 00401825 */  move  $v1, $v0
/* B0D688 800964E8 3C18F000 */  lui   $t8, 0xf000
/* B0D68C 800964EC AC780000 */  sw    $t8, ($v1)
/* B0D690 800964F0 97B90042 */  lhu   $t9, 0x42($sp)
/* B0D694 800964F4 24420008 */  addiu $v0, $v0, 8
/* B0D698 800964F8 3C0DE700 */  lui   $t5, 0xe700
/* B0D69C 800964FC 2729FFFF */  addiu $t1, $t9, -1
/* B0D6A0 80096500 312A03FF */  andi  $t2, $t1, 0x3ff
/* B0D6A4 80096504 000A5B80 */  sll   $t3, $t2, 0xe
/* B0D6A8 80096508 01646025 */  or    $t4, $t3, $a0
/* B0D6AC 8009650C AC6C0004 */  sw    $t4, 4($v1)
/* B0D6B0 80096510 00401825 */  move  $v1, $v0
/* B0D6B4 80096514 AC6D0000 */  sw    $t5, ($v1)
/* B0D6B8 80096518 AC600004 */  sw    $zero, 4($v1)
/* B0D6BC 8009651C 10000005 */  b     .L80096534
/* B0D6C0 80096520 24420008 */   addiu $v0, $v0, 8
.L80096524:
/* B0D6C4 80096524 24A30028 */  addiu $v1, $a1, 0x28
/* B0D6C8 80096528 24620008 */  addiu $v0, $v1, 8
/* B0D6CC 8009652C AC6E0000 */  sw    $t6, ($v1)
/* B0D6D0 80096530 AC600004 */  sw    $zero, 4($v1)
.L80096534:
/* B0D6D4 80096534 15000020 */  bnez  $t0, .L800965B8
/* B0D6D8 80096538 3C0F8016 */   lui   $t7, %hi(D_8015FA90) # $t7, 0x8016
/* B0D6DC 8009653C 8DEFFA90 */  lw    $t7, %lo(D_8015FA90)($t7)
/* B0D6E0 80096540 00A02025 */  move  $a0, $a1
/* B0D6E4 80096544 85F80108 */  lh    $t8, 0x108($t7)
/* B0D6E8 80096548 5700001C */  bnezl $t8, .L800965BC
/* B0D6EC 8009654C 94AE0008 */   lhu   $t6, 8($a1)
/* B0D6F0 80096550 A4A60006 */  sh    $a2, 6($a1)
/* B0D6F4 80096554 A4A7000E */  sh    $a3, 0xe($a1)
/* B0D6F8 80096558 AFA50018 */  sw    $a1, 0x18($sp)
/* B0D6FC 8009655C 0C0412C0 */  jal   func_80104B00
/* B0D700 80096560 AFA2001C */   sw    $v0, 0x1c($sp)
/* B0D704 80096564 97B9003E */  lhu   $t9, 0x3e($sp)
/* B0D708 80096568 3C010020 */  lui   $at, 0x20
/* B0D70C 8009656C 8FA2001C */  lw    $v0, 0x1c($sp)
/* B0D710 80096570 03214825 */  or    $t1, $t9, $at
/* B0D714 80096574 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0D718 80096578 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0D71C 8009657C 01215024 */  and   $t2, $t1, $at
/* B0D720 80096580 00401825 */  move  $v1, $v0
/* B0D724 80096584 8FA50018 */  lw    $a1, 0x18($sp)
/* B0D728 80096588 3C01EF00 */  lui   $at, 0xef00
/* B0D72C 8009658C 01415825 */  or    $t3, $t2, $at
/* B0D730 80096590 240C0001 */  li    $t4, 1
/* B0D734 80096594 AC6C0004 */  sw    $t4, 4($v1)
/* B0D738 80096598 AC6B0000 */  sw    $t3, ($v1)
/* B0D73C 8009659C 24420008 */  addiu $v0, $v0, 8
/* B0D740 800965A0 00401825 */  move  $v1, $v0
/* B0D744 800965A4 3C0D0A00 */  lui   $t5, 0xa00
/* B0D748 800965A8 AC6D0000 */  sw    $t5, ($v1)
/* B0D74C 800965AC 24420008 */  addiu $v0, $v0, 8
/* B0D750 800965B0 10000028 */  b     .L80096654
/* B0D754 800965B4 AC650004 */   sw    $a1, 4($v1)
.L800965B8:
/* B0D758 800965B8 94AE0008 */  lhu   $t6, 8($a1)
.L800965BC:
/* B0D75C 800965BC 24030400 */  li    $v1, 1024
/* B0D760 800965C0 A4A60006 */  sh    $a2, 6($a1)
/* B0D764 800965C4 A4A7000E */  sh    $a3, 0xe($a1)
/* B0D768 800965C8 A4A3001C */  sh    $v1, 0x1c($a1)
/* B0D76C 800965CC A4A3001E */  sh    $v1, 0x1e($a1)
/* B0D770 800965D0 ACAE0020 */  sw    $t6, 0x20($a1)
/* B0D774 800965D4 97B9003E */  lhu   $t9, 0x3e($sp)
/* B0D778 800965D8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0D77C 800965DC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0D780 800965E0 37290CF0 */  ori   $t1, $t9, 0xcf0
/* B0D784 800965E4 01215024 */  and   $t2, $t1, $at
/* B0D788 800965E8 00401825 */  move  $v1, $v0
/* B0D78C 800965EC 3C01EF00 */  lui   $at, 0xef00
/* B0D790 800965F0 3C0C00A0 */  lui   $t4, (0x00A03009 >> 16) # lui $t4, 0xa0
/* B0D794 800965F4 358C3009 */  ori   $t4, (0x00A03009 & 0xFFFF) # ori $t4, $t4, 0x3009
/* B0D798 800965F8 01415825 */  or    $t3, $t2, $at
/* B0D79C 800965FC AC6B0000 */  sw    $t3, ($v1)
/* B0D7A0 80096600 AC6C0004 */  sw    $t4, 4($v1)
/* B0D7A4 80096604 24420008 */  addiu $v0, $v0, 8
/* B0D7A8 80096608 00401825 */  move  $v1, $v0
/* B0D7AC 8009660C 3C0EFFFC */  lui   $t6, (0xFFFCFC7E >> 16) # lui $t6, 0xfffc
/* B0D7B0 80096610 3C0DFCFF */  lui   $t5, (0xFCFFFFFF >> 16) # lui $t5, 0xfcff
/* B0D7B4 80096614 35ADFFFF */  ori   $t5, (0xFCFFFFFF & 0xFFFF) # ori $t5, $t5, 0xffff
/* B0D7B8 80096618 35CEFC7E */  ori   $t6, (0xFFFCFC7E & 0xFFFF) # ori $t6, $t6, 0xfc7e
/* B0D7BC 8009661C AC6E0004 */  sw    $t6, 4($v1)
/* B0D7C0 80096620 AC6D0000 */  sw    $t5, ($v1)
/* B0D7C4 80096624 24420008 */  addiu $v0, $v0, 8
/* B0D7C8 80096628 00401825 */  move  $v1, $v0
/* B0D7CC 8009662C 3C0F0B00 */  lui   $t7, 0xb00
/* B0D7D0 80096630 2418000C */  li    $t8, 12
/* B0D7D4 80096634 AC780004 */  sw    $t8, 4($v1)
/* B0D7D8 80096638 AC6F0000 */  sw    $t7, ($v1)
/* B0D7DC 8009663C 24420008 */  addiu $v0, $v0, 8
/* B0D7E0 80096640 00401825 */  move  $v1, $v0
/* B0D7E4 80096644 3C190900 */  lui   $t9, 0x900
/* B0D7E8 80096648 AC790000 */  sw    $t9, ($v1)
/* B0D7EC 8009664C AC650004 */  sw    $a1, 4($v1)
/* B0D7F0 80096650 24420008 */  addiu $v0, $v0, 8
.L80096654:
/* B0D7F4 80096654 00401825 */  move  $v1, $v0
/* B0D7F8 80096658 3C09E700 */  lui   $t1, 0xe700
/* B0D7FC 8009665C AC690000 */  sw    $t1, ($v1)
/* B0D800 80096660 AC600004 */  sw    $zero, 4($v1)
/* B0D804 80096664 8FAA0020 */  lw    $t2, 0x20($sp)
/* B0D808 80096668 24420008 */  addiu $v0, $v0, 8
/* B0D80C 8009666C AD420000 */  sw    $v0, ($t2)
/* B0D810 80096670 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0D814 80096674 27BD0020 */  addiu $sp, $sp, 0x20
/* B0D818 80096678 03E00008 */  jr    $ra
/* B0D81C 8009667C 00000000 */   nop   

glabel func_80096680
/* B0D820 80096680 27BDFF50 */  addiu $sp, $sp, -0xb0
/* B0D824 80096684 AFBF003C */  sw    $ra, 0x3c($sp)
/* B0D828 80096688 AFB00038 */  sw    $s0, 0x38($sp)
/* B0D82C 8009668C AFA400B0 */  sw    $a0, 0xb0($sp)
/* B0D830 80096690 AFA500B4 */  sw    $a1, 0xb4($sp)
/* B0D834 80096694 AFA600B8 */  sw    $a2, 0xb8($sp)
/* B0D838 80096698 8C850000 */  lw    $a1, ($a0)
/* B0D83C 8009669C 3C068014 */  lui   $a2, %hi(D_8013F090) # $a2, 0x8014
/* B0D840 800966A0 24C6F090 */  addiu $a2, %lo(D_8013F090) # addiu $a2, $a2, -0xf70
/* B0D844 800966A4 27A4007C */  addiu $a0, $sp, 0x7c
/* B0D848 800966A8 24070274 */  li    $a3, 628
/* B0D84C 800966AC 0C031AB1 */  jal   func_800C6AC4
/* B0D850 800966B0 00A08025 */   move  $s0, $a1
/* B0D854 800966B4 8FAC00B4 */  lw    $t4, 0xb4($sp)
/* B0D858 800966B8 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0D85C 800966BC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0D860 800966C0 8D890008 */  lw    $t1, 8($t4)
/* B0D864 800966C4 856F07A0 */  lh    $t7, 0x7a0($t3)
/* B0D868 800966C8 8FAA00B8 */  lw    $t2, 0xb8($sp)
/* B0D86C 800966CC 8D220004 */  lw    $v0, 4($t1)
/* B0D870 800966D0 000FC080 */  sll   $t8, $t7, 2
/* B0D874 800966D4 0178C821 */  addu  $t9, $t3, $t8
/* B0D878 800966D8 00026900 */  sll   $t5, $v0, 4
/* B0D87C 800966DC 000D7702 */  srl   $t6, $t5, 0x1c
/* B0D880 800966E0 8F260790 */  lw    $a2, 0x790($t9)
/* B0D884 800966E4 000E7880 */  sll   $t7, $t6, 2
/* B0D888 800966E8 3C188016 */  lui   $t8, 0x8016
/* B0D88C 800966EC 030FC021 */  addu  $t8, $t8, $t7
/* B0D890 800966F0 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B0D894 800966F4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0D898 800966F8 84C40142 */  lh    $a0, 0x142($a2)
/* B0D89C 800966FC 0041C824 */  and   $t9, $v0, $at
/* B0D8A0 80096700 3C018000 */  lui   $at, 0x8000
/* B0D8A4 80096704 31430001 */  andi  $v1, $t2, 1
/* B0D8A8 80096708 03196021 */  addu  $t4, $t8, $t9
/* B0D8AC 8009670C 01816821 */  addu  $t5, $t4, $at
/* B0D8B0 80096710 0003182B */  sltu  $v1, $zero, $v1
/* B0D8B4 80096714 38840019 */  xori  $a0, $a0, 0x19
/* B0D8B8 80096718 2C840001 */  sltiu $a0, $a0, 1
/* B0D8BC 8009671C AFAD00A0 */  sw    $t5, 0xa0($sp)
/* B0D8C0 80096720 1060000E */  beqz  $v1, .L8009675C
/* B0D8C4 80096724 00604025 */   move  $t0, $v1
/* B0D8C8 80096728 0004402B */  sltu  $t0, $zero, $a0
/* B0D8CC 8009672C 1100000B */  beqz  $t0, .L8009675C
/* B0D8D0 80096730 00000000 */   nop   
/* B0D8D4 80096734 8D280008 */  lw    $t0, 8($t1)
/* B0D8D8 80096738 3C078016 */  lui   $a3, %hi(D_8015FA90) # $a3, 0x8016
/* B0D8DC 8009673C 24E7FA90 */  addiu $a3, %lo(D_8015FA90) # addiu $a3, $a3, -0x570
/* B0D8E0 80096740 0008402B */  sltu  $t0, $zero, $t0
/* B0D8E4 80096744 11000005 */  beqz  $t0, .L8009675C
/* B0D8E8 80096748 00000000 */   nop   
/* B0D8EC 8009674C 8CEE0000 */  lw    $t6, ($a3)
/* B0D8F0 80096750 85C80106 */  lh    $t0, 0x106($t6)
/* B0D8F4 80096754 31080001 */  andi  $t0, $t0, 1
/* B0D8F8 80096758 2D080001 */  sltiu $t0, $t0, 1
.L8009675C:
/* B0D8FC 8009675C 3C078016 */  lui   $a3, %hi(D_8015FA90) # $a3, 0x8016
/* B0D900 80096760 01002825 */  move  $a1, $t0
/* B0D904 80096764 24E7FA90 */  addiu $a3, %lo(D_8015FA90) # addiu $a3, $a3, -0x570
/* B0D908 80096768 1060000A */  beqz  $v1, .L80096794
/* B0D90C 8009676C 00604025 */   move  $t0, $v1
/* B0D910 80096770 8FAF00A0 */  lw    $t7, 0xa0($sp)
/* B0D914 80096774 8DE80000 */  lw    $t0, ($t7)
/* B0D918 80096778 0008402B */  sltu  $t0, $zero, $t0
/* B0D91C 8009677C 51000006 */  beql  $t0, $zero, .L80096798
/* B0D920 80096780 01002025 */   move  $a0, $t0
/* B0D924 80096784 8CF80000 */  lw    $t8, ($a3)
/* B0D928 80096788 87080106 */  lh    $t0, 0x106($t8)
/* B0D92C 8009678C 31080002 */  andi  $t0, $t0, 2
/* B0D930 80096790 2D080001 */  sltiu $t0, $t0, 1
.L80096794:
/* B0D934 80096794 01002025 */  move  $a0, $t0
.L80096798:
/* B0D938 80096798 31420002 */  andi  $v0, $t2, 2
/* B0D93C 8009679C 0002402B */  sltu  $t0, $zero, $v0
/* B0D940 800967A0 11000009 */  beqz  $t0, .L800967C8
/* B0D944 800967A4 8FB900A0 */   lw    $t9, 0xa0($sp)
/* B0D948 800967A8 8F280004 */  lw    $t0, 4($t9)
/* B0D94C 800967AC 0008402B */  sltu  $t0, $zero, $t0
/* B0D950 800967B0 11000005 */  beqz  $t0, .L800967C8
/* B0D954 800967B4 00000000 */   nop   
/* B0D958 800967B8 8CEC0000 */  lw    $t4, ($a3)
/* B0D95C 800967BC 85880106 */  lh    $t0, 0x106($t4)
/* B0D960 800967C0 31080004 */  andi  $t0, $t0, 4
/* B0D964 800967C4 2D080001 */  sltiu $t0, $t0, 1
.L800967C8:
/* B0D968 800967C8 54800004 */  bnezl $a0, .L800967DC
/* B0D96C 800967CC 8E0302C0 */   lw    $v1, 0x2c0($s0)
/* B0D970 800967D0 10A0007C */  beqz  $a1, .L800969C4
/* B0D974 800967D4 00000000 */   nop   
/* B0D978 800967D8 8E0302C0 */  lw    $v1, 0x2c0($s0)
.L800967DC:
/* B0D97C 800967DC 3C0EDB06 */  lui   $t6, (0xDB06000C >> 16) # lui $t6, 0xdb06
/* B0D980 800967E0 35CE000C */  ori   $t6, (0xDB06000C & 0xFFFF) # ori $t6, $t6, 0xc
/* B0D984 800967E4 246D0008 */  addiu $t5, $v1, 8
/* B0D988 800967E8 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B0D98C 800967EC AC6E0000 */  sw    $t6, ($v1)
/* B0D990 800967F0 8FAF00B4 */  lw    $t7, 0xb4($sp)
/* B0D994 800967F4 8DF8000C */  lw    $t8, 0xc($t7)
/* B0D998 800967F8 1080001D */  beqz  $a0, .L80096870
/* B0D99C 800967FC AC780004 */   sw    $t8, 4($v1)
/* B0D9A0 80096800 8D640000 */  lw    $a0, ($t3)
/* B0D9A4 80096804 AFA900A4 */  sw    $t1, 0xa4($sp)
/* B0D9A8 80096808 AFA8004C */  sw    $t0, 0x4c($sp)
/* B0D9AC 8009680C AFA600AC */  sw    $a2, 0xac($sp)
/* B0D9B0 80096810 0C024F46 */  jal   func_80093D18
/* B0D9B4 80096814 AFA50098 */   sw    $a1, 0x98($sp)
/* B0D9B8 80096818 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0D9BC 8009681C 8FA50098 */  lw    $a1, 0x98($sp)
/* B0D9C0 80096820 8FA600AC */  lw    $a2, 0xac($sp)
/* B0D9C4 80096824 8FA8004C */  lw    $t0, 0x4c($sp)
/* B0D9C8 80096828 8FA900A4 */  lw    $t1, 0xa4($sp)
/* B0D9CC 8009682C 24790008 */  addiu $t9, $v1, 8
/* B0D9D0 80096830 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0D9D4 80096834 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* B0D9D8 80096838 3C0D8013 */  lui   $t5, %hi(D_8012DB20) # $t5, 0x8013
/* B0D9DC 8009683C 25ADDB20 */  addiu $t5, %lo(D_8012DB20) # addiu $t5, $t5, -0x24e0
/* B0D9E0 80096840 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* B0D9E4 80096844 AC6C0000 */  sw    $t4, ($v1)
/* B0D9E8 80096848 AC6D0004 */  sw    $t5, 4($v1)
/* B0D9EC 8009684C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0D9F0 80096850 3C0FDE00 */  lui   $t7, 0xde00
/* B0D9F4 80096854 246E0008 */  addiu $t6, $v1, 8
/* B0D9F8 80096858 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B0D9FC 8009685C AC6F0000 */  sw    $t7, ($v1)
/* B0DA00 80096860 8FB800A0 */  lw    $t8, 0xa0($sp)
/* B0DA04 80096864 8F190000 */  lw    $t9, ($t8)
/* B0DA08 80096868 AC790004 */  sw    $t9, 4($v1)
/* B0DA0C 8009686C 8FAB00B0 */  lw    $t3, 0xb0($sp)
.L80096870:
/* B0DA10 80096870 10A00054 */  beqz  $a1, .L800969C4
/* B0DA14 80096874 3C0DE100 */   lui   $t5, 0xe100
/* B0DA18 80096878 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DA1C 8009687C 3C0E0015 */  lui   $t6, %hi(D_001579A0) # $t6, 0x15
/* B0DA20 80096880 25CE79A0 */  addiu $t6, %lo(D_001579A0) # addiu $t6, $t6, 0x79a0
/* B0DA24 80096884 246C0008 */  addiu $t4, $v1, 8
/* B0DA28 80096888 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B0DA2C 8009688C AC6E0004 */  sw    $t6, 4($v1)
/* B0DA30 80096890 AC6D0000 */  sw    $t5, ($v1)
/* B0DA34 80096894 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DA38 80096898 3C18DD00 */  lui   $t8, (0xDD0007FF >> 16) # lui $t8, 0xdd00
/* B0DA3C 8009689C 3C190011 */  lui   $t9, %hi(D_00113070) # $t9, 0x11
/* B0DA40 800968A0 246F0008 */  addiu $t7, $v1, 8
/* B0DA44 800968A4 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B0DA48 800968A8 27393070 */  addiu $t9, %lo(D_00113070) # addiu $t9, $t9, 0x3070
/* B0DA4C 800968AC 371807FF */  ori   $t8, (0xDD0007FF & 0xFFFF) # ori $t8, $t8, 0x7ff
/* B0DA50 800968B0 AC780000 */  sw    $t8, ($v1)
/* B0DA54 800968B4 AC790004 */  sw    $t9, 4($v1)
/* B0DA58 800968B8 8E0C02C0 */  lw    $t4, 0x2c0($s0)
/* B0DA5C 800968BC AFA900A4 */  sw    $t1, 0xa4($sp)
/* B0DA60 800968C0 AFA8004C */  sw    $t0, 0x4c($sp)
/* B0DA64 800968C4 27A40060 */  addiu $a0, $sp, 0x60
/* B0DA68 800968C8 00C02825 */  move  $a1, $a2
/* B0DA6C 800968CC 0C016BED */  jal   func_8005AFB4
/* B0DA70 800968D0 AFAC00A8 */   sw    $t4, 0xa8($sp)
/* B0DA74 800968D4 C7A40060 */  lwc1  $f4, 0x60($sp)
/* B0DA78 800968D8 C7A60068 */  lwc1  $f6, 0x68($sp)
/* B0DA7C 800968DC 3C018014 */  lui   $at, 0x8014
/* B0DA80 800968E0 C42AF29C */  lwc1  $f10, -0xd64($at)
/* B0DA84 800968E4 C7A80064 */  lwc1  $f8, 0x64($sp)
/* B0DA88 800968E8 46062000 */  add.s $f0, $f4, $f6
/* B0DA8C 800968EC 8FA900A4 */  lw    $t1, 0xa4($sp)
/* B0DA90 800968F0 3C018014 */  lui   $at, 0x8014
/* B0DA94 800968F4 460A4402 */  mul.s $f16, $f8, $f10
/* B0DA98 800968F8 C432F2A0 */  lwc1  $f18, -0xd60($at)
/* B0DA9C 800968FC 952D0016 */  lhu   $t5, 0x16($t1)
/* B0DAA0 80096900 8D250008 */  lw    $a1, 8($t1)
/* B0DAA4 80096904 46120102 */  mul.s $f4, $f0, $f18
/* B0DAA8 80096908 8D260010 */  lw    $a2, 0x10($t1)
/* B0DAAC 8009690C 95270014 */  lhu   $a3, 0x14($t1)
/* B0DAB0 80096910 AFAD0010 */  sw    $t5, 0x10($sp)
/* B0DAB4 80096914 912E0018 */  lbu   $t6, 0x18($t1)
/* B0DAB8 80096918 3C018014 */  lui   $at, 0x8014
/* B0DABC 8009691C C42AF2A4 */  lwc1  $f10, -0xd5c($at)
/* B0DAC0 80096920 46102180 */  add.s $f6, $f4, $f16
/* B0DAC4 80096924 3C018014 */  lui   $at, 0x8014
/* B0DAC8 80096928 AFAE0014 */  sw    $t6, 0x14($sp)
/* B0DACC 8009692C 460A4482 */  mul.s $f18, $f8, $f10
/* B0DAD0 80096930 C424F2A8 */  lwc1  $f4, -0xd58($at)
/* B0DAD4 80096934 912F0019 */  lbu   $t7, 0x19($t1)
/* B0DAD8 80096938 27A400A8 */  addiu $a0, $sp, 0xa8
/* B0DADC 8009693C 46040402 */  mul.s $f16, $f0, $f4
/* B0DAE0 80096940 AFAF0018 */  sw    $t7, 0x18($sp)
/* B0DAE4 80096944 9538001A */  lhu   $t8, 0x1a($t1)
/* B0DAE8 80096948 AFB8001C */  sw    $t8, 0x1c($sp)
/* B0DAEC 8009694C 9539001C */  lhu   $t9, 0x1c($t1)
/* B0DAF0 80096950 E7A60024 */  swc1  $f6, 0x24($sp)
/* B0DAF4 80096954 46109180 */  add.s $f6, $f18, $f16
/* B0DAF8 80096958 AFB90020 */  sw    $t9, 0x20($sp)
/* B0DAFC 8009695C 0C0258E3 */  jal   func_8009638C
/* B0DB00 80096960 E7A60028 */   swc1  $f6, 0x28($sp)
/* B0DB04 80096964 8FAC00A8 */  lw    $t4, 0xa8($sp)
/* B0DB08 80096968 8FA8004C */  lw    $t0, 0x4c($sp)
/* B0DB0C 8009696C 3C0EE100 */  lui   $t6, 0xe100
/* B0DB10 80096970 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B0DB14 80096974 258D0008 */  addiu $t5, $t4, 8
/* B0DB18 80096978 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B0DB1C 8009697C AD8E0000 */  sw    $t6, ($t4)
/* B0DB20 80096980 AFAC005C */  sw    $t4, 0x5c($sp)
/* B0DB24 80096984 0C034B88 */  jal   func_800D2E20
/* B0DB28 80096988 AFA8004C */   sw    $t0, 0x4c($sp)
/* B0DB2C 8009698C 8FA4005C */  lw    $a0, 0x5c($sp)
/* B0DB30 80096990 3C18DD00 */  lui   $t8, (0xDD0007FF >> 16) # lui $t8, 0xdd00
/* B0DB34 80096994 371807FF */  ori   $t8, (0xDD0007FF & 0xFFFF) # ori $t8, $t8, 0x7ff
/* B0DB38 80096998 AC820004 */  sw    $v0, 4($a0)
/* B0DB3C 8009699C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DB40 800969A0 246F0008 */  addiu $t7, $v1, 8
/* B0DB44 800969A4 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B0DB48 800969A8 AC780000 */  sw    $t8, ($v1)
/* B0DB4C 800969AC 0C034B85 */  jal   func_800D2E14
/* B0DB50 800969B0 AFA3005C */   sw    $v1, 0x5c($sp)
/* B0DB54 800969B4 8FA4005C */  lw    $a0, 0x5c($sp)
/* B0DB58 800969B8 8FA8004C */  lw    $t0, 0x4c($sp)
/* B0DB5C 800969BC AC820004 */  sw    $v0, 4($a0)
/* B0DB60 800969C0 8FAB00B0 */  lw    $t3, 0xb0($sp)
.L800969C4:
/* B0DB64 800969C4 11000020 */  beqz  $t0, .L80096A48
/* B0DB68 800969C8 00000000 */   nop   
/* B0DB6C 800969CC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0DB70 800969D0 3C0CDB06 */  lui   $t4, (0xDB06000C >> 16) # lui $t4, 0xdb06
/* B0DB74 800969D4 358C000C */  ori   $t4, (0xDB06000C & 0xFFFF) # ori $t4, $t4, 0xc
/* B0DB78 800969D8 24590008 */  addiu $t9, $v0, 8
/* B0DB7C 800969DC AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B0DB80 800969E0 AC4C0000 */  sw    $t4, ($v0)
/* B0DB84 800969E4 8FAD00B4 */  lw    $t5, 0xb4($sp)
/* B0DB88 800969E8 3C058013 */  lui   $a1, %hi(D_8012DB20) # $a1, 0x8013
/* B0DB8C 800969EC 24A5DB20 */  addiu $a1, %lo(D_8012DB20) # addiu $a1, $a1, -0x24e0
/* B0DB90 800969F0 8DAE000C */  lw    $t6, 0xc($t5)
/* B0DB94 800969F4 AC4E0004 */  sw    $t6, 4($v0)
/* B0DB98 800969F8 8D640000 */  lw    $a0, ($t3)
/* B0DB9C 800969FC 0C024F61 */  jal   func_80093D84
/* B0DBA0 80096A00 AFA50048 */   sw    $a1, 0x48($sp)
/* B0DBA4 80096A04 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0DBA8 80096A08 8FA50048 */  lw    $a1, 0x48($sp)
/* B0DBAC 80096A0C 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B0DBB0 80096A10 244F0008 */  addiu $t7, $v0, 8
/* B0DBB4 80096A14 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* B0DBB8 80096A18 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B0DBBC 80096A1C AC580000 */  sw    $t8, ($v0)
/* B0DBC0 80096A20 AC450004 */  sw    $a1, 4($v0)
/* B0DBC4 80096A24 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0DBC8 80096A28 3C0CDE00 */  lui   $t4, 0xde00
/* B0DBCC 80096A2C 24590008 */  addiu $t9, $v0, 8
/* B0DBD0 80096A30 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B0DBD4 80096A34 AC4C0000 */  sw    $t4, ($v0)
/* B0DBD8 80096A38 8FAD00A0 */  lw    $t5, 0xa0($sp)
/* B0DBDC 80096A3C 8DAE0004 */  lw    $t6, 4($t5)
/* B0DBE0 80096A40 AC4E0004 */  sw    $t6, 4($v0)
/* B0DBE4 80096A44 8FAB00B0 */  lw    $t3, 0xb0($sp)
.L80096A48:
/* B0DBE8 80096A48 3C068014 */  lui   $a2, %hi(D_8013F09C) # $a2, 0x8014
/* B0DBEC 80096A4C 24C6F09C */  addiu $a2, %lo(D_8013F09C) # addiu $a2, $a2, -0xf64
/* B0DBF0 80096A50 27A4007C */  addiu $a0, $sp, 0x7c
/* B0DBF4 80096A54 8D650000 */  lw    $a1, ($t3)
/* B0DBF8 80096A58 0C031AD5 */  jal   func_800C6B54
/* B0DBFC 80096A5C 240702B3 */   li    $a3, 691
/* B0DC00 80096A60 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0DC04 80096A64 8FB00038 */  lw    $s0, 0x38($sp)
/* B0DC08 80096A68 27BD00B0 */  addiu $sp, $sp, 0xb0
/* B0DC0C 80096A6C 03E00008 */  jr    $ra
/* B0DC10 80096A70 00000000 */   nop   

glabel func_80096A74
/* B0DC14 80096A74 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0DC18 80096A78 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0DC1C 80096A7C AFA40020 */  sw    $a0, 0x20($sp)
/* B0DC20 80096A80 84AE07A0 */  lh    $t6, 0x7a0($a1)
/* B0DC24 80096A84 00A03825 */  move  $a3, $a1
/* B0DC28 80096A88 24E407C0 */  addiu $a0, $a3, 0x7c0
/* B0DC2C 80096A8C 000E7880 */  sll   $t7, $t6, 2
/* B0DC30 80096A90 00AFC021 */  addu  $t8, $a1, $t7
/* B0DC34 80096A94 8F020790 */  lw    $v0, 0x790($t8)
/* B0DC38 80096A98 24060032 */  li    $a2, 50
/* B0DC3C 80096A9C 84450148 */  lh    $a1, 0x148($v0)
/* B0DC40 80096AA0 AFA70024 */  sw    $a3, 0x24($sp)
/* B0DC44 80096AA4 0C010704 */  jal   func_80041C10
/* B0DC48 80096AA8 AFA50018 */   sw    $a1, 0x18($sp)
/* B0DC4C 80096AAC 8443000E */  lh    $v1, 0xe($v0)
/* B0DC50 80096AB0 8FA50018 */  lw    $a1, 0x18($sp)
/* B0DC54 80096AB4 8FA80020 */  lw    $t0, 0x20($sp)
/* B0DC58 80096AB8 04600002 */  bltz  $v1, .L80096AC4
/* B0DC5C 80096ABC 8FB90024 */   lw    $t9, 0x24($sp)
/* B0DC60 80096AC0 00602825 */  move  $a1, $v1
.L80096AC4:
/* B0DC64 80096AC4 8F261C44 */  lw    $a2, 0x1c44($t9)
/* B0DC68 80096AC8 3C0F8016 */  lui   $t7, 0x8016
/* B0DC6C 80096ACC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0DC70 80096AD0 84C9001C */  lh    $t1, 0x1c($a2)
/* B0DC74 80096AD4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0DC78 80096AD8 00001025 */  move  $v0, $zero
/* B0DC7C 80096ADC 312AFF00 */  andi  $t2, $t1, 0xff00
/* B0DC80 80096AE0 01455825 */  or    $t3, $t2, $a1
/* B0DC84 80096AE4 A4CB001C */  sh    $t3, 0x1c($a2)
/* B0DC88 80096AE8 8D07000C */  lw    $a3, 0xc($t0)
/* B0DC8C 80096AEC 91040008 */  lbu   $a0, 8($t0)
/* B0DC90 80096AF0 00076100 */  sll   $t4, $a3, 4
/* B0DC94 80096AF4 000C6F02 */  srl   $t5, $t4, 0x1c
/* B0DC98 80096AF8 000D7080 */  sll   $t6, $t5, 2
/* B0DC9C 80096AFC 01EE7821 */  addu  $t7, $t7, $t6
/* B0DCA0 80096B00 8DEF6FA8 */  lw    $t7, 0x6fa8($t7)
/* B0DCA4 80096B04 00E1C024 */  and   $t8, $a3, $at
/* B0DCA8 80096B08 3C018000 */  lui   $at, 0x8000
/* B0DCAC 80096B0C 01F81821 */  addu  $v1, $t7, $t8
/* B0DCB0 80096B10 1880000A */  blez  $a0, .L80096B3C
/* B0DCB4 80096B14 00611821 */   addu  $v1, $v1, $at
.L80096B18:
/* B0DCB8 80096B18 90790002 */  lbu   $t9, 2($v1)
/* B0DCBC 80096B1C 24420001 */  addiu $v0, $v0, 1
/* B0DCC0 80096B20 0044082A */  slt   $at, $v0, $a0
/* B0DCC4 80096B24 14B90003 */  bne   $a1, $t9, .L80096B34
/* B0DCC8 80096B28 00000000 */   nop   
/* B0DCCC 80096B2C 1000000B */  b     .L80096B5C
/* B0DCD0 80096B30 00601025 */   move  $v0, $v1
.L80096B34:
/* B0DCD4 80096B34 1420FFF8 */  bnez  $at, .L80096B18
/* B0DCD8 80096B38 2463001C */   addiu $v1, $v1, 0x1c
.L80096B3C:
/* B0DCDC 80096B3C 3C048014 */  lui   $a0, %hi(D_8013F0A8) # $a0, 0x8014
/* B0DCE0 80096B40 0C00084C */  jal   DebugMessage
/* B0DCE4 80096B44 2484F0A8 */   addiu $a0, %lo(D_8013F0A8) # addiu $a0, $a0, -0xf58
/* B0DCE8 80096B48 3C048014 */  lui   $a0, %hi(D_8013F0F0) # $a0, 0x8014
/* B0DCEC 80096B4C 2484F0F0 */  addiu $a0, %lo(D_8013F0F0) # addiu $a0, $a0, -0xf10
/* B0DCF0 80096B50 0C000B94 */  jal   func_80002E50
/* B0DCF4 80096B54 240502D6 */   li    $a1, 726
/* B0DCF8 80096B58 00001025 */  move  $v0, $zero
.L80096B5C:
/* B0DCFC 80096B5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0DD00 80096B60 27BD0020 */  addiu $sp, $sp, 0x20
/* B0DD04 80096B64 03E00008 */  jr    $ra
/* B0DD08 80096B68 00000000 */   nop   

glabel func_80096B6C
/* B0DD0C 80096B6C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* B0DD10 80096B70 AFBF003C */  sw    $ra, 0x3c($sp)
/* B0DD14 80096B74 AFB00038 */  sw    $s0, 0x38($sp)
/* B0DD18 80096B78 AFA400B0 */  sw    $a0, 0xb0($sp)
/* B0DD1C 80096B7C AFA500B4 */  sw    $a1, 0xb4($sp)
/* B0DD20 80096B80 AFA600B8 */  sw    $a2, 0xb8($sp)
/* B0DD24 80096B84 8C850000 */  lw    $a1, ($a0)
/* B0DD28 80096B88 3C068014 */  lui   $a2, %hi(D_8013F0FC) # $a2, 0x8014
/* B0DD2C 80096B8C 24C6F0FC */  addiu $a2, %lo(D_8013F0FC) # addiu $a2, $a2, -0xf04
/* B0DD30 80096B90 27A40078 */  addiu $a0, $sp, 0x78
/* B0DD34 80096B94 240702F0 */  li    $a3, 752
/* B0DD38 80096B98 0C031AB1 */  jal   func_800C6AC4
/* B0DD3C 80096B9C 00A08025 */   move  $s0, $a1
/* B0DD40 80096BA0 8FA500B0 */  lw    $a1, 0xb0($sp)
/* B0DD44 80096BA4 8FAC00B4 */  lw    $t4, 0xb4($sp)
/* B0DD48 80096BA8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0DD4C 80096BAC 84AF07A0 */  lh    $t7, 0x7a0($a1)
/* B0DD50 80096BB0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0DD54 80096BB4 000FC080 */  sll   $t8, $t7, 2
/* B0DD58 80096BB8 00B8C821 */  addu  $t9, $a1, $t8
/* B0DD5C 80096BBC 8F230790 */  lw    $v1, 0x790($t9)
/* B0DD60 80096BC0 3C188016 */  lui   $t8, 0x8016
/* B0DD64 80096BC4 846A0142 */  lh    $t2, 0x142($v1)
/* B0DD68 80096BC8 394B0019 */  xori  $t3, $t2, 0x19
/* B0DD6C 80096BCC 2D6B0001 */  sltiu $t3, $t3, 1
/* B0DD70 80096BD0 AFAB0098 */  sw    $t3, 0x98($sp)
/* B0DD74 80096BD4 8D840008 */  lw    $a0, 8($t4)
/* B0DD78 80096BD8 8C820004 */  lw    $v0, 4($a0)
/* B0DD7C 80096BDC AFA300AC */  sw    $v1, 0xac($sp)
/* B0DD80 80096BE0 00026900 */  sll   $t5, $v0, 4
/* B0DD84 80096BE4 000D7702 */  srl   $t6, $t5, 0x1c
/* B0DD88 80096BE8 000E7880 */  sll   $t7, $t6, 2
/* B0DD8C 80096BEC 030FC021 */  addu  $t8, $t8, $t7
/* B0DD90 80096BF0 8F186FA8 */  lw    $t8, 0x6fa8($t8)
/* B0DD94 80096BF4 0041C824 */  and   $t9, $v0, $at
/* B0DD98 80096BF8 3C018000 */  lui   $at, 0x8000
/* B0DD9C 80096BFC 03195021 */  addu  $t2, $t8, $t9
/* B0DDA0 80096C00 01415821 */  addu  $t3, $t2, $at
/* B0DDA4 80096C04 0C025A9D */  jal   func_80096A74
/* B0DDA8 80096C08 AFAB009C */   sw    $t3, 0x9c($sp)
/* B0DDAC 80096C0C 8FA600B8 */  lw    $a2, 0xb8($sp)
/* B0DDB0 80096C10 00404825 */  move  $t1, $v0
/* B0DDB4 80096C14 8FA30098 */  lw    $v1, 0x98($sp)
/* B0DDB8 80096C18 30C40001 */  andi  $a0, $a2, 1
/* B0DDBC 80096C1C 0004202B */  sltu  $a0, $zero, $a0
/* B0DDC0 80096C20 1080000E */  beqz  $a0, .L80096C5C
/* B0DDC4 80096C24 00804025 */   move  $t0, $a0
/* B0DDC8 80096C28 0003402B */  sltu  $t0, $zero, $v1
/* B0DDCC 80096C2C 1100000B */  beqz  $t0, .L80096C5C
/* B0DDD0 80096C30 00000000 */   nop   
/* B0DDD4 80096C34 8C480004 */  lw    $t0, 4($v0)
/* B0DDD8 80096C38 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* B0DDDC 80096C3C 2463FA90 */  addiu $v1, %lo(D_8015FA90) # addiu $v1, $v1, -0x570
/* B0DDE0 80096C40 0008402B */  sltu  $t0, $zero, $t0
/* B0DDE4 80096C44 11000005 */  beqz  $t0, .L80096C5C
/* B0DDE8 80096C48 00000000 */   nop   
/* B0DDEC 80096C4C 8C6C0000 */  lw    $t4, ($v1)
/* B0DDF0 80096C50 85880106 */  lh    $t0, 0x106($t4)
/* B0DDF4 80096C54 31080001 */  andi  $t0, $t0, 1
/* B0DDF8 80096C58 2D080001 */  sltiu $t0, $t0, 1
.L80096C5C:
/* B0DDFC 80096C5C 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* B0DE00 80096C60 01002825 */  move  $a1, $t0
/* B0DE04 80096C64 2463FA90 */  addiu $v1, %lo(D_8015FA90) # addiu $v1, $v1, -0x570
/* B0DE08 80096C68 1080000A */  beqz  $a0, .L80096C94
/* B0DE0C 80096C6C 00804025 */   move  $t0, $a0
/* B0DE10 80096C70 8FAD009C */  lw    $t5, 0x9c($sp)
/* B0DE14 80096C74 8DA80000 */  lw    $t0, ($t5)
/* B0DE18 80096C78 0008402B */  sltu  $t0, $zero, $t0
/* B0DE1C 80096C7C 51000006 */  beql  $t0, $zero, .L80096C98
/* B0DE20 80096C80 01002025 */   move  $a0, $t0
/* B0DE24 80096C84 8C6E0000 */  lw    $t6, ($v1)
/* B0DE28 80096C88 85C80106 */  lh    $t0, 0x106($t6)
/* B0DE2C 80096C8C 31080002 */  andi  $t0, $t0, 2
/* B0DE30 80096C90 2D080001 */  sltiu $t0, $t0, 1
.L80096C94:
/* B0DE34 80096C94 01002025 */  move  $a0, $t0
.L80096C98:
/* B0DE38 80096C98 30C20002 */  andi  $v0, $a2, 2
/* B0DE3C 80096C9C 0002402B */  sltu  $t0, $zero, $v0
/* B0DE40 80096CA0 11000009 */  beqz  $t0, .L80096CC8
/* B0DE44 80096CA4 8FAF009C */   lw    $t7, 0x9c($sp)
/* B0DE48 80096CA8 8DE80004 */  lw    $t0, 4($t7)
/* B0DE4C 80096CAC 0008402B */  sltu  $t0, $zero, $t0
/* B0DE50 80096CB0 11000005 */  beqz  $t0, .L80096CC8
/* B0DE54 80096CB4 00000000 */   nop   
/* B0DE58 80096CB8 8C780000 */  lw    $t8, ($v1)
/* B0DE5C 80096CBC 87080106 */  lh    $t0, 0x106($t8)
/* B0DE60 80096CC0 31080004 */  andi  $t0, $t0, 4
/* B0DE64 80096CC4 2D080001 */  sltiu $t0, $t0, 1
.L80096CC8:
/* B0DE68 80096CC8 54800004 */  bnezl $a0, .L80096CDC
/* B0DE6C 80096CCC 8E0302C0 */   lw    $v1, 0x2c0($s0)
/* B0DE70 80096CD0 10A00079 */  beqz  $a1, .L80096EB8
/* B0DE74 80096CD4 00000000 */   nop   
/* B0DE78 80096CD8 8E0302C0 */  lw    $v1, 0x2c0($s0)
.L80096CDC:
/* B0DE7C 80096CDC 3C0ADB06 */  lui   $t2, (0xDB06000C >> 16) # lui $t2, 0xdb06
/* B0DE80 80096CE0 354A000C */  ori   $t2, (0xDB06000C & 0xFFFF) # ori $t2, $t2, 0xc
/* B0DE84 80096CE4 24790008 */  addiu $t9, $v1, 8
/* B0DE88 80096CE8 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0DE8C 80096CEC AC6A0000 */  sw    $t2, ($v1)
/* B0DE90 80096CF0 8FAB00B4 */  lw    $t3, 0xb4($sp)
/* B0DE94 80096CF4 8D6C000C */  lw    $t4, 0xc($t3)
/* B0DE98 80096CF8 1080001B */  beqz  $a0, .L80096D68
/* B0DE9C 80096CFC AC6C0004 */   sw    $t4, 4($v1)
/* B0DEA0 80096D00 8FAD00B0 */  lw    $t5, 0xb0($sp)
/* B0DEA4 80096D04 8DA40000 */  lw    $a0, ($t5)
/* B0DEA8 80096D08 AFA900A0 */  sw    $t1, 0xa0($sp)
/* B0DEAC 80096D0C AFA80048 */  sw    $t0, 0x48($sp)
/* B0DEB0 80096D10 0C024F46 */  jal   func_80093D18
/* B0DEB4 80096D14 AFA50094 */   sw    $a1, 0x94($sp)
/* B0DEB8 80096D18 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DEBC 80096D1C 8FA50094 */  lw    $a1, 0x94($sp)
/* B0DEC0 80096D20 8FA80048 */  lw    $t0, 0x48($sp)
/* B0DEC4 80096D24 8FA900A0 */  lw    $t1, 0xa0($sp)
/* B0DEC8 80096D28 246E0008 */  addiu $t6, $v1, 8
/* B0DECC 80096D2C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* B0DED0 80096D30 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* B0DED4 80096D34 3C188013 */  lui   $t8, %hi(D_8012DB20) # $t8, 0x8013
/* B0DED8 80096D38 2718DB20 */  addiu $t8, %lo(D_8012DB20) # addiu $t8, $t8, -0x24e0
/* B0DEDC 80096D3C 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* B0DEE0 80096D40 AC6F0000 */  sw    $t7, ($v1)
/* B0DEE4 80096D44 AC780004 */  sw    $t8, 4($v1)
/* B0DEE8 80096D48 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DEEC 80096D4C 3C0ADE00 */  lui   $t2, 0xde00
/* B0DEF0 80096D50 24790008 */  addiu $t9, $v1, 8
/* B0DEF4 80096D54 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0DEF8 80096D58 AC6A0000 */  sw    $t2, ($v1)
/* B0DEFC 80096D5C 8FAB009C */  lw    $t3, 0x9c($sp)
/* B0DF00 80096D60 8D6C0000 */  lw    $t4, ($t3)
/* B0DF04 80096D64 AC6C0004 */  sw    $t4, 4($v1)
.L80096D68:
/* B0DF08 80096D68 10A00053 */  beqz  $a1, .L80096EB8
/* B0DF0C 80096D6C 3C0EE100 */   lui   $t6, 0xe100
/* B0DF10 80096D70 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DF14 80096D74 3C0F0015 */  lui   $t7, %hi(D_001579A0) # $t7, 0x15
/* B0DF18 80096D78 25EF79A0 */  addiu $t7, %lo(D_001579A0) # addiu $t7, $t7, 0x79a0
/* B0DF1C 80096D7C 246D0008 */  addiu $t5, $v1, 8
/* B0DF20 80096D80 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B0DF24 80096D84 AC6F0004 */  sw    $t7, 4($v1)
/* B0DF28 80096D88 AC6E0000 */  sw    $t6, ($v1)
/* B0DF2C 80096D8C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0DF30 80096D90 3C19DD00 */  lui   $t9, (0xDD0007FF >> 16) # lui $t9, 0xdd00
/* B0DF34 80096D94 3C0A0011 */  lui   $t2, %hi(D_00113070) # $t2, 0x11
/* B0DF38 80096D98 24780008 */  addiu $t8, $v1, 8
/* B0DF3C 80096D9C AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B0DF40 80096DA0 254A3070 */  addiu $t2, %lo(D_00113070) # addiu $t2, $t2, 0x3070
/* B0DF44 80096DA4 373907FF */  ori   $t9, (0xDD0007FF & 0xFFFF) # ori $t9, $t9, 0x7ff
/* B0DF48 80096DA8 AC790000 */  sw    $t9, ($v1)
/* B0DF4C 80096DAC AC6A0004 */  sw    $t2, 4($v1)
/* B0DF50 80096DB0 8E0B02C0 */  lw    $t3, 0x2c0($s0)
/* B0DF54 80096DB4 AFA900A0 */  sw    $t1, 0xa0($sp)
/* B0DF58 80096DB8 AFA80048 */  sw    $t0, 0x48($sp)
/* B0DF5C 80096DBC 8FA500AC */  lw    $a1, 0xac($sp)
/* B0DF60 80096DC0 27A4005C */  addiu $a0, $sp, 0x5c
/* B0DF64 80096DC4 0C016BED */  jal   func_8005AFB4
/* B0DF68 80096DC8 AFAB00A8 */   sw    $t3, 0xa8($sp)
/* B0DF6C 80096DCC C7A4005C */  lwc1  $f4, 0x5c($sp)
/* B0DF70 80096DD0 C7A60064 */  lwc1  $f6, 0x64($sp)
/* B0DF74 80096DD4 3C018014 */  lui   $at, 0x8014
/* B0DF78 80096DD8 C42AF2AC */  lwc1  $f10, -0xd54($at)
/* B0DF7C 80096DDC C7A80060 */  lwc1  $f8, 0x60($sp)
/* B0DF80 80096DE0 46062000 */  add.s $f0, $f4, $f6
/* B0DF84 80096DE4 8FA900A0 */  lw    $t1, 0xa0($sp)
/* B0DF88 80096DE8 3C018014 */  lui   $at, 0x8014
/* B0DF8C 80096DEC 460A4402 */  mul.s $f16, $f8, $f10
/* B0DF90 80096DF0 C432F2B0 */  lwc1  $f18, -0xd50($at)
/* B0DF94 80096DF4 952C0012 */  lhu   $t4, 0x12($t1)
/* B0DF98 80096DF8 8D250004 */  lw    $a1, 4($t1)
/* B0DF9C 80096DFC 46120102 */  mul.s $f4, $f0, $f18
/* B0DFA0 80096E00 8D26000C */  lw    $a2, 0xc($t1)
/* B0DFA4 80096E04 95270010 */  lhu   $a3, 0x10($t1)
/* B0DFA8 80096E08 AFAC0010 */  sw    $t4, 0x10($sp)
/* B0DFAC 80096E0C 912D0014 */  lbu   $t5, 0x14($t1)
/* B0DFB0 80096E10 3C018014 */  lui   $at, 0x8014
/* B0DFB4 80096E14 C42AF2B4 */  lwc1  $f10, -0xd4c($at)
/* B0DFB8 80096E18 46102180 */  add.s $f6, $f4, $f16
/* B0DFBC 80096E1C 3C018014 */  lui   $at, 0x8014
/* B0DFC0 80096E20 AFAD0014 */  sw    $t5, 0x14($sp)
/* B0DFC4 80096E24 460A4482 */  mul.s $f18, $f8, $f10
/* B0DFC8 80096E28 C424F2B8 */  lwc1  $f4, -0xd48($at)
/* B0DFCC 80096E2C 912E0015 */  lbu   $t6, 0x15($t1)
/* B0DFD0 80096E30 27A400A8 */  addiu $a0, $sp, 0xa8
/* B0DFD4 80096E34 46040402 */  mul.s $f16, $f0, $f4
/* B0DFD8 80096E38 AFAE0018 */  sw    $t6, 0x18($sp)
/* B0DFDC 80096E3C 952F0016 */  lhu   $t7, 0x16($t1)
/* B0DFE0 80096E40 AFAF001C */  sw    $t7, 0x1c($sp)
/* B0DFE4 80096E44 95380018 */  lhu   $t8, 0x18($t1)
/* B0DFE8 80096E48 E7A60024 */  swc1  $f6, 0x24($sp)
/* B0DFEC 80096E4C 46109180 */  add.s $f6, $f18, $f16
/* B0DFF0 80096E50 AFB80020 */  sw    $t8, 0x20($sp)
/* B0DFF4 80096E54 0C0258E3 */  jal   func_8009638C
/* B0DFF8 80096E58 E7A60028 */   swc1  $f6, 0x28($sp)
/* B0DFFC 80096E5C 8FB900A8 */  lw    $t9, 0xa8($sp)
/* B0E000 80096E60 8FA80048 */  lw    $t0, 0x48($sp)
/* B0E004 80096E64 3C0BE100 */  lui   $t3, 0xe100
/* B0E008 80096E68 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0E00C 80096E6C 272A0008 */  addiu $t2, $t9, 8
/* B0E010 80096E70 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B0E014 80096E74 AF2B0000 */  sw    $t3, ($t9)
/* B0E018 80096E78 AFB90058 */  sw    $t9, 0x58($sp)
/* B0E01C 80096E7C 0C034B88 */  jal   func_800D2E20
/* B0E020 80096E80 AFA80048 */   sw    $t0, 0x48($sp)
/* B0E024 80096E84 8FA40058 */  lw    $a0, 0x58($sp)
/* B0E028 80096E88 3C0DDD00 */  lui   $t5, (0xDD0007FF >> 16) # lui $t5, 0xdd00
/* B0E02C 80096E8C 35AD07FF */  ori   $t5, (0xDD0007FF & 0xFFFF) # ori $t5, $t5, 0x7ff
/* B0E030 80096E90 AC820004 */  sw    $v0, 4($a0)
/* B0E034 80096E94 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B0E038 80096E98 246C0008 */  addiu $t4, $v1, 8
/* B0E03C 80096E9C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* B0E040 80096EA0 AC6D0000 */  sw    $t5, ($v1)
/* B0E044 80096EA4 0C034B85 */  jal   func_800D2E14
/* B0E048 80096EA8 AFA30058 */   sw    $v1, 0x58($sp)
/* B0E04C 80096EAC 8FA40058 */  lw    $a0, 0x58($sp)
/* B0E050 80096EB0 8FA80048 */  lw    $t0, 0x48($sp)
/* B0E054 80096EB4 AC820004 */  sw    $v0, 4($a0)
.L80096EB8:
/* B0E058 80096EB8 51000021 */  beql  $t0, $zero, .L80096F40
/* B0E05C 80096EBC 8FB900B0 */   lw    $t9, 0xb0($sp)
/* B0E060 80096EC0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0E064 80096EC4 3C0FDB06 */  lui   $t7, (0xDB06000C >> 16) # lui $t7, 0xdb06
/* B0E068 80096EC8 35EF000C */  ori   $t7, (0xDB06000C & 0xFFFF) # ori $t7, $t7, 0xc
/* B0E06C 80096ECC 244E0008 */  addiu $t6, $v0, 8
/* B0E070 80096ED0 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* B0E074 80096ED4 AC4F0000 */  sw    $t7, ($v0)
/* B0E078 80096ED8 8FB800B4 */  lw    $t8, 0xb4($sp)
/* B0E07C 80096EDC 3C058013 */  lui   $a1, %hi(D_8012DB20) # $a1, 0x8013
/* B0E080 80096EE0 24A5DB20 */  addiu $a1, %lo(D_8012DB20) # addiu $a1, $a1, -0x24e0
/* B0E084 80096EE4 8F19000C */  lw    $t9, 0xc($t8)
/* B0E088 80096EE8 AC590004 */  sw    $t9, 4($v0)
/* B0E08C 80096EEC 8FAA00B0 */  lw    $t2, 0xb0($sp)
/* B0E090 80096EF0 8D440000 */  lw    $a0, ($t2)
/* B0E094 80096EF4 0C024F61 */  jal   func_80093D84
/* B0E098 80096EF8 AFA50044 */   sw    $a1, 0x44($sp)
/* B0E09C 80096EFC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0E0A0 80096F00 8FA50044 */  lw    $a1, 0x44($sp)
/* B0E0A4 80096F04 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* B0E0A8 80096F08 244B0008 */  addiu $t3, $v0, 8
/* B0E0AC 80096F0C AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* B0E0B0 80096F10 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* B0E0B4 80096F14 AC4C0000 */  sw    $t4, ($v0)
/* B0E0B8 80096F18 AC450004 */  sw    $a1, 4($v0)
/* B0E0BC 80096F1C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* B0E0C0 80096F20 3C0EDE00 */  lui   $t6, 0xde00
/* B0E0C4 80096F24 244D0008 */  addiu $t5, $v0, 8
/* B0E0C8 80096F28 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* B0E0CC 80096F2C AC4E0000 */  sw    $t6, ($v0)
/* B0E0D0 80096F30 8FAF009C */  lw    $t7, 0x9c($sp)
/* B0E0D4 80096F34 8DF80004 */  lw    $t8, 4($t7)
/* B0E0D8 80096F38 AC580004 */  sw    $t8, 4($v0)
/* B0E0DC 80096F3C 8FB900B0 */  lw    $t9, 0xb0($sp)
.L80096F40:
/* B0E0E0 80096F40 3C068014 */  lui   $a2, %hi(D_8013F108) # $a2, 0x8014
/* B0E0E4 80096F44 24C6F108 */  addiu $a2, %lo(D_8013F108) # addiu $a2, $a2, -0xef8
/* B0E0E8 80096F48 27A40078 */  addiu $a0, $sp, 0x78
/* B0E0EC 80096F4C 24070333 */  li    $a3, 819
/* B0E0F0 80096F50 0C031AD5 */  jal   func_800C6B54
/* B0E0F4 80096F54 8F250000 */   lw    $a1, ($t9)
/* B0E0F8 80096F58 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0E0FC 80096F5C 8FB00038 */  lw    $s0, 0x38($sp)
/* B0E100 80096F60 27BD00B0 */  addiu $sp, $sp, 0xb0
/* B0E104 80096F64 03E00008 */  jr    $ra
/* B0E108 80096F68 00000000 */   nop   

/* B0E10C 80096F6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0E110 80096F70 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0E114 80096F74 8CA20008 */  lw    $v0, 8($a1)
/* B0E118 80096F78 24010001 */  li    $at, 1
/* B0E11C 80096F7C 90430001 */  lbu   $v1, 1($v0)
/* B0E120 80096F80 54610006 */  bnel  $v1, $at, .L80096F9C
/* B0E124 80096F84 24010002 */   li    $at, 2
/* B0E128 80096F88 0C0259A0 */  jal   func_80096680
/* B0E12C 80096F8C 00000000 */   nop   
/* B0E130 80096F90 1000000D */  b     .L80096FC8
/* B0E134 80096F94 8FBF0014 */   lw    $ra, 0x14($sp)
/* B0E138 80096F98 24010002 */  li    $at, 2
.L80096F9C:
/* B0E13C 80096F9C 14610005 */  bne   $v1, $at, .L80096FB4
/* B0E140 80096FA0 00000000 */   nop   
/* B0E144 80096FA4 0C025ADB */  jal   func_80096B6C
/* B0E148 80096FA8 00000000 */   nop   
/* B0E14C 80096FAC 10000006 */  b     .L80096FC8
/* B0E150 80096FB0 8FBF0014 */   lw    $ra, 0x14($sp)
.L80096FB4:
/* B0E154 80096FB4 3C048014 */  lui   $a0, %hi(D_8013F114) # $a0, 0x8014
/* B0E158 80096FB8 2484F114 */  addiu $a0, %lo(D_8013F114) # addiu $a0, $a0, -0xeec
/* B0E15C 80096FBC 0C000B94 */  jal   func_80002E50
/* B0E160 80096FC0 24050349 */   li    $a1, 841
/* B0E164 80096FC4 8FBF0014 */  lw    $ra, 0x14($sp)
.L80096FC8:
/* B0E168 80096FC8 27BD0018 */  addiu $sp, $sp, 0x18
/* B0E16C 80096FCC 03E00008 */  jr    $ra
/* B0E170 80096FD0 00000000 */   nop   

glabel func_80096FD4
/* B0E174 80096FD4 AFA40000 */  sw    $a0, ($sp)
/* B0E178 80096FD8 240EFFFF */  li    $t6, -1
/* B0E17C 80096FDC A0AE0000 */  sb    $t6, ($a1)
/* B0E180 80096FE0 03E00008 */  jr    $ra
/* B0E184 80096FE4 ACA0000C */   sw    $zero, 0xc($a1)

glabel func_80096FE8
/* B0E188 80096FE8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B0E18C 80096FEC AFB50038 */  sw    $s5, 0x38($sp)
/* B0E190 80096FF0 3C010001 */  lui   $at, 1
/* B0E194 80096FF4 AFBF003C */  sw    $ra, 0x3c($sp)
/* B0E198 80096FF8 AFB40034 */  sw    $s4, 0x34($sp)
/* B0E19C 80096FFC AFB30030 */  sw    $s3, 0x30($sp)
/* B0E1A0 80097000 AFB2002C */  sw    $s2, 0x2c($sp)
/* B0E1A4 80097004 AFB10028 */  sw    $s1, 0x28($sp)
/* B0E1A8 80097008 AFB00024 */  sw    $s0, 0x24($sp)
/* B0E1AC 8009700C AFA40040 */  sw    $a0, 0x40($sp)
/* B0E1B0 80097010 AFA50044 */  sw    $a1, 0x44($sp)
/* B0E1B4 80097014 0081A821 */  addu  $s5, $a0, $at
/* B0E1B8 80097018 92AE1DEC */  lbu   $t6, 0x1dec($s5)
/* B0E1BC 8009701C 00009825 */  move  $s3, $zero
/* B0E1C0 80097020 8EA21DF0 */  lw    $v0, 0x1df0($s5)
/* B0E1C4 80097024 19C00014 */  blez  $t6, .L80097078
/* B0E1C8 80097028 00009025 */   move  $s2, $zero
/* B0E1CC 8009702C 00408025 */  move  $s0, $v0
/* B0E1D0 80097030 8E0F0004 */  lw    $t7, 4($s0)
.L80097034:
/* B0E1D4 80097034 8E180000 */  lw    $t8, ($s0)
/* B0E1D8 80097038 3C048014 */  lui   $a0, %hi(D_8013F120) # $a0, 0x8014
/* B0E1DC 8009703C 2484F120 */  addiu $a0, %lo(D_8013F120) # addiu $a0, $a0, -0xee0
/* B0E1E0 80097040 01F88823 */  subu  $s1, $t7, $t8
/* B0E1E4 80097044 02203025 */  move  $a2, $s1
/* B0E1E8 80097048 0C00084C */  jal   DebugMessage
/* B0E1EC 8009704C 02402825 */   move  $a1, $s2
/* B0E1F0 80097050 0271082B */  sltu  $at, $s3, $s1
/* B0E1F4 80097054 50200003 */  beql  $at, $zero, .L80097064
/* B0E1F8 80097058 92B91DEC */   lbu   $t9, 0x1dec($s5)
/* B0E1FC 8009705C 02209825 */  move  $s3, $s1
/* B0E200 80097060 92B91DEC */  lbu   $t9, 0x1dec($s5)
.L80097064:
/* B0E204 80097064 26520001 */  addiu $s2, $s2, 1
/* B0E208 80097068 26100008 */  addiu $s0, $s0, 8
/* B0E20C 8009706C 0259082A */  slt   $at, $s2, $t9
/* B0E210 80097070 5420FFF0 */  bnezl $at, .L80097034
/* B0E214 80097074 8E0F0004 */   lw    $t7, 4($s0)
.L80097078:
/* B0E218 80097078 92AA1D34 */  lbu   $t2, 0x1d34($s5)
/* B0E21C 8009707C 3C048014 */  lui   $a0, %hi(D_8013F130) # $a0, 0x8014
/* B0E220 80097080 2484F130 */  addiu $a0, %lo(D_8013F130) # addiu $a0, $a0, -0xed0
/* B0E224 80097084 11400034 */  beqz  $t2, .L80097158
/* B0E228 80097088 24050390 */   li    $a1, 912
/* B0E22C 8009708C 8EB41DF0 */  lw    $s4, 0x1df0($s5)
/* B0E230 80097090 0C000B84 */  jal   DebugMessageWithThreadId
/* B0E234 80097094 8EB21D38 */   lw    $s2, 0x1d38($s5)
/* B0E238 80097098 3C048014 */  lui   $a0, %hi(D_8013F13C) # $a0, 0x8014
/* B0E23C 8009709C 2484F13C */  addiu $a0, %lo(D_8013F13C) # addiu $a0, $a0, -0xec4
/* B0E240 800970A0 0C00084C */  jal   DebugMessage
/* B0E244 800970A4 92A51DEC */   lbu   $a1, 0x1dec($s5)
/* B0E248 800970A8 92AB1D34 */  lbu   $t3, 0x1d34($s5)
/* B0E24C 800970AC 00008825 */  move  $s1, $zero
/* B0E250 800970B0 19600029 */  blez  $t3, .L80097158
/* B0E254 800970B4 00000000 */   nop   
/* B0E258 800970B8 82470000 */  lb    $a3, ($s2)
.L800970BC:
/* B0E25C 800970BC 3C048014 */  lui   $a0, %hi(D_8013F164) # $a0, 0x8014
/* B0E260 800970C0 82490002 */  lb    $t1, 2($s2)
/* B0E264 800970C4 04E10003 */  bgez  $a3, .L800970D4
/* B0E268 800970C8 2484F164 */   addiu $a0, %lo(D_8013F164) # addiu $a0, $a0, -0xe9c
/* B0E26C 800970CC 10000006 */  b     .L800970E8
/* B0E270 800970D0 00001825 */   move  $v1, $zero
.L800970D4:
/* B0E274 800970D4 000760C0 */  sll   $t4, $a3, 3
/* B0E278 800970D8 028C1021 */  addu  $v0, $s4, $t4
/* B0E27C 800970DC 8C4D0004 */  lw    $t5, 4($v0)
/* B0E280 800970E0 8C4E0000 */  lw    $t6, ($v0)
/* B0E284 800970E4 01AE1823 */  subu  $v1, $t5, $t6
.L800970E8:
/* B0E288 800970E8 05210003 */  bgez  $t1, .L800970F8
/* B0E28C 800970EC 02202825 */   move  $a1, $s1
/* B0E290 800970F0 10000006 */  b     .L8009710C
/* B0E294 800970F4 00004025 */   move  $t0, $zero
.L800970F8:
/* B0E298 800970F8 000978C0 */  sll   $t7, $t1, 3
/* B0E29C 800970FC 028F1021 */  addu  $v0, $s4, $t7
/* B0E2A0 80097100 8C580004 */  lw    $t8, 4($v0)
/* B0E2A4 80097104 8C590000 */  lw    $t9, ($v0)
/* B0E2A8 80097108 03194023 */  subu  $t0, $t8, $t9
.L8009710C:
/* B0E2AC 8009710C 10E90003 */  beq   $a3, $t1, .L8009711C
/* B0E2B0 80097110 00608025 */   move  $s0, $v1
/* B0E2B4 80097114 10000001 */  b     .L8009711C
/* B0E2B8 80097118 00688021 */   addu  $s0, $v1, $t0
.L8009711C:
/* B0E2BC 8009711C 02003025 */  move  $a2, $s0
/* B0E2C0 80097120 AFA30010 */  sw    $v1, 0x10($sp)
/* B0E2C4 80097124 AFA90014 */  sw    $t1, 0x14($sp)
/* B0E2C8 80097128 0C00084C */  jal   DebugMessage
/* B0E2CC 8009712C AFA80018 */   sw    $t0, 0x18($sp)
/* B0E2D0 80097130 0270082B */  sltu  $at, $s3, $s0
/* B0E2D4 80097134 50200003 */  beql  $at, $zero, .L80097144
/* B0E2D8 80097138 92AA1D34 */   lbu   $t2, 0x1d34($s5)
/* B0E2DC 8009713C 02009825 */  move  $s3, $s0
/* B0E2E0 80097140 92AA1D34 */  lbu   $t2, 0x1d34($s5)
.L80097144:
/* B0E2E4 80097144 26310001 */  addiu $s1, $s1, 1
/* B0E2E8 80097148 26520010 */  addiu $s2, $s2, 0x10
/* B0E2EC 8009714C 022A082A */  slt   $at, $s1, $t2
/* B0E2F0 80097150 5420FFDA */  bnezl $at, .L800970BC
/* B0E2F4 80097154 82470000 */   lb    $a3, ($s2)
.L80097158:
/* B0E2F8 80097158 3C048014 */  li    $a0, 0x80140000 # 0.000000
/* B0E2FC 8009715C 0C00084C */  jal   DebugMessage
/* B0E300 80097160 2484F190 */   addiu $a0, %lo(D_8013F190) # addiu $a0, $a0, -0xe70
/* B0E304 80097164 44932000 */  mtc1  $s3, $f4
/* B0E308 80097168 3C048014 */  lui   $a0, %hi(D_8013F198) # $a0, 0x8014
/* B0E30C 8009716C 2484F198 */  addiu $a0, %lo(D_8013F198) # addiu $a0, $a0, -0xe68
/* B0E310 80097170 02602825 */  move  $a1, $s3
/* B0E314 80097174 06610005 */  bgez  $s3, .L8009718C
/* B0E318 80097178 468021A0 */   cvt.s.w $f6, $f4
/* B0E31C 8009717C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B0E320 80097180 44814000 */  mtc1  $at, $f8
/* B0E324 80097184 00000000 */  nop   
/* B0E328 80097188 46083180 */  add.s $f6, $f6, $f8
.L8009718C:
/* B0E32C 8009718C 3C013A80 */  li    $at, 0x3A800000 # 0.000000
/* B0E330 80097190 44815000 */  mtc1  $at, $f10
/* B0E334 80097194 00000000 */  nop   
/* B0E338 80097198 460A3402 */  mul.s $f16, $f6, $f10
/* B0E33C 8009719C 460084A1 */  cvt.d.s $f18, $f16
/* B0E340 800971A0 44079000 */  mfc1  $a3, $f18
/* B0E344 800971A4 44069800 */  mfc1  $a2, $f19
/* B0E348 800971A8 0C00084C */  jal   DebugMessage
/* B0E34C 800971AC 00000000 */   nop   
/* B0E350 800971B0 3C068014 */  lui   $a2, %hi(D_8013F1BC) # $a2, 0x8014
/* B0E354 800971B4 24C6F1BC */  addiu $a2, %lo(D_8013F1BC) # addiu $a2, $a2, -0xe44
/* B0E358 800971B8 8FA40040 */  lw    $a0, 0x40($sp)
/* B0E35C 800971BC 02602825 */  move  $a1, $s3
/* B0E360 800971C0 0C031521 */  jal   game_alloc
/* B0E364 800971C4 240703B2 */   li    $a3, 946
/* B0E368 800971C8 8FAB0044 */  lw    $t3, 0x44($sp)
/* B0E36C 800971CC 3C048014 */  lui   $a0, %hi(D_8013F1C8) # $a0, 0x8014
/* B0E370 800971D0 2484F1C8 */  addiu $a0, %lo(D_8013F1C8) # addiu $a0, $a0, -0xe38
/* B0E374 800971D4 00402825 */  move  $a1, $v0
/* B0E378 800971D8 0C00084C */  jal   DebugMessage
/* B0E37C 800971DC AD620028 */   sw    $v0, 0x28($t3)
/* B0E380 800971E0 8FAC0044 */  lw    $t4, 0x44($sp)
/* B0E384 800971E4 3C048014 */  lui   $a0, %hi(D_8013F1E8) # $a0, 0x8014
/* B0E388 800971E8 2484F1E8 */  addiu $a0, %lo(D_8013F1E8) # addiu $a0, $a0, -0xe18
/* B0E38C 800971EC 8D8D0028 */  lw    $t5, 0x28($t4)
/* B0E390 800971F0 01B32821 */  addu  $a1, $t5, $s3
/* B0E394 800971F4 0C00084C */  jal   DebugMessage
/* B0E398 800971F8 AD85002C */   sw    $a1, 0x2c($t4)
/* B0E39C 800971FC 3C048014 */  lui   $a0, %hi(D_8013F208) # $a0, 0x8014
/* B0E3A0 80097200 0C00084C */  jal   DebugMessage
/* B0E3A4 80097204 2484F208 */   addiu $a0, %lo(D_8013F208) # addiu $a0, $a0, -0xdf8
/* B0E3A8 80097208 8FAE0044 */  lw    $t6, 0x44($sp)
/* B0E3AC 8009720C 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B0E3B0 80097210 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B0E3B4 80097214 A1C00030 */  sb    $zero, 0x30($t6)
/* B0E3B8 80097218 8FAF0044 */  lw    $t7, 0x44($sp)
/* B0E3BC 8009721C A1E00031 */  sb    $zero, 0x31($t7)
/* B0E3C0 80097220 8C621364 */  lw    $v0, 0x1364($v1)
/* B0E3C4 80097224 18400006 */  blez  $v0, .L80097240
/* B0E3C8 80097228 0002C0C0 */   sll   $t8, $v0, 3
/* B0E3CC 8009722C 0302C023 */  subu  $t8, $t8, $v0
/* B0E3D0 80097230 0018C080 */  sll   $t8, $t8, 2
/* B0E3D4 80097234 0078C821 */  addu  $t9, $v1, $t8
/* B0E3D8 80097238 10000006 */  b     .L80097254
/* B0E3DC 8009723C 9327135E */   lbu   $a3, 0x135e($t9)
.L80097240:
/* B0E3E0 80097240 92AB1DEA */  lbu   $t3, 0x1dea($s5)
/* B0E3E4 80097244 8EAA1E00 */  lw    $t2, 0x1e00($s5)
/* B0E3E8 80097248 000B6840 */  sll   $t5, $t3, 1
/* B0E3EC 8009724C 014D6021 */  addu  $t4, $t2, $t5
/* B0E3F0 80097250 91870001 */  lbu   $a3, 1($t4)
.L80097254:
/* B0E3F4 80097254 8FA40040 */  lw    $a0, 0x40($sp)
/* B0E3F8 80097258 8FA50044 */  lw    $a1, 0x44($sp)
/* B0E3FC 8009725C 0C025CA3 */  jal   func_8009728C
/* B0E400 80097260 00E03025 */   move  $a2, $a3
/* B0E404 80097264 8FBF003C */  lw    $ra, 0x3c($sp)
/* B0E408 80097268 02601025 */  move  $v0, $s3
/* B0E40C 8009726C 8FB30030 */  lw    $s3, 0x30($sp)
/* B0E410 80097270 8FB00024 */  lw    $s0, 0x24($sp)
/* B0E414 80097274 8FB10028 */  lw    $s1, 0x28($sp)
/* B0E418 80097278 8FB2002C */  lw    $s2, 0x2c($sp)
/* B0E41C 8009727C 8FB40034 */  lw    $s4, 0x34($sp)
/* B0E420 80097280 8FB50038 */  lw    $s5, 0x38($sp)
/* B0E424 80097284 03E00008 */  jr    $ra
/* B0E428 80097288 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_8009728C
/* B0E42C 8009728C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B0E430 80097290 AFBF0034 */  sw    $ra, 0x34($sp)
/* B0E434 80097294 AFB00030 */  sw    $s0, 0x30($sp)
/* B0E438 80097298 AFA60050 */  sw    $a2, 0x50($sp)
/* B0E43C 8009729C 80AE0031 */  lb    $t6, 0x31($a1)
/* B0E440 800972A0 00A08025 */  move  $s0, $a1
/* B0E444 800972A4 240A0001 */  li    $t2, 1
/* B0E448 800972A8 15C0004F */  bnez  $t6, .L800973E8
/* B0E44C 800972AC 00001025 */   move  $v0, $zero
/* B0E450 800972B0 8CB80000 */  lw    $t8, ($a1)
/* B0E454 800972B4 8CAF0004 */  lw    $t7, 4($a1)
/* B0E458 800972B8 3C010001 */  lui   $at, 1
/* B0E45C 800972BC ACB80014 */  sw    $t8, 0x14($a1)
/* B0E460 800972C0 8CB80008 */  lw    $t8, 8($a1)
/* B0E464 800972C4 ACAF0018 */  sw    $t7, 0x18($a1)
/* B0E468 800972C8 8CAF000C */  lw    $t7, 0xc($a1)
/* B0E46C 800972CC ACB8001C */  sw    $t8, 0x1c($a1)
/* B0E470 800972D0 8CB80010 */  lw    $t8, 0x10($a1)
/* B0E474 800972D4 ACAF0020 */  sw    $t7, 0x20($a1)
/* B0E478 800972D8 00814821 */  addu  $t1, $a0, $at
/* B0E47C 800972DC ACB80024 */  sw    $t8, 0x24($a1)
/* B0E480 800972E0 8FB90050 */  lw    $t9, 0x50($sp)
/* B0E484 800972E4 ACA0000C */  sw    $zero, 0xc($a1)
/* B0E488 800972E8 A0AA0031 */  sb    $t2, 0x31($a1)
/* B0E48C 800972EC A0B90000 */  sb    $t9, ($a1)
/* B0E490 800972F0 912C1DEC */  lbu   $t4, 0x1dec($t1)
/* B0E494 800972F4 8FAB0050 */  lw    $t3, 0x50($sp)
/* B0E498 800972F8 3C048014 */  lui   $a0, %hi(D_8013F20C) # $a0, 0x8014
/* B0E49C 800972FC 2484F20C */  addiu $a0, %lo(D_8013F20C) # addiu $a0, $a0, -0xdf4
/* B0E4A0 80097300 016C082A */  slt   $at, $t3, $t4
/* B0E4A4 80097304 14200006 */  bnez  $at, .L80097320
/* B0E4A8 80097308 3C058014 */   lui   $a1, %hi(D_8013F23C) # $a1, 0x8014
/* B0E4AC 8009730C 24A5F23C */  addiu $a1, %lo(D_8013F23C) # addiu $a1, $a1, -0xdc4
/* B0E4B0 80097310 240603F1 */  li    $a2, 1009
/* B0E4B4 80097314 0C0007FC */  jal   AssertMessage
/* B0E4B8 80097318 AFA90040 */   sw    $t1, 0x40($sp)
/* B0E4BC 8009731C 8FA90040 */  lw    $t1, 0x40($sp)
.L80097320:
/* B0E4C0 80097320 8FA80050 */  lw    $t0, 0x50($sp)
/* B0E4C4 80097324 8D2D1DF0 */  lw    $t5, 0x1df0($t1)
/* B0E4C8 80097328 92030030 */  lbu   $v1, 0x30($s0)
/* B0E4CC 8009732C 000840C0 */  sll   $t0, $t0, 3
/* B0E4D0 80097330 01A81021 */  addu  $v0, $t5, $t0
/* B0E4D4 80097334 8C4E0004 */  lw    $t6, 4($v0)
/* B0E4D8 80097338 8C4F0000 */  lw    $t7, ($v0)
/* B0E4DC 8009733C 0003C080 */  sll   $t8, $v1, 2
/* B0E4E0 80097340 0218C821 */  addu  $t9, $s0, $t8
/* B0E4E4 80097344 01CF3823 */  subu  $a3, $t6, $t7
/* B0E4E8 80097348 24EB0008 */  addiu $t3, $a3, 8
/* B0E4EC 8009734C 01630019 */  multu $t3, $v1
/* B0E4F0 80097350 8F2A0028 */  lw    $t2, 0x28($t9)
/* B0E4F4 80097354 2401FFF0 */  li    $at, -16
/* B0E4F8 80097358 26040058 */  addiu $a0, $s0, 0x58
/* B0E4FC 8009735C 26050070 */  addiu $a1, $s0, 0x70
/* B0E500 80097360 24060001 */  li    $a2, 1
/* B0E504 80097364 00006012 */  mflo  $t4
/* B0E508 80097368 014C6823 */  subu  $t5, $t2, $t4
/* B0E50C 8009736C 25AE0008 */  addiu $t6, $t5, 8
/* B0E510 80097370 01C17824 */  and   $t7, $t6, $at
/* B0E514 80097374 AE0F0034 */  sw    $t7, 0x34($s0)
/* B0E518 80097378 AFA90040 */  sw    $t1, 0x40($sp)
/* B0E51C 8009737C AFA8003C */  sw    $t0, 0x3c($sp)
/* B0E520 80097380 AFA70044 */  sw    $a3, 0x44($sp)
/* B0E524 80097384 0C001874 */  jal   osCreateMesgQueue
/* B0E528 80097388 AFA40038 */   sw    $a0, 0x38($sp)
/* B0E52C 8009738C 8FA90040 */  lw    $t1, 0x40($sp)
/* B0E530 80097390 8FA8003C */  lw    $t0, 0x3c($sp)
/* B0E534 80097394 8E050034 */  lw    $a1, 0x34($s0)
/* B0E538 80097398 8D381DF0 */  lw    $t8, 0x1df0($t1)
/* B0E53C 8009739C 8FAB0038 */  lw    $t3, 0x38($sp)
/* B0E540 800973A0 3C0A8014 */  lui   $t2, %hi(D_8013F248) # $t2, 0x8014
/* B0E544 800973A4 0308C821 */  addu  $t9, $t8, $t0
/* B0E548 800973A8 8F260000 */  lw    $a2, ($t9)
/* B0E54C 800973AC 254AF248 */  addiu $t2, %lo(D_8013F248) # addiu $t2, $t2, -0xdb8
/* B0E550 800973B0 240C040C */  li    $t4, 1036
/* B0E554 800973B4 8FA70044 */  lw    $a3, 0x44($sp)
/* B0E558 800973B8 AFAC0020 */  sw    $t4, 0x20($sp)
/* B0E55C 800973BC AFAA001C */  sw    $t2, 0x1c($sp)
/* B0E560 800973C0 AFA00018 */  sw    $zero, 0x18($sp)
/* B0E564 800973C4 AFA00010 */  sw    $zero, 0x10($sp)
/* B0E568 800973C8 26040038 */  addiu $a0, $s0, 0x38
/* B0E56C 800973CC 0C000697 */  jal   func_80001A5C
/* B0E570 800973D0 AFAB0014 */   sw    $t3, 0x14($sp)
/* B0E574 800973D4 920D0030 */  lbu   $t5, 0x30($s0)
/* B0E578 800973D8 24020001 */  li    $v0, 1
/* B0E57C 800973DC 39AE0001 */  xori  $t6, $t5, 1
/* B0E580 800973E0 10000001 */  b     .L800973E8
/* B0E584 800973E4 A20E0030 */   sb    $t6, 0x30($s0)
.L800973E8:
/* B0E588 800973E8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B0E58C 800973EC 8FB00030 */  lw    $s0, 0x30($sp)
/* B0E590 800973F0 27BD0048 */  addiu $sp, $sp, 0x48
/* B0E594 800973F4 03E00008 */  jr    $ra
/* B0E598 800973F8 00000000 */   nop   

glabel func_800973FC
/* B0E59C 800973FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B0E5A0 80097400 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0E5A4 80097404 AFB00018 */  sw    $s0, 0x18($sp)
/* B0E5A8 80097408 80AE0031 */  lb    $t6, 0x31($a1)
/* B0E5AC 8009740C 24010001 */  li    $at, 1
/* B0E5B0 80097410 00808025 */  move  $s0, $a0
/* B0E5B4 80097414 15C1001C */  bne   $t6, $at, .L80097488
/* B0E5B8 80097418 00A03825 */   move  $a3, $a1
/* B0E5BC 8009741C 24A40058 */  addiu $a0, $a1, 0x58
/* B0E5C0 80097420 00002825 */  move  $a1, $zero
/* B0E5C4 80097424 00003025 */  move  $a2, $zero
/* B0E5C8 80097428 0C000CA0 */  jal   osRecvMesg
/* B0E5CC 8009742C AFA70024 */   sw    $a3, 0x24($sp)
/* B0E5D0 80097430 14400013 */  bnez  $v0, .L80097480
/* B0E5D4 80097434 8FA70024 */   lw    $a3, 0x24($sp)
/* B0E5D8 80097438 8CE20034 */  lw    $v0, 0x34($a3)
/* B0E5DC 8009743C 3C018000 */  lui   $at, 0x8000
/* B0E5E0 80097440 A0E00031 */  sb    $zero, 0x31($a3)
/* B0E5E4 80097444 00417821 */  addu  $t7, $v0, $at
/* B0E5E8 80097448 3C018016 */  lui   $at, %hi(D_80166FB4) # $at, 0x8016
/* B0E5EC 8009744C ACE2000C */  sw    $v0, 0xc($a3)
/* B0E5F0 80097450 AC2F6FB4 */  sw    $t7, %lo(D_80166FB4)($at)
/* B0E5F4 80097454 8CE5000C */  lw    $a1, 0xc($a3)
/* B0E5F8 80097458 0C026103 */  jal   func_8009840C
/* B0E5FC 8009745C 02002025 */   move  $a0, $s0
/* B0E600 80097460 02002025 */  move  $a0, $s0
/* B0E604 80097464 0C0239D4 */  jal   func_8008E750
/* B0E608 80097468 8E051C44 */   lw    $a1, 0x1c44($s0)
/* B0E60C 8009746C 02002025 */  move  $a0, $s0
/* B0E610 80097470 0C00C93C */  jal   func_800324F0
/* B0E614 80097474 26051C24 */   addiu $a1, $s0, 0x1c24
/* B0E618 80097478 10000004 */  b     .L8009748C
/* B0E61C 8009747C 24020001 */   li    $v0, 1
.L80097480:
/* B0E620 80097480 10000002 */  b     .L8009748C
/* B0E624 80097484 00001025 */   move  $v0, $zero
.L80097488:
/* B0E628 80097488 24020001 */  li    $v0, 1
.L8009748C:
/* B0E62C 8009748C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0E630 80097490 8FB00018 */  lw    $s0, 0x18($sp)
/* B0E634 80097494 27BD0020 */  addiu $sp, $sp, 0x20
/* B0E638 80097498 03E00008 */  jr    $ra
/* B0E63C 8009749C 00000000 */   nop   

glabel func_800974A0
/* B0E640 800974A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0E644 800974A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0E648 800974A8 AFA40018 */  sw    $a0, 0x18($sp)
/* B0E64C 800974AC AFA60020 */  sw    $a2, 0x20($sp)
/* B0E650 800974B0 8CA3000C */  lw    $v1, 0xc($a1)
/* B0E654 800974B4 3C018000 */  lui   $at, 0x8000
/* B0E658 800974B8 00A03825 */  move  $a3, $a1
/* B0E65C 800974BC 10600019 */  beqz  $v1, .L80097524
/* B0E660 800974C0 00617021 */   addu  $t6, $v1, $at
/* B0E664 800974C4 3C018016 */  lui   $at, %hi(D_80166FB4) # $at, 0x8016
/* B0E668 800974C8 AC2E6FB4 */  sw    $t6, %lo(D_80166FB4)($at)
/* B0E66C 800974CC 8CAF0008 */  lw    $t7, 8($a1)
/* B0E670 800974D0 3C058014 */  lui   $a1, %hi(D_8013F290) # $a1, 0x8014
/* B0E674 800974D4 3C048014 */  lui   $a0, %hi(D_8013F254) # $a0, 0x8014
/* B0E678 800974D8 91E20000 */  lbu   $v0, ($t7)
/* B0E67C 800974DC 2484F254 */  addiu $a0, %lo(D_8013F254) # addiu $a0, $a0, -0xdac
/* B0E680 800974E0 24A5F290 */  addiu $a1, %lo(D_8013F290) # addiu $a1, $a1, -0xd70
/* B0E684 800974E4 2C410003 */  sltiu $at, $v0, 3
/* B0E688 800974E8 14200006 */  bnez  $at, .L80097504
/* B0E68C 800974EC 24060465 */   li    $a2, 1125
/* B0E690 800974F0 0C0007FC */  jal   AssertMessage
/* B0E694 800974F4 AFA7001C */   sw    $a3, 0x1c($sp)
/* B0E698 800974F8 8FA7001C */  lw    $a3, 0x1c($sp)
/* B0E69C 800974FC 8CF80008 */  lw    $t8, 8($a3)
/* B0E6A0 80097500 93020000 */  lbu   $v0, ($t8)
.L80097504:
/* B0E6A4 80097504 0002C880 */  sll   $t9, $v0, 2
/* B0E6A8 80097508 3C018012 */  lui   $at, 0x8012
/* B0E6AC 8009750C 00390821 */  addu  $at, $at, $t9
/* B0E6B0 80097510 8C397110 */  lw    $t9, 0x7110($at)
/* B0E6B4 80097514 8FA40018 */  lw    $a0, 0x18($sp)
/* B0E6B8 80097518 00E02825 */  move  $a1, $a3
/* B0E6BC 8009751C 0320F809 */  jalr  $t9
/* B0E6C0 80097520 8FA60020 */  lw    $a2, 0x20($sp)
.L80097524:
/* B0E6C4 80097524 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0E6C8 80097528 27BD0018 */  addiu $sp, $sp, 0x18
/* B0E6CC 8009752C 03E00008 */  jr    $ra
/* B0E6D0 80097530 00000000 */   nop   

/* B0E6D4 80097534 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B0E6D8 80097538 AFB00018 */  sw    $s0, 0x18($sp)
/* B0E6DC 8009753C AFBF001C */  sw    $ra, 0x1c($sp)
/* B0E6E0 80097540 240EFFFF */  li    $t6, -1
/* B0E6E4 80097544 00808025 */  move  $s0, $a0
/* B0E6E8 80097548 00A03025 */  move  $a2, $a1
/* B0E6EC 8009754C A0AE0014 */  sb    $t6, 0x14($a1)
/* B0E6F0 80097550 ACA00020 */  sw    $zero, 0x20($a1)
/* B0E6F4 80097554 26051C24 */  addiu $a1, $s0, 0x1c24
/* B0E6F8 80097558 AFA50024 */  sw    $a1, 0x24($sp)
/* B0E6FC 8009755C 0C00C6C5 */  jal   func_80031B14
/* B0E700 80097560 AFA6002C */   sw    $a2, 0x2c($sp)
/* B0E704 80097564 8FA50024 */  lw    $a1, 0x24($sp)
/* B0E708 80097568 0C00C93C */  jal   func_800324F0
/* B0E70C 8009756C 02002025 */   move  $a0, $s0
/* B0E710 80097570 8FAF002C */  lw    $t7, 0x2c($sp)
/* B0E714 80097574 02002025 */  move  $a0, $s0
/* B0E718 80097578 0C020381 */  jal   func_80080E04
/* B0E71C 8009757C 81E50000 */   lb    $a1, ($t7)
/* B0E720 80097580 860200A4 */  lh    $v0, 0xa4($s0)
/* B0E724 80097584 28410051 */  slti  $at, $v0, 0x51
/* B0E728 80097588 14200003 */  bnez  $at, .L80097598
/* B0E72C 8009758C 28410064 */   slti  $at, $v0, 0x64
/* B0E730 80097590 54200004 */  bnezl $at, .L800975A4
/* B0E734 80097594 3C040001 */   lui   $a0, 1
.L80097598:
/* B0E738 80097598 0C0201E8 */  jal   func_800807A0
/* B0E73C 8009759C 02002025 */   move  $a0, $s0
/* B0E740 800975A0 3C040001 */  lui   $a0, 1
.L800975A4:
/* B0E744 800975A4 00902021 */  addu  $a0, $a0, $s0
/* B0E748 800975A8 0C03D9B0 */  jal   func_800F66C0
/* B0E74C 800975AC 80841CC0 */   lb    $a0, 0x1cc0($a0)
/* B0E750 800975B0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0E754 800975B4 8FB00018 */  lw    $s0, 0x18($sp)
/* B0E758 800975B8 27BD0028 */  addiu $sp, $sp, 0x28
/* B0E75C 800975BC 03E00008 */  jr    $ra
/* B0E760 800975C0 00000000 */   nop   
