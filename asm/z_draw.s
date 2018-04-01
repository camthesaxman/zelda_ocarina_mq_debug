.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800694A0
/* AE0640 800694A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AE0644 800694A4 AFA5001C */  sw    $a1, 0x1c($sp)
/* AE0648 800694A8 00052C00 */  sll   $a1, $a1, 0x10
/* AE064C 800694AC 00052C03 */  sra   $a1, $a1, 0x10
/* AE0650 800694B0 000570C0 */  sll   $t6, $a1, 3
/* AE0654 800694B4 01C57021 */  addu  $t6, $t6, $a1
/* AE0658 800694B8 000E7080 */  sll   $t6, $t6, 2
/* AE065C 800694BC 3C198012 */  lui   $t9, 0x8012
/* AE0660 800694C0 032EC821 */  addu  $t9, $t9, $t6
/* AE0664 800694C4 8F39E320 */  lw    $t9, -0x1ce0($t9)
/* AE0668 800694C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AE066C 800694CC 0320F809 */  jalr  $t9
/* AE0670 800694D0 00000000 */  nop   
/* AE0674 800694D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AE0678 800694D8 27BD0018 */  addiu $sp, $sp, 0x18
/* AE067C 800694DC 03E00008 */  jr    $ra
/* AE0680 800694E0 00000000 */   nop   

/* AE0684 800694E4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AE0688 800694E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE068C 800694EC AFB00018 */  sw    $s0, 0x18($sp)
/* AE0690 800694F0 AFA40048 */  sw    $a0, 0x48($sp)
/* AE0694 800694F4 AFA5004C */  sw    $a1, 0x4c($sp)
/* AE0698 800694F8 8C850000 */  lw    $a1, ($a0)
/* AE069C 800694FC 3C068014 */  lui   $a2, %hi(D_8013B3D0) # $a2, 0x8014
/* AE06A0 80069500 24C6B3D0 */  addiu $a2, %lo(D_8013B3D0) # addiu $a2, $a2, -0x4c30
/* AE06A4 80069504 27A40030 */  addiu $a0, $sp, 0x30
/* AE06A8 80069508 2407022C */  li    $a3, 556
/* AE06AC 8006950C 0C031AB1 */  jal   func_800C6AC4
/* AE06B0 80069510 00A08025 */   move  $s0, $a1
/* AE06B4 80069514 8FAF0048 */  lw    $t7, 0x48($sp)
/* AE06B8 80069518 0C024EEA */  jal   func_80093BA8
/* AE06BC 8006951C 8DE40000 */   lw    $a0, ($t7)
/* AE06C0 80069520 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE06C4 80069524 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE06C8 80069528 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE06CC 8006952C 24580008 */  addiu $t8, $v0, 8
/* AE06D0 80069530 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE06D4 80069534 AC590000 */  sw    $t9, ($v0)
/* AE06D8 80069538 8FA80048 */  lw    $t0, 0x48($sp)
/* AE06DC 8006953C 3C058014 */  lui   $a1, %hi(D_8013B3DC) # $a1, 0x8014
/* AE06E0 80069540 24A5B3DC */  addiu $a1, %lo(D_8013B3DC) # addiu $a1, $a1, -0x4c24
/* AE06E4 80069544 8D040000 */  lw    $a0, ($t0)
/* AE06E8 80069548 24060230 */  li    $a2, 560
/* AE06EC 8006954C 0C0346A2 */  jal   func_800D1A88
/* AE06F0 80069550 AFA2002C */   sw    $v0, 0x2c($sp)
/* AE06F4 80069554 8FA3002C */  lw    $v1, 0x2c($sp)
/* AE06F8 80069558 3C0ADE00 */  lui   $t2, 0xde00
/* AE06FC 8006955C 3C0D8012 */  lui   $t5, 0x8012
/* AE0700 80069560 AC620004 */  sw    $v0, 4($v1)
/* AE0704 80069564 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0708 80069568 3C068014 */  lui   $a2, %hi(D_8013B3E8) # $a2, 0x8014
/* AE070C 8006956C 24C6B3E8 */  addiu $a2, %lo(D_8013B3E8) # addiu $a2, $a2, -0x4c18
/* AE0710 80069570 24490008 */  addiu $t1, $v0, 8
/* AE0714 80069574 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AE0718 80069578 AC4A0000 */  sw    $t2, ($v0)
/* AE071C 8006957C 87AB004E */  lh    $t3, 0x4e($sp)
/* AE0720 80069580 27A40030 */  addiu $a0, $sp, 0x30
/* AE0724 80069584 24070235 */  li    $a3, 565
/* AE0728 80069588 000B60C0 */  sll   $t4, $t3, 3
/* AE072C 8006958C 018B6021 */  addu  $t4, $t4, $t3
/* AE0730 80069590 000C6080 */  sll   $t4, $t4, 2
/* AE0734 80069594 01AC6821 */  addu  $t5, $t5, $t4
/* AE0738 80069598 8DADE324 */  lw    $t5, -0x1cdc($t5)
/* AE073C 8006959C AC4D0004 */  sw    $t5, 4($v0)
/* AE0740 800695A0 8FAE0048 */  lw    $t6, 0x48($sp)
/* AE0744 800695A4 0C031AD5 */  jal   func_800C6B54
/* AE0748 800695A8 8DC50000 */   lw    $a1, ($t6)
/* AE074C 800695AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE0750 800695B0 8FB00018 */  lw    $s0, 0x18($sp)
/* AE0754 800695B4 27BD0048 */  addiu $sp, $sp, 0x48
/* AE0758 800695B8 03E00008 */  jr    $ra
/* AE075C 800695BC 00000000 */   nop   

/* AE0760 800695C0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AE0764 800695C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE0768 800695C8 AFB00018 */  sw    $s0, 0x18($sp)
/* AE076C 800695CC AFA40048 */  sw    $a0, 0x48($sp)
/* AE0770 800695D0 AFA5004C */  sw    $a1, 0x4c($sp)
/* AE0774 800695D4 8C850000 */  lw    $a1, ($a0)
/* AE0778 800695D8 3C068014 */  lui   $a2, %hi(D_8013B3F4) # $a2, 0x8014
/* AE077C 800695DC 24C6B3F4 */  addiu $a2, %lo(D_8013B3F4) # addiu $a2, $a2, -0x4c0c
/* AE0780 800695E0 27A40030 */  addiu $a0, $sp, 0x30
/* AE0784 800695E4 2407023C */  li    $a3, 572
/* AE0788 800695E8 0C031AB1 */  jal   func_800C6AC4
/* AE078C 800695EC 00A08025 */   move  $s0, $a1
/* AE0790 800695F0 8E0402D0 */  lw    $a0, 0x2d0($s0)
/* AE0794 800695F4 0C024DDD */  jal   func_80093774
/* AE0798 800695F8 24050005 */   li    $a1, 5
/* AE079C 800695FC AE0202D0 */  sw    $v0, 0x2d0($s0)
/* AE07A0 80069600 244F0008 */  addiu $t7, $v0, 8
/* AE07A4 80069604 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* AE07A8 80069608 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* AE07AC 8006960C AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE07B0 80069610 AC580000 */  sw    $t8, ($v0)
/* AE07B4 80069614 8FB90048 */  lw    $t9, 0x48($sp)
/* AE07B8 80069618 3C058014 */  lui   $a1, %hi(D_8013B400) # $a1, 0x8014
/* AE07BC 8006961C 24A5B400 */  addiu $a1, %lo(D_8013B400) # addiu $a1, $a1, -0x4c00
/* AE07C0 80069620 8F240000 */  lw    $a0, ($t9)
/* AE07C4 80069624 AFA2002C */  sw    $v0, 0x2c($sp)
/* AE07C8 80069628 0C0346A2 */  jal   func_800D1A88
/* AE07CC 8006962C 24060240 */   li    $a2, 576
/* AE07D0 80069630 8FA3002C */  lw    $v1, 0x2c($sp)
/* AE07D4 80069634 3C09DE00 */  lui   $t1, 0xde00
/* AE07D8 80069638 3C0C8012 */  lui   $t4, 0x8012
/* AE07DC 8006963C AC620004 */  sw    $v0, 4($v1)
/* AE07E0 80069640 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE07E4 80069644 3C068014 */  lui   $a2, %hi(D_8013B40C) # $a2, 0x8014
/* AE07E8 80069648 24C6B40C */  addiu $a2, %lo(D_8013B40C) # addiu $a2, $a2, -0x4bf4
/* AE07EC 8006964C 24480008 */  addiu $t0, $v0, 8
/* AE07F0 80069650 AE0802D0 */  sw    $t0, 0x2d0($s0)
/* AE07F4 80069654 AC490000 */  sw    $t1, ($v0)
/* AE07F8 80069658 87AA004E */  lh    $t2, 0x4e($sp)
/* AE07FC 8006965C 27A40030 */  addiu $a0, $sp, 0x30
/* AE0800 80069660 24070245 */  li    $a3, 581
/* AE0804 80069664 000A58C0 */  sll   $t3, $t2, 3
/* AE0808 80069668 016A5821 */  addu  $t3, $t3, $t2
/* AE080C 8006966C 000B5880 */  sll   $t3, $t3, 2
/* AE0810 80069670 018B6021 */  addu  $t4, $t4, $t3
/* AE0814 80069674 8D8CE324 */  lw    $t4, -0x1cdc($t4)
/* AE0818 80069678 AC4C0004 */  sw    $t4, 4($v0)
/* AE081C 8006967C 8FAD0048 */  lw    $t5, 0x48($sp)
/* AE0820 80069680 0C031AD5 */  jal   func_800C6B54
/* AE0824 80069684 8DA50000 */   lw    $a1, ($t5)
/* AE0828 80069688 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE082C 8006968C 8FB00018 */  lw    $s0, 0x18($sp)
/* AE0830 80069690 27BD0048 */  addiu $sp, $sp, 0x48
/* AE0834 80069694 03E00008 */  jr    $ra
/* AE0838 80069698 00000000 */   nop   

/* AE083C 8006969C 27BDFF88 */  addiu $sp, $sp, -0x78
/* AE0840 800696A0 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE0844 800696A4 AFB10038 */  sw    $s1, 0x38($sp)
/* AE0848 800696A8 AFB00034 */  sw    $s0, 0x34($sp)
/* AE084C 800696AC AFA5007C */  sw    $a1, 0x7c($sp)
/* AE0850 800696B0 8C850000 */  lw    $a1, ($a0)
/* AE0854 800696B4 00808825 */  move  $s1, $a0
/* AE0858 800696B8 3C068014 */  lui   $a2, %hi(D_8013B418) # $a2, 0x8014
/* AE085C 800696BC 24C6B418 */  addiu $a2, %lo(D_8013B418) # addiu $a2, $a2, -0x4be8
/* AE0860 800696C0 27A40060 */  addiu $a0, $sp, 0x60
/* AE0864 800696C4 2407024C */  li    $a3, 588
/* AE0868 800696C8 0C031AB1 */  jal   func_800C6AC4
/* AE086C 800696CC 00A08025 */   move  $s0, $a1
/* AE0870 800696D0 0C024F46 */  jal   func_80093D18
/* AE0874 800696D4 8E240000 */   lw    $a0, ($s1)
/* AE0878 800696D8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE087C 800696DC 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE0880 800696E0 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE0884 800696E4 244E0008 */  addiu $t6, $v0, 8
/* AE0888 800696E8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE088C 800696EC AC4F0000 */  sw    $t7, ($v0)
/* AE0890 800696F0 8E240000 */  lw    $a0, ($s1)
/* AE0894 800696F4 3C058014 */  lui   $a1, %hi(D_8013B424) # $a1, 0x8014
/* AE0898 800696F8 24A5B424 */  addiu $a1, %lo(D_8013B424) # addiu $a1, $a1, -0x4bdc
/* AE089C 800696FC 24060250 */  li    $a2, 592
/* AE08A0 80069700 0C0346A2 */  jal   func_800D1A88
/* AE08A4 80069704 AFA2005C */   sw    $v0, 0x5c($sp)
/* AE08A8 80069708 8FA3005C */  lw    $v1, 0x5c($sp)
/* AE08AC 8006970C 3C19DE00 */  lui   $t9, 0xde00
/* AE08B0 80069710 3C0B8012 */  lui   $t3, %hi(D_8011E320) # $t3, 0x8012
/* AE08B4 80069714 AC620004 */  sw    $v0, 4($v1)
/* AE08B8 80069718 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE08BC 8006971C 256BE320 */  addiu $t3, %lo(D_8011E320) # addiu $t3, $t3, -0x1ce0
/* AE08C0 80069720 24580008 */  addiu $t8, $v0, 8
/* AE08C4 80069724 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE08C8 80069728 AC590000 */  sw    $t9, ($v0)
/* AE08CC 8006972C 87A9007E */  lh    $t1, 0x7e($sp)
/* AE08D0 80069730 000950C0 */  sll   $t2, $t1, 3
/* AE08D4 80069734 01495021 */  addu  $t2, $t2, $t1
/* AE08D8 80069738 000A5080 */  sll   $t2, $t2, 2
/* AE08DC 8006973C 014B2821 */  addu  $a1, $t2, $t3
/* AE08E0 80069740 8CAC0004 */  lw    $t4, 4($a1)
/* AE08E4 80069744 AC4C0004 */  sw    $t4, 4($v0)
/* AE08E8 80069748 8E240000 */  lw    $a0, ($s1)
/* AE08EC 8006974C 0C024F61 */  jal   func_80093D84
/* AE08F0 80069750 AFA50048 */   sw    $a1, 0x48($sp)
/* AE08F4 80069754 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE08F8 80069758 3C0EDB06 */  lui   $t6, (0xDB060020 >> 16) # lui $t6, 0xdb06
/* AE08FC 8006975C 35CE0020 */  ori   $t6, (0xDB060020 & 0xFFFF) # ori $t6, $t6, 0x20
/* AE0900 80069760 244D0008 */  addiu $t5, $v0, 8
/* AE0904 80069764 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE0908 80069768 AC4E0000 */  sw    $t6, ($v0)
/* AE090C 8006976C 8E23009C */  lw    $v1, 0x9c($s1)
/* AE0910 80069770 8E240000 */  lw    $a0, ($s1)
/* AE0914 80069774 240F0010 */  li    $t7, 16
/* AE0918 80069778 000348C0 */  sll   $t1, $v1, 3
/* AE091C 8006977C 00095023 */  negu  $t2, $t1
/* AE0920 80069780 24180020 */  li    $t8, 32
/* AE0924 80069784 24190001 */  li    $t9, 1
/* AE0928 80069788 240B0010 */  li    $t3, 16
/* AE092C 8006978C 240C0020 */  li    $t4, 32
/* AE0930 80069790 AFAC0028 */  sw    $t4, 0x28($sp)
/* AE0934 80069794 AFAB0024 */  sw    $t3, 0x24($sp)
/* AE0938 80069798 AFB90018 */  sw    $t9, 0x18($sp)
/* AE093C 8006979C AFB80014 */  sw    $t8, 0x14($sp)
/* AE0940 800697A0 AFAA0020 */  sw    $t2, 0x20($sp)
/* AE0944 800697A4 AFAF0010 */  sw    $t7, 0x10($sp)
/* AE0948 800697A8 00002825 */  move  $a1, $zero
/* AE094C 800697AC 00003025 */  move  $a2, $zero
/* AE0950 800697B0 00003825 */  move  $a3, $zero
/* AE0954 800697B4 AFA20054 */  sw    $v0, 0x54($sp)
/* AE0958 800697B8 0C0253D0 */  jal   func_80094F40
/* AE095C 800697BC AFA3001C */   sw    $v1, 0x1c($sp)
/* AE0960 800697C0 8FA80054 */  lw    $t0, 0x54($sp)
/* AE0964 800697C4 0C034213 */  jal   func_800D084C
/* AE0968 800697C8 AD020004 */   sw    $v0, 4($t0)
/* AE096C 800697CC 3C01C100 */  li    $at, 0xC1000000 # 0.000000
/* AE0970 800697D0 44816000 */  mtc1  $at, $f12
/* AE0974 800697D4 3C01C000 */  li    $at, 0xC0000000 # 0.000000
/* AE0978 800697D8 44817000 */  mtc1  $at, $f14
/* AE097C 800697DC 24060000 */  li    $a2, 0
/* AE0980 800697E0 0C034261 */  jal   func_800D0984
/* AE0984 800697E4 24070001 */   li    $a3, 1
/* AE0988 800697E8 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* AE098C 800697EC 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* AE0990 800697F0 0C0347F5 */  jal   func_800D1FD4
/* AE0994 800697F4 02212021 */   addu  $a0, $s1, $at
/* AE0998 800697F8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE099C 800697FC 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* AE09A0 80069800 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* AE09A4 80069804 244D0008 */  addiu $t5, $v0, 8
/* AE09A8 80069808 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE09AC 8006980C AC4E0000 */  sw    $t6, ($v0)
/* AE09B0 80069810 8E240000 */  lw    $a0, ($s1)
/* AE09B4 80069814 3C058014 */  lui   $a1, %hi(D_8013B430) # $a1, 0x8014
/* AE09B8 80069818 24A5B430 */  addiu $a1, %lo(D_8013B430) # addiu $a1, $a1, -0x4bd0
/* AE09BC 8006981C 24060267 */  li    $a2, 615
/* AE09C0 80069820 0C0346A2 */  jal   func_800D1A88
/* AE09C4 80069824 AFA20050 */   sw    $v0, 0x50($sp)
/* AE09C8 80069828 8FA30050 */  lw    $v1, 0x50($sp)
/* AE09CC 8006982C 3C18DE00 */  lui   $t8, 0xde00
/* AE09D0 80069830 AC620004 */  sw    $v0, 4($v1)
/* AE09D4 80069834 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE09D8 80069838 244F0008 */  addiu $t7, $v0, 8
/* AE09DC 8006983C AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE09E0 80069840 AC580000 */  sw    $t8, ($v0)
/* AE09E4 80069844 8FB90048 */  lw    $t9, 0x48($sp)
/* AE09E8 80069848 8F290008 */  lw    $t1, 8($t9)
/* AE09EC 8006984C 0C034221 */  jal   func_800D0884
/* AE09F0 80069850 AC490004 */   sw    $t1, 4($v0)
/* AE09F4 80069854 3C068014 */  lui   $a2, %hi(D_8013B43C) # $a2, 0x8014
/* AE09F8 80069858 24C6B43C */  addiu $a2, %lo(D_8013B43C) # addiu $a2, $a2, -0x4bc4
/* AE09FC 8006985C 27A40060 */  addiu $a0, $sp, 0x60
/* AE0A00 80069860 8E250000 */  lw    $a1, ($s1)
/* AE0A04 80069864 0C031AD5 */  jal   func_800C6B54
/* AE0A08 80069868 2407026D */   li    $a3, 621
/* AE0A0C 8006986C 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE0A10 80069870 8FB00034 */  lw    $s0, 0x34($sp)
/* AE0A14 80069874 8FB10038 */  lw    $s1, 0x38($sp)
/* AE0A18 80069878 03E00008 */  jr    $ra
/* AE0A1C 8006987C 27BD0078 */   addiu $sp, $sp, 0x78

