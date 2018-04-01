.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800975D0
/* B0E770 800975D0 948E0020 */  lhu   $t6, 0x20($a0)
/* B0E774 800975D4 2401EFFF */  li    $at, -4097
/* B0E778 800975D8 3C18800C */  lui   $t8, %hi(func_800BCA64) # $t8, 0x800c
/* B0E77C 800975DC 01C17827 */  nor   $t7, $t6, $at
/* B0E780 800975E0 15E00006 */  bnez  $t7, .L800975FC
/* B0E784 800975E4 2718CA64 */   addiu $t8, %lo(func_800BCA64) # addiu $t8, $t8, -0x359c
/* B0E788 800975E8 3C190001 */  lui   $t9, (0x00012518 >> 16) # lui $t9, 1
/* B0E78C 800975EC 37392518 */  ori   $t9, (0x00012518 & 0xFFFF) # ori $t9, $t9, 0x2518
/* B0E790 800975F0 AC990010 */  sw    $t9, 0x10($a0)
/* B0E794 800975F4 AC98000C */  sw    $t8, 0xc($a0)
/* B0E798 800975F8 AC800098 */  sw    $zero, 0x98($a0)
.L800975FC:
/* B0E79C 800975FC 03E00008 */  jr    $ra
/* B0E7A0 80097600 00000000 */   nop   

