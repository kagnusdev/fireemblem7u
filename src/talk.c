#include "gbafe.h"

#define TALK_TEXT_BY_LINE(line) (sTalkText + ((line) + sTalkSt->top_text_num) % sTalkSt->lines)

static struct TalkSt IWRAM_DATA sTalkStObj;
static u32 IWRAM_DATA _pad_30000C4;
static struct Text IWRAM_DATA sTalkText[3];
static int IWRAM_DATA sTalkChoiceResult;
static u32 IWRAM_DATA _pad_30000E4;
static struct Font IWRAM_DATA sTalkFont;

struct TalkSt * CONST_DATA sTalkSt = &sTalkStObj;

void func_08007DD4()
{
    int i;

    for (i = 0; i < TALK_FACE_COUNT; i++)
    {
        sTalkSt->faces[i] = 0;
    }
}

void InitTalk(int chr, int lines, bool unpack_bubble)
{
    int i;

    InitTextFont(&sTalkFont, (u8 *) VRAM + GetBgChrOffset(0) + ((chr & 0x3FF) << 5), chr, BGPAL_TALK);
    func_08007F64();

    sTalkSt->lines = lines;

    for (i = 0; i < lines; ++i)
    {
        InitText(sTalkText + i, 30);
        Text_SetColor(sTalkText + i, TEXT_COLOR_0456);
    }

    if (unpack_bubble)
    {
        Decompress(gUnk_083FBD34, (u8 *) VRAM + GetBgChrOffset(1) + 0x200);
        ApplyPalette(gUnk_083FBFD0, BGPAL_TALK_BUBBLE);
    }

    func_08007DD4();
}

void InitSpriteTalk(int chr, int lines, int palid)
{
    int i;

    InitSpriteTextFont(&sTalkFont, (u8 *) VRAM + 0x10000 + ((chr & 0x3FF) << 5), palid);

    SetTextFont(&sTalkFont);
    SetTextFontGlyphs(TEXT_GLYPHS_TALK);

    ApplyPalette(Pal_Text+0x10, 0x10 + palid);

    PAL_OBJ_COLOR(palid, 4)  = RGB(7,  18, 28);
    PAL_OBJ_COLOR(palid, 14) = RGB(14, 13, 12);
    PAL_OBJ_COLOR(palid, 15) = RGB(31, 31, 31);

    sTalkSt->lines = lines;

    for (i = 0; i < lines; ++i)
    {
        InitSpriteText(sTalkText + i);

        SpriteText_DrawBackground(sTalkText + i);
        Text_SetColor(sTalkText + i, TEXT_COLOR_4DEF);
        Text_SetCursor(sTalkText + i, 4);
    }
}

void func_08007F50()
{
    ApplyPaletteExt(Pal_Text, 0x40, 0x20);
}

void func_08007F64()
{
    SetTextFont(&sTalkFont);
    InitTalkTextFont();
}

ProcPtr StartTalkExt(int x, int y, const char* msg, ProcPtr proc)
{
    sTalkSt->x_text = x;
    sTalkSt->y_text = y;
    sTalkSt->str = msg;
    sTalkSt->str_back = 0;
    sTalkSt->print_color = 1;
    sTalkSt->line_active = 0;
    sTalkSt->unk_82 = 0;
    sTalkSt->top_text_num = 0;
    sTalkSt->print_delay = GetTextPrintDelay();
    sTalkSt->print_clock = 0;
    func_08008E28(0xFF);
    sTalkSt->speak_talk_face = 0xff;
    sTalkSt->put_lines = 0;
    sTalkSt->instant_print = 0;
    sTalkSt->unk_16 = 1;
    sTalkSt->unk_17 = 0;
    sTalkSt->unk_80 = 0;
    sTalkSt->unk_38 = 0;
    sTalkSt->unk_83 = 0;
    sTalkSt->active_width = Div(func_0800A11C(sTalkSt->str, 0) + 7, 8) + 2;

    if (proc)
    {
        return Proc_StartBlocking(ProcScr_Talk, proc);
    }
    else
    {
        return Proc_Start(ProcScr_Talk, (ProcPtr)3);
    }
}

ProcPtr StartTalkMsg(int x, int y, int id)
{
    return StartTalkExt(x, y, DecodeMsg(id), 0);
}

ProcPtr StartTalkMsgExt(int x, int y, int id, ProcPtr proc)
{
    return StartTalkExt(x, y, DecodeMsg(id), proc);
}

ProcPtr StartTalk(int x, int y, const char* msg)
{
    return StartTalkExt(x, y, msg, 0);
}

void EndTalk()
{
    Proc_EndEach(ProcScr_Talk);
}

void SetTalkLines(u8 lines)
{
    sTalkSt->lines = lines;
}

void ClearAllTalkFlags()
{
    sTalkSt->unk_80 = 0;
}

void SetTalkFlag(int talk_flags)
{
    sTalkSt->unk_80 |= talk_flags;
}

void SetTalkFunc(ProcFunc func)
{
    sTalkSt->unk_38 = func;
}

void ClearTalkFlag(int unk)
{
    sTalkSt->unk_80 &= (~unk);
}

int CheckTalkFlag(int flag)
{
    return sTalkSt->unk_80 & flag;
}

void func_080080D8(s8 delay)
{
    sTalkSt->print_delay = delay;
    if (sTalkSt->print_delay < 0)
    {
        sTalkSt->print_delay = 0;
    }
}

void func_080080F4(u8 color)
{
    int i;

    sTalkSt->print_color = color;

    for (i = 0; i < sTalkSt->lines; i++)
    {
        Text_SetColor(&sTalkText[i], sTalkSt->print_color);
    }
}

void TalkSkipListener_OnIdle(ProcPtr proc)
{
    if (!Proc_Find(gUnk_08B90ACC) && !Proc_Find(gUnk_08B90B24))
    {
        if (!CheckTalkFlag(4) && (gpKeySt->pressed & 0xA))
        {
            func_0800F08C();
            SetTalkFaceNoMouthMove(sTalkSt->active_talk_face);
            Proc_End(proc);
            EndTalk();
            TmFill(gBg0Tm, 0);
            TmFill(gBg1Tm, 0);
            EnableBgSync(3);
        }
        else if (!Proc_Find(gUnk_08B90A4C) && !CheckTalkFlag(8))
        {
            if (gpKeySt->pressed & 0xf3)
            {
                sTalkSt->instant_print = 1;
            }
        }
    }
}

