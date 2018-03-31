.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel D_80009410
    .incbin "baserom/boot", 0x8FB0, 0x20
glabel D_80009430
    .incbin "baserom/boot", 0x8FD0, 0x4
glabel D_80009434
    .incbin "baserom/boot", 0x8FD4, 0x4
glabel D_80009438
    .incbin "baserom/boot", 0x8FD8, 0x4
glabel D_8000943C
    .incbin "baserom/boot", 0x8FDC, 0x8
glabel D_80009444
    .incbin "baserom/boot", 0x8FE4, 0xC
glabel D_80009450
    .incbin "baserom/boot", 0x8FF0, 0x10
glabel D_80009460
    .incbin "baserom/boot", 0x9000, 0x4
glabel D_80009464
    .incbin "baserom/boot", 0x9004, 0x4
glabel D_80009468
    .incbin "baserom/boot", 0x9008, 0x4
glabel D_8000946C
    .incbin "baserom/boot", 0x900C, 0x17F0
glabel D_8000AC5C
    .incbin "baserom/boot", 0xA7FC, 0x4
glabel D_8000AC60
    .incbin "baserom/boot", 0xA800, 0x10
glabel D_8000AC70
    .incbin "baserom/boot", 0xA810, 0x10
glabel D_8000AC80
    .incbin "baserom/boot", 0xA820, 0x4
glabel D_8000AC84
    .incbin "baserom/boot", 0xA824, 0xC
glabel D_8000AC90
    .incbin "baserom/boot", 0xA830, 0x10
glabel D_8000ACA0
    .incbin "baserom/boot", 0xA840, 0x50
glabel D_8000ACF0
    .incbin "baserom/boot", 0xA890, 0x4
glabel D_8000ACF4
    .incbin "baserom/boot", 0xA894, 0x4
glabel D_8000ACF8
    .incbin "baserom/boot", 0xA898, 0x4
glabel D_8000ACFC
    .incbin "baserom/boot", 0xA89C, 0x4
glabel D_8000AD00
    .incbin "baserom/boot", 0xA8A0, 0x10
glabel D_8000AD10
    .incbin "baserom/boot", 0xA8B0, 0x28
glabel D_8000AD38
    .incbin "baserom/boot", 0xA8D8, 0x8
glabel D_8000AD40
    .incbin "baserom/boot", 0xA8E0, 0x8
glabel D_8000AD48
    .incbin "baserom/boot", 0xA8E8, 0x4
glabel D_8000AD4C
    .incbin "baserom/boot", 0xA8EC, 0x4
glabel D_8000AD50
    .incbin "baserom/boot", 0xA8F0, 0x4
glabel D_8000AD54
    .incbin "baserom/boot", 0xA8F4, 0xC
glabel D_8000AD60
    .incbin "baserom/boot", 0xA900, 0x1C
glabel D_8000AD7C
    .incbin "baserom/boot", 0xA91C, 0x4
glabel D_8000AD80
    .incbin "baserom/boot", 0xA920, 0x10
glabel D_8000AD90
    .incbin "baserom/boot", 0xA930, 0x10
glabel D_8000ADA0
    .incbin "baserom/boot", 0xA940, 0x24
glabel D_8000ADC4
    .incbin "baserom/boot", 0xA964, 0x2C
glabel D_8000ADF0
    .incbin "baserom/boot", 0xA990, 0x10
glabel D_8000AE00
    .incbin "baserom/boot", 0xA9A0, 0x50
glabel D_8000AE50
    .incbin "baserom/boot", 0xA9F0, 0x50
glabel D_8000AEA0
    .incbin "baserom/boot", 0xAA40, 0x30
glabel D_8000AED0
    .incbin "baserom/boot", 0xAA70, 0x30
glabel D_8000AF00
    .incbin "baserom/boot", 0xAAA0, 0x4
glabel D_8000AF04
    .incbin "baserom/boot", 0xAAA4, 0xC
glabel D_8000AF10
    .incbin "baserom/boot", 0xAAB0, 0x10
