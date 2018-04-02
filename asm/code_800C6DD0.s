.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C6DD0
/* B3DF70 800C6DD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3DF74 800C6DD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3DF78 800C6DD8 3C048014 */  lui   $a0, %hi(D_80145670) # $a0, 0x8014
/* B3DF7C 800C6DDC 0C00084C */  jal   DebugMessage
/* B3DF80 800C6DE0 24845670 */   addiu $a0, %lo(D_80145670) # addiu $a0, $a0, 0x5670
/* B3DF84 800C6DE4 3C058013 */  lui   $a1, %hi(D_8012D278) # $a1, 0x8013
/* B3DF88 800C6DE8 8CA5D278 */  lw    $a1, %lo(D_8012D278)($a1)
/* B3DF8C 800C6DEC 3C048014 */  lui   $a0, %hi(D_80145678) # $a0, 0x8014
/* B3DF90 800C6DF0 3C078021 */  lui   $a3, %hi(D_802109E0) # $a3, 0x8021
/* B3DF94 800C6DF4 24E709E0 */  addiu $a3, %lo(D_802109E0) # addiu $a3, $a3, 0x9e0
/* B3DF98 800C6DF8 24845678 */  addiu $a0, %lo(D_80145678) # addiu $a0, $a0, 0x5678
/* B3DF9C 800C6DFC 0C00084C */  jal   DebugMessage
/* B3DFA0 800C6E00 00053282 */   srl   $a2, $a1, 0xa
/* B3DFA4 800C6E04 3C048014 */  lui   $a0, %hi(D_801456AC) # $a0, 0x8014
/* B3DFA8 800C6E08 0C00084C */  jal   DebugMessage
/* B3DFAC 800C6E0C 248456AC */   addiu $a0, %lo(D_801456AC) # addiu $a0, $a0, 0x56ac
/* B3DFB0 800C6E10 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3DFB4 800C6E14 27BD0018 */  addiu $sp, $sp, 0x18
/* B3DFB8 800C6E18 03E00008 */  jr    $ra
/* B3DFBC 800C6E1C 00000000 */   nop   