glabel func_80097604
/* B0E7A4 80097604 27BDFF90 */  addiu $sp, $sp, -0x70
/* B0E7A8 80097608 AFBF002C */  sw    $ra, 0x2c($sp)
/* B0E7AC 8009760C AFB00028 */  sw    $s0, 0x28($sp)
/* B0E7B0 80097610 AFA40070 */  sw    $a0, 0x70($sp)
/* B0E7B4 80097614 8C900000 */  lw    $s0, ($a0)
/* B0E7B8 80097618 3C068014 */  lui   $a2, %hi(D_8013F2C0) # $a2, 0x8014
/* B0E7BC 8009761C 24C6F2C0 */  addiu $a2, %lo(D_8013F2C0) # addiu $a2, $a2, -0xd40
/* B0E7C0 80097620 27A40054 */  addiu $a0, $sp, 0x54
/* B0E7C4 80097624 2407003E */  li    $a3, 62
/* B0E7C8 80097628 0C031AB1 */  jal   func_800C6AC4
/* B0E7CC 8009762C 02002825 */   move  $a1, $s0
/* B0E7D0 80097630 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E7D4 80097634 3C18DB06 */  lui   $t8, 0xdb06
/* B0E7D8 80097638 3C08DB06 */  lui   $t0, (0xDB060004 >> 16) # lui $t0, 0xdb06
/* B0E7DC 8009763C 244F0008 */  addiu $t7, $v0, 8
/* B0E7E0 80097640 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* B0E7E4 80097644 AC400004 */  sw    $zero, 4($v0)
/* B0E7E8 80097648 AC580000 */  sw    $t8, ($v0)
/* B0E7EC 8009764C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E7F0 80097650 35080004 */  ori   $t0, (0xDB060004 & 0xFFFF) # ori $t0, $t0, 4
/* B0E7F4 80097654 02002025 */  move  $a0, $s0
/* B0E7F8 80097658 24590008 */  addiu $t9, $v0, 8
/* B0E7FC 8009765C AE1902C0 */  sw    $t9, 0x2c0($s0)
/* B0E800 80097660 AC480000 */  sw    $t0, ($v0)
/* B0E804 80097664 8FA90070 */  lw    $t1, 0x70($sp)
/* B0E808 80097668 00002825 */  move  $a1, $zero
/* B0E80C 8009766C 00003025 */  move  $a2, $zero
/* B0E810 80097670 8D2A00A4 */  lw    $t2, 0xa4($t1)
/* B0E814 80097674 00003825 */  move  $a3, $zero
/* B0E818 80097678 0C025492 */  jal   func_80095248
/* B0E81C 8009767C AC4A0004 */   sw    $t2, 4($v0)
/* B0E820 80097680 8FA40070 */  lw    $a0, 0x70($sp)
/* B0E824 80097684 240B0007 */  li    $t3, 7
/* B0E828 80097688 2405000F */  li    $a1, 15
/* B0E82C 8009768C AC8B01C8 */  sw    $t3, 0x1c8($a0)
/* B0E830 80097690 0C02AA94 */  jal   func_800AAA50
/* B0E834 80097694 248400A8 */   addiu $a0, $a0, 0xa8
/* B0E838 80097698 02002025 */  move  $a0, $s0
/* B0E83C 8009769C 0C031A73 */  jal   graph_alloc
/* B0E840 800976A0 24050040 */   li    $a1, 64
/* B0E844 800976A4 3C038016 */  lui   $v1, %hi(D_8015FA90) # $v1, 0x8016
/* B0E848 800976A8 8C63FA90 */  lw    $v1, %lo(D_8015FA90)($v1)
/* B0E84C 800976AC AFA20048 */  sw    $v0, 0x48($sp)
/* B0E850 800976B0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B0E854 800976B4 44815000 */  mtc1  $at, $f10
/* B0E858 800976B8 846E0122 */  lh    $t6, 0x122($v1)
/* B0E85C 800976BC 846D0120 */  lh    $t5, 0x120($v1)
/* B0E860 800976C0 846C011E */  lh    $t4, 0x11e($v1)
/* B0E864 800976C4 E7AA0010 */  swc1  $f10, 0x10($sp)
/* B0E868 800976C8 846F0124 */  lh    $t7, 0x124($v1)
/* B0E86C 800976CC 448C2000 */  mtc1  $t4, $f4
/* B0E870 800976D0 448D3000 */  mtc1  $t5, $f6
/* B0E874 800976D4 448F8000 */  mtc1  $t7, $f16
/* B0E878 800976D8 46802120 */  cvt.s.w $f4, $f4
/* B0E87C 800976DC 448E4000 */  mtc1  $t6, $f8
/* B0E880 800976E0 00402025 */  move  $a0, $v0
/* B0E884 800976E4 468084A0 */  cvt.s.w $f18, $f16
/* B0E888 800976E8 44052000 */  mfc1  $a1, $f4
/* B0E88C 800976EC 468031A0 */  cvt.s.w $f6, $f6
/* B0E890 800976F0 E7B20014 */  swc1  $f18, 0x14($sp)
/* B0E894 800976F4 84780126 */  lh    $t8, 0x126($v1)
/* B0E898 800976F8 44982000 */  mtc1  $t8, $f4
/* B0E89C 800976FC 44063000 */  mfc1  $a2, $f6
/* B0E8A0 80097700 46804220 */  cvt.s.w $f8, $f8
/* B0E8A4 80097704 468021A0 */  cvt.s.w $f6, $f4
/* B0E8A8 80097708 44074000 */  mfc1  $a3, $f8
/* B0E8AC 8009770C E7A60018 */  swc1  $f6, 0x18($sp)
/* B0E8B0 80097710 84790128 */  lh    $t9, 0x128($v1)
/* B0E8B4 80097714 44994000 */  mtc1  $t9, $f8
/* B0E8B8 80097718 00000000 */  nop   
/* B0E8BC 8009771C 468042A0 */  cvt.s.w $f10, $f8
/* B0E8C0 80097720 0C040F56 */  jal   func_80103D58
/* B0E8C4 80097724 E7AA001C */   swc1  $f10, 0x1c($sp)
/* B0E8C8 80097728 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E8CC 8009772C 3C09DA38 */  lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B0E8D0 80097730 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B0E8D4 80097734 24480008 */  addiu $t0, $v0, 8
/* B0E8D8 80097738 AE0802C0 */  sw    $t0, 0x2c0($s0)
/* B0E8DC 8009773C AC490000 */  sw    $t1, ($v0)
/* B0E8E0 80097740 8FAA0048 */  lw    $t2, 0x48($sp)
/* B0E8E4 80097744 240500FF */  li    $a1, 255
/* B0E8E8 80097748 240600FF */  li    $a2, 255
/* B0E8EC 8009774C AC4A0004 */  sw    $t2, 4($v0)
/* B0E8F0 80097750 8E0402C0 */  lw    $a0, 0x2c0($s0)
/* B0E8F4 80097754 AFA00018 */  sw    $zero, 0x18($sp)
/* B0E8F8 80097758 AFA00014 */  sw    $zero, 0x14($sp)
/* B0E8FC 8009775C AFA00010 */  sw    $zero, 0x10($sp)
/* B0E900 80097760 0C024DC2 */  jal   func_80093708
/* B0E904 80097764 240700FF */   li    $a3, 255
/* B0E908 80097768 AE0202C0 */  sw    $v0, 0x2c0($s0)
/* B0E90C 8009776C 0C024F46 */  jal   func_80093D18
/* B0E910 80097770 02002025 */   move  $a0, $s0
/* B0E914 80097774 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E918 80097778 3C0CE300 */  lui   $t4, (0xE3000A01 >> 16) # lui $t4, 0xe300
/* B0E91C 8009777C 358C0A01 */  ori   $t4, (0xE3000A01 & 0xFFFF) # ori $t4, $t4, 0xa01
/* B0E920 80097780 244B0008 */  addiu $t3, $v0, 8
/* B0E924 80097784 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* B0E928 80097788 AC400004 */  sw    $zero, 4($v0)
/* B0E92C 8009778C AC4C0000 */  sw    $t4, ($v0)
/* B0E930 80097790 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E934 80097794 3C0EE200 */  lui   $t6, (0xE200001C >> 16) # lui $t6, 0xe200
/* B0E938 80097798 3C0F0055 */  lui   $t7, (0x00552078 >> 16) # lui $t7, 0x55
/* B0E93C 8009779C 244D0008 */  addiu $t5, $v0, 8
/* B0E940 800977A0 AE0D02C0 */  sw    $t5, 0x2c0($s0)
/* B0E944 800977A4 35EF2078 */  ori   $t7, (0x00552078 & 0xFFFF) # ori $t7, $t7, 0x2078
/* B0E948 800977A8 35CE001C */  ori   $t6, (0xE200001C & 0xFFFF) # ori $t6, $t6, 0x1c
/* B0E94C 800977AC AC4E0000 */  sw    $t6, ($v0)
/* B0E950 800977B0 AC4F0004 */  sw    $t7, 4($v0)
/* B0E954 800977B4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E958 800977B8 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* B0E95C 800977BC 3C08FFFD */  lui   $t0, (0xFFFDF6FB >> 16) # lui $t0, 0xfffd
/* B0E960 800977C0 24580008 */  addiu $t8, $v0, 8
/* B0E964 800977C4 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B0E968 800977C8 3508F6FB */  ori   $t0, (0xFFFDF6FB & 0xFFFF) # ori $t0, $t0, 0xf6fb
/* B0E96C 800977CC 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* B0E970 800977D0 AC590000 */  sw    $t9, ($v0)
/* B0E974 800977D4 AC480004 */  sw    $t0, 4($v0)
/* B0E978 800977D8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* B0E97C 800977DC 3C0BFFFF */  lui   $t3, 0xffff
/* B0E980 800977E0 3C0AFA00 */  lui   $t2, 0xfa00
/* B0E984 800977E4 24490008 */  addiu $t1, $v0, 8
/* B0E988 800977E8 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* B0E98C 800977EC 3C068014 */  lui   $a2, %hi(D_8013F2D0) # $a2, 0x8014
/* B0E990 800977F0 24C6F2D0 */  addiu $a2, %lo(D_8013F2D0) # addiu $a2, $a2, -0xd30
/* B0E994 800977F4 27A40054 */  addiu $a0, $sp, 0x54
/* B0E998 800977F8 02002825 */  move  $a1, $s0
/* B0E99C 800977FC 2407006F */  li    $a3, 111
/* B0E9A0 80097800 AC4B0004 */  sw    $t3, 4($v0)
/* B0E9A4 80097804 0C031AD5 */  jal   func_800C6B54
/* B0E9A8 80097808 AC4A0000 */   sw    $t2, ($v0)
/* B0E9AC 8009780C 8FBF002C */  lw    $ra, 0x2c($sp)
/* B0E9B0 80097810 8FB00028 */  lw    $s0, 0x28($sp)
/* B0E9B4 80097814 27BD0070 */  addiu $sp, $sp, 0x70
/* B0E9B8 80097818 03E00008 */  jr    $ra
/* B0E9BC 8009781C 00000000 */   nop   

