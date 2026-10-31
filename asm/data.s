    .section ".data_0", "a"

    .incbin "baserom.gba", 0xB857F8, 0xB92474 - 0xB857F8

    .data

    @ B857F8 ... CF0CD0

    .incbin "baserom.gba", 0xB9248C+24, 0xCF0CD0 - (0xB9248C+24)

    .section ".data_2", "a"

    @ this is more than just the .data section (starting with a bunch of garbage)
    @ I am very lazy

    @ CF6A94 ... 1000000

    .incbin "baserom.gba", 0xCF6A94, 0x1000000 - 0xCF6A94