glabel D_8000AF20
    .incbin "baserom/boot", 0xAAC0, 0x50

    .align 2
glabel D_8000AF70
    .asciz "0123456789abcdef"

    .align 2
glabel D_8000AF84
    .asciz "0123456789ABCDEF"

    .align 4
glabel D_8000AFA0
    .incbin "baserom/boot", 0xAB40, 0x1C
glabel D_8000AFBC
    .incbin "baserom/boot", 0xAB5C, 0x4

.section .rodata

    .align 2
glabel D_8000AFD0
    .asciz "mainx 実行開始\n"

    .align 2
glabel D_8000AFE0
    .asciz "codeセグメントロード中..."

    .align 2
glabel D_8000AFFC
    .asciz "../idle.c"

    .align 2
glabel D_8000B008
    .asciz "\rcodeセグメントロード中...完了\n"

    .align 2
glabel D_8000B028
    .asciz "転送時間 %6.3f\n"

    .align 2
glabel D_8000B038
    .asciz "codeセグメントBSSクリア完了\n"

    .align 2
glabel D_8000B058
    .asciz "mainx 実行終了\n"

    .align 2
glabel D_8000B068
    .incbin "baserom/boot", 0xAC08, 0x24
glabel D_8000B08C
    .incbin "baserom/boot", 0xAC2C, 0x10
glabel D_8000B09C
    .incbin "baserom/boot", 0xAC3C, 0x10
glabel D_8000B0AC
    .incbin "baserom/boot", 0xAC4C, 0x10
glabel D_8000B0BC
    .incbin "baserom/boot", 0xAC5C, 0x8
glabel D_8000B0C4
    .incbin "baserom/boot", 0xAC64, 0x3C
glabel D_8000B100
    .incbin "baserom/boot", 0xACA0, 0x40
glabel D_8000B140
    .incbin "baserom/boot", 0xACE0, 0x28
glabel D_8000B168
    .incbin "baserom/boot", 0xAD08, 0x34
glabel D_8000B19C
    .incbin "baserom/boot", 0xAD3C, 0x30
glabel D_8000B1CC
    .incbin "baserom/boot", 0xAD6C, 0x30
glabel D_8000B1FC
    .incbin "baserom/boot", 0xAD9C, 0x30
glabel D_8000B22C
    .incbin "baserom/boot", 0xADCC, 0x4
glabel D_8000B230
    .incbin "baserom/boot", 0xADD0, 0x10
glabel D_8000B240
    .incbin "baserom/boot", 0xADE0, 0x20
glabel D_8000B260
    .incbin "baserom/boot", 0xAE00, 0x4D9F
glabel D_8000FFFF
    .incbin "baserom/boot", 0xFB9F, 0x5
glabel D_80010004
    .incbin "baserom/boot", 0xFBA4, 0x1
glabel D_80010005
    .incbin "baserom/boot", 0xFBA5, 0x1
glabel D_80010006
    .incbin "baserom/boot", 0xFBA6, 0x1
glabel D_80010007
    .incbin "baserom/boot", 0xFBA7, 0x1
glabel D_80010008
    .incbin "baserom/boot", 0xFBA8, 0x1
glabel D_80010009
    .incbin "baserom/boot", 0xFBA9, 0x3
glabel D_8001000C
    .incbin "baserom/boot", 0xFBAC, 0x4
glabel D_80010010
    .incbin "baserom/boot", 0xFBB0, 0x1704
glabel D_80011714
    .incbin "baserom/boot", 0x112B4, 0x2C
glabel D_80011740
    .incbin "baserom/boot", 0x112E0, 0x24
glabel D_80011764
    .incbin "baserom/boot", 0x11304, 0x20
glabel D_80011784
    .incbin "baserom/boot", 0x11324, 0x2C
glabel D_800117B0
    .incbin "baserom/boot", 0x11350, 0x20
glabel D_800117D0
    .incbin "baserom/boot", 0x11370, 0x18
glabel D_800117E8
    .incbin "baserom/boot", 0x11388, 0x10