glabel func_80097820
/* B0E9C0 80097820 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0E9C4 80097824 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0E9C8 80097828 0C025D81 */  jal   func_80097604
/* B0E9CC 8009782C AFA40018 */   sw    $a0, 0x18($sp)
/* B0E9D0 80097830 0C025D74 */  jal   func_800975D0
/* B0E9D4 80097834 8FA40018 */   lw    $a0, 0x18($sp)
/* B0E9D8 80097838 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0E9DC 8009783C 27BD0018 */  addiu $sp, $sp, 0x18
/* B0E9E0 80097840 03E00008 */  jr    $ra
/* B0E9E4 80097844 00000000 */   nop   

glabel func_80097848
/* B0E9E8 80097848 03E00008 */  jr    $ra
/* B0E9EC 8009784C AFA40000 */   sw    $a0, ($sp)

glabel func_80097850
/* B0E9F0 80097850 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B0E9F4 80097854 AFB00018 */  sw    $s0, 0x18($sp)
/* B0E9F8 80097858 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0E9FC 8009785C 8C850000 */  lw    $a1, ($a0)
/* B0EA00 80097860 249000A8 */  addiu $s0, $a0, 0xa8
/* B0EA04 80097864 0C02A89E */  jal   func_800AA278
/* B0EA08 80097868 02002025 */   move  $a0, $s0
/* B0EA0C 8009786C 240E00F0 */  li    $t6, 240
/* B0EA10 80097870 240F0140 */  li    $t7, 320
/* B0EA14 80097874 AFAF0054 */  sw    $t7, 0x54($sp)
/* B0EA18 80097878 AFAE004C */  sw    $t6, 0x4c($sp)
/* B0EA1C 8009787C AFA00048 */  sw    $zero, 0x48($sp)
/* B0EA20 80097880 AFA00050 */  sw    $zero, 0x50($sp)
/* B0EA24 80097884 02002025 */  move  $a0, $s0
/* B0EA28 80097888 0C02A93F */  jal   func_800AA4FC
/* B0EA2C 8009788C 27A50048 */   addiu $a1, $sp, 0x48
/* B0EA30 80097890 02002025 */  move  $a0, $s0
/* B0EA34 80097894 3C054270 */  lui   $a1, 0x4270
/* B0EA38 80097898 3C064120 */  lui   $a2, 0x4120
/* B0EA3C 8009789C 0C02A918 */  jal   func_800AA460
/* B0EA40 800978A0 3C074648 */   li    $a3, 0x46480000 # 0.000000
/* B0EA44 800978A4 44800000 */  mtc1  $zero, $f0
/* B0EA48 800978A8 3C018014 */  lui   $at, 0x8014
/* B0EA4C 800978AC C424F300 */  lwc1  $f4, -0xd00($at)
/* B0EA50 800978B0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B0EA54 800978B4 44813000 */  mtc1  $at, $f6
/* B0EA58 800978B8 02002025 */  move  $a0, $s0
/* B0EA5C 800978BC 27A5003C */  addiu $a1, $sp, 0x3c
/* B0EA60 800978C0 27A60030 */  addiu $a2, $sp, 0x30
/* B0EA64 800978C4 27A70024 */  addiu $a3, $sp, 0x24
/* B0EA68 800978C8 E7A0003C */  swc1  $f0, 0x3c($sp)
/* B0EA6C 800978CC E7A00040 */  swc1  $f0, 0x40($sp)
/* B0EA70 800978D0 E7A00030 */  swc1  $f0, 0x30($sp)
/* B0EA74 800978D4 E7A00034 */  swc1  $f0, 0x34($sp)
/* B0EA78 800978D8 E7A00038 */  swc1  $f0, 0x38($sp)
/* B0EA7C 800978DC E7A00024 */  swc1  $f0, 0x24($sp)
/* B0EA80 800978E0 E7A0002C */  swc1  $f0, 0x2c($sp)
/* B0EA84 800978E4 E7A40044 */  swc1  $f4, 0x44($sp)
/* B0EA88 800978E8 0C02A8D6 */  jal   func_800AA358
/* B0EA8C 800978EC E7A60028 */   swc1  $f6, 0x28($sp)
/* B0EA90 800978F0 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0EA94 800978F4 8FB00018 */  lw    $s0, 0x18($sp)
/* B0EA98 800978F8 27BD0060 */  addiu $sp, $sp, 0x60
/* B0EA9C 800978FC 03E00008 */  jr    $ra
/* B0EAA0 80097900 00000000 */   nop   

