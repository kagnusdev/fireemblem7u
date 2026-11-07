#pragma once

#include "global.h"

enum talk_vide {
    BGCHR_TALK = 0x80,

    BGPAL_TALK_BACKGROUND = 8,
};

enum talk_choice {
    TALK_RESULT_CANCEL,
    TALK_RESULT_YES,
    TALK_RESULT_NO,
};

enum talk_flag {
    TALK_FLAG_INSTANTSHIFT = 1 << 0,
    TALK_FLAG_NOBUBBLE = 1 << 1,
    TALK_FLAG_NOSKIP = 1 << 2,
    TALK_FLAG_NOFAST = 1 << 3,
    TALK_FLAG_OPAQUE = 1 << 4,
    TALK_FLAG_SPRITE = 1 << 5,
    TALK_FLAG_SILENT = 1 << 6,
    TALK_FLAG_7 = 1 << 7,
};

enum talk_face
{
    TALK_FACE_0,
    TALK_FACE_1,
    TALK_FACE_2,
    TALK_FACE_3,
    TALK_FACE_4,
    TALK_FACE_5,
    TALK_FACE_6,
    TALK_FACE_7,

    TALK_FACE_COUNT,

    TALK_FACE_NONE = 0xFF,
};


struct TalkSt
{
    /* 00 */ char const * str;
    /* 04 */ char const * str_back;
    /* 08 */ u8 print_color;
    /* 09 */ u8 line_active;
    /* 0A */ u8 lines;
    /* 0B */ u8 top_text_num;
    /* 0C */ u8 x_text;
    /* 0D */ u8 y_text;
    /* 0E */ u8 active_width;
    /* 0F */ s8 speak_talk_face;
    /* 10 */ u8 speak_width;
    /* 11 */ u8 active_talk_face;
    /* 12 */ s8 instant_print;
    /* 13 */ s8 print_delay;
    /* 14 */ s8 print_clock;
    /* 15 */ u8 put_lines;
    /* 16 */ u8 unk_16;
    /* 17 */ u8 unk_17;
    /* 18 */ struct FaceProc * faces[TALK_FACE_COUNT];
    /* 38 */ ProcFunc unk_38;
    /* 3C */ int number;
    /* 40 */ char buf_number_str[0x20];
    /* 60 */ char buf_unk_str[0x20];
    /* 80 */ u16 unk_80;
    /* 82 */ u8 unk_82;
    /* 83 */ u8 unk_83;
};

struct TalkChoiceEnt
{
    u16 msg;
    Func onSwitch;
};

struct TalkChoiceProc
{
    PROC_HEADER;

    short selectedChoice;
    short x_disp;
    short y_disp;
    int unused30;
    struct TalkChoiceEnt const * choices;
};

struct ProcTalkAdvance {
    PROC_HEADER;

    STRUCT_PAD(0x29, 0x4C);

    void * dst;
    int unk50;
    int lines, _fill;

    STRUCT_PAD(0x5C, 0x64);

    s16 timer;
};

