    .section ".rodata"

    @ 0C5E50 ... 677370

    .incbin "baserom.gba", 0x0C5E50, 0x0C5EA4 - 0x0C5E50

    @ 0C5EA4
    .global Img_Icons
Img_Icons:
    .incbin "baserom.gba", 0x0C5EA4, 0x0CBEA4 - 0x0C5EA4
    .global Pal_Icons
Pal_Icons:
    .incbin "baserom.gba", 0x0CBEA4, 0x193E00 - 0x0CBEA4
    .global rodata_sEnd
rodata_sEnd:

    .section ".rodata_1", "a"

    .incbin "baserom.gba", 0x193E20, 0x677370 - 0x193E20

    .section ".rodata_2", "a"

    @ 677648 ... B855DC

    .incbin "baserom.gba", 0x677648, 0xB855DC - 0x677648
