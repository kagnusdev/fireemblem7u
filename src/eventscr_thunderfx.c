#include "gbafe.h"

void EventThunderfx_Init(struct ProcEventThunderfx * proc)
{
    gDispIo.bg0_ct.priority = 0;
    gDispIo.bg1_ct.priority = 1;
    gDispIo.bg2_ct.priority = 0;
    gDispIo.bg3_ct.priority = 3;

    SetBlendAlpha(0x10, 0x10);

    SetBlendTargetA(0, 0, 1, 0, 0);
    SetBlendTargetB(0, 0, 0, 1, 1);

    proc->unk30 = 0;

    StartBmBgfx(
        BmBgfxConf_EventThunder,
        BG_2,
        proc->x + 0x54,
        proc->y,
        0,
        0x2000,
        0xF,
        NULL, proc
    );
}

void EventThunderfx_End(struct ProcEventThunderfx * proc)
{
    SetBlendConfig(BLEND_EFFECT_NONE, 0, 0x10, 0);
    InitBmBgLayers();
}

struct BmBgxConf CONST_DATA BmBgfxConf_EventThunder[] = { // 0xB92074
    { BMFX_CONFT_PAL,        Pal_EventThunderfx,     0x1, 0 }, // pal = 0x081A755C
    { BMFX_CONFT_ZIMG,       Img_EventThunderfx1, 0x1000, 1 }, // img = 0x081A757C
    { BMFX_CONFT_ZIMG,       Img_EventThunderfx2, 0x1000, 0 }, // img = 0x081A80E0
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx1,      0, 1 }, // tsa = 0x081A8A40
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx2,      0, 2 }, // tsa = 0x081A8A80
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx3,      0, 2 }, // tsa = 0x081A8B08
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx4,      0, 2 }, // tsa = 0x081A8B90
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx5,      0, 2 }, // tsa = 0x081A8BEC
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx6,      0, 2 }, // tsa = 0x081A8CE4
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx7,      0, 2 }, // tsa = 0x081A8DEC
    { BMFX_CONFT_ZIMG,       Img_EventThunderfx3, 0x1000, 1 }, // img = 0x081A8E7C
    { BMFX_CONFT_ZIMG,       Img_EventThunderfx4, 0x1000, 0 }, // img = 0x081A99CC
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx8,      0, 1 }, // tsa = 0x081AA294
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx9,      0, 2 }, // tsa = 0x081AA3AC
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx10,     0, 2 }, // tsa = 0x081AA4C4
    { BMFX_CONFT_TSA,        Tsa_EventThunderfx11,     0, 2 }, // tsa = 0x081AA5E0
    { BMFX_CONFT_END },
};

struct ProcCmd CONST_DATA ProcScr_EventThunderfx[] = { // 0xB92140
    PROC_YIELD,
    PROC_CALL(EventThunderfx_Init),
    PROC_WHILE(CheckBmBgfxDone),
    PROC_CALL(EventThunderfx_End),
    PROC_END,
}; // end at 0xB92168

int EventE2_Thunderfx(struct EventProc * proc)
{
    struct ProcEventThunderfx * procfx;
    const u32 * args = proc->script;

    int x = args[1];
    int y = args[2];

    if (proc->flags & EVENT_FLAG_SKIPPED)
        return EVENT_CMDRET_CONTINUE;
 
    procfx = Proc_StartBlocking(ProcScr_EventThunderfx, proc);
    procfx->x = x;
    procfx->y = y;
    return EVENT_CMDRET_YIELD;
}

bool EventThunderfxExists(void)
{
    if (Proc_Find(ProcScr_EventThunderfx))
        return true;

    return false;
}
