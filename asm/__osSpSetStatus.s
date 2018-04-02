.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel __osSpSetStatus
/* B7D620 80106480 3C0EA404 */  lui   $t6, 0xa404
/* B7D624 80106484 03E00008 */  jr    $ra
/* B7D628 80106488 ADC40010 */   sw    $a0, 0x10($t6)