void func_080081E4()
{
    if (!CheckTalkFlag(0x20))
    {
        ApplySystemObjectsGraphics();
        SetBgOffset(0, 0, 0);
        SetBgOffset(1, 0, 0);
    }

    Proc_Start(gUnk_08B909BC, (ProcPtr)3);
}

void func_08008218(ProcPtr proc)
{
    if (func_08009020())
        return;

    if (!sTalkSt->instant_print)
    {
        sTalkSt->print_clock++;

        if (sTalkSt->print_clock < sTalkSt->print_delay)
        {
            return;
        }
    }

    sTalkSt->print_clock = 0;

    while(1)
    {
        SetTalkFaceNoMouthMove(sTalkSt->active_talk_face);

        switch (TalkInterpret(proc))
        {
        case 0:
            Proc_Break(proc);
            return;

        case 2:
            if (sTalkSt->instant_print || sTalkSt->print_delay <= 0)
            {
                break;
            }

            return;

        case 3:
            sTalkSt->print_clock = sTalkSt->print_delay;
            sTalkSt->instant_print = FALSE;
            return;

        case 1:
        default:
            if (!CheckTalkFlag(TALK_FLAG_SPRITE))
            {
                if (func_0800838C(proc) == TRUE)
                    return;
            }
            else
            {
                if (func_08008478(proc) == TRUE)
                    return;
            }

            sTalkSt->str = Text_DrawCharacter(TALK_TEXT_BY_LINE(sTalkSt->line_active), sTalkSt->str);

            if (!CheckTalkFlag(TALK_FLAG_SILENT))
            {
                if (CheckTalkFlag(TALK_FLAG_7) != 0)
                {
                    PlaySoundEffect(0x39A);
                }
                else
                {
                    if ((GetTextPrintDelay() == 1) && !(GetGameTime() & 1))
                        break;

                    if (sTalkSt->instant_print != 0 && sTalkSt->unk_82 != 0)
                        break;

                    sTalkSt->unk_82 = 1;

                    PlaySoundEffect(0x38E);
                }
            }
        }

        if (!sTalkSt->instant_print && sTalkSt->print_delay > 0)
            return;
    }
}

bool func_0800838C(ProcPtr proc)
{
    if (!func_08009EE0() && sTalkSt->active_talk_face != 0xFF && !CheckTalkFlag(2))
    {
        if (sTalkSt->str_back == NULL)
        {
            sTalkSt->active_width = Div(func_0800A11C(sTalkSt->str, 0) + 7, 8) + 2;
        }
        else
        {
            sTalkSt->active_width = Div(func_0800A11C(sTalkSt->str_back, 0) + 7, 8) + 2;
        }

        ClearTalkBubble();
        func_08009E7C(sTalkSt->active_talk_face, proc);
        func_08008F6C(sTalkSt->active_talk_face, CheckTalkFlag(16));
        return TRUE;
    }

    if (sTalkSt->line_active >= sTalkSt->lines)
    {
        sTalkSt->instant_print = 0;
        Proc_StartBlocking(gUnk_08B90B24, proc);
        return TRUE;
    }

    if (sTalkSt->put_lines == 0)
    {
        u32 r0 = (sTalkSt->line_active + sTalkSt->top_text_num) % sTalkSt->lines;
        PutText(&sTalkText[r0], &gBg0Tm[((sTalkSt->y_text + (sTalkSt->line_active << 1)) << 5) + sTalkSt->x_text]);
        TalkBgSync(1);
        sTalkSt->put_lines = 1;
    }

    if (sTalkSt->unk_16)
    {
        SetTalkFaceMouthMove(sTalkSt->active_talk_face);
    }

    return FALSE;
}

bool func_08008478(ProcPtr proc)
{
    u8 line_active = sTalkSt->line_active;
    u8 lines = sTalkSt->lines;

    if (line_active >= lines)
    {
        sTalkSt->instant_print = 0;
        Proc_StartBlocking(gUnk_08B90B4C, proc);
        return TRUE;
    }
    else
    {
        if (sTalkSt->put_lines == 0)
        {
            sTalkSt->put_lines = 1;
        }
        return FALSE;
    }
}

void LockTalk(ProcPtr proc)
{
    Proc_StartBlocking(gUnk_08B90A04, proc);
}

bool IsTalkLocked()
{
    return Proc_Exists(gUnk_08B90A04);
}

void ResumeTalk()
{
    Proc_EndEach(gUnk_08B90A04);
}

void func_080084EC()
{
    if (sTalkSt->print_color == 1)
    {
        int i;
        for (i = 0; i < sTalkSt->lines; i++)
        {
            u32 r0 = (sTalkSt->top_text_num + i) % sTalkSt->lines;
            Text_SetColor(&sTalkText[r0], 4);
        }

        sTalkSt->print_color = 4;
    }
    else
    {
        int i;
        for (i = 0; i < sTalkSt->lines; i++)
        {
            u32 r0 = (sTalkSt->top_text_num + i) % sTalkSt->lines;
            Text_SetColor(&sTalkText[r0], 1);
        }

        sTalkSt->print_color = 1;
    }
}

void TalkToggleInvertedPalette(int id)
{
    if (id != 0)
    {
        ApplyPaletteExt(gUnk_08194774, 0x60, 0x20);
        ApplyPaletteExt(gUnk_08194754, 0x40, 0x20);
    }
    else
    {
        ApplyPaletteExt(gUnk_083FBFD0, 0x60, 0x20);
        ApplyPaletteExt(Pal_Text, 0x40, 0x20);
    }
}

