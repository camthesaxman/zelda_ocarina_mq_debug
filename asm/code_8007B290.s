.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8007B290
/* AF2430 8007B290 3C028012 */  lui   $v0, %hi(D_801200F8) # $v0, 0x8012
/* AF2434 8007B294 244200F8 */  addiu $v0, %lo(D_801200F8) # addiu $v0, $v0, 0xf8
/* AF2438 8007B298 8C4E0010 */  lw    $t6, 0x10($v0)
/* AF243C 8007B29C 8C4F000C */  lw    $t7, 0xc($v0)
/* AF2440 8007B2A0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AF2444 8007B2A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF2448 8007B2A8 3C068014 */  lui   $a2, %hi(D_8013CA20) # $a2, 0x8014
/* AF244C 8007B2AC 24C6CA20 */  addiu $a2, %lo(D_8013CA20) # addiu $a2, $a2, -0x35e0
/* AF2450 8007B2B0 240700EB */  li    $a3, 235
/* AF2454 8007B2B4 0C031521 */  jal   game_alloc
/* AF2458 8007B2B8 01CF2823 */   subu  $a1, $t6, $t7
/* AF245C 8007B2BC 3C018012 */  lui   $at, %hi(D_801200F8) # $at, 0x8012
/* AF2460 8007B2C0 3C048014 */  lui   $a0, %hi(D_8013CA30) # $a0, 0x8014
/* AF2464 8007B2C4 3C068014 */  lui   $a2, %hi(D_8013CA40) # $a2, 0x8014
/* AF2468 8007B2C8 AC2200F8 */  sw    $v0, %lo(D_801200F8)($at)
/* AF246C 8007B2CC 24C6CA40 */  addiu $a2, %lo(D_8013CA40) # addiu $a2, $a2, -0x35c0
/* AF2470 8007B2D0 2484CA30 */  addiu $a0, %lo(D_8013CA30) # addiu $a0, $a0, -0x35d0
/* AF2474 8007B2D4 00402825 */  move  $a1, $v0
/* AF2478 8007B2D8 0C000B58 */  jal   NullPointerCheck
/* AF247C 8007B2DC 240700EC */   li    $a3, 236
/* AF2480 8007B2E0 3C188012 */  lui   $t8, %hi(D_801200F8) # $t8, 0x8012
/* AF2484 8007B2E4 8F1800F8 */  lw    $t8, %lo(D_801200F8)($t8)
/* AF2488 8007B2E8 3C048012 */  lui   $a0, %hi(D_801200FC) # $a0, 0x8012
/* AF248C 8007B2EC 3C058012 */  lui   $a1, %hi(D_80120100) # $a1, 0x8012
/* AF2490 8007B2F0 3C068012 */  lui   $a2, %hi(D_80120104) # $a2, 0x8012
/* AF2494 8007B2F4 3C078012 */  lui   $a3, %hi(D_80120108) # $a3, 0x8012
/* AF2498 8007B2F8 8CE70108 */  lw    $a3, %lo(D_80120108)($a3)
/* AF249C 8007B2FC 8CC60104 */  lw    $a2, %lo(D_80120104)($a2)
/* AF24A0 8007B300 8CA50100 */  lw    $a1, %lo(D_80120100)($a1)
/* AF24A4 8007B304 8C8400FC */  lw    $a0, %lo(D_801200FC)($a0)
/* AF24A8 8007B308 0C03F188 */  jal   func_800FC620
/* AF24AC 8007B30C AFB80010 */   sw    $t8, 0x10($sp)
/* AF24B0 8007B310 3C038012 */  lui   $v1, %hi(D_8012010C) # $v1, 0x8012
/* AF24B4 8007B314 8C63010C */  lw    $v1, %lo(D_8012010C)($v1)
/* AF24B8 8007B318 3C048016 */  lui   $a0, %hi(D_8015FFB0) # $a0, 0x8016
/* AF24BC 8007B31C 3C198086 */  lui   $t9, %hi(D_8085F5E8) # $t9, 0x8086
/* AF24C0 8007B320 2484FFB0 */  addiu $a0, %lo(D_8015FFB0) # addiu $a0, $a0, -0x50
/* AF24C4 8007B324 2739F5E8 */  addiu $t9, %lo(D_8085F5E8) # addiu $t9, $t9, -0xa18
/* AF24C8 8007B328 10600008 */  beqz  $v1, .L8007B34C
/* AF24CC 8007B32C AC990000 */   sw    $t9, ($a0)
/* AF24D0 8007B330 3C088012 */  lui   $t0, %hi(D_80120104) # $t0, 0x8012
/* AF24D4 8007B334 3C098012 */  lui   $t1, %hi(D_801200F8) # $t1, 0x8012
/* AF24D8 8007B338 8D2900F8 */  lw    $t1, %lo(D_801200F8)($t1)
/* AF24DC 8007B33C 8D080104 */  lw    $t0, %lo(D_80120104)($t0)
/* AF24E0 8007B340 01095023 */  subu  $t2, $t0, $t1
/* AF24E4 8007B344 10000002 */  b     .L8007B350
/* AF24E8 8007B348 006A1023 */   subu  $v0, $v1, $t2
.L8007B34C:
/* AF24EC 8007B34C 00001025 */  move  $v0, $zero
.L8007B350:
/* AF24F0 8007B350 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF24F4 8007B354 AC820000 */  sw    $v0, ($a0)
/* AF24F8 8007B358 27BD0020 */  addiu $sp, $sp, 0x20
/* AF24FC 8007B35C 03E00008 */  jr    $ra
/* AF2500 8007B360 00000000 */   nop   

glabel func_8007B364
/* AF2504 8007B364 3C018012 */  lui   $at, %hi(D_801200F8) # $at, 0x8012
/* AF2508 8007B368 AC2000F8 */  sw    $zero, %lo(D_801200F8)($at)
/* AF250C 8007B36C 3C018016 */  lui   $at, 0x8016
/* AF2510 8007B370 AFA40000 */  sw    $a0, ($sp)
/* AF2514 8007B374 03E00008 */  jr    $ra
/* AF2518 8007B378 AC20FFB0 */   sw    $zero, -0x50($at)

