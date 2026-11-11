    .section ".data_0", "a"

    @ B8590C ... B92474

    .incbin "baserom.gba", 0xB8590C, 0xB8610C - 0xB8590C

    .global TextColorLutTable
TextColorLutTable:
    .incbin "baserom.gba", 0xB8610C, 0xB86140 - 0xB8610C

    .global ProcScr_TextPrint
ProcScr_TextPrint:
    .incbin "baserom.gba", 0xB86140, 0xB86150 - 0xB86140

    .global ProcScr_GreenTextColor
ProcScr_GreenTextColor:
    .incbin "baserom.gba", 0xB86150, 0xB896B0 - 0xB86150

    .global TextGlyphs_System
TextGlyphs_System:
    .incbin "baserom.gba", 0xB896B0, 0xB8B5B0 - 0xB896B0

    .global TextGlyphs_Talk
TextGlyphs_Talk:
    .incbin "baserom.gba", 0xB8B5B0, 0xB901B0 - 0xB8B5B0

    .global TextGlyphs_Special
TextGlyphs_Special:
    .incbin "baserom.gba", 0xB901B0, 0xB905B0 - 0xB901B0


    .section ".data_0_1", "a"

    .global gUnk_08B909BC
gUnk_08B909BC:
    .incbin "baserom.gba", 0xB909BC, 0xB909D4 - 0xB909BC

    .global ProcScr_Talk
ProcScr_Talk:
    .incbin "baserom.gba", 0xB909D4, 0xB90A04 - 0xB909D4

    .global gUnk_08B90A04
gUnk_08B90A04:
    .incbin "baserom.gba", 0xB90A04, 0xB90A0C - 0xB90A04

    .global gUnk_08B90A0C
gUnk_08B90A0C:
    .incbin "baserom.gba", 0xB90A0C, 0xB90A2C - 0xB90A0C

    .global gUnk_08B90A2C
gUnk_08B90A2C:
    .incbin "baserom.gba", 0xB90A2C, 0xB90A4C - 0xB90A2C

    .global gUnk_08B90A4C
gUnk_08B90A4C:
    .incbin "baserom.gba", 0xB90A4C, 0xB90A8C - 0xB90A4C

    .global gUnk_08B90A8C
gUnk_08B90A8C:
    .incbin "baserom.gba", 0xB90A8C, 0xB90ACC - 0xB90A8C

    .global gUnk_08B90ACC
gUnk_08B90ACC:
    .incbin "baserom.gba", 0xB90ACC, 0xB90AEC - 0xB90ACC

    .global gUnk_08B90AEC
gUnk_08B90AEC:
    .incbin "baserom.gba", 0xB90AEC, 0xB90AFC - 0xB90AEC

    .global gUnk_08B90AFC
gUnk_08B90AFC:
    .incbin "baserom.gba", 0xB90AFC, 0xB90B0C - 0xB90AFC

    .global gUnk_08B90B0C
gUnk_08B90B0C:
    .incbin "baserom.gba", 0xB90B0C, 0xB90B24 - 0xB90B0C

    .global gUnk_08B90B24
gUnk_08B90B24:
    .incbin "baserom.gba", 0xB90B24, 0xB90B4C - 0xB90B24

    .global gUnk_08B90B4C
gUnk_08B90B4C:
    .incbin "baserom.gba", 0xB90B4C, 0xB90B7C - 0xB90B4C

    .global gUnk_08B90B7C
gUnk_08B90B7C:
    .incbin "baserom.gba", 0xB90B7C, 0xB90B8C - 0xB90B7C

    .global gUnk_08B90B8C
gUnk_08B90B8C:
    .incbin "baserom.gba", 0xB90B8C, 0xB90B9C - 0xB90B8C

    .global gUnk_08B90B9C
gUnk_08B90B9C:
    .incbin "baserom.gba", 0xB90B9C, 0xB90BCC - 0xB90B9C

    .global gUnk_08B90BCC
