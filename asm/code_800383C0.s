.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800383C0
/* AAF560 800383C0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AAF564 800383C4 AFB40038 */  sw    $s4, 0x38($sp)
/* AAF568 800383C8 3C148012 */  lui   $s4, %hi(D_80119D80) # $s4, 0x8012
/* AAF56C 800383CC 26949D80 */  addiu $s4, %lo(D_80119D80) # addiu $s4, $s4, -0x6280
/* AAF570 800383D0 AFBF003C */  sw    $ra, 0x3c($sp)
/* AAF574 800383D4 3C048014 */  lui   $a0, %hi(D_801385A4) # $a0, 0x8014
/* AAF578 800383D8 AFB30034 */  sw    $s3, 0x34($sp)
/* AAF57C 800383DC AFB20030 */  sw    $s2, 0x30($sp)
/* AAF580 800383E0 AFB1002C */  sw    $s1, 0x2c($sp)
/* AAF584 800383E4 AFB00028 */  sw    $s0, 0x28($sp)
/* AAF588 800383E8 248485A4 */  addiu $a0, %lo(D_801385A4) # addiu $a0, $a0, -0x7a5c
/* AAF58C 800383EC 0C00084C */  jal   DebugMessage
/* AAF590 800383F0 8E850000 */   lw    $a1, ($s4)
/* AAF594 800383F4 3C048014 */  lui   $a0, %hi(D_801385B8) # $a0, 0x8014
/* AAF598 800383F8 0C00084C */  jal   DebugMessage
/* AAF59C 800383FC 248485B8 */   addiu $a0, %lo(D_801385B8) # addiu $a0, $a0, -0x7a48
/* AAF5A0 80038400 8E8E0000 */  lw    $t6, ($s4)
/* AAF5A4 80038404 3C108011 */  lui   $s0, %hi(D_801162A0) # $s0, 0x8011
/* AAF5A8 80038408 261062A0 */  addiu $s0, %lo(D_801162A0) # addiu $s0, $s0, 0x62a0
/* AAF5AC 8003840C 11C0001D */  beqz  $t6, .L80038484
/* AAF5B0 80038410 00008825 */   move  $s1, $zero
/* AAF5B4 80038414 3C138014 */  lui   $s3, %hi(D_8013861C) # $s3, 0x8014
/* AAF5B8 80038418 3C128014 */  lui   $s2, %hi(D_801385F8) # $s2, 0x8014
/* AAF5BC 8003841C 265285F8 */  addiu $s2, %lo(D_801385F8) # addiu $s2, $s2, -0x7a08
/* AAF5C0 80038420 2673861C */  addiu $s3, %lo(D_8013861C) # addiu $s3, $s3, -0x79e4
/* AAF5C4 80038424 8E020018 */  lw    $v0, 0x18($s0)
.L80038428:
/* AAF5C8 80038428 02601825 */  move  $v1, $s3
/* AAF5CC 8003842C 10400003 */  beqz  $v0, .L8003843C
/* AAF5D0 80038430 00000000 */   nop   
/* AAF5D4 80038434 10000001 */  b     .L8003843C
/* AAF5D8 80038438 00401825 */   move  $v1, $v0
.L8003843C:
/* AAF5DC 8003843C 8E0F000C */  lw    $t7, 0xc($s0)
/* AAF5E0 80038440 8E050000 */  lw    $a1, ($s0)
/* AAF5E4 80038444 8E060004 */  lw    $a2, 4($s0)
/* AAF5E8 80038448 8E070008 */  lw    $a3, 8($s0)
/* AAF5EC 8003844C AFAF0010 */  sw    $t7, 0x10($sp)
/* AAF5F0 80038450 8E180010 */  lw    $t8, 0x10($s0)
/* AAF5F4 80038454 02402025 */  move  $a0, $s2
/* AAF5F8 80038458 AFB80014 */  sw    $t8, 0x14($sp)
/* AAF5FC 8003845C 8E190014 */  lw    $t9, 0x14($s0)
/* AAF600 80038460 AFA3001C */  sw    $v1, 0x1c($sp)
/* AAF604 80038464 0C00084C */  jal   DebugMessage
/* AAF608 80038468 AFB90018 */   sw    $t9, 0x18($sp)
/* AAF60C 8003846C 8E880000 */  lw    $t0, ($s4)
/* AAF610 80038470 26310001 */  addiu $s1, $s1, 1
/* AAF614 80038474 26100020 */  addiu $s0, $s0, 0x20
/* AAF618 80038478 0228082B */  sltu  $at, $s1, $t0
/* AAF61C 8003847C 5420FFEA */  bnezl $at, .L80038428
/* AAF620 80038480 8E020018 */   lw    $v0, 0x18($s0)
.L80038484:
/* AAF624 80038484 8FBF003C */  lw    $ra, 0x3c($sp)
/* AAF628 80038488 8FB00028 */  lw    $s0, 0x28($sp)
/* AAF62C 8003848C 8FB1002C */  lw    $s1, 0x2c($sp)
/* AAF630 80038490 8FB20030 */  lw    $s2, 0x30($sp)
/* AAF634 80038494 8FB30034 */  lw    $s3, 0x34($sp)
/* AAF638 80038498 8FB40038 */  lw    $s4, 0x38($sp)
/* AAF63C 8003849C 03E00008 */  jr    $ra
/* AAF640 800384A0 27BD0040 */   addiu $sp, $sp, 0x40

