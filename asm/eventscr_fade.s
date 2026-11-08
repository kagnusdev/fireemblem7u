    .include "asm_prelude.inc"


    thumb_func_start func_08011A40
func_08011A40: @ 0x08011A40
    movs r1, #0
    str r1, [r0, #0x38]
    bx lr
    func_end func_08011A40

    thumb_func_start func_08011A48
func_08011A48: @ 0x08011A48
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x38]
    ldr r1, [r4, #0x34]
    adds r0, r0, r1
    str r0, [r4, #0x38]
    cmp r0, #0xff
    ble .L08011A64
    adds r0, r4, #0
    bl Proc_Break
    movs r0, #0x80
    lsls r0, r0, #1
    str r0, [r4, #0x38]
.L08011A64:
    ldr r2, [r4, #0x38]
    movs r0, #0x80
    lsls r0, r0, #1
    subs r3, r0, r2
    ldr r0, [r4, #0x3c]
    adds r1, r0, #0
    muls r1, r3, r1
    ldr r0, [r4, #0x48]
    muls r0, r2, r0
    adds r0, r1, r0
    cmp r0, #0
    bge .L08011A7E
    adds r0, #0xff
.L08011A7E:
    asrs r6, r0, #8
    ldr r0, [r4, #0x40]
    adds r1, r0, #0
    muls r1, r3, r1
    ldr r0, [r4, #0x4c]
    muls r0, r2, r0
    adds r1, r1, r0
    cmp r1, #0
    bge .L08011A92
    adds r1, #0xff
.L08011A92:
    asrs r5, r1, #8
    ldr r0, [r4, #0x44]
    adds r1, r0, #0
    muls r1, r3, r1
    ldr r0, [r4, #0x50]
    muls r0, r2, r0
    adds r0, r1, r0
    cmp r0, #0
    bge .L08011AA6
    adds r0, #0xff
.L08011AA6:
    asrs r2, r0, #8
    ldr r3, [r4, #0x30]
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08013728
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08011A48

    thumb_func_start func_08011AB8
func_08011AB8: @ 0x08011AB8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    adds r4, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    ldr r1, [sp, #0x1c]
    ldr r0, .L08011B08 @ =0x08B923CC
    bl Proc_StartBlocking
    adds r5, r0, #0
    movs r0, #0xff
    ands r0, r4
    cmp r0, #0x80
    bne .L08011ADC
    movs r0, #0x80
    lsls r0, r0, #1
.L08011ADC:
    str r0, [r5, #0x34]
    bl func_08013664
    str r0, [r5, #0x3c]
    bl func_08013670
    str r0, [r5, #0x40]
    bl func_08013680
    str r0, [r5, #0x44]
    mov r0, r8
    str r0, [r5, #0x30]
    str r6, [r5, #0x48]
    str r7, [r5, #0x4c]
    ldr r0, [sp, #0x18]
    str r0, [r5, #0x50]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08011B08: .4byte 0x08B923CC
    func_end func_08011AB8

    thumb_func_start func_08011B0C
func_08011B0C: @ 0x08011B0C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, [r5, #0x30]
    ldr r6, [r0, #4]
    ldr r7, [r0, #8]
    ldr r0, [r0, #0xc]
    ldr r1, .L08011B48 @ =0x000003FF
    adds r4, r0, #0
    ands r4, r1
    lsrs r3, r0, #0xa
    ands r3, r1
    lsrs r2, r0, #0x14
    ands r2, r1
    adds r1, r5, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08011B4C
    str r2, [sp]
    str r5, [sp, #4]
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl func_08011AB8
    movs r0, #2
    b .L08011B4E
    .align 2, 0
.L08011B48: .4byte 0x000003FF
.L08011B4C:
    movs r0, #0
.L08011B4E:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08011B0C

    thumb_func_start func_08011B58
func_08011B58: @ 0x08011B58
    push {lr}
    bl func_080136AC
    movs r0, #2
    pop {r1}
    bx r1
    func_end func_08011B58

    thumb_func_start func_08011B64
func_08011B64: @ 0x08011B64
    push {lr}
    movs r2, #0x80
    lsls r2, r2, #1
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r2, #0
    adds r1, r2, #0
    bl func_08013728
    movs r0, #2
    pop {r1}
    bx r1
    func_end func_08011B64