/* AE0A20 80069880 27BDFF78 */  addiu $sp, $sp, -0x88
/* AE0A24 80069884 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE0A28 80069888 AFB10038 */  sw    $s1, 0x38($sp)
/* AE0A2C 8006988C AFB00034 */  sw    $s0, 0x34($sp)
/* AE0A30 80069890 AFA5008C */  sw    $a1, 0x8c($sp)
/* AE0A34 80069894 8C850000 */  lw    $a1, ($a0)
/* AE0A38 80069898 00808825 */  move  $s1, $a0
/* AE0A3C 8006989C 3C068014 */  lui   $a2, %hi(D_8013B448) # $a2, 0x8014
/* AE0A40 800698A0 24C6B448 */  addiu $a2, %lo(D_8013B448) # addiu $a2, $a2, -0x4bb8
/* AE0A44 800698A4 27A40070 */  addiu $a0, $sp, 0x70
/* AE0A48 800698A8 24070274 */  li    $a3, 628
/* AE0A4C 800698AC 0C031AB1 */  jal   func_800C6AC4
/* AE0A50 800698B0 00A08025 */   move  $s0, $a1
/* AE0A54 800698B4 0C024F46 */  jal   func_80093D18
/* AE0A58 800698B8 8E240000 */   lw    $a0, ($s1)
/* AE0A5C 800698BC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0A60 800698C0 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE0A64 800698C4 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE0A68 800698C8 244E0008 */  addiu $t6, $v0, 8
/* AE0A6C 800698CC AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE0A70 800698D0 AC4F0000 */  sw    $t7, ($v0)
/* AE0A74 800698D4 8E240000 */  lw    $a0, ($s1)
/* AE0A78 800698D8 3C058014 */  lui   $a1, %hi(D_8013B454) # $a1, 0x8014
/* AE0A7C 800698DC 24A5B454 */  addiu $a1, %lo(D_8013B454) # addiu $a1, $a1, -0x4bac
/* AE0A80 800698E0 24060278 */  li    $a2, 632
/* AE0A84 800698E4 0C0346A2 */  jal   func_800D1A88
/* AE0A88 800698E8 AFA2006C */   sw    $v0, 0x6c($sp)
/* AE0A8C 800698EC 8FA3006C */  lw    $v1, 0x6c($sp)
/* AE0A90 800698F0 3C19DE00 */  lui   $t9, 0xde00
/* AE0A94 800698F4 3C0B8012 */  lui   $t3, %hi(D_8011E320) # $t3, 0x8012
/* AE0A98 800698F8 AC620004 */  sw    $v0, 4($v1)
/* AE0A9C 800698FC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0AA0 80069900 256BE320 */  addiu $t3, %lo(D_8011E320) # addiu $t3, $t3, -0x1ce0
/* AE0AA4 80069904 24580008 */  addiu $t8, $v0, 8
/* AE0AA8 80069908 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE0AAC 8006990C AC590000 */  sw    $t9, ($v0)
/* AE0AB0 80069910 87A9008E */  lh    $t1, 0x8e($sp)
/* AE0AB4 80069914 000950C0 */  sll   $t2, $t1, 3
/* AE0AB8 80069918 01495021 */  addu  $t2, $t2, $t1
/* AE0ABC 8006991C 000A5080 */  sll   $t2, $t2, 2
/* AE0AC0 80069920 014B2821 */  addu  $a1, $t2, $t3
/* AE0AC4 80069924 8CAC0004 */  lw    $t4, 4($a1)
/* AE0AC8 80069928 AC4C0004 */  sw    $t4, 4($v0)
/* AE0ACC 8006992C 8E240000 */  lw    $a0, ($s1)
/* AE0AD0 80069930 0C024F61 */  jal   func_80093D84
/* AE0AD4 80069934 AFA5004C */   sw    $a1, 0x4c($sp)
/* AE0AD8 80069938 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0ADC 8006993C 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* AE0AE0 80069940 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* AE0AE4 80069944 244D0008 */  addiu $t5, $v0, 8
/* AE0AE8 80069948 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE0AEC 8006994C AC4E0000 */  sw    $t6, ($v0)
/* AE0AF0 80069950 8E240000 */  lw    $a0, ($s1)
/* AE0AF4 80069954 3C058014 */  lui   $a1, %hi(D_8013B460) # $a1, 0x8014
/* AE0AF8 80069958 24A5B460 */  addiu $a1, %lo(D_8013B460) # addiu $a1, $a1, -0x4ba0
/* AE0AFC 8006995C 24060281 */  li    $a2, 641
/* AE0B00 80069960 0C0346A2 */  jal   func_800D1A88
/* AE0B04 80069964 AFA20064 */   sw    $v0, 0x64($sp)
/* AE0B08 80069968 8FA30064 */  lw    $v1, 0x64($sp)
/* AE0B0C 8006996C 3C18DE00 */  lui   $t8, 0xde00
/* AE0B10 80069970 3C0BDB06 */  lui   $t3, (0xDB060020 >> 16) # lui $t3, 0xdb06
/* AE0B14 80069974 AC620004 */  sw    $v0, 4($v1)
/* AE0B18 80069978 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0B1C 8006997C 356B0020 */  ori   $t3, (0xDB060020 & 0xFFFF) # ori $t3, $t3, 0x20
/* AE0B20 80069980 240C0010 */  li    $t4, 16
/* AE0B24 80069984 244F0008 */  addiu $t7, $v0, 8
/* AE0B28 80069988 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE0B2C 8006998C AC580000 */  sw    $t8, ($v0)
/* AE0B30 80069990 8FB9004C */  lw    $t9, 0x4c($sp)
/* AE0B34 80069994 240D0020 */  li    $t5, 32
/* AE0B38 80069998 240E0001 */  li    $t6, 1
/* AE0B3C 8006999C 8F290008 */  lw    $t1, 8($t9)
/* AE0B40 800699A0 24190010 */  li    $t9, 16
/* AE0B44 800699A4 00002825 */  move  $a1, $zero
/* AE0B48 800699A8 AC490004 */  sw    $t1, 4($v0)
/* AE0B4C 800699AC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0B50 800699B0 24090020 */  li    $t1, 32
/* AE0B54 800699B4 00003025 */  move  $a2, $zero
/* AE0B58 800699B8 244A0008 */  addiu $t2, $v0, 8
/* AE0B5C 800699BC AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* AE0B60 800699C0 AC4B0000 */  sw    $t3, ($v0)
/* AE0B64 800699C4 8E23009C */  lw    $v1, 0x9c($s1)
/* AE0B68 800699C8 8E240000 */  lw    $a0, ($s1)
/* AE0B6C 800699CC AFA90028 */  sw    $t1, 0x28($sp)
/* AE0B70 800699D0 00037880 */  sll   $t7, $v1, 2
/* AE0B74 800699D4 01E37823 */  subu  $t7, $t7, $v1
/* AE0B78 800699D8 000F7840 */  sll   $t7, $t7, 1
/* AE0B7C 800699DC 000FC023 */  negu  $t8, $t7
/* AE0B80 800699E0 AFB80020 */  sw    $t8, 0x20($sp)
/* AE0B84 800699E4 AFB90024 */  sw    $t9, 0x24($sp)
/* AE0B88 800699E8 AFAE0018 */  sw    $t6, 0x18($sp)
/* AE0B8C 800699EC AFAD0014 */  sw    $t5, 0x14($sp)
/* AE0B90 800699F0 AFAC0010 */  sw    $t4, 0x10($sp)
/* AE0B94 800699F4 00003825 */  move  $a3, $zero
/* AE0B98 800699F8 AFA2005C */  sw    $v0, 0x5c($sp)
/* AE0B9C 800699FC 0C0253D0 */  jal   func_80094F40
/* AE0BA0 80069A00 AFA3001C */   sw    $v1, 0x1c($sp)
/* AE0BA4 80069A04 8FA8005C */  lw    $t0, 0x5c($sp)
/* AE0BA8 80069A08 0C034213 */  jal   func_800D084C
/* AE0BAC 80069A0C AD020004 */   sw    $v0, 4($t0)
/* AE0BB0 80069A10 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* AE0BB4 80069A14 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* AE0BB8 80069A18 0C0347F5 */  jal   func_800D1FD4
/* AE0BBC 80069A1C 02212021 */   addu  $a0, $s1, $at
/* AE0BC0 80069A20 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0BC4 80069A24 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* AE0BC8 80069A28 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* AE0BCC 80069A2C 244A0008 */  addiu $t2, $v0, 8
/* AE0BD0 80069A30 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* AE0BD4 80069A34 AC4B0000 */  sw    $t3, ($v0)
/* AE0BD8 80069A38 8E240000 */  lw    $a0, ($s1)
/* AE0BDC 80069A3C 3C058014 */  lui   $a1, %hi(D_8013B46C) # $a1, 0x8014
/* AE0BE0 80069A40 24A5B46C */  addiu $a1, %lo(D_8013B46C) # addiu $a1, $a1, -0x4b94
/* AE0BE4 80069A44 24060290 */  li    $a2, 656
/* AE0BE8 80069A48 0C0346A2 */  jal   func_800D1A88
/* AE0BEC 80069A4C AFA20058 */   sw    $v0, 0x58($sp)
/* AE0BF0 80069A50 8FA30058 */  lw    $v1, 0x58($sp)
/* AE0BF4 80069A54 3C0DDE00 */  lui   $t5, 0xde00
/* AE0BF8 80069A58 3C19DE00 */  lui   $t9, 0xde00
/* AE0BFC 80069A5C AC620004 */  sw    $v0, 4($v1)
/* AE0C00 80069A60 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0C04 80069A64 244C0008 */  addiu $t4, $v0, 8
/* AE0C08 80069A68 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AE0C0C 80069A6C AC4D0000 */  sw    $t5, ($v0)
/* AE0C10 80069A70 8FAE004C */  lw    $t6, 0x4c($sp)
/* AE0C14 80069A74 8DCF0010 */  lw    $t7, 0x10($t6)
/* AE0C18 80069A78 AC4F0004 */  sw    $t7, 4($v0)
/* AE0C1C 80069A7C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0C20 80069A80 24580008 */  addiu $t8, $v0, 8
/* AE0C24 80069A84 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE0C28 80069A88 AC590000 */  sw    $t9, ($v0)
/* AE0C2C 80069A8C 8FA9004C */  lw    $t1, 0x4c($sp)
/* AE0C30 80069A90 8D2A000C */  lw    $t2, 0xc($t1)
/* AE0C34 80069A94 0C034221 */  jal   func_800D0884
/* AE0C38 80069A98 AC4A0004 */   sw    $t2, 4($v0)
/* AE0C3C 80069A9C 3C068014 */  lui   $a2, %hi(D_8013B478) # $a2, 0x8014
/* AE0C40 80069AA0 24C6B478 */  addiu $a2, %lo(D_8013B478) # addiu $a2, $a2, -0x4b88
/* AE0C44 80069AA4 27A40070 */  addiu $a0, $sp, 0x70
/* AE0C48 80069AA8 8E250000 */  lw    $a1, ($s1)
/* AE0C4C 80069AAC 0C031AD5 */  jal   func_800C6B54
/* AE0C50 80069AB0 24070297 */   li    $a3, 663
/* AE0C54 80069AB4 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE0C58 80069AB8 8FB00034 */  lw    $s0, 0x34($sp)
/* AE0C5C 80069ABC 8FB10038 */  lw    $s1, 0x38($sp)
/* AE0C60 80069AC0 03E00008 */  jr    $ra
/* AE0C64 80069AC4 27BD0088 */   addiu $sp, $sp, 0x88

/* AE0C68 80069AC8 27BDFF80 */  addiu $sp, $sp, -0x80
/* AE0C6C 80069ACC AFBF003C */  sw    $ra, 0x3c($sp)
/* AE0C70 80069AD0 AFB10038 */  sw    $s1, 0x38($sp)
/* AE0C74 80069AD4 AFB00034 */  sw    $s0, 0x34($sp)
/* AE0C78 80069AD8 AFA50084 */  sw    $a1, 0x84($sp)
/* AE0C7C 80069ADC 8C850000 */  lw    $a1, ($a0)
/* AE0C80 80069AE0 00808825 */  move  $s1, $a0
/* AE0C84 80069AE4 3C068014 */  lui   $a2, %hi(D_8013B484) # $a2, 0x8014
/* AE0C88 80069AE8 24C6B484 */  addiu $a2, %lo(D_8013B484) # addiu $a2, $a2, -0x4b7c
/* AE0C8C 80069AEC 27A40068 */  addiu $a0, $sp, 0x68
/* AE0C90 80069AF0 2407029E */  li    $a3, 670
/* AE0C94 80069AF4 0C031AB1 */  jal   func_800C6AC4
/* AE0C98 80069AF8 00A08025 */   move  $s0, $a1
/* AE0C9C 80069AFC 0C024F46 */  jal   func_80093D18
/* AE0CA0 80069B00 8E240000 */   lw    $a0, ($s1)
/* AE0CA4 80069B04 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0CA8 80069B08 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE0CAC 80069B0C 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE0CB0 80069B10 244E0008 */  addiu $t6, $v0, 8
/* AE0CB4 80069B14 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE0CB8 80069B18 AC4F0000 */  sw    $t7, ($v0)
/* AE0CBC 80069B1C 8E240000 */  lw    $a0, ($s1)
/* AE0CC0 80069B20 3C058014 */  lui   $a1, %hi(D_8013B490) # $a1, 0x8014
/* AE0CC4 80069B24 24A5B490 */  addiu $a1, %lo(D_8013B490) # addiu $a1, $a1, -0x4b70
/* AE0CC8 80069B28 240602A2 */  li    $a2, 674
/* AE0CCC 80069B2C 0C0346A2 */  jal   func_800D1A88
/* AE0CD0 80069B30 AFA20064 */   sw    $v0, 0x64($sp)
/* AE0CD4 80069B34 8FA30064 */  lw    $v1, 0x64($sp)
/* AE0CD8 80069B38 3C19DE00 */  lui   $t9, 0xde00
/* AE0CDC 80069B3C 3C0B8012 */  lui   $t3, %hi(D_8011E320) # $t3, 0x8012
/* AE0CE0 80069B40 AC620004 */  sw    $v0, 4($v1)
/* AE0CE4 80069B44 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0CE8 80069B48 256BE320 */  addiu $t3, %lo(D_8011E320) # addiu $t3, $t3, -0x1ce0
/* AE0CEC 80069B4C 24580008 */  addiu $t8, $v0, 8
/* AE0CF0 80069B50 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE0CF4 80069B54 AC590000 */  sw    $t9, ($v0)
/* AE0CF8 80069B58 87A90086 */  lh    $t1, 0x86($sp)
/* AE0CFC 80069B5C 000950C0 */  sll   $t2, $t1, 3
/* AE0D00 80069B60 01495021 */  addu  $t2, $t2, $t1
/* AE0D04 80069B64 000A5080 */  sll   $t2, $t2, 2
/* AE0D08 80069B68 014B2821 */  addu  $a1, $t2, $t3
/* AE0D0C 80069B6C 8CAC0004 */  lw    $t4, 4($a1)
/* AE0D10 80069B70 AC4C0004 */  sw    $t4, 4($v0)
/* AE0D14 80069B74 8E240000 */  lw    $a0, ($s1)
/* AE0D18 80069B78 0C024F61 */  jal   func_80093D84
/* AE0D1C 80069B7C AFA50048 */   sw    $a1, 0x48($sp)
/* AE0D20 80069B80 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0D24 80069B84 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* AE0D28 80069B88 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* AE0D2C 80069B8C 244D0008 */  addiu $t5, $v0, 8
/* AE0D30 80069B90 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE0D34 80069B94 AC4E0000 */  sw    $t6, ($v0)
/* AE0D38 80069B98 8E240000 */  lw    $a0, ($s1)
/* AE0D3C 80069B9C 3C058014 */  lui   $a1, %hi(D_8013B49C) # $a1, 0x8014
/* AE0D40 80069BA0 24A5B49C */  addiu $a1, %lo(D_8013B49C) # addiu $a1, $a1, -0x4b64
/* AE0D44 80069BA4 240602AB */  li    $a2, 683
/* AE0D48 80069BA8 0C0346A2 */  jal   func_800D1A88
/* AE0D4C 80069BAC AFA2005C */   sw    $v0, 0x5c($sp)
/* AE0D50 80069BB0 8FA3005C */  lw    $v1, 0x5c($sp)
/* AE0D54 80069BB4 3C18DE00 */  lui   $t8, 0xde00
/* AE0D58 80069BB8 3C0BDB06 */  lui   $t3, (0xDB060020 >> 16) # lui $t3, 0xdb06
/* AE0D5C 80069BBC AC620004 */  sw    $v0, 4($v1)
/* AE0D60 80069BC0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0D64 80069BC4 356B0020 */  ori   $t3, (0xDB060020 & 0xFFFF) # ori $t3, $t3, 0x20
/* AE0D68 80069BC8 240C0020 */  li    $t4, 32
/* AE0D6C 80069BCC 244F0008 */  addiu $t7, $v0, 8
/* AE0D70 80069BD0 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE0D74 80069BD4 AC580000 */  sw    $t8, ($v0)
/* AE0D78 80069BD8 8FB90048 */  lw    $t9, 0x48($sp)
/* AE0D7C 80069BDC 240D0020 */  li    $t5, 32
/* AE0D80 80069BE0 240E0001 */  li    $t6, 1
/* AE0D84 80069BE4 8F290008 */  lw    $t1, 8($t9)
/* AE0D88 80069BE8 24190020 */  li    $t9, 32
/* AE0D8C 80069BEC 00002825 */  move  $a1, $zero
/* AE0D90 80069BF0 AC490004 */  sw    $t1, 4($v0)
/* AE0D94 80069BF4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0D98 80069BF8 24090020 */  li    $t1, 32
/* AE0D9C 80069BFC 00003025 */  move  $a2, $zero
/* AE0DA0 80069C00 244A0008 */  addiu $t2, $v0, 8
/* AE0DA4 80069C04 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* AE0DA8 80069C08 AC4B0000 */  sw    $t3, ($v0)
/* AE0DAC 80069C0C 8E23009C */  lw    $v1, 0x9c($s1)
/* AE0DB0 80069C10 8E240000 */  lw    $a0, ($s1)
/* AE0DB4 80069C14 AFA90028 */  sw    $t1, 0x28($sp)
/* AE0DB8 80069C18 00037880 */  sll   $t7, $v1, 2
/* AE0DBC 80069C1C 01E37823 */  subu  $t7, $t7, $v1
/* AE0DC0 80069C20 000F7840 */  sll   $t7, $t7, 1
/* AE0DC4 80069C24 000FC023 */  negu  $t8, $t7
/* AE0DC8 80069C28 AFB80020 */  sw    $t8, 0x20($sp)
/* AE0DCC 80069C2C AFB90024 */  sw    $t9, 0x24($sp)
/* AE0DD0 80069C30 AFAE0018 */  sw    $t6, 0x18($sp)
/* AE0DD4 80069C34 AFAD0014 */  sw    $t5, 0x14($sp)
/* AE0DD8 80069C38 AFAC0010 */  sw    $t4, 0x10($sp)
/* AE0DDC 80069C3C 00003825 */  move  $a3, $zero
/* AE0DE0 80069C40 AFA20054 */  sw    $v0, 0x54($sp)
/* AE0DE4 80069C44 0C0253D0 */  jal   func_80094F40
/* AE0DE8 80069C48 AFA3001C */   sw    $v1, 0x1c($sp)
/* AE0DEC 80069C4C 8FA80054 */  lw    $t0, 0x54($sp)
/* AE0DF0 80069C50 0C034213 */  jal   func_800D084C
/* AE0DF4 80069C54 AD020004 */   sw    $v0, 4($t0)
/* AE0DF8 80069C58 3C010001 */  lui   $at, (0x00011DA0 >> 16) # lui $at, 1
/* AE0DFC 80069C5C 34211DA0 */  ori   $at, (0x00011DA0 & 0xFFFF) # ori $at, $at, 0x1da0
/* AE0E00 80069C60 0C0347F5 */  jal   func_800D1FD4
/* AE0E04 80069C64 02212021 */   addu  $a0, $s1, $at
/* AE0E08 80069C68 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0E0C 80069C6C 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* AE0E10 80069C70 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* AE0E14 80069C74 244A0008 */  addiu $t2, $v0, 8
/* AE0E18 80069C78 AE0A02D0 */  sw    $t2, 0x2d0($s0)
/* AE0E1C 80069C7C AC4B0000 */  sw    $t3, ($v0)
/* AE0E20 80069C80 8E240000 */  lw    $a0, ($s1)
/* AE0E24 80069C84 3C058014 */  lui   $a1, %hi(D_8013B4A8) # $a1, 0x8014
/* AE0E28 80069C88 24A5B4A8 */  addiu $a1, %lo(D_8013B4A8) # addiu $a1, $a1, -0x4b58
/* AE0E2C 80069C8C 240602BA */  li    $a2, 698
/* AE0E30 80069C90 0C0346A2 */  jal   func_800D1A88
/* AE0E34 80069C94 AFA20050 */   sw    $v0, 0x50($sp)
/* AE0E38 80069C98 8FA30050 */  lw    $v1, 0x50($sp)
/* AE0E3C 80069C9C 3C0DDE00 */  lui   $t5, 0xde00
/* AE0E40 80069CA0 AC620004 */  sw    $v0, 4($v1)
/* AE0E44 80069CA4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0E48 80069CA8 244C0008 */  addiu $t4, $v0, 8
/* AE0E4C 80069CAC AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AE0E50 80069CB0 AC4D0000 */  sw    $t5, ($v0)
/* AE0E54 80069CB4 8FAE0048 */  lw    $t6, 0x48($sp)
/* AE0E58 80069CB8 8DCF000C */  lw    $t7, 0xc($t6)
/* AE0E5C 80069CBC 0C034221 */  jal   func_800D0884
/* AE0E60 80069CC0 AC4F0004 */   sw    $t7, 4($v0)
/* AE0E64 80069CC4 3C068014 */  lui   $a2, %hi(D_8013B4B4) # $a2, 0x8014
/* AE0E68 80069CC8 24C6B4B4 */  addiu $a2, %lo(D_8013B4B4) # addiu $a2, $a2, -0x4b4c
/* AE0E6C 80069CCC 27A40068 */  addiu $a0, $sp, 0x68
/* AE0E70 80069CD0 8E250000 */  lw    $a1, ($s1)
/* AE0E74 80069CD4 0C031AD5 */  jal   func_800C6B54
/* AE0E78 80069CD8 240702C0 */   li    $a3, 704
/* AE0E7C 80069CDC 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE0E80 80069CE0 8FB00034 */  lw    $s0, 0x34($sp)
/* AE0E84 80069CE4 8FB10038 */  lw    $s1, 0x38($sp)
/* AE0E88 80069CE8 03E00008 */  jr    $ra
/* AE0E8C 80069CEC 27BD0080 */   addiu $sp, $sp, 0x80

/* AE0E90 80069CF0 27BDFF88 */  addiu $sp, $sp, -0x78
/* AE0E94 80069CF4 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE0E98 80069CF8 AFB10038 */  sw    $s1, 0x38($sp)
/* AE0E9C 80069CFC AFB00034 */  sw    $s0, 0x34($sp)
/* AE0EA0 80069D00 AFA5007C */  sw    $a1, 0x7c($sp)
/* AE0EA4 80069D04 8C850000 */  lw    $a1, ($a0)
/* AE0EA8 80069D08 00808825 */  move  $s1, $a0
/* AE0EAC 80069D0C 3C068014 */  lui   $a2, %hi(D_8013B4C0) # $a2, 0x8014
/* AE0EB0 80069D10 24C6B4C0 */  addiu $a2, %lo(D_8013B4C0) # addiu $a2, $a2, -0x4b40
/* AE0EB4 80069D14 27A40060 */  addiu $a0, $sp, 0x60
/* AE0EB8 80069D18 240702C8 */  li    $a3, 712
/* AE0EBC 80069D1C 0C031AB1 */  jal   func_800C6AC4
/* AE0EC0 80069D20 00A08025 */   move  $s0, $a1
/* AE0EC4 80069D24 0C024F46 */  jal   func_80093D18
/* AE0EC8 80069D28 8E240000 */   lw    $a0, ($s1)
/* AE0ECC 80069D2C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0ED0 80069D30 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE0ED4 80069D34 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE0ED8 80069D38 244E0008 */  addiu $t6, $v0, 8
/* AE0EDC 80069D3C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE0EE0 80069D40 AC4F0000 */  sw    $t7, ($v0)
/* AE0EE4 80069D44 8E23009C */  lw    $v1, 0x9c($s1)
/* AE0EE8 80069D48 8E240000 */  lw    $a0, ($s1)
/* AE0EEC 80069D4C 240E0020 */  li    $t6, 32
/* AE0EF0 80069D50 24180040 */  li    $t8, 64
/* AE0EF4 80069D54 24190040 */  li    $t9, 64
/* AE0EF8 80069D58 240A0001 */  li    $t2, 1
/* AE0EFC 80069D5C 300B007F */  andi  $t3, $zero, 0x7f
/* AE0F00 80069D60 240D0020 */  li    $t5, 32
/* AE0F04 80069D64 00033840 */  sll   $a3, $v1, 1
/* AE0F08 80069D68 306C007F */  andi  $t4, $v1, 0x7f
/* AE0F0C 80069D6C AFAC0020 */  sw    $t4, 0x20($sp)
/* AE0F10 80069D70 30E700FF */  andi  $a3, $a3, 0xff
/* AE0F14 80069D74 AFAD0024 */  sw    $t5, 0x24($sp)
/* AE0F18 80069D78 AFAB001C */  sw    $t3, 0x1c($sp)
/* AE0F1C 80069D7C AFAA0018 */  sw    $t2, 0x18($sp)
/* AE0F20 80069D80 AFB90014 */  sw    $t9, 0x14($sp)
/* AE0F24 80069D84 AFB80010 */  sw    $t8, 0x10($sp)
/* AE0F28 80069D88 AFAE0028 */  sw    $t6, 0x28($sp)
/* AE0F2C 80069D8C 00002825 */  move  $a1, $zero
/* AE0F30 80069D90 00004025 */  move  $t0, $zero
/* AE0F34 80069D94 300600FF */  andi  $a2, $zero, 0xff
/* AE0F38 80069D98 0C0253D0 */  jal   func_80094F40
/* AE0F3C 80069D9C AFA2005C */   sw    $v0, 0x5c($sp)
/* AE0F40 80069DA0 8FA9005C */  lw    $t1, 0x5c($sp)
/* AE0F44 80069DA4 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* AE0F48 80069DA8 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* AE0F4C 80069DAC AD220004 */  sw    $v0, 4($t1)
/* AE0F50 80069DB0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0F54 80069DB4 3C058014 */  lui   $a1, %hi(D_8013B4CC) # $a1, 0x8014
/* AE0F58 80069DB8 24A5B4CC */  addiu $a1, %lo(D_8013B4CC) # addiu $a1, $a1, -0x4b34
/* AE0F5C 80069DBC 244F0008 */  addiu $t7, $v0, 8
/* AE0F60 80069DC0 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* AE0F64 80069DC4 AC580000 */  sw    $t8, ($v0)
/* AE0F68 80069DC8 8E240000 */  lw    $a0, ($s1)
/* AE0F6C 80069DCC 240602D3 */  li    $a2, 723
/* AE0F70 80069DD0 0C0346A2 */  jal   func_800D1A88
/* AE0F74 80069DD4 AFA20058 */   sw    $v0, 0x58($sp)
/* AE0F78 80069DD8 8FA30058 */  lw    $v1, 0x58($sp)
/* AE0F7C 80069DDC 3C0ADE00 */  lui   $t2, 0xde00
/* AE0F80 80069DE0 3C0D8012 */  lui   $t5, %hi(D_8011E320) # $t5, 0x8012
/* AE0F84 80069DE4 AC620004 */  sw    $v0, 4($v1)
/* AE0F88 80069DE8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE0F8C 80069DEC 25ADE320 */  addiu $t5, %lo(D_8011E320) # addiu $t5, $t5, -0x1ce0
/* AE0F90 80069DF0 24590008 */  addiu $t9, $v0, 8
/* AE0F94 80069DF4 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AE0F98 80069DF8 AC4A0000 */  sw    $t2, ($v0)
/* AE0F9C 80069DFC 87AB007E */  lh    $t3, 0x7e($sp)
/* AE0FA0 80069E00 000B60C0 */  sll   $t4, $t3, 3
/* AE0FA4 80069E04 018B6021 */  addu  $t4, $t4, $t3
/* AE0FA8 80069E08 000C6080 */  sll   $t4, $t4, 2
/* AE0FAC 80069E0C 018D3821 */  addu  $a3, $t4, $t5
/* AE0FB0 80069E10 8CEE0004 */  lw    $t6, 4($a3)
/* AE0FB4 80069E14 AC4E0004 */  sw    $t6, 4($v0)
/* AE0FB8 80069E18 8E240000 */  lw    $a0, ($s1)
/* AE0FBC 80069E1C 0C024F61 */  jal   func_80093D84
/* AE0FC0 80069E20 AFA70048 */   sw    $a3, 0x48($sp)
/* AE0FC4 80069E24 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE0FC8 80069E28 8FA70048 */  lw    $a3, 0x48($sp)
/* AE0FCC 80069E2C 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* AE0FD0 80069E30 244F0008 */  addiu $t7, $v0, 8
/* AE0FD4 80069E34 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE0FD8 80069E38 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* AE0FDC 80069E3C AC580000 */  sw    $t8, ($v0)
/* AE0FE0 80069E40 8E240000 */  lw    $a0, ($s1)
/* AE0FE4 80069E44 3C058014 */  lui   $a1, %hi(D_8013B4D8) # $a1, 0x8014
/* AE0FE8 80069E48 24A5B4D8 */  addiu $a1, %lo(D_8013B4D8) # addiu $a1, $a1, -0x4b28
/* AE0FEC 80069E4C 240602DA */  li    $a2, 730
/* AE0FF0 80069E50 AFA20050 */  sw    $v0, 0x50($sp)
/* AE0FF4 80069E54 0C0346A2 */  jal   func_800D1A88
/* AE0FF8 80069E58 AFA70048 */   sw    $a3, 0x48($sp)
/* AE0FFC 80069E5C 8FA30050 */  lw    $v1, 0x50($sp)
/* AE1000 80069E60 8FA70048 */  lw    $a3, 0x48($sp)
/* AE1004 80069E64 3C0ADE00 */  lui   $t2, 0xde00
/* AE1008 80069E68 AC620004 */  sw    $v0, 4($v1)
/* AE100C 80069E6C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1010 80069E70 3C068014 */  lui   $a2, %hi(D_8013B4E4) # $a2, 0x8014
/* AE1014 80069E74 24C6B4E4 */  addiu $a2, %lo(D_8013B4E4) # addiu $a2, $a2, -0x4b1c
/* AE1018 80069E78 24590008 */  addiu $t9, $v0, 8
/* AE101C 80069E7C AE1902D0 */  sw    $t9, 0x2d0($s0)
/* AE1020 80069E80 AC4A0000 */  sw    $t2, ($v0)
/* AE1024 80069E84 8CEB0008 */  lw    $t3, 8($a3)
/* AE1028 80069E88 240702DF */  li    $a3, 735
/* AE102C 80069E8C 27A40060 */  addiu $a0, $sp, 0x60
/* AE1030 80069E90 AC4B0004 */  sw    $t3, 4($v0)
/* AE1034 80069E94 0C031AD5 */  jal   func_800C6B54
/* AE1038 80069E98 8E250000 */   lw    $a1, ($s1)
/* AE103C 80069E9C 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE1040 80069EA0 8FB00034 */  lw    $s0, 0x34($sp)
/* AE1044 80069EA4 8FB10038 */  lw    $s1, 0x38($sp)
/* AE1048 80069EA8 03E00008 */  jr    $ra
/* AE104C 80069EAC 27BD0078 */   addiu $sp, $sp, 0x78

