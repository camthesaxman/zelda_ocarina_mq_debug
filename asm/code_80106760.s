.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80106760
/* B7D900 80106760 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B7D904 80106764 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7D908 80106768 0C001CA0 */  jal   func_80007280
/* B7D90C 8010676C 00000000 */   nop   
/* B7D910 80106770 3C0E8001 */  lui   $t6, %hi(D_8000AF00) # $t6, 0x8001
/* B7D914 80106774 8DCEAF00 */  lw    $t6, %lo(D_8000AF00)($t6)
/* B7D918 80106778 00402025 */  move  $a0, $v0
/* B7D91C 8010677C 8DCF0004 */  lw    $t7, 4($t6)
/* B7D920 80106780 0C001CBC */  jal   func_800072F0
/* B7D924 80106784 AFAF0018 */   sw    $t7, 0x18($sp)
/* B7D928 80106788 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7D92C 8010678C 8FA20018 */  lw    $v0, 0x18($sp)
/* B7D930 80106790 27BD0020 */  addiu $sp, $sp, 0x20
/* B7D934 80106794 03E00008 */  jr    $ra
/* B7D938 80106798 00000000 */   nop   