glabel func_8007B37C
/* AF251C 8007B37C 27BDFF30 */  addiu $sp, $sp, -0xd0
/* AF2520 8007B380 3C038016 */  lui   $v1, %hi(D_8015FFD0) # $v1, 0x8016
/* AF2524 8007B384 8C63FFD0 */  lw    $v1, %lo(D_8015FFD0)($v1)
/* AF2528 8007B388 AFB1001C */  sw    $s1, 0x1c($sp)
/* AF252C 8007B38C 3C028016 */  lui   $v0, %hi(D_8015FA62) # $v0, 0x8016
/* AF2530 8007B390 00808825 */  move  $s1, $a0
/* AF2534 8007B394 AFBF003C */  sw    $ra, 0x3c($sp)
/* AF2538 8007B398 AFBE0038 */  sw    $fp, 0x38($sp)
/* AF253C 8007B39C AFB70034 */  sw    $s7, 0x34($sp)
/* AF2540 8007B3A0 AFB60030 */  sw    $s6, 0x30($sp)
/* AF2544 8007B3A4 AFB5002C */  sw    $s5, 0x2c($sp)
/* AF2548 8007B3A8 AFB40028 */  sw    $s4, 0x28($sp)
/* AF254C 8007B3AC AFB30024 */  sw    $s3, 0x24($sp)
/* AF2550 8007B3B0 AFB20020 */  sw    $s2, 0x20($sp)
/* AF2554 8007B3B4 AFB00018 */  sw    $s0, 0x18($sp)
/* AF2558 8007B3B8 10600010 */  beqz  $v1, .L8007B3FC
/* AF255C 8007B3BC 9442FA62 */   lhu   $v0, %lo(D_8015FA62)($v0)
/* AF2560 8007B3C0 8C6E001C */  lw    $t6, 0x1c($v1)
/* AF2564 8007B3C4 3C060001 */  lui   $a2, 1
/* AF2568 8007B3C8 00C43021 */  addu  $a2, $a2, $a0
/* AF256C 8007B3CC 01C27821 */  addu  $t7, $t6, $v0
/* AF2570 8007B3D0 91E70000 */  lbu   $a3, ($t7)
/* AF2574 8007B3D4 84C6074C */  lh    $a2, 0x74c($a2)
/* AF2578 8007B3D8 3C048014 */  lui   $a0, %hi(D_8013CA50) # $a0, 0x8014
/* AF257C 8007B3DC 2484CA50 */  addiu $a0, %lo(D_8013CA50) # addiu $a0, $a0, -0x35b0
/* AF2580 8007B3E0 00C7082A */  slt   $at, $a2, $a3
/* AF2584 8007B3E4 14200005 */  bnez  $at, .L8007B3FC
/* AF2588 8007B3E8 3C058014 */   lui   $a1, %hi(D_8013CAA4) # $a1, 0x8014
/* AF258C 8007B3EC 0C00084C */  jal   DebugMessage
/* AF2590 8007B3F0 24A5CAA4 */   addiu $a1, %lo(D_8013CAA4) # addiu $a1, $a1, -0x355c
/* AF2594 8007B3F4 1000012A */  b     .L8007B8A0
/* AF2598 8007B3F8 8FBF003C */   lw    $ra, 0x3c($sp)
.L8007B3FC:
/* AF259C 8007B3FC 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AF25A0 8007B400 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AF25A4 8007B404 02211821 */  addu  $v1, $s1, $at
/* AF25A8 8007B408 846B025C */  lh    $t3, 0x25c($v1)
/* AF25AC 8007B40C 3C188016 */  lui   $t8, %hi(D_8015FFB0) # $t8, 0x8016
/* AF25B0 8007B410 8F18FFB0 */  lw    $t8, %lo(D_8015FFB0)($t8)
/* AF25B4 8007B414 000B60C0 */  sll   $t4, $t3, 3
/* AF25B8 8007B418 0002C880 */  sll   $t9, $v0, 2
/* AF25BC 8007B41C 018B6023 */  subu  $t4, $t4, $t3
/* AF25C0 8007B420 000C60C0 */  sll   $t4, $t4, 3
/* AF25C4 8007B424 03194821 */  addu  $t1, $t8, $t9
/* AF25C8 8007B428 8D2A0000 */  lw    $t2, ($t1)
/* AF25CC 8007B42C 8E250000 */  lw    $a1, ($s1)
/* AF25D0 8007B430 018B6021 */  addu  $t4, $t4, $t3
/* AF25D4 8007B434 000C6040 */  sll   $t4, $t4, 1
/* AF25D8 8007B438 3C068014 */  lui   $a2, %hi(D_8013CAA8) # $a2, 0x8014
/* AF25DC 8007B43C 24C6CAA8 */  addiu $a2, %lo(D_8013CAA8) # addiu $a2, $a2, -0x3558
/* AF25E0 8007B440 AFB100D0 */  sw    $s1, 0xd0($sp)
/* AF25E4 8007B444 AFA30050 */  sw    $v1, 0x50($sp)
/* AF25E8 8007B448 27A4009C */  addiu $a0, $sp, 0x9c
/* AF25EC 8007B44C 2407012F */  li    $a3, 303
/* AF25F0 8007B450 014C9021 */  addu  $s2, $t2, $t4
/* AF25F4 8007B454 0C031AB1 */  jal   func_800C6AC4
/* AF25F8 8007B458 00A08025 */   move  $s0, $a1
/* AF25FC 8007B45C 3C1E8012 */  lui   $fp, %hi(D_801200B0) # $fp, 0x8012
/* AF2600 8007B460 3C158012 */  lui   $s5, %hi(D_80120060) # $s5, 0x8012
/* AF2604 8007B464 26B50060 */  addiu $s5, %lo(D_80120060) # addiu $s5, $s5, 0x60
/* AF2608 8007B468 27DE00B0 */  addiu $fp, %lo(D_801200B0) # addiu $fp, $fp, 0xb0
/* AF260C 8007B46C 3C170700 */  lui   $s7, 0x700
/* AF2610 8007B470 3C16F500 */  lui   $s6, 0xf500
/* AF2614 8007B474 3C14E700 */  lui   $s4, 0xe700
.L8007B478:
/* AF2618 8007B478 824D0000 */  lb    $t5, ($s2)
/* AF261C 8007B47C 2401FFFF */  li    $at, -1
/* AF2620 8007B480 51A10100 */  beql  $t5, $at, .L8007B884
/* AF2624 8007B484 8FAA00D0 */   lw    $t2, 0xd0($sp)
/* AF2628 8007B488 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF262C 8007B48C 3C18E300 */  lui   $t8, (0xE3001001 >> 16) # lui $t8, 0xe300
/* AF2630 8007B490 37181001 */  ori   $t8, (0xE3001001 & 0xFFFF) # ori $t8, $t8, 0x1001
/* AF2634 8007B494 244E0008 */  addiu $t6, $v0, 8
/* AF2638 8007B498 AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* AF263C 8007B49C AC400004 */  sw    $zero, 4($v0)
/* AF2640 8007B4A0 AC540000 */  sw    $s4, ($v0)
/* AF2644 8007B4A4 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2648 8007B4A8 3C09FA00 */  lui   $t1, 0xfa00
/* AF264C 8007B4AC 2401FF00 */  li    $at, -256
/* AF2650 8007B4B0 244F0008 */  addiu $t7, $v0, 8
/* AF2654 8007B4B4 AE0F02B0 */  sw    $t7, 0x2b0($s0)
/* AF2658 8007B4B8 AC400004 */  sw    $zero, 4($v0)
/* AF265C 8007B4BC AC580000 */  sw    $t8, ($v0)
/* AF2660 8007B4C0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2664 8007B4C4 3C0FFB00 */  lui   $t7, 0xfb00
/* AF2668 8007B4C8 00009825 */  move  $s3, $zero
/* AF266C 8007B4CC 24590008 */  addiu $t9, $v0, 8
/* AF2670 8007B4D0 AE1902B0 */  sw    $t9, 0x2b0($s0)
/* AF2674 8007B4D4 AC490000 */  sw    $t1, ($v0)
/* AF2678 8007B4D8 8FAB0050 */  lw    $t3, 0x50($sp)
/* AF267C 8007B4DC 26510002 */  addiu $s1, $s2, 2
/* AF2680 8007B4E0 956A0254 */  lhu   $t2, 0x254($t3)
/* AF2684 8007B4E4 314C00FF */  andi  $t4, $t2, 0xff
/* AF2688 8007B4E8 01816825 */  or    $t5, $t4, $at
/* AF268C 8007B4EC AC4D0004 */  sw    $t5, 4($v0)
/* AF2690 8007B4F0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2694 8007B4F4 244E0008 */  addiu $t6, $v0, 8
/* AF2698 8007B4F8 AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* AF269C 8007B4FC AC4F0000 */  sw    $t7, ($v0)
/* AF26A0 8007B500 8FB80050 */  lw    $t8, 0x50($sp)
/* AF26A4 8007B504 97190254 */  lhu   $t9, 0x254($t8)
/* AF26A8 8007B508 332900FF */  andi  $t1, $t9, 0xff
/* AF26AC 8007B50C AC490004 */  sw    $t1, 4($v0)
/* AF26B0 8007B510 924B0001 */  lbu   $t3, 1($s2)
/* AF26B4 8007B514 196000D8 */  blez  $t3, .L8007B878
/* AF26B8 8007B518 00000000 */   nop   
/* AF26BC 8007B51C 82420000 */  lb    $v0, ($s2)
.L8007B520:
/* AF26C0 8007B520 8FA400D0 */  lw    $a0, 0xd0($sp)
/* AF26C4 8007B524 54400007 */  bnezl $v0, .L8007B544
/* AF26C8 8007B528 000250C0 */   sll   $t2, $v0, 3
/* AF26CC 8007B52C 0C00B32C */  jal   func_8002CCB0
/* AF26D0 8007B530 82250000 */   lb    $a1, ($s1)
/* AF26D4 8007B534 544000CB */  bnezl $v0, .L8007B864
/* AF26D8 8007B538 92580001 */   lbu   $t8, 1($s2)
/* AF26DC 8007B53C 82420000 */  lb    $v0, ($s2)
/* AF26E0 8007B540 000250C0 */  sll   $t2, $v0, 3
.L8007B544:
/* AF26E4 8007B544 01425021 */  addu  $t2, $t2, $v0
/* AF26E8 8007B548 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF26EC 8007B54C 000A5080 */  sll   $t2, $t2, 2
/* AF26F0 8007B550 03CA2821 */  addu  $a1, $fp, $t2
/* AF26F4 8007B554 244C0008 */  addiu $t4, $v0, 8
/* AF26F8 8007B558 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* AF26FC 8007B55C AC400004 */  sw    $zero, 4($v0)
/* AF2700 8007B560 AC540000 */  sw    $s4, ($v0)
/* AF2704 8007B564 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2708 8007B568 3C01FD00 */  lui   $at, 0xfd00
/* AF270C 8007B56C 240707FF */  li    $a3, 2047
/* AF2710 8007B570 244D0008 */  addiu $t5, $v0, 8
/* AF2714 8007B574 AE0D02B0 */  sw    $t5, 0x2b0($s0)
/* AF2718 8007B578 8CAE0008 */  lw    $t6, 8($a1)
/* AF271C 8007B57C 8CAC0004 */  lw    $t4, 4($a1)
/* AF2720 8007B580 000E7880 */  sll   $t7, $t6, 2
/* AF2724 8007B584 02AFC021 */  addu  $t8, $s5, $t7
/* AF2728 8007B588 8F190000 */  lw    $t9, ($t8)
/* AF272C 8007B58C 318D0007 */  andi  $t5, $t4, 7
/* AF2730 8007B590 000D7540 */  sll   $t6, $t5, 0x15
/* AF2734 8007B594 33290003 */  andi  $t1, $t9, 3
/* AF2738 8007B598 00095CC0 */  sll   $t3, $t1, 0x13
/* AF273C 8007B59C 01615025 */  or    $t2, $t3, $at
/* AF2740 8007B5A0 014E7825 */  or    $t7, $t2, $t6
/* AF2744 8007B5A4 AC4F0000 */  sw    $t7, ($v0)
/* AF2748 8007B5A8 8CB80000 */  lw    $t8, ($a1)
/* AF274C 8007B5AC AC580004 */  sw    $t8, 4($v0)
/* AF2750 8007B5B0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2754 8007B5B4 24590008 */  addiu $t9, $v0, 8
/* AF2758 8007B5B8 AE1902B0 */  sw    $t9, 0x2b0($s0)
/* AF275C 8007B5BC 8CA90008 */  lw    $t1, 8($a1)
/* AF2760 8007B5C0 8CB80004 */  lw    $t8, 4($a1)
/* AF2764 8007B5C4 00095880 */  sll   $t3, $t1, 2
/* AF2768 8007B5C8 02AB6021 */  addu  $t4, $s5, $t3
/* AF276C 8007B5CC 8D8D0000 */  lw    $t5, ($t4)
/* AF2770 8007B5D0 33190007 */  andi  $t9, $t8, 7
/* AF2774 8007B5D4 00194D40 */  sll   $t1, $t9, 0x15
/* AF2778 8007B5D8 31AA0003 */  andi  $t2, $t5, 3
/* AF277C 8007B5DC 000A74C0 */  sll   $t6, $t2, 0x13
/* AF2780 8007B5E0 01D67825 */  or    $t7, $t6, $s6
/* AF2784 8007B5E4 01E95825 */  or    $t3, $t7, $t1
/* AF2788 8007B5E8 AC4B0000 */  sw    $t3, ($v0)
/* AF278C 8007B5EC AC570004 */  sw    $s7, 4($v0)
/* AF2790 8007B5F0 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2794 8007B5F4 3C0DE600 */  lui   $t5, 0xe600
/* AF2798 8007B5F8 3C0EF300 */  lui   $t6, 0xf300
/* AF279C 8007B5FC 244C0008 */  addiu $t4, $v0, 8
/* AF27A0 8007B600 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* AF27A4 8007B604 AC400004 */  sw    $zero, 4($v0)
/* AF27A8 8007B608 AC4D0000 */  sw    $t5, ($v0)
/* AF27AC 8007B60C 8E0802B0 */  lw    $t0, 0x2b0($s0)
/* AF27B0 8007B610 3C0F8012 */  lui   $t7, 0x8012
/* AF27B4 8007B614 3C0B8012 */  lui   $t3, 0x8012
/* AF27B8 8007B618 250A0008 */  addiu $t2, $t0, 8
/* AF27BC 8007B61C AE0A02B0 */  sw    $t2, 0x2b0($s0)
/* AF27C0 8007B620 AD0E0000 */  sw    $t6, ($t0)
/* AF27C4 8007B624 8CB80010 */  lw    $t8, 0x10($a1)
/* AF27C8 8007B628 8CA4000C */  lw    $a0, 0xc($a1)
/* AF27CC 8007B62C 8CA30008 */  lw    $v1, 8($a1)
/* AF27D0 8007B630 3C0C8012 */  lui   $t4, 0x8012
/* AF27D4 8007B634 00980019 */  multu $a0, $t8
/* AF27D8 8007B638 00031880 */  sll   $v1, $v1, 2
/* AF27DC 8007B63C 01E37821 */  addu  $t7, $t7, $v1
/* AF27E0 8007B640 8DEF0070 */  lw    $t7, 0x70($t7)
/* AF27E4 8007B644 01635821 */  addu  $t3, $t3, $v1
/* AF27E8 8007B648 8D6B0080 */  lw    $t3, 0x80($t3)
/* AF27EC 8007B64C 01836021 */  addu  $t4, $t4, $v1
/* AF27F0 8007B650 0000C812 */  mflo  $t9
/* AF27F4 8007B654 032F4821 */  addu  $t1, $t9, $t7
/* AF27F8 8007B658 01693006 */  srlv  $a2, $t1, $t3
/* AF27FC 8007B65C 24C6FFFF */  addiu $a2, $a2, -1
/* AF2800 8007B660 2CC107FF */  sltiu $at, $a2, 0x7ff
/* AF2804 8007B664 10200003 */  beqz  $at, .L8007B674
/* AF2808 8007B668 00000000 */   nop   
/* AF280C 8007B66C 10000001 */  b     .L8007B674
/* AF2810 8007B670 00C03825 */   move  $a3, $a2
.L8007B674:
/* AF2814 8007B674 8D8C0090 */  lw    $t4, 0x90($t4)
/* AF2818 8007B678 30F90FFF */  andi  $t9, $a3, 0xfff
/* AF281C 8007B67C 00197B00 */  sll   $t7, $t9, 0xc
/* AF2820 8007B680 01840019 */  multu $t4, $a0
/* AF2824 8007B684 00001012 */  mflo  $v0
/* AF2828 8007B688 000210C2 */  srl   $v0, $v0, 3
/* AF282C 8007B68C 14400003 */  bnez  $v0, .L8007B69C
/* AF2830 8007B690 00402025 */   move  $a0, $v0
/* AF2834 8007B694 10000001 */  b     .L8007B69C
/* AF2838 8007B698 24040001 */   li    $a0, 1
.L8007B69C:
/* AF283C 8007B69C 14400003 */  bnez  $v0, .L8007B6AC
/* AF2840 8007B6A0 248D07FF */   addiu $t5, $a0, 0x7ff
/* AF2844 8007B6A4 10000002 */  b     .L8007B6B0
/* AF2848 8007B6A8 24030001 */   li    $v1, 1
.L8007B6AC:
/* AF284C 8007B6AC 00401825 */  move  $v1, $v0
.L8007B6B0:
/* AF2850 8007B6B0 01A3001B */  divu  $zero, $t5, $v1
/* AF2854 8007B6B4 00005012 */  mflo  $t2
/* AF2858 8007B6B8 314E0FFF */  andi  $t6, $t2, 0xfff
/* AF285C 8007B6BC 01D7C025 */  or    $t8, $t6, $s7
/* AF2860 8007B6C0 030F4825 */  or    $t1, $t8, $t7
/* AF2864 8007B6C4 AD090004 */  sw    $t1, 4($t0)
/* AF2868 8007B6C8 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF286C 8007B6CC 14600002 */  bnez  $v1, .L8007B6D8
/* AF2870 8007B6D0 00000000 */   nop   
/* AF2874 8007B6D4 0007000D */  break 7
.L8007B6D8:
/* AF2878 8007B6D8 244B0008 */  addiu $t3, $v0, 8
/* AF287C 8007B6DC AE0B02B0 */  sw    $t3, 0x2b0($s0)
/* AF2880 8007B6E0 AC400004 */  sw    $zero, 4($v0)
/* AF2884 8007B6E4 AC540000 */  sw    $s4, ($v0)
/* AF2888 8007B6E8 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF288C 8007B6EC 3C0D8012 */  lui   $t5, 0x8012
/* AF2890 8007B6F0 3C01E400 */  lui   $at, 0xe400
/* AF2894 8007B6F4 244C0008 */  addiu $t4, $v0, 8
/* AF2898 8007B6F8 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* AF289C 8007B6FC 8CA30008 */  lw    $v1, 8($a1)
/* AF28A0 8007B700 8CAA000C */  lw    $t2, 0xc($a1)
/* AF28A4 8007B704 8CAC0004 */  lw    $t4, 4($a1)
/* AF28A8 8007B708 00031880 */  sll   $v1, $v1, 2
/* AF28AC 8007B70C 01A36821 */  addu  $t5, $t5, $v1
/* AF28B0 8007B710 8DAD00A0 */  lw    $t5, 0xa0($t5)
/* AF28B4 8007B714 01AA0019 */  multu $t5, $t2
/* AF28B8 8007B718 318D0007 */  andi  $t5, $t4, 7
/* AF28BC 8007B71C 000D5540 */  sll   $t2, $t5, 0x15
/* AF28C0 8007B720 3C0DF200 */  lui   $t5, 0xf200
/* AF28C4 8007B724 00007012 */  mflo  $t6
/* AF28C8 8007B728 25D90007 */  addiu $t9, $t6, 7
/* AF28CC 8007B72C 0019C0C2 */  srl   $t8, $t9, 3
/* AF28D0 8007B730 3C198012 */  lui   $t9, 0x8012
/* AF28D4 8007B734 0323C821 */  addu  $t9, $t9, $v1
/* AF28D8 8007B738 8F390050 */  lw    $t9, 0x50($t9)
/* AF28DC 8007B73C 330F01FF */  andi  $t7, $t8, 0x1ff
/* AF28E0 8007B740 000F4A40 */  sll   $t1, $t7, 9
/* AF28E4 8007B744 01365825 */  or    $t3, $t1, $s6
/* AF28E8 8007B748 33380003 */  andi  $t8, $t9, 3
/* AF28EC 8007B74C 00187CC0 */  sll   $t7, $t8, 0x13
/* AF28F0 8007B750 016A7025 */  or    $t6, $t3, $t2
/* AF28F4 8007B754 01CF4825 */  or    $t1, $t6, $t7
/* AF28F8 8007B758 AC490000 */  sw    $t1, ($v0)
/* AF28FC 8007B75C AC400004 */  sw    $zero, 4($v0)
/* AF2900 8007B760 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2904 8007B764 244C0008 */  addiu $t4, $v0, 8
/* AF2908 8007B768 AE0C02B0 */  sw    $t4, 0x2b0($s0)
/* AF290C 8007B76C AC4D0000 */  sw    $t5, ($v0)
/* AF2910 8007B770 8CAB000C */  lw    $t3, 0xc($a1)
/* AF2914 8007B774 8CAF0010 */  lw    $t7, 0x10($a1)
/* AF2918 8007B778 256AFFFF */  addiu $t2, $t3, -1
/* AF291C 8007B77C 000AC880 */  sll   $t9, $t2, 2
/* AF2920 8007B780 25E9FFFF */  addiu $t1, $t7, -1
/* AF2924 8007B784 00096080 */  sll   $t4, $t1, 2
/* AF2928 8007B788 33380FFF */  andi  $t8, $t9, 0xfff
/* AF292C 8007B78C 00187300 */  sll   $t6, $t8, 0xc
/* AF2930 8007B790 318D0FFF */  andi  $t5, $t4, 0xfff
/* AF2934 8007B794 01CD5825 */  or    $t3, $t6, $t5
/* AF2938 8007B798 AC4B0004 */  sw    $t3, 4($v0)
/* AF293C 8007B79C 3C028016 */  lui   $v0, %hi(D_8015FA90) # $v0, 0x8016
/* AF2940 8007B7A0 8C42FA90 */  lw    $v0, %lo(D_8015FA90)($v0)
/* AF2944 8007B7A4 92390001 */  lbu   $t9, 1($s1)
/* AF2948 8007B7A8 922F0002 */  lbu   $t7, 2($s1)
/* AF294C 8007B7AC 844A1150 */  lh    $t2, 0x1150($v0)
/* AF2950 8007B7B0 84581152 */  lh    $t8, 0x1152($v0)
/* AF2954 8007B7B4 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF2958 8007B7B8 01592021 */  addu  $a0, $t2, $t9
/* AF295C 8007B7BC 248400CC */  addiu $a0, $a0, 0xcc
/* AF2960 8007B7C0 24490008 */  addiu $t1, $v0, 8
/* AF2964 8007B7C4 AE0902B0 */  sw    $t1, 0x2b0($s0)
/* AF2968 8007B7C8 8CAC0014 */  lw    $t4, 0x14($a1)
/* AF296C 8007B7CC 00042080 */  sll   $a0, $a0, 2
/* AF2970 8007B7D0 8CB90018 */  lw    $t9, 0x18($a1)
/* AF2974 8007B7D4 030F3021 */  addu  $a2, $t8, $t7
/* AF2978 8007B7D8 01847021 */  addu  $t6, $t4, $a0
/* AF297C 8007B7DC 24C6008C */  addiu $a2, $a2, 0x8c
/* AF2980 8007B7E0 31CD0FFF */  andi  $t5, $t6, 0xfff
/* AF2984 8007B7E4 00063080 */  sll   $a2, $a2, 2
/* AF2988 8007B7E8 000D5B00 */  sll   $t3, $t5, 0xc
/* AF298C 8007B7EC 01615025 */  or    $t2, $t3, $at
/* AF2990 8007B7F0 308C0FFF */  andi  $t4, $a0, 0xfff
/* AF2994 8007B7F4 00D9C021 */  addu  $t8, $a2, $t9
/* AF2998 8007B7F8 330F0FFF */  andi  $t7, $t8, 0xfff
/* AF299C 8007B7FC 000C7300 */  sll   $t6, $t4, 0xc
/* AF29A0 8007B800 30CD0FFF */  andi  $t5, $a2, 0xfff
/* AF29A4 8007B804 01CD5825 */  or    $t3, $t6, $t5
/* AF29A8 8007B808 014F4825 */  or    $t1, $t2, $t7
/* AF29AC 8007B80C AC490000 */  sw    $t1, ($v0)
/* AF29B0 8007B810 AC4B0004 */  sw    $t3, 4($v0)
/* AF29B4 8007B814 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF29B8 8007B818 3C18E100 */  lui   $t8, 0xe100
/* AF29BC 8007B81C 3C0FF100 */  lui   $t7, 0xf100
/* AF29C0 8007B820 24590008 */  addiu $t9, $v0, 8
/* AF29C4 8007B824 AE1902B0 */  sw    $t9, 0x2b0($s0)
/* AF29C8 8007B828 AC400004 */  sw    $zero, 4($v0)
/* AF29CC 8007B82C AC580000 */  sw    $t8, ($v0)
/* AF29D0 8007B830 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* AF29D4 8007B834 244A0008 */  addiu $t2, $v0, 8
/* AF29D8 8007B838 AE0A02B0 */  sw    $t2, 0x2b0($s0)
/* AF29DC 8007B83C AC4F0000 */  sw    $t7, ($v0)
/* AF29E0 8007B840 8CA9001C */  lw    $t1, 0x1c($a1)
/* AF29E4 8007B844 8CAD0020 */  lw    $t5, 0x20($a1)
/* AF29E8 8007B848 00401825 */  move  $v1, $v0
/* AF29EC 8007B84C 312CFFFF */  andi  $t4, $t1, 0xffff
/* AF29F0 8007B850 000C7400 */  sll   $t6, $t4, 0x10
/* AF29F4 8007B854 31ABFFFF */  andi  $t3, $t5, 0xffff
/* AF29F8 8007B858 01CBC825 */  or    $t9, $t6, $t3
/* AF29FC 8007B85C AC590004 */  sw    $t9, 4($v0)
/* AF2A00 8007B860 92580001 */  lbu   $t8, 1($s2)
.L8007B864:
/* AF2A04 8007B864 26730001 */  addiu $s3, $s3, 1
/* AF2A08 8007B868 26310003 */  addiu $s1, $s1, 3
/* AF2A0C 8007B86C 0278082A */  slt   $at, $s3, $t8
/* AF2A10 8007B870 5420FF2B */  bnezl $at, .L8007B520
/* AF2A14 8007B874 82420000 */   lb    $v0, ($s2)
.L8007B878:
/* AF2A18 8007B878 1000FEFF */  b     .L8007B478
/* AF2A1C 8007B87C 26520026 */   addiu $s2, $s2, 0x26
/* AF2A20 8007B880 8FAA00D0 */  lw    $t2, 0xd0($sp)
.L8007B884:
/* AF2A24 8007B884 3C068014 */  lui   $a2, %hi(D_8013CAB8) # $a2, 0x8014
/* AF2A28 8007B888 24C6CAB8 */  addiu $a2, %lo(D_8013CAB8) # addiu $a2, $a2, -0x3548
/* AF2A2C 8007B88C 27A4009C */  addiu $a0, $sp, 0x9c
/* AF2A30 8007B890 24070153 */  li    $a3, 339
/* AF2A34 8007B894 0C031AD5 */  jal   func_800C6B54
/* AF2A38 8007B898 8D450000 */   lw    $a1, ($t2)
/* AF2A3C 8007B89C 8FBF003C */  lw    $ra, 0x3c($sp)
.L8007B8A0:
/* AF2A40 8007B8A0 8FB00018 */  lw    $s0, 0x18($sp)
/* AF2A44 8007B8A4 8FB1001C */  lw    $s1, 0x1c($sp)
/* AF2A48 8007B8A8 8FB20020 */  lw    $s2, 0x20($sp)
/* AF2A4C 8007B8AC 8FB30024 */  lw    $s3, 0x24($sp)
/* AF2A50 8007B8B0 8FB40028 */  lw    $s4, 0x28($sp)
/* AF2A54 8007B8B4 8FB5002C */  lw    $s5, 0x2c($sp)
/* AF2A58 8007B8B8 8FB60030 */  lw    $s6, 0x30($sp)
/* AF2A5C 8007B8BC 8FB70034 */  lw    $s7, 0x34($sp)
/* AF2A60 8007B8C0 8FBE0038 */  lw    $fp, 0x38($sp)
/* AF2A64 8007B8C4 03E00008 */  jr    $ra
/* AF2A68 8007B8C8 27BD00D0 */   addiu $sp, $sp, 0xd0