/* AE1050 80069EB0 27BDFF88 */  addiu $sp, $sp, -0x78
/* AE1054 80069EB4 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE1058 80069EB8 AFB10038 */  sw    $s1, 0x38($sp)
/* AE105C 80069EBC AFB00034 */  sw    $s0, 0x34($sp)
/* AE1060 80069EC0 AFA5007C */  sw    $a1, 0x7c($sp)
/* AE1064 80069EC4 8C850000 */  lw    $a1, ($a0)
/* AE1068 80069EC8 00808825 */  move  $s1, $a0
/* AE106C 80069ECC 3C068014 */  lui   $a2, %hi(D_8013B4F0) # $a2, 0x8014
/* AE1070 80069ED0 24C6B4F0 */  addiu $a2, %lo(D_8013B4F0) # addiu $a2, $a2, -0x4b10
/* AE1074 80069ED4 27A40060 */  addiu $a0, $sp, 0x60
/* AE1078 80069ED8 240702E6 */  li    $a3, 742
/* AE107C 80069EDC 0C031AB1 */  jal   func_800C6AC4
/* AE1080 80069EE0 00A08025 */   move  $s0, $a1
/* AE1084 80069EE4 0C024F46 */  jal   func_80093D18
/* AE1088 80069EE8 8E240000 */   lw    $a0, ($s1)
/* AE108C 80069EEC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1090 80069EF0 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE1094 80069EF4 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE1098 80069EF8 244E0008 */  addiu $t6, $v0, 8
/* AE109C 80069EFC AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE10A0 80069F00 AC4F0000 */  sw    $t7, ($v0)
/* AE10A4 80069F04 8E240000 */  lw    $a0, ($s1)
/* AE10A8 80069F08 3C058014 */  lui   $a1, %hi(D_8013B4FC) # $a1, 0x8014
/* AE10AC 80069F0C 24A5B4FC */  addiu $a1, %lo(D_8013B4FC) # addiu $a1, $a1, -0x4b04
/* AE10B0 80069F10 240602EA */  li    $a2, 746
/* AE10B4 80069F14 0C0346A2 */  jal   func_800D1A88
/* AE10B8 80069F18 AFA2005C */   sw    $v0, 0x5c($sp)
/* AE10BC 80069F1C 8FA3005C */  lw    $v1, 0x5c($sp)
/* AE10C0 80069F20 3C19DE00 */  lui   $t9, 0xde00
/* AE10C4 80069F24 3C0B8012 */  lui   $t3, %hi(D_8011E320) # $t3, 0x8012
/* AE10C8 80069F28 AC620004 */  sw    $v0, 4($v1)
/* AE10CC 80069F2C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE10D0 80069F30 256BE320 */  addiu $t3, %lo(D_8011E320) # addiu $t3, $t3, -0x1ce0
/* AE10D4 80069F34 24580008 */  addiu $t8, $v0, 8
/* AE10D8 80069F38 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE10DC 80069F3C AC590000 */  sw    $t9, ($v0)
/* AE10E0 80069F40 87A9007E */  lh    $t1, 0x7e($sp)
/* AE10E4 80069F44 000950C0 */  sll   $t2, $t1, 3
/* AE10E8 80069F48 01495021 */  addu  $t2, $t2, $t1
/* AE10EC 80069F4C 000A5080 */  sll   $t2, $t2, 2
/* AE10F0 80069F50 014B2821 */  addu  $a1, $t2, $t3
/* AE10F4 80069F54 8CAC0004 */  lw    $t4, 4($a1)
/* AE10F8 80069F58 AC4C0004 */  sw    $t4, 4($v0)
/* AE10FC 80069F5C 8E240000 */  lw    $a0, ($s1)
/* AE1100 80069F60 0C024F61 */  jal   func_80093D84
/* AE1104 80069F64 AFA50048 */   sw    $a1, 0x48($sp)
/* AE1108 80069F68 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE110C 80069F6C 3C0EDB06 */  lui   $t6, (0xDB060020 >> 16) # lui $t6, 0xdb06
/* AE1110 80069F70 35CE0020 */  ori   $t6, (0xDB060020 & 0xFFFF) # ori $t6, $t6, 0x20
/* AE1114 80069F74 244D0008 */  addiu $t5, $v0, 8
/* AE1118 80069F78 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE111C 80069F7C AC4E0000 */  sw    $t6, ($v0)
/* AE1120 80069F80 8E23009C */  lw    $v1, 0x9c($s1)
/* AE1124 80069F84 8E240000 */  lw    $a0, ($s1)
/* AE1128 80069F88 240F0020 */  li    $t7, 32
/* AE112C 80069F8C 00033880 */  sll   $a3, $v1, 2
/* AE1130 80069F90 24180020 */  li    $t8, 32
/* AE1134 80069F94 24190001 */  li    $t9, 1
/* AE1138 80069F98 24090020 */  li    $t1, 32
/* AE113C 80069F9C 240A0040 */  li    $t2, 64
/* AE1140 80069FA0 00E33821 */  addu  $a3, $a3, $v1
/* AE1144 80069FA4 00073823 */  negu  $a3, $a3
/* AE1148 80069FA8 AFAA0028 */  sw    $t2, 0x28($sp)
/* AE114C 80069FAC AFA90024 */  sw    $t1, 0x24($sp)
/* AE1150 80069FB0 AFB90018 */  sw    $t9, 0x18($sp)
/* AE1154 80069FB4 AFB80014 */  sw    $t8, 0x14($sp)
/* AE1158 80069FB8 AFAF0010 */  sw    $t7, 0x10($sp)
/* AE115C 80069FBC AFA00020 */  sw    $zero, 0x20($sp)
/* AE1160 80069FC0 AFA0001C */  sw    $zero, 0x1c($sp)
/* AE1164 80069FC4 00002825 */  move  $a1, $zero
/* AE1168 80069FC8 00003025 */  move  $a2, $zero
/* AE116C 80069FCC 0C0253D0 */  jal   func_80094F40
/* AE1170 80069FD0 AFA20054 */   sw    $v0, 0x54($sp)
/* AE1174 80069FD4 8FA80054 */  lw    $t0, 0x54($sp)
/* AE1178 80069FD8 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* AE117C 80069FDC 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* AE1180 80069FE0 AD020004 */  sw    $v0, 4($t0)
/* AE1184 80069FE4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1188 80069FE8 3C058014 */  lui   $a1, %hi(D_8013B508) # $a1, 0x8014
/* AE118C 80069FEC 24A5B508 */  addiu $a1, %lo(D_8013B508) # addiu $a1, $a1, -0x4af8
/* AE1190 80069FF0 244B0008 */  addiu $t3, $v0, 8
/* AE1194 80069FF4 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* AE1198 80069FF8 AC4C0000 */  sw    $t4, ($v0)
/* AE119C 80069FFC 8E240000 */  lw    $a0, ($s1)
/* AE11A0 8006A000 240602F8 */  li    $a2, 760
/* AE11A4 8006A004 0C0346A2 */  jal   func_800D1A88
/* AE11A8 8006A008 AFA20050 */   sw    $v0, 0x50($sp)
/* AE11AC 8006A00C 8FA30050 */  lw    $v1, 0x50($sp)
/* AE11B0 8006A010 3C0EDE00 */  lui   $t6, 0xde00
/* AE11B4 8006A014 3C068014 */  lui   $a2, %hi(D_8013B514) # $a2, 0x8014
/* AE11B8 8006A018 AC620004 */  sw    $v0, 4($v1)
/* AE11BC 8006A01C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE11C0 8006A020 24C6B514 */  addiu $a2, %lo(D_8013B514) # addiu $a2, $a2, -0x4aec
/* AE11C4 8006A024 27A40060 */  addiu $a0, $sp, 0x60
/* AE11C8 8006A028 244D0008 */  addiu $t5, $v0, 8
/* AE11CC 8006A02C AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE11D0 8006A030 AC4E0000 */  sw    $t6, ($v0)
/* AE11D4 8006A034 8FAF0048 */  lw    $t7, 0x48($sp)
/* AE11D8 8006A038 240702FD */  li    $a3, 765
/* AE11DC 8006A03C 8DF80008 */  lw    $t8, 8($t7)
/* AE11E0 8006A040 AC580004 */  sw    $t8, 4($v0)
/* AE11E4 8006A044 0C031AD5 */  jal   func_800C6B54
/* AE11E8 8006A048 8E250000 */   lw    $a1, ($s1)
/* AE11EC 8006A04C 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE11F0 8006A050 8FB00034 */  lw    $s0, 0x34($sp)
/* AE11F4 8006A054 8FB10038 */  lw    $s1, 0x38($sp)
/* AE11F8 8006A058 03E00008 */  jr    $ra
/* AE11FC 8006A05C 27BD0078 */   addiu $sp, $sp, 0x78

/* AE1200 8006A060 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AE1204 8006A064 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE1208 8006A068 AFB00018 */  sw    $s0, 0x18($sp)
/* AE120C 8006A06C AFA40050 */  sw    $a0, 0x50($sp)
/* AE1210 8006A070 AFA50054 */  sw    $a1, 0x54($sp)
/* AE1214 8006A074 8C850000 */  lw    $a1, ($a0)
/* AE1218 8006A078 3C068014 */  lui   $a2, %hi(D_8013B520) # $a2, 0x8014
/* AE121C 8006A07C 24C6B520 */  addiu $a2, %lo(D_8013B520) # addiu $a2, $a2, -0x4ae0
/* AE1220 8006A080 27A40038 */  addiu $a0, $sp, 0x38
/* AE1224 8006A084 24070304 */  li    $a3, 772
/* AE1228 8006A088 0C031AB1 */  jal   func_800C6AC4
/* AE122C 8006A08C 00A08025 */   move  $s0, $a1
/* AE1230 8006A090 8FAF0050 */  lw    $t7, 0x50($sp)
/* AE1234 8006A094 0C024EEA */  jal   func_80093BA8
/* AE1238 8006A098 8DE40000 */   lw    $a0, ($t7)
/* AE123C 8006A09C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1240 8006A0A0 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE1244 8006A0A4 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE1248 8006A0A8 24580008 */  addiu $t8, $v0, 8
/* AE124C 8006A0AC AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE1250 8006A0B0 AC590000 */  sw    $t9, ($v0)
/* AE1254 8006A0B4 8FA80050 */  lw    $t0, 0x50($sp)
/* AE1258 8006A0B8 3C058014 */  lui   $a1, %hi(D_8013B52C) # $a1, 0x8014
/* AE125C 8006A0BC 24A5B52C */  addiu $a1, %lo(D_8013B52C) # addiu $a1, $a1, -0x4ad4
/* AE1260 8006A0C0 8D040000 */  lw    $a0, ($t0)
/* AE1264 8006A0C4 24060308 */  li    $a2, 776
/* AE1268 8006A0C8 0C0346A2 */  jal   func_800D1A88
/* AE126C 8006A0CC AFA20034 */   sw    $v0, 0x34($sp)
/* AE1270 8006A0D0 8FA30034 */  lw    $v1, 0x34($sp)
/* AE1274 8006A0D4 3C05DE00 */  lui   $a1, 0xde00
/* AE1278 8006A0D8 3C0C8012 */  lui   $t4, %hi(D_8011E320) # $t4, 0x8012
/* AE127C 8006A0DC AC620004 */  sw    $v0, 4($v1)
/* AE1280 8006A0E0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1284 8006A0E4 258CE320 */  addiu $t4, %lo(D_8011E320) # addiu $t4, $t4, -0x1ce0
/* AE1288 8006A0E8 3C068014 */  lui   $a2, %hi(D_8013B538) # $a2, 0x8014
/* AE128C 8006A0EC 24490008 */  addiu $t1, $v0, 8
/* AE1290 8006A0F0 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AE1294 8006A0F4 AC450000 */  sw    $a1, ($v0)
/* AE1298 8006A0F8 87AA0056 */  lh    $t2, 0x56($sp)
/* AE129C 8006A0FC 24C6B538 */  addiu $a2, %lo(D_8013B538) # addiu $a2, $a2, -0x4ac8
/* AE12A0 8006A100 2407030F */  li    $a3, 783
/* AE12A4 8006A104 000A58C0 */  sll   $t3, $t2, 3
/* AE12A8 8006A108 016A5821 */  addu  $t3, $t3, $t2
/* AE12AC 8006A10C 000B5880 */  sll   $t3, $t3, 2
/* AE12B0 8006A110 016C2021 */  addu  $a0, $t3, $t4
/* AE12B4 8006A114 8C8D0004 */  lw    $t5, 4($a0)
/* AE12B8 8006A118 AC4D0004 */  sw    $t5, 4($v0)
/* AE12BC 8006A11C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE12C0 8006A120 244E0008 */  addiu $t6, $v0, 8
/* AE12C4 8006A124 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE12C8 8006A128 AC450000 */  sw    $a1, ($v0)
/* AE12CC 8006A12C 8C8F0008 */  lw    $t7, 8($a0)
/* AE12D0 8006A130 27A40038 */  addiu $a0, $sp, 0x38
/* AE12D4 8006A134 AC4F0004 */  sw    $t7, 4($v0)
/* AE12D8 8006A138 8FB80050 */  lw    $t8, 0x50($sp)
/* AE12DC 8006A13C 0C031AD5 */  jal   func_800C6B54
/* AE12E0 8006A140 8F050000 */   lw    $a1, ($t8)
/* AE12E4 8006A144 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE12E8 8006A148 8FB00018 */  lw    $s0, 0x18($sp)
/* AE12EC 8006A14C 27BD0050 */  addiu $sp, $sp, 0x50
/* AE12F0 8006A150 03E00008 */  jr    $ra
/* AE12F4 8006A154 00000000 */   nop   

/* AE12F8 8006A158 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AE12FC 8006A15C AFBF001C */  sw    $ra, 0x1c($sp)
/* AE1300 8006A160 AFB10018 */  sw    $s1, 0x18($sp)
/* AE1304 8006A164 AFB00014 */  sw    $s0, 0x14($sp)
/* AE1308 8006A168 AFA50054 */  sw    $a1, 0x54($sp)
/* AE130C 8006A16C 8C850000 */  lw    $a1, ($a0)
/* AE1310 8006A170 00808825 */  move  $s1, $a0
/* AE1314 8006A174 3C068014 */  lui   $a2, %hi(D_8013B544) # $a2, 0x8014
/* AE1318 8006A178 24C6B544 */  addiu $a2, %lo(D_8013B544) # addiu $a2, $a2, -0x4abc
/* AE131C 8006A17C 27A40038 */  addiu $a0, $sp, 0x38
/* AE1320 8006A180 2407032B */  li    $a3, 811
/* AE1324 8006A184 0C031AB1 */  jal   func_800C6AC4
/* AE1328 8006A188 00A08025 */   move  $s0, $a1
/* AE132C 8006A18C 0C024F46 */  jal   func_80093D18
/* AE1330 8006A190 8E240000 */   lw    $a0, ($s1)
/* AE1334 8006A194 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1338 8006A198 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE133C 8006A19C 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE1340 8006A1A0 244E0008 */  addiu $t6, $v0, 8
/* AE1344 8006A1A4 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE1348 8006A1A8 AC4F0000 */  sw    $t7, ($v0)
/* AE134C 8006A1AC 8E240000 */  lw    $a0, ($s1)
/* AE1350 8006A1B0 3C058014 */  lui   $a1, %hi(D_8013B550) # $a1, 0x8014
/* AE1354 8006A1B4 24A5B550 */  addiu $a1, %lo(D_8013B550) # addiu $a1, $a1, -0x4ab0
/* AE1358 8006A1B8 2406032F */  li    $a2, 815
/* AE135C 8006A1BC 0C0346A2 */  jal   func_800D1A88
/* AE1360 8006A1C0 AFA20034 */   sw    $v0, 0x34($sp)
/* AE1364 8006A1C4 8FA30034 */  lw    $v1, 0x34($sp)
/* AE1368 8006A1C8 3C19DE00 */  lui   $t9, 0xde00
/* AE136C 8006A1CC 3C0A8012 */  lui   $t2, %hi(D_8011E320) # $t2, 0x8012
/* AE1370 8006A1D0 AC620004 */  sw    $v0, 4($v1)
/* AE1374 8006A1D4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1378 8006A1D8 254AE320 */  addiu $t2, %lo(D_8011E320) # addiu $t2, $t2, -0x1ce0
/* AE137C 8006A1DC 24050005 */  li    $a1, 5
/* AE1380 8006A1E0 24580008 */  addiu $t8, $v0, 8
/* AE1384 8006A1E4 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE1388 8006A1E8 AC590000 */  sw    $t9, ($v0)
/* AE138C 8006A1EC 87A80056 */  lh    $t0, 0x56($sp)
/* AE1390 8006A1F0 000848C0 */  sll   $t1, $t0, 3
/* AE1394 8006A1F4 01284821 */  addu  $t1, $t1, $t0
/* AE1398 8006A1F8 00094880 */  sll   $t1, $t1, 2
/* AE139C 8006A1FC 012A3821 */  addu  $a3, $t1, $t2
/* AE13A0 8006A200 8CEB0004 */  lw    $t3, 4($a3)
/* AE13A4 8006A204 AC4B0004 */  sw    $t3, 4($v0)
/* AE13A8 8006A208 8E0402D0 */  lw    $a0, 0x2d0($s0)
/* AE13AC 8006A20C 0C024DDD */  jal   func_80093774
/* AE13B0 8006A210 AFA70024 */   sw    $a3, 0x24($sp)
/* AE13B4 8006A214 8FA70024 */  lw    $a3, 0x24($sp)
/* AE13B8 8006A218 AE0202D0 */  sw    $v0, 0x2d0($s0)
/* AE13BC 8006A21C 244C0008 */  addiu $t4, $v0, 8
/* AE13C0 8006A220 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AE13C4 8006A224 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AE13C8 8006A228 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AE13CC 8006A22C AC4D0000 */  sw    $t5, ($v0)
/* AE13D0 8006A230 8E240000 */  lw    $a0, ($s1)
/* AE13D4 8006A234 3C058014 */  lui   $a1, %hi(D_8013B55C) # $a1, 0x8014
/* AE13D8 8006A238 24A5B55C */  addiu $a1, %lo(D_8013B55C) # addiu $a1, $a1, -0x4aa4
/* AE13DC 8006A23C AFA2002C */  sw    $v0, 0x2c($sp)
/* AE13E0 8006A240 24060336 */  li    $a2, 822
/* AE13E4 8006A244 0C0346A2 */  jal   func_800D1A88
/* AE13E8 8006A248 AFA70024 */   sw    $a3, 0x24($sp)
/* AE13EC 8006A24C 8FA3002C */  lw    $v1, 0x2c($sp)
/* AE13F0 8006A250 8FA70024 */  lw    $a3, 0x24($sp)
/* AE13F4 8006A254 3C0FDE00 */  lui   $t7, 0xde00
/* AE13F8 8006A258 AC620004 */  sw    $v0, 4($v1)
/* AE13FC 8006A25C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1400 8006A260 3C068014 */  lui   $a2, %hi(D_8013B568) # $a2, 0x8014
/* AE1404 8006A264 24C6B568 */  addiu $a2, %lo(D_8013B568) # addiu $a2, $a2, -0x4a98
/* AE1408 8006A268 244E0008 */  addiu $t6, $v0, 8
/* AE140C 8006A26C AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE1410 8006A270 AC4F0000 */  sw    $t7, ($v0)
/* AE1414 8006A274 8CF80008 */  lw    $t8, 8($a3)
/* AE1418 8006A278 2407033B */  li    $a3, 827
/* AE141C 8006A27C 27A40038 */  addiu $a0, $sp, 0x38
/* AE1420 8006A280 AC580004 */  sw    $t8, 4($v0)
/* AE1424 8006A284 0C031AD5 */  jal   func_800C6B54
/* AE1428 8006A288 8E250000 */   lw    $a1, ($s1)
/* AE142C 8006A28C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE1430 8006A290 8FB00014 */  lw    $s0, 0x14($sp)
/* AE1434 8006A294 8FB10018 */  lw    $s1, 0x18($sp)
/* AE1438 8006A298 03E00008 */  jr    $ra
/* AE143C 8006A29C 27BD0050 */   addiu $sp, $sp, 0x50