int TalkInterpret(ProcPtr proc) {
    struct Proc* unkProc;
    int i;

    while (1) {
        switch (*sTalkSt->str) {
            case 0x12:
            case 0x13:
            case 0x14:
                sTalkSt->str++;
                sTalkSt->active_width = 2 + Div(func_0800A11C(sTalkSt->str, func_08009EE0()) + 7, 8);
                continue;
        }
        break;
    }

    switch (*sTalkSt->str) {
        case 0x81:
            if (sTalkSt->str[1] == 0x40) {
                sTalkSt->str += 2;

                Text_Skip(TALK_TEXT_BY_LINE(sTalkSt->line_active), 6);

                if (sTalkSt->instant_print || sTalkSt->print_delay <= 0) {
                    return 2;
                }

                unkProc = Proc_StartBlocking(gUnk_08B90A2C, proc);
                unkProc->unk64 = func_08009744(4);
                return 3;
            }

            return 1;

        case 0x00:
            if (sTalkSt->str_back == 0) {
                return 0;
            }

            sTalkSt->str = sTalkSt->str_back;
            sTalkSt->str += 2;
            sTalkSt->str_back = NULL;

            return TalkInterpret(proc);

        case 0x01:
            if (sTalkSt->put_lines == 1 || sTalkSt->line_active == 1) {
                sTalkSt->line_active++;
            }

            sTalkSt->put_lines = 0;
            sTalkSt->str++;
            return 2;

        case 0x02:
            if (CheckTalkFlag(TALK_FLAG_7)) {
                func_08009708();
                sTalkSt->str++;
            } else if (!CheckTalkFlag(TALK_FLAG_INSTANTSHIFT)) {
                Proc_StartBlocking(gUnk_08B90ACC, proc);
            } else {
                func_080097FC();
            }

            sTalkSt->str++;
            return 3;

        case 0x03:
            func_080092BC(
                proc,
                sTalkSt->x_text * 8 + Text_GetCursor(TALK_TEXT_BY_LINE(sTalkSt->line_active)) + 4,
                sTalkSt->y_text * 8 + sTalkSt->line_active * 16 + 8
            );

            sTalkSt->str++;

            return 3;

        case 0x04:
        case 0x05:
        case 0x06:
        case 0x07:
            if (sTalkSt->instant_print) {
                sTalkSt->str++;
                return 2;
            }

            unkProc = Proc_StartBlocking(gUnk_08B90A2C, proc);
            unkProc->unk64 = func_08009744(*sTalkSt->str);

            sTalkSt->str++;
            return 3;

        case 0x15:
            ClearTalkBubble();
            sTalkSt->str++;
            return 3;

        case 0x16:
            sTalkSt->unk_16 = 1 - sTalkSt->unk_16;
            sTalkSt->str++;
            return 3;

        case 0x17:
            sTalkSt->unk_17 = 1 - sTalkSt->unk_17;
            sTalkSt->str++;
            return 3;

        case 0x10:
            while (1) {
                switch (*sTalkSt->str) {
                    case 0x08:
                    case 0x09:
                    case 0x0A:
                    case 0x0B:
                    case 0x0C:
                    case 0x0D:
                    case 0x0E:
                    case 0x0F:
                        func_08008E28(*sTalkSt->str - 8);
                        sTalkSt->str++;
                        continue;

                    case 0x10:
                        sTalkSt->str++;
                        func_08008E34(proc);
                        sTalkSt->str += 2;
                        continue;
                }
                break;
            }

            return 3;

        case 0x11:
            if (func_08009EE0()) {
                ClearTalkBubble();
            }

            StartFaceFadeOut(sTalkSt->faces[sTalkSt->active_talk_face]);
            sTalkSt->faces[sTalkSt->active_talk_face] = 0;
            sTalkSt->str++;
            StartTemporaryLock(proc, 16);
            return 3;

        case 0x1C:
            if (CheckTalkFlag(0x10))
            {
                ClearTalkFlag(TALK_FLAG_OPAQUE);
            }
            else
            {
                SetTalkFlag(TALK_FLAG_OPAQUE);
            }
            sTalkSt->str++;
            return 3;

        case 0x08:
        case 0x09:
        case 0x0A:
        case 0x0B:
        case 0x0C:
        case 0x0D:
        case 0x0E:
        case 0x0F:
            SetTalkFaceNoMouthMove(sTalkSt->active_talk_face);

            func_08008E28(*sTalkSt->str - 8);

            while (sTalkSt->str++) {
                if (sTalkSt->str == sTalkSt->str)
                    break;
            }

            return 3;

        case 0x18:
            func_080093CC(
                gUnk_08B90AEC,
                TALK_TEXT_BY_LINE(sTalkSt->line_active),
                gBg0Tm + TM_OFFSET(sTalkSt->x_text, sTalkSt->y_text + sTalkSt->line_active * 2),
                1,
                sTalkSt->print_color,
                proc
            );

            sTalkSt->str++;
            return 3;

        case 0x19:
            func_080093CC(
                gUnk_08B90AEC,
                TALK_TEXT_BY_LINE(sTalkSt->line_active),
                gBg0Tm + TM_OFFSET(sTalkSt->x_text, sTalkSt->y_text + sTalkSt->line_active * 2),
                2,
                sTalkSt->print_color,
                proc
            );

            sTalkSt->str++;
            return 3;

        case 0x1A:
            func_080093CC(
                gUnk_08B90AFC,
                TALK_TEXT_BY_LINE(sTalkSt->line_active),
                gBg0Tm + TM_OFFSET(sTalkSt->x_text, sTalkSt->y_text + sTalkSt->line_active * 2),
                1,
                sTalkSt->print_color,
                proc
            );

            while (sTalkSt->str++) {
                if (sTalkSt->str == sTalkSt->str)
                    break;
            }

            return 3;

        case 0x1B:
            func_080093CC(
                gUnk_08B90AFC,
                TALK_TEXT_BY_LINE(sTalkSt->line_active),
                gBg0Tm + TM_OFFSET(sTalkSt->x_text, sTalkSt->y_text + sTalkSt->line_active * 2),
                2,
                sTalkSt->print_color,
                proc
            );

            while (sTalkSt->str++) {
                if (sTalkSt->str == sTalkSt->str)
                    break;
            }

            return 3;

        case 0x80:
            switch (*++sTalkSt->str) {
                case 0x24:
                    if (sTalkSt->unk_38) {
                        sTalkSt->unk_38(proc);
                    }

                    sTalkSt->str++;
                    return 3;

                case 0x21:
                    func_080084EC();
                    sTalkSt->str++;
                    return TalkInterpret(proc);

                case 0x00:
                case 0x01:
                case 0x02:
                case 0x03:
                    sTalkSt->print_color = *++sTalkSt->str;

                    for (i = 0; i < sTalkSt->lines; i++) {
                        Text_SetColor(sTalkText + i, sTalkSt->print_color);
                    }

                    sTalkSt->str++;
                    return 3;
                case 0x25:
                    sTalkSt->unk_83 = 3 - (sTalkSt->unk_83 & 1);
                    sTalkSt->str++;
                    return 3;

                case 0x04:
                    LockTalk(proc);
                    sTalkSt->str++;
                    return 3;

                case 0x05:
                    func_08014590(sTalkSt->number, sTalkSt->buf_number_str);

                    sTalkSt->str--;
                    sTalkSt->str_back = sTalkSt->str;
                    sTalkSt->str = sTalkSt->buf_number_str;

                    return TalkInterpret(proc);

                case 0x20:
                    sTalkSt->str_back = sTalkSt->str;
                    sTalkSt->str_back--;
                    sTalkSt->str = GetTacticianName();

                    return TalkInterpret(proc);

                case 0x06:
                    sTalkSt->str--;

                    sTalkSt->str_back = sTalkSt->str;
                    sTalkSt->str = sTalkSt->buf_unk_str;

                    return TalkInterpret(proc);
                case 0x0A:
                case 0x0B:
                case 0x0C:
                case 0x0D:
                case 0x0E:
                case 0x0F:
                case 0x10:
                case 0x11:
                    func_08008FC8(sTalkSt->active_talk_face, *sTalkSt->str - 10);
                    func_08008E28(*sTalkSt->str - 10);

                    sTalkSt->str++;
                    return 3;

                case 0x07:
                case 0x08:
                    sTalkSt->str++;
                    return 3;

                case 0x16:
                    sTalkSt->str++;
                    SetFaceBlinkControl(sTalkSt->faces[sTalkSt->active_talk_face], 0);
                    return 3;

                case 0x17:
                    sTalkSt->str++;
                    SetFaceBlinkControl(sTalkSt->faces[sTalkSt->active_talk_face], 1);
                    return 3;

                case 0x18:
                    sTalkSt->str++;
                    SetFaceBlinkControl(sTalkSt->faces[sTalkSt->active_talk_face], 3);
                    return 3;

                case 0x19:
                    sTalkSt->str++;
                    SetFaceBlinkControl(sTalkSt->faces[sTalkSt->active_talk_face], 2);
                    return 3;

                case 0x1A:
                    sTalkSt->str++;
                    SetFaceBlinkControl(sTalkSt->faces[sTalkSt->active_talk_face], 4);
                    return 3;

                case 0x1B:
                    sTalkSt->str++;
                    SetFaceBlinkControl(sTalkSt->faces[sTalkSt->active_talk_face], 5);
                    return 3;

                case 0x1C:
                    sTalkSt->str++;
                    SetFaceEyeState(sTalkSt->faces[sTalkSt->active_talk_face], 0);
                    return 3;

                case 0x1D:
                    sTalkSt->str++;
                    SetFaceEyeState(sTalkSt->faces[sTalkSt->active_talk_face], 2);
                    return 3;

                case 0x1E:
                    sTalkSt->str++;
                    SetFaceEyeState(sTalkSt->faces[sTalkSt->active_talk_face], 3);
                    return 3;

                case 0x1F:
                    sTalkSt->str++;
                    SetFaceEyeState(sTalkSt->faces[sTalkSt->active_talk_face], 4);
                    return 3;

                default:
                    return 0;
            }
    }

    return 1;
}

