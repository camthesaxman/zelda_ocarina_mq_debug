.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
  
glabel func_800A9D40
/* B20EE0 800A9D40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B20EE4 800A9D44 AFB00018 */  sw    $s0, 0x18($sp)
/* B20EE8 800A9D48 3C108013 */  lui   $s0, %hi(D_8012A690) # $s0, 0x8013
/* B20EEC 800A9D4C 2610A690 */  addiu $s0, %lo(D_8012A690) # addiu $s0, $s0, -0x5970
/* B20EF0 800A9D50 8E0E000C */  lw    $t6, 0xc($s0)
/* B20EF4 800A9D54 3C01A000 */  lui   $at, 0xa000
/* B20EF8 800A9D58 AFA60028 */  sw    $a2, 0x28($sp)
/* B20EFC 800A9D5C AFA7002C */  sw    $a3, 0x2c($sp)
/* B20F00 800A9D60 00811021 */  addu  $v0, $a0, $at
/* B20F04 800A9D64 30E700FF */  andi  $a3, $a3, 0xff
/* B20F08 800A9D68 30C600FF */  andi  $a2, $a2, 0xff
/* B20F0C 800A9D6C AFBF001C */  sw    $ra, 0x1c($sp)
/* B20F10 800A9D70 AFA40020 */  sw    $a0, 0x20($sp)
/* B20F14 800A9D74 104E0022 */  beq   $v0, $t6, .L800A9E00
/* B20F18 800A9D78 AFA50024 */   sw    $a1, 0x24($sp)
/* B20F1C 800A9D7C 93AF0027 */  lbu   $t7, 0x27($sp)
/* B20F20 800A9D80 3C018013 */  lui   $at, %hi(D_8012A69C) # $at, 0x8013
/* B20F24 800A9D84 93B8003B */  lbu   $t8, 0x3b($sp)
/* B20F28 800A9D88 A20F0004 */  sb    $t7, 4($s0)
/* B20F2C 800A9D8C AC22A69C */  sw    $v0, %lo(D_8012A69C)($at)
/* B20F30 800A9D90 93B90033 */  lbu   $t9, 0x33($sp)
/* B20F34 800A9D94 93A80037 */  lbu   $t0, 0x37($sp)
/* B20F38 800A9D98 8FA9003C */  lw    $t1, 0x3c($sp)
/* B20F3C 800A9D9C 3C048013 */  lui   $a0, %hi(D_8012A6A4) # $a0, 0x8013
/* B20F40 800A9DA0 A2070005 */  sb    $a3, 5($s0)
/* B20F44 800A9DA4 A2060009 */  sb    $a2, 9($s0)
/* B20F48 800A9DA8 2484A6A4 */  addiu $a0, %lo(D_8012A6A4) # addiu $a0, $a0, -0x595c
/* B20F4C 800A9DAC 24050060 */  li    $a1, 96
/* B20F50 800A9DB0 A2180008 */  sb    $t8, 8($s0)
/* B20F54 800A9DB4 A2190006 */  sb    $t9, 6($s0)
/* B20F58 800A9DB8 A2080007 */  sb    $t0, 7($s0)
/* B20F5C 800A9DBC 0C001114 */  jal   bzero
/* B20F60 800A9DC0 AE090010 */   sw    $t1, 0x10($s0)
/* B20F64 800A9DC4 0C001CA0 */  jal   func_80007280
/* B20F68 800A9DC8 00000000 */   nop   
/* B20F6C 800A9DCC 3C038001 */  lui   $v1, %hi(D_8000AD7C) # $v1, 0x8001
/* B20F70 800A9DD0 2463AD7C */  addiu $v1, %lo(D_8000AD7C) # addiu $v1, $v1, -0x5284
/* B20F74 800A9DD4 8C6A0000 */  lw    $t2, ($v1)
/* B20F78 800A9DD8 AC700000 */  sw    $s0, ($v1)
/* B20F7C 800A9DDC 00402025 */  move  $a0, $v0
/* B20F80 800A9DE0 0C001CBC */  jal   func_800072F0
/* B20F84 800A9DE4 AE0A0000 */   sw    $t2, ($s0)
/* B20F88 800A9DE8 8FAC0020 */  lw    $t4, 0x20($sp)
/* B20F8C 800A9DEC 3C0B8013 */  lui   $t3, %hi(D_8012A71C) # $t3, 0x8013
/* B20F90 800A9DF0 256BA71C */  addiu $t3, %lo(D_8012A71C) # addiu $t3, $t3, -0x58e4
/* B20F94 800A9DF4 A2000076 */  sb    $zero, 0x76($s0)
/* B20F98 800A9DF8 AE0B0078 */  sw    $t3, 0x78($s0)
/* B20F9C 800A9DFC AE0C0080 */  sw    $t4, 0x80($s0)
.L800A9E00:
/* B20FA0 800A9E00 8FBF001C */  lw    $ra, 0x1c($sp)
/* B20FA4 800A9E04 8FB00018 */  lw    $s0, 0x18($sp)
/* B20FA8 800A9E08 27BD0020 */  addiu $sp, $sp, 0x20
/* B20FAC 800A9E0C 03E00008 */  jr    $ra
/* B20FB0 800A9E10 00000000 */   nop   

