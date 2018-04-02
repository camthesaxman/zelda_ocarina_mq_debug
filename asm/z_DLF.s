.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8002AF00
/* AA20A0 8002AF00 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA20A4 8002AF04 AFBF002C */  sw    $ra, 0x2c($sp)
/* AA20A8 8002AF08 AFB00028 */  sw    $s0, 0x28($sp)
/* AA20AC 8002AF0C 8C8E0000 */  lw    $t6, ($a0)
/* AA20B0 8002AF10 00808025 */  move  $s0, $a0
/* AA20B4 8002AF14 3C048013 */  lui   $a0, %hi(D_80136010) # $a0, 0x8013
/* AA20B8 8002AF18 51C00006 */  beql  $t6, $zero, .L8002AF34
/* AA20BC 8002AF1C 8E06000C */   lw    $a2, 0xc($s0)
/* AA20C0 8002AF20 0C00084C */  jal   DebugMessage
/* AA20C4 8002AF24 24846010 */   addiu $a0, %lo(D_80136010) # addiu $a0, $a0, 0x6010
/* AA20C8 8002AF28 1000005B */  b     .L8002B098
/* AA20CC 8002AF2C 8FBF002C */   lw    $ra, 0x2c($sp)
/* AA20D0 8002AF30 8E06000C */  lw    $a2, 0xc($s0)
.L8002AF34:
/* AA20D4 8002AF34 54C00004 */  bnezl $a2, .L8002AF48
/* AA20D8 8002AF38 8E040004 */   lw    $a0, 4($s0)
/* AA20DC 8002AF3C 10000055 */  b     .L8002B094
/* AA20E0 8002AF40 AE000028 */   sw    $zero, 0x28($s0)
/* AA20E4 8002AF44 8E040004 */  lw    $a0, 4($s0)
.L8002AF48:
/* AA20E8 8002AF48 8E050008 */  lw    $a1, 8($s0)
/* AA20EC 8002AF4C 0C03F004 */  jal   func_800FC010
/* AA20F0 8002AF50 8E070010 */   lw    $a3, 0x10($s0)
/* AA20F4 8002AF54 14400006 */  bnez  $v0, .L8002AF70
/* AA20F8 8002AF58 AE020000 */   sw    $v0, ($s0)
/* AA20FC 8002AF5C 3C048013 */  lui   $a0, %hi(D_80136028) # $a0, 0x8013
/* AA2100 8002AF60 0C00084C */  jal   DebugMessage
/* AA2104 8002AF64 24846028 */   addiu $a0, %lo(D_80136028) # addiu $a0, $a0, 0x6028
/* AA2108 8002AF68 1000004B */  b     .L8002B098
/* AA210C 8002AF6C 8FBF002C */   lw    $ra, 0x2c($sp)
.L8002AF70:
/* AA2110 8002AF70 3C048013 */  lui   $a0, %hi(D_80136040) # $a0, 0x8013
/* AA2114 8002AF74 0C00084C */  jal   DebugMessage
/* AA2118 8002AF78 24846040 */   addiu $a0, %lo(D_80136040) # addiu $a0, $a0, 0x6040
/* AA211C 8002AF7C 8E05000C */  lw    $a1, 0xc($s0)
/* AA2120 8002AF80 8E060010 */  lw    $a2, 0x10($s0)
/* AA2124 8002AF84 8E070000 */  lw    $a3, ($s0)
/* AA2128 8002AF88 3C088013 */  lui   $t0, %hi(D_80136078) # $t0, 0x8013
/* AA212C 8002AF8C 25086078 */  addiu $t0, %lo(D_80136078) # addiu $t0, $t0, 0x6078
/* AA2130 8002AF90 00E67821 */  addu  $t7, $a3, $a2
/* AA2134 8002AF94 3C048013 */  lui   $a0, %hi(D_80136048) # $a0, 0x8013
/* AA2138 8002AF98 01E5C023 */  subu  $t8, $t7, $a1
/* AA213C 8002AF9C 00A7C823 */  subu  $t9, $a1, $a3
/* AA2140 8002AFA0 AFB90014 */  sw    $t9, 0x14($sp)
/* AA2144 8002AFA4 AFB80010 */  sw    $t8, 0x10($sp)
/* AA2148 8002AFA8 24846048 */  addiu $a0, %lo(D_80136048) # addiu $a0, $a0, 0x6048
/* AA214C 8002AFAC AFA80018 */  sw    $t0, 0x18($sp)
/* AA2150 8002AFB0 00A01825 */  move  $v1, $a1
/* AA2154 8002AFB4 0C00084C */  jal   DebugMessage
/* AA2158 8002AFB8 00E01025 */   move  $v0, $a3
/* AA215C 8002AFBC 3C048013 */  lui   $a0, %hi(D_8013607C) # $a0, 0x8013
/* AA2160 8002AFC0 0C00084C */  jal   DebugMessage
/* AA2164 8002AFC4 2484607C */   addiu $a0, %lo(D_8013607C) # addiu $a0, $a0, 0x607c
/* AA2168 8002AFC8 8E020014 */  lw    $v0, 0x14($s0)
/* AA216C 8002AFCC 50400008 */  beql  $v0, $zero, .L8002AFF0
/* AA2170 8002AFD0 AE000014 */   sw    $zero, 0x14($s0)
/* AA2174 8002AFD4 8E09000C */  lw    $t1, 0xc($s0)
/* AA2178 8002AFD8 8E0A0000 */  lw    $t2, ($s0)
/* AA217C 8002AFDC 012A5823 */  subu  $t3, $t1, $t2
/* AA2180 8002AFE0 004B6023 */  subu  $t4, $v0, $t3
/* AA2184 8002AFE4 10000002 */  b     .L8002AFF0
/* AA2188 8002AFE8 AE0C0014 */   sw    $t4, 0x14($s0)
/* AA218C 8002AFEC AE000014 */  sw    $zero, 0x14($s0)
.L8002AFF0:
/* AA2190 8002AFF0 8E020018 */  lw    $v0, 0x18($s0)
/* AA2194 8002AFF4 50400008 */  beql  $v0, $zero, .L8002B018
/* AA2198 8002AFF8 AE000018 */   sw    $zero, 0x18($s0)
/* AA219C 8002AFFC 8E0D000C */  lw    $t5, 0xc($s0)
/* AA21A0 8002B000 8E0E0000 */  lw    $t6, ($s0)
/* AA21A4 8002B004 01AE7823 */  subu  $t7, $t5, $t6
/* AA21A8 8002B008 004FC023 */  subu  $t8, $v0, $t7
/* AA21AC 8002B00C 10000002 */  b     .L8002B018
/* AA21B0 8002B010 AE180018 */   sw    $t8, 0x18($s0)
/* AA21B4 8002B014 AE000018 */  sw    $zero, 0x18($s0)
.L8002B018:
/* AA21B8 8002B018 8E02001C */  lw    $v0, 0x1c($s0)
/* AA21BC 8002B01C 50400008 */  beql  $v0, $zero, .L8002B040
/* AA21C0 8002B020 AE00001C */   sw    $zero, 0x1c($s0)
/* AA21C4 8002B024 8E19000C */  lw    $t9, 0xc($s0)
/* AA21C8 8002B028 8E080000 */  lw    $t0, ($s0)
/* AA21CC 8002B02C 03284823 */  subu  $t1, $t9, $t0
/* AA21D0 8002B030 00495023 */  subu  $t2, $v0, $t1
/* AA21D4 8002B034 10000002 */  b     .L8002B040
/* AA21D8 8002B038 AE0A001C */   sw    $t2, 0x1c($s0)
/* AA21DC 8002B03C AE00001C */  sw    $zero, 0x1c($s0)
.L8002B040:
/* AA21E0 8002B040 8E020020 */  lw    $v0, 0x20($s0)
/* AA21E4 8002B044 50400008 */  beql  $v0, $zero, .L8002B068
/* AA21E8 8002B048 AE000020 */   sw    $zero, 0x20($s0)
/* AA21EC 8002B04C 8E0B000C */  lw    $t3, 0xc($s0)
/* AA21F0 8002B050 8E0C0000 */  lw    $t4, ($s0)
/* AA21F4 8002B054 016C6823 */  subu  $t5, $t3, $t4
/* AA21F8 8002B058 004D7023 */  subu  $t6, $v0, $t5
/* AA21FC 8002B05C 10000002 */  b     .L8002B068
/* AA2200 8002B060 AE0E0020 */   sw    $t6, 0x20($s0)
/* AA2204 8002B064 AE000020 */  sw    $zero, 0x20($s0)
.L8002B068:
/* AA2208 8002B068 8E020024 */  lw    $v0, 0x24($s0)
/* AA220C 8002B06C 50400008 */  beql  $v0, $zero, .L8002B090
/* AA2210 8002B070 AE000024 */   sw    $zero, 0x24($s0)
/* AA2214 8002B074 8E0F000C */  lw    $t7, 0xc($s0)
/* AA2218 8002B078 8E180000 */  lw    $t8, ($s0)
/* AA221C 8002B07C 01F8C823 */  subu  $t9, $t7, $t8
/* AA2220 8002B080 00594023 */  subu  $t0, $v0, $t9
/* AA2224 8002B084 10000002 */  b     .L8002B090
/* AA2228 8002B088 AE080024 */   sw    $t0, 0x24($s0)
/* AA222C 8002B08C AE000024 */  sw    $zero, 0x24($s0)
.L8002B090:
/* AA2230 8002B090 AE000028 */  sw    $zero, 0x28($s0)
.L8002B094:
/* AA2234 8002B094 8FBF002C */  lw    $ra, 0x2c($sp)
.L8002B098:
/* AA2238 8002B098 8FB00028 */  lw    $s0, 0x28($sp)
/* AA223C 8002B09C 27BD0030 */  addiu $sp, $sp, 0x30
/* AA2240 8002B0A0 03E00008 */  jr    $ra
/* AA2244 8002B0A4 00000000 */   nop   