void func_08008E28(int face)
{
    sTalkSt->active_talk_face = face;
}

void func_08008E34(ProcPtr proc)
{
    int faceDisp = 0;
    int fid;

    if (sTalkSt->active_talk_face == TALK_FACE_NONE)
        func_08008E28(TALK_FACE_1);

    if (IsBattleDeamonActive())
        func_0800ED68();
    else
        faceDisp |= FACE_DISP_KIND(FACE_96x80);

    if (func_08009F04(sTalkSt->active_talk_face) <= 14)
        faceDisp |= FACE_DISP_FLIPPED;

    fid = (sTalkSt->str[0]);
    fid = (sTalkSt->str[1] * 0x100) + fid;

    if (fid == UINT16_MAX)
        fid = GetUnitPortraitId(gActiveUnit);
    else
        fid = fid - 0x100;

    if (sTalkSt->faces[sTalkSt->active_talk_face] != NULL)
    {
        func_08007DB8(sTalkSt->faces[sTalkSt->active_talk_face], fid);
    }
    else
    {
        sTalkSt->faces[sTalkSt->active_talk_face] = StartFaceAuto(fid,
            func_08009F04(sTalkSt->active_talk_face)*8, 80, faceDisp);

        StartFaceFadeIn(sTalkSt->faces[sTalkSt->active_talk_face]);

        func_08008F6C(sTalkSt->active_talk_face, CheckTalkFlag(0x10));
        StartTemporaryLock(proc, 8);
    }
}

struct FaceProc * func_08008F18(int fid, int x, int y, int disp, int talk_face)
{
    return sTalkSt->faces[talk_face] = StartFaceAuto(fid, x, y, disp);
}

int func_08008F38(int x)
{
    int i;

    for (i = 0; i < 4; ++i)
    {
        if (gFaces[i] == NULL)
            continue;

        if (gFaces[i]->x_disp == x)
            return i;
    }

    return -1;
}

void func_08008F6C(int talk_face, int toBack)
{
    int i;

    int argLayer, otherLayer;
    int iStart, iEnd;

    if (toBack)
    {
        argLayer = 6;
        otherLayer = 5;
    }
    else
    {
        argLayer = 5;
        otherLayer = 6;
    }

    switch (talk_face)
    {

    case TALK_FACE_0 ... TALK_FACE_2:
    default:
        iStart = TALK_FACE_0;
        iEnd = TALK_FACE_2;

        break;

    case TALK_FACE_3 ... TALK_FACE_5:
        iStart = TALK_FACE_3;
        iEnd = TALK_FACE_5;

        break;

    }

    for (i = iStart; i <= iEnd; ++i)
    {
        if (!sTalkSt->faces[i])
            continue;

        if (i == talk_face)
            sTalkSt->faces[i]->sprite_layer = argLayer;
        else
            sTalkSt->faces[i]->sprite_layer = otherLayer;
    }
}

void func_08008FC8(int talkFaceFrom, int talkFaceTo)
{
    struct FaceProc * face;
    bool isSwap = FALSE;

    if (sTalkSt->faces[talkFaceTo] != NULL)
    {
        isSwap = TRUE;
        func_0800903C(talkFaceTo, talkFaceFrom, isSwap);
    }

    func_0800903C(talkFaceFrom, talkFaceTo, isSwap);

    face = sTalkSt->faces[talkFaceFrom];
    sTalkSt->faces[talkFaceFrom] = sTalkSt->faces[talkFaceTo];
    sTalkSt->faces[talkFaceTo] = face;
}

bool func_08009020()
{
    if (Proc_Find(gUnk_08B90A0C) != NULL)
        return TRUE;

    return FALSE;
}

void func_0800903C(int talkFaceFrom, int talkFaceTo, bool isSwap)
{
    struct Proc * proc;

    int slot = func_08008F38(func_08009F04(talkFaceFrom) * 8);

    if (slot == -1)
        return;

    proc = Proc_Start(gUnk_08B90A0C, gFaces[slot]);

    proc->unk64 = slot;
    proc->unk66 = talkFaceTo;
    proc->unk68 = gFaces[slot]->x_disp;
    proc->unk6A = isSwap;
}