glabel func_800A9E14
/* B20FB4 800A9E14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B20FB8 800A9E18 AFA40020 */  sw    $a0, 0x20($sp)
/* B20FBC 800A9E1C AFBF0014 */  sw    $ra, 0x14($sp)
/* B20FC0 800A9E20 AFA50024 */  sw    $a1, 0x24($sp)
/* B20FC4 800A9E24 AFA60028 */  sw    $a2, 0x28($sp)
/* B20FC8 800A9E28 3C048013 */  lui   $a0, %hi(D_8012A71C) # $a0, 0x8013
/* B20FCC 800A9E2C 2484A71C */  addiu $a0, %lo(D_8012A71C) # addiu $a0, $a0, -0x58e4
/* B20FD0 800A9E30 24060001 */  li    $a2, 1
/* B20FD4 800A9E34 0C001874 */  jal   osCreateMesgQueue
/* B20FD8 800A9E38 27A5001C */   addiu $a1, $sp, 0x1c
/* B20FDC 800A9E3C 8FA40020 */  lw    $a0, 0x20($sp)
/* B20FE0 800A9E40 8FA50024 */  lw    $a1, 0x24($sp)
/* B20FE4 800A9E44 3C028013 */  lui   $v0, %hi(D_8012A690) # $v0, 0x8013
/* B20FE8 800A9E48 2442A690 */  addiu $v0, %lo(D_8012A690) # addiu $v0, $v0, -0x5970
/* B20FEC 800A9E4C AC44007C */  sw    $a0, 0x7c($v0)
/* B20FF0 800A9E50 0C0011B0 */  jal   osWritebackDCache
/* B20FF4 800A9E54 AC450084 */   sw    $a1, 0x84($v0)
/* B20FF8 800A9E58 3C048013 */  lui   $a0, %hi(D_8012A690) # $a0, 0x8013
/* B20FFC 800A9E5C 3C058013 */  lui   $a1, %hi(D_8012A704) # $a1, 0x8013
/* B21000 800A9E60 24A5A704 */  addiu $a1, %lo(D_8012A704) # addiu $a1, $a1, -0x58fc
/* B21004 800A9E64 2484A690 */  addiu $a0, %lo(D_8012A690) # addiu $a0, $a0, -0x5970
/* B21008 800A9E68 0C001804 */  jal   func_80006010
/* B2100C 800A9E6C 8FA60028 */   lw    $a2, 0x28($sp)
/* B21010 800A9E70 3C048013 */  lui   $a0, %hi(D_8012A71C) # $a0, 0x8013
/* B21014 800A9E74 2484A71C */  addiu $a0, %lo(D_8012A71C) # addiu $a0, $a0, -0x58e4
/* B21018 800A9E78 27A5001C */  addiu $a1, $sp, 0x1c
/* B2101C 800A9E7C 0C000CA0 */  jal   osRecvMesg
/* B21020 800A9E80 24060001 */   li    $a2, 1
/* B21024 800A9E84 8FA40020 */  lw    $a0, 0x20($sp)
/* B21028 800A9E88 0C001880 */  jal   osInvalDCache
/* B2102C 800A9E8C 8FA50024 */   lw    $a1, 0x24($sp)
/* B21030 800A9E90 8FBF0014 */  lw    $ra, 0x14($sp)
/* B21034 800A9E94 27BD0020 */  addiu $sp, $sp, 0x20
/* B21038 800A9E98 03E00008 */  jr    $ra
/* B2103C 800A9E9C 00000000 */   nop   