glabel func_800C6E20
/* B3DFC0 800C6E20 27BDFEB8 */  addiu $sp, $sp, -0x148
/* B3DFC4 800C6E24 AFA40148 */  sw    $a0, 0x148($sp)
/* B3DFC8 800C6E28 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3DFCC 800C6E2C 3C048014 */  lui   $a0, %hi(D_801456B0) # $a0, 0x8014
/* B3DFD0 800C6E30 0C00084C */  jal   DebugMessage
/* B3DFD4 800C6E34 248456B0 */   addiu $a0, %lo(D_801456B0) # addiu $a0, $a0, 0x56b0
/* B3DFD8 800C6E38 240E0140 */  li    $t6, 320
/* B3DFDC 800C6E3C 3C018013 */  lui   $at, %hi(D_8012D270) # $at, 0x8013
/* B3DFE0 800C6E40 AC2ED270 */  sw    $t6, %lo(D_8012D270)($at)
/* B3DFE4 800C6E44 3C028016 */  lui   $v0, %hi(D_80166660) # $v0, 0x8016
/* B3DFE8 800C6E48 3C018013 */  lui   $at, %hi(D_8012D274) # $at, 0x8013
/* B3DFEC 800C6E4C 240F00F0 */  li    $t7, 240
/* B3DFF0 800C6E50 3C188000 */  lui   $t8, 0x8000
/* B3DFF4 800C6E54 24426660 */  addiu $v0, %lo(D_80166660) # addiu $v0, $v0, 0x6660
/* B3DFF8 800C6E58 AC2FD274 */  sw    $t7, %lo(D_8012D274)($at)
/* B3DFFC 800C6E5C 2704031C */  addiu $a0, $t8, 0x31c
/* B3E000 800C6E60 0C01EF98 */  jal   func_8007BE60
/* B3E004 800C6E64 AC440000 */   sw    $a0, ($v0)
/* B3E008 800C6E68 0C035921 */  jal   func_800D6484
/* B3E00C 800C6E6C 00000000 */   nop   
/* B3E010 800C6E70 0C0328E8 */  jal   func_800CA3A0
/* B3E014 800C6E74 00002025 */   move  $a0, $zero
/* B3E018 800C6E78 0C032942 */  jal   func_800CA508
/* B3E01C 800C6E7C 00002025 */   move  $a0, $zero
/* B3E020 800C6E80 3C058021 */  lui   $a1, %hi(D_802109E0) # $a1, 0x8021
/* B3E024 800C6E84 24A509E0 */  addiu $a1, %lo(D_802109E0) # addiu $a1, $a1, 0x9e0
/* B3E028 800C6E88 0045C823 */  subu  $t9, $v0, $a1
/* B3E02C 800C6E8C 3C018013 */  lui   $at, %hi(D_8012D278) # $at, 0x8013
/* B3E030 800C6E90 AC39D278 */  sw    $t9, %lo(D_8012D278)($at)
/* B3E034 800C6E94 3C048014 */  lui   $a0, %hi(D_801456C4) # $a0, 0x8014
/* B3E038 800C6E98 3C078013 */  lui   $a3, %hi(D_8012D278) # $a3, 0x8013
/* B3E03C 800C6E9C 8CE7D278 */  lw    $a3, %lo(D_8012D278)($a3)
/* B3E040 800C6EA0 248456C4 */  addiu $a0, %lo(D_801456C4) # addiu $a0, $a0, 0x56c4
/* B3E044 800C6EA4 AFA50020 */  sw    $a1, 0x20($sp)
/* B3E048 800C6EA8 0C00084C */  jal   DebugMessage
/* B3E04C 800C6EAC 00403025 */   move  $a2, $v0
/* B3E050 800C6EB0 3C058013 */  lui   $a1, %hi(D_8012D278) # $a1, 0x8013
/* B3E054 800C6EB4 8CA5D278 */  lw    $a1, %lo(D_8012D278)($a1)
/* B3E058 800C6EB8 0C03F2C9 */  jal   func_800FCB24
/* B3E05C 800C6EBC 8FA40020 */   lw    $a0, 0x20($sp)
/* B3E060 800C6EC0 3C088000 */  lui   $t0, %hi(D_80000318) # $t0, 0x8000
/* B3E064 800C6EC4 8D080318 */  lw    $t0, %lo(D_80000318)($t0)
/* B3E068 800C6EC8 3C010080 */  lui   $at, 0x80
/* B3E06C 800C6ECC 0101082B */  sltu  $at, $t0, $at
/* B3E070 800C6ED0 54200009 */  bnezl $at, .L800C6EF8
/* B3E074 800C6ED4 240B0400 */   li    $t3, 1024
/* B3E078 800C6ED8 0C03294C */  jal   func_800CA530
/* B3E07C 800C6EDC 00000000 */   nop   
/* B3E080 800C6EE0 3C098060 */  lui   $t1, 0x8060
/* B3E084 800C6EE4 01225023 */  subu  $t2, $t1, $v0
/* B3E088 800C6EE8 00403825 */  move  $a3, $v0
/* B3E08C 800C6EEC 10000009 */  b     .L800C6F14
/* B3E090 800C6EF0 AFAA0028 */   sw    $t2, 0x28($sp)
/* B3E094 800C6EF4 240B0400 */  li    $t3, 1024
.L800C6EF8:
/* B3E098 800C6EF8 3C058014 */  lui   $a1, %hi(D_801456EC) # $a1, 0x8014
/* B3E09C 800C6EFC AFAB0028 */  sw    $t3, 0x28($sp)
/* B3E0A0 800C6F00 24A556EC */  addiu $a1, %lo(D_801456EC) # addiu $a1, $a1, 0x56ec
/* B3E0A4 800C6F04 24040400 */  li    $a0, 1024
/* B3E0A8 800C6F08 0C03F570 */  jal   func_800FD5C0
/* B3E0AC 800C6F0C 24060235 */   li    $a2, 565
/* B3E0B0 800C6F10 00403825 */  move  $a3, $v0
.L800C6F14:
/* B3E0B4 800C6F14 3C048014 */  lui   $a0, %hi(D_801456F8) # $a0, 0x8014
/* B3E0B8 800C6F18 248456F8 */  addiu $a0, %lo(D_801456F8) # addiu $a0, $a0, 0x56f8
/* B3E0BC 800C6F1C 00E02825 */  move  $a1, $a3
/* B3E0C0 800C6F20 8FA60028 */  lw    $a2, 0x28($sp)
/* B3E0C4 800C6F24 0C00084C */  jal   DebugMessage
/* B3E0C8 800C6F28 AFA7002C */   sw    $a3, 0x2c($sp)
/* B3E0CC 800C6F2C 8FA4002C */  lw    $a0, 0x2c($sp)
/* B3E0D0 800C6F30 0C034FA1 */  jal   func_800D3E84
/* B3E0D4 800C6F34 8FA50028 */   lw    $a1, 0x28($sp)
/* B3E0D8 800C6F38 0C018DB0 */  jal   func_800636C0
/* B3E0DC 800C6F3C 00000000 */   nop   
/* B3E0E0 800C6F40 3C0C8016 */  lui   $t4, %hi(D_8015FA90) # $t4, 0x8016
/* B3E0E4 800C6F44 8D8CFA90 */  lw    $t4, %lo(D_8015FA90)($t4)
/* B3E0E8 800C6F48 3C048017 */  lui   $a0, %hi(D_8016A4D0) # $a0, 0x8017
/* B3E0EC 800C6F4C 3C058017 */  lui   $a1, %hi(D_8016A4E8) # $a1, 0x8017
/* B3E0F0 800C6F50 24A5A4E8 */  addiu $a1, %lo(D_8016A4E8) # addiu $a1, $a1, -0x5b18
/* B3E0F4 800C6F54 2484A4D0 */  addiu $a0, %lo(D_8016A4D0) # addiu $a0, $a0, -0x5b30
/* B3E0F8 800C6F58 24060001 */  li    $a2, 1
/* B3E0FC 800C6F5C 0C001874 */  jal   osCreateMesgQueue
/* B3E100 800C6F60 A58000D4 */   sh    $zero, 0xd4($t4)
/* B3E104 800C6F64 3C058017 */  lui   $a1, %hi(D_8016A4D0) # $a1, 0x8017
/* B3E108 800C6F68 24A5A4D0 */  addiu $a1, %lo(D_8016A4D0) # addiu $a1, $a1, -0x5b30
/* B3E10C 800C6F6C 24040005 */  li    $a0, 5
/* B3E110 800C6F70 0C001488 */  jal   func_80005220
/* B3E114 800C6F74 00003025 */   move  $a2, $zero
/* B3E118 800C6F78 0C031B74 */  jal   func_800C6DD0
/* B3E11C 800C6F7C 00000000 */   nop   
/* B3E120 800C6F80 27A40128 */  addiu $a0, $sp, 0x128
/* B3E124 800C6F84 27A50038 */  addiu $a1, $sp, 0x38
/* B3E128 800C6F88 0C001874 */  jal   osCreateMesgQueue
/* B3E12C 800C6F8C 2406003C */   li    $a2, 60
/* B3E130 800C6F90 3C0E8014 */  lui   $t6, %hi(D_80145718) # $t6, 0x8014
/* B3E134 800C6F94 25CE5718 */  addiu $t6, %lo(D_80145718) # addiu $t6, $t6, 0x5718
/* B3E138 800C6F98 3C048017 */  lui   $a0, %hi(D_8016A218) # $a0, 0x8017
/* B3E13C 800C6F9C 3C058017 */  lui   $a1, %hi(D_80169C98) # $a1, 0x8017
/* B3E140 800C6FA0 3C068017 */  lui   $a2, %hi(D_8016A198) # $a2, 0x8017
/* B3E144 800C6FA4 240D0100 */  li    $t5, 256
/* B3E148 800C6FA8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B3E14C 800C6FAC 24C6A198 */  addiu $a2, %lo(D_8016A198) # addiu $a2, $a2, -0x5e68
/* B3E150 800C6FB0 24A59C98 */  addiu $a1, %lo(D_80169C98) # addiu $a1, $a1, -0x6368
/* B3E154 800C6FB4 2484A218 */  addiu $a0, %lo(D_8016A218) # addiu $a0, $a0, -0x5de8
/* B3E158 800C6FB8 AFAE0014 */  sw    $t6, 0x14($sp)
/* B3E15C 800C6FBC 0C000998 */  jal   func_80002660
/* B3E160 800C6FC0 00003825 */   move  $a3, $zero
/* B3E164 800C6FC4 3C048016 */  lui   $a0, %hi(D_80166D28) # $a0, 0x8016
/* B3E168 800C6FC8 3C058017 */  lui   $a1, %hi(D_8016A198) # $a1, 0x8017
/* B3E16C 800C6FCC 24A5A198 */  addiu $a1, %lo(D_8016A198) # addiu $a1, $a1, -0x5e68
/* B3E170 800C6FD0 24846D28 */  addiu $a0, %lo(D_80166D28) # addiu $a0, $a0, 0x6d28
/* B3E174 800C6FD4 24060011 */  li    $a2, 17
/* B3E178 800C6FD8 0C034E64 */  jal   func_800D3990
/* B3E17C 800C6FDC 24070001 */   li    $a3, 1
/* B3E180 800C6FE0 3C048014 */  lui   $a0, %hi(D_80145720) # $a0, 0x8014
/* B3E184 800C6FE4 0C00084C */  jal   DebugMessage
/* B3E188 800C6FE8 24845720 */   addiu $a0, %lo(D_80145720) # addiu $a0, $a0, 0x5720
/* B3E18C 800C6FEC 3C188014 */  lui   $t8, %hi(D_8014573C) # $t8, 0x8014
/* B3E190 800C6FF0 2718573C */  addiu $t8, %lo(D_8014573C) # addiu $t8, $t8, 0x573c
/* B3E194 800C6FF4 3C048017 */  lui   $a0, %hi(D_8016A1B8) # $a0, 0x8017
/* B3E198 800C6FF8 3C058017 */  lui   $a1, %hi(D_80168998) # $a1, 0x8017
/* B3E19C 800C6FFC 3C068017 */  lui   $a2, %hi(D_80168F98) # $a2, 0x8017
/* B3E1A0 800C7000 240F0100 */  li    $t7, 256
/* B3E1A4 800C7004 AFAF0010 */  sw    $t7, 0x10($sp)
/* B3E1A8 800C7008 24C68F98 */  addiu $a2, %lo(D_80168F98) # addiu $a2, $a2, -0x7068
/* B3E1AC 800C700C 24A58998 */  addiu $a1, %lo(D_80168998) # addiu $a1, $a1, -0x7668
/* B3E1B0 800C7010 2484A1B8 */  addiu $a0, %lo(D_8016A1B8) # addiu $a0, $a0, -0x5e48
/* B3E1B4 800C7014 AFB80014 */  sw    $t8, 0x14($sp)
/* B3E1B8 800C7018 0C000998 */  jal   func_80002660
/* B3E1BC 800C701C 00003825 */   move  $a3, $zero
/* B3E1C0 800C7020 3C088016 */  lui   $t0, %hi(D_80166D28) # $t0, 0x8016
/* B3E1C4 800C7024 25086D28 */  addiu $t0, %lo(D_80166D28) # addiu $t0, $t0, 0x6d28
/* B3E1C8 800C7028 3C048016 */  lui   $a0, %hi(D_80166668) # $a0, 0x8016
/* B3E1CC 800C702C 3C058017 */  lui   $a1, %hi(D_80168F98) # $a1, 0x8017
/* B3E1D0 800C7030 3C078001 */  lui   $a3, %hi(D_80013960) # $a3, 0x8001
/* B3E1D4 800C7034 24190001 */  li    $t9, 1
/* B3E1D8 800C7038 AFB90010 */  sw    $t9, 0x10($sp)
/* B3E1DC 800C703C 90E73960 */  lbu   $a3, %lo(D_80013960)($a3)
/* B3E1E0 800C7040 24A58F98 */  addiu $a1, %lo(D_80168F98) # addiu $a1, $a1, -0x7068
/* B3E1E4 800C7044 24846668 */  addiu $a0, %lo(D_80166668) # addiu $a0, $a0, 0x6668
/* B3E1E8 800C7048 AFA80014 */  sw    $t0, 0x14($sp)
/* B3E1EC 800C704C 0C03261D */  jal   func_800C9874
/* B3E1F0 800C7050 2406000F */   li    $a2, 15
/* B3E1F4 800C7054 3C048016 */  lui   $a0, %hi(D_80166D28) # $a0, 0x8016
/* B3E1F8 800C7058 24846D28 */  addiu $a0, %lo(D_80166D28) # addiu $a0, $a0, 0x6d28
/* B3E1FC 800C705C 27A50140 */  addiu $a1, $sp, 0x140
/* B3E200 800C7060 0C034C88 */  jal   func_800D3220
/* B3E204 800C7064 27A60128 */   addiu $a2, $sp, 0x128
/* B3E208 800C7068 3C0A8014 */  lui   $t2, %hi(D_80145744) # $t2, 0x8014
/* B3E20C 800C706C 254A5744 */  addiu $t2, %lo(D_80145744) # addiu $t2, $t2, 0x5744
/* B3E210 800C7070 3C048017 */  lui   $a0, %hi(D_8016A1D8) # $a0, 0x8017
/* B3E214 800C7074 3C058017 */  lui   $a1, %hi(D_80168F98) # $a1, 0x8017
/* B3E218 800C7078 3C068017 */  lui   $a2, %hi(D_80169798) # $a2, 0x8017
/* B3E21C 800C707C 24090100 */  li    $t1, 256
/* B3E220 800C7080 AFA90010 */  sw    $t1, 0x10($sp)
/* B3E224 800C7084 24C69798 */  addiu $a2, %lo(D_80169798) # addiu $a2, $a2, -0x6868
/* B3E228 800C7088 24A58F98 */  addiu $a1, %lo(D_80168F98) # addiu $a1, $a1, -0x7068
/* B3E22C 800C708C 2484A1D8 */  addiu $a0, %lo(D_8016A1D8) # addiu $a0, $a0, -0x5e28
/* B3E230 800C7090 AFAA0014 */  sw    $t2, 0x14($sp)
/* B3E234 800C7094 0C000998 */  jal   func_80002660
/* B3E238 800C7098 00003825 */   move  $a3, $zero
/* B3E23C 800C709C 3C0B8016 */  lui   $t3, %hi(D_80166668) # $t3, 0x8016
/* B3E240 800C70A0 3C0C8016 */  lui   $t4, %hi(D_80166D28) # $t4, 0x8016
/* B3E244 800C70A4 258C6D28 */  addiu $t4, %lo(D_80166D28) # addiu $t4, $t4, 0x6d28
/* B3E248 800C70A8 256B6668 */  addiu $t3, %lo(D_80166668) # addiu $t3, $t3, 0x6668
/* B3E24C 800C70AC 3C048017 */  lui   $a0, %hi(D_8016A238) # $a0, 0x8017
/* B3E250 800C70B0 3C058017 */  lui   $a1, %hi(D_80169798) # $a1, 0x8017
/* B3E254 800C70B4 24A59798 */  addiu $a1, %lo(D_80169798) # addiu $a1, $a1, -0x6868
/* B3E258 800C70B8 2484A238 */  addiu $a0, %lo(D_8016A238) # addiu $a0, $a0, -0x5dc8
/* B3E25C 800C70BC AFAB0010 */  sw    $t3, 0x10($sp)
/* B3E260 800C70C0 AFAC0014 */  sw    $t4, 0x14($sp)
/* B3E264 800C70C4 2406000C */  li    $a2, 12
/* B3E268 800C70C8 0C030FFB */  jal   func_800C3FEC
/* B3E26C 800C70CC 2407000A */   li    $a3, 10
/* B3E270 800C70D0 3C0E8014 */  lui   $t6, %hi(D_8014574C) # $t6, 0x8014
/* B3E274 800C70D4 25CE574C */  addiu $t6, %lo(D_8014574C) # addiu $t6, $t6, 0x574c
/* B3E278 800C70D8 3C048017 */  lui   $a0, %hi(D_8016A1F8) # $a0, 0x8017
/* B3E27C 800C70DC 3C058017 */  lui   $a1, %hi(D_80169798) # $a1, 0x8017
/* B3E280 800C70E0 3C068017 */  lui   $a2, %hi(D_80169C98) # $a2, 0x8017
/* B3E284 800C70E4 240D0100 */  li    $t5, 256
/* B3E288 800C70E8 AFAD0010 */  sw    $t5, 0x10($sp)
/* B3E28C 800C70EC 24C69C98 */  addiu $a2, %lo(D_80169C98) # addiu $a2, $a2, -0x6368
/* B3E290 800C70F0 24A59798 */  addiu $a1, %lo(D_80169798) # addiu $a1, $a1, -0x6868
/* B3E294 800C70F4 2484A1F8 */  addiu $a0, %lo(D_8016A1F8) # addiu $a0, $a0, -0x5e08
/* B3E298 800C70F8 AFAE0014 */  sw    $t6, 0x14($sp)
/* B3E29C 800C70FC 0C000998 */  jal   func_80002660
/* B3E2A0 800C7100 00003825 */   move  $a3, $zero
/* B3E2A4 800C7104 3C188017 */  lui   $t8, %hi(D_80169C98) # $t8, 0x8017
/* B3E2A8 800C7108 27189C98 */  addiu $t8, %lo(D_80169C98) # addiu $t8, $t8, -0x6368
/* B3E2AC 800C710C 3C048016 */  lui   $a0, %hi(D_801668C0) # $a0, 0x8016
/* B3E2B0 800C7110 3C058017 */  lui   $a1, %hi(D_8016A4D0) # $a1, 0x8017
/* B3E2B4 800C7114 3C068016 */  lui   $a2, %hi(D_80166D28) # $a2, 0x8016
/* B3E2B8 800C7118 240F000E */  li    $t7, 14
/* B3E2BC 800C711C AFAF0010 */  sw    $t7, 0x10($sp)
/* B3E2C0 800C7120 24C66D28 */  addiu $a2, %lo(D_80166D28) # addiu $a2, $a2, 0x6d28
/* B3E2C4 800C7124 24A5A4D0 */  addiu $a1, %lo(D_8016A4D0) # addiu $a1, $a1, -0x5b30
/* B3E2C8 800C7128 248468C0 */  addiu $a0, %lo(D_801668C0) # addiu $a0, $a0, 0x68c0
/* B3E2CC 800C712C AFB80014 */  sw    $t8, 0x14($sp)
/* B3E2D0 800C7130 0C032067 */  jal   func_800C819C
/* B3E2D4 800C7134 24070007 */   li    $a3, 7
/* B3E2D8 800C7138 3C048017 */  lui   $a0, %hi(D_8016A238) # $a0, 0x8017
/* B3E2DC 800C713C 0C030FF1 */  jal   func_800C3FC4
/* B3E2E0 800C7140 2484A238 */   addiu $a0, %lo(D_8016A238) # addiu $a0, $a0, -0x5dc8
/* B3E2E4 800C7144 3C088014 */  lui   $t0, %hi(D_80145754) # $t0, 0x8014
/* B3E2E8 800C7148 25085754 */  addiu $t0, %lo(D_80145754) # addiu $t0, $t0, 0x5754
/* B3E2EC 800C714C 3C048017 */  lui   $a0, %hi(D_8016A198) # $a0, 0x8017
/* B3E2F0 800C7150 3C058016 */  lui   $a1, %hi(D_80167198) # $a1, 0x8016
/* B3E2F4 800C7154 3C068017 */  lui   $a2, %hi(D_80168998) # $a2, 0x8017
/* B3E2F8 800C7158 24190100 */  li    $t9, 256
/* B3E2FC 800C715C AFB90010 */  sw    $t9, 0x10($sp)
/* B3E300 800C7160 24C68998 */  addiu $a2, %lo(D_80168998) # addiu $a2, $a2, -0x7668
/* B3E304 800C7164 24A57198 */  addiu $a1, %lo(D_80167198) # addiu $a1, $a1, 0x7198
/* B3E308 800C7168 2484A198 */  addiu $a0, %lo(D_8016A198) # addiu $a0, $a0, -0x5e68
/* B3E30C 800C716C AFA80014 */  sw    $t0, 0x14($sp)
/* B3E310 800C7170 0C000998 */  jal   func_80002660
/* B3E314 800C7174 00003825 */   move  $a3, $zero
/* B3E318 800C7178 3C098017 */  lui   $t1, %hi(D_80168998) # $t1, 0x8017
/* B3E31C 800C717C 25298998 */  addiu $t1, %lo(D_80168998) # addiu $t1, $t1, -0x7668
/* B3E320 800C7180 3C048016 */  lui   $a0, %hi(D_80166FE8) # $a0, 0x8016
/* B3E324 800C7184 3C06800C */  lui   $a2, %hi(func_800C6844) # $a2, 0x800c
/* B3E328 800C7188 240A000B */  li    $t2, 11
/* B3E32C 800C718C AFAA0014 */  sw    $t2, 0x14($sp)
/* B3E330 800C7190 24C66844 */  addiu $a2, %lo(func_800C6844) # addiu $a2, $a2, 0x6844
/* B3E334 800C7194 24846FE8 */  addiu $a0, %lo(D_80166FE8) # addiu $a0, $a0, 0x6fe8
/* B3E338 800C7198 AFA90010 */  sw    $t1, 0x10($sp)
/* B3E33C 800C719C 24050004 */  li    $a1, 4
/* B3E340 800C71A0 0C001154 */  jal   osCreateThread
/* B3E344 800C71A4 8FA70148 */   lw    $a3, 0x148($sp)
/* B3E348 800C71A8 3C048016 */  lui   $a0, %hi(D_80166FE8) # $a0, 0x8016
/* B3E34C 800C71AC 0C0023F0 */  jal   osStartThread
/* B3E350 800C71B0 24846FE8 */   addiu $a0, %lo(D_80166FE8) # addiu $a0, $a0, 0x6fe8
/* B3E354 800C71B4 00002025 */  move  $a0, $zero
/* B3E358 800C71B8 0C00190C */  jal   osSetThreadPri
/* B3E35C 800C71BC 2405000F */   li    $a1, 15
/* B3E360 800C71C0 AFA00024 */  sw    $zero, 0x24($sp)
.L800C71C4:
/* B3E364 800C71C4 27A40128 */  addiu $a0, $sp, 0x128
/* B3E368 800C71C8 27A50024 */  addiu $a1, $sp, 0x24
/* B3E36C 800C71CC 0C000CA0 */  jal   osRecvMesg
/* B3E370 800C71D0 24060001 */   li    $a2, 1
/* B3E374 800C71D4 8FAB0024 */  lw    $t3, 0x24($sp)
/* B3E378 800C71D8 8FAC0024 */  lw    $t4, 0x24($sp)
/* B3E37C 800C71DC 1160000D */  beqz  $t3, .L800C7214
/* B3E380 800C71E0 00000000 */   nop   
/* B3E384 800C71E4 858D0000 */  lh    $t5, ($t4)
/* B3E388 800C71E8 24010004 */  li    $at, 4
/* B3E38C 800C71EC 55A1FFF5 */  bnel  $t5, $at, .L800C71C4
/* B3E390 800C71F0 AFA00024 */   sw    $zero, 0x24($sp)
/* B3E394 800C71F4 3C048014 */  lui   $a0, %hi(D_8014575C) # $a0, 0x8014
/* B3E398 800C71F8 0C00084C */  jal   DebugMessage
/* B3E39C 800C71FC 2484575C */   addiu $a0, %lo(D_8014575C) # addiu $a0, $a0, 0x575c
/* B3E3A0 800C7200 3C048016 */  lui   $a0, %hi(D_80166660) # $a0, 0x8016
/* B3E3A4 800C7204 0C01EFB5 */  jal   func_8007BED4
/* B3E3A8 800C7208 8C846660 */   lw    $a0, %lo(D_80166660)($a0)
/* B3E3AC 800C720C 1000FFED */  b     .L800C71C4
/* B3E3B0 800C7210 AFA00024 */   sw    $zero, 0x24($sp)
.L800C7214:
/* B3E3B4 800C7214 3C048014 */  lui   $a0, %hi(D_80145780) # $a0, 0x8014
/* B3E3B8 800C7218 0C00084C */  jal   DebugMessage
/* B3E3BC 800C721C 24845780 */   addiu $a0, %lo(D_80145780) # addiu $a0, $a0, 0x5780
/* B3E3C0 800C7220 3C048016 */  lui   $a0, %hi(D_80166FE8) # $a0, 0x8016
/* B3E3C4 800C7224 0C0010D0 */  jal   func_80004340
/* B3E3C8 800C7228 24846FE8 */   addiu $a0, %lo(D_80166FE8) # addiu $a0, $a0, 0x6fe8
/* B3E3CC 800C722C 0C03EFF6 */  jal   func_800FBFD8
/* B3E3D0 800C7230 00000000 */   nop   
/* B3E3D4 800C7234 3C048014 */  lui   $a0, %hi(D_80145794) # $a0, 0x8014
/* B3E3D8 800C7238 0C00084C */  jal   DebugMessage
/* B3E3DC 800C723C 24845794 */   addiu $a0, %lo(D_80145794) # addiu $a0, $a0, 0x5794
/* B3E3E0 800C7240 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3E3E4 800C7244 27BD0148 */  addiu $sp, $sp, 0x148
/* B3E3E8 800C7248 03E00008 */  jr    $ra
/* B3E3EC 800C724C 00000000 */   nop   