void TalkFaceMove_OnInit(struct Proc * proc)
{
    proc->unk58 = 0;

    if (((proc->unk68 - func_08009F04(proc->unk66)*8) < 0)
        ? (func_08009F04(proc->unk66)*8 - proc->unk68) > 24
        : (proc->unk68 - func_08009F04(proc->unk66)*8) > 24)
    {
        proc->unk5C = 32;
    }
    else
    {
        proc->unk5C = 16;
    }
}

void TalkFaceMove_OnIdle(struct Proc * proc)
{
    if (proc->unk5C > 16)
    {
        if (proc->unk58 == proc->unk5C / 8)
            gFaces[proc->unk64]->y_disp++;

        if (proc->unk58 == proc->unk5C / 2)
            gFaces[proc->unk64]->y_disp--;

        if (proc->unk58 == proc->unk5C * 5 / 8)
            gFaces[proc->unk64]->y_disp++;
    }
    else
    {
        if (proc->unk58 == proc->unk5C / 2)
            gFaces[proc->unk64]->y_disp++;
    }

    if (proc->unk58 >= proc->unk5C)
    {
        gFaces[proc->unk64]->y_disp--;
        Proc_Break(proc);
    }
    else
    {
        gFaces[proc->unk64]->x_disp = Interpolate(INTERPOLATE_RSQUARE,
            proc->unk68, func_08009F04(proc->unk66)*8,
            proc->unk58++, proc->unk5C);
    }
}

void func_080091F0(struct Proc * proc)
{
    Proc_EndEach(gUnk_08B909BC);
    Proc_EndEach(gUnk_08B90ACC);
}

void TalkPause_OnIdle(struct Proc * proc)
{
    if (proc->unk64 == 0)
    {
        Proc_Break(proc);
        return;
    }

    proc->unk64--;
}

void TalkWaitForInput_OnIdle(struct Proc * proc)
{
    int frame = (GetGameTime() / 2) % 0x10;

    if (!CheckTalkFlag(0x80))
    {
        PutSprite(2,
            proc->unk64, proc->unk66,
            gUnk_08B90A8C[frame], OAM2_CHR(4));
    }
    else
    {
        PutSprite(0,
            proc->unk64, proc->unk66,
            gUnk_08B90A8C[frame], OAM2_CHR(0x2BF) + OAM2_PAL(11));
    }

    if (gpKeySt->pressed & 0xf3)
        Proc_Break(proc);
}

void nullsub_24()
{
}

void func_080092BC(struct Proc * parent, int x, int y)
{
    struct Proc * proc = Proc_StartBlocking(gUnk_08B90A4C, parent);

    proc->unk64 = x;
    proc->unk66 = y;
    proc->unk68 = 0;
}

void func_080092E8(ProcPtr parent, int x, int y, int z)
{
    struct Proc * proc = Proc_StartBlocking(gUnk_08B90A4C, parent);

    proc->unk64 = x;
    proc->unk66 = y;
    proc->unk68 = z;
}

void func_0800931C(struct Proc * proc)
{
    TmFillRect(&gBg0Tm[((sTalkSt->y_text + 4) << 5) + sTalkSt->x_text],
        sTalkSt->active_width-2, sTalkSt->lines*2, 0);

    TalkBgSync(BG0_SYNC_BIT);

    proc->unk64 = 0;

    if (sTalkSt->line_active == 0)
    {
        proc->unk66 = 16;
    }
    else if (sTalkSt->line_active + 1 >= sTalkSt->lines)
    {
        proc->unk66 = sTalkSt->lines * 16;
    }
    else
    {
        proc->unk66 = (sTalkSt->line_active + 1) * 16;
    }
}

void func_08009388(struct Proc * proc)
{
    proc->unk64++;

    SetBgOffset(0, 0, proc->unk64);

    if (proc->unk64 >= proc->unk66)
    {
        SetBgOffset(0, 0, 0);
        func_08009798();

        Proc_Break(proc);
    }
}

void func_080093CC(struct TalkChoiceEnt const * choices, struct Text * text, u16 * tm, int defaultChoice, int color, struct Proc * parent)
{
    struct TalkChoiceProc * proc;

    int x = Text_GetCursor(text) + 16;

    Text_InsertDrawString(text, x,      color, DecodeMsg(choices[0].msg));
    Text_InsertDrawString(text, x + 40, color, DecodeMsg(choices[1].msg));

    PutText(text, tm);

    TalkBgSync(BG0_SYNC_BIT);

    proc = Proc_StartBlocking(gUnk_08B90B0C, parent);

    proc->selectedChoice = defaultChoice;

    proc->x_disp = (((tm - gBg0Tm) & 0x1F) * 8) - gDispIo.bg_off[0].x + x;
    proc->y_disp = (((tm - gBg0Tm) / 0x20) * 8) - gDispIo.bg_off[0].y;

    proc->choices = choices;

    if (proc->choices[defaultChoice - 1].onSwitch)
        proc->choices[defaultChoice - 1].onSwitch();
}

void func_08009480(struct TalkChoiceProc * proc)
{
    if (gpKeySt->pressed & 2)
    {
        PlaySoundEffect(0x38B);

        sTalkChoiceResult = 0;

        Proc_Break(proc);
        return;
    }
    else if (gpKeySt->pressed & 1)
    {
        PlaySoundEffect(0x38A);

        sTalkChoiceResult = proc->selectedChoice;

        Proc_Break(proc);
        return;
    }

    if ((gpKeySt->pressed & 32) && (proc->selectedChoice == 2))
    {
        PlaySoundEffect(0x387);

        proc->selectedChoice = 1;

        if (proc->choices[0].onSwitch)
            proc->choices[0].onSwitch();
    }

    if ((gpKeySt->pressed & 16) && (proc->selectedChoice == 1))
    {
        PlaySoundEffect(0x387);

        proc->selectedChoice = 2;

        if (proc->choices[1].onSwitch)
            proc->choices[1].onSwitch();
    }

    PutUiHand(proc->x_disp + (proc->selectedChoice - 1) * 40 - 4, proc->y_disp);
}

void func_08009588(struct Proc * proc)
{
    TmFillRect_thm(&gBg0Tm[((sTalkSt->y_text + 4) << 5) + sTalkSt->x_text],
        sTalkSt->active_width - 2, sTalkSt->lines * 2, 0);
    TalkBgSync(1);
    proc->unk64 = 0;
}

