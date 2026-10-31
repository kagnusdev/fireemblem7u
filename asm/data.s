    .section ".data_0", "a"

    @ B857F8 ... B92474

    .incbin "baserom.gba", 0xB857F8, 0xB92474 - 0xB857F8

    .data

    @ B928A4 ... CF0CD0

    .incbin "baserom.gba", 0xB928A4, 0xCC1B1C - 0xB928A4

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
