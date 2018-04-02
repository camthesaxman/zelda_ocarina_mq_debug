.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel __osSpGetStatus
/* B7D610 80106470 3C0EA404 */  lui   $t6, 0xa404
/* B7D614 80106474 03E00008 */  jr    $ra
/* B7D618 80106478 8DC20010 */   lw    $v0, 0x10($t6)