/* AE1440 8006A2A0 27BDFF78 */  addiu $sp, $sp, -0x88
/* AE1444 8006A2A4 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE1448 8006A2A8 AFB10038 */  sw    $s1, 0x38($sp)
/* AE144C 8006A2AC AFB00034 */  sw    $s0, 0x34($sp)
/* AE1450 8006A2B0 AFA5008C */  sw    $a1, 0x8c($sp)
/* AE1454 8006A2B4 8C850000 */  lw    $a1, ($a0)
/* AE1458 8006A2B8 00808825 */  move  $s1, $a0
/* AE145C 8006A2BC 3C068014 */  lui   $a2, %hi(D_8013B574) # $a2, 0x8014
/* AE1460 8006A2C0 24C6B574 */  addiu $a2, %lo(D_8013B574) # addiu $a2, $a2, -0x4a8c
/* AE1464 8006A2C4 27A40070 */  addiu $a0, $sp, 0x70
/* AE1468 8006A2C8 24070342 */  li    $a3, 834
/* AE146C 8006A2CC 0C031AB1 */  jal   func_800C6AC4
/* AE1470 8006A2D0 00A08025 */   move  $s0, $a1
/* AE1474 8006A2D4 0C024F46 */  jal   func_80093D18
/* AE1478 8006A2D8 8E240000 */   lw    $a0, ($s1)
/* AE147C 8006A2DC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1480 8006A2E0 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE1484 8006A2E4 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE1488 8006A2E8 244E0008 */  addiu $t6, $v0, 8
/* AE148C 8006A2EC AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE1490 8006A2F0 AC4F0000 */  sw    $t7, ($v0)
/* AE1494 8006A2F4 8E23009C */  lw    $v1, 0x9c($s1)
/* AE1498 8006A2F8 8E240000 */  lw    $a0, ($s1)
/* AE149C 8006A2FC 24180020 */  li    $t8, 32
/* AE14A0 8006A300 24190020 */  li    $t9, 32
/* AE14A4 8006A304 24090001 */  li    $t1, 1
/* AE14A8 8006A308 240A0020 */  li    $t2, 32
/* AE14AC 8006A30C 240B0020 */  li    $t3, 32
/* AE14B0 8006A310 00033023 */  negu  $a2, $v1
/* AE14B4 8006A314 AFA6001C */  sw    $a2, 0x1c($sp)
/* AE14B8 8006A318 AFAB0028 */  sw    $t3, 0x28($sp)
/* AE14BC 8006A31C AFAA0024 */  sw    $t2, 0x24($sp)
/* AE14C0 8006A320 AFA90018 */  sw    $t1, 0x18($sp)
/* AE14C4 8006A324 AFB90014 */  sw    $t9, 0x14($sp)
/* AE14C8 8006A328 AFB80010 */  sw    $t8, 0x10($sp)
/* AE14CC 8006A32C 00002825 */  move  $a1, $zero
/* AE14D0 8006A330 AFA2006C */  sw    $v0, 0x6c($sp)
/* AE14D4 8006A334 AFA30020 */  sw    $v1, 0x20($sp)
/* AE14D8 8006A338 0C0253D0 */  jal   func_80094F40
/* AE14DC 8006A33C 00603825 */   move  $a3, $v1
/* AE14E0 8006A340 8FA8006C */  lw    $t0, 0x6c($sp)
/* AE14E4 8006A344 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AE14E8 8006A348 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AE14EC 8006A34C AD020004 */  sw    $v0, 4($t0)
/* AE14F0 8006A350 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE14F4 8006A354 3C058014 */  lui   $a1, %hi(D_8013B580) # $a1, 0x8014
/* AE14F8 8006A358 24A5B580 */  addiu $a1, %lo(D_8013B580) # addiu $a1, $a1, -0x4a80
/* AE14FC 8006A35C 244C0008 */  addiu $t4, $v0, 8
/* AE1500 8006A360 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AE1504 8006A364 AC4D0000 */  sw    $t5, ($v0)
/* AE1508 8006A368 8E240000 */  lw    $a0, ($s1)
/* AE150C 8006A36C 2406034D */  li    $a2, 845
/* AE1510 8006A370 0C0346A2 */  jal   func_800D1A88
/* AE1514 8006A374 AFA20068 */   sw    $v0, 0x68($sp)
/* AE1518 8006A378 8FA30068 */  lw    $v1, 0x68($sp)
/* AE151C 8006A37C 3C08DE00 */  lui   $t0, 0xde00
/* AE1520 8006A380 3C198012 */  lui   $t9, %hi(D_8011E320) # $t9, 0x8012
/* AE1524 8006A384 AC620004 */  sw    $v0, 4($v1)
/* AE1528 8006A388 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE152C 8006A38C 2739E320 */  addiu $t9, %lo(D_8011E320) # addiu $t9, $t9, -0x1ce0
/* AE1530 8006A390 244E0008 */  addiu $t6, $v0, 8
/* AE1534 8006A394 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE1538 8006A398 AC480000 */  sw    $t0, ($v0)
/* AE153C 8006A39C 87AF008E */  lh    $t7, 0x8e($sp)
/* AE1540 8006A3A0 000FC0C0 */  sll   $t8, $t7, 3
/* AE1544 8006A3A4 030FC021 */  addu  $t8, $t8, $t7
/* AE1548 8006A3A8 0018C080 */  sll   $t8, $t8, 2
/* AE154C 8006A3AC 03193821 */  addu  $a3, $t8, $t9
/* AE1550 8006A3B0 8CE90008 */  lw    $t1, 8($a3)
/* AE1554 8006A3B4 AC490004 */  sw    $t1, 4($v0)
/* AE1558 8006A3B8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE155C 8006A3BC 244A0008 */  addiu $t2, $v0, 8
/* AE1560 8006A3C0 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AE1564 8006A3C4 AC480000 */  sw    $t0, ($v0)
/* AE1568 8006A3C8 8CEB0004 */  lw    $t3, 4($a3)
/* AE156C 8006A3CC AC4B0004 */  sw    $t3, 4($v0)
/* AE1570 8006A3D0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1574 8006A3D4 244C0008 */  addiu $t4, $v0, 8
/* AE1578 8006A3D8 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AE157C 8006A3DC AC480000 */  sw    $t0, ($v0)
/* AE1580 8006A3E0 8CED000C */  lw    $t5, 0xc($a3)
/* AE1584 8006A3E4 AC4D0004 */  sw    $t5, 4($v0)
/* AE1588 8006A3E8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE158C 8006A3EC 244E0008 */  addiu $t6, $v0, 8
/* AE1590 8006A3F0 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE1594 8006A3F4 AC480000 */  sw    $t0, ($v0)
/* AE1598 8006A3F8 8CEF0010 */  lw    $t7, 0x10($a3)
/* AE159C 8006A3FC AC4F0004 */  sw    $t7, 4($v0)
/* AE15A0 8006A400 8E240000 */  lw    $a0, ($s1)
/* AE15A4 8006A404 0C024F61 */  jal   func_80093D84
/* AE15A8 8006A408 AFA70048 */   sw    $a3, 0x48($sp)
/* AE15AC 8006A40C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE15B0 8006A410 8FA70048 */  lw    $a3, 0x48($sp)
/* AE15B4 8006A414 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE15B8 8006A418 24580008 */  addiu $t8, $v0, 8
/* AE15BC 8006A41C AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE15C0 8006A420 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE15C4 8006A424 AC590000 */  sw    $t9, ($v0)
/* AE15C8 8006A428 8E240000 */  lw    $a0, ($s1)
/* AE15CC 8006A42C 3C058014 */  lui   $a1, %hi(D_8013B58C) # $a1, 0x8014
/* AE15D0 8006A430 24A5B58C */  addiu $a1, %lo(D_8013B58C) # addiu $a1, $a1, -0x4a74
/* AE15D4 8006A434 24060357 */  li    $a2, 855
/* AE15D8 8006A438 AFA20054 */  sw    $v0, 0x54($sp)
/* AE15DC 8006A43C 0C0346A2 */  jal   func_800D1A88
/* AE15E0 8006A440 AFA70048 */   sw    $a3, 0x48($sp)
/* AE15E4 8006A444 8FA30054 */  lw    $v1, 0x54($sp)
/* AE15E8 8006A448 8FA70048 */  lw    $a3, 0x48($sp)
/* AE15EC 8006A44C 3C08DE00 */  lui   $t0, 0xde00
/* AE15F0 8006A450 AC620004 */  sw    $v0, 4($v1)
/* AE15F4 8006A454 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE15F8 8006A458 3C068014 */  lui   $a2, %hi(D_8013B598) # $a2, 0x8014
/* AE15FC 8006A45C 24C6B598 */  addiu $a2, %lo(D_8013B598) # addiu $a2, $a2, -0x4a68
/* AE1600 8006A460 24490008 */  addiu $t1, $v0, 8
/* AE1604 8006A464 AE0902D0 */  sw    $t1, 0x2d0($s0)
/* AE1608 8006A468 AC480000 */  sw    $t0, ($v0)
/* AE160C 8006A46C 8CEA0014 */  lw    $t2, 0x14($a3)
/* AE1610 8006A470 27A40070 */  addiu $a0, $sp, 0x70
/* AE1614 8006A474 AC4A0004 */  sw    $t2, 4($v0)
/* AE1618 8006A478 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE161C 8006A47C 244B0008 */  addiu $t3, $v0, 8
/* AE1620 8006A480 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* AE1624 8006A484 AC480000 */  sw    $t0, ($v0)
/* AE1628 8006A488 8CEC0018 */  lw    $t4, 0x18($a3)
/* AE162C 8006A48C 2407035D */  li    $a3, 861
/* AE1630 8006A490 AC4C0004 */  sw    $t4, 4($v0)
/* AE1634 8006A494 0C031AD5 */  jal   func_800C6B54
/* AE1638 8006A498 8E250000 */   lw    $a1, ($s1)
/* AE163C 8006A49C 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE1640 8006A4A0 8FB00034 */  lw    $s0, 0x34($sp)
/* AE1644 8006A4A4 8FB10038 */  lw    $s1, 0x38($sp)
/* AE1648 8006A4A8 03E00008 */  jr    $ra
/* AE164C 8006A4AC 27BD0088 */   addiu $sp, $sp, 0x88

/* AE1650 8006A4B0 27BDFF98 */  addiu $sp, $sp, -0x68
/* AE1654 8006A4B4 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE1658 8006A4B8 AFB10038 */  sw    $s1, 0x38($sp)
/* AE165C 8006A4BC AFB00034 */  sw    $s0, 0x34($sp)
/* AE1660 8006A4C0 AFA5006C */  sw    $a1, 0x6c($sp)
/* AE1664 8006A4C4 8C850000 */  lw    $a1, ($a0)
/* AE1668 8006A4C8 00808825 */  move  $s1, $a0
/* AE166C 8006A4CC 3C068014 */  lui   $a2, %hi(D_8013B5A4) # $a2, 0x8014
/* AE1670 8006A4D0 24C6B5A4 */  addiu $a2, %lo(D_8013B5A4) # addiu $a2, $a2, -0x4a5c
/* AE1674 8006A4D4 27A40050 */  addiu $a0, $sp, 0x50
/* AE1678 8006A4D8 24070364 */  li    $a3, 868
/* AE167C 8006A4DC 0C031AB1 */  jal   func_800C6AC4
/* AE1680 8006A4E0 00A08025 */   move  $s0, $a1
/* AE1684 8006A4E4 0C024F46 */  jal   func_80093D18
/* AE1688 8006A4E8 8E240000 */   lw    $a0, ($s1)
/* AE168C 8006A4EC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1690 8006A4F0 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE1694 8006A4F4 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE1698 8006A4F8 244E0008 */  addiu $t6, $v0, 8
/* AE169C 8006A4FC AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE16A0 8006A500 AC4F0000 */  sw    $t7, ($v0)
/* AE16A4 8006A504 8E23009C */  lw    $v1, 0x9c($s1)
/* AE16A8 8006A508 8E240000 */  lw    $a0, ($s1)
/* AE16AC 8006A50C 24180020 */  li    $t8, 32
/* AE16B0 8006A510 24190020 */  li    $t9, 32
/* AE16B4 8006A514 24090001 */  li    $t1, 1
/* AE16B8 8006A518 240A0020 */  li    $t2, 32
/* AE16BC 8006A51C 240B0020 */  li    $t3, 32
/* AE16C0 8006A520 AFAB0028 */  sw    $t3, 0x28($sp)
/* AE16C4 8006A524 AFAA0024 */  sw    $t2, 0x24($sp)
/* AE16C8 8006A528 AFA90018 */  sw    $t1, 0x18($sp)
/* AE16CC 8006A52C AFB90014 */  sw    $t9, 0x14($sp)
/* AE16D0 8006A530 AFB80010 */  sw    $t8, 0x10($sp)
/* AE16D4 8006A534 AFA00020 */  sw    $zero, 0x20($sp)
/* AE16D8 8006A538 AFA0001C */  sw    $zero, 0x1c($sp)
/* AE16DC 8006A53C 00002825 */  move  $a1, $zero
/* AE16E0 8006A540 00003825 */  move  $a3, $zero
/* AE16E4 8006A544 AFA2004C */  sw    $v0, 0x4c($sp)
/* AE16E8 8006A548 0C0253D0 */  jal   func_80094F40
/* AE16EC 8006A54C 00603025 */   move  $a2, $v1
/* AE16F0 8006A550 8FA8004C */  lw    $t0, 0x4c($sp)
/* AE16F4 8006A554 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AE16F8 8006A558 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AE16FC 8006A55C AD020004 */  sw    $v0, 4($t0)
/* AE1700 8006A560 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1704 8006A564 3C058014 */  lui   $a1, %hi(D_8013B5B0) # $a1, 0x8014
/* AE1708 8006A568 24A5B5B0 */  addiu $a1, %lo(D_8013B5B0) # addiu $a1, $a1, -0x4a50
/* AE170C 8006A56C 244C0008 */  addiu $t4, $v0, 8
/* AE1710 8006A570 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AE1714 8006A574 AC4D0000 */  sw    $t5, ($v0)
/* AE1718 8006A578 8E240000 */  lw    $a0, ($s1)
/* AE171C 8006A57C 2406036E */  li    $a2, 878
/* AE1720 8006A580 0C0346A2 */  jal   func_800D1A88
/* AE1724 8006A584 AFA20048 */   sw    $v0, 0x48($sp)
/* AE1728 8006A588 8FA30048 */  lw    $v1, 0x48($sp)
/* AE172C 8006A58C 3C0FDE00 */  lui   $t7, 0xde00
/* AE1730 8006A590 3C098012 */  lui   $t1, 0x8012
/* AE1734 8006A594 AC620004 */  sw    $v0, 4($v1)
/* AE1738 8006A598 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE173C 8006A59C 3C068014 */  lui   $a2, %hi(D_8013B5BC) # $a2, 0x8014
/* AE1740 8006A5A0 24C6B5BC */  addiu $a2, %lo(D_8013B5BC) # addiu $a2, $a2, -0x4a44
/* AE1744 8006A5A4 244E0008 */  addiu $t6, $v0, 8
/* AE1748 8006A5A8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE174C 8006A5AC AC4F0000 */  sw    $t7, ($v0)
/* AE1750 8006A5B0 87B8006E */  lh    $t8, 0x6e($sp)
/* AE1754 8006A5B4 27A40050 */  addiu $a0, $sp, 0x50
/* AE1758 8006A5B8 24070373 */  li    $a3, 883
/* AE175C 8006A5BC 0018C8C0 */  sll   $t9, $t8, 3
/* AE1760 8006A5C0 0338C821 */  addu  $t9, $t9, $t8
/* AE1764 8006A5C4 0019C880 */  sll   $t9, $t9, 2
/* AE1768 8006A5C8 01394821 */  addu  $t1, $t1, $t9
/* AE176C 8006A5CC 8D29E324 */  lw    $t1, -0x1cdc($t1)
/* AE1770 8006A5D0 AC490004 */  sw    $t1, 4($v0)
/* AE1774 8006A5D4 0C031AD5 */  jal   func_800C6B54
/* AE1778 8006A5D8 8E250000 */   lw    $a1, ($s1)
/* AE177C 8006A5DC 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE1780 8006A5E0 8FB00034 */  lw    $s0, 0x34($sp)
/* AE1784 8006A5E4 8FB10038 */  lw    $s1, 0x38($sp)
/* AE1788 8006A5E8 03E00008 */  jr    $ra
/* AE178C 8006A5EC 27BD0068 */   addiu $sp, $sp, 0x68

/* AE1790 8006A5F0 27BDFF98 */  addiu $sp, $sp, -0x68
/* AE1794 8006A5F4 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE1798 8006A5F8 AFB10038 */  sw    $s1, 0x38($sp)
/* AE179C 8006A5FC AFB00034 */  sw    $s0, 0x34($sp)
/* AE17A0 8006A600 AFA5006C */  sw    $a1, 0x6c($sp)
/* AE17A4 8006A604 8C850000 */  lw    $a1, ($a0)
/* AE17A8 8006A608 00808825 */  move  $s1, $a0
/* AE17AC 8006A60C 3C068014 */  lui   $a2, %hi(D_8013B5C8) # $a2, 0x8014
/* AE17B0 8006A610 24C6B5C8 */  addiu $a2, %lo(D_8013B5C8) # addiu $a2, $a2, -0x4a38
/* AE17B4 8006A614 27A40050 */  addiu $a0, $sp, 0x50
/* AE17B8 8006A618 2407037A */  li    $a3, 890
/* AE17BC 8006A61C 0C031AB1 */  jal   func_800C6AC4
/* AE17C0 8006A620 00A08025 */   move  $s0, $a1
/* AE17C4 8006A624 0C024F46 */  jal   func_80093D18
/* AE17C8 8006A628 8E240000 */   lw    $a0, ($s1)
/* AE17CC 8006A62C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE17D0 8006A630 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE17D4 8006A634 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE17D8 8006A638 244E0008 */  addiu $t6, $v0, 8
/* AE17DC 8006A63C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE17E0 8006A640 AC4F0000 */  sw    $t7, ($v0)
/* AE17E4 8006A644 8E26009C */  lw    $a2, 0x9c($s1)
/* AE17E8 8006A648 8E240000 */  lw    $a0, ($s1)
/* AE17EC 8006A64C 24180020 */  li    $t8, 32
/* AE17F0 8006A650 00C00821 */  addu  $at, $a2, $zero
/* AE17F4 8006A654 00063080 */  sll   $a2, $a2, 2
/* AE17F8 8006A658 00C13023 */  subu  $a2, $a2, $at
/* AE17FC 8006A65C 00063040 */  sll   $a2, $a2, 1
/* AE1800 8006A660 24190020 */  li    $t9, 32
/* AE1804 8006A664 24080001 */  li    $t0, 1
/* AE1808 8006A668 24090020 */  li    $t1, 32
/* AE180C 8006A66C 240A0020 */  li    $t2, 32
/* AE1810 8006A670 AFAA0028 */  sw    $t2, 0x28($sp)
/* AE1814 8006A674 AFA90024 */  sw    $t1, 0x24($sp)
/* AE1818 8006A678 AFA80018 */  sw    $t0, 0x18($sp)
/* AE181C 8006A67C AFB90014 */  sw    $t9, 0x14($sp)
/* AE1820 8006A680 00C03825 */  move  $a3, $a2
/* AE1824 8006A684 AFA6001C */  sw    $a2, 0x1c($sp)
/* AE1828 8006A688 AFA60020 */  sw    $a2, 0x20($sp)
/* AE182C 8006A68C AFB80010 */  sw    $t8, 0x10($sp)
/* AE1830 8006A690 00002825 */  move  $a1, $zero
/* AE1834 8006A694 0C0253D0 */  jal   func_80094F40
/* AE1838 8006A698 AFA2004C */   sw    $v0, 0x4c($sp)
/* AE183C 8006A69C 8FA3004C */  lw    $v1, 0x4c($sp)
/* AE1840 8006A6A0 3C0CDA38 */  lui   $t4, (0xDA380003 >> 16) # lui $t4, 0xda38
/* AE1844 8006A6A4 358C0003 */  ori   $t4, (0xDA380003 & 0xFFFF) # ori $t4, $t4, 3
/* AE1848 8006A6A8 AC620004 */  sw    $v0, 4($v1)
/* AE184C 8006A6AC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1850 8006A6B0 3C058014 */  lui   $a1, %hi(D_8013B5D4) # $a1, 0x8014
/* AE1854 8006A6B4 24A5B5D4 */  addiu $a1, %lo(D_8013B5D4) # addiu $a1, $a1, -0x4a2c
/* AE1858 8006A6B8 244B0008 */  addiu $t3, $v0, 8
/* AE185C 8006A6BC AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* AE1860 8006A6C0 AC4C0000 */  sw    $t4, ($v0)
/* AE1864 8006A6C4 8E240000 */  lw    $a0, ($s1)
/* AE1868 8006A6C8 24060385 */  li    $a2, 901
/* AE186C 8006A6CC 0C0346A2 */  jal   func_800D1A88
/* AE1870 8006A6D0 AFA20048 */   sw    $v0, 0x48($sp)
/* AE1874 8006A6D4 8FA30048 */  lw    $v1, 0x48($sp)
/* AE1878 8006A6D8 3C0EDE00 */  lui   $t6, 0xde00
/* AE187C 8006A6DC 3C198012 */  lui   $t9, 0x8012
/* AE1880 8006A6E0 AC620004 */  sw    $v0, 4($v1)
/* AE1884 8006A6E4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1888 8006A6E8 3C068014 */  lui   $a2, %hi(D_8013B5E0) # $a2, 0x8014
/* AE188C 8006A6EC 24C6B5E0 */  addiu $a2, %lo(D_8013B5E0) # addiu $a2, $a2, -0x4a20
/* AE1890 8006A6F0 244D0008 */  addiu $t5, $v0, 8
/* AE1894 8006A6F4 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* AE1898 8006A6F8 AC4E0000 */  sw    $t6, ($v0)
/* AE189C 8006A6FC 87AF006E */  lh    $t7, 0x6e($sp)
/* AE18A0 8006A700 27A40050 */  addiu $a0, $sp, 0x50
/* AE18A4 8006A704 2407038A */  li    $a3, 906
/* AE18A8 8006A708 000FC0C0 */  sll   $t8, $t7, 3
/* AE18AC 8006A70C 030FC021 */  addu  $t8, $t8, $t7
/* AE18B0 8006A710 0018C080 */  sll   $t8, $t8, 2
/* AE18B4 8006A714 0338C821 */  addu  $t9, $t9, $t8
/* AE18B8 8006A718 8F39E324 */  lw    $t9, -0x1cdc($t9)
/* AE18BC 8006A71C AC590004 */  sw    $t9, 4($v0)
/* AE18C0 8006A720 0C031AD5 */  jal   func_800C6B54
/* AE18C4 8006A724 8E250000 */   lw    $a1, ($s1)
/* AE18C8 8006A728 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE18CC 8006A72C 8FB00034 */  lw    $s0, 0x34($sp)
/* AE18D0 8006A730 8FB10038 */  lw    $s1, 0x38($sp)
/* AE18D4 8006A734 03E00008 */  jr    $ra
/* AE18D8 8006A738 27BD0068 */   addiu $sp, $sp, 0x68