glabel func_80097904
/* B0EAA4 80097904 3C0E01AF */  lui   $t6, %hi(D_01AEB440) # $t6, 0x1af
/* B0EAA8 80097908 3C0F01AA */  lui   $t7, %hi(D_01AA4000) # $t7, 0x1aa
/* B0EAAC 8009790C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B0EAB0 80097910 25EF4000 */  addiu $t7, %lo(D_01AA4000) # addiu $t7, $t7, 0x4000
/* B0EAB4 80097914 25CEB440 */  addiu $t6, %lo(D_01AEB440) # addiu $t6, $t6, -0x4bc0
/* B0EAB8 80097918 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0EABC 8009791C 01CF2823 */  subu  $a1, $t6, $t7
/* B0EAC0 80097920 3C068014 */  lui   $a2, %hi(D_8013F2E0) # $a2, 0x8014
/* B0EAC4 80097924 AFA40028 */  sw    $a0, 0x28($sp)
/* B0EAC8 80097928 24C6F2E0 */  addiu $a2, %lo(D_8013F2E0) # addiu $a2, $a2, -0xd20
/* B0EACC 8009792C AFA50020 */  sw    $a1, 0x20($sp)
/* B0EAD0 80097930 0C031521 */  jal   game_alloc
/* B0EAD4 80097934 240700A3 */   li    $a3, 163
/* B0EAD8 80097938 8FB80028 */  lw    $t8, 0x28($sp)
/* B0EADC 8009793C 3C0501AA */  lui   $a1, %hi(D_01AA4000) # $a1, 0x1aa
/* B0EAE0 80097940 3C078014 */  lui   $a3, %hi(D_8013F2F0) # $a3, 0x8014
/* B0EAE4 80097944 241900A4 */  li    $t9, 164
/* B0EAE8 80097948 AF0200A4 */  sw    $v0, 0xa4($t8)
/* B0EAEC 8009794C AFB90010 */  sw    $t9, 0x10($sp)
/* B0EAF0 80097950 8FA60020 */  lw    $a2, 0x20($sp)
/* B0EAF4 80097954 24E7F2F0 */  addiu $a3, %lo(D_8013F2F0) # addiu $a3, $a3, -0xd10
/* B0EAF8 80097958 24A54000 */  addiu $a1, %lo(D_01AA4000) # addiu $a1, $a1, 0x4000
/* B0EAFC 8009795C 0C0006A8 */  jal   func_80001AA0
/* B0EB00 80097960 00402025 */   move  $a0, $v0
/* B0EB04 80097964 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0EB08 80097968 27BD0028 */  addiu $sp, $sp, 0x28
/* B0EB0C 8009796C 03E00008 */  jr    $ra
/* B0EB10 80097970 00000000 */   nop   

