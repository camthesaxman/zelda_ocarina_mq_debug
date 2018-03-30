#include "../include/ultra64.h"

extern u8 *D_80000318;
extern u8 _dmadataSegmentStart[];
extern u8 D_00016DA0[];
extern u8 D_80012370[];
extern u8 D_80012960[];
extern u8 D_80012D60[];
extern u8 D_8000AFC0[];
extern u8 D_8000AFD0[];
extern u8 D_8000AFE0[];
extern u8 _ovl_titleSegmentRomStart[];
extern u8 D_80012390[];
extern u8 D_8000AFC8[];
extern u8 D_80012540[];
extern u8 D_80012940[];
extern u8 D_80012940_[];  // these must be defined separately for the code to match
extern u8 D_80000694[];
extern u8 D_8000AFFC[];
extern u8 D_8000B008[];
extern u8 D_8001CE60[];
extern u8 D_80157D90[];
extern u8 D_801759C0[];
extern u8 D_8000B028[];
extern u8 D_8000B038[];
extern u8 D_8000B058[];
extern int D_80009450;
extern u8 D_00A94000[];

extern void bzero();
extern void func_80002660();
extern void *func_80005100();
extern u64 osGetTime();

void func_80000460(void)
{
    bzero(_dmadataSegmentStart, D_80000318 - D_00016DA0);
}

void func_80000498(void)
{
    func_80002660(D_80012370, D_80012960, D_80012D60, 0, -1, D_8000AFC0);

    D_80000318 = func_80005100();
    func_80000460();
    func_8000345C();
    func_80003708();

    D_80009450 = func_80007910();
    func_800023D0();
    func_80002080();
    func_80001E60();
    
    func_80002660(D_80012940, D_80012540, D_80012940_, 0, 256, D_8000AFC8);
    osCreateThread(D_80012390, 1, D_80000694, 0, D_80012940, 10);
    osStartThread(D_80012390);
}
