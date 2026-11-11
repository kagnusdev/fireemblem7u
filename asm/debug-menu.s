    .include "asm_prelude.inc"

    thumb_func_start func_0801B1E4
func_0801B1E4: @ 0x0801B1E4
    push {r4, lr}
    sub sp, #8
    bl GetGameTime
    mov r2, sp
    adds r2, #2
    add r4, sp, #4
    mov r1, sp
    adds r3, r4, #0
    bl FormatTime
    movs r0, #1
    ldrh r4, [r4]
    ands r0, r4
    movs r1, #3
    cmp r0, #0
    bne .L0801B208
    movs r1, #2
.L0801B208:
    adds r0, r1, #0
    add sp, #8
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0801B1E4

    thumb_func_start func_0801B214
func_0801B214: @ 0x0801B214
    push {r4, lr}
    sub sp, #8
    bl GetGameTime
    mov r2, sp
    adds r2, #2
    add r4, sp, #4
    mov r1, sp
    adds r3, r4, #0
    bl FormatTime
    movs r0, #1
    ldrh r4, [r4]
    ands r0, r4
    movs r1, #3
    cmp r0, #0
    beq .L0801B238
    movs r1, #2
.L0801B238:
    adds r0, r1, #0
    add sp, #8
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0801B214

    thumb_func_start func_0801B244
func_0801B244: @ 0x0801B244
    movs r0, #8
    bx lr
    func_end func_0801B244

    thumb_func_start func_0801B248
func_0801B248: @ 0x0801B248
    movs r0, #0x17
    bx lr
    func_end func_0801B248

    thumb_func_start func_0801B24C
func_0801B24C: @ 0x0801B24C
    bx lr
    func_end func_0801B24C

    thumb_func_start func_0801B250
func_0801B250: @ 0x0801B250
    push {lr}
    adds r2, r0, #0
    ldr r0, .L0801B26C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #4
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0801B268
    adds r0, r2, #0
    bl Proc_Break
.L0801B268:
    pop {r0}
    bx r0
    .align 2, 0
.L0801B26C: .4byte gpKeySt
    func_end func_0801B250

    thumb_func_start func_0801B270
func_0801B270: @ 0x0801B270
    push {lr}
    movs r0, #0x10
    bl NewKeyStSetter
    pop {r0}
    bx r0
    func_end func_0801B270

    thumb_func_start func_0801B27C
func_0801B27C: @ 0x0801B27C
    bx lr
    func_end func_0801B27C

    thumb_func_start func_0801B280
