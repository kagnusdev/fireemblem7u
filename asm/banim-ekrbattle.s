    .include "asm_prelude.inc"

    thumb_func_start func_0804B194
func_0804B194: @ 0x0804B194
    ldr r1, .L0804B19C @ =0x0203DFFC
    str r0, [r1]
    bx lr
    .align 2, 0
.L0804B19C: .4byte 0x0203DFFC
    func_end func_0804B194

    thumb_func_start func_0804B1A0
func_0804B1A0: @ 0x0804B1A0
    ldr r0, .L0804B1A8 @ =0x0203DFFC
    ldr r0, [r0]
    bx lr
    .align 2, 0
.L0804B1A8: .4byte 0x0203DFFC
    func_end func_0804B1A0

    thumb_func_start func_0804B1AC
func_0804B1AC: @ 0x0804B1AC
    push {r4, lr}
    ldr r4, .L0804B1CC @ =0x0203E004
    ldr r0, .L0804B1D0 @ =0x08B9A99C
    movs r1, #3
    bl Proc_Start
    str r0, [r4]
    ldr r1, .L0804B1D4 @ =0x0203E000
    movs r0, #1
    str r0, [r1]
    bl LockGame
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B1CC: .4byte 0x0203E004
.L0804B1D0: .4byte 0x08B9A99C
.L0804B1D4: .4byte 0x0203E000
    func_end func_0804B1AC

    thumb_func_start func_0804B1D8
func_0804B1D8: @ 0x0804B1D8
    push {lr}
    ldr r0, .L0804B1E8 @ =0x0203E004
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L0804B1E8: .4byte 0x0203E004
    func_end func_0804B1D8

    thumb_func_start IsBattleDeamonActive
IsBattleDeamonActive: @ 0x0804B1EC
    ldr r0, .L0804B1F8 @ =0x0203E000
    ldr r0, [r0]
    cmp r0, #1
    beq .L0804B1FC
    movs r0, #0
    b .L0804B1FE
    .align 2, 0
.L0804B1F8: .4byte 0x0203E000
.L0804B1FC:
    movs r0, #1
.L0804B1FE:
    bx lr
    func_end IsBattleDeamonActive

    thumb_func_start func_0804B200
func_0804B200: @ 0x0804B200
    push {lr}
    ldr r1, .L0804B210 @ =0x0203E000
    movs r0, #0
    str r0, [r1]
    bl UnlockGame
    pop {r0}
    bx r0
    .align 2, 0
.L0804B210: .4byte 0x0203E000
    func_end func_0804B200

    thumb_func_start func_0804B214
func_0804B214: @ 0x0804B214
    bx lr
    func_end func_0804B214

    thumb_func_start func_0804B218
func_0804B218: @ 0x0804B218
    push {r4, lr}
    bl AnimClearAll
    ldr r4, .L0804B260 @ =0x02000064
    ldr r0, .L0804B264 @ =0x08B9A9BC
    movs r1, #3
    bl Proc_Start
    str r0, [r4]
    ldr r0, .L0804B268 @ =func_0804B284
    bl SetMainFunc
    bl func_0804D4CC
    ldr r0, .L0804B26C @ =0x02017724
    movs r1, #0
    str r1, [r0]
    ldr r0, .L0804B270 @ =0x02000018
    str r1, [r0]
    ldr r0, .L0804B274 @ =0x0200001C
    str r1, [r0]
    ldr r0, .L0804B278 @ =0x02000020
    str r1, [r0]
    ldr r0, .L0804B27C @ =0x02000024
    str r1, [r0]
    ldr r0, .L0804B280 @ =0x0203E008
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804B258
    bl func_08067E48
.L0804B258:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B260: .4byte 0x02000064
.L0804B264: .4byte 0x08B9A9BC
.L0804B268: .4byte func_0804B284
.L0804B26C: .4byte 0x02017724
.L0804B270: .4byte 0x02000018
.L0804B274: .4byte 0x0200001C
.L0804B278: .4byte 0x02000020
.L0804B27C: .4byte 0x02000024
.L0804B280: .4byte 0x0203E008
    func_end func_0804B218

    thumb_func_start func_0804B284
func_0804B284: @ 0x0804B284
    push {lr}
    ldr r0, .L0804B29C @ =gpKeySt
    ldr r0, [r0]
    bl RefreshKeySt
    ldr r0, .L0804B2A0 @ =0x0200001C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804B2A4
    bl func_0804B328
    b .L0804B2B0
    .align 2, 0
.L0804B29C: .4byte gpKeySt
.L0804B2A0: .4byte 0x0200001C
.L0804B2A4:
    ldr r0, .L0804B2C4 @ =0x02000020
    ldr r0, [r0]
    cmp r0, #1
    bne .L0804B2B0
    bl func_0804B328
.L0804B2B0:
    ldr r0, .L0804B2C8 @ =0x02017724
    ldr r0, [r0]
    cmp r0, #1
    beq .L0804B2CC
    cmp r0, #1
    blo .L0804B308
    cmp r0, #2
    beq .L0804B2DC
    b .L0804B308
    .align 2, 0
.L0804B2C4: .4byte 0x02000020
.L0804B2C8: .4byte 0x02017724
.L0804B2CC:
    ldr r0, .L0804B2D8 @ =0x0203E008
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804B308
    b .L0804B2E6
    .align 2, 0
.L0804B2D8: .4byte 0x0203E008
.L0804B2DC:
    ldr r0, .L0804B2F4 @ =0x0203E008
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804B2FC
.L0804B2E6:
    ldr r0, .L0804B2F8 @ =0x02000064
    ldr r0, [r0]
    bl Proc_End
    bl func_08050A08
    b .L0804B308
    .align 2, 0
.L0804B2F4: .4byte 0x0203E008
.L0804B2F8: .4byte 0x02000064
.L0804B2FC:
    ldr r0, .L0804B31C @ =0x02000064
    ldr r0, [r0]
    bl Proc_End
    bl func_0804C438