glabel func_800C7250
/* B3E3F0 800C7250 3C0E8013 */  lui   $t6, %hi(D_8012D280) # $t6, 0x8013
/* B3E3F4 800C7254 8DCED280 */  lw    $t6, %lo(D_8012D280)($t6)
/* B3E3F8 800C7258 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3E3FC 800C725C AFB00020 */  sw    $s0, 0x20($sp)
/* B3E400 800C7260 29C10003 */  slti  $at, $t6, 3
/* B3E404 800C7264 00808025 */  move  $s0, $a0
/* B3E408 800C7268 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3E40C 800C726C 1420000D */  bnez  $at, .L800C72A4
/* B3E410 800C7270 AFA0002C */   sw    $zero, 0x2c($sp)
/* B3E414 800C7274 0C0013C8 */  jal   osGetThreadId
/* B3E418 800C7278 00002025 */   move  $a0, $zero
/* B3E41C 800C727C 3C048014 */  lui   $a0, %hi(D_801457B0) # $a0, 0x8014
/* B3E420 800C7280 8E060030 */  lw    $a2, 0x30($s0)
/* B3E424 800C7284 260F0028 */  addiu $t7, $s0, 0x28
/* B3E428 800C7288 27B8002C */  addiu $t8, $sp, 0x2c
/* B3E42C 800C728C AFB80014 */  sw    $t8, 0x14($sp)
/* B3E430 800C7290 AFAF0010 */  sw    $t7, 0x10($sp)
/* B3E434 800C7294 248457B0 */  addiu $a0, %lo(D_801457B0) # addiu $a0, $a0, 0x57b0
/* B3E438 800C7298 00402825 */  move  $a1, $v0
/* B3E43C 800C729C 0C00084C */  jal   DebugMessage
/* B3E440 800C72A0 02003825 */   move  $a3, $s0
.L800C72A4:
/* B3E444 800C72A4 26040028 */  addiu $a0, $s0, 0x28
/* B3E448 800C72A8 27A5002C */  addiu $a1, $sp, 0x2c
/* B3E44C 800C72AC 0C000CA0 */  jal   osRecvMesg
/* B3E450 800C72B0 24060001 */   li    $a2, 1
/* B3E454 800C72B4 3C198013 */  lui   $t9, %hi(D_8012D280) # $t9, 0x8013
/* B3E458 800C72B8 8F39D280 */  lw    $t9, %lo(D_8012D280)($t9)
/* B3E45C 800C72BC 2B210003 */  slti  $at, $t9, 3
/* B3E460 800C72C0 5420000A */  bnezl $at, .L800C72EC
/* B3E464 800C72C4 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3E468 800C72C8 0C0013C8 */  jal   osGetThreadId
/* B3E46C 800C72CC 00002025 */   move  $a0, $zero
/* B3E470 800C72D0 3C048014 */  lui   $a0, %hi(D_801457F0) # $a0, 0x8014
/* B3E474 800C72D4 248457F0 */  addiu $a0, %lo(D_801457F0) # addiu $a0, $a0, 0x57f0
/* B3E478 800C72D8 00402825 */  move  $a1, $v0
/* B3E47C 800C72DC 8E060030 */  lw    $a2, 0x30($s0)
/* B3E480 800C72E0 0C00084C */  jal   DebugMessage
/* B3E484 800C72E4 8FA7002C */   lw    $a3, 0x2c($sp)
/* B3E488 800C72E8 8FBF0024 */  lw    $ra, 0x24($sp)
.L800C72EC:
/* B3E48C 800C72EC 8FA2002C */  lw    $v0, 0x2c($sp)
/* B3E490 800C72F0 8FB00020 */  lw    $s0, 0x20($sp)
/* B3E494 800C72F4 03E00008 */  jr    $ra
/* B3E498 800C72F8 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800C72FC
/* B3E49C 800C72FC 3C0E8013 */  lui   $t6, %hi(D_8012D280) # $t6, 0x8013
/* B3E4A0 800C7300 8DCED280 */  lw    $t6, %lo(D_8012D280)($t6)
/* B3E4A4 800C7304 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3E4A8 800C7308 AFB00020 */  sw    $s0, 0x20($sp)
/* B3E4AC 800C730C 29C10003 */  slti  $at, $t6, 3
/* B3E4B0 800C7310 00808025 */  move  $s0, $a0
/* B3E4B4 800C7314 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3E4B8 800C7318 1420000D */  bnez  $at, .L800C7350
/* B3E4BC 800C731C AFA50034 */   sw    $a1, 0x34($sp)
/* B3E4C0 800C7320 0C0013C8 */  jal   osGetThreadId
/* B3E4C4 800C7324 00002025 */   move  $a0, $zero
/* B3E4C8 800C7328 8FB80034 */  lw    $t8, 0x34($sp)
/* B3E4CC 800C732C 3C048014 */  lui   $a0, %hi(D_8014582C) # $a0, 0x8014
/* B3E4D0 800C7330 8E060030 */  lw    $a2, 0x30($s0)
/* B3E4D4 800C7334 260F0028 */  addiu $t7, $s0, 0x28
/* B3E4D8 800C7338 AFAF0010 */  sw    $t7, 0x10($sp)
/* B3E4DC 800C733C 2484582C */  addiu $a0, %lo(D_8014582C) # addiu $a0, $a0, 0x582c
/* B3E4E0 800C7340 00402825 */  move  $a1, $v0
/* B3E4E4 800C7344 02003825 */  move  $a3, $s0
/* B3E4E8 800C7348 0C00084C */  jal   DebugMessage
/* B3E4EC 800C734C AFB80014 */   sw    $t8, 0x14($sp)
.L800C7350:
/* B3E4F0 800C7350 26040028 */  addiu $a0, $s0, 0x28
/* B3E4F4 800C7354 AFA40028 */  sw    $a0, 0x28($sp)
/* B3E4F8 800C7358 8FA50034 */  lw    $a1, 0x34($sp)
/* B3E4FC 800C735C 0C000C18 */  jal   osSendMesg
/* B3E500 800C7360 24060001 */   li    $a2, 1
/* B3E504 800C7364 3C198013 */  lui   $t9, %hi(D_8012D280) # $t9, 0x8013
/* B3E508 800C7368 8F39D280 */  lw    $t9, %lo(D_8012D280)($t9)
/* B3E50C 800C736C 2B210003 */  slti  $at, $t9, 3
/* B3E510 800C7370 5420000E */  bnezl $at, .L800C73AC
/* B3E514 800C7374 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3E518 800C7378 0C0013C8 */  jal   osGetThreadId
/* B3E51C 800C737C 00002025 */   move  $a0, $zero
/* B3E520 800C7380 8FA80028 */  lw    $t0, 0x28($sp)
/* B3E524 800C7384 8FA90034 */  lw    $t1, 0x34($sp)
/* B3E528 800C7388 3C048014 */  lui   $a0, %hi(D_80145860) # $a0, 0x8014
/* B3E52C 800C738C 8E060030 */  lw    $a2, 0x30($s0)
/* B3E530 800C7390 24845860 */  addiu $a0, %lo(D_80145860) # addiu $a0, $a0, 0x5860
/* B3E534 800C7394 00402825 */  move  $a1, $v0
/* B3E538 800C7398 02003825 */  move  $a3, $s0
/* B3E53C 800C739C AFA80010 */  sw    $t0, 0x10($sp)
/* B3E540 800C73A0 0C00084C */  jal   DebugMessage
/* B3E544 800C73A4 AFA90014 */   sw    $t1, 0x14($sp)
/* B3E548 800C73A8 8FBF0024 */  lw    $ra, 0x24($sp)
.L800C73AC:
/* B3E54C 800C73AC 8FB00020 */  lw    $s0, 0x20($sp)
/* B3E550 800C73B0 27BD0030 */  addiu $sp, $sp, 0x30
/* B3E554 800C73B4 03E00008 */  jr    $ra
/* B3E558 800C73B8 00000000 */   nop   

glabel func_800C73BC
/* B3E55C 800C73BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3E560 800C73C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3E564 800C73C4 24840040 */  addiu $a0, $a0, 0x40
/* B3E568 800C73C8 00002825 */  move  $a1, $zero
/* B3E56C 800C73CC 0C000CA0 */  jal   osRecvMesg
/* B3E570 800C73D0 24060001 */   li    $a2, 1
/* B3E574 800C73D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3E578 800C73D8 27BD0018 */  addiu $sp, $sp, 0x18
/* B3E57C 800C73DC 03E00008 */  jr    $ra
/* B3E580 800C73E0 00000000 */   nop   

glabel func_800C73E4
/* B3E584 800C73E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3E588 800C73E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3E58C 800C73EC 24840040 */  addiu $a0, $a0, 0x40
/* B3E590 800C73F0 00002825 */  move  $a1, $zero
/* B3E594 800C73F4 0C000C18 */  jal   osSendMesg
/* B3E598 800C73F8 24060001 */   li    $a2, 1
/* B3E59C 800C73FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3E5A0 800C7400 27BD0018 */  addiu $sp, $sp, 0x18
/* B3E5A4 800C7404 03E00008 */  jr    $ra
/* B3E5A8 800C7408 00000000 */   nop   