func_0801B280: @ 0x0801B280
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0xc
    ldr r1, [r0, #0x2c]
    mov r8, r1
    ldr r4, [r0, #0x30]
    adds r1, r0, #0
    adds r1, #0x52
    ldrh r5, [r1]
    ldr r6, [r0, #0x54]
    add r0, sp, #4
    adds r1, r5, #0
    bl InitText
    add r0, sp, #4
    adds r1, r6, #0
    bl Text_DrawString
    adds r5, #2
    movs r0, #0
    str r0, [sp]
    mov r0, r8
    adds r1, r4, #0
    adds r2, r5, #0
    movs r3, #4
    bl func_08049CE4
    adds r4, #1
    lsls r4, r4, #5
    adds r4, #1
    add r4, r8
    lsls r4, r4, #1
    ldr r0, .L0801B2E0 @ =gBg0Tm
    adds r4, r4, r0
    add r0, sp, #4
    adds r1, r4, #0
    bl PutText
    movs r0, #3
    bl EnableBgSync
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801B2E0: .4byte gBg0Tm
    func_end func_0801B280

    thumb_func_start func_0801B2E4
func_0801B2E4: @ 0x0801B2E4
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    adds r4, r3, #0
    ldr r0, .L0801B310 @ =0x08B93344
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x2c]
    str r6, [r0, #0x30]
    str r4, [r0, #0x54]
    adds r0, #0x52
    mov r1, r8
    strh r1, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801B310: .4byte 0x08B93344
    func_end func_0801B2E4

    thumb_func_start func_0801B314
func_0801B314: @ 0x0801B314
    push {lr}
    bl func_0804A424
    bl ClearUi
    ldr r0, .L0801B334 @ =0x08B958D8
    bl StartMenu
    movs r0, #2
    movs r1, #0
    bl DebugInitBg
    movs r0, #1
    pop {r1}
    bx r1
    .align 2, 0
.L0801B334: .4byte 0x08B958D8
    func_end func_0801B314

    thumb_func_start func_0801B338
func_0801B338: @ 0x0801B338
    push {r4, r5, lr}
    adds r2, r1, #0
    ldr r3, .L0801B3B8 @ =gpKeySt
    ldr r1, [r3]
    movs r0, #0x10
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801B354
    adds r1, r2, #0
    adds r1, #0x3c
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
.L0801B354:
    ldr r1, [r3]
    movs r0, #0x20
    ldrh r1, [r1, #6]
    ands r0, r1
    adds r5, r2, #0
    adds r5, #0x3c
    cmp r0, #0
    beq .L0801B36A
    ldrb r0, [r5]
    subs r0, #1
    strb r0, [r5]
.L0801B36A:
    adds r1, r5, #0
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0x42
    ble .L0801B378
    movs r0, #0x42
    strb r0, [r1]
.L0801B378:
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801B384
    movs r0, #0
    strb r0, [r1]
.L0801B384:
    ldr r1, [r3]
    movs r0, #0x30
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801B3B0
    ldr r4, .L0801B3BC @ =0x02022D2E
    ldr r1, .L0801B3C0 @ =0x081C3B74
    adds r0, r4, #0
    bl DebugPutStr
    movs r0, #0
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    ldr r1, [r0]
    adds r0, r4, #0
    bl DebugPutStr
    movs r0, #1
    bl EnableBgSync
.L0801B3B0:
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B3B8: .4byte gpKeySt
.L0801B3BC: .4byte 0x02022D2E
.L0801B3C0: .4byte 0x081C3B74
    func_end func_0801B338

    thumb_func_start func_0801B3C4
func_0801B3C4: @ 0x0801B3C4
    push {r4, lr}
    adds r4, r1, #0
    bl func_0802E3B0
    ldr r1, .L0801B3E4 @ =gPlaySt
    adds r4, #0x3c
    ldrb r0, [r4]
    strb r0, [r1, #0xe]
    bl CleanupUnitsBeforeChapter
    bl func_08012B88
    movs r0, #0x17
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B3E4: .4byte gPlaySt
    func_end func_0801B3C4

    thumb_func_start func_0801B3E8
func_0801B3E8: @ 0x0801B3E8
    push {r4, r5, r6, lr}
    adds r5, r1, #0
    bl func_080AAD7C
    adds r4, r0, #0
    adds r6, r5, #0
    adds r6, #0x3c
    movs r0, #0
    strb r0, [r6]
    bl GetCurrentBgmSong
    movs r1, #0
    cmp r1, r4
    bge .L0801B41C
    cmp r0, #0
    bne .L0801B40C
    strb r1, [r6]
    b .L0801B41C
.L0801B40C:
    adds r1, #1
    cmp r1, r4
    bge .L0801B41C
    cmp r0, r1
    bne .L0801B40C
    adds r0, r5, #0
    adds r0, #0x3c
    strb r1, [r0]
.L0801B41C:
    adds r4, r5, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    ldr r1, .L0801B468 @ =0x08CE4D28
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #4
    adds r1, #0xc
    adds r0, r0, r1
    ldr r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0
    bl Text_InsertDrawString
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0801B46C @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B468: .4byte 0x08CE4D28
.L0801B46C: .4byte gBg0Tm
    func_end func_0801B3E8

    thumb_func_start func_0801B470
func_0801B470: @ 0x0801B470
    push {r4, r5, r6, r7, lr}
    adds r6, r1, #0
    ldr r2, .L0801B51C @ =gpKeySt
    ldr r1, [r2]
    movs r0, #0x10
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801B48C
    adds r1, r6, #0
    adds r1, #0x3c
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
.L0801B48C:
    ldr r1, [r2]
    movs r0, #0x20
    ldrh r1, [r1, #6]
    ands r0, r1
    adds r5, r6, #0
    adds r5, #0x3c
    cmp r0, #0
    beq .L0801B4A2
    ldrb r0, [r5]
    subs r0, #1
    strb r0, [r5]
.L0801B4A2:
    adds r1, r5, #0
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801B4B0
    movs r0, #0
    strb r0, [r1]
.L0801B4B0:
    ldr r7, .L0801B520 @ =0x08CE4D28
    movs r0, #0
    ldrsb r0, [r1, r0]
    lsls r0, r0, #4
    adds r0, r0, r7
    ldr r0, [r0]
    cmp r0, #0
    bge .L0801B4C6
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
.L0801B4C6:
    ldr r1, [r2]
    movs r0, #0x30
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801B512
    adds r4, r6, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    movs r0, #0
    ldrsb r0, [r5, r0]
    lsls r0, r0, #4
    adds r1, r7, #0
    adds r1, #0xc
    adds r0, r0, r1
    ldr r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0
    bl Text_InsertDrawString
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r6, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0801B524 @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
.L0801B512:
    movs r0, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B51C: .4byte gpKeySt
.L0801B520: .4byte 0x08CE4D28
.L0801B524: .4byte gBg0Tm
    func_end func_0801B470

    thumb_func_start func_0801B528
func_0801B528: @ 0x0801B528
    push {lr}
    ldr r2, .L0801B554 @ =0x08CE4D28
    ldr r0, .L0801B558 @ =0x08CE5378
    cmp r2, r0
    bne .L0801B560
    ldr r0, .L0801B55C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0801B578
    adds r0, r1, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #4
    adds r0, r0, r2
    ldrh r0, [r0]
    bl m4aSongNumStart
    b .L0801B578
    .align 2, 0
.L0801B554: .4byte 0x08CE4D28
.L0801B558: .4byte 0x08CE5378
.L0801B55C: .4byte gPlaySt
.L0801B560:
    adds r0, r1, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #4
    adds r0, r0, r2
    ldr r0, [r0]
    movs r1, #1
    movs r2, #0
    bl StartBgmExt
.L0801B578:
    movs r0, #0
    pop {r1}
    bx r1
    func_end func_0801B528

    thumb_func_start func_0801B580
func_0801B580: @ 0x0801B580
    push {lr}
    bl func_0804A424
    movs r0, #0
    bl EndFaceById
    bl ClearUi
    movs r0, #1
    pop {r1}
    bx r1
    func_end func_0801B580

    thumb_func_start func_0801B598
func_0801B598: @ 0x0801B598
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r1, #0
    ldr r0, .L0801B60C @ =0x081C3B80
    ldr r1, [r0, #4]
    ldr r0, [r0]
    str r0, [sp]
    str r1, [sp, #4]
    ldr r0, .L0801B610 @ =0x08B9333C
    bl Proc_Find
    adds r4, r0, #0
    adds r5, r6, #0
    adds r5, #0x34
    adds r0, r5, #0
    bl ClearText
    ldr r0, .L0801B614 @ =0x00001247
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r5, #0
    movs r1, #8
    movs r2, #0
    bl Text_InsertDrawString
    adds r4, #0x66
    movs r1, #0
    ldrsh r0, [r4, r1]
    lsls r0, r0, #2
    add r0, sp
    ldr r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r5, #0
    movs r1, #0x40
    movs r2, #2
    bl Text_InsertDrawString
    movs r2, #0x2c
    ldrsh r1, [r6, r2]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r6, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0801B618 @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r5, #0
    bl PutText
    movs r0, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B60C: .4byte 0x081C3B80
.L0801B610: .4byte 0x08B9333C
.L0801B614: .4byte 0x00001247
.L0801B618: .4byte gBg0Tm
    func_end func_0801B598

    thumb_func_start func_0801B61C
func_0801B61C: @ 0x0801B61C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0801B660 @ =0x08B9333C
    bl Proc_Find
    adds r2, r0, #0
    ldr r0, .L0801B664 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x31
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0801B656
    adds r0, r2, #0
    adds r0, #0x66
    movs r1, #1
    ldrh r2, [r0]
    eors r1, r2
    strh r1, [r0]
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0801B598
    movs r0, #1
    rsbs r0, r0, #0
    movs r1, #9
    bl SetupDebugFontForOBJ
.L0801B656:
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B660: .4byte 0x08B9333C
.L0801B664: .4byte gpKeySt
    func_end func_0801B61C

    thumb_func_start func_0801B668
func_0801B668: @ 0x0801B668
    movs r0, #0
    bx lr
    func_end func_0801B668

    thumb_func_start func_0801B66C
func_0801B66C: @ 0x0801B66C
    push {r4, r5, r6, lr}
    sub sp, #0x1c
    adds r5, r1, #0
    mov r1, sp
    ldr r0, .L0801B6E8 @ =0x081C3B88
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldr r0, [r0]
    str r0, [r1]
    ldr r0, .L0801B6EC @ =0x08B9333C
    bl Proc_Find
    adds r6, r0, #0
    adds r4, r5, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L0801B6F0 @ =0x0000124F
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #8
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, [r6, #0x58]
    movs r1, #7
    bl __modsi3
    lsls r0, r0, #2
    add r0, sp
    ldr r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x40
    movs r2, #2
    bl Text_InsertDrawString
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0801B6F4 @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    movs r0, #0
    add sp, #0x1c
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B6E8: .4byte 0x081C3B88
.L0801B6EC: .4byte 0x08B9333C
.L0801B6F0: .4byte 0x0000124F
.L0801B6F4: .4byte gBg0Tm
    func_end func_0801B66C

    thumb_func_start func_0801B6F8
func_0801B6F8: @ 0x0801B6F8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L0801B738 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x31
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0801B796
    ldr r0, .L0801B73C @ =0x08B9333C
    bl Proc_Find
    adds r4, r0, #0
    ldr r0, [r4, #0x58]
    adds r0, #1
    str r0, [r4, #0x58]
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_0801B66C
    ldr r0, [r4, #0x58]
    movs r1, #7
    bl __modsi3
    cmp r0, #6
    bhi .L0801B796
    lsls r0, r0, #2
    ldr r1, .L0801B740 @ =.L0801B744
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0801B738: .4byte gpKeySt
.L0801B73C: .4byte 0x08B9333C
.L0801B740: .4byte .L0801B744
.L0801B744: @ jump table
    .4byte .L0801B760 @ case 0
    .4byte .L0801B768 @ case 1
    .4byte .L0801B770 @ case 2
    .4byte .L0801B778 @ case 3
    .4byte .L0801B780 @ case 4
    .4byte .L0801B788 @ case 5
    .4byte .L0801B790 @ case 6
.L0801B760:
    movs r0, #0
    bl SetWeather
    b .L0801B796
.L0801B768:
    movs r0, #6
    bl SetWeather
    b .L0801B796
.L0801B770:
    movs r0, #1
    bl SetWeather
    b .L0801B796
.L0801B778:
    movs r0, #2
    bl SetWeather
    b .L0801B796
.L0801B780:
    movs r0, #4
    bl SetWeather
    b .L0801B796
.L0801B788:
    movs r0, #3
    bl SetWeather
    b .L0801B796
.L0801B790:
    movs r0, #5
    bl SetWeather
.L0801B796:
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0801B6F8

    thumb_func_start func_0801B7A0
func_0801B7A0: @ 0x0801B7A0
    movs r0, #0
    bx lr
    func_end func_0801B7A0

    thumb_func_start func_0801B7A4
func_0801B7A4: @ 0x0801B7A4
    push {r4, r5, lr}
    adds r5, r1, #0
    adds r4, r5, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L0801B808 @ =0x00001250
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #8
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L0801B80C @ =0x00001251
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x48
    movs r2, #2
    bl Text_InsertDrawString
    bl GetGlobalCompletionCount
    adds r3, r0, #0
    adds r3, #1
    adds r0, r4, #0
    movs r1, #0x40
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0801B810 @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B808: .4byte 0x00001250
.L0801B80C: .4byte 0x00001251
.L0801B810: .4byte gBg0Tm
    func_end func_0801B7A4

    thumb_func_start func_0801B814
func_0801B814: @ 0x0801B814
    push {r4, r5, r6, r7, lr}
    sub sp, #0x64
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r4, .L0801B890 @ =gpKeySt
    ldr r1, [r4]
    movs r0, #0x30
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801B8AC
    bl GetGlobalCompletionCount
    adds r5, r0, #0
    ldr r1, [r4]
    movs r0, #0x20
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801B842
    cmp r5, #0
    blt .L0801B842
    subs r5, #1
.L0801B842:
    ldr r0, .L0801B890 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801B856
    cmp r5, #0xb
    bgt .L0801B856
    adds r5, #1
.L0801B856:
    mov r0, sp
    bl LoadMetaSave
    add r1, sp, #0x14
    movs r2, #0
    mov r0, sp
    adds r0, #0x1f
.L0801B864:
    strb r2, [r0]
    subs r0, #1
    cmp r0, r1
    bge .L0801B864
    movs r4, #0
    cmp r4, r5
    bge .L0801B880
.L0801B872:
    adds r4, #1
    mov r0, sp
    adds r1, r4, #0
    bl func_080A03C8
    cmp r4, r5
    blt .L0801B872
.L0801B880:
    cmp r5, #0
    bne .L0801B894
    mov r1, sp
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r2, [r1, #0xe]
    ands r0, r2
    b .L0801B89C
    .align 2, 0
.L0801B890: .4byte gpKeySt
.L0801B894:
    mov r1, sp
    movs r0, #1
    ldrb r2, [r1, #0xe]
    orrs r0, r2
.L0801B89C:
    strb r0, [r1, #0xe]
    mov r0, sp
    bl SaveMetaSave
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_0801B7A4
.L0801B8AC:
    movs r0, #0
    add sp, #0x64
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0801B814

    thumb_func_start func_0801B8B8
func_0801B8B8: @ 0x0801B8B8
    movs r0, #0x17
    bx lr
    func_end func_0801B8B8

    thumb_func_start func_0801B8BC
func_0801B8BC: @ 0x0801B8BC
    push {lr}
    bl ClearUi
    ldr r0, .L0801B8D0 @ =0x08B95848
    bl StartMenu
    movs r0, #7
    pop {r1}
    bx r1
    .align 2, 0
.L0801B8D0: .4byte 0x08B95848
    func_end func_0801B8BC

    thumb_func_start func_0801B8D4
func_0801B8D4: @ 0x0801B8D4
    push {lr}
    bl func_080A049C
    ldr r0, .L0801B8FC @ =gPlaySt
    movs r1, #0xef
    ldrb r2, [r0, #0x14]
    ands r1, r2
    strb r1, [r0, #0x14]
    bl CleanupUnitsBeforeChapter
    bl func_080A05F4
    bl func_080A0810
    movs r0, #0xff
    bl SoftReset
    pop {r1}
    bx r1
    .align 2, 0
.L0801B8FC: .4byte gPlaySt
    func_end func_0801B8D4

    thumb_func_start func_0801B900
func_0801B900: @ 0x0801B900
    push {r4, lr}
    ldr r4, .L0801B920 @ =0x02022D2E
    movs r0, #0
    bl GetChapterInfo
    ldr r1, [r0]
    adds r0, r4, #0
    bl DebugPutStr
    movs r0, #1
    bl EnableBgSync
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0801B920: .4byte 0x02022D2E
    func_end func_0801B900

    thumb_func_start func_0801B924
func_0801B924: @ 0x0801B924
    push {r4, lr}
    ldr r0, .L0801B974 @ =OnMain
    bl SetMainFunc
    ldr r0, .L0801B978 @ =OnVBlank
    bl SetOnVBlank
    bl RefreshBMapGraphics
    movs r0, #2
    movs r1, #0
    bl DebugInitBg
    ldr r0, .L0801B97C @ =0x081C3BA4
    bl SetTalkUnkStr
    ldr r0, .L0801B980 @ =0x08B95890
    bl StartMenu
    ldr r4, .L0801B984 @ =gBmSt
    movs r1, #0x40
    ldrb r2, [r4, #4]
    orrs r1, r2
    strb r1, [r4, #4]
    ldr r1, .L0801B988 @ =0x0600B000
    movs r2, #1
    rsbs r2, r2, #0
    bl StartMuralBackgroundAlt
    movs r0, #0xbf
    ldrb r1, [r4, #4]
    ands r0, r1
    strb r0, [r4, #4]
    ldr r0, .L0801B98C @ =0x02023CA0
    bl PutBuildInfo
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801B974: .4byte OnMain
.L0801B978: .4byte OnVBlank
.L0801B97C: .4byte 0x081C3BA4
.L0801B980: .4byte 0x08B95890
.L0801B984: .4byte gBmSt
.L0801B988: .4byte 0x0600B000
.L0801B98C: .4byte 0x02023CA0
    func_end func_0801B924

    thumb_func_start func_0801B990
func_0801B990: @ 0x0801B990
    push {lr}
    sub sp, #0x14
    ldr r0, [r0, #0x44]
    adds r0, #0x3c
    movs r1, #0
    strb r1, [r0]
    movs r0, #1
    bl EnableBgSync
    add r0, sp, #4
    movs r1, #3
    bl func_0809E6FC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0801B9C0
    ldr r0, [sp, #0x10]
    lsrs r1, r0, #0x10
    adds r0, r0, r1
    movs r1, #0xff
    ands r0, r1
    cmp r0, #0
    beq .L0801B9E0
.L0801B9C0:
    ldr r0, .L0801B9DC @ =0x00000103
    str r0, [sp]
    movs r0, #0
    movs r1, #0xb7
    movs r2, #0x20
    movs r3, #0x50
    bl StartFace
    movs r0, #0x81
    lsls r0, r0, #1
    str r0, [sp]
    movs r0, #1
    movs r1, #0xb6
    b .L0801B9FA
    .align 2, 0
.L0801B9DC: .4byte 0x00000103
.L0801B9E0:
    ldr r0, .L0801BA0C @ =0x00000103
    str r0, [sp]
    movs r0, #0
    movs r1, #0xb4
    movs r2, #0x20
    movs r3, #0x50
    bl StartFace
    movs r0, #0x81
    lsls r0, r0, #1
    str r0, [sp]
    movs r0, #1
    movs r1, #0xb2
.L0801B9FA:
    movs r2, #0xd0
    movs r3, #0x50
    bl StartFace
    movs r0, #0
    add sp, #0x14
    pop {r1}
    bx r1
    .align 2, 0
.L0801BA0C: .4byte 0x00000103
    func_end func_0801B990

    thumb_func_start func_0801BA10
func_0801BA10: @ 0x0801BA10
    push {lr}
    movs r0, #0
    bl EndFaceById
    movs r0, #1
    bl EndFaceById
    ldr r2, .L0801BA4C @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    ldr r1, .L0801BA50 @ =gPal
    movs r0, #0
    strh r0, [r1]
    bl EnablePalSync
    pop {r1}
    bx r1
    .align 2, 0
.L0801BA4C: .4byte gDispIo
.L0801BA50: .4byte gPal
    func_end func_0801BA10

    thumb_func_start func_0801BA54
func_0801BA54: @ 0x0801BA54
    push {r4, r5, r6, r7, lr}
    adds r4, r1, #0
    adds r1, r0, #0
    adds r1, #0x2c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r1, #2
    mov ip, r1
    adds r0, #0x2d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r7, r0, #0
    adds r7, #0xa
    ldr r1, .L0801BA98 @ =gpKeySt
    ldr r3, [r1]
    movs r5, #0x10
    adds r0, r5, #0
    ldrh r2, [r3, #6]
    ands r0, r2
    adds r6, r1, #0
    cmp r0, #0
    beq .L0801BAAA
    adds r1, r4, #0
    adds r1, #0x3c
    ldrb r2, [r1]
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0x41
    bgt .L0801BA9C
    adds r0, r2, #1
    b .L0801BAA8
    .align 2, 0
.L0801BA98: .4byte gpKeySt
.L0801BA9C:
    adds r0, r5, #0
    ldrh r3, [r3, #8]
    ands r0, r3
    cmp r0, #0
    beq .L0801BAAA
    movs r0, #0
.L0801BAA8:
    strb r0, [r1]
.L0801BAAA:
    ldr r2, [r6]
    movs r3, #0x20
    adds r0, r3, #0
    ldrh r1, [r2, #6]
    ands r0, r1
    adds r5, r4, #0
    adds r5, #0x3c
    cmp r0, #0
    beq .L0801BAD8
    ldrb r1, [r5]
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    ble .L0801BACA
    subs r0, r1, #1
    b .L0801BAD6
.L0801BACA:
    adds r0, r3, #0
    ldrh r2, [r2, #8]
    ands r0, r2
    cmp r0, #0
    beq .L0801BAD8
    movs r0, #0x42
.L0801BAD6:
    strb r0, [r5]
.L0801BAD8:
    ldr r1, [r6]
    movs r0, #0x30
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801BB0C
    lsls r4, r7, #5
    add r4, ip
    lsls r4, r4, #1
    ldr r0, .L0801BB30 @ =gBg0Tm
    adds r4, r4, r0
    ldr r1, .L0801BB34 @ =0x081C3B74
    adds r0, r4, #0
    bl DebugPutStr
    movs r0, #0
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    ldr r1, [r0]
    adds r0, r4, #0
    bl DebugPutStr
    movs r0, #1
    bl EnableBgSync
.L0801BB0C:
    ldr r1, [r6]
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L0801BB40
    ldr r1, .L0801BB38 @ =gPlaySt
    movs r0, #3
    strb r0, [r1, #0x1b]
    ldr r0, .L0801BB3C @ =0x0841E2D8
    movs r1, #0xe0
    lsls r1, r1, #1
    movs r2, #0x40
    bl ApplyPaletteExt
    b .L0801BB52
    .align 2, 0
.L0801BB30: .4byte gBg0Tm
.L0801BB34: .4byte 0x081C3B74
.L0801BB38: .4byte gPlaySt
.L0801BB3C: .4byte 0x0841E2D8
.L0801BB40:
    ldr r1, .L0801BB6C @ =gPlaySt
    movs r0, #2
    strb r0, [r1, #0x1b]
    ldr r0, .L0801BB70 @ =0x081C8184
    movs r1, #0xe0
    lsls r1, r1, #1
    movs r2, #0x40
    bl ApplyPaletteExt
.L0801BB52:
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0xb
    bgt .L0801BB60
    ldr r1, .L0801BB6C @ =gPlaySt
    movs r0, #1
    strb r0, [r1, #0x1b]
.L0801BB60:
    bl EnablePalSync
    movs r0, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0801BB6C: .4byte gPlaySt
.L0801BB70: .4byte 0x081C8184
    func_end func_0801BA54

    thumb_func_start func_0801BB74
func_0801BB74: @ 0x0801BB74
    push {r4, lr}
    adds r4, r1, #0
    bl GetGameTime
    bl RandInit
    bl InitUnits
    ldr r0, .L0801BBA0 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #2
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L0801BBA4
    movs r0, #0
    movs r1, #1
    movs r2, #0
    bl SaveNewGame
    b .L0801BBAE
    .align 2, 0
.L0801BBA0: .4byte gpKeySt
.L0801BBA4:
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SaveNewGame
.L0801BBAE:
    ldr r0, .L0801BBD8 @ =0x0000055B
    bl DecodeMsg
    bl SetTacticianName
    ldr r1, .L0801BBDC @ =gPlaySt
    adds r0, r4, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    strb r0, [r1, #0xe]
    movs r0, #0
    bl func_080A0810
    bl CleanupUnitsBeforeChapter
    bl func_08012B88
    movs r0, #2
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0801BBD8: .4byte 0x0000055B
.L0801BBDC: .4byte gPlaySt
    func_end func_0801BB74

    thumb_func_start func_0801BBE0
func_0801BBE0: @ 0x0801BBE0
    push {lr}
    ldr r0, .L0801BBF0 @ =0x08B958B4
    bl StartMenu
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L0801BBF0: .4byte 0x08B958B4
    func_end func_0801BBE0

    thumb_func_start func_0801BBF4
func_0801BBF4: @ 0x0801BBF4
    push {lr}
    ldr r0, .L0801BC04 @ =0x08B9586C
    bl StartMenu
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L0801BC04: .4byte 0x08B9586C
    func_end func_0801BBF4

    thumb_func_start func_0801BC08
func_0801BC08: @ 0x0801BC08
    push {lr}
    movs r0, #3
    bl func_080A4E0C
    movs r0, #0x17
    pop {r1}
    bx r1
    func_end func_0801BC08

    thumb_func_start func_0801BC18
func_0801BC18: @ 0x0801BC18
    movs r0, #2
    bx lr
    func_end func_0801BC18

    thumb_func_start func_0801BC1C
func_0801BC1C: @ 0x0801BC1C
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #1
    bne .L0801BC30
    movs r0, #4
    bl WriteSuspendSave
    movs r0, #0x17
    b .L0801BC32
.L0801BC30:
    movs r0, #8
.L0801BC32:
    pop {r1}
    bx r1
    func_end func_0801BC1C

    thumb_func_start func_0801BC38
func_0801BC38: @ 0x0801BC38
    push {lr}
    movs r0, #4
    bl IsValidSuspendSave
    lsls r0, r0, #0x18
    movs r1, #2
    cmp r0, #0
    beq .L0801BC4A
    movs r1, #1
.L0801BC4A:
    adds r0, r1, #0
    pop {r1}
    bx r1
    func_end func_0801BC38

    thumb_func_start func_0801BC50
func_0801BC50: @ 0x0801BC50
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #1
    beq .L0801BC5E
    movs r0, #8
    b .L0801BC78
.L0801BC5E:
    ldr r0, .L0801BC7C @ =0x08B92AF8
    bl Proc_Find
    cmp r0, #0
    beq .L0801BC6C
    bl func_0802E3B0
.L0801BC6C:
    movs r0, #4
    bl ReadSuspendSave
    bl func_08012BAC
    movs r0, #0x17
.L0801BC78:
    pop {r1}
    bx r1
    .align 2, 0
.L0801BC7C: .4byte 0x08B92AF8
    func_end func_0801BC50

    thumb_func_start func_0801BC80
func_0801BC80: @ 0x0801BC80
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #1
    beq .L0801BC8E
    movs r0, #8
    b .L0801BCA2
.L0801BC8E:
    ldr r0, .L0801BCA8 @ =0x08B92AF8
    bl Proc_Find
    cmp r0, #0
    beq .L0801BC9C
    bl func_0802E3B0
.L0801BC9C:
    bl func_08012BD0
    movs r0, #0x17
.L0801BCA2:
    pop {r1}
    bx r1
    .align 2, 0
.L0801BCA8: .4byte 0x08B92AF8
    func_end func_0801BC80

    thumb_func_start func_0801BCAC
func_0801BCAC: @ 0x0801BCAC
    push {lr}
    movs r0, #3
    bl IsValidSuspendSave
    lsls r0, r0, #0x18
    movs r1, #2
    cmp r0, #0
    beq .L0801BCBE
    movs r1, #1
.L0801BCBE:
    adds r0, r1, #0
    pop {r1}
    bx r1
    func_end func_0801BCAC

    thumb_func_start func_0801BCC4
func_0801BCC4: @ 0x0801BCC4
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #1
    bne .L0801BCDC
    movs r0, #3
    bl ReadSuspendSave
    bl func_08012BAC
    movs r0, #0x17
    b .L0801BCDE
.L0801BCDC:
    movs r0, #8
.L0801BCDE:
    pop {r1}
    bx r1
    func_end func_0801BCC4

    thumb_func_start func_0801BCE4
func_0801BCE4: @ 0x0801BCE4
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r1, #0
    ldr r0, .L0801BD54 @ =0x081C3B80
    ldr r1, [r0, #4]
    ldr r0, [r0]
    str r0, [sp]
    str r1, [sp, #4]
    adds r4, r5, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L0801BD58 @ =0x00001253
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #8
    movs r2, #0
    bl Text_InsertDrawString
    ldr r1, .L0801BD5C @ =gPlaySt
    ldrb r2, [r1, #0xd]
    rsbs r0, r2, #0
    orrs r0, r2
    asrs r0, r0, #0x1f
    movs r1, #4
    ands r0, r1
    add r0, sp
    ldr r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x40
    movs r2, #2
    bl Text_InsertDrawString
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0801BD60 @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    movs r0, #0
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0801BD54: .4byte 0x081C3B80
.L0801BD58: .4byte 0x00001253
.L0801BD5C: .4byte gPlaySt
.L0801BD60: .4byte gBg0Tm
    func_end func_0801BCE4

    thumb_func_start func_0801BD64
func_0801BD64: @ 0x0801BD64
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl DoesBMXFADEExist
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0801BDB2
    ldr r0, .L0801BD9C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x31
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0801BDB2
    ldr r1, .L0801BDA0 @ =gPlaySt
    ldrb r0, [r1, #0xd]
    cmp r0, #0
    bne .L0801BDA4
    movs r0, #0xe
    ldrsb r0, [r1, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0xc]
    bl SetVisionWithFade
    b .L0801BDAA
    .align 2, 0
.L0801BD9C: .4byte gpKeySt
.L0801BDA0: .4byte gPlaySt
.L0801BDA4:
    movs r0, #0
    bl SetVisionWithFade
.L0801BDAA:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0801BCE4
.L0801BDB2:
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0801BD64

    thumb_func_start func_0801BDBC
func_0801BDBC: @ 0x0801BDBC
    movs r0, #0
    bx lr
    func_end func_0801BDBC

    thumb_func_start func_0801BDC0
func_0801BDC0: @ 0x0801BDC0
    push {lr}
    bl StartGame
    movs r0, #7
    pop {r1}
    bx r1
    func_end func_0801BDC0

    thumb_func_start func_0801BDCC
func_0801BDCC: @ 0x0801BDCC
    push {lr}
    movs r0, #0xc0
    lsls r0, r0, #2
    bl func_08002D48
    movs r0, #0x17
    pop {r1}
    bx r1
    func_end func_0801BDCC

    thumb_func_start func_0801BDDC
func_0801BDDC: @ 0x0801BDDC
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r5, r1, #0
    mov r1, sp
    ldr r0, .L0801BE04 @ =0x081C3BB0
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0801BE0C
    ldr r0, .L0801BE08 @ =gPlaySt
    adds r0, #0x43
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    b .L0801BE14
    .align 2, 0
.L0801BE04: .4byte 0x081C3BB0
.L0801BE08: .4byte gPlaySt
.L0801BE0C:
    ldr r0, .L0801BE74 @ =gPlaySt
    adds r0, #0x42
    ldrh r0, [r0]
    lsls r0, r0, #0x17
.L0801BE14:
    lsrs r6, r0, #0x1e
    adds r4, r5, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r3, .L0801BE78 @ =0x081C3BC0
    cmp r0, #0
    beq .L0801BE32
    ldr r3, .L0801BE7C @ =0x081C3BBC
.L0801BE32:
    adds r0, r4, #0
    movs r1, #8
    movs r2, #0
    bl Text_InsertDrawString
    lsls r0, r6, #2
    add r0, sp
    ldr r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x20
    movs r2, #2
    bl Text_InsertDrawString
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L0801BE80 @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    movs r0, #0
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801BE74: .4byte gPlaySt
.L0801BE78: .4byte 0x081C3BC0
.L0801BE7C: .4byte 0x081C3BBC
.L0801BE80: .4byte gBg0Tm
    func_end func_0801BDDC

    thumb_func_start func_0801BE84
func_0801BE84: @ 0x0801BE84
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r2, .L0801BEB4 @ =gpKeySt
    ldr r1, [r2]
    movs r0, #0x31
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0801BF2C
    adds r0, r5, #0
    adds r0, #0x3c
    movs r1, #0
    ldrsb r1, [r0, r1]
    adds r4, r0, #0
    cmp r1, #0
    beq .L0801BEBC
    ldr r1, .L0801BEB8 @ =gPlaySt
    adds r0, r1, #0
    adds r0, #0x43
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    b .L0801BEC6
    .align 2, 0
.L0801BEB4: .4byte gpKeySt
.L0801BEB8: .4byte gPlaySt
.L0801BEBC:
    ldr r1, .L0801BF0C @ =gPlaySt
    adds r0, r1, #0
    adds r0, #0x42
    ldrh r0, [r0]
    lsls r0, r0, #0x17
.L0801BEC6:
    lsrs r3, r0, #0x1e
    ldr r0, [r2]
    ldrh r2, [r0, #8]
    movs r0, #0x20
    ands r0, r2
    cmp r0, #0
    beq .L0801BED6
    subs r3, #1
.L0801BED6:
    movs r0, #0x11
    ands r0, r2
    cmp r0, #0
    beq .L0801BEE0
    adds r3, #1
.L0801BEE0:
    cmp r3, #2
    ble .L0801BEE6
    movs r3, #2
.L0801BEE6:
    cmp r3, #0
    bge .L0801BEEC
    movs r3, #0
.L0801BEEC:
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #0
    beq .L0801BF10
    adds r2, r1, #0
    adds r2, #0x43
    movs r0, #3
    ands r3, r0
    lsls r1, r3, #1
    movs r0, #7
    rsbs r0, r0, #0
    ldrb r3, [r2]
    ands r0, r3
    orrs r0, r1
    strb r0, [r2]
    b .L0801BF24
    .align 2, 0
.L0801BF0C: .4byte gPlaySt
.L0801BF10:
    adds r2, r1, #0
    adds r2, #0x42
    movs r0, #3
    ands r3, r0
    lsls r1, r3, #7
    ldr r0, .L0801BF34 @ =0xFFFFFE7F
    ldrh r3, [r2]
    ands r0, r3
    orrs r0, r1
    strh r0, [r2]
.L0801BF24:
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_0801BDDC
.L0801BF2C:
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801BF34: .4byte 0xFFFFFE7F
    func_end func_0801BE84

    thumb_func_start func_0801BF38
func_0801BF38: @ 0x0801BF38
    push {lr}
    bl func_08012B88
    ldr r0, .L0801BF50 @ =ProcScr_GameControl
    bl Proc_Find
    movs r1, #0xf
    bl Proc_Goto
    pop {r1}
    bx r1
    .align 2, 0
.L0801BF50: .4byte ProcScr_GameControl
    func_end func_0801BF38

    thumb_func_start func_0801BF54
func_0801BF54: @ 0x0801BF54
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r1, #0
    movs r1, #0x2c
    ldrsh r0, [r5, r1]
    lsls r0, r0, #5
    movs r2, #0x2a
    ldrsh r1, [r5, r2]
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L0801C01C @ =gBg0Tm
    mov r8, r1
    add r0, r8
    movs r1, #8
    movs r2, #1
    movs r3, #0
    bl TmFillRect_thm
    ldr r6, .L0801C020 @ =gPlaySt
    adds r7, r6, #0
    adds r7, #0x2b
    movs r0, #1
    ldrb r2, [r7]
    ands r0, r2
    cmp r0, #0
    beq .L0801C028
    bl InitIcons
    movs r0, #4
    bl ApplyIconPalettes
    adds r4, r5, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    ldrb r0, [r7]
    lsrs r3, r0, #4
    adds r3, #1
    adds r0, r4, #0
    movs r1, #0x30
    movs r2, #0
    bl Text_InsertDrawNumberOrBlank
    ldrh r1, [r6, #0x2c]
    lsls r3, r1, #0x13
    lsrs r3, r3, #0x17
    adds r0, r4, #0
    movs r1, #0x48
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    ldrh r6, [r6, #0x2c]
    lsls r0, r6, #0x13
    lsrs r0, r0, #0x17
    movs r1, #0xc
    bl __divsi3
    adds r3, r0, #0
    cmp r3, #0xa
    ble .L0801BFD2
    movs r3, #0xa
.L0801BFD2:
    adds r0, r4, #0
    movs r1, #0x58
    movs r2, #3
    bl Text_InsertDrawNumberOrBlank
    movs r2, #0x2c
    ldrsh r1, [r5, r2]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    add r1, r8
    adds r0, r4, #0
    bl PutText
    movs r1, #0x2c
    ldrsh r0, [r5, r1]
    lsls r0, r0, #5
    adds r0, #1
    movs r2, #0x2a
    ldrsh r1, [r5, r2]
    adds r0, r0, r1
    lsls r0, r0, #1
    add r0, r8
    ldr r2, .L0801C024 @ =0x081C3AC0
    ldrb r7, [r7]
    lsrs r1, r7, #4
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r1, [r1]
    adds r1, #0x79
    movs r2, #0xa0
    lsls r2, r2, #7
    bl PutIcon
    b .L0801C05A
    .align 2, 0
.L0801C01C: .4byte gBg0Tm
.L0801C020: .4byte gPlaySt
.L0801C024: .4byte 0x081C3AC0
.L0801C028:
    adds r4, r5, #0
    adds r4, #0x34
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L0801C06C @ =0x00001290
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #8
    movs r2, #1
    bl Text_InsertDrawString
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    add r1, r8
    adds r0, r4, #0
    bl PutText
.L0801C05A:
    movs r0, #1
    bl EnableBgSync
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0801C06C: .4byte 0x00001290
    func_end func_0801BF54

    thumb_func_start func_0801C070
func_0801C070: @ 0x0801C070
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L0801C13C @ =gpKeySt
    ldr r0, [r1]
    ldrh r2, [r0, #6]
    movs r0, #0xcd
    lsls r0, r0, #2
    ands r0, r2
    adds r4, r1, #0
    cmp r0, #0
    beq .L0801C15A
    movs r0, #0x20
    ands r0, r2
    cmp r0, #0
    beq .L0801C0B4
    ldr r3, .L0801C140 @ =gPlaySt
    ldrh r2, [r3, #0x2c]
    lsls r0, r2, #0x13
    lsrs r0, r0, #0x17
    cmp r0, #0
    ble .L0801C0B4
    subs r1, r0, #1
    cmp r1, #0xff
    ble .L0801C0A4
    movs r1, #0xff
.L0801C0A4:
    ldr r7, .L0801C144 @ =0x000001FF
    adds r0, r7, #0
    ands r1, r0
    lsls r1, r1, #4
    ldr r0, .L0801C148 @ =0xFFFFE00F
    ands r0, r2
    orrs r0, r1
    strh r0, [r3, #0x2c]
.L0801C0B4:
    ldr r1, [r4]
    movs r0, #0x10
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801C0E0
    ldr r3, .L0801C140 @ =gPlaySt
    ldrh r2, [r3, #0x2c]
    lsls r0, r2, #0x13
    lsrs r0, r0, #0x17
    adds r1, r0, #1
    cmp r1, #0xff
    ble .L0801C0D0
    movs r1, #0xff
.L0801C0D0:
    ldr r7, .L0801C144 @ =0x000001FF
    adds r0, r7, #0
    ands r1, r0
    lsls r1, r1, #4
    ldr r0, .L0801C148 @ =0xFFFFE00F
    ands r0, r2
    orrs r0, r1
    strh r0, [r3, #0x2c]
.L0801C0E0:
    ldr r1, [r4]
    movs r0, #0x80
    lsls r0, r0, #2
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0801C0FC
    ldr r1, .L0801C140 @ =gPlaySt
    adds r1, #0x2b
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
.L0801C0FC:
    ldr r2, [r4]
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r3, [r2, #6]
    ands r0, r3
    cmp r0, #0
    beq .L0801C116
    ldr r1, .L0801C140 @ =gPlaySt
    adds r1, #0x2b
    movs r0, #1
    ldrb r7, [r1]
    orrs r0, r7
    strb r0, [r1]
.L0801C116:
    movs r0, #4
    ldrh r2, [r2, #6]
    ands r0, r2
    cmp r0, #0
    beq .L0801C152
    ldr r0, .L0801C140 @ =gPlaySt
    adds r3, r0, #0
    adds r3, #0x2b
    ldrb r2, [r3]
    lsrs r1, r2, #4
    cmp r1, #0xa
    bgt .L0801C14C
    adds r1, #1
    lsls r1, r1, #4
    movs r0, #0xf
    ands r0, r2
    orrs r0, r1
    b .L0801C150
    .align 2, 0
.L0801C13C: .4byte gpKeySt
.L0801C140: .4byte gPlaySt
.L0801C144: .4byte 0x000001FF
.L0801C148: .4byte 0xFFFFE00F
.L0801C14C:
    movs r0, #0xf
    ands r0, r2
.L0801C150:
    strb r0, [r3]
.L0801C152:
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_0801BF54
.L0801C15A:
    movs r0, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0801C070

    thumb_func_start func_0801C164
func_0801C164: @ 0x0801C164
    movs r0, #0x17
    bx lr
    func_end func_0801C164

    thumb_func_start func_0801C168
func_0801C168: @ 0x0801C168
    push {lr}
    ldr r0, .L0801C178 @ =0x08B9335C
    movs r1, #3
    bl Proc_Start
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L0801C178: .4byte 0x08B9335C
    func_end func_0801C168
