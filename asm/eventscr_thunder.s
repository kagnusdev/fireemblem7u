    .include "asm_prelude.inc"

    thumb_func_start func_0801138C
func_0801138C: @ 0x0801138C
    push {r4, r5, lr}
    sub sp, #0x14
    ldr r5, .L08011420 @ =gDispIo
    movs r2, #4
    rsbs r2, r2, #0
    adds r1, r2, #0
    ldrb r3, [r5, #0xc]
    ands r1, r3
    strb r1, [r5, #0xc]
    adds r1, r2, #0
    ldrb r3, [r5, #0x10]
    ands r1, r3
    movs r3, #1
    orrs r1, r3
    strb r1, [r5, #0x10]
    ldrb r1, [r5, #0x14]
    ands r2, r1
    strb r2, [r5, #0x14]
    movs r1, #3
    ldrb r2, [r5, #0x18]
    orrs r1, r2
    strb r1, [r5, #0x18]
    adds r3, r5, #0
    adds r3, #0x3c
    movs r1, #0x3f
    ldrb r2, [r3]
    ands r1, r2
    movs r2, #0x40
    orrs r1, r2
    strb r1, [r3]
    adds r2, r5, #0
    adds r2, #0x44
    movs r4, #0
    movs r1, #0x10
    strb r1, [r2]
    adds r2, #1
    strb r1, [r2]
    adds r1, r5, #0
    adds r1, #0x46
    strb r4, [r1]
    ldr r1, .L08011424 @ =0x0000FFE0
    ldrh r3, [r5, #0x3c]
    ands r1, r3
    movs r2, #4
    orrs r1, r2
    ldr r2, .L08011428 @ =0x0000E0FF
    ands r1, r2
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r2, r3, #0
    orrs r1, r2
    strh r1, [r5, #0x3c]
    str r4, [r0, #0x30]
    ldr r5, .L0801142C @ =0x08B92074
    ldr r2, [r0, #0x3c]
    adds r2, #0x54
    ldr r3, [r0, #0x40]
    str r4, [sp]
    movs r1, #0x80
    lsls r1, r1, #6
    str r1, [sp, #4]
    movs r1, #0xf
    str r1, [sp, #8]
    str r4, [sp, #0xc]
    str r0, [sp, #0x10]
    adds r0, r5, #0
    movs r1, #2
    bl func_080AA78C
    add sp, #0x14
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08011420: .4byte gDispIo
.L08011424: .4byte 0x0000FFE0
.L08011428: .4byte 0x0000E0FF
.L0801142C: .4byte 0x08B92074
    func_end func_0801138C

    thumb_func_start func_08011430
func_08011430: @ 0x08011430
    push {lr}
    ldr r2, .L08011460 @ =gDispIo
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
    bl InitBmBgLayers
    pop {r0}
    bx r0
    .align 2, 0
.L08011460: .4byte gDispIo
    func_end func_08011430

    thumb_func_start func_08011464
func_08011464: @ 0x08011464
    push {r4, r5, lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x30]
    ldr r4, [r0, #4]
    ldr r5, [r0, #8]
    adds r2, r1, #0
    adds r2, #0x5e
    movs r0, #4
    ldrh r2, [r2]
    ands r0, r2
    cmp r0, #0
    bne .L08011490
    ldr r0, .L0801148C @ =0x08B92140
    bl Proc_StartBlocking
    str r4, [r0, #0x3c]
    str r5, [r0, #0x40]
    movs r0, #2
    b .L08011492
    .align 2, 0
.L0801148C: .4byte 0x08B92140
.L08011490:
    movs r0, #0
.L08011492:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08011464

    thumb_func_start func_08011498
func_08011498: @ 0x08011498
    push {lr}
    ldr r0, .L080114A8 @ =0x08B92140
    bl Proc_Find
    cmp r0, #0
    bne .L080114AC
    movs r0, #0
    b .L080114AE
    .align 2, 0
.L080114A8: .4byte 0x08B92140
.L080114AC:
    movs r0, #1
.L080114AE:
    pop {r1}
    bx r1
    func_end func_08011498
