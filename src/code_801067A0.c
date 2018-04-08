#include <ultra64.h>
#include <global.h>

// Note: This is part of libultra
// TODO: CLEAN THIS UP!

#define SP_STATUS_REG 0xA4040010
#define SP_PC_REG 0xA4080000

s32 func_801067A0(u32 a0)
{
    register u32 spStatus;

    spStatus = *(u32*)(SP_STATUS_REG);

    if (!(spStatus & 1))
        return -1;

    *(u32*)(SP_PC_REG) = a0;

    return 0;
}