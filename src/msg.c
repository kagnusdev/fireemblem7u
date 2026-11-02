#include "gbafe.h"

struct MsgBuffer EWRAM_DATA sMsgString = { 0 };
s32 EWRAM_DATA sActiveMsg = 0;

char *DecodeMsg(int id)
{
    if (id == sActiveMsg)
        return sMsgString.buffer1;

    DecodeStringRam(gMsgTable[id], sMsgString.buffer1);
    sActiveMsg = id;

    return sMsgString.buffer1;
}

char *DecodeMsgInBuffer(int id, char *buffer)
{
    DecodeStringRam(gMsgTable[id], buffer);
    return buffer;
}

char *MsgExpand(void)
{
    char * src = sMsgString.buffer2;
    char * dst = sMsgString.buffer3;

    StringCopy(src, sMsgString.buffer1);

    while (*src != 0)
    {
        if (*src < 0x20)
        {
            *dst++ = *src++;
        }
        else if (*src != 0x80)
        {
            *dst++ = *src++;
        }
        else
        {
            int slot;

            src++;

            switch (*src)
            {
            case 0x12:
                slot = 0;
                break;

            case 0x13:
                slot = 1;
                break;

            case 0x14:
                slot = 2;
                break;

            case 0x15:
                slot = 3;
                break;

            case 0x20:
                StringCopy(dst, GetTacticianName());
                goto next;

            case 0x22:
                StringCopy(dst, GetItemNameWithArticle(gActionSt.arena_begin_rand_st[0], 0));
                goto next;

            default:
                *dst++ = 0x80;
                *dst++ = *src++;
                continue;
            }

            StringCopy(dst, DecodeMsg(GetCharacterData(gPlaySt.unk1C[slot])->nameTextId));

        next:
            while (*dst != 0)
                dst++;

            src++;
        }
    }

    *dst = 0;
    return sMsgString.buffer3;
}

const char *gStrPrefix[][2] = {
    {"a ", "A "},
    {"an ", "An "},
    {"the ", "The "},
};

char const *GetArticle(char *str, bool is_unique, bool is_capital)
{
    u32 capital = (u32)((0 - is_capital) | is_capital) >> 0x1f;

    if (is_unique)
    {
        return gStrPrefix[2][capital];
    }

    switch (str[0])
    {
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'U':
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            return gStrPrefix[1][capital];
        default:
            return gStrPrefix[0][capital];
    }
}

char *func_08012EFC(char const *src, char *dst)
{
    while (*src)
    {
        *dst++ = *src++;
    }
    *dst = 0;
    return dst;
}

char *func_08012F14(bool8 with_article, bool8 is_unique, bool8 is_capital)
{
    char *src = sMsgString.buffer5;
    char *dst = sMsgString.buffer6;
    char *r6 = src + 0x200; // bug, wanted to use sMsgString.buffer4 (src - 0x200) instead?
    char *sl = sMsgString.buffer6;

    StringCopy(src, sMsgString.buffer1);

    while (*src != 0)
    {
        if (*src < 0x20)
        {
            *dst++ = *src++;
        }
        else if (*src != 0x80)
        {
            *dst++ = *src++;
        }
        else
        {
            src++;

            switch (*src)
            {
            case 0x20:
                StringCopy(dst, GetTacticianName());
                break;

            default:
                *dst++ = 0x80;
                *dst++ = *src++;
                continue;
            }

            while (*dst != 0)
                dst++;

            src++;
        }
    }

    *dst = 0;

    if (with_article)
    {
        r6 = func_08012EFC(GetArticle(sl, is_unique, is_capital), r6);
        func_08012EFC(sl, r6);

        return (char *)&sActiveMsg; // same value as sMsgString.buffer5 + 0x200
    }

    return sMsgString.buffer6;
}
