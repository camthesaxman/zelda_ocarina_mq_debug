.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8005B280
/* AD2420 8005B280 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2424 8005B284 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2428 8005B288 240E00FF */  li    $t6, 255
/* AD242C 8005B28C AFAE0010 */  sw    $t6, 0x10($sp)
/* AD2430 8005B290 AFA00014 */  sw    $zero, 0x14($sp)
/* AD2434 8005B294 0C016CAB */  jal   func_8005B2AC
/* AD2438 8005B298 AFA00018 */   sw    $zero, 0x18($sp)
/* AD243C 8005B29C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2440 8005B2A0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD2444 8005B2A4 03E00008 */  jr    $ra
/* AD2448 8005B2A8 00000000 */   nop   

glabel func_8005B2AC
/* AD244C 8005B2AC 27BDFF70 */  addiu $sp, $sp, -0x90
/* AD2450 8005B2B0 AFB00028 */  sw    $s0, 0x28($sp)
/* AD2454 8005B2B4 AFA60098 */  sw    $a2, 0x98($sp)
/* AD2458 8005B2B8 00808025 */  move  $s0, $a0
/* AD245C 8005B2BC AFBF002C */  sw    $ra, 0x2c($sp)
/* AD2460 8005B2C0 AFA50094 */  sw    $a1, 0x94($sp)
/* AD2464 8005B2C4 AFA7009C */  sw    $a3, 0x9c($sp)
/* AD2468 8005B2C8 3C068014 */  lui   $a2, %hi(D_8013A5B0) # $a2, 0x8014
/* AD246C 8005B2CC 24C6A5B0 */  addiu $a2, %lo(D_8013A5B0) # addiu $a2, $a2, -0x5a50
/* AD2470 8005B2D0 240702C9 */  li    $a3, 713
/* AD2474 8005B2D4 02002825 */  move  $a1, $s0
/* AD2478 8005B2D8 0C031AB1 */  jal   func_800C6AC4
/* AD247C 8005B2DC 27A40064 */   addiu $a0, $sp, 0x64
/* AD2480 8005B2E0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2484 8005B2E4 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AD2488 8005B2E8 3C188013 */  lui   $t8, %hi(D_8012DB20) # $t8, 0x8013
/* AD248C 8005B2EC 244E0008 */  addiu $t6, $v0, 8
/* AD2490 8005B2F0 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AD2494 8005B2F4 2718DB20 */  addiu $t8, %lo(D_8012DB20) # addiu $t8, $t8, -0x24e0
/* AD2498 8005B2F8 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AD249C 8005B2FC AC4F0000 */  sw    $t7, ($v0)
/* AD24A0 8005B300 AC580004 */  sw    $t8, 4($v0)
/* AD24A4 8005B304 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD24A8 8005B308 3C09FA00 */  lui   $t1, (0xFA0000FF >> 16) # lui $t1, 0xfa00
/* AD24AC 8005B30C 352900FF */  ori   $t1, (0xFA0000FF & 0xFFFF) # ori $t1, $t1, 0xff
/* AD24B0 8005B310 24590008 */  addiu $t9, $v0, 8
/* AD24B4 8005B314 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AD24B8 8005B318 AC490000 */  sw    $t1, ($v0)
/* AD24BC 8005B31C 93AE00A7 */  lbu   $t6, 0xa7($sp)
/* AD24C0 8005B320 93AB00A3 */  lbu   $t3, 0xa3($sp)
/* AD24C4 8005B324 93A900AB */  lbu   $t1, 0xab($sp)
/* AD24C8 8005B328 000E7C00 */  sll   $t7, $t6, 0x10
/* AD24CC 8005B32C 000B6600 */  sll   $t4, $t3, 0x18
/* AD24D0 8005B330 018FC025 */  or    $t8, $t4, $t7
/* AD24D4 8005B334 00095200 */  sll   $t2, $t1, 8
/* AD24D8 8005B338 030A5825 */  or    $t3, $t8, $t2
/* AD24DC 8005B33C 356D0032 */  ori   $t5, $t3, 0x32
/* AD24E0 8005B340 AC4D0004 */  sw    $t5, 4($v0)
/* AD24E4 8005B344 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD24E8 8005B348 3C04E700 */  lui   $a0, 0xe700
/* AD24EC 8005B34C 3C0FE200 */  lui   $t7, (0xE200001C >> 16) # lui $t7, 0xe200
/* AD24F0 8005B350 244E0008 */  addiu $t6, $v0, 8
/* AD24F4 8005B354 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AD24F8 8005B358 AC400004 */  sw    $zero, 4($v0)
/* AD24FC 8005B35C AC440000 */  sw    $a0, ($v0)
/* AD2500 8005B360 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2504 8005B364 3C19C811 */  lui   $t9, (0xC8112078 >> 16) # lui $t9, 0xc811
/* AD2508 8005B368 37392078 */  ori   $t9, (0xC8112078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* AD250C 8005B36C 244C0008 */  addiu $t4, $v0, 8
/* AD2510 8005B370 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AD2514 8005B374 35EF001C */  ori   $t7, (0xE200001C & 0xFFFF) # ori $t7, $t7, 0x1c
/* AD2518 8005B378 AC4F0000 */  sw    $t7, ($v0)
/* AD251C 8005B37C AC590004 */  sw    $t9, 4($v0)
/* AD2520 8005B380 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2524 8005B384 3C18D700 */  lui   $t8, 0xd700
/* AD2528 8005B388 3C0DFC41 */  lui   $t5, (0xFC41C7FF >> 16) # lui $t5, 0xfc41
/* AD252C 8005B38C 24490008 */  addiu $t1, $v0, 8
/* AD2530 8005B390 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AD2534 8005B394 AC400004 */  sw    $zero, 4($v0)
/* AD2538 8005B398 AC580000 */  sw    $t8, ($v0)
/* AD253C 8005B39C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2540 8005B3A0 35ADC7FF */  ori   $t5, (0xFC41C7FF & 0xFFFF) # ori $t5, $t5, 0xc7ff
/* AD2544 8005B3A4 240EFE38 */  li    $t6, -456
/* AD2548 8005B3A8 244A0008 */  addiu $t2, $v0, 8
/* AD254C 8005B3AC AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AD2550 8005B3B0 AC400004 */  sw    $zero, 4($v0)
/* AD2554 8005B3B4 AC440000 */  sw    $a0, ($v0)
/* AD2558 8005B3B8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD255C 8005B3BC 3C0FD9FF */  lui   $t7, (0xD9FFF9FF >> 16) # lui $t7, 0xd9ff
/* AD2560 8005B3C0 35EFF9FF */  ori   $t7, (0xD9FFF9FF & 0xFFFF) # ori $t7, $t7, 0xf9ff
/* AD2564 8005B3C4 244B0008 */  addiu $t3, $v0, 8
/* AD2568 8005B3C8 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* AD256C 8005B3CC AC4E0004 */  sw    $t6, 4($v0)
/* AD2570 8005B3D0 AC4D0000 */  sw    $t5, ($v0)
/* AD2574 8005B3D4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2578 8005B3D8 3C09D9FF */  lui   $t1, (0xD9FFFFFF >> 16) # lui $t1, 0xd9ff
/* AD257C 8005B3DC 3529FFFF */  ori   $t1, (0xD9FFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* AD2580 8005B3E0 244C0008 */  addiu $t4, $v0, 8
/* AD2584 8005B3E4 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AD2588 8005B3E8 AC400004 */  sw    $zero, 4($v0)
/* AD258C 8005B3EC AC4F0000 */  sw    $t7, ($v0)
/* AD2590 8005B3F0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2594 8005B3F4 3C180002 */  lui   $t8, 2
/* AD2598 8005B3F8 24050030 */  li    $a1, 48
/* AD259C 8005B3FC 24590008 */  addiu $t9, $v0, 8
/* AD25A0 8005B400 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AD25A4 8005B404 AC580004 */  sw    $t8, 4($v0)
/* AD25A8 8005B408 AC490000 */  sw    $t1, ($v0)
/* AD25AC 8005B40C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD25B0 8005B410 244A0008 */  addiu $t2, $v0, 8
/* AD25B4 8005B414 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AD25B8 8005B418 AC440000 */  sw    $a0, ($v0)
/* AD25BC 8005B41C 02002025 */  move  $a0, $s0
/* AD25C0 8005B420 0C031A73 */  jal   graph_alloc
/* AD25C4 8005B424 AC400004 */   sw    $zero, 4($v0)
/* AD25C8 8005B428 14400009 */  bnez  $v0, .L8005B450
/* AD25CC 8005B42C 00404025 */   move  $t0, $v0
/* AD25D0 8005B430 3C048014 */  lui   $a0, %hi(D_8013A5C8) # $a0, 0x8014
/* AD25D4 8005B434 3C058014 */  lui   $a1, %hi(D_8013A5D8) # $a1, 0x8014
/* AD25D8 8005B438 24A5A5D8 */  addiu $a1, %lo(D_8013A5D8) # addiu $a1, $a1, -0x5a28
/* AD25DC 8005B43C 2484A5C8 */  addiu $a0, %lo(D_8013A5C8) # addiu $a0, $a0, -0x5a38
/* AD25E0 8005B440 240602D6 */  li    $a2, 726
/* AD25E4 8005B444 0C0007FC */  jal   AssertMessage
/* AD25E8 8005B448 AFA2008C */   sw    $v0, 0x8c($sp)
/* AD25EC 8005B44C 8FA8008C */  lw    $t0, 0x8c($sp)
.L8005B450:
/* AD25F0 8005B450 8FA40094 */  lw    $a0, 0x94($sp)
/* AD25F4 8005B454 8FA50098 */  lw    $a1, 0x98($sp)
/* AD25F8 8005B458 8FA6009C */  lw    $a2, 0x9c($sp)
/* AD25FC 8005B45C C4840000 */  lwc1  $f4, ($a0)
/* AD2600 8005B460 27A70084 */  addiu $a3, $sp, 0x84
/* AD2604 8005B464 4600218D */  trunc.w.s $f6, $f4
/* AD2608 8005B468 440D3000 */  mfc1  $t5, $f6
/* AD260C 8005B46C 00000000 */  nop   
/* AD2610 8005B470 A50D0000 */  sh    $t5, ($t0)
/* AD2614 8005B474 C4880004 */  lwc1  $f8, 4($a0)
/* AD2618 8005B478 27AD007C */  addiu $t5, $sp, 0x7c
/* AD261C 8005B47C 4600428D */  trunc.w.s $f10, $f8
/* AD2620 8005B480 440C5000 */  mfc1  $t4, $f10
/* AD2624 8005B484 00000000 */  nop   
/* AD2628 8005B488 A50C0002 */  sh    $t4, 2($t0)
/* AD262C 8005B48C C4900008 */  lwc1  $f16, 8($a0)
/* AD2630 8005B490 4600848D */  trunc.w.s $f18, $f16
/* AD2634 8005B494 44199000 */  mfc1  $t9, $f18
/* AD2638 8005B498 00000000 */  nop   
/* AD263C 8005B49C A5190004 */  sh    $t9, 4($t0)
/* AD2640 8005B4A0 C4A40000 */  lwc1  $f4, ($a1)
/* AD2644 8005B4A4 4600218D */  trunc.w.s $f6, $f4
/* AD2648 8005B4A8 44183000 */  mfc1  $t8, $f6
/* AD264C 8005B4AC 00000000 */  nop   
/* AD2650 8005B4B0 A5180010 */  sh    $t8, 0x10($t0)
/* AD2654 8005B4B4 C4A80004 */  lwc1  $f8, 4($a1)
/* AD2658 8005B4B8 4600428D */  trunc.w.s $f10, $f8
/* AD265C 8005B4BC 440B5000 */  mfc1  $t3, $f10
/* AD2660 8005B4C0 00000000 */  nop   
/* AD2664 8005B4C4 A50B0012 */  sh    $t3, 0x12($t0)
/* AD2668 8005B4C8 C4B00008 */  lwc1  $f16, 8($a1)
/* AD266C 8005B4CC 27AB0080 */  addiu $t3, $sp, 0x80
/* AD2670 8005B4D0 4600848D */  trunc.w.s $f18, $f16
/* AD2674 8005B4D4 440E9000 */  mfc1  $t6, $f18
/* AD2678 8005B4D8 00000000 */  nop   
/* AD267C 8005B4DC A50E0014 */  sh    $t6, 0x14($t0)
/* AD2680 8005B4E0 C4C40000 */  lwc1  $f4, ($a2)
/* AD2684 8005B4E4 27AE0078 */  addiu $t6, $sp, 0x78
/* AD2688 8005B4E8 4600218D */  trunc.w.s $f6, $f4
/* AD268C 8005B4EC 440F3000 */  mfc1  $t7, $f6
/* AD2690 8005B4F0 00000000 */  nop   
/* AD2694 8005B4F4 A50F0020 */  sh    $t7, 0x20($t0)
/* AD2698 8005B4F8 C4C80004 */  lwc1  $f8, 4($a2)
/* AD269C 8005B4FC 4600428D */  trunc.w.s $f10, $f8
/* AD26A0 8005B500 44095000 */  mfc1  $t1, $f10
/* AD26A4 8005B504 00000000 */  nop   
/* AD26A8 8005B508 A5090022 */  sh    $t1, 0x22($t0)
/* AD26AC 8005B50C C4D00008 */  lwc1  $f16, 8($a2)
/* AD26B0 8005B510 4600848D */  trunc.w.s $f18, $f16
/* AD26B4 8005B514 440A9000 */  mfc1  $t2, $f18
/* AD26B8 8005B518 00000000 */  nop   
/* AD26BC 8005B51C A50A0024 */  sh    $t2, 0x24($t0)
/* AD26C0 8005B520 AFA8008C */  sw    $t0, 0x8c($sp)
/* AD26C4 8005B524 AFAE0018 */  sw    $t6, 0x18($sp)
/* AD26C8 8005B528 AFAD0014 */  sw    $t5, 0x14($sp)
/* AD26CC 8005B52C 0C03322D */  jal   func_800CC8B4
/* AD26D0 8005B530 AFAB0010 */   sw    $t3, 0x10($sp)
/* AD26D4 8005B534 8FA8008C */  lw    $t0, 0x8c($sp)
/* AD26D8 8005B538 240300FF */  li    $v1, 255
/* AD26DC 8005B53C 25040030 */  addiu $a0, $t0, 0x30
/* AD26E0 8005B540 0104082B */  sltu  $at, $t0, $a0
/* AD26E4 8005B544 1020002C */  beqz  $at, .L8005B5F8
/* AD26E8 8005B548 01001025 */   move  $v0, $t0
/* AD26EC 8005B54C 24420010 */  addiu $v0, $v0, 0x10
/* AD26F0 8005B550 0044082B */  sltu  $at, $v0, $a0
/* AD26F4 8005B554 A440FFF6 */  sh    $zero, -0xa($v0)
/* AD26F8 8005B558 A440FFF8 */  sh    $zero, -8($v0)
/* AD26FC 8005B55C 10200016 */  beqz  $at, .L8005B5B8
/* AD2700 8005B560 A440FFFA */   sh    $zero, -6($v0)
.L8005B564:
/* AD2704 8005B564 C7B20084 */  lwc1  $f18, 0x84($sp)
/* AD2708 8005B568 24420010 */  addiu $v0, $v0, 0x10
/* AD270C 8005B56C 0044082B */  sltu  $at, $v0, $a0
/* AD2710 8005B570 4600948D */  trunc.w.s $f18, $f18
/* AD2714 8005B574 44099000 */  mfc1  $t1, $f18
/* AD2718 8005B578 00000000 */  nop   
/* AD271C 8005B57C A049FFEC */  sb    $t1, -0x14($v0)
/* AD2720 8005B580 C7B20080 */  lwc1  $f18, 0x80($sp)
/* AD2724 8005B584 4600948D */  trunc.w.s $f18, $f18
/* AD2728 8005B588 440D9000 */  mfc1  $t5, $f18
/* AD272C 8005B58C 00000000 */  nop   
/* AD2730 8005B590 A04DFFED */  sb    $t5, -0x13($v0)
/* AD2734 8005B594 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* AD2738 8005B598 A043FFEF */  sb    $v1, -0x11($v0)
/* AD273C 8005B59C A440FFF6 */  sh    $zero, -0xa($v0)
/* AD2740 8005B5A0 4600948D */  trunc.w.s $f18, $f18
/* AD2744 8005B5A4 A440FFF8 */  sh    $zero, -8($v0)
/* AD2748 8005B5A8 A440FFFA */  sh    $zero, -6($v0)
/* AD274C 8005B5AC 44199000 */  mfc1  $t9, $f18
/* AD2750 8005B5B0 1420FFEC */  bnez  $at, .L8005B564
/* AD2754 8005B5B4 A059FFEE */   sb    $t9, -0x12($v0)
.L8005B5B8:
/* AD2758 8005B5B8 C7B20084 */  lwc1  $f18, 0x84($sp)
/* AD275C 8005B5BC 4600948D */  trunc.w.s $f18, $f18
/* AD2760 8005B5C0 44099000 */  mfc1  $t1, $f18
/* AD2764 8005B5C4 00000000 */  nop   
/* AD2768 8005B5C8 A049FFFC */  sb    $t1, -4($v0)
/* AD276C 8005B5CC C7B20080 */  lwc1  $f18, 0x80($sp)
/* AD2770 8005B5D0 4600948D */  trunc.w.s $f18, $f18
/* AD2774 8005B5D4 440D9000 */  mfc1  $t5, $f18
/* AD2778 8005B5D8 00000000 */  nop   
/* AD277C 8005B5DC A04DFFFD */  sb    $t5, -3($v0)
/* AD2780 8005B5E0 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* AD2784 8005B5E4 A043FFFF */  sb    $v1, -1($v0)
/* AD2788 8005B5E8 4600948D */  trunc.w.s $f18, $f18
/* AD278C 8005B5EC 44199000 */  mfc1  $t9, $f18
/* AD2790 8005B5F0 00000000 */  nop   
/* AD2794 8005B5F4 A059FFFE */  sb    $t9, -2($v0)
.L8005B5F8:
/* AD2798 8005B5F8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD279C 8005B5FC 3C180100 */  lui   $t8, (0x01003006 >> 16) # lui $t8, 0x100
/* AD27A0 8005B600 37183006 */  ori   $t8, (0x01003006 & 0xFFFF) # ori $t8, $t8, 0x3006
/* AD27A4 8005B604 24490008 */  addiu $t1, $v0, 8
/* AD27A8 8005B608 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AD27AC 8005B60C AC480004 */  sw    $t0, 4($v0)
/* AD27B0 8005B610 AC580000 */  sw    $t8, ($v0)
/* AD27B4 8005B614 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD27B8 8005B618 3C0B0500 */  lui   $t3, (0x05000204 >> 16) # lui $t3, 0x500
/* AD27BC 8005B61C 356B0204 */  ori   $t3, (0x05000204 & 0xFFFF) # ori $t3, $t3, 0x204
/* AD27C0 8005B620 244A0008 */  addiu $t2, $v0, 8
/* AD27C4 8005B624 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AD27C8 8005B628 3C068014 */  lui   $a2, %hi(D_8013A5F0) # $a2, 0x8014
/* AD27CC 8005B62C 24C6A5F0 */  addiu $a2, %lo(D_8013A5F0) # addiu $a2, $a2, -0x5a10
/* AD27D0 8005B630 27A40064 */  addiu $a0, $sp, 0x64
/* AD27D4 8005B634 02002825 */  move  $a1, $s0
/* AD27D8 8005B638 240702F5 */  li    $a3, 757
/* AD27DC 8005B63C AC400004 */  sw    $zero, 4($v0)
/* AD27E0 8005B640 0C031AD5 */  jal   func_800C6B54
/* AD27E4 8005B644 AC4B0000 */   sw    $t3, ($v0)
/* AD27E8 8005B648 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD27EC 8005B64C 8FB00028 */  lw    $s0, 0x28($sp)
/* AD27F0 8005B650 27BD0090 */  addiu $sp, $sp, 0x90
/* AD27F4 8005B654 03E00008 */  jr    $ra
/* AD27F8 8005B658 00000000 */   nop   

glabel func_8005B65C
/* AD27FC 8005B65C 3C0E8012 */  lui   $t6, %hi(D_8011DE00) # $t6, 0x8012
/* AD2800 8005B660 AFA40000 */  sw    $a0, ($sp)
/* AD2804 8005B664 25CEDE00 */  addiu $t6, %lo(D_8011DE00) # addiu $t6, $t6, -0x2200
/* AD2808 8005B668 8DD80000 */  lw    $t8, ($t6)
/* AD280C 8005B66C 24020001 */  li    $v0, 1
/* AD2810 8005B670 ACB80000 */  sw    $t8, ($a1)
/* AD2814 8005B674 8DCF0004 */  lw    $t7, 4($t6)
/* AD2818 8005B678 ACAF0004 */  sw    $t7, 4($a1)
/* AD281C 8005B67C 8DD80008 */  lw    $t8, 8($t6)
/* AD2820 8005B680 ACB80008 */  sw    $t8, 8($a1)
/* AD2824 8005B684 8DCF000C */  lw    $t7, 0xc($t6)
/* AD2828 8005B688 ACAF000C */  sw    $t7, 0xc($a1)
/* AD282C 8005B68C 8DD80010 */  lw    $t8, 0x10($t6)
/* AD2830 8005B690 ACB80010 */  sw    $t8, 0x10($a1)
/* AD2834 8005B694 8DCF0014 */  lw    $t7, 0x14($t6)
/* AD2838 8005B698 03E00008 */  jr    $ra
/* AD283C 8005B69C ACAF0014 */   sw    $t7, 0x14($a1)

glabel func_8005B6A0
/* AD2840 8005B6A0 AFA40000 */  sw    $a0, ($sp)
/* AD2844 8005B6A4 AFA50004 */  sw    $a1, 4($sp)
/* AD2848 8005B6A8 03E00008 */  jr    $ra
/* AD284C 8005B6AC 24020001 */   li    $v0, 1

glabel func_8005B6B0
/* AD2850 8005B6B0 AFA40000 */  sw    $a0, ($sp)
/* AD2854 8005B6B4 8CCE0000 */  lw    $t6, ($a2)
/* AD2858 8005B6B8 24080010 */  li    $t0, 16
/* AD285C 8005B6BC 24020001 */  li    $v0, 1
/* AD2860 8005B6C0 ACAE0000 */  sw    $t6, ($a1)
/* AD2864 8005B6C4 90CF0004 */  lbu   $t7, 4($a2)
/* AD2868 8005B6C8 A0AF0010 */  sb    $t7, 0x10($a1)
/* AD286C 8005B6CC 90D80005 */  lbu   $t8, 5($a2)
/* AD2870 8005B6D0 A0B80011 */  sb    $t8, 0x11($a1)
/* AD2874 8005B6D4 90D90006 */  lbu   $t9, 6($a2)
/* AD2878 8005B6D8 A0A80013 */  sb    $t0, 0x13($a1)
/* AD287C 8005B6DC A0B90012 */  sb    $t9, 0x12($a1)
/* AD2880 8005B6E0 90C90007 */  lbu   $t1, 7($a2)
/* AD2884 8005B6E4 03E00008 */  jr    $ra
/* AD2888 8005B6E8 A0A90015 */   sb    $t1, 0x15($a1)

glabel func_8005B6EC
/* AD288C 8005B6EC AFA40000 */  sw    $a0, ($sp)
/* AD2890 8005B6F0 ACA60000 */  sw    $a2, ($a1)
/* AD2894 8005B6F4 90EE0000 */  lbu   $t6, ($a3)
/* AD2898 8005B6F8 24080010 */  li    $t0, 16
/* AD289C 8005B6FC 24020001 */  li    $v0, 1
/* AD28A0 8005B700 A0AE0014 */  sb    $t6, 0x14($a1)
/* AD28A4 8005B704 90EF0001 */  lbu   $t7, 1($a3)
/* AD28A8 8005B708 A0AF0010 */  sb    $t7, 0x10($a1)
/* AD28AC 8005B70C 90F80002 */  lbu   $t8, 2($a3)
/* AD28B0 8005B710 A0B80011 */  sb    $t8, 0x11($a1)
/* AD28B4 8005B714 90F90003 */  lbu   $t9, 3($a3)
/* AD28B8 8005B718 A0A80013 */  sb    $t0, 0x13($a1)
/* AD28BC 8005B71C A0B90012 */  sb    $t9, 0x12($a1)
/* AD28C0 8005B720 90E90004 */  lbu   $t1, 4($a3)
/* AD28C4 8005B724 03E00008 */  jr    $ra
/* AD28C8 8005B728 A0A90015 */   sb    $t1, 0x15($a1)

glabel func_8005B72C
/* AD28CC 8005B72C AFA40000 */  sw    $a0, ($sp)
/* AD28D0 8005B730 ACA60000 */  sw    $a2, ($a1)
/* AD28D4 8005B734 90EE0000 */  lbu   $t6, ($a3)
/* AD28D8 8005B738 24020001 */  li    $v0, 1
/* AD28DC 8005B73C A0AE0014 */  sb    $t6, 0x14($a1)
/* AD28E0 8005B740 90EF0001 */  lbu   $t7, 1($a3)
/* AD28E4 8005B744 A0AF0010 */  sb    $t7, 0x10($a1)
/* AD28E8 8005B748 90F80002 */  lbu   $t8, 2($a3)
/* AD28EC 8005B74C A0B80011 */  sb    $t8, 0x11($a1)
/* AD28F0 8005B750 90F90003 */  lbu   $t9, 3($a3)
/* AD28F4 8005B754 A0B90012 */  sb    $t9, 0x12($a1)
/* AD28F8 8005B758 90E80004 */  lbu   $t0, 4($a3)
/* AD28FC 8005B75C A0A80013 */  sb    $t0, 0x13($a1)
/* AD2900 8005B760 90E90005 */  lbu   $t1, 5($a3)
/* AD2904 8005B764 03E00008 */  jr    $ra
/* AD2908 8005B768 A0A90015 */   sb    $t1, 0x15($a1)

glabel func_8005B76C
/* AD290C 8005B76C AFA40000 */  sw    $a0, ($sp)
/* AD2910 8005B770 90AE0010 */  lbu   $t6, 0x10($a1)
/* AD2914 8005B774 ACA00004 */  sw    $zero, 4($a1)
/* AD2918 8005B778 31CFFFF9 */  andi  $t7, $t6, 0xfff9
/* AD291C 8005B77C 03E00008 */  jr    $ra
/* AD2920 8005B780 A0AF0010 */   sb    $t7, 0x10($a1)

glabel func_8005B784
/* AD2924 8005B784 AFA40000 */  sw    $a0, ($sp)
/* AD2928 8005B788 90AE0011 */  lbu   $t6, 0x11($a1)
/* AD292C 8005B78C ACA00008 */  sw    $zero, 8($a1)
/* AD2930 8005B790 31CFFF7D */  andi  $t7, $t6, 0xff7d
/* AD2934 8005B794 03E00008 */  jr    $ra
/* AD2938 8005B798 A0AF0011 */   sb    $t7, 0x11($a1)

glabel func_8005B79C
/* AD293C 8005B79C AFA40000 */  sw    $a0, ($sp)
/* AD2940 8005B7A0 90AE0012 */  lbu   $t6, 0x12($a1)
/* AD2944 8005B7A4 90B80013 */  lbu   $t8, 0x13($a1)
/* AD2948 8005B7A8 ACA0000C */  sw    $zero, 0xc($a1)
/* AD294C 8005B7AC 31CFFFFD */  andi  $t7, $t6, 0xfffd
/* AD2950 8005B7B0 3319FFFE */  andi  $t9, $t8, 0xfffe
/* AD2954 8005B7B4 A0AF0012 */  sb    $t7, 0x12($a1)
/* AD2958 8005B7B8 03E00008 */  jr    $ra
/* AD295C 8005B7BC A0B90013 */   sb    $t9, 0x13($a1)

glabel func_8005B7C0
/* AD2960 8005B7C0 3C0E8012 */  lui   $t6, %hi(D_8011DE18) # $t6, 0x8012
/* AD2964 8005B7C4 AFA40000 */  sw    $a0, ($sp)
/* AD2968 8005B7C8 25CEDE18 */  addiu $t6, %lo(D_8011DE18) # addiu $t6, $t6, -0x21e8
/* AD296C 8005B7CC 8DD80000 */  lw    $t8, ($t6)
/* AD2970 8005B7D0 24020001 */  li    $v0, 1
/* AD2974 8005B7D4 ACB80000 */  sw    $t8, ($a1)
/* AD2978 8005B7D8 8DCF0004 */  lw    $t7, 4($t6)
/* AD297C 8005B7DC 03E00008 */  jr    $ra
/* AD2980 8005B7E0 ACAF0004 */   sw    $t7, 4($a1)

glabel func_8005B7E4
/* AD2984 8005B7E4 AFA40000 */  sw    $a0, ($sp)
/* AD2988 8005B7E8 AFA50004 */  sw    $a1, 4($sp)
/* AD298C 8005B7EC 03E00008 */  jr    $ra
/* AD2990 8005B7F0 24020001 */   li    $v0, 1

glabel func_8005B7F4
/* AD2994 8005B7F4 AFA40000 */  sw    $a0, ($sp)
/* AD2998 8005B7F8 8CCE0000 */  lw    $t6, ($a2)
/* AD299C 8005B7FC 24020001 */  li    $v0, 1
/* AD29A0 8005B800 ACAE0000 */  sw    $t6, ($a1)
/* AD29A4 8005B804 90CF0004 */  lbu   $t7, 4($a2)
/* AD29A8 8005B808 A0AF0004 */  sb    $t7, 4($a1)
/* AD29AC 8005B80C 90D80005 */  lbu   $t8, 5($a2)
/* AD29B0 8005B810 03E00008 */  jr    $ra
/* AD29B4 8005B814 A0B80005 */   sb    $t8, 5($a1)

glabel func_8005B818
/* AD29B8 8005B818 AFA40000 */  sw    $a0, ($sp)
/* AD29BC 8005B81C 03E00008 */  jr    $ra
/* AD29C0 8005B820 AFA50004 */   sw    $a1, 4($sp)

glabel func_8005B824
/* AD29C4 8005B824 3C0E8012 */  lui   $t6, %hi(D_8011DE20) # $t6, 0x8012
/* AD29C8 8005B828 AFA40000 */  sw    $a0, ($sp)
/* AD29CC 8005B82C 25CEDE20 */  addiu $t6, %lo(D_8011DE20) # addiu $t6, $t6, -0x21e0
/* AD29D0 8005B830 8DD80000 */  lw    $t8, ($t6)
/* AD29D4 8005B834 24020001 */  li    $v0, 1
/* AD29D8 8005B838 ACB80000 */  sw    $t8, ($a1)
/* AD29DC 8005B83C 8DCF0004 */  lw    $t7, 4($t6)
/* AD29E0 8005B840 ACAF0004 */  sw    $t7, 4($a1)
/* AD29E4 8005B844 8DD80008 */  lw    $t8, 8($t6)
/* AD29E8 8005B848 03E00008 */  jr    $ra
/* AD29EC 8005B84C ACB80008 */   sw    $t8, 8($a1)

glabel func_8005B850
/* AD29F0 8005B850 AFA40000 */  sw    $a0, ($sp)
/* AD29F4 8005B854 AFA50004 */  sw    $a1, 4($sp)
/* AD29F8 8005B858 03E00008 */  jr    $ra
/* AD29FC 8005B85C 24020001 */   li    $v0, 1

glabel func_8005B860
/* AD2A00 8005B860 AFA40000 */  sw    $a0, ($sp)
/* AD2A04 8005B864 8CCE0000 */  lw    $t6, ($a2)
/* AD2A08 8005B868 24020001 */  li    $v0, 1
/* AD2A0C 8005B86C ACAE0000 */  sw    $t6, ($a1)
/* AD2A10 8005B870 90CF0004 */  lbu   $t7, 4($a2)
/* AD2A14 8005B874 A0AF0004 */  sb    $t7, 4($a1)
/* AD2A18 8005B878 90D80005 */  lbu   $t8, 5($a2)
/* AD2A1C 8005B87C 03E00008 */  jr    $ra
/* AD2A20 8005B880 A0B80005 */   sb    $t8, 5($a1)

glabel func_8005B884
/* AD2A24 8005B884 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2A28 8005B888 3C0E8012 */  lui   $t6, %hi(D_8011DE2C) # $t6, 0x8012
/* AD2A2C 8005B88C 25CEDE2C */  addiu $t6, %lo(D_8011DE2C) # addiu $t6, $t6, -0x21d4
/* AD2A30 8005B890 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2A34 8005B894 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2A38 8005B898 00A03025 */  move  $a2, $a1
/* AD2A3C 8005B89C 25C80024 */  addiu $t0, $t6, 0x24
/* AD2A40 8005B8A0 00A0C825 */  move  $t9, $a1
.L8005B8A4:
/* AD2A44 8005B8A4 8DD80000 */  lw    $t8, ($t6)
/* AD2A48 8005B8A8 25CE000C */  addiu $t6, $t6, 0xc
/* AD2A4C 8005B8AC 2739000C */  addiu $t9, $t9, 0xc
/* AD2A50 8005B8B0 AF38FFF4 */  sw    $t8, -0xc($t9)
/* AD2A54 8005B8B4 8DCFFFF8 */  lw    $t7, -8($t6)
/* AD2A58 8005B8B8 AF2FFFF8 */  sw    $t7, -8($t9)
/* AD2A5C 8005B8BC 8DD8FFFC */  lw    $t8, -4($t6)
/* AD2A60 8005B8C0 15C8FFF8 */  bne   $t6, $t0, .L8005B8A4
/* AD2A64 8005B8C4 AF38FFFC */   sw    $t8, -4($t9)
/* AD2A68 8005B8C8 8DD80000 */  lw    $t8, ($t6)
/* AD2A6C 8005B8CC 00C02825 */  move  $a1, $a2
/* AD2A70 8005B8D0 AF380000 */  sw    $t8, ($t9)
/* AD2A74 8005B8D4 AFA6001C */  sw    $a2, 0x1c($sp)
/* AD2A78 8005B8D8 0C016DF0 */  jal   func_8005B7C0
/* AD2A7C 8005B8DC 8FA40018 */   lw    $a0, 0x18($sp)
/* AD2A80 8005B8E0 8FA6001C */  lw    $a2, 0x1c($sp)
/* AD2A84 8005B8E4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2A88 8005B8E8 0C016E09 */  jal   func_8005B824
/* AD2A8C 8005B8EC 24C50008 */   addiu $a1, $a2, 8
/* AD2A90 8005B8F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2A94 8005B8F4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2A98 8005B8F8 24020001 */  li    $v0, 1
/* AD2A9C 8005B8FC 03E00008 */  jr    $ra
/* AD2AA0 8005B900 00000000 */   nop   

glabel func_8005B904
/* AD2AA4 8005B904 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2AA8 8005B908 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2AAC 8005B90C AFA40018 */  sw    $a0, 0x18($sp)
/* AD2AB0 8005B910 0C016DF9 */  jal   func_8005B7E4
/* AD2AB4 8005B914 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2AB8 8005B918 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2ABC 8005B91C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2AC0 8005B920 0C016E14 */  jal   func_8005B850
/* AD2AC4 8005B924 24A50008 */   addiu $a1, $a1, 8
/* AD2AC8 8005B928 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2ACC 8005B92C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2AD0 8005B930 24020001 */  li    $v0, 1
/* AD2AD4 8005B934 03E00008 */  jr    $ra
/* AD2AD8 8005B938 00000000 */   nop   

glabel func_8005B93C
/* AD2ADC 8005B93C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD2AE0 8005B940 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD2AE4 8005B944 AFB00018 */  sw    $s0, 0x18($sp)
/* AD2AE8 8005B948 AFA40020 */  sw    $a0, 0x20($sp)
/* AD2AEC 8005B94C 90CE0000 */  lbu   $t6, ($a2)
/* AD2AF0 8005B950 00C08025 */  move  $s0, $a2
/* AD2AF4 8005B954 24C60004 */  addiu $a2, $a2, 4
/* AD2AF8 8005B958 A0AE0014 */  sb    $t6, 0x14($a1)
/* AD2AFC 8005B95C AFA50024 */  sw    $a1, 0x24($sp)
/* AD2B00 8005B960 0C016DFD */  jal   func_8005B7F4
/* AD2B04 8005B964 8FA40020 */   lw    $a0, 0x20($sp)
/* AD2B08 8005B968 8FA70024 */  lw    $a3, 0x24($sp)
/* AD2B0C 8005B96C 8FA40020 */  lw    $a0, 0x20($sp)
/* AD2B10 8005B970 2606000C */  addiu $a2, $s0, 0xc
/* AD2B14 8005B974 0C016E18 */  jal   func_8005B860
/* AD2B18 8005B978 24E50008 */   addiu $a1, $a3, 8
/* AD2B1C 8005B97C 8FA70024 */  lw    $a3, 0x24($sp)
/* AD2B20 8005B980 920F0014 */  lbu   $t7, 0x14($s0)
/* AD2B24 8005B984 24020001 */  li    $v0, 1
/* AD2B28 8005B988 A0EF0015 */  sb    $t7, 0x15($a3)
/* AD2B2C 8005B98C 92180015 */  lbu   $t8, 0x15($s0)
/* AD2B30 8005B990 A0F80016 */  sb    $t8, 0x16($a3)
/* AD2B34 8005B994 92190016 */  lbu   $t9, 0x16($s0)
/* AD2B38 8005B998 A0F90017 */  sb    $t9, 0x17($a3)
/* AD2B3C 8005B99C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD2B40 8005B9A0 8FB00018 */  lw    $s0, 0x18($sp)
/* AD2B44 8005B9A4 27BD0020 */  addiu $sp, $sp, 0x20
/* AD2B48 8005B9A8 03E00008 */  jr    $ra
/* AD2B4C 8005B9AC 00000000 */   nop   

glabel func_8005B9B0
/* AD2B50 8005B9B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2B54 8005B9B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2B58 8005B9B8 90AE0015 */  lbu   $t6, 0x15($a1)
/* AD2B5C 8005B9BC ACA00018 */  sw    $zero, 0x18($a1)
/* AD2B60 8005B9C0 ACA00020 */  sw    $zero, 0x20($a1)
/* AD2B64 8005B9C4 31D8FFFD */  andi  $t8, $t6, 0xfffd
/* AD2B68 8005B9C8 A0B80015 */  sb    $t8, 0x15($a1)
/* AD2B6C 8005B9CC 3319FFBF */  andi  $t9, $t8, 0xffbf
/* AD2B70 8005B9D0 0C016E06 */  jal   func_8005B818
/* AD2B74 8005B9D4 A0B90015 */   sb    $t9, 0x15($a1)
/* AD2B78 8005B9D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2B7C 8005B9DC 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2B80 8005B9E0 03E00008 */  jr    $ra
/* AD2B84 8005B9E4 00000000 */   nop   

glabel func_8005B9E8
/* AD2B88 8005B9E8 AFA40000 */  sw    $a0, ($sp)
/* AD2B8C 8005B9EC 90AE0016 */  lbu   $t6, 0x16($a1)
/* AD2B90 8005B9F0 A4A00012 */  sh    $zero, 0x12($a1)
/* AD2B94 8005B9F4 84A20012 */  lh    $v0, 0x12($a1)
/* AD2B98 8005B9F8 31D8FFFD */  andi  $t8, $t6, 0xfffd
/* AD2B9C 8005B9FC A0B80016 */  sb    $t8, 0x16($a1)
/* AD2BA0 8005BA00 3319FF7F */  andi  $t9, $t8, 0xff7f
/* AD2BA4 8005BA04 A0B90016 */  sb    $t9, 0x16($a1)
/* AD2BA8 8005BA08 ACA0001C */  sw    $zero, 0x1c($a1)
/* AD2BAC 8005BA0C ACA00024 */  sw    $zero, 0x24($a1)
/* AD2BB0 8005BA10 A4A20010 */  sh    $v0, 0x10($a1)
/* AD2BB4 8005BA14 03E00008 */  jr    $ra
/* AD2BB8 8005BA18 A4A2000E */   sh    $v0, 0xe($a1)

glabel func_8005BA1C
/* AD2BBC 8005BA1C AFA40000 */  sw    $a0, ($sp)
/* AD2BC0 8005BA20 90AE0017 */  lbu   $t6, 0x17($a1)
/* AD2BC4 8005BA24 31CFFFFD */  andi  $t7, $t6, 0xfffd
/* AD2BC8 8005BA28 03E00008 */  jr    $ra
/* AD2BCC 8005BA2C A0AF0017 */   sb    $t7, 0x17($a1)

glabel func_8005BA30
/* AD2BD0 8005BA30 3C0E8012 */  lui   $t6, %hi(D_8011DE54) # $t6, 0x8012
/* AD2BD4 8005BA34 AFA40000 */  sw    $a0, ($sp)
/* AD2BD8 8005BA38 25CEDE54 */  addiu $t6, %lo(D_8011DE54) # addiu $t6, $t6, -0x21ac
/* AD2BDC 8005BA3C 8DD80000 */  lw    $t8, ($t6)
/* AD2BE0 8005BA40 24020001 */  li    $v0, 1
/* AD2BE4 8005BA44 ACB80000 */  sw    $t8, ($a1)
/* AD2BE8 8005BA48 8DCF0004 */  lw    $t7, 4($t6)
/* AD2BEC 8005BA4C ACAF0004 */  sw    $t7, 4($a1)
/* AD2BF0 8005BA50 8DD80008 */  lw    $t8, 8($t6)
/* AD2BF4 8005BA54 ACB80008 */  sw    $t8, 8($a1)
/* AD2BF8 8005BA58 8DCF000C */  lw    $t7, 0xc($t6)
/* AD2BFC 8005BA5C ACAF000C */  sw    $t7, 0xc($a1)
/* AD2C00 8005BA60 8DD80010 */  lw    $t8, 0x10($t6)
/* AD2C04 8005BA64 ACB80010 */  sw    $t8, 0x10($a1)
/* AD2C08 8005BA68 8DCF0014 */  lw    $t7, 0x14($t6)
/* AD2C0C 8005BA6C 03E00008 */  jr    $ra
/* AD2C10 8005BA70 ACAF0014 */   sw    $t7, 0x14($a1)

glabel func_8005BA74
/* AD2C14 8005BA74 AFA40000 */  sw    $a0, ($sp)
/* AD2C18 8005BA78 AFA50004 */  sw    $a1, 4($sp)
/* AD2C1C 8005BA7C 03E00008 */  jr    $ra
/* AD2C20 8005BA80 24020001 */   li    $v0, 1

glabel func_8005BA84
/* AD2C24 8005BA84 AFA40000 */  sw    $a0, ($sp)
/* AD2C28 8005BA88 90CE0000 */  lbu   $t6, ($a2)
/* AD2C2C 8005BA8C 3C018014 */  lui   $at, 0x8014
/* AD2C30 8005BA90 24020001 */  li    $v0, 1
/* AD2C34 8005BA94 A0AE0014 */  sb    $t6, 0x14($a1)
/* AD2C38 8005BA98 88D80002 */  lwl   $t8, 2($a2)
/* AD2C3C 8005BA9C 98D80005 */  lwr   $t8, 5($a2)
/* AD2C40 8005BAA0 A8B80000 */  swl   $t8, ($a1)
/* AD2C44 8005BAA4 B8B80003 */  swr   $t8, 3($a1)
/* AD2C48 8005BAA8 88CF0006 */  lwl   $t7, 6($a2)
/* AD2C4C 8005BAAC 98CF0009 */  lwr   $t7, 9($a2)
/* AD2C50 8005BAB0 A8AF0004 */  swl   $t7, 4($a1)
/* AD2C54 8005BAB4 B8AF0007 */  swr   $t7, 7($a1)
/* AD2C58 8005BAB8 84D9000A */  lh    $t9, 0xa($a2)
/* AD2C5C 8005BABC C428ACF0 */  lwc1  $f8, -0x5310($at)
/* AD2C60 8005BAC0 44992000 */  mtc1  $t9, $f4
/* AD2C64 8005BAC4 00000000 */  nop   
/* AD2C68 8005BAC8 468021A0 */  cvt.s.w $f6, $f4
/* AD2C6C 8005BACC 46083282 */  mul.s $f10, $f6, $f8
/* AD2C70 8005BAD0 03E00008 */  jr    $ra
/* AD2C74 8005BAD4 E4AA0010 */   swc1  $f10, 0x10($a1)

glabel func_8005BAD8
/* AD2C78 8005BAD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2C7C 8005BADC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2C80 8005BAE0 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2C84 8005BAE4 0C016E21 */  jal   func_8005B884
/* AD2C88 8005BAE8 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2C8C 8005BAEC 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2C90 8005BAF0 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2C94 8005BAF4 0C016E8C */  jal   func_8005BA30
/* AD2C98 8005BAF8 24A50028 */   addiu $a1, $a1, 0x28
/* AD2C9C 8005BAFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2CA0 8005BB00 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2CA4 8005BB04 24020001 */  li    $v0, 1
/* AD2CA8 8005BB08 03E00008 */  jr    $ra
/* AD2CAC 8005BB0C 00000000 */   nop   

glabel func_8005BB10
/* AD2CB0 8005BB10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2CB4 8005BB14 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2CB8 8005BB18 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2CBC 8005BB1C 0C016E41 */  jal   func_8005B904
/* AD2CC0 8005BB20 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2CC4 8005BB24 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2CC8 8005BB28 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2CCC 8005BB2C 0C016E9D */  jal   func_8005BA74
/* AD2CD0 8005BB30 24A50028 */   addiu $a1, $a1, 0x28
/* AD2CD4 8005BB34 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2CD8 8005BB38 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2CDC 8005BB3C 24020001 */  li    $v0, 1
/* AD2CE0 8005BB40 03E00008 */  jr    $ra
/* AD2CE4 8005BB44 00000000 */   nop   

glabel func_8005BB48
/* AD2CE8 8005BB48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2CEC 8005BB4C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2CF0 8005BB50 AFA40018 */  sw    $a0, 0x18($sp)
/* AD2CF4 8005BB54 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD2CF8 8005BB58 0C016E4F */  jal   func_8005B93C
/* AD2CFC 8005BB5C AFA60020 */   sw    $a2, 0x20($sp)
/* AD2D00 8005BB60 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2D04 8005BB64 8FA60020 */  lw    $a2, 0x20($sp)
/* AD2D08 8005BB68 8FA40018 */  lw    $a0, 0x18($sp)
/* AD2D0C 8005BB6C 24A50028 */  addiu $a1, $a1, 0x28
/* AD2D10 8005BB70 0C016EA1 */  jal   func_8005BA84
/* AD2D14 8005BB74 24C60018 */   addiu $a2, $a2, 0x18
/* AD2D18 8005BB78 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2D1C 8005BB7C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2D20 8005BB80 24020001 */  li    $v0, 1
/* AD2D24 8005BB84 03E00008 */  jr    $ra
/* AD2D28 8005BB88 00000000 */   nop   

glabel func_8005BB8C
/* AD2D2C 8005BB8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2D30 8005BB90 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2D34 8005BB94 0C016E6C */  jal   func_8005B9B0
/* AD2D38 8005BB98 00000000 */   nop   
/* AD2D3C 8005BB9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2D40 8005BBA0 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2D44 8005BBA4 24020001 */  li    $v0, 1
/* AD2D48 8005BBA8 03E00008 */  jr    $ra
/* AD2D4C 8005BBAC 00000000 */   nop   

glabel func_8005BBB0
/* AD2D50 8005BBB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2D54 8005BBB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2D58 8005BBB8 0C016E7A */  jal   func_8005B9E8
/* AD2D5C 8005BBBC 00000000 */   nop   
/* AD2D60 8005BBC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2D64 8005BBC4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2D68 8005BBC8 24020001 */  li    $v0, 1
/* AD2D6C 8005BBCC 03E00008 */  jr    $ra
/* AD2D70 8005BBD0 00000000 */   nop   

glabel func_8005BBD4
/* AD2D74 8005BBD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2D78 8005BBD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2D7C 8005BBDC 0C016E87 */  jal   func_8005BA1C
/* AD2D80 8005BBE0 00000000 */   nop   
/* AD2D84 8005BBE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2D88 8005BBE8 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2D8C 8005BBEC 24020001 */  li    $v0, 1
/* AD2D90 8005BBF0 03E00008 */  jr    $ra
/* AD2D94 8005BBF4 00000000 */   nop   

/* AD2D98 8005BBF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD2D9C 8005BBFC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD2DA0 8005BC00 0C016D97 */  jal   func_8005B65C
/* AD2DA4 8005BC04 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD2DA8 8005BC08 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD2DAC 8005BC0C 24020001 */  li    $v0, 1
/* AD2DB0 8005BC10 ACA00018 */  sw    $zero, 0x18($a1)
/* AD2DB4 8005BC14 ACA0001C */  sw    $zero, 0x1c($a1)
/* AD2DB8 8005BC18 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD2DBC 8005BC1C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD2DC0 8005BC20 03E00008 */  jr    $ra
/* AD2DC4 8005BC24 00000000 */   nop   

/* AD2DC8 8005BC28 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2DCC 8005BC2C AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2DD0 8005BC30 AFB20020 */  sw    $s2, 0x20($sp)
/* AD2DD4 8005BC34 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD2DD8 8005BC38 00A08825 */  move  $s1, $a1
/* AD2DDC 8005BC3C 00809025 */  move  $s2, $a0
/* AD2DE0 8005BC40 0C016DA8 */  jal   func_8005B6A0
/* AD2DE4 8005BC44 AFB00018 */   sw    $s0, 0x18($sp)
/* AD2DE8 8005BC48 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD2DEC 8005BC4C 8E24001C */  lw    $a0, 0x1c($s1)
/* AD2DF0 8005BC50 000E7980 */  sll   $t7, $t6, 6
/* AD2DF4 8005BC54 008FC021 */  addu  $t8, $a0, $t7
/* AD2DF8 8005BC58 0098082B */  sltu  $at, $a0, $t8
/* AD2DFC 8005BC5C 1020000C */  beqz  $at, .L8005BC90
/* AD2E00 8005BC60 00808025 */   move  $s0, $a0
/* AD2E04 8005BC64 02402025 */  move  $a0, $s2
.L8005BC68:
/* AD2E08 8005BC68 0C016EC4 */  jal   func_8005BB10
/* AD2E0C 8005BC6C 02002825 */   move  $a1, $s0
/* AD2E10 8005BC70 8E390018 */  lw    $t9, 0x18($s1)
/* AD2E14 8005BC74 8E24001C */  lw    $a0, 0x1c($s1)
/* AD2E18 8005BC78 26100040 */  addiu $s0, $s0, 0x40
/* AD2E1C 8005BC7C 00194180 */  sll   $t0, $t9, 6
/* AD2E20 8005BC80 00884821 */  addu  $t1, $a0, $t0
/* AD2E24 8005BC84 0209082B */  sltu  $at, $s0, $t1
/* AD2E28 8005BC88 5420FFF7 */  bnezl $at, .L8005BC68
/* AD2E2C 8005BC8C 02402025 */   move  $a0, $s2
.L8005BC90:
/* AD2E30 8005BC90 10800005 */  beqz  $a0, .L8005BCA8
/* AD2E34 8005BC94 AE200018 */   sw    $zero, 0x18($s1)
/* AD2E38 8005BC98 3C058014 */  lui   $a1, %hi(D_8013A608) # $a1, 0x8014
/* AD2E3C 8005BC9C 24A5A608 */  addiu $a1, %lo(D_8013A608) # addiu $a1, $a1, -0x59f8
/* AD2E40 8005BCA0 0C01EC35 */  jal   func_8007B0D4
/* AD2E44 8005BCA4 24060571 */   li    $a2, 1393
.L8005BCA8:
/* AD2E48 8005BCA8 AE20001C */  sw    $zero, 0x1c($s1)
/* AD2E4C 8005BCAC 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2E50 8005BCB0 8FB20020 */  lw    $s2, 0x20($sp)
/* AD2E54 8005BCB4 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD2E58 8005BCB8 8FB00018 */  lw    $s0, 0x18($sp)
/* AD2E5C 8005BCBC 27BD0028 */  addiu $sp, $sp, 0x28
/* AD2E60 8005BCC0 03E00008 */  jr    $ra
/* AD2E64 8005BCC4 24020001 */   li    $v0, 1

/* AD2E68 8005BCC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2E6C 8005BCCC AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2E70 8005BCD0 AFB20020 */  sw    $s2, 0x20($sp)
/* AD2E74 8005BCD4 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD2E78 8005BCD8 00A08825 */  move  $s1, $a1
/* AD2E7C 8005BCDC 00809025 */  move  $s2, $a0
/* AD2E80 8005BCE0 0C016DA8 */  jal   func_8005B6A0
/* AD2E84 8005BCE4 AFB00018 */   sw    $s0, 0x18($sp)
/* AD2E88 8005BCE8 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD2E8C 8005BCEC 8E30001C */  lw    $s0, 0x1c($s1)
/* AD2E90 8005BCF0 000E7980 */  sll   $t7, $t6, 6
/* AD2E94 8005BCF4 020FC021 */  addu  $t8, $s0, $t7
/* AD2E98 8005BCF8 0218082B */  sltu  $at, $s0, $t8
/* AD2E9C 8005BCFC 1020000B */  beqz  $at, .L8005BD2C
/* AD2EA0 8005BD00 02402025 */   move  $a0, $s2
.L8005BD04:
/* AD2EA4 8005BD04 0C016EC4 */  jal   func_8005BB10
/* AD2EA8 8005BD08 02002825 */   move  $a1, $s0
/* AD2EAC 8005BD0C 8E280018 */  lw    $t0, 0x18($s1)
/* AD2EB0 8005BD10 8E39001C */  lw    $t9, 0x1c($s1)
/* AD2EB4 8005BD14 26100040 */  addiu $s0, $s0, 0x40
/* AD2EB8 8005BD18 00084980 */  sll   $t1, $t0, 6
/* AD2EBC 8005BD1C 03295021 */  addu  $t2, $t9, $t1
/* AD2EC0 8005BD20 020A082B */  sltu  $at, $s0, $t2
/* AD2EC4 8005BD24 5420FFF7 */  bnezl $at, .L8005BD04
/* AD2EC8 8005BD28 02402025 */   move  $a0, $s2
.L8005BD2C:
/* AD2ECC 8005BD2C AE200018 */  sw    $zero, 0x18($s1)
/* AD2ED0 8005BD30 AE20001C */  sw    $zero, 0x1c($s1)
/* AD2ED4 8005BD34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2ED8 8005BD38 8FB20020 */  lw    $s2, 0x20($sp)
/* AD2EDC 8005BD3C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD2EE0 8005BD40 8FB00018 */  lw    $s0, 0x18($sp)
/* AD2EE4 8005BD44 27BD0028 */  addiu $sp, $sp, 0x28
/* AD2EE8 8005BD48 03E00008 */  jr    $ra
/* AD2EEC 8005BD4C 24020001 */   li    $v0, 1

/* AD2EF0 8005BD50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2EF4 8005BD54 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2EF8 8005BD58 AFB30020 */  sw    $s3, 0x20($sp)
/* AD2EFC 8005BD5C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD2F00 8005BD60 00A09025 */  move  $s2, $a1
/* AD2F04 8005BD64 00809825 */  move  $s3, $a0
/* AD2F08 8005BD68 AFB10018 */  sw    $s1, 0x18($sp)
/* AD2F0C 8005BD6C AFB00014 */  sw    $s0, 0x14($sp)
/* AD2F10 8005BD70 0C016DAC */  jal   func_8005B6B0
/* AD2F14 8005BD74 AFA60030 */   sw    $a2, 0x30($sp)
/* AD2F18 8005BD78 8FA30030 */  lw    $v1, 0x30($sp)
/* AD2F1C 8005BD7C 3C058014 */  lui   $a1, %hi(D_8013A620) # $a1, 0x8014
/* AD2F20 8005BD80 24A5A620 */  addiu $a1, %lo(D_8013A620) # addiu $a1, $a1, -0x59e0
/* AD2F24 8005BD84 8C6E0008 */  lw    $t6, 8($v1)
/* AD2F28 8005BD88 240605A3 */  li    $a2, 1443
/* AD2F2C 8005BD8C AE4E0018 */  sw    $t6, 0x18($s2)
/* AD2F30 8005BD90 8C640008 */  lw    $a0, 8($v1)
/* AD2F34 8005BD94 0C01EBB8 */  jal   func_8007AEE0
/* AD2F38 8005BD98 00042180 */   sll   $a0, $a0, 6
/* AD2F3C 8005BD9C 1440000D */  bnez  $v0, .L8005BDD4
/* AD2F40 8005BDA0 AE42001C */   sw    $v0, 0x1c($s2)
/* AD2F44 8005BDA4 3C048014 */  lui   $a0, %hi(D_8013A638) # $a0, 0x8014
/* AD2F48 8005BDA8 AE400018 */  sw    $zero, 0x18($s2)
/* AD2F4C 8005BDAC 0C00084C */  jal   DebugMessage
/* AD2F50 8005BDB0 2484A638 */   addiu $a0, %lo(D_8013A638) # addiu $a0, $a0, -0x59c8
/* AD2F54 8005BDB4 3C048014 */  lui   $a0, %hi(D_8013A640) # $a0, 0x8014
/* AD2F58 8005BDB8 0C00084C */  jal   DebugMessage
/* AD2F5C 8005BDBC 2484A640 */   addiu $a0, %lo(D_8013A640) # addiu $a0, $a0, -0x59c0
/* AD2F60 8005BDC0 3C048014 */  lui   $a0, %hi(D_8013A670) # $a0, 0x8014
/* AD2F64 8005BDC4 0C00084C */  jal   DebugMessage
/* AD2F68 8005BDC8 2484A670 */   addiu $a0, %lo(D_8013A670) # addiu $a0, $a0, -0x5990
/* AD2F6C 8005BDCC 10000019 */  b     .L8005BE34
/* AD2F70 8005BDD0 00001025 */   move  $v0, $zero
.L8005BDD4:
/* AD2F74 8005BDD4 8E580018 */  lw    $t8, 0x18($s2)
/* AD2F78 8005BDD8 8E50001C */  lw    $s0, 0x1c($s2)
/* AD2F7C 8005BDDC 8FAF0030 */  lw    $t7, 0x30($sp)
/* AD2F80 8005BDE0 0018C980 */  sll   $t9, $t8, 6
/* AD2F84 8005BDE4 02194021 */  addu  $t0, $s0, $t9
/* AD2F88 8005BDE8 0208082B */  sltu  $at, $s0, $t0
/* AD2F8C 8005BDEC 10200010 */  beqz  $at, .L8005BE30
/* AD2F90 8005BDF0 8DF1000C */   lw    $s1, 0xc($t7)
.L8005BDF4:
/* AD2F94 8005BDF4 02602025 */  move  $a0, $s3
/* AD2F98 8005BDF8 0C016EB6 */  jal   func_8005BAD8
/* AD2F9C 8005BDFC 02002825 */   move  $a1, $s0
/* AD2FA0 8005BE00 02602025 */  move  $a0, $s3
/* AD2FA4 8005BE04 02002825 */  move  $a1, $s0
/* AD2FA8 8005BE08 0C016ED2 */  jal   func_8005BB48
/* AD2FAC 8005BE0C 02203025 */   move  $a2, $s1
/* AD2FB0 8005BE10 8E4A0018 */  lw    $t2, 0x18($s2)
/* AD2FB4 8005BE14 8E49001C */  lw    $t1, 0x1c($s2)
/* AD2FB8 8005BE18 26100040 */  addiu $s0, $s0, 0x40
/* AD2FBC 8005BE1C 000A5980 */  sll   $t3, $t2, 6
/* AD2FC0 8005BE20 012B6021 */  addu  $t4, $t1, $t3
/* AD2FC4 8005BE24 020C082B */  sltu  $at, $s0, $t4
/* AD2FC8 8005BE28 1420FFF2 */  bnez  $at, .L8005BDF4
/* AD2FCC 8005BE2C 26310024 */   addiu $s1, $s1, 0x24
.L8005BE30:
/* AD2FD0 8005BE30 24020001 */  li    $v0, 1
.L8005BE34:
/* AD2FD4 8005BE34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2FD8 8005BE38 8FB00014 */  lw    $s0, 0x14($sp)
/* AD2FDC 8005BE3C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD2FE0 8005BE40 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD2FE4 8005BE44 8FB30020 */  lw    $s3, 0x20($sp)
/* AD2FE8 8005BE48 03E00008 */  jr    $ra
/* AD2FEC 8005BE4C 27BD0028 */   addiu $sp, $sp, 0x28

/* AD2FF0 8005BE50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2FF4 8005BE54 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2FF8 8005BE58 AFB30020 */  sw    $s3, 0x20($sp)
/* AD2FFC 8005BE5C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3000 8005BE60 00A09025 */  move  $s2, $a1
/* AD3004 8005BE64 00809825 */  move  $s3, $a0
/* AD3008 8005BE68 AFB10018 */  sw    $s1, 0x18($sp)
/* AD300C 8005BE6C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3010 8005BE70 0C016DBB */  jal   func_8005B6EC
/* AD3014 8005BE74 AFA70034 */   sw    $a3, 0x34($sp)
/* AD3018 8005BE78 8FA30034 */  lw    $v1, 0x34($sp)
/* AD301C 8005BE7C 3C058014 */  lui   $a1, %hi(D_8013A674) # $a1, 0x8014
/* AD3020 8005BE80 24A5A674 */  addiu $a1, %lo(D_8013A674) # addiu $a1, $a1, -0x598c
/* AD3024 8005BE84 8C6E0008 */  lw    $t6, 8($v1)
/* AD3028 8005BE88 240605D2 */  li    $a2, 1490
/* AD302C 8005BE8C AE4E0018 */  sw    $t6, 0x18($s2)
/* AD3030 8005BE90 8C640008 */  lw    $a0, 8($v1)
/* AD3034 8005BE94 0C01EBB8 */  jal   func_8007AEE0
/* AD3038 8005BE98 00042180 */   sll   $a0, $a0, 6
/* AD303C 8005BE9C 1440000D */  bnez  $v0, .L8005BED4
/* AD3040 8005BEA0 AE42001C */   sw    $v0, 0x1c($s2)
/* AD3044 8005BEA4 3C048014 */  lui   $a0, %hi(D_8013A68C) # $a0, 0x8014
/* AD3048 8005BEA8 AE400018 */  sw    $zero, 0x18($s2)
/* AD304C 8005BEAC 0C00084C */  jal   DebugMessage
/* AD3050 8005BEB0 2484A68C */   addiu $a0, %lo(D_8013A68C) # addiu $a0, $a0, -0x5974
/* AD3054 8005BEB4 3C048014 */  lui   $a0, %hi(D_8013A694) # $a0, 0x8014
/* AD3058 8005BEB8 0C00084C */  jal   DebugMessage
/* AD305C 8005BEBC 2484A694 */   addiu $a0, %lo(D_8013A694) # addiu $a0, $a0, -0x596c
/* AD3060 8005BEC0 3C048014 */  lui   $a0, %hi(D_8013A6C4) # $a0, 0x8014
/* AD3064 8005BEC4 0C00084C */  jal   DebugMessage
/* AD3068 8005BEC8 2484A6C4 */   addiu $a0, %lo(D_8013A6C4) # addiu $a0, $a0, -0x593c
/* AD306C 8005BECC 10000019 */  b     .L8005BF34
/* AD3070 8005BED0 00001025 */   move  $v0, $zero
.L8005BED4:
/* AD3074 8005BED4 8E580018 */  lw    $t8, 0x18($s2)
/* AD3078 8005BED8 8E50001C */  lw    $s0, 0x1c($s2)
/* AD307C 8005BEDC 8FAF0034 */  lw    $t7, 0x34($sp)
/* AD3080 8005BEE0 0018C980 */  sll   $t9, $t8, 6
/* AD3084 8005BEE4 02194021 */  addu  $t0, $s0, $t9
/* AD3088 8005BEE8 0208082B */  sltu  $at, $s0, $t0
/* AD308C 8005BEEC 10200010 */  beqz  $at, .L8005BF30
/* AD3090 8005BEF0 8DF1000C */   lw    $s1, 0xc($t7)
.L8005BEF4:
/* AD3094 8005BEF4 02602025 */  move  $a0, $s3
/* AD3098 8005BEF8 0C016EB6 */  jal   func_8005BAD8
/* AD309C 8005BEFC 02002825 */   move  $a1, $s0
/* AD30A0 8005BF00 02602025 */  move  $a0, $s3
/* AD30A4 8005BF04 02002825 */  move  $a1, $s0
/* AD30A8 8005BF08 0C016ED2 */  jal   func_8005BB48
/* AD30AC 8005BF0C 02203025 */   move  $a2, $s1
/* AD30B0 8005BF10 8E4A0018 */  lw    $t2, 0x18($s2)
/* AD30B4 8005BF14 8E49001C */  lw    $t1, 0x1c($s2)
/* AD30B8 8005BF18 26100040 */  addiu $s0, $s0, 0x40
/* AD30BC 8005BF1C 000A5980 */  sll   $t3, $t2, 6
/* AD30C0 8005BF20 012B6021 */  addu  $t4, $t1, $t3
/* AD30C4 8005BF24 020C082B */  sltu  $at, $s0, $t4
/* AD30C8 8005BF28 1420FFF2 */  bnez  $at, .L8005BEF4
/* AD30CC 8005BF2C 26310024 */   addiu $s1, $s1, 0x24
.L8005BF30:
/* AD30D0 8005BF30 24020001 */  li    $v0, 1
.L8005BF34:
/* AD30D4 8005BF34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD30D8 8005BF38 8FB00014 */  lw    $s0, 0x14($sp)
/* AD30DC 8005BF3C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD30E0 8005BF40 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD30E4 8005BF44 8FB30020 */  lw    $s3, 0x20($sp)
/* AD30E8 8005BF48 03E00008 */  jr    $ra
/* AD30EC 8005BF4C 27BD0028 */   addiu $sp, $sp, 0x28

/* AD30F0 8005BF50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD30F4 8005BF54 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD30F8 8005BF58 AFB30020 */  sw    $s3, 0x20($sp)
/* AD30FC 8005BF5C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3100 8005BF60 00A09025 */  move  $s2, $a1
/* AD3104 8005BF64 00809825 */  move  $s3, $a0
/* AD3108 8005BF68 AFB10018 */  sw    $s1, 0x18($sp)
/* AD310C 8005BF6C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3110 8005BF70 0C016DCB */  jal   func_8005B72C
/* AD3114 8005BF74 AFA70034 */   sw    $a3, 0x34($sp)
/* AD3118 8005BF78 8FA30034 */  lw    $v1, 0x34($sp)
/* AD311C 8005BF7C 3C058014 */  lui   $a1, %hi(D_8013A6C8) # $a1, 0x8014
/* AD3120 8005BF80 24A5A6C8 */  addiu $a1, %lo(D_8013A6C8) # addiu $a1, $a1, -0x5938
/* AD3124 8005BF84 8C6E0008 */  lw    $t6, 8($v1)
/* AD3128 8005BF88 2406060F */  li    $a2, 1551
/* AD312C 8005BF8C AE4E0018 */  sw    $t6, 0x18($s2)
/* AD3130 8005BF90 8C640008 */  lw    $a0, 8($v1)
/* AD3134 8005BF94 0C01EBB8 */  jal   func_8007AEE0
/* AD3138 8005BF98 00042180 */   sll   $a0, $a0, 6
/* AD313C 8005BF9C 1440000D */  bnez  $v0, .L8005BFD4
/* AD3140 8005BFA0 AE42001C */   sw    $v0, 0x1c($s2)
/* AD3144 8005BFA4 3C048014 */  lui   $a0, %hi(D_8013A6E0) # $a0, 0x8014
/* AD3148 8005BFA8 AE400018 */  sw    $zero, 0x18($s2)
/* AD314C 8005BFAC 0C00084C */  jal   DebugMessage
/* AD3150 8005BFB0 2484A6E0 */   addiu $a0, %lo(D_8013A6E0) # addiu $a0, $a0, -0x5920
/* AD3154 8005BFB4 3C048014 */  lui   $a0, %hi(D_8013A6E8) # $a0, 0x8014
/* AD3158 8005BFB8 0C00084C */  jal   DebugMessage
/* AD315C 8005BFBC 2484A6E8 */   addiu $a0, %lo(D_8013A6E8) # addiu $a0, $a0, -0x5918
/* AD3160 8005BFC0 3C048014 */  lui   $a0, %hi(D_8013A714) # $a0, 0x8014
/* AD3164 8005BFC4 0C00084C */  jal   DebugMessage
/* AD3168 8005BFC8 2484A714 */   addiu $a0, %lo(D_8013A714) # addiu $a0, $a0, -0x58ec
/* AD316C 8005BFCC 10000019 */  b     .L8005C034
/* AD3170 8005BFD0 00001025 */   move  $v0, $zero
.L8005BFD4:
/* AD3174 8005BFD4 8E580018 */  lw    $t8, 0x18($s2)
/* AD3178 8005BFD8 8E50001C */  lw    $s0, 0x1c($s2)
/* AD317C 8005BFDC 8FAF0034 */  lw    $t7, 0x34($sp)
/* AD3180 8005BFE0 0018C980 */  sll   $t9, $t8, 6
/* AD3184 8005BFE4 02194021 */  addu  $t0, $s0, $t9
/* AD3188 8005BFE8 0208082B */  sltu  $at, $s0, $t0
/* AD318C 8005BFEC 10200010 */  beqz  $at, .L8005C030
/* AD3190 8005BFF0 8DF1000C */   lw    $s1, 0xc($t7)
.L8005BFF4:
/* AD3194 8005BFF4 02602025 */  move  $a0, $s3
/* AD3198 8005BFF8 0C016EB6 */  jal   func_8005BAD8
/* AD319C 8005BFFC 02002825 */   move  $a1, $s0
/* AD31A0 8005C000 02602025 */  move  $a0, $s3
/* AD31A4 8005C004 02002825 */  move  $a1, $s0
/* AD31A8 8005C008 0C016ED2 */  jal   func_8005BB48
/* AD31AC 8005C00C 02203025 */   move  $a2, $s1
/* AD31B0 8005C010 8E4A0018 */  lw    $t2, 0x18($s2)
/* AD31B4 8005C014 8E49001C */  lw    $t1, 0x1c($s2)
/* AD31B8 8005C018 26100040 */  addiu $s0, $s0, 0x40
/* AD31BC 8005C01C 000A5980 */  sll   $t3, $t2, 6
/* AD31C0 8005C020 012B6021 */  addu  $t4, $t1, $t3
/* AD31C4 8005C024 020C082B */  sltu  $at, $s0, $t4
/* AD31C8 8005C028 1420FFF2 */  bnez  $at, .L8005BFF4
/* AD31CC 8005C02C 26310024 */   addiu $s1, $s1, 0x24
.L8005C030:
/* AD31D0 8005C030 24020001 */  li    $v0, 1
.L8005C034:
/* AD31D4 8005C034 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD31D8 8005C038 8FB00014 */  lw    $s0, 0x14($sp)
/* AD31DC 8005C03C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD31E0 8005C040 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD31E4 8005C044 8FB30020 */  lw    $s3, 0x20($sp)
/* AD31E8 8005C048 03E00008 */  jr    $ra
/* AD31EC 8005C04C 27BD0028 */   addiu $sp, $sp, 0x28

/* AD31F0 8005C050 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD31F4 8005C054 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD31F8 8005C058 AFB30020 */  sw    $s3, 0x20($sp)
/* AD31FC 8005C05C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3200 8005C060 00A09025 */  move  $s2, $a1
/* AD3204 8005C064 00809825 */  move  $s3, $a0
/* AD3208 8005C068 AFB10018 */  sw    $s1, 0x18($sp)
/* AD320C 8005C06C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3210 8005C070 0C016DCB */  jal   func_8005B72C
/* AD3214 8005C074 AFA70034 */   sw    $a3, 0x34($sp)
/* AD3218 8005C078 8FAE0034 */  lw    $t6, 0x34($sp)
/* AD321C 8005C07C 8FA20038 */  lw    $v0, 0x38($sp)
/* AD3220 8005C080 3C048014 */  lui   $a0, %hi(D_8013A718) # $a0, 0x8014
/* AD3224 8005C084 8DCF0008 */  lw    $t7, 8($t6)
/* AD3228 8005C088 AE42001C */  sw    $v0, 0x1c($s2)
/* AD322C 8005C08C 14400006 */  bnez  $v0, .L8005C0A8
/* AD3230 8005C090 AE4F0018 */   sw    $t7, 0x18($s2)
/* AD3234 8005C094 3C058014 */  lui   $a1, %hi(D_8013A738) # $a1, 0x8014
/* AD3238 8005C098 24A5A738 */  addiu $a1, %lo(D_8013A738) # addiu $a1, $a1, -0x58c8
/* AD323C 8005C09C 2484A718 */  addiu $a0, %lo(D_8013A718) # addiu $a0, $a0, -0x58e8
/* AD3240 8005C0A0 0C0007FC */  jal   AssertMessage
/* AD3244 8005C0A4 24060643 */   li    $a2, 1603
.L8005C0A8:
/* AD3248 8005C0A8 8E590018 */  lw    $t9, 0x18($s2)
/* AD324C 8005C0AC 8E50001C */  lw    $s0, 0x1c($s2)
/* AD3250 8005C0B0 8FB80034 */  lw    $t8, 0x34($sp)
/* AD3254 8005C0B4 00194180 */  sll   $t0, $t9, 6
/* AD3258 8005C0B8 02084821 */  addu  $t1, $s0, $t0
/* AD325C 8005C0BC 0209082B */  sltu  $at, $s0, $t1
/* AD3260 8005C0C0 10200010 */  beqz  $at, .L8005C104
/* AD3264 8005C0C4 8F11000C */   lw    $s1, 0xc($t8)
.L8005C0C8:
/* AD3268 8005C0C8 02602025 */  move  $a0, $s3
/* AD326C 8005C0CC 0C016EB6 */  jal   func_8005BAD8
/* AD3270 8005C0D0 02002825 */   move  $a1, $s0
/* AD3274 8005C0D4 02602025 */  move  $a0, $s3
/* AD3278 8005C0D8 02002825 */  move  $a1, $s0
/* AD327C 8005C0DC 0C016ED2 */  jal   func_8005BB48
/* AD3280 8005C0E0 02203025 */   move  $a2, $s1
/* AD3284 8005C0E4 8E4B0018 */  lw    $t3, 0x18($s2)
/* AD3288 8005C0E8 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD328C 8005C0EC 26100040 */  addiu $s0, $s0, 0x40
/* AD3290 8005C0F0 000B6180 */  sll   $t4, $t3, 6
/* AD3294 8005C0F4 014C6821 */  addu  $t5, $t2, $t4
/* AD3298 8005C0F8 020D082B */  sltu  $at, $s0, $t5
/* AD329C 8005C0FC 1420FFF2 */  bnez  $at, .L8005C0C8
/* AD32A0 8005C100 26310024 */   addiu $s1, $s1, 0x24
.L8005C104:
/* AD32A4 8005C104 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD32A8 8005C108 8FB00014 */  lw    $s0, 0x14($sp)
/* AD32AC 8005C10C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD32B0 8005C110 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD32B4 8005C114 8FB30020 */  lw    $s3, 0x20($sp)
/* AD32B8 8005C118 27BD0028 */  addiu $sp, $sp, 0x28
/* AD32BC 8005C11C 03E00008 */  jr    $ra
/* AD32C0 8005C120 24020001 */   li    $v0, 1

/* AD32C4 8005C124 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD32C8 8005C128 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD32CC 8005C12C AFB20020 */  sw    $s2, 0x20($sp)
/* AD32D0 8005C130 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD32D4 8005C134 00809025 */  move  $s2, $a0
/* AD32D8 8005C138 AFB00018 */  sw    $s0, 0x18($sp)
/* AD32DC 8005C13C 00A08825 */  move  $s1, $a1
/* AD32E0 8005C140 0C016DDB */  jal   func_8005B76C
/* AD32E4 8005C144 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD32E8 8005C148 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD32EC 8005C14C 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD32F0 8005C150 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD32F4 8005C154 000E7980 */  sll   $t7, $t6, 6
/* AD32F8 8005C158 020FC021 */  addu  $t8, $s0, $t7
/* AD32FC 8005C15C 0218082B */  sltu  $at, $s0, $t8
/* AD3300 8005C160 1020000B */  beqz  $at, .L8005C190
/* AD3304 8005C164 02402025 */   move  $a0, $s2
.L8005C168:
/* AD3308 8005C168 0C016EE3 */  jal   func_8005BB8C
/* AD330C 8005C16C 02002825 */   move  $a1, $s0
/* AD3310 8005C170 8E280018 */  lw    $t0, 0x18($s1)
/* AD3314 8005C174 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3318 8005C178 26100040 */  addiu $s0, $s0, 0x40
/* AD331C 8005C17C 00084980 */  sll   $t1, $t0, 6
/* AD3320 8005C180 03295021 */  addu  $t2, $t9, $t1
/* AD3324 8005C184 020A082B */  sltu  $at, $s0, $t2
/* AD3328 8005C188 5420FFF7 */  bnezl $at, .L8005C168
/* AD332C 8005C18C 02402025 */   move  $a0, $s2
.L8005C190:
/* AD3330 8005C190 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3334 8005C194 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3338 8005C198 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD333C 8005C19C 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3340 8005C1A0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3344 8005C1A4 03E00008 */  jr    $ra
/* AD3348 8005C1A8 24020001 */   li    $v0, 1

/* AD334C 8005C1AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3350 8005C1B0 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3354 8005C1B4 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3358 8005C1B8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD335C 8005C1BC 00809025 */  move  $s2, $a0
/* AD3360 8005C1C0 AFB00018 */  sw    $s0, 0x18($sp)
/* AD3364 8005C1C4 00A08825 */  move  $s1, $a1
/* AD3368 8005C1C8 0C016DE1 */  jal   func_8005B784
/* AD336C 8005C1CC AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3370 8005C1D0 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3374 8005C1D4 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3378 8005C1D8 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD337C 8005C1DC 000E7980 */  sll   $t7, $t6, 6
/* AD3380 8005C1E0 020FC021 */  addu  $t8, $s0, $t7
/* AD3384 8005C1E4 0218082B */  sltu  $at, $s0, $t8
/* AD3388 8005C1E8 1020000B */  beqz  $at, .L8005C218
/* AD338C 8005C1EC 02402025 */   move  $a0, $s2
.L8005C1F0:
/* AD3390 8005C1F0 0C016EEC */  jal   func_8005BBB0
/* AD3394 8005C1F4 02002825 */   move  $a1, $s0
/* AD3398 8005C1F8 8E280018 */  lw    $t0, 0x18($s1)
/* AD339C 8005C1FC 8E39001C */  lw    $t9, 0x1c($s1)
/* AD33A0 8005C200 26100040 */  addiu $s0, $s0, 0x40
/* AD33A4 8005C204 00084980 */  sll   $t1, $t0, 6
/* AD33A8 8005C208 03295021 */  addu  $t2, $t9, $t1
/* AD33AC 8005C20C 020A082B */  sltu  $at, $s0, $t2
/* AD33B0 8005C210 5420FFF7 */  bnezl $at, .L8005C1F0
/* AD33B4 8005C214 02402025 */   move  $a0, $s2
.L8005C218:
/* AD33B8 8005C218 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD33BC 8005C21C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD33C0 8005C220 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD33C4 8005C224 8FB20020 */  lw    $s2, 0x20($sp)
/* AD33C8 8005C228 27BD0028 */  addiu $sp, $sp, 0x28
/* AD33CC 8005C22C 03E00008 */  jr    $ra
/* AD33D0 8005C230 24020001 */   li    $v0, 1

/* AD33D4 8005C234 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD33D8 8005C238 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD33DC 8005C23C AFB20020 */  sw    $s2, 0x20($sp)
/* AD33E0 8005C240 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD33E4 8005C244 00809025 */  move  $s2, $a0
/* AD33E8 8005C248 AFB00018 */  sw    $s0, 0x18($sp)
/* AD33EC 8005C24C 00A08825 */  move  $s1, $a1
/* AD33F0 8005C250 0C016DE7 */  jal   func_8005B79C
/* AD33F4 8005C254 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD33F8 8005C258 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD33FC 8005C25C 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3400 8005C260 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3404 8005C264 000E7980 */  sll   $t7, $t6, 6
/* AD3408 8005C268 020FC021 */  addu  $t8, $s0, $t7
/* AD340C 8005C26C 0218082B */  sltu  $at, $s0, $t8
/* AD3410 8005C270 1020000B */  beqz  $at, .L8005C2A0
/* AD3414 8005C274 02402025 */   move  $a0, $s2
.L8005C278:
/* AD3418 8005C278 0C016EF5 */  jal   func_8005BBD4
/* AD341C 8005C27C 02002825 */   move  $a1, $s0
/* AD3420 8005C280 8E280018 */  lw    $t0, 0x18($s1)
/* AD3424 8005C284 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3428 8005C288 26100040 */  addiu $s0, $s0, 0x40
/* AD342C 8005C28C 00084980 */  sll   $t1, $t0, 6
/* AD3430 8005C290 03295021 */  addu  $t2, $t9, $t1
/* AD3434 8005C294 020A082B */  sltu  $at, $s0, $t2
/* AD3438 8005C298 5420FFF7 */  bnezl $at, .L8005C278
/* AD343C 8005C29C 02402025 */   move  $a0, $s2
.L8005C2A0:
/* AD3440 8005C2A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3444 8005C2A4 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3448 8005C2A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD344C 8005C2AC 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3450 8005C2B0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3454 8005C2B4 03E00008 */  jr    $ra
/* AD3458 8005C2B8 24020001 */   li    $v0, 1

glabel func_8005C2BC
/* AD345C 8005C2BC 27BDFFF0 */  addiu $sp, $sp, -0x10
/* AD3460 8005C2C0 3C0E8012 */  lui   $t6, %hi(D_8011DE6C) # $t6, 0x8012
/* AD3464 8005C2C4 AFA40010 */  sw    $a0, 0x10($sp)
/* AD3468 8005C2C8 25CEDE6C */  addiu $t6, %lo(D_8011DE6C) # addiu $t6, $t6, -0x2194
/* AD346C 8005C2CC 8DD80000 */  lw    $t8, ($t6)
/* AD3470 8005C2D0 27A30004 */  addiu $v1, $sp, 4
/* AD3474 8005C2D4 24020001 */  li    $v0, 1
/* AD3478 8005C2D8 AC780000 */  sw    $t8, ($v1)
/* AD347C 8005C2DC 8DCF0004 */  lw    $t7, 4($t6)
/* AD3480 8005C2E0 8C680000 */  lw    $t0, ($v1)
/* AD3484 8005C2E4 AC6F0004 */  sw    $t7, 4($v1)
/* AD3488 8005C2E8 8DD80008 */  lw    $t8, 8($t6)
/* AD348C 8005C2EC AC780008 */  sw    $t8, 8($v1)
/* AD3490 8005C2F0 A8A80000 */  swl   $t0, ($a1)
/* AD3494 8005C2F4 B8A80003 */  swr   $t0, 3($a1)
/* AD3498 8005C2F8 8C790004 */  lw    $t9, 4($v1)
/* AD349C 8005C2FC A8B90004 */  swl   $t9, 4($a1)
/* AD34A0 8005C300 B8B90007 */  swr   $t9, 7($a1)
/* AD34A4 8005C304 8C680008 */  lw    $t0, 8($v1)
/* AD34A8 8005C308 27BD0010 */  addiu $sp, $sp, 0x10
/* AD34AC 8005C30C A8A80008 */  swl   $t0, 8($a1)
/* AD34B0 8005C310 03E00008 */  jr    $ra
/* AD34B4 8005C314 B8A8000B */   swr   $t0, 0xb($a1)

glabel func_8005C318
/* AD34B8 8005C318 AFA40000 */  sw    $a0, ($sp)
/* AD34BC 8005C31C AFA50004 */  sw    $a1, 4($sp)
/* AD34C0 8005C320 03E00008 */  jr    $ra
/* AD34C4 8005C324 24020001 */   li    $v0, 1

glabel func_8005C328
/* AD34C8 8005C328 AFA40000 */  sw    $a0, ($sp)
/* AD34CC 8005C32C 88CF0000 */  lwl   $t7, ($a2)
/* AD34D0 8005C330 98CF0003 */  lwr   $t7, 3($a2)
/* AD34D4 8005C334 24020001 */  li    $v0, 1
/* AD34D8 8005C338 A8AF0000 */  swl   $t7, ($a1)
/* AD34DC 8005C33C B8AF0003 */  swr   $t7, 3($a1)
/* AD34E0 8005C340 88CE0004 */  lwl   $t6, 4($a2)
/* AD34E4 8005C344 98CE0007 */  lwr   $t6, 7($a2)
/* AD34E8 8005C348 A8AE0004 */  swl   $t6, 4($a1)
/* AD34EC 8005C34C B8AE0007 */  swr   $t6, 7($a1)
/* AD34F0 8005C350 88CF0008 */  lwl   $t7, 8($a2)
/* AD34F4 8005C354 98CF000B */  lwr   $t7, 0xb($a2)
/* AD34F8 8005C358 A8AF0008 */  swl   $t7, 8($a1)
/* AD34FC 8005C35C 03E00008 */  jr    $ra
/* AD3500 8005C360 B8AF000B */   swr   $t7, 0xb($a1)

glabel func_8005C364
/* AD3504 8005C364 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3508 8005C368 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD350C 8005C36C AFA40018 */  sw    $a0, 0x18($sp)
/* AD3510 8005C370 0C016D97 */  jal   func_8005B65C
/* AD3514 8005C374 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3518 8005C378 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD351C 8005C37C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3520 8005C380 0C016E21 */  jal   func_8005B884
/* AD3524 8005C384 24A50018 */   addiu $a1, $a1, 0x18
/* AD3528 8005C388 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD352C 8005C38C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3530 8005C390 0C0170AF */  jal   func_8005C2BC
/* AD3534 8005C394 24A50040 */   addiu $a1, $a1, 0x40
/* AD3538 8005C398 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD353C 8005C39C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3540 8005C3A0 24020001 */  li    $v0, 1
/* AD3544 8005C3A4 03E00008 */  jr    $ra
/* AD3548 8005C3A8 00000000 */   nop   

glabel func_8005C3AC
/* AD354C 8005C3AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3550 8005C3B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3554 8005C3B4 AFA40018 */  sw    $a0, 0x18($sp)
/* AD3558 8005C3B8 0C016DA8 */  jal   func_8005B6A0
/* AD355C 8005C3BC AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3560 8005C3C0 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3564 8005C3C4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3568 8005C3C8 0C016E41 */  jal   func_8005B904
/* AD356C 8005C3CC 24A50018 */   addiu $a1, $a1, 0x18
/* AD3570 8005C3D0 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3574 8005C3D4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3578 8005C3D8 0C0170C6 */  jal   func_8005C318
/* AD357C 8005C3DC 24A50040 */   addiu $a1, $a1, 0x40
/* AD3580 8005C3E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3584 8005C3E4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3588 8005C3E8 24020001 */  li    $v0, 1
/* AD358C 8005C3EC 03E00008 */  jr    $ra
/* AD3590 8005C3F0 00000000 */   nop   

/* AD3594 8005C3F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3598 8005C3F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD359C 8005C3FC AFA40018 */  sw    $a0, 0x18($sp)
/* AD35A0 8005C400 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD35A4 8005C404 0C016DAC */  jal   func_8005B6B0
/* AD35A8 8005C408 AFA60020 */   sw    $a2, 0x20($sp)
/* AD35AC 8005C40C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD35B0 8005C410 8FA60020 */  lw    $a2, 0x20($sp)
/* AD35B4 8005C414 8FA40018 */  lw    $a0, 0x18($sp)
/* AD35B8 8005C418 24A50018 */  addiu $a1, $a1, 0x18
/* AD35BC 8005C41C 0C016E4F */  jal   func_8005B93C
/* AD35C0 8005C420 24C60008 */   addiu $a2, $a2, 8
/* AD35C4 8005C424 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD35C8 8005C428 8FA60020 */  lw    $a2, 0x20($sp)
/* AD35CC 8005C42C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD35D0 8005C430 24A50040 */  addiu $a1, $a1, 0x40
/* AD35D4 8005C434 0C0170CA */  jal   func_8005C328
/* AD35D8 8005C438 24C60020 */   addiu $a2, $a2, 0x20
/* AD35DC 8005C43C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD35E0 8005C440 27BD0018 */  addiu $sp, $sp, 0x18
/* AD35E4 8005C444 24020001 */  li    $v0, 1
/* AD35E8 8005C448 03E00008 */  jr    $ra
/* AD35EC 8005C44C 00000000 */   nop   

/* AD35F0 8005C450 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD35F4 8005C454 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD35F8 8005C458 AFA40018 */  sw    $a0, 0x18($sp)
/* AD35FC 8005C45C AFA5001C */  sw    $a1, 0x1c($sp)
/* AD3600 8005C460 0C016DBB */  jal   func_8005B6EC
/* AD3604 8005C464 AFA70024 */   sw    $a3, 0x24($sp)
/* AD3608 8005C468 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD360C 8005C46C 8FA60024 */  lw    $a2, 0x24($sp)
/* AD3610 8005C470 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3614 8005C474 24A50018 */  addiu $a1, $a1, 0x18
/* AD3618 8005C478 0C016E4F */  jal   func_8005B93C
/* AD361C 8005C47C 24C60008 */   addiu $a2, $a2, 8
/* AD3620 8005C480 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3624 8005C484 8FA60024 */  lw    $a2, 0x24($sp)
/* AD3628 8005C488 8FA40018 */  lw    $a0, 0x18($sp)
/* AD362C 8005C48C 24A50040 */  addiu $a1, $a1, 0x40
/* AD3630 8005C490 0C0170CA */  jal   func_8005C328
/* AD3634 8005C494 24C60020 */   addiu $a2, $a2, 0x20
/* AD3638 8005C498 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD363C 8005C49C 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3640 8005C4A0 24020001 */  li    $v0, 1
/* AD3644 8005C4A4 03E00008 */  jr    $ra
/* AD3648 8005C4A8 00000000 */   nop   

glabel func_8005C4AC
/* AD364C 8005C4AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3650 8005C4B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3654 8005C4B4 AFA40018 */  sw    $a0, 0x18($sp)
/* AD3658 8005C4B8 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD365C 8005C4BC 0C016DCB */  jal   func_8005B72C
/* AD3660 8005C4C0 AFA70024 */   sw    $a3, 0x24($sp)
/* AD3664 8005C4C4 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3668 8005C4C8 8FA60024 */  lw    $a2, 0x24($sp)
/* AD366C 8005C4CC 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3670 8005C4D0 24A50018 */  addiu $a1, $a1, 0x18
/* AD3674 8005C4D4 0C016E4F */  jal   func_8005B93C
/* AD3678 8005C4D8 24C60008 */   addiu $a2, $a2, 8
/* AD367C 8005C4DC 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3680 8005C4E0 8FA60024 */  lw    $a2, 0x24($sp)
/* AD3684 8005C4E4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3688 8005C4E8 24A50040 */  addiu $a1, $a1, 0x40
/* AD368C 8005C4EC 0C0170CA */  jal   func_8005C328
/* AD3690 8005C4F0 24C60020 */   addiu $a2, $a2, 0x20
/* AD3694 8005C4F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3698 8005C4F8 27BD0018 */  addiu $sp, $sp, 0x18
/* AD369C 8005C4FC 24020001 */  li    $v0, 1
/* AD36A0 8005C500 03E00008 */  jr    $ra
/* AD36A4 8005C504 00000000 */   nop   

/* AD36A8 8005C508 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD36AC 8005C50C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD36B0 8005C510 AFA40018 */  sw    $a0, 0x18($sp)
/* AD36B4 8005C514 0C016DDB */  jal   func_8005B76C
/* AD36B8 8005C518 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD36BC 8005C51C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD36C0 8005C520 8FA40018 */  lw    $a0, 0x18($sp)
/* AD36C4 8005C524 0C016E6C */  jal   func_8005B9B0
/* AD36C8 8005C528 24A50018 */   addiu $a1, $a1, 0x18
/* AD36CC 8005C52C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD36D0 8005C530 27BD0018 */  addiu $sp, $sp, 0x18
/* AD36D4 8005C534 24020001 */  li    $v0, 1
/* AD36D8 8005C538 03E00008 */  jr    $ra
/* AD36DC 8005C53C 00000000 */   nop   

/* AD36E0 8005C540 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD36E4 8005C544 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD36E8 8005C548 AFA40018 */  sw    $a0, 0x18($sp)
/* AD36EC 8005C54C 0C016DE1 */  jal   func_8005B784
/* AD36F0 8005C550 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD36F4 8005C554 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD36F8 8005C558 8FA40018 */  lw    $a0, 0x18($sp)
/* AD36FC 8005C55C 0C016E7A */  jal   func_8005B9E8
/* AD3700 8005C560 24A50018 */   addiu $a1, $a1, 0x18
/* AD3704 8005C564 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3708 8005C568 27BD0018 */  addiu $sp, $sp, 0x18
/* AD370C 8005C56C 24020001 */  li    $v0, 1
/* AD3710 8005C570 03E00008 */  jr    $ra
/* AD3714 8005C574 00000000 */   nop   

/* AD3718 8005C578 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD371C 8005C57C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3720 8005C580 AFA40018 */  sw    $a0, 0x18($sp)
/* AD3724 8005C584 0C016DE7 */  jal   func_8005B79C
/* AD3728 8005C588 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD372C 8005C58C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3730 8005C590 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3734 8005C594 0C016E87 */  jal   func_8005BA1C
/* AD3738 8005C598 24A50018 */   addiu $a1, $a1, 0x18
/* AD373C 8005C59C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3740 8005C5A0 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3744 8005C5A4 24020001 */  li    $v0, 1
/* AD3748 8005C5A8 03E00008 */  jr    $ra
/* AD374C 8005C5AC 00000000 */   nop   

glabel func_8005C5B0
/* AD3750 8005C5B0 3C0E8012 */  lui   $t6, %hi(D_8011DE78) # $t6, 0x8012
/* AD3754 8005C5B4 25CEDE78 */  addiu $t6, %lo(D_8011DE78) # addiu $t6, $t6, -0x2188
/* AD3758 8005C5B8 AFA40000 */  sw    $a0, ($sp)
/* AD375C 8005C5BC 25C80030 */  addiu $t0, $t6, 0x30
/* AD3760 8005C5C0 00A0C825 */  move  $t9, $a1
.L8005C5C4:
/* AD3764 8005C5C4 8DD80000 */  lw    $t8, ($t6)
/* AD3768 8005C5C8 25CE000C */  addiu $t6, $t6, 0xc
/* AD376C 8005C5CC 2739000C */  addiu $t9, $t9, 0xc
/* AD3770 8005C5D0 AF38FFF4 */  sw    $t8, -0xc($t9)
/* AD3774 8005C5D4 8DCFFFF8 */  lw    $t7, -8($t6)
/* AD3778 8005C5D8 AF2FFFF8 */  sw    $t7, -8($t9)
/* AD377C 8005C5DC 8DD8FFFC */  lw    $t8, -4($t6)
/* AD3780 8005C5E0 15C8FFF8 */  bne   $t6, $t0, .L8005C5C4
/* AD3784 8005C5E4 AF38FFFC */   sw    $t8, -4($t9)
/* AD3788 8005C5E8 8DD80000 */  lw    $t8, ($t6)
/* AD378C 8005C5EC 24020001 */  li    $v0, 1
/* AD3790 8005C5F0 03E00008 */  jr    $ra
/* AD3794 8005C5F4 AF380000 */   sw    $t8, ($t9)

glabel func_8005C5F8
/* AD3798 8005C5F8 AFA40000 */  sw    $a0, ($sp)
/* AD379C 8005C5FC AFA50004 */  sw    $a1, 4($sp)
/* AD37A0 8005C600 03E00008 */  jr    $ra
/* AD37A4 8005C604 24020001 */   li    $v0, 1

glabel func_8005C608
/* AD37A8 8005C608 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AD37AC 8005C60C AFA40050 */  sw    $a0, 0x50($sp)
/* AD37B0 8005C610 24A40024 */  addiu $a0, $a1, 0x24
/* AD37B4 8005C614 AFB00028 */  sw    $s0, 0x28($sp)
/* AD37B8 8005C618 00A4082B */  sltu  $at, $a1, $a0
/* AD37BC 8005C61C 00A08025 */  move  $s0, $a1
/* AD37C0 8005C620 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD37C4 8005C624 AFA60058 */  sw    $a2, 0x58($sp)
/* AD37C8 8005C628 00A01025 */  move  $v0, $a1
/* AD37CC 8005C62C 1020000B */  beqz  $at, .L8005C65C
/* AD37D0 8005C630 00C01825 */   move  $v1, $a2
.L8005C634:
/* AD37D4 8005C634 8C6F0000 */  lw    $t7, ($v1)
/* AD37D8 8005C638 2442000C */  addiu $v0, $v0, 0xc
/* AD37DC 8005C63C 0044082B */  sltu  $at, $v0, $a0
/* AD37E0 8005C640 AC4FFFF4 */  sw    $t7, -0xc($v0)
/* AD37E4 8005C644 8C6E0004 */  lw    $t6, 4($v1)
/* AD37E8 8005C648 2463000C */  addiu $v1, $v1, 0xc
/* AD37EC 8005C64C AC4EFFF8 */  sw    $t6, -8($v0)
/* AD37F0 8005C650 8C6FFFFC */  lw    $t7, -4($v1)
/* AD37F4 8005C654 1420FFF7 */  bnez  $at, .L8005C634
/* AD37F8 8005C658 AC4FFFFC */   sw    $t7, -4($v0)
.L8005C65C:
/* AD37FC 8005C65C 8FA40058 */  lw    $a0, 0x58($sp)
/* AD3800 8005C660 27B90040 */  addiu $t9, $sp, 0x40
/* AD3804 8005C664 27A8003C */  addiu $t0, $sp, 0x3c
/* AD3808 8005C668 27A90038 */  addiu $t1, $sp, 0x38
/* AD380C 8005C66C AFA90018 */  sw    $t1, 0x18($sp)
/* AD3810 8005C670 AFA80014 */  sw    $t0, 0x14($sp)
/* AD3814 8005C674 AFB90010 */  sw    $t9, 0x10($sp)
/* AD3818 8005C678 27A70044 */  addiu $a3, $sp, 0x44
/* AD381C 8005C67C 2485000C */  addiu $a1, $a0, 0xc
/* AD3820 8005C680 0C03322D */  jal   func_800CC8B4
/* AD3824 8005C684 24860018 */   addiu $a2, $a0, 0x18
/* AD3828 8005C688 C7A40044 */  lwc1  $f4, 0x44($sp)
/* AD382C 8005C68C 24020001 */  li    $v0, 1
/* AD3830 8005C690 E6040024 */  swc1  $f4, 0x24($s0)
/* AD3834 8005C694 C7A60040 */  lwc1  $f6, 0x40($sp)
/* AD3838 8005C698 E6060028 */  swc1  $f6, 0x28($s0)
/* AD383C 8005C69C C7A8003C */  lwc1  $f8, 0x3c($sp)
/* AD3840 8005C6A0 E608002C */  swc1  $f8, 0x2c($s0)
/* AD3844 8005C6A4 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* AD3848 8005C6A8 E60A0030 */  swc1  $f10, 0x30($s0)
/* AD384C 8005C6AC 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD3850 8005C6B0 8FB00028 */  lw    $s0, 0x28($sp)
/* AD3854 8005C6B4 27BD0050 */  addiu $sp, $sp, 0x50
/* AD3858 8005C6B8 03E00008 */  jr    $ra
/* AD385C 8005C6BC 00000000 */   nop   

glabel func_8005C6C0
/* AD3860 8005C6C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3864 8005C6C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3868 8005C6C8 AFA40018 */  sw    $a0, 0x18($sp)
/* AD386C 8005C6CC 0C016E21 */  jal   func_8005B884
/* AD3870 8005C6D0 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3874 8005C6D4 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3878 8005C6D8 8FA40018 */  lw    $a0, 0x18($sp)
/* AD387C 8005C6DC 0C01716C */  jal   func_8005C5B0
/* AD3880 8005C6E0 24A50028 */   addiu $a1, $a1, 0x28
/* AD3884 8005C6E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3888 8005C6E8 27BD0018 */  addiu $sp, $sp, 0x18
/* AD388C 8005C6EC 24020001 */  li    $v0, 1
/* AD3890 8005C6F0 03E00008 */  jr    $ra
/* AD3894 8005C6F4 00000000 */   nop   

glabel func_8005C6F8
/* AD3898 8005C6F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD389C 8005C6FC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD38A0 8005C700 AFA40018 */  sw    $a0, 0x18($sp)
/* AD38A4 8005C704 0C016E41 */  jal   func_8005B904
/* AD38A8 8005C708 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD38AC 8005C70C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD38B0 8005C710 8FA40018 */  lw    $a0, 0x18($sp)
/* AD38B4 8005C714 0C01717E */  jal   func_8005C5F8
/* AD38B8 8005C718 24A50028 */   addiu $a1, $a1, 0x28
/* AD38BC 8005C71C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD38C0 8005C720 27BD0018 */  addiu $sp, $sp, 0x18
/* AD38C4 8005C724 24020001 */  li    $v0, 1
/* AD38C8 8005C728 03E00008 */  jr    $ra
/* AD38CC 8005C72C 00000000 */   nop   

glabel func_8005C730
/* AD38D0 8005C730 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD38D4 8005C734 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD38D8 8005C738 AFA40018 */  sw    $a0, 0x18($sp)
/* AD38DC 8005C73C AFA5001C */  sw    $a1, 0x1c($sp)
/* AD38E0 8005C740 0C016E4F */  jal   func_8005B93C
/* AD38E4 8005C744 AFA60020 */   sw    $a2, 0x20($sp)
/* AD38E8 8005C748 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD38EC 8005C74C 8FA60020 */  lw    $a2, 0x20($sp)
/* AD38F0 8005C750 8FA40018 */  lw    $a0, 0x18($sp)
/* AD38F4 8005C754 24A50028 */  addiu $a1, $a1, 0x28
/* AD38F8 8005C758 0C017182 */  jal   func_8005C608
/* AD38FC 8005C75C 24C60018 */   addiu $a2, $a2, 0x18
/* AD3900 8005C760 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3904 8005C764 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3908 8005C768 24020001 */  li    $v0, 1
/* AD390C 8005C76C 03E00008 */  jr    $ra
/* AD3910 8005C770 00000000 */   nop   

glabel func_8005C774
/* AD3914 8005C774 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3918 8005C778 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD391C 8005C77C 0C016E6C */  jal   func_8005B9B0
/* AD3920 8005C780 00000000 */   nop   
/* AD3924 8005C784 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3928 8005C788 27BD0018 */  addiu $sp, $sp, 0x18
/* AD392C 8005C78C 24020001 */  li    $v0, 1
/* AD3930 8005C790 03E00008 */  jr    $ra
/* AD3934 8005C794 00000000 */   nop   

glabel func_8005C798
/* AD3938 8005C798 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD393C 8005C79C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3940 8005C7A0 0C016E7A */  jal   func_8005B9E8
/* AD3944 8005C7A4 00000000 */   nop   
/* AD3948 8005C7A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD394C 8005C7AC 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3950 8005C7B0 24020001 */  li    $v0, 1
/* AD3954 8005C7B4 03E00008 */  jr    $ra
/* AD3958 8005C7B8 00000000 */   nop   

glabel func_8005C7BC
/* AD395C 8005C7BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3960 8005C7C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3964 8005C7C4 0C016E87 */  jal   func_8005BA1C
/* AD3968 8005C7C8 00000000 */   nop   
/* AD396C 8005C7CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3970 8005C7D0 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3974 8005C7D4 24020001 */  li    $v0, 1
/* AD3978 8005C7D8 03E00008 */  jr    $ra
/* AD397C 8005C7DC 00000000 */   nop   

/* AD3980 8005C7E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3984 8005C7E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3988 8005C7E8 0C016D97 */  jal   func_8005B65C
/* AD398C 8005C7EC AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3990 8005C7F0 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3994 8005C7F4 24020001 */  li    $v0, 1
/* AD3998 8005C7F8 ACA00018 */  sw    $zero, 0x18($a1)
/* AD399C 8005C7FC ACA0001C */  sw    $zero, 0x1c($a1)
/* AD39A0 8005C800 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD39A4 8005C804 27BD0018 */  addiu $sp, $sp, 0x18
/* AD39A8 8005C808 03E00008 */  jr    $ra
/* AD39AC 8005C80C 00000000 */   nop   

/* AD39B0 8005C810 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD39B4 8005C814 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD39B8 8005C818 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD39BC 8005C81C AFB10018 */  sw    $s1, 0x18($sp)
/* AD39C0 8005C820 00A08825 */  move  $s1, $a1
/* AD39C4 8005C824 00809025 */  move  $s2, $a0
/* AD39C8 8005C828 AFB30020 */  sw    $s3, 0x20($sp)
/* AD39CC 8005C82C 0C016DA8 */  jal   func_8005B6A0
/* AD39D0 8005C830 AFB00014 */   sw    $s0, 0x14($sp)
/* AD39D4 8005C834 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD39D8 8005C838 2413005C */  li    $s3, 92
/* AD39DC 8005C83C 8E24001C */  lw    $a0, 0x1c($s1)
/* AD39E0 8005C840 01D30019 */  multu $t6, $s3
/* AD39E4 8005C844 00808025 */  move  $s0, $a0
/* AD39E8 8005C848 00007812 */  mflo  $t7
/* AD39EC 8005C84C 008FC021 */  addu  $t8, $a0, $t7
/* AD39F0 8005C850 0098082B */  sltu  $at, $a0, $t8
/* AD39F4 8005C854 1020000D */  beqz  $at, .L8005C88C
/* AD39F8 8005C858 00000000 */   nop   
/* AD39FC 8005C85C 02402025 */  move  $a0, $s2
.L8005C860:
/* AD3A00 8005C860 0C0171BE */  jal   func_8005C6F8
/* AD3A04 8005C864 02002825 */   move  $a1, $s0
/* AD3A08 8005C868 8E390018 */  lw    $t9, 0x18($s1)
/* AD3A0C 8005C86C 8E24001C */  lw    $a0, 0x1c($s1)
/* AD3A10 8005C870 2610005C */  addiu $s0, $s0, 0x5c
/* AD3A14 8005C874 03330019 */  multu $t9, $s3
/* AD3A18 8005C878 00004012 */  mflo  $t0
/* AD3A1C 8005C87C 00884821 */  addu  $t1, $a0, $t0
/* AD3A20 8005C880 0209082B */  sltu  $at, $s0, $t1
/* AD3A24 8005C884 5420FFF6 */  bnezl $at, .L8005C860
/* AD3A28 8005C888 02402025 */   move  $a0, $s2
.L8005C88C:
/* AD3A2C 8005C88C 10800005 */  beqz  $a0, .L8005C8A4
/* AD3A30 8005C890 AE200018 */   sw    $zero, 0x18($s1)
/* AD3A34 8005C894 3C058014 */  lui   $a1, %hi(D_8013A750) # $a1, 0x8014
/* AD3A38 8005C898 24A5A750 */  addiu $a1, %lo(D_8013A750) # addiu $a1, $a1, -0x58b0
/* AD3A3C 8005C89C 0C01EC35 */  jal   func_8007B0D4
/* AD3A40 8005C8A0 24060833 */   li    $a2, 2099
.L8005C8A4:
/* AD3A44 8005C8A4 AE20001C */  sw    $zero, 0x1c($s1)
/* AD3A48 8005C8A8 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3A4C 8005C8AC 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3A50 8005C8B0 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3A54 8005C8B4 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3A58 8005C8B8 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3A5C 8005C8BC 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3A60 8005C8C0 03E00008 */  jr    $ra
/* AD3A64 8005C8C4 24020001 */   li    $v0, 1

/* AD3A68 8005C8C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3A6C 8005C8CC AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3A70 8005C8D0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3A74 8005C8D4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD3A78 8005C8D8 00A08825 */  move  $s1, $a1
/* AD3A7C 8005C8DC 00809025 */  move  $s2, $a0
/* AD3A80 8005C8E0 AFB30020 */  sw    $s3, 0x20($sp)
/* AD3A84 8005C8E4 0C016DA8 */  jal   func_8005B6A0
/* AD3A88 8005C8E8 AFB00014 */   sw    $s0, 0x14($sp)
/* AD3A8C 8005C8EC 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD3A90 8005C8F0 2413005C */  li    $s3, 92
/* AD3A94 8005C8F4 8E30001C */  lw    $s0, 0x1c($s1)
/* AD3A98 8005C8F8 01D30019 */  multu $t6, $s3
/* AD3A9C 8005C8FC 00007812 */  mflo  $t7
/* AD3AA0 8005C900 020FC021 */  addu  $t8, $s0, $t7
/* AD3AA4 8005C904 0218082B */  sltu  $at, $s0, $t8
/* AD3AA8 8005C908 1020000C */  beqz  $at, .L8005C93C
/* AD3AAC 8005C90C 02402025 */   move  $a0, $s2
.L8005C910:
/* AD3AB0 8005C910 0C0171BE */  jal   func_8005C6F8
/* AD3AB4 8005C914 02002825 */   move  $a1, $s0
/* AD3AB8 8005C918 8E280018 */  lw    $t0, 0x18($s1)
/* AD3ABC 8005C91C 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3AC0 8005C920 2610005C */  addiu $s0, $s0, 0x5c
/* AD3AC4 8005C924 01130019 */  multu $t0, $s3
/* AD3AC8 8005C928 00004812 */  mflo  $t1
/* AD3ACC 8005C92C 03295021 */  addu  $t2, $t9, $t1
/* AD3AD0 8005C930 020A082B */  sltu  $at, $s0, $t2
/* AD3AD4 8005C934 5420FFF6 */  bnezl $at, .L8005C910
/* AD3AD8 8005C938 02402025 */   move  $a0, $s2
.L8005C93C:
/* AD3ADC 8005C93C AE200018 */  sw    $zero, 0x18($s1)
/* AD3AE0 8005C940 AE20001C */  sw    $zero, 0x1c($s1)
/* AD3AE4 8005C944 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3AE8 8005C948 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3AEC 8005C94C 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3AF0 8005C950 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3AF4 8005C954 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3AF8 8005C958 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3AFC 8005C95C 03E00008 */  jr    $ra
/* AD3B00 8005C960 24020001 */   li    $v0, 1

/* AD3B04 8005C964 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD3B08 8005C968 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD3B0C 8005C96C AFB30024 */  sw    $s3, 0x24($sp)
/* AD3B10 8005C970 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3B14 8005C974 00A09025 */  move  $s2, $a1
/* AD3B18 8005C978 00809825 */  move  $s3, $a0
/* AD3B1C 8005C97C AFB40028 */  sw    $s4, 0x28($sp)
/* AD3B20 8005C980 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD3B24 8005C984 AFB00018 */  sw    $s0, 0x18($sp)
/* AD3B28 8005C988 0C016DBB */  jal   func_8005B6EC
/* AD3B2C 8005C98C AFA7003C */   sw    $a3, 0x3c($sp)
/* AD3B30 8005C990 8FAE003C */  lw    $t6, 0x3c($sp)
/* AD3B34 8005C994 3C058014 */  lui   $a1, %hi(D_8013A768) # $a1, 0x8014
/* AD3B38 8005C998 24A5A768 */  addiu $a1, %lo(D_8013A768) # addiu $a1, $a1, -0x5898
/* AD3B3C 8005C99C 8DCF0008 */  lw    $t7, 8($t6)
/* AD3B40 8005C9A0 2406086C */  li    $a2, 2156
/* AD3B44 8005C9A4 000F2080 */  sll   $a0, $t7, 2
/* AD3B48 8005C9A8 008F2023 */  subu  $a0, $a0, $t7
/* AD3B4C 8005C9AC 000420C0 */  sll   $a0, $a0, 3
/* AD3B50 8005C9B0 008F2023 */  subu  $a0, $a0, $t7
/* AD3B54 8005C9B4 00042080 */  sll   $a0, $a0, 2
/* AD3B58 8005C9B8 0C01EBB8 */  jal   func_8007AEE0
/* AD3B5C 8005C9BC AE4F0018 */   sw    $t7, 0x18($s2)
/* AD3B60 8005C9C0 1440000D */  bnez  $v0, .L8005C9F8
/* AD3B64 8005C9C4 AE42001C */   sw    $v0, 0x1c($s2)
/* AD3B68 8005C9C8 3C048014 */  lui   $a0, %hi(D_8013A780) # $a0, 0x8014
/* AD3B6C 8005C9CC AE400018 */  sw    $zero, 0x18($s2)
/* AD3B70 8005C9D0 0C00084C */  jal   DebugMessage
/* AD3B74 8005C9D4 2484A780 */   addiu $a0, %lo(D_8013A780) # addiu $a0, $a0, -0x5880
/* AD3B78 8005C9D8 3C048014 */  lui   $a0, %hi(D_8013A788) # $a0, 0x8014
/* AD3B7C 8005C9DC 0C00084C */  jal   DebugMessage
/* AD3B80 8005C9E0 2484A788 */   addiu $a0, %lo(D_8013A788) # addiu $a0, $a0, -0x5878
/* AD3B84 8005C9E4 3C048014 */  lui   $a0, %hi(D_8013A7B4) # $a0, 0x8014
/* AD3B88 8005C9E8 0C00084C */  jal   DebugMessage
/* AD3B8C 8005C9EC 2484A7B4 */   addiu $a0, %lo(D_8013A7B4) # addiu $a0, $a0, -0x584c
/* AD3B90 8005C9F0 1000001D */  b     .L8005CA68
/* AD3B94 8005C9F4 00001025 */   move  $v0, $zero
.L8005C9F8:
/* AD3B98 8005C9F8 8E590018 */  lw    $t9, 0x18($s2)
/* AD3B9C 8005C9FC 2414005C */  li    $s4, 92
/* AD3BA0 8005CA00 8E50001C */  lw    $s0, 0x1c($s2)
/* AD3BA4 8005CA04 03340019 */  multu $t9, $s4
/* AD3BA8 8005CA08 8FB8003C */  lw    $t8, 0x3c($sp)
/* AD3BAC 8005CA0C 8F11000C */  lw    $s1, 0xc($t8)
/* AD3BB0 8005CA10 00004012 */  mflo  $t0
/* AD3BB4 8005CA14 02084821 */  addu  $t1, $s0, $t0
/* AD3BB8 8005CA18 0209082B */  sltu  $at, $s0, $t1
/* AD3BBC 8005CA1C 10200011 */  beqz  $at, .L8005CA64
/* AD3BC0 8005CA20 02602025 */   move  $a0, $s3
.L8005CA24:
/* AD3BC4 8005CA24 0C0171B0 */  jal   func_8005C6C0
/* AD3BC8 8005CA28 02002825 */   move  $a1, $s0
/* AD3BCC 8005CA2C 02602025 */  move  $a0, $s3
/* AD3BD0 8005CA30 02002825 */  move  $a1, $s0
/* AD3BD4 8005CA34 0C0171CC */  jal   func_8005C730
/* AD3BD8 8005CA38 02203025 */   move  $a2, $s1
/* AD3BDC 8005CA3C 8E4B0018 */  lw    $t3, 0x18($s2)
/* AD3BE0 8005CA40 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD3BE4 8005CA44 2610005C */  addiu $s0, $s0, 0x5c
/* AD3BE8 8005CA48 01740019 */  multu $t3, $s4
/* AD3BEC 8005CA4C 2631003C */  addiu $s1, $s1, 0x3c
/* AD3BF0 8005CA50 00006012 */  mflo  $t4
/* AD3BF4 8005CA54 014C6821 */  addu  $t5, $t2, $t4
/* AD3BF8 8005CA58 020D082B */  sltu  $at, $s0, $t5
/* AD3BFC 8005CA5C 5420FFF1 */  bnezl $at, .L8005CA24
/* AD3C00 8005CA60 02602025 */   move  $a0, $s3
.L8005CA64:
/* AD3C04 8005CA64 24020001 */  li    $v0, 1
.L8005CA68:
/* AD3C08 8005CA68 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD3C0C 8005CA6C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3C10 8005CA70 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD3C14 8005CA74 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3C18 8005CA78 8FB30024 */  lw    $s3, 0x24($sp)
/* AD3C1C 8005CA7C 8FB40028 */  lw    $s4, 0x28($sp)
/* AD3C20 8005CA80 03E00008 */  jr    $ra
/* AD3C24 8005CA84 27BD0030 */   addiu $sp, $sp, 0x30

/* AD3C28 8005CA88 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD3C2C 8005CA8C AFBF002C */  sw    $ra, 0x2c($sp)
/* AD3C30 8005CA90 AFB30024 */  sw    $s3, 0x24($sp)
/* AD3C34 8005CA94 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3C38 8005CA98 00809025 */  move  $s2, $a0
/* AD3C3C 8005CA9C 00A09825 */  move  $s3, $a1
/* AD3C40 8005CAA0 AFB40028 */  sw    $s4, 0x28($sp)
/* AD3C44 8005CAA4 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD3C48 8005CAA8 AFB00018 */  sw    $s0, 0x18($sp)
/* AD3C4C 8005CAAC 0C016DCB */  jal   func_8005B72C
/* AD3C50 8005CAB0 AFA7003C */   sw    $a3, 0x3c($sp)
/* AD3C54 8005CAB4 8FAE003C */  lw    $t6, 0x3c($sp)
/* AD3C58 8005CAB8 3C058014 */  lui   $a1, %hi(D_8013A7B8) # $a1, 0x8014
/* AD3C5C 8005CABC 24A5A7B8 */  addiu $a1, %lo(D_8013A7B8) # addiu $a1, $a1, -0x5848
/* AD3C60 8005CAC0 8DCF0008 */  lw    $t7, 8($t6)
/* AD3C64 8005CAC4 2406089F */  li    $a2, 2207
/* AD3C68 8005CAC8 000F2080 */  sll   $a0, $t7, 2
/* AD3C6C 8005CACC 008F2023 */  subu  $a0, $a0, $t7
/* AD3C70 8005CAD0 000420C0 */  sll   $a0, $a0, 3
/* AD3C74 8005CAD4 008F2023 */  subu  $a0, $a0, $t7
/* AD3C78 8005CAD8 00042080 */  sll   $a0, $a0, 2
/* AD3C7C 8005CADC 0C01EBB8 */  jal   func_8007AEE0
/* AD3C80 8005CAE0 AE6F0018 */   sw    $t7, 0x18($s3)
/* AD3C84 8005CAE4 1440000D */  bnez  $v0, .L8005CB1C
/* AD3C88 8005CAE8 AE62001C */   sw    $v0, 0x1c($s3)
/* AD3C8C 8005CAEC 3C048014 */  lui   $a0, %hi(D_8013A7D0) # $a0, 0x8014
/* AD3C90 8005CAF0 0C00084C */  jal   DebugMessage
/* AD3C94 8005CAF4 2484A7D0 */   addiu $a0, %lo(D_8013A7D0) # addiu $a0, $a0, -0x5830
/* AD3C98 8005CAF8 3C048014 */  lui   $a0, %hi(D_8013A7D8) # $a0, 0x8014
/* AD3C9C 8005CAFC 0C00084C */  jal   DebugMessage
/* AD3CA0 8005CB00 2484A7D8 */   addiu $a0, %lo(D_8013A7D8) # addiu $a0, $a0, -0x5828
/* AD3CA4 8005CB04 3C048014 */  lui   $a0, %hi(D_8013A804) # $a0, 0x8014
/* AD3CA8 8005CB08 0C00084C */  jal   DebugMessage
/* AD3CAC 8005CB0C 2484A804 */   addiu $a0, %lo(D_8013A804) # addiu $a0, $a0, -0x57fc
/* AD3CB0 8005CB10 AE600018 */  sw    $zero, 0x18($s3)
/* AD3CB4 8005CB14 1000001D */  b     .L8005CB8C
/* AD3CB8 8005CB18 00001025 */   move  $v0, $zero
.L8005CB1C:
/* AD3CBC 8005CB1C 8E790018 */  lw    $t9, 0x18($s3)
/* AD3CC0 8005CB20 2414005C */  li    $s4, 92
/* AD3CC4 8005CB24 8E70001C */  lw    $s0, 0x1c($s3)
/* AD3CC8 8005CB28 03340019 */  multu $t9, $s4
/* AD3CCC 8005CB2C 8FB8003C */  lw    $t8, 0x3c($sp)
/* AD3CD0 8005CB30 8F11000C */  lw    $s1, 0xc($t8)
/* AD3CD4 8005CB34 00004012 */  mflo  $t0
/* AD3CD8 8005CB38 02084821 */  addu  $t1, $s0, $t0
/* AD3CDC 8005CB3C 0209082B */  sltu  $at, $s0, $t1
/* AD3CE0 8005CB40 10200011 */  beqz  $at, .L8005CB88
/* AD3CE4 8005CB44 02402025 */   move  $a0, $s2
.L8005CB48:
/* AD3CE8 8005CB48 0C0171B0 */  jal   func_8005C6C0
/* AD3CEC 8005CB4C 02002825 */   move  $a1, $s0
/* AD3CF0 8005CB50 02402025 */  move  $a0, $s2
/* AD3CF4 8005CB54 02002825 */  move  $a1, $s0
/* AD3CF8 8005CB58 0C0171CC */  jal   func_8005C730
/* AD3CFC 8005CB5C 02203025 */   move  $a2, $s1
/* AD3D00 8005CB60 8E6B0018 */  lw    $t3, 0x18($s3)
/* AD3D04 8005CB64 8E6A001C */  lw    $t2, 0x1c($s3)
/* AD3D08 8005CB68 2610005C */  addiu $s0, $s0, 0x5c
/* AD3D0C 8005CB6C 01740019 */  multu $t3, $s4
/* AD3D10 8005CB70 2631003C */  addiu $s1, $s1, 0x3c
/* AD3D14 8005CB74 00006012 */  mflo  $t4
/* AD3D18 8005CB78 014C6821 */  addu  $t5, $t2, $t4
/* AD3D1C 8005CB7C 020D082B */  sltu  $at, $s0, $t5
/* AD3D20 8005CB80 5420FFF1 */  bnezl $at, .L8005CB48
/* AD3D24 8005CB84 02402025 */   move  $a0, $s2
.L8005CB88:
/* AD3D28 8005CB88 24020001 */  li    $v0, 1
.L8005CB8C:
/* AD3D2C 8005CB8C 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD3D30 8005CB90 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3D34 8005CB94 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD3D38 8005CB98 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3D3C 8005CB9C 8FB30024 */  lw    $s3, 0x24($sp)
/* AD3D40 8005CBA0 8FB40028 */  lw    $s4, 0x28($sp)
/* AD3D44 8005CBA4 03E00008 */  jr    $ra
/* AD3D48 8005CBA8 27BD0030 */   addiu $sp, $sp, 0x30

/* AD3D4C 8005CBAC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD3D50 8005CBB0 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD3D54 8005CBB4 AFB30024 */  sw    $s3, 0x24($sp)
/* AD3D58 8005CBB8 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3D5C 8005CBBC 00A09025 */  move  $s2, $a1
/* AD3D60 8005CBC0 00809825 */  move  $s3, $a0
/* AD3D64 8005CBC4 AFB40028 */  sw    $s4, 0x28($sp)
/* AD3D68 8005CBC8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD3D6C 8005CBCC AFB00018 */  sw    $s0, 0x18($sp)
/* AD3D70 8005CBD0 0C016DCB */  jal   func_8005B72C
/* AD3D74 8005CBD4 AFA7003C */   sw    $a3, 0x3c($sp)
/* AD3D78 8005CBD8 8FAE003C */  lw    $t6, 0x3c($sp)
/* AD3D7C 8005CBDC 8FA20040 */  lw    $v0, 0x40($sp)
/* AD3D80 8005CBE0 3C048014 */  lui   $a0, %hi(D_8013A808) # $a0, 0x8014
/* AD3D84 8005CBE4 8DCF0008 */  lw    $t7, 8($t6)
/* AD3D88 8005CBE8 AE42001C */  sw    $v0, 0x1c($s2)
/* AD3D8C 8005CBEC 14400006 */  bnez  $v0, .L8005CC08
/* AD3D90 8005CBF0 AE4F0018 */   sw    $t7, 0x18($s2)
/* AD3D94 8005CBF4 3C058014 */  lui   $a1, %hi(D_8013A828) # $a1, 0x8014
/* AD3D98 8005CBF8 24A5A828 */  addiu $a1, %lo(D_8013A828) # addiu $a1, $a1, -0x57d8
/* AD3D9C 8005CBFC 2484A808 */  addiu $a0, %lo(D_8013A808) # addiu $a0, $a0, -0x57f8
/* AD3DA0 8005CC00 0C0007FC */  jal   AssertMessage
/* AD3DA4 8005CC04 240608D2 */   li    $a2, 2258
.L8005CC08:
/* AD3DA8 8005CC08 8E590018 */  lw    $t9, 0x18($s2)
/* AD3DAC 8005CC0C 2414005C */  li    $s4, 92
/* AD3DB0 8005CC10 8E50001C */  lw    $s0, 0x1c($s2)
/* AD3DB4 8005CC14 03340019 */  multu $t9, $s4
/* AD3DB8 8005CC18 8FB8003C */  lw    $t8, 0x3c($sp)
/* AD3DBC 8005CC1C 8F11000C */  lw    $s1, 0xc($t8)
/* AD3DC0 8005CC20 00004012 */  mflo  $t0
/* AD3DC4 8005CC24 02084821 */  addu  $t1, $s0, $t0
/* AD3DC8 8005CC28 0209082B */  sltu  $at, $s0, $t1
/* AD3DCC 8005CC2C 10200011 */  beqz  $at, .L8005CC74
/* AD3DD0 8005CC30 02602025 */   move  $a0, $s3
.L8005CC34:
/* AD3DD4 8005CC34 0C0171B0 */  jal   func_8005C6C0
/* AD3DD8 8005CC38 02002825 */   move  $a1, $s0
/* AD3DDC 8005CC3C 02602025 */  move  $a0, $s3
/* AD3DE0 8005CC40 02002825 */  move  $a1, $s0
/* AD3DE4 8005CC44 0C0171CC */  jal   func_8005C730
/* AD3DE8 8005CC48 02203025 */   move  $a2, $s1
/* AD3DEC 8005CC4C 8E4B0018 */  lw    $t3, 0x18($s2)
/* AD3DF0 8005CC50 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD3DF4 8005CC54 2610005C */  addiu $s0, $s0, 0x5c
/* AD3DF8 8005CC58 01740019 */  multu $t3, $s4
/* AD3DFC 8005CC5C 2631003C */  addiu $s1, $s1, 0x3c
/* AD3E00 8005CC60 00006012 */  mflo  $t4
/* AD3E04 8005CC64 014C6821 */  addu  $t5, $t2, $t4
/* AD3E08 8005CC68 020D082B */  sltu  $at, $s0, $t5
/* AD3E0C 8005CC6C 5420FFF1 */  bnezl $at, .L8005CC34
/* AD3E10 8005CC70 02602025 */   move  $a0, $s3
.L8005CC74:
/* AD3E14 8005CC74 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD3E18 8005CC78 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3E1C 8005CC7C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD3E20 8005CC80 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3E24 8005CC84 8FB30024 */  lw    $s3, 0x24($sp)
/* AD3E28 8005CC88 8FB40028 */  lw    $s4, 0x28($sp)
/* AD3E2C 8005CC8C 27BD0030 */  addiu $sp, $sp, 0x30
/* AD3E30 8005CC90 03E00008 */  jr    $ra
/* AD3E34 8005CC94 24020001 */   li    $v0, 1

/* AD3E38 8005CC98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3E3C 8005CC9C AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3E40 8005CCA0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3E44 8005CCA4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD3E48 8005CCA8 00809025 */  move  $s2, $a0
/* AD3E4C 8005CCAC AFB30020 */  sw    $s3, 0x20($sp)
/* AD3E50 8005CCB0 AFB00014 */  sw    $s0, 0x14($sp)
/* AD3E54 8005CCB4 00A08825 */  move  $s1, $a1
/* AD3E58 8005CCB8 0C016DDB */  jal   func_8005B76C
/* AD3E5C 8005CCBC AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3E60 8005CCC0 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3E64 8005CCC4 2413005C */  li    $s3, 92
/* AD3E68 8005CCC8 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3E6C 8005CCCC 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3E70 8005CCD0 01D30019 */  multu $t6, $s3
/* AD3E74 8005CCD4 00007812 */  mflo  $t7
/* AD3E78 8005CCD8 020FC021 */  addu  $t8, $s0, $t7
/* AD3E7C 8005CCDC 0218082B */  sltu  $at, $s0, $t8
/* AD3E80 8005CCE0 1020000C */  beqz  $at, .L8005CD14
/* AD3E84 8005CCE4 02402025 */   move  $a0, $s2
.L8005CCE8:
/* AD3E88 8005CCE8 0C0171DD */  jal   func_8005C774
/* AD3E8C 8005CCEC 02002825 */   move  $a1, $s0
/* AD3E90 8005CCF0 8E280018 */  lw    $t0, 0x18($s1)
/* AD3E94 8005CCF4 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3E98 8005CCF8 2610005C */  addiu $s0, $s0, 0x5c
/* AD3E9C 8005CCFC 01130019 */  multu $t0, $s3
/* AD3EA0 8005CD00 00004812 */  mflo  $t1
/* AD3EA4 8005CD04 03295021 */  addu  $t2, $t9, $t1
/* AD3EA8 8005CD08 020A082B */  sltu  $at, $s0, $t2
/* AD3EAC 8005CD0C 5420FFF6 */  bnezl $at, .L8005CCE8
/* AD3EB0 8005CD10 02402025 */   move  $a0, $s2
.L8005CD14:
/* AD3EB4 8005CD14 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3EB8 8005CD18 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3EBC 8005CD1C 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3EC0 8005CD20 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3EC4 8005CD24 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3EC8 8005CD28 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3ECC 8005CD2C 03E00008 */  jr    $ra
/* AD3ED0 8005CD30 24020001 */   li    $v0, 1

/* AD3ED4 8005CD34 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3ED8 8005CD38 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3EDC 8005CD3C AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3EE0 8005CD40 AFB10018 */  sw    $s1, 0x18($sp)
/* AD3EE4 8005CD44 00809025 */  move  $s2, $a0
/* AD3EE8 8005CD48 AFB30020 */  sw    $s3, 0x20($sp)
/* AD3EEC 8005CD4C AFB00014 */  sw    $s0, 0x14($sp)
/* AD3EF0 8005CD50 00A08825 */  move  $s1, $a1
/* AD3EF4 8005CD54 0C016DE1 */  jal   func_8005B784
/* AD3EF8 8005CD58 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3EFC 8005CD5C 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3F00 8005CD60 2413005C */  li    $s3, 92
/* AD3F04 8005CD64 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3F08 8005CD68 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3F0C 8005CD6C 01D30019 */  multu $t6, $s3
/* AD3F10 8005CD70 00007812 */  mflo  $t7
/* AD3F14 8005CD74 020FC021 */  addu  $t8, $s0, $t7
/* AD3F18 8005CD78 0218082B */  sltu  $at, $s0, $t8
/* AD3F1C 8005CD7C 1020000C */  beqz  $at, .L8005CDB0
/* AD3F20 8005CD80 02402025 */   move  $a0, $s2
.L8005CD84:
/* AD3F24 8005CD84 0C0171E6 */  jal   func_8005C798
/* AD3F28 8005CD88 02002825 */   move  $a1, $s0
/* AD3F2C 8005CD8C 8E280018 */  lw    $t0, 0x18($s1)
/* AD3F30 8005CD90 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3F34 8005CD94 2610005C */  addiu $s0, $s0, 0x5c
/* AD3F38 8005CD98 01130019 */  multu $t0, $s3
/* AD3F3C 8005CD9C 00004812 */  mflo  $t1
/* AD3F40 8005CDA0 03295021 */  addu  $t2, $t9, $t1
/* AD3F44 8005CDA4 020A082B */  sltu  $at, $s0, $t2
/* AD3F48 8005CDA8 5420FFF6 */  bnezl $at, .L8005CD84
/* AD3F4C 8005CDAC 02402025 */   move  $a0, $s2
.L8005CDB0:
/* AD3F50 8005CDB0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3F54 8005CDB4 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3F58 8005CDB8 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3F5C 8005CDBC 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3F60 8005CDC0 8FB30020 */  lw    $s3, 0x20($sp)
/* AD3F64 8005CDC4 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3F68 8005CDC8 03E00008 */  jr    $ra
/* AD3F6C 8005CDCC 24020001 */   li    $v0, 1

/* AD3F70 8005CDD0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3F74 8005CDD4 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3F78 8005CDD8 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD3F7C 8005CDDC AFB10018 */  sw    $s1, 0x18($sp)
/* AD3F80 8005CDE0 00809025 */  move  $s2, $a0
/* AD3F84 8005CDE4 AFB30020 */  sw    $s3, 0x20($sp)
/* AD3F88 8005CDE8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD3F8C 8005CDEC 00A08825 */  move  $s1, $a1
/* AD3F90 8005CDF0 0C016DE7 */  jal   func_8005B79C
/* AD3F94 8005CDF4 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3F98 8005CDF8 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3F9C 8005CDFC 2413005C */  li    $s3, 92
/* AD3FA0 8005CE00 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3FA4 8005CE04 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3FA8 8005CE08 01D30019 */  multu $t6, $s3
/* AD3FAC 8005CE0C 00007812 */  mflo  $t7
/* AD3FB0 8005CE10 020FC021 */  addu  $t8, $s0, $t7
/* AD3FB4 8005CE14 0218082B */  sltu  $at, $s0, $t8
/* AD3FB8 8005CE18 1020000C */  beqz  $at, .L8005CE4C
/* AD3FBC 8005CE1C 02402025 */   move  $a0, $s2
.L8005CE20:
/* AD3FC0 8005CE20 0C0171EF */  jal   func_8005C7BC
/* AD3FC4 8005CE24 02002825 */   move  $a1, $s0
/* AD3FC8 8005CE28 8E280018 */  lw    $t0, 0x18($s1)
/* AD3FCC 8005CE2C 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3FD0 8005CE30 2610005C */  addiu $s0, $s0, 0x5c
/* AD3FD4 8005CE34 01130019 */  multu $t0, $s3
/* AD3FD8 8005CE38 00004812 */  mflo  $t1
/* AD3FDC 8005CE3C 03295021 */  addu  $t2, $t9, $t1
/* AD3FE0 8005CE40 020A082B */  sltu  $at, $s0, $t2
/* AD3FE4 8005CE44 5420FFF6 */  bnezl $at, .L8005CE20
/* AD3FE8 8005CE48 02402025 */   move  $a0, $s2
.L8005CE4C:
/* AD3FEC 8005CE4C 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3FF0 8005CE50 8FB00014 */  lw    $s0, 0x14($sp)
/* AD3FF4 8005CE54 8FB10018 */  lw    $s1, 0x18($sp)
/* AD3FF8 8005CE58 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD3FFC 8005CE5C 8FB30020 */  lw    $s3, 0x20($sp)
/* AD4000 8005CE60 27BD0028 */  addiu $sp, $sp, 0x28
/* AD4004 8005CE64 03E00008 */  jr    $ra
/* AD4008 8005CE68 24020001 */   li    $v0, 1

glabel func_8005CE6C
/* AD400C 8005CE6C 3C0E8012 */  lui   $t6, %hi(D_8011DEAC) # $t6, 0x8012
/* AD4010 8005CE70 25CEDEAC */  addiu $t6, %lo(D_8011DEAC) # addiu $t6, $t6, -0x2154
/* AD4014 8005CE74 AFA40000 */  sw    $a0, ($sp)
/* AD4018 8005CE78 25C8003C */  addiu $t0, $t6, 0x3c
/* AD401C 8005CE7C 00A0C825 */  move  $t9, $a1
.L8005CE80:
/* AD4020 8005CE80 8DD80000 */  lw    $t8, ($t6)
/* AD4024 8005CE84 25CE000C */  addiu $t6, $t6, 0xc
/* AD4028 8005CE88 2739000C */  addiu $t9, $t9, 0xc
/* AD402C 8005CE8C AF38FFF4 */  sw    $t8, -0xc($t9)
/* AD4030 8005CE90 8DCFFFF8 */  lw    $t7, -8($t6)
/* AD4034 8005CE94 AF2FFFF8 */  sw    $t7, -8($t9)
/* AD4038 8005CE98 8DD8FFFC */  lw    $t8, -4($t6)
/* AD403C 8005CE9C 15C8FFF8 */  bne   $t6, $t0, .L8005CE80
/* AD4040 8005CEA0 AF38FFFC */   sw    $t8, -4($t9)
/* AD4044 8005CEA4 8DD80000 */  lw    $t8, ($t6)
/* AD4048 8005CEA8 24020001 */  li    $v0, 1
/* AD404C 8005CEAC 03E00008 */  jr    $ra
/* AD4050 8005CEB0 AF380000 */   sw    $t8, ($t9)

glabel func_8005CEB4
/* AD4054 8005CEB4 AFA40000 */  sw    $a0, ($sp)
/* AD4058 8005CEB8 AFA50004 */  sw    $a1, 4($sp)
/* AD405C 8005CEBC 03E00008 */  jr    $ra
/* AD4060 8005CEC0 24020001 */   li    $v0, 1

glabel func_8005CEC4
/* AD4064 8005CEC4 3C018014 */  lui   $at, 0x8014
/* AD4068 8005CEC8 C424ACF4 */  lwc1  $f4, -0x530c($at)
/* AD406C 8005CECC AFA40000 */  sw    $a0, ($sp)
/* AD4070 8005CED0 24020001 */  li    $v0, 1
/* AD4074 8005CED4 03E00008 */  jr    $ra
/* AD4078 8005CED8 E4A4003C */   swc1  $f4, 0x3c($a1)

glabel func_8005CEDC
/* AD407C 8005CEDC C4840018 */  lwc1  $f4, 0x18($a0)
/* AD4080 8005CEE0 C4860024 */  lwc1  $f6, 0x24($a0)
/* AD4084 8005CEE4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AD4088 8005CEE8 44810000 */  mtc1  $at, $f0
/* AD408C 8005CEEC 46062200 */  add.s $f8, $f4, $f6
/* AD4090 8005CEF0 C4840028 */  lwc1  $f4, 0x28($a0)
/* AD4094 8005CEF4 C492001C */  lwc1  $f18, 0x1c($a0)
/* AD4098 8005CEF8 46004282 */  mul.s $f10, $f8, $f0
/* AD409C 8005CEFC 46049180 */  add.s $f6, $f18, $f4
/* AD40A0 8005CF00 C492002C */  lwc1  $f18, 0x2c($a0)
/* AD40A4 8005CF04 46003202 */  mul.s $f8, $f6, $f0
/* AD40A8 8005CF08 4600540D */  trunc.w.s $f16, $f10
/* AD40AC 8005CF0C 4600428D */  trunc.w.s $f10, $f8
/* AD40B0 8005CF10 440F8000 */  mfc1  $t7, $f16
/* AD40B4 8005CF14 C4900020 */  lwc1  $f16, 0x20($a0)
/* AD40B8 8005CF18 44195000 */  mfc1  $t9, $f10
/* AD40BC 8005CF1C 46128100 */  add.s $f4, $f16, $f18
/* AD40C0 8005CF20 C490000C */  lwc1  $f16, 0xc($a0)
/* AD40C4 8005CF24 C48A0000 */  lwc1  $f10, ($a0)
/* AD40C8 8005CF28 A48F0030 */  sh    $t7, 0x30($a0)
/* AD40CC 8005CF2C 46002182 */  mul.s $f6, $f4, $f0
/* AD40D0 8005CF30 46105480 */  add.s $f18, $f10, $f16
/* AD40D4 8005CF34 C48A0010 */  lwc1  $f10, 0x10($a0)
/* AD40D8 8005CF38 A4990032 */  sh    $t9, 0x32($a0)
/* AD40DC 8005CF3C 46009102 */  mul.s $f4, $f18, $f0
/* AD40E0 8005CF40 4600320D */  trunc.w.s $f8, $f6
/* AD40E4 8005CF44 4600218D */  trunc.w.s $f6, $f4
/* AD40E8 8005CF48 44094000 */  mfc1  $t1, $f8
/* AD40EC 8005CF4C C4880004 */  lwc1  $f8, 4($a0)
/* AD40F0 8005CF50 440B3000 */  mfc1  $t3, $f6
/* AD40F4 8005CF54 460A4400 */  add.s $f16, $f8, $f10
/* AD40F8 8005CF58 C4880014 */  lwc1  $f8, 0x14($a0)
/* AD40FC 8005CF5C C4860008 */  lwc1  $f6, 8($a0)
/* AD4100 8005CF60 A4890034 */  sh    $t1, 0x34($a0)
/* AD4104 8005CF64 46008482 */  mul.s $f18, $f16, $f0
/* AD4108 8005CF68 46083280 */  add.s $f10, $f6, $f8
/* AD410C 8005CF6C A48B0036 */  sh    $t3, 0x36($a0)
/* AD4110 8005CF70 46005402 */  mul.s $f16, $f10, $f0
/* AD4114 8005CF74 4600910D */  trunc.w.s $f4, $f18
/* AD4118 8005CF78 4600848D */  trunc.w.s $f18, $f16
/* AD411C 8005CF7C 440D2000 */  mfc1  $t5, $f4
/* AD4120 8005CF80 440F9000 */  mfc1  $t7, $f18
/* AD4124 8005CF84 A48D0038 */  sh    $t5, 0x38($a0)
/* AD4128 8005CF88 03E00008 */  jr    $ra
/* AD412C 8005CF8C A48F003A */   sh    $t7, 0x3a($a0)

glabel func_8005CF90
/* AD4130 8005CF90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD4134 8005CF94 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4138 8005CF98 AFA40018 */  sw    $a0, 0x18($sp)
/* AD413C 8005CF9C 8CCF0000 */  lw    $t7, ($a2)
/* AD4140 8005CFA0 00A02025 */  move  $a0, $a1
/* AD4144 8005CFA4 ACAF0000 */  sw    $t7, ($a1)
/* AD4148 8005CFA8 8CCE0004 */  lw    $t6, 4($a2)
/* AD414C 8005CFAC ACAE0004 */  sw    $t6, 4($a1)
/* AD4150 8005CFB0 8CCF0008 */  lw    $t7, 8($a2)
/* AD4154 8005CFB4 ACAF0008 */  sw    $t7, 8($a1)
/* AD4158 8005CFB8 8CD9000C */  lw    $t9, 0xc($a2)
/* AD415C 8005CFBC ACB9000C */  sw    $t9, 0xc($a1)
/* AD4160 8005CFC0 8CD80010 */  lw    $t8, 0x10($a2)
/* AD4164 8005CFC4 ACB80010 */  sw    $t8, 0x10($a1)
/* AD4168 8005CFC8 8CD90014 */  lw    $t9, 0x14($a2)
/* AD416C 8005CFCC ACB90014 */  sw    $t9, 0x14($a1)
/* AD4170 8005CFD0 8CC90018 */  lw    $t1, 0x18($a2)
/* AD4174 8005CFD4 ACA90018 */  sw    $t1, 0x18($a1)
/* AD4178 8005CFD8 8CC8001C */  lw    $t0, 0x1c($a2)
/* AD417C 8005CFDC ACA8001C */  sw    $t0, 0x1c($a1)
/* AD4180 8005CFE0 8CC90020 */  lw    $t1, 0x20($a2)
/* AD4184 8005CFE4 ACA90020 */  sw    $t1, 0x20($a1)
/* AD4188 8005CFE8 8CCB0024 */  lw    $t3, 0x24($a2)
/* AD418C 8005CFEC ACAB0024 */  sw    $t3, 0x24($a1)
/* AD4190 8005CFF0 8CCA0028 */  lw    $t2, 0x28($a2)
/* AD4194 8005CFF4 ACAA0028 */  sw    $t2, 0x28($a1)
/* AD4198 8005CFF8 8CCB002C */  lw    $t3, 0x2c($a2)
/* AD419C 8005CFFC 0C0173B7 */  jal   func_8005CEDC
/* AD41A0 8005D000 ACAB002C */   sw    $t3, 0x2c($a1)
/* AD41A4 8005D004 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD41A8 8005D008 27BD0018 */  addiu $sp, $sp, 0x18
/* AD41AC 8005D00C 24020001 */  li    $v0, 1
/* AD41B0 8005D010 03E00008 */  jr    $ra
/* AD41B4 8005D014 00000000 */   nop   

/* AD41B8 8005D018 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD41BC 8005D01C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD41C0 8005D020 AFA40018 */  sw    $a0, 0x18($sp)
/* AD41C4 8005D024 0C016D97 */  jal   func_8005B65C
/* AD41C8 8005D028 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD41CC 8005D02C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD41D0 8005D030 8FA40018 */  lw    $a0, 0x18($sp)
/* AD41D4 8005D034 0C016E21 */  jal   func_8005B884
/* AD41D8 8005D038 24A50018 */   addiu $a1, $a1, 0x18
/* AD41DC 8005D03C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD41E0 8005D040 8FA40018 */  lw    $a0, 0x18($sp)
/* AD41E4 8005D044 0C01739B */  jal   func_8005CE6C
/* AD41E8 8005D048 24A50040 */   addiu $a1, $a1, 0x40
/* AD41EC 8005D04C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD41F0 8005D050 27BD0018 */  addiu $sp, $sp, 0x18
/* AD41F4 8005D054 24020001 */  li    $v0, 1
/* AD41F8 8005D058 03E00008 */  jr    $ra
/* AD41FC 8005D05C 00000000 */   nop   

/* AD4200 8005D060 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD4204 8005D064 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4208 8005D068 AFA40018 */  sw    $a0, 0x18($sp)
/* AD420C 8005D06C 0C016DA8 */  jal   func_8005B6A0
/* AD4210 8005D070 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD4214 8005D074 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4218 8005D078 8FA40018 */  lw    $a0, 0x18($sp)
/* AD421C 8005D07C 0C016E41 */  jal   func_8005B904
/* AD4220 8005D080 24A50018 */   addiu $a1, $a1, 0x18
/* AD4224 8005D084 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4228 8005D088 8FA40018 */  lw    $a0, 0x18($sp)
/* AD422C 8005D08C 0C0173AD */  jal   func_8005CEB4
/* AD4230 8005D090 24A50040 */   addiu $a1, $a1, 0x40
/* AD4234 8005D094 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4238 8005D098 27BD0018 */  addiu $sp, $sp, 0x18
/* AD423C 8005D09C 24020001 */  li    $v0, 1
/* AD4240 8005D0A0 03E00008 */  jr    $ra
/* AD4244 8005D0A4 00000000 */   nop   

/* AD4248 8005D0A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD424C 8005D0AC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4250 8005D0B0 AFA40018 */  sw    $a0, 0x18($sp)
/* AD4254 8005D0B4 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD4258 8005D0B8 0C016DBB */  jal   func_8005B6EC
/* AD425C 8005D0BC AFA70024 */   sw    $a3, 0x24($sp)
/* AD4260 8005D0C0 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4264 8005D0C4 8FA60024 */  lw    $a2, 0x24($sp)
/* AD4268 8005D0C8 8FA40018 */  lw    $a0, 0x18($sp)
/* AD426C 8005D0CC 24A50018 */  addiu $a1, $a1, 0x18
/* AD4270 8005D0D0 0C016E4F */  jal   func_8005B93C
/* AD4274 8005D0D4 24C60008 */   addiu $a2, $a2, 8
/* AD4278 8005D0D8 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD427C 8005D0DC 8FA60024 */  lw    $a2, 0x24($sp)
/* AD4280 8005D0E0 8FA40018 */  lw    $a0, 0x18($sp)
/* AD4284 8005D0E4 24A50040 */  addiu $a1, $a1, 0x40
/* AD4288 8005D0E8 0C0173E4 */  jal   func_8005CF90
/* AD428C 8005D0EC 24C60020 */   addiu $a2, $a2, 0x20
/* AD4290 8005D0F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4294 8005D0F4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD4298 8005D0F8 24020001 */  li    $v0, 1
/* AD429C 8005D0FC 03E00008 */  jr    $ra
/* AD42A0 8005D100 00000000 */   nop   

/* AD42A4 8005D104 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD42A8 8005D108 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD42AC 8005D10C AFA40018 */  sw    $a0, 0x18($sp)
/* AD42B0 8005D110 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD42B4 8005D114 0C016DCB */  jal   func_8005B72C
/* AD42B8 8005D118 AFA70024 */   sw    $a3, 0x24($sp)
/* AD42BC 8005D11C 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD42C0 8005D120 8FA60024 */  lw    $a2, 0x24($sp)
/* AD42C4 8005D124 8FA40018 */  lw    $a0, 0x18($sp)
/* AD42C8 8005D128 24A50018 */  addiu $a1, $a1, 0x18
/* AD42CC 8005D12C 0C016E4F */  jal   func_8005B93C
/* AD42D0 8005D130 24C60008 */   addiu $a2, $a2, 8
/* AD42D4 8005D134 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD42D8 8005D138 8FA60024 */  lw    $a2, 0x24($sp)
/* AD42DC 8005D13C 8FA40018 */  lw    $a0, 0x18($sp)
/* AD42E0 8005D140 24A50040 */  addiu $a1, $a1, 0x40
/* AD42E4 8005D144 0C0173E4 */  jal   func_8005CF90
/* AD42E8 8005D148 24C60020 */   addiu $a2, $a2, 0x20
/* AD42EC 8005D14C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD42F0 8005D150 27BD0018 */  addiu $sp, $sp, 0x18
/* AD42F4 8005D154 24020001 */  li    $v0, 1
/* AD42F8 8005D158 03E00008 */  jr    $ra
/* AD42FC 8005D15C 00000000 */   nop   

glabel func_8005D160
/* AD4300 8005D160 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD4304 8005D164 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4308 8005D168 AFA40018 */  sw    $a0, 0x18($sp)
/* AD430C 8005D16C 0C016DDB */  jal   func_8005B76C
/* AD4310 8005D170 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD4314 8005D174 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4318 8005D178 8FA40018 */  lw    $a0, 0x18($sp)
/* AD431C 8005D17C 0C016E6C */  jal   func_8005B9B0
/* AD4320 8005D180 24A50018 */   addiu $a1, $a1, 0x18
/* AD4324 8005D184 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4328 8005D188 8FA40018 */  lw    $a0, 0x18($sp)
/* AD432C 8005D18C 0C0173B1 */  jal   func_8005CEC4
/* AD4330 8005D190 24A50040 */   addiu $a1, $a1, 0x40
/* AD4334 8005D194 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4338 8005D198 27BD0018 */  addiu $sp, $sp, 0x18
/* AD433C 8005D19C 24020001 */  li    $v0, 1
/* AD4340 8005D1A0 03E00008 */  jr    $ra
/* AD4344 8005D1A4 00000000 */   nop   

/* AD4348 8005D1A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD434C 8005D1AC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4350 8005D1B0 AFA40018 */  sw    $a0, 0x18($sp)
/* AD4354 8005D1B4 0C016DE1 */  jal   func_8005B784
/* AD4358 8005D1B8 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD435C 8005D1BC 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4360 8005D1C0 8FA40018 */  lw    $a0, 0x18($sp)
/* AD4364 8005D1C4 0C016E7A */  jal   func_8005B9E8
/* AD4368 8005D1C8 24A50018 */   addiu $a1, $a1, 0x18
/* AD436C 8005D1CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4370 8005D1D0 27BD0018 */  addiu $sp, $sp, 0x18
/* AD4374 8005D1D4 24020001 */  li    $v0, 1
/* AD4378 8005D1D8 03E00008 */  jr    $ra
/* AD437C 8005D1DC 00000000 */   nop   

/* AD4380 8005D1E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD4384 8005D1E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4388 8005D1E8 AFA40018 */  sw    $a0, 0x18($sp)
/* AD438C 8005D1EC 0C016DE7 */  jal   func_8005B79C
/* AD4390 8005D1F0 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD4394 8005D1F4 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD4398 8005D1F8 8FA40018 */  lw    $a0, 0x18($sp)
/* AD439C 8005D1FC 0C016E87 */  jal   func_8005BA1C
/* AD43A0 8005D200 24A50018 */   addiu $a1, $a1, 0x18
/* AD43A4 8005D204 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD43A8 8005D208 27BD0018 */  addiu $sp, $sp, 0x18
/* AD43AC 8005D20C 24020001 */  li    $v0, 1
/* AD43B0 8005D210 03E00008 */  jr    $ra
/* AD43B4 8005D214 00000000 */   nop   

glabel func_8005D218
/* AD43B8 8005D218 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD43BC 8005D21C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD43C0 8005D220 AFA40030 */  sw    $a0, 0x30($sp)
/* AD43C4 8005D224 AFA60038 */  sw    $a2, 0x38($sp)
/* AD43C8 8005D228 90AE002D */  lbu   $t6, 0x2d($a1)
/* AD43CC 8005D22C 00A03825 */  move  $a3, $a1
/* AD43D0 8005D230 24E50070 */  addiu $a1, $a3, 0x70
/* AD43D4 8005D234 31CF0004 */  andi  $t7, $t6, 4
/* AD43D8 8005D238 15E00003 */  bnez  $t7, .L8005D248
/* AD43DC 8005D23C 27A40020 */   addiu $a0, $sp, 0x20
/* AD43E0 8005D240 1000001C */  b     .L8005D2B4
/* AD43E4 8005D244 24020001 */   li    $v0, 1
.L8005D248:
/* AD43E8 8005D248 0C01DF97 */  jal   func_80077E5C
/* AD43EC 8005D24C AFA70034 */   sw    $a3, 0x34($sp)
/* AD43F0 8005D250 27A40020 */  addiu $a0, $sp, 0x20
/* AD43F4 8005D254 0C032D94 */  jal   func_800CB650
/* AD43F8 8005D258 8FA50038 */   lw    $a1, 0x38($sp)
/* AD43FC 8005D25C 8FA70034 */  lw    $a3, 0x34($sp)
/* AD4400 8005D260 00001025 */  move  $v0, $zero
/* AD4404 8005D264 C4E4007C */  lwc1  $f4, 0x7c($a3)
/* AD4408 8005D268 4604003C */  c.lt.s $f0, $f4
/* AD440C 8005D26C 00000000 */  nop   
/* AD4410 8005D270 45000010 */  bc1f  .L8005D2B4
/* AD4414 8005D274 00000000 */   nop   
/* AD4418 8005D278 8CE50030 */  lw    $a1, 0x30($a3)
/* AD441C 8005D27C E4E0007C */  swc1  $f0, 0x7c($a3)
/* AD4420 8005D280 8FA40030 */  lw    $a0, 0x30($sp)
/* AD4424 8005D284 50A00005 */  beql  $a1, $zero, .L8005D29C
/* AD4428 8005D288 8CE50038 */   lw    $a1, 0x38($a3)
/* AD442C 8005D28C 0C016DE1 */  jal   func_8005B784
/* AD4430 8005D290 AFA70034 */   sw    $a3, 0x34($sp)
/* AD4434 8005D294 8FA70034 */  lw    $a3, 0x34($sp)
/* AD4438 8005D298 8CE50038 */  lw    $a1, 0x38($a3)
.L8005D29C:
/* AD443C 8005D29C 10A00003 */  beqz  $a1, .L8005D2AC
/* AD4440 8005D2A0 00000000 */   nop   
/* AD4444 8005D2A4 0C016E7A */  jal   func_8005B9E8
/* AD4448 8005D2A8 8FA40030 */   lw    $a0, 0x30($sp)
.L8005D2AC:
/* AD444C 8005D2AC 10000001 */  b     .L8005D2B4
/* AD4450 8005D2B0 24020001 */   li    $v0, 1
.L8005D2B4:
/* AD4454 8005D2B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4458 8005D2B8 27BD0030 */  addiu $sp, $sp, 0x30
/* AD445C 8005D2BC 03E00008 */  jr    $ra
/* AD4460 8005D2C0 00000000 */   nop   

/* AD4464 8005D2C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD4468 8005D2C8 3C0E8012 */  lui   $t6, %hi(D_8011DEEC) # $t6, 0x8012
/* AD446C 8005D2CC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4470 8005D2D0 AFA40028 */  sw    $a0, 0x28($sp)
/* AD4474 8005D2D4 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD4478 8005D2D8 25CEDEEC */  addiu $t6, %lo(D_8011DEEC) # addiu $t6, $t6, -0x2114
/* AD447C 8005D2DC 8DD80000 */  lw    $t8, ($t6)
/* AD4480 8005D2E0 27A5001C */  addiu $a1, $sp, 0x1c
/* AD4484 8005D2E4 ACB80000 */  sw    $t8, ($a1)
/* AD4488 8005D2E8 8DCF0004 */  lw    $t7, 4($t6)
/* AD448C 8005D2EC ACAF0004 */  sw    $t7, 4($a1)
/* AD4490 8005D2F0 8DD80008 */  lw    $t8, 8($t6)
/* AD4494 8005D2F4 ACB80008 */  sw    $t8, 8($a1)
/* AD4498 8005D2F8 0C01DF90 */  jal   func_80077E40
/* AD449C 8005D2FC 8FA4002C */   lw    $a0, 0x2c($sp)
/* AD44A0 8005D300 8FA4002C */  lw    $a0, 0x2c($sp)
/* AD44A4 8005D304 27A5001C */  addiu $a1, $sp, 0x1c
/* AD44A8 8005D308 0C01DF90 */  jal   func_80077E40
/* AD44AC 8005D30C 2484000C */   addiu $a0, $a0, 0xc
/* AD44B0 8005D310 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD44B4 8005D314 27BD0028 */  addiu $sp, $sp, 0x28
/* AD44B8 8005D318 24020001 */  li    $v0, 1
/* AD44BC 8005D31C 03E00008 */  jr    $ra
/* AD44C0 8005D320 00000000 */   nop   

/* AD44C4 8005D324 AFA40000 */  sw    $a0, ($sp)
/* AD44C8 8005D328 AFA50004 */  sw    $a1, 4($sp)
/* AD44CC 8005D32C 03E00008 */  jr    $ra
/* AD44D0 8005D330 24020001 */   li    $v0, 1

glabel func_8005D334
/* AD44D4 8005D334 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD44D8 8005D338 AFA40018 */  sw    $a0, 0x18($sp)
/* AD44DC 8005D33C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD44E0 8005D340 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD44E4 8005D344 00A02025 */  move  $a0, $a1
/* AD44E8 8005D348 AFA70024 */  sw    $a3, 0x24($sp)
/* AD44EC 8005D34C 0C01DF90 */  jal   func_80077E40
/* AD44F0 8005D350 00C02825 */   move  $a1, $a2
/* AD44F4 8005D354 8FA4001C */  lw    $a0, 0x1c($sp)
/* AD44F8 8005D358 8FA50024 */  lw    $a1, 0x24($sp)
/* AD44FC 8005D35C 0C01DF90 */  jal   func_80077E40
/* AD4500 8005D360 2484000C */   addiu $a0, $a0, 0xc
/* AD4504 8005D364 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4508 8005D368 27BD0018 */  addiu $sp, $sp, 0x18
/* AD450C 8005D36C 24020001 */  li    $v0, 1
/* AD4510 8005D370 03E00008 */  jr    $ra
/* AD4514 8005D374 00000000 */   nop   

/* AD4518 8005D378 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD451C 8005D37C AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4520 8005D380 94CE0018 */  lhu   $t6, 0x18($a2)
/* AD4524 8005D384 24C7000C */  addiu $a3, $a2, 0xc
/* AD4528 8005D388 0C0174CD */  jal   func_8005D334
/* AD452C 8005D38C A4AE0018 */   sh    $t6, 0x18($a1)
/* AD4530 8005D390 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4534 8005D394 27BD0018 */  addiu $sp, $sp, 0x18
/* AD4538 8005D398 24020001 */  li    $v0, 1
/* AD453C 8005D39C 03E00008 */  jr    $ra
/* AD4540 8005D3A0 00000000 */   nop   

glabel func_8005D3A4
/* AD4544 8005D3A4 AFA40000 */  sw    $a0, ($sp)
/* AD4548 8005D3A8 94AE0018 */  lhu   $t6, 0x18($a1)
/* AD454C 8005D3AC 24020001 */  li    $v0, 1
/* AD4550 8005D3B0 31CFFFFE */  andi  $t7, $t6, 0xfffe
/* AD4554 8005D3B4 03E00008 */  jr    $ra
/* AD4558 8005D3B8 A4AF0018 */   sh    $t7, 0x18($a1)

glabel func_8005D3BC
/* AD455C 8005D3BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD4560 8005D3C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD4564 8005D3C4 0C017503 */  jal   func_8005D40C
/* AD4568 8005D3C8 A4A00002 */   sh    $zero, 2($a1)
/* AD456C 8005D3CC 3C028016 */  lui   $v0, %hi(D_8015FA90) # $v0, 0x8016
/* AD4570 8005D3D0 2442FA90 */  addiu $v0, %lo(D_8015FA90) # addiu $v0, $v0, -0x570
/* AD4574 8005D3D4 8C4E0000 */  lw    $t6, ($v0)
/* AD4578 8005D3D8 24030001 */  li    $v1, 1
/* AD457C 8005D3DC A5C30E7E */  sh    $v1, 0xe7e($t6)
/* AD4580 8005D3E0 8C4F0000 */  lw    $t7, ($v0)
/* AD4584 8005D3E4 A5E30E80 */  sh    $v1, 0xe80($t7)
/* AD4588 8005D3E8 8C580000 */  lw    $t8, ($v0)
/* AD458C 8005D3EC A7030E82 */  sh    $v1, 0xe82($t8)
/* AD4590 8005D3F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD4594 8005D3F4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD4598 8005D3F8 03E00008 */  jr    $ra
/* AD459C 8005D3FC 00000000 */   nop   

glabel func_8005D400
/* AD45A0 8005D400 AFA40000 */  sw    $a0, ($sp)
/* AD45A4 8005D404 03E00008 */  jr    $ra
/* AD45A8 8005D408 AFA50004 */   sw    $a1, 4($sp)

glabel func_8005D40C
/* AD45AC 8005D40C AFA40000 */  sw    $a0, ($sp)
/* AD45B0 8005D410 94AE0002 */  lhu   $t6, 2($a1)
/* AD45B4 8005D414 24A400CC */  addiu $a0, $a1, 0xcc
/* AD45B8 8005D418 24A20004 */  addiu $v0, $a1, 4
/* AD45BC 8005D41C 31CF0001 */  andi  $t7, $t6, 1
/* AD45C0 8005D420 15E00022 */  bnez  $t7, .L8005D4AC
/* AD45C4 8005D424 0044082B */   sltu  $at, $v0, $a0
/* AD45C8 8005D428 A4A00000 */  sh    $zero, ($a1)
/* AD45CC 8005D42C ACA000CC */  sw    $zero, 0xcc($a1)
/* AD45D0 8005D430 ACA001C0 */  sw    $zero, 0x1c0($a1)
/* AD45D4 8005D434 10200005 */  beqz  $at, .L8005D44C
/* AD45D8 8005D438 ACA0028C */   sw    $zero, 0x28c($a1)
.L8005D43C:
/* AD45DC 8005D43C 24420004 */  addiu $v0, $v0, 4
/* AD45E0 8005D440 0044082B */  sltu  $at, $v0, $a0
/* AD45E4 8005D444 1420FFFD */  bnez  $at, .L8005D43C
/* AD45E8 8005D448 AC40FFFC */   sw    $zero, -4($v0)
.L8005D44C:
/* AD45EC 8005D44C 24A200D0 */  addiu $v0, $a1, 0xd0
/* AD45F0 8005D450 24A401C0 */  addiu $a0, $a1, 0x1c0
/* AD45F4 8005D454 0044082B */  sltu  $at, $v0, $a0
/* AD45F8 8005D458 10200004 */  beqz  $at, .L8005D46C
.L8005D45C:
/* AD45FC 8005D45C 24420004 */   addiu $v0, $v0, 4
/* AD4600 8005D460 0044082B */  sltu  $at, $v0, $a0
/* AD4604 8005D464 1420FFFD */  bnez  $at, .L8005D45C
/* AD4608 8005D468 AC40FFFC */   sw    $zero, -4($v0)
.L8005D46C:
/* AD460C 8005D46C 24A201C4 */  addiu $v0, $a1, 0x1c4
/* AD4610 8005D470 24A4028C */  addiu $a0, $a1, 0x28c
/* AD4614 8005D474 0044082B */  sltu  $at, $v0, $a0
/* AD4618 8005D478 10200004 */  beqz  $at, .L8005D48C
.L8005D47C:
/* AD461C 8005D47C 24420004 */   addiu $v0, $v0, 4
/* AD4620 8005D480 0044082B */  sltu  $at, $v0, $a0
/* AD4624 8005D484 1420FFFD */  bnez  $at, .L8005D47C
/* AD4628 8005D488 AC40FFFC */   sw    $zero, -4($v0)
.L8005D48C:
/* AD462C 8005D48C 24A20290 */  addiu $v0, $a1, 0x290
/* AD4630 8005D490 24A4029C */  addiu $a0, $a1, 0x29c
/* AD4634 8005D494 0044082B */  sltu  $at, $v0, $a0
/* AD4638 8005D498 10200004 */  beqz  $at, .L8005D4AC
.L8005D49C:
/* AD463C 8005D49C 24420004 */   addiu $v0, $v0, 4
/* AD4640 8005D4A0 0044082B */  sltu  $at, $v0, $a0
/* AD4644 8005D4A4 1420FFFD */  bnez  $at, .L8005D49C
/* AD4648 8005D4A8 AC40FFFC */   sw    $zero, -4($v0)
.L8005D4AC:
/* AD464C 8005D4AC 03E00008 */  jr    $ra
/* AD4650 8005D4B0 00000000 */   nop   

/* AD4654 8005D4B4 AFA40000 */  sw    $a0, ($sp)
/* AD4658 8005D4B8 94AE0002 */  lhu   $t6, 2($a1)
/* AD465C 8005D4BC 35CF0001 */  ori   $t7, $t6, 1
/* AD4660 8005D4C0 03E00008 */  jr    $ra
/* AD4664 8005D4C4 A4AF0002 */   sh    $t7, 2($a1)

/* AD4668 8005D4C8 AFA40000 */  sw    $a0, ($sp)
/* AD466C 8005D4CC 94AE0002 */  lhu   $t6, 2($a1)
/* AD4670 8005D4D0 31CFFFFE */  andi  $t7, $t6, 0xfffe
/* AD4674 8005D4D4 03E00008 */  jr    $ra
/* AD4678 8005D4D8 A4AF0002 */   sh    $t7, 2($a1)

glabel func_8005D4DC
/* AD467C 8005D4DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD4680 8005D4E0 AFB40028 */  sw    $s4, 0x28($sp)
/* AD4684 8005D4E4 AFB20020 */  sw    $s2, 0x20($sp)
/* AD4688 8005D4E8 00A09025 */  move  $s2, $a1
/* AD468C 8005D4EC 0080A025 */  move  $s4, $a0
/* AD4690 8005D4F0 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD4694 8005D4F4 AFB30024 */  sw    $s3, 0x24($sp)
/* AD4698 8005D4F8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD469C 8005D4FC 10A00043 */  beqz  $a1, .L8005D60C
/* AD46A0 8005D500 AFB00018 */   sw    $s0, 0x18($sp)
/* AD46A4 8005D504 90A20015 */  lbu   $v0, 0x15($a1)
/* AD46A8 8005D508 24010001 */  li    $at, 1
/* AD46AC 8005D50C 5040000B */  beql  $v0, $zero, .L8005D53C
/* AD46B0 8005D510 8E4E0018 */   lw    $t6, 0x18($s2)
/* AD46B4 8005D514 1041001A */  beq   $v0, $at, .L8005D580
/* AD46B8 8005D518 02802025 */   move  $a0, $s4
/* AD46BC 8005D51C 24010002 */  li    $at, 2
/* AD46C0 8005D520 1041001B */  beq   $v0, $at, .L8005D590
/* AD46C4 8005D524 24010003 */   li    $at, 3
/* AD46C8 8005D528 1041002D */  beq   $v0, $at, .L8005D5E0
/* AD46CC 8005D52C 26500058 */   addiu $s0, $s2, 0x58
/* AD46D0 8005D530 10000037 */  b     .L8005D610
/* AD46D4 8005D534 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD46D8 8005D538 8E4E0018 */  lw    $t6, 0x18($s2)
.L8005D53C:
/* AD46DC 8005D53C 02409825 */  move  $s3, $s2
/* AD46E0 8005D540 00008025 */  move  $s0, $zero
/* AD46E4 8005D544 19C00031 */  blez  $t6, .L8005D60C
/* AD46E8 8005D548 00008825 */   move  $s1, $zero
/* AD46EC 8005D54C 8E4F001C */  lw    $t7, 0x1c($s2)
.L8005D550:
/* AD46F0 8005D550 02802025 */  move  $a0, $s4
/* AD46F4 8005D554 01F12821 */  addu  $a1, $t7, $s1
/* AD46F8 8005D558 0C034174 */  jal   func_800D05D0
/* AD46FC 8005D55C 24A50030 */   addiu $a1, $a1, 0x30
/* AD4700 8005D560 8E780018 */  lw    $t8, 0x18($s3)
/* AD4704 8005D564 26100001 */  addiu $s0, $s0, 1
/* AD4708 8005D568 26310040 */  addiu $s1, $s1, 0x40
/* AD470C 8005D56C 0218082A */  slt   $at, $s0, $t8
/* AD4710 8005D570 5420FFF7 */  bnezl $at, .L8005D550
/* AD4714 8005D574 8E4F001C */   lw    $t7, 0x1c($s2)
/* AD4718 8005D578 10000025 */  b     .L8005D610
/* AD471C 8005D57C 8FBF002C */   lw    $ra, 0x2c($sp)
.L8005D580:
/* AD4720 8005D580 0C034177 */  jal   func_800D05DC
/* AD4724 8005D584 26450040 */   addiu $a1, $s2, 0x40
/* AD4728 8005D588 10000021 */  b     .L8005D610
/* AD472C 8005D58C 8FBF002C */   lw    $ra, 0x2c($sp)
.L8005D590:
/* AD4730 8005D590 8E590018 */  lw    $t9, 0x18($s2)
/* AD4734 8005D594 02409825 */  move  $s3, $s2
/* AD4738 8005D598 00008025 */  move  $s0, $zero
/* AD473C 8005D59C 1B20001B */  blez  $t9, .L8005D60C
/* AD4740 8005D5A0 00008825 */   move  $s1, $zero
/* AD4744 8005D5A4 8E48001C */  lw    $t0, 0x1c($s2)
.L8005D5A8:
/* AD4748 8005D5A8 8E840000 */  lw    $a0, ($s4)
/* AD474C 8005D5AC 01111021 */  addu  $v0, $t0, $s1
/* AD4750 8005D5B0 24450028 */  addiu $a1, $v0, 0x28
/* AD4754 8005D5B4 24460034 */  addiu $a2, $v0, 0x34
/* AD4758 8005D5B8 0C016CA0 */  jal   func_8005B280
/* AD475C 8005D5BC 24470040 */   addiu $a3, $v0, 0x40
/* AD4760 8005D5C0 8E690018 */  lw    $t1, 0x18($s3)
/* AD4764 8005D5C4 26100001 */  addiu $s0, $s0, 1
/* AD4768 8005D5C8 2631005C */  addiu $s1, $s1, 0x5c
/* AD476C 8005D5CC 0209082A */  slt   $at, $s0, $t1
/* AD4770 8005D5D0 5420FFF5 */  bnezl $at, .L8005D5A8
/* AD4774 8005D5D4 8E48001C */   lw    $t0, 0x1c($s2)
/* AD4778 8005D5D8 1000000D */  b     .L8005D610
/* AD477C 8005D5DC 8FBF002C */   lw    $ra, 0x2c($sp)
.L8005D5E0:
/* AD4780 8005D5E0 2651004C */  addiu $s1, $s2, 0x4c
/* AD4784 8005D5E4 02203825 */  move  $a3, $s1
/* AD4788 8005D5E8 8E840000 */  lw    $a0, ($s4)
/* AD478C 8005D5EC 02002825 */  move  $a1, $s0
/* AD4790 8005D5F0 0C016CA0 */  jal   func_8005B280
/* AD4794 8005D5F4 26460064 */   addiu $a2, $s2, 0x64
/* AD4798 8005D5F8 8E840000 */  lw    $a0, ($s4)
/* AD479C 8005D5FC 02202825 */  move  $a1, $s1
/* AD47A0 8005D600 26460040 */  addiu $a2, $s2, 0x40
/* AD47A4 8005D604 0C016CA0 */  jal   func_8005B280
/* AD47A8 8005D608 02003825 */   move  $a3, $s0
.L8005D60C:
/* AD47AC 8005D60C 8FBF002C */  lw    $ra, 0x2c($sp)
.L8005D610:
/* AD47B0 8005D610 8FB00018 */  lw    $s0, 0x18($sp)
/* AD47B4 8005D614 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD47B8 8005D618 8FB20020 */  lw    $s2, 0x20($sp)
/* AD47BC 8005D61C 8FB30024 */  lw    $s3, 0x24($sp)
/* AD47C0 8005D620 8FB40028 */  lw    $s4, 0x28($sp)
/* AD47C4 8005D624 03E00008 */  jr    $ra
/* AD47C8 8005D628 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_8005D62C
/* AD47CC 8005D62C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD47D0 8005D630 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* AD47D4 8005D634 8C63FA90 */  lw    $v1, %lo(D_8015FA90)($v1)
/* AD47D8 8005D638 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD47DC 8005D63C AFB30020 */  sw    $s3, 0x20($sp)
/* AD47E0 8005D640 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD47E4 8005D644 AFB10018 */  sw    $s1, 0x18($sp)
/* AD47E8 8005D648 AFB00014 */  sw    $s0, 0x14($sp)
/* AD47EC 8005D64C 846E0E72 */  lh    $t6, 0xe72($v1)
/* AD47F0 8005D650 00A09025 */  move  $s2, $a1
/* AD47F4 8005D654 00809825 */  move  $s3, $a0
/* AD47F8 8005D658 51C0004A */  beql  $t6, $zero, .L8005D784
/* AD47FC 8005D65C 8FBF0024 */   lw    $ra, 0x24($sp)
/* AD4800 8005D660 846F0E7E */  lh    $t7, 0xe7e($v1)
/* AD4804 8005D664 51E00011 */  beql  $t7, $zero, .L8005D6AC
/* AD4808 8005D668 84680E80 */   lh    $t0, 0xe80($v1)
/* AD480C 8005D66C 84B80000 */  lh    $t8, ($a1)
/* AD4810 8005D670 00008825 */  move  $s1, $zero
/* AD4814 8005D674 00A08025 */  move  $s0, $a1
/* AD4818 8005D678 1B00000B */  blez  $t8, .L8005D6A8
/* AD481C 8005D67C 02602025 */   move  $a0, $s3
.L8005D680:
/* AD4820 8005D680 0C017537 */  jal   func_8005D4DC
/* AD4824 8005D684 8E050004 */   lw    $a1, 4($s0)
/* AD4828 8005D688 86590000 */  lh    $t9, ($s2)
/* AD482C 8005D68C 26310001 */  addiu $s1, $s1, 1
/* AD4830 8005D690 26100004 */  addiu $s0, $s0, 4
/* AD4834 8005D694 0239082A */  slt   $at, $s1, $t9
/* AD4838 8005D698 5420FFF9 */  bnezl $at, .L8005D680
/* AD483C 8005D69C 02602025 */   move  $a0, $s3
/* AD4840 8005D6A0 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* AD4844 8005D6A4 8C63FA90 */  lw    $v1, %lo(D_8015FA90)($v1)
.L8005D6A8:
/* AD4848 8005D6A8 84680E80 */  lh    $t0, 0xe80($v1)
.L8005D6AC:
/* AD484C 8005D6AC 51000011 */  beql  $t0, $zero, .L8005D6F4
/* AD4850 8005D6B0 846B0E82 */   lh    $t3, 0xe82($v1)
/* AD4854 8005D6B4 8E4900CC */  lw    $t1, 0xcc($s2)
/* AD4858 8005D6B8 00008825 */  move  $s1, $zero
/* AD485C 8005D6BC 02408025 */  move  $s0, $s2
/* AD4860 8005D6C0 1920000B */  blez  $t1, .L8005D6F0
/* AD4864 8005D6C4 02602025 */   move  $a0, $s3
.L8005D6C8:
/* AD4868 8005D6C8 0C017537 */  jal   func_8005D4DC
/* AD486C 8005D6CC 8E0500D0 */   lw    $a1, 0xd0($s0)
/* AD4870 8005D6D0 8E4A00CC */  lw    $t2, 0xcc($s2)
/* AD4874 8005D6D4 26310001 */  addiu $s1, $s1, 1
/* AD4878 8005D6D8 26100004 */  addiu $s0, $s0, 4
/* AD487C 8005D6DC 022A082A */  slt   $at, $s1, $t2
/* AD4880 8005D6E0 5420FFF9 */  bnezl $at, .L8005D6C8
/* AD4884 8005D6E4 02602025 */   move  $a0, $s3
/* AD4888 8005D6E8 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* AD488C 8005D6EC 8C63FA90 */  lw    $v1, %lo(D_8015FA90)($v1)
.L8005D6F0:
/* AD4890 8005D6F0 846B0E82 */  lh    $t3, 0xe82($v1)
.L8005D6F4:
/* AD4894 8005D6F4 51600015 */  beql  $t3, $zero, .L8005D74C
/* AD4898 8005D6F8 846E0E84 */   lh    $t6, 0xe84($v1)
/* AD489C 8005D6FC 8E4201C0 */  lw    $v0, 0x1c0($s2)
/* AD48A0 8005D700 00008825 */  move  $s1, $zero
/* AD48A4 8005D704 02408025 */  move  $s0, $s2
/* AD48A8 8005D708 58400010 */  blezl $v0, .L8005D74C
/* AD48AC 8005D70C 846E0E84 */   lh    $t6, 0xe84($v1)
.L8005D710:
/* AD48B0 8005D710 8E0501C4 */  lw    $a1, 0x1c4($s0)
/* AD48B4 8005D714 90AC0012 */  lbu   $t4, 0x12($a1)
/* AD48B8 8005D718 318D0001 */  andi  $t5, $t4, 1
/* AD48BC 8005D71C 51A00005 */  beql  $t5, $zero, .L8005D734
/* AD48C0 8005D720 26310001 */   addiu $s1, $s1, 1
/* AD48C4 8005D724 0C017537 */  jal   func_8005D4DC
/* AD48C8 8005D728 02602025 */   move  $a0, $s3
/* AD48CC 8005D72C 8E4201C0 */  lw    $v0, 0x1c0($s2)
/* AD48D0 8005D730 26310001 */  addiu $s1, $s1, 1
.L8005D734:
/* AD48D4 8005D734 0222082A */  slt   $at, $s1, $v0
/* AD48D8 8005D738 1420FFF5 */  bnez  $at, .L8005D710
/* AD48DC 8005D73C 26100004 */   addiu $s0, $s0, 4
/* AD48E0 8005D740 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* AD48E4 8005D744 8C63FA90 */  lw    $v1, %lo(D_8015FA90)($v1)
/* AD48E8 8005D748 846E0E84 */  lh    $t6, 0xe84($v1)
.L8005D74C:
/* AD48EC 8005D74C 02602025 */  move  $a0, $s3
/* AD48F0 8005D750 51C00006 */  beql  $t6, $zero, .L8005D76C
/* AD48F4 8005D754 846F0E86 */   lh    $t7, 0xe86($v1)
/* AD48F8 8005D758 0C010B0F */  jal   func_80042C3C
/* AD48FC 8005D75C 266507C0 */   addiu $a1, $s3, 0x7c0
/* AD4900 8005D760 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* AD4904 8005D764 8C63FA90 */  lw    $v1, %lo(D_8015FA90)($v1)
/* AD4908 8005D768 846F0E86 */  lh    $t7, 0xe86($v1)
.L8005D76C:
/* AD490C 8005D76C 02602025 */  move  $a0, $s3
/* AD4910 8005D770 51E00004 */  beql  $t7, $zero, .L8005D784
/* AD4914 8005D774 8FBF0024 */   lw    $ra, 0x24($sp)
/* AD4918 8005D778 0C010BF1 */  jal   func_80042FC4
/* AD491C 8005D77C 266507C0 */   addiu $a1, $s3, 0x7c0
/* AD4920 8005D780 8FBF0024 */  lw    $ra, 0x24($sp)
.L8005D784:
/* AD4924 8005D784 8FB00014 */  lw    $s0, 0x14($sp)
/* AD4928 8005D788 8FB10018 */  lw    $s1, 0x18($sp)
/* AD492C 8005D78C 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD4930 8005D790 8FB30020 */  lw    $s3, 0x20($sp)
/* AD4934 8005D794 03E00008 */  jr    $ra
/* AD4938 8005D798 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_8005D79C
/* AD493C 8005D79C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4940 8005D7A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4944 8005D7A4 AFB00018 */  sw    $s0, 0x18($sp)
/* AD4948 8005D7A8 00C08025 */  move  $s0, $a2
/* AD494C 8005D7AC AFA40020 */  sw    $a0, 0x20($sp)
/* AD4950 8005D7B0 0C03034A */  jal   func_800C0D28
/* AD4954 8005D7B4 AFA50024 */   sw    $a1, 0x24($sp)
/* AD4958 8005D7B8 24010001 */  li    $at, 1
/* AD495C 8005D7BC 14410003 */  bne   $v0, $at, .L8005D7CC
/* AD4960 8005D7C0 8FA70024 */   lw    $a3, 0x24($sp)
/* AD4964 8005D7C4 10000034 */  b     .L8005D898
/* AD4968 8005D7C8 2402FFFF */   li    $v0, -1
.L8005D7CC:
/* AD496C 8005D7CC 92020015 */  lbu   $v0, 0x15($s0)
/* AD4970 8005D7D0 3C048014 */  lui   $a0, %hi(D_8013A840) # $a0, 0x8014
/* AD4974 8005D7D4 2484A840 */  addiu $a0, %lo(D_8013A840) # addiu $a0, $a0, -0x57c0
/* AD4978 8005D7D8 28410004 */  slti  $at, $v0, 4
/* AD497C 8005D7DC 14200007 */  bnez  $at, .L8005D7FC
/* AD4980 8005D7E0 3C058014 */   lui   $a1, %hi(D_8013A868) # $a1, 0x8014
/* AD4984 8005D7E4 24A5A868 */  addiu $a1, %lo(D_8013A868) # addiu $a1, $a1, -0x5798
/* AD4988 8005D7E8 24060BB5 */  li    $a2, 2997
/* AD498C 8005D7EC 0C0007FC */  jal   AssertMessage
/* AD4990 8005D7F0 AFA70024 */   sw    $a3, 0x24($sp)
/* AD4994 8005D7F4 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4998 8005D7F8 92020015 */  lbu   $v0, 0x15($s0)
.L8005D7FC:
/* AD499C 8005D7FC 00027080 */  sll   $t6, $v0, 2
/* AD49A0 8005D800 3C198012 */  lui   $t9, 0x8012
/* AD49A4 8005D804 032EC821 */  addu  $t9, $t9, $t6
/* AD49A8 8005D808 8F39DEF8 */  lw    $t9, -0x2108($t9)
/* AD49AC 8005D80C 8FA40020 */  lw    $a0, 0x20($sp)
/* AD49B0 8005D810 02002825 */  move  $a1, $s0
/* AD49B4 8005D814 0320F809 */  jalr  $t9
/* AD49B8 8005D818 AFA70024 */  sw    $a3, 0x24($sp)
/* AD49BC 8005D81C 8E030000 */  lw    $v1, ($s0)
/* AD49C0 8005D820 8FA70024 */  lw    $a3, 0x24($sp)
/* AD49C4 8005D824 50600007 */  beql  $v1, $zero, .L8005D844
/* AD49C8 8005D828 84E30000 */   lh    $v1, ($a3)
/* AD49CC 8005D82C 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD49D0 8005D830 55E00004 */  bnezl $t7, .L8005D844
/* AD49D4 8005D834 84E30000 */   lh    $v1, ($a3)
/* AD49D8 8005D838 10000017 */  b     .L8005D898
/* AD49DC 8005D83C 2402FFFF */   li    $v0, -1
/* AD49E0 8005D840 84E30000 */  lh    $v1, ($a3)
.L8005D844:
/* AD49E4 8005D844 3C048014 */  lui   $a0, %hi(D_8013A880) # $a0, 0x8014
/* AD49E8 8005D848 28610032 */  slti  $at, $v1, 0x32
/* AD49EC 8005D84C 54200006 */  bnezl $at, .L8005D868
/* AD49F0 8005D850 94F80002 */   lhu   $t8, 2($a3)
/* AD49F4 8005D854 0C00084C */  jal   DebugMessage
/* AD49F8 8005D858 2484A880 */   addiu $a0, %lo(D_8013A880) # addiu $a0, $a0, -0x5780
/* AD49FC 8005D85C 1000000E */  b     .L8005D898
/* AD4A00 8005D860 2402FFFF */   li    $v0, -1
/* AD4A04 8005D864 94F80002 */  lhu   $t8, 2($a3)
.L8005D868:
/* AD4A08 8005D868 00034880 */  sll   $t1, $v1, 2
/* AD4A0C 8005D86C 00E95021 */  addu  $t2, $a3, $t1
/* AD4A10 8005D870 33080001 */  andi  $t0, $t8, 1
/* AD4A14 8005D874 51000004 */  beql  $t0, $zero, .L8005D888
/* AD4A18 8005D878 AD500004 */   sw    $s0, 4($t2)
/* AD4A1C 8005D87C 10000006 */  b     .L8005D898
/* AD4A20 8005D880 2402FFFF */   li    $v0, -1
/* AD4A24 8005D884 AD500004 */  sw    $s0, 4($t2)
.L8005D888:
/* AD4A28 8005D888 84EB0000 */  lh    $t3, ($a3)
/* AD4A2C 8005D88C 00601025 */  move  $v0, $v1
/* AD4A30 8005D890 256C0001 */  addiu $t4, $t3, 1
/* AD4A34 8005D894 A4EC0000 */  sh    $t4, ($a3)
.L8005D898:
/* AD4A38 8005D898 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4A3C 8005D89C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD4A40 8005D8A0 27BD0020 */  addiu $sp, $sp, 0x20
/* AD4A44 8005D8A4 03E00008 */  jr    $ra
/* AD4A48 8005D8A8 00000000 */   nop   

/* AD4A4C 8005D8AC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4A50 8005D8B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4A54 8005D8B4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD4A58 8005D8B8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD4A5C 8005D8BC AFA40020 */  sw    $a0, 0x20($sp)
/* AD4A60 8005D8C0 90CE0015 */  lbu   $t6, 0x15($a2)
/* AD4A64 8005D8C4 00A08025 */  move  $s0, $a1
/* AD4A68 8005D8C8 00C08825 */  move  $s1, $a2
/* AD4A6C 8005D8CC 29C10004 */  slti  $at, $t6, 4
/* AD4A70 8005D8D0 14200008 */  bnez  $at, .L8005D8F4
/* AD4A74 8005D8D4 3C048014 */   lui   $a0, %hi(D_8013A8BC) # $a0, 0x8014
/* AD4A78 8005D8D8 3C058014 */  lui   $a1, %hi(D_8013A8E4) # $a1, 0x8014
/* AD4A7C 8005D8DC 24A5A8E4 */  addiu $a1, %lo(D_8013A8E4) # addiu $a1, $a1, -0x571c
/* AD4A80 8005D8E0 2484A8BC */  addiu $a0, %lo(D_8013A8BC) # addiu $a0, $a0, -0x5744
/* AD4A84 8005D8E4 24060BDD */  li    $a2, 3037
/* AD4A88 8005D8E8 0C0007FC */  jal   AssertMessage
/* AD4A8C 8005D8EC AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4A90 8005D8F0 8FA7002C */  lw    $a3, 0x2c($sp)
.L8005D8F4:
/* AD4A94 8005D8F4 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4A98 8005D8F8 0C03034A */  jal   func_800C0D28
/* AD4A9C 8005D8FC AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4AA0 8005D900 24010001 */  li    $at, 1
/* AD4AA4 8005D904 14410003 */  bne   $v0, $at, .L8005D914
/* AD4AA8 8005D908 8FA7002C */   lw    $a3, 0x2c($sp)
/* AD4AAC 8005D90C 10000034 */  b     .L8005D9E0
/* AD4AB0 8005D910 2402FFFF */   li    $v0, -1
.L8005D914:
/* AD4AB4 8005D914 AFA7002C */  sw    $a3, 0x2c($sp)
/* AD4AB8 8005D918 922F0015 */  lbu   $t7, 0x15($s1)
/* AD4ABC 8005D91C 3C198012 */  lui   $t9, 0x8012
/* AD4AC0 8005D920 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4AC4 8005D924 000FC080 */  sll   $t8, $t7, 2
/* AD4AC8 8005D928 0338C821 */  addu  $t9, $t9, $t8
/* AD4ACC 8005D92C 8F39DEF8 */  lw    $t9, -0x2108($t9)
/* AD4AD0 8005D930 02202825 */  move  $a1, $s1
/* AD4AD4 8005D934 0320F809 */  jalr  $t9
/* AD4AD8 8005D938 00000000 */  nop   
/* AD4ADC 8005D93C 8E230000 */  lw    $v1, ($s1)
/* AD4AE0 8005D940 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4AE4 8005D944 50600007 */  beql  $v1, $zero, .L8005D964
/* AD4AE8 8005D948 96090002 */   lhu   $t1, 2($s0)
/* AD4AEC 8005D94C 8C680130 */  lw    $t0, 0x130($v1)
/* AD4AF0 8005D950 55000004 */  bnezl $t0, .L8005D964
/* AD4AF4 8005D954 96090002 */   lhu   $t1, 2($s0)
/* AD4AF8 8005D958 10000021 */  b     .L8005D9E0
/* AD4AFC 8005D95C 2402FFFF */   li    $v0, -1
/* AD4B00 8005D960 96090002 */  lhu   $t1, 2($s0)
.L8005D964:
/* AD4B04 8005D964 312A0001 */  andi  $t2, $t1, 1
/* AD4B08 8005D968 5140000E */  beql  $t2, $zero, .L8005D9A4
/* AD4B0C 8005D96C 86020000 */   lh    $v0, ($s0)
/* AD4B10 8005D970 860B0000 */  lh    $t3, ($s0)
/* AD4B14 8005D974 00076080 */  sll   $t4, $a3, 2
/* AD4B18 8005D978 3C048014 */  lui   $a0, %hi(D_8013A8FC) # $a0, 0x8014
/* AD4B1C 8005D97C 00EB082A */  slt   $at, $a3, $t3
/* AD4B20 8005D980 14200005 */  bnez  $at, .L8005D998
/* AD4B24 8005D984 020C6821 */   addu  $t5, $s0, $t4
/* AD4B28 8005D988 0C00084C */  jal   DebugMessage
/* AD4B2C 8005D98C 2484A8FC */   addiu $a0, %lo(D_8013A8FC) # addiu $a0, $a0, -0x5704
/* AD4B30 8005D990 10000013 */  b     .L8005D9E0
/* AD4B34 8005D994 2402FFFF */   li    $v0, -1
.L8005D998:
/* AD4B38 8005D998 10000010 */  b     .L8005D9DC
/* AD4B3C 8005D99C ADB10004 */   sw    $s1, 4($t5)
/* AD4B40 8005D9A0 86020000 */  lh    $v0, ($s0)
.L8005D9A4:
/* AD4B44 8005D9A4 3C048014 */  lui   $a0, %hi(D_8013A94C) # $a0, 0x8014
/* AD4B48 8005D9A8 28410032 */  slti  $at, $v0, 0x32
/* AD4B4C 8005D9AC 14200005 */  bnez  $at, .L8005D9C4
/* AD4B50 8005D9B0 00027080 */   sll   $t6, $v0, 2
/* AD4B54 8005D9B4 0C00084C */  jal   DebugMessage
/* AD4B58 8005D9B8 2484A94C */   addiu $a0, %lo(D_8013A94C) # addiu $a0, $a0, -0x56b4
/* AD4B5C 8005D9BC 10000008 */  b     .L8005D9E0
/* AD4B60 8005D9C0 2402FFFF */   li    $v0, -1
.L8005D9C4:
/* AD4B64 8005D9C4 020E7821 */  addu  $t7, $s0, $t6
/* AD4B68 8005D9C8 ADF10004 */  sw    $s1, 4($t7)
/* AD4B6C 8005D9CC 86180000 */  lh    $t8, ($s0)
/* AD4B70 8005D9D0 00403825 */  move  $a3, $v0
/* AD4B74 8005D9D4 27190001 */  addiu $t9, $t8, 1
/* AD4B78 8005D9D8 A6190000 */  sh    $t9, ($s0)
.L8005D9DC:
/* AD4B7C 8005D9DC 00E01025 */  move  $v0, $a3
.L8005D9E0:
/* AD4B80 8005D9E0 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4B84 8005D9E4 8FB00014 */  lw    $s0, 0x14($sp)
/* AD4B88 8005D9E8 8FB10018 */  lw    $s1, 0x18($sp)
/* AD4B8C 8005D9EC 03E00008 */  jr    $ra
/* AD4B90 8005D9F0 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_8005D9F4
/* AD4B94 8005D9F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4B98 8005D9F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4B9C 8005D9FC AFB00018 */  sw    $s0, 0x18($sp)
/* AD4BA0 8005DA00 00C08025 */  move  $s0, $a2
/* AD4BA4 8005DA04 AFA40020 */  sw    $a0, 0x20($sp)
/* AD4BA8 8005DA08 0C03034A */  jal   func_800C0D28
/* AD4BAC 8005DA0C AFA50024 */   sw    $a1, 0x24($sp)
/* AD4BB0 8005DA10 24010001 */  li    $at, 1
/* AD4BB4 8005DA14 14410003 */  bne   $v0, $at, .L8005DA24
/* AD4BB8 8005DA18 8FA70024 */   lw    $a3, 0x24($sp)
/* AD4BBC 8005DA1C 10000034 */  b     .L8005DAF0
/* AD4BC0 8005DA20 2402FFFF */   li    $v0, -1
.L8005DA24:
/* AD4BC4 8005DA24 92020015 */  lbu   $v0, 0x15($s0)
/* AD4BC8 8005DA28 3C048014 */  lui   $a0, %hi(D_8013A988) # $a0, 0x8014
/* AD4BCC 8005DA2C 2484A988 */  addiu $a0, %lo(D_8013A988) # addiu $a0, $a0, -0x5678
/* AD4BD0 8005DA30 28410004 */  slti  $at, $v0, 4
/* AD4BD4 8005DA34 14200007 */  bnez  $at, .L8005DA54
/* AD4BD8 8005DA38 3C058014 */   lui   $a1, %hi(D_8013A9B0) # $a1, 0x8014
/* AD4BDC 8005DA3C 24A5A9B0 */  addiu $a1, %lo(D_8013A9B0) # addiu $a1, $a1, -0x5650
/* AD4BE0 8005DA40 24060C2A */  li    $a2, 3114
/* AD4BE4 8005DA44 0C0007FC */  jal   AssertMessage
/* AD4BE8 8005DA48 AFA70024 */   sw    $a3, 0x24($sp)
/* AD4BEC 8005DA4C 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4BF0 8005DA50 92020015 */  lbu   $v0, 0x15($s0)
.L8005DA54:
/* AD4BF4 8005DA54 00027080 */  sll   $t6, $v0, 2
/* AD4BF8 8005DA58 3C198012 */  lui   $t9, 0x8012
/* AD4BFC 8005DA5C 032EC821 */  addu  $t9, $t9, $t6
/* AD4C00 8005DA60 8F39DF08 */  lw    $t9, -0x20f8($t9)
/* AD4C04 8005DA64 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4C08 8005DA68 02002825 */  move  $a1, $s0
/* AD4C0C 8005DA6C 0320F809 */  jalr  $t9
/* AD4C10 8005DA70 AFA70024 */  sw    $a3, 0x24($sp)
/* AD4C14 8005DA74 8E030000 */  lw    $v1, ($s0)
/* AD4C18 8005DA78 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4C1C 8005DA7C 50600007 */  beql  $v1, $zero, .L8005DA9C
/* AD4C20 8005DA80 8CE300CC */   lw    $v1, 0xcc($a3)
/* AD4C24 8005DA84 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD4C28 8005DA88 55E00004 */  bnezl $t7, .L8005DA9C
/* AD4C2C 8005DA8C 8CE300CC */   lw    $v1, 0xcc($a3)
/* AD4C30 8005DA90 10000017 */  b     .L8005DAF0
/* AD4C34 8005DA94 2402FFFF */   li    $v0, -1
/* AD4C38 8005DA98 8CE300CC */  lw    $v1, 0xcc($a3)
.L8005DA9C:
/* AD4C3C 8005DA9C 3C048014 */  lui   $a0, %hi(D_8013A9C8) # $a0, 0x8014
/* AD4C40 8005DAA0 2861003C */  slti  $at, $v1, 0x3c
/* AD4C44 8005DAA4 54200006 */  bnezl $at, .L8005DAC0
/* AD4C48 8005DAA8 94F80002 */   lhu   $t8, 2($a3)
/* AD4C4C 8005DAAC 0C00084C */  jal   DebugMessage
/* AD4C50 8005DAB0 2484A9C8 */   addiu $a0, %lo(D_8013A9C8) # addiu $a0, $a0, -0x5638
/* AD4C54 8005DAB4 1000000E */  b     .L8005DAF0
/* AD4C58 8005DAB8 2402FFFF */   li    $v0, -1
/* AD4C5C 8005DABC 94F80002 */  lhu   $t8, 2($a3)
.L8005DAC0:
/* AD4C60 8005DAC0 00034880 */  sll   $t1, $v1, 2
/* AD4C64 8005DAC4 00E95021 */  addu  $t2, $a3, $t1
/* AD4C68 8005DAC8 33080001 */  andi  $t0, $t8, 1
/* AD4C6C 8005DACC 51000004 */  beql  $t0, $zero, .L8005DAE0
/* AD4C70 8005DAD0 AD5000D0 */   sw    $s0, 0xd0($t2)
/* AD4C74 8005DAD4 10000006 */  b     .L8005DAF0
/* AD4C78 8005DAD8 2402FFFF */   li    $v0, -1
/* AD4C7C 8005DADC AD5000D0 */  sw    $s0, 0xd0($t2)
.L8005DAE0:
/* AD4C80 8005DAE0 8CEB00CC */  lw    $t3, 0xcc($a3)
/* AD4C84 8005DAE4 00601025 */  move  $v0, $v1
/* AD4C88 8005DAE8 256C0001 */  addiu $t4, $t3, 1
/* AD4C8C 8005DAEC ACEC00CC */  sw    $t4, 0xcc($a3)
.L8005DAF0:
/* AD4C90 8005DAF0 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4C94 8005DAF4 8FB00018 */  lw    $s0, 0x18($sp)
/* AD4C98 8005DAF8 27BD0020 */  addiu $sp, $sp, 0x20
/* AD4C9C 8005DAFC 03E00008 */  jr    $ra
/* AD4CA0 8005DB00 00000000 */   nop   

/* AD4CA4 8005DB04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4CA8 8005DB08 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4CAC 8005DB0C AFB10018 */  sw    $s1, 0x18($sp)
/* AD4CB0 8005DB10 AFB00014 */  sw    $s0, 0x14($sp)
/* AD4CB4 8005DB14 AFA40020 */  sw    $a0, 0x20($sp)
/* AD4CB8 8005DB18 90CE0015 */  lbu   $t6, 0x15($a2)
/* AD4CBC 8005DB1C 00A08025 */  move  $s0, $a1
/* AD4CC0 8005DB20 00C08825 */  move  $s1, $a2
/* AD4CC4 8005DB24 29C10004 */  slti  $at, $t6, 4
/* AD4CC8 8005DB28 14200008 */  bnez  $at, .L8005DB4C
/* AD4CCC 8005DB2C 3C048014 */   lui   $a0, %hi(D_8013AA04) # $a0, 0x8014
/* AD4CD0 8005DB30 3C058014 */  lui   $a1, %hi(D_8013AA2C) # $a1, 0x8014
/* AD4CD4 8005DB34 24A5AA2C */  addiu $a1, %lo(D_8013AA2C) # addiu $a1, $a1, -0x55d4
/* AD4CD8 8005DB38 2484AA04 */  addiu $a0, %lo(D_8013AA04) # addiu $a0, $a0, -0x55fc
/* AD4CDC 8005DB3C 24060C51 */  li    $a2, 3153
/* AD4CE0 8005DB40 0C0007FC */  jal   AssertMessage
/* AD4CE4 8005DB44 AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4CE8 8005DB48 8FA7002C */  lw    $a3, 0x2c($sp)
.L8005DB4C:
/* AD4CEC 8005DB4C 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4CF0 8005DB50 0C03034A */  jal   func_800C0D28
/* AD4CF4 8005DB54 AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4CF8 8005DB58 24010001 */  li    $at, 1
/* AD4CFC 8005DB5C 14410003 */  bne   $v0, $at, .L8005DB6C
/* AD4D00 8005DB60 8FA7002C */   lw    $a3, 0x2c($sp)
/* AD4D04 8005DB64 10000034 */  b     .L8005DC38
/* AD4D08 8005DB68 2402FFFF */   li    $v0, -1
.L8005DB6C:
/* AD4D0C 8005DB6C AFA7002C */  sw    $a3, 0x2c($sp)
/* AD4D10 8005DB70 922F0015 */  lbu   $t7, 0x15($s1)
/* AD4D14 8005DB74 3C198012 */  lui   $t9, 0x8012
/* AD4D18 8005DB78 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4D1C 8005DB7C 000FC080 */  sll   $t8, $t7, 2
/* AD4D20 8005DB80 0338C821 */  addu  $t9, $t9, $t8
/* AD4D24 8005DB84 8F39DF08 */  lw    $t9, -0x20f8($t9)
/* AD4D28 8005DB88 02202825 */  move  $a1, $s1
/* AD4D2C 8005DB8C 0320F809 */  jalr  $t9
/* AD4D30 8005DB90 00000000 */  nop   
/* AD4D34 8005DB94 8E230000 */  lw    $v1, ($s1)
/* AD4D38 8005DB98 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4D3C 8005DB9C 50600007 */  beql  $v1, $zero, .L8005DBBC
/* AD4D40 8005DBA0 96090002 */   lhu   $t1, 2($s0)
/* AD4D44 8005DBA4 8C680130 */  lw    $t0, 0x130($v1)
/* AD4D48 8005DBA8 55000004 */  bnezl $t0, .L8005DBBC
/* AD4D4C 8005DBAC 96090002 */   lhu   $t1, 2($s0)
/* AD4D50 8005DBB0 10000021 */  b     .L8005DC38
/* AD4D54 8005DBB4 2402FFFF */   li    $v0, -1
/* AD4D58 8005DBB8 96090002 */  lhu   $t1, 2($s0)
.L8005DBBC:
/* AD4D5C 8005DBBC 312A0001 */  andi  $t2, $t1, 1
/* AD4D60 8005DBC0 5140000E */  beql  $t2, $zero, .L8005DBFC
/* AD4D64 8005DBC4 8E0200CC */   lw    $v0, 0xcc($s0)
/* AD4D68 8005DBC8 8E0B00CC */  lw    $t3, 0xcc($s0)
/* AD4D6C 8005DBCC 00076080 */  sll   $t4, $a3, 2
/* AD4D70 8005DBD0 3C048014 */  lui   $a0, %hi(D_8013AA44) # $a0, 0x8014
/* AD4D74 8005DBD4 00EB082A */  slt   $at, $a3, $t3
/* AD4D78 8005DBD8 14200005 */  bnez  $at, .L8005DBF0
/* AD4D7C 8005DBDC 020C6821 */   addu  $t5, $s0, $t4
/* AD4D80 8005DBE0 0C00084C */  jal   DebugMessage
/* AD4D84 8005DBE4 2484AA44 */   addiu $a0, %lo(D_8013AA44) # addiu $a0, $a0, -0x55bc
/* AD4D88 8005DBE8 10000013 */  b     .L8005DC38
/* AD4D8C 8005DBEC 2402FFFF */   li    $v0, -1
.L8005DBF0:
/* AD4D90 8005DBF0 10000010 */  b     .L8005DC34
/* AD4D94 8005DBF4 ADB100D0 */   sw    $s1, 0xd0($t5)
/* AD4D98 8005DBF8 8E0200CC */  lw    $v0, 0xcc($s0)
.L8005DBFC:
/* AD4D9C 8005DBFC 3C048014 */  lui   $a0, %hi(D_8013AA94) # $a0, 0x8014
/* AD4DA0 8005DC00 2841003C */  slti  $at, $v0, 0x3c
/* AD4DA4 8005DC04 14200005 */  bnez  $at, .L8005DC1C
/* AD4DA8 8005DC08 00027080 */   sll   $t6, $v0, 2
/* AD4DAC 8005DC0C 0C00084C */  jal   DebugMessage
/* AD4DB0 8005DC10 2484AA94 */   addiu $a0, %lo(D_8013AA94) # addiu $a0, $a0, -0x556c
/* AD4DB4 8005DC14 10000008 */  b     .L8005DC38
/* AD4DB8 8005DC18 2402FFFF */   li    $v0, -1
.L8005DC1C:
/* AD4DBC 8005DC1C 020E7821 */  addu  $t7, $s0, $t6
/* AD4DC0 8005DC20 ADF100D0 */  sw    $s1, 0xd0($t7)
/* AD4DC4 8005DC24 8E1800CC */  lw    $t8, 0xcc($s0)
/* AD4DC8 8005DC28 00403825 */  move  $a3, $v0
/* AD4DCC 8005DC2C 27190001 */  addiu $t9, $t8, 1
/* AD4DD0 8005DC30 AE1900CC */  sw    $t9, 0xcc($s0)
.L8005DC34:
/* AD4DD4 8005DC34 00E01025 */  move  $v0, $a3
.L8005DC38:
/* AD4DD8 8005DC38 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4DDC 8005DC3C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD4DE0 8005DC40 8FB10018 */  lw    $s1, 0x18($sp)
/* AD4DE4 8005DC44 03E00008 */  jr    $ra
/* AD4DE8 8005DC48 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_8005DC4C
/* AD4DEC 8005DC4C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4DF0 8005DC50 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4DF4 8005DC54 AFB00018 */  sw    $s0, 0x18($sp)
/* AD4DF8 8005DC58 00C08025 */  move  $s0, $a2
/* AD4DFC 8005DC5C AFA40020 */  sw    $a0, 0x20($sp)
/* AD4E00 8005DC60 0C03034A */  jal   func_800C0D28
/* AD4E04 8005DC64 AFA50024 */   sw    $a1, 0x24($sp)
/* AD4E08 8005DC68 24010001 */  li    $at, 1
/* AD4E0C 8005DC6C 14410003 */  bne   $v0, $at, .L8005DC7C
/* AD4E10 8005DC70 8FA70024 */   lw    $a3, 0x24($sp)
/* AD4E14 8005DC74 10000034 */  b     .L8005DD48
/* AD4E18 8005DC78 2402FFFF */   li    $v0, -1
.L8005DC7C:
/* AD4E1C 8005DC7C 92020015 */  lbu   $v0, 0x15($s0)
/* AD4E20 8005DC80 3C048014 */  lui   $a0, %hi(D_8013AAD0) # $a0, 0x8014
/* AD4E24 8005DC84 2484AAD0 */  addiu $a0, %lo(D_8013AAD0) # addiu $a0, $a0, -0x5530
/* AD4E28 8005DC88 28410004 */  slti  $at, $v0, 4
/* AD4E2C 8005DC8C 14200007 */  bnez  $at, .L8005DCAC
/* AD4E30 8005DC90 3C058014 */   lui   $a1, %hi(D_8013AAF8) # $a1, 0x8014
/* AD4E34 8005DC94 24A5AAF8 */  addiu $a1, %lo(D_8013AAF8) # addiu $a1, $a1, -0x5508
/* AD4E38 8005DC98 24060C9D */  li    $a2, 3229
/* AD4E3C 8005DC9C 0C0007FC */  jal   AssertMessage
/* AD4E40 8005DCA0 AFA70024 */   sw    $a3, 0x24($sp)
/* AD4E44 8005DCA4 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4E48 8005DCA8 92020015 */  lbu   $v0, 0x15($s0)
.L8005DCAC:
/* AD4E4C 8005DCAC 00027080 */  sll   $t6, $v0, 2
/* AD4E50 8005DCB0 3C198012 */  lui   $t9, 0x8012
/* AD4E54 8005DCB4 032EC821 */  addu  $t9, $t9, $t6
/* AD4E58 8005DCB8 8F39DF18 */  lw    $t9, -0x20e8($t9)
/* AD4E5C 8005DCBC 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4E60 8005DCC0 02002825 */  move  $a1, $s0
/* AD4E64 8005DCC4 0320F809 */  jalr  $t9
/* AD4E68 8005DCC8 AFA70024 */  sw    $a3, 0x24($sp)
/* AD4E6C 8005DCCC 8E030000 */  lw    $v1, ($s0)
/* AD4E70 8005DCD0 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4E74 8005DCD4 50600007 */  beql  $v1, $zero, .L8005DCF4
/* AD4E78 8005DCD8 8CE301C0 */   lw    $v1, 0x1c0($a3)
/* AD4E7C 8005DCDC 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD4E80 8005DCE0 55E00004 */  bnezl $t7, .L8005DCF4
/* AD4E84 8005DCE4 8CE301C0 */   lw    $v1, 0x1c0($a3)
/* AD4E88 8005DCE8 10000017 */  b     .L8005DD48
/* AD4E8C 8005DCEC 2402FFFF */   li    $v0, -1
/* AD4E90 8005DCF0 8CE301C0 */  lw    $v1, 0x1c0($a3)
.L8005DCF4:
/* AD4E94 8005DCF4 3C048014 */  lui   $a0, %hi(D_8013AB10) # $a0, 0x8014
/* AD4E98 8005DCF8 28610032 */  slti  $at, $v1, 0x32
/* AD4E9C 8005DCFC 54200006 */  bnezl $at, .L8005DD18
/* AD4EA0 8005DD00 94F80002 */   lhu   $t8, 2($a3)
/* AD4EA4 8005DD04 0C00084C */  jal   DebugMessage
/* AD4EA8 8005DD08 2484AB10 */   addiu $a0, %lo(D_8013AB10) # addiu $a0, $a0, -0x54f0
/* AD4EAC 8005DD0C 1000000E */  b     .L8005DD48
/* AD4EB0 8005DD10 2402FFFF */   li    $v0, -1
/* AD4EB4 8005DD14 94F80002 */  lhu   $t8, 2($a3)
.L8005DD18:
/* AD4EB8 8005DD18 00034880 */  sll   $t1, $v1, 2
/* AD4EBC 8005DD1C 00E95021 */  addu  $t2, $a3, $t1
/* AD4EC0 8005DD20 33080001 */  andi  $t0, $t8, 1
/* AD4EC4 8005DD24 51000004 */  beql  $t0, $zero, .L8005DD38
/* AD4EC8 8005DD28 AD5001C4 */   sw    $s0, 0x1c4($t2)
/* AD4ECC 8005DD2C 10000006 */  b     .L8005DD48
/* AD4ED0 8005DD30 2402FFFF */   li    $v0, -1
/* AD4ED4 8005DD34 AD5001C4 */  sw    $s0, 0x1c4($t2)
.L8005DD38:
/* AD4ED8 8005DD38 8CEB01C0 */  lw    $t3, 0x1c0($a3)
/* AD4EDC 8005DD3C 00601025 */  move  $v0, $v1
/* AD4EE0 8005DD40 256C0001 */  addiu $t4, $t3, 1
/* AD4EE4 8005DD44 ACEC01C0 */  sw    $t4, 0x1c0($a3)
.L8005DD48:
/* AD4EE8 8005DD48 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4EEC 8005DD4C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD4EF0 8005DD50 27BD0020 */  addiu $sp, $sp, 0x20
/* AD4EF4 8005DD54 03E00008 */  jr    $ra
/* AD4EF8 8005DD58 00000000 */   nop   

/* AD4EFC 8005DD5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4F00 8005DD60 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4F04 8005DD64 AFB10018 */  sw    $s1, 0x18($sp)
/* AD4F08 8005DD68 AFB00014 */  sw    $s0, 0x14($sp)
/* AD4F0C 8005DD6C 00A08025 */  move  $s0, $a1
/* AD4F10 8005DD70 00C08825 */  move  $s1, $a2
/* AD4F14 8005DD74 AFA40020 */  sw    $a0, 0x20($sp)
/* AD4F18 8005DD78 0C03034A */  jal   func_800C0D28
/* AD4F1C 8005DD7C AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4F20 8005DD80 24010001 */  li    $at, 1
/* AD4F24 8005DD84 14410003 */  bne   $v0, $at, .L8005DD94
/* AD4F28 8005DD88 8FA7002C */   lw    $a3, 0x2c($sp)
/* AD4F2C 8005DD8C 1000003E */  b     .L8005DE88
/* AD4F30 8005DD90 2402FFFF */   li    $v0, -1
.L8005DD94:
/* AD4F34 8005DD94 92220015 */  lbu   $v0, 0x15($s1)
/* AD4F38 8005DD98 3C048014 */  lui   $a0, %hi(D_8013AB4C) # $a0, 0x8014
/* AD4F3C 8005DD9C 2484AB4C */  addiu $a0, %lo(D_8013AB4C) # addiu $a0, $a0, -0x54b4
/* AD4F40 8005DDA0 28410004 */  slti  $at, $v0, 4
/* AD4F44 8005DDA4 14200007 */  bnez  $at, .L8005DDC4
/* AD4F48 8005DDA8 3C058014 */   lui   $a1, %hi(D_8013AB74) # $a1, 0x8014
/* AD4F4C 8005DDAC 24A5AB74 */  addiu $a1, %lo(D_8013AB74) # addiu $a1, $a1, -0x548c
/* AD4F50 8005DDB0 24060CCA */  li    $a2, 3274
/* AD4F54 8005DDB4 0C0007FC */  jal   AssertMessage
/* AD4F58 8005DDB8 AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4F5C 8005DDBC 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4F60 8005DDC0 92220015 */  lbu   $v0, 0x15($s1)
.L8005DDC4:
/* AD4F64 8005DDC4 00027080 */  sll   $t6, $v0, 2
/* AD4F68 8005DDC8 3C198012 */  lui   $t9, 0x8012
/* AD4F6C 8005DDCC 032EC821 */  addu  $t9, $t9, $t6
/* AD4F70 8005DDD0 8F39DF18 */  lw    $t9, -0x20e8($t9)
/* AD4F74 8005DDD4 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4F78 8005DDD8 02202825 */  move  $a1, $s1
/* AD4F7C 8005DDDC 0320F809 */  jalr  $t9
/* AD4F80 8005DDE0 AFA7002C */  sw    $a3, 0x2c($sp)
/* AD4F84 8005DDE4 8E230000 */  lw    $v1, ($s1)
/* AD4F88 8005DDE8 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4F8C 8005DDEC 50600007 */  beql  $v1, $zero, .L8005DE0C
/* AD4F90 8005DDF0 96180002 */   lhu   $t8, 2($s0)
/* AD4F94 8005DDF4 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD4F98 8005DDF8 55E00004 */  bnezl $t7, .L8005DE0C
/* AD4F9C 8005DDFC 96180002 */   lhu   $t8, 2($s0)
/* AD4FA0 8005DE00 10000021 */  b     .L8005DE88
/* AD4FA4 8005DE04 2402FFFF */   li    $v0, -1
/* AD4FA8 8005DE08 96180002 */  lhu   $t8, 2($s0)
.L8005DE0C:
/* AD4FAC 8005DE0C 33080001 */  andi  $t0, $t8, 1
/* AD4FB0 8005DE10 5100000E */  beql  $t0, $zero, .L8005DE4C
/* AD4FB4 8005DE14 8E0201C0 */   lw    $v0, 0x1c0($s0)
/* AD4FB8 8005DE18 8E0901C0 */  lw    $t1, 0x1c0($s0)
/* AD4FBC 8005DE1C 00075080 */  sll   $t2, $a3, 2
/* AD4FC0 8005DE20 3C048014 */  lui   $a0, %hi(D_8013AB8C) # $a0, 0x8014
/* AD4FC4 8005DE24 00E9082A */  slt   $at, $a3, $t1
/* AD4FC8 8005DE28 14200005 */  bnez  $at, .L8005DE40
/* AD4FCC 8005DE2C 020A5821 */   addu  $t3, $s0, $t2
/* AD4FD0 8005DE30 0C00084C */  jal   DebugMessage
/* AD4FD4 8005DE34 2484AB8C */   addiu $a0, %lo(D_8013AB8C) # addiu $a0, $a0, -0x5474
/* AD4FD8 8005DE38 10000013 */  b     .L8005DE88
/* AD4FDC 8005DE3C 2402FFFF */   li    $v0, -1
.L8005DE40:
/* AD4FE0 8005DE40 10000010 */  b     .L8005DE84
/* AD4FE4 8005DE44 AD710004 */   sw    $s1, 4($t3)
/* AD4FE8 8005DE48 8E0201C0 */  lw    $v0, 0x1c0($s0)
.L8005DE4C:
/* AD4FEC 8005DE4C 3C048014 */  lui   $a0, %hi(D_8013ABDC) # $a0, 0x8014
/* AD4FF0 8005DE50 28410032 */  slti  $at, $v0, 0x32
/* AD4FF4 8005DE54 14200005 */  bnez  $at, .L8005DE6C
/* AD4FF8 8005DE58 00026080 */   sll   $t4, $v0, 2
/* AD4FFC 8005DE5C 0C00084C */  jal   DebugMessage
/* AD5000 8005DE60 2484ABDC */   addiu $a0, %lo(D_8013ABDC) # addiu $a0, $a0, -0x5424
/* AD5004 8005DE64 10000008 */  b     .L8005DE88
/* AD5008 8005DE68 2402FFFF */   li    $v0, -1
.L8005DE6C:
/* AD500C 8005DE6C 020C6821 */  addu  $t5, $s0, $t4
/* AD5010 8005DE70 ADB101C4 */  sw    $s1, 0x1c4($t5)
/* AD5014 8005DE74 8E0E01C0 */  lw    $t6, 0x1c0($s0)
/* AD5018 8005DE78 00403825 */  move  $a3, $v0
/* AD501C 8005DE7C 25D90001 */  addiu $t9, $t6, 1
/* AD5020 8005DE80 AE1901C0 */  sw    $t9, 0x1c0($s0)
.L8005DE84:
/* AD5024 8005DE84 00E01025 */  move  $v0, $a3
.L8005DE88:
/* AD5028 8005DE88 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD502C 8005DE8C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD5030 8005DE90 8FB10018 */  lw    $s1, 0x18($sp)
/* AD5034 8005DE94 03E00008 */  jr    $ra
/* AD5038 8005DE98 27BD0020 */   addiu $sp, $sp, 0x20

/* AD503C 8005DE9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD5040 8005DEA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD5044 8005DEA4 AFA40018 */  sw    $a0, 0x18($sp)
/* AD5048 8005DEA8 AFA60020 */  sw    $a2, 0x20($sp)
/* AD504C 8005DEAC 0C03034A */  jal   func_800C0D28
/* AD5050 8005DEB0 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD5054 8005DEB4 24010001 */  li    $at, 1
/* AD5058 8005DEB8 14410003 */  bne   $v0, $at, .L8005DEC8
/* AD505C 8005DEBC 8FA7001C */   lw    $a3, 0x1c($sp)
/* AD5060 8005DEC0 10000016 */  b     .L8005DF1C
/* AD5064 8005DEC4 2402FFFF */   li    $v0, -1
.L8005DEC8:
/* AD5068 8005DEC8 8FA40018 */  lw    $a0, 0x18($sp)
/* AD506C 8005DECC 8FA50020 */  lw    $a1, 0x20($sp)
/* AD5070 8005DED0 0C0174E9 */  jal   func_8005D3A4
/* AD5074 8005DED4 AFA7001C */   sw    $a3, 0x1c($sp)
/* AD5078 8005DED8 8FA7001C */  lw    $a3, 0x1c($sp)
/* AD507C 8005DEDC 3C048014 */  lui   $a0, %hi(D_8013AC18) # $a0, 0x8014
/* AD5080 8005DEE0 8FAE0020 */  lw    $t6, 0x20($sp)
/* AD5084 8005DEE4 8CE3028C */  lw    $v1, 0x28c($a3)
/* AD5088 8005DEE8 28610003 */  slti  $at, $v1, 3
/* AD508C 8005DEEC 14200005 */  bnez  $at, .L8005DF04
/* AD5090 8005DEF0 00037880 */   sll   $t7, $v1, 2
/* AD5094 8005DEF4 0C00084C */  jal   DebugMessage
/* AD5098 8005DEF8 2484AC18 */   addiu $a0, %lo(D_8013AC18) # addiu $a0, $a0, -0x53e8
/* AD509C 8005DEFC 10000007 */  b     .L8005DF1C
/* AD50A0 8005DF00 2402FFFF */   li    $v0, -1
.L8005DF04:
/* AD50A4 8005DF04 00EFC021 */  addu  $t8, $a3, $t7
/* AD50A8 8005DF08 AF0E0290 */  sw    $t6, 0x290($t8)
/* AD50AC 8005DF0C 8CF9028C */  lw    $t9, 0x28c($a3)
/* AD50B0 8005DF10 00601025 */  move  $v0, $v1
/* AD50B4 8005DF14 27280001 */  addiu $t0, $t9, 1
/* AD50B8 8005DF18 ACE8028C */  sw    $t0, 0x28c($a3)
.L8005DF1C:
/* AD50BC 8005DF1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD50C0 8005DF20 27BD0018 */  addiu $sp, $sp, 0x18
/* AD50C4 8005DF24 03E00008 */  jr    $ra
/* AD50C8 8005DF28 00000000 */   nop   

glabel func_8005DF2C
/* AD50CC 8005DF2C 908E0015 */  lbu   $t6, 0x15($a0)
/* AD50D0 8005DF30 00001025 */  move  $v0, $zero
/* AD50D4 8005DF34 31CF0001 */  andi  $t7, $t6, 1
/* AD50D8 8005DF38 15E00003 */  bnez  $t7, .L8005DF48
/* AD50DC 8005DF3C 00000000 */   nop   
/* AD50E0 8005DF40 03E00008 */  jr    $ra
/* AD50E4 8005DF44 24020001 */   li    $v0, 1

.L8005DF48:
/* AD50E8 8005DF48 03E00008 */  jr    $ra
/* AD50EC 8005DF4C 00000000 */   nop   

glabel func_8005DF50
/* AD50F0 8005DF50 908E0016 */  lbu   $t6, 0x16($a0)
/* AD50F4 8005DF54 00001025 */  move  $v0, $zero
/* AD50F8 8005DF58 31CF0001 */  andi  $t7, $t6, 1
/* AD50FC 8005DF5C 15E00003 */  bnez  $t7, .L8005DF6C
/* AD5100 8005DF60 00000000 */   nop   
/* AD5104 8005DF64 03E00008 */  jr    $ra
/* AD5108 8005DF68 24020001 */   li    $v0, 1

.L8005DF6C:
/* AD510C 8005DF6C 03E00008 */  jr    $ra
/* AD5110 8005DF70 00000000 */   nop   

glabel func_8005DF74
/* AD5114 8005DF74 8C8E0000 */  lw    $t6, ($a0)
/* AD5118 8005DF78 8CAF0008 */  lw    $t7, 8($a1)
/* AD511C 8005DF7C 00001025 */  move  $v0, $zero
/* AD5120 8005DF80 01CFC024 */  and   $t8, $t6, $t7
/* AD5124 8005DF84 17000003 */  bnez  $t8, .L8005DF94
/* AD5128 8005DF88 00000000 */   nop   
/* AD512C 8005DF8C 03E00008 */  jr    $ra
/* AD5130 8005DF90 24020001 */   li    $v0, 1

.L8005DF94:
/* AD5134 8005DF94 03E00008 */  jr    $ra
/* AD5138 8005DF98 00000000 */   nop   

/* AD513C 8005DF9C AFA40000 */  sw    $a0, ($sp)
/* AD5140 8005DFA0 AFA50004 */  sw    $a1, 4($sp)
/* AD5144 8005DFA4 03E00008 */  jr    $ra
/* AD5148 8005DFA8 AFA60008 */   sw    $a2, 8($sp)

glabel func_8005DFAC
/* AD514C 8005DFAC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD5150 8005DFB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD5154 8005DFB4 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD5158 8005DFB8 AFA60030 */  sw    $a2, 0x30($sp)
/* AD515C 8005DFBC C4C40000 */  lwc1  $f4, ($a2)
/* AD5160 8005DFC0 3C018016 */  lui   $at, %hi(D_8015D8A4) # $at, 0x8016
/* AD5164 8005DFC4 24190005 */  li    $t9, 5
/* AD5168 8005DFC8 4600218D */  trunc.w.s $f6, $f4
/* AD516C 8005DFCC 3C028016 */  lui   $v0, %hi(D_8015D8A0) # $v0, 0x8016
/* AD5170 8005DFD0 2442D8A0 */  addiu $v0, %lo(D_8015D8A0) # addiu $v0, $v0, -0x2760
/* AD5174 8005DFD4 240300FF */  li    $v1, 255
/* AD5178 8005DFD8 44183000 */  mfc1  $t8, $f6
/* AD517C 8005DFDC 24080080 */  li    $t0, 128
/* AD5180 8005DFE0 2409000A */  li    $t1, 10
/* AD5184 8005DFE4 A438D8A0 */  sh    $t8, %lo(D_8015D8A0)($at)
/* AD5188 8005DFE8 C4C80004 */  lwc1  $f8, 4($a2)
/* AD518C 8005DFEC 24180005 */  li    $t8, 5
/* AD5190 8005DFF0 240A0020 */  li    $t2, 32
/* AD5194 8005DFF4 4600428D */  trunc.w.s $f10, $f8
/* AD5198 8005DFF8 240B0040 */  li    $t3, 64
/* AD519C 8005DFFC 240E0010 */  li    $t6, 16
/* AD51A0 8005E000 240D0001 */  li    $t5, 1
/* AD51A4 8005E004 440C5000 */  mfc1  $t4, $f10
/* AD51A8 8005E008 27A50024 */  addiu $a1, $sp, 0x24
/* AD51AC 8005E00C 00003825 */  move  $a3, $zero
/* AD51B0 8005E010 A42CD8A2 */  sh    $t4, %lo(D_8015D8A2)($at)
/* AD51B4 8005E014 C4D00008 */  lwc1  $f16, 8($a2)
/* AD51B8 8005E018 240C00C8 */  li    $t4, 200
/* AD51BC 8005E01C AFA20014 */  sw    $v0, 0x14($sp)
/* AD51C0 8005E020 4600848D */  trunc.w.s $f18, $f16
/* AD51C4 8005E024 AFAD0010 */  sw    $t5, 0x10($sp)
/* AD51C8 8005E028 00003025 */  move  $a2, $zero
/* AD51CC 8005E02C 440F9000 */  mfc1  $t7, $f18
/* AD51D0 8005E030 00000000 */  nop   
/* AD51D4 8005E034 A42FD8A4 */  sh    $t7, %lo(D_8015D8A4)($at)
/* AD51D8 8005E038 3C018016 */  lui   $at, %hi(D_8015DD34) # $at, 0x8016
/* AD51DC 8005E03C AC38DD34 */  sw    $t8, %lo(D_8015DD34)($at)
/* AD51E0 8005E040 3C018016 */  lui   $at, %hi(D_8015DD38) # $at, 0x8016
/* AD51E4 8005E044 AC39DD38 */  sw    $t9, %lo(D_8015DD38)($at)
/* AD51E8 8005E048 A049049C */  sb    $t1, 0x49c($v0)
/* AD51EC 8005E04C A049049D */  sb    $t1, 0x49d($v0)
/* AD51F0 8005E050 A04C049E */  sb    $t4, 0x49e($v0)
/* AD51F4 8005E054 A043049F */  sb    $v1, 0x49f($v0)
/* AD51F8 8005E058 A04004A0 */  sb    $zero, 0x4a0($v0)
/* AD51FC 8005E05C A04004A1 */  sb    $zero, 0x4a1($v0)
/* AD5200 8005E060 A04804A2 */  sb    $t0, 0x4a2($v0)
/* AD5204 8005E064 A04304A3 */  sb    $v1, 0x4a3($v0)
/* AD5208 8005E068 A04004A4 */  sb    $zero, 0x4a4($v0)
/* AD520C 8005E06C A04004A5 */  sb    $zero, 0x4a5($v0)
/* AD5210 8005E070 A04804A6 */  sb    $t0, 0x4a6($v0)
/* AD5214 8005E074 A04304A7 */  sb    $v1, 0x4a7($v0)
/* AD5218 8005E078 A04004A8 */  sb    $zero, 0x4a8($v0)
/* AD521C 8005E07C A04004A9 */  sb    $zero, 0x4a9($v0)
/* AD5220 8005E080 A04804AA */  sb    $t0, 0x4aa($v0)
/* AD5224 8005E084 A04304AB */  sb    $v1, 0x4ab($v0)
/* AD5228 8005E088 A04004AC */  sb    $zero, 0x4ac($v0)
/* AD522C 8005E08C A04004AD */  sb    $zero, 0x4ad($v0)
/* AD5230 8005E090 A04A04AE */  sb    $t2, 0x4ae($v0)
/* AD5234 8005E094 A04004AF */  sb    $zero, 0x4af($v0)
/* AD5238 8005E098 A04004B0 */  sb    $zero, 0x4b0($v0)
/* AD523C 8005E09C A04004B1 */  sb    $zero, 0x4b1($v0)
/* AD5240 8005E0A0 A04A04B2 */  sb    $t2, 0x4b2($v0)
/* AD5244 8005E0A4 A04004B3 */  sb    $zero, 0x4b3($v0)
/* AD5248 8005E0A8 A04004B4 */  sb    $zero, 0x4b4($v0)
/* AD524C 8005E0AC A04004B5 */  sb    $zero, 0x4b5($v0)
/* AD5250 8005E0B0 A04B04B6 */  sb    $t3, 0x4b6($v0)
/* AD5254 8005E0B4 A04004B7 */  sb    $zero, 0x4b7($v0)
/* AD5258 8005E0B8 A04004B8 */  sb    $zero, 0x4b8($v0)
/* AD525C 8005E0BC A04004B9 */  sb    $zero, 0x4b9($v0)
/* AD5260 8005E0C0 A04B04BA */  sb    $t3, 0x4ba($v0)
/* AD5264 8005E0C4 A04004BB */  sb    $zero, 0x4bb($v0)
/* AD5268 8005E0C8 3C018016 */  lui   $at, %hi(D_8015DD5C) # $at, 0x8016
/* AD526C 8005E0CC AC20DD5C */  sw    $zero, %lo(D_8015DD5C)($at)
/* AD5270 8005E0D0 3C018016 */  lui   $at, %hi(D_8015DD60) # $at, 0x8016
/* AD5274 8005E0D4 AC2EDD60 */  sw    $t6, %lo(D_8015DD60)($at)
/* AD5278 8005E0D8 3C014100 */  li    $at, 0x41000000 # 0.000000
/* AD527C 8005E0DC 44812000 */  mtc1  $at, $f4
/* AD5280 8005E0E0 3C018016 */  lui   $at, 0x8016
/* AD5284 8005E0E4 E424DD2C */  swc1  $f4, -0x22d4($at)
/* AD5288 8005E0E8 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* AD528C 8005E0EC 44813000 */  mtc1  $at, $f6
/* AD5290 8005E0F0 3C018016 */  lui   $at, 0x8016
/* AD5294 8005E0F4 0C009B35 */  jal   EffectAdd
/* AD5298 8005E0F8 E426DD30 */   swc1  $f6, -0x22d0($at)
/* AD529C 8005E0FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD52A0 8005E100 27BD0028 */  addiu $sp, $sp, 0x28
/* AD52A4 8005E104 03E00008 */  jr    $ra
/* AD52A8 8005E108 00000000 */   nop   

/* AD52AC 8005E10C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD52B0 8005E110 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD52B4 8005E114 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD52B8 8005E118 AFA60030 */  sw    $a2, 0x30($sp)
/* AD52BC 8005E11C C4C40000 */  lwc1  $f4, ($a2)
/* AD52C0 8005E120 3C018016 */  lui   $at, %hi(D_8015DD6C) # $at, 0x8016
/* AD52C4 8005E124 24190005 */  li    $t9, 5
/* AD52C8 8005E128 4600218D */  trunc.w.s $f6, $f4
/* AD52CC 8005E12C 3C028016 */  lui   $v0, %hi(D_8015DD68) # $v0, 0x8016
/* AD52D0 8005E130 2442DD68 */  addiu $v0, %lo(D_8015DD68) # addiu $v0, $v0, -0x2298
/* AD52D4 8005E134 240300FF */  li    $v1, 255
/* AD52D8 8005E138 44183000 */  mfc1  $t8, $f6
/* AD52DC 8005E13C 24080080 */  li    $t0, 128
/* AD52E0 8005E140 2409000A */  li    $t1, 10
/* AD52E4 8005E144 A438DD68 */  sh    $t8, %lo(D_8015DD68)($at)
/* AD52E8 8005E148 C4C80004 */  lwc1  $f8, 4($a2)
/* AD52EC 8005E14C 24180005 */  li    $t8, 5
/* AD52F0 8005E150 240A0020 */  li    $t2, 32
/* AD52F4 8005E154 4600428D */  trunc.w.s $f10, $f8
/* AD52F8 8005E158 240B0040 */  li    $t3, 64
/* AD52FC 8005E15C 240E0010 */  li    $t6, 16
/* AD5300 8005E160 240D0001 */  li    $t5, 1
/* AD5304 8005E164 440C5000 */  mfc1  $t4, $f10
/* AD5308 8005E168 27A50024 */  addiu $a1, $sp, 0x24
/* AD530C 8005E16C 00003825 */  move  $a3, $zero
/* AD5310 8005E170 A42CDD6A */  sh    $t4, %lo(D_8015DD6A)($at)
/* AD5314 8005E174 C4D00008 */  lwc1  $f16, 8($a2)
/* AD5318 8005E178 240C00C8 */  li    $t4, 200
/* AD531C 8005E17C AFA20014 */  sw    $v0, 0x14($sp)
/* AD5320 8005E180 4600848D */  trunc.w.s $f18, $f16
/* AD5324 8005E184 AFAD0010 */  sw    $t5, 0x10($sp)
/* AD5328 8005E188 00003025 */  move  $a2, $zero
/* AD532C 8005E18C 440F9000 */  mfc1  $t7, $f18
/* AD5330 8005E190 00000000 */  nop   
/* AD5334 8005E194 A42FDD6C */  sh    $t7, %lo(D_8015DD6C)($at)
/* AD5338 8005E198 3C018016 */  lui   $at, %hi(D_8015E1FC) # $at, 0x8016
/* AD533C 8005E19C AC38E1FC */  sw    $t8, %lo(D_8015E1FC)($at)
/* AD5340 8005E1A0 3C018016 */  lui   $at, %hi(D_8015E200) # $at, 0x8016
/* AD5344 8005E1A4 AC39E200 */  sw    $t9, %lo(D_8015E200)($at)
/* AD5348 8005E1A8 A049049C */  sb    $t1, 0x49c($v0)
/* AD534C 8005E1AC A04C049D */  sb    $t4, 0x49d($v0)
/* AD5350 8005E1B0 A049049E */  sb    $t1, 0x49e($v0)
/* AD5354 8005E1B4 A043049F */  sb    $v1, 0x49f($v0)
/* AD5358 8005E1B8 A04004A0 */  sb    $zero, 0x4a0($v0)
/* AD535C 8005E1BC A04804A1 */  sb    $t0, 0x4a1($v0)
/* AD5360 8005E1C0 A04004A2 */  sb    $zero, 0x4a2($v0)
/* AD5364 8005E1C4 A04304A3 */  sb    $v1, 0x4a3($v0)
/* AD5368 8005E1C8 A04004A4 */  sb    $zero, 0x4a4($v0)
/* AD536C 8005E1CC A04804A5 */  sb    $t0, 0x4a5($v0)
/* AD5370 8005E1D0 A04004A6 */  sb    $zero, 0x4a6($v0)
/* AD5374 8005E1D4 A04304A7 */  sb    $v1, 0x4a7($v0)
/* AD5378 8005E1D8 A04004A8 */  sb    $zero, 0x4a8($v0)
/* AD537C 8005E1DC A04804A9 */  sb    $t0, 0x4a9($v0)
/* AD5380 8005E1E0 A04004AA */  sb    $zero, 0x4aa($v0)
/* AD5384 8005E1E4 A04304AB */  sb    $v1, 0x4ab($v0)
/* AD5388 8005E1E8 A04004AC */  sb    $zero, 0x4ac($v0)
/* AD538C 8005E1EC A04A04AD */  sb    $t2, 0x4ad($v0)
/* AD5390 8005E1F0 A04004AE */  sb    $zero, 0x4ae($v0)
/* AD5394 8005E1F4 A04004AF */  sb    $zero, 0x4af($v0)
/* AD5398 8005E1F8 A04004B0 */  sb    $zero, 0x4b0($v0)
/* AD539C 8005E1FC A04A04B1 */  sb    $t2, 0x4b1($v0)
/* AD53A0 8005E200 A04004B2 */  sb    $zero, 0x4b2($v0)
/* AD53A4 8005E204 A04004B3 */  sb    $zero, 0x4b3($v0)
/* AD53A8 8005E208 A04004B4 */  sb    $zero, 0x4b4($v0)
/* AD53AC 8005E20C A04B04B5 */  sb    $t3, 0x4b5($v0)
/* AD53B0 8005E210 A04004B6 */  sb    $zero, 0x4b6($v0)
/* AD53B4 8005E214 A04004B7 */  sb    $zero, 0x4b7($v0)
/* AD53B8 8005E218 A04004B8 */  sb    $zero, 0x4b8($v0)
/* AD53BC 8005E21C A04B04B9 */  sb    $t3, 0x4b9($v0)
/* AD53C0 8005E220 A04004BA */  sb    $zero, 0x4ba($v0)
/* AD53C4 8005E224 A04004BB */  sb    $zero, 0x4bb($v0)
/* AD53C8 8005E228 3C018016 */  lui   $at, %hi(D_8015E224) # $at, 0x8016
/* AD53CC 8005E22C AC20E224 */  sw    $zero, %lo(D_8015E224)($at)
/* AD53D0 8005E230 3C018016 */  lui   $at, %hi(D_8015E228) # $at, 0x8016
/* AD53D4 8005E234 AC2EE228 */  sw    $t6, %lo(D_8015E228)($at)
/* AD53D8 8005E238 3C014100 */  li    $at, 0x41000000 # 0.000000
/* AD53DC 8005E23C 44812000 */  mtc1  $at, $f4
/* AD53E0 8005E240 3C018016 */  lui   $at, 0x8016
/* AD53E4 8005E244 E424E1F4 */  swc1  $f4, -0x1e0c($at)
/* AD53E8 8005E248 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* AD53EC 8005E24C 44813000 */  mtc1  $at, $f6
/* AD53F0 8005E250 3C018016 */  lui   $at, 0x8016
/* AD53F4 8005E254 0C009B35 */  jal   EffectAdd
/* AD53F8 8005E258 E426E1F8 */   swc1  $f6, -0x1e08($at)
/* AD53FC 8005E25C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD5400 8005E260 27BD0028 */  addiu $sp, $sp, 0x28
/* AD5404 8005E264 03E00008 */  jr    $ra
/* AD5408 8005E268 00000000 */   nop   

/* AD540C 8005E26C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD5410 8005E270 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD5414 8005E274 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD5418 8005E278 AFA40018 */  sw    $a0, 0x18($sp)
/* AD541C 8005E27C AFA60020 */  sw    $a2, 0x20($sp)
/* AD5420 8005E280 0C00A66B */  jal   func_800299AC
/* AD5424 8005E284 00C02825 */   move  $a1, $a2
/* AD5428 8005E288 8FA40018 */  lw    $a0, 0x18($sp)
/* AD542C 8005E28C 0C018AE0 */  jal   func_80062B80
/* AD5430 8005E290 8FA50020 */   lw    $a1, 0x20($sp)
/* AD5434 8005E294 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD5438 8005E298 27BD0018 */  addiu $sp, $sp, 0x18
/* AD543C 8005E29C 03E00008 */  jr    $ra
/* AD5440 8005E2A0 00000000 */   nop   

/* AD5444 8005E2A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD5448 8005E2A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD544C 8005E2AC AFA5001C */  sw    $a1, 0x1c($sp)
/* AD5450 8005E2B0 0C018A8A */  jal   func_80062A28
/* AD5454 8005E2B4 00C02825 */   move  $a1, $a2
/* AD5458 8005E2B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD545C 8005E2BC 27BD0018 */  addiu $sp, $sp, 0x18
/* AD5460 8005E2C0 03E00008 */  jr    $ra
/* AD5464 8005E2C4 00000000 */   nop   

/* AD5468 8005E2C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD546C 8005E2CC AFBF0014 */  sw    $ra, 0x14($sp)
/* AD5470 8005E2D0 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD5474 8005E2D4 0C018A8A */  jal   func_80062A28
/* AD5478 8005E2D8 00C02825 */   move  $a1, $a2
/* AD547C 8005E2DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD5480 8005E2E0 27BD0018 */  addiu $sp, $sp, 0x18
/* AD5484 8005E2E4 03E00008 */  jr    $ra
/* AD5488 8005E2E8 00000000 */   nop   

glabel func_8005E2EC
/* AD548C 8005E2EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD5490 8005E2F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD5494 8005E2F4 AFA60028 */  sw    $a2, 0x28($sp)
/* AD5498 8005E2F8 90A20015 */  lbu   $v0, 0x15($a1)
/* AD549C 8005E2FC 30420018 */  andi  $v0, $v0, 0x18
/* AD54A0 8005E300 14400024 */  bnez  $v0, .L8005E394
/* AD54A4 8005E304 00000000 */   nop   
/* AD54A8 8005E308 90CF0014 */  lbu   $t7, 0x14($a2)
/* AD54AC 8005E30C 24010009 */  li    $at, 9
/* AD54B0 8005E310 00002825 */  move  $a1, $zero
/* AD54B4 8005E314 11E1001F */  beq   $t7, $at, .L8005E394
/* AD54B8 8005E318 00000000 */   nop   
/* AD54BC 8005E31C 0C00A729 */  jal   func_80029CA4
/* AD54C0 8005E320 00E03025 */   move  $a2, $a3
/* AD54C4 8005E324 8FB80028 */  lw    $t8, 0x28($sp)
/* AD54C8 8005E328 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD54CC 8005E32C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD54D0 8005E330 8F020000 */  lw    $v0, ($t8)
/* AD54D4 8005E334 24041806 */  li    $a0, 6150
/* AD54D8 8005E338 24060004 */  li    $a2, 4
/* AD54DC 8005E33C 1440000E */  bnez  $v0, .L8005E378
/* AD54E0 8005E340 244500E4 */   addiu $a1, $v0, 0xe4
/* AD54E4 8005E344 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD54E8 8005E348 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* AD54EC 8005E34C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD54F0 8005E350 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* AD54F4 8005E354 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AD54F8 8005E358 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AD54FC 8005E35C AFB90014 */  sw    $t9, 0x14($sp)
/* AD5500 8005E360 AFA70010 */  sw    $a3, 0x10($sp)
/* AD5504 8005E364 24041806 */  li    $a0, 6150
/* AD5508 8005E368 0C03DCE3 */  jal   func_800F738C
/* AD550C 8005E36C 24060004 */   li    $a2, 4
/* AD5510 8005E370 1000005E */  b     .L8005E4EC
/* AD5514 8005E374 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E378:
/* AD5518 8005E378 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* AD551C 8005E37C 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* AD5520 8005E380 AFA80014 */  sw    $t0, 0x14($sp)
/* AD5524 8005E384 0C03DCE3 */  jal   func_800F738C
/* AD5528 8005E388 AFA70010 */   sw    $a3, 0x10($sp)
/* AD552C 8005E38C 10000057 */  b     .L8005E4EC
/* AD5530 8005E390 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E394:
/* AD5534 8005E394 14400015 */  bnez  $v0, .L8005E3EC
/* AD5538 8005E398 24010008 */   li    $at, 8
/* AD553C 8005E39C 24050003 */  li    $a1, 3
/* AD5540 8005E3A0 00E03025 */  move  $a2, $a3
/* AD5544 8005E3A4 AFA40020 */  sw    $a0, 0x20($sp)
/* AD5548 8005E3A8 0C00A729 */  jal   func_80029CA4
/* AD554C 8005E3AC AFA7002C */   sw    $a3, 0x2c($sp)
/* AD5550 8005E3B0 8FA90028 */  lw    $t1, 0x28($sp)
/* AD5554 8005E3B4 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD5558 8005E3B8 8FA40020 */  lw    $a0, 0x20($sp)
/* AD555C 8005E3BC 8D220000 */  lw    $v0, ($t1)
/* AD5560 8005E3C0 00E02825 */  move  $a1, $a3
/* AD5564 8005E3C4 14400005 */  bnez  $v0, .L8005E3DC
/* AD5568 8005E3C8 00000000 */   nop   
/* AD556C 8005E3CC 0C018B58 */  jal   func_80062D60
/* AD5570 8005E3D0 00E02825 */   move  $a1, $a3
/* AD5574 8005E3D4 10000045 */  b     .L8005E4EC
/* AD5578 8005E3D8 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E3DC:
/* AD557C 8005E3DC 0C018B6B */  jal   func_80062DAC
/* AD5580 8005E3E0 244600E4 */   addiu $a2, $v0, 0xe4
/* AD5584 8005E3E4 10000041 */  b     .L8005E4EC
/* AD5588 8005E3E8 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E3EC:
/* AD558C 8005E3EC 1441001F */  bne   $v0, $at, .L8005E46C
/* AD5590 8005E3F0 00002825 */   move  $a1, $zero
/* AD5594 8005E3F4 0C00A729 */  jal   func_80029CA4
/* AD5598 8005E3F8 00E03025 */   move  $a2, $a3
/* AD559C 8005E3FC 8FAA0028 */  lw    $t2, 0x28($sp)
/* AD55A0 8005E400 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD55A4 8005E404 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD55A8 8005E408 8D420000 */  lw    $v0, ($t2)
/* AD55AC 8005E40C 24041806 */  li    $a0, 6150
/* AD55B0 8005E410 24060004 */  li    $a2, 4
/* AD55B4 8005E414 1440000E */  bnez  $v0, .L8005E450
/* AD55B8 8005E418 244500E4 */   addiu $a1, $v0, 0xe4
/* AD55BC 8005E41C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD55C0 8005E420 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* AD55C4 8005E424 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD55C8 8005E428 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* AD55CC 8005E42C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AD55D0 8005E430 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AD55D4 8005E434 AFAB0014 */  sw    $t3, 0x14($sp)
/* AD55D8 8005E438 AFA70010 */  sw    $a3, 0x10($sp)
/* AD55DC 8005E43C 24041806 */  li    $a0, 6150
/* AD55E0 8005E440 0C03DCE3 */  jal   func_800F738C
/* AD55E4 8005E444 24060004 */   li    $a2, 4
/* AD55E8 8005E448 10000028 */  b     .L8005E4EC
/* AD55EC 8005E44C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E450:
/* AD55F0 8005E450 3C0C8013 */  lui   $t4, %hi(D_801333E8) # $t4, 0x8013
/* AD55F4 8005E454 258C33E8 */  addiu $t4, %lo(D_801333E8) # addiu $t4, $t4, 0x33e8
/* AD55F8 8005E458 AFAC0014 */  sw    $t4, 0x14($sp)
/* AD55FC 8005E45C 0C03DCE3 */  jal   func_800F738C
/* AD5600 8005E460 AFA70010 */   sw    $a3, 0x10($sp)
/* AD5604 8005E464 10000021 */  b     .L8005E4EC
/* AD5608 8005E468 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E46C:
/* AD560C 8005E46C 24010010 */  li    $at, 16
/* AD5610 8005E470 1441001D */  bne   $v0, $at, .L8005E4E8
/* AD5614 8005E474 24050001 */   li    $a1, 1
/* AD5618 8005E478 0C00A729 */  jal   func_80029CA4
/* AD561C 8005E47C 00E03025 */   move  $a2, $a3
/* AD5620 8005E480 8FAD0028 */  lw    $t5, 0x28($sp)
/* AD5624 8005E484 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD5628 8005E488 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD562C 8005E48C 8DA20000 */  lw    $v0, ($t5)
/* AD5630 8005E490 24041837 */  li    $a0, 6199
/* AD5634 8005E494 24060004 */  li    $a2, 4
/* AD5638 8005E498 1440000E */  bnez  $v0, .L8005E4D4
/* AD563C 8005E49C 244500E4 */   addiu $a1, $v0, 0xe4
/* AD5640 8005E4A0 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD5644 8005E4A4 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AD5648 8005E4A8 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD564C 8005E4AC 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AD5650 8005E4B0 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AD5654 8005E4B4 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AD5658 8005E4B8 AFAE0014 */  sw    $t6, 0x14($sp)
/* AD565C 8005E4BC AFA70010 */  sw    $a3, 0x10($sp)
/* AD5660 8005E4C0 24041837 */  li    $a0, 6199
/* AD5664 8005E4C4 0C03DCE3 */  jal   func_800F738C
/* AD5668 8005E4C8 24060004 */   li    $a2, 4
/* AD566C 8005E4CC 10000007 */  b     .L8005E4EC
/* AD5670 8005E4D0 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E4D4:
/* AD5674 8005E4D4 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AD5678 8005E4D8 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AD567C 8005E4DC AFAF0014 */  sw    $t7, 0x14($sp)
/* AD5680 8005E4E0 0C03DCE3 */  jal   func_800F738C
/* AD5684 8005E4E4 AFA70010 */   sw    $a3, 0x10($sp)
.L8005E4E8:
/* AD5688 8005E4E8 8FBF001C */  lw    $ra, 0x1c($sp)
.L8005E4EC:
/* AD568C 8005E4EC 27BD0020 */  addiu $sp, $sp, 0x20
/* AD5690 8005E4F0 03E00008 */  jr    $ra
/* AD5694 8005E4F4 00000000 */   nop   

glabel func_8005E4F8
/* AD5698 8005E4F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD569C 8005E4FC AFBF001C */  sw    $ra, 0x1c($sp)
/* AD56A0 8005E500 8C830000 */  lw    $v1, ($a0)
/* AD56A4 8005E504 5060003B */  beql  $v1, $zero, .L8005E5F4
/* AD56A8 8005E508 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD56AC 8005E50C 906E0002 */  lbu   $t6, 2($v1)
/* AD56B0 8005E510 24040002 */  li    $a0, 2
/* AD56B4 8005E514 548E0037 */  bnel  $a0, $t6, .L8005E5F4
/* AD56B8 8005E518 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD56BC 8005E51C 90A20014 */  lbu   $v0, 0x14($a1)
/* AD56C0 8005E520 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD56C4 8005E524 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD56C8 8005E528 1440000B */  bnez  $v0, .L8005E558
/* AD56CC 8005E52C 24010001 */   li    $at, 1
/* AD56D0 8005E530 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AD56D4 8005E534 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AD56D8 8005E538 AFAF0014 */  sw    $t7, 0x14($sp)
/* AD56DC 8005E53C 24041811 */  li    $a0, 6161
/* AD56E0 8005E540 246500E4 */  addiu $a1, $v1, 0xe4
/* AD56E4 8005E544 24060004 */  li    $a2, 4
/* AD56E8 8005E548 0C03DCE3 */  jal   func_800F738C
/* AD56EC 8005E54C AFA70010 */   sw    $a3, 0x10($sp)
/* AD56F0 8005E550 10000028 */  b     .L8005E5F4
/* AD56F4 8005E554 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E558:
/* AD56F8 8005E558 1441000C */  bne   $v0, $at, .L8005E58C
/* AD56FC 8005E55C 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD5700 8005E560 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* AD5704 8005E564 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5708 8005E568 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* AD570C 8005E56C AFB80014 */  sw    $t8, 0x14($sp)
/* AD5710 8005E570 AFA70010 */  sw    $a3, 0x10($sp)
/* AD5714 8005E574 24041824 */  li    $a0, 6180
/* AD5718 8005E578 246500E4 */  addiu $a1, $v1, 0xe4
/* AD571C 8005E57C 0C03DCE3 */  jal   func_800F738C
/* AD5720 8005E580 24060004 */   li    $a2, 4
/* AD5724 8005E584 1000001B */  b     .L8005E5F4
/* AD5728 8005E588 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E58C:
/* AD572C 8005E58C 1482000D */  bne   $a0, $v0, .L8005E5C4
/* AD5730 8005E590 24010003 */   li    $at, 3
/* AD5734 8005E594 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD5738 8005E598 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* AD573C 8005E59C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5740 8005E5A0 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* AD5744 8005E5A4 AFB90014 */  sw    $t9, 0x14($sp)
/* AD5748 8005E5A8 AFA70010 */  sw    $a3, 0x10($sp)
/* AD574C 8005E5AC 00002025 */  move  $a0, $zero
/* AD5750 8005E5B0 246500E4 */  addiu $a1, $v1, 0xe4
/* AD5754 8005E5B4 0C03DCE3 */  jal   func_800F738C
/* AD5758 8005E5B8 24060004 */   li    $a2, 4
/* AD575C 8005E5BC 1000000D */  b     .L8005E5F4
/* AD5760 8005E5C0 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E5C4:
/* AD5764 8005E5C4 1441000A */  bne   $v0, $at, .L8005E5F0
/* AD5768 8005E5C8 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD576C 8005E5CC 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* AD5770 8005E5D0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5774 8005E5D4 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* AD5778 8005E5D8 AFA80014 */  sw    $t0, 0x14($sp)
/* AD577C 8005E5DC AFA70010 */  sw    $a3, 0x10($sp)
/* AD5780 8005E5E0 00002025 */  move  $a0, $zero
/* AD5784 8005E5E4 246500E4 */  addiu $a1, $v1, 0xe4
/* AD5788 8005E5E8 0C03DCE3 */  jal   func_800F738C
/* AD578C 8005E5EC 24060004 */   li    $a2, 4
.L8005E5F0:
/* AD5790 8005E5F0 8FBF001C */  lw    $ra, 0x1c($sp)
.L8005E5F4:
/* AD5794 8005E5F4 27BD0020 */  addiu $sp, $sp, 0x20
/* AD5798 8005E5F8 24020001 */  li    $v0, 1
/* AD579C 8005E5FC 03E00008 */  jr    $ra
/* AD57A0 8005E600 00000000 */   nop   

glabel func_8005E604
/* AD57A4 8005E604 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD57A8 8005E608 8FAE0030 */  lw    $t6, 0x30($sp)
/* AD57AC 8005E60C AFBF001C */  sw    $ra, 0x1c($sp)
/* AD57B0 8005E610 AFA50024 */  sw    $a1, 0x24($sp)
/* AD57B4 8005E614 AFA60028 */  sw    $a2, 0x28($sp)
/* AD57B8 8005E618 AFA7002C */  sw    $a3, 0x2c($sp)
/* AD57BC 8005E61C 91CF0016 */  lbu   $t7, 0x16($t6)
/* AD57C0 8005E620 31F80040 */  andi  $t8, $t7, 0x40
/* AD57C4 8005E624 57000073 */  bnezl $t8, .L8005E7F4
/* AD57C8 8005E628 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD57CC 8005E62C 90C20015 */  lbu   $v0, 0x15($a2)
/* AD57D0 8005E630 8FAA002C */  lw    $t2, 0x2c($sp)
/* AD57D4 8005E634 30480020 */  andi  $t0, $v0, 0x20
/* AD57D8 8005E638 15000003 */  bnez  $t0, .L8005E648
/* AD57DC 8005E63C 30490040 */   andi  $t1, $v0, 0x40
/* AD57E0 8005E640 5520006C */  bnezl $t1, .L8005E7F4
/* AD57E4 8005E644 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E648:
/* AD57E8 8005E648 8D420000 */  lw    $v0, ($t2)
/* AD57EC 8005E64C 10400012 */  beqz  $v0, .L8005E698
/* AD57F0 8005E650 00000000 */   nop   
/* AD57F4 8005E654 AFA40020 */  sw    $a0, 0x20($sp)
/* AD57F8 8005E658 914B0014 */  lbu   $t3, 0x14($t2)
/* AD57FC 8005E65C 3C0D8012 */  lui   $t5, 0x8012
/* AD5800 8005E660 3C198012 */  lui   $t9, 0x8012
/* AD5804 8005E664 000B6040 */  sll   $t4, $t3, 1
/* AD5808 8005E668 01AC6821 */  addu  $t5, $t5, $t4
/* AD580C 8005E66C 91ADDF40 */  lbu   $t5, -0x20c0($t5)
/* AD5810 8005E670 8FA60034 */  lw    $a2, 0x34($sp)
/* AD5814 8005E674 01402825 */  move  $a1, $t2
/* AD5818 8005E678 000D7080 */  sll   $t6, $t5, 2
/* AD581C 8005E67C 032EC821 */  addu  $t9, $t9, $t6
/* AD5820 8005E680 8F39DF28 */  lw    $t9, -0x20d8($t9)
/* AD5824 8005E684 0320F809 */  jalr  $t9
/* AD5828 8005E688 00000000 */  nop   
/* AD582C 8005E68C 8FAF002C */  lw    $t7, 0x2c($sp)
/* AD5830 8005E690 8FA40020 */  lw    $a0, 0x20($sp)
/* AD5834 8005E694 8DE20000 */  lw    $v0, ($t7)
.L8005E698:
/* AD5838 8005E698 10400038 */  beqz  $v0, .L8005E77C
/* AD583C 8005E69C 8FA70034 */   lw    $a3, 0x34($sp)
/* AD5840 8005E6A0 8FB8002C */  lw    $t8, 0x2c($sp)
/* AD5844 8005E6A4 3C058012 */  lui   $a1, 0x8012
/* AD5848 8005E6A8 24010003 */  li    $at, 3
/* AD584C 8005E6AC 93080014 */  lbu   $t0, 0x14($t8)
/* AD5850 8005E6B0 03003025 */  move  $a2, $t8
/* AD5854 8005E6B4 00084840 */  sll   $t1, $t0, 1
/* AD5858 8005E6B8 00A92821 */  addu  $a1, $a1, $t1
/* AD585C 8005E6BC 90A5DF41 */  lbu   $a1, -0x20bf($a1)
/* AD5860 8005E6C0 54A10006 */  bnel  $a1, $at, .L8005E6DC
/* AD5864 8005E6C4 24010004 */   li    $at, 4
/* AD5868 8005E6C8 0C0178BB */  jal   func_8005E2EC
/* AD586C 8005E6CC 8FA50028 */   lw    $a1, 0x28($sp)
/* AD5870 8005E6D0 10000048 */  b     .L8005E7F4
/* AD5874 8005E6D4 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD5878 8005E6D8 24010004 */  li    $at, 4
.L8005E6DC:
/* AD587C 8005E6DC 14A10018 */  bne   $a1, $at, .L8005E740
/* AD5880 8005E6E0 8FAA0024 */   lw    $t2, 0x24($sp)
/* AD5884 8005E6E4 8D420000 */  lw    $v0, ($t2)
/* AD5888 8005E6E8 00E02825 */  move  $a1, $a3
/* AD588C 8005E6EC 14400010 */  bnez  $v0, .L8005E730
/* AD5890 8005E6F0 00000000 */   nop   
/* AD5894 8005E6F4 0C018B35 */  jal   func_80062CD4
/* AD5898 8005E6F8 00E02825 */   move  $a1, $a3
/* AD589C 8005E6FC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD58A0 8005E700 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* AD58A4 8005E704 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD58A8 8005E708 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* AD58AC 8005E70C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AD58B0 8005E710 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AD58B4 8005E714 AFAB0014 */  sw    $t3, 0x14($sp)
/* AD58B8 8005E718 AFA70010 */  sw    $a3, 0x10($sp)
/* AD58BC 8005E71C 24041837 */  li    $a0, 6199
/* AD58C0 8005E720 0C03DCE3 */  jal   func_800F738C
/* AD58C4 8005E724 24060004 */   li    $a2, 4
/* AD58C8 8005E728 10000032 */  b     .L8005E7F4
/* AD58CC 8005E72C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E730:
/* AD58D0 8005E730 0C018B85 */  jal   func_80062E14
/* AD58D4 8005E734 244600E4 */   addiu $a2, $v0, 0xe4
/* AD58D8 8005E738 1000002E */  b     .L8005E7F4
/* AD58DC 8005E73C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E740:
/* AD58E0 8005E740 24010005 */  li    $at, 5
/* AD58E4 8005E744 50A1002B */  beql  $a1, $at, .L8005E7F4
/* AD58E8 8005E748 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD58EC 8005E74C 0C00A729 */  jal   func_80029CA4
/* AD58F0 8005E750 00E03025 */   move  $a2, $a3
/* AD58F4 8005E754 8FAC0030 */  lw    $t4, 0x30($sp)
/* AD58F8 8005E758 8FA40024 */  lw    $a0, 0x24($sp)
/* AD58FC 8005E75C 918D0016 */  lbu   $t5, 0x16($t4)
/* AD5900 8005E760 31AE0020 */  andi  $t6, $t5, 0x20
/* AD5904 8005E764 55C00023 */  bnezl $t6, .L8005E7F4
/* AD5908 8005E768 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD590C 8005E76C 0C01793E */  jal   func_8005E4F8
/* AD5910 8005E770 01802825 */   move  $a1, $t4
/* AD5914 8005E774 1000001F */  b     .L8005E7F4
/* AD5918 8005E778 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E77C:
/* AD591C 8005E77C 00002825 */  move  $a1, $zero
/* AD5920 8005E780 0C00A729 */  jal   func_80029CA4
/* AD5924 8005E784 00E03025 */   move  $a2, $a3
/* AD5928 8005E788 8FB9002C */  lw    $t9, 0x2c($sp)
/* AD592C 8005E78C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD5930 8005E790 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5934 8005E794 8F220000 */  lw    $v0, ($t9)
/* AD5938 8005E798 24041806 */  li    $a0, 6150
/* AD593C 8005E79C 24060004 */  li    $a2, 4
/* AD5940 8005E7A0 1440000E */  bnez  $v0, .L8005E7DC
/* AD5944 8005E7A4 244500E4 */   addiu $a1, $v0, 0xe4
/* AD5948 8005E7A8 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD594C 8005E7AC 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* AD5950 8005E7B0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD5954 8005E7B4 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* AD5958 8005E7B8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AD595C 8005E7BC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AD5960 8005E7C0 AFAF0014 */  sw    $t7, 0x14($sp)
/* AD5964 8005E7C4 AFA70010 */  sw    $a3, 0x10($sp)
/* AD5968 8005E7C8 24041806 */  li    $a0, 6150
/* AD596C 8005E7CC 0C03DCE3 */  jal   func_800F738C
/* AD5970 8005E7D0 24060004 */   li    $a2, 4
/* AD5974 8005E7D4 10000007 */  b     .L8005E7F4
/* AD5978 8005E7D8 8FBF001C */   lw    $ra, 0x1c($sp)
.L8005E7DC:
/* AD597C 8005E7DC 3C088013 */  lui   $t0, %hi(D_801333E8) # $t0, 0x8013
/* AD5980 8005E7E0 250833E8 */  addiu $t0, %lo(D_801333E8) # addiu $t0, $t0, 0x33e8
/* AD5984 8005E7E4 AFA80014 */  sw    $t0, 0x14($sp)
/* AD5988 8005E7E8 0C03DCE3 */  jal   func_800F738C
/* AD598C 8005E7EC AFA70010 */   sw    $a3, 0x10($sp)
/* AD5990 8005E7F0 8FBF001C */  lw    $ra, 0x1c($sp)
.L8005E7F4:
/* AD5994 8005E7F4 27BD0020 */  addiu $sp, $sp, 0x20
/* AD5998 8005E7F8 03E00008 */  jr    $ra
/* AD599C 8005E7FC 00000000 */   nop   

glabel func_8005E800
/* AD59A0 8005E800 908E0010 */  lbu   $t6, 0x10($a0)
/* AD59A4 8005E804 35CF0004 */  ori   $t7, $t6, 4
/* AD59A8 8005E808 A08F0010 */  sb    $t7, 0x10($a0)
/* AD59AC 8005E80C 90B80011 */  lbu   $t8, 0x11($a1)
/* AD59B0 8005E810 37190080 */  ori   $t9, $t8, 0x80
/* AD59B4 8005E814 03E00008 */  jr    $ra
/* AD59B8 8005E818 A0B90011 */   sb    $t9, 0x11($a1)

glabel func_8005E81C
/* AD59BC 8005E81C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD59C0 8005E820 AFA70034 */  sw    $a3, 0x34($sp)
/* AD59C4 8005E824 8FA70038 */  lw    $a3, 0x38($sp)
/* AD59C8 8005E828 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD59CC 8005E82C AFB00020 */  sw    $s0, 0x20($sp)
/* AD59D0 8005E830 AFA40028 */  sw    $a0, 0x28($sp)
/* AD59D4 8005E834 90EE0011 */  lbu   $t6, 0x11($a3)
/* AD59D8 8005E838 00A08025 */  move  $s0, $a1
/* AD59DC 8005E83C 31CF0004 */  andi  $t7, $t6, 4
/* AD59E0 8005E840 51E0000E */  beql  $t7, $zero, .L8005E87C
/* AD59E4 8005E844 8FA2003C */   lw    $v0, 0x3c($sp)
/* AD59E8 8005E848 8CB80000 */  lw    $t8, ($a1)
/* AD59EC 8005E84C 5300000B */  beql  $t8, $zero, .L8005E87C
/* AD59F0 8005E850 8FA2003C */   lw    $v0, 0x3c($sp)
/* AD59F4 8005E854 8CF90000 */  lw    $t9, ($a3)
/* AD59F8 8005E858 00A02025 */  move  $a0, $a1
/* AD59FC 8005E85C 00E02825 */  move  $a1, $a3
/* AD5A00 8005E860 53200006 */  beql  $t9, $zero, .L8005E87C
/* AD5A04 8005E864 8FA2003C */   lw    $v0, 0x3c($sp)
/* AD5A08 8005E868 0C017A00 */  jal   func_8005E800
/* AD5A0C 8005E86C AFA60030 */   sw    $a2, 0x30($sp)
/* AD5A10 8005E870 8FA60030 */  lw    $a2, 0x30($sp)
/* AD5A14 8005E874 8FA70038 */  lw    $a3, 0x38($sp)
/* AD5A18 8005E878 8FA2003C */  lw    $v0, 0x3c($sp)
.L8005E87C:
/* AD5A1C 8005E87C 02002825 */  move  $a1, $s0
/* AD5A20 8005E880 90490016 */  lbu   $t1, 0x16($v0)
/* AD5A24 8005E884 312A0008 */  andi  $t2, $t1, 8
/* AD5A28 8005E888 55400011 */  bnezl $t2, .L8005E8D0
/* AD5A2C 8005E88C 90F90011 */   lbu   $t9, 0x11($a3)
/* AD5A30 8005E890 920B0010 */  lbu   $t3, 0x10($s0)
/* AD5A34 8005E894 356C0002 */  ori   $t4, $t3, 2
/* AD5A38 8005E898 A20C0010 */  sb    $t4, 0x10($s0)
/* AD5A3C 8005E89C 8CED0000 */  lw    $t5, ($a3)
/* AD5A40 8005E8A0 AE0D0004 */  sw    $t5, 4($s0)
/* AD5A44 8005E8A4 90CE0015 */  lbu   $t6, 0x15($a2)
/* AD5A48 8005E8A8 ACC70018 */  sw    $a3, 0x18($a2)
/* AD5A4C 8005E8AC ACC20020 */  sw    $v0, 0x20($a2)
/* AD5A50 8005E8B0 35CF0002 */  ori   $t7, $t6, 2
/* AD5A54 8005E8B4 A0CF0015 */  sb    $t7, 0x15($a2)
/* AD5A58 8005E8B8 8E030000 */  lw    $v1, ($s0)
/* AD5A5C 8005E8BC 50600004 */  beql  $v1, $zero, .L8005E8D0
/* AD5A60 8005E8C0 90F90011 */   lbu   $t9, 0x11($a3)
/* AD5A64 8005E8C4 9058000C */  lbu   $t8, 0xc($v0)
/* AD5A68 8005E8C8 A07800B2 */  sb    $t8, 0xb2($v1)
/* AD5A6C 8005E8CC 90F90011 */  lbu   $t9, 0x11($a3)
.L8005E8D0:
/* AD5A70 8005E8D0 37290002 */  ori   $t1, $t9, 2
/* AD5A74 8005E8D4 A0E90011 */  sb    $t1, 0x11($a3)
/* AD5A78 8005E8D8 8E0A0000 */  lw    $t2, ($s0)
/* AD5A7C 8005E8DC ACEA0008 */  sw    $t2, 8($a3)
/* AD5A80 8005E8E0 904B0016 */  lbu   $t3, 0x16($v0)
/* AD5A84 8005E8E4 AC50001C */  sw    $s0, 0x1c($v0)
/* AD5A88 8005E8E8 AC460024 */  sw    $a2, 0x24($v0)
/* AD5A8C 8005E8EC 356C0002 */  ori   $t4, $t3, 2
/* AD5A90 8005E8F0 A04C0016 */  sb    $t4, 0x16($v0)
/* AD5A94 8005E8F4 8CE30000 */  lw    $v1, ($a3)
/* AD5A98 8005E8F8 50600004 */  beql  $v1, $zero, .L8005E90C
/* AD5A9C 8005E8FC 8FA80044 */   lw    $t0, 0x44($sp)
/* AD5AA0 8005E900 90CD0004 */  lbu   $t5, 4($a2)
/* AD5AA4 8005E904 A06D00B3 */  sb    $t5, 0xb3($v1)
/* AD5AA8 8005E908 8FA80044 */  lw    $t0, 0x44($sp)
.L8005E90C:
/* AD5AAC 8005E90C C5040000 */  lwc1  $f4, ($t0)
/* AD5AB0 8005E910 4600218D */  trunc.w.s $f6, $f4
/* AD5AB4 8005E914 440F3000 */  mfc1  $t7, $f6
/* AD5AB8 8005E918 00000000 */  nop   
/* AD5ABC 8005E91C A44F000E */  sh    $t7, 0xe($v0)
/* AD5AC0 8005E920 C5080004 */  lwc1  $f8, 4($t0)
/* AD5AC4 8005E924 4600428D */  trunc.w.s $f10, $f8
/* AD5AC8 8005E928 44195000 */  mfc1  $t9, $f10
/* AD5ACC 8005E92C 00000000 */  nop   
/* AD5AD0 8005E930 A4590010 */  sh    $t9, 0x10($v0)
/* AD5AD4 8005E934 C5100008 */  lwc1  $f16, 8($t0)
/* AD5AD8 8005E938 4600848D */  trunc.w.s $f18, $f16
/* AD5ADC 8005E93C 440A9000 */  mfc1  $t2, $f18
/* AD5AE0 8005E940 00000000 */  nop   
/* AD5AE4 8005E944 A44A0012 */  sh    $t2, 0x12($v0)
/* AD5AE8 8005E948 90CB0015 */  lbu   $t3, 0x15($a2)
/* AD5AEC 8005E94C 8FA40028 */  lw    $a0, 0x28($sp)
/* AD5AF0 8005E950 316C0020 */  andi  $t4, $t3, 0x20
/* AD5AF4 8005E954 5580000E */  bnezl $t4, .L8005E990
/* AD5AF8 8005E958 AFA20010 */   sw    $v0, 0x10($sp)
/* AD5AFC 8005E95C 90E30014 */  lbu   $v1, 0x14($a3)
/* AD5B00 8005E960 24010009 */  li    $at, 9
/* AD5B04 8005E964 10610009 */  beq   $v1, $at, .L8005E98C
/* AD5B08 8005E968 2401000B */   li    $at, 11
/* AD5B0C 8005E96C 10610007 */  beq   $v1, $at, .L8005E98C
/* AD5B10 8005E970 2401000C */   li    $at, 12
/* AD5B14 8005E974 50610006 */  beql  $v1, $at, .L8005E990
/* AD5B18 8005E978 AFA20010 */   sw    $v0, 0x10($sp)
/* AD5B1C 8005E97C 904D0016 */  lbu   $t5, 0x16($v0)
/* AD5B20 8005E980 35AE0080 */  ori   $t6, $t5, 0x80
/* AD5B24 8005E984 10000009 */  b     .L8005E9AC
/* AD5B28 8005E988 A04E0016 */   sb    $t6, 0x16($v0)
.L8005E98C:
/* AD5B2C 8005E98C AFA20010 */  sw    $v0, 0x10($sp)
.L8005E990:
/* AD5B30 8005E990 AFA80014 */  sw    $t0, 0x14($sp)
/* AD5B34 8005E994 0C017981 */  jal   func_8005E604
/* AD5B38 8005E998 AFA60030 */   sw    $a2, 0x30($sp)
/* AD5B3C 8005E99C 8FA60030 */  lw    $a2, 0x30($sp)
/* AD5B40 8005E9A0 90CF0015 */  lbu   $t7, 0x15($a2)
/* AD5B44 8005E9A4 35F80040 */  ori   $t8, $t7, 0x40
/* AD5B48 8005E9A8 A0D80015 */  sb    $t8, 0x15($a2)
.L8005E9AC:
/* AD5B4C 8005E9AC 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD5B50 8005E9B0 8FB00020 */  lw    $s0, 0x20($sp)
/* AD5B54 8005E9B4 27BD0028 */  addiu $sp, $sp, 0x28
/* AD5B58 8005E9B8 03E00008 */  jr    $ra
/* AD5B5C 8005E9BC 24020001 */   li    $v0, 1

/* AD5B60 8005E9C0 27BDFF60 */  addiu $sp, $sp, -0xa0
/* AD5B64 8005E9C4 AFBF0054 */  sw    $ra, 0x54($sp)
/* AD5B68 8005E9C8 AFBE0050 */  sw    $fp, 0x50($sp)
/* AD5B6C 8005E9CC AFB7004C */  sw    $s7, 0x4c($sp)
/* AD5B70 8005E9D0 AFB60048 */  sw    $s6, 0x48($sp)
/* AD5B74 8005E9D4 AFB50044 */  sw    $s5, 0x44($sp)
/* AD5B78 8005E9D8 AFB40040 */  sw    $s4, 0x40($sp)
/* AD5B7C 8005E9DC AFB3003C */  sw    $s3, 0x3c($sp)
/* AD5B80 8005E9E0 AFB20038 */  sw    $s2, 0x38($sp)
/* AD5B84 8005E9E4 AFB10034 */  sw    $s1, 0x34($sp)
/* AD5B88 8005E9E8 AFB00030 */  sw    $s0, 0x30($sp)
/* AD5B8C 8005E9EC F7B40028 */  sdc1  $f20, 0x28($sp)
/* AD5B90 8005E9F0 AFA400A0 */  sw    $a0, 0xa0($sp)
/* AD5B94 8005E9F4 AFA500A4 */  sw    $a1, 0xa4($sp)
/* AD5B98 8005E9F8 AFA6009C */  sw    $a2, 0x9c($sp)
/* AD5B9C 8005E9FC 8CC30018 */  lw    $v1, 0x18($a2)
/* AD5BA0 8005EA00 00E0A825 */  move  $s5, $a3
/* AD5BA4 8005EA04 00E0B025 */  move  $s6, $a3
/* AD5BA8 8005EA08 5860008C */  blezl $v1, .L8005EC3C
/* AD5BAC 8005EA0C 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD5BB0 8005EA10 8CC2001C */  lw    $v0, 0x1c($a2)
/* AD5BB4 8005EA14 50400089 */  beql  $v0, $zero, .L8005EC3C
/* AD5BB8 8005EA18 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD5BBC 8005EA1C 8CEE0018 */  lw    $t6, 0x18($a3)
/* AD5BC0 8005EA20 59C00086 */  blezl $t6, .L8005EC3C
/* AD5BC4 8005EA24 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD5BC8 8005EA28 8CEF001C */  lw    $t7, 0x1c($a3)
/* AD5BCC 8005EA2C 0003C180 */  sll   $t8, $v1, 6
/* AD5BD0 8005EA30 0058C821 */  addu  $t9, $v0, $t8
/* AD5BD4 8005EA34 11E00080 */  beqz  $t7, .L8005EC38
/* AD5BD8 8005EA38 0059082B */   sltu  $at, $v0, $t9
/* AD5BDC 8005EA3C 1020007E */  beqz  $at, .L8005EC38
/* AD5BE0 8005EA40 00408825 */   move  $s1, $v0
/* AD5BE4 8005EA44 3C018014 */  lui   $at, 0x8014
/* AD5BE8 8005EA48 C434ACF8 */  lwc1  $f20, -0x5308($at)
/* AD5BEC 8005EA4C AFA600A8 */  sw    $a2, 0xa8($sp)
/* AD5BF0 8005EA50 27BE0088 */  addiu $fp, $sp, 0x88
/* AD5BF4 8005EA54 27B7008C */  addiu $s7, $sp, 0x8c
/* AD5BF8 8005EA58 27B40078 */  addiu $s4, $sp, 0x78
/* AD5BFC 8005EA5C 27B3006C */  addiu $s3, $sp, 0x6c
/* AD5C00 8005EA60 24120001 */  li    $s2, 1
.L8005EA64:
/* AD5C04 8005EA64 0C0177CB */  jal   func_8005DF2C
/* AD5C08 8005EA68 02202025 */   move  $a0, $s1
/* AD5C0C 8005EA6C 5052006A */  beql  $v0, $s2, .L8005EC18
/* AD5C10 8005EA70 8FA2009C */   lw    $v0, 0x9c($sp)
/* AD5C14 8005EA74 8EA80018 */  lw    $t0, 0x18($s5)
/* AD5C18 8005EA78 8EB0001C */  lw    $s0, 0x1c($s5)
/* AD5C1C 8005EA7C 00084980 */  sll   $t1, $t0, 6
/* AD5C20 8005EA80 02095021 */  addu  $t2, $s0, $t1
/* AD5C24 8005EA84 020A082B */  sltu  $at, $s0, $t2
/* AD5C28 8005EA88 50200063 */  beql  $at, $zero, .L8005EC18
/* AD5C2C 8005EA8C 8FA2009C */   lw    $v0, 0x9c($sp)
.L8005EA90:
/* AD5C30 8005EA90 0C0177D4 */  jal   func_8005DF50
/* AD5C34 8005EA94 02002025 */   move  $a0, $s0
/* AD5C38 8005EA98 10520056 */  beq   $v0, $s2, .L8005EBF4
/* AD5C3C 8005EA9C 02202025 */   move  $a0, $s1
/* AD5C40 8005EAA0 0C0177DD */  jal   func_8005DF74
/* AD5C44 8005EAA4 02002825 */   move  $a1, $s0
/* AD5C48 8005EAA8 10520052 */  beq   $v0, $s2, .L8005EBF4
/* AD5C4C 8005EAAC 26240030 */   addiu $a0, $s1, 0x30
/* AD5C50 8005EAB0 26050030 */  addiu $a1, $s0, 0x30
/* AD5C54 8005EAB4 02E03025 */  move  $a2, $s7
/* AD5C58 8005EAB8 0C033F2B */  jal   func_800CFCAC
/* AD5C5C 8005EABC 03C03825 */   move  $a3, $fp
/* AD5C60 8005EAC0 5452004D */  bnel  $v0, $s2, .L8005EBF8
/* AD5C64 8005EAC4 8ECC0018 */   lw    $t4, 0x18($s6)
/* AD5C68 8005EAC8 862B0030 */  lh    $t3, 0x30($s1)
/* AD5C6C 8005EACC 02802025 */  move  $a0, $s4
/* AD5C70 8005EAD0 448B2000 */  mtc1  $t3, $f4
/* AD5C74 8005EAD4 00000000 */  nop   
/* AD5C78 8005EAD8 468021A0 */  cvt.s.w $f6, $f4
/* AD5C7C 8005EADC E7A6006C */  swc1  $f6, 0x6c($sp)
/* AD5C80 8005EAE0 862C0032 */  lh    $t4, 0x32($s1)
/* AD5C84 8005EAE4 448C4000 */  mtc1  $t4, $f8
/* AD5C88 8005EAE8 00000000 */  nop   
/* AD5C8C 8005EAEC 468042A0 */  cvt.s.w $f10, $f8
/* AD5C90 8005EAF0 E7AA0070 */  swc1  $f10, 0x70($sp)
/* AD5C94 8005EAF4 862D0034 */  lh    $t5, 0x34($s1)
/* AD5C98 8005EAF8 448D8000 */  mtc1  $t5, $f16
/* AD5C9C 8005EAFC 00000000 */  nop   
/* AD5CA0 8005EB00 468084A0 */  cvt.s.w $f18, $f16
/* AD5CA4 8005EB04 E7B20074 */  swc1  $f18, 0x74($sp)
/* AD5CA8 8005EB08 860E0030 */  lh    $t6, 0x30($s0)
/* AD5CAC 8005EB0C 448E2000 */  mtc1  $t6, $f4
/* AD5CB0 8005EB10 00000000 */  nop   
/* AD5CB4 8005EB14 468021A0 */  cvt.s.w $f6, $f4
/* AD5CB8 8005EB18 C7A40088 */  lwc1  $f4, 0x88($sp)
/* AD5CBC 8005EB1C 46002005 */  abs.s $f0, $f4
/* AD5CC0 8005EB20 E7A60060 */  swc1  $f6, 0x60($sp)
/* AD5CC4 8005EB24 860F0032 */  lh    $t7, 0x32($s0)
/* AD5CC8 8005EB28 4614003C */  c.lt.s $f0, $f20
/* AD5CCC 8005EB2C 448F4000 */  mtc1  $t7, $f8
/* AD5CD0 8005EB30 00000000 */  nop   
/* AD5CD4 8005EB34 468042A0 */  cvt.s.w $f10, $f8
/* AD5CD8 8005EB38 E7AA0064 */  swc1  $f10, 0x64($sp)
/* AD5CDC 8005EB3C 86180034 */  lh    $t8, 0x34($s0)
/* AD5CE0 8005EB40 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* AD5CE4 8005EB44 44988000 */  mtc1  $t8, $f16
/* AD5CE8 8005EB48 00000000 */  nop   
/* AD5CEC 8005EB4C 468084A0 */  cvt.s.w $f18, $f16
/* AD5CF0 8005EB50 C7B00060 */  lwc1  $f16, 0x60($sp)
/* AD5CF4 8005EB54 45010017 */  bc1t  .L8005EBB4
/* AD5CF8 8005EB58 E7B20068 */   swc1  $f18, 0x68($sp)
/* AD5CFC 8005EB5C 86190036 */  lh    $t9, 0x36($s0)
/* AD5D00 8005EB60 46105481 */  sub.s $f18, $f10, $f16
/* AD5D04 8005EB64 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* AD5D08 8005EB68 44993000 */  mtc1  $t9, $f6
/* AD5D0C 8005EB6C 00000000 */  nop   
/* AD5D10 8005EB70 46803220 */  cvt.s.w $f8, $f6
/* AD5D14 8005EB74 46044003 */  div.s $f0, $f8, $f4
/* AD5D18 8005EB78 C7A40070 */  lwc1  $f4, 0x70($sp)
/* AD5D1C 8005EB7C 46009182 */  mul.s $f6, $f18, $f0
/* AD5D20 8005EB80 460A2481 */  sub.s $f18, $f4, $f10
/* AD5D24 8005EB84 C7A40068 */  lwc1  $f4, 0x68($sp)
/* AD5D28 8005EB88 46103200 */  add.s $f8, $f6, $f16
/* AD5D2C 8005EB8C 46009182 */  mul.s $f6, $f18, $f0
/* AD5D30 8005EB90 E7A80078 */  swc1  $f8, 0x78($sp)
/* AD5D34 8005EB94 C7A80074 */  lwc1  $f8, 0x74($sp)
/* AD5D38 8005EB98 46044481 */  sub.s $f18, $f8, $f4
/* AD5D3C 8005EB9C 460A3400 */  add.s $f16, $f6, $f10
/* AD5D40 8005EBA0 46009182 */  mul.s $f6, $f18, $f0
/* AD5D44 8005EBA4 E7B0007C */  swc1  $f16, 0x7c($sp)
/* AD5D48 8005EBA8 46043280 */  add.s $f10, $f6, $f4
/* AD5D4C 8005EBAC 10000003 */  b     .L8005EBBC
/* AD5D50 8005EBB0 E7AA0080 */   swc1  $f10, 0x80($sp)
.L8005EBB4:
/* AD5D54 8005EBB4 0C01DF90 */  jal   func_80077E40
/* AD5D58 8005EBB8 02602825 */   move  $a1, $s3
.L8005EBBC:
/* AD5D5C 8005EBBC 27A80060 */  addiu $t0, $sp, 0x60
/* AD5D60 8005EBC0 AFA80018 */  sw    $t0, 0x18($sp)
/* AD5D64 8005EBC4 8FA400A0 */  lw    $a0, 0xa0($sp)
/* AD5D68 8005EBC8 8FA500A8 */  lw    $a1, 0xa8($sp)
/* AD5D6C 8005EBCC 02203025 */  move  $a2, $s1
/* AD5D70 8005EBD0 02603825 */  move  $a3, $s3
/* AD5D74 8005EBD4 AFB50010 */  sw    $s5, 0x10($sp)
/* AD5D78 8005EBD8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD5D7C 8005EBDC 0C017A07 */  jal   func_8005E81C
/* AD5D80 8005EBE0 AFB4001C */   sw    $s4, 0x1c($sp)
/* AD5D84 8005EBE4 92A90013 */  lbu   $t1, 0x13($s5)
/* AD5D88 8005EBE8 312A0040 */  andi  $t2, $t1, 0x40
/* AD5D8C 8005EBEC 51400013 */  beql  $t2, $zero, .L8005EC3C
/* AD5D90 8005EBF0 8FBF0054 */   lw    $ra, 0x54($sp)
.L8005EBF4:
/* AD5D94 8005EBF4 8ECC0018 */  lw    $t4, 0x18($s6)
.L8005EBF8:
/* AD5D98 8005EBF8 8ECB001C */  lw    $t3, 0x1c($s6)
/* AD5D9C 8005EBFC 26100040 */  addiu $s0, $s0, 0x40
/* AD5DA0 8005EC00 000C6980 */  sll   $t5, $t4, 6
/* AD5DA4 8005EC04 016D7021 */  addu  $t6, $t3, $t5
/* AD5DA8 8005EC08 020E082B */  sltu  $at, $s0, $t6
/* AD5DAC 8005EC0C 1420FFA0 */  bnez  $at, .L8005EA90
/* AD5DB0 8005EC10 00000000 */   nop   
/* AD5DB4 8005EC14 8FA2009C */  lw    $v0, 0x9c($sp)
.L8005EC18:
/* AD5DB8 8005EC18 26310040 */  addiu $s1, $s1, 0x40
/* AD5DBC 8005EC1C 8C580018 */  lw    $t8, 0x18($v0)
/* AD5DC0 8005EC20 8C4F001C */  lw    $t7, 0x1c($v0)
/* AD5DC4 8005EC24 0018C980 */  sll   $t9, $t8, 6
/* AD5DC8 8005EC28 01F94021 */  addu  $t0, $t7, $t9
/* AD5DCC 8005EC2C 0228082B */  sltu  $at, $s1, $t0
/* AD5DD0 8005EC30 1420FF8C */  bnez  $at, .L8005EA64
/* AD5DD4 8005EC34 00000000 */   nop   
.L8005EC38:
/* AD5DD8 8005EC38 8FBF0054 */  lw    $ra, 0x54($sp)
.L8005EC3C:
/* AD5DDC 8005EC3C D7B40028 */  ldc1  $f20, 0x28($sp)
/* AD5DE0 8005EC40 8FB00030 */  lw    $s0, 0x30($sp)
/* AD5DE4 8005EC44 8FB10034 */  lw    $s1, 0x34($sp)
/* AD5DE8 8005EC48 8FB20038 */  lw    $s2, 0x38($sp)
/* AD5DEC 8005EC4C 8FB3003C */  lw    $s3, 0x3c($sp)
/* AD5DF0 8005EC50 8FB40040 */  lw    $s4, 0x40($sp)
/* AD5DF4 8005EC54 8FB50044 */  lw    $s5, 0x44($sp)
/* AD5DF8 8005EC58 8FB60048 */  lw    $s6, 0x48($sp)
/* AD5DFC 8005EC5C 8FB7004C */  lw    $s7, 0x4c($sp)
/* AD5E00 8005EC60 8FBE0050 */  lw    $fp, 0x50($sp)
/* AD5E04 8005EC64 03E00008 */  jr    $ra
/* AD5E08 8005EC68 27BD00A0 */   addiu $sp, $sp, 0xa0

/* AD5E0C 8005EC6C 27BDFF70 */  addiu $sp, $sp, -0x90
/* AD5E10 8005EC70 AFBF0044 */  sw    $ra, 0x44($sp)
/* AD5E14 8005EC74 AFB60040 */  sw    $s6, 0x40($sp)
/* AD5E18 8005EC78 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD5E1C 8005EC7C AFB40038 */  sw    $s4, 0x38($sp)
/* AD5E20 8005EC80 AFB30034 */  sw    $s3, 0x34($sp)
/* AD5E24 8005EC84 AFB20030 */  sw    $s2, 0x30($sp)
/* AD5E28 8005EC88 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD5E2C 8005EC8C AFB00028 */  sw    $s0, 0x28($sp)
/* AD5E30 8005EC90 AFA40090 */  sw    $a0, 0x90($sp)
/* AD5E34 8005EC94 AFA50094 */  sw    $a1, 0x94($sp)
/* AD5E38 8005EC98 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD5E3C 8005EC9C 00E09025 */  move  $s2, $a3
/* AD5E40 8005ECA0 00C09825 */  move  $s3, $a2
/* AD5E44 8005ECA4 59C00085 */  blezl $t6, .L8005EEBC
/* AD5E48 8005ECA8 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD5E4C 8005ECAC 8CCF001C */  lw    $t7, 0x1c($a2)
/* AD5E50 8005ECB0 51E00082 */  beql  $t7, $zero, .L8005EEBC
/* AD5E54 8005ECB4 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD5E58 8005ECB8 84F80040 */  lh    $t8, 0x40($a3)
/* AD5E5C 8005ECBC 5B00007F */  blezl $t8, .L8005EEBC
/* AD5E60 8005ECC0 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD5E64 8005ECC4 84F90042 */  lh    $t9, 0x42($a3)
/* AD5E68 8005ECC8 24F60018 */  addiu $s6, $a3, 0x18
/* AD5E6C 8005ECCC 02C02025 */  move  $a0, $s6
/* AD5E70 8005ECD0 5B20007A */  blezl $t9, .L8005EEBC
/* AD5E74 8005ECD4 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD5E78 8005ECD8 0C0177D4 */  jal   func_8005DF50
/* AD5E7C 8005ECDC AFA60098 */   sw    $a2, 0x98($sp)
/* AD5E80 8005ECE0 24110001 */  li    $s1, 1
/* AD5E84 8005ECE4 10510074 */  beq   $v0, $s1, .L8005EEB8
/* AD5E88 8005ECE8 8FA30098 */   lw    $v1, 0x98($sp)
/* AD5E8C 8005ECEC 8C680018 */  lw    $t0, 0x18($v1)
/* AD5E90 8005ECF0 8C70001C */  lw    $s0, 0x1c($v1)
/* AD5E94 8005ECF4 27B5007C */  addiu $s5, $sp, 0x7c
/* AD5E98 8005ECF8 00084980 */  sll   $t1, $t0, 6
/* AD5E9C 8005ECFC 02095021 */  addu  $t2, $s0, $t1
/* AD5EA0 8005ED00 020A082B */  sltu  $at, $s0, $t2
/* AD5EA4 8005ED04 1020006C */  beqz  $at, .L8005EEB8
/* AD5EA8 8005ED08 27B40080 */   addiu $s4, $sp, 0x80
.L8005ED0C:
/* AD5EAC 8005ED0C 0C0177CB */  jal   func_8005DF2C
/* AD5EB0 8005ED10 02002025 */   move  $a0, $s0
/* AD5EB4 8005ED14 10510060 */  beq   $v0, $s1, .L8005EE98
/* AD5EB8 8005ED18 02002025 */   move  $a0, $s0
/* AD5EBC 8005ED1C 0C0177DD */  jal   func_8005DF74
/* AD5EC0 8005ED20 02C02825 */   move  $a1, $s6
/* AD5EC4 8005ED24 1051005C */  beq   $v0, $s1, .L8005EE98
/* AD5EC8 8005ED28 26040030 */   addiu $a0, $s0, 0x30
/* AD5ECC 8005ED2C 26450040 */  addiu $a1, $s2, 0x40
/* AD5ED0 8005ED30 02803025 */  move  $a2, $s4
/* AD5ED4 8005ED34 0C033F69 */  jal   func_800CFDA4
/* AD5ED8 8005ED38 02A03825 */   move  $a3, $s5
/* AD5EDC 8005ED3C 50400057 */  beql  $v0, $zero, .L8005EE9C
/* AD5EE0 8005ED40 8E6B0018 */   lw    $t3, 0x18($s3)
/* AD5EE4 8005ED44 860B0030 */  lh    $t3, 0x30($s0)
/* AD5EE8 8005ED48 3C018014 */  li    $at, 0x80140000 # 0.000000
/* AD5EEC 8005ED4C 27A40070 */  addiu $a0, $sp, 0x70
/* AD5EF0 8005ED50 448B2000 */  mtc1  $t3, $f4
/* AD5EF4 8005ED54 00000000 */  nop   
/* AD5EF8 8005ED58 468021A0 */  cvt.s.w $f6, $f4
/* AD5EFC 8005ED5C E7A60064 */  swc1  $f6, 0x64($sp)
/* AD5F00 8005ED60 860C0032 */  lh    $t4, 0x32($s0)
/* AD5F04 8005ED64 448C4000 */  mtc1  $t4, $f8
/* AD5F08 8005ED68 00000000 */  nop   
/* AD5F0C 8005ED6C 468042A0 */  cvt.s.w $f10, $f8
/* AD5F10 8005ED70 E7AA0068 */  swc1  $f10, 0x68($sp)
/* AD5F14 8005ED74 860D0034 */  lh    $t5, 0x34($s0)
/* AD5F18 8005ED78 448D8000 */  mtc1  $t5, $f16
/* AD5F1C 8005ED7C 00000000 */  nop   
/* AD5F20 8005ED80 468084A0 */  cvt.s.w $f18, $f16
/* AD5F24 8005ED84 E7B2006C */  swc1  $f18, 0x6c($sp)
/* AD5F28 8005ED88 864E0046 */  lh    $t6, 0x46($s2)
/* AD5F2C 8005ED8C 448E2000 */  mtc1  $t6, $f4
/* AD5F30 8005ED90 00000000 */  nop   
/* AD5F34 8005ED94 468021A0 */  cvt.s.w $f6, $f4
/* AD5F38 8005ED98 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* AD5F3C 8005ED9C 46002005 */  abs.s $f0, $f4
/* AD5F40 8005EDA0 E7A60058 */  swc1  $f6, 0x58($sp)
/* AD5F44 8005EDA4 864F0048 */  lh    $t7, 0x48($s2)
/* AD5F48 8005EDA8 C426ACFC */  lwc1  $f6, -0x5304($at)
/* AD5F4C 8005EDAC 448F4000 */  mtc1  $t7, $f8
/* AD5F50 8005EDB0 4606003C */  c.lt.s $f0, $f6
/* AD5F54 8005EDB4 468042A0 */  cvt.s.w $f10, $f8
/* AD5F58 8005EDB8 E7AA005C */  swc1  $f10, 0x5c($sp)
/* AD5F5C 8005EDBC 8658004A */  lh    $t8, 0x4a($s2)
/* AD5F60 8005EDC0 44988000 */  mtc1  $t8, $f16
/* AD5F64 8005EDC4 00000000 */  nop   
/* AD5F68 8005EDC8 468084A0 */  cvt.s.w $f18, $f16
/* AD5F6C 8005EDCC 45010023 */  bc1t  .L8005EE5C
/* AD5F70 8005EDD0 E7B20060 */   swc1  $f18, 0x60($sp)
/* AD5F74 8005EDD4 86590040 */  lh    $t9, 0x40($s2)
/* AD5F78 8005EDD8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AD5F7C 8005EDDC 44818000 */  mtc1  $at, $f16
/* AD5F80 8005EDE0 44994000 */  mtc1  $t9, $f8
/* AD5F84 8005EDE4 C7A20058 */  lwc1  $f2, 0x58($sp)
/* AD5F88 8005EDE8 C7B20064 */  lwc1  $f18, 0x64($sp)
/* AD5F8C 8005EDEC 468042A0 */  cvt.s.w $f10, $f8
/* AD5F90 8005EDF0 27A40070 */  addiu $a0, $sp, 0x70
/* AD5F94 8005EDF4 46045003 */  div.s $f0, $f10, $f4
/* AD5F98 8005EDF8 4610003E */  c.le.s $f0, $f16
/* AD5F9C 8005EDFC 00000000 */  nop   
/* AD5FA0 8005EE00 45000012 */  bc1f  .L8005EE4C
/* AD5FA4 8005EE04 00000000 */   nop   
/* AD5FA8 8005EE08 46029181 */  sub.s $f6, $f18, $f2
/* AD5FAC 8005EE0C C7AC005C */  lwc1  $f12, 0x5c($sp)
/* AD5FB0 8005EE10 C7A40068 */  lwc1  $f4, 0x68($sp)
/* AD5FB4 8005EE14 C7AE0060 */  lwc1  $f14, 0x60($sp)
/* AD5FB8 8005EE18 46003202 */  mul.s $f8, $f6, $f0
/* AD5FBC 8005EE1C 460C2401 */  sub.s $f16, $f4, $f12
/* AD5FC0 8005EE20 46008482 */  mul.s $f18, $f16, $f0
/* AD5FC4 8005EE24 46024280 */  add.s $f10, $f8, $f2
/* AD5FC8 8005EE28 C7A8006C */  lwc1  $f8, 0x6c($sp)
/* AD5FCC 8005EE2C E7AA0070 */  swc1  $f10, 0x70($sp)
/* AD5FD0 8005EE30 460E4281 */  sub.s $f10, $f8, $f14
/* AD5FD4 8005EE34 460C9180 */  add.s $f6, $f18, $f12
/* AD5FD8 8005EE38 46005102 */  mul.s $f4, $f10, $f0
/* AD5FDC 8005EE3C E7A60074 */  swc1  $f6, 0x74($sp)
/* AD5FE0 8005EE40 460E2400 */  add.s $f16, $f4, $f14
/* AD5FE4 8005EE44 10000007 */  b     .L8005EE64
/* AD5FE8 8005EE48 E7B00078 */   swc1  $f16, 0x78($sp)
.L8005EE4C:
/* AD5FEC 8005EE4C 0C01DF90 */  jal   func_80077E40
/* AD5FF0 8005EE50 27A50064 */   addiu $a1, $sp, 0x64
/* AD5FF4 8005EE54 10000004 */  b     .L8005EE68
/* AD5FF8 8005EE58 27A80058 */   addiu $t0, $sp, 0x58
.L8005EE5C:
/* AD5FFC 8005EE5C 0C01DF90 */  jal   func_80077E40
/* AD6000 8005EE60 27A50064 */   addiu $a1, $sp, 0x64
.L8005EE64:
/* AD6004 8005EE64 27A80058 */  addiu $t0, $sp, 0x58
.L8005EE68:
/* AD6008 8005EE68 27A90070 */  addiu $t1, $sp, 0x70
/* AD600C 8005EE6C AFA9001C */  sw    $t1, 0x1c($sp)
/* AD6010 8005EE70 AFA80018 */  sw    $t0, 0x18($sp)
/* AD6014 8005EE74 8FA40090 */  lw    $a0, 0x90($sp)
/* AD6018 8005EE78 8FA50098 */  lw    $a1, 0x98($sp)
/* AD601C 8005EE7C 02003025 */  move  $a2, $s0
/* AD6020 8005EE80 27A70064 */  addiu $a3, $sp, 0x64
/* AD6024 8005EE84 AFB20010 */  sw    $s2, 0x10($sp)
/* AD6028 8005EE88 0C017A07 */  jal   func_8005E81C
/* AD602C 8005EE8C AFB60014 */   sw    $s6, 0x14($sp)
/* AD6030 8005EE90 1000000A */  b     .L8005EEBC
/* AD6034 8005EE94 8FBF0044 */   lw    $ra, 0x44($sp)
.L8005EE98:
/* AD6038 8005EE98 8E6B0018 */  lw    $t3, 0x18($s3)
.L8005EE9C:
/* AD603C 8005EE9C 8E6A001C */  lw    $t2, 0x1c($s3)
/* AD6040 8005EEA0 26100040 */  addiu $s0, $s0, 0x40
/* AD6044 8005EEA4 000B6180 */  sll   $t4, $t3, 6
/* AD6048 8005EEA8 014C6821 */  addu  $t5, $t2, $t4
/* AD604C 8005EEAC 020D082B */  sltu  $at, $s0, $t5
/* AD6050 8005EEB0 1420FF96 */  bnez  $at, .L8005ED0C
/* AD6054 8005EEB4 00000000 */   nop   
.L8005EEB8:
/* AD6058 8005EEB8 8FBF0044 */  lw    $ra, 0x44($sp)
.L8005EEBC:
/* AD605C 8005EEBC 8FB00028 */  lw    $s0, 0x28($sp)
/* AD6060 8005EEC0 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD6064 8005EEC4 8FB20030 */  lw    $s2, 0x30($sp)
/* AD6068 8005EEC8 8FB30034 */  lw    $s3, 0x34($sp)
/* AD606C 8005EECC 8FB40038 */  lw    $s4, 0x38($sp)
/* AD6070 8005EED0 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD6074 8005EED4 8FB60040 */  lw    $s6, 0x40($sp)
/* AD6078 8005EED8 03E00008 */  jr    $ra
/* AD607C 8005EEDC 27BD0090 */   addiu $sp, $sp, 0x90

/* AD6080 8005EEE0 27BDFF58 */  addiu $sp, $sp, -0xa8
/* AD6084 8005EEE4 AFBF005C */  sw    $ra, 0x5c($sp)
/* AD6088 8005EEE8 AFBE0058 */  sw    $fp, 0x58($sp)
/* AD608C 8005EEEC AFB70054 */  sw    $s7, 0x54($sp)
/* AD6090 8005EEF0 AFB60050 */  sw    $s6, 0x50($sp)
/* AD6094 8005EEF4 AFB5004C */  sw    $s5, 0x4c($sp)
/* AD6098 8005EEF8 AFB40048 */  sw    $s4, 0x48($sp)
/* AD609C 8005EEFC AFB30044 */  sw    $s3, 0x44($sp)
/* AD60A0 8005EF00 AFB20040 */  sw    $s2, 0x40($sp)
/* AD60A4 8005EF04 AFB1003C */  sw    $s1, 0x3c($sp)
/* AD60A8 8005EF08 AFB00038 */  sw    $s0, 0x38($sp)
/* AD60AC 8005EF0C F7B60030 */  sdc1  $f22, 0x30($sp)
/* AD60B0 8005EF10 F7B40028 */  sdc1  $f20, 0x28($sp)
/* AD60B4 8005EF14 AFA400A8 */  sw    $a0, 0xa8($sp)
/* AD60B8 8005EF18 AFA500AC */  sw    $a1, 0xac($sp)
/* AD60BC 8005EF1C 8CEE0018 */  lw    $t6, 0x18($a3)
/* AD60C0 8005EF20 00C08825 */  move  $s1, $a2
/* AD60C4 8005EF24 00E0A825 */  move  $s5, $a3
/* AD60C8 8005EF28 19C00086 */  blez  $t6, .L8005F144
/* AD60CC 8005EF2C 00E0B825 */   move  $s7, $a3
/* AD60D0 8005EF30 8CEF001C */  lw    $t7, 0x1c($a3)
/* AD60D4 8005EF34 51E00084 */  beql  $t7, $zero, .L8005F148
/* AD60D8 8005EF38 8FBF005C */   lw    $ra, 0x5c($sp)
/* AD60DC 8005EF3C 84D80040 */  lh    $t8, 0x40($a2)
/* AD60E0 8005EF40 5B000081 */  blezl $t8, .L8005F148
/* AD60E4 8005EF44 8FBF005C */   lw    $ra, 0x5c($sp)
/* AD60E8 8005EF48 84D90042 */  lh    $t9, 0x42($a2)
/* AD60EC 8005EF4C 24D40018 */  addiu $s4, $a2, 0x18
/* AD60F0 8005EF50 5B20007D */  blezl $t9, .L8005F148
/* AD60F4 8005EF54 8FBF005C */   lw    $ra, 0x5c($sp)
/* AD60F8 8005EF58 0C0177CB */  jal   func_8005DF2C
/* AD60FC 8005EF5C 02802025 */   move  $a0, $s4
/* AD6100 8005EF60 24160001 */  li    $s6, 1
/* AD6104 8005EF64 50560078 */  beql  $v0, $s6, .L8005F148
/* AD6108 8005EF68 8FBF005C */   lw    $ra, 0x5c($sp)
/* AD610C 8005EF6C 8EA80018 */  lw    $t0, 0x18($s5)
/* AD6110 8005EF70 8EB0001C */  lw    $s0, 0x1c($s5)
/* AD6114 8005EF74 27BE009C */  addiu $fp, $sp, 0x9c
/* AD6118 8005EF78 00084980 */  sll   $t1, $t0, 6
/* AD611C 8005EF7C 02095021 */  addu  $t2, $s0, $t1
/* AD6120 8005EF80 020A082B */  sltu  $at, $s0, $t2
/* AD6124 8005EF84 1020006F */  beqz  $at, .L8005F144
/* AD6128 8005EF88 27B30088 */   addiu $s3, $sp, 0x88
/* AD612C 8005EF8C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AD6130 8005EF90 4481B000 */  mtc1  $at, $f22
/* AD6134 8005EF94 3C018014 */  lui   $at, 0x8014
/* AD6138 8005EF98 C434AD00 */  lwc1  $f20, -0x5300($at)
/* AD613C 8005EF9C 27B2007C */  addiu $s2, $sp, 0x7c
.L8005EFA0:
/* AD6140 8005EFA0 0C0177D4 */  jal   func_8005DF50
/* AD6144 8005EFA4 02002025 */   move  $a0, $s0
/* AD6148 8005EFA8 1056005E */  beq   $v0, $s6, .L8005F124
/* AD614C 8005EFAC 02802025 */   move  $a0, $s4
/* AD6150 8005EFB0 0C0177DD */  jal   func_8005DF74
/* AD6154 8005EFB4 02002825 */   move  $a1, $s0
/* AD6158 8005EFB8 1056005A */  beq   $v0, $s6, .L8005F124
/* AD615C 8005EFBC 26040030 */   addiu $a0, $s0, 0x30
/* AD6160 8005EFC0 26250040 */  addiu $a1, $s1, 0x40
/* AD6164 8005EFC4 03C03025 */  move  $a2, $fp
/* AD6168 8005EFC8 0C033F69 */  jal   func_800CFDA4
/* AD616C 8005EFCC 27A70098 */   addiu $a3, $sp, 0x98
/* AD6170 8005EFD0 50400055 */  beql  $v0, $zero, .L8005F128
/* AD6174 8005EFD4 8EEC0018 */   lw    $t4, 0x18($s7)
/* AD6178 8005EFD8 862B0046 */  lh    $t3, 0x46($s1)
/* AD617C 8005EFDC 02602025 */  move  $a0, $s3
/* AD6180 8005EFE0 448B2000 */  mtc1  $t3, $f4
/* AD6184 8005EFE4 00000000 */  nop   
/* AD6188 8005EFE8 468021A0 */  cvt.s.w $f6, $f4
/* AD618C 8005EFEC E7A6007C */  swc1  $f6, 0x7c($sp)
/* AD6190 8005EFF0 862C0048 */  lh    $t4, 0x48($s1)
/* AD6194 8005EFF4 448C4000 */  mtc1  $t4, $f8
/* AD6198 8005EFF8 00000000 */  nop   
/* AD619C 8005EFFC 468042A0 */  cvt.s.w $f10, $f8
/* AD61A0 8005F000 E7AA0080 */  swc1  $f10, 0x80($sp)
/* AD61A4 8005F004 862D004A */  lh    $t5, 0x4a($s1)
/* AD61A8 8005F008 448D8000 */  mtc1  $t5, $f16
/* AD61AC 8005F00C 00000000 */  nop   
/* AD61B0 8005F010 468084A0 */  cvt.s.w $f18, $f16
/* AD61B4 8005F014 E7B20084 */  swc1  $f18, 0x84($sp)
/* AD61B8 8005F018 860E0030 */  lh    $t6, 0x30($s0)
/* AD61BC 8005F01C 448E2000 */  mtc1  $t6, $f4
/* AD61C0 8005F020 00000000 */  nop   
/* AD61C4 8005F024 468021A0 */  cvt.s.w $f6, $f4
/* AD61C8 8005F028 C7A40098 */  lwc1  $f4, 0x98($sp)
/* AD61CC 8005F02C 46002005 */  abs.s $f0, $f4
/* AD61D0 8005F030 E7A60070 */  swc1  $f6, 0x70($sp)
/* AD61D4 8005F034 860F0032 */  lh    $t7, 0x32($s0)
/* AD61D8 8005F038 4614003C */  c.lt.s $f0, $f20
/* AD61DC 8005F03C 448F4000 */  mtc1  $t7, $f8
/* AD61E0 8005F040 00000000 */  nop   
/* AD61E4 8005F044 468042A0 */  cvt.s.w $f10, $f8
/* AD61E8 8005F048 E7AA0074 */  swc1  $f10, 0x74($sp)
/* AD61EC 8005F04C 86180034 */  lh    $t8, 0x34($s0)
/* AD61F0 8005F050 44988000 */  mtc1  $t8, $f16
/* AD61F4 8005F054 00000000 */  nop   
/* AD61F8 8005F058 468084A0 */  cvt.s.w $f18, $f16
/* AD61FC 8005F05C 45010021 */  bc1t  .L8005F0E4
/* AD6200 8005F060 E7B20078 */   swc1  $f18, 0x78($sp)
/* AD6204 8005F064 86190036 */  lh    $t9, 0x36($s0)
/* AD6208 8005F068 C7A20070 */  lwc1  $f2, 0x70($sp)
/* AD620C 8005F06C C7AA007C */  lwc1  $f10, 0x7c($sp)
/* AD6210 8005F070 44993000 */  mtc1  $t9, $f6
/* AD6214 8005F074 02602025 */  move  $a0, $s3
/* AD6218 8005F078 46803220 */  cvt.s.w $f8, $f6
/* AD621C 8005F07C 46044003 */  div.s $f0, $f8, $f4
/* AD6220 8005F080 4616003E */  c.le.s $f0, $f22
/* AD6224 8005F084 00000000 */  nop   
/* AD6228 8005F088 45000012 */  bc1f  .L8005F0D4
/* AD622C 8005F08C 00000000 */   nop   
/* AD6230 8005F090 46025401 */  sub.s $f16, $f10, $f2
/* AD6234 8005F094 C7AC0074 */  lwc1  $f12, 0x74($sp)
/* AD6238 8005F098 C7A80080 */  lwc1  $f8, 0x80($sp)
/* AD623C 8005F09C C7AE0078 */  lwc1  $f14, 0x78($sp)
/* AD6240 8005F0A0 46008482 */  mul.s $f18, $f16, $f0
/* AD6244 8005F0A4 460C4101 */  sub.s $f4, $f8, $f12
/* AD6248 8005F0A8 46002282 */  mul.s $f10, $f4, $f0
/* AD624C 8005F0AC 46029180 */  add.s $f6, $f18, $f2
/* AD6250 8005F0B0 C7B20084 */  lwc1  $f18, 0x84($sp)
/* AD6254 8005F0B4 E7A60088 */  swc1  $f6, 0x88($sp)
/* AD6258 8005F0B8 460E9181 */  sub.s $f6, $f18, $f14
/* AD625C 8005F0BC 460C5400 */  add.s $f16, $f10, $f12
/* AD6260 8005F0C0 46003202 */  mul.s $f8, $f6, $f0
/* AD6264 8005F0C4 E7B0008C */  swc1  $f16, 0x8c($sp)
/* AD6268 8005F0C8 460E4100 */  add.s $f4, $f8, $f14
/* AD626C 8005F0CC 10000007 */  b     .L8005F0EC
/* AD6270 8005F0D0 E7A40090 */   swc1  $f4, 0x90($sp)
.L8005F0D4:
/* AD6274 8005F0D4 0C01DF90 */  jal   func_80077E40
/* AD6278 8005F0D8 02402825 */   move  $a1, $s2
/* AD627C 8005F0DC 10000004 */  b     .L8005F0F0
/* AD6280 8005F0E0 27A80070 */   addiu $t0, $sp, 0x70
.L8005F0E4:
/* AD6284 8005F0E4 0C01DF90 */  jal   func_80077E40
/* AD6288 8005F0E8 02402825 */   move  $a1, $s2
.L8005F0EC:
/* AD628C 8005F0EC 27A80070 */  addiu $t0, $sp, 0x70
.L8005F0F0:
/* AD6290 8005F0F0 AFA80018 */  sw    $t0, 0x18($sp)
/* AD6294 8005F0F4 8FA400A8 */  lw    $a0, 0xa8($sp)
/* AD6298 8005F0F8 02202825 */  move  $a1, $s1
/* AD629C 8005F0FC 02803025 */  move  $a2, $s4
/* AD62A0 8005F100 02403825 */  move  $a3, $s2
/* AD62A4 8005F104 AFB50010 */  sw    $s5, 0x10($sp)
/* AD62A8 8005F108 AFB00014 */  sw    $s0, 0x14($sp)
/* AD62AC 8005F10C 0C017A07 */  jal   func_8005E81C
/* AD62B0 8005F110 AFB3001C */   sw    $s3, 0x1c($sp)
/* AD62B4 8005F114 92A90013 */  lbu   $t1, 0x13($s5)
/* AD62B8 8005F118 312A0040 */  andi  $t2, $t1, 0x40
/* AD62BC 8005F11C 5140000A */  beql  $t2, $zero, .L8005F148
/* AD62C0 8005F120 8FBF005C */   lw    $ra, 0x5c($sp)
.L8005F124:
/* AD62C4 8005F124 8EEC0018 */  lw    $t4, 0x18($s7)
.L8005F128:
/* AD62C8 8005F128 8EEB001C */  lw    $t3, 0x1c($s7)
/* AD62CC 8005F12C 26100040 */  addiu $s0, $s0, 0x40
/* AD62D0 8005F130 000C6980 */  sll   $t5, $t4, 6
/* AD62D4 8005F134 016D7021 */  addu  $t6, $t3, $t5
/* AD62D8 8005F138 020E082B */  sltu  $at, $s0, $t6
/* AD62DC 8005F13C 1420FF98 */  bnez  $at, .L8005EFA0
/* AD62E0 8005F140 00000000 */   nop   
.L8005F144:
/* AD62E4 8005F144 8FBF005C */  lw    $ra, 0x5c($sp)
.L8005F148:
/* AD62E8 8005F148 D7B40028 */  ldc1  $f20, 0x28($sp)
/* AD62EC 8005F14C D7B60030 */  ldc1  $f22, 0x30($sp)
/* AD62F0 8005F150 8FB00038 */  lw    $s0, 0x38($sp)
/* AD62F4 8005F154 8FB1003C */  lw    $s1, 0x3c($sp)
/* AD62F8 8005F158 8FB20040 */  lw    $s2, 0x40($sp)
/* AD62FC 8005F15C 8FB30044 */  lw    $s3, 0x44($sp)
/* AD6300 8005F160 8FB40048 */  lw    $s4, 0x48($sp)
/* AD6304 8005F164 8FB5004C */  lw    $s5, 0x4c($sp)
/* AD6308 8005F168 8FB60050 */  lw    $s6, 0x50($sp)
/* AD630C 8005F16C 8FB70054 */  lw    $s7, 0x54($sp)
/* AD6310 8005F170 8FBE0058 */  lw    $fp, 0x58($sp)
/* AD6314 8005F174 03E00008 */  jr    $ra
/* AD6318 8005F178 27BD00A8 */   addiu $sp, $sp, 0xa8

/* AD631C 8005F17C 27BDFF78 */  addiu $sp, $sp, -0x88
/* AD6320 8005F180 AFBF0044 */  sw    $ra, 0x44($sp)
/* AD6324 8005F184 AFB70040 */  sw    $s7, 0x40($sp)
/* AD6328 8005F188 AFB6003C */  sw    $s6, 0x3c($sp)
/* AD632C 8005F18C AFB50038 */  sw    $s5, 0x38($sp)
/* AD6330 8005F190 AFB40034 */  sw    $s4, 0x34($sp)
/* AD6334 8005F194 AFB30030 */  sw    $s3, 0x30($sp)
/* AD6338 8005F198 AFB2002C */  sw    $s2, 0x2c($sp)
/* AD633C 8005F19C AFB10028 */  sw    $s1, 0x28($sp)
/* AD6340 8005F1A0 AFB00024 */  sw    $s0, 0x24($sp)
/* AD6344 8005F1A4 AFA40088 */  sw    $a0, 0x88($sp)
/* AD6348 8005F1A8 AFA5008C */  sw    $a1, 0x8c($sp)
/* AD634C 8005F1AC 8CC30018 */  lw    $v1, 0x18($a2)
/* AD6350 8005F1B0 00E0B025 */  move  $s6, $a3
/* AD6354 8005F1B4 00C0B825 */  move  $s7, $a2
/* AD6358 8005F1B8 1860006D */  blez  $v1, .L8005F370
/* AD635C 8005F1BC 00E09825 */   move  $s3, $a3
/* AD6360 8005F1C0 8CC2001C */  lw    $v0, 0x1c($a2)
/* AD6364 8005F1C4 5040006B */  beql  $v0, $zero, .L8005F374
/* AD6368 8005F1C8 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD636C 8005F1CC 8CEE0018 */  lw    $t6, 0x18($a3)
/* AD6370 8005F1D0 59C00068 */  blezl $t6, .L8005F374
/* AD6374 8005F1D4 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6378 8005F1D8 8CEF001C */  lw    $t7, 0x1c($a3)
/* AD637C 8005F1DC 0003C180 */  sll   $t8, $v1, 6
/* AD6380 8005F1E0 0058C821 */  addu  $t9, $v0, $t8
/* AD6384 8005F1E4 11E00062 */  beqz  $t7, .L8005F370
/* AD6388 8005F1E8 0059082B */   sltu  $at, $v0, $t9
/* AD638C 8005F1EC 10200060 */  beqz  $at, .L8005F370
/* AD6390 8005F1F0 00409025 */   move  $s2, $v0
/* AD6394 8005F1F4 AFA60090 */  sw    $a2, 0x90($sp)
/* AD6398 8005F1F8 27B5006C */  addiu $s5, $sp, 0x6c
/* AD639C 8005F1FC 2414005C */  li    $s4, 92
/* AD63A0 8005F200 24110001 */  li    $s1, 1
.L8005F204:
/* AD63A4 8005F204 0C0177CB */  jal   func_8005DF2C
/* AD63A8 8005F208 02402025 */   move  $a0, $s2
/* AD63AC 8005F20C 50510051 */  beql  $v0, $s1, .L8005F354
/* AD63B0 8005F210 8EEA0018 */   lw    $t2, 0x18($s7)
/* AD63B4 8005F214 8EC80018 */  lw    $t0, 0x18($s6)
/* AD63B8 8005F218 8ED0001C */  lw    $s0, 0x1c($s6)
/* AD63BC 8005F21C 01140019 */  multu $t0, $s4
/* AD63C0 8005F220 00004812 */  mflo  $t1
/* AD63C4 8005F224 02095021 */  addu  $t2, $s0, $t1
/* AD63C8 8005F228 020A082B */  sltu  $at, $s0, $t2
/* AD63CC 8005F22C 50200049 */  beql  $at, $zero, .L8005F354
/* AD63D0 8005F230 8EEA0018 */   lw    $t2, 0x18($s7)
.L8005F234:
/* AD63D4 8005F234 0C0177D4 */  jal   func_8005DF50
/* AD63D8 8005F238 02002025 */   move  $a0, $s0
/* AD63DC 8005F23C 1051003B */  beq   $v0, $s1, .L8005F32C
/* AD63E0 8005F240 02402025 */   move  $a0, $s2
/* AD63E4 8005F244 0C0177DD */  jal   func_8005DF74
/* AD63E8 8005F248 02002825 */   move  $a1, $s0
/* AD63EC 8005F24C 10510037 */  beq   $v0, $s1, .L8005F32C
/* AD63F0 8005F250 26440030 */   addiu $a0, $s2, 0x30
/* AD63F4 8005F254 26050028 */  addiu $a1, $s0, 0x28
/* AD63F8 8005F258 0C033A4D */  jal   func_800CE934
/* AD63FC 8005F25C 02A03025 */   move  $a2, $s5
/* AD6400 8005F260 54510033 */  bnel  $v0, $s1, .L8005F330
/* AD6404 8005F264 8E780018 */   lw    $t8, 0x18($s3)
/* AD6408 8005F268 864B0030 */  lh    $t3, 0x30($s2)
/* AD640C 8005F26C 3C018014 */  li    $at, 0x80140000 # 0.000000
/* AD6410 8005F270 C420AD04 */  lwc1  $f0, -0x52fc($at)
/* AD6414 8005F274 448B2000 */  mtc1  $t3, $f4
/* AD6418 8005F278 27AE0054 */  addiu $t6, $sp, 0x54
/* AD641C 8005F27C 8FA40088 */  lw    $a0, 0x88($sp)
/* AD6420 8005F280 468021A0 */  cvt.s.w $f6, $f4
/* AD6424 8005F284 8FA50090 */  lw    $a1, 0x90($sp)
/* AD6428 8005F288 02403025 */  move  $a2, $s2
/* AD642C 8005F28C 27A70060 */  addiu $a3, $sp, 0x60
/* AD6430 8005F290 E7A60060 */  swc1  $f6, 0x60($sp)
/* AD6434 8005F294 864C0032 */  lh    $t4, 0x32($s2)
/* AD6438 8005F298 448C4000 */  mtc1  $t4, $f8
/* AD643C 8005F29C 00000000 */  nop   
/* AD6440 8005F2A0 468042A0 */  cvt.s.w $f10, $f8
/* AD6444 8005F2A4 E7AA0064 */  swc1  $f10, 0x64($sp)
/* AD6448 8005F2A8 864D0034 */  lh    $t5, 0x34($s2)
/* AD644C 8005F2AC 448D8000 */  mtc1  $t5, $f16
/* AD6450 8005F2B0 00000000 */  nop   
/* AD6454 8005F2B4 468084A0 */  cvt.s.w $f18, $f16
/* AD6458 8005F2B8 E7B20068 */  swc1  $f18, 0x68($sp)
/* AD645C 8005F2BC C6060034 */  lwc1  $f6, 0x34($s0)
/* AD6460 8005F2C0 C6040028 */  lwc1  $f4, 0x28($s0)
/* AD6464 8005F2C4 C60A0040 */  lwc1  $f10, 0x40($s0)
/* AD6468 8005F2C8 46062200 */  add.s $f8, $f4, $f6
/* AD646C 8005F2CC 46085400 */  add.s $f16, $f10, $f8
/* AD6470 8005F2D0 46008482 */  mul.s $f18, $f16, $f0
/* AD6474 8005F2D4 E7B20054 */  swc1  $f18, 0x54($sp)
/* AD6478 8005F2D8 C6060038 */  lwc1  $f6, 0x38($s0)
/* AD647C 8005F2DC C604002C */  lwc1  $f4, 0x2c($s0)
/* AD6480 8005F2E0 C6080044 */  lwc1  $f8, 0x44($s0)
/* AD6484 8005F2E4 46062280 */  add.s $f10, $f4, $f6
/* AD6488 8005F2E8 460A4400 */  add.s $f16, $f8, $f10
/* AD648C 8005F2EC 46008482 */  mul.s $f18, $f16, $f0
/* AD6490 8005F2F0 E7B20058 */  swc1  $f18, 0x58($sp)
/* AD6494 8005F2F4 C606003C */  lwc1  $f6, 0x3c($s0)
/* AD6498 8005F2F8 C6040030 */  lwc1  $f4, 0x30($s0)
/* AD649C 8005F2FC C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD64A0 8005F300 AFB5001C */  sw    $s5, 0x1c($sp)
/* AD64A4 8005F304 46062200 */  add.s $f8, $f4, $f6
/* AD64A8 8005F308 AFAE0018 */  sw    $t6, 0x18($sp)
/* AD64AC 8005F30C AFB00014 */  sw    $s0, 0x14($sp)
/* AD64B0 8005F310 AFB60010 */  sw    $s6, 0x10($sp)
/* AD64B4 8005F314 46085400 */  add.s $f16, $f10, $f8
/* AD64B8 8005F318 46008482 */  mul.s $f18, $f16, $f0
/* AD64BC 8005F31C 0C017A07 */  jal   func_8005E81C
/* AD64C0 8005F320 E7B2005C */   swc1  $f18, 0x5c($sp)
/* AD64C4 8005F324 10000013 */  b     .L8005F374
/* AD64C8 8005F328 8FBF0044 */   lw    $ra, 0x44($sp)
.L8005F32C:
/* AD64CC 8005F32C 8E780018 */  lw    $t8, 0x18($s3)
.L8005F330:
/* AD64D0 8005F330 8E6F001C */  lw    $t7, 0x1c($s3)
/* AD64D4 8005F334 2610005C */  addiu $s0, $s0, 0x5c
/* AD64D8 8005F338 03140019 */  multu $t8, $s4
/* AD64DC 8005F33C 0000C812 */  mflo  $t9
/* AD64E0 8005F340 01F94021 */  addu  $t0, $t7, $t9
/* AD64E4 8005F344 0208082B */  sltu  $at, $s0, $t0
/* AD64E8 8005F348 1420FFBA */  bnez  $at, .L8005F234
/* AD64EC 8005F34C 00000000 */   nop   
/* AD64F0 8005F350 8EEA0018 */  lw    $t2, 0x18($s7)
.L8005F354:
/* AD64F4 8005F354 8EE9001C */  lw    $t1, 0x1c($s7)
/* AD64F8 8005F358 26520040 */  addiu $s2, $s2, 0x40
/* AD64FC 8005F35C 000A5980 */  sll   $t3, $t2, 6
/* AD6500 8005F360 012B6021 */  addu  $t4, $t1, $t3
/* AD6504 8005F364 024C082B */  sltu  $at, $s2, $t4
/* AD6508 8005F368 1420FFA6 */  bnez  $at, .L8005F204
/* AD650C 8005F36C 00000000 */   nop   
.L8005F370:
/* AD6510 8005F370 8FBF0044 */  lw    $ra, 0x44($sp)
.L8005F374:
/* AD6514 8005F374 8FB00024 */  lw    $s0, 0x24($sp)
/* AD6518 8005F378 8FB10028 */  lw    $s1, 0x28($sp)
/* AD651C 8005F37C 8FB2002C */  lw    $s2, 0x2c($sp)
/* AD6520 8005F380 8FB30030 */  lw    $s3, 0x30($sp)
/* AD6524 8005F384 8FB40034 */  lw    $s4, 0x34($sp)
/* AD6528 8005F388 8FB50038 */  lw    $s5, 0x38($sp)
/* AD652C 8005F38C 8FB6003C */  lw    $s6, 0x3c($sp)
/* AD6530 8005F390 8FB70040 */  lw    $s7, 0x40($sp)
/* AD6534 8005F394 03E00008 */  jr    $ra
/* AD6538 8005F398 27BD0088 */   addiu $sp, $sp, 0x88

/* AD653C 8005F39C 27BDFF68 */  addiu $sp, $sp, -0x98
/* AD6540 8005F3A0 AFBF0054 */  sw    $ra, 0x54($sp)
/* AD6544 8005F3A4 AFBE0050 */  sw    $fp, 0x50($sp)
/* AD6548 8005F3A8 AFB7004C */  sw    $s7, 0x4c($sp)
/* AD654C 8005F3AC AFB60048 */  sw    $s6, 0x48($sp)
/* AD6550 8005F3B0 AFB50044 */  sw    $s5, 0x44($sp)
/* AD6554 8005F3B4 AFB40040 */  sw    $s4, 0x40($sp)
/* AD6558 8005F3B8 AFB3003C */  sw    $s3, 0x3c($sp)
/* AD655C 8005F3BC AFB20038 */  sw    $s2, 0x38($sp)
/* AD6560 8005F3C0 AFB10034 */  sw    $s1, 0x34($sp)
/* AD6564 8005F3C4 AFB00030 */  sw    $s0, 0x30($sp)
/* AD6568 8005F3C8 F7B40028 */  sdc1  $f20, 0x28($sp)
/* AD656C 8005F3CC AFA40098 */  sw    $a0, 0x98($sp)
/* AD6570 8005F3D0 AFA5009C */  sw    $a1, 0x9c($sp)
/* AD6574 8005F3D4 AFA7008C */  sw    $a3, 0x8c($sp)
/* AD6578 8005F3D8 8CE30018 */  lw    $v1, 0x18($a3)
/* AD657C 8005F3DC 00E0B025 */  move  $s6, $a3
/* AD6580 8005F3E0 00C0B825 */  move  $s7, $a2
/* AD6584 8005F3E4 58600066 */  blezl $v1, .L8005F580
/* AD6588 8005F3E8 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD658C 8005F3EC 8CE2001C */  lw    $v0, 0x1c($a3)
/* AD6590 8005F3F0 50400063 */  beql  $v0, $zero, .L8005F580
/* AD6594 8005F3F4 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD6598 8005F3F8 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD659C 8005F3FC 59C00060 */  blezl $t6, .L8005F580
/* AD65A0 8005F400 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD65A4 8005F404 8CCF001C */  lw    $t7, 0x1c($a2)
/* AD65A8 8005F408 0003C180 */  sll   $t8, $v1, 6
/* AD65AC 8005F40C 0058C821 */  addu  $t9, $v0, $t8
/* AD65B0 8005F410 11E0005A */  beqz  $t7, .L8005F57C
/* AD65B4 8005F414 0059082B */   sltu  $at, $v0, $t9
/* AD65B8 8005F418 10200058 */  beqz  $at, .L8005F57C
/* AD65BC 8005F41C 00409825 */   move  $s3, $v0
/* AD65C0 8005F420 3C018014 */  lui   $at, 0x8014
/* AD65C4 8005F424 C434AD08 */  lwc1  $f20, -0x52f8($at)
/* AD65C8 8005F428 AFA600A0 */  sw    $a2, 0xa0($sp)
/* AD65CC 8005F42C 241E005C */  li    $fp, 92
/* AD65D0 8005F430 27B50064 */  addiu $s5, $sp, 0x64
/* AD65D4 8005F434 27B4007C */  addiu $s4, $sp, 0x7c
/* AD65D8 8005F438 24120001 */  li    $s2, 1
.L8005F43C:
/* AD65DC 8005F43C 0C0177D4 */  jal   func_8005DF50
/* AD65E0 8005F440 02602025 */   move  $a0, $s3
/* AD65E4 8005F444 10520044 */  beq   $v0, $s2, .L8005F558
/* AD65E8 8005F448 8FA800A0 */   lw    $t0, 0xa0($sp)
/* AD65EC 8005F44C 8D090018 */  lw    $t1, 0x18($t0)
/* AD65F0 8005F450 8D10001C */  lw    $s0, 0x1c($t0)
/* AD65F4 8005F454 013E0019 */  multu $t1, $fp
/* AD65F8 8005F458 00005012 */  mflo  $t2
/* AD65FC 8005F45C 020A5821 */  addu  $t3, $s0, $t2
/* AD6600 8005F460 020B082B */  sltu  $at, $s0, $t3
/* AD6604 8005F464 5020003D */  beql  $at, $zero, .L8005F55C
/* AD6608 8005F468 8FA2008C */   lw    $v0, 0x8c($sp)
.L8005F46C:
/* AD660C 8005F46C 0C0177CB */  jal   func_8005DF2C
/* AD6610 8005F470 02002025 */   move  $a0, $s0
/* AD6614 8005F474 1052002F */  beq   $v0, $s2, .L8005F534
/* AD6618 8005F478 02002025 */   move  $a0, $s0
/* AD661C 8005F47C 0C0177DD */  jal   func_8005DF74
/* AD6620 8005F480 02602825 */   move  $a1, $s3
/* AD6624 8005F484 1052002B */  beq   $v0, $s2, .L8005F534
/* AD6628 8005F488 26710030 */   addiu $s1, $s3, 0x30
/* AD662C 8005F48C 02202025 */  move  $a0, $s1
/* AD6630 8005F490 26050028 */  addiu $a1, $s0, 0x28
/* AD6634 8005F494 0C033A4D */  jal   func_800CE934
/* AD6638 8005F498 02803025 */   move  $a2, $s4
/* AD663C 8005F49C 14520025 */  bne   $v0, $s2, .L8005F534
/* AD6640 8005F4A0 02A02025 */   move  $a0, $s5
/* AD6644 8005F4A4 0C01DF97 */  jal   func_80077E5C
/* AD6648 8005F4A8 02202825 */   move  $a1, $s1
/* AD664C 8005F4AC C6040028 */  lwc1  $f4, 0x28($s0)
/* AD6650 8005F4B0 C6060034 */  lwc1  $f6, 0x34($s0)
/* AD6654 8005F4B4 C60A0040 */  lwc1  $f10, 0x40($s0)
/* AD6658 8005F4B8 8FA40098 */  lw    $a0, 0x98($sp)
/* AD665C 8005F4BC 46062200 */  add.s $f8, $f4, $f6
/* AD6660 8005F4C0 8FA500A0 */  lw    $a1, 0xa0($sp)
/* AD6664 8005F4C4 02003025 */  move  $a2, $s0
/* AD6668 8005F4C8 27A70070 */  addiu $a3, $sp, 0x70
/* AD666C 8005F4CC 46085400 */  add.s $f16, $f10, $f8
/* AD6670 8005F4D0 46148482 */  mul.s $f18, $f16, $f20
/* AD6674 8005F4D4 E7B20070 */  swc1  $f18, 0x70($sp)
/* AD6678 8005F4D8 C6060038 */  lwc1  $f6, 0x38($s0)
/* AD667C 8005F4DC C604002C */  lwc1  $f4, 0x2c($s0)
/* AD6680 8005F4E0 C6080044 */  lwc1  $f8, 0x44($s0)
/* AD6684 8005F4E4 46062280 */  add.s $f10, $f4, $f6
/* AD6688 8005F4E8 460A4400 */  add.s $f16, $f8, $f10
/* AD668C 8005F4EC 46148482 */  mul.s $f18, $f16, $f20
/* AD6690 8005F4F0 E7B20074 */  swc1  $f18, 0x74($sp)
/* AD6694 8005F4F4 C606003C */  lwc1  $f6, 0x3c($s0)
/* AD6698 8005F4F8 C6040030 */  lwc1  $f4, 0x30($s0)
/* AD669C 8005F4FC C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD66A0 8005F500 AFB4001C */  sw    $s4, 0x1c($sp)
/* AD66A4 8005F504 46062200 */  add.s $f8, $f4, $f6
/* AD66A8 8005F508 AFB50018 */  sw    $s5, 0x18($sp)
/* AD66AC 8005F50C AFB30014 */  sw    $s3, 0x14($sp)
/* AD66B0 8005F510 AFB60010 */  sw    $s6, 0x10($sp)
/* AD66B4 8005F514 46085400 */  add.s $f16, $f10, $f8
/* AD66B8 8005F518 46148482 */  mul.s $f18, $f16, $f20
/* AD66BC 8005F51C 0C017A07 */  jal   func_8005E81C
/* AD66C0 8005F520 E7B20078 */   swc1  $f18, 0x78($sp)
/* AD66C4 8005F524 92CC0013 */  lbu   $t4, 0x13($s6)
/* AD66C8 8005F528 318D0040 */  andi  $t5, $t4, 0x40
/* AD66CC 8005F52C 51A00014 */  beql  $t5, $zero, .L8005F580
/* AD66D0 8005F530 8FBF0054 */   lw    $ra, 0x54($sp)
.L8005F534:
/* AD66D4 8005F534 8EEF0018 */  lw    $t7, 0x18($s7)
/* AD66D8 8005F538 8EEE001C */  lw    $t6, 0x1c($s7)
/* AD66DC 8005F53C 2610005C */  addiu $s0, $s0, 0x5c
/* AD66E0 8005F540 01FE0019 */  multu $t7, $fp
/* AD66E4 8005F544 0000C012 */  mflo  $t8
/* AD66E8 8005F548 01D8C821 */  addu  $t9, $t6, $t8
/* AD66EC 8005F54C 0219082B */  sltu  $at, $s0, $t9
/* AD66F0 8005F550 1420FFC6 */  bnez  $at, .L8005F46C
/* AD66F4 8005F554 00000000 */   nop   
.L8005F558:
/* AD66F8 8005F558 8FA2008C */  lw    $v0, 0x8c($sp)
.L8005F55C:
/* AD66FC 8005F55C 26730040 */  addiu $s3, $s3, 0x40
/* AD6700 8005F560 8C490018 */  lw    $t1, 0x18($v0)
/* AD6704 8005F564 8C48001C */  lw    $t0, 0x1c($v0)
/* AD6708 8005F568 00095180 */  sll   $t2, $t1, 6
/* AD670C 8005F56C 010A5821 */  addu  $t3, $t0, $t2
/* AD6710 8005F570 026B082B */  sltu  $at, $s3, $t3
/* AD6714 8005F574 1420FFB1 */  bnez  $at, .L8005F43C
/* AD6718 8005F578 00000000 */   nop   
.L8005F57C:
/* AD671C 8005F57C 8FBF0054 */  lw    $ra, 0x54($sp)
.L8005F580:
/* AD6720 8005F580 D7B40028 */  ldc1  $f20, 0x28($sp)
/* AD6724 8005F584 8FB00030 */  lw    $s0, 0x30($sp)
/* AD6728 8005F588 8FB10034 */  lw    $s1, 0x34($sp)
/* AD672C 8005F58C 8FB20038 */  lw    $s2, 0x38($sp)
/* AD6730 8005F590 8FB3003C */  lw    $s3, 0x3c($sp)
/* AD6734 8005F594 8FB40040 */  lw    $s4, 0x40($sp)
/* AD6738 8005F598 8FB50044 */  lw    $s5, 0x44($sp)
/* AD673C 8005F59C 8FB60048 */  lw    $s6, 0x48($sp)
/* AD6740 8005F5A0 8FB7004C */  lw    $s7, 0x4c($sp)
/* AD6744 8005F5A4 8FBE0050 */  lw    $fp, 0x50($sp)
/* AD6748 8005F5A8 03E00008 */  jr    $ra
/* AD674C 8005F5AC 27BD0098 */   addiu $sp, $sp, 0x98

/* AD6750 8005F5B0 27BDFF70 */  addiu $sp, $sp, -0x90
/* AD6754 8005F5B4 AFBF004C */  sw    $ra, 0x4c($sp)
/* AD6758 8005F5B8 AFBE0048 */  sw    $fp, 0x48($sp)
/* AD675C 8005F5BC AFB70044 */  sw    $s7, 0x44($sp)
/* AD6760 8005F5C0 AFB60040 */  sw    $s6, 0x40($sp)
/* AD6764 8005F5C4 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD6768 8005F5C8 AFB40038 */  sw    $s4, 0x38($sp)
/* AD676C 8005F5CC AFB30034 */  sw    $s3, 0x34($sp)
/* AD6770 8005F5D0 AFB20030 */  sw    $s2, 0x30($sp)
/* AD6774 8005F5D4 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD6778 8005F5D8 AFB00028 */  sw    $s0, 0x28($sp)
/* AD677C 8005F5DC AFA40090 */  sw    $a0, 0x90($sp)
/* AD6780 8005F5E0 AFA50094 */  sw    $a1, 0x94($sp)
/* AD6784 8005F5E4 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD6788 8005F5E8 00E09825 */  move  $s3, $a3
/* AD678C 8005F5EC 00C0A825 */  move  $s5, $a2
/* AD6790 8005F5F0 59C0006C */  blezl $t6, .L8005F7A4
/* AD6794 8005F5F4 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD6798 8005F5F8 8CCF001C */  lw    $t7, 0x1c($a2)
/* AD679C 8005F5FC 24F60018 */  addiu $s6, $a3, 0x18
/* AD67A0 8005F600 02C02025 */  move  $a0, $s6
/* AD67A4 8005F604 51E00067 */  beql  $t7, $zero, .L8005F7A4
/* AD67A8 8005F608 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD67AC 8005F60C 0C0177D4 */  jal   func_8005DF50
/* AD67B0 8005F610 AFA60098 */   sw    $a2, 0x98($sp)
/* AD67B4 8005F614 24120001 */  li    $s2, 1
/* AD67B8 8005F618 10520061 */  beq   $v0, $s2, .L8005F7A0
/* AD67BC 8005F61C 3C178016 */   lui   $s7, %hi(D_8015E230) # $s7, 0x8016
/* AD67C0 8005F620 26F7E230 */  addiu $s7, %lo(D_8015E230) # addiu $s7, $s7, -0x1dd0
/* AD67C4 8005F624 26710058 */  addiu $s1, $s3, 0x58
/* AD67C8 8005F628 2670004C */  addiu $s0, $s3, 0x4c
/* AD67CC 8005F62C 02003825 */  move  $a3, $s0
/* AD67D0 8005F630 02202825 */  move  $a1, $s1
/* AD67D4 8005F634 02E02025 */  move  $a0, $s7
/* AD67D8 8005F638 0C0338F0 */  jal   func_800CE3C0
/* AD67DC 8005F63C 26660064 */   addiu $a2, $s3, 0x64
/* AD67E0 8005F640 3C1E8016 */  lui   $fp, %hi(D_8015E268) # $fp, 0x8016
/* AD67E4 8005F644 27DEE268 */  addiu $fp, %lo(D_8015E268) # addiu $fp, $fp, -0x1d98
/* AD67E8 8005F648 03C02025 */  move  $a0, $fp
/* AD67EC 8005F64C 02002825 */  move  $a1, $s0
/* AD67F0 8005F650 26660040 */  addiu $a2, $s3, 0x40
/* AD67F4 8005F654 0C0338F0 */  jal   func_800CE3C0
/* AD67F8 8005F658 02203825 */   move  $a3, $s1
/* AD67FC 8005F65C 8FA30098 */  lw    $v1, 0x98($sp)
/* AD6800 8005F660 27B4007C */  addiu $s4, $sp, 0x7c
/* AD6804 8005F664 8C780018 */  lw    $t8, 0x18($v1)
/* AD6808 8005F668 8C70001C */  lw    $s0, 0x1c($v1)
/* AD680C 8005F66C 0018C980 */  sll   $t9, $t8, 6
/* AD6810 8005F670 02194021 */  addu  $t0, $s0, $t9
/* AD6814 8005F674 0208082B */  sltu  $at, $s0, $t0
/* AD6818 8005F678 5020004A */  beql  $at, $zero, .L8005F7A4
/* AD681C 8005F67C 8FBF004C */   lw    $ra, 0x4c($sp)
.L8005F680:
/* AD6820 8005F680 0C0177CB */  jal   func_8005DF2C
/* AD6824 8005F684 02002025 */   move  $a0, $s0
/* AD6828 8005F688 1052003D */  beq   $v0, $s2, .L8005F780
/* AD682C 8005F68C 02002025 */   move  $a0, $s0
/* AD6830 8005F690 0C0177DD */  jal   func_8005DF74
/* AD6834 8005F694 02C02825 */   move  $a1, $s6
/* AD6838 8005F698 10520039 */  beq   $v0, $s2, .L8005F780
/* AD683C 8005F69C 26110030 */   addiu $s1, $s0, 0x30
/* AD6840 8005F6A0 02202025 */  move  $a0, $s1
/* AD6844 8005F6A4 02E02825 */  move  $a1, $s7
/* AD6848 8005F6A8 0C033A4D */  jal   func_800CE934
/* AD684C 8005F6AC 02803025 */   move  $a2, $s4
/* AD6850 8005F6B0 10520006 */  beq   $v0, $s2, .L8005F6CC
/* AD6854 8005F6B4 02202025 */   move  $a0, $s1
/* AD6858 8005F6B8 03C02825 */  move  $a1, $fp
/* AD685C 8005F6BC 0C033A4D */  jal   func_800CE934
/* AD6860 8005F6C0 02803025 */   move  $a2, $s4
/* AD6864 8005F6C4 5452002F */  bnel  $v0, $s2, .L8005F784
/* AD6868 8005F6C8 8EAB0018 */   lw    $t3, 0x18($s5)
.L8005F6CC:
/* AD686C 8005F6CC 27B2006C */  addiu $s2, $sp, 0x6c
/* AD6870 8005F6D0 02402025 */  move  $a0, $s2
/* AD6874 8005F6D4 0C01DF97 */  jal   func_80077E5C
/* AD6878 8005F6D8 02202825 */   move  $a1, $s1
/* AD687C 8005F6DC C6640058 */  lwc1  $f4, 0x58($s3)
/* AD6880 8005F6E0 C6660064 */  lwc1  $f6, 0x64($s3)
/* AD6884 8005F6E4 C66A004C */  lwc1  $f10, 0x4c($s3)
/* AD6888 8005F6E8 C6720040 */  lwc1  $f18, 0x40($s3)
/* AD688C 8005F6EC 46062200 */  add.s $f8, $f4, $f6
/* AD6890 8005F6F0 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD6894 8005F6F4 44810000 */  mtc1  $at, $f0
/* AD6898 8005F6F8 27A90060 */  addiu $t1, $sp, 0x60
/* AD689C 8005F6FC 460A4400 */  add.s $f16, $f8, $f10
/* AD68A0 8005F700 8FA40090 */  lw    $a0, 0x90($sp)
/* AD68A4 8005F704 8FA50098 */  lw    $a1, 0x98($sp)
/* AD68A8 8005F708 02003025 */  move  $a2, $s0
/* AD68AC 8005F70C 46128100 */  add.s $f4, $f16, $f18
/* AD68B0 8005F710 02403825 */  move  $a3, $s2
/* AD68B4 8005F714 46002182 */  mul.s $f6, $f4, $f0
/* AD68B8 8005F718 E7A60060 */  swc1  $f6, 0x60($sp)
/* AD68BC 8005F71C C66A0068 */  lwc1  $f10, 0x68($s3)
/* AD68C0 8005F720 C668005C */  lwc1  $f8, 0x5c($s3)
/* AD68C4 8005F724 C6720050 */  lwc1  $f18, 0x50($s3)
/* AD68C8 8005F728 C6660044 */  lwc1  $f6, 0x44($s3)
/* AD68CC 8005F72C 460A4400 */  add.s $f16, $f8, $f10
/* AD68D0 8005F730 46128100 */  add.s $f4, $f16, $f18
/* AD68D4 8005F734 46062200 */  add.s $f8, $f4, $f6
/* AD68D8 8005F738 46004282 */  mul.s $f10, $f8, $f0
/* AD68DC 8005F73C E7AA0064 */  swc1  $f10, 0x64($sp)
/* AD68E0 8005F740 C672006C */  lwc1  $f18, 0x6c($s3)
/* AD68E4 8005F744 C6700060 */  lwc1  $f16, 0x60($s3)
/* AD68E8 8005F748 C6660054 */  lwc1  $f6, 0x54($s3)
/* AD68EC 8005F74C C66A0048 */  lwc1  $f10, 0x48($s3)
/* AD68F0 8005F750 46128100 */  add.s $f4, $f16, $f18
/* AD68F4 8005F754 AFB4001C */  sw    $s4, 0x1c($sp)
/* AD68F8 8005F758 AFA90018 */  sw    $t1, 0x18($sp)
/* AD68FC 8005F75C AFB60014 */  sw    $s6, 0x14($sp)
/* AD6900 8005F760 46062200 */  add.s $f8, $f4, $f6
/* AD6904 8005F764 AFB30010 */  sw    $s3, 0x10($sp)
/* AD6908 8005F768 460A4400 */  add.s $f16, $f8, $f10
/* AD690C 8005F76C 46008482 */  mul.s $f18, $f16, $f0
/* AD6910 8005F770 0C017A07 */  jal   func_8005E81C
/* AD6914 8005F774 E7B20068 */   swc1  $f18, 0x68($sp)
/* AD6918 8005F778 1000000A */  b     .L8005F7A4
/* AD691C 8005F77C 8FBF004C */   lw    $ra, 0x4c($sp)
.L8005F780:
/* AD6920 8005F780 8EAB0018 */  lw    $t3, 0x18($s5)
.L8005F784:
/* AD6924 8005F784 8EAA001C */  lw    $t2, 0x1c($s5)
/* AD6928 8005F788 26100040 */  addiu $s0, $s0, 0x40
/* AD692C 8005F78C 000B6180 */  sll   $t4, $t3, 6
/* AD6930 8005F790 014C6821 */  addu  $t5, $t2, $t4
/* AD6934 8005F794 020D082B */  sltu  $at, $s0, $t5
/* AD6938 8005F798 1420FFB9 */  bnez  $at, .L8005F680
/* AD693C 8005F79C 00000000 */   nop   
.L8005F7A0:
/* AD6940 8005F7A0 8FBF004C */  lw    $ra, 0x4c($sp)
.L8005F7A4:
/* AD6944 8005F7A4 8FB00028 */  lw    $s0, 0x28($sp)
/* AD6948 8005F7A8 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD694C 8005F7AC 8FB20030 */  lw    $s2, 0x30($sp)
/* AD6950 8005F7B0 8FB30034 */  lw    $s3, 0x34($sp)
/* AD6954 8005F7B4 8FB40038 */  lw    $s4, 0x38($sp)
/* AD6958 8005F7B8 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD695C 8005F7BC 8FB60040 */  lw    $s6, 0x40($sp)
/* AD6960 8005F7C0 8FB70044 */  lw    $s7, 0x44($sp)
/* AD6964 8005F7C4 8FBE0048 */  lw    $fp, 0x48($sp)
/* AD6968 8005F7C8 03E00008 */  jr    $ra
/* AD696C 8005F7CC 27BD0090 */   addiu $sp, $sp, 0x90

/* AD6970 8005F7D0 27BDFF68 */  addiu $sp, $sp, -0x98
/* AD6974 8005F7D4 AFBF0054 */  sw    $ra, 0x54($sp)
/* AD6978 8005F7D8 AFBE0050 */  sw    $fp, 0x50($sp)
/* AD697C 8005F7DC AFB7004C */  sw    $s7, 0x4c($sp)
/* AD6980 8005F7E0 AFB60048 */  sw    $s6, 0x48($sp)
/* AD6984 8005F7E4 AFB50044 */  sw    $s5, 0x44($sp)
/* AD6988 8005F7E8 AFB40040 */  sw    $s4, 0x40($sp)
/* AD698C 8005F7EC AFB3003C */  sw    $s3, 0x3c($sp)
/* AD6990 8005F7F0 AFB20038 */  sw    $s2, 0x38($sp)
/* AD6994 8005F7F4 AFB10034 */  sw    $s1, 0x34($sp)
/* AD6998 8005F7F8 AFB00030 */  sw    $s0, 0x30($sp)
/* AD699C 8005F7FC F7B40028 */  sdc1  $f20, 0x28($sp)
/* AD69A0 8005F800 AFA5009C */  sw    $a1, 0x9c($sp)
/* AD69A4 8005F804 8CEE0018 */  lw    $t6, 0x18($a3)
/* AD69A8 8005F808 00C08025 */  move  $s0, $a2
/* AD69AC 8005F80C 00E0A825 */  move  $s5, $a3
/* AD69B0 8005F810 0080F025 */  move  $fp, $a0
/* AD69B4 8005F814 19C00079 */  blez  $t6, .L8005F9FC
/* AD69B8 8005F818 00E0B825 */   move  $s7, $a3
/* AD69BC 8005F81C 8CEF001C */  lw    $t7, 0x1c($a3)
/* AD69C0 8005F820 24D60018 */  addiu $s6, $a2, 0x18
/* AD69C4 8005F824 51E00076 */  beql  $t7, $zero, .L8005FA00
/* AD69C8 8005F828 8FBF0054 */   lw    $ra, 0x54($sp)
/* AD69CC 8005F82C 0C0177CB */  jal   func_8005DF2C
/* AD69D0 8005F830 02C02025 */   move  $a0, $s6
/* AD69D4 8005F834 24140001 */  li    $s4, 1
/* AD69D8 8005F838 10540070 */  beq   $v0, $s4, .L8005F9FC
/* AD69DC 8005F83C 3C048016 */   lui   $a0, %hi(D_8015E2A0) # $a0, 0x8016
/* AD69E0 8005F840 26110058 */  addiu $s1, $s0, 0x58
/* AD69E4 8005F844 2612004C */  addiu $s2, $s0, 0x4c
/* AD69E8 8005F848 02403825 */  move  $a3, $s2
/* AD69EC 8005F84C 02202825 */  move  $a1, $s1
/* AD69F0 8005F850 2484E2A0 */  addiu $a0, %lo(D_8015E2A0) # addiu $a0, $a0, -0x1d60
/* AD69F4 8005F854 0C0338F0 */  jal   func_800CE3C0
/* AD69F8 8005F858 26060064 */   addiu $a2, $s0, 0x64
/* AD69FC 8005F85C 3C048016 */  lui   $a0, %hi(D_8015E2D8) # $a0, 0x8016
/* AD6A00 8005F860 2484E2D8 */  addiu $a0, %lo(D_8015E2D8) # addiu $a0, $a0, -0x1d28
/* AD6A04 8005F864 02202825 */  move  $a1, $s1
/* AD6A08 8005F868 02403025 */  move  $a2, $s2
/* AD6A0C 8005F86C 0C0338F0 */  jal   func_800CE3C0
/* AD6A10 8005F870 26070040 */   addiu $a3, $s0, 0x40
/* AD6A14 8005F874 8EB80018 */  lw    $t8, 0x18($s5)
/* AD6A18 8005F878 8EB1001C */  lw    $s1, 0x1c($s5)
/* AD6A1C 8005F87C 0018C980 */  sll   $t9, $t8, 6
/* AD6A20 8005F880 02394021 */  addu  $t0, $s1, $t9
/* AD6A24 8005F884 0228082B */  sltu  $at, $s1, $t0
/* AD6A28 8005F888 1020005C */  beqz  $at, .L8005F9FC
/* AD6A2C 8005F88C 3C013E80 */   li    $at, 0x3E800000 # 0.000000
/* AD6A30 8005F890 4481A000 */  mtc1  $at, $f20
/* AD6A34 8005F894 27B30088 */  addiu $s3, $sp, 0x88
.L8005F898:
/* AD6A38 8005F898 0C0177D4 */  jal   func_8005DF50
/* AD6A3C 8005F89C 02202025 */   move  $a0, $s1
/* AD6A40 8005F8A0 1054004E */  beq   $v0, $s4, .L8005F9DC
/* AD6A44 8005F8A4 02C02025 */   move  $a0, $s6
/* AD6A48 8005F8A8 0C0177DD */  jal   func_8005DF74
/* AD6A4C 8005F8AC 02202825 */   move  $a1, $s1
/* AD6A50 8005F8B0 1054004A */  beq   $v0, $s4, .L8005F9DC
/* AD6A54 8005F8B4 26320030 */   addiu $s2, $s1, 0x30
/* AD6A58 8005F8B8 3C058016 */  lui   $a1, %hi(D_8015E2A0) # $a1, 0x8016
/* AD6A5C 8005F8BC 24A5E2A0 */  addiu $a1, %lo(D_8015E2A0) # addiu $a1, $a1, -0x1d60
/* AD6A60 8005F8C0 02402025 */  move  $a0, $s2
/* AD6A64 8005F8C4 0C033A4D */  jal   func_800CE934
/* AD6A68 8005F8C8 02603025 */   move  $a2, $s3
/* AD6A6C 8005F8CC 10540006 */  beq   $v0, $s4, .L8005F8E8
/* AD6A70 8005F8D0 02402025 */   move  $a0, $s2
/* AD6A74 8005F8D4 3C058016 */  lui   $a1, %hi(D_8015E2D8) # $a1, 0x8016
/* AD6A78 8005F8D8 24A5E2D8 */  addiu $a1, %lo(D_8015E2D8) # addiu $a1, $a1, -0x1d28
/* AD6A7C 8005F8DC 0C033A4D */  jal   func_800CE934
/* AD6A80 8005F8E0 02603025 */   move  $a2, $s3
/* AD6A84 8005F8E4 1454003D */  bne   $v0, $s4, .L8005F9DC
.L8005F8E8:
/* AD6A88 8005F8E8 03C02025 */   move  $a0, $fp
/* AD6A8C 8005F8EC 02002825 */  move  $a1, $s0
/* AD6A90 8005F8F0 0C017486 */  jal   func_8005D218
/* AD6A94 8005F8F4 02603025 */   move  $a2, $s3
/* AD6A98 8005F8F8 50400039 */  beql  $v0, $zero, .L8005F9E0
/* AD6A9C 8005F8FC 8EF80018 */   lw    $t8, 0x18($s7)
/* AD6AA0 8005F900 86290030 */  lh    $t1, 0x30($s1)
/* AD6AA4 8005F904 27AC0068 */  addiu $t4, $sp, 0x68
/* AD6AA8 8005F908 03C02025 */  move  $a0, $fp
/* AD6AAC 8005F90C 44892000 */  mtc1  $t1, $f4
/* AD6AB0 8005F910 02002825 */  move  $a1, $s0
/* AD6AB4 8005F914 02C03025 */  move  $a2, $s6
/* AD6AB8 8005F918 468021A0 */  cvt.s.w $f6, $f4
/* AD6ABC 8005F91C 27A70074 */  addiu $a3, $sp, 0x74
/* AD6AC0 8005F920 E7A60068 */  swc1  $f6, 0x68($sp)
/* AD6AC4 8005F924 862A0032 */  lh    $t2, 0x32($s1)
/* AD6AC8 8005F928 448A4000 */  mtc1  $t2, $f8
/* AD6ACC 8005F92C 00000000 */  nop   
/* AD6AD0 8005F930 468042A0 */  cvt.s.w $f10, $f8
/* AD6AD4 8005F934 E7AA006C */  swc1  $f10, 0x6c($sp)
/* AD6AD8 8005F938 862B0034 */  lh    $t3, 0x34($s1)
/* AD6ADC 8005F93C 448B8000 */  mtc1  $t3, $f16
/* AD6AE0 8005F940 00000000 */  nop   
/* AD6AE4 8005F944 468084A0 */  cvt.s.w $f18, $f16
/* AD6AE8 8005F948 E7B20070 */  swc1  $f18, 0x70($sp)
/* AD6AEC 8005F94C C6060064 */  lwc1  $f6, 0x64($s0)
/* AD6AF0 8005F950 C6040058 */  lwc1  $f4, 0x58($s0)
/* AD6AF4 8005F954 C60A004C */  lwc1  $f10, 0x4c($s0)
/* AD6AF8 8005F958 C6120040 */  lwc1  $f18, 0x40($s0)
/* AD6AFC 8005F95C 46062200 */  add.s $f8, $f4, $f6
/* AD6B00 8005F960 460A4400 */  add.s $f16, $f8, $f10
/* AD6B04 8005F964 46128100 */  add.s $f4, $f16, $f18
/* AD6B08 8005F968 46142182 */  mul.s $f6, $f4, $f20
/* AD6B0C 8005F96C E7A60074 */  swc1  $f6, 0x74($sp)
/* AD6B10 8005F970 C60A0068 */  lwc1  $f10, 0x68($s0)
/* AD6B14 8005F974 C608005C */  lwc1  $f8, 0x5c($s0)
/* AD6B18 8005F978 C6120050 */  lwc1  $f18, 0x50($s0)
/* AD6B1C 8005F97C C6060044 */  lwc1  $f6, 0x44($s0)
/* AD6B20 8005F980 460A4400 */  add.s $f16, $f8, $f10
/* AD6B24 8005F984 46128100 */  add.s $f4, $f16, $f18
/* AD6B28 8005F988 46062200 */  add.s $f8, $f4, $f6
/* AD6B2C 8005F98C 46144282 */  mul.s $f10, $f8, $f20
/* AD6B30 8005F990 E7AA0078 */  swc1  $f10, 0x78($sp)
/* AD6B34 8005F994 C612006C */  lwc1  $f18, 0x6c($s0)
/* AD6B38 8005F998 C6100060 */  lwc1  $f16, 0x60($s0)
/* AD6B3C 8005F99C C6060054 */  lwc1  $f6, 0x54($s0)
/* AD6B40 8005F9A0 C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD6B44 8005F9A4 46128100 */  add.s $f4, $f16, $f18
/* AD6B48 8005F9A8 AFB3001C */  sw    $s3, 0x1c($sp)
/* AD6B4C 8005F9AC AFAC0018 */  sw    $t4, 0x18($sp)
/* AD6B50 8005F9B0 AFB10014 */  sw    $s1, 0x14($sp)
/* AD6B54 8005F9B4 46062200 */  add.s $f8, $f4, $f6
/* AD6B58 8005F9B8 AFB50010 */  sw    $s5, 0x10($sp)
/* AD6B5C 8005F9BC 460A4400 */  add.s $f16, $f8, $f10
/* AD6B60 8005F9C0 46148482 */  mul.s $f18, $f16, $f20
/* AD6B64 8005F9C4 0C017A07 */  jal   func_8005E81C
/* AD6B68 8005F9C8 E7B2007C */   swc1  $f18, 0x7c($sp)
/* AD6B6C 8005F9CC 92AD0013 */  lbu   $t5, 0x13($s5)
/* AD6B70 8005F9D0 31AE0040 */  andi  $t6, $t5, 0x40
/* AD6B74 8005F9D4 51C0000A */  beql  $t6, $zero, .L8005FA00
/* AD6B78 8005F9D8 8FBF0054 */   lw    $ra, 0x54($sp)
.L8005F9DC:
/* AD6B7C 8005F9DC 8EF80018 */  lw    $t8, 0x18($s7)
.L8005F9E0:
/* AD6B80 8005F9E0 8EEF001C */  lw    $t7, 0x1c($s7)
/* AD6B84 8005F9E4 26310040 */  addiu $s1, $s1, 0x40
/* AD6B88 8005F9E8 0018C980 */  sll   $t9, $t8, 6
/* AD6B8C 8005F9EC 01F94021 */  addu  $t0, $t7, $t9
/* AD6B90 8005F9F0 0228082B */  sltu  $at, $s1, $t0
/* AD6B94 8005F9F4 1420FFA8 */  bnez  $at, .L8005F898
/* AD6B98 8005F9F8 00000000 */   nop   
.L8005F9FC:
/* AD6B9C 8005F9FC 8FBF0054 */  lw    $ra, 0x54($sp)
.L8005FA00:
/* AD6BA0 8005FA00 D7B40028 */  ldc1  $f20, 0x28($sp)
/* AD6BA4 8005FA04 8FB00030 */  lw    $s0, 0x30($sp)
/* AD6BA8 8005FA08 8FB10034 */  lw    $s1, 0x34($sp)
/* AD6BAC 8005FA0C 8FB20038 */  lw    $s2, 0x38($sp)
/* AD6BB0 8005FA10 8FB3003C */  lw    $s3, 0x3c($sp)
/* AD6BB4 8005FA14 8FB40040 */  lw    $s4, 0x40($sp)
/* AD6BB8 8005FA18 8FB50044 */  lw    $s5, 0x44($sp)
/* AD6BBC 8005FA1C 8FB60048 */  lw    $s6, 0x48($sp)
/* AD6BC0 8005FA20 8FB7004C */  lw    $s7, 0x4c($sp)
/* AD6BC4 8005FA24 8FBE0050 */  lw    $fp, 0x50($sp)
/* AD6BC8 8005FA28 03E00008 */  jr    $ra
/* AD6BCC 8005FA2C 27BD0098 */   addiu $sp, $sp, 0x98

/* AD6BD0 8005FA30 27BDFF88 */  addiu $sp, $sp, -0x78
/* AD6BD4 8005FA34 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD6BD8 8005FA38 AFB10028 */  sw    $s1, 0x28($sp)
/* AD6BDC 8005FA3C AFB00024 */  sw    $s0, 0x24($sp)
/* AD6BE0 8005FA40 AFA40078 */  sw    $a0, 0x78($sp)
/* AD6BE4 8005FA44 AFA5007C */  sw    $a1, 0x7c($sp)
/* AD6BE8 8005FA48 84CE0040 */  lh    $t6, 0x40($a2)
/* AD6BEC 8005FA4C 00E08025 */  move  $s0, $a3
/* AD6BF0 8005FA50 00C08825 */  move  $s1, $a2
/* AD6BF4 8005FA54 59C00067 */  blezl $t6, .L8005FBF4
/* AD6BF8 8005FA58 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD6BFC 8005FA5C 84CF0042 */  lh    $t7, 0x42($a2)
/* AD6C00 8005FA60 59E00064 */  blezl $t7, .L8005FBF4
/* AD6C04 8005FA64 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD6C08 8005FA68 84F80040 */  lh    $t8, 0x40($a3)
/* AD6C0C 8005FA6C 5B000061 */  blezl $t8, .L8005FBF4
/* AD6C10 8005FA70 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD6C14 8005FA74 84F90042 */  lh    $t9, 0x42($a3)
/* AD6C18 8005FA78 24E40018 */  addiu $a0, $a3, 0x18
/* AD6C1C 8005FA7C 5B20005D */  blezl $t9, .L8005FBF4
/* AD6C20 8005FA80 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD6C24 8005FA84 0C0177D4 */  jal   func_8005DF50
/* AD6C28 8005FA88 AFA40034 */   sw    $a0, 0x34($sp)
/* AD6C2C 8005FA8C 24010001 */  li    $at, 1
/* AD6C30 8005FA90 10410057 */  beq   $v0, $at, .L8005FBF0
/* AD6C34 8005FA94 26240018 */   addiu $a0, $s1, 0x18
/* AD6C38 8005FA98 0C0177CB */  jal   func_8005DF2C
/* AD6C3C 8005FA9C AFA40038 */   sw    $a0, 0x38($sp)
/* AD6C40 8005FAA0 24010001 */  li    $at, 1
/* AD6C44 8005FAA4 10410052 */  beq   $v0, $at, .L8005FBF0
/* AD6C48 8005FAA8 8FA40038 */   lw    $a0, 0x38($sp)
/* AD6C4C 8005FAAC 0C0177DD */  jal   func_8005DF74
/* AD6C50 8005FAB0 8FA50034 */   lw    $a1, 0x34($sp)
/* AD6C54 8005FAB4 24010001 */  li    $at, 1
/* AD6C58 8005FAB8 1041004D */  beq   $v0, $at, .L8005FBF0
/* AD6C5C 8005FABC 26240040 */   addiu $a0, $s1, 0x40
/* AD6C60 8005FAC0 26050040 */  addiu $a1, $s0, 0x40
/* AD6C64 8005FAC4 27A6006C */  addiu $a2, $sp, 0x6c
/* AD6C68 8005FAC8 0C033FCD */  jal   func_800CFF34
/* AD6C6C 8005FACC 27A70068 */   addiu $a3, $sp, 0x68
/* AD6C70 8005FAD0 24010001 */  li    $at, 1
/* AD6C74 8005FAD4 14410046 */  bne   $v0, $at, .L8005FBF0
/* AD6C78 8005FAD8 27A40050 */   addiu $a0, $sp, 0x50
/* AD6C7C 8005FADC 0C01DF97 */  jal   func_80077E5C
/* AD6C80 8005FAE0 26250046 */   addiu $a1, $s1, 0x46
/* AD6C84 8005FAE4 26050046 */  addiu $a1, $s0, 0x46
/* AD6C88 8005FAE8 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD6C8C 8005FAEC 0C01DF97 */  jal   func_80077E5C
/* AD6C90 8005FAF0 27A40044 */   addiu $a0, $sp, 0x44
/* AD6C94 8005FAF4 C7A40068 */  lwc1  $f4, 0x68($sp)
/* AD6C98 8005FAF8 3C018014 */  li    $at, 0x80140000 # 0.000000
/* AD6C9C 8005FAFC C426AD0C */  lwc1  $f6, -0x52f4($at)
/* AD6CA0 8005FB00 46002005 */  abs.s $f0, $f4
/* AD6CA4 8005FB04 8FA5003C */  lw    $a1, 0x3c($sp)
/* AD6CA8 8005FB08 4606003C */  c.lt.s $f0, $f6
/* AD6CAC 8005FB0C 00000000 */  nop   
/* AD6CB0 8005FB10 45010029 */  bc1t  .L8005FBB8
/* AD6CB4 8005FB14 00000000 */   nop   
/* AD6CB8 8005FB18 86080040 */  lh    $t0, 0x40($s0)
/* AD6CBC 8005FB1C 86090048 */  lh    $t1, 0x48($s0)
/* AD6CC0 8005FB20 860A0044 */  lh    $t2, 0x44($s0)
/* AD6CC4 8005FB24 44884000 */  mtc1  $t0, $f8
/* AD6CC8 8005FB28 860B0042 */  lh    $t3, 0x42($s0)
/* AD6CCC 8005FB2C 44898000 */  mtc1  $t1, $f16
/* AD6CD0 8005FB30 468042A0 */  cvt.s.w $f10, $f8
/* AD6CD4 8005FB34 448A3000 */  mtc1  $t2, $f6
/* AD6CD8 8005FB38 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AD6CDC 8005FB3C 468084A0 */  cvt.s.w $f18, $f16
/* AD6CE0 8005FB40 46045003 */  div.s $f0, $f10, $f4
/* AD6CE4 8005FB44 448B2000 */  mtc1  $t3, $f4
/* AD6CE8 8005FB48 46803220 */  cvt.s.w $f8, $f6
/* AD6CEC 8005FB4C 44813000 */  mtc1  $at, $f6
/* AD6CF0 8005FB50 46802420 */  cvt.s.w $f16, $f4
/* AD6CF4 8005FB54 46089280 */  add.s $f10, $f18, $f8
/* AD6CF8 8005FB58 46068482 */  mul.s $f18, $f16, $f6
/* AD6CFC 8005FB5C 46125200 */  add.s $f8, $f10, $f18
/* AD6D00 8005FB60 E7A80060 */  swc1  $f8, 0x60($sp)
/* AD6D04 8005FB64 862D0046 */  lh    $t5, 0x46($s1)
/* AD6D08 8005FB68 860C0046 */  lh    $t4, 0x46($s0)
/* AD6D0C 8005FB6C 448D8000 */  mtc1  $t5, $f16
/* AD6D10 8005FB70 448C2000 */  mtc1  $t4, $f4
/* AD6D14 8005FB74 468081A0 */  cvt.s.w $f6, $f16
/* AD6D18 8005FB78 468020A0 */  cvt.s.w $f2, $f4
/* AD6D1C 8005FB7C 46023281 */  sub.s $f10, $f6, $f2
/* AD6D20 8005FB80 46005482 */  mul.s $f18, $f10, $f0
/* AD6D24 8005FB84 46029200 */  add.s $f8, $f18, $f2
/* AD6D28 8005FB88 E7A8005C */  swc1  $f8, 0x5c($sp)
/* AD6D2C 8005FB8C 862F004A */  lh    $t7, 0x4a($s1)
/* AD6D30 8005FB90 860E004A */  lh    $t6, 0x4a($s0)
/* AD6D34 8005FB94 448F8000 */  mtc1  $t7, $f16
/* AD6D38 8005FB98 448E2000 */  mtc1  $t6, $f4
/* AD6D3C 8005FB9C 468081A0 */  cvt.s.w $f6, $f16
/* AD6D40 8005FBA0 46802320 */  cvt.s.w $f12, $f4
/* AD6D44 8005FBA4 460C3281 */  sub.s $f10, $f6, $f12
/* AD6D48 8005FBA8 46005482 */  mul.s $f18, $f10, $f0
/* AD6D4C 8005FBAC 460C9200 */  add.s $f8, $f18, $f12
/* AD6D50 8005FBB0 10000003 */  b     .L8005FBC0
/* AD6D54 8005FBB4 E7A80064 */   swc1  $f8, 0x64($sp)
.L8005FBB8:
/* AD6D58 8005FBB8 0C01DF97 */  jal   func_80077E5C
/* AD6D5C 8005FBBC 27A4005C */   addiu $a0, $sp, 0x5c
.L8005FBC0:
/* AD6D60 8005FBC0 8FB80034 */  lw    $t8, 0x34($sp)
/* AD6D64 8005FBC4 27B90044 */  addiu $t9, $sp, 0x44
/* AD6D68 8005FBC8 27A8005C */  addiu $t0, $sp, 0x5c
/* AD6D6C 8005FBCC AFA8001C */  sw    $t0, 0x1c($sp)
/* AD6D70 8005FBD0 AFB90018 */  sw    $t9, 0x18($sp)
/* AD6D74 8005FBD4 8FA40078 */  lw    $a0, 0x78($sp)
/* AD6D78 8005FBD8 02202825 */  move  $a1, $s1
/* AD6D7C 8005FBDC 8FA60038 */  lw    $a2, 0x38($sp)
/* AD6D80 8005FBE0 27A70050 */  addiu $a3, $sp, 0x50
/* AD6D84 8005FBE4 AFB00010 */  sw    $s0, 0x10($sp)
/* AD6D88 8005FBE8 0C017A07 */  jal   func_8005E81C
/* AD6D8C 8005FBEC AFB80014 */   sw    $t8, 0x14($sp)
.L8005FBF0:
/* AD6D90 8005FBF0 8FBF002C */  lw    $ra, 0x2c($sp)
.L8005FBF4:
/* AD6D94 8005FBF4 8FB00024 */  lw    $s0, 0x24($sp)
/* AD6D98 8005FBF8 8FB10028 */  lw    $s1, 0x28($sp)
/* AD6D9C 8005FBFC 03E00008 */  jr    $ra
/* AD6DA0 8005FC00 27BD0078 */   addiu $sp, $sp, 0x78

/* AD6DA4 8005FC04 27BDFF80 */  addiu $sp, $sp, -0x80
/* AD6DA8 8005FC08 AFBF0044 */  sw    $ra, 0x44($sp)
/* AD6DAC 8005FC0C AFB60040 */  sw    $s6, 0x40($sp)
/* AD6DB0 8005FC10 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD6DB4 8005FC14 AFB40038 */  sw    $s4, 0x38($sp)
/* AD6DB8 8005FC18 AFB30034 */  sw    $s3, 0x34($sp)
/* AD6DBC 8005FC1C AFB20030 */  sw    $s2, 0x30($sp)
/* AD6DC0 8005FC20 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD6DC4 8005FC24 AFB00028 */  sw    $s0, 0x28($sp)
/* AD6DC8 8005FC28 AFA40080 */  sw    $a0, 0x80($sp)
/* AD6DCC 8005FC2C AFA50084 */  sw    $a1, 0x84($sp)
/* AD6DD0 8005FC30 84CE0040 */  lh    $t6, 0x40($a2)
/* AD6DD4 8005FC34 00C09025 */  move  $s2, $a2
/* AD6DD8 8005FC38 00E09825 */  move  $s3, $a3
/* AD6DDC 8005FC3C 59C0005A */  blezl $t6, .L8005FDA8
/* AD6DE0 8005FC40 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6DE4 8005FC44 84CF0042 */  lh    $t7, 0x42($a2)
/* AD6DE8 8005FC48 59E00057 */  blezl $t7, .L8005FDA8
/* AD6DEC 8005FC4C 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6DF0 8005FC50 8CF80018 */  lw    $t8, 0x18($a3)
/* AD6DF4 8005FC54 5B000054 */  blezl $t8, .L8005FDA8
/* AD6DF8 8005FC58 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6DFC 8005FC5C 8CF9001C */  lw    $t9, 0x1c($a3)
/* AD6E00 8005FC60 24D50018 */  addiu $s5, $a2, 0x18
/* AD6E04 8005FC64 02A02025 */  move  $a0, $s5
/* AD6E08 8005FC68 5320004F */  beql  $t9, $zero, .L8005FDA8
/* AD6E0C 8005FC6C 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6E10 8005FC70 0C0177CB */  jal   func_8005DF2C
/* AD6E14 8005FC74 AFA7008C */   sw    $a3, 0x8c($sp)
/* AD6E18 8005FC78 24110001 */  li    $s1, 1
/* AD6E1C 8005FC7C 10510049 */  beq   $v0, $s1, .L8005FDA4
/* AD6E20 8005FC80 8FA3008C */   lw    $v1, 0x8c($sp)
/* AD6E24 8005FC84 8C680018 */  lw    $t0, 0x18($v1)
/* AD6E28 8005FC88 2416005C */  li    $s6, 92
/* AD6E2C 8005FC8C 8C70001C */  lw    $s0, 0x1c($v1)
/* AD6E30 8005FC90 01160019 */  multu $t0, $s6
/* AD6E34 8005FC94 27B40068 */  addiu $s4, $sp, 0x68
/* AD6E38 8005FC98 00004812 */  mflo  $t1
/* AD6E3C 8005FC9C 02095021 */  addu  $t2, $s0, $t1
/* AD6E40 8005FCA0 020A082B */  sltu  $at, $s0, $t2
/* AD6E44 8005FCA4 50200040 */  beql  $at, $zero, .L8005FDA8
/* AD6E48 8005FCA8 8FBF0044 */   lw    $ra, 0x44($sp)
.L8005FCAC:
/* AD6E4C 8005FCAC 0C0177D4 */  jal   func_8005DF50
/* AD6E50 8005FCB0 02002025 */   move  $a0, $s0
/* AD6E54 8005FCB4 10510032 */  beq   $v0, $s1, .L8005FD80
/* AD6E58 8005FCB8 02A02025 */   move  $a0, $s5
/* AD6E5C 8005FCBC 0C0177DD */  jal   func_8005DF74
/* AD6E60 8005FCC0 02002825 */   move  $a1, $s0
/* AD6E64 8005FCC4 1051002E */  beq   $v0, $s1, .L8005FD80
/* AD6E68 8005FCC8 26440040 */   addiu $a0, $s2, 0x40
/* AD6E6C 8005FCCC 26050028 */  addiu $a1, $s0, 0x28
/* AD6E70 8005FCD0 0C033DF4 */  jal   func_800CF7D0
/* AD6E74 8005FCD4 02803025 */   move  $a2, $s4
/* AD6E78 8005FCD8 5451002A */  bnel  $v0, $s1, .L8005FD84
/* AD6E7C 8005FCDC 8E6E0018 */   lw    $t6, 0x18($s3)
/* AD6E80 8005FCE0 27B1005C */  addiu $s1, $sp, 0x5c
/* AD6E84 8005FCE4 02202025 */  move  $a0, $s1
/* AD6E88 8005FCE8 0C01DF97 */  jal   func_80077E5C
/* AD6E8C 8005FCEC 26450046 */   addiu $a1, $s2, 0x46
/* AD6E90 8005FCF0 C6040028 */  lwc1  $f4, 0x28($s0)
/* AD6E94 8005FCF4 C6060034 */  lwc1  $f6, 0x34($s0)
/* AD6E98 8005FCF8 C60A0040 */  lwc1  $f10, 0x40($s0)
/* AD6E9C 8005FCFC 3C018014 */  lui   $at, 0x8014
/* AD6EA0 8005FD00 46062200 */  add.s $f8, $f4, $f6
/* AD6EA4 8005FD04 C420AD10 */  lwc1  $f0, -0x52f0($at)
/* AD6EA8 8005FD08 8FAB008C */  lw    $t3, 0x8c($sp)
/* AD6EAC 8005FD0C 27AC0050 */  addiu $t4, $sp, 0x50
/* AD6EB0 8005FD10 46085400 */  add.s $f16, $f10, $f8
/* AD6EB4 8005FD14 8FA40080 */  lw    $a0, 0x80($sp)
/* AD6EB8 8005FD18 02402825 */  move  $a1, $s2
/* AD6EBC 8005FD1C 02A03025 */  move  $a2, $s5
/* AD6EC0 8005FD20 46008482 */  mul.s $f18, $f16, $f0
/* AD6EC4 8005FD24 02203825 */  move  $a3, $s1
/* AD6EC8 8005FD28 E7B20050 */  swc1  $f18, 0x50($sp)
/* AD6ECC 8005FD2C C6060038 */  lwc1  $f6, 0x38($s0)
/* AD6ED0 8005FD30 C604002C */  lwc1  $f4, 0x2c($s0)
/* AD6ED4 8005FD34 C6080044 */  lwc1  $f8, 0x44($s0)
/* AD6ED8 8005FD38 46062280 */  add.s $f10, $f4, $f6
/* AD6EDC 8005FD3C 460A4400 */  add.s $f16, $f8, $f10
/* AD6EE0 8005FD40 46008482 */  mul.s $f18, $f16, $f0
/* AD6EE4 8005FD44 E7B20054 */  swc1  $f18, 0x54($sp)
/* AD6EE8 8005FD48 C606003C */  lwc1  $f6, 0x3c($s0)
/* AD6EEC 8005FD4C C6040030 */  lwc1  $f4, 0x30($s0)
/* AD6EF0 8005FD50 C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD6EF4 8005FD54 AFB4001C */  sw    $s4, 0x1c($sp)
/* AD6EF8 8005FD58 46062200 */  add.s $f8, $f4, $f6
/* AD6EFC 8005FD5C AFAC0018 */  sw    $t4, 0x18($sp)
/* AD6F00 8005FD60 AFB00014 */  sw    $s0, 0x14($sp)
/* AD6F04 8005FD64 AFAB0010 */  sw    $t3, 0x10($sp)
/* AD6F08 8005FD68 46085400 */  add.s $f16, $f10, $f8
/* AD6F0C 8005FD6C 46008482 */  mul.s $f18, $f16, $f0
/* AD6F10 8005FD70 0C017A07 */  jal   func_8005E81C
/* AD6F14 8005FD74 E7B20058 */   swc1  $f18, 0x58($sp)
/* AD6F18 8005FD78 1000000B */  b     .L8005FDA8
/* AD6F1C 8005FD7C 8FBF0044 */   lw    $ra, 0x44($sp)
.L8005FD80:
/* AD6F20 8005FD80 8E6E0018 */  lw    $t6, 0x18($s3)
.L8005FD84:
/* AD6F24 8005FD84 8E6D001C */  lw    $t5, 0x1c($s3)
/* AD6F28 8005FD88 2610005C */  addiu $s0, $s0, 0x5c
/* AD6F2C 8005FD8C 01D60019 */  multu $t6, $s6
/* AD6F30 8005FD90 00007812 */  mflo  $t7
/* AD6F34 8005FD94 01AFC021 */  addu  $t8, $t5, $t7
/* AD6F38 8005FD98 0218082B */  sltu  $at, $s0, $t8
/* AD6F3C 8005FD9C 1420FFC3 */  bnez  $at, .L8005FCAC
/* AD6F40 8005FDA0 00000000 */   nop   
.L8005FDA4:
/* AD6F44 8005FDA4 8FBF0044 */  lw    $ra, 0x44($sp)
.L8005FDA8:
/* AD6F48 8005FDA8 8FB00028 */  lw    $s0, 0x28($sp)
/* AD6F4C 8005FDAC 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD6F50 8005FDB0 8FB20030 */  lw    $s2, 0x30($sp)
/* AD6F54 8005FDB4 8FB30034 */  lw    $s3, 0x34($sp)
/* AD6F58 8005FDB8 8FB40038 */  lw    $s4, 0x38($sp)
/* AD6F5C 8005FDBC 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD6F60 8005FDC0 8FB60040 */  lw    $s6, 0x40($sp)
/* AD6F64 8005FDC4 03E00008 */  jr    $ra
/* AD6F68 8005FDC8 27BD0080 */   addiu $sp, $sp, 0x80

/* AD6F6C 8005FDCC 27BDFF88 */  addiu $sp, $sp, -0x78
/* AD6F70 8005FDD0 AFBF0044 */  sw    $ra, 0x44($sp)
/* AD6F74 8005FDD4 AFB60040 */  sw    $s6, 0x40($sp)
/* AD6F78 8005FDD8 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD6F7C 8005FDDC AFB40038 */  sw    $s4, 0x38($sp)
/* AD6F80 8005FDE0 AFB30034 */  sw    $s3, 0x34($sp)
/* AD6F84 8005FDE4 AFB20030 */  sw    $s2, 0x30($sp)
/* AD6F88 8005FDE8 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD6F8C 8005FDEC AFB00028 */  sw    $s0, 0x28($sp)
/* AD6F90 8005FDF0 AFA40078 */  sw    $a0, 0x78($sp)
/* AD6F94 8005FDF4 AFA5007C */  sw    $a1, 0x7c($sp)
/* AD6F98 8005FDF8 84EE0040 */  lh    $t6, 0x40($a3)
/* AD6F9C 8005FDFC 00E09025 */  move  $s2, $a3
/* AD6FA0 8005FE00 00C09825 */  move  $s3, $a2
/* AD6FA4 8005FE04 59C00059 */  blezl $t6, .L8005FF6C
/* AD6FA8 8005FE08 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6FAC 8005FE0C 84EF0042 */  lh    $t7, 0x42($a3)
/* AD6FB0 8005FE10 59E00056 */  blezl $t7, .L8005FF6C
/* AD6FB4 8005FE14 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6FB8 8005FE18 8CD80018 */  lw    $t8, 0x18($a2)
/* AD6FBC 8005FE1C 5B000053 */  blezl $t8, .L8005FF6C
/* AD6FC0 8005FE20 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6FC4 8005FE24 8CD9001C */  lw    $t9, 0x1c($a2)
/* AD6FC8 8005FE28 24F50018 */  addiu $s5, $a3, 0x18
/* AD6FCC 8005FE2C 02A02025 */  move  $a0, $s5
/* AD6FD0 8005FE30 5320004E */  beql  $t9, $zero, .L8005FF6C
/* AD6FD4 8005FE34 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD6FD8 8005FE38 0C0177D4 */  jal   func_8005DF50
/* AD6FDC 8005FE3C AFA60080 */   sw    $a2, 0x80($sp)
/* AD6FE0 8005FE40 24110001 */  li    $s1, 1
/* AD6FE4 8005FE44 10510048 */  beq   $v0, $s1, .L8005FF68
/* AD6FE8 8005FE48 8FA30080 */   lw    $v1, 0x80($sp)
/* AD6FEC 8005FE4C 8C680018 */  lw    $t0, 0x18($v1)
/* AD6FF0 8005FE50 2416005C */  li    $s6, 92
/* AD6FF4 8005FE54 8C70001C */  lw    $s0, 0x1c($v1)
/* AD6FF8 8005FE58 01160019 */  multu $t0, $s6
/* AD6FFC 8005FE5C 3C148016 */  lui   $s4, %hi(D_8015E310) # $s4, 0x8016
/* AD7000 8005FE60 2694E310 */  addiu $s4, %lo(D_8015E310) # addiu $s4, $s4, -0x1cf0
/* AD7004 8005FE64 00004812 */  mflo  $t1
/* AD7008 8005FE68 02095021 */  addu  $t2, $s0, $t1
/* AD700C 8005FE6C 020A082B */  sltu  $at, $s0, $t2
/* AD7010 8005FE70 5020003E */  beql  $at, $zero, .L8005FF6C
/* AD7014 8005FE74 8FBF0044 */   lw    $ra, 0x44($sp)
.L8005FE78:
/* AD7018 8005FE78 0C0177CB */  jal   func_8005DF2C
/* AD701C 8005FE7C 02002025 */   move  $a0, $s0
/* AD7020 8005FE80 10510030 */  beq   $v0, $s1, .L8005FF44
/* AD7024 8005FE84 02002025 */   move  $a0, $s0
/* AD7028 8005FE88 0C0177DD */  jal   func_8005DF74
/* AD702C 8005FE8C 02A02825 */   move  $a1, $s5
/* AD7030 8005FE90 1051002C */  beq   $v0, $s1, .L8005FF44
/* AD7034 8005FE94 26440040 */   addiu $a0, $s2, 0x40
/* AD7038 8005FE98 26050028 */  addiu $a1, $s0, 0x28
/* AD703C 8005FE9C 0C033DF4 */  jal   func_800CF7D0
/* AD7040 8005FEA0 02803025 */   move  $a2, $s4
/* AD7044 8005FEA4 54510028 */  bnel  $v0, $s1, .L8005FF48
/* AD7048 8005FEA8 8E6C0018 */   lw    $t4, 0x18($s3)
/* AD704C 8005FEAC C6040028 */  lwc1  $f4, 0x28($s0)
/* AD7050 8005FEB0 C6060034 */  lwc1  $f6, 0x34($s0)
/* AD7054 8005FEB4 C60A0040 */  lwc1  $f10, 0x40($s0)
/* AD7058 8005FEB8 3C018014 */  lui   $at, 0x8014
/* AD705C 8005FEBC 46062200 */  add.s $f8, $f4, $f6
/* AD7060 8005FEC0 C420AD14 */  lwc1  $f0, -0x52ec($at)
/* AD7064 8005FEC4 27B10054 */  addiu $s1, $sp, 0x54
/* AD7068 8005FEC8 02202025 */  move  $a0, $s1
/* AD706C 8005FECC 46085400 */  add.s $f16, $f10, $f8
/* AD7070 8005FED0 26450046 */  addiu $a1, $s2, 0x46
/* AD7074 8005FED4 46008482 */  mul.s $f18, $f16, $f0
/* AD7078 8005FED8 E7B20060 */  swc1  $f18, 0x60($sp)
/* AD707C 8005FEDC C6060038 */  lwc1  $f6, 0x38($s0)
/* AD7080 8005FEE0 C604002C */  lwc1  $f4, 0x2c($s0)
/* AD7084 8005FEE4 C6080044 */  lwc1  $f8, 0x44($s0)
/* AD7088 8005FEE8 46062280 */  add.s $f10, $f4, $f6
/* AD708C 8005FEEC 460A4400 */  add.s $f16, $f8, $f10
/* AD7090 8005FEF0 46008482 */  mul.s $f18, $f16, $f0
/* AD7094 8005FEF4 E7B20064 */  swc1  $f18, 0x64($sp)
/* AD7098 8005FEF8 C606003C */  lwc1  $f6, 0x3c($s0)
/* AD709C 8005FEFC C6040030 */  lwc1  $f4, 0x30($s0)
/* AD70A0 8005FF00 C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD70A4 8005FF04 46062200 */  add.s $f8, $f4, $f6
/* AD70A8 8005FF08 46085400 */  add.s $f16, $f10, $f8
/* AD70AC 8005FF0C 46008482 */  mul.s $f18, $f16, $f0
/* AD70B0 8005FF10 0C01DF97 */  jal   func_80077E5C
/* AD70B4 8005FF14 E7B20068 */   swc1  $f18, 0x68($sp)
/* AD70B8 8005FF18 8FA40078 */  lw    $a0, 0x78($sp)
/* AD70BC 8005FF1C 8FA50080 */  lw    $a1, 0x80($sp)
/* AD70C0 8005FF20 02003025 */  move  $a2, $s0
/* AD70C4 8005FF24 27A70060 */  addiu $a3, $sp, 0x60
/* AD70C8 8005FF28 AFB20010 */  sw    $s2, 0x10($sp)
/* AD70CC 8005FF2C AFB50014 */  sw    $s5, 0x14($sp)
/* AD70D0 8005FF30 AFB10018 */  sw    $s1, 0x18($sp)
/* AD70D4 8005FF34 0C017A07 */  jal   func_8005E81C
/* AD70D8 8005FF38 AFB4001C */   sw    $s4, 0x1c($sp)
/* AD70DC 8005FF3C 1000000B */  b     .L8005FF6C
/* AD70E0 8005FF40 8FBF0044 */   lw    $ra, 0x44($sp)
.L8005FF44:
/* AD70E4 8005FF44 8E6C0018 */  lw    $t4, 0x18($s3)
.L8005FF48:
/* AD70E8 8005FF48 8E6B001C */  lw    $t3, 0x1c($s3)
/* AD70EC 8005FF4C 2610005C */  addiu $s0, $s0, 0x5c
/* AD70F0 8005FF50 01960019 */  multu $t4, $s6
/* AD70F4 8005FF54 00006812 */  mflo  $t5
/* AD70F8 8005FF58 016D7021 */  addu  $t6, $t3, $t5
/* AD70FC 8005FF5C 020E082B */  sltu  $at, $s0, $t6
/* AD7100 8005FF60 1420FFC5 */  bnez  $at, .L8005FE78
/* AD7104 8005FF64 00000000 */   nop   
.L8005FF68:
/* AD7108 8005FF68 8FBF0044 */  lw    $ra, 0x44($sp)
.L8005FF6C:
/* AD710C 8005FF6C 8FB00028 */  lw    $s0, 0x28($sp)
/* AD7110 8005FF70 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD7114 8005FF74 8FB20030 */  lw    $s2, 0x30($sp)
/* AD7118 8005FF78 8FB30034 */  lw    $s3, 0x34($sp)
/* AD711C 8005FF7C 8FB40038 */  lw    $s4, 0x38($sp)
/* AD7120 8005FF80 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD7124 8005FF84 8FB60040 */  lw    $s6, 0x40($sp)
/* AD7128 8005FF88 03E00008 */  jr    $ra
/* AD712C 8005FF8C 27BD0078 */   addiu $sp, $sp, 0x78

/* AD7130 8005FF90 27BDFF88 */  addiu $sp, $sp, -0x78
/* AD7134 8005FF94 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD7138 8005FF98 AFB10028 */  sw    $s1, 0x28($sp)
/* AD713C 8005FF9C AFB00024 */  sw    $s0, 0x24($sp)
/* AD7140 8005FFA0 AFA40078 */  sw    $a0, 0x78($sp)
/* AD7144 8005FFA4 AFA5007C */  sw    $a1, 0x7c($sp)
/* AD7148 8005FFA8 84CE0042 */  lh    $t6, 0x42($a2)
/* AD714C 8005FFAC 00E08025 */  move  $s0, $a3
/* AD7150 8005FFB0 00C08825 */  move  $s1, $a2
/* AD7154 8005FFB4 59C0008F */  blezl $t6, .L800601F4
/* AD7158 8005FFB8 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD715C 8005FFBC 84CF0040 */  lh    $t7, 0x40($a2)
/* AD7160 8005FFC0 24C40018 */  addiu $a0, $a2, 0x18
/* AD7164 8005FFC4 59E0008B */  blezl $t7, .L800601F4
/* AD7168 8005FFC8 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD716C 8005FFCC 0C0177CB */  jal   func_8005DF2C
/* AD7170 8005FFD0 AFA4003C */   sw    $a0, 0x3c($sp)
/* AD7174 8005FFD4 24010001 */  li    $at, 1
/* AD7178 8005FFD8 10410085 */  beq   $v0, $at, .L800601F0
/* AD717C 8005FFDC 26040018 */   addiu $a0, $s0, 0x18
/* AD7180 8005FFE0 0C0177D4 */  jal   func_8005DF50
/* AD7184 8005FFE4 AFA40038 */   sw    $a0, 0x38($sp)
/* AD7188 8005FFE8 24010001 */  li    $at, 1
/* AD718C 8005FFEC 10410080 */  beq   $v0, $at, .L800601F0
/* AD7190 8005FFF0 8FA4003C */   lw    $a0, 0x3c($sp)
/* AD7194 8005FFF4 0C0177DD */  jal   func_8005DF74
/* AD7198 8005FFF8 8FA50038 */   lw    $a1, 0x38($sp)
/* AD719C 8005FFFC 24010001 */  li    $at, 1
/* AD71A0 80060000 1041007B */  beq   $v0, $at, .L800601F0
/* AD71A4 80060004 3C048016 */   lui   $a0, %hi(D_8015E320) # $a0, 0x8016
/* AD71A8 80060008 26050058 */  addiu $a1, $s0, 0x58
/* AD71AC 8006000C 2607004C */  addiu $a3, $s0, 0x4c
/* AD71B0 80060010 AFA70034 */  sw    $a3, 0x34($sp)
/* AD71B4 80060014 AFA50030 */  sw    $a1, 0x30($sp)
/* AD71B8 80060018 2484E320 */  addiu $a0, %lo(D_8015E320) # addiu $a0, $a0, -0x1ce0
/* AD71BC 8006001C 0C0338F0 */  jal   func_800CE3C0
/* AD71C0 80060020 26060064 */   addiu $a2, $s0, 0x64
/* AD71C4 80060024 3C048016 */  lui   $a0, %hi(D_8015E358) # $a0, 0x8016
/* AD71C8 80060028 2484E358 */  addiu $a0, %lo(D_8015E358) # addiu $a0, $a0, -0x1ca8
/* AD71CC 8006002C 8FA50034 */  lw    $a1, 0x34($sp)
/* AD71D0 80060030 26060040 */  addiu $a2, $s0, 0x40
/* AD71D4 80060034 0C0338F0 */  jal   func_800CE3C0
/* AD71D8 80060038 8FA70030 */   lw    $a3, 0x30($sp)
/* AD71DC 8006003C 26240040 */  addiu $a0, $s1, 0x40
/* AD71E0 80060040 3C058016 */  lui   $a1, %hi(D_8015E320) # $a1, 0x8016
/* AD71E4 80060044 3C068016 */  lui   $a2, %hi(D_8015E390) # $a2, 0x8016
/* AD71E8 80060048 24C6E390 */  addiu $a2, %lo(D_8015E390) # addiu $a2, $a2, -0x1c70
/* AD71EC 8006004C 24A5E320 */  addiu $a1, %lo(D_8015E320) # addiu $a1, $a1, -0x1ce0
/* AD71F0 80060050 0C033DF4 */  jal   func_800CF7D0
/* AD71F4 80060054 AFA40034 */   sw    $a0, 0x34($sp)
/* AD71F8 80060058 24010001 */  li    $at, 1
/* AD71FC 8006005C 14410030 */  bne   $v0, $at, .L80060120
/* AD7200 80060060 8FA40034 */   lw    $a0, 0x34($sp)
/* AD7204 80060064 27A40064 */  addiu $a0, $sp, 0x64
/* AD7208 80060068 0C01DF97 */  jal   func_80077E5C
/* AD720C 8006006C 26250046 */   addiu $a1, $s1, 0x46
/* AD7210 80060070 C6040058 */  lwc1  $f4, 0x58($s0)
/* AD7214 80060074 C6060064 */  lwc1  $f6, 0x64($s0)
/* AD7218 80060078 C60A004C */  lwc1  $f10, 0x4c($s0)
/* AD721C 8006007C C6120040 */  lwc1  $f18, 0x40($s0)
/* AD7220 80060080 46062200 */  add.s $f8, $f4, $f6
/* AD7224 80060084 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD7228 80060088 44810000 */  mtc1  $at, $f0
/* AD722C 8006008C 8FB80038 */  lw    $t8, 0x38($sp)
/* AD7230 80060090 460A4400 */  add.s $f16, $f8, $f10
/* AD7234 80060094 3C088016 */  lui   $t0, %hi(D_8015E390) # $t0, 0x8016
/* AD7238 80060098 2508E390 */  addiu $t0, %lo(D_8015E390) # addiu $t0, $t0, -0x1c70
/* AD723C 8006009C 27B90058 */  addiu $t9, $sp, 0x58
/* AD7240 800600A0 46128100 */  add.s $f4, $f16, $f18
/* AD7244 800600A4 8FA40078 */  lw    $a0, 0x78($sp)
/* AD7248 800600A8 02202825 */  move  $a1, $s1
/* AD724C 800600AC 8FA6003C */  lw    $a2, 0x3c($sp)
/* AD7250 800600B0 46002182 */  mul.s $f6, $f4, $f0
/* AD7254 800600B4 27A70064 */  addiu $a3, $sp, 0x64
/* AD7258 800600B8 E7A60058 */  swc1  $f6, 0x58($sp)
/* AD725C 800600BC C60A0068 */  lwc1  $f10, 0x68($s0)
/* AD7260 800600C0 C608005C */  lwc1  $f8, 0x5c($s0)
/* AD7264 800600C4 C6120050 */  lwc1  $f18, 0x50($s0)
/* AD7268 800600C8 C6060044 */  lwc1  $f6, 0x44($s0)
/* AD726C 800600CC 460A4400 */  add.s $f16, $f8, $f10
/* AD7270 800600D0 46128100 */  add.s $f4, $f16, $f18
/* AD7274 800600D4 46062200 */  add.s $f8, $f4, $f6
/* AD7278 800600D8 46004282 */  mul.s $f10, $f8, $f0
/* AD727C 800600DC E7AA005C */  swc1  $f10, 0x5c($sp)
/* AD7280 800600E0 C612006C */  lwc1  $f18, 0x6c($s0)
/* AD7284 800600E4 C6100060 */  lwc1  $f16, 0x60($s0)
/* AD7288 800600E8 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD728C 800600EC C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD7290 800600F0 46128100 */  add.s $f4, $f16, $f18
/* AD7294 800600F4 AFA8001C */  sw    $t0, 0x1c($sp)
/* AD7298 800600F8 AFB90018 */  sw    $t9, 0x18($sp)
/* AD729C 800600FC AFB00010 */  sw    $s0, 0x10($sp)
/* AD72A0 80060100 46062200 */  add.s $f8, $f4, $f6
/* AD72A4 80060104 AFB80014 */  sw    $t8, 0x14($sp)
/* AD72A8 80060108 460A4400 */  add.s $f16, $f8, $f10
/* AD72AC 8006010C 46008482 */  mul.s $f18, $f16, $f0
/* AD72B0 80060110 0C017A07 */  jal   func_8005E81C
/* AD72B4 80060114 E7B20060 */   swc1  $f18, 0x60($sp)
/* AD72B8 80060118 10000036 */  b     .L800601F4
/* AD72BC 8006011C 8FBF002C */   lw    $ra, 0x2c($sp)
.L80060120:
/* AD72C0 80060120 3C058016 */  lui   $a1, %hi(D_8015E358) # $a1, 0x8016
/* AD72C4 80060124 3C068016 */  lui   $a2, %hi(D_8015E390) # $a2, 0x8016
/* AD72C8 80060128 24C6E390 */  addiu $a2, %lo(D_8015E390) # addiu $a2, $a2, -0x1c70
/* AD72CC 8006012C 0C033DF4 */  jal   func_800CF7D0
/* AD72D0 80060130 24A5E358 */   addiu $a1, %lo(D_8015E358) # addiu $a1, $a1, -0x1ca8
/* AD72D4 80060134 24010001 */  li    $at, 1
/* AD72D8 80060138 1441002D */  bne   $v0, $at, .L800601F0
/* AD72DC 8006013C 27A4004C */   addiu $a0, $sp, 0x4c
/* AD72E0 80060140 0C01DF97 */  jal   func_80077E5C
/* AD72E4 80060144 26250046 */   addiu $a1, $s1, 0x46
/* AD72E8 80060148 C6040058 */  lwc1  $f4, 0x58($s0)
/* AD72EC 8006014C C6060064 */  lwc1  $f6, 0x64($s0)
/* AD72F0 80060150 C60A004C */  lwc1  $f10, 0x4c($s0)
/* AD72F4 80060154 C6120040 */  lwc1  $f18, 0x40($s0)
/* AD72F8 80060158 46062200 */  add.s $f8, $f4, $f6
/* AD72FC 8006015C 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD7300 80060160 44810000 */  mtc1  $at, $f0
/* AD7304 80060164 8FA90038 */  lw    $t1, 0x38($sp)
/* AD7308 80060168 460A4400 */  add.s $f16, $f8, $f10
/* AD730C 8006016C 3C0B8016 */  lui   $t3, %hi(D_8015E390) # $t3, 0x8016
/* AD7310 80060170 256BE390 */  addiu $t3, %lo(D_8015E390) # addiu $t3, $t3, -0x1c70
/* AD7314 80060174 27AA0040 */  addiu $t2, $sp, 0x40
/* AD7318 80060178 46128100 */  add.s $f4, $f16, $f18
/* AD731C 8006017C 8FA40078 */  lw    $a0, 0x78($sp)
/* AD7320 80060180 02202825 */  move  $a1, $s1
/* AD7324 80060184 8FA6003C */  lw    $a2, 0x3c($sp)
/* AD7328 80060188 46002182 */  mul.s $f6, $f4, $f0
/* AD732C 8006018C 27A7004C */  addiu $a3, $sp, 0x4c
/* AD7330 80060190 E7A60040 */  swc1  $f6, 0x40($sp)
/* AD7334 80060194 C60A0068 */  lwc1  $f10, 0x68($s0)
/* AD7338 80060198 C608005C */  lwc1  $f8, 0x5c($s0)
/* AD733C 8006019C C6120050 */  lwc1  $f18, 0x50($s0)
/* AD7340 800601A0 C6060044 */  lwc1  $f6, 0x44($s0)
/* AD7344 800601A4 460A4400 */  add.s $f16, $f8, $f10
/* AD7348 800601A8 46128100 */  add.s $f4, $f16, $f18
/* AD734C 800601AC 46062200 */  add.s $f8, $f4, $f6
/* AD7350 800601B0 46004282 */  mul.s $f10, $f8, $f0
/* AD7354 800601B4 E7AA0044 */  swc1  $f10, 0x44($sp)
/* AD7358 800601B8 C612006C */  lwc1  $f18, 0x6c($s0)
/* AD735C 800601BC C6100060 */  lwc1  $f16, 0x60($s0)
/* AD7360 800601C0 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD7364 800601C4 C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD7368 800601C8 46128100 */  add.s $f4, $f16, $f18
/* AD736C 800601CC AFAB001C */  sw    $t3, 0x1c($sp)
/* AD7370 800601D0 AFAA0018 */  sw    $t2, 0x18($sp)
/* AD7374 800601D4 AFB00010 */  sw    $s0, 0x10($sp)
/* AD7378 800601D8 46062200 */  add.s $f8, $f4, $f6
/* AD737C 800601DC AFA90014 */  sw    $t1, 0x14($sp)
/* AD7380 800601E0 460A4400 */  add.s $f16, $f8, $f10
/* AD7384 800601E4 46008482 */  mul.s $f18, $f16, $f0
/* AD7388 800601E8 0C017A07 */  jal   func_8005E81C
/* AD738C 800601EC E7B20048 */   swc1  $f18, 0x48($sp)
.L800601F0:
/* AD7390 800601F0 8FBF002C */  lw    $ra, 0x2c($sp)
.L800601F4:
/* AD7394 800601F4 8FB00024 */  lw    $s0, 0x24($sp)
/* AD7398 800601F8 8FB10028 */  lw    $s1, 0x28($sp)
/* AD739C 800601FC 03E00008 */  jr    $ra
/* AD73A0 80060200 27BD0078 */   addiu $sp, $sp, 0x78

/* AD73A4 80060204 27BDFF88 */  addiu $sp, $sp, -0x78
/* AD73A8 80060208 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD73AC 8006020C AFB10028 */  sw    $s1, 0x28($sp)
/* AD73B0 80060210 AFB00024 */  sw    $s0, 0x24($sp)
/* AD73B4 80060214 AFA40078 */  sw    $a0, 0x78($sp)
/* AD73B8 80060218 AFA5007C */  sw    $a1, 0x7c($sp)
/* AD73BC 8006021C 84EE0042 */  lh    $t6, 0x42($a3)
/* AD73C0 80060220 00C08025 */  move  $s0, $a2
/* AD73C4 80060224 00E08825 */  move  $s1, $a3
/* AD73C8 80060228 59C0009D */  blezl $t6, .L800604A0
/* AD73CC 8006022C 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD73D0 80060230 84EF0040 */  lh    $t7, 0x40($a3)
/* AD73D4 80060234 24E40018 */  addiu $a0, $a3, 0x18
/* AD73D8 80060238 59E00099 */  blezl $t7, .L800604A0
/* AD73DC 8006023C 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD73E0 80060240 0C0177D4 */  jal   func_8005DF50
/* AD73E4 80060244 AFA40038 */   sw    $a0, 0x38($sp)
/* AD73E8 80060248 24010001 */  li    $at, 1
/* AD73EC 8006024C 10410093 */  beq   $v0, $at, .L8006049C
/* AD73F0 80060250 26040018 */   addiu $a0, $s0, 0x18
/* AD73F4 80060254 0C0177CB */  jal   func_8005DF2C
/* AD73F8 80060258 AFA4003C */   sw    $a0, 0x3c($sp)
/* AD73FC 8006025C 24010001 */  li    $at, 1
/* AD7400 80060260 1041008E */  beq   $v0, $at, .L8006049C
/* AD7404 80060264 8FA4003C */   lw    $a0, 0x3c($sp)
/* AD7408 80060268 0C0177DD */  jal   func_8005DF74
/* AD740C 8006026C 8FA50038 */   lw    $a1, 0x38($sp)
/* AD7410 80060270 24010001 */  li    $at, 1
/* AD7414 80060274 10410089 */  beq   $v0, $at, .L8006049C
/* AD7418 80060278 3C048016 */   lui   $a0, %hi(D_8015E3A0) # $a0, 0x8016
/* AD741C 8006027C 26050058 */  addiu $a1, $s0, 0x58
/* AD7420 80060280 2607004C */  addiu $a3, $s0, 0x4c
/* AD7424 80060284 AFA70030 */  sw    $a3, 0x30($sp)
/* AD7428 80060288 AFA50034 */  sw    $a1, 0x34($sp)
/* AD742C 8006028C 2484E3A0 */  addiu $a0, %lo(D_8015E3A0) # addiu $a0, $a0, -0x1c60
/* AD7430 80060290 0C0338F0 */  jal   func_800CE3C0
/* AD7434 80060294 26060064 */   addiu $a2, $s0, 0x64
/* AD7438 80060298 3C048016 */  lui   $a0, %hi(D_8015E3D8) # $a0, 0x8016
/* AD743C 8006029C 8FA50034 */  lw    $a1, 0x34($sp)
/* AD7440 800602A0 2484E3D8 */  addiu $a0, %lo(D_8015E3D8) # addiu $a0, $a0, -0x1c28
/* AD7444 800602A4 8FA60030 */  lw    $a2, 0x30($sp)
/* AD7448 800602A8 0C0338F0 */  jal   func_800CE3C0
/* AD744C 800602AC 26070040 */   addiu $a3, $s0, 0x40
/* AD7450 800602B0 26240040 */  addiu $a0, $s1, 0x40
/* AD7454 800602B4 3C058016 */  lui   $a1, %hi(D_8015E3A0) # $a1, 0x8016
/* AD7458 800602B8 3C068016 */  lui   $a2, %hi(D_8015E410) # $a2, 0x8016
/* AD745C 800602BC 24C6E410 */  addiu $a2, %lo(D_8015E410) # addiu $a2, $a2, -0x1bf0
/* AD7460 800602C0 24A5E3A0 */  addiu $a1, %lo(D_8015E3A0) # addiu $a1, $a1, -0x1c60
/* AD7464 800602C4 0C033DF4 */  jal   func_800CF7D0
/* AD7468 800602C8 AFA40034 */   sw    $a0, 0x34($sp)
/* AD746C 800602CC 24010001 */  li    $at, 1
/* AD7470 800602D0 14410036 */  bne   $v0, $at, .L800603AC
/* AD7474 800602D4 8FA40078 */   lw    $a0, 0x78($sp)
/* AD7478 800602D8 3C068016 */  lui   $a2, %hi(D_8015E410) # $a2, 0x8016
/* AD747C 800602DC 24C6E410 */  addiu $a2, %lo(D_8015E410) # addiu $a2, $a2, -0x1bf0
/* AD7480 800602E0 0C017486 */  jal   func_8005D218
/* AD7484 800602E4 02002825 */   move  $a1, $s0
/* AD7488 800602E8 10400030 */  beqz  $v0, .L800603AC
/* AD748C 800602EC 00000000 */   nop   
/* AD7490 800602F0 C6040058 */  lwc1  $f4, 0x58($s0)
/* AD7494 800602F4 C6060064 */  lwc1  $f6, 0x64($s0)
/* AD7498 800602F8 C60A004C */  lwc1  $f10, 0x4c($s0)
/* AD749C 800602FC C6120040 */  lwc1  $f18, 0x40($s0)
/* AD74A0 80060300 46062200 */  add.s $f8, $f4, $f6
/* AD74A4 80060304 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD74A8 80060308 44810000 */  mtc1  $at, $f0
/* AD74AC 8006030C 27A40058 */  addiu $a0, $sp, 0x58
/* AD74B0 80060310 460A4400 */  add.s $f16, $f8, $f10
/* AD74B4 80060314 26250046 */  addiu $a1, $s1, 0x46
/* AD74B8 80060318 46128100 */  add.s $f4, $f16, $f18
/* AD74BC 8006031C 46002182 */  mul.s $f6, $f4, $f0
/* AD74C0 80060320 E7A60064 */  swc1  $f6, 0x64($sp)
/* AD74C4 80060324 C60A0068 */  lwc1  $f10, 0x68($s0)
/* AD74C8 80060328 C608005C */  lwc1  $f8, 0x5c($s0)
/* AD74CC 8006032C C6120050 */  lwc1  $f18, 0x50($s0)
/* AD74D0 80060330 C6060044 */  lwc1  $f6, 0x44($s0)
/* AD74D4 80060334 460A4400 */  add.s $f16, $f8, $f10
/* AD74D8 80060338 46128100 */  add.s $f4, $f16, $f18
/* AD74DC 8006033C 46062200 */  add.s $f8, $f4, $f6
/* AD74E0 80060340 46004282 */  mul.s $f10, $f8, $f0
/* AD74E4 80060344 E7AA0068 */  swc1  $f10, 0x68($sp)
/* AD74E8 80060348 C612006C */  lwc1  $f18, 0x6c($s0)
/* AD74EC 8006034C C6100060 */  lwc1  $f16, 0x60($s0)
/* AD74F0 80060350 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD74F4 80060354 C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD74F8 80060358 46128100 */  add.s $f4, $f16, $f18
/* AD74FC 8006035C 46062200 */  add.s $f8, $f4, $f6
/* AD7500 80060360 460A4400 */  add.s $f16, $f8, $f10
/* AD7504 80060364 46008482 */  mul.s $f18, $f16, $f0
/* AD7508 80060368 0C01DF97 */  jal   func_80077E5C
/* AD750C 8006036C E7B2006C */   swc1  $f18, 0x6c($sp)
/* AD7510 80060370 8FB80038 */  lw    $t8, 0x38($sp)
/* AD7514 80060374 3C088016 */  lui   $t0, %hi(D_8015E410) # $t0, 0x8016
/* AD7518 80060378 2508E410 */  addiu $t0, %lo(D_8015E410) # addiu $t0, $t0, -0x1bf0
/* AD751C 8006037C 27B90058 */  addiu $t9, $sp, 0x58
/* AD7520 80060380 AFB90018 */  sw    $t9, 0x18($sp)
/* AD7524 80060384 AFA8001C */  sw    $t0, 0x1c($sp)
/* AD7528 80060388 8FA40078 */  lw    $a0, 0x78($sp)
/* AD752C 8006038C 02002825 */  move  $a1, $s0
/* AD7530 80060390 8FA6003C */  lw    $a2, 0x3c($sp)
/* AD7534 80060394 27A70064 */  addiu $a3, $sp, 0x64
/* AD7538 80060398 AFB10010 */  sw    $s1, 0x10($sp)
/* AD753C 8006039C 0C017A07 */  jal   func_8005E81C
/* AD7540 800603A0 AFB80014 */   sw    $t8, 0x14($sp)
/* AD7544 800603A4 1000003E */  b     .L800604A0
/* AD7548 800603A8 8FBF002C */   lw    $ra, 0x2c($sp)
.L800603AC:
/* AD754C 800603AC 3C058016 */  lui   $a1, %hi(D_8015E3D8) # $a1, 0x8016
/* AD7550 800603B0 3C068016 */  lui   $a2, %hi(D_8015E410) # $a2, 0x8016
/* AD7554 800603B4 24C6E410 */  addiu $a2, %lo(D_8015E410) # addiu $a2, $a2, -0x1bf0
/* AD7558 800603B8 24A5E3D8 */  addiu $a1, %lo(D_8015E3D8) # addiu $a1, $a1, -0x1c28
/* AD755C 800603BC 0C033DF4 */  jal   func_800CF7D0
/* AD7560 800603C0 8FA40034 */   lw    $a0, 0x34($sp)
/* AD7564 800603C4 24010001 */  li    $at, 1
/* AD7568 800603C8 14410034 */  bne   $v0, $at, .L8006049C
/* AD756C 800603CC 8FA40078 */   lw    $a0, 0x78($sp)
/* AD7570 800603D0 3C068016 */  lui   $a2, %hi(D_8015E410) # $a2, 0x8016
/* AD7574 800603D4 24C6E410 */  addiu $a2, %lo(D_8015E410) # addiu $a2, $a2, -0x1bf0
/* AD7578 800603D8 0C017486 */  jal   func_8005D218
/* AD757C 800603DC 02002825 */   move  $a1, $s0
/* AD7580 800603E0 5040002F */  beql  $v0, $zero, .L800604A0
/* AD7584 800603E4 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD7588 800603E8 C6040058 */  lwc1  $f4, 0x58($s0)
/* AD758C 800603EC C6060064 */  lwc1  $f6, 0x64($s0)
/* AD7590 800603F0 C60A004C */  lwc1  $f10, 0x4c($s0)
/* AD7594 800603F4 C6120040 */  lwc1  $f18, 0x40($s0)
/* AD7598 800603F8 46062200 */  add.s $f8, $f4, $f6
/* AD759C 800603FC 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD75A0 80060400 44810000 */  mtc1  $at, $f0
/* AD75A4 80060404 27A40040 */  addiu $a0, $sp, 0x40
/* AD75A8 80060408 460A4400 */  add.s $f16, $f8, $f10
/* AD75AC 8006040C 26250046 */  addiu $a1, $s1, 0x46
/* AD75B0 80060410 46128100 */  add.s $f4, $f16, $f18
/* AD75B4 80060414 46002182 */  mul.s $f6, $f4, $f0
/* AD75B8 80060418 E7A6004C */  swc1  $f6, 0x4c($sp)
/* AD75BC 8006041C C60A0068 */  lwc1  $f10, 0x68($s0)
/* AD75C0 80060420 C608005C */  lwc1  $f8, 0x5c($s0)
/* AD75C4 80060424 C6120050 */  lwc1  $f18, 0x50($s0)
/* AD75C8 80060428 C6060044 */  lwc1  $f6, 0x44($s0)
/* AD75CC 8006042C 460A4400 */  add.s $f16, $f8, $f10
/* AD75D0 80060430 46128100 */  add.s $f4, $f16, $f18
/* AD75D4 80060434 46062200 */  add.s $f8, $f4, $f6
/* AD75D8 80060438 46004282 */  mul.s $f10, $f8, $f0
/* AD75DC 8006043C E7AA0050 */  swc1  $f10, 0x50($sp)
/* AD75E0 80060440 C612006C */  lwc1  $f18, 0x6c($s0)
/* AD75E4 80060444 C6100060 */  lwc1  $f16, 0x60($s0)
/* AD75E8 80060448 C6060054 */  lwc1  $f6, 0x54($s0)
/* AD75EC 8006044C C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD75F0 80060450 46128100 */  add.s $f4, $f16, $f18
/* AD75F4 80060454 46062200 */  add.s $f8, $f4, $f6
/* AD75F8 80060458 460A4400 */  add.s $f16, $f8, $f10
/* AD75FC 8006045C 46008482 */  mul.s $f18, $f16, $f0
/* AD7600 80060460 0C01DF97 */  jal   func_80077E5C
/* AD7604 80060464 E7B20054 */   swc1  $f18, 0x54($sp)
/* AD7608 80060468 8FA90038 */  lw    $t1, 0x38($sp)
/* AD760C 8006046C 3C0B8016 */  lui   $t3, %hi(D_8015E410) # $t3, 0x8016
/* AD7610 80060470 256BE410 */  addiu $t3, %lo(D_8015E410) # addiu $t3, $t3, -0x1bf0
/* AD7614 80060474 27AA0040 */  addiu $t2, $sp, 0x40
/* AD7618 80060478 AFAA0018 */  sw    $t2, 0x18($sp)
/* AD761C 8006047C AFAB001C */  sw    $t3, 0x1c($sp)
/* AD7620 80060480 8FA40078 */  lw    $a0, 0x78($sp)
/* AD7624 80060484 02002825 */  move  $a1, $s0
/* AD7628 80060488 8FA6003C */  lw    $a2, 0x3c($sp)
/* AD762C 8006048C 27A7004C */  addiu $a3, $sp, 0x4c
/* AD7630 80060490 AFB10010 */  sw    $s1, 0x10($sp)
/* AD7634 80060494 0C017A07 */  jal   func_8005E81C
/* AD7638 80060498 AFA90014 */   sw    $t1, 0x14($sp)
.L8006049C:
/* AD763C 8006049C 8FBF002C */  lw    $ra, 0x2c($sp)
.L800604A0:
/* AD7640 800604A0 8FB00024 */  lw    $s0, 0x24($sp)
/* AD7644 800604A4 8FB10028 */  lw    $s1, 0x28($sp)
/* AD7648 800604A8 03E00008 */  jr    $ra
/* AD764C 800604AC 27BD0078 */   addiu $sp, $sp, 0x78

/* AD7650 800604B0 27BDFF88 */  addiu $sp, $sp, -0x78
/* AD7654 800604B4 AFBF0044 */  sw    $ra, 0x44($sp)
/* AD7658 800604B8 AFB70040 */  sw    $s7, 0x40($sp)
/* AD765C 800604BC AFB6003C */  sw    $s6, 0x3c($sp)
/* AD7660 800604C0 AFB50038 */  sw    $s5, 0x38($sp)
/* AD7664 800604C4 AFB40034 */  sw    $s4, 0x34($sp)
/* AD7668 800604C8 AFB30030 */  sw    $s3, 0x30($sp)
/* AD766C 800604CC AFB2002C */  sw    $s2, 0x2c($sp)
/* AD7670 800604D0 AFB10028 */  sw    $s1, 0x28($sp)
/* AD7674 800604D4 AFB00024 */  sw    $s0, 0x24($sp)
/* AD7678 800604D8 AFA40078 */  sw    $a0, 0x78($sp)
/* AD767C 800604DC AFA5007C */  sw    $a1, 0x7c($sp)
/* AD7680 800604E0 8CE30018 */  lw    $v1, 0x18($a3)
/* AD7684 800604E4 00C0B025 */  move  $s6, $a2
/* AD7688 800604E8 00C09825 */  move  $s3, $a2
/* AD768C 800604EC 1860007A */  blez  $v1, .L800606D8
/* AD7690 800604F0 00E0B825 */   move  $s7, $a3
/* AD7694 800604F4 8CE2001C */  lw    $v0, 0x1c($a3)
/* AD7698 800604F8 50400078 */  beql  $v0, $zero, .L800606DC
/* AD769C 800604FC 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD76A0 80060500 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD76A4 80060504 59C00075 */  blezl $t6, .L800606DC
/* AD76A8 80060508 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD76AC 8006050C 8CCF001C */  lw    $t7, 0x1c($a2)
/* AD76B0 80060510 2414005C */  li    $s4, 92
/* AD76B4 80060514 51E00071 */  beql  $t7, $zero, .L800606DC
/* AD76B8 80060518 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD76BC 8006051C 00740019 */  multu $v1, $s4
/* AD76C0 80060520 3C158016 */  lui   $s5, %hi(D_8015E420) # $s5, 0x8016
/* AD76C4 80060524 26B5E420 */  addiu $s5, %lo(D_8015E420) # addiu $s5, $s5, -0x1be0
/* AD76C8 80060528 00409025 */  move  $s2, $v0
/* AD76CC 8006052C 24110001 */  li    $s1, 1
/* AD76D0 80060530 0000C012 */  mflo  $t8
/* AD76D4 80060534 0058C821 */  addu  $t9, $v0, $t8
/* AD76D8 80060538 0059082B */  sltu  $at, $v0, $t9
/* AD76DC 8006053C 50200067 */  beql  $at, $zero, .L800606DC
/* AD76E0 80060540 8FBF0044 */   lw    $ra, 0x44($sp)
/* AD76E4 80060544 AFA70084 */  sw    $a3, 0x84($sp)
.L80060548:
/* AD76E8 80060548 0C0177D4 */  jal   func_8005DF50
/* AD76EC 8006054C 02402025 */   move  $a0, $s2
/* AD76F0 80060550 50510059 */  beql  $v0, $s1, .L800606B8
/* AD76F4 80060554 8EE80018 */   lw    $t0, 0x18($s7)
/* AD76F8 80060558 8EC80018 */  lw    $t0, 0x18($s6)
/* AD76FC 8006055C 8ED0001C */  lw    $s0, 0x1c($s6)
/* AD7700 80060560 01140019 */  multu $t0, $s4
/* AD7704 80060564 00004812 */  mflo  $t1
/* AD7708 80060568 02095021 */  addu  $t2, $s0, $t1
/* AD770C 8006056C 020A082B */  sltu  $at, $s0, $t2
/* AD7710 80060570 50200051 */  beql  $at, $zero, .L800606B8
/* AD7714 80060574 8EE80018 */   lw    $t0, 0x18($s7)
.L80060578:
/* AD7718 80060578 0C0177CB */  jal   func_8005DF2C
/* AD771C 8006057C 02002025 */   move  $a0, $s0
/* AD7720 80060580 10510043 */  beq   $v0, $s1, .L80060690
/* AD7724 80060584 02002025 */   move  $a0, $s0
/* AD7728 80060588 0C0177DD */  jal   func_8005DF74
/* AD772C 8006058C 02402825 */   move  $a1, $s2
/* AD7730 80060590 1051003F */  beq   $v0, $s1, .L80060690
/* AD7734 80060594 26040028 */   addiu $a0, $s0, 0x28
/* AD7738 80060598 26450028 */  addiu $a1, $s2, 0x28
/* AD773C 8006059C 0C034041 */  jal   func_800D0104
/* AD7740 800605A0 02A03025 */   move  $a2, $s5
/* AD7744 800605A4 5451003B */  bnel  $v0, $s1, .L80060694
/* AD7748 800605A8 8E6E0018 */   lw    $t6, 0x18($s3)
/* AD774C 800605AC C6040028 */  lwc1  $f4, 0x28($s0)
/* AD7750 800605B0 C6060034 */  lwc1  $f6, 0x34($s0)
/* AD7754 800605B4 C60A0040 */  lwc1  $f10, 0x40($s0)
/* AD7758 800605B8 3C018014 */  lui   $at, 0x8014
/* AD775C 800605BC 46062200 */  add.s $f8, $f4, $f6
/* AD7760 800605C0 C420AD18 */  lwc1  $f0, -0x52e8($at)
/* AD7764 800605C4 8FAB0084 */  lw    $t3, 0x84($sp)
/* AD7768 800605C8 27AC0050 */  addiu $t4, $sp, 0x50
/* AD776C 800605CC 46085400 */  add.s $f16, $f10, $f8
/* AD7770 800605D0 8FA40078 */  lw    $a0, 0x78($sp)
/* AD7774 800605D4 02C02825 */  move  $a1, $s6
/* AD7778 800605D8 02003025 */  move  $a2, $s0
/* AD777C 800605DC 46008482 */  mul.s $f18, $f16, $f0
/* AD7780 800605E0 27A7005C */  addiu $a3, $sp, 0x5c
/* AD7784 800605E4 E7B2005C */  swc1  $f18, 0x5c($sp)
/* AD7788 800605E8 C6060038 */  lwc1  $f6, 0x38($s0)
/* AD778C 800605EC C604002C */  lwc1  $f4, 0x2c($s0)
/* AD7790 800605F0 C6080044 */  lwc1  $f8, 0x44($s0)
/* AD7794 800605F4 46062280 */  add.s $f10, $f4, $f6
/* AD7798 800605F8 460A4400 */  add.s $f16, $f8, $f10
/* AD779C 800605FC 46008482 */  mul.s $f18, $f16, $f0
/* AD77A0 80060600 E7B20060 */  swc1  $f18, 0x60($sp)
/* AD77A4 80060604 C606003C */  lwc1  $f6, 0x3c($s0)
/* AD77A8 80060608 C6040030 */  lwc1  $f4, 0x30($s0)
/* AD77AC 8006060C C60A0048 */  lwc1  $f10, 0x48($s0)
/* AD77B0 80060610 46062200 */  add.s $f8, $f4, $f6
/* AD77B4 80060614 46085400 */  add.s $f16, $f10, $f8
/* AD77B8 80060618 46008482 */  mul.s $f18, $f16, $f0
/* AD77BC 8006061C E7B20064 */  swc1  $f18, 0x64($sp)
/* AD77C0 80060620 C6460034 */  lwc1  $f6, 0x34($s2)
/* AD77C4 80060624 C6440028 */  lwc1  $f4, 0x28($s2)
/* AD77C8 80060628 C6480040 */  lwc1  $f8, 0x40($s2)
/* AD77CC 8006062C 46062280 */  add.s $f10, $f4, $f6
/* AD77D0 80060630 460A4400 */  add.s $f16, $f8, $f10
/* AD77D4 80060634 46008482 */  mul.s $f18, $f16, $f0
/* AD77D8 80060638 E7B20050 */  swc1  $f18, 0x50($sp)
/* AD77DC 8006063C C6460038 */  lwc1  $f6, 0x38($s2)
/* AD77E0 80060640 C644002C */  lwc1  $f4, 0x2c($s2)
/* AD77E4 80060644 C64A0044 */  lwc1  $f10, 0x44($s2)
/* AD77E8 80060648 46062200 */  add.s $f8, $f4, $f6
/* AD77EC 8006064C 46085400 */  add.s $f16, $f10, $f8
/* AD77F0 80060650 46008482 */  mul.s $f18, $f16, $f0
/* AD77F4 80060654 E7B20054 */  swc1  $f18, 0x54($sp)
/* AD77F8 80060658 C646003C */  lwc1  $f6, 0x3c($s2)
/* AD77FC 8006065C C6440030 */  lwc1  $f4, 0x30($s2)
/* AD7800 80060660 C6480048 */  lwc1  $f8, 0x48($s2)
/* AD7804 80060664 AFB5001C */  sw    $s5, 0x1c($sp)
/* AD7808 80060668 46062280 */  add.s $f10, $f4, $f6
/* AD780C 8006066C AFAC0018 */  sw    $t4, 0x18($sp)
/* AD7810 80060670 AFB20014 */  sw    $s2, 0x14($sp)
/* AD7814 80060674 AFAB0010 */  sw    $t3, 0x10($sp)
/* AD7818 80060678 460A4400 */  add.s $f16, $f8, $f10
/* AD781C 8006067C 46008482 */  mul.s $f18, $f16, $f0
/* AD7820 80060680 0C017A07 */  jal   func_8005E81C
/* AD7824 80060684 E7B20058 */   swc1  $f18, 0x58($sp)
/* AD7828 80060688 10000014 */  b     .L800606DC
/* AD782C 8006068C 8FBF0044 */   lw    $ra, 0x44($sp)
.L80060690:
/* AD7830 80060690 8E6E0018 */  lw    $t6, 0x18($s3)
.L80060694:
/* AD7834 80060694 8E6D001C */  lw    $t5, 0x1c($s3)
/* AD7838 80060698 2610005C */  addiu $s0, $s0, 0x5c
/* AD783C 8006069C 01D40019 */  multu $t6, $s4
/* AD7840 800606A0 00007812 */  mflo  $t7
/* AD7844 800606A4 01AFC021 */  addu  $t8, $t5, $t7
/* AD7848 800606A8 0218082B */  sltu  $at, $s0, $t8
/* AD784C 800606AC 1420FFB2 */  bnez  $at, .L80060578
/* AD7850 800606B0 00000000 */   nop   
/* AD7854 800606B4 8EE80018 */  lw    $t0, 0x18($s7)
.L800606B8:
/* AD7858 800606B8 8EF9001C */  lw    $t9, 0x1c($s7)
/* AD785C 800606BC 2652005C */  addiu $s2, $s2, 0x5c
/* AD7860 800606C0 01140019 */  multu $t0, $s4
/* AD7864 800606C4 00004812 */  mflo  $t1
/* AD7868 800606C8 03295021 */  addu  $t2, $t9, $t1
/* AD786C 800606CC 024A082B */  sltu  $at, $s2, $t2
/* AD7870 800606D0 1420FF9D */  bnez  $at, .L80060548
/* AD7874 800606D4 00000000 */   nop   
.L800606D8:
/* AD7878 800606D8 8FBF0044 */  lw    $ra, 0x44($sp)
.L800606DC:
/* AD787C 800606DC 8FB00024 */  lw    $s0, 0x24($sp)
/* AD7880 800606E0 8FB10028 */  lw    $s1, 0x28($sp)
/* AD7884 800606E4 8FB2002C */  lw    $s2, 0x2c($sp)
/* AD7888 800606E8 8FB30030 */  lw    $s3, 0x30($sp)
/* AD788C 800606EC 8FB40034 */  lw    $s4, 0x34($sp)
/* AD7890 800606F0 8FB50038 */  lw    $s5, 0x38($sp)
/* AD7894 800606F4 8FB6003C */  lw    $s6, 0x3c($sp)
/* AD7898 800606F8 8FB70040 */  lw    $s7, 0x40($sp)
/* AD789C 800606FC 03E00008 */  jr    $ra
/* AD78A0 80060700 27BD0078 */   addiu $sp, $sp, 0x78

/* AD78A4 80060704 27BDFF80 */  addiu $sp, $sp, -0x80
/* AD78A8 80060708 AFBF004C */  sw    $ra, 0x4c($sp)
/* AD78AC 8006070C AFBE0048 */  sw    $fp, 0x48($sp)
/* AD78B0 80060710 AFB70044 */  sw    $s7, 0x44($sp)
/* AD78B4 80060714 AFB60040 */  sw    $s6, 0x40($sp)
/* AD78B8 80060718 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD78BC 8006071C AFB40038 */  sw    $s4, 0x38($sp)
/* AD78C0 80060720 AFB30034 */  sw    $s3, 0x34($sp)
/* AD78C4 80060724 AFB20030 */  sw    $s2, 0x30($sp)
/* AD78C8 80060728 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD78CC 8006072C AFB00028 */  sw    $s0, 0x28($sp)
/* AD78D0 80060730 AFA40080 */  sw    $a0, 0x80($sp)
/* AD78D4 80060734 AFA50084 */  sw    $a1, 0x84($sp)
/* AD78D8 80060738 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD78DC 8006073C 00E09825 */  move  $s3, $a3
/* AD78E0 80060740 00C0A825 */  move  $s5, $a2
/* AD78E4 80060744 59C00088 */  blezl $t6, .L80060968
/* AD78E8 80060748 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD78EC 8006074C 8CCF001C */  lw    $t7, 0x1c($a2)
/* AD78F0 80060750 24F60018 */  addiu $s6, $a3, 0x18
/* AD78F4 80060754 02C02025 */  move  $a0, $s6
/* AD78F8 80060758 51E00083 */  beql  $t7, $zero, .L80060968
/* AD78FC 8006075C 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD7900 80060760 0C0177D4 */  jal   func_8005DF50
/* AD7904 80060764 AFA60088 */   sw    $a2, 0x88($sp)
/* AD7908 80060768 24120001 */  li    $s2, 1
/* AD790C 8006076C 1052007D */  beq   $v0, $s2, .L80060964
/* AD7910 80060770 3C178016 */   lui   $s7, %hi(D_8015E440) # $s7, 0x8016
/* AD7914 80060774 26F7E440 */  addiu $s7, %lo(D_8015E440) # addiu $s7, $s7, -0x1bc0
/* AD7918 80060778 26710058 */  addiu $s1, $s3, 0x58
/* AD791C 8006077C 2670004C */  addiu $s0, $s3, 0x4c
/* AD7920 80060780 02003825 */  move  $a3, $s0
/* AD7924 80060784 02202825 */  move  $a1, $s1
/* AD7928 80060788 02E02025 */  move  $a0, $s7
/* AD792C 8006078C 0C0338F0 */  jal   func_800CE3C0
/* AD7930 80060790 26660064 */   addiu $a2, $s3, 0x64
/* AD7934 80060794 3C1E8016 */  lui   $fp, %hi(D_8015E478) # $fp, 0x8016
/* AD7938 80060798 27DEE478 */  addiu $fp, %lo(D_8015E478) # addiu $fp, $fp, -0x1b88
/* AD793C 8006079C 03C02025 */  move  $a0, $fp
/* AD7940 800607A0 02002825 */  move  $a1, $s0
/* AD7944 800607A4 26660040 */  addiu $a2, $s3, 0x40
/* AD7948 800607A8 0C0338F0 */  jal   func_800CE3C0
/* AD794C 800607AC 02203825 */   move  $a3, $s1
/* AD7950 800607B0 8FA30088 */  lw    $v1, 0x88($sp)
/* AD7954 800607B4 3C148016 */  lui   $s4, %hi(D_8015E430) # $s4, 0x8016
/* AD7958 800607B8 2694E430 */  addiu $s4, %lo(D_8015E430) # addiu $s4, $s4, -0x1bd0
/* AD795C 800607BC 8C780018 */  lw    $t8, 0x18($v1)
/* AD7960 800607C0 8C71001C */  lw    $s1, 0x1c($v1)
/* AD7964 800607C4 0018C880 */  sll   $t9, $t8, 2
/* AD7968 800607C8 0338C823 */  subu  $t9, $t9, $t8
/* AD796C 800607CC 0019C8C0 */  sll   $t9, $t9, 3
/* AD7970 800607D0 0338C823 */  subu  $t9, $t9, $t8
/* AD7974 800607D4 0019C880 */  sll   $t9, $t9, 2
/* AD7978 800607D8 02394021 */  addu  $t0, $s1, $t9
/* AD797C 800607DC 0228082B */  sltu  $at, $s1, $t0
/* AD7980 800607E0 50200061 */  beql  $at, $zero, .L80060968
/* AD7984 800607E4 8FBF004C */   lw    $ra, 0x4c($sp)
.L800607E8:
/* AD7988 800607E8 0C0177CB */  jal   func_8005DF2C
/* AD798C 800607EC 02202025 */   move  $a0, $s1
/* AD7990 800607F0 10520050 */  beq   $v0, $s2, .L80060934
/* AD7994 800607F4 02202025 */   move  $a0, $s1
/* AD7998 800607F8 0C0177DD */  jal   func_8005DF74
/* AD799C 800607FC 02C02825 */   move  $a1, $s6
/* AD79A0 80060800 1052004C */  beq   $v0, $s2, .L80060934
/* AD79A4 80060804 02E02025 */   move  $a0, $s7
/* AD79A8 80060808 26300028 */  addiu $s0, $s1, 0x28
/* AD79AC 8006080C 02002825 */  move  $a1, $s0
/* AD79B0 80060810 0C034041 */  jal   func_800D0104
/* AD79B4 80060814 02803025 */   move  $a2, $s4
/* AD79B8 80060818 10520006 */  beq   $v0, $s2, .L80060834
/* AD79BC 8006081C 03C02025 */   move  $a0, $fp
/* AD79C0 80060820 02002825 */  move  $a1, $s0
/* AD79C4 80060824 0C034041 */  jal   func_800D0104
/* AD79C8 80060828 02803025 */   move  $a2, $s4
/* AD79CC 8006082C 54520042 */  bnel  $v0, $s2, .L80060938
/* AD79D0 80060830 8EAB0018 */   lw    $t3, 0x18($s5)
.L80060834:
/* AD79D4 80060834 C6240028 */  lwc1  $f4, 0x28($s1)
/* AD79D8 80060838 C6260034 */  lwc1  $f6, 0x34($s1)
/* AD79DC 8006083C C62A0040 */  lwc1  $f10, 0x40($s1)
/* AD79E0 80060840 3C018014 */  lui   $at, 0x8014
/* AD79E4 80060844 46062200 */  add.s $f8, $f4, $f6
/* AD79E8 80060848 C420AD1C */  lwc1  $f0, -0x52e4($at)
/* AD79EC 8006084C 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD79F0 80060850 44811000 */  mtc1  $at, $f2
/* AD79F4 80060854 46085400 */  add.s $f16, $f10, $f8
/* AD79F8 80060858 27A9005C */  addiu $t1, $sp, 0x5c
/* AD79FC 8006085C 8FA40080 */  lw    $a0, 0x80($sp)
/* AD7A00 80060860 8FA50088 */  lw    $a1, 0x88($sp)
/* AD7A04 80060864 46008482 */  mul.s $f18, $f16, $f0
/* AD7A08 80060868 02203025 */  move  $a2, $s1
/* AD7A0C 8006086C 27A70068 */  addiu $a3, $sp, 0x68
/* AD7A10 80060870 E7B20068 */  swc1  $f18, 0x68($sp)
/* AD7A14 80060874 C6260038 */  lwc1  $f6, 0x38($s1)
/* AD7A18 80060878 C624002C */  lwc1  $f4, 0x2c($s1)
/* AD7A1C 8006087C C6280044 */  lwc1  $f8, 0x44($s1)
/* AD7A20 80060880 46062280 */  add.s $f10, $f4, $f6
/* AD7A24 80060884 460A4400 */  add.s $f16, $f8, $f10
/* AD7A28 80060888 46008482 */  mul.s $f18, $f16, $f0
/* AD7A2C 8006088C E7B2006C */  swc1  $f18, 0x6c($sp)
/* AD7A30 80060890 C626003C */  lwc1  $f6, 0x3c($s1)
/* AD7A34 80060894 C6240030 */  lwc1  $f4, 0x30($s1)
/* AD7A38 80060898 C62A0048 */  lwc1  $f10, 0x48($s1)
/* AD7A3C 8006089C 46062200 */  add.s $f8, $f4, $f6
/* AD7A40 800608A0 46085400 */  add.s $f16, $f10, $f8
/* AD7A44 800608A4 46008482 */  mul.s $f18, $f16, $f0
/* AD7A48 800608A8 E7B20070 */  swc1  $f18, 0x70($sp)
/* AD7A4C 800608AC C6660064 */  lwc1  $f6, 0x64($s3)
/* AD7A50 800608B0 C6640058 */  lwc1  $f4, 0x58($s3)
/* AD7A54 800608B4 C668004C */  lwc1  $f8, 0x4c($s3)
/* AD7A58 800608B8 C6720040 */  lwc1  $f18, 0x40($s3)
/* AD7A5C 800608BC 46062280 */  add.s $f10, $f4, $f6
/* AD7A60 800608C0 46085400 */  add.s $f16, $f10, $f8
/* AD7A64 800608C4 46128100 */  add.s $f4, $f16, $f18
/* AD7A68 800608C8 46022182 */  mul.s $f6, $f4, $f2
/* AD7A6C 800608CC E7A6005C */  swc1  $f6, 0x5c($sp)
/* AD7A70 800608D0 C6680068 */  lwc1  $f8, 0x68($s3)
/* AD7A74 800608D4 C66A005C */  lwc1  $f10, 0x5c($s3)
/* AD7A78 800608D8 C6720050 */  lwc1  $f18, 0x50($s3)
/* AD7A7C 800608DC C6660044 */  lwc1  $f6, 0x44($s3)
/* AD7A80 800608E0 46085400 */  add.s $f16, $f10, $f8
/* AD7A84 800608E4 46128100 */  add.s $f4, $f16, $f18
/* AD7A88 800608E8 46062280 */  add.s $f10, $f4, $f6
/* AD7A8C 800608EC 46025202 */  mul.s $f8, $f10, $f2
/* AD7A90 800608F0 E7A80060 */  swc1  $f8, 0x60($sp)
/* AD7A94 800608F4 C672006C */  lwc1  $f18, 0x6c($s3)
/* AD7A98 800608F8 C6700060 */  lwc1  $f16, 0x60($s3)
/* AD7A9C 800608FC C6660054 */  lwc1  $f6, 0x54($s3)
/* AD7AA0 80060900 C6680048 */  lwc1  $f8, 0x48($s3)
/* AD7AA4 80060904 46128100 */  add.s $f4, $f16, $f18
/* AD7AA8 80060908 AFB4001C */  sw    $s4, 0x1c($sp)
/* AD7AAC 8006090C AFA90018 */  sw    $t1, 0x18($sp)
/* AD7AB0 80060910 AFB60014 */  sw    $s6, 0x14($sp)
/* AD7AB4 80060914 46062280 */  add.s $f10, $f4, $f6
/* AD7AB8 80060918 AFB30010 */  sw    $s3, 0x10($sp)
/* AD7ABC 8006091C 46085400 */  add.s $f16, $f10, $f8
/* AD7AC0 80060920 46028482 */  mul.s $f18, $f16, $f2
/* AD7AC4 80060924 0C017A07 */  jal   func_8005E81C
/* AD7AC8 80060928 E7B20064 */   swc1  $f18, 0x64($sp)
/* AD7ACC 8006092C 1000000E */  b     .L80060968
/* AD7AD0 80060930 8FBF004C */   lw    $ra, 0x4c($sp)
.L80060934:
/* AD7AD4 80060934 8EAB0018 */  lw    $t3, 0x18($s5)
.L80060938:
/* AD7AD8 80060938 8EAA001C */  lw    $t2, 0x1c($s5)
/* AD7ADC 8006093C 2631005C */  addiu $s1, $s1, 0x5c
/* AD7AE0 80060940 000B6080 */  sll   $t4, $t3, 2
/* AD7AE4 80060944 018B6023 */  subu  $t4, $t4, $t3
/* AD7AE8 80060948 000C60C0 */  sll   $t4, $t4, 3
/* AD7AEC 8006094C 018B6023 */  subu  $t4, $t4, $t3
/* AD7AF0 80060950 000C6080 */  sll   $t4, $t4, 2
/* AD7AF4 80060954 014C6821 */  addu  $t5, $t2, $t4
/* AD7AF8 80060958 022D082B */  sltu  $at, $s1, $t5
/* AD7AFC 8006095C 1420FFA2 */  bnez  $at, .L800607E8
/* AD7B00 80060960 00000000 */   nop   
.L80060964:
/* AD7B04 80060964 8FBF004C */  lw    $ra, 0x4c($sp)
.L80060968:
/* AD7B08 80060968 8FB00028 */  lw    $s0, 0x28($sp)
/* AD7B0C 8006096C 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD7B10 80060970 8FB20030 */  lw    $s2, 0x30($sp)
/* AD7B14 80060974 8FB30034 */  lw    $s3, 0x34($sp)
/* AD7B18 80060978 8FB40038 */  lw    $s4, 0x38($sp)
/* AD7B1C 8006097C 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD7B20 80060980 8FB60040 */  lw    $s6, 0x40($sp)
/* AD7B24 80060984 8FB70044 */  lw    $s7, 0x44($sp)
/* AD7B28 80060988 8FBE0048 */  lw    $fp, 0x48($sp)
/* AD7B2C 8006098C 03E00008 */  jr    $ra
/* AD7B30 80060990 27BD0080 */   addiu $sp, $sp, 0x80

/* AD7B34 80060994 27BDFF80 */  addiu $sp, $sp, -0x80
/* AD7B38 80060998 AFBF004C */  sw    $ra, 0x4c($sp)
/* AD7B3C 8006099C AFBE0048 */  sw    $fp, 0x48($sp)
/* AD7B40 800609A0 AFB70044 */  sw    $s7, 0x44($sp)
/* AD7B44 800609A4 AFB60040 */  sw    $s6, 0x40($sp)
/* AD7B48 800609A8 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD7B4C 800609AC AFB40038 */  sw    $s4, 0x38($sp)
/* AD7B50 800609B0 AFB30034 */  sw    $s3, 0x34($sp)
/* AD7B54 800609B4 AFB20030 */  sw    $s2, 0x30($sp)
/* AD7B58 800609B8 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD7B5C 800609BC AFB00028 */  sw    $s0, 0x28($sp)
/* AD7B60 800609C0 AFA40080 */  sw    $a0, 0x80($sp)
/* AD7B64 800609C4 AFA50084 */  sw    $a1, 0x84($sp)
/* AD7B68 800609C8 8CEE0018 */  lw    $t6, 0x18($a3)
/* AD7B6C 800609CC 00C0A025 */  move  $s4, $a2
/* AD7B70 800609D0 00E0A825 */  move  $s5, $a3
/* AD7B74 800609D4 59C0008A */  blezl $t6, .L80060C00
/* AD7B78 800609D8 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD7B7C 800609DC 8CEF001C */  lw    $t7, 0x1c($a3)
/* AD7B80 800609E0 24D70018 */  addiu $s7, $a2, 0x18
/* AD7B84 800609E4 02E02025 */  move  $a0, $s7
/* AD7B88 800609E8 51E00085 */  beql  $t7, $zero, .L80060C00
/* AD7B8C 800609EC 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD7B90 800609F0 0C0177CB */  jal   func_8005DF2C
/* AD7B94 800609F4 AFA7008C */   sw    $a3, 0x8c($sp)
/* AD7B98 800609F8 24120001 */  li    $s2, 1
/* AD7B9C 800609FC 1052007F */  beq   $v0, $s2, .L80060BFC
/* AD7BA0 80060A00 3C1E8016 */   lui   $fp, %hi(D_8015E4C0) # $fp, 0x8016
/* AD7BA4 80060A04 27DEE4C0 */  addiu $fp, %lo(D_8015E4C0) # addiu $fp, $fp, -0x1b40
/* AD7BA8 80060A08 26910058 */  addiu $s1, $s4, 0x58
/* AD7BAC 80060A0C 2690004C */  addiu $s0, $s4, 0x4c
/* AD7BB0 80060A10 02003825 */  move  $a3, $s0
/* AD7BB4 80060A14 02202825 */  move  $a1, $s1
/* AD7BB8 80060A18 03C02025 */  move  $a0, $fp
/* AD7BBC 80060A1C 0C0338F0 */  jal   func_800CE3C0
/* AD7BC0 80060A20 26860064 */   addiu $a2, $s4, 0x64
/* AD7BC4 80060A24 3C048016 */  lui   $a0, %hi(D_8015E4F8) # $a0, 0x8016
/* AD7BC8 80060A28 2484E4F8 */  addiu $a0, %lo(D_8015E4F8) # addiu $a0, $a0, -0x1b08
/* AD7BCC 80060A2C 02002825 */  move  $a1, $s0
/* AD7BD0 80060A30 26860040 */  addiu $a2, $s4, 0x40
/* AD7BD4 80060A34 0C0338F0 */  jal   func_800CE3C0
/* AD7BD8 80060A38 02203825 */   move  $a3, $s1
/* AD7BDC 80060A3C 8FA3008C */  lw    $v1, 0x8c($sp)
/* AD7BE0 80060A40 2416005C */  li    $s6, 92
/* AD7BE4 80060A44 3C138016 */  lui   $s3, %hi(D_8015E4B0) # $s3, 0x8016
/* AD7BE8 80060A48 8C780018 */  lw    $t8, 0x18($v1)
/* AD7BEC 80060A4C 8C71001C */  lw    $s1, 0x1c($v1)
/* AD7BF0 80060A50 2673E4B0 */  addiu $s3, %lo(D_8015E4B0) # addiu $s3, $s3, -0x1b50
/* AD7BF4 80060A54 03160019 */  multu $t8, $s6
/* AD7BF8 80060A58 0000C812 */  mflo  $t9
/* AD7BFC 80060A5C 02394021 */  addu  $t0, $s1, $t9
/* AD7C00 80060A60 0228082B */  sltu  $at, $s1, $t0
/* AD7C04 80060A64 50200066 */  beql  $at, $zero, .L80060C00
/* AD7C08 80060A68 8FBF004C */   lw    $ra, 0x4c($sp)
.L80060A6C:
/* AD7C0C 80060A6C 0C0177D4 */  jal   func_8005DF50
/* AD7C10 80060A70 02202025 */   move  $a0, $s1
/* AD7C14 80060A74 10520058 */  beq   $v0, $s2, .L80060BD8
/* AD7C18 80060A78 02E02025 */   move  $a0, $s7
/* AD7C1C 80060A7C 0C0177DD */  jal   func_8005DF74
/* AD7C20 80060A80 02202825 */   move  $a1, $s1
/* AD7C24 80060A84 10520054 */  beq   $v0, $s2, .L80060BD8
/* AD7C28 80060A88 03C02025 */   move  $a0, $fp
/* AD7C2C 80060A8C 26300028 */  addiu $s0, $s1, 0x28
/* AD7C30 80060A90 02002825 */  move  $a1, $s0
/* AD7C34 80060A94 0C034041 */  jal   func_800D0104
/* AD7C38 80060A98 02603025 */   move  $a2, $s3
/* AD7C3C 80060A9C 10520007 */  beq   $v0, $s2, .L80060ABC
/* AD7C40 80060AA0 3C048016 */   lui   $a0, %hi(D_8015E4F8) # $a0, 0x8016
/* AD7C44 80060AA4 2484E4F8 */  addiu $a0, %lo(D_8015E4F8) # addiu $a0, $a0, -0x1b08
/* AD7C48 80060AA8 02002825 */  move  $a1, $s0
/* AD7C4C 80060AAC 0C034041 */  jal   func_800D0104
/* AD7C50 80060AB0 02603025 */   move  $a2, $s3
/* AD7C54 80060AB4 54520049 */  bnel  $v0, $s2, .L80060BDC
/* AD7C58 80060AB8 8EAC0018 */   lw    $t4, 0x18($s5)
.L80060ABC:
/* AD7C5C 80060ABC 8FA40080 */  lw    $a0, 0x80($sp)
/* AD7C60 80060AC0 02802825 */  move  $a1, $s4
/* AD7C64 80060AC4 0C017486 */  jal   func_8005D218
/* AD7C68 80060AC8 02603025 */   move  $a2, $s3
/* AD7C6C 80060ACC 50400043 */  beql  $v0, $zero, .L80060BDC
/* AD7C70 80060AD0 8EAC0018 */   lw    $t4, 0x18($s5)
/* AD7C74 80060AD4 C6240028 */  lwc1  $f4, 0x28($s1)
/* AD7C78 80060AD8 C6260034 */  lwc1  $f6, 0x34($s1)
/* AD7C7C 80060ADC C62A0040 */  lwc1  $f10, 0x40($s1)
/* AD7C80 80060AE0 3C018014 */  lui   $at, 0x8014
/* AD7C84 80060AE4 46062200 */  add.s $f8, $f4, $f6
/* AD7C88 80060AE8 C420AD20 */  lwc1  $f0, -0x52e0($at)
/* AD7C8C 80060AEC 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD7C90 80060AF0 44811000 */  mtc1  $at, $f2
/* AD7C94 80060AF4 46085400 */  add.s $f16, $f10, $f8
/* AD7C98 80060AF8 8FA9008C */  lw    $t1, 0x8c($sp)
/* AD7C9C 80060AFC 27AA005C */  addiu $t2, $sp, 0x5c
/* AD7CA0 80060B00 8FA40080 */  lw    $a0, 0x80($sp)
/* AD7CA4 80060B04 46008482 */  mul.s $f18, $f16, $f0
/* AD7CA8 80060B08 02802825 */  move  $a1, $s4
/* AD7CAC 80060B0C 02E03025 */  move  $a2, $s7
/* AD7CB0 80060B10 27A70068 */  addiu $a3, $sp, 0x68
/* AD7CB4 80060B14 E7B2005C */  swc1  $f18, 0x5c($sp)
/* AD7CB8 80060B18 C6260038 */  lwc1  $f6, 0x38($s1)
/* AD7CBC 80060B1C C624002C */  lwc1  $f4, 0x2c($s1)
/* AD7CC0 80060B20 C6280044 */  lwc1  $f8, 0x44($s1)
/* AD7CC4 80060B24 46062280 */  add.s $f10, $f4, $f6
/* AD7CC8 80060B28 460A4400 */  add.s $f16, $f8, $f10
/* AD7CCC 80060B2C 46008482 */  mul.s $f18, $f16, $f0
/* AD7CD0 80060B30 E7B20060 */  swc1  $f18, 0x60($sp)
/* AD7CD4 80060B34 C626003C */  lwc1  $f6, 0x3c($s1)
/* AD7CD8 80060B38 C6240030 */  lwc1  $f4, 0x30($s1)
/* AD7CDC 80060B3C C62A0048 */  lwc1  $f10, 0x48($s1)
/* AD7CE0 80060B40 46062200 */  add.s $f8, $f4, $f6
/* AD7CE4 80060B44 46085400 */  add.s $f16, $f10, $f8
/* AD7CE8 80060B48 46008482 */  mul.s $f18, $f16, $f0
/* AD7CEC 80060B4C E7B20064 */  swc1  $f18, 0x64($sp)
/* AD7CF0 80060B50 C6860064 */  lwc1  $f6, 0x64($s4)
/* AD7CF4 80060B54 C6840058 */  lwc1  $f4, 0x58($s4)
/* AD7CF8 80060B58 C688004C */  lwc1  $f8, 0x4c($s4)
/* AD7CFC 80060B5C C6920040 */  lwc1  $f18, 0x40($s4)
/* AD7D00 80060B60 46062280 */  add.s $f10, $f4, $f6
/* AD7D04 80060B64 46085400 */  add.s $f16, $f10, $f8
/* AD7D08 80060B68 46128100 */  add.s $f4, $f16, $f18
/* AD7D0C 80060B6C 46022182 */  mul.s $f6, $f4, $f2
/* AD7D10 80060B70 E7A60068 */  swc1  $f6, 0x68($sp)
/* AD7D14 80060B74 C6880068 */  lwc1  $f8, 0x68($s4)
/* AD7D18 80060B78 C68A005C */  lwc1  $f10, 0x5c($s4)
/* AD7D1C 80060B7C C6920050 */  lwc1  $f18, 0x50($s4)
/* AD7D20 80060B80 C6860044 */  lwc1  $f6, 0x44($s4)
/* AD7D24 80060B84 46085400 */  add.s $f16, $f10, $f8
/* AD7D28 80060B88 46128100 */  add.s $f4, $f16, $f18
/* AD7D2C 80060B8C 46062280 */  add.s $f10, $f4, $f6
/* AD7D30 80060B90 46025202 */  mul.s $f8, $f10, $f2
/* AD7D34 80060B94 E7A8006C */  swc1  $f8, 0x6c($sp)
/* AD7D38 80060B98 C692006C */  lwc1  $f18, 0x6c($s4)
/* AD7D3C 80060B9C C6900060 */  lwc1  $f16, 0x60($s4)
/* AD7D40 80060BA0 C6860054 */  lwc1  $f6, 0x54($s4)
/* AD7D44 80060BA4 C6880048 */  lwc1  $f8, 0x48($s4)
/* AD7D48 80060BA8 46128100 */  add.s $f4, $f16, $f18
/* AD7D4C 80060BAC AFB3001C */  sw    $s3, 0x1c($sp)
/* AD7D50 80060BB0 AFAA0018 */  sw    $t2, 0x18($sp)
/* AD7D54 80060BB4 AFB10014 */  sw    $s1, 0x14($sp)
/* AD7D58 80060BB8 46062280 */  add.s $f10, $f4, $f6
/* AD7D5C 80060BBC AFA90010 */  sw    $t1, 0x10($sp)
/* AD7D60 80060BC0 46085400 */  add.s $f16, $f10, $f8
/* AD7D64 80060BC4 46028482 */  mul.s $f18, $f16, $f2
/* AD7D68 80060BC8 0C017A07 */  jal   func_8005E81C
/* AD7D6C 80060BCC E7B20070 */   swc1  $f18, 0x70($sp)
/* AD7D70 80060BD0 1000000B */  b     .L80060C00
/* AD7D74 80060BD4 8FBF004C */   lw    $ra, 0x4c($sp)
.L80060BD8:
/* AD7D78 80060BD8 8EAC0018 */  lw    $t4, 0x18($s5)
.L80060BDC:
/* AD7D7C 80060BDC 8EAB001C */  lw    $t3, 0x1c($s5)
/* AD7D80 80060BE0 2631005C */  addiu $s1, $s1, 0x5c
/* AD7D84 80060BE4 01960019 */  multu $t4, $s6
/* AD7D88 80060BE8 00006812 */  mflo  $t5
/* AD7D8C 80060BEC 016D7021 */  addu  $t6, $t3, $t5
/* AD7D90 80060BF0 022E082B */  sltu  $at, $s1, $t6
/* AD7D94 80060BF4 1420FF9D */  bnez  $at, .L80060A6C
/* AD7D98 80060BF8 00000000 */   nop   
.L80060BFC:
/* AD7D9C 80060BFC 8FBF004C */  lw    $ra, 0x4c($sp)
.L80060C00:
/* AD7DA0 80060C00 8FB00028 */  lw    $s0, 0x28($sp)
/* AD7DA4 80060C04 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD7DA8 80060C08 8FB20030 */  lw    $s2, 0x30($sp)
/* AD7DAC 80060C0C 8FB30034 */  lw    $s3, 0x34($sp)
/* AD7DB0 80060C10 8FB40038 */  lw    $s4, 0x38($sp)
/* AD7DB4 80060C14 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD7DB8 80060C18 8FB60040 */  lw    $s6, 0x40($sp)
/* AD7DBC 80060C1C 8FB70044 */  lw    $s7, 0x44($sp)
/* AD7DC0 80060C20 8FBE0048 */  lw    $fp, 0x48($sp)
/* AD7DC4 80060C24 03E00008 */  jr    $ra
/* AD7DC8 80060C28 27BD0080 */   addiu $sp, $sp, 0x80

/* AD7DCC 80060C2C 27BDFF78 */  addiu $sp, $sp, -0x88
/* AD7DD0 80060C30 AFB60040 */  sw    $s6, 0x40($sp)
/* AD7DD4 80060C34 0080B025 */  move  $s6, $a0
/* AD7DD8 80060C38 AFBF004C */  sw    $ra, 0x4c($sp)
/* AD7DDC 80060C3C AFB70044 */  sw    $s7, 0x44($sp)
/* AD7DE0 80060C40 AFB40038 */  sw    $s4, 0x38($sp)
/* AD7DE4 80060C44 24C40018 */  addiu $a0, $a2, 0x18
/* AD7DE8 80060C48 00C0A025 */  move  $s4, $a2
/* AD7DEC 80060C4C 00E0B825 */  move  $s7, $a3
/* AD7DF0 80060C50 AFBE0048 */  sw    $fp, 0x48($sp)
/* AD7DF4 80060C54 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD7DF8 80060C58 AFB30034 */  sw    $s3, 0x34($sp)
/* AD7DFC 80060C5C AFB20030 */  sw    $s2, 0x30($sp)
/* AD7E00 80060C60 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD7E04 80060C64 AFB00028 */  sw    $s0, 0x28($sp)
/* AD7E08 80060C68 AFA5008C */  sw    $a1, 0x8c($sp)
/* AD7E0C 80060C6C 0C0177CB */  jal   func_8005DF2C
/* AD7E10 80060C70 AFA4005C */   sw    $a0, 0x5c($sp)
/* AD7E14 80060C74 24150001 */  li    $s5, 1
/* AD7E18 80060C78 10550084 */  beq   $v0, $s5, .L80060E8C
/* AD7E1C 80060C7C 26E40018 */   addiu $a0, $s7, 0x18
/* AD7E20 80060C80 0C0177D4 */  jal   func_8005DF50
/* AD7E24 80060C84 AFA40050 */   sw    $a0, 0x50($sp)
/* AD7E28 80060C88 10550080 */  beq   $v0, $s5, .L80060E8C
/* AD7E2C 80060C8C 8FA4005C */   lw    $a0, 0x5c($sp)
/* AD7E30 80060C90 0C0177DD */  jal   func_8005DF74
/* AD7E34 80060C94 8FA50050 */   lw    $a1, 0x50($sp)
/* AD7E38 80060C98 1055007C */  beq   $v0, $s5, .L80060E8C
/* AD7E3C 80060C9C 3C048016 */   lui   $a0, %hi(D_8015E5A8) # $a0, 0x8016
/* AD7E40 80060CA0 26900058 */  addiu $s0, $s4, 0x58
/* AD7E44 80060CA4 2691004C */  addiu $s1, $s4, 0x4c
/* AD7E48 80060CA8 02203825 */  move  $a3, $s1
/* AD7E4C 80060CAC 02002825 */  move  $a1, $s0
/* AD7E50 80060CB0 2484E5A8 */  addiu $a0, %lo(D_8015E5A8) # addiu $a0, $a0, -0x1a58
/* AD7E54 80060CB4 0C0338F0 */  jal   func_800CE3C0
/* AD7E58 80060CB8 26860064 */   addiu $a2, $s4, 0x64
/* AD7E5C 80060CBC 3C048016 */  lui   $a0, %hi(D_8015E5DC) # $a0, 0x8016
/* AD7E60 80060CC0 2484E5DC */  addiu $a0, %lo(D_8015E5DC) # addiu $a0, $a0, -0x1a24
/* AD7E64 80060CC4 02002825 */  move  $a1, $s0
/* AD7E68 80060CC8 02203025 */  move  $a2, $s1
/* AD7E6C 80060CCC 0C0338F0 */  jal   func_800CE3C0
/* AD7E70 80060CD0 26870040 */   addiu $a3, $s4, 0x40
/* AD7E74 80060CD4 3C048016 */  lui   $a0, %hi(D_8015E530) # $a0, 0x8016
/* AD7E78 80060CD8 26F00058 */  addiu $s0, $s7, 0x58
/* AD7E7C 80060CDC 26F1004C */  addiu $s1, $s7, 0x4c
/* AD7E80 80060CE0 02203825 */  move  $a3, $s1
/* AD7E84 80060CE4 02002825 */  move  $a1, $s0
/* AD7E88 80060CE8 2484E530 */  addiu $a0, %lo(D_8015E530) # addiu $a0, $a0, -0x1ad0
/* AD7E8C 80060CEC 0C0338F0 */  jal   func_800CE3C0
/* AD7E90 80060CF0 26E60064 */   addiu $a2, $s7, 0x64
/* AD7E94 80060CF4 3C048016 */  lui   $a0, %hi(D_8015E564) # $a0, 0x8016
/* AD7E98 80060CF8 2484E564 */  addiu $a0, %lo(D_8015E564) # addiu $a0, $a0, -0x1a9c
/* AD7E9C 80060CFC 02002825 */  move  $a1, $s0
/* AD7EA0 80060D00 02203025 */  move  $a2, $s1
/* AD7EA4 80060D04 0C0338F0 */  jal   func_800CE3C0
/* AD7EA8 80060D08 26E70040 */   addiu $a3, $s7, 0x40
/* AD7EAC 80060D0C 3C128016 */  lui   $s2, %hi(D_8015E530) # $s2, 0x8016
/* AD7EB0 80060D10 3C1E8016 */  lui   $fp, %hi(D_8015E598) # $fp, 0x8016
/* AD7EB4 80060D14 3C138016 */  lui   $s3, %hi(D_8015E610) # $s3, 0x8016
/* AD7EB8 80060D18 3C118016 */  lui   $s1, %hi(D_8015E598) # $s1, 0x8016
/* AD7EBC 80060D1C 2631E598 */  addiu $s1, %lo(D_8015E598) # addiu $s1, $s1, -0x1a68
/* AD7EC0 80060D20 2673E610 */  addiu $s3, %lo(D_8015E610) # addiu $s3, $s3, -0x19f0
/* AD7EC4 80060D24 27DEE598 */  addiu $fp, %lo(D_8015E598) # addiu $fp, $fp, -0x1a68
/* AD7EC8 80060D28 2652E530 */  addiu $s2, %lo(D_8015E530) # addiu $s2, $s2, -0x1ad0
.L80060D2C:
/* AD7ECC 80060D2C 3C108016 */  lui   $s0, %hi(D_8015E5A8) # $s0, 0x8016
/* AD7ED0 80060D30 2610E5A8 */  addiu $s0, %lo(D_8015E5A8) # addiu $s0, $s0, -0x1a58
/* AD7ED4 80060D34 02002025 */  move  $a0, $s0
.L80060D38:
/* AD7ED8 80060D38 02402825 */  move  $a1, $s2
/* AD7EDC 80060D3C 0C034041 */  jal   func_800D0104
/* AD7EE0 80060D40 02203025 */   move  $a2, $s1
/* AD7EE4 80060D44 1455004B */  bne   $v0, $s5, .L80060E74
/* AD7EE8 80060D48 02C02025 */   move  $a0, $s6
/* AD7EEC 80060D4C 02802825 */  move  $a1, $s4
/* AD7EF0 80060D50 0C017486 */  jal   func_8005D218
/* AD7EF4 80060D54 02203025 */   move  $a2, $s1
/* AD7EF8 80060D58 50400047 */  beql  $v0, $zero, .L80060E78
/* AD7EFC 80060D5C 26100034 */   addiu $s0, $s0, 0x34
/* AD7F00 80060D60 C6840058 */  lwc1  $f4, 0x58($s4)
/* AD7F04 80060D64 C6860064 */  lwc1  $f6, 0x64($s4)
/* AD7F08 80060D68 C68A004C */  lwc1  $f10, 0x4c($s4)
/* AD7F0C 80060D6C C6920040 */  lwc1  $f18, 0x40($s4)
/* AD7F10 80060D70 46062200 */  add.s $f8, $f4, $f6
/* AD7F14 80060D74 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AD7F18 80060D78 44810000 */  mtc1  $at, $f0
/* AD7F1C 80060D7C 8FAE0050 */  lw    $t6, 0x50($sp)
/* AD7F20 80060D80 460A4400 */  add.s $f16, $f8, $f10
/* AD7F24 80060D84 27AF0060 */  addiu $t7, $sp, 0x60
/* AD7F28 80060D88 02C02025 */  move  $a0, $s6
/* AD7F2C 80060D8C 02802825 */  move  $a1, $s4
/* AD7F30 80060D90 46128100 */  add.s $f4, $f16, $f18
/* AD7F34 80060D94 8FA6005C */  lw    $a2, 0x5c($sp)
/* AD7F38 80060D98 27A7006C */  addiu $a3, $sp, 0x6c
/* AD7F3C 80060D9C 46002182 */  mul.s $f6, $f4, $f0
/* AD7F40 80060DA0 E7A6006C */  swc1  $f6, 0x6c($sp)
/* AD7F44 80060DA4 C68A0068 */  lwc1  $f10, 0x68($s4)
/* AD7F48 80060DA8 C688005C */  lwc1  $f8, 0x5c($s4)
/* AD7F4C 80060DAC C6920050 */  lwc1  $f18, 0x50($s4)
/* AD7F50 80060DB0 C6860044 */  lwc1  $f6, 0x44($s4)
/* AD7F54 80060DB4 460A4400 */  add.s $f16, $f8, $f10
/* AD7F58 80060DB8 46128100 */  add.s $f4, $f16, $f18
/* AD7F5C 80060DBC 46062200 */  add.s $f8, $f4, $f6
/* AD7F60 80060DC0 46004282 */  mul.s $f10, $f8, $f0
/* AD7F64 80060DC4 E7AA0070 */  swc1  $f10, 0x70($sp)
/* AD7F68 80060DC8 C692006C */  lwc1  $f18, 0x6c($s4)
/* AD7F6C 80060DCC C6900060 */  lwc1  $f16, 0x60($s4)
/* AD7F70 80060DD0 C6860054 */  lwc1  $f6, 0x54($s4)
/* AD7F74 80060DD4 C68A0048 */  lwc1  $f10, 0x48($s4)
/* AD7F78 80060DD8 46128100 */  add.s $f4, $f16, $f18
/* AD7F7C 80060DDC 46062200 */  add.s $f8, $f4, $f6
/* AD7F80 80060DE0 460A4400 */  add.s $f16, $f8, $f10
/* AD7F84 80060DE4 46008482 */  mul.s $f18, $f16, $f0
/* AD7F88 80060DE8 E7B20074 */  swc1  $f18, 0x74($sp)
/* AD7F8C 80060DEC C6E60064 */  lwc1  $f6, 0x64($s7)
/* AD7F90 80060DF0 C6E40058 */  lwc1  $f4, 0x58($s7)
/* AD7F94 80060DF4 C6EA004C */  lwc1  $f10, 0x4c($s7)
/* AD7F98 80060DF8 C6F20040 */  lwc1  $f18, 0x40($s7)
/* AD7F9C 80060DFC 46062200 */  add.s $f8, $f4, $f6
/* AD7FA0 80060E00 460A4400 */  add.s $f16, $f8, $f10
/* AD7FA4 80060E04 46128100 */  add.s $f4, $f16, $f18
/* AD7FA8 80060E08 46002182 */  mul.s $f6, $f4, $f0
/* AD7FAC 80060E0C E7A60060 */  swc1  $f6, 0x60($sp)
/* AD7FB0 80060E10 C6EA0068 */  lwc1  $f10, 0x68($s7)
/* AD7FB4 80060E14 C6E8005C */  lwc1  $f8, 0x5c($s7)
/* AD7FB8 80060E18 C6F20050 */  lwc1  $f18, 0x50($s7)
/* AD7FBC 80060E1C C6E60044 */  lwc1  $f6, 0x44($s7)
/* AD7FC0 80060E20 460A4400 */  add.s $f16, $f8, $f10
/* AD7FC4 80060E24 46128100 */  add.s $f4, $f16, $f18
/* AD7FC8 80060E28 46062200 */  add.s $f8, $f4, $f6
/* AD7FCC 80060E2C 46004282 */  mul.s $f10, $f8, $f0
/* AD7FD0 80060E30 E7AA0064 */  swc1  $f10, 0x64($sp)
/* AD7FD4 80060E34 C6F2006C */  lwc1  $f18, 0x6c($s7)
/* AD7FD8 80060E38 C6F00060 */  lwc1  $f16, 0x60($s7)
/* AD7FDC 80060E3C C6E60054 */  lwc1  $f6, 0x54($s7)
/* AD7FE0 80060E40 C6EA0048 */  lwc1  $f10, 0x48($s7)
/* AD7FE4 80060E44 46128100 */  add.s $f4, $f16, $f18
/* AD7FE8 80060E48 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD7FEC 80060E4C AFAF0018 */  sw    $t7, 0x18($sp)
/* AD7FF0 80060E50 AFB70010 */  sw    $s7, 0x10($sp)
/* AD7FF4 80060E54 46062200 */  add.s $f8, $f4, $f6
/* AD7FF8 80060E58 AFAE0014 */  sw    $t6, 0x14($sp)
/* AD7FFC 80060E5C 460A4400 */  add.s $f16, $f8, $f10
/* AD8000 80060E60 46008482 */  mul.s $f18, $f16, $f0
/* AD8004 80060E64 0C017A07 */  jal   func_8005E81C
/* AD8008 80060E68 E7B20068 */   swc1  $f18, 0x68($sp)
/* AD800C 80060E6C 10000008 */  b     .L80060E90
/* AD8010 80060E70 8FBF004C */   lw    $ra, 0x4c($sp)
.L80060E74:
/* AD8014 80060E74 26100034 */  addiu $s0, $s0, 0x34
.L80060E78:
/* AD8018 80060E78 5613FFAF */  bnel  $s0, $s3, .L80060D38
/* AD801C 80060E7C 02002025 */   move  $a0, $s0
/* AD8020 80060E80 26520034 */  addiu $s2, $s2, 0x34
/* AD8024 80060E84 165EFFA9 */  bne   $s2, $fp, .L80060D2C
/* AD8028 80060E88 00000000 */   nop   
.L80060E8C:
/* AD802C 80060E8C 8FBF004C */  lw    $ra, 0x4c($sp)
.L80060E90:
/* AD8030 80060E90 8FB00028 */  lw    $s0, 0x28($sp)
/* AD8034 80060E94 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD8038 80060E98 8FB20030 */  lw    $s2, 0x30($sp)
/* AD803C 80060E9C 8FB30034 */  lw    $s3, 0x34($sp)
/* AD8040 80060EA0 8FB40038 */  lw    $s4, 0x38($sp)
/* AD8044 80060EA4 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD8048 80060EA8 8FB60040 */  lw    $s6, 0x40($sp)
/* AD804C 80060EAC 8FB70044 */  lw    $s7, 0x44($sp)
/* AD8050 80060EB0 8FBE0048 */  lw    $fp, 0x48($sp)
/* AD8054 80060EB4 03E00008 */  jr    $ra
/* AD8058 80060EB8 27BD0088 */   addiu $sp, $sp, 0x88

/* AD805C 80060EBC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD8060 80060EC0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD8064 80060EC4 AFA40038 */  sw    $a0, 0x38($sp)
/* AD8068 80060EC8 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD806C 80060ECC 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD8070 80060ED0 8CC2001C */  lw    $v0, 0x1c($a2)
/* AD8074 80060ED4 00C03825 */  move  $a3, $a2
/* AD8078 80060ED8 000E7980 */  sll   $t7, $t6, 6
/* AD807C 80060EDC 004FC021 */  addu  $t8, $v0, $t7
/* AD8080 80060EE0 0058082B */  sltu  $at, $v0, $t8
/* AD8084 80060EE4 10200027 */  beqz  $at, .L80060F84
/* AD8088 80060EE8 00C02825 */   move  $a1, $a2
/* AD808C 80060EEC 90590016 */  lbu   $t9, 0x16($v0)
.L80060EF0:
/* AD8090 80060EF0 33280080 */  andi  $t0, $t9, 0x80
/* AD8094 80060EF4 5100001C */  beql  $t0, $zero, .L80060F68
/* AD8098 80060EF8 8CAF0018 */   lw    $t7, 0x18($a1)
/* AD809C 80060EFC 8C430024 */  lw    $v1, 0x24($v0)
/* AD80A0 80060F00 50600019 */  beql  $v1, $zero, .L80060F68
/* AD80A4 80060F04 8CAF0018 */   lw    $t7, 0x18($a1)
/* AD80A8 80060F08 90690015 */  lbu   $t1, 0x15($v1)
/* AD80AC 80060F0C 312A0040 */  andi  $t2, $t1, 0x40
/* AD80B0 80060F10 15400014 */  bnez  $t2, .L80060F64
/* AD80B4 80060F14 27A40024 */   addiu $a0, $sp, 0x24
/* AD80B8 80060F18 2445000E */  addiu $a1, $v0, 0xe
/* AD80BC 80060F1C AFA20030 */  sw    $v0, 0x30($sp)
/* AD80C0 80060F20 0C01DF97 */  jal   func_80077E5C
/* AD80C4 80060F24 AFA70040 */   sw    $a3, 0x40($sp)
/* AD80C8 80060F28 8FA20030 */  lw    $v0, 0x30($sp)
/* AD80CC 80060F2C 27AB0024 */  addiu $t3, $sp, 0x24
/* AD80D0 80060F30 8FA70040 */  lw    $a3, 0x40($sp)
/* AD80D4 80060F34 8C45001C */  lw    $a1, 0x1c($v0)
/* AD80D8 80060F38 8C460024 */  lw    $a2, 0x24($v0)
/* AD80DC 80060F3C AFAB0014 */  sw    $t3, 0x14($sp)
/* AD80E0 80060F40 8FA40038 */  lw    $a0, 0x38($sp)
/* AD80E4 80060F44 0C017981 */  jal   func_8005E604
/* AD80E8 80060F48 AFA20010 */   sw    $v0, 0x10($sp)
/* AD80EC 80060F4C 8FA20030 */  lw    $v0, 0x30($sp)
/* AD80F0 80060F50 8C430024 */  lw    $v1, 0x24($v0)
/* AD80F4 80060F54 906C0015 */  lbu   $t4, 0x15($v1)
/* AD80F8 80060F58 358D0040 */  ori   $t5, $t4, 0x40
/* AD80FC 80060F5C 10000009 */  b     .L80060F84
/* AD8100 80060F60 A06D0015 */   sb    $t5, 0x15($v1)
.L80060F64:
/* AD8104 80060F64 8CAF0018 */  lw    $t7, 0x18($a1)
.L80060F68:
/* AD8108 80060F68 8CAE001C */  lw    $t6, 0x1c($a1)
/* AD810C 80060F6C 24420040 */  addiu $v0, $v0, 0x40
/* AD8110 80060F70 000FC180 */  sll   $t8, $t7, 6
/* AD8114 80060F74 01D8C821 */  addu  $t9, $t6, $t8
/* AD8118 80060F78 0059082B */  sltu  $at, $v0, $t9
/* AD811C 80060F7C 5420FFDC */  bnezl $at, .L80060EF0
/* AD8120 80060F80 90590016 */   lbu   $t9, 0x16($v0)
.L80060F84:
/* AD8124 80060F84 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD8128 80060F88 27BD0038 */  addiu $sp, $sp, 0x38
/* AD812C 80060F8C 03E00008 */  jr    $ra
/* AD8130 80060F90 00000000 */   nop   

/* AD8134 80060F94 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD8138 80060F98 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD813C 80060F9C AFA40038 */  sw    $a0, 0x38($sp)
/* AD8140 80060FA0 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD8144 80060FA4 90CE002E */  lbu   $t6, 0x2e($a2)
/* AD8148 80060FA8 31CF0080 */  andi  $t7, $t6, 0x80
/* AD814C 80060FAC 51E0001B */  beql  $t7, $zero, .L8006101C
/* AD8150 80060FB0 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD8154 80060FB4 8CC2003C */  lw    $v0, 0x3c($a2)
/* AD8158 80060FB8 50400018 */  beql  $v0, $zero, .L8006101C
/* AD815C 80060FBC 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD8160 80060FC0 90580015 */  lbu   $t8, 0x15($v0)
/* AD8164 80060FC4 27A40028 */  addiu $a0, $sp, 0x28
/* AD8168 80060FC8 24C50026 */  addiu $a1, $a2, 0x26
/* AD816C 80060FCC 33190040 */  andi  $t9, $t8, 0x40
/* AD8170 80060FD0 57200012 */  bnezl $t9, .L8006101C
/* AD8174 80060FD4 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD8178 80060FD8 0C01DF97 */  jal   func_80077E5C
/* AD817C 80060FDC AFA60040 */   sw    $a2, 0x40($sp)
/* AD8180 80060FE0 8FA70040 */  lw    $a3, 0x40($sp)
/* AD8184 80060FE4 27A90028 */  addiu $t1, $sp, 0x28
/* AD8188 80060FE8 8FA40038 */  lw    $a0, 0x38($sp)
/* AD818C 80060FEC 8CE50034 */  lw    $a1, 0x34($a3)
/* AD8190 80060FF0 8CE6003C */  lw    $a2, 0x3c($a3)
/* AD8194 80060FF4 24E80018 */  addiu $t0, $a3, 0x18
/* AD8198 80060FF8 AFA80010 */  sw    $t0, 0x10($sp)
/* AD819C 80060FFC 0C017981 */  jal   func_8005E604
/* AD81A0 80061000 AFA90014 */   sw    $t1, 0x14($sp)
/* AD81A4 80061004 8FA70040 */  lw    $a3, 0x40($sp)
/* AD81A8 80061008 8CE2003C */  lw    $v0, 0x3c($a3)
/* AD81AC 8006100C 904A0015 */  lbu   $t2, 0x15($v0)
/* AD81B0 80061010 354B0040 */  ori   $t3, $t2, 0x40
/* AD81B4 80061014 A04B0015 */  sb    $t3, 0x15($v0)
/* AD81B8 80061018 8FBF001C */  lw    $ra, 0x1c($sp)
.L8006101C:
/* AD81BC 8006101C 27BD0038 */  addiu $sp, $sp, 0x38
/* AD81C0 80061020 03E00008 */  jr    $ra
/* AD81C4 80061024 00000000 */   nop   

/* AD81C8 80061028 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD81CC 8006102C AFBF001C */  sw    $ra, 0x1c($sp)
/* AD81D0 80061030 AFA40038 */  sw    $a0, 0x38($sp)
/* AD81D4 80061034 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD81D8 80061038 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD81DC 8006103C 2407005C */  li    $a3, 92
/* AD81E0 80061040 8CC2001C */  lw    $v0, 0x1c($a2)
/* AD81E4 80061044 01C70019 */  multu $t6, $a3
/* AD81E8 80061048 00C02825 */  move  $a1, $a2
/* AD81EC 8006104C 00007812 */  mflo  $t7
/* AD81F0 80061050 004FC021 */  addu  $t8, $v0, $t7
/* AD81F4 80061054 0058082B */  sltu  $at, $v0, $t8
/* AD81F8 80061058 50200029 */  beql  $at, $zero, .L80061100
/* AD81FC 8006105C 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD8200 80061060 90590016 */  lbu   $t9, 0x16($v0)
.L80061064:
/* AD8204 80061064 33280080 */  andi  $t0, $t9, 0x80
/* AD8208 80061068 5100001C */  beql  $t0, $zero, .L800610DC
/* AD820C 8006106C 8CAF0018 */   lw    $t7, 0x18($a1)
/* AD8210 80061070 8C430024 */  lw    $v1, 0x24($v0)
/* AD8214 80061074 50600019 */  beql  $v1, $zero, .L800610DC
/* AD8218 80061078 8CAF0018 */   lw    $t7, 0x18($a1)
/* AD821C 8006107C 90690015 */  lbu   $t1, 0x15($v1)
/* AD8220 80061080 312A0040 */  andi  $t2, $t1, 0x40
/* AD8224 80061084 15400014 */  bnez  $t2, .L800610D8
/* AD8228 80061088 27A40024 */   addiu $a0, $sp, 0x24
/* AD822C 8006108C 2445000E */  addiu $a1, $v0, 0xe
/* AD8230 80061090 AFA20030 */  sw    $v0, 0x30($sp)
/* AD8234 80061094 0C01DF97 */  jal   func_80077E5C
/* AD8238 80061098 AFA60040 */   sw    $a2, 0x40($sp)
/* AD823C 8006109C 8FA20030 */  lw    $v0, 0x30($sp)
/* AD8240 800610A0 27AB0024 */  addiu $t3, $sp, 0x24
/* AD8244 800610A4 8FA40038 */  lw    $a0, 0x38($sp)
/* AD8248 800610A8 8C45001C */  lw    $a1, 0x1c($v0)
/* AD824C 800610AC 8C460024 */  lw    $a2, 0x24($v0)
/* AD8250 800610B0 AFAB0014 */  sw    $t3, 0x14($sp)
/* AD8254 800610B4 8FA70040 */  lw    $a3, 0x40($sp)
/* AD8258 800610B8 0C017981 */  jal   func_8005E604
/* AD825C 800610BC AFA20010 */   sw    $v0, 0x10($sp)
/* AD8260 800610C0 8FA20030 */  lw    $v0, 0x30($sp)
/* AD8264 800610C4 8C430024 */  lw    $v1, 0x24($v0)
/* AD8268 800610C8 906C0015 */  lbu   $t4, 0x15($v1)
/* AD826C 800610CC 358D0040 */  ori   $t5, $t4, 0x40
/* AD8270 800610D0 1000000A */  b     .L800610FC
/* AD8274 800610D4 A06D0015 */   sb    $t5, 0x15($v1)
.L800610D8:
/* AD8278 800610D8 8CAF0018 */  lw    $t7, 0x18($a1)
.L800610DC:
/* AD827C 800610DC 8CAE001C */  lw    $t6, 0x1c($a1)
/* AD8280 800610E0 2442005C */  addiu $v0, $v0, 0x5c
/* AD8284 800610E4 01E70019 */  multu $t7, $a3
/* AD8288 800610E8 0000C012 */  mflo  $t8
/* AD828C 800610EC 01D8C821 */  addu  $t9, $t6, $t8
/* AD8290 800610F0 0059082B */  sltu  $at, $v0, $t9
/* AD8294 800610F4 5420FFDB */  bnezl $at, .L80061064
/* AD8298 800610F8 90590016 */   lbu   $t9, 0x16($v0)
.L800610FC:
/* AD829C 800610FC 8FBF001C */  lw    $ra, 0x1c($sp)
.L80061100:
/* AD82A0 80061100 27BD0038 */  addiu $sp, $sp, 0x38
/* AD82A4 80061104 03E00008 */  jr    $ra
/* AD82A8 80061108 00000000 */   nop   

/* AD82AC 8006110C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD82B0 80061110 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD82B4 80061114 AFA40038 */  sw    $a0, 0x38($sp)
/* AD82B8 80061118 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD82BC 8006111C 90CE002E */  lbu   $t6, 0x2e($a2)
/* AD82C0 80061120 31CF0080 */  andi  $t7, $t6, 0x80
/* AD82C4 80061124 51E0001B */  beql  $t7, $zero, .L80061194
/* AD82C8 80061128 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD82CC 8006112C 8CC2003C */  lw    $v0, 0x3c($a2)
/* AD82D0 80061130 50400018 */  beql  $v0, $zero, .L80061194
/* AD82D4 80061134 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD82D8 80061138 90580015 */  lbu   $t8, 0x15($v0)
/* AD82DC 8006113C 27A40028 */  addiu $a0, $sp, 0x28
/* AD82E0 80061140 24C50026 */  addiu $a1, $a2, 0x26
/* AD82E4 80061144 33190040 */  andi  $t9, $t8, 0x40
/* AD82E8 80061148 57200012 */  bnezl $t9, .L80061194
/* AD82EC 8006114C 8FBF001C */   lw    $ra, 0x1c($sp)
/* AD82F0 80061150 0C01DF97 */  jal   func_80077E5C
/* AD82F4 80061154 AFA60040 */   sw    $a2, 0x40($sp)
/* AD82F8 80061158 8FA70040 */  lw    $a3, 0x40($sp)
/* AD82FC 8006115C 27A90028 */  addiu $t1, $sp, 0x28
/* AD8300 80061160 8FA40038 */  lw    $a0, 0x38($sp)
/* AD8304 80061164 8CE50034 */  lw    $a1, 0x34($a3)
/* AD8308 80061168 8CE6003C */  lw    $a2, 0x3c($a3)
/* AD830C 8006116C 24E80018 */  addiu $t0, $a3, 0x18
/* AD8310 80061170 AFA80010 */  sw    $t0, 0x10($sp)
/* AD8314 80061174 0C017981 */  jal   func_8005E604
/* AD8318 80061178 AFA90014 */   sw    $t1, 0x14($sp)
/* AD831C 8006117C 8FA70040 */  lw    $a3, 0x40($sp)
/* AD8320 80061180 8CE2003C */  lw    $v0, 0x3c($a3)
/* AD8324 80061184 904A0015 */  lbu   $t2, 0x15($v0)
/* AD8328 80061188 354B0040 */  ori   $t3, $t2, 0x40
/* AD832C 8006118C A04B0015 */  sb    $t3, 0x15($v0)
/* AD8330 80061190 8FBF001C */  lw    $ra, 0x1c($sp)
.L80061194:
/* AD8334 80061194 27BD0038 */  addiu $sp, $sp, 0x38
/* AD8338 80061198 03E00008 */  jr    $ra
/* AD833C 8006119C 00000000 */   nop   

glabel func_800611A0
/* AD8340 800611A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD8344 800611A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD8348 800611A8 AFB30020 */  sw    $s3, 0x20($sp)
/* AD834C 800611AC AFB2001C */  sw    $s2, 0x1c($sp)
/* AD8350 800611B0 AFB10018 */  sw    $s1, 0x18($sp)
/* AD8354 800611B4 AFB00014 */  sw    $s0, 0x14($sp)
/* AD8358 800611B8 8CAE00CC */  lw    $t6, 0xcc($a1)
/* AD835C 800611BC 24B000D0 */  addiu $s0, $a1, 0xd0
/* AD8360 800611C0 00A08825 */  move  $s1, $a1
/* AD8364 800611C4 000E7880 */  sll   $t7, $t6, 2
/* AD8368 800611C8 00AF1821 */  addu  $v1, $a1, $t7
/* AD836C 800611CC 246300D0 */  addiu $v1, $v1, 0xd0
/* AD8370 800611D0 0203082B */  sltu  $at, $s0, $v1
/* AD8374 800611D4 10200020 */  beqz  $at, .L80061258
/* AD8378 800611D8 00809825 */   move  $s3, $a0
/* AD837C 800611DC 3C128012 */  lui   $s2, %hi(D_8011DF5C) # $s2, 0x8012
/* AD8380 800611E0 2652DF5C */  addiu $s2, %lo(D_8011DF5C) # addiu $s2, $s2, -0x20a4
/* AD8384 800611E4 8E060000 */  lw    $a2, ($s0)
.L800611E8:
/* AD8388 800611E8 50C00018 */  beql  $a2, $zero, .L8006124C
/* AD838C 800611EC 26100004 */   addiu $s0, $s0, 4
/* AD8390 800611F0 90D80011 */  lbu   $t8, 0x11($a2)
/* AD8394 800611F4 33190001 */  andi  $t9, $t8, 1
/* AD8398 800611F8 53200014 */  beql  $t9, $zero, .L8006124C
/* AD839C 800611FC 26100004 */   addiu $s0, $s0, 4
/* AD83A0 80061200 8CC20000 */  lw    $v0, ($a2)
/* AD83A4 80061204 50400005 */  beql  $v0, $zero, .L8006121C
/* AD83A8 80061208 90C90015 */   lbu   $t1, 0x15($a2)
/* AD83AC 8006120C 8C480130 */  lw    $t0, 0x130($v0)
/* AD83B0 80061210 5100000E */  beql  $t0, $zero, .L8006124C
/* AD83B4 80061214 26100004 */   addiu $s0, $s0, 4
/* AD83B8 80061218 90C90015 */  lbu   $t1, 0x15($a2)
.L8006121C:
/* AD83BC 8006121C 02602025 */  move  $a0, $s3
/* AD83C0 80061220 02202825 */  move  $a1, $s1
/* AD83C4 80061224 00095080 */  sll   $t2, $t1, 2
/* AD83C8 80061228 024A5821 */  addu  $t3, $s2, $t2
/* AD83CC 8006122C 8D790000 */  lw    $t9, ($t3)
/* AD83D0 80061230 0320F809 */  jalr  $t9
/* AD83D4 80061234 00000000 */  nop   
/* AD83D8 80061238 8E2C00CC */  lw    $t4, 0xcc($s1)
/* AD83DC 8006123C 000C6880 */  sll   $t5, $t4, 2
/* AD83E0 80061240 022D1821 */  addu  $v1, $s1, $t5
/* AD83E4 80061244 246300D0 */  addiu $v1, $v1, 0xd0
/* AD83E8 80061248 26100004 */  addiu $s0, $s0, 4
.L8006124C:
/* AD83EC 8006124C 0203082B */  sltu  $at, $s0, $v1
/* AD83F0 80061250 5420FFE5 */  bnezl $at, .L800611E8
/* AD83F4 80061254 8E060000 */   lw    $a2, ($s0)
.L80061258:
/* AD83F8 80061258 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD83FC 8006125C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD8400 80061260 8FB10018 */  lw    $s1, 0x18($sp)
/* AD8404 80061264 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD8408 80061268 8FB30020 */  lw    $s3, 0x20($sp)
/* AD840C 8006126C 03E00008 */  jr    $ra
/* AD8410 80061270 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_80061274
/* AD8414 80061274 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD8418 80061278 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD841C 8006127C AFB40028 */  sw    $s4, 0x28($sp)
/* AD8420 80061280 AFB30024 */  sw    $s3, 0x24($sp)
/* AD8424 80061284 AFB20020 */  sw    $s2, 0x20($sp)
/* AD8428 80061288 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD842C 8006128C AFB00018 */  sw    $s0, 0x18($sp)
/* AD8430 80061290 8CAE00CC */  lw    $t6, 0xcc($a1)
/* AD8434 80061294 24B100D0 */  addiu $s1, $a1, 0xd0
/* AD8438 80061298 00C08025 */  move  $s0, $a2
/* AD843C 8006129C 000E7880 */  sll   $t7, $t6, 2
/* AD8440 800612A0 00AF4021 */  addu  $t0, $a1, $t7
/* AD8444 800612A4 250800D0 */  addiu $t0, $t0, 0xd0
/* AD8448 800612A8 0228082B */  sltu  $at, $s1, $t0
/* AD844C 800612AC 00A09025 */  move  $s2, $a1
/* AD8450 800612B0 10200032 */  beqz  $at, .L8006137C
/* AD8454 800612B4 00809825 */   move  $s3, $a0
/* AD8458 800612B8 3C148012 */  lui   $s4, %hi(D_8011DF6C) # $s4, 0x8012
/* AD845C 800612BC 2694DF6C */  addiu $s4, %lo(D_8011DF6C) # addiu $s4, $s4, -0x2094
/* AD8460 800612C0 8E270000 */  lw    $a3, ($s1)
.L800612C4:
/* AD8464 800612C4 50E0002A */  beql  $a3, $zero, .L80061370
/* AD8468 800612C8 26310004 */   addiu $s1, $s1, 4
/* AD846C 800612CC 90E20011 */  lbu   $v0, 0x11($a3)
/* AD8470 800612D0 30580001 */  andi  $t8, $v0, 1
/* AD8474 800612D4 53000026 */  beql  $t8, $zero, .L80061370
/* AD8478 800612D8 26310004 */   addiu $s1, $s1, 4
/* AD847C 800612DC 8CE40000 */  lw    $a0, ($a3)
/* AD8480 800612E0 50800005 */  beql  $a0, $zero, .L800612F8
/* AD8484 800612E4 92030010 */   lbu   $v1, 0x10($s0)
/* AD8488 800612E8 8C990130 */  lw    $t9, 0x130($a0)
/* AD848C 800612EC 53200020 */  beql  $t9, $zero, .L80061370
/* AD8490 800612F0 26310004 */   addiu $s1, $s1, 4
/* AD8494 800612F4 92030010 */  lbu   $v1, 0x10($s0)
.L800612F8:
/* AD8498 800612F8 00434824 */  and   $t1, $v0, $v1
/* AD849C 800612FC 312A0038 */  andi  $t2, $t1, 0x38
/* AD84A0 80061300 5140001B */  beql  $t2, $zero, .L80061370
/* AD84A4 80061304 26310004 */   addiu $s1, $s1, 4
/* AD84A8 80061308 12070018 */  beq   $s0, $a3, .L8006136C
/* AD84AC 8006130C 306B0040 */   andi  $t3, $v1, 0x40
/* AD84B0 80061310 55600007 */  bnezl $t3, .L80061330
/* AD84B4 80061314 920C0015 */   lbu   $t4, 0x15($s0)
/* AD84B8 80061318 8E020000 */  lw    $v0, ($s0)
/* AD84BC 8006131C 50400004 */  beql  $v0, $zero, .L80061330
/* AD84C0 80061320 920C0015 */   lbu   $t4, 0x15($s0)
/* AD84C4 80061324 50440012 */  beql  $v0, $a0, .L80061370
/* AD84C8 80061328 26310004 */   addiu $s1, $s1, 4
/* AD84CC 8006132C 920C0015 */  lbu   $t4, 0x15($s0)
.L80061330:
/* AD84D0 80061330 90EF0015 */  lbu   $t7, 0x15($a3)
/* AD84D4 80061334 02602025 */  move  $a0, $s3
/* AD84D8 80061338 000C6900 */  sll   $t5, $t4, 4
/* AD84DC 8006133C 028D7021 */  addu  $t6, $s4, $t5
/* AD84E0 80061340 000FC080 */  sll   $t8, $t7, 2
/* AD84E4 80061344 01D8C821 */  addu  $t9, $t6, $t8
/* AD84E8 80061348 8F390000 */  lw    $t9, ($t9)
/* AD84EC 8006134C 02402825 */  move  $a1, $s2
/* AD84F0 80061350 02003025 */  move  $a2, $s0
/* AD84F4 80061354 0320F809 */  jalr  $t9
/* AD84F8 80061358 00000000 */  nop   
/* AD84FC 8006135C 8E4900CC */  lw    $t1, 0xcc($s2)
/* AD8500 80061360 00095080 */  sll   $t2, $t1, 2
/* AD8504 80061364 024A4021 */  addu  $t0, $s2, $t2
/* AD8508 80061368 250800D0 */  addiu $t0, $t0, 0xd0
.L8006136C:
/* AD850C 8006136C 26310004 */  addiu $s1, $s1, 4
.L80061370:
/* AD8510 80061370 0228082B */  sltu  $at, $s1, $t0
/* AD8514 80061374 5420FFD3 */  bnezl $at, .L800612C4
/* AD8518 80061378 8E270000 */   lw    $a3, ($s1)
.L8006137C:
/* AD851C 8006137C 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD8520 80061380 8FB00018 */  lw    $s0, 0x18($sp)
/* AD8524 80061384 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD8528 80061388 8FB20020 */  lw    $s2, 0x20($sp)
/* AD852C 8006138C 8FB30024 */  lw    $s3, 0x24($sp)
/* AD8530 80061390 8FB40028 */  lw    $s4, 0x28($sp)
/* AD8534 80061394 03E00008 */  jr    $ra
/* AD8538 80061398 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_8006139C
/* AD853C 8006139C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD8540 800613A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD8544 800613A4 AFB20020 */  sw    $s2, 0x20($sp)
/* AD8548 800613A8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD854C 800613AC AFB00018 */  sw    $s0, 0x18($sp)
/* AD8550 800613B0 84A60000 */  lh    $a2, ($a1)
/* AD8554 800613B4 00A08825 */  move  $s1, $a1
/* AD8558 800613B8 00809025 */  move  $s2, $a0
/* AD855C 800613BC 50C00026 */  beql  $a2, $zero, .L80061458
/* AD8560 800613C0 8FBF0024 */   lw    $ra, 0x24($sp)
/* AD8564 800613C4 8CAE00CC */  lw    $t6, 0xcc($a1)
/* AD8568 800613C8 00067880 */  sll   $t7, $a2, 2
/* AD856C 800613CC 00AF1821 */  addu  $v1, $a1, $t7
/* AD8570 800613D0 11C00020 */  beqz  $t6, .L80061454
/* AD8574 800613D4 24B00004 */   addiu $s0, $a1, 4
/* AD8578 800613D8 24630004 */  addiu $v1, $v1, 4
/* AD857C 800613DC 0203082B */  sltu  $at, $s0, $v1
/* AD8580 800613E0 5020001A */  beql  $at, $zero, .L8006144C
/* AD8584 800613E4 02402025 */   move  $a0, $s2
/* AD8588 800613E8 8E060000 */  lw    $a2, ($s0)
.L800613EC:
/* AD858C 800613EC 50C00013 */  beql  $a2, $zero, .L8006143C
/* AD8590 800613F0 26100004 */   addiu $s0, $s0, 4
/* AD8594 800613F4 90D80010 */  lbu   $t8, 0x10($a2)
/* AD8598 800613F8 33190001 */  andi  $t9, $t8, 1
/* AD859C 800613FC 5320000F */  beql  $t9, $zero, .L8006143C
/* AD85A0 80061400 26100004 */   addiu $s0, $s0, 4
/* AD85A4 80061404 8CC20000 */  lw    $v0, ($a2)
/* AD85A8 80061408 02402025 */  move  $a0, $s2
/* AD85AC 8006140C 10400004 */  beqz  $v0, .L80061420
/* AD85B0 80061410 00000000 */   nop   
/* AD85B4 80061414 8C480130 */  lw    $t0, 0x130($v0)
/* AD85B8 80061418 51000008 */  beql  $t0, $zero, .L8006143C
/* AD85BC 8006141C 26100004 */   addiu $s0, $s0, 4
.L80061420:
/* AD85C0 80061420 0C01849D */  jal   func_80061274
/* AD85C4 80061424 02202825 */   move  $a1, $s1
/* AD85C8 80061428 86290000 */  lh    $t1, ($s1)
/* AD85CC 8006142C 00095080 */  sll   $t2, $t1, 2
/* AD85D0 80061430 022A1821 */  addu  $v1, $s1, $t2
/* AD85D4 80061434 24630004 */  addiu $v1, $v1, 4
/* AD85D8 80061438 26100004 */  addiu $s0, $s0, 4
.L8006143C:
/* AD85DC 8006143C 0203082B */  sltu  $at, $s0, $v1
/* AD85E0 80061440 5420FFEA */  bnezl $at, .L800613EC
/* AD85E4 80061444 8E060000 */   lw    $a2, ($s0)
/* AD85E8 80061448 02402025 */  move  $a0, $s2
.L8006144C:
/* AD85EC 8006144C 0C018468 */  jal   func_800611A0
/* AD85F0 80061450 02202825 */   move  $a1, $s1
.L80061454:
/* AD85F4 80061454 8FBF0024 */  lw    $ra, 0x24($sp)
.L80061458:
/* AD85F8 80061458 8FB00018 */  lw    $s0, 0x18($sp)
/* AD85FC 8006145C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD8600 80061460 8FB20020 */  lw    $s2, 0x20($sp)
/* AD8604 80061464 03E00008 */  jr    $ra
/* AD8608 80061468 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_8006146C
/* AD860C 8006146C 308200FF */  andi  $v0, $a0, 0xff
/* AD8610 80061470 240100FF */  li    $at, 255
/* AD8614 80061474 14410003 */  bne   $v0, $at, .L80061484
/* AD8618 80061478 AFA40000 */   sw    $a0, ($sp)
/* AD861C 8006147C 03E00008 */  jr    $ra
/* AD8620 80061480 00001025 */   move  $v0, $zero

.L80061484:
/* AD8624 80061484 240100FE */  li    $at, 254
/* AD8628 80061488 54410004 */  bnel  $v0, $at, .L8006149C
/* AD862C 8006148C 24020002 */   li    $v0, 2
/* AD8630 80061490 03E00008 */  jr    $ra
/* AD8634 80061494 24020001 */   li    $v0, 1

/* AD8638 80061498 24020002 */  li    $v0, 2
.L8006149C:
/* AD863C 8006149C 03E00008 */  jr    $ra
/* AD8640 800614A0 00000000 */   nop   

glabel func_800614A4
/* AD8644 800614A4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AD8648 800614A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD864C 800614AC AFA60058 */  sw    $a2, 0x58($sp)
/* AD8650 800614B0 908E0012 */  lbu   $t6, 0x12($a0)
/* AD8654 800614B4 8CE90000 */  lw    $t1, ($a3)
/* AD8658 800614B8 8C880000 */  lw    $t0, ($a0)
/* AD865C 800614BC 35CF0002 */  ori   $t7, $t6, 2
/* AD8660 800614C0 A08F0012 */  sb    $t7, 0x12($a0)
/* AD8664 800614C4 AC89000C */  sw    $t1, 0xc($a0)
/* AD8668 800614C8 90B80017 */  lbu   $t8, 0x17($a1)
/* AD866C 800614CC 37190002 */  ori   $t9, $t8, 2
/* AD8670 800614D0 A0B90017 */  sb    $t9, 0x17($a1)
/* AD8674 800614D4 90EA0013 */  lbu   $t2, 0x13($a3)
/* AD8678 800614D8 314B0008 */  andi  $t3, $t2, 8
/* AD867C 800614DC 51600005 */  beql  $t3, $zero, .L800614F4
/* AD8680 800614E0 90EE0012 */   lbu   $t6, 0x12($a3)
/* AD8684 800614E4 908C0013 */  lbu   $t4, 0x13($a0)
/* AD8688 800614E8 358D0001 */  ori   $t5, $t4, 1
/* AD868C 800614EC A08D0013 */  sb    $t5, 0x13($a0)
/* AD8690 800614F0 90EE0012 */  lbu   $t6, 0x12($a3)
.L800614F4:
/* AD8694 800614F4 8FA20060 */  lw    $v0, 0x60($sp)
/* AD8698 800614F8 ACE8000C */  sw    $t0, 0xc($a3)
/* AD869C 800614FC 35CF0002 */  ori   $t7, $t6, 2
/* AD86A0 80061500 A0EF0012 */  sb    $t7, 0x12($a3)
/* AD86A4 80061504 90580017 */  lbu   $t8, 0x17($v0)
/* AD86A8 80061508 37190002 */  ori   $t9, $t8, 2
/* AD86AC 8006150C A0590017 */  sb    $t9, 0x17($v0)
/* AD86B0 80061510 908A0013 */  lbu   $t2, 0x13($a0)
/* AD86B4 80061514 314B0008 */  andi  $t3, $t2, 8
/* AD86B8 80061518 11600004 */  beqz  $t3, .L8006152C
/* AD86BC 8006151C 00000000 */   nop   
/* AD86C0 80061520 90EC0013 */  lbu   $t4, 0x13($a3)
/* AD86C4 80061524 358D0001 */  ori   $t5, $t4, 1
/* AD86C8 80061528 A0ED0013 */  sb    $t5, 0x13($a3)
.L8006152C:
/* AD86CC 8006152C 510000A6 */  beql  $t0, $zero, .L800617C8
/* AD86D0 80061530 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD86D4 80061534 512000A4 */  beql  $t1, $zero, .L800617C8
/* AD86D8 80061538 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD86DC 8006153C 908E0012 */  lbu   $t6, 0x12($a0)
/* AD86E0 80061540 31CF0004 */  andi  $t7, $t6, 4
/* AD86E4 80061544 55E000A0 */  bnezl $t7, .L800617C8
/* AD86E8 80061548 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD86EC 8006154C 90F80012 */  lbu   $t8, 0x12($a3)
/* AD86F0 80061550 33190004 */  andi  $t9, $t8, 4
/* AD86F4 80061554 5720009C */  bnezl $t9, .L800617C8
/* AD86F8 80061558 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD86FC 8006155C 910400AE */  lbu   $a0, 0xae($t0)
/* AD8700 80061560 AFA90020 */  sw    $t1, 0x20($sp)
/* AD8704 80061564 0C01851B */  jal   func_8006146C
/* AD8708 80061568 AFA80024 */   sw    $t0, 0x24($sp)
/* AD870C 8006156C 8FA90020 */  lw    $t1, 0x20($sp)
/* AD8710 80061570 912400AE */  lbu   $a0, 0xae($t1)
/* AD8714 80061574 0C01851B */  jal   func_8006146C
/* AD8718 80061578 AFA20018 */   sw    $v0, 0x18($sp)
/* AD871C 8006157C 8FA80024 */  lw    $t0, 0x24($sp)
/* AD8720 80061580 8FA30018 */  lw    $v1, 0x18($sp)
/* AD8724 80061584 8FA90020 */  lw    $t1, 0x20($sp)
/* AD8728 80061588 910A00AE */  lbu   $t2, 0xae($t0)
/* AD872C 8006158C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AD8730 80061590 448A2000 */  mtc1  $t2, $f4
/* AD8734 80061594 05410004 */  bgez  $t2, .L800615A8
/* AD8738 80061598 468024A0 */   cvt.s.w $f18, $f4
/* AD873C 8006159C 44813000 */  mtc1  $at, $f6
/* AD8740 800615A0 00000000 */  nop   
/* AD8744 800615A4 46069480 */  add.s $f18, $f18, $f6
.L800615A8:
/* AD8748 800615A8 912B00AE */  lbu   $t3, 0xae($t1)
/* AD874C 800615AC 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AD8750 800615B0 448B4000 */  mtc1  $t3, $f8
/* AD8754 800615B4 05610004 */  bgez  $t3, .L800615C8
/* AD8758 800615B8 468042A0 */   cvt.s.w $f10, $f8
/* AD875C 800615BC 44812000 */  mtc1  $at, $f4
/* AD8760 800615C0 00000000 */  nop   
/* AD8764 800615C4 46045280 */  add.s $f10, $f10, $f4
.L800615C8:
/* AD8768 800615C8 E7AA0038 */  swc1  $f10, 0x38($sp)
/* AD876C 800615CC C7A60038 */  lwc1  $f6, 0x38($sp)
/* AD8770 800615D0 3C018014 */  li    $at, 0x80140000 # 0.000000
/* AD8774 800615D4 C428AD24 */  lwc1  $f8, -0x52dc($at)
/* AD8778 800615D8 46069080 */  add.s $f2, $f18, $f6
/* AD877C 800615DC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AD8780 800615E0 46001005 */  abs.s $f0, $f2
/* AD8784 800615E4 E7A20034 */  swc1  $f2, 0x34($sp)
/* AD8788 800615E8 4608003C */  c.lt.s $f0, $f8
/* AD878C 800615EC 00000000 */  nop   
/* AD8790 800615F0 45020007 */  bc1fl .L80061610
/* AD8794 800615F4 8FA40064 */   lw    $a0, 0x64($sp)
/* AD8798 800615F8 44819000 */  mtc1  $at, $f18
/* AD879C 800615FC 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AD87A0 80061600 44812000 */  mtc1  $at, $f4
/* AD87A4 80061604 E7B20038 */  swc1  $f18, 0x38($sp)
/* AD87A8 80061608 E7A40034 */  swc1  $f4, 0x34($sp)
/* AD87AC 8006160C 8FA40064 */  lw    $a0, 0x64($sp)
.L80061610:
/* AD87B0 80061610 8FA50058 */  lw    $a1, 0x58($sp)
/* AD87B4 80061614 C48A0000 */  lwc1  $f10, ($a0)
/* AD87B8 80061618 C4A60000 */  lwc1  $f6, ($a1)
/* AD87BC 8006161C C4880008 */  lwc1  $f8, 8($a0)
/* AD87C0 80061620 C4A40008 */  lwc1  $f4, 8($a1)
/* AD87C4 80061624 46065381 */  sub.s $f14, $f10, $f6
/* AD87C8 80061628 24040001 */  li    $a0, 1
/* AD87CC 8006162C 46044401 */  sub.s $f16, $f8, $f4
/* AD87D0 80061630 460E7282 */  mul.s $f10, $f14, $f14
/* AD87D4 80061634 00000000 */  nop   
/* AD87D8 80061638 46108182 */  mul.s $f6, $f16, $f16
/* AD87DC 8006163C 46065000 */  add.s $f0, $f10, $f6
/* AD87E0 80061640 46000004 */  sqrt.s $f0, $f0
/* AD87E4 80061644 14600007 */  bnez  $v1, .L80061664
/* AD87E8 80061648 E7A00040 */   swc1  $f0, 0x40($sp)
/* AD87EC 8006164C 1040005D */  beqz  $v0, .L800617C4
/* AD87F0 80061650 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AD87F4 80061654 44801000 */  mtc1  $zero, $f2
/* AD87F8 80061658 44816000 */  mtc1  $at, $f12
/* AD87FC 8006165C 10000023 */  b     .L800616EC
/* AD8800 80061660 C7A60040 */   lwc1  $f6, 0x40($sp)
.L80061664:
/* AD8804 80061664 14640011 */  bne   $v1, $a0, .L800616AC
/* AD8808 80061668 24010002 */   li    $at, 2
/* AD880C 8006166C 14400005 */  bnez  $v0, .L80061684
/* AD8810 80061670 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AD8814 80061674 44811000 */  mtc1  $at, $f2
/* AD8818 80061678 44806000 */  mtc1  $zero, $f12
/* AD881C 8006167C 1000001B */  b     .L800616EC
/* AD8820 80061680 C7A60040 */   lwc1  $f6, 0x40($sp)
.L80061684:
/* AD8824 80061684 14440005 */  bne   $v0, $a0, .L8006169C
/* AD8828 80061688 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AD882C 8006168C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AD8830 80061690 44816000 */  mtc1  $at, $f12
/* AD8834 80061694 10000014 */  b     .L800616E8
/* AD8838 80061698 46006086 */   mov.s $f2, $f12
.L8006169C:
/* AD883C 8006169C 44801000 */  mtc1  $zero, $f2
/* AD8840 800616A0 44816000 */  mtc1  $at, $f12
/* AD8844 800616A4 10000011 */  b     .L800616EC
/* AD8848 800616A8 C7A60040 */   lwc1  $f6, 0x40($sp)
.L800616AC:
/* AD884C 800616AC 1441000A */  bne   $v0, $at, .L800616D8
/* AD8850 800616B0 C7A40034 */   lwc1  $f4, 0x34($sp)
/* AD8854 800616B4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AD8858 800616B8 44814000 */  mtc1  $at, $f8
/* AD885C 800616BC C7AA0038 */  lwc1  $f10, 0x38($sp)
/* AD8860 800616C0 46044003 */  div.s $f0, $f8, $f4
/* AD8864 800616C4 46005082 */  mul.s $f2, $f10, $f0
/* AD8868 800616C8 00000000 */  nop   
/* AD886C 800616CC 46009302 */  mul.s $f12, $f18, $f0
/* AD8870 800616D0 10000005 */  b     .L800616E8
/* AD8874 800616D4 00000000 */   nop   
.L800616D8:
/* AD8878 800616D8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AD887C 800616DC 44811000 */  mtc1  $at, $f2
/* AD8880 800616E0 44806000 */  mtc1  $zero, $f12
/* AD8884 800616E4 00000000 */  nop   
.L800616E8:
/* AD8888 800616E8 C7A60040 */  lwc1  $f6, 0x40($sp)
.L800616EC:
/* AD888C 800616EC 3C018014 */  li    $at, 0x80140000 # 0.000000
/* AD8890 800616F0 C428AD28 */  lwc1  $f8, -0x52d8($at)
/* AD8894 800616F4 46003005 */  abs.s $f0, $f6
/* AD8898 800616F8 C7B20068 */  lwc1  $f18, 0x68($sp)
/* AD889C 800616FC 4608003C */  c.lt.s $f0, $f8
/* AD88A0 80061700 00000000 */  nop   
/* AD88A4 80061704 4503001A */  bc1tl .L80061770
/* AD88A8 80061708 44804000 */   mtc1  $zero, $f8
/* AD88AC 8006170C C7B20068 */  lwc1  $f18, 0x68($sp)
/* AD88B0 80061710 C504009C */  lwc1  $f4, 0x9c($t0)
/* AD88B4 80061714 46069003 */  div.s $f0, $f18, $f6
/* AD88B8 80061718 46007382 */  mul.s $f14, $f14, $f0
/* AD88BC 8006171C 46007287 */  neg.s $f10, $f14
/* AD88C0 80061720 46008402 */  mul.s $f16, $f16, $f0
/* AD88C4 80061724 00000000 */  nop   
/* AD88C8 80061728 46025202 */  mul.s $f8, $f10, $f2
/* AD88CC 8006172C C50A00A4 */  lwc1  $f10, 0xa4($t0)
/* AD88D0 80061730 46082180 */  add.s $f6, $f4, $f8
/* AD88D4 80061734 46008107 */  neg.s $f4, $f16
/* AD88D8 80061738 E506009C */  swc1  $f6, 0x9c($t0)
/* AD88DC 8006173C 46022202 */  mul.s $f8, $f4, $f2
/* AD88E0 80061740 46085180 */  add.s $f6, $f10, $f8
/* AD88E4 80061744 460C7282 */  mul.s $f10, $f14, $f12
/* AD88E8 80061748 E50600A4 */  swc1  $f6, 0xa4($t0)
/* AD88EC 8006174C C524009C */  lwc1  $f4, 0x9c($t1)
/* AD88F0 80061750 C52600A4 */  lwc1  $f6, 0xa4($t1)
/* AD88F4 80061754 460A2200 */  add.s $f8, $f4, $f10
/* AD88F8 80061758 460C8102 */  mul.s $f4, $f16, $f12
/* AD88FC 8006175C E528009C */  swc1  $f8, 0x9c($t1)
/* AD8900 80061760 46043280 */  add.s $f10, $f6, $f4
/* AD8904 80061764 10000017 */  b     .L800617C4
/* AD8908 80061768 E52A00A4 */   swc1  $f10, 0xa4($t1)
/* AD890C 8006176C 44804000 */  mtc1  $zero, $f8
.L80061770:
/* AD8910 80061770 00000000 */  nop   
/* AD8914 80061774 46089032 */  c.eq.s $f18, $f8
/* AD8918 80061778 00000000 */  nop   
/* AD891C 8006177C 4503000C */  bc1tl .L800617B0
/* AD8920 80061780 C508009C */   lwc1  $f8, 0x9c($t0)
/* AD8924 80061784 46009107 */  neg.s $f4, $f18
/* AD8928 80061788 C506009C */  lwc1  $f6, 0x9c($t0)
/* AD892C 8006178C 46022282 */  mul.s $f10, $f4, $f2
/* AD8930 80061790 460A3200 */  add.s $f8, $f6, $f10
/* AD8934 80061794 460C9182 */  mul.s $f6, $f18, $f12
/* AD8938 80061798 E508009C */  swc1  $f8, 0x9c($t0)
/* AD893C 8006179C C524009C */  lwc1  $f4, 0x9c($t1)
/* AD8940 800617A0 46062280 */  add.s $f10, $f4, $f6
/* AD8944 800617A4 10000007 */  b     .L800617C4
/* AD8948 800617A8 E52A009C */   swc1  $f10, 0x9c($t1)
/* AD894C 800617AC C508009C */  lwc1  $f8, 0x9c($t0)
.L800617B0:
/* AD8950 800617B0 46024101 */  sub.s $f4, $f8, $f2
/* AD8954 800617B4 E504009C */  swc1  $f4, 0x9c($t0)
/* AD8958 800617B8 C526009C */  lwc1  $f6, 0x9c($t1)
/* AD895C 800617BC 460C3280 */  add.s $f10, $f6, $f12
/* AD8960 800617C0 E52A009C */  swc1  $f10, 0x9c($t1)
.L800617C4:
/* AD8964 800617C4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800617C8:
/* AD8968 800617C8 27BD0050 */  addiu $sp, $sp, 0x50
/* AD896C 800617CC 03E00008 */  jr    $ra
/* AD8970 800617D0 00000000 */   nop   

/* AD8974 800617D4 27BDFF78 */  addiu $sp, $sp, -0x88
/* AD8978 800617D8 AFBF004C */  sw    $ra, 0x4c($sp)
/* AD897C 800617DC AFBE0048 */  sw    $fp, 0x48($sp)
/* AD8980 800617E0 AFB70044 */  sw    $s7, 0x44($sp)
/* AD8984 800617E4 AFB60040 */  sw    $s6, 0x40($sp)
/* AD8988 800617E8 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD898C 800617EC AFB40038 */  sw    $s4, 0x38($sp)
/* AD8990 800617F0 AFB30034 */  sw    $s3, 0x34($sp)
/* AD8994 800617F4 AFB20030 */  sw    $s2, 0x30($sp)
/* AD8998 800617F8 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD899C 800617FC AFB00028 */  sw    $s0, 0x28($sp)
/* AD89A0 80061800 AFA40088 */  sw    $a0, 0x88($sp)
/* AD89A4 80061804 AFA5008C */  sw    $a1, 0x8c($sp)
/* AD89A8 80061808 AFA60090 */  sw    $a2, 0x90($sp)
/* AD89AC 8006180C AFA70094 */  sw    $a3, 0x94($sp)
/* AD89B0 80061810 AFA60084 */  sw    $a2, 0x84($sp)
/* AD89B4 80061814 8CC30018 */  lw    $v1, 0x18($a2)
/* AD89B8 80061818 00E09825 */  move  $s3, $a3
/* AD89BC 8006181C 58600054 */  blezl $v1, .L80061970
/* AD89C0 80061820 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD89C4 80061824 8CC2001C */  lw    $v0, 0x1c($a2)
/* AD89C8 80061828 50400051 */  beql  $v0, $zero, .L80061970
/* AD89CC 8006182C 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD89D0 80061830 8CF80018 */  lw    $t8, 0x18($a3)
/* AD89D4 80061834 5B00004E */  blezl $t8, .L80061970
/* AD89D8 80061838 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD89DC 8006183C 8CF9001C */  lw    $t9, 0x1c($a3)
/* AD89E0 80061840 00034180 */  sll   $t0, $v1, 6
/* AD89E4 80061844 00484821 */  addu  $t1, $v0, $t0
/* AD89E8 80061848 13200048 */  beqz  $t9, .L8006196C
/* AD89EC 8006184C 0049082B */   sltu  $at, $v0, $t1
/* AD89F0 80061850 10200046 */  beqz  $at, .L8006196C
/* AD89F4 80061854 0040A025 */   move  $s4, $v0
/* AD89F8 80061858 241E0001 */  li    $fp, 1
/* AD89FC 8006185C 27B70074 */  addiu $s7, $sp, 0x74
/* AD8A00 80061860 27B6005C */  addiu $s6, $sp, 0x5c
/* AD8A04 80061864 27B50068 */  addiu $s5, $sp, 0x68
/* AD8A08 80061868 928A0017 */  lbu   $t2, 0x17($s4)
.L8006186C:
/* AD8A0C 8006186C 8FAC0084 */  lw    $t4, 0x84($sp)
/* AD8A10 80061870 8FAF0094 */  lw    $t7, 0x94($sp)
/* AD8A14 80061874 314B0001 */  andi  $t3, $t2, 1
/* AD8A18 80061878 55600007 */  bnezl $t3, .L80061898
/* AD8A1C 8006187C 8DF90018 */   lw    $t9, 0x18($t7)
/* AD8A20 80061880 8D8E0018 */  lw    $t6, 0x18($t4)
/* AD8A24 80061884 8D8D001C */  lw    $t5, 0x1c($t4)
/* AD8A28 80061888 000EC180 */  sll   $t8, $t6, 6
/* AD8A2C 8006188C 10000033 */  b     .L8006195C
/* AD8A30 80061890 01B81021 */   addu  $v0, $t5, $t8
/* AD8A34 80061894 8DF90018 */  lw    $t9, 0x18($t7)
.L80061898:
/* AD8A38 80061898 8DF0001C */  lw    $s0, 0x1c($t7)
/* AD8A3C 8006189C 00194180 */  sll   $t0, $t9, 6
/* AD8A40 800618A0 02084821 */  addu  $t1, $s0, $t0
/* AD8A44 800618A4 0209082B */  sltu  $at, $s0, $t1
/* AD8A48 800618A8 50200028 */  beql  $at, $zero, .L8006194C
/* AD8A4C 800618AC 8FA80084 */   lw    $t0, 0x84($sp)
/* AD8A50 800618B0 920A0017 */  lbu   $t2, 0x17($s0)
.L800618B4:
/* AD8A54 800618B4 26910030 */  addiu $s1, $s4, 0x30
/* AD8A58 800618B8 02202025 */  move  $a0, $s1
/* AD8A5C 800618BC 314B0001 */  andi  $t3, $t2, 1
/* AD8A60 800618C0 15600006 */  bnez  $t3, .L800618DC
/* AD8A64 800618C4 26120030 */   addiu $s2, $s0, 0x30
/* AD8A68 800618C8 8E6E0018 */  lw    $t6, 0x18($s3)
/* AD8A6C 800618CC 8E6C001C */  lw    $t4, 0x1c($s3)
/* AD8A70 800618D0 000E6980 */  sll   $t5, $t6, 6
/* AD8A74 800618D4 10000018 */  b     .L80061938
/* AD8A78 800618D8 018D1021 */   addu  $v0, $t4, $t5
.L800618DC:
/* AD8A7C 800618DC 02402825 */  move  $a1, $s2
/* AD8A80 800618E0 0C033F23 */  jal   func_800CFC8C
/* AD8A84 800618E4 02E03025 */   move  $a2, $s7
/* AD8A88 800618E8 145E000F */  bne   $v0, $fp, .L80061928
/* AD8A8C 800618EC 02A02025 */   move  $a0, $s5
/* AD8A90 800618F0 0C01DF97 */  jal   func_80077E5C
/* AD8A94 800618F4 02202825 */   move  $a1, $s1
/* AD8A98 800618F8 02C02025 */  move  $a0, $s6
/* AD8A9C 800618FC 0C01DF97 */  jal   func_80077E5C
/* AD8AA0 80061900 02402825 */   move  $a1, $s2
/* AD8AA4 80061904 C7A40074 */  lwc1  $f4, 0x74($sp)
/* AD8AA8 80061908 8FA40090 */  lw    $a0, 0x90($sp)
/* AD8AAC 8006190C 02802825 */  move  $a1, $s4
/* AD8AB0 80061910 02A03025 */  move  $a2, $s5
/* AD8AB4 80061914 8FA70094 */  lw    $a3, 0x94($sp)
/* AD8AB8 80061918 AFB00010 */  sw    $s0, 0x10($sp)
/* AD8ABC 8006191C AFB60014 */  sw    $s6, 0x14($sp)
/* AD8AC0 80061920 0C018529 */  jal   func_800614A4
/* AD8AC4 80061924 E7A40018 */   swc1  $f4, 0x18($sp)
.L80061928:
/* AD8AC8 80061928 8E6F0018 */  lw    $t7, 0x18($s3)
/* AD8ACC 8006192C 8E78001C */  lw    $t8, 0x1c($s3)
/* AD8AD0 80061930 000FC980 */  sll   $t9, $t7, 6
/* AD8AD4 80061934 03191021 */  addu  $v0, $t8, $t9
.L80061938:
/* AD8AD8 80061938 26100040 */  addiu $s0, $s0, 0x40
/* AD8ADC 8006193C 0202082B */  sltu  $at, $s0, $v0
/* AD8AE0 80061940 5420FFDC */  bnezl $at, .L800618B4
/* AD8AE4 80061944 920A0017 */   lbu   $t2, 0x17($s0)
/* AD8AE8 80061948 8FA80084 */  lw    $t0, 0x84($sp)
.L8006194C:
/* AD8AEC 8006194C 8D0A0018 */  lw    $t2, 0x18($t0)
/* AD8AF0 80061950 8D09001C */  lw    $t1, 0x1c($t0)
/* AD8AF4 80061954 000A5980 */  sll   $t3, $t2, 6
/* AD8AF8 80061958 012B1021 */  addu  $v0, $t1, $t3
.L8006195C:
/* AD8AFC 8006195C 26940040 */  addiu $s4, $s4, 0x40
/* AD8B00 80061960 0282082B */  sltu  $at, $s4, $v0
/* AD8B04 80061964 5420FFC1 */  bnezl $at, .L8006186C
/* AD8B08 80061968 928A0017 */   lbu   $t2, 0x17($s4)
.L8006196C:
/* AD8B0C 8006196C 8FBF004C */  lw    $ra, 0x4c($sp)
.L80061970:
/* AD8B10 80061970 8FB00028 */  lw    $s0, 0x28($sp)
/* AD8B14 80061974 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD8B18 80061978 8FB20030 */  lw    $s2, 0x30($sp)
/* AD8B1C 8006197C 8FB30034 */  lw    $s3, 0x34($sp)
/* AD8B20 80061980 8FB40038 */  lw    $s4, 0x38($sp)
/* AD8B24 80061984 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD8B28 80061988 8FB60040 */  lw    $s6, 0x40($sp)
/* AD8B2C 8006198C 8FB70044 */  lw    $s7, 0x44($sp)
/* AD8B30 80061990 8FBE0048 */  lw    $fp, 0x48($sp)
/* AD8B34 80061994 03E00008 */  jr    $ra
/* AD8B38 80061998 27BD0088 */   addiu $sp, $sp, 0x88

glabel func_8006199C
/* AD8B3C 8006199C 27BDFF78 */  addiu $sp, $sp, -0x88
/* AD8B40 800619A0 AFBF004C */  sw    $ra, 0x4c($sp)
/* AD8B44 800619A4 AFBE0048 */  sw    $fp, 0x48($sp)
/* AD8B48 800619A8 AFB70044 */  sw    $s7, 0x44($sp)
/* AD8B4C 800619AC AFB60040 */  sw    $s6, 0x40($sp)
/* AD8B50 800619B0 AFB5003C */  sw    $s5, 0x3c($sp)
/* AD8B54 800619B4 AFB40038 */  sw    $s4, 0x38($sp)
/* AD8B58 800619B8 AFB30034 */  sw    $s3, 0x34($sp)
/* AD8B5C 800619BC AFB20030 */  sw    $s2, 0x30($sp)
/* AD8B60 800619C0 AFB1002C */  sw    $s1, 0x2c($sp)
/* AD8B64 800619C4 AFB00028 */  sw    $s0, 0x28($sp)
/* AD8B68 800619C8 AFA40088 */  sw    $a0, 0x88($sp)
/* AD8B6C 800619CC AFA5008C */  sw    $a1, 0x8c($sp)
/* AD8B70 800619D0 8CC30018 */  lw    $v1, 0x18($a2)
/* AD8B74 800619D4 00E09025 */  move  $s2, $a3
/* AD8B78 800619D8 00C0F025 */  move  $fp, $a2
/* AD8B7C 800619DC 1860003A */  blez  $v1, .L80061AC8
/* AD8B80 800619E0 00C0A825 */   move  $s5, $a2
/* AD8B84 800619E4 8CC2001C */  lw    $v0, 0x1c($a2)
/* AD8B88 800619E8 50400038 */  beql  $v0, $zero, .L80061ACC
/* AD8B8C 800619EC 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD8B90 800619F0 90EE0012 */  lbu   $t6, 0x12($a3)
/* AD8B94 800619F4 31CF0001 */  andi  $t7, $t6, 1
/* AD8B98 800619F8 51E00034 */  beql  $t7, $zero, .L80061ACC
/* AD8B9C 800619FC 8FBF004C */   lw    $ra, 0x4c($sp)
/* AD8BA0 80061A00 90F8002F */  lbu   $t8, 0x2f($a3)
/* AD8BA4 80061A04 00034180 */  sll   $t0, $v1, 6
/* AD8BA8 80061A08 00484821 */  addu  $t1, $v0, $t0
/* AD8BAC 80061A0C 33190001 */  andi  $t9, $t8, 1
/* AD8BB0 80061A10 1320002D */  beqz  $t9, .L80061AC8
/* AD8BB4 80061A14 0049082B */   sltu  $at, $v0, $t1
/* AD8BB8 80061A18 1020002B */  beqz  $at, .L80061AC8
/* AD8BBC 80061A1C 00408025 */   move  $s0, $v0
/* AD8BC0 80061A20 27B70060 */  addiu $s7, $sp, 0x60
/* AD8BC4 80061A24 27B6006C */  addiu $s6, $sp, 0x6c
/* AD8BC8 80061A28 920A0017 */  lbu   $t2, 0x17($s0)
.L80061A2C:
/* AD8BCC 80061A2C 26110030 */  addiu $s1, $s0, 0x30
/* AD8BD0 80061A30 02202025 */  move  $a0, $s1
/* AD8BD4 80061A34 314B0001 */  andi  $t3, $t2, 1
/* AD8BD8 80061A38 15600006 */  bnez  $t3, .L80061A54
/* AD8BDC 80061A3C 26450040 */   addiu $a1, $s2, 0x40
/* AD8BE0 80061A40 8EAD0018 */  lw    $t5, 0x18($s5)
/* AD8BE4 80061A44 8EAC001C */  lw    $t4, 0x1c($s5)
/* AD8BE8 80061A48 000D7180 */  sll   $t6, $t5, 6
/* AD8BEC 80061A4C 1000001A */  b     .L80061AB8
/* AD8BF0 80061A50 018E1021 */   addu  $v0, $t4, $t6
.L80061A54:
/* AD8BF4 80061A54 0C033F61 */  jal   func_800CFD84
/* AD8BF8 80061A58 27A60078 */   addiu $a2, $sp, 0x78
/* AD8BFC 80061A5C 24010001 */  li    $at, 1
/* AD8C00 80061A60 14410011 */  bne   $v0, $at, .L80061AA8
/* AD8C04 80061A64 02C02025 */   move  $a0, $s6
/* AD8C08 80061A68 02202825 */  move  $a1, $s1
/* AD8C0C 80061A6C 26530018 */  addiu $s3, $s2, 0x18
/* AD8C10 80061A70 0C01DF97 */  jal   func_80077E5C
/* AD8C14 80061A74 26540046 */   addiu $s4, $s2, 0x46
/* AD8C18 80061A78 02E02025 */  move  $a0, $s7
/* AD8C1C 80061A7C 0C01DF97 */  jal   func_80077E5C
/* AD8C20 80061A80 02802825 */   move  $a1, $s4
/* AD8C24 80061A84 C7A40078 */  lwc1  $f4, 0x78($sp)
/* AD8C28 80061A88 03C02025 */  move  $a0, $fp
/* AD8C2C 80061A8C 02002825 */  move  $a1, $s0
/* AD8C30 80061A90 02C03025 */  move  $a2, $s6
/* AD8C34 80061A94 02403825 */  move  $a3, $s2
/* AD8C38 80061A98 AFB30010 */  sw    $s3, 0x10($sp)
/* AD8C3C 80061A9C AFB70014 */  sw    $s7, 0x14($sp)
/* AD8C40 80061AA0 0C018529 */  jal   func_800614A4
/* AD8C44 80061AA4 E7A40018 */   swc1  $f4, 0x18($sp)
.L80061AA8:
/* AD8C48 80061AA8 8EB80018 */  lw    $t8, 0x18($s5)
/* AD8C4C 80061AAC 8EAF001C */  lw    $t7, 0x1c($s5)
/* AD8C50 80061AB0 0018C980 */  sll   $t9, $t8, 6
/* AD8C54 80061AB4 01F91021 */  addu  $v0, $t7, $t9
.L80061AB8:
/* AD8C58 80061AB8 26100040 */  addiu $s0, $s0, 0x40
/* AD8C5C 80061ABC 0202082B */  sltu  $at, $s0, $v0
/* AD8C60 80061AC0 5420FFDA */  bnezl $at, .L80061A2C
/* AD8C64 80061AC4 920A0017 */   lbu   $t2, 0x17($s0)
.L80061AC8:
/* AD8C68 80061AC8 8FBF004C */  lw    $ra, 0x4c($sp)
.L80061ACC:
/* AD8C6C 80061ACC 8FB00028 */  lw    $s0, 0x28($sp)
/* AD8C70 80061AD0 8FB1002C */  lw    $s1, 0x2c($sp)
/* AD8C74 80061AD4 8FB20030 */  lw    $s2, 0x30($sp)
/* AD8C78 80061AD8 8FB30034 */  lw    $s3, 0x34($sp)
/* AD8C7C 80061ADC 8FB40038 */  lw    $s4, 0x38($sp)
/* AD8C80 80061AE0 8FB5003C */  lw    $s5, 0x3c($sp)
/* AD8C84 80061AE4 8FB60040 */  lw    $s6, 0x40($sp)
/* AD8C88 80061AE8 8FB70044 */  lw    $s7, 0x44($sp)
/* AD8C8C 80061AEC 8FBE0048 */  lw    $fp, 0x48($sp)
/* AD8C90 80061AF0 03E00008 */  jr    $ra
/* AD8C94 80061AF4 27BD0088 */   addiu $sp, $sp, 0x88

/* AD8C98 80061AF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD8C9C 80061AFC AFA70024 */  sw    $a3, 0x24($sp)
/* AD8CA0 80061B00 00C03825 */  move  $a3, $a2
/* AD8CA4 80061B04 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD8CA8 80061B08 AFA60020 */  sw    $a2, 0x20($sp)
/* AD8CAC 80061B0C 0C018667 */  jal   func_8006199C
/* AD8CB0 80061B10 8FA60024 */   lw    $a2, 0x24($sp)
/* AD8CB4 80061B14 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD8CB8 80061B18 27BD0018 */  addiu $sp, $sp, 0x18
/* AD8CBC 80061B1C 03E00008 */  jr    $ra
/* AD8CC0 80061B20 00000000 */   nop   

/* AD8CC4 80061B24 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AD8CC8 80061B28 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD8CCC 80061B2C AFB10028 */  sw    $s1, 0x28($sp)
/* AD8CD0 80061B30 AFB00024 */  sw    $s0, 0x24($sp)
/* AD8CD4 80061B34 AFA40058 */  sw    $a0, 0x58($sp)
/* AD8CD8 80061B38 AFA5005C */  sw    $a1, 0x5c($sp)
/* AD8CDC 80061B3C 90CE0012 */  lbu   $t6, 0x12($a2)
/* AD8CE0 80061B40 00C08025 */  move  $s0, $a2
/* AD8CE4 80061B44 00E08825 */  move  $s1, $a3
/* AD8CE8 80061B48 31CF0001 */  andi  $t7, $t6, 1
/* AD8CEC 80061B4C 51E00025 */  beql  $t7, $zero, .L80061BE4
/* AD8CF0 80061B50 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD8CF4 80061B54 90F80012 */  lbu   $t8, 0x12($a3)
/* AD8CF8 80061B58 33190001 */  andi  $t9, $t8, 1
/* AD8CFC 80061B5C 53200021 */  beql  $t9, $zero, .L80061BE4
/* AD8D00 80061B60 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD8D04 80061B64 90C8002F */  lbu   $t0, 0x2f($a2)
/* AD8D08 80061B68 31090001 */  andi  $t1, $t0, 1
/* AD8D0C 80061B6C 5120001D */  beql  $t1, $zero, .L80061BE4
/* AD8D10 80061B70 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD8D14 80061B74 90EA002F */  lbu   $t2, 0x2f($a3)
/* AD8D18 80061B78 24C40040 */  addiu $a0, $a2, 0x40
/* AD8D1C 80061B7C 24E50040 */  addiu $a1, $a3, 0x40
/* AD8D20 80061B80 314B0001 */  andi  $t3, $t2, 1
/* AD8D24 80061B84 51600017 */  beql  $t3, $zero, .L80061BE4
/* AD8D28 80061B88 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD8D2C 80061B8C 0C033FC5 */  jal   func_800CFF14
/* AD8D30 80061B90 27A6004C */   addiu $a2, $sp, 0x4c
/* AD8D34 80061B94 24010001 */  li    $at, 1
/* AD8D38 80061B98 14410011 */  bne   $v0, $at, .L80061BE0
/* AD8D3C 80061B9C 27A40040 */   addiu $a0, $sp, 0x40
/* AD8D40 80061BA0 0C01DF97 */  jal   func_80077E5C
/* AD8D44 80061BA4 26050046 */   addiu $a1, $s0, 0x46
/* AD8D48 80061BA8 27A40034 */  addiu $a0, $sp, 0x34
/* AD8D4C 80061BAC 0C01DF97 */  jal   func_80077E5C
/* AD8D50 80061BB0 26250046 */   addiu $a1, $s1, 0x46
/* AD8D54 80061BB4 C7A4004C */  lwc1  $f4, 0x4c($sp)
/* AD8D58 80061BB8 262C0018 */  addiu $t4, $s1, 0x18
/* AD8D5C 80061BBC 27AD0034 */  addiu $t5, $sp, 0x34
/* AD8D60 80061BC0 AFAD0014 */  sw    $t5, 0x14($sp)
/* AD8D64 80061BC4 AFAC0010 */  sw    $t4, 0x10($sp)
/* AD8D68 80061BC8 02002025 */  move  $a0, $s0
/* AD8D6C 80061BCC 26050018 */  addiu $a1, $s0, 0x18
/* AD8D70 80061BD0 27A60040 */  addiu $a2, $sp, 0x40
/* AD8D74 80061BD4 02203825 */  move  $a3, $s1
/* AD8D78 80061BD8 0C018529 */  jal   func_800614A4
/* AD8D7C 80061BDC E7A40018 */   swc1  $f4, 0x18($sp)
.L80061BE0:
/* AD8D80 80061BE0 8FBF002C */  lw    $ra, 0x2c($sp)
.L80061BE4:
/* AD8D84 80061BE4 8FB00024 */  lw    $s0, 0x24($sp)
/* AD8D88 80061BE8 8FB10028 */  lw    $s1, 0x28($sp)
/* AD8D8C 80061BEC 03E00008 */  jr    $ra
/* AD8D90 80061BF0 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_80061BF4
/* AD8D94 80061BF4 908E0012 */  lbu   $t6, 0x12($a0)
/* AD8D98 80061BF8 00001025 */  move  $v0, $zero
/* AD8D9C 80061BFC 31CF0001 */  andi  $t7, $t6, 1
/* AD8DA0 80061C00 15E00003 */  bnez  $t7, .L80061C10
/* AD8DA4 80061C04 00000000 */   nop   
/* AD8DA8 80061C08 03E00008 */  jr    $ra
/* AD8DAC 80061C0C 24020001 */   li    $v0, 1

.L80061C10:
/* AD8DB0 80061C10 03E00008 */  jr    $ra
/* AD8DB4 80061C14 00000000 */   nop   

glabel func_80061C18
/* AD8DB8 80061C18 90A20013 */  lbu   $v0, 0x13($a1)
/* AD8DBC 80061C1C 908E0012 */  lbu   $t6, 0x12($a0)
/* AD8DC0 80061C20 01C27824 */  and   $t7, $t6, $v0
/* AD8DC4 80061C24 31F80038 */  andi  $t8, $t7, 0x38
/* AD8DC8 80061C28 13000010 */  beqz  $t8, .L80061C6C
/* AD8DCC 80061C2C 00000000 */   nop   
/* AD8DD0 80061C30 90830013 */  lbu   $v1, 0x13($a0)
/* AD8DD4 80061C34 90B90012 */  lbu   $t9, 0x12($a1)
/* AD8DD8 80061C38 306A0002 */  andi  $t2, $v1, 2
/* AD8DDC 80061C3C 00794024 */  and   $t0, $v1, $t9
/* AD8DE0 80061C40 31090038 */  andi  $t1, $t0, 0x38
/* AD8DE4 80061C44 11200009 */  beqz  $t1, .L80061C6C
/* AD8DE8 80061C48 00000000 */   nop   
/* AD8DEC 80061C4C 11400002 */  beqz  $t2, .L80061C58
/* AD8DF0 80061C50 304B0004 */   andi  $t3, $v0, 4
/* AD8DF4 80061C54 15600005 */  bnez  $t3, .L80061C6C
.L80061C58:
/* AD8DF8 80061C58 304C0002 */   andi  $t4, $v0, 2
/* AD8DFC 80061C5C 11800005 */  beqz  $t4, .L80061C74
/* AD8E00 80061C60 306D0004 */   andi  $t5, $v1, 4
/* AD8E04 80061C64 51A00004 */  beql  $t5, $zero, .L80061C78
/* AD8E08 80061C68 8CAE0000 */   lw    $t6, ($a1)
.L80061C6C:
/* AD8E0C 80061C6C 03E00008 */  jr    $ra
/* AD8E10 80061C70 24020001 */   li    $v0, 1

.L80061C74:
/* AD8E14 80061C74 8CAE0000 */  lw    $t6, ($a1)
.L80061C78:
/* AD8E18 80061C78 8C8F0000 */  lw    $t7, ($a0)
/* AD8E1C 80061C7C 00001025 */  move  $v0, $zero
/* AD8E20 80061C80 15CF0003 */  bne   $t6, $t7, .L80061C90
/* AD8E24 80061C84 00000000 */   nop   
/* AD8E28 80061C88 03E00008 */  jr    $ra
/* AD8E2C 80061C8C 24020001 */   li    $v0, 1

.L80061C90:
/* AD8E30 80061C90 03E00008 */  jr    $ra
/* AD8E34 80061C94 00000000 */   nop   

glabel func_80061C98
/* AD8E38 80061C98 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD8E3C 80061C9C AFBF0034 */  sw    $ra, 0x34($sp)
/* AD8E40 80061CA0 AFB70030 */  sw    $s7, 0x30($sp)
/* AD8E44 80061CA4 AFB6002C */  sw    $s6, 0x2c($sp)
/* AD8E48 80061CA8 AFB50028 */  sw    $s5, 0x28($sp)
/* AD8E4C 80061CAC AFB40024 */  sw    $s4, 0x24($sp)
/* AD8E50 80061CB0 AFB30020 */  sw    $s3, 0x20($sp)
/* AD8E54 80061CB4 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD8E58 80061CB8 AFB10018 */  sw    $s1, 0x18($sp)
/* AD8E5C 80061CBC AFB00014 */  sw    $s0, 0x14($sp)
/* AD8E60 80061CC0 8CAE01C0 */  lw    $t6, 0x1c0($a1)
/* AD8E64 80061CC4 24B201C4 */  addiu $s2, $a1, 0x1c4
/* AD8E68 80061CC8 00A08825 */  move  $s1, $a1
/* AD8E6C 80061CCC 000E7880 */  sll   $t7, $t6, 2
/* AD8E70 80061CD0 00AF1021 */  addu  $v0, $a1, $t7
/* AD8E74 80061CD4 244201C4 */  addiu $v0, $v0, 0x1c4
/* AD8E78 80061CD8 0242082B */  sltu  $at, $s2, $v0
/* AD8E7C 80061CDC 1020004F */  beqz  $at, .L80061E1C
/* AD8E80 80061CE0 0080A025 */   move  $s4, $a0
/* AD8E84 80061CE4 3C168014 */  lui   $s6, %hi(D_8013AC58) # $s6, 0x8014
/* AD8E88 80061CE8 3C158012 */  lui   $s5, %hi(D_8011DFAC) # $s5, 0x8012
/* AD8E8C 80061CEC 26B5DFAC */  addiu $s5, %lo(D_8011DFAC) # addiu $s5, $s5, -0x2054
/* AD8E90 80061CF0 26D6AC58 */  addiu $s6, %lo(D_8013AC58) # addiu $s6, $s6, -0x53a8
/* AD8E94 80061CF4 24130001 */  li    $s3, 1
.L80061CF8:
/* AD8E98 80061CF8 8E460000 */  lw    $a2, ($s2)
/* AD8E9C 80061CFC 10C00009 */  beqz  $a2, .L80061D24
/* AD8EA0 80061D00 00000000 */   nop   
/* AD8EA4 80061D04 0C0186FD */  jal   func_80061BF4
/* AD8EA8 80061D08 00C02025 */   move  $a0, $a2
/* AD8EAC 80061D0C 54530008 */  bnel  $v0, $s3, .L80061D30
/* AD8EB0 80061D10 8E2901C0 */   lw    $t1, 0x1c0($s1)
/* AD8EB4 80061D14 8E3801C0 */  lw    $t8, 0x1c0($s1)
/* AD8EB8 80061D18 0018C880 */  sll   $t9, $t8, 2
/* AD8EBC 80061D1C 02391021 */  addu  $v0, $s1, $t9
/* AD8EC0 80061D20 244201C4 */  addiu $v0, $v0, 0x1c4
.L80061D24:
/* AD8EC4 80061D24 1000003A */  b     .L80061E10
/* AD8EC8 80061D28 26570004 */   addiu $s7, $s2, 4
/* AD8ECC 80061D2C 8E2901C0 */  lw    $t1, 0x1c0($s1)
.L80061D30:
/* AD8ED0 80061D30 26570004 */  addiu $s7, $s2, 4
/* AD8ED4 80061D34 02E08025 */  move  $s0, $s7
/* AD8ED8 80061D38 00095080 */  sll   $t2, $t1, 2
/* AD8EDC 80061D3C 022A1021 */  addu  $v0, $s1, $t2
/* AD8EE0 80061D40 244201C4 */  addiu $v0, $v0, 0x1c4
/* AD8EE4 80061D44 02E2082B */  sltu  $at, $s7, $v0
/* AD8EE8 80061D48 50200032 */  beql  $at, $zero, .L80061E14
/* AD8EEC 80061D4C 02E2082B */   sltu  $at, $s7, $v0
/* AD8EF0 80061D50 8E070000 */  lw    $a3, ($s0)
.L80061D54:
/* AD8EF4 80061D54 50E0000B */  beql  $a3, $zero, .L80061D84
/* AD8EF8 80061D58 8E2B01C0 */   lw    $t3, 0x1c0($s1)
/* AD8EFC 80061D5C 0C0186FD */  jal   func_80061BF4
/* AD8F00 80061D60 00E02025 */   move  $a0, $a3
/* AD8F04 80061D64 50530007 */  beql  $v0, $s3, .L80061D84
/* AD8F08 80061D68 8E2B01C0 */   lw    $t3, 0x1c0($s1)
/* AD8F0C 80061D6C 8E440000 */  lw    $a0, ($s2)
/* AD8F10 80061D70 0C018706 */  jal   func_80061C18
/* AD8F14 80061D74 8E050000 */   lw    $a1, ($s0)
/* AD8F18 80061D78 54530007 */  bnel  $v0, $s3, .L80061D98
/* AD8F1C 80061D7C 8E460000 */   lw    $a2, ($s2)
/* AD8F20 80061D80 8E2B01C0 */  lw    $t3, 0x1c0($s1)
.L80061D84:
/* AD8F24 80061D84 000B6080 */  sll   $t4, $t3, 2
/* AD8F28 80061D88 022C1021 */  addu  $v0, $s1, $t4
/* AD8F2C 80061D8C 1000001C */  b     .L80061E00
/* AD8F30 80061D90 244201C4 */   addiu $v0, $v0, 0x1c4
/* AD8F34 80061D94 8E460000 */  lw    $a2, ($s2)
.L80061D98:
/* AD8F38 80061D98 8E070000 */  lw    $a3, ($s0)
/* AD8F3C 80061D9C 02802025 */  move  $a0, $s4
/* AD8F40 80061DA0 90C30015 */  lbu   $v1, 0x15($a2)
/* AD8F44 80061DA4 90E80015 */  lbu   $t0, 0x15($a3)
/* AD8F48 80061DA8 00036900 */  sll   $t5, $v1, 4
/* AD8F4C 80061DAC 02AD7021 */  addu  $t6, $s5, $t5
/* AD8F50 80061DB0 00087880 */  sll   $t7, $t0, 2
/* AD8F54 80061DB4 01CFC021 */  addu  $t8, $t6, $t7
/* AD8F58 80061DB8 8F020000 */  lw    $v0, ($t8)
/* AD8F5C 80061DBC 00602825 */  move  $a1, $v1
/* AD8F60 80061DC0 14400009 */  bnez  $v0, .L80061DE8
/* AD8F64 80061DC4 00000000 */   nop   
/* AD8F68 80061DC8 02C02025 */  move  $a0, $s6
/* AD8F6C 80061DCC 0C00084C */  jal   DebugMessage
/* AD8F70 80061DD0 01003025 */   move  $a2, $t0
/* AD8F74 80061DD4 8E3901C0 */  lw    $t9, 0x1c0($s1)
/* AD8F78 80061DD8 00194880 */  sll   $t1, $t9, 2
/* AD8F7C 80061DDC 02291021 */  addu  $v0, $s1, $t1
/* AD8F80 80061DE0 10000007 */  b     .L80061E00
/* AD8F84 80061DE4 244201C4 */   addiu $v0, $v0, 0x1c4
.L80061DE8:
/* AD8F88 80061DE8 0040F809 */  jalr  $v0
/* AD8F8C 80061DEC 02202825 */  move  $a1, $s1
/* AD8F90 80061DF0 8E2A01C0 */  lw    $t2, 0x1c0($s1)
/* AD8F94 80061DF4 000A5880 */  sll   $t3, $t2, 2
/* AD8F98 80061DF8 022B1021 */  addu  $v0, $s1, $t3
/* AD8F9C 80061DFC 244201C4 */  addiu $v0, $v0, 0x1c4
.L80061E00:
/* AD8FA0 80061E00 26100004 */  addiu $s0, $s0, 4
/* AD8FA4 80061E04 0202082B */  sltu  $at, $s0, $v0
/* AD8FA8 80061E08 5420FFD2 */  bnezl $at, .L80061D54
/* AD8FAC 80061E0C 8E070000 */   lw    $a3, ($s0)
.L80061E10:
/* AD8FB0 80061E10 02E2082B */  sltu  $at, $s7, $v0
.L80061E14:
/* AD8FB4 80061E14 1420FFB8 */  bnez  $at, .L80061CF8
/* AD8FB8 80061E18 02E09025 */   move  $s2, $s7
.L80061E1C:
/* AD8FBC 80061E1C 8FBF0034 */  lw    $ra, 0x34($sp)
/* AD8FC0 80061E20 8FB00014 */  lw    $s0, 0x14($sp)
/* AD8FC4 80061E24 8FB10018 */  lw    $s1, 0x18($sp)
/* AD8FC8 80061E28 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD8FCC 80061E2C 8FB30020 */  lw    $s3, 0x20($sp)
/* AD8FD0 80061E30 8FB40024 */  lw    $s4, 0x24($sp)
/* AD8FD4 80061E34 8FB50028 */  lw    $s5, 0x28($sp)
/* AD8FD8 80061E38 8FB6002C */  lw    $s6, 0x2c($sp)
/* AD8FDC 80061E3C 8FB70030 */  lw    $s7, 0x30($sp)
/* AD8FE0 80061E40 03E00008 */  jr    $ra
/* AD8FE4 80061E44 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_80061E48
/* AD8FE8 80061E48 3C0E8012 */  lui   $t6, %hi(D_8011DFEC) # $t6, 0x8012
/* AD8FEC 80061E4C 25CEDFEC */  addiu $t6, %lo(D_8011DFEC) # addiu $t6, $t6, -0x2014
/* AD8FF0 80061E50 8DD80000 */  lw    $t8, ($t6)
/* AD8FF4 80061E54 AC980000 */  sw    $t8, ($a0)
/* AD8FF8 80061E58 8DCF0004 */  lw    $t7, 4($t6)
/* AD8FFC 80061E5C AC8F0004 */  sw    $t7, 4($a0)
/* AD9000 80061E60 8DD80008 */  lw    $t8, 8($t6)
/* AD9004 80061E64 AC980008 */  sw    $t8, 8($a0)
/* AD9008 80061E68 8DCF000C */  lw    $t7, 0xc($t6)
/* AD900C 80061E6C AC8F000C */  sw    $t7, 0xc($a0)
/* AD9010 80061E70 8DD80010 */  lw    $t8, 0x10($t6)
/* AD9014 80061E74 AC980010 */  sw    $t8, 0x10($a0)
/* AD9018 80061E78 8DCF0014 */  lw    $t7, 0x14($t6)
/* AD901C 80061E7C AC8F0014 */  sw    $t7, 0x14($a0)
/* AD9020 80061E80 8DD80018 */  lw    $t8, 0x18($t6)
/* AD9024 80061E84 03E00008 */  jr    $ra
/* AD9028 80061E88 AC980018 */   sw    $t8, 0x18($a0)

glabel func_80061E8C
/* AD902C 80061E8C 44800000 */  mtc1  $zero, $f0
/* AD9030 80061E90 A0800018 */  sb    $zero, 0x18($a0)
/* AD9034 80061E94 A0800019 */  sb    $zero, 0x19($a0)
/* AD9038 80061E98 A080001A */  sb    $zero, 0x1a($a0)
/* AD903C 80061E9C A080001B */  sb    $zero, 0x1b($a0)
/* AD9040 80061EA0 E480000C */  swc1  $f0, 0xc($a0)
/* AD9044 80061EA4 E4800008 */  swc1  $f0, 8($a0)
/* AD9048 80061EA8 03E00008 */  jr    $ra
/* AD904C 80061EAC E4800004 */   swc1  $f0, 4($a0)

/* AD9050 80061EB0 90AE0000 */  lbu   $t6, ($a1)
/* AD9054 80061EB4 A08E0017 */  sb    $t6, 0x17($a0)
/* AD9058 80061EB8 84AF0002 */  lh    $t7, 2($a1)
/* AD905C 80061EBC A48F0010 */  sh    $t7, 0x10($a0)
/* AD9060 80061EC0 84B80004 */  lh    $t8, 4($a1)
/* AD9064 80061EC4 A4980012 */  sh    $t8, 0x12($a0)
/* AD9068 80061EC8 90B90006 */  lbu   $t9, 6($a1)
/* AD906C 80061ECC 03E00008 */  jr    $ra
/* AD9070 80061ED0 A0990016 */   sb    $t9, 0x16($a0)

/* AD9074 80061ED4 90CE0000 */  lbu   $t6, ($a2)
/* AD9078 80061ED8 AC850000 */  sw    $a1, ($a0)
/* AD907C 80061EDC A08E0017 */  sb    $t6, 0x17($a0)
/* AD9080 80061EE0 84CF0002 */  lh    $t7, 2($a2)
/* AD9084 80061EE4 A48F0010 */  sh    $t7, 0x10($a0)
/* AD9088 80061EE8 84D80004 */  lh    $t8, 4($a2)
/* AD908C 80061EEC A4980012 */  sh    $t8, 0x12($a0)
/* AD9090 80061EF0 90D90006 */  lbu   $t9, 6($a2)
/* AD9094 80061EF4 03E00008 */  jr    $ra
/* AD9098 80061EF8 A0990016 */   sb    $t9, 0x16($a0)

glabel func_80061EFC
/* AD909C 80061EFC 90CE0000 */  lbu   $t6, ($a2)
/* AD90A0 80061F00 AC850000 */  sw    $a1, ($a0)
/* AD90A4 80061F04 A08E0017 */  sb    $t6, 0x17($a0)
/* AD90A8 80061F08 84CF0002 */  lh    $t7, 2($a2)
/* AD90AC 80061F0C A48F0010 */  sh    $t7, 0x10($a0)
/* AD90B0 80061F10 84D80004 */  lh    $t8, 4($a2)
/* AD90B4 80061F14 A4980012 */  sh    $t8, 0x12($a0)
/* AD90B8 80061F18 84D90006 */  lh    $t9, 6($a2)
/* AD90BC 80061F1C A4990014 */  sh    $t9, 0x14($a0)
/* AD90C0 80061F20 90C80008 */  lbu   $t0, 8($a2)
/* AD90C4 80061F24 03E00008 */  jr    $ra
/* AD90C8 80061F28 A0880016 */   sb    $t0, 0x16($a0)

/* AD90CC 80061F2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD90D0 80061F30 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD90D4 80061F34 AFA40018 */  sw    $a0, 0x18($sp)
/* AD90D8 80061F38 AFA60020 */  sw    $a2, 0x20($sp)
/* AD90DC 80061F3C 0C016C80 */  jal   func_8005B200
/* AD90E0 80061F40 00A02025 */   move  $a0, $a1
/* AD90E4 80061F44 8FA40018 */  lw    $a0, 0x18($sp)
/* AD90E8 80061F48 00402825 */  move  $a1, $v0
/* AD90EC 80061F4C 0C0187BF */  jal   func_80061EFC
/* AD90F0 80061F50 8FA60020 */   lw    $a2, 0x20($sp)
/* AD90F4 80061F54 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD90F8 80061F58 27BD0018 */  addiu $sp, $sp, 0x18
/* AD90FC 80061F5C 03E00008 */  jr    $ra
/* AD9100 80061F60 00000000 */   nop   

glabel func_80061F64
/* AD9104 80061F64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD9108 80061F68 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD910C 80061F6C AFA40018 */  sw    $a0, 0x18($sp)
/* AD9110 80061F70 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD9114 80061F74 AFA60020 */  sw    $a2, 0x20($sp)
/* AD9118 80061F78 8CC80000 */  lw    $t0, ($a2)
/* AD911C 80061F7C 51000078 */  beql  $t0, $zero, .L80062160
/* AD9120 80061F80 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD9124 80061F84 90CF0011 */  lbu   $t7, 0x11($a2)
/* AD9128 80061F88 31F80002 */  andi  $t8, $t7, 2
/* AD912C 80061F8C 53000074 */  beql  $t8, $zero, .L80062160
/* AD9130 80061F90 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD9134 80061F94 90E20016 */  lbu   $v0, 0x16($a3)
/* AD9138 80061F98 30590002 */  andi  $t9, $v0, 2
/* AD913C 80061F9C 1320006F */  beqz  $t9, .L8006215C
/* AD9140 80061FA0 30490010 */   andi  $t1, $v0, 0x10
/* AD9144 80061FA4 5520006E */  bnezl $t1, .L80062160
/* AD9148 80061FA8 8FBF0014 */   lw    $ra, 0x14($sp)
/* AD914C 80061FAC 8CE40024 */  lw    $a0, 0x24($a3)
/* AD9150 80061FB0 3C058014 */  li    $a1, 0x80140000 # 0.000000
/* AD9154 80061FB4 24A5ACA0 */  addiu $a1, %lo(D_8013ACA0) # addiu $a1, $a1, -0x5360
/* AD9158 80061FB8 14800009 */  bnez  $a0, .L80061FE0
/* AD915C 80061FBC 2406195D */   li    $a2, 6493
/* AD9160 80061FC0 3C048014 */  li    $a0, 0x80140000 # 0.000000
/* AD9164 80061FC4 2484AC7C */  addiu $a0, %lo(D_8013AC7C) # addiu $a0, $a0, -0x5384
/* AD9168 80061FC8 0C0007FC */  jal   AssertMessage
/* AD916C 80061FCC AFA70024 */   sw    $a3, 0x24($sp)
/* AD9170 80061FD0 8FA70024 */  lw    $a3, 0x24($sp)
/* AD9174 80061FD4 8FAA0020 */  lw    $t2, 0x20($sp)
/* AD9178 80061FD8 8CE40024 */  lw    $a0, 0x24($a3)
/* AD917C 80061FDC 8D480000 */  lw    $t0, ($t2)
.L80061FE0:
/* AD9180 80061FE0 8D060098 */  lw    $a2, 0x98($t0)
/* AD9184 80061FE4 00001825 */  move  $v1, $zero
/* AD9188 80061FE8 24050020 */  li    $a1, 32
/* AD918C 80061FEC 54C0001B */  bnezl $a2, .L8006205C
/* AD9190 80061FF0 8C820000 */   lw    $v0, ($a0)
/* AD9194 80061FF4 908B0005 */  lbu   $t3, 5($a0)
/* AD9198 80061FF8 44801000 */  mtc1  $zero, $f2
/* AD919C 80061FFC 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AD91A0 80062000 448B2000 */  mtc1  $t3, $f4
/* AD91A4 80062004 05610004 */  bgez  $t3, .L80062018
/* AD91A8 80062008 468021A0 */   cvt.s.w $f6, $f4
/* AD91AC 8006200C 44814000 */  mtc1  $at, $f8
/* AD91B0 80062010 00000000 */  nop   
/* AD91B4 80062014 46083180 */  add.s $f6, $f6, $f8
.L80062018:
/* AD91B8 80062018 90EC000D */  lbu   $t4, 0xd($a3)
/* AD91BC 8006201C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AD91C0 80062020 448C5000 */  mtc1  $t4, $f10
/* AD91C4 80062024 05810004 */  bgez  $t4, .L80062038
/* AD91C8 80062028 46805420 */   cvt.s.w $f16, $f10
/* AD91CC 8006202C 44819000 */  mtc1  $at, $f18
/* AD91D0 80062030 00000000 */  nop   
/* AD91D4 80062034 46128400 */  add.s $f16, $f16, $f18
.L80062038:
/* AD91D8 80062038 46103001 */  sub.s $f0, $f6, $f16
/* AD91DC 8006203C 8FAD0020 */  lw    $t5, 0x20($sp)
/* AD91E0 80062040 4602003C */  c.lt.s $f0, $f2
/* AD91E4 80062044 91A50011 */  lbu   $a1, 0x11($t5)
/* AD91E8 80062048 45020015 */  bc1fl .L800620A0
/* AD91EC 8006204C 30AA0004 */   andi  $t2, $a1, 4
/* AD91F0 80062050 10000012 */  b     .L8006209C
/* AD91F4 80062054 46001006 */   mov.s $f0, $f2
/* AD91F8 80062058 8C820000 */  lw    $v0, ($a0)
.L8006205C:
/* AD91FC 8006205C 24040001 */  li    $a0, 1
.L80062060:
/* AD9200 80062060 50440005 */  beql  $v0, $a0, .L80062078
/* AD9204 80062064 00C37021 */   addu  $t6, $a2, $v1
/* AD9208 80062068 24630001 */  addiu $v1, $v1, 1
/* AD920C 8006206C 1465FFFC */  bne   $v1, $a1, .L80062060
/* AD9210 80062070 00021042 */   srl   $v0, $v0, 1
/* AD9214 80062074 00C37021 */  addu  $t6, $a2, $v1
.L80062078:
/* AD9218 80062078 91C20000 */  lbu   $v0, ($t6)
/* AD921C 8006207C 0002C103 */  sra   $t8, $v0, 4
/* AD9220 80062080 3319000F */  andi  $t9, $t8, 0xf
/* AD9224 80062084 A11900B1 */  sb    $t9, 0xb1($t0)
/* AD9228 80062088 304F000F */  andi  $t7, $v0, 0xf
/* AD922C 8006208C 448F2000 */  mtc1  $t7, $f4
/* AD9230 80062090 8FA90020 */  lw    $t1, 0x20($sp)
/* AD9234 80062094 46802020 */  cvt.s.w $f0, $f4
/* AD9238 80062098 91250011 */  lbu   $a1, 0x11($t1)
.L8006209C:
/* AD923C 8006209C 30AA0004 */  andi  $t2, $a1, 4
.L800620A0:
/* AD9240 800620A0 1540002E */  bnez  $t2, .L8006215C
/* AD9244 800620A4 8FAB0020 */   lw    $t3, 0x20($sp)
/* AD9248 800620A8 8D680000 */  lw    $t0, ($t3)
/* AD924C 800620AC 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* AD9250 800620B0 910C00B0 */  lbu   $t4, 0xb0($t0)
/* AD9254 800620B4 448C4000 */  mtc1  $t4, $f8
/* AD9258 800620B8 05810004 */  bgez  $t4, .L800620CC
/* AD925C 800620BC 468042A0 */   cvt.s.w $f10, $f8
/* AD9260 800620C0 44819000 */  mtc1  $at, $f18
/* AD9264 800620C4 00000000 */  nop   
/* AD9268 800620C8 46125280 */  add.s $f10, $f10, $f18
.L800620CC:
/* AD926C 800620CC 46005180 */  add.s $f6, $f10, $f0
/* AD9270 800620D0 240E0001 */  li    $t6, 1
/* AD9274 800620D4 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* AD9278 800620D8 444DF800 */  cfc1  $t5, $31
/* AD927C 800620DC 44CEF800 */  ctc1  $t6, $31
/* AD9280 800620E0 00000000 */  nop   
/* AD9284 800620E4 46003424 */  cvt.w.s $f16, $f6
/* AD9288 800620E8 444EF800 */  cfc1  $t6, $31
/* AD928C 800620EC 00000000 */  nop   
/* AD9290 800620F0 31CE0078 */  andi  $t6, $t6, 0x78
/* AD9294 800620F4 51C00013 */  beql  $t6, $zero, .L80062144
/* AD9298 800620F8 440E8000 */   mfc1  $t6, $f16
/* AD929C 800620FC 44818000 */  mtc1  $at, $f16
/* AD92A0 80062100 240E0001 */  li    $t6, 1
/* AD92A4 80062104 46103401 */  sub.s $f16, $f6, $f16
/* AD92A8 80062108 44CEF800 */  ctc1  $t6, $31
/* AD92AC 8006210C 00000000 */  nop   
/* AD92B0 80062110 46008424 */  cvt.w.s $f16, $f16
/* AD92B4 80062114 444EF800 */  cfc1  $t6, $31
/* AD92B8 80062118 00000000 */  nop   
/* AD92BC 8006211C 31CE0078 */  andi  $t6, $t6, 0x78
/* AD92C0 80062120 15C00005 */  bnez  $t6, .L80062138
/* AD92C4 80062124 00000000 */   nop   
/* AD92C8 80062128 440E8000 */  mfc1  $t6, $f16
/* AD92CC 8006212C 3C018000 */  lui   $at, 0x8000
/* AD92D0 80062130 10000007 */  b     .L80062150
/* AD92D4 80062134 01C17025 */   or    $t6, $t6, $at
.L80062138:
/* AD92D8 80062138 10000005 */  b     .L80062150
/* AD92DC 8006213C 240EFFFF */   li    $t6, -1
/* AD92E0 80062140 440E8000 */  mfc1  $t6, $f16
.L80062144:
/* AD92E4 80062144 00000000 */  nop   
/* AD92E8 80062148 05C0FFFB */  bltz  $t6, .L80062138
/* AD92EC 8006214C 00000000 */   nop   
.L80062150:
/* AD92F0 80062150 44CDF800 */  ctc1  $t5, $31
/* AD92F4 80062154 A10E00B0 */  sb    $t6, 0xb0($t0)
/* AD92F8 80062158 00000000 */  nop   
.L8006215C:
/* AD92FC 8006215C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80062160:
/* AD9300 80062160 27BD0018 */  addiu $sp, $sp, 0x18
/* AD9304 80062164 03E00008 */  jr    $ra
/* AD9308 80062168 00000000 */   nop   

/* AD930C 8006216C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD9310 80062170 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD9314 80062174 AFB50028 */  sw    $s5, 0x28($sp)
/* AD9318 80062178 AFB40024 */  sw    $s4, 0x24($sp)
/* AD931C 8006217C AFB30020 */  sw    $s3, 0x20($sp)
/* AD9320 80062180 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD9324 80062184 AFB10018 */  sw    $s1, 0x18($sp)
/* AD9328 80062188 AFB00014 */  sw    $s0, 0x14($sp)
/* AD932C 8006218C 8CC20018 */  lw    $v0, 0x18($a2)
/* AD9330 80062190 00C09025 */  move  $s2, $a2
/* AD9334 80062194 0080A025 */  move  $s4, $a0
/* AD9338 80062198 00A0A825 */  move  $s5, $a1
/* AD933C 8006219C 18400013 */  blez  $v0, .L800621EC
/* AD9340 800621A0 00C09825 */   move  $s3, $a2
/* AD9344 800621A4 8CCE001C */  lw    $t6, 0x1c($a2)
/* AD9348 800621A8 51C00011 */  beql  $t6, $zero, .L800621F0
/* AD934C 800621AC 8FBF002C */   lw    $ra, 0x2c($sp)
/* AD9350 800621B0 1840000E */  blez  $v0, .L800621EC
/* AD9354 800621B4 00008025 */   move  $s0, $zero
/* AD9358 800621B8 00008825 */  move  $s1, $zero
/* AD935C 800621BC 8E4F001C */  lw    $t7, 0x1c($s2)
.L800621C0:
/* AD9360 800621C0 02802025 */  move  $a0, $s4
/* AD9364 800621C4 02A02825 */  move  $a1, $s5
/* AD9368 800621C8 02403025 */  move  $a2, $s2
/* AD936C 800621CC 0C0187D9 */  jal   func_80061F64
/* AD9370 800621D0 01F13821 */   addu  $a3, $t7, $s1
/* AD9374 800621D4 8E780018 */  lw    $t8, 0x18($s3)
/* AD9378 800621D8 26100001 */  addiu $s0, $s0, 1
/* AD937C 800621DC 26310040 */  addiu $s1, $s1, 0x40
/* AD9380 800621E0 0218082A */  slt   $at, $s0, $t8
/* AD9384 800621E4 5420FFF6 */  bnezl $at, .L800621C0
/* AD9388 800621E8 8E4F001C */   lw    $t7, 0x1c($s2)
.L800621EC:
/* AD938C 800621EC 8FBF002C */  lw    $ra, 0x2c($sp)
.L800621F0:
/* AD9390 800621F0 8FB00014 */  lw    $s0, 0x14($sp)
/* AD9394 800621F4 8FB10018 */  lw    $s1, 0x18($sp)
/* AD9398 800621F8 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD939C 800621FC 8FB30020 */  lw    $s3, 0x20($sp)
/* AD93A0 80062200 8FB40024 */  lw    $s4, 0x24($sp)
/* AD93A4 80062204 8FB50028 */  lw    $s5, 0x28($sp)
/* AD93A8 80062208 03E00008 */  jr    $ra
/* AD93AC 8006220C 27BD0030 */   addiu $sp, $sp, 0x30

/* AD93B0 80062210 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD93B4 80062214 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD93B8 80062218 0C0187D9 */  jal   func_80061F64
/* AD93BC 8006221C 24C70018 */   addiu $a3, $a2, 0x18
/* AD93C0 80062220 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD93C4 80062224 27BD0018 */  addiu $sp, $sp, 0x18
/* AD93C8 80062228 03E00008 */  jr    $ra
/* AD93CC 8006222C 00000000 */   nop   

/* AD93D0 80062230 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AD93D4 80062234 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD93D8 80062238 AFB50028 */  sw    $s5, 0x28($sp)
/* AD93DC 8006223C AFB40024 */  sw    $s4, 0x24($sp)
/* AD93E0 80062240 AFB30020 */  sw    $s3, 0x20($sp)
/* AD93E4 80062244 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD93E8 80062248 AFB10018 */  sw    $s1, 0x18($sp)
/* AD93EC 8006224C AFB00014 */  sw    $s0, 0x14($sp)
/* AD93F0 80062250 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD93F4 80062254 00C09025 */  move  $s2, $a2
/* AD93F8 80062258 0080A025 */  move  $s4, $a0
/* AD93FC 8006225C 00A0A825 */  move  $s5, $a1
/* AD9400 80062260 00C09825 */  move  $s3, $a2
/* AD9404 80062264 19C0000E */  blez  $t6, .L800622A0
/* AD9408 80062268 00008025 */   move  $s0, $zero
/* AD940C 8006226C 00008825 */  move  $s1, $zero
/* AD9410 80062270 8E4F001C */  lw    $t7, 0x1c($s2)
.L80062274:
/* AD9414 80062274 02802025 */  move  $a0, $s4
/* AD9418 80062278 02A02825 */  move  $a1, $s5
/* AD941C 8006227C 02403025 */  move  $a2, $s2
/* AD9420 80062280 0C0187D9 */  jal   func_80061F64
/* AD9424 80062284 01F13821 */   addu  $a3, $t7, $s1
/* AD9428 80062288 8E780018 */  lw    $t8, 0x18($s3)
/* AD942C 8006228C 26100001 */  addiu $s0, $s0, 1
/* AD9430 80062290 2631005C */  addiu $s1, $s1, 0x5c
/* AD9434 80062294 0218082A */  slt   $at, $s0, $t8
/* AD9438 80062298 5420FFF6 */  bnezl $at, .L80062274
/* AD943C 8006229C 8E4F001C */   lw    $t7, 0x1c($s2)
.L800622A0:
/* AD9440 800622A0 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD9444 800622A4 8FB00014 */  lw    $s0, 0x14($sp)
/* AD9448 800622A8 8FB10018 */  lw    $s1, 0x18($sp)
/* AD944C 800622AC 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD9450 800622B0 8FB30020 */  lw    $s3, 0x20($sp)
/* AD9454 800622B4 8FB40024 */  lw    $s4, 0x24($sp)
/* AD9458 800622B8 8FB50028 */  lw    $s5, 0x28($sp)
/* AD945C 800622BC 03E00008 */  jr    $ra
/* AD9460 800622C0 27BD0030 */   addiu $sp, $sp, 0x30

/* AD9464 800622C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD9468 800622C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD946C 800622CC 0C0187D9 */  jal   func_80061F64
/* AD9470 800622D0 24C70018 */   addiu $a3, $a2, 0x18
/* AD9474 800622D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9478 800622D8 27BD0018 */  addiu $sp, $sp, 0x18
/* AD947C 800622DC 03E00008 */  jr    $ra
/* AD9480 800622E0 00000000 */   nop   

glabel func_800622E4
/* AD9484 800622E4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9488 800622E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD948C 800622EC AFB30020 */  sw    $s3, 0x20($sp)
/* AD9490 800622F0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD9494 800622F4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD9498 800622F8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD949C 800622FC 8CA300CC */  lw    $v1, 0xcc($a1)
/* AD94A0 80062300 00A08025 */  move  $s0, $a1
/* AD94A4 80062304 00809025 */  move  $s2, $a0
/* AD94A8 80062308 1860001F */  blez  $v1, .L80062388
/* AD94AC 8006230C 00A08825 */   move  $s1, $a1
/* AD94B0 80062310 3C138012 */  lui   $s3, %hi(D_8011E008) # $s3, 0x8012
/* AD94B4 80062314 2673E008 */  addiu $s3, %lo(D_8011E008) # addiu $s3, $s3, -0x1ff8
/* AD94B8 80062318 8E2600D0 */  lw    $a2, 0xd0($s1)
.L8006231C:
/* AD94BC 8006231C 00037080 */  sll   $t6, $v1, 2
/* AD94C0 80062320 54C00004 */  bnezl $a2, .L80062334
/* AD94C4 80062324 90CF0011 */   lbu   $t7, 0x11($a2)
/* AD94C8 80062328 10000013 */  b     .L80062378
/* AD94CC 8006232C 01D01021 */   addu  $v0, $t6, $s0
/* AD94D0 80062330 90CF0011 */  lbu   $t7, 0x11($a2)
.L80062334:
/* AD94D4 80062334 0003C880 */  sll   $t9, $v1, 2
/* AD94D8 80062338 31F80040 */  andi  $t8, $t7, 0x40
/* AD94DC 8006233C 53000004 */  beql  $t8, $zero, .L80062350
/* AD94E0 80062340 90C80015 */   lbu   $t0, 0x15($a2)
/* AD94E4 80062344 1000000C */  b     .L80062378
/* AD94E8 80062348 03301021 */   addu  $v0, $t9, $s0
/* AD94EC 8006234C 90C80015 */  lbu   $t0, 0x15($a2)
.L80062350:
/* AD94F0 80062350 02402025 */  move  $a0, $s2
/* AD94F4 80062354 02002825 */  move  $a1, $s0
/* AD94F8 80062358 00084880 */  sll   $t1, $t0, 2
/* AD94FC 8006235C 02695021 */  addu  $t2, $s3, $t1
/* AD9500 80062360 8D590000 */  lw    $t9, ($t2)
/* AD9504 80062364 0320F809 */  jalr  $t9
/* AD9508 80062368 00000000 */  nop   
/* AD950C 8006236C 8E0300CC */  lw    $v1, 0xcc($s0)
/* AD9510 80062370 00035880 */  sll   $t3, $v1, 2
/* AD9514 80062374 01701021 */  addu  $v0, $t3, $s0
.L80062378:
/* AD9518 80062378 26310004 */  addiu $s1, $s1, 4
/* AD951C 8006237C 0222082B */  sltu  $at, $s1, $v0
/* AD9520 80062380 5420FFE6 */  bnezl $at, .L8006231C
/* AD9524 80062384 8E2600D0 */   lw    $a2, 0xd0($s1)
.L80062388:
/* AD9528 80062388 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD952C 8006238C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD9530 80062390 8FB10018 */  lw    $s1, 0x18($sp)
/* AD9534 80062394 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD9538 80062398 8FB30020 */  lw    $s3, 0x20($sp)
/* AD953C 8006239C 03E00008 */  jr    $ra
/* AD9540 800623A0 27BD0028 */   addiu $sp, $sp, 0x28

/* AD9544 800623A4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD9548 800623A8 AFBF0034 */  sw    $ra, 0x34($sp)
/* AD954C 800623AC AFB70030 */  sw    $s7, 0x30($sp)
/* AD9550 800623B0 AFB6002C */  sw    $s6, 0x2c($sp)
/* AD9554 800623B4 AFB50028 */  sw    $s5, 0x28($sp)
/* AD9558 800623B8 AFB40024 */  sw    $s4, 0x24($sp)
/* AD955C 800623BC AFB30020 */  sw    $s3, 0x20($sp)
/* AD9560 800623C0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD9564 800623C4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD9568 800623C8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD956C 800623CC AFA40038 */  sw    $a0, 0x38($sp)
/* AD9570 800623D0 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD9574 800623D4 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD9578 800623D8 00C09825 */  move  $s3, $a2
/* AD957C 800623DC 00E0A025 */  move  $s4, $a3
/* AD9580 800623E0 19C0002A */  blez  $t6, .L8006248C
/* AD9584 800623E4 00C08825 */   move  $s1, $a2
/* AD9588 800623E8 3C168016 */  lui   $s6, %hi(D_8015E61C) # $s6, 0x8016
/* AD958C 800623EC 3C128016 */  lui   $s2, %hi(D_8015E610) # $s2, 0x8016
/* AD9590 800623F0 2652E610 */  addiu $s2, %lo(D_8015E610) # addiu $s2, $s2, -0x19f0
/* AD9594 800623F4 26D6E61C */  addiu $s6, %lo(D_8015E61C) # addiu $s6, $s6, -0x19e4
/* AD9598 800623F8 00008025 */  move  $s0, $zero
/* AD959C 800623FC 24170001 */  li    $s7, 1
/* AD95A0 80062400 8FB50048 */  lw    $s5, 0x48($sp)
/* AD95A4 80062404 8E6F001C */  lw    $t7, 0x1c($s3)
.L80062408:
/* AD95A8 80062408 01F01021 */  addu  $v0, $t7, $s0
/* AD95AC 8006240C 90580017 */  lbu   $t8, 0x17($v0)
/* AD95B0 80062410 33190001 */  andi  $t9, $t8, 1
/* AD95B4 80062414 57200005 */  bnezl $t9, .L8006242C
/* AD95B8 80062418 8E890000 */   lw    $t1, ($s4)
/* AD95BC 8006241C 8E220018 */  lw    $v0, 0x18($s1)
/* AD95C0 80062420 10000016 */  b     .L8006247C
/* AD95C4 80062424 00021980 */   sll   $v1, $v0, 6
/* AD95C8 80062428 8E890000 */  lw    $t1, ($s4)
.L8006242C:
/* AD95CC 8006242C 24440030 */  addiu $a0, $v0, 0x30
/* AD95D0 80062430 02402825 */  move  $a1, $s2
/* AD95D4 80062434 AE490000 */  sw    $t1, ($s2)
/* AD95D8 80062438 8E880004 */  lw    $t0, 4($s4)
/* AD95DC 8006243C AE480004 */  sw    $t0, 4($s2)
/* AD95E0 80062440 8E890008 */  lw    $t1, 8($s4)
/* AD95E4 80062444 AE490008 */  sw    $t1, 8($s2)
/* AD95E8 80062448 8EAB0000 */  lw    $t3, ($s5)
/* AD95EC 8006244C AECB0000 */  sw    $t3, ($s6)
/* AD95F0 80062450 8EAA0004 */  lw    $t2, 4($s5)
/* AD95F4 80062454 AECA0004 */  sw    $t2, 4($s6)
/* AD95F8 80062458 8EAB0008 */  lw    $t3, 8($s5)
/* AD95FC 8006245C 0C033980 */  jal   func_800CE600
/* AD9600 80062460 AECB0008 */   sw    $t3, 8($s6)
/* AD9604 80062464 54570004 */  bnel  $v0, $s7, .L80062478
/* AD9608 80062468 8E220018 */   lw    $v0, 0x18($s1)
/* AD960C 8006246C 10000008 */  b     .L80062490
/* AD9610 80062470 24020001 */   li    $v0, 1
/* AD9614 80062474 8E220018 */  lw    $v0, 0x18($s1)
.L80062478:
/* AD9618 80062478 00021980 */  sll   $v1, $v0, 6
.L8006247C:
/* AD961C 8006247C 26100040 */  addiu $s0, $s0, 0x40
/* AD9620 80062480 0203082A */  slt   $at, $s0, $v1
/* AD9624 80062484 5420FFE0 */  bnezl $at, .L80062408
/* AD9628 80062488 8E6F001C */   lw    $t7, 0x1c($s3)
.L8006248C:
/* AD962C 8006248C 00001025 */  move  $v0, $zero
.L80062490:
/* AD9630 80062490 8FBF0034 */  lw    $ra, 0x34($sp)
/* AD9634 80062494 8FB00014 */  lw    $s0, 0x14($sp)
/* AD9638 80062498 8FB10018 */  lw    $s1, 0x18($sp)
/* AD963C 8006249C 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD9640 800624A0 8FB30020 */  lw    $s3, 0x20($sp)
/* AD9644 800624A4 8FB40024 */  lw    $s4, 0x24($sp)
/* AD9648 800624A8 8FB50028 */  lw    $s5, 0x28($sp)
/* AD964C 800624AC 8FB6002C */  lw    $s6, 0x2c($sp)
/* AD9650 800624B0 8FB70030 */  lw    $s7, 0x30($sp)
/* AD9654 800624B4 03E00008 */  jr    $ra
/* AD9658 800624B8 27BD0038 */   addiu $sp, $sp, 0x38

/* AD965C 800624BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9660 800624C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9664 800624C4 AFA40020 */  sw    $a0, 0x20($sp)
/* AD9668 800624C8 AFA50024 */  sw    $a1, 0x24($sp)
/* AD966C 800624CC AFA60028 */  sw    $a2, 0x28($sp)
/* AD9670 800624D0 90CF002F */  lbu   $t7, 0x2f($a2)
/* AD9674 800624D4 8FA40028 */  lw    $a0, 0x28($sp)
/* AD9678 800624D8 00E02825 */  move  $a1, $a3
/* AD967C 800624DC 31F80001 */  andi  $t8, $t7, 1
/* AD9680 800624E0 17000003 */  bnez  $t8, .L800624F0
/* AD9684 800624E4 24840040 */   addiu $a0, $a0, 0x40
/* AD9688 800624E8 1000000D */  b     .L80062520
/* AD968C 800624EC 00001025 */   move  $v0, $zero
.L800624F0:
/* AD9690 800624F0 3C198016 */  lui   $t9, %hi(D_8015E638) # $t9, 0x8016
/* AD9694 800624F4 2739E638 */  addiu $t9, %lo(D_8015E638) # addiu $t9, $t9, -0x19c8
/* AD9698 800624F8 3C078016 */  lui   $a3, %hi(D_8015E628) # $a3, 0x8016
/* AD969C 800624FC 24E7E628 */  addiu $a3, %lo(D_8015E628) # addiu $a3, $a3, -0x19d8
/* AD96A0 80062500 AFB90010 */  sw    $t9, 0x10($sp)
/* AD96A4 80062504 0C033B83 */  jal   func_800CEE0C
/* AD96A8 80062508 8FA60030 */   lw    $a2, 0x30($sp)
/* AD96AC 8006250C 50400004 */  beql  $v0, $zero, .L80062520
/* AD96B0 80062510 00001025 */   move  $v0, $zero
/* AD96B4 80062514 10000002 */  b     .L80062520
/* AD96B8 80062518 24020001 */   li    $v0, 1
/* AD96BC 8006251C 00001025 */  move  $v0, $zero
.L80062520:
/* AD96C0 80062520 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD96C4 80062524 27BD0020 */  addiu $sp, $sp, 0x20
/* AD96C8 80062528 03E00008 */  jr    $ra
/* AD96CC 8006252C 00000000 */   nop   

glabel func_80062530
/* AD96D0 80062530 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AD96D4 80062534 AFBF0044 */  sw    $ra, 0x44($sp)
/* AD96D8 80062538 AFBE0040 */  sw    $fp, 0x40($sp)
/* AD96DC 8006253C AFB7003C */  sw    $s7, 0x3c($sp)
/* AD96E0 80062540 AFB60038 */  sw    $s6, 0x38($sp)
/* AD96E4 80062544 AFB50034 */  sw    $s5, 0x34($sp)
/* AD96E8 80062548 AFB40030 */  sw    $s4, 0x30($sp)
/* AD96EC 8006254C AFB3002C */  sw    $s3, 0x2c($sp)
/* AD96F0 80062550 AFB20028 */  sw    $s2, 0x28($sp)
/* AD96F4 80062554 AFB10024 */  sw    $s1, 0x24($sp)
/* AD96F8 80062558 AFB00020 */  sw    $s0, 0x20($sp)
/* AD96FC 8006255C 8CAE01C0 */  lw    $t6, 0x1c0($a1)
/* AD9700 80062560 24B101C4 */  addiu $s1, $a1, 0x1c4
/* AD9704 80062564 00A09025 */  move  $s2, $a1
/* AD9708 80062568 000E7880 */  sll   $t7, $t6, 2
/* AD970C 8006256C 00AFC021 */  addu  $t8, $a1, $t7
/* AD9710 80062570 271901C4 */  addiu $t9, $t8, 0x1c4
/* AD9714 80062574 0239082B */  sltu  $at, $s1, $t9
/* AD9718 80062578 0080B025 */  move  $s6, $a0
/* AD971C 8006257C 00C0B825 */  move  $s7, $a2
/* AD9720 80062580 00E0F025 */  move  $fp, $a3
/* AD9724 80062584 10200034 */  beqz  $at, .L80062658
/* AD9728 80062588 0000A025 */   move  $s4, $zero
/* AD972C 8006258C 8FB50058 */  lw    $s5, 0x58($sp)
/* AD9730 80062590 24130001 */  li    $s3, 1
/* AD9734 80062594 8FB0005C */  lw    $s0, 0x5c($sp)
.L80062598:
/* AD9738 80062598 0C0186FD */  jal   func_80061BF4
/* AD973C 8006259C 8E240000 */   lw    $a0, ($s1)
/* AD9740 800625A0 10530025 */  beq   $v0, $s3, .L80062638
/* AD9744 800625A4 00002825 */   move  $a1, $zero
/* AD9748 800625A8 1A00000C */  blez  $s0, .L800625DC
/* AD974C 800625AC 00001025 */   move  $v0, $zero
/* AD9750 800625B0 8E280000 */  lw    $t0, ($s1)
/* AD9754 800625B4 02A01825 */  move  $v1, $s5
/* AD9758 800625B8 8D040000 */  lw    $a0, ($t0)
.L800625BC:
/* AD975C 800625BC 8C690000 */  lw    $t1, ($v1)
/* AD9760 800625C0 24420001 */  addiu $v0, $v0, 1
/* AD9764 800625C4 14890003 */  bne   $a0, $t1, .L800625D4
/* AD9768 800625C8 00000000 */   nop   
/* AD976C 800625CC 10000003 */  b     .L800625DC
/* AD9770 800625D0 02602825 */   move  $a1, $s3
.L800625D4:
/* AD9774 800625D4 1450FFF9 */  bne   $v0, $s0, .L800625BC
/* AD9778 800625D8 24630004 */   addiu $v1, $v1, 4
.L800625DC:
/* AD977C 800625DC 50B30017 */  beql  $a1, $s3, .L8006263C
/* AD9780 800625E0 8E4B01C0 */   lw    $t3, 0x1c0($s2)
/* AD9784 800625E4 8E260000 */  lw    $a2, ($s1)
/* AD9788 800625E8 3C028012 */  lui   $v0, 0x8012
/* AD978C 800625EC 02C02025 */  move  $a0, $s6
/* AD9790 800625F0 90C30015 */  lbu   $v1, 0x15($a2)
/* AD9794 800625F4 02402825 */  move  $a1, $s2
/* AD9798 800625F8 02E03825 */  move  $a3, $s7
/* AD979C 800625FC 00035080 */  sll   $t2, $v1, 2
/* AD97A0 80062600 004A1021 */  addu  $v0, $v0, $t2
/* AD97A4 80062604 8C42E018 */  lw    $v0, -0x1fe8($v0)
/* AD97A8 80062608 14400007 */  bnez  $v0, .L80062628
/* AD97AC 8006260C 00000000 */   nop   
/* AD97B0 80062610 3C048014 */  lui   $a0, %hi(D_8013ACB8) # $a0, 0x8014
/* AD97B4 80062614 2484ACB8 */  addiu $a0, %lo(D_8013ACB8) # addiu $a0, $a0, -0x5348
/* AD97B8 80062618 0C00084C */  jal   DebugMessage
/* AD97BC 8006261C 00602825 */   move  $a1, $v1
/* AD97C0 80062620 10000006 */  b     .L8006263C
/* AD97C4 80062624 8E4B01C0 */   lw    $t3, 0x1c0($s2)
.L80062628:
/* AD97C8 80062628 0040F809 */  jalr  $v0
/* AD97CC 8006262C AFBE0010 */  sw    $fp, 0x10($sp)
/* AD97D0 80062630 14400009 */  bnez  $v0, .L80062658
/* AD97D4 80062634 0040A025 */   move  $s4, $v0
.L80062638:
/* AD97D8 80062638 8E4B01C0 */  lw    $t3, 0x1c0($s2)
.L8006263C:
/* AD97DC 8006263C 26310004 */  addiu $s1, $s1, 4
/* AD97E0 80062640 000B6080 */  sll   $t4, $t3, 2
/* AD97E4 80062644 024C6821 */  addu  $t5, $s2, $t4
/* AD97E8 80062648 25AE01C4 */  addiu $t6, $t5, 0x1c4
/* AD97EC 8006264C 022E082B */  sltu  $at, $s1, $t6
/* AD97F0 80062650 1420FFD1 */  bnez  $at, .L80062598
/* AD97F4 80062654 00000000 */   nop   
.L80062658:
/* AD97F8 80062658 8FBF0044 */  lw    $ra, 0x44($sp)
/* AD97FC 8006265C 02801025 */  move  $v0, $s4
/* AD9800 80062660 8FB40030 */  lw    $s4, 0x30($sp)
/* AD9804 80062664 8FB00020 */  lw    $s0, 0x20($sp)
/* AD9808 80062668 8FB10024 */  lw    $s1, 0x24($sp)
/* AD980C 8006266C 8FB20028 */  lw    $s2, 0x28($sp)
/* AD9810 80062670 8FB3002C */  lw    $s3, 0x2c($sp)
/* AD9814 80062674 8FB50034 */  lw    $s5, 0x34($sp)
/* AD9818 80062678 8FB60038 */  lw    $s6, 0x38($sp)
/* AD981C 8006267C 8FB7003C */  lw    $s7, 0x3c($sp)
/* AD9820 80062680 8FBE0040 */  lw    $fp, 0x40($sp)
/* AD9824 80062684 03E00008 */  jr    $ra
/* AD9828 80062688 27BD0048 */   addiu $sp, $sp, 0x48

/* AD982C 8006268C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9830 80062690 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9834 80062694 AFA00010 */  sw    $zero, 0x10($sp)
/* AD9838 80062698 0C01894C */  jal   func_80062530
/* AD983C 8006269C AFA00014 */   sw    $zero, 0x14($sp)
/* AD9840 800626A0 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9844 800626A4 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9848 800626A8 03E00008 */  jr    $ra
/* AD984C 800626AC 00000000 */   nop   

glabel func_800626B0
/* AD9850 800626B0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9854 800626B4 8FAE0030 */  lw    $t6, 0x30($sp)
/* AD9858 800626B8 8FAF0034 */  lw    $t7, 0x34($sp)
/* AD985C 800626BC AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9860 800626C0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AD9864 800626C4 0C01894C */  jal   func_80062530
/* AD9868 800626C8 AFAF0014 */   sw    $t7, 0x14($sp)
/* AD986C 800626CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9870 800626D0 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9874 800626D4 03E00008 */  jr    $ra
/* AD9878 800626D8 00000000 */   nop   

glabel func_800626DC
/* AD987C 800626DC C4840024 */  lwc1  $f4, 0x24($a0)
/* AD9880 800626E0 4600218D */  trunc.w.s $f6, $f4
/* AD9884 800626E4 440F3000 */  mfc1  $t7, $f6
/* AD9888 800626E8 00000000 */  nop   
/* AD988C 800626EC A4AF0046 */  sh    $t7, 0x46($a1)
/* AD9890 800626F0 C4880028 */  lwc1  $f8, 0x28($a0)
/* AD9894 800626F4 4600428D */  trunc.w.s $f10, $f8
/* AD9898 800626F8 44195000 */  mfc1  $t9, $f10
/* AD989C 800626FC 00000000 */  nop   
/* AD98A0 80062700 A4B90048 */  sh    $t9, 0x48($a1)
/* AD98A4 80062704 C490002C */  lwc1  $f16, 0x2c($a0)
/* AD98A8 80062708 4600848D */  trunc.w.s $f18, $f16
/* AD98AC 8006270C 44099000 */  mfc1  $t1, $f18
/* AD98B0 80062710 03E00008 */  jr    $ra
/* AD98B4 80062714 A4A9004A */   sh    $t1, 0x4a($a1)

/* AD98B8 80062718 84AE0000 */  lh    $t6, ($a1)
/* AD98BC 8006271C A48E0046 */  sh    $t6, 0x46($a0)
/* AD98C0 80062720 84AF0002 */  lh    $t7, 2($a1)
/* AD98C4 80062724 A48F0048 */  sh    $t7, 0x48($a0)
/* AD98C8 80062728 84B80004 */  lh    $t8, 4($a1)
/* AD98CC 8006272C 03E00008 */  jr    $ra
/* AD98D0 80062730 A498004A */   sh    $t8, 0x4a($a0)

glabel func_80062734
/* AD98D4 80062734 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD98D8 80062738 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD98DC 8006273C AFA40020 */  sw    $a0, 0x20($sp)
/* AD98E0 80062740 AFA50024 */  sw    $a1, 0x24($sp)
/* AD98E4 80062744 AFA60028 */  sw    $a2, 0x28($sp)
/* AD98E8 80062748 00E02825 */  move  $a1, $a3
/* AD98EC 8006274C 0C01DF90 */  jal   func_80077E40
/* AD98F0 80062750 24840058 */   addiu $a0, $a0, 0x58
/* AD98F4 80062754 8FA40020 */  lw    $a0, 0x20($sp)
/* AD98F8 80062758 8FA50030 */  lw    $a1, 0x30($sp)
/* AD98FC 8006275C 0C01DF90 */  jal   func_80077E40
/* AD9900 80062760 24840064 */   addiu $a0, $a0, 0x64
/* AD9904 80062764 8FA40020 */  lw    $a0, 0x20($sp)
/* AD9908 80062768 8FA50024 */  lw    $a1, 0x24($sp)
/* AD990C 8006276C 24840040 */  addiu $a0, $a0, 0x40
/* AD9910 80062770 0C01DF90 */  jal   func_80077E40
/* AD9914 80062774 AFA4001C */   sw    $a0, 0x1c($sp)
/* AD9918 80062778 8FA40020 */  lw    $a0, 0x20($sp)
/* AD991C 8006277C 8FA50028 */  lw    $a1, 0x28($sp)
/* AD9920 80062780 0C01DF90 */  jal   func_80077E40
/* AD9924 80062784 2484004C */   addiu $a0, $a0, 0x4c
/* AD9928 80062788 0C0173B7 */  jal   func_8005CEDC
/* AD992C 8006278C 8FA4001C */   lw    $a0, 0x1c($sp)
/* AD9930 80062790 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9934 80062794 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9938 80062798 03E00008 */  jr    $ra
/* AD993C 8006279C 00000000 */   nop   

/* AD9940 800627A0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AD9944 800627A4 0005C880 */  sll   $t9, $a1, 2
/* AD9948 800627A8 AFBF002C */  sw    $ra, 0x2c($sp)
/* AD994C 800627AC AFB00028 */  sw    $s0, 0x28($sp)
/* AD9950 800627B0 AFA40048 */  sw    $a0, 0x48($sp)
/* AD9954 800627B4 AFA5004C */  sw    $a1, 0x4c($sp)
/* AD9958 800627B8 AFA60050 */  sw    $a2, 0x50($sp)
/* AD995C 800627BC AFA70054 */  sw    $a3, 0x54($sp)
/* AD9960 800627C0 0325C823 */  subu  $t9, $t9, $a1
/* AD9964 800627C4 8C8F001C */  lw    $t7, 0x1c($a0)
/* AD9968 800627C8 0019C8C0 */  sll   $t9, $t9, 3
/* AD996C 800627CC 0325C823 */  subu  $t9, $t9, $a1
/* AD9970 800627D0 0019C880 */  sll   $t9, $t9, 2
/* AD9974 800627D4 01F98021 */  addu  $s0, $t7, $t9
/* AD9978 800627D8 26040028 */  addiu $a0, $s0, 0x28
/* AD997C 800627DC 0C01DF90 */  jal   func_80077E40
/* AD9980 800627E0 00C02825 */   move  $a1, $a2
/* AD9984 800627E4 26040034 */  addiu $a0, $s0, 0x34
/* AD9988 800627E8 0C01DF90 */  jal   func_80077E40
/* AD998C 800627EC 8FA50054 */   lw    $a1, 0x54($sp)
/* AD9990 800627F0 26040040 */  addiu $a0, $s0, 0x40
/* AD9994 800627F4 0C01DF90 */  jal   func_80077E40
/* AD9998 800627F8 8FA50058 */   lw    $a1, 0x58($sp)
/* AD999C 800627FC 27A8003C */  addiu $t0, $sp, 0x3c
/* AD99A0 80062800 27A90038 */  addiu $t1, $sp, 0x38
/* AD99A4 80062804 27AA0034 */  addiu $t2, $sp, 0x34
/* AD99A8 80062808 AFAA0018 */  sw    $t2, 0x18($sp)
/* AD99AC 8006280C AFA90014 */  sw    $t1, 0x14($sp)
/* AD99B0 80062810 AFA80010 */  sw    $t0, 0x10($sp)
/* AD99B4 80062814 8FA40050 */  lw    $a0, 0x50($sp)
/* AD99B8 80062818 8FA50054 */  lw    $a1, 0x54($sp)
/* AD99BC 8006281C 8FA60058 */  lw    $a2, 0x58($sp)
/* AD99C0 80062820 0C03322D */  jal   func_800CC8B4
/* AD99C4 80062824 27A70040 */   addiu $a3, $sp, 0x40
/* AD99C8 80062828 C7A40040 */  lwc1  $f4, 0x40($sp)
/* AD99CC 8006282C E604004C */  swc1  $f4, 0x4c($s0)
/* AD99D0 80062830 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* AD99D4 80062834 E6060050 */  swc1  $f6, 0x50($s0)
/* AD99D8 80062838 C7A80038 */  lwc1  $f8, 0x38($sp)
/* AD99DC 8006283C E6080054 */  swc1  $f8, 0x54($s0)
/* AD99E0 80062840 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* AD99E4 80062844 E60A0058 */  swc1  $f10, 0x58($s0)
/* AD99E8 80062848 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD99EC 8006284C 8FB00028 */  lw    $s0, 0x28($sp)
/* AD99F0 80062850 27BD0048 */  addiu $sp, $sp, 0x48
/* AD99F4 80062854 03E00008 */  jr    $ra
/* AD99F8 80062858 00000000 */   nop   

/* AD99FC 8006285C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD9A00 80062860 0006C880 */  sll   $t9, $a2, 2
/* AD9A04 80062864 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD9A08 80062868 AFA5001C */  sw    $a1, 0x1c($sp)
/* AD9A0C 8006286C AFA60020 */  sw    $a2, 0x20($sp)
/* AD9A10 80062870 0326C823 */  subu  $t9, $t9, $a2
/* AD9A14 80062874 8CAF001C */  lw    $t7, 0x1c($a1)
/* AD9A18 80062878 0019C8C0 */  sll   $t9, $t9, 3
/* AD9A1C 8006287C 0326C823 */  subu  $t9, $t9, $a2
/* AD9A20 80062880 0019C880 */  sll   $t9, $t9, 2
/* AD9A24 80062884 01F91021 */  addu  $v0, $t7, $t9
/* AD9A28 80062888 24450028 */  addiu $a1, $v0, 0x28
/* AD9A2C 8006288C 0C017182 */  jal   func_8005C608
/* AD9A30 80062890 00E03025 */   move  $a2, $a3
/* AD9A34 80062894 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9A38 80062898 27BD0018 */  addiu $sp, $sp, 0x18
/* AD9A3C 8006289C 03E00008 */  jr    $ra
/* AD9A40 800628A0 00000000 */   nop   

/* AD9A44 800628A4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD9A48 800628A8 AFBF0034 */  sw    $ra, 0x34($sp)
/* AD9A4C 800628AC AFB60030 */  sw    $s6, 0x30($sp)
/* AD9A50 800628B0 AFB5002C */  sw    $s5, 0x2c($sp)
/* AD9A54 800628B4 AFB40028 */  sw    $s4, 0x28($sp)
/* AD9A58 800628B8 AFB30024 */  sw    $s3, 0x24($sp)
/* AD9A5C 800628BC AFB20020 */  sw    $s2, 0x20($sp)
/* AD9A60 800628C0 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD9A64 800628C4 AFB00018 */  sw    $s0, 0x18($sp)
/* AD9A68 800628C8 8CA20018 */  lw    $v0, 0x18($a1)
/* AD9A6C 800628CC 00A09025 */  move  $s2, $a1
/* AD9A70 800628D0 0080B025 */  move  $s6, $a0
/* AD9A74 800628D4 1840004A */  blez  $v0, .L80062A00
/* AD9A78 800628D8 00009825 */   move  $s3, $zero
/* AD9A7C 800628DC 3C158016 */  lui   $s5, %hi(D_8015CF00) # $s5, 0x8016
/* AD9A80 800628E0 3C148016 */  lui   $s4, %hi(D_8015E648) # $s4, 0x8016
/* AD9A84 800628E4 2694E648 */  addiu $s4, %lo(D_8015E648) # addiu $s4, $s4, -0x19b8
/* AD9A88 800628E8 26B5CF00 */  addiu $s5, %lo(D_8015CF00) # addiu $s5, $s5, -0x3100
/* AD9A8C 800628EC 00008025 */  move  $s0, $zero
.L800628F0:
/* AD9A90 800628F0 8E4E001C */  lw    $t6, 0x1c($s2)
/* AD9A94 800628F4 01D08821 */  addu  $s1, $t6, $s0
/* AD9A98 800628F8 922F003C */  lbu   $t7, 0x3c($s1)
/* AD9A9C 800628FC 56CF003D */  bnel  $s6, $t7, .L800629F4
/* AD9AA0 80062900 26730001 */   addiu $s3, $s3, 1
/* AD9AA4 80062904 86380028 */  lh    $t8, 0x28($s1)
/* AD9AA8 80062908 3C018016 */  li    $at, 0x80160000 # 0.000000
/* AD9AAC 8006290C 02802025 */  move  $a0, $s4
/* AD9AB0 80062910 44982000 */  mtc1  $t8, $f4
/* AD9AB4 80062914 02A02825 */  move  $a1, $s5
/* AD9AB8 80062918 468021A0 */  cvt.s.w $f6, $f4
/* AD9ABC 8006291C E426E648 */  swc1  $f6, -0x19b8($at)
/* AD9AC0 80062920 8E59001C */  lw    $t9, 0x1c($s2)
/* AD9AC4 80062924 03304021 */  addu  $t0, $t9, $s0
/* AD9AC8 80062928 8509002A */  lh    $t1, 0x2a($t0)
/* AD9ACC 8006292C 44894000 */  mtc1  $t1, $f8
/* AD9AD0 80062930 00000000 */  nop   
/* AD9AD4 80062934 468042A0 */  cvt.s.w $f10, $f8
/* AD9AD8 80062938 E42AE64C */  swc1  $f10, -0x19b4($at)
/* AD9ADC 8006293C 8E4A001C */  lw    $t2, 0x1c($s2)
/* AD9AE0 80062940 3C018016 */  lui   $at, 0x8016
/* AD9AE4 80062944 01505821 */  addu  $t3, $t2, $s0
/* AD9AE8 80062948 856C002C */  lh    $t4, 0x2c($t3)
/* AD9AEC 8006294C 448C8000 */  mtc1  $t4, $f16
/* AD9AF0 80062950 00000000 */  nop   
/* AD9AF4 80062954 468084A0 */  cvt.s.w $f18, $f16
/* AD9AF8 80062958 0C0346BD */  jal   func_800D1AF4
/* AD9AFC 8006295C E432E650 */   swc1  $f18, -0x19b0($at)
/* AD9B00 80062960 3C018016 */  lui   $at, 0x8016
/* AD9B04 80062964 C424CF00 */  lwc1  $f4, -0x3100($at)
/* AD9B08 80062968 8E4F001C */  lw    $t7, 0x1c($s2)
/* AD9B0C 8006296C 4600218D */  trunc.w.s $f6, $f4
/* AD9B10 80062970 01F0C021 */  addu  $t8, $t7, $s0
/* AD9B14 80062974 440E3000 */  mfc1  $t6, $f6
/* AD9B18 80062978 00000000 */  nop   
/* AD9B1C 8006297C A70E0030 */  sh    $t6, 0x30($t8)
/* AD9B20 80062980 C428CF04 */  lwc1  $f8, -0x30fc($at)
/* AD9B24 80062984 8E49001C */  lw    $t1, 0x1c($s2)
/* AD9B28 80062988 3C018016 */  lui   $at, 0x8016
/* AD9B2C 8006298C 4600428D */  trunc.w.s $f10, $f8
/* AD9B30 80062990 01305021 */  addu  $t2, $t1, $s0
/* AD9B34 80062994 44085000 */  mfc1  $t0, $f10
/* AD9B38 80062998 00000000 */  nop   
/* AD9B3C 8006299C A5480032 */  sh    $t0, 0x32($t2)
/* AD9B40 800629A0 C430CF08 */  lwc1  $f16, -0x30f8($at)
/* AD9B44 800629A4 8E4D001C */  lw    $t5, 0x1c($s2)
/* AD9B48 800629A8 4600848D */  trunc.w.s $f18, $f16
/* AD9B4C 800629AC 01B07821 */  addu  $t7, $t5, $s0
/* AD9B50 800629B0 440C9000 */  mfc1  $t4, $f18
/* AD9B54 800629B4 00000000 */  nop   
/* AD9B58 800629B8 A5EC0034 */  sh    $t4, 0x34($t7)
/* AD9B5C 800629BC 8E4E001C */  lw    $t6, 0x1c($s2)
/* AD9B60 800629C0 01D08821 */  addu  $s1, $t6, $s0
/* AD9B64 800629C4 8638002E */  lh    $t8, 0x2e($s1)
/* AD9B68 800629C8 C6240038 */  lwc1  $f4, 0x38($s1)
/* AD9B6C 800629CC 44983000 */  mtc1  $t8, $f6
/* AD9B70 800629D0 00000000 */  nop   
/* AD9B74 800629D4 46803220 */  cvt.s.w $f8, $f6
/* AD9B78 800629D8 46082282 */  mul.s $f10, $f4, $f8
/* AD9B7C 800629DC 4600540D */  trunc.w.s $f16, $f10
/* AD9B80 800629E0 44098000 */  mfc1  $t1, $f16
/* AD9B84 800629E4 00000000 */  nop   
/* AD9B88 800629E8 A6290036 */  sh    $t1, 0x36($s1)
/* AD9B8C 800629EC 8E420018 */  lw    $v0, 0x18($s2)
/* AD9B90 800629F0 26730001 */  addiu $s3, $s3, 1
.L800629F4:
/* AD9B94 800629F4 0262082A */  slt   $at, $s3, $v0
/* AD9B98 800629F8 1420FFBD */  bnez  $at, .L800628F0
/* AD9B9C 800629FC 26100040 */   addiu $s0, $s0, 0x40
.L80062A00:
/* AD9BA0 80062A00 8FBF0034 */  lw    $ra, 0x34($sp)
/* AD9BA4 80062A04 8FB00018 */  lw    $s0, 0x18($sp)
/* AD9BA8 80062A08 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD9BAC 80062A0C 8FB20020 */  lw    $s2, 0x20($sp)
/* AD9BB0 80062A10 8FB30024 */  lw    $s3, 0x24($sp)
/* AD9BB4 80062A14 8FB40028 */  lw    $s4, 0x28($sp)
/* AD9BB8 80062A18 8FB5002C */  lw    $s5, 0x2c($sp)
/* AD9BBC 80062A1C 8FB60030 */  lw    $s6, 0x30($sp)
/* AD9BC0 80062A20 03E00008 */  jr    $ra
/* AD9BC4 80062A24 27BD0038 */   addiu $sp, $sp, 0x38

glabel func_80062A28
/* AD9BC8 80062A28 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9BCC 80062A2C AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9BD0 80062A30 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD9BD4 80062A34 C4A40000 */  lwc1  $f4, ($a1)
/* AD9BD8 80062A38 3C018016 */  lui   $at, %hi(D_8015CF14) # $at, 0x8016
/* AD9BDC 80062A3C 240F0005 */  li    $t7, 5
/* AD9BE0 80062A40 4600218D */  trunc.w.s $f6, $f4
/* AD9BE4 80062A44 3C028016 */  lui   $v0, %hi(D_8015CF10) # $v0, 0x8016
/* AD9BE8 80062A48 2442CF10 */  addiu $v0, %lo(D_8015CF10) # addiu $v0, $v0, -0x30f0
/* AD9BEC 80062A4C 24030080 */  li    $v1, 128
/* AD9BF0 80062A50 44183000 */  mfc1  $t8, $f6
/* AD9BF4 80062A54 24080040 */  li    $t0, 64
/* AD9BF8 80062A58 240900FF */  li    $t1, 255
/* AD9BFC 80062A5C A438CF10 */  sh    $t8, %lo(D_8015CF10)($at)
/* AD9C00 80062A60 C4A80004 */  lwc1  $f8, 4($a1)
/* AD9C04 80062A64 24180005 */  li    $t8, 5
/* AD9C08 80062A68 240A0020 */  li    $t2, 32
/* AD9C0C 80062A6C 4600428D */  trunc.w.s $f10, $f8
/* AD9C10 80062A70 24190010 */  li    $t9, 16
/* AD9C14 80062A74 00003025 */  move  $a2, $zero
/* AD9C18 80062A78 00003825 */  move  $a3, $zero
/* AD9C1C 80062A7C 440B5000 */  mfc1  $t3, $f10
/* AD9C20 80062A80 00000000 */  nop   
/* AD9C24 80062A84 A42BCF12 */  sh    $t3, %lo(D_8015CF12)($at)
/* AD9C28 80062A88 C4B00008 */  lwc1  $f16, 8($a1)
/* AD9C2C 80062A8C 240B0001 */  li    $t3, 1
/* AD9C30 80062A90 AFAB0010 */  sw    $t3, 0x10($sp)
/* AD9C34 80062A94 4600848D */  trunc.w.s $f18, $f16
/* AD9C38 80062A98 AFA20014 */  sw    $v0, 0x14($sp)
/* AD9C3C 80062A9C 27A50024 */  addiu $a1, $sp, 0x24
/* AD9C40 80062AA0 440D9000 */  mfc1  $t5, $f18
/* AD9C44 80062AA4 00000000 */  nop   
/* AD9C48 80062AA8 A42DCF14 */  sh    $t5, %lo(D_8015CF14)($at)
/* AD9C4C 80062AAC 3C018016 */  lui   $at, %hi(D_8015D3A4) # $at, 0x8016
/* AD9C50 80062AB0 AC2FD3A4 */  sw    $t7, %lo(D_8015D3A4)($at)
/* AD9C54 80062AB4 3C018016 */  lui   $at, %hi(D_8015D3A8) # $at, 0x8016
/* AD9C58 80062AB8 AC38D3A8 */  sw    $t8, %lo(D_8015D3A8)($at)
/* AD9C5C 80062ABC A043049C */  sb    $v1, 0x49c($v0)
/* AD9C60 80062AC0 A040049D */  sb    $zero, 0x49d($v0)
/* AD9C64 80062AC4 A048049E */  sb    $t0, 0x49e($v0)
/* AD9C68 80062AC8 A049049F */  sb    $t1, 0x49f($v0)
/* AD9C6C 80062ACC A04304A0 */  sb    $v1, 0x4a0($v0)
/* AD9C70 80062AD0 A04004A1 */  sb    $zero, 0x4a1($v0)
/* AD9C74 80062AD4 A04804A2 */  sb    $t0, 0x4a2($v0)
/* AD9C78 80062AD8 A04904A3 */  sb    $t1, 0x4a3($v0)
/* AD9C7C 80062ADC A04904A4 */  sb    $t1, 0x4a4($v0)
/* AD9C80 80062AE0 A04304A5 */  sb    $v1, 0x4a5($v0)
/* AD9C84 80062AE4 A04004A6 */  sb    $zero, 0x4a6($v0)
/* AD9C88 80062AE8 A04904A7 */  sb    $t1, 0x4a7($v0)
/* AD9C8C 80062AEC A04904A8 */  sb    $t1, 0x4a8($v0)
/* AD9C90 80062AF0 A04304A9 */  sb    $v1, 0x4a9($v0)
/* AD9C94 80062AF4 A04004AA */  sb    $zero, 0x4aa($v0)
/* AD9C98 80062AF8 A04904AB */  sb    $t1, 0x4ab($v0)
/* AD9C9C 80062AFC A04804AC */  sb    $t0, 0x4ac($v0)
/* AD9CA0 80062B00 A04004AD */  sb    $zero, 0x4ad($v0)
/* AD9CA4 80062B04 A04A04AE */  sb    $t2, 0x4ae($v0)
/* AD9CA8 80062B08 A04004AF */  sb    $zero, 0x4af($v0)
/* AD9CAC 80062B0C A04804B0 */  sb    $t0, 0x4b0($v0)
/* AD9CB0 80062B10 A04004B1 */  sb    $zero, 0x4b1($v0)
/* AD9CB4 80062B14 A04A04B2 */  sb    $t2, 0x4b2($v0)
/* AD9CB8 80062B18 A04004B3 */  sb    $zero, 0x4b3($v0)
/* AD9CBC 80062B1C A04304B4 */  sb    $v1, 0x4b4($v0)
/* AD9CC0 80062B20 A04004B5 */  sb    $zero, 0x4b5($v0)
/* AD9CC4 80062B24 A04804B6 */  sb    $t0, 0x4b6($v0)
/* AD9CC8 80062B28 A04004B7 */  sb    $zero, 0x4b7($v0)
/* AD9CCC 80062B2C A04304B8 */  sb    $v1, 0x4b8($v0)
/* AD9CD0 80062B30 A04004B9 */  sb    $zero, 0x4b9($v0)
/* AD9CD4 80062B34 A04804BA */  sb    $t0, 0x4ba($v0)
/* AD9CD8 80062B38 A04004BB */  sb    $zero, 0x4bb($v0)
/* AD9CDC 80062B3C 3C018016 */  lui   $at, %hi(D_8015D3CC) # $at, 0x8016
/* AD9CE0 80062B40 AC20D3CC */  sw    $zero, %lo(D_8015D3CC)($at)
/* AD9CE4 80062B44 3C018016 */  lui   $at, %hi(D_8015D3D0) # $at, 0x8016
/* AD9CE8 80062B48 AC39D3D0 */  sw    $t9, %lo(D_8015D3D0)($at)
/* AD9CEC 80062B4C 3C014100 */  li    $at, 0x41000000 # 0.000000
/* AD9CF0 80062B50 44812000 */  mtc1  $at, $f4
/* AD9CF4 80062B54 3C018016 */  lui   $at, 0x8016
/* AD9CF8 80062B58 E424D39C */  swc1  $f4, -0x2c64($at)
/* AD9CFC 80062B5C 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* AD9D00 80062B60 44813000 */  mtc1  $at, $f6
/* AD9D04 80062B64 3C018016 */  lui   $at, 0x8016
/* AD9D08 80062B68 0C009B35 */  jal   EffectAdd
/* AD9D0C 80062B6C E426D3A0 */   swc1  $f6, -0x2c60($at)
/* AD9D10 80062B70 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9D14 80062B74 27BD0028 */  addiu $sp, $sp, 0x28
/* AD9D18 80062B78 03E00008 */  jr    $ra
/* AD9D1C 80062B7C 00000000 */   nop   

glabel func_80062B80
/* AD9D20 80062B80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9D24 80062B84 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9D28 80062B88 AFA5002C */  sw    $a1, 0x2c($sp)
/* AD9D2C 80062B8C C4A40000 */  lwc1  $f4, ($a1)
/* AD9D30 80062B90 3C018016 */  lui   $at, %hi(D_8015D3DC) # $at, 0x8016
/* AD9D34 80062B94 240D0005 */  li    $t5, 5
/* AD9D38 80062B98 4600218D */  trunc.w.s $f6, $f4
/* AD9D3C 80062B9C 240F0005 */  li    $t7, 5
/* AD9D40 80062BA0 3C028016 */  lui   $v0, %hi(D_8015D3D8) # $v0, 0x8016
/* AD9D44 80062BA4 2442D3D8 */  addiu $v0, %lo(D_8015D3D8) # addiu $v0, $v0, -0x2c28
/* AD9D48 80062BA8 44183000 */  mfc1  $t8, $f6
/* AD9D4C 80062BAC 24030064 */  li    $v1, 100
/* AD9D50 80062BB0 24080032 */  li    $t0, 50
/* AD9D54 80062BB4 A438D3D8 */  sh    $t8, %lo(D_8015D3D8)($at)
/* AD9D58 80062BB8 C4A80004 */  lwc1  $f8, 4($a1)
/* AD9D5C 80062BBC 240900FF */  li    $t1, 255
/* AD9D60 80062BC0 24180010 */  li    $t8, 16
/* AD9D64 80062BC4 4600428D */  trunc.w.s $f10, $f8
/* AD9D68 80062BC8 24190001 */  li    $t9, 1
/* AD9D6C 80062BCC 00003025 */  move  $a2, $zero
/* AD9D70 80062BD0 00003825 */  move  $a3, $zero
/* AD9D74 80062BD4 440A5000 */  mfc1  $t2, $f10
/* AD9D78 80062BD8 00000000 */  nop   
/* AD9D7C 80062BDC A42AD3DA */  sh    $t2, %lo(D_8015D3DA)($at)
/* AD9D80 80062BE0 C4B00008 */  lwc1  $f16, 8($a1)
/* AD9D84 80062BE4 AFA20014 */  sw    $v0, 0x14($sp)
/* AD9D88 80062BE8 AFB90010 */  sw    $t9, 0x10($sp)
/* AD9D8C 80062BEC 4600848D */  trunc.w.s $f18, $f16
/* AD9D90 80062BF0 27A50024 */  addiu $a1, $sp, 0x24
/* AD9D94 80062BF4 440C9000 */  mfc1  $t4, $f18
/* AD9D98 80062BF8 00000000 */  nop   
/* AD9D9C 80062BFC A42CD3DC */  sh    $t4, %lo(D_8015D3DC)($at)
/* AD9DA0 80062C00 3C018016 */  lui   $at, %hi(D_8015D86C) # $at, 0x8016
/* AD9DA4 80062C04 AC2DD86C */  sw    $t5, %lo(D_8015D86C)($at)
/* AD9DA8 80062C08 3C018016 */  lui   $at, %hi(D_8015D870) # $at, 0x8016
/* AD9DAC 80062C0C AC2FD870 */  sw    $t7, %lo(D_8015D870)($at)
/* AD9DB0 80062C10 A049049C */  sb    $t1, 0x49c($v0)
/* AD9DB4 80062C14 A049049D */  sb    $t1, 0x49d($v0)
/* AD9DB8 80062C18 A049049E */  sb    $t1, 0x49e($v0)
/* AD9DBC 80062C1C A049049F */  sb    $t1, 0x49f($v0)
/* AD9DC0 80062C20 A04304A0 */  sb    $v1, 0x4a0($v0)
/* AD9DC4 80062C24 A04304A1 */  sb    $v1, 0x4a1($v0)
/* AD9DC8 80062C28 A04304A2 */  sb    $v1, 0x4a2($v0)
/* AD9DCC 80062C2C A04304A3 */  sb    $v1, 0x4a3($v0)
/* AD9DD0 80062C30 A04304A4 */  sb    $v1, 0x4a4($v0)
/* AD9DD4 80062C34 A04304A5 */  sb    $v1, 0x4a5($v0)
/* AD9DD8 80062C38 A04304A6 */  sb    $v1, 0x4a6($v0)
/* AD9DDC 80062C3C A04304A7 */  sb    $v1, 0x4a7($v0)
/* AD9DE0 80062C40 A04304A8 */  sb    $v1, 0x4a8($v0)
/* AD9DE4 80062C44 A04304A9 */  sb    $v1, 0x4a9($v0)
/* AD9DE8 80062C48 A04304AA */  sb    $v1, 0x4aa($v0)
/* AD9DEC 80062C4C A04304AB */  sb    $v1, 0x4ab($v0)
/* AD9DF0 80062C50 A04804AC */  sb    $t0, 0x4ac($v0)
/* AD9DF4 80062C54 A04804AD */  sb    $t0, 0x4ad($v0)
/* AD9DF8 80062C58 A04804AE */  sb    $t0, 0x4ae($v0)
/* AD9DFC 80062C5C A04804AF */  sb    $t0, 0x4af($v0)
/* AD9E00 80062C60 A04804B0 */  sb    $t0, 0x4b0($v0)
/* AD9E04 80062C64 A04804B1 */  sb    $t0, 0x4b1($v0)
/* AD9E08 80062C68 A04804B2 */  sb    $t0, 0x4b2($v0)
/* AD9E0C 80062C6C A04804B3 */  sb    $t0, 0x4b3($v0)
/* AD9E10 80062C70 A04804B4 */  sb    $t0, 0x4b4($v0)
/* AD9E14 80062C74 A04804B5 */  sb    $t0, 0x4b5($v0)
/* AD9E18 80062C78 A04804B6 */  sb    $t0, 0x4b6($v0)
/* AD9E1C 80062C7C A04804B7 */  sb    $t0, 0x4b7($v0)
/* AD9E20 80062C80 A04004B8 */  sb    $zero, 0x4b8($v0)
/* AD9E24 80062C84 A04004B9 */  sb    $zero, 0x4b9($v0)
/* AD9E28 80062C88 A04004BA */  sb    $zero, 0x4ba($v0)
/* AD9E2C 80062C8C A04004BB */  sb    $zero, 0x4bb($v0)
/* AD9E30 80062C90 3C018016 */  lui   $at, %hi(D_8015D894) # $at, 0x8016
/* AD9E34 80062C94 AC20D894 */  sw    $zero, %lo(D_8015D894)($at)
/* AD9E38 80062C98 3C018016 */  lui   $at, %hi(D_8015D898) # $at, 0x8016
/* AD9E3C 80062C9C AC38D898 */  sw    $t8, %lo(D_8015D898)($at)
/* AD9E40 80062CA0 3C014100 */  li    $at, 0x41000000 # 0.000000
/* AD9E44 80062CA4 44812000 */  mtc1  $at, $f4
/* AD9E48 80062CA8 3C018016 */  lui   $at, 0x8016
/* AD9E4C 80062CAC E424D864 */  swc1  $f4, -0x279c($at)
/* AD9E50 80062CB0 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* AD9E54 80062CB4 44813000 */  mtc1  $at, $f6
/* AD9E58 80062CB8 3C018016 */  lui   $at, 0x8016
/* AD9E5C 80062CBC 0C009B35 */  jal   EffectAdd
/* AD9E60 80062CC0 E426D868 */   swc1  $f6, -0x2798($at)
/* AD9E64 80062CC4 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9E68 80062CC8 27BD0028 */  addiu $sp, $sp, 0x28
/* AD9E6C 80062CCC 03E00008 */  jr    $ra
/* AD9E70 80062CD0 00000000 */   nop   

glabel func_80062CD4
/* AD9E74 80062CD4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9E78 80062CD8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9E7C 80062CDC AFA5002C */  sw    $a1, 0x2c($sp)
/* AD9E80 80062CE0 C4A40000 */  lwc1  $f4, ($a1)
/* AD9E84 80062CE4 3C018012 */  lui   $at, %hi(D_8011E02E) # $at, 0x8012
/* AD9E88 80062CE8 3C188012 */  lui   $t8, %hi(D_8011E028) # $t8, 0x8012
/* AD9E8C 80062CEC 4600218D */  trunc.w.s $f6, $f4
/* AD9E90 80062CF0 2718E028 */  addiu $t8, %lo(D_8011E028) # addiu $t8, $t8, -0x1fd8
/* AD9E94 80062CF4 24090001 */  li    $t1, 1
/* AD9E98 80062CF8 24060003 */  li    $a2, 3
/* AD9E9C 80062CFC 440C3000 */  mfc1  $t4, $f6
/* AD9EA0 80062D00 00003825 */  move  $a3, $zero
/* AD9EA4 80062D04 A42CE02A */  sh    $t4, %lo(D_8011E02A)($at)
/* AD9EA8 80062D08 C4A80004 */  lwc1  $f8, 4($a1)
/* AD9EAC 80062D0C 4600428D */  trunc.w.s $f10, $f8
/* AD9EB0 80062D10 440F5000 */  mfc1  $t7, $f10
/* AD9EB4 80062D14 00000000 */  nop   
/* AD9EB8 80062D18 A42FE02C */  sh    $t7, %lo(D_8011E02C)($at)
/* AD9EBC 80062D1C C4B00008 */  lwc1  $f16, 8($a1)
/* AD9EC0 80062D20 AFB80014 */  sw    $t8, 0x14($sp)
/* AD9EC4 80062D24 AFA90010 */  sw    $t1, 0x10($sp)
/* AD9EC8 80062D28 4600848D */  trunc.w.s $f18, $f16
/* AD9ECC 80062D2C 27A50024 */  addiu $a1, $sp, 0x24
/* AD9ED0 80062D30 440E9000 */  mfc1  $t6, $f18
/* AD9ED4 80062D34 00000000 */  nop   
/* AD9ED8 80062D38 A42EE02E */  sh    $t6, %lo(D_8011E02E)($at)
/* AD9EDC 80062D3C 3C018012 */  lui   $at, %hi(D_8011E05A) # $at, 0x8012
/* AD9EE0 80062D40 A42CE056 */  sh    $t4, %lo(D_8011E056)($at)
/* AD9EE4 80062D44 A42FE058 */  sh    $t7, %lo(D_8011E058)($at)
/* AD9EE8 80062D48 0C009B35 */  jal   EffectAdd
/* AD9EEC 80062D4C A42EE05A */   sh    $t6, %lo(D_8011E05A)($at)
/* AD9EF0 80062D50 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9EF4 80062D54 27BD0028 */  addiu $sp, $sp, 0x28
/* AD9EF8 80062D58 03E00008 */  jr    $ra
/* AD9EFC 80062D5C 00000000 */   nop   

glabel func_80062D60
/* AD9F00 80062D60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9F04 80062D64 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9F08 80062D68 0C018B35 */  jal   func_80062CD4
/* AD9F0C 80062D6C 00000000 */   nop   
/* AD9F10 80062D70 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD9F14 80062D74 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AD9F18 80062D78 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD9F1C 80062D7C 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AD9F20 80062D80 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* AD9F24 80062D84 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* AD9F28 80062D88 AFAE0014 */  sw    $t6, 0x14($sp)
/* AD9F2C 80062D8C AFA70010 */  sw    $a3, 0x10($sp)
/* AD9F30 80062D90 24041808 */  li    $a0, 6152
/* AD9F34 80062D94 0C03DCE3 */  jal   func_800F738C
/* AD9F38 80062D98 24060004 */   li    $a2, 4
/* AD9F3C 80062D9C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9F40 80062DA0 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9F44 80062DA4 03E00008 */  jr    $ra
/* AD9F48 80062DA8 00000000 */   nop   

glabel func_80062DAC
/* AD9F4C 80062DAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9F50 80062DB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9F54 80062DB4 0C018B35 */  jal   func_80062CD4
/* AD9F58 80062DB8 AFA60028 */   sw    $a2, 0x28($sp)
/* AD9F5C 80062DBC 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* AD9F60 80062DC0 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* AD9F64 80062DC4 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* AD9F68 80062DC8 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* AD9F6C 80062DCC AFAE0014 */  sw    $t6, 0x14($sp)
/* AD9F70 80062DD0 AFA70010 */  sw    $a3, 0x10($sp)
/* AD9F74 80062DD4 24041808 */  li    $a0, 6152
/* AD9F78 80062DD8 8FA50028 */  lw    $a1, 0x28($sp)
/* AD9F7C 80062DDC 0C03DCE3 */  jal   func_800F738C
/* AD9F80 80062DE0 24060004 */   li    $a2, 4
/* AD9F84 80062DE4 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9F88 80062DE8 27BD0020 */  addiu $sp, $sp, 0x20
/* AD9F8C 80062DEC 03E00008 */  jr    $ra
/* AD9F90 80062DF0 00000000 */   nop   

/* AD9F94 80062DF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD9F98 80062DF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD9F9C 80062DFC 0C018B58 */  jal   func_80062D60
/* AD9FA0 80062E00 00000000 */   nop   
/* AD9FA4 80062E04 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD9FA8 80062E08 27BD0018 */  addiu $sp, $sp, 0x18
/* AD9FAC 80062E0C 03E00008 */  jr    $ra
/* AD9FB0 80062E10 00000000 */   nop   

glabel func_80062E14
/* AD9FB4 80062E14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9FB8 80062E18 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9FBC 80062E1C AFA5002C */  sw    $a1, 0x2c($sp)
/* AD9FC0 80062E20 AFA60030 */  sw    $a2, 0x30($sp)
/* AD9FC4 80062E24 C4A40000 */  lwc1  $f4, ($a1)
/* AD9FC8 80062E28 3C018012 */  lui   $at, %hi(D_8011E06E) # $at, 0x8012
/* AD9FCC 80062E2C 3C188012 */  lui   $t8, %hi(D_8011E068) # $t8, 0x8012
/* AD9FD0 80062E30 4600218D */  trunc.w.s $f6, $f4
/* AD9FD4 80062E34 2718E068 */  addiu $t8, %lo(D_8011E068) # addiu $t8, $t8, -0x1f98
/* AD9FD8 80062E38 24090001 */  li    $t1, 1
/* AD9FDC 80062E3C 24060003 */  li    $a2, 3
/* AD9FE0 80062E40 440C3000 */  mfc1  $t4, $f6
/* AD9FE4 80062E44 00003825 */  move  $a3, $zero
/* AD9FE8 80062E48 A42CE06A */  sh    $t4, %lo(D_8011E06A)($at)
/* AD9FEC 80062E4C C4A80004 */  lwc1  $f8, 4($a1)
/* AD9FF0 80062E50 4600428D */  trunc.w.s $f10, $f8
/* AD9FF4 80062E54 440F5000 */  mfc1  $t7, $f10
/* AD9FF8 80062E58 00000000 */  nop   
/* AD9FFC 80062E5C A42FE06C */  sh    $t7, %lo(D_8011E06C)($at)
/* ADA000 80062E60 C4B00008 */  lwc1  $f16, 8($a1)
/* ADA004 80062E64 AFB80014 */  sw    $t8, 0x14($sp)
/* ADA008 80062E68 AFA90010 */  sw    $t1, 0x10($sp)
/* ADA00C 80062E6C 4600848D */  trunc.w.s $f18, $f16
/* ADA010 80062E70 27A50024 */  addiu $a1, $sp, 0x24
/* ADA014 80062E74 440E9000 */  mfc1  $t6, $f18
/* ADA018 80062E78 00000000 */  nop   
/* ADA01C 80062E7C A42EE06E */  sh    $t6, %lo(D_8011E06E)($at)
/* ADA020 80062E80 3C018012 */  lui   $at, %hi(D_8011E09A) # $at, 0x8012
/* ADA024 80062E84 A42CE096 */  sh    $t4, %lo(D_8011E096)($at)
/* ADA028 80062E88 A42FE098 */  sh    $t7, %lo(D_8011E098)($at)
/* ADA02C 80062E8C 0C009B35 */  jal   EffectAdd
/* ADA030 80062E90 A42EE09A */   sh    $t6, %lo(D_8011E09A)($at)
/* ADA034 80062E94 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* ADA038 80062E98 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* ADA03C 80062E9C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* ADA040 80062EA0 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* ADA044 80062EA4 AFAB0014 */  sw    $t3, 0x14($sp)
/* ADA048 80062EA8 AFA70010 */  sw    $a3, 0x10($sp)
/* ADA04C 80062EAC 24041837 */  li    $a0, 6199
/* ADA050 80062EB0 8FA50030 */  lw    $a1, 0x30($sp)
/* ADA054 80062EB4 0C03DCE3 */  jal   func_800F738C
/* ADA058 80062EB8 24060004 */   li    $a2, 4
/* ADA05C 80062EBC 8FBF001C */  lw    $ra, 0x1c($sp)
/* ADA060 80062EC0 27BD0028 */  addiu $sp, $sp, 0x28
/* ADA064 80062EC4 03E00008 */  jr    $ra
/* ADA068 80062EC8 00000000 */   nop   

glabel func_80062ECC
/* ADA06C 80062ECC 27BDFF88 */  addiu $sp, $sp, -0x78
/* ADA070 80062ED0 8FA40088 */  lw    $a0, 0x88($sp)
/* ADA074 80062ED4 E7AC0078 */  swc1  $f12, 0x78($sp)
/* ADA078 80062ED8 E7AE007C */  swc1  $f14, 0x7c($sp)
/* ADA07C 80062EDC AFA60080 */  sw    $a2, 0x80($sp)
/* ADA080 80062EE0 C4E60000 */  lwc1  $f6, ($a3)
/* ADA084 80062EE4 C4840000 */  lwc1  $f4, ($a0)
/* ADA088 80062EE8 8FA5008C */  lw    $a1, 0x8c($sp)
/* ADA08C 80062EEC 00001025 */  move  $v0, $zero
/* ADA090 80062EF0 46062201 */  sub.s $f8, $f4, $f6
/* ADA094 80062EF4 E7A8006C */  swc1  $f8, 0x6c($sp)
/* ADA098 80062EF8 C4E40004 */  lwc1  $f4, 4($a3)
/* ADA09C 80062EFC C48A0004 */  lwc1  $f10, 4($a0)
/* ADA0A0 80062F00 C7A80080 */  lwc1  $f8, 0x80($sp)
/* ADA0A4 80062F04 46045181 */  sub.s $f6, $f10, $f4
/* ADA0A8 80062F08 46083381 */  sub.s $f14, $f6, $f8
/* ADA0AC 80062F0C E7AE0070 */  swc1  $f14, 0x70($sp)
/* ADA0B0 80062F10 C4E60008 */  lwc1  $f6, 8($a3)
/* ADA0B4 80062F14 C4840008 */  lwc1  $f4, 8($a0)
/* ADA0B8 80062F18 46062101 */  sub.s $f4, $f4, $f6
/* ADA0BC 80062F1C E7A40074 */  swc1  $f4, 0x74($sp)
/* ADA0C0 80062F20 C4E40000 */  lwc1  $f4, ($a3)
/* ADA0C4 80062F24 C4A60000 */  lwc1  $f6, ($a1)
/* ADA0C8 80062F28 46043181 */  sub.s $f6, $f6, $f4
/* ADA0CC 80062F2C E7A60060 */  swc1  $f6, 0x60($sp)
/* ADA0D0 80062F30 C4E60004 */  lwc1  $f6, 4($a3)
/* ADA0D4 80062F34 C4A40004 */  lwc1  $f4, 4($a1)
/* ADA0D8 80062F38 46062101 */  sub.s $f4, $f4, $f6
/* ADA0DC 80062F3C 46082181 */  sub.s $f6, $f4, $f8
/* ADA0E0 80062F40 E7A60064 */  swc1  $f6, 0x64($sp)
/* ADA0E4 80062F44 C4E80008 */  lwc1  $f8, 8($a3)
/* ADA0E8 80062F48 C4A40008 */  lwc1  $f4, 8($a1)
/* ADA0EC 80062F4C 46082101 */  sub.s $f4, $f4, $f8
/* ADA0F0 80062F50 C7A80060 */  lwc1  $f8, 0x60($sp)
/* ADA0F4 80062F54 E7A40068 */  swc1  $f4, 0x68($sp)
/* ADA0F8 80062F58 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* ADA0FC 80062F5C 46044401 */  sub.s $f16, $f8, $f4
/* ADA100 80062F60 460E3201 */  sub.s $f8, $f6, $f14
/* ADA104 80062F64 C7A60068 */  lwc1  $f6, 0x68($sp)
/* ADA108 80062F68 E7B00054 */  swc1  $f16, 0x54($sp)
/* ADA10C 80062F6C E7A80018 */  swc1  $f8, 0x18($sp)
/* ADA110 80062F70 E7A80058 */  swc1  $f8, 0x58($sp)
/* ADA114 80062F74 C7A80074 */  lwc1  $f8, 0x74($sp)
/* ADA118 80062F78 46083481 */  sub.s $f18, $f6, $f8
/* ADA11C 80062F7C 44803000 */  mtc1  $zero, $f6
/* ADA120 80062F80 C7A8007C */  lwc1  $f8, 0x7c($sp)
/* ADA124 80062F84 460E303C */  c.lt.s $f6, $f14
/* ADA128 80062F88 E7B2005C */  swc1  $f18, 0x5c($sp)
/* ADA12C 80062F8C 45000002 */  bc1f  .L80062F98
/* ADA130 80062F90 00000000 */   nop   
/* ADA134 80062F94 24020001 */  li    $v0, 1
.L80062F98:
/* ADA138 80062F98 50400013 */  beql  $v0, $zero, .L80062FE8
/* ADA13C 80062F9C 44804000 */   mtc1  $zero, $f8
/* ADA140 80062FA0 4608703C */  c.lt.s $f14, $f8
/* ADA144 80062FA4 C7A80074 */  lwc1  $f8, 0x74($sp)
/* ADA148 80062FA8 C7A60074 */  lwc1  $f6, 0x74($sp)
/* ADA14C 80062FAC 4502000E */  bc1fl .L80062FE8
/* ADA150 80062FB0 44804000 */   mtc1  $zero, $f8
/* ADA154 80062FB4 46042282 */  mul.s $f10, $f4, $f4
/* ADA158 80062FB8 00000000 */  nop   
/* ADA15C 80062FBC 46083102 */  mul.s $f4, $f6, $f8
/* ADA160 80062FC0 C7A60078 */  lwc1  $f6, 0x78($sp)
/* ADA164 80062FC4 46045000 */  add.s $f0, $f10, $f4
/* ADA168 80062FC8 46000004 */  sqrt.s $f0, $f0
/* ADA16C 80062FCC 4606003C */  c.lt.s $f0, $f6
/* ADA170 80062FD0 00000000 */  nop   
/* ADA174 80062FD4 45000003 */  bc1f  .L80062FE4
/* ADA178 80062FD8 00000000 */   nop   
/* ADA17C 80062FDC 1000017A */  b     .L800635C8
/* ADA180 80062FE0 24020003 */   li    $v0, 3
.L80062FE4:
/* ADA184 80062FE4 44804000 */  mtc1  $zero, $f8
.L80062FE8:
/* ADA188 80062FE8 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* ADA18C 80062FEC 00001825 */  move  $v1, $zero
/* ADA190 80062FF0 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* ADA194 80062FF4 460A403C */  c.lt.s $f8, $f10
/* ADA198 80062FF8 00000000 */  nop   
/* ADA19C 80062FFC 45000002 */  bc1f  .L80063008
/* ADA1A0 80063000 00000000 */   nop   
/* ADA1A4 80063004 24030001 */  li    $v1, 1
.L80063008:
/* ADA1A8 80063008 50600012 */  beql  $v1, $zero, .L80063054
/* ADA1AC 8006300C C7A60074 */   lwc1  $f6, 0x74($sp)
/* ADA1B0 80063010 4604503C */  c.lt.s $f10, $f4
/* ADA1B4 80063014 C7A20060 */  lwc1  $f2, 0x60($sp)
/* ADA1B8 80063018 C7AC0068 */  lwc1  $f12, 0x68($sp)
/* ADA1BC 8006301C 4502000D */  bc1fl .L80063054
/* ADA1C0 80063020 C7A60074 */   lwc1  $f6, 0x74($sp)
/* ADA1C4 80063024 46021182 */  mul.s $f6, $f2, $f2
/* ADA1C8 80063028 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* ADA1CC 8006302C 460C6202 */  mul.s $f8, $f12, $f12
/* ADA1D0 80063030 46083000 */  add.s $f0, $f6, $f8
/* ADA1D4 80063034 46000004 */  sqrt.s $f0, $f0
/* ADA1D8 80063038 460A003C */  c.lt.s $f0, $f10
/* ADA1DC 8006303C 00000000 */  nop   
/* ADA1E0 80063040 45020004 */  bc1fl .L80063054
/* ADA1E4 80063044 C7A60074 */   lwc1  $f6, 0x74($sp)
/* ADA1E8 80063048 1000015F */  b     .L800635C8
/* ADA1EC 8006304C 24020003 */   li    $v0, 3
/* ADA1F0 80063050 C7A60074 */  lwc1  $f6, 0x74($sp)
.L80063054:
/* ADA1F4 80063054 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* ADA1F8 80063058 3C018014 */  li    $at, 0x80140000 # 0.000000
/* ADA1FC 8006305C 46063202 */  mul.s $f8, $f6, $f6
/* ADA200 80063060 00000000 */  nop   
/* ADA204 80063064 46042282 */  mul.s $f10, $f4, $f4
/* ADA208 80063068 46085280 */  add.s $f10, $f10, $f8
/* ADA20C 8006306C C7A80078 */  lwc1  $f8, 0x78($sp)
/* ADA210 80063070 46084202 */  mul.s $f8, $f8, $f8
/* ADA214 80063074 46085301 */  sub.s $f12, $f10, $f8
/* ADA218 80063078 46108282 */  mul.s $f10, $f16, $f16
/* ADA21C 8006307C 00000000 */  nop   
/* ADA220 80063080 46129202 */  mul.s $f8, $f18, $f18
/* ADA224 80063084 E7AC0038 */  swc1  $f12, 0x38($sp)
/* ADA228 80063088 46085080 */  add.s $f2, $f10, $f8
/* ADA22C 8006308C C42AAD2C */  lwc1  $f10, -0x52d4($at)
/* ADA230 80063090 46001005 */  abs.s $f0, $f2
/* ADA234 80063094 460A003C */  c.lt.s $f0, $f10
/* ADA238 80063098 00000000 */  nop   
/* ADA23C 8006309C 4501002C */  bc1t  .L80063150
/* ADA240 800630A0 00000000 */   nop   
/* ADA244 800630A4 46108200 */  add.s $f8, $f16, $f16
/* ADA248 800630A8 3C014080 */  li    $at, 0x40800000 # 0.000000
/* ADA24C 800630AC 46044282 */  mul.s $f10, $f8, $f4
/* ADA250 800630B0 46129200 */  add.s $f8, $f18, $f18
/* ADA254 800630B4 46064102 */  mul.s $f4, $f8, $f6
/* ADA258 800630B8 44814000 */  mtc1  $at, $f8
/* ADA25C 800630BC 46045380 */  add.s $f14, $f10, $f4
/* ADA260 800630C0 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* ADA264 800630C4 460E7002 */  mul.s $f0, $f14, $f14
/* ADA268 800630C8 00000000 */  nop   
/* ADA26C 800630CC 46024182 */  mul.s $f6, $f8, $f2
/* ADA270 800630D0 00000000 */  nop   
/* ADA274 800630D4 460A3302 */  mul.s $f12, $f6, $f10
/* ADA278 800630D8 460C003C */  c.lt.s $f0, $f12
/* ADA27C 800630DC 00000000 */  nop   
/* ADA280 800630E0 45000003 */  bc1f  .L800630F0
/* ADA284 800630E4 00000000 */   nop   
/* ADA288 800630E8 10000137 */  b     .L800635C8
/* ADA28C 800630EC 00001025 */   move  $v0, $zero
.L800630F0:
/* ADA290 800630F0 460C0401 */  sub.s $f16, $f0, $f12
/* ADA294 800630F4 44809000 */  mtc1  $zero, $f18
/* ADA298 800630F8 24030001 */  li    $v1, 1
/* ADA29C 800630FC 46021200 */  add.s $f8, $f2, $f2
/* ADA2A0 80063100 4610903C */  c.lt.s $f18, $f16
/* ADA2A4 80063104 46008004 */  sqrt.s $f0, $f16
/* ADA2A8 80063108 45000003 */  bc1f  .L80063118
/* ADA2AC 8006310C 24020001 */   li    $v0, 1
/* ADA2B0 80063110 10000002 */  b     .L8006311C
/* ADA2B4 80063114 24030001 */   li    $v1, 1
.L80063118:
/* ADA2B8 80063118 00001025 */  move  $v0, $zero
.L8006311C:
/* ADA2BC 8006311C 460E0101 */  sub.s $f4, $f0, $f14
/* ADA2C0 80063120 24080001 */  li    $t0, 1
/* ADA2C4 80063124 46082403 */  div.s $f16, $f4, $f8
/* ADA2C8 80063128 E7B00050 */  swc1  $f16, 0x50($sp)
/* ADA2CC 8006312C 14480006 */  bne   $v0, $t0, .L80063148
/* ADA2D0 80063130 C7B00050 */   lwc1  $f16, 0x50($sp)
/* ADA2D4 80063134 46007187 */  neg.s $f6, $f14
/* ADA2D8 80063138 46021100 */  add.s $f4, $f2, $f2
/* ADA2DC 8006313C 46003281 */  sub.s $f10, $f6, $f0
/* ADA2E0 80063140 46045303 */  div.s $f12, $f10, $f4
/* ADA2E4 80063144 E7AC004C */  swc1  $f12, 0x4c($sp)
.L80063148:
/* ADA2E8 80063148 1000005F */  b     .L800632C8
/* ADA2EC 8006314C C7AC004C */   lwc1  $f12, 0x4c($sp)
.L80063150:
/* ADA2F0 80063150 46108200 */  add.s $f8, $f16, $f16
/* ADA2F4 80063154 C7A6006C */  lwc1  $f6, 0x6c($sp)
/* ADA2F8 80063158 3C018014 */  li    $at, 0x80140000 # 0.000000
/* ADA2FC 8006315C 46129100 */  add.s $f4, $f18, $f18
/* ADA300 80063160 46064282 */  mul.s $f10, $f8, $f6
/* ADA304 80063164 C7A80074 */  lwc1  $f8, 0x74($sp)
/* ADA308 80063168 24080001 */  li    $t0, 1
/* ADA30C 8006316C 46082182 */  mul.s $f6, $f4, $f8
/* ADA310 80063170 C424AD30 */  lwc1  $f4, -0x52d0($at)
/* ADA314 80063174 46065380 */  add.s $f14, $f10, $f6
/* ADA318 80063178 46007005 */  abs.s $f0, $f14
/* ADA31C 8006317C 4604003C */  c.lt.s $f0, $f4
/* ADA320 80063180 00000000 */  nop   
/* ADA324 80063184 45030009 */  bc1tl .L800631AC
/* ADA328 80063188 44805000 */   mtc1  $zero, $f10
/* ADA32C 8006318C 46006207 */  neg.s $f8, $f12
/* ADA330 80063190 44809000 */  mtc1  $zero, $f18
/* ADA334 80063194 24030001 */  li    $v1, 1
/* ADA338 80063198 00001025 */  move  $v0, $zero
/* ADA33C 8006319C 460E4403 */  div.s $f16, $f8, $f14
/* ADA340 800631A0 10000049 */  b     .L800632C8
/* ADA344 800631A4 C7AC004C */   lwc1  $f12, 0x4c($sp)
/* ADA348 800631A8 44805000 */  mtc1  $zero, $f10
.L800631AC:
/* ADA34C 800631AC 00000000 */  nop   
/* ADA350 800631B0 460A603E */  c.le.s $f12, $f10
/* ADA354 800631B4 00000000 */  nop   
/* ADA358 800631B8 45000041 */  bc1f  .L800632C0
/* ADA35C 800631BC 00000000 */   nop   
/* ADA360 800631C0 10400009 */  beqz  $v0, .L800631E8
/* ADA364 800631C4 00402025 */   move  $a0, $v0
/* ADA368 800631C8 C7A60070 */  lwc1  $f6, 0x70($sp)
/* ADA36C 800631CC C7A4007C */  lwc1  $f4, 0x7c($sp)
/* ADA370 800631D0 00002025 */  move  $a0, $zero
/* ADA374 800631D4 4604303C */  c.lt.s $f6, $f4
/* ADA378 800631D8 00000000 */  nop   
/* ADA37C 800631DC 45020003 */  bc1fl .L800631EC
/* ADA380 800631E0 00802825 */   move  $a1, $a0
/* ADA384 800631E4 24040001 */  li    $a0, 1
.L800631E8:
/* ADA388 800631E8 00802825 */  move  $a1, $a0
.L800631EC:
/* ADA38C 800631EC 10600009 */  beqz  $v1, .L80063214
/* ADA390 800631F0 00602025 */   move  $a0, $v1
/* ADA394 800631F4 C7A80064 */  lwc1  $f8, 0x64($sp)
/* ADA398 800631F8 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* ADA39C 800631FC 00002025 */  move  $a0, $zero
/* ADA3A0 80063200 460A403C */  c.lt.s $f8, $f10
/* ADA3A4 80063204 00000000 */  nop   
/* ADA3A8 80063208 45000002 */  bc1f  .L80063214
/* ADA3AC 8006320C 00000000 */   nop   
/* ADA3B0 80063210 24040001 */  li    $a0, 1
.L80063214:
/* ADA3B4 80063214 10A00014 */  beqz  $a1, .L80063268
/* ADA3B8 80063218 00000000 */   nop   
/* ADA3BC 8006321C 10800012 */  beqz  $a0, .L80063268
/* ADA3C0 80063220 8FA30090 */   lw    $v1, 0x90($sp)
/* ADA3C4 80063224 27AE006C */  addiu $t6, $sp, 0x6c
/* ADA3C8 80063228 8DD80000 */  lw    $t8, ($t6)
/* ADA3CC 8006322C 8FA40094 */  lw    $a0, 0x94($sp)
/* ADA3D0 80063230 27B90060 */  addiu $t9, $sp, 0x60
/* ADA3D4 80063234 AC780000 */  sw    $t8, ($v1)
/* ADA3D8 80063238 8DCF0004 */  lw    $t7, 4($t6)
/* ADA3DC 8006323C 24020002 */  li    $v0, 2
/* ADA3E0 80063240 AC6F0004 */  sw    $t7, 4($v1)
/* ADA3E4 80063244 8DD80008 */  lw    $t8, 8($t6)
/* ADA3E8 80063248 AC780008 */  sw    $t8, 8($v1)
/* ADA3EC 8006324C 8F2A0000 */  lw    $t2, ($t9)
/* ADA3F0 80063250 AC8A0000 */  sw    $t2, ($a0)
/* ADA3F4 80063254 8F290004 */  lw    $t1, 4($t9)
/* ADA3F8 80063258 AC890004 */  sw    $t1, 4($a0)
/* ADA3FC 8006325C 8F2A0008 */  lw    $t2, 8($t9)
/* ADA400 80063260 100000D9 */  b     .L800635C8
/* ADA404 80063264 AC8A0008 */   sw    $t2, 8($a0)
.L80063268:
/* ADA408 80063268 10A0000A */  beqz  $a1, .L80063294
/* ADA40C 8006326C 8FA30090 */   lw    $v1, 0x90($sp)
/* ADA410 80063270 27AB006C */  addiu $t3, $sp, 0x6c
/* ADA414 80063274 8D6D0000 */  lw    $t5, ($t3)
/* ADA418 80063278 24020001 */  li    $v0, 1
/* ADA41C 8006327C AC6D0000 */  sw    $t5, ($v1)
/* ADA420 80063280 8D6C0004 */  lw    $t4, 4($t3)
/* ADA424 80063284 AC6C0004 */  sw    $t4, 4($v1)
/* ADA428 80063288 8D6D0008 */  lw    $t5, 8($t3)
/* ADA42C 8006328C 100000CE */  b     .L800635C8
/* ADA430 80063290 AC6D0008 */   sw    $t5, 8($v1)
.L80063294:
/* ADA434 80063294 1080000A */  beqz  $a0, .L800632C0
/* ADA438 80063298 8FA30090 */   lw    $v1, 0x90($sp)
/* ADA43C 8006329C 27AE0060 */  addiu $t6, $sp, 0x60
/* ADA440 800632A0 8DD80000 */  lw    $t8, ($t6)
/* ADA444 800632A4 24020001 */  li    $v0, 1
/* ADA448 800632A8 AC780000 */  sw    $t8, ($v1)
/* ADA44C 800632AC 8DCF0004 */  lw    $t7, 4($t6)
/* ADA450 800632B0 AC6F0004 */  sw    $t7, 4($v1)
/* ADA454 800632B4 8DD80008 */  lw    $t8, 8($t6)
/* ADA458 800632B8 100000C3 */  b     .L800635C8
/* ADA45C 800632BC AC780008 */   sw    $t8, 8($v1)
.L800632C0:
/* ADA460 800632C0 100000C1 */  b     .L800635C8
/* ADA464 800632C4 00001025 */   move  $v0, $zero
.L800632C8:
/* ADA468 800632C8 5440000E */  bnezl $v0, .L80063304
/* ADA46C 800632CC 4612803C */   c.lt.s $f16, $f18
/* ADA470 800632D0 4612803C */  c.lt.s $f16, $f18
/* ADA474 800632D4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ADA478 800632D8 45010007 */  bc1t  .L800632F8
/* ADA47C 800632DC 00000000 */   nop   
/* ADA480 800632E0 44813000 */  mtc1  $at, $f6
/* ADA484 800632E4 00000000 */  nop   
/* ADA488 800632E8 4610303C */  c.lt.s $f6, $f16
/* ADA48C 800632EC 00000000 */  nop   
/* ADA490 800632F0 4500002E */  bc1f  .L800633AC
/* ADA494 800632F4 00000000 */   nop   
.L800632F8:
/* ADA498 800632F8 100000B3 */  b     .L800635C8
/* ADA49C 800632FC 00001025 */   move  $v0, $zero
/* ADA4A0 80063300 4612803C */  c.lt.s $f16, $f18
.L80063304:
/* ADA4A4 80063304 00002825 */  move  $a1, $zero
/* ADA4A8 80063308 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ADA4AC 8006330C 45000002 */  bc1f  .L80063318
/* ADA4B0 80063310 00000000 */   nop   
/* ADA4B4 80063314 24050001 */  li    $a1, 1
.L80063318:
/* ADA4B8 80063318 14A00008 */  bnez  $a1, .L8006333C
/* ADA4BC 8006331C 00A02025 */   move  $a0, $a1
/* ADA4C0 80063320 44812000 */  mtc1  $at, $f4
/* ADA4C4 80063324 00002025 */  move  $a0, $zero
/* ADA4C8 80063328 4610203C */  c.lt.s $f4, $f16
/* ADA4CC 8006332C 00000000 */  nop   
/* ADA4D0 80063330 45020003 */  bc1fl .L80063340
/* ADA4D4 80063334 4612603C */   c.lt.s $f12, $f18
/* ADA4D8 80063338 24040001 */  li    $a0, 1
.L8006333C:
/* ADA4DC 8006333C 4612603C */  c.lt.s $f12, $f18
.L80063340:
/* ADA4E0 80063340 00802825 */  move  $a1, $a0
/* ADA4E4 80063344 00003025 */  move  $a2, $zero
/* ADA4E8 80063348 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ADA4EC 8006334C 45000002 */  bc1f  .L80063358
/* ADA4F0 80063350 00000000 */   nop   
/* ADA4F4 80063354 24060001 */  li    $a2, 1
.L80063358:
/* ADA4F8 80063358 14C00008 */  bnez  $a2, .L8006337C
/* ADA4FC 8006335C 00C02025 */   move  $a0, $a2
/* ADA500 80063360 44814000 */  mtc1  $at, $f8
/* ADA504 80063364 00002025 */  move  $a0, $zero
/* ADA508 80063368 460C403C */  c.lt.s $f8, $f12
/* ADA50C 8006336C 00000000 */  nop   
/* ADA510 80063370 45000002 */  bc1f  .L8006337C
/* ADA514 80063374 00000000 */   nop   
/* ADA518 80063378 24040001 */  li    $a0, 1
.L8006337C:
/* ADA51C 8006337C 10A00005 */  beqz  $a1, .L80063394
/* ADA520 80063380 00000000 */   nop   
/* ADA524 80063384 10800003 */  beqz  $a0, .L80063394
/* ADA528 80063388 00000000 */   nop   
/* ADA52C 8006338C 1000008E */  b     .L800635C8
/* ADA530 80063390 00001025 */   move  $v0, $zero
.L80063394:
/* ADA534 80063394 10A00002 */  beqz  $a1, .L800633A0
/* ADA538 80063398 00000000 */   nop   
/* ADA53C 8006339C 00001825 */  move  $v1, $zero
.L800633A0:
/* ADA540 800633A0 10800002 */  beqz  $a0, .L800633AC
/* ADA544 800633A4 00000000 */   nop   
/* ADA548 800633A8 00001025 */  move  $v0, $zero
.L800633AC:
/* ADA54C 800633AC 1468000F */  bne   $v1, $t0, .L800633EC
/* ADA550 800633B0 C7AA0018 */   lwc1  $f10, 0x18($sp)
/* ADA554 800633B4 460A8182 */  mul.s $f6, $f16, $f10
/* ADA558 800633B8 C7A40070 */  lwc1  $f4, 0x70($sp)
/* ADA55C 800633BC 44804000 */  mtc1  $zero, $f8
/* ADA560 800633C0 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* ADA564 800633C4 46043000 */  add.s $f0, $f6, $f4
/* ADA568 800633C8 4608003C */  c.lt.s $f0, $f8
/* ADA56C 800633CC 00000000 */  nop   
/* ADA570 800633D0 45030006 */  bc1tl .L800633EC
/* ADA574 800633D4 00001825 */   move  $v1, $zero
/* ADA578 800633D8 4600503C */  c.lt.s $f10, $f0
/* ADA57C 800633DC 00000000 */  nop   
/* ADA580 800633E0 45000002 */  bc1f  .L800633EC
/* ADA584 800633E4 00000000 */   nop   
/* ADA588 800633E8 00001825 */  move  $v1, $zero
.L800633EC:
/* ADA58C 800633EC 1448000F */  bne   $v0, $t0, .L8006342C
/* ADA590 800633F0 C7A60018 */   lwc1  $f6, 0x18($sp)
/* ADA594 800633F4 46066102 */  mul.s $f4, $f12, $f6
/* ADA598 800633F8 C7A80070 */  lwc1  $f8, 0x70($sp)
/* ADA59C 800633FC 44805000 */  mtc1  $zero, $f10
/* ADA5A0 80063400 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* ADA5A4 80063404 46082000 */  add.s $f0, $f4, $f8
/* ADA5A8 80063408 460A003C */  c.lt.s $f0, $f10
/* ADA5AC 8006340C 00000000 */  nop   
/* ADA5B0 80063410 45030006 */  bc1tl .L8006342C
/* ADA5B4 80063414 00001025 */   move  $v0, $zero
/* ADA5B8 80063418 4600303C */  c.lt.s $f6, $f0
/* ADA5BC 8006341C 00000000 */  nop   
/* ADA5C0 80063420 45000002 */  bc1f  .L8006342C
/* ADA5C4 80063424 00000000 */   nop   
/* ADA5C8 80063428 00001025 */  move  $v0, $zero
.L8006342C:
/* ADA5CC 8006342C 14600005 */  bnez  $v1, .L80063444
/* ADA5D0 80063430 00000000 */   nop   
/* ADA5D4 80063434 14400003 */  bnez  $v0, .L80063444
/* ADA5D8 80063438 00000000 */   nop   
/* ADA5DC 8006343C 10000062 */  b     .L800635C8
/* ADA5E0 80063440 00001025 */   move  $v0, $zero
.L80063444:
/* ADA5E4 80063444 1468002D */  bne   $v1, $t0, .L800634FC
/* ADA5E8 80063448 00000000 */   nop   
/* ADA5EC 8006344C 1448002B */  bne   $v0, $t0, .L800634FC
/* ADA5F0 80063450 C7A00054 */   lwc1  $f0, 0x54($sp)
/* ADA5F4 80063454 46008102 */  mul.s $f4, $f16, $f0
/* ADA5F8 80063458 C7A8006C */  lwc1  $f8, 0x6c($sp)
/* ADA5FC 8006345C C4E60000 */  lwc1  $f6, ($a3)
/* ADA600 80063460 C7A20058 */  lwc1  $f2, 0x58($sp)
/* ADA604 80063464 8FA30090 */  lw    $v1, 0x90($sp)
/* ADA608 80063468 8FA40094 */  lw    $a0, 0x94($sp)
/* ADA60C 8006346C C7AE005C */  lwc1  $f14, 0x5c($sp)
/* ADA610 80063470 46082280 */  add.s $f10, $f4, $f8
/* ADA614 80063474 46028202 */  mul.s $f8, $f16, $f2
/* ADA618 80063478 24020002 */  li    $v0, 2
/* ADA61C 8006347C 46065100 */  add.s $f4, $f10, $f6
/* ADA620 80063480 E4640000 */  swc1  $f4, ($v1)
/* ADA624 80063484 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* ADA628 80063488 C4E40004 */  lwc1  $f4, 4($a3)
/* ADA62C 8006348C 460A4180 */  add.s $f6, $f8, $f10
/* ADA630 80063490 460E8282 */  mul.s $f10, $f16, $f14
/* ADA634 80063494 46043200 */  add.s $f8, $f6, $f4
/* ADA638 80063498 E4680004 */  swc1  $f8, 4($v1)
/* ADA63C 8006349C C7A60074 */  lwc1  $f6, 0x74($sp)
/* ADA640 800634A0 C4E80008 */  lwc1  $f8, 8($a3)
/* ADA644 800634A4 46065100 */  add.s $f4, $f10, $f6
/* ADA648 800634A8 46006182 */  mul.s $f6, $f12, $f0
/* ADA64C 800634AC 46082280 */  add.s $f10, $f4, $f8
/* ADA650 800634B0 E46A0008 */  swc1  $f10, 8($v1)
/* ADA654 800634B4 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* ADA658 800634B8 C4EA0000 */  lwc1  $f10, ($a3)
/* ADA65C 800634BC 46043200 */  add.s $f8, $f6, $f4
/* ADA660 800634C0 46026102 */  mul.s $f4, $f12, $f2
/* ADA664 800634C4 460A4180 */  add.s $f6, $f8, $f10
/* ADA668 800634C8 E4860000 */  swc1  $f6, ($a0)
/* ADA66C 800634CC C7A80070 */  lwc1  $f8, 0x70($sp)
/* ADA670 800634D0 C4E60004 */  lwc1  $f6, 4($a3)
/* ADA674 800634D4 46082280 */  add.s $f10, $f4, $f8
/* ADA678 800634D8 460E6202 */  mul.s $f8, $f12, $f14
/* ADA67C 800634DC 46065100 */  add.s $f4, $f10, $f6
/* ADA680 800634E0 E4840004 */  swc1  $f4, 4($a0)
/* ADA684 800634E4 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* ADA688 800634E8 C4E40008 */  lwc1  $f4, 8($a3)
/* ADA68C 800634EC 460A4180 */  add.s $f6, $f8, $f10
/* ADA690 800634F0 46043200 */  add.s $f8, $f6, $f4
/* ADA694 800634F4 10000034 */  b     .L800635C8
/* ADA698 800634F8 E4880008 */   swc1  $f8, 8($a0)
.L800634FC:
/* ADA69C 800634FC 14680018 */  bne   $v1, $t0, .L80063560
/* ADA6A0 80063500 C7AA0054 */   lwc1  $f10, 0x54($sp)
/* ADA6A4 80063504 460A8182 */  mul.s $f6, $f16, $f10
/* ADA6A8 80063508 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* ADA6AC 8006350C C4EA0000 */  lwc1  $f10, ($a3)
/* ADA6B0 80063510 8FA30090 */  lw    $v1, 0x90($sp)
/* ADA6B4 80063514 24020001 */  li    $v0, 1
/* ADA6B8 80063518 46043200 */  add.s $f8, $f6, $f4
/* ADA6BC 8006351C 460A4180 */  add.s $f6, $f8, $f10
/* ADA6C0 80063520 E4660000 */  swc1  $f6, ($v1)
/* ADA6C4 80063524 C7A40058 */  lwc1  $f4, 0x58($sp)
/* ADA6C8 80063528 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* ADA6CC 8006352C 46048202 */  mul.s $f8, $f16, $f4
/* ADA6D0 80063530 C4E40004 */  lwc1  $f4, 4($a3)
/* ADA6D4 80063534 460A4180 */  add.s $f6, $f8, $f10
/* ADA6D8 80063538 46043200 */  add.s $f8, $f6, $f4
/* ADA6DC 8006353C E4680004 */  swc1  $f8, 4($v1)
/* ADA6E0 80063540 C7AA005C */  lwc1  $f10, 0x5c($sp)
/* ADA6E4 80063544 C7A40074 */  lwc1  $f4, 0x74($sp)
/* ADA6E8 80063548 460A8182 */  mul.s $f6, $f16, $f10
/* ADA6EC 8006354C C4EA0008 */  lwc1  $f10, 8($a3)
/* ADA6F0 80063550 46043200 */  add.s $f8, $f6, $f4
/* ADA6F4 80063554 460A4180 */  add.s $f6, $f8, $f10
/* ADA6F8 80063558 1000001B */  b     .L800635C8
/* ADA6FC 8006355C E4660008 */   swc1  $f6, 8($v1)
.L80063560:
/* ADA700 80063560 14480018 */  bne   $v0, $t0, .L800635C4
/* ADA704 80063564 C7A40054 */   lwc1  $f4, 0x54($sp)
/* ADA708 80063568 46046202 */  mul.s $f8, $f12, $f4
/* ADA70C 8006356C C7AA006C */  lwc1  $f10, 0x6c($sp)
/* ADA710 80063570 C4E40000 */  lwc1  $f4, ($a3)
/* ADA714 80063574 8FA30090 */  lw    $v1, 0x90($sp)
/* ADA718 80063578 24020001 */  li    $v0, 1
/* ADA71C 8006357C 460A4180 */  add.s $f6, $f8, $f10
/* ADA720 80063580 46043200 */  add.s $f8, $f6, $f4
/* ADA724 80063584 E4680000 */  swc1  $f8, ($v1)
/* ADA728 80063588 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* ADA72C 8006358C C7A40070 */  lwc1  $f4, 0x70($sp)
/* ADA730 80063590 460A6182 */  mul.s $f6, $f12, $f10
/* ADA734 80063594 C4EA0004 */  lwc1  $f10, 4($a3)
/* ADA738 80063598 46043200 */  add.s $f8, $f6, $f4
/* ADA73C 8006359C 460A4180 */  add.s $f6, $f8, $f10
/* ADA740 800635A0 E4660004 */  swc1  $f6, 4($v1)
/* ADA744 800635A4 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* ADA748 800635A8 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* ADA74C 800635AC 46046202 */  mul.s $f8, $f12, $f4
/* ADA750 800635B0 C4E40008 */  lwc1  $f4, 8($a3)
/* ADA754 800635B4 460A4180 */  add.s $f6, $f8, $f10
/* ADA758 800635B8 46043200 */  add.s $f8, $f6, $f4
/* ADA75C 800635BC 10000002 */  b     .L800635C8
/* ADA760 800635C0 E4680008 */   swc1  $f8, 8($v1)
.L800635C4:
/* ADA764 800635C4 24020001 */  li    $v0, 1
.L800635C8:
/* ADA768 800635C8 03E00008 */  jr    $ra
/* ADA76C 800635CC 27BD0078 */   addiu $sp, $sp, 0x78

/* ADA770 800635D0 3C010040 */  lui   $at, (0x00400100 >> 16) # lui $at, 0x40
/* ADA774 800635D4 34210100 */  ori   $at, (0x00400100 & 0xFFFF) # ori $at, $at, 0x100
/* ADA778 800635D8 00817024 */  and   $t6, $a0, $at
/* ADA77C 800635DC 11C00003 */  beqz  $t6, .L800635EC
/* ADA780 800635E0 00001825 */   move  $v1, $zero
/* ADA784 800635E4 10000011 */  b     .L8006362C
/* ADA788 800635E8 24030001 */   li    $v1, 1
.L800635EC:
/* ADA78C 800635EC 3C010300 */  lui   $at, (0x03000242 >> 16) # lui $at, 0x300
/* ADA790 800635F0 34210242 */  ori   $at, (0x03000242 & 0xFFFF) # ori $at, $at, 0x242
/* ADA794 800635F4 00817824 */  and   $t7, $a0, $at
/* ADA798 800635F8 11E00003 */  beqz  $t7, .L80063608
/* ADA79C 800635FC 3C014880 */   lui   $at, (0x48800400 >> 16) # lui $at, 0x4880
/* ADA7A0 80063600 1000000A */  b     .L8006362C
/* ADA7A4 80063604 24030002 */   li    $v1, 2
.L80063608:
/* ADA7A8 80063608 34210400 */  ori   $at, (0x48800400 & 0xFFFF) # ori $at, $at, 0x400
/* ADA7AC 8006360C 0081C024 */  and   $t8, $a0, $at
/* ADA7B0 80063610 13000003 */  beqz  $t8, .L80063620
/* ADA7B4 80063614 0004C940 */   sll   $t9, $a0, 5
/* ADA7B8 80063618 10000004 */  b     .L8006362C
/* ADA7BC 8006361C 24030004 */   li    $v1, 4
.L80063620:
/* ADA7C0 80063620 07210002 */  bgez  $t9, .L8006362C
/* ADA7C4 80063624 00000000 */   nop   
/* ADA7C8 80063628 24030008 */  li    $v1, 8
.L8006362C:
/* ADA7CC 8006362C 3C088016 */  lui   $t0, %hi(D_8015FA90) # $t0, 0x8016
/* ADA7D0 80063630 8D08FA90 */  lw    $t0, %lo(D_8015FA90)($t0)
/* ADA7D4 80063634 00601025 */  move  $v0, $v1
/* ADA7D8 80063638 03E00008 */  jr    $ra
/* ADA7DC 8006363C A50309E2 */   sh    $v1, 0x9e2($t0)

glabel func_80063640
/* ADA7E0 80063640 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ADA7E4 80063644 AFBF0014 */  sw    $ra, 0x14($sp)
/* ADA7E8 80063648 3C048016 */  lui   $a0, %hi(D_8015E660) # $a0, 0x8016
/* ADA7EC 8006364C 2484E660 */  addiu $a0, %lo(D_8015E660) # addiu $a0, $a0, -0x19a0
/* ADA7F0 80063650 0C001114 */  jal   bzero
/* ADA7F4 80063654 24051428 */   li    $a1, 5160
/* ADA7F8 80063658 3C018016 */  lui   $at, %hi(D_8015FA88) # $at, 0x8016
/* ADA7FC 8006365C AC20FA88 */  sw    $zero, %lo(D_8015FA88)($at)
/* ADA800 80063660 3C048016 */  lui   $a0, %hi(D_8015E660) # $a0, 0x8016
/* ADA804 80063664 3C018016 */  lui   $at, %hi(D_8015FA8C) # $at, 0x8016
/* ADA808 80063668 2484E660 */  addiu $a0, %lo(D_8015E660) # addiu $a0, $a0, -0x19a0
/* ADA80C 8006366C AC20FA8C */  sw    $zero, %lo(D_8015FA8C)($at)
/* ADA810 80063670 8FBF0014 */  lw    $ra, 0x14($sp)
/* ADA814 80063674 240200FF */  li    $v0, 255
/* ADA818 80063678 340EFFEF */  li    $t6, 65519
/* ADA81C 8006367C 340FFFFF */  li    $t7, 65535
/* ADA820 80063680 24180001 */  li    $t8, 1
/* ADA824 80063684 24190032 */  li    $t9, 50
/* ADA828 80063688 A08213E0 */  sb    $v0, 0x13e0($a0)
/* ADA82C 8006368C A08213E1 */  sb    $v0, 0x13e1($a0)
/* ADA830 80063690 A480140E */  sh    $zero, 0x140e($a0)
/* ADA834 80063694 A48E1412 */  sh    $t6, 0x1412($a0)
/* ADA838 80063698 A0801414 */  sb    $zero, 0x1414($a0)
/* ADA83C 8006369C A0801415 */  sb    $zero, 0x1415($a0)
/* ADA840 800636A0 A48F1416 */  sh    $t7, 0x1416($a0)
/* ADA844 800636A4 A480141A */  sh    $zero, 0x141a($a0)
/* ADA848 800636A8 A098141C */  sb    $t8, 0x141c($a0)
/* ADA84C 800636AC A082141D */  sb    $v0, 0x141d($a0)
/* ADA850 800636B0 A49913EE */  sh    $t9, 0x13ee($a0)
/* ADA854 800636B4 03E00008 */  jr    $ra
/* ADA858 800636B8 27BD0018 */   addiu $sp, $sp, 0x18
