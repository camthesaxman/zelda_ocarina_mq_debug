.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80092320
/* B094C0 80092320 AC800098 */  sw    $zero, 0x98($a0)
/* B094C4 80092324 AC80000C */  sw    $zero, 0xc($a0)
/* B094C8 80092328 03E00008 */  jr    $ra
/* B094CC 8009232C AC800010 */   sw    $zero, 0x10($a0)

glabel func_80092330
/* B094D0 80092330 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B094D4 80092334 AFA40018 */  sw    $a0, 0x18($sp)
/* B094D8 80092338 AFBF0014 */  sw    $ra, 0x14($sp)
/* B094DC 8009233C 3C048014 */  lui   $a0, %hi(D_8013E960) # $a0, 0x8014
/* B094E0 80092340 0C00084C */  jal   DebugMessage
/* B094E4 80092344 2484E960 */   addiu $a0, %lo(D_8013E960) # addiu $a0, $a0, -0x16a0
/* B094E8 80092348 8FA50018 */  lw    $a1, 0x18($sp)
/* B094EC 8009234C 8CA200A4 */  lw    $v0, 0xa4($a1)
/* B094F0 80092350 14400007 */  bnez  $v0, .L80092370
/* B094F4 80092354 244EFFFF */   addiu $t6, $v0, -1
/* B094F8 80092358 0C000284 */  jal   func_80000A10
/* B094FC 8009235C 24040001 */   li    $a0, 1
/* B09500 80092360 0C0248C8 */  jal   func_80092320
/* B09504 80092364 8FA40018 */   lw    $a0, 0x18($sp)
/* B09508 80092368 10000003 */  b     .L80092378
/* B0950C 8009236C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80092370:
/* B09510 80092370 ACAE00A4 */  sw    $t6, 0xa4($a1)
/* B09514 80092374 8FBF0014 */  lw    $ra, 0x14($sp)
.L80092378:
/* B09518 80092378 27BD0018 */  addiu $sp, $sp, 0x18
/* B0951C 8009237C 03E00008 */  jr    $ra
/* B09520 80092380 00000000 */   nop   

glabel func_80092384
/* B09524 80092384 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B09528 80092388 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0952C 8009238C AFB00018 */  sw    $s0, 0x18($sp)
/* B09530 80092390 AFA40048 */  sw    $a0, 0x48($sp)
/* B09534 80092394 8C900000 */  lw    $s0, ($a0)
/* B09538 80092398 3C048014 */  lui   $a0, %hi(D_8013E99C) # $a0, 0x8014
/* B0953C 8009239C 0C00084C */  jal   DebugMessage
/* B09540 800923A0 2484E99C */   addiu $a0, %lo(D_8013E99C) # addiu $a0, $a0, -0x1664
/* B09544 800923A4 3C068014 */  lui   $a2, %hi(D_8013E9B4) # $a2, 0x8014
/* B09548 800923A8 24C6E9B4 */  addiu $a2, %lo(D_8013E9B4) # addiu $a2, $a2, -0x164c
/* B0954C 800923AC 27A40030 */  addiu $a0, $sp, 0x30
/* B09550 800923B0 02002825 */  move  $a1, $s0
/* B09554 800923B4 0C031AB1 */  jal   func_800C6AC4
/* B09558 800923B8 24070060 */   li    $a3, 96
/* B0955C 800923BC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B09560 800923C0 3C18DB06 */  lui   $t8, 0xdb06
/* B09564 800923C4 02002025 */  move  $a0, $s0
/* B09568 800923C8 244F0008 */  addiu $t7, $v0, 8
/* B0956C 800923CC AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B09570 800923D0 00002825 */  move  $a1, $zero
/* B09574 800923D4 00003025 */  move  $a2, $zero
/* B09578 800923D8 00003825 */  move  $a3, $zero
/* B0957C 800923DC AC400004 */  sw    $zero, 4($v0)
/* B09580 800923E0 0C025492 */  jal   func_80095248
/* B09584 800923E4 AC580000 */   sw    $t8, ($v0)
/* B09588 800923E8 0C02502C */  jal   func_800940B0
/* B0958C 800923EC 02002025 */   move  $a0, $s0
/* B09590 800923F0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B09594 800923F4 3C08F700 */  lui   $t0, 0xf700
/* B09598 800923F8 2409FFFF */  li    $t1, -1
/* B0959C 800923FC 24590008 */  addiu $t9, $v0, 8
/* B095A0 80092400 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B095A4 80092404 AC490004 */  sw    $t1, 4($v0)
/* B095A8 80092408 AC480000 */  sw    $t0, ($v0)
/* B095AC 8009240C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B095B0 80092410 8FA40048 */  lw    $a0, 0x48($sp)
/* B095B4 80092414 3C01F64F */  lui   $at, (0xF64FC000 >> 16) # lui $at, 0xf64f
/* B095B8 80092418 244A0008 */  addiu $t2, $v0, 8
/* B095BC 8009241C AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* B095C0 80092420 8C8B00A4 */  lw    $t3, 0xa4($a0)
/* B095C4 80092424 3421C000 */  ori   $at, (0xF64FC000 & 0xFFFF) # ori $at, $at, 0xc000
/* B095C8 80092428 3C068014 */  lui   $a2, %hi(D_8013E9C4) # $a2, 0x8014
/* B095CC 8009242C 256C0064 */  addiu $t4, $t3, 0x64
/* B095D0 80092430 318D03FF */  andi  $t5, $t4, 0x3ff
/* B095D4 80092434 000D7080 */  sll   $t6, $t5, 2
/* B095D8 80092438 01C17825 */  or    $t7, $t6, $at
/* B095DC 8009243C AC4F0000 */  sw    $t7, ($v0)
/* B095E0 80092440 8C9800A4 */  lw    $t8, 0xa4($a0)
/* B095E4 80092444 27A40030 */  addiu $a0, $sp, 0x30
/* B095E8 80092448 24C6E9C4 */  addiu $a2, %lo(D_8013E9C4) # addiu $a2, $a2, -0x163c
/* B095EC 8009244C 27190064 */  addiu $t9, $t8, 0x64
/* B095F0 80092450 332803FF */  andi  $t0, $t9, 0x3ff
/* B095F4 80092454 00084880 */  sll   $t1, $t0, 2
/* B095F8 80092458 02002825 */  move  $a1, $s0
/* B095FC 8009245C 24070070 */  li    $a3, 112
/* B09600 80092460 0C031AD5 */  jal   func_800C6B54
/* B09604 80092464 AC490004 */   sw    $t1, 4($v0)
/* B09608 80092468 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0960C 8009246C 8FB00018 */  lw    $s0, 0x18($sp)
/* B09610 80092470 27BD0048 */  addiu $sp, $sp, 0x48
/* B09614 80092474 03E00008 */  jr    $ra
/* B09618 80092478 00000000 */   nop   