// ??? func_08007D80
// ??? func_08007DB8
// ??? func_08007DD4
void InitTalk(int chr, int lines, bool unpack_bubble);
// ??? InitSpriteTalk
// ??? func_08007F50
void func_08007F64();
// ??? StartTalkExt
// ??? StartTalkMsg
// ??? StartTalkMsgExt
// ??? StartTalk
// ??? EndTalk
// ??? SetTalkLines
// ??? ClearAllTalkFlags
// ??? SetTalkFlag
// ??? SetTalkFunc
// ??? ClearTalkFlag
// ??? CheckTalkFlag
// ??? func_080080D8
// ??? func_080080F4
// ??? TalkSkipListener_OnIdle
// ??? func_080081E4
// ??? func_08008218
bool func_0800838C(ProcPtr proc);
bool func_08008478(ProcPtr proc);
// ??? LockTalk
// ??? IsTalkLocked
// ??? ResumeTalk
// ??? func_080084EC
// ??? TalkToggleInvertedPalette
int TalkInterpret(ProcPtr proc);
void func_08008E28(int);
void func_08008E34(ProcPtr proc);
// ??? func_08008F18
// ??? func_08008F38
void func_08008F6C(int talk_face, int toBack);
void func_08008FC8(int talkFaceFrom, int talkFaceTo);
bool func_08009020();
void func_0800903C(int talkFaceFrom, int talkFaceTo, bool isSwap);
// ??? TalkFaceMove_OnInit
// ??? TalkFaceMove_OnIdle
// ??? func_080091F0
// ??? TalkPause_OnIdle
// ??? TalkWaitForInput_OnIdle
// ??? nullsub_24
void func_080092BC(struct Proc * parent, int x, int y);
// ??? func_080092E8
// ??? func_0800931C
// ??? func_08009388
void func_080093CC(struct TalkChoiceEnt const * choices, struct Text * text, u16 * tm, int defaultChoice, int color, struct Proc * parent);
// ??? func_08009480
// ??? func_08009588
// ??? func_080095C8
// ??? func_080096BC
// ??? func_080096D4
void func_08009708();
int func_08009744(int cmd);
void ClearTalkBubble();
void func_08009798();
void func_080097FC();
// ??? func_08009850
void func_0800998C();
// ??? func_080099A4
void func_08009A10(int x, int y, int width, int height);
void func_08009A90(int bg, int x, int y, int kind);
void func_08009C18(int id, int x, int y, int width, int height);
// ??? nullsub_25
// ??? func_08009D58
// ??? func_08009DC8
// ??? func_08009DFC
void func_08009E7C(int talk_face, struct Proc* parent);
bool func_08009EE0();
int func_08009F04(int talk_face);
// ??? SetTalkFaceDisp
void SetTalkFaceMouthMove(int face);
void SetTalkFaceNoMouthMove(int face);
// ??? IsTalkActive
// ??? FaceExists
int GetTalkChoiceResult(void);
void SetTalkChoiceResult(int res);
void SetTalkNumber(int number);
// ??? SetTalkUnkStr
// ??? PrintStringToTexts
// ??? TalkPutSpriteText_OnIdle
// ??? func_0800A0FC
// ??? func_0800A108
int func_0800A11C(char const * str, bool isBubbleOpen);
// ??? func_0800A4E8
// ??? func_0800A4EC
// ??? sub_800A3A4
// ??? StartTalkDebug
// ??? sub_800A3B8
// ??? sub_800A3C8
void TalkBgSync(int bits);

bool TalkAdvanceDeamon_Loop(ProcPtr proc);
void TalkAdvanceDeamon_End(ProcPtr proc);
void CleanTalkObjects(int chr, int lines, int default_val, ProcPtr parent);
void TalkAdvance_Init(struct ProcTalkAdvance * proc);
void TalkAdvance_Loop(struct ProcTalkAdvance * proc);

extern struct ProcCmd gUnk_08BFFB30[];
extern struct TalkSt * CONST_DATA sTalkSt;
extern struct ProcCmd gUnk_08B909BC[];
extern struct ProcCmd ProcScr_Talk[];
extern struct ProcCmd gUnk_08B90A04[];
extern struct ProcCmd gUnk_08B90A0C[];
extern struct ProcCmd gUnk_08B90A2C[];
extern struct ProcCmd gUnk_08B90A4C[];
extern u16 const * CONST_DATA gUnk_08B90A8C[];
extern struct ProcCmd gUnk_08B90ACC[];
extern struct TalkChoiceEnt CONST_DATA gUnk_08B90AEC[];
extern struct TalkChoiceEnt CONST_DATA gUnk_08B90AFC[];
extern struct ProcCmd gUnk_08B90B0C[];
extern struct ProcCmd gUnk_08B90B24[];
extern struct ProcCmd gUnk_08B90B4C[];
extern int CONST_DATA gUnk_08B90B7C[];
extern struct ProcCmd gUnk_08B90B8C[];
extern struct ProcCmd gUnk_08B90B9C[];
extern int CONST_DATA gUnk_08B90BCC[];
extern u16 gUnk_08B90BEC[];
extern u16 gUnk_08B90C06[];
extern struct ProcCmd gUnk_08BFFE18[];
extern struct ProcCmd ProcScr_TalkAdvanceDeamon[];
extern struct ProcCmd ProcScr_TalkAdvance[];
