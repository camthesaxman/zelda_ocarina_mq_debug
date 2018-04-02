.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80104140
/* B7B2E0 80104140 3C028001 */  lui   $v0, 0x8001
/* B7B2E4 80104144 03E00008 */  jr    $ra
/* B7B2E8 80104148 8C42AD4C */   lw    $v0, -0x52b4($v0)