/* B0EB14 80097974 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0EB18 80097978 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0EB1C 8009797C 3C0E8009 */  lui   $t6, %hi(func_80097820) # $t6, 0x8009
/* B0EB20 80097980 3C0F8009 */  lui   $t7, %hi(func_80097848) # $t7, 0x8009
/* B0EB24 80097984 3C028016 */  lui   $v0, %hi(D_8015FA90) # $v0, 0x8016
/* B0EB28 80097988 25CE7820 */  addiu $t6, %lo(func_80097820) # addiu $t6, $t6, 0x7820
/* B0EB2C 8009798C 25EF7848 */  addiu $t7, %lo(func_80097848) # addiu $t7, $t7, 0x7848
/* B0EB30 80097990 2442FA90 */  addiu $v0, %lo(D_8015FA90) # addiu $v0, $v0, -0x570
/* B0EB34 80097994 AC8E0004 */  sw    $t6, 4($a0)
/* B0EB38 80097998 AC8F0008 */  sw    $t7, 8($a0)
/* B0EB3C 8009799C 8C590000 */  lw    $t9, ($v0)
/* B0EB40 800979A0 24180001 */  li    $t8, 1
/* B0EB44 800979A4 A7380110 */  sh    $t8, 0x110($t9)
/* B0EB48 800979A8 0C025E14 */  jal   func_80097850
/* B0EB4C 800979AC AFA40018 */   sw    $a0, 0x18($sp)
/* B0EB50 800979B0 0C025E41 */  jal   func_80097904
/* B0EB54 800979B4 8FA40018 */   lw    $a0, 0x18($sp)
/* B0EB58 800979B8 3C028016 */  lui   $v0, %hi(D_8015FA90) # $v0, 0x8016
/* B0EB5C 800979BC 2442FA90 */  addiu $v0, %lo(D_8015FA90) # addiu $v0, $v0, -0x570
/* B0EB60 800979C0 8C480000 */  lw    $t0, ($v0)
/* B0EB64 800979C4 A500011E */  sh    $zero, 0x11e($t0)
/* B0EB68 800979C8 8C490000 */  lw    $t1, ($v0)
/* B0EB6C 800979CC A5200120 */  sh    $zero, 0x120($t1)
/* B0EB70 800979D0 8C4A0000 */  lw    $t2, ($v0)
/* B0EB74 800979D4 A5400122 */  sh    $zero, 0x122($t2)
/* B0EB78 800979D8 8C4B0000 */  lw    $t3, ($v0)
/* B0EB7C 800979DC A5600124 */  sh    $zero, 0x124($t3)
/* B0EB80 800979E0 8C4C0000 */  lw    $t4, ($v0)
/* B0EB84 800979E4 A5800126 */  sh    $zero, 0x126($t4)
/* B0EB88 800979E8 8C4D0000 */  lw    $t5, ($v0)
/* B0EB8C 800979EC A5A00128 */  sh    $zero, 0x128($t5)
/* B0EB90 800979F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0EB94 800979F4 27BD0018 */  addiu $sp, $sp, 0x18
/* B0EB98 800979F8 03E00008 */  jr    $ra
/* B0EB9C 800979FC 00000000 */   nop   

