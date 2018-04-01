#include "../include/ultra64.h"

#include "../include/global.h"

void func_80000460(void)
{
    bzero(_dmadataSegmentStart, D_80000318 - D_00016DA0);
}

void func_80000498(void)
{
    func_80002660(D_80012370, D_80012960, D_80012D60, 0, -1, "boot");

    D_80000318 = func_80005100();
    func_80000460();
    func_8000345C();
    func_80003708();

    D_80009450 = func_80007910();
    func_800023D0();
    func_80002080();
    func_80001E60();
    
    func_80002660(D_80012940, D_80012540, D_80012940_, 0, 256, "idle");
    osCreateThread(&D_80012390, 1, func_80000694, 0, D_80012940, 10);
    osStartThread(&D_80012390);
}
