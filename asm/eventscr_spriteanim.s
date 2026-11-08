    .include "asm_prelude.inc"

    thumb_func_start func_08011B7C
func_08011B7C: @ 0x08011B7C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0x18
    mov r8, r0
    ldr r1, .L08011BDC @ =gBmSt
    movs r2, #0xc
    ldrsh r0, [r1, r2]
    mov r5, r8
    ldr r3, [r5, #0x2c]
    subs r3, r3, r0
    adds r3, #8
    movs r2, #0xe
    ldrsh r0, [r1, r2]
    ldr r4, [r5, #0x30]
    subs r4, r4, r0
    adds r4, #8
    ldr r6, [r5, #0x38]
    ldr r0, [r6, #4]
    ldr r1, [r6]
    ldr r2, [r6, #8]
    ldr r5, .L08011BE0 @ =0x000001FF
    ands r3, r5
    movs r5, #0xff
    ands r4, r5
    ldrh r5, [r6, #0xc]
    adds r4, r5, r4
    str r4, [sp]
    movs r4, #0
    str r4, [sp, #4]
    ldrb r4, [r6, #0x10]
    str r4, [sp, #8]
    ldrb r4, [r6, #0x11]
    str r4, [sp, #0xc]
    ldrh r4, [r6, #0xe]
    str r4, [sp, #0x10]
    movs r4, #4
    str r4, [sp, #0x14]
    bl func_080AA978
    mov r1, r8
    str r0, [r1, #0x34]
    add sp, #0x18
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08011BDC: .4byte gBmSt
.L08011BE0: .4byte 0x000001FF
    func_end func_08011B7C

    thumb_func_start func_08011BE4
func_08011BE4: @ 0x08011BE4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r6, [r4, #0x34]
    ldr r5, [r6]
    cmp r5, #0
    beq .L08011C24
    ldr r2, .L08011C1C @ =gBmSt
    movs r1, #0xc
    ldrsh r0, [r2, r1]
    ldr r1, [r4, #0x2c]
    subs r1, r1, r0
    adds r1, #8
    movs r3, #0xe
    ldrsh r0, [r2, r3]
    ldr r2, [r4, #0x30]
    subs r2, r2, r0
    adds r2, #8
    ldr r0, .L08011C20 @ =0x000001FF
    ands r1, r0
    movs r0, #0xff
    ands r2, r0
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r6, #0
    bl SetSpriteAnimProcParameters
    b .L08011C2C
    .align 2, 0
.L08011C1C: .4byte gBmSt
.L08011C20: .4byte 0x000001FF
.L08011C24:
    adds r0, r4, #0
    bl Proc_Break
    str r5, [r4, #0x34]
.L08011C2C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08011BE4

    thumb_func_start func_08011C34
func_08011C34: @ 0x08011C34
    push {lr}
    ldr r0, [r0, #0x34]
    cmp r0, #0
    beq .L08011C40
    bl EndSpriteAnimProc
.L08011C40:
    pop {r0}
    bx r0
    func_end func_08011C34

    thumb_func_start func_08011C44
func_08011C44: @ 0x08011C44
    push {r4, r5, r6, lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x30]
    ldr r6, [r0, #4]
    ldr r2, [r0, #8]
    movs r0, #0x80
    lsls r0, r0, #8
    ands r0, r2
    cmp r0, #0
    bne .L08011C64
    ldr r4, .L08011C60 @ =0x0000FFFF
    ands r4, r2
    b .L08011C68
    .align 2, 0
.L08011C60: .4byte 0x0000FFFF
.L08011C64:
    movs r4, #1
    rsbs r4, r4, #0
.L08011C68:
    ldr r0, [r1, #0x30]
    ldrh r2, [r0, #0xa]
    movs r0, #0x80
    lsls r0, r0, #8
    ands r0, r2
    movs r5, #1
    rsbs r5, r5, #0
    cmp r0, #0
    bne .L08011C7C
    adds r5, r2, #0
.L08011C7C:
    adds r2, r1, #0
    adds r2, #0x5e
    movs r0, #4
    ldrh r2, [r2]
    ands r0, r2
    cmp r0, #0
    beq .L08011C8E
    movs r0, #0
    b .L08011C9A
.L08011C8E:
    ldr r0, .L08011CA0 @ =0x08B923EC
    bl Proc_Start
    str r4, [r0, #0x2c]
    str r5, [r0, #0x30]
    str r6, [r0, #0x38]
.L08011C9A:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08011CA0: .4byte 0x08B923EC
    func_end func_08011C44

    thumb_func_start func_08011CA4
func_08011CA4: @ 0x08011CA4
    push {lr}
    ldr r0, .L08011CB4 @ =0x08B923EC
    bl Proc_Find
    bl Proc_End
    pop {r1}
    bx r1
    .align 2, 0
.L08011CB4: .4byte 0x08B923EC
    func_end func_08011CA4

    thumb_func_start func_08011CB8
func_08011CB8: @ 0x08011CB8
    push {lr}
    ldr r0, .L08011CD4 @ =0x08B923EC
    bl Proc_Find
    cmp r0, #0
    beq .L08011CD8
    ldr r0, [r0, #0x34]
    cmp r0, #0
    beq .L08011CD0
    ldr r0, [r0]
    cmp r0, #0
    bne .L08011CD8
.L08011CD0:
    movs r0, #0
    b .L08011CDA
    .align 2, 0
.L08011CD4: .4byte 0x08B923EC
.L08011CD8:
    movs r0, #1
.L08011CDA:
    pop {r1}
    bx r1
    func_end func_08011CB8

    thumb_func_start func_08011CE0
func_08011CE0: @ 0x08011CE0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, [r5, #0x30]
    ldr r6, [r0, #4]
    ldr r7, [r0, #8]
    ldr r4, [r0, #0xc]
    adds r1, r5, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08011D00
    movs r0, #0
    b .L08011D1A
.L08011D00:
    movs r1, #0xff
    adds r2, r4, #0
    ands r2, r1
    asrs r3, r4, #0x10
    ands r3, r1
    asrs r0, r4, #0x18
    ands r0, r1
    str r0, [sp]
    str r5, [sp, #4]
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080AA92C
.L08011D1A:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08011CE0

    thumb_func_start func_08011D24
func_08011D24: @ 0x08011D24
    push {lr}
    bl func_080AA964
    movs r0, #0
    pop {r1}
    bx r1
    func_end func_08011D24

    thumb_func_start EvtCmd_08011D30
EvtCmd_08011D30: @ 0x08011D30
    movs r0, #0
    bx lr
    func_end EvtCmd_08011D30

    thumb_func_start func_08011D34
func_08011D34: @ 0x08011D34
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r6, r0, #0
    mov r8, r1
    mov sb, r2
    mov sl, r3
    ldr r7, [sp, #0x24]
    ldr r5, [sp, #0x2c]
    movs r0, #0
    str r0, [sp]
    ldr r4, .L08011DA4 @ =gMutableUnitInfo
    ldr r2, .L08011DA8 @ =0x01000004
    mov r0, sp
    adds r1, r4, #0
    bl CpuFastSet
    movs r0, #3
    ands r5, r0
    lsls r5, r5, #1
    movs r0, #7
    rsbs r0, r0, #0
    ldrb r1, [r4, #3]
    ands r0, r1
    orrs r0, r5
    movs r1, #7
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    strb r0, [r4, #3]
    strb r6, [r4]
    mov r0, r8
    strb r0, [r4, #1]
    mov r1, sb
    strb r1, [r4, #4]
    mov r0, sl
    strb r0, [r4, #5]
    strb r7, [r4, #6]
    add r1, sp, #0x28
    ldrb r1, [r1]
    strb r1, [r4, #7]
    adds r0, r4, #0
    ldr r1, [sp, #0x30]
    bl LoadUnitWrapper
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08011DA4: .4byte gMutableUnitInfo
.L08011DA8: .4byte 0x01000004
    func_end func_08011D34

    thumb_func_start func_08011DAC
func_08011DAC: @ 0x08011DAC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r6, r1, #0
    movs r0, #0
    str r0, [sp]
    ldr r5, .L08011DFC @ =gMutableUnitInfo
    ldr r2, .L08011E00 @ =0x01000004
    mov r0, sp
    adds r1, r5, #0
    bl CpuFastSet
    ldrb r2, [r4, #3]
    movs r1, #6
    ands r1, r2
    movs r0, #7
    rsbs r0, r0, #0
    ldrb r3, [r5, #3]
    ands r0, r3
    orrs r0, r1
    lsrs r2, r2, #3
    lsls r2, r2, #3
    movs r1, #7
    ands r0, r1
    orrs r0, r2
    strb r0, [r5, #3]
    ldrb r0, [r4]
    strb r0, [r5]
    ldrb r0, [r4, #1]
    strb r0, [r5, #1]
    cmp r6, #0
    beq .L08011E04
    ldrb r0, [r4, #4]
    strb r0, [r5, #4]
    ldrb r0, [r4, #5]
    strb r0, [r5, #5]
    ldrb r1, [r4, #6]
    ldrb r2, [r4, #7]
    b .L08011E0E
    .align 2, 0
.L08011DFC: .4byte gMutableUnitInfo
.L08011E00: .4byte 0x01000004
.L08011E04:
    ldrb r1, [r4, #6]
    strb r1, [r5, #4]
    ldrb r0, [r4, #7]
    strb r0, [r5, #5]
    adds r2, r0, #0
.L08011E0E:
    ldr r0, .L08011E24 @ =gMutableUnitInfo
    strb r1, [r0, #6]
    strb r2, [r0, #7]
    adds r1, r6, #0
    bl LoadUnitWrapper
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08011E24: .4byte gMutableUnitInfo
    func_end func_08011DAC

    thumb_func_start func_08011E28
func_08011E28: @ 0x08011E28
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r7, r0, #0
    ldr r1, [r7, #0x54]
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08011E46
    adds r0, r7, #0
    bl Proc_End
    b .L08011EEE
.L08011E46:
    ldrb r4, [r1, #6]
    str r4, [r7, #0x2c]
    ldrb r3, [r1, #7]
    str r3, [r7, #0x30]
    ldr r6, .L08011F00 @ =gMapUnit
    ldr r1, [r6]
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08011EE4
    movs r0, #0xff
    mov sb, r0
    movs r1, #1
    rsbs r1, r1, #0
    mov sl, r1
    mov r2, sl
    str r2, [sp]
    ldr r2, .L08011F04 @ =0x08BE3888
    adds r0, r4, #0
    adds r1, r3, #0
    bl MapFloodExtended
    movs r5, #0
    ldr r0, .L08011F08 @ =gBmMapSize
    movs r3, #2
    ldrsh r1, [r0, r3]
    cmp r5, r1
    bge .L08011EDC
    movs r3, #0
    ldrsh r2, [r0, r3]
    str r2, [sp, #8]
    str r1, [sp, #4]
.L08011E8C:
    movs r3, #0
    adds r6, r5, #1
    mov ip, r6
    ldr r0, [sp, #8]
    cmp r3, r0
    bge .L08011ED4
    ldr r1, .L08011F0C @ =gBmMapMovement
    ldr r0, [r1]
    lsls r1, r5, #2
    adds r0, r1, r0
    ldr r0, [r0]
    str r0, [sp, #0xc]
    ldr r2, .L08011F08 @ =gBmMapSize
    movs r6, #0
    ldrsh r4, [r2, r6]
    ldr r0, .L08011F00 @ =gMapUnit
    mov r8, r0
.L08011EAE:
    ldr r2, [sp, #0xc]
    adds r0, r2, r3
    ldrb r2, [r0]
    cmp sb, r2
    ble .L08011ECE
    mov r6, r8
    ldr r0, [r6]
    adds r0, r1, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08011ECE
    mov sb, r2
    str r3, [sp]
    mov sl, r5
.L08011ECE:
    adds r3, #1
    cmp r3, r4
    blt .L08011EAE
.L08011ED4:
    mov r5, ip
    ldr r0, [sp, #4]
    cmp r5, r0
    blt .L08011E8C
.L08011EDC:
    ldr r1, [sp]
    str r1, [r7, #0x2c]
    mov r2, sl
    str r2, [r7, #0x30]
.L08011EE4:
    ldr r1, [r7, #0x2c]
    ldr r2, [r7, #0x30]
    adds r0, r7, #0
    bl EnsureCameraOntoPosition
.L08011EEE:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08011F00: .4byte gMapUnit
.L08011F04: .4byte 0x08BE3888
.L08011F08: .4byte gBmMapSize
.L08011F0C: .4byte gBmMapMovement
    func_end func_08011E28

    thumb_func_start func_08011F10
func_08011F10: @ 0x08011F10
    push {r4, r5, r6, lr}
    sub sp, #0x14
    adds r4, r0, #0
    ldr r5, [r4, #0x54]
    ldr r1, [r4, #0x2c]
    ldr r2, [r4, #0x30]
    movs r0, #1
    str r0, [sp]
    adds r0, r4, #0
    movs r3, #1
    bl StartWarpEffect_080209F4
    add r1, sp, #4
    adds r0, r5, #0
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldr r0, [r0]
    str r0, [r1]
    add r2, sp, #4
    adds r1, r2, #0
    ldr r0, [r4, #0x2c]
    strb r0, [r1, #6]
    strb r0, [r2, #4]
    ldr r0, [r4, #0x30]
    strb r0, [r1, #7]
    strb r0, [r2, #5]
    adds r0, r1, #0
    bl CreateUnit
    adds r5, #0x10
    str r5, [r4, #0x54]
    add sp, #0x14
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08011F10

    thumb_func_start EvtCmd_WarpLoadUnits
EvtCmd_WarpLoadUnits: @ 0x08011F58
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08011FA4 @ =gMapOther
    ldr r0, [r0]
    movs r1, #0
    bl MapFill
    ldr r0, .L08011FA8 @ =0x08B92414
    adds r1, r4, #0
    bl Proc_StartBlocking
    adds r2, r0, #0
    ldr r0, [r4, #0x30]
    ldr r0, [r0, #4]
    str r0, [r2, #0x54]
    movs r3, #0
    adds r0, r4, #0
    adds r0, #0x4d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08011F94
    adds r1, r4, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08011F96
.L08011F94:
    movs r3, #1
.L08011F96:
    adds r0, r2, #0
    adds r0, #0x64
    strh r3, [r0]
    movs r0, #2
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08011FA4: .4byte gMapOther
.L08011FA8: .4byte 0x08B92414
    func_end EvtCmd_WarpLoadUnits
