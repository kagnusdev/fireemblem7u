    .section ".rodata"

    @ 0C5E50 ... 677370

    .incbin "baserom.gba", 0x0C5E50, 0x0C5EA4 - 0x0C5E50

    @ 0C5EA4
    .global Img_Icons
Img_Icons:
    .incbin "baserom.gba", 0x0C5EA4, 0x0CBEA4 - 0x0C5EA4
    .global Pal_Icons
Pal_Icons:
    .incbin "baserom.gba", 0x0CBEA4, 0x0CBEE4 - 0x0CBEA4

    .global Img_FactionMiniCard
Img_FactionMiniCard:
    .incbin "baserom.gba", 0x0CBEE4, 0x0CCCE4 - 0x0CBEE4

    .global Pal_FactionMiniCard
Pal_FactionMiniCard:
    .incbin "baserom.gba", 0x0CCCE4, 0x193DA0 - 0x0CCCE4

    .global gUnk_08193DA0
gUnk_08193DA0:
    .incbin "baserom.gba", 0x193DA0, 0x193DA4 - 0x193DA0

    .global rodata_sEnd
rodata_sEnd:

    .section ".rodata_0", "a"

    .incbin "baserom.gba", 0x193DDC, 0x193E00 - 0x193DDC

    .global rodata_s_0End
rodata_s_0End:

    .section ".rodata_1", "a"

    .incbin "baserom.gba", 0x193E20, 0x194674 - 0x193E20

    .global Pal_Text
Pal_Text:
    .incbin "baserom.gba", 0x194674, 0x194734 - 0x194674

    .global Pal_GreenTextColors
Pal_GreenTextColors:
    .incbin "baserom.gba", 0x194734, 0x195680 - 0x194734

    .global Tsa_Unk_08195680
Tsa_Unk_08195680:
    .incbin "baserom.gba", 0x195680, 0x195738 - 0x195680

    .global Tsa_Unk_08195738
Tsa_Unk_08195738:
    .incbin "baserom.gba", 0x195738, 0x677370 - 0x195738

    .section ".rodata_2", "a"

    @ 677648 ... B855DC

    .incbin "baserom.gba", 0x677648, 0xB855DC - 0x677648
