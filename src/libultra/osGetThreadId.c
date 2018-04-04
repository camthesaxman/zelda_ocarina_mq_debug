#include "../../include/ultra64.h"

#include "../../include/global.h"

OSId osGetThreadId(OSThread *thread)
{
    if (thread == NULL)
        thread = D_8000AD50;
    return thread->id;
}
