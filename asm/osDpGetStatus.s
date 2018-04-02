.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osDpGetStatus
/* B7B360 801041C0 3C0EA410 */  lui   $t6, 0xa410
/* B7B364 801041C4 03E00008 */  jr    $ra
/* B7B368 801041C8 8DC2000C */   lw    $v0, 0xc($t6)
