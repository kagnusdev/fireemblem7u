    .include "asm_prelude.inc"

    thumb_func_start func_08011118
func_08011118: @ 0x08011118
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r3, .L080111B4 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r5, #0
    strb r5, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r5, [r0]
    ldr r0, .L080111B8 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #4
    orrs r0, r1
    ldr r1, .L080111BC @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xc0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    ldr r0, .L080111C0 @ =0x0819D22C
    ldr r1, .L080111C4 @ =0x06001000
    bl Decompress
    ldr r4, .L080111C8 @ =0x0819D6E4
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r4, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L080111CC @ =gBg2Tm
    ldr r1, .L080111D0 @ =0x0819D724
    ldr r2, .L080111D4 @ =0x0000F080
    bl func_080AACD8
    movs r0, #4
    bl EnableBgSync
    adds r1, r4, #0
    adds r1, #0x20
    movs r0, #1
    str r0, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #0xf
    bl func_080AA92C
    str r5, [r6, #0x30]
    movs r0, #0x20
    str r0, [r6, #0x34]
    str r5, [r6, #0x3c]
    str r5, [r6, #0x40]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080111B4: .4byte gDispIo
.L080111B8: .4byte 0x0000FFE0
.L080111BC: .4byte 0x0000E0FF
.L080111C0: .4byte 0x0819D22C
.L080111C4: .4byte 0x06001000
.L080111C8: .4byte 0x0819D6E4
.L080111CC: .4byte gBg2Tm
.L080111D0: .4byte 0x0819D724
.L080111D4: .4byte 0x0000F080
    func_end func_08011118

    thumb_func_start func_080111D8
func_080111D8: @ 0x080111D8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    adds r0, #1
    str r0, [r4, #0x30]
    asrs r5, r0, #1
    ldr r3, .L08011254 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r2, #0
    strb r5, [r0]
    movs r0, #0x10
    subs r0, r0, r5
    cmp r0, #0xd
    bge .L08011208
    movs r0, #0xd
.L08011208:
    adds r1, r3, #0
    adds r1, #0x45
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r2, [r0]
    cmp r5, #0x10
    bne .L08011220
    str r2, [r4, #0x30]
    adds r0, r4, #0
    bl Proc_Break
.L08011220:
    ldr r3, [r4, #0x34]
    adds r3, #1
    str r3, [r4, #0x34]
    lsls r0, r3, #1
    adds r0, r0, r3
    ldr r1, [r4, #0x3c]
    adds r1, r1, r0
    str r1, [r4, #0x3c]
    ldr r2, [r4, #0x40]
    adds r2, r2, r3
    str r2, [r4, #0x40]
    asrs r1, r1, #5
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    asrs r2, r2, #5
    rsbs r2, r2, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #2
    bl SetBgOffset
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08011254: .4byte gDispIo
    func_end func_080111D8

    thumb_func_start func_08011258
func_08011258: @ 0x08011258
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    adds r0, #1
    str r0, [r4, #0x30]
    ldr r1, [r4, #0x2c]
    cmp r0, r1
    blt .L08011272
    movs r0, #0
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl Proc_Break
.L08011272:
    ldr r3, [r4, #0x34]
    lsls r0, r3, #1
    adds r0, r0, r3
    ldr r1, [r4, #0x3c]
    adds r1, r1, r0
    str r1, [r4, #0x3c]
    ldr r2, [r4, #0x40]
    adds r2, r2, r3
    str r2, [r4, #0x40]
    asrs r1, r1, #5
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    asrs r2, r2, #5
    rsbs r2, r2, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #2
    bl SetBgOffset
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08011258

    thumb_func_start func_080112A0
func_080112A0: @ 0x080112A0
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    adds r0, #1
    str r0, [r4, #0x30]
    asrs r5, r0, #3
    ldr r3, .L08011318 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    movs r0, #0x10
    subs r0, r0, r5
    adds r1, r3, #0
    adds r1, #0x44
    strb r0, [r1]
    adds r0, r5, #0
    adds r0, #0xd
    cmp r0, #0x10
    ble .L080112D2
    movs r0, #0x10
.L080112D2:
    adds r1, r3, #0
    adds r1, #0x45
    strb r0, [r1]
    adds r1, #1
    movs r0, #0
    strb r0, [r1]
    ldr r3, [r4, #0x34]
    lsls r0, r3, #1
    adds r0, r0, r3
    ldr r1, [r4, #0x3c]
    adds r1, r1, r0
    str r1, [r4, #0x3c]
    ldr r2, [r4, #0x40]
    adds r2, r2, r3
    str r2, [r4, #0x40]
    asrs r1, r1, #5
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    asrs r2, r2, #5
    rsbs r2, r2, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #2
    bl SetBgOffset
    cmp r5, #0x10
    bne .L08011310
    adds r0, r4, #0
    bl Proc_Break
.L08011310:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08011318: .4byte gDispIo
    func_end func_080112A0

    thumb_func_start func_0801131C
func_0801131C: @ 0x0801131C
    push {lr}
    ldr r0, .L08011354 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r2, .L08011358 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r3, r2, #0
    adds r3, #0x45
    movs r0, #0x10
    strb r0, [r3]
    adds r0, r2, #0
    adds r0, #0x46
    strb r1, [r0]
    pop {r0}
    bx r0
    .align 2, 0
.L08011354: .4byte gBg2Tm
.L08011358: .4byte gDispIo
    func_end func_0801131C

    thumb_func_start func_0801135C
func_0801135C: @ 0x0801135C
    push {r4, lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x30]
    ldr r4, [r0, #4]
    adds r2, r1, #0
    adds r2, #0x5e
    movs r0, #4
    ldrh r2, [r2]
    ands r0, r2
    cmp r0, #0
    bne .L08011384
    ldr r0, .L08011380 @ =0x08B92034
    bl Proc_StartBlocking
    str r4, [r0, #0x2c]
    movs r0, #2
    b .L08011386
    .align 2, 0
.L08011380: .4byte 0x08B92034
.L08011384:
    movs r0, #0
.L08011386:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0801135C