glabel func_800C740C
/* B3E5AC 800C740C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B3E5B0 800C7410 AFBF0034 */  sw    $ra, 0x34($sp)
/* B3E5B4 800C7414 AFB40028 */  sw    $s4, 0x28($sp)
/* B3E5B8 800C7418 0080A025 */  move  $s4, $a0
/* B3E5BC 800C741C AFB60030 */  sw    $s6, 0x30($sp)
/* B3E5C0 800C7420 AFB5002C */  sw    $s5, 0x2c($sp)
/* B3E5C4 800C7424 AFB30024 */  sw    $s3, 0x24($sp)
/* B3E5C8 800C7428 AFB20020 */  sw    $s2, 0x20($sp)
/* B3E5CC 800C742C AFB1001C */  sw    $s1, 0x1c($sp)
/* B3E5D0 800C7430 0C031C94 */  jal   func_800C7250
/* B3E5D4 800C7434 AFB00018 */   sw    $s0, 0x18($sp)
/* B3E5D8 800C7438 AFA2003C */  sw    $v0, 0x3c($sp)
/* B3E5DC 800C743C 0000A825 */  move  $s5, $zero
/* B3E5E0 800C7440 00009825 */  move  $s3, $zero
/* B3E5E4 800C7444 02808825 */  move  $s1, $s4
/* B3E5E8 800C7448 24160001 */  li    $s6, 1
.L800C744C:
/* B3E5EC 800C744C 922E02AA */  lbu   $t6, 0x2aa($s1)
/* B3E5F0 800C7450 00137880 */  sll   $t7, $s3, 2
/* B3E5F4 800C7454 028FC021 */  addu  $t8, $s4, $t7
/* B3E5F8 800C7458 51C00087 */  beql  $t6, $zero, .L800C7678
/* B3E5FC 800C745C 26730001 */   addiu $s3, $s3, 1
/* B3E600 800C7460 93190002 */  lbu   $t9, 2($t8)
/* B3E604 800C7464 33280001 */  andi  $t0, $t9, 1
/* B3E608 800C7468 51000064 */  beql  $t0, $zero, .L800C75FC
/* B3E60C 800C746C 922202AE */   lbu   $v0, 0x2ae($s1)
/* B3E610 800C7470 922902AE */  lbu   $t1, 0x2ae($s1)
/* B3E614 800C7474 56C90080 */  bnel  $s6, $t1, .L800C7678
/* B3E618 800C7478 26730001 */   addiu $s3, $s3, 1
/* B3E61C 800C747C 922A02B2 */  lbu   $t2, 0x2b2($s1)
/* B3E620 800C7480 51400030 */  beql  $t2, $zero, .L800C7544
/* B3E624 800C7484 922E02B6 */   lbu   $t6, 0x2b6($s1)
/* B3E628 800C7488 922B02B6 */  lbu   $t3, 0x2b6($s1)
/* B3E62C 800C748C 00136080 */  sll   $t4, $s3, 2
/* B3E630 800C7490 01936023 */  subu  $t4, $t4, $s3
/* B3E634 800C7494 29610003 */  slti  $at, $t3, 3
/* B3E638 800C7498 10200076 */  beqz  $at, .L800C7674
/* B3E63C 800C749C 000C6080 */   sll   $t4, $t4, 2
/* B3E640 800C74A0 01936021 */  addu  $t4, $t4, $s3
/* B3E644 800C74A4 000C60C0 */  sll   $t4, $t4, 3
/* B3E648 800C74A8 028C9021 */  addu  $s2, $s4, $t4
/* B3E64C 800C74AC 3C048014 */  lui   $a0, %hi(D_80145894) # $a0, 0x8014
/* B3E650 800C74B0 24845894 */  addiu $a0, %lo(D_80145894) # addiu $a0, $a0, 0x5894
/* B3E654 800C74B4 265202BC */  addiu $s2, $s2, 0x2bc
/* B3E658 800C74B8 0C00084C */  jal   DebugMessage
/* B3E65C 800C74BC 24150001 */   li    $s5, 1
/* B3E660 800C74C0 3C048014 */  lui   $a0, %hi(D_8014589C) # $a0, 0x8014
/* B3E664 800C74C4 26700001 */  addiu $s0, $s3, 1
/* B3E668 800C74C8 3C068014 */  lui   $a2, %hi(D_801458B0) # $a2, 0x8014
/* B3E66C 800C74CC 24C658B0 */  addiu $a2, %lo(D_801458B0) # addiu $a2, $a2, 0x58b0
/* B3E670 800C74D0 02002825 */  move  $a1, $s0
/* B3E674 800C74D4 0C00084C */  jal   DebugMessage
/* B3E678 800C74D8 2484589C */   addiu $a0, %lo(D_8014589C) # addiu $a0, $a0, 0x589c
/* B3E67C 800C74DC 3C048014 */  lui   $a0, %hi(D_801458CC) # $a0, 0x8014
/* B3E680 800C74E0 0C00084C */  jal   DebugMessage
/* B3E684 800C74E4 248458CC */   addiu $a0, %lo(D_801458CC) # addiu $a0, $a0, 0x58cc
/* B3E688 800C74E8 02402025 */  move  $a0, $s2
/* B3E68C 800C74EC 0C0401E0 */  jal   func_80100780
/* B3E690 800C74F0 02C02825 */   move  $a1, $s6
/* B3E694 800C74F4 10400010 */  beqz  $v0, .L800C7538
/* B3E698 800C74F8 240D0003 */   li    $t5, 3
/* B3E69C 800C74FC 3C048014 */  lui   $a0, %hi(D_801458D0) # $a0, 0x8014
/* B3E6A0 800C7500 A22002AE */  sb    $zero, 0x2ae($s1)
/* B3E6A4 800C7504 0C00084C */  jal   DebugMessage
/* B3E6A8 800C7508 248458D0 */   addiu $a0, %lo(D_801458D0) # addiu $a0, $a0, 0x58d0
/* B3E6AC 800C750C 3C048014 */  lui   $a0, %hi(D_801458D8) # $a0, 0x8014
/* B3E6B0 800C7510 3C068014 */  lui   $a2, %hi(D_801458EC) # $a2, 0x8014
/* B3E6B4 800C7514 24C658EC */  addiu $a2, %lo(D_801458EC) # addiu $a2, $a2, 0x58ec
/* B3E6B8 800C7518 248458D8 */  addiu $a0, %lo(D_801458D8) # addiu $a0, $a0, 0x58d8
/* B3E6BC 800C751C 0C00084C */  jal   DebugMessage
/* B3E6C0 800C7520 02002825 */   move  $a1, $s0
/* B3E6C4 800C7524 3C048014 */  lui   $a0, %hi(D_80145914) # $a0, 0x8014
/* B3E6C8 800C7528 0C00084C */  jal   DebugMessage
/* B3E6CC 800C752C 24845914 */   addiu $a0, %lo(D_80145914) # addiu $a0, $a0, 0x5914
/* B3E6D0 800C7530 10000051 */  b     .L800C7678
/* B3E6D4 800C7534 26730001 */   addiu $s3, $s3, 1
.L800C7538:
/* B3E6D8 800C7538 1000004E */  b     .L800C7674
/* B3E6DC 800C753C A22D02B6 */   sb    $t5, 0x2b6($s1)
/* B3E6E0 800C7540 922E02B6 */  lbu   $t6, 0x2b6($s1)
.L800C7544:
/* B3E6E4 800C7544 00137880 */  sll   $t7, $s3, 2
/* B3E6E8 800C7548 01F37823 */  subu  $t7, $t7, $s3
/* B3E6EC 800C754C 11C00049 */  beqz  $t6, .L800C7674
/* B3E6F0 800C7550 000F7880 */   sll   $t7, $t7, 2
/* B3E6F4 800C7554 01F37821 */  addu  $t7, $t7, $s3
/* B3E6F8 800C7558 000F78C0 */  sll   $t7, $t7, 3
/* B3E6FC 800C755C 028F9021 */  addu  $s2, $s4, $t7
/* B3E700 800C7560 3C048014 */  lui   $a0, %hi(D_80145918) # $a0, 0x8014
/* B3E704 800C7564 24845918 */  addiu $a0, %lo(D_80145918) # addiu $a0, $a0, 0x5918
/* B3E708 800C7568 265202BC */  addiu $s2, $s2, 0x2bc
/* B3E70C 800C756C 0C00084C */  jal   DebugMessage
/* B3E710 800C7570 24150001 */   li    $s5, 1
/* B3E714 800C7574 3C048014 */  lui   $a0, %hi(D_80145920) # $a0, 0x8014
/* B3E718 800C7578 26700001 */  addiu $s0, $s3, 1
/* B3E71C 800C757C 3C068014 */  lui   $a2, %hi(D_80145934) # $a2, 0x8014
/* B3E720 800C7580 24C65934 */  addiu $a2, %lo(D_80145934) # addiu $a2, $a2, 0x5934
/* B3E724 800C7584 02002825 */  move  $a1, $s0
/* B3E728 800C7588 0C00084C */  jal   DebugMessage
/* B3E72C 800C758C 24845920 */   addiu $a0, %lo(D_80145920) # addiu $a0, $a0, 0x5920
/* B3E730 800C7590 3C048014 */  lui   $a0, %hi(D_80145944) # $a0, 0x8014
/* B3E734 800C7594 0C00084C */  jal   DebugMessage
/* B3E738 800C7598 24845944 */   addiu $a0, %lo(D_80145944) # addiu $a0, $a0, 0x5944
/* B3E73C 800C759C 02402025 */  move  $a0, $s2
/* B3E740 800C75A0 0C0401E0 */  jal   func_80100780
/* B3E744 800C75A4 00002825 */   move  $a1, $zero
/* B3E748 800C75A8 1040000F */  beqz  $v0, .L800C75E8
/* B3E74C 800C75AC 3C048014 */   lui   $a0, %hi(D_80145948) # $a0, 0x8014
/* B3E750 800C75B0 A22002AE */  sb    $zero, 0x2ae($s1)
/* B3E754 800C75B4 0C00084C */  jal   DebugMessage
/* B3E758 800C75B8 24845948 */   addiu $a0, %lo(D_80145948) # addiu $a0, $a0, 0x5948
/* B3E75C 800C75BC 3C048014 */  lui   $a0, %hi(D_80145950) # $a0, 0x8014
/* B3E760 800C75C0 3C068014 */  lui   $a2, %hi(D_80145964) # $a2, 0x8014
/* B3E764 800C75C4 24C65964 */  addiu $a2, %lo(D_80145964) # addiu $a2, $a2, 0x5964
/* B3E768 800C75C8 24845950 */  addiu $a0, %lo(D_80145950) # addiu $a0, $a0, 0x5950
/* B3E76C 800C75CC 0C00084C */  jal   DebugMessage
/* B3E770 800C75D0 02002825 */   move  $a1, $s0
/* B3E774 800C75D4 3C048014 */  lui   $a0, %hi(D_8014598C) # $a0, 0x8014
/* B3E778 800C75D8 0C00084C */  jal   DebugMessage
/* B3E77C 800C75DC 2484598C */   addiu $a0, %lo(D_8014598C) # addiu $a0, $a0, 0x598c
/* B3E780 800C75E0 10000025 */  b     .L800C7678
/* B3E784 800C75E4 26730001 */   addiu $s3, $s3, 1
.L800C75E8:
/* B3E788 800C75E8 923802B6 */  lbu   $t8, 0x2b6($s1)
/* B3E78C 800C75EC 2719FFFF */  addiu $t9, $t8, -1
/* B3E790 800C75F0 10000020 */  b     .L800C7674
/* B3E794 800C75F4 A23902B6 */   sb    $t9, 0x2b6($s1)
/* B3E798 800C75F8 922202AE */  lbu   $v0, 0x2ae($s1)
.L800C75FC:
/* B3E79C 800C75FC 5040001E */  beql  $v0, $zero, .L800C7678
/* B3E7A0 800C7600 26730001 */   addiu $s3, $s3, 1
/* B3E7A4 800C7604 16C2000F */  bne   $s6, $v0, .L800C7644
/* B3E7A8 800C7608 3C048014 */   lui   $a0, 0x8014
/* B3E7AC 800C760C 3C048014 */  lui   $a0, %hi(D_80145990) # $a0, 0x8014
/* B3E7B0 800C7610 0C00084C */  jal   DebugMessage
/* B3E7B4 800C7614 24845990 */   addiu $a0, %lo(D_80145990) # addiu $a0, $a0, 0x5990
/* B3E7B8 800C7618 3C048014 */  lui   $a0, %hi(D_80145998) # $a0, 0x8014
/* B3E7BC 800C761C 3C068014 */  lui   $a2, %hi(D_801459AC) # $a2, 0x8014
/* B3E7C0 800C7620 24C659AC */  addiu $a2, %lo(D_801459AC) # addiu $a2, $a2, 0x59ac
/* B3E7C4 800C7624 24845998 */  addiu $a0, %lo(D_80145998) # addiu $a0, $a0, 0x5998
/* B3E7C8 800C7628 0C00084C */  jal   DebugMessage
/* B3E7CC 800C762C 26650001 */   addiu $a1, $s3, 1
/* B3E7D0 800C7630 3C048014 */  lui   $a0, %hi(D_801459CC) # $a0, 0x8014
/* B3E7D4 800C7634 0C00084C */  jal   DebugMessage
/* B3E7D8 800C7638 248459CC */   addiu $a0, %lo(D_801459CC) # addiu $a0, $a0, 0x59cc
/* B3E7DC 800C763C 1000000D */  b     .L800C7674
/* B3E7E0 800C7640 A22002AE */   sb    $zero, 0x2ae($s1)
.L800C7644:
/* B3E7E4 800C7644 0C00084C */  jal   DebugMessage
/* B3E7E8 800C7648 248459D0 */   addiu $a0, $a0, 0x59d0
/* B3E7EC 800C764C 3C048014 */  lui   $a0, %hi(D_801459D8) # $a0, 0x8014
/* B3E7F0 800C7650 3C068014 */  lui   $a2, %hi(D_801459EC) # $a2, 0x8014
/* B3E7F4 800C7654 24C659EC */  addiu $a2, %lo(D_801459EC) # addiu $a2, $a2, 0x59ec
/* B3E7F8 800C7658 248459D8 */  addiu $a0, %lo(D_801459D8) # addiu $a0, $a0, 0x59d8
/* B3E7FC 800C765C 0C00084C */  jal   DebugMessage
/* B3E800 800C7660 26650001 */   addiu $a1, $s3, 1
/* B3E804 800C7664 3C048014 */  lui   $a0, %hi(D_80145A24) # $a0, 0x8014
/* B3E808 800C7668 0C00084C */  jal   DebugMessage
/* B3E80C 800C766C 24845A24 */   addiu $a0, %lo(D_80145A24) # addiu $a0, $a0, 0x5a24
/* B3E810 800C7670 A22002AE */  sb    $zero, 0x2ae($s1)
.L800C7674:
/* B3E814 800C7674 26730001 */  addiu $s3, $s3, 1
.L800C7678:
/* B3E818 800C7678 2A610004 */  slti  $at, $s3, 4
/* B3E81C 800C767C 1420FF73 */  bnez  $at, .L800C744C
/* B3E820 800C7680 26310001 */   addiu $s1, $s1, 1
/* B3E824 800C7684 16A00052 */  bnez  $s5, .L800C77D0
/* B3E828 800C7688 3C028017 */   lui   $v0, %hi(D_8016A4F0) # $v0, 0x8017
/* B3E82C 800C768C 8C42A4F0 */  lw    $v0, %lo(D_8016A4F0)($v0)
/* B3E830 800C7690 30420003 */  andi  $v0, $v0, 3
/* B3E834 800C7694 02821821 */  addu  $v1, $s4, $v0
/* B3E838 800C7698 906802AA */  lbu   $t0, 0x2aa($v1)
/* B3E83C 800C769C 00024880 */  sll   $t1, $v0, 2
/* B3E840 800C76A0 00409825 */  move  $s3, $v0
/* B3E844 800C76A4 1100004A */  beqz  $t0, .L800C77D0
/* B3E848 800C76A8 02895021 */   addu  $t2, $s4, $t1
/* B3E84C 800C76AC 914B0002 */  lbu   $t3, 2($t2)
/* B3E850 800C76B0 316C0001 */  andi  $t4, $t3, 1
/* B3E854 800C76B4 11800046 */  beqz  $t4, .L800C77D0
/* B3E858 800C76B8 00000000 */   nop   
/* B3E85C 800C76BC 906D02AE */  lbu   $t5, 0x2ae($v1)
/* B3E860 800C76C0 00027080 */  sll   $t6, $v0, 2
/* B3E864 800C76C4 01C27023 */  subu  $t6, $t6, $v0
/* B3E868 800C76C8 12CD0041 */  beq   $s6, $t5, .L800C77D0
/* B3E86C 800C76CC 8FA4003C */   lw    $a0, 0x3c($sp)
/* B3E870 800C76D0 000E7080 */  sll   $t6, $t6, 2
/* B3E874 800C76D4 01C27021 */  addu  $t6, $t6, $v0
/* B3E878 800C76D8 000E70C0 */  sll   $t6, $t6, 3
/* B3E87C 800C76DC 028E9021 */  addu  $s2, $s4, $t6
/* B3E880 800C76E0 265202BC */  addiu $s2, $s2, 0x2bc
/* B3E884 800C76E4 02402825 */  move  $a1, $s2
/* B3E888 800C76E8 0C04027D */  jal   func_801009F4
/* B3E88C 800C76EC 00403025 */   move  $a2, $v0
/* B3E890 800C76F0 14400018 */  bnez  $v0, .L800C7754
/* B3E894 800C76F4 2401000B */   li    $at, 11
/* B3E898 800C76F8 240F0001 */  li    $t7, 1
/* B3E89C 800C76FC 0293C021 */  addu  $t8, $s4, $s3
/* B3E8A0 800C7700 A30F02AE */  sb    $t7, 0x2ae($t8)
/* B3E8A4 800C7704 02402025 */  move  $a0, $s2
/* B3E8A8 800C7708 0C0401E0 */  jal   func_80100780
/* B3E8AC 800C770C 24050001 */   li    $a1, 1
/* B3E8B0 800C7710 02402025 */  move  $a0, $s2
/* B3E8B4 800C7714 0C0401E0 */  jal   func_80100780
/* B3E8B8 800C7718 00002825 */   move  $a1, $zero
/* B3E8BC 800C771C 3C048014 */  lui   $a0, %hi(D_80145A28) # $a0, 0x8014
/* B3E8C0 800C7720 0C00084C */  jal   DebugMessage
/* B3E8C4 800C7724 24845A28 */   addiu $a0, %lo(D_80145A28) # addiu $a0, $a0, 0x5a28
/* B3E8C8 800C7728 3C048014 */  lui   $a0, %hi(D_80145A30) # $a0, 0x8014
/* B3E8CC 800C772C 3C068014 */  lui   $a2, %hi(D_80145A44) # $a2, 0x8014
/* B3E8D0 800C7730 24C65A44 */  addiu $a2, %lo(D_80145A44) # addiu $a2, $a2, 0x5a44
/* B3E8D4 800C7734 24845A30 */  addiu $a0, %lo(D_80145A30) # addiu $a0, $a0, 0x5a30
/* B3E8D8 800C7738 0C00084C */  jal   DebugMessage
/* B3E8DC 800C773C 26650001 */   addiu $a1, $s3, 1
/* B3E8E0 800C7740 3C048014 */  lui   $a0, %hi(D_80145A60) # $a0, 0x8014
/* B3E8E4 800C7744 0C00084C */  jal   DebugMessage
/* B3E8E8 800C7748 24845A60 */   addiu $a0, %lo(D_80145A60) # addiu $a0, $a0, 0x5a60
/* B3E8EC 800C774C 10000020 */  b     .L800C77D0
/* B3E8F0 800C7750 00000000 */   nop   
.L800C7754:
/* B3E8F4 800C7754 14410004 */  bne   $v0, $at, .L800C7768
/* B3E8F8 800C7758 24190002 */   li    $t9, 2
/* B3E8FC 800C775C 02934021 */  addu  $t0, $s4, $s3
/* B3E900 800C7760 1000001B */  b     .L800C77D0
/* B3E904 800C7764 A11902AE */   sb    $t9, 0x2ae($t0)
.L800C7768:
/* B3E908 800C7768 24010004 */  li    $at, 4
/* B3E90C 800C776C 14410018 */  bne   $v0, $at, .L800C77D0
/* B3E910 800C7770 3C048014 */   lui   $a0, %hi(D_80145A64) # $a0, 0x8014
/* B3E914 800C7774 24845A64 */  addiu $a0, %lo(D_80145A64) # addiu $a0, $a0, 0x5a64
/* B3E918 800C7778 0C000B84 */  jal   DebugMessageWithThreadId
/* B3E91C 800C777C 2405011A */   li    $a1, 282
/* B3E920 800C7780 3C058013 */  lui   $a1, %hi(D_8012D284) # $a1, 0x8013
/* B3E924 800C7784 8CA5D284 */  lw    $a1, %lo(D_8012D284)($a1)
/* B3E928 800C7788 3C048014 */  lui   $a0, %hi(D_80145A70) # $a0, 0x8014
/* B3E92C 800C778C 3C018013 */  lui   $at, %hi(D_8012D284) # $at, 0x8013
/* B3E930 800C7790 24A50001 */  addiu $a1, $a1, 1
/* B3E934 800C7794 AC25D284 */  sw    $a1, %lo(D_8012D284)($at)
/* B3E938 800C7798 0C00084C */  jal   DebugMessage
/* B3E93C 800C779C 24845A70 */   addiu $a0, %lo(D_80145A70) # addiu $a0, $a0, 0x5a70
/* B3E940 800C77A0 3C048014 */  lui   $a0, %hi(D_80145A80) # $a0, 0x8014
/* B3E944 800C77A4 0C00084C */  jal   DebugMessage
/* B3E948 800C77A8 24845A80 */   addiu $a0, %lo(D_80145A80) # addiu $a0, $a0, 0x5a80
/* B3E94C 800C77AC 3C048014 */  lui   $a0, %hi(D_80145A88) # $a0, 0x8014
/* B3E950 800C77B0 3C068014 */  lui   $a2, %hi(D_80145A9C) # $a2, 0x8014
/* B3E954 800C77B4 24C65A9C */  addiu $a2, %lo(D_80145A9C) # addiu $a2, $a2, 0x5a9c
/* B3E958 800C77B8 24845A88 */  addiu $a0, %lo(D_80145A88) # addiu $a0, $a0, 0x5a88
/* B3E95C 800C77BC 0C00084C */  jal   DebugMessage
/* B3E960 800C77C0 26650001 */   addiu $a1, $s3, 1
/* B3E964 800C77C4 3C048014 */  lui   $a0, %hi(D_80145ABC) # $a0, 0x8014
/* B3E968 800C77C8 0C00084C */  jal   DebugMessage
/* B3E96C 800C77CC 24845ABC */   addiu $a0, %lo(D_80145ABC) # addiu $a0, $a0, 0x5abc
.L800C77D0:
/* B3E970 800C77D0 3C098017 */  lui   $t1, %hi(D_8016A4F0) # $t1, 0x8017
/* B3E974 800C77D4 8D29A4F0 */  lw    $t1, %lo(D_8016A4F0)($t1)
/* B3E978 800C77D8 3C018017 */  lui   $at, %hi(D_8016A4F0) # $at, 0x8017
/* B3E97C 800C77DC 02802025 */  move  $a0, $s4
/* B3E980 800C77E0 252A0001 */  addiu $t2, $t1, 1
/* B3E984 800C77E4 AC2AA4F0 */  sw    $t2, %lo(D_8016A4F0)($at)
/* B3E988 800C77E8 0C031CBF */  jal   func_800C72FC
/* B3E98C 800C77EC 8FA5003C */   lw    $a1, 0x3c($sp)
/* B3E990 800C77F0 8FBF0034 */  lw    $ra, 0x34($sp)
/* B3E994 800C77F4 8FB00018 */  lw    $s0, 0x18($sp)
/* B3E998 800C77F8 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3E99C 800C77FC 8FB20020 */  lw    $s2, 0x20($sp)
/* B3E9A0 800C7800 8FB30024 */  lw    $s3, 0x24($sp)
/* B3E9A4 800C7804 8FB40028 */  lw    $s4, 0x28($sp)
/* B3E9A8 800C7808 8FB5002C */  lw    $s5, 0x2c($sp)
/* B3E9AC 800C780C 8FB60030 */  lw    $s6, 0x30($sp)
/* B3E9B0 800C7810 03E00008 */  jr    $ra
/* B3E9B4 800C7814 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800C7818
/* B3E9B8 800C7818 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B3E9BC 800C781C AFBF003C */  sw    $ra, 0x3c($sp)
/* B3E9C0 800C7820 AFB20020 */  sw    $s2, 0x20($sp)
/* B3E9C4 800C7824 00809025 */  move  $s2, $a0
/* B3E9C8 800C7828 AFBE0038 */  sw    $fp, 0x38($sp)
/* B3E9CC 800C782C AFB70034 */  sw    $s7, 0x34($sp)
/* B3E9D0 800C7830 AFB60030 */  sw    $s6, 0x30($sp)
/* B3E9D4 800C7834 AFB5002C */  sw    $s5, 0x2c($sp)
/* B3E9D8 800C7838 AFB40028 */  sw    $s4, 0x28($sp)
/* B3E9DC 800C783C AFB30024 */  sw    $s3, 0x24($sp)
/* B3E9E0 800C7840 AFB1001C */  sw    $s1, 0x1c($sp)
/* B3E9E4 800C7844 0C031C94 */  jal   func_800C7250
/* B3E9E8 800C7848 AFB00018 */   sw    $s0, 0x18($sp)
/* B3E9EC 800C784C 3C178014 */  lui   $s7, %hi(D_80145AEC) # $s7, 0x8014
/* B3E9F0 800C7850 3C168014 */  lui   $s6, %hi(D_80145ADC) # $s6, 0x8014
/* B3E9F4 800C7854 3C158014 */  lui   $s5, %hi(D_80145AC8) # $s5, 0x8014
/* B3E9F8 800C7858 3C148014 */  lui   $s4, %hi(D_80145AC0) # $s4, 0x8014
/* B3E9FC 800C785C 3C138017 */  lui   $s3, %hi(D_8016AE28) # $s3, 0x8017
/* B3EA00 800C7860 2673AE28 */  addiu $s3, %lo(D_8016AE28) # addiu $s3, $s3, -0x51d8
/* B3EA04 800C7864 26945AC0 */  addiu $s4, %lo(D_80145AC0) # addiu $s4, $s4, 0x5ac0
/* B3EA08 800C7868 26B55AC8 */  addiu $s5, %lo(D_80145AC8) # addiu $s5, $s5, 0x5ac8
/* B3EA0C 800C786C 26D65ADC */  addiu $s6, %lo(D_80145ADC) # addiu $s6, $s6, 0x5adc
/* B3EA10 800C7870 26F75AEC */  addiu $s7, %lo(D_80145AEC) # addiu $s7, $s7, 0x5aec
/* B3EA14 800C7874 00008025 */  move  $s0, $zero
/* B3EA18 800C7878 265102BC */  addiu $s1, $s2, 0x2bc
/* B3EA1C 800C787C AFA20040 */  sw    $v0, 0x40($sp)
/* B3EA20 800C7880 241E0004 */  li    $fp, 4
.L800C7884:
/* B3EA24 800C7884 8FA40040 */  lw    $a0, 0x40($sp)
/* B3EA28 800C7888 02202825 */  move  $a1, $s1
/* B3EA2C 800C788C 0C04027D */  jal   func_801009F4
/* B3EA30 800C7890 02003025 */   move  $a2, $s0
/* B3EA34 800C7894 54400013 */  bnezl $v0, .L800C78E4
/* B3EA38 800C7898 26100001 */   addiu $s0, $s0, 1
/* B3EA3C 800C789C 926E07CD */  lbu   $t6, 0x7cd($s3)
/* B3EA40 800C78A0 55C0000D */  bnezl $t6, .L800C78D8
/* B3EA44 800C78A4 02202025 */   move  $a0, $s1
/* B3EA48 800C78A8 924F045D */  lbu   $t7, 0x45d($s2)
/* B3EA4C 800C78AC 51E0000A */  beql  $t7, $zero, .L800C78D8
/* B3EA50 800C78B0 02202025 */   move  $a0, $s1
/* B3EA54 800C78B4 0C00084C */  jal   DebugMessage
/* B3EA58 800C78B8 02802025 */   move  $a0, $s4
/* B3EA5C 800C78BC 02A02025 */  move  $a0, $s5
/* B3EA60 800C78C0 26050001 */  addiu $a1, $s0, 1
/* B3EA64 800C78C4 0C00084C */  jal   DebugMessage
/* B3EA68 800C78C8 02C03025 */   move  $a2, $s6
/* B3EA6C 800C78CC 0C00084C */  jal   DebugMessage
/* B3EA70 800C78D0 02E02025 */   move  $a0, $s7
/* B3EA74 800C78D4 02202025 */  move  $a0, $s1
.L800C78D8:
/* B3EA78 800C78D8 0C0401E0 */  jal   func_80100780
/* B3EA7C 800C78DC 00002825 */   move  $a1, $zero
/* B3EA80 800C78E0 26100001 */  addiu $s0, $s0, 1
.L800C78E4:
/* B3EA84 800C78E4 161EFFE7 */  bne   $s0, $fp, .L800C7884
/* B3EA88 800C78E8 26310068 */   addiu $s1, $s1, 0x68
/* B3EA8C 800C78EC 02402025 */  move  $a0, $s2
/* B3EA90 800C78F0 0C031CBF */  jal   func_800C72FC
/* B3EA94 800C78F4 8FA50040 */   lw    $a1, 0x40($sp)
/* B3EA98 800C78F8 8FBF003C */  lw    $ra, 0x3c($sp)
/* B3EA9C 800C78FC 8FB00018 */  lw    $s0, 0x18($sp)
/* B3EAA0 800C7900 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3EAA4 800C7904 8FB20020 */  lw    $s2, 0x20($sp)
/* B3EAA8 800C7908 8FB30024 */  lw    $s3, 0x24($sp)
/* B3EAAC 800C790C 8FB40028 */  lw    $s4, 0x28($sp)
/* B3EAB0 800C7910 8FB5002C */  lw    $s5, 0x2c($sp)
/* B3EAB4 800C7914 8FB60030 */  lw    $s6, 0x30($sp)
/* B3EAB8 800C7918 8FB70034 */  lw    $s7, 0x34($sp)
/* B3EABC 800C791C 8FBE0038 */  lw    $fp, 0x38($sp)
/* B3EAC0 800C7920 03E00008 */  jr    $ra
/* B3EAC4 800C7924 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_800C7928
/* B3EAC8 800C7928 240E0003 */  li    $t6, 3
/* B3EACC 800C792C 03E00008 */  jr    $ra
/* B3EAD0 800C7930 A08E045C */   sb    $t6, 0x45c($a0)