glabel func_800A9EA0
/* B21040 800A9EA0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B21044 800A9EA4 AFA70034 */  sw    $a3, 0x34($sp)
/* B21048 800A9EA8 8FAE0034 */  lw    $t6, 0x34($sp)
/* B2104C 800A9EAC AFA40028 */  sw    $a0, 0x28($sp)
/* B21050 800A9EB0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B21054 800A9EB4 AFA5002C */  sw    $a1, 0x2c($sp)
/* B21058 800A9EB8 AFA60030 */  sw    $a2, 0x30($sp)
/* B2105C 800A9EBC 3C048014 */  lui   $a0, %hi(D_80141030) # $a0, 0x8014
/* B21060 800A9EC0 24841030 */  addiu $a0, %lo(D_80141030) # addiu $a0, $a0, 0x1030
/* B21064 800A9EC4 8FA70030 */  lw    $a3, 0x30($sp)
/* B21068 800A9EC8 8FA6002C */  lw    $a2, 0x2c($sp)
/* B2106C 800A9ECC 8FA50028 */  lw    $a1, 0x28($sp)
/* B21070 800A9ED0 0C00084C */  jal   DebugMessage
/* B21074 800A9ED4 AFAE0010 */   sw    $t6, 0x10($sp)
/* B21078 800A9ED8 240F000D */  li    $t7, 13
/* B2107C 800A9EDC 24180002 */  li    $t8, 2
/* B21080 800A9EE0 2419000C */  li    $t9, 12
/* B21084 800A9EE4 AFB90018 */  sw    $t9, 0x18($sp)
/* B21088 800A9EE8 AFB80014 */  sw    $t8, 0x14($sp)
/* B2108C 800A9EEC AFAF0010 */  sw    $t7, 0x10($sp)
/* B21090 800A9EF0 8FA40028 */  lw    $a0, 0x28($sp)
/* B21094 800A9EF4 24050003 */  li    $a1, 3
/* B21098 800A9EF8 24060001 */  li    $a2, 1
/* B2109C 800A9EFC 24070005 */  li    $a3, 5
/* B210A0 800A9F00 0C02A750 */  jal   func_800A9D40
/* B210A4 800A9F04 AFA0001C */   sw    $zero, 0x1c($sp)
/* B210A8 800A9F08 8FA4002C */  lw    $a0, 0x2c($sp)
/* B210AC 800A9F0C 8FA50030 */  lw    $a1, 0x30($sp)
/* B210B0 800A9F10 0C02A785 */  jal   func_800A9E14
/* B210B4 800A9F14 8FA60034 */   lw    $a2, 0x34($sp)
/* B210B8 800A9F18 8FBF0024 */  lw    $ra, 0x24($sp)
/* B210BC 800A9F1C 27BD0028 */  addiu $sp, $sp, 0x28
/* B210C0 800A9F20 03E00008 */  jr    $ra
/* B210C4 800A9F24 00000000 */   nop   
