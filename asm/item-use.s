    .include "asm_prelude.inc"

    thumb_func_start func_08026CD0
func_08026CD0: @ 0x08026CD0
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #4
    ands r1, r0
    cmp r1, #0
    beq .L08026CF4
    adds r0, r4, #0
    adds r1, r5, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08026CF4
    b .L08026F44
.L08026CF4:
    adds r0, r5, #0
    bl GetItemIndex
    subs r0, #0x4a
    cmp r0, #0x50
    bls .L08026D02
    b .L08026F44
.L08026D02:
    lsls r0, r0, #2
    ldr r1, .L08026D0C @ =.L08026D10
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08026D0C: .4byte .L08026D10
.L08026D10: @ jump table
    .4byte .L08026E54 @ case 0
    .4byte .L08026E54 @ case 1
    .4byte .L08026E54 @ case 2
    .4byte .L08026E5C @ case 3
    .4byte .L08026E64 @ case 4
    .4byte .L08026E6C @ case 5
    .4byte .L08026E84 @ case 6
    .4byte .L08026E8C @ case 7
    .4byte .L08026E94 @ case 8
    .4byte .L08026E9C @ case 9
    .4byte .L08026E74 @ case 10
    .4byte .L08026F10 @ case 11
    .4byte .L08026EA4 @ case 12
    .4byte .L08026EAC @ case 13
    .4byte .L08026E7C @ case 14
    .4byte .L08026F44 @ case 15
    .4byte .L08026EB4 @ case 16
    .4byte .L08026EB4 @ case 17
    .4byte .L08026EB4 @ case 18
    .4byte .L08026EB4 @ case 19
    .4byte .L08026EB4 @ case 20
    .4byte .L08026EB4 @ case 21
    .4byte .L08026EB4 @ case 22
    .4byte .L08026EB4 @ case 23
    .4byte .L08026EB4 @ case 24
    .4byte .L08026EBE @ case 25
    .4byte .L08026EBE @ case 26
    .4byte .L08026EBE @ case 27
    .4byte .L08026EBE @ case 28
    .4byte .L08026EBE @ case 29
    .4byte .L08026EE8 @ case 30
    .4byte .L08026EF0 @ case 31
    .4byte .L08026EF8 @ case 32
    .4byte .L08026EC8 @ case 33
    .4byte .L08026EC8 @ case 34
    .4byte .L08026ED0 @ case 35
    .4byte .L08026EE0 @ case 36
    .4byte .L08026ED8 @ case 37
    .4byte .L08026F44 @ case 38
    .4byte .L08026F44 @ case 39
    .4byte .L08026F44 @ case 40
    .4byte .L08026F44 @ case 41
    .4byte .L08026F44 @ case 42
    .4byte .L08026F44 @ case 43
    .4byte .L08026F44 @ case 44
    .4byte .L08026F44 @ case 45
    .4byte .L08026EE8 @ case 46
    .4byte .L08026F00 @ case 47
    .4byte .L08026F08 @ case 48
    .4byte .L08026F44 @ case 49
    .4byte .L08026F20 @ case 50
    .4byte .L08026F20 @ case 51
    .4byte .L08026F20 @ case 52
    .4byte .L08026F20 @ case 53
    .4byte .L08026F44 @ case 54
    .4byte .L08026F44 @ case 55
    .4byte .L08026F44 @ case 56
    .4byte .L08026F44 @ case 57
    .4byte .L08026F44 @ case 58
    .4byte .L08026F44 @ case 59
    .4byte .L08026F44 @ case 60
    .4byte .L08026EBE @ case 61
    .4byte .L08026F34 @ case 62
    .4byte .L08026EBE @ case 63
    .4byte .L08026F44 @ case 64
    .4byte .L08026EBE @ case 65
    .4byte .L08026F44 @ case 66
    .4byte .L08026F44 @ case 67
    .4byte .L08026F44 @ case 68
    .4byte .L08026F44 @ case 69
    .4byte .L08026F44 @ case 70
    .4byte .L08026F44 @ case 71
    .4byte .L08026F44 @ case 72
    .4byte .L08026F44 @ case 73
    .4byte .L08026F44 @ case 74
    .4byte .L08026F44 @ case 75
    .4byte .L08026EBE @ case 76
    .4byte .L08026F44 @ case 77
    .4byte .L08026F44 @ case 78
    .4byte .L08026F44 @ case 79
    .4byte .L08026EC8 @ case 80
.L08026E54:
    ldr r1, .L08026E58 @ =func_0802458C
    b .L08026F22
    .align 2, 0
.L08026E58: .4byte func_0802458C
.L08026E5C:
    ldr r1, .L08026E60 @ =func_080245C0
    b .L08026F22
    .align 2, 0
.L08026E60: .4byte func_080245C0
.L08026E64:
    ldr r1, .L08026E68 @ =func_080245C0
    b .L08026F22
    .align 2, 0
.L08026E68: .4byte func_080245C0
.L08026E6C:
    ldr r1, .L08026E70 @ =func_0802465C
    b .L08026F22
    .align 2, 0
.L08026E70: .4byte func_0802465C
.L08026E74:
    ldr r1, .L08026E78 @ =func_0802474C
    b .L08026F22
    .align 2, 0
.L08026E78: .4byte func_0802474C
.L08026E7C:
    ldr r1, .L08026E80 @ =func_080246E0
    b .L08026F22
    .align 2, 0
.L08026E80: .4byte func_080246E0
.L08026E84:
    ldr r1, .L08026E88 @ =func_08024858
    b .L08026F22
    .align 2, 0
.L08026E88: .4byte func_08024858
.L08026E8C:
    ldr r1, .L08026E90 @ =func_08024880
    b .L08026F22
    .align 2, 0
.L08026E90: .4byte func_08024880
.L08026E94:
    ldr r1, .L08026E98 @ =func_080248A8
    b .L08026F22
    .align 2, 0
.L08026E98: .4byte func_080248A8
.L08026E9C:
    ldr r1, .L08026EA0 @ =func_08024908
    b .L08026F22
    .align 2, 0
.L08026EA0: .4byte func_08024908
.L08026EA4:
    ldr r1, .L08026EA8 @ =func_080249C8
    b .L08026F22
    .align 2, 0
.L08026EA8: .4byte func_080249C8
.L08026EAC:
    ldr r1, .L08026EB0 @ =func_0802493C
    b .L08026F22
    .align 2, 0
.L08026EB0: .4byte func_0802493C
.L08026EB4:
    adds r0, r4, #0
    adds r1, r5, #0
    bl CanUnitUseStatGainItem
    b .L08026F28
.L08026EBE:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08027400
    b .L08026F28
.L08026EC8:
    adds r0, r4, #0
    bl func_080272E4
    b .L08026F28
.L08026ED0:
    adds r0, r4, #0
    bl func_08027308
    b .L08026F28
.L08026ED8:
    adds r0, r4, #0
    bl func_0802731C
    b .L08026F28
.L08026EE0:
    adds r0, r4, #0
    bl func_08027340
    b .L08026F28
.L08026EE8:
    adds r0, r4, #0
    bl func_08027354
    b .L08026F28
.L08026EF0:
    adds r0, r4, #0
    bl func_08027390
    b .L08026F28
.L08026EF8:
    adds r0, r4, #0
    bl func_080273B8
    b .L08026F28
.L08026F00:
    ldr r1, .L08026F04 @ =func_08024B64
    b .L08026F22
    .align 2, 0
.L08026F04: .4byte func_08024B64
.L08026F08:
    ldr r1, .L08026F0C @ =func_08024BF0
    b .L08026F22
    .align 2, 0
