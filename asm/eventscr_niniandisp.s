    .include "asm_prelude.inc"

    thumb_func_start func_080114B4
func_080114B4: @ 0x080114B4
    push {r4, lr}
    movs r3, #0
    str r3, [r0, #0x30]
    ldr r0, .L08011530 @ =gDispIo
    mov ip, r0
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    mov r2, ip
    ldrb r2, [r2, #0xc]
    ands r0, r2
    mov r4, ip
    strb r0, [r4, #0xc]
    adds r0, r1, #0
    ldrb r2, [r4, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r4, #0x10]
    ldrb r4, [r4, #0x14]
    ands r1, r4
    mov r0, ip
    strb r1, [r0, #0x14]
    movs r0, #3
    mov r1, ip
    ldrb r1, [r1, #0x18]
    orrs r0, r1
    mov r2, ip
    strb r0, [r2, #0x18]
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r4, [r2]
    ands r0, r4
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    mov r0, ip
    adds r0, #0x44
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r3, [r0]
    ldr r0, .L08011534 @ =0x0000FFE0
    mov r1, ip
    ldrh r1, [r1, #0x3c]
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    ldr r1, .L08011538 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xc0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    mov r4, ip
    strh r0, [r4, #0x3c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08011530: .4byte gDispIo
.L08011534: .4byte 0x0000FFE0
.L08011538: .4byte 0x0000E0FF
    func_end func_080114B4

    thumb_func_start func_0801153C
func_0801153C: @ 0x0801153C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    adds r0, #1
    str r0, [r4, #0x30]
    movs r2, #0x80
    lsls r2, r2, #1
    subs r2, r2, r0
    ldr r3, .L0801156C @ =0xFFFFBFFF
    adds r0, r2, #0
    adds r1, r2, #0
    bl func_08013728
    ldr r0, [r4, #0x30]
    cmp r0, #0x40
    bne .L08011566
    movs r0, #0
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl Proc_Break
.L08011566:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801156C: .4byte 0xFFFFBFFF
    func_end func_0801153C

    thumb_func_start func_08011570
func_08011570: @ 0x08011570
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x30]
    adds r0, r2, #1
    str r0, [r4, #0x30]
    adds r2, #0xc1
    ldr r3, .L0801159C @ =0xFFFFBFFF
    adds r0, r2, #0
    adds r1, r2, #0
    bl func_08013728
    ldr r0, [r4, #0x30]
    cmp r0, #0x40
    bne .L08011596
    movs r0, #0
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl Proc_Break
.L08011596:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801159C: .4byte 0xFFFFBFFF
    func_end func_08011570

    thumb_func_start func_080115A0
func_080115A0: @ 0x080115A0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    adds r0, #1
    str r0, [r4, #0x30]
    movs r1, #0xfa
    lsls r1, r1, #2
    cmp r0, r1
    bne .L080115BE
    movs r0, #0
    bl func_080AA76C
    adds r0, r4, #0
    bl Proc_Break
.L080115BE:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080115A0

    thumb_func_start func_080115C4
func_080115C4: @ 0x080115C4
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, .L08011610 @ =0x081AA680
    ldr r1, .L08011614 @ =0x06010800
    bl Decompress
    ldr r0, .L08011618 @ =0x081AA898
    movs r1, #0xa8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    movs r4, #0
.L080115E0:
    movs r5, #0
    str r5, [sp]
    movs r0, #4
    str r0, [sp, #4]
    ldr r0, .L0801161C @ =0x081AA8B8
    movs r1, #0xc0
    lsls r1, r1, #1
    movs r2, #0
    ldr r3, .L08011620 @ =0x00005040
    bl StartSpriteAnimProc
    lsls r2, r4, #2
    adds r1, r6, #0
    adds r1, #0x44
    adds r1, r1, r2
    str r0, [r1]
    adds r4, #1
    cmp r4, #7
    ble .L080115E0
    str r5, [r6, #0x30]
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08011610: .4byte 0x081AA680
.L08011614: .4byte 0x06010800
.L08011618: .4byte 0x081AA898
.L0801161C: .4byte 0x081AA8B8
.L08011620: .4byte 0x00005040
    func_end func_080115C4

    thumb_func_start func_08011624
func_08011624: @ 0x08011624
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r6, r0, #0
    ldr r4, [r6, #0x30]
    adds r4, #1
    str r4, [r6, #0x30]
    ldr r0, [r6, #0x3c]
    lsls r0, r0, #4
    ldr r2, .L0801172C @ =gBmSt
    movs r3, #0xc
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r0, #8
    str r0, [sp, #8]
    ldr r0, .L08011730 @ =0x000001FF
    ldr r1, [sp, #8]
    ands r1, r0
    str r1, [sp, #8]
    ldr r0, [r6, #0x40]
    lsls r0, r0, #4
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r0, #8
    mov sl, r0
    movs r0, #0xff
    mov r1, sl
    ands r1, r0
    mov sl, r1
    movs r2, #0xa0
    subs r4, r2, r4
    lsls r0, r4, #4
    subs r0, r0, r4
    lsls r0, r0, #3
    muls r0, r4, r0
    movs r5, #0xc8
    lsls r5, r5, #7
    adds r1, r5, #0
    bl __divsi3
    adds r7, r0, #0
    lsls r0, r4, #8
    muls r0, r4, r0
    adds r1, r5, #0
    bl __divsi3
    movs r1, #0x88
    lsls r1, r1, #1
    movs r5, #0
    ldr r3, .L08011734 @ =0x080C5A48
    mov sb, r3
    movs r2, #0xff
    mov r8, r2
    subs r4, r1, r0
.L08011698:
    adds r2, r4, #0
    mov r3, r8
    ands r2, r3
    adds r0, r2, #0
    adds r0, #0x40
    lsls r0, r0, #1
    add r0, sb
    movs r1, #0
    ldrsh r0, [r0, r1]
    muls r0, r7, r0
    asrs r0, r0, #0xc
    movs r1, #0x78
    subs r1, r1, r0
    lsls r2, r2, #1
    add r2, sb
    movs r3, #0
    ldrsh r0, [r2, r3]
    muls r0, r7, r0
    asrs r0, r0, #0xc
    movs r2, #0x50
    subs r2, r2, r0
    lsls r3, r5, #2
    adds r0, r6, #0
    adds r0, #0x44
    adds r0, r0, r3
    ldr r0, [r0]
    ldr r3, .L08011730 @ =0x000001FF
    ands r1, r3
    mov r3, r8
    ands r2, r3
    movs r3, #0x80
    lsls r3, r3, #3
    adds r2, r2, r3
    movs r3, #1
    rsbs r3, r3, #0
    bl SetSpriteAnimProcParameters
    adds r4, #0x20
    adds r5, #1
    cmp r5, #7
    ble .L08011698
    movs r0, #0xa0
    movs r1, #3
    bl __divsi3
    ldr r1, [r6, #0x30]
    cmp r1, r0
    bne .L08011710
    ldr r0, .L08011738 @ =0x081AA8B8
    movs r2, #0x80
    lsls r2, r2, #3
    add r2, sl
    ldr r3, .L0801173C @ =0x00005040
    movs r1, #1
    str r1, [sp]
    movs r1, #4
    str r1, [sp, #4]
    ldr r1, [sp, #8]
    bl StartSpriteAnimProc
.L08011710:
    ldr r0, [r6, #0x30]
    cmp r0, #0xa0
    bne .L0801171C
    adds r0, r6, #0
    bl Proc_Break
.L0801171C:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801172C: .4byte gBmSt
.L08011730: .4byte 0x000001FF
.L08011734: .4byte gSinLut
.L08011738: .4byte 0x081AA8B8
.L0801173C: .4byte 0x00005040
    func_end func_08011624

    thumb_func_start func_08011740
func_08011740: @ 0x08011740
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r5, #0x44
    movs r4, #7
.L08011748:
    ldm r5!, {r0}
    bl EndSpriteAnimProc
    subs r4, #1
    cmp r4, #0
    bge .L08011748
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08011740

    thumb_func_start func_0801175C
func_0801175C: @ 0x0801175C
    push {r4, r5, r6, lr}
    sub sp, #0x14
    adds r5, r0, #0
    ldr r2, [r5, #0x3c]
    lsls r2, r2, #4
    ldr r4, .L080117A8 @ =gBmSt
    movs r1, #0xc
    ldrsh r0, [r4, r1]
    subs r2, r2, r0
    subs r2, #0x28
    movs r1, #0xff
    ands r2, r1
    ldr r3, [r5, #0x40]
    lsls r3, r3, #4
    movs r6, #0xe
    ldrsh r0, [r4, r6]
    subs r3, r3, r0
    subs r3, #0x28
    ands r3, r1
    ldr r0, .L080117AC @ =0x08B92168
    movs r4, #0
    str r4, [sp]
    movs r1, #0x80
    lsls r1, r1, #6
    str r1, [sp, #4]
    movs r1, #0xf
    str r1, [sp, #8]
    str r4, [sp, #0xc]
    str r5, [sp, #0x10]
    movs r1, #2
    bl func_080AA78C
    str r4, [r5, #0x30]
    add sp, #0x14
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080117A8: .4byte gBmSt
.L080117AC: .4byte 0x08B92168
    func_end func_0801175C

    thumb_func_start func_080117B0
func_080117B0: @ 0x080117B0
    push {r4, r5, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    adds r0, #1
    str r0, [r4, #0x30]
    movs r5, #0
    cmp r0, #0x14
    bne .L080117D8
    ldr r2, [r4, #0x3c]
    ldr r3, [r4, #0x40]
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #1
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    movs r0, #0xdc
    movs r1, #0x40
    bl func_08011D34
.L080117D8:
    ldr r0, [r4, #0x30]
    cmp r0, #0x28
    bne .L080117EC
    str r5, [r4, #0x30]
    movs r0, #0
    bl func_080AA76C
    adds r0, r4, #0
    bl Proc_Break
.L080117EC:
    add sp, #0x10
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080117B0

    thumb_func_start func_080117F4
func_080117F4: @ 0x080117F4
    push {lr}
    ldr r2, .L08011824 @ =gDispIo
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
.L08011824: .4byte gDispIo
    func_end func_080117F4

    thumb_func_start func_08011828
func_08011828: @ 0x08011828
    push {r4, r5, lr}
    sub sp, #0x10
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
    bne .L08011854
    ldr r0, .L08011850 @ =0x08B92354
    bl Proc_StartBlocking
    str r4, [r0, #0x3c]
    str r5, [r0, #0x40]
    movs r0, #2
    b .L0801186E
    .align 2, 0
.L08011850: .4byte 0x08B92354
.L08011854:
    str r4, [sp]
    str r5, [sp, #4]
    movs r0, #1
    str r0, [sp, #8]
    movs r0, #0
    str r0, [sp, #0xc]
    movs r0, #0xdc
    movs r1, #0x54
    adds r2, r4, #0
    adds r3, r5, #0
    bl func_08011D34
    movs r0, #0
.L0801186E:
    add sp, #0x10
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08011828