glabel func_8007B8CC
/* AF2A6C 8007B8CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF2A70 8007B8D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF2A74 8007B8D4 948E00A4 */  lhu   $t6, 0xa4($a0)
/* AF2A78 8007B8D8 2DC10016 */  sltiu $at, $t6, 0x16
/* AF2A7C 8007B8DC 10200008 */  beqz  $at, .L8007B900
/* AF2A80 8007B8E0 000E7080 */   sll   $t6, $t6, 2
/* AF2A84 8007B8E4 3C018014 */  lui   $at, 0x8014
/* AF2A88 8007B8E8 002E0821 */  addu  $at, $at, $t6
/* AF2A8C 8007B8EC 8C2ECAC8 */  lw    $t6, -0x3538($at)
/* AF2A90 8007B8F0 01C00008 */  jr    $t6
/* AF2A94 8007B8F4 00000000 */   nop   
/* AF2A98 8007B8F8 0C01ECDF */  jal   func_8007B37C
/* AF2A9C 8007B8FC 00000000 */   nop   
.L8007B900:
/* AF2AA0 8007B900 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF2AA4 8007B904 27BD0018 */  addiu $sp, $sp, 0x18
/* AF2AA8 8007B908 03E00008 */  jr    $ra
/* AF2AAC 8007B90C 00000000 */   nop   

