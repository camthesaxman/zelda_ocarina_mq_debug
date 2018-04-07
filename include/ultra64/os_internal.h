#ifndef _ULTRA64_OS_INTERNAL_H_
#define _ULTRA64_OS_INTERNAL_H_

/* Internal functions used by the operating system */
/* Do not include this header in application code */

/* Variables */

extern const u8 func_800042F0[];  // return point for thread

extern OSThread *D_8000AD48;
extern OSThread *D_8000AD4C;
extern OSThread *D_8000AD50;

extern u64 D_80015AE0;
extern u32 D_80015AE8;


/* Functions */

u32 __osProbeTLB(void *);
u32 __osDisableInt(void);

#endif
