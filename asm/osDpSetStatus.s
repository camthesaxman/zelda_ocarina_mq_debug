.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osDpSetStatus
/* B7B370 801041D0 3C0EA410 */  lui   $t6, 0xa410
/* B7B374 801041D4 03E00008 */  jr    $ra
/* B7B378 801041D8 ADC4000C */   sw    $a0, 0xc($t6)