/* AE18DC 8006A73C 27BDFF90 */  addiu $sp, $sp, -0x70
/* AE18E0 8006A740 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE18E4 8006A744 AFB10038 */  sw    $s1, 0x38($sp)
/* AE18E8 8006A748 AFB00034 */  sw    $s0, 0x34($sp)
/* AE18EC 8006A74C AFA50074 */  sw    $a1, 0x74($sp)
/* AE18F0 8006A750 8C850000 */  lw    $a1, ($a0)
/* AE18F4 8006A754 00808825 */  move  $s1, $a0
/* AE18F8 8006A758 3C068014 */  lui   $a2, %hi(D_8013B5EC) # $a2, 0x8014
/* AE18FC 8006A75C 24C6B5EC */  addiu $a2, %lo(D_8013B5EC) # addiu $a2, $a2, -0x4a14
/* AE1900 8006A760 27A40058 */  addiu $a0, $sp, 0x58
/* AE1904 8006A764 24070391 */  li    $a3, 913
/* AE1908 8006A768 0C031AB1 */  jal   func_800C6AC4
/* AE190C 8006A76C 00A08025 */   move  $s0, $a1
/* AE1910 8006A770 0C024F61 */  jal   func_80093D84
/* AE1914 8006A774 8E240000 */   lw    $a0, ($s1)
/* AE1918 8006A778 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE191C 8006A77C 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE1920 8006A780 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE1924 8006A784 244E0008 */  addiu $t6, $v0, 8
/* AE1928 8006A788 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE192C 8006A78C AC4F0000 */  sw    $t7, ($v0)
/* AE1930 8006A790 8E23009C */  lw    $v1, 0x9c($s1)
/* AE1934 8006A794 8E240000 */  lw    $a0, ($s1)
/* AE1938 8006A798 24180020 */  li    $t8, 32
/* AE193C 8006A79C 00033880 */  sll   $a3, $v1, 2
/* AE1940 8006A7A0 00035040 */  sll   $t2, $v1, 1
/* AE1944 8006A7A4 000A5823 */  negu  $t3, $t2
/* AE1948 8006A7A8 24190020 */  li    $t9, 32
/* AE194C 8006A7AC 24090001 */  li    $t1, 1
/* AE1950 8006A7B0 240C0020 */  li    $t4, 32
/* AE1954 8006A7B4 240D0020 */  li    $t5, 32
/* AE1958 8006A7B8 00E33823 */  subu  $a3, $a3, $v1
/* AE195C 8006A7BC 00073823 */  negu  $a3, $a3
/* AE1960 8006A7C0 AFAD0028 */  sw    $t5, 0x28($sp)
/* AE1964 8006A7C4 AFAC0024 */  sw    $t4, 0x24($sp)
/* AE1968 8006A7C8 AFA90018 */  sw    $t1, 0x18($sp)
/* AE196C 8006A7CC AFB90014 */  sw    $t9, 0x14($sp)
/* AE1970 8006A7D0 AFAB0020 */  sw    $t3, 0x20($sp)
/* AE1974 8006A7D4 AFB80010 */  sw    $t8, 0x10($sp)
/* AE1978 8006A7D8 AFA0001C */  sw    $zero, 0x1c($sp)
/* AE197C 8006A7DC 00002825 */  move  $a1, $zero
/* AE1980 8006A7E0 00003025 */  move  $a2, $zero
/* AE1984 8006A7E4 0C0253D0 */  jal   func_80094F40
/* AE1988 8006A7E8 AFA20054 */   sw    $v0, 0x54($sp)
/* AE198C 8006A7EC 8FA80054 */  lw    $t0, 0x54($sp)
/* AE1990 8006A7F0 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE1994 8006A7F4 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE1998 8006A7F8 AD020004 */  sw    $v0, 4($t0)
/* AE199C 8006A7FC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE19A0 8006A800 3C058014 */  lui   $a1, %hi(D_8013B5F8) # $a1, 0x8014
/* AE19A4 8006A804 24A5B5F8 */  addiu $a1, %lo(D_8013B5F8) # addiu $a1, $a1, -0x4a08
/* AE19A8 8006A808 244E0008 */  addiu $t6, $v0, 8
/* AE19AC 8006A80C AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE19B0 8006A810 AC4F0000 */  sw    $t7, ($v0)
/* AE19B4 8006A814 8E240000 */  lw    $a0, ($s1)
/* AE19B8 8006A818 2406039C */  li    $a2, 924
/* AE19BC 8006A81C 0C0346A2 */  jal   func_800D1A88
/* AE19C0 8006A820 AFA20050 */   sw    $v0, 0x50($sp)
/* AE19C4 8006A824 8FA30050 */  lw    $v1, 0x50($sp)
/* AE19C8 8006A828 3C19DE00 */  lui   $t9, 0xde00
/* AE19CC 8006A82C 3C0B8012 */  lui   $t3, 0x8012
/* AE19D0 8006A830 AC620004 */  sw    $v0, 4($v1)
/* AE19D4 8006A834 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE19D8 8006A838 3C068014 */  lui   $a2, %hi(D_8013B604) # $a2, 0x8014
/* AE19DC 8006A83C 24C6B604 */  addiu $a2, %lo(D_8013B604) # addiu $a2, $a2, -0x49fc
/* AE19E0 8006A840 24580008 */  addiu $t8, $v0, 8
/* AE19E4 8006A844 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE19E8 8006A848 AC590000 */  sw    $t9, ($v0)
/* AE19EC 8006A84C 87A90076 */  lh    $t1, 0x76($sp)
/* AE19F0 8006A850 27A40058 */  addiu $a0, $sp, 0x58
/* AE19F4 8006A854 240703A1 */  li    $a3, 929
/* AE19F8 8006A858 000950C0 */  sll   $t2, $t1, 3
/* AE19FC 8006A85C 01495021 */  addu  $t2, $t2, $t1
/* AE1A00 8006A860 000A5080 */  sll   $t2, $t2, 2
/* AE1A04 8006A864 016A5821 */  addu  $t3, $t3, $t2
/* AE1A08 8006A868 8D6BE324 */  lw    $t3, -0x1cdc($t3)
/* AE1A0C 8006A86C AC4B0004 */  sw    $t3, 4($v0)
/* AE1A10 8006A870 0C031AD5 */  jal   func_800C6B54
/* AE1A14 8006A874 8E250000 */   lw    $a1, ($s1)
/* AE1A18 8006A878 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE1A1C 8006A87C 8FB00034 */  lw    $s0, 0x34($sp)
/* AE1A20 8006A880 8FB10038 */  lw    $s1, 0x38($sp)
/* AE1A24 8006A884 03E00008 */  jr    $ra
/* AE1A28 8006A888 27BD0070 */   addiu $sp, $sp, 0x70

/* AE1A2C 8006A88C 27BDFF90 */  addiu $sp, $sp, -0x70
/* AE1A30 8006A890 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE1A34 8006A894 AFB10038 */  sw    $s1, 0x38($sp)
/* AE1A38 8006A898 AFB00034 */  sw    $s0, 0x34($sp)
/* AE1A3C 8006A89C AFA50074 */  sw    $a1, 0x74($sp)
/* AE1A40 8006A8A0 8C850000 */  lw    $a1, ($a0)
/* AE1A44 8006A8A4 00808825 */  move  $s1, $a0
/* AE1A48 8006A8A8 3C068014 */  lui   $a2, %hi(D_8013B610) # $a2, 0x8014
/* AE1A4C 8006A8AC 24C6B610 */  addiu $a2, %lo(D_8013B610) # addiu $a2, $a2, -0x49f0
/* AE1A50 8006A8B0 27A40058 */  addiu $a0, $sp, 0x58
/* AE1A54 8006A8B4 240703A8 */  li    $a3, 936
/* AE1A58 8006A8B8 0C031AB1 */  jal   func_800C6AC4
/* AE1A5C 8006A8BC 00A08025 */   move  $s0, $a1
/* AE1A60 8006A8C0 0C024F61 */  jal   func_80093D84
/* AE1A64 8006A8C4 8E240000 */   lw    $a0, ($s1)
/* AE1A68 8006A8C8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1A6C 8006A8CC 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE1A70 8006A8D0 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE1A74 8006A8D4 244E0008 */  addiu $t6, $v0, 8
/* AE1A78 8006A8D8 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE1A7C 8006A8DC AC4F0000 */  sw    $t7, ($v0)
/* AE1A80 8006A8E0 8E23009C */  lw    $v1, 0x9c($s1)
/* AE1A84 8006A8E4 8E240000 */  lw    $a0, ($s1)
/* AE1A88 8006A8E8 24180020 */  li    $t8, 32
/* AE1A8C 8006A8EC 24190020 */  li    $t9, 32
/* AE1A90 8006A8F0 24090001 */  li    $t1, 1
/* AE1A94 8006A8F4 240A0020 */  li    $t2, 32
/* AE1A98 8006A8F8 240B0020 */  li    $t3, 32
/* AE1A9C 8006A8FC AFAB0028 */  sw    $t3, 0x28($sp)
/* AE1AA0 8006A900 AFAA0024 */  sw    $t2, 0x24($sp)
/* AE1AA4 8006A904 AFA90018 */  sw    $t1, 0x18($sp)
/* AE1AA8 8006A908 AFB90014 */  sw    $t9, 0x14($sp)
/* AE1AAC 8006A90C AFB80010 */  sw    $t8, 0x10($sp)
/* AE1AB0 8006A910 AFA0001C */  sw    $zero, 0x1c($sp)
/* AE1AB4 8006A914 00002825 */  move  $a1, $zero
/* AE1AB8 8006A918 00003025 */  move  $a2, $zero
/* AE1ABC 8006A91C AFA20054 */  sw    $v0, 0x54($sp)
/* AE1AC0 8006A920 AFA30020 */  sw    $v1, 0x20($sp)
/* AE1AC4 8006A924 0C0253D0 */  jal   func_80094F40
/* AE1AC8 8006A928 00603825 */   move  $a3, $v1
/* AE1ACC 8006A92C 8FA80054 */  lw    $t0, 0x54($sp)
/* AE1AD0 8006A930 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AE1AD4 8006A934 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AE1AD8 8006A938 AD020004 */  sw    $v0, 4($t0)
/* AE1ADC 8006A93C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1AE0 8006A940 3C058014 */  lui   $a1, %hi(D_8013B61C) # $a1, 0x8014
/* AE1AE4 8006A944 24A5B61C */  addiu $a1, %lo(D_8013B61C) # addiu $a1, $a1, -0x49e4
/* AE1AE8 8006A948 244C0008 */  addiu $t4, $v0, 8
/* AE1AEC 8006A94C AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AE1AF0 8006A950 AC4D0000 */  sw    $t5, ($v0)
/* AE1AF4 8006A954 8E240000 */  lw    $a0, ($s1)
/* AE1AF8 8006A958 240603B3 */  li    $a2, 947
/* AE1AFC 8006A95C 0C0346A2 */  jal   func_800D1A88
/* AE1B00 8006A960 AFA20050 */   sw    $v0, 0x50($sp)
/* AE1B04 8006A964 8FA30050 */  lw    $v1, 0x50($sp)
/* AE1B08 8006A968 3C0FDE00 */  lui   $t7, 0xde00
/* AE1B0C 8006A96C 3C098012 */  lui   $t1, 0x8012
/* AE1B10 8006A970 AC620004 */  sw    $v0, 4($v1)
/* AE1B14 8006A974 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1B18 8006A978 3C068014 */  lui   $a2, %hi(D_8013B628) # $a2, 0x8014
/* AE1B1C 8006A97C 24C6B628 */  addiu $a2, %lo(D_8013B628) # addiu $a2, $a2, -0x49d8
/* AE1B20 8006A980 244E0008 */  addiu $t6, $v0, 8
/* AE1B24 8006A984 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE1B28 8006A988 AC4F0000 */  sw    $t7, ($v0)
/* AE1B2C 8006A98C 87B80076 */  lh    $t8, 0x76($sp)
/* AE1B30 8006A990 27A40058 */  addiu $a0, $sp, 0x58
/* AE1B34 8006A994 240703B8 */  li    $a3, 952
/* AE1B38 8006A998 0018C8C0 */  sll   $t9, $t8, 3
/* AE1B3C 8006A99C 0338C821 */  addu  $t9, $t9, $t8
/* AE1B40 8006A9A0 0019C880 */  sll   $t9, $t9, 2
/* AE1B44 8006A9A4 01394821 */  addu  $t1, $t1, $t9
/* AE1B48 8006A9A8 8D29E324 */  lw    $t1, -0x1cdc($t1)
/* AE1B4C 8006A9AC AC490004 */  sw    $t1, 4($v0)
/* AE1B50 8006A9B0 0C031AD5 */  jal   func_800C6B54
/* AE1B54 8006A9B4 8E250000 */   lw    $a1, ($s1)
/* AE1B58 8006A9B8 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE1B5C 8006A9BC 8FB00034 */  lw    $s0, 0x34($sp)
/* AE1B60 8006A9C0 8FB10038 */  lw    $s1, 0x38($sp)
/* AE1B64 8006A9C4 03E00008 */  jr    $ra
/* AE1B68 8006A9C8 27BD0070 */   addiu $sp, $sp, 0x70

/* AE1B6C 8006A9CC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AE1B70 8006A9D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE1B74 8006A9D4 AFB00018 */  sw    $s0, 0x18($sp)
/* AE1B78 8006A9D8 AFA40048 */  sw    $a0, 0x48($sp)
/* AE1B7C 8006A9DC AFA5004C */  sw    $a1, 0x4c($sp)
/* AE1B80 8006A9E0 8C850000 */  lw    $a1, ($a0)
/* AE1B84 8006A9E4 3C068014 */  lui   $a2, %hi(D_8013B634) # $a2, 0x8014
/* AE1B88 8006A9E8 24C6B634 */  addiu $a2, %lo(D_8013B634) # addiu $a2, $a2, -0x49cc
/* AE1B8C 8006A9EC 27A40030 */  addiu $a0, $sp, 0x30
/* AE1B90 8006A9F0 240703BF */  li    $a3, 959
/* AE1B94 8006A9F4 0C031AB1 */  jal   func_800C6AC4
/* AE1B98 8006A9F8 00A08025 */   move  $s0, $a1
/* AE1B9C 8006A9FC 8FAF0048 */  lw    $t7, 0x48($sp)
/* AE1BA0 8006AA00 0C024F46 */  jal   func_80093D18
/* AE1BA4 8006AA04 8DE40000 */   lw    $a0, ($t7)
/* AE1BA8 8006AA08 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1BAC 8006AA0C 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE1BB0 8006AA10 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE1BB4 8006AA14 24580008 */  addiu $t8, $v0, 8
/* AE1BB8 8006AA18 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE1BBC 8006AA1C AC590000 */  sw    $t9, ($v0)
/* AE1BC0 8006AA20 8FA80048 */  lw    $t0, 0x48($sp)
/* AE1BC4 8006AA24 3C058014 */  lui   $a1, %hi(D_8013B640) # $a1, 0x8014
/* AE1BC8 8006AA28 24A5B640 */  addiu $a1, %lo(D_8013B640) # addiu $a1, $a1, -0x49c0
/* AE1BCC 8006AA2C 8D040000 */  lw    $a0, ($t0)
/* AE1BD0 8006AA30 240603C3 */  li    $a2, 963
/* AE1BD4 8006AA34 0C0346A2 */  jal   func_800D1A88
/* AE1BD8 8006AA38 AFA2002C */   sw    $v0, 0x2c($sp)
/* AE1BDC 8006AA3C 8FA3002C */  lw    $v1, 0x2c($sp)
/* AE1BE0 8006AA40 3C0ADE00 */  lui   $t2, 0xde00
/* AE1BE4 8006AA44 3C0D8012 */  lui   $t5, 0x8012
/* AE1BE8 8006AA48 AC620004 */  sw    $v0, 4($v1)
/* AE1BEC 8006AA4C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1BF0 8006AA50 3C068014 */  lui   $a2, %hi(D_8013B64C) # $a2, 0x8014
/* AE1BF4 8006AA54 24C6B64C */  addiu $a2, %lo(D_8013B64C) # addiu $a2, $a2, -0x49b4
/* AE1BF8 8006AA58 24490008 */  addiu $t1, $v0, 8
/* AE1BFC 8006AA5C AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AE1C00 8006AA60 AC4A0000 */  sw    $t2, ($v0)
/* AE1C04 8006AA64 87AB004E */  lh    $t3, 0x4e($sp)
/* AE1C08 8006AA68 27A40030 */  addiu $a0, $sp, 0x30
/* AE1C0C 8006AA6C 240703C8 */  li    $a3, 968
/* AE1C10 8006AA70 000B60C0 */  sll   $t4, $t3, 3
/* AE1C14 8006AA74 018B6021 */  addu  $t4, $t4, $t3
/* AE1C18 8006AA78 000C6080 */  sll   $t4, $t4, 2
/* AE1C1C 8006AA7C 01AC6821 */  addu  $t5, $t5, $t4
/* AE1C20 8006AA80 8DADE324 */  lw    $t5, -0x1cdc($t5)
/* AE1C24 8006AA84 AC4D0004 */  sw    $t5, 4($v0)
/* AE1C28 8006AA88 8FAE0048 */  lw    $t6, 0x48($sp)
/* AE1C2C 8006AA8C 0C031AD5 */  jal   func_800C6B54
/* AE1C30 8006AA90 8DC50000 */   lw    $a1, ($t6)
/* AE1C34 8006AA94 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE1C38 8006AA98 8FB00018 */  lw    $s0, 0x18($sp)
/* AE1C3C 8006AA9C 27BD0048 */  addiu $sp, $sp, 0x48
/* AE1C40 8006AAA0 03E00008 */  jr    $ra
/* AE1C44 8006AAA4 00000000 */   nop   

/* AE1C48 8006AAA8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AE1C4C 8006AAAC AFBF001C */  sw    $ra, 0x1c($sp)
/* AE1C50 8006AAB0 AFB10018 */  sw    $s1, 0x18($sp)
/* AE1C54 8006AAB4 AFB00014 */  sw    $s0, 0x14($sp)
/* AE1C58 8006AAB8 AFA50054 */  sw    $a1, 0x54($sp)
/* AE1C5C 8006AABC 8C850000 */  lw    $a1, ($a0)
/* AE1C60 8006AAC0 00808825 */  move  $s1, $a0
/* AE1C64 8006AAC4 3C068014 */  lui   $a2, %hi(D_8013B658) # $a2, 0x8014
/* AE1C68 8006AAC8 24C6B658 */  addiu $a2, %lo(D_8013B658) # addiu $a2, $a2, -0x49a8
/* AE1C6C 8006AACC 27A40038 */  addiu $a0, $sp, 0x38
/* AE1C70 8006AAD0 240703CF */  li    $a3, 975
/* AE1C74 8006AAD4 0C031AB1 */  jal   func_800C6AC4
/* AE1C78 8006AAD8 00A08025 */   move  $s0, $a1
/* AE1C7C 8006AADC 0C024F46 */  jal   func_80093D18
/* AE1C80 8006AAE0 8E240000 */   lw    $a0, ($s1)
/* AE1C84 8006AAE4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1C88 8006AAE8 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE1C8C 8006AAEC 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE1C90 8006AAF0 244E0008 */  addiu $t6, $v0, 8
/* AE1C94 8006AAF4 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE1C98 8006AAF8 AC4F0000 */  sw    $t7, ($v0)
/* AE1C9C 8006AAFC 8E240000 */  lw    $a0, ($s1)
/* AE1CA0 8006AB00 3C058014 */  lui   $a1, %hi(D_8013B664) # $a1, 0x8014
/* AE1CA4 8006AB04 24A5B664 */  addiu $a1, %lo(D_8013B664) # addiu $a1, $a1, -0x499c
/* AE1CA8 8006AB08 240603D3 */  li    $a2, 979
/* AE1CAC 8006AB0C 0C0346A2 */  jal   func_800D1A88
/* AE1CB0 8006AB10 AFA20034 */   sw    $v0, 0x34($sp)
/* AE1CB4 8006AB14 8FA30034 */  lw    $v1, 0x34($sp)
/* AE1CB8 8006AB18 3C19DE00 */  lui   $t9, 0xde00
/* AE1CBC 8006AB1C 3C0A8012 */  lui   $t2, %hi(D_8011E320) # $t2, 0x8012
/* AE1CC0 8006AB20 AC620004 */  sw    $v0, 4($v1)
/* AE1CC4 8006AB24 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1CC8 8006AB28 254AE320 */  addiu $t2, %lo(D_8011E320) # addiu $t2, $t2, -0x1ce0
/* AE1CCC 8006AB2C 24580008 */  addiu $t8, $v0, 8
/* AE1CD0 8006AB30 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE1CD4 8006AB34 AC590000 */  sw    $t9, ($v0)
/* AE1CD8 8006AB38 87A80056 */  lh    $t0, 0x56($sp)
/* AE1CDC 8006AB3C 000848C0 */  sll   $t1, $t0, 3
/* AE1CE0 8006AB40 01284821 */  addu  $t1, $t1, $t0
/* AE1CE4 8006AB44 00094880 */  sll   $t1, $t1, 2
/* AE1CE8 8006AB48 012A3821 */  addu  $a3, $t1, $t2
/* AE1CEC 8006AB4C 8CEB0004 */  lw    $t3, 4($a3)
/* AE1CF0 8006AB50 AC4B0004 */  sw    $t3, 4($v0)
/* AE1CF4 8006AB54 8E240000 */  lw    $a0, ($s1)
/* AE1CF8 8006AB58 0C024F61 */  jal   func_80093D84
/* AE1CFC 8006AB5C AFA70024 */   sw    $a3, 0x24($sp)
/* AE1D00 8006AB60 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1D04 8006AB64 8FA70024 */  lw    $a3, 0x24($sp)
/* AE1D08 8006AB68 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AE1D0C 8006AB6C 244C0008 */  addiu $t4, $v0, 8
/* AE1D10 8006AB70 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AE1D14 8006AB74 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AE1D18 8006AB78 AC4D0000 */  sw    $t5, ($v0)
/* AE1D1C 8006AB7C 8E240000 */  lw    $a0, ($s1)
/* AE1D20 8006AB80 3C058014 */  lui   $a1, %hi(D_8013B670) # $a1, 0x8014
/* AE1D24 8006AB84 24A5B670 */  addiu $a1, %lo(D_8013B670) # addiu $a1, $a1, -0x4990
/* AE1D28 8006AB88 240603DA */  li    $a2, 986
/* AE1D2C 8006AB8C AFA2002C */  sw    $v0, 0x2c($sp)
/* AE1D30 8006AB90 0C0346A2 */  jal   func_800D1A88
/* AE1D34 8006AB94 AFA70024 */   sw    $a3, 0x24($sp)
/* AE1D38 8006AB98 8FA3002C */  lw    $v1, 0x2c($sp)
/* AE1D3C 8006AB9C 8FA70024 */  lw    $a3, 0x24($sp)
/* AE1D40 8006ABA0 3C0FDE00 */  lui   $t7, 0xde00
/* AE1D44 8006ABA4 AC620004 */  sw    $v0, 4($v1)
/* AE1D48 8006ABA8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1D4C 8006ABAC 3C068014 */  lui   $a2, %hi(D_8013B67C) # $a2, 0x8014
/* AE1D50 8006ABB0 24C6B67C */  addiu $a2, %lo(D_8013B67C) # addiu $a2, $a2, -0x4984
/* AE1D54 8006ABB4 244E0008 */  addiu $t6, $v0, 8
/* AE1D58 8006ABB8 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE1D5C 8006ABBC AC4F0000 */  sw    $t7, ($v0)
/* AE1D60 8006ABC0 8CF80008 */  lw    $t8, 8($a3)
/* AE1D64 8006ABC4 240703DF */  li    $a3, 991
/* AE1D68 8006ABC8 27A40038 */  addiu $a0, $sp, 0x38
/* AE1D6C 8006ABCC AC580004 */  sw    $t8, 4($v0)
/* AE1D70 8006ABD0 0C031AD5 */  jal   func_800C6B54
/* AE1D74 8006ABD4 8E250000 */   lw    $a1, ($s1)
/* AE1D78 8006ABD8 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE1D7C 8006ABDC 8FB00014 */  lw    $s0, 0x14($sp)
/* AE1D80 8006ABE0 8FB10018 */  lw    $s1, 0x18($sp)
/* AE1D84 8006ABE4 03E00008 */  jr    $ra
/* AE1D88 8006ABE8 27BD0050 */   addiu $sp, $sp, 0x50

