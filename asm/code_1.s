    .include "asm_prelude.inc"

    thumb_func_start func_08006B20
func_08006B20: @ 0x08006B20
    adds r1, r0, #0
    lsls r0, r1, #3
    subs r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08006B30 @ =0x08C96584
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L08006B30: .4byte 0x08C96584
    func_end func_08006B20

    thumb_func_start InitFaces
InitFaces: @ 0x08006B34
    push {r4, lr}
    movs r4, #0
.L08006B38:
    adds r0, r4, #0
    bl func_08006D50
    adds r4, #1
    cmp r4, #3
    ble .L08006B38
    movs r0, #0
    bl SetFaceConfig
    pop {r4}
    pop {r0}
    bx r0
    func_end InitFaces

    thumb_func_start SetFaceConfig
SetFaceConfig: @ 0x08006B50
    cmp r0, #0
    bne .L08006B56
    ldr r0, .L08006B70 @ =0x08B90658
.L08006B56:
    ldr r2, .L08006B74 @ =gFaceConfig
    adds r1, r0, #0
    movs r3, #3
.L08006B5C:
    ldr r0, [r1]
    str r0, [r2]
    ldrh r0, [r1, #4]
    strh r0, [r2, #4]
    adds r2, #8
    adds r1, #8
    subs r3, #1
    cmp r3, #0
    bge .L08006B5C
    bx lr
    .align 2, 0
.L08006B70: .4byte 0x08B90658
.L08006B74: .4byte gFaceConfig
    func_end SetFaceConfig

    thumb_func_start func_08006B78
func_08006B78: @ 0x08006B78
    movs r1, #0
    ldr r2, .L08006B88 @ =0x030041C0
.L08006B7C:
    ldr r0, [r2]
    cmp r0, #0
    bne .L08006B8C
    adds r0, r1, #0
    b .L08006B98
    .align 2, 0
.L08006B88: .4byte 0x030041C0
.L08006B8C:
    adds r2, #4
    adds r1, #1
    cmp r1, #3
    ble .L08006B7C
    movs r0, #1
    rsbs r0, r0, #0
.L08006B98:
    bx lr
    func_end func_08006B78

    thumb_func_start func_08006B9C
func_08006B9C: @ 0x08006B9C
    push {lr}
    ldr r1, [r0, #0x2c]
    ldr r2, [r1]
    ldr r1, .L08006BBC @ =gFaceConfig
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L08006BC0 @ =0x06010000
    adds r1, r1, r0
    adds r0, r2, #0
    bl Decompress
    pop {r0}
    bx r0
    .align 2, 0
.L08006BBC: .4byte gFaceConfig
.L08006BC0: .4byte 0x06010000
    func_end func_08006B9C

    thumb_func_start func_08006BC4
func_08006BC4: @ 0x08006BC4
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_08006D9C
    adds r2, r0, #0
    movs r0, #0x80
    lsls r0, r0, #3
    ands r2, r0
    rsbs r2, r2, #0
    asrs r2, r2, #0x1f
    ands r2, r0
    movs r0, #0xff
    ldrh r1, [r4, #0x36]
    ands r0, r1
    adds r2, r2, r0
    adds r0, r4, #0
    adds r0, #0x41
    ldrb r0, [r0]
    ldr r1, .L08006C04 @ =0x000001FF
    ldrh r3, [r4, #0x34]
    ands r1, r3
    ldr r3, [r4, #0x38]
    ldrh r4, [r4, #0x3c]
    str r4, [sp]
    bl PutSpriteExt
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08006C04: .4byte 0x000001FF
    func_end func_08006BC4

    thumb_func_start StartFaceAuto
StartFaceAuto: @ 0x08006C08
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    adds r4, r3, #0
    bl func_08006B78
    cmp r0, #0
    blt .L08006C2A
    str r4, [sp]
    adds r1, r5, #0
    adds r2, r6, #0
    adds r3, r7, #0
    bl StartFace
    b .L08006C2C
.L08006C2A:
    movs r0, #0
.L08006C2C:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end StartFaceAuto

    thumb_func_start StartFace
StartFace: @ 0x08006C34
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
    ldr r1, .L08006C58 @ =0x030041C0
    lsls r0, r6, #2
    adds r5, r0, r1
    ldr r7, [r5]
    cmp r7, #0
    beq .L08006C5C
    movs r0, #0
    b .L08006D18
    .align 2, 0
.L08006C58: .4byte 0x030041C0
.L08006C5C:
    ldr r0, .L08006C9C @ =0x08B907C0
    movs r1, #5
    bl Proc_Start
    adds r4, r0, #0
    str r4, [r5]
    mov r0, r8
    bl func_08006B20
    adds r5, r0, #0
    movs r0, #0x80
    lsls r0, r0, #6
    ldr r1, [sp, #0x24]
    ands r0, r1
    cmp r0, #0
    beq .L08006CAC
    str r7, [sp]
    ldr r1, .L08006CA0 @ =gFaceConfig
    lsls r0, r6, #3
    adds r0, r0, r1
    ldrh r0, [r0, #4]
    lsls r1, r0, #5
    ldr r0, .L08006CA4 @ =0x02022A60
    adds r1, r1, r0
    ldr r2, .L08006CA8 @ =0x01000008
    mov r0, sp
    bl CpuFastSet
    bl EnablePalSync
    b .L08006CC0
    .align 2, 0
.L08006C9C: .4byte 0x08B907C0
.L08006CA0: .4byte gFaceConfig
.L08006CA4: .4byte 0x02022A60
.L08006CA8: .4byte 0x01000008
.L08006CAC:
    ldr r0, [r5, #8]
    ldr r2, .L08006CF0 @ =gFaceConfig
    lsls r1, r6, #3
    adds r1, r1, r2
    ldrh r1, [r1, #4]
    adds r1, #0x10
    lsls r1, r1, #5
    movs r2, #0x20
    bl ApplyPaletteExt
.L08006CC0:
    str r5, [r4, #0x2c]
    adds r0, r4, #0
    adds r0, #0x40
    movs r2, #0
    strb r6, [r0]
    mov r0, r8
    strh r0, [r4, #0x3e]
    adds r1, r4, #0
    adds r1, #0x41
    movs r0, #5
    strb r0, [r1]
    mov r1, sb
    strh r1, [r4, #0x34]
    mov r0, sl
    strh r0, [r4, #0x36]
    movs r0, #0x80
    lsls r0, r0, #5
    ldr r1, [sp, #0x24]
    ands r0, r1
    cmp r0, #0
    beq .L08006CF4
    str r2, [r4, #0x44]
    str r2, [r4, #0x48]
    b .L08006D08
    .align 2, 0
.L08006CF0: .4byte gFaceConfig
.L08006CF4:
    ldr r0, .L08006D28 @ =0x08B908B8
    adds r1, r4, #0
    bl Proc_Start
    str r0, [r4, #0x44]
    ldr r0, .L08006D2C @ =0x08B908D0
    adds r1, r4, #0
    bl Proc_Start
    str r0, [r4, #0x48]
.L08006D08:
    ldr r1, [sp, #0x24]
    mvns r0, r1
    str r0, [r4, #0x30]
    adds r0, r4, #0
    ldr r1, [sp, #0x24]
    bl func_08006D68
    adds r0, r4, #0
.L08006D18:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08006D28: .4byte 0x08B908B8
.L08006D2C: .4byte 0x08B908D0
    func_end StartFace

    thumb_func_start func_08006D30
func_08006D30: @ 0x08006D30
    push {lr}
    ldr r2, .L08006D4C @ =0x030041C0
    adds r1, r0, #0
    adds r1, #0x40
    ldrb r1, [r1]
    lsls r1, r1, #2
    adds r1, r1, r2
    movs r2, #0
    str r2, [r1]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L08006D4C: .4byte 0x030041C0
    func_end func_08006D30

    thumb_func_start func_08006D50
func_08006D50: @ 0x08006D50
    push {lr}
    ldr r1, .L08006D64 @ =0x030041C0
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    bl func_08006D30
    pop {r0}
    bx r0
    .align 2, 0
.L08006D64: .4byte 0x030041C0
    func_end func_08006D50

    thumb_func_start func_08006D68
func_08006D68: @ 0x08006D68
    push {r4, lr}
    adds r4, r0, #0
    cmp r4, #0
    beq .L08006D7A
    str r1, [r4, #0x30]
    bl func_08006DB8
    ldr r0, [r4, #0x30]
    b .L08006D7C
.L08006D7A:
    movs r0, #0
.L08006D7C:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08006D68

    thumb_func_start func_08006D84
func_08006D84: @ 0x08006D84
    push {lr}
    ldr r2, .L08006D98 @ =0x030041C0
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r0, [r0]
    bl func_08006D68
    pop {r1}
    bx r1
    .align 2, 0
.L08006D98: .4byte 0x030041C0
    func_end func_08006D84

    thumb_func_start func_08006D9C
func_08006D9C: @ 0x08006D9C
    ldr r0, [r0, #0x30]
    bx lr
    func_end func_08006D9C

    thumb_func_start func_08006DA0
func_08006DA0: @ 0x08006DA0
    push {lr}
    ldr r1, .L08006DB4 @ =0x030041C0
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    bl func_08006D9C
    pop {r1}
    bx r1
    .align 2, 0
.L08006DB4: .4byte 0x030041C0
    func_end func_08006DA0

    thumb_func_start func_08006DB8
func_08006DB8: @ 0x08006DB8
    push {r4, lr}
    adds r3, r0, #0
    ldr r1, [r3, #0x30]
    ldr r0, .L08006DE0 @ =0x00000807
    ands r1, r0
    cmp r1, #3
    beq .L08006E04
    cmp r1, #3
    bls .L08006DE4
    cmp r1, #5
    beq .L08006E14
    cmp r1, #5
    blo .L08006E0C
    subs r0, #7
    cmp r1, r0
    beq .L08006E1C
    adds r0, #1
    cmp r1, r0
    beq .L08006E24
    b .L08006E28
    .align 2, 0
.L08006DE0: .4byte 0x00000807
.L08006DE4:
    cmp r1, #1
    beq .L08006DF4
    cmp r1, #1
    bhi .L08006DFC
    ldr r0, .L08006DF0 @ =0x08B90678
    b .L08006E26
    .align 2, 0
.L08006DF0: .4byte 0x08B90678
.L08006DF4:
    ldr r0, .L08006DF8 @ =0x08B90692
    b .L08006E26
    .align 2, 0
.L08006DF8: .4byte 0x08B90692
.L08006DFC:
    ldr r0, .L08006E00 @ =0x08B906AC
    b .L08006E26
    .align 2, 0
.L08006E00: .4byte 0x08B906AC
.L08006E04:
    ldr r0, .L08006E08 @ =0x08B906D2
    b .L08006E26
    .align 2, 0
.L08006E08: .4byte 0x08B906D2
.L08006E0C:
    ldr r0, .L08006E10 @ =0x08B906F8
    b .L08006E26
    .align 2, 0
.L08006E10: .4byte 0x08B906F8
.L08006E14:
    ldr r0, .L08006E18 @ =0x08B9072A
    b .L08006E26
    .align 2, 0
.L08006E18: .4byte 0x08B9072A
.L08006E1C:
    ldr r0, .L08006E20 @ =0x08B9075C
    b .L08006E26
    .align 2, 0
.L08006E20: .4byte 0x08B9075C
.L08006E24:
    ldr r0, .L08006E40 @ =0x08B9078E
.L08006E26:
    str r0, [r3, #0x38]
.L08006E28:
    ldr r1, [r3, #0x30]
    movs r0, #0xf0
    lsls r0, r0, #2
    ands r1, r0
    cmp r1, #0x80
    beq .L08006E52
    cmp r1, #0x80
    bhi .L08006E44
    cmp r1, #0x40
    beq .L08006E4E
    b .L08006E5E
    .align 2, 0
.L08006E40: .4byte 0x08B9078E
.L08006E44:
    movs r0, #0x80
    lsls r0, r0, #2
    cmp r1, r0
    beq .L08006E58
    b .L08006E5E
.L08006E4E:
    movs r4, #0
    b .L08006E62
.L08006E52:
    movs r4, #0x80
    lsls r4, r4, #3
    b .L08006E62
.L08006E58:
    movs r4, #0xc0
    lsls r4, r4, #4
    b .L08006E62
.L08006E5E:
    movs r4, #0x80
    lsls r4, r4, #4
.L08006E62:
    ldr r1, .L08006E88 @ =gFaceConfig
    adds r0, r3, #0
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r2, r0, #3
    adds r2, r2, r1
    ldr r1, [r2]
    lsrs r1, r1, #5
    movs r0, #0xf
    ldrh r2, [r2, #4]
    ands r0, r2
    lsls r0, r0, #0xc
    adds r1, r1, r0
    adds r1, r1, r4
    strh r1, [r3, #0x3c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08006E88: .4byte gFaceConfig
    func_end func_08006DB8

    thumb_func_start func_08006E8C
func_08006E8C: @ 0x08006E8C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    mov ip, r2
    ldrb r7, [r1]
    adds r1, #1
    ldrb r6, [r1]
    adds r2, r1, #1
    lsls r3, r3, #0x18
    cmp r3, #0
    bne .L08006ED6
    movs r0, #0
    cmp r0, r6
    bge .L08006F10
.L08006EAA:
    adds r4, r0, #1
    cmp r7, #0
    beq .L08006ECE
    lsls r0, r0, #6
    mov r3, r8
    adds r1, r0, r3
    adds r3, r7, #0
.L08006EB8:
    ldrb r0, [r2]
    cmp r0, #0xff
    beq .L08006EC4
    ldrb r0, [r2]
    add r0, ip
    strh r0, [r1]
.L08006EC4:
    adds r2, #1
    adds r1, #2
    subs r3, #1
    cmp r3, #0
    bne .L08006EB8
.L08006ECE:
    adds r0, r4, #0
    cmp r0, r6
    blt .L08006EAA
    b .L08006F10
.L08006ED6:
    movs r0, #0
    cmp r0, r6
    bge .L08006F10
.L08006EDC:
    subs r3, r7, #1
    adds r4, r0, #1
    cmp r3, #0
    blt .L08006F0A
    movs r1, #0x80
    lsls r1, r1, #3
    adds r5, r1, #0
    lsls r1, r3, #1
    lsls r0, r0, #6
    add r0, r8
    adds r1, r1, r0
.L08006EF2:
    ldrb r0, [r2]
    cmp r0, #0xff
    beq .L08006F00
    ldrb r0, [r2]
    add r0, ip
    adds r0, r0, r5
    strh r0, [r1]
.L08006F00:
    adds r2, #1
    subs r1, #2
    subs r3, #1
    cmp r3, #0
    bge .L08006EF2
.L08006F0A:
    adds r0, r4, #0
    cmp r0, r6
    blt .L08006EDC
.L08006F10:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08006E8C

    thumb_func_start func_08006F1C
func_08006F1C: @ 0x08006F1C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r0, .L08006F50 @ =0x00007EFF
    cmp r4, r0
    ble .L08006F58
    adds r0, r4, #0
    bl func_08007598
    lsls r1, r5, #5
    movs r3, #0xc0
    lsls r3, r3, #0x13
    adds r1, r1, r3
    ldr r2, .L08006F54 @ =0x0001FFFF
    ands r1, r2
    adds r1, r1, r3
    movs r2, #0x80
    lsls r2, r2, #2
    bl RegisterDataMove
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_080075C8
    b .L08006F78
    .align 2, 0
.L08006F50: .4byte 0x00007EFF
.L08006F54: .4byte 0x0001FFFF
.L08006F58:
    adds r0, r4, #0
    bl func_08006B20
    adds r4, r0, #0
    ldr r0, [r4, #4]
    lsls r1, r5, #5
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r1, r1, r2
    bl Decompress
    ldr r0, [r4, #8]
    lsls r1, r6, #5
    movs r2, #0x20
    bl ApplyPaletteExt
.L08006F78:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08006F1C

    thumb_func_start func_08006F80
func_08006F80: @ 0x08006F80
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    mov r8, r1
    adds r6, r2, #0
    adds r5, r3, #0
    ldr r4, [sp, #0x14]
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    adds r1, r6, #0
    adds r2, r5, #0
    bl func_08006F1C
    ldr r2, .L08006FBC @ =0x000003FF
    ands r2, r6
    ldr r1, .L08006FC0 @ =0x08B90830
    lsls r5, r5, #0xc
    adds r2, r2, r5
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    mov r0, r8
    adds r3, r4, #0
    bl func_08006E8C
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08006FBC: .4byte 0x000003FF
.L08006FC0: .4byte 0x08B90830
    func_end func_08006F80

    thumb_func_start func_08006FC4
func_08006FC4: @ 0x08006FC4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r4, .L08007054 @ =0xFFFFFE00
    add sp, r4
    adds r6, r0, #0
    adds r7, r1, #0
    mov r8, r2
    movs r0, #0x80
    lsls r0, r0, #4
    adds r7, r7, r0
    ldr r0, .L08007058 @ =0x00007EFF
    cmp r6, r0
    ble .L08007060
    adds r0, r6, #0
    bl func_08007598
    lsls r1, r7, #5
    ldr r5, .L0800705C @ =0x0001FFFF
    ands r1, r5
    movs r4, #0xc0
    lsls r4, r4, #0x13
    adds r1, r1, r4
    movs r2, #0x80
    bl RegisterDataMove
    adds r0, r6, #0
    bl func_08007598
    adds r0, #0x80
    adds r1, r7, #0
    adds r1, #0x20
    lsls r1, r1, #5
    ands r1, r5
    adds r1, r1, r4
    movs r2, #0x80
    bl RegisterDataMove
    adds r0, r6, #0
    bl func_08007598
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r0, r1
    adds r1, r7, #4
    lsls r1, r1, #5
    ands r1, r5
    adds r1, r1, r4
    movs r2, #0x80
    bl RegisterDataMove
    adds r0, r6, #0
    bl func_08007598
    movs r1, #0xc0
    lsls r1, r1, #1
    adds r0, r0, r1
    adds r1, r7, #0
    adds r1, #0x24
    lsls r1, r1, #5
    ands r1, r5
    adds r1, r1, r4
    movs r2, #0x80
    bl RegisterDataMove
    mov r1, r8
    adds r1, #0x10
    adds r0, r6, #0
    bl func_080075C8
    b .L080070BC
    .align 2, 0
.L08007054: .4byte 0xFFFFFE00
.L08007058: .4byte 0x00007EFF
.L0800705C: .4byte 0x0001FFFF
.L08007060:
    adds r0, r6, #0
    bl func_08006B20
    adds r5, r0, #0
    ldr r0, [r5, #4]
    mov r1, sp
    bl Decompress
    lsls r1, r7, #5
    movs r4, #0xc0
    lsls r4, r4, #0x13
    adds r1, r1, r4
    mov r0, sp
    movs r2, #0x20
    bl CpuFastSet
    add r0, sp, #0x80
    adds r1, r7, #0
    adds r1, #0x20
    lsls r1, r1, #5
    adds r1, r1, r4
    movs r2, #0x20
    bl CpuFastSet
    add r0, sp, #0x100
    adds r1, r7, #4
    lsls r1, r1, #5
    adds r1, r1, r4
    movs r2, #0x20
    bl CpuFastSet
    add r0, sp, #0x180
    adds r1, r7, #0
    adds r1, #0x24
    lsls r1, r1, #5
    adds r1, r1, r4
    movs r2, #0x20
    bl CpuFastSet
    ldr r0, [r5, #8]
    mov r1, r8
    adds r1, #0x10
    lsls r1, r1, #5
    movs r2, #0x20
    bl ApplyPaletteExt
.L080070BC:
    movs r3, #0x80
    lsls r3, r3, #2
    add sp, r3
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08006FC4

    thumb_func_start func_080070CC
func_080070CC: @ 0x080070CC
    push {r4, lr}
    sub sp, #4
    movs r2, #0x34
    ldrsh r1, [r0, r2]
    ldr r3, .L080070F8 @ =gDispIo
    ldrh r4, [r3, #0x1c]
    subs r1, r1, r4
    movs r4, #0x36
    ldrsh r2, [r0, r4]
    ldrh r3, [r3, #0x1e]
    subs r2, r2, r3
    ldr r3, [r0, #0x38]
    ldrh r0, [r0, #0x3c]
    str r0, [sp]
    movs r0, #5
    bl PutSprite
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080070F8: .4byte gDispIo
    func_end func_080070CC

    thumb_func_start func_080070FC
func_080070FC: @ 0x080070FC
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    mov sb, r1
    adds r0, r2, #0
    adds r6, r3, #0
    ldr r4, [sp, #0x1c]
    ldr r5, [sp, #0x20]
    ldr r7, [sp, #0x24]
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    adds r1, r6, #0
    adds r2, r4, #0
    bl func_08006FC4
    ldr r0, .L08007144 @ =0x08B90844
    adds r1, r7, #0
    bl Proc_Start
    adds r1, r0, #0
    mov r0, r8
    strh r0, [r1, #0x34]
    mov r0, sb
    strh r0, [r1, #0x36]
    movs r0, #0xf
    ands r4, r0
    lsls r4, r4, #0xc
    adds r6, r6, r4
    strh r6, [r1, #0x3c]
    cmp r5, #0
    beq .L0800714C
    ldr r0, .L08007148 @ =0x08B90862
    b .L0800714E
    .align 2, 0
.L08007144: .4byte 0x08B90844
.L08007148: .4byte 0x08B90862
.L0800714C:
    ldr r0, .L0800715C @ =0x08B90854
.L0800714E:
    str r0, [r1, #0x38]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800715C: .4byte 0x08B90854
    func_end func_080070FC

    thumb_func_start func_08007160
func_08007160: @ 0x08007160
    push {lr}
    ldr r0, .L0800716C @ =0x08B90844
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L0800716C: .4byte 0x08B90844
    func_end func_08007160

    thumb_func_start func_08007170
func_08007170: @ 0x08007170
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r7, r1, #0
    ldrb r6, [r2, #0x14]
    subs r6, #1
    ldrb r4, [r2, #0x15]
    ldr r1, .L080071C0 @ =0x08195680
    lsls r2, r7, #0x10
    lsrs r2, r2, #0x10
    bl TmApplyTsa_thm
    lsls r4, r4, #5
    adds r4, r4, r6
    lsls r4, r4, #1
    adds r2, r4, r5
    adds r0, r7, #0
    adds r0, #0x1c
    strh r0, [r2]
    adds r0, #1
    strh r0, [r2, #2]
    adds r0, #1
    strh r0, [r2, #4]
    adds r0, #1
    strh r0, [r2, #6]
    adds r1, r2, #0
    adds r1, #0x40
    adds r0, #0x1d
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080071C0: .4byte 0x08195680
    func_end func_08007170

    thumb_func_start func_080071C4
func_080071C4: @ 0x080071C4
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r7, r1, #0
    ldrb r6, [r2, #0x14]
    subs r6, #1
    ldrb r4, [r2, #0x15]
    subs r4, #1
    ldr r1, .L08007218 @ =0x08195738
    lsls r2, r7, #0x10
    lsrs r2, r2, #0x10
    bl TmApplyTsa_thm
    lsls r4, r4, #5
    adds r4, r4, r6
    lsls r4, r4, #1
    adds r2, r4, r5
    adds r0, r7, #0
    adds r0, #0x1c
    strh r0, [r2]
    adds r0, #1
    strh r0, [r2, #2]
    adds r0, #1
    strh r0, [r2, #4]
    adds r0, #1
    strh r0, [r2, #6]
    adds r1, r2, #0
    adds r1, #0x40
    adds r0, #0x1d
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08007218: .4byte 0x08195738
    func_end func_080071C4

    thumb_func_start func_0800721C
func_0800721C: @ 0x0800721C
    subs r0, #0x1c
    cmp r0, #0x25
    bhi .L080072CC
    lsls r0, r0, #2
    ldr r1, .L0800722C @ =.L08007230
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800722C: .4byte .L08007230
.L08007230: @ jump table
    .4byte .L080072C8 @ case 0
    .4byte .L080072CC @ case 1
    .4byte .L080072CC @ case 2
    .4byte .L080072CC @ case 3
    .4byte .L080072CC @ case 4
    .4byte .L080072CC @ case 5
    .4byte .L080072CC @ case 6
    .4byte .L080072CC @ case 7
    .4byte .L080072CC @ case 8
    .4byte .L080072CC @ case 9
    .4byte .L080072CC @ case 10
    .4byte .L080072CC @ case 11
    .4byte .L080072CC @ case 12
    .4byte .L080072CC @ case 13
    .4byte .L080072CC @ case 14
    .4byte .L080072CC @ case 15
    .4byte .L080072CC @ case 16
    .4byte .L080072CC @ case 17
    .4byte .L080072CC @ case 18
    .4byte .L080072CC @ case 19
    .4byte .L080072CC @ case 20
    .4byte .L080072CC @ case 21
    .4byte .L080072CC @ case 22
    .4byte .L080072C8 @ case 23
    .4byte .L080072CC @ case 24
    .4byte .L080072CC @ case 25
    .4byte .L080072CC @ case 26
    .4byte .L080072CC @ case 27
    .4byte .L080072CC @ case 28
    .4byte .L080072C8 @ case 29
    .4byte .L080072CC @ case 30
    .4byte .L080072CC @ case 31
    .4byte .L080072CC @ case 32
    .4byte .L080072CC @ case 33
    .4byte .L080072C8 @ case 34
    .4byte .L080072C8 @ case 35
    .4byte .L080072CC @ case 36
    .4byte .L080072C8 @ case 37
.L080072C8:
    movs r0, #1
    b .L080072CE
.L080072CC:
    movs r0, #0
.L080072CE:
    bx lr
    func_end func_0800721C

    thumb_func_start func_080072D0
func_080072D0: @ 0x080072D0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov sb, r0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    cmp r5, #0
    beq .L08007380
    adds r0, r5, #0
    bl func_08006B20
    adds r4, r0, #0
    ldr r0, [r4, #8]
    lsls r1, r7, #5
    mov r8, r1
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, [r4]
    cmp r0, #0
    beq .L08007360
    lsls r1, r6, #5
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r1, r1, r2
    bl Decompress
    ldr r0, [r4, #8]
    mov r1, r8
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r0, r5, #0
    bl func_0800721C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08007338
    lsls r1, r7, #0xc
    ldr r0, .L08007334 @ =0x000003FF
    ands r0, r6
    adds r1, r1, r0
    mov r0, sb
    adds r2, r4, #0
    bl func_080071C4
    b .L08007348
    .align 2, 0
.L08007334: .4byte 0x000003FF
.L08007338:
    lsls r1, r7, #0xc
    ldr r0, .L0800735C @ =0x000003FF
    ands r0, r6
    adds r1, r1, r0
    mov r0, sb
    adds r2, r4, #0
    bl func_08007170
.L08007348:
    movs r2, #0
    mov r0, sb
    movs r1, #5
.L0800734E:
    strh r2, [r0]
    strh r2, [r0, #0x12]
    adds r0, #0x40
    subs r1, #1
    cmp r1, #0
    bge .L0800734E
    b .L08007380
    .align 2, 0
.L0800735C: .4byte 0x000003FF
.L08007360:
    ldr r0, [r4, #0x10]
    lsls r1, r6, #5
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r1, r1, r2
    bl Decompress
    lsls r1, r7, #0xc
    ldr r0, .L0800738C @ =0x000003FF
    ands r0, r6
    adds r1, r1, r0
    mov r0, sb
    movs r2, #0xa
    movs r3, #9
    bl PutAppliedBitmap
.L08007380:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800738C: .4byte 0x000003FF
    func_end func_080072D0

    thumb_func_start func_08007390
func_08007390: @ 0x08007390
    movs r2, #0
    str r2, [r0, #0x2c]
    movs r1, #0x78
    str r1, [r0, #0x38]
    strh r2, [r0, #0x32]
    bx lr
    func_end func_08007390

    thumb_func_start func_0800739C
func_0800739C: @ 0x0800739C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x38]
    subs r0, #1
    str r0, [r4, #0x38]
    cmp r0, #0
    bge .L080073BC
    adds r0, r4, #0
    bl func_08007A7C
    str r0, [r4, #0x38]
    movs r0, #0
    strh r0, [r4, #0x34]
    adds r0, r4, #0
    bl Proc_Break
.L080073BC:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0800739C

    thumb_func_start func_080073C4
func_080073C4: @ 0x080073C4
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r0, #0x42
    ldrh r0, [r0]
    lsls r2, r0, #0xc
    adds r1, r4, #0
    adds r1, #0x40
    ldr r0, .L080073FC @ =0x000003FF
    ldrh r1, [r1]
    ands r0, r1
    adds r7, r2, r0
    adds r0, r4, #0
    adds r0, #0x44
    ldrh r0, [r0]
    bl func_08006B20
    adds r5, r0, #0
    movs r6, #0
    movs r1, #0x34
    ldrsh r0, [r4, r1]
    cmp r0, #9
    bhi .L08007468
    lsls r0, r0, #2
    ldr r1, .L08007400 @ =.L08007404
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080073FC: .4byte 0x000003FF
.L08007400: .4byte .L08007404
.L08007404: @ jump table
    .4byte .L08007430 @ case 0
    .4byte .L080074B8 @ case 1
    .4byte .L080074B8 @ case 2
    .4byte .L0800742C @ case 3
    .4byte .L080074B8 @ case 4
    .4byte .L080074B8 @ case 5
    .4byte .L08007430 @ case 6
    .4byte .L080074B8 @ case 7
    .4byte .L080074B8 @ case 8
    .4byte .L08007434 @ case 9
.L0800742C:
    movs r6, #0x58
    b .L08007468
.L08007430:
    movs r6, #0x18
    b .L08007468
.L08007434:
    ldr r0, [r4, #0x3c]
    adds r1, r4, #0
    adds r1, #0x42
    ldrh r1, [r1]
    lsls r1, r1, #0xc
    adds r3, r4, #0
    adds r3, #0x40
    ldr r2, .L08007464 @ =0x000003FF
    ldrh r3, [r3]
    ands r2, r3
    adds r1, r1, r2
    adds r2, r5, #0
    bl func_08007170
    ldr r0, [r4, #0x3c]
    bl GetBgFromPtr
    bl EnableBgSyncById
    adds r0, r4, #0
    bl Proc_Break
    b .L080074BE
    .align 2, 0
.L08007464: .4byte 0x000003FF
.L08007468:
    adds r0, r4, #0
    adds r0, #0x44
    ldrh r0, [r0]
    bl func_08006B20
    adds r5, r0, #0
    ldrb r3, [r5, #0x17]
    lsls r1, r3, #6
    ldr r0, [r4, #0x3c]
    adds r0, r0, r1
    ldrb r5, [r5, #0x16]
    lsls r1, r5, #1
    adds r0, r0, r1
    mov ip, r0
    subs r0, #2
    adds r2, r7, r6
    strh r2, [r0]
    adds r1, r2, #1
    strh r1, [r0, #2]
    adds r1, r2, #2
    strh r1, [r0, #4]
    adds r1, r2, #3
    strh r1, [r0, #6]
    adds r1, #0x1d
    mov r3, ip
    strh r1, [r3, #0x3e]
    adds r3, #0x40
    adds r1, #1
    strh r1, [r3]
    adds r3, #2
    adds r1, #1
    strh r1, [r3]
    mov r1, ip
    adds r1, #0x44
    adds r2, #0x23
    strh r2, [r1]
    bl GetBgFromPtr
    bl EnableBgSyncById
.L080074B8:
    ldrh r0, [r4, #0x34]
    adds r0, #1
    strh r0, [r4, #0x34]
.L080074BE:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080073C4

    thumb_func_start func_080074C4
func_080074C4: @ 0x080074C4
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r1, #0
    mov r8, r2
    adds r5, r3, #0
    ldr r6, [sp, #0x14]
    ldr r0, .L080074F4 @ =0x08B90870
    bl Proc_EndEach
    adds r0, r4, #0
    mov r1, r8
    adds r2, r5, #0
    adds r3, r6, #0
    bl func_080072D0
    mov r0, r8
    bl func_08006B20
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080074F4: .4byte 0x08B90870
    func_end func_080074C4

    thumb_func_start func_080074F8
func_080074F8: @ 0x080074F8
    push {lr}
    ldr r0, [r0, #0x54]
    bl func_08006D30
    pop {r0}
    bx r0
    func_end func_080074F8

    thumb_func_start func_08007504
func_08007504: @ 0x08007504
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08007518 @ =0x08B908A0
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x54]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08007518: .4byte 0x08B908A0
    func_end func_08007504

    thumb_func_start func_0800751C
func_0800751C: @ 0x0800751C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0
    ldrh r0, [r5, #0x3e]
    bl func_08006B20
    mov r8, r0
    ldr r6, .L08007560 @ =gFaceConfig
    adds r4, r5, #0
    adds r4, #0x40
    ldrb r1, [r4]
    lsls r0, r1, #3
    adds r0, r0, r6
    ldrh r0, [r0, #4]
    adds r0, #0x10
    bl SetBlackPal
    mov r1, r8
    ldr r0, [r1, #8]
    ldrb r4, [r4]
    lsls r1, r4, #3
    adds r1, r1, r6
    ldrh r1, [r1, #4]
    adds r1, #0x10
    movs r2, #0xc
    adds r3, r5, #0
    bl StartPalFade
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08007560: .4byte gFaceConfig
    func_end func_0800751C

    thumb_func_start StartFaceFadeOut
StartFaceFadeOut: @ 0x08007564
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x3e]
    bl func_08006B20
    ldr r1, .L08007594 @ =gFaceConfig
    adds r0, r4, #0
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #4]
    adds r0, #0x10
    movs r1, #0xc
    adds r2, r4, #0
    bl StartPalFadeToBlack
    adds r0, r4, #0
    bl func_08007504
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08007594: .4byte gFaceConfig
    func_end StartFaceFadeOut

    thumb_func_start func_08007598
func_08007598: @ 0x08007598
    push {r4, r5, lr}
    sub sp, #0x1c
    mov r2, sp
    ldr r1, .L080075C0 @ =0x08193DA4
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldr r1, [r1]
    str r1, [r2]
    ldr r1, .L080075C4 @ =0xFFFF8100
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, sp
    ldr r0, [r0]
    add sp, #0x1c
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080075C0: .4byte 0x08193DA4
.L080075C4: .4byte 0xFFFF8100
    func_end func_08007598

    thumb_func_start func_080075C8
func_080075C8: @ 0x080075C8
    push {r4, r5, r6, lr}
    sub sp, #0x1c
    mov r3, sp
    ldr r2, .L080075F8 @ =0x08193DC0
    ldm r2!, {r4, r5, r6}
    stm r3!, {r4, r5, r6}
    ldm r2!, {r4, r5, r6}
    stm r3!, {r4, r5, r6}
    ldr r2, [r2]
    str r2, [r3]
    ldr r2, .L080075FC @ =0xFFFF8100
    adds r0, r0, r2
    lsls r0, r0, #2
    add r0, sp
    ldr r0, [r0]
    lsls r1, r1, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    add sp, #0x1c
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080075F8: .4byte 0x08193DC0
.L080075FC: .4byte 0xFFFF8100
    func_end func_080075C8

    thumb_func_start func_08007600
func_08007600: @ 0x08007600
    ldr r1, [r0, #0x14]
    str r1, [r0, #0x2c]
    movs r1, #0
    strh r1, [r0, #0x32]
    bx lr
    func_end func_08007600

    thumb_func_start func_0800760C
func_0800760C: @ 0x0800760C
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    bl func_08006D9C
    movs r1, #0x30
    ands r1, r0
    cmp r1, #0
    bne .L08007660
    ldr r0, [r4, #0x2c]
    bl func_08006D9C
    movs r1, #8
    ands r1, r0
    movs r3, #0
    cmp r1, #0
    bne .L08007632
    movs r3, #0x18
.L08007632:
    adds r3, #0x10
    ldr r2, [r4, #0x2c]
    ldr r0, [r2, #0x2c]
    lsls r1, r3, #5
    ldr r0, [r0, #0xc]
    adds r0, r0, r1
    ldrh r1, [r2, #0x3c]
    adds r1, #0x1c
    ldr r2, .L08007658 @ =0x000003FF
    ands r1, r2
    lsls r1, r1, #5
    ldr r2, .L0800765C @ =0x06010000
    adds r1, r1, r2
    movs r2, #4
    movs r3, #2
    bl Register2dChrMove
    b .L080076D0
    .align 2, 0
.L08007658: .4byte 0x000003FF
.L0800765C: .4byte 0x06010000
.L08007660:
    ldrh r0, [r4, #0x32]
    subs r0, #1
    strh r0, [r4, #0x32]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L080076D0
    ldr r0, [r4, #0x2c]
    bl func_08006D9C
    movs r1, #8
    ands r1, r0
    movs r5, #0
    cmp r1, #0
    bne .L0800767E
    movs r5, #0x18
.L0800767E:
    bl RandNextB
    lsrs r0, r0, #0x10
    movs r1, #7
    ands r0, r1
    adds r0, #1
    strh r0, [r4, #0x32]
    ldrh r0, [r4, #0x30]
    adds r0, #1
    movs r1, #3
    ands r0, r1
    strh r0, [r4, #0x30]
    movs r1, #0x30
    ldrsh r0, [r4, r1]
    cmp r0, #1
    beq .L080076AA
    cmp r0, #1
    ble .L080076B0
    cmp r0, #2
    beq .L080076AE
    cmp r0, #3
    bne .L080076B0
.L080076AA:
    adds r5, #8
    b .L080076B0
.L080076AE:
    adds r5, #0x10
.L080076B0:
    ldr r2, [r4, #0x2c]
    ldr r0, [r2, #0x2c]
    lsls r1, r5, #5
    ldr r0, [r0, #0xc]
    adds r0, r0, r1
    ldrh r1, [r2, #0x3c]
    adds r1, #0x1c
    ldr r2, .L08007750 @ =0x000003FF
    ands r1, r2
    lsls r1, r1, #5
    ldr r2, .L08007754 @ =0x06010000
    adds r1, r1, r2
    movs r2, #4
    movs r3, #2
    bl Register2dChrMove
.L080076D0:
    ldr r0, [r4, #0x2c]
    ldr r2, [r0, #0x2c]
    movs r1, #4
    ldrb r2, [r2, #0x14]
    subs r5, r1, r2
    bl func_08006D9C
    movs r6, #1
    ands r0, r6
    cmp r0, #0
    bne .L080076E8
    rsbs r5, r5, #0
.L080076E8:
    lsls r1, r5, #3
    ldr r0, [r4, #0x2c]
    movs r3, #0x34
    ldrsh r2, [r0, r3]
    adds r1, r1, r2
    adds r5, r1, #0
    subs r5, #0x10
    ldr r1, .L08007758 @ =0x000001FF
    ands r5, r1
    bl func_08006D9C
    ands r0, r6
    cmp r0, #0
    beq .L0800770A
    movs r0, #0x80
    lsls r0, r0, #5
    adds r5, r5, r0
.L0800770A:
    ldr r0, [r4, #0x2c]
    bl func_08006D9C
    adds r2, r0, #0
    movs r0, #0x80
    lsls r0, r0, #3
    ands r2, r0
    rsbs r2, r2, #0
    asrs r2, r2, #0x1f
    ands r2, r0
    ldr r4, [r4, #0x2c]
    movs r1, #0x36
    ldrsh r0, [r4, r1]
    ldr r1, [r4, #0x2c]
    ldrb r1, [r1, #0x15]
    lsls r1, r1, #3
    adds r0, r0, r1
    movs r1, #0xff
    ands r0, r1
    adds r2, r2, r0
    adds r0, r4, #0
    adds r0, #0x41
    ldrb r0, [r0]
    ldr r3, .L0800775C @ =0x08B905F8
    ldrh r1, [r4, #0x3c]
    adds r1, #0x1c
    str r1, [sp]
    adds r1, r5, #0
    bl PutSpriteExt
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08007750: .4byte 0x000003FF
.L08007754: .4byte 0x06010000
.L08007758: .4byte 0x000001FF
.L0800775C: .4byte 0x08B905F8
    func_end func_0800760C

    thumb_func_start func_08007760
func_08007760: @ 0x08007760
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r7, r0, #0
    adds r5, r1, #0
    movs r0, #0
    mov sb, r0
    cmp r5, #1
    beq .L0800778E
    cmp r5, #1
    bgt .L08007780
    cmp r5, #0
    beq .L0800778A
    b .L08007856
.L08007780:
    cmp r5, #0x80
    beq .L08007792
    cmp r5, #0x81
    beq .L0800779A
    b .L08007856
.L0800778A:
    movs r5, #0x58
    b .L080077A0
.L0800778E:
    movs r5, #0x18
    b .L080077A0
.L08007792:
    movs r5, #0x58
    movs r1, #1
    mov sb, r1
    b .L080077A0
.L0800779A:
    movs r5, #0x18
    movs r3, #1
    mov sb, r3
.L080077A0:
    ldr r0, [r7, #0x2c]
    ldr r2, [r0, #0x2c]
    movs r1, #4
    ldrb r2, [r2, #0x16]
    subs r4, r1, r2
    bl func_08006D9C
    movs r1, #1
    mov r8, r1
    ands r0, r1
    cmp r0, #0
    bne .L080077BA
    rsbs r4, r4, #0
.L080077BA:
    lsls r1, r4, #3
    ldr r0, [r7, #0x2c]
    movs r3, #0x34
    ldrsh r2, [r0, r3]
    adds r1, r1, r2
    adds r4, r1, #0
    subs r4, #0x10
    ldr r1, .L08007838 @ =0x000001FF
    ands r4, r1
    bl func_08006D9C
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L080077DE
    movs r0, #0x80
    lsls r0, r0, #5
    adds r4, r4, r0
.L080077DE:
    ldr r0, [r7, #0x2c]
    bl func_08006D9C
    movs r1, #0x80
    lsls r1, r1, #3
    ands r0, r1
    rsbs r0, r0, #0
    asrs r6, r0, #0x1f
    ands r6, r1
    ldr r2, [r7, #0x2c]
    movs r3, #0x36
    ldrsh r0, [r2, r3]
    ldr r1, [r2, #0x2c]
    ldrb r1, [r1, #0x17]
    lsls r1, r1, #3
    adds r0, r0, r1
    movs r1, #0xff
    ands r0, r1
    adds r6, r6, r0
    mov r0, sb
    cmp r0, #0
    beq .L08007840
    adds r0, r2, #0
    bl func_08006D9C
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    bne .L0800781A
    adds r4, #0x10
.L0800781A:
    ldr r1, [r7, #0x2c]
    adds r0, r1, #0
    adds r0, #0x41
    ldrb r0, [r0]
    ldr r3, .L0800783C @ =0x08B905B8
    ldrh r1, [r1, #0x3c]
    adds r1, r1, r5
    adds r1, #2
    str r1, [sp]
    adds r1, r4, #0
    adds r2, r6, #0
    bl PutSpriteExt
    b .L08007856
    .align 2, 0
.L08007838: .4byte 0x000001FF
.L0800783C: .4byte 0x08B905B8
.L08007840:
    adds r0, r2, #0
    adds r0, #0x41
    ldrb r0, [r0]
    ldr r3, .L08007864 @ =0x08B905F8
    ldrh r2, [r2, #0x3c]
    adds r1, r2, r5
    str r1, [sp]
    adds r1, r4, #0
    adds r2, r6, #0
    bl PutSpriteExt
.L08007856:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08007864: .4byte 0x08B905F8
    func_end func_08007760

    thumb_func_start func_08007868
func_08007868: @ 0x08007868
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x14]
    str r0, [r5, #0x2c]
    ldr r0, [r0, #0x2c]
    ldrb r0, [r0, #0x18]
    movs r4, #0
    strh r0, [r5, #0x30]
    adds r0, r5, #0
    bl func_08007A7C
    str r0, [r5, #0x38]
    strh r4, [r5, #0x32]
    movs r0, #0x30
    ldrsh r1, [r5, r0]
    cmp r1, #6
    bne .L080078A0
    movs r0, #5
    strh r0, [r5, #0x30]
    ldr r0, .L080078A8 @ =0x7FFFFFFF
    str r0, [r5, #0x38]
    movs r0, #2
    strh r0, [r5, #0x32]
    strh r1, [r5, #0x34]
    adds r0, r5, #0
    movs r1, #0x61
    bl Proc_Goto
.L080078A0:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080078A8: .4byte 0x7FFFFFFF
    func_end func_08007868

    thumb_func_start func_080078AC
func_080078AC: @ 0x080078AC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x38]
    subs r0, #1
    str r0, [r4, #0x38]
    movs r1, #0x32
    ldrsh r5, [r4, r1]
    cmp r5, #0
    beq .L080078C8
    adds r1, r5, #0
    adds r0, r4, #0
    bl Proc_Goto
    b .L080078DE
.L080078C8:
    cmp r0, #0
    bge .L080078DE
    adds r0, r4, #0
    bl func_08007A7C
    str r0, [r4, #0x38]
    strh r5, [r4, #0x34]
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
.L080078DE:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080078AC

    thumb_func_start func_080078E4
func_080078E4: @ 0x080078E4
    push {r4, r5, lr}
    adds r4, r0, #0
    movs r5, #2
    movs r1, #0x34
    ldrsh r0, [r4, r1]
    cmp r0, #0xa
    bhi .L0800793C
    lsls r0, r0, #2
    ldr r1, .L080078FC @ =.L08007900
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080078FC: .4byte .L08007900
.L08007900: @ jump table
    .4byte .L08007930 @ case 0
    .4byte .L08007930 @ case 1
    .4byte .L08007930 @ case 2
    .4byte .L0800792C @ case 3
    .4byte .L0800792C @ case 4
    .4byte .L0800792C @ case 5
    .4byte .L08007930 @ case 6
    .4byte .L08007930 @ case 7
    .4byte .L08007930 @ case 8
    .4byte .L0800793C @ case 9
    .4byte .L08007934 @ case 10
.L0800792C:
    movs r5, #0
    b .L0800793C
.L08007930:
    movs r5, #1
    b .L0800793C
.L08007934:
    adds r0, r4, #0
    movs r1, #0
    bl Proc_Goto
.L0800793C:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08007760
    ldrh r0, [r4, #0x34]
    adds r0, #1
    strh r0, [r4, #0x34]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080078E4

    thumb_func_start func_08007950
func_08007950: @ 0x08007950
    movs r1, #0
    strh r1, [r0, #0x34]
    bx lr
    func_end func_08007950

    thumb_func_start func_08007958
func_08007958: @ 0x08007958
    push {r4, lr}
    adds r4, r0, #0
    movs r1, #0x34
    ldrsh r0, [r4, r1]
    cmp r0, #5
    bgt .L0800796C
    adds r0, r4, #0
    bl func_080078E4
    b .L08007984
.L0800796C:
    adds r0, r4, #0
    movs r1, #0
    bl func_08007760
    movs r1, #0x32
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bne .L08007984
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
.L08007984:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08007958

    thumb_func_start func_0800798C
func_0800798C: @ 0x0800798C
    movs r1, #0
    strh r1, [r0, #0x34]
    bx lr
    func_end func_0800798C

    thumb_func_start func_08007994
func_08007994: @ 0x08007994
    push {r4, lr}
    adds r4, r0, #0
    movs r1, #0x34
    ldrsh r0, [r4, r1]
    cmp r0, #2
    bgt .L080079A8
    adds r0, r4, #0
    bl func_080078E4
    b .L080079C0
.L080079A8:
    adds r0, r4, #0
    movs r1, #1
    bl func_08007760
    movs r1, #0x32
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bne .L080079C0
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
.L080079C0:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08007994

    thumb_func_start func_080079C8
func_080079C8: @ 0x080079C8
    movs r1, #0
    strh r1, [r0, #0x34]
    bx lr
    func_end func_080079C8

    thumb_func_start func_080079D0
func_080079D0: @ 0x080079D0
    push {r4, r5, lr}
    adds r4, r0, #0
    movs r5, #2
    movs r1, #0x34
    ldrsh r0, [r4, r1]
    cmp r0, #0xa
    bhi .L08007A2C
    lsls r0, r0, #2
    ldr r1, .L080079E8 @ =.L080079EC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080079E8: .4byte .L080079EC
.L080079EC: @ jump table
    .4byte .L08007A1C @ case 0
    .4byte .L08007A1C @ case 1
    .4byte .L08007A1C @ case 2
    .4byte .L08007A18 @ case 3
    .4byte .L08007A18 @ case 4
    .4byte .L08007A18 @ case 5
    .4byte .L08007A1C @ case 6
    .4byte .L08007A1C @ case 7
    .4byte .L08007A1C @ case 8
    .4byte .L08007A2C @ case 9
    .4byte .L08007A20 @ case 10
.L08007A18:
    movs r5, #0
    b .L08007A2C
.L08007A1C:
    movs r5, #1
    b .L08007A2C
.L08007A20:
    adds r0, r4, #0
    movs r1, #0
    bl Proc_Goto
    movs r0, #0
    strh r0, [r4, #0x32]
.L08007A2C:
    adds r1, r5, #0
    adds r1, #0x80
    adds r0, r4, #0
    bl func_08007760
    ldrh r0, [r4, #0x34]
    adds r0, #1
    strh r0, [r4, #0x34]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080079D0

    thumb_func_start func_08007A44
func_08007A44: @ 0x08007A44
    push {r4, lr}
    adds r2, r0, #0
    cmp r1, #0
    bne .L08007A50
    ldr r0, [r2, #0x2c]
    ldrb r1, [r0, #0x18]
.L08007A50:
    ldr r4, [r2, #0x48]
    strh r1, [r4, #0x30]
    adds r0, r4, #0
    bl func_08007A7C
    str r0, [r4, #0x38]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08007A44

    thumb_func_start func_08007A64
func_08007A64: @ 0x08007A64
    push {lr}
    ldr r2, .L08007A78 @ =0x030041C0
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r0, [r0]
    bl func_08007A44
    pop {r0}
    bx r0
    .align 2, 0
.L08007A78: .4byte 0x030041C0
    func_end func_08007A64

    thumb_func_start func_08007A7C
func_08007A7C: @ 0x08007A7C
    push {r4, lr}
    adds r4, r0, #0
    bl RandNextB
    lsrs r2, r0, #0x10
    ldrh r0, [r4, #0x30]
    subs r0, #1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    bhi .L08007AD0
    lsls r0, r0, #2
    ldr r1, .L08007A9C @ =.L08007AA0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08007A9C: .4byte .L08007AA0
.L08007AA0: @ jump table
    .4byte .L08007ABE @ case 0
    .4byte .L08007AC4 @ case 1
    .4byte .L08007AB4 @ case 2
    .4byte .L08007ACA @ case 3
    .4byte .L08007ACE @ case 4
.L08007AB4:
    asrs r0, r2, #7
    movs r1, #0x96
    lsls r1, r1, #1
    adds r0, r0, r1
    b .L08007AD0
.L08007ABE:
    asrs r0, r2, #7
    adds r0, #0x1e
    b .L08007AD0
.L08007AC4:
    asrs r0, r2, #9
    adds r0, #0x1e
    b .L08007AD0
.L08007ACA:
    movs r0, #1
    b .L08007AD0
.L08007ACE:
    ldr r0, .L08007AD8 @ =0x7FFFFFFF
.L08007AD0:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08007AD8: .4byte 0x7FFFFFFF
    func_end func_08007A7C

    thumb_func_start func_08007ADC
func_08007ADC: @ 0x08007ADC
    ldr r0, [r0, #0x48]
    strh r1, [r0, #0x32]
    bx lr
    func_end func_08007ADC

    thumb_func_start func_08007AE4
func_08007AE4: @ 0x08007AE4
    push {lr}
    ldr r2, .L08007AF8 @ =0x030041C0
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r0, [r0]
    bl func_08007ADC
    pop {r0}
    bx r0
    .align 2, 0
.L08007AF8: .4byte 0x030041C0
    func_end func_08007AE4

    thumb_func_start func_08007AFC
func_08007AFC: @ 0x08007AFC
    push {r4, r5, lr}
    ldr r2, .L08007B1C @ =0x030041C0
    ldr r0, [r2]
    ldr r4, [r0, #0x48]
    ldr r1, .L08007B20 @ =gpKeySt
    ldr r0, [r1]
    movs r3, #1
    ldrh r0, [r0, #4]
    ands r3, r0
    adds r5, r1, #0
    cmp r3, #0
    beq .L08007B24
    movs r0, #2
    strh r0, [r4, #0x32]
    b .L08007B26
    .align 2, 0
.L08007B1C: .4byte 0x030041C0
.L08007B20: .4byte gpKeySt
.L08007B24:
    strh r3, [r4, #0x32]
.L08007B26:
    ldr r0, [r2, #8]
    ldr r4, [r0, #0x48]
    ldr r1, [r5]
    movs r0, #2
    ldrh r1, [r1, #4]
    ands r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0
    beq .L08007B3C
    movs r0, #3
.L08007B3C:
    strh r0, [r4, #0x32]
    ldr r0, [r2, #4]
    ldr r4, [r0, #0x48]
    ldr r1, [r5]
    movs r0, #0x80
    lsls r0, r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08007B54
    movs r0, #4
    strh r0, [r4, #0x32]
.L08007B54:
    ldr r0, [r2, #0xc]
    ldr r4, [r0, #0x48]
    ldr r1, [r5]
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08007B6A
    movs r0, #4
    strh r0, [r4, #0x32]
.L08007B6A:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08007AFC

    thumb_func_start func_08007B70
func_08007B70: @ 0x08007B70
    push {lr}
    movs r0, #0x16
    movs r1, #0x30
    movs r2, #0
    movs r3, #0x13
    bl StartFaceAuto
    movs r1, #3
    bl func_08007A44
    movs r0, #0x16
    movs r1, #0x30
    movs r2, #0x50
    movs r3, #0x1b
    bl StartFaceAuto
    movs r1, #1
    bl func_08007A44
    movs r0, #0x16
    movs r1, #0xc0
    movs r2, #0
    movs r3, #0x12
    bl StartFaceAuto
    movs r1, #2
    bl func_08007A44
    movs r0, #0x16
    movs r1, #0xc0
    movs r2, #0x50
    movs r3, #0x1a
    bl StartFaceAuto
    movs r1, #4
    bl func_08007A44
    ldr r0, .L08007BC8 @ =0x08B90970
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08007BC8: .4byte 0x08B90970
    func_end func_08007B70

    thumb_func_start func_08007BCC
func_08007BCC: @ 0x08007BCC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    mov sb, r1
    mov sl, r2
    str r3, [sp, #4]
    ldr r1, .L08007BF0 @ =0x030041C0
    lsls r0, r7, #2
    adds r4, r0, r1
    ldr r6, [r4]
    cmp r6, #0
    beq .L08007BF4
    movs r0, #0
    b .L08007CDA
    .align 2, 0
.L08007BF0: .4byte 0x030041C0
.L08007BF4:
    ldr r0, .L08007C34 @ =0x08B907F8
    movs r1, #5
    bl Proc_Start
    adds r5, r0, #0
    str r5, [r4]
    mov r0, sb
    bl func_08006B20
    mov r8, r0
    movs r0, #0x80
    lsls r0, r0, #6
    ldr r1, [sp, #0x28]
    ands r0, r1
    cmp r0, #0
    beq .L08007C44
    str r6, [sp]
    ldr r0, .L08007C38 @ =gFaceConfig
    lsls r4, r7, #3
    adds r0, r4, r0
    ldrh r0, [r0, #4]
    lsls r1, r0, #5
    ldr r0, .L08007C3C @ =0x02022A60
    adds r1, r1, r0
    ldr r2, .L08007C40 @ =0x01000008
    mov r0, sp
    bl CpuFastSet
    bl EnablePalSync
    b .L08007C5A
    .align 2, 0
.L08007C34: .4byte 0x08B907F8
.L08007C38: .4byte gFaceConfig
.L08007C3C: .4byte 0x02022A60
.L08007C40: .4byte 0x01000008
.L08007C44:
    mov r2, r8
    ldr r0, [r2, #8]
    ldr r1, .L08007CA0 @ =gFaceConfig
    lsls r4, r7, #3
    adds r1, r4, r1
    ldrh r1, [r1, #4]
    adds r1, #0x10
    lsls r1, r1, #5
    movs r2, #0x20
    bl ApplyPaletteExt
.L08007C5A:
    mov r0, r8
    str r0, [r5, #0x2c]
    adds r0, r5, #0
    adds r0, #0x40
    movs r1, #0
    strb r7, [r0]
    mov r2, sb
    strh r2, [r5, #0x3e]
    adds r2, r5, #0
    adds r2, #0x41
    movs r0, #5
    strb r0, [r2]
    mov r0, sl
    strh r0, [r5, #0x34]
    mov r2, sp
    ldrh r2, [r2, #4]
    strh r2, [r5, #0x36]
    str r1, [r5, #0x44]
    str r1, [r5, #0x48]
    ldr r0, [sp, #0x28]
    str r0, [r5, #0x30]
    adds r0, r5, #0
    bl func_08006DB8
    movs r1, #0xf0
    lsls r1, r1, #2
    ldr r2, [sp, #0x28]
    ands r1, r2
    cmp r1, #0x80
    beq .L08007CB2
    cmp r1, #0x80
    bgt .L08007CA4
    cmp r1, #0x40
    beq .L08007CAE
    b .L08007CBE
    .align 2, 0
.L08007CA0: .4byte gFaceConfig
.L08007CA4:
    movs r0, #0x80
    lsls r0, r0, #2
    cmp r1, r0
    beq .L08007CB8
    b .L08007CBE
.L08007CAE:
    movs r3, #0
    b .L08007CC2
.L08007CB2:
    movs r3, #0x80
    lsls r3, r3, #3
    b .L08007CC2
.L08007CB8:
    movs r3, #0xc0
    lsls r3, r3, #4
    b .L08007CC2
.L08007CBE:
    movs r3, #0x80
    lsls r3, r3, #4
.L08007CC2:
    ldr r2, .L08007CEC @ =gFaceConfig
    adds r2, r4, r2
    ldr r1, [r2]
    lsrs r1, r1, #5
    movs r0, #0xf
    ldrh r2, [r2, #4]
    ands r0, r2
    lsls r0, r0, #0xc
    adds r1, r1, r0
    adds r1, r1, r3
    strh r1, [r5, #0x3c]
    adds r0, r5, #0
.L08007CDA:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08007CEC: .4byte gFaceConfig
    func_end func_08007BCC

    thumb_func_start func_08007CF0
func_08007CF0: @ 0x08007CF0
    ldr r3, .L08007D00 @ =0x030041C0
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r3, [r0]
    strh r1, [r3, #0x34]
    ldr r0, [r0]
    strh r2, [r0, #0x36]
    bx lr
    .align 2, 0
.L08007D00: .4byte 0x030041C0
    func_end func_08007CF0

    thumb_func_start func_08007D04
func_08007D04: @ 0x08007D04
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    ldr r0, [r0, #0x48]
    cmp r0, #0
    beq .L08007D14
    bl func_08090CD4
.L08007D14:
    ldr r0, [r4, #0x2c]
    ldr r0, [r0, #0x44]
    cmp r0, #0
    beq .L08007D20
    bl func_08090CD4
.L08007D20:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08007D04

    thumb_func_start func_08007D28
func_08007D28: @ 0x08007D28
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    bl func_08006B20
    str r0, [r4, #0x30]
    ldr r0, [r0]
    ldr r5, .L08007D78 @ =gFaceConfig
    ldr r1, [r4, #0x2c]
    adds r1, #0x40
    ldrb r1, [r1]
    lsls r1, r1, #3
    adds r1, r1, r5
    ldr r1, [r1]
    ldr r2, .L08007D7C @ =0x06010000
    adds r1, r1, r2
    bl Decompress
    ldr r0, [r4, #0x30]
    ldr r0, [r0, #8]
    ldr r1, [r4, #0x2c]
    adds r1, #0x40
    ldrb r1, [r1]
    lsls r1, r1, #3
    adds r1, r1, r5
    ldrh r1, [r1, #4]
    adds r1, #0x10
    lsls r1, r1, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r1, [r4, #0x2c]
    ldr r0, [r4, #0x30]
    str r0, [r1, #0x2c]
    ldr r0, [r4, #0x34]
    strh r0, [r1, #0x3e]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08007D78: .4byte gFaceConfig
.L08007D7C: .4byte 0x06010000
    func_end func_08007D28

    thumb_func_start func_08007D80
func_08007D80: @ 0x08007D80
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    ldr r1, [r0, #0x48]
    cmp r1, #0
    beq .L08007DA4
    ldr r0, [r4, #0x30]
    ldrb r0, [r0, #0x18]
    strh r0, [r1, #0x30]
    ldr r0, [r4, #0x2c]
    ldr r0, [r0, #0x48]
    movs r1, #0
    bl Proc_Goto
    ldr r0, [r4, #0x2c]
    ldr r0, [r0, #0x48]
    bl func_08090CE4
.L08007DA4:
    ldr r0, [r4, #0x2c]
    ldr r0, [r0, #0x44]
    cmp r0, #0
    beq .L08007DB0
    bl func_08090CE4
.L08007DB0:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08007D80

    thumb_func_start func_08007DB8
func_08007DB8: @ 0x08007DB8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08007DD0 @ =0x08B90980
    adds r1, r4, #0
    bl Proc_Start
    str r4, [r0, #0x2c]
    str r5, [r0, #0x34]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08007DD0: .4byte 0x08B90980
    func_end func_08007DB8

    thumb_func_start func_08007DD4
func_08007DD4: @ 0x08007DD4
    push {r4, lr}
    movs r2, #0
    ldr r4, .L08007DF4 @ =0x08B909B8
    movs r3, #0
.L08007DDC:
    ldr r0, [r4]
    lsls r1, r2, #2
    adds r0, #0x18
    adds r0, r0, r1
    str r3, [r0]
    adds r2, #1
    cmp r2, #7
    ble .L08007DDC
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08007DF4: .4byte 0x08B909B8
    func_end func_08007DD4

    thumb_func_start InitTalk
InitTalk: @ 0x08007DF8
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    lsls r2, r2, #0x18
    lsrs r7, r2, #0x18
    ldr r4, .L08007E7C @ =0x030000E8
    movs r0, #0
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L08007E80 @ =0x000003FF
    ands r0, r5
    lsls r0, r0, #5
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r0, r0, r2
    adds r1, r1, r0
    adds r0, r4, #0
    adds r2, r5, #0
    movs r3, #2
    bl InitTextFont
    bl func_08007F64
    ldr r0, .L08007E84 @ =0x08B909B8
    ldr r0, [r0]
    strb r6, [r0, #0xa]
    cmp r6, #0
    ble .L08007E4E
    ldr r4, .L08007E88 @ =0x030000C8
    adds r5, r6, #0
.L08007E36:
    adds r0, r4, #0
    movs r1, #0x1e
    bl InitText
    adds r0, r4, #0
    movs r1, #1
    bl Text_SetColor
    adds r4, #8
    subs r5, #1
    cmp r5, #0
    bne .L08007E36
.L08007E4E:
    cmp r7, #0
    beq .L08007E70
    ldr r4, .L08007E8C @ =0x083FBD34
    movs r0, #1
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L08007E90 @ =0x06000200
    adds r1, r1, r0
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08007E94 @ =0x083FBFD0
    movs r1, #0x60
    movs r2, #0x20
    bl ApplyPaletteExt
.L08007E70:
    bl func_08007DD4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08007E7C: .4byte 0x030000E8
.L08007E80: .4byte 0x000003FF
.L08007E84: .4byte 0x08B909B8
.L08007E88: .4byte 0x030000C8
.L08007E8C: .4byte 0x083FBD34
.L08007E90: .4byte 0x06000200
.L08007E94: .4byte 0x083FBFD0
    func_end InitTalk

    thumb_func_start func_08007E98
func_08007E98: @ 0x08007E98
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    adds r4, r2, #0
    ldr r5, .L08007F28 @ =0x030000E8
    ldr r1, .L08007F2C @ =0x000003FF
    ands r1, r0
    lsls r1, r1, #5
    ldr r0, .L08007F30 @ =0x06010000
    adds r1, r1, r0
    adds r0, r5, #0
    bl InitSpriteTextFont
    adds r0, r5, #0
    bl SetTextFont
    movs r0, #1
    bl SetTextFontGlyphs
    ldr r0, .L08007F34 @ =0x08194694
    adds r4, #0x10
    lsls r1, r4, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r2, .L08007F38 @ =gPal
    lsls r4, r4, #4
    adds r0, r4, #4
    lsls r0, r0, #1
    adds r0, r0, r2
    ldr r1, .L08007F3C @ =0x00007247
    strh r1, [r0]
    adds r0, r4, #0
    adds r0, #0xe
    lsls r0, r0, #1
    adds r0, r0, r2
    ldr r1, .L08007F40 @ =0x000031AE
    strh r1, [r0]
    adds r4, #0xf
    lsls r4, r4, #1
    adds r4, r4, r2
    ldr r0, .L08007F44 @ =0x00007FFF
    strh r0, [r4]
    ldr r0, .L08007F48 @ =0x08B909B8
    ldr r0, [r0]
    strb r6, [r0, #0xa]
    movs r5, #0
    cmp r5, r6
    bge .L08007F20
.L08007EF8:
    lsls r4, r5, #3
    ldr r0, .L08007F4C @ =0x030000C8
    adds r4, r4, r0
    adds r0, r4, #0
    bl InitSpriteText
    adds r0, r4, #0
    bl SpriteText_DrawBackground
    adds r0, r4, #0
    movs r1, #6
    bl Text_SetColor
    adds r0, r4, #0
    movs r1, #4
    bl Text_SetCursor
    adds r5, #1
    cmp r5, r6
    blt .L08007EF8
.L08007F20:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08007F28: .4byte 0x030000E8
.L08007F2C: .4byte 0x000003FF
.L08007F30: .4byte 0x06010000
.L08007F34: .4byte 0x08194694
.L08007F38: .4byte gPal
.L08007F3C: .4byte 0x00007247
.L08007F40: .4byte 0x000031AE
.L08007F44: .4byte 0x00007FFF
.L08007F48: .4byte 0x08B909B8
.L08007F4C: .4byte 0x030000C8
    func_end func_08007E98

    thumb_func_start func_08007F50
func_08007F50: @ 0x08007F50
    push {lr}
    ldr r0, .L08007F60 @ =0x08194674
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r0}
    bx r0
    .align 2, 0
.L08007F60: .4byte 0x08194674
    func_end func_08007F50

    thumb_func_start func_08007F64
func_08007F64: @ 0x08007F64
    push {lr}
    ldr r0, .L08007F74 @ =0x030000E8
    bl SetTextFont
    bl InitTalkTextFont
    pop {r0}
    bx r0
    .align 2, 0
.L08007F74: .4byte 0x030000E8
    func_end func_08007F64

    thumb_func_start func_08007F78
func_08007F78: @ 0x08007F78
    push {r4, r5, r6, r7, lr}
    adds r7, r3, #0
    ldr r4, .L08008000 @ =0x08B909B8
    ldr r3, [r4]
    movs r5, #0
    strb r0, [r3, #0xc]
    ldr r0, [r4]
    strb r1, [r0, #0xd]
    ldr r0, [r4]
    str r2, [r0]
    str r5, [r0, #4]
    movs r6, #1
    strb r6, [r0, #8]
    ldr r0, [r4]
    strb r5, [r0, #9]
    ldr r0, [r4]
    adds r0, #0x82
    strb r5, [r0]
    ldr r0, [r4]
    strb r5, [r0, #0xb]
    bl GetTextPrintDelay
    ldr r1, [r4]
    strb r0, [r1, #0x13]
    ldr r0, [r4]
    strb r5, [r0, #0x14]
    movs r0, #0xff
    bl func_08008E28
    ldr r1, [r4]
    movs r0, #0xff
    strb r0, [r1, #0xf]
    ldr r0, [r4]
    strb r5, [r0, #0x15]
    ldr r0, [r4]
    strb r5, [r0, #0x12]
    ldr r0, [r4]
    strb r6, [r0, #0x16]
    ldr r0, [r4]
    strb r5, [r0, #0x17]
    ldr r0, [r4]
    adds r1, r0, #0
    adds r1, #0x80
    movs r2, #0
    strh r5, [r1]
    str r5, [r0, #0x38]
    adds r0, #0x83
    strb r2, [r0]
    ldr r0, [r4]
    ldr r0, [r0]
    movs r1, #0
    bl func_0800A11C
    adds r0, #7
    movs r1, #8
    bl Div
    ldr r1, [r4]
    adds r0, #2
    strb r0, [r1, #0xe]
    cmp r7, #0
    bne .L08008008
    ldr r0, .L08008004 @ =0x08B909D4
    movs r1, #3
    bl Proc_Start
    b .L08008010
    .align 2, 0
.L08008000: .4byte 0x08B909B8
.L08008004: .4byte 0x08B909D4
.L08008008:
    ldr r0, .L08008018 @ =0x08B909D4
    adds r1, r7, #0
    bl Proc_StartBlocking
.L08008010:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08008018: .4byte 0x08B909D4
    func_end func_08007F78

    thumb_func_start StartTalkMsg
StartTalkMsg: @ 0x0800801C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, r2, #0
    bl DecodeMsg
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #0
    bl func_08007F78
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end StartTalkMsg

    thumb_func_start func_0800803C
func_0800803C: @ 0x0800803C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, r2, #0
    adds r6, r3, #0
    bl DecodeMsg
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    adds r3, r6, #0
    bl func_08007F78
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0800803C

    thumb_func_start func_0800805C
func_0800805C: @ 0x0800805C
    push {lr}
    movs r3, #0
    bl func_08007F78
    pop {r1}
    bx r1
    func_end func_0800805C

    thumb_func_start EndTalk
EndTalk: @ 0x08008068
    push {lr}
    ldr r0, .L08008074 @ =0x08B909D4
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08008074: .4byte 0x08B909D4
    func_end EndTalk

    thumb_func_start func_08008078
func_08008078: @ 0x08008078
    ldr r1, .L08008080 @ =0x08B909B8
    ldr r1, [r1]
    strb r0, [r1, #0xa]
    bx lr
    .align 2, 0
.L08008080: .4byte 0x08B909B8
    func_end func_08008078

    thumb_func_start ResetTalkFlags
ResetTalkFlags: @ 0x08008084
    ldr r0, .L08008090 @ =0x08B909B8
    ldr r0, [r0]
    adds r0, #0x80
    movs r1, #0
    strh r1, [r0]
    bx lr
    .align 2, 0
.L08008090: .4byte 0x08B909B8
    func_end ResetTalkFlags

    thumb_func_start SetTalkFlag
SetTalkFlag: @ 0x08008094
    ldr r1, .L080080A4 @ =0x08B909B8
    ldr r1, [r1]
    adds r1, #0x80
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    bx lr
    .align 2, 0
.L080080A4: .4byte 0x08B909B8
    func_end SetTalkFlag

    thumb_func_start SetTalkFunc
SetTalkFunc: @ 0x080080A8
    ldr r1, .L080080B0 @ =0x08B909B8
    ldr r1, [r1]
    str r0, [r1, #0x38]
    bx lr
    .align 2, 0
.L080080B0: .4byte 0x08B909B8
    func_end SetTalkFunc

    thumb_func_start ClearTalkFlag
ClearTalkFlag: @ 0x080080B4
    ldr r1, .L080080C4 @ =0x08B909B8
    ldr r1, [r1]
    adds r1, #0x80
    ldrh r2, [r1]
    bics r2, r0
    adds r0, r2, #0
    strh r0, [r1]
    bx lr
    .align 2, 0
.L080080C4: .4byte 0x08B909B8
    func_end ClearTalkFlag

    thumb_func_start CheckTalkFlag
CheckTalkFlag: @ 0x080080C8
    ldr r1, .L080080D4 @ =0x08B909B8
    ldr r1, [r1]
    adds r1, #0x80
    ldrh r1, [r1]
    ands r0, r1
    bx lr
    .align 2, 0
.L080080D4: .4byte 0x08B909B8
    func_end CheckTalkFlag

    thumb_func_start func_080080D8
func_080080D8: @ 0x080080D8
    ldr r2, .L080080F0 @ =0x08B909B8
    ldr r1, [r2]
    strb r0, [r1, #0x13]
    ldr r2, [r2]
    movs r0, #0x13
    ldrsb r0, [r2, r0]
    cmp r0, #0
    bge .L080080EC
    movs r0, #0
    strb r0, [r2, #0x13]
.L080080EC:
    bx lr
    .align 2, 0
.L080080F0: .4byte 0x08B909B8
    func_end func_080080D8

    thumb_func_start func_080080F4
func_080080F4: @ 0x080080F4
    push {r4, r5, r6, lr}
    ldr r2, .L08008128 @ =0x08B909B8
    ldr r1, [r2]
    strb r0, [r1, #8]
    movs r4, #0
    ldr r0, [r2]
    ldrb r0, [r0, #0xa]
    cmp r4, r0
    bge .L08008120
    adds r6, r2, #0
    ldr r5, .L0800812C @ =0x030000C8
.L0800810A:
    ldr r0, [r6]
    ldrb r1, [r0, #8]
    adds r0, r5, #0
    bl Text_SetColor
    adds r5, #8
    adds r4, #1
    ldr r0, [r6]
    ldrb r0, [r0, #0xa]
    cmp r4, r0
    blt .L0800810A
.L08008120:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08008128: .4byte 0x08B909B8
.L0800812C: .4byte 0x030000C8
    func_end func_080080F4

    thumb_func_start TalkSkipListener_OnIdle
TalkSkipListener_OnIdle: @ 0x08008130
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08008190 @ =0x08B90ACC
    bl Proc_Find
    cmp r0, #0
    bne .L080081D2
    ldr r0, .L08008194 @ =0x08B90B24
    bl Proc_Find
    cmp r0, #0
    bne .L080081D2
    movs r0, #4
    bl CheckTalkFlag
    cmp r0, #0
    bne .L080081A8
    ldr r0, .L08008198 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0xa
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080081A8
    bl func_0800F08C
    ldr r0, .L0800819C @ =0x08B909B8
    ldr r0, [r0]
    ldrb r0, [r0, #0x11]
    bl func_08009F94
    adds r0, r4, #0
    bl Proc_End
    bl EndTalk
    ldr r0, .L080081A0 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L080081A4 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r0, #3
    bl EnableBgSync
    b .L080081D2
    .align 2, 0
.L08008190: .4byte 0x08B90ACC
.L08008194: .4byte 0x08B90B24
.L08008198: .4byte gpKeySt
.L0800819C: .4byte 0x08B909B8
.L080081A0: .4byte gBg0Tm
.L080081A4: .4byte gBg1Tm
.L080081A8:
    ldr r0, .L080081D8 @ =0x08B90A4C
    bl Proc_Find
    cmp r0, #0
    bne .L080081D2
    movs r0, #8
    bl CheckTalkFlag
    cmp r0, #0
    bne .L080081D2
    ldr r0, .L080081DC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0xf3
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080081D2
    ldr r0, .L080081E0 @ =0x08B909B8
    ldr r1, [r0]
    movs r0, #1
    strb r0, [r1, #0x12]
.L080081D2:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080081D8: .4byte 0x08B90A4C
.L080081DC: .4byte gpKeySt
.L080081E0: .4byte 0x08B909B8
    func_end TalkSkipListener_OnIdle

    thumb_func_start func_080081E4
func_080081E4: @ 0x080081E4
    push {lr}
    movs r0, #0x20
    bl CheckTalkFlag
    cmp r0, #0
    bne .L08008208
    bl ApplySystemObjectsGraphics
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
.L08008208:
    ldr r0, .L08008214 @ =0x08B909BC
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08008214: .4byte 0x08B909BC
    func_end func_080081E4

    thumb_func_start func_08008218
func_08008218: @ 0x08008218
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    bl func_08009020
    lsls r0, r0, #0x18
    asrs r3, r0, #0x18
    cmp r3, #0
    beq .L0800822E
    b .L0800837E
.L0800822E:
    ldr r2, .L08008278 @ =0x08B909B8
    ldr r1, [r2]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L08008252
    ldrb r0, [r1, #0x14]
    adds r0, #1
    strb r0, [r1, #0x14]
    ldr r0, [r2]
    movs r1, #0x14
    ldrsb r1, [r0, r1]
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bge .L08008252
    b .L0800837E
.L08008252:
    ldr r0, [r2]
    strb r3, [r0, #0x14]
.L08008256:
    ldr r7, .L08008278 @ =0x08B909B8
    ldr r0, .L0800827C @ =0x0202BC39
    mov r8, r0
.L0800825C:
    ldr r0, [r7]
    ldrb r0, [r0, #0x11]
    bl func_08009F94
    adds r0, r6, #0
    bl func_080085BC
    cmp r0, #1
    beq .L080082B4
    cmp r0, #1
    bgt .L08008280
    cmp r0, #0
    beq .L0800828A
    b .L080082B4
    .align 2, 0
.L08008278: .4byte 0x08B909B8
.L0800827C: .4byte 0x0202BC39
.L08008280:
    cmp r0, #2
    beq .L08008292
    cmp r0, #3
    beq .L080082A6
    b .L080082B4
.L0800828A:
    adds r0, r6, #0
    bl Proc_Break
    b .L0800837E
.L08008292:
    ldr r1, [r7]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L08008256
    movs r0, #0x13
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08008368
    b .L0800837E
.L080082A6:
    ldr r0, [r7]
    ldrb r1, [r0, #0x13]
    movs r2, #0
    strb r1, [r0, #0x14]
    ldr r0, [r7]
    strb r2, [r0, #0x12]
    b .L0800837E
.L080082B4:
    movs r0, #0x20
    bl CheckTalkFlag
    cmp r0, #0
    bne .L080082C6
    adds r0, r6, #0
    bl func_0800838C
    b .L080082CC
.L080082C6:
    adds r0, r6, #0
    bl func_08008478
.L080082CC:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0800837E
    ldr r5, .L0800831C @ =0x08B909B8
    ldr r4, [r5]
    ldrb r1, [r4, #0xb]
    ldrb r2, [r4, #9]
    adds r0, r1, r2
    ldrb r1, [r4, #0xa]
    bl __modsi3
    lsls r0, r0, #3
    ldr r1, .L08008320 @ =0x030000C8
    adds r0, r0, r1
    ldr r1, [r4]
    bl Text_DrawCharacter
    ldr r1, [r5]
    str r0, [r1]
    movs r0, #0x40
    bl CheckTalkFlag
    cmp r0, #0
    bne .L08008368
    movs r0, #0x80
    bl CheckTalkFlag
    cmp r0, #0
    beq .L08008328
    mov r1, r8
    ldrb r1, [r1]
    lsls r0, r1, #0x1e
    cmp r0, #0
    blt .L08008368
    ldr r0, .L08008324 @ =0x0000039A
    bl m4aSongNumStart
    b .L08008368
    .align 2, 0
.L0800831C: .4byte 0x08B909B8
.L08008320: .4byte 0x030000C8
.L08008324: .4byte 0x0000039A
.L08008328:
    bl GetTextPrintDelay
    adds r4, r0, #0
    cmp r4, #1
    bne .L0800833C
    bl GetGameTime
    ands r0, r4
    cmp r0, #0
    beq .L08008368
.L0800833C:
    ldr r1, [r5]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L08008350
    adds r0, r1, #0
    adds r0, #0x82
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08008368
.L08008350:
    adds r0, r1, #0
    adds r0, #0x82
    movs r1, #1
    strb r1, [r0]
    mov r2, r8
    ldrb r2, [r2]
    lsls r0, r2, #0x1e
    cmp r0, #0
    blt .L08008368
    ldr r0, .L08008388 @ =0x0000038E
    bl m4aSongNumStart
.L08008368:
    ldr r1, [r7]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L08008374
    b .L0800825C
.L08008374:
    movs r0, #0x13
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bgt .L0800837E
    b .L0800825C
.L0800837E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08008388: .4byte 0x0000038E
    func_end func_08008218

    thumb_func_start func_0800838C
func_0800838C: @ 0x0800838C
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    bl func_08009EE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080083F8
    ldr r4, .L080083F4 @ =0x08B909B8
    ldr r0, [r4]
    ldrb r0, [r0, #0x11]
    cmp r0, #0xff
    beq .L080083F8
    movs r0, #2
    bl CheckTalkFlag
    cmp r0, #0
    bne .L080083F8
    ldr r1, [r4]
    ldr r0, [r1, #4]
    cmp r0, #0
    bne .L080083B8
    ldr r0, [r1]
.L080083B8:
    movs r1, #0
    bl func_0800A11C
    adds r0, #7
    movs r1, #8
    bl Div
    ldr r1, [r4]
    adds r0, #2
    strb r0, [r1, #0xe]
    bl ClearTalkBubble
    ldr r4, .L080083F4 @ =0x08B909B8
    ldr r0, [r4]
    ldrb r0, [r0, #0x11]
    adds r1, r7, #0
    bl func_08009E7C
    ldr r0, [r4]
    ldrb r4, [r0, #0x11]
    movs r0, #0x10
    bl CheckTalkFlag
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08008F6C
    movs r0, #1
    b .L08008468
    .align 2, 0
.L080083F4: .4byte 0x08B909B8
.L080083F8:
    ldr r6, .L08008414 @ =0x08B909B8
    ldr r5, [r6]
    ldrb r0, [r5, #9]
    ldrb r1, [r5, #0xa]
    cmp r0, r1
    blo .L0800841C
    movs r0, #0
    strb r0, [r5, #0x12]
    ldr r0, .L08008418 @ =0x08B90B24
    adds r1, r7, #0
    bl Proc_StartBlocking
    movs r0, #1
    b .L08008468
    .align 2, 0
.L08008414: .4byte 0x08B909B8
.L08008418: .4byte 0x08B90B24
.L0800841C:
    ldrb r0, [r5, #0x15]
    cmp r0, #0
    bne .L08008458
    ldrb r4, [r5, #9]
    ldrb r1, [r5, #0xb]
    adds r0, r1, r4
    ldrb r1, [r5, #0xa]
    bl __modsi3
    lsls r0, r0, #3
    ldr r1, .L08008470 @ =0x030000C8
    adds r0, r0, r1
    lsls r4, r4, #1
    ldrb r1, [r5, #0xd]
    adds r4, r1, r4
    lsls r4, r4, #5
    ldrb r5, [r5, #0xc]
    adds r4, r5, r4
    lsls r4, r4, #1
    ldr r1, .L08008474 @ =gBg0Tm
    adds r4, r4, r1
    adds r1, r4, #0
    bl PutText
    movs r0, #1
    bl func_0800A4F0
    ldr r1, [r6]
    movs r0, #1
    strb r0, [r1, #0x15]
.L08008458:
    ldr r1, [r6]
    ldrb r0, [r1, #0x16]
    cmp r0, #0
    beq .L08008466
    ldrb r0, [r1, #0x11]
    bl func_08009F88
.L08008466:
    movs r0, #0
.L08008468:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08008470: .4byte 0x030000C8
.L08008474: .4byte gBg0Tm
    func_end func_0800838C

    thumb_func_start func_08008478
func_08008478: @ 0x08008478
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08008498 @ =0x08B909B8
    ldr r2, [r0]
    ldrb r0, [r2, #9]
    ldrb r3, [r2, #0xa]
    cmp r0, r3
    blo .L080084A0
    movs r0, #0
    strb r0, [r2, #0x12]
    ldr r0, .L0800849C @ =0x08B90B4C
    bl Proc_StartBlocking
    movs r0, #1
    b .L080084AC
    .align 2, 0
.L08008498: .4byte 0x08B909B8
.L0800849C: .4byte 0x08B90B4C
.L080084A0:
    ldrb r0, [r2, #0x15]
    cmp r0, #0
    bne .L080084AA
    movs r0, #1
    strb r0, [r2, #0x15]
.L080084AA:
    movs r0, #0
.L080084AC:
    pop {r1}
    bx r1
    func_end func_08008478

    thumb_func_start func_080084B0
func_080084B0: @ 0x080084B0
    push {lr}
    adds r1, r0, #0
    ldr r0, .L080084C0 @ =0x08B90A04
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L080084C0: .4byte 0x08B90A04
    func_end func_080084B0

    thumb_func_start IsTalkLocked
IsTalkLocked: @ 0x080084C4
    push {lr}
    ldr r0, .L080084D8 @ =0x08B90A04
    bl Proc_Find
    cmp r0, #0
    beq .L080084D2
    movs r0, #1
.L080084D2:
    pop {r1}
    bx r1
    .align 2, 0
.L080084D8: .4byte 0x08B90A04
    func_end IsTalkLocked

    thumb_func_start ResumeTalk
ResumeTalk: @ 0x080084DC
    push {lr}
    ldr r0, .L080084E8 @ =0x08B90A04
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L080084E8: .4byte 0x08B90A04
    func_end ResumeTalk

    thumb_func_start func_080084EC
func_080084EC: @ 0x080084EC
    push {r4, r5, lr}
    ldr r0, .L0800852C @ =0x08B909B8
    ldr r2, [r0]
    ldrb r1, [r2, #8]
    cmp r1, #1
    bne .L08008534
    movs r4, #0
    ldrb r2, [r2, #0xa]
    cmp r4, r2
    bge .L08008524
    adds r5, r0, #0
.L08008502:
    ldr r1, [r5]
    ldrb r2, [r1, #0xb]
    adds r0, r2, r4
    ldrb r1, [r1, #0xa]
    bl __modsi3
    lsls r0, r0, #3
    ldr r1, .L08008530 @ =0x030000C8
    adds r0, r0, r1
    movs r1, #4
    bl Text_SetColor
    adds r4, #1
    ldr r0, [r5]
    ldrb r0, [r0, #0xa]
    cmp r4, r0
    blt .L08008502
.L08008524:
    ldr r0, .L0800852C @ =0x08B909B8
    ldr r1, [r0]
    movs r0, #4
    b .L08008566
    .align 2, 0
.L0800852C: .4byte 0x08B909B8
.L08008530: .4byte 0x030000C8
.L08008534:
    movs r4, #0
    ldrb r2, [r2, #0xa]
    cmp r4, r2
    bge .L08008560
    adds r5, r0, #0
.L0800853E:
    ldr r1, [r5]
    ldrb r2, [r1, #0xb]
    adds r0, r2, r4
    ldrb r1, [r1, #0xa]
    bl __modsi3
    lsls r0, r0, #3
    ldr r1, .L08008570 @ =0x030000C8
    adds r0, r0, r1
    movs r1, #1
    bl Text_SetColor
    adds r4, #1
    ldr r0, [r5]
    ldrb r0, [r0, #0xa]
    cmp r4, r0
    blt .L0800853E
.L08008560:
    ldr r0, .L08008574 @ =0x08B909B8
    ldr r1, [r0]
    movs r0, #1
.L08008566:
    strb r0, [r1, #8]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08008570: .4byte 0x030000C8
.L08008574: .4byte 0x08B909B8
    func_end func_080084EC

    thumb_func_start func_08008578
func_08008578: @ 0x08008578
    push {lr}
    cmp r0, #0
    beq .L0800859C
    ldr r0, .L08008594 @ =0x08194774
    movs r1, #0x60
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08008598 @ =0x08194754
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    b .L080085B0
    .align 2, 0
.L08008594: .4byte 0x08194774
.L08008598: .4byte 0x08194754
.L0800859C:
    ldr r0, .L080085B4 @ =0x083FBFD0
    movs r1, #0x60
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L080085B8 @ =0x08194674
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
.L080085B0:
    pop {r0}
    bx r0
    .align 2, 0
.L080085B4: .4byte 0x083FBFD0
.L080085B8: .4byte 0x08194674
    func_end func_08008578

    thumb_func_start func_080085BC
func_080085BC: @ 0x080085BC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    mov r8, r0
.L080085C6:
    ldr r7, .L080085FC @ =0x08B909B8
    adds r5, r7, #0
.L080085CA:
    ldr r1, [r5]
    ldr r4, [r1]
    ldrb r0, [r4]
    cmp r0, #0x14
    bgt .L08008600
    cmp r0, #0x12
    blt .L08008600
    adds r4, #1
    str r4, [r1]
    bl func_08009EE0
    adds r1, r0, #0
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r4, #0
    bl func_0800A11C
    adds r0, #7
    movs r1, #8
    bl Div
    ldr r1, [r5]
    adds r0, #2
    strb r0, [r1, #0xe]
    b .L080085CA
    .align 2, 0
.L080085FC: .4byte 0x08B909B8
.L08008600:
    ldr r0, [r7]
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0x81
    bls .L0800860E
    bl .L08008E18
.L0800860E:
    lsls r0, r0, #2
    ldr r1, .L08008618 @ =.L0800861C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08008618: .4byte .L0800861C
.L0800861C: @ jump table
    .4byte .L08008884 @ case 0
    .4byte .L0800889A @ case 1
    .4byte .L080088B8 @ case 2
    .4byte .L08008900 @ case 3
    .4byte .L0800893C @ case 4
    .4byte .L0800893C @ case 5
    .4byte .L0800893C @ case 6
    .4byte .L0800893C @ case 7
    .4byte .L08008A40 @ case 8
    .4byte .L08008A40 @ case 9
    .4byte .L08008A40 @ case 10
    .4byte .L08008A40 @ case 11
    .4byte .L08008A40 @ case 12
    .4byte .L08008A40 @ case 13
    .4byte .L08008A40 @ case 14
    .4byte .L08008A40 @ case 15
    .4byte .L08008998 @ case 16
    .4byte .L080089D8 @ case 17
    .4byte .L08008E18 @ case 18
    .4byte .L08008E18 @ case 19
    .4byte .L08008E18 @ case 20
    .4byte .L08008970 @ case 21
    .4byte .L08008980 @ case 22
    .4byte .L0800898C @ case 23
    .4byte .L08008A52 @ case 24
    .4byte .L08008A9C @ case 25
    .4byte .L08008AE8 @ case 26
    .4byte .L08008B34 @ case 27
    .4byte .L08008A1C @ case 28
    .4byte .L08008E18 @ case 29
    .4byte .L08008E18 @ case 30
    .4byte .L08008E18 @ case 31
    .4byte .L08008E18 @ case 32
    .4byte .L08008E18 @ case 33
    .4byte .L08008E18 @ case 34
    .4byte .L08008E18 @ case 35
    .4byte .L08008E18 @ case 36
    .4byte .L08008E18 @ case 37
    .4byte .L08008E18 @ case 38
    .4byte .L08008E18 @ case 39
    .4byte .L08008E18 @ case 40
    .4byte .L08008E18 @ case 41
    .4byte .L08008E18 @ case 42
    .4byte .L08008E18 @ case 43
    .4byte .L08008E18 @ case 44
    .4byte .L08008E18 @ case 45
    .4byte .L08008E18 @ case 46
    .4byte .L08008E18 @ case 47
    .4byte .L08008E18 @ case 48
    .4byte .L08008E18 @ case 49
    .4byte .L08008E18 @ case 50
    .4byte .L08008E18 @ case 51
    .4byte .L08008E18 @ case 52
    .4byte .L08008E18 @ case 53
    .4byte .L08008E18 @ case 54
    .4byte .L08008E18 @ case 55
    .4byte .L08008E18 @ case 56
    .4byte .L08008E18 @ case 57
    .4byte .L08008E18 @ case 58
    .4byte .L08008E18 @ case 59
    .4byte .L08008E18 @ case 60
    .4byte .L08008E18 @ case 61
    .4byte .L08008E18 @ case 62
    .4byte .L08008E18 @ case 63
    .4byte .L08008E18 @ case 64
    .4byte .L08008E18 @ case 65
    .4byte .L08008E18 @ case 66
    .4byte .L08008E18 @ case 67
    .4byte .L08008E18 @ case 68
    .4byte .L08008E18 @ case 69
    .4byte .L08008E18 @ case 70
    .4byte .L08008E18 @ case 71
    .4byte .L08008E18 @ case 72
    .4byte .L08008E18 @ case 73
    .4byte .L08008E18 @ case 74
    .4byte .L08008E18 @ case 75
    .4byte .L08008E18 @ case 76
    .4byte .L08008E18 @ case 77
    .4byte .L08008E18 @ case 78
    .4byte .L08008E18 @ case 79
    .4byte .L08008E18 @ case 80
    .4byte .L08008E18 @ case 81
    .4byte .L08008E18 @ case 82
    .4byte .L08008E18 @ case 83
    .4byte .L08008E18 @ case 84
    .4byte .L08008E18 @ case 85
    .4byte .L08008E18 @ case 86
    .4byte .L08008E18 @ case 87
    .4byte .L08008E18 @ case 88
    .4byte .L08008E18 @ case 89
    .4byte .L08008E18 @ case 90
    .4byte .L08008E18 @ case 91
    .4byte .L08008E18 @ case 92
    .4byte .L08008E18 @ case 93
    .4byte .L08008E18 @ case 94
    .4byte .L08008E18 @ case 95
    .4byte .L08008E18 @ case 96
    .4byte .L08008E18 @ case 97
    .4byte .L08008E18 @ case 98
    .4byte .L08008E18 @ case 99
    .4byte .L08008E18 @ case 100
    .4byte .L08008E18 @ case 101
    .4byte .L08008E18 @ case 102
    .4byte .L08008E18 @ case 103
    .4byte .L08008E18 @ case 104
    .4byte .L08008E18 @ case 105
    .4byte .L08008E18 @ case 106
    .4byte .L08008E18 @ case 107
    .4byte .L08008E18 @ case 108
    .4byte .L08008E18 @ case 109
    .4byte .L08008E18 @ case 110
    .4byte .L08008E18 @ case 111
    .4byte .L08008E18 @ case 112
    .4byte .L08008E18 @ case 113
    .4byte .L08008E18 @ case 114
    .4byte .L08008E18 @ case 115
    .4byte .L08008E18 @ case 116
    .4byte .L08008E18 @ case 117
    .4byte .L08008E18 @ case 118
    .4byte .L08008E18 @ case 119
    .4byte .L08008E18 @ case 120
    .4byte .L08008E18 @ case 121
    .4byte .L08008E18 @ case 122
    .4byte .L08008E18 @ case 123
    .4byte .L08008E18 @ case 124
    .4byte .L08008E18 @ case 125
    .4byte .L08008E18 @ case 126
    .4byte .L08008E18 @ case 127
    .4byte .L08008B80 @ case 128
    .4byte .L08008824 @ case 129
.L08008824:
    ldr r1, [r7]
    ldr r0, [r1]
    ldrb r2, [r0, #1]
    cmp r2, #0x40
    beq .L08008830
    b .L08008E18
.L08008830:
    adds r0, #2
    str r0, [r1]
    ldrb r3, [r1, #0xb]
    ldrb r2, [r1, #9]
    adds r0, r3, r2
    ldrb r1, [r1, #0xa]
    bl __modsi3
    lsls r0, r0, #3
    ldr r1, .L0800887C @ =0x030000C8
    adds r0, r0, r1
    movs r1, #6
    bl Text_Skip
    ldr r1, [r7]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L08008858
    b .L0800894C
.L08008858:
    movs r0, #0x13
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L0800894C
    ldr r0, .L08008880 @ =0x08B90A2C
    mov r1, r8
    bl Proc_StartBlocking
    adds r4, r0, #0
    movs r0, #4
    bl func_08009744
    adds r1, r4, #0
    adds r1, #0x64
    strh r0, [r1]
.L08008876:
    movs r0, #3
    b .L08008E1A
    .align 2, 0
.L0800887C: .4byte 0x030000C8
.L08008880: .4byte 0x08B90A2C
.L08008884:
    ldr r1, [r7]
    ldr r0, [r1, #4]
    cmp r0, #0
    bne .L08008890
.L0800888C:
    movs r0, #0
    b .L08008E1A
.L08008890:
    adds r0, #2
    str r0, [r1]
    movs r0, #0
    str r0, [r1, #4]
    b .L080085C6
.L0800889A:
    ldr r1, [r7]
    ldrb r3, [r1, #0x15]
    cmp r3, #1
    beq .L080088A8
    ldrb r0, [r1, #9]
    cmp r0, #1
    bne .L080088AE
.L080088A8:
    ldrb r0, [r1, #9]
    adds r0, #1
    strb r0, [r1, #9]
.L080088AE:
    ldr r1, [r7]
    movs r0, #0
    strb r0, [r1, #0x15]
    ldr r1, [r7]
    b .L08008946
.L080088B8:
    movs r0, #0x80
    bl CheckTalkFlag
    cmp r0, #0
    beq .L080088D8
    bl func_08009708
    ldr r0, .L080088D4 @ =0x08B909B8
    ldr r1, [r0]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    b .L080088F4
    .align 2, 0
.L080088D4: .4byte 0x08B909B8
.L080088D8:
    movs r0, #1
    bl CheckTalkFlag
    cmp r0, #0
    bne .L080088F0
    ldr r0, .L080088EC @ =0x08B90ACC
    mov r1, r8
    bl Proc_StartBlocking
    b .L080088F4
    .align 2, 0
.L080088EC: .4byte 0x08B90ACC
.L080088F0:
    bl func_080097FC
.L080088F4:
    ldr r0, .L080088FC @ =0x08B909B8
    ldr r1, [r0]
    b .L08008D2C
    .align 2, 0
.L080088FC: .4byte 0x08B909B8
.L08008900:
    ldr r1, [r7]
    ldrb r2, [r1, #0xb]
    ldrb r3, [r1, #9]
    adds r0, r2, r3
    ldrb r1, [r1, #0xa]
    bl __modsi3
    lsls r0, r0, #3
    ldr r1, .L08008938 @ =0x030000C8
    adds r0, r0, r1
    bl Text_GetCursor
    ldr r3, [r7]
    ldrb r2, [r3, #0xc]
    lsls r1, r2, #3
    adds r1, r1, r0
    adds r1, #4
    ldrb r0, [r3, #0xd]
    lsls r2, r0, #3
    ldrb r3, [r3, #9]
    lsls r0, r3, #4
    adds r2, r2, r0
    adds r2, #8
    mov r0, r8
    bl func_080092BC
    b .L08008D2A
    .align 2, 0
.L08008938: .4byte 0x030000C8
.L0800893C:
    ldr r1, [r7]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L08008950
.L08008946:
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
.L0800894C:
    movs r0, #2
    b .L08008E1A
.L08008950:
    ldr r0, .L0800896C @ =0x08B90A2C
    mov r1, r8
    bl Proc_StartBlocking
    adds r4, r0, #0
    ldr r0, [r7]
    ldr r0, [r0]
    ldrb r0, [r0]
    bl func_08009744
    adds r1, r4, #0
    adds r1, #0x64
    strh r0, [r1]
    b .L08008D2A
    .align 2, 0
.L0800896C: .4byte 0x08B90A2C
.L08008970:
    bl ClearTalkBubble
    ldr r0, .L0800897C @ =0x08B909B8
    ldr r1, [r0]
    b .L08008D2C
    .align 2, 0
.L0800897C: .4byte 0x08B909B8
.L08008980:
    ldr r1, [r7]
    movs r0, #1
    ldrb r2, [r1, #0x16]
    subs r0, r0, r2
    strb r0, [r1, #0x16]
    b .L08008D2A
.L0800898C:
    ldr r1, [r7]
    movs r0, #1
    ldrb r3, [r1, #0x17]
    subs r0, r0, r3
    strb r0, [r1, #0x17]
    b .L08008D2A
.L08008998:
    ldr r4, .L080089B0 @ =0x08B909B8
.L0800899A:
    ldr r2, [r4]
    ldr r1, [r2]
    ldrb r0, [r1]
    cmp r0, #8
    bge .L080089A6
    b .L08008876
.L080089A6:
    cmp r0, #0xf
    ble .L080089B4
    cmp r0, #0x10
    beq .L080089C4
    b .L08008876
    .align 2, 0
.L080089B0: .4byte 0x08B909B8
.L080089B4:
    subs r0, #8
    bl func_08008E28
    ldr r1, [r4]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    b .L0800899A
.L080089C4:
    adds r0, r1, #1
    str r0, [r2]
    mov r0, r8
    bl func_08008E34
    ldr r1, [r4]
    ldr r0, [r1]
    adds r0, #2
    str r0, [r1]
    b .L0800899A
.L080089D8:
    bl func_08009EE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080089E6
    bl ClearTalkBubble
.L080089E6:
    ldr r4, .L08008A18 @ =0x08B909B8
    ldr r0, [r4]
    ldrb r2, [r0, #0x11]
    lsls r1, r2, #2
    adds r0, #0x18
    adds r0, r0, r1
    ldr r0, [r0]
    bl StartFaceFadeOut
    ldr r2, [r4]
    ldrb r3, [r2, #0x11]
    lsls r1, r3, #2
    adds r0, r2, #0
    adds r0, #0x18
    adds r0, r0, r1
    movs r1, #0
    str r1, [r0]
    ldr r0, [r2]
    adds r0, #1
    str r0, [r2]
    mov r0, r8
    movs r1, #0x10
    bl StartTemporaryLock
    b .L08008876
    .align 2, 0
.L08008A18: .4byte 0x08B909B8
.L08008A1C:
    movs r0, #0x10
    bl CheckTalkFlag
    cmp r0, #0
    beq .L08008A2E
    movs r0, #0x10
    bl ClearTalkFlag
    b .L08008A34
.L08008A2E:
    movs r0, #0x10
    bl SetTalkFlag
.L08008A34:
    ldr r0, .L08008A3C @ =0x08B909B8
    ldr r1, [r0]
    b .L08008D2C
    .align 2, 0
.L08008A3C: .4byte 0x08B909B8
.L08008A40:
    ldr r0, [r7]
    ldrb r0, [r0, #0x11]
    bl func_08009F94
    ldr r0, [r7]
    ldr r0, [r0]
    ldrb r0, [r0]
    subs r0, #8
    b .L08008D26
.L08008A52:
    ldr r6, .L08008A90 @ =0x08B90AEC
    ldr r5, [r7]
    ldrb r4, [r5, #9]
    ldrb r1, [r5, #0xb]
    adds r0, r1, r4
    ldrb r1, [r5, #0xa]
    bl __modsi3
    adds r1, r0, #0
    lsls r1, r1, #3
    ldr r0, .L08008A94 @ =0x030000C8
    adds r1, r1, r0
    lsls r4, r4, #1
    ldrb r2, [r5, #0xd]
    adds r4, r2, r4
    lsls r4, r4, #5
    ldrb r3, [r5, #0xc]
    adds r4, r3, r4
    lsls r4, r4, #1
    ldr r0, .L08008A98 @ =gBg0Tm
    adds r4, r4, r0
    ldrb r0, [r5, #8]
    str r0, [sp]
    mov r0, r8
    str r0, [sp, #4]
    adds r0, r6, #0
    adds r2, r4, #0
    movs r3, #1
    bl func_080093CC
    b .L08008D2A
    .align 2, 0
.L08008A90: .4byte 0x08B90AEC
.L08008A94: .4byte 0x030000C8
.L08008A98: .4byte gBg0Tm
.L08008A9C:
    ldr r6, .L08008ADC @ =0x08B90AEC
    ldr r5, [r7]
    ldrb r4, [r5, #9]
    ldrb r1, [r5, #0xb]
    adds r0, r1, r4
    ldrb r1, [r5, #0xa]
    bl __modsi3
    adds r1, r0, #0
    lsls r1, r1, #3
    ldr r0, .L08008AE0 @ =0x030000C8
    adds r1, r1, r0
    lsls r4, r4, #1
    ldrb r2, [r5, #0xd]
    adds r4, r2, r4
    lsls r4, r4, #5
    ldrb r3, [r5, #0xc]
    adds r4, r3, r4
    lsls r4, r4, #1
    ldr r0, .L08008AE4 @ =gBg0Tm
    adds r4, r4, r0
    ldrb r0, [r5, #8]
    str r0, [sp]
    mov r0, r8
    str r0, [sp, #4]
    adds r0, r6, #0
    adds r2, r4, #0
    movs r3, #2
    bl func_080093CC
    b .L08008D2A
    .align 2, 0
.L08008ADC: .4byte 0x08B90AEC
.L08008AE0: .4byte 0x030000C8
.L08008AE4: .4byte gBg0Tm
.L08008AE8:
    ldr r6, .L08008B28 @ =0x08B90AFC
    ldr r5, [r7]
    ldrb r4, [r5, #9]
    ldrb r1, [r5, #0xb]
    adds r0, r1, r4
    ldrb r1, [r5, #0xa]
    bl __modsi3
    adds r1, r0, #0
    lsls r1, r1, #3
    ldr r0, .L08008B2C @ =0x030000C8
    adds r1, r1, r0
    lsls r4, r4, #1
    ldrb r2, [r5, #0xd]
    adds r4, r2, r4
    lsls r4, r4, #5
    ldrb r3, [r5, #0xc]
    adds r4, r3, r4
    lsls r4, r4, #1
    ldr r0, .L08008B30 @ =gBg0Tm
    adds r4, r4, r0
    ldrb r0, [r5, #8]
    str r0, [sp]
    mov r0, r8
    str r0, [sp, #4]
    adds r0, r6, #0
    adds r2, r4, #0
    movs r3, #1
    bl func_080093CC
    b .L08008D2A
    .align 2, 0
.L08008B28: .4byte 0x08B90AFC
.L08008B2C: .4byte 0x030000C8
.L08008B30: .4byte gBg0Tm
.L08008B34:
    ldr r6, .L08008B74 @ =0x08B90AFC
    ldr r5, [r7]
    ldrb r4, [r5, #9]
    ldrb r1, [r5, #0xb]
    adds r0, r1, r4
    ldrb r1, [r5, #0xa]
    bl __modsi3
    adds r1, r0, #0
    lsls r1, r1, #3
    ldr r0, .L08008B78 @ =0x030000C8
    adds r1, r1, r0
    lsls r4, r4, #1
    ldrb r2, [r5, #0xd]
    adds r4, r2, r4
    lsls r4, r4, #5
    ldrb r3, [r5, #0xc]
    adds r4, r3, r4
    lsls r4, r4, #1
    ldr r0, .L08008B7C @ =gBg0Tm
    adds r4, r4, r0
    ldrb r0, [r5, #8]
    str r0, [sp]
    mov r0, r8
    str r0, [sp, #4]
    adds r0, r6, #0
    adds r2, r4, #0
    movs r3, #2
    bl func_080093CC
    b .L08008D2A
    .align 2, 0
.L08008B74: .4byte 0x08B90AFC
.L08008B78: .4byte 0x030000C8
.L08008B7C: .4byte gBg0Tm
.L08008B80:
    ldr r0, [r7]
    ldr r2, [r0]
    adds r1, r2, #1
    str r1, [r0]
    ldrb r0, [r2, #1]
    cmp r0, #0x25
    bls .L08008B90
    b .L0800888C
.L08008B90:
    lsls r0, r0, #2
    ldr r1, .L08008B9C @ =.L08008BA0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08008B9C: .4byte .L08008BA0
.L08008BA0: @ jump table
    .4byte .L08008C5C @ case 0
    .4byte .L08008C5C @ case 1
    .4byte .L08008C5C @ case 2
    .4byte .L08008C5C @ case 3
    .4byte .L08008CAE @ case 4
    .4byte .L08008CC0 @ case 5
    .4byte .L08008CF8 @ case 6
    .4byte .L08008D2A @ case 7
    .4byte .L08008D2A @ case 8
    .4byte .L0800888C @ case 9
    .4byte .L08008D10 @ case 10
    .4byte .L08008D10 @ case 11
    .4byte .L08008D10 @ case 12
    .4byte .L08008D10 @ case 13
    .4byte .L08008D10 @ case 14
    .4byte .L08008D10 @ case 15
    .4byte .L08008D10 @ case 16
    .4byte .L08008D10 @ case 17
    .4byte .L0800888C @ case 18
    .4byte .L0800888C @ case 19
    .4byte .L0800888C @ case 20
    .4byte .L0800888C @ case 21
    .4byte .L08008D34 @ case 22
    .4byte .L08008D4A @ case 23
    .4byte .L08008D60 @ case 24
    .4byte .L08008D76 @ case 25
    .4byte .L08008D8C @ case 26
    .4byte .L08008DA2 @ case 27
    .4byte .L08008DBC @ case 28
    .4byte .L08008DD2 @ case 29
    .4byte .L08008DE8 @ case 30
    .4byte .L08008DFE @ case 31
    .4byte .L08008CE0 @ case 32
    .4byte .L08008C48 @ case 33
    .4byte .L0800888C @ case 34
    .4byte .L0800888C @ case 35
    .4byte .L08008C38 @ case 36
    .4byte .L08008C9C @ case 37
.L08008C38:
    ldr r0, [r7]
    ldr r1, [r0, #0x38]
    cmp r1, #0
    beq .L08008D2A
    mov r0, r8
    bl _call_via_r1
    b .L08008D2A
.L08008C48:
    bl func_080084EC
    ldr r0, .L08008C58 @ =0x08B909B8
    ldr r1, [r0]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    b .L080085C6
    .align 2, 0
.L08008C58: .4byte 0x08B909B8
.L08008C5C:
    ldr r3, .L08008C94 @ =0x08B909B8
    ldr r1, [r3]
    ldr r2, [r1]
    adds r0, r2, #1
    str r0, [r1]
    ldrb r0, [r2, #1]
    strb r0, [r1, #8]
    movs r4, #0
    ldr r0, [r3]
    ldrb r0, [r0, #0xa]
    cmp r4, r0
    bge .L08008C8E
    adds r6, r3, #0
    ldr r5, .L08008C98 @ =0x030000C8
.L08008C78:
    ldr r0, [r6]
    ldrb r1, [r0, #8]
    adds r0, r5, #0
    bl Text_SetColor
    adds r5, #8
    adds r4, #1
    ldr r0, [r6]
    ldrb r0, [r0, #0xa]
    cmp r4, r0
    blt .L08008C78
.L08008C8E:
    ldr r0, .L08008C94 @ =0x08B909B8
    ldr r1, [r0]
    b .L08008D2C
    .align 2, 0
.L08008C94: .4byte 0x08B909B8
.L08008C98: .4byte 0x030000C8
.L08008C9C:
    ldr r2, [r7]
    adds r2, #0x83
    movs r1, #1
    ldrb r3, [r2]
    ands r1, r3
    movs r0, #3
    subs r0, r0, r1
    strb r0, [r2]
    b .L08008D2A
.L08008CAE:
    mov r0, r8
    bl func_080084B0
    ldr r0, .L08008CBC @ =0x08B909B8
    ldr r1, [r0]
    b .L08008D2C
    .align 2, 0
.L08008CBC: .4byte 0x08B909B8
.L08008CC0:
    ldr r4, .L08008CDC @ =0x08B909B8
    ldr r1, [r4]
    ldr r0, [r1, #0x3c]
    adds r1, #0x40
    bl func_08014590
    ldr r1, [r4]
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1, #4]
    adds r0, r1, #0
    adds r0, #0x40
    str r0, [r1]
    b .L080085C6
    .align 2, 0
.L08008CDC: .4byte 0x08B909B8
.L08008CE0:
    ldr r4, .L08008CF4 @ =0x08B909B8
    ldr r1, [r4]
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1, #4]
    bl GetTacticianName
    ldr r1, [r4]
    str r0, [r1]
    b .L080085C6
    .align 2, 0
.L08008CF4: .4byte 0x08B909B8
.L08008CF8:
    ldr r0, .L08008D0C @ =0x08B909B8
    ldr r1, [r0]
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1, #4]
    adds r0, r1, #0
    adds r0, #0x60
    str r0, [r1]
    b .L080085C6
    .align 2, 0
.L08008D0C: .4byte 0x08B909B8
.L08008D10:
    ldr r1, [r7]
    ldrb r0, [r1, #0x11]
    ldr r1, [r1]
    ldrb r1, [r1]
    subs r1, #0xa
    bl func_08008FC8
    ldr r0, [r7]
    ldr r0, [r0]
    ldrb r0, [r0]
    subs r0, #0xa
.L08008D26:
    bl func_08008E28
.L08008D2A:
    ldr r1, [r7]
.L08008D2C:
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    b .L08008876
.L08008D34:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r2, [r1, #0x11]
    lsls r0, r2, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #0
    b .L08008DB6
.L08008D4A:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r3, [r1, #0x11]
    lsls r0, r3, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #1
    b .L08008DB6
.L08008D60:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r2, [r1, #0x11]
    lsls r0, r2, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #3
    b .L08008DB6
.L08008D76:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r3, [r1, #0x11]
    lsls r0, r3, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #2
    b .L08008DB6
.L08008D8C:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r2, [r1, #0x11]
    lsls r0, r2, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #4
    b .L08008DB6
.L08008DA2:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r3, [r1, #0x11]
    lsls r0, r3, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #5
.L08008DB6:
    bl func_08007A44
    b .L08008876
.L08008DBC:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r2, [r1, #0x11]
    lsls r0, r2, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #0
    b .L08008E12
.L08008DD2:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r3, [r1, #0x11]
    lsls r0, r3, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #2
    b .L08008E12
.L08008DE8:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r2, [r1, #0x11]
    lsls r0, r2, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #3
    b .L08008E12
.L08008DFE:
    ldr r1, [r7]
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldrb r3, [r1, #0x11]
    lsls r0, r3, #2
    adds r1, #0x18
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #4
.L08008E12:
    bl func_08007ADC
    b .L08008876
.L08008E18:
    movs r0, #1
.L08008E1A:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080085BC

    thumb_func_start func_08008E28
func_08008E28: @ 0x08008E28
    ldr r1, .L08008E30 @ =0x08B909B8
    ldr r1, [r1]
    strb r0, [r1, #0x11]
    bx lr
    .align 2, 0
.L08008E30: .4byte 0x08B909B8
    func_end func_08008E28

    thumb_func_start func_08008E34
func_08008E34: @ 0x08008E34
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    movs r6, #0
    ldr r0, .L08008E5C @ =0x08B909B8
    ldr r0, [r0]
    ldrb r0, [r0, #0x11]
    cmp r0, #0xff
    bne .L08008E4A
    movs r0, #1
    bl func_08008E28
.L08008E4A:
    bl func_0804B1EC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08008E60
    bl func_0800ED68
    b .L08008E62
    .align 2, 0
.L08008E5C: .4byte 0x08B909B8
.L08008E60:
    movs r6, #2
.L08008E62:
    ldr r4, .L08008E94 @ =0x08B909B8
    ldr r0, [r4]
    ldrb r0, [r0, #0x11]
    bl func_08009F04
    cmp r0, #0xe
    bgt .L08008E74
    movs r0, #1
    orrs r6, r0
.L08008E74:
    ldr r0, [r4]
    ldr r0, [r0]
    ldrb r1, [r0, #1]
    lsls r4, r1, #8
    ldrb r0, [r0]
    orrs r4, r0
    ldr r0, .L08008E98 @ =0x0000FFFF
    cmp r4, r0
    bne .L08008EA0
    ldr r0, .L08008E9C @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitFid
    adds r4, r0, #0
    b .L08008EA4
    .align 2, 0
.L08008E94: .4byte 0x08B909B8
.L08008E98: .4byte 0x0000FFFF
.L08008E9C: .4byte gActiveUnit
.L08008EA0:
    ldr r2, .L08008EC0 @ =0xFFFFFF00
    adds r4, r4, r2
.L08008EA4:
    ldr r5, .L08008EC4 @ =0x08B909B8
    ldr r0, [r5]
    ldrb r2, [r0, #0x11]
    lsls r1, r2, #2
    adds r0, #0x18
    adds r0, r0, r1
    ldr r0, [r0]
    cmp r0, #0
    beq .L08008EC8
    adds r1, r4, #0
    bl func_08007DB8
    b .L08008F10
    .align 2, 0
.L08008EC0: .4byte 0xFFFFFF00
.L08008EC4: .4byte 0x08B909B8
.L08008EC8:
    adds r0, r2, #0
    bl func_08009F04
    adds r1, r0, #0
    lsls r1, r1, #3
    adds r0, r4, #0
    movs r2, #0x50
    adds r3, r6, #0
    bl StartFaceAuto
    ldr r3, [r5]
    ldrb r2, [r3, #0x11]
    lsls r1, r2, #2
    adds r2, r3, #0
    adds r2, #0x18
    adds r1, r2, r1
    str r0, [r1]
    ldrb r3, [r3, #0x11]
    lsls r0, r3, #2
    adds r2, r2, r0
    ldr r0, [r2]
    bl func_0800751C
    ldr r0, [r5]
    ldrb r4, [r0, #0x11]
    movs r0, #0x10
    bl CheckTalkFlag
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08008F6C
    adds r0, r7, #0
    movs r1, #8
    bl StartTemporaryLock
.L08008F10:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08008E34

    thumb_func_start func_08008F18
func_08008F18: @ 0x08008F18
    push {r4, lr}
    ldr r4, [sp, #8]
    bl StartFaceAuto
    ldr r1, .L08008F34 @ =0x08B909B8
    ldr r1, [r1]
    lsls r4, r4, #2
    adds r1, #0x18
    adds r1, r1, r4
    str r0, [r1]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08008F34: .4byte 0x08B909B8
    func_end func_08008F18

    thumb_func_start func_08008F38
func_08008F38: @ 0x08008F38
    push {r4, lr}
    adds r3, r0, #0
    movs r1, #0
    ldr r2, .L08008F54 @ =0x030041C0
.L08008F40:
    ldr r0, [r2]
    cmp r0, #0
    beq .L08008F58
    movs r4, #0x34
    ldrsh r0, [r0, r4]
    cmp r0, r3
    bne .L08008F58
    adds r0, r1, #0
    b .L08008F64
    .align 2, 0
.L08008F54: .4byte 0x030041C0
.L08008F58:
    adds r2, #4
    adds r1, #1
    cmp r1, #3
    ble .L08008F40
    movs r0, #1
    rsbs r0, r0, #0
.L08008F64:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08008F38

    thumb_func_start func_08008F6C
func_08008F6C: @ 0x08008F6C
    push {r4, r5, r6, r7, lr}
    adds r3, r0, #0
    cmp r1, #0
    beq .L08008F7A
    movs r6, #6
    movs r5, #5
    b .L08008F7E
.L08008F7A:
    movs r6, #5
    movs r5, #6
.L08008F7E:
    cmp r3, #0
    blt .L08008F8A
    cmp r3, #2
    ble .L08008F8A
    cmp r3, #5
    ble .L08008F90
.L08008F8A:
    movs r1, #0
    movs r4, #2
    b .L08008F94
.L08008F90:
    movs r1, #3
    movs r4, #5
.L08008F94:
    adds r2, r1, #0
    cmp r2, r4
    bgt .L08008FC2
    ldr r7, .L08008FB4 @ =0x08B909B8
.L08008F9C:
    ldr r0, [r7]
    lsls r1, r2, #2
    adds r0, #0x18
    adds r0, r0, r1
    ldr r0, [r0]
    cmp r0, #0
    beq .L08008FBC
    cmp r2, r3
    bne .L08008FB8
    adds r0, #0x41
    strb r6, [r0]
    b .L08008FBC
    .align 2, 0
.L08008FB4: .4byte 0x08B909B8
.L08008FB8:
    adds r0, #0x41
    strb r5, [r0]
.L08008FBC:
    adds r2, #1
    cmp r2, r4
    ble .L08008F9C
.L08008FC2:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08008F6C

    thumb_func_start func_08008FC8
func_08008FC8: @ 0x08008FC8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r7, #0
    ldr r0, .L0800901C @ =0x08B909B8
    mov r8, r0
    ldr r0, [r0]
    lsls r6, r4, #2
    adds r0, #0x18
    adds r0, r0, r6
    ldr r0, [r0]
    cmp r0, #0
    beq .L08008FF2
    movs r7, #1
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    bl func_0800903C
.L08008FF2:
    adds r2, r7, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_0800903C
    mov r1, r8
    ldr r0, [r1]
    lsls r2, r5, #2
    adds r0, #0x18
    adds r2, r0, r2
    ldr r3, [r2]
    adds r0, r0, r6
    ldr r1, [r0]
    str r1, [r2]
    str r3, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800901C: .4byte 0x08B909B8
    func_end func_08008FC8

    thumb_func_start func_08009020
func_08009020: @ 0x08009020
    push {lr}
    ldr r0, .L08009030 @ =0x08B90A0C
    bl Proc_Find
    cmp r0, #0
    bne .L08009034
    movs r0, #0
    b .L08009036
    .align 2, 0
.L08009030: .4byte 0x08B90A0C
.L08009034:
    movs r0, #1
.L08009036:
    pop {r1}
    bx r1
    func_end func_08009020

    thumb_func_start func_0800903C
func_0800903C: @ 0x0800903C
    push {r4, r5, r6, r7, lr}
    adds r6, r1, #0
    lsls r2, r2, #0x18
    lsrs r7, r2, #0x18
    bl func_08009F04
    lsls r0, r0, #3
    bl func_08008F38
    adds r5, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    beq .L08009084
    ldr r0, .L0800908C @ =0x08B90A0C
    ldr r1, .L08009090 @ =0x030041C0
    lsls r4, r5, #2
    adds r4, r4, r1
    ldr r1, [r4]
    bl Proc_Start
    adds r3, r0, #0
    adds r0, #0x64
    strh r5, [r0]
    adds r0, #2
    strh r6, [r0]
    ldr r0, [r4]
    ldrh r1, [r0, #0x34]
    adds r0, r3, #0
    adds r0, #0x68
    strh r1, [r0]
    lsls r0, r7, #0x18
    asrs r0, r0, #0x18
    adds r1, r3, #0
    adds r1, #0x6a
    strh r0, [r1]
.L08009084:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800908C: .4byte 0x08B90A0C
.L08009090: .4byte 0x030041C0
    func_end func_0800903C

    thumb_func_start TalkFaceMove_OnInit
TalkFaceMove_OnInit: @ 0x08009094
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r0, #0
    str r0, [r6, #0x58]
    adds r4, r6, #0
    adds r4, #0x66
    movs r1, #0
    ldrsh r0, [r4, r1]
    bl func_08009F04
    adds r5, r6, #0
    adds r5, #0x68
    movs r2, #0
    ldrsh r1, [r5, r2]
    lsls r0, r0, #3
    subs r1, r1, r0
    cmp r1, #0
    bge .L080090CE
    movs r1, #0
    ldrsh r0, [r4, r1]
    bl func_08009F04
    lsls r0, r0, #3
    movs r2, #0
    ldrsh r1, [r5, r2]
    subs r0, r0, r1
    cmp r0, #0x18
    bgt .L080090E2
    b .L080090E6
.L080090CE:
    movs r1, #0
    ldrsh r0, [r4, r1]
    bl func_08009F04
    movs r2, #0
    ldrsh r1, [r5, r2]
    lsls r0, r0, #3
    subs r1, r1, r0
    cmp r1, #0x18
    ble .L080090E6
.L080090E2:
    movs r0, #0x20
    b .L080090E8
.L080090E6:
    movs r0, #0x10
.L080090E8:
    str r0, [r6, #0x5c]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end TalkFaceMove_OnInit

    thumb_func_start TalkFaceMove_OnIdle
TalkFaceMove_OnIdle: @ 0x080090F0
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r2, [r4, #0x5c]
    cmp r2, #0x10
    ble .L08009164
    adds r1, r2, #0
    cmp r2, #0
    bge .L08009104
    adds r1, r2, #7
.L08009104:
    asrs r1, r1, #3
    ldr r0, [r4, #0x58]
    adds r5, r4, #0
    adds r5, #0x64
    cmp r0, r1
    bne .L08009122
    ldr r1, .L08009160 @ =0x030041C0
    movs r2, #0
    ldrsh r0, [r5, r2]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldrh r0, [r1, #0x36]
    adds r0, #1
    strh r0, [r1, #0x36]
.L08009122:
    ldr r0, [r4, #0x5c]
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    ldr r1, [r4, #0x58]
    cmp r1, r0
    bne .L08009142
    ldr r1, .L08009160 @ =0x030041C0
    movs r3, #0
    ldrsh r0, [r5, r3]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldrh r0, [r1, #0x36]
    subs r0, #1
    strh r0, [r1, #0x36]
.L08009142:
    ldr r1, [r4, #0x5c]
    lsls r0, r1, #2
    adds r0, r0, r1
    cmp r0, #0
    bge .L0800914E
    adds r0, #7
.L0800914E:
    asrs r1, r0, #3
    ldr r0, [r4, #0x58]
    cmp r0, r1
    bne .L08009186
    ldr r1, .L08009160 @ =0x030041C0
    movs r2, #0
    ldrsh r0, [r5, r2]
    b .L0800917A
    .align 2, 0
.L08009160: .4byte 0x030041C0
.L08009164:
    lsrs r0, r2, #0x1f
    adds r0, r2, r0
    asrs r0, r0, #1
    ldr r1, [r4, #0x58]
    adds r5, r4, #0
    adds r5, #0x64
    cmp r1, r0
    bne .L08009186
    ldr r1, .L080091A8 @ =0x030041C0
    movs r3, #0
    ldrsh r0, [r5, r3]
.L0800917A:
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldrh r0, [r1, #0x36]
    adds r0, #1
    strh r0, [r1, #0x36]
.L08009186:
    ldr r1, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    cmp r1, r0
    blt .L080091AC
    ldr r1, .L080091A8 @ =0x030041C0
    movs r2, #0
    ldrsh r0, [r5, r2]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldrh r0, [r1, #0x36]
    subs r0, #1
    strh r0, [r1, #0x36]
    adds r0, r4, #0
    bl Proc_Break
    b .L080091E4
    .align 2, 0
.L080091A8: .4byte 0x030041C0
.L080091AC:
    adds r0, r4, #0
    adds r0, #0x66
    movs r3, #0
    ldrsh r0, [r0, r3]
    bl func_08009F04
    adds r2, r0, #0
    lsls r2, r2, #3
    adds r0, r4, #0
    adds r0, #0x68
    movs r3, #0
    ldrsh r1, [r0, r3]
    ldr r0, [r4, #0x58]
    adds r3, r0, #0
    adds r0, #1
    str r0, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    str r0, [sp]
    movs r0, #4
    bl Interpolate
    ldr r2, .L080091EC @ =0x030041C0
    movs r3, #0
    ldrsh r1, [r5, r3]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r1, [r1]
    strh r0, [r1, #0x34]
.L080091E4:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080091EC: .4byte 0x030041C0
    func_end TalkFaceMove_OnIdle

    thumb_func_start func_080091F0
func_080091F0: @ 0x080091F0
    push {lr}
    ldr r0, .L08009204 @ =0x08B909BC
    bl Proc_EndEach
    ldr r0, .L08009208 @ =0x08B90ACC
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08009204: .4byte 0x08B909BC
.L08009208: .4byte 0x08B90ACC
    func_end func_080091F0

    thumb_func_start TalkPause_OnIdle
TalkPause_OnIdle: @ 0x0800920C
    push {r4, lr}
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x64
    ldrh r3, [r1]
    movs r4, #0
    ldrsh r0, [r1, r4]
    cmp r0, #0
    bne .L08009226
    adds r0, r2, #0
    bl Proc_Break
    b .L0800922A
.L08009226:
    subs r0, r3, #1
    strh r0, [r1]
.L0800922A:
    pop {r4}
    pop {r0}
    bx r0
    func_end TalkPause_OnIdle

    thumb_func_start TalkWaitForInput_OnIdle
TalkWaitForInput_OnIdle: @ 0x08009230
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    bl GetGameTime
    lsrs r4, r0, #1
    movs r0, #0xf
    ands r4, r0
    movs r0, #0x80
    bl CheckTalkFlag
    cmp r0, #0
    bne .L08009270
    adds r0, r5, #0
    adds r0, #0x64
    movs r2, #0
    ldrsh r1, [r0, r2]
    adds r0, #2
    movs r3, #0
    ldrsh r2, [r0, r3]
    ldr r3, .L0800926C @ =0x08B90A8C
    lsls r0, r4, #2
    adds r0, r0, r3
    ldr r3, [r0]
    movs r0, #4
    str r0, [sp]
    movs r0, #2
    bl PutSprite
    b .L08009290
    .align 2, 0
.L0800926C: .4byte 0x08B90A8C
.L08009270:
    adds r0, r5, #0
    adds r0, #0x64
    movs r2, #0
    ldrsh r1, [r0, r2]
    adds r0, #2
    movs r3, #0
    ldrsh r2, [r0, r3]
    ldr r3, .L080092AC @ =0x08B90A8C
    lsls r0, r4, #2
    adds r0, r0, r3
    ldr r3, [r0]
    ldr r0, .L080092B0 @ =0x0000B2BF
    str r0, [sp]
    movs r0, #0
    bl PutSprite
.L08009290:
    ldr r0, .L080092B4 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0xf3
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080092A4
    adds r0, r5, #0
    bl Proc_Break
.L080092A4:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080092AC: .4byte 0x08B90A8C
.L080092B0: .4byte 0x0000B2BF
.L080092B4: .4byte gpKeySt
    func_end TalkWaitForInput_OnIdle

    thumb_func_start func_080092B8
func_080092B8: @ 0x080092B8
    bx lr
    func_end func_080092B8

    thumb_func_start func_080092BC
func_080092BC: @ 0x080092BC
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    ldr r0, .L080092E4 @ =0x08B90A4C
    adds r1, r3, #0
    bl Proc_StartBlocking
    adds r2, r0, #0
    adds r0, #0x64
    movs r1, #0
    strh r4, [r0]
    adds r0, #2
    strh r5, [r0]
    adds r0, #2
    strh r1, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080092E4: .4byte 0x08B90A4C
    func_end func_080092BC

    thumb_func_start func_080092E8
func_080092E8: @ 0x080092E8
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r0, .L08009318 @ =0x08B90A4C
    adds r1, r4, #0
    bl Proc_StartBlocking
    adds r1, r0, #0
    adds r0, #0x64
    strh r5, [r0]
    adds r0, #2
    strh r6, [r0]
    adds r0, #2
    mov r1, r8
    strh r1, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009318: .4byte 0x08B90A4C
    func_end func_080092E8

    thumb_func_start func_0800931C
func_0800931C: @ 0x0800931C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L08009364 @ =0x08B909B8
    ldr r2, [r4]
    ldrb r0, [r2, #0xd]
    adds r0, #4
    lsls r0, r0, #5
    ldrb r1, [r2, #0xc]
    adds r0, r1, r0
    lsls r0, r0, #1
    ldr r1, .L08009368 @ =gBg0Tm
    adds r0, r0, r1
    ldrb r1, [r2, #0xe]
    subs r1, #2
    ldrb r2, [r2, #0xa]
    lsls r2, r2, #1
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #1
    bl func_0800A4F0
    adds r1, r5, #0
    adds r1, #0x64
    movs r0, #0
    strh r0, [r1]
    ldr r1, [r4]
    ldrb r0, [r1, #9]
    cmp r0, #0
    bne .L0800936C
    adds r1, r5, #0
    adds r1, #0x66
    movs r0, #0x10
    strh r0, [r1]
    b .L08009382
    .align 2, 0
.L08009364: .4byte 0x08B909B8
.L08009368: .4byte gBg0Tm
.L0800936C:
    ldrb r0, [r1, #9]
    adds r0, #1
    ldrb r1, [r1, #0xa]
    cmp r0, r1
    blt .L0800937A
    lsls r1, r1, #4
    b .L0800937C
.L0800937A:
    lsls r1, r0, #4
.L0800937C:
    adds r0, r5, #0
    adds r0, #0x66
    strh r1, [r0]
.L08009382:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0800931C

    thumb_func_start func_08009388
func_08009388: @ 0x08009388
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r5, #0
    adds r4, #0x64
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    ldrh r2, [r4]
    movs r0, #0
    movs r1, #0
    bl SetBgOffset
    adds r0, r5, #0
    adds r0, #0x66
    movs r2, #0
    ldrsh r1, [r4, r2]
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r1, r0
    blt .L080093C4
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08009798
    adds r0, r5, #0
    bl Proc_Break
.L080093C4:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08009388

    thumb_func_start func_080093CC
func_080093CC: @ 0x080093CC
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    mov sb, r3
    adds r0, r6, #0
    bl Text_GetCursor
    adds r4, r0, #0
    movs r0, #0x10
    adds r0, r0, r4
    mov r8, r0
    ldrh r0, [r7]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r6, #0
    mov r1, r8
    ldr r2, [sp, #0x1c]
    bl Text_InsertDrawString
    adds r4, #0x38
    ldrh r0, [r7, #8]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    ldr r2, [sp, #0x1c]
    bl Text_InsertDrawString
    adds r0, r6, #0
    adds r1, r5, #0
    bl PutText
    movs r0, #1
    bl func_0800A4F0
    ldr r0, .L08009474 @ =0x08B90B0C
    ldr r1, [sp, #0x20]
    bl Proc_StartBlocking
    adds r1, r0, #0
    mov r3, sb
    strh r3, [r1, #0x2a]
    ldr r0, .L08009478 @ =gBg0Tm
    subs r5, r5, r0
    asrs r5, r5, #1
    movs r0, #0x1f
    ands r0, r5
    lsls r0, r0, #3
    ldr r2, .L0800947C @ =gDispIo
    ldrh r3, [r2, #0x1c]
    subs r0, r0, r3
    add r0, r8
    strh r0, [r1, #0x2c]
    cmp r5, #0
    bge .L08009448
    adds r5, #0x1f
.L08009448:
    asrs r0, r5, #5
    lsls r0, r0, #3
    ldrh r2, [r2, #0x1e]
    subs r0, r0, r2
    strh r0, [r1, #0x2e]
    str r7, [r1, #0x34]
    mov r1, sb
    lsls r0, r1, #3
    adds r0, r0, r7
    subs r0, #8
    ldr r0, [r0, #4]
    cmp r0, #0
    beq .L08009466
    bl _call_via_r0
.L08009466:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08009474: .4byte 0x08B90B0C
.L08009478: .4byte gBg0Tm
.L0800947C: .4byte gDispIo
    func_end func_080093CC

    thumb_func_start func_08009480
func_08009480: @ 0x08009480
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L080094AC @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L080094BC
    ldr r0, .L080094B0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080094A4
    ldr r0, .L080094B4 @ =0x0000038B
    bl m4aSongNumStart
.L080094A4:
    ldr r1, .L080094B8 @ =0x030000E0
    movs r0, #0
    b .L080094DE
    .align 2, 0
.L080094AC: .4byte gpKeySt
.L080094B0: .4byte gPlaySt
.L080094B4: .4byte 0x0000038B
.L080094B8: .4byte 0x030000E0
.L080094BC:
    movs r5, #1
    adds r0, r5, #0
    ands r0, r1
    cmp r0, #0
    beq .L080094F4
    ldr r0, .L080094E8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080094D8
    ldr r0, .L080094EC @ =0x0000038A
    bl m4aSongNumStart
.L080094D8:
    ldr r1, .L080094F0 @ =0x030000E0
    movs r2, #0x2a
    ldrsh r0, [r4, r2]
.L080094DE:
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
    b .L08009574
    .align 2, 0
.L080094E8: .4byte gPlaySt
.L080094EC: .4byte 0x0000038A
.L080094F0: .4byte 0x030000E0
.L080094F4:
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08009522
    ldrh r0, [r4, #0x2a]
    cmp r0, #2
    bne .L08009522
    ldr r0, .L0800957C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08009514
    ldr r0, .L08009580 @ =0x00000387
    bl m4aSongNumStart
.L08009514:
    strh r5, [r4, #0x2a]
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #4]
    cmp r0, #0
    beq .L08009522
    bl _call_via_r0
.L08009522:
    ldr r0, .L08009584 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08009558
    ldrh r1, [r4, #0x2a]
    cmp r1, #1
    bne .L08009558
    ldr r0, .L0800957C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08009548
    ldr r0, .L08009580 @ =0x00000387
    bl m4aSongNumStart
.L08009548:
    movs r0, #2
    strh r0, [r4, #0x2a]
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #0xc]
    cmp r0, #0
    beq .L08009558
    bl _call_via_r0
.L08009558:
    movs r2, #0x2c
    ldrsh r0, [r4, r2]
    movs r1, #0x2a
    ldrsh r2, [r4, r1]
    subs r2, #1
    lsls r1, r2, #2
    adds r1, r1, r2
    lsls r1, r1, #3
    adds r0, r0, r1
    subs r0, #4
    movs r2, #0x2e
    ldrsh r1, [r4, r2]
    bl func_08049F58
.L08009574:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800957C: .4byte gPlaySt
.L08009580: .4byte 0x00000387
.L08009584: .4byte gpKeySt
    func_end func_08009480

    thumb_func_start func_08009588
func_08009588: @ 0x08009588
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080095C0 @ =0x08B909B8
    ldr r2, [r0]
    ldrb r0, [r2, #0xd]
    adds r0, #4
    lsls r0, r0, #5
    ldrb r1, [r2, #0xc]
    adds r0, r1, r0
    lsls r0, r0, #1
    ldr r1, .L080095C4 @ =gBg0Tm
    adds r0, r0, r1
    ldrb r1, [r2, #0xe]
    subs r1, #2
    ldrb r2, [r2, #0xa]
    lsls r2, r2, #1
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #1
    bl func_0800A4F0
    adds r4, #0x64
    movs r0, #0
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080095C0: .4byte 0x08B909B8
.L080095C4: .4byte gBg0Tm
    func_end func_08009588

    thumb_func_start func_080095C8
func_080095C8: @ 0x080095C8
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r4, r7, #0
    adds r4, #0x64
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    ldrh r2, [r4]
    movs r0, #0
    movs r1, #0
    bl SetBgOffset
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0xf
    ble .L080096A8
    ldr r4, .L080096B0 @ =0x08B909B8
    ldr r1, [r4]
    ldrb r0, [r1, #9]
    subs r0, #1
    strb r0, [r1, #9]
    ldr r1, [r4]
    ldrb r0, [r1, #0xb]
    adds r0, #1
    strb r0, [r1, #0xb]
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r5, #0
    ldr r0, [r4]
    ldrb r0, [r0, #0xa]
    subs r0, #1
    cmp r5, r0
    bge .L08009646
    adds r6, r4, #0
.L08009612:
    ldr r4, [r6]
    ldrb r2, [r4, #0xb]
    adds r0, r2, r5
    ldrb r1, [r4, #0xa]
    bl __modsi3
    lsls r0, r0, #3
    ldr r1, .L080096B4 @ =0x030000C8
    adds r0, r0, r1
    lsls r1, r5, #1
    ldrb r2, [r4, #0xd]
    adds r1, r2, r1
    lsls r1, r1, #5
    ldrb r4, [r4, #0xc]
    adds r1, r4, r1
    lsls r1, r1, #1
    ldr r2, .L080096B8 @ =gBg0Tm
    adds r1, r1, r2
    bl PutText
    adds r5, #1
    ldr r0, [r6]
    ldrb r0, [r0, #0xa]
    subs r0, #1
    cmp r5, r0
    blt .L08009612
.L08009646:
    ldr r4, .L080096B0 @ =0x08B909B8
    ldr r2, [r4]
    ldrb r0, [r2, #0xa]
    subs r0, #1
    lsls r0, r0, #1
    ldrb r1, [r2, #0xd]
    adds r0, r1, r0
    lsls r0, r0, #5
    ldrb r1, [r2, #0xc]
    adds r0, r1, r0
    lsls r0, r0, #1
    ldr r1, .L080096B8 @ =gBg0Tm
    adds r0, r0, r1
    ldrb r1, [r2, #0xe]
    subs r1, #2
    movs r2, #2
    movs r3, #0
    bl TmFillRect_thm
    ldr r0, [r4]
    ldrb r1, [r0, #0xa]
    ldrb r0, [r0, #0xb]
    subs r0, #1
    adds r0, r1, r0
    bl __modsi3
    lsls r0, r0, #3
    ldr r5, .L080096B4 @ =0x030000C8
    adds r0, r0, r5
    bl ClearText
    ldr r4, [r4]
    ldrb r1, [r4, #0xa]
    ldrb r0, [r4, #0xb]
    subs r0, #1
    adds r0, r1, r0
    bl __modsi3
    lsls r0, r0, #3
    adds r0, r0, r5
    ldrb r1, [r4, #8]
    bl Text_SetColor
    movs r0, #1
    bl func_0800A4F0
    adds r0, r7, #0
    bl Proc_Break
.L080096A8:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080096B0: .4byte 0x08B909B8
.L080096B4: .4byte 0x030000C8
.L080096B8: .4byte gBg0Tm
    func_end func_080095C8

    thumb_func_start func_080096BC
func_080096BC: @ 0x080096BC
    push {lr}
    adds r3, r0, #0
    movs r0, #0x80
    lsls r0, r0, #2
    ldr r2, .L080096D0 @ =0x44444444
    movs r1, #0x1a
    bl func_0800A534
    pop {r0}
    bx r0
    .align 2, 0
.L080096D0: .4byte 0x44444444
    func_end func_080096BC

    thumb_func_start func_080096D4
func_080096D4: @ 0x080096D4
    push {r4, lr}
    ldr r0, .L08009700 @ =0x08B909B8
    ldr r1, [r0]
    ldrb r0, [r1, #9]
    subs r0, #1
    strb r0, [r1, #9]
    ldr r4, .L08009704 @ =0x030000D0
    adds r0, r4, #0
    bl SpriteText_DrawBackground
    adds r0, r4, #0
    movs r1, #6
    bl Text_SetColor
    adds r0, r4, #0
    movs r1, #4
    bl Text_SetCursor
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08009700: .4byte 0x08B909B8
.L08009704: .4byte 0x030000D0
    func_end func_080096D4

    thumb_func_start func_08009708
func_08009708: @ 0x08009708
    push {r4, r5, lr}
    ldr r0, .L0800973C @ =0x08B909B8
    ldr r1, [r0]
    movs r0, #0
    strb r0, [r1, #9]
    movs r5, #0
.L08009714:
    lsls r4, r5, #3
    ldr r0, .L08009740 @ =0x030000C8
    adds r4, r4, r0
    adds r0, r4, #0
    bl SpriteText_DrawBackground
    adds r0, r4, #0
    movs r1, #6
    bl Text_SetColor
    adds r0, r4, #0
    movs r1, #4
    bl Text_SetCursor
    adds r5, #1
    cmp r5, #1
    ble .L08009714
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800973C: .4byte 0x08B909B8
.L08009740: .4byte 0x030000C8
    func_end func_08009708

    thumb_func_start func_08009744
func_08009744: @ 0x08009744
    ldr r1, .L08009750 @ =0x08B90B7C
    subs r0, #4
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    bx lr
    .align 2, 0
.L08009750: .4byte 0x08B90B7C
    func_end func_08009744

    thumb_func_start ClearTalkBubble
ClearTalkBubble: @ 0x08009754
    push {lr}
    ldr r0, .L0800978C @ =0x08B909B8
    ldr r1, [r0]
    movs r0, #0xff
    strb r0, [r1, #0xf]
    ldr r0, .L08009790 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r0, #2
    bl func_0800A4F0
    bl func_08009798
    ldr r2, .L08009794 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    pop {r0}
    bx r0
    .align 2, 0
.L0800978C: .4byte 0x08B909B8
.L08009790: .4byte gBg1Tm
.L08009794: .4byte gDispIo
    func_end ClearTalkBubble

    thumb_func_start func_08009798
func_08009798: @ 0x08009798
    push {r4, r5, r6, lr}
    ldr r0, .L080097F0 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl func_0800A4F0
    ldr r2, .L080097F4 @ =0x08B909B8
    ldr r0, [r2]
    movs r1, #0
    strb r1, [r0, #9]
    ldr r0, [r2]
    adds r0, #0x82
    strb r1, [r0]
    ldr r0, [r2]
    strb r1, [r0, #0x15]
    ldr r0, [r2]
    strb r1, [r0, #0xb]
    movs r5, #0
    ldr r0, [r2]
    ldrb r0, [r0, #0xa]
    cmp r5, r0
    bge .L080097EA
    adds r6, r2, #0
.L080097CA:
    lsls r4, r5, #3
    ldr r0, .L080097F8 @ =0x030000C8
    adds r4, r4, r0
    adds r0, r4, #0
    bl ClearText
    ldr r0, [r6]
    ldrb r1, [r0, #8]
    adds r0, r4, #0
    bl Text_SetColor
    adds r5, #1
    ldr r0, [r6]
    ldrb r0, [r0, #0xa]
    cmp r5, r0
    blt .L080097CA
.L080097EA:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080097F0: .4byte gBg0Tm
.L080097F4: .4byte 0x08B909B8
.L080097F8: .4byte 0x030000C8
    func_end func_08009798

    thumb_func_start func_080097FC
func_080097FC: @ 0x080097FC
    push {r4, r5, r6, lr}
    ldr r2, .L08009848 @ =0x08B909B8
    ldr r0, [r2]
    movs r1, #0
    strb r1, [r0, #9]
    ldr r0, [r2]
    adds r0, #0x82
    strb r1, [r0]
    ldr r0, [r2]
    strb r1, [r0, #0x15]
    ldr r0, [r2]
    strb r1, [r0, #0xb]
    movs r5, #0
    ldr r0, [r2]
    ldrb r0, [r0, #0xa]
    cmp r5, r0
    bge .L08009840
    adds r6, r2, #0
.L08009820:
    lsls r4, r5, #3
    ldr r0, .L0800984C @ =0x030000C8
    adds r4, r4, r0
    adds r0, r4, #0
    bl ClearText
    ldr r0, [r6]
    ldrb r1, [r0, #8]
    adds r0, r4, #0
    bl Text_SetColor
    adds r5, #1
    ldr r0, [r6]
    ldrb r0, [r0, #0xa]
    cmp r5, r0
    blt .L08009820
.L08009840:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009848: .4byte 0x08B909B8
.L0800984C: .4byte 0x030000C8
    func_end func_080097FC

    thumb_func_start func_08009850
func_08009850: @ 0x08009850
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r5, r0, #0
    mov sl, r1
    adds r4, r2, #0
    str r3, [sp, #4]
    movs r0, #0
    mov r8, r0
    movs r6, #0
    ldr r0, .L080098A0 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r7, #1
    cmp r5, #0xf
    bgt .L0800987A
    movs r7, #0
.L0800987A:
    bl func_0804B1EC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08009886
    adds r7, #2
.L08009886:
    mov r1, sl
    ldr r2, [sp, #4]
    subs r0, r1, r2
    adds r0, #1
    mov sb, r0
    cmp r7, #1
    beq .L080098C2
    cmp r7, #1
    bgt .L080098A4
    cmp r7, #0
    beq .L080098AE
    b .L08009906
    .align 2, 0
.L080098A0: .4byte gBg1Tm
.L080098A4:
    cmp r7, #2
    beq .L080098E6
    cmp r7, #3
    beq .L080098F8
    b .L08009906
.L080098AE:
    adds r5, #3
    mov r8, r5
    lsrs r0, r4, #0x1f
    adds r0, r4, r0
    asrs r0, r0, #1
    subs r6, r5, r0
    cmp r6, #0
    bgt .L08009906
    movs r6, #1
    b .L08009906
.L080098C2:
    subs r5, #5
    mov r8, r5
    adds r0, r4, #1
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    add r0, r8
    cmp r0, #0x1d
    ble .L080098DA
    movs r0, #0x1d
    subs r6, r0, r4
    b .L08009906
.L080098DA:
    lsrs r0, r4, #0x1f
    adds r0, r4, r0
    asrs r0, r0, #1
    mov r1, r8
    subs r6, r1, r0
    b .L08009906
.L080098E6:
    movs r6, #9
    movs r2, #0xe
    mov sb, r2
    movs r4, #0x14
    movs r0, #8
    mov r8, r0
    movs r1, #0x10
    mov sl, r1
    b .L08009906
.L080098F8:
    movs r6, #1
    movs r2, #0xe
    mov sb, r2
    movs r4, #0x14
    mov r8, r4
    movs r0, #0x10
    mov sl, r0
.L08009906:
    ldr r5, .L08009988 @ =0x08B909B8
    ldr r1, [r5]
    adds r0, r6, #1
    strb r0, [r1, #0xc]
    ldr r1, [r5]
    mov r0, sb
    adds r0, #1
    strb r0, [r1, #0xd]
    ldr r1, [sp, #4]
    str r1, [sp]
    movs r0, #1
    adds r1, r6, #0
    mov r2, sb
    adds r3, r4, #0
    bl func_08009C18
    ldr r0, [r5]
    adds r0, #0x83
    ldrb r1, [r0]
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L08009948
    movs r0, #1
    ands r0, r1
    bl func_08008578
    ldr r1, [r5]
    adds r1, #0x83
    movs r0, #2
    ldrb r2, [r1]
    eors r0, r2
    strb r0, [r1]
.L08009948:
    ldr r1, [r5]
    adds r1, #0x83
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08009962
    movs r0, #1
    mov r1, r8
    mov r2, sl
    adds r3, r7, #0
    bl func_08009A90
.L08009962:
    adds r0, r6, #0
    mov r1, sb
    adds r2, r4, #0
    ldr r3, [sp, #4]
    bl func_08009A10
    bl func_0800998C
    movs r0, #2
    bl func_0800A4F0
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08009988: .4byte 0x08B909B8
    func_end func_08009850

    thumb_func_start func_0800998C
func_0800998C: @ 0x0800998C
    push {lr}
    ldr r0, .L080099A0 @ =0x08B90B8C
    movs r1, #3
    bl Proc_Start
    adds r0, #0x64
    movs r1, #0
    strh r1, [r0]
    pop {r0}
    bx r0
    .align 2, 0
.L080099A0: .4byte 0x08B90B8C
    func_end func_0800998C

    thumb_func_start func_080099A4
func_080099A4: @ 0x080099A4
    push {r4, r5, r6, lr}
    sub sp, #0x1c
    adds r6, r0, #0
    mov r1, sp
    ldr r0, .L08009A08 @ =0x08193DDC
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldr r0, [r0]
    str r0, [r1]
    adds r5, r6, #0
    adds r5, #0x64
    ldrh r1, [r5]
    adds r2, r1, #1
    strh r2, [r5]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08009A00
    lsls r0, r2, #0x10
    asrs r0, r0, #0x11
    lsls r0, r0, #2
    add r0, sp
    ldr r4, [r0]
    movs r0, #1
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L08009A0C @ =0x06000200
    adds r1, r1, r0
    adds r0, r4, #0
    bl Decompress
    ldrh r5, [r5]
    lsls r0, r5, #0x10
    asrs r0, r0, #0x11
    adds r0, #1
    lsls r0, r0, #2
    add r0, sp
    ldr r0, [r0]
    cmp r0, #0
    bne .L08009A00
    adds r0, r6, #0
    bl Proc_Break
.L08009A00:
    add sp, #0x1c
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009A08: .4byte 0x08193DDC
.L08009A0C: .4byte 0x06000200
    func_end func_080099A4

    thumb_func_start func_08009A10
func_08009A10: @ 0x08009A10
    push {r4, r5, r6, lr}
    ldr r4, .L08009A8C @ =gDispIo
    mov ip, r4
    movs r4, #0x20
    mov r5, ip
    ldrb r5, [r5, #1]
    orrs r4, r5
    movs r5, #0x41
    rsbs r5, r5, #0
    ands r4, r5
    movs r5, #0x7f
    ands r4, r5
    mov r6, ip
    strb r4, [r6, #1]
    adds r4, r0, #1
    lsls r4, r4, #3
    mov r5, ip
    adds r5, #0x2d
    strb r4, [r5]
    adds r4, r1, #1
    lsls r4, r4, #3
    adds r5, #4
    strb r4, [r5]
    adds r0, r0, r2
    subs r0, #1
    lsls r0, r0, #3
    mov r2, ip
    adds r2, #0x2c
    strb r0, [r2]
    adds r1, r1, r3
    subs r1, #1
    lsls r1, r1, #3
    mov r0, ip
    adds r0, #0x30
    strb r1, [r0]
    mov r1, ip
    adds r1, #0x34
    movs r0, #1
    ldrb r2, [r1]
    orrs r0, r2
    movs r5, #2
    orrs r0, r5
    movs r4, #4
    orrs r0, r4
    movs r3, #8
    orrs r0, r3
    movs r2, #0x10
    orrs r0, r2
    strb r0, [r1]
    adds r1, #2
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r6, [r1]
    ands r0, r6
    orrs r0, r5
    orrs r0, r4
    orrs r0, r3
    orrs r0, r2
    strb r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009A8C: .4byte gDispIo
    func_end func_08009A10

    thumb_func_start func_08009A90
func_08009A90: @ 0x08009A90
    push {r4, r5, r6, lr}
    adds r5, r1, #0
    adds r4, r2, #0
    adds r6, r3, #0
    bl GetBgTilemap
    adds r3, r0, #0
    cmp r6, #5
    bls .L08009AA4
    b .L08009C06
.L08009AA4:
    lsls r0, r6, #2
    ldr r1, .L08009AB0 @ =.L08009AB4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08009AB0: .4byte .L08009AB4
.L08009AB4: @ jump table
    .4byte .L08009ACC @ case 0
    .4byte .L08009B00 @ case 1
    .4byte .L08009B38 @ case 2
    .4byte .L08009B6C @ case 3
    .4byte .L08009BA4 @ case 4
    .4byte .L08009BDC @ case 5
.L08009ACC:
    lsls r0, r4, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r2, .L08009AF4 @ =0x00003014
    adds r1, r2, #0
    strh r1, [r0]
    ldr r2, .L08009AF8 @ =0x00003414
    adds r1, r2, #0
    strh r1, [r0, #2]
    adds r0, r4, #1
    lsls r0, r0, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r3, .L08009AFC @ =0x00003416
    adds r1, r3, #0
    strh r1, [r0]
    adds r2, #1
    b .L08009C02
    .align 2, 0
.L08009AF4: .4byte 0x00003014
.L08009AF8: .4byte 0x00003414
.L08009AFC: .4byte 0x00003416
.L08009B00:
    lsls r0, r4, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r2, .L08009B28 @ =0x00003014
    adds r1, r2, #0
    strh r1, [r0]
    ldr r2, .L08009B2C @ =0x00003414
    adds r1, r2, #0
    strh r1, [r0, #2]
    adds r0, r4, #1
    lsls r0, r0, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r3, .L08009B30 @ =0x00003015
    adds r1, r3, #0
    strh r1, [r0]
    ldr r2, .L08009B34 @ =0x00003016
    b .L08009C02
    .align 2, 0
.L08009B28: .4byte 0x00003014
.L08009B2C: .4byte 0x00003414
.L08009B30: .4byte 0x00003015
.L08009B34: .4byte 0x00003016
.L08009B38:
    lsls r2, r4, #5
    adds r2, r5, r2
    lsls r2, r2, #1
    adds r2, r2, r3
    ldr r1, .L08009B60 @ =0x00003418
    adds r0, r1, #0
    strh r0, [r2]
    adds r0, r4, #1
    lsls r0, r0, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r3, .L08009B64 @ =0x00003419
    adds r1, r3, #0
    strh r1, [r0]
    subs r3, #2
    adds r1, r3, #0
    strh r1, [r2, #2]
    ldr r2, .L08009B68 @ =0x00003C17
    b .L08009C02
    .align 2, 0
.L08009B60: .4byte 0x00003418
.L08009B64: .4byte 0x00003419
.L08009B68: .4byte 0x00003C17
.L08009B6C:
    lsls r2, r4, #5
    adds r2, r5, r2
    lsls r2, r2, #1
    adds r2, r2, r3
    ldr r1, .L08009B94 @ =0x00003017
    adds r0, r1, #0
    strh r0, [r2]
    adds r0, r4, #1
    lsls r0, r0, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r3, .L08009B98 @ =0x00003817
    adds r1, r3, #0
    strh r1, [r0]
    ldr r3, .L08009B9C @ =0x00003018
    adds r1, r3, #0
    strh r1, [r2, #2]
    ldr r2, .L08009BA0 @ =0x00003019
    b .L08009C02
    .align 2, 0
.L08009B94: .4byte 0x00003017
.L08009B98: .4byte 0x00003817
.L08009B9C: .4byte 0x00003018
.L08009BA0: .4byte 0x00003019
.L08009BA4:
    lsls r2, r4, #5
    adds r2, r5, r2
    lsls r2, r2, #1
    adds r2, r2, r3
    ldr r1, .L08009BCC @ =0x00003C19
    adds r0, r1, #0
    strh r0, [r2]
    adds r0, r4, #1
    lsls r0, r0, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r3, .L08009BD0 @ =0x00003C18
    adds r1, r3, #0
    strh r1, [r0]
    ldr r3, .L08009BD4 @ =0x00003417
    adds r1, r3, #0
    strh r1, [r2, #2]
    ldr r2, .L08009BD8 @ =0x00003C17
    b .L08009C02
    .align 2, 0
.L08009BCC: .4byte 0x00003C19
.L08009BD0: .4byte 0x00003C18
.L08009BD4: .4byte 0x00003417
.L08009BD8: .4byte 0x00003C17
.L08009BDC:
    lsls r2, r4, #5
    adds r2, r5, r2
    lsls r2, r2, #1
    adds r2, r2, r3
    ldr r1, .L08009C0C @ =0x00003017
    adds r0, r1, #0
    strh r0, [r2]
    adds r0, r4, #1
    lsls r0, r0, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    adds r0, r0, r3
    ldr r3, .L08009C10 @ =0x00003817
    adds r1, r3, #0
    strh r1, [r0]
    adds r3, #2
    adds r1, r3, #0
    strh r1, [r2, #2]
    ldr r2, .L08009C14 @ =0x00003818
.L08009C02:
    adds r1, r2, #0
    strh r1, [r0, #2]
.L08009C06:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009C0C: .4byte 0x00003017
.L08009C10: .4byte 0x00003817
.L08009C14: .4byte 0x00003818
    func_end func_08009A90

    thumb_func_start func_08009C18
func_08009C18: @ 0x08009C18
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    mov r8, r1
    str r2, [sp]
    adds r5, r3, #0
    ldr r4, [sp, #0x28]
    bl GetBgTilemap
    adds r7, r0, #0
    subs r5, #1
    subs r4, #1
    mov r0, r8
    adds r3, r0, r5
    cmp r8, r3
    bge .L08009C70
    ldr r1, .L08009D30 @ =0x00003011
    mov sb, r1
    ldr r2, [sp]
    adds r0, r2, r4
    mov r6, r8
    lsls r1, r6, #1
    lsls r0, r0, #6
    adds r0, r0, r7
    adds r2, r1, r0
    ldr r6, [sp]
    lsls r0, r6, #6
    adds r0, r0, r7
    adds r1, r1, r0
    ldr r6, .L08009D34 @ =0x00003811
    adds r0, r6, #0
    mov r6, r8
    subs r3, r3, r6
.L08009C60:
    mov r6, sb
    strh r6, [r1]
    strh r0, [r2]
    adds r2, #2
    adds r1, #2
    subs r3, #1
    cmp r3, #0
    bne .L08009C60
.L08009C70:
    ldr r3, [sp]
    add r5, r8
    mov ip, r5
    lsls r0, r3, #5
    str r0, [sp, #4]
    adds r4, r4, r3
    mov sb, r4
    movs r1, #1
    add r1, r8
    mov sl, r1
    cmp r3, sb
    bge .L08009CB4
    ldr r2, .L08009D38 @ =0x00003012
    adds r6, r2, #0
    ldr r4, .L08009D3C @ =0x00003412
    adds r5, r4, #0
    lsls r0, r3, #6
    mov r2, ip
    lsls r1, r2, #1
    adds r1, r1, r7
    adds r2, r0, r1
    mov r4, r8
    lsls r1, r4, #1
    adds r1, r1, r7
    adds r0, r0, r1
    mov r1, sb
    subs r3, r1, r3
.L08009CA6:
    strh r6, [r0]
    strh r5, [r2]
    adds r2, #0x40
    adds r0, #0x40
    subs r3, #1
    cmp r3, #0
    bne .L08009CA6
.L08009CB4:
    mov r3, sl
    cmp r3, ip
    bge .L08009CE6
    mov r5, sb
    mov sl, ip
.L08009CBE:
    ldr r2, [sp]
    adds r2, #1
    adds r4, r3, #1
    cmp r2, r5
    bge .L08009CE0
    ldr r0, .L08009D40 @ =0x00003013
    adds r6, r0, #0
    lsls r1, r2, #6
    lsls r0, r3, #1
    adds r0, r0, r7
    adds r0, r1, r0
    subs r2, r5, r2
.L08009CD6:
    strh r6, [r0]
    adds r0, #0x40
    subs r2, #1
    cmp r2, #0
    bne .L08009CD6
.L08009CE0:
    adds r3, r4, #0
    cmp r3, sl
    blt .L08009CBE
.L08009CE6:
    ldr r0, [sp, #4]
    add r0, r8
    lsls r0, r0, #1
    adds r0, r0, r7
    ldr r2, .L08009D44 @ =0x00003010
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [sp, #4]
    add r0, ip
    lsls r0, r0, #1
    adds r0, r0, r7
    ldr r3, .L08009D48 @ =0x00003410
    adds r1, r3, #0
    strh r1, [r0]
    mov r4, sb
    lsls r1, r4, #5
    mov r6, r8
    adds r0, r6, r1
    lsls r0, r0, #1
    adds r0, r0, r7
    ldr r3, .L08009D4C @ =0x00003810
    adds r2, r3, #0
    strh r2, [r0]
    add r1, ip
    lsls r1, r1, #1
    adds r1, r1, r7
    ldr r4, .L08009D50 @ =0x00003C10
    adds r0, r4, #0
    strh r0, [r1]
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08009D30: .4byte 0x00003011
.L08009D34: .4byte 0x00003811
.L08009D38: .4byte 0x00003012
.L08009D3C: .4byte 0x00003412
.L08009D40: .4byte 0x00003013
.L08009D44: .4byte 0x00003010
.L08009D48: .4byte 0x00003410
.L08009D4C: .4byte 0x00003810
.L08009D50: .4byte 0x00003C10
    func_end func_08009C18

    thumb_func_start func_08009D54
func_08009D54: @ 0x08009D54
    bx lr
    func_end func_08009D54

    thumb_func_start func_08009D58
func_08009D58: @ 0x08009D58
    push {r4, lr}
    movs r1, #0
    str r1, [r0, #0x58]
    movs r0, #0x80
    lsls r0, r0, #1
    bl CheckTalkFlag
    adds r4, r0, #0
    cmp r4, #0
    bne .L08009DB4
    ldr r2, .L08009DBC @ =0x030028AC
    ldr r0, .L08009DC0 @ =0x0000FFE0
    ldrh r1, [r2]
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    ldr r1, .L08009DC4 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xe0
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r2]
    movs r1, #0x20
    ldrb r0, [r2, #1]
    orrs r0, r1
    strb r0, [r2, #1]
    adds r3, r2, #0
    subs r3, #8
    ldrb r0, [r3]
    orrs r0, r1
    strb r0, [r3]
    subs r0, r2, #6
    ldrb r3, [r0]
    orrs r1, r3
    strb r1, [r0]
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    strb r4, [r2, #8]
    movs r0, #0x10
    strb r0, [r2, #9]
    strb r4, [r2, #0xa]
.L08009DB4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08009DBC: .4byte 0x030028AC
.L08009DC0: .4byte 0x0000FFE0
.L08009DC4: .4byte 0x0000E0FF
    func_end func_08009D58

    thumb_func_start func_08009DC8
func_08009DC8: @ 0x08009DC8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x64
    movs r1, #0
    ldrsh r0, [r0, r1]
    adds r1, r4, #0
    adds r1, #0x66
    movs r2, #0
    ldrsh r1, [r1, r2]
    adds r2, r4, #0
    adds r2, #0x68
    movs r3, #0
    ldrsh r2, [r2, r3]
    adds r3, r4, #0
    adds r3, #0x6a
    movs r5, #0
    ldrsh r3, [r3, r5]
    bl func_08009850
    adds r0, r4, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08009DC8

    thumb_func_start func_08009DFC
func_08009DFC: @ 0x08009DFC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r3, [r5, #0x58]
    adds r3, #1
    str r3, [r5, #0x58]
    movs r1, #0x1e
    rsbs r1, r1, #0
    movs r0, #0xc
    str r0, [sp]
    movs r0, #4
    movs r2, #0
    bl Interpolate
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r4, r0, #1
    lsls r2, r4, #0x10
    lsrs r2, r2, #0x10
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    movs r0, #0x80
    lsls r0, r0, #1
    bl CheckTalkFlag
    adds r6, r0, #0
    cmp r6, #0
    bne .L08009E64
    ldr r3, .L08009E78 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r4, #0
    adds r1, #0x10
    adds r0, r3, #0
    adds r0, #0x44
    strb r1, [r0]
    movs r0, #1
    subs r0, r0, r4
    adds r1, r3, #0
    adds r1, #0x45
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
.L08009E64:
    ldr r0, [r5, #0x58]
    cmp r0, #0xc
    bne .L08009E70
    adds r0, r5, #0
    bl Proc_Break
.L08009E70:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009E78: .4byte gDispIo
    func_end func_08009DFC

    thumb_func_start func_08009E7C
func_08009E7C: @ 0x08009E7C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08009ED8 @ =0x08B90B9C
    bl Proc_StartBlocking
    adds r4, r0, #0
    adds r0, r5, #0
    bl func_08009F04
    adds r2, r4, #0
    adds r2, #0x64
    strh r0, [r2]
    adds r1, r4, #0
    adds r1, #0x66
    movs r0, #8
    strh r0, [r1]
    ldr r3, .L08009EDC @ =0x08B909B8
    ldr r0, [r3]
    ldrb r1, [r0, #0xe]
    adds r0, r4, #0
    adds r0, #0x68
    strh r1, [r0]
    adds r1, r4, #0
    adds r1, #0x6a
    movs r0, #6
    strh r0, [r1]
    movs r1, #0
    ldrsh r0, [r2, r1]
    cmp r0, #0
    bge .L08009EBC
    movs r0, #0
    strh r0, [r2]
.L08009EBC:
    movs r1, #0
    ldrsh r0, [r2, r1]
    cmp r0, #0x1d
    ble .L08009EC8
    movs r0, #0x1e
    strh r0, [r2]
.L08009EC8:
    ldr r0, [r3]
    strb r5, [r0, #0xf]
    ldr r1, [r3]
    ldrb r0, [r1, #0xe]
    strb r0, [r1, #0x10]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08009ED8: .4byte 0x08B90B9C
.L08009EDC: .4byte 0x08B909B8
    func_end func_08009E7C

    thumb_func_start func_08009EE0
func_08009EE0: @ 0x08009EE0
    ldr r0, .L08009EFC @ =0x08B909B8
    ldr r1, [r0]
    movs r0, #0xf
    ldrsb r0, [r1, r0]
    ldrb r2, [r1, #0x11]
    cmp r0, r2
    bne .L08009F00
    ldrb r0, [r1, #0x10]
    ldrb r2, [r1, #0xe]
    cmp r0, r2
    bne .L08009F00
    movs r0, #1
    b .L08009F02
    .align 2, 0
.L08009EFC: .4byte 0x08B909B8
.L08009F00:
    movs r0, #0
.L08009F02:
    bx lr
    func_end func_08009EE0

    thumb_func_start func_08009F04
func_08009F04: @ 0x08009F04
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804B1EC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08009F1E
    cmp r4, #2
    bgt .L08009F1A
    movs r0, #4
    b .L08009F26
.L08009F1A:
    movs r0, #0x1a
    b .L08009F26
.L08009F1E:
    ldr r0, .L08009F2C @ =0x08B90BCC
    lsls r1, r4, #2
    adds r1, r1, r0
    ldr r0, [r1]
.L08009F26:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08009F2C: .4byte 0x08B90BCC
    func_end func_08009F04

    thumb_func_start func_08009F30
func_08009F30: @ 0x08009F30
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L08009F80 @ =0x08193DF8
    ldr r1, [r0, #4]
    ldr r0, [r0]
    str r0, [sp]
    str r1, [sp, #4]
    cmp r5, #0xff
    beq .L08009F76
    ldr r4, .L08009F84 @ =0x08B909B8
    ldr r0, [r4]
    lsls r5, r5, #2
    adds r0, #0x18
    adds r0, r0, r5
    ldr r0, [r0]
    bl func_08006D9C
    movs r1, #0x39
    rsbs r1, r1, #0
    ands r1, r0
    ldr r2, [r4]
    adds r0, r2, #0
    adds r0, #0x18
    adds r0, r0, r5
    ldr r0, [r0]
    orrs r1, r6
    ldrb r2, [r2, #0x17]
    lsls r2, r2, #2
    add r2, sp
    ldr r2, [r2]
    orrs r1, r2
    bl func_08006D68
.L08009F76:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08009F80: .4byte 0x08193DF8
.L08009F84: .4byte 0x08B909B8
    func_end func_08009F30

    thumb_func_start func_08009F88
func_08009F88: @ 0x08009F88
    push {lr}
    movs r1, #0x10
    bl func_08009F30
    pop {r0}
    bx r0
    func_end func_08009F88

    thumb_func_start func_08009F94
func_08009F94: @ 0x08009F94
    push {lr}
    movs r1, #0
    bl func_08009F30
    pop {r0}
    bx r0
    func_end func_08009F94

    thumb_func_start IsTalkActive
IsTalkActive: @ 0x08009FA0
    push {lr}
    ldr r0, .L08009FB4 @ =0x08B909D4
    bl Proc_Find
    cmp r0, #0
    beq .L08009FAE
    movs r0, #1
.L08009FAE:
    pop {r1}
    bx r1
    .align 2, 0
.L08009FB4: .4byte 0x08B909D4
    func_end IsTalkActive

    thumb_func_start FaceExists
FaceExists: @ 0x08009FB8
    push {lr}
    ldr r0, .L08009FCC @ =0x08B907C0
    bl Proc_Find
    cmp r0, #0
    beq .L08009FC6
    movs r0, #1
.L08009FC6:
    pop {r1}
    bx r1
    .align 2, 0
.L08009FCC: .4byte 0x08B907C0
    func_end FaceExists

    thumb_func_start GetTalkResult
GetTalkResult: @ 0x08009FD0
    ldr r0, .L08009FD8 @ =0x030000E0
    ldr r0, [r0]
    bx lr
    .align 2, 0
.L08009FD8: .4byte 0x030000E0
    func_end GetTalkResult

    thumb_func_start func_08009FDC
func_08009FDC: @ 0x08009FDC
    ldr r1, .L08009FE4 @ =0x030000E0
    str r0, [r1]
    bx lr
    .align 2, 0
.L08009FE4: .4byte 0x030000E0
    func_end func_08009FDC

    thumb_func_start func_08009FE8
func_08009FE8: @ 0x08009FE8
    ldr r1, .L08009FF0 @ =0x08B909B8
    ldr r1, [r1]
    str r0, [r1, #0x3c]
    bx lr
    .align 2, 0
.L08009FF0: .4byte 0x08B909B8
    func_end func_08009FE8

    thumb_func_start func_08009FF4
func_08009FF4: @ 0x08009FF4
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0800A008 @ =0x08B909B8
    ldr r0, [r0]
    adds r0, #0x60
    bl strcpy
    pop {r0}
    bx r0
    .align 2, 0
.L0800A008: .4byte 0x08B909B8
    func_end func_08009FF4

    thumb_func_start func_0800A00C
func_0800A00C: @ 0x0800A00C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov sl, r0
    adds r4, r1, #0
    str r2, [sp]
    mov sb, r3
    movs r6, #0
    mov r7, sl
    adds r5, r2, #0
    b .L0800A032
.L0800A028:
    ldr r0, [r7]
    adds r1, r4, #0
    bl Text_DrawCharacter
    adds r4, r0, #0
.L0800A032:
    movs r0, #0
    mov r8, r0
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0800A058
    cmp r0, #1
    bne .L0800A052
    ldm r7!, {r0}
    adds r1, r5, #0
    bl PutText
    adds r5, #0x80
    adds r6, #1
    adds r4, #1
    cmp r6, sb
    bge .L0800A068
.L0800A052:
    mov r2, r8
    cmp r2, #0
    beq .L0800A028
.L0800A058:
    lsls r0, r6, #2
    add r0, sl
    ldr r0, [r0]
    lsls r1, r6, #7
    ldr r2, [sp]
    adds r1, r2, r1
    bl PutText
.L0800A068:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0800A00C

    thumb_func_start func_0800A078
func_0800A078: @ 0x0800A078
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r1, [r7, #0x2c]
    ldr r2, [r7, #0x30]
    ldr r0, .L0800A0EC @ =0x08B90C06
    mov ip, r0
    movs r3, #0x52
    adds r3, r3, r7
    mov sb, r3
    ldr r4, .L0800A0F0 @ =0x000003FF
    mov sl, r4
    ldrh r6, [r3]
    ands r4, r6
    movs r0, #0x64
    adds r0, r0, r7
    mov r8, r0
    movs r5, #0xf
    adds r0, r5, #0
    mov r3, r8
    ldrh r3, [r3]
    ands r0, r3
    lsls r0, r0, #0xc
    orrs r4, r0
    str r4, [sp]
    movs r0, #3
    mov r3, ip
    bl PutSprite
    ldr r1, [r7, #0x2c]
    ldr r2, [r7, #0x30]
    ldr r3, .L0800A0F4 @ =0x08B90BEC
    mov r6, sl
    mov r4, sb
    ldrh r4, [r4]
    ands r6, r4
    ldr r0, .L0800A0F8 @ =0x030000E8
    ldrh r0, [r0, #0x14]
    ands r5, r0
    lsls r5, r5, #0xc
    orrs r6, r5
    str r6, [sp]
    movs r0, #3
    bl PutSprite
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800A0EC: .4byte 0x08B90C06
.L0800A0F0: .4byte 0x000003FF
.L0800A0F4: .4byte 0x08B90BEC
.L0800A0F8: .4byte 0x030000E8
    func_end func_0800A078

    thumb_func_start func_0800A0FC
func_0800A0FC: @ 0x0800A0FC
    push {lr}
    movs r0, #0
    bl SetOnHBlankA
    pop {r0}
    bx r0
    func_end func_0800A0FC

    thumb_func_start func_0800A108
func_0800A108: @ 0x0800A108
    push {lr}
    ldr r0, .L0800A118 @ =func_0800A0FC
    movs r1, #1
    bl func_08014B34
    pop {r0}
    bx r0
    .align 2, 0
.L0800A118: .4byte func_0800A0FC
    func_end func_0800A108

    thumb_func_start func_0800A11C
func_0800A11C: @ 0x0800A11C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x24
    adds r4, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    mov r8, r1
    ldr r0, .L0800A150 @ =0x08B909B8
    ldr r0, [r0]
    movs r1, #0xf
    ldrsb r1, [r0, r1]
    mov sb, r1
    ldrb r5, [r0, #0x11]
    movs r6, #0
    movs r7, #0x18
.L0800A13E:
    ldrb r0, [r4]
    cmp r0, #0x81
    bls .L0800A146
    b .L0800A4B2
.L0800A146:
    lsls r0, r0, #2
    ldr r1, .L0800A154 @ =.L0800A158
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800A150: .4byte 0x08B909B8
.L0800A154: .4byte .L0800A158
.L0800A158: @ jump table
    .4byte .L0800A360 @ case 0
    .4byte .L0800A36A @ case 1
    .4byte .L0800A36A @ case 2
    .4byte .L0800A376 @ case 3
    .4byte .L0800A372 @ case 4
    .4byte .L0800A372 @ case 5
    .4byte .L0800A372 @ case 6
    .4byte .L0800A372 @ case 7
    .4byte .L0800A37A @ case 8
    .4byte .L0800A37A @ case 9
    .4byte .L0800A37A @ case 10
    .4byte .L0800A37A @ case 11
    .4byte .L0800A37A @ case 12
    .4byte .L0800A37A @ case 13
    .4byte .L0800A37A @ case 14
    .4byte .L0800A37A @ case 15
    .4byte .L0800A380 @ case 16
    .4byte .L0800A39E @ case 17
    .4byte .L0800A3A4 @ case 18
    .4byte .L0800A3A4 @ case 19
    .4byte .L0800A3A4 @ case 20
    .4byte .L0800A3A4 @ case 21
    .4byte .L0800A372 @ case 22
    .4byte .L0800A372 @ case 23
    .4byte .L0800A3AC @ case 24
    .4byte .L0800A3AC @ case 25
    .4byte .L0800A3AC @ case 26
    .4byte .L0800A3AC @ case 27
    .4byte .L0800A372 @ case 28
    .4byte .L0800A4B2 @ case 29
    .4byte .L0800A4B2 @ case 30
    .4byte .L0800A4B2 @ case 31
    .4byte .L0800A4B2 @ case 32
    .4byte .L0800A4B2 @ case 33
    .4byte .L0800A4B2 @ case 34
    .4byte .L0800A4B2 @ case 35
    .4byte .L0800A4B2 @ case 36
    .4byte .L0800A4B2 @ case 37
    .4byte .L0800A4B2 @ case 38
    .4byte .L0800A4B2 @ case 39
    .4byte .L0800A4B2 @ case 40
    .4byte .L0800A4B2 @ case 41
    .4byte .L0800A4B2 @ case 42
    .4byte .L0800A4B2 @ case 43
    .4byte .L0800A4B2 @ case 44
    .4byte .L0800A4B2 @ case 45
    .4byte .L0800A4B2 @ case 46
    .4byte .L0800A4B2 @ case 47
    .4byte .L0800A4B2 @ case 48
    .4byte .L0800A4B2 @ case 49
    .4byte .L0800A4B2 @ case 50
    .4byte .L0800A4B2 @ case 51
    .4byte .L0800A4B2 @ case 52
    .4byte .L0800A4B2 @ case 53
    .4byte .L0800A4B2 @ case 54
    .4byte .L0800A4B2 @ case 55
    .4byte .L0800A4B2 @ case 56
    .4byte .L0800A4B2 @ case 57
    .4byte .L0800A4B2 @ case 58
    .4byte .L0800A4B2 @ case 59
    .4byte .L0800A4B2 @ case 60
    .4byte .L0800A4B2 @ case 61
    .4byte .L0800A4B2 @ case 62
    .4byte .L0800A4B2 @ case 63
    .4byte .L0800A4B2 @ case 64
    .4byte .L0800A4B2 @ case 65
    .4byte .L0800A4B2 @ case 66
    .4byte .L0800A4B2 @ case 67
    .4byte .L0800A4B2 @ case 68
    .4byte .L0800A4B2 @ case 69
    .4byte .L0800A4B2 @ case 70
    .4byte .L0800A4B2 @ case 71
    .4byte .L0800A4B2 @ case 72
    .4byte .L0800A4B2 @ case 73
    .4byte .L0800A4B2 @ case 74
    .4byte .L0800A4B2 @ case 75
    .4byte .L0800A4B2 @ case 76
    .4byte .L0800A4B2 @ case 77
    .4byte .L0800A4B2 @ case 78
    .4byte .L0800A4B2 @ case 79
    .4byte .L0800A4B2 @ case 80
    .4byte .L0800A4B2 @ case 81
    .4byte .L0800A4B2 @ case 82
    .4byte .L0800A4B2 @ case 83
    .4byte .L0800A4B2 @ case 84
    .4byte .L0800A4B2 @ case 85
    .4byte .L0800A4B2 @ case 86
    .4byte .L0800A4B2 @ case 87
    .4byte .L0800A4B2 @ case 88
    .4byte .L0800A4B2 @ case 89
    .4byte .L0800A4B2 @ case 90
    .4byte .L0800A4B2 @ case 91
    .4byte .L0800A4B2 @ case 92
    .4byte .L0800A4B2 @ case 93
    .4byte .L0800A4B2 @ case 94
    .4byte .L0800A4B2 @ case 95
    .4byte .L0800A4B2 @ case 96
    .4byte .L0800A4B2 @ case 97
    .4byte .L0800A4B2 @ case 98
    .4byte .L0800A4B2 @ case 99
    .4byte .L0800A4B2 @ case 100
    .4byte .L0800A4B2 @ case 101
    .4byte .L0800A4B2 @ case 102
    .4byte .L0800A4B2 @ case 103
    .4byte .L0800A4B2 @ case 104
    .4byte .L0800A4B2 @ case 105
    .4byte .L0800A4B2 @ case 106
    .4byte .L0800A4B2 @ case 107
    .4byte .L0800A4B2 @ case 108
    .4byte .L0800A4B2 @ case 109
    .4byte .L0800A4B2 @ case 110
    .4byte .L0800A4B2 @ case 111
    .4byte .L0800A4B2 @ case 112
    .4byte .L0800A4B2 @ case 113
    .4byte .L0800A4B2 @ case 114
    .4byte .L0800A4B2 @ case 115
    .4byte .L0800A4B2 @ case 116
    .4byte .L0800A4B2 @ case 117
    .4byte .L0800A4B2 @ case 118
    .4byte .L0800A4B2 @ case 119
    .4byte .L0800A4B2 @ case 120
    .4byte .L0800A4B2 @ case 121
    .4byte .L0800A4B2 @ case 122
    .4byte .L0800A4B2 @ case 123
    .4byte .L0800A4B2 @ case 124
    .4byte .L0800A4B2 @ case 125
    .4byte .L0800A4B2 @ case 126
    .4byte .L0800A4B2 @ case 127
    .4byte .L0800A3B0 @ case 128
    .4byte .L0800A4A6 @ case 129
.L0800A360:
    cmp r6, r7
    bgt .L0800A366
    b .L0800A4D8
.L0800A366:
    adds r7, r6, #0
    b .L0800A4D8
.L0800A36A:
    cmp r6, r7
    ble .L0800A370
    adds r7, r6, #0
.L0800A370:
    movs r6, #0
.L0800A372:
    adds r4, #1
    b .L0800A13E
.L0800A376:
    adds r6, #0xc
    b .L0800A372
.L0800A37A:
    ldrb r5, [r4]
    subs r5, #8
    b .L0800A372
.L0800A380:
    ldrb r0, [r4]
    cmp r0, #8
    bge .L0800A388
    b .L0800A13E
.L0800A388:
    cmp r0, #0xf
    ble .L0800A392
    cmp r0, #0x10
    beq .L0800A39A
    b .L0800A13E
.L0800A392:
    adds r5, r0, #0
    subs r5, #8
    adds r4, #1
    b .L0800A380
.L0800A39A:
    adds r4, #3
    b .L0800A380
.L0800A39E:
    cmp r5, sb
    beq .L0800A360
    b .L0800A372
.L0800A3A4:
    mov r2, r8
    cmp r2, #0
    beq .L0800A360
    b .L0800A372
.L0800A3AC:
    adds r6, #0x50
    b .L0800A372
.L0800A3B0:
    adds r4, #1
    ldrb r0, [r4]
    cmp r0, #0x25
    bls .L0800A3BA
    b .L0800A13E
.L0800A3BA:
    lsls r0, r0, #2
    ldr r1, .L0800A3C4 @ =.L0800A3C8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800A3C4: .4byte .L0800A3C8
.L0800A3C8: @ jump table
    .4byte .L0800A372 @ case 0
    .4byte .L0800A372 @ case 1
    .4byte .L0800A372 @ case 2
    .4byte .L0800A372 @ case 3
    .4byte .L0800A372 @ case 4
    .4byte .L0800A460 @ case 5
    .4byte .L0800A486 @ case 6
    .4byte .L0800A372 @ case 7
    .4byte .L0800A372 @ case 8
    .4byte .L0800A372 @ case 9
    .4byte .L0800A4A0 @ case 10
    .4byte .L0800A4A0 @ case 11
    .4byte .L0800A4A0 @ case 12
    .4byte .L0800A4A0 @ case 13
    .4byte .L0800A4A0 @ case 14
    .4byte .L0800A4A0 @ case 15
    .4byte .L0800A4A0 @ case 16
    .4byte .L0800A4A0 @ case 17
    .4byte .L0800A13E @ case 18
    .4byte .L0800A13E @ case 19
    .4byte .L0800A13E @ case 20
    .4byte .L0800A13E @ case 21
    .4byte .L0800A372 @ case 22
    .4byte .L0800A372 @ case 23
    .4byte .L0800A372 @ case 24
    .4byte .L0800A372 @ case 25
    .4byte .L0800A372 @ case 26
    .4byte .L0800A372 @ case 27
    .4byte .L0800A372 @ case 28
    .4byte .L0800A372 @ case 29
    .4byte .L0800A372 @ case 30
    .4byte .L0800A372 @ case 31
    .4byte .L0800A47C @ case 32
    .4byte .L0800A372 @ case 33
    .4byte .L0800A13E @ case 34
    .4byte .L0800A13E @ case 35
    .4byte .L0800A372 @ case 36
    .4byte .L0800A372 @ case 37
.L0800A460:
    ldr r0, .L0800A478 @ =0x08B909B8
    ldr r0, [r0]
    ldr r0, [r0, #0x3c]
    mov r1, sp
    bl func_08014590
    mov r0, r8
    lsls r1, r0, #0x18
    asrs r1, r1, #0x18
    mov r0, sp
    b .L0800A492
    .align 2, 0
.L0800A478: .4byte 0x08B909B8
.L0800A47C:
    bl GetTacticianName
    bl GetStringTextLen
    b .L0800A496
.L0800A486:
    ldr r0, .L0800A49C @ =0x08B909B8
    ldr r0, [r0]
    adds r0, #0x60
    mov r2, r8
    lsls r1, r2, #0x18
    asrs r1, r1, #0x18
.L0800A492:
    bl func_0800A11C
.L0800A496:
    adds r6, r6, r0
    b .L0800A372
    .align 2, 0
.L0800A49C: .4byte 0x08B909B8
.L0800A4A0:
    ldrb r5, [r4]
    subs r5, #0xa
    b .L0800A372
.L0800A4A6:
    ldrb r0, [r4, #1]
    cmp r0, #0x40
    bne .L0800A4B2
    adds r4, #2
    adds r6, #6
    b .L0800A13E
.L0800A4B2:
    cmp r5, sb
    beq .L0800A4C8
    cmp r5, #0xff
    beq .L0800A4C8
    mov r1, r8
    cmp r1, #0
    beq .L0800A4C2
    b .L0800A360
.L0800A4C2:
    movs r2, #1
    mov r8, r2
    mov sb, r5
.L0800A4C8:
    add r1, sp, #0x20
    adds r0, r4, #0
    bl GetCharTextLen
    adds r4, r0, #0
    ldr r0, [sp, #0x20]
    adds r6, r6, r0
    b .L0800A13E
.L0800A4D8:
    adds r0, r7, #0
    add sp, #0x24
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0800A11C

    thumb_func_start func_0800A4E8
func_0800A4E8: @ 0x0800A4E8
    movs r0, #0
    bx lr
    func_end func_0800A4E8

    thumb_func_start func_0800A4EC
func_0800A4EC: @ 0x0800A4EC
    bx lr
    func_end func_0800A4EC

    thumb_func_start func_0800A4F0
func_0800A4F0: @ 0x0800A4F0
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x20
    bl CheckTalkFlag
    cmp r0, #0
    bne .L0800A504
    adds r0, r4, #0
    bl EnableBgSync
.L0800A504:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0800A4F0

    thumb_func_start func_0800A50C
func_0800A50C: @ 0x0800A50C
    push {lr}
    ldr r0, .L0800A520 @ =0x08B90C80
    bl Proc_Find
    cmp r0, #0
    beq .L0800A51A
    movs r0, #1
.L0800A51A:
    pop {r1}
    bx r1
    .align 2, 0
.L0800A520: .4byte 0x08B90C80
    func_end func_0800A50C

    thumb_func_start func_0800A524
func_0800A524: @ 0x0800A524
    push {lr}
    ldr r0, .L0800A530 @ =0x08B90C80
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L0800A530: .4byte 0x08B90C80
    func_end func_0800A524

    thumb_func_start func_0800A534
func_0800A534: @ 0x0800A534
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r0, .L0800A56C @ =0x08B90C80
    movs r1, #0
    bl Proc_Start
    ldr r1, .L0800A570 @ =0x000003FF
    ands r1, r4
    lsls r1, r1, #5
    ldr r2, .L0800A574 @ =0x06010000
    adds r1, r1, r2
    str r1, [r0, #0x4c]
    str r5, [r0, #0x54]
    str r6, [r0, #0x58]
    ldr r0, .L0800A578 @ =0x08B90C68
    mov r1, r8
    bl Proc_StartBlocking
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800A56C: .4byte 0x08B90C80
.L0800A570: .4byte 0x000003FF
.L0800A574: .4byte 0x06010000
.L0800A578: .4byte 0x08B90C68
    func_end func_0800A534

    thumb_func_start func_0800A57C
func_0800A57C: @ 0x0800A57C
    adds r0, #0x64
    movs r1, #0
    strh r1, [r0]
    bx lr
    func_end func_0800A57C

    thumb_func_start func_0800A584
func_0800A584: @ 0x0800A584
    push {r4, r5, r6, r7, lr}
    adds r3, r0, #0
    ldr r6, [r3, #0x4c]
    movs r1, #0
    b .L0800A5E0
.L0800A58E:
    movs r2, #0
    lsls r0, r1, #2
    adds r5, r1, #0
    adds r5, #8
    adds r4, r0, r6
.L0800A598:
    lsls r0, r2, #2
    adds r1, r0, r4
    ldr r0, [r1, #4]
    str r0, [r1]
    ldr r0, [r1, #8]
    str r0, [r1, #4]
    ldr r0, [r1, #0xc]
    str r0, [r1, #8]
    ldr r0, [r1, #0x10]
    str r0, [r1, #0xc]
    ldr r0, [r1, #0x14]
    str r0, [r1, #0x10]
    ldr r0, [r1, #0x18]
    str r0, [r1, #0x14]
    ldr r0, [r1, #0x1c]
    str r0, [r1, #0x18]
    ldr r0, .L0800A5C8 @ =0x000002FF
    cmp r2, r0
    bgt .L0800A5CC
    movs r7, #0x80
    lsls r7, r7, #3
    adds r0, r1, r7
    ldr r0, [r0]
    b .L0800A5CE
    .align 2, 0
.L0800A5C8: .4byte 0x000002FF
.L0800A5CC:
    ldr r0, [r3, #0x58]
.L0800A5CE:
    str r0, [r1, #0x1c]
    movs r0, #0x80
    lsls r0, r0, #1
    adds r2, r2, r0
    movs r0, #0xc0
    lsls r0, r0, #2
    cmp r2, r0
    ble .L0800A598
    adds r1, r5, #0
.L0800A5E0:
    ldr r0, [r3, #0x54]
    lsls r0, r0, #3
    cmp r1, r0
    blt .L0800A58E
    adds r1, r3, #0
    adds r1, #0x64
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf
    ble .L0800A600
    adds r0, r3, #0
    bl Proc_Break
.L0800A600:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0800A584

    thumb_func_start func_0800A608
func_0800A608: @ 0x0800A608
    ldr r1, .L0800A614 @ =0x08B90C98
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0800A614: .4byte 0x08B90C98
    func_end func_0800A608

    thumb_func_start LoadUnitWrapper
LoadUnitWrapper: @ 0x0800A618
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r7, r1, #0
    bl UnitInfoRequiresNoMovement
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800A6F8
    movs r0, #6
    ldrb r1, [r5, #3]
    ands r0, r1
    cmp r0, #0
    beq .L0800A662
    movs r6, #0
    ldrb r0, [r5]
    movs r1, #0
    bl func_08017D70
    adds r4, r0, #0
    cmp r4, #0
    beq .L0800A66E
    ldrb r2, [r5, #3]
    lsls r0, r2, #0x1d
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq .L0800A658
    cmp r0, #1
    ble .L0800A65A
    cmp r0, #2
    bne .L0800A65A
    movs r6, #0x80
    b .L0800A65A
.L0800A658:
    movs r6, #0x40
.L0800A65A:
    adds r0, r4, #0
    adds r1, r6, #0
    bl UnitChangeFaction
.L0800A662:
    ldrb r0, [r5]
    bl GetUnitByPid
    adds r4, r0, #0
    cmp r4, #0
    bne .L0800A682
.L0800A66E:
    adds r0, r5, #0
    bl CreateUnit
    adds r4, r0, #0
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #0xf
    orrs r0, r1
    str r0, [r4, #0xc]
    b .L0800A6B4
.L0800A682:
    adds r0, r4, #0
    bl func_08079954
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0800A69E
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080178F4
    ldr r0, [r4, #0xc]
    ldr r1, .L0800A700 @ =0xFFFEFFFF
    ands r0, r1
    str r0, [r4, #0xc]
.L0800A69E:
    adds r0, r4, #0
    bl func_08079A14
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800A6B4
    ldr r0, [r4, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L0800A6F8
.L0800A6B4:
    ldrb r0, [r5, #4]
    strb r0, [r4, #0x10]
    ldrb r0, [r5, #5]
    strb r0, [r4, #0x11]
    ldr r1, .L0800A704 @ =gPlaySt
    movs r0, #0x40
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    beq .L0800A6E8
    ldrb r0, [r1, #0x1b]
    cmp r0, #3
    bne .L0800A6E8
    movs r0, #6
    ldrb r2, [r5, #3]
    ands r0, r2
    cmp r0, #4
    bne .L0800A6E8
    movs r0, #0xe
    ldrsb r0, [r1, r0]
    bl GetChapterInfo
    ldrb r1, [r0, #0x14]
    adds r0, r4, #0
    bl UnitApplyBonusLevels
.L0800A6E8:
    adds r0, r5, #0
    adds r1, r4, #0
    adds r2, r7, #0
    movs r3, #1
    bl func_0800A71C
    bl RefreshEntityMaps
.L0800A6F8:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800A700: .4byte 0xFFFEFFFF
.L0800A704: .4byte gPlaySt
    func_end LoadUnitWrapper

    thumb_func_start FakeLoadUnit
FakeLoadUnit: @ 0x0800A708
    push {lr}
    movs r2, #0
    movs r3, #0
    bl func_0800A71C
    bl RefreshEntityMaps
    pop {r0}
    bx r0
    func_end FakeLoadUnit

    thumb_func_start func_0800A71C
func_0800A71C: @ 0x0800A71C
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    cmp r6, #0
    beq .L0800A796
    cmp r3, #0
    beq .L0800A786
    cmp r7, #0
    beq .L0800A774
    ldr r5, [r6, #0xc]
    movs r0, #0x80
    ands r5, r0
    cmp r5, #0
    bne .L0800A774
    ldrb r1, [r4, #4]
    ldrb r2, [r4, #5]
    adds r0, r6, #0
    movs r3, #0
    bl TryMoveUnit
    bl RefreshUnitSprites
    ldr r0, .L0800A770 @ =0x0000FFFF
    adds r1, r0, #0
    ldrh r2, [r4, #4]
    ands r1, r2
    ldrh r2, [r4, #6]
    ands r0, r2
    cmp r1, r0
    beq .L0800A796
    ldrb r2, [r4, #6]
    ldrb r3, [r4, #7]
    str r5, [sp]
    adds r0, r7, #0
    adds r1, r6, #0
    bl TryMoveUnitDisplayed
    b .L0800A796
    .align 2, 0
.L0800A770: .4byte 0x0000FFFF
.L0800A774:
    ldrb r1, [r4, #6]
    ldrb r2, [r4, #7]
    adds r0, r6, #0
    movs r3, #1
    bl TryMoveUnit
    bl RefreshUnitSprites
    b .L0800A796
.L0800A786:
    ldrb r1, [r4, #6]
    ldrb r2, [r4, #7]
    adds r0, r6, #0
    movs r3, #1
    bl TryMoveUnit
    bl RefreshUnitSprites
.L0800A796:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0800A71C

    thumb_func_start func_0800A7A0
func_0800A7A0: @ 0x0800A7A0
    ldr r0, .L0800A7B4 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L0800A7B8
    movs r0, #0
    b .L0800A7BA
    .align 2, 0
.L0800A7B4: .4byte gpKeySt
.L0800A7B8:
    movs r0, #1
.L0800A7BA:
    bx lr
    func_end func_0800A7A0

    thumb_func_start func_0800A7BC
func_0800A7BC: @ 0x0800A7BC
    ldr r1, .L0800A7C8 @ =0x03000100
    movs r0, #0
    str r0, [r1]
    movs r0, #1
    bx lr
    .align 2, 0
.L0800A7C8: .4byte 0x03000100
    func_end func_0800A7BC

    thumb_func_start func_0800A7CC
func_0800A7CC: @ 0x0800A7CC
    ldr r0, .L0800A7DC @ =0x08B90C9C
    ldr r2, .L0800A7E0 @ =0x03000100
    ldr r1, [r2]
    adds r0, r1, r0
    ldrb r0, [r0]
    adds r1, #1
    str r1, [r2]
    bx lr
    .align 2, 0
.L0800A7DC: .4byte 0x08B90C9C
.L0800A7E0: .4byte 0x03000100
    func_end func_0800A7CC

    thumb_func_start func_0800A7E4
func_0800A7E4: @ 0x0800A7E4
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r6, r0, #0
    movs r4, #0
    ldr r5, [r6, #0x2c]
    b .L0800A906
.L0800A7F0:
    ldrb r0, [r5]
    subs r0, #1
    cmp r0, #0xb
    bls .L0800A7FA
    b .L0800A904
.L0800A7FA:
    lsls r0, r0, #2
    ldr r1, .L0800A804 @ =.L0800A808
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800A804: .4byte .L0800A808
.L0800A808: @ jump table
    .4byte .L0800A900 @ case 0
    .4byte .L0800A8C4 @ case 1
    .4byte .L0800A8D8 @ case 2
    .4byte .L0800A8EC @ case 3
    .4byte .L0800A8AC @ case 4
    .4byte .L0800A898 @ case 5
    .4byte .L0800A8A4 @ case 6
    .4byte .L0800A904 @ case 7
    .4byte .L0800A854 @ case 8
    .4byte .L0800A874 @ case 9
    .4byte .L0800A842 @ case 10
    .4byte .L0800A838 @ case 11
.L0800A838:
    ldr r1, [r5, #4]
    adds r0, r6, #0
    adds r0, #0x48
    strh r1, [r0]
    b .L0800A904
.L0800A842:
    ldr r0, .L0800A850 @ =0x0300010C
    ldr r0, [r0]
    mov r1, sp
    bl func_08014590
    lsls r0, r0, #3
    b .L0800A902
    .align 2, 0
.L0800A850: .4byte 0x0300010C
.L0800A854:
    adds r0, r6, #0
    adds r0, #0x44
    strb r4, [r0]
    ldr r0, .L0800A870 @ =0x03000108
    ldrh r0, [r0]
    bl GetItemIcon
    strh r0, [r6, #0x3e]
    adds r0, r6, #0
    adds r0, #0x42
    ldrb r1, [r0]
    movs r0, #0
    b .L0800A88A
    .align 2, 0
.L0800A870: .4byte 0x03000108
.L0800A874:
    adds r0, r6, #0
    adds r0, #0x44
    strb r4, [r0]
    ldr r0, .L0800A894 @ =0x03000108
    ldrh r0, [r0]
    adds r0, #0x70
    strh r0, [r6, #0x3e]
    adds r0, r6, #0
    adds r0, #0x42
    ldrb r1, [r0]
    movs r0, #1
.L0800A88A:
    bl ApplyIconPalette
    adds r4, #0x10
    b .L0800A904
    .align 2, 0
.L0800A894: .4byte 0x03000108
.L0800A898:
    ldr r0, [r5, #4]
    bl DecodeMsg
    bl GetStringTextLen
    b .L0800A902
.L0800A8A4:
    ldr r0, [r5, #4]
    bl GetStringTextLen
    b .L0800A902
.L0800A8AC:
    ldr r0, .L0800A8C0 @ =0x03000104
    ldr r0, [r0]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8C0: .4byte 0x03000104
.L0800A8C4:
    ldr r0, .L0800A8D4 @ =0x03000108
    ldrh r0, [r0]
    bl GetItemName
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8D4: .4byte 0x03000108
.L0800A8D8:
    ldr r0, .L0800A8E8 @ =0x03000108
    ldrh r0, [r0]
    movs r1, #1
    bl GetItemNameWithArticle
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8E8: .4byte 0x03000108
.L0800A8EC:
    ldr r0, .L0800A8FC @ =0x03000108
    ldrh r0, [r0]
    movs r1, #0
    bl GetItemNameWithArticle
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8FC: .4byte 0x03000108
.L0800A900:
    ldr r0, [r5, #4]
.L0800A902:
    adds r4, r4, r0
.L0800A904:
    adds r5, #8
.L0800A906:
    ldrb r0, [r5]
    cmp r0, #0
    beq .L0800A90E
    b .L0800A7F0
.L0800A90E:
    adds r0, r4, #0
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0800A7E4

    thumb_func_start func_0800A918
func_0800A918: @ 0x0800A918
    push {r4, r5, lr}
    sub sp, #0x18
    adds r5, r0, #0
    str r1, [sp, #0x10]
    str r2, [sp, #0x14]
    b .L0800AA02
.L0800A924:
    ldrb r0, [r5]
    subs r0, #1
    cmp r0, #0xa
    bhi .L0800AA00
    lsls r0, r0, #2
    ldr r1, .L0800A938 @ =.L0800A93C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800A938: .4byte .L0800A93C
.L0800A93C: @ jump table
    .4byte .L0800A9F8 @ case 0
    .4byte .L0800A9BC @ case 1
    .4byte .L0800A9CC @ case 2
    .4byte .L0800A9DC @ case 3
    .4byte .L0800A9A8 @ case 4
    .4byte .L0800A994 @ case 5
    .4byte .L0800A99E @ case 6
    .4byte .L0800A98A @ case 7
    .4byte .L0800A980 @ case 8
    .4byte .L0800A980 @ case 9
    .4byte .L0800A968 @ case 10
.L0800A968:
    ldr r0, .L0800A97C @ =0x0300010C
    ldr r0, [r0]
    mov r1, sp
    bl func_08014590
    add r0, sp, #0x10
    mov r1, sp
    bl Text_DrawString
    b .L0800AA00
    .align 2, 0
.L0800A97C: .4byte 0x0300010C
.L0800A980:
    add r0, sp, #0x10
    movs r1, #0x10
    bl Text_Skip
    b .L0800AA00
.L0800A98A:
    add r0, sp, #0x10
    ldr r1, [r5, #4]
    bl Text_SetColor
    b .L0800AA00
.L0800A994:
    add r4, sp, #0x10
    ldr r0, [r5, #4]
    bl DecodeMsg
    b .L0800A9E8
.L0800A99E:
    add r0, sp, #0x10
    ldr r1, [r5, #4]
    bl Text_DrawString
    b .L0800AA00
.L0800A9A8:
    add r4, sp, #0x10
    ldr r0, .L0800A9B8 @ =0x03000104
    ldr r0, [r0]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    b .L0800A9E8
    .align 2, 0
.L0800A9B8: .4byte 0x03000104
.L0800A9BC:
    add r4, sp, #0x10
    ldr r0, .L0800A9C8 @ =0x03000108
    ldrh r0, [r0]
    bl GetItemName
    b .L0800A9E8
    .align 2, 0
.L0800A9C8: .4byte 0x03000108
.L0800A9CC:
    add r4, sp, #0x10
    ldr r0, .L0800A9D8 @ =0x03000108
    ldrh r0, [r0]
    movs r1, #1
    b .L0800A9E4
    .align 2, 0
.L0800A9D8: .4byte 0x03000108
.L0800A9DC:
    add r4, sp, #0x10
    ldr r0, .L0800A9F4 @ =0x03000108
    ldrh r0, [r0]
    movs r1, #0
.L0800A9E4:
    bl GetItemNameWithArticle
.L0800A9E8:
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    b .L0800AA00
    .align 2, 0
.L0800A9F4: .4byte 0x03000108
.L0800A9F8:
    add r0, sp, #0x10
    ldr r1, [r5, #4]
    bl Text_Skip
.L0800AA00:
    adds r5, #8
.L0800AA02:
    ldrb r0, [r5]
    cmp r0, #0
    bne .L0800A924
    movs r0, #3
    bl EnableBgSync
    add sp, #0x18
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0800A918

    thumb_func_start func_0800AA18
func_0800AA18: @ 0x0800AA18
    adds r3, r0, #0
    adds r2, r3, #0
    adds r2, #0x34
    movs r0, #0xff
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    adds r1, r3, #0
    adds r1, #0x35
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x3b
    movs r1, #0
    strb r1, [r0]
    ldr r0, .L0800AA48 @ =0x0000FFFF
    strh r0, [r3, #0x3e]
    adds r0, r3, #0
    adds r0, #0x44
    strb r1, [r0]
    adds r0, #4
    strh r1, [r0]
    bx lr
    .align 2, 0
.L0800AA48: .4byte 0x0000FFFF
    func_end func_0800AA18

    thumb_func_start func_0800AA4C
func_0800AA4C: @ 0x0800AA4C
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L0800AAB4 @ =0x06002000
    adds r1, r1, r0
    movs r2, #0x80
    lsls r2, r2, #1
    movs r0, #0
    movs r3, #0
    bl InitTextFont
    bl ClearIcons
    bl LoadUiFrameGraphics
    ldr r3, .L0800AAB8 @ =gDispIo
    adds r1, r3, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    adds r1, #8
    movs r2, #0
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x45
    strb r2, [r0]
    adds r0, #1
    strb r2, [r0]
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
    adds r0, r4, #0
    bl func_0800A7E4
    adds r4, #0x46
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AAB4: .4byte 0x06002000
.L0800AAB8: .4byte gDispIo
    func_end func_0800AA4C

    thumb_func_start func_0800AABC
func_0800AABC: @ 0x0800AABC
    push {lr}
    adds r3, r0, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    beq .L0800AAD4
    movs r0, #0x80
    lsls r0, r0, #1
    movs r1, #0x80
    movs r2, #0x10
    bl StartBgmVolumeChange
.L0800AAD4:
    pop {r0}
    bx r0
    func_end func_0800AABC

    thumb_func_start func_0800AAD8
func_0800AAD8: @ 0x0800AAD8
    push {lr}
    adds r1, r0, #0
    adds r1, #0x48
    ldrh r0, [r1]
    cmp r0, #0
    beq .L0800AAF6
    ldr r0, .L0800AAFC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0800AAF6
    ldrh r0, [r1]
    bl m4aSongNumStart
.L0800AAF6:
    pop {r0}
    bx r0
    .align 2, 0
.L0800AAFC: .4byte gPlaySt
    func_end func_0800AAD8

    thumb_func_start func_0800AB00
func_0800AB00: @ 0x0800AB00
    push {lr}
    adds r3, r0, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    beq .L0800AB18
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x80
    movs r2, #0x10
    bl StartBgmVolumeChange
.L0800AB18:
    pop {r0}
    bx r0
    func_end func_0800AB00

    thumb_func_start func_0800AB1C
func_0800AB1C: @ 0x0800AB1C
    push {r4, lr}
    ldr r4, [r0, #0x2c]
    ldr r1, [r0, #0x30]
    ldr r2, .L0800AB34 @ =0x08B905B8
    adds r0, #0x4a
    ldrh r3, [r0]
    adds r0, r4, #0
    bl PutOamHiRam
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AB34: .4byte 0x08B905B8
    func_end func_0800AB1C

    thumb_func_start func_0800AB38
func_0800AB38: @ 0x0800AB38
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r5, r0, #0
    bl func_0800A7E4
    adds r2, r5, #0
    adds r2, #0x46
    strh r0, [r2]
    lsls r1, r0, #0x10
    lsrs r6, r1, #0x13
    movs r1, #7
    ands r1, r0
    cmp r1, #0
    beq .L0800AB5E
    adds r6, #1
.L0800AB5E:
    lsls r0, r6, #3
    ldrh r2, [r2]
    subs r0, r0, r2
    asrs r0, r0, #1
    mov sb, r0
    adds r2, r5, #0
    adds r2, #0x34
    movs r1, #0
    ldrsb r1, [r2, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0800AB82
    movs r0, #0x1e
    subs r0, r0, r6
    asrs r0, r0, #1
    subs r7, r0, #1
    b .L0800AB86
.L0800AB82:
    movs r7, #0
    ldrsb r7, [r2, r7]
.L0800AB86:
    adds r2, r5, #0
    adds r2, #0x35
    movs r1, #0
    ldrsb r1, [r2, r1]
    movs r0, #1
    rsbs r0, r0, #0
    movs r3, #8
    mov r8, r3
    cmp r1, r0
    beq .L0800AB9E
    adds r2, r1, #0
    mov r8, r2
.L0800AB9E:
    adds r4, r6, #2
    adds r0, r5, #0
    adds r0, #0x36
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    movs r3, #4
    bl func_08049CE4
    movs r0, #0x37
    adds r0, r0, r5
    mov sl, r0
    strb r7, [r0]
    adds r1, r5, #0
    adds r1, #0x38
    str r1, [sp, #0xc]
    mov r2, r8
    strb r2, [r1]
    adds r0, r5, #0
    adds r0, #0x39
    strb r4, [r0]
    adds r1, #2
    movs r0, #3
    strb r0, [r1]
    adds r4, r5, #0
    adds r4, #0x44
    ldrb r0, [r4]
    add r0, sb
    strb r0, [r4]
    add r0, sp, #4
    adds r1, r6, #0
    bl InitText
    adds r0, r5, #0
    adds r0, #0x3b
    ldrb r1, [r0]
    add r0, sp, #4
    bl Text_SetColor
    add r0, sp, #4
    mov r1, sb
    bl Text_SetCursor
    ldr r0, [r5, #0x2c]
    ldr r1, [sp, #4]
    ldr r2, [sp, #8]
    bl func_0800A918
    ldr r6, .L0800AC80 @ =0x0000FFFF
    ldrh r3, [r5, #0x3e]
    cmp r3, r6
    beq .L0800AC16
    ldrh r0, [r5, #0x3e]
    adds r1, r5, #0
    adds r1, #0x40
    ldrh r1, [r1]
    bl PutIconObjImg
.L0800AC16:
    mov r1, r8
    adds r1, #1
    lsls r1, r1, #5
    adds r1, #1
    adds r1, r1, r7
    lsls r1, r1, #1
    ldr r0, .L0800AC84 @ =gBg0Tm
    adds r1, r1, r0
    add r0, sp, #4
    bl PutText
    bl ResetText
    ldrh r0, [r5, #0x3e]
    cmp r0, r6
    beq .L0800AC6E
    ldr r0, .L0800AC88 @ =0x08B90D00
    adds r1, r5, #0
    bl Proc_Start
    mov r2, sl
    ldrb r1, [r2]
    adds r1, #1
    lsls r1, r1, #3
    ldrb r4, [r4]
    adds r1, r4, r1
    str r1, [r0, #0x2c]
    ldr r3, [sp, #0xc]
    ldrb r1, [r3]
    adds r1, #1
    lsls r1, r1, #3
    str r1, [r0, #0x30]
    adds r3, r5, #0
    adds r3, #0x40
    adds r2, r5, #0
    adds r2, #0x42
    movs r1, #0xf
    ldrb r2, [r2]
    ands r1, r2
    lsls r1, r1, #0xc
    ldrh r3, [r3]
    orrs r1, r3
    adds r0, #0x4a
    strh r1, [r0]
.L0800AC6E:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AC80: .4byte 0x0000FFFF
.L0800AC84: .4byte gBg0Tm
.L0800AC88: .4byte 0x08B90D00
    func_end func_0800AB38

    thumb_func_start func_0800AC8C
func_0800AC8C: @ 0x0800AC8C
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x30]
    cmp r0, #0
    bge .L0800ACAC
    ldr r0, .L0800ACA8 @ =gpKeySt
    ldr r0, [r0]
    ldrh r0, [r0, #8]
    cmp r0, #0
    beq .L0800ACBE
    adds r0, r1, #0
    bl Proc_Break
    b .L0800ACBE
    .align 2, 0
.L0800ACA8: .4byte gpKeySt
.L0800ACAC:
    cmp r0, #0
    beq .L0800ACBE
    subs r0, #1
    str r0, [r1, #0x30]
    cmp r0, #0
    bne .L0800ACBE
    adds r0, r1, #0
    bl Proc_Break
.L0800ACBE:
    pop {r0}
    bx r0
    func_end func_0800AC8C

    thumb_func_start func_0800ACC4
func_0800ACC4: @ 0x0800ACC4
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    adds r5, r2, #0
    adds r5, #0x38
    ldrb r1, [r5]
    lsls r0, r1, #5
    adds r7, r2, #0
    adds r7, #0x37
    ldrb r1, [r7]
    adds r0, r1, r0
    lsls r0, r0, #1
    ldr r1, .L0800AD14 @ =gBg0Tm
    adds r0, r0, r1
    adds r6, r2, #0
    adds r6, #0x39
    ldrb r1, [r6]
    adds r4, r2, #0
    adds r4, #0x3a
    ldrb r2, [r4]
    movs r3, #0
    bl TmFillRect_thm
    ldrb r5, [r5]
    lsls r0, r5, #5
    ldrb r7, [r7]
    adds r0, r7, r0
    lsls r0, r0, #1
    ldr r1, .L0800AD18 @ =gBg1Tm
    adds r0, r0, r1
    ldrb r1, [r6]
    ldrb r2, [r4]
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #3
    bl EnableBgSync
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AD14: .4byte gBg0Tm
.L0800AD18: .4byte gBg1Tm
    func_end func_0800ACC4

    thumb_func_start func_0800AD1C
func_0800AD1C: @ 0x0800AD1C
    ldr r1, .L0800AD24 @ =0x03000104
    str r0, [r1]
    bx lr
    .align 2, 0
.L0800AD24: .4byte 0x03000104
    func_end func_0800AD1C

    thumb_func_start func_0800AD28
func_0800AD28: @ 0x0800AD28
    ldr r1, .L0800AD30 @ =0x03000108
    strh r0, [r1]
    bx lr
    .align 2, 0
.L0800AD30: .4byte 0x03000108
    func_end func_0800AD28

    thumb_func_start func_0800AD34
func_0800AD34: @ 0x0800AD34
    ldr r1, .L0800AD3C @ =0x0300010C
    str r0, [r1]
    bx lr
    .align 2, 0
.L0800AD3C: .4byte 0x0300010C
    func_end func_0800AD34

    thumb_func_start func_0800AD40
func_0800AD40: @ 0x0800AD40
    push {r4, r5, lr}
    sub sp, #8
    movs r5, #0x90
    lsls r5, r5, #2
    movs r4, #4
    str r4, [sp]
    str r3, [sp, #4]
    adds r3, r5, #0
    bl func_0800AD5C
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0800AD40

    thumb_func_start func_0800AD5C
func_0800AD5C: @ 0x0800AD5C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    ldr r1, [sp, #0x18]
    cmp r1, #0
    beq .L0800AD78
    ldr r0, .L0800AD74 @ =0x08B90CA0
    bl Proc_StartBlocking
    b .L0800AD80
    .align 2, 0
.L0800AD74: .4byte 0x08B90CA0
.L0800AD78:
    ldr r0, .L0800ADA4 @ =0x08B90CA0
    movs r1, #3
    bl Proc_Start
.L0800AD80:
    adds r1, r0, #0
    str r4, [r1, #0x30]
    str r5, [r1, #0x2c]
    adds r0, r1, #0
    adds r0, #0x36
    strb r6, [r0]
    adds r0, #0xa
    strh r7, [r0]
    ldr r0, [sp, #0x14]
    adds r0, #0x10
    adds r2, r1, #0
    adds r2, #0x42
    strb r0, [r2]
    adds r0, r1, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0800ADA4: .4byte 0x08B90CA0
    func_end func_0800AD5C

    thumb_func_start func_0800ADA8
func_0800ADA8: @ 0x0800ADA8
    push {lr}
    ldr r0, .L0800ADB4 @ =0x08B90CA0
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L0800ADB4: .4byte 0x08B90CA0
    func_end func_0800ADA8

    thumb_func_start func_0800ADB8
func_0800ADB8: @ 0x0800ADB8
    push {lr}
    ldr r0, .L0800ADC8 @ =0x08B90D88
    ldr r1, .L0800ADCC @ =func_0800ADD0
    bl Proc_ForEach
    pop {r0}
    bx r0
    .align 2, 0
.L0800ADC8: .4byte 0x08B90D88
.L0800ADCC: .4byte func_0800ADD0
    func_end func_0800ADB8

    thumb_func_start func_0800ADD0
func_0800ADD0: @ 0x0800ADD0
    push {lr}
    bl EvtCmd_NoSkip
    pop {r0}
    bx r0
    func_end func_0800ADD0

    thumb_func_start Event_FadeOutOfBackgroundTalk
Event_FadeOutOfBackgroundTalk: @ 0x0800ADDC
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0800ADEC @ =0x08B90D08
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L0800ADEC: .4byte 0x08B90D08
    func_end Event_FadeOutOfBackgroundTalk

    thumb_func_start Event_FadeOutOfSkip
Event_FadeOutOfSkip: @ 0x0800ADF0
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0800AE00 @ =0x08B90D68
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L0800AE00: .4byte 0x08B90D68
    func_end Event_FadeOutOfSkip

    thumb_func_start func_0800AE04
func_0800AE04: @ 0x0800AE04
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0800AE14 @ =0x08B90D40
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L0800AE14: .4byte 0x08B90D40
    func_end func_0800AE04

    thumb_func_start func_0800AE18
func_0800AE18: @ 0x0800AE18
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0x14]
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0800AE30
    adds r0, r2, #0
    bl StartMidLockingFadeToBlack
.L0800AE30:
    pop {r0}
    bx r0
    func_end func_0800AE18

    thumb_func_start func_0800AE34
func_0800AE34: @ 0x0800AE34
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0x14]
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0800AE4C
    adds r0, r2, #0
    bl StartMidLockingFadeFromBlack
.L0800AE4C:
    pop {r0}
    bx r0
    func_end func_0800AE34

    thumb_func_start func_0800AE50
func_0800AE50: @ 0x0800AE50
    push {lr}
    bl func_0802E368
    bl UnlockBmDisplay
    bl ReleaseMus
    ldr r0, .L0800AE84 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0800AE88 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    movs r0, #2
    bl EnableBgSync
    bl ClearTalk
    pop {r0}
    bx r0
    .align 2, 0
.L0800AE84: .4byte gBg0Tm
.L0800AE88: .4byte gBg1Tm
    func_end func_0800AE50

    thumb_func_start func_0800AE8C
func_0800AE8C: @ 0x0800AE8C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x14]
    ldr r0, .L0800AEDC @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0800AEE0 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    movs r0, #2
    bl EnableBgSync
    bl ClearTalk
    bl func_0802E368
    adds r1, r5, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0800AEE4
    adds r0, r5, #0
    adds r0, #0x4d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0800AEEA
    movs r0, #0x20
    adds r1, r4, #0
    bl StartLockingFadeFromBlack
    b .L0800AEEA
    .align 2, 0
.L0800AEDC: .4byte gBg0Tm
.L0800AEE0: .4byte gBg1Tm
.L0800AEE4:
    adds r0, r4, #0
    bl StartMidLockingFadeFromBlack
.L0800AEEA:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0800AE8C

    thumb_func_start EventForceSlowTextSpeed
EventForceSlowTextSpeed: @ 0x0800AEF0
    adds r3, r0, #0
    adds r3, #0x68
    movs r1, #0
    ldrsb r1, [r3, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0800AF18
    ldr r2, .L0800AF1C @ =gPlaySt
    adds r2, #0x40
    ldrb r1, [r2]
    lsls r0, r1, #0x19
    lsrs r0, r0, #0x1e
    strb r0, [r3]
    movs r0, #0x61
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #0x20
    orrs r0, r1
    strb r0, [r2]
.L0800AF18:
    bx lr
    .align 2, 0
.L0800AF1C: .4byte gPlaySt
    func_end EventForceSlowTextSpeed

    thumb_func_start func_0800AF20
func_0800AF20: @ 0x0800AF20
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r3, #0x68
    ldrb r4, [r3]
    movs r1, #0
    ldrsb r1, [r3, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0800AF50
    ldr r2, .L0800AF58 @ =gPlaySt
    adds r2, #0x40
    movs r0, #3
    ands r1, r0
    lsls r1, r1, #5
    movs r0, #0x61
    rsbs r0, r0, #0
    ldrb r5, [r2]
    ands r0, r5
    orrs r0, r1
    strb r0, [r2]
    movs r0, #0xff
    orrs r0, r4
    strb r0, [r3]
.L0800AF50:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AF58: .4byte gPlaySt
    func_end func_0800AF20

    thumb_func_start StartEvent
StartEvent: @ 0x0800AF5C
    push {lr}
    movs r1, #3
    bl StartEventInternal
    pop {r1}
    bx r1
    func_end StartEvent

    thumb_func_start func_0800AF68
func_0800AF68: @ 0x0800AF68
    push {lr}
    bl StartEventInternal
    pop {r1}
    bx r1
    func_end func_0800AF68

    thumb_func_start StartEventInternal
StartEventInternal: @ 0x0800AF74
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r5, r1, #0
    ldr r6, .L0800AF9C @ =0x08B90D88
    adds r0, r6, #0
    bl Proc_Find
    adds r4, r0, #0
    cmp r4, #0
    beq .L0800AFA8
    ldr r2, .L0800AFA0 @ =0x03004170
    ldr r1, .L0800AFA4 @ =0x03004160
    ldrb r3, [r1]
    lsls r0, r3, #2
    adds r0, r0, r2
    str r7, [r0]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    b .L0800B0E8
    .align 2, 0
.L0800AF9C: .4byte 0x08B90D88
.L0800AFA0: .4byte 0x03004170
.L0800AFA4: .4byte 0x03004160
.L0800AFA8:
    ldr r0, .L0800AFC0 @ =0x03004160
    strb r4, [r0]
    ldr r0, .L0800AFC4 @ =0x03004170
    str r4, [r0]
    cmp r5, #7
    bgt .L0800AFC8
    adds r0, r6, #0
    adds r1, r5, #0
    bl Proc_Start
    b .L0800AFD0
    .align 2, 0
.L0800AFC0: .4byte 0x03004160
.L0800AFC4: .4byte 0x03004170
.L0800AFC8:
    adds r0, r6, #0
    adds r1, r5, #0
    bl Proc_StartBlocking
.L0800AFD0:
    adds r4, r0, #0
    str r7, [r4, #0x2c]
    str r7, [r4, #0x30]
    movs r1, #0
    str r1, [r4, #0x34]
    str r1, [r4, #0x38]
    str r1, [r4, #0x40]
    str r1, [r4, #0x3c]
    str r1, [r4, #0x48]
    adds r3, r4, #0
    adds r3, #0x5e
    movs r2, #0
    movs r0, #1
    strh r0, [r3]
    adds r0, r4, #0
    adds r0, #0x50
    strh r1, [r0]
    subs r0, #2
    strb r2, [r0]
    adds r0, #8
    strh r1, [r0]
    adds r2, r4, #0
    adds r2, #0x4c
    movs r0, #0xff
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    adds r1, r4, #0
    adds r1, #0x68
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    ldr r2, .L0800B034 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0xc0
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0xc0
    bne .L0800B038
    adds r0, r2, #0
    adds r0, #0x46
    ldrb r0, [r0]
    cmp r0, #0x10
    bne .L0800B038
    adds r1, r4, #0
    adds r1, #0x4d
    movs r0, #1
    b .L0800B03E
    .align 2, 0
.L0800B034: .4byte gDispIo
.L0800B038:
    adds r1, r4, #0
    adds r1, #0x4d
    movs r0, #0
.L0800B03E:
    strb r0, [r1]
    ldr r0, .L0800B060 @ =gMapOther
    ldr r0, [r0]
    movs r1, #0
    bl MapFill
    ldr r0, [r4, #0x30]
    ldr r0, [r0]
    subs r0, #0x86
    cmp r0, #7
    bhi .L0800B0E8
    lsls r0, r0, #2
    ldr r1, .L0800B064 @ =.L0800B068
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800B060: .4byte gMapOther
.L0800B064: .4byte .L0800B068
.L0800B068: @ jump table
    .4byte .L0800B096 @ case 0
    .4byte .L0800B0A4 @ case 1
    .4byte .L0800B0B2 @ case 2
    .4byte .L0800B0E8 @ case 3
    .4byte .L0800B088 @ case 4
    .4byte .L0800B0C0 @ case 5
    .4byte .L0800B0CE @ case 6
    .4byte .L0800B0DC @ case 7
.L0800B088:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_SilentSkip
    b .L0800B0E8
.L0800B096:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkip
    b .L0800B0E8
.L0800B0A4:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipTalk
    b .L0800B0E8
.L0800B0B2:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipTalkSlow
    b .L0800B0E8
.L0800B0C0:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipUnlessNewGamePlus
    b .L0800B0E8
.L0800B0CE:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipTalkSlowUnlessNewGamePlus
    b .L0800B0E8
.L0800B0DC:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipSlowUnlessNewGamePlus
.L0800B0E8:
    adds r0, r4, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end StartEventInternal

    thumb_func_start func_0800B0F0
func_0800B0F0: @ 0x0800B0F0
    push {r4, lr}
    adds r4, r0, #0
    bl LockGame
    movs r0, #0
    str r0, [r4, #0x40]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0800B0F0

    thumb_func_start func_0800B104
func_0800B104: @ 0x0800B104
    push {lr}
    bl ReleaseGame
    pop {r0}
    bx r0
    func_end func_0800B104

    thumb_func_start func_0800B110
func_0800B110: @ 0x0800B110
    push {lr}
    adds r0, #0x5e
    movs r1, #0x10
    ldrh r0, [r0]
    ands r1, r0
    cmp r1, #0
    bne .L0800B12C
    movs r0, #0
    bl SetTextFont
    bl InitSystemTextFont
    bl LoadUiFrameGraphics
.L0800B12C:
    pop {r0}
    bx r0
    func_end func_0800B110

    thumb_func_start func_0800B130
func_0800B130: @ 0x0800B130
    push {r4, lr}
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x5e
    ldr r0, .L0800B174 @ =0x0000FFFB
    ldrh r3, [r1]
    ands r0, r3
    strh r0, [r1]
    ldr r3, .L0800B178 @ =0x03004160
    ldrb r0, [r3]
    cmp r0, #0
    beq .L0800B16E
    subs r0, #1
    strb r0, [r3]
    movs r0, #0
    str r0, [r2, #0x40]
    ldr r1, .L0800B17C @ =0x03004170
    ldrb r4, [r3]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r2, #0x2c]
    ldrb r3, [r3]
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r2, #0x30]
    adds r0, r2, #0
    movs r1, #0
    bl Proc_Goto
.L0800B16E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B174: .4byte 0x0000FFFB
.L0800B178: .4byte 0x03004160
.L0800B17C: .4byte 0x03004170
    func_end func_0800B130

    thumb_func_start func_0800B180
func_0800B180: @ 0x0800B180
    push {lr}
    adds r0, #0x5e
    movs r1, #8
    ldrh r0, [r0]
    ands r1, r0
    cmp r1, #0
    beq .L0800B192
    bl func_0802E3B0
.L0800B192:
    pop {r0}
    bx r0
    func_end func_0800B180

    thumb_func_start func_0800B198
func_0800B198: @ 0x0800B198
    push {r4, lr}
    adds r4, r0, #0
    bl func_080143E0
    ldr r0, .L0800B1C0 @ =0x08B90B9C
    bl Proc_EndEach
    adds r4, #0x4c
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0800B1B8
    bl func_0806E144
.L0800B1B8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B1C0: .4byte 0x08B90B9C
    func_end func_0800B198

    thumb_func_start Event_IsSkipAllowed
Event_IsSkipAllowed: @ 0x0800B1C4
    push {lr}
    adds r0, #0x5e
    ldrh r1, [r0]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    bne .L0800B1E8
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L0800B1E8
    bl func_0804B1EC
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B1E8
    movs r0, #1
    b .L0800B1EA
.L0800B1E8:
    movs r0, #0
.L0800B1EA:
    pop {r1}
    bx r1
    func_end Event_IsSkipAllowed

    thumb_func_start Event_DarkenThenFunc
Event_DarkenThenFunc: @ 0x0800B1F0
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, .L0800B208 @ =0x08B90E28
    bl Proc_StartBlocking
    str r5, [r0, #0x50]
    str r4, [r0, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B208: .4byte 0x08B90E28
    func_end Event_DarkenThenFunc

    thumb_func_start EventDarkenThenFunc_OnInit
EventDarkenThenFunc_OnInit: @ 0x0800B20C
    push {r4, lr}
    adds r4, r0, #0
    bl EventDarkenThenFunc_StartDarken
    adds r4, #0x64
    movs r0, #0x40
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    func_end EventDarkenThenFunc_OnInit

    thumb_func_start EventDarkenThenFunc_OnLoop
EventDarkenThenFunc_OnLoop: @ 0x0800B220
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x50]
    bl EventDarkenThenFunc_StepDarken
    ldr r0, .L0800B248 @ =gDispIo
    adds r0, #0x46
    ldrb r0, [r0]
    cmp r0, #0x10
    bne .L0800B240
    ldr r0, [r4, #0x4c]
    bl _call_via_r5
    adds r0, r4, #0
    bl Proc_Break
.L0800B240:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B248: .4byte gDispIo
    func_end EventDarkenThenFunc_OnLoop

    thumb_func_start EventDarkenThenFunc_StartDarken
EventDarkenThenFunc_StartDarken: @ 0x0800B24C
    push {r4, r5, r6, lr}
    ldr r1, .L0800B2BC @ =gDispIo
    mov ip, r1
    mov r2, ip
    adds r2, #0x34
    movs r3, #0x20
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    adds r2, #1
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    adds r2, #2
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    subs r2, #1
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    mov r4, ip
    adds r4, #0x3c
    movs r1, #0xc0
    ldrb r2, [r4]
    orrs r1, r2
    strb r1, [r4]
    mov r1, ip
    adds r1, #0x44
    movs r5, #0
    strb r5, [r1]
    adds r1, #1
    strb r5, [r1]
    adds r1, #1
    strb r5, [r1]
    ldr r1, .L0800B2C0 @ =0x0000FFE0
    mov r6, ip
    ldrh r6, [r6, #0x3c]
    ands r1, r6
    movs r2, #0x1f
    orrs r1, r2
    mov r2, ip
    strh r1, [r2, #0x3c]
    ldrb r6, [r4]
    orrs r3, r6
    strb r3, [r4]
    adds r2, r0, #0
    adds r2, #0x64
    movs r1, #0x10
    strh r1, [r2]
    adds r0, #0x66
    strh r5, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B2BC: .4byte gDispIo
.L0800B2C0: .4byte 0x0000FFE0
    func_end EventDarkenThenFunc_StartDarken

    thumb_func_start EventDarkenThenFunc_StepDarken
EventDarkenThenFunc_StepDarken: @ 0x0800B2C4
    push {lr}
    adds r2, r0, #0
    ldr r0, .L0800B2DC @ =gDispIo
    adds r3, r0, #0
    adds r3, #0x46
    ldrb r0, [r3]
    cmp r0, #0x10
    bne .L0800B2E0
    adds r0, r2, #0
    bl Proc_End
    b .L0800B304
    .align 2, 0
.L0800B2DC: .4byte gDispIo
.L0800B2E0:
    adds r1, r2, #0
    adds r1, #0x66
    adds r0, r2, #0
    adds r0, #0x64
    ldrh r2, [r1]
    ldrh r0, [r0]
    adds r0, r2, r0
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xff
    ble .L0800B2FE
    movs r0, #0x80
    lsls r0, r0, #1
    strh r0, [r1]
.L0800B2FE:
    ldrh r1, [r1]
    lsrs r0, r1, #4
    strb r0, [r3]
.L0800B304:
    pop {r0}
    bx r0
    func_end EventDarkenThenFunc_StepDarken

    thumb_func_start Event_BeginSkip
Event_BeginSkip: @ 0x0800B308
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x50
    movs r0, #0
    strh r0, [r1]
    ldr r0, [r4, #0x3c]
    cmp r0, #0
    beq .L0800B31E
    bl _call_via_r0
.L0800B31E:
    adds r5, r4, #0
    adds r5, #0x5e
    movs r0, #4
    ldrh r1, [r5]
    orrs r0, r1
    strh r0, [r5]
    bl func_0800A4E8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B372
    bl func_080B5644
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0800B348
    adds r0, r4, #0
    bl func_0800B198
    subs r5, #0x11
    b .L0800B36E
.L0800B348:
    movs r0, #0x20
    ldrh r5, [r5]
    ands r0, r5
    adds r5, r4, #0
    adds r5, #0x4d
    cmp r0, #0
    bne .L0800B36E
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L0800B366
    adds r0, r4, #0
    bl func_0800B198
    b .L0800B36E
.L0800B366:
    ldr r0, .L0800B38C @ =func_0800B198
    adds r1, r4, #0
    bl Event_DarkenThenFunc
.L0800B36E:
    movs r0, #1
    strb r0, [r5]
.L0800B372:
    movs r0, #5
    bl Proc_BlockEachMarked
    ldr r1, [r4, #0x40]
    cmp r1, #0
    beq .L0800B384
    adds r0, r4, #0
    bl _call_via_r1
.L0800B384:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B38C: .4byte func_0800B198
    func_end Event_BeginSkip

    thumb_func_start Event_MainLoop
Event_MainLoop: @ 0x0800B390
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r0, .L0800B3D8 @ =0x08B969E4
    bl Proc_Find
    cmp r0, #0
    bne .L0800B494
    bl IsSubtitleHelpActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B494
    bl IsMapFadeActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B494
    adds r0, r4, #0
    bl Event_IsSkipAllowed
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0800B3E0
    ldr r0, .L0800B3DC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0800B3E0
    adds r0, r4, #0
    bl Event_BeginSkip
    b .L0800B494
    .align 2, 0
.L0800B3D8: .4byte 0x08B969E4
.L0800B3DC: .4byte gpKeySt
.L0800B3E0:
    adds r3, r4, #0
    adds r3, #0x50
    ldrh r2, [r3]
    cmp r2, #0
    beq .L0800B43C
    subs r5, r2, #1
    strh r5, [r3]
    adds r0, r4, #0
    adds r0, #0x4e
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0800B494
    ldr r0, .L0800B434 @ =gPlaySt
    adds r0, #0x40
    ldrb r0, [r0]
    lsrs r0, r0, #7
    cmp r0, #0
    bne .L0800B412
    ldr r0, .L0800B438 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L0800B494
.L0800B412:
    lsls r0, r5, #0x10
    cmp r0, #0
    beq .L0800B494
    subs r0, r2, #2
    strh r0, [r3]
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0800B494
    subs r0, r2, #3
    strh r0, [r3]
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0800B494
    subs r0, r2, #4
    strh r0, [r3]
    b .L0800B494
    .align 2, 0
.L0800B434: .4byte gPlaySt
.L0800B438: .4byte gpKeySt
.L0800B43C:
    ldr r1, [r4, #0x40]
    cmp r1, #0
    beq .L0800B44A
    adds r0, r4, #0
    bl _call_via_r1
    b .L0800B494
.L0800B44A:
    adds r6, r4, #0
    adds r6, #0x56
    ldr r7, .L0800B468 @ =gEventCmdTable
    adds r0, r7, #4
    mov r8, r0
.L0800B454:
    ldr r0, [r4, #0x30]
    ldrh r5, [r0]
    ldrh r0, [r6]
    cmp r0, #0
    beq .L0800B46C
    subs r0, #1
    strh r0, [r6]
    movs r2, #0
    b .L0800B47A
    .align 2, 0
.L0800B468: .4byte gEventCmdTable
.L0800B46C:
    lsls r0, r5, #3
    adds r0, r0, r7
    ldr r1, [r0]
    adds r0, r4, #0
    bl _call_via_r1
    adds r2, r0, #0
.L0800B47A:
    cmp r2, #1
    beq .L0800B454
    cmp r2, #3
    beq .L0800B494
    lsls r0, r5, #3
    add r0, r8
    ldr r1, [r0]
    lsls r1, r1, #2
    ldr r0, [r4, #0x30]
    adds r0, r0, r1
    str r0, [r4, #0x30]
    cmp r2, #2
    bne .L0800B454
.L0800B494:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end Event_MainLoop

    thumb_func_start Event_WaitForFaceEnd
Event_WaitForFaceEnd: @ 0x0800B4A0
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x5e
    movs r0, #0x10
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0800B4BC
    bl FaceExists
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B4C2
.L0800B4BC:
    adds r0, r4, #0
    bl Proc_Break
.L0800B4C2:
    pop {r4}
    pop {r0}
    bx r0
    func_end Event_WaitForFaceEnd