/* AF2AB0 8007B910 3C018012 */  lui   $at, %hi(D_80120110) # $at, 0x8012
/* AF2AB4 8007B914 AC240110 */  sw    $a0, %lo(D_80120110)($at)
/* AF2AB8 8007B918 3C018012 */  lui   $at, %hi(D_80120114) # $at, 0x8012
/* AF2ABC 8007B91C AC250114 */  sw    $a1, %lo(D_80120114)($at)
/* AF2AC0 8007B920 3C018012 */  lui   $at, %hi(D_80120118) # $at, 0x8012
/* AF2AC4 8007B924 AC260118 */  sw    $a2, %lo(D_80120118)($at)
/* AF2AC8 8007B928 3C018012 */  lui   $at, 0x8012
/* AF2ACC 8007B92C 03E00008 */  jr    $ra
/* AF2AD0 8007B930 AC27011C */   sw    $a3, 0x11c($at)

/* AF2AD4 8007B934 28810028 */  slti  $at, $a0, 0x28
/* AF2AD8 8007B938 14200004 */  bnez  $at, .L8007B94C
/* AF2ADC 8007B93C 240E0138 */   li    $t6, 312
/* AF2AE0 8007B940 3C018012 */  lui   $at, %hi(D_80120120) # $at, 0x8012
/* AF2AE4 8007B944 10000008 */  b     .L8007B968
/* AF2AE8 8007B948 AC2E0120 */   sw    $t6, %lo(D_80120120)($at)
.L8007B94C:
/* AF2AEC 8007B94C 04810004 */  bgez  $a0, .L8007B960
/* AF2AF0 8007B950 000478C0 */   sll   $t7, $a0, 3
/* AF2AF4 8007B954 3C018012 */  lui   $at, %hi(D_80120120) # $at, 0x8012
/* AF2AF8 8007B958 10000003 */  b     .L8007B968
/* AF2AFC 8007B95C AC200120 */   sw    $zero, %lo(D_80120120)($at)
.L8007B960:
/* AF2B00 8007B960 3C018012 */  lui   $at, %hi(D_80120120) # $at, 0x8012
/* AF2B04 8007B964 AC2F0120 */  sw    $t7, %lo(D_80120120)($at)
.L8007B968:
/* AF2B08 8007B968 28A1001E */  slti  $at, $a1, 0x1e
/* AF2B0C 8007B96C 14200004 */  bnez  $at, .L8007B980
/* AF2B10 8007B970 241800E8 */   li    $t8, 232
/* AF2B14 8007B974 3C018012 */  lui   $at, 0x8012
/* AF2B18 8007B978 03E00008 */  jr    $ra
/* AF2B1C 8007B97C AC380124 */   sw    $t8, 0x124($at)