/* AE1D8C 8006ABEC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AE1D90 8006ABF0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE1D94 8006ABF4 AFB00018 */  sw    $s0, 0x18($sp)
/* AE1D98 8006ABF8 AFA40050 */  sw    $a0, 0x50($sp)
/* AE1D9C 8006ABFC AFA50054 */  sw    $a1, 0x54($sp)
/* AE1DA0 8006AC00 8C850000 */  lw    $a1, ($a0)
/* AE1DA4 8006AC04 3C068014 */  lui   $a2, %hi(D_8013B688) # $a2, 0x8014
/* AE1DA8 8006AC08 24C6B688 */  addiu $a2, %lo(D_8013B688) # addiu $a2, $a2, -0x4978
/* AE1DAC 8006AC0C 27A40038 */  addiu $a0, $sp, 0x38
/* AE1DB0 8006AC10 240703E6 */  li    $a3, 998
/* AE1DB4 8006AC14 0C031AB1 */  jal   func_800C6AC4
/* AE1DB8 8006AC18 00A08025 */   move  $s0, $a1
/* AE1DBC 8006AC1C 8FAF0050 */  lw    $t7, 0x50($sp)
/* AE1DC0 8006AC20 0C024F61 */  jal   func_80093D84
/* AE1DC4 8006AC24 8DE40000 */   lw    $a0, ($t7)
/* AE1DC8 8006AC28 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1DCC 8006AC2C 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE1DD0 8006AC30 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE1DD4 8006AC34 24580008 */  addiu $t8, $v0, 8
/* AE1DD8 8006AC38 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE1DDC 8006AC3C AC590000 */  sw    $t9, ($v0)
/* AE1DE0 8006AC40 8FA80050 */  lw    $t0, 0x50($sp)
/* AE1DE4 8006AC44 3C058014 */  lui   $a1, %hi(D_8013B694) # $a1, 0x8014
/* AE1DE8 8006AC48 24A5B694 */  addiu $a1, %lo(D_8013B694) # addiu $a1, $a1, -0x496c
/* AE1DEC 8006AC4C 8D040000 */  lw    $a0, ($t0)
/* AE1DF0 8006AC50 240603EA */  li    $a2, 1002
/* AE1DF4 8006AC54 0C0346A2 */  jal   func_800D1A88
/* AE1DF8 8006AC58 AFA20034 */   sw    $v0, 0x34($sp)
/* AE1DFC 8006AC5C 8FA30034 */  lw    $v1, 0x34($sp)
/* AE1E00 8006AC60 3C05DE00 */  lui   $a1, 0xde00
/* AE1E04 8006AC64 3C0C8012 */  lui   $t4, %hi(D_8011E320) # $t4, 0x8012
/* AE1E08 8006AC68 AC620004 */  sw    $v0, 4($v1)
/* AE1E0C 8006AC6C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1E10 8006AC70 258CE320 */  addiu $t4, %lo(D_8011E320) # addiu $t4, $t4, -0x1ce0
/* AE1E14 8006AC74 3C068014 */  lui   $a2, %hi(D_8013B6A0) # $a2, 0x8014
/* AE1E18 8006AC78 24490008 */  addiu $t1, $v0, 8
/* AE1E1C 8006AC7C AE0902D0 */  sw    $t1, 0x2d0($s0)
/* AE1E20 8006AC80 AC450000 */  sw    $a1, ($v0)
/* AE1E24 8006AC84 87AA0056 */  lh    $t2, 0x56($sp)
/* AE1E28 8006AC88 24C6B6A0 */  addiu $a2, %lo(D_8013B6A0) # addiu $a2, $a2, -0x4960
/* AE1E2C 8006AC8C 240703F0 */  li    $a3, 1008
/* AE1E30 8006AC90 000A58C0 */  sll   $t3, $t2, 3
/* AE1E34 8006AC94 016A5821 */  addu  $t3, $t3, $t2
/* AE1E38 8006AC98 000B5880 */  sll   $t3, $t3, 2
/* AE1E3C 8006AC9C 016C2021 */  addu  $a0, $t3, $t4
/* AE1E40 8006ACA0 8C8D0004 */  lw    $t5, 4($a0)
/* AE1E44 8006ACA4 AC4D0004 */  sw    $t5, 4($v0)
/* AE1E48 8006ACA8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1E4C 8006ACAC 244E0008 */  addiu $t6, $v0, 8
/* AE1E50 8006ACB0 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE1E54 8006ACB4 AC450000 */  sw    $a1, ($v0)
/* AE1E58 8006ACB8 8C8F0008 */  lw    $t7, 8($a0)
/* AE1E5C 8006ACBC 27A40038 */  addiu $a0, $sp, 0x38
/* AE1E60 8006ACC0 AC4F0004 */  sw    $t7, 4($v0)
/* AE1E64 8006ACC4 8FB80050 */  lw    $t8, 0x50($sp)
/* AE1E68 8006ACC8 0C031AD5 */  jal   func_800C6B54
/* AE1E6C 8006ACCC 8F050000 */   lw    $a1, ($t8)
/* AE1E70 8006ACD0 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE1E74 8006ACD4 8FB00018 */  lw    $s0, 0x18($sp)
/* AE1E78 8006ACD8 27BD0050 */  addiu $sp, $sp, 0x50
/* AE1E7C 8006ACDC 03E00008 */  jr    $ra
/* AE1E80 8006ACE0 00000000 */   nop   

/* AE1E84 8006ACE4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AE1E88 8006ACE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE1E8C 8006ACEC AFB10018 */  sw    $s1, 0x18($sp)
/* AE1E90 8006ACF0 AFB00014 */  sw    $s0, 0x14($sp)
/* AE1E94 8006ACF4 AFA5005C */  sw    $a1, 0x5c($sp)
/* AE1E98 8006ACF8 8C850000 */  lw    $a1, ($a0)
/* AE1E9C 8006ACFC 00808825 */  move  $s1, $a0
/* AE1EA0 8006AD00 3C068014 */  lui   $a2, %hi(D_8013B6AC) # $a2, 0x8014
/* AE1EA4 8006AD04 24C6B6AC */  addiu $a2, %lo(D_8013B6AC) # addiu $a2, $a2, -0x4954
/* AE1EA8 8006AD08 27A40040 */  addiu $a0, $sp, 0x40
/* AE1EAC 8006AD0C 240703F7 */  li    $a3, 1015
/* AE1EB0 8006AD10 0C031AB1 */  jal   func_800C6AC4
/* AE1EB4 8006AD14 00A08025 */   move  $s0, $a1
/* AE1EB8 8006AD18 0C024F46 */  jal   func_80093D18
/* AE1EBC 8006AD1C 8E240000 */   lw    $a0, ($s1)
/* AE1EC0 8006AD20 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1EC4 8006AD24 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE1EC8 8006AD28 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE1ECC 8006AD2C 244E0008 */  addiu $t6, $v0, 8
/* AE1ED0 8006AD30 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE1ED4 8006AD34 AC4F0000 */  sw    $t7, ($v0)
/* AE1ED8 8006AD38 8E240000 */  lw    $a0, ($s1)
/* AE1EDC 8006AD3C 3C058014 */  lui   $a1, %hi(D_8013B6B8) # $a1, 0x8014
/* AE1EE0 8006AD40 24A5B6B8 */  addiu $a1, %lo(D_8013B6B8) # addiu $a1, $a1, -0x4948
/* AE1EE4 8006AD44 240603FB */  li    $a2, 1019
/* AE1EE8 8006AD48 0C0346A2 */  jal   func_800D1A88
/* AE1EEC 8006AD4C AFA2003C */   sw    $v0, 0x3c($sp)
/* AE1EF0 8006AD50 8FA3003C */  lw    $v1, 0x3c($sp)
/* AE1EF4 8006AD54 3C05DE00 */  lui   $a1, 0xde00
/* AE1EF8 8006AD58 3C098012 */  lui   $t1, %hi(D_8011E320) # $t1, 0x8012
/* AE1EFC 8006AD5C AC620004 */  sw    $v0, 4($v1)
/* AE1F00 8006AD60 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1F04 8006AD64 2529E320 */  addiu $t1, %lo(D_8011E320) # addiu $t1, $t1, -0x1ce0
/* AE1F08 8006AD68 24580008 */  addiu $t8, $v0, 8
/* AE1F0C 8006AD6C AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE1F10 8006AD70 AC450000 */  sw    $a1, ($v0)
/* AE1F14 8006AD74 87B9005E */  lh    $t9, 0x5e($sp)
/* AE1F18 8006AD78 001940C0 */  sll   $t0, $t9, 3
/* AE1F1C 8006AD7C 01194021 */  addu  $t0, $t0, $t9
/* AE1F20 8006AD80 00084080 */  sll   $t0, $t0, 2
/* AE1F24 8006AD84 01093821 */  addu  $a3, $t0, $t1
/* AE1F28 8006AD88 8CEA0008 */  lw    $t2, 8($a3)
/* AE1F2C 8006AD8C AC4A0004 */  sw    $t2, 4($v0)
/* AE1F30 8006AD90 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE1F34 8006AD94 244B0008 */  addiu $t3, $v0, 8
/* AE1F38 8006AD98 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* AE1F3C 8006AD9C AC450000 */  sw    $a1, ($v0)
/* AE1F40 8006ADA0 8CEC0004 */  lw    $t4, 4($a3)
/* AE1F44 8006ADA4 AC4C0004 */  sw    $t4, 4($v0)
/* AE1F48 8006ADA8 8E240000 */  lw    $a0, ($s1)
/* AE1F4C 8006ADAC 0C024F61 */  jal   func_80093D84
/* AE1F50 8006ADB0 AFA70028 */   sw    $a3, 0x28($sp)
/* AE1F54 8006ADB4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1F58 8006ADB8 8FA70028 */  lw    $a3, 0x28($sp)
/* AE1F5C 8006ADBC 3C0EDA38 */  lui   $t6, (0xDA380003 >> 16) # lui $t6, 0xda38
/* AE1F60 8006ADC0 244D0008 */  addiu $t5, $v0, 8
/* AE1F64 8006ADC4 AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE1F68 8006ADC8 35CE0003 */  ori   $t6, (0xDA380003 & 0xFFFF) # ori $t6, $t6, 3
/* AE1F6C 8006ADCC AC4E0000 */  sw    $t6, ($v0)
/* AE1F70 8006ADD0 8E240000 */  lw    $a0, ($s1)
/* AE1F74 8006ADD4 3C058014 */  lui   $a1, %hi(D_8013B6C4) # $a1, 0x8014
/* AE1F78 8006ADD8 24A5B6C4 */  addiu $a1, %lo(D_8013B6C4) # addiu $a1, $a1, -0x493c
/* AE1F7C 8006ADDC 24060403 */  li    $a2, 1027
/* AE1F80 8006ADE0 AFA20030 */  sw    $v0, 0x30($sp)
/* AE1F84 8006ADE4 0C0346A2 */  jal   func_800D1A88
/* AE1F88 8006ADE8 AFA70028 */   sw    $a3, 0x28($sp)
/* AE1F8C 8006ADEC 8FA30030 */  lw    $v1, 0x30($sp)
/* AE1F90 8006ADF0 8FA70028 */  lw    $a3, 0x28($sp)
/* AE1F94 8006ADF4 3C18DE00 */  lui   $t8, 0xde00
/* AE1F98 8006ADF8 AC620004 */  sw    $v0, 4($v1)
/* AE1F9C 8006ADFC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE1FA0 8006AE00 3C068014 */  lui   $a2, %hi(D_8013B6D0) # $a2, 0x8014
/* AE1FA4 8006AE04 24C6B6D0 */  addiu $a2, %lo(D_8013B6D0) # addiu $a2, $a2, -0x4930
/* AE1FA8 8006AE08 244F0008 */  addiu $t7, $v0, 8
/* AE1FAC 8006AE0C AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE1FB0 8006AE10 AC580000 */  sw    $t8, ($v0)
/* AE1FB4 8006AE14 8CF9000C */  lw    $t9, 0xc($a3)
/* AE1FB8 8006AE18 24070408 */  li    $a3, 1032
/* AE1FBC 8006AE1C 27A40040 */  addiu $a0, $sp, 0x40
/* AE1FC0 8006AE20 AC590004 */  sw    $t9, 4($v0)
/* AE1FC4 8006AE24 0C031AD5 */  jal   func_800C6B54
/* AE1FC8 8006AE28 8E250000 */   lw    $a1, ($s1)
/* AE1FCC 8006AE2C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE1FD0 8006AE30 8FB00014 */  lw    $s0, 0x14($sp)
/* AE1FD4 8006AE34 8FB10018 */  lw    $s1, 0x18($sp)
/* AE1FD8 8006AE38 03E00008 */  jr    $ra
/* AE1FDC 8006AE3C 27BD0058 */   addiu $sp, $sp, 0x58

/* AE1FE0 8006AE40 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AE1FE4 8006AE44 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE1FE8 8006AE48 AFB10018 */  sw    $s1, 0x18($sp)
/* AE1FEC 8006AE4C AFB00014 */  sw    $s0, 0x14($sp)
/* AE1FF0 8006AE50 AFA5005C */  sw    $a1, 0x5c($sp)
/* AE1FF4 8006AE54 8C850000 */  lw    $a1, ($a0)
/* AE1FF8 8006AE58 00808825 */  move  $s1, $a0
/* AE1FFC 8006AE5C 3C068014 */  lui   $a2, %hi(D_8013B6DC) # $a2, 0x8014
/* AE2000 8006AE60 24C6B6DC */  addiu $a2, %lo(D_8013B6DC) # addiu $a2, $a2, -0x4924
/* AE2004 8006AE64 27A40040 */  addiu $a0, $sp, 0x40
/* AE2008 8006AE68 2407040F */  li    $a3, 1039
/* AE200C 8006AE6C 0C031AB1 */  jal   func_800C6AC4
/* AE2010 8006AE70 00A08025 */   move  $s0, $a1
/* AE2014 8006AE74 0C024F46 */  jal   func_80093D18
/* AE2018 8006AE78 8E240000 */   lw    $a0, ($s1)
/* AE201C 8006AE7C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2020 8006AE80 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE2024 8006AE84 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE2028 8006AE88 244E0008 */  addiu $t6, $v0, 8
/* AE202C 8006AE8C AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE2030 8006AE90 AC4F0000 */  sw    $t7, ($v0)
/* AE2034 8006AE94 8E240000 */  lw    $a0, ($s1)
/* AE2038 8006AE98 3C058014 */  lui   $a1, %hi(D_8013B6E8) # $a1, 0x8014
/* AE203C 8006AE9C 24A5B6E8 */  addiu $a1, %lo(D_8013B6E8) # addiu $a1, $a1, -0x4918
/* AE2040 8006AEA0 24060413 */  li    $a2, 1043
/* AE2044 8006AEA4 0C0346A2 */  jal   func_800D1A88
/* AE2048 8006AEA8 AFA2003C */   sw    $v0, 0x3c($sp)
/* AE204C 8006AEAC 8FA3003C */  lw    $v1, 0x3c($sp)
/* AE2050 8006AEB0 3C19DE00 */  lui   $t9, 0xde00
/* AE2054 8006AEB4 3C0A8012 */  lui   $t2, %hi(D_8011E320) # $t2, 0x8012
/* AE2058 8006AEB8 AC620004 */  sw    $v0, 4($v1)
/* AE205C 8006AEBC 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2060 8006AEC0 254AE320 */  addiu $t2, %lo(D_8011E320) # addiu $t2, $t2, -0x1ce0
/* AE2064 8006AEC4 24580008 */  addiu $t8, $v0, 8
/* AE2068 8006AEC8 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE206C 8006AECC AC590000 */  sw    $t9, ($v0)
/* AE2070 8006AED0 87A8005E */  lh    $t0, 0x5e($sp)
/* AE2074 8006AED4 000848C0 */  sll   $t1, $t0, 3
/* AE2078 8006AED8 01284821 */  addu  $t1, $t1, $t0
/* AE207C 8006AEDC 00094880 */  sll   $t1, $t1, 2
/* AE2080 8006AEE0 012A3821 */  addu  $a3, $t1, $t2
/* AE2084 8006AEE4 8CEB0004 */  lw    $t3, 4($a3)
/* AE2088 8006AEE8 AC4B0004 */  sw    $t3, 4($v0)
/* AE208C 8006AEEC 8E240000 */  lw    $a0, ($s1)
/* AE2090 8006AEF0 0C024F61 */  jal   func_80093D84
/* AE2094 8006AEF4 AFA70028 */   sw    $a3, 0x28($sp)
/* AE2098 8006AEF8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE209C 8006AEFC 8FA70028 */  lw    $a3, 0x28($sp)
/* AE20A0 8006AF00 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AE20A4 8006AF04 244C0008 */  addiu $t4, $v0, 8
/* AE20A8 8006AF08 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AE20AC 8006AF0C 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AE20B0 8006AF10 AC4D0000 */  sw    $t5, ($v0)
/* AE20B4 8006AF14 8E240000 */  lw    $a0, ($s1)
/* AE20B8 8006AF18 3C058014 */  lui   $a1, %hi(D_8013B6F4) # $a1, 0x8014
/* AE20BC 8006AF1C 24A5B6F4 */  addiu $a1, %lo(D_8013B6F4) # addiu $a1, $a1, -0x490c
/* AE20C0 8006AF20 2406041A */  li    $a2, 1050
/* AE20C4 8006AF24 AFA20034 */  sw    $v0, 0x34($sp)
/* AE20C8 8006AF28 0C0346A2 */  jal   func_800D1A88
/* AE20CC 8006AF2C AFA70028 */   sw    $a3, 0x28($sp)
/* AE20D0 8006AF30 8FA30034 */  lw    $v1, 0x34($sp)
/* AE20D4 8006AF34 8FA70028 */  lw    $a3, 0x28($sp)
/* AE20D8 8006AF38 3C04DE00 */  lui   $a0, 0xde00
/* AE20DC 8006AF3C AC620004 */  sw    $v0, 4($v1)
/* AE20E0 8006AF40 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE20E4 8006AF44 3C068014 */  lui   $a2, %hi(D_8013B700) # $a2, 0x8014
/* AE20E8 8006AF48 24C6B700 */  addiu $a2, %lo(D_8013B700) # addiu $a2, $a2, -0x4900
/* AE20EC 8006AF4C 244E0008 */  addiu $t6, $v0, 8
/* AE20F0 8006AF50 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE20F4 8006AF54 AC440000 */  sw    $a0, ($v0)
/* AE20F8 8006AF58 8CEF0008 */  lw    $t7, 8($a3)
/* AE20FC 8006AF5C AC4F0004 */  sw    $t7, 4($v0)
/* AE2100 8006AF60 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2104 8006AF64 24580008 */  addiu $t8, $v0, 8
/* AE2108 8006AF68 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE210C 8006AF6C AC440000 */  sw    $a0, ($v0)
/* AE2110 8006AF70 8CF9000C */  lw    $t9, 0xc($a3)
/* AE2114 8006AF74 24070420 */  li    $a3, 1056
/* AE2118 8006AF78 27A40040 */  addiu $a0, $sp, 0x40
/* AE211C 8006AF7C AC590004 */  sw    $t9, 4($v0)
/* AE2120 8006AF80 0C031AD5 */  jal   func_800C6B54
/* AE2124 8006AF84 8E250000 */   lw    $a1, ($s1)
/* AE2128 8006AF88 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE212C 8006AF8C 8FB00014 */  lw    $s0, 0x14($sp)
/* AE2130 8006AF90 8FB10018 */  lw    $s1, 0x18($sp)
/* AE2134 8006AF94 03E00008 */  jr    $ra
/* AE2138 8006AF98 27BD0058 */   addiu $sp, $sp, 0x58

/* AE213C 8006AF9C 27BDFF88 */  addiu $sp, $sp, -0x78
/* AE2140 8006AFA0 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE2144 8006AFA4 AFB10038 */  sw    $s1, 0x38($sp)
/* AE2148 8006AFA8 AFB00034 */  sw    $s0, 0x34($sp)
/* AE214C 8006AFAC AFA5007C */  sw    $a1, 0x7c($sp)
/* AE2150 8006AFB0 8C850000 */  lw    $a1, ($a0)
/* AE2154 8006AFB4 00808825 */  move  $s1, $a0
/* AE2158 8006AFB8 3C068014 */  lui   $a2, %hi(D_8013B70C) # $a2, 0x8014
/* AE215C 8006AFBC 24C6B70C */  addiu $a2, %lo(D_8013B70C) # addiu $a2, $a2, -0x48f4
/* AE2160 8006AFC0 27A40060 */  addiu $a0, $sp, 0x60
/* AE2164 8006AFC4 24070427 */  li    $a3, 1063
/* AE2168 8006AFC8 0C031AB1 */  jal   func_800C6AC4
/* AE216C 8006AFCC 00A08025 */   move  $s0, $a1
/* AE2170 8006AFD0 0C024F61 */  jal   func_80093D84
/* AE2174 8006AFD4 8E240000 */   lw    $a0, ($s1)
/* AE2178 8006AFD8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE217C 8006AFDC 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE2180 8006AFE0 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE2184 8006AFE4 244E0008 */  addiu $t6, $v0, 8
/* AE2188 8006AFE8 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE218C 8006AFEC AC4F0000 */  sw    $t7, ($v0)
/* AE2190 8006AFF0 8E23009C */  lw    $v1, 0x9c($s1)
/* AE2194 8006AFF4 8E240000 */  lw    $a0, ($s1)
/* AE2198 8006AFF8 24180020 */  li    $t8, 32
/* AE219C 8006AFFC 00033880 */  sll   $a3, $v1, 2
/* AE21A0 8006B000 00E33823 */  subu  $a3, $a3, $v1
/* AE21A4 8006B004 00034040 */  sll   $t0, $v1, 1
/* AE21A8 8006B008 00085823 */  negu  $t3, $t0
/* AE21AC 8006B00C 00073840 */  sll   $a3, $a3, 1
/* AE21B0 8006B010 24190020 */  li    $t9, 32
/* AE21B4 8006B014 240A0001 */  li    $t2, 1
/* AE21B8 8006B018 240C0020 */  li    $t4, 32
/* AE21BC 8006B01C 240D0020 */  li    $t5, 32
/* AE21C0 8006B020 AFAD0028 */  sw    $t5, 0x28($sp)
/* AE21C4 8006B024 AFAC0024 */  sw    $t4, 0x24($sp)
/* AE21C8 8006B028 AFAA0018 */  sw    $t2, 0x18($sp)
/* AE21CC 8006B02C AFB90014 */  sw    $t9, 0x14($sp)
/* AE21D0 8006B030 00073823 */  negu  $a3, $a3
/* AE21D4 8006B034 AFAB0020 */  sw    $t3, 0x20($sp)
/* AE21D8 8006B038 01003025 */  move  $a2, $t0
/* AE21DC 8006B03C AFB80010 */  sw    $t8, 0x10($sp)
/* AE21E0 8006B040 00002825 */  move  $a1, $zero
/* AE21E4 8006B044 AFA2005C */  sw    $v0, 0x5c($sp)
/* AE21E8 8006B048 0C0253D0 */  jal   func_80094F40
/* AE21EC 8006B04C AFA3001C */   sw    $v1, 0x1c($sp)
/* AE21F0 8006B050 8FA9005C */  lw    $t1, 0x5c($sp)
/* AE21F4 8006B054 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE21F8 8006B058 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE21FC 8006B05C AD220004 */  sw    $v0, 4($t1)
/* AE2200 8006B060 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2204 8006B064 3C058014 */  lui   $a1, %hi(D_8013B718) # $a1, 0x8014
/* AE2208 8006B068 24A5B718 */  addiu $a1, %lo(D_8013B718) # addiu $a1, $a1, -0x48e8
/* AE220C 8006B06C 244E0008 */  addiu $t6, $v0, 8
/* AE2210 8006B070 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE2214 8006B074 AC4F0000 */  sw    $t7, ($v0)
/* AE2218 8006B078 8E240000 */  lw    $a0, ($s1)
/* AE221C 8006B07C 24060432 */  li    $a2, 1074
/* AE2220 8006B080 0C0346A2 */  jal   func_800D1A88
/* AE2224 8006B084 AFA20058 */   sw    $v0, 0x58($sp)
/* AE2228 8006B088 8FA30058 */  lw    $v1, 0x58($sp)
/* AE222C 8006B08C 3C05DE00 */  lui   $a1, 0xde00
/* AE2230 8006B090 3C0B8012 */  lui   $t3, %hi(D_8011E320) # $t3, 0x8012
/* AE2234 8006B094 AC620004 */  sw    $v0, 4($v1)
/* AE2238 8006B098 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE223C 8006B09C 256BE320 */  addiu $t3, %lo(D_8011E320) # addiu $t3, $t3, -0x1ce0
/* AE2240 8006B0A0 3C068014 */  lui   $a2, %hi(D_8013B724) # $a2, 0x8014
/* AE2244 8006B0A4 24580008 */  addiu $t8, $v0, 8
/* AE2248 8006B0A8 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE224C 8006B0AC AC450000 */  sw    $a1, ($v0)
/* AE2250 8006B0B0 87B9007E */  lh    $t9, 0x7e($sp)
/* AE2254 8006B0B4 24C6B724 */  addiu $a2, %lo(D_8013B724) # addiu $a2, $a2, -0x48dc
/* AE2258 8006B0B8 24070439 */  li    $a3, 1081
/* AE225C 8006B0BC 001950C0 */  sll   $t2, $t9, 3
/* AE2260 8006B0C0 01595021 */  addu  $t2, $t2, $t9
/* AE2264 8006B0C4 000A5080 */  sll   $t2, $t2, 2
/* AE2268 8006B0C8 014B2021 */  addu  $a0, $t2, $t3
/* AE226C 8006B0CC 8C8C0004 */  lw    $t4, 4($a0)
/* AE2270 8006B0D0 AC4C0004 */  sw    $t4, 4($v0)
/* AE2274 8006B0D4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2278 8006B0D8 244D0008 */  addiu $t5, $v0, 8
/* AE227C 8006B0DC AE0D02D0 */  sw    $t5, 0x2d0($s0)
/* AE2280 8006B0E0 AC450000 */  sw    $a1, ($v0)
/* AE2284 8006B0E4 8C8E0008 */  lw    $t6, 8($a0)
/* AE2288 8006B0E8 AC4E0004 */  sw    $t6, 4($v0)
/* AE228C 8006B0EC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2290 8006B0F0 244F0008 */  addiu $t7, $v0, 8
/* AE2294 8006B0F4 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE2298 8006B0F8 AC450000 */  sw    $a1, ($v0)
/* AE229C 8006B0FC 8C98000C */  lw    $t8, 0xc($a0)
/* AE22A0 8006B100 27A40060 */  addiu $a0, $sp, 0x60
/* AE22A4 8006B104 AC580004 */  sw    $t8, 4($v0)
/* AE22A8 8006B108 0C031AD5 */  jal   func_800C6B54
/* AE22AC 8006B10C 8E250000 */   lw    $a1, ($s1)
/* AE22B0 8006B110 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE22B4 8006B114 8FB00034 */  lw    $s0, 0x34($sp)
/* AE22B8 8006B118 8FB10038 */  lw    $s1, 0x38($sp)
/* AE22BC 8006B11C 03E00008 */  jr    $ra
/* AE22C0 8006B120 27BD0078 */   addiu $sp, $sp, 0x78

