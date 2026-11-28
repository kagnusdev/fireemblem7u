#include "gbafe.h"

struct ProcCmd CONST_DATA ProcScr_FlameBreathfx[] = {
    PROC_YIELD,
    PROC_CALL(func_0807C41C),
    PROC_REPEAT(func_0807C520),
    PROC_REPEAT(func_0807C578),
    PROC_REPEAT(func_0807C614),
    PROC_CALL(func_0807C66C),
    PROC_END,
}; // end at 08CA789C

void func_0807C3A0(struct ProcFlameBreathfx * proc)
{
    proc->bg_offset += 8;

    ScanlineRotation(GetScanlineBuf(1, 0), proc->bg_offset, 2, 2, GetBgYOffset(BG_0), 0x50, 1);
    ScanlineRotation(GetScanlineBuf(1, 0xA0), proc->bg_offset, 3, 2, GetBgXOffset(BG_0), 0x50, 1);

    SwapScanlineBufs();
}

void func_0807C41C(struct ProcFlameBreathfx * proc)
{
    u8 * tsalut[2] = { // 0x083FC91C
        Tsa_FlameBreathfxR, // 0x081A71E8
        Tsa_FlameBreathfxL  // 0x081A73A8
    };

    gDispIo.bg0_ct.priority = 0;
    gDispIo.bg1_ct.priority = 1;
    gDispIo.bg2_ct.priority = 2;
    gDispIo.bg3_ct.priority = 3;

    SetBlendAlpha(0, 0x10);

    SetBlendTargetA(1, 0, 0, 0, 0);
    SetBlendTargetB(0, 1, 1, 1, 1);

    Decompress(Img_FlameBreathfx, (void *)BG_VRAM + 0x800);
    ApplyPalette(Pal_FlameBreathfx, 5);
    TmApplyCompressedTsa(gBg0Tm, tsalut[proc->type], 0x5040);

    SetBgOffset(BG_0, (-proc->x) & 0xFF, (-proc->y) & 0xFF);
    EnableBgSync(BG0_SYNC_BIT);
    proc->timer = 0;

    InitScanlineEffect();
    SetOnHBlankA(HBlank_Scanline_08077ADC);
    StartParallelWorker(func_0807C3A0, proc);
}

void func_0807C520(struct ProcFlameBreathfx * proc)
{
    int time = proc->timer++ * 2;
    SetBlendAlpha(time, 0x10 - time / 2);

    if (time == 0x10)
    {
        proc->timer = 0;
        Proc_Break(proc);
    }
}

void func_0807C578(struct ProcFlameBreathfx * proc)
{
    int timer;
    int timer2;
    int bld_amt;

    proc->timer += 2;

    timer = timer2 = proc->timer;

    if (timer < 0)
    {
        timer += 15;
    }

    if ((s16)(timer2 - (timer >> 4 << 4)) <= 7)
    {
        timer = timer2;
        if (timer2 < 0)
        {
            timer = timer2 + 7;
        }
        bld_amt = 16 - (s16)(timer2 - (timer >> 3 << 3));
    }
    else
    {
        timer = timer2;
        if (timer2 < 0)
        {
            timer = timer2 + 7;
        }
        bld_amt = (s16)(timer2 - (timer >> 3 << 3)) + 8;
    }

    SetBlendConfig(1, bld_amt, 16 - (bld_amt >> 1), 0);

    if (proc->timer == 16)
    {
        proc->timer = 0;
        Proc_Break(proc);
    }
}

void func_0807C614(struct ProcFlameBreathfx * proc)
{
    int bld_amt;

    bld_amt = proc->timer++ >> 1;

    SetBlendConfig(1, 16 - bld_amt, (bld_amt >> 1) + 8, 0);

    if (bld_amt == 16)
    {
        Proc_Break(proc);
    }
}

void func_0807C66C(struct ProcFlameBreathfx * proc)
{
    (void)proc;
    TmFill(gBg0Tm, 0);
    EnableBgSync(BG_1);
    SetOnHBlankA(NULL);

    SetBlendConfig(0, 0, 0, 0);
}

void StartFlameBreathfx(int type, int x, int y, ProcPtr parent)
{
    struct ProcFlameBreathfx *proc;

    proc = Proc_StartBlocking(ProcScr_FlameBreathfx, parent);

    proc->type = type;
    proc->x = x;
    proc->y = y;
}