glabel func_80097A00
/* B0EBA0 80097A00 AFA40000 */  sw    $a0, ($sp)
/* B0EBA4 80097A04 00042400 */  sll   $a0, $a0, 0x10
/* B0EBA8 80097A08 00042403 */  sra   $a0, $a0, 0x10
/* B0EBAC 80097A0C 3C028016 */  lui   $v0, %hi(D_8015E660) # $v0, 0x8016
/* B0EBB0 80097A10 00047840 */  sll   $t7, $a0, 1
/* B0EBB4 80097A14 3C188012 */  lui   $t8, 0x8012
/* B0EBB8 80097A18 2442E660 */  addiu $v0, %lo(D_8015E660) # addiu $v0, $v0, -0x19a0
/* B0EBBC 80097A1C 030FC021 */  addu  $t8, $t8, $t7
/* B0EBC0 80097A20 971871A8 */  lhu   $t8, 0x71a8($t8)
/* B0EBC4 80097A24 944E0070 */  lhu   $t6, 0x70($v0)
/* B0EBC8 80097A28 3C098012 */  lui   $t1, 0x8012
/* B0EBCC 80097A2C 01244821 */  addu  $t1, $t1, $a0
/* B0EBD0 80097A30 01D84024 */  and   $t0, $t6, $t8
/* B0EBD4 80097A34 A4480070 */  sh    $t0, 0x70($v0)
/* B0EBD8 80097A38 912971F0 */  lbu   $t1, 0x71f0($t1)
/* B0EBDC 80097A3C AFA50004 */  sw    $a1, 4($sp)
/* B0EBE0 80097A40 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B0EBE4 80097A44 01255004 */  sllv  $t2, $a1, $t1
/* B0EBE8 80097A48 010A5825 */  or    $t3, $t0, $t2
/* B0EBEC 80097A4C 03E00008 */  jr    $ra
/* B0EBF0 80097A50 A44B0070 */   sh    $t3, 0x70($v0)