/* AE22C4 8006B124 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AE22C8 8006B128 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE22CC 8006B12C AFB00018 */  sw    $s0, 0x18($sp)
/* AE22D0 8006B130 AFA40058 */  sw    $a0, 0x58($sp)
/* AE22D4 8006B134 AFA5005C */  sw    $a1, 0x5c($sp)
/* AE22D8 8006B138 8C850000 */  lw    $a1, ($a0)
/* AE22DC 8006B13C 3C068014 */  lui   $a2, %hi(D_8013B730) # $a2, 0x8014
/* AE22E0 8006B140 24C6B730 */  addiu $a2, %lo(D_8013B730) # addiu $a2, $a2, -0x48d0
/* AE22E4 8006B144 27A40040 */  addiu $a0, $sp, 0x40
/* AE22E8 8006B148 24070440 */  li    $a3, 1088
/* AE22EC 8006B14C 0C031AB1 */  jal   func_800C6AC4
/* AE22F0 8006B150 00A08025 */   move  $s0, $a1
/* AE22F4 8006B154 8FAF0058 */  lw    $t7, 0x58($sp)
/* AE22F8 8006B158 0C024F46 */  jal   func_80093D18
/* AE22FC 8006B15C 8DE40000 */   lw    $a0, ($t7)
/* AE2300 8006B160 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2304 8006B164 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE2308 8006B168 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE230C 8006B16C 24580008 */  addiu $t8, $v0, 8
/* AE2310 8006B170 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE2314 8006B174 AC590000 */  sw    $t9, ($v0)
/* AE2318 8006B178 8FA80058 */  lw    $t0, 0x58($sp)
/* AE231C 8006B17C 3C058014 */  lui   $a1, %hi(D_8013B73C) # $a1, 0x8014
/* AE2320 8006B180 24A5B73C */  addiu $a1, %lo(D_8013B73C) # addiu $a1, $a1, -0x48c4
/* AE2324 8006B184 8D040000 */  lw    $a0, ($t0)
/* AE2328 8006B188 24060444 */  li    $a2, 1092
/* AE232C 8006B18C 0C0346A2 */  jal   func_800D1A88
/* AE2330 8006B190 AFA2003C */   sw    $v0, 0x3c($sp)
/* AE2334 8006B194 8FA3003C */  lw    $v1, 0x3c($sp)
/* AE2338 8006B198 3C05DE00 */  lui   $a1, 0xde00
/* AE233C 8006B19C 3C0C8012 */  lui   $t4, %hi(D_8011E320) # $t4, 0x8012
/* AE2340 8006B1A0 AC620004 */  sw    $v0, 4($v1)
/* AE2344 8006B1A4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2348 8006B1A8 258CE320 */  addiu $t4, %lo(D_8011E320) # addiu $t4, $t4, -0x1ce0
/* AE234C 8006B1AC 3C068014 */  lui   $a2, %hi(D_8013B748) # $a2, 0x8014
/* AE2350 8006B1B0 24490008 */  addiu $t1, $v0, 8
/* AE2354 8006B1B4 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AE2358 8006B1B8 AC450000 */  sw    $a1, ($v0)
/* AE235C 8006B1BC 87AA005E */  lh    $t2, 0x5e($sp)
/* AE2360 8006B1C0 24C6B748 */  addiu $a2, %lo(D_8013B748) # addiu $a2, $a2, -0x48b8
/* AE2364 8006B1C4 2407044C */  li    $a3, 1100
/* AE2368 8006B1C8 000A58C0 */  sll   $t3, $t2, 3
/* AE236C 8006B1CC 016A5821 */  addu  $t3, $t3, $t2
/* AE2370 8006B1D0 000B5880 */  sll   $t3, $t3, 2
/* AE2374 8006B1D4 016C2021 */  addu  $a0, $t3, $t4
/* AE2378 8006B1D8 8C8D0008 */  lw    $t5, 8($a0)
/* AE237C 8006B1DC AC4D0004 */  sw    $t5, 4($v0)
/* AE2380 8006B1E0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2384 8006B1E4 244E0008 */  addiu $t6, $v0, 8
/* AE2388 8006B1E8 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE238C 8006B1EC AC450000 */  sw    $a1, ($v0)
/* AE2390 8006B1F0 8C8F0004 */  lw    $t7, 4($a0)
/* AE2394 8006B1F4 AC4F0004 */  sw    $t7, 4($v0)
/* AE2398 8006B1F8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE239C 8006B1FC 24580008 */  addiu $t8, $v0, 8
/* AE23A0 8006B200 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE23A4 8006B204 AC450000 */  sw    $a1, ($v0)
/* AE23A8 8006B208 8C99000C */  lw    $t9, 0xc($a0)
/* AE23AC 8006B20C AC590004 */  sw    $t9, 4($v0)
/* AE23B0 8006B210 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE23B4 8006B214 24480008 */  addiu $t0, $v0, 8
/* AE23B8 8006B218 AE0802C0 */  sw    $t0, 0x2c0($s0)
/* AE23BC 8006B21C AC450000 */  sw    $a1, ($v0)
/* AE23C0 8006B220 8C890010 */  lw    $t1, 0x10($a0)
/* AE23C4 8006B224 27A40040 */  addiu $a0, $sp, 0x40
/* AE23C8 8006B228 AC490004 */  sw    $t1, 4($v0)
/* AE23CC 8006B22C 8FAA0058 */  lw    $t2, 0x58($sp)
/* AE23D0 8006B230 0C031AD5 */  jal   func_800C6B54
/* AE23D4 8006B234 8D450000 */   lw    $a1, ($t2)
/* AE23D8 8006B238 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE23DC 8006B23C 8FB00018 */  lw    $s0, 0x18($sp)
/* AE23E0 8006B240 27BD0058 */  addiu $sp, $sp, 0x58
/* AE23E4 8006B244 03E00008 */  jr    $ra
/* AE23E8 8006B248 00000000 */   nop   

/* AE23EC 8006B24C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AE23F0 8006B250 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE23F4 8006B254 AFB10018 */  sw    $s1, 0x18($sp)
/* AE23F8 8006B258 AFB00014 */  sw    $s0, 0x14($sp)
/* AE23FC 8006B25C AFA5005C */  sw    $a1, 0x5c($sp)
/* AE2400 8006B260 8C850000 */  lw    $a1, ($a0)
/* AE2404 8006B264 00808825 */  move  $s1, $a0
/* AE2408 8006B268 3C068014 */  lui   $a2, %hi(D_8013B754) # $a2, 0x8014
/* AE240C 8006B26C 24C6B754 */  addiu $a2, %lo(D_8013B754) # addiu $a2, $a2, -0x48ac
/* AE2410 8006B270 27A40040 */  addiu $a0, $sp, 0x40
/* AE2414 8006B274 24070454 */  li    $a3, 1108
/* AE2418 8006B278 0C031AB1 */  jal   func_800C6AC4
/* AE241C 8006B27C 00A08025 */   move  $s0, $a1
/* AE2420 8006B280 0C024F46 */  jal   func_80093D18
/* AE2424 8006B284 8E240000 */   lw    $a0, ($s1)
/* AE2428 8006B288 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE242C 8006B28C 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE2430 8006B290 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE2434 8006B294 244E0008 */  addiu $t6, $v0, 8
/* AE2438 8006B298 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE243C 8006B29C AC4F0000 */  sw    $t7, ($v0)
/* AE2440 8006B2A0 8E240000 */  lw    $a0, ($s1)
/* AE2444 8006B2A4 3C058014 */  lui   $a1, %hi(D_8013B760) # $a1, 0x8014
/* AE2448 8006B2A8 24A5B760 */  addiu $a1, %lo(D_8013B760) # addiu $a1, $a1, -0x48a0
/* AE244C 8006B2AC 24060458 */  li    $a2, 1112
/* AE2450 8006B2B0 0C0346A2 */  jal   func_800D1A88
/* AE2454 8006B2B4 AFA2003C */   sw    $v0, 0x3c($sp)
/* AE2458 8006B2B8 8FA3003C */  lw    $v1, 0x3c($sp)
/* AE245C 8006B2BC 3C08DE00 */  lui   $t0, 0xde00
/* AE2460 8006B2C0 3C0A8012 */  lui   $t2, %hi(D_8011E320) # $t2, 0x8012
/* AE2464 8006B2C4 AC620004 */  sw    $v0, 4($v1)
/* AE2468 8006B2C8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE246C 8006B2CC 254AE320 */  addiu $t2, %lo(D_8011E320) # addiu $t2, $t2, -0x1ce0
/* AE2470 8006B2D0 24580008 */  addiu $t8, $v0, 8
/* AE2474 8006B2D4 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE2478 8006B2D8 AC480000 */  sw    $t0, ($v0)
/* AE247C 8006B2DC 87B9005E */  lh    $t9, 0x5e($sp)
/* AE2480 8006B2E0 001948C0 */  sll   $t1, $t9, 3
/* AE2484 8006B2E4 01394821 */  addu  $t1, $t1, $t9
/* AE2488 8006B2E8 00094880 */  sll   $t1, $t1, 2
/* AE248C 8006B2EC 012A3821 */  addu  $a3, $t1, $t2
/* AE2490 8006B2F0 8CEB0008 */  lw    $t3, 8($a3)
/* AE2494 8006B2F4 AC4B0004 */  sw    $t3, 4($v0)
/* AE2498 8006B2F8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE249C 8006B2FC 244C0008 */  addiu $t4, $v0, 8
/* AE24A0 8006B300 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AE24A4 8006B304 AC480000 */  sw    $t0, ($v0)
/* AE24A8 8006B308 8CED0004 */  lw    $t5, 4($a3)
/* AE24AC 8006B30C AC4D0004 */  sw    $t5, 4($v0)
/* AE24B0 8006B310 8E240000 */  lw    $a0, ($s1)
/* AE24B4 8006B314 0C024F61 */  jal   func_80093D84
/* AE24B8 8006B318 AFA70024 */   sw    $a3, 0x24($sp)
/* AE24BC 8006B31C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE24C0 8006B320 8FA70024 */  lw    $a3, 0x24($sp)
/* AE24C4 8006B324 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE24C8 8006B328 244E0008 */  addiu $t6, $v0, 8
/* AE24CC 8006B32C AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE24D0 8006B330 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE24D4 8006B334 AC4F0000 */  sw    $t7, ($v0)
/* AE24D8 8006B338 8E240000 */  lw    $a0, ($s1)
/* AE24DC 8006B33C 3C058014 */  lui   $a1, %hi(D_8013B76C) # $a1, 0x8014
/* AE24E0 8006B340 24A5B76C */  addiu $a1, %lo(D_8013B76C) # addiu $a1, $a1, -0x4894
/* AE24E4 8006B344 24060460 */  li    $a2, 1120
/* AE24E8 8006B348 AFA20030 */  sw    $v0, 0x30($sp)
/* AE24EC 8006B34C 0C0346A2 */  jal   func_800D1A88
/* AE24F0 8006B350 AFA70024 */   sw    $a3, 0x24($sp)
/* AE24F4 8006B354 8FA30030 */  lw    $v1, 0x30($sp)
/* AE24F8 8006B358 8FA70024 */  lw    $a3, 0x24($sp)
/* AE24FC 8006B35C 3C08DE00 */  lui   $t0, 0xde00
/* AE2500 8006B360 AC620004 */  sw    $v0, 4($v1)
/* AE2504 8006B364 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2508 8006B368 3C068014 */  lui   $a2, %hi(D_8013B778) # $a2, 0x8014
/* AE250C 8006B36C 24C6B778 */  addiu $a2, %lo(D_8013B778) # addiu $a2, $a2, -0x4888
/* AE2510 8006B370 24580008 */  addiu $t8, $v0, 8
/* AE2514 8006B374 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE2518 8006B378 AC480000 */  sw    $t0, ($v0)
/* AE251C 8006B37C 8CF90010 */  lw    $t9, 0x10($a3)
/* AE2520 8006B380 27A40040 */  addiu $a0, $sp, 0x40
/* AE2524 8006B384 AC590004 */  sw    $t9, 4($v0)
/* AE2528 8006B388 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE252C 8006B38C 24490008 */  addiu $t1, $v0, 8
/* AE2530 8006B390 AE0902D0 */  sw    $t1, 0x2d0($s0)
/* AE2534 8006B394 AC480000 */  sw    $t0, ($v0)
/* AE2538 8006B398 8CEA000C */  lw    $t2, 0xc($a3)
/* AE253C 8006B39C 24070466 */  li    $a3, 1126
/* AE2540 8006B3A0 AC4A0004 */  sw    $t2, 4($v0)
/* AE2544 8006B3A4 0C031AD5 */  jal   func_800C6B54
/* AE2548 8006B3A8 8E250000 */   lw    $a1, ($s1)
/* AE254C 8006B3AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE2550 8006B3B0 8FB00014 */  lw    $s0, 0x14($sp)
/* AE2554 8006B3B4 8FB10018 */  lw    $s1, 0x18($sp)
/* AE2558 8006B3B8 03E00008 */  jr    $ra
/* AE255C 8006B3BC 27BD0058 */   addiu $sp, $sp, 0x58

/* AE2560 8006B3C0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AE2564 8006B3C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE2568 8006B3C8 AFB10018 */  sw    $s1, 0x18($sp)
/* AE256C 8006B3CC AFB00014 */  sw    $s0, 0x14($sp)
/* AE2570 8006B3D0 AFA5005C */  sw    $a1, 0x5c($sp)
/* AE2574 8006B3D4 8C850000 */  lw    $a1, ($a0)
/* AE2578 8006B3D8 00808825 */  move  $s1, $a0
/* AE257C 8006B3DC 3C068014 */  lui   $a2, %hi(D_8013B784) # $a2, 0x8014
/* AE2580 8006B3E0 24C6B784 */  addiu $a2, %lo(D_8013B784) # addiu $a2, $a2, -0x487c
/* AE2584 8006B3E4 27A40040 */  addiu $a0, $sp, 0x40
/* AE2588 8006B3E8 2407046D */  li    $a3, 1133
/* AE258C 8006B3EC 0C031AB1 */  jal   func_800C6AC4
/* AE2590 8006B3F0 00A08025 */   move  $s0, $a1
/* AE2594 8006B3F4 3C018014 */  lui   $at, 0x8014
/* AE2598 8006B3F8 C42CB82C */  lwc1  $f12, -0x47d4($at)
/* AE259C 8006B3FC 24070001 */  li    $a3, 1
/* AE25A0 8006B400 44066000 */  mfc1  $a2, $f12
/* AE25A4 8006B404 0C0342A3 */  jal   func_800D0A8C
/* AE25A8 8006B408 46006386 */   mov.s $f14, $f12
/* AE25AC 8006B40C 0C024F46 */  jal   func_80093D18
/* AE25B0 8006B410 8E240000 */   lw    $a0, ($s1)
/* AE25B4 8006B414 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE25B8 8006B418 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE25BC 8006B41C 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE25C0 8006B420 244E0008 */  addiu $t6, $v0, 8
/* AE25C4 8006B424 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE25C8 8006B428 AC4F0000 */  sw    $t7, ($v0)
/* AE25CC 8006B42C 8E240000 */  lw    $a0, ($s1)
/* AE25D0 8006B430 3C058014 */  lui   $a1, %hi(D_8013B790) # $a1, 0x8014
/* AE25D4 8006B434 24A5B790 */  addiu $a1, %lo(D_8013B790) # addiu $a1, $a1, -0x4870
/* AE25D8 8006B438 24060474 */  li    $a2, 1140
/* AE25DC 8006B43C 0C0346A2 */  jal   func_800D1A88
/* AE25E0 8006B440 AFA2003C */   sw    $v0, 0x3c($sp)
/* AE25E4 8006B444 8FA3003C */  lw    $v1, 0x3c($sp)
/* AE25E8 8006B448 3C08DE00 */  lui   $t0, 0xde00
/* AE25EC 8006B44C 3C0A8012 */  lui   $t2, %hi(D_8011E320) # $t2, 0x8012
/* AE25F0 8006B450 AC620004 */  sw    $v0, 4($v1)
/* AE25F4 8006B454 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE25F8 8006B458 254AE320 */  addiu $t2, %lo(D_8011E320) # addiu $t2, $t2, -0x1ce0
/* AE25FC 8006B45C 24580008 */  addiu $t8, $v0, 8
/* AE2600 8006B460 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE2604 8006B464 AC480000 */  sw    $t0, ($v0)
/* AE2608 8006B468 87B9005E */  lh    $t9, 0x5e($sp)
/* AE260C 8006B46C 001948C0 */  sll   $t1, $t9, 3
/* AE2610 8006B470 01394821 */  addu  $t1, $t1, $t9
/* AE2614 8006B474 00094880 */  sll   $t1, $t1, 2
/* AE2618 8006B478 012A3821 */  addu  $a3, $t1, $t2
/* AE261C 8006B47C 8CEB0008 */  lw    $t3, 8($a3)
/* AE2620 8006B480 AC4B0004 */  sw    $t3, 4($v0)
/* AE2624 8006B484 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2628 8006B488 244C0008 */  addiu $t4, $v0, 8
/* AE262C 8006B48C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AE2630 8006B490 AC480000 */  sw    $t0, ($v0)
/* AE2634 8006B494 8CED0004 */  lw    $t5, 4($a3)
/* AE2638 8006B498 AC4D0004 */  sw    $t5, 4($v0)
/* AE263C 8006B49C 8E240000 */  lw    $a0, ($s1)
/* AE2640 8006B4A0 0C024F61 */  jal   func_80093D84
/* AE2644 8006B4A4 AFA70024 */   sw    $a3, 0x24($sp)
/* AE2648 8006B4A8 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE264C 8006B4AC 8FA70024 */  lw    $a3, 0x24($sp)
/* AE2650 8006B4B0 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE2654 8006B4B4 244E0008 */  addiu $t6, $v0, 8
/* AE2658 8006B4B8 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE265C 8006B4BC 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE2660 8006B4C0 AC4F0000 */  sw    $t7, ($v0)
/* AE2664 8006B4C4 8E240000 */  lw    $a0, ($s1)
/* AE2668 8006B4C8 3C058014 */  lui   $a1, %hi(D_8013B79C) # $a1, 0x8014
/* AE266C 8006B4CC 24A5B79C */  addiu $a1, %lo(D_8013B79C) # addiu $a1, $a1, -0x4864
/* AE2670 8006B4D0 2406047C */  li    $a2, 1148
/* AE2674 8006B4D4 AFA20030 */  sw    $v0, 0x30($sp)
/* AE2678 8006B4D8 0C0346A2 */  jal   func_800D1A88
/* AE267C 8006B4DC AFA70024 */   sw    $a3, 0x24($sp)
/* AE2680 8006B4E0 8FA30030 */  lw    $v1, 0x30($sp)
/* AE2684 8006B4E4 8FA70024 */  lw    $a3, 0x24($sp)
/* AE2688 8006B4E8 3C08DE00 */  lui   $t0, 0xde00
/* AE268C 8006B4EC AC620004 */  sw    $v0, 4($v1)
/* AE2690 8006B4F0 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2694 8006B4F4 3C068014 */  lui   $a2, %hi(D_8013B7A8) # $a2, 0x8014
/* AE2698 8006B4F8 24C6B7A8 */  addiu $a2, %lo(D_8013B7A8) # addiu $a2, $a2, -0x4858
/* AE269C 8006B4FC 24580008 */  addiu $t8, $v0, 8
/* AE26A0 8006B500 AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE26A4 8006B504 AC480000 */  sw    $t0, ($v0)
/* AE26A8 8006B508 8CF90010 */  lw    $t9, 0x10($a3)
/* AE26AC 8006B50C 27A40040 */  addiu $a0, $sp, 0x40
/* AE26B0 8006B510 AC590004 */  sw    $t9, 4($v0)
/* AE26B4 8006B514 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE26B8 8006B518 24490008 */  addiu $t1, $v0, 8
/* AE26BC 8006B51C AE0902D0 */  sw    $t1, 0x2d0($s0)
/* AE26C0 8006B520 AC480000 */  sw    $t0, ($v0)
/* AE26C4 8006B524 8CEA000C */  lw    $t2, 0xc($a3)
/* AE26C8 8006B528 24070482 */  li    $a3, 1154
/* AE26CC 8006B52C AC4A0004 */  sw    $t2, 4($v0)
/* AE26D0 8006B530 0C031AD5 */  jal   func_800C6B54
/* AE26D4 8006B534 8E250000 */   lw    $a1, ($s1)
/* AE26D8 8006B538 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE26DC 8006B53C 8FB00014 */  lw    $s0, 0x14($sp)
/* AE26E0 8006B540 8FB10018 */  lw    $s1, 0x18($sp)
/* AE26E4 8006B544 03E00008 */  jr    $ra
/* AE26E8 8006B548 27BD0058 */   addiu $sp, $sp, 0x58