/* B3EAD4 800C7934 00857021 */  addu  $t6, $a0, $a1
/* B3EAD8 800C7938 A1C602B2 */  sb    $a2, 0x2b2($t6)
/* B3EADC 800C793C 240F00F0 */  li    $t7, 240
/* B3EAE0 800C7940 03E00008 */  jr    $ra
/* B3EAE4 800C7944 A08F045D */   sb    $t7, 0x45d($a0)

glabel func_800C7948
/* B3EAE8 800C7948 90AE0000 */  lbu   $t6, ($a1)
/* B3EAEC 800C794C 240800F0 */  li    $t0, 240
/* B3EAF0 800C7950 A08E02B2 */  sb    $t6, 0x2b2($a0)
/* B3EAF4 800C7954 90AF0001 */  lbu   $t7, 1($a1)
/* B3EAF8 800C7958 A08F02B3 */  sb    $t7, 0x2b3($a0)
/* B3EAFC 800C795C 90B80002 */  lbu   $t8, 2($a1)
/* B3EB00 800C7960 A09802B4 */  sb    $t8, 0x2b4($a0)
/* B3EB04 800C7964 90B90003 */  lbu   $t9, 3($a1)
/* B3EB08 800C7968 A09902B5 */  sb    $t9, 0x2b5($a0)
/* B3EB0C 800C796C 03E00008 */  jr    $ra
/* B3EB10 800C7970 A088045D */   sb    $t0, 0x45d($a0)