void func_080095C8(struct Proc * proc)
{
    proc->unk64++;

    SetBgOffset(0, 0, proc->unk64);

    if (proc->unk64 >= 16)
    {
        int i;

        sTalkSt->line_active--;
        sTalkSt->top_text_num++;

        SetBgOffset(0, 0, 0);

        for (i = 0; i < sTalkSt->lines - 1; ++i)
        {
            PutText(TALK_TEXT_BY_LINE(i),
                gBg0Tm + TM_OFFSET(sTalkSt->x_text, sTalkSt->y_text + 2*i));
        }

        TmFillRect(gBg0Tm + TM_OFFSET(sTalkSt->x_text, sTalkSt->y_text + (sTalkSt->lines - 1)*2),
            sTalkSt->active_width - 2, 2, 0);

        ClearText(TALK_TEXT_BY_LINE(sTalkSt->lines - 1));
        Text_SetColor(TALK_TEXT_BY_LINE(sTalkSt->lines - 1), sTalkSt->print_color);

        TalkBgSync(BG0_SYNC_BIT);

        Proc_Break(proc);
    }
}

void func_080096BC(struct Proc * proc)
{
    CleanTalkObjects(0x200, 0x1A, 0x44444444, proc);
}

void func_080096D4(ProcPtr proc)
{
    sTalkSt->line_active--;

    SpriteText_DrawBackground(sTalkText + 1);

    Text_SetColor(sTalkText + 1, TEXT_COLOR_4DEF);
    Text_SetCursor(sTalkText + 1, 4);
}

void func_08009708()
{
    int i;

    sTalkSt->line_active = 0;

    for (i = 0; i < 2; i++)
    {
        SpriteText_DrawBackground(&sTalkText[i]);

        Text_SetColor(&sTalkText[i], TEXT_COLOR_4DEF);
        Text_SetCursor(&sTalkText[i], 4);
    }
}

int func_08009744(int cmd)
{
    return gUnk_08B90B7C[cmd - 4];
}

void ClearTalkBubble()
{
    sTalkSt->speak_talk_face = -1;
    TmFill(gBg1Tm, 0);
    TalkBgSync(2);
    func_08009798();
    SetWinEnable(0, 0, 0);
}

void func_08009798()
{
    int i;

    TmFill(gBg0Tm, 0);
    TalkBgSync(BG0_SYNC_BIT);

    sTalkSt->line_active = 0;
    sTalkSt->unk_82 = 0;
    sTalkSt->put_lines = 0;
    sTalkSt->top_text_num = 0;

    for (i = 0; i < sTalkSt->lines; ++i)
    {
        ClearText(sTalkText + i);
        Text_SetColor(sTalkText + i, sTalkSt->print_color);
    }
}

void func_080097FC()
{
    int i;

    sTalkSt->line_active = FALSE;
    sTalkSt->unk_82 = 0;
    sTalkSt->put_lines = 0;
    sTalkSt->top_text_num = 0;

    for (i = 0; i < sTalkSt->lines; i++)
    {
        ClearText(sTalkText + i);
        Text_SetColor(sTalkText + i, sTalkSt->print_color);
    }
}

void func_08009850(int xAnchor, int yAnchor, int width, int height)
{
    int xTail;
    int kind;
    int tmp;
    int x, y;

    xTail = 0;

    x = 0;
    y = 0;

    TmFill(gBg1Tm, 0);

    if (xAnchor < 16)
        kind = 0;
    else
        kind = 1;

    if (IsBattleDeamonActive())
        kind += 2;

    y = yAnchor - height + 1;

    switch (kind)
    {

    case 0:
        xTail = xAnchor + 3;

        tmp = xTail - width / 2;

        if (tmp <= 0)
            x = 1;
        else
            x = tmp;

        break;

    case 1:
        xTail = xAnchor - 5;

        tmp = xTail + (width + 1) / 2;

        if (tmp > 29)
            x = 29 - width;
        else
            x = xTail - width / 2;

        break;

    case 2:
        x = 9;
        y = 14;

        width = 20;
        xTail = x - 1;
        yAnchor = y + 2;

        break;

    case 3:
        x = 1;
        y = 14;

        width = 20;
        xTail = x + width - 1;
        yAnchor = y + 2;

        break;
    }

    sTalkSt->x_text = x + 1;
    sTalkSt->y_text = y + 1;

    func_08009C18(1, x, y, width, height);

    if (sTalkSt->unk_83 & 2)
    {
        TalkToggleInvertedPalette(sTalkSt->unk_83 & 1);

        sTalkSt->unk_83 ^= 2;
    }

    if (!(sTalkSt->unk_83 & 1))
    {
        func_08009A90(1, xTail, yAnchor, kind);
    }

    func_08009A10(x, y, width, height);

    func_0800998C();

    TalkBgSync(BG1_SYNC_BIT);
}

void func_0800998C()
{
    struct Proc * proc = Proc_Start(gUnk_08B90B8C, (ProcPtr)3);
    proc->unk64 = 0;
}

void func_080099A4(struct Proc * proc)
{
    u8 const * gUnk_08193DDC[] =
    {
        gUnk_083FBF80,
        gUnk_083FBF30,
        gUnk_083FBEDC,
        gUnk_083FBE80,
        gUnk_083FBDDC,
        gUnk_083FBD34 ,
        NULL,
    };

    if ((proc->unk64++) & 1)
        return;

    Decompress(gUnk_08193DDC[proc->unk64 >> 1],
        (u8 *) VRAM + GetBgChrOffset(1) + 0x10 * CHR_SIZE);

    if (gUnk_08193DDC[(proc->unk64 >> 1) + 1] == NULL)
        Proc_Break(proc);
}

void func_08009A10(int x, int y, int width, int height)
{
    SetWinEnable(1, 0, 0);

    SetWin0Box((x + 1) * 8, (y + 1) * 8, (x + width - 1) * 8, (y + height - 1) * 8);

    SetWin0Layers(1, 1, 1, 1, 1);
    SetWOutLayers(0, 1, 1, 1, 1);
}