glabel func_800384A4
/* AAF644 800384A4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AAF648 800384A8 AFBF002C */  sw    $ra, 0x2c($sp)
/* AAF64C 800384AC AFA40030 */  sw    $a0, 0x30($sp)
/* AAF650 800384B0 AFA50034 */  sw    $a1, 0x34($sp)
/* AAF654 800384B4 AFB30028 */  sw    $s3, 0x28($sp)
/* AAF658 800384B8 AFB20024 */  sw    $s2, 0x24($sp)
/* AAF65C 800384BC AFB10020 */  sw    $s1, 0x20($sp)
/* AAF660 800384C0 AFB0001C */  sw    $s0, 0x1c($sp)
/* AAF664 800384C4 00002825 */  move  $a1, $zero
/* AAF668 800384C8 0C035B0D */  jal   func_800D6C34
/* AAF66C 800384CC 2404FFFE */   li    $a0, -2
/* AAF670 800384D0 3C128012 */  lui   $s2, %hi(D_80119D80) # $s2, 0x8012
/* AAF674 800384D4 26529D80 */  addiu $s2, %lo(D_80119D80) # addiu $s2, $s2, -0x6280
/* AAF678 800384D8 3C048014 */  lui   $a0, %hi(D_80138620) # $a0, 0x8014
/* AAF67C 800384DC 24848620 */  addiu $a0, %lo(D_80138620) # addiu $a0, $a0, -0x79e0
/* AAF680 800384E0 0C035C12 */  jal   func_800D7048
/* AAF684 800384E4 8E450000 */   lw    $a1, ($s2)
/* AAF688 800384E8 3C048014 */  lui   $a0, %hi(D_80138634) # $a0, 0x8014
/* AAF68C 800384EC 0C035C12 */  jal   func_800D7048
/* AAF690 800384F0 24848634 */   addiu $a0, %lo(D_80138634) # addiu $a0, $a0, -0x79cc
/* AAF694 800384F4 8E420000 */  lw    $v0, ($s2)
/* AAF698 800384F8 3C108011 */  lui   $s0, %hi(D_801162A0) # $s0, 0x8011
/* AAF69C 800384FC 261062A0 */  addiu $s0, %lo(D_801162A0) # addiu $s0, $s0, 0x62a0
/* AAF6A0 80038500 1840001C */  blez  $v0, .L80038574
/* AAF6A4 80038504 00008825 */   move  $s1, $zero
/* AAF6A8 80038508 3C138014 */  lui   $s3, %hi(D_8013866C) # $s3, 0x8014
/* AAF6AC 8003850C 3C128014 */  lui   $s2, %hi(D_80138654) # $s2, 0x8014
/* AAF6B0 80038510 26528654 */  addiu $s2, %lo(D_80138654) # addiu $s2, $s2, -0x79ac
/* AAF6B4 80038514 2673866C */  addiu $s3, %lo(D_8013866C) # addiu $s3, $s3, -0x7994
.L80038518:
/* AAF6B8 80038518 8E060010 */  lw    $a2, 0x10($s0)
/* AAF6BC 8003851C 8E0E000C */  lw    $t6, 0xc($s0)
/* AAF6C0 80038520 8E0F0008 */  lw    $t7, 8($s0)
/* AAF6C4 80038524 02402025 */  move  $a0, $s2
/* AAF6C8 80038528 10C0000E */  beqz  $a2, .L80038564
/* AAF6CC 8003852C 01CF4023 */   subu  $t0, $t6, $t7
/* AAF6D0 80038530 8E020018 */  lw    $v0, 0x18($s0)
/* AAF6D4 80038534 02202825 */  move  $a1, $s1
/* AAF6D8 80038538 00C83821 */  addu  $a3, $a2, $t0
/* AAF6DC 8003853C 10400003 */  beqz  $v0, .L8003854C
/* AAF6E0 80038540 02601825 */   move  $v1, $s3
/* AAF6E4 80038544 10000001 */  b     .L8003854C
/* AAF6E8 80038548 00401825 */   move  $v1, $v0
.L8003854C:
/* AAF6EC 8003854C 8218001E */  lb    $t8, 0x1e($s0)
/* AAF6F0 80038550 AFA30014 */  sw    $v1, 0x14($sp)
/* AAF6F4 80038554 0C035C12 */  jal   func_800D7048
/* AAF6F8 80038558 AFB80010 */   sw    $t8, 0x10($sp)
/* AAF6FC 8003855C 3C028012 */  lui   $v0, %hi(D_80119D80) # $v0, 0x8012
/* AAF700 80038560 8C429D80 */  lw    $v0, %lo(D_80119D80)($v0)
.L80038564:
/* AAF704 80038564 26310001 */  addiu $s1, $s1, 1
/* AAF708 80038568 0222082A */  slt   $at, $s1, $v0
/* AAF70C 8003856C 1420FFEA */  bnez  $at, .L80038518
/* AAF710 80038570 26100020 */   addiu $s0, $s0, 0x20
.L80038574:
/* AAF714 80038574 8FBF002C */  lw    $ra, 0x2c($sp)
/* AAF718 80038578 8FB0001C */  lw    $s0, 0x1c($sp)
/* AAF71C 8003857C 8FB10020 */  lw    $s1, 0x20($sp)
/* AAF720 80038580 8FB20024 */  lw    $s2, 0x24($sp)
/* AAF724 80038584 8FB30028 */  lw    $s3, 0x28($sp)
/* AAF728 80038588 03E00008 */  jr    $ra
/* AAF72C 8003858C 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_80038590
/* AAF730 80038590 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AAF734 80038594 AFBF0014 */  sw    $ra, 0x14($sp)
/* AAF738 80038598 240E01D7 */  li    $t6, 471
/* AAF73C 8003859C 3C018012 */  lui   $at, %hi(D_80119D80) # $at, 0x8012
/* AAF740 800385A0 3C048016 */  lui   $a0, %hi(D_8015BC20) # $a0, 0x8016
/* AAF744 800385A4 3C058004 */  lui   $a1, %hi(func_800384A4) # $a1, 0x8004
/* AAF748 800385A8 AC2E9D80 */  sw    $t6, %lo(D_80119D80)($at)
/* AAF74C 800385AC 24A584A4 */  addiu $a1, %lo(func_800384A4) # addiu $a1, $a1, -0x7b5c
/* AAF750 800385B0 2484BC20 */  addiu $a0, %lo(D_8015BC20) # addiu $a0, $a0, -0x43e0
/* AAF754 800385B4 00003025 */  move  $a2, $zero
/* AAF758 800385B8 0C035077 */  jal   func_800D41DC
/* AAF75C 800385BC 00003825 */   move  $a3, $zero
/* AAF760 800385C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AAF764 800385C4 27BD0018 */  addiu $sp, $sp, 0x18
/* AAF768 800385C8 03E00008 */  jr    $ra
/* AAF76C 800385CC 00000000 */   nop   

glabel func_800385D0
/* AAF770 800385D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AAF774 800385D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AAF778 800385D8 3C048016 */  lui   $a0, %hi(D_8015BC20) # $a0, 0x8016
/* AAF77C 800385DC 0C0350B0 */  jal   func_800D42C0
/* AAF780 800385E0 2484BC20 */   addiu $a0, %lo(D_8015BC20) # addiu $a0, $a0, -0x43e0
/* AAF784 800385E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AAF788 800385E8 3C018012 */  lui   $at, %hi(D_80119D80) # $at, 0x8012
/* AAF78C 800385EC AC209D80 */  sw    $zero, %lo(D_80119D80)($at)
/* AAF790 800385F0 03E00008 */  jr    $ra
/* AAF794 800385F4 27BD0018 */   addiu $sp, $sp, 0x18