/* B0EBF4 80097A54 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B0EBF8 80097A58 AFA50034 */  sw    $a1, 0x34($sp)
/* B0EBFC 80097A5C 00052C00 */  sll   $a1, $a1, 0x10
/* B0EC00 80097A60 00052C03 */  sra   $a1, $a1, 0x10
/* B0EC04 80097A64 3C188012 */  lui   $t8, %hi(D_801271A0) # $t8, 0x8012
/* B0EC08 80097A68 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0EC0C 80097A6C AFA40030 */  sw    $a0, 0x30($sp)
/* B0EC10 80097A70 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B0EC14 80097A74 271871A0 */  addiu $t8, %lo(D_801271A0) # addiu $t8, $t8, 0x71a0
/* B0EC18 80097A78 00054040 */  sll   $t0, $a1, 1
/* B0EC1C 80097A7C 8C8F1C44 */  lw    $t7, 0x1c44($a0)
/* B0EC20 80097A80 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B0EC24 80097A84 01184821 */  addu  $t1, $t0, $t8
/* B0EC28 80097A88 95390000 */  lhu   $t9, ($t1)
/* B0EC2C 80097A8C 946A0070 */  lhu   $t2, 0x70($v1)
/* B0EC30 80097A90 3C048014 */  lui   $a0, %hi(D_8013F310) # $a0, 0x8014
/* B0EC34 80097A94 2484F310 */  addiu $a0, %lo(D_8013F310) # addiu $a0, $a0, -0xcf0
/* B0EC38 80097A98 032A3824 */  and   $a3, $t9, $t2
/* B0EC3C 80097A9C 30E6FFFF */  andi  $a2, $a3, 0xffff
/* B0EC40 80097AA0 AFA60018 */  sw    $a2, 0x18($sp)
/* B0EC44 80097AA4 A7A60026 */  sh    $a2, 0x26($sp)
/* B0EC48 80097AA8 AFA9001C */  sw    $t1, 0x1c($sp)
/* B0EC4C 80097AAC AFA80020 */  sw    $t0, 0x20($sp)
/* B0EC50 80097AB0 A7A50036 */  sh    $a1, 0x36($sp)
/* B0EC54 80097AB4 0C00084C */  jal   DebugMessage
/* B0EC58 80097AB8 AFAF002C */   sw    $t7, 0x2c($sp)
/* B0EC5C 80097ABC 97A70026 */  lhu   $a3, 0x26($sp)
/* B0EC60 80097AC0 3C038016 */  lui   $v1, %hi(D_8015E660) # $v1, 0x8016
/* B0EC64 80097AC4 2463E660 */  addiu $v1, %lo(D_8015E660) # addiu $v1, $v1, -0x19a0
/* B0EC68 80097AC8 87A50036 */  lh    $a1, 0x36($sp)
/* B0EC6C 80097ACC 8FA60018 */  lw    $a2, 0x18($sp)
/* B0EC70 80097AD0 8FA80020 */  lw    $t0, 0x20($sp)
/* B0EC74 80097AD4 10E0002C */  beqz  $a3, .L80097B88
/* B0EC78 80097AD8 8FA9001C */   lw    $t1, 0x1c($sp)
/* B0EC7C 80097ADC 3C028012 */  lui   $v0, 0x8012
/* B0EC80 80097AE0 00451021 */  addu  $v0, $v0, $a1
/* B0EC84 80097AE4 3C0B8012 */  lui   $t3, %hi(D_801271A8) # $t3, 0x8012
/* B0EC88 80097AE8 904271F0 */  lbu   $v0, 0x71f0($v0)
/* B0EC8C 80097AEC 256B71A8 */  addiu $t3, %lo(D_801271A8) # addiu $t3, $t3, 0x71a8
/* B0EC90 80097AF0 010B2021 */  addu  $a0, $t0, $t3
/* B0EC94 80097AF4 948D0000 */  lhu   $t5, ($a0)
/* B0EC98 80097AF8 946C0070 */  lhu   $t4, 0x70($v1)
/* B0EC9C 80097AFC 00463806 */  srlv  $a3, $a2, $v0
/* B0ECA0 80097B00 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B0ECA4 80097B04 0007C080 */  sll   $t8, $a3, 2
/* B0ECA8 80097B08 3C198012 */  lui   $t9, 0x8012
/* B0ECAC 80097B0C 018D7024 */  and   $t6, $t4, $t5
/* B0ECB0 80097B10 A46E0070 */  sh    $t6, 0x70($v1)
/* B0ECB4 80097B14 0338C821 */  addu  $t9, $t9, $t8
/* B0ECB8 80097B18 8F39711C */  lw    $t9, 0x711c($t9)
/* B0ECBC 80097B1C 946F009C */  lhu   $t7, 0x9c($v1)
/* B0ECC0 80097B20 3C0C8012 */  lui   $t4, %hi(D_801271A4) # $t4, 0x8012
/* B0ECC4 80097B24 00595004 */  sllv  $t2, $t9, $v0
/* B0ECC8 80097B28 258C71A4 */  addiu $t4, %lo(D_801271A4) # addiu $t4, $t4, 0x71a4
/* B0ECCC 80097B2C 01EA5826 */  xor   $t3, $t7, $t2
/* B0ECD0 80097B30 152C0004 */  bne   $t1, $t4, .L80097B44
/* B0ECD4 80097B34 A46B009C */   sh    $t3, 0x9c($v1)
/* B0ECD8 80097B38 01C06825 */  move  $t5, $t6
/* B0ECDC 80097B3C 35AE0100 */  ori   $t6, $t5, 0x100
/* B0ECE0 80097B40 A46E0070 */  sh    $t6, 0x70($v1)
.L80097B44:
/* B0ECE4 80097B44 3C188012 */  lui   $t8, %hi(D_801271A8) # $t8, 0x8012
/* B0ECE8 80097B48 271871A8 */  addiu $t8, %lo(D_801271A8) # addiu $t8, $t8, 0x71a8
/* B0ECEC 80097B4C 14980004 */  bne   $a0, $t8, .L80097B60
/* B0ECF0 80097B50 241900FF */   li    $t9, 255
/* B0ECF4 80097B54 240F0001 */  li    $t7, 1
/* B0ECF8 80097B58 A0790068 */  sb    $t9, 0x68($v1)
/* B0ECFC 80097B5C A46F0F32 */  sh    $t7, 0xf32($v1)
.L80097B60:
/* B0ED00 80097B60 8FA40030 */  lw    $a0, 0x30($sp)
/* B0ED04 80097B64 8FA5002C */  lw    $a1, 0x2c($sp)
/* B0ED08 80097B68 0C023B2B */  jal   func_8008ECAC
/* B0ED0C 80097B6C A7A70026 */   sh    $a3, 0x26($sp)
/* B0ED10 80097B70 8FAB0030 */  lw    $t3, 0x30($sp)
/* B0ED14 80097B74 3C010001 */  lui   $at, 1
/* B0ED18 80097B78 97A70026 */  lhu   $a3, 0x26($sp)
/* B0ED1C 80097B7C 240A000A */  li    $t2, 10
/* B0ED20 80097B80 002B0821 */  addu  $at, $at, $t3
/* B0ED24 80097B84 A42A0998 */  sh    $t2, 0x998($at)
.L80097B88:
/* B0ED28 80097B88 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ED2C 80097B8C 27BD0030 */  addiu $sp, $sp, 0x30
/* B0ED30 80097B90 30E200FF */  andi  $v0, $a3, 0xff
/* B0ED34 80097B94 03E00008 */  jr    $ra
/* B0ED38 80097B98 00000000 */   nop   