glabel func_800C7974
/* B3EB14 800C7974 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B3EB18 800C7978 AFBF002C */  sw    $ra, 0x2c($sp)
/* B3EB1C 800C797C AFB40028 */  sw    $s4, 0x28($sp)
/* B3EB20 800C7980 0080A025 */  move  $s4, $a0
/* B3EB24 800C7984 AFB30024 */  sw    $s3, 0x24($sp)
/* B3EB28 800C7988 AFB20020 */  sw    $s2, 0x20($sp)
/* B3EB2C 800C798C AFB1001C */  sw    $s1, 0x1c($sp)
/* B3EB30 800C7990 0C031CEF */  jal   func_800C73BC
/* B3EB34 800C7994 AFB00018 */   sw    $s0, 0x18($sp)
/* B3EB38 800C7998 928E02A9 */  lbu   $t6, 0x2a9($s4)
/* B3EB3C 800C799C 26900230 */  addiu $s0, $s4, 0x230
/* B3EB40 800C79A0 26930290 */  addiu $s3, $s4, 0x290
/* B3EB44 800C79A4 19C00091 */  blez  $t6, .L800C7BEC
/* B3EB48 800C79A8 00009025 */   move  $s2, $zero
.L800C79AC:
/* B3EB4C 800C79AC 8A180000 */  lwl   $t8, ($s0)
/* B3EB50 800C79B0 9A180003 */  lwr   $t8, 3($s0)
/* B3EB54 800C79B4 26030006 */  addiu $v1, $s0, 6
/* B3EB58 800C79B8 24010004 */  li    $at, 4
/* B3EB5C 800C79BC A8780000 */  swl   $t8, ($v1)
/* B3EB60 800C79C0 B8780003 */  swr   $t8, 3($v1)
/* B3EB64 800C79C4 96180004 */  lhu   $t8, 4($s0)
/* B3EB68 800C79C8 A4780004 */  sh    $t8, 4($v1)
/* B3EB6C 800C79CC 92620004 */  lbu   $v0, 4($s3)
/* B3EB70 800C79D0 50400008 */  beql  $v0, $zero, .L800C79F4
/* B3EB74 800C79D4 8A680000 */   lwl   $t0, ($s3)
/* B3EB78 800C79D8 1041001F */  beq   $v0, $at, .L800C7A58
/* B3EB7C 800C79DC 24010008 */   li    $at, 8
/* B3EB80 800C79E0 1041003D */  beq   $v0, $at, .L800C7AD8
/* B3EB84 800C79E4 3C048014 */   lui   $a0, %hi(D_80145BB4) # $a0, 0x8014
/* B3EB88 800C79E8 10000056 */  b     .L800C7B44
/* B3EB8C 800C79EC 24845BB4 */   addiu $a0, %lo(D_80145BB4) # addiu $a0, $a0, 0x5bb4
/* B3EB90 800C79F0 8A680000 */  lwl   $t0, ($s3)
.L800C79F4:
/* B3EB94 800C79F4 9A680003 */  lwr   $t0, 3($s3)
/* B3EB98 800C79F8 02921021 */  addu  $v0, $s4, $s2
/* B3EB9C 800C79FC 3C048014 */  lui   $a0, %hi(D_80145AF0) # $a0, 0x8014
/* B3EBA0 800C7A00 AA080000 */  swl   $t0, ($s0)
/* B3EBA4 800C7A04 BA080003 */  swr   $t0, 3($s0)
/* B3EBA8 800C7A08 96680004 */  lhu   $t0, 4($s3)
/* B3EBAC 800C7A0C 240A0001 */  li    $t2, 1
/* B3EBB0 800C7A10 24845AF0 */  addiu $a0, %lo(D_80145AF0) # addiu $a0, $a0, 0x5af0
/* B3EBB4 800C7A14 A6080004 */  sh    $t0, 4($s0)
/* B3EBB8 800C7A18 904902AA */  lbu   $t1, 0x2aa($v0)
/* B3EBBC 800C7A1C 1520000C */  bnez  $t1, .L800C7A50
/* B3EBC0 800C7A20 00000000 */   nop   
/* B3EBC4 800C7A24 0C00084C */  jal   DebugMessage
/* B3EBC8 800C7A28 A04A02AA */   sb    $t2, 0x2aa($v0)
/* B3EBCC 800C7A2C 3C048014 */  lui   $a0, %hi(D_80145AF8) # $a0, 0x8014
/* B3EBD0 800C7A30 3C068014 */  lui   $a2, %hi(D_80145B0C) # $a2, 0x8014
/* B3EBD4 800C7A34 24C65B0C */  addiu $a2, %lo(D_80145B0C) # addiu $a2, $a2, 0x5b0c
/* B3EBD8 800C7A38 24845AF8 */  addiu $a0, %lo(D_80145AF8) # addiu $a0, $a0, 0x5af8
/* B3EBDC 800C7A3C 0C00084C */  jal   DebugMessage
/* B3EBE0 800C7A40 26450001 */   addiu $a1, $s2, 1
/* B3EBE4 800C7A44 3C048014 */  lui   $a0, %hi(D_80145B1C) # $a0, 0x8014
/* B3EBE8 800C7A48 0C00084C */  jal   DebugMessage
/* B3EBEC 800C7A4C 24845B1C */   addiu $a0, %lo(D_80145B1C) # addiu $a0, $a0, 0x5b1c
.L800C7A50:
/* B3EBF0 800C7A50 10000047 */  b     .L800C7B70
/* B3EBF4 800C7A54 26510001 */   addiu $s1, $s2, 1
.L800C7A58:
/* B3EBF8 800C7A58 886C0000 */  lwl   $t4, ($v1)
/* B3EBFC 800C7A5C 986C0003 */  lwr   $t4, 3($v1)
/* B3EC00 800C7A60 02921021 */  addu  $v0, $s4, $s2
/* B3EC04 800C7A64 3C048014 */  lui   $a0, %hi(D_80145B20) # $a0, 0x8014
/* B3EC08 800C7A68 AA0C0000 */  swl   $t4, ($s0)
/* B3EC0C 800C7A6C BA0C0003 */  swr   $t4, 3($s0)
/* B3EC10 800C7A70 946C0004 */  lhu   $t4, 4($v1)
/* B3EC14 800C7A74 24845B20 */  addiu $a0, %lo(D_80145B20) # addiu $a0, $a0, 0x5b20
/* B3EC18 800C7A78 2405017C */  li    $a1, 380
/* B3EC1C 800C7A7C A60C0004 */  sh    $t4, 4($s0)
/* B3EC20 800C7A80 0C000B84 */  jal   DebugMessageWithThreadId
/* B3EC24 800C7A84 AFA20034 */   sw    $v0, 0x34($sp)
/* B3EC28 800C7A88 8FA20034 */  lw    $v0, 0x34($sp)
/* B3EC2C 800C7A8C 3C048014 */  lui   $a0, %hi(D_80145B2C) # $a0, 0x8014
/* B3EC30 800C7A90 24845B2C */  addiu $a0, %lo(D_80145B2C) # addiu $a0, $a0, 0x5b2c
/* B3EC34 800C7A94 0C00084C */  jal   DebugMessage
/* B3EC38 800C7A98 904502AA */   lbu   $a1, 0x2aa($v0)
/* B3EC3C 800C7A9C 3C048014 */  lui   $a0, %hi(D_80145B48) # $a0, 0x8014
/* B3EC40 800C7AA0 0C00084C */  jal   DebugMessage
/* B3EC44 800C7AA4 24845B48 */   addiu $a0, %lo(D_80145B48) # addiu $a0, $a0, 0x5b48
/* B3EC48 800C7AA8 3C048014 */  lui   $a0, %hi(D_80145B50) # $a0, 0x8014
/* B3EC4C 800C7AAC 26510001 */  addiu $s1, $s2, 1
/* B3EC50 800C7AB0 3C068014 */  lui   $a2, %hi(D_80145B64) # $a2, 0x8014
/* B3EC54 800C7AB4 24C65B64 */  addiu $a2, %lo(D_80145B64) # addiu $a2, $a2, 0x5b64
/* B3EC58 800C7AB8 02202825 */  move  $a1, $s1
/* B3EC5C 800C7ABC 0C00084C */  jal   DebugMessage
/* B3EC60 800C7AC0 24845B50 */   addiu $a0, %lo(D_80145B50) # addiu $a0, $a0, 0x5b50
/* B3EC64 800C7AC4 3C048014 */  lui   $a0, %hi(D_80145B80) # $a0, 0x8014
/* B3EC68 800C7AC8 0C00084C */  jal   DebugMessage
/* B3EC6C 800C7ACC 24845B80 */   addiu $a0, %lo(D_80145B80) # addiu $a0, $a0, 0x5b80
/* B3EC70 800C7AD0 10000028 */  b     .L800C7B74
/* B3EC74 800C7AD4 96030006 */   lhu   $v1, 6($s0)
.L800C7AD8:
/* B3EC78 800C7AD8 A6000000 */  sh    $zero, ($s0)
/* B3EC7C 800C7ADC A2000002 */  sb    $zero, 2($s0)
/* B3EC80 800C7AE0 A2000003 */  sb    $zero, 3($s0)
/* B3EC84 800C7AE4 926D0004 */  lbu   $t5, 4($s3)
/* B3EC88 800C7AE8 02921021 */  addu  $v0, $s4, $s2
/* B3EC8C 800C7AEC 3C048014 */  lui   $a0, %hi(D_80145B84) # $a0, 0x8014
/* B3EC90 800C7AF0 A20D0004 */  sb    $t5, 4($s0)
/* B3EC94 800C7AF4 904E02AA */  lbu   $t6, 0x2aa($v0)
/* B3EC98 800C7AF8 240F00FF */  li    $t7, 255
/* B3EC9C 800C7AFC 24845B84 */  addiu $a0, %lo(D_80145B84) # addiu $a0, $a0, 0x5b84
/* B3ECA0 800C7B00 11C0000E */  beqz  $t6, .L800C7B3C
/* B3ECA4 800C7B04 00000000 */   nop   
/* B3ECA8 800C7B08 A04002AA */  sb    $zero, 0x2aa($v0)
/* B3ECAC 800C7B0C A04002AE */  sb    $zero, 0x2ae($v0)
/* B3ECB0 800C7B10 0C00084C */  jal   DebugMessage
/* B3ECB4 800C7B14 A04F02B6 */   sb    $t7, 0x2b6($v0)
/* B3ECB8 800C7B18 3C048014 */  lui   $a0, %hi(D_80145B8C) # $a0, 0x8014
/* B3ECBC 800C7B1C 3C068014 */  lui   $a2, %hi(D_80145BA0) # $a2, 0x8014
/* B3ECC0 800C7B20 24C65BA0 */  addiu $a2, %lo(D_80145BA0) # addiu $a2, $a2, 0x5ba0
/* B3ECC4 800C7B24 24845B8C */  addiu $a0, %lo(D_80145B8C) # addiu $a0, $a0, 0x5b8c
/* B3ECC8 800C7B28 0C00084C */  jal   DebugMessage
/* B3ECCC 800C7B2C 26450001 */   addiu $a1, $s2, 1
/* B3ECD0 800C7B30 3C048014 */  lui   $a0, %hi(D_80145BB0) # $a0, 0x8014
/* B3ECD4 800C7B34 0C00084C */  jal   DebugMessage
/* B3ECD8 800C7B38 24845BB0 */   addiu $a0, %lo(D_80145BB0) # addiu $a0, $a0, 0x5bb0
.L800C7B3C:
/* B3ECDC 800C7B3C 1000000C */  b     .L800C7B70
/* B3ECE0 800C7B40 26510001 */   addiu $s1, $s2, 1
.L800C7B44:
/* B3ECE4 800C7B44 0C000B84 */  jal   DebugMessageWithThreadId
/* B3ECE8 800C7B48 2405018C */   li    $a1, 396
/* B3ECEC 800C7B4C 3C048014 */  lui   $a0, %hi(D_80145BC0) # $a0, 0x8014
/* B3ECF0 800C7B50 24845BC0 */  addiu $a0, %lo(D_80145BC0) # addiu $a0, $a0, 0x5bc0
/* B3ECF4 800C7B54 0C00084C */  jal   DebugMessage
/* B3ECF8 800C7B58 92650004 */   lbu   $a1, 4($s3)
/* B3ECFC 800C7B5C 3C048014 */  lui   $a0, %hi(D_80145BD8) # $a0, 0x8014
/* B3ED00 800C7B60 24845BD8 */  addiu $a0, %lo(D_80145BD8) # addiu $a0, $a0, 0x5bd8
/* B3ED04 800C7B64 0C0359C3 */  jal   func_800D670C
/* B3ED08 800C7B68 2405018D */   li    $a1, 397
/* B3ED0C 800C7B6C 26510001 */  addiu $s1, $s2, 1
.L800C7B70:
/* B3ED10 800C7B70 96030006 */  lhu   $v1, 6($s0)
.L800C7B74:
/* B3ED14 800C7B74 96050000 */  lhu   $a1, ($s0)
/* B3ED18 800C7B78 9618000C */  lhu   $t8, 0xc($s0)
/* B3ED1C 800C7B7C 960A0012 */  lhu   $t2, 0x12($s0)
/* B3ED20 800C7B80 00651026 */  xor   $v0, $v1, $a1
/* B3ED24 800C7B84 00436024 */  and   $t4, $v0, $v1
/* B3ED28 800C7B88 00454024 */  and   $t0, $v0, $a1
/* B3ED2C 800C7B8C 03084825 */  or    $t1, $t8, $t0
/* B3ED30 800C7B90 014C6825 */  or    $t5, $t2, $t4
/* B3ED34 800C7B94 A609000C */  sh    $t1, 0xc($s0)
/* B3ED38 800C7B98 A60D0012 */  sh    $t5, 0x12($s0)
/* B3ED3C 800C7B9C 0C03F31B */  jal   func_800FCC6C
/* B3ED40 800C7BA0 02002025 */   move  $a0, $s0
/* B3ED44 800C7BA4 820E0002 */  lb    $t6, 2($s0)
/* B3ED48 800C7BA8 820F0008 */  lb    $t7, 8($s0)
/* B3ED4C 800C7BAC 820A0003 */  lb    $t2, 3($s0)
/* B3ED50 800C7BB0 820C0009 */  lb    $t4, 9($s0)
/* B3ED54 800C7BB4 8209000E */  lb    $t1, 0xe($s0)
/* B3ED58 800C7BB8 8219000F */  lb    $t9, 0xf($s0)
/* B3ED5C 800C7BBC 01CF4023 */  subu  $t0, $t6, $t7
/* B3ED60 800C7BC0 014C7823 */  subu  $t7, $t2, $t4
/* B3ED64 800C7BC4 01285821 */  addu  $t3, $t1, $t0
/* B3ED68 800C7BC8 032FC021 */  addu  $t8, $t9, $t7
/* B3ED6C 800C7BCC A20B000E */  sb    $t3, 0xe($s0)
/* B3ED70 800C7BD0 A218000F */  sb    $t8, 0xf($s0)
/* B3ED74 800C7BD4 928902A9 */  lbu   $t1, 0x2a9($s4)
/* B3ED78 800C7BD8 02209025 */  move  $s2, $s1
/* B3ED7C 800C7BDC 26100018 */  addiu $s0, $s0, 0x18
/* B3ED80 800C7BE0 0229082A */  slt   $at, $s1, $t1
/* B3ED84 800C7BE4 1420FF71 */  bnez  $at, .L800C79AC
/* B3ED88 800C7BE8 26730006 */   addiu $s3, $s3, 6
.L800C7BEC:
/* B3ED8C 800C7BEC 0C031CF9 */  jal   func_800C73E4
/* B3ED90 800C7BF0 02802025 */   move  $a0, $s4
/* B3ED94 800C7BF4 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3ED98 800C7BF8 8FB00018 */  lw    $s0, 0x18($sp)
/* B3ED9C 800C7BFC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3EDA0 800C7C00 8FB20020 */  lw    $s2, 0x20($sp)
/* B3EDA4 800C7C04 8FB30024 */  lw    $s3, 0x24($sp)
/* B3EDA8 800C7C08 8FB40028 */  lw    $s4, 0x28($sp)
/* B3EDAC 800C7C0C 03E00008 */  jr    $ra
/* B3EDB0 800C7C10 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_800C7C14
/* B3EDB4 800C7C14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3EDB8 800C7C18 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3EDBC 800C7C1C AFB30020 */  sw    $s3, 0x20($sp)
/* B3EDC0 800C7C20 00809825 */  move  $s3, $a0
/* B3EDC4 800C7C24 AFB2001C */  sw    $s2, 0x1c($sp)
/* B3EDC8 800C7C28 AFB10018 */  sw    $s1, 0x18($sp)
/* B3EDCC 800C7C2C 0C031C94 */  jal   func_800C7250
/* B3EDD0 800C7C30 AFB00014 */   sw    $s0, 0x14($sp)
/* B3EDD4 800C7C34 00408825 */  move  $s1, $v0
/* B3EDD8 800C7C38 0C0403BC */  jal   func_80100EF0
/* B3EDDC 800C7C3C 00402025 */   move  $a0, $v0
/* B3EDE0 800C7C40 8E630460 */  lw    $v1, 0x460($s3)
/* B3EDE4 800C7C44 10600003 */  beqz  $v1, .L800C7C54
/* B3EDE8 800C7C48 02602025 */   move  $a0, $s3
/* B3EDEC 800C7C4C 0060F809 */  jalr  $v1
/* B3EDF0 800C7C50 8E650464 */  lw    $a1, 0x464($s3)
.L800C7C54:
/* B3EDF4 800C7C54 02202025 */  move  $a0, $s1
/* B3EDF8 800C7C58 00002825 */  move  $a1, $zero
/* B3EDFC 800C7C5C 0C000CA0 */  jal   osRecvMesg
/* B3EE00 800C7C60 24060001 */   li    $a2, 1
/* B3EE04 800C7C64 26700290 */  addiu $s0, $s3, 0x290
/* B3EE08 800C7C68 0C0403DD */  jal   func_80100F74
/* B3EE0C 800C7C6C 02002025 */   move  $a0, $s0
/* B3EE10 800C7C70 926E045E */  lbu   $t6, 0x45e($s3)
/* B3EE14 800C7C74 02002025 */  move  $a0, $s0
/* B3EE18 800C7C78 11C00003 */  beqz  $t6, .L800C7C88
/* B3EE1C 800C7C7C 00000000 */   nop   
/* B3EE20 800C7C80 0C001114 */  jal   bzero
/* B3EE24 800C7C84 24050018 */   li    $a1, 24
.L800C7C88:
/* B3EE28 800C7C88 0C031E5D */  jal   func_800C7974
/* B3EE2C 800C7C8C 02602025 */   move  $a0, $s3
/* B3EE30 800C7C90 0C040C84 */  jal   func_80103210
/* B3EE34 800C7C94 02202025 */   move  $a0, $s1
/* B3EE38 800C7C98 02202025 */  move  $a0, $s1
/* B3EE3C 800C7C9C 00002825 */  move  $a1, $zero
/* B3EE40 800C7CA0 0C000CA0 */  jal   osRecvMesg
/* B3EE44 800C7CA4 24060001 */   li    $a2, 1
/* B3EE48 800C7CA8 0C040CA3 */  jal   func_8010328C
/* B3EE4C 800C7CAC 02602025 */   move  $a0, $s3
/* B3EE50 800C7CB0 02602025 */  move  $a0, $s3
/* B3EE54 800C7CB4 0C031CBF */  jal   func_800C72FC
/* B3EE58 800C7CB8 02202825 */   move  $a1, $s1
/* B3EE5C 800C7CBC 00009025 */  move  $s2, $zero
/* B3EE60 800C7CC0 00008825 */  move  $s1, $zero
/* B3EE64 800C7CC4 02608025 */  move  $s0, $s3
.L800C7CC8:
/* B3EE68 800C7CC8 920F0003 */  lbu   $t7, 3($s0)
/* B3EE6C 800C7CCC 55E00014 */  bnezl $t7, .L800C7D20
/* B3EE70 800C7CD0 26310001 */   addiu $s1, $s1, 1
/* B3EE74 800C7CD4 96180000 */  lhu   $t8, ($s0)
/* B3EE78 800C7CD8 24010005 */  li    $at, 5
/* B3EE7C 800C7CDC 3C048014 */  lui   $a0, %hi(D_80145BE4) # $a0, 0x8014
/* B3EE80 800C7CE0 17010005 */  bne   $t8, $at, .L800C7CF8
/* B3EE84 800C7CE4 24845BE4 */   addiu $a0, %lo(D_80145BE4) # addiu $a0, $a0, 0x5be4
/* B3EE88 800C7CE8 24190001 */  li    $t9, 1
/* B3EE8C 800C7CEC 02394004 */  sllv  $t0, $t9, $s1
/* B3EE90 800C7CF0 1000000A */  b     .L800C7D1C
/* B3EE94 800C7CF4 02489025 */   or    $s2, $s2, $t0
.L800C7CF8:
/* B3EE98 800C7CF8 0C000B84 */  jal   DebugMessageWithThreadId
/* B3EE9C 800C7CFC 240501CA */   li    $a1, 458
/* B3EEA0 800C7D00 3C048014 */  lui   $a0, %hi(D_80145BF0) # $a0, 0x8014
/* B3EEA4 800C7D04 24845BF0 */  addiu $a0, %lo(D_80145BF0) # addiu $a0, $a0, 0x5bf0
/* B3EEA8 800C7D08 0C00084C */  jal   DebugMessage
/* B3EEAC 800C7D0C 96050000 */   lhu   $a1, ($s0)
/* B3EEB0 800C7D10 3C048014 */  lui   $a0, %hi(D_80145C10) # $a0, 0x8014
/* B3EEB4 800C7D14 0C00084C */  jal   DebugMessage
/* B3EEB8 800C7D18 24845C10 */   addiu $a0, %lo(D_80145C10) # addiu $a0, $a0, 0x5c10
.L800C7D1C:
/* B3EEBC 800C7D1C 26310001 */  addiu $s1, $s1, 1
.L800C7D20:
/* B3EEC0 800C7D20 24010004 */  li    $at, 4
/* B3EEC4 800C7D24 1621FFE8 */  bne   $s1, $at, .L800C7CC8
/* B3EEC8 800C7D28 26100004 */   addiu $s0, $s0, 4
/* B3EECC 800C7D2C A27202A8 */  sb    $s2, 0x2a8($s3)
/* B3EED0 800C7D30 3C098017 */  lui   $t1, %hi(D_8016B5F5) # $t1, 0x8017
/* B3EED4 800C7D34 9129B5F5 */  lbu   $t1, %lo(D_8016B5F5)($t1)
/* B3EED8 800C7D38 51200006 */  beql  $t1, $zero, .L800C7D54
/* B3EEDC 800C7D3C 926A045C */   lbu   $t2, 0x45c($s3)
/* B3EEE0 800C7D40 0C031E06 */  jal   func_800C7818
/* B3EEE4 800C7D44 02602025 */   move  $a0, $s3
/* B3EEE8 800C7D48 1000001B */  b     .L800C7DB8
/* B3EEEC 800C7D4C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EEF0 800C7D50 926A045C */  lbu   $t2, 0x45c($s3)
.L800C7D54:
/* B3EEF4 800C7D54 59400009 */  blezl $t2, .L800C7D7C
/* B3EEF8 800C7D58 926D045D */   lbu   $t5, 0x45d($s3)
/* B3EEFC 800C7D5C 926B045C */  lbu   $t3, 0x45c($s3)
/* B3EF00 800C7D60 02602025 */  move  $a0, $s3
/* B3EF04 800C7D64 256CFFFF */  addiu $t4, $t3, -1
/* B3EF08 800C7D68 0C031E06 */  jal   func_800C7818
/* B3EF0C 800C7D6C A26C045C */   sb    $t4, 0x45c($s3)
/* B3EF10 800C7D70 10000011 */  b     .L800C7DB8
/* B3EF14 800C7D74 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EF18 800C7D78 926D045D */  lbu   $t5, 0x45d($s3)
.L800C7D7C:
/* B3EF1C 800C7D7C 55A00006 */  bnezl $t5, .L800C7D98
/* B3EF20 800C7D80 926E045E */   lbu   $t6, 0x45e($s3)
/* B3EF24 800C7D84 0C031E06 */  jal   func_800C7818
/* B3EF28 800C7D88 02602025 */   move  $a0, $s3
/* B3EF2C 800C7D8C 1000000A */  b     .L800C7DB8
/* B3EF30 800C7D90 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EF34 800C7D94 926E045E */  lbu   $t6, 0x45e($s3)
.L800C7D98:
/* B3EF38 800C7D98 55C00007 */  bnezl $t6, .L800C7DB8
/* B3EF3C 800C7D9C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3EF40 800C7DA0 0C031D03 */  jal   func_800C740C
/* B3EF44 800C7DA4 02602025 */   move  $a0, $s3
/* B3EF48 800C7DA8 926F045D */  lbu   $t7, 0x45d($s3)
/* B3EF4C 800C7DAC 25F8FFFF */  addiu $t8, $t7, -1
/* B3EF50 800C7DB0 A278045D */  sb    $t8, 0x45d($s3)
/* B3EF54 800C7DB4 8FBF0024 */  lw    $ra, 0x24($sp)
.L800C7DB8:
/* B3EF58 800C7DB8 8FB00014 */  lw    $s0, 0x14($sp)
/* B3EF5C 800C7DBC 8FB10018 */  lw    $s1, 0x18($sp)
/* B3EF60 800C7DC0 8FB2001C */  lw    $s2, 0x1c($sp)
/* B3EF64 800C7DC4 8FB30020 */  lw    $s3, 0x20($sp)
/* B3EF68 800C7DC8 03E00008 */  jr    $ra
/* B3EF6C 800C7DCC 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800C7DD0
/* B3EF70 800C7DD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3EF74 800C7DD4 AFA40018 */  sw    $a0, 0x18($sp)
/* B3EF78 800C7DD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3EF7C 800C7DDC 3C048014 */  lui   $a0, %hi(D_80145C40) # $a0, 0x8014
/* B3EF80 800C7DE0 0C00084C */  jal   DebugMessage
/* B3EF84 800C7DE4 24845C40 */   addiu $a0, %lo(D_80145C40) # addiu $a0, $a0, 0x5c40
/* B3EF88 800C7DE8 8FA40018 */  lw    $a0, 0x18($sp)
/* B3EF8C 800C7DEC 240E0001 */  li    $t6, 1
/* B3EF90 800C7DF0 0C031E4A */  jal   func_800C7928
/* B3EF94 800C7DF4 A08E045E */   sb    $t6, 0x45e($a0)
/* B3EF98 800C7DF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3EF9C 800C7DFC 27BD0018 */  addiu $sp, $sp, 0x18
/* B3EFA0 800C7E00 03E00008 */  jr    $ra
/* B3EFA4 800C7E04 00000000 */   nop   

