    .include "asm_prelude.inc"

    thumb_func_start func_080101CC
func_080101CC: @ 0x080101CC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r2, [r6, #0x38]
    movs r1, #0x80
    lsls r1, r1, #3
    adds r0, r2, r1
    ldr r4, .L080102E4 @ =0x0001FFFF
    ands r0, r4
    lsrs r0, r0, #5
    str r0, [sp, #4]
    ldr r1, [r6, #0x3c]
    adds r0, r1, #1
    movs r3, #0xf
    ands r0, r3
    lsls r0, r0, #0xc
    ldr r5, [sp, #4]
    orrs r5, r0
    str r5, [sp, #4]
    ands r2, r4
    lsrs r7, r2, #5
    ands r1, r3
    lsls r1, r1, #0xc
    orrs r7, r1
    ldr r1, [r6, #0x30]
    adds r4, r6, #0
    adds r4, #0x48
    ldr r2, [r6, #0x34]
    ldrh r0, [r4]
    adds r2, r0, r2
    ldr r5, .L080102E8 @ =0x08B905E8
    str r7, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    ldr r0, [r6, #0x44]
    subs r0, #2
    lsls r0, r0, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r0
    ldr r2, [r6, #0x34]
    ldrh r3, [r4]
    adds r2, r3, r2
    adds r0, r7, #4
    str r0, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    ldr r1, [r6, #0x30]
    ldrh r0, [r4]
    adds r0, #0x18
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    adds r0, r7, #0
    adds r0, #0xd
    str r0, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    ldr r0, [r6, #0x44]
    subs r0, #2
    lsls r0, r0, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r0
    ldrh r0, [r4]
    adds r0, #0x18
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    adds r0, r7, #0
    adds r0, #0x11
    str r0, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    ldr r1, [r6, #0x30]
    ldrh r0, [r4]
    adds r0, #8
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    ldr r5, .L080102EC @ =0x08B905B0
    adds r0, r7, #6
    str r0, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    ldr r1, [r6, #0x30]
    ldrh r0, [r4]
    adds r0, #0x10
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    adds r0, r7, #0
    adds r0, #0xb
    str r0, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    ldr r0, [r6, #0x44]
    subs r0, #1
    lsls r0, r0, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r0
    ldrh r0, [r4]
    adds r0, #8
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    adds r0, r7, #0
    adds r0, #0xa
    str r0, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    ldr r0, [r6, #0x44]
    subs r0, #1
    lsls r0, r0, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r0
    ldrh r0, [r4]
    adds r0, #0x10
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    adds r0, r7, #0
    adds r0, #0xc
    str r0, [sp]
    movs r0, #4
    adds r3, r5, #0
    bl PutSpriteExt
    movs r5, #2
    b .L0801030E
    .align 2, 0
.L080102E4: .4byte 0x0001FFFF
.L080102E8: .4byte 0x08B905E8
.L080102EC: .4byte 0x08B905B0
.L080102F0:
    lsls r0, r5, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r0
    adds r0, r6, #0
    adds r0, #0x48
    ldr r2, [r6, #0x34]
    ldrh r0, [r0]
    adds r2, r0, r2
    adds r0, r7, #2
    str r0, [sp]
    movs r0, #4
    ldr r3, .L0801034C @ =0x08B905E8
    bl PutSpriteExt
    adds r5, #2
.L0801030E:
    ldr r0, [r6, #0x44]
    subs r0, #2
    cmp r5, r0
    blt .L080102F0
    ldr r0, [r6, #0x44]
    subs r0, #1
    movs r1, #0x48
    adds r1, r1, r6
    mov sl, r1
    cmp r5, r0
    bge .L08010348
.L08010324:
    lsls r0, r5, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r0
    ldr r2, [r6, #0x34]
    mov r3, sl
    ldrh r3, [r3]
    adds r2, r3, r2
    adds r0, r7, #2
    str r0, [sp]
    movs r0, #4
    ldr r3, .L08010350 @ =0x08B905B0
    bl PutSpriteExt
    adds r5, #1
    ldr r0, [r6, #0x44]
    subs r0, #1
    cmp r5, r0
    blt .L08010324
.L08010348:
    movs r5, #2
    b .L08010374
    .align 2, 0
.L0801034C: .4byte 0x08B905E8
.L08010350: .4byte 0x08B905B0
.L08010354:
    lsls r0, r5, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r0
    mov r2, sl
    ldrh r0, [r2]
    adds r0, #0x18
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    adds r0, r7, #0
    adds r0, #0xf
    str r0, [sp]
    movs r0, #4
    ldr r3, .L08010454 @ =0x08B905E8
    bl PutSpriteExt
    adds r5, #2
.L08010374:
    ldr r0, [r6, #0x44]
    subs r0, #2
    cmp r5, r0
    blt .L08010354
    movs r5, #1
    ldr r0, [r6, #0x44]
    subs r0, #2
    cmp r5, r0
    bge .L080103CE
    mov sb, sl
    movs r3, #8
    adds r3, r3, r7
    mov r8, r3
.L0801038E:
    lsls r4, r5, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r4
    mov r2, sb
    ldrh r0, [r2]
    adds r0, #8
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    mov r3, r8
    str r3, [sp]
    movs r0, #4
    ldr r3, .L08010454 @ =0x08B905E8
    bl PutSpriteExt
    ldr r1, [r6, #0x30]
    adds r1, r1, r4
    mov r2, sb
    ldrh r0, [r2]
    adds r0, #0x10
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    mov r3, r8
    str r3, [sp]
    movs r0, #4
    ldr r3, .L08010454 @ =0x08B905E8
    bl PutSpriteExt
    adds r5, #2
    ldr r0, [r6, #0x44]
    subs r0, #2
    cmp r5, r0
    blt .L0801038E
.L080103CE:
    ldr r0, [r6, #0x44]
    subs r0, #1
    cmp r5, r0
    bge .L0801041A
    mov r8, sl
    ldr r0, .L08010458 @ =0x08B905B0
    mov sb, r0
    adds r7, #8
.L080103DE:
    lsls r4, r5, #3
    ldr r1, [r6, #0x30]
    adds r1, r1, r4
    mov r2, r8
    ldrh r0, [r2]
    adds r0, #8
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    str r7, [sp]
    movs r0, #4
    mov r3, sb
    bl PutSpriteExt
    ldr r1, [r6, #0x30]
    adds r1, r1, r4
    mov r3, r8
    ldrh r0, [r3]
    adds r0, #0x10
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    str r7, [sp]
    movs r0, #4
    mov r3, sb
    bl PutSpriteExt
    adds r5, #1
    ldr r0, [r6, #0x44]
    subs r0, #1
    cmp r5, r0
    blt .L080103DE
.L0801041A:
    ldr r4, [sp, #4]
    movs r7, #8
    movs r5, #2
.L08010420:
    ldr r1, [r6, #0x30]
    adds r1, r1, r7
    mov r2, sl
    ldrh r0, [r2]
    adds r0, #8
    ldr r2, [r6, #0x34]
    adds r2, r2, r0
    str r4, [sp]
    movs r0, #0
    ldr r3, .L0801045C @ =0x08B905F8
    bl PutSpriteExt
    adds r4, #4
    adds r7, #0x20
    subs r5, #1
    cmp r5, #0
    bge .L08010420
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08010454: .4byte 0x08B905E8
.L08010458: .4byte 0x08B905B0
.L0801045C: .4byte 0x08B905F8
    func_end func_080101CC

    thumb_func_start func_08010460
func_08010460: @ 0x08010460
    bx lr
    func_end func_08010460

    thumb_func_start func_08010464
func_08010464: @ 0x08010464
    adds r2, r0, #0
    lsls r1, r1, #0x18
    lsrs r0, r1, #0x18
    cmp r2, #0
    beq .L08010488
    lsls r0, r0, #0x18
    asrs r1, r0, #0x18
    cmp r1, #0
    beq .L08010482
    adds r1, r2, #0
    adds r1, #0x48
    movs r0, #0x80
    lsls r0, r0, #3
    strh r0, [r1]
    b .L08010488
.L08010482:
    adds r0, r2, #0
    adds r0, #0x48
    strh r1, [r0]
.L08010488:
    bx lr
    func_end func_08010464

    thumb_func_start func_0801048C
func_0801048C: @ 0x0801048C
    push {lr}
    adds r0, #0x4c
    movs r3, #0
    movs r1, #0
    strh r1, [r0]
    ldr r0, .L080104F8 @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    mov r0, ip
    adds r0, #0x44
    strb r3, [r0]
    mov r1, ip
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x46
    strb r3, [r0]
    ldr r0, .L080104FC @ =0x0000FFE0
    mov r3, ip
    ldrh r3, [r3, #0x3c]
    ands r0, r3
    ldr r1, .L08010500 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xf8
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    mov r1, ip
    strh r0, [r1, #0x3c]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    mov r1, ip
    adds r1, #0x3d
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    ldr r0, .L08010504 @ =0x08B91EDC
    bl Proc_Find
    movs r1, #1
    bl func_08010464
    pop {r0}
    bx r0
    .align 2, 0
.L080104F8: .4byte gDispIo
.L080104FC: .4byte 0x0000FFE0
.L08010500: .4byte 0x0000E0FF
.L08010504: .4byte 0x08B91EDC
    func_end func_0801048C

    thumb_func_start func_08010508
func_08010508: @ 0x08010508
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r3, r0, #0
    adds r0, #0x4c
    ldrh r1, [r0]
    adds r1, #1
    movs r6, #0
    strh r1, [r0]
    movs r1, #0
    ldrsh r4, [r0, r1]
    ldr r2, .L08010588 @ =gDispIo
    adds r5, r2, #0
    adds r5, #0x3c
    movs r0, #0x3f
    mov sl, r0
    ldrb r1, [r5]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r5]
    movs r0, #0x44
    adds r0, r0, r2
    mov sb, r0
    strb r4, [r0]
    movs r0, #0x10
    subs r0, r0, r4
    movs r1, #0x45
    adds r1, r1, r2
    mov r8, r1
    strb r0, [r1]
    adds r7, r2, #0
    adds r7, #0x46
    strb r6, [r7]
    cmp r4, #0x10
    bne .L08010578
    adds r0, r3, #0
    bl Proc_Break
    mov r0, sl
    ldrb r1, [r5]
    ands r0, r1
    strb r0, [r5]
    mov r0, sb
    strb r4, [r0]
    mov r1, r8
    strb r6, [r1]
    strb r6, [r7]
    ldr r0, .L0801058C @ =0x08B91EDC
    bl Proc_Find
    movs r1, #0
    bl func_08010464
.L08010578:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08010588: .4byte gDispIo
.L0801058C: .4byte 0x08B91EDC
    func_end func_08010508

    thumb_func_start func_08010590
func_08010590: @ 0x08010590
    push {lr}
    adds r0, #0x4c
    movs r3, #0
    movs r1, #0
    strh r1, [r0]
    ldr r0, .L080105FC @ =gDispIo
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
    movs r0, #0x10
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x45
    strb r3, [r0]
    adds r0, #1
    strb r3, [r0]
    ldr r0, .L08010600 @ =0x0000FFE0
    mov r3, ip
    ldrh r3, [r3, #0x3c]
    ands r0, r3
    ldr r1, .L08010604 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xf8
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    mov r1, ip
    strh r0, [r1, #0x3c]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    mov r1, ip
    adds r1, #0x3d
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    ldr r0, .L08010608 @ =0x08B91EDC
    bl Proc_Find
    movs r1, #1
    bl func_08010464
    pop {r0}
    bx r0
    .align 2, 0
.L080105FC: .4byte gDispIo
.L08010600: .4byte 0x0000FFE0
.L08010604: .4byte 0x0000E0FF
.L08010608: .4byte 0x08B91EDC
    func_end func_08010590

    thumb_func_start func_0801060C
func_0801060C: @ 0x0801060C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r0, #0x4c
    ldrh r1, [r0]
    adds r1, #1
    movs r4, #0
    strh r1, [r0]
    movs r1, #0
    ldrsh r3, [r0, r1]
    ldr r0, .L08010660 @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    movs r0, #0x10
    subs r0, r0, r3
    mov r1, ip
    adds r1, #0x44
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x45
    strb r3, [r0]
    adds r0, #1
    strb r4, [r0]
    cmp r3, #0x10
    bne .L0801065A
    ldr r0, .L08010664 @ =0x08B91EDC
    bl Proc_Find
    bl Proc_End
    adds r0, r5, #0
    bl Proc_Break
.L0801065A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08010660: .4byte gDispIo
.L08010664: .4byte 0x08B91EDC
    func_end func_0801060C

    thumb_func_start func_08010668
func_08010668: @ 0x08010668
    ldr r3, .L0801068C @ =gDispIo
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
    bx lr
    .align 2, 0
.L0801068C: .4byte gDispIo
    func_end func_08010668

    thumb_func_start func_08010690
func_08010690: @ 0x08010690
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    mov r8, r0
    mov sb, r1
    adds r4, r2, #0
    adds r5, r3, #0
    movs r6, #0
    ldr r0, .L08010788 @ =0x08B91EDC
    ldr r1, [sp, #0x44]
    bl Proc_Start
    adds r7, r0, #0
    adds r0, r4, #0
    bl DecodeMsg
    mov sl, r0
    mov r0, r8
    str r0, [r7, #0x30]
    mov r2, sb
    str r2, [r7, #0x34]
    str r5, [r7, #0x38]
    ldr r0, [sp, #0x40]
    str r0, [r7, #0x3c]
    str r4, [r7, #0x40]
    adds r0, r7, #0
    adds r0, #0x48
    strh r6, [r0]
    ldr r0, .L0801078C @ =0x08B91EFC
    ldr r1, [sp, #0x44]
    bl Proc_StartBlocking
    ldr r0, .L08010790 @ =0x0842535C
    ldr r1, [r7, #0x3c]
    adds r1, #0x10
    lsls r1, r1, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08010794 @ =0x08194674
    ldr r1, [r7, #0x3c]
    adds r1, #0x11
    lsls r1, r1, #5
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08010798 @ =0x084251BC
    ldr r1, [r7, #0x38]
    ldr r2, .L0801079C @ =0x06010000
    adds r1, r1, r2
    bl Decompress
    mov r0, sl
    bl GetStringTextLen
    adds r6, r0, #0
    cmp r6, #0
    bge .L0801070C
    adds r0, r6, #7
.L0801070C:
    asrs r5, r0, #3
    adds r6, r5, #5
    str r6, [r7, #0x44]
    ldr r0, [r7, #0x30]
    cmp r0, #0
    bge .L0801071C
    movs r0, #8
    str r0, [r7, #0x30]
.L0801071C:
    ldr r0, [r7, #0x44]
    lsls r1, r0, #3
    ldr r0, [r7, #0x30]
    adds r0, r0, r1
    cmp r0, #0xf0
    ble .L0801072E
    movs r0, #0xe8
    subs r0, r0, r1
    str r0, [r7, #0x30]
.L0801072E:
    ldr r1, [r7, #0x38]
    ldr r0, .L080107A0 @ =0x06010400
    adds r1, r1, r0
    ldr r2, [r7, #0x3c]
    adds r2, #0x12
    mov r0, sp
    bl InitSpriteTextFont
    mov r0, sp
    bl SetTextFont
    add r4, sp, #0x18
    adds r0, r4, #0
    bl InitSpriteText
    adds r0, r4, #0
    movs r1, #0
    bl SpriteText_DrawBackgroundExt
    movs r0, #0
    bl SetTextFontGlyphs
    adds r0, r5, #3
    lsls r0, r0, #3
    mov r1, sl
    bl GetStringTextCenteredPos
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #0
    mov r3, sl
    bl Text_InsertDrawString
    movs r0, #0
    bl SetTextFont
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08010788: .4byte 0x08B91EDC
.L0801078C: .4byte 0x08B91EFC
.L08010790: .4byte 0x0842535C
.L08010794: .4byte 0x08194674
.L08010798: .4byte 0x084251BC
.L0801079C: .4byte 0x06010000
.L080107A0: .4byte 0x06010400
    func_end func_08010690

    thumb_func_start func_080107A4
func_080107A4: @ 0x080107A4
    push {r4, r5, lr}
    sub sp, #8
    adds r2, r0, #0
    ldr r0, [r2, #0x30]
    ldr r5, [r0, #4]
    ldr r1, [r0, #8]
    movs r0, #0x80
    lsls r0, r0, #8
    ands r0, r1
    cmp r0, #0
    bne .L080107C4
    ldr r4, .L080107C0 @ =0x0000FFFF
    ands r4, r1
    b .L080107C8
    .align 2, 0
.L080107C0: .4byte 0x0000FFFF
.L080107C4:
    movs r4, #1
    rsbs r4, r4, #0
.L080107C8:
    ldr r0, [r2, #0x30]
    ldrh r3, [r0, #0xa]
    movs r0, #0x80
    lsls r0, r0, #8
    ands r0, r3
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, #0
    bne .L080107DC
    adds r1, r3, #0
.L080107DC:
    adds r3, r2, #0
    adds r3, #0x5e
    movs r0, #4
    ldrh r3, [r3]
    ands r0, r3
    cmp r0, #0
    bne .L08010800
    movs r3, #0xa0
    lsls r3, r3, #7
    movs r0, #9
    str r0, [sp]
    str r2, [sp, #4]
    adds r0, r4, #0
    adds r2, r5, #0
    bl func_08010690
    movs r0, #2
    b .L08010802
.L08010800:
    movs r0, #0
.L08010802:
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080107A4

    thumb_func_start func_0801080C
func_0801080C: @ 0x0801080C
    push {lr}
    adds r1, r0, #0
    adds r2, r1, #0
    adds r2, #0x5e
    movs r0, #4
    ldrh r2, [r2]
    ands r0, r2
    cmp r0, #0
    beq .L08010830
    ldr r0, .L0801082C @ =0x08B91EDC
    bl Proc_Find
    bl Proc_End
    movs r0, #0
    b .L08010858
    .align 2, 0
.L0801082C: .4byte 0x08B91EDC
.L08010830:
    adds r0, r1, #0
    adds r0, #0x4d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08010850
    ldr r0, .L0801084C @ =0x08B91EDC
    bl Proc_Find
    bl Proc_End
    b .L08010856
    .align 2, 0
.L0801084C: .4byte 0x08B91EDC
.L08010850:
    ldr r0, .L0801085C @ =0x08B91F14
    bl Proc_StartBlocking
.L08010856:
    movs r0, #2
.L08010858:
    pop {r1}
    bx r1
    .align 2, 0
.L0801085C: .4byte 0x08B91F14
    func_end func_0801080C

    thumb_func_start func_08010860
func_08010860: @ 0x08010860
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r4, .L08010910 @ =gDispIo
    movs r6, #1
    ldrb r0, [r4, #1]
    orrs r0, r6
    movs r7, #2
    orrs r0, r7
    movs r1, #5
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r4, #1]
    adds r3, r4, #0
    adds r3, #0x3c
    movs r0, #0x3f
    ldrb r1, [r3]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r3]
    adds r1, r4, #0
    adds r1, #0x44
    movs r2, #0
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x45
    strb r2, [r0]
    adds r0, #1
    strb r2, [r0]
    ldr r0, .L08010914 @ =0x0000FFE0
    ldrh r2, [r4, #0x3c]
    ands r0, r2
    movs r1, #4
    orrs r0, r1
    ldr r1, .L08010918 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r4, #0x3c]
    movs r0, #0x20
    ldrb r1, [r3]
    orrs r1, r0
    strb r1, [r3]
    adds r1, r4, #0
    adds r1, #0x3d
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, [r5, #0x34]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L0801091C
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r4, #0xc]
    ands r0, r2
    strb r0, [r4, #0xc]
    adds r0, r1, #0
    ldrb r2, [r4, #0x10]
    ands r0, r2
    orrs r0, r6
    strb r0, [r4, #0x10]
    ldrb r0, [r4, #0x14]
    ands r1, r0
    orrs r1, r7
    strb r1, [r4, #0x14]
    movs r0, #3
    ldrb r1, [r4, #0x18]
    orrs r0, r1
    strb r0, [r4, #0x18]
    movs r0, #8
    b .L0801091E
    .align 2, 0
.L08010910: .4byte gDispIo
.L08010914: .4byte 0x0000FFE0
.L08010918: .4byte 0x0000E0FF
.L0801091C:
    movs r0, #6
.L0801091E:
    str r0, [r5, #0x44]
    movs r0, #0
    str r0, [r5, #0x30]
    ldr r0, .L08010934 @ =0x08B90D88
    bl Proc_Find
    str r0, [r5, #0x40]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08010934: .4byte 0x08B90D88
    func_end func_08010860

    thumb_func_start func_08010938
func_08010938: @ 0x08010938
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L080109A0 @ =0x06008000
    ldr r1, .L080109A4 @ =0x06001000
    movs r2, #0xa0
    lsls r2, r2, #5
    bl CpuFastSet
    ldr r0, .L080109A8 @ =0x02022960
    ldr r2, .L080109AC @ =0xFFFFFF00
    adds r1, r0, r2
    ldr r2, [r4, #0x44]
    lsls r2, r2, #3
    ldr r3, .L080109B0 @ =0x001FFFFF
    ands r2, r3
    bl CpuFastSet
    ldr r5, .L080109B4 @ =0x00008080
    adds r4, r5, #0
    ldr r3, .L080109B8 @ =gBg3Tm
    ldr r2, .L080109BC @ =gBg2Tm
    movs r1, #0x80
    lsls r1, r1, #3
.L08010966:
    ldrh r5, [r3]
    adds r0, r4, r5
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    subs r1, #1
    cmp r1, #0
    bne .L08010966
    movs r0, #4
    bl EnableBgSync
    bl EnablePalSync
    ldr r2, .L080109C0 @ =gDispIo
    movs r0, #1
    ldrb r1, [r2, #1]
    orrs r0, r1
    movs r1, #2
    orrs r0, r1
    movs r1, #4
    orrs r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r2, #1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080109A0: .4byte 0x06008000
.L080109A4: .4byte 0x06001000
.L080109A8: .4byte 0x02022960
.L080109AC: .4byte 0xFFFFFF00
.L080109B0: .4byte 0x001FFFFF
.L080109B4: .4byte 0x00008080
.L080109B8: .4byte gBg3Tm
.L080109BC: .4byte gBg2Tm
.L080109C0: .4byte gDispIo
    func_end func_08010938

    thumb_func_start func_080109C4
func_080109C4: @ 0x080109C4
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08010A2C
    ldr r4, .L08010A20 @ =gBackgroundTable
    ldr r1, [r5, #0x2c]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r1, .L08010A24 @ =0x06008000
    bl Decompress
    ldr r0, .L08010A28 @ =gBg3Tm
    ldr r2, [r5, #0x2c]
    lsls r1, r2, #1
    adds r1, r1, r2
    lsls r1, r1, #2
    adds r2, r4, #4
    adds r1, r1, r2
    ldr r1, [r1]
    movs r2, #0x80
    lsls r2, r2, #8
    bl TmApplyTsa_thm
    ldr r1, [r5, #0x2c]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r4, #8
    adds r0, r0, r4
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r5, #0x44]
    lsls r2, r2, #5
    bl ApplyPaletteExt
    b .L08010A3E
    .align 2, 0
.L08010A20: .4byte gBackgroundTable
.L08010A24: .4byte 0x06008000
.L08010A28: .4byte gBg3Tm
.L08010A2C:
    ldr r0, .L08010A4C @ =gBg3Tm
    movs r1, #0x80
    lsls r1, r1, #8
    ldr r3, [r5, #0x44]
    ldr r2, [r5, #0x2c]
    str r2, [sp]
    movs r2, #8
    bl PutCgBackground
.L08010A3E:
    movs r0, #8
    bl EnableBgSync
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08010A4C: .4byte gBg3Tm
    func_end func_080109C4

    thumb_func_start func_08010A50
func_08010A50: @ 0x08010A50
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x30]
    ldr r0, [r4, #0x38]
    adds r2, r2, r0
    str r2, [r4, #0x30]
    asrs r2, r2, #4
    ldr r0, .L08010A98 @ =gDispIo
    mov ip, r0
    mov r3, ip
    adds r3, #0x3c
    movs r0, #0x3f
    ldrb r1, [r3]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r3]
    movs r0, #0x10
    subs r0, r0, r2
    mov r1, ip
    adds r1, #0x44
    movs r3, #0
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x45
    strb r2, [r0]
    adds r0, #1
    strb r3, [r0]
    cmp r2, #0x10
    bne .L08010A92
    adds r0, r4, #0
    bl Proc_Break
.L08010A92:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08010A98: .4byte gDispIo
    func_end func_08010A50

    thumb_func_start func_08010A9C
func_08010A9C: @ 0x08010A9C
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L08010AF0 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r3, .L08010AF4 @ =gDispIo
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
    ldr r0, [r4, #0x34]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L08010AE8
    bl InitBmBgLayers
.L08010AE8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08010AF0: .4byte gBg2Tm
.L08010AF4: .4byte gDispIo
    func_end func_08010A9C

    thumb_func_start func_08010AF8
func_08010AF8: @ 0x08010AF8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    adds r1, r3, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r0, .L08010B20 @ =0x08B91F34
    bl Proc_StartBlocking
    str r5, [r0, #0x2c]
    str r6, [r0, #0x34]
    movs r1, #0xff
    ands r1, r6
    str r1, [r0, #0x38]
    adds r0, #0x3c
    strb r4, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08010B20: .4byte 0x08B91F34
    func_end func_08010AF8

    thumb_func_start func_08010B24
func_08010B24: @ 0x08010B24
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r7, .L08010BD8 @ =gDispIo
    movs r6, #1
    ldrb r0, [r7, #1]
    orrs r0, r6
    movs r1, #2
    orrs r0, r1
    movs r1, #5
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r7, #1]
    adds r2, r7, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r7, #0
    adds r0, #0x44
    movs r4, #0
    strb r4, [r0]
    adds r1, r7, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x46
    strb r4, [r0]
    ldr r0, .L08010BDC @ =0x0000FFE0
    ldrh r3, [r7, #0x3c]
    ands r0, r3
    movs r1, #4
    orrs r0, r1
    ldr r1, .L08010BE0 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r7, #0x3c]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    adds r1, r7, #0
    adds r1, #0x3d
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r3, [r7, #0xc]
    ands r0, r3
    strb r0, [r7, #0xc]
    adds r0, r1, #0
    ldrb r2, [r7, #0x10]
    ands r0, r2
    orrs r0, r6
    strb r0, [r7, #0x10]
    ldrb r3, [r7, #0x14]
    ands r1, r3
    strb r1, [r7, #0x14]
    movs r0, #3
    ldrb r1, [r7, #0x18]
    orrs r0, r1
    strb r0, [r7, #0x18]
    movs r0, #6
    str r0, [r5, #0x44]
    str r4, [r5, #0x30]
    ldr r0, .L08010BE4 @ =0x08B90D88
    bl Proc_Find
    str r0, [r5, #0x40]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08010BD8: .4byte gDispIo
.L08010BDC: .4byte 0x0000FFE0
.L08010BE0: .4byte 0x0000E0FF
.L08010BE4: .4byte 0x08B90D88
    func_end func_08010B24

    thumb_func_start func_08010BE8
func_08010BE8: @ 0x08010BE8
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08010C4C
    ldr r4, .L08010C40 @ =gBackgroundTable
    ldr r1, [r5, #0x2c]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r1, .L08010C44 @ =0x06001000
    bl Decompress
    ldr r0, .L08010C48 @ =gBg2Tm
    ldr r2, [r5, #0x2c]
    lsls r1, r2, #1
    adds r1, r1, r2
    lsls r1, r1, #2
    adds r2, r4, #4
    adds r1, r1, r2
    ldr r1, [r1]
    movs r2, #0x80
    bl TmApplyTsa_thm
    ldr r1, [r5, #0x2c]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r4, #8
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r2, [r5, #0x44]
    lsls r2, r2, #5
    movs r1, #0
    bl ApplyPaletteExt
    b .L08010C5E
    .align 2, 0
.L08010C40: .4byte gBackgroundTable
.L08010C44: .4byte 0x06001000
.L08010C48: .4byte gBg2Tm
.L08010C4C:
    ldr r0, .L08010C8C @ =gBg2Tm
    movs r1, #0x80
    lsls r1, r1, #5
    ldr r3, [r5, #0x44]
    ldr r2, [r5, #0x2c]
    str r2, [sp]
    movs r2, #0
    bl PutCgBackground
.L08010C5E:
    movs r0, #4
    bl EnableBgSync
    bl EnablePalSync
    ldr r2, .L08010C90 @ =gDispIo
    movs r0, #1
    ldrb r1, [r2, #1]
    orrs r0, r1
    movs r1, #2
    orrs r0, r1
    movs r1, #4
    orrs r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r2, #1]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08010C8C: .4byte gBg2Tm
.L08010C90: .4byte gDispIo
    func_end func_08010BE8

    thumb_func_start func_08010C94
func_08010C94: @ 0x08010C94
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x30]
    ldr r0, [r4, #0x38]
    adds r2, r2, r0
    str r2, [r4, #0x30]
    asrs r2, r2, #4
    ldr r0, .L08010CDC @ =gDispIo
    mov ip, r0
    mov r3, ip
    adds r3, #0x3c
    movs r0, #0x3f
    ldrb r1, [r3]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r3]
    mov r0, ip
    adds r0, #0x44
    movs r1, #0
    strb r2, [r0]
    movs r0, #0x10
    subs r0, r0, r2
    adds r3, #9
    strb r0, [r3]
    mov r0, ip
    adds r0, #0x46
    strb r1, [r0]
    cmp r2, #0x10
    bne .L08010CD6
    adds r0, r4, #0
    bl Proc_Break
.L08010CD6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08010CDC: .4byte gDispIo
    func_end func_08010C94

    thumb_func_start func_08010CE0
func_08010CE0: @ 0x08010CE0
    push {r4, r5, lr}
    adds r4, r0, #0
    bl LockBmDisplay
    bl LockMus
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L08010D40 @ =0x06001000
    ldr r1, .L08010D44 @ =0x06008000
    movs r2, #0xa0
    lsls r2, r2, #5
    bl CpuFastSet
    ldr r0, .L08010D48 @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r0, r2
    ldr r2, [r4, #0x44]
    lsls r2, r2, #3
    ldr r3, .L08010D4C @ =0x001FFFFF
    ands r2, r3
    bl CpuFastSet
    movs r5, #0xff
    lsls r5, r5, #7
    adds r4, r5, #0
    ldr r3, .L08010D50 @ =gBg2Tm
    ldr r2, .L08010D54 @ =gBg3Tm
    movs r1, #0x80
    lsls r1, r1, #3
.L08010D24:
    ldrh r5, [r3]
    adds r0, r4, r5
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    subs r1, #1
    cmp r1, #0
    bne .L08010D24
    movs r0, #8
    bl EnableBgSync
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08010D40: .4byte 0x06001000
.L08010D44: .4byte 0x06008000
.L08010D48: .4byte gPal
.L08010D4C: .4byte 0x001FFFFF
.L08010D50: .4byte gBg2Tm
.L08010D54: .4byte gBg3Tm
    func_end func_08010CE0

    thumb_func_start func_08010D58
func_08010D58: @ 0x08010D58
    push {lr}
    ldr r0, .L08010D90 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r3, .L08010D94 @ =gDispIo
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
    bl InitBmBgLayers
    pop {r0}
    bx r0
    .align 2, 0
.L08010D90: .4byte gBg2Tm
.L08010D94: .4byte gDispIo
    func_end func_08010D58

    thumb_func_start func_08010D98
func_08010D98: @ 0x08010D98
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    adds r1, r3, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r0, .L08010DC0 @ =0x08B91F84
    bl Proc_StartBlocking
    str r5, [r0, #0x2c]
    str r6, [r0, #0x34]
    movs r1, #0xff
    ands r1, r6
    str r1, [r0, #0x38]
    adds r0, #0x3c
    strb r4, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08010DC0: .4byte 0x08B91F84
    func_end func_08010D98

    thumb_func_start func_08010DC4
func_08010DC4: @ 0x08010DC4
    push {r4, lr}
    adds r3, r0, #0
    ldr r0, [r3, #0x30]
    ldr r2, [r0, #4]
    ldr r4, [r0, #8]
    adds r1, r3, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08010DEE
    adds r0, r3, #0
    adds r0, #0x4c
    strb r2, [r0]
    adds r0, r4, #0
    movs r1, #1
    bl func_08010AF8
    movs r0, #2
    b .L08010DF0
.L08010DEE:
    movs r0, #0
.L08010DF0:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08010DC4

    thumb_func_start func_08010DF8
func_08010DF8: @ 0x08010DF8
    push {r4, r5, r6, lr}
    adds r3, r0, #0
    ldr r0, [r3, #0x30]
    ldr r6, [r0, #4]
    ldr r4, [r0, #8]
    adds r1, r3, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08010E14
    movs r0, #0
    b .L08010E42
.L08010E14:
    adds r0, r3, #0
    adds r0, #0x4c
    movs r2, #0
    ldrsb r2, [r0, r2]
    movs r1, #1
    rsbs r1, r1, #0
    adds r5, r0, #0
    cmp r2, r1
    bne .L08010E32
    adds r0, r4, #0
    movs r1, #0
    adds r2, r6, #0
    bl func_08010D98
    b .L08010E3C
.L08010E32:
    adds r0, r4, #0
    movs r1, #0
    adds r2, r6, #0
    bl func_08010AF8
.L08010E3C:
    movs r0, #0x61
    strb r0, [r5]
    movs r0, #2
.L08010E42:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08010DF8

    thumb_func_start func_08010E48
func_08010E48: @ 0x08010E48
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r7, .L08010EFC @ =gDispIo
    movs r6, #1
    ldrb r0, [r7, #1]
    orrs r0, r6
    movs r1, #2
    orrs r0, r1
    movs r1, #5
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r7, #1]
    adds r2, r7, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r7, #0
    adds r0, #0x44
    movs r4, #0
    strb r4, [r0]
    adds r1, r7, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x46
    strb r4, [r0]
    ldr r0, .L08010F00 @ =0x0000FFE0
    ldrh r3, [r7, #0x3c]
    ands r0, r3
    movs r1, #4
    orrs r0, r1
    ldr r1, .L08010F04 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r7, #0x3c]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    adds r1, r7, #0
    adds r1, #0x3d
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r3, [r7, #0xc]
    ands r0, r3
    strb r0, [r7, #0xc]
    adds r0, r1, #0
    ldrb r2, [r7, #0x10]
    ands r0, r2
    orrs r0, r6
    strb r0, [r7, #0x10]
    ldrb r3, [r7, #0x14]
    ands r1, r3
    strb r1, [r7, #0x14]
    movs r0, #3
    ldrb r1, [r7, #0x18]
    orrs r0, r1
    strb r0, [r7, #0x18]
    movs r0, #6
    str r0, [r5, #0x44]
    str r4, [r5, #0x30]
    ldr r0, .L08010F08 @ =0x08B90D88
    bl Proc_Find
    str r0, [r5, #0x40]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08010EFC: .4byte gDispIo
.L08010F00: .4byte 0x0000FFE0
.L08010F04: .4byte 0x0000E0FF
.L08010F08: .4byte 0x08B90D88
    func_end func_08010E48

    thumb_func_start func_08010F0C
func_08010F0C: @ 0x08010F0C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L08010F98 @ =0x06008000
    ldr r1, .L08010F9C @ =0x06001000
    movs r2, #0xa0
    lsls r2, r2, #5
    bl CpuFastSet
    ldr r0, .L08010FA0 @ =0x02022960
    ldr r2, .L08010FA4 @ =0xFFFFFF00
    adds r1, r0, r2
    ldr r2, [r4, #0x44]
    lsls r2, r2, #3
    ldr r3, .L08010FA8 @ =0x001FFFFF
    ands r2, r3
    bl CpuFastSet
    ldr r5, .L08010FAC @ =0x00008080
    adds r3, r5, #0
    ldr r2, .L08010FB0 @ =gBg3Tm
    ldr r1, .L08010FB4 @ =gBg2Tm
    movs r4, #0x80
    lsls r4, r4, #3
.L08010F3A:
    ldrh r5, [r2]
    adds r0, r3, r5
    strh r0, [r1]
    adds r2, #2
    adds r1, #2
    subs r4, #1
    cmp r4, #0
    bne .L08010F3A
    movs r0, #4
    bl EnableBgSync
    bl EnablePalSync
    ldr r3, .L08010FB8 @ =gDispIo
    movs r0, #1
    ldrb r1, [r3, #1]
    orrs r0, r1
    movs r1, #2
    orrs r0, r1
    movs r1, #4
    orrs r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r3, #1]
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r5, [r2]
    ands r0, r5
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x45
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08010F98: .4byte 0x06008000
.L08010F9C: .4byte 0x06001000
.L08010FA0: .4byte 0x02022960
.L08010FA4: .4byte 0xFFFFFF00
.L08010FA8: .4byte 0x001FFFFF
.L08010FAC: .4byte 0x00008080
.L08010FB0: .4byte gBg3Tm
.L08010FB4: .4byte gBg2Tm
.L08010FB8: .4byte gDispIo
    func_end func_08010F0C

    thumb_func_start func_08010FBC
func_08010FBC: @ 0x08010FBC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L08011004 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl UnpackChapterMapGraphics
    ldrb r0, [r4, #0x15]
    bl AllocWeatherParticles
    bl RenderMap
    bl RefreshUnitSprites
    bl ApplyUnitSpritePalettes
    ldr r0, [r5, #0x34]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    beq .L08010FEC
    bl func_08024CE0
.L08010FEC:
    bl ForceSyncUnitSpriteSheet
    bl UnlockBmDisplay
    bl ReleaseMus
    movs r0, #8
    bl EnableBgSync
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08011004: .4byte gPlaySt
    func_end func_08010FBC

    thumb_func_start func_08011008
func_08011008: @ 0x08011008
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x30]
    ldr r0, [r4, #0x38]
    adds r2, r2, r0
    str r2, [r4, #0x30]
    asrs r2, r2, #4
    ldr r0, .L08011050 @ =gDispIo
    mov ip, r0
    mov r3, ip
    adds r3, #0x3c
    movs r0, #0x3f
    ldrb r1, [r3]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r3]
    movs r0, #0x10
    subs r0, r0, r2
    mov r1, ip
    adds r1, #0x44
    movs r3, #0
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x45
    strb r2, [r0]
    adds r0, #1
    strb r3, [r0]
    cmp r2, #0x10
    bne .L0801104A
    adds r0, r4, #0
    bl Proc_Break
.L0801104A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08011050: .4byte gDispIo
    func_end func_08011008

    thumb_func_start func_08011054
func_08011054: @ 0x08011054
    push {lr}
    ldr r0, .L08011094 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r3, .L08011098 @ =gDispIo
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
    bl InitBmBgLayers
    bl ApplySystemGraphics
    bl InitSystemTextFont
    pop {r0}
    bx r0
    .align 2, 0
.L08011094: .4byte gBg2Tm
.L08011098: .4byte gDispIo
    func_end func_08011054

    thumb_func_start func_0801109C
func_0801109C: @ 0x0801109C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080110B4 @ =0x08B91FDC
    bl Proc_StartBlocking
    str r4, [r0, #0x34]
    movs r1, #0xff
    ands r1, r4
    str r1, [r0, #0x38]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080110B4: .4byte 0x08B91FDC
    func_end func_0801109C

    thumb_func_start func_080110B8
func_080110B8: @ 0x080110B8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x30]
    ldr r2, [r0, #4]
    adds r1, r5, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    cmp r6, #0
    beq .L080110F8
    adds r4, r5, #0
    adds r4, #0x4c
    ldrb r2, [r4]
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L080110F4
    movs r0, #0xff
    strb r0, [r4]
    bl RefreshBMapGraphics
    bl UnlockBmDisplay
    bl ReleaseMus
.L080110F4:
    movs r0, #0
    b .L08011110
.L080110F8:
    adds r4, r5, #0
    adds r4, #0x4c
    adds r0, r2, #0
    adds r1, r5, #0
    bl func_0801109C
    movs r0, #0xff
    strb r0, [r4]
    adds r0, r5, #0
    adds r0, #0x4d
    strb r6, [r0]
    movs r0, #2
.L08011110:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080110B8