glabel D_800117F8
    .incbin "baserom/boot", 0x11398, 0x18
glabel D_80011810
    .incbin "baserom/boot", 0x113B0, 0x10
glabel D_80011820
    .incbin "baserom/boot", 0x113C0, 0xC
glabel D_8001182C
    .incbin "baserom/boot", 0x113CC, 0x10
glabel D_8001183C
    .incbin "baserom/boot", 0x113DC, 0x2C
glabel D_80011868
    .incbin "baserom/boot", 0x11408, 0x8
glabel D_80011870
    .incbin "baserom/boot", 0x11410, 0x4
glabel D_80011874
    .incbin "baserom/boot", 0x11414, 0x8
glabel D_8001187C
    .incbin "baserom/boot", 0x1141C, 0x30
glabel D_800118AC
    .incbin "baserom/boot", 0x1144C, 0x4
glabel D_800118B0
    .incbin "baserom/boot", 0x11450, 0x4
glabel D_800118B4
    .incbin "baserom/boot", 0x11454, 0x14
glabel D_800118C8
    .incbin "baserom/boot", 0x11468, 0x14
glabel D_800118DC
    .incbin "baserom/boot", 0x1147C, 0x4
glabel D_800118E0
    .incbin "baserom/boot", 0x11480, 0x14
glabel D_800118F4
    .incbin "baserom/boot", 0x11494, 0x24
glabel D_80011918
    .incbin "baserom/boot", 0x114B8, 0x4
glabel D_8001191C
    .incbin "baserom/boot", 0x114BC, 0x10
glabel D_8001192C
    .incbin "baserom/boot", 0x114CC, 0x4
glabel D_80011930
    .incbin "baserom/boot", 0x114D0, 0xC
glabel D_8001193C
    .incbin "baserom/boot", 0x114DC, 0x8
glabel D_80011944
    .incbin "baserom/boot", 0x114E4, 0x34
glabel D_80011978
    .incbin "baserom/boot", 0x11518, 0x18
glabel D_80011990
    .incbin "baserom/boot", 0x11530, 0x64
glabel D_800119F4
    .incbin "baserom/boot", 0x11594, 0x18
glabel D_80011A0C
    .incbin "baserom/boot", 0x115AC, 0x40
glabel D_80011A4C
    .incbin "baserom/boot", 0x115EC, 0x18
glabel D_80011A64
    .incbin "baserom/boot", 0x11604, 0x60
glabel D_80011AC4
    .incbin "baserom/boot", 0x11664, 0x14
glabel D_80011AD8
    .incbin "baserom/boot", 0x11678, 0x50
glabel D_80011B28
    .incbin "baserom/boot", 0x116C8, 0x6C
glabel D_80011B94
    .incbin "baserom/boot", 0x11734, 0x24
glabel D_80011BB8
    .incbin "baserom/boot", 0x11758, 0x1C
glabel D_80011BD4
    .incbin "baserom/boot", 0x11774, 0x14
glabel D_80011BE8
    .incbin "baserom/boot", 0x11788, 0x4
glabel D_80011BEC
    .incbin "baserom/boot", 0x1178C, 0x8
glabel D_80011BF4
    .incbin "baserom/boot", 0x11794, 0x40
glabel D_80011C34
    .incbin "baserom/boot", 0x117D4, 0x10
glabel D_80011C44
    .incbin "baserom/boot", 0x117E4, 0x40
glabel D_80011C84
    .incbin "baserom/boot", 0x11824, 0x4
glabel D_80011C88
    .incbin "baserom/boot", 0x11828, 0x10
glabel D_80011C98
    .incbin "baserom/boot", 0x11838, 0x24
glabel D_80011CBC
    .incbin "baserom/boot", 0x1185C, 0x4
glabel D_80011CC0
    .incbin "baserom/boot", 0x11860, 0x3C
glabel D_80011CFC
    .incbin "baserom/boot", 0x1189C, 0x10