glabel func_800C7E08
/* B3EFA8 800C7E08 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3EFAC 800C7E0C AFBF002C */  sw    $ra, 0x2c($sp)
/* B3EFB0 800C7E10 AFB40028 */  sw    $s4, 0x28($sp)
/* B3EFB4 800C7E14 AFB30024 */  sw    $s3, 0x24($sp)
/* B3EFB8 800C7E18 00A09825 */  move  $s3, $a1
/* B3EFBC 800C7E1C 00C0A025 */  move  $s4, $a2
/* B3EFC0 800C7E20 AFB20020 */  sw    $s2, 0x20($sp)
/* B3EFC4 800C7E24 AFB1001C */  sw    $s1, 0x1c($sp)
/* B3EFC8 800C7E28 AFB00018 */  sw    $s0, 0x18($sp)
/* B3EFCC 800C7E2C 0C031CEF */  jal   func_800C73BC
/* B3EFD0 800C7E30 AFA40030 */   sw    $a0, 0x30($sp)
/* B3EFD4 800C7E34 8FB10030 */  lw    $s1, 0x30($sp)
/* B3EFD8 800C7E38 02608025 */  move  $s0, $s3
/* B3EFDC 800C7E3C 24130004 */  li    $s3, 4
/* B3EFE0 800C7E40 00009025 */  move  $s2, $zero
/* B3EFE4 800C7E44 26310230 */  addiu $s1, $s1, 0x230
.L800C7E48:
/* B3EFE8 800C7E48 5280001F */  beql  $s4, $zero, .L800C7EC8
/* B3EFEC 800C7E4C 8A190000 */   lwl   $t9, ($s0)
/* B3EFF0 800C7E50 8A2F0000 */  lwl   $t7, ($s1)
/* B3EFF4 800C7E54 9A2F0003 */  lwr   $t7, 3($s1)
/* B3EFF8 800C7E58 AA0F0000 */  swl   $t7, ($s0)
/* B3EFFC 800C7E5C BA0F0003 */  swr   $t7, 3($s0)
/* B3F000 800C7E60 8A2E0004 */  lwl   $t6, 4($s1)
/* B3F004 800C7E64 9A2E0007 */  lwr   $t6, 7($s1)
/* B3F008 800C7E68 AA0E0004 */  swl   $t6, 4($s0)
/* B3F00C 800C7E6C BA0E0007 */  swr   $t6, 7($s0)
/* B3F010 800C7E70 8A2F0008 */  lwl   $t7, 8($s1)
/* B3F014 800C7E74 9A2F000B */  lwr   $t7, 0xb($s1)
/* B3F018 800C7E78 AA0F0008 */  swl   $t7, 8($s0)
/* B3F01C 800C7E7C BA0F000B */  swr   $t7, 0xb($s0)
/* B3F020 800C7E80 8A2E000C */  lwl   $t6, 0xc($s1)
/* B3F024 800C7E84 9A2E000F */  lwr   $t6, 0xf($s1)
/* B3F028 800C7E88 AA0E000C */  swl   $t6, 0xc($s0)
/* B3F02C 800C7E8C BA0E000F */  swr   $t6, 0xf($s0)
/* B3F030 800C7E90 8A2F0010 */  lwl   $t7, 0x10($s1)
/* B3F034 800C7E94 9A2F0013 */  lwr   $t7, 0x13($s1)
/* B3F038 800C7E98 AA0F0010 */  swl   $t7, 0x10($s0)
/* B3F03C 800C7E9C BA0F0013 */  swr   $t7, 0x13($s0)
/* B3F040 800C7EA0 8A2E0014 */  lwl   $t6, 0x14($s1)
/* B3F044 800C7EA4 9A2E0017 */  lwr   $t6, 0x17($s1)
/* B3F048 800C7EA8 AA0E0014 */  swl   $t6, 0x14($s0)
/* B3F04C 800C7EAC BA0E0017 */  swr   $t6, 0x17($s0)
/* B3F050 800C7EB0 A620000C */  sh    $zero, 0xc($s1)
/* B3F054 800C7EB4 A220000E */  sb    $zero, 0xe($s1)
/* B3F058 800C7EB8 A220000F */  sb    $zero, 0xf($s1)
/* B3F05C 800C7EBC 10000022 */  b     .L800C7F48
/* B3F060 800C7EC0 A6200012 */   sh    $zero, 0x12($s1)
/* B3F064 800C7EC4 8A190000 */  lwl   $t9, ($s0)
.L800C7EC8:
/* B3F068 800C7EC8 9A190003 */  lwr   $t9, 3($s0)
/* B3F06C 800C7ECC 02002025 */  move  $a0, $s0
/* B3F070 800C7ED0 AA190006 */  swl   $t9, 6($s0)
/* B3F074 800C7ED4 BA190009 */  swr   $t9, 9($s0)
/* B3F078 800C7ED8 96190004 */  lhu   $t9, 4($s0)
/* B3F07C 800C7EDC 96030006 */  lhu   $v1, 6($s0)
/* B3F080 800C7EE0 A619000A */  sh    $t9, 0xa($s0)
/* B3F084 800C7EE4 8A290000 */  lwl   $t1, ($s1)
/* B3F088 800C7EE8 9A290003 */  lwr   $t1, 3($s1)
/* B3F08C 800C7EEC AA090000 */  swl   $t1, ($s0)
/* B3F090 800C7EF0 BA090003 */  swr   $t1, 3($s0)
/* B3F094 800C7EF4 96050000 */  lhu   $a1, ($s0)
/* B3F098 800C7EF8 96290004 */  lhu   $t1, 4($s1)
/* B3F09C 800C7EFC 00651026 */  xor   $v0, $v1, $a1
/* B3F0A0 800C7F00 00625824 */  and   $t3, $v1, $v0
/* B3F0A4 800C7F04 00A25024 */  and   $t2, $a1, $v0
/* B3F0A8 800C7F08 A60A000C */  sh    $t2, 0xc($s0)
/* B3F0AC 800C7F0C A60B0012 */  sh    $t3, 0x12($s0)
/* B3F0B0 800C7F10 0C03F31B */  jal   func_800FCC6C
/* B3F0B4 800C7F14 A6090004 */   sh    $t1, 4($s0)
/* B3F0B8 800C7F18 820C0002 */  lb    $t4, 2($s0)
/* B3F0BC 800C7F1C 820D0008 */  lb    $t5, 8($s0)
/* B3F0C0 800C7F20 82090003 */  lb    $t1, 3($s0)
/* B3F0C4 800C7F24 820A0009 */  lb    $t2, 9($s0)
/* B3F0C8 800C7F28 8219000E */  lb    $t9, 0xe($s0)
/* B3F0CC 800C7F2C 820E000F */  lb    $t6, 0xf($s0)
/* B3F0D0 800C7F30 018DC023 */  subu  $t8, $t4, $t5
/* B3F0D4 800C7F34 012A6823 */  subu  $t5, $t1, $t2
/* B3F0D8 800C7F38 03384021 */  addu  $t0, $t9, $t8
/* B3F0DC 800C7F3C 01CD7821 */  addu  $t7, $t6, $t5
/* B3F0E0 800C7F40 A208000E */  sb    $t0, 0xe($s0)
/* B3F0E4 800C7F44 A20F000F */  sb    $t7, 0xf($s0)
.L800C7F48:
/* B3F0E8 800C7F48 26520001 */  addiu $s2, $s2, 1
/* B3F0EC 800C7F4C 26310018 */  addiu $s1, $s1, 0x18
/* B3F0F0 800C7F50 1653FFBD */  bne   $s2, $s3, .L800C7E48
/* B3F0F4 800C7F54 26100018 */   addiu $s0, $s0, 0x18
/* B3F0F8 800C7F58 0C031CF9 */  jal   func_800C73E4
/* B3F0FC 800C7F5C 8FA40030 */   lw    $a0, 0x30($sp)
/* B3F100 800C7F60 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3F104 800C7F64 8FB00018 */  lw    $s0, 0x18($sp)
/* B3F108 800C7F68 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3F10C 800C7F6C 8FB20020 */  lw    $s2, 0x20($sp)
/* B3F110 800C7F70 8FB30024 */  lw    $s3, 0x24($sp)
/* B3F114 800C7F74 8FB40028 */  lw    $s4, 0x28($sp)
/* B3F118 800C7F78 03E00008 */  jr    $ra
/* B3F11C 800C7F7C 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800C7F80
/* B3F120 800C7F80 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B3F124 800C7F84 AFB1001C */  sw    $s1, 0x1c($sp)
/* B3F128 800C7F88 00808825 */  move  $s1, $a0
/* B3F12C 800C7F8C AFBF0034 */  sw    $ra, 0x34($sp)
/* B3F130 800C7F90 3C048014 */  lui   $a0, %hi(D_80145C58) # $a0, 0x8014
/* B3F134 800C7F94 AFB60030 */  sw    $s6, 0x30($sp)
/* B3F138 800C7F98 AFB5002C */  sw    $s5, 0x2c($sp)
/* B3F13C 800C7F9C AFB40028 */  sw    $s4, 0x28($sp)
/* B3F140 800C7FA0 AFB30024 */  sw    $s3, 0x24($sp)
/* B3F144 800C7FA4 AFB20020 */  sw    $s2, 0x20($sp)
/* B3F148 800C7FA8 AFB00018 */  sw    $s0, 0x18($sp)
/* B3F14C 800C7FAC AFA0005C */  sw    $zero, 0x5c($sp)
/* B3F150 800C7FB0 0C00084C */  jal   DebugMessage
/* B3F154 800C7FB4 24845C58 */   addiu $a0, %lo(D_80145C58) # addiu $a0, $a0, 0x5c58
/* B3F158 800C7FB8 3C108013 */  lui   $s0, %hi(D_8012D280) # $s0, 0x8013
/* B3F15C 800C7FBC 00009025 */  move  $s2, $zero
/* B3F160 800C7FC0 2610D280 */  addiu $s0, %lo(D_8012D280) # addiu $s0, $s0, -0x2d80
/* B3F164 800C7FC4 26330058 */  addiu $s3, $s1, 0x58
/* B3F168 800C7FC8 24160004 */  li    $s6, 4
/* B3F16C 800C7FCC 24150003 */  li    $s5, 3
/* B3F170 800C7FD0 24140001 */  li    $s4, 1
/* B3F174 800C7FD4 8E0E0000 */  lw    $t6, ($s0)
.L800C7FD8:
/* B3F178 800C7FD8 29C10003 */  slti  $at, $t6, 3
/* B3F17C 800C7FDC 54200016 */  bnezl $at, .L800C8038
/* B3F180 800C7FE0 02602025 */   move  $a0, $s3
/* B3F184 800C7FE4 8E2F0060 */  lw    $t7, 0x60($s1)
/* B3F188 800C7FE8 55E00013 */  bnezl $t7, .L800C8038
/* B3F18C 800C7FEC 02602025 */   move  $a0, $s3
/* B3F190 800C7FF0 0C001A78 */  jal   osGetTime
/* B3F194 800C7FF4 00000000 */   nop   
/* B3F198 800C7FF8 00402025 */  move  $a0, $v0
/* B3F19C 800C7FFC 00602825 */  move  $a1, $v1
/* B3F1A0 800C8000 24060000 */  li    $a2, 0
/* B3F1A4 800C8004 0C000E1E */  jal   __ll_mul
/* B3F1A8 800C8008 24070040 */   li    $a3, 64
/* B3F1AC 800C800C 00402025 */  move  $a0, $v0
/* B3F1B0 800C8010 00602825 */  move  $a1, $v1
/* B3F1B4 800C8014 24060000 */  li    $a2, 0
/* B3F1B8 800C8018 0C000DDE */  jal   __ull_div
/* B3F1BC 800C801C 24070BB8 */   li    $a3, 3000
/* B3F1C0 800C8020 3C048014 */  lui   $a0, %hi(D_80145C78) # $a0, 0x8014
/* B3F1C4 800C8024 24845C78 */  addiu $a0, %lo(D_80145C78) # addiu $a0, $a0, 0x5c78
/* B3F1C8 800C8028 00403025 */  move  $a2, $v0
/* B3F1CC 800C802C 0C00084C */  jal   DebugMessage
/* B3F1D0 800C8030 00603825 */   move  $a3, $v1
/* B3F1D4 800C8034 02602025 */  move  $a0, $s3
.L800C8038:
/* B3F1D8 800C8038 27A5005C */  addiu $a1, $sp, 0x5c
/* B3F1DC 800C803C 0C000CA0 */  jal   osRecvMesg
/* B3F1E0 800C8040 02803025 */   move  $a2, $s4
/* B3F1E4 800C8044 3C048014 */  lui   $a0, %hi(D_80145CA0) # $a0, 0x8014
/* B3F1E8 800C8048 3C068014 */  lui   $a2, %hi(D_80145CA4) # $a2, 0x8014
/* B3F1EC 800C804C 24C65CA4 */  addiu $a2, %lo(D_80145CA4) # addiu $a2, $a2, 0x5ca4
/* B3F1F0 800C8050 24845CA0 */  addiu $a0, %lo(D_80145CA0) # addiu $a0, $a0, 0x5ca0
/* B3F1F4 800C8054 8FA5005C */  lw    $a1, 0x5c($sp)
/* B3F1F8 800C8058 0C000B58 */  jal   NullPointerCheck
/* B3F1FC 800C805C 24070233 */   li    $a3, 563
/* B3F200 800C8060 8FB8005C */  lw    $t8, 0x5c($sp)
/* B3F204 800C8064 87020000 */  lh    $v0, ($t8)
/* B3F208 800C8068 50540008 */  beql  $v0, $s4, .L800C808C
/* B3F20C 800C806C 8E190000 */   lw    $t9, ($s0)
/* B3F210 800C8070 50550038 */  beql  $v0, $s5, .L800C8154
/* B3F214 800C8074 02809025 */   move  $s2, $s4
/* B3F218 800C8078 10560031 */  beq   $v0, $s6, .L800C8140
/* B3F21C 800C807C 00000000 */   nop   
/* B3F220 800C8080 10000034 */  b     .L800C8154
/* B3F224 800C8084 00000000 */   nop   
/* B3F228 800C8088 8E190000 */  lw    $t9, ($s0)
.L800C808C:
/* B3F22C 800C808C 2B210003 */  slti  $at, $t9, 3
/* B3F230 800C8090 14200012 */  bnez  $at, .L800C80DC
/* B3F234 800C8094 00000000 */   nop   
/* B3F238 800C8098 0C001A78 */  jal   osGetTime
/* B3F23C 800C809C 00000000 */   nop   
/* B3F240 800C80A0 00402025 */  move  $a0, $v0
/* B3F244 800C80A4 00602825 */  move  $a1, $v1
/* B3F248 800C80A8 24060000 */  li    $a2, 0
/* B3F24C 800C80AC 0C000E1E */  jal   __ll_mul
/* B3F250 800C80B0 24070040 */   li    $a3, 64
/* B3F254 800C80B4 00402025 */  move  $a0, $v0
/* B3F258 800C80B8 00602825 */  move  $a1, $v1
/* B3F25C 800C80BC 24060000 */  li    $a2, 0
/* B3F260 800C80C0 0C000DDE */  jal   __ull_div
/* B3F264 800C80C4 24070BB8 */   li    $a3, 3000
/* B3F268 800C80C8 3C048014 */  lui   $a0, %hi(D_80145CB0) # $a0, 0x8014
/* B3F26C 800C80CC 24845CB0 */  addiu $a0, %lo(D_80145CB0) # addiu $a0, $a0, 0x5cb0
/* B3F270 800C80D0 00403025 */  move  $a2, $v0
/* B3F274 800C80D4 0C00084C */  jal   DebugMessage
/* B3F278 800C80D8 00603825 */   move  $a3, $v1
.L800C80DC:
/* B3F27C 800C80DC 0C031F05 */  jal   func_800C7C14
/* B3F280 800C80E0 02202025 */   move  $a0, $s1
/* B3F284 800C80E4 8E080000 */  lw    $t0, ($s0)
/* B3F288 800C80E8 29010003 */  slti  $at, $t0, 3
/* B3F28C 800C80EC 14200019 */  bnez  $at, .L800C8154
/* B3F290 800C80F0 00000000 */   nop   
/* B3F294 800C80F4 0C001A78 */  jal   osGetTime
/* B3F298 800C80F8 00000000 */   nop   
/* B3F29C 800C80FC 00402025 */  move  $a0, $v0
/* B3F2A0 800C8100 00602825 */  move  $a1, $v1
/* B3F2A4 800C8104 24060000 */  li    $a2, 0
/* B3F2A8 800C8108 0C000E1E */  jal   __ll_mul
/* B3F2AC 800C810C 24070040 */   li    $a3, 64
/* B3F2B0 800C8110 00402025 */  move  $a0, $v0
/* B3F2B4 800C8114 00602825 */  move  $a1, $v1
/* B3F2B8 800C8118 24060000 */  li    $a2, 0
/* B3F2BC 800C811C 0C000DDE */  jal   __ull_div
/* B3F2C0 800C8120 24070BB8 */   li    $a3, 3000
/* B3F2C4 800C8124 3C048014 */  lui   $a0, %hi(D_80145CD4) # $a0, 0x8014
/* B3F2C8 800C8128 24845CD4 */  addiu $a0, %lo(D_80145CD4) # addiu $a0, $a0, 0x5cd4
/* B3F2CC 800C812C 00403025 */  move  $a2, $v0
/* B3F2D0 800C8130 0C00084C */  jal   DebugMessage
/* B3F2D4 800C8134 00603825 */   move  $a3, $v1
/* B3F2D8 800C8138 10000006 */  b     .L800C8154
/* B3F2DC 800C813C 00000000 */   nop   
.L800C8140:
/* B3F2E0 800C8140 0C031F74 */  jal   func_800C7DD0
/* B3F2E4 800C8144 02202025 */   move  $a0, $s1
/* B3F2E8 800C8148 10000002 */  b     .L800C8154
/* B3F2EC 800C814C 00000000 */   nop   
/* B3F2F0 800C8150 02809025 */  move  $s2, $s4
.L800C8154:
/* B3F2F4 800C8154 5240FFA0 */  beql  $s2, $zero, .L800C7FD8
/* B3F2F8 800C8158 8E0E0000 */   lw    $t6, ($s0)
/* B3F2FC 800C815C 8E240078 */  lw    $a0, 0x78($s1)
/* B3F300 800C8160 0C034CC0 */  jal   func_800D3300
/* B3F304 800C8164 26250070 */   addiu $a1, $s1, 0x70
/* B3F308 800C8168 3C048014 */  lui   $a0, %hi(D_80145CF8) # $a0, 0x8014
/* B3F30C 800C816C 0C00084C */  jal   DebugMessage
/* B3F310 800C8170 24845CF8 */   addiu $a0, %lo(D_80145CF8) # addiu $a0, $a0, 0x5cf8
/* B3F314 800C8174 8FBF0034 */  lw    $ra, 0x34($sp)
/* B3F318 800C8178 8FB00018 */  lw    $s0, 0x18($sp)
/* B3F31C 800C817C 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3F320 800C8180 8FB20020 */  lw    $s2, 0x20($sp)
/* B3F324 800C8184 8FB30024 */  lw    $s3, 0x24($sp)
/* B3F328 800C8188 8FB40028 */  lw    $s4, 0x28($sp)
/* B3F32C 800C818C 8FB5002C */  lw    $s5, 0x2c($sp)
/* B3F330 800C8190 8FB60030 */  lw    $s6, 0x30($sp)
/* B3F334 800C8194 03E00008 */  jr    $ra
/* B3F338 800C8198 27BD0060 */   addiu $sp, $sp, 0x60

