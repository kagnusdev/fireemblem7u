    .include "asm_prelude.inc"

    thumb_func_start StartAdjustedMenu
StartAdjustedMenu: @ 0x0804A224
    push {r4, lr}
    adds r4, r0, #0
    adds r0, r2, #0
    ldr r2, [r4]
    cmp r1, #0x77
    bgt .L0804A234
    lsls r0, r3, #0x18
    b .L0804A236
.L0804A234:
    lsls r0, r0, #0x18
.L0804A236:
    lsrs r0, r0, #0x18
    ldr r1, .L0804A250 @ =0xFFFFFF00
    ands r2, r1
    orrs r2, r0
    adds r0, r4, #0
    adds r1, r2, #0
    movs r2, #0
    bl StartMenuExt
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0804A250: .4byte 0xFFFFFF00
    func_end StartAdjustedMenu

    thumb_func_start func_0804A254
func_0804A254: @ 0x0804A254
    push {lr}
    adds r2, r1, #0
    ldr r1, [r0]
    bl StartMenuExt
    pop {r1}
    bx r1
    func_end func_0804A254

    thumb_func_start func_0804A264
func_0804A264: @ 0x0804A264
    push {lr}
    movs r2, #0
    bl StartMenuExt
    pop {r1}
    bx r1
    func_end func_0804A264

    thumb_func_start StartMenu
StartMenu: @ 0x0804A270
    push {lr}
    ldr r1, [r0]
    movs r2, #0
    bl StartMenuExt
    pop {r1}
    bx r1
    func_end StartMenu

    thumb_func_start StartMenuExt