/* AE26EC 8006B54C 27BDFF88 */  addiu $sp, $sp, -0x78
/* AE26F0 8006B550 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE26F4 8006B554 AFB10038 */  sw    $s1, 0x38($sp)
/* AE26F8 8006B558 AFB00034 */  sw    $s0, 0x34($sp)
/* AE26FC 8006B55C AFA5007C */  sw    $a1, 0x7c($sp)
/* AE2700 8006B560 8C850000 */  lw    $a1, ($a0)
/* AE2704 8006B564 00808825 */  move  $s1, $a0
/* AE2708 8006B568 3C068014 */  lui   $a2, %hi(D_8013B7B4) # $a2, 0x8014
/* AE270C 8006B56C 24C6B7B4 */  addiu $a2, %lo(D_8013B7B4) # addiu $a2, $a2, -0x484c
/* AE2710 8006B570 27A40060 */  addiu $a0, $sp, 0x60
/* AE2714 8006B574 2407048A */  li    $a3, 1162
/* AE2718 8006B578 0C031AB1 */  jal   func_800C6AC4
/* AE271C 8006B57C 00A08025 */   move  $s0, $a1
/* AE2720 8006B580 0C024F61 */  jal   func_80093D84
/* AE2724 8006B584 8E240000 */   lw    $a0, ($s1)
/* AE2728 8006B588 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE272C 8006B58C 3C0FDB06 */  lui   $t7, (0xDB060020 >> 16) # lui $t7, 0xdb06
/* AE2730 8006B590 35EF0020 */  ori   $t7, (0xDB060020 & 0xFFFF) # ori $t7, $t7, 0x20
/* AE2734 8006B594 244E0008 */  addiu $t6, $v0, 8
/* AE2738 8006B598 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE273C 8006B59C AC4F0000 */  sw    $t7, ($v0)
/* AE2740 8006B5A0 8E23009C */  lw    $v1, 0x9c($s1)
/* AE2744 8006B5A4 8E240000 */  lw    $a0, ($s1)
/* AE2748 8006B5A8 240E0020 */  li    $t6, 32
/* AE274C 8006B5AC 00034880 */  sll   $t1, $v1, 2
/* AE2750 8006B5B0 00096023 */  negu  $t4, $t1
/* AE2754 8006B5B4 24180040 */  li    $t8, 64
/* AE2758 8006B5B8 24190040 */  li    $t9, 64
/* AE275C 8006B5BC 240B0001 */  li    $t3, 1
/* AE2760 8006B5C0 240D0020 */  li    $t5, 32
/* AE2764 8006B5C4 00034040 */  sll   $t0, $v1, 1
/* AE2768 8006B5C8 01003025 */  move  $a2, $t0
/* AE276C 8006B5CC 00083823 */  negu  $a3, $t0
/* AE2770 8006B5D0 AFAD0024 */  sw    $t5, 0x24($sp)
/* AE2774 8006B5D4 AFAB0018 */  sw    $t3, 0x18($sp)
/* AE2778 8006B5D8 AFB90014 */  sw    $t9, 0x14($sp)
/* AE277C 8006B5DC AFB80010 */  sw    $t8, 0x10($sp)
/* AE2780 8006B5E0 AFAC0020 */  sw    $t4, 0x20($sp)
/* AE2784 8006B5E4 AFA9001C */  sw    $t1, 0x1c($sp)
/* AE2788 8006B5E8 AFAE0028 */  sw    $t6, 0x28($sp)
/* AE278C 8006B5EC 00002825 */  move  $a1, $zero
/* AE2790 8006B5F0 0C0253D0 */  jal   func_80094F40
/* AE2794 8006B5F4 AFA2005C */   sw    $v0, 0x5c($sp)
/* AE2798 8006B5F8 8FAA005C */  lw    $t2, 0x5c($sp)
/* AE279C 8006B5FC 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* AE27A0 8006B600 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* AE27A4 8006B604 AD420004 */  sw    $v0, 4($t2)
/* AE27A8 8006B608 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE27AC 8006B60C 3C058014 */  lui   $a1, %hi(D_8013B7C0) # $a1, 0x8014
/* AE27B0 8006B610 24A5B7C0 */  addiu $a1, %lo(D_8013B7C0) # addiu $a1, $a1, -0x4840
/* AE27B4 8006B614 244F0008 */  addiu $t7, $v0, 8
/* AE27B8 8006B618 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE27BC 8006B61C AC580000 */  sw    $t8, ($v0)
/* AE27C0 8006B620 8E240000 */  lw    $a0, ($s1)
/* AE27C4 8006B624 24060495 */  li    $a2, 1173
/* AE27C8 8006B628 0C0346A2 */  jal   func_800D1A88
/* AE27CC 8006B62C AFA20058 */   sw    $v0, 0x58($sp)
/* AE27D0 8006B630 8FA30058 */  lw    $v1, 0x58($sp)
/* AE27D4 8006B634 3C05DE00 */  lui   $a1, 0xde00
/* AE27D8 8006B638 3C0D8012 */  lui   $t5, %hi(D_8011E320) # $t5, 0x8012
/* AE27DC 8006B63C AC620004 */  sw    $v0, 4($v1)
/* AE27E0 8006B640 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE27E4 8006B644 25ADE320 */  addiu $t5, %lo(D_8011E320) # addiu $t5, $t5, -0x1ce0
/* AE27E8 8006B648 3C068014 */  lui   $a2, %hi(D_8013B7CC) # $a2, 0x8014
/* AE27EC 8006B64C 24590008 */  addiu $t9, $v0, 8
/* AE27F0 8006B650 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* AE27F4 8006B654 AC450000 */  sw    $a1, ($v0)
/* AE27F8 8006B658 87AB007E */  lh    $t3, 0x7e($sp)
/* AE27FC 8006B65C 24C6B7CC */  addiu $a2, %lo(D_8013B7CC) # addiu $a2, $a2, -0x4834
/* AE2800 8006B660 2407049D */  li    $a3, 1181
/* AE2804 8006B664 000B60C0 */  sll   $t4, $t3, 3
/* AE2808 8006B668 018B6021 */  addu  $t4, $t4, $t3
/* AE280C 8006B66C 000C6080 */  sll   $t4, $t4, 2
/* AE2810 8006B670 018D2021 */  addu  $a0, $t4, $t5
/* AE2814 8006B674 8C8E000C */  lw    $t6, 0xc($a0)
/* AE2818 8006B678 AC4E0004 */  sw    $t6, 4($v0)
/* AE281C 8006B67C 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2820 8006B680 244F0008 */  addiu $t7, $v0, 8
/* AE2824 8006B684 AE0F02D0 */  sw    $t7, 0x2d0($s0)
/* AE2828 8006B688 AC450000 */  sw    $a1, ($v0)
/* AE282C 8006B68C 8C980010 */  lw    $t8, 0x10($a0)
/* AE2830 8006B690 AC580004 */  sw    $t8, 4($v0)
/* AE2834 8006B694 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2838 8006B698 24590008 */  addiu $t9, $v0, 8
/* AE283C 8006B69C AE1902D0 */  sw    $t9, 0x2d0($s0)
/* AE2840 8006B6A0 AC450000 */  sw    $a1, ($v0)
/* AE2844 8006B6A4 8C8B0008 */  lw    $t3, 8($a0)
/* AE2848 8006B6A8 AC4B0004 */  sw    $t3, 4($v0)
/* AE284C 8006B6AC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2850 8006B6B0 244C0008 */  addiu $t4, $v0, 8
/* AE2854 8006B6B4 AE0C02D0 */  sw    $t4, 0x2d0($s0)
/* AE2858 8006B6B8 AC450000 */  sw    $a1, ($v0)
/* AE285C 8006B6BC 8C8D0004 */  lw    $t5, 4($a0)
/* AE2860 8006B6C0 27A40060 */  addiu $a0, $sp, 0x60
/* AE2864 8006B6C4 AC4D0004 */  sw    $t5, 4($v0)
/* AE2868 8006B6C8 0C031AD5 */  jal   func_800C6B54
/* AE286C 8006B6CC 8E250000 */   lw    $a1, ($s1)
/* AE2870 8006B6D0 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE2874 8006B6D4 8FB00034 */  lw    $s0, 0x34($sp)
/* AE2878 8006B6D8 8FB10038 */  lw    $s1, 0x38($sp)
/* AE287C 8006B6DC 03E00008 */  jr    $ra
/* AE2880 8006B6E0 27BD0078 */   addiu $sp, $sp, 0x78

/* AE2884 8006B6E4 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AE2888 8006B6E8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE288C 8006B6EC AFB10018 */  sw    $s1, 0x18($sp)
/* AE2890 8006B6F0 AFB00014 */  sw    $s0, 0x14($sp)
/* AE2894 8006B6F4 AFA50064 */  sw    $a1, 0x64($sp)
/* AE2898 8006B6F8 8C850000 */  lw    $a1, ($a0)
/* AE289C 8006B6FC 00808825 */  move  $s1, $a0
/* AE28A0 8006B700 3C068014 */  lui   $a2, %hi(D_8013B7D8) # $a2, 0x8014
/* AE28A4 8006B704 24C6B7D8 */  addiu $a2, %lo(D_8013B7D8) # addiu $a2, $a2, -0x4828
/* AE28A8 8006B708 27A40048 */  addiu $a0, $sp, 0x48
/* AE28AC 8006B70C 240704A4 */  li    $a3, 1188
/* AE28B0 8006B710 0C031AB1 */  jal   func_800C6AC4
/* AE28B4 8006B714 00A08025 */   move  $s0, $a1
/* AE28B8 8006B718 0C024F46 */  jal   func_80093D18
/* AE28BC 8006B71C 8E240000 */   lw    $a0, ($s1)
/* AE28C0 8006B720 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE28C4 8006B724 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE28C8 8006B728 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE28CC 8006B72C 244E0008 */  addiu $t6, $v0, 8
/* AE28D0 8006B730 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AE28D4 8006B734 AC4F0000 */  sw    $t7, ($v0)
/* AE28D8 8006B738 8E240000 */  lw    $a0, ($s1)
/* AE28DC 8006B73C 3C058014 */  lui   $a1, %hi(D_8013B7E4) # $a1, 0x8014
/* AE28E0 8006B740 24A5B7E4 */  addiu $a1, %lo(D_8013B7E4) # addiu $a1, $a1, -0x481c
/* AE28E4 8006B744 240604A8 */  li    $a2, 1192
/* AE28E8 8006B748 0C0346A2 */  jal   func_800D1A88
/* AE28EC 8006B74C AFA20044 */   sw    $v0, 0x44($sp)
/* AE28F0 8006B750 8FA30044 */  lw    $v1, 0x44($sp)
/* AE28F4 8006B754 3C08DE00 */  lui   $t0, 0xde00
/* AE28F8 8006B758 3C0A8012 */  lui   $t2, %hi(D_8011E320) # $t2, 0x8012
/* AE28FC 8006B75C AC620004 */  sw    $v0, 4($v1)
/* AE2900 8006B760 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2904 8006B764 254AE320 */  addiu $t2, %lo(D_8011E320) # addiu $t2, $t2, -0x1ce0
/* AE2908 8006B768 24580008 */  addiu $t8, $v0, 8
/* AE290C 8006B76C AE1802C0 */  sw    $t8, 0x2c0($s0)
/* AE2910 8006B770 AC480000 */  sw    $t0, ($v0)
/* AE2914 8006B774 87B90066 */  lh    $t9, 0x66($sp)
/* AE2918 8006B778 001948C0 */  sll   $t1, $t9, 3
/* AE291C 8006B77C 01394821 */  addu  $t1, $t1, $t9
/* AE2920 8006B780 00094880 */  sll   $t1, $t1, 2
/* AE2924 8006B784 012A3821 */  addu  $a3, $t1, $t2
/* AE2928 8006B788 8CEB0008 */  lw    $t3, 8($a3)
/* AE292C 8006B78C AC4B0004 */  sw    $t3, 4($v0)
/* AE2930 8006B790 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AE2934 8006B794 244C0008 */  addiu $t4, $v0, 8
/* AE2938 8006B798 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AE293C 8006B79C AC480000 */  sw    $t0, ($v0)
/* AE2940 8006B7A0 8CED0004 */  lw    $t5, 4($a3)
/* AE2944 8006B7A4 AC4D0004 */  sw    $t5, 4($v0)
/* AE2948 8006B7A8 8E240000 */  lw    $a0, ($s1)
/* AE294C 8006B7AC 0C024F61 */  jal   func_80093D84
/* AE2950 8006B7B0 AFA70028 */   sw    $a3, 0x28($sp)
/* AE2954 8006B7B4 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE2958 8006B7B8 8FA70028 */  lw    $a3, 0x28($sp)
/* AE295C 8006B7BC 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AE2960 8006B7C0 244E0008 */  addiu $t6, $v0, 8
/* AE2964 8006B7C4 AE0E02D0 */  sw    $t6, 0x2d0($s0)
/* AE2968 8006B7C8 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AE296C 8006B7CC AC4F0000 */  sw    $t7, ($v0)
/* AE2970 8006B7D0 8E240000 */  lw    $a0, ($s1)
/* AE2974 8006B7D4 3C058014 */  lui   $a1, %hi(D_8013B7F0) # $a1, 0x8014
/* AE2978 8006B7D8 24A5B7F0 */  addiu $a1, %lo(D_8013B7F0) # addiu $a1, $a1, -0x4810
/* AE297C 8006B7DC 240604B0 */  li    $a2, 1200
/* AE2980 8006B7E0 AFA20038 */  sw    $v0, 0x38($sp)
/* AE2984 8006B7E4 0C0346A2 */  jal   func_800D1A88
/* AE2988 8006B7E8 AFA70028 */   sw    $a3, 0x28($sp)
/* AE298C 8006B7EC 8FA30038 */  lw    $v1, 0x38($sp)
/* AE2990 8006B7F0 8FA70028 */  lw    $a3, 0x28($sp)
/* AE2994 8006B7F4 3C08DE00 */  lui   $t0, 0xde00
/* AE2998 8006B7F8 AC620004 */  sw    $v0, 4($v1)
/* AE299C 8006B7FC 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE29A0 8006B800 3C068014 */  lui   $a2, %hi(D_8013B7FC) # $a2, 0x8014
/* AE29A4 8006B804 24C6B7FC */  addiu $a2, %lo(D_8013B7FC) # addiu $a2, $a2, -0x4804
/* AE29A8 8006B808 24580008 */  addiu $t8, $v0, 8
/* AE29AC 8006B80C AE1802D0 */  sw    $t8, 0x2d0($s0)
/* AE29B0 8006B810 AC480000 */  sw    $t0, ($v0)
/* AE29B4 8006B814 8CF9000C */  lw    $t9, 0xc($a3)
/* AE29B8 8006B818 27A40048 */  addiu $a0, $sp, 0x48
/* AE29BC 8006B81C AC590004 */  sw    $t9, 4($v0)
/* AE29C0 8006B820 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE29C4 8006B824 24490008 */  addiu $t1, $v0, 8
/* AE29C8 8006B828 AE0902D0 */  sw    $t1, 0x2d0($s0)
/* AE29CC 8006B82C AC480000 */  sw    $t0, ($v0)
/* AE29D0 8006B830 8CEA0010 */  lw    $t2, 0x10($a3)
/* AE29D4 8006B834 AC4A0004 */  sw    $t2, 4($v0)
/* AE29D8 8006B838 8E0202D0 */  lw    $v0, 0x2d0($s0)
/* AE29DC 8006B83C 244B0008 */  addiu $t3, $v0, 8
/* AE29E0 8006B840 AE0B02D0 */  sw    $t3, 0x2d0($s0)
/* AE29E4 8006B844 AC480000 */  sw    $t0, ($v0)
/* AE29E8 8006B848 8CEC0014 */  lw    $t4, 0x14($a3)
/* AE29EC 8006B84C 240704B7 */  li    $a3, 1207
/* AE29F0 8006B850 AC4C0004 */  sw    $t4, 4($v0)
/* AE29F4 8006B854 0C031AD5 */  jal   func_800C6B54
/* AE29F8 8006B858 8E250000 */   lw    $a1, ($s1)
/* AE29FC 8006B85C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE2A00 8006B860 8FB00014 */  lw    $s0, 0x14($sp)
/* AE2A04 8006B864 8FB10018 */  lw    $s1, 0x18($sp)
/* AE2A08 8006B868 03E00008 */  jr    $ra
/* AE2A0C 8006B86C 27BD0060 */   addiu $sp, $sp, 0x60

/* AE2A10 8006B870 27BDFFA0 */  addiu $sp, $sp, -0x60
/* AE2A14 8006B874 AFBF0014 */  sw    $ra, 0x14($sp)
/* AE2A18 8006B878 AFA40060 */  sw    $a0, 0x60($sp)
/* AE2A1C 8006B87C AFA50064 */  sw    $a1, 0x64($sp)
/* AE2A20 8006B880 8C850000 */  lw    $a1, ($a0)
/* AE2A24 8006B884 3C068014 */  lui   $a2, %hi(D_8013B808) # $a2, 0x8014
/* AE2A28 8006B888 24C6B808 */  addiu $a2, %lo(D_8013B808) # addiu $a2, $a2, -0x47f8
/* AE2A2C 8006B88C 27A40048 */  addiu $a0, $sp, 0x48
/* AE2A30 8006B890 240704BE */  li    $a3, 1214
/* AE2A34 8006B894 0C031AB1 */  jal   func_800C6AC4
/* AE2A38 8006B898 AFA50058 */   sw    $a1, 0x58($sp)
/* AE2A3C 8006B89C 8FAF0060 */  lw    $t7, 0x60($sp)
/* AE2A40 8006B8A0 0C024F46 */  jal   func_80093D18
/* AE2A44 8006B8A4 8DE40000 */   lw    $a0, ($t7)
/* AE2A48 8006B8A8 8FA30058 */  lw    $v1, 0x58($sp)
/* AE2A4C 8006B8AC 3C19DA38 */  lui   $t9, (0xDA380003 >> 16) # lui $t9, 0xda38
/* AE2A50 8006B8B0 37390003 */  ori   $t9, (0xDA380003 & 0xFFFF) # ori $t9, $t9, 3
/* AE2A54 8006B8B4 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2A58 8006B8B8 3C058014 */  lui   $a1, %hi(D_8013B814) # $a1, 0x8014
/* AE2A5C 8006B8BC 24A5B814 */  addiu $a1, %lo(D_8013B814) # addiu $a1, $a1, -0x47ec
/* AE2A60 8006B8C0 24580008 */  addiu $t8, $v0, 8
/* AE2A64 8006B8C4 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* AE2A68 8006B8C8 AC590000 */  sw    $t9, ($v0)
/* AE2A6C 8006B8CC 8FA80060 */  lw    $t0, 0x60($sp)
/* AE2A70 8006B8D0 240604C2 */  li    $a2, 1218
/* AE2A74 8006B8D4 8D040000 */  lw    $a0, ($t0)
/* AE2A78 8006B8D8 AFA30058 */  sw    $v1, 0x58($sp)
/* AE2A7C 8006B8DC 0C0346A2 */  jal   func_800D1A88
/* AE2A80 8006B8E0 AFA20044 */   sw    $v0, 0x44($sp)
/* AE2A84 8006B8E4 8FA70044 */  lw    $a3, 0x44($sp)
/* AE2A88 8006B8E8 8FA30058 */  lw    $v1, 0x58($sp)
/* AE2A8C 8006B8EC 3C06DE00 */  lui   $a2, 0xde00
/* AE2A90 8006B8F0 ACE20004 */  sw    $v0, 4($a3)
/* AE2A94 8006B8F4 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2A98 8006B8F8 3C0C8012 */  lui   $t4, %hi(D_8011E320) # $t4, 0x8012
/* AE2A9C 8006B8FC 258CE320 */  addiu $t4, %lo(D_8011E320) # addiu $t4, $t4, -0x1ce0
/* AE2AA0 8006B900 24490008 */  addiu $t1, $v0, 8
/* AE2AA4 8006B904 AC6902C0 */  sw    $t1, 0x2c0($v1)
/* AE2AA8 8006B908 AC460000 */  sw    $a2, ($v0)
/* AE2AAC 8006B90C 87AA0066 */  lh    $t2, 0x66($sp)
/* AE2AB0 8006B910 240704CE */  li    $a3, 1230
/* AE2AB4 8006B914 27A40048 */  addiu $a0, $sp, 0x48
/* AE2AB8 8006B918 000A58C0 */  sll   $t3, $t2, 3
/* AE2ABC 8006B91C 016A5821 */  addu  $t3, $t3, $t2
/* AE2AC0 8006B920 000B5880 */  sll   $t3, $t3, 2
/* AE2AC4 8006B924 016C2821 */  addu  $a1, $t3, $t4
/* AE2AC8 8006B928 8CAD0008 */  lw    $t5, 8($a1)
/* AE2ACC 8006B92C AC4D0004 */  sw    $t5, 4($v0)
/* AE2AD0 8006B930 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2AD4 8006B934 244E0008 */  addiu $t6, $v0, 8
/* AE2AD8 8006B938 AC6E02C0 */  sw    $t6, 0x2c0($v1)
/* AE2ADC 8006B93C AC460000 */  sw    $a2, ($v0)
/* AE2AE0 8006B940 8CAF0004 */  lw    $t7, 4($a1)
/* AE2AE4 8006B944 AC4F0004 */  sw    $t7, 4($v0)
/* AE2AE8 8006B948 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2AEC 8006B94C 24580008 */  addiu $t8, $v0, 8
/* AE2AF0 8006B950 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* AE2AF4 8006B954 AC460000 */  sw    $a2, ($v0)
/* AE2AF8 8006B958 8CB9000C */  lw    $t9, 0xc($a1)
/* AE2AFC 8006B95C AC590004 */  sw    $t9, 4($v0)
/* AE2B00 8006B960 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2B04 8006B964 24480008 */  addiu $t0, $v0, 8
/* AE2B08 8006B968 AC6802C0 */  sw    $t0, 0x2c0($v1)
/* AE2B0C 8006B96C AC460000 */  sw    $a2, ($v0)
/* AE2B10 8006B970 8CA90010 */  lw    $t1, 0x10($a1)
/* AE2B14 8006B974 AC490004 */  sw    $t1, 4($v0)
/* AE2B18 8006B978 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2B1C 8006B97C 244A0008 */  addiu $t2, $v0, 8
/* AE2B20 8006B980 AC6A02C0 */  sw    $t2, 0x2c0($v1)
/* AE2B24 8006B984 AC460000 */  sw    $a2, ($v0)
/* AE2B28 8006B988 8CAB0014 */  lw    $t3, 0x14($a1)
/* AE2B2C 8006B98C AC4B0004 */  sw    $t3, 4($v0)
/* AE2B30 8006B990 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2B34 8006B994 244C0008 */  addiu $t4, $v0, 8
/* AE2B38 8006B998 AC6C02C0 */  sw    $t4, 0x2c0($v1)
/* AE2B3C 8006B99C AC460000 */  sw    $a2, ($v0)
/* AE2B40 8006B9A0 8CAD0018 */  lw    $t5, 0x18($a1)
/* AE2B44 8006B9A4 AC4D0004 */  sw    $t5, 4($v0)
/* AE2B48 8006B9A8 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2B4C 8006B9AC 244E0008 */  addiu $t6, $v0, 8
/* AE2B50 8006B9B0 AC6E02C0 */  sw    $t6, 0x2c0($v1)
/* AE2B54 8006B9B4 AC460000 */  sw    $a2, ($v0)
/* AE2B58 8006B9B8 8CAF001C */  lw    $t7, 0x1c($a1)
/* AE2B5C 8006B9BC AC4F0004 */  sw    $t7, 4($v0)
/* AE2B60 8006B9C0 8C6202C0 */  lw    $v0, 0x2c0($v1)
/* AE2B64 8006B9C4 24580008 */  addiu $t8, $v0, 8
/* AE2B68 8006B9C8 AC7802C0 */  sw    $t8, 0x2c0($v1)
/* AE2B6C 8006B9CC AC460000 */  sw    $a2, ($v0)
/* AE2B70 8006B9D0 8CB90020 */  lw    $t9, 0x20($a1)
/* AE2B74 8006B9D4 3C068014 */  lui   $a2, %hi(D_8013B820) # $a2, 0x8014
/* AE2B78 8006B9D8 24C6B820 */  addiu $a2, %lo(D_8013B820) # addiu $a2, $a2, -0x47e0
/* AE2B7C 8006B9DC AC590004 */  sw    $t9, 4($v0)
/* AE2B80 8006B9E0 8FA80060 */  lw    $t0, 0x60($sp)
/* AE2B84 8006B9E4 0C031AD5 */  jal   func_800C6B54
/* AE2B88 8006B9E8 8D050000 */   lw    $a1, ($t0)
/* AE2B8C 8006B9EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AE2B90 8006B9F0 27BD0060 */  addiu $sp, $sp, 0x60
/* AE2B94 8006B9F4 03E00008 */  jr    $ra
/* AE2B98 8006B9F8 00000000 */   nop   
