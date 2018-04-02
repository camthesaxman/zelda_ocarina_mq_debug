.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_801064C0
/* B7D660 801064C0 3C028001 */  lui   $v0, 0x8001
/* B7D664 801064C4 03E00008 */  jr    $ra
/* B7D668 801064C8 8C42AD54 */   lw    $v0, -0x52ac($v0)