.L8007B980:
/* AF2B20 8007B980 04A10004 */  bgez  $a1, .L8007B994
/* AF2B24 8007B984 0005C8C0 */   sll   $t9, $a1, 3
/* AF2B28 8007B988 3C018012 */  lui   $at, 0x8012
/* AF2B2C 8007B98C 03E00008 */  jr    $ra
/* AF2B30 8007B990 AC200124 */   sw    $zero, 0x124($at)

.L8007B994:
/* AF2B34 8007B994 3C018012 */  lui   $at, %hi(D_80120124) # $at, 0x8012
/* AF2B38 8007B998 AC390124 */  sw    $t9, %lo(D_80120124)($at)
/* AF2B3C 8007B99C 03E00008 */  jr    $ra
/* AF2B40 8007B9A0 00000000 */   nop   

glabel func_8007B9A4
/* AF2B44 8007B9A4 27BDFF90 */  addiu $sp, $sp, -0x70
/* AF2B48 8007B9A8 AFB00018 */  sw    $s0, 0x18($sp)
/* AF2B4C 8007B9AC 00808025 */  move  $s0, $a0
/* AF2B50 8007B9B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF2B54 8007B9B4 AFA50074 */  sw    $a1, 0x74($sp)
/* AF2B58 8007B9B8 3C068014 */  lui   $a2, %hi(D_8013CB20) # $a2, 0x8014
/* AF2B5C 8007B9BC 24C6CB20 */  addiu $a2, %lo(D_8013CB20) # addiu $a2, $a2, -0x34e0
/* AF2B60 8007B9C0 02002825 */  move  $a1, $s0
/* AF2B64 8007B9C4 27A40054 */  addiu $a0, $sp, 0x54
/* AF2B68 8007B9C8 0C031AB1 */  jal   func_800C6AC4
/* AF2B6C 8007B9CC 24070056 */   li    $a3, 86
/* AF2B70 8007B9D0 3C058013 */  lui   $a1, %hi(D_8012A740) # $a1, 0x8013
/* AF2B74 8007B9D4 24A5A740 */  addiu $a1, %lo(D_8012A740) # addiu $a1, $a1, -0x58c0
/* AF2B78 8007B9D8 30AE000F */  andi  $t6, $a1, 0xf
/* AF2B7C 8007B9DC 11C00005 */  beqz  $t6, .L8007B9F4
/* AF2B80 8007B9E0 3C048014 */   lui   $a0, %hi(D_8013CB2C) # $a0, 0x8014
/* AF2B84 8007B9E4 0C00084C */  jal   DebugMessage
/* AF2B88 8007B9E8 2484CB2C */   addiu $a0, %lo(D_8013CB2C) # addiu $a0, $a0, -0x34d4
/* AF2B8C 8007B9EC 3C058013 */  lui   $a1, %hi(D_8012A740) # $a1, 0x8013
/* AF2B90 8007B9F0 24A5A740 */  addiu $a1, %lo(D_8012A740) # addiu $a1, $a1, -0x58c0
.L8007B9F4:
/* AF2B94 8007B9F4 3C078016 */  lui   $a3, %hi(D_8015FFC0) # $a3, 0x8016
/* AF2B98 8007B9F8 93A60077 */  lbu   $a2, 0x77($sp)
/* AF2B9C 8007B9FC 24E7FFC0 */  addiu $a3, %lo(D_8015FFC0) # addiu $a3, $a3, -0x40
/* AF2BA0 8007BA00 8CEF0000 */  lw    $t7, ($a3)
/* AF2BA4 8007BA04 30C40003 */  andi  $a0, $a2, 3
/* AF2BA8 8007BA08 3C19FD10 */  lui   $t9, 0xfd10
/* AF2BAC 8007BA0C 11E4002B */  beq   $t7, $a0, .L8007BABC
/* AF2BB0 8007BA10 3C01E400 */   lui   $at, 0xe400
/* AF2BB4 8007BA14 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2BB8 8007BA18 00044140 */  sll   $t0, $a0, 5
/* AF2BBC 8007BA1C 00A84821 */  addu  $t1, $a1, $t0
/* AF2BC0 8007BA20 24580008 */  addiu $t8, $v0, 8
/* AF2BC4 8007BA24 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AF2BC8 8007BA28 AC490004 */  sw    $t1, 4($v0)
/* AF2BCC 8007BA2C AC590000 */  sw    $t9, ($v0)
/* AF2BD0 8007BA30 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2BD4 8007BA34 3C0BE800 */  lui   $t3, 0xe800
/* AF2BD8 8007BA38 3C0DF500 */  lui   $t5, (0xF5000100 >> 16) # lui $t5, 0xf500
/* AF2BDC 8007BA3C 244A0008 */  addiu $t2, $v0, 8
/* AF2BE0 8007BA40 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AF2BE4 8007BA44 AC400004 */  sw    $zero, 4($v0)
/* AF2BE8 8007BA48 AC4B0000 */  sw    $t3, ($v0)
/* AF2BEC 8007BA4C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2BF0 8007BA50 35AD0100 */  ori   $t5, (0xF5000100 & 0xFFFF) # ori $t5, $t5, 0x100
/* AF2BF4 8007BA54 3C0E0700 */  lui   $t6, 0x700
/* AF2BF8 8007BA58 244C0008 */  addiu $t4, $v0, 8
/* AF2BFC 8007BA5C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AF2C00 8007BA60 AC4E0004 */  sw    $t6, 4($v0)
/* AF2C04 8007BA64 AC4D0000 */  sw    $t5, ($v0)
/* AF2C08 8007BA68 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2C0C 8007BA6C 3C18E600 */  lui   $t8, 0xe600
/* AF2C10 8007BA70 3C090703 */  lui   $t1, (0x0703C000 >> 16) # lui $t1, 0x703
/* AF2C14 8007BA74 244F0008 */  addiu $t7, $v0, 8
/* AF2C18 8007BA78 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* AF2C1C 8007BA7C AC400004 */  sw    $zero, 4($v0)
/* AF2C20 8007BA80 AC580000 */  sw    $t8, ($v0)
/* AF2C24 8007BA84 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2C28 8007BA88 3529C000 */  ori   $t1, (0x0703C000 & 0xFFFF) # ori $t1, $t1, 0xc000
/* AF2C2C 8007BA8C 3C08F000 */  lui   $t0, 0xf000
/* AF2C30 8007BA90 24590008 */  addiu $t9, $v0, 8
/* AF2C34 8007BA94 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AF2C38 8007BA98 AC490004 */  sw    $t1, 4($v0)
/* AF2C3C 8007BA9C AC480000 */  sw    $t0, ($v0)
/* AF2C40 8007BAA0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2C44 8007BAA4 3C0BE700 */  lui   $t3, 0xe700
/* AF2C48 8007BAA8 244A0008 */  addiu $t2, $v0, 8
/* AF2C4C 8007BAAC AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AF2C50 8007BAB0 AC400004 */  sw    $zero, 4($v0)
/* AF2C54 8007BAB4 AC4B0000 */  sw    $t3, ($v0)
/* AF2C58 8007BAB8 ACE40000 */  sw    $a0, ($a3)
.L8007BABC:
/* AF2C5C 8007BABC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2C60 8007BAC0 3C048012 */  lui   $a0, %hi(D_80120120) # $a0, 0x8012
/* AF2C64 8007BAC4 24840120 */  addiu $a0, %lo(D_80120120) # addiu $a0, $a0, 0x120
/* AF2C68 8007BAC8 244C0008 */  addiu $t4, $v0, 8
/* AF2C6C 8007BACC AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AF2C70 8007BAD0 8C8D0000 */  lw    $t5, ($a0)
/* AF2C74 8007BAD4 3C058012 */  lui   $a1, %hi(D_80120124) # $a1, 0x8012
/* AF2C78 8007BAD8 24A50124 */  addiu $a1, %lo(D_80120124) # addiu $a1, $a1, 0x124
/* AF2C7C 8007BADC 8CA90000 */  lw    $t1, ($a1)
/* AF2C80 8007BAE0 25AE0008 */  addiu $t6, $t5, 8
/* AF2C84 8007BAE4 000E7880 */  sll   $t7, $t6, 2
/* AF2C88 8007BAE8 31F80FFF */  andi  $t8, $t7, 0xfff
/* AF2C8C 8007BAEC 252A0008 */  addiu $t2, $t1, 8
/* AF2C90 8007BAF0 000A5880 */  sll   $t3, $t2, 2
/* AF2C94 8007BAF4 0018CB00 */  sll   $t9, $t8, 0xc
/* AF2C98 8007BAF8 03214025 */  or    $t0, $t9, $at
/* AF2C9C 8007BAFC 316C0FFF */  andi  $t4, $t3, 0xfff
/* AF2CA0 8007BB00 010C6825 */  or    $t5, $t0, $t4
/* AF2CA4 8007BB04 AC4D0000 */  sw    $t5, ($v0)
/* AF2CA8 8007BB08 8C8E0000 */  lw    $t6, ($a0)
/* AF2CAC 8007BB0C 8CA90000 */  lw    $t1, ($a1)
/* AF2CB0 8007BB10 3C0DE100 */  lui   $t5, 0xe100
/* AF2CB4 8007BB14 000E7880 */  sll   $t7, $t6, 2
/* AF2CB8 8007BB18 31F80FFF */  andi  $t8, $t7, 0xfff
/* AF2CBC 8007BB1C 00095080 */  sll   $t2, $t1, 2
/* AF2CC0 8007BB20 314B0FFF */  andi  $t3, $t2, 0xfff
/* AF2CC4 8007BB24 0018CB00 */  sll   $t9, $t8, 0xc
/* AF2CC8 8007BB28 032B4025 */  or    $t0, $t9, $t3
/* AF2CCC 8007BB2C AC480004 */  sw    $t0, 4($v0)
/* AF2CD0 8007BB30 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2CD4 8007BB34 000658C3 */  sra   $t3, $a2, 3
/* AF2CD8 8007BB38 000B4200 */  sll   $t0, $t3, 8
/* AF2CDC 8007BB3C 244C0008 */  addiu $t4, $v0, 8
/* AF2CE0 8007BB40 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AF2CE4 8007BB44 30C90004 */  andi  $t1, $a2, 4
/* AF2CE8 8007BB48 00095580 */  sll   $t2, $t1, 0x16
/* AF2CEC 8007BB4C 310CFFFF */  andi  $t4, $t0, 0xffff
/* AF2CF0 8007BB50 AC4D0000 */  sw    $t5, ($v0)
/* AF2CF4 8007BB54 014C6825 */  or    $t5, $t2, $t4
/* AF2CF8 8007BB58 AC4D0004 */  sw    $t5, 4($v0)
/* AF2CFC 8007BB5C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2D00 8007BB60 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* AF2D04 8007BB64 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* AF2D08 8007BB68 244E0008 */  addiu $t6, $v0, 8
/* AF2D0C 8007BB6C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AF2D10 8007BB70 3C0FF100 */  lui   $t7, 0xf100
/* AF2D14 8007BB74 3C068014 */  lui   $a2, %hi(D_8013CB40) # $a2, 0x8014
/* AF2D18 8007BB78 24C6CB40 */  addiu $a2, %lo(D_8013CB40) # addiu $a2, $a2, -0x34c0
/* AF2D1C 8007BB7C 02002825 */  move  $a1, $s0
/* AF2D20 8007BB80 27A40054 */  addiu $a0, $sp, 0x54
/* AF2D24 8007BB84 2407007B */  li    $a3, 123
/* AF2D28 8007BB88 AC4F0000 */  sw    $t7, ($v0)
/* AF2D2C 8007BB8C 0C031AD5 */  jal   func_800C6B54
/* AF2D30 8007BB90 AC580004 */   sw    $t8, 4($v0)
/* AF2D34 8007BB94 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF2D38 8007BB98 8FB00018 */  lw    $s0, 0x18($sp)
/* AF2D3C 8007BB9C 27BD0070 */  addiu $sp, $sp, 0x70
/* AF2D40 8007BBA0 03E00008 */  jr    $ra
/* AF2D44 8007BBA4 00000000 */   nop   

