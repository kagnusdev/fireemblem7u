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

    .section ".rodata_1", "a"

    .incbin "baserom.gba", 0x193E20, 0x193E90 - 0x193E20

    .global Gfx_MiscUiGraphics
Gfx_MiscUiGraphics:
    .incbin "baserom.gba", 0x193E90, 0x19431C - 0x193E90

    .global Pal_MiscUiGraphics
Pal_MiscUiGraphics:
    .incbin "baserom.gba", 0x19431C, 0x194674 - 0x19431C

    .global Pal_Text
Pal_Text:
    .incbin "baserom.gba", 0x194674, 0x194734 - 0x194674

    .global Pal_GreenTextColors
Pal_GreenTextColors:
    .incbin "baserom.gba", 0x194734, 0x194754 - 0x194734

    .global gUnk_08194754
gUnk_08194754:
    .incbin "baserom.gba", 0x194754, 0x194774 - 0x194754

    .global gUnk_08194774
gUnk_08194774:
    .incbin "baserom.gba", 0x194774, 0x195680 - 0x194774

    .global Tsa_Unk_08195680
Tsa_Unk_08195680:
    .incbin "baserom.gba", 0x195680, 0x195738 - 0x195680

    .global Tsa_Unk_08195738
Tsa_Unk_08195738:
    .incbin "baserom.gba", 0x195738, 0x1C3B6C - 0x195738


    .section ".rodata_1_2", "a"

    .incbin "baserom.gba", 0x1C3B74, 0x3FBD34 - 0x1C3B74

    .global gUnk_083FBD34
gUnk_083FBD34:
    .incbin "baserom.gba", 0x3FBD34, 0x3FBDDC - 0x3FBD34

    .global gUnk_083FBDDC
gUnk_083FBDDC:
    .incbin "baserom.gba", 0x3FBDDC, 0x3FBE80 - 0x3FBDDC

    .global gUnk_083FBE80
gUnk_083FBE80:
    .incbin "baserom.gba", 0x3FBE80, 0x3FBEDC - 0x3FBE80

    .global gUnk_083FBEDC
gUnk_083FBEDC:
    .incbin "baserom.gba", 0x3FBEDC, 0x3FBF30 - 0x3FBEDC

    .global gUnk_083FBF30
gUnk_083FBF30:
    .incbin "baserom.gba", 0x3FBF30, 0x3FBF80 - 0x3FBF30

    .global gUnk_083FBF80
gUnk_083FBF80:
    .incbin "baserom.gba", 0x3FBF80, 0x3FBFD0 - 0x3FBF80

    .global gUnk_083FBFD0
gUnk_083FBFD0:
    .incbin "baserom.gba", 0x3FBFD0, 0x3FDA1C - 0x3FBFD0

    .global Img_LimitViewSquares
Img_LimitViewSquares:
    .incbin "baserom.gba", 0x3FDA1C, 0x3FDC9C - 0x3FDA1C

    .global Img_LimitViewSquareFull
Img_LimitViewSquareFull:
    .incbin "baserom.gba", 0x3FDC9C, 0x3FDD1C - 0x3FDC9C

    .global Pal_LimitViewBlue
Pal_LimitViewBlue:
    .incbin "baserom.gba", 0x3FDD1C, 0x3FDD7C - 0x3FDD1C

    .global Pal_LimitViewRed
Pal_LimitViewRed:
    .incbin "baserom.gba", 0x3FDD7C, 0x3FDDDC - 0x3FDD7C

    .global Pal_LimitViewGreen
Pal_LimitViewGreen:
    .incbin "baserom.gba", 0x3FDDDC, 0x3FE578 - 0x3FDDDC

    .global Img_ChapterIntroMotif
Img_ChapterIntroMotif:
    .incbin "baserom.gba", 0x3FE578, 0x3FF538 - 0x3FE578

    .global Tm_ChapterIntroMotif
Tm_ChapterIntroMotif:
    .incbin "baserom.gba", 0x3FF538, 0x3FF760 - 0x3FF538

    .global Pal_ChapterIntroMotif
Pal_ChapterIntroMotif:
    .incbin "baserom.gba", 0x3FF760, 0x3FF780 - 0x3FF760

    .global Img_ChapterIntroFog
Img_ChapterIntroFog:
    .incbin "baserom.gba", 0x3FF780, 0x401404 - 0x3FF780

    .global Pal_ChapterIntroFog
Pal_ChapterIntroFog:
    .incbin "baserom.gba", 0x401404, 0x677370 - 0x401404

    .section ".rodata_2", "a"

    @ 677648 ... B855DC

    .incbin "baserom.gba", 0x677648, 0xB855DC - 0x677648