gUnk_08B90BCC:
    .incbin "baserom.gba", 0xB90BCC, 0xB90BEC - 0xB90BCC

    .global gUnk_08B90BEC
gUnk_08B90BEC:
    .incbin "baserom.gba", 0xB90BEC, 0xB90C06 - 0xB90BEC

    .global gUnk_08B90C06
gUnk_08B90C06:
    .incbin "baserom.gba", 0xB90C06, 0xB90C68 - 0xB90C06

    .global data_0_1End
data_0_1End:


    .section ".data_0_2", "a"

    .incbin "baserom.gba", 0xB90C9C, 0xB90D88 - 0xB90C9C

    .global ProcScr_UnkEvt
ProcScr_UnkEvt:
    .incbin "baserom.gba", 0xB90D88, 0xB90DE8 - 0xB90D88

gUnk_08B90DE8:
    .incbin "baserom.gba", 0xB90DE8, 0xB92474 - 0xB90DE8

    .global data_0_2End
data_0_2End:


    .section ".data_0_3", "a"

    @ B928BC ... B92AF8
    .incbin "baserom.gba", 0xB928BC, 0xB92AF8 - 0xB928BC


    .data

    @ B92E70 ... CF0CD0
    .global dataStart
dataStart:
    .incbin "baserom.gba", 0xB92E70, 0xB92E88 - 0xB92E70

    .global gUnk_08B92E88
gUnk_08B92E88:
    .incbin "baserom.gba", 0xB92E88, 0xB92EB0 - 0xB92E88

    .global gUnitLut
gUnitLut:
    .incbin "baserom.gba", 0xB92EB0, 0x400

gUnk_08B932B0:
    .incbin "baserom.gba", 0xB932B0, 0xB93374 - 0xB932B0


    .section ".data_1", "a"

gUnk_08B935EC:
    .incbin "baserom.gba", 0xB935EC, 0xB93664 - 0xB935EC

    .global ProcUnk_08B93664
ProcUnk_08B93664:
    .incbin "baserom.gba", 0xB93664, 0xB9367C - 0xB93664

    .global ProcScr_ADJUSTSFROMXI
ProcScr_ADJUSTSFROMXI:
    .incbin "baserom.gba", 0xB9367C, 0xB9369C - 0xB9367C

gUnk_08B9369C:
    .incbin "baserom.gba", 0xB9369C, 0xB937AC - 0xB9369C

    .global ProcScr_BmMain_08B937AC
ProcScr_BmMain_08B937AC:
    .incbin "baserom.gba", 0xB937AC, 0xB937F4 - 0xB937AC

gUnk_08B937F4:
    .incbin "baserom.gba", 0xB937F4, 0xB93934 - 0xB937F4

    .global ProcScr_ChapterIntrofx
ProcScr_ChapterIntrofx:
    .incbin "baserom.gba", 0xB93934, 0xB93ADC - 0xB93934

    .global ProcScr_BmMain_08B93ADC
ProcScr_BmMain_08B93ADC:
    .incbin "baserom.gba", 0xB93ADC, 0xB93B04 - 0xB93ADC

gUnk_B93B04:
    .incbin "baserom.gba", 0xB93B04, 0xB94578 - 0xB93B04

    .global ProcScr_UpdateTraps
ProcScr_UpdateTraps:
    .incbin "baserom.gba", 0xB94578, 0xB945C8 - 0xB94578

gUnk_08B945C8:
    .incbin "baserom.gba", 0xB945C8, 0xB95AAC - 0xB945C8

    .global gUnitActionMenuDef
gUnitActionMenuDef:
    .incbin "baserom.gba", 0xB95AAC, 0xB95AF4 - 0xB95AAC

    .global gMapMenuDef
gMapMenuDef:
    .incbin "baserom.gba", 0xB95AF4, 0xB96460 - 0xB95AF4

    .global ProcScr_SALLYCURSOR
ProcScr_SALLYCURSOR:
    .incbin "baserom.gba", 0xB96460, 0xB96998 - 0xB96460

