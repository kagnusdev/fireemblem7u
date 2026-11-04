    .section ".rodata"

    @ 0C5E50 ... 677370

    .incbin "baserom.gba", 0x0C5E50, 0x193E00 - 0x0C5E50
    .global rodata_sEnd
rodata_sEnd:

    .section ".rodata_1", "a"

    .incbin "baserom.gba", 0x193E20, 0x677370 - 0x193E20

    .section ".rodata_2", "a"

    @ 677648 ... B855DC

    .incbin "baserom.gba", 0x677648, 0xB855DC - 0x677648