glabel func_80097B9C
/* B0ED3C 80097B9C AFA40000 */  sw    $a0, ($sp)
/* B0ED40 80097BA0 00042400 */  sll   $a0, $a0, 0x10
/* B0ED44 80097BA4 00042403 */  sra   $a0, $a0, 0x10
/* B0ED48 80097BA8 3C028016 */  lui   $v0, %hi(D_8015E660) # $v0, 0x8016
/* B0ED4C 80097BAC 00047880 */  sll   $t7, $a0, 2
/* B0ED50 80097BB0 3C188012 */  lui   $t8, 0x8012
/* B0ED54 80097BB4 2442E660 */  addiu $v0, %lo(D_8015E660) # addiu $v0, $v0, -0x19a0
/* B0ED58 80097BB8 030FC021 */  addu  $t8, $t8, $t7
/* B0ED5C 80097BBC 8F1871D0 */  lw    $t8, 0x71d0($t8)
/* B0ED60 80097BC0 8C4E00A0 */  lw    $t6, 0xa0($v0)
/* B0ED64 80097BC4 3C098012 */  lui   $t1, 0x8012
/* B0ED68 80097BC8 01244821 */  addu  $t1, $t1, $a0
/* B0ED6C 80097BCC 01D8C824 */  and   $t9, $t6, $t8
/* B0ED70 80097BD0 AC5900A0 */  sw    $t9, 0xa0($v0)
/* B0ED74 80097BD4 912971F4 */  lbu   $t1, 0x71f4($t1)
/* B0ED78 80097BD8 AFA50004 */  sw    $a1, 4($sp)
/* B0ED7C 80097BDC 00052C00 */  sll   $a1, $a1, 0x10
/* B0ED80 80097BE0 00052C03 */  sra   $a1, $a1, 0x10
/* B0ED84 80097BE4 01255004 */  sllv  $t2, $a1, $t1
/* B0ED88 80097BE8 032A5825 */  or    $t3, $t9, $t2
/* B0ED8C 80097BEC 03E00008 */  jr    $ra
/* B0ED90 80097BF0 AC4B00A0 */   sw    $t3, 0xa0($v0)
