    .include "asm_prelude.inc"

    thumb_func_start func_080200D8
func_080200D8: @ 0x080200D8
    push {r4, lr}
    adds r4, r0, #0
    bl GetGameTime
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    bne .L0802010C
    bl ColorFadeTick_thm
    ldr r0, .L08020114 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r0, [r0, #0x12]
    cmp r0, #5
    bne .L08020102
    bl ApplyFlamesWeatherGradient
.L08020102:
    bl EnableTilesetPalAnim
    adds r0, r4, #0
    bl Proc_Break
.L0802010C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08020114: .4byte gPlaySt
    func_end func_080200D8

    thumb_func_start func_08020118
func_08020118: @ 0x08020118
    adds r2, r0, #0
    movs r0, #0x2e
    str r0, [r2, #0x34]
    subs r0, #0x88
    str r0, [r2, #0x38]
    adds r0, #0x4a
    str r0, [r2, #0x3c]
    subs r0, #0x25
    str r0, [r2, #0x40]
    adds r1, r2, #0
    adds r1, #0x64
    ldr r0, .L08020148 @ =0x000004D2
    strh r0, [r1]
    adds r1, #2
    ldr r0, .L0802014C @ =0x0000162E
    strh r0, [r1]
    adds r1, #2
    ldr r0, .L08020150 @ =0x000018CA
    strh r0, [r1]
    adds r1, #2
    ldr r0, .L08020154 @ =0x00002158
    strh r0, [r1]
    bx lr
    .align 2, 0
.L08020148: .4byte 0x000004D2
.L0802014C: .4byte 0x0000162E
.L08020150: .4byte 0x000018CA
.L08020154: .4byte 0x00002158
    func_end func_08020118

    thumb_func_start func_08020158
func_08020158: @ 0x08020158
    push {r4, r5, r6, lr}
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x64
    ldrh r3, [r2, #0x34]
    ldrh r4, [r1]
    adds r0, r3, r4
    strh r0, [r1]
    adds r3, r2, #0
    adds r3, #0x66
    ldrh r5, [r2, #0x38]
    ldrh r6, [r3]
    adds r0, r5, r6
    strh r0, [r3]
    adds r4, r2, #0
    adds r4, #0x68
    ldrh r5, [r2, #0x3c]
    ldrh r6, [r4]
    adds r0, r5, r6
    strh r0, [r4]
    adds r5, r2, #0
    adds r5, #0x6a
    ldr r0, [r2, #0x40]
    ldrh r2, [r5]
    adds r0, r2, r0
    strh r0, [r5]
    movs r6, #0
    ldrsh r1, [r1, r6]
    rsbs r1, r1, #0
    lsls r1, r1, #8
    lsrs r1, r1, #0x10
    movs r0, #0
    ldrsh r2, [r3, r0]
    rsbs r2, r2, #0
    lsls r2, r2, #8
    lsrs r2, r2, #0x10
    movs r0, #2
    bl SetBgOffset
    movs r2, #0
    ldrsh r1, [r4, r2]
    rsbs r1, r1, #0
    lsls r1, r1, #8
    lsrs r1, r1, #0x10
    movs r3, #0
    ldrsh r2, [r5, r3]
    rsbs r2, r2, #0
    lsls r2, r2, #8
    lsrs r2, r2, #0x10
    movs r0, #3
    bl SetBgOffset
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08020158

    thumb_func_start func_080201C8
func_080201C8: @ 0x080201C8
    push {lr}
    ldr r0, .L08020204 @ =0x04000006
    ldrh r0, [r0]
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r1, #0xa0
    bls .L080201DA
    movs r1, #0
.L080201DA:
    cmp r1, #0x50
    bls .L080201E6
    movs r0, #0xa0
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
.L080201E6:
    adds r0, r1, #0
    movs r1, #3
    bl __udivsi3
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r1, #0x10
    bls .L080201F8
    movs r1, #0x10
.L080201F8:
    ldr r0, .L08020208 @ =0x04000052
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    pop {r0}
    bx r0
    .align 2, 0
.L08020204: .4byte 0x04000006
.L08020208: .4byte 0x04000052
    func_end func_080201C8

    thumb_func_start func_0802020C
func_0802020C: @ 0x0802020C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl LockBmDisplay
    movs r0, #0x2b
    movs r1, #0
    bl StartBgm
    ldr r4, .L08020320 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r4, #0xc]
    ands r0, r2
    strb r0, [r4, #0xc]
    adds r0, r1, #0
    ldrb r2, [r4, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r4, #0x10]
    ldrb r0, [r4, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r4, #0x14]
    movs r0, #3
    ldrb r1, [r4, #0x18]
    orrs r0, r1
    strb r0, [r4, #0x18]
    movs r0, #2
    movs r1, #0
    bl SetBgChrOffset
    movs r0, #3
    movs r1, #0
    bl SetBgChrOffset
    ldr r0, .L08020324 @ =0x08402250
    ldr r1, .L08020328 @ =0x06001000
    bl Decompress
    ldr r0, .L0802032C @ =0x084025A8
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08020330 @ =0x083FF780
    ldr r1, .L08020334 @ =0x06002000
    bl Decompress
    ldr r0, .L08020338 @ =0x08402588
    movs r1, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl ClearUi
    ldr r0, .L0802033C @ =0x02022EAE
    ldr r1, .L08020340 @ =0x084025C8
    movs r2, #0x80
    bl TmApplyTsa_thm
    bl PutScreenFogEffectOverlayed
    bl PutScreenFogEffect
    movs r0, #0xc
    bl EnableBgSync
    ldr r0, .L08020344 @ =func_080201C8
    bl SetOnHBlankA
    adds r2, r4, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r4, #0
    adds r1, #0x44
    movs r2, #0
    movs r0, #0xe
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x46
    strb r2, [r0]
    ldr r0, .L08020348 @ =0x0000FFE0
    ldrh r2, [r4, #0x3c]
    ands r0, r2
    movs r1, #4
    orrs r0, r1
    ldr r1, .L0802034C @ =0x0000E0FF
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r4, #0x3c]
    bl ColorFadeInit
    ldr r4, .L08020350 @ =gPal
    adds r0, r4, #0
    movs r1, #0
    movs r2, #1
    movs r3, #1
    bl func_080020F4
    adds r4, #0x80
    adds r0, r4, #0
    movs r1, #4
    movs r2, #1
    movs r3, #1
    bl func_080020F4
    adds r5, #0x4c
    movs r0, #0x15
    strh r0, [r5]
    movs r4, #9
.L0802030C:
    bl ColorFadeTick_thm
    subs r4, #1
    cmp r4, #0
    bge .L0802030C
    bl EnablePalSync
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08020320: .4byte gDispIo
.L08020324: .4byte 0x08402250
.L08020328: .4byte 0x06001000
.L0802032C: .4byte 0x084025A8
.L08020330: .4byte 0x083FF780
.L08020334: .4byte 0x06002000
.L08020338: .4byte 0x08402588
.L0802033C: .4byte 0x02022EAE
.L08020340: .4byte 0x084025C8
.L08020344: .4byte func_080201C8
.L08020348: .4byte 0x0000FFE0
.L0802034C: .4byte 0x0000E0FF
.L08020350: .4byte gPal
    func_end func_0802020C

    thumb_func_start func_08020354
func_08020354: @ 0x08020354
    push {r4, lr}
    adds r4, r0, #0
    bl GetGameTime
    movs r1, #7
    ands r1, r0
    cmp r1, #0
    bne .L08020382
    bl ColorFadeTick_thm
    bl EnablePalSync
    adds r1, r4, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L08020382
    adds r0, r4, #0
    bl Proc_Break
.L08020382:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08020354

    thumb_func_start func_08020388
func_08020388: @ 0x08020388
    adds r0, #0x4e
    ldr r1, .L08020390 @ =0x000005DC
    strh r1, [r0]
    bx lr
    .align 2, 0
.L08020390: .4byte 0x000005DC
    func_end func_08020388

    thumb_func_start func_08020394
func_08020394: @ 0x08020394
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x4e
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L080203B0
    adds r0, r4, #0
    movs r1, #0x63
    bl Proc_Goto
.L080203B0:
    ldr r0, .L080203CC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0xb
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080203C6
    adds r0, r4, #0
    movs r1, #0x63
    bl Proc_Goto
.L080203C6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080203CC: .4byte gpKeySt
    func_end func_08020394

    thumb_func_start func_080203D0
func_080203D0: @ 0x080203D0
    push {r4, r5, lr}
    bl ColorFadeInit
    ldr r4, .L08020404 @ =gPal
    movs r5, #1
    rsbs r5, r5, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #1
    adds r3, r5, #0
    bl func_080020F4
    adds r4, #0x80
    adds r0, r4, #0
    movs r1, #4
    movs r2, #1
    adds r3, r5, #0
    bl func_080020F4
    movs r0, #4
    bl FadeBgmOut
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08020404: .4byte gPal
    func_end func_080203D0

    thumb_func_start func_08020408
func_08020408: @ 0x08020408
    push {r4, lr}
    adds r4, r0, #0
    bl ColorFadeTick_thm
    bl EnablePalSync
    adds r1, r4, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x20
    bne .L0802042C
    adds r0, r4, #0
    bl Proc_Break
.L0802042C:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08020408

    thumb_func_start func_08020434
func_08020434: @ 0x08020434
    push {lr}
    movs r0, #0
    bl SetOnHBlankA
    movs r0, #0
    bl SetOnHBlankB
    ldr r2, .L08020470 @ =gDispIo
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
    ldr r1, .L08020474 @ =gPal
    movs r0, #0
    strh r0, [r1]
    bl EnablePalSync
    pop {r0}
    bx r0
    .align 2, 0
.L08020470: .4byte gDispIo
.L08020474: .4byte gPal
    func_end func_08020434

    thumb_func_start func_08020478
func_08020478: @ 0x08020478
    push {lr}
    adds r1, r0, #0
    cmp r1, #0
    beq .L0802048C
    ldr r0, .L08020488 @ =0x08B93B1C
    bl Proc_StartBlocking
    b .L08020494
    .align 2, 0
.L08020488: .4byte 0x08B93B1C
.L0802048C:
    ldr r0, .L08020498 @ =0x08B93B1C
    movs r1, #3
    bl Proc_Start
.L08020494:
    pop {r0}
    bx r0
    .align 2, 0
.L08020498: .4byte 0x08B93B1C
    func_end func_08020478

    thumb_func_start func_0802049C
func_0802049C: @ 0x0802049C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L08020540 @ =0x08199B34
    ldr r1, .L08020544 @ =0x06002000
    bl Decompress
    ldr r0, .L08020548 @ =0x0819B258
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0802054C @ =0x0819B278
    ldr r4, .L08020550 @ =0x0200323C
    adds r1, r4, #0
    bl Decompress
    movs r0, #0x84
    lsls r0, r0, #6
    adds r1, r0, #0
    movs r5, #0xd8
    lsls r5, r5, #2
.L080204C6:
    ldrh r2, [r4]
    adds r0, r1, r2
    strh r0, [r4]
    adds r4, #2
    subs r5, #1
    cmp r5, #0
    bne .L080204C6
    ldr r0, .L08020554 @ =gBg0Tm
    movs r1, #0x80
    lsls r1, r1, #1
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    ldr r0, .L08020558 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080204F8
    movs r0, #0xb6
    lsls r0, r0, #2
    bl m4aSongNumStart
.L080204F8:
    ldr r3, .L0802055C @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r5, [r0]
    ldr r0, .L08020560 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #1
    orrs r0, r1
    ldr r1, .L08020564 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    adds r0, r6, #0
    adds r0, #0x4c
    strh r5, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08020540: .4byte 0x08199B34
.L08020544: .4byte 0x06002000
.L08020548: .4byte 0x0819B258
.L0802054C: .4byte 0x0819B278
.L08020550: .4byte 0x0200323C
.L08020554: .4byte gBg0Tm
.L08020558: .4byte gPlaySt
.L0802055C: .4byte gDispIo
.L08020560: .4byte 0x0000FFE0
.L08020564: .4byte 0x0000E0FF
    func_end func_0802049C

    thumb_func_start func_08020568
func_08020568: @ 0x08020568
    push {r4, r5, r6, lr}
    sub sp, #0x34
    adds r6, r0, #0
    ldr r1, .L080205A4 @ =0x081C3BC4
    mov r0, sp
    movs r2, #0x34
    bl memcpy
    adds r0, r6, #0
    adds r0, #0x4c
    ldrh r1, [r0]
    adds r1, #1
    strh r1, [r0]
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r1, #3
    bl __divsi3
    lsls r0, r0, #0x10
    asrs r0, r0, #0xe
    add r0, sp
    ldrb r4, [r0]
    ldrb r5, [r0, #1]
    cmp r4, #0xff
    bne .L080205A8
    adds r0, r6, #0
    bl Proc_Break
    b .L080205CE
    .align 2, 0
.L080205A4: .4byte 0x081C3BC4
.L080205A8:
    cmp r4, #0x18
    bne .L080205B4
    cmp r5, #9
    bne .L080205B4
    bl RefreshUnitSprites
.L080205B4:
    lsls r0, r5, #5
    adds r0, r0, r4
    lsls r0, r0, #1
    ldr r1, .L080205D8 @ =0x0200323C
    adds r0, r0, r1
    ldr r1, .L080205DC @ =gBg0Tm
    movs r2, #8
    movs r3, #9
    bl TmCopyRect_thm
    movs r0, #1
    bl EnableBgSync
.L080205CE:
    add sp, #0x34
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080205D8: .4byte 0x0200323C
.L080205DC: .4byte gBg0Tm
    func_end func_08020568

    thumb_func_start func_080205E0
func_080205E0: @ 0x080205E0
    push {lr}
    ldr r3, .L08020614 @ =gDispIo
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
    ldr r0, .L08020618 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L08020614: .4byte gDispIo
.L08020618: .4byte gBg0Tm
    func_end func_080205E0

    thumb_func_start func_0802061C
func_0802061C: @ 0x0802061C
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    ldr r0, .L08020660 @ =0x08B93B74
    adds r1, r3, #0
    bl Proc_StartBlocking
    lsls r0, r4, #4
    ldr r2, .L08020664 @ =gBmSt
    movs r3, #0xc
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r4, r0, #0
    subs r4, #0x18
    lsls r0, r5, #4
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r5, r0, #0
    subs r5, #0x28
    rsbs r1, r4, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    rsbs r2, r5, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #0
    bl SetBgOffset
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08020660: .4byte 0x08B93B74
.L08020664: .4byte gBmSt
    func_end func_0802061C

    thumb_func_start func_08020668
func_08020668: @ 0x08020668
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L080206F8 @ =0x081B9BDC
    ldr r1, .L080206FC @ =0x06002000
    bl Decompress
    ldr r0, .L08020700 @ =0x081BABFC
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08020704 @ =0x081BA9C0
    ldr r4, .L08020708 @ =0x0200323C
    adds r1, r4, #0
    bl Decompress
    movs r0, #0x84
    lsls r0, r0, #6
    adds r1, r0, #0
    movs r5, #0x90
    lsls r5, r5, #2
.L08020692:
    ldrh r2, [r4]
    adds r0, r1, r2
    strh r0, [r4]
    adds r4, #2
    subs r5, #1
    cmp r5, #0
    bne .L08020692
    ldr r0, .L0802070C @ =gBg0Tm
    movs r1, #0x80
    lsls r1, r1, #1
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    ldr r3, .L08020710 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r5, [r0]
    ldr r0, .L08020714 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #1
    orrs r0, r1
    ldr r1, .L08020718 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    adds r0, r6, #0
    adds r0, #0x4c
    strh r5, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080206F8: .4byte 0x081B9BDC
.L080206FC: .4byte 0x06002000
.L08020700: .4byte 0x081BABFC
.L08020704: .4byte 0x081BA9C0
.L08020708: .4byte 0x0200323C
.L0802070C: .4byte gBg0Tm
.L08020710: .4byte gDispIo
.L08020714: .4byte 0x0000FFE0
.L08020718: .4byte 0x0000E0FF
    func_end func_08020668

    thumb_func_start func_0802071C
func_0802071C: @ 0x0802071C
    push {r4, lr}
    sub sp, #0x38
    adds r4, r0, #0
    ldr r1, .L08020754 @ =0x081C3BF8
    mov r0, sp
    movs r2, #0x38
    bl memcpy
    adds r0, r4, #0
    adds r0, #0x4c
    ldrh r1, [r0]
    adds r1, #1
    strh r1, [r0]
    movs r1, #0
    ldrsh r0, [r0, r1]
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    lsls r0, r0, #2
    add r0, sp
    ldrb r1, [r0]
    ldrb r0, [r0, #1]
    cmp r1, #0xff
    bne .L08020758
    adds r0, r4, #0
    bl Proc_Break
    b .L08020772
    .align 2, 0
.L08020754: .4byte 0x081C3BF8
.L08020758:
    lsls r0, r0, #5
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L0802077C @ =0x0200323C
    adds r0, r0, r1
    ldr r1, .L08020780 @ =gBg0Tm
    movs r2, #6
    movs r3, #6
    bl TmCopyRect_thm
    movs r0, #1
    bl EnableBgSync
.L08020772:
    add sp, #0x38
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802077C: .4byte 0x0200323C
.L08020780: .4byte gBg0Tm
    func_end func_0802071C

    thumb_func_start func_08020784
func_08020784: @ 0x08020784
    adds r0, #0x4c
    movs r1, #0x10
    strh r1, [r0]
    bx lr
    func_end func_08020784

    thumb_func_start func_0802078C
func_0802078C: @ 0x0802078C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L080207D8 @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r3, r5, #0
    adds r3, #0x4c
    ldrh r0, [r3]
    mov r1, ip
    adds r1, #0x44
    movs r2, #0
    strb r0, [r1]
    mov r4, ip
    adds r4, #0x45
    movs r1, #0x10
    strb r1, [r4]
    mov r1, ip
    adds r1, #0x46
    strb r2, [r1]
    subs r0, #1
    strh r0, [r3]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L080207D0
    adds r0, r5, #0
    bl Proc_Break
.L080207D0:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080207D8: .4byte gDispIo
    func_end func_0802078C

    thumb_func_start func_080207DC
func_080207DC: @ 0x080207DC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r1, .L08020838 @ =0x0203A3D8
    movs r0, #0x80
    lsls r0, r0, #2
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08020832
    ldr r0, .L0802083C @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r0, .L08020840 @ =0x08B93B94
    adds r1, r6, #0
    bl Proc_StartBlocking
    lsls r0, r4, #4
    ldr r2, .L08020844 @ =gBmSt
    movs r3, #0xc
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r4, r0, #0
    subs r4, #0x10
    lsls r0, r5, #4
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r5, r0, #0
    subs r5, #0x10
    rsbs r1, r4, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    rsbs r2, r5, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #0
    bl SetBgOffset
.L08020832:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08020838: .4byte 0x0203A3D8
.L0802083C: .4byte gActionSt
.L08020840: .4byte 0x08B93B94
.L08020844: .4byte gBmSt
    func_end func_080207DC

    thumb_func_start WarpEffect_Init
WarpEffect_Init: @ 0x08020848
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L08020900 @ =0x0819C848
    ldr r1, .L08020904 @ =0x06002000
    bl Decompress
    ldr r0, .L08020908 @ =0x0819CF90
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0802090C @ =0x0819CFB0
    ldr r4, .L08020910 @ =0x0200323C
    adds r1, r4, #0
    bl Decompress
    movs r0, #0xa2
    lsls r0, r0, #7
    adds r1, r0, #0
    movs r5, #0xd8
    lsls r5, r5, #2
.L08020872:
    ldrh r2, [r4]
    adds r0, r1, r2
    strh r0, [r4]
    adds r4, #2
    subs r5, #1
    cmp r5, #0
    bne .L08020872
    ldr r0, .L08020914 @ =gBg0Tm
    movs r1, #0x80
    lsls r1, r1, #1
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    ldr r0, .L08020918 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080208A2
    movs r0, #0xb4
    bl m4aSongNumStart
.L080208A2:
    ldr r3, .L0802091C @ =gDispIo
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
    movs r0, #0xa
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xc
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r5, [r0]
    ldr r0, .L08020920 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #1
    orrs r0, r1
    ldr r1, .L08020924 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
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
    adds r0, r6, #0
    adds r0, #0x4c
    strh r5, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08020900: .4byte 0x0819C848
.L08020904: .4byte 0x06002000
.L08020908: .4byte 0x0819CF90
.L0802090C: .4byte 0x0819CFB0
.L08020910: .4byte 0x0200323C
.L08020914: .4byte gBg0Tm
.L08020918: .4byte gPlaySt
.L0802091C: .4byte gDispIo
.L08020920: .4byte 0x0000FFE0
.L08020924: .4byte 0x0000E0FF
    func_end WarpEffect_Init

    thumb_func_start WarpEffect_Lop
WarpEffect_Lop: @ 0x08020928
    push {r4, r5, r6, lr}
    adds r3, r0, #0
    adds r0, #0x64
    movs r1, #0
    ldrsh r0, [r0, r1]
    ldr r4, .L08020984 @ =0x08B93C10
    cmp r0, #0
    bne .L0802093A
    ldr r4, .L08020988 @ =0x08B93BCC
.L0802093A:
    adds r0, r3, #0
    adds r0, #0x66
    movs r1, #0
    ldrsh r0, [r0, r1]
    adds r2, r3, #0
    adds r2, #0x4c
    cmp r0, #0
    beq .L0802095E
    ldr r0, .L0802098C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L0802095E
    ldrh r0, [r2]
    adds r0, #1
    strh r0, [r2]
.L0802095E:
    ldrh r6, [r2]
    adds r6, #1
    strh r6, [r2]
    movs r1, #0
    ldrsh r0, [r2, r1]
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    lsls r0, r0, #2
    adds r0, r0, r4
    ldrb r4, [r0]
    ldrb r5, [r0, #1]
    cmp r4, #0xff
    bne .L08020990
    adds r0, r3, #0
    bl Proc_Break
    b .L080209B6
    .align 2, 0
.L08020984: .4byte 0x08B93C10
.L08020988: .4byte 0x08B93BCC
.L0802098C: .4byte gpKeySt
.L08020990:
    lsls r0, r6, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    bne .L0802099C
    bl RefreshUnitSprites
.L0802099C:
    lsls r0, r5, #5
    adds r0, r0, r4
    lsls r0, r0, #1
    ldr r1, .L080209BC @ =0x0200323C
    adds r0, r0, r1
    ldr r1, .L080209C0 @ =gBg0Tm
    movs r2, #4
    movs r3, #7
    bl TmCopyRect_thm
    movs r0, #1
    bl EnableBgSync
.L080209B6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080209BC: .4byte 0x0200323C
.L080209C0: .4byte gBg0Tm
    func_end WarpEffect_Lop

    thumb_func_start WarpEffect_Finish
WarpEffect_Finish: @ 0x080209C4
    push {lr}
    ldr r0, .L080209EC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080209D8
    movs r0, #0xb5
    bl m4aSongNumStart
.L080209D8:
    ldr r0, .L080209F0 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L080209EC: .4byte gPlaySt
.L080209F0: .4byte gBg0Tm
    func_end WarpEffect_Finish

    thumb_func_start StartWarpEffect_080209F4
StartWarpEffect_080209F4: @ 0x080209F4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    adds r7, r1, #0
    mov r8, r2
    adds r4, r3, #0
    ldr r5, [sp, #0x18]
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    ldr r0, .L08020A5C @ =0x08B93C54
    adds r1, r6, #0
    bl Proc_Start
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    adds r1, r0, #0
    adds r1, #0x64
    strh r4, [r1]
    lsls r5, r5, #0x18
    asrs r5, r5, #0x18
    adds r0, #0x66
    strh r5, [r0]
    lsls r0, r7, #4
    ldr r2, .L08020A60 @ =gBmSt
    movs r3, #0xc
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r7, r0, #0
    subs r7, #8
    mov r1, r8
    lsls r0, r1, #4
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    subs r0, #0x20
    rsbs r1, r7, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    rsbs r2, r0, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #0
    bl SetBgOffset
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08020A5C: .4byte 0x08B93C54
.L08020A60: .4byte gBmSt
    func_end StartWarpEffect_080209F4

    thumb_func_start StartWarpEffect_08020A64
StartWarpEffect_08020A64: @ 0x08020A64
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    mov r8, r0
    adds r5, r1, #0
    adds r6, r2, #0
    lsls r4, r3, #0x18
    lsrs r4, r4, #0x18
    ldr r0, .L08020AB4 @ =0x08B93C54
    mov r1, r8
    bl Proc_Start
    adds r3, r0, #0
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    adds r0, #0x64
    strh r4, [r0]
    rsbs r5, r5, #0
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    rsbs r6, r6, #0
    lsls r6, r6, #0x10
    lsrs r6, r6, #0x10
    movs r0, #0
    adds r1, r5, #0
    adds r2, r6, #0
    str r3, [sp]
    bl SetBgOffset
    ldr r3, [sp]
    adds r3, #0x66
    movs r0, #1
    strh r0, [r3]
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08020AB4: .4byte 0x08B93C54
    func_end StartWarpEffect_08020A64

    thumb_func_start WarpEffectExists
WarpEffectExists: @ 0x08020AB8
    push {lr}
    ldr r0, .L08020ACC @ =0x08B93C54
    bl Proc_Find
    cmp r0, #0
    beq .L08020AC6
    movs r0, #1
.L08020AC6:
    pop {r1}
    bx r1
    .align 2, 0
.L08020ACC: .4byte 0x08B93C54
    func_end WarpEffectExists

    thumb_func_start func_08020AD0
func_08020AD0: @ 0x08020AD0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L08020B60 @ =0x0819B558
    ldr r1, .L08020B64 @ =0x06002000
    bl Decompress
    ldr r0, .L08020B68 @ =0x0819C56C
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08020B6C @ =0x0819C58C
    ldr r4, .L08020B70 @ =0x0200323C
    adds r1, r4, #0
    bl Decompress
    movs r0, #0x84
    lsls r0, r0, #6
    adds r1, r0, #0
    movs r5, #0xd8
    lsls r5, r5, #2
.L08020AFA:
    ldrh r2, [r4]
    adds r0, r1, r2
    strh r0, [r4]
    adds r4, #2
    subs r5, #1
    cmp r5, #0
    bne .L08020AFA
    ldr r0, .L08020B74 @ =gBg0Tm
    movs r1, #0x80
    lsls r1, r1, #1
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    ldr r3, .L08020B78 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r5, [r0]
    ldr r0, .L08020B7C @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #1
    orrs r0, r1
    ldr r1, .L08020B80 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    adds r0, r6, #0
    adds r0, #0x4c
    strh r5, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08020B60: .4byte 0x0819B558
.L08020B64: .4byte 0x06002000
.L08020B68: .4byte 0x0819C56C
.L08020B6C: .4byte 0x0819C58C
.L08020B70: .4byte 0x0200323C
.L08020B74: .4byte gBg0Tm
.L08020B78: .4byte gDispIo
.L08020B7C: .4byte 0x0000FFE0
.L08020B80: .4byte 0x0000E0FF
    func_end func_08020AD0

    thumb_func_start func_08020B84
func_08020B84: @ 0x08020B84
    push {r4, r5, r6, lr}
    sub sp, #0x38
    adds r6, r0, #0
    ldr r1, .L08020BC0 @ =0x081C3C30
    mov r0, sp
    movs r2, #0x38
    bl memcpy
    adds r0, r6, #0
    adds r0, #0x4c
    ldrh r1, [r0]
    adds r1, #1
    strh r1, [r0]
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r1, #3
    bl __divsi3
    lsls r0, r0, #0x10
    asrs r0, r0, #0xe
    add r0, sp
    ldrb r4, [r0]
    ldrb r5, [r0, #1]
    cmp r4, #0xff
    bne .L08020BC4
    adds r0, r6, #0
    bl Proc_Break
    b .L08020BEA
    .align 2, 0
.L08020BC0: .4byte 0x081C3C30
.L08020BC4:
    cmp r4, #0
    bne .L08020BD0
    cmp r5, #0x10
    bne .L08020BD0
    bl RefreshUnitSprites
.L08020BD0:
    lsls r0, r5, #5
    adds r0, r0, r4
    lsls r0, r0, #1
    ldr r1, .L08020BF4 @ =0x0200323C
    adds r0, r0, r1
    ldr r1, .L08020BF8 @ =gBg0Tm
    movs r2, #6
    movs r3, #8
    bl TmCopyRect_thm
    movs r0, #1
    bl EnableBgSync
.L08020BEA:
    add sp, #0x38
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08020BF4: .4byte 0x0200323C
.L08020BF8: .4byte gBg0Tm
    func_end func_08020B84

    thumb_func_start func_08020BFC
func_08020BFC: @ 0x08020BFC
    push {lr}
    ldr r0, .L08020C10 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L08020C10: .4byte gBg0Tm
    func_end func_08020BFC

    thumb_func_start func_08020C14
func_08020C14: @ 0x08020C14
    push {r4, r5, lr}
    adds r4, r1, #0
    adds r5, r2, #0
    ldr r0, .L08020C54 @ =0x08B93C7C
    movs r1, #3
    bl Proc_Start
    lsls r0, r4, #4
    ldr r2, .L08020C58 @ =gBmSt
    movs r3, #0xc
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r4, r0, #0
    subs r4, #0x10
    lsls r0, r5, #4
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r5, r0, #0
    subs r5, #0x28
    rsbs r1, r4, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    rsbs r2, r5, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #0
    bl SetBgOffset
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08020C54: .4byte 0x08B93C7C
.L08020C58: .4byte gBmSt
    func_end func_08020C14

    thumb_func_start func_08020C5C
func_08020C5C: @ 0x08020C5C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r7, r0, #0
    adds r2, r7, #0
    adds r2, #0x4c
    movs r0, #0
    ldrsh r1, [r2, r0]
    lsls r0, r1, #2
    adds r0, r0, r1
    movs r1, #0x40
    subs r1, r1, r0
    mov sb, r1
    movs r0, #0
    mov sl, r2
.L08020C7E:
    movs r6, #0
    lsls r5, r0, #3
    adds r1, r0, #1
    mov r8, r1
    lsls r0, r0, #6
    ldr r2, .L08020D14 @ =gBg0Tm
    adds r4, r0, r2
.L08020C8C:
    lsls r2, r6, #3
    ldr r1, [r7, #0x2c]
    subs r0, r1, r2
    cmp r0, #0
    bge .L08020C98
    subs r0, r2, r1
.L08020C98:
    ldr r2, [r7, #0x30]
    subs r1, r2, r5
    cmp r1, #0
    bge .L08020CA2
    subs r1, r5, r2
.L08020CA2:
    adds r2, r0, #0
    muls r2, r0, r2
    adds r0, r2, #0
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r0, r0, r1
    bl Sqrt
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    add r0, sb
    cmp r0, #0
    bge .L08020CC0
    adds r0, #3
.L08020CC0:
    asrs r1, r0, #2
    movs r0, #0xf
    subs r0, r0, r1
    cmp r0, #0xf
    ble .L08020CCC
    movs r0, #0xf
.L08020CCC:
    cmp r0, #0
    bge .L08020CD2
    movs r0, #0
.L08020CD2:
    movs r1, #0x84
    lsls r1, r1, #6
    adds r0, r0, r1
    strh r0, [r4]
    adds r4, #2
    adds r6, #1
    cmp r6, #0x1d
    ble .L08020C8C
    mov r0, r8
    cmp r0, #0x13
    ble .L08020C7E
    movs r0, #1
    bl EnableBgSync
    mov r2, sl
    ldrh r0, [r2]
    adds r0, #1
    strh r0, [r2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x46
    ble .L08020D04
    adds r0, r7, #0
    bl Proc_Break
.L08020D04:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08020D14: .4byte gBg0Tm
    func_end func_08020C5C

    thumb_func_start func_08020D18
func_08020D18: @ 0x08020D18
    push {lr}
    ldr r3, .L08020D60 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x80
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r1, r3, #0
    adds r1, #0x46
    movs r0, #0x10
    strb r0, [r1]
    ldr r0, .L08020D64 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #0x1f
    orrs r0, r1
    ldr r1, .L08020D68 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf8
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    bl ClearUi
    pop {r0}
    bx r0
    .align 2, 0
.L08020D60: .4byte gDispIo
.L08020D64: .4byte 0x0000FFE0
.L08020D68: .4byte 0x0000E0FF
    func_end func_08020D18

    thumb_func_start func_08020D6C
func_08020D6C: @ 0x08020D6C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    ldr r2, .L08020E18 @ =0x06002000
    movs r1, #0
    ldr r4, .L08020E1C @ =0x11111111
    movs r3, #0x1f
.L08020D7C:
    movs r0, #7
.L08020D7E:
    stm r2!, {r1}
    subs r0, #1
    cmp r0, #0
    bge .L08020D7E
    adds r1, r1, r4
    subs r3, #1
    cmp r3, #0
    bge .L08020D7C
    movs r3, #0
    ldr r0, .L08020E20 @ =gPal
    adds r4, r0, #0
    adds r4, #0x40
.L08020D96:
    lsls r0, r3, #1
    lsls r1, r3, #0xb
    lsls r2, r3, #6
    adds r1, r1, r2
    adds r1, r1, r0
    strh r1, [r4]
    adds r4, #2
    adds r3, #1
    cmp r3, #0xf
    ble .L08020D96
    movs r4, #0
    bl EnablePalSync
    ldr r3, .L08020E24 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r4, [r0]
    ldr r0, .L08020E28 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #1
    orrs r0, r1
    ldr r1, .L08020E2C @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl ClearUi
    movs r0, #0
    movs r1, #0
    bl SetBgChrOffset
    ldr r0, .L08020E30 @ =0x08B93CA4
    adds r1, r5, #0
    bl Proc_Start
    str r6, [r0, #0x2c]
    str r7, [r0, #0x30]
    adds r0, #0x4c
    strh r4, [r0]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08020E18: .4byte 0x06002000
.L08020E1C: .4byte 0x11111111
.L08020E20: .4byte gPal
.L08020E24: .4byte gDispIo
.L08020E28: .4byte 0x0000FFE0
.L08020E2C: .4byte 0x0000E0FF
.L08020E30: .4byte 0x08B93CA4
    func_end func_08020D6C

    thumb_func_start func_08020E34
func_08020E34: @ 0x08020E34
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0
    str r0, [r4, #0x34]
    str r0, [r4, #0x38]
    str r0, [r4, #0x3c]
    bl RandNextB
    ldr r1, .L08020E64 @ =0x000003FF
    ands r1, r0
    ldr r0, [r4, #0x14]
    adds r0, #0x64
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #4
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r0, r0, r2
    adds r1, r1, r0
    rsbs r1, r1, #0
    str r1, [r4, #0x40]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08020E64: .4byte 0x000003FF
    func_end func_08020E34

    thumb_func_start func_08020E68
func_08020E68: @ 0x08020E68
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x14]
    adds r0, #0x66
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08020E86
    bl GetGameTime
    movs r1, #3
    ands r1, r0
    cmp r1, #0
    bne .L08020EA2
.L08020E86:
    ldr r2, [r4, #0x34]
    ldr r0, [r4, #0x3c]
    adds r2, r2, r0
    str r2, [r4, #0x34]
    ldr r1, [r4, #0x38]
    ldr r0, [r4, #0x40]
    adds r1, r1, r0
    str r1, [r4, #0x38]
    ldr r0, [r4, #0x2c]
    adds r0, r0, r2
    str r0, [r4, #0x2c]
    ldr r0, [r4, #0x30]
    adds r0, r0, r1
    str r0, [r4, #0x30]
.L08020EA2:
    ldr r2, [r4, #0x30]
    cmp r2, #0
    bge .L08020EBA
    adds r0, r4, #0
    bl Proc_Break
    ldr r0, [r4, #0x14]
    adds r0, #0x4c
    ldrh r1, [r0]
    subs r1, #1
    strh r1, [r0]
    b .L08020ECE
.L08020EBA:
    movs r0, #0x2e
    ldrsh r1, [r4, r0]
    asrs r2, r2, #0x10
    ldr r3, .L08020ED8 @ =0x08B905B0
    movs r0, #0xa0
    lsls r0, r0, #4
    str r0, [sp]
    movs r0, #0xa
    bl PutSprite
.L08020ECE:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08020ED8: .4byte 0x08B905B0
    func_end func_08020E68

    thumb_func_start func_08020EDC
func_08020EDC: @ 0x08020EDC
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #4
    adds r5, r0, #0
    mov r8, r1
    mov sb, r3
    ldr r6, [sp, #0x1c]
    ldr r1, [r5]
    movs r4, #0x80
    lsls r4, r4, #1
    str r4, [sp]
    movs r0, #0
    adds r3, r6, #0
    bl Interpolate
    str r0, [r5]
    mov r0, r8
    ldr r1, [r0]
    str r4, [sp]
    movs r0, #0
    mov r2, sb
    adds r3, r6, #0
    bl Interpolate
    mov r1, r8
    str r0, [r1]
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08020EDC

    thumb_func_start func_08020F24
func_08020F24: @ 0x08020F24
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r6, r0, #0
    bl GetGameTime
    movs r1, #3
    ands r1, r0
    cmp r1, #0
    bne .L08020F40
    b .L0802106A
.L08020F40:
    movs r0, #0
    mov sb, r0
    adds r0, r6, #0
    adds r0, #0x4c
    movs r2, #0
    ldrsh r1, [r0, r2]
    mov r8, r0
    cmp r1, #0x28
    ble .L08020F54
    b .L0802106A
.L08020F54:
    movs r3, #0x64
    adds r3, r3, r6
    mov sl, r3
    mov r7, sl
.L08020F5C:
    ldr r0, .L08021020 @ =0x08B93CBC
    adds r1, r6, #0
    bl Proc_Start
    adds r5, r0, #0
    bl RandNextB
    ldr r1, [r6, #0x34]
    lsls r1, r1, #0x10
    ldr r4, .L08021024 @ =0x0000FFFF
    ands r0, r4
    lsls r0, r0, #4
    adds r1, r1, r0
    str r1, [r5, #0x2c]
    bl RandNextB
    ldr r1, [r6, #0x38]
    adds r1, #8
    lsls r1, r1, #0x10
    ands r0, r4
    lsls r0, r0, #3
    adds r1, r1, r0
    str r1, [r5, #0x30]
    adds r4, r5, #0
    adds r4, #0x2c
    adds r1, r5, #0
    adds r1, #0x30
    ldr r2, [r6, #0x3c]
    ldr r3, [r6, #0x40]
    movs r5, #0
    ldrsh r0, [r7, r5]
    movs r5, #0x80
    lsls r5, r5, #1
    cmp r0, r5
    ble .L08020FA6
    movs r0, #0x80
    lsls r0, r0, #1
.L08020FA6:
    str r0, [sp]
    adds r0, r4, #0
    bl func_08020EDC
    mov r2, r8
    ldrh r1, [r2]
    adds r1, #1
    strh r1, [r2]
    movs r3, #1
    add sb, r3
    mov r4, sb
    cmp r4, #0
    bgt .L08020FC8
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L08020F5C
.L08020FC8:
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    bgt .L0802106A
    ldr r0, .L08021020 @ =0x08B93CBC
    adds r1, r6, #0
    bl Proc_Start
    adds r5, r0, #0
    bl RandNextB
    ldr r1, [r6, #0x34]
    subs r1, #8
    lsls r1, r1, #0x10
    ldr r4, .L08021024 @ =0x0000FFFF
    ands r0, r4
    lsls r0, r0, #5
    adds r1, r1, r0
    str r1, [r5, #0x2c]
    bl RandNextB
    ldr r1, [r6, #0x38]
    adds r1, #8
    lsls r1, r1, #0x10
    ands r0, r4
    lsls r0, r0, #3
    adds r1, r1, r0
    str r1, [r5, #0x30]
    adds r7, r5, #0
    adds r7, #0x2c
    adds r1, r5, #0
    adds r1, #0x30
    ldr r2, [r6, #0x3c]
    ldr r3, [r6, #0x40]
    mov r5, sl
    movs r4, #0
    ldrsh r0, [r5, r4]
    movs r4, #0x80
    lsls r4, r4, #1
    cmp r0, r4
    bgt .L08021028
    str r0, [sp]
    b .L0802102A
    .align 2, 0
.L08021020: .4byte 0x08B93CBC
.L08021024: .4byte 0x0000FFFF
.L08021028:
    str r4, [sp]
.L0802102A:
    adds r0, r7, #0
    bl func_08020EDC
    mov r5, r8
    ldrh r0, [r5]
    adds r0, #1
    strh r0, [r5]
    mov r1, sl
    ldrh r2, [r1]
    movs r3, #0
    ldrsh r0, [r1, r3]
    cmp r0, #0
    blt .L0802104A
    adds r0, r2, #0
    adds r0, #8
    strh r0, [r1]
.L0802104A:
    mov r4, sl
    movs r5, #0
    ldrsh r1, [r4, r5]
    movs r0, #0xa0
    lsls r0, r0, #1
    cmp r1, r0
    ble .L0802106A
    adds r0, r6, #0
    bl Proc_Break
    movs r0, #0
    strh r0, [r4]
    adds r1, r6, #0
    adds r1, #0x66
    movs r0, #1
    strh r0, [r1]
.L0802106A:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08020F24

    thumb_func_start func_0802107C
func_0802107C: @ 0x0802107C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r5, #0x64
    movs r0, #0
    ldrsh r1, [r5, r0]
    movs r0, #0x10
    subs r4, r0, r1
    cmp r4, #0
    bge .L08021090
    movs r4, #0
.L08021090:
    ldr r3, .L080210D8 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x80
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r4, [r0]
    ldr r0, .L080210DC @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #0x1f
    orrs r0, r1
    ldr r1, .L080210E0 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xf8
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    ldrh r0, [r5]
    adds r0, #1
    strh r0, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080210D8: .4byte gDispIo
.L080210DC: .4byte 0x0000FFE0
.L080210E0: .4byte 0x0000E0FF
    func_end func_0802107C

    thumb_func_start func_080210E4
func_080210E4: @ 0x080210E4
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    adds r6, r0, #0
    mov r8, r1
    mov sb, r2
    adds r4, r3, #0
    ldr r5, [sp, #0x18]
    ldr r0, .L0802113C @ =0x08B93CEC
    ldr r1, .L08021140 @ =0x06014000
    movs r2, #0x20
    bl RegisterDataMove
    ldr r0, .L08021144 @ =0x08B93CD4
    adds r1, r6, #0
    bl Proc_Start
    adds r3, r0, #0
    mov r0, r8
    str r0, [r3, #0x34]
    mov r0, sb
    str r0, [r3, #0x38]
    lsls r4, r4, #0x10
    str r4, [r3, #0x3c]
    lsls r5, r5, #0x10
    str r5, [r3, #0x40]
    adds r0, r3, #0
    adds r0, #0x4c
    movs r2, #0
    strh r2, [r0]
    adds r1, r3, #0
    adds r1, #0x64
    ldr r0, .L08021148 @ =0x0000FFFF
    strh r0, [r1]
    adds r0, r3, #0
    adds r0, #0x66
    strh r2, [r0]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802113C: .4byte 0x08B93CEC
.L08021140: .4byte 0x06014000
.L08021144: .4byte 0x08B93CD4
.L08021148: .4byte 0x0000FFFF
    func_end func_080210E4

    thumb_func_start func_0802114C
func_0802114C: @ 0x0802114C
    push {lr}
    ldr r0, .L08021160 @ =0x08B93CD4
    bl Proc_Find
    adds r0, #0x64
    movs r1, #0
    strh r1, [r0]
    pop {r0}
    bx r0
    .align 2, 0
.L08021160: .4byte 0x08B93CD4
    func_end func_0802114C

    thumb_func_start func_08021164
func_08021164: @ 0x08021164
    push {lr}
    ldr r0, .L08021170 @ =0x08B93CD4
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08021170: .4byte 0x08B93CD4
    func_end func_08021164