void func_08009A90(int bg, int x, int y, int kind)
{
    u16* buf = GetBgTilemap(bg);

    switch (kind)
    {
        case 0:
            buf[TM_OFFSET_(x    , y    )] = TILEREF(0x10 + 4, 3);
            buf[TM_OFFSET_(x + 1, y    )] = TILEREF(0x10 + 4, 3) + TILE_HFLIP;
            buf[TM_OFFSET_(x    , y + 1)] = TILEREF(0x10 + 6, 3) + TILE_HFLIP;
            buf[TM_OFFSET_(x + 1, y + 1)] = TILEREF(0x10 + 5, 3) + TILE_HFLIP;

            break;

        case 1:
            buf[TM_OFFSET_(x    , y    )] = TILEREF(0x10 + 4, 3);
            buf[TM_OFFSET_(x + 1, y    )] = TILEREF(0x10 + 4, 3) + TILE_HFLIP;
            buf[TM_OFFSET_(x    , y + 1)] = TILEREF(0x10 + 5, 3);
            buf[TM_OFFSET_(x + 1, y + 1)] = TILEREF(0x10 + 6, 3);

            break;

        case 2:
            buf[TM_OFFSET_(x    , y    )] = TILEREF(0x10 + 8, 3) + TILE_HFLIP;
            buf[TM_OFFSET_(x    , y + 1)] = TILEREF(0x10 + 9, 3) + TILE_HFLIP;
            buf[TM_OFFSET_(x + 1, y    )] = TILEREF(0x10 + 7, 3) + TILE_HFLIP;
            buf[TM_OFFSET_(x + 1, y + 1)] = TILEREF(0x10 + 7, 3) + TILE_HFLIP + TILE_VFLIP;

            break;

        case 3:
            buf[TM_OFFSET_(x    , y    )] = TILEREF(0x10 + 7, 3);
            buf[TM_OFFSET_(x    , y + 1)] = TILEREF(0x10 + 7, 3) + TILE_VFLIP;
            buf[TM_OFFSET_(x + 1, y    )] = TILEREF(0x10 + 8, 3);
            buf[TM_OFFSET_(x + 1, y + 1)] = TILEREF(0x10 + 9, 3);

            break;

        case 4:
            buf[TM_OFFSET_(x    , y    )] = TILEREF(0x10 + 9, 3) + TILE_HFLIP + TILE_VFLIP;
            buf[TM_OFFSET_(x    , y + 1)] = TILEREF(0x10 + 8, 3) + TILE_HFLIP + TILE_VFLIP;
            buf[TM_OFFSET_(x + 1, y    )] = TILEREF(0x10 + 7, 3) + TILE_HFLIP;
            buf[TM_OFFSET_(x + 1, y + 1)] = TILEREF(0x10 + 7, 3) + TILE_HFLIP + TILE_VFLIP;

            break;

        case 5:
            buf[TM_OFFSET_(x    , y    )] = TILEREF(0x10 + 7, 3);
            buf[TM_OFFSET_(x    , y + 1)] = TILEREF(0x10 + 7, 3) + TILE_VFLIP;
            buf[TM_OFFSET_(x + 1, y    )] = TILEREF(0x10 + 9, 3) + TILE_VFLIP;
            buf[TM_OFFSET_(x + 1, y + 1)] = TILEREF(0x10 + 8, 3) + TILE_VFLIP;

            break;
    }
}

void func_08009C18(int id, int x, int y, int width, int height)
{
    int i, j;

    u16 * tilemap = GetBgTilemap(id);
    width--;
    height--;

    for (i = x; i < x + width; ++i)
    {
        tilemap[TM_OFFSET_(i, y)]          = TILEREF(0x10 + 1, BGPAL_TALK_BUBBLE);
        tilemap[TM_OFFSET_(i, y + height)] = TILEREF(0x10 + 1, BGPAL_TALK_BUBBLE) + TILE_VFLIP;
    }

    for (i = y; i < y + height; ++i)
    {
        tilemap[TM_OFFSET_(x, i)]         = TILEREF(0x10 + 2, BGPAL_TALK_BUBBLE);
        tilemap[TM_OFFSET_(x + width, i)] = TILEREF(0x10 + 2, BGPAL_TALK_BUBBLE) + TILE_HFLIP;
    }

    for (i = x + 1; i < x + width; ++i)
        for (j = y + 1; j < y + height; ++j)
            tilemap[TM_OFFSET(i, j)] = TILEREF(0x10 + 3, BGPAL_TALK_BUBBLE);

    tilemap[TM_OFFSET_(x,         y)]          = TILEREF(0x10 + 0, BGPAL_TALK_BUBBLE);
    tilemap[TM_OFFSET_(x + width, y)]          = TILEREF(0x10 + 0, BGPAL_TALK_BUBBLE) + TILE_HFLIP;
    tilemap[TM_OFFSET_(x,         y + height)] = TILEREF(0x10 + 0, BGPAL_TALK_BUBBLE) + TILE_VFLIP;
    tilemap[TM_OFFSET_(x + width, y + height)] = TILEREF(0x10 + 0, BGPAL_TALK_BUBBLE) + TILE_HFLIP + TILE_VFLIP;
}

void nullsub_25()
{
}

void func_08009D58(struct Proc* proc)
{
    proc->unk58 = 0;

    if (!CheckTalkFlag(0x100))
    {
        SetBlendTargetA(0, 1, 0, 0, 0);
        SetBlendTargetB(0, 0, 1, 1, 1);

        SetBlendBackdropB(1);

        gDispIo.win_ct.win0_enable_blend = 1;
        gDispIo.win_ct.wout_enable_blend = 1;

        SetBlendAlpha(0, 0x10);
    }
}

void func_08009DC8(struct Proc* proc)
{
    func_08009850(proc->unk64, proc->unk66, proc->unk68, proc->unk6A);
    Proc_Break(proc);
}

void func_08009DFC(struct Proc* proc)
{
    int var;

    proc->unk58++;

    var = Interpolate(4, -30, 0, proc->unk58, 12);
    SetBgOffset(1, 0, var / 2);

    if (!CheckTalkFlag(0x100))
    {
        SetBlendAlpha(var/2 + 0x10, 1 - var/2);
    }

    if (proc->unk58 == 12)
    {
        Proc_Break(proc);
    }
}

int func_08009F04(int talk_face);
void func_08009E7C(int talk_face, struct Proc* parent)
{
    struct Proc* proc = Proc_StartBlocking(gUnk_08B90B9C, parent);

    proc->unk64 = func_08009F04(talk_face);
    proc->unk66 = 8;
    proc->unk68 = sTalkSt->active_width;
    proc->unk6A = 6;

    if (proc->unk64 < 0)
        proc->unk64 = 0;

    if (proc->unk64 > 29)
        proc->unk64 = 30;

    sTalkSt->speak_talk_face = talk_face;
    sTalkSt->speak_width = sTalkSt->active_width;
}

bool func_08009EE0()
{
    if (sTalkSt->speak_talk_face == sTalkSt->active_talk_face && sTalkSt->speak_width == sTalkSt->active_width)
    {
        return TRUE;
    }

    return FALSE;
}