glabel func_8009247C
/* B0961C 8009247C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B09620 80092480 AFBF0014 */  sw    $ra, 0x14($sp)
/* B09624 80092484 0C0248CC */  jal   func_80092330
/* B09628 80092488 AFA40018 */   sw    $a0, 0x18($sp)
/* B0962C 8009248C 0C0248E1 */  jal   func_80092384
/* B09630 80092490 8FA40018 */   lw    $a0, 0x18($sp)
/* B09634 80092494 8FAF0018 */  lw    $t7, 0x18($sp)
/* B09638 80092498 240E0001 */  li    $t6, 1
/* B0963C 8009249C ADEE00A0 */  sw    $t6, 0xa0($t7)
/* B09640 800924A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B09644 800924A4 27BD0018 */  addiu $sp, $sp, 0x18
/* B09648 800924A8 03E00008 */  jr    $ra
/* B0964C 800924AC 00000000 */   nop   

glabel func_800924B0
/* B09650 800924B0 03E00008 */  jr    $ra
/* B09654 800924B4 AFA40000 */   sw    $a0, ($sp)

glabel func_800924B8
/* B09658 800924B8 3C0E8009 */  lui   $t6, %hi(func_8009247C) # $t6, 0x8009
/* B0965C 800924BC 3C0F8009 */  lui   $t7, %hi(func_800924B0) # $t7, 0x8009
/* B09660 800924C0 25CE247C */  addiu $t6, %lo(func_8009247C) # addiu $t6, $t6, 0x247c
/* B09664 800924C4 25EF24B0 */  addiu $t7, %lo(func_800924B0) # addiu $t7, $t7, 0x24b0
/* B09668 800924C8 2418001E */  li    $t8, 30
/* B0966C 800924CC 2419000A */  li    $t9, 10
/* B09670 800924D0 AC8E0004 */  sw    $t6, 4($a0)
/* B09674 800924D4 AC8F0008 */  sw    $t7, 8($a0)
/* B09678 800924D8 AC9800A4 */  sw    $t8, 0xa4($a0)
/* B0967C 800924DC AC9900A8 */  sw    $t9, 0xa8($a0)
/* B09680 800924E0 3C098016 */  lui   $t1, %hi(D_8015FA90) # $t1, 0x8016
/* B09684 800924E4 8D29FA90 */  lw    $t1, %lo(D_8015FA90)($t1)
/* B09688 800924E8 24080001 */  li    $t0, 1
/* B0968C 800924EC 03E00008 */  jr    $ra
/* B09690 800924F0 A5280110 */   sh    $t0, 0x110($t1)
