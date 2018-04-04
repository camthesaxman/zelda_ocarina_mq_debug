#include "../../include/ultra64.h"

#include "../../include/global.h"

void osDpSetStatus(u32 status)
{
    DPC_STATUS_REG = status;
}
