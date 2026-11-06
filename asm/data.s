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
    .incbin "baserom.gba", 0xB90658, 0xB92474 - 0xB90658

    .data

    @ B928BC ... CF0CD0

    .incbin "baserom.gba", 0xB928BC, 0xCC1B1C - 0xB928BC

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