gUnk_08B96998:
    .incbin "baserom.gba", 0xB96998, 0xB96BAC - 0xB96998

    .global ProcScr_BmMain_08B96BAC
ProcScr_BmMain_08B96BAC:
    .incbin "baserom.gba", 0xB96BAC, 0xB96C0C - 0xB96BAC

    .global ProcScr_BmMain_08B96C0C
ProcScr_BmMain_08B96C0C:
    .incbin "baserom.gba", 0xB96C0C, 0xB96C74 - 0xB96C0C

    .global ProcScr_BmMain_08B96C74
ProcScr_BmMain_08B96C74:
    .incbin "baserom.gba", 0xB96C74, 0xB96CCC - 0xB96C74

gUnk_08B96CCC:
    .incbin "baserom.gba", 0xB96CCC, 0xB96E80 - 0xB96CCC

    .global ProcScr_AiPhase
ProcScr_AiPhase:
    .incbin "baserom.gba", 0xB96E80, 0xB96EA8 - 0xB96E80

    .global ProcUnk_08B96EA8
ProcUnk_08B96EA8:
    .incbin "baserom.gba", 0xB96EA8, 0xBDCE4C - 0xB96EA8

    .global gCharacterData
gCharacterData:
    .incbin "baserom.gba", 0xBDCE4C, 0xBE01B0 - 0xBDCE4C

    .global gClassData
gClassData:
    .incbin "baserom.gba", 0xBE01B0, 0xBE3C16 - 0xBE01B0

    .global MoveTable_Flying
MoveTable_Flying:
    .incbin "baserom.gba", 0xBE3C16, 0xBE3C98 - 0xBE3C16

    .global MoveTable_Ballista
MoveTable_Ballista:
    .incbin "baserom.gba", 0xBE3C98, 0xC96584 - 0xBE3C98

    .global FaceInfoTable
FaceInfoTable:
    .incbin "baserom.gba", 0xC96584, 0xCC1B1C - 0xC96584

    .global gUnk_08CC1B1C
gUnk_08CC1B1C:
    .incbin "baserom.gba", 0xCC1B1C, 0xCC1B50 - 0xCC1B1C

    .global gUnk_08CC1B50
gUnk_08CC1B50:
    .incbin "baserom.gba", 0xCC1B50, 0xCC1B84 - 0xCC1B50

    .global gUnk_08CC1B84
gUnk_08CC1B84:
    .incbin "baserom.gba", 0xCC1B84, 0xCC1BF0 - 0xCC1B84

    .global gUnk_08CC1BF0
gUnk_08CC1BF0:
    .incbin "baserom.gba", 0xCC1BF0, 0xCE7768 - 0xCC1BF0

    .global ProcScr_StartWorldMapEvent
ProcScr_StartWorldMapEvent:
    .incbin "baserom.gba", 0xCE7768, 0xCEDEE4 - 0xCE7768

    .global ProcScr_Unk_08CEDEE4
ProcScr_Unk_08CEDEE4:
    .incbin "baserom.gba", 0xCEDEE4, 0xCEE084 - 0xCEDEE4

    .global ProcScr_Unk_08CEE084
ProcScr_Unk_08CEE084:
    .incbin "baserom.gba", 0xCEE084, 0xCEE0C4 - 0xCEE084

    .global ProcScr_Unk_08CEE0C4
ProcScr_Unk_08CEE0C4:
    .incbin "baserom.gba", 0xCEE0C4, 0xCEF10C - 0xCEE0C4

    .global ProcScr_OpeningSequence
ProcScr_OpeningSequence:
    .incbin "baserom.gba", 0xCEF10C, 0xCF0CD0 - 0xCEF10C


    .section ".data_2", "a"

    @ this is more than just the .data section (starting with a bunch of garbage)
    @ I am very lazy

    @ CF6A94 ... 1000000

    .incbin "baserom.gba", 0xCF6A94, 0x1000000 - 0xCF6A94