glabel D_80011D0C
    .incbin "baserom/boot", 0x118AC, 0x14
glabel D_80011D20
    .incbin "baserom/boot", 0x118C0, 0xC
glabel D_80011D2C
    .incbin "baserom/boot", 0x118CC, 0x34
glabel D_80011D60
    .incbin "baserom/boot", 0x11900, 0x10
glabel D_80011D70
    .incbin "baserom/boot", 0x11910, 0x4
glabel D_80011D74
    .incbin "baserom/boot", 0x11914, 0x3C
glabel D_80011DB0
    .incbin "baserom/boot", 0x11950, 0x34
glabel D_80011DE4
    .incbin "baserom/boot", 0x11984, 0x1C
glabel D_80011E00
    .incbin "baserom/boot", 0x119A0, 0x20
glabel D_80011E20
    .incbin "baserom/boot", 0x119C0, 0x38
glabel D_80011E58
    .incbin "baserom/boot", 0x119F8, 0x38
glabel D_80011E90
    .incbin "baserom/boot", 0x11A30, 0x8
glabel D_80011E98
    .incbin "baserom/boot", 0x11A38, 0x8
glabel D_80011EA0
    .incbin "baserom/boot", 0x11A40, 0x8
glabel D_80011EA8
    .incbin "baserom/boot", 0x11A48, 0x38
glabel D_80011EE0
    .incbin "baserom/boot", 0x11A80, 0x8
glabel D_80011EE8
    .incbin "baserom/boot", 0x11A88, 0x8
glabel D_80011EF0
    .incbin "baserom/boot", 0x11A90, 0x30
glabel D_80011F20
    .incbin "baserom/boot", 0x11AC0, 0x30
glabel D_80011F50
    .incbin "baserom/boot", 0x11AF0, 0x10
glabel D_80011F60
    .incbin "baserom/boot", 0x11B00, 0x54
glabel D_80011FB4
    .incbin "baserom/boot", 0x11B54, 0xC
glabel D_80011FC0
    .incbin "baserom/boot", 0x11B60, 0x8
glabel D_80011FC8
    .incbin "baserom/boot", 0x11B68, 0x4
glabel D_80011FCC
    .incbin "baserom/boot", 0x11B6C, 0x4
glabel D_80011FD0
    .incbin "baserom/boot", 0x11B70, 0x4
glabel D_80011FD4
    .incbin "baserom/boot", 0x11B74, 0x4
glabel D_80011FD8
    .incbin "baserom/boot", 0x11B78, 0x4
glabel D_80011FDC
    .incbin "baserom/boot", 0x11B7C, 0x2C
glabel D_80012008
    .incbin "baserom/boot", 0x11BA8, 0x38
glabel D_80012040
    .incbin "baserom/boot", 0x11BE0, 0x2C
glabel D_8001206C
    .incbin "baserom/boot", 0x11C0C, 0x30
glabel D_8001209C
    .incbin "baserom/boot", 0x11C3C, 0xC
glabel D_800120A8
    .incbin "baserom/boot", 0x11C48, 0x28
glabel D_800120D0
    .incbin "baserom/boot", 0x11C70, 0x10
glabel D_800120E0
    .incbin "baserom/boot", 0x11C80, 0x80
glabel D_80012160
    .incbin "baserom/boot", 0x11D00, 0x80
glabel D_800121E0
    .incbin "baserom/boot", 0x11D80, 0x4
glabel D_800121E4
    .incbin "baserom/boot", 0x11D84, 0xFC
glabel D_800122E0
    .incbin "baserom/boot", 0x11E80, 0x48
glabel D_80012328
    .incbin "baserom/boot", 0x11EC8, 0x8
glabel D_80012330
    .incbin "baserom/boot", 0x11ED0, 0x10
glabel D_80012340
    .incbin "baserom/boot", 0x11EE0, 0x10
glabel D_80012350
    .incbin "baserom/boot", 0x11EF0, 0x14
glabel D_80012364
    .incbin "baserom/boot", 0x11F04, 0xC
glabel D_80012370
