.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osSetThreadPri
/* 007030 80006430 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 007034 80006434 AFBF001C */  sw    $ra, 0x1c($sp)
/* 007038 80006438 AFA40028 */  sw    $a0, 0x28($sp)
/* 00703C 8000643C AFA5002C */  sw    $a1, 0x2c($sp)
/* 007040 80006440 0C001CA0 */  jal   func_80007280
/* 007044 80006444 AFB00018 */   sw    $s0, 0x18($sp)
/* 007048 80006448 8FAE0028 */  lw    $t6, 0x28($sp)
/* 00704C 8000644C 00408025 */  move  $s0, $v0
/* 007050 80006450 15C00004 */  bnez  $t6, .L80006464
/* 007054 80006454 00000000 */   nop   
/* 007058 80006458 3C0F8001 */  lui   $t7, %hi(D_8000AD50) # $t7, 0x8001
/* 00705C 8000645C 8DEFAD50 */  lw    $t7, %lo(D_8000AD50)($t7)
/* 007060 80006460 AFAF0028 */  sw    $t7, 0x28($sp)
.L80006464:
/* 007064 80006464 8FB80028 */  lw    $t8, 0x28($sp)
/* 007068 80006468 8FA8002C */  lw    $t0, 0x2c($sp)
/* 00706C 8000646C 8F190004 */  lw    $t9, 4($t8)
/* 007070 80006470 13280020 */  beq   $t9, $t0, .L800064F4
/* 007074 80006474 00000000 */   nop   
/* 007078 80006478 AF080004 */  sw    $t0, 4($t8)
/* 00707C 8000647C 3C0A8001 */  lui   $t2, %hi(D_8000AD50) # $t2, 0x8001
/* 007080 80006480 8D4AAD50 */  lw    $t2, %lo(D_8000AD50)($t2)
/* 007084 80006484 8FA90028 */  lw    $t1, 0x28($sp)
/* 007088 80006488 112A000C */  beq   $t1, $t2, .L800064BC
/* 00708C 8000648C 00000000 */   nop   
/* 007090 80006490 952B0010 */  lhu   $t3, 0x10($t1)
/* 007094 80006494 24010001 */  li    $at, 1
/* 007098 80006498 11610008 */  beq   $t3, $at, .L800064BC
/* 00709C 8000649C 00000000 */   nop   
/* 0070A0 800064A0 8D240008 */  lw    $a0, 8($t1)
/* 0070A4 800064A4 0C0010C0 */  jal   __osDequeueThread
/* 0070A8 800064A8 01202825 */   move  $a1, $t1
/* 0070AC 800064AC 8FAC0028 */  lw    $t4, 0x28($sp)
/* 0070B0 800064B0 8D840008 */  lw    $a0, 8($t4)
/* 0070B4 800064B4 0C001045 */  jal   func_80004114
/* 0070B8 800064B8 01802825 */   move  $a1, $t4
.L800064BC:
/* 0070BC 800064BC 3C0D8001 */  lui   $t5, %hi(D_8000AD50) # $t5, 0x8001
/* 0070C0 800064C0 3C0F8001 */  lui   $t7, %hi(D_8000AD48) # $t7, 0x8001
/* 0070C4 800064C4 8DEFAD48 */  lw    $t7, %lo(D_8000AD48)($t7)
/* 0070C8 800064C8 8DADAD50 */  lw    $t5, %lo(D_8000AD50)($t5)
/* 0070CC 800064CC 8DF90004 */  lw    $t9, 4($t7)
/* 0070D0 800064D0 8DAE0004 */  lw    $t6, 4($t5)
/* 0070D4 800064D4 01D9082A */  slt   $at, $t6, $t9
/* 0070D8 800064D8 10200006 */  beqz  $at, .L800064F4
/* 0070DC 800064DC 00000000 */   nop   
/* 0070E0 800064E0 24080002 */  li    $t0, 2
/* 0070E4 800064E4 3C048001 */  lui   $a0, %hi(D_8000AD48) # $a0, 0x8001
/* 0070E8 800064E8 A5A80010 */  sh    $t0, 0x10($t5)
/* 0070EC 800064EC 0C001005 */  jal   func_80004014
/* 0070F0 800064F0 2484AD48 */   addiu $a0, %lo(D_8000AD48) # addiu $a0, $a0, -0x52b8
.L800064F4:
/* 0070F4 800064F4 0C001CBC */  jal   func_800072F0
/* 0070F8 800064F8 02002025 */   move  $a0, $s0
/* 0070FC 800064FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 007100 80006500 8FB00018 */  lw    $s0, 0x18($sp)
/* 007104 80006504 27BD0028 */  addiu $sp, $sp, 0x28
/* 007108 80006508 03E00008 */  jr    $ra
/* 00710C 8000650C 00000000 */   nop   