/* AF2D48 8007BBA8 27BDFF90 */  addiu $sp, $sp, -0x70
/* AF2D4C 8007BBAC AFB00018 */  sw    $s0, 0x18($sp)
/* AF2D50 8007BBB0 00808025 */  move  $s0, $a0
/* AF2D54 8007BBB4 AFBF001C */  sw    $ra, 0x1c($sp)
/* AF2D58 8007BBB8 AFA50074 */  sw    $a1, 0x74($sp)
/* AF2D5C 8007BBBC 3C068014 */  lui   $a2, %hi(D_8013CB4C) # $a2, 0x8014
/* AF2D60 8007BBC0 24C6CB4C */  addiu $a2, %lo(D_8013CB4C) # addiu $a2, $a2, -0x34b4
/* AF2D64 8007BBC4 02002825 */  move  $a1, $s0
/* AF2D68 8007BBC8 27A40058 */  addiu $a0, $sp, 0x58
/* AF2D6C 8007BBCC 0C031AB1 */  jal   func_800C6AC4
/* AF2D70 8007BBD0 24070089 */   li    $a3, 137
/* AF2D74 8007BBD4 3C058013 */  lui   $a1, %hi(D_8012A7C0) # $a1, 0x8013
/* AF2D78 8007BBD8 24A5A7C0 */  addiu $a1, %lo(D_8012A7C0) # addiu $a1, $a1, -0x5840
/* AF2D7C 8007BBDC 30AE000F */  andi  $t6, $a1, 0xf
/* AF2D80 8007BBE0 11C00005 */  beqz  $t6, .L8007BBF8
/* AF2D84 8007BBE4 3C048014 */   lui   $a0, %hi(D_8013CB58) # $a0, 0x8014
/* AF2D88 8007BBE8 0C00084C */  jal   DebugMessage
/* AF2D8C 8007BBEC 2484CB58 */   addiu $a0, %lo(D_8013CB58) # addiu $a0, $a0, -0x34a8
/* AF2D90 8007BBF0 3C058013 */  lui   $a1, %hi(D_8012A7C0) # $a1, 0x8013
/* AF2D94 8007BBF4 24A5A7C0 */  addiu $a1, %lo(D_8012A7C0) # addiu $a1, $a1, -0x5840
.L8007BBF8:
/* AF2D98 8007BBF8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2D9C 8007BBFC 3C04E700 */  lui   $a0, 0xe700
/* AF2DA0 8007BC00 3C19FA00 */  lui   $t9, 0xfa00
/* AF2DA4 8007BC04 244F0008 */  addiu $t7, $v0, 8
/* AF2DA8 8007BC08 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* AF2DAC 8007BC0C AC400004 */  sw    $zero, 4($v0)
/* AF2DB0 8007BC10 AC440000 */  sw    $a0, ($v0)
/* AF2DB4 8007BC14 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2DB8 8007BC18 3C088012 */  lui   $t0, %hi(D_80120110) # $t0, 0x8012
/* AF2DBC 8007BC1C 3C0B8012 */  lui   $t3, %hi(D_80120114) # $t3, 0x8012
/* AF2DC0 8007BC20 24580008 */  addiu $t8, $v0, 8
/* AF2DC4 8007BC24 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AF2DC8 8007BC28 AC590000 */  sw    $t9, ($v0)
/* AF2DCC 8007BC2C 8D090110 */  lw    $t1, %lo(D_80120110)($t0)
/* AF2DD0 8007BC30 8D6B0114 */  lw    $t3, %lo(D_80120114)($t3)
/* AF2DD4 8007BC34 3C0F8012 */  lui   $t7, %hi(D_80120118) # $t7, 0x8012
/* AF2DD8 8007BC38 8DEF0118 */  lw    $t7, %lo(D_80120118)($t7)
/* AF2DDC 8007BC3C 00095600 */  sll   $t2, $t1, 0x18
/* AF2DE0 8007BC40 3C098012 */  lui   $t1, %hi(D_8012011C) # $t1, 0x8012
/* AF2DE4 8007BC44 8D29011C */  lw    $t1, %lo(D_8012011C)($t1)
/* AF2DE8 8007BC48 316C00FF */  andi  $t4, $t3, 0xff
/* AF2DEC 8007BC4C 000C6C00 */  sll   $t5, $t4, 0x10
/* AF2DF0 8007BC50 31F800FF */  andi  $t8, $t7, 0xff
/* AF2DF4 8007BC54 0018CA00 */  sll   $t9, $t8, 8
/* AF2DF8 8007BC58 014D7025 */  or    $t6, $t2, $t5
/* AF2DFC 8007BC5C 01D94025 */  or    $t0, $t6, $t9
/* AF2E00 8007BC60 312B00FF */  andi  $t3, $t1, 0xff
/* AF2E04 8007BC64 010B6025 */  or    $t4, $t0, $t3
/* AF2E08 8007BC68 AC4C0004 */  sw    $t4, 4($v0)
/* AF2E0C 8007BC6C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2E10 8007BC70 3C0DFD50 */  lui   $t5, 0xfd50
/* AF2E14 8007BC74 3C0E0700 */  lui   $t6, 0x700
/* AF2E18 8007BC78 244A0008 */  addiu $t2, $v0, 8
/* AF2E1C 8007BC7C AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AF2E20 8007BC80 AC450004 */  sw    $a1, 4($v0)
/* AF2E24 8007BC84 AC4D0000 */  sw    $t5, ($v0)
/* AF2E28 8007BC88 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2E2C 8007BC8C 3C18F550 */  lui   $t8, 0xf550
/* AF2E30 8007BC90 3C09E600 */  lui   $t1, 0xe600
/* AF2E34 8007BC94 244F0008 */  addiu $t7, $v0, 8
/* AF2E38 8007BC98 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* AF2E3C 8007BC9C AC4E0004 */  sw    $t6, 4($v0)
/* AF2E40 8007BCA0 AC580000 */  sw    $t8, ($v0)
/* AF2E44 8007BCA4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2E48 8007BCA8 3C0C071F */  lui   $t4, (0x071FF800 >> 16) # lui $t4, 0x71f
/* AF2E4C 8007BCAC 358CF800 */  ori   $t4, (0x071FF800 & 0xFFFF) # ori $t4, $t4, 0xf800
/* AF2E50 8007BCB0 24590008 */  addiu $t9, $v0, 8
/* AF2E54 8007BCB4 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AF2E58 8007BCB8 AC400004 */  sw    $zero, 4($v0)
/* AF2E5C 8007BCBC AC490000 */  sw    $t1, ($v0)
/* AF2E60 8007BCC0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2E64 8007BCC4 3C0BF300 */  lui   $t3, 0xf300
/* AF2E68 8007BCC8 3C0FF540 */  lui   $t7, (0xF5400200 >> 16) # lui $t7, 0xf540
/* AF2E6C 8007BCCC 24480008 */  addiu $t0, $v0, 8
/* AF2E70 8007BCD0 AE0802C0 */  sw    $t0, 0x2c0($s0)
/* AF2E74 8007BCD4 AC4C0004 */  sw    $t4, 4($v0)
/* AF2E78 8007BCD8 AC4B0000 */  sw    $t3, ($v0)
/* AF2E7C 8007BCDC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2E80 8007BCE0 35EF0200 */  ori   $t7, (0xF5400200 & 0xFFFF) # ori $t7, $t7, 0x200
/* AF2E84 8007BCE4 3C190003 */  lui   $t9, (0x0003C1FC >> 16) # lui $t9, 3
/* AF2E88 8007BCE8 244A0008 */  addiu $t2, $v0, 8
/* AF2E8C 8007BCEC AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AF2E90 8007BCF0 AC400004 */  sw    $zero, 4($v0)
/* AF2E94 8007BCF4 AC440000 */  sw    $a0, ($v0)
/* AF2E98 8007BCF8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2E9C 8007BCFC 3739C1FC */  ori   $t9, (0x0003C1FC & 0xFFFF) # ori $t9, $t9, 0xc1fc
/* AF2EA0 8007BD00 3C0EF200 */  lui   $t6, 0xf200
/* AF2EA4 8007BD04 244D0008 */  addiu $t5, $v0, 8
/* AF2EA8 8007BD08 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* AF2EAC 8007BD0C AC400004 */  sw    $zero, 4($v0)
/* AF2EB0 8007BD10 AC4F0000 */  sw    $t7, ($v0)
/* AF2EB4 8007BD14 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AF2EB8 8007BD18 2409FFFF */  li    $t1, -1
/* AF2EBC 8007BD1C 3C018016 */  lui   $at, %hi(D_8015FFC0) # $at, 0x8016
/* AF2EC0 8007BD20 24580008 */  addiu $t8, $v0, 8
/* AF2EC4 8007BD24 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AF2EC8 8007BD28 AC590004 */  sw    $t9, 4($v0)
/* AF2ECC 8007BD2C AC4E0000 */  sw    $t6, ($v0)
/* AF2ED0 8007BD30 8FA30074 */  lw    $v1, 0x74($sp)
/* AF2ED4 8007BD34 AC29FFC0 */  sw    $t1, %lo(D_8015FFC0)($at)
/* AF2ED8 8007BD38 3C068012 */  lui   $a2, %hi(D_80120120) # $a2, 0x8012
/* AF2EDC 8007BD3C 90680000 */  lbu   $t0, ($v1)
/* AF2EE0 8007BD40 24C60120 */  addiu $a2, %lo(D_80120120) # addiu $a2, $a2, 0x120
/* AF2EE4 8007BD44 00603825 */  move  $a3, $v1
/* AF2EE8 8007BD48 1100003A */  beqz  $t0, .L8007BE34
/* AF2EEC 8007BD4C 00000000 */   nop   
/* AF2EF0 8007BD50 90650000 */  lbu   $a1, ($v1)
/* AF2EF4 8007BD54 3C038012 */  lui   $v1, %hi(D_80120124) # $v1, 0x8012
/* AF2EF8 8007BD58 24630124 */  addiu $v1, %lo(D_80120124) # addiu $v1, $v1, 0x124
/* AF2EFC 8007BD5C 00A02025 */  move  $a0, $a1
.L8007BD60:
/* AF2F00 8007BD60 24010009 */  li    $at, 9
/* AF2F04 8007BD64 10810007 */  beq   $a0, $at, .L8007BD84
/* AF2F08 8007BD68 2401000A */   li    $at, 10
/* AF2F0C 8007BD6C 1081001B */  beq   $a0, $at, .L8007BDDC
/* AF2F10 8007BD70 2401000D */   li    $at, 13
/* AF2F14 8007BD74 5081001A */  beql  $a0, $at, .L8007BDE0
/* AF2F18 8007BD78 8C680000 */   lw    $t0, ($v1)
/* AF2F1C 8007BD7C 1000001F */  b     .L8007BDFC
/* AF2F20 8007BD80 02002025 */   move  $a0, $s0
.L8007BD84:
/* AF2F24 8007BD84 8CCB0000 */  lw    $t3, ($a2)
/* AF2F28 8007BD88 05610003 */  bgez  $t3, .L8007BD98
/* AF2F2C 8007BD8C 000B60C3 */   sra   $t4, $t3, 3
/* AF2F30 8007BD90 25610007 */  addiu $at, $t3, 7
/* AF2F34 8007BD94 000160C3 */  sra   $t4, $at, 3
.L8007BD98:
/* AF2F38 8007BD98 05810003 */  bgez  $t4, .L8007BDA8
/* AF2F3C 8007BD9C 000C50C3 */   sra   $t2, $t4, 3
/* AF2F40 8007BDA0 25810007 */  addiu $at, $t4, 7
/* AF2F44 8007BDA4 000150C3 */  sra   $t2, $at, 3
.L8007BDA8:
/* AF2F48 8007BDA8 000A6980 */  sll   $t5, $t2, 6
/* AF2F4C 8007BDAC 25AF0040 */  addiu $t7, $t5, 0x40
/* AF2F50 8007BDB0 29E10140 */  slti  $at, $t7, 0x140
/* AF2F54 8007BDB4 1420001B */  bnez  $at, .L8007BE24
/* AF2F58 8007BDB8 ACCF0000 */   sw    $t7, ($a2)
/* AF2F5C 8007BDBC 8C6E0000 */  lw    $t6, ($v1)
/* AF2F60 8007BDC0 ACC00000 */  sw    $zero, ($a2)
/* AF2F64 8007BDC4 25D90008 */  addiu $t9, $t6, 8
/* AF2F68 8007BDC8 2B2100F0 */  slti  $at, $t9, 0xf0
/* AF2F6C 8007BDCC 14200015 */  bnez  $at, .L8007BE24
/* AF2F70 8007BDD0 AC790000 */   sw    $t9, ($v1)
/* AF2F74 8007BDD4 10000013 */  b     .L8007BE24
/* AF2F78 8007BDD8 AC600000 */   sw    $zero, ($v1)
.L8007BDDC:
/* AF2F7C 8007BDDC 8C680000 */  lw    $t0, ($v1)
.L8007BDE0:
/* AF2F80 8007BDE0 ACC00000 */  sw    $zero, ($a2)
/* AF2F84 8007BDE4 250B0008 */  addiu $t3, $t0, 8
/* AF2F88 8007BDE8 296100F0 */  slti  $at, $t3, 0xf0
/* AF2F8C 8007BDEC 1420000D */  bnez  $at, .L8007BE24
/* AF2F90 8007BDF0 AC6B0000 */   sw    $t3, ($v1)
/* AF2F94 8007BDF4 1000000B */  b     .L8007BE24
/* AF2F98 8007BDF8 AC600000 */   sw    $zero, ($v1)
.L8007BDFC:
/* AF2F9C 8007BDFC 0C01EE69 */  jal   func_8007B9A4
/* AF2FA0 8007BE00 AFA7002C */   sw    $a3, 0x2c($sp)
/* AF2FA4 8007BE04 3C068012 */  lui   $a2, %hi(D_80120120) # $a2, 0x8012
/* AF2FA8 8007BE08 24C60120 */  addiu $a2, %lo(D_80120120) # addiu $a2, $a2, 0x120
/* AF2FAC 8007BE0C 8CCA0000 */  lw    $t2, ($a2)
/* AF2FB0 8007BE10 3C038012 */  lui   $v1, %hi(D_80120124) # $v1, 0x8012
/* AF2FB4 8007BE14 24630124 */  addiu $v1, %lo(D_80120124) # addiu $v1, $v1, 0x124
/* AF2FB8 8007BE18 254D0008 */  addiu $t5, $t2, 8
/* AF2FBC 8007BE1C 8FA7002C */  lw    $a3, 0x2c($sp)
/* AF2FC0 8007BE20 ACCD0000 */  sw    $t5, ($a2)
.L8007BE24:
/* AF2FC4 8007BE24 90E50001 */  lbu   $a1, 1($a3)
/* AF2FC8 8007BE28 24E70001 */  addiu $a3, $a3, 1
/* AF2FCC 8007BE2C 14A0FFCC */  bnez  $a1, .L8007BD60
/* AF2FD0 8007BE30 00A02025 */   move  $a0, $a1
.L8007BE34:
/* AF2FD4 8007BE34 3C068014 */  lui   $a2, %hi(D_8013CB68) # $a2, 0x8014
/* AF2FD8 8007BE38 24C6CB68 */  addiu $a2, %lo(D_8013CB68) # addiu $a2, $a2, -0x3498
/* AF2FDC 8007BE3C 27A40058 */  addiu $a0, $sp, 0x58
/* AF2FE0 8007BE40 02002825 */  move  $a1, $s0
/* AF2FE4 8007BE44 0C031AD5 */  jal   func_800C6B54
/* AF2FE8 8007BE48 240700B5 */   li    $a3, 181
/* AF2FEC 8007BE4C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AF2FF0 8007BE50 8FB00018 */  lw    $s0, 0x18($sp)
/* AF2FF4 8007BE54 27BD0070 */  addiu $sp, $sp, 0x70
/* AF2FF8 8007BE58 03E00008 */  jr    $ra
/* AF2FFC 8007BE5C 00000000 */   nop   

