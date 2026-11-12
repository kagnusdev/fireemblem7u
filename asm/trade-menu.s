    .include "asm_prelude.inc"

    thumb_func_start func_0802ABB4
func_0802ABB4: @ 0x0802ABB4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    mov r8, r0
    movs r1, #0x90
    lsls r1, r1, #7
    movs r3, #0x80
    lsls r3, r3, #4
    movs r0, #0x80
    lsls r0, r0, #3
    str r0, [sp]
    mov r0, r8
    str r0, [sp, #4]
    movs r0, #6
    movs r2, #8
    bl func_080A9B74
    movs r1, #0x28
    rsbs r1, r1, #0
    movs r4, #1
    rsbs r4, r4, #0
    movs r0, #0
    adds r2, r4, #0
    movs r3, #1
    bl func_080A9BF4
    movs r0, #1
    movs r1, #0xb8
    adds r2, r4, #0
    movs r3, #0
    bl func_080A9BF4
    ldr r3, .L0802AC9C @ =gDispIo
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
    movs r2, #0
    movs r0, #0xc
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x45
    movs r6, #6
    strb r6, [r0]
    adds r0, #1
    strb r2, [r0]
    ldr r0, .L0802ACA0 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    ldr r1, .L0802ACA4 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf8
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    mov r1, r8
    ldr r0, [r1, #0x2c]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r7, r0, #0
    bl GetStringTextLen
    movs r4, #0x30
    subs r0, r4, r0
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r3, r0, #1
    ldr r5, .L0802ACA8 @ =gBg0Tm
    str r6, [sp]
    str r7, [sp, #4]
    movs r0, #0
    adds r1, r5, #0
    movs r2, #0
    bl PutDrawText
    mov r2, r8
    ldr r0, [r2, #0x30]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r7, r0, #0
    bl GetStringTextLen
    subs r4, r4, r0
    lsrs r0, r4, #0x1f
    adds r4, r4, r0
    asrs r3, r4, #1
    adds r5, #0x30
    str r6, [sp]
    str r7, [sp, #4]
    movs r0, #0
    adds r1, r5, #0
    movs r2, #0
    bl PutDrawText
    movs r0, #1
    bl EnableBgSync
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802AC9C: .4byte gDispIo
.L0802ACA0: .4byte 0x0000FFE0
.L0802ACA4: .4byte 0x0000E0FF
.L0802ACA8: .4byte gBg0Tm
    func_end func_0802ABB4

    thumb_func_start func_0802ACAC
func_0802ACAC: @ 0x0802ACAC
    adds r0, #0x41
    movs r1, #0xff
    strb r1, [r0]
    bx lr
    func_end func_0802ACAC

    thumb_func_start func_0802ACB4
func_0802ACB4: @ 0x0802ACB4
    push {r4, r5, r6, r7, lr}
    adds r3, r0, #0
    ldr r4, [r3, #0x14]
    ldr r0, [r3, #0x40]
    ldr r2, .L0802AD28 @ =0x00FFFF00
    ands r0, r2
    ldr r1, [r4, #0x40]
    ands r1, r2
    cmp r0, r1
    beq .L0802AD20
    adds r5, r3, #0
    adds r5, #0x41
    ldrb r0, [r5]
    adds r7, r3, #0
    adds r7, #0x42
    cmp r0, #0xff
    beq .L0802ACF4
    ldr r0, .L0802AD2C @ =0x08B942B8
    ldrb r2, [r5]
    lsls r1, r2, #2
    adds r1, r1, r2
    ldrb r2, [r7]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    movs r2, #2
    ldrsh r1, [r1, r2]
    movs r2, #0xc
    bl ClearUiItemHover
.L0802ACF4:
    ldr r0, .L0802AD2C @ =0x08B942B8
    adds r6, r4, #0
    adds r6, #0x42
    adds r4, #0x41
    ldrb r2, [r4]
    lsls r1, r2, #2
    adds r1, r1, r2
    ldrb r2, [r6]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    movs r2, #2
    ldrsh r1, [r1, r2]
    movs r2, #0xc
    bl DrawUiItemHover
    ldrb r0, [r4]
    strb r0, [r5]
    ldrb r0, [r6]
    strb r0, [r7]
.L0802AD20:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802AD28: .4byte 0x00FFFF00
.L0802AD2C: .4byte 0x08B942B8
    func_end func_0802ACB4

    thumb_func_start func_0802AD30
func_0802AD30: @ 0x0802AD30
    push {r4, lr}
    adds r3, r2, #0
    lsls r2, r1, #1
    adds r2, r2, r1
    lsls r4, r2, #1
    adds r1, r3, r4
    adds r2, r0, #0
    adds r2, #0x34
    adds r1, r2, r1
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L0802AD62
    cmp r3, #0
    blt .L0802AD62
    adds r0, r4, r2
    adds r1, r3, r0
.L0802AD52:
    subs r1, #1
    subs r3, #1
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L0802AD62
    cmp r3, #0
    bge .L0802AD52
.L0802AD62:
    adds r0, r3, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802AD30

    thumb_func_start func_0802AD6C
func_0802AD6C: @ 0x0802AD6C
    push {r4, r5, r6, r7, lr}
    movs r1, #0
    ldr r7, .L0802AD9C @ =0x0200278C
.L0802AD72:
    movs r5, #0
    lsls r0, r1, #2
    adds r6, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r4, r7, r0
.L0802AD7E:
    adds r0, r4, #0
    movs r1, #7
    bl InitTextDb
    adds r4, #8
    adds r5, #1
    cmp r5, #4
    ble .L0802AD7E
    adds r1, r6, #0
    cmp r1, #1
    ble .L0802AD72
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802AD9C: .4byte 0x0200278C
    func_end func_0802AD6C

    thumb_func_start func_0802ADA0
func_0802ADA0: @ 0x0802ADA0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r5, r0, #0
    ldr r1, .L0802AE6C @ =0x081C3CEC
    mov r0, sp
    movs r2, #2
    bl memcpy
    add r4, sp, #4
    ldr r1, .L0802AE70 @ =0x081C3CEE
    adds r0, r4, #0
    movs r2, #2
    bl memcpy
    movs r0, #0
    str r0, [sp, #8]
    add r0, sp, #8
    ldr r1, .L0802AE74 @ =0x02022EA0
    ldr r2, .L0802AE78 @ =0x010000B0
    bl CpuFastSet
    movs r0, #0
    mov r8, r0
    adds r5, #0x2c
    str r5, [sp, #0xc]
.L0802ADDA:
    movs r7, #0
    mov r1, r8
    lsls r0, r1, #2
    adds r1, #1
    str r1, [sp, #0x10]
    ldr r1, [sp, #0xc]
    adds r1, r1, r0
    mov sb, r1
    add r0, r8
    lsls r0, r0, #3
    mov sl, r0
.L0802ADF0:
    mov r1, sb
    ldr r0, [r1]
    lsls r4, r7, #1
    adds r0, #0x1e
    adds r0, r0, r4
    ldrh r5, [r0]
    lsls r0, r7, #3
    ldr r1, .L0802AE7C @ =0x0200278C
    adds r0, r0, r1
    mov r1, sl
    adds r6, r1, r0
    adds r0, r6, #0
    bl ClearText
    cmp r5, #0
    beq .L0802AE46
    mov r1, sb
    ldr r0, [r1]
    adds r1, r5, #0
    bl IsItemDisplayUseable
    adds r2, r0, #0
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    mov r0, sp
    add r0, r8
    adds r0, #4
    ldrb r0, [r0]
    adds r3, r0, r4
    adds r3, #1
    lsls r3, r3, #5
    adds r3, #1
    mov r0, sp
    add r0, r8
    ldrb r0, [r0]
    adds r3, r0, r3
    lsls r3, r3, #1
    ldr r0, .L0802AE80 @ =gBg0Tm
    adds r3, r3, r0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08016470
.L0802AE46:
    adds r7, #1
    cmp r7, #4
    ble .L0802ADF0
    ldr r0, [sp, #0x10]
    mov r8, r0
    cmp r0, #1
    ble .L0802ADDA
    movs r0, #1
    bl EnableBgSync
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802AE6C: .4byte 0x081C3CEC
.L0802AE70: .4byte 0x081C3CEE
.L0802AE74: .4byte 0x02022EA0
.L0802AE78: .4byte 0x010000B0
.L0802AE7C: .4byte 0x0200278C
.L0802AE80: .4byte gBg0Tm
    func_end func_0802ADA0

    thumb_func_start func_0802AE84
func_0802AE84: @ 0x0802AE84
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    movs r2, #0
    adds r7, r0, #0
    adds r7, #0x2c
    adds r6, r0, #0
    adds r6, #0x34
    movs r1, #0x39
    adds r1, r1, r0
    mov r8, r1
    adds r0, #0x3f
    mov ip, r0
.L0802AE9E:
    movs r3, #0
    lsls r1, r2, #2
    lsls r0, r2, #1
    adds r5, r2, #1
    adds r4, r7, r1
    adds r0, r0, r2
    lsls r0, r0, #1
    adds r2, r0, r6
.L0802AEAE:
    ldr r0, [r4]
    lsls r1, r3, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    rsbs r0, r0, #0
    lsrs r0, r0, #0x1f
    strb r0, [r2]
    adds r2, #1
    adds r3, #1
    cmp r3, #4
    ble .L0802AEAE
    adds r2, r5, #0
    cmp r2, #1
    ble .L0802AE9E
    movs r0, #0
    mov r1, r8
    strb r0, [r1]
    mov r1, ip
    strb r0, [r1]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0802AE84

    thumb_func_start func_0802AEE0
func_0802AEE0: @ 0x0802AEE0
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    movs r7, #0
    ldr r0, .L0802B01C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x20
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0802AF2C
    adds r6, r5, #0
    adds r6, #0x41
    ldrb r0, [r6]
    cmp r0, #1
    bne .L0802AF2C
    adds r4, r5, #0
    adds r4, #0x42
    ldrb r2, [r4]
    adds r0, r5, #0
    movs r1, #0
    bl func_0802AD30
    adds r1, r0, #0
    cmp r1, #0
    bge .L0802AF14
    b .L0802B014
.L0802AF14:
    strb r7, [r6]
    strb r1, [r4]
    movs r7, #1
    ldr r0, .L0802B020 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802AF2C
    ldr r0, .L0802B024 @ =0x00000387
    bl m4aSongNumStart
.L0802AF2C:
    ldr r0, .L0802B01C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0802AF72
    adds r6, r5, #0
    adds r6, #0x41
    ldrb r0, [r6]
    cmp r0, #0
    bne .L0802AF72
    adds r4, r5, #0
    adds r4, #0x42
    ldrb r2, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_0802AD30
    adds r1, r0, #0
    cmp r1, #0
    blt .L0802B014
    movs r0, #1
    strb r0, [r6]
    strb r1, [r4]
    movs r7, #1
    ldr r0, .L0802B020 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802AF72
    ldr r0, .L0802B024 @ =0x00000387
    bl m4aSongNumStart
.L0802AF72:
    ldr r0, .L0802B01C @ =gpKeySt
    ldr r1, [r0]
    ldrh r2, [r1, #6]
    movs r0, #0x40
    ands r0, r2
    cmp r0, #0
    beq .L0802AFBC
    adds r4, r5, #0
    adds r4, #0x42
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0802AFA2
    ldrh r1, [r1, #8]
    cmp r2, r1
    bne .L0802B014
    adds r0, r5, #0
    adds r0, #0x41
    ldrb r1, [r0]
    adds r0, r5, #0
    movs r2, #4
    bl func_0802AD30
    adds r0, #1
    strb r0, [r4]
.L0802AFA2:
    ldrb r0, [r4]
    subs r0, #1
    strb r0, [r4]
    movs r7, #1
    ldr r0, .L0802B020 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802AFBC
    ldr r0, .L0802B028 @ =0x00000386
    bl m4aSongNumStart
.L0802AFBC:
    ldr r0, .L0802B01C @ =gpKeySt
    ldr r4, [r0]
    ldrh r1, [r4, #6]
    mov ip, r1
    movs r0, #0x80
    mov r6, ip
    ands r0, r6
    cmp r0, #0
    beq .L0802B014
    adds r2, r5, #0
    adds r2, #0x42
    ldrb r3, [r2]
    adds r1, r5, #0
    adds r1, #0x41
    ldrb r6, [r1]
    lsls r0, r6, #1
    adds r0, r0, r6
    lsls r0, r0, #1
    adds r0, #1
    adds r0, r3, r0
    subs r1, #0xd
    adds r1, r1, r0
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L0802AFFA
    ldrh r4, [r4, #8]
    cmp ip, r4
    bne .L0802B014
    movs r0, #0xff
    strb r0, [r2]
.L0802AFFA:
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
    movs r7, #1
    ldr r0, .L0802B020 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B014
    ldr r0, .L0802B028 @ =0x00000386
    bl m4aSongNumStart
.L0802B014:
    adds r0, r7, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0802B01C: .4byte gpKeySt
.L0802B020: .4byte gPlaySt
.L0802B024: .4byte 0x00000387
.L0802B028: .4byte 0x00000386
    func_end func_0802AEE0

    thumb_func_start func_0802B02C
func_0802B02C: @ 0x0802B02C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r1, r0, #2
    adds r3, r4, #0
    adds r3, #0x2c
    adds r1, r3, r1
    adds r0, r4, #0
    adds r0, #0x42
    ldrb r0, [r0]
    lsls r0, r0, #1
    adds r0, #0x1e
    ldr r2, [r1]
    adds r2, r2, r0
    adds r0, r4, #0
    adds r0, #0x43
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r3, r3, r0
    adds r0, r4, #0
    adds r0, #0x44
    ldrb r0, [r0]
    lsls r0, r0, #1
    adds r0, #0x1e
    ldr r1, [r3]
    adds r1, r1, r0
    ldrh r3, [r2]
    ldrh r0, [r1]
    strh r0, [r2]
    strh r3, [r1]
    adds r1, r4, #0
    adds r1, #0x40
    movs r0, #1
    strb r0, [r1]
    ldr r1, .L0802B090 @ =gActionSt
    movs r0, #0x18
    strb r0, [r1, #0x11]
    ldr r0, [r4, #0x2c]
    bl UnitRemoveInvalidItems
    ldr r0, [r4, #0x30]
    bl UnitRemoveInvalidItems
    adds r0, r4, #0
    bl func_0802ADA0
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B090: .4byte gActionSt
    func_end func_0802B02C

    thumb_func_start func_0802B094
func_0802B094: @ 0x0802B094
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    movs r4, #0
    str r4, [sp]
    movs r0, #1
    movs r1, #8
    movs r2, #0xe
    movs r3, #0xc
    bl DrawUiFrame2
    str r4, [sp]
    movs r0, #0xf
    movs r1, #8
    movs r2, #0xe
    movs r3, #0xc
    bl DrawUiFrame2
    bl ResetTextFont
    bl ClearIcons
    movs r0, #4
    bl ApplyIconPalettes
    adds r0, r5, #0
    bl func_0802AD6C
    adds r0, r5, #0
    bl func_0802ADA0
    ldr r0, [r5, #0x2c]
    bl GetUnitPortraitId
    adds r1, r0, #0
    subs r4, #4
    movs r0, #3
    str r0, [sp]
    movs r0, #0
    movs r2, #0x40
    adds r3, r4, #0
    bl StartFace
    ldr r0, [r5, #0x30]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #1
    movs r2, #0xb0
    adds r3, r4, #0
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    movs r0, #1
    movs r1, #5
    bl SetFaceBlinkControlById
    movs r0, #3
    bl EnableBgSync
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0802B094

    thumb_func_start func_0802B120
func_0802B120: @ 0x0802B120
    push {r4, lr}
    adds r4, r0, #0
    bl func_0802AE84
    adds r4, #0x45
    movs r0, #0
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802B120

    thumb_func_start func_0802B134
func_0802B134: @ 0x0802B134
    push {r4, r5, lr}
    adds r4, r0, #0
    bl func_0802B8AC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802B170
    ldr r2, .L0802B16C @ =0x08B942B8
    adds r3, r4, #0
    adds r3, #0x42
    adds r0, r4, #0
    adds r0, #0x41
    ldrb r4, [r0]
    lsls r1, r4, #2
    adds r1, r1, r4
    ldrb r3, [r3]
    adds r1, r3, r1
    lsls r1, r1, #2
    adds r1, r1, r2
    movs r5, #0
    ldrsh r0, [r1, r5]
    lsls r0, r0, #3
    movs r2, #2
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    bl PutUiHand
    b .L0802B216
    .align 2, 0
.L0802B16C: .4byte 0x08B942B8
.L0802B170:
    adds r0, r4, #0
    bl func_0802AEE0
    ldr r0, .L0802B1C8 @ =0x08B942B8
    adds r3, r4, #0
    adds r3, #0x42
    adds r2, r4, #0
    adds r2, #0x41
    ldrb r5, [r2]
    lsls r1, r5, #2
    adds r1, r1, r5
    ldrb r3, [r3]
    adds r1, r3, r1
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r5, #2
    ldrsh r1, [r1, r5]
    lsls r1, r1, #3
    bl PutUiHand
    ldr r0, .L0802B1CC @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0802B1D8
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
    ldr r0, .L0802B1D0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B216
    ldr r0, .L0802B1D4 @ =0x0000038A
    bl m4aSongNumStart
    b .L0802B216
    .align 2, 0
.L0802B1C8: .4byte 0x08B942B8
.L0802B1CC: .4byte gpKeySt
.L0802B1D0: .4byte gPlaySt
.L0802B1D4: .4byte 0x0000038A
.L0802B1D8:
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L0802B204
    adds r0, r4, #0
    movs r1, #2
    bl Proc_Goto
    ldr r0, .L0802B1FC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B216
    ldr r0, .L0802B200 @ =0x0000038B
    bl m4aSongNumStart
    b .L0802B216
    .align 2, 0
.L0802B1FC: .4byte gPlaySt
.L0802B200: .4byte 0x0000038B
.L0802B204:
    movs r0, #0x80
    lsls r0, r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0802B216
    ldr r0, .L0802B21C @ =0x08B943B0
    adds r1, r4, #0
    bl Proc_StartBlocking
.L0802B216:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B21C: .4byte 0x08B943B0
    func_end func_0802B134

    thumb_func_start func_0802B220
func_0802B220: @ 0x0802B220
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r4, #0
    adds r5, #0x41
    ldrb r0, [r5]
    adds r1, r4, #0
    adds r1, #0x43
    strb r0, [r1]
    adds r6, r4, #0
    adds r6, #0x42
    ldrb r1, [r6]
    adds r0, r4, #0
    adds r0, #0x44
    strb r1, [r0]
    movs r0, #1
    ldrb r1, [r5]
    eors r0, r1
    strb r0, [r5]
    ldrb r1, [r5]
    adds r0, r4, #0
    movs r2, #4
    bl func_0802AD30
    cmp r0, #4
    beq .L0802B280
    adds r0, #1
    strb r0, [r6]
    ldrb r1, [r5]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #1
    ldrb r1, [r6]
    adds r0, r1, r0
    adds r1, r4, #0
    adds r1, #0x34
    adds r1, r1, r0
    movs r0, #1
    strb r0, [r1]
    adds r1, r4, #0
    adds r1, #0x45
    strb r0, [r1]
    ldrb r0, [r5]
    adds r1, #1
    strb r0, [r1]
    ldrb r1, [r6]
    adds r0, r4, #0
    adds r0, #0x47
    strb r1, [r0]
.L0802B280:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0802B220

    thumb_func_start func_0802B288
func_0802B288: @ 0x0802B288
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0802B8AC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802B2EC
    ldr r4, .L0802B2E8 @ =0x08B942B8
    adds r2, r5, #0
    adds r2, #0x42
    adds r0, r5, #0
    adds r0, #0x41
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r4
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl PutUiHand
    adds r2, r5, #0
    adds r2, #0x44
    adds r0, r5, #0
    adds r0, #0x43
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r4
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl DisplayFrozenUiHand
    b .L0802B3B2
    .align 2, 0
.L0802B2E8: .4byte 0x08B942B8
.L0802B2EC:
    adds r0, r5, #0
    bl func_0802AEE0
    ldr r4, .L0802B364 @ =0x08B942B8
    adds r2, r5, #0
    adds r2, #0x42
    adds r0, r5, #0
    adds r0, #0x41
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r4
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl PutUiHand
    adds r0, r5, #0
    adds r0, #0x44
    adds r2, r5, #0
    adds r2, #0x43
    ldrb r3, [r2]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r0, [r0]
    adds r1, r0, r1
    lsls r1, r1, #2
    adds r1, r1, r4
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl DisplayFrozenUiHand
    ldr r0, .L0802B368 @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0802B374
    adds r0, r5, #0
    bl func_0802B02C
    ldr r0, .L0802B36C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B38E
    ldr r0, .L0802B370 @ =0x0000038A
    b .L0802B38A
    .align 2, 0
.L0802B364: .4byte 0x08B942B8
.L0802B368: .4byte gpKeySt
.L0802B36C: .4byte gPlaySt
.L0802B370: .4byte 0x0000038A
.L0802B374:
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L0802B3A0
    ldr r0, .L0802B398 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B38E
    ldr r0, .L0802B39C @ =0x0000038B
.L0802B38A:
    bl m4aSongNumStart
.L0802B38E:
    adds r0, r5, #0
    bl Proc_Break
    b .L0802B3B2
    .align 2, 0
.L0802B398: .4byte gPlaySt
.L0802B39C: .4byte 0x0000038B
.L0802B3A0:
    movs r0, #0x80
    lsls r0, r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0802B3B2
    ldr r0, .L0802B3B8 @ =0x08B943B0
    adds r1, r5, #0
    bl Proc_StartBlocking
.L0802B3B2:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B3B8: .4byte 0x08B943B0
    func_end func_0802B288

    thumb_func_start func_0802B3BC
func_0802B3BC: @ 0x0802B3BC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r0, #0x43
    ldrb r0, [r0]
    adds r5, r4, #0
    adds r5, #0x41
    strb r0, [r5]
    adds r0, r4, #0
    adds r0, #0x44
    ldrb r0, [r0]
    adds r6, r4, #0
    adds r6, #0x42
    strb r0, [r6]
    adds r0, r4, #0
    bl func_0802AE84
    ldrb r2, [r5]
    lsls r1, r2, #1
    adds r1, r1, r2
    lsls r1, r1, #1
    adds r0, r4, #0
    adds r0, #0x34
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L0802B3FA
    movs r0, #1
    eors r2, r0
    strb r2, [r5]
.L0802B3FA:
    ldrb r1, [r5]
    ldrb r2, [r6]
    adds r0, r4, #0
    bl func_0802AD30
    strb r0, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0802B3BC

    thumb_func_start func_0802B40C
func_0802B40C: @ 0x0802B40C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L0802B44C @ =gBmSt
    adds r5, r0, #0
    adds r5, #0x3f
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    blt .L0802B450
    movs r1, #5
    bl __divsi3
    adds r1, r4, #0
    adds r1, #0x41
    strb r0, [r1]
    movs r0, #0
    ldrsb r0, [r5, r0]
    movs r1, #5
    bl __modsi3
    adds r1, r4, #0
    adds r1, #0x42
    strb r0, [r1]
    adds r0, r4, #0
    bl func_0802AE84
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
    movs r0, #0
    b .L0802B452
    .align 2, 0
.L0802B44C: .4byte gBmSt
.L0802B450:
    movs r0, #1
.L0802B452:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0802B40C

    thumb_func_start func_0802B458
func_0802B458: @ 0x0802B458
    push {lr}
    movs r0, #0
    bl EndFaceById
    movs r0, #1
    bl EndFaceById
    pop {r0}
    bx r0
    func_end func_0802B458

    thumb_func_start func_0802B46C
func_0802B46C: @ 0x0802B46C
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    ldr r3, [r2, #0x14]
    adds r4, r3, #0
    adds r4, #0x41
    ldrb r0, [r4]
    lsls r1, r0, #2
    adds r0, r3, #0
    adds r0, #0x2c
    adds r0, r0, r1
    ldr r0, [r0]
    adds r5, r3, #0
    adds r5, #0x42
    ldrb r6, [r5]
    lsls r1, r6, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r6, [r0]
    cmp r6, #0
    bne .L0802B49C
    adds r0, r2, #0
    bl Proc_End
    b .L0802B502
.L0802B49C:
    adds r0, r3, #0
    adds r0, #0x45
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0802B4CA
    adds r2, r3, #0
    adds r2, #0x47
    adds r1, r3, #0
    adds r1, #0x46
    ldrb r7, [r1]
    lsls r0, r7, #1
    adds r1, r7, #0
    adds r0, r0, r1
    lsls r0, r0, #1
    ldrb r2, [r2]
    adds r0, r2, r0
    adds r1, r3, #0
    adds r1, #0x34
    adds r1, r1, r0
    movs r0, #0
    strb r0, [r1]
.L0802B4CA:
    movs r1, #1
    rsbs r1, r1, #0
    movs r0, #0
    bl func_08082528
    ldr r0, .L0802B508 @ =0x08B942B8
    ldrb r2, [r4]
    lsls r1, r2, #2
    adds r1, r1, r2
    ldrb r5, [r5]
    adds r1, r5, r1
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r7, #0
    ldrsh r0, [r1, r7]
    lsls r0, r0, #3
    movs r2, #2
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    adds r2, r6, #0
    bl func_0808198C
    ldr r0, .L0802B50C @ =gpKeySt
    ldr r1, [r0]
    ldr r0, .L0802B510 @ =0x0000FEFD
    ldrh r6, [r1, #8]
    ands r0, r6
    strh r0, [r1, #8]
.L0802B502:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B508: .4byte 0x08B942B8
.L0802B50C: .4byte gpKeySt
.L0802B510: .4byte 0x0000FEFD
    func_end func_0802B46C

    thumb_func_start func_0802B514
func_0802B514: @ 0x0802B514
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov sb, r0
    ldr r4, [r0, #0x14]
    adds r0, r4, #0
    bl func_0802AEE0
    adds r6, r4, #0
    adds r6, #0x41
    ldrb r7, [r6]
    lsls r5, r7, #2
    adds r1, r4, #0
    adds r1, #0x2c
    adds r1, r1, r5
    ldr r1, [r1]
    movs r2, #0x42
    adds r2, r2, r4
    mov r8, r2
    ldrb r3, [r2]
    lsls r2, r3, #1
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r2, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802B566
    ldr r0, .L0802B5E0 @ =0x08B942B8
    adds r1, r5, r7
    adds r1, r1, r3
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r3, #0
    ldrsh r0, [r1, r3]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl func_0808198C
.L0802B566:
    ldr r0, .L0802B5E4 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x81
    lsls r0, r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0802B57C
    mov r0, sb
    bl Proc_Break
.L0802B57C:
    ldr r5, .L0802B5E0 @ =0x08B942B8
    ldrb r0, [r6]
    lsls r1, r0, #2
    adds r1, r1, r0
    mov r2, r8
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r5
    movs r3, #0
    ldrsh r0, [r1, r3]
    lsls r0, r0, #3
    movs r2, #2
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    bl PutUiHand
    adds r0, r4, #0
    adds r0, #0x45
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0802B5D2
    adds r2, r4, #0
    adds r2, #0x44
    adds r0, r4, #0
    adds r0, #0x43
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r5
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl DisplayFrozenUiHand
.L0802B5D2:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B5E0: .4byte 0x08B942B8
.L0802B5E4: .4byte gpKeySt
    func_end func_0802B514

    thumb_func_start func_0802B5E8
func_0802B5E8: @ 0x0802B5E8
    push {r4, r5, r6, lr}
    ldr r4, [r0, #0x14]
    adds r5, r4, #0
    adds r5, #0x45
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L0802B614
    adds r2, r4, #0
    adds r2, #0x47
    adds r1, r4, #0
    adds r1, #0x46
    ldrb r3, [r1]
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #1
    ldrb r2, [r2]
    adds r0, r2, r0
    subs r1, #0x12
    adds r1, r1, r0
    movs r0, #1
    strb r0, [r1]
.L0802B614:
    bl func_08081B44
    ldr r6, .L0802B674 @ =0x08B942B8
    adds r2, r4, #0
    adds r2, #0x42
    adds r0, r4, #0
    adds r0, #0x41
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r6
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl PutUiHand
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L0802B66E
    adds r2, r4, #0
    adds r2, #0x44
    adds r0, r4, #0
    adds r0, #0x43
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r6
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl DisplayFrozenUiHand
.L0802B66E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B674: .4byte 0x08B942B8
    func_end func_0802B5E8

    thumb_func_start func_0802B678
func_0802B678: @ 0x0802B678
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r0, .L0802B6D0 @ =0x08B942F8
    movs r1, #3
    bl Proc_Start
    adds r2, r0, #0
    str r6, [r2, #0x2c]
    str r4, [r2, #0x30]
    adds r1, r2, #0
    adds r1, #0x40
    movs r0, #0
    strb r0, [r1]
    adds r5, r2, #0
    adds r5, #0x41
    strb r0, [r5]
    adds r1, #2
    strb r0, [r1]
    adds r4, r2, #0
    adds r4, #0x48
    strb r0, [r4]
    ldr r0, .L0802B6D4 @ =0x0203A514
    str r2, [r0]
    bl func_08079A5C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802B6BC
    movs r0, #0xc9
    bl SetkeyStIgnoredMask
    movs r0, #1
    strb r0, [r4]
.L0802B6BC:
    adds r0, r6, #0
    bl GetUnitItemCount
    cmp r0, #0
    bne .L0802B6CA
    movs r0, #1
    strb r0, [r5]
.L0802B6CA:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0802B6D0: .4byte 0x08B942F8
.L0802B6D4: .4byte 0x0203A514
    func_end func_0802B678

    thumb_func_start func_0802B6D8
func_0802B6D8: @ 0x0802B6D8
    ldr r0, .L0802B6E4 @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    movs r1, #2
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0802B6E4: .4byte 0x0203A514
    func_end func_0802B6D8

    thumb_func_start func_0802B6E8
func_0802B6E8: @ 0x0802B6E8
    ldr r0, .L0802B6F4 @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    movs r1, #3
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0802B6F4: .4byte 0x0203A514
    func_end func_0802B6E8

    thumb_func_start func_0802B6F8
func_0802B6F8: @ 0x0802B6F8
    ldr r0, .L0802B704 @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    movs r1, #4
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0802B704: .4byte 0x0203A514
    func_end func_0802B6F8

    thumb_func_start func_0802B708
func_0802B708: @ 0x0802B708
    ldr r0, .L0802B714 @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    movs r1, #5
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0802B714: .4byte 0x0203A514
    func_end func_0802B708

    thumb_func_start func_0802B718
func_0802B718: @ 0x0802B718
    ldr r0, .L0802B724 @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    movs r1, #7
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0802B724: .4byte 0x0203A514
    func_end func_0802B718

    thumb_func_start func_0802B728
func_0802B728: @ 0x0802B728
    ldr r0, .L0802B734 @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    movs r1, #8
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0802B734: .4byte 0x0203A514
    func_end func_0802B728

    thumb_func_start func_0802B738
func_0802B738: @ 0x0802B738
    push {r4, lr}
    ldr r0, .L0802B76C @ =0x0203A514
    ldr r0, [r0]
    ldr r2, .L0802B770 @ =0x08B942B8
    adds r3, r0, #0
    adds r3, #0x42
    adds r0, #0x41
    ldrb r4, [r0]
    lsls r1, r4, #2
    adds r1, r1, r4
    ldrb r3, [r3]
    adds r1, r3, r1
    lsls r1, r1, #2
    adds r1, r1, r2
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r4, #2
    ldrsh r1, [r1, r4]
    lsls r1, r1, #3
    bl DisplayFrozenUiHand
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B76C: .4byte 0x0203A514
.L0802B770: .4byte 0x08B942B8
    func_end func_0802B738

    thumb_func_start func_0802B774
func_0802B774: @ 0x0802B774
    push {r4, r5, lr}
    ldr r0, .L0802B7D0 @ =0x0203A514
    ldr r5, [r0]
    ldr r4, .L0802B7D4 @ =0x08B942B8
    adds r2, r5, #0
    adds r2, #0x42
    adds r0, r5, #0
    adds r0, #0x41
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r4
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl DisplayFrozenUiHand
    adds r2, r5, #0
    adds r2, #0x44
    adds r0, r5, #0
    adds r0, #0x43
    ldrb r3, [r0]
    lsls r1, r3, #2
    adds r1, r1, r3
    ldrb r2, [r2]
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r4
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r3, #2
    ldrsh r1, [r1, r3]
    lsls r1, r1, #3
    bl DisplayFrozenUiHand
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802B7D0: .4byte 0x0203A514
.L0802B7D4: .4byte 0x08B942B8
    func_end func_0802B774

    thumb_func_start func_0802B7D8
func_0802B7D8: @ 0x0802B7D8
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802B7E8 @ =0x08B943D0
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L0802B7E8: .4byte 0x08B943D0
    func_end func_0802B7D8

    thumb_func_start func_0802B7EC
func_0802B7EC: @ 0x0802B7EC
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802B7FC @ =0x08B943E8
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L0802B7FC: .4byte 0x08B943E8
    func_end func_0802B7EC

    thumb_func_start func_0802B800
func_0802B800: @ 0x0802B800
    adds r0, #0x4c
    movs r1, #0x14
    strh r1, [r0]
    bx lr
    func_end func_0802B800

    thumb_func_start func_0802B808
func_0802B808: @ 0x0802B808
    push {lr}
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L0802B822
    adds r0, r2, #0
    bl Proc_Break
.L0802B822:
    pop {r0}
    bx r0
    func_end func_0802B808

    thumb_func_start func_0802B828
func_0802B828: @ 0x0802B828
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802B84C @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    ldrb r0, [r0]
    cmp r0, #3
    beq .L0802B846
    cmp r0, #5
    beq .L0802B846
    cmp r0, #8
    beq .L0802B846
    ldr r0, .L0802B850 @ =0x08B94400
    bl Proc_StartBlocking
.L0802B846:
    pop {r0}
    bx r0
    .align 2, 0
.L0802B84C: .4byte 0x0203A514
.L0802B850: .4byte 0x08B94400
    func_end func_0802B828

    thumb_func_start func_0802B854
func_0802B854: @ 0x0802B854
    push {lr}
    adds r1, r0, #0
    adds r0, #0x48
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0802B866
    ldr r0, .L0802B86C @ =0x08B94418
    bl StartEventInternal
.L0802B866:
    pop {r0}
    bx r0
    .align 2, 0
.L0802B86C: .4byte 0x08B94418
    func_end func_0802B854

    thumb_func_start func_0802B870
func_0802B870: @ 0x0802B870
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802B880 @ =0x08B9446C
    bl StartEventInternal
    pop {r0}
    bx r0
    .align 2, 0
.L0802B880: .4byte 0x08B9446C
    func_end func_0802B870

    thumb_func_start func_0802B884
func_0802B884: @ 0x0802B884
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802B894 @ =0x08B944C8
    bl StartEventInternal
    pop {r0}
    bx r0
    .align 2, 0
.L0802B894: .4byte 0x08B944C8
    func_end func_0802B884

    thumb_func_start func_0802B898
func_0802B898: @ 0x0802B898
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802B8A8 @ =0x08B9451C
    bl StartEventInternal
    pop {r0}
    bx r0
    .align 2, 0
.L0802B8A8: .4byte 0x08B9451C
    func_end func_0802B898

    thumb_func_start func_0802B8AC
func_0802B8AC: @ 0x0802B8AC
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x48
    ldrb r0, [r0]
    cmp r0, #4
    beq .L0802B8C4
    ldr r0, .L0802B8E0 @ =gpKeySt
    ldr r0, [r0]
    ldrh r0, [r0, #8]
    cmp r0, #0
    bne .L0802B8C4
    b .L0802BA40
.L0802B8C4:
    ldr r0, .L0802B8E4 @ =0x0203A514
    ldr r0, [r0]
    adds r0, #0x48
    ldrb r0, [r0]
    subs r0, #2
    cmp r0, #6
    bls .L0802B8D4
    b .L0802BA40
.L0802B8D4:
    lsls r0, r0, #2
    ldr r1, .L0802B8E8 @ =.L0802B8EC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802B8E0: .4byte gpKeySt
.L0802B8E4: .4byte 0x0203A514
.L0802B8E8: .4byte .L0802B8EC
.L0802B8EC: @ jump table
    .4byte .L0802B908 @ case 0
    .4byte .L0802B94C @ case 1
    .4byte .L0802B9F0 @ case 2
    .4byte .L0802B9C0 @ case 3
    .4byte .L0802BA40 @ case 4
    .4byte .L0802BA40 @ case 5
    .4byte .L0802BA00 @ case 6
.L0802B908:
    ldr r0, .L0802B924 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0802B928
    movs r0, #0xc8
    bl SetkeyStIgnoredMask
    adds r0, r4, #0
    bl func_0802B870
    b .L0802BA40
    .align 2, 0
.L0802B924: .4byte gpKeySt
.L0802B928:
    ldr r0, .L0802B948 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B93C
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
.L0802B93C:
    adds r0, r4, #0
    movs r1, #0x65
    bl Proc_Goto
    movs r0, #1
    b .L0802BA42
    .align 2, 0
.L0802B948: .4byte gPlaySt
.L0802B94C:
    ldr r0, .L0802B998 @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #0x91
    lsls r0, r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L0802B99C
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0802BA40
    adds r0, r4, #0
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r1, r0, #2
    adds r0, r4, #0
    adds r0, #0x2c
    adds r0, r0, r1
    ldr r0, [r0]
    adds r1, r4, #0
    adds r1, #0x42
    ldrb r1, [r1]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x6b
    bne .L0802B99C
    movs r0, #0xc8
    bl SetkeyStIgnoredMask
    adds r0, r4, #0
    bl func_0802B6F8
    b .L0802BA40
    .align 2, 0
.L0802B998: .4byte gpKeySt
.L0802B99C:
    ldr r0, .L0802B9BC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B9B0
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
.L0802B9B0:
    adds r0, r4, #0
    bl func_0802B870
    movs r0, #1
    b .L0802BA42
    .align 2, 0
.L0802B9BC: .4byte gPlaySt
.L0802B9C0:
    ldr r0, .L0802B9D8 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0802B9DC
    adds r0, r4, #0
    bl func_0802B898
    b .L0802BA40
    .align 2, 0
.L0802B9D8: .4byte gpKeySt
.L0802B9DC:
    ldr r0, .L0802B9FC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802B9F0
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
.L0802B9F0:
    adds r0, r4, #0
    bl func_0802B884
    movs r0, #1
    b .L0802BA42
    .align 2, 0
.L0802B9FC: .4byte gPlaySt
.L0802BA00:
    ldr r0, .L0802BA18 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0802BA1C
    movs r0, #0
    bl SetkeyStIgnoredMask
    b .L0802BA40
    .align 2, 0
.L0802BA18: .4byte gpKeySt
.L0802BA1C:
    ldr r0, .L0802BA3C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802BA30
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
.L0802BA30:
    adds r0, r4, #0
    bl func_0802B898
    movs r0, #1
    b .L0802BA42
    .align 2, 0
.L0802BA3C: .4byte gPlaySt
.L0802BA40:
    movs r0, #0
.L0802BA42:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802B8AC
