    .include "asm_prelude.inc"

    thumb_func_start func_0806E2FC
func_0806E2FC: @ 0x0806E2FC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0806E314 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x62
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806E318
    b .L0806E31A
    .align 2, 0
.L0806E314: .4byte 0x0203E0FC
.L0806E318:
    b .L0806E31C
.L0806E31A:
    b .L0806E32E
.L0806E31C:
    ldr r0, .L0806E338 @ =0x0203E0FC
    ldr r1, [r0, #0x18]
    adds r0, r1, #0
    adds r1, #0x48
    ldrh r2, [r1]
    adds r0, r2, #0
    ldr r1, [r7]
    bl func_0800EEF4
.L0806E32E:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E338: .4byte 0x0203E0FC
    func_end func_0806E2FC

    thumb_func_start func_0806E33C
func_0806E33C: @ 0x0806E33C
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    str r0, [r7, #4]
    ldr r1, .L0806E390 @ =0x0203A3F0
    adds r0, r1, #0
    bl func_0806E398
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E35C
    ldr r0, .L0806E390 @ =0x0203A3F0
    str r0, [r7, #4]
.L0806E35C:
    ldr r1, .L0806E394 @ =0x0203A470
    adds r0, r1, #0
    bl func_0806E398
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E370
    ldr r0, .L0806E394 @ =0x0203A470
    str r0, [r7, #4]
.L0806E370:
    ldr r0, [r7, #4]
    cmp r0, #0
    beq .L0806E386
    ldr r1, [r7, #4]
    adds r0, r1, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    ldr r1, [r7]
    bl func_0800EDE0
.L0806E386:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E390: .4byte 0x0203A3F0
.L0806E394: .4byte 0x0203A470
    func_end func_0806E33C

    thumb_func_start func_0806E398
func_0806E398: @ 0x0806E398
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    movs r1, #0xb
    ldrsb r1, [r0, r1]
    movs r2, #0xc0
    adds r0, r1, #0
    ands r0, r2
    cmp r0, #0
    bne .L0806E3BE
    ldr r0, [r7]
    bl func_0802A814
    lsls r2, r0, #0x18
    asrs r1, r2, #0x18
    adds r0, r1, #0
    b .L0806E3C2
.L0806E3BE:
    movs r0, #0
    b .L0806E3C2
.L0806E3C2:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806E398

    thumb_func_start func_0806E3CC
func_0806E3CC: @ 0x0806E3CC
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    str r0, [r7, #4]
    ldr r1, .L0806E420 @ =0x0203A3F0
    adds r0, r1, #0
    bl func_0806E428
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E3EC
    ldr r0, .L0806E420 @ =0x0203A3F0
    str r0, [r7, #4]
.L0806E3EC:
    ldr r1, .L0806E424 @ =0x0203A470
    adds r0, r1, #0
    bl func_0806E428
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E400
    ldr r0, .L0806E424 @ =0x0203A470
    str r0, [r7, #4]
.L0806E400:
    ldr r0, [r7, #4]
    cmp r0, #0
    beq .L0806E416
    ldr r1, [r7, #4]
    adds r0, r1, #0
    adds r1, #0x50
    ldrb r2, [r1]
    adds r0, r2, #0
    ldr r1, [r7]
    bl func_0800EE28
.L0806E416:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E420: .4byte 0x0203A3F0
.L0806E424: .4byte 0x0203A470
    func_end func_0806E3CC

    thumb_func_start func_0806E428
func_0806E428: @ 0x0806E428
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    movs r1, #0xb
    ldrsb r1, [r0, r1]
    movs r2, #0xc0
    adds r0, r1, #0
    ands r0, r2
    cmp r0, #0
    bne .L0806E452
    ldr r0, [r7]
    bl func_08029BE8
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E452
    movs r0, #1
    b .L0806E456
.L0806E452:
    movs r0, #0
    b .L0806E456
.L0806E456:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806E428

    thumb_func_start func_0806E460
func_0806E460: @ 0x0806E460
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl ResetText
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806E460

    thumb_func_start func_0806E474
func_0806E474: @ 0x0806E474
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl func_0806CE40
    bl ResetTextFont
    bl func_0806F76C
    bl InitBmBgLayers
    bl UnpackUiWindowFrameGraphics
    bl ApplySystemObjectsGraphics
    bl IsEventRunning
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E4A4
    bl EndAllMus
.L0806E4A4:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806E474

    thumb_func_start func_0806E4AC
func_0806E4AC: @ 0x0806E4AC
    push {r7, lr}
    mov r7, sp
    ldr r0, .L0806E588 @ =0x0203E0FC
    ldr r1, .L0806E588 @ =0x0203E0FC
    ldr r2, [r1, #0x50]
    ldrb r1, [r2, #2]
    lsrs r2, r1, #3
    adds r1, r2, #0
    movs r2, #1
    ands r1, r2
    adds r2, r0, #0
    adds r0, #0x58
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L0806E588 @ =0x0203E0FC
    ldr r2, .L0806E588 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    movs r2, #1
    subs r1, r2, r1
    adds r2, r0, #0
    adds r0, #0x59
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L0806E588 @ =0x0203E0FC
    ldr r2, .L0806E588 @ =0x0203E0FC
    ldr r1, [r2, #0x50]
    adds r2, r0, #0
    adds r0, #0x5a
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrh r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, .L0806E588 @ =0x0203E0FC
    ldr r2, .L0806E588 @ =0x0203E0FC
    ldr r1, [r2, #0x50]
    adds r2, r0, #0
    adds r0, #0x5c
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1, #2]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L0806E588 @ =0x0203E0FC
    ldr r2, .L0806E588 @ =0x0203E0FC
    ldr r1, [r2, #0x50]
    adds r2, r0, #0
    adds r0, #0x5d
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1, #3]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r1, .L0806E588 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    bne .L0806E576
    ldr r0, .L0806E588 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x58
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806E588 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x59
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
.L0806E576:
    ldr r1, .L0806E588 @ =0x0203E0FC
    ldr r0, .L0806E588 @ =0x0203E0FC
    ldr r1, .L0806E588 @ =0x0203E0FC
    ldr r2, [r1, #0x50]
    adds r1, r2, #4
    str r1, [r0, #0x50]
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E588: .4byte 0x0203E0FC
    func_end func_0806E4AC

    thumb_func_start func_0806E58C
func_0806E58C: @ 0x0806E58C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806E5B8 @ =0x0203E0FC
    ldr r1, [r0, #0x50]
    ldrb r0, [r1, #2]
    movs r1, #0x80
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x18
    lsrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E5C0
    ldr r0, [r7]
    bl Proc_Break
    ldr r1, .L0806E5BC @ =0x08C9D6DC
    ldr r0, [r7]
    bl func_08004758
    b .L0806E5CA
    .align 2, 0
.L0806E5B8: .4byte 0x0203E0FC
.L0806E5BC: .4byte 0x08C9D6DC
.L0806E5C0:
    bl func_0806E4AC
    ldr r0, [r7]
    bl Proc_Break
.L0806E5CA:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806E58C

    thumb_func_start func_0806E5D4
func_0806E5D4: @ 0x0806E5D4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl func_08075638
    adds r1, r0, #0
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_StartBlocking
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806E5D4

    thumb_func_start func_0806E5F4
func_0806E5F4: @ 0x0806E5F4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0806E640 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #0x40
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L0806E636
    ldr r0, .L0806E640 @ =0x0203E0FC
    ldr r2, .L0806E640 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_0807160C
    ldr r0, [r7]
    movs r1, #0x64
    bl StartTemporaryLock
.L0806E636:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E640: .4byte 0x0203E0FC
    func_end func_0806E5F4

    thumb_func_start func_0806E644
func_0806E644: @ 0x0806E644
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806E66C @ =0x0203E0FC
    ldr r2, [r0]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, .L0806E66C @ =0x0203E0FC
    ldr r3, [r0]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    ldr r0, [r7]
    bl EnsureCameraOntoPosition
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E66C: .4byte 0x0203E0FC
    func_end func_0806E644

    thumb_func_start func_0806E670
func_0806E670: @ 0x0806E670
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0806E688 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    bne .L0806E68C
    b .L0806E6A2
    .align 2, 0
.L0806E688: .4byte 0x0203E0FC
.L0806E68C:
    ldr r0, .L0806E6AC @ =0x0203E0FC
    ldr r2, [r0, #0x14]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, .L0806E6AC @ =0x0203E0FC
    ldr r3, [r0, #0x14]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    ldr r0, [r7]
    bl EnsureCameraOntoPosition
.L0806E6A2:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E6AC: .4byte 0x0203E0FC
    func_end func_0806E670

    thumb_func_start func_0806E6B0
func_0806E6B0: @ 0x0806E6B0
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r7, #4]
    ldr r1, .L0806E6D0 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806E6E4
    cmp r0, #2
    beq .L0806E6D4
    b .L0806E6F8
    .align 2, 0
.L0806E6D0: .4byte 0x0203E0FC
.L0806E6D4:
    ldr r1, .L0806E6F4 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x21
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0806E6E4
    movs r0, #1
    str r0, [r7, #4]
.L0806E6E4:
    ldr r0, .L0806E6F4 @ =0x0203E0FC
    ldrb r1, [r0, #0xd]
    cmp r1, #0
    bne .L0806E6F0
    movs r0, #0
    str r0, [r7, #4]
.L0806E6F0:
    b .L0806E6F8
    .align 2, 0
.L0806E6F4: .4byte 0x0203E0FC
.L0806E6F8:
    ldr r0, [r7, #4]
    movs r1, #1
    cmn r0, r1
    beq .L0806E742
    ldr r0, .L0806E74C @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, [r1]
    ldrb r1, [r0, #4]
    str r1, [r7, #8]
    ldr r1, [r7, #8]
    adds r0, r1, #0
    lsls r2, r0, #0x18
    lsrs r1, r2, #0x18
    adds r0, r1, #0
    bl func_08079514
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    beq .L0806E742
    bl func_0806F76C
    ldr r1, [r7, #8]
    adds r0, r1, #0
    lsls r2, r0, #0x18
    lsrs r1, r2, #0x18
    adds r0, r1, #0
    bl func_08079624
    bl func_0800ADB8
.L0806E742:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E74C: .4byte 0x0203E0FC
    func_end func_0806E6B0

    thumb_func_start func_0806E750
func_0806E750: @ 0x0806E750
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r7, #4]
    ldr r1, .L0806E770 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806E784
    cmp r0, #2
    beq .L0806E774
    b .L0806E798
    .align 2, 0
.L0806E770: .4byte 0x0203E0FC
.L0806E774:
    ldr r1, .L0806E794 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x21
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0806E784
    movs r0, #1
    str r0, [r7, #4]
.L0806E784:
    ldr r0, .L0806E794 @ =0x0203E0FC
    ldrb r1, [r0, #0xd]
    cmp r1, #0
    bne .L0806E790
    movs r0, #0
    str r0, [r7, #4]
.L0806E790:
    b .L0806E798
    .align 2, 0
.L0806E794: .4byte 0x0203E0FC
.L0806E798:
    ldr r0, [r7, #4]
    movs r1, #1
    cmn r0, r1
    beq .L0806E7B8
    ldr r0, .L0806E7C0 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl StartMuDeathFade
.L0806E7B8:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E7C0: .4byte 0x0203E0FC
    func_end func_0806E750

    thumb_func_start func_0806E7C4
func_0806E7C4: @ 0x0806E7C4
    push {r4, r5, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r7, #8]
    ldr r1, .L0806E7E4 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806E7FC
    cmp r0, #2
    beq .L0806E7E8
    b .L0806E818
    .align 2, 0
.L0806E7E4: .4byte 0x0203E0FC
.L0806E7E8:
    ldr r0, .L0806E814 @ =0x0203E0FC
    ldr r1, [r0, #0x18]
    adds r0, r1, #0
    adds r1, #0x6e
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0806E7FC
    movs r0, #1
    str r0, [r7, #8]
.L0806E7FC:
    ldr r0, .L0806E814 @ =0x0203E0FC
    ldr r1, [r0, #4]
    adds r0, r1, #0
    adds r1, #0x6e
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0806E810
    movs r0, #0
    str r0, [r7, #8]
.L0806E810:
    b .L0806E818
    .align 2, 0
.L0806E814: .4byte 0x0203E0FC
.L0806E818:
    ldr r0, [r7, #8]
    cmp r0, #0
    blt .L0806E8C8
    ldr r1, .L0806E8D0 @ =0x08C9D820
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_StartBlocking
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, .L0806E8D4 @ =0x0203E0FC
    ldr r2, [r7, #8]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, #4
    adds r2, r1, r2
    ldr r3, [r2]
    adds r1, r3, #0
    adds r2, r3, #0
    adds r2, #0x71
    movs r3, #0
    ldrsb r3, [r2, r3]
    adds r1, r3, #0
    adds r2, r0, #0
    adds r0, #0x64
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7, #4]
    ldr r1, .L0806E8D4 @ =0x0203E0FC
    ldr r2, [r7, #8]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, #4
    adds r2, r1, r2
    ldr r3, [r2]
    adds r1, r3, #0
    adds r2, r3, #0
    adds r2, #0x71
    movs r3, #0
    ldrsb r3, [r2, r3]
    adds r1, r3, #0
    ldr r2, .L0806E8D4 @ =0x0203E0FC
    ldr r3, [r7, #8]
    adds r5, r3, #0
    lsls r4, r5, #2
    adds r4, r4, r3
    lsls r3, r4, #2
    adds r2, #4
    adds r3, r2, r3
    ldr r4, [r3]
    adds r2, r4, #0
    adds r3, r4, #0
    adds r3, #0x6e
    movs r4, #0
    ldrsb r4, [r3, r4]
    adds r2, r4, #0
    adds r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x66
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7, #4]
    ldr r2, [r7, #8]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x68
    ldrh r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strh r2, [r1]
.L0806E8C8:
    add sp, #0xc
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E8D0: .4byte 0x08C9D820
.L0806E8D4: .4byte 0x0203E0FC
    func_end func_0806E7C4

    thumb_func_start func_0806E8D8
func_0806E8D8: @ 0x0806E8D8
    push {r4, r7, lr}
    sub sp, #0x18
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806E93C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806E93C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806E93C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806E93C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L0806E940 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x62
    ldrb r0, [r1]
    cmp r0, #2
    bgt .L0806E946
    cmp r0, #1
    blt .L0806E946
    b .L0806E944
    .align 2, 0
.L0806E93C: .4byte gDispIo
.L0806E940: .4byte 0x0203E0FC
.L0806E944:
    b .L0806EA8A
.L0806E946:
    b .L0806E948
.L0806E948:
    ldr r0, .L0806E964 @ =0x0203E0FC
    ldr r1, [r0, #4]
    adds r0, r1, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806BA1C
    lsls r1, r0, #0x18
    lsrs r0, r1, #0x18
    cmp r0, #0
    bne .L0806E968
    b .L0806EA8A
    .align 2, 0
.L0806E964: .4byte 0x0203E0FC
.L0806E968:
    ldr r1, .L0806E998 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    bne .L0806E9AA
    ldr r0, .L0806E998 @ =0x0203E0FC
    ldr r1, [r0]
    movs r2, #0x11
    ldrsb r2, [r1, r2]
    lsls r0, r2, #4
    ldr r1, .L0806E99C @ =gBmSt
    movs r3, #0xe
    ldrsh r2, [r1, r3]
    subs r0, r0, r2
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    cmp r0, #0x6f
    ble .L0806E9A0
    ldr r0, [r7, #4]
    adds r1, r0, #0
    subs r1, #0x28
    str r1, [r7, #4]
    b .L0806E9A8
    .align 2, 0
.L0806E998: .4byte 0x0203E0FC
.L0806E99C: .4byte gBmSt
.L0806E9A0:
    ldr r0, [r7, #4]
    adds r1, r0, #0
    adds r1, #0x18
    str r1, [r7, #4]
.L0806E9A8:
    b .L0806EA76
.L0806E9AA:
    movs r0, #0
    str r0, [r7, #0x10]
.L0806E9AE:
    ldr r1, .L0806E9C0 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    ldr r1, [r7, #0x10]
    cmp r1, r0
    blt .L0806E9C4
    b .L0806EA00
    .align 2, 0
.L0806E9C0: .4byte 0x0203E0FC
.L0806E9C4:
    ldr r0, [r7, #0x10]
    adds r1, r0, #0
    lsls r0, r1, #2
    adds r1, r7, #0
    adds r1, #8
    adds r0, r1, r0
    ldr r1, .L0806E9F8 @ =0x0203E0FC
    ldr r2, [r7, #0x10]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r3, #0x11
    ldrsb r3, [r2, r3]
    lsls r1, r3, #4
    ldr r2, .L0806E9FC @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    str r1, [r0]
    ldr r0, [r7, #0x10]
    adds r1, r0, #1
    str r1, [r7, #0x10]
    b .L0806E9AE
    .align 2, 0
.L0806E9F8: .4byte 0x0203E0FC
.L0806E9FC: .4byte gBmSt
.L0806EA00:
    ldr r0, [r7, #8]
    ldr r1, [r7, #0xc]
    subs r0, r0, r1
    cmp r0, #0
    blt .L0806EA16
    ldr r0, [r7, #8]
    ldr r1, [r7, #0xc]
    subs r0, r0, r1
    cmp r0, #0x4f
    bgt .L0806EA22
    b .L0806EA28
.L0806EA16:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #8]
    subs r0, r0, r1
    cmp r0, #0x4f
    bgt .L0806EA22
    b .L0806EA28
.L0806EA22:
    movs r0, #0x40
    str r0, [r7, #4]
    b .L0806EA76
.L0806EA28:
    movs r0, #0
    ldr r1, [r7, #8]
    ldr r2, [r7, #0xc]
    cmp r1, r2
    bgt .L0806EA34
    movs r0, #1
.L0806EA34:
    str r0, [r7, #0x14]
    ldr r0, [r7, #0x14]
    adds r1, r0, #0
    lsls r0, r1, #2
    adds r1, r7, #0
    adds r1, #8
    adds r0, r1, r0
    ldr r1, [r0]
    cmp r1, #0x6f
    ble .L0806EA62
    movs r0, #1
    ldr r1, [r7, #0x14]
    subs r0, r0, r1
    adds r1, r0, #0
    lsls r0, r1, #2
    adds r1, r7, #0
    adds r1, #8
    adds r0, r1, r0
    ldr r1, [r0]
    adds r0, r1, #0
    subs r0, #0x28
    str r0, [r7, #4]
    b .L0806EA76
.L0806EA62:
    ldr r0, [r7, #0x14]
    adds r1, r0, #0
    lsls r0, r1, #2
    adds r1, r7, #0
    adds r1, #8
    adds r0, r1, r0
    ldr r1, [r0]
    adds r0, r1, #0
    adds r0, #0x18
    str r0, [r7, #4]
.L0806EA76:
    ldr r1, [r7, #4]
    adds r0, r1, #0
    cmp r0, #0
    bge .L0806EA80
    adds r0, #7
.L0806EA80:
    asrs r1, r0, #3
    movs r0, #0xf
    ldr r2, [r7]
    bl func_0806F784
.L0806EA8A:
    add sp, #0x18
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806E8D8

    thumb_func_start func_0806EA94
func_0806EA94: @ 0x0806EA94
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0806EAAC @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #2
    beq .L0806EAB0
    b .L0806EACC
    .align 2, 0
.L0806EAAC: .4byte 0x0203E0FC
.L0806EAB0:
    ldr r0, .L0806EAC8 @ =0x0203E0FC
    ldr r1, [r0]
    ldr r2, [r1]
    ldrb r0, [r2, #4]
    ldr r1, .L0806EAC8 @ =0x0203E0FC
    ldr r2, [r1, #0x14]
    ldr r1, [r2]
    ldrb r2, [r1, #4]
    adds r1, r2, #0
    bl func_08079464
    b .L0806EACE
    .align 2, 0
.L0806EAC8: .4byte 0x0203E0FC
.L0806EACC:
    b .L0806EACE
.L0806EACE:
    bl func_0800ADB8
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806EA94

    thumb_func_start func_0806EADC
func_0806EADC: @ 0x0806EADC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806EADC

    thumb_func_start func_0806EAEC
func_0806EAEC: @ 0x0806EAEC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0806EB08 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806EB12
    cmp r0, #2
    beq .L0806EB0C
    b .L0806EB18
    .align 2, 0
.L0806EB08: .4byte 0x0203E0FC
.L0806EB0C:
    movs r0, #1
    bl func_0806EADC
.L0806EB12:
    movs r0, #0
    bl func_0806EADC
.L0806EB18:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806EAEC

    thumb_func_start func_0806EB20
func_0806EB20: @ 0x0806EB20
    push {r7, lr}
    mov r7, sp
    ldr r1, .L0806EB40 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806EB3A
    movs r0, #0xa0
    bl m4aSongNumStart
.L0806EB3A:
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806EB40: .4byte gPlaySt
    func_end func_0806EB20

    thumb_func_start func_0806EB44
func_0806EB44: @ 0x0806EB44
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7, #4]
    cmp r0, #0
    bne .L0806EB58
    b .L0806EC0C
.L0806EB58:
    ldr r0, .L0806EBF0 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r7, #8]
    str r1, [r0]
    ldr r0, .L0806EBF0 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r0, [r7, #4]
    str r0, [r1]
    ldr r1, [r7, #8]
    adds r0, r1, #0
    bl StartMu
    ldr r1, .L0806EBF0 @ =0x0203E0FC
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, #8
    adds r2, r1, r2
    str r0, [r2]
    ldr r0, .L0806EBF0 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r0, .L0806EBF0 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r1, [r7, #4]
    adds r0, r1, #0
    adds r1, #0x55
    ldrb r0, [r1]
    cmp r0, #0x1b
    beq .L0806EBF4
    ldr r1, [r7, #4]
    adds r0, r1, #0
    adds r1, #0x55
    ldrb r0, [r1]
    cmp r0, #0x33
    beq .L0806EBF4
    b .L0806EC0C
    .align 2, 0
.L0806EBF0: .4byte 0x0203E0FC
.L0806EBF4:
    ldr r0, .L0806EC14 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DAB4
.L0806EC0C:
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806EC14: .4byte 0x0203E0FC
    func_end func_0806EB44

    thumb_func_start func_0806EC18
func_0806EC18: @ 0x0806EC18
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7, #8]
    cmp r0, #1
    beq .L0806ECB0
    cmp r0, #1
    bgt .L0806EC34
    cmp r0, #0
    beq .L0806EC3A
    b .L0806ED1A
.L0806EC34:
    cmp r0, #2
    beq .L0806ECD0
    b .L0806ED1A
.L0806EC3A:
    ldr r0, .L0806ECAC @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldr r1, .L0806ECAC @ =0x0203E0FC
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L0806ECAC @ =0x0203E0FC
    ldr r3, [r7, #4]
    adds r5, r3, #0
    lsls r4, r5, #2
    adds r4, r4, r3
    lsls r3, r4, #2
    adds r2, r2, r3
    ldr r3, [r2]
    movs r2, #0x10
    ldrsb r2, [r3, r2]
    ldr r3, .L0806ECAC @ =0x0203E0FC
    ldr r4, [r7, #4]
    adds r6, r4, #0
    lsls r5, r6, #2
    adds r5, r5, r4
    lsls r4, r5, #2
    adds r3, r3, r4
    ldr r4, [r3]
    movs r3, #0x11
    ldrsb r3, [r4, r3]
    bl func_0806F478
    str r0, [r7, #0xc]
    ldr r0, .L0806ECAC @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    ldr r1, [r7, #0xc]
    bl func_0806BF4C
    b .L0806ED1A
    .align 2, 0
.L0806ECAC: .4byte 0x0203E0FC
.L0806ECB0:
    ldr r0, .L0806ECCC @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806BFA4
    b .L0806ED1A
    .align 2, 0
.L0806ECCC: .4byte 0x0203E0FC
.L0806ECD0:
    ldr r0, .L0806ED24 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldr r1, .L0806ED24 @ =0x0203E0FC
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    movs r2, #0
    movs r3, #0
    bl func_0806F478
    str r0, [r7, #0xc]
    ldr r0, .L0806ED24 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    ldr r1, [r7, #0xc]
    bl func_0806BF4C
.L0806ED1A:
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806ED24: .4byte 0x0203E0FC
    func_end func_0806EC18

    thumb_func_start func_0806ED28
func_0806ED28: @ 0x0806ED28
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    ldr r0, .L0806ED5C @ =0x0203E0FC
    ldr r1, [r0, #4]
    adds r0, r1, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806BA2C
    lsls r1, r0, #0x18
    lsrs r0, r1, #0x18
    str r0, [r7]
    bl func_0806EDAC
    ldr r1, .L0806ED5C @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806ED94
    cmp r0, #2
    beq .L0806ED60
    b .L0806EDA4
    .align 2, 0
.L0806ED5C: .4byte 0x0203E0FC
.L0806ED60:
    ldr r0, .L0806EDA0 @ =0x0203A4F0
    ldrh r1, [r0]
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L0806ED8A
    movs r0, #2
    movs r1, #1
    ldr r2, [r7]
    bl func_0806EC18
    movs r0, #3
    movs r1, #1
    ldr r2, [r7]
    bl func_0806EC18
.L0806ED8A:
    movs r0, #1
    movs r1, #0
    ldr r2, [r7]
    bl func_0806EC18
.L0806ED94:
    movs r0, #0
    movs r1, #1
    ldr r2, [r7]
    bl func_0806EC18
    b .L0806EDA4
    .align 2, 0
.L0806EDA0: .4byte 0x0203A4F0
.L0806EDA4:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806ED28

    thumb_func_start func_0806EDAC
func_0806EDAC: @ 0x0806EDAC
    push {r4, r7, lr}
    sub sp, #0x18
    mov r7, sp
    ldr r1, .L0806EDD0 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    str r0, [r7, #0x14]
    ldr r1, .L0806EDD0 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806EDF8
    cmp r0, #2
    beq .L0806EDD4
    b .L0806EDFA
    .align 2, 0
.L0806EDD0: .4byte 0x0203E0FC
.L0806EDD4:
    ldr r0, .L0806EDF4 @ =0x0203A4F0
    ldrh r1, [r0]
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L0806EDF0
    ldr r0, [r7, #0x14]
    adds r1, r0, #2
    str r1, [r7, #0x14]
.L0806EDF0:
    b .L0806EDFA
    .align 2, 0
.L0806EDF4: .4byte 0x0203A4F0
.L0806EDF8:
    b .L0806EDFA
.L0806EDFA:
    movs r0, #0
    str r0, [r7, #8]
.L0806EDFE:
    ldr r0, [r7, #8]
    ldr r1, [r7, #0x14]
    cmp r0, r1
    blt .L0806EE08
    b .L0806EE28
.L0806EE08:
    adds r0, r7, #0
    ldr r1, [r7, #8]
    adds r0, r0, r1
    ldr r2, [r7, #8]
    adds r1, r2, #0
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806EDFE
.L0806EE28:
    movs r0, #0
    str r0, [r7, #8]
.L0806EE2C:
    ldr r1, [r7, #0x14]
    subs r0, r1, #1
    ldr r1, [r7, #8]
    cmp r1, r0
    blt .L0806EE38
    b .L0806EF6C
.L0806EE38:
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #0xc]
.L0806EE3E:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0x14]
    cmp r0, r1
    blt .L0806EE48
    b .L0806EF64
.L0806EE48:
    movs r0, #0
    str r0, [r7, #0x10]
    ldr r0, .L0806EEC8 @ =0x0203E0FC
    adds r1, r7, #0
    ldr r2, [r7, #8]
    adds r3, r1, r2
    ldrb r1, [r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L0806EEC8 @ =0x0203E0FC
    adds r2, r7, #0
    ldr r3, [r7, #0xc]
    adds r4, r2, r3
    ldrb r2, [r4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    cmp r0, r1
    bne .L0806EECC
    ldr r0, .L0806EEC8 @ =0x0203E0FC
    adds r1, r7, #0
    ldr r2, [r7, #8]
    adds r3, r1, r2
    ldrb r1, [r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L0806EEC8 @ =0x0203E0FC
    adds r2, r7, #0
    ldr r3, [r7, #0xc]
    adds r4, r2, r3
    ldrb r2, [r4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    ldrb r0, [r0, #0x10]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    cmp r0, r1
    blt .L0806EEC6
    ldr r0, [r7, #0x10]
    adds r1, r0, #1
    str r1, [r7, #0x10]
.L0806EEC6:
    b .L0806EF0C
    .align 2, 0
.L0806EEC8: .4byte 0x0203E0FC
.L0806EECC:
    ldr r0, .L0806EF60 @ =0x0203E0FC
    adds r1, r7, #0
    ldr r2, [r7, #8]
    adds r3, r1, r2
    ldrb r1, [r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L0806EF60 @ =0x0203E0FC
    adds r2, r7, #0
    ldr r3, [r7, #0xc]
    adds r4, r2, r3
    ldrb r2, [r4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    cmp r0, r1
    blt .L0806EF0C
    ldr r0, [r7, #0x10]
    adds r1, r0, #1
    str r1, [r7, #0x10]
.L0806EF0C:
    ldr r0, [r7, #0x10]
    cmp r0, #0
    beq .L0806EF56
    adds r0, r7, #4
    adds r1, r7, #0
    ldr r2, [r7, #8]
    adds r1, r1, r2
    ldrb r2, [r1]
    strb r2, [r0]
    adds r0, r7, #0
    ldr r1, [r7, #8]
    adds r0, r0, r1
    adds r1, r7, #0
    ldr r2, [r7, #0xc]
    adds r1, r1, r2
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    adds r0, r7, #0
    ldr r1, [r7, #0xc]
    adds r0, r0, r1
    adds r1, r7, #4
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
.L0806EF56:
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L0806EE3E
    .align 2, 0
.L0806EF60: .4byte 0x0203E0FC
.L0806EF64:
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806EE2C
.L0806EF6C:
    movs r0, #0
    str r0, [r7, #8]
.L0806EF70:
    ldr r0, [r7, #8]
    ldr r1, [r7, #0x14]
    cmp r0, r1
    blt .L0806EF7A
    b .L0806EFBC
.L0806EF7A:
    ldr r0, .L0806EFB4 @ =0x0203E0FC
    adds r1, r7, #0
    ldr r2, [r7, #8]
    adds r3, r1, r2
    ldrb r1, [r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldr r1, .L0806EFB8 @ =0x083FC174
    ldr r2, [r7, #8]
    adds r1, r1, r2
    ldrb r2, [r1]
    adds r1, r2, #0
    ldrh r2, [r0, #0x1e]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x1e]
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806EF70
    .align 2, 0
.L0806EFB4: .4byte 0x0203E0FC
.L0806EFB8: .4byte 0x083FC174
.L0806EFBC:
    add sp, #0x18
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806EDAC

    thumb_func_start func_0806EFC4
func_0806EFC4: @ 0x0806EFC4
    push {r7, lr}
    mov r7, sp
    ldr r0, .L0806F03C @ =0x0203A3F0
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x6b
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0806F040 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F040 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x62
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F040 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F040 @ =0x0203E0FC
    ldr r1, .L0806F044 @ =0x0203A4F0
    str r1, [r0, #0x50]
    bl func_0806E4AC
    ldr r0, .L0806F03C @ =0x0203A3F0
    ldr r1, .L0806F048 @ =0x0203A470
    ldr r2, .L0806F044 @ =0x0203A4F0
    bl func_0806F30C
    ldr r1, .L0806F04C @ =0x08C9D48C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F03C: .4byte 0x0203A3F0
.L0806F040: .4byte 0x0203E0FC
.L0806F044: .4byte 0x0203A4F0
.L0806F048: .4byte 0x0203A470
.L0806F04C: .4byte 0x08C9D48C
    func_end func_0806EFC4

    thumb_func_start func_0806F050
func_0806F050: @ 0x0806F050
    push {r7, lr}
    mov r7, sp
    ldr r0, .L0806F0C8 @ =0x0203A3F0
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x6b
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0806F0CC @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F0CC @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x62
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F0CC @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F0CC @ =0x0203E0FC
    ldr r1, .L0806F0D0 @ =0x0203A4F0
    str r1, [r0, #0x50]
    bl func_0806E4AC
    ldr r0, .L0806F0C8 @ =0x0203A3F0
    ldr r1, .L0806F0D4 @ =0x0203A470
    ldr r2, .L0806F0D0 @ =0x0203A4F0
    bl func_0806F30C
    ldr r1, .L0806F0D8 @ =0x08C9D4CC
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F0C8: .4byte 0x0203A3F0
.L0806F0CC: .4byte 0x0203E0FC
.L0806F0D0: .4byte 0x0203A4F0
.L0806F0D4: .4byte 0x0203A470
.L0806F0D8: .4byte 0x08C9D4CC
    func_end func_0806F050

    thumb_func_start func_0806F0DC
func_0806F0DC: @ 0x0806F0DC
    push {r7, lr}
    mov r7, sp
    ldr r0, .L0806F17C @ =0x0203A3F0
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0806F180 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F180 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x62
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F180 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F180 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x58
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F180 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x59
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F17C @ =0x0203A3F0
    ldr r1, .L0806F184 @ =0x0203A470
    ldr r2, .L0806F188 @ =0x0203A4F0
    bl func_0806F30C
    ldr r1, .L0806F18C @ =0x08C9D50C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F17C: .4byte 0x0203A3F0
.L0806F180: .4byte 0x0203E0FC
.L0806F184: .4byte 0x0203A470
.L0806F188: .4byte 0x0203A4F0
.L0806F18C: .4byte 0x08C9D50C
    func_end func_0806F0DC

    thumb_func_start func_0806F190
func_0806F190: @ 0x0806F190
    push {r7, lr}
    mov r7, sp
    ldr r0, .L0806F228 @ =0x0203A3F0
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x4e
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0806F22C @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F22C @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x62
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F22C @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F22C @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x58
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F22C @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x59
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F228 @ =0x0203A3F0
    ldr r1, .L0806F230 @ =0x0203A470
    ldr r2, .L0806F234 @ =0x0203A4F0
    bl func_0806F30C
    ldr r1, .L0806F238 @ =0x08C9D5DC
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F228: .4byte 0x0203A3F0
.L0806F22C: .4byte 0x0203E0FC
.L0806F230: .4byte 0x0203A470
.L0806F234: .4byte 0x0203A4F0
.L0806F238: .4byte 0x08C9D5DC
    func_end func_0806F190

    thumb_func_start func_0806F23C
func_0806F23C: @ 0x0806F23C
    push {r7, lr}
    mov r7, sp
    ldr r0, .L0806F25C @ =0x0203A3D8
    ldrh r1, [r0]
    movs r2, #0x90
    lsls r2, r2, #2
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L0806F260
    bl func_0806F190
    b .L0806F29E
    .align 2, 0
.L0806F25C: .4byte 0x0203A3D8
.L0806F260:
    ldr r0, .L0806F2A4 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F2A4 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x62
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F2A8 @ =0x0203A3F0
    ldr r1, .L0806F2AC @ =0x0203A470
    ldr r2, .L0806F2B0 @ =0x0203A4F0
    bl func_0806F2B8
    ldr r0, .L0806F2A8 @ =0x0203A3F0
    ldr r1, .L0806F2AC @ =0x0203A470
    ldr r2, .L0806F2B0 @ =0x0203A4F0
    bl func_0806F30C
    ldr r1, .L0806F2B4 @ =0x08C9D634
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
.L0806F29E:
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F2A4: .4byte 0x0203E0FC
.L0806F2A8: .4byte 0x0203A3F0
.L0806F2AC: .4byte 0x0203A470
.L0806F2B0: .4byte 0x0203A4F0
.L0806F2B4: .4byte 0x08C9D634
    func_end func_0806F23C

    thumb_func_start func_0806F2B8
func_0806F2B8: @ 0x0806F2B8
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806B9EC
    ldr r1, .L0806F308 @ =0x0203E0FC
    adds r2, r1, #0
    adds r1, #0x5e
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, .L0806F308 @ =0x0203E0FC
    ldr r1, [r7, #8]
    str r1, [r0, #0x50]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806BA0C
    ldr r1, .L0806F308 @ =0x0203E0FC
    str r0, [r1, #0x54]
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F308: .4byte 0x0203E0FC
    func_end func_0806F2B8

    thumb_func_start func_0806F30C
func_0806F30C: @ 0x0806F30C
    push {r4, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    movs r0, #0
    ldr r1, [r7]
    ldr r2, [r7]
    bl func_0806EB44
    ldr r1, .L0806F39C @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    bls .L0806F340
    ldr r1, .L0806F3A0 @ =0x0203A470
    adds r0, r1, #0
    bl HideUnitSprite
    ldr r1, [r7, #4]
    ldr r2, [r7, #4]
    movs r0, #1
    bl func_0806EB44
.L0806F340:
    ldr r0, .L0806F3A4 @ =0x0203A4F0
    ldrh r1, [r0]
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L0806F382
    ldr r0, .L0806F3A8 @ =0x0203A3D8
    ldr r2, [r0, #0x10]
    movs r0, #2
    ldr r1, [r7]
    bl func_0806EB44
    ldr r0, .L0806F3A8 @ =0x0203A3D8
    ldr r2, [r0, #0x14]
    movs r0, #3
    ldr r1, [r7]
    bl func_0806EB44
    ldr r0, .L0806F3A8 @ =0x0203A3D8
    ldr r1, [r0, #0x10]
    adds r0, r1, #0
    bl HideUnitSprite
    ldr r0, .L0806F3A8 @ =0x0203A3D8
    ldr r1, [r0, #0x14]
    adds r0, r1, #0
    bl HideUnitSprite
.L0806F382:
    bl func_0806ED28
    movs r0, #0
    str r0, [r7, #0xc]
.L0806F38A:
    ldr r1, .L0806F39C @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    ldr r1, [r7, #0xc]
    cmp r1, r0
    blt .L0806F3AC
    b .L0806F424
    .align 2, 0
.L0806F39C: .4byte 0x0203E0FC
.L0806F3A0: .4byte 0x0203A470
.L0806F3A4: .4byte 0x0203A4F0
.L0806F3A8: .4byte 0x0203A3D8
.L0806F3AC:
    ldr r0, .L0806F420 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, .L0806F420 @ =0x0203E0FC
    ldr r2, [r7, #0xc]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, #4
    adds r2, r1, r2
    ldr r1, [r2]
    adds r2, r1, #0
    adds r1, #0x72
    ldrb r2, [r0, #0xd]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #0xd]
    ldr r0, .L0806F420 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl GetUnitMaxHp
    ldr r1, .L0806F420 @ =0x0203E0FC
    ldr r2, [r7, #0xc]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1, #0xc]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r0
    adds r0, r2, #0
    strb r0, [r1, #0xc]
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L0806F38A
    .align 2, 0
.L0806F420: .4byte 0x0203E0FC
.L0806F424:
    ldr r0, .L0806F474 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F474 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F474 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806F474 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #0x10
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F474: .4byte gDispIo
    func_end func_0806F30C

    thumb_func_start func_0806F478
func_0806F478: @ 0x0806F478
    push {r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, [r7, #8]
    ldr r2, [r7]
    subs r0, r0, r2
    cmp r0, #0
    blt .L0806F49E
    ldr r0, [r7, #8]
    ldr r2, [r7]
    subs r1, r0, r2
    adds r0, r1, #0
    lsls r2, r0, #1
    adds r1, r2, #0
    b .L0806F4AA
.L0806F49E:
    ldr r0, [r7]
    ldr r2, [r7, #8]
    subs r1, r0, r2
    adds r0, r1, #0
    lsls r2, r0, #1
    adds r1, r2, #0
.L0806F4AA:
    ldr r0, [r7, #0xc]
    ldr r2, [r7, #4]
    subs r0, r0, r2
    cmp r0, #0
    blt .L0806F4C0
    ldr r0, [r7, #0xc]
    ldr r2, [r7, #4]
    subs r0, r0, r2
    cmp r1, r0
    blt .L0806F4CC
    b .L0806F4E0
.L0806F4C0:
    ldr r0, [r7, #4]
    ldr r2, [r7, #0xc]
    subs r0, r0, r2
    cmp r1, r0
    blt .L0806F4CC
    b .L0806F4E0
.L0806F4CC:
    ldr r0, [r7, #4]
    ldr r2, [r7, #0xc]
    cmp r0, r2
    bge .L0806F4DA
    movs r0, #2
    b .L0806F4F2
.L0806F4D8:
    .byte 0x01, 0xE0
.L0806F4DA:
    movs r0, #3
    b .L0806F4F2
.L0806F4DE:
    .byte 0x08, 0xE0
.L0806F4E0:
    ldr r0, [r7]
    ldr r2, [r7, #8]
    cmp r0, r2
    bge .L0806F4EE
    movs r0, #1
    b .L0806F4F2
.L0806F4EC:
    .byte 0x01, 0xE0
.L0806F4EE:
    movs r0, #0
    b .L0806F4F2
.L0806F4F2:
    add sp, #0x10
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806F478

    thumb_func_start func_0806F4FC
func_0806F4FC: @ 0x0806F4FC
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r4, .L0806F52C @ =0x083F3FA4
    movs r0, #0
    bl GetBgChrOffset
    ldr r1, [r7]
    lsls r2, r1, #0x16
    lsrs r1, r2, #0x16
    lsls r2, r1, #5
    movs r3, #0xc0
    lsls r3, r3, #0x13
    adds r1, r2, r3
    adds r2, r0, r1
    adds r0, r4, #0
    adds r1, r2, #0
    bl Decompress
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F52C: .4byte 0x083F3FA4
    func_end func_0806F4FC

    thumb_func_start func_0806F530
func_0806F530: @ 0x0806F530
    push {r4, r7, lr}
    sub sp, #0x24
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, [r7, #0x30]
    adds r1, r7, #0
    adds r1, #0x10
    strh r0, [r1]
    movs r0, #7
    str r0, [r7, #0x1c]
.L0806F54A:
    ldr r0, [r7, #0x1c]
    cmp r0, #0
    bge .L0806F552
    b .L0806F5C6
.L0806F552:
    adds r0, r7, #0
    adds r0, #0x14
    ldr r1, [r7, #0x1c]
    adds r4, r0, r1
    ldr r1, [r7, #4]
    adds r0, r1, #0
    movs r1, #0xa
    bl __modsi3
    adds r1, r0, #0
    adds r0, r1, #0
    adds r0, #0x30
    ldrb r1, [r4]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    adds r1, r2, #0
    orrs r1, r0
    adds r0, r1, #0
    strb r0, [r4]
    ldr r1, [r7, #4]
    adds r0, r1, #0
    movs r1, #0xa
    bl __divsi3
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    cmp r0, #0
    bne .L0806F5BE
    ldr r0, [r7, #0x1c]
    subs r1, r0, #1
    str r1, [r7, #0x20]
.L0806F592:
    ldr r0, [r7, #0x20]
    cmp r0, #0
    bge .L0806F59A
    b .L0806F5BC
.L0806F59A:
    adds r0, r7, #0
    adds r0, #0x14
    ldr r1, [r7, #0x20]
    adds r0, r0, r1
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x20
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #0x20]
    subs r1, r0, #1
    str r1, [r7, #0x20]
    b .L0806F592
.L0806F5BC:
    b .L0806F5C6
.L0806F5BE:
    ldr r0, [r7, #0x1c]
    subs r1, r0, #1
    str r1, [r7, #0x1c]
    b .L0806F54A
.L0806F5C6:
    adds r0, r7, #0
    adds r0, #0x14
    adds r1, r0, #7
    ldr r2, [r7, #8]
    ldr r3, [r7, #0xc]
    ldr r0, [r7]
    bl PutDigits
    ldr r0, [r7, #0xc]
    subs r1, r0, #1
    str r1, [r7, #0x1c]
.L0806F5DC:
    ldr r0, [r7, #0x1c]
    cmp r0, #0
    bgt .L0806F5E4
    b .L0806F612
.L0806F5E4:
    adds r0, r7, #0
    adds r0, #0x14
    movs r1, #7
    ldr r2, [r7, #0x1c]
    subs r1, r1, r2
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0x20
    beq .L0806F5F8
    b .L0806F612
.L0806F5F8:
    ldr r0, [r7, #0x1c]
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, [r7]
    subs r0, r1, r0
    adds r1, r7, #0
    adds r1, #0x10
    ldrh r2, [r1]
    strh r2, [r0]
    ldr r0, [r7, #0x1c]
    subs r1, r0, #1
    str r1, [r7, #0x1c]
    b .L0806F5DC
.L0806F612:
    add sp, #0x24
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806F530

    thumb_func_start func_0806F61C
func_0806F61C: @ 0x0806F61C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r0, #0x20
    bl func_0806F4FC
    ldr r1, .L0806F648 @ =0x06000540
    ldr r0, [r7]
    bl Decompress
    ldr r1, .L0806F64C @ =0x083FA12C
    adds r0, r1, #0
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F648: .4byte 0x06000540
.L0806F64C: .4byte 0x083FA12C
    func_end func_0806F61C

    thumb_func_start func_0806F650
func_0806F650: @ 0x0806F650
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, [r7, #4]
    ldr r1, [r0]
    ldr r0, [r7, #0xc]
    cmp r1, r0
    ble .L0806F66E
    ldr r0, [r7, #0xc]
    str r0, [r7, #0x10]
    b .L0806F674
.L0806F66E:
    ldr r0, [r7, #4]
    ldr r1, [r0]
    str r1, [r7, #0x10]
.L0806F674:
    ldr r0, [r7]
    ldr r2, [r7, #0x1c]
    adds r1, r2, #0
    ldr r3, [r7, #0x10]
    adds r2, r3, #0
    adds r1, r1, r2
    ldr r3, [r7, #8]
    adds r2, r3, #0
    lsls r3, r2, #0xc
    adds r2, r3, #0
    adds r1, r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7, #4]
    ldr r1, [r7, #4]
    ldr r2, [r1]
    adds r1, r2, #1
    ldr r2, [r7, #0xc]
    subs r1, r1, r2
    str r1, [r0]
    ldr r0, [r7, #4]
    ldr r1, [r0]
    cmp r1, #0
    bge .L0806F6AA
    ldr r0, [r7, #4]
    movs r1, #0
    str r1, [r0]
.L0806F6AA:
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806F650

    thumb_func_start func_0806F6B4
func_0806F6B4: @ 0x0806F6B4
    push {r4, r7, lr}
    sub sp, #0x20
    add r7, sp, #4
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    movs r0, #0
    str r0, [r7, #0x14]
    ldr r0, [r7, #0x28]
    str r0, [r7, #0x18]
.L0806F6CA:
    ldr r0, [r7, #0x18]
    ldrh r1, [r0]
    cmp r1, #0
    bne .L0806F6D4
    b .L0806F6E8
.L0806F6D4:
    ldr r1, [r7, #0x14]
    subs r0, r1, #1
    ldr r1, [r7, #0x18]
    ldrh r2, [r1]
    adds r0, r0, r2
    str r0, [r7, #0x14]
    ldr r0, [r7, #0x18]
    adds r1, r0, #4
    str r1, [r7, #0x18]
    b .L0806F6CA
.L0806F6E8:
    ldr r0, [r7, #0x14]
    adds r1, r0, #1
    str r1, [r7, #0x14]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    cmp r0, r1
    bne .L0806F6FC
    ldr r0, [r7, #0x14]
    str r0, [r7, #0x10]
    b .L0806F710
.L0806F6FC:
    ldr r0, [r7, #0x14]
    lsls r1, r0, #8
    adds r0, r1, #0
    ldr r1, [r7, #4]
    bl __divsi3
    ldr r1, [r7, #8]
    muls r0, r1, r0
    asrs r1, r0, #8
    str r1, [r7, #0x10]
.L0806F710:
    ldr r0, [r7, #0x10]
    cmp r0, #0
    bne .L0806F722
    ldr r0, [r7, #8]
    cmp r0, #0
    ble .L0806F722
    ldr r0, [r7, #0x10]
    adds r1, r0, #1
    str r1, [r7, #0x10]
.L0806F722:
    ldr r0, [r7, #0x28]
    str r0, [r7, #0x18]
.L0806F726:
    ldr r0, [r7, #0x18]
    ldrh r1, [r0]
    cmp r1, #0
    bne .L0806F730
    b .L0806F764
.L0806F730:
    adds r1, r7, #0
    adds r1, #0x10
    ldr r0, .L0806F760 @ =0x08C9D790
    ldr r2, [r7, #0xc]
    adds r3, r2, #0
    lsls r2, r3, #2
    adds r0, r0, r2
    ldr r2, [r0]
    ldr r0, [r7, #0x18]
    ldrh r3, [r0]
    ldr r4, [r7, #0x18]
    adds r0, r4, #2
    ldrh r4, [r0]
    str r4, [sp]
    ldr r0, [r7]
    bl func_0806F650
    ldr r0, [r7]
    adds r1, r0, #2
    str r1, [r7]
    ldr r0, [r7, #0x18]
    adds r1, r0, #4
    str r1, [r7, #0x18]
    b .L0806F726
    .align 2, 0
.L0806F760: .4byte 0x08C9D790
.L0806F764:
    add sp, #0x20
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806F6B4

    thumb_func_start func_0806F76C
func_0806F76C: @ 0x0806F76C
    push {r7, lr}
    mov r7, sp
    ldr r1, .L0806F780 @ =0x08C9D7B0
    adds r0, r1, #0
    bl Proc_EndEach
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F780: .4byte 0x08C9D7B0
    func_end func_0806F76C

    thumb_func_start func_0806F784
func_0806F784: @ 0x0806F784
    push {r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, .L0806F7DC @ =0x08C9D7B0
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldr r2, [r7]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x2e
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r1, [r7, #0xc]
    ldr r2, [r7, #4]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x2f
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #8]
    str r1, [r0, #0x30]
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F7DC: .4byte 0x08C9D7B0
    func_end func_0806F784

    thumb_func_start func_0806F7E0
func_0806F7E0: @ 0x0806F7E0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    bl SetOnHBlankA
    bl ClearUi
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806F7E0

    thumb_func_start func_0806F7FC
func_0806F7FC: @ 0x0806F7FC
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r4, .L0806F844 @ =0x083F4068
    movs r0, #1
    bl GetBgChrOffset
    ldr r2, .L0806F848 @ =0x06000020
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r1, .L0806F84C @ =0x083F9F74
    adds r0, r1, #0
    bl func_0806F61C
    ldr r1, .L0806F850 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806F854
    cmp r0, #2
    beq .L0806F862
    b .L0806F8C8
    .align 2, 0
.L0806F844: .4byte 0x083F4068
.L0806F848: .4byte 0x06000020
.L0806F84C: .4byte 0x083F9F74
.L0806F850: .4byte 0x0203E0FC
.L0806F854:
    movs r2, #5
    rsbs r2, r2, #0
    ldr r0, [r7]
    movs r1, #0
    bl func_0806FBA4
    b .L0806F8C8
.L0806F862:
    movs r0, #0
    str r0, [r7, #4]
    ldr r1, .L0806F884 @ =0x0203E0FC
    ldr r0, [r1]
    ldr r1, .L0806F884 @ =0x0203E0FC
    ldr r2, [r1, #0x14]
    ldrb r0, [r0, #0x10]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    cmp r0, r1
    ble .L0806F888
    movs r0, #1
    str r0, [r7, #4]
    b .L0806F8A8
    .align 2, 0
.L0806F884: .4byte 0x0203E0FC
.L0806F888:
    ldr r0, .L0806F8C4 @ =0x0203E0FC
    ldr r1, [r0]
    movs r0, #0xb
    ldrsb r0, [r1, r0]
    movs r1, #0xc0
    ands r0, r1
    ldr r1, .L0806F8C4 @ =0x0203E0FC
    ldr r2, [r1, #0x14]
    movs r1, #0xb
    ldrsb r1, [r2, r1]
    movs r2, #0xc0
    ands r1, r2
    cmp r0, r1
    ble .L0806F8A8
    movs r0, #1
    str r0, [r7, #4]
.L0806F8A8:
    ldr r1, [r7, #4]
    movs r2, #0xa
    rsbs r2, r2, #0
    ldr r0, [r7]
    bl func_0806FBA4
    movs r0, #1
    ldr r2, [r7, #4]
    subs r1, r0, r2
    ldr r0, [r7]
    movs r2, #0
    bl func_0806FBA4
    b .L0806F8C8
    .align 2, 0
.L0806F8C4: .4byte 0x0203E0FC
.L0806F8C8:
    bl InitScanlineEffect
    ldr r0, .L0806F908 @ =0x0203E0FC
    ldrb r1, [r0, #0x11]
    adds r0, r1, #0
    lsls r1, r0, #3
    adds r0, r1, #0
    lsls r1, r0, #0x10
    lsrs r0, r1, #0x10
    ldr r1, .L0806F908 @ =0x0203E0FC
    ldrb r2, [r1, #0x11]
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r2, r1, #0
    adds r2, #0x20
    adds r1, r2, #0
    lsls r2, r1, #0x10
    lsrs r1, r2, #0x10
    ldr r3, .L0806F90C @ =gPal
    ldrh r2, [r3, #0x22]
    ldr r4, .L0806F90C @ =gPal
    adds r3, r4, #0
    adds r4, #0x42
    ldrh r3, [r4]
    bl func_08076C50
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806F908: .4byte 0x0203E0FC
.L0806F90C: .4byte gPal
    func_end func_0806F7FC

    thumb_func_start func_0806F910
func_0806F910: @ 0x0806F910
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    adds r0, r7, #0
    adds r0, #0xa
    movs r1, #0
    strb r1, [r0]
    movs r0, #0
    str r0, [r7, #4]
.L0806F924:
    ldr r1, .L0806F934 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5e
    ldrb r0, [r1]
    ldr r1, [r7, #4]
    cmp r1, r0
    blt .L0806F938
    b .L0806FA38
    .align 2, 0
.L0806F934: .4byte 0x0203E0FC
.L0806F938:
    adds r0, r7, #0
    adds r0, #8
    ldr r1, .L0806FA2C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrh r2, [r1, #0xe]
    strh r2, [r0]
    adds r1, r7, #0
    adds r1, #8
    ldrh r0, [r1]
    ldr r1, .L0806FA2C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1, #0xd]
    lsls r1, r2, #4
    cmp r0, r1
    ble .L0806F97C
    adds r0, r7, #0
    adds r0, #8
    adds r1, r7, #0
    adds r1, #8
    ldrh r2, [r1]
    adds r1, r2, #0
    subs r1, #0x10
    adds r2, r1, #0
    strh r2, [r0]
.L0806F97C:
    adds r1, r7, #0
    adds r1, #8
    ldrh r0, [r1]
    ldr r1, .L0806FA2C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1, #0xd]
    lsls r1, r2, #4
    cmp r0, r1
    bge .L0806F9D6
    adds r0, r7, #0
    adds r0, #8
    adds r1, r7, #0
    adds r1, #8
    ldrh r2, [r1]
    adds r1, r2, #4
    adds r2, r1, #0
    strh r2, [r0]
    adds r0, r7, #0
    adds r0, #8
    ldrh r1, [r0]
    movs r2, #0xf
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    bne .L0806F9D6
    ldr r1, .L0806FA30 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806F9D6
    ldr r1, .L0806FA34 @ =0x00000395
    adds r0, r1, #0
    bl m4aSongNumStart
.L0806F9D6:
    adds r0, r7, #0
    adds r0, #8
    ldr r1, .L0806FA2C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrh r0, [r0]
    ldrh r1, [r1, #0xe]
    cmp r0, r1
    beq .L0806FA24
    ldr r0, .L0806FA2C @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    adds r1, r7, #0
    adds r1, #8
    ldrh r2, [r0, #0xe]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrh r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0xe]
    ldr r1, [r7, #4]
    ldr r0, [r7]
    bl func_0806FA6C
    adds r0, r7, #0
    adds r0, #0xa
    movs r1, #1
    strb r1, [r0]
.L0806FA24:
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L0806F924
    .align 2, 0
.L0806FA2C: .4byte 0x0203E0FC
.L0806FA30: .4byte gPlaySt
.L0806FA34: .4byte 0x00000395
.L0806FA38:
    adds r0, r7, #0
    adds r0, #0xa
    movs r1, #0
    ldrsb r1, [r0, r1]
    cmp r1, #0
    bne .L0806FA60
    ldr r1, .L0806FA68 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5f
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0806FA60
    ldr r0, .L0806FA68 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
.L0806FA60:
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806FA68: .4byte 0x0203E0FC
    func_end func_0806F910

    thumb_func_start func_0806FA6C
func_0806FA6C: @ 0x0806FA6C
    push {r4, r5, r7, lr}
    sub sp, #0xc
    add r7, sp, #4
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L0806FB3C @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #0x11]
    adds r0, r1, #2
    lsls r1, r0, #5
    adds r0, r1, #2
    ldr r1, .L0806FB3C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1, #0x10]
    adds r0, r0, r2
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L0806FB40 @ =gBg0Tm
    adds r0, r0, r1
    ldr r1, .L0806FB3C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrh r2, [r1, #0xe]
    lsrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    lsrs r1, r2, #0x10
    ldr r2, .L0806FB44 @ =0x00005020
    movs r3, #0
    str r3, [sp]
    movs r3, #3
    bl func_0806F530
    ldr r0, .L0806FB3C @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #0x11]
    adds r0, r1, #2
    lsls r1, r0, #5
    adds r0, r1, #3
    ldr r1, .L0806FB3C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1, #0x10]
    adds r0, r0, r2
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L0806FB40 @ =gBg0Tm
    adds r0, r0, r1
    ldr r1, .L0806FB3C @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r3, r1, r2
    ldrb r1, [r3, #0xc]
    ldr r2, .L0806FB3C @ =0x0203E0FC
    ldr r3, [r7, #4]
    adds r5, r3, #0
    lsls r4, r5, #2
    adds r4, r4, r3
    lsls r3, r4, #2
    adds r2, r2, r3
    ldrh r3, [r2, #0xe]
    lsrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    lsrs r2, r3, #0x10
    ldr r3, .L0806FB48 @ =0x08C9D774
    str r3, [sp]
    movs r3, #0
    bl func_0806F6B4
    movs r0, #1
    bl EnableBgSync
    add sp, #0xc
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806FB3C: .4byte 0x0203E0FC
.L0806FB40: .4byte gBg0Tm
.L0806FB44: .4byte 0x00005020
.L0806FB48: .4byte 0x08C9D774
    func_end func_0806FA6C

    thumb_func_start func_0806FB4C
func_0806FB4C: @ 0x0806FB4C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    movs r1, #0xb
    ldrsb r1, [r0, r1]
    movs r2, #0xc0
    adds r0, r1, #0
    ands r0, r2
    cmp r0, #0x40
    beq .L0806FB88
    cmp r0, #0x40
    bgt .L0806FB6E
    cmp r0, #0
    beq .L0806FB78
    b .L0806FB98
.L0806FB6E:
    cmp r0, #0x80
    beq .L0806FB80
    cmp r0, #0xc0
    beq .L0806FB90
    b .L0806FB98
.L0806FB78:
    ldr r0, .L0806FB7C @ =0x083F41CC
    b .L0806FB9C
    .align 2, 0
.L0806FB7C: .4byte 0x083F41CC
.L0806FB80:
    ldr r0, .L0806FB84 @ =0x083F41EC
    b .L0806FB9C
    .align 2, 0
.L0806FB84: .4byte 0x083F41EC
.L0806FB88:
    ldr r0, .L0806FB8C @ =0x083F420C
    b .L0806FB9C
    .align 2, 0
.L0806FB8C: .4byte 0x083F420C
.L0806FB90:
    ldr r0, .L0806FB94 @ =0x083F422C
    b .L0806FB9C
    .align 2, 0
.L0806FB94: .4byte 0x083F422C
.L0806FB98:
    movs r0, #0
    b .L0806FB9C
.L0806FB9C:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806FB4C

    thumb_func_start func_0806FBA4
func_0806FBA4: @ 0x0806FBA4
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, .L0806FD34 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x2e
    ldr r3, [r7, #8]
    adds r2, r3, #0
    ldrb r3, [r1]
    adds r1, r2, r3
    ldrb r2, [r0, #0x10]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #0x10]
    ldr r0, .L0806FD34 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x2f
    ldrb r2, [r0, #0x11]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #0x11]
    ldr r0, .L0806FD34 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_0806FB4C
    ldr r2, [r7, #4]
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0806FD38 @ =0x08C9D798
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #2
    ldr r3, .L0806FD34 @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x5e
    ldrb r2, [r3]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r2, .L0806FD3C @ =gBuf
    adds r0, r1, #0
    adds r1, r2, #0
    bl Decompress
    ldr r0, .L0806FD34 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #0x11]
    lsls r0, r1, #5
    ldr r1, .L0806FD34 @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1, #0x10]
    adds r0, r0, r2
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L0806FD40 @ =gBg1Tm
    adds r0, r0, r1
    ldr r1, .L0806FD3C @ =gBuf
    ldr r3, [r7, #4]
    adds r2, r3, #0
    adds r3, r2, #1
    adds r2, r3, #0
    lsls r3, r2, #0xc
    adds r2, r3, #0
    movs r3, #1
    orrs r2, r3
    adds r4, r2, #0
    lsls r3, r4, #0x10
    lsrs r2, r3, #0x10
    bl TmApplyTsa_thm
    movs r0, #2
    bl EnableBgSync
    ldr r0, .L0806FD34 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #0x11]
    lsls r2, r1, #5
    adds r0, r2, #1
    ldr r1, .L0806FD34 @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1, #0x10]
    adds r0, r0, r2
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L0806FD44 @ =gBg0Tm
    adds r4, r0, r1
    ldr r0, .L0806FD34 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, [r1]
    ldrh r1, [r0]
    adds r0, r1, #0
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #8
    bl func_08014634
    movs r0, #1
    bl EnableBgSync
    ldr r0, .L0806FD34 @ =0x0203E0FC
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, .L0806FD34 @ =0x0203E0FC
    ldr r2, [r7, #4]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r3, [r1, #0xd]
    adds r2, r3, #0
    lsls r1, r2, #4
    ldrh r2, [r0, #0xe]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0xe]
    ldr r1, [r7, #4]
    ldr r0, [r7]
    bl func_0806FA6C
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806FD34: .4byte 0x0203E0FC
.L0806FD38: .4byte 0x08C9D798
.L0806FD3C: .4byte gBuf
.L0806FD40: .4byte gBg1Tm
.L0806FD44: .4byte gBg0Tm
    func_end func_0806FBA4

    thumb_func_start func_0806FD48
func_0806FD48: @ 0x0806FD48
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldrh r1, [r0, #0x2a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x2a]
    ldr r0, [r7]
    bl func_0806FE34
    ldr r0, .L0806FE30 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L0806FE30 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L0806FE30 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #1
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #2
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0xfe
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0xfd
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FE30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806FE30: .4byte gDispIo
    func_end func_0806FD48

    thumb_func_start func_0806FE34
func_0806FE34: @ 0x0806FE34
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806FF14 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2d
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FF14 @ =gDispIo
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x2f
    ldrb r1, [r2]
    adds r2, r1, #2
    adds r3, r2, #0
    lsls r1, r3, #3
    ldr r2, [r7]
    ldrh r3, [r2, #0x2a]
    adds r2, r3, #0
    adds r3, r1, #0
    subs r1, r3, r2
    adds r2, r0, #0
    adds r0, #0x31
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L0806FF14 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2c
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xf0
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806FF14 @ =gDispIo
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x2f
    ldrb r1, [r2]
    adds r2, r1, #2
    adds r3, r2, #0
    lsls r1, r3, #3
    ldr r2, [r7]
    ldrh r3, [r2, #0x2a]
    adds r2, r3, #0
    adds r3, r1, #0
    adds r1, r2, r3
    adds r2, r0, #0
    adds r0, #0x30
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, [r7]
    ldr r1, [r7]
    ldrh r2, [r1, #0x2a]
    adds r1, r2, #2
    ldrh r2, [r0, #0x2a]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x2a]
    ldr r0, [r7]
    movs r2, #0x2a
    ldrsh r1, [r0, r2]
    cmp r1, #0x10
    ble .L0806FF0C
    ldr r0, .L0806FF14 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L0806FF14 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L0806FF14 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, [r7]
    bl Proc_Break
.L0806FF0C:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806FF14: .4byte gDispIo
    func_end func_0806FE34

    thumb_func_start func_0806FF18
func_0806FF18: @ 0x0806FF18
    push {r7, lr}
    sub sp, #0x10
    add r7, sp, #4
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, [r7, #4]
    adds r0, r1, #1
    lsls r1, r0, #5
    adds r0, r1, #2
    ldr r1, [r7]
    adds r0, r0, r1
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L0806FF78 @ =gBg0Tm
    adds r0, r0, r1
    ldr r1, [r7, #8]
    ldr r2, .L0806FF7C @ =0x0000521F
    ldr r3, .L0806FF80 @ =0x00005229
    str r3, [sp]
    movs r3, #2
    bl func_0806F530
    ldr r1, [r7, #4]
    adds r0, r1, #1
    lsls r1, r0, #5
    adds r0, r1, #3
    ldr r1, [r7]
    adds r0, r0, r1
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L0806FF78 @ =gBg0Tm
    adds r0, r0, r1
    ldr r2, [r7, #8]
    ldr r1, .L0806FF84 @ =0x08C9D7E8
    str r1, [sp]
    movs r1, #0x63
    movs r3, #0
    bl func_0806F6B4
    movs r0, #1
    bl EnableBgSync
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806FF78: .4byte gBg0Tm
.L0806FF7C: .4byte 0x0000521F
.L0806FF80: .4byte 0x00005229
.L0806FF84: .4byte 0x08C9D7E8
    func_end func_0806FF18

    thumb_func_start func_0806FF88
func_0806FF88: @ 0x0806FF88
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r4, .L08070018 @ =0x081D97F0
    movs r0, #0
    bl GetBgChrOffset
    ldr r2, .L0807001C @ =0x06004000
    adds r1, r0, r2
    adds r0, r4, #0
    movs r2, #0xe0
    bl RegisterDataMove
    ldr r4, .L08070020 @ =0x081D9AF0
    movs r0, #0
    bl GetBgChrOffset
    ldr r2, .L08070024 @ =0x060040E0
    adds r1, r0, r2
    movs r2, #0xc0
    lsls r2, r2, #2
    adds r0, r4, #0
    bl RegisterDataMove
    ldr r4, .L08070028 @ =0x081D9DF0
    movs r0, #0
    bl GetBgChrOffset
    ldr r2, .L0807002C @ =0x060043E0
    adds r1, r0, r2
    movs r2, #0xb0
    lsls r2, r2, #1
    adds r0, r4, #0
    bl RegisterDataMove
    ldr r1, .L08070030 @ =0x081D9FBC
    adds r0, r1, #0
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08070034 @ =0x02022E6C
    ldr r1, .L08070038 @ =0x083F3F3C
    movs r2, #0xa4
    lsls r2, r2, #7
    bl TmApplyTsa_thm
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r0, #0
    ldrsh r2, [r1, r0]
    movs r0, #6
    movs r1, #8
    bl func_0806FF18
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08070018: .4byte 0x081D97F0
.L0807001C: .4byte 0x06004000
.L08070020: .4byte 0x081D9AF0
.L08070024: .4byte 0x060040E0
.L08070028: .4byte 0x081D9DF0
.L0807002C: .4byte 0x060043E0
.L08070030: .4byte 0x081D9FBC
.L08070034: .4byte 0x02022E6C
.L08070038: .4byte 0x083F3F3C
    func_end func_0806FF88

    thumb_func_start func_0807003C
func_0807003C: @ 0x0807003C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08070068 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0807005E
    movs r1, #0xe5
    lsls r1, r1, #2
    adds r0, r1, #0
    bl m4aSongNumStart
.L0807005E:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08070068: .4byte gPlaySt
    func_end func_0807003C

    thumb_func_start func_0807006C
func_0807006C: @ 0x0807006C
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x64
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0x63
    ble .L080700B8
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
.L080700B8:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r0, #0
    ldrsh r2, [r1, r0]
    movs r0, #6
    movs r1, #8
    bl func_0806FF18
    ldr r1, [r7]
    adds r0, r1, #0
    adds r4, r1, #0
    adds r4, #0x64
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x66
    movs r0, #0
    ldrsh r2, [r1, r0]
    adds r0, r2, #0
    movs r1, #0x64
    bl __modsi3
    adds r1, r0, #0
    movs r2, #0
    ldrsh r0, [r4, r2]
    lsls r2, r1, #0x10
    asrs r1, r2, #0x10
    cmp r0, r1
    bne .L08070102
    ldr r0, [r7]
    bl Proc_Break
    movs r1, #0xe5
    lsls r1, r1, #2
    adds r0, r1, #0
    bl m4aSongNumStop
.L08070102:
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0807006C

    thumb_func_start func_0807010C
func_0807010C: @ 0x0807010C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x6a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    bl func_080701FC
    ldr r0, .L080701F8 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080701F8 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080701F8 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #1
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #2
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0xfe
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0xfd
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080701F8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080701F8: .4byte gDispIo
    func_end func_0807010C

    thumb_func_start func_080701FC
func_080701FC: @ 0x080701FC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080702D4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2d
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080702D4 @ =gDispIo
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x6a
    ldrh r3, [r2]
    adds r1, r3, #0
    movs r2, #0x4c
    subs r1, r2, r1
    adds r2, r0, #0
    adds r0, #0x31
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L080702D4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2c
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xf0
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080702D4 @ =gDispIo
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x6a
    ldrh r1, [r2]
    adds r2, r1, #0
    adds r1, r2, #0
    adds r1, #0x4c
    adds r2, r0, #0
    adds r0, #0x30
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x6a
    ldrh r3, [r2]
    adds r1, r3, #2
    adds r2, r0, #0
    adds r0, #0x6a
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x6a
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0xc
    ble .L080702CC
    ldr r0, .L080702D4 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080702D4 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080702D4 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, [r7]
    bl Proc_Break
.L080702CC:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080702D4: .4byte gDispIo
    func_end func_080701FC

    thumb_func_start func_080702D8
func_080702D8: @ 0x080702D8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x66
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0x63
    bgt .L080702F0
    b .L08070302
.L080702F0:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x68
    movs r0, #0
    ldrsh r2, [r1, r0]
    adds r0, r2, #0
    ldr r1, [r7]
    bl func_0807489C
.L08070302:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080702D8

    thumb_func_start func_0807030C
func_0807030C: @ 0x0807030C
    push {r7, lr}
    mov r7, sp
    ldr r1, .L08070320 @ =0x08C9D93C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08070320: .4byte 0x08C9D93C
    func_end func_0807030C

    thumb_func_start func_08070324
func_08070324: @ 0x08070324
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x30
    add r7, sp, #8
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, .L080703B0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r2, #8
    ldrsh r1, [r0, r2]
    adds r0, r1, #0
    bl GetCharacterData
    str r0, [r7, #0xc]
    ldr r1, .L080703B0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r4, #0xe
    ldrsh r1, [r0, r4]
    adds r0, r1, #0
    bl GetClassData
    str r0, [r7, #0x10]
    ldr r1, .L080703B0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r5, #8
    ldrsh r1, [r0, r5]
    str r1, [r7, #0x14]
    ldr r1, .L080703B0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r6, #0xe
    ldrsh r1, [r0, r6]
    str r1, [r7, #0x18]
    ldr r1, .L080703B0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r2, #0x10
    ldrsh r1, [r0, r2]
    str r1, [r7, #0x1c]
    ldr r0, [r7, #4]
    cmp r0, #9
    bls .L080703A2
    b .L08070778
.L080703A2:
    ldr r0, [r7, #4]
    adds r1, r0, #0
    lsls r0, r1, #2
    ldr r1, .L080703B4 @ =.L080703B8
    adds r0, r0, r1
    ldr r1, [r0]
    mov pc, r1
    .align 2, 0
.L080703B0: .4byte 0x08C9D938
.L080703B4: .4byte .L080703B8
.L080703B8: @ jump table
    .4byte .L080703E0 @ case 0
    .4byte .L08070468 @ case 1
    .4byte .L080704E4 @ case 2
    .4byte .L08070560 @ case 3
    .4byte .L080705E8 @ case 4
    .4byte .L0807067C @ case 5
    .4byte .L0807067C @ case 6
    .4byte .L0807067C @ case 7
    .4byte .L0807067C @ case 8
    .4byte .L0807067C @ case 9
.L080703E0:
    ldr r0, .L08070460 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    adds r1, r0, #0
    adds r1, #0x14
    adds r0, r1, #0
    bl ClearText
    ldr r0, .L08070460 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r0, [r0]
    adds r1, r2, r0
    adds r0, r1, #0
    adds r0, #0x14
    ldr r2, [r7, #8]
    ldr r3, [r7, #0x14]
    movs r1, #0x10
    bl Text_InsertDrawNumberOrBlank
    ldr r0, [r7, #0xc]
    ldrh r1, [r0]
    adds r0, r1, #0
    bl DecodeMsg
    ldr r1, .L08070460 @ =0x08C9D938
    ldr r2, [r7]
    movs r3, #0x64
    muls r2, r3, r2
    adds r3, r2, #0
    adds r3, #8
    ldr r1, [r1]
    adds r2, r3, r1
    adds r1, r2, #0
    adds r1, #0x14
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #1
    adds r3, r3, r2
    lsls r2, r3, #3
    ldr r3, .L08070464 @ =0x02022C6C
    adds r2, r2, r3
    ldr r3, [r7, #8]
    movs r4, #0
    str r4, [sp]
    str r0, [sp, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    adds r2, r3, #0
    movs r3, #0x18
    bl PutDrawText
    movs r0, #1
    bl EnableBgSync
    b .L08070778
    .align 2, 0
.L08070460: .4byte 0x08C9D938
.L08070464: .4byte 0x02022C6C
.L08070468:
    ldr r0, .L080704DC @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    adds r1, r0, #0
    adds r1, #0x1c
    adds r0, r1, #0
    bl ClearText
    ldr r0, .L080704DC @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r0, [r0]
    adds r1, r2, r0
    adds r0, r1, #0
    adds r0, #0x1c
    ldr r2, [r7, #8]
    ldr r3, .L080704DC @ =0x08C9D938
    ldr r1, [r3]
    ldr r3, [r7]
    movs r4, #0x64
    muls r3, r4, r3
    adds r1, r1, r3
    movs r4, #0xa
    ldrsh r3, [r1, r4]
    movs r1, #8
    bl Text_InsertDrawNumberOrBlank
    ldr r0, .L080704DC @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r0, [r0]
    adds r1, r2, r0
    adds r0, r1, #0
    adds r0, #0x1c
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #1
    adds r2, r2, r1
    lsls r1, r2, #3
    ldr r2, .L080704E0 @ =0x02022CEE
    adds r1, r1, r2
    bl PutText
    movs r0, #1
    bl EnableBgSync
    b .L08070778
    .align 2, 0
.L080704DC: .4byte 0x08C9D938
.L080704E0: .4byte 0x02022CEE
.L080704E4:
    ldr r0, .L08070558 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    adds r1, r0, #0
    adds r1, #0x24
    adds r0, r1, #0
    bl ClearText
    ldr r0, .L08070558 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r0, [r0]
    adds r1, r2, r0
    adds r0, r1, #0
    adds r0, #0x24
    ldr r2, [r7, #8]
    ldr r3, .L08070558 @ =0x08C9D938
    ldr r1, [r3]
    ldr r3, [r7]
    movs r4, #0x64
    muls r3, r4, r3
    adds r1, r1, r3
    movs r5, #0xc
    ldrsh r3, [r1, r5]
    movs r1, #8
    bl Text_InsertDrawNumberOrBlank
    ldr r0, .L08070558 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r0, [r0]
    adds r1, r2, r0
    adds r0, r1, #0
    adds r0, #0x24
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #1
    adds r2, r2, r1
    lsls r1, r2, #3
    ldr r2, .L0807055C @ =0x02022CF4
    adds r1, r1, r2
    bl PutText
    movs r0, #1
    bl EnableBgSync
    b .L08070778
    .align 2, 0
.L08070558: .4byte 0x08C9D938
.L0807055C: .4byte 0x02022CF4
.L08070560:
    ldr r0, .L080705E0 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    adds r1, r0, #0
    adds r1, #0x2c
    adds r0, r1, #0
    bl ClearText
    ldr r0, .L080705E0 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r0, [r0]
    adds r1, r2, r0
    adds r0, r1, #0
    adds r0, #0x2c
    ldr r2, [r7, #8]
    ldr r3, [r7, #0x18]
    movs r1, #0x10
    bl Text_InsertDrawNumberOrBlank
    ldr r0, [r7, #0x10]
    ldrh r1, [r0]
    adds r0, r1, #0
    bl DecodeMsg
    ldr r1, .L080705E0 @ =0x08C9D938
    ldr r2, [r7]
    movs r3, #0x64
    muls r2, r3, r2
    adds r3, r2, #0
    adds r3, #8
    ldr r1, [r1]
    adds r2, r3, r1
    adds r1, r2, #0
    adds r1, #0x2c
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #1
    adds r3, r3, r2
    lsls r2, r3, #3
    ldr r3, .L080705E4 @ =0x02022D6C
    adds r2, r2, r3
    ldr r3, [r7, #8]
    movs r4, #0
    str r4, [sp]
    str r0, [sp, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    adds r2, r3, #0
    movs r3, #0x18
    bl PutDrawText
    movs r0, #1
    bl EnableBgSync
    b .L08070778
    .align 2, 0
.L080705E0: .4byte 0x08C9D938
.L080705E4: .4byte 0x02022D6C
.L080705E8:
    ldr r0, .L08070674 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    adds r1, r0, #0
    adds r1, #0x34
    adds r0, r1, #0
    bl ClearText
    ldr r0, .L08070674 @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r0, [r0]
    adds r1, r2, r0
    adds r0, r1, #0
    adds r0, #0x34
    ldr r2, [r7, #8]
    ldr r3, [r7, #0x1c]
    movs r1, #0x10
    bl Text_InsertDrawNumberOrBlank
    ldr r1, .L08070674 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r6, #0x10
    ldrsh r1, [r0, r6]
    adds r0, r1, #0
    bl GetItemName
    ldr r1, .L08070674 @ =0x08C9D938
    ldr r2, [r7]
    movs r3, #0x64
    muls r2, r3, r2
    adds r3, r2, #0
    adds r3, #8
    ldr r1, [r1]
    adds r2, r3, r1
    adds r1, r2, #0
    adds r1, #0x34
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #1
    adds r3, r3, r2
    lsls r2, r3, #3
    ldr r3, .L08070678 @ =0x02022DEC
    adds r2, r2, r3
    ldr r3, [r7, #8]
    movs r4, #0
    str r4, [sp]
    str r0, [sp, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    adds r2, r3, #0
    movs r3, #0x18
    bl PutDrawText
    movs r0, #1
    bl EnableBgSync
    b .L08070778
    .align 2, 0
.L08070674: .4byte 0x08C9D938
.L08070678: .4byte 0x02022DEC
.L0807067C:
    ldr r0, .L0807076C @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #3
    adds r2, r1, #0
    adds r2, #0x14
    adds r1, r0, r2
    adds r0, r1, #0
    bl ClearText
    ldr r0, .L0807076C @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #3
    adds r2, r1, #0
    adds r2, #0x14
    adds r0, r0, r2
    ldr r2, [r7, #8]
    ldr r3, .L0807076C @ =0x08C9D938
    ldr r1, [r3]
    ldr r3, [r7, #4]
    adds r4, r3, #0
    lsls r3, r4, #1
    ldr r4, [r7]
    movs r5, #0x64
    muls r4, r5, r4
    adds r3, r3, r4
    adds r1, #8
    adds r4, r1, r3
    movs r1, #0
    ldrsh r3, [r4, r1]
    movs r1, #8
    bl Text_InsertDrawNumberOrBlank
    ldr r0, .L0807076C @ =0x08C9D938
    ldr r1, [r7]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #3
    adds r2, r1, #0
    adds r2, #0x14
    adds r0, r0, r2
    ldr r2, [r7, #4]
    subs r1, r2, #5
    adds r2, r1, #0
    lsls r1, r2, #1
    adds r2, r1, #0
    adds r2, #8
    lsls r3, r2, #5
    adds r1, r3, #7
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #1
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, .L08070770 @ =gBg0Tm
    adds r1, r1, r2
    ldr r2, [r7, #8]
    movs r3, #0
    str r3, [sp]
    ldr r3, .L08070774 @ =0x08C9D898
    ldr r5, .L0807076C @ =0x08C9D938
    ldr r4, [r5]
    ldr r5, [r7, #4]
    adds r6, r5, #0
    lsls r5, r6, #1
    str r5, [r7, #0x20]
    ldr r6, [r7]
    str r6, [r7, #0x24]
    movs r5, #0x64
    mov r8, r5
    ldr r5, [r7, #0x24]
    mov r6, r8
    muls r6, r5, r6
    str r6, [r7, #0x24]
    ldr r6, [r7, #0x20]
    ldr r5, [r7, #0x24]
    adds r6, r6, r5
    str r6, [r7, #0x20]
    adds r4, #8
    ldr r6, [r7, #0x20]
    adds r5, r4, r6
    movs r6, #0
    ldrsh r4, [r5, r6]
    adds r5, r4, #0
    lsls r4, r5, #2
    adds r3, r3, r4
    ldr r4, [r3]
    str r4, [sp, #4]
    movs r3, #0x10
    bl PutDrawText
    movs r0, #1
    bl EnableBgSync
    b .L08070778
    .align 2, 0
.L0807076C: .4byte 0x08C9D938
.L08070770: .4byte gBg0Tm
.L08070774: .4byte 0x08C9D898
.L08070778:
    add sp, #0x30
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08070324

    thumb_func_start func_08070784
func_08070784: @ 0x08070784
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08070978 @ =0x08B9333C
    adds r0, r1, #0
    bl Proc_EndEach
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x66
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0xe]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0xe]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #8]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #8]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0x10]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x10]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0xa]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #4
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0xa]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0xc]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #8
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0xc]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x72
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x6c
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x74
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x6e
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x70
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #8
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0x12]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x12]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0x14]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x14]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0x16]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x16]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, .L0807097C @ =0x08C9D938
    ldr r0, [r1]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x76
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x78
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x7a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x7c
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807097C @ =0x08C9D938
    ldr r2, [r0]
    adds r1, r2, #0
    adds r0, r2, #0
    adds r0, #0x7e
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08070978: .4byte 0x08B9333C
.L0807097C: .4byte 0x08C9D938
    func_end func_08070784

    thumb_func_start func_08070980
func_08070980: @ 0x08070980
    push {r7, lr}
    sub sp, #0x10
    add r7, sp, #4
    str r0, [r7]
    bl EndAllMus
    bl ResetText
    ldr r0, .L08070A74 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x80
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08070A74 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #8
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08070A74 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #8
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08070A74 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08070A78 @ =0x030028AC
    ldr r1, .L08070A78 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08070A7C @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08070A78 @ =0x030028AC
    ldr r1, .L08070A78 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08070A78 @ =0x030028AC
    ldr r1, .L08070A78 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08070A80 @ =0x0000E0FF
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08070A78 @ =0x030028AC
    ldr r1, .L08070A78 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #0xe0
    lsls r3, r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08070A74 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L08070A74 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L08070A74 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    movs r0, #1
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x1d
    movs r3, #0x13
    bl DrawUiFrame2
    movs r0, #0
    str r0, [r7, #4]
.L08070A62:
    ldr r0, .L08070A84 @ =0x08C9D910
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    cmp r1, #0
    bne .L08070A88
    b .L08070ABC
    .align 2, 0
.L08070A74: .4byte gDispIo
.L08070A78: .4byte 0x030028AC
.L08070A7C: .4byte 0x0000FFE0
.L08070A80: .4byte 0x0000E0FF
.L08070A84: .4byte 0x08C9D910
.L08070A88:
    ldr r0, [r7, #4]
    adds r1, r0, #0
    lsls r0, r1, #1
    lsls r1, r0, #5
    adds r0, r1, #0
    lsls r1, r0, #1
    ldr r2, .L08070AB4 @ =0x02022C62
    adds r0, r1, r2
    ldr r1, .L08070AB8 @ =0x08C9D910
    ldr r2, [r7, #4]
    adds r3, r2, #0
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0
    bl func_08014698
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L08070A62
    .align 2, 0
.L08070AB4: .4byte 0x02022C62
.L08070AB8: .4byte 0x08C9D910
.L08070ABC:
    movs r0, #0
    str r0, [r7, #4]
.L08070AC0:
    ldr r0, [r7, #4]
    cmp r0, #9
    ble .L08070AC8
    b .L08070B52
.L08070AC8:
    movs r0, #0
    str r0, [r7, #8]
.L08070ACC:
    ldr r0, [r7, #8]
    cmp r0, #1
    ble .L08070AD4
    b .L08070B4A
.L08070AD4:
    ldr r0, .L08070B30 @ =0x08C9D938
    ldr r1, [r7, #8]
    movs r2, #0x64
    muls r1, r2, r1
    adds r2, r1, #0
    adds r2, #8
    ldr r1, [r0]
    adds r0, r2, r1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #3
    adds r2, r1, #0
    adds r2, #0x14
    adds r0, r0, r2
    ldr r1, .L08070B34 @ =0x08C9D8C0
    ldr r2, [r7, #4]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    ldrb r2, [r1]
    adds r1, r2, #0
    bl InitTextDb
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r2, #0
    ldrsh r0, [r1, r2]
    ldr r1, [r7, #8]
    cmp r1, r0
    bne .L08070B38
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x66
    movs r2, #0
    ldrsh r0, [r1, r2]
    ldr r1, [r7, #4]
    cmp r1, r0
    bne .L08070B38
    ldr r0, [r7, #8]
    ldr r1, [r7, #4]
    movs r2, #0
    bl func_08070324
    b .L08070B42
    .align 2, 0
.L08070B30: .4byte 0x08C9D938
.L08070B34: .4byte 0x08C9D8C0
.L08070B38:
    ldr r0, [r7, #8]
    ldr r1, [r7, #4]
    movs r2, #1
    bl func_08070324
.L08070B42:
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L08070ACC
.L08070B4A:
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L08070AC0
.L08070B52:
    movs r0, #1
    bl EnableBgSync
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08070980

    thumb_func_start func_08070B60
func_08070B60: @ 0x08070B60
    push {r4, r5, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r2, #0
    ldrsh r0, [r1, r2]
    str r0, [r7, #4]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x66
    movs r3, #0
    ldrsh r0, [r1, r3]
    str r0, [r7, #8]
    ldr r1, .L08070BA4 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #8]
    movs r2, #8
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08070BAE
    bl func_08071174
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    bne .L08070BA8
    b .L08071074
    .align 2, 0
.L08070BA4: .4byte gpKeySt
.L08070BA8:
    ldr r0, [r7]
    bl Proc_Break
.L08070BAE:
    ldr r1, .L08070BCC @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #4]
    movs r2, #0x80
    lsls r2, r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08070BD0
    movs r0, #0xa
    str r0, [r7, #0xc]
    b .L08070BD4
    .align 2, 0
.L08070BCC: .4byte gpKeySt
.L08070BD0:
    movs r0, #1
    str r0, [r7, #0xc]
.L08070BD4:
    ldr r1, .L08070CEC @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    bne .L08070BEC
    b .L08070D48
.L08070BEC:
    ldr r1, .L08070CF0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r4, #0
    ldrsh r1, [r2, r4]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r5, #0
    ldrsh r2, [r3, r5]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r2, r0, #0
    adds r2, #8
    adds r0, r2, r1
    ldr r2, .L08070CF0 @ =0x08C9D938
    ldr r1, [r2]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r2, #0
    lsls r2, r3, #1
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x64
    movs r5, #0
    ldrsh r3, [r4, r5]
    movs r4, #0x64
    muls r3, r4, r3
    adds r2, r2, r3
    adds r3, r1, #0
    adds r3, #8
    adds r1, r3, r2
    ldr r3, [r7, #0xc]
    adds r2, r3, #0
    ldrh r3, [r1]
    adds r1, r2, r3
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, .L08070CF0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r4, #0
    ldrsh r2, [r3, r4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r0, #8
    adds r1, r0, r1
    movs r5, #0
    ldrsh r0, [r1, r5]
    ldr r1, .L08070CF4 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    ldrb r2, [r1, #6]
    cmp r0, r2
    blt .L08070D48
    ldr r0, [r7, #0xc]
    cmp r0, #1
    bne .L08070CF8
    ldr r1, .L08070CF0 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r5, #0
    ldrsh r1, [r2, r5]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r4, #0
    ldrsh r2, [r3, r4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r2, r0, #0
    adds r2, #8
    adds r0, r2, r1
    ldr r1, .L08070CF4 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r5, #0
    ldrsh r2, [r3, r5]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    ldrb r2, [r1, #5]
    adds r1, r2, #0
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    b .L08070D48
    .align 2, 0
.L08070CEC: .4byte gpKeySt
.L08070CF0: .4byte 0x08C9D938
.L08070CF4: .4byte 0x08C9D8C0
.L08070CF8:
    ldr r1, .L08070E64 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r4, #0
    ldrsh r2, [r3, r4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r2, r0, #0
    adds r2, #8
    adds r0, r2, r1
    ldr r1, .L08070E68 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r5, #0
    ldrsh r2, [r3, r5]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    ldrb r3, [r1, #6]
    adds r2, r3, #0
    subs r1, r2, #1
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L08070D48:
    ldr r1, .L08070E6C @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #2
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    bne .L08070D60
    b .L08070EBC
.L08070D60:
    ldr r1, .L08070E64 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r4, #0
    ldrsh r2, [r3, r4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r2, r0, #0
    adds r2, #8
    adds r0, r2, r1
    ldr r2, .L08070E64 @ =0x08C9D938
    ldr r1, [r2]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r5, #0
    ldrsh r2, [r3, r5]
    adds r3, r2, #0
    lsls r2, r3, #1
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x64
    movs r5, #0
    ldrsh r3, [r4, r5]
    movs r4, #0x64
    muls r3, r4, r3
    adds r2, r2, r3
    adds r3, r1, #0
    adds r3, #8
    adds r1, r3, r2
    ldr r3, [r7, #0xc]
    adds r2, r3, #0
    ldrh r3, [r1]
    subs r1, r3, r2
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, .L08070E64 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r4, #0
    ldrsh r2, [r3, r4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r0, #8
    adds r1, r0, r1
    movs r5, #0
    ldrsh r0, [r1, r5]
    ldr r1, .L08070E68 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    ldrb r2, [r1, #5]
    cmp r0, r2
    bge .L08070EBC
    ldr r0, [r7, #0xc]
    cmp r0, #1
    bne .L08070E70
    ldr r1, .L08070E64 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r5, #0
    ldrsh r1, [r2, r5]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r4, #0
    ldrsh r2, [r3, r4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r2, r0, #0
    adds r2, #8
    adds r0, r2, r1
    ldr r1, .L08070E68 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r5, #0
    ldrsh r2, [r3, r5]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    ldrb r3, [r1, #6]
    adds r2, r3, #0
    subs r1, r2, #1
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    b .L08070EBC
    .align 2, 0
.L08070E64: .4byte 0x08C9D938
.L08070E68: .4byte 0x08C9D8C0
.L08070E6C: .4byte gpKeySt
.L08070E70:
    ldr r1, .L0807107C @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    movs r4, #0
    ldrsh r2, [r3, r4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r2, r0, #0
    adds r2, #8
    adds r0, r2, r1
    ldr r1, .L08071080 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r5, #0
    ldrsh r2, [r3, r5]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    ldrb r2, [r1, #5]
    adds r1, r2, #0
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
.L08070EBC:
    ldr r1, .L08071084 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #0x20
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08070F2E
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x66
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #2
    beq .L08070F02
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    ldrh r1, [r2]
    movs r2, #1
    subs r1, r2, r1
    adds r2, r0, #0
    adds r0, #0x64
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L08070F02:
    ldr r0, [r7]
    ldr r1, .L08071080 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    movs r2, #3
    ldrsb r2, [r1, r2]
    adds r1, r2, #0
    adds r2, r0, #0
    adds r0, #0x66
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
.L08070F2E:
    ldr r1, .L08071084 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #0x10
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08070FA0
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x66
    movs r5, #0
    ldrsh r0, [r1, r5]
    cmp r0, #1
    beq .L08070F74
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    ldrh r1, [r2]
    movs r2, #1
    subs r1, r2, r1
    adds r2, r0, #0
    adds r0, #0x64
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L08070F74:
    ldr r0, [r7]
    ldr r1, .L08071080 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    movs r2, #4
    ldrsb r2, [r1, r2]
    adds r1, r2, #0
    adds r2, r0, #0
    adds r0, #0x66
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
.L08070FA0:
    ldr r1, .L08071084 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #0x40
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08070FE2
    ldr r0, [r7]
    ldr r1, .L08071080 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r5, #0
    ldrsh r2, [r3, r5]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    movs r2, #1
    ldrsb r2, [r1, r2]
    adds r1, r2, #0
    adds r2, r0, #0
    adds r0, #0x66
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
.L08070FE2:
    ldr r1, .L08071084 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #0x80
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08071024
    ldr r0, [r7]
    ldr r1, .L08071080 @ =0x08C9D8C0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r2, #0
    lsls r2, r3, #3
    adds r1, r1, r2
    movs r2, #2
    ldrsb r2, [r1, r2]
    adds r1, r2, #0
    adds r2, r0, #0
    adds r0, #0x66
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
.L08071024:
    ldr r1, .L08071084 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #0xf0
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08071044
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    movs r2, #1
    bl func_08070324
.L08071044:
    ldr r1, .L08071084 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    movs r2, #0xf3
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08071074
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r5, #0
    ldrsh r0, [r1, r5]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    movs r2, #0
    bl func_08070324
.L08071074:
    add sp, #0x10
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807107C: .4byte 0x08C9D938
.L08071080: .4byte 0x08C9D8C0
.L08071084: .4byte gpKeySt
    func_end func_08070B60

    thumb_func_start func_08071088
func_08071088: @ 0x08071088
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x72
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x1e
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    ldrb r1, [r0, #0x12]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x3c
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x12]
    ldr r1, .L08071170 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7, #4]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r2, #8
    ldrsh r1, [r0, r2]
    adds r0, r1, #0
    bl GetCharacterData
    ldr r1, [r7]
    str r0, [r1]
    ldr r1, .L08071170 @ =0x08C9D938
    ldr r0, [r1]
    ldr r1, [r7, #4]
    movs r2, #0x64
    muls r1, r2, r1
    adds r0, r0, r1
    movs r2, #0xe
    ldrsh r1, [r0, r2]
    adds r0, r1, #0
    bl GetClassData
    ldr r1, [r7]
    str r0, [r1, #4]
    ldr r0, [r7]
    ldr r2, .L08071170 @ =0x08C9D938
    ldr r1, [r2]
    ldr r2, [r7, #4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    ldrh r2, [r1, #0xa]
    adds r1, r2, #0
    ldrb r2, [r0, #0x10]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x10]
    ldr r0, [r7]
    ldr r2, .L08071170 @ =0x08C9D938
    ldr r1, [r2]
    ldr r2, [r7, #4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    ldrh r2, [r1, #0xc]
    adds r1, r2, #0
    ldrb r2, [r0, #0x11]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x11]
    ldr r0, [r7]
    ldr r2, .L08071170 @ =0x08C9D938
    ldr r1, [r2]
    ldr r2, [r7, #4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x4a
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrh r1, [r1, #0x10]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x6e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071170: .4byte 0x08C9D938
    func_end func_08071088

    thumb_func_start func_08071174
func_08071174: @ 0x08071174
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    ldr r0, .L080711A8 @ =0x0203A4F0
    str r0, [r7, #0xc]
    ldr r1, .L080711AC @ =0x0203A3F0
    adds r0, r1, #0
    movs r1, #0
    bl func_08071088
    ldr r1, .L080711B0 @ =0x0203A470
    adds r0, r1, #0
    movs r1, #1
    bl func_08071088
    bl ClearBattleHits
    movs r0, #0
    str r0, [r7, #0x10]
    movs r0, #0
    str r0, [r7]
.L0807119E:
    ldr r0, [r7]
    cmp r0, #4
    ble .L080711B4
    b .L08071204
    .align 2, 0
.L080711A8: .4byte 0x0203A4F0
.L080711AC: .4byte 0x0203A3F0
.L080711B0: .4byte 0x0203A470
.L080711B4:
    movs r0, #0
    str r0, [r7, #4]
.L080711B8:
    ldr r0, [r7, #4]
    cmp r0, #1
    ble .L080711C0
    b .L080711F4
.L080711C0:
    ldr r1, .L080711E8 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #5
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r7, #4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r0, #8
    adds r1, r0, r1
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0
    beq .L080711EC
    movs r0, #1
    str r0, [r7, #0x10]
    b .L080711F4
    .align 2, 0
.L080711E8: .4byte 0x08C9D938
.L080711EC:
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L080711B8
.L080711F4:
    ldr r0, [r7, #0x10]
    cmp r0, #0
    beq .L080711FC
    b .L08071204
.L080711FC:
    ldr r0, [r7]
    adds r1, r0, #1
    str r1, [r7]
    b .L0807119E
.L08071204:
    ldr r0, [r7]
    cmp r0, #5
    bne .L08071214
    ldr r0, [r7, #4]
    cmp r0, #2
    bne .L08071214
    movs r0, #0
    b .L080713E2
.L08071214:
    ldr r0, [r7]
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, [r7, #4]
    adds r0, r0, r1
    str r0, [r7, #8]
.L08071220:
    ldr r0, [r7, #8]
    cmp r0, #9
    ble .L08071228
    b .L080713C2
.L08071228:
    ldr r0, [r7, #8]
    asrs r1, r0, #0x1f
    lsrs r2, r1, #0x1f
    adds r1, r0, r2
    asrs r0, r1, #1
    str r0, [r7]
    ldr r0, [r7, #8]
    movs r1, #1
    ands r0, r1
    str r0, [r7, #4]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #3
    ldrb r2, [r0, #2]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #2]
    ldr r1, .L08071284 @ =0x08C9D938
    ldr r0, [r1]
    ldr r2, [r7]
    adds r1, r2, #5
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r7, #4]
    movs r3, #0x64
    muls r2, r3, r2
    adds r1, r1, r2
    adds r0, #8
    adds r1, r0, r1
    movs r2, #0
    ldrsh r0, [r1, r2]
    str r0, [r7, #0x10]
    ldr r1, [r7, #0x10]
    subs r0, r1, #1
    cmp r0, #8
    bhi .L08071316
    lsls r1, r0, #2
    ldr r2, .L08071288 @ =.L0807128C
    adds r0, r1, r2
    ldr r1, [r0]
    mov pc, r1
    .align 2, 0
.L08071284: .4byte 0x08C9D938
.L08071288: .4byte .L0807128C
.L0807128C: @ jump table
    .4byte .L080712E2 @ case 0
    .4byte .L080712E2 @ case 1
    .4byte .L080712E2 @ case 2
    .4byte .L080712E2 @ case 3
    .4byte .L080712B0 @ case 4
    .4byte .L080712B0 @ case 5
    .4byte .L080712B0 @ case 6
    .4byte .L080712B0 @ case 7
    .4byte .L080712F8 @ case 8
.L080712B0:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldrh r2, [r1]
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #0xc]
    ldrb r1, [r0, #3]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x14
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #3]
    b .L08071316
.L080712E2:
    ldr r0, [r7, #0xc]
    ldrb r1, [r0, #3]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xa
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #3]
    b .L08071316
.L080712F8:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldrh r2, [r1]
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    b .L08071316
.L08071316:
    ldr r1, [r7, #0x10]
    subs r0, r1, #2
    cmp r0, #6
    bhi .L080713AA
    lsls r1, r0, #2
    ldr r2, .L08071328 @ =.L0807132C
    adds r0, r1, r2
    ldr r1, [r0]
    mov pc, r1
    .align 2, 0
.L08071328: .4byte .L0807132C
.L0807132C: @ jump table
    .4byte .L08071348 @ case 0
    .4byte .L08071368 @ case 1
    .4byte .L0807138A @ case 2
    .4byte .L080713AA @ case 3
    .4byte .L08071348 @ case 4
    .4byte .L08071368 @ case 5
    .4byte .L0807138A @ case 6
.L08071348:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldrh r2, [r1]
    movs r3, #0x80
    adds r1, r2, #0
    orrs r1, r3
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    b .L080713AA
.L08071366:
    .byte 0x20, 0xE0
.L08071368:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldrh r2, [r1]
    movs r3, #0x80
    lsls r3, r3, #1
    adds r1, r2, #0
    orrs r1, r3
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    b .L080713AA
.L08071388:
    .byte 0x0F, 0xE0
.L0807138A:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldrh r2, [r1]
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    b .L080713AA
.L080713A8:
    .byte 0xFF, 0xE7
.L080713AA:
    ldr r0, [r7, #0x10]
    cmp r0, #0
    beq .L080713B2
    b .L080713B4
.L080713B2:
    b .L080713BA
.L080713B4:
    ldr r0, [r7, #0xc]
    adds r1, r0, #4
    str r1, [r7, #0xc]
.L080713BA:
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L08071220
.L080713C2:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldrb r2, [r1, #2]
    movs r3, #0x80
    adds r1, r2, #0
    orrs r1, r3
    ldrb r2, [r0, #2]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #2]
    movs r0, #1
    b .L080713E2
.L080713E2:
    add sp, #0x14
    pop {r7}
    pop {r1}
    bx r1
    func_end func_08071174

    thumb_func_start func_080713EC
func_080713EC: @ 0x080713EC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0807141C @ =gBg0Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    ldr r1, .L08071420 @ =gBg1Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #3
    bl EnableBgSync
    bl func_0806F23C
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807141C: .4byte gBg0Tm
.L08071420: .4byte gBg1Tm
    func_end func_080713EC

    thumb_func_start func_08071424
func_08071424: @ 0x08071424
    push {r4, r5, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, .L08071490 @ =0x083F2B4C
    ldr r1, .L08071494 @ =0x06013000
    bl Decompress
    ldr r0, .L08071498 @ =0x083F2C3C
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L0807149C @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    ldr r3, [r7]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    ldr r3, .L0807149C @ =gBmSt
    movs r5, #0xe
    ldrsh r4, [r3, r5]
    asrs r3, r4, #4
    adds r5, r3, #0
    lsls r4, r5, #0x10
    asrs r3, r4, #0x10
    subs r2, r2, r3
    lsls r3, r2, #1
    adds r2, r3, #0
    lsls r3, r2, #3
    adds r2, r3, #0
    adds r2, #0x10
    movs r3, #0xc0
    lsls r3, r3, #1
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    add sp, #0xc
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071490: .4byte 0x083F2B4C
.L08071494: .4byte 0x06013000
.L08071498: .4byte 0x083F2C3C
.L0807149C: .4byte gBmSt
    func_end func_08071424

    thumb_func_start func_080714A0
func_080714A0: @ 0x080714A0
    push {r4, r5, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, .L0807150C @ =0x083F2DA4
    ldr r1, .L08071510 @ =0x06013000
    bl Decompress
    ldr r0, .L08071514 @ =0x083F2EE8
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08071518 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    ldr r3, [r7]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    ldr r3, .L08071518 @ =gBmSt
    movs r5, #0xe
    ldrsh r4, [r3, r5]
    asrs r3, r4, #4
    adds r5, r3, #0
    lsls r4, r5, #0x10
    asrs r3, r4, #0x10
    subs r2, r2, r3
    lsls r3, r2, #1
    adds r2, r3, #0
    lsls r3, r2, #3
    adds r2, r3, #0
    adds r2, #0x10
    movs r3, #0xc0
    lsls r3, r3, #1
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    add sp, #0xc
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807150C: .4byte 0x083F2DA4
.L08071510: .4byte 0x06013000
.L08071514: .4byte 0x083F2EE8
.L08071518: .4byte gBmSt
    func_end func_080714A0

    thumb_func_start func_0807151C
func_0807151C: @ 0x0807151C
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, .L080715A8 @ =0x08C9D99C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #8]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L080715AC @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    str r1, [r0, #0x30]
    ldr r0, [r7, #8]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L080715AC @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    subs r1, #8
    str r1, [r0, #0x34]
    ldr r0, [r7, #8]
    ldr r2, [r7, #4]
    adds r1, r2, #0
    movs r2, #1
    eors r1, r2
    adds r2, r0, #0
    adds r0, #0x48
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080715A8: .4byte 0x08C9D99C
.L080715AC: .4byte gBmSt
    func_end func_0807151C

    thumb_func_start func_080715B0
func_080715B0: @ 0x080715B0
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, .L080715FC @ =0x083F4464
    ldr r1, .L08071600 @ =0x06013000
    bl Decompress
    ldr r0, .L08071604 @ =0x083F46F0
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08071608 @ =0x083EDA80
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    adds r2, #0x10
    movs r3, #0xc6
    lsls r3, r3, #6
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x48
    movs r6, #0
    ldrsh r4, [r5, r6]
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080715FC: .4byte 0x083F4464
.L08071600: .4byte 0x06013000
.L08071604: .4byte 0x083F46F0
.L08071608: .4byte 0x083EDA80
    func_end func_080715B0

    thumb_func_start func_0807160C
func_0807160C: @ 0x0807160C
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08071674 @ =0x08C9D9BC
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08071678 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L08071678 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071674: .4byte 0x08C9D9BC
.L08071678: .4byte gBmSt
    func_end func_0807160C

    thumb_func_start func_0807167C
func_0807167C: @ 0x0807167C
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0xb7
    bl func_08014D80
    ldr r0, .L080716CC @ =0x083F4894
    ldr r1, .L080716D0 @ =0x06013800
    bl Decompress
    ldr r0, .L080716D4 @ =0x083F4BE8
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L080716D8 @ =0x083ED9E8
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    subs r1, #8
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    adds r2, #8
    ldr r3, .L080716DC @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080716CC: .4byte 0x083F4894
.L080716D0: .4byte 0x06013800
.L080716D4: .4byte 0x083F4BE8
.L080716D8: .4byte 0x083ED9E8
.L080716DC: .4byte 0x000041C0
    func_end func_0807167C

    thumb_func_start func_080716E0
func_080716E0: @ 0x080716E0
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08071748 @ =0x08C9D9DC
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L0807174C @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L0807174C @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071748: .4byte 0x08C9D9DC
.L0807174C: .4byte gBmSt
    func_end func_080716E0

    thumb_func_start func_08071750
func_08071750: @ 0x08071750
    push {r4, r7, lr}
    sub sp, #8
    add r7, sp, #4
    str r0, [r7]
    bl func_08073D80
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r4, .L0807186C @ =0x083F6334
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L08071870 @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08071874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071878 @ =0x030028AC
    ldr r1, .L08071878 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L0807187C @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08071878 @ =0x030028AC
    ldr r1, .L08071878 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #4
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08071874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071878 @ =0x030028AC
    ldr r1, .L08071878 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08071880 @ =0x0000E0FF
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08071878 @ =0x030028AC
    ldr r1, .L08071878 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08071874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x40
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x42
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08071884 @ =0x083F695C
    ldr r1, [r7]
    str r1, [sp]
    movs r1, #0x80
    movs r2, #0x20
    movs r3, #2
    bl func_08014728
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807186C: .4byte 0x083F6334
.L08071870: .4byte 0x06002800
.L08071874: .4byte gDispIo
.L08071878: .4byte 0x030028AC
.L0807187C: .4byte 0x0000FFE0
.L08071880: .4byte 0x0000E0FF
.L08071884: .4byte 0x083F695C
    func_end func_08071750

    thumb_func_start func_08071888
func_08071888: @ 0x08071888
    push {r4, r7, lr}
    sub sp, #0x14
    add r7, sp, #8
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x42
    ldrh r0, [r1]
    cmp r0, #2
    bls .L08071910
    bl func_080146DC
    ldr r0, .L08071904 @ =0x083F695C
    ldr r1, [r7]
    str r1, [sp]
    movs r1, #0x80
    movs r2, #0x20
    movs r3, #4
    bl func_08014740
    ldr r4, .L08071908 @ =0x083F699C
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L0807190C @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    adds r0, r1, #0
    cmp r0, #0
    bge .L080718CE
    adds r0, #7
.L080718CE:
    asrs r1, r0, #3
    subs r0, r1, #4
    ldr r1, [r7]
    ldr r2, [r1, #0x34]
    adds r1, r2, #0
    cmp r1, #0
    bge .L080718DE
    adds r1, #7
.L080718DE:
    asrs r2, r1, #3
    subs r1, r2, #4
    movs r2, #0
    str r2, [sp]
    ldr r2, [r7]
    str r2, [sp, #4]
    movs r2, #8
    movs r3, #0x3c
    bl func_08071B34
    ldr r0, [r7]
    bl Proc_Break
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x8c
    bl func_08014D80
    b .L080719AA
    .align 2, 0
.L08071904: .4byte 0x083F695C
.L08071908: .4byte 0x083F699C
.L0807190C: .4byte 0x06002800
.L08071910:
    ldr r0, .L080719B4 @ =0x08C9DA14
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x42
    ldrh r1, [r2]
    adds r2, r1, #0
    lsls r1, r2, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r0, r2]
    str r1, [r7, #4]
    ldr r0, .L080719B4 @ =0x08C9DA14
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x42
    ldrh r1, [r2]
    adds r2, r1, #0
    lsls r1, r2, #1
    adds r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #1
    adds r0, r0, r2
    movs r2, #0
    ldrsh r1, [r0, r2]
    str r1, [r7, #8]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    adds r0, r1, #0
    cmp r0, #0
    bge .L0807194E
    adds r0, #7
.L0807194E:
    asrs r0, r0, #3
    ldr r2, [r7, #4]
    adds r1, r0, r2
    subs r0, r1, #3
    ldr r1, [r7]
    ldr r2, [r1, #0x34]
    adds r1, r2, #0
    cmp r1, #0
    bge .L08071962
    adds r1, #7
.L08071962:
    asrs r1, r1, #3
    ldr r3, [r7, #8]
    adds r2, r1, r3
    subs r1, r2, #3
    movs r2, #8
    str r2, [sp]
    ldr r2, [r7]
    str r2, [sp, #4]
    movs r2, #6
    movs r3, #0xa
    bl func_08071B34
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x89
    bl func_08014D80
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x42
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x42
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x42
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L080719AA:
    add sp, #0x14
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080719B4: .4byte 0x08C9DA14
    func_end func_08071888

    thumb_func_start func_080719B8
func_080719B8: @ 0x080719B8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L080719D8 @ =gBg2Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080719D8: .4byte gBg2Tm
    func_end func_080719B8

    thumb_func_start func_080719DC
func_080719DC: @ 0x080719DC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl func_080146DC
    ldr r1, .L08071A50 @ =gBg2Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L08071A54 @ =0x030028AC
    ldr r1, .L08071A54 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08071A58 @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08071A54 @ =0x030028AC
    ldr r1, .L08071A54 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #0x1f
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08071A5C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    bl func_08071A60
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071A50: .4byte gBg2Tm
.L08071A54: .4byte 0x030028AC
.L08071A58: .4byte 0x0000FFE0
.L08071A5C: .4byte gDispIo
    func_end func_080719DC

    thumb_func_start func_08071A60
func_08071A60: @ 0x08071A60
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08071B30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x80
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071B30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071B30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071B30 @ =gDispIo
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x64
    ldrh r2, [r1]
    subs r3, r2, #1
    adds r4, r3, #0
    strh r4, [r1]
    lsls r2, r2, #0x10
    asrs r1, r2, #0x10
    asrs r2, r1, #2
    adds r1, r2, #0
    adds r2, r0, #0
    adds r0, #0x46
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0
    bne .L08071B26
    ldr r0, .L08071B30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071B30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071B30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071B30 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    bl Proc_Break
.L08071B26:
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071B30: .4byte gDispIo
    func_end func_08071A60

    thumb_func_start func_08071B34
func_08071B34: @ 0x08071B34
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L08071B84 @ =0x08C9DA3C
    ldr r1, [r7, #0x20]
    bl Proc_StartBlocking
    str r0, [r7, #0x10]
    ldr r0, [r7, #0x10]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #4]
    str r1, [r0, #0x30]
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #8]
    str r1, [r0, #0x54]
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #0x1c]
    str r1, [r0, #0x58]
    ldr r1, [r7, #0x10]
    ldr r2, [r7, #0xc]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x44
    ldrh r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strh r2, [r1]
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071B84: .4byte 0x08C9DA3C
    func_end func_08071B34

    thumb_func_start func_08071B88
func_08071B88: @ 0x08071B88
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08071BA8 @ =gBg2Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071BA8: .4byte gBg2Tm
    func_end func_08071B88

    thumb_func_start func_08071BAC
func_08071BAC: @ 0x08071BAC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08071BCC @ =gBg2Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071BCC: .4byte gBg2Tm
    func_end func_08071BAC

    thumb_func_start func_08071BD0
func_08071BD0: @ 0x08071BD0
    push {r4, r5, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, .L08071C64 @ =gBg2Tm
    ldr r2, [r7]
    ldr r1, [r2, #0x2c]
    ldr r3, [r7]
    ldr r2, [r3, #0x30]
    ldr r3, .L08071C68 @ =0x00004140
    ldr r4, [r7]
    ldr r5, [r4, #0x54]
    str r5, [sp]
    ldr r4, [r7]
    ldr r5, [r4, #0x54]
    str r5, [sp, #4]
    bl func_080147BC
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L08071C6C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071C6C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071C6C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071C6C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #0xc
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071C64: .4byte gBg2Tm
.L08071C68: .4byte 0x00004140
.L08071C6C: .4byte gDispIo
    func_end func_08071BD0

    thumb_func_start func_08071C70
func_08071C70: @ 0x08071C70
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    ldrh r3, [r2]
    adds r1, r3, #2
    adds r2, r0, #0
    adds r0, #0x64
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, .L08071D24 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L08071D24 @ =gDispIo
    ldr r2, [r7]
    adds r0, r2, #0
    adds r2, #0x64
    ldrh r3, [r2]
    adds r0, r3, #0
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, .L08071D24 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071D24 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #7
    ble .L08071D1A
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    bl Proc_Break
.L08071D1A:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071D24: .4byte gDispIo
    func_end func_08071C70

    thumb_func_start func_08071D28
func_08071D28: @ 0x08071D28
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r2, r1, #0
    adds r2, #0x44
    ldr r1, [r7]
    ldr r2, [r7]
    adds r0, r2, #0
    adds r2, #0x44
    ldrh r3, [r2]
    subs r0, r3, #1
    adds r2, r1, #0
    adds r1, #0x44
    ldrh r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r0, #0
    orrs r3, r2
    adds r2, r3, #0
    strh r2, [r1]
    lsls r1, r0, #0x10
    asrs r0, r1, #0x10
    movs r1, #1
    cmn r0, r1
    bne .L08071D68
    ldr r0, [r7]
    bl Proc_Break
.L08071D68:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08071D28

    thumb_func_start func_08071D70
func_08071D70: @ 0x08071D70
    push {r7, lr}
    sub sp, #0xc
    add r7, sp, #4
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x58]
    cmp r1, #0
    bne .L08071D88
    ldr r0, [r7]
    bl Proc_Break
    b .L08071E3C
.L08071D88:
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    adds r2, r1, #1
    adds r3, r2, #0
    strh r3, [r0]
    lsls r0, r1, #0x10
    asrs r3, r0, #0x10
    ldr r0, [r7]
    ldr r1, [r0, #0x58]
    str r1, [sp]
    movs r0, #0
    movs r1, #8
    movs r2, #0
    bl Interpolate
    str r0, [r7, #4]
    ldr r0, .L08071E44 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L08071E44 @ =gDispIo
    ldr r2, [r7, #4]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, .L08071E44 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071E44 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    movs r2, #0
    ldrsh r0, [r1, r2]
    ldr r1, [r7]
    ldr r2, [r1, #0x58]
    cmp r0, r2
    blt .L08071E3C
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, .L08071E48 @ =gBg2Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r0, [r7]
    bl Proc_Break
.L08071E3C:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071E44: .4byte gDispIo
.L08071E48: .4byte gBg2Tm
    func_end func_08071D70

    thumb_func_start func_08071E4C
func_08071E4C: @ 0x08071E4C
    push {r4, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, .L08071EC4 @ =0x08C9DA7C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #0xc]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08071EC8 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #0xc]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L08071EC8 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #4]
    str r1, [r0, #0x50]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #8]
    str r1, [r0, #0x54]
    add sp, #0x10
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071EC4: .4byte 0x08C9DA7C
.L08071EC8: .4byte gBmSt
    func_end func_08071E4C

    thumb_func_start func_08071ECC
func_08071ECC: @ 0x08071ECC
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0xb6
    bl func_08014D80
    ldr r0, .L08071FC8 @ =gDispIo
    ldrb r1, [r0, #0xc]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #0xc]
    ldr r0, .L08071FC8 @ =gDispIo
    ldrb r1, [r0, #0x10]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x10]
    ldr r0, .L08071FC8 @ =gDispIo
    ldrb r1, [r0, #0x14]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x14]
    ldr r0, .L08071FC8 @ =gDispIo
    ldrb r1, [r0, #0x18]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x18]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, [r7]
    ldr r4, [r0, #0x50]
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L08071FCC @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, [r7]
    ldr r1, [r0, #0x54]
    adds r0, r1, #0
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    bl func_08073D80
    ldr r0, .L08071FC8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071FC8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071FC8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08071FC8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x40
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08071FC8: .4byte gDispIo
.L08071FCC: .4byte 0x06002800
    func_end func_08071ECC

    thumb_func_start func_08071FD0
func_08071FD0: @ 0x08071FD0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x14
    add r7, sp, #0x10
    str r0, [r7]
    ldr r0, .L08072088 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    cmp r1, #0
    bge .L08071FEA
    adds r1, #7
.L08071FEA:
    asrs r2, r1, #3
    subs r1, r2, #3
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    cmp r2, #0
    bge .L08071FFA
    adds r2, #7
.L08071FFA:
    asrs r3, r2, #3
    subs r2, r3, #3
    ldr r3, .L0807208C @ =0x00004140
    movs r4, #6
    str r4, [sp]
    movs r4, #6
    str r4, [sp, #4]
    ldr r4, .L08072090 @ =0x083F5CF4
    str r4, [sp, #8]
    ldr r4, .L08072094 @ =0x08C9DAAC
    ldr r6, [r7]
    adds r5, r6, #0
    adds r6, #0x40
    ldrh r5, [r6]
    mov r8, r5
    mov r6, r8
    lsrs r5, r6, #1
    mov r8, r5
    mov r5, r8
    lsls r6, r5, #0x10
    lsrs r5, r6, #0x10
    adds r4, r4, r5
    ldrb r5, [r4]
    str r5, [sp, #0xc]
    bl func_080148FC
    movs r0, #4
    bl EnableBgSync
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x40
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, .L08072094 @ =0x08C9DAAC
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    lsrs r1, r3, #1
    adds r3, r1, #0
    lsls r2, r3, #0x10
    lsrs r1, r2, #0x10
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xff
    bne .L0807207A
    ldr r0, [r7]
    bl Proc_Break
.L0807207A:
    add sp, #0x14
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072088: .4byte gBg2Tm
.L0807208C: .4byte 0x00004140
.L08072090: .4byte 0x083F5CF4
.L08072094: .4byte 0x08C9DAAC
    func_end func_08071FD0

    thumb_func_start func_08072098
func_08072098: @ 0x08072098
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L080720FC @ =0x08C9DAC4
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08072100 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L08072100 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080720FC: .4byte 0x08C9DAC4
.L08072100: .4byte gBmSt
    func_end func_08072098

    thumb_func_start func_08072104
func_08072104: @ 0x08072104
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08072120 @ =0x0000010F
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    bl func_08014D80
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072120: .4byte 0x0000010F
    func_end func_08072104

    thumb_func_start func_08072124
func_08072124: @ 0x08072124
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    adds r0, r3, #0
    adds r1, r7, #0
    adds r1, #0xc
    strh r0, [r1]
    ldr r1, .L0807217C @ =0x08C9DAE4
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #0x10]
    ldr r0, [r7, #0x10]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #4]
    str r1, [r0, #0x50]
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #8]
    str r1, [r0, #0x54]
    ldr r0, [r7, #0x10]
    adds r1, r7, #0
    adds r1, #0xc
    adds r2, r0, #0
    adds r0, #0x58
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrh r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807217C: .4byte 0x08C9DAE4
    func_end func_08072124

    thumb_func_start func_08072180
func_08072180: @ 0x08072180
    push {r4, r5, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, .L080722AC @ =gDispIo
    ldrb r1, [r0, #0xc]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #0xc]
    ldr r0, .L080722AC @ =gDispIo
    ldrb r1, [r0, #0x10]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x10]
    ldr r0, .L080722AC @ =gDispIo
    ldrb r1, [r0, #0x14]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x14]
    ldr r0, .L080722AC @ =gDispIo
    ldrb r1, [r0, #0x18]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x18]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, [r7]
    ldr r4, [r0, #0x50]
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L080722B0 @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L080722B4 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x2c]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L080722B8 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    subs r1, r2, #2
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    ldr r3, .L080722B8 @ =gBmSt
    movs r5, #0xe
    ldrsh r4, [r3, r5]
    asrs r3, r4, #4
    adds r5, r3, #0
    lsls r4, r5, #0x10
    asrs r3, r4, #0x10
    subs r2, r2, r3
    lsls r3, r2, #1
    subs r2, r3, #2
    ldr r3, .L080722BC @ =0x00004140
    movs r4, #6
    str r4, [sp]
    movs r4, #6
    str r4, [sp, #4]
    bl func_080147BC
    movs r0, #4
    bl EnableBgSync
    ldr r1, [r7]
    ldr r0, [r1, #0x54]
    ldr r1, [r7]
    str r1, [sp]
    movs r1, #0x80
    movs r2, #0x20
    movs r3, #4
    bl func_08014740
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x40
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x42
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x58
    ldrh r0, [r1]
    ldr r1, [r7]
    ldr r2, [r1, #0x2c]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L080722B8 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    bl func_08014D80
    add sp, #0xc
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080722AC: .4byte gDispIo
.L080722B0: .4byte 0x06002800
.L080722B4: .4byte gBg2Tm
.L080722B8: .4byte gBmSt
.L080722BC: .4byte 0x00004140
    func_end func_08072180

    thumb_func_start func_080722C0
func_080722C0: @ 0x080722C0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x40
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r0, [r1]
    cmp r0, #0x10
    bne .L08072300
    ldr r0, [r7]
    bl Proc_Break
.L08072300:
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r1, [r2]
    movs r2, #0x16
    subs r1, r2, r1
    adds r2, r0, #0
    adds r0, #0x42
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x42
    ldrh r0, [r1]
    cmp r0, #0x10
    bls .L08072346
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x42
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
.L08072346:
    ldr r0, .L08072414 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L08072414 @ =gDispIo
    ldr r2, [r7]
    adds r0, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    adds r0, r3, #0
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r1, .L08072414 @ =gDispIo
    ldr r2, [r7]
    adds r0, r2, #0
    adds r2, #0x42
    ldrh r3, [r2]
    adds r0, r3, #0
    adds r2, r1, #0
    adds r1, #0x45
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, .L08072414 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072418 @ =0x030028AC
    ldr r1, .L08072418 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L0807241C @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08072418 @ =0x030028AC
    ldr r1, .L08072418 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #4
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08072414 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072418 @ =0x030028AC
    ldr r1, .L08072418 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08072420 @ =0x0000E0FF
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08072418 @ =0x030028AC
    ldr r1, .L08072418 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08072414 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072414: .4byte gDispIo
.L08072418: .4byte 0x030028AC
.L0807241C: .4byte 0x0000FFE0
.L08072420: .4byte 0x0000E0FF
    func_end func_080722C0

    thumb_func_start func_08072424
func_08072424: @ 0x08072424
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    subs r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x40
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r0, [r1]
    cmp r0, #0
    bne .L08072464
    ldr r0, [r7]
    bl Proc_Break
.L08072464:
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r1, [r2]
    movs r2, #0x16
    subs r1, r2, r1
    adds r2, r0, #0
    adds r0, #0x42
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x42
    ldrh r0, [r1]
    cmp r0, #0x10
    bls .L080724AA
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x42
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
.L080724AA:
    ldr r0, .L08072578 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L08072578 @ =gDispIo
    ldr r2, [r7]
    adds r0, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    adds r0, r3, #0
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r1, .L08072578 @ =gDispIo
    ldr r2, [r7]
    adds r0, r2, #0
    adds r2, #0x42
    ldrh r3, [r2]
    adds r0, r3, #0
    adds r2, r1, #0
    adds r1, #0x45
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, .L08072578 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0807257C @ =0x030028AC
    ldr r1, .L0807257C @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08072580 @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807257C @ =0x030028AC
    ldr r1, .L0807257C @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #4
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08072578 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0807257C @ =0x030028AC
    ldr r1, .L0807257C @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08072584 @ =0x0000E0FF
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807257C @ =0x030028AC
    ldr r1, .L0807257C @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08072578 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072578: .4byte gDispIo
.L0807257C: .4byte 0x030028AC
.L08072580: .4byte 0x0000FFE0
.L08072584: .4byte 0x0000E0FF
    func_end func_08072424

    thumb_func_start func_08072588
func_08072588: @ 0x08072588
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl func_080146DC
    ldr r1, .L08072618 @ =gBg2Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L0807261C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0807261C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0807261C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0807261C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0807261C @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L0807261C @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L0807261C @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072618: .4byte gBg2Tm
.L0807261C: .4byte gDispIo
    func_end func_08072588

    thumb_func_start func_08072620
func_08072620: @ 0x08072620
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    bl SetOnHBlankA
    bl func_080146DC
    ldr r1, .L080726B8 @ =gBg2Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L080726BC @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080726BC @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080726BC @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080726BC @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080726BC @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080726BC @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080726BC @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080726B8: .4byte gBg2Tm
.L080726BC: .4byte gDispIo
    func_end func_08072620

    thumb_func_start func_080726C0
func_080726C0: @ 0x080726C0
    push {r4, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, .L08072724 @ =0x08C9DB1C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldr r2, [r1, #0x2c]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08072728 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    str r2, [r0, #0x30]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0xc]
    ldr r2, [r1, #0x2c]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L08072728 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    str r2, [r0, #0x34]
    add sp, #0x10
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072724: .4byte 0x08C9DB1C
.L08072728: .4byte gBmSt
    func_end func_080726C0

    thumb_func_start func_0807272C
func_0807272C: @ 0x0807272C
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r4, .L08072778 @ =0x083F4C08
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L0807277C @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r1, .L08072780 @ =0x083F4E68
    adds r0, r1, #0
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    bl func_080752C8
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x40
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072778: .4byte 0x083F4C08
.L0807277C: .4byte 0x06002800
.L08072780: .4byte 0x083F4E68
    func_end func_0807272C

    thumb_func_start func_08072784
func_08072784: @ 0x08072784
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x14
    add r7, sp, #0x10
    str r0, [r7]
    ldr r0, .L08072884 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    subs r1, r2, #1
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    subs r2, r3, #3
    ldr r3, .L08072888 @ =0x00004140
    movs r4, #4
    str r4, [sp]
    movs r4, #6
    str r4, [sp, #4]
    ldr r4, .L0807288C @ =0x083F4E88
    str r4, [sp, #8]
    ldr r4, .L08072890 @ =0x08C9DB4C
    ldr r6, [r7]
    adds r5, r6, #0
    adds r6, #0x40
    ldrh r5, [r6]
    mov r8, r5
    mov r6, r8
    lsrs r5, r6, #1
    mov r8, r5
    mov r5, r8
    lsls r6, r5, #0x10
    lsrs r5, r6, #0x10
    adds r4, r4, r5
    ldrb r5, [r4]
    str r5, [sp, #0xc]
    bl func_080148FC
    movs r0, #4
    bl EnableBgSync
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x40
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, .L08072890 @ =0x08C9DB4C
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    lsrs r1, r3, #1
    adds r3, r1, #0
    lsls r2, r3, #0x10
    lsrs r1, r2, #0x10
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xff
    bne .L0807281A
    ldr r0, [r7]
    bl Proc_Break
.L0807281A:
    bl func_08073D80
    ldr r0, .L08072894 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072894 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xc
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072894 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xc
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072894 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #0x14
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072884: .4byte gBg2Tm
.L08072888: .4byte 0x00004140
.L0807288C: .4byte 0x083F4E88
.L08072890: .4byte 0x08C9DB4C
.L08072894: .4byte gDispIo
    func_end func_08072784

    thumb_func_start func_08072898
func_08072898: @ 0x08072898
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L080728E4 @ =0x08C9DB64
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #4]
    ldr r1, .L080728E8 @ =gActionSt
    ldrb r2, [r1, #0x13]
    adds r3, r2, #0
    lsls r1, r3, #4
    ldr r2, .L080728EC @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r1, .L080728E8 @ =gActionSt
    ldrb r2, [r1, #0x14]
    adds r3, r2, #0
    lsls r1, r3, #4
    ldr r2, .L080728EC @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080728E4: .4byte 0x08C9DB64
.L080728E8: .4byte gActionSt
.L080728EC: .4byte gBmSt
    func_end func_08072898

    thumb_func_start func_080728F0
func_080728F0: @ 0x080728F0
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r1, .L080729EC @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0807290E
    movs r0, #0xb3
    bl m4aSongNumStart
.L0807290E:
    ldr r0, .L080729F0 @ =0x083F6D78
    ldr r1, .L080729F4 @ =0x06013800
    bl Decompress
    ldr r0, .L080729F8 @ =0x083F7030
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    movs r0, #4
    bl func_08013C7C
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L080729FC @ =0x06002800
    adds r1, r0, r2
    ldr r2, .L08072A00 @ =0x0000FFFF
    adds r0, r1, #0
    movs r1, #0x10
    bl func_08014B94
    ldr r0, .L08072A04 @ =gBg2Tm
    movs r1, #0x80
    lsls r1, r1, #3
    ldr r2, .L08072A08 @ =0x00004140
    bl func_08014B94
    movs r0, #4
    bl EnableBgSync
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x40
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x42
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08072A0C @ =0x083ECCA0
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #4
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldr r3, .L08072A10 @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    bl InitScanlineEffect
    bl func_0807689C
    bl func_08073D80
    ldr r0, .L08072A14 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072A14 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072A14 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072A14 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080729EC: .4byte gPlaySt
.L080729F0: .4byte 0x083F6D78
.L080729F4: .4byte 0x06013800
.L080729F8: .4byte 0x083F7030
.L080729FC: .4byte 0x06002800
.L08072A00: .4byte 0x0000FFFF
.L08072A04: .4byte gBg2Tm
.L08072A08: .4byte 0x00004140
.L08072A0C: .4byte 0x083ECCA0
.L08072A10: .4byte 0x000041C0
.L08072A14: .4byte gDispIo
    func_end func_080728F0

    thumb_func_start func_08072A18
func_08072A18: @ 0x08072A18
    push {r7, lr}
    sub sp, #0x10
    add r7, sp, #4
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r3, [r1]
    movs r0, #0x50
    str r0, [sp]
    movs r0, #5
    movs r1, #1
    movs r2, #0xa0
    bl Interpolate
    str r0, [r7, #4]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    adds r0, r1, #0
    adds r0, #8
    ldr r1, [r7]
    ldr r2, [r1, #0x34]
    adds r1, r2, #0
    adds r1, #8
    ldr r2, [r7, #4]
    bl func_080769CC
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x40
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r0, [r1]
    adds r1, r0, #0
    lsls r2, r1, #4
    adds r0, r2, #0
    movs r1, #0x28
    bl __divsi3
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    cmp r0, #0xf
    ble .L08072A94
    movs r0, #0x10
    str r0, [r7, #8]
.L08072A94:
    ldr r0, .L08072B0C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L08072B0C @ =gDispIo
    ldr r2, [r7, #8]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, .L08072B0C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072B0C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r0, [r1]
    cmp r0, #0x27
    bls .L08072B02
    ldr r0, [r7]
    bl Proc_Break
    bl EndEachSpriteAnimProc
.L08072B02:
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072B0C: .4byte gDispIo
    func_end func_08072A18

    thumb_func_start func_08072B10
func_08072B10: @ 0x08072B10
    push {r7, lr}
    sub sp, #0x10
    add r7, sp, #4
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r3, [r1]
    movs r0, #0x50
    str r0, [sp]
    movs r0, #5
    movs r1, #1
    movs r2, #0xa0
    bl Interpolate
    str r0, [r7, #4]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    adds r0, r1, #0
    adds r0, #8
    ldr r1, [r7]
    ldr r2, [r1, #0x34]
    adds r1, r2, #0
    adds r1, #8
    ldr r2, [r7, #4]
    bl func_080769CC
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x40
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r0, [r1]
    adds r1, r0, #0
    subs r1, #0x28
    adds r0, r1, #0
    lsls r1, r0, #4
    adds r0, r1, #0
    movs r1, #0x1e
    bl __divsi3
    movs r1, #0x10
    subs r0, r1, r0
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    cmp r0, #0
    bgt .L08072B94
    movs r0, #0
    str r0, [r7, #8]
.L08072B94:
    ldr r0, .L08072C08 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L08072C08 @ =gDispIo
    ldr r2, [r7, #8]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, .L08072C08 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072C08 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrh r0, [r1]
    cmp r0, #0x45
    bls .L08072BFE
    ldr r0, [r7]
    bl Proc_Break
.L08072BFE:
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072C08: .4byte gDispIo
    func_end func_08072B10

    thumb_func_start func_08072C0C
func_08072C0C: @ 0x08072C0C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl func_08076A00
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08072C0C

    thumb_func_start func_08072C20
func_08072C20: @ 0x08072C20
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08072C88 @ =0x08C9DBAC
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08072C8C @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L08072C8C @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072C88: .4byte 0x08C9DBAC
.L08072C8C: .4byte gBmSt
    func_end func_08072C20

    thumb_func_start func_08072C90
func_08072C90: @ 0x08072C90
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x87
    bl func_08014D80
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08073D80
    ldr r0, .L08072CFC @ =0x083F87B4
    ldr r1, .L08072D00 @ =0x06013800
    bl Decompress
    ldr r0, .L08072D04 @ =0x083F8A8C
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08072D08 @ =0x083F8AAC
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldr r3, .L08072D0C @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072CFC: .4byte 0x083F87B4
.L08072D00: .4byte 0x06013800
.L08072D04: .4byte 0x083F8A8C
.L08072D08: .4byte 0x083F8AAC
.L08072D0C: .4byte 0x000041C0
    func_end func_08072C90

    thumb_func_start func_08072D10
func_08072D10: @ 0x08072D10
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08072D74 @ =0x08C9DBD4
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08072D78 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L08072D78 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072D74: .4byte 0x08C9DBD4
.L08072D78: .4byte gBmSt
    func_end func_08072D10

    thumb_func_start func_08072D7C
func_08072D7C: @ 0x08072D7C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x86
    bl func_08014D80
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08072D7C

    thumb_func_start func_08072D98
func_08072D98: @ 0x08072D98
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08073D80
    ldr r0, .L08072E4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072E4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072E4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072E4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r4, .L08072E50 @ =0x083F7474
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L08072E54 @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r1, .L08072E58 @ =0x08272DBC
    adds r0, r1, #0
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072E4C: .4byte gDispIo
.L08072E50: .4byte 0x083F7474
.L08072E54: .4byte 0x06002800
.L08072E58: .4byte 0x08272DBC
    func_end func_08072D98

    thumb_func_start func_08072E5C
func_08072E5C: @ 0x08072E5C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x18
    add r7, sp, #0x10
    str r0, [r7]
    ldr r0, .L08072EF0 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    cmp r1, #0
    bge .L08072E78
    adds r1, #7
.L08072E78:
    asrs r2, r1, #3
    subs r1, r2, #2
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    cmp r2, #0
    bge .L08072E88
    adds r2, #7
.L08072E88:
    asrs r3, r2, #3
    adds r2, r3, #0
    subs r2, #9
    ldr r3, .L08072EF4 @ =0x00004140
    movs r4, #4
    str r4, [sp]
    movs r4, #0xb
    str r4, [sp, #4]
    ldr r4, .L08072EF8 @ =0x083F8148
    str r4, [sp, #8]
    ldr r4, .L08072EFC @ =0x083FC4EC
    str r4, [r7, #4]
    ldr r5, [r7]
    adds r6, r5, #0
    adds r5, #0x48
    ldrh r6, [r5]
    adds r4, r6, #1
    mov r8, r4
    mov sb, r8
    mov r4, sb
    strh r4, [r5]
    lsls r6, r6, #0x10
    asrs r5, r6, #0x10
    ldr r6, [r7, #4]
    adds r4, r6, r5
    ldrb r5, [r4]
    str r5, [sp, #0xc]
    bl func_080149A8
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L08072EFC @ =0x083FC4EC
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xff
    bne .L08072EE2
    ldr r0, [r7]
    bl Proc_Break
.L08072EE2:
    add sp, #0x18
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072EF0: .4byte gBg2Tm
.L08072EF4: .4byte 0x00004140
.L08072EF8: .4byte 0x083F8148
.L08072EFC: .4byte 0x083FC4EC
    func_end func_08072E5C

    thumb_func_start func_08072F00
func_08072F00: @ 0x08072F00
    push {r4, r5, r7, lr}
    sub sp, #0x18
    mov r7, sp
    str r0, [r7]
    adds r0, r7, #4
    adds r1, r7, #4
    ldr r2, .L08072FB8 @ =0x083FC508
    adds r0, r1, #0
    adds r1, r2, #0
    movs r2, #0x13
    bl memcpy
    ldr r0, .L08072FBC @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072FBC @ =gDispIo
    adds r1, r7, #4
    ldr r2, [r7]
    adds r3, r2, #0
    adds r2, #0x4a
    ldrh r3, [r2]
    adds r4, r3, #1
    adds r5, r4, #0
    strh r5, [r2]
    lsls r3, r3, #0x10
    asrs r2, r3, #0x10
    adds r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x44
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L08072FBC @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08072FBC @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    adds r0, r7, #4
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4a
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xff
    bne .L08072FB0
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    bl Proc_Break
.L08072FB0:
    add sp, #0x18
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08072FB8: .4byte 0x083FC508
.L08072FBC: .4byte gDispIo
    func_end func_08072F00

    thumb_func_start func_08072FC0
func_08072FC0: @ 0x08072FC0
    push {r7, lr}
    sub sp, #8
    add r7, sp, #4
    str r0, [r7]
    ldr r0, .L0807305C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    adds r2, r1, #1
    adds r3, r2, #0
    strh r3, [r0]
    lsls r0, r1, #0x10
    asrs r3, r0, #0x10
    movs r0, #0x1e
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    ldr r1, .L0807305C @ =gDispIo
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r0
    adds r0, r2, #0
    strb r0, [r1]
    ldr r0, .L0807305C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0807305C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4a
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0x1e
    ble .L08073052
    ldr r0, [r7]
    bl Proc_Break
.L08073052:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807305C: .4byte gDispIo
    func_end func_08072FC0

    thumb_func_start func_08073060
func_08073060: @ 0x08073060
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L080730C0 @ =0x08C9DC14
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L080730C4 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L080730C4 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080730C0: .4byte 0x08C9DC14
.L080730C4: .4byte gBmSt
    func_end func_08073060

    thumb_func_start func_080730C8
func_080730C8: @ 0x080730C8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x82
    bl func_08014D80
    ldr r1, .L080730F0 @ =0x08270258
    adds r0, r1, #0
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080730F0: .4byte 0x08270258
    func_end func_080730C8

    thumb_func_start func_080730F4
func_080730F4: @ 0x080730F4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x18
    add r7, sp, #0x10
    str r0, [r7]
    ldr r0, .L08073188 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    cmp r1, #0
    bge .L08073110
    adds r1, #7
.L08073110:
    asrs r2, r1, #3
    subs r1, r2, #2
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    cmp r2, #0
    bge .L08073120
    adds r2, #7
.L08073120:
    asrs r3, r2, #3
    adds r2, r3, #0
    subs r2, #9
    ldr r3, .L0807318C @ =0x00004140
    movs r4, #4
    str r4, [sp]
    movs r4, #0xb
    str r4, [sp, #4]
    ldr r4, .L08073190 @ =0x083F7208
    str r4, [sp, #8]
    ldr r4, .L08073194 @ =0x083FC534
    str r4, [r7, #4]
    ldr r5, [r7]
    adds r6, r5, #0
    adds r5, #0x48
    ldrh r6, [r5]
    adds r4, r6, #1
    mov r8, r4
    mov sb, r8
    mov r4, sb
    strh r4, [r5]
    lsls r6, r6, #0x10
    asrs r5, r6, #0x10
    ldr r6, [r7, #4]
    adds r4, r6, r5
    ldrb r5, [r4]
    str r5, [sp, #0xc]
    bl func_080149A8
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L08073194 @ =0x083FC534
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xff
    bne .L0807317A
    ldr r0, [r7]
    bl Proc_Break
.L0807317A:
    add sp, #0x18
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073188: .4byte gBg2Tm
.L0807318C: .4byte 0x00004140
.L08073190: .4byte 0x083F7208
.L08073194: .4byte 0x083FC534
    func_end func_080730F4

    thumb_func_start func_08073198
func_08073198: @ 0x08073198
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L080731F8 @ =0x08C9DC54
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L080731FC @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L080731FC @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080731F8: .4byte 0x08C9DC54
.L080731FC: .4byte gBmSt
    func_end func_08073198

    thumb_func_start func_08073200
func_08073200: @ 0x08073200
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x85
    bl func_08014D80
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08073D80
    ldr r0, .L08073258 @ =0x08275FB0
    ldr r1, .L0807325C @ =0x06013800
    bl Decompress
    ldr r0, .L08073260 @ =0x08276198
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08073264 @ =0x083F83B4
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    subs r2, #0x10
    ldr r3, .L08073268 @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073258: .4byte 0x08275FB0
.L0807325C: .4byte 0x06013800
.L08073260: .4byte 0x08276198
.L08073264: .4byte 0x083F83B4
.L08073268: .4byte 0x000041C0
    func_end func_08073200

    thumb_func_start func_0807326C
func_0807326C: @ 0x0807326C
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x85
    bl func_08014D80
    ldr r0, .L080732A4 @ =0x083F83B4
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    subs r2, #8
    ldr r3, .L080732A8 @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080732A4: .4byte 0x083F83B4
.L080732A8: .4byte 0x000041C0
    func_end func_0807326C

    thumb_func_start func_080732AC
func_080732AC: @ 0x080732AC
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x85
    bl func_08014D80
    ldr r0, .L080732E0 @ =0x083F83B4
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldr r3, .L080732E4 @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080732E0: .4byte 0x083F83B4
.L080732E4: .4byte 0x000041C0
    func_end func_080732AC

    thumb_func_start func_080732E8
func_080732E8: @ 0x080732E8
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0807334C @ =0x08C9DC94
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08073350 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L08073350 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #0x12
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807334C: .4byte 0x08C9DC94
.L08073350: .4byte gBmSt
    func_end func_080732E8

    thumb_func_start func_08073354
func_08073354: @ 0x08073354
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0xfd
    bl func_08014D80
    bl InitScanlineEffect
    bl func_0807689C
    ldr r1, .L08073420 @ =func_08076A78
    adds r0, r1, #0
    bl SetOnHBlankA
    bl func_08073D80
    ldr r0, .L08073424 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073424 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073424 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073424 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073428 @ =gBg2Tm
    ldr r1, .L0807342C @ =gBuf
    ldr r2, .L08073430 @ =0x00004140
    bl TmApplyTsa_thm
    movs r0, #4
    bl EnableBgSync
    movs r0, #2
    movs r1, #0
    movs r2, #1
    ldr r3, [r7]
    bl func_08073EF4
    ldr r1, .L08073434 @ =0x08C9E98C
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_Start
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073420: .4byte func_08076A78
.L08073424: .4byte gDispIo
.L08073428: .4byte gBg2Tm
.L0807342C: .4byte gBuf
.L08073430: .4byte 0x00004140
.L08073434: .4byte 0x08C9E98C
    func_end func_08073354

    thumb_func_start func_08073438
func_08073438: @ 0x08073438
    push {r4, r5, r7, lr}
    sub sp, #8
    add r7, sp, #4
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0xb
    ble .L0807347A
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    ldrh r3, [r2]
    subs r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x48
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    bl Proc_Break
.L0807347A:
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r4, r3, #0
    adds r4, #0x48
    ldr r3, [r7]
    ldr r4, [r7]
    adds r2, r4, #0
    adds r4, #0x48
    ldrh r5, [r4]
    adds r2, r5, #1
    adds r4, r3, #0
    adds r3, #0x48
    ldrh r4, [r3]
    movs r5, #0
    ands r4, r5
    adds r5, r4, #0
    adds r4, r2, #0
    orrs r5, r4
    adds r4, r5, #0
    strh r4, [r3]
    lsls r3, r2, #0x10
    asrs r2, r3, #0x10
    ldr r3, .L080734C0 @ =0x08C9DCDC
    str r3, [sp]
    movs r3, #0xc
    bl func_08076D8C
    add sp, #8
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080734C0: .4byte 0x08C9DCDC
    func_end func_08073438

    thumb_func_start func_080734C4
func_080734C4: @ 0x080734C4
    push {r4, r5, r7, lr}
    sub sp, #8
    add r7, sp, #4
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0
    bgt .L08073506
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x48
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    bl Proc_Break
.L08073506:
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r4, r3, #0
    adds r4, #0x48
    ldr r3, [r7]
    ldr r4, [r7]
    adds r2, r4, #0
    adds r4, #0x48
    ldrh r5, [r4]
    subs r2, r5, #1
    adds r4, r3, #0
    adds r3, #0x48
    ldrh r4, [r3]
    movs r5, #0
    ands r4, r5
    adds r5, r4, #0
    adds r4, r2, #0
    orrs r5, r4
    adds r4, r5, #0
    strh r4, [r3]
    lsls r3, r2, #0x10
    asrs r2, r3, #0x10
    ldr r3, .L0807354C @ =0x08C9DCDC
    str r3, [sp]
    movs r3, #0xc
    bl func_08076D8C
    add sp, #8
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807354C: .4byte 0x08C9DCDC
    func_end func_080734C4

    thumb_func_start func_08073550
func_08073550: @ 0x08073550
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L080735B0 @ =0x08C9DCE4
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L080735B4 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L080735B4 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080735B0: .4byte 0x08C9DCE4
.L080735B4: .4byte gBmSt
    func_end func_08073550

    thumb_func_start func_080735B8
func_080735B8: @ 0x080735B8
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x83
    bl func_08014D80
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08073D80
    ldr r4, .L080736C4 @ =0x083F8FBC
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L080736C8 @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L080736CC @ =0x083F8B7C
    ldr r1, .L080736D0 @ =0x06013800
    bl Decompress
    ldr r1, .L080736D4 @ =0x083F90CC
    adds r0, r1, #0
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L080736D4 @ =0x083F90CC
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L080736D8 @ =0x083F90EC
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    movs r4, #0x80
    lsls r4, r4, #3
    adds r2, r3, #0
    orrs r2, r4
    ldr r3, .L080736DC @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L080736E0 @ =0x030028AC
    ldr r1, .L080736E0 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L080736E4 @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L080736E0 @ =0x030028AC
    ldr r1, .L080736E0 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L080736E8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080736E8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080736E8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080736E8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080736E8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080736C4: .4byte 0x083F8FBC
.L080736C8: .4byte 0x06002800
.L080736CC: .4byte 0x083F8B7C
.L080736D0: .4byte 0x06013800
.L080736D4: .4byte 0x083F90CC
.L080736D8: .4byte 0x083F90EC
.L080736DC: .4byte 0x000041C0
.L080736E0: .4byte 0x030028AC
.L080736E4: .4byte 0x0000FFE0
.L080736E8: .4byte gDispIo
    func_end func_080735B8

    thumb_func_start func_080736EC
func_080736EC: @ 0x080736EC
    push {r4, r7, lr}
    sub sp, #0xc
    add r7, sp, #8
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x84
    bl func_08014D80
    ldr r0, .L080737C4 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    cmp r1, #0
    bge .L0807370C
    adds r1, #7
.L0807370C:
    asrs r2, r1, #3
    subs r1, r2, #2
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    cmp r2, #0
    bge .L0807371C
    adds r2, #7
.L0807371C:
    asrs r3, r2, #3
    subs r2, r3, #2
    ldr r3, .L080737C8 @ =0x00004140
    movs r4, #4
    str r4, [sp]
    movs r4, #4
    str r4, [sp, #4]
    bl func_080147BC
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L080737CC @ =0x030028AC
    ldr r1, .L080737CC @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L080737D0 @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L080737CC @ =0x030028AC
    ldr r1, .L080737CC @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #4
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L080737D4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080737D4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080737D4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080737D4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080737D4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080737C4: .4byte gBg2Tm
.L080737C8: .4byte 0x00004140
.L080737CC: .4byte 0x030028AC
.L080737D0: .4byte 0x0000FFE0
.L080737D4: .4byte gDispIo
    func_end func_080736EC

    thumb_func_start func_080737D8
func_080737D8: @ 0x080737D8
    push {r7, lr}
    sub sp, #8
    add r7, sp, #4
    str r0, [r7]
    ldr r0, .L08073874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    adds r2, r1, #1
    adds r3, r2, #0
    strh r3, [r0]
    lsls r0, r1, #0x10
    asrs r3, r0, #0x10
    movs r0, #0x1e
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    ldr r1, .L08073874 @ =gDispIo
    adds r2, r1, #0
    adds r1, #0x44
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r0
    adds r0, r2, #0
    strb r0, [r1]
    ldr r0, .L08073874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073874 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0x1d
    ble .L0807386A
    ldr r0, [r7]
    bl Proc_Break
.L0807386A:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073874: .4byte gDispIo
    func_end func_080737D8

    thumb_func_start func_08073878
func_08073878: @ 0x08073878
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L080738D8 @ =0x08C9DD24
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L080738DC @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x30]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r2, .L080738DC @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    asrs r2, r3, #4
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    subs r1, r1, r2
    lsls r2, r1, #1
    adds r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    str r1, [r0, #0x34]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080738D8: .4byte 0x08C9DD24
.L080738DC: .4byte gBmSt
    func_end func_08073878

    thumb_func_start func_080738E0
func_080738E0: @ 0x080738E0
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x88
    bl func_08014D80
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08073D80
    ldr r0, .L080739A0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080739A0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080739A0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080739A0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r4, .L080739A4 @ =0x083F9224
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L080739A8 @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r1, .L080739AC @ =0x0827747C
    adds r0, r1, #0
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080739A0: .4byte gDispIo
.L080739A4: .4byte 0x083F9224
.L080739A8: .4byte 0x06002800
.L080739AC: .4byte 0x0827747C
    func_end func_080738E0

    thumb_func_start func_080739B0
func_080739B0: @ 0x080739B0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x18
    add r7, sp, #0x10
    str r0, [r7]
    ldr r0, .L08073A44 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    cmp r1, #0
    bge .L080739CC
    adds r1, #7
.L080739CC:
    asrs r2, r1, #3
    subs r1, r2, #2
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    cmp r2, #0
    bge .L080739DC
    adds r2, #7
.L080739DC:
    asrs r3, r2, #3
    adds r2, r3, #0
    subs r2, #8
    ldr r3, .L08073A48 @ =0x00004140
    movs r4, #4
    str r4, [sp]
    movs r4, #0xa
    str r4, [sp, #4]
    ldr r4, .L08073A4C @ =0x083F9DE0
    str r4, [sp, #8]
    ldr r4, .L08073A50 @ =0x083FC5D4
    str r4, [r7, #4]
    ldr r5, [r7]
    adds r6, r5, #0
    adds r5, #0x48
    ldrh r6, [r5]
    adds r4, r6, #1
    mov r8, r4
    mov sb, r8
    mov r4, sb
    strh r4, [r5]
    lsls r6, r6, #0x10
    asrs r5, r6, #0x10
    ldr r6, [r7, #4]
    adds r4, r6, r5
    ldrb r5, [r4]
    str r5, [sp, #0xc]
    bl func_080149A8
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L08073A50 @ =0x083FC5D4
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xff
    bne .L08073A36
    ldr r0, [r7]
    bl Proc_Break
.L08073A36:
    add sp, #0x18
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073A44: .4byte gBg2Tm
.L08073A48: .4byte 0x00004140
.L08073A4C: .4byte 0x083F9DE0
.L08073A50: .4byte 0x083FC5D4
    func_end func_080739B0

    thumb_func_start func_08073A54
func_08073A54: @ 0x08073A54
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, .L08073AB4 @ =0x08C9DD4C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    ldr r1, .L08073AB8 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    asrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    asrs r1, r2, #0x10
    ldr r2, [r7]
    subs r1, r2, r1
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    str r1, [r0, #0x30]
    ldr r0, [r7, #8]
    ldr r1, .L08073AB8 @ =gBmSt
    movs r3, #0xe
    ldrsh r2, [r1, r3]
    asrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    asrs r1, r2, #0x10
    ldr r2, [r7, #4]
    subs r1, r2, r1
    lsls r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r1, r2, #0
    adds r1, #8
    str r1, [r0, #0x34]
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073AB4: .4byte 0x08C9DD4C
.L08073AB8: .4byte gBmSt
    func_end func_08073A54

    thumb_func_start func_08073ABC
func_08073ABC: @ 0x08073ABC
    push {r4, r7, lr}
    mov r7, sp
    ldr r0, .L08073AEC @ =gActionSt
    ldrb r1, [r0, #0xc]
    adds r0, r1, #0
    bl GetUnit
    adds r4, r0, #0
    ldr r0, [r4, #0xc]
    movs r1, #1
    orrs r0, r1
    str r0, [r4, #0xc]
    ldr r1, .L08073AEC @ =gActionSt
    movs r0, #0x13
    ldrsb r0, [r1, r0]
    ldr r1, .L08073AEC @ =gActionSt
    movs r2, #0x14
    ldrsb r2, [r1, r2]
    adds r1, r2, #0
    bl func_08078F40
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073AEC: .4byte gActionSt
    func_end func_08073ABC

    thumb_func_start func_08073AF0
func_08073AF0: @ 0x08073AF0
    push {r4, r7, lr}
    mov r7, sp
    ldr r0, .L08073B10 @ =gActionSt
    ldrb r1, [r0, #0xc]
    adds r0, r1, #0
    bl GetUnit
    adds r4, r0, #0
    ldr r0, [r4, #0xc]
    movs r1, #1
    bics r0, r1
    str r0, [r4, #0xc]
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073B10: .4byte gActionSt
    func_end func_08073AF0

    thumb_func_start func_08073B14
func_08073B14: @ 0x08073B14
    push {r4, r7, lr}
    sub sp, #0x14
    add r7, sp, #0x10
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    movs r0, #0x8d
    bl func_08014D80
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r4, .L08073C28 @ =0x083F70C4
    movs r0, #2
    bl GetBgChrOffset
    ldr r2, .L08073C2C @ =0x06002800
    adds r1, r0, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08073C30 @ =gBg2Tm
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    cmp r1, #0
    bge .L08073B50
    adds r1, #7
.L08073B50:
    asrs r2, r1, #3
    subs r1, r2, #2
    ldr r2, [r7]
    ldr r3, [r2, #0x34]
    adds r2, r3, #0
    cmp r2, #0
    bge .L08073B60
    adds r2, #7
.L08073B60:
    asrs r3, r2, #3
    subs r2, r3, #2
    ldr r3, .L08073C34 @ =0x00004140
    movs r4, #4
    str r4, [sp]
    movs r4, #4
    str r4, [sp, #4]
    ldr r4, .L08073C38 @ =0x083F71E4
    str r4, [sp, #8]
    movs r4, #0
    str r4, [sp, #0xc]
    bl func_080149A8
    movs r0, #4
    bl EnableBgSync
    ldr r0, .L08073C3C @ =0x083F7050
    ldr r1, .L08073C40 @ =0x06013800
    bl Decompress
    ldr r0, .L08073C44 @ =0x083F70A4
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08073C48 @ =0x083F71C4
    ldr r1, [r7]
    str r1, [sp]
    movs r1, #0x80
    movs r2, #0x20
    movs r3, #4
    bl func_08014728
    bl InitScanlineEffect
    bl func_0807689C
    bl func_08073D80
    ldr r0, .L08073C4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073C4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073C4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073C4C @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #0x14
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073C28: .4byte 0x083F70C4
.L08073C2C: .4byte 0x06002800
.L08073C30: .4byte gBg2Tm
.L08073C34: .4byte 0x00004140
.L08073C38: .4byte 0x083F71E4
.L08073C3C: .4byte 0x083F7050
.L08073C40: .4byte 0x06013800
.L08073C44: .4byte 0x083F70A4
.L08073C48: .4byte 0x083F71C4
.L08073C4C: .4byte gDispIo
    func_end func_08073B14

    thumb_func_start func_08073C50
func_08073C50: @ 0x08073C50
    push {r4, r7, lr}
    sub sp, #0x10
    add r7, sp, #8
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    movs r0, #0
    ldrsh r3, [r1, r0]
    movs r0, #0x1e
    str r0, [sp]
    movs r0, #5
    movs r1, #1
    movs r2, #0x10
    bl Interpolate
    str r0, [r7, #4]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x48
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r2, [r7, #4]
    bl func_080769CC
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0x1d
    ble .L08073CFA
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    bl Proc_Break
    ldr r0, .L08073D04 @ =0x083ECCFC
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldr r3, .L08073D08 @ =0x000041C0
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r0, .L08073D04 @ =0x083ECCFC
    ldr r2, [r7]
    ldr r1, [r2, #0x30]
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldr r3, .L08073D08 @ =0x000041C0
    movs r4, #1
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
.L08073CFA:
    add sp, #0x10
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073D04: .4byte 0x083ECCFC
.L08073D08: .4byte 0x000041C0
    func_end func_08073C50

    thumb_func_start func_08073D0C
func_08073D0C: @ 0x08073D0C
    push {r7, lr}
    sub sp, #0xc
    add r7, sp, #4
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    movs r0, #0
    ldrsh r3, [r1, r0]
    movs r0, #0x1e
    str r0, [sp]
    movs r0, #5
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    str r0, [r7, #4]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    ldrh r3, [r2]
    adds r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x48
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r2, [r7, #4]
    bl func_080769CC
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0x1d
    ble .L08073D76
    ldr r0, [r7]
    bl Proc_Break
.L08073D76:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08073D0C

    thumb_func_start func_08073D80
func_08073D80: @ 0x08073D80
    push {r7, lr}
    mov r7, sp
    ldr r0, .L08073EE4 @ =gDispIo
    ldrb r1, [r0, #0xc]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #0xc]
    ldr r0, .L08073EE4 @ =gDispIo
    ldrb r1, [r0, #0x10]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #0x10]
    ldr r0, .L08073EE4 @ =gDispIo
    ldrb r1, [r0, #0x14]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #0x14]
    ldr r0, .L08073EE4 @ =gDispIo
    ldrb r1, [r0, #0x18]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x18]
    ldr r0, .L08073EE8 @ =0x030028AC
    ldr r1, .L08073EE8 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08073EEC @ =0x0000FFE0
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08073EE8 @ =0x030028AC
    ldr r1, .L08073EE8 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #4
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE8 @ =0x030028AC
    ldr r1, .L08073EE8 @ =0x030028AC
    ldrh r2, [r1]
    ldr r3, .L08073EF0 @ =0x0000E0FF
    adds r1, r2, #0
    ands r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08073EE8 @ =0x030028AC
    ldr r1, .L08073EE8 @ =0x030028AC
    ldrh r2, [r1]
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #1
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #2
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #1
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #2
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0xfb
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08073EE4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073EE4: .4byte gDispIo
.L08073EE8: .4byte 0x030028AC
.L08073EEC: .4byte 0x0000FFE0
.L08073EF0: .4byte 0x0000E0FF
    func_end func_08073D80

    thumb_func_start func_08073EF4
func_08073EF4: @ 0x08073EF4
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L08073F6C @ =0x08C9DDA4
    ldr r1, [r7, #0xc]
    bl Proc_Start
    str r0, [r7, #0x10]
    ldr r0, [r7, #0x10]
    ldr r1, [r7]
    str r1, [r0, #0x58]
    ldr r0, [r7, #0x10]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, [r7, #0x10]
    ldr r2, [r7, #4]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x66
    ldrh r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strh r2, [r1]
    ldr r0, [r7, #0x10]
    adds r1, r0, #0
    adds r0, #0x68
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, [r7, #0x10]
    ldr r2, [r7, #8]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x6a
    ldrh r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strh r2, [r1]
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073F6C: .4byte 0x08C9DDA4
    func_end func_08073EF4

    thumb_func_start func_08073F70
func_08073F70: @ 0x08073F70
    push {r7, lr}
    mov r7, sp
    ldr r1, .L08073F84 @ =0x08C9DDA4
    adds r0, r1, #0
    bl Proc_EndEach
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08073F84: .4byte 0x08C9DDA4
    func_end func_08073F70

    thumb_func_start func_08073F88
func_08073F88: @ 0x08073F88
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x58]
    adds r0, r1, #0
    lsls r1, r0, #0x10
    lsrs r0, r1, #0x10
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    ldrh r1, [r2]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x68
    ldrh r2, [r3]
    bl SetBgOffset
    ldr r0, [r7]
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x64
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x66
    ldrh r1, [r1]
    ldrh r2, [r3]
    adds r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x64
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x68
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x6a
    ldrh r1, [r1]
    ldrh r2, [r3]
    adds r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x68
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08073F88

    thumb_func_start func_08074008
func_08074008: @ 0x08074008
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, .L080740A4 @ =gBg1Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    ldr r5, .L080740A8 @ =0x081DAFEC
    movs r0, #1
    bl GetBgChrOffset
    ldr r2, .L080740AC @ =0x06004000
    adds r1, r0, r2
    adds r0, r5, #0
    bl Decompress
    ldr r0, .L080740B0 @ =0x081DB238
    ldr r1, .L080740B4 @ =gBuf
    bl Decompress
    ldr r0, .L080740B4 @ =gBuf
    ldr r1, .L080740A4 @ =gBg1Tm
    movs r2, #0xe0
    lsls r2, r2, #2
    movs r3, #0xa4
    lsls r3, r3, #7
    bl func_08014C50
    ldr r1, .L080740B8 @ =0x081DB334
    adds r0, r1, #0
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r1, [r7, #8]
    lsls r0, r1, #5
    adds r1, r0, #1
    ldr r2, [r7, #4]
    adds r0, r1, r2
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L080740BC @ =gBg0Tm
    adds r5, r0, r1
    ldr r0, .L080740C0 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, [r1, #4]
    ldrh r1, [r0]
    adds r0, r1, #0
    bl DecodeMsg
    adds r2, r0, #0
    adds r0, r5, #0
    movs r1, #0
    bl func_08014698
    movs r0, #0
    str r0, [r7, #0xc]
.L0807408E:
    ldr r0, .L080740C4 @ =0x08C9DDB4
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #1
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0xff
    bne .L080740C8
    b .L0807415C
    .align 2, 0
.L080740A4: .4byte gBg1Tm
.L080740A8: .4byte 0x081DAFEC
.L080740AC: .4byte 0x06004000
.L080740B0: .4byte 0x081DB238
.L080740B4: .4byte gBuf
.L080740B8: .4byte 0x081DB334
.L080740BC: .4byte gBg0Tm
.L080740C0: .4byte 0x0203E0FC
.L080740C4: .4byte 0x08C9DDB4
.L080740C8:
    ldr r0, .L0807412C @ =0x08C9DDB4
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #1
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #1]
    ldr r0, [r7, #8]
    adds r1, r1, r0
    lsls r0, r1, #5
    ldr r1, .L0807412C @ =0x08C9DDB4
    ldr r2, [r7, #0xc]
    adds r5, r2, #0
    lsls r3, r5, #1
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1]
    ldr r3, [r7, #4]
    adds r1, r2, r3
    adds r0, r0, r1
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L08074130 @ =gBg0Tm
    adds r5, r0, r1
    ldr r6, .L0807412C @ =0x08C9DDB4
    ldr r0, [r7, #0xc]
    adds r2, r0, #0
    lsls r1, r2, #1
    adds r1, r1, r0
    lsls r0, r1, #2
    adds r4, r0, #0
    ldr r0, .L08074134 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl UnitHasMagicRank
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #1
    bne .L08074138
    adds r0, r4, #4
    b .L0807413A
    .align 2, 0
.L0807412C: .4byte 0x08C9DDB4
.L08074130: .4byte gBg0Tm
.L08074134: .4byte 0x0203E0FC
.L08074138:
    adds r0, r4, #0
.L0807413A:
    adds r1, r6, #4
    adds r0, r1, r0
    ldr r1, [r0]
    ldr r2, [r1]
    adds r0, r2, #0
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r5, #0
    movs r1, #3
    movs r2, #3
    bl func_08014634
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L0807408E
.L0807415C:
    movs r0, #3
    bl EnableBgSync
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08074008

    thumb_func_start func_0807416C
func_0807416C: @ 0x0807416C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, [r7, #0x28]
    adds r1, r7, #0
    adds r1, #0x10
    strb r0, [r1]
    ldr r0, .L080741EC @ =0x08C9DDB4
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #1
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #1]
    ldr r2, [r7, #8]
    adds r0, r1, r2
    lsls r1, r0, #5
    adds r0, r1, #4
    ldr r1, .L080741EC @ =0x08C9DDB4
    ldr r2, [r7, #0xc]
    adds r5, r2, #0
    lsls r3, r5, #1
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r1]
    ldr r3, [r7, #4]
    adds r1, r2, r3
    adds r0, r0, r1
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L080741F0 @ =gBg0Tm
    adds r5, r0, r1
    ldr r1, [r7, #0xc]
    ldr r0, [r7]
    bl func_0807436C
    adds r4, r0, #0
    adds r6, r4, #0
    adds r0, r7, #0
    adds r0, #0x10
    movs r1, #0
    ldrsb r1, [r0, r1]
    cmp r1, #0
    beq .L080741DA
    ldr r1, [r7, #0xc]
    ldr r0, [r7]
    bl func_080741F4
    adds r6, r6, r0
.L080741DA:
    adds r0, r5, #0
    movs r1, #2
    adds r2, r6, #0
    bl PutNumberOrBlank
    add sp, #0x14
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080741EC: .4byte 0x08C9DDB4
.L080741F0: .4byte gBg0Tm
    func_end func_0807416C

    thumb_func_start func_080741F4
func_080741F4: @ 0x080741F4
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, [r7, #4]
    cmp r0, #8
    bls .L08074206
    b .L08074360
.L08074206:
    ldr r0, [r7, #4]
    adds r1, r0, #0
    lsls r0, r1, #2
    ldr r1, .L08074214 @ =.L08074218
    adds r0, r0, r1
    ldr r1, [r0]
    mov pc, r1
    .align 2, 0
.L08074214: .4byte .L08074218
.L08074218: @ jump table
    .4byte .L0807423C @ case 0
    .4byte .L08074240 @ case 1
    .4byte .L08074264 @ case 2
    .4byte .L08074288 @ case 3
    .4byte .L080742AC @ case 4
    .4byte .L080742D0 @ case 5
    .4byte .L080742F4 @ case 6
    .4byte .L08074318 @ case 7
    .4byte .L0807433C @ case 8
.L0807423C:
    movs r0, #1
    b .L08074364
.L08074240:
    ldr r0, .L08074260 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x73
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L08074260: .4byte 0x0203E0FC
.L08074264:
    ldr r0, .L08074284 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x74
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L08074284: .4byte 0x0203E0FC
.L08074288:
    ldr r0, .L080742A8 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x75
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L080742A8: .4byte 0x0203E0FC
.L080742AC:
    ldr r0, .L080742CC @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x76
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L080742CC: .4byte 0x0203E0FC
.L080742D0:
    ldr r0, .L080742F0 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x79
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L080742F0: .4byte 0x0203E0FC
.L080742F4:
    ldr r0, .L08074314 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x77
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L08074314: .4byte 0x0203E0FC
.L08074318:
    ldr r0, .L08074338 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x78
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L08074338: .4byte 0x0203E0FC
.L0807433C:
    ldr r0, .L0807435C @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x7a
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074364
    .align 2, 0
.L0807435C: .4byte 0x0203E0FC
.L08074360:
    movs r0, #0
    b .L08074364
.L08074364:
    add sp, #8
    pop {r7}
    pop {r1}
    bx r1
    func_end func_080741F4

    thumb_func_start func_0807436C
func_0807436C: @ 0x0807436C
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L080743A8 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r2, #0xb
    ldrsb r2, [r1, r2]
    adds r0, r2, #0
    bl GetUnit
    str r0, [r7, #8]
    ldr r0, [r7, #4]
    cmp r0, #8
    bhi .L08074454
    ldr r0, [r7, #4]
    adds r1, r0, #0
    lsls r0, r1, #2
    ldr r1, .L080743AC @ =.L080743B0
    adds r0, r0, r1
    ldr r1, [r0]
    mov pc, r1
    .align 2, 0
.L080743A8: .4byte 0x0203E0FC
.L080743AC: .4byte .L080743B0
.L080743B0: @ jump table
    .4byte .L080743D4 @ case 0
    .4byte .L080743F8 @ case 1
    .4byte .L08074402 @ case 2
    .4byte .L0807440C @ case 3
    .4byte .L08074416 @ case 4
    .4byte .L08074420 @ case 5
    .4byte .L0807442A @ case 6
    .4byte .L08074434 @ case 7
    .4byte .L0807443E @ case 8
.L080743D4:
    ldr r0, .L080743F4 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r2, #0x70
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r0, r1, #0
    b .L08074458
    .align 2, 0
.L080743F4: .4byte 0x0203E0FC
.L080743F8:
    ldr r0, [r7, #8]
    movs r1, #0x12
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    b .L08074458
.L08074402:
    ldr r0, [r7, #8]
    movs r1, #0x14
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    b .L08074458
.L0807440C:
    ldr r0, [r7, #8]
    movs r1, #0x15
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    b .L08074458
.L08074416:
    ldr r0, [r7, #8]
    movs r1, #0x16
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    b .L08074458
.L08074420:
    ldr r0, [r7, #8]
    movs r1, #0x19
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    b .L08074458
.L0807442A:
    ldr r0, [r7, #8]
    movs r1, #0x17
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    b .L08074458
.L08074434:
    ldr r0, [r7, #8]
    movs r1, #0x18
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    b .L08074458
.L0807443E:
    ldr r0, [r7, #8]
    ldr r2, [r0, #4]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r0, [r7, #8]
    ldr r2, [r0]
    movs r0, #0x13
    ldrsb r0, [r2, r0]
    adds r1, r1, r0
    adds r0, r1, #0
    b .L08074458
.L08074454:
    movs r0, #0
    b .L08074458
.L08074458:
    add sp, #0xc
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0807436C

    thumb_func_start func_08074460
func_08074460: @ 0x08074460
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl EndEachSpriteAnimProc
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08074460

    thumb_func_start func_08074474
func_08074474: @ 0x08074474
    push {r7, lr}
    sub sp, #0x18
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L08074528 @ =0x08C9DE2C
    ldr r1, [r7, #0xc]
    bl Proc_Start
    str r0, [r7, #0x10]
    ldr r0, [r7, #0x10]
    ldr r2, [r7]
    adds r1, r2, #0
    ldrh r2, [r0, #0x2a]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x2a]
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #4]
    adds r1, r2, #0
    ldrh r2, [r0, #0x2c]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x2c]
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #8]
    adds r1, r2, #0
    ldrh r2, [r0, #0x2e]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x2e]
    ldr r0, .L0807452C @ =0x083F34B0
    ldr r1, [r7]
    lsls r2, r1, #0x16
    lsrs r1, r2, #0x16
    lsls r2, r1, #5
    ldr r3, .L08074530 @ =0x06010000
    adds r1, r2, r3
    bl Decompress
    ldr r0, .L08074534 @ =0x083F3450
    ldr r2, [r7, #4]
    adds r1, r2, #0
    adds r1, #0x10
    adds r2, r1, #0
    lsls r1, r2, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08074534 @ =0x083F3450
    ldr r2, [r7, #4]
    adds r1, r2, #0
    adds r1, #0x11
    adds r2, r1, #0
    lsls r1, r2, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08074538 @ =0x08C9DE3C
    ldr r1, [r7, #0x10]
    bl Proc_Start
    str r0, [r7, #0x14]
    ldr r1, [r7, #0x14]
    ldr r2, [r7, #4]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x64
    ldrh r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strh r2, [r1]
    add sp, #0x18
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08074528: .4byte 0x08C9DE2C
.L0807452C: .4byte 0x083F34B0
.L08074530: .4byte 0x06010000
.L08074534: .4byte 0x083F3450
.L08074538: .4byte 0x08C9DE3C
    func_end func_08074474

    thumb_func_start func_0807453C
func_0807453C: @ 0x0807453C
    push {r7, lr}
    mov r7, sp
    ldr r1, .L08074550 @ =0x08C9DE2C
    adds r0, r1, #0
    bl Proc_EndEach
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08074550: .4byte 0x08C9DE2C
    func_end func_0807453C

    thumb_func_start func_08074554
func_08074554: @ 0x08074554
    push {r4, r5, r6, r7, lr}
    sub sp, #0x2c
    add r7, sp, #8
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L080745D4 @ =0x083F373C
    str r0, [r7, #0x20]
    ldr r1, .L080745D8 @ =0x08C9DE2C
    adds r0, r1, #0
    bl Proc_Find
    str r0, [r7, #0x1c]
    ldr r0, [r7, #0x1c]
    ldrh r1, [r0, #0x2a]
    str r1, [r7, #0x14]
    ldr r1, [r7, #0x1c]
    ldrh r0, [r1, #0x2a]
    ldr r2, [r7, #8]
    subs r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #1
    adds r0, r0, r1
    str r0, [r7, #0x18]
    ldr r0, [r7, #8]
    cmp r0, #0
    bne .L080745E0
    ldr r0, .L080745DC @ =0x083EBE54
    ldr r2, [r7]
    adds r1, r2, #0
    subs r1, #0x12
    ldr r3, [r7, #4]
    subs r2, r3, #4
    ldr r3, [r7, #0x1c]
    ldrh r4, [r3, #0x2c]
    movs r5, #0xf
    adds r3, r4, #0
    ands r3, r5
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    adds r4, r3, #0
    lsls r3, r4, #0xc
    ldr r4, [r7, #0x14]
    adds r3, r3, r4
    ldr r4, [r7, #0x1c]
    ldrh r5, [r4, #0x2e]
    movs r6, #3
    adds r4, r5, #0
    ands r4, r6
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    adds r5, r4, #0
    lsls r4, r5, #0xa
    adds r3, r3, r4
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    b .L08074734
    .align 2, 0
.L080745D4: .4byte 0x083F373C
.L080745D8: .4byte 0x08C9DE2C
.L080745DC: .4byte 0x083EBE54
.L080745E0:
    ldr r0, [r7, #0xc]
    cmp r0, #0
    ble .L080745EC
    movs r0, #0
    str r0, [r7, #0x10]
    b .L080745F0
.L080745EC:
    movs r0, #1
    str r0, [r7, #0x10]
.L080745F0:
    ldr r0, .L0807473C @ =0x083EBE54
    ldr r2, [r7, #4]
    ldr r1, [r7, #0x1c]
    ldrh r3, [r1, #0x2c]
    ldr r4, [r7, #0x10]
    adds r1, r3, r4
    movs r3, #0xf
    ands r1, r3
    adds r3, r1, #0
    lsls r1, r3, #0xc
    ldr r3, [r7, #0x14]
    adds r1, r1, r3
    ldr r3, [r7, #0x1c]
    ldrh r4, [r3, #0x2e]
    movs r5, #3
    adds r3, r4, #0
    ands r3, r5
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    adds r4, r3, #0
    lsls r5, r4, #0xa
    adds r3, r1, r5
    ldr r1, [r7, #0x10]
    adds r4, r1, #1
    str r4, [sp]
    movs r1, #2
    str r1, [sp, #4]
    ldr r1, [r7]
    bl StartSpriteAnimProc
    ldr r0, .L0807473C @ =0x083EBE54
    ldr r2, [r7]
    subs r1, r2, #3
    ldr r2, [r7, #4]
    ldr r3, [r7, #0x1c]
    ldrh r4, [r3, #0x2c]
    movs r5, #0xf
    adds r3, r4, #0
    ands r3, r5
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    adds r4, r3, #0
    lsls r3, r4, #0xc
    ldr r4, [r7, #0x18]
    adds r3, r3, r4
    ldr r4, [r7, #0x1c]
    ldrh r5, [r4, #0x2e]
    movs r6, #3
    adds r4, r5, #0
    ands r4, r6
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    adds r5, r4, #0
    lsls r4, r5, #0xa
    adds r3, r3, r4
    ldr r4, [r7, #0x10]
    adds r5, r4, #3
    str r5, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r0, [r7, #0xc]
    cmp r0, #0
    ble .L080746BE
    ldr r0, .L0807473C @ =0x083EBE54
    ldr r2, [r7]
    adds r1, r2, #0
    subs r1, #0x12
    ldr r3, [r7, #4]
    subs r2, r3, #4
    ldr r3, [r7, #0x1c]
    ldrh r4, [r3, #0x2c]
    movs r5, #0xf
    adds r3, r4, #0
    ands r3, r5
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    adds r4, r3, #0
    lsls r3, r4, #0xc
    ldr r4, [r7, #0x14]
    adds r3, r3, r4
    ldr r4, [r7, #0x1c]
    ldrh r5, [r4, #0x2e]
    movs r6, #3
    adds r4, r5, #0
    ands r4, r6
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    adds r5, r4, #0
    lsls r4, r5, #0xa
    adds r3, r3, r4
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
.L080746BE:
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bge .L080746E2
    ldr r1, [r7, #0x20]
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r1, r2
    ldr r2, [r7, #0x18]
    adds r1, r2, #0
    adds r1, #0x4c
    lsls r2, r1, #0x16
    lsrs r1, r2, #0x16
    lsls r2, r1, #5
    ldr r3, .L08074740 @ =0x06010000
    adds r1, r2, r3
    movs r2, #0x20
    bl func_08014BEC
.L080746E2:
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bge .L080746EA
    rsbs r0, r0, #0
.L080746EA:
    lsls r1, r0, #0x16
    lsrs r0, r1, #0x16
    lsls r1, r0, #5
    ldr r2, [r7, #0x20]
    adds r0, r1, r2
    ldr r2, [r7, #0x18]
    adds r1, r2, #0
    adds r1, #0x2d
    lsls r2, r1, #0x16
    lsrs r1, r2, #0x16
    lsls r2, r1, #5
    ldr r3, .L08074740 @ =0x06010000
    adds r1, r2, r3
    movs r2, #0x20
    bl func_08014BEC
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bge .L08074712
    rsbs r0, r0, #0
.L08074712:
    adds r0, #0x20
    lsls r1, r0, #0x16
    lsrs r0, r1, #0x16
    lsls r1, r0, #5
    ldr r2, [r7, #0x20]
    adds r0, r1, r2
    ldr r2, [r7, #0x18]
    adds r1, r2, #0
    adds r1, #0x4d
    lsls r2, r1, #0x16
    lsrs r1, r2, #0x16
    lsls r2, r1, #5
    ldr r3, .L08074740 @ =0x06010000
    adds r1, r2, r3
    movs r2, #0x20
    bl func_08014BEC
.L08074734:
    add sp, #0x2c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807473C: .4byte 0x083EBE54
.L08074740: .4byte 0x06010000
    func_end func_08074554

    thumb_func_start func_08074744
func_08074744: @ 0x08074744
    push {r4, r5, r6, r7, lr}
    sub sp, #0x24
    add r7, sp, #8
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, .L0807488C @ =0x083F373C
    str r0, [r7, #0x18]
    ldr r1, .L08074890 @ =0x08C9DE2C
    adds r0, r1, #0
    bl Proc_Find
    str r0, [r7, #0x14]
    ldr r0, [r7, #0x14]
    ldrh r1, [r0, #0x2a]
    str r1, [r7, #0xc]
    ldr r1, [r7, #0x14]
    ldrh r0, [r1, #0x2a]
    ldr r2, [r7, #8]
    subs r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #1
    adds r0, r0, r1
    str r0, [r7, #0x10]
    ldr r0, .L08074894 @ =0x083EBE54
    ldr r2, [r7, #4]
    ldr r1, [r7, #0x14]
    ldrh r3, [r1, #0x2c]
    movs r4, #0xf
    adds r1, r3, #0
    ands r1, r4
    adds r4, r1, #0
    lsls r3, r4, #0x10
    lsrs r1, r3, #0x10
    adds r3, r1, #0
    lsls r1, r3, #0xc
    ldr r3, [r7, #0xc]
    adds r1, r1, r3
    ldr r3, [r7, #0x14]
    ldrh r4, [r3, #0x2e]
    movs r5, #3
    adds r3, r4, #0
    ands r3, r5
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    adds r4, r3, #0
    lsls r5, r4, #0xa
    adds r3, r1, r5
    movs r1, #5
    str r1, [sp]
    movs r1, #2
    str r1, [sp, #4]
    ldr r1, [r7]
    bl StartSpriteAnimProc
    ldr r0, .L08074894 @ =0x083EBE54
    ldr r2, [r7]
    subs r1, r2, #3
    ldr r2, [r7, #4]
    ldr r3, [r7, #0x14]
    ldrh r4, [r3, #0x2c]
    movs r5, #0xf
    adds r3, r4, #0
    ands r3, r5
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    adds r4, r3, #0
    lsls r3, r4, #0xc
    ldr r4, [r7, #0x10]
    adds r3, r3, r4
    ldr r4, [r7, #0x14]
    ldrh r5, [r4, #0x2e]
    movs r6, #3
    adds r4, r5, #0
    ands r4, r6
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    adds r5, r4, #0
    lsls r4, r5, #0xa
    adds r3, r3, r4
    movs r4, #3
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r0, .L08074894 @ =0x083EBE54
    ldr r2, [r7]
    adds r1, r2, #0
    subs r1, #0x12
    ldr r3, [r7, #4]
    subs r2, r3, #4
    ldr r3, [r7, #0x14]
    ldrh r4, [r3, #0x2c]
    movs r5, #0xf
    adds r3, r4, #0
    ands r3, r5
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    adds r4, r3, #0
    lsls r3, r4, #0xc
    ldr r4, [r7, #0xc]
    adds r3, r3, r4
    ldr r4, [r7, #0x14]
    ldrh r5, [r4, #0x2e]
    movs r6, #3
    adds r4, r5, #0
    ands r4, r6
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    adds r5, r4, #0
    lsls r4, r5, #0xa
    adds r3, r3, r4
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r0, [r7, #8]
    lsls r1, r0, #0x16
    lsrs r0, r1, #0x16
    lsls r1, r0, #5
    ldr r2, [r7, #0x18]
    adds r0, r1, r2
    ldr r2, [r7, #0x10]
    adds r1, r2, #0
    adds r1, #0x2d
    lsls r2, r1, #0x16
    lsrs r1, r2, #0x16
    lsls r2, r1, #5
    ldr r3, .L08074898 @ =0x06010000
    adds r1, r2, r3
    movs r2, #0x20
    bl func_08014BEC
    ldr r1, [r7, #8]
    adds r0, r1, #0
    adds r0, #0x20
    lsls r1, r0, #0x16
    lsrs r0, r1, #0x16
    lsls r1, r0, #5
    ldr r2, [r7, #0x18]
    adds r0, r1, r2
    ldr r2, [r7, #0x10]
    adds r1, r2, #0
    adds r1, #0x4d
    lsls r2, r1, #0x16
    lsrs r1, r2, #0x16
    lsls r2, r1, #5
    ldr r3, .L08074898 @ =0x06010000
    adds r1, r2, r3
    movs r2, #0x20
    bl func_08014BEC
    add sp, #0x24
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807488C: .4byte 0x083F373C
.L08074890: .4byte 0x08C9DE2C
.L08074894: .4byte 0x083EBE54
.L08074898: .4byte 0x06010000
    func_end func_08074744

    thumb_func_start func_0807489C
func_0807489C: @ 0x0807489C
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L080748CC @ =0x08C9DE54
    ldr r1, [r7, #4]
    bl Proc_StartBlocking
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    ldr r2, [r7]
    adds r1, r2, #0
    ldrh r2, [r0, #0x2e]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x2e]
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080748CC: .4byte 0x08C9DE54
    func_end func_0807489C

    thumb_func_start func_080748D0
func_080748D0: @ 0x080748D0
    push {r7, lr}
    mov r7, sp
    ldr r0, .L080749F0 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080749F0 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080749F0 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2d
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x31
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2c
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xf0
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x30
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x30
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0xfe
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0xfd
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #1
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #2
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080749F0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080749F0: .4byte gDispIo
    func_end func_080748D0

    thumb_func_start func_080749F4
func_080749F4: @ 0x080749F4
    push {r7, lr}
    mov r7, sp
    ldr r0, .L08074A24 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L08074A24 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L08074A24 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08074A24: .4byte gDispIo
    func_end func_080749F4

    thumb_func_start func_08074A28
func_08074A28: @ 0x08074A28
    push {r7, lr}
    sub sp, #0xc
    add r7, sp, #4
    str r0, [r7]
    bl ResetTextFont
    ldr r1, .L08074A5C @ =gBg0Tm
    adds r0, r1, #0
    movs r1, #0
    bl TmFill
    ldr r0, [r7]
    movs r2, #0x2e
    ldrsh r1, [r0, r2]
    adds r0, r1, #0
    movs r1, #1
    movs r2, #1
    bl func_08074008
    movs r0, #0
    str r0, [r7, #4]
.L08074A52:
    ldr r0, [r7, #4]
    cmp r0, #8
    ble .L08074A60
    b .L08074A7C
    .align 2, 0
.L08074A5C: .4byte gBg0Tm
.L08074A60:
    ldr r1, [r7]
    movs r3, #0x2e
    ldrsh r0, [r1, r3]
    ldr r3, [r7, #4]
    movs r1, #0
    str r1, [sp]
    movs r1, #1
    movs r2, #1
    bl func_0807416C
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L08074A52
.L08074A7C:
    movs r0, #1
    bl EnableBgSync
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x30
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x31
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    ldrh r1, [r0, #0x32]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    ldr r3, .L08074BE4 @ =0x0000FF70
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x32]
    ldr r0, .L08074BE8 @ =gDispIo
    ldrb r1, [r0, #0xc]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #0xc]
    ldr r0, .L08074BE8 @ =gDispIo
    ldrb r1, [r0, #0x10]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x10]
    ldr r0, .L08074BE8 @ =gDispIo
    ldrb r1, [r0, #0x14]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x14]
    ldr r0, .L08074BE8 @ =gDispIo
    ldrb r1, [r0, #0x18]
    movs r2, #0xfc
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #0x18]
    ldr r0, .L08074BE8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08074BE8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08074BE8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x45
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08074BE8 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L08074BE8 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xdf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L08074BE8 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L08074BE8 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, [r7]
    ldrh r2, [r0, #0x32]
    movs r0, #0
    movs r1, #0
    bl SetBgOffset
    ldr r0, [r7]
    ldrh r2, [r0, #0x32]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r0, .L08074BEC @ =0x0203E0FC
    ldr r2, [r7]
    movs r3, #0x2e
    ldrsh r1, [r2, r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, [r1]
    ldrh r1, [r0, #6]
    ldr r0, [r7]
    movs r3, #0x32
    ldrsh r2, [r0, r3]
    movs r0, #0x20
    subs r3, r0, r2
    ldr r0, .L08074BF0 @ =0x00001042
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb8
    bl StartFace
    ldr r1, .L08074BF4 @ =0x030041C0
    ldr r0, [r1]
    ldr r1, [r7]
    ldrh r2, [r1, #0x32]
    movs r3, #0x20
    subs r1, r3, r2
    ldrh r2, [r0, #0x36]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x36]
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r1, #0
    movs r1, #3
    movs r2, #1
    ldr r3, [r7]
    bl func_08074474
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08074BE4: .4byte 0x0000FF70
.L08074BE8: .4byte gDispIo
.L08074BEC: .4byte 0x0203E0FC
.L08074BF0: .4byte 0x00001042
.L08074BF4: .4byte 0x030041C0
    func_end func_08074A28

    thumb_func_start func_08074BF8
func_08074BF8: @ 0x08074BF8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    movs r1, #0
    str r1, [r0, #0x54]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08074BF8

    thumb_func_start func_08074C10
func_08074C10: @ 0x08074C10
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08074C38 @ =0x083F3074
    str r0, [r7, #8]
    ldr r1, [r7]
    ldr r0, [r7]
    ldr r1, [r7]
    ldr r2, [r1, #0x54]
    adds r1, r2, #1
    str r1, [r0, #0x54]
    ldr r0, [r7]
    ldr r1, [r0, #0x54]
    movs r2, #3
    adds r0, r1, #0
    ands r0, r2
    cmp r0, #0
    beq .L08074C3C
    b .L08074C98
    .align 2, 0
.L08074C38: .4byte 0x083F3074
.L08074C3C:
    ldr r0, [r7]
    ldr r1, [r0, #0x54]
    asrs r0, r1, #2
    movs r1, #0xf
    ands r0, r1
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, [r7, #8]
    adds r0, r0, r1
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r2, r1, #0
    adds r2, #0x10
    adds r1, r2, #0
    lsls r2, r1, #5
    adds r1, r2, #0
    adds r1, #0x12
    movs r2, #0xe
    bl ApplyPaletteExt
    ldr r0, [r7, #4]
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r2, [r7, #8]
    adds r1, r0, r2
    adds r0, r1, #0
    adds r0, #0x40
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r2, r1, #0
    adds r2, #0x11
    adds r1, r2, #0
    lsls r2, r1, #5
    adds r1, r2, #0
    adds r1, #0x12
    movs r2, #0xe
    bl ApplyPaletteExt
.L08074C98:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08074C10

    thumb_func_start func_08074CA0
func_08074CA0: @ 0x08074CA0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r7]
    ldrh r2, [r1, #0x32]
    adds r1, r2, #0
    adds r1, #8
    ldrh r2, [r0, #0x32]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x32]
    ldr r0, [r7]
    ldrh r2, [r0, #0x32]
    movs r0, #0
    movs r1, #0
    bl SetBgOffset
    ldr r0, [r7]
    ldrh r2, [r0, #0x32]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r1, .L08074D10 @ =0x030041C0
    ldr r0, [r1]
    ldr r1, [r7]
    ldrh r2, [r1, #0x32]
    movs r3, #0x20
    subs r1, r3, r2
    ldrh r2, [r0, #0x36]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x36]
    ldr r0, [r7]
    movs r2, #0x32
    ldrsh r1, [r0, r2]
    movs r0, #0x30
    cmn r1, r0
    blt .L08074D08
    ldr r0, [r7]
    bl Proc_Break
.L08074D08:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08074D10: .4byte 0x030041C0
    func_end func_08074CA0

    thumb_func_start func_08074D14
func_08074D14: @ 0x08074D14
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r7]
    ldrh r2, [r1, #0x32]
    adds r1, r2, #0
    subs r1, #8
    ldrh r2, [r0, #0x32]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x32]
    ldr r0, [r7]
    ldrh r2, [r0, #0x32]
    movs r0, #0
    movs r1, #0
    bl SetBgOffset
    ldr r0, [r7]
    ldrh r2, [r0, #0x32]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r1, .L08074D84 @ =0x030041C0
    ldr r0, [r1]
    ldr r1, [r7]
    ldrh r2, [r1, #0x32]
    movs r3, #0x20
    subs r1, r3, r2
    ldrh r2, [r0, #0x36]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x36]
    ldr r0, [r7]
    movs r2, #0x32
    ldrsh r1, [r0, r2]
    movs r0, #0x90
    cmn r1, r0
    bgt .L08074D7C
    ldr r0, [r7]
    bl Proc_Break
.L08074D7C:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08074D84: .4byte 0x030041C0
    func_end func_08074D14

    thumb_func_start func_08074D88
func_08074D88: @ 0x08074D88
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    add r7, sp, #4
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x31
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08074DC4
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x31
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x31
    ldrb r3, [r2]
    subs r1, r3, #1
    adds r2, r0, #0
    adds r0, #0x31
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    b .L08074EF0
.L08074DC4:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x30
    ldrb r0, [r1]
    str r0, [r7, #4]
.L08074DCE:
    ldr r0, [r7, #4]
    cmp r0, #8
    ble .L08074DD6
    b .L08074DF4
.L08074DD6:
    ldr r0, [r7]
    movs r2, #0x2e
    ldrsh r1, [r0, r2]
    ldr r2, [r7, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    bl func_080741F4
    cmp r0, #0
    beq .L08074DEC
    b .L08074DF4
.L08074DEC:
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L08074DCE
.L08074DF4:
    ldr r0, [r7, #4]
    cmp r0, #8
    ble .L08074E02
    ldr r0, [r7]
    bl Proc_Break
    b .L08074EF0
.L08074E02:
    ldr r1, [r7]
    movs r3, #0x2e
    ldrsh r0, [r1, r3]
    ldr r3, [r7, #4]
    movs r1, #1
    str r1, [sp]
    movs r1, #1
    movs r2, #1
    bl func_0807416C
    movs r0, #1
    bl EnableBgSync
    ldr r0, .L08074E98 @ =0x08C9DDB4
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #1
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0]
    adds r0, r1, #0
    lsls r1, r0, #3
    adds r4, r1, #0
    adds r4, #0x3e
    ldr r0, .L08074E98 @ =0x08C9DDB4
    ldr r1, [r7, #4]
    adds r3, r1, #0
    lsls r2, r3, #1
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #1]
    adds r2, r1, #0
    lsls r0, r2, #3
    ldr r1, [r7]
    movs r3, #0x32
    ldrsh r2, [r1, r3]
    adds r1, r2, #0
    subs r1, #0x17
    subs r5, r0, r1
    ldr r6, [r7, #4]
    ldr r0, [r7]
    movs r2, #0x2e
    ldrsh r1, [r0, r2]
    ldr r2, [r7, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    bl func_080741F4
    adds r3, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl func_08074554
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x30
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08074EA4
    ldr r1, .L08074E9C @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L08074E96
    ldr r1, .L08074EA0 @ =0x000002CD
    adds r0, r1, #0
    bl m4aSongNumStart
.L08074E96:
    b .L08074EBC
    .align 2, 0
.L08074E98: .4byte 0x08C9DDB4
.L08074E9C: .4byte gPlaySt
.L08074EA0: .4byte 0x000002CD
.L08074EA4:
    ldr r1, .L08074EF8 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L08074EBC
    ldr r1, .L08074EFC @ =0x00000396
    adds r0, r1, #0
    bl m4aSongNumStart
.L08074EBC:
    ldr r0, [r7]
    ldr r1, [r7, #4]
    adds r2, r1, #0
    adds r1, r2, #1
    adds r2, r0, #0
    adds r0, #0x30
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x31
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x14
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
.L08074EF0:
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08074EF8: .4byte gPlaySt
.L08074EFC: .4byte 0x00000396
    func_end func_08074D88

    thumb_func_start func_08074F00
func_08074F00: @ 0x08074F00
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r1, #0
    movs r1, #0x80
    movs r2, #0x10
    ldr r3, [r7]
    bl StartBgmVolumeChange
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08074F00

    thumb_func_start func_08074F20
func_08074F20: @ 0x08074F20
    push {r4, r7, lr}
    sub sp, #0x14
    add r7, sp, #8
    str r0, [r7]
    ldr r0, .L08075074 @ =0x083F323C
    ldr r1, .L08075078 @ =0x06013800
    bl Decompress
    ldr r0, .L0807507C @ =0x083F3450
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x60
    bl ApplyPaletteExt
    ldr r0, .L08075080 @ =0x0203E0FC
    ldr r2, [r7]
    movs r3, #0x2e
    ldrsh r1, [r2, r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldr r1, .L08075084 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    asrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    asrs r1, r2, #0x10
    subs r0, r0, r1
    lsls r1, r0, #1
    adds r0, r1, #0
    lsls r1, r0, #3
    adds r0, r1, #0
    adds r0, #0x10
    str r0, [r7, #4]
    ldr r0, .L08075080 @ =0x0203E0FC
    ldr r2, [r7]
    movs r3, #0x2e
    ldrsh r1, [r2, r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    ldr r1, .L08075084 @ =gBmSt
    movs r3, #0xe
    ldrsh r2, [r1, r3]
    asrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    asrs r1, r2, #0x10
    subs r0, r0, r1
    lsls r1, r0, #1
    adds r0, r1, #0
    lsls r1, r0, #3
    adds r0, r1, #0
    subs r0, #8
    str r0, [r7, #8]
    ldr r0, .L08075080 @ =0x0203E0FC
    ldr r2, [r7]
    movs r3, #0x2e
    ldrsh r1, [r2, r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    ldr r1, .L08075084 @ =gBmSt
    movs r3, #0xe
    ldrsh r2, [r1, r3]
    asrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    asrs r1, r2, #0x10
    subs r0, r0, r1
    lsls r1, r0, #1
    cmp r1, #3
    bgt .L08074FDA
    ldr r0, [r7, #8]
    adds r1, r0, #0
    adds r1, #0x20
    str r1, [r7, #8]
.L08074FDA:
    ldr r0, .L08075080 @ =0x0203E0FC
    ldr r2, [r7]
    movs r3, #0x2e
    ldrsh r1, [r2, r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldr r1, .L08075084 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    asrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    asrs r1, r2, #0x10
    subs r0, r0, r1
    lsls r1, r0, #1
    cmp r1, #3
    bgt .L0807500C
    movs r0, #0x30
    str r0, [r7, #4]
.L0807500C:
    ldr r0, .L08075080 @ =0x0203E0FC
    ldr r2, [r7]
    movs r3, #0x2e
    ldrsh r1, [r2, r3]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldr r1, .L08075084 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    asrs r1, r2, #4
    adds r3, r1, #0
    lsls r2, r3, #0x10
    asrs r1, r2, #0x10
    subs r0, r0, r1
    lsls r1, r0, #1
    cmp r1, #0x19
    ble .L0807503E
    movs r0, #0xd0
    str r0, [r7, #4]
.L0807503E:
    ldr r0, .L08075088 @ =0x083EC514
    ldr r1, [r7, #4]
    ldr r2, [r7, #8]
    movs r3, #0xc7
    lsls r3, r3, #6
    movs r4, #0
    str r4, [sp]
    movs r4, #2
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r1, .L0807508C @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0807506C
    ldr r1, .L08075090 @ =0x0000037B
    adds r0, r1, #0
    bl m4aSongNumStart
.L0807506C:
    add sp, #0x14
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075074: .4byte 0x083F323C
.L08075078: .4byte 0x06013800
.L0807507C: .4byte 0x083F3450
.L08075080: .4byte 0x0203E0FC
.L08075084: .4byte gBmSt
.L08075088: .4byte 0x083EC514
.L0807508C: .4byte gPlaySt
.L08075090: .4byte 0x0000037B
    func_end func_08074F20

    thumb_func_start func_08075094
func_08075094: @ 0x08075094
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl EndEachSpriteAnimProc
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08075094

    thumb_func_start func_080750A8
func_080750A8: @ 0x080750A8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x80
    movs r2, #0x10
    ldr r3, [r7]
    bl StartBgmVolumeChange
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080750A8

    thumb_func_start func_080750C8
func_080750C8: @ 0x080750C8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl ClearTalk
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080750C8

    thumb_func_start func_080750DC
func_080750DC: @ 0x080750DC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    cmp r0, #0
    beq .L080750FC
    ldr r1, .L080750F8 @ =0x08C9DF14
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_StartBlocking
    b .L08075106
    .align 2, 0
.L080750F8: .4byte 0x08C9DF14
.L080750FC:
    ldr r1, .L08075110 @ =0x08C9DF14
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
.L08075106:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075110: .4byte 0x08C9DF14
    func_end func_080750DC

    thumb_func_start func_08075114
func_08075114: @ 0x08075114
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075134 @ =0x02022920
    ldr r1, .L08075138 @ =0x03004990
    movs r2, #0x50
    bl CpuFastSet
    movs r0, #0
    str r0, [r7, #4]
.L0807512A:
    ldr r0, [r7, #4]
    cmp r0, #9
    ble .L0807513C
    b .L08075160
    .align 2, 0
.L08075134: .4byte 0x02022920
.L08075138: .4byte 0x03004990
.L0807513C:
    ldr r0, .L0807515C @ =0x08B92A28
    ldr r2, [r7, #4]
    adds r1, r2, #6
    movs r2, #0x3c
    ldr r3, [r7]
    bl StartPalFade
    adds r1, r0, #0
    adds r0, r1, #0
    movs r1, #0xf
    bl func_08013B70
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L0807512A
    .align 2, 0
.L0807515C: .4byte 0x08B92A28
.L08075160:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08075114

    thumb_func_start func_08075168
func_08075168: @ 0x08075168
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    cmp r0, #0
    beq .L08075188
    ldr r1, .L08075184 @ =0x08C9DF2C
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_StartBlocking
    b .L08075192
    .align 2, 0
.L08075184: .4byte 0x08C9DF2C
.L08075188:
    ldr r1, .L0807519C @ =0x08C9DF2C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
.L08075192:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807519C: .4byte 0x08C9DF2C
    func_end func_08075168

    thumb_func_start func_080751A0
func_080751A0: @ 0x080751A0
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    str r0, [r7, #4]
.L080751AC:
    ldr r0, [r7, #4]
    cmp r0, #9
    ble .L080751B4
    b .L080751D8
.L080751B4:
    ldr r0, [r7, #4]
    adds r1, r0, #0
    lsls r0, r1, #5
    ldr r1, .L080751D4 @ =0x03004990
    adds r0, r0, r1
    ldr r2, [r7, #4]
    adds r1, r2, #6
    movs r2, #0xf
    ldr r3, [r7]
    bl StartPalFade
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L080751AC
    .align 2, 0
.L080751D4: .4byte 0x03004990
.L080751D8:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080751A0

    thumb_func_start func_080751E0
func_080751E0: @ 0x080751E0
    push {r7, lr}
    mov r7, sp
    ldr r1, .L080751F4 @ =0x08C9DF44
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080751F4: .4byte 0x08C9DF44
    func_end func_080751E0

    thumb_func_start func_080751F8
func_080751F8: @ 0x080751F8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080751F8

    thumb_func_start func_08075218
func_08075218: @ 0x08075218
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl RandNextB
    adds r1, r0, #0
    adds r0, r1, #0
    movs r1, #9
    bl DivRem
    adds r1, r0, #0
    subs r0, r1, #4
    adds r1, r0, #0
    lsls r0, r1, #0x10
    lsrs r4, r0, #0x10
    bl RandNextB
    adds r1, r0, #0
    adds r0, r1, #0
    movs r1, #9
    bl DivRem
    adds r1, r0, #0
    subs r0, r1, #4
    adds r1, r0, #0
    lsls r0, r1, #0x10
    lsrs r2, r0, #0x10
    movs r0, #0
    adds r1, r4, #0
    bl SetBgOffset
    bl RandNextB
    adds r1, r0, #0
    adds r0, r1, #0
    movs r1, #9
    bl DivRem
    adds r1, r0, #0
    subs r0, r1, #4
    adds r1, r0, #0
    lsls r0, r1, #0x10
    lsrs r4, r0, #0x10
    bl RandNextB
    adds r1, r0, #0
    adds r0, r1, #0
    movs r1, #9
    bl DivRem
    adds r1, r0, #0
    subs r0, r1, #4
    adds r1, r0, #0
    lsls r0, r1, #0x10
    lsrs r2, r0, #0x10
    movs r0, #1
    adds r1, r4, #0
    bl SetBgOffset
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    adds r2, r1, #1
    adds r3, r2, #0
    strh r3, [r0]
    lsls r1, r1, #0x10
    asrs r0, r1, #0x10
    cmp r0, #0xf
    ble .L080752C0
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, [r7]
    bl Proc_Break
.L080752C0:
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_08075218

    thumb_func_start func_080752C8
func_080752C8: @ 0x080752C8
    push {r7, lr}
    mov r7, sp
    ldr r0, .L080752E8 @ =0x083F5188
    ldr r1, .L080752EC @ =0x06013800
    bl Decompress
    ldr r0, .L080752F0 @ =0x083F51A8
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080752E8: .4byte 0x083F5188
.L080752EC: .4byte 0x06013800
.L080752F0: .4byte 0x083F51A8
    func_end func_080752C8

    thumb_func_start func_080752F4
func_080752F4: @ 0x080752F4
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, [r7]
    movs r1, #4
    cmn r0, r1
    bge .L08075308
    b .L0807533A
.L08075308:
    ldr r0, [r7]
    cmp r0, #0xeb
    ble .L08075310
    b .L0807533A
.L08075310:
    ldr r0, [r7, #4]
    movs r1, #4
    cmn r0, r1
    bge .L0807531A
    b .L0807533A
.L0807531A:
    ldr r0, [r7, #4]
    cmp r0, #0x9b
    ble .L08075322
    b .L0807533A
.L08075322:
    ldr r1, [r7]
    subs r0, r1, #4
    lsls r1, r0, #0x17
    lsrs r0, r1, #0x17
    ldr r2, [r7, #4]
    subs r1, r2, #4
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08075344 @ =0x08B905B0
    ldr r3, .L08075348 @ =0x000041C0
    bl PutOamHiRam
.L0807533A:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075344: .4byte 0x08B905B0
.L08075348: .4byte 0x000041C0
    func_end func_080752F4

    thumb_func_start func_0807534C
func_0807534C: @ 0x0807534C
    push {r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L080753A8 @ =0x080C5A48
    ldr r1, [r7, #0xc]
    movs r2, #0xff
    ands r1, r2
    adds r2, r1, #0
    lsls r1, r2, #1
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r0, r2]
    ldr r2, [r7, #8]
    adds r0, r1, #0
    muls r0, r2, r0
    asrs r1, r0, #0xc
    ldr r2, [r7]
    adds r0, r1, r2
    ldr r1, .L080753A8 @ =0x080C5A48
    ldr r2, [r7, #0xc]
    movs r3, #0xff
    ands r2, r3
    adds r3, r2, #0
    adds r3, #0x40
    adds r2, r3, #0
    lsls r3, r2, #1
    adds r1, r1, r3
    movs r3, #0
    ldrsh r2, [r1, r3]
    ldr r3, [r7, #8]
    adds r1, r2, #0
    muls r1, r3, r1
    asrs r2, r1, #0xc
    ldr r3, [r7, #4]
    adds r1, r2, r3
    bl func_080752F4
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080753A8: .4byte gSinLut
    func_end func_0807534C

    thumb_func_start func_080753AC
func_080753AC: @ 0x080753AC
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    bl func_080752C8
    movs r0, #0
    str r0, [r7, #4]
.L080753BC:
    ldr r0, [r7, #4]
    cmp r0, #0xf
    ble .L080753C4
    b .L08075410
.L080753C4:
    ldr r0, .L0807540C @ =0x03004910
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #3
    adds r0, r0, r1
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x10
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807540C @ =0x03004910
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #3
    adds r0, r0, r1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #4
    adds r2, r1, #0
    lsls r1, r2, #4
    ldrh r2, [r0, #2]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #2]
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L080753BC
    .align 2, 0
.L0807540C: .4byte 0x03004910
.L08075410:
    ldr r0, [r7]
    ldrh r1, [r0, #0x36]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x36]
    ldr r0, [r7]
    ldrh r1, [r0, #0x38]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x38]
    ldr r0, [r7]
    ldr r1, [r7]
    ldrh r2, [r0, #0x3a]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrh r1, [r1, #0x3c]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x3a]
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080753AC

    thumb_func_start func_08075448
func_08075448: @ 0x08075448
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    add r7, sp, #4
    str r0, [r7]
    ldr r0, [r7]
    movs r2, #0x2e
    ldrsh r1, [r0, r2]
    ldr r0, [r7]
    movs r3, #0x30
    ldrsh r2, [r0, r3]
    ldr r0, [r7]
    ldrh r3, [r0, #0x3a]
    ldr r0, [r7]
    ldrh r4, [r0, #0x3e]
    str r4, [sp]
    movs r0, #5
    bl Interpolate
    lsls r1, r0, #4
    str r1, [r7, #8]
    ldr r0, [r7]
    ldr r2, [r7, #8]
    adds r1, r2, #0
    ldrh r2, [r0, #0x36]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x36]
    ldr r0, [r7]
    ldr r1, [r7, #8]
    asrs r2, r1, #0x1f
    lsrs r3, r2, #0x1f
    adds r2, r1, r3
    asrs r1, r2, #1
    ldrh r2, [r0, #0x38]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x38]
    movs r0, #0
    str r0, [r7, #4]
.L080754A4:
    ldr r0, [r7, #4]
    cmp r0, #0xf
    ble .L080754AC
    b .L080754F0
.L080754AC:
    ldr r1, [r7]
    movs r2, #0x2a
    ldrsh r0, [r1, r2]
    ldr r2, [r7]
    movs r3, #0x2c
    ldrsh r1, [r2, r3]
    ldr r3, [r7]
    ldrh r2, [r3, #0x36]
    ldr r3, .L080754EC @ =0x03004910
    ldr r4, [r7, #4]
    adds r5, r4, #0
    lsls r4, r5, #3
    adds r3, r3, r4
    ldrh r4, [r3]
    adds r3, r2, r4
    asrs r2, r3, #4
    ldr r4, [r7]
    ldrh r3, [r4, #0x38]
    ldr r4, .L080754EC @ =0x03004910
    ldr r5, [r7, #4]
    adds r6, r5, #0
    lsls r5, r6, #3
    adds r4, r4, r5
    ldrh r5, [r4, #2]
    adds r4, r3, r5
    asrs r3, r4, #4
    bl func_0807534C
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L080754A4
    .align 2, 0
.L080754EC: .4byte 0x03004910
.L080754F0:
    ldr r1, [r7]
    ldr r0, [r7]
    ldr r1, [r7]
    ldrh r2, [r1, #0x3a]
    adds r1, r2, #1
    ldrh r2, [r0, #0x3a]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x3a]
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x40
    ldrh r0, [r0, #0x3a]
    ldrh r1, [r2]
    cmp r0, r1
    bls .L08075520
    ldr r0, [r7]
    bl Proc_Break
.L08075520:
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08075448

    thumb_func_start func_08075528
func_08075528: @ 0x08075528
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r1, .L080755DC @ =0x08C9DF5C
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #0x10]
    ldr r0, [r7, #0x10]
    ldr r2, [r7]
    adds r1, r2, #0
    ldrh r2, [r0, #0x2a]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x2a]
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #4]
    adds r1, r2, #0
    ldrh r2, [r0, #0x2c]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x2c]
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #8]
    adds r1, r2, #0
    ldrh r2, [r0, #0x2e]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x2e]
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #0xc]
    adds r1, r2, #0
    ldrh r2, [r0, #0x30]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x30]
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #0x1c]
    adds r1, r2, #0
    ldrh r2, [r0, #0x3c]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x3c]
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #0x20]
    adds r1, r2, #0
    ldrh r2, [r0, #0x3e]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x3e]
    ldr r1, [r7, #0x10]
    ldr r2, [r7, #0x24]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x40
    ldrh r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strh r2, [r1]
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080755DC: .4byte 0x08C9DF5C
    func_end func_08075528

    thumb_func_start func_080755E0
func_080755E0: @ 0x080755E0
    push {r7, lr}
    sub sp, #0x14
    add r7, sp, #0xc
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, [r7, #4]
    movs r0, #0
    str r0, [sp]
    movs r0, #0x50
    str r0, [sp, #4]
    movs r0, #0x28
    str r0, [sp, #8]
    ldr r0, [r7]
    movs r2, #1
    movs r3, #0xc8
    bl func_08075528
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080755E0

    thumb_func_start func_0807560C
func_0807560C: @ 0x0807560C
    push {r7, lr}
    sub sp, #0x14
    add r7, sp, #0xc
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, [r7, #4]
    movs r0, #0
    str r0, [sp]
    movs r0, #0x3c
    str r0, [sp, #4]
    movs r0, #0x37
    str r0, [sp, #8]
    ldr r0, [r7]
    movs r2, #0xc8
    movs r3, #1
    bl func_08075528
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0807560C

    thumb_func_start func_08075638
func_08075638: @ 0x08075638
    push {r7, lr}
    mov r7, sp
    ldr r0, .L08075648 @ =0x0203E0FC
    ldr r1, [r0, #0x54]
    cmp r1, #0
    bne .L08075650
    ldr r0, .L0807564C @ =0x08C9DF8C
    b .L0807565C
    .align 2, 0
.L08075648: .4byte 0x0203E0FC
.L0807564C: .4byte 0x08C9DF8C
.L08075650:
    ldr r0, .L08075658 @ =0x0203E0FC
    ldr r1, [r0, #0x54]
    adds r0, r1, #0
    b .L0807565C
    .align 2, 0
.L08075658: .4byte 0x0203E0FC
.L0807565C:
    pop {r7}
    pop {r1}
    bx r1
    func_end func_08075638

    thumb_func_start func_08075664
func_08075664: @ 0x08075664
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075694 @ =0x0203E0FC
    ldr r2, .L08075694 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DCB4
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075694: .4byte 0x0203E0FC
    func_end func_08075664

    thumb_func_start func_08075698
func_08075698: @ 0x08075698
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080756C8 @ =0x0203E0FC
    ldr r2, .L080756C8 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DD30
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080756C8: .4byte 0x0203E0FC
    func_end func_08075698

    thumb_func_start func_080756CC
func_080756CC: @ 0x080756CC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075700 @ =0x0203E0FC
    ldr r2, .L08075700 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, [r1, #4]
    ldrb r1, [r0, #4]
    cmp r1, #0x40
    bne .L08075708
    ldr r1, .L08075704 @ =func_08075798
    adds r0, r1, #0
    movs r1, #9
    bl CallDelayed
    b .L08075712
    .align 2, 0
.L08075700: .4byte 0x0203E0FC
.L08075704: .4byte func_08075798
.L08075708:
    ldr r1, .L08075790 @ =func_080757DC
    adds r0, r1, #0
    movs r1, #0xc
    bl CallDelayed
.L08075712:
    ldr r0, .L08075794 @ =0x0203E0FC
    ldr r2, .L08075794 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r0, .L08075794 @ =0x0203E0FC
    ldr r2, .L08075794 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x80
    lsls r3, r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r0, .L08075794 @ =0x0203E0FC
    ldr r2, .L08075794 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    ldr r1, [r0, #0x30]
    adds r0, r1, #0
    movs r1, #5
    bl SetSpriteAnimId
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075790: .4byte func_080757DC
.L08075794: .4byte 0x0203E0FC
    func_end func_080756CC

    thumb_func_start func_08075798
func_08075798: @ 0x08075798
    push {r4, r7, lr}
    mov r7, sp
    ldr r0, .L080757D0 @ =0x000002D5
    ldr r1, .L080757D4 @ =0x0203E0FC
    ldr r3, .L080757D4 @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x58
    ldrb r2, [r3]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r2, .L080757D8 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    bl func_08014D80
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080757D0: .4byte 0x000002D5
.L080757D4: .4byte 0x0203E0FC
.L080757D8: .4byte gBmSt
    func_end func_08075798

    thumb_func_start func_080757DC
func_080757DC: @ 0x080757DC
    push {r4, r7, lr}
    mov r7, sp
    ldr r0, .L08075814 @ =0x000002D6
    ldr r1, .L08075818 @ =0x0203E0FC
    ldr r3, .L08075818 @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x58
    ldrb r2, [r3]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r2, .L0807581C @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    bl func_08014D80
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075814: .4byte 0x000002D6
.L08075818: .4byte 0x0203E0FC
.L0807581C: .4byte gBmSt
    func_end func_080757DC

    thumb_func_start func_08075820
func_08075820: @ 0x08075820
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075878 @ =0x0203E0FC
    ldr r2, .L08075878 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r0, .L08075878 @ =0x0203E0FC
    ldr r2, .L08075878 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075878: .4byte 0x0203E0FC
    func_end func_08075820

    thumb_func_start func_0807587C
func_0807587C: @ 0x0807587C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080758AC @ =0x0203E0FC
    ldr r2, .L080758AC @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DDD4
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080758AC: .4byte 0x0203E0FC
    func_end func_0807587C

    thumb_func_start func_080758B0
func_080758B0: @ 0x080758B0
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r2, [r7]
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x4c
    movs r3, #0
    ldrsh r0, [r4, r3]
    ldr r4, [r7, #4]
    adds r3, r4, #0
    adds r4, #0x4c
    movs r5, #0
    ldrsh r3, [r4, r5]
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x4c
    movs r6, #0
    ldrsh r4, [r5, r6]
    subs r3, r3, r4
    cmp r3, #0
    bgt .L0807590A
    adds r3, r0, #0
    ldr r5, [r7, #4]
    adds r4, r5, #0
    adds r5, #0x4c
    movs r6, #0
    ldrsh r4, [r5, r6]
    ldr r6, [r7]
    adds r5, r6, #0
    adds r5, r6, #0
    adds r5, #0x4c
    str r5, [r7, #8]
    ldr r6, [r7, #8]
    movs r5, #0
    ldrsh r6, [r6, r5]
    str r6, [r7, #0xc]
    ldr r6, [r7, #0xc]
    subs r4, r4, r6
    cmp r4, #0
    bge .L08075908
    subs r3, #0x10
.L08075908:
    b .L08075910
.L0807590A:
    adds r4, r0, #0
    adds r4, #0x10
    adds r3, r4, #0
.L08075910:
    adds r4, r2, #0
    adds r2, #0x4c
    ldrh r4, [r2]
    movs r5, #0
    ands r4, r5
    adds r5, r4, #0
    orrs r3, r5
    adds r4, r3, #0
    strh r4, [r2]
    ldr r2, [r7]
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x4e
    movs r3, #0
    ldrsh r1, [r4, r3]
    ldr r4, [r7, #4]
    adds r3, r4, #0
    adds r4, #0x4e
    movs r5, #0
    ldrsh r3, [r4, r5]
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x4e
    movs r6, #0
    ldrsh r4, [r5, r6]
    subs r3, r3, r4
    cmp r3, #0
    bgt .L08075972
    adds r3, r1, #0
    ldr r5, [r7, #4]
    adds r4, r5, #0
    adds r5, #0x4e
    movs r6, #0
    ldrsh r4, [r5, r6]
    ldr r6, [r7]
    adds r5, r6, #0
    adds r5, r6, #0
    adds r5, #0x4e
    str r5, [r7, #8]
    ldr r6, [r7, #8]
    movs r5, #0
    ldrsh r6, [r6, r5]
    str r6, [r7, #0xc]
    ldr r6, [r7, #0xc]
    subs r4, r4, r6
    cmp r4, #0
    bge .L08075970
    subs r3, #0x10
.L08075970:
    b .L08075978
.L08075972:
    adds r4, r1, #0
    adds r4, #0x10
    adds r3, r4, #0
.L08075978:
    adds r4, r2, #0
    adds r2, #0x4e
    ldrh r4, [r2]
    movs r5, #0
    ands r4, r5
    adds r5, r4, #0
    orrs r3, r5
    adds r4, r3, #0
    strh r4, [r2]
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080758B0

    thumb_func_start func_08075994
func_08075994: @ 0x08075994
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r2, [r7]
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x4c
    movs r3, #0
    ldrsh r0, [r4, r3]
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x4c
    movs r5, #0
    ldrsh r3, [r4, r5]
    ldr r5, [r7, #4]
    adds r4, r5, #0
    adds r5, #0x4c
    movs r6, #0
    ldrsh r4, [r5, r6]
    subs r3, r3, r4
    cmp r3, #0
    bgt .L080759EE
    adds r3, r0, #0
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x4c
    movs r6, #0
    ldrsh r4, [r5, r6]
    ldr r6, [r7, #4]
    adds r5, r6, #0
    adds r5, r6, #0
    adds r5, #0x4c
    str r5, [r7, #8]
    ldr r6, [r7, #8]
    movs r5, #0
    ldrsh r6, [r6, r5]
    str r6, [r7, #0xc]
    ldr r6, [r7, #0xc]
    subs r4, r4, r6
    cmp r4, #0
    bge .L080759EC
    subs r3, #0x10
.L080759EC:
    b .L080759F4
.L080759EE:
    adds r4, r0, #0
    adds r4, #0x10
    adds r3, r4, #0
.L080759F4:
    adds r4, r2, #0
    adds r2, #0x4c
    ldrh r4, [r2]
    movs r5, #0
    ands r4, r5
    adds r5, r4, #0
    orrs r3, r5
    adds r4, r3, #0
    strh r4, [r2]
    ldr r2, [r7]
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x4e
    movs r3, #0
    ldrsh r1, [r4, r3]
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x4e
    movs r5, #0
    ldrsh r3, [r4, r5]
    ldr r5, [r7, #4]
    adds r4, r5, #0
    adds r5, #0x4e
    movs r6, #0
    ldrsh r4, [r5, r6]
    subs r3, r3, r4
    cmp r3, #0
    bgt .L08075A56
    adds r3, r1, #0
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x4e
    movs r6, #0
    ldrsh r4, [r5, r6]
    ldr r6, [r7, #4]
    adds r5, r6, #0
    adds r5, r6, #0
    adds r5, #0x4e
    str r5, [r7, #8]
    ldr r6, [r7, #8]
    movs r5, #0
    ldrsh r6, [r6, r5]
    str r6, [r7, #0xc]
    ldr r6, [r7, #0xc]
    subs r4, r4, r6
    cmp r4, #0
    bge .L08075A54
    subs r3, #0x10
.L08075A54:
    b .L08075A5C
.L08075A56:
    adds r4, r1, #0
    adds r4, #0x10
    adds r3, r4, #0
.L08075A5C:
    adds r4, r2, #0
    adds r2, #0x4e
    ldrh r4, [r2]
    movs r5, #0
    ands r4, r5
    adds r5, r4, #0
    orrs r3, r5
    adds r4, r3, #0
    strh r4, [r2]
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08075994

    thumb_func_start func_08075A78
func_08075A78: @ 0x08075A78
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075AF8 @ =0x0203E0FC
    ldr r2, .L08075AF8 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    str r0, [r7, #4]
    ldr r0, .L08075AF8 @ =0x0203E0FC
    ldr r2, .L08075AF8 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    str r0, [r7, #8]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    bl func_080758B0
    ldr r1, .L08075AF8 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #0x80
    lsls r1, r1, #3
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08075AF0
    ldr r0, .L08075AF8 @ =0x0203E0FC
    ldr r1, [r0, #0x30]
    str r1, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    bl func_080758B0
    ldr r0, .L08075AF8 @ =0x0203E0FC
    ldr r1, [r0, #0x44]
    str r1, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    bl func_080758B0
.L08075AF0:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075AF8: .4byte 0x0203E0FC
    func_end func_08075A78

    thumb_func_start func_08075AFC
func_08075AFC: @ 0x08075AFC
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075B7C @ =0x0203E0FC
    ldr r2, .L08075B7C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    str r0, [r7, #4]
    ldr r0, .L08075B7C @ =0x0203E0FC
    ldr r2, .L08075B7C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    str r0, [r7, #8]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    bl func_08075994
    ldr r1, .L08075B7C @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #0x80
    lsls r1, r1, #3
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08075B74
    ldr r0, .L08075B7C @ =0x0203E0FC
    ldr r1, [r0, #0x30]
    str r1, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    bl func_08075994
    ldr r0, .L08075B7C @ =0x0203E0FC
    ldr r1, [r0, #0x44]
    str r1, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    bl func_08075994
.L08075B74:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075B7C: .4byte 0x0203E0FC
    func_end func_08075AFC

    thumb_func_start func_08075B80
func_08075B80: @ 0x08075B80
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075BCC @ =0x0203E0FC
    ldr r2, .L08075BCC @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r2, [r0]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, .L08075BCC @ =0x0203E0FC
    ldr r3, .L08075BCC @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x58
    ldrb r2, [r3]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r0, r0, r2
    ldr r3, [r0]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    ldr r0, [r7]
    bl EnsureCameraOntoPosition
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075BCC: .4byte 0x0203E0FC
    func_end func_08075B80

    thumb_func_start func_08075BD0
func_08075BD0: @ 0x08075BD0
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075C1C @ =0x0203E0FC
    ldr r2, .L08075C1C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r2, [r0]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, .L08075C1C @ =0x0203E0FC
    ldr r3, .L08075C1C @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x59
    ldrb r2, [r3]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r0, r0, r2
    ldr r3, [r0]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    ldr r0, [r7]
    bl EnsureCameraOntoPosition
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075C1C: .4byte 0x0203E0FC
    func_end func_08075BD0

    thumb_func_start func_08075C20
func_08075C20: @ 0x08075C20
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08075C88 @ =0x0203E0FC
    ldr r1, .L08075C8C @ =0x0203A470
    adds r2, r1, #0
    adds r1, #0x73
    adds r2, r0, #0
    adds r0, #0x60
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L08075C88 @ =0x0203E0FC
    ldr r1, .L08075C8C @ =0x0203A470
    adds r2, r1, #0
    adds r1, #0x74
    adds r2, r0, #0
    adds r0, #0x61
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r1, .L08075C88 @ =0x0203E0FC
    adds r0, r1, #0
    adds r2, r1, #0
    adds r2, #0x60
    ldrb r1, [r2]
    ldr r2, .L08075C88 @ =0x0203E0FC
    adds r0, r2, #0
    adds r3, r2, #0
    adds r3, #0x61
    ldrb r2, [r3]
    ldr r0, [r7]
    bl EnsureCameraOntoPosition
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08075C88: .4byte 0x0203E0FC
.L08075C8C: .4byte 0x0203A470
    func_end func_08075C20

    thumb_func_start func_08075C90
func_08075C90: @ 0x08075C90
    push {r4, r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08075CC4 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x58
    ldrb r0, [r1]
    str r0, [r7, #8]
    ldr r1, .L08075CC4 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #0x80
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08075CC8
    ldr r1, .L08075CC4 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x58
    ldrb r0, [r1]
    str r0, [r7, #0xc]
    b .L08075CD2
    .align 2, 0
.L08075CC4: .4byte 0x0203E0FC
.L08075CC8:
    ldr r1, .L08075D28 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x59
    ldrb r0, [r1]
    str r0, [r7, #0xc]
.L08075CD2:
    ldr r0, .L08075D28 @ =0x0203E0FC
    ldr r1, [r7, #8]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r1, r2, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806BA1C
    lsls r1, r0, #0x18
    lsrs r0, r1, #0x18
    cmp r0, #0
    bne .L08075D2C
    ldr r1, .L08075D28 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #2
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08075D26
    ldr r0, .L08075D28 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08071424
.L08075D26:
    b .L0807603E
    .align 2, 0
.L08075D28: .4byte 0x0203E0FC
.L08075D2C:
    ldr r0, .L08075D90 @ =0x0203E0FC
    adds r1, r0, #0
    adds r0, #0x5f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #0xc]
    ldr r2, .L08075D90 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x5d
    movs r1, #0
    ldrsb r1, [r2, r1]
    bl func_08076050
    ldr r1, .L08075D90 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08075D80
    ldr r0, [r7, #8]
    ldr r2, .L08075D90 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x5d
    movs r1, #0
    ldrsb r1, [r2, r1]
    rsbs r2, r1, #0
    adds r1, r2, #0
    bl func_08076050
.L08075D80:
    ldr r1, .L08075D90 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5d
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L08075D94
    b .L0807603E
    .align 2, 0
.L08075D90: .4byte 0x0203E0FC
.L08075D94:
    ldr r1, .L08075DE8 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #2
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08075DF0
    ldr r0, .L08075DE8 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    adds r1, r0, #0
    lsls r0, r1, #4
    ldr r1, .L08075DEC @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    subs r1, r0, r2
    movs r0, #0xc8
    bl func_08014D80
    ldr r0, .L08075DE8 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08071424
    b .L0807603E
    .align 2, 0
.L08075DE8: .4byte 0x0203E0FC
.L08075DEC: .4byte gBmSt
.L08075DF0:
    ldr r1, .L08075E3C @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5d
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L08075E48
    ldr r0, .L08075E40 @ =0x000002CE
    ldr r1, .L08075E3C @ =0x0203E0FC
    ldr r2, [r7, #0xc]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r2, .L08075E44 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    bl func_08014D80
    ldr r0, .L08075E3C @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_080714A0
    b .L0807603E
    .align 2, 0
.L08075E3C: .4byte 0x0203E0FC
.L08075E40: .4byte 0x000002CE
.L08075E44: .4byte gBmSt
.L08075E48:
    movs r0, #0
    ldr r1, .L08075E88 @ =0x0203E0FC
    ldr r2, [r7, #0xc]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, #4
    adds r2, r1, r2
    ldr r3, [r2]
    adds r1, r3, #0
    adds r2, r3, #0
    adds r2, #0x55
    ldrb r1, [r2]
    cmp r1, #0x1b
    beq .L08075E8C
    ldr r1, .L08075E88 @ =0x0203E0FC
    ldr r2, [r7, #0xc]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, #4
    adds r2, r1, r2
    ldr r3, [r2]
    adds r1, r3, #0
    adds r2, r3, #0
    adds r2, #0x55
    ldrb r1, [r2]
    cmp r1, #0x33
    beq .L08075E8C
    b .L08075E8E
    .align 2, 0
.L08075E88: .4byte 0x0203E0FC
.L08075E8C:
    movs r0, #1
.L08075E8E:
    str r0, [r7, #0x10]
    ldr r0, [r7, #0x10]
    cmp r0, #0
    beq .L08075EF4
    ldr r1, .L08075ECC @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5c
    ldrb r0, [r1]
    movs r1, #2
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x18
    lsrs r0, r1, #0x18
    cmp r0, #0
    beq .L08075ED0
    movs r0, #0xaf
    str r0, [r7, #4]
    ldr r0, .L08075ECC @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    movs r1, #1
    bl func_0807151C
    b .L08075EEC
    .align 2, 0
.L08075ECC: .4byte 0x0203E0FC
.L08075ED0:
    movs r0, #0xb0
    str r0, [r7, #4]
    ldr r0, .L08075EF0 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    movs r1, #0
    bl func_0807151C
.L08075EEC:
    b .L08075F18
    .align 2, 0
.L08075EF0: .4byte 0x0203E0FC
.L08075EF4:
    ldr r1, .L08075F10 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5c
    ldrb r0, [r1]
    movs r1, #2
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x18
    lsrs r0, r1, #0x18
    cmp r0, #0
    beq .L08075F14
    movs r0, #0xd5
    str r0, [r7, #4]
    b .L08075F18
    .align 2, 0
.L08075F10: .4byte 0x0203E0FC
.L08075F14:
    movs r0, #0xd2
    str r0, [r7, #4]
.L08075F18:
    ldr r1, .L08075FD4 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5a
    ldrh r0, [r1]
    movs r1, #1
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08075FDC
    ldr r0, [r7, #4]
    ldr r1, .L08075FD4 @ =0x0203E0FC
    ldr r2, [r7, #0xc]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r2, .L08075FD8 @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    bl func_08014D80
    ldr r0, .L08075FD4 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r4, [r1]
    ldr r0, .L08075FD4 @ =0x0203E0FC
    ldr r1, [r7, #8]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r1, r2, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806BA3C
    lsls r2, r0, #0x18
    lsrs r1, r2, #0x18
    adds r0, r4, #0
    bl func_0806DE44
    bl func_080751E0
    ldr r0, .L08075FD4 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    adds r1, r0, #0
    lsls r0, r1, #4
    ldr r1, .L08075FD8 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    subs r1, r0, r2
    movs r0, #0xd8
    bl func_08014D80
    ldr r0, .L08075FD4 @ =0x0203E0FC
    ldr r1, [r7, #8]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DDD4
    b .L0807603E
    .align 2, 0
.L08075FD4: .4byte 0x0203E0FC
.L08075FD8: .4byte gBmSt
.L08075FDC:
    ldr r0, [r7, #4]
    ldr r1, .L08076048 @ =0x0203E0FC
    ldr r2, [r7, #0xc]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r2, .L0807604C @ =gBmSt
    movs r4, #0xc
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    bl func_08014D80
    ldr r0, .L08076048 @ =0x0203E0FC
    ldr r1, [r7, #0xc]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r4, [r1]
    ldr r0, .L08076048 @ =0x0203E0FC
    ldr r1, [r7, #8]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    adds r1, r2, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806BA3C
    lsls r2, r0, #0x18
    lsrs r1, r2, #0x18
    adds r0, r4, #0
    bl func_0806E054
.L0807603E:
    add sp, #0x14
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076048: .4byte 0x0203E0FC
.L0807604C: .4byte gBmSt
    func_end func_08075C90

    thumb_func_start func_08076050
func_08076050: @ 0x08076050
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L0807608C @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #0xd]
    ldr r0, [r7, #4]
    cmp r1, r0
    bgt .L08076090
    ldr r0, .L0807608C @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldrb r1, [r0, #0xd]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #0xd]
    b .L080760C4
    .align 2, 0
.L0807608C: .4byte 0x0203E0FC
.L08076090:
    ldr r0, .L08076120 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, .L08076120 @ =0x0203E0FC
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r3, [r7, #4]
    adds r2, r3, #0
    ldrb r3, [r1, #0xd]
    subs r1, r3, r2
    ldrb r2, [r0, #0xd]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #0xd]
.L080760C4:
    ldr r0, .L08076120 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, .L08076120 @ =0x0203E0FC
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r0, [r0, #0xd]
    ldrb r1, [r1, #0xc]
    cmp r0, r1
    bls .L08076116
    ldr r0, .L08076120 @ =0x0203E0FC
    ldr r1, [r7]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, .L08076120 @ =0x0203E0FC
    ldr r2, [r7]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldrb r2, [r0, #0xd]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1, #0xc]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #0xd]
.L08076116:
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076120: .4byte 0x0203E0FC
    func_end func_08076050

    thumb_func_start func_08076124
func_08076124: @ 0x08076124
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0807613C @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x5f
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08076140
    b .L08076146
    .align 2, 0
.L0807613C: .4byte 0x0203E0FC
.L08076140:
    ldr r0, [r7]
    bl Proc_Break
.L08076146:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08076124

    thumb_func_start func_08076150
func_08076150: @ 0x08076150
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0807617C @ =0x0203E0FC
    ldr r2, .L0807617C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_0807160C
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807617C: .4byte 0x0203E0FC
    func_end func_08076150

    thumb_func_start func_08076180
func_08076180: @ 0x08076180
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080761AC @ =0x0203E0FC
    ldr r2, .L080761AC @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08073550
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080761AC: .4byte 0x0203E0FC
    func_end func_08076180

    thumb_func_start func_080761B0
func_080761B0: @ 0x080761B0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080761DC @ =0x0203E0FC
    ldr r2, .L080761DC @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08073878
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080761DC: .4byte 0x0203E0FC
    func_end func_080761B0

    thumb_func_start func_080761E0
func_080761E0: @ 0x080761E0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0807620C @ =0x0203E0FC
    ldr r2, .L0807620C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_080716E0
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807620C: .4byte 0x0203E0FC
    func_end func_080761E0

    thumb_func_start func_08076210
func_08076210: @ 0x08076210
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076240 @ =0x0203E0FC
    ldr r2, .L08076240 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L08076244 @ =0x083F51E8
    ldr r2, .L08076248 @ =0x083F6314
    bl func_08071E4C
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076240: .4byte 0x0203E0FC
.L08076244: .4byte 0x083F51E8
.L08076248: .4byte 0x083F6314
    func_end func_08076210

    thumb_func_start func_0807624C
func_0807624C: @ 0x0807624C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0807627C @ =0x0203E0FC
    ldr r2, .L0807627C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L08076280 @ =0x083F51E8
    ldr r2, .L08076284 @ =0x083F62F4
    bl func_08071E4C
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807627C: .4byte 0x0203E0FC
.L08076280: .4byte 0x083F51E8
.L08076284: .4byte 0x083F62F4
    func_end func_0807624C

    thumb_func_start func_08076288
func_08076288: @ 0x08076288
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080762B8 @ =0x0203E0FC
    ldr r2, .L080762B8 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L080762BC @ =0x083F66A0
    ldr r2, .L080762C0 @ =0x083F695C
    movs r3, #0x8b
    bl func_08072124
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080762B8: .4byte 0x0203E0FC
.L080762BC: .4byte 0x083F66A0
.L080762C0: .4byte 0x083F695C
    func_end func_08076288

    thumb_func_start func_080762C4
func_080762C4: @ 0x080762C4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080762F4 @ =0x0203E0FC
    ldr r2, .L080762F4 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L080762F8 @ =0x083F6334
    ldr r2, .L080762FC @ =0x083F695C
    movs r3, #0x89
    bl func_08072124
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080762F4: .4byte 0x0203E0FC
.L080762F8: .4byte 0x083F6334
.L080762FC: .4byte 0x083F695C
    func_end func_080762C4

    thumb_func_start func_08076300
func_08076300: @ 0x08076300
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076330 @ =0x0203E0FC
    ldr r2, .L08076330 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L08076334 @ =0x083F64A8
    ldr r2, .L08076338 @ =0x083F695C
    movs r3, #0x8a
    bl func_08072124
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076330: .4byte 0x0203E0FC
.L08076334: .4byte 0x083F64A8
.L08076338: .4byte 0x083F695C
    func_end func_08076300

    thumb_func_start func_0807633C
func_0807633C: @ 0x0807633C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0807636C @ =0x0203E0FC
    ldr r2, .L0807636C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L08076370 @ =0x083F66A0
    ldr r2, .L08076374 @ =0x083F695C
    movs r3, #0x8b
    bl func_08072124
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807636C: .4byte 0x0203E0FC
.L08076370: .4byte 0x083F66A0
.L08076374: .4byte 0x083F695C
    func_end func_0807633C

    thumb_func_start func_08076378
func_08076378: @ 0x08076378
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080763A8 @ =0x0203E0FC
    ldr r2, .L080763A8 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L080763AC @ =0x083F6334
    ldr r2, .L080763B0 @ =0x083F695C
    movs r3, #0x89
    bl func_08072124
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080763A8: .4byte 0x0203E0FC
.L080763AC: .4byte 0x083F6334
.L080763B0: .4byte 0x083F695C
    func_end func_08076378

    thumb_func_start func_080763B4
func_080763B4: @ 0x080763B4
    push {r4, r5, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08076464 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L080763D2
    movs r0, #0xb4
    bl m4aSongNumStart
.L080763D2:
    ldr r0, .L08076468 @ =0x0203E0FC
    ldr r1, .L0807646C @ =0x0203A470
    adds r2, r1, #0
    adds r1, #0x73
    adds r2, r0, #0
    adds r0, #0x60
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L08076468 @ =0x0203E0FC
    ldr r1, .L0807646C @ =0x0203A470
    adds r2, r1, #0
    adds r1, #0x74
    adds r2, r0, #0
    adds r0, #0x61
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L08076468 @ =0x0203E0FC
    ldr r2, .L08076468 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r1, .L08076468 @ =0x0203E0FC
    ldr r3, .L08076468 @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x59
    ldrb r2, [r3]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r2, .L08076468 @ =0x0203E0FC
    ldr r4, .L08076468 @ =0x0203E0FC
    adds r3, r4, #0
    adds r4, #0x59
    ldrb r3, [r4]
    adds r5, r3, #0
    lsls r4, r5, #2
    adds r4, r4, r3
    lsls r3, r4, #2
    adds r2, r2, r3
    ldr r3, [r2]
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    bl func_080726C0
    add sp, #4
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076464: .4byte gPlaySt
.L08076468: .4byte 0x0203E0FC
.L0807646C: .4byte 0x0203A470
    func_end func_080763B4

    thumb_func_start func_08076470
func_08076470: @ 0x08076470
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080764AC @ =0x0203E0FC
    ldr r2, .L080764AC @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r2, r0, r1
    ldr r0, [r2]
    ldr r2, .L080764AC @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x60
    ldrb r1, [r2]
    ldr r3, .L080764AC @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x61
    ldrb r2, [r3]
    bl func_080726C0
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080764AC: .4byte 0x0203E0FC
    func_end func_08076470

    thumb_func_start func_080764B0
func_080764B0: @ 0x080764B0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080764DC @ =0x0203E0FC
    ldr r2, .L080764DC @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x58
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08072898
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080764DC: .4byte 0x0203E0FC
    func_end func_080764B0

    thumb_func_start func_080764E0
func_080764E0: @ 0x080764E0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08076504 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x60
    ldrb r0, [r1]
    ldr r2, .L08076504 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x61
    ldrb r1, [r2]
    bl func_08073A54
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076504: .4byte 0x0203E0FC
    func_end func_080764E0

    thumb_func_start func_08076508
func_08076508: @ 0x08076508
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076534 @ =0x0203E0FC
    ldr r2, .L08076534 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08072C20
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076534: .4byte 0x0203E0FC
    func_end func_08076508

    thumb_func_start func_08076538
func_08076538: @ 0x08076538
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076564 @ =0x0203E0FC
    ldr r2, .L08076564 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08073060
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076564: .4byte 0x0203E0FC
    func_end func_08076538

    thumb_func_start func_08076568
func_08076568: @ 0x08076568
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076594 @ =0x0203E0FC
    ldr r2, .L08076594 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08073198
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076594: .4byte 0x0203E0FC
    func_end func_08076568

    thumb_func_start func_08076598
func_08076598: @ 0x08076598
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080765C4 @ =0x0203E0FC
    ldr r2, .L080765C4 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    bl func_08072D10
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080765C4: .4byte 0x0203E0FC
    func_end func_08076598

    thumb_func_start func_080765C8
func_080765C8: @ 0x080765C8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080765F8 @ =0x0203E0FC
    ldr r2, .L080765F8 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    movs r1, #0
    bl func_0806DB94
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080765F8: .4byte 0x0203E0FC
    func_end func_080765C8

    thumb_func_start func_080765FC
func_080765FC: @ 0x080765FC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0807662C @ =0x0203E0FC
    ldr r2, .L0807662C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DC14
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807662C: .4byte 0x0203E0FC
    func_end func_080765FC

    thumb_func_start func_08076630
func_08076630: @ 0x08076630
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076660 @ =0x0203E0FC
    ldr r2, .L08076660 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DAB4
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076660: .4byte 0x0203E0FC
    func_end func_08076630

    thumb_func_start func_08076664
func_08076664: @ 0x08076664
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L080766D0 @ =0x0203E0FC
    ldr r2, .L080766D0 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    adds r1, r0, #0
    lsls r0, r1, #4
    ldr r1, .L080766D4 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    subs r1, r0, r2
    adds r0, r1, #0
    adds r0, #8
    ldr r1, .L080766D0 @ =0x0203E0FC
    ldr r3, .L080766D0 @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x59
    ldrb r2, [r3]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r2, .L080766D4 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    adds r2, r1, #0
    adds r2, #8
    adds r1, r2, #0
    bl func_080755E0
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080766D0: .4byte 0x0203E0FC
.L080766D4: .4byte gBmSt
    func_end func_08076664

    thumb_func_start func_080766D8
func_080766D8: @ 0x080766D8
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L08076758 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L080766F6
    movs r0, #0xb5
    bl m4aSongNumStart
.L080766F6:
    ldr r0, .L0807675C @ =0x0203E0FC
    ldr r2, .L0807675C @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    adds r1, r0, #0
    lsls r0, r1, #4
    ldr r1, .L08076760 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    subs r1, r0, r2
    adds r0, r1, #0
    adds r0, #8
    ldr r1, .L0807675C @ =0x0203E0FC
    ldr r3, .L0807675C @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x59
    ldrb r2, [r3]
    adds r4, r2, #0
    lsls r3, r4, #2
    adds r3, r3, r2
    lsls r2, r3, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r2, .L08076760 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    adds r2, r1, #0
    adds r2, #8
    adds r1, r2, #0
    bl func_0807560C
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076758: .4byte gPlaySt
.L0807675C: .4byte 0x0203E0FC
.L08076760: .4byte gBmSt
    func_end func_080766D8

    thumb_func_start func_08076764
func_08076764: @ 0x08076764
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076794 @ =0x0203E0FC
    ldr r2, .L08076794 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    bl func_0806DADC
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076794: .4byte 0x0203E0FC
    func_end func_08076764

    thumb_func_start func_08076798
func_08076798: @ 0x08076798
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08076828 @ =0x0203E0FC
    ldr r2, .L08076828 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    str r1, [r7, #4]
    ldr r0, .L08076828 @ =0x0203E0FC
    ldr r2, .L08076828 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x59
    ldrb r1, [r2]
    adds r3, r1, #0
    lsls r2, r3, #2
    adds r2, r2, r1
    lsls r1, r2, #2
    adds r0, #8
    adds r1, r0, r1
    ldr r0, [r1]
    ldr r2, .L08076828 @ =0x0203E0FC
    adds r1, r2, #0
    adds r2, #0x60
    ldrb r1, [r2]
    adds r2, r1, #0
    lsls r1, r2, #4
    ldr r3, .L08076828 @ =0x0203E0FC
    adds r2, r3, #0
    adds r3, #0x61
    ldrb r2, [r3]
    adds r3, r2, #0
    lsls r2, r3, #4
    bl func_0806DAFC
    ldr r0, [r7, #4]
    ldr r1, .L08076828 @ =0x0203E0FC
    adds r2, r1, #0
    adds r1, #0x60
    ldrb r2, [r0, #0x10]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #0x10]
    ldr r0, [r7, #4]
    ldr r1, .L08076828 @ =0x0203E0FC
    adds r2, r1, #0
    adds r1, #0x61
    ldrb r2, [r0, #0x11]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0, #0x11]
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076828: .4byte 0x0203E0FC
    func_end func_08076798

    thumb_func_start func_0807682C
func_0807682C: @ 0x0807682C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl func_080750DC
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0807682C

    thumb_func_start func_08076844
func_08076844: @ 0x08076844
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl func_08075168
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08076844