glabel func_800C819C
/* B3F33C 800C819C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3F340 800C81A0 AFB00020 */  sw    $s0, 0x20($sp)
/* B3F344 800C81A4 00808025 */  move  $s0, $a0
/* B3F348 800C81A8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3F34C 800C81AC 3C048014 */  lui   $a0, %hi(D_80145D18) # $a0, 0x8014
/* B3F350 800C81B0 AFA50034 */  sw    $a1, 0x34($sp)
/* B3F354 800C81B4 AFA60038 */  sw    $a2, 0x38($sp)
/* B3F358 800C81B8 AFA7003C */  sw    $a3, 0x3c($sp)
/* B3F35C 800C81BC 0C00084C */  jal   DebugMessage
/* B3F360 800C81C0 24845D18 */   addiu $a0, %lo(D_80145D18) # addiu $a0, $a0, 0x5d18
/* B3F364 800C81C4 02002025 */  move  $a0, $s0
/* B3F368 800C81C8 0C001114 */  jal   bzero
/* B3F36C 800C81CC 24050468 */   li    $a1, 1128
/* B3F370 800C81D0 8FAE0038 */  lw    $t6, 0x38($sp)
/* B3F374 800C81D4 26070058 */  addiu $a3, $s0, 0x58
/* B3F378 800C81D8 00E02025 */  move  $a0, $a3
/* B3F37C 800C81DC AE0E0078 */  sw    $t6, 0x78($s0)
/* B3F380 800C81E0 AFA7002C */  sw    $a3, 0x2c($sp)
/* B3F384 800C81E4 26050018 */  addiu $a1, $s0, 0x18
/* B3F388 800C81E8 0C001874 */  jal   osCreateMesgQueue
/* B3F38C 800C81EC 24060004 */   li    $a2, 4
/* B3F390 800C81F0 8FA6002C */  lw    $a2, 0x2c($sp)
/* B3F394 800C81F4 8E040078 */  lw    $a0, 0x78($s0)
/* B3F398 800C81F8 0C034C88 */  jal   func_800D3220
/* B3F39C 800C81FC 26050070 */   addiu $a1, $s0, 0x70
/* B3F3A0 800C8200 26040028 */  addiu $a0, $s0, 0x28
/* B3F3A4 800C8204 26050010 */  addiu $a1, $s0, 0x10
/* B3F3A8 800C8208 0C001874 */  jal   osCreateMesgQueue
/* B3F3AC 800C820C 24060001 */   li    $a2, 1
/* B3F3B0 800C8210 02002025 */  move  $a0, $s0
/* B3F3B4 800C8214 0C031CBF */  jal   func_800C72FC
/* B3F3B8 800C8218 8FA50034 */   lw    $a1, 0x34($sp)
/* B3F3BC 800C821C 26040040 */  addiu $a0, $s0, 0x40
/* B3F3C0 800C8220 26050014 */  addiu $a1, $s0, 0x14
/* B3F3C4 800C8224 0C001874 */  jal   osCreateMesgQueue
/* B3F3C8 800C8228 24060001 */   li    $a2, 1
/* B3F3CC 800C822C 0C031CF9 */  jal   func_800C73E4
/* B3F3D0 800C8230 02002025 */   move  $a0, $s0
/* B3F3D4 800C8234 8FA40034 */  lw    $a0, 0x34($sp)
/* B3F3D8 800C8238 260502A8 */  addiu $a1, $s0, 0x2a8
/* B3F3DC 800C823C 0C03F350 */  jal   func_800FCD40
/* B3F3E0 800C8240 02003025 */   move  $a2, $s0
/* B3F3E4 800C8244 240F0004 */  li    $t7, 4
/* B3F3E8 800C8248 A20F02A9 */  sb    $t7, 0x2a9($s0)
/* B3F3EC 800C824C 0C041340 */  jal   func_80104D00
/* B3F3F0 800C8250 31E400FF */   andi  $a0, $t7, 0xff
/* B3F3F4 800C8254 8FB80044 */  lw    $t8, 0x44($sp)
/* B3F3F8 800C8258 8FB90040 */  lw    $t9, 0x40($sp)
/* B3F3FC 800C825C 26040080 */  addiu $a0, $s0, 0x80
/* B3F400 800C8260 3C06800C */  lui   $a2, %hi(func_800C7F80) # $a2, 0x800c
/* B3F404 800C8264 24C67F80 */  addiu $a2, %lo(func_800C7F80) # addiu $a2, $a2, 0x7f80
/* B3F408 800C8268 AFA4002C */  sw    $a0, 0x2c($sp)
/* B3F40C 800C826C 8FA5003C */  lw    $a1, 0x3c($sp)
/* B3F410 800C8270 02003825 */  move  $a3, $s0
/* B3F414 800C8274 AFB80010 */  sw    $t8, 0x10($sp)
/* B3F418 800C8278 0C001154 */  jal   osCreateThread
/* B3F41C 800C827C AFB90014 */   sw    $t9, 0x14($sp)
/* B3F420 800C8280 0C0023F0 */  jal   osStartThread
/* B3F424 800C8284 8FA4002C */   lw    $a0, 0x2c($sp)
/* B3F428 800C8288 8FBF0024 */  lw    $ra, 0x24($sp)
/* B3F42C 800C828C 8FB00020 */  lw    $s0, 0x20($sp)
/* B3F430 800C8290 27BD0030 */  addiu $sp, $sp, 0x30
/* B3F434 800C8294 03E00008 */  jr    $ra
/* B3F438 800C8298 00000000 */   nop   
