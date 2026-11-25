    .include "asm_prelude.inc"

    thumb_func_start InitMus
InitMus: @ 0x0806BA4C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    movs r0, #0
    str r0, [r7]
.L0806BA56:
    ldr r0, [r7]
    cmp r0, #3
    ble .L0806BA5E
    b .L0806BA80
.L0806BA5E:
    ldr r0, .L0806BA7C @ =0x030014E8
    ldr r1, [r7]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #1
    str r1, [r7]
    b .L0806BA56
    .align 2, 0
.L0806BA7C: .4byte 0x030014E8
.L0806BA80:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end InitMus

    thumb_func_start func_0806BA88
func_0806BA88: @ 0x0806BA88
    push {r4, r7, lr}
    sub sp, #0x14
    add r7, sp, #4
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    adds r0, r1, #0
    lsls r1, r0, #0x10
    lsrs r0, r1, #0x10
    ldr r1, [r7]
    movs r2, #0x11
    ldrsb r2, [r1, r2]
    adds r1, r2, #0
    lsls r2, r1, #0x10
    lsrs r1, r2, #0x10
    ldr r3, [r7, #4]
    adds r2, r3, #0
    lsls r3, r2, #0x10
    lsrs r2, r3, #0x10
    movs r3, #1
    rsbs r3, r3, #0
    ldr r4, [r7, #8]
    str r4, [sp]
    bl StartMuInternal
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x3e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    b .L0806BAE6
.L0806BAE6:
    add sp, #0x14
    pop {r4, r7}
    pop {r1}
    bx r1
    func_end func_0806BA88

    thumb_func_start StartMu
StartMu: @ 0x0806BAF0
    push {r4, r7, lr}
    sub sp, #0x10
    add r7, sp, #4
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #4]
    ldrb r0, [r1, #4]
    str r0, [r7, #8]
    ldr r0, [r7]
    ldr r1, [r0, #0xc]
    movs r2, #0x80
    lsls r2, r2, #4
    adds r0, r1, #0
    ands r0, r2
    cmp r0, #0
    beq .L0806BB44
    ldr r0, [r7]
    ldrb r1, [r0, #0x1c]
    adds r0, r1, #0
    bl GetTrap
    adds r1, r0, #0
    ldrb r0, [r1, #3]
    cmp r0, #0x35
    beq .L0806BB38
    cmp r0, #0x35
    bgt .L0806BB2C
    cmp r0, #0x34
    beq .L0806BB32
    b .L0806BB44
.L0806BB2C:
    cmp r0, #0x36
    beq .L0806BB3E
    b .L0806BB44
.L0806BB32:
    movs r0, #0x5b
    str r0, [r7, #8]
    b .L0806BB44
.L0806BB38:
    movs r0, #0x5c
    str r0, [r7, #8]
    b .L0806BB44
.L0806BB3E:
    movs r0, #0x5d
    str r0, [r7, #8]
    b .L0806BB44
.L0806BB44:
    ldr r0, [r7]
    bl GetUnitSpritePalette
    ldr r1, [r7]
    movs r2, #0x10
    ldrsb r2, [r1, r2]
    adds r1, r2, #0
    lsls r2, r1, #0x10
    lsrs r1, r2, #0x10
    ldr r2, [r7]
    movs r3, #0x11
    ldrsb r3, [r2, r3]
    adds r2, r3, #0
    lsls r3, r2, #0x10
    lsrs r2, r3, #0x10
    ldr r4, [r7, #8]
    adds r3, r4, #0
    lsls r4, r3, #0x10
    lsrs r3, r4, #0x10
    movs r4, #1
    rsbs r4, r4, #0
    str r0, [sp]
    adds r0, r1, #0
    adds r1, r2, #0
    adds r2, r3, #0
    adds r3, r4, #0
    bl StartMuInternal
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    ldr r0, [r7, #4]
    adds r1, r0, #0
    adds r0, #0x3e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7, #4]
    adds r0, r1, #0
    b .L0806BBA2
.L0806BBA2:
    add sp, #0x10
    pop {r4, r7}
    pop {r1}
    bx r1
    func_end StartMu

    thumb_func_start func_0806BBAC
func_0806BBAC: @ 0x0806BBAC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl func_0806CC0C
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806BBAC

    thumb_func_start EnableMuCamera
EnableMuCamera: @ 0x0806BBC4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end EnableMuCamera

    thumb_func_start DisableMuCamera
DisableMuCamera: @ 0x0806BBEC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3e
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end DisableMuCamera

    thumb_func_start func_0806BC0C
func_0806BC0C: @ 0x0806BC0C
    push {r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7]
    bl StartMu
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bne .L0806BC2A
    movs r0, #0
    b .L0806BC80
.L0806BC2A:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #4
    adds r2, r0, #0
    adds r0, #0x4c
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #8]
    adds r2, r1, #0
    lsls r1, r2, #4
    adds r2, r0, #0
    adds r0, #0x4e
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #6
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    b .L0806BC80
.L0806BC80:
    add sp, #0x10
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806BC0C

    thumb_func_start func_0806BC88
func_0806BC88: @ 0x0806BC88
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl GetClassSMSId
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x3c
    ldrb r1, [r2]
    bl func_08024D60
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806BC88

    thumb_func_start StartMuInternal
StartMuInternal: @ 0x0806BCB4
    push {r4, r7, lr}
    sub sp, #0x1c
    mov r7, sp
    adds r4, r0, #0
    adds r0, r2, #0
    str r3, [r7, #8]
    adds r2, r7, #0
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #2
    strh r1, [r2]
    adds r1, r7, #4
    strh r0, [r1]
    adds r0, r7, #0
    adds r0, #0x18
    movs r1, #0
    strh r1, [r0]
    adds r0, r7, #0
    adds r0, #0x1a
    movs r1, #0
    strb r1, [r0]
    ldr r0, [r7, #8]
    movs r1, #1
    cmn r0, r1
    bne .L0806BCFA
    movs r0, #0xe0
    lsls r0, r0, #2
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    adds r1, r7, #0
    adds r1, #0x1a
    bl func_0806CEB4
    str r0, [r7, #0x14]
    b .L0806BD06
.L0806BCFA:
    ldr r0, [r7, #8]
    adds r1, r7, #0
    adds r1, #0x1a
    bl func_0806CF58
    str r0, [r7, #0x14]
.L0806BD06:
    ldr r0, [r7, #0x14]
    cmp r0, #0
    bne .L0806BD10
    movs r0, #0
    b .L0806BF44
.L0806BD10:
    ldr r1, .L0806BD3C @ =0x08C9D00C
    adds r0, r1, #0
    bl Proc_Find
    cmp r0, #0
    beq .L0806BD24
    adds r0, r7, #0
    adds r0, #0x18
    movs r1, #0xfe
    strh r1, [r0]
.L0806BD24:
    ldr r1, .L0806BD3C @ =0x08C9D00C
    adds r0, r1, #0
    movs r1, #5
    bl Proc_Start
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bne .L0806BD40
    movs r0, #0
    b .L0806BF44
    .align 2, 0
.L0806BD3C: .4byte 0x08C9D00C
.L0806BD40:
    ldr r0, [r7, #0xc]
    movs r1, #0
    str r1, [r0, #0x2c]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x3f
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
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #0
    lsls r2, r1, #4
    adds r3, r2, #0
    lsls r1, r3, #4
    adds r2, r0, #0
    adds r0, #0x4c
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r7, #2
    ldrh r2, [r1]
    adds r1, r2, #0
    lsls r2, r1, #4
    adds r3, r2, #0
    lsls r1, r3, #4
    adds r2, r0, #0
    adds r0, #0x4e
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x50
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x52
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x42
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xb
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, [r7, #0xc]
    adds r0, r7, #0
    adds r0, #0x18
    ldrh r2, [r0]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x43
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r1, [r7, #0xc]
    adds r0, r7, #4
    ldrh r2, [r0]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x40
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #0xc]
    ldr r2, [r7, #8]
    lsls r1, r2, #5
    ldr r3, .L0806BF40 @ =0x06010000
    adds r2, r1, r3
    str r2, [r0, #0x38]
    ldr r0, [r7, #0xc]
    adds r1, r7, #0
    adds r1, #0x1a
    adds r2, r0, #0
    adds r0, #0x3c
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrb r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x46
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x80
    lsls r3, r3, #4
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #0x14]
    ldr r2, [r7, #0x28]
    adds r1, r2, #0
    ldrb r2, [r0, #1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #1]
    adds r0, r7, #4
    ldrh r1, [r0]
    adds r0, r1, #0
    bl func_0806D580
    adds r1, r0, #0
    adds r0, r1, #0
    movs r1, #0xa
    bl StartSpriteAnim
    str r0, [r7, #0x10]
    ldr r1, [r7, #0x10]
    adds r0, r1, #0
    movs r1, #4
    bl SetSpriteAnimId
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    bl func_0806D554
    adds r4, r0, #0
    ldr r0, [r7, #0x14]
    ldrb r1, [r0]
    adds r0, r1, #0
    bl func_0806D524
    adds r1, r0, #0
    adds r0, r4, #0
    bl Decompress
    ldr r0, [r7, #0x14]
    ldrb r1, [r0]
    adds r0, r1, #0
    bl func_0806D524
    ldr r1, [r7, #0x10]
    str r0, [r1, #0x24]
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #0x14]
    ldr r2, [r7, #0x14]
    ldrb r3, [r2, #1]
    movs r4, #0xf
    adds r2, r3, #0
    ands r2, r4
    adds r4, r2, #0
    lsls r3, r4, #0x18
    lsrs r2, r3, #0x18
    adds r3, r2, #0
    lsls r2, r3, #0xc
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    ldr r3, [r7, #0xc]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0x10]
    str r1, [r0, #0x30]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0x14]
    str r1, [r0, #0x34]
    ldr r0, [r7, #0xc]
    ldr r1, [r0, #0x34]
    ldr r0, [r7, #0xc]
    str r0, [r1, #0x48]
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    b .L0806BF44
    .align 2, 0
.L0806BF40: .4byte 0x06010000
.L0806BF44:
    add sp, #0x1c
    pop {r4, r7}
    pop {r1}
    bx r1
    func_end StartMuInternal

    thumb_func_start func_0806BF4C
func_0806BF4C: @ 0x0806BF4C
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, [r7]
    ldr r2, [r7, #4]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x42
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, [r7, #4]
    cmp r0, #0xf
    bne .L0806BF88
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3c
    ldrb r0, [r1]
    ldr r1, [r7]
    ldr r2, [r1, #0x38]
    adds r1, r2, #0
    bl func_08025654
    b .L0806BF9A
.L0806BF88:
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x42
    movs r1, #0
    ldrsb r1, [r2, r1]
    bl SetSpriteAnimId
.L0806BF9A:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806BF4C

    thumb_func_start func_0806BFA4
func_0806BFA4: @ 0x0806BFA4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl GetClassData
    ldr r1, [r0, #0x28]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    cmp r0, #0
    beq .L0806BFD0
    ldr r0, [r7]
    movs r1, #1
    bl func_0806BF4C
    b .L0806BFD8
.L0806BFD0:
    ldr r0, [r7]
    movs r1, #2
    bl func_0806BF4C
.L0806BFD8:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806BFA4

    thumb_func_start MU_SetDefaultFacing_Auto
MU_SetDefaultFacing_Auto: @ 0x0806BFE0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    ldr r1, .L0806BFF8 @ =0x08C9D00C
    adds r0, r1, #0
    bl Proc_Find
    str r0, [r7]
    ldr r0, [r7]
    cmp r0, #0
    bne .L0806BFFC
    b .L0806C002
    .align 2, 0
.L0806BFF8: .4byte 0x08C9D00C
.L0806BFFC:
    ldr r0, [r7]
    bl func_0806BFA4
.L0806C002:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end MU_SetDefaultFacing_Auto

    thumb_func_start SetAutoMuMoveScript
SetAutoMuMoveScript: @ 0x0806C00C
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0806C028 @ =0x08C9D00C
    adds r0, r1, #0
    bl Proc_Find
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    cmp r0, #0
    bne .L0806C02C
    b .L0806C036
    .align 2, 0
.L0806C028: .4byte 0x08C9D00C
.L0806C02C:
    ldr r1, [r7, #4]
    adds r0, r1, #0
    ldr r1, [r7]
    bl SetMuMoveScript
.L0806C036:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    func_end SetAutoMuMoveScript

    thumb_func_start MuExists
MuExists: @ 0x0806C040
    push {r7, lr}
    mov r7, sp
    ldr r1, .L0806C058 @ =0x08C9D00C
    adds r0, r1, #0
    bl Proc_Find
    adds r1, r0, #0
    adds r0, r1, #0
    cmp r0, #0
    beq .L0806C056
    movs r0, #1
.L0806C056:
    b .L0806C05C
    .align 2, 0
.L0806C058: .4byte 0x08C9D00C
.L0806C05C:
    pop {r7}
    pop {r1}
    bx r1
    func_end MuExists

    thumb_func_start MuExistsActive
MuExistsActive: @ 0x0806C064
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    movs r0, #0
    str r0, [r7, #4]
.L0806C06E:
    ldr r0, [r7, #4]
    cmp r0, #3
    ble .L0806C076
    b .L0806C0B6
.L0806C076:
    ldr r0, .L0806C0A4 @ =0x030014E8
    ldr r1, [r7, #4]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0
    beq .L0806C0AE
    ldr r0, .L0806C0A4 @ =0x030014E8
    ldr r1, [r7, #4]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, #0x48
    adds r1, r0, r1
    ldr r0, [r1]
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806C0A8
    b .L0806C0AA
    .align 2, 0
.L0806C0A4: .4byte 0x030014E8
.L0806C0A8:
    b .L0806C0AE
.L0806C0AA:
    movs r0, #1
    b .L0806C0C4
.L0806C0AE:
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L0806C06E
.L0806C0B6:
    ldr r0, [r7, #4]
    cmp r0, #3
    ble .L0806C0C0
    movs r0, #0
    b .L0806C0C4
.L0806C0C0:
    movs r0, #1
    b .L0806C0C4
.L0806C0C4:
    add sp, #8
    pop {r7}
    pop {r1}
    bx r1
    func_end MuExistsActive

    thumb_func_start IsMuActive
IsMuActive: @ 0x0806C0CC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x34]
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0806C0E2
    movs r0, #0
    b .L0806C0FC
.L0806C0E2:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #1
    beq .L0806C0F0
    b .L0806C0F4
.L0806C0F0:
    movs r0, #0
    b .L0806C0FC
.L0806C0F4:
    movs r0, #1
    b .L0806C0FC
.L0806C0F8:
    .byte 0x00, 0x20, 0xFF, 0xE7
.L0806C0FC:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end IsMuActive

    thumb_func_start SetMuMoveScript
SetMuMoveScript: @ 0x0806C104
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    movs r0, #0
    str r0, [r7, #8]
.L0806C112:
    ldr r0, [r7, #8]
    cmp r0, #0x3f
    ble .L0806C11A
    b .L0806C144
.L0806C11A:
    ldr r0, [r7]
    ldr r1, [r0, #0x34]
    adds r0, r1, #5
    ldr r1, [r7, #8]
    adds r0, r0, r1
    ldr r1, [r7, #4]
    ldr r2, [r7, #8]
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
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806C112
.L0806C144:
    ldr r1, [r7]
    ldr r0, [r1, #0x34]
    ldrb r1, [r0, #4]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #4]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    bl func_0806C2E4
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end SetMuMoveScript

    thumb_func_start func_0806C178
func_0806C178: @ 0x0806C178
    push {r4, r7, lr}
    sub sp, #0x14
    add r7, sp, #4
    adds r4, r0, #0
    adds r0, r2, #0
    str r3, [r7, #8]
    adds r2, r7, #0
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #2
    strh r1, [r2]
    adds r1, r7, #4
    strh r0, [r1]
    adds r1, r7, #0
    ldrh r0, [r1]
    adds r2, r7, #2
    ldrh r1, [r2]
    adds r3, r7, #4
    ldrh r2, [r3]
    movs r3, #1
    rsbs r3, r3, #0
    ldr r4, [r7, #8]
    str r4, [sp]
    bl StartMuInternal
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bne .L0806C1B6
    movs r0, #0
    b .L0806C1C6
.L0806C1B6:
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    ldr r1, [r7, #0x1c]
    bl SetMuMoveScript
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    b .L0806C1C6
.L0806C1C6:
    add sp, #0x14
    pop {r4, r7}
    pop {r1}
    bx r1
    func_end func_0806C178

    thumb_func_start func_0806C1D0
func_0806C1D0: @ 0x0806C1D0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    movs r1, #0
    str r1, [r0, #0x58]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    movs r1, #0
    str r1, [r0, #0x5c]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x66
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C1D0

    thumb_func_start func_0806C20C
func_0806C20C: @ 0x0806C20C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    ldr r0, [r1, #0x58]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    movs r3, #0
    ldrsh r1, [r2, r3]
    bl func_08014D80
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C20C

    thumb_func_start func_0806C230
func_0806C230: @ 0x0806C230
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x5c]
    cmp r1, #0
    beq .L0806C252
    ldr r1, [r7]
    ldr r0, [r1, #0x5c]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    bl func_08014D80
.L0806C252:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C230

    thumb_func_start func_0806C25C
func_0806C25C: @ 0x0806C25C
    push {r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, .L0806C2AC @ =0x08C9CE70
    adds r0, r1, #0
    bl Proc_Find
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bne .L0806C284
    ldr r1, .L0806C2AC @ =0x08C9CE70
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #0xc]
.L0806C284:
    ldr r0, [r7, #0xc]
    ldr r1, [r0, #0x58]
    cmp r1, #0
    bne .L0806C2B0
    ldr r0, [r7, #0xc]
    ldr r1, [r7]
    str r1, [r0, #0x58]
    ldr r1, [r7, #0xc]
    ldr r2, [r7, #8]
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
    b .L0806C2DA
    .align 2, 0
.L0806C2AC: .4byte 0x08C9CE70
.L0806C2B0:
    ldr r0, [r7, #0xc]
    ldr r1, [r0, #0x60]
    cmp r1, #0
    bne .L0806C2DA
    ldr r0, [r7, #0xc]
    ldr r1, [r7]
    ldr r2, [r7, #4]
    adds r1, r1, r2
    str r1, [r0, #0x5c]
    ldr r1, [r7, #0xc]
    ldr r2, [r7, #8]
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
.L0806C2DA:
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C25C

    thumb_func_start func_0806C2E4
func_0806C2E4: @ 0x0806C2E4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl func_0806CAF8
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C2E4

    thumb_func_start func_0806C2FC
func_0806C2FC: @ 0x0806C2FC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C2FC

    thumb_func_start func_0806C30C
func_0806C30C: @ 0x0806C30C
    push {r4, r5, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
.L0806C314:
    b .L0806C318
.L0806C316:
    .byte 0x0E, 0xE1
.L0806C318:
    adds r0, r7, #4
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldrb r3, [r2, #4]
    adds r4, r3, #1
    adds r5, r4, #0
    strb r5, [r2, #4]
    lsls r3, r3, #0x18
    lsrs r2, r3, #0x18
    adds r1, #5
    adds r2, r1, r2
    movs r1, #0
    ldrsb r1, [r2, r1]
    adds r2, r1, #0
    strh r2, [r0]
    adds r0, r7, #4
    ldrh r1, [r0]
    adds r0, r1, #1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    asrs r0, r1, #0x10
    cmp r0, #0xf
    bls .L0806C34C
    b .L0806C532
.L0806C34C:
    lsls r1, r0, #2
    ldr r2, .L0806C358 @ =.L0806C35C
    adds r0, r1, r2
    ldr r1, [r0]
    mov pc, r1
    .align 2, 0
.L0806C358: .4byte .L0806C35C
.L0806C35C: @ jump table
    .4byte .L0806C44C @ case 0
    .4byte .L0806C45A @ case 1
    .4byte .L0806C45A @ case 2
    .4byte .L0806C45A @ case 3
    .4byte .L0806C45A @ case 4
    .4byte .L0806C444 @ case 5
    .4byte .L0806C4AA @ case 6
    .4byte .L0806C4AA @ case 7
    .4byte .L0806C4AA @ case 8
    .4byte .L0806C4AA @ case 9
    .4byte .L0806C39C @ case 10
    .4byte .L0806C3E8 @ case 11
    .4byte .L0806C532 @ case 12
    .4byte .L0806C4EE @ case 13
    .4byte .L0806C522 @ case 14
    .4byte .L0806C52A @ case 15
.L0806C39C:
    ldr r0, [r7]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldrb r3, [r2, #4]
    adds r4, r3, #1
    adds r5, r4, #0
    strb r5, [r2, #4]
    lsls r3, r3, #0x18
    lsrs r2, r3, #0x18
    adds r1, #5
    adds r2, r1, r2
    movs r3, #0
    ldrsb r3, [r2, r3]
    adds r1, r3, #0
    adds r2, r0, #0
    adds r0, #0x48
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #3
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    b .L0806C536
.L0806C3E8:
    ldr r0, [r7]
    bl func_0806C2FC
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4c
    movs r2, #0
    ldrsh r0, [r1, r2]
    asrs r1, r0, #4
    adds r0, r1, #0
    lsls r1, r0, #0x10
    asrs r0, r1, #0x10
    ldr r1, .L0806C440 @ =gBmSt
    movs r3, #0xc
    ldrsh r2, [r1, r3]
    subs r0, r0, r2
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4e
    movs r4, #0
    ldrsh r1, [r2, r4]
    asrs r2, r1, #4
    adds r1, r2, #0
    lsls r2, r1, #0x10
    asrs r1, r2, #0x10
    ldr r2, .L0806C440 @ =gBmSt
    movs r4, #0xe
    ldrsh r3, [r2, r4]
    subs r1, r1, r3
    bl func_0806C540
    b .L0806C536
    .align 2, 0
.L0806C440: .4byte gBmSt
.L0806C444:
    ldr r0, [r7]
    bl func_0806CD00
    b .L0806C536
.L0806C44C:
    ldr r0, [r7]
    bl func_0806C2FC
    ldr r0, [r7]
    bl EndMu
    b .L0806C536
.L0806C45A:
    adds r0, r7, #4
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x42
    movs r3, #0
    ldrsb r3, [r2, r3]
    adds r1, r3, #0
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r2, r1, #0x10
    asrs r1, r2, #0x10
    cmp r0, r1
    beq .L0806C4A8
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl func_0806D580
    str r0, [r7, #8]
    adds r0, r7, #4
    movs r3, #0
    ldrsh r1, [r0, r3]
    ldr r0, [r7]
    bl func_0806BF4C
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
.L0806C4A8:
    b .L0806C536
.L0806C4AA:
    adds r0, r7, #4
    adds r1, r7, #4
    ldrh r2, [r1]
    subs r1, r2, #5
    adds r2, r1, #0
    strh r2, [r0]
    adds r0, r7, #4
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x42
    movs r3, #0
    ldrsb r3, [r2, r3]
    adds r1, r3, #0
    movs r4, #0
    ldrsh r0, [r0, r4]
    lsls r2, r1, #0x10
    asrs r1, r2, #0x10
    cmp r0, r1
    beq .L0806C4EC
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl func_0806D580
    str r0, [r7, #8]
    adds r0, r7, #4
    movs r2, #0
    ldrsh r1, [r0, r2]
    ldr r0, [r7]
    bl func_0806BF4C
.L0806C4EC:
    b .L0806C314
.L0806C4EE:
    ldr r0, [r7]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r3, [r7]
    ldr r2, [r3, #0x34]
    ldrb r3, [r2, #4]
    adds r4, r3, #1
    adds r5, r4, #0
    strb r5, [r2, #4]
    lsls r3, r3, #0x18
    lsrs r2, r3, #0x18
    adds r1, #5
    adds r2, r1, r2
    movs r3, #0
    ldrsb r3, [r2, r3]
    adds r1, r3, #0
    adds r2, r0, #0
    adds r0, #0x4a
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    b .L0806C314
.L0806C522:
    ldr r0, [r7]
    bl EnableMuCamera
    b .L0806C314
.L0806C52A:
    ldr r0, [r7]
    bl DisableMuCamera
    b .L0806C314
.L0806C532:
    b .L0806C534
.L0806C534:
    b .L0806C314
.L0806C536:
    add sp, #0xc
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    func_end func_0806C30C

    thumb_func_start func_0806C540
func_0806C540: @ 0x0806C540
    push {r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L0806C5AC @ =0x083F4730
    ldr r1, .L0806C5B0 @ =0x06013000
    bl Decompress
    ldr r1, .L0806C5B4 @ =0x083EF9A0
    adds r0, r1, #0
    movs r1, #2
    bl StartSpriteAnim
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    ldrh r1, [r0, #0x22]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x8c
    lsls r3, r3, #5
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x22]
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    movs r1, #0
    bl SetSpriteAnimId
    ldr r1, .L0806C5B8 @ =0x08C9CEA0
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    ldr r1, [r7, #0xc]
    str r1, [r0, #0x50]
    ldr r0, [r7, #8]
    ldr r1, [r7]
    adds r2, r1, #0
    adds r2, #8
    str r2, [r0, #0x2c]
    ldr r0, [r7, #8]
    ldr r1, [r7, #4]
    subs r2, r1, #4
    str r2, [r0, #0x30]
    add sp, #0x10
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806C5AC: .4byte 0x083F4730
.L0806C5B0: .4byte 0x06013000
.L0806C5B4: .4byte 0x083EF9A0
.L0806C5B8: .4byte 0x08C9CEA0
    func_end func_0806C540

    thumb_func_start func_0806C5BC
func_0806C5BC: @ 0x0806C5BC
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    add r7, sp, #4
    str r0, [r7]
    ldr r1, .L0806C670 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806C5DC
    ldr r1, .L0806C674 @ =0x00000397
    adds r0, r1, #0
    bl m4aSongNumStart
.L0806C5DC:
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, .L0806C678 @ =0x080C5A48
    adds r0, r1, #0
    adds r1, #0x80
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r1, r0, #4
    movs r2, #0x80
    lsls r2, r2, #2
    adds r0, r1, #0
    adds r1, r2, #0
    bl Div
    adds r1, r0, #0
    lsls r0, r1, #0x10
    asrs r4, r0, #0x10
    ldr r0, .L0806C678 @ =0x080C5A48
    movs r2, #0
    ldrsh r1, [r0, r2]
    rsbs r0, r1, #0
    lsls r1, r0, #4
    movs r2, #0x80
    lsls r2, r2, #2
    adds r0, r1, #0
    adds r1, r2, #0
    bl Div
    adds r1, r0, #0
    lsls r0, r1, #0x10
    asrs r5, r0, #0x10
    ldr r0, .L0806C678 @ =0x080C5A48
    movs r2, #0
    ldrsh r1, [r0, r2]
    lsls r0, r1, #4
    movs r1, #0x80
    lsls r1, r1, #2
    bl Div
    adds r1, r0, #0
    lsls r0, r1, #0x10
    asrs r6, r0, #0x10
    ldr r1, .L0806C678 @ =0x080C5A48
    adds r0, r1, #0
    adds r1, #0x80
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r1, r0, #4
    movs r2, #0x80
    lsls r2, r2, #2
    adds r0, r1, #0
    adds r1, r2, #0
    bl Div
    adds r2, r0, #0
    lsls r1, r2, #0x10
    asrs r0, r1, #0x10
    str r0, [sp]
    movs r0, #0
    adds r1, r4, #0
    adds r2, r5, #0
    adds r3, r6, #0
    bl SetObjAffine
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806C670: .4byte gPlaySt
.L0806C674: .4byte 0x00000397
.L0806C678: .4byte gSinLut
    func_end func_0806C5BC

    thumb_func_start func_0806C67C
func_0806C67C: @ 0x0806C67C
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    add r7, sp, #4
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    adds r2, r1, #1
    adds r3, r2, #0
    strh r3, [r0]
    lsls r1, r1, #0x10
    asrs r0, r1, #0x10
    cmp r0, #7
    ble .L0806C6A0
    ldr r0, [r7]
    bl Proc_Break
.L0806C6A0:
    movs r1, #0x80
    lsls r1, r1, #2
    movs r2, #0x80
    lsls r2, r2, #1
    ldr r3, [r7]
    adds r0, r3, #0
    adds r4, r3, #0
    adds r4, #0x64
    movs r0, #0
    ldrsh r3, [r4, r0]
    movs r0, #8
    str r0, [sp]
    movs r0, #5
    bl Interpolate
    str r0, [r7, #4]
    ldr r1, .L0806C75C @ =0x080C5A48
    adds r0, r1, #0
    adds r1, #0x80
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r1, r0, #4
    ldr r2, [r7, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    bl Div
    adds r1, r0, #0
    lsls r0, r1, #0x10
    asrs r4, r0, #0x10
    ldr r0, .L0806C75C @ =0x080C5A48
    movs r2, #0
    ldrsh r1, [r0, r2]
    rsbs r0, r1, #0
    lsls r1, r0, #4
    ldr r2, [r7, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    bl Div
    adds r1, r0, #0
    lsls r0, r1, #0x10
    asrs r5, r0, #0x10
    ldr r0, .L0806C75C @ =0x080C5A48
    movs r2, #0
    ldrsh r1, [r0, r2]
    lsls r0, r1, #4
    ldr r1, [r7, #4]
    bl Div
    adds r1, r0, #0
    lsls r0, r1, #0x10
    asrs r6, r0, #0x10
    ldr r1, .L0806C75C @ =0x080C5A48
    adds r0, r1, #0
    adds r1, #0x80
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r1, r0, #4
    ldr r2, [r7, #4]
    adds r0, r1, #0
    adds r1, r2, #0
    bl Div
    adds r2, r0, #0
    lsls r1, r2, #0x10
    asrs r0, r1, #0x10
    str r0, [sp]
    movs r0, #0
    adds r1, r4, #0
    adds r2, r5, #0
    adds r3, r6, #0
    bl SetObjAffine
    ldr r1, [r7]
    ldr r0, [r1, #0x50]
    ldr r1, [r7]
    ldr r2, [r1, #0x2c]
    adds r1, r2, #0
    subs r1, #8
    ldr r2, [r7]
    ldr r3, [r2, #0x30]
    adds r2, r3, #0
    subs r2, #8
    movs r3, #0xc0
    lsls r3, r3, #2
    orrs r2, r3
    bl DisplaySpriteAnim
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806C75C: .4byte gSinLut
    func_end func_0806C67C

    thumb_func_start func_0806C760
func_0806C760: @ 0x0806C760
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    adds r2, r1, #1
    adds r3, r2, #0
    strh r3, [r0]
    lsls r1, r1, #0x10
    asrs r0, r1, #0x10
    cmp r0, #0x27
    ble .L0806C784
    ldr r0, [r7]
    bl Proc_Break
.L0806C784:
    ldr r1, [r7]
    ldr r0, [r1, #0x50]
    ldr r2, [r7]
    ldr r1, [r2, #0x2c]
    ldr r2, [r7]
    ldr r3, [r2, #0x30]
    movs r4, #0x80
    lsls r4, r4, #1
    adds r2, r3, #0
    orrs r2, r4
    bl DisplaySpriteAnim
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806C760

    thumb_func_start func_0806C7A4
func_0806C7A4: @ 0x0806C7A4
    push {r7, lr}
    mov r7, sp
    ldr r1, .L0806C7BC @ =0x08C9CEA0
    adds r0, r1, #0
    bl Proc_Find
    adds r1, r0, #0
    adds r0, r1, #0
    cmp r0, #0
    beq .L0806C7BA
    movs r0, #1
.L0806C7BA:
    b .L0806C7C0
    .align 2, 0
.L0806C7BC: .4byte 0x08C9CEA0
.L0806C7C0:
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806C7A4

    thumb_func_start func_0806C7C8
func_0806C7C8: @ 0x0806C7C8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    bl func_0806C7A4
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    bne .L0806C7F4
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #3
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
.L0806C7F4:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C7C8

    thumb_func_start func_0806C7FC
func_0806C7FC: @ 0x0806C7FC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C7FC

    thumb_func_start func_0806C824
func_0806C824: @ 0x0806C824
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    ldrh r0, [r1]
    cmp r0, #0
    bne .L0806C852
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #2
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    b .L0806C878
.L0806C852:
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
.L0806C878:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C824

    thumb_func_start func_0806C880
func_0806C880: @ 0x0806C880
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C880

    thumb_func_start func_0806C890
func_0806C890: @ 0x0806C890
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806C890

    thumb_func_start func_0806C8A0
func_0806C8A0: @ 0x0806C8A0
    push {r4, r5, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl GetMuQ4MovementSpeed
    lsls r1, r0, #0x10
    lsrs r0, r1, #0x10
    str r0, [r7, #4]
    ldr r0, [r7]
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x48
    ldr r3, [r7, #4]
    adds r2, r3, #0
    ldrh r3, [r1]
    adds r1, r2, r3
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
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x4c
    ldr r2, .L0806CAEC @ =0x08C9CEC0
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x42
    movs r3, #0
    ldrsb r3, [r4, r3]
    adds r4, r3, #0
    lsls r3, r4, #2
    adds r2, r2, r3
    movs r4, #0
    ldrsh r3, [r2, r4]
    ldr r4, [r7, #4]
    adds r2, r3, #0
    muls r2, r4, r2
    ldrh r1, [r1]
    adds r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x4c
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
    adds r1, #0x4e
    ldr r2, .L0806CAEC @ =0x08C9CEC0
    ldr r4, [r7]
    adds r3, r4, #0
    adds r4, #0x42
    movs r3, #0
    ldrsb r3, [r4, r3]
    adds r4, r3, #0
    lsls r3, r4, #1
    adds r4, r3, #1
    adds r3, r4, #0
    lsls r4, r3, #1
    adds r2, r2, r4
    movs r5, #0
    ldrsh r3, [r2, r5]
    ldr r4, [r7, #4]
    adds r2, r3, #0
    muls r2, r4, r2
    ldrh r1, [r1]
    adds r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x4e
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
    adds r1, #0x48
    ldrh r0, [r1]
    lsrs r1, r0, #4
    adds r0, r1, #0
    lsls r1, r0, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0xf
    bhi .L0806C96C
    b .L0806CA68
.L0806C96C:
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x48
    ldrh r3, [r2]
    ldr r2, .L0806CAF0 @ =0xFFFFFF00
    adds r1, r3, r2
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
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x4c
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x48
    ldrh r2, [r3]
    ldr r3, .L0806CAEC @ =0x08C9CEC0
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x42
    movs r4, #0
    ldrsb r4, [r5, r4]
    adds r5, r4, #0
    lsls r4, r5, #2
    adds r3, r3, r4
    movs r5, #0
    ldrsh r4, [r3, r5]
    muls r2, r4, r2
    ldrh r1, [r1]
    subs r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x4c
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
    adds r1, #0x4e
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x48
    ldrh r2, [r3]
    ldr r3, .L0806CAEC @ =0x08C9CEC0
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x42
    movs r4, #0
    ldrsb r4, [r5, r4]
    adds r5, r4, #0
    lsls r4, r5, #1
    adds r5, r4, #1
    adds r4, r5, #0
    lsls r5, r4, #1
    adds r3, r3, r5
    movs r5, #0
    ldrsh r4, [r3, r5]
    muls r2, r4, r2
    ldrh r1, [r1]
    subs r1, r1, r2
    adds r2, r0, #0
    adds r0, #0x4e
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x48
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4c
    ldrh r1, [r2]
    movs r2, #0xf
    bics r1, r2
    adds r2, r0, #0
    adds r0, #0x4c
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4e
    ldrh r1, [r2]
    movs r2, #0xf
    bics r1, r2
    adds r2, r0, #0
    adds r0, #0x4e
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L0806CA68:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3e
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0806CAC8
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4c
    movs r2, #0
    ldrsh r0, [r1, r2]
    asrs r1, r0, #4
    adds r2, r1, #0
    lsls r0, r2, #0x10
    asrs r1, r0, #0x10
    adds r0, r1, #0
    bl GetCameraAdjustedX
    adds r1, r0, #0
    ldr r0, .L0806CAF4 @ =gBmSt
    ldrh r2, [r0, #0xc]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0xc]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4e
    movs r4, #0
    ldrsh r0, [r1, r4]
    asrs r1, r0, #4
    adds r2, r1, #0
    lsls r0, r2, #0x10
    asrs r1, r0, #0x10
    adds r0, r1, #0
    bl GetCameraAdjustedY
    adds r1, r0, #0
    ldr r0, .L0806CAF4 @ =gBmSt
    ldrh r2, [r0, #0xe]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0xe]
.L0806CAC8:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4a
    ldrh r0, [r1]
    movs r1, #0x80
    ands r0, r1
    adds r2, r0, #0
    lsls r1, r2, #0x10
    asrs r0, r1, #0x10
    cmp r0, #0
    bne .L0806CAE4
    ldr r0, [r7]
    bl func_0806CAF8
.L0806CAE4:
    add sp, #8
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806CAEC: .4byte 0x08C9CEC0
.L0806CAF0: .4byte 0xFFFFFF00
.L0806CAF4: .4byte gBmSt
    func_end func_0806C8A0

    thumb_func_start func_0806CAF8
func_0806CAF8: @ 0x0806CAF8
    push {r4, r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl GetClassData
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r0, #0x28]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    cmp r0, #0
    beq .L0806CB5A
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    cmp r0, #0x32
    blt .L0806CB4C
    cmp r0, #0x33
    ble .L0806CB34
    cmp r0, #0x37
    bgt .L0806CB4C
    b .L0806CB40
.L0806CB34:
    ldr r0, .L0806CB3C @ =0x08C9CF92
    str r0, [r7, #8]
    b .L0806CB58
    .align 2, 0
.L0806CB3C: .4byte 0x08C9CF92
.L0806CB40:
    ldr r0, .L0806CB48 @ =0x08C9CF66
    str r0, [r7, #8]
    b .L0806CB58
    .align 2, 0
.L0806CB48: .4byte 0x08C9CF66
.L0806CB4C:
    ldr r0, .L0806CB54 @ =0x08C9CF38
    str r0, [r7, #8]
    b .L0806CB58
    .align 2, 0
.L0806CB54: .4byte 0x08C9CF38
.L0806CB58:
    b .L0806CBA8
.L0806CB5A:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    cmp r0, #0x46
    beq .L0806CB90
    cmp r0, #0x46
    bgt .L0806CB74
    cmp r0, #0x17
    bgt .L0806CB9C
    cmp r0, #0x14
    blt .L0806CB9C
    b .L0806CB86
.L0806CB74:
    cmp r0, #0x55
    beq .L0806CB86
    cmp r0, #0x55
    blt .L0806CB9C
    cmp r0, #0x5d
    bgt .L0806CB9C
    cmp r0, #0x5b
    blt .L0806CB9C
    b .L0806CB86
.L0806CB86:
    ldr r0, .L0806CB8C @ =0x08C9CEF4
    str r0, [r7, #8]
    b .L0806CBA8
    .align 2, 0
.L0806CB8C: .4byte 0x08C9CEF4
.L0806CB90:
    ldr r0, .L0806CB98 @ =0x08C9CFBE
    str r0, [r7, #8]
    b .L0806CBA8
    .align 2, 0
.L0806CB98: .4byte 0x08C9CFBE
.L0806CB9C:
    ldr r0, .L0806CBA4 @ =0x08C9CED0
    str r0, [r7, #8]
    b .L0806CBA8
    .align 2, 0
.L0806CBA4: .4byte 0x08C9CED0
.L0806CBA8:
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x43
    ldrb r1, [r0]
    adds r2, r1, #1
    adds r3, r2, #0
    strb r3, [r0]
    lsls r1, r1, #0x18
    lsrs r0, r1, #0x18
    ldr r1, [r7, #8]
    ldrh r2, [r1]
    adds r1, r2, #0
    bl DivRem
    str r0, [r7, #0xc]
    adds r1, r7, #0
    adds r1, #0x10
    ldr r0, [r7]
    bl func_0806CFFC
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, [r7, #8]
    adds r0, r0, r1
    adds r1, r0, #4
    ldrh r0, [r1]
    cmp r0, #0
    beq .L0806CC02
    ldr r0, [r7, #0xc]
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, [r7, #8]
    adds r0, r0, r1
    adds r1, r0, #4
    ldrh r0, [r1]
    ldr r1, [r7, #8]
    adds r2, r1, #2
    ldrh r1, [r2]
    adds r3, r7, #0
    adds r3, #0x10
    movs r4, #0
    ldrsh r2, [r3, r4]
    bl func_0806C25C
.L0806CC02:
    add sp, #0x14
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806CAF8

    thumb_func_start func_0806CC0C
func_0806CC0C: @ 0x0806CC0C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0806CC64
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x48
    ldrh r0, [r1]
    cmp r0, #0
    bne .L0806CC4C
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #3
    beq .L0806CC46
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #2
    beq .L0806CC46
    b .L0806CC4C
.L0806CC46:
    ldr r0, [r7]
    bl func_0806C30C
.L0806CC4C:
    ldr r0, .L0806CC7C @ =0x08C9CFEC
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x3f
    ldrb r1, [r2]
    adds r2, r1, #0
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, [r7]
    bl _call_via_r1
.L0806CC64:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x42
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0xf
    bne .L0806CC80
    ldr r0, [r7]
    bl func_0806D148
    b .L0806CC86
    .align 2, 0
.L0806CC7C: .4byte 0x08C9CFEC
.L0806CC80:
    ldr r0, [r7]
    bl func_0806D250
.L0806CC86:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806CC0C

    thumb_func_start func_0806CC90
func_0806CC90: @ 0x0806CC90
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    ldr r0, [r1, #0x34]
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    adds r0, r1, #0
    bl EndSpriteAnim
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806CC90

    thumb_func_start EndAllMus
EndAllMus: @ 0x0806CCB8
    push {r7, lr}
    mov r7, sp
    ldr r1, .L0806CCCC @ =0x08C9D00C
    adds r0, r1, #0
    bl Proc_EndEach
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806CCCC: .4byte 0x08C9D00C
    func_end EndAllMus

    thumb_func_start EndMu
EndMu: @ 0x0806CCD0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl func_0806CCE8
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end EndMu

    thumb_func_start func_0806CCE8
func_0806CCE8: @ 0x0806CCE8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl Proc_End
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806CCE8

    thumb_func_start func_0806CD00
func_0806CD00: @ 0x0806CD00
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    bl func_0806C2FC
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806CD00

    thumb_func_start LockMus
LockMus: @ 0x0806CD30
    push {r7, lr}
    mov r7, sp
    movs r0, #4
    bl Proc_BlockEachMarked
    pop {r7}
    pop {r0}
    bx r0
    func_end LockMus

    thumb_func_start ReleaseMus
ReleaseMus: @ 0x0806CD40
    push {r7, lr}
    mov r7, sp
    movs r0, #4
    bl Proc_UnblockEachMarked
    pop {r7}
    pop {r0}
    bx r0
    func_end ReleaseMus

    thumb_func_start ApplyMoveScriptToCoordinates
ApplyMoveScriptToCoordinates: @ 0x0806CD50
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
.L0806CD5C:
    b .L0806CD60
.L0806CD5E:
    .byte 0x4A, 0xE0
.L0806CD60:
    adds r0, r7, #0
    adds r0, #8
    ldr r2, [r0]
    ldrb r3, [r2]
    adds r1, r3, #1
    adds r2, #1
    str r2, [r0]
    cmp r1, #0xa
    bhi .L0806CDF2
    adds r0, r1, #0
    lsls r1, r0, #2
    ldr r2, .L0806CD80 @ =.L0806CD84
    adds r0, r1, r2
    ldr r1, [r0]
    mov pc, r1
    .align 2, 0
.L0806CD80: .4byte .L0806CD84
.L0806CD84: @ jump table
    .4byte .L0806CDB0 @ case 0
    .4byte .L0806CDB2 @ case 1
    .4byte .L0806CDC0 @ case 2
    .4byte .L0806CDDC @ case 3
    .4byte .L0806CDCE @ case 4
    .4byte .L0806CDB0 @ case 5
    .4byte .L0806CDF2 @ case 6
    .4byte .L0806CDF2 @ case 7
    .4byte .L0806CDF2 @ case 8
    .4byte .L0806CDF2 @ case 9
    .4byte .L0806CDEA @ case 10
.L0806CDB0:
    b .L0806CDF6
.L0806CDB2:
    ldr r1, [r7]
    ldr r0, [r7]
    ldr r1, [r7]
    ldr r2, [r1]
    subs r1, r2, #1
    str r1, [r0]
    b .L0806CDF4
.L0806CDC0:
    ldr r1, [r7]
    ldr r0, [r7]
    ldr r1, [r7]
    ldr r2, [r1]
    adds r1, r2, #1
    str r1, [r0]
    b .L0806CDF4
.L0806CDCE:
    ldr r1, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7, #4]
    ldr r2, [r1]
    subs r1, r2, #1
    str r1, [r0]
    b .L0806CDF4
.L0806CDDC:
    ldr r1, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7, #4]
    ldr r2, [r1]
    adds r1, r2, #1
    str r1, [r0]
    b .L0806CDF4
.L0806CDEA:
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806CDF4
.L0806CDF2:
    b .L0806CDF4
.L0806CDF4:
    b .L0806CD5C
.L0806CDF6:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end ApplyMoveScriptToCoordinates

    thumb_func_start CanStartMu
CanStartMu: @ 0x0806CE00
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    movs r0, #0
    str r0, [r7]
.L0806CE0A:
    ldr r0, [r7]
    cmp r0, #3
    ble .L0806CE12
    b .L0806CE34
.L0806CE12:
    ldr r0, .L0806CE28 @ =0x030014E8
    ldr r1, [r7]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0
    bne .L0806CE2C
    movs r0, #1
    b .L0806CE38
    .align 2, 0
.L0806CE28: .4byte 0x030014E8
.L0806CE2C:
    ldr r0, [r7]
    adds r1, r0, #1
    str r1, [r7]
    b .L0806CE0A
.L0806CE34:
    movs r0, #0
    b .L0806CE38
.L0806CE38:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end CanStartMu

    thumb_func_start func_0806CE40
func_0806CE40: @ 0x0806CE40
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    movs r0, #0
    str r0, [r7]
.L0806CE4A:
    ldr r0, [r7]
    cmp r0, #3
    ble .L0806CE52
    b .L0806CEAC
.L0806CE52:
    ldr r0, .L0806CEA8 @ =0x030014E8
    ldr r1, [r7]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0
    beq .L0806CEA0
    ldr r0, .L0806CEA8 @ =0x030014E8
    ldr r1, [r7]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, #0x48
    adds r1, r0, r1
    ldr r2, [r1]
    ldr r0, [r2, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r0, .L0806CEA8 @ =0x030014E8
    ldr r1, [r7]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, #0x48
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
.L0806CEA0:
    ldr r0, [r7]
    adds r1, r0, #1
    str r1, [r7]
    b .L0806CE4A
    .align 2, 0
.L0806CEA8: .4byte 0x030014E8
.L0806CEAC:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806CE40

    thumb_func_start func_0806CEB4
func_0806CEB4: @ 0x0806CEB4
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    movs r0, #0
    str r0, [r7, #8]
.L0806CEC2:
    ldr r0, [r7, #8]
    cmp r0, #3
    ble .L0806CECA
    b .L0806CF4C
.L0806CECA:
    ldr r0, .L0806CF3C @ =0x030014E8
    ldr r1, [r7, #8]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0
    bne .L0806CF44
    ldr r0, .L0806CF3C @ =0x030014E8
    ldr r1, [r7, #8]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r1, [r7, #8]
    adds r2, r1, #0
    adds r1, r2, #1
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L0806CF3C @ =0x030014E8
    ldr r1, [r7, #8]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r7]
    adds r1, r2, #0
    ldr r2, .L0806CF40 @ =0x08C9D02C
    ldr r3, [r7, #8]
    adds r4, r3, #0
    lsls r3, r4, #1
    adds r2, r2, r3
    ldrh r3, [r2]
    adds r1, r1, r3
    ldrh r2, [r0, #2]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #2]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #8]
    movs r1, #0x4c
    muls r0, r1, r0
    ldr r2, .L0806CF3C @ =0x030014E8
    adds r1, r0, r2
    adds r0, r1, #0
    b .L0806CF50
    .align 2, 0
.L0806CF3C: .4byte 0x030014E8
.L0806CF40: .4byte 0x08C9D02C
.L0806CF44:
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806CEC2
.L0806CF4C:
    movs r0, #0
    b .L0806CF50
.L0806CF50:
    add sp, #0xc
    pop {r4, r7}
    pop {r1}
    bx r1
    func_end func_0806CEB4

    thumb_func_start func_0806CF58
func_0806CF58: @ 0x0806CF58
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    movs r0, #0
    str r0, [r7, #8]
.L0806CF66:
    ldr r0, [r7, #8]
    cmp r0, #3
    ble .L0806CF6E
    b .L0806CFF0
.L0806CF6E:
    ldr r0, .L0806CFE0 @ =0x030014E8
    ldr r1, [r7, #8]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0
    bne .L0806CFE8
    ldr r0, .L0806CFE0 @ =0x030014E8
    ldr r1, [r7, #8]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r1, [r7, #8]
    adds r2, r1, #0
    adds r1, r2, #1
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strb r1, [r0]
    ldr r0, .L0806CFE0 @ =0x030014E8
    ldr r1, [r7, #8]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r7]
    adds r1, r2, #0
    ldr r2, .L0806CFE4 @ =0x08C9D034
    ldr r3, [r7, #8]
    adds r4, r3, #0
    lsls r3, r4, #1
    adds r2, r2, r3
    ldrh r3, [r2]
    adds r1, r1, r3
    ldrh r2, [r0, #2]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #2]
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, [r7, #8]
    movs r1, #0x4c
    muls r0, r1, r0
    ldr r2, .L0806CFE0 @ =0x030014E8
    adds r1, r0, r2
    adds r0, r1, #0
    b .L0806CFF4
    .align 2, 0
.L0806CFE0: .4byte 0x030014E8
.L0806CFE4: .4byte 0x08C9D034
.L0806CFE8:
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806CF66
.L0806CFF0:
    movs r0, #0
    b .L0806CFF4
.L0806CFF4:
    add sp, #0xc
    pop {r4, r7}
    pop {r1}
    bx r1
    func_end func_0806CF58

    thumb_func_start func_0806CFFC
func_0806CFFC: @ 0x0806CFFC
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #6
    beq .L0806D014
    b .L0806D06C
.L0806D014:
    ldr r0, [r7, #4]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4c
    movs r3, #0
    ldrsh r1, [r2, r3]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x50
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r1, r2
    asrs r1, r3, #4
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4e
    movs r3, #0
    ldrsh r1, [r2, r3]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x52
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r3, r1, r2
    asrs r1, r3, #4
    ldrh r2, [r0, #2]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #2]
    movs r0, #1
    b .L0806D140
.L0806D06C:
    adds r0, r7, #0
    adds r0, #8
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4c
    movs r3, #0
    ldrsh r1, [r2, r3]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x50
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r1, r1, r2
    asrs r2, r1, #4
    ldr r1, .L0806D134 @ =gBmSt
    ldrh r1, [r1, #0xc]
    subs r2, r2, r1
    adds r1, r2, #0
    adds r2, r1, #0
    adds r2, #8
    adds r1, r2, #0
    strh r1, [r0]
    adds r0, r7, #0
    adds r0, #0xa
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4e
    movs r3, #0
    ldrsh r1, [r2, r3]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x52
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r1, r1, r2
    asrs r2, r1, #4
    ldr r1, .L0806D134 @ =gBmSt
    ldrh r1, [r1, #0xe]
    subs r2, r2, r1
    adds r1, r2, #0
    adds r2, r1, #0
    adds r2, #8
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #4]
    adds r1, r7, #0
    adds r1, #8
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrh r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #4]
    adds r1, r7, #0
    adds r1, #0xa
    ldrh r2, [r1]
    adds r1, r2, #0
    adds r1, #8
    ldrh r2, [r0, #2]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #2]
    adds r0, r7, #0
    adds r0, #8
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r0, #0x10
    cmn r1, r0
    blt .L0806D138
    adds r0, r7, #0
    adds r0, #8
    movs r3, #0
    ldrsh r1, [r0, r3]
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bgt .L0806D138
    adds r0, r7, #0
    adds r0, #0xa
    movs r4, #0
    ldrsh r1, [r0, r4]
    movs r0, #0x10
    cmn r1, r0
    blt .L0806D138
    adds r0, r7, #0
    adds r0, #0xa
    movs r2, #0
    ldrsh r1, [r0, r2]
    cmp r1, #0xb0
    bgt .L0806D138
    b .L0806D13C
    .align 2, 0
.L0806D134: .4byte gBmSt
.L0806D138:
    movs r0, #0
    b .L0806D140
.L0806D13C:
    movs r0, #1
    b .L0806D140
.L0806D140:
    add sp, #0xc
    pop {r4, r7}
    pop {r1}
    bx r1
    func_end func_0806CFFC

    thumb_func_start func_0806D148
func_0806D148: @ 0x0806D148
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    add r7, sp, #8
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0806D15E
    b .L0806D244
.L0806D15E:
    adds r1, r7, #4
    ldr r0, [r7]
    bl func_0806CFFC
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    bne .L0806D170
    b .L0806D244
.L0806D170:
    adds r0, r7, #4
    ldrh r1, [r0]
    lsls r0, r1, #0x17
    lsrs r1, r0, #0x17
    adds r0, r7, #4
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    adds r0, r7, #6
    ldrh r1, [r0]
    movs r0, #0xff
    ands r1, r0
    adds r0, r7, #6
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
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #7
    bne .L0806D1CC
    adds r0, r7, #6
    ldrh r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #3
    orrs r1, r0
    adds r0, r7, #6
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L0806D1CC:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3c
    ldrb r0, [r1]
    ldr r1, [r7]
    ldr r2, [r1, #0x38]
    adds r1, r2, #0
    bl func_080255E0
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    ldrh r0, [r1, #0x1e]
    adds r1, r7, #4
    movs r3, #0
    ldrsh r2, [r1, r3]
    adds r1, r2, #0
    subs r1, #8
    adds r2, r7, #6
    movs r4, #0
    ldrsh r3, [r2, r4]
    adds r2, r3, #0
    subs r2, #0x10
    ldr r3, [r7]
    ldr r4, [r3, #0x38]
    ldr r5, .L0806D24C @ =0xF9FF0000
    adds r3, r4, r5
    lsls r5, r3, #0xf
    lsrs r4, r5, #0xf
    lsrs r3, r4, #5
    ldr r4, [r7]
    ldr r5, [r4, #0x34]
    ldrb r4, [r5, #1]
    movs r5, #0xf
    ands r4, r5
    adds r6, r4, #0
    lsls r5, r6, #0x18
    lsrs r4, r5, #0x18
    adds r5, r4, #0
    lsls r4, r5, #0xc
    adds r3, r3, r4
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x46
    ldrh r4, [r5]
    adds r3, r3, r4
    adds r5, r3, #0
    lsls r4, r5, #0x10
    lsrs r3, r4, #0x10
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x41
    ldrb r4, [r5]
    str r4, [sp]
    ldr r5, [r7]
    adds r4, r5, #0
    adds r5, #0x3c
    ldrb r4, [r5]
    str r4, [sp, #4]
    bl func_08026308
.L0806D244:
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806D24C: .4byte 0xF9FF0000
    func_end func_0806D148

    thumb_func_start func_0806D250
func_0806D250: @ 0x0806D250
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x40
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0806D266
    b .L0806D378
.L0806D266:
    adds r1, r7, #4
    ldr r0, [r7]
    bl func_0806CFFC
    lsls r1, r0, #0x18
    asrs r0, r1, #0x18
    cmp r0, #0
    bne .L0806D278
    b .L0806D378
.L0806D278:
    adds r0, r7, #4
    ldrh r1, [r0]
    lsls r0, r1, #0x17
    lsrs r1, r0, #0x17
    adds r0, r7, #4
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    adds r0, r7, #6
    ldrh r1, [r0]
    movs r0, #0xff
    ands r1, r0
    adds r0, r7, #6
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
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #6
    beq .L0806D2BA
    b .L0806D2BC
.L0806D2BA:
    b .L0806D33C
.L0806D2BC:
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    cmp r1, #0
    bne .L0806D2C6
    b .L0806D33C
.L0806D2C6:
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    movs r0, #0xb
    ldrsb r0, [r1, r0]
    movs r1, #0xc0
    ands r0, r1
    cmp r0, #0x80
    beq .L0806D2D8
    b .L0806D33C
.L0806D2D8:
    ldr r0, .L0806D334 @ =gPlaySt
    ldrb r1, [r0, #0xd]
    cmp r1, #0
    beq .L0806D33C
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4e
    movs r2, #0
    ldrsh r0, [r1, r2]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x52
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    asrs r1, r0, #4
    adds r0, r1, #0
    adds r0, #8
    asrs r1, r0, #4
    adds r2, r1, #0
    lsls r0, r2, #2
    ldr r2, .L0806D338 @ =gMapFog
    ldr r1, [r2]
    adds r0, r0, r1
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x4c
    movs r4, #0
    ldrsh r1, [r2, r4]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x50
    movs r4, #0
    ldrsh r2, [r3, r4]
    adds r1, r1, r2
    asrs r2, r1, #4
    adds r1, r2, #0
    adds r1, #8
    asrs r2, r1, #4
    ldr r1, [r0]
    adds r0, r2, r1
    ldrb r1, [r0]
    cmp r1, #0
    bne .L0806D33C
    b .L0806D378
    .align 2, 0
.L0806D334: .4byte gPlaySt
.L0806D338: .4byte gMapFog
.L0806D33C:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #7
    bne .L0806D364
    adds r0, r7, #6
    ldrh r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #3
    orrs r1, r0
    adds r0, r7, #6
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L0806D364:
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    adds r2, r7, #4
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r3, r7, #6
    movs r4, #0
    ldrsh r2, [r3, r4]
    bl DisplaySpriteAnim
.L0806D378:
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806D250

    thumb_func_start GetMuQ4MovementSpeed
GetMuQ4MovementSpeed: @ 0x0806D380
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x4a
    movs r2, #0
    ldrsh r0, [r1, r2]
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L0806D3A6
    ldr r0, [r7, #4]
    adds r1, r0, #0
    adds r1, #0x80
    str r1, [r7, #4]
.L0806D3A6:
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x44
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0806D3B8
    movs r0, #0x80
    lsls r0, r0, #1
    b .L0806D4C2
.L0806D3B8:
    ldr r0, [r7, #4]
    cmp r0, #0x40
    bne .L0806D3E8
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl GetClassData
    ldr r1, .L0806D3E4 @ =0x08C9D03C
    ldrb r0, [r0, #7]
    adds r1, r1, r0
    ldrb r2, [r1]
    adds r0, r2, #0
    lsls r1, r0, #4
    adds r2, r1, #0
    lsls r0, r2, #0x10
    lsrs r1, r0, #0x10
    adds r0, r1, #0
    b .L0806D4C2
    .align 2, 0
.L0806D3E4: .4byte 0x08C9D03C
.L0806D3E8:
    ldr r0, [r7, #4]
    cmp r0, #0
    beq .L0806D458
    ldr r0, [r7, #4]
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L0806D406
    ldr r0, [r7, #8]
    movs r1, #0x40
    eors r0, r1
    str r0, [r7, #8]
    b .L0806D442
.L0806D406:
    ldr r1, .L0806D434 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x40
    ldrb r0, [r1]
    lsls r1, r0, #0x18
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806D43C
    ldr r1, .L0806D438 @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #4]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L0806D432
    ldr r0, [r7, #4]
    lsls r1, r0, #2
    str r1, [r7, #8]
.L0806D432:
    b .L0806D442
    .align 2, 0
.L0806D434: .4byte gPlaySt
.L0806D438: .4byte gpKeySt
.L0806D43C:
    ldr r0, [r7, #4]
    lsls r1, r0, #2
    str r1, [r7, #8]
.L0806D442:
    ldr r0, [r7, #8]
    cmp r0, #0x80
    ble .L0806D44C
    movs r0, #0x80
    str r0, [r7, #8]
.L0806D44C:
    ldr r1, [r7, #8]
    adds r0, r1, #0
    lsls r2, r0, #0x10
    lsrs r1, r2, #0x10
    adds r0, r1, #0
    b .L0806D4C2
.L0806D458:
    bl IsFirstPlaythrough
    cmp r0, #0
    bne .L0806D480
    ldr r1, .L0806D47C @ =gpKeySt
    ldr r0, [r1]
    ldrh r1, [r0, #4]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L0806D480
    movs r0, #0x80
    b .L0806D4C2
    .align 2, 0
.L0806D47C: .4byte gpKeySt
.L0806D480:
    ldr r1, .L0806D4B4 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x40
    ldrb r0, [r1]
    lsls r1, r0, #0x18
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806D4BE
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl GetClassData
    ldr r1, .L0806D4B8 @ =0x08C9D03C
    ldrb r0, [r0, #7]
    adds r1, r1, r0
    ldrb r2, [r1]
    adds r0, r2, #0
    lsls r1, r0, #4
    adds r2, r1, #0
    lsls r0, r2, #0x10
    lsrs r1, r0, #0x10
    adds r0, r1, #0
    b .L0806D4C2
    .align 2, 0
.L0806D4B4: .4byte gPlaySt
.L0806D4B8: .4byte 0x08C9D03C
.L0806D4BC:
    .byte 0x01, 0xE0
.L0806D4BE:
    movs r0, #0x40
    b .L0806D4C2
.L0806D4C2:
    add sp, #0xc
    pop {r7}
    pop {r1}
    bx r1
    func_end GetMuQ4MovementSpeed

    thumb_func_start func_0806D4CC
func_0806D4CC: @ 0x0806D4CC
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    adds r0, r1, #0
    adds r1, r7, #4
    strh r0, [r1]
    adds r0, r7, #4
    ldrh r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bls .L0806D502
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x4a
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x80
    lsls r3, r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    b .L0806D51C
.L0806D502:
    ldr r0, [r7]
    adds r1, r7, #4
    adds r2, r0, #0
    adds r0, #0x4a
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    ldrh r1, [r1]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
.L0806D51C:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806D4CC

    thumb_func_start func_0806D524
func_0806D524: @ 0x0806D524
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806D544 @ =0x08C9D03E
    ldr r1, [r7]
    adds r2, r0, r1
    ldrb r0, [r2]
    adds r2, r0, #0
    lsls r1, r2, #4
    adds r1, r1, r0
    lsls r0, r1, #9
    ldr r2, .L0806D548 @ =0x020040F0
    adds r1, r0, r2
    adds r0, r1, #0
    b .L0806D54C
    .align 2, 0
.L0806D544: .4byte 0x08C9D03E
.L0806D548: .4byte 0x020040F0
.L0806D54C:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806D524

    thumb_func_start func_0806D554
func_0806D554: @ 0x0806D554
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806D574 @ =0x08C9D174
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x41
    ldrb r1, [r2]
    subs r2, r1, #1
    adds r1, r2, #0
    lsls r2, r1, #3
    adds r0, r0, r2
    ldr r1, [r0]
    adds r0, r1, #0
    b .L0806D578
    .align 2, 0
.L0806D574: .4byte 0x08C9D174
.L0806D578:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806D554

    thumb_func_start func_0806D580
func_0806D580: @ 0x0806D580
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r1, r7, #0
    strh r0, [r1]
    ldr r0, .L0806D5A0 @ =0x08C9D174
    adds r1, r7, #0
    ldrh r2, [r1]
    subs r1, r2, #1
    adds r2, r1, #0
    lsls r1, r2, #3
    adds r0, #4
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    b .L0806D5A4
    .align 2, 0
.L0806D5A0: .4byte 0x08C9D174
.L0806D5A4:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806D580

    thumb_func_start StartMuDeathFade
StartMuDeathFade: @ 0x0806D5AC
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #7
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L0806D6CC @ =0x08C9D044
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x54]
    ldr r0, [r7, #4]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x20
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0806D6D0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806D6D0 @ =gDispIo
    ldr r2, [r7, #4]
    adds r1, r2, #0
    adds r2, #0x64
    movs r3, #0
    ldrsh r1, [r2, r3]
    asrs r2, r1, #1
    adds r1, r2, #0
    adds r2, r0, #0
    adds r0, #0x44
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806D6D0 @ =gDispIo
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
    ldr r0, .L0806D6D0 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x46
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r0, [r7]
    movs r1, #0
    bl func_0806E054
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x1e]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xd
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x1e]
    ldr r1, .L0806D6D4 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806D6A0
    movs r0, #0xd6
    bl m4aSongNumStart
.L0806D6A0:
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    ldr r0, [r1, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L0806D6C4
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    adds r0, r1, #0
    bl func_080347A8
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    adds r0, r1, #0
    bl HideUnitSprite
.L0806D6C4:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806D6CC: .4byte 0x08C9D044
.L0806D6D0: .4byte gDispIo
.L0806D6D4: .4byte gPlaySt
    func_end StartMuDeathFade

    thumb_func_start func_0806D6D8
func_0806D6D8: @ 0x0806D6D8
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806D768 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r2, #0x3f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806D768 @ =gDispIo
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x64
    ldrh r2, [r1]
    subs r3, r2, #1
    adds r4, r3, #0
    strh r4, [r1]
    lsls r2, r2, #0x10
    asrs r1, r2, #0x10
    asrs r2, r1, #1
    adds r1, r2, #0
    adds r2, r0, #0
    adds r0, #0x44
    ldrb r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L0806D768 @ =gDispIo
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
    ldr r0, .L0806D768 @ =gDispIo
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
    cmp r0, #0
    bne .L0806D760
    ldr r0, [r7]
    ldr r1, [r0, #0x54]
    adds r0, r1, #0
    bl EndMu
    ldr r0, [r7]
    bl Proc_Break
.L0806D760:
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806D768: .4byte gDispIo
    func_end func_0806D6D8

    thumb_func_start func_0806D76C
func_0806D76C: @ 0x0806D76C
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x14]
    str r1, [r7, #4]
    ldr r1, [r7, #4]
    movs r0, #0
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x64
    ldrh r2, [r3]
    movs r3, #7
    ands r2, r3
    adds r4, r2, #0
    lsls r3, r4, #0x10
    asrs r2, r3, #0x10
    cmp r2, #3
    bgt .L0806D796
    movs r0, #1
.L0806D796:
    adds r2, r1, #0
    adds r1, #0x40
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    ldrh r3, [r2]
    subs r1, r3, #1
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
    cmp r0, #0
    bge .L0806D7FA
    ldr r0, [r7]
    bl Proc_Break
    ldr r0, [r7, #4]
    adds r1, r0, #0
    adds r0, #0x40
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
.L0806D7FA:
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806D76C

    thumb_func_start func_0806D804
func_0806D804: @ 0x0806D804
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #7
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L0806D888 @ =0x08C9D05C
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x54]
    ldr r0, [r7, #4]
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
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r1, .L0806D88C @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806D880
    movs r0, #0xd6
    bl m4aSongNumStart
.L0806D880:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806D888: .4byte 0x08C9D05C
.L0806D88C: .4byte gPlaySt
    func_end func_0806D804

    thumb_func_start func_0806D890
func_0806D890: @ 0x0806D890
    push {r7, lr}
    sub sp, #0x1c
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L0806D8F8 @ =0x08C9D06C
    ldr r1, [r7, #4]
    adds r0, r0, r1
    ldrb r1, [r0]
    movs r2, #7
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x18
    lsrs r0, r1, #0x18
    str r0, [r7, #0x10]
    ldr r0, .L0806D8F8 @ =0x08C9D06C
    ldr r1, [r7, #4]
    adds r0, r0, r1
    ldrb r1, [r0]
    lsrs r0, r1, #3
    adds r2, r0, #0
    lsls r1, r2, #0x18
    lsrs r0, r1, #0x18
    str r0, [r7, #0x14]
    ldr r0, .L0806D8FC @ =0x030014E0
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [r0]
    ldr r0, .L0806D900 @ =0x030014E4
    ldr r1, [r7, #0x10]
    adds r2, r1, #0
    lsls r1, r2, #2
    movs r2, #0xf
    adds r3, r2, #0
    lsls r3, r1
    adds r1, r3, #0
    str r1, [r0]
    ldr r0, .L0806D8FC @ =0x030014E0
    ldr r1, .L0806D8FC @ =0x030014E0
    ldr r2, .L0806D900 @ =0x030014E4
    ldr r3, [r2]
    mvns r2, r3
    ldr r1, [r1]
    ands r2, r1
    str r2, [r0]
    movs r0, #0
    str r0, [r7, #8]
.L0806D8F0:
    ldr r0, [r7, #8]
    cmp r0, #3
    ble .L0806D904
    b .L0806D95E
    .align 2, 0
.L0806D8F8: .4byte 0x08C9D06C
.L0806D8FC: .4byte 0x030014E0
.L0806D900: .4byte 0x030014E4
.L0806D904:
    movs r0, #0
    str r0, [r7, #0xc]
.L0806D908:
    ldr r0, [r7, #0xc]
    cmp r0, #3
    ble .L0806D910
    b .L0806D94C
.L0806D910:
    ldr r0, [r7, #0x14]
    adds r1, r0, #0
    lsls r0, r1, #2
    ldr r1, [r7]
    adds r0, r0, r1
    ldr r1, [r0]
    str r1, [r7, #0x18]
    ldr r0, .L0806D948 @ =0x030014E0
    ldr r1, [r7, #0x18]
    ldr r0, [r0]
    ands r1, r0
    str r1, [r7, #0x18]
    ldr r0, [r7, #0x14]
    adds r1, r0, #0
    lsls r0, r1, #2
    ldr r1, [r7]
    adds r0, r0, r1
    ldr r1, [r7, #0x18]
    str r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r1, #0x20
    str r1, [r7]
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L0806D908
    .align 2, 0
.L0806D948: .4byte 0x030014E0
.L0806D94C:
    ldr r0, [r7]
    movs r2, #0xe0
    lsls r2, r2, #2
    adds r1, r0, r2
    str r1, [r7]
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0806D8F0
.L0806D95E:
    add sp, #0x1c
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806D890

    thumb_func_start func_0806D968
func_0806D968: @ 0x0806D968
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x14]
    adds r0, r1, #0
    adds r1, #0x3c
    ldrb r2, [r1]
    adds r0, r2, #0
    bl func_0806D524
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    movs r3, #0
    ldrsh r1, [r2, r3]
    bl func_0806D890
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x66
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x66
    ldrh r3, [r2]
    adds r1, r3, #1
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
    ldr r0, .L0806DA10 @ =0x020040F0
    ldr r1, .L0806DA14 @ =0x06017000
    movs r2, #0x80
    lsls r2, r2, #5
    bl RegisterDataMove
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x64
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x64
    ldrh r3, [r2]
    subs r1, r3, #1
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
    cmp r0, #0
    bne .L0806DA08
    ldr r0, [r7]
    ldr r1, [r0, #0x54]
    adds r0, r1, #0
    bl EndMu
    ldr r0, [r7]
    bl Proc_Break
.L0806DA08:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DA10: .4byte 0x020040F0
.L0806DA14: .4byte 0x06017000
    func_end func_0806D968

    thumb_func_start func_0806DA18
func_0806DA18: @ 0x0806DA18
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #7
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L0806DAAC @ =0x08C9D0AC
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x54]
    ldr r0, [r7, #4]
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
    ldr r0, [r7, #4]
    adds r1, r0, #0
    adds r0, #0x66
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r1, .L0806DAB0 @ =gPlaySt
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r0, [r1]
    lsls r1, r0, #0x1e
    lsrs r0, r1, #0x1f
    cmp r0, #0
    bne .L0806DAA4
    movs r0, #0xd6
    bl m4aSongNumStart
.L0806DAA4:
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DAAC: .4byte 0x08C9D0AC
.L0806DAB0: .4byte gPlaySt
    func_end func_0806DA18

    thumb_func_start func_0806DAB4
func_0806DAB4: @ 0x0806DAB4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x40
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DAB4

    thumb_func_start func_0806DADC
func_0806DADC: @ 0x0806DADC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x40
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DADC

    thumb_func_start func_0806DAFC
func_0806DAFC: @ 0x0806DAFC
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7]
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #4
    adds r2, r0, #0
    adds r0, #0x4c
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    ldr r1, [r7, #8]
    adds r2, r1, #0
    lsls r1, r2, #4
    adds r2, r0, #0
    adds r0, #0x4e
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DAFC

    thumb_func_start func_0806DB48
func_0806DB48: @ 0x0806DB48
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7]
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #4
    adds r2, r0, #0
    adds r0, #0x50
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    ldr r1, [r7, #8]
    adds r2, r1, #0
    lsls r1, r2, #4
    adds r2, r0, #0
    adds r0, #0x52
    ldrh r2, [r0]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DB48

    thumb_func_start func_0806DB94
func_0806DB94: @ 0x0806DB94
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    movs r4, #0xa0
    lsls r4, r4, #7
    adds r3, r2, r4
    ldrh r1, [r1, #2]
    adds r2, r3, #0
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    ldr r0, [r7]
    ldr r1, [r0, #0x34]
    ldrb r0, [r1, #1]
    adds r1, r0, #0
    adds r1, #0x10
    adds r0, r1, #0
    lsls r1, r0, #5
    asrs r0, r1, #1
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r1, .L0806DC0C @ =gPal
    adds r0, r0, r1
    movs r1, #0xa8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0806DC10 @ =0x08C9CE58
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r1, #0
    movs r1, #0x15
    movs r2, #8
    ldr r3, [r7]
    bl StartPalFade
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DC0C: .4byte gPal
.L0806DC10: .4byte 0x08C9CE58
    func_end func_0806DB94

    thumb_func_start func_0806DC14
func_0806DC14: @ 0x0806DC14
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x34]
    ldrb r0, [r1, #1]
    adds r1, r0, #0
    adds r1, #0x10
    adds r0, r1, #0
    lsls r1, r0, #5
    asrs r0, r1, #1
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r2, .L0806DC5C @ =gPal
    adds r1, r0, r2
    adds r0, r1, #0
    movs r1, #0x15
    movs r2, #8
    ldr r3, [r7]
    bl StartPalFade
    ldr r1, .L0806DC60 @ =0x08C9D0BC
    adds r0, r1, #0
    movs r1, #3
    bl Proc_Start
    str r0, [r7, #4]
    ldr r0, [r7, #4]
    ldr r1, [r7]
    str r1, [r0, #0x54]
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DC5C: .4byte gPal
.L0806DC60: .4byte 0x08C9D0BC
    func_end func_0806DC14

    thumb_func_start func_0806DC64
func_0806DC64: @ 0x0806DC64
    push {r4, r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x54]
    str r1, [r7, #4]
    ldr r1, [r7, #4]
    ldr r0, [r1, #0x30]
    ldr r2, [r7, #4]
    ldr r1, [r2, #0x34]
    ldr r2, [r7, #4]
    ldr r3, [r2, #0x34]
    ldrb r2, [r3, #1]
    movs r3, #0xf
    ands r2, r3
    adds r4, r2, #0
    lsls r3, r4, #0x18
    lsrs r2, r3, #0x18
    adds r3, r2, #0
    lsls r2, r3, #0xc
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    ldr r3, [r7, #4]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    add sp, #8
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806DC64

    thumb_func_start func_0806DCB4
func_0806DCB4: @ 0x0806DCB4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x30]
    adds r0, r1, #0
    movs r1, #4
    bl SetSpriteAnimId
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
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
    ldr r0, .L0806DD04 @ =func_0806DD08
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    movs r2, #0x1e
    bl func_08014B50
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DD04: .4byte func_0806DD08
    func_end func_0806DCB4

    thumb_func_start func_0806DD08
func_0806DD08: @ 0x0806DD08
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r0, [r7]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DD08

    thumb_func_start func_0806DD30
func_0806DD30: @ 0x0806DD30
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
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
    ldr r0, .L0806DD74 @ =func_0806DD78
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    movs r2, #0x1e
    bl func_08014B50
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DD74: .4byte func_0806DD78
    func_end func_0806DD30

    thumb_func_start func_0806DD78
func_0806DD78: @ 0x0806DD78
    push {r4, r5, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, .L0806DDD0 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x58
    ldrb r4, [r1]
    ldr r1, .L0806DDD0 @ =0x0203E0FC
    adds r0, r1, #0
    adds r1, #0x58
    ldrb r0, [r1]
    movs r1, #1
    subs r5, r1, r0
    ldr r0, .L0806DDD0 @ =0x0203E0FC
    ldr r1, [r0, #4]
    adds r0, r1, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r0, r2, #0
    bl func_0806BA2C
    lsls r1, r0, #0x18
    lsrs r2, r1, #0x18
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0806EC18
    ldr r0, [r7]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r0, [r7]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    add sp, #4
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DDD0: .4byte 0x0203E0FC
    func_end func_0806DD78

    thumb_func_start func_0806DDD4
func_0806DDD4: @ 0x0806DDD4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0x40
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r0, .L0806DE18 @ =func_0806DE1C
    ldr r1, [r7]
    ldr r2, [r1, #0x30]
    adds r1, r2, #0
    movs r2, #0x14
    bl func_08014B50
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DE18: .4byte func_0806DE1C
    func_end func_0806DDD4

    thumb_func_start func_0806DE1C
func_0806DE1C: @ 0x0806DE1C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r0, [r7]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DE1C

    thumb_func_start func_0806DE44
func_0806DE44: @ 0x0806DE44
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L0806DE84 @ =0x08C9CE58
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r2, #0xa8
    lsls r2, r2, #2
    adds r0, r1, #0
    adds r1, r2, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r1, .L0806DE88 @ =0x08C9D0D4
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_Start
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DE84: .4byte 0x08C9CE58
.L0806DE88: .4byte 0x08C9D0D4
    func_end func_0806DE44

    thumb_func_start func_0806DE8C
func_0806DE8C: @ 0x0806DE8C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x30
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DE8C

    thumb_func_start func_0806DEAC
func_0806DEAC: @ 0x0806DEAC
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    ldr r0, [r1, #0x30]
    ldr r1, [r7]
    ldr r2, [r1, #0x2c]
    ldr r1, [r2, #0x34]
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    movs r4, #0xa0
    lsls r4, r4, #7
    adds r3, r2, r4
    ldrh r1, [r1, #2]
    adds r2, r3, #0
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806DEAC

    thumb_func_start func_0806DEF0
func_0806DEF0: @ 0x0806DEF0
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    ldr r0, [r1, #0x30]
    ldr r1, [r7]
    ldr r2, [r1, #0x2c]
    ldr r1, [r2, #0x34]
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    ldr r2, [r3, #0x34]
    ldrb r3, [r2, #1]
    movs r4, #0xf
    adds r2, r3, #0
    ands r2, r4
    adds r4, r2, #0
    lsls r3, r4, #0x18
    lsrs r2, r3, #0x18
    adds r3, r2, #0
    lsls r2, r3, #0xc
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806DEF0

    thumb_func_start func_0806DF44
func_0806DF44: @ 0x0806DF44
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    ldr r0, [r1, #0x34]
    ldrb r1, [r0, #1]
    adds r0, r1, #0
    adds r0, #0x10
    adds r1, r0, #0
    lsls r0, r1, #5
    asrs r1, r0, #1
    adds r0, r1, #0
    lsls r1, r0, #1
    ldr r0, .L0806DF7C @ =gPal
    adds r1, r1, r0
    adds r0, r1, #0
    movs r1, #0x15
    movs r2, #0x14
    ldr r3, [r7]
    bl StartPalFade
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806DF7C: .4byte gPal
    func_end func_0806DF44

    thumb_func_start func_0806DF80
func_0806DF80: @ 0x0806DF80
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x30
    ldr r0, [r7]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x30
    ldrb r3, [r2]
    adds r1, r3, #1
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
    ldr r1, [r7]
    ldr r0, [r1, #0x2c]
    ldr r2, [r7]
    adds r1, r2, #0
    adds r2, #0x30
    ldrb r1, [r2]
    movs r2, #1
    ands r1, r2
    adds r3, r1, #0
    lsls r2, r3, #0x18
    lsrs r1, r2, #0x18
    cmp r1, #0
    beq .L0806DFCC
    movs r1, #2
    b .L0806DFD0
.L0806DFCC:
    movs r1, #2
    rsbs r1, r1, #0
.L0806DFD0:
    movs r2, #0
    bl func_0806DB48
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x30
    ldrb r0, [r1]
    cmp r0, #0xb
    bls .L0806DFF6
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    adds r0, r1, #0
    movs r1, #0
    movs r2, #0
    bl func_0806DB48
    ldr r0, [r7]
    bl Proc_Break
.L0806DFF6:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806DF80

    thumb_func_start func_0806E000
func_0806E000: @ 0x0806E000
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    ldr r0, [r1, #0x30]
    ldr r1, [r7]
    ldr r2, [r1, #0x2c]
    ldr r1, [r2, #0x34]
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    ldr r2, [r3, #0x34]
    ldrb r3, [r2, #1]
    movs r4, #0xf
    adds r2, r3, #0
    ands r2, r4
    adds r4, r2, #0
    lsls r3, r4, #0x18
    lsrs r2, r3, #0x18
    adds r3, r2, #0
    lsls r2, r3, #0xc
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806E000

    thumb_func_start func_0806E054
func_0806E054: @ 0x0806E054
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L0806E0E4 @ =0x08C9CE58
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    movs r2, #0xa8
    lsls r2, r2, #2
    adds r0, r1, #0
    adds r1, r2, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    movs r4, #0xa0
    lsls r4, r4, #7
    adds r3, r2, r4
    ldrh r1, [r1, #2]
    adds r2, r3, #0
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    ldr r0, [r7]
    ldr r1, [r0, #0x34]
    ldrb r0, [r1, #1]
    adds r1, r0, #0
    adds r1, #0x10
    adds r0, r1, #0
    lsls r1, r0, #5
    asrs r0, r1, #1
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r2, .L0806E0E8 @ =gPal
    adds r1, r0, r2
    adds r0, r1, #0
    movs r1, #0x15
    movs r2, #0x14
    ldr r3, [r7]
    bl StartPalFade
    ldr r1, .L0806E0EC @ =0x08C9D15C
    adds r0, r1, #0
    ldr r1, [r7]
    bl Proc_Start
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    ldr r1, [r7]
    str r1, [r0, #0x2c]
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E0E4: .4byte 0x08C9CE58
.L0806E0E8: .4byte gPal
.L0806E0EC: .4byte 0x08C9D15C
    func_end func_0806E054

    thumb_func_start func_0806E0F0
func_0806E0F0: @ 0x0806E0F0
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    ldr r1, [r0, #0x2c]
    ldr r0, [r1, #0x30]
    ldr r1, [r7]
    ldr r2, [r1, #0x2c]
    ldr r1, [r2, #0x34]
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    ldr r2, [r3, #0x34]
    ldrb r3, [r2, #1]
    movs r4, #0xf
    adds r2, r3, #0
    ands r2, r4
    adds r4, r2, #0
    lsls r3, r4, #0x18
    lsrs r2, r3, #0x18
    adds r3, r2, #0
    lsls r2, r3, #0xc
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    ldr r2, [r7]
    ldr r3, [r2, #0x2c]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806E0F0

    thumb_func_start func_0806E144
func_0806E144: @ 0x0806E144
    push {r7, lr}
    mov r7, sp
    ldr r0, .L0806E158 @ =0x08C9D00C
    ldr r1, .L0806E15C @ =func_0806E160
    bl Proc_ForEach
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806E158: .4byte 0x08C9D00C
.L0806E15C: .4byte func_0806E160
    func_end func_0806E144

    thumb_func_start func_0806E160
func_0806E160: @ 0x0806E160
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x44
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #1
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806E160

    thumb_func_start func_0806E188
func_0806E188: @ 0x0806E188
    push {r4, r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x18]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x18]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldrh r1, [r0, #0x1a]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0, #0x1a]
    ldr r1, [r7]
    ldr r2, [r7, #4]
    adds r0, r2, #0
    adds r2, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r0, r3
    adds r2, r0, #0
    strb r2, [r1]
    ldr r0, [r7]
    ldr r4, [r0, #0x30]
    ldr r1, [r7]
    adds r0, r1, #0
    adds r1, #0x41
    ldrb r2, [r1]
    adds r0, r2, #0
    bl func_0806D580
    adds r1, r0, #0
    adds r0, r4, #0
    bl SetSpriteAnimInfo
    ldr r0, [r7]
    bl func_0806D554
    adds r4, r0, #0
    ldr r0, [r7]
    ldr r1, [r0, #0x34]
    ldrb r2, [r1]
    adds r0, r2, #0
    bl func_0806D524
    adds r1, r0, #0
    adds r0, r4, #0
    bl Decompress
    ldr r0, [r7, #8]
    ldr r1, [r7]
    ldr r2, [r1, #0x34]
    ldrb r1, [r2, #1]
    adds r2, r1, #0
    adds r2, #0x10
    adds r1, r2, #0
    lsls r2, r1, #5
    adds r1, r2, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    add sp, #0xc
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_0806E188

    thumb_func_start func_0806E220
func_0806E220: @ 0x0806E220
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r1, [r7]
    ldr r0, [r1, #0x34]
    ldr r2, [r7, #4]
    adds r1, r2, #0
    ldrb r2, [r0, #1]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r1, [r7]
    ldr r0, [r1, #0x30]
    ldr r2, [r7]
    ldr r1, [r2, #0x34]
    ldr r2, [r7, #4]
    movs r3, #0xf
    ands r2, r3
    adds r3, r2, #0
    lsls r2, r3, #0xc
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    ldr r3, [r7]
    adds r2, r3, #0
    adds r3, #0x46
    ldrh r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r0, #0x22]
    movs r3, #0
    ands r2, r3
    adds r3, r2, #0
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0, #0x22]
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0806E220

    thumb_func_start func_0806E278
func_0806E278: @ 0x0806E278
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L0806E294 @ =0x030014E8
    ldr r1, [r7]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, r0, r1
    ldrb r1, [r0]
    cmp r1, #0
    bne .L0806E298
    movs r0, #0
    b .L0806E2B0
    .align 2, 0
.L0806E294: .4byte 0x030014E8
.L0806E298:
    ldr r0, .L0806E2AC @ =0x030014E8
    ldr r1, [r7]
    movs r2, #0x4c
    muls r1, r2, r1
    adds r0, #0x48
    adds r1, r0, r1
    ldr r2, [r1]
    adds r0, r2, #0
    b .L0806E2B0
    .align 2, 0
.L0806E2AC: .4byte 0x030014E8
.L0806E2B0:
    add sp, #4
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806E278

    thumb_func_start func_0806E2B8
func_0806E2B8: @ 0x0806E2B8
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    movs r0, #0
    str r0, [r7, #4]
.L0806E2C4:
    ldr r0, [r7, #4]
    cmp r0, #3
    ble .L0806E2CC
    b .L0806E2EE
.L0806E2CC:
    ldr r1, [r7, #4]
    adds r0, r1, #0
    bl func_0806E278
    str r0, [r7, #8]
    ldr r0, [r7, #8]
    ldr r1, [r0, #0x2c]
    ldr r0, [r7]
    cmp r1, r0
    bne .L0806E2E6
    ldr r1, [r7, #8]
    adds r0, r1, #0
    b .L0806E2F2
.L0806E2E6:
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L0806E2C4
.L0806E2EE:
    movs r0, #0
    b .L0806E2F2
.L0806E2F2:
    add sp, #0xc
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0806E2B8