glabel func_8007BE60
/* AF3000 8007BE60 AC800000 */  sw    $zero, ($a0)
/* AF3004 8007BE64 3C0E8000 */  lui   $t6, %hi(D_8000030C) # $t6, 0x8000
/* AF3008 8007BE68 8DCE030C */  lw    $t6, %lo(D_8000030C)($t6)
/* AF300C 8007BE6C 24180000 */  li    $t8, 0
/* AF3010 8007BE70 24190000 */  li    $t9, 0
/* AF3014 8007BE74 55C00006 */  bnezl $t6, .L8007BE90
/* AF3018 8007BE78 8C8F0004 */   lw    $t7, 4($a0)
/* AF301C 8007BE7C AC800004 */  sw    $zero, 4($a0)
/* AF3020 8007BE80 AC980008 */  sw    $t8, 8($a0)
/* AF3024 8007BE84 1000000E */  b     .L8007BEC0
/* AF3028 8007BE88 AC99000C */   sw    $t9, 0xc($a0)
/* AF302C 8007BE8C 8C8F0004 */  lw    $t7, 4($a0)
.L8007BE90:
/* AF3030 8007BE90 8C8B000C */  lw    $t3, 0xc($a0)
/* AF3034 8007BE94 8C8D0014 */  lw    $t5, 0x14($a0)
/* AF3038 8007BE98 8C8A0008 */  lw    $t2, 8($a0)
/* AF303C 8007BE9C 25E80001 */  addiu $t0, $t7, 1
/* AF3040 8007BEA0 8C8C0010 */  lw    $t4, 0x10($a0)
/* AF3044 8007BEA4 016D7821 */  addu  $t7, $t3, $t5
/* AF3048 8007BEA8 01ED082B */  sltu  $at, $t7, $t5
/* AF304C 8007BEAC 002A7021 */  addu  $t6, $at, $t2
/* AF3050 8007BEB0 01CC7021 */  addu  $t6, $t6, $t4
/* AF3054 8007BEB4 AC880004 */  sw    $t0, 4($a0)
/* AF3058 8007BEB8 AC8E0008 */  sw    $t6, 8($a0)
/* AF305C 8007BEBC AC8F000C */  sw    $t7, 0xc($a0)
.L8007BEC0:
/* AF3060 8007BEC0 24180000 */  li    $t8, 0
/* AF3064 8007BEC4 24190000 */  li    $t9, 0
/* AF3068 8007BEC8 AC990014 */  sw    $t9, 0x14($a0)
/* AF306C 8007BECC 03E00008 */  jr    $ra
/* AF3070 8007BED0 AC980010 */   sw    $t8, 0x10($a0)

