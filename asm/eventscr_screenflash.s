    .include "asm_prelude.inc"

    thumb_func_start func_08011878
func_08011878: @ 0x08011878
    push {lr}
    movs r1, #0
    str r1, [r0, #0x3c]
    bl func_080136AC
    pop {r0}
    bx r0
    func_end func_08011878

    thumb_func_start func_08011888
func_08011888: @ 0x08011888
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x3c]
    ldr r0, [r4, #0x34]
    adds r2, r1, r0
    str r2, [r4, #0x3c]
    cmp r2, #0xff
    bgt .L080118C4
    movs r0, #0x80
    lsls r0, r0, #1
    subs r0, r0, r2
    lsls r3, r0, #8
    ldr r0, [r4, #0x40]
    muls r0, r2, r0
    adds r0, r3, r0
    cmp r0, #0
    bge .L080118AC
    adds r0, #0xff
.L080118AC:
    asrs r5, r0, #8
    ldr r0, [r4, #0x48]
    muls r0, r2, r0
    adds r1, r3, r0
    cmp r1, #0
    bge .L080118BA
    adds r1, #0xff
.L080118BA:
    asrs r1, r1, #8
    ldr r0, [r4, #0x44]
    muls r0, r2, r0
    adds r0, r3, r0
    b .L080118F4
.L080118C4:
    movs r0, #0x80
    lsls r0, r0, #2
    subs r3, r0, r2
    ldr r0, [r4, #0x40]
    adds r1, r0, #0
    muls r1, r3, r1
    ldr r5, .L08011924 @ =0xFFFFFF00
    adds r0, r2, r5
    lsls r2, r0, #8
    adds r0, r1, r2
    cmp r0, #0
    bge .L080118DE
    adds r0, #0xff
.L080118DE:
    asrs r5, r0, #8
    ldr r0, [r4, #0x48]
    muls r0, r3, r0
    adds r0, r0, r2
    cmp r0, #0
    bge .L080118EC
    adds r0, #0xff
.L080118EC:
    asrs r1, r0, #8
    ldr r0, [r4, #0x44]
    muls r0, r3, r0
    adds r0, r0, r2
.L080118F4:
    cmp r0, #0
    bge .L080118FA
    adds r0, #0xff
.L080118FA:
    asrs r2, r0, #8
    ldr r3, [r4, #0x30]
    adds r0, r5, #0
    bl func_08013728
    ldr r1, [r4, #0x3c]
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bne .L08011928
    ldr r0, [r4, #0x2c]
    subs r0, #1
    str r0, [r4, #0x2c]
    cmp r0, #0
    bgt .L08011934
    movs r0, #0
    str r0, [r4, #0x3c]
    adds r0, r4, #0
    bl Proc_Break
    b .L08011934
    .align 2, 0
.L08011924: .4byte 0xFFFFFF00
.L08011928:
    movs r0, #0x80
    lsls r0, r0, #2
    cmp r1, r0
    bne .L08011934
    movs r0, #0
    str r0, [r4, #0x3c]
.L08011934:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08011888

    thumb_func_start func_0801193C
func_0801193C: @ 0x0801193C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x3c]
    ldr r0, [r4, #0x38]
    adds r1, r1, r0
    str r1, [r4, #0x3c]
    movs r7, #0x80
    lsls r7, r7, #1
    subs r2, r7, r1
    ldr r0, [r4, #0x40]
    muls r0, r2, r0
    lsls r1, r1, #8
    adds r0, r0, r1
    cmp r0, #0
    bge .L0801195C
    adds r0, #0xff
.L0801195C:
    asrs r6, r0, #8
    ldr r0, [r4, #0x48]
    muls r0, r2, r0
    adds r0, r0, r1
    cmp r0, #0
    bge .L0801196A
    adds r0, #0xff
.L0801196A:
    asrs r5, r0, #8
    ldr r0, [r4, #0x44]
    muls r0, r2, r0
    adds r0, r0, r1
    cmp r0, #0
    bge .L08011978
    adds r0, #0xff
.L08011978:
    asrs r2, r0, #8
    ldr r3, [r4, #0x30]
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08013728
    ldr r0, [r4, #0x3c]
    cmp r0, r7
    bne .L08011990
    adds r0, r4, #0
    bl Proc_Break
.L08011990:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0801193C

    thumb_func_start func_08011998
func_08011998: @ 0x08011998
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    adds r4, r1, #0
    adds r5, r2, #0
    adds r6, r3, #0
    ldr r7, [sp, #0x18]
    ldr r1, [sp, #0x24]
    ldr r0, .L080119D0 @ =0x08B923A4
    bl Proc_StartBlocking
    str r4, [r0, #0x2c]
    mov r1, r8
    str r1, [r0, #0x30]
    str r5, [r0, #0x34]
    str r6, [r0, #0x38]
    str r7, [r0, #0x40]
    ldr r1, [sp, #0x1c]
    str r1, [r0, #0x48]
    ldr r1, [sp, #0x20]
    str r1, [r0, #0x44]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080119D0: .4byte 0x08B923A4
    func_end func_08011998

    thumb_func_start func_080119D4
func_080119D4: @ 0x080119D4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x10
    adds r7, r0, #0
    ldr r0, [r7, #0x30]
    ldr r1, [r0, #4]
    mov ip, r1
    ldr r1, [r0, #8]
    mov r8, r1
    ldr r1, [r0, #0xc]
    movs r2, #0xff
    adds r6, r1, #0
    ands r6, r2
    lsrs r5, r1, #0x10
    ands r5, r2
    ldr r0, [r0, #0x10]
    ldr r1, .L08011A2C @ =0x000003FF
    adds r4, r0, #0
    ands r4, r1
    lsrs r3, r0, #0xa
    ands r3, r1
    lsrs r2, r0, #0x14
    ands r2, r1
    adds r1, r7, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08011A30
    str r4, [sp]
    str r3, [sp, #4]
    str r2, [sp, #8]
    str r7, [sp, #0xc]
    mov r0, ip
    mov r1, r8
    adds r2, r6, #0
    adds r3, r5, #0
    bl func_08011998
    movs r0, #2
    b .L08011A32
    .align 2, 0
.L08011A2C: .4byte 0x000003FF
.L08011A30:
    movs r0, #0
.L08011A32:
    add sp, #0x10
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080119D4
