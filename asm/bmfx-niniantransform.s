    .include "asm_prelude.inc"

    thumb_func_start func_08021374
func_08021374: @ 0x08021374
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r6, r2, #0
    movs r2, #0
    lsls r5, r1, #2
.L0802137E:
    lsls r0, r2, #5
    adds r4, r2, #1
    movs r1, #3
    adds r0, r0, r5
    adds r0, r0, r6
    adds r3, r0, #3
    lsls r0, r2, #6
    adds r0, r0, r7
    adds r0, #6
.L08021390:
    strh r3, [r0]
    subs r3, #1
    subs r0, #2
    subs r1, #1
    cmp r1, #0
    bge .L08021390
    adds r2, r4, #0
    cmp r2, #3
    ble .L0802137E
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08021374

    thumb_func_start func_080213A8
func_080213A8: @ 0x080213A8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    adds r7, r6, #0
    adds r7, #0x4a
    ldrh r0, [r7]
    cmp r0, #6
    bne .L080213C4
    adds r0, r6, #0
    movs r1, #0x63
    bl Proc_Goto
    b .L08021460
.L080213C4:
    bl ClearUi
    ldr r0, [r6, #0x30]
    lsls r0, r0, #5
    ldr r1, [r6, #0x2c]
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L0802146C @ =gBg0Tm
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r7, r2]
    movs r4, #0xa2
    lsls r4, r4, #7
    adds r2, r4, #0
    bl func_08021374
    ldr r0, [r6, #0x30]
    lsls r0, r0, #5
    ldr r1, [r6, #0x2c]
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L08021470 @ =gBg1Tm
    adds r0, r0, r1
    ldrh r1, [r7]
    adds r1, #1
    movs r5, #0
    movs r2, #0
    mov r8, r2
    strh r1, [r7]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    adds r2, r4, #0
    bl func_08021374
    ldr r3, .L08021474 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r3, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r3, #1]
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x45
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    ldr r0, .L08021478 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #1
    orrs r0, r1
    ldr r1, .L0802147C @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    adds r0, r6, #0
    adds r0, #0x4c
    mov r1, r8
    strh r1, [r0]
.L08021460:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802146C: .4byte gBg0Tm
.L08021470: .4byte gBg1Tm
.L08021474: .4byte gDispIo
.L08021478: .4byte 0x0000FFE0
.L0802147C: .4byte 0x0000E0FF
    func_end func_080213A8

    thumb_func_start func_08021480
func_08021480: @ 0x08021480
    push {r4, r5, lr}
    adds r5, r0, #0
    bl GetGameTime
    adds r4, r0, #0
    movs r0, #1
    ands r4, r0
    cmp r4, #0
    bne .L080214D0
    ldr r0, .L080214D8 @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r3, r5, #0
    adds r3, #0x4c
    ldrh r1, [r3]
    movs r0, #0x10
    subs r0, r0, r1
    adds r2, #8
    strb r0, [r2]
    mov r0, ip
    adds r0, #0x45
    strb r1, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r1, #1
    strh r1, [r3]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    cmp r1, #0x10
    ble .L080214D0
    adds r0, r5, #0
    bl Proc_Break
.L080214D0:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080214D8: .4byte gDispIo
    func_end func_08021480

    thumb_func_start func_080214DC
func_080214DC: @ 0x080214DC
    push {lr}
    ldr r0, .L080214F0 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L080214F0: .4byte gBg0Tm
    func_end func_080214DC

    thumb_func_start func_080214F4
func_080214F4: @ 0x080214F4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    ldr r0, .L08021530 @ =0x081BDAEC
    ldr r1, .L08021534 @ =0x06002000
    bl Decompress
    ldr r0, .L08021538 @ =0x02022C20
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0802153C @ =0x08B93D5C
    adds r1, r6, #0
    bl Proc_StartBlocking
    lsls r4, r4, #1
    subs r4, #1
    str r4, [r0, #0x2c]
    lsls r5, r5, #1
    subs r5, #2
    str r5, [r0, #0x30]
    adds r0, #0x4a
    movs r1, #0
    strh r1, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08021530: .4byte 0x081BDAEC
.L08021534: .4byte 0x06002000
.L08021538: .4byte 0x02022C20
.L0802153C: .4byte 0x08B93D5C
    func_end func_080214F4