glabel func_8002B0A8
/* AA2248 8002B0A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AA224C 8002B0AC AFBF001C */  sw    $ra, 0x1c($sp)
/* AA2250 8002B0B0 AFB00018 */  sw    $s0, 0x18($sp)
/* AA2254 8002B0B4 8C900000 */  lw    $s0, ($a0)
/* AA2258 8002B0B8 00803825 */  move  $a3, $a0
/* AA225C 8002B0BC 52000042 */  beql  $s0, $zero, .L8002B1C8
/* AA2260 8002B0C0 8FBF001C */   lw    $ra, 0x1c($sp)
/* AA2264 8002B0C4 8C8E0028 */  lw    $t6, 0x28($a0)
/* AA2268 8002B0C8 3C058013 */  lui   $a1, %hi(D_80136080) # $a1, 0x8013
/* AA226C 8002B0CC 00001025 */  move  $v0, $zero
/* AA2270 8002B0D0 11C00003 */  beqz  $t6, .L8002B0E0
/* AA2274 8002B0D4 24A56080 */   addiu $a1, %lo(D_80136080) # addiu $a1, $a1, 0x6080
/* AA2278 8002B0D8 10000001 */  b     .L8002B0E0
/* AA227C 8002B0DC 2402FFFF */   li    $v0, -1
.L8002B0E0:
/* AA2280 8002B0E0 14400038 */  bnez  $v0, .L8002B1C4
/* AA2284 8002B0E4 24060095 */   li    $a2, 149
/* AA2288 8002B0E8 8CE20014 */  lw    $v0, 0x14($a3)
/* AA228C 8002B0EC 50400007 */  beql  $v0, $zero, .L8002B10C
/* AA2290 8002B0F0 ACE00014 */   sw    $zero, 0x14($a3)
/* AA2294 8002B0F4 8CEF000C */  lw    $t7, 0xc($a3)
/* AA2298 8002B0F8 01F0C023 */  subu  $t8, $t7, $s0
/* AA229C 8002B0FC 0058C821 */  addu  $t9, $v0, $t8
/* AA22A0 8002B100 10000002 */  b     .L8002B10C
/* AA22A4 8002B104 ACF90014 */   sw    $t9, 0x14($a3)
/* AA22A8 8002B108 ACE00014 */  sw    $zero, 0x14($a3)
.L8002B10C:
/* AA22AC 8002B10C 8CE20018 */  lw    $v0, 0x18($a3)
/* AA22B0 8002B110 50400008 */  beql  $v0, $zero, .L8002B134
/* AA22B4 8002B114 ACE00018 */   sw    $zero, 0x18($a3)
/* AA22B8 8002B118 8CE8000C */  lw    $t0, 0xc($a3)
/* AA22BC 8002B11C 8CE90000 */  lw    $t1, ($a3)
/* AA22C0 8002B120 01095023 */  subu  $t2, $t0, $t1
/* AA22C4 8002B124 004A5821 */  addu  $t3, $v0, $t2
/* AA22C8 8002B128 10000002 */  b     .L8002B134
/* AA22CC 8002B12C ACEB0018 */   sw    $t3, 0x18($a3)
/* AA22D0 8002B130 ACE00018 */  sw    $zero, 0x18($a3)
.L8002B134:
/* AA22D4 8002B134 8CE2001C */  lw    $v0, 0x1c($a3)
/* AA22D8 8002B138 50400008 */  beql  $v0, $zero, .L8002B15C
/* AA22DC 8002B13C ACE0001C */   sw    $zero, 0x1c($a3)
/* AA22E0 8002B140 8CEC000C */  lw    $t4, 0xc($a3)
/* AA22E4 8002B144 8CED0000 */  lw    $t5, ($a3)
/* AA22E8 8002B148 018D7023 */  subu  $t6, $t4, $t5
/* AA22EC 8002B14C 004E7821 */  addu  $t7, $v0, $t6
/* AA22F0 8002B150 10000002 */  b     .L8002B15C
/* AA22F4 8002B154 ACEF001C */   sw    $t7, 0x1c($a3)
/* AA22F8 8002B158 ACE0001C */  sw    $zero, 0x1c($a3)
.L8002B15C:
/* AA22FC 8002B15C 8CE20020 */  lw    $v0, 0x20($a3)
/* AA2300 8002B160 50400008 */  beql  $v0, $zero, .L8002B184
/* AA2304 8002B164 ACE00020 */   sw    $zero, 0x20($a3)
/* AA2308 8002B168 8CF8000C */  lw    $t8, 0xc($a3)
/* AA230C 8002B16C 8CF90000 */  lw    $t9, ($a3)
/* AA2310 8002B170 03194023 */  subu  $t0, $t8, $t9
/* AA2314 8002B174 00484821 */  addu  $t1, $v0, $t0
/* AA2318 8002B178 10000002 */  b     .L8002B184
/* AA231C 8002B17C ACE90020 */   sw    $t1, 0x20($a3)
/* AA2320 8002B180 ACE00020 */  sw    $zero, 0x20($a3)
.L8002B184:
/* AA2324 8002B184 8CE20024 */  lw    $v0, 0x24($a3)
/* AA2328 8002B188 50400008 */  beql  $v0, $zero, .L8002B1AC
/* AA232C 8002B18C ACE00024 */   sw    $zero, 0x24($a3)
/* AA2330 8002B190 8CF00000 */  lw    $s0, ($a3)
/* AA2334 8002B194 8CEA000C */  lw    $t2, 0xc($a3)
/* AA2338 8002B198 01505823 */  subu  $t3, $t2, $s0
/* AA233C 8002B19C 004B6021 */  addu  $t4, $v0, $t3
/* AA2340 8002B1A0 10000003 */  b     .L8002B1B0
/* AA2344 8002B1A4 ACEC0024 */   sw    $t4, 0x24($a3)
/* AA2348 8002B1A8 ACE00024 */  sw    $zero, 0x24($a3)
.L8002B1AC:
/* AA234C 8002B1AC 8CF00000 */  lw    $s0, ($a3)
.L8002B1B0:
/* AA2350 8002B1B0 02002025 */  move  $a0, $s0
/* AA2354 8002B1B4 0C03F5ED */  jal   func_800FD7B4
/* AA2358 8002B1B8 AFA70020 */   sw    $a3, 0x20($sp)
/* AA235C 8002B1BC 8FA70020 */  lw    $a3, 0x20($sp)
/* AA2360 8002B1C0 ACE00000 */  sw    $zero, ($a3)
.L8002B1C4:
/* AA2364 8002B1C4 8FBF001C */  lw    $ra, 0x1c($sp)
.L8002B1C8:
/* AA2368 8002B1C8 8FB00018 */  lw    $s0, 0x18($sp)
/* AA236C 8002B1CC 27BD0020 */  addiu $sp, $sp, 0x20
/* AA2370 8002B1D0 03E00008 */  jr    $ra
/* AA2374 8002B1D4 00000000 */   nop   