int func_08009F04(int talk_face)
{
    if (IsBattleDeamonActive())
    {
        if (talk_face < 3)
        {
            return 4;
        }
        else
        {
            return 0x1a;
        }
    }
    else
    {
        return gUnk_08B90BCC[talk_face];
    }
}

void SetTalkFaceDisp(int talk_face, int faceDisp)
{
    int gUnk_08193DF8[] = { 0, FACE_DISP_SMILE };
    int disp;

    if (talk_face == TALK_FACE_NONE)
        return;

    disp = GetFaceDisp(sTalkSt->faces[talk_face]);
    disp &= ~(FACE_DISP_SMILE | FACE_DISP_TALK_1 | FACE_DISP_TALK_2);

    SetFaceDisp(sTalkSt->faces[talk_face], disp | faceDisp | gUnk_08193DF8[sTalkSt->unk_17]);
}

void SetTalkFaceMouthMove(int face)
{
    SetTalkFaceDisp(face, 0x10);
}

void SetTalkFaceNoMouthMove(int face)
{
    SetTalkFaceDisp(face, 0);
}

bool IsTalkActive(void)
{
    return Proc_Exists(ProcScr_Talk);
}

bool FaceExists(void)
{
    return Proc_Exists(ProcScr_Face);
}

int GetTalkChoiceResult(void)
{
    return sTalkChoiceResult;
}

void SetTalkChoiceResult(int res)
{
    sTalkChoiceResult = res;
}

void SetTalkNumber(int number)
{
    sTalkSt->number = number;
}

void SetTalkUnkStr(char* buffer)
{
    strcpy(sTalkSt->buf_unk_str, buffer);
}

void PrintStringToTexts(struct Text ** texts, char const * str, u16 * tm, int unk)
{
    int uh;

    int line = 0;

    while (1) {
        uh = 0;

        switch (*str) {
            case 0:
                uh += 1;
                break;

            case 1:
                PutText(texts[line], tm + line * 0x40);

                line++;
                str++;

                if (line >= unk) {
                    return;
                }

                break;
        }

        if (uh != 0) {
            break;
        }

        str = Text_DrawCharacter(texts[line], str);
        continue;
    }

    PutText(texts[line], tm + line * 0x40);
}

void TalkPutSpriteText_OnIdle(struct Proc * proc)
{
    PutSprite(3,
        proc->x, proc->y, gUnk_08B90C06,
        OAM2_CHR(proc->unk52) | OAM2_PAL(proc->unk64));

    PutSprite(3,
        proc->x, proc->y, gUnk_08B90BEC,
        OAM2_CHR(proc->unk52) | OAM2_PAL(sTalkFont.palid));
}

void func_0800A0FC()
{
    SetOnHBlankA(0);
}

void func_0800A108()
{
    CallDelayed(&func_0800A0FC, 1);
}

int func_0800A11C(char const * str, bool isBubbleOpen)
{
    char buf[0x20];

    int speakFace = sTalkSt->speak_talk_face;
    int activeFace = sTalkSt->active_talk_face;

    s32 chrlen;

    int currentLineLen = 0;
    int maxLineLen = 24;

    for (;TRUE;)
    {
        switch (*str)
        {

        case 0x00: // end
            if (currentLineLen > maxLineLen)
                maxLineLen = currentLineLen;

            currentLineLen = 0;

            goto ret;

        case 0x01 ... 0x02:
            if (currentLineLen > maxLineLen)
                maxLineLen = currentLineLen;

            currentLineLen = 0;

            str++;
            break;

        case 0x03:
            currentLineLen += 12;
            str++;
            break;

        case 0x04 ... 0x07:
            str++;
            break;

        case 0x08 ... 0x0F:
            activeFace = *str - 0x08;
            str++;
            break;

        case 0x10:
            for (;TRUE;)
            {
                switch (*str)
                {

                case 0x08 ... 0x0F:
                    activeFace = *str - 0x08;
                    str++;
                    continue;

                case 0x10:
                    str++;
                    str++;
                    str++;

                    continue;

                }

                break;
            }

            break;

        case 0x11:
            if (activeFace == speakFace)
            {
                if (currentLineLen > maxLineLen)
                    maxLineLen = currentLineLen;

                currentLineLen = 0;

                goto ret;
            }

            str++;
            break;

        case 0x12 ... 0x15:
            if (!isBubbleOpen)
            {
                if (currentLineLen > maxLineLen)
                    maxLineLen = currentLineLen;

                currentLineLen = 0;

                goto ret;
            }

            str++;
            break;

        case 0x16 ... 0x17:
            str++;
            break;

        case 0x18 ... 0x1B: // choice
            currentLineLen += 80;
            str++;
            break;

        case 0x1C:
            str++;
            break;

        case 0x80:
            str++;

            switch (*str)
            {

            case 0x00 ... 0x04:
            case 0x07 ... 0x09:
            case 0x16 ... 0x1F:
            case 0x21:
            case 0x24:
            case 0x25:
                str++;
                break;

            case 0x05:
                func_08014590(sTalkSt->number, buf);
                currentLineLen += func_0800A11C(buf, isBubbleOpen);

                str++;
                break;

            case 0x20:
                currentLineLen += GetStringTextLen(GetTacticianName());

                str++;
                break;

            case 0x06:
                currentLineLen += func_0800A11C(sTalkSt->buf_unk_str, isBubbleOpen);

                str++;
                break;

            case 0x0A ... 0x11:
                activeFace = *str - 0x0A;
                str++;
                break;

            case 0x12 ... 0x15:
            case 0x22 ... 0x23:
                break;

            default:
                break;

            }

            break;

        case 0x81:
            if (str[1] == 0x40)
            {
                str += 2;
                currentLineLen += 6;
                break;
            }

            // fallthrough

        default:
            if ((activeFace != speakFace) && (activeFace != TALK_FACE_NONE))
            {
                if (!isBubbleOpen)
                {
                    isBubbleOpen = TRUE;
                    speakFace = activeFace;
                }
                else
                {
                    if (currentLineLen > maxLineLen)
                        maxLineLen = currentLineLen;

                    currentLineLen = 0;

                    goto ret;
                }
            }

            str = GetCharTextLen(str, &chrlen);
            currentLineLen += chrlen;
        }
    }

ret:
    return maxLineLen;
}

bool func_0800A4E8()
{
    return FALSE;
}

void func_0800A4EC()
{
}

void TalkBgSync(int bits)
{
    if (!CheckTalkFlag(0x20))
    {
        EnableBgSync(bits);
    }
}
