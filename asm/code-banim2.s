    .include "asm_prelude.inc"

    thumb_func_start func_0806693C
func_0806693C: @ 0x0806693C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r6, r3, #0
    ldr r3, [sp, #0x1c]
    mov r8, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov ip, r1
    lsls r2, r2, #0x10
    adds r1, r0, #0
    lsrs r2, r2, #0x10
    cmp r2, #0
    beq .L080669A2
    movs r0, #0x20
    mov r3, ip
    subs r0, r0, r3
    lsls r0, r0, #0x10
    mov sb, r0
.L08066964:
    mov r3, ip
    subs r5, r2, #1
    cmp r3, #0
    beq .L08066996
    movs r2, #1
    rsbs r2, r2, #0
    ldr r7, .L080669B0 @ =0x00000FFF
    lsls r4, r6, #0xc
.L08066974:
    ldrh r0, [r1]
    cmp r6, r2
    beq .L08066982
    ands r0, r7
    adds r0, r0, r4
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08066982:
    cmp r8, r2
    beq .L0806698C
    add r0, r8
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L0806698C:
    strh r0, [r1]
    adds r1, #2
    subs r3, #1
    cmp r3, #0
    bne .L08066974
.L08066996:
    mov r2, sb
    lsrs r0, r2, #0xf
    adds r1, r1, r0
    adds r2, r5, #0
    cmp r2, #0
    bne .L08066964
.L080669A2:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080669B0: .4byte 0x00000FFF
    func_end func_0806693C

    thumb_func_start FillBGRect
FillBGRect: @ 0x080669B4
    push {r4, r5, r6, r7, lr}
    adds r5, r3, #0
    ldr r7, [sp, #0x14]
    lsls r1, r1, #0x10
    lsrs r4, r1, #0x10
    lsls r2, r2, #0x10
    adds r3, r0, #0
    lsrs r2, r2, #0x10
    cmp r2, #0
    beq .L080669EC
    movs r0, #0x20
    subs r0, r0, r4
    lsls r0, r0, #0x10
    lsrs r6, r0, #0xf
    lsls r5, r5, #0xc
.L080669D2:
    adds r0, r4, #0
    subs r2, #1
    cmp r0, #0
    beq .L080669E6
    adds r1, r7, r5
.L080669DC:
    strh r1, [r3]
    adds r3, #2
    subs r0, #1
    cmp r0, #0
    bne .L080669DC
.L080669E6:
    adds r3, r3, r6
    cmp r2, #0
    bne .L080669D2
.L080669EC:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end FillBGRect

    thumb_func_start func_080669F4
func_080669F4: @ 0x080669F4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r3, #0
    ldr r3, [sp, #0x18]
    mov ip, r3
    lsls r1, r1, #0x10
    lsrs r7, r1, #0x10
    lsls r2, r2, #0x10
    adds r1, r0, #0
    lsrs r2, r2, #0x10
    cmp r2, #0
    beq .L08066A50
    movs r0, #0x20
    subs r0, r0, r7
    lsls r0, r0, #0x10
    mov r8, r0
.L08066A16:
    adds r3, r7, #0
    subs r5, r2, #1
    cmp r3, #0
    beq .L08066A44
    movs r2, #1
    rsbs r2, r2, #0
    lsls r4, r6, #0xc
.L08066A24:
    ldrh r0, [r1]
    cmp r6, r2
    beq .L08066A30
    adds r0, r0, r4
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08066A30:
    cmp ip, r2
    beq .L08066A3A
    add r0, ip
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08066A3A:
    strh r0, [r1]
    adds r1, #2
    subs r3, #1
    cmp r3, #0
    bne .L08066A24
.L08066A44:
    mov r2, r8
    lsrs r0, r2, #0xf
    adds r1, r1, r0
    adds r2, r5, #0
    cmp r2, #0
    bne .L08066A16
.L08066A50:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080669F4

    thumb_func_start func_08066A5C
func_08066A5C: @ 0x08066A5C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov ip, r1
    lsls r2, r2, #0x10
    adds r3, r0, #0
    lsrs r2, r2, #0x10
    cmp r2, #0
    beq .L08066AB8
    movs r0, #0x20
    subs r0, r0, r1
    lsls r0, r0, #0x10
    mov r8, r0
    ldr r0, .L08066AC4 @ =0x08BDAF3C
    mov sb, r0
.L08066A80:
    mov r4, ip
    subs r2, #1
    cmp r4, #0
    beq .L08066AAE
    ldr r7, .L08066AC8 @ =0x00000FFF
    mov r6, sb
    movs r5, #0xf
.L08066A8E:
    ldrh r0, [r3]
    adds r1, r0, #0
    lsrs r0, r0, #0xc
    ands r0, r5
    subs r0, #6
    lsls r0, r0, #0x10
    ands r1, r7
    lsrs r0, r0, #0xf
    adds r0, r0, r6
    ldrh r0, [r0]
    adds r1, r0, r1
    strh r1, [r3]
    adds r3, #2
    subs r4, #1
    cmp r4, #0
    bne .L08066A8E
.L08066AAE:
    mov r1, r8
    lsrs r0, r1, #0xf
    adds r3, r3, r0
    cmp r2, #0
    bne .L08066A80
.L08066AB8:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08066AC4: .4byte 0x08BDAF3C
.L08066AC8: .4byte 0x00000FFF
    func_end func_08066A5C

    thumb_func_start EfxTmCpyBG
EfxTmCpyBG: @ 0x08066ACC
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r6, r1, #0
    ldr r4, [sp, #0x20]
    ldr r5, [sp, #0x24]
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    str r2, [sp]
    str r3, [sp, #4]
    str r4, [sp, #8]
    str r5, [sp, #0xc]
    adds r2, r6, #0
    movs r3, #0x20
    bl EfxTmCpyExt
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end EfxTmCpyBG

    thumb_func_start EfxTmCpyBgHFlip
EfxTmCpyBgHFlip: @ 0x08066AFC
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r6, r1, #0
    ldr r4, [sp, #0x20]
    ldr r5, [sp, #0x24]
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    str r2, [sp]
    str r3, [sp, #4]
    str r4, [sp, #8]
    str r5, [sp, #0xc]
    adds r2, r6, #0
    movs r3, #0x20
    bl EfxTmCpyExtHFlip
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end EfxTmCpyBgHFlip

    thumb_func_start EfxTmCpyExt
EfxTmCpyExt: @ 0x08066B2C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r2, #0
    ldr r0, [sp, #0x28]
    ldr r2, [sp, #0x2c]
    ldr r6, [sp, #0x30]
    mov r8, r6
    ldr r6, [sp, #0x34]
    mov ip, r6
    lsls r1, r1, #0x10
    lsrs r6, r1, #0x10
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    cmp r2, #0
    beq .L08066BC8
    lsls r0, r6, #0x10
    lsls r1, r3, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    asrs r1, r1, #0x10
    str r1, [sp, #4]
    subs r0, r6, r7
    lsls r0, r0, #0x10
    mov sl, r0
    subs r0, r3, r7
    lsls r0, r0, #0x10
    mov sb, r0
.L08066B74:
    adds r1, r7, #0
    subs r6, r2, #1
    cmp r1, #0
    beq .L08066BA6
    movs r2, #1
    rsbs r2, r2, #0
    mov r0, r8
    lsls r3, r0, #0xc
.L08066B84:
    ldrh r0, [r5]
    cmp r8, r2
    beq .L08066B90
    adds r0, r0, r3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08066B90:
    cmp ip, r2
    beq .L08066B9A
    add r0, ip
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08066B9A:
    strh r0, [r4]
    adds r5, #2
    adds r4, #2
    subs r1, #1
    cmp r1, #0
    bne .L08066B84
.L08066BA6:
    ldr r2, .L08066BD8 @ =0xFFFF0000
    asrs r1, r2, #0x10
    ldr r0, [sp]
    cmp r0, r1
    beq .L08066BB6
    mov r2, sl
    lsrs r0, r2, #0xf
    adds r5, r5, r0
.L08066BB6:
    ldr r0, [sp, #4]
    cmp r0, r1
    beq .L08066BC2
    mov r1, sb
    lsrs r0, r1, #0xf
    adds r4, r4, r0
.L08066BC2:
    adds r2, r6, #0
    cmp r2, #0
    bne .L08066B74
.L08066BC8:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08066BD8: .4byte 0xFFFF0000
    func_end EfxTmCpyExt

    thumb_func_start EfxTmCpyExtHFlip
EfxTmCpyExtHFlip: @ 0x08066BDC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r5, r0, #0
    adds r4, r2, #0
    ldr r0, [sp, #0x2c]
    ldr r2, [sp, #0x30]
    ldr r6, [sp, #0x34]
    mov sb, r6
    ldr r6, [sp, #0x38]
    mov r8, r6
    lsls r1, r1, #0x10
    lsrs r6, r1, #0x10
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov ip, r0
    lsls r2, r2, #0x10
    lsls r0, r0, #1
    subs r0, #2
    adds r4, r4, r0
    lsrs r2, r2, #0x10
    cmp r2, #0
    beq .L08066C8A
    lsls r0, r6, #0x10
    lsls r1, r3, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    asrs r1, r1, #0x10
    str r1, [sp, #8]
    mov r1, ip
    subs r0, r6, r1
    lsls r0, r0, #0x10
    str r0, [sp, #4]
    adds r0, r1, r3
    lsls r0, r0, #0x10
    mov sl, r0
.L08066C2E:
    mov r1, ip
    subs r7, r2, #1
    cmp r1, #0
    beq .L08066C68
    movs r2, #1
    rsbs r2, r2, #0
    mov r6, sb
    lsls r3, r6, #0xc
    movs r0, #0x80
    lsls r0, r0, #3
    adds r6, r0, #0
.L08066C44:
    ldrh r0, [r5]
    cmp sb, r2
    beq .L08066C50
    adds r0, r0, r3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08066C50:
    cmp r8, r2
    beq .L08066C5A
    add r0, r8
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08066C5A:
    eors r0, r6
    strh r0, [r4]
    adds r5, #2
    subs r4, #2
    subs r1, #1
    cmp r1, #0
    bne .L08066C44
.L08066C68:
    ldr r2, .L08066C9C @ =0xFFFF0000
    asrs r1, r2, #0x10
    ldr r6, [sp]
    cmp r6, r1
    beq .L08066C78
    ldr r2, [sp, #4]
    lsrs r0, r2, #0xf
    adds r5, r5, r0
.L08066C78:
    ldr r6, [sp, #8]
    cmp r6, r1
    beq .L08066C84
    mov r1, sl
    lsrs r0, r1, #0xf
    adds r4, r4, r0
.L08066C84:
    adds r2, r7, #0
    cmp r2, #0
    bne .L08066C2E
.L08066C8A:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08066C9C: .4byte 0xFFFF0000
    func_end EfxTmCpyExtHFlip

    thumb_func_start func_08066CA0
func_08066CA0: @ 0x08066CA0
    push {r4, r5, r6, r7, lr}
    adds r3, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    movs r0, #0
    mov ip, r0
    cmp r7, #0
    beq .L08066D70
    movs r2, #0
.L08066CB2:
    cmp r7, r2
    bgt .L08066CC8
    mov r1, ip
    cmp r1, #0
    bne .L08066CC4
    movs r0, #1
    mov ip, r0
    movs r0, #0xe
    b .L08066D28
.L08066CC4:
    movs r0, #0xff
    b .L08066D28
.L08066CC8:
    adds r0, r2, #1
    cmp r7, r0
    bne .L08066CE4
    movs r1, #1
    mov ip, r1
    cmp r6, r2
    bgt .L08066CDA
    movs r0, #0xd
    b .L08066D28
.L08066CDA:
    adds r1, r2, #4
    cmp r6, r0
    bne .L08066D6A
    movs r0, #0xc
    b .L08066D66
.L08066CE4:
    adds r4, r2, #2
    cmp r7, r4
    bne .L08066D08
    movs r1, #1
    mov ip, r1
    cmp r6, r2
    bgt .L08066CF6
    movs r0, #0xb
    b .L08066D28
.L08066CF6:
    cmp r6, r0
    bne .L08066CFE
    movs r0, #0xa
    b .L08066D28
.L08066CFE:
    adds r1, r2, #4
    cmp r6, r4
    bne .L08066D6A
    movs r0, #9
    b .L08066D66
.L08066D08:
    adds r5, r2, #3
    cmp r7, r5
    bne .L08066D3A
    movs r1, #1
    mov ip, r1
    cmp r6, r2
    bgt .L08066D1A
    movs r0, #8
    b .L08066D28
.L08066D1A:
    cmp r6, r0
    bne .L08066D22
    movs r0, #7
    b .L08066D28
.L08066D22:
    cmp r6, r4
    bne .L08066D30
    movs r0, #6
.L08066D28:
    strh r0, [r3]
    adds r3, #2
    adds r1, r2, #4
    b .L08066D6A
.L08066D30:
    adds r1, r2, #4
    cmp r6, r5
    bne .L08066D6A
    movs r0, #5
    b .L08066D66
.L08066D3A:
    adds r1, r2, #4
    cmp r7, r1
    blt .L08066D6A
    cmp r6, r2
    bgt .L08066D48
    movs r0, #4
    b .L08066D66
.L08066D48:
    cmp r6, r0
    bne .L08066D50
    movs r0, #3
    b .L08066D66
.L08066D50:
    cmp r6, r4
    bne .L08066D58
    movs r0, #2
    b .L08066D66
.L08066D58:
    cmp r6, r5
    bne .L08066D60
    movs r0, #1
    b .L08066D66
.L08066D60:
    cmp r6, r1
    blt .L08066D6A
    movs r0, #0
.L08066D66:
    strh r0, [r3]
    adds r3, #2
.L08066D6A:
    adds r2, r1, #0
    cmp r2, #0x28
    ble .L08066CB2
.L08066D70:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08066CA0

    thumb_func_start func_08066D78
func_08066D78: @ 0x08066D78
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    adds r3, r1, #0
    cmp r3, #5
    ble .L08066D86
    movs r0, #6
    b .L08066D8E
.L08066D86:
    ldr r0, .L08066DA8 @ =0x082E5ACC
    lsls r1, r3, #1
    adds r1, r1, r0
    ldrh r0, [r1]
.L08066D8E:
    strh r0, [r2]
    adds r2, #2
    movs r1, #0
    movs r7, #0x10
    ldr r6, .L08066DAC @ =0x082E5ADA
    subs r4, r3, #6
    movs r5, #7
.L08066D9C:
    adds r0, r1, #0
    adds r0, #0xe
    cmp r3, r0
    blt .L08066DB0
    strh r7, [r2]
    b .L08066DC4
    .align 2, 0
.L08066DA8: .4byte 0x082E5ACC
.L08066DAC: .4byte 0x082E5ADA
.L08066DB0:
    adds r0, r1, #6
    cmp r3, r0
    blt .L08066DC2
    subs r0, r4, r1
    lsls r0, r0, #1
    adds r0, r0, r6
    ldrh r0, [r0]
    strh r0, [r2]
    b .L08066DC4
.L08066DC2:
    strh r5, [r2]
.L08066DC4:
    adds r2, #2
    adds r1, #8
    cmp r1, #0x57
    ble .L08066D9C
    cmp r3, #0x62
    ble .L08066DD4
    movs r0, #0x17
    b .L08066DEE
.L08066DD4:
    cmp r3, #0x5d
    ble .L08066DEC
    ldr r0, .L08066DE8 @ =0x082E5AEC
    adds r1, r3, #0
    subs r1, #0x5e
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    b .L08066DEE
    .align 2, 0
.L08066DE8: .4byte 0x082E5AEC
.L08066DEC:
    movs r0, #0x11
.L08066DEE:
    strh r0, [r2]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08066D78

    thumb_func_start func_08066DF8
func_08066DF8: @ 0x08066DF8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    str r0, [sp, #4]
    str r1, [sp, #8]
    str r2, [sp, #0xc]
    ldr r0, [sp, #0x3c]
    ldr r1, [sp, #0x40]
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp, #0x10]
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    str r1, [sp, #0x14]
    cmp r3, #0
    beq .L08066EC8
    str r3, [sp, #0x18]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    mov sl, r0
    lsls r0, r1, #0x10
    asrs r7, r0, #0x10
.L08066E2E:
    ldr r1, [sp, #4]
    ldrh r0, [r1]
    movs r1, #0x1f
    ands r1, r0
    movs r6, #0xf8
    lsls r6, r6, #2
    ands r6, r0
    movs r2, #0xf8
    lsls r2, r2, #7
    mov sb, r2
    mov r3, sb
    ands r3, r0
    mov sb, r3
    ldr r2, [sp, #8]
    ldrh r0, [r2]
    movs r2, #0x1f
    ands r2, r0
    movs r4, #0xf8
    lsls r4, r4, #2
    ands r4, r0
    movs r3, #0xf8
    lsls r3, r3, #7
    mov r8, r3
    ands r3, r0
    mov r8, r3
    str r7, [sp]
    movs r0, #0
    mov r3, sl
    bl Interpolate
    adds r5, r0, #0
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    str r7, [sp]
    movs r0, #0
    adds r1, r6, #0
    adds r2, r4, #0
    mov r3, sl
    bl Interpolate
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    str r7, [sp]
    movs r0, #0
    mov r1, sb
    mov r2, r8
    mov r3, sl
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    movs r1, #0xf8
    lsls r1, r1, #7
    ands r0, r1
    movs r2, #0xf8
    lsls r2, r2, #2
    ands r4, r2
    orrs r0, r4
    movs r3, #0x1f
    ands r5, r3
    orrs r0, r5
    ldr r1, [sp, #0xc]
    strh r0, [r1]
    ldr r2, [sp, #4]
    adds r2, #2
    str r2, [sp, #4]
    ldr r3, [sp, #8]
    adds r3, #2
    str r3, [sp, #8]
    adds r1, #2
    str r1, [sp, #0xc]
    ldr r0, [sp, #0x18]
    subs r0, #1
    str r0, [sp, #0x18]
    cmp r0, #0
    bne .L08066E2E
.L08066EC8:
    ldr r1, [sp, #0x10]
    ldr r2, [sp, #0x14]
    cmp r1, r2
    beq .L08066ED4
    movs r0, #0
    b .L08066ED6
.L08066ED4:
    movs r0, #1
.L08066ED6:
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08066DF8

    thumb_func_start EfxPalBlackInOut
EfxPalBlackInOut: @ 0x08066EE8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov sb, r0
    adds r4, r1, #0
    adds r5, r2, #0
    lsls r0, r3, #5
    movs r1, #0x10
    bl Div
    adds r6, r0, #0
    adds r0, r4, r5
    cmp r4, r0
    bge .L08066F58
    mov r8, r0
    movs r0, #0x1f
    mov ip, r0
.L08066F0C:
    lsls r0, r4, #5
    adds r7, r4, #1
    mov r1, sb
    adds r5, r1, r0
    movs r4, #0xf
.L08066F16:
    ldrh r1, [r5]
    movs r2, #0x1f
    ands r2, r1
    lsls r1, r1, #0x10
    lsrs r3, r1, #0x15
    mov r0, ip
    ands r3, r0
    lsrs r1, r1, #0x1a
    ands r1, r0
    adds r0, r2, #0
    muls r0, r6, r0
    asrs r0, r0, #5
    subs r2, r2, r0
    adds r0, r3, #0
    muls r0, r6, r0
    asrs r0, r0, #5
    subs r3, r3, r0
    adds r0, r1, #0
    muls r0, r6, r0
    asrs r0, r0, #5
    subs r1, r1, r0
    lsls r3, r3, #5
    orrs r2, r3
    lsls r1, r1, #0xa
    orrs r2, r1
    strh r2, [r5]
    adds r5, #2
    subs r4, #1
    cmp r4, #0
    bge .L08066F16
    adds r4, r7, #0
    cmp r4, r8
    blt .L08066F0C
.L08066F58:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end EfxPalBlackInOut

    thumb_func_start EfxPalWhiteInOut
EfxPalWhiteInOut: @ 0x08066F64
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sl, r0
    adds r4, r1, #0
    adds r5, r2, #0
    lsls r0, r3, #5
    movs r1, #0x10
    bl Div
    adds r6, r0, #0
    adds r0, r4, r5
    cmp r4, r0
    bge .L08066FDA
    mov sb, r0
    movs r0, #0x1f
    mov r8, r0
    movs r7, #0x1f
.L08066F8C:
    lsls r0, r4, #5
    adds r4, #1
    mov ip, r4
    mov r1, sl
    adds r5, r1, r0
    movs r4, #0xf
.L08066F98:
    ldrh r1, [r5]
    adds r2, r7, #0
    ands r2, r1
    lsls r1, r1, #0x10
    lsrs r3, r1, #0x15
    mov r0, r8
    ands r3, r0
    lsrs r1, r1, #0x1a
    ands r1, r0
    subs r0, r7, r2
    muls r0, r6, r0
    asrs r0, r0, #5
    adds r2, r2, r0
    subs r0, r7, r3
    muls r0, r6, r0
    asrs r0, r0, #5
    adds r3, r3, r0
    subs r0, r7, r1
    muls r0, r6, r0
    asrs r0, r0, #5
    adds r1, r1, r0
    lsls r3, r3, #5
    orrs r2, r3
    lsls r1, r1, #0xa
    orrs r2, r1
    strh r2, [r5]
    adds r5, #2
    subs r4, #1
    cmp r4, #0
    bge .L08066F98
    mov r4, ip
    cmp r4, sb
    blt .L08066F8C
.L08066FDA:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end EfxPalWhiteInOut

    thumb_func_start func_08066FE8
func_08066FE8: @ 0x08066FE8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    str r0, [sp]
    adds r6, r1, #0
    mov r8, r2
    adds r0, r3, #0
    ldr r4, [sp, #0x2c]
    ldr r5, [sp, #0x30]
    lsls r0, r0, #5
    movs r1, #0x10
    bl Div
    mov sl, r0
    lsls r4, r4, #5
    adds r0, r4, #0
    movs r1, #0x10
    bl Div
    mov sb, r0
    lsls r5, r5, #5
    adds r0, r5, #0
    movs r1, #0x10
    bl Div
    mov ip, r0
    mov r1, r8
    adds r0, r6, r1
    cmp r6, r0
    bge .L0806708E
    str r0, [sp, #4]
    movs r0, #0x1f
    mov r8, r0
    movs r7, #0x1f
.L08067032:
    lsls r0, r6, #5
    adds r6, #1
    str r6, [sp, #8]
    ldr r1, [sp]
    adds r4, r1, r0
    movs r5, #0xf
.L0806703E:
    ldrh r1, [r4]
    adds r2, r7, #0
    ands r2, r1
    lsls r1, r1, #0x10
    lsrs r3, r1, #0x15
    mov r6, r8
    ands r3, r6
    lsrs r1, r1, #0x1a
    ands r1, r6
    subs r0, r7, r2
    mov r6, sl
    muls r6, r0, r6
    adds r0, r6, #0
    asrs r0, r0, #5
    adds r2, r2, r0
    subs r0, r7, r3
    mov r6, sb
    muls r6, r0, r6
    adds r0, r6, #0
    asrs r0, r0, #5
    adds r3, r3, r0
    subs r0, r7, r1
    mov r6, ip
    muls r6, r0, r6
    adds r0, r6, #0
    asrs r0, r0, #5
    adds r1, r1, r0
    lsls r3, r3, #5
    orrs r2, r3
    lsls r1, r1, #0xa
    orrs r2, r1
    strh r2, [r4]
    adds r4, #2
    subs r5, #1
    cmp r5, #0
    bge .L0806703E
    ldr r6, [sp, #8]
    ldr r0, [sp, #4]
    cmp r6, r0
    blt .L08067032
.L0806708E:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08066FE8

    thumb_func_start func_080670A0
func_080670A0: @ 0x080670A0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sb, r0
    adds r0, r1, r2
    cmp r1, r0
    bge .L08067106
    mov sl, r0
    movs r0, #0x1f
    mov r8, r0
.L080670B8:
    movs r5, #0
    lsls r6, r1, #5
    adds r7, r1, #1
.L080670BE:
    mov r1, sb
    adds r4, r1, r6
    lsls r0, r5, #1
    adds r4, r4, r0
    ldrh r2, [r4]
    movs r0, #0x1f
    ands r0, r2
    lsls r2, r2, #0x10
    lsrs r3, r2, #0x15
    mov r1, r8
    ands r3, r1
    lsrs r2, r2, #0x1a
    ands r2, r1
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #1
    adds r1, r1, r0
    adds r1, r1, r2
    adds r0, r1, #0
    movs r1, #0xa
    bl Div
    adds r1, r0, #0
    lsls r0, r1, #5
    orrs r0, r1
    lsls r1, r1, #0xa
    orrs r0, r1
    strh r0, [r4]
    adds r5, #1
    cmp r5, #0xf
    ble .L080670BE
    adds r1, r7, #0
    cmp r1, sl
    blt .L080670B8
.L08067106:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080670A0

    thumb_func_start func_08067114
func_08067114: @ 0x08067114
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r3, r1, #0
    adds r6, r2, #0
    movs r5, #0
    cmp r5, r6
    bhs .L0806714C
    movs r7, #0x1f
    movs r0, #0x1f
    mov ip, r0
.L08067128:
    ldrh r0, [r4]
    adds r4, #2
    adds r1, r0, #0
    mov r2, ip
    ands r1, r2
    lsrs r2, r0, #5
    ands r2, r7
    lsrs r0, r0, #0xa
    ands r0, r7
    strb r1, [r3]
    adds r3, #1
    strb r2, [r3]
    adds r3, #1
    strb r0, [r3]
    adds r3, #1
    adds r5, #1
    cmp r5, r6
    blo .L08067128
.L0806714C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08067114

    thumb_func_start func_08067154
func_08067154: @ 0x08067154
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r7, r2, #0
    movs r6, #0
    cmp r6, r7
    bhs .L080671A2
    movs r0, #0x1f
    mov r8, r0
.L0806716A:
    ldrh r2, [r5]
    adds r5, #2
    movs r1, #0x1f
    ands r1, r2
    lsrs r3, r2, #5
    mov r0, r8
    ands r3, r0
    lsrs r2, r2, #0xa
    ands r2, r0
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r1, r3, #1
    adds r1, r1, r3
    lsls r1, r1, #1
    adds r0, r0, r1
    adds r0, r0, r2
    movs r1, #0xa
    bl Div
    strb r0, [r4]
    adds r4, #1
    strb r0, [r4]
    adds r4, #1
    strb r0, [r4]
    adds r4, #1
    adds r6, #1
    cmp r6, r7
    blo .L0806716A
.L080671A2:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08067154

    thumb_func_start func_080671AC
func_080671AC: @ 0x080671AC
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r6, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    mov r8, r3
    ldr r0, [sp, #0x1c]
    mov sb, r0
    movs r7, #0
    cmp r7, r8
    bhs .L08067220
.L080671C6:
    movs r0, #0
    ldrsb r0, [r5, r0]
    movs r1, #0
    ldrsb r1, [r6, r1]
    adds r6, #1
    adds r5, #1
    subs r0, r0, r1
    lsls r0, r0, #0x18
    asrs r0, r0, #0x10
    mov r1, sb
    bl Div
    strh r0, [r4]
    adds r4, #2
    movs r0, #0
    ldrsb r0, [r5, r0]
    movs r1, #0
    ldrsb r1, [r6, r1]
    adds r6, #1
    adds r5, #1
    subs r0, r0, r1
    lsls r0, r0, #0x18
    asrs r0, r0, #0x10
    mov r1, sb
    bl Div
    strh r0, [r4]
    adds r4, #2
    movs r0, #0
    ldrsb r0, [r5, r0]
    movs r1, #0
    ldrsb r1, [r6, r1]
    adds r6, #1
    adds r5, #1
    subs r0, r0, r1
    lsls r0, r0, #0x18
    asrs r0, r0, #0x10
    mov r1, sb
    bl Div
    strh r0, [r4]
    adds r4, #2
    adds r7, #1
    cmp r7, r8
    blo .L080671C6
.L08067220:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080671AC

    thumb_func_start func_0806722C
func_0806722C: @ 0x0806722C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov ip, r0
    adds r6, r1, #0
    adds r5, r2, #0
    adds r4, r3, #0
    ldr r0, [sp, #0x1c]
    mov sb, r0
    ldr r7, [sp, #0x20]
    movs r0, #0
    mov r8, r0
    cmp r8, sb
    bhs .L080672B8
.L0806724A:
    ldr r0, [sp, #0x24]
    cmp r7, r0
    beq .L0806728E
    movs r0, #0
    ldrsh r1, [r4, r0]
    adds r4, #2
    movs r0, #0
    ldrsh r3, [r4, r0]
    adds r4, #2
    movs r0, #0
    ldrsh r2, [r4, r0]
    adds r4, #2
    adds r0, r1, #0
    muls r0, r7, r0
    asrs r1, r0, #8
    adds r0, r3, #0
    muls r0, r7, r0
    asrs r3, r0, #8
    adds r0, r2, #0
    muls r0, r7, r0
    asrs r2, r0, #8
    movs r0, #0
    ldrsb r0, [r6, r0]
    adds r1, r1, r0
    adds r6, #1
    movs r0, #0
    ldrsb r0, [r6, r0]
    adds r3, r3, r0
    adds r6, #1
    movs r0, #0
    ldrsb r0, [r6, r0]
    adds r2, r2, r0
    adds r6, #1
    b .L080672A0
.L0806728E:
    movs r1, #0
    ldrsb r1, [r5, r1]
    adds r5, #1
    movs r3, #0
    ldrsb r3, [r5, r3]
    adds r5, #1
    movs r2, #0
    ldrsb r2, [r5, r2]
    adds r5, #1
.L080672A0:
    lsls r0, r3, #5
    orrs r1, r0
    lsls r0, r2, #0xa
    orrs r1, r0
    mov r0, ip
    strh r1, [r0]
    movs r0, #2
    add ip, r0
    movs r0, #1
    add r8, r0
    cmp r8, sb
    blo .L0806724A
.L080672B8:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0806722C

    thumb_func_start EfxChapterMapFadeOUT
EfxChapterMapFadeOUT: @ 0x080672C4
    push {r4, lr}
    adds r4, r0, #0
    bl ApplyChapterMapPalettes
    ldr r0, .L080672E4 @ =gPal
    movs r1, #6
    movs r2, #0xa
    adds r3, r4, #0
    bl EfxPalBlackInOut
    bl EnablePalSync
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080672E4: .4byte gPal
    func_end EfxChapterMapFadeOUT

    thumb_func_start func_080672E8
func_080672E8: @ 0x080672E8
    push {r4, lr}
    adds r4, r0, #0
    bl RandNextB
    adds r4, #1
    adds r1, r4, #0
    bl DivRem
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080672E8

    thumb_func_start func_08067300
func_08067300: @ 0x08067300
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    adds r4, r3, #0
    ldr r7, [sp, #0x18]
    ldr r1, [sp, #0x20]
    ldr r0, .L08067348 @ =0x08BDAF50
    bl Proc_Start
    movs r2, #0
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    adds r3, r0, #0
    adds r3, #0x29
    strb r4, [r3]
    adds r3, #1
    strb r2, [r3]
    strh r5, [r0, #0x32]
    strh r6, [r0, #0x3a]
    strh r1, [r0, #0x34]
    strh r1, [r0, #0x3c]
    mov r2, r8
    str r2, [r0, #0x44]
    str r1, [r0, #0x48]
    str r7, [r0, #0x4c]
    ldr r1, [sp, #0x1c]
    str r1, [r0, #0x50]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08067348: .4byte 0x08BDAF50
    func_end func_08067300

    thumb_func_start func_0806734C
func_0806734C: @ 0x0806734C
    push {r4, r5, lr}
    sub sp, #0x48
    adds r2, r0, #0
    ldr r1, [r2, #0x44]
    movs r3, #0x2c
    ldrsh r0, [r2, r3]
    cmp r0, #0
    bne .L080673C4
    movs r4, #0x2e
    ldrsh r0, [r2, r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r3, [r0]
    movs r1, #0x3f
    ldrb r0, [r0, #3]
    ands r1, r0
    cmp r1, #0
    bne .L080673A2
    adds r0, r2, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    beq .L08067392
    cmp r0, #1
    bgt .L08067384
    cmp r0, #0
    beq .L0806738A
    b .L080673C4
.L08067384:
    cmp r0, #2
    beq .L08067398
    b .L080673C4
.L0806738A:
    adds r0, r2, #0
    bl Proc_Break
    b .L080673FE
.L08067392:
    strh r0, [r2, #0x2c]
    strh r1, [r2, #0x2e]
    b .L080673C4
.L08067398:
    movs r0, #1
    strh r0, [r2, #0x2c]
    ldrh r0, [r2, #0x2e]
    subs r0, #1
    b .L080673C2
.L080673A2:
    cmp r1, #4
    bne .L080673AA
    strh r3, [r2, #0x2c]
    b .L080673BE
.L080673AA:
    ldr r0, .L08067408 @ =0x0FFFFFFC
    ands r0, r3
    str r0, [r2, #0x48]
    lsrs r0, r3, #0x1a
    movs r1, #0x1c
    ands r0, r1
    movs r1, #3
    ands r3, r1
    adds r0, r0, r3
    strh r0, [r2, #0x2c]
.L080673BE:
    ldrh r0, [r2, #0x2e]
    adds r0, #1
.L080673C2:
    strh r0, [r2, #0x2e]
.L080673C4:
    ldrh r0, [r2, #0x2c]
    subs r0, #1
    strh r0, [r2, #0x2c]
    adds r0, r2, #0
    adds r0, #0x2a
    ldrb r3, [r0]
    cmp r3, #0
    bne .L080673FE
    ldr r0, [r2, #0x48]
    cmp r0, #0
    beq .L080673FE
    str r0, [sp, #0x3c]
    mov r1, sp
    ldr r0, [r2, #0x4c]
    strh r0, [r1, #8]
    ldr r0, [r2, #0x50]
    str r0, [sp, #0x1c]
    ldrh r5, [r2, #0x32]
    ldrh r4, [r2, #0x34]
    adds r0, r5, r4
    strh r0, [r1, #2]
    ldrh r5, [r2, #0x3a]
    ldrh r4, [r2, #0x3c]
    adds r0, r5, r4
    strh r0, [r1, #4]
    mov r0, sp
    strh r3, [r0, #0xc]
    bl AnimDisplay
.L080673FE:
    add sp, #0x48
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08067408: .4byte 0x0FFFFFFC
    func_end func_0806734C

    thumb_func_start func_0806740C
func_0806740C: @ 0x0806740C
    lsrs r1, r0, #0x1e
    movs r2, #0xc0
    lsls r2, r2, #8
    ands r2, r0
    ldr r0, .L08067424 @ =0x082E5AF8
    lsls r1, r1, #1
    lsrs r2, r2, #0xb
    adds r1, r1, r2
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    bx lr
    .align 2, 0
.L08067424: .4byte 0x082E5AF8
    func_end func_0806740C

    thumb_func_start func_08067428
func_08067428: @ 0x08067428
    lsrs r1, r0, #0x1e
    movs r2, #0xc0
    lsls r2, r2, #8
    ands r2, r0
    ldr r0, .L08067440 @ =0x082E5B18
    lsls r1, r1, #1
    lsrs r2, r2, #0xb
    adds r1, r1, r2
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    bx lr
    .align 2, 0
.L08067440: .4byte 0x082E5B18
    func_end func_08067428

    thumb_func_start func_08067444
func_08067444: @ 0x08067444
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    adds r6, r1, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    mov r8, r2
    adds r7, r0, #0
    ldr r1, .L080675BC @ =0xFFFF0000
    ldr r0, [sp, #4]
    ands r0, r1
    str r0, [sp, #4]
    lsls r3, r3, #0x10
    mov sb, r3
    mov r0, r8
    orrs r0, r3
    str r0, [sp]
    ldr r4, .L080675C0 @ =0xFFFF0004
    adds r1, r6, #0
    stm r1!, {r4}
    mov r0, sp
    movs r2, #1
    movs r3, #2
    bl ObjAffineSet
    adds r5, r6, #0
    adds r5, #0xc
    str r4, [r6, #0xc]
    adds r1, r6, #0
    adds r1, #0x10
    mov r0, sp
    movs r2, #1
    movs r3, #2
    bl ObjAffineSet
    ldrh r1, [r5, #4]
    rsbs r0, r1, #0
    strh r0, [r5, #4]
    ldrh r2, [r5, #6]
    rsbs r0, r2, #0
    strh r0, [r5, #6]
    adds r5, #0xc
    str r4, [r6, #0x18]
    adds r1, r6, #0
    adds r1, #0x1c
    mov r0, sp
    movs r2, #1
    movs r3, #2
    bl ObjAffineSet
    ldrh r3, [r5, #8]
    rsbs r0, r3, #0
    strh r0, [r5, #8]
    ldrh r1, [r5, #0xa]
    rsbs r0, r1, #0
    strh r0, [r5, #0xa]
    adds r5, #0xc
    str r4, [r6, #0x24]
    adds r1, r6, #0
    adds r1, #0x28
    mov r0, sp
    movs r2, #1
    movs r3, #2
    bl ObjAffineSet
    ldrh r2, [r5, #4]
    rsbs r0, r2, #0
    strh r0, [r5, #4]
    ldrh r3, [r5, #6]
    rsbs r0, r3, #0
    strh r0, [r5, #6]
    ldrh r1, [r5, #8]
    rsbs r0, r1, #0
    strh r0, [r5, #8]
    ldrh r2, [r5, #0xa]
    rsbs r0, r2, #0
    strh r0, [r5, #0xa]
    adds r6, #0x30
    ldr r0, [r7]
    cmp r0, #1
    beq .L0806759C
    mov r3, r8
    lsls r0, r3, #0x10
    asrs r0, r0, #0x10
    mov r8, r0
    mov r0, sb
    asrs r5, r0, #0x10
.L080674F6:
    ldr r2, [r7]
    movs r0, #0x80
    lsls r0, r0, #0x15
    ands r0, r2
    rsbs r0, r0, #0
    asrs r1, r0, #0x1f
    movs r0, #0x80
    lsls r0, r0, #0x12
    ands r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x16
    ands r0, r2
    cmp r0, #0
    beq .L08067518
    movs r3, #0x80
    lsls r3, r3, #0x13
    adds r1, r1, r3
.L08067518:
    ldr r0, .L080675C4 @ =0xC1FFFFFF
    ands r0, r2
    movs r3, #0x80
    lsls r3, r3, #1
    adds r1, r1, r3
    adds r0, r0, r1
    str r0, [r6]
    ldrh r0, [r7, #4]
    strh r0, [r6, #4]
    adds r0, r2, #0
    bl func_0806740C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x11
    lsls r1, r4, #8
    adds r0, r1, #0
    mov r1, r8
    bl Div
    subs r1, r4, r0
    movs r2, #6
    ldrsh r0, [r7, r2]
    subs r4, r0, r1
    lsls r1, r0, #8
    adds r0, r1, #0
    mov r1, r8
    bl Div
    adds r1, r0, #0
    movs r3, #6
    ldrsh r0, [r7, r3]
    subs r1, r0, r1
    subs r4, r4, r1
    strh r4, [r6, #6]
    ldr r0, [r7]
    bl func_08067428
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x11
    lsls r1, r4, #8
    adds r0, r1, #0
    adds r1, r5, #0
    bl Div
    subs r1, r4, r0
    movs r2, #8
    ldrsh r0, [r7, r2]
    subs r4, r0, r1
    lsls r1, r0, #8
    adds r0, r1, #0
    adds r1, r5, #0
    bl Div
    adds r1, r0, #0
    movs r3, #8
    ldrsh r0, [r7, r3]
    subs r1, r0, r1
    subs r4, r4, r1
    strh r4, [r6, #8]
    adds r6, #0xc
    adds r7, #0xc
    ldr r0, [r7]
    cmp r0, #1
    bne .L080674F6
.L0806759C:
    ldr r0, [r7]
    str r0, [r6]
    ldrh r0, [r7, #4]
    strh r0, [r6, #4]
    ldrh r0, [r7, #6]
    strh r0, [r6, #6]
    ldrh r0, [r7, #8]
    strh r0, [r6, #8]
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080675BC: .4byte 0xFFFF0000
.L080675C0: .4byte 0xFFFF0004
.L080675C4: .4byte 0xC1FFFFFF
    func_end func_08067444

    thumb_func_start func_080675C8
func_080675C8: @ 0x080675C8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r1, .L08067608 @ =gBmSt
    movs r0, #0x20
    ldrb r1, [r1, #4]
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, #0
    bne .L0806761E
    bl func_080676DC
    cmp r0, #0
    bne .L08067610
    bl func_080676D0
    adds r0, r5, #0
    bl func_08003510
    ldr r0, .L0806760C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0806761E
    lsls r0, r6, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStart
    b .L0806761E
    .align 2, 0
.L08067608: .4byte gBmSt
.L0806760C: .4byte gPlaySt
.L08067610:
    ldr r0, .L08067624 @ =0x08BDAF68
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x44]
    str r6, [r0, #0x48]
    strh r4, [r0, #0x2c]
.L0806761E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08067624: .4byte 0x08BDAF68
    func_end func_080675C8

    thumb_func_start func_08067628
func_08067628: @ 0x08067628
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #5
    bne .L08067642
    adds r0, r4, #0
    bl Proc_Break
    b .L08067670
.L08067642:
    bl func_080676DC
    cmp r0, #0
    bne .L08067670
    bl func_080676D0
    ldr r0, [r4, #0x44]
    bl func_08003510
    ldr r0, .L08067678 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0806766A
    ldr r0, [r4, #0x48]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStart
.L0806766A:
    adds r0, r4, #0
    bl Proc_Break
.L08067670:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08067678: .4byte gPlaySt
    func_end func_08067628

    thumb_func_start func_0806767C
func_0806767C: @ 0x0806767C
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStop
    pop {r0}
    bx r0
    func_end func_0806767C

    thumb_func_start func_0806768C
func_0806768C: @ 0x0806768C
    push {r4, lr}
    adds r4, r0, #0
    adds r2, r1, #0
    ldr r1, .L080676B0 @ =gBmSt
    movs r0, #0x20
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L080676AA
    adds r0, r2, #0
    bl SetBgmVolume
    adds r0, r4, #0
    bl OverrideBgm
.L080676AA:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080676B0: .4byte gBmSt
    func_end func_0806768C

    thumb_func_start func_080676B4
func_080676B4: @ 0x080676B4
    push {lr}
    ldr r0, .L080676C0 @ =0x03005B10
    bl m4aMPlayStop
    pop {r0}
    bx r0
    .align 2, 0
.L080676C0: .4byte 0x03005B10
    func_end func_080676B4

    thumb_func_start func_080676C4
func_080676C4: @ 0x080676C4
    ldr r1, .L080676CC @ =0x020200A4
    movs r0, #0
    str r0, [r1]
    bx lr
    .align 2, 0
.L080676CC: .4byte 0x020200A4
    func_end func_080676C4

    thumb_func_start func_080676D0
func_080676D0: @ 0x080676D0
    ldr r1, .L080676D8 @ =0x020200A4
    movs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L080676D8: .4byte 0x020200A4
    func_end func_080676D0

    thumb_func_start func_080676DC
func_080676DC: @ 0x080676DC
    ldr r0, .L080676E4 @ =0x020200A4
    ldr r0, [r0]
    bx lr
    .align 2, 0
.L080676E4: .4byte 0x020200A4
    func_end func_080676DC

    thumb_func_start func_080676E8
func_080676E8: @ 0x080676E8
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    ldr r1, .L08067714 @ =gBmSt
    movs r0, #0x20
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08067790
    cmp r2, #0
    beq .L08067760
    cmp r6, #0x77
    bgt .L08067718
    adds r0, r6, #0
    muls r0, r6, r0
    movs r1, #0x78
    bl Div
    adds r5, r0, #0
    subs r5, #0x78
    b .L0806772C
    .align 2, 0
.L08067714: .4byte gBmSt
.L08067718:
    movs r0, #0xf0
    subs r0, r0, r6
    adds r1, r0, #0
    muls r1, r0, r1
    adds r0, r1, #0
    movs r1, #0x78
    bl Div
    movs r1, #0x78
    subs r5, r1, r0
.L0806772C:
    ldr r2, .L08067754 @ =0x0869D668
    ldr r0, .L08067758 @ =0x0869D6E0
    lsls r1, r4, #3
    adds r1, r1, r0
    ldrh r3, [r1, #4]
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r4, [r0]
    adds r0, r4, #0
    bl m4aMPlayImmInit
    ldr r1, .L0806775C @ =0x0000FFFF
    lsls r2, r5, #0x18
    asrs r2, r2, #0x18
    adds r0, r4, #0
    bl m4aMPlayPanpotControl
    b .L08067790
    .align 2, 0
.L08067754: .4byte 0x0869D668
.L08067758: .4byte 0x0869D6E0
.L0806775C: .4byte 0x0000FFFF
.L08067760:
    ldr r2, .L08067798 @ =0x0869D668
    ldr r0, .L0806779C @ =0x0869D6E0
    lsls r1, r4, #3
    adds r1, r1, r0
    ldrh r3, [r1, #4]
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r4, [r0]
    adds r0, r4, #0
    bl m4aMPlayImmInit
    ldr r5, .L080677A0 @ =0x0000FFFF
    adds r0, r6, #0
    bl func_08014D58
    adds r2, r0, #0
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r0, r4, #0
    adds r1, r5, #0
    bl m4aMPlayPanpotControl
.L08067790:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08067798: .4byte 0x0869D668
.L0806779C: .4byte 0x0869D6E0
.L080677A0: .4byte 0x0000FFFF
    func_end func_080676E8

    thumb_func_start EfxPlaySEwithCmdCtrl
EfxPlaySEwithCmdCtrl: @ 0x080677A4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    mov r8, r0
    mov sb, r1
    bl GetAnimAnotherSide
    adds r6, r0, #0
    mov r0, r8
    bl GetAISLayerId
    cmp r0, #1
    bne .L080677C4
    b .L08067B10
.L080677C4:
    mov r0, r8
    bl GetAnimPosition
    adds r5, r0, #0
    cmp r5, #0
    bne .L080677DC
    ldr r0, .L080677D8 @ =0x0203E0D8
    movs r1, #0
    ldrsh r4, [r0, r1]
    b .L080677E2
    .align 2, 0
.L080677D8: .4byte 0x0203E0D8
.L080677DC:
    ldr r0, .L0806780C @ =0x0203E0D8
    movs r3, #2
    ldrsh r4, [r0, r3]
.L080677E2:
    lsls r0, r4, #0x10
    lsrs r0, r0, #0x10
    bl func_08067B20
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    cmp r4, #0x14
    bne .L080677FE
    mov r0, r8
    bl func_08067C6C
    cmp r0, #0
    bne .L080677FE
    movs r7, #2
.L080677FE:
    cmp r5, #0
    bne .L08067814
    ldr r0, .L08067810 @ =0x0203E0DC
    movs r1, #0
    ldrsh r0, [r0, r1]
    b .L0806781A
    .align 2, 0
.L0806780C: .4byte 0x0203E0D8
.L08067810: .4byte 0x0203E0DC
.L08067814:
    ldr r0, .L08067858 @ =0x0203E0DC
    movs r3, #2
    ldrsh r0, [r0, r3]
.L0806781A:
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_08067C9C
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    ldr r4, .L0806785C @ =0x0000FFFF
    mov r0, r8
    str r2, [sp]
    bl func_0806814C
    mov r1, r8
    ldrh r1, [r1, #2]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    mov r8, r0
    mov r0, sb
    subs r0, #0x19
    ldr r2, [sp]
    cmp r0, #0x37
    bls .L0806784C
    b .L08067AEA
.L0806784C:
    lsls r0, r0, #2
    ldr r1, .L08067860 @ =.L08067864
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08067858: .4byte 0x0203E0DC
.L0806785C: .4byte 0x0000FFFF
.L08067860: .4byte .L08067864
.L08067864: @ jump table
    .4byte .L08067944 @ case 0
    .4byte .L08067AEA @ case 1
    .4byte .L08067A1E @ case 2
    .4byte .L08067948 @ case 3
    .4byte .L08067950 @ case 4
    .4byte .L08067958 @ case 5
    .4byte .L08067960 @ case 6
    .4byte .L08067980 @ case 7
    .4byte .L080679A0 @ case 8
    .4byte .L080679E4 @ case 9
    .4byte .L080679E8 @ case 10
    .4byte .L080679EC @ case 11
    .4byte .L080679F0 @ case 12
    .4byte .L08067AEA @ case 13
    .4byte .L08067AEA @ case 14
    .4byte .L080679F8 @ case 15
    .4byte .L080679FC @ case 16
    .4byte .L08067A04 @ case 17
    .4byte .L08067A0A @ case 18
    .4byte .L08067AEA @ case 19
    .4byte .L08067AEA @ case 20
    .4byte .L08067AEA @ case 21
    .4byte .L08067A14 @ case 22
    .4byte .L08067AEA @ case 23
    .4byte .L08067AEA @ case 24
    .4byte .L08067AEA @ case 25
    .4byte .L08067A1A @ case 26
    .4byte .L08067A1E @ case 27
    .4byte .L08067A38 @ case 28
    .4byte .L08067A48 @ case 29
    .4byte .L08067A4C @ case 30
    .4byte .L08067A50 @ case 31
    .4byte .L08067AEA @ case 32
    .4byte .L08067A54 @ case 33
    .4byte .L08067A5C @ case 34
    .4byte .L08067A62 @ case 35
    .4byte .L08067AEA @ case 36
    .4byte .L08067A74 @ case 37
    .4byte .L08067A78 @ case 38
    .4byte .L08067A7E @ case 39
    .4byte .L08067A88 @ case 40
    .4byte .L08067A8C @ case 41
    .4byte .L08067A90 @ case 42
    .4byte .L08067A98 @ case 43
    .4byte .L08067A9E @ case 44
    .4byte .L08067AA8 @ case 45
    .4byte .L08067AEA @ case 46
    .4byte .L08067AB0 @ case 47
    .4byte .L08067AB4 @ case 48
    .4byte .L08067ABC @ case 49
    .4byte .L08067AC2 @ case 50
    .4byte .L08067ACC @ case 51
    .4byte .L08067AD4 @ case 52
    .4byte .L08067AEA @ case 53
    .4byte .L08067ADC @ case 54
    .4byte .L08067AE4 @ case 55
.L08067944:
    movs r4, #0xd1
    b .L08067AEC
.L08067948:
    ldr r1, .L0806794C @ =0x08BDB344
    b .L08067A20
    .align 2, 0
.L0806794C: .4byte 0x08BDB344
.L08067950:
    ldr r1, .L08067954 @ =0x08BDB360
    b .L08067A20
    .align 2, 0
.L08067954: .4byte 0x08BDB360
.L08067958:
    ldr r1, .L0806795C @ =0x08BDB37C
    b .L08067A20
    .align 2, 0
.L0806795C: .4byte 0x08BDB37C
.L08067960:
    adds r0, r6, #0
    bl func_08067D78
    adds r0, r6, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    beq .L080679C8
    cmp r0, #1
    bgt .L080679BE
    cmp r0, #0
    bne .L080679CE
    movs r4, #0xd2
    b .L080679CE
.L08067980:
    adds r0, r6, #0
    bl func_08067D78
    adds r0, r6, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    beq .L080679C8
    cmp r0, #1
    bgt .L080679BE
    cmp r0, #0
    bne .L080679CE
    movs r4, #0xd3
    b .L080679CE
.L080679A0:
    adds r0, r6, #0
    bl func_08067D78
    adds r0, r6, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    beq .L080679C8
    cmp r0, #1
    bgt .L080679BE
    cmp r0, #0
    beq .L080679C4
    b .L080679CE
.L080679BE:
    cmp r0, #2
    beq .L080679CC
    b .L080679CE
.L080679C4:
    movs r4, #0xd4
    b .L080679CE
.L080679C8:
    movs r4, #0xd5
    b .L080679CE
.L080679CC:
    ldr r4, .L080679E0 @ =0x000002CE
.L080679CE:
    adds r0, r6, #0
    bl func_0806814C
    ldrh r6, [r6, #2]
    adds r0, r6, r0
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    b .L08067AEC
    .align 2, 0
.L080679E0: .4byte 0x000002CE
.L080679E4:
    movs r4, #0xc9
    b .L08067AEC
.L080679E8:
    movs r4, #0xc8
    b .L08067AEC
.L080679EC:
    movs r4, #0xca
    b .L08067AEC
.L080679F0:
    ldr r4, .L080679F4 @ =0x00000263
    b .L08067A3A
    .align 2, 0
.L080679F4: .4byte 0x00000263
.L080679F8:
    movs r4, #0xf6
    b .L08067AEC
.L080679FC:
    ldr r4, .L08067A00 @ =0x00000141
    b .L08067AEC
    .align 2, 0
.L08067A00: .4byte 0x00000141
.L08067A04:
    movs r4, #0xa1
    lsls r4, r4, #1
    b .L08067AEC
.L08067A0A:
    ldr r4, .L08067A10 @ =0x00000267
    b .L08067A3A
    .align 2, 0
.L08067A10: .4byte 0x00000267
.L08067A14:
    movs r4, #0xbe
    lsls r4, r4, #2
    b .L08067AEC
.L08067A1A:
    movs r4, #0xe7
    b .L08067AEC
.L08067A1E:
    ldr r1, .L08067A34 @ =0x08BDB328
.L08067A20:
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r1, [r0]
    lsls r0, r2, #1
    adds r0, r0, r5
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r4, [r0]
    b .L08067AEC
    .align 2, 0
.L08067A34: .4byte 0x08BDB328
.L08067A38:
    ldr r4, .L08067A44 @ =0x00000265
.L08067A3A:
    cmp r5, #0
    bne .L08067AEC
    subs r4, #1
    b .L08067AEC
    .align 2, 0
.L08067A44: .4byte 0x00000265
.L08067A48:
    movs r4, #0xce
    b .L08067AEC
.L08067A4C:
    movs r4, #0xcf
    b .L08067AEC
.L08067A50:
    movs r4, #0xcb
    b .L08067AEC
.L08067A54:
    ldr r4, .L08067A58 @ =0x000002D3
    b .L08067AEC
    .align 2, 0
.L08067A58: .4byte 0x000002D3
.L08067A5C:
    movs r4, #0xb5
    lsls r4, r4, #2
    b .L08067AEC
.L08067A62:
    ldr r4, .L08067A70 @ =0x00000263
    cmp r5, #0
    bne .L08067A6A
    subs r4, #1
.L08067A6A:
    movs r1, #0x80
    mov r8, r1
    b .L08067AEC
    .align 2, 0
.L08067A70: .4byte 0x00000263
.L08067A74:
    movs r4, #0xf1
    b .L08067AEC
.L08067A78:
    movs r4, #0x9b
    lsls r4, r4, #1
    b .L08067AEC
.L08067A7E:
    ldr r4, .L08067A84 @ =0x00000117
    b .L08067AEC
    .align 2, 0
.L08067A84: .4byte 0x00000117
.L08067A88:
    movs r4, #0xeb
    b .L08067AEC
.L08067A8C:
    movs r4, #0xea
    b .L08067AEC
.L08067A90:
    ldr r4, .L08067A94 @ =0x000002CF
    b .L08067AEC
    .align 2, 0
.L08067A94: .4byte 0x000002CF
.L08067A98:
    movs r4, #0xb4
    lsls r4, r4, #2
    b .L08067AEC
.L08067A9E:
    ldr r4, .L08067AA4 @ =0x000002D1
    b .L08067AEC
    .align 2, 0
.L08067AA4: .4byte 0x000002D1
.L08067AA8:
    ldr r4, .L08067AAC @ =0x000002D2
    b .L08067AEC
    .align 2, 0
.L08067AAC: .4byte 0x000002D2
.L08067AB0:
    movs r4, #0xed
    b .L08067AEC
.L08067AB4:
    ldr r4, .L08067AB8 @ =0x00000135
    b .L08067AEC
    .align 2, 0
.L08067AB8: .4byte 0x00000135
.L08067ABC:
    movs r4, #0x9a
    lsls r4, r4, #1
    b .L08067AEC
.L08067AC2:
    ldr r4, .L08067AC8 @ =0x000002DD
    b .L08067AEC
    .align 2, 0
.L08067AC8: .4byte 0x000002DD
.L08067ACC:
    ldr r4, .L08067AD0 @ =0x000002DE
    b .L08067AEC
    .align 2, 0
.L08067AD0: .4byte 0x000002DE
.L08067AD4:
    ldr r4, .L08067AD8 @ =0x000002DF
    b .L08067AEC
    .align 2, 0
.L08067AD8: .4byte 0x000002DF
.L08067ADC:
    ldr r4, .L08067AE0 @ =0x000002F7
    b .L08067AEC
    .align 2, 0
.L08067AE0: .4byte 0x000002F7
.L08067AE4:
    movs r4, #0xba
    lsls r4, r4, #2
    b .L08067AEC
.L08067AEA:
    movs r4, #0
.L08067AEC:
    lsls r0, r4, #0x10
    asrs r4, r0, #0x10
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    beq .L08067B10
    mov r1, r8
    adds r0, r4, #0
    str r3, [sp, #4]
    bl func_080675C8
    ldr r3, [sp, #4]
    lsls r1, r3, #0x10
    asrs r1, r1, #0x10
    movs r2, #1
    adds r0, r4, #0
    bl func_080676E8
.L08067B10:
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end EfxPlaySEwithCmdCtrl

    thumb_func_start func_08067B20
func_08067B20: @ 0x08067B20
    push {r4, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    bl func_080554F0
    cmp r0, #1
    bne .L08067B32
.L08067B2E:
    movs r0, #0
    b .L08067C66
.L08067B32:
    cmp r4, #0x40
    bls .L08067B38
    b .L08067C64
.L08067B38:
    lsls r0, r4, #2
    ldr r1, .L08067B44 @ =.L08067B48
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08067B44: .4byte .L08067B48
.L08067B48: @ jump table
    .4byte .L08067C64 @ case 0
    .4byte .L08067B2E @ case 1
    .4byte .L08067B2E @ case 2
    .4byte .L08067B2E @ case 3
    .4byte .L08067B2E @ case 4
    .4byte .L08067B2E @ case 5
    .4byte .L08067C60 @ case 6
    .4byte .L08067C60 @ case 7
    .4byte .L08067C60 @ case 8
    .4byte .L08067C60 @ case 9
    .4byte .L08067B2E @ case 10
    .4byte .L08067C60 @ case 11
    .4byte .L08067C4C @ case 12
    .4byte .L08067C4C @ case 13
    .4byte .L08067C58 @ case 14
    .4byte .L08067C58 @ case 15
    .4byte .L08067C50 @ case 16
    .4byte .L08067B2E @ case 17
    .4byte .L08067C54 @ case 18
    .4byte .L08067C5C @ case 19
    .4byte .L08067C5C @ case 20
    .4byte .L08067C50 @ case 21
    .4byte .L08067C50 @ case 22
    .4byte .L08067C60 @ case 23
    .4byte .L08067C60 @ case 24
    .4byte .L08067B2E @ case 25
    .4byte .L08067B2E @ case 26
    .4byte .L08067B2E @ case 27
    .4byte .L08067B2E @ case 28
    .4byte .L08067C60 @ case 29
    .4byte .L08067C60 @ case 30
    .4byte .L08067C60 @ case 31
    .4byte .L08067C60 @ case 32
    .4byte .L08067C60 @ case 33
    .4byte .L08067B2E @ case 34
    .4byte .L08067B2E @ case 35
    .4byte .L08067C60 @ case 36
    .4byte .L08067B2E @ case 37
    .4byte .L08067C54 @ case 38
    .4byte .L08067B2E @ case 39
    .4byte .L08067B2E @ case 40
    .4byte .L08067B2E @ case 41
    .4byte .L08067C54 @ case 42
    .4byte .L08067B2E @ case 43
    .4byte .L08067C64 @ case 44
    .4byte .L08067C60 @ case 45
    .4byte .L08067C64 @ case 46
    .4byte .L08067B2E @ case 47
    .4byte .L08067C60 @ case 48
    .4byte .L08067C60 @ case 49
    .4byte .L08067C60 @ case 50
    .4byte .L08067B2E @ case 51
    .4byte .L08067C64 @ case 52
    .4byte .L08067C64 @ case 53
    .4byte .L08067C50 @ case 54
    .4byte .L08067C60 @ case 55
    .4byte .L08067B2E @ case 56
    .4byte .L08067B2E @ case 57
    .4byte .L08067C54 @ case 58
    .4byte .L08067C54 @ case 59
    .4byte .L08067C50 @ case 60
    .4byte .L08067C54 @ case 61
    .4byte .L08067C60 @ case 62
    .4byte .L08067B2E @ case 63
    .4byte .L08067B2E @ case 64
.L08067C4C:
    movs r0, #1
    b .L08067C66
.L08067C50:
    movs r0, #2
    b .L08067C66
.L08067C54:
    movs r0, #3
    b .L08067C66
.L08067C58:
    movs r0, #4
    b .L08067C66
.L08067C5C:
    movs r0, #5
    b .L08067C66
.L08067C60:
    movs r0, #6
    b .L08067C66
.L08067C64:
    movs r0, #0
.L08067C66:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08067B20

    thumb_func_start func_08067C6C
func_08067C6C: @ 0x08067C6C
    push {r4, r5, lr}
    adds r4, r0, #0
    bl func_0806814C
    movs r2, #2
    ldrsh r1, [r4, r2]
    adds r5, r0, r1
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08067C8A
    cmp r5, #0x58
    bgt .L08067C92
    b .L08067C8E
.L08067C8A:
    cmp r5, #0x97
    ble .L08067C92
.L08067C8E:
    movs r0, #1
    b .L08067C94
.L08067C92:
    movs r0, #0
.L08067C94:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08067C6C

    thumb_func_start func_08067C9C
func_08067C9C: @ 0x08067C9C
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    adds r2, r0, #0
    movs r1, #0
    cmp r0, #4
    bls .L08067CBE
    cmp r0, #8
    bhi .L08067CB0
    movs r1, #1
    b .L08067CBE
.L08067CB0:
    cmp r0, #0xb
    bhi .L08067CB8
    movs r1, #2
    b .L08067CBE
.L08067CB8:
    cmp r2, #0xf
    bhi .L08067CBE
    movs r1, #3
.L08067CBE:
    adds r0, r1, #0
    bx lr
    func_end func_08067C9C

    thumb_func_start func_08067CC4
func_08067CC4: @ 0x08067CC4
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r4, .L08067D04 @ =0x0203E05E
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r6, [r0, r1]
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r1, r6, #1
    adds r6, r1, r0
    adds r0, r6, #0
    bl func_08053340
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    adds r0, r6, #2
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r4, r0
    beq .L08067D0C
    cmp r0, #0
    beq .L08067D08
    movs r0, #0
    b .L08067D0E
    .align 2, 0
.L08067D04: .4byte 0x0203E05E
.L08067D08:
    movs r0, #1
    b .L08067D0E
.L08067D0C:
    movs r0, #2
.L08067D0E:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08067CC4

    thumb_func_start func_08067D14
func_08067D14: @ 0x08067D14
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L08067D38 @ =0x0000FFFF
    bl func_08067D78
    adds r0, r5, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    beq .L08067D46
    cmp r0, #1
    bgt .L08067D3C
    cmp r0, #0
    beq .L08067D42
    b .L08067D4C
    .align 2, 0
.L08067D38: .4byte 0x0000FFFF
.L08067D3C:
    cmp r0, #2
    beq .L08067D4A
    b .L08067D4C
.L08067D42:
    movs r4, #0xd4
    b .L08067D4C
.L08067D46:
    movs r4, #0xd5
    b .L08067D4C
.L08067D4A:
    ldr r4, .L08067D74 @ =0x000002CE
.L08067D4C:
    lsls r0, r4, #0x10
    asrs r4, r0, #0x10
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    beq .L08067D6E
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    movs r0, #2
    ldrsh r1, [r5, r0]
    adds r0, r4, #0
    movs r2, #1
    bl func_080676E8
.L08067D6E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08067D74: .4byte 0x000002CE
    func_end func_08067D14

    thumb_func_start func_08067D78
func_08067D78: @ 0x08067D78
    push {r4, r5, lr}
    adds r4, r0, #0
    bl GetAnimAnotherSide
    adds r5, r0, #0
    adds r0, r4, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bgt .L08067DB4
    cmp r0, #0
    blt .L08067DB4
    adds r0, r5, #0
    bl CheckRoundCrit
    cmp r0, #1
    bne .L08067DB4
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0xd8
    bl func_080675C8
    movs r0, #2
    ldrsh r1, [r4, r0]
    movs r0, #0xd8
    movs r2, #1
    bl func_080676E8
.L08067DB4:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08067D78

    thumb_func_start func_08067DBC
func_08067DBC: @ 0x08067DBC
    ldr r2, .L08067DD4 @ =0x0203A4F0
    movs r1, #8
    ldrb r2, [r2, #2]
    ands r1, r2
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    rsbs r1, r1, #0
    lsrs r1, r1, #0x1f
    cmp r0, r1
    beq .L08067DD8
    movs r0, #0
    b .L08067DDA
    .align 2, 0
.L08067DD4: .4byte 0x0203A4F0
.L08067DD8:
    movs r0, #1
.L08067DDA:
    bx lr
    func_end func_08067DBC

    thumb_func_start func_08067DDC
func_08067DDC: @ 0x08067DDC
    push {lr}
    cmp r0, #0
    beq .L08067E40
    bl GetItemIndex
    subs r0, #0x4a
    cmp r0, #0xe
    bhi .L08067E40
    lsls r0, r0, #2
    ldr r1, .L08067DF8 @ =.L08067DFC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08067DF8: .4byte .L08067DFC
.L08067DFC: @ jump table
    .4byte .L08067E38 @ case 0
    .4byte .L08067E38 @ case 1
    .4byte .L08067E38 @ case 2
    .4byte .L08067E38 @ case 3
    .4byte .L08067E38 @ case 4
    .4byte .L08067E38 @ case 5
    .4byte .L08067E3C @ case 6
    .4byte .L08067E3C @ case 7
    .4byte .L08067E3C @ case 8
    .4byte .L08067E40 @ case 9
    .4byte .L08067E40 @ case 10
    .4byte .L08067E40 @ case 11
    .4byte .L08067E38 @ case 12
    .4byte .L08067E40 @ case 13
    .4byte .L08067E38 @ case 14
.L08067E38:
    movs r0, #2
    b .L08067E42
.L08067E3C:
    movs r0, #1
    b .L08067E42
.L08067E40:
    movs r0, #0
.L08067E42:
    pop {r1}
    bx r1
    func_end func_08067DDC

    thumb_func_start func_08067E48
func_08067E48: @ 0x08067E48
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r0, .L08067E94 @ =0x0203E094
    ldr r1, .L08067E98 @ =0x0203E098
    ldr r5, [r0]
    ldr r6, [r1]
    ldr r1, .L08067E9C @ =gBmSt
    movs r0, #0x20
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L08067E64
    b .L080680C8
.L08067E64:
    ldr r1, .L08067EA0 @ =0x020200A0
    movs r0, #1
    str r0, [r1]
    ldr r1, .L08067EA4 @ =gBanimFactionPal
    ldr r0, .L08067EA8 @ =0x0203E00C
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #0x20
    mov r8, r1
    ldrh r0, [r0]
    cmp r0, #1
    beq .L08067E84
    movs r2, #0x1f
    mov r8, r2
.L08067E84:
    bl func_080554F0
    cmp r0, #1
    bne .L08067EAC
    bl func_08003F6C
    b .L08067EB4
    .align 2, 0
.L08067E94: .4byte 0x0203E094
.L08067E98: .4byte 0x0203E098
.L08067E9C: .4byte gBmSt
.L08067EA0: .4byte 0x020200A0
.L08067EA4: .4byte gBanimFactionPal
.L08067EA8: .4byte 0x0203E00C
.L08067EAC:
    bl func_0804B1A0
    cmp r0, #1
    bne .L08067EC0
.L08067EB4:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x48
    bl func_0806768C
    b .L080680CE
.L08067EC0:
    ldr r0, .L08067ED4 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L08067ED8
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x1b
    bl func_0806768C
    b .L080680CE
    .align 2, 0
.L08067ED4: .4byte 0x0203E02C
.L08067ED8:
    ldr r7, .L08067F54 @ =gBanimValid
    movs r1, #0
    ldrsh r0, [r7, r1]
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r4, r1, #0x1f
    ldr r0, .L08067F58 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    cmp r0, #0x3e
    beq .L08067EEE
    movs r4, #0
.L08067EEE:
    ldr r0, [r5]
    ldrb r0, [r0, #4]
    cmp r0, #0x44
    beq .L08067EF8
    movs r4, #0
.L08067EF8:
    ldr r0, [r6]
    ldrb r0, [r0, #4]
    cmp r0, #0x27
    beq .L08067F02
    movs r4, #0
.L08067F02:
    cmp r4, #1
    beq .L08067F48
    movs r4, #0
    adds r0, r6, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl func_080533B0
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08067F1C
    movs r4, #1
.L08067F1C:
    movs r0, #1
    bl func_080533EC
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08067F2A
    movs r4, #0
.L08067F2A:
    movs r2, #0
    ldrsh r0, [r7, r2]
    cmp r0, #0
    bne .L08067F34
    movs r4, #0
.L08067F34:
    ldr r0, [r5]
    ldrb r0, [r0, #4]
    cmp r0, #0x44
    bne .L08067F3E
    movs r4, #0
.L08067F3E:
    cmp r0, #0x86
    bne .L08067F44
    movs r4, #0
.L08067F44:
    cmp r4, #1
    bne .L08067F5C
.L08067F48:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x1c
    bl func_0806768C
    b .L080680CE
    .align 2, 0
.L08067F54: .4byte gBanimValid
.L08067F58: .4byte gPlaySt
.L08067F5C:
    cmp r0, #0x86
    bne .L08067F7C
    bl func_08079A9C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08067F78
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x6f
    bl func_0806768C
    b .L080680CE
.L08067F78:
    bl func_08079A90
.L08067F7C:
    adds r0, r5, #0
    bl func_08068110
    adds r4, r0, #0
    ldr r0, [r5]
    ldrb r0, [r0, #4]
    bl GetUnitFromCharId
    movs r1, #0xc0
    ldrb r0, [r0, #0xb]
    ands r1, r0
    cmp r1, #0
    bne .L08067F9A
    movs r4, #1
    rsbs r4, r4, #0
.L08067F9A:
    ldr r0, .L08067FBC @ =gBanimValid
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08067FA8
    movs r4, #1
    rsbs r4, r4, #0
.L08067FA8:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    beq .L08067FC0
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_0806768C
    b .L080680CE
    .align 2, 0
.L08067FBC: .4byte gBanimValid
.L08067FC0:
    movs r4, #0
    ldr r0, [r5]
    ldr r1, [r5, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0xc
    ands r0, r1
    cmp r0, #0
    beq .L08067FEA
    ldr r0, .L08067FFC @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x2e
    bne .L08067FE4
    movs r4, #1
.L08067FE4:
    cmp r0, #0x2f
    bne .L08067FEA
    movs r4, #1
.L08067FEA:
    cmp r4, #1
    bne .L08068000
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x14
    bl func_0806768C
    b .L080680CE
    .align 2, 0
.L08067FFC: .4byte gPlaySt
.L08068000:
    movs r4, #0
    ldr r0, [r6, #4]
    ldrb r1, [r0, #4]
    adds r3, r0, #0
    cmp r1, #0x40
    bne .L08068024
    ldr r0, .L08068034 @ =0x0203A3D8
    ldrh r2, [r0]
    ands r1, r2
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r4, r0, #0x1f
    movs r0, #0x80
    lsls r0, r0, #2
    ands r0, r2
    cmp r0, #0
    beq .L08068024
    movs r4, #1
.L08068024:
    cmp r4, #1
    bne .L08068038
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x1d
    bl func_0806768C
    b .L080680CE
    .align 2, 0
.L08068034: .4byte 0x0203A3D8
.L08068038:
    movs r4, #0
    ldrb r3, [r3, #4]
    cmp r3, #0x41
    bne .L0806805C
    ldr r0, .L0806806C @ =0x0203A3D8
    ldrh r1, [r0]
    movs r0, #0x40
    ands r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    rsbs r0, r0, #0
    lsrs r4, r0, #0x1f
    movs r0, #0x80
    lsls r0, r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L0806805C
    movs r4, #1
.L0806805C:
    cmp r4, #1
    bne .L08068070
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x1e
    bl func_0806768C
    b .L080680CE
    .align 2, 0
.L0806806C: .4byte 0x0203A3D8
.L08068070:
    movs r0, #0
    bl func_08067DBC
    cmp r0, #1
    bne .L08068084
    ldr r0, .L08068080 @ =0x0203A3F0
    b .L08068090
    .align 2, 0
.L08068080: .4byte 0x0203A3F0
.L08068084:
    movs r0, #1
    bl func_08067DBC
    cmp r0, #1
    bne .L080680A0
    ldr r0, .L0806809C @ =0x0203A470
.L08068090:
    adds r0, #0x4a
    ldrh r0, [r0]
    bl func_08067DDC
    b .L080680A2
    .align 2, 0
.L0806809C: .4byte 0x0203A470
.L080680A0:
    movs r0, #0
.L080680A2:
    cmp r0, #1
    beq .L080680B0
    cmp r0, #2
    bne .L080680B4
    movs r2, #0x1a
    mov r8, r2
    b .L080680B4
.L080680B0:
    movs r0, #0x19
    mov r8, r0
.L080680B4:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r8, r0
    beq .L080680C8
    movs r1, #0x80
    lsls r1, r1, #1
    mov r0, r8
    bl func_0806768C
    b .L080680CE
.L080680C8:
    ldr r1, .L080680D8 @ =0x020200A0
    movs r0, #0
    str r0, [r1]
.L080680CE:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080680D8: .4byte 0x020200A0
    func_end func_08067E48

    thumb_func_start func_080680DC
func_080680DC: @ 0x080680DC
    push {lr}
    bl func_0806B78C
    cmp r0, #1
    beq .L080680FA
    ldr r1, .L08068100 @ =gBmSt
    movs r0, #0x20
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L080680FA
    ldr r0, .L08068104 @ =0x020200A0
    ldr r0, [r0]
    cmp r0, #0
    bne .L08068108
.L080680FA:
    bl MakeBgmOverridePersist
    b .L0806810C
    .align 2, 0
.L08068100: .4byte gBmSt
.L08068104: .4byte 0x020200A0
.L08068108:
    bl RestoreBgm_WithFixedSpeed
.L0806810C:
    pop {r0}
    bx r0
    func_end func_080680DC

    thumb_func_start func_08068110
func_08068110: @ 0x08068110
    push {r4, r5, lr}
    ldr r0, [r0]
    ldrb r2, [r0, #4]
    movs r3, #0
    ldr r0, .L08068148 @ =0x08BDAF80
    ldr r1, [r0]
    movs r4, #1
    rsbs r4, r4, #0
    adds r5, r0, #0
    cmp r1, r4
    beq .L0806813A
    cmp r2, r1
    beq .L0806813A
    adds r1, r5, #0
.L0806812C:
    adds r1, #8
    adds r3, #2
    ldr r0, [r1]
    cmp r0, r4
    beq .L0806813A
    cmp r2, r0
    bne .L0806812C
.L0806813A:
    adds r0, r3, #1
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08068148: .4byte 0x08BDAF80
    func_end func_08068110

    thumb_func_start func_0806814C
func_0806814C: @ 0x0806814C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r2, [r0, #0x3c]
    ldr r3, [r2]
    ldr r1, .L0806817C @ =0xFFFF0000
    adds r0, r3, #0
    ands r0, r1
    cmp r0, r1
    bne .L08068170
    ldr r7, .L08068180 @ =0x0000FFFF
    ands r7, r3
    cmp r7, #0
    beq .L08068170
.L08068168:
    subs r7, #1
    adds r2, #0xc
    cmp r7, #0
    bne .L08068168
.L08068170:
    adds r6, r2, #0
    movs r7, #0
    movs r0, #0
    mov r8, r0
    b .L080681B8
    .align 2, 0
.L0806817C: .4byte 0xFFFF0000
.L08068180: .4byte 0x0000FFFF
.L08068184:
    movs r0, #6
    ldrsh r5, [r6, r0]
    ldr r0, [r6]
    bl func_0806740C
    lsls r0, r0, #0x10
    asrs r0, r0, #0x11
    adds r5, r5, r0
    ldr r0, [r6]
    bl func_0806740C
    adds r4, r0, #0
    ldr r0, [r6]
    bl func_08067428
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    adds r1, r4, #0
    muls r1, r0, r1
    adds r0, r1, #0
    muls r0, r5, r0
    add r8, r0
    adds r7, r7, r1
    adds r6, #0xc
.L080681B8:
    ldr r0, [r6]
    cmp r0, #1
    bne .L08068184
    cmp r7, #0
    bne .L080681CC
    ldr r0, .L080681C8 @ =0x7FFFFFFF
    b .L080681D4
    .align 2, 0
.L080681C8: .4byte 0x7FFFFFFF
.L080681CC:
    mov r0, r8
    adds r1, r7, #0
    bl Div
.L080681D4:
    mov r8, r0
    mov r0, r8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0806814C

    thumb_func_start PlaySFX
PlaySFX: @ 0x080681E4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r2, #0
    adds r6, r3, #0
    bl func_080675C8
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl func_080676E8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end PlaySFX

    thumb_func_start func_08068200
func_08068200: @ 0x08068200
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r2, #0
    bl func_080675C8
    adds r0, r4, #0
    bl func_0806814C
    adds r1, r0, #0
    adds r0, r5, #0
    movs r2, #1
    bl func_080676E8
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08068200

    thumb_func_start func_08068220
func_08068220: @ 0x08068220
    ldr r0, .L08068230 @ =0x020200A8
    ldr r0, [r0]
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    beq .L08068234
    movs r0, #0
    b .L08068236
    .align 2, 0
.L08068230: .4byte 0x020200A8
.L08068234:
    movs r0, #1
.L08068236:
    bx lr
    func_end func_08068220

    thumb_func_start func_08068238
func_08068238: @ 0x08068238
    push {lr}
    ldr r0, .L08068248 @ =0x020200A8
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L08068248: .4byte 0x020200A8
    func_end func_08068238

    thumb_func_start func_0806824C
func_0806824C: @ 0x0806824C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FB6C
    ldr r4, .L08068274 @ =0x020200A8
    ldr r0, .L08068278 @ =0x08BDB398
    movs r1, #3
    bl Proc_Start
    str r0, [r4]
    str r5, [r0, #0x5c]
    movs r2, #0
    movs r1, #0
    strh r1, [r0, #0x2c]
    adds r0, #0x29
    strb r2, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08068274: .4byte 0x020200A8
.L08068278: .4byte 0x08BDB398
    func_end func_0806824C

    thumb_func_start func_0806827C
func_0806827C: @ 0x0806827C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r1, #0
    mov r8, r1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #1
    bne .L080682D8
    ldr r0, [r4, #0x5c]
    bl func_0804F7D0
    adds r0, r5, #0
    bl func_0804F7D0
    adds r0, r5, #0
    bl func_08068540
    adds r0, r5, #0
    bl func_08068638
    ldr r2, .L080682D4 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r3, [r2, #1]
    ands r0, r3
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    b .L0806852A
    .align 2, 0
.L080682D4: .4byte gDispIo
.L080682D8:
    cmp r1, #0x5f
    bne .L08068308
    ldr r0, [r4, #0x5c]
    movs r1, #0xa
    bl NewEfxFlashBgWhite
    ldr r0, .L08068304 @ =0x0000013B
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl PlaySFX
    movs r0, #1
    movs r1, #0
    movs r2, #8
    bl SetBgOffset
    b .L0806852A
    .align 2, 0
.L08068304: .4byte 0x0000013B
.L08068308:
    cmp r1, #0x6a
    bne .L0806832C
    ldr r1, [r4, #0x5c]
    ldr r0, .L08068328 @ =0x0000F3FF
    ldrh r2, [r1, #8]
    ands r0, r2
    strh r0, [r1, #8]
    ldr r1, [r4, #0x5c]
    movs r3, #0x80
    lsls r3, r3, #3
    adds r0, r3, #0
    ldrh r2, [r1, #8]
    orrs r0, r2
    strh r0, [r1, #8]
    b .L0806852A
    .align 2, 0
.L08068328: .4byte 0x0000F3FF
.L0806832C:
    cmp r1, #0x74
    bne .L0806833C
    ldr r0, [r4, #0x5c]
    movs r1, #0xc
    movs r2, #0
    bl func_08068994
    b .L0806852A
.L0806833C:
    cmp r1, #0x78
    bne .L08068348
    ldr r0, [r4, #0x5c]
    bl func_0806873C
    b .L0806852A
.L08068348:
    cmp r1, #0x80
    bne .L08068354
    movs r0, #1
    bl SetAnimStateHidden
    b .L0806852A
.L08068354:
    cmp r1, #0x7e
    bne .L08068398
    ldr r0, [r4, #0x5c]
    movs r1, #2
    str r1, [sp]
    movs r1, #0x38
    movs r2, #7
    movs r3, #0
    bl func_080558BC
    adds r2, r0, #0
    ldr r0, [r4, #0x5c]
    movs r1, #0x40
    str r1, [sp]
    adds r1, r2, #0
    movs r2, #0x38
    movs r3, #0
    bl func_08068A70
    ldr r0, [r4, #0x5c]
    movs r1, #0x38
    movs r2, #0
    bl NewEfxRestWINH_
    ldr r0, [r4, #0x5c]
    mov r3, r8
    str r3, [sp]
    str r3, [sp, #4]
    movs r1, #0
    movs r2, #0x38
    movs r3, #0x10
    bl NewEfxALPHA
    b .L0806852A
.L08068398:
    cmp r1, #0xf2
    bne .L08068430
    ldr r0, [r4, #0x5c]
    bl func_08068584
    ldr r0, [r4, #0x5c]
    bl func_080686BC
    ldr r6, .L0806842C @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r6, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r6, #1]
    ldr r0, [r4, #0x5c]
    movs r1, #2
    str r1, [sp]
    movs r1, #0x38
    movs r2, #7
    movs r3, #0x40
    bl func_080558BC
    adds r2, r0, #0
    ldr r0, [r4, #0x5c]
    mov r3, r8
    str r3, [sp]
    adds r1, r2, #0
    movs r2, #0x38
    movs r3, #0x40
    bl func_08068A70
    ldr r0, [r4, #0x5c]
    movs r1, #0x38
    movs r2, #0
    bl NewEfxRestWINH_
    adds r2, r6, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r6, #0
    adds r0, #0x44
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    ldr r0, [r4, #0x5c]
    str r1, [sp]
    mov r2, r8
    str r2, [sp, #4]
    movs r1, #0
    movs r2, #0x38
    movs r3, #0
    bl NewEfxALPHA
    movs r0, #0x9e
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    b .L0806850E
    .align 2, 0
.L0806842C: .4byte gDispIo
.L08068430:
    movs r0, #0x9c
    lsls r0, r0, #1
    cmp r1, r0
    bne .L08068460
    movs r0, #0
    bl SetAnimStateUnHidden
    ldr r0, .L0806845C @ =0x0000F3FF
    ldrh r1, [r5, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #3
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r5, #8]
    adds r0, r5, #0
    movs r1, #0xc
    movs r2, #1
    bl func_08068994
    b .L0806852A
    .align 2, 0
.L0806845C: .4byte 0x0000F3FF
.L08068460:
    movs r0, #0x9f
    lsls r0, r0, #1
    cmp r1, r0
    bne .L08068482
    adds r0, r5, #0
    bl func_0806873C
    ldr r0, [r4, #0x5c]
    movs r1, #0xa
    bl NewEfxFlashBgWhite
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    b .L0806852A
.L08068482:
    movs r3, #0x2c
    ldrsh r1, [r4, r3]
    movs r0, #0xa5
    lsls r0, r0, #1
    cmp r1, r0
    bne .L080684A4
    ldr r0, .L080684A0 @ =0x0000F3FF
    ldrh r1, [r5, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r5, #8]
    b .L0806852A
    .align 2, 0
.L080684A0: .4byte 0x0000F3FF
.L080684A4:
    movs r0, #0xad
    lsls r0, r0, #1
    cmp r1, r0
    bne .L080684BC
    bl func_0804FBC4
    adds r0, r5, #0
    movs r1, #0xa
    movs r2, #0x46
    bl func_0804F0FC
    b .L0806852A
.L080684BC:
    movs r0, #0xb2
    lsls r0, r0, #1
    cmp r1, r0
    bne .L0806851C
    adds r0, r5, #0
    movs r1, #0x82
    bl func_080687A0
    adds r0, r5, #0
    movs r1, #0x82
    bl func_0806890C
    movs r0, #0
    str r0, [sp]
    movs r0, #2
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x5a
    movs r2, #0x28
    movs r3, #0xe
    bl NewEfxALPHA
    movs r4, #0x80
    lsls r4, r4, #1
    movs r0, #1
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0x82
    movs r2, #0xa
    adds r3, r4, #0
    bl func_080558BC
    adds r0, r5, #0
    movs r1, #0x82
    movs r2, #0
    bl NewEfxRestWINH_
    ldr r0, .L08068518 @ =0x0000013D
    movs r3, #2
    ldrsh r2, [r5, r3]
    adds r1, r4, #0
.L0806850E:
    movs r3, #1
    bl PlaySFX
    b .L0806852A
    .align 2, 0
.L08068518: .4byte 0x0000013D
.L0806851C:
    movs r0, #0x94
    lsls r0, r0, #2
    cmp r1, r0
    bne .L0806852A
    adds r0, r4, #0
    bl Proc_Break
.L0806852A:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0806827C

    thumb_func_start func_08068538
func_08068538: @ 0x08068538
    adds r0, #0x29
    movs r1, #1
    strb r1, [r0]
    bx lr
    func_end func_08068538

    thumb_func_start func_08068540
func_08068540: @ 0x08068540
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08068570 @ =0x08BDB3B8
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08068574 @ =0x082E5B38
    str r1, [r0, #0x48]
    ldr r1, .L08068578 @ =0x08BDB3D0
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0806857C @ =0x08BDB42C
    str r1, [r0, #0x54]
    ldr r1, .L08068580 @ =0x08BDB488
    str r1, [r0, #0x58]
    bl SpellFx_SetSomeColorEffect
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08068570: .4byte 0x08BDB3B8
.L08068574: .4byte 0x082E5B38
.L08068578: .4byte 0x08BDB3D0
.L0806857C: .4byte 0x08BDB42C
.L08068580: .4byte 0x08BDB488
    func_end func_08068540

    thumb_func_start func_08068584
func_08068584: @ 0x08068584
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080685B4 @ =0x08BDB3B8
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L080685B8 @ =0x082E5BAA
    str r1, [r0, #0x48]
    ldr r1, .L080685BC @ =0x08BDB3D0
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L080685C0 @ =0x08BDB42C
    str r1, [r0, #0x54]
    ldr r1, .L080685C4 @ =0x08BDB488
    str r1, [r0, #0x58]
    bl SpellFx_SetSomeColorEffect
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080685B4: .4byte 0x08BDB3B8
.L080685B8: .4byte 0x082E5BAA
.L080685BC: .4byte 0x08BDB3D0
.L080685C0: .4byte 0x08BDB42C
.L080685C4: .4byte 0x08BDB488
    func_end func_08068584

    thumb_func_start func_080685C8
func_080685C8: @ 0x080685C8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r5, r0, #0x10
    cmp r5, #0
    blt .L08068616
    ldr r6, [r7, #0x4c]
    ldr r0, [r7, #0x50]
    mov r8, r0
    ldr r0, [r7, #0x54]
    ldr r4, [r7, #0x58]
    lsls r5, r5, #2
    adds r0, r5, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl SpellFx_RegisterBgGfx
    adds r4, r5, r4
    ldr r0, [r4]
    movs r1, #0x20
    bl SpellFx_RegisterBgPal
    ldr r0, [r7, #0x5c]
    adds r6, r5, r6
    ldr r1, [r6]
    add r5, r8
    ldr r2, [r5]
    bl SpellFx_WriteBgMap
    b .L0806862C
.L08068616:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0806862C
    bl SpellFx_ClearBG1
    bl SpellFx_ClearColorEffects
    adds r0, r7, #0
    bl Proc_End
.L0806862C:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080685C8

    thumb_func_start func_08068638
func_08068638: @ 0x08068638
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08068650 @ =0x08BDB4E4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08068650: .4byte 0x08BDB4E4
    func_end func_08068638

    thumb_func_start func_08068654
func_08068654: @ 0x08068654
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    beq .L08068696
    cmp r0, #0x11
    beq .L08068696
    cmp r0, #0x22
    beq .L08068696
    cmp r0, #0x28
    beq .L08068696
    cmp r0, #0x2e
    beq .L08068696
    cmp r0, #0x34
    beq .L08068696
    cmp r0, #0x3a
    beq .L08068696
    cmp r0, #0x3e
    beq .L08068696
    cmp r0, #0x42
    beq .L08068696
    cmp r0, #0x44
    beq .L08068696
    movs r1, #0x2c
    ldrsh r0, [r2, r1]
    cmp r0, #0x46
    beq .L08068696
    cmp r0, #0x48
    bne .L080686AC
.L08068696:
    movs r0, #0x9f
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r2, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl PlaySFX
    b .L080686B6
.L080686AC:
    cmp r0, #0x50
    bne .L080686B6
    adds r0, r2, #0
    bl Proc_Break
.L080686B6:
    pop {r0}
    bx r0
    func_end func_08068654

    thumb_func_start func_080686BC
func_080686BC: @ 0x080686BC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080686D4 @ =0x08BDB4FC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080686D4: .4byte 0x08BDB4FC
    func_end func_080686BC

    thumb_func_start func_080686D8
func_080686D8: @ 0x080686D8
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x56
    beq .L08068716
    cmp r0, #0x58
    beq .L08068716
    cmp r0, #0x5a
    beq .L08068716
    cmp r0, #0x5c
    beq .L08068716
    cmp r0, #0x5e
    beq .L08068716
    cmp r0, #0x60
    beq .L08068716
    cmp r0, #0x62
    beq .L08068716
    cmp r0, #0x64
    beq .L08068716
    cmp r0, #0x66
    beq .L08068716
    cmp r0, #0x68
    beq .L08068716
    movs r1, #0x2c
    ldrsh r0, [r2, r1]
    cmp r0, #0x6a
    bne .L0806872C
.L08068716:
    movs r0, #0x9f
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r2, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl PlaySFX
    b .L08068736
.L0806872C:
    cmp r0, #0x6e
    bne .L08068736
    adds r0, r2, #0
    bl Proc_Break
.L08068736:
    pop {r0}
    bx r0
    func_end func_080686D8

    thumb_func_start func_0806873C
func_0806873C: @ 0x0806873C
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, .L08068778 @ =0x08BDB514
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    ldr r3, .L0806877C @ =0x08BB7280
    str r3, [sp]
    adds r0, r4, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl EfxCreateFrontAnim
    str r0, [r5, #0x60]
    ldr r0, .L08068780 @ =0x081FC634
    movs r1, #0x20
    bl SpellFx_RegisterObjPal
    ldr r0, .L08068784 @ =0x081FC19C
    movs r1, #0x80
    lsls r1, r1, #5
    bl SpellFx_RegisterObjGfx
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08068778: .4byte 0x08BDB514
.L0806877C: .4byte 0x08BB7280
.L08068780: .4byte 0x081FC634
.L08068784: .4byte 0x081FC19C
    func_end func_0806873C

    thumb_func_start func_08068788
func_08068788: @ 0x08068788
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08068788

    thumb_func_start func_080687A0
func_080687A0: @ 0x080687A0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, .L08068890 @ =0x08BDB534
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    movs r6, #0
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r4, [r0, #0x2e]
    ldr r0, .L08068894 @ =0x081F65A0
    movs r1, #0x20
    bl SpellFx_RegisterBgPal
    ldr r0, .L08068898 @ =0x082739E4
    movs r1, #0x80
    lsls r1, r1, #6
    bl SpellFx_RegisterBgGfx
    ldr r0, .L0806889C @ =0x08273AE4
    ldr r1, .L080688A0 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x20
    movs r3, #0x20
    bl EfxTmCpyBG
    movs r0, #2
    bl EnableBgSync
    bl SpellFx_SetSomeColorEffect
    ldr r0, .L080688A4 @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    mov r1, ip
    adds r1, #0x44
    movs r0, #0xe
    strb r0, [r1]
    adds r1, #1
    movs r4, #8
    movs r0, #8
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x46
    strb r6, [r0]
    mov r6, ip
    adds r6, #0x37
    movs r3, #0x20
    ldrb r1, [r6]
    orrs r1, r3
    movs r0, #0x21
    rsbs r0, r0, #0
    mov r2, ip
    ldrb r2, [r2, #1]
    ands r0, r2
    movs r2, #0x41
    rsbs r2, r2, #0
    ands r0, r2
    movs r2, #0x80
    orrs r0, r2
    mov r7, ip
    strb r0, [r7, #1]
    movs r0, #2
    rsbs r0, r0, #0
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    movs r0, #4
    orrs r1, r0
    orrs r1, r4
    movs r0, #0x10
    orrs r1, r0
    strb r1, [r6]
    ldr r0, .L080688A8 @ =0x0000FFE0
    ldrh r1, [r7, #0x3c]
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    ldr r1, .L080688AC @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xe0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r7, #0x3c]
    mov r0, ip
    adds r0, #0x3d
    ldrb r7, [r0]
    orrs r3, r7
    strb r3, [r0]
    ldr r0, [r5, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #4
    orrs r0, r1
    str r0, [r5, #0x1c]
    ldr r0, .L080688B0 @ =0x0000F3FF
    ldrh r1, [r5, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #3
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r5, #8]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08068890: .4byte 0x08BDB534
.L08068894: .4byte 0x081F65A0
.L08068898: .4byte 0x082739E4
.L0806889C: .4byte 0x08273AE4
.L080688A0: .4byte gBg1Tm
.L080688A4: .4byte gDispIo
.L080688A8: .4byte 0x0000FFE0
.L080688AC: .4byte 0x0000E0FF
.L080688B0: .4byte 0x0000F3FF
    func_end func_080687A0

    thumb_func_start func_080688B4
func_080688B4: @ 0x080688B4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x5c]
    ldr r1, .L08068900 @ =gDispIo
    ldrh r0, [r1, #0x22]
    subs r0, #1
    strh r0, [r1, #0x22]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L080688F8
    bl SpellFx_ClearBG1
    bl SpellFx_ClearColorEffects
    ldr r0, [r5, #0x1c]
    ldr r1, .L08068904 @ =0xFFFFF7FF
    ands r0, r1
    str r0, [r5, #0x1c]
    ldr r0, .L08068908 @ =0x0000F3FF
    ldrh r1, [r5, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r5, #8]
    adds r0, r4, #0
    bl Proc_Break
.L080688F8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08068900: .4byte gDispIo
.L08068904: .4byte 0xFFFFF7FF
.L08068908: .4byte 0x0000F3FF
    func_end func_080688B4

    thumb_func_start func_0806890C
func_0806890C: @ 0x0806890C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08068928 @ =0x08BDB54C
    movs r1, #4
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08068928: .4byte 0x08BDB54C
    func_end func_0806890C

    thumb_func_start func_0806892C
func_0806892C: @ 0x0806892C
    push {r4, lr}
    sub sp, #0x48
    adds r4, r0, #0
    ldr r2, [r4, #0x5c]
    mov r1, sp
    ldrh r0, [r2, #2]
    strh r0, [r1, #2]
    ldrh r0, [r2, #4]
    strh r0, [r1, #4]
    ldr r0, [r2, #0x3c]
    str r0, [sp, #0x3c]
    ldr r0, [r2, #0x1c]
    ldr r1, .L08068988 @ =0xFFFFF7FF
    ands r0, r1
    str r0, [sp, #0x1c]
    mov r0, sp
    ldrh r1, [r2, #8]
    strh r1, [r0, #8]
    mov r2, sp
    ldr r0, .L0806898C @ =0x0000F3FF
    ands r0, r1
    strh r0, [r2, #8]
    movs r3, #0x80
    lsls r3, r3, #4
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r2, #8]
    mov r0, sp
    bl AnimDisplay
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0806897E
    adds r0, r4, #0
    bl Proc_Break
.L0806897E:
    add sp, #0x48
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08068988: .4byte 0xFFFFF7FF
.L0806898C: .4byte 0x0000F3FF
    func_end func_0806892C

    thumb_func_start func_08068990
func_08068990: @ 0x08068990
    bx lr
    func_end func_08068990

    thumb_func_start func_08068994
func_08068994: @ 0x08068994
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r0, .L080689BC @ =0x08BDB56C
    movs r1, #4
    bl Proc_Start
    adds r1, r0, #0
    str r4, [r1, #0x5c]
    movs r2, #0
    strh r2, [r1, #0x2c]
    strh r5, [r1, #0x2e]
    cmp r6, #0
    bne .L080689C0
    strh r2, [r1, #0x32]
    movs r0, #0x10
    strh r0, [r1, #0x34]
    b .L080689C6
    .align 2, 0
.L080689BC: .4byte 0x08BDB56C
.L080689C0:
    movs r0, #0x10
    strh r0, [r1, #0x32]
    strh r2, [r1, #0x34]
.L080689C6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08068994

    thumb_func_start func_080689CC
func_080689CC: @ 0x080689CC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0x32
    ldrsh r1, [r5, r0]
    movs r4, #0x34
    ldrsh r2, [r5, r4]
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r4, #0x2e
    ldrsh r0, [r5, r4]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    adds r6, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08068A24
    ldr r0, .L08068A18 @ =gpEfxUnitPaletteBackup
    ldr r0, [r0]
    ldr r4, .L08068A1C @ =gPal + 0x2e0
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r0, .L08068A20 @ =0xFFFFFD20
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #0x17
    movs r2, #1
    adds r3, r6, #0
    bl EfxPalBlackInOut
    b .L08068A42
    .align 2, 0
.L08068A18: .4byte gpEfxUnitPaletteBackup
.L08068A1C: .4byte gPal + 0x2e0
.L08068A20: .4byte 0xFFFFFD20
.L08068A24:
    ldr r0, .L08068A64 @ =gpEfxUnitPaletteBackup
    ldr r0, [r0, #4]
    ldr r4, .L08068A68 @ =gPal + 0x320
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r2, .L08068A6C @ =0xFFFFFCE0
    adds r4, r4, r2
    adds r0, r4, #0
    movs r1, #0x19
    movs r2, #1
    adds r3, r6, #0
    bl EfxPalBlackInOut
.L08068A42:
    bl EnablePalSync
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r4, [r5, #0x2e]
    lsls r1, r4, #0x10
    cmp r0, r1
    ble .L08068A5C
    adds r0, r5, #0
    bl Proc_Break
.L08068A5C:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08068A64: .4byte gpEfxUnitPaletteBackup
.L08068A68: .4byte gPal + 0x320
.L08068A6C: .4byte 0xFFFFFCE0
    func_end func_080689CC

    thumb_func_start func_08068A70
func_08068A70: @ 0x08068A70
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    mov r8, r1
    adds r5, r2, #0
    adds r6, r3, #0
    ldr r7, [sp, #0x18]
    ldr r1, .L08068AAC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08068AB0 @ =0x08BDB584
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    str r6, [r0, #0x44]
    str r7, [r0, #0x48]
    mov r1, r8
    str r1, [r0, #0x64]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08068AAC: .4byte 0x0201774C
.L08068AB0: .4byte 0x08BDB584
    func_end func_08068A70

    thumb_func_start func_08068AB4
func_08068AB4: @ 0x08068AB4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r4, [r5, #0x64]
    ldr r1, [r5, #0x44]
    ldr r2, [r5, #0x48]
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r6, #0x2e
    ldrsh r0, [r5, r6]
    str r0, [sp]
    movs r0, #4
    bl Interpolate
    str r0, [r4, #0x4c]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08068AF0
    ldr r1, .L08068AF8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L08068AF0:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08068AF8: .4byte 0x0201774C
    func_end func_08068AB4

    thumb_func_start func_08068AFC
func_08068AFC: @ 0x08068AFC
    ldr r0, .L08068B0C @ =0x020200AC
    ldr r0, [r0]
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    beq .L08068B10
    movs r0, #0
    b .L08068B12
    .align 2, 0
.L08068B0C: .4byte 0x020200AC
.L08068B10:
    movs r0, #1
.L08068B12:
    bx lr
    func_end func_08068AFC

    thumb_func_start func_08068B14
func_08068B14: @ 0x08068B14
    push {lr}
    ldr r0, .L08068B24 @ =0x020200AC
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L08068B24: .4byte 0x020200AC
    func_end func_08068B14

    thumb_func_start func_08068B28
func_08068B28: @ 0x08068B28
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r2, r0, #0
    ldr r0, [r2, #0x5c]
    cmp r0, #0
    bne .L08068B50
    ldr r0, .L08068B44 @ =0x0203E094
    ldr r4, [r0]
    ldr r0, .L08068B48 @ =0x02020100
    adds r6, r4, #0
    str r6, [r0]
    ldr r0, .L08068B4C @ =0x0203E098
    b .L08068B5C
    .align 2, 0
.L08068B44: .4byte 0x0203E094
.L08068B48: .4byte 0x02020100
.L08068B4C: .4byte 0x0203E098
.L08068B50:
    ldr r0, .L08068C6C @ =0x0203E098
    ldr r4, [r0]
    ldr r0, .L08068C70 @ =0x02020100
    adds r6, r4, #0
    str r6, [r0]
    ldr r0, .L08068C74 @ =0x0203E094
.L08068B5C:
    ldr r1, .L08068C78 @ =0x02020104
    ldr r3, [r0]
    str r3, [r1]
    adds r0, r2, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08068B6E
    b .L08068C8C
.L08068B6E:
    movs r0, #0xb
    ldrsb r0, [r6, r0]
    bl GetUnit
    adds r6, r0, #0
    ldr r1, .L08068C7C @ =0x02020108
    adds r3, r4, #0
    adds r3, #0x70
    movs r0, #0
    ldrsb r0, [r3, r0]
    strh r0, [r1]
    ldr r2, .L08068C80 @ =0x0202010C
    movs r0, #0x12
    ldrsb r0, [r6, r0]
    strh r0, [r2]
    movs r0, #0x14
    ldrsb r0, [r6, r0]
    strh r0, [r2, #2]
    movs r0, #0x15
    ldrsb r0, [r6, r0]
    strh r0, [r2, #4]
    movs r0, #0x19
    ldrsb r0, [r6, r0]
    strh r0, [r2, #8]
    movs r0, #0x16
    ldrsb r0, [r6, r0]
    strh r0, [r2, #6]
    movs r0, #0x17
    ldrsb r0, [r6, r0]
    strh r0, [r2, #0xa]
    movs r0, #0x18
    ldrsb r0, [r6, r0]
    strh r0, [r2, #0xc]
    ldr r0, [r6, #4]
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r1, [r6]
    ldrb r1, [r1, #0x13]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #0xe]
    ldr r1, .L08068C84 @ =0x0202010A
    movs r0, #0
    ldrsb r0, [r3, r0]
    adds r0, #1
    strh r0, [r1]
    ldr r2, .L08068C88 @ =0x0202011C
    movs r0, #0x12
    ldrsb r0, [r6, r0]
    adds r1, r4, #0
    adds r1, #0x73
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2]
    movs r0, #0x14
    ldrsb r0, [r6, r0]
    adds r1, r4, #0
    adds r1, #0x74
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #2]
    movs r0, #0x15
    ldrsb r0, [r6, r0]
    adds r1, r4, #0
    adds r1, #0x75
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #4]
    movs r0, #0x19
    ldrsb r0, [r6, r0]
    adds r1, r4, #0
    adds r1, #0x79
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #8]
    movs r0, #0x16
    ldrsb r0, [r6, r0]
    adds r1, r4, #0
    adds r1, #0x76
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #6]
    movs r0, #0x17
    ldrsb r0, [r6, r0]
    adds r1, r4, #0
    adds r1, #0x77
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #0xa]
    movs r0, #0x18
    ldrsb r0, [r6, r0]
    adds r1, r4, #0
    adds r1, #0x78
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #0xc]
    ldr r0, [r6, #4]
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    ldr r0, [r6]
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r1, r0
    adds r0, r4, #0
    adds r0, #0x7a
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L08068D16
    .align 2, 0
.L08068C6C: .4byte 0x0203E098
.L08068C70: .4byte 0x02020100
.L08068C74: .4byte 0x0203E094
.L08068C78: .4byte 0x02020104
.L08068C7C: .4byte 0x02020108
.L08068C80: .4byte 0x0202010C
.L08068C84: .4byte 0x0202010A
.L08068C88: .4byte 0x0202011C
.L08068C8C:
    ldr r1, .L08068D3C @ =0x02020108
    movs r0, #8
    ldrsb r0, [r6, r0]
    strh r0, [r1]
    ldr r2, .L08068D40 @ =0x0202010C
    movs r0, #0x12
    ldrsb r0, [r6, r0]
    strh r0, [r2]
    movs r0, #0x14
    ldrsb r0, [r6, r0]
    strh r0, [r2, #2]
    movs r0, #0x15
    ldrsb r0, [r6, r0]
    strh r0, [r2, #4]
    movs r0, #0x19
    ldrsb r0, [r6, r0]
    strh r0, [r2, #8]
    movs r0, #0x16
    ldrsb r0, [r6, r0]
    strh r0, [r2, #6]
    movs r0, #0x17
    ldrsb r0, [r6, r0]
    strh r0, [r2, #0xa]
    movs r0, #0x18
    ldrsb r0, [r6, r0]
    strh r0, [r2, #0xc]
    ldr r0, [r6, #4]
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r1, [r6]
    ldrb r1, [r1, #0x13]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    strh r0, [r2, #0xe]
    ldr r1, .L08068D44 @ =0x0202010A
    movs r0, #1
    strh r0, [r1]
    ldr r2, .L08068D48 @ =0x0202011C
    movs r0, #0x12
    ldrsb r0, [r3, r0]
    strh r0, [r2]
    movs r0, #0x14
    ldrsb r0, [r3, r0]
    strh r0, [r2, #2]
    movs r0, #0x15
    ldrsb r0, [r3, r0]
    strh r0, [r2, #4]
    movs r0, #0x19
    ldrsb r0, [r3, r0]
    strh r0, [r2, #8]
    movs r0, #0x16
    ldrsb r0, [r3, r0]
    strh r0, [r2, #6]
    movs r0, #0x17
    ldrsb r0, [r3, r0]
    strh r0, [r2, #0xa]
    movs r0, #0x18
    ldrsb r0, [r3, r0]
    strh r0, [r2, #0xc]
    ldr r0, [r3, #4]
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r1, [r3]
    ldrb r1, [r1, #0x13]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
.L08068D16:
    adds r0, r0, r1
    strh r0, [r2, #0xe]
    ldr r0, .L08068D4C @ =0x02017648
    ldr r1, .L08068D50 @ =0x06002400
    movs r2, #0x90
    lsls r2, r2, #1
    movs r3, #0
    bl InitTextFont
    movs r7, #0
.L08068D2A:
    adds r0, r6, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08068D58
    ldr r1, .L08068D54 @ =0x08BDB5BC
    b .L08068D5A
    .align 2, 0
.L08068D3C: .4byte 0x02020108
.L08068D40: .4byte 0x0202010C
.L08068D44: .4byte 0x0202010A
.L08068D48: .4byte 0x0202011C
.L08068D4C: .4byte 0x02017648
.L08068D50: .4byte 0x06002400
.L08068D54: .4byte 0x08BDB5BC
.L08068D58:
    ldr r1, .L08068E98 @ =0x08BDB5DC
.L08068D5A:
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r0, [r0]
    ldr r0, [r0]
    bl DecodeMsg
    adds r5, r0, #0
    lsls r1, r7, #3
    ldr r0, .L08068E9C @ =0x02017660
    adds r4, r1, r0
    adds r0, r4, #0
    movs r1, #3
    bl InitText
    adds r0, r5, #0
    bl GetStringTextLen
    adds r1, r0, #0
    movs r0, #0x10
    subs r0, r0, r1
    asrs r1, r0, #1
    cmp r1, #0
    bge .L08068D8A
    movs r1, #0
.L08068D8A:
    adds r0, r4, #0
    bl Text_SetCursor
    adds r0, r4, #0
    movs r1, #3
    bl Text_SetColor
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_DrawString
    ldr r1, .L08068EA0 @ =0x082E5BF0
    lsls r0, r7, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsls r1, r0, #1
    ldr r0, .L08068EA4 @ =gBg2Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    adds r7, #1
    cmp r7, #7
    ble .L08068D2A
    movs r7, #0
.L08068DBC:
    lsls r5, r7, #3
    ldr r0, .L08068EA8 @ =0x020176A0
    mov r8, r0
    add r5, r8
    adds r0, r5, #0
    movs r1, #2
    bl InitText
    adds r0, r5, #0
    movs r1, #8
    bl Text_SetCursor
    adds r0, r5, #0
    movs r1, #2
    bl Text_SetColor
    ldr r0, .L08068EAC @ =0x0202010C
    lsls r4, r7, #1
    adds r0, r4, r0
    ldrh r1, [r0]
    adds r0, r5, #0
    bl Text_DrawNumber
    ldr r0, .L08068EA0 @ =0x082E5BF0
    adds r4, r4, r0
    ldrh r4, [r4]
    lsls r1, r4, #1
    ldr r6, .L08068EB0 @ =0x02023C66
    adds r1, r1, r6
    adds r0, r5, #0
    bl PutText
    adds r7, #1
    cmp r7, #7
    ble .L08068DBC
    mov r4, r8
    adds r4, #0x40
    adds r0, r4, #0
    movs r1, #8
    bl InitText
    ldr r0, .L08068EB4 @ =0x02020100
    ldr r0, [r0]
    ldr r0, [r0, #4]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    movs r0, #0xdf
    lsls r0, r0, #1
    adds r1, r6, r0
    adds r0, r4, #0
    bl PutText
    adds r4, #8
    adds r0, r4, #0
    movs r1, #3
    bl InitText
    adds r0, r4, #0
    movs r1, #3
    bl Text_SetColor
    ldr r0, .L08068EB8 @ =0x08CC26D4
    ldr r0, [r0]
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    movs r0, #0xe7
    lsls r0, r0, #1
    adds r1, r6, r0
    adds r0, r4, #0
    bl PutText
    adds r4, #8
    adds r0, r4, #0
    movs r1, #2
    bl InitText
    adds r0, r4, #0
    movs r1, #8
    bl Text_SetCursor
    adds r0, r4, #0
    movs r1, #2
    bl Text_SetColor
    ldr r0, .L08068EBC @ =0x02020108
    ldrh r1, [r0]
    adds r0, r4, #0
    bl Text_DrawNumber
    movs r0, #0xea
    lsls r0, r0, #1
    adds r1, r6, r0
    adds r0, r4, #0
    bl PutText
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08068E98: .4byte 0x08BDB5DC
.L08068E9C: .4byte 0x02017660
.L08068EA0: .4byte 0x082E5BF0
.L08068EA4: .4byte gBg2Tm
.L08068EA8: .4byte 0x020176A0
.L08068EAC: .4byte 0x0202010C
.L08068EB0: .4byte 0x02023C66
.L08068EB4: .4byte 0x02020100
.L08068EB8: .4byte 0x08CC26D4
.L08068EBC: .4byte 0x02020108
    func_end func_08068B28

    thumb_func_start func_08068EC0
func_08068EC0: @ 0x08068EC0
    push {r4, r5, lr}
    adds r4, r1, #0
    lsls r5, r4, #3
    ldr r0, .L08068F08 @ =0x020176A0
    adds r5, r5, r0
    adds r0, r5, #0
    bl ClearText
    adds r0, r5, #0
    movs r1, #8
    bl Text_SetCursor
    adds r0, r5, #0
    movs r1, #2
    bl Text_SetColor
    ldr r0, .L08068F0C @ =0x0202010C
    lsls r4, r4, #1
    adds r0, r4, r0
    ldrh r1, [r0]
    adds r0, r5, #0
    bl Text_DrawNumber
    ldr r0, .L08068F10 @ =0x082E5BF0
    adds r4, r4, r0
    ldrh r4, [r4]
    lsls r1, r4, #1
    ldr r0, .L08068F14 @ =0x02023C66
    adds r1, r1, r0
    adds r0, r5, #0
    bl PutText
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08068F08: .4byte 0x020176A0
.L08068F0C: .4byte 0x0202010C
.L08068F10: .4byte 0x082E5BF0
.L08068F14: .4byte 0x02023C66
    func_end func_08068EC0

    thumb_func_start func_08068F18
func_08068F18: @ 0x08068F18
    push {r4, lr}
    ldr r4, .L08068F44 @ =0x020176E0
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L08068F48 @ =0x02020100
    ldr r0, [r0]
    ldr r0, [r0, #4]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    ldr r1, .L08068F4C @ =0x02023E24
    adds r0, r4, #0
    bl PutText
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08068F44: .4byte 0x020176E0
.L08068F48: .4byte 0x02020100
.L08068F4C: .4byte 0x02023E24
    func_end func_08068F18

    thumb_func_start func_08068F50
func_08068F50: @ 0x08068F50
    push {r4, lr}
    ldr r4, .L08068F84 @ =0x020176F0
    adds r0, r4, #0
    bl ClearText
    adds r0, r4, #0
    movs r1, #8
    bl Text_SetCursor
    adds r0, r4, #0
    movs r1, #2
    bl Text_SetColor
    ldr r0, .L08068F88 @ =0x02020108
    ldrh r1, [r0]
    adds r0, r4, #0
    bl Text_DrawNumber
    ldr r1, .L08068F8C @ =0x02023E3A
    adds r0, r4, #0
    bl PutText
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08068F84: .4byte 0x020176F0
.L08068F88: .4byte 0x02020108
.L08068F8C: .4byte 0x02023E3A
    func_end func_08068F50

    thumb_func_start func_08068F90
func_08068F90: @ 0x08068F90
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r5, .L08068FBC @ =0x020200AC
    ldr r0, .L08068FC0 @ =0x08BDB5FC
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r6, [r5]
    str r4, [r6, #0x5c]
    adds r0, r4, #0
    bl GetAnimAnotherSide
    str r0, [r6, #0x60]
    ldr r0, .L08068FC4 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    beq .L08068FC8
    adds r1, r6, #0
    adds r1, #0x2a
    movs r0, #0
    b .L08068FCE
    .align 2, 0
.L08068FBC: .4byte 0x020200AC
.L08068FC0: .4byte 0x08BDB5FC
.L08068FC4: .4byte 0x0203E02C
.L08068FC8:
    adds r1, r6, #0
    adds r1, #0x2a
    movs r0, #1
.L08068FCE:
    strb r0, [r1]
    movs r0, #0
    movs r1, #0
    strh r1, [r6, #0x2c]
    adds r1, r6, #0
    adds r1, #0x29
    strb r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08068F90

    thumb_func_start func_08068FE4
func_08068FE4: @ 0x08068FE4
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2a
    ldrb r1, [r0]
    cmp r1, #0
    beq .L08068FF8
    adds r0, r4, #0
    bl Proc_Break
    b .L0806904A
.L08068FF8:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08069016
    bl func_0804FB6C
    ldr r0, [r4, #0x5c]
    movs r1, #0x78
    movs r2, #0x58
    bl func_08069F60
    b .L0806904A
.L08069016:
    cmp r0, #0x19
    bne .L08069028
    ldr r0, [r4, #0x5c]
    bl func_08069ED0
    ldr r0, [r4, #0x5c]
    bl func_08069FCC
    b .L0806904A
.L08069028:
    cmp r0, #0x3b
    bne .L08069034
    ldr r0, [r4, #0x5c]
    bl func_08069E30
    b .L0806904A
.L08069034:
    cmp r0, #0x49
    bne .L0806903E
    bl func_0804FBC4
    b .L0806904A
.L0806903E:
    cmp r0, #0x53
    bne .L0806904A
    strh r1, [r4, #0x2c]
    adds r0, r4, #0
    bl Proc_Break
.L0806904A:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08068FE4

    thumb_func_start func_08069050
func_08069050: @ 0x08069050
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    mov sb, r0
    ldr r7, .L08069100 @ =0x020200D8
    movs r4, #0
    str r4, [sp]
    ldr r5, .L08069104 @ =gBg1Tm
    ldr r0, .L08069108 @ =0x01000200
    mov r8, r0
    mov r0, sp
    adds r1, r5, #0
    mov r2, r8
    bl CpuFastSet
    str r4, [sp, #4]
    add r0, sp, #4
    ldr r6, .L0806910C @ =gBg2Tm
    adds r1, r6, #0
    mov r2, r8
    bl CpuFastSet
    ldr r1, .L08069110 @ =0x06006800
    movs r4, #0x80
    lsls r4, r4, #4
    adds r0, r5, #0
    adds r2, r4, #0
    bl RegisterDataMove
    ldr r1, .L08069114 @ =0x06007000
    adds r0, r5, #0
    adds r2, r4, #0
    bl RegisterDataMove
    ldr r1, .L08069118 @ =0x06005000
    adds r0, r6, #0
    adds r2, r4, #0
    bl RegisterDataMove
    ldr r1, .L0806911C @ =0x06005800
    adds r0, r6, #0
    adds r2, r4, #0
    bl RegisterDataMove
    ldr r1, .L08069120 @ =0x0203E028
    ldrh r4, [r1]
    strh r4, [r7]
    movs r0, #3
    strh r0, [r7, #2]
    adds r0, #0xfd
    strh r0, [r7, #4]
    ldrh r3, [r1, #2]
    strh r3, [r7, #6]
    movs r0, #4
    strh r0, [r7, #8]
    movs r0, #0xa0
    lsls r0, r0, #1
    strh r0, [r7, #0xa]
    ldr r0, .L08069124 @ =0x0203E02C
    ldrh r1, [r0]
    strh r1, [r7, #0xc]
    ldr r0, .L08069128 @ =0x0000FFFF
    adds r2, r0, #0
    ldrh r0, [r7, #0xe]
    orrs r0, r2
    strh r0, [r7, #0xe]
    ldr r0, .L0806912C @ =0x06010000
    str r0, [r7, #0x1c]
    ldr r0, .L08069130 @ =0x020145C8
    str r0, [r7, #0x20]
    ldr r0, .L08069134 @ =0x0203E00E
    ldrh r0, [r0]
    strh r0, [r7, #0x10]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    cmp r1, #2
    bne .L08069142
    ldr r0, .L08069138 @ =0x02017744
    ldr r0, [r0]
    cmp r0, #0
    bne .L0806913C
    adds r0, r3, #0
    orrs r0, r2
    strh r0, [r7, #6]
    b .L08069142
    .align 2, 0
.L08069100: .4byte 0x020200D8
.L08069104: .4byte gBg1Tm
.L08069108: .4byte 0x01000200
.L0806910C: .4byte gBg2Tm
.L08069110: .4byte 0x06006800
.L08069114: .4byte 0x06007000
.L08069118: .4byte 0x06005000
.L0806911C: .4byte 0x06005800
.L08069120: .4byte 0x0203E028
.L08069124: .4byte 0x0203E02C
.L08069128: .4byte 0x0000FFFF
.L0806912C: .4byte 0x06010000
.L08069130: .4byte 0x020145C8
.L08069134: .4byte 0x0203E00E
.L08069138: .4byte 0x02017744
.L0806913C:
    adds r0, r4, #0
    orrs r0, r2
    strh r0, [r7]
.L08069142:
    bl func_080554F0
    cmp r0, #0
    bne .L0806916A
    adds r0, r7, #0
    bl func_08054F30
    ldr r3, [r7, #0x14]
    ldr r0, [r3, #0x4c]
    ldr r2, .L0806928C @ =0x0000F3FF
    ands r0, r2
    movs r1, #0xc0
    lsls r1, r1, #4
    orrs r0, r1
    str r0, [r3, #0x4c]
    ldr r3, [r7, #0x18]
    ldr r0, [r3, #0x4c]
    ands r0, r2
    orrs r0, r1
    str r0, [r3, #0x4c]
.L0806916A:
    mov r1, sb
    ldr r2, [r1, #0x5c]
    ldr r1, .L0806928C @ =0x0000F3FF
    adds r0, r1, #0
    ldrh r3, [r2, #8]
    ands r0, r3
    strh r0, [r2, #8]
    mov r0, sb
    ldr r2, [r0, #0x5c]
    movs r0, #0xc0
    lsls r0, r0, #4
    adds r3, r0, #0
    ldrh r0, [r2, #8]
    orrs r0, r3
    strh r0, [r2, #8]
    mov r2, sb
    ldr r0, [r2, #0x60]
    ldrh r2, [r0, #8]
    ands r1, r2
    strh r1, [r0, #8]
    mov r0, sb
    ldr r1, [r0, #0x60]
    movs r4, #0
    ldrh r0, [r1, #8]
    orrs r0, r3
    strh r0, [r1, #8]
    ldr r5, .L08069290 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r5, #0x14]
    ands r0, r2
    strb r0, [r5, #0x14]
    adds r0, r1, #0
    ldrb r3, [r5, #0x10]
    ands r0, r3
    movs r2, #1
    orrs r0, r2
    strb r0, [r5, #0x10]
    ldrb r0, [r5, #0xc]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r5, #0xc]
    movs r0, #3
    ldrb r1, [r5, #0x18]
    orrs r0, r1
    strb r0, [r5, #0x18]
    ldr r0, .L08069294 @ =0x0202012C
    movs r1, #0x90
    strh r1, [r0]
    ldr r0, .L08069298 @ =0x0202012E
    strh r1, [r0]
    movs r0, #2
    movs r1, #0
    movs r2, #8
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #8
    bl SetBgOffset
    movs r1, #0xc0
    lsls r1, r1, #7
    movs r0, #0
    bl  SetBgTilemapOffset
    movs r1, #0xd0
    lsls r1, r1, #7
    movs r0, #1
    bl  SetBgTilemapOffset
    movs r1, #0xa0
    lsls r1, r1, #7
    movs r0, #2
    bl  SetBgTilemapOffset
    movs r0, #1
    movs r1, #1
    bl SetBgScreenSize
    movs r0, #2
    movs r1, #1
    bl SetBgScreenSize
    bl func_08069AF4
    ldr r1, .L0806929C @ =0x020200D0
    str r0, [r1]
    bl func_08069C34
    ldr r1, .L080692A0 @ =0x020200D4
    str r0, [r1]
    bl func_08069B0C
    movs r0, #2
    bl func_0804C48C
    mov r2, sb
    ldr r0, [r2, #0x5c]
    bl func_0804F7D0
    mov r3, sb
    ldr r0, [r3, #0x60]
    bl func_0804F7D0
    bl func_0804FAB4
    bl func_0804F480
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r5, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r5, #1]
    adds r1, r5, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    adds r1, #8
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r5, #0
    adds r0, #0x45
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    mov r0, sb
    bl Proc_Break
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806928C: .4byte 0x0000F3FF
.L08069290: .4byte gDispIo
.L08069294: .4byte 0x0202012C
.L08069298: .4byte 0x0202012E
.L0806929C: .4byte 0x020200D0
.L080692A0: .4byte 0x020200D4
    func_end func_08069050

    thumb_func_start func_080692A4
func_080692A4: @ 0x080692A4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0xc
    adds r7, r0, #0
    ldr r0, .L0806933C @ =0x0203E094
    ldr r0, [r0]
    mov sb, r0
    ldr r0, .L08069340 @ =0x0203E098
    ldr r0, [r0]
    mov r8, r0
    ldr r6, [r7, #0x5c]
    ldr r0, .L08069344 @ =0x081DAFEC
    ldr r5, .L08069348 @ =0x02017784
    adds r1, r5, #0
    bl LZ77UnCompWram
    ldr r0, .L0806934C @ =0x081DB238
    ldr r4, .L08069350 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L08069354 @ =0x020235E0
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #0x14
    bl EfxTmCpyBG
    ldr r1, .L08069358 @ =0x06002000
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r5, #0
    bl RegisterDataMove
    ldr r0, .L0806935C @ =0x081DB334
    ldr r4, .L08069360 @ =0x02022880
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r0, .L08069364 @ =0x081DB354
    ldr r5, .L08069368 @ =0x0201A784
    adds r1, r5, #0
    bl LZ77UnCompWram
    ldr r1, .L0806936C @ =0x06011400
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r0, r5, #0
    bl RegisterDataMove
    ldr r0, .L08069370 @ =0x081DB568
    movs r1, #0x80
    lsls r1, r1, #2
    adds r4, r4, r1
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    movs r0, #0x50
    strh r0, [r7, #0x2c]
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08069374
    mov r1, sb
    b .L08069376
    .align 2, 0
.L0806933C: .4byte 0x0203E094
.L08069340: .4byte 0x0203E098
.L08069344: .4byte 0x081DAFEC
.L08069348: .4byte 0x02017784
.L0806934C: .4byte 0x081DB238
.L08069350: .4byte 0x02019784
.L08069354: .4byte 0x020235E0
.L08069358: .4byte 0x06002000
.L0806935C: .4byte 0x081DB334
.L08069360: .4byte 0x02022880
.L08069364: .4byte 0x081DB354
.L08069368: .4byte 0x0201A784
.L0806936C: .4byte 0x06011400
.L08069370: .4byte 0x081DB568
.L08069374:
    mov r1, r8
.L08069376:
    ldr r0, [r1]
    ldrh r4, [r0, #6]
    ldr r0, .L080693C0 @ =0x08BDB59C
    bl SetFaceConfig
    ldr r0, .L080693C4 @ =0x00001042
    str r0, [sp]
    movs r0, #0
    adds r1, r4, #0
    movs r2, #0xbc
    movs r3, #0x50
    bl StartFace
    ldr r0, .L080693C8 @ =0x030041C0
    ldr r1, [r0]
    movs r2, #0
    movs r0, #0xa0
    strh r0, [r1, #0x36]
    str r2, [sp, #8]
    ldr r1, .L080693CC @ =gBg2Tm
    ldr r2, .L080693D0 @ =0x01000200
    add r0, sp, #8
    bl CpuFastSet
    adds r0, r7, #0
    bl func_08068B28
    adds r0, r7, #0
    bl Proc_Break
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080693C0: .4byte 0x08BDB59C
.L080693C4: .4byte 0x00001042
.L080693C8: .4byte 0x030041C0
.L080693CC: .4byte gBg2Tm
.L080693D0: .4byte 0x01000200
    func_end func_080692A4

    thumb_func_start func_080693D4
func_080693D4: @ 0x080693D4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08069400 @ =func_08069DA4
    bl SetOnHBlankA
    movs r0, #1
    bl EnableBgSync
    movs r0, #4
    bl EnableBgSync
    movs r0, #2
    bl EnableBgSync
    bl EnablePalSync
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08069400: .4byte func_08069DA4
    func_end func_080693D4

    thumb_func_start func_08069404
func_08069404: @ 0x08069404
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r1, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x50
    ble .L0806943A
    strh r1, [r4, #0x2c]
    str r1, [r4, #0x44]
    str r1, [r4, #0x48]
    movs r0, #2
    rsbs r0, r0, #0
    str r0, [r4, #0x4c]
    subs r0, #2
    str r0, [r4, #0x50]
    ldr r0, .L08069440 @ =gPal
    ldr r1, .L08069444 @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    bl CpuFastSet
    adds r0, r4, #0
    bl Proc_Break
.L0806943A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08069440: .4byte gPal
.L08069444: .4byte 0x020165C8
    func_end func_08069404

    thumb_func_start func_08069448
func_08069448: @ 0x08069448
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r3, [r7, #0x44]
    ldr r5, [r7, #0x48]
    ldr r6, [r7, #0x4c]
    ldr r0, [r7, #0x50]
    mov sb, r0
    cmp r3, #0
    bge .L08069468
    movs r3, #0
    b .L0806946E
.L08069468:
    cmp r3, #8
    ble .L0806946E
    movs r3, #8
.L0806946E:
    cmp r5, #0
    bge .L08069476
    movs r5, #0
    b .L0806947C
.L08069476:
    cmp r5, #8
    ble .L0806947C
    movs r5, #8
.L0806947C:
    cmp r6, #0
    bge .L08069484
    movs r6, #0
    b .L0806948A
.L08069484:
    cmp r6, #8
    ble .L0806948A
    movs r6, #8
.L0806948A:
    mov r2, sb
    cmp r2, #0
    bge .L08069494
    movs r0, #0
    b .L0806949C
.L08069494:
    mov r2, sb
    cmp r2, #8
    ble .L0806949E
    movs r0, #8
.L0806949C:
    mov sb, r0
.L0806949E:
    ldr r0, [r7, #0x44]
    adds r0, #1
    str r0, [r7, #0x44]
    ldr r0, [r7, #0x48]
    adds r0, #1
    str r0, [r7, #0x48]
    ldr r0, [r7, #0x4c]
    adds r0, #1
    str r0, [r7, #0x4c]
    ldr r0, [r7, #0x50]
    adds r0, #1
    str r0, [r7, #0x50]
    movs r1, #0x50
    rsbs r1, r1, #0
    movs r4, #8
    str r4, [sp]
    movs r0, #0
    movs r2, #0
    bl Interpolate
    mov r8, r0
    str r4, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #8
    adds r3, r5, #0
    bl Interpolate
    mov sl, r0
    ldr r5, .L0806955C @ =0x0202012C
    str r4, [sp]
    movs r0, #0
    movs r1, #0x90
    movs r2, #0
    adds r3, r6, #0
    bl Interpolate
    strh r0, [r5]
    ldr r5, .L08069560 @ =0x0202012E
    str r4, [sp]
    movs r0, #0
    movs r1, #0x90
    movs r2, #0
    mov r3, sb
    bl Interpolate
    strh r0, [r5]
    ldr r0, .L08069564 @ =0x030041C0
    ldr r1, [r0]
    movs r0, #0x50
    mov r2, r8
    subs r0, r0, r2
    strh r0, [r1, #0x36]
    ldr r0, .L08069568 @ =0x020165C8
    ldr r4, .L0806956C @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #2
    movs r2, #4
    mov r3, sl
    bl EfxPalBlackInOut
    adds r0, r4, #0
    movs r1, #0x13
    movs r2, #0xc
    mov r3, sl
    bl EfxPalBlackInOut
    bl EnablePalSync
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x14
    ble .L0806954A
    movs r0, #0
    strh r0, [r7, #0x2c]
    adds r0, r7, #0
    bl Proc_Break
.L0806954A:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806955C: .4byte 0x0202012C
.L08069560: .4byte 0x0202012E
.L08069564: .4byte 0x030041C0
.L08069568: .4byte 0x020165C8
.L0806956C: .4byte gPal
    func_end func_08069448

    thumb_func_start func_08069570
func_08069570: @ 0x08069570
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0xa0
    movs r1, #1
    bl func_0806A0F8
    ldr r1, .L08069598 @ =0x020200B0
    movs r2, #0
    adds r0, r1, #0
    adds r0, #0x1c
.L08069584:
    str r2, [r0]
    subs r0, #4
    cmp r0, r1
    bge .L08069584
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08069598: .4byte 0x020200B0
    func_end func_08069570

    thumb_func_start func_0806959C
func_0806959C: @ 0x0806959C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #0
    bne .L080695B0
    adds r0, r5, #0
    bl Proc_Break
    b .L080695E8
.L080695B0:
    ldr r0, .L080695F0 @ =func_08069DE0
    bl SetOnHBlankA
    ldr r4, .L080695F4 @ =0x020200D0
    ldr r0, [r4]
    bl Proc_End
    bl func_08069B90
    str r0, [r4]
    ldr r4, .L080695F8 @ =0x000002CD
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #0
    bl func_080676E8
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #8
    strh r0, [r5, #0x2e]
    adds r0, r5, #0
    bl Proc_Break
.L080695E8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080695F0: .4byte func_08069DE0
.L080695F4: .4byte 0x020200D0
.L080695F8: .4byte 0x000002CD
    func_end func_0806959C

    thumb_func_start func_080695FC
func_080695FC: @ 0x080695FC
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08069612
    adds r0, r5, #0
    bl Proc_Break
    b .L08069666
.L08069612:
    ldr r4, .L08069670 @ =0x0202012C
    movs r2, #0x80
    lsls r2, r2, #5
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #1
    movs r1, #0
    bl Interpolate
    strh r0, [r4]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08069666
    ldr r1, .L08069674 @ =0x02020100
    ldr r0, .L08069678 @ =0x02020104
    ldr r0, [r0]
    str r0, [r1]
    adds r0, r5, #0
    bl func_08068F18
    ldr r1, .L0806967C @ =0x02020108
    ldr r0, .L08069680 @ =0x0202010A
    ldrh r0, [r0]
    strh r0, [r1]
    adds r0, r5, #0
    bl func_08068F50
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #8
    strh r0, [r5, #0x2e]
    adds r0, r5, #0
    bl Proc_Break
.L08069666:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08069670: .4byte 0x0202012C
.L08069674: .4byte 0x02020100
.L08069678: .4byte 0x02020104
.L0806967C: .4byte 0x02020108
.L08069680: .4byte 0x0202010A
    func_end func_080695FC

    thumb_func_start func_08069684
func_08069684: @ 0x08069684
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0806969A
    adds r0, r5, #0
    bl Proc_Break
    b .L080696CA
.L0806969A:
    ldr r4, .L080696D4 @ =0x0202012C
    movs r1, #0x80
    lsls r1, r1, #5
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    str r0, [sp]
    movs r0, #4
    movs r2, #0
    bl Interpolate
    strh r0, [r4]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L080696CA
    adds r0, r5, #0
    bl Proc_Break
.L080696CA:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080696D4: .4byte 0x0202012C
    func_end func_08069684

    thumb_func_start func_080696D8
func_080696D8: @ 0x080696D8
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08069730
    strh r0, [r5, #0x2c]
    str r0, [sp]
    str r0, [sp, #4]
    movs r0, #0xa0
    movs r1, #1
    movs r2, #0x84
    movs r3, #0x3c
    bl func_0806A2C0
    ldr r1, .L08069724 @ =0x02020108
    ldr r0, .L08069728 @ =0x0202010A
    ldrh r0, [r0]
    strh r0, [r1]
    adds r0, r5, #0
    bl func_08068F50
    ldr r4, .L0806972C @ =0x000002CD
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #0
    bl func_080676E8
    adds r0, r5, #0
    bl Proc_Break
    b .L0806974A
    .align 2, 0
.L08069724: .4byte 0x02020108
.L08069728: .4byte 0x0202010A
.L0806972C: .4byte 0x000002CD
.L08069730:
    ldr r4, .L08069754 @ =0x020200D0
    ldr r0, [r4]
    bl Proc_End
    bl func_08069AF4
    str r0, [r4]
    movs r0, #0
    strh r0, [r5, #0x2c]
    strh r0, [r5, #0x2e]
    adds r0, r5, #0
    bl Proc_Break
.L0806974A:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08069754: .4byte 0x020200D0
    func_end func_080696D8

    thumb_func_start func_08069758
func_08069758: @ 0x08069758
    push {lr}
    adds r1, r0, #0
    adds r0, #0x2a
    ldrb r2, [r0]
    cmp r2, #0
    beq .L0806976C
    adds r0, r1, #0
    bl Proc_Break
    b .L08069784
.L0806976C:
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x1d
    bgt .L08069784
    strh r2, [r1, #0x2c]
    strh r2, [r1, #0x2e]
    adds r0, r1, #0
    bl Proc_Break
.L08069784:
    pop {r0}
    bx r0
    func_end func_08069758

    thumb_func_start func_08069788
func_08069788: @ 0x08069788
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x14
    bne .L0806985E
    movs r0, #0
    strh r0, [r5, #0x2c]
    ldrh r0, [r5, #0x2e]
    cmp r0, #8
    beq .L08069864
    ldr r7, .L08069834 @ =0x0202010C
.L080697AC:
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    lsls r0, r0, #1
    adds r2, r0, r7
    ldr r1, .L08069838 @ =0x0202011C
    adds r0, r0, r1
    ldrh r0, [r0]
    ldrh r1, [r2]
    subs r6, r0, r1
    cmp r6, #0
    beq .L08069850
    movs r1, #0
    mov r8, r1
    strh r0, [r2]
    movs r2, #0x2e
    ldrsh r1, [r5, r2]
    adds r0, r5, #0
    bl func_08068EC0
    ldr r4, .L0806983C @ =0x00000396
    adds r0, r4, #0
    movs r1, #0x80
    lsls r1, r1, #1
    bl func_080675C8
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #0
    bl func_080676E8
    ldr r1, .L08069840 @ =0x082E5BF0
    movs r0, #0x2e
    ldrsh r4, [r5, r0]
    lsls r0, r4, #1
    adds r0, r0, r1
    ldrh r3, [r0]
    movs r2, #0x1f
    ands r2, r3
    lsls r2, r2, #3
    adds r2, #0x35
    movs r1, #0xfc
    lsls r1, r1, #3
    adds r0, r1, #0
    ands r3, r0
    lsrs r3, r3, #2
    adds r3, #6
    adds r4, #1
    str r4, [sp]
    str r6, [sp, #4]
    movs r0, #0xa0
    movs r1, #1
    bl func_0806A2C0
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    cmp r0, #0
    bne .L0806982E
    ldr r1, .L08069844 @ =0x0203E0BC
    lsls r0, r0, #1
    adds r0, r0, r7
    ldrh r0, [r0]
    strh r0, [r1, #2]
    ldr r1, .L08069848 @ =0x0203E0C0
    ldr r0, .L0806984C @ =0x0000FFFF
    strh r0, [r1, #2]
.L0806982E:
    mov r0, r8
    strh r0, [r5, #0x2c]
    b .L0806985E
    .align 2, 0
.L08069834: .4byte 0x0202010C
.L08069838: .4byte 0x0202011C
.L0806983C: .4byte 0x00000396
.L08069840: .4byte 0x082E5BF0
.L08069844: .4byte 0x0203E0BC
.L08069848: .4byte 0x0203E0C0
.L0806984C: .4byte 0x0000FFFF
.L08069850:
    ldrh r0, [r5, #0x2e]
    adds r0, #1
    strh r0, [r5, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    bne .L080697AC
.L0806985E:
    ldrh r1, [r5, #0x2e]
    cmp r1, #8
    bne .L0806986E
.L08069864:
    movs r0, #0
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
.L0806986E:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08069788

    thumb_func_start func_0806987C
func_0806987C: @ 0x0806987C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x6d
    ble .L080698A2
    movs r0, #0
    strh r0, [r4, #0x2c]
    bl func_0806A15C
    ldr r0, .L080698A8 @ =func_08069DA4
    bl SetOnHBlankA
    adds r0, r4, #0
    bl Proc_Break
.L080698A2:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080698A8: .4byte func_08069DA4
    func_end func_0806987C

    thumb_func_start func_080698AC
func_080698AC: @ 0x080698AC
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_080698AC

    thumb_func_start func_080698B8
func_080698B8: @ 0x080698B8
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    ldr r5, .L0806996C @ =0x0202012C
    movs r0, #0x2c
    ldrsh r3, [r7, r0]
    movs r4, #8
    str r4, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x90
    bl Interpolate
    strh r0, [r5]
    ldr r5, .L08069970 @ =0x0202012E
    movs r0, #0x2c
    ldrsh r3, [r7, r0]
    str r4, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x90
    bl Interpolate
    strh r0, [r5]
    movs r2, #0x50
    rsbs r2, r2, #0
    movs r0, #0x2c
    ldrsh r3, [r7, r0]
    str r4, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    adds r5, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r7, r0]
    str r4, [sp]
    movs r0, #0
    movs r1, #8
    movs r2, #0
    bl Interpolate
    adds r6, r0, #0
    ldr r0, .L08069974 @ =0x030041C0
    ldr r1, [r0]
    movs r0, #0x50
    subs r0, r0, r5
    strh r0, [r1, #0x36]
    ldr r0, .L08069978 @ =0x020165C8
    ldr r4, .L0806997C @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #2
    movs r2, #4
    adds r3, r6, #0
    bl EfxPalBlackInOut
    adds r0, r4, #0
    movs r1, #0x13
    movs r2, #0xc
    adds r3, r6, #0
    bl EfxPalBlackInOut
    bl EnablePalSync
    movs r0, #7
.L08069944:
    subs r0, #1
    cmp r0, #0
    bge .L08069944
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    ble .L08069962
    movs r0, #0
    strh r0, [r7, #0x2c]
    adds r0, r7, #0
    bl Proc_Break
.L08069962:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806996C: .4byte 0x0202012C
.L08069970: .4byte 0x0202012E
.L08069974: .4byte 0x030041C0
.L08069978: .4byte 0x020165C8
.L0806997C: .4byte gPal
    func_end func_080698B8

    thumb_func_start func_08069980
func_08069980: @ 0x08069980
    push {r4, r5, r6, lr}
    sub sp, #0x2c
    adds r5, r0, #0
    ldr r4, .L08069A94 @ =0x020200D8
    bl func_080554F0
    cmp r0, #0
    bne .L08069996
    adds r0, r4, #0
    bl func_080552DC
.L08069996:
    movs r1, #0xc0
    lsls r1, r1, #7
    movs r0, #0
    bl  SetBgTilemapOffset
    movs r1, #0xd0
    lsls r1, r1, #7
    movs r0, #1
    bl  SetBgTilemapOffset
    movs r1, #0xe0
    lsls r1, r1, #7
    movs r0, #2
    bl  SetBgTilemapOffset
    movs r0, #1
    movs r1, #0
    bl SetBgScreenSize
    movs r0, #2
    movs r1, #0
    bl SetBgScreenSize
    mov r4, sp
    ldr r2, .L08069A98 @ =0x0203E028
    ldrh r0, [r2]
    movs r6, #0
    strh r0, [r4]
    movs r0, #4
    strh r0, [r4, #2]
    movs r1, #0xa0
    lsls r1, r1, #2
    strh r1, [r4, #4]
    ldrh r0, [r2, #2]
    strh r0, [r4, #6]
    movs r0, #5
    strh r0, [r4, #8]
    strh r1, [r4, #0xa]
    ldr r0, .L08069A9C @ =0x0203E02C
    ldrh r0, [r0]
    strh r0, [r4, #0xc]
    movs r0, #2
    strh r0, [r4, #0xe]
    str r6, [sp, #0x1c]
    ldr r0, .L08069AA0 @ =0x020145C8
    str r0, [sp, #0x20]
    ldr r0, .L08069AA4 @ =0x0203E00E
    ldrh r0, [r0]
    strh r0, [r4, #0x10]
    bl func_080554F0
    cmp r0, #0
    bne .L08069A10
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    mov r0, sp
    bl func_08054F30
.L08069A10:
    ldr r2, [r5, #0x5c]
    ldr r1, .L08069AA8 @ =0x0000F3FF
    adds r0, r1, #0
    ldrh r3, [r2, #8]
    ands r0, r3
    strh r0, [r2, #8]
    ldr r3, [r5, #0x5c]
    movs r0, #0x80
    lsls r0, r0, #4
    adds r2, r0, #0
    ldrh r0, [r3, #8]
    orrs r0, r2
    strh r0, [r3, #8]
    ldr r0, [r5, #0x60]
    ldrh r3, [r0, #8]
    ands r1, r3
    strh r1, [r0, #8]
    ldr r0, [r5, #0x60]
    ldrh r1, [r0, #8]
    orrs r2, r1
    strh r2, [r0, #8]
    str r6, [sp, #0x28]
    add r0, sp, #0x28
    ldr r1, .L08069AAC @ =gBg1Tm
    ldr r2, .L08069AB0 @ =0x01000200
    bl CpuFastSet
    movs r0, #2
    bl EnableBgSync
    movs r0, #0
    bl func_0804C48C
    ldr r3, .L08069AB4 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    movs r0, #0
    bl EndFaceById
    adds r0, r5, #0
    bl Proc_Break
    add sp, #0x2c
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08069A94: .4byte 0x020200D8
.L08069A98: .4byte 0x0203E028
.L08069A9C: .4byte 0x0203E02C
.L08069AA0: .4byte 0x020145C8
.L08069AA4: .4byte 0x0203E00E
.L08069AA8: .4byte 0x0000F3FF
.L08069AAC: .4byte gBg1Tm
.L08069AB0: .4byte 0x01000200
.L08069AB4: .4byte gDispIo
    func_end func_08069980

    thumb_func_start func_08069AB8
func_08069AB8: @ 0x08069AB8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08069AEC @ =0x020200D0
    ldr r0, [r0]
    bl Proc_End
    ldr r0, .L08069AF0 @ =0x020200D4
    ldr r0, [r0]
    bl Proc_End
    ldr r0, [r4, #0x5c]
    bl func_0804F7F0
    ldr r0, [r4, #0x60]
    bl func_0804F7F0
    bl func_0804FAC4
    bl func_0804F490
    adds r4, #0x29
    movs r0, #1
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08069AEC: .4byte 0x020200D0
.L08069AF0: .4byte 0x020200D4
    func_end func_08069AB8

    thumb_func_start func_08069AF4
func_08069AF4: @ 0x08069AF4
    push {lr}
    ldr r0, .L08069B08 @ =0x08BDB6AC
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    pop {r1}
    bx r1
    .align 2, 0
.L08069B08: .4byte 0x08BDB6AC
    func_end func_08069AF4

    thumb_func_start func_08069B0C
func_08069B0C: @ 0x08069B0C
    push {r4, r5, r6, lr}
    ldr r0, .L08069B38 @ =0x0201FDAC
    ldr r0, [r0]
    ldr r2, .L08069B3C @ =0x0201FB2C
    cmp r0, #0
    bne .L08069B1A
    ldr r2, .L08069B40 @ =0x0201FC6C
.L08069B1A:
    ldr r1, .L08069B44 @ =0x0201FDB8
    cmp r0, #0
    bne .L08069B22
    ldr r1, .L08069B48 @ =0x0201FEF8
.L08069B22:
    movs r3, #0
    movs r6, #0
    ldr r5, .L08069B4C @ =0x0202012C
    ldr r4, .L08069B50 @ =0x0202012E
.L08069B2A:
    cmp r3, #0x27
    bhi .L08069B54
    strh r6, [r2]
    adds r2, #2
    strh r6, [r1]
    b .L08069B70
    .align 2, 0
.L08069B38: .4byte 0x0201FDAC
.L08069B3C: .4byte 0x0201FB2C
.L08069B40: .4byte 0x0201FC6C
.L08069B44: .4byte 0x0201FDB8
.L08069B48: .4byte 0x0201FEF8
.L08069B4C: .4byte 0x0202012C
.L08069B50: .4byte 0x0202012E
.L08069B54:
    cmp r3, #0x47
    bhi .L08069B62
    ldrh r0, [r5]
    strh r0, [r2]
    adds r2, #2
    ldrh r0, [r5]
    b .L08069B6E
.L08069B62:
    cmp r3, #0x9f
    bhi .L08069B72
    ldrh r0, [r4]
    strh r0, [r2]
    adds r2, #2
    ldrh r0, [r4]
.L08069B6E:
    strh r0, [r1]
.L08069B70:
    adds r1, #2
.L08069B72:
    adds r3, #1
    cmp r3, #0x9f
    bls .L08069B2A
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08069B0C

    thumb_func_start func_08069B80
func_08069B80: @ 0x08069B80
    bx lr
    func_end func_08069B80

    thumb_func_start func_08069B84
func_08069B84: @ 0x08069B84
    push {lr}
    bl func_08069B0C
    pop {r0}
    bx r0
    func_end func_08069B84

    thumb_func_start func_08069B90
func_08069B90: @ 0x08069B90
    push {lr}
    ldr r0, .L08069BA4 @ =0x08BDB6CC
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    pop {r1}
    bx r1
    .align 2, 0
.L08069BA4: .4byte 0x08BDB6CC
    func_end func_08069B90

    thumb_func_start func_08069BA8
func_08069BA8: @ 0x08069BA8
    bx lr
    func_end func_08069BA8

    thumb_func_start func_08069BAC
func_08069BAC: @ 0x08069BAC
    push {r4, r5, r6, lr}
    ldr r0, .L08069BF8 @ =0x0201FDAC
    ldr r0, [r0]
    ldr r3, .L08069BFC @ =0x0201FB2C
    cmp r0, #0
    bne .L08069BBA
    ldr r3, .L08069C00 @ =0x0201FC6C
.L08069BBA:
    ldr r2, .L08069C04 @ =0x0201FDB8
    cmp r0, #0
    bne .L08069BC2
    ldr r2, .L08069C08 @ =0x0201FEF8
.L08069BC2:
    movs r4, #0
    movs r5, #0
    ldr r0, .L08069C0C @ =0x08BDB6EC
    adds r6, r0, #0
    subs r6, #0x50
.L08069BCC:
    cmp r4, #0x27
    bls .L08069C1C
    cmp r4, #0x47
    bhi .L08069C18
    movs r0, #0
    ldrsh r1, [r6, r0]
    ldr r0, .L08069C10 @ =0x0202012C
    ldrh r0, [r0]
    muls r0, r1, r0
    lsls r0, r0, #4
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    adds r0, r4, r0
    cmp r0, #0x2e
    bls .L08069BEE
    cmp r0, #0x51
    bls .L08069BF0
.L08069BEE:
    ldr r1, .L08069C14 @ =0x0000FFE0
.L08069BF0:
    strh r1, [r3]
    adds r3, #2
    strh r1, [r2]
    b .L08069C22
    .align 2, 0
.L08069BF8: .4byte 0x0201FDAC
.L08069BFC: .4byte 0x0201FB2C
.L08069C00: .4byte 0x0201FC6C
.L08069C04: .4byte 0x0201FDB8
.L08069C08: .4byte 0x0201FEF8
.L08069C0C: .4byte 0x08BDB6EC
.L08069C10: .4byte 0x0202012C
.L08069C14: .4byte 0x0000FFE0
.L08069C18:
    cmp r4, #0x9f
    bhi .L08069C24
.L08069C1C:
    strh r5, [r3]
    adds r3, #2
    strh r5, [r2]
.L08069C22:
    adds r2, #2
.L08069C24:
    adds r6, #2
    adds r4, #1
    cmp r4, #0x9f
    bls .L08069BCC
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08069BAC

    thumb_func_start func_08069C34
func_08069C34: @ 0x08069C34
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r1, .L08069CD0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r2, .L08069CD4 @ =0x0201FB2C
    movs r1, #0
    adds r6, r2, #0
    ldr r4, .L08069CD8 @ =0x0201FC6C
    ldr r0, .L08069CDC @ =0x0201FDB8
    ldr r5, .L08069CE0 @ =0x0201FEF8
    ldr r7, .L08069CE4 @ =0x0201FB20
    ldr r3, .L08069CE8 @ =0x0201FDAC
    mov ip, r3
    ldr r3, .L08069CEC @ =0x0201FB24
    mov r8, r3
    ldr r3, .L08069CF0 @ =0x0201FDB0
    mov sb, r3
    ldr r3, .L08069CF4 @ =0x0201FB28
    mov sl, r3
    movs r3, #0
.L08069C66:
    strh r3, [r2]
    adds r2, #2
    adds r1, #1
    cmp r1, #0x9f
    bls .L08069C66
    adds r2, r4, #0
    movs r1, #0
    movs r3, #0
.L08069C76:
    strh r3, [r2]
    adds r2, #2
    adds r1, #1
    cmp r1, #0x9f
    bls .L08069C76
    adds r2, r0, #0
    movs r1, #0
    movs r3, #0
.L08069C86:
    strh r3, [r2]
    adds r2, #2
    adds r1, #1
    cmp r1, #0x9f
    bls .L08069C86
    adds r2, r5, #0
    movs r1, #0
    movs r3, #0
.L08069C96:
    strh r3, [r2]
    adds r2, #2
    adds r1, #1
    cmp r1, #0x9f
    bls .L08069C96
    movs r4, #0
    str r4, [r7]
    mov r1, ip
    str r4, [r1]
    mov r3, r8
    str r6, [r3]
    mov r1, sb
    str r0, [r1]
    mov r3, sl
    str r6, [r3]
    ldr r1, .L08069CF8 @ =0x0201FDB4
    str r0, [r1]
    ldr r0, .L08069CFC @ =0x08BDB72C
    movs r1, #0
    bl Proc_Start
    strh r4, [r0, #0x2c]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08069CD0: .4byte 0x0201774C
.L08069CD4: .4byte 0x0201FB2C
.L08069CD8: .4byte 0x0201FC6C
.L08069CDC: .4byte 0x0201FDB8
.L08069CE0: .4byte 0x0201FEF8
.L08069CE4: .4byte 0x0201FB20
.L08069CE8: .4byte 0x0201FDAC
.L08069CEC: .4byte 0x0201FB24
.L08069CF0: .4byte 0x0201FDB0
.L08069CF4: .4byte 0x0201FB28
.L08069CF8: .4byte 0x0201FDB4
.L08069CFC: .4byte 0x08BDB72C
    func_end func_08069C34

    thumb_func_start func_08069D00
func_08069D00: @ 0x08069D00
    push {lr}
    movs r0, #0
    bl SetOnHBlankA
    pop {r0}
    bx r0
    func_end func_08069D00

    thumb_func_start func_08069D0C
func_08069D0C: @ 0x08069D0C
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08069D0C

    thumb_func_start func_08069D18
func_08069D18: @ 0x08069D18
    ldr r0, .L08069D38 @ =gBmSt
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r3, .L08069D3C @ =0x0201FB24
    ldr r2, .L08069D40 @ =0x0201FDB0
    cmp r0, #0
    beq .L08069D84
    ldr r1, .L08069D44 @ =0x0201FB20
    ldr r0, [r1]
    cmp r0, #1
    bne .L08069D4C
    movs r0, #0
    str r0, [r1]
    ldr r0, .L08069D48 @ =0x0201FB2C
    b .L08069D52
    .align 2, 0
.L08069D38: .4byte gBmSt
.L08069D3C: .4byte 0x0201FB24
.L08069D40: .4byte 0x0201FDB0
.L08069D44: .4byte 0x0201FB20
.L08069D48: .4byte 0x0201FB2C
.L08069D4C:
    movs r0, #1
    str r0, [r1]
    ldr r0, .L08069D68 @ =0x0201FC6C
.L08069D52:
    str r0, [r3]
    ldr r1, .L08069D6C @ =0x0201FDAC
    ldr r0, [r1]
    cmp r0, #1
    bne .L08069D78
    movs r0, #0
    str r0, [r1]
    ldr r1, .L08069D70 @ =0x0201FDB0
    ldr r0, .L08069D74 @ =0x0201FDB8
    b .L08069D80
    .align 2, 0
.L08069D68: .4byte 0x0201FC6C
.L08069D6C: .4byte 0x0201FDAC
.L08069D70: .4byte 0x0201FDB0
.L08069D74: .4byte 0x0201FDB8
.L08069D78:
    movs r0, #1
    str r0, [r1]
    ldr r1, .L08069D94 @ =0x0201FDB0
    ldr r0, .L08069D98 @ =0x0201FEF8
.L08069D80:
    str r0, [r1]
    adds r2, r1, #0
.L08069D84:
    ldr r1, .L08069D9C @ =0x0201FB28
    ldr r0, [r3]
    str r0, [r1]
    ldr r1, .L08069DA0 @ =0x0201FDB4
    ldr r0, [r2]
    str r0, [r1]
    bx lr
    .align 2, 0
.L08069D94: .4byte 0x0201FDB0
.L08069D98: .4byte 0x0201FEF8
.L08069D9C: .4byte 0x0201FB28
.L08069DA0: .4byte 0x0201FDB4
    func_end func_08069D18

    thumb_func_start func_08069DA4
func_08069DA4: @ 0x08069DA4
    ldr r0, .L08069DD0 @ =0x04000004
    ldrh r1, [r0]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08069DCC
    ldr r3, .L08069DD4 @ =0x04000018
    ldr r2, .L08069DD8 @ =0x0201FB28
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
    subs r3, #4
    ldr r2, .L08069DDC @ =0x0201FDB4
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
.L08069DCC:
    bx lr
    .align 2, 0
.L08069DD0: .4byte 0x04000004
.L08069DD4: .4byte 0x04000018
.L08069DD8: .4byte 0x0201FB28
.L08069DDC: .4byte 0x0201FDB4
    func_end func_08069DA4

    thumb_func_start func_08069DE0
func_08069DE0: @ 0x08069DE0
    push {r4, r5, r6, lr}
    ldr r0, .L08069E1C @ =0x04000004
    ldrh r1, [r0]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08069E14
    ldr r3, .L08069E20 @ =0x0400001A
    ldr r4, .L08069E24 @ =gDispIo
    ldr r2, .L08069E28 @ =0x0201FB28
    ldr r0, [r2]
    ldrh r5, [r4, #0x26]
    ldrh r6, [r0]
    adds r1, r5, r6
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
    subs r3, #4
    ldr r2, .L08069E2C @ =0x0201FDB4
    ldr r0, [r2]
    ldrh r4, [r4, #0x22]
    ldrh r5, [r0]
    adds r1, r4, r5
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
.L08069E14:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08069E1C: .4byte 0x04000004
.L08069E20: .4byte 0x0400001A
.L08069E24: .4byte gDispIo
.L08069E28: .4byte 0x0201FB28
.L08069E2C: .4byte 0x0201FDB4
    func_end func_08069DE0

    thumb_func_start func_08069E30
func_08069E30: @ 0x08069E30
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08069E64 @ =0x08BDB754
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08069E68 @ =0x082E5C00
    str r1, [r0, #0x48]
    ldr r1, .L08069E6C @ =0x08BDB76C
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L08069E70 @ =0x08BDB798
    str r1, [r0, #0x54]
    ldr r0, .L08069E74 @ =0x081E3EB4
    movs r1, #0x20
    bl SpellFx_RegisterBgPal
    bl SpellFx_SetSomeColorEffect
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08069E64: .4byte 0x08BDB754
.L08069E68: .4byte 0x082E5C00
.L08069E6C: .4byte 0x08BDB76C
.L08069E70: .4byte 0x08BDB798
.L08069E74: .4byte 0x081E3EB4
    func_end func_08069E30

    thumb_func_start func_08069E78
func_08069E78: @ 0x08069E78
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L08069EB4
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    ldr r5, [r4, #0x54]
    ldr r0, [r4, #0x5c]
    lsls r4, r3, #2
    adds r1, r4, r1
    ldr r1, [r1]
    adds r2, r4, r2
    ldr r2, [r2]
    bl SpellFx_WriteBgMap
    adds r4, r4, r5
    ldr r0, [r4]
    movs r1, #0x80
    lsls r1, r1, #6
    bl SpellFx_RegisterBgGfx
    b .L08069ECA
.L08069EB4:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L08069ECA
    bl SpellFx_ClearBG1
    bl SpellFx_ClearColorEffects
    adds r0, r4, #0
    bl Proc_Break
.L08069ECA:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08069E78

    thumb_func_start func_08069ED0
func_08069ED0: @ 0x08069ED0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08069F08 @ =0x08BDB7C4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08069F0C @ =0x082E5C2E
    str r1, [r0, #0x48]
    ldr r1, .L08069F10 @ =0x08BDB7DC
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L08069F14 @ =0x081E4F9C
    movs r1, #0x80
    lsls r1, r1, #6
    bl SpellFx_RegisterBgGfx
    ldr r0, .L08069F18 @ =0x081E565C
    movs r1, #0x20
    bl SpellFx_RegisterBgPal
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08069F08: .4byte 0x08BDB7C4
.L08069F0C: .4byte 0x082E5C2E
.L08069F10: .4byte 0x08BDB7DC
.L08069F14: .4byte 0x081E4F9C
.L08069F18: .4byte 0x081E565C
    func_end func_08069ED0

    thumb_func_start func_08069F1C
func_08069F1C: @ 0x08069F1C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08069F4A
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl SpellFx_WriteBgMap
    b .L08069F58
.L08069F4A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L08069F58
    adds r0, r4, #0
    bl Proc_Break
.L08069F58:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08069F1C

    thumb_func_start func_08069F60
func_08069F60: @ 0x08069F60
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    ldr r0, .L08069FB0 @ =0x08BDB7F4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L08069FB4 @ =0x08B9CA30
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl EfxCreateFrontAnim
    str r0, [r4, #0x64]
    strh r6, [r0, #2]
    mov r1, r8
    strh r1, [r0, #4]
    ldr r0, .L08069FB8 @ =0x081E5D38
    movs r1, #0x80
    lsls r1, r1, #5
    bl SpellFx_RegisterObjGfx
    ldr r0, .L08069FBC @ =0x081E565C
    movs r1, #0x20
    bl SpellFx_RegisterObjPal
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08069FB0: .4byte 0x08BDB7F4
.L08069FB4: .4byte 0x08B9CA30
.L08069FB8: .4byte 0x081E5D38
.L08069FBC: .4byte 0x081E565C
    func_end func_08069F60

    thumb_func_start func_08069FC0
func_08069FC0: @ 0x08069FC0
    push {lr}
    ldr r0, [r0, #0x64]
    bl AnimDelete
    pop {r0}
    bx r0
    func_end func_08069FC0

    thumb_func_start func_08069FCC
func_08069FCC: @ 0x08069FCC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08069FF4 @ =0x08BDB814
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    strh r2, [r0, #0x2e]
    movs r1, #0x19
    strh r1, [r0, #0x30]
    str r2, [r0, #0x44]
    ldr r1, .L08069FF8 @ =0x082E5C48
    str r1, [r0, #0x48]
    ldr r1, .L08069FFC @ =0x081E56DC
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08069FF4: .4byte 0x08BDB814
.L08069FF8: .4byte 0x082E5C48
.L08069FFC: .4byte 0x081E56DC
    func_end func_08069FCC

    thumb_func_start func_0806A000
func_0806A000: @ 0x0806A000
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L0806A02A
    ldr r0, [r4, #0x4c]
    ldr r1, .L0806A058 @ =0x02022862
    movs r2, #8
    str r2, [sp]
    adds r2, r3, #0
    movs r3, #0xf
    bl func_0805067C
.L0806A02A:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    movs r2, #0
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r3, [r4, #0x30]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L0806A050
    strh r2, [r4, #0x2c]
    strh r2, [r4, #0x2e]
    str r2, [r4, #0x44]
    ldr r0, .L0806A05C @ =0x082E5C8A
    str r0, [r4, #0x48]
    ldr r0, .L0806A060 @ =0x081E565C
    str r0, [r4, #0x4c]
    adds r0, r4, #0
    bl Proc_Break
.L0806A050:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A058: .4byte 0x02022862
.L0806A05C: .4byte 0x082E5C8A
.L0806A060: .4byte 0x081E565C
    func_end func_0806A000

    thumb_func_start func_0806A064
func_0806A064: @ 0x0806A064
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0806A08A
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl SpellFx_RegisterBgPal
    b .L0806A098
.L0806A08A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0806A098
    adds r0, r4, #0
    bl Proc_Break
.L0806A098:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806A064

    thumb_func_start func_0806A0A0
func_0806A0A0: @ 0x0806A0A0
    movs r1, #0
    strh r1, [r0, #0x2e]
    bx lr
    func_end func_0806A0A0

    thumb_func_start func_0806A0A8
func_0806A0A8: @ 0x0806A0A8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r1, .L0806A0F4 @ =0x083F3074
    ldrh r4, [r5, #0x2e]
    adds r4, #1
    strh r4, [r5, #0x2e]
    movs r0, #3
    ands r0, r4
    cmp r0, #0
    bne .L0806A0EE
    lsls r4, r4, #0x10
    asrs r4, r4, #0x12
    movs r0, #0xf
    ands r4, r0
    lsls r4, r4, #1
    adds r4, r4, r1
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    adds r1, #0x10
    lsls r1, r1, #5
    adds r1, #0x12
    adds r0, r4, #0
    movs r2, #0xe
    bl ApplyPaletteExt
    adds r4, #0x40
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    adds r1, #0x11
    lsls r1, r1, #5
    adds r1, #0x12
    adds r0, r4, #0
    movs r2, #0xe
    bl ApplyPaletteExt
.L0806A0EE:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A0F4: .4byte 0x083F3074
    func_end func_0806A0A8

    thumb_func_start func_0806A0F8
func_0806A0F8: @ 0x0806A0F8
    push {r4, r5, lr}
    adds r5, r1, #0
    ldr r2, .L0806A144 @ =0x083F34B0
    ldr r1, .L0806A148 @ =0x000003FF
    ands r1, r0
    lsls r1, r1, #5
    ldr r0, .L0806A14C @ =0x06010000
    adds r1, r1, r0
    adds r0, r2, #0
    bl Decompress
    ldr r4, .L0806A150 @ =0x083F3450
    adds r1, r5, #0
    adds r1, #0x10
    lsls r1, r1, #5
    adds r0, r4, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r1, r5, #0
    adds r1, #0x11
    lsls r1, r1, #5
    adds r0, r4, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0806A154 @ =0x08BDB834
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r5, [r0, #0x2c]
    ldr r0, .L0806A158 @ =0x02020130
    str r1, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A144: .4byte 0x083F34B0
.L0806A148: .4byte 0x000003FF
.L0806A14C: .4byte 0x06010000
.L0806A150: .4byte 0x083F3450
.L0806A154: .4byte 0x08BDB834
.L0806A158: .4byte 0x02020130
    func_end func_0806A0F8

    thumb_func_start func_0806A15C
func_0806A15C: @ 0x0806A15C
    push {lr}
    ldr r0, .L0806A170 @ =0x08BDB834
    bl Proc_EndEach
    ldr r1, .L0806A174 @ =0x02020130
    movs r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L0806A170: .4byte 0x08BDB834
.L0806A174: .4byte 0x02020130
    func_end func_0806A15C

    thumb_func_start func_0806A178
func_0806A178: @ 0x0806A178
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r1, #0
    ldr r1, .L0806A1D4 @ =0x081E5FD0
    mov r8, r1
    subs r0, #1
    lsls r4, r0, #1
    adds r0, r4, #0
    cmp r4, #0
    bge .L0806A190
    rsbs r0, r4, #0
.L0806A190:
    ldr r5, .L0806A1D8 @ =0x000003FF
    ands r0, r5
    lsls r0, r0, #5
    add r0, r8
    adds r1, r6, #0
    adds r1, #0x2c
    ands r1, r5
    lsls r1, r1, #5
    ldr r7, .L0806A1DC @ =0x06010000
    adds r1, r1, r7
    movs r2, #0x40
    bl func_08014BEC
    adds r0, r4, #0
    cmp r0, #0
    bge .L0806A1B2
    rsbs r0, r0, #0
.L0806A1B2:
    adds r0, #0x20
    ands r0, r5
    lsls r0, r0, #5
    add r0, r8
    adds r1, r6, #0
    adds r1, #0x4c
    ands r1, r5
    lsls r1, r1, #5
    adds r1, r1, r7
    movs r2, #0x40
    bl func_08014BEC
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A1D4: .4byte 0x081E5FD0
.L0806A1D8: .4byte 0x000003FF
.L0806A1DC: .4byte 0x06010000
    func_end func_0806A178

    thumb_func_start func_0806A1E0
func_0806A1E0: @ 0x0806A1E0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    adds r6, r1, #0
    ldr r0, .L0806A228 @ =0x083F373C
    mov sb, r0
    ldr r0, .L0806A22C @ =0x081E5FD0
    mov r8, r0
    cmp r7, #0
    blt .L0806A238
    movs r0, #0xc0
    lsls r0, r0, #2
    add r0, r8
    adds r1, #0x2c
    ldr r5, .L0806A230 @ =0x000003FF
    ands r1, r5
    lsls r1, r1, #5
    ldr r4, .L0806A234 @ =0x06010000
    adds r1, r1, r4
    movs r2, #0x40
    bl func_08014BEC
    movs r0, #0xe0
    lsls r0, r0, #3
    add r0, r8
    adds r1, r6, #0
    adds r1, #0x4c
    ands r1, r5
    lsls r1, r1, #5
    adds r1, r1, r4
    movs r2, #0x40
    bl func_08014BEC
    b .L0806A268
    .align 2, 0
.L0806A228: .4byte 0x083F373C
.L0806A22C: .4byte 0x081E5FD0
.L0806A230: .4byte 0x000003FF
.L0806A234: .4byte 0x06010000
.L0806A238:
    movs r0, #0xd0
    lsls r0, r0, #2
    add r0, r8
    adds r1, r6, #0
    adds r1, #0x2c
    ldr r5, .L0806A2B8 @ =0x000003FF
    ands r1, r5
    lsls r1, r1, #5
    ldr r4, .L0806A2BC @ =0x06010000
    adds r1, r1, r4
    movs r2, #0x40
    bl func_08014BEC
    movs r0, #0xe8
    lsls r0, r0, #3
    add r0, r8
    adds r1, r6, #0
    adds r1, #0x4c
    ands r1, r5
    lsls r1, r1, #5
    adds r1, r1, r4
    movs r2, #0x40
    bl func_08014BEC
.L0806A268:
    adds r0, r7, #0
    cmp r7, #0
    bge .L0806A270
    rsbs r0, r7, #0
.L0806A270:
    ldr r4, .L0806A2B8 @ =0x000003FF
    ands r0, r4
    lsls r0, r0, #5
    add r0, sb
    adds r1, r6, #0
    adds r1, #0x2d
    ands r1, r4
    lsls r1, r1, #5
    ldr r5, .L0806A2BC @ =0x06010000
    adds r1, r1, r5
    movs r2, #0x20
    bl func_08014BEC
    adds r0, r7, #0
    cmp r0, #0
    bge .L0806A292
    rsbs r0, r0, #0
.L0806A292:
    adds r0, #0x20
    ands r0, r4
    lsls r0, r0, #5
    add r0, sb
    adds r1, r6, #0
    adds r1, #0x4d
    ands r1, r4
    lsls r1, r1, #5
    adds r1, r1, r5
    movs r2, #0x20
    bl func_08014BEC
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A2B8: .4byte 0x000003FF
.L0806A2BC: .4byte 0x06010000
    func_end func_0806A1E0

    thumb_func_start func_0806A2C0
func_0806A2C0: @ 0x0806A2C0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r8, r2
    mov sb, r3
    str r0, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    subs r0, #1
    lsls r0, r0, #1
    ldr r1, [sp, #0xc]
    adds r0, r1, r0
    str r0, [sp, #0x18]
    ldr r3, [sp, #0x10]
    lsls r6, r3, #0xc
    adds r7, r1, #0
    movs r0, #0x80
    lsls r0, r0, #3
    orrs r7, r0
    adds r5, r6, #0
    orrs r5, r7
    mov r0, r8
    subs r0, #0x12
    mov r1, sb
    subs r1, #4
    ldr r2, .L0806A340 @ =0x08B9E2BC
    str r5, [sp]
    movs r3, #0
    mov sl, r3
    str r3, [sp, #4]
    movs r3, #5
    str r3, [sp, #8]
    movs r3, #0
    bl func_08067300
    ldr r0, [sp, #0x3c]
    cmp r0, #0
    beq .L0806A3BA
    ldr r0, .L0806A344 @ =0x08BDB84C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    ldr r1, [sp, #0x40]
    cmp r1, #0
    blt .L0806A34C
    ldr r2, .L0806A348 @ =0x08B9E2EC
    str r5, [sp]
    mov r3, sl
    str r3, [sp, #4]
    movs r0, #5
    str r0, [sp, #8]
    mov r0, r8
    mov r1, sb
    movs r3, #2
    bl func_08067300
    str r0, [r4, #0x64]
    b .L0806A392
    .align 2, 0
.L0806A340: .4byte 0x08B9E2BC
.L0806A344: .4byte 0x08BDB84C
.L0806A348: .4byte 0x08B9E2EC
.L0806A34C:
    ldr r1, [sp, #0x18]
    movs r3, #0x80
    lsls r3, r3, #3
    orrs r1, r3
    orrs r1, r6
    mov r0, r8
    subs r0, #3
    ldr r2, .L0806A3CC @ =0x08B9E338
    str r1, [sp]
    mov r1, sl
    str r1, [sp, #4]
    movs r3, #5
    str r3, [sp, #8]
    mov r1, sb
    movs r3, #2
    bl func_08067300
    str r0, [r4, #0x60]
    orrs r6, r7
    ldr r2, .L0806A3D0 @ =0x08B9E31C
    str r6, [sp]
    mov r0, sl
    str r0, [sp, #4]
    movs r1, #5
    str r1, [sp, #8]
    mov r0, r8
    mov r1, sb
    movs r3, #2
    bl func_08067300
    str r0, [r4, #0x64]
    ldr r0, [sp, #0x40]
    ldr r1, [sp, #0x18]
    bl func_0806A1E0
.L0806A392:
    movs r0, #0
    mov r3, r8
    strh r3, [r4, #0x32]
    mov r1, sb
    strh r1, [r4, #0x3a]
    strh r0, [r4, #0x2c]
    mov r3, sp
    ldrh r3, [r3, #0x14]
    strh r3, [r4, #0x2e]
    mov r0, sp
    ldrh r0, [r0, #0x18]
    strh r0, [r4, #0x30]
    ldr r1, [sp, #0xc]
    str r1, [r4, #0x44]
    ldr r3, [sp, #0x10]
    str r3, [r4, #0x48]
    ldr r0, [sp, #0x3c]
    str r0, [r4, #0x4c]
    ldr r1, [sp, #0x40]
    str r1, [r4, #0x50]
.L0806A3BA:
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A3CC: .4byte 0x08B9E338
.L0806A3D0: .4byte 0x08B9E31C
    func_end func_0806A2C0

    thumb_func_start func_0806A3D4
func_0806A3D4: @ 0x0806A3D4
    push {r4, r5, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r0, [r4, #0x50]
    cmp r0, #0
    bge .L0806A3E8
    adds r0, r4, #0
    bl Proc_Break
    b .L0806A436
.L0806A3E8:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r5, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf
    bne .L0806A436
    strh r5, [r4, #0x2c]
    ldr r3, [r4, #0x48]
    lsls r3, r3, #0xc
    movs r1, #0x30
    ldrsh r0, [r4, r1]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    orrs r3, r0
    movs r2, #0x32
    ldrsh r0, [r4, r2]
    subs r0, #3
    movs r2, #0x3a
    ldrsh r1, [r4, r2]
    ldr r2, .L0806A440 @ =0x08B9E374
    str r3, [sp]
    str r5, [sp, #4]
    movs r3, #3
    str r3, [sp, #8]
    movs r3, #2
    bl func_08067300
    str r0, [r4, #0x60]
    ldr r0, [r4, #0x50]
    movs r2, #0x30
    ldrsh r1, [r4, r2]
    bl func_0806A178
    adds r0, r4, #0
    bl Proc_Break
.L0806A436:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A440: .4byte 0x08B9E374
    func_end func_0806A3D4

    thumb_func_start func_0806A444
func_0806A444: @ 0x0806A444
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x50]
    cmp r2, #0
    bge .L0806A454
    bl Proc_Break
    b .L0806A476
.L0806A454:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf
    bne .L0806A476
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x30
    ldrsh r1, [r4, r0]
    adds r0, r2, #0
    bl func_0806A1E0
    adds r0, r4, #0
    bl Proc_Break
.L0806A476:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806A444

    thumb_func_start func_0806A47C
func_0806A47C: @ 0x0806A47C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0806A4A0 @ =0x02020130
    ldr r0, [r0]
    cmp r0, #1
    bne .L0806A49A
    ldr r0, [r4, #0x60]
    bl Proc_End
    ldr r0, [r4, #0x64]
    bl Proc_End
    adds r0, r4, #0
    bl Proc_Break
.L0806A49A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A4A0: .4byte 0x02020130
    func_end func_0806A47C

    thumb_func_start func_0806A4A4
func_0806A4A4: @ 0x0806A4A4
    ldr r0, .L0806A4B0 @ =0x02020134
    ldr r0, [r0]
    cmp r0, #1
    beq .L0806A4B4
    movs r0, #0
    b .L0806A4B6
    .align 2, 0
.L0806A4B0: .4byte 0x02020134
.L0806A4B4:
    movs r0, #1
.L0806A4B6:
    bx lr
    func_end func_0806A4A4

    thumb_func_start func_0806A4B8
func_0806A4B8: @ 0x0806A4B8
    bx lr
    func_end func_0806A4B8

    thumb_func_start func_0806A4BC
func_0806A4BC: @ 0x0806A4BC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0806A4D8 @ =0x08BDB874
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    ldr r1, .L0806A4DC @ =0x02020134
    movs r0, #0
    str r0, [r1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A4D8: .4byte 0x08BDB874
.L0806A4DC: .4byte 0x02020134
    func_end func_0806A4BC

    thumb_func_start func_0806A4E0
func_0806A4E0: @ 0x0806A4E0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0
    mov sb, r0
    mov sl, r0
    mov r8, r0
    movs r7, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0806A50C
    ldr r0, .L0806A508 @ =0x0203E094
    b .L0806A50E
    .align 2, 0
.L0806A508: .4byte 0x0203E094
.L0806A50C:
    ldr r0, .L0806A55C @ =0x0203E098
.L0806A50E:
    ldr r0, [r0]
    ldr r0, [r0, #4]
    ldrb r5, [r0, #4]
    cmp r5, #0x14
    bge .L0806A51A
    b .L0806A61C
.L0806A51A:
    cmp r5, #0x17
    ble .L0806A520
    b .L0806A61C
.L0806A520:
    ldr r0, .L0806A560 @ =gpEkrTriangleUnits
    ldr r1, [r0]
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x14
    bne .L0806A530
    movs r2, #0
    mov sb, r2
.L0806A530:
    cmp r0, #0x15
    bne .L0806A538
    movs r2, #0
    mov sb, r2
.L0806A538:
    cmp r0, #0x16
    bne .L0806A540
    movs r2, #1
    mov sb, r2
.L0806A540:
    cmp r0, #0x17
    bne .L0806A548
    movs r0, #1
    mov sb, r0
.L0806A548:
    adds r0, r1, #0
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0
    bne .L0806A564
    movs r0, #1
    b .L0806A56A
    .align 2, 0
.L0806A55C: .4byte 0x0203E098
.L0806A560: .4byte gpEkrTriangleUnits
.L0806A564:
    adds r0, r4, #0
    bl GetItemType
.L0806A56A:
    cmp r0, #1
    beq .L0806A574
    cmp r0, #2
    beq .L0806A57A
    b .L0806A58C
.L0806A574:
    movs r1, #0
    mov r8, r1
    b .L0806A58C
.L0806A57A:
    adds r0, r4, #0
    bl GetItemIndex
    movs r2, #1
    mov r8, r2
    cmp r0, #0x28
    bne .L0806A58C
    movs r0, #2
    mov r8, r0
.L0806A58C:
    ldr r0, .L0806A5C8 @ =gpEkrTriangleUnits
    ldr r1, [r0, #4]
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x14
    bne .L0806A59C
    movs r2, #0
    mov sl, r2
.L0806A59C:
    cmp r0, #0x15
    bne .L0806A5A4
    movs r2, #0
    mov sl, r2
.L0806A5A4:
    cmp r0, #0x16
    bne .L0806A5AC
    movs r2, #1
    mov sl, r2
.L0806A5AC:
    cmp r0, #0x17
    bne .L0806A5B4
    movs r0, #1
    mov sl, r0
.L0806A5B4:
    adds r0, r1, #0
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0
    bne .L0806A5CC
    movs r0, #1
    b .L0806A5D2
    .align 2, 0
.L0806A5C8: .4byte gpEkrTriangleUnits
.L0806A5CC:
    adds r0, r4, #0
    bl GetItemType
.L0806A5D2:
    cmp r0, #1
    beq .L0806A5DC
    cmp r0, #2
    beq .L0806A5E0
    b .L0806A5EE
.L0806A5DC:
    movs r7, #0
    b .L0806A5EE
.L0806A5E0:
    adds r0, r4, #0
    bl GetItemIndex
    movs r7, #1
    cmp r0, #0x28
    bne .L0806A5EE
    movs r7, #2
.L0806A5EE:
    ldr r0, [r6, #0x5c]
    str r7, [sp]
    mov r1, sb
    mov r2, sl
    mov r3, r8
    bl func_0806A97C
    ldr r0, .L0806A614 @ =0x0203E098
    ldr r0, [r0]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x28
    bne .L0806A6C4
    ldr r1, .L0806A618 @ =0x02020134
    movs r0, #0
    b .L0806A6C8
    .align 2, 0
.L0806A614: .4byte 0x0203E098
.L0806A618: .4byte 0x02020134
.L0806A61C:
    ldr r0, .L0806A648 @ =gpEkrTriangleUnits
    ldr r1, [r0]
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x32
    bne .L0806A62C
    movs r2, #0
    mov sb, r2
.L0806A62C:
    cmp r0, #0x33
    bne .L0806A634
    movs r0, #1
    mov sb, r0
.L0806A634:
    adds r0, r1, #0
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0
    bne .L0806A64C
    movs r0, #1
    b .L0806A656
    .align 2, 0
.L0806A648: .4byte gpEkrTriangleUnits
.L0806A64C:
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #0
    beq .L0806A660
.L0806A656:
    cmp r0, #1
    bne .L0806A664
    movs r1, #0
    mov r8, r1
    b .L0806A664
.L0806A660:
    movs r2, #1
    mov r8, r2
.L0806A664:
    ldr r0, .L0806A690 @ =gpEkrTriangleUnits
    ldr r1, [r0, #4]
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x32
    bne .L0806A674
    movs r2, #0
    mov sl, r2
.L0806A674:
    cmp r0, #0x33
    bne .L0806A67C
    movs r0, #1
    mov sl, r0
.L0806A67C:
    adds r0, r1, #0
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0
    bne .L0806A694
    movs r0, #1
    b .L0806A69E
    .align 2, 0
.L0806A690: .4byte gpEkrTriangleUnits
.L0806A694:
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #0
    beq .L0806A6A6
.L0806A69E:
    cmp r0, #1
    bne .L0806A6A8
    movs r7, #0
    b .L0806A6A8
.L0806A6A6:
    movs r7, #1
.L0806A6A8:
    ldr r0, [r6, #0x5c]
    str r7, [sp]
    mov r1, sb
    mov r2, sl
    mov r3, r8
    bl func_0806A6E4
    cmp r5, #0x32
    bne .L0806A6C4
    ldr r1, .L0806A6C0 @ =0x02020134
    movs r0, #0
    b .L0806A6C8
    .align 2, 0
.L0806A6C0: .4byte 0x02020134
.L0806A6C4:
    ldr r1, .L0806A6E0 @ =0x02020134
    movs r0, #1
.L0806A6C8:
    str r0, [r1]
    adds r0, r6, #0
    bl Proc_Break
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A6E0: .4byte 0x02020134
    func_end func_0806A4E0

    thumb_func_start func_0806A6E4
func_0806A6E4: @ 0x0806A6E4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r7, [sp, #0x18]
    ldr r0, .L0806A718 @ =0x08BDB88C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r5, [r0, #0x44]
    str r6, [r0, #0x48]
    mov r1, r8
    str r1, [r0, #0x4c]
    str r7, [r0, #0x50]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0806A718: .4byte 0x08BDB88C
    func_end func_0806A6E4

    thumb_func_start func_0806A71C
func_0806A71C: @ 0x0806A71C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xa
    bne .L0806A742
    ldr r0, [r4, #0x5c]
    ldr r2, [r4, #0x44]
    ldr r3, [r4, #0x4c]
    movs r1, #0
    bl func_0806A8A8
.L0806A742:
    ldrh r0, [r4, #0x2c]
    cmp r0, #0x1c
    bne .L0806A750
    adds r0, r5, #0
    movs r1, #6
    bl NewEfxFlashBgWhite
.L0806A750:
    ldrh r3, [r4, #0x2c]
    cmp r3, #0x22
    bne .L0806A782
    ldr r2, [r4, #0x44]
    ldr r3, [r4, #0x4c]
    adds r0, r5, #0
    movs r1, #0
    bl func_0806A7D4
    ldr r0, [r4, #0x5c]
    ldr r2, [r4, #0x48]
    ldr r3, [r4, #0x50]
    movs r1, #1
    bl func_0806A8A8
    movs r0, #0x9a
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl PlaySFX
.L0806A782:
    ldrh r0, [r4, #0x2c]
    cmp r0, #0x33
    bne .L0806A790
    adds r0, r5, #0
    movs r1, #6
    bl NewEfxFlashBgWhite
.L0806A790:
    ldrh r3, [r4, #0x2c]
    cmp r3, #0x39
    bne .L0806A7B6
    ldr r2, [r4, #0x48]
    ldr r3, [r4, #0x50]
    adds r0, r5, #0
    movs r1, #1
    bl func_0806A7D4
    movs r0, #0x9a
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl PlaySFX
.L0806A7B6:
    ldrh r0, [r4, #0x2c]
    cmp r0, #0x43
    bne .L0806A7C8
    ldr r1, .L0806A7D0 @ =0x02020134
    movs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0806A7C8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A7D0: .4byte 0x02020134
    func_end func_0806A71C

    thumb_func_start func_0806A7D4
func_0806A7D4: @ 0x0806A7D4
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    ldr r0, .L0806A7FC @ =0x08BDB8A4
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    str r4, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    str r0, [r1, #0x44]
    cmp r5, #0
    bne .L0806A808
    ldr r0, .L0806A800 @ =gBanimTriAtkPalettes
    ldr r2, [r0]
    ldr r0, .L0806A804 @ =0x082E5C9C
    b .L0806A80E
    .align 2, 0
.L0806A7FC: .4byte 0x08BDB8A4
.L0806A800: .4byte gBanimTriAtkPalettes
.L0806A804: .4byte 0x082E5C9C
.L0806A808:
    ldr r0, .L0806A844 @ =gBanimTriAtkPalettes
    ldr r2, [r0, #4]
    ldr r0, .L0806A848 @ =0x082E5CAA
.L0806A80E:
    str r0, [r1, #0x48]
    ldr r0, .L0806A84C @ =0x08BDB8BC
    str r0, [r1, #0x4c]
    str r0, [r1, #0x50]
    ldr r4, .L0806A850 @ =0x02017784
    adds r0, r2, #0
    adds r1, r4, #0
    bl LZ77UnCompWram
    adds r0, r4, #0
    movs r1, #0x20
    bl SpellFx_RegisterBgPal
    ldr r0, .L0806A854 @ =0x082E5CB8
    cmp r6, #0
    beq .L0806A836
    ldr r0, .L0806A858 @ =0x082E704C
    cmp r7, #0
    bne .L0806A836
    ldr r0, .L0806A85C @ =0x082E665C
.L0806A836:
    movs r1, #0x80
    lsls r1, r1, #6
    bl SpellFx_RegisterBgGfx
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A844: .4byte gBanimTriAtkPalettes
.L0806A848: .4byte 0x082E5CAA
.L0806A84C: .4byte 0x08BDB8BC
.L0806A850: .4byte 0x02017784
.L0806A854: .4byte 0x082E5CB8
.L0806A858: .4byte 0x082E704C
.L0806A85C: .4byte 0x082E665C
    func_end func_0806A7D4

    thumb_func_start func_0806A860
func_0806A860: @ 0x0806A860
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0806A88E
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl SpellFx_WriteBgMap
    b .L0806A8A0
.L0806A88E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0806A8A0
    bl SpellFx_ClearBG1
    adds r0, r4, #0
    bl Proc_Break
.L0806A8A0:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806A860

    thumb_func_start func_0806A8A8
func_0806A8A8: @ 0x0806A8A8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r7, r0, #0
    adds r4, r1, #0
    mov r8, r2
    mov sb, r3
    ldr r0, .L0806A8DC @ =0x08BDB8D4
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r7, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    cmp r4, #0
    bne .L0806A8E8
    movs r0, #0x12
    strh r0, [r5, #0x2e]
    ldr r0, .L0806A8E0 @ =gBanimTriAtkPalettes
    ldr r6, [r0]
    ldr r3, .L0806A8E4 @ =0x08BDBE04
    b .L0806A8F2
    .align 2, 0
.L0806A8DC: .4byte 0x08BDB8D4
.L0806A8E0: .4byte gBanimTriAtkPalettes
.L0806A8E4: .4byte 0x08BDBE04
.L0806A8E8:
    movs r0, #0x11
    strh r0, [r5, #0x2e]
    ldr r0, .L0806A93C @ =gBanimTriAtkPalettes
    ldr r6, [r0, #4]
    ldr r3, .L0806A940 @ =0x08BDC138
.L0806A8F2:
    str r3, [sp]
    adds r0, r7, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl EfxCreateFrontAnim
    str r0, [r5, #0x60]
    ldr r4, .L0806A944 @ =0x0201A784
    adds r0, r6, #0
    adds r1, r4, #0
    bl LZ77UnCompWram
    adds r0, r4, #0
    movs r1, #0x20
    bl SpellFx_RegisterObjPal
    ldr r0, .L0806A948 @ =0x082E8070
    mov r1, r8
    cmp r1, #0
    beq .L0806A924
    ldr r0, .L0806A94C @ =0x082E93F4
    mov r1, sb
    cmp r1, #0
    bne .L0806A924
    ldr r0, .L0806A950 @ =0x082E8A28
.L0806A924:
    movs r1, #0x80
    lsls r1, r1, #5
    bl SpellFx_RegisterObjGfx
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806A93C: .4byte gBanimTriAtkPalettes
.L0806A940: .4byte 0x08BDC138
.L0806A944: .4byte 0x0201A784
.L0806A948: .4byte 0x082E8070
.L0806A94C: .4byte 0x082E93F4
.L0806A950: .4byte 0x082E8A28
    func_end func_0806A8A8

    thumb_func_start func_0806A954
func_0806A954: @ 0x0806A954
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806A974
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0806A974:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806A954

    thumb_func_start func_0806A97C
func_0806A97C: @ 0x0806A97C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r7, [sp, #0x18]
    ldr r0, .L0806A9B0 @ =0x08BDB8EC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r5, [r0, #0x44]
    str r6, [r0, #0x48]
    mov r1, r8
    str r1, [r0, #0x4c]
    str r7, [r0, #0x50]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0806A9B0: .4byte 0x08BDB8EC
    func_end func_0806A97C

    thumb_func_start func_0806A9B4
func_0806A9B4: @ 0x0806A9B4
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0806A9EA
    ldr r0, [r5, #0x5c]
    ldr r1, [r5, #0x44]
    ldr r2, [r5, #0x48]
    ldr r3, [r5, #0x4c]
    ldr r4, [r5, #0x50]
    str r4, [sp]
    bl func_0806AA84
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r5, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xe2
    movs r3, #1
    bl PlaySFX
.L0806A9EA:
    ldrh r0, [r5, #0x2c]
    cmp r0, #0x30
    bne .L0806AA0E
    ldr r0, [r5, #0x5c]
    ldr r2, [r5, #0x44]
    ldr r3, [r5, #0x4c]
    movs r1, #0
    bl func_0806AC60
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r5, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xe2
    movs r3, #1
    bl PlaySFX
.L0806AA0E:
    ldrh r0, [r5, #0x2c]
    cmp r0, #0x3c
    bne .L0806AA24
    ldr r0, [r5, #0x5c]
    movs r1, #4
    bl NewEfxFlashBgWhite
    ldr r0, [r5, #0x5c]
    movs r1, #0xa
    bl func_0806ADE0
.L0806AA24:
    ldrh r3, [r5, #0x2c]
    cmp r3, #0x4f
    bne .L0806AA48
    ldr r0, [r5, #0x5c]
    ldr r2, [r5, #0x48]
    ldr r3, [r5, #0x50]
    movs r1, #1
    bl func_0806AC60
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r5, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xe2
    movs r3, #1
    bl PlaySFX
.L0806AA48:
    ldrh r0, [r5, #0x2c]
    cmp r0, #0x5b
    bne .L0806AA54
    ldr r1, .L0806AA80 @ =0x02020134
    movs r0, #1
    str r0, [r1]
.L0806AA54:
    ldrh r3, [r5, #0x2c]
    cmp r3, #0x60
    bne .L0806AA6A
    ldr r0, [r5, #0x5c]
    movs r1, #4
    bl NewEfxFlashBgWhite
    ldr r0, [r5, #0x5c]
    movs r1, #0xa
    bl func_0806ADE0
.L0806AA6A:
    ldrh r0, [r5, #0x2c]
    cmp r0, #0x78
    bne .L0806AA76
    adds r0, r5, #0
    bl Proc_Break
.L0806AA76:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806AA80: .4byte 0x02020134
    func_end func_0806A9B4

    thumb_func_start func_0806AA84
func_0806AA84: @ 0x0806AA84
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov r8, r0
    adds r4, r1, #0
    mov sb, r2
    adds r6, r3, #0
    ldr r0, .L0806AABC @ =0x08BDB904
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    mov r0, r8
    str r0, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #0x14
    strh r0, [r5, #0x2e]
    ldr r0, .L0806AAC0 @ =gBanimTriAtkPalettes
    ldr r7, [r0]
    cmp r4, #0
    bne .L0806AACC
    ldr r3, .L0806AAC4 @ =0x08BDC1D0
    ldr r6, .L0806AAC8 @ =0x082E9D9C
    b .L0806AAF8
    .align 2, 0
.L0806AABC: .4byte 0x08BDB904
.L0806AAC0: .4byte gBanimTriAtkPalettes
.L0806AAC4: .4byte 0x08BDC1D0
.L0806AAC8: .4byte 0x082E9D9C
.L0806AACC:
    cmp r6, #1
    beq .L0806AAE4
    cmp r6, #1
    bhs .L0806AAF4
    ldr r3, .L0806AADC @ =0x08BDC260
    ldr r6, .L0806AAE0 @ =0x082EA0BC
    b .L0806AAF8
    .align 2, 0
.L0806AADC: .4byte 0x08BDC260
.L0806AAE0: .4byte 0x082EA0BC
.L0806AAE4:
    ldr r3, .L0806AAEC @ =0x08BDC2F0
    ldr r6, .L0806AAF0 @ =0x082EA490
    b .L0806AAF8
    .align 2, 0
.L0806AAEC: .4byte 0x08BDC2F0
.L0806AAF0: .4byte 0x082EA490
.L0806AAF4:
    ldr r3, .L0806AB38 @ =0x08BDC37C
    ldr r6, .L0806AB3C @ =0x082EA8C4
.L0806AAF8:
    str r3, [sp]
    mov r0, r8
    adds r1, r3, #0
    adds r2, r3, #0
    bl EfxCreateFrontAnim
    adds r1, r0, #0
    str r1, [r5, #0x60]
    ldr r0, .L0806AB40 @ =0x00008840
    strh r0, [r1, #8]
    ldr r4, .L0806AB44 @ =0x0201A784
    adds r0, r7, #0
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L0806AB48 @ =0x02022B60
    adds r0, r4, #0
    movs r2, #8
    bl CpuFastSet
    adds r0, r6, #0
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r0, .L0806AB4C @ =gBanimTriAtkPalettes
    ldr r7, [r0, #4]
    mov r0, sb
    cmp r0, #0
    bne .L0806AB58
    ldr r3, .L0806AB50 @ =0x08BDC1D0
    ldr r6, .L0806AB54 @ =0x082E9D9C
    b .L0806AB84
    .align 2, 0
.L0806AB38: .4byte 0x08BDC37C
.L0806AB3C: .4byte 0x082EA8C4
.L0806AB40: .4byte 0x00008840
.L0806AB44: .4byte 0x0201A784
.L0806AB48: .4byte 0x02022B60
.L0806AB4C: .4byte gBanimTriAtkPalettes
.L0806AB50: .4byte 0x08BDC1D0
.L0806AB54: .4byte 0x082E9D9C
.L0806AB58:
    ldr r0, [sp, #0x20]
    cmp r0, #1
    beq .L0806AB70
    cmp r0, #1
    bhs .L0806AB80
    ldr r3, .L0806AB68 @ =0x08BDC260
    ldr r6, .L0806AB6C @ =0x082EA0BC
    b .L0806AB84
    .align 2, 0
.L0806AB68: .4byte 0x08BDC260
.L0806AB6C: .4byte 0x082EA0BC
.L0806AB70:
    ldr r3, .L0806AB78 @ =0x08BDC2F0
    ldr r6, .L0806AB7C @ =0x082EA490
    b .L0806AB84
    .align 2, 0
.L0806AB78: .4byte 0x08BDC2F0
.L0806AB7C: .4byte 0x082EA490
.L0806AB80:
    ldr r3, .L0806ABEC @ =0x08BDC37C
    ldr r6, .L0806ABF0 @ =0x082EA8C4
.L0806AB84:
    str r3, [sp]
    mov r0, r8
    adds r1, r3, #0
    adds r2, r3, #0
    bl EfxCreateFrontAnim
    adds r1, r0, #0
    str r1, [r5, #0x64]
    ldr r0, .L0806ABF4 @ =0x0000A880
    strh r0, [r1, #8]
    ldr r4, .L0806ABF8 @ =0x0201AF84
    adds r0, r7, #0
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L0806ABFC @ =0x02022BA0
    adds r0, r4, #0
    movs r2, #8
    bl CpuFastSet
    adds r0, r6, #0
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L0806AC00 @ =0x06010800
    ldr r0, .L0806AC04 @ =0xFFFFF800
    adds r4, r4, r0
    movs r2, #0x80
    lsls r2, r2, #5
    adds r0, r4, #0
    bl RegisterDataMove
    bl EnablePalSync
    ldr r1, [r5, #0x60]
    ldr r0, [r5, #0x5c]
    ldrh r0, [r0, #2]
    adds r0, #0x20
    strh r0, [r1, #2]
    ldr r1, [r5, #0x64]
    ldr r0, [r5, #0x5c]
    ldrh r0, [r0, #2]
    subs r0, #0x20
    strh r0, [r1, #2]
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806ABEC: .4byte 0x08BDC37C
.L0806ABF0: .4byte 0x082EA8C4
.L0806ABF4: .4byte 0x0000A880
.L0806ABF8: .4byte 0x0201AF84
.L0806ABFC: .4byte 0x02022BA0
.L0806AC00: .4byte 0x06010800
.L0806AC04: .4byte 0xFFFFF800
    func_end func_0806AA84

    thumb_func_start func_0806AC08
func_0806AC08: @ 0x0806AC08
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x20
    movs r2, #0
    bl Interpolate
    ldr r2, [r4, #0x60]
    ldr r1, [r4, #0x5c]
    ldrh r1, [r1, #2]
    adds r1, r1, r0
    strh r1, [r2, #2]
    ldr r2, [r4, #0x64]
    ldr r1, [r4, #0x5c]
    ldrh r1, [r1, #2]
    subs r0, r1, r0
    strh r0, [r2, #2]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806AC58
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r0, [r4, #0x64]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0806AC58:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806AC08

    thumb_func_start func_0806AC60
func_0806AC60: @ 0x0806AC60
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov r8, r0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    ldr r0, .L0806AC9C @ =0x08BDB91C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    mov r0, r8
    str r0, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #5
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    adds r0, #0x29
    strb r5, [r0]
    adds r0, #1
    strb r6, [r0]
    cmp r5, #0
    bne .L0806ACA4
    ldr r0, .L0806ACA0 @ =gBanimTriAtkPalettes
    ldr r0, [r0]
    b .L0806ACA8
    .align 2, 0
.L0806AC9C: .4byte 0x08BDB91C
.L0806ACA0: .4byte gBanimTriAtkPalettes
.L0806ACA4:
    ldr r0, .L0806ACB4 @ =gBanimTriAtkPalettes
    ldr r0, [r0, #4]
.L0806ACA8:
    mov sb, r0
    cmp r6, #0
    bne .L0806ACC0
    ldr r3, .L0806ACB8 @ =0x08BDC46C
    ldr r6, .L0806ACBC @ =0x082EAC84
    b .L0806ACEC
    .align 2, 0
.L0806ACB4: .4byte gBanimTriAtkPalettes
.L0806ACB8: .4byte 0x08BDC46C
.L0806ACBC: .4byte 0x082EAC84
.L0806ACC0:
    cmp r7, #1
    beq .L0806ACD8
    cmp r7, #1
    bhs .L0806ACE8
    ldr r3, .L0806ACD0 @ =0x08BDC5E4
    ldr r6, .L0806ACD4 @ =0x082EB1BC
    b .L0806ACEC
    .align 2, 0
.L0806ACD0: .4byte 0x08BDC5E4
.L0806ACD4: .4byte 0x082EB1BC
.L0806ACD8:
    ldr r3, .L0806ACE0 @ =0x08BDC738
    ldr r6, .L0806ACE4 @ =0x082EB8F8
    b .L0806ACEC
    .align 2, 0
.L0806ACE0: .4byte 0x08BDC738
.L0806ACE4: .4byte 0x082EB8F8
.L0806ACE8:
    ldr r3, .L0806AD18 @ =0x08BDCA00
    ldr r6, .L0806AD1C @ =0x082EC084
.L0806ACEC:
    str r3, [sp]
    mov r0, r8
    adds r1, r3, #0
    adds r2, r3, #0
    bl EfxCreateFrontAnim
    adds r1, r0, #0
    str r1, [r4, #0x60]
    cmp r5, #0
    bne .L0806AD20
    ldrh r0, [r1, #4]
    adds r0, #0xa
    strh r0, [r1, #4]
    ldr r1, [r4, #0x60]
    movs r0, #0x78
    strh r0, [r1, #0xa]
    bl AnimSort
    ldr r0, [r4, #0x5c]
    ldrh r1, [r0, #2]
    adds r1, #0x10
    b .L0806AD36
    .align 2, 0
.L0806AD18: .4byte 0x08BDCA00
.L0806AD1C: .4byte 0x082EC084
.L0806AD20:
    ldrh r0, [r1, #4]
    adds r0, #2
    strh r0, [r1, #4]
    ldr r1, [r4, #0x60]
    movs r0, #0x14
    strh r0, [r1, #0xa]
    bl AnimSort
    ldr r0, [r4, #0x5c]
    ldrh r1, [r0, #2]
    subs r1, #0xc
.L0806AD36:
    strh r1, [r4, #0x32]
    ldrh r0, [r0, #2]
    subs r0, #0x10
    strh r0, [r4, #0x34]
    ldr r0, [r4, #0x60]
    strh r1, [r0, #2]
    ldr r4, .L0806AD6C @ =0x0201A784
    mov r0, sb
    adds r1, r4, #0
    bl LZ77UnCompWram
    adds r0, r4, #0
    movs r1, #0x20
    bl SpellFx_RegisterObjPal
    movs r1, #0x80
    lsls r1, r1, #5
    adds r0, r6, #0
    bl SpellFx_RegisterObjGfx
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806AD6C: .4byte 0x0201A784
    func_end func_0806AC60

    thumb_func_start func_0806AD70
func_0806AD70: @ 0x0806AD70
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x32
    ldrsh r1, [r4, r0]
    movs r5, #0x34
    ldrsh r2, [r4, r5]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r5, #0x2e
    ldrsh r0, [r4, r5]
    str r0, [sp]
    movs r0, #1
    bl Interpolate
    ldr r1, [r4, #0x60]
    strh r0, [r1, #2]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806ADB0
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x14
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
.L0806ADB0:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0806AD70

    thumb_func_start func_0806ADB8
func_0806ADB8: @ 0x0806ADB8
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806ADD8
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0806ADD8:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806ADB8

    thumb_func_start func_0806ADE0
func_0806ADE0: @ 0x0806ADE0
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L0806AE10 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0806AE14 @ =0x08BDB93C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    movs r1, #0
    bl NewEfxQuakePure
    str r0, [r4, #0x60]
    movs r0, #0
    strh r0, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0806AE10: .4byte 0x0201774C
.L0806AE14: .4byte 0x08BDB93C
    func_end func_0806ADE0

    thumb_func_start func_0806AE18
func_0806AE18: @ 0x0806AE18
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r7, r0, #0
    ldr r4, .L0806AF80 @ =0x02017760
    ldrh r1, [r4]
    ldrh r2, [r4, #2]
    movs r0, #2
    bl SetBgOffset
    ldr r6, .L0806AF84 @ =0x02000038
    ldrh r0, [r4]
    ldrh r2, [r6]
    adds r1, r0, r2
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldrh r3, [r4, #2]
    ldrh r0, [r6, #2]
    adds r2, r3, r0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #0
    bl SetBgOffset
    ldrh r1, [r4]
    ldrh r2, [r6]
    adds r0, r1, r2
    rsbs r0, r0, #0
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldrh r3, [r4, #2]
    ldrh r2, [r6, #2]
    adds r1, r3, r2
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl EkrGauge_0804C4B0
    ldrh r3, [r4]
    ldrh r1, [r6]
    adds r0, r3, r1
    rsbs r0, r0, #0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r2, [r4, #2]
    ldrh r3, [r6, #2]
    adds r1, r2, r3
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    bl EkrDispUP_SetPositionSync
    ldr r0, .L0806AF88 @ =0x02000028
    mov sb, r0
    ldrh r5, [r4]
    ldrh r2, [r0]
    adds r1, r5, r2
    ldr r3, .L0806AF8C @ =0x0201FB00
    mov sl, r3
    ldr r0, [r3]
    subs r1, r1, r0
    ldr r2, .L0806AF90 @ =0x0200002C
    mov r8, r2
    ldrh r4, [r4, #2]
    ldrh r3, [r2]
    subs r3, r3, r4
    mov ip, r3
    mov r2, sb
    ldrh r2, [r2, #2]
    adds r5, r5, r2
    subs r5, r5, r0
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    mov r3, r8
    ldrh r3, [r3, #2]
    subs r4, r3, r4
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    mov r0, ip
    lsls r2, r0, #0x10
    asrs r2, r2, #0x10
    movs r0, #0
    bl SetEkrFrontAnimPostion
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    movs r0, #1
    adds r1, r5, #0
    adds r2, r4, #0
    bl SetEkrFrontAnimPostion
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r7, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806AF72
    ldr r1, .L0806AF94 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldrh r1, [r6]
    ldrh r2, [r6, #2]
    movs r0, #0
    bl SetBgOffset
    ldrh r3, [r6]
    rsbs r0, r3, #0
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldrh r2, [r6, #2]
    rsbs r1, r2, #0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl EkrGauge_0804C4B0
    ldrh r3, [r6]
    rsbs r0, r3, #0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r6, [r6, #2]
    rsbs r1, r6, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    bl EkrDispUP_SetPositionSync
    mov r0, sl
    ldr r4, [r0]
    mov r2, sb
    ldrh r2, [r2]
    subs r1, r2, r4
    mov r3, sb
    ldrh r3, [r3, #2]
    subs r4, r3, r4
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    mov r0, r8
    ldrh r5, [r0, #2]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r3, #0
    ldrsh r2, [r0, r3]
    movs r0, #0
    bl SetEkrFrontAnimPostion
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    movs r0, #1
    adds r1, r4, #0
    adds r2, r5, #0
    bl SetEkrFrontAnimPostion
    ldr r0, [r7, #0x60]
    bl Proc_End
    adds r0, r7, #0
    bl Proc_Break
.L0806AF72:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806AF80: .4byte 0x02017760
.L0806AF84: .4byte 0x02000038
.L0806AF88: .4byte 0x02000028
.L0806AF8C: .4byte 0x0201FB00
.L0806AF90: .4byte 0x0200002C
.L0806AF94: .4byte 0x0201774C
    func_end func_0806AE18

    thumb_func_start func_0806AF98
func_0806AF98: @ 0x0806AF98
    push {lr}
    lsls r1, r0, #1
    adds r1, r1, r0
    ldr r0, .L0806AFB0 @ =0x08BDCA64
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r0, [r1]
    ldr r1, .L0806AFB4 @ =0x06008000
    bl LZ77UnCompVram
    pop {r0}
    bx r0
    .align 2, 0
.L0806AFB0: .4byte 0x08BDCA64
.L0806AFB4: .4byte 0x06008000
    func_end func_0806AF98

    thumb_func_start func_0806AFB8
func_0806AFB8: @ 0x0806AFB8
    push {r4, lr}
    sub sp, #8
    lsls r1, r0, #1
    adds r1, r1, r0
    adds r1, #1
    ldr r0, .L0806AFF0 @ =0x08BDCA64
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r0, [r1]
    ldr r4, .L0806AFF4 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L0806AFF8 @ =gBg3Tm
    movs r0, #6
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl EfxTmCpyBG
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806AFF0: .4byte 0x08BDCA64
.L0806AFF4: .4byte 0x02019784
.L0806AFF8: .4byte gBg3Tm
    func_end func_0806AFB8

    thumb_func_start func_0806AFFC
func_0806AFFC: @ 0x0806AFFC
    push {lr}
    lsls r1, r0, #1
    adds r1, r1, r0
    adds r1, #2
    ldr r0, .L0806B018 @ =0x08BDCA64
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r0, [r1]
    ldr r1, .L0806B01C @ =0x02022920
    bl LZ77UnCompWram
    pop {r0}
    bx r0
    .align 2, 0
.L0806B018: .4byte 0x08BDCA64
.L0806B01C: .4byte 0x02022920
    func_end func_0806AFFC

    thumb_func_start func_0806B020
func_0806B020: @ 0x0806B020
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_0806AF98
    movs r5, #0
    str r5, [sp]
    ldr r1, .L0806B05C @ =0x0600FFE0
    ldr r2, .L0806B060 @ =0x01000008
    mov r0, sp
    bl CpuFastSet
    adds r0, r4, #0
    bl func_0806AFB8
    adds r0, r4, #0
    bl func_0806AFFC
    ldr r0, .L0806B064 @ =gPal
    strh r5, [r0]
    movs r0, #8
    bl EnableBgSync
    bl EnablePalSync
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B05C: .4byte 0x0600FFE0
.L0806B060: .4byte 0x01000008
.L0806B064: .4byte gPal
    func_end func_0806B020

    thumb_func_start func_0806B068
func_0806B068: @ 0x0806B068
    ldr r0, .L0806B074 @ =0x0202013C
    ldr r0, [r0]
    cmp r0, #1
    beq .L0806B078
    movs r0, #0
    b .L0806B07A
    .align 2, 0
.L0806B074: .4byte 0x0202013C
.L0806B078:
    movs r0, #1
.L0806B07A:
    bx lr
    func_end func_0806B068

    thumb_func_start func_0806B07C
func_0806B07C: @ 0x0806B07C
    push {r4, lr}
    ldr r4, .L0806B094 @ =0x02020138
    ldr r0, [r4]
    cmp r0, #0
    beq .L0806B08E
    bl Proc_End
    movs r0, #0
    str r0, [r4]
.L0806B08E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B094: .4byte 0x02020138
    func_end func_0806B07C

    thumb_func_start func_0806B098
func_0806B098: @ 0x0806B098
    push {lr}
    ldr r0, .L0806B0A8 @ =0x0000037A
    movs r1, #0x80
    lsls r1, r1, #1
    bl func_080675C8
    pop {r0}
    bx r0
    .align 2, 0
.L0806B0A8: .4byte 0x0000037A
    func_end func_0806B098

    thumb_func_start func_0806B0AC
func_0806B0AC: @ 0x0806B0AC
    push {lr}
    movs r0, #0xdf
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    bl func_080675C8
    pop {r0}
    bx r0
    func_end func_0806B0AC

    thumb_func_start func_0806B0C0
func_0806B0C0: @ 0x0806B0C0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov ip, r0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov sb, r1
    ldr r6, .L0806B1A0 @ =0x02019784
    ldrh r1, [r6]
    movs r2, #0x88
    lsls r2, r2, #5
    adds r0, r1, r2
    mov r3, ip
    strh r0, [r3]
    mov r1, ip
    adds r1, #0x40
    ldrh r7, [r6, #0x30]
    adds r0, r7, r2
    strh r0, [r1]
    adds r1, #0x40
    adds r0, r6, #0
    adds r0, #0x60
    ldrh r0, [r0]
    adds r0, r0, r2
    strh r0, [r1]
    adds r1, #0x40
    adds r0, r6, #0
    adds r0, #0x90
    ldrh r0, [r0]
    adds r0, r0, r2
    strh r0, [r1]
    movs r0, #0
    mov r8, r0
    cmp r8, sb
    bhs .L0806B154
    adds r3, #0xc2
    str r3, [sp]
    mov r5, ip
    adds r5, #0x82
    adds r4, r6, #0
    adds r4, #0x62
    subs r3, #0x80
    mov r2, ip
    adds r2, #2
    adds r1, r6, #2
.L0806B120:
    ldrh r7, [r1]
    movs r0, #0x88
    lsls r0, r0, #5
    adds r7, r7, r0
    strh r7, [r2]
    ldrh r7, [r1, #0x30]
    adds r7, r7, r0
    strh r7, [r3]
    ldrh r7, [r4]
    adds r7, r7, r0
    strh r7, [r5]
    ldrh r7, [r4, #0x30]
    adds r7, r7, r0
    ldr r0, [sp]
    strh r7, [r0]
    adds r0, #2
    str r0, [sp]
    adds r5, #2
    adds r4, #2
    adds r3, #2
    adds r2, #2
    adds r1, #2
    movs r7, #1
    add r8, r7
    cmp r8, sb
    blo .L0806B120
.L0806B154:
    mov r1, r8
    lsls r0, r1, #1
    mov r2, ip
    adds r1, r0, r2
    ldrh r3, [r6, #0x2e]
    movs r7, #0x88
    lsls r7, r7, #5
    adds r0, r3, r7
    strh r0, [r1, #2]
    adds r2, r1, #0
    adds r2, #0x42
    adds r0, r6, #0
    adds r0, #0x5e
    ldrh r0, [r0]
    adds r3, r7, #0
    adds r0, r0, r3
    strh r0, [r2]
    adds r2, #0x40
    adds r0, r6, #0
    adds r0, #0x8e
    ldrh r0, [r0]
    adds r0, r0, r3
    strh r0, [r2]
    adds r1, #0xc2
    adds r0, r6, #0
    adds r0, #0xbe
    ldrh r0, [r0]
    adds r0, r0, r3
    strh r0, [r1]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B1A0: .4byte 0x02019784
    func_end func_0806B0C0

    thumb_func_start func_0806B1A4
func_0806B1A4: @ 0x0806B1A4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    str r0, [sp]
    mov r8, r1
    mov sb, r2
    ldr r0, .L0806B200 @ =0x081DB588
    ldr r1, .L0806B204 @ =0x06002000
    bl LZ77UnCompVram
    ldr r0, .L0806B208 @ =0x081DB704
    ldr r1, .L0806B20C @ =0x02019784
    bl LZ77UnCompWram
    ldr r0, .L0806B210 @ =0x02017648
    ldr r1, .L0806B214 @ =0x060020C0
    movs r2, #0x83
    lsls r2, r2, #1
    movs r3, #1
    bl InitTextFont
    bl SetTextDrawNoClear
    ldr r0, .L0806B218 @ =0x081DB6E4
    ldr r1, .L0806B21C @ =0x02022880
    movs r2, #8
    bl CpuFastSet
    mov r0, r8
    cmp r0, #0
    bne .L0806B220
    movs r1, #0
    str r1, [sp, #4]
    movs r0, #0xea
    lsls r0, r0, #3
    bl DecodeMsg
    adds r5, r0, #0
    bl GetStringTextLen
    adds r4, r0, #0
    adds r4, #0x10
    b .L0806B268
    .align 2, 0
.L0806B200: .4byte 0x081DB588
.L0806B204: .4byte 0x06002000
.L0806B208: .4byte 0x081DB704
.L0806B20C: .4byte 0x02019784
.L0806B210: .4byte 0x02017648
.L0806B214: .4byte 0x060020C0
.L0806B218: .4byte 0x081DB6E4
.L0806B21C: .4byte 0x02022880
.L0806B220:
    mov r2, r8
    cmp r2, #1
    bne .L0806B254
    movs r3, #0
    str r3, [sp, #4]
    mov r0, sb
    movs r1, #1
    bl GetItemNameWithArticle
    adds r5, r0, #0
    bl GetStringTextLen
    adds r4, r0, #0
    adds r4, #0x10
    ldr r0, .L0806B250 @ =0x00000751
    bl DecodeMsg
    adds r5, r0, #0
    bl GetStringTextLen
    adds r0, r0, r4
    adds r4, r0, #4
    b .L0806B268
    .align 2, 0
.L0806B250: .4byte 0x00000751
.L0806B254:
    ldr r0, .L0806B2AC @ =0x0000075A
    bl DecodeMsg
    adds r5, r0, #0
    bl GetStringTextLen
    adds r1, r0, #2
    str r1, [sp, #4]
    adds r4, r0, #0
    adds r4, #0x12
.L0806B268:
    adds r0, r4, #7
    asrs r7, r0, #3
    ldr r0, .L0806B2B0 @ =gBg1Tm
    lsls r1, r7, #0x10
    lsrs r1, r1, #0x10
    bl func_0806B0C0
    ldr r6, .L0806B2B4 @ =0x02017660
    adds r0, r6, #0
    adds r1, r7, #0
    bl InitText
    lsls r0, r7, #3
    subs r0, r0, r4
    asrs r0, r0, #1
    mov sl, r0
    adds r0, r6, #0
    mov r1, sl
    bl Text_SetCursor
    ldr r0, .L0806B2B8 @ =0x081DB5E4
    ldr r1, .L0806B2BC @ =0x060020C0
    bl LZ77UnCompVram
    mov r2, r8
    cmp r2, #0
    bne .L0806B2C0
    adds r0, r6, #0
    movs r1, #0x10
    bl Text_Skip
    movs r0, #0xea
    lsls r0, r0, #3
    b .L0806B2F2
    .align 2, 0
.L0806B2AC: .4byte 0x0000075A
.L0806B2B0: .4byte gBg1Tm
.L0806B2B4: .4byte 0x02017660
.L0806B2B8: .4byte 0x081DB5E4
.L0806B2BC: .4byte 0x060020C0
.L0806B2C0:
    mov r3, r8
    cmp r3, #1
    bne .L0806B310
    adds r0, r6, #0
    movs r1, #0x10
    bl Text_Skip
    mov r0, sb
    movs r1, #1
    bl GetItemNameWithArticle
    adds r5, r0, #0
    adds r0, r6, #0
    movs r1, #1
    bl Text_SetColor
    adds r0, r6, #0
    adds r1, r5, #0
    bl Text_DrawString
    adds r0, r6, #0
    movs r1, #4
    bl Text_Skip
    ldr r0, .L0806B30C @ =0x00000751
.L0806B2F2:
    bl DecodeMsg
    adds r5, r0, #0
    adds r0, r6, #0
    movs r1, #0
    bl Text_SetColor
    adds r0, r6, #0
    adds r1, r5, #0
    bl Text_DrawString
    b .L0806B328
    .align 2, 0
.L0806B30C: .4byte 0x00000751
.L0806B310:
    ldr r0, .L0806B364 @ =0x0000075A
    bl DecodeMsg
    adds r5, r0, #0
    adds r0, r6, #0
    movs r1, #0
    bl Text_SetColor
    adds r0, r6, #0
    adds r1, r5, #0
    bl Text_DrawString
.L0806B328:
    adds r1, r7, #2
    lsls r1, r1, #3
    movs r0, #0xf0
    subs r0, r0, r1
    asrs r5, r0, #1
    rsbs r1, r5, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r2, .L0806B368 @ =0x0000FFD0
    movs r0, #1
    bl SetBgOffset
    movs r0, #2
    bl EnableBgSync
    bl InitIcons
    mov r0, r8
    cmp r0, #0
    bne .L0806B36C
    movs r0, #1
    movs r1, #0x12
    bl ApplyIconPalette
    mov r0, sb
    bl GetItemType
    adds r0, #0x70
    b .L0806B380
    .align 2, 0
.L0806B364: .4byte 0x0000075A
.L0806B368: .4byte 0x0000FFD0
.L0806B36C:
    mov r1, r8
    cmp r1, #1
    bne .L0806B388
    movs r0, #0
    movs r1, #0x12
    bl ApplyIconPalette
    mov r0, sb
    bl GetItemIcon
.L0806B380:
    movs r1, #0x40
    bl PutIconObjImg
    b .L0806B39A
.L0806B388:
    movs r0, #1
    movs r1, #0x12
    bl ApplyIconPalette
    mov r0, sb
    adds r0, #0x70
    movs r1, #0x40
    bl PutIconObjImg
.L0806B39A:
    ldr r0, .L0806B404 @ =0x08BDCD4C
    movs r1, #0x96
    bl AnimCreate
    ldr r2, [sp]
    str r0, [r2, #0x60]
    movs r4, #0
    movs r1, #0x91
    lsls r1, r1, #6
    strh r1, [r0, #8]
    mov r1, sl
    adds r1, #8
    adds r1, r5, r1
    ldr r3, [sp, #4]
    adds r1, r1, r3
    strh r1, [r0, #2]
    movs r1, #0x38
    strh r1, [r0, #4]
    bl EnablePalSync
    ldr r2, .L0806B408 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r1, #8
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x45
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
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
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B404: .4byte 0x08BDCD4C
.L0806B408: .4byte gDispIo
    func_end func_0806B1A4

    thumb_func_start func_0806B40C
func_0806B40C: @ 0x0806B40C
    push {r4, r5, lr}
    ldr r0, .L0806B468 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L0806B480
    ldr r4, .L0806B46C @ =0x02020138
    ldr r0, .L0806B470 @ =0x08BDCDBC
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r5, [r4]
    ldr r1, .L0806B474 @ =0x0202013C
    movs r0, #0
    str r0, [r1]
    subs r0, #1
    str r0, [r5, #0x44]
    movs r1, #0
    ldr r3, .L0806B478 @ =0x0203E098
    ldr r2, .L0806B47C @ =0x0203E094
.L0806B434:
    ldr r0, [r3]
    adds r0, #0x28
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0806B44E
    ldr r0, [r2]
    adds r0, #0x28
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0806B44E
    str r1, [r5, #0x44]
.L0806B44E:
    adds r1, #1
    cmp r1, #7
    ble .L0806B434
    ldr r1, [r5, #0x44]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0806B51E
    movs r0, #0x80
    bl SetBgmVolume
    b .L0806B54A
    .align 2, 0
.L0806B468: .4byte 0x0203E02C
.L0806B46C: .4byte 0x02020138
.L0806B470: .4byte 0x08BDCDBC
.L0806B474: .4byte 0x0202013C
.L0806B478: .4byte 0x0203E098
.L0806B47C: .4byte 0x0203E094
.L0806B480:
    ldr r4, .L0806B52C @ =0x02020138
    ldr r0, .L0806B530 @ =0x08BDCD54
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r5, [r4]
    ldr r1, .L0806B534 @ =0x0202013C
    movs r0, #0
    str r0, [r1]
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x48]
    str r0, [r5, #0x44]
    str r0, [r5, #0x50]
    str r0, [r5, #0x4c]
    ldr r0, .L0806B538 @ =gBanimFactionPal
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0806B4D6
    ldr r4, .L0806B53C @ =0x0203E094
    ldr r0, [r4]
    bl func_08029BE8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0806B4C0
    ldr r0, [r4]
    adds r0, #0x4a
    ldrh r0, [r0]
    str r0, [r5, #0x44]
.L0806B4C0:
    ldr r0, [r4]
    bl func_0802A814
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0806B4D6
    ldr r0, [r4]
    adds r0, #0x4a
    ldrh r0, [r0]
    str r0, [r5, #0x48]
.L0806B4D6:
    ldr r0, .L0806B538 @ =gBanimFactionPal
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0806B50E
    ldr r4, .L0806B540 @ =0x0203E098
    ldr r0, [r4]
    bl func_08029BE8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0806B4F8
    ldr r0, [r4]
    adds r0, #0x4a
    ldrh r0, [r0]
    str r0, [r5, #0x4c]
.L0806B4F8:
    ldr r0, [r4]
    bl func_0802A814
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0806B50E
    ldr r0, [r4]
    adds r0, #0x4a
    ldrh r0, [r0]
    str r0, [r5, #0x50]
.L0806B50E:
    ldr r0, [r5, #0x44]
    ldr r1, [r5, #0x48]
    adds r0, r0, r1
    ldr r1, [r5, #0x4c]
    adds r0, r0, r1
    ldr r1, [r5, #0x50]
    cmn r0, r1
    bne .L0806B544
.L0806B51E:
    ldr r1, .L0806B534 @ =0x0202013C
    movs r0, #1
    str r0, [r1]
    bl func_0806B07C
    b .L0806B54A
    .align 2, 0
.L0806B52C: .4byte 0x02020138
.L0806B530: .4byte 0x08BDCD54
.L0806B534: .4byte 0x0202013C
.L0806B538: .4byte gBanimFactionPal
.L0806B53C: .4byte 0x0203E094
.L0806B540: .4byte 0x0203E098
.L0806B544:
    movs r0, #0x80
    bl SetBgmVolume
.L0806B54A:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0806B40C

    thumb_func_start func_0806B550
func_0806B550: @ 0x0806B550
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x10
    ble .L0806B568
    adds r0, r1, #0
    bl Proc_Break
.L0806B568:
    pop {r0}
    bx r0
    func_end func_0806B550

    thumb_func_start func_0806B56C
func_0806B56C: @ 0x0806B56C
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x44]
    cmp r2, #0
    beq .L0806B588
    movs r1, #0
    bl func_0806B1A4
    bl func_0806B098
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x60
    strh r0, [r4, #0x2e]
.L0806B588:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B56C

    thumb_func_start func_0806B594
func_0806B594: @ 0x0806B594
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L0806B5A6
    adds r0, r4, #0
    bl Proc_Break
    b .L0806B5C6
.L0806B5A6:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806B5C6
    ldr r0, [r4, #0x60]
    bl AnimDelete
    bl SpellFx_ClearBG1
    adds r0, r4, #0
    bl Proc_Break
.L0806B5C6:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B594

    thumb_func_start func_0806B5CC
func_0806B5CC: @ 0x0806B5CC
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x4c]
    cmp r2, #0
    beq .L0806B5E8
    movs r1, #0
    bl func_0806B1A4
    bl func_0806B098
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x60
    strh r0, [r4, #0x2e]
.L0806B5E8:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B5CC

    thumb_func_start func_0806B5F4
func_0806B5F4: @ 0x0806B5F4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x4c]
    cmp r0, #0
    bne .L0806B606
    adds r0, r4, #0
    bl Proc_Break
    b .L0806B626
.L0806B606:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806B626
    ldr r0, [r4, #0x60]
    bl AnimDelete
    bl SpellFx_ClearBG1
    adds r0, r4, #0
    bl Proc_Break
.L0806B626:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B5F4

    thumb_func_start func_0806B62C
func_0806B62C: @ 0x0806B62C
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x48]
    cmp r2, #0
    beq .L0806B648
    movs r1, #1
    bl func_0806B1A4
    bl func_0806B0AC
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x6c
    strh r0, [r4, #0x2e]
.L0806B648:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B62C

    thumb_func_start func_0806B654
func_0806B654: @ 0x0806B654
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x48]
    cmp r0, #0
    bne .L0806B666
    adds r0, r4, #0
    bl Proc_Break
    b .L0806B686
.L0806B666:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806B686
    ldr r0, [r4, #0x60]
    bl AnimDelete
    bl SpellFx_ClearBG1
    adds r0, r4, #0
    bl Proc_Break
.L0806B686:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B654

    thumb_func_start func_0806B68C
func_0806B68C: @ 0x0806B68C
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x50]
    cmp r2, #0
    beq .L0806B6A8
    movs r1, #1
    bl func_0806B1A4
    bl func_0806B0AC
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x6c
    strh r0, [r4, #0x2e]
.L0806B6A8:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B68C

    thumb_func_start func_0806B6B4
func_0806B6B4: @ 0x0806B6B4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x50]
    cmp r0, #0
    bne .L0806B6C6
    adds r0, r4, #0
    bl Proc_Break
    b .L0806B6EA
.L0806B6C6:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806B6EA
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    bl SpellFx_ClearBG1
    adds r0, r4, #0
    bl Proc_Break
.L0806B6EA:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B6B4

    thumb_func_start func_0806B6F0
func_0806B6F0: @ 0x0806B6F0
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x10
    ble .L0806B716
    ldr r0, .L0806B71C @ =0x0202013C
    movs r1, #1
    str r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #1
    bl SetBgmVolume
    adds r0, r4, #0
    bl Proc_Break
.L0806B716:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B71C: .4byte 0x0202013C
    func_end func_0806B6F0

    thumb_func_start func_0806B720
func_0806B720: @ 0x0806B720
    bx lr
    func_end func_0806B720

    thumb_func_start func_0806B724
func_0806B724: @ 0x0806B724
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x4c]
    cmp r0, #0
    beq .L0806B744
    ldr r2, [r4, #0x44]
    adds r0, r4, #0
    movs r1, #2
    bl func_0806B1A4
    bl func_0806B098
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x60
    strh r0, [r4, #0x2e]
.L0806B744:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B724

    thumb_func_start func_0806B750
func_0806B750: @ 0x0806B750
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x50]
    cmp r0, #0
    bne .L0806B762
    adds r0, r4, #0
    bl Proc_Break
    b .L0806B786
.L0806B762:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806B786
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    bl SpellFx_ClearBG1
    adds r0, r4, #0
    bl Proc_Break
.L0806B786:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B750

    thumb_func_start func_0806B78C
func_0806B78C: @ 0x0806B78C
    ldr r1, .L0806B7A0 @ =0x0203A3D8
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0806B7A4
    movs r0, #0
    b .L0806B7A6
    .align 2, 0
.L0806B7A0: .4byte 0x0203A3D8
.L0806B7A4:
    movs r0, #1
.L0806B7A6:
    bx lr
    func_end func_0806B78C

    thumb_func_start func_0806B7A8
func_0806B7A8: @ 0x0806B7A8
    push {lr}
    bl func_0804B1AC
    bl AnimClearAll
    bl func_0804D43C
    ldr r1, .L0806B7C8 @ =0x02017744
    str r0, [r1]
    bl func_0806B7E4
    movs r0, #0
    bl SetOnHBlankA
    pop {r0}
    bx r0
    .align 2, 0
.L0806B7C8: .4byte 0x02017744
    func_end func_0806B7A8

    thumb_func_start func_0806B7CC
func_0806B7CC: @ 0x0806B7CC
    push {lr}
    bl AnimClearAll
    bl func_0806B8E8
    ldr r0, .L0806B7E0 @ =func_08050A38
    bl SetMainFunc
    pop {r0}
    bx r0
    .align 2, 0
.L0806B7E0: .4byte func_08050A38
    func_end func_0806B7CC

    thumb_func_start func_0806B7E4
func_0806B7E4: @ 0x0806B7E4
    push {lr}
    ldr r0, .L0806B7F4 @ =0x08BDCDF4
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L0806B7F4: .4byte 0x08BDCDF4
    func_end func_0806B7E4

    thumb_func_start func_0806B7F8
func_0806B7F8: @ 0x0806B7F8
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0
    bl InitOam
    bl func_0804CF5C
    bl UpdateBanimFrame
    bl func_0804C1D0
    bl func_0804CD64
    bl func_0804B218
    ldr r0, .L0806B84C @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    bl func_0806B020
    ldr r4, .L0806B850 @ =gPal
    ldr r1, .L0806B854 @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    adds r0, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    movs r3, #0x10
    bl EfxPalBlackInOut
    bl EnablePalSync
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B84C: .4byte 0x0203E00A
.L0806B850: .4byte gPal
.L0806B854: .4byte 0x020165C8
    func_end func_0806B7F8

    thumb_func_start func_0806B858
func_0806B858: @ 0x0806B858
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804C46C
    bl func_0804CDC8
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x10
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806B858

    thumb_func_start func_0806B878
func_0806B878: @ 0x0806B878
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r6, r0]
    movs r1, #0x2e
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L0806B8D4 @ =0x020165C8
    ldr r4, .L0806B8D8 @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    adds r3, r5, #0
    bl EfxPalBlackInOut
    bl EnablePalSync
    ldrh r1, [r6, #0x2c]
    adds r1, #1
    strh r1, [r6, #0x2c]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r2, #0x2e
    ldrsh r0, [r6, r2]
    adds r0, #1
    cmp r1, r0
    bne .L0806B8CC
    adds r0, r6, #0
    bl Proc_Break
.L0806B8CC:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B8D4: .4byte 0x020165C8
.L0806B8D8: .4byte gPal
    func_end func_0806B878

    thumb_func_start func_0806B8DC
func_0806B8DC: @ 0x0806B8DC
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_0806B8DC

    thumb_func_start func_0806B8E8
func_0806B8E8: @ 0x0806B8E8
    push {lr}
    ldr r0, .L0806B8F8 @ =0x08BDCE24
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L0806B8F8: .4byte 0x08BDCE24
    func_end func_0806B8E8

    thumb_func_start func_0806B8FC
func_0806B8FC: @ 0x0806B8FC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0806B920 @ =gPal
    ldr r1, .L0806B924 @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    bl CpuFastSet
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x10
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B920: .4byte gPal
.L0806B924: .4byte 0x020165C8
    func_end func_0806B8FC

    thumb_func_start func_0806B928
func_0806B928: @ 0x0806B928
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r6, r0]
    movs r1, #0x2e
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x10
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L0806B984 @ =0x020165C8
    ldr r4, .L0806B988 @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    adds r3, r5, #0
    bl EfxPalBlackInOut
    bl EnablePalSync
    ldrh r1, [r6, #0x2c]
    adds r1, #1
    strh r1, [r6, #0x2c]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r2, #0x2e
    ldrsh r0, [r6, r2]
    adds r0, #1
    cmp r1, r0
    bne .L0806B97C
    adds r0, r6, #0
    bl Proc_Break
.L0806B97C:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B984: .4byte 0x020165C8
.L0806B988: .4byte gPal
    func_end func_0806B928

    thumb_func_start func_0806B98C
func_0806B98C: @ 0x0806B98C
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804B1D8
    bl func_0804C438
    ldr r0, .L0806B9B0 @ =OnMain
    bl SetMainFunc
    ldr r0, .L0806B9B4 @ =OnVBlank
    bl SetOnVBlank
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806B9B0: .4byte OnMain
.L0806B9B4: .4byte OnVBlank
    func_end func_0806B98C

    thumb_func_start func_0806B9B8
func_0806B9B8: @ 0x0806B9B8
    push {r4, lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r4, .L0806B9E4 @ =0x08C999C0
    bl GetItemIndex
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r1, [r4]
    ldr r2, .L0806B9E8 @ =0x0000FFFF
    cmp r1, r2
    beq .L0806B9DC
.L0806B9D0:
    cmp r1, r0
    beq .L0806B9DC
    adds r4, #0x10
    ldrh r1, [r4]
    cmp r1, r2
    bne .L0806B9D0
.L0806B9DC:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0806B9E4: .4byte 0x08C999C0
.L0806B9E8: .4byte 0x0000FFFF
    func_end func_0806B9B8

    thumb_func_start func_0806B9EC
func_0806B9EC: @ 0x0806B9EC
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_0806B9B8
    ldrb r0, [r0, #2]
    pop {r1}
    bx r1
    func_end func_0806B9EC

    thumb_func_start func_0806B9FC
func_0806B9FC: @ 0x0806B9FC
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_0806B9B8
    ldrh r0, [r0, #4]
    pop {r1}
    bx r1
    func_end func_0806B9FC

    thumb_func_start func_0806BA0C
func_0806BA0C: @ 0x0806BA0C
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_0806B9B8
    ldr r0, [r0, #8]
    pop {r1}
    bx r1
    func_end func_0806BA0C

    thumb_func_start func_0806BA1C
func_0806BA1C: @ 0x0806BA1C
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_0806B9B8
    ldrb r0, [r0, #0xc]
    pop {r1}
    bx r1
    func_end func_0806BA1C

    thumb_func_start func_0806BA2C
func_0806BA2C: @ 0x0806BA2C
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_0806B9B8
    ldrb r0, [r0, #0xd]
    pop {r1}
    bx r1
    func_end func_0806BA2C

    thumb_func_start func_0806BA3C
func_0806BA3C: @ 0x0806BA3C
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_0806B9B8
    ldrb r0, [r0, #0xe]
    pop {r1}
    bx r1
    func_end func_0806BA3C