StartMenuExt: @ 0x0804A280
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    mov r8, r0
    mov sl, r1
    adds r4, r2, #0
    lsls r0, r1, #0x18
    asrs r0, r0, #0x18
    adds r0, #1
    str r0, [sp, #4]
    lsls r0, r1, #0x10
    asrs r0, r0, #0x18
    adds r0, #1
    mov sb, r0
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L0804A2E0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804A2CA
    movs r0, #0xe2
    lsls r0, r0, #2
    bl m4aSongNumStart
.L0804A2CA:
    cmp r4, #0
    beq .L0804A2E8
    ldr r0, .L0804A2E4 @ =0x08B9A8A0
    adds r1, r4, #0
    bl Proc_StartBlocking
    adds r5, r0, #0
    adds r1, r5, #0
    adds r1, #0x63
    movs r0, #0
    b .L0804A2FC
    .align 2, 0
.L0804A2E0: .4byte gPlaySt
.L0804A2E4: .4byte 0x08B9A8A0
.L0804A2E8:
    bl LockGame
    ldr r0, .L0804A418 @ =0x08B9A8A0
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    adds r1, r5, #0
    adds r1, #0x63
    movs r0, #1
.L0804A2FC:
    strb r0, [r1]
    mov r1, sl
    asrs r0, r1, #0x18
    str r0, [sp, #8]
    cmp r0, #0
    bge .L0804A314
    adds r1, r5, #0
    adds r1, #0x63
    movs r0, #8
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
.L0804A314:
    movs r7, #0
    movs r3, #0
    str r3, [sp]
    mov r0, r8
    ldr r1, [r0, #8]
    ldr r0, [r1, #0xc]
    mov r2, sl
    lsls r2, r2, #0x10
    str r2, [sp, #0x18]
    adds r3, r5, #0
    adds r3, #0x60
    str r3, [sp, #0xc]
    adds r2, r5, #0
    adds r2, #0x61
    str r2, [sp, #0x10]
    adds r3, #2
    str r3, [sp, #0x14]
    cmp r0, #0
    beq .L0804A3CA
    movs r6, #0
.L0804A33C:
    adds r0, r1, r6
    adds r1, r7, #0
    bl func_0804AC4C
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, #0
    bne .L0804A35E
    mov r1, r8
    ldr r0, [r1, #8]
    adds r0, r6, r0
    ldr r2, [r0, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
.L0804A35E:
    cmp r4, #3
    beq .L0804A3BA
    ldr r0, .L0804A41C @ =0x08B9A8E0
    adds r1, r5, #0
    bl Proc_Start
    adds r2, r0, #0
    ldr r3, [sp]
    lsls r1, r3, #2
    adds r0, r5, #0
    adds r0, #0x34
    adds r0, r0, r1
    str r2, [r0]
    adds r3, #1
    str r3, [sp]
    mov r1, r8
    ldr r0, [r1, #8]
    adds r0, r0, r6
    str r0, [r2, #0x30]
    adds r0, r2, #0
    adds r0, #0x3c
    strb r7, [r0]
    adds r0, #1
    strb r4, [r0]
    mov r3, sp
    ldrh r3, [r3, #4]
    strh r3, [r2, #0x2a]
    mov r0, sb
    strh r0, [r2, #0x2c]
    adds r1, r5, #0
    adds r1, #0x63
    movs r0, #8
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0804A3B6
    adds r0, r2, #0
    adds r0, #0x34
    mov r2, sl
    lsls r1, r2, #8
    asrs r1, r1, #0x18
    subs r1, #2
    bl InitText
.L0804A3B6:
    movs r3, #2
    add sb, r3
.L0804A3BA:
    adds r6, #0x24
    adds r7, #1
    mov r0, r8
    ldr r1, [r0, #8]
    adds r0, r6, r1
    ldr r0, [r0, #0xc]
    cmp r0, #0
    bne .L0804A33C
.L0804A3CA:
    mov r1, r8
    str r1, [r5, #0x30]
    mov r2, sl
    str r2, [r5, #0x2c]
    movs r2, #0
    mov r3, sp
    ldrb r0, [r3]
    ldr r3, [sp, #0xc]
    strb r0, [r3]
    ldr r1, [sp, #0x10]
    strb r2, [r1]
    movs r0, #0xff
    ldr r3, [sp, #0x14]
    strb r0, [r3]
    ldr r0, [sp, #0x18]
    asrs r1, r0, #0x18
    ldr r3, [sp, #8]
    adds r0, r1, r3
    cmp r0, sb
    bge .L0804A3FE
    subs r0, r1, #1
    mov r1, sb
    subs r0, r1, r0
    adds r1, r5, #0
    adds r1, #0x2f
    strb r0, [r1]
.L0804A3FE:
    ldr r0, .L0804A420 @ =gpKeySt
    ldr r0, [r0]
    strh r2, [r0, #8]
    adds r0, r5, #0
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0804A418: .4byte 0x08B9A8A0
.L0804A41C: .4byte 0x08B9A8E0
.L0804A420: .4byte gpKeySt
    func_end StartMenuExt

    thumb_func_start func_0804A424
func_0804A424: @ 0x0804A424
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x61
    ldrb r0, [r0]
    lsls r1, r0, #2
    adds r0, r4, #0
    adds r0, #0x34
    adds r0, r0, r1
    ldr r1, [r0]
    adds r5, r4, #0
    adds r5, #0x63
    movs r0, #4
    ldrb r2, [r5]
    orrs r0, r2
    strb r0, [r5]
    ldr r0, [r1, #0x30]
    ldr r2, [r0, #0x20]
    cmp r2, #0
    beq .L0804A450
    adds r0, r4, #0
    bl _call_via_r2
.L0804A450:
    ldr r0, [r4, #0x30]
    ldr r1, [r0, #0x10]
    cmp r1, #0
    beq .L0804A45E
    adds r0, r4, #0
    bl _call_via_r1
.L0804A45E:
    movs r0, #1
    ldrb r5, [r5]
    ands r0, r5
    cmp r0, #0
    beq .L0804A46C
    bl UnlockGame
.L0804A46C:
    adds r0, r4, #0
    bl Proc_End
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, [r4, #0x14]
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0804A424

    thumb_func_start func_0804A490
func_0804A490: @ 0x0804A490
    push {lr}
    ldr r0, .L0804A4A0 @ =0x08B9A8A0
    ldr r1, .L0804A4A4 @ =func_0804A424
    bl Proc_ForEach
    pop {r0}
    bx r0
    .align 2, 0
.L0804A4A0: .4byte 0x08B9A8A0
.L0804A4A4: .4byte func_0804A424
    func_end func_0804A490

    thumb_func_start func_0804A4A8
func_0804A4A8: @ 0x0804A4A8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    ldr r1, [r0, #0xc]
    cmp r1, #0
    beq .L0804A4BA
    adds r0, r4, #0
    bl _call_via_r1
.L0804A4BA:
    adds r0, r4, #0
    adds r0, #0x61
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r1, r4, #0
    adds r1, #0x34
    adds r1, r1, r0
    ldr r1, [r1]
    ldr r0, [r1, #0x30]
    ldr r2, [r0, #0x1c]
    cmp r2, #0
    beq .L0804A4D8
    adds r0, r4, #0
    bl _call_via_r2
.L0804A4D8:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804A4A8

    thumb_func_start func_0804A4E0
func_0804A4E0: @ 0x0804A4E0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r6, r0, #0
    adds r1, r6, #0
    adds r1, #0x63
    movs r0, #8
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0804A5CE
    adds r0, r6, #0
    adds r0, #0x2c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r6, #0
    adds r1, #0x2d
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r2, r6, #0
    adds r2, #0x2e
    ldrb r2, [r2]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r3, r6, #0
    adds r3, #0x2f
    ldrb r3, [r3]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    ldr r4, [r6, #0x30]
    ldrb r4, [r4, #4]
    str r4, [sp]
    bl DrawUiFrame2
    movs r7, #0
    adds r0, r6, #0
    adds r0, #0x60
    mov r8, r0
    movs r0, #0x61
    adds r0, r0, r6
    mov sb, r0
    mov r1, r8
    ldrb r1, [r1]
    cmp r7, r1
    bge .L0804A5BC
.L0804A542:
    lsls r1, r7, #2
    adds r0, r6, #0
    adds r0, #0x34
    adds r0, r0, r1
    ldr r5, [r0]
    ldr r1, [r5, #0x30]
    ldr r2, [r1, #0x10]
    cmp r2, #0
    beq .L0804A55E
    adds r0, r6, #0
    adds r1, r5, #0
    bl _call_via_r2
    b .L0804A5B2
.L0804A55E:
    ldrb r0, [r1, #8]
    cmp r0, #0
    beq .L0804A56E
    adds r0, r5, #0
    adds r0, #0x34
    ldrb r1, [r1, #8]
    bl Text_SetColor
.L0804A56E:
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #2
    bne .L0804A582
    adds r0, r5, #0
    adds r0, #0x34
    movs r1, #1
    bl Text_SetColor
.L0804A582:
    ldr r1, [r5, #0x30]
    ldrh r0, [r1, #4]
    cmp r0, #0
    beq .L0804A5B2
    adds r4, r5, #0
    adds r4, #0x34
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    movs r2, #0x2c
    ldrsh r1, [r5, r2]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0804A5DC @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
.L0804A5B2:
    adds r7, #1
    mov r0, r8
    ldrb r0, [r0]
    cmp r7, r0
    blt .L0804A542
.L0804A5BC:
    mov r2, sb
    ldrb r1, [r2]
    adds r0, r6, #0
    movs r2, #1
    bl func_0804A5E0
    movs r0, #3
    bl EnableBgSync
.L0804A5CE:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804A5DC: .4byte gBg0Tm
    func_end func_0804A4E0

    thumb_func_start func_0804A5E0
func_0804A5E0: @ 0x0804A5E0
    push {r4, lr}
    mov ip, r0
    lsls r2, r2, #0x18
    lsrs r4, r2, #0x18
    mov r3, ip
    adds r3, #0x63
    movs r0, #0x10
    ldrb r3, [r3]
    ands r0, r3
    cmp r0, #0
    bne .L0804A636
    mov r0, ip
    adds r0, #0x2c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r3, r0, #1
    lsls r1, r1, #2
    mov r0, ip
    adds r0, #0x34
    adds r0, r0, r1
    ldr r0, [r0]
    movs r2, #0x2c
    ldrsh r1, [r0, r2]
    mov r0, ip
    adds r0, #0x2e
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    subs r2, r0, #2
    lsls r0, r4, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0804A630
    cmp r0, #1
    bne .L0804A636
    adds r0, r3, #0
    bl DrawUiItemHover
    b .L0804A636
.L0804A630:
    adds r0, r3, #0
    bl ClearUiItemHover
.L0804A636:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804A5E0

    thumb_func_start func_0804A63C
func_0804A63C: @ 0x0804A63C
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r0, #0x63
    ldrb r1, [r0]
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L0804A662
    add r2, sp, #4
    adds r0, r5, #0
    mov r1, sp
    bl func_0804A8B0
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl DisplayFrozenUiHand
    b .L0804A726
.L0804A662:
    movs r0, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L0804A672
    adds r0, r5, #0
    bl func_0804A424
    b .L0804A726
.L0804A672:
    adds r0, r5, #0
    bl func_0804A73C
    adds r0, r5, #0
    bl func_0804A820
    adds r4, r0, #0
    movs r0, #2
    ands r0, r4
    cmp r0, #0
    beq .L0804A68E
    adds r0, r5, #0
    bl func_0804A424
.L0804A68E:
    movs r0, #4
    ands r0, r4
    cmp r0, #0
    beq .L0804A6A8
    ldr r0, .L0804A730 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804A6A8
    ldr r0, .L0804A734 @ =0x0000038A
    bl m4aSongNumStart
.L0804A6A8:
    movs r0, #8
    ands r0, r4
    cmp r0, #0
    beq .L0804A6C2
    ldr r0, .L0804A730 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804A6C2
    ldr r0, .L0804A738 @ =0x0000038B
    bl m4aSongNumStart
.L0804A6C2:
    movs r0, #0x10
    ands r0, r4
    cmp r0, #0
    beq .L0804A6CE
    bl ClearUi
.L0804A6CE:
    movs r6, #0x20
    adds r0, r4, #0
    ands r0, r6
    cmp r0, #0
    beq .L0804A6DE
    movs r0, #0
    bl EndFaceById
.L0804A6DE:
    movs r0, #0x80
    ands r0, r4
    cmp r0, #0
    beq .L0804A6F2
    adds r1, r5, #0
    adds r1, #0x63
    movs r0, #0x80
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
.L0804A6F2:
    movs r0, #1
    ands r0, r4
    cmp r0, #0
    bne .L0804A726
    adds r1, r5, #0
    adds r1, #0x63
    adds r0, r6, #0
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0804A726
    add r4, sp, #4
    adds r0, r5, #0
    mov r1, sp
    adds r2, r4, #0
    bl func_0804A8B0
    adds r0, r5, #0
    mov r1, sp
    adds r2, r4, #0
    bl func_0804AB58
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl PutUiHand
.L0804A726:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804A730: .4byte gPlaySt
.L0804A734: .4byte 0x0000038A
.L0804A738: .4byte 0x0000038B
    func_end func_0804A63C

    thumb_func_start func_0804A73C
func_0804A73C: @ 0x0804A73C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r2, r6, #0
    adds r2, #0x61
    ldrb r0, [r2]
    adds r1, r6, #0
    adds r1, #0x62
    strb r0, [r1]
    ldr r1, .L0804A814 @ =gpKeySt
    ldr r3, [r1]
    ldrh r4, [r3, #6]
    movs r0, #0x40
    ands r0, r4
    cmp r0, #0
    beq .L0804A774
    ldrb r0, [r2]
    cmp r0, #0
    bne .L0804A76E
    ldrh r3, [r3, #8]
    cmp r4, r3
    bne .L0804A80C
    adds r0, r6, #0
    adds r0, #0x60
    ldrb r0, [r0]
    strb r0, [r2]
.L0804A76E:
    ldrb r0, [r2]
    subs r0, #1
    strb r0, [r2]
.L0804A774:
    ldr r1, [r1]
    ldrh r3, [r1, #6]
    movs r0, #0x80
    ands r0, r3
    adds r4, r6, #0
    adds r4, #0x61
    cmp r0, #0
    beq .L0804A7A2
    ldrb r2, [r4]
    adds r0, r6, #0
    adds r0, #0x60
    ldrb r0, [r0]
    subs r0, #1
    cmp r2, r0
    bne .L0804A79C
    ldrh r1, [r1, #8]
    cmp r3, r1
    bne .L0804A80C
    movs r0, #0xff
    strb r0, [r4]
.L0804A79C:
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
.L0804A7A2:
    adds r0, r6, #0
    adds r0, #0x62
    adds r5, r0, #0
    ldrb r0, [r5]
    ldrb r1, [r4]
    cmp r0, r1
    beq .L0804A7D6
    ldrb r1, [r5]
    adds r0, r6, #0
    movs r2, #0
    bl func_0804A5E0
    ldrb r1, [r4]
    adds r0, r6, #0
    movs r2, #1
    bl func_0804A5E0
    ldr r0, .L0804A818 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804A7D6
    ldr r0, .L0804A81C @ =0x00000386
    bl m4aSongNumStart
.L0804A7D6:
    ldrb r0, [r4]
    ldrb r1, [r5]
    cmp r0, r1
    beq .L0804A80C
    lsls r0, r1, #2
    adds r5, r6, #0
    adds r5, #0x34
    adds r0, r5, r0
    ldr r1, [r0]
    ldr r0, [r1, #0x30]
    ldr r2, [r0, #0x20]
    cmp r2, #0
    beq .L0804A7F6
    adds r0, r6, #0
    bl _call_via_r2
.L0804A7F6:
    ldrb r4, [r4]
    lsls r0, r4, #2
    adds r0, r5, r0
    ldr r1, [r0]
    ldr r0, [r1, #0x30]
    ldr r2, [r0, #0x1c]
    cmp r2, #0
    beq .L0804A80C
    adds r0, r6, #0
    bl _call_via_r2
.L0804A80C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804A814: .4byte gpKeySt
.L0804A818: .4byte gPlaySt
.L0804A81C: .4byte 0x00000386
    func_end func_0804A73C

    thumb_func_start func_0804A820
func_0804A820: @ 0x0804A820
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    movs r6, #0
    adds r0, #0x61
    ldrb r0, [r0]
    lsls r1, r0, #2
    adds r0, r4, #0
    adds r0, #0x34
    adds r0, r0, r1
    ldr r5, [r0]
    ldr r7, [r5, #0x30]
    ldr r2, [r7, #0x18]
    cmp r2, #0
    beq .L0804A848
    adds r0, r4, #0
    adds r1, r5, #0
    bl _call_via_r2
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
.L0804A848:
    ldr r0, .L0804A86C @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0804A870
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0804AC88
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
    cmp r6, #0xff
    bne .L0804A8A6
    ldr r2, [r7, #0x14]
    b .L0804A87C
    .align 2, 0
.L0804A86C: .4byte gpKeySt
.L0804A870:
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L0804A88E
    ldr r0, [r4, #0x30]
    ldr r2, [r0, #0x18]
.L0804A87C:
    cmp r2, #0
    beq .L0804A8A6
    adds r0, r4, #0
    adds r1, r5, #0
    bl _call_via_r2
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
    b .L0804A8A6
.L0804A88E:
    movs r0, #0x80
    lsls r0, r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0804A8A6
    ldr r0, [r4, #0x30]
    ldr r1, [r0, #0x1c]
    cmp r1, #0
    beq .L0804A8A6
    adds r0, r4, #0
    bl _call_via_r1
.L0804A8A6:
    adds r0, r6, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0804A820

    thumb_func_start func_0804A8B0
func_0804A8B0: @ 0x0804A8B0
    push {r4, r5, r6, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    movs r0, #0x61
    adds r0, r0, r3
    mov ip, r0
    ldrb r1, [r0]
    lsls r0, r1, #2
    adds r1, r3, #0
    adds r1, #0x34
    adds r0, r1, r0
    ldr r0, [r0]
    movs r5, #0x2a
    ldrsh r0, [r0, r5]
    lsls r0, r0, #3
    subs r0, #4
    str r0, [r4]
    mov r6, ip
    ldrb r6, [r6]
    lsls r0, r6, #2
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #0x2c
    ldrsh r0, [r0, r1]
    lsls r0, r0, #3
    str r0, [r2]
    ldr r0, [r3, #0x30]
    ldrb r0, [r0, #4]
    cmp r0, #0
    beq .L0804A8F2
    ldr r0, [r4]
    subs r0, #4
    str r0, [r4]
.L0804A8F2:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0804A8B0

    thumb_func_start func_0804A8F8
func_0804A8F8: @ 0x0804A8F8
    movs r0, #1
    bx lr
    func_end func_0804A8F8

    thumb_func_start func_0804A8FC
func_0804A8FC: @ 0x0804A8FC
    movs r0, #2
    bx lr
    func_end func_0804A8FC

    thumb_func_start func_0804A900
func_0804A900: @ 0x0804A900
    movs r0, #3
    bx lr
    func_end func_0804A900

    thumb_func_start func_0804A904
func_0804A904: @ 0x0804A904
    movs r0, #0x1b
    bx lr
    func_end func_0804A904

    thumb_func_start func_0804A908
func_0804A908: @ 0x0804A908
    push {lr}
    movs r2, #0x2a
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r2, #0x2c
    ldrsh r3, [r1, r2]
    lsls r3, r3, #3
    ldr r1, [r1, #0x30]
    ldrh r2, [r1, #6]
    adds r1, r3, #0
    bl func_0808190C
    pop {r1}
    bx r1
    func_end func_0804A908

    thumb_func_start func_0804A924
func_0804A924: @ 0x0804A924
    push {r4, lr}
    adds r4, r0, #0
    movs r1, #1
    rsbs r1, r1, #0
    movs r0, #0
    bl func_08082528
    ldr r2, [r4, #0x30]
    adds r0, r4, #0
    adds r0, #0x61
    ldrb r0, [r0]
    lsls r1, r0, #2
    adds r0, r4, #0
    adds r0, #0x34
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r2, [r2, #0x20]
    adds r0, r4, #0
    bl _call_via_r2
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804A924

    thumb_func_start func_0804A954
func_0804A954: @ 0x0804A954
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    bl func_0804A73C
    add r4, sp, #4
    adds r0, r5, #0
    mov r1, sp
    adds r2, r4, #0
    bl func_0804A8B0
    adds r0, r5, #0
    mov r1, sp
    adds r2, r4, #0
    bl func_0804AB58
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl PutUiHand
    ldr r0, .L0804A99C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x81
    lsls r0, r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0804A9A4
    bl func_08081B44
    ldr r1, .L0804A9A0 @ =0x08B9A888
    adds r0, r5, #0
    bl func_08004758
    b .L0804A9CA
    .align 2, 0
.L0804A99C: .4byte gpKeySt
.L0804A9A0: .4byte 0x08B9A888
.L0804A9A4:
    adds r1, r5, #0
    adds r1, #0x61
    adds r0, r5, #0
    adds r0, #0x62
    ldrb r2, [r1]
    ldrb r0, [r0]
    cmp r2, r0
    beq .L0804A9CA
    ldr r2, [r5, #0x30]
    ldrb r1, [r1]
    lsls r1, r1, #2
    adds r0, r5, #0
    adds r0, #0x34
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r2, [r2, #0x20]
    adds r0, r5, #0
    bl _call_via_r2
.L0804A9CA:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0804A954

    thumb_func_start func_0804A9D4
func_0804A9D4: @ 0x0804A9D4
    push {lr}
    ldr r1, .L0804A9E0 @ =0x08B9A8E8
    bl func_08004758
    pop {r1}
    bx r1
    .align 2, 0
.L0804A9E0: .4byte 0x08B9A8E8
    func_end func_0804A9D4

    thumb_func_start func_0804A9E4
func_0804A9E4: @ 0x0804A9E4
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    add r4, sp, #4
    mov r1, sp
    adds r2, r4, #0
    bl func_0804A8B0
    adds r0, r5, #0
    mov r1, sp
    adds r2, r4, #0
    bl func_0804AB58
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl DisplayFrozenUiHand
    ldr r0, .L0804AA2C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x81
    lsls r0, r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0804AA22
    bl func_08081B44
    ldr r1, .L0804AA30 @ =0x08B9A888
    adds r0, r5, #0
    bl func_08004758
.L0804AA22:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804AA2C: .4byte gpKeySt
.L0804AA30: .4byte 0x08B9A888
    func_end func_0804A9E4

    thumb_func_start MenuFrozenHelpBox
MenuFrozenHelpBox: @ 0x0804AA34
    push {r4, r5, lr}
    adds r5, r1, #0
    ldr r1, .L0804AA64 @ =0x08B9A900
    bl func_08004758
    movs r1, #1
    rsbs r1, r1, #0
    movs r0, #0
    bl func_08082528
    bl GetUiHandPrevX
    adds r4, r0, #0
    bl GetUiHandPrevY
    adds r1, r0, #0
    adds r0, r4, #0
    adds r2, r5, #0
    bl func_0808190C
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0804AA64: .4byte 0x08B9A900
    func_end MenuFrozenHelpBox

    thumb_func_start func_0804AA68
func_0804AA68: @ 0x0804AA68
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    add r4, sp, #4
    mov r1, sp
    adds r2, r4, #0
    bl func_0804A8B0
    adds r0, r5, #0
    mov r1, sp
    adds r2, r4, #0
    bl func_0804AB58
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl DisplayFrozenUiHand
    ldr r0, .L0804AAA8 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #3
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0804AAA0
    ldr r1, .L0804AAAC @ =0x08B9A888
    adds r0, r5, #0
    bl func_08004758
.L0804AAA0:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804AAA8: .4byte gpKeySt
.L0804AAAC: .4byte 0x08B9A888
    func_end func_0804AA68

    thumb_func_start func_0804AAB0
func_0804AAB0: @ 0x0804AAB0
    push {lr}
    ldr r1, .L0804AABC @ =0x08B9A910
    bl func_08004758
    pop {r1}
    bx r1
    .align 2, 0
.L0804AABC: .4byte 0x08B9A910
    func_end func_0804AAB0

    thumb_func_start func_0804AAC0
func_0804AAC0: @ 0x0804AAC0
    push {lr}
    ldr r0, .L0804AADC @ =0x08B9A8A0
    bl Proc_Find
    cmp r0, #0
    beq .L0804AAD6
    adds r0, #0x63
    movs r1, #0x40
    ldrb r2, [r0]
    orrs r1, r2
    strb r1, [r0]
.L0804AAD6:
    pop {r0}
    bx r0
    .align 2, 0
.L0804AADC: .4byte 0x08B9A8A0
    func_end func_0804AAC0

    thumb_func_start func_0804AAE0
func_0804AAE0: @ 0x0804AAE0
    push {lr}
    ldr r0, .L0804AAFC @ =0x08B9A8A0
    bl Proc_Find
    cmp r0, #0
    beq .L0804AAF8
    adds r1, r0, #0
    adds r1, #0x63
    movs r0, #0xbf
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
.L0804AAF8:
    pop {r0}
    bx r0
    .align 2, 0
.L0804AAFC: .4byte 0x08B9A8A0
    func_end func_0804AAE0

    thumb_func_start StartSemiCenteredOrphanMenu
StartSemiCenteredOrphanMenu: @ 0x0804AB00
    push {r4, r5, r6, r7, lr}
    bl StartAdjustedMenu
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x60
    ldrb r0, [r1]
    cmp r0, #6
    bls .L0804AB4A
    adds r2, r4, #0
    adds r2, #0x2d
    ldr r5, .L0804AB54 @ =0x08B9A920
    ldrb r3, [r1]
    adds r0, r3, r5
    ldrb r7, [r2]
    ldrb r0, [r0]
    subs r0, r7, r0
    strb r0, [r2]
    movs r3, #0
    ldrb r0, [r1]
    cmp r3, r0
    bge .L0804AB4A
    adds r6, r5, #0
    adds r2, r1, #0
    adds r5, r4, #0
    adds r5, #0x34
.L0804AB34:
    ldm r5!, {r0}
    ldrb r7, [r2]
    adds r1, r7, r6
    ldrh r7, [r0, #0x2c]
    ldrb r1, [r1]
    subs r1, r7, r1
    strh r1, [r0, #0x2c]
    adds r3, #1
    ldrb r0, [r2]
    cmp r3, r0
    blt .L0804AB34
.L0804AB4A:
    adds r0, r4, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0804AB54: .4byte 0x08B9A920
    func_end StartSemiCenteredOrphanMenu

    thumb_func_start func_0804AB58
func_0804AB58: @ 0x0804AB58
    push {r4, r5, r6, lr}
    adds r1, r0, #0
    adds r6, r2, #0
    adds r0, #0x60
    ldrb r2, [r0]
    cmp r2, #9
    bls .L0804AB96
    lsls r0, r2, #4
    subs r0, #0x90
    adds r1, #0x61
    ldrb r1, [r1]
    muls r0, r1, r0
    movs r1, #9
    bl __divsi3
    adds r5, r0, #0
    lsls r4, r5, #0x10
    lsrs r4, r4, #0x10
    movs r0, #0
    movs r1, #0
    adds r2, r4, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    adds r2, r4, #0
    bl SetBgOffset
    ldr r0, [r6]
    subs r0, r0, r5
    str r0, [r6]
.L0804AB96:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0804AB58

    thumb_func_start ClearMenuOverrides
ClearMenuOverrides: @ 0x0804AB9C
    ldr r1, .L0804ABB0 @ =0x03001458
    movs r2, #0
    adds r0, r1, #0
    adds r0, #0x78
.L0804ABA4:
    strh r2, [r0, #2]
    subs r0, #8
    cmp r0, r1
    bge .L0804ABA4
    bx lr
    .align 2, 0
.L0804ABB0: .4byte 0x03001458
    func_end ClearMenuOverrides

    thumb_func_start func_0804ABB4
func_0804ABB4: @ 0x0804ABB4
    push {r4, r5, r6, lr}
    movs r4, #0
    adds r1, r0, #0
    ldr r2, .L0804ABD4 @ =0x03001458
    ldr r5, .L0804ABD8 @ =func_0804A900
    adds r3, r2, #4
.L0804ABC0:
    movs r6, #2
    ldrsh r0, [r2, r6]
    cmp r0, #0
    beq .L0804ABDC
    ldr r0, [r3]
    cmp r0, r5
    bne .L0804ABDC
    ldrh r0, [r2]
    b .L0804ABDE
    .align 2, 0
.L0804ABD4: .4byte 0x03001458
.L0804ABD8: .4byte func_0804A900
.L0804ABDC:
    movs r0, #0
.L0804ABDE:
    strb r0, [r1]
    adds r1, #1
    adds r2, #8
    adds r3, #8
    adds r4, #1
    cmp r4, #0xf
    ble .L0804ABC0
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0804ABB4

    thumb_func_start func_0804ABF4
func_0804ABF4: @ 0x0804ABF4
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
.L0804ABFA:
    adds r1, r5, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0804AC0A
    movs r1, #1
    ldr r2, .L0804AC18 @ =func_0804A900
    bl SetMenuOverride
.L0804AC0A:
    adds r4, #1
    cmp r4, #0xf
    ble .L0804ABFA
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804AC18: .4byte func_0804A900
    func_end func_0804ABF4

    thumb_func_start SetMenuOverride
SetMenuOverride: @ 0x0804AC1C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r3, .L0804AC24 @ =0x03001458
    b .L0804AC2A
    .align 2, 0
.L0804AC24: .4byte 0x03001458
.L0804AC28:
    adds r3, #8
.L0804AC2A:
    movs r5, #2
    ldrsh r0, [r3, r5]
    cmp r0, #0
    beq .L0804AC3E
    cmp r0, r1
    bne .L0804AC28
    movs r5, #0
    ldrsh r0, [r3, r5]
    cmp r0, r4
    bne .L0804AC28
.L0804AC3E:
    strh r4, [r3]
    strh r1, [r3, #2]
    str r2, [r3, #4]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end SetMenuOverride

    thumb_func_start func_0804AC4C
func_0804AC4C: @ 0x0804AC4C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r2, .L0804AC54 @ =0x03001458
    b .L0804AC76
    .align 2, 0
.L0804AC54: .4byte 0x03001458
.L0804AC58:
    cmp r3, #1
    bne .L0804AC74
    movs r3, #0
    ldrsh r0, [r2, r3]
    ldrb r5, [r4, #9]
    cmp r0, r5
    bne .L0804AC74
    ldr r2, [r2, #4]
    adds r0, r4, #0
    bl _call_via_r2
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b .L0804AC82
.L0804AC74:
    adds r2, #8
.L0804AC76:
    ldrh r3, [r2, #2]
    movs r5, #2
    ldrsh r0, [r2, r5]
    cmp r0, #0
    bne .L0804AC58
    movs r0, #0
.L0804AC82:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0804AC4C

    thumb_func_start func_0804AC88
func_0804AC88: @ 0x0804AC88
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r3, r1, #0
    ldr r2, .L0804AC94 @ =0x03001458
    b .L0804ACBA
    .align 2, 0
.L0804AC94: .4byte 0x03001458
.L0804AC98:
    cmp r1, #2
    bne .L0804ACB8
    movs r0, #0
    ldrsh r1, [r2, r0]
    ldr r0, [r3, #0x30]
    ldrb r0, [r0, #9]
    cmp r1, r0
    bne .L0804ACB8
    ldr r2, [r2, #4]
    adds r0, r4, #0
    adds r1, r3, #0
    bl _call_via_r2
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b .L0804ACC6
.L0804ACB8:
    adds r2, #8
.L0804ACBA:
    ldrh r1, [r2, #2]
    movs r5, #2
    ldrsh r0, [r2, r5]
    cmp r0, #0
    bne .L0804AC98
    movs r0, #0xff
.L0804ACC6:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0804AC88

    thumb_func_start func_0804ACCC
func_0804ACCC: @ 0x0804ACCC
    adds r1, r0, #0
    adds r1, #0x61
    adds r0, #0x62
    ldrb r0, [r0]
    ldrb r1, [r1]
    eors r0, r1
    adds r1, r0, #0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
    bx lr
    func_end func_0804ACCC