.L08026F0C: .4byte func_08024BF0
.L08026F10:
    ldr r1, .L08026F1C @ =gPlaySt
    ldrb r2, [r1, #0xd]
    rsbs r0, r2, #0
    orrs r0, r2
    lsrs r0, r0, #0x1f
    b .L08026F46
    .align 2, 0
.L08026F1C: .4byte gPlaySt
.L08026F20:
    ldr r1, .L08026F30 @ =func_08024C54
.L08026F22:
    adds r0, r4, #0
    bl func_080272D0
.L08026F28:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L08026F46
    .align 2, 0
.L08026F30: .4byte func_08024C54
.L08026F34:
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #6
    ands r0, r1
    cmp r0, #0
    bne .L08026F44
    movs r0, #1
    b .L08026F46
.L08026F44:
    movs r0, #0
.L08026F46:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08026CD0

    thumb_func_start func_08026F4C
func_08026F4C: @ 0x08026F4C
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    adds r0, r6, #0
    bl GetItemIndex
    subs r0, #0x55
    cmp r0, #0x45
    bls .L08026F5E
    b .L080270F0
.L08026F5E:
    lsls r0, r0, #2
    ldr r1, .L08026F68 @ =.L08026F6C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08026F68: .4byte .L08026F6C
.L08026F6C: @ jump table
    .4byte .L08027084 @ case 0
    .4byte .L080270F0 @ case 1
    .4byte .L080270F0 @ case 2
    .4byte .L080270F0 @ case 3
    .4byte .L080270F0 @ case 4
    .4byte .L08027084 @ case 5
    .4byte .L08027084 @ case 6
    .4byte .L08027084 @ case 7
    .4byte .L08027084 @ case 8
    .4byte .L08027084 @ case 9
    .4byte .L08027084 @ case 10
    .4byte .L08027084 @ case 11
    .4byte .L08027084 @ case 12
    .4byte .L08027084 @ case 13
    .4byte .L080270C6 @ case 14
    .4byte .L080270C6 @ case 15
    .4byte .L080270C6 @ case 16
    .4byte .L080270C6 @ case 17
    .4byte .L080270C6 @ case 18
    .4byte .L0802708C @ case 19
    .4byte .L08027094 @ case 20
    .4byte .L0802709C @ case 21
    .4byte .L08027084 @ case 22
    .4byte .L08027084 @ case 23
    .4byte .L08027084 @ case 24
    .4byte .L08027084 @ case 25
    .4byte .L08027084 @ case 26
    .4byte .L080270F0 @ case 27
    .4byte .L080270F0 @ case 28
    .4byte .L080270F0 @ case 29
    .4byte .L080270F0 @ case 30
    .4byte .L080270F0 @ case 31
    .4byte .L080270F0 @ case 32
    .4byte .L080270F0 @ case 33
    .4byte .L080270F0 @ case 34
    .4byte .L0802708C @ case 35
    .4byte .L080270F0 @ case 36
    .4byte .L080270F0 @ case 37
    .4byte .L080270F0 @ case 38
    .4byte .L080270F0 @ case 39
    .4byte .L080270F0 @ case 40
    .4byte .L080270F0 @ case 41
    .4byte .L080270F0 @ case 42
    .4byte .L080270F0 @ case 43
    .4byte .L080270F0 @ case 44
    .4byte .L080270F0 @ case 45
    .4byte .L080270F0 @ case 46
    .4byte .L080270F0 @ case 47
    .4byte .L080270F0 @ case 48
    .4byte .L080270F0 @ case 49
    .4byte .L080270C6 @ case 50
    .4byte .L080270F0 @ case 51
    .4byte .L080270C6 @ case 52
    .4byte .L080270F0 @ case 53
    .4byte .L080270C6 @ case 54
    .4byte .L080270F0 @ case 55
    .4byte .L080270F0 @ case 56
    .4byte .L080270F0 @ case 57
    .4byte .L080270F0 @ case 58
    .4byte .L080270F0 @ case 59
    .4byte .L080270F0 @ case 60
    .4byte .L080270F0 @ case 61
    .4byte .L080270F0 @ case 62
    .4byte .L080270F0 @ case 63
    .4byte .L080270F0 @ case 64
    .4byte .L080270C6 @ case 65
    .4byte .L080270F0 @ case 66
    .4byte .L080270F0 @ case 67
    .4byte .L080270F0 @ case 68
    .4byte .L08027084 @ case 69
.L08027084:
    ldr r0, .L08027088 @ =0x00000743
    b .L080270F2
    .align 2, 0
.L08027088: .4byte 0x00000743
.L0802708C:
    ldr r0, .L08027090 @ =0x00000747
    b .L080270F2
    .align 2, 0
.L08027090: .4byte 0x00000747
.L08027094:
    ldr r0, .L08027098 @ =0x00000746
    b .L080270F2
    .align 2, 0
.L08027098: .4byte 0x00000746
.L0802709C:
    ldr r0, .L080270B8 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq .L080270C0
    ldr r0, .L080270BC @ =0x0000074A
    b .L080270F2
    .align 2, 0
.L080270B8: .4byte gActiveUnit
.L080270BC: .4byte 0x0000074A
.L080270C0:
    movs r0, #0xe9
    lsls r0, r0, #3
    b .L080270F2
.L080270C6:
    ldr r4, .L080270E8 @ =gActiveUnit
    ldr r1, [r4]
    movs r5, #8
    ldrsb r5, [r1, r5]
    movs r0, #0xa
    strb r0, [r1, #8]
    ldr r0, [r4]
    adds r1, r6, #0
    bl func_08027400
    ldr r1, [r4]
    strb r5, [r1, #8]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080270F0
    ldr r0, .L080270EC @ =0x00000745
    b .L080270F2
    .align 2, 0
.L080270E8: .4byte gActiveUnit
.L080270EC: .4byte 0x00000745
.L080270F0:
    ldr r0, .L080270F8 @ =0x00000744
.L080270F2:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080270F8: .4byte 0x00000744
    func_end func_08026F4C

    thumb_func_start func_080270FC
func_080270FC: @ 0x080270FC
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl ClearUi
    movs r0, #0
    bl EndFaceById
    adds r0, r4, #0
    bl GetItemIndex
    subs r0, #0x4a
    cmp r0, #0x35
    bls .L0802711A
    b .L080272C4
.L0802711A:
    lsls r0, r0, #2
    ldr r1, .L08027124 @ =.L08027128
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08027124: .4byte .L08027128
.L08027128: @ jump table
    .4byte .L08027200 @ case 0
    .4byte .L08027200 @ case 1
    .4byte .L08027200 @ case 2
    .4byte .L08027208 @ case 3
    .4byte .L0802727C @ case 4
    .4byte .L08027228 @ case 5
    .4byte .L08027238 @ case 6
    .4byte .L08027240 @ case 7
    .4byte .L08027248 @ case 8
    .4byte .L0802726C @ case 9
    .4byte .L08027218 @ case 10
    .4byte .L080272A8 @ case 11
    .4byte .L08027274 @ case 12
    .4byte .L08027260 @ case 13
    .4byte .L08027258 @ case 14
    .4byte .L080272C4 @ case 15
    .4byte .L080272C4 @ case 16
    .4byte .L080272C4 @ case 17
    .4byte .L080272C4 @ case 18
    .4byte .L080272C4 @ case 19
    .4byte .L080272C4 @ case 20
    .4byte .L080272C4 @ case 21
    .4byte .L080272C4 @ case 22
    .4byte .L080272C4 @ case 23
    .4byte .L080272C4 @ case 24
    .4byte .L080272C4 @ case 25
    .4byte .L080272C4 @ case 26
    .4byte .L080272C4 @ case 27
    .4byte .L080272C4 @ case 28
    .4byte .L080272C4 @ case 29
    .4byte .L080272C4 @ case 30
    .4byte .L080272C4 @ case 31
    .4byte .L080272C4 @ case 32
    .4byte .L080272C4 @ case 33
    .4byte .L080272C4 @ case 34
    .4byte .L080272C4 @ case 35
    .4byte .L080272C4 @ case 36
    .4byte .L080272C4 @ case 37
    .4byte .L080272C4 @ case 38
    .4byte .L080272C4 @ case 39
    .4byte .L080272C4 @ case 40
    .4byte .L080272C4 @ case 41
    .4byte .L080272C4 @ case 42
    .4byte .L080272C4 @ case 43
    .4byte .L080272C4 @ case 44
    .4byte .L080272C4 @ case 45
    .4byte .L080272C4 @ case 46
    .4byte .L08027284 @ case 47
    .4byte .L08027294 @ case 48
    .4byte .L080272C4 @ case 49
    .4byte .L080272B0 @ case 50
    .4byte .L080272B0 @ case 51
    .4byte .L080272B0 @ case 52
    .4byte .L080272B0 @ case 53
.L08027200:
    ldr r1, .L08027204 @ =func_0802458C
    b .L0802720A
    .align 2, 0
.L08027204: .4byte func_0802458C
.L08027208:
    ldr r1, .L08027214 @ =func_080245C0
.L0802720A:
    adds r0, r5, #0
    bl func_08027CBC
    b .L080272CA
    .align 2, 0
.L08027214: .4byte func_080245C0
.L08027218:
    ldr r1, .L08027224 @ =func_0802474C
    adds r0, r5, #0
    bl func_08027698
    b .L080272CA
    .align 2, 0
.L08027224: .4byte func_0802474C
.L08027228:
    ldr r1, .L08027234 @ =func_0802465C
    adds r0, r5, #0
    bl func_08027CF8
    b .L080272CA
    .align 2, 0
.L08027234: .4byte func_0802465C
.L08027238:
    ldr r1, .L0802723C @ =func_08024858
    b .L0802724A
    .align 2, 0
.L0802723C: .4byte func_08024858
.L08027240:
    ldr r1, .L08027244 @ =func_08024880
    b .L0802724A
    .align 2, 0
.L08027244: .4byte func_08024880
.L08027248:
    ldr r1, .L08027254 @ =func_080248A8
.L0802724A:
    adds r0, r5, #0
    bl func_08027DD0
    b .L080272CA
    .align 2, 0
.L08027254: .4byte func_080248A8
.L08027258:
    adds r0, r5, #0
    bl func_08027D64
    b .L080272CA
.L08027260:
    ldr r1, .L08027268 @ =func_0802493C
    movs r2, #0xe6
    lsls r2, r2, #3
    b .L08027298
    .align 2, 0
.L08027268: .4byte func_0802493C
.L0802726C:
    adds r0, r5, #0
    bl func_080279B8
    b .L080272CA
.L08027274:
    adds r0, r5, #0
    bl func_08027AE8
    b .L080272CA
.L0802727C:
    adds r0, r5, #0
    bl func_0802764C
    b .L080272CA
.L08027284:
    ldr r1, .L0802728C @ =func_08024B64
    ldr r2, .L08027290 @ =0x00000732
    b .L08027298
    .align 2, 0
.L0802728C: .4byte func_08024B64
.L08027290: .4byte 0x00000732
.L08027294:
    ldr r1, .L080272A0 @ =func_08024BF0
    ldr r2, .L080272A4 @ =0x00000733
.L08027298:
    adds r0, r5, #0
    bl func_08027A30
    b .L080272CA
    .align 2, 0
.L080272A0: .4byte func_08024BF0
.L080272A4: .4byte 0x00000733
.L080272A8:
    adds r0, r5, #0
    bl func_08028010
    b .L080272CA
.L080272B0:
    ldr r1, .L080272BC @ =func_08024C54
    ldr r2, .L080272C0 @ =0x00000734
    adds r0, r5, #0
    bl func_080276D8
    b .L080272CA
    .align 2, 0
.L080272BC: .4byte func_08024C54
.L080272C0: .4byte 0x00000734
.L080272C4:
    adds r0, r5, #0
    bl func_08027674
.L080272CA:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080270FC

    thumb_func_start func_080272D0
func_080272D0: @ 0x080272D0
    push {lr}
    bl _call_via_r1
    bl CountTargets
    cmp r0, #0
    beq .L080272E0
    movs r0, #1
.L080272E0:
    pop {r1}
    bx r1
    func_end func_080272D0

    thumb_func_start func_080272E4
func_080272E4: @ 0x080272E4
    push {r4, r5, lr}
    adds r4, r0, #0
    bl GetUnitCurrentHp
    adds r5, r0, #0
    adds r0, r4, #0
    bl GetUnitMaxHp
    cmp r5, r0
    beq .L080272FC
    movs r0, #1
    b .L080272FE
.L080272FC:
    movs r0, #0
.L080272FE:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080272E4

    thumb_func_start func_08027304
func_08027304: @ 0x08027304
    movs r0, #0
    bx lr
    func_end func_08027304

    thumb_func_start func_08027308
func_08027308: @ 0x08027308
    adds r0, #0x31
    movs r1, #0xf0
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #0x70
    beq .L08027318
    movs r0, #1
    b .L0802731A
.L08027318:
    movs r0, #0
.L0802731A:
    bx lr
    func_end func_08027308

    thumb_func_start func_0802731C
func_0802731C: @ 0x0802731C
    adds r1, r0, #0
    ldr r0, .L08027338 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L0802733C
    adds r1, #0x31
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    beq .L0802733C
    movs r0, #1
    b .L0802733E
    .align 2, 0
.L08027338: .4byte gPlaySt
.L0802733C:
    movs r0, #0
.L0802733E:
    bx lr
    func_end func_0802731C

    thumb_func_start func_08027340
func_08027340: @ 0x08027340
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #1
    bne .L08027350
    movs r0, #1
    b .L08027352
.L08027350:
    movs r0, #0
.L08027352:
    bx lr
    func_end func_08027340

    thumb_func_start func_08027354
func_08027354: @ 0x08027354
    push {lr}
    movs r3, #0x11
    ldrsb r3, [r0, r3]
    ldr r1, .L08027384 @ =gBmMapTerrain
    ldr r2, [r1]
    lsls r1, r3, #2
    adds r1, r1, r2
    movs r2, #0x10
    ldrsb r2, [r0, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x21
    bne .L08027388
    adds r0, r2, #0
    adds r1, r3, #0
    bl func_08078EE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08027388
    movs r0, #1
    b .L0802738A
    .align 2, 0
.L08027384: .4byte gBmMapTerrain
.L08027388:
    movs r0, #0
.L0802738A:
    pop {r1}
    bx r1
    func_end func_08027354

    thumb_func_start func_08027390
func_08027390: @ 0x08027390
    push {lr}
    movs r1, #0x1e
    bl func_08024298
    bl CountTargets
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08027390

    thumb_func_start func_080273A4
func_080273A4: @ 0x080273A4
    push {lr}
    movs r1, #0x14
    bl func_08024298
    bl CountTargets
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_080273A4

    thumb_func_start func_080273B8
func_080273B8: @ 0x080273B8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq .L080273F2
    adds r0, r4, #0
    bl func_08027354
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080273F6
    adds r0, r4, #0
    bl func_08027390
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080273F6
    adds r0, r4, #0
    bl func_080273A4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080273F6
.L080273F2:
    movs r0, #0
    b .L080273F8
.L080273F6:
    movs r0, #1
.L080273F8:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080273B8

    thumb_func_start func_08027400
func_08027400: @ 0x08027400
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
    movs r0, #8
    ldrsb r0, [r5, r0]
    cmp r0, #9
    bgt .L08027410
    b .L0802756C
.L08027410:
    adds r0, r1, #0
    bl GetItemIndex
    subs r0, #0x63
    cmp r0, #0x33
    bls .L0802741E
    b .L08027556
.L0802741E:
    lsls r0, r0, #2
    ldr r1, .L08027428 @ =.L0802742C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08027428: .4byte .L0802742C
.L0802742C: @ jump table
    .4byte .L080274FC @ case 0
    .4byte .L08027504 @ case 1
    .4byte .L0802750C @ case 2
    .4byte .L08027514 @ case 3
    .4byte .L0802751C @ case 4
    .4byte .L08027556 @ case 5
    .4byte .L08027556 @ case 6
    .4byte .L08027556 @ case 7
    .4byte .L08027556 @ case 8
    .4byte .L08027556 @ case 9
    .4byte .L08027556 @ case 10
    .4byte .L08027556 @ case 11
    .4byte .L08027556 @ case 12
    .4byte .L08027556 @ case 13
    .4byte .L08027556 @ case 14
    .4byte .L08027556 @ case 15
    .4byte .L08027556 @ case 16
    .4byte .L08027556 @ case 17
    .4byte .L08027556 @ case 18
    .4byte .L08027556 @ case 19
    .4byte .L08027556 @ case 20
    .4byte .L08027556 @ case 21
    .4byte .L08027556 @ case 22
    .4byte .L08027556 @ case 23
    .4byte .L08027556 @ case 24
    .4byte .L08027556 @ case 25
    .4byte .L08027556 @ case 26
    .4byte .L08027556 @ case 27
    .4byte .L08027556 @ case 28
    .4byte .L08027556 @ case 29
    .4byte .L08027556 @ case 30
    .4byte .L08027556 @ case 31
    .4byte .L08027556 @ case 32
    .4byte .L08027556 @ case 33
    .4byte .L08027556 @ case 34
    .4byte .L08027556 @ case 35
    .4byte .L08027524 @ case 36
    .4byte .L08027556 @ case 37
    .4byte .L0802752C @ case 38
    .4byte .L08027556 @ case 39
    .4byte .L08027548 @ case 40
    .4byte .L08027556 @ case 41
    .4byte .L08027556 @ case 42
    .4byte .L08027556 @ case 43
    .4byte .L08027556 @ case 44
    .4byte .L08027556 @ case 45
    .4byte .L08027556 @ case 46
    .4byte .L08027556 @ case 47
    .4byte .L08027556 @ case 48
    .4byte .L08027556 @ case 49
    .4byte .L08027556 @ case 50
    .4byte .L08027554 @ case 51
.L080274FC:
    ldr r4, .L08027500 @ =0x08C97EDD
    b .L08027556
    .align 2, 0
.L08027500: .4byte 0x08C97EDD
.L08027504:
    ldr r4, .L08027508 @ =0x08C97EE3
    b .L08027556
    .align 2, 0
.L08027508: .4byte 0x08C97EE3
.L0802750C:
    ldr r4, .L08027510 @ =0x08C97EE8
    b .L08027556
    .align 2, 0
.L08027510: .4byte 0x08C97EE8
.L08027514:
    ldr r4, .L08027518 @ =0x08C97EED
    b .L08027556
    .align 2, 0
.L08027518: .4byte 0x08C97EED
.L0802751C:
    ldr r4, .L08027520 @ =0x08C97EF1
    b .L08027556
    .align 2, 0
.L08027520: .4byte 0x08C97EF1
.L08027524:
    ldr r4, .L08027528 @ =0x08C97EFD
    b .L08027556
    .align 2, 0
.L08027528: .4byte 0x08C97EFD
.L0802752C:
    ldr r0, .L0802753C @ =gPlaySt
    ldr r4, .L08027540 @ =0x08C97F16
    ldrb r0, [r0, #0x1b]
    cmp r0, #3
    bne .L08027556
    ldr r4, .L08027544 @ =0x08C97F21
    b .L08027556
    .align 2, 0
.L0802753C: .4byte gPlaySt
.L08027540: .4byte 0x08C97F16
.L08027544: .4byte 0x08C97F21
.L08027548:
    ldr r4, .L0802754C @ =0x08C97F29
    b .L08027556
    .align 2, 0
.L0802754C: .4byte 0x08C97F29
.L08027550:
    movs r0, #1
    b .L0802756E
.L08027554:
    ldr r4, .L08027574 @ =0x08C97F24
.L08027556:
    ldrb r1, [r4]
    cmp r1, #0
    beq .L0802756C
    ldr r0, [r5, #4]
    ldrb r0, [r0, #4]
.L08027560:
    cmp r0, r1
    beq .L08027550
    adds r4, #1
    ldrb r1, [r4]
    cmp r1, #0
    bne .L08027560
.L0802756C:
    movs r0, #0
.L0802756E:
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08027574: .4byte 0x08C97F24
    func_end func_08027400

    thumb_func_start CanUnitUseStatGainItem
CanUnitUseStatGainItem: @ 0x08027578
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r0, r1, #0
    bl GetItemBonuses
    adds r4, r0, #0
    ldr r6, .L08027648 @ =0x03004440
    adds r0, r6, #0
    bl ClearUnit
    ldr r0, [r5]
    str r0, [r6]
    ldr r0, [r5, #4]
    str r0, [r6, #4]
    ldrb r1, [r5, #0x12]
    ldrb r2, [r4]
    adds r0, r1, r2
    strb r0, [r6, #0x12]
    ldrb r1, [r5, #0x14]
    ldrb r2, [r4, #1]
    adds r0, r1, r2
    strb r0, [r6, #0x14]
    ldrb r1, [r5, #0x15]
    ldrb r2, [r4, #2]
    adds r0, r1, r2
    strb r0, [r6, #0x15]
    ldrb r1, [r5, #0x16]
    ldrb r2, [r4, #3]
    adds r0, r1, r2
    strb r0, [r6, #0x16]
    ldrb r1, [r5, #0x17]
    ldrb r2, [r4, #4]
    adds r0, r1, r2
    strb r0, [r6, #0x17]
    ldrb r1, [r5, #0x18]
    ldrb r2, [r4, #5]
    adds r0, r1, r2
    strb r0, [r6, #0x18]
    ldrb r1, [r5, #0x19]
    ldrb r2, [r4, #6]
    adds r0, r1, r2
    strb r0, [r6, #0x19]
    ldrb r1, [r5, #0x1d]
    ldrb r2, [r4, #7]
    adds r0, r1, r2
    strb r0, [r6, #0x1d]
    ldrb r1, [r5, #0x1a]
    ldrb r4, [r4, #8]
    adds r0, r1, r4
    strb r0, [r6, #0x1a]
    adds r0, r6, #0
    bl UnitCheckStatCaps
    movs r1, #0x12
    ldrsb r1, [r6, r1]
    movs r0, #0x12
    ldrsb r0, [r5, r0]
    eors r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
    ldrb r2, [r6, #0x14]
    ldrb r1, [r5, #0x14]
    cmp r2, r1
    beq .L080275FC
    movs r0, #1
.L080275FC:
    ldrb r2, [r6, #0x15]
    ldrb r1, [r5, #0x15]
    cmp r2, r1
    beq .L08027606
    movs r0, #1
.L08027606:
    ldrb r2, [r6, #0x16]
    ldrb r1, [r5, #0x16]
    cmp r2, r1
    beq .L08027610
    movs r0, #1
.L08027610:
    ldrb r2, [r6, #0x17]
    ldrb r1, [r5, #0x17]
    cmp r2, r1
    beq .L0802761A
    movs r0, #1
.L0802761A:
    ldrb r2, [r6, #0x18]
    ldrb r1, [r5, #0x18]
    cmp r2, r1
    beq .L08027624
    movs r0, #1
.L08027624:
    ldrb r2, [r6, #0x19]
    ldrb r1, [r5, #0x19]
    cmp r2, r1
    beq .L0802762E
    movs r0, #1
.L0802762E:
    ldrb r2, [r6, #0x1d]
    ldrb r1, [r5, #0x1d]
    cmp r2, r1
    beq .L08027638
    movs r0, #1
.L08027638:
    ldrb r6, [r6, #0x1a]
    ldrb r5, [r5, #0x1a]
    cmp r6, r5
    beq .L08027642
    movs r0, #1
.L08027642:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08027648: .4byte 0x03004440
    func_end CanUnitUseStatGainItem

    thumb_func_start func_0802764C
func_0802764C: @ 0x0802764C
    push {lr}
    bl HideMoveRangeGraphics
    ldr r0, .L0802766C @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r1, .L08027670 @ =gActionSt
    movs r0, #3
    strb r0, [r1, #0x11]
    pop {r0}
    bx r0
    .align 2, 0
.L0802766C: .4byte gBg2Tm
.L08027670: .4byte gActionSt
    func_end func_0802764C

    thumb_func_start func_08027674
func_08027674: @ 0x08027674
    ldr r1, .L0802767C @ =gActionSt
    movs r0, #0x17
    strb r0, [r1, #0x11]
    bx lr
    .align 2, 0
.L0802767C: .4byte gActionSt
    func_end func_08027674

    thumb_func_start func_08027680
func_08027680: @ 0x08027680
    push {lr}
    ldr r2, .L08027694 @ =gActionSt
    ldrb r0, [r1, #2]
    strb r0, [r2, #0xd]
    movs r0, #0
    bl func_0802764C
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08027694: .4byte gActionSt
    func_end func_08027680

    thumb_func_start func_08027698
func_08027698: @ 0x08027698
    push {r4, lr}
    bl _call_via_r1
    ldr r0, .L080276C8 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L080276CC @ =0x08B95BD8
    ldr r1, .L080276D0 @ =func_08027680
    bl func_0804AEF0
    adds r4, r0, #0
    ldr r0, .L080276D4 @ =0x0000072C
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080276C8: .4byte gBmMapMovement
.L080276CC: .4byte 0x08B95BD8
.L080276D0: .4byte func_08027680
.L080276D4: .4byte 0x0000072C
    func_end func_08027698

    thumb_func_start func_080276D8
func_080276D8: @ 0x080276D8
    push {r4, r5, lr}
    adds r5, r2, #0
    bl _call_via_r1
    ldr r0, .L0802770C @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027710 @ =0x08B95BD8
    ldr r1, .L08027714 @ =func_08027680
    bl func_0804AEF0
    adds r4, r0, #0
    adds r0, r5, #0
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802770C: .4byte gBmMapMovement
.L08027710: .4byte 0x08B95BD8
.L08027714: .4byte func_08027680
    func_end func_080276D8

    thumb_func_start func_08027718
func_08027718: @ 0x08027718
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    ldr r0, .L080277B8 @ =0x00000725
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08032560
    ldr r5, .L080277BC @ =gActionSt
    ldrb r0, [r5, #0xd]
    bl GetUnit
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    ldrb r0, [r5, #0xd]
    bl GetUnit
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    adds r0, r6, #0
    adds r1, r4, #0
    bl EnsureCameraOntoPosition
    bl HideMoveRangeGraphics
    ldr r0, .L080277C0 @ =gActiveUnit
    ldr r4, [r0]
    ldrb r0, [r5, #0xd]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0801DBC4
    ldr r1, .L080277C4 @ =gBmSt
    movs r0, #0xfd
    ldrb r2, [r1, #4]
    ands r0, r2
    movs r2, #0
    mov r8, r2
    strb r0, [r1, #4]
    movs r0, #1
    bl DisplayMoveRangeGraphics
    ldrb r0, [r5, #0xd]
    bl GetUnit
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    ldrb r0, [r5, #0xd]
    bl GetUnit
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    adds r0, r4, #0
    bl SetMapCursorPosition
    ldr r0, .L080277C8 @ =0x08196228
    movs r1, #0
    bl StartSpriteAnim
    adds r4, r0, #0
    mov r0, r8
    strh r0, [r4, #0x22]
    adds r0, r4, #0
    movs r1, #0
    bl SetSpriteAnimId
    str r4, [r6, #0x54]
    adds r6, #0x4a
    movs r0, #2
    strh r0, [r6]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080277B8: .4byte 0x00000725
.L080277BC: .4byte gActionSt
.L080277C0: .4byte gActiveUnit
.L080277C4: .4byte gBmSt
.L080277C8: .4byte 0x08196228
    func_end func_08027718

    thumb_func_start func_080277CC
func_080277CC: @ 0x080277CC
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r4, .L08027844 @ =gBmSt
    movs r1, #0x16
    ldrsh r0, [r4, r1]
    ldr r1, .L08027848 @ =gBmMapMovement
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0x14
    ldrsh r1, [r4, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r1, #0
    ldrsb r1, [r0, r1]
    mvns r1, r1
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r6, r0, #0x1f
    bl HandlePlayerCursorMovement
    ldr r0, .L0802784C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08027878
    cmp r6, #0
    beq .L08027864
    adds r0, r5, #0
    bl Proc_Break
    ldr r1, .L08027850 @ =gActionSt
    ldrh r0, [r4, #0x14]
    strb r0, [r1, #0x13]
    ldrh r0, [r4, #0x16]
    strb r0, [r1, #0x14]
    ldr r0, .L08027854 @ =gActiveUnit
    ldr r0, [r0]
    bl func_0802764C
    ldr r0, .L08027858 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L0802785C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080278F0
    ldr r0, .L08027860 @ =0x0000038A
    bl m4aSongNumStart
    b .L080278F0
    .align 2, 0
.L08027844: .4byte gBmSt
.L08027848: .4byte gBmMapMovement
.L0802784C: .4byte gpKeySt
.L08027850: .4byte gActionSt
.L08027854: .4byte gActiveUnit
.L08027858: .4byte gBg2Tm
.L0802785C: .4byte gPlaySt
.L08027860: .4byte 0x0000038A
.L08027864:
    ldr r0, .L080278F8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08027878
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
.L08027878:
    ldr r0, .L080278FC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080278AE
    adds r0, r5, #0
    movs r1, #0x63
    bl Proc_Goto
    ldr r0, .L08027900 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L080278F8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080278AE
    ldr r0, .L08027904 @ =0x0000038B
    bl m4aSongNumStart
.L080278AE:
    lsls r0, r6, #0x18
    asrs r3, r0, #0x18
    adds r1, r5, #0
    adds r1, #0x4a
    movs r4, #0
    ldrsh r2, [r1, r4]
    adds r4, r0, #0
    adds r6, r1, #0
    cmp r3, r2
    beq .L080278D0
    ldr r0, [r5, #0x54]
    movs r1, #0
    cmp r3, #0
    bne .L080278CC
    movs r1, #1
.L080278CC:
    bl SetSpriteAnimId
.L080278D0:
    ldr r0, [r5, #0x54]
    ldr r3, .L08027908 @ =gBmSt
    movs r5, #0x20
    ldrsh r1, [r3, r5]
    movs r5, #0xc
    ldrsh r2, [r3, r5]
    subs r1, r1, r2
    movs r5, #0x22
    ldrsh r2, [r3, r5]
    movs r5, #0xe
    ldrsh r3, [r3, r5]
    subs r2, r2, r3
    bl DisplaySpriteAnim
    asrs r0, r4, #0x18
    strh r0, [r6]
.L080278F0:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080278F8: .4byte gPlaySt
.L080278FC: .4byte gpKeySt
.L08027900: .4byte gBg2Tm
.L08027904: .4byte 0x0000038B
.L08027908: .4byte gBmSt
    func_end func_080277CC

    thumb_func_start func_0802790C
func_0802790C: @ 0x0802790C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl ResetTextFont
    bl HideMoveRangeGraphics
    bl func_0803279C
    ldr r4, .L08027944 @ =gActiveUnit
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl SetMapCursorPosition
    ldr r0, [r4]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    adds r0, r5, #0
    bl EnsureCameraOntoPosition
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08027944: .4byte gActiveUnit
    func_end func_0802790C

    thumb_func_start func_08027948
func_08027948: @ 0x08027948
    push {lr}
    bl ResetTextFont
    bl HideMoveRangeGraphics
    bl func_0803279C
    ldr r0, .L08027974 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl SetMapCursorPosition
    ldr r0, .L08027978 @ =0x08B93DDC
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08027974: .4byte gActiveUnit
.L08027978: .4byte 0x08B93DDC
    func_end func_08027948

    thumb_func_start func_0802797C
func_0802797C: @ 0x0802797C
    push {r4, lr}
    adds r4, r0, #0
    bl HideMoveRangeGraphics
    ldr r0, [r4, #0x54]
    bl EndSpriteAnim
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802797C

    thumb_func_start func_08027990
func_08027990: @ 0x08027990
    push {r4, lr}
    adds r4, r1, #0
    bl func_0804AF00
    ldr r1, .L080279B0 @ =gActionSt
    ldrb r0, [r4, #2]
    strb r0, [r1, #0xd]
    ldr r0, .L080279B4 @ =0x08B94194
    movs r1, #3
    bl Proc_Start
    movs r0, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080279B0: .4byte gActionSt
.L080279B4: .4byte 0x08B94194
    func_end func_08027990

    thumb_func_start func_080279B8
func_080279B8: @ 0x080279B8
    push {r4, lr}
    bl func_08024908
    ldr r0, .L080279FC @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027A00 @ =0x08B95BD8
    ldr r1, .L08027A04 @ =func_08027990
    bl func_0804AEF0
    adds r4, r0, #0
    ldr r0, .L08027A08 @ =0x0000072B
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    ldr r0, .L08027A0C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080279F4
    ldr r0, .L08027A10 @ =0x0000038A
    bl m4aSongNumStart
.L080279F4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080279FC: .4byte gBmMapMovement
.L08027A00: .4byte 0x08B95BD8
.L08027A04: .4byte func_08027990
.L08027A08: .4byte 0x0000072B
.L08027A0C: .4byte gPlaySt
.L08027A10: .4byte 0x0000038A
    func_end func_080279B8

    thumb_func_start func_08027A14
func_08027A14: @ 0x08027A14
    push {lr}
    ldr r2, .L08027A2C @ =gActionSt
    ldrb r0, [r1]
    strb r0, [r2, #0x13]
    ldrb r0, [r1, #1]
    strb r0, [r2, #0x14]
    movs r0, #0
    bl func_0802764C
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08027A2C: .4byte gActionSt
    func_end func_08027A14

    thumb_func_start func_08027A30
func_08027A30: @ 0x08027A30
    push {r4, r5, lr}
    adds r5, r2, #0
    bl _call_via_r1
    ldr r0, .L08027A74 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027A78 @ =0x08B95BB8
    ldr r1, .L08027A7C @ =func_08027A14
    bl func_0804AEF0
    adds r4, r0, #0
    adds r0, r5, #0
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    ldr r0, .L08027A80 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08027A6E
    ldr r0, .L08027A84 @ =0x0000038A
    bl m4aSongNumStart
.L08027A6E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08027A74: .4byte gBmMapMovement
.L08027A78: .4byte 0x08B95BB8
.L08027A7C: .4byte func_08027A14
.L08027A80: .4byte gPlaySt
.L08027A84: .4byte 0x0000038A
    func_end func_08027A30

    thumb_func_start func_08027A88
func_08027A88: @ 0x08027A88
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r1, #0
    bl ResetTextFont
    ldr r5, .L08027AE0 @ =gActionSt
    ldrb r0, [r4, #2]
    strb r0, [r5, #0xd]
    ldr r0, .L08027AE4 @ =0x08B958FC
    bl StartMenu
    adds r4, r0, #0
    ldrb r0, [r5, #0xd]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #0x10
    movs r3, #0xb
    bl StartEquipInfoWindow
    ldrb r0, [r5, #0xd]
    bl GetUnit
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb8
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    movs r0, #0x17
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08027AE0: .4byte gActionSt
.L08027AE4: .4byte 0x08B958FC
    func_end func_08027A88

    thumb_func_start func_08027AE8
func_08027AE8: @ 0x08027AE8
    push {r4, lr}
    bl func_080249C8
    ldr r0, .L08027B28 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027B2C @ =0x08B95C58
    bl StartMapSelect
    adds r4, r0, #0
    ldr r0, .L08027B30 @ =0x0000072E
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    ldr r0, .L08027B34 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08027B22
    ldr r0, .L08027B38 @ =0x0000038A
    bl m4aSongNumStart
.L08027B22:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08027B28: .4byte gBmMapMovement
.L08027B2C: .4byte 0x08B95C58
.L08027B30: .4byte 0x0000072E
.L08027B34: .4byte gPlaySt
.L08027B38: .4byte 0x0000038A
    func_end func_08027AE8

    thumb_func_start func_08027B3C
func_08027B3C: @ 0x08027B3C
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031CBC
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08027B3C

    thumb_func_start func_08027B60
func_08027B60: @ 0x08027B60
    push {lr}
    bl func_08031A74
    pop {r0}
    bx r0
    func_end func_08027B60

    thumb_func_start func_08027B6C
func_08027B6C: @ 0x08027B6C
    push {lr}
    adds r1, #0x3c
    movs r0, #0
    ldrsb r0, [r1, r0]
    bl func_0801DFC0
    pop {r1}
    bx r1
    func_end func_08027B6C

    thumb_func_start func_08027B7C
func_08027B7C: @ 0x08027B7C
    bx lr
    func_end func_08027B7C

    thumb_func_start func_08027B80
func_08027B80: @ 0x08027B80
    push {r4, lr}
    adds r4, r1, #0
    ldr r0, .L08027B9C @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    lsls r4, r4, #1
    adds r0, #0x1e
    adds r0, r0, r4
    ldrh r0, [r0]
    cmp r0, #0
    bne .L08027BA0
    movs r0, #3
    b .L08027BB0
    .align 2, 0
.L08027B9C: .4byte gActionSt
.L08027BA0:
    bl IsItemRepairable
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08027BAE
    movs r0, #1
    b .L08027BB0
.L08027BAE:
    movs r0, #2
.L08027BB0:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08027B80

    thumb_func_start func_08027BB8
func_08027BB8: @ 0x08027BB8
    push {r4, r5, r6, lr}
    adds r5, r1, #0
    ldr r0, .L08027C0C @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    adds r1, r5, #0
    adds r1, #0x3c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl IsItemRepairable
    adds r2, r0, #0
    adds r0, r5, #0
    adds r0, #0x34
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    movs r1, #0x2c
    ldrsh r3, [r5, r1]
    lsls r3, r3, #5
    movs r6, #0x2a
    ldrsh r1, [r5, r6]
    adds r3, r3, r1
    lsls r3, r3, #1
    ldr r1, .L08027C10 @ =gBg0Tm
    adds r3, r3, r1
    adds r1, r4, #0
    bl func_0801650C
    movs r0, #1
    bl EnableBgSync
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08027C0C: .4byte gActionSt
.L08027C10: .4byte gBg0Tm
    func_end func_08027BB8

    thumb_func_start func_08027C14
func_08027C14: @ 0x08027C14
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r4, r1, #0
    adds r0, r4, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #2
    bne .L08027C9A
    movs r6, #0
    ldr r0, .L08027C54 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    adds r1, r4, #0
    adds r1, #0x3c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r5, [r0]
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #0xc1
    lsls r1, r1, #3
    ands r1, r0
    cmp r1, #0
    beq .L08027C5C
    ldr r6, .L08027C58 @ =0x0000074C
    b .L08027C8E
    .align 2, 0
.L08027C54: .4byte gActionSt
.L08027C58: .4byte 0x0000074C
.L08027C5C:
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #5
    ands r1, r0
    cmp r1, #0
    bne .L08027C74
    ldr r6, .L08027C70 @ =0x00000741
    b .L08027C8E
    .align 2, 0
.L08027C70: .4byte 0x00000741
.L08027C74:
    adds r0, r5, #0
    bl GetItemUses
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetItemMaxUses
    cmp r4, r0
    bne .L08027C8A
    movs r6, #0xe8
    lsls r6, r6, #3
.L08027C8A:
    cmp r6, #0
    beq .L08027C96
.L08027C8E:
    adds r0, r7, #0
    adds r1, r6, #0
    bl MenuFrozenHelpBox
.L08027C96:
    movs r0, #8
    b .L08027CAE
.L08027C9A:
    ldr r1, .L08027CB4 @ =gActionSt
    adds r0, r4, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    strb r0, [r1, #0x15]
    ldr r0, .L08027CB8 @ =gActiveUnit
    ldr r0, [r0]
    bl func_0802764C
    movs r0, #0x37
.L08027CAE:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08027CB4: .4byte gActionSt
.L08027CB8: .4byte gActiveUnit
    func_end func_08027C14

    thumb_func_start func_08027CBC
func_08027CBC: @ 0x08027CBC
    push {r4, lr}
    bl _call_via_r1
    ldr r0, .L08027CEC @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027CF0 @ =0x08B95B78
    bl StartMapSelect
    adds r4, r0, #0
    ldr r0, .L08027CF4 @ =0x0000072A
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08027CEC: .4byte gBmMapMovement
.L08027CF0: .4byte 0x08B95B78
.L08027CF4: .4byte 0x0000072A
    func_end func_08027CBC

    thumb_func_start func_08027CF8
func_08027CF8: @ 0x08027CF8
    push {r4, lr}
    bl _call_via_r1
    ldr r0, .L08027D28 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027D2C @ =0x08B95B58
    bl StartMapSelect
    adds r4, r0, #0
    ldr r0, .L08027D30 @ =0x0000072D
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08027D28: .4byte gBmMapMovement
.L08027D2C: .4byte 0x08B95B58
.L08027D30: .4byte 0x0000072D
    func_end func_08027CF8

    thumb_func_start func_08027D34
func_08027D34: @ 0x08027D34
    push {lr}
    bl func_08031E5C
    pop {r1}
    bx r1
    func_end func_08027D34

    thumb_func_start func_08027D40
func_08027D40: @ 0x08027D40
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031E7C
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08027D40

    thumb_func_start func_08027D64
func_08027D64: @ 0x08027D64
    push {r4, lr}
    bl func_080246E0
    ldr r0, .L08027D94 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027D98 @ =0x08B95B38
    bl StartMapSelect
    adds r4, r0, #0
    ldr r0, .L08027D9C @ =0x0000072F
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08027D94: .4byte gBmMapMovement
.L08027D98: .4byte 0x08B95B38
.L08027D9C: .4byte 0x0000072F
    func_end func_08027D64

    thumb_func_start func_08027DA0
func_08027DA0: @ 0x08027DA0
    push {lr}
    bl func_08031EF0
    pop {r1}
    bx r1
    func_end func_08027DA0

    thumb_func_start func_08027DAC
func_08027DAC: @ 0x08027DAC
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031F04
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08027DAC

    thumb_func_start func_08027DD0
func_08027DD0: @ 0x08027DD0
    push {r4, lr}
    bl _call_via_r1
    ldr r0, .L08027E00 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08027E04 @ =0x08B95B18
    bl StartMapSelect
    adds r4, r0, #0
    ldr r0, .L08027E08 @ =0x00000731
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08027E00: .4byte gBmMapMovement
.L08027E04: .4byte 0x08B95B18
.L08027E08: .4byte 0x00000731
    func_end func_08027DD0

    thumb_func_start func_08027E0C
func_08027E0C: @ 0x08027E0C
    push {lr}
    bl func_08031F5C
    pop {r1}
    bx r1
    func_end func_08027E0C

    thumb_func_start func_08027E18
func_08027E18: @ 0x08027E18
    push {r4, r5, r6, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r6, r0, #0
    ldr r0, .L08027E54 @ =gActiveUnit
    ldr r5, [r0]
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r5, #0
    bl GetOffensiveStaffAccuracy
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08031F7C
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08027E54: .4byte gActiveUnit
    func_end func_08027E18

    thumb_func_start func_08027E58
func_08027E58: @ 0x08027E58
    push {lr}
    bl func_0803279C
    bl ClearUi
    pop {r0}
    bx r0
    func_end func_08027E58

    thumb_func_start func_08027E68
func_08027E68: @ 0x08027E68
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0x12
    ands r0, r1
    cmp r0, #0
    beq .L08027E94
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl GetTrapAt
    cmp r0, #0
    bne .L08027E94
    movs r0, #1
    b .L08027E96
.L08027E94:
    movs r0, #0
.L08027E96:
    pop {r1}
    bx r1
    func_end func_08027E68

    thumb_func_start func_08027E9C
func_08027E9C: @ 0x08027E9C
    push {r4, lr}
    ldr r0, .L08027EBC @ =0x08B95BD8
    ldr r1, .L08027EC0 @ =func_08027680
    bl func_0804AEF0
    adds r4, r0, #0
    ldr r0, .L08027EC4 @ =0x0000072C
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08027EBC: .4byte 0x08B95BD8
.L08027EC0: .4byte func_08027680
.L08027EC4: .4byte 0x0000072C
    func_end func_08027E9C

    thumb_func_start func_08027EC8
func_08027EC8: @ 0x08027EC8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r1, .L08027F14 @ =gBmSt
    movs r0, #1
    ldrb r2, [r1, #4]
    orrs r0, r2
    strb r0, [r1, #4]
    ldr r0, .L08027F18 @ =0x00000735
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r5, #0
    bl func_08032560
    ldr r4, .L08027F1C @ =gActiveUnit
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl IsCameraNotWatchingPosition
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08027F0C
    ldr r0, [r4]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    adds r0, r5, #0
    bl EnsureCameraOntoPosition
.L08027F0C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08027F14: .4byte gBmSt
.L08027F18: .4byte 0x00000735
.L08027F1C: .4byte gActiveUnit
    func_end func_08027EC8

    thumb_func_start func_08027F20
func_08027F20: @ 0x08027F20
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r5, .L08027F80 @ =gBmSt
    movs r0, #0x14
    ldrsh r2, [r5, r0]
    movs r1, #0x16
    ldrsh r0, [r5, r1]
    ldr r1, .L08027F84 @ =gBmMapRange
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r4, [r0]
    bl HandlePlayerCursorMovement
    ldr r0, .L08027F88 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08027FB0
    cmp r4, #0
    beq .L08027F9C
    ldr r0, .L08027F8C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08027F64
    ldr r0, .L08027F90 @ =0x0000038A
    bl m4aSongNumStart
.L08027F64:
    adds r0, r6, #0
    bl Proc_Break
    ldr r1, .L08027F94 @ =gActionSt
    ldrh r0, [r5, #0x14]
    strb r0, [r1, #0x13]
    ldrh r0, [r5, #0x16]
    strb r0, [r1, #0x14]
    ldr r0, .L08027F98 @ =gActiveUnit
    ldr r0, [r0]
    bl func_0802764C
    b .L08027FF6
    .align 2, 0
.L08027F80: .4byte gBmSt
.L08027F84: .4byte gBmMapRange
.L08027F88: .4byte gpKeySt
.L08027F8C: .4byte gPlaySt
.L08027F90: .4byte 0x0000038A
.L08027F94: .4byte gActionSt
.L08027F98: .4byte gActiveUnit
.L08027F9C:
    ldr r0, .L08027FFC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08027FB0
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
.L08027FB0:
    ldr r0, .L08028000 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08027FE6
    ldr r0, .L08028004 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    adds r0, r6, #0
    movs r1, #0x63
    bl Proc_Goto
    ldr r0, .L08027FFC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08027FE6
    ldr r0, .L08028008 @ =0x0000038B
    bl m4aSongNumStart
.L08027FE6:
    ldr r1, .L0802800C @ =gBmSt
    movs r2, #0x20
    ldrsh r0, [r1, r2]
    movs r2, #0x22
    ldrsh r1, [r1, r2]
    movs r2, #1
    bl PutMapCursor
.L08027FF6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08027FFC: .4byte gPlaySt
.L08028000: .4byte gpKeySt
.L08028004: .4byte gBg2Tm
.L08028008: .4byte 0x0000038B
.L0802800C: .4byte gBmSt
    func_end func_08027F20

    thumb_func_start func_08028010
func_08028010: @ 0x08028010
    push {lr}
    ldr r0, .L08028030 @ =0x08B94214
    movs r1, #3
    bl Proc_Start
    ldr r0, .L08028034 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802802C
    ldr r0, .L08028038 @ =0x0000038A
    bl m4aSongNumStart
.L0802802C:
    pop {r0}
    bx r0
    .align 2, 0
.L08028030: .4byte 0x08B94214
.L08028034: .4byte gPlaySt
.L08028038: .4byte 0x0000038A
    func_end func_08028010

    thumb_func_start func_0802803C
func_0802803C: @ 0x0802803C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #4
    ands r1, r0
    cmp r1, #0
    beq .L08028052
    b .L0802818C
.L08028052:
    adds r0, r4, #0
    bl GetItemIndex
    subs r0, #0x5a
    cmp r0, #0x3c
    bls .L08028060
    b .L0802818C
.L08028060:
    lsls r0, r0, #2
    ldr r1, .L0802806C @ =.L08028070
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802806C: .4byte .L08028070
.L08028070: @ jump table
    .4byte .L08028164 @ case 0
    .4byte .L08028164 @ case 1
    .4byte .L08028164 @ case 2
    .4byte .L08028164 @ case 3
    .4byte .L08028164 @ case 4
    .4byte .L08028164 @ case 5
    .4byte .L08028164 @ case 6
    .4byte .L08028164 @ case 7
    .4byte .L08028164 @ case 8
    .4byte .L0802816E @ case 9
    .4byte .L0802816E @ case 10
    .4byte .L0802816E @ case 11
    .4byte .L0802816E @ case 12
    .4byte .L0802816E @ case 13
    .4byte .L0802818C @ case 14
    .4byte .L0802818C @ case 15
    .4byte .L0802818C @ case 16
    .4byte .L0802818C @ case 17
    .4byte .L0802818C @ case 18
    .4byte .L0802818C @ case 19
    .4byte .L0802818C @ case 20
    .4byte .L0802818C @ case 21
    .4byte .L0802818C @ case 22
    .4byte .L0802818C @ case 23
    .4byte .L0802818C @ case 24
    .4byte .L0802818C @ case 25
    .4byte .L0802818C @ case 26
    .4byte .L0802818C @ case 27
    .4byte .L0802818C @ case 28
    .4byte .L0802818C @ case 29
    .4byte .L0802818C @ case 30
    .4byte .L0802818C @ case 31
    .4byte .L0802818C @ case 32
    .4byte .L0802818C @ case 33
    .4byte .L0802818C @ case 34
    .4byte .L0802818C @ case 35
    .4byte .L0802818C @ case 36
    .4byte .L0802818C @ case 37
    .4byte .L0802818C @ case 38
    .4byte .L0802818C @ case 39
    .4byte .L0802818C @ case 40
    .4byte .L0802818C @ case 41
    .4byte .L0802818C @ case 42
    .4byte .L0802818C @ case 43
    .4byte .L0802818C @ case 44
    .4byte .L0802816E @ case 45
    .4byte .L0802817C @ case 46
    .4byte .L0802816E @ case 47
    .4byte .L0802818C @ case 48
    .4byte .L0802816E @ case 49
    .4byte .L0802818C @ case 50
    .4byte .L0802818C @ case 51
    .4byte .L0802818C @ case 52
    .4byte .L0802818C @ case 53
    .4byte .L0802818C @ case 54
    .4byte .L0802818C @ case 55
    .4byte .L0802818C @ case 56
    .4byte .L0802818C @ case 57
    .4byte .L0802818C @ case 58
    .4byte .L0802818C @ case 59
    .4byte .L0802816E @ case 60
.L08028164:
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseStatGainItem
    b .L08028176
.L0802816E:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08027400
.L08028176:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L0802818E
.L0802817C:
    ldr r0, [r5, #0xc]
    movs r1, #0x80
    lsls r1, r1, #6
    ands r0, r1
    cmp r0, #0
    bne .L0802818C
    movs r0, #1
    b .L0802818E
.L0802818C:
    movs r0, #0
.L0802818E:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0802803C

    thumb_func_start func_08028194
func_08028194: @ 0x08028194
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    bl GetUnitItemCount
    adds r5, r0, #0
    movs r4, #0
    cmp r4, r5
    bge .L080281C0
.L080281A4:
    lsls r1, r4, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x8a
    bne .L080281BA
    movs r0, #1
    b .L080281C2
.L080281BA:
    adds r4, #1
    cmp r4, r5
    blt .L080281A4
.L080281C0:
    movs r0, #0
.L080281C2:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08028194