.L0804B308:
    ldr r1, .L0804B320 @ =gBmSt
    movs r0, #1
    strb r0, [r1]
    ldr r0, .L0804B324 @ =0x04000006
    ldrh r0, [r0]
    strh r0, [r1, #6]
    bl VBlankIntrWait
    pop {r0}
    bx r0
    .align 2, 0
.L0804B31C: .4byte 0x02000064
.L0804B320: .4byte gBmSt
.L0804B324: .4byte 0x04000006
    func_end func_0804B284

    thumb_func_start func_0804B328
func_0804B328: @ 0x0804B328
    push {r4, lr}
    bl ClearSprites
    bl func_080676C4
    bl GetGameLock
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0804B344
    ldr r0, .L0804B394 @ =gProcTreeRoots
    ldr r0, [r0, #8]
    bl Proc_Run
.L0804B344:
    ldr r4, .L0804B394 @ =gProcTreeRoots
    ldr r0, [r4, #0xc]
    bl Proc_Run
    ldr r0, [r4, #0x14]
    bl Proc_Run
    movs r0, #0
    bl PutSpriteLayerOam
    ldr r0, [r4, #4]
    bl Proc_Run
    bl AnimUpdateAll
    bl BattleAIS_ExecCommands
    ldr r0, [r4, #0x10]
    bl Proc_Run
    ldr r1, .L0804B398 @ =0x02000020
    movs r0, #0
    str r0, [r1]
    ldr r1, .L0804B39C @ =0x0201FAF8
    ldr r0, [r1]
    ldr r1, [r1, #4]
    adds r0, r0, r1
    cmp r0, #2
    beq .L0804B386
    ldr r1, .L0804B3A0 @ =0x02000018
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
.L0804B386:
    movs r0, #0xd
    bl PutSpriteLayerOam
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B394: .4byte gProcTreeRoots
.L0804B398: .4byte 0x02000020
.L0804B39C: .4byte 0x0201FAF8
.L0804B3A0: .4byte 0x02000018
    func_end func_0804B328

    thumb_func_start func_0804B3A4
func_0804B3A4: @ 0x0804B3A4
    bx lr
    func_end func_0804B3A4

    thumb_func_start func_0804B3A8
func_0804B3A8: @ 0x0804B3A8
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0804B3C8 @ =0x0201FB00
    movs r0, #0
    str r0, [r1]
    ldr r0, .L0804B3CC @ =0x02017744
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804B3DA
    ldr r0, .L0804B3D0 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #1
    bne .L0804B3D4
    movs r0, #0x20
    rsbs r0, r0, #0
    b .L0804B3D8
    .align 2, 0
.L0804B3C8: .4byte 0x0201FB00
.L0804B3CC: .4byte 0x02017744
.L0804B3D0: .4byte 0x0203E02C
.L0804B3D4:
    movs r0, #0xf0
    rsbs r0, r0, #0
.L0804B3D8:
    str r0, [r1]
.L0804B3DA:
    bl func_08054248
    bl func_08064C7C
    ldr r0, .L0804B3F4 @ =0x02000024
    movs r1, #1
    str r1, [r0]
    bl func_080554F0
    cmp r0, #1
    bne .L0804B3F8
    movs r0, #0
    b .L0804B3FA
    .align 2, 0
.L0804B3F4: .4byte 0x02000024
.L0804B3F8:
    movs r0, #0x1e
.L0804B3FA:
    strh r0, [r4, #0x2c]
    ldr r0, .L0804B410 @ =0x0203E00C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804B418
    ldr r1, .L0804B414 @ =0x0203E09C
    ldrb r0, [r1]
    ldrb r1, [r1, #1]
    b .L0804B41E
    .align 2, 0
.L0804B410: .4byte 0x0203E00C
.L0804B414: .4byte 0x0203E09C
.L0804B418:
    ldr r1, .L0804B438 @ =0x0203E09C
    ldrb r0, [r1, #1]
    ldrb r1, [r1]
.L0804B41E:
    bl func_080793F8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    str r0, [r4, #0x54]
    movs r0, #0
    str r0, [r4, #0x58]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B438: .4byte 0x0203E09C
    func_end func_0804B3A8

    thumb_func_start func_0804B43C
func_0804B43C: @ 0x0804B43C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x1f
    bne .L0804B484
    bl func_0804B1A0
    cmp r0, #1
    beq .L0804B47C
    ldr r0, [r4, #0x54]
    cmp r0, #1
    beq .L0804B462
    ldr r0, [r4, #0x58]
    cmp r0, #1
    bne .L0804B47C
.L0804B462:
    movs r0, #1
    movs r1, #7
    bl func_08051A9C
    movs r0, #1
    movs r1, #7
    movs r2, #0
    bl func_08051B80
    ldr r0, .L0804B478 @ =func_0804B490
    b .L0804B47E
    .align 2, 0
.L0804B478: .4byte func_0804B490
.L0804B47C:
    ldr r0, .L0804B48C @ =func_0804B594
.L0804B47E:
    str r0, [r4, #0xc]
    movs r0, #0
    strh r0, [r4, #0x2c]
.L0804B484:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B48C: .4byte func_0804B594
    func_end func_0804B43C

    thumb_func_start func_0804B490
func_0804B490: @ 0x0804B490
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_08051AEC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804B51A
    bl func_0804C4E4
    bl func_0804CE30
    movs r0, #0
    str r0, [sp]
    ldr r1, .L0804B4F4 @ =gBg0Tm
    ldr r2, .L0804B4F8 @ =0x01000200
    mov r0, sp
    bl CpuFastSet
    ldr r0, .L0804B4FC @ =0x02000038
    ldrh r1, [r0]
    ldrh r2, [r0, #2]
    movs r0, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    bl EnableBgSync
    bl func_0804C45C
    ldr r0, [r4, #0x54]
    cmp r0, #1
    bne .L0804B516
    ldr r0, .L0804B500 @ =0x0203E00C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804B508
    ldr r1, .L0804B504 @ =0x0203E09C
    ldrb r0, [r1]
    ldrb r1, [r1, #1]
    bl func_08079464
    b .L0804B512
    .align 2, 0
.L0804B4F4: .4byte gBg0Tm
.L0804B4F8: .4byte 0x01000200
.L0804B4FC: .4byte 0x02000038
.L0804B500: .4byte 0x0203E00C
.L0804B504: .4byte 0x0203E09C
.L0804B508:
    ldr r1, .L0804B524 @ =0x0203E09C
    ldrb r0, [r1, #1]
    ldrb r1, [r1]
    bl func_08079464
.L0804B512:
    movs r0, #0
    str r0, [r4, #0x54]
.L0804B516:
    ldr r0, .L0804B528 @ =func_0804B52C
    str r0, [r4, #0xc]
.L0804B51A:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B524: .4byte 0x0203E09C
.L0804B528: .4byte func_0804B52C
    func_end func_0804B490

    thumb_func_start func_0804B52C
func_0804B52C: @ 0x0804B52C
    push {r4, lr}
    adds r4, r0, #0
    bl IsEventRunning
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0804B566
    bl func_0804D1D4
    movs r0, #1
    bl EnableBgSync
    movs r0, #0
    movs r1, #7
    bl func_08051A9C
    movs r0, #0
    movs r1, #7
    movs r2, #0
    bl func_08051B80
    bl func_0804C4F4
    bl func_0804CE40
    bl func_0804C44C
    ldr r0, .L0804B56C @ =func_0804B570
    str r0, [r4, #0xc]
.L0804B566:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B56C: .4byte func_0804B570
    func_end func_0804B52C

    thumb_func_start func_0804B570
func_0804B570: @ 0x0804B570
    push {r4, lr}
    adds r4, r0, #0
    bl func_08051AEC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804B588
    ldr r0, .L0804B590 @ =func_0804B594
    str r0, [r4, #0xc]
    movs r0, #0
    strh r0, [r4, #0x2c]
.L0804B588:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B590: .4byte func_0804B594
    func_end func_0804B570

    thumb_func_start func_0804B594
func_0804B594: @ 0x0804B594
    ldr r1, .L0804B5A8 @ =0x0203E00C
    movs r2, #0
    ldrsh r1, [r1, r2]
    str r1, [r0, #0x44]
    movs r1, #0
    str r1, [r0, #0x48]
    ldr r1, .L0804B5AC @ =func_0804B5B0
    str r1, [r0, #0xc]
    bx lr
    .align 2, 0
.L0804B5A8: .4byte 0x0203E00C
.L0804B5AC: .4byte func_0804B5B0
    func_end func_0804B594

    thumb_func_start func_0804B5B0
func_0804B5B0: @ 0x0804B5B0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x48]
    cmp r0, #2
    bne .L0804B5C4
    ldr r0, .L0804B5C0 @ =func_0804B640
    str r0, [r4, #0xc]
    b .L0804B612
    .align 2, 0
.L0804B5C0: .4byte func_0804B640
.L0804B5C4:
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L0804B5F0
    ldr r0, .L0804B5E8 @ =0x02000000
    ldr r0, [r0]
    str r0, [r4, #0x5c]
    bl func_08064AB0
    cmp r0, #0
    beq .L0804B5E2
    ldr r0, [r4, #0x5c]
    bl func_08064C10
    ldr r0, .L0804B5EC @ =func_0804B620
    str r0, [r4, #0xc]
.L0804B5E2:
    movs r0, #1
    b .L0804B60A
    .align 2, 0
.L0804B5E8: .4byte 0x02000000
.L0804B5EC: .4byte func_0804B620
.L0804B5F0:
    ldr r0, .L0804B618 @ =0x02000000
    ldr r0, [r0, #8]
    str r0, [r4, #0x5c]
    bl func_08064AB0
    cmp r0, #0
    beq .L0804B608
    ldr r0, [r4, #0x5c]
    bl func_08064C10
    ldr r0, .L0804B61C @ =func_0804B620
    str r0, [r4, #0xc]
.L0804B608:
    movs r0, #0
.L0804B60A:
    str r0, [r4, #0x44]
    ldr r0, [r4, #0x48]
    adds r0, #1
    str r0, [r4, #0x48]
.L0804B612:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B618: .4byte 0x02000000
.L0804B61C: .4byte func_0804B620
    func_end func_0804B5B0

    thumb_func_start func_0804B620
func_0804B620: @ 0x0804B620
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl func_08064BD8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804B636
    ldr r0, .L0804B63C @ =func_0804B5B0
    str r0, [r4, #0xc]
.L0804B636:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B63C: .4byte func_0804B5B0
    func_end func_0804B620

    thumb_func_start func_0804B640
func_0804B640: @ 0x0804B640
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804B66C @ =0x0203E00C
    movs r2, #0
    ldrsh r1, [r0, r2]
    ldr r0, .L0804B670 @ =0x02017744
    ldr r0, [r0]
    cmp r1, r0
    beq .L0804B67C
    ldr r1, .L0804B674 @ =0x02000000
    lsls r0, r0, #3
    adds r0, r0, r1
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, .L0804B678 @ =func_0804B68C
    b .L0804B67E
    .align 2, 0
.L0804B66C: .4byte 0x0203E00C
.L0804B670: .4byte 0x02017744
.L0804B674: .4byte 0x02000000
.L0804B678: .4byte func_0804B68C
.L0804B67C:
    ldr r0, .L0804B688 @ =func_0804B6A8
.L0804B67E:
    str r0, [r4, #0xc]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B688: .4byte func_0804B6A8
    func_end func_0804B640

    thumb_func_start func_0804B68C
func_0804B68C: @ 0x0804B68C
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    bne .L0804B6A0
    ldr r0, .L0804B6A4 @ =func_0804B6A8
    str r0, [r1, #0xc]
.L0804B6A0:
    bx lr
    .align 2, 0
.L0804B6A4: .4byte func_0804B6A8
    func_end func_0804B68C

    thumb_func_start func_0804B6A8
func_0804B6A8: @ 0x0804B6A8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0804B6EC @ =0x02000000
    ldr r0, [r4]
    bl func_0804F698
    ldr r0, [r4, #8]
    bl func_0804F698
    ldr r1, .L0804B6F0 @ =0x0203E0E4
    movs r2, #0
    ldrsh r0, [r1, r2]
    movs r2, #2
    ldrsh r1, [r1, r2]
    bl func_0804FA50
    ldr r1, .L0804B6F4 @ =0x0203A3D8
    movs r0, #0x40
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0804B6DA
    ldr r0, [r4]
    bl func_0804F7D0
.L0804B6DA:
    ldr r0, [r4]
    bl func_0804F37C
    ldr r0, .L0804B6F8 @ =func_0804B6FC
    str r0, [r5, #0xc]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B6EC: .4byte 0x02000000
.L0804B6F0: .4byte 0x0203E0E4
.L0804B6F4: .4byte 0x0203A3D8
.L0804B6F8: .4byte func_0804B6FC
    func_end func_0804B6A8

    thumb_func_start func_0804B6FC
func_0804B6FC: @ 0x0804B6FC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804B714 @ =0x0203E0A0
    ldr r0, [r0]
    cmp r0, #0
    beq .L0804B720
    ldr r0, .L0804B718 @ =0x02000000
    ldr r0, [r0, #8]
    bl func_0806A4BC
    ldr r0, .L0804B71C @ =func_0804B730
    b .L0804B722
    .align 2, 0
.L0804B714: .4byte 0x0203E0A0
.L0804B718: .4byte 0x02000000
.L0804B71C: .4byte func_0804B730
.L0804B720:
    ldr r0, .L0804B72C @ =func_0804B758
.L0804B722:
    str r0, [r4, #0xc]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B72C: .4byte func_0804B758
    func_end func_0804B6FC

    thumb_func_start func_0804B730
func_0804B730: @ 0x0804B730
    push {r4, lr}
    adds r4, r0, #0
    bl func_0806A4A4
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804B74C
    bl func_0806A4B8
    movs r0, #0x1e
    strh r0, [r4, #0x2c]
    ldr r0, .L0804B754 @ =func_0804B758
    str r0, [r4, #0xc]
.L0804B74C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B754: .4byte func_0804B758
    func_end func_0804B730

    thumb_func_start func_0804B758
func_0804B758: @ 0x0804B758
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x1e
    ble .L0804B7C4
    ldr r6, .L0804B7CC @ =0x0203E010
    ldrh r0, [r6]
    cmp r0, #1
    bne .L0804B794
    ldr r3, .L0804B7D0 @ =0x02000000
    ldr r4, [r3]
    movs r2, #0x80
    lsls r2, r2, #8
    strh r2, [r4, #0x10]
    movs r0, #0x80
    lsls r0, r0, #7
    adds r1, r0, #0
    ldrh r0, [r4, #0xc]
    orrs r0, r1
    strh r0, [r4, #0xc]
    ldr r4, [r3, #4]
    strh r2, [r4, #0x10]
    ldrh r0, [r4, #0xc]
    orrs r1, r0
    strh r1, [r4, #0xc]
.L0804B794:
    ldrh r6, [r6, #2]
    cmp r6, #1
    bne .L0804B7BA
    ldr r3, .L0804B7D0 @ =0x02000000
    ldr r4, [r3, #8]
    movs r2, #0x80
    lsls r2, r2, #8
    strh r2, [r4, #0x10]
    movs r0, #0x80
    lsls r0, r0, #7
    adds r1, r0, #0
    ldrh r0, [r4, #0xc]
    orrs r0, r1
    strh r0, [r4, #0xc]
    ldr r4, [r3, #0xc]
    strh r2, [r4, #0x10]
    ldrh r0, [r4, #0xc]
    orrs r1, r0
    strh r1, [r4, #0xc]
.L0804B7BA:
    ldr r0, .L0804B7D4 @ =0x0201FAF8
    str r7, [r0]
    str r7, [r0, #4]
    ldr r0, .L0804B7D8 @ =func_0804B7DC
    str r0, [r5, #0xc]
.L0804B7C4:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B7CC: .4byte 0x0203E010
.L0804B7D0: .4byte 0x02000000
.L0804B7D4: .4byte 0x0201FAF8
.L0804B7D8: .4byte func_0804B7DC
    func_end func_0804B758

    thumb_func_start func_0804B7DC
func_0804B7DC: @ 0x0804B7DC
    ldr r2, .L0804B7E8 @ =0x02000024
    movs r1, #0
    str r1, [r2]
    ldr r1, .L0804B7EC @ =func_0804B7F0
    str r1, [r0, #0xc]
    bx lr
    .align 2, 0
.L0804B7E8: .4byte 0x02000024
.L0804B7EC: .4byte func_0804B7F0
    func_end func_0804B7DC

    thumb_func_start func_0804B7F0
func_0804B7F0: @ 0x0804B7F0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804B808 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L0804B814
    ldr r0, .L0804B80C @ =0x02000000
    ldr r0, [r0, #8]
    bl func_0806824C
    ldr r0, .L0804B810 @ =func_0804B82C
    b .L0804B81E
    .align 2, 0
.L0804B808: .4byte 0x0203E02C
.L0804B80C: .4byte 0x02000000
.L0804B810: .4byte func_0804B82C
.L0804B814:
    adds r1, r4, #0
    adds r1, #0x29
    movs r0, #0
    strb r0, [r1]
    ldr r0, .L0804B828 @ =func_0804B858
.L0804B81E:
    str r0, [r4, #0xc]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B828: .4byte func_0804B858
    func_end func_0804B7F0

    thumb_func_start func_0804B82C
func_0804B82C: @ 0x0804B82C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_08068220
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L0804B848
    bl func_08068238
    ldr r0, .L0804B850 @ =0x0203E0D4
    strh r4, [r0]
    ldr r0, .L0804B854 @ =func_0804BF14
    str r0, [r5, #0xc]
.L0804B848:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B850: .4byte 0x0203E0D4
.L0804B854: .4byte func_0804BF14
    func_end func_0804B82C

    thumb_func_start func_0804B858
func_0804B858: @ 0x0804B858
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r4, #0
    ldr r0, .L0804B888 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L0804B874
    adds r1, r6, #0
    adds r1, #0x29
    movs r0, #1
    strb r0, [r1]
.L0804B874:
    ldr r0, .L0804B88C @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #3
    beq .L0804B930
    cmp r0, #3
    ble .L0804B890
    cmp r0, #4
    beq .L0804B93C
    b .L0804B93E
    .align 2, 0
.L0804B888: .4byte gpKeySt
.L0804B88C: .4byte 0x0203E02C
.L0804B890:
    cmp r0, #0
    blt .L0804B93E
    ldr r0, .L0804B8D8 @ =0x0201FAF8
    ldr r1, [r0]
    ldr r0, [r0, #4]
    adds r1, r1, r0
    cmp r1, #2
    bne .L0804B93E
    bl func_080554F0
    cmp r0, #0
    beq .L0804B93C
    ldr r5, .L0804B8DC @ =0x0203E0D4
    ldr r0, .L0804B8E0 @ =0x0203E094
    ldr r0, [r0]
    adds r0, #0x6e
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r5]
    ldr r0, .L0804B8E4 @ =0x0203E098
    ldr r0, [r0]
    adds r0, #0x6e
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r5, #2]
    ldr r1, .L0804B8E8 @ =0x0203E0B8
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0
    bne .L0804B8EC
    movs r0, #1
    bl ArenaSetResult
    b .L0804B93C
    .align 2, 0
.L0804B8D8: .4byte 0x0201FAF8
.L0804B8DC: .4byte 0x0203E0D4
.L0804B8E0: .4byte 0x0203E094
.L0804B8E4: .4byte 0x0203E098
.L0804B8E8: .4byte 0x0203E0B8
.L0804B8EC:
    movs r2, #2
    ldrsh r0, [r1, r2]
    cmp r0, #0
    bne .L0804B8FE
    movs r0, #2
.L0804B8F6:
    bl ArenaSetResult
    strh r4, [r5, #2]
    b .L0804B93C
.L0804B8FE:
    adds r0, r6, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804B910
    bl func_0805555C
    movs r0, #4
    b .L0804B8F6
.L0804B910:
    bl ArenaContinueBattle
    bl func_08052C9C
    bl AnimClearAll
    bl func_08054024
    bl func_08054248
    strh r4, [r6, #0x2c]
    ldr r0, .L0804B92C @ =func_0804B758
    str r0, [r6, #0xc]
    b .L0804B93E
    .align 2, 0
.L0804B92C: .4byte func_0804B758
.L0804B930:
    ldr r0, .L0804B94C @ =0x0201FAF8
    ldr r1, [r0]
    ldr r0, [r0, #4]
    adds r1, r1, r0
    cmp r1, #1
    bne .L0804B93E
.L0804B93C:
    movs r4, #1
.L0804B93E:
    cmp r4, #1
    bne .L0804B946
    ldr r0, .L0804B950 @ =func_0804B954
    str r0, [r6, #0xc]
.L0804B946:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B94C: .4byte 0x0201FAF8
.L0804B950: .4byte func_0804B954
    func_end func_0804B858

    thumb_func_start func_0804B954
func_0804B954: @ 0x0804B954
    adds r2, r0, #0
    adds r2, #0x29
    movs r1, #0
    strb r1, [r2]
    ldr r1, .L0804B964 @ =func_0804B968
    str r1, [r0, #0xc]
    bx lr
    .align 2, 0
.L0804B964: .4byte func_0804B968
    func_end func_0804B954

    thumb_func_start func_0804B968
func_0804B968: @ 0x0804B968
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, .L0804B9D4 @ =0x02017728
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804B9CE
    ldr r0, .L0804B9D8 @ =0x02017738
    ldr r4, [r0]
    cmp r4, #0
    bne .L0804B9CE
    bl func_08051BD0
    lsls r0, r0, #0x18
    asrs r6, r0, #0x18
    cmp r6, #1
    bne .L0804B9CE
    strh r4, [r5, #0x2c]
    ldr r0, .L0804B9DC @ =func_0804B9EC
    str r0, [r5, #0xc]
    ldr r4, .L0804B9E0 @ =0x02000000
    ldr r0, [r4]
    bl func_08064C5C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0804B9CE
    ldr r0, .L0804B9E4 @ =0x0203E0D4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #1
    cmp r0, #0
    beq .L0804B9AA
    movs r2, #0
.L0804B9AA:
    ldr r3, .L0804B9E8 @ =0x02017744
    ldr r0, [r3]
    adds r1, r5, #0
    adds r1, #0x29
    cmp r2, r0
    beq .L0804B9B8
    strb r6, [r1]
.L0804B9B8:
    ldrb r1, [r1]
    cmp r1, #1
    bne .L0804B9CE
    ldr r0, [r3]
    lsls r0, r0, #3
    adds r0, r0, r4
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0804B9CE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804B9D4: .4byte 0x02017728
.L0804B9D8: .4byte 0x02017738
.L0804B9DC: .4byte func_0804B9EC
.L0804B9E0: .4byte 0x02000000
.L0804B9E4: .4byte 0x0203E0D4
.L0804B9E8: .4byte 0x02017744
    func_end func_0804B968

    thumb_func_start func_0804B9EC
func_0804B9EC: @ 0x0804B9EC
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x1d
    ble .L0804BA24
    bl func_0804B1A0
    cmp r0, #1
    beq .L0804BA20
    ldr r0, .L0804BA18 @ =0x0203E0D4
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r2, #2
    ldrsh r0, [r0, r2]
    cmn r1, r0
    beq .L0804BA20
    ldr r0, .L0804BA1C @ =func_0804BA30
    b .L0804BA22
    .align 2, 0
.L0804BA18: .4byte 0x0203E0D4
.L0804BA1C: .4byte func_0804BA30
.L0804BA20:
    ldr r0, .L0804BA2C @ =func_0804BF70
.L0804BA22:
    str r0, [r4, #0xc]
.L0804BA24:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BA2C: .4byte func_0804BF70
    func_end func_0804B9EC

    thumb_func_start func_0804BA30
func_0804BA30: @ 0x0804BA30
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    str r0, [sp, #8]
    ldr r0, .L0804BB38 @ =0x02019484
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r0, r1
    mov sl, r0
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r7, .L0804BB3C @ =gDispIo
    movs r0, #0x20
    ldrb r2, [r7, #1]
    orrs r0, r2
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r7, #1]
    adds r1, r7, #0
    adds r1, #0x2d
    movs r0, #0
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x31
    movs r2, #0x94
    strb r2, [r0]
    subs r1, #1
    movs r0, #0xf0
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x30
    strb r2, [r0]
    movs r3, #1
    mov r8, r3
    mov r1, r8
    ldr r6, .L0804BB40 @ =0x030028A4
    ldrb r6, [r6]
    orrs r1, r6
    movs r0, #2
    mov sb, r0
    mov r2, sb
    orrs r1, r2
    movs r5, #4
    orrs r1, r5
    movs r4, #8
    orrs r1, r4
    movs r3, #0x10
    orrs r1, r3
    movs r6, #0x36
    mov r0, r8
    ldrb r2, [r6, r7]
    orrs r0, r2
    movs r2, #3
    rsbs r2, r2, #0
    ands r0, r2
    orrs r0, r5
    orrs r0, r4
    orrs r0, r3
    subs r2, #0x1e
    ands r1, r2
    ldr r3, .L0804BB40 @ =0x030028A4
    strb r1, [r3]
    ands r0, r2
    strb r0, [r6, r7]
    ldr r0, .L0804BB44 @ =0x081D97F0
    ldr r1, .L0804BB48 @ =0x06002000
    movs r2, #0xc0
    lsls r2, r2, #2
    bl RegisterDataMove
    ldr r0, .L0804BB4C @ =0x081D9F50
    ldr r1, .L0804BB50 @ =0x020238AC
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x12
    movs r3, #3
    bl func_08066ACC
    ldr r0, .L0804BB54 @ =0x081D9FBC
    ldr r1, .L0804BB58 @ =0x02022880
    movs r2, #8
    bl CpuFastSet
    movs r0, #2
    bl EnableBgSync
    bl EnablePalSync
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r6, [r7, #0x10]
    ands r0, r6
    strb r0, [r7, #0x10]
    adds r0, r1, #0
    ldrb r2, [r7, #0xc]
    ands r0, r2
    mov r3, r8
    orrs r0, r3
    strb r0, [r7, #0xc]
    ldrb r6, [r7, #0x14]
    ands r1, r6
    mov r0, sb
    orrs r1, r0
    strb r1, [r7, #0x14]
    movs r0, #3
    ldrb r1, [r7, #0x18]
    orrs r0, r1
    strb r0, [r7, #0x18]
    movs r0, #1
    bl func_0804C48C
    ldr r0, .L0804BB5C @ =0x0203E0D4
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    beq .L0804BB64
    ldr r0, .L0804BB60 @ =0x0203E0D0
    movs r3, #0
    ldrsh r0, [r0, r3]
    b .L0804BB6A
    .align 2, 0
.L0804BB38: .4byte 0x02019484
.L0804BB3C: .4byte gDispIo
.L0804BB40: .4byte 0x030028A4
.L0804BB44: .4byte 0x081D97F0
.L0804BB48: .4byte 0x06002000
.L0804BB4C: .4byte 0x081D9F50
.L0804BB50: .4byte 0x020238AC
.L0804BB54: .4byte 0x081D9FBC
.L0804BB58: .4byte 0x02022880
.L0804BB5C: .4byte 0x0203E0D4
.L0804BB60: .4byte 0x0203E0D0
.L0804BB64:
    ldr r0, .L0804BC00 @ =0x0203E0D0
    movs r6, #2
    ldrsh r0, [r0, r6]
.L0804BB6A:
    movs r1, #0x64
    bl DivRem
    adds r6, r0, #0
    movs r1, #0xa
    bl Div
    adds r5, r0, #0
    lsls r0, r5, #2
    adds r0, r0, r5
    lsls r0, r0, #1
    subs r4, r6, r0
    cmp r5, #0
    bne .L0804BB88
    movs r5, #0xa
.L0804BB88:
    ldr r0, .L0804BC04 @ =0x02019484
    adds r1, r6, #0
    bl func_08066D78
    lsls r5, r5, #5
    mov r8, r5
    lsls r4, r4, #5
    mov sb, r4
    mov r5, sl
    ldr r4, .L0804BC04 @ =0x02019484
    ldr r7, .L0804BC08 @ =0x081D9AF0
    movs r6, #0xc
.L0804BBA0:
    ldrh r1, [r4]
    lsls r0, r1, #5
    adds r0, r0, r7
    adds r1, r5, #0
    movs r2, #8
    bl CpuFastSet
    adds r5, #0x20
    adds r4, #2
    subs r6, #1
    cmp r6, #0
    bge .L0804BBA0
    ldr r4, .L0804BC0C @ =0x081D9DF0
    mov r2, r8
    adds r0, r2, r4
    movs r1, #0xd0
    lsls r1, r1, #1
    add r1, sl
    movs r2, #8
    bl CpuFastSet
    add r4, sb
    movs r1, #0xe0
    lsls r1, r1, #1
    add r1, sl
    adds r0, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r1, .L0804BC10 @ =0x060020E0
    movs r2, #0xf0
    lsls r2, r2, #1
    mov r0, sl
    bl RegisterDataMove
    movs r0, #0
    ldr r3, [sp, #8]
    strh r0, [r3, #0x2c]
    ldr r0, .L0804BC14 @ =func_0804BC18
    str r0, [r3, #0xc]
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BC00: .4byte 0x0203E0D0
.L0804BC04: .4byte 0x02019484
.L0804BC08: .4byte 0x081D9AF0
.L0804BC0C: .4byte 0x081D9DF0
.L0804BC10: .4byte 0x060020E0
.L0804BC14: .4byte func_0804BC18
    func_end func_0804BA30

    thumb_func_start func_0804BC18
func_0804BC18: @ 0x0804BC18
    adds r2, r0, #0
    ldrh r1, [r2, #0x2c]
    adds r1, #1
    strh r1, [r2, #0x2c]
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xc
    ble .L0804BC38
    movs r0, #0
    strh r0, [r2, #0x2c]
    ldr r0, .L0804BC34 @ =func_0804BC64
    str r0, [r2, #0xc]
    b .L0804BC5E
    .align 2, 0
.L0804BC34: .4byte func_0804BC64
.L0804BC38:
    ldr r3, .L0804BC60 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x2d
    movs r0, #0
    strb r0, [r2]
    movs r2, #0x6c
    rsbs r2, r2, #0
    adds r0, r2, #0
    subs r0, r0, r1
    adds r2, r3, #0
    adds r2, #0x31
    strb r0, [r2]
    subs r2, #5
    movs r0, #0xf0
    strb r0, [r2]
    subs r1, #0x6c
    adds r0, r3, #0
    adds r0, #0x30
    strb r1, [r0]
.L0804BC5E:
    bx lr
    .align 2, 0
.L0804BC60: .4byte gDispIo
    func_end func_0804BC18

    thumb_func_start func_0804BC64
func_0804BC64: @ 0x0804BC64
    push {r4, lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xa
    ble .L0804BCC0
    ldr r2, .L0804BC88 @ =0x0203E0D4
    ldrh r3, [r2]
    movs r4, #0
    ldrsh r0, [r2, r4]
    cmp r0, #0
    beq .L0804BC90
    ldr r0, .L0804BC8C @ =0x0203E0D0
    ldrh r0, [r0]
    b .L0804BC9E
    .align 2, 0
.L0804BC88: .4byte 0x0203E0D4
.L0804BC8C: .4byte 0x0203E0D0
.L0804BC90:
    ldrh r3, [r2, #2]
    movs r4, #2
    ldrsh r0, [r2, r4]
    cmp r0, #0
    beq .L0804BCA4
    ldr r0, .L0804BCC8 @ =0x0203E0D0
    ldrh r0, [r0, #2]
.L0804BC9E:
    strh r0, [r1, #0x2c]
    adds r0, r0, r3
    strh r0, [r1, #0x2e]
.L0804BCA4:
    ldr r0, .L0804BCCC @ =func_0804BCD0
    str r0, [r1, #0xc]
    movs r4, #0xe5
    lsls r4, r4, #2
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    adds r0, r4, #0
    movs r1, #0x78
    movs r2, #0
    bl func_080676E8
.L0804BCC0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BCC8: .4byte 0x0203E0D0
.L0804BCCC: .4byte func_0804BCD0
    func_end func_0804BC64

    thumb_func_start func_0804BCD0
func_0804BCD0: @ 0x0804BCD0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r0, .L0804BD98 @ =0x02019484
    mov r8, r0
    movs r1, #0x80
    lsls r1, r1, #1
    add r1, r8
    mov sl, r1
    movs r2, #0x2c
    ldrsh r0, [r7, r2]
    movs r1, #0x64
    bl DivRem
    adds r5, r0, #0
    movs r1, #0xa
    bl Div
    adds r4, r0, #0
    lsls r0, r4, #2
    adds r0, r0, r4
    lsls r0, r0, #1
    subs r6, r5, r0
    cmp r4, #0
    bne .L0804BD0C
    movs r4, #0xa
.L0804BD0C:
    mov r0, r8
    adds r1, r5, #0
    bl func_08066D78
    lsls r4, r4, #5
    mov sb, r4
    lsls r6, r6, #5
    str r6, [sp]
    mov r6, sl
    mov r5, r8
    ldr r0, .L0804BD9C @ =0x081D9AF0
    mov r8, r0
    movs r4, #0xc
.L0804BD26:
    ldrh r1, [r5]
    lsls r0, r1, #5
    add r0, r8
    adds r1, r6, #0
    movs r2, #8
    bl CpuFastSet
    adds r6, #0x20
    adds r5, #2
    subs r4, #1
    cmp r4, #0
    bge .L0804BD26
    ldr r4, .L0804BDA0 @ =0x081D9DF0
    mov r2, sb
    adds r0, r2, r4
    movs r1, #0xd0
    lsls r1, r1, #1
    add r1, sl
    movs r2, #8
    bl CpuFastSet
    ldr r0, [sp]
    adds r4, r0, r4
    movs r1, #0xe0
    lsls r1, r1, #1
    add r1, sl
    adds r0, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r1, .L0804BDA4 @ =0x060020E0
    movs r2, #0xf0
    lsls r2, r2, #1
    mov r0, sl
    bl RegisterDataMove
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r7, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0804BD86
    movs r0, #0
    strh r0, [r7, #0x2c]
    ldr r0, .L0804BDA8 @ =func_0804BDAC
    str r0, [r7, #0xc]
.L0804BD86:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BD98: .4byte 0x02019484
.L0804BD9C: .4byte 0x081D9AF0
.L0804BDA0: .4byte 0x081D9DF0
.L0804BDA4: .4byte 0x060020E0
.L0804BDA8: .4byte func_0804BDAC
    func_end func_0804BCD0

    thumb_func_start func_0804BDAC
func_0804BDAC: @ 0x0804BDAC
    push {r4, lr}
    adds r4, r0, #0
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bne .L0804BDC0
    movs r0, #0xe5
    lsls r0, r0, #2
    bl func_0806767C
.L0804BDC0:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x1e
    ble .L0804BDD6
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, .L0804BDDC @ =func_0804BDE0
    str r0, [r4, #0xc]
.L0804BDD6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BDDC: .4byte func_0804BDE0
    func_end func_0804BDAC

    thumb_func_start func_0804BDE0
func_0804BDE0: @ 0x0804BDE0
    adds r1, r0, #0
    ldrh r2, [r1, #0x2c]
    adds r2, #1
    strh r2, [r1, #0x2c]
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xc
    ble .L0804BE00
    movs r0, #0
    strh r0, [r1, #0x2c]
    ldr r0, .L0804BDFC @ =func_0804BE2C
    str r0, [r1, #0xc]
    b .L0804BE26
    .align 2, 0
.L0804BDFC: .4byte func_0804BE2C
.L0804BE00:
    ldr r3, .L0804BE28 @ =gDispIo
    adds r1, r3, #0
    adds r1, #0x2d
    movs r0, #0
    strb r0, [r1]
    adds r0, r2, #0
    subs r0, #0x78
    adds r1, #4
    strb r0, [r1]
    subs r1, #5
    movs r0, #0xf0
    strb r0, [r1]
    movs r1, #0x60
    rsbs r1, r1, #0
    adds r0, r1, #0
    subs r0, r0, r2
    adds r1, r3, #0
    adds r1, #0x30
    strb r0, [r1]
.L0804BE26:
    bx lr
    .align 2, 0
.L0804BE28: .4byte gDispIo
    func_end func_0804BDE0

    thumb_func_start func_0804BE2C
func_0804BE2C: @ 0x0804BE2C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x18
    bne .L0804BE70
    ldr r2, .L0804BE54 @ =0x0203E0D4
    movs r1, #0
    ldrsh r0, [r2, r1]
    cmp r0, #0
    beq .L0804BE5C
    ldr r0, .L0804BE58 @ =0x0203E0D0
    movs r3, #0
    ldrsh r1, [r0, r3]
    movs r3, #0
    ldrsh r0, [r2, r3]
    b .L0804BE66
    .align 2, 0
.L0804BE54: .4byte 0x0203E0D4
.L0804BE58: .4byte 0x0203E0D0
.L0804BE5C:
    ldr r0, .L0804BEDC @ =0x0203E0D0
    movs r3, #2
    ldrsh r1, [r0, r3]
    movs r3, #2
    ldrsh r0, [r2, r3]
.L0804BE66:
    adds r1, r1, r0
    cmp r1, #0x63
    ble .L0804BE70
    bl func_0804C0B4
.L0804BE70:
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, #0x28
    ble .L0804BF08
    bl func_08050018
    movs r0, #0
    bl func_0804C48C
    ldr r3, .L0804BEE0 @ =gDispIo
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
    adds r1, r3, #0
    adds r1, #0x2d
    movs r0, #0
    strb r0, [r1]
    adds r1, #4
    strb r0, [r1]
    subs r1, #5
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    ldr r2, .L0804BEE4 @ =0x0203E0D4
    movs r3, #0
    ldrsh r0, [r2, r3]
    cmp r0, #0
    beq .L0804BEE8
    ldr r0, .L0804BEDC @ =0x0203E0D0
    movs r3, #0
    ldrsh r1, [r0, r3]
    movs r3, #0
    ldrsh r0, [r2, r3]
    b .L0804BEF2
    .align 2, 0
.L0804BEDC: .4byte 0x0203E0D0
.L0804BEE0: .4byte gDispIo
.L0804BEE4: .4byte 0x0203E0D4
.L0804BEE8:
    ldr r0, .L0804BEFC @ =0x0203E0D0
    movs r3, #2
    ldrsh r1, [r0, r3]
    movs r3, #2
    ldrsh r0, [r2, r3]
.L0804BEF2:
    adds r1, r1, r0
    cmp r1, #0x63
    ble .L0804BF04
    ldr r0, .L0804BF00 @ =func_0804BF14
    b .L0804BF06
    .align 2, 0
.L0804BEFC: .4byte 0x0203E0D0
.L0804BF00: .4byte func_0804BF14
.L0804BF04:
    ldr r0, .L0804BF10 @ =func_0804BF70
.L0804BF06:
    str r0, [r4, #0xc]
.L0804BF08:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BF10: .4byte func_0804BF70
    func_end func_0804BE2C

    thumb_func_start func_0804BF14
func_0804BF14: @ 0x0804BF14
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804BF28 @ =0x0203E0D4
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0804BF30
    ldr r0, .L0804BF2C @ =0x02000000
    ldr r0, [r0]
    b .L0804BF34
    .align 2, 0
.L0804BF28: .4byte 0x0203E0D4
.L0804BF2C: .4byte 0x02000000
.L0804BF30:
    ldr r0, .L0804BF44 @ =0x02000000
    ldr r0, [r0, #8]
.L0804BF34:
    bl func_08068F90
    ldr r0, .L0804BF48 @ =func_0804BF4C
    str r0, [r4, #0xc]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BF44: .4byte 0x02000000
.L0804BF48: .4byte func_0804BF4C
    func_end func_0804BF14

    thumb_func_start func_0804BF4C
func_0804BF4C: @ 0x0804BF4C
    push {r4, lr}
    adds r4, r0, #0
    bl func_08068AFC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804BF64
    bl func_08068B14
    ldr r0, .L0804BF6C @ =func_0804BF70
    str r0, [r4, #0xc]
.L0804BF64:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BF6C: .4byte func_0804BF70
    func_end func_0804BF4C

    thumb_func_start func_0804BF70
func_0804BF70: @ 0x0804BF70
    push {r4, lr}
    adds r4, r0, #0
    bl func_0806B40C
    ldr r0, .L0804BF84 @ =func_0804BF88
    str r0, [r4, #0xc]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BF84: .4byte func_0804BF88
    func_end func_0804BF70

    thumb_func_start func_0804BF88
func_0804BF88: @ 0x0804BF88
    push {r4, lr}
    adds r4, r0, #0
    bl func_0806B068
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804BFA0
    bl func_0806B07C
    ldr r0, .L0804BFA8 @ =func_0804BFAC
    str r0, [r4, #0xc]
.L0804BFA0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BFA8: .4byte func_0804BFAC
    func_end func_0804BF88

    thumb_func_start func_0804BFAC
func_0804BFAC: @ 0x0804BFAC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0804BFDC @ =0x02000000
    ldr r0, [r4]
    bl func_0804F794
    ldr r0, [r4, #8]
    bl func_0804F794
    bl func_0804FA98
    bl func_0804F46C
    ldr r0, .L0804BFE0 @ =0x0203E00C
    movs r1, #0
    ldrsh r0, [r0, r1]
    str r0, [r5, #0x44]
    movs r0, #0
    str r0, [r5, #0x48]
    ldr r0, .L0804BFE4 @ =func_0804BFE8
    str r0, [r5, #0xc]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804BFDC: .4byte 0x02000000
.L0804BFE0: .4byte 0x0203E00C
.L0804BFE4: .4byte func_0804BFE8
    func_end func_0804BFAC

    thumb_func_start func_0804BFE8
func_0804BFE8: @ 0x0804BFE8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x48]
    cmp r0, #2
    bne .L0804BFFC
    ldr r0, .L0804BFF8 @ =func_0804C078
    str r0, [r4, #0xc]
    b .L0804C04A
    .align 2, 0
.L0804BFF8: .4byte func_0804C078
.L0804BFFC:
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L0804C028
    ldr r0, .L0804C020 @ =0x02000000
    ldr r0, [r0]
    str r0, [r4, #0x5c]
    bl func_08064AB0
    cmp r0, #0
    beq .L0804C01A
    ldr r0, [r4, #0x5c]
    bl func_08064C40
    ldr r0, .L0804C024 @ =func_0804C058
    str r0, [r4, #0xc]
.L0804C01A:
    movs r0, #1
    b .L0804C042
    .align 2, 0
.L0804C020: .4byte 0x02000000
.L0804C024: .4byte func_0804C058
.L0804C028:
    ldr r0, .L0804C050 @ =0x02000000
    ldr r0, [r0, #8]
    str r0, [r4, #0x5c]
    bl func_08064AB0
    cmp r0, #0
    beq .L0804C040
    ldr r0, [r4, #0x5c]
    bl func_08064C40
    ldr r0, .L0804C054 @ =func_0804C058
    str r0, [r4, #0xc]
.L0804C040:
    movs r0, #0
.L0804C042:
    str r0, [r4, #0x44]
    ldr r0, [r4, #0x48]
    adds r0, #1
    str r0, [r4, #0x48]
.L0804C04A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804C050: .4byte 0x02000000
.L0804C054: .4byte func_0804C058
    func_end func_0804BFE8

    thumb_func_start func_0804C058
func_0804C058: @ 0x0804C058
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl func_08064BF4
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804C06E
    ldr r0, .L0804C074 @ =func_0804BFE8
    str r0, [r4, #0xc]
.L0804C06E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804C074: .4byte func_0804BFE8
    func_end func_0804C058

    thumb_func_start func_0804C078
func_0804C078: @ 0x0804C078
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0804C0A4 @ =0x02017724
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804C0A8 @ =0x0203E008
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804C09A
    movs r0, #2
    movs r1, #7
    movs r2, #0
    bl func_08051B80
    bl func_080680DC
.L0804C09A:
    ldr r0, .L0804C0AC @ =func_0804C0B0
    str r0, [r4, #0xc]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804C0A4: .4byte 0x02017724
.L0804C0A8: .4byte 0x0203E008
.L0804C0AC: .4byte func_0804C0B0
    func_end func_0804C078

    thumb_func_start func_0804C0B0
func_0804C0B0: @ 0x0804C0B0
    bx lr
    func_end func_0804C0B0