glabel func_8007BED4
/* AF3074 8007BED4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AF3078 8007BED8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF307C 8007BEDC AFA40018 */  sw    $a0, 0x18($sp)
/* AF3080 8007BEE0 240E0001 */  li    $t6, 1
/* AF3084 8007BEE4 0C001A78 */  jal   osGetTime
/* AF3088 8007BEE8 AC8E0000 */   sw    $t6, ($a0)
/* AF308C 8007BEEC 8FB80018 */  lw    $t8, 0x18($sp)
/* AF3090 8007BEF0 AF020010 */  sw    $v0, 0x10($t8)
/* AF3094 8007BEF4 AF030014 */  sw    $v1, 0x14($t8)
/* AF3098 8007BEF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF309C 8007BEFC 27BD0018 */  addiu $sp, $sp, 0x18
/* AF30A0 8007BF00 03E00008 */  jr    $ra
/* AF30A4 8007BF04 00000000 */   nop   

glabel func_8007BF08
/* AF30A8 8007BF08 03E00008 */  jr    $ra
/* AF30AC 8007BF0C 8C820000 */   lw    $v0, ($a0)

glabel func_8007BF10
/* AF30B0 8007BF10 27BDFF60 */  addiu $sp, $sp, -0xa0
/* AF30B4 8007BF14 AFBF0014 */  sw    $ra, 0x14($sp)
/* AF30B8 8007BF18 27A40020 */  addiu $a0, $sp, 0x20
/* AF30BC 8007BF1C 240E0003 */  li    $t6, 3
/* AF30C0 8007BF20 AFA00038 */  sw    $zero, 0x38($sp)
/* AF30C4 8007BF24 AFAE0040 */  sw    $t6, 0x40($sp)
/* AF30C8 8007BF28 AFA40088 */  sw    $a0, 0x88($sp)
/* AF30CC 8007BF2C AFA0008C */  sw    $zero, 0x8c($sp)
/* AF30D0 8007BF30 AFA00044 */  sw    $zero, 0x44($sp)
/* AF30D4 8007BF34 AFA00048 */  sw    $zero, 0x48($sp)
/* AF30D8 8007BF38 27A5001C */  addiu $a1, $sp, 0x1c
/* AF30DC 8007BF3C 0C001874 */  jal   osCreateMesgQueue
/* AF30E0 8007BF40 24060001 */   li    $a2, 1
/* AF30E4 8007BF44 3C048016 */  lui   $a0, %hi(D_801666A0) # $a0, 0x8016
/* AF30E8 8007BF48 248466A0 */  addiu $a0, %lo(D_801666A0) # addiu $a0, $a0, 0x66a0
/* AF30EC 8007BF4C 27A50038 */  addiu $a1, $sp, 0x38
/* AF30F0 8007BF50 0C000C18 */  jal   osSendMesg
/* AF30F4 8007BF54 24060001 */   li    $a2, 1
/* AF30F8 8007BF58 3C048016 */  lui   $a0, %hi(D_80166668) # $a0, 0x8016
/* AF30FC 8007BF5C 0C03257E */  jal   func_800C95F8
/* AF3100 8007BF60 24846668 */   addiu $a0, %lo(D_80166668) # addiu $a0, $a0, 0x6668
/* AF3104 8007BF64 27A40020 */  addiu $a0, $sp, 0x20
/* AF3108 8007BF68 00002825 */  move  $a1, $zero
/* AF310C 8007BF6C 0C000CA0 */  jal   osRecvMesg
/* AF3110 8007BF70 24060001 */   li    $a2, 1
/* AF3114 8007BF74 8FBF0014 */  lw    $ra, 0x14($sp)
/* AF3118 8007BF78 27BD00A0 */  addiu $sp, $sp, 0xa0
/* AF311C 8007BF7C 03E00008 */  jr    $ra
/* AF3120 8007BF80 00000000 */   nop   
