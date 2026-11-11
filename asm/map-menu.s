    .include "asm_prelude.inc"

    thumb_func_start func_08021540
func_08021540: @ 0x08021540
    movs r0, #0x17
    bx lr
    func_end func_08021540

    thumb_func_start func_08021544
func_08021544: @ 0x08021544
    ldr r1, .L08021554 @ =gPlaySt
    movs r0, #8
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08021558
    movs r0, #1
    b .L0802155A
    .align 2, 0
.L08021554: .4byte gPlaySt
.L08021558:
    movs r0, #2
.L0802155A:
    bx lr
    func_end func_08021544

    thumb_func_start func_0802155C
func_0802155C: @ 0x0802155C
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L0802156E
    bl func_080B2F28
    movs r0, #0x17
    b .L08021576
.L0802156E:
    ldr r1, .L0802157C @ =0x0000074D
    bl MenuFrozenHelpBox
    movs r0, #8
.L08021576:
    pop {r1}
    bx r1
    .align 2, 0
.L0802157C: .4byte 0x0000074D
    func_end func_0802155C

    thumb_func_start func_08021580
func_08021580: @ 0x08021580
    push {lr}
    ldr r0, .L08021590 @ =0x08B93374
    bl Proc_EndEach
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08021590: .4byte 0x08B93374
    func_end func_08021580

    thumb_func_start func_08021594
func_08021594: @ 0x08021594
    push {lr}
    ldr r0, .L080215AC @ =0x08B93374
    bl Proc_Find
    movs r1, #0xa
    bl Proc_Goto
    bl func_0808AAF4
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L080215AC: .4byte 0x08B93374
    func_end func_08021594

    thumb_func_start func_080215B0
func_080215B0: @ 0x080215B0
    push {lr}
    ldr r0, .L080215C0 @ =0x08CE5BF0
    movs r1, #3
    bl Proc_Start
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L080215C0: .4byte 0x08CE5BF0
    func_end func_080215B0

    thumb_func_start func_080215C4
func_080215C4: @ 0x080215C4
    push {lr}
    movs r0, #0
    bl func_08087190
    movs r0, #0x17
    pop {r1}
    bx r1
    func_end func_080215C4

    thumb_func_start func_080215D4
func_080215D4: @ 0x080215D4
    push {lr}
    ldr r0, .L080215F4 @ =gActiveUnit
    movs r1, #0
    str r1, [r0]
    ldr r0, .L080215F8 @ =gBmSt
    adds r0, #0x3e
    strb r1, [r0]
    ldr r0, .L080215FC @ =0x08B93374
    bl Proc_Find
    movs r1, #0xc
    bl Proc_Goto
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L080215F4: .4byte gActiveUnit
.L080215F8: .4byte gBmSt
.L080215FC: .4byte 0x08B93374
    func_end func_080215D4

    thumb_func_start func_08021600
func_08021600: @ 0x08021600
    push {lr}
    movs r0, #3
    bl func_080A4E0C
    movs r0, #0x17
    pop {r1}
    bx r1
    func_end func_08021600

    thumb_func_start func_08021610
func_08021610: @ 0x08021610
    movs r0, #0x17
    bx lr
    func_end func_08021610

    thumb_func_start func_08021614
func_08021614: @ 0x08021614
    push {r4, lr}
    adds r4, r0, #0
    bl GetTalkChoiceResult
    cmp r0, #1
    beq .L08021628
    adds r0, r4, #0
    movs r1, #0x63
    bl EventGotoLabel
.L08021628:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08021614

    thumb_func_start func_08021630
func_08021630: @ 0x08021630
    push {lr}
    ldr r0, .L08021640 @ =0x08B93DA4
    bl StartEvent
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08021640: .4byte 0x08B93DA4
    func_end func_08021630

    thumb_func_start func_08021644
func_08021644: @ 0x08021644
    ldr r1, .L08021650 @ =gActionSt
    movs r0, #1
    strb r0, [r1, #0x11]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L08021650: .4byte gActionSt
    func_end func_08021644

    thumb_func_start func_08021654
func_08021654: @ 0x08021654
    push {lr}
    bl func_0804AF00
    ldr r0, .L080216A0 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    bl ResetTextFont
    bl HideMoveRangeGraphics
    ldr r0, .L080216A4 @ =0x08B95AAC
    ldr r2, .L080216A8 @ =gBmSt
    movs r3, #0x1c
    ldrsh r1, [r2, r3]
    movs r3, #0xc
    ldrsh r2, [r2, r3]
    subs r1, r1, r2
    movs r2, #1
    movs r3, #0x16
    bl StartSemiCenteredOrphanMenu
    ldr r1, .L080216AC @ =gActiveUnit
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldrb r2, [r2, #0x11]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    bl EnsureCameraOntoPosition
    movs r0, #0x19
    pop {r1}
    bx r1
    .align 2, 0
.L080216A0: .4byte gBg2Tm
.L080216A4: .4byte 0x08B95AAC
.L080216A8: .4byte gBmSt
.L080216AC: .4byte gActiveUnit
    func_end func_08021654

    thumb_func_start func_080216B0
func_080216B0: @ 0x080216B0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r5, .L08021708 @ =gActiveUnit
    ldr r1, [r5]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl IsCameraNotWatchingPosition
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08021702
    ldr r0, [r5]
    movs r4, #0x11
    ldrsb r4, [r0, r4]
    ldr r0, .L0802170C @ =ProcScr_MoveCamera
    bl Proc_EndEach
    lsls r0, r4, #4
    bl GetCameraAdjustedY
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08021710 @ =gBmSt
    movs r3, #0x2a
    ldrsh r1, [r2, r3]
    cmp r0, r1
    ble .L080216F4
    ldrh r2, [r2, #0x2a]
    lsls r0, r2, #0x10
    asrs r0, r0, #0x14
    adds r4, r0, #2
.L080216F4:
    ldr r0, [r5]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    adds r0, r6, #0
    adds r2, r4, #0
    bl EnsureCameraOntoPosition
.L08021702:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08021708: .4byte gActiveUnit
.L0802170C: .4byte ProcScr_MoveCamera
.L08021710: .4byte gBmSt
    func_end func_080216B0

    thumb_func_start func_08021714
func_08021714: @ 0x08021714
    push {lr}
    ldr r0, .L08021730 @ =0x08B95AAC
    ldr r2, .L08021734 @ =gBmSt
    movs r3, #0x1c
    ldrsh r1, [r2, r3]
    movs r3, #0xc
    ldrsh r2, [r2, r3]
    subs r1, r1, r2
    movs r2, #1
    movs r3, #0x16
    bl StartSemiCenteredOrphanMenu
    pop {r0}
    bx r0
    .align 2, 0
.L08021730: .4byte 0x08B95AAC
.L08021734: .4byte gBmSt
    func_end func_08021714

    thumb_func_start func_08021738
func_08021738: @ 0x08021738
    push {lr}
    bl func_0804AF00
    ldr r0, .L08021764 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    bl HideMoveRangeGraphics
    bl ResetTextFont
    ldr r0, .L08021768 @ =0x08B93DDC
    movs r1, #3
    bl Proc_Start
    movs r0, #0x19
    pop {r1}
    bx r1
    .align 2, 0
.L08021764: .4byte gBg2Tm
.L08021768: .4byte 0x08B93DDC
    func_end func_08021738

    thumb_func_start func_0802176C
func_0802176C: @ 0x0802176C
    push {lr}
    ldr r0, .L080217A0 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    bl ResetTextFont
    ldr r0, .L080217A4 @ =0x08B95AAC
    ldr r2, .L080217A8 @ =gBmSt
    movs r3, #0x1c
    ldrsh r1, [r2, r3]
    movs r3, #0xc
    ldrsh r2, [r2, r3]
    subs r1, r1, r2
    movs r2, #1
    movs r3, #0x16
    bl StartSemiCenteredOrphanMenu
    bl HideMoveRangeGraphics
    movs r0, #0x3b
    pop {r1}
    bx r1
    .align 2, 0
.L080217A0: .4byte gBg2Tm
.L080217A4: .4byte 0x08B95AAC
.L080217A8: .4byte gBmSt
    func_end func_0802176C

    thumb_func_start func_080217AC
func_080217AC: @ 0x080217AC
    movs r0, #0
    bx lr
    func_end func_080217AC

    thumb_func_start func_080217B0
func_080217B0: @ 0x080217B0
    push {lr}
    ldr r0, .L080217DC @ =gActiveUnit
    ldr r2, [r0]
    ldr r1, [r2, #0xc]
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L080217E0
    movs r0, #0x81
    lsls r0, r0, #4
    ands r1, r0
    cmp r1, #0
    bne .L080217E0
    adds r0, r2, #0
    bl func_08023E38
    bl CountTargets
    cmp r0, #0
    beq .L080217E0
    movs r0, #1
    b .L080217E2
    .align 2, 0
.L080217DC: .4byte gActiveUnit
.L080217E0:
    movs r0, #3
.L080217E2:
    pop {r1}
    bx r1
    func_end func_080217B0

    thumb_func_start func_080217E8
func_080217E8: @ 0x080217E8
    push {lr}
    ldr r0, .L08021800 @ =gActiveUnit
    ldr r0, [r0]
    bl func_08023E38
    ldr r0, .L08021804 @ =0x08B95D18
    bl StartMapSelect
    movs r0, #7
    pop {r1}
    bx r1
    .align 2, 0
.L08021800: .4byte gActiveUnit
.L08021804: .4byte 0x08B95D18
    func_end func_080217E8

    thumb_func_start func_08021808
func_08021808: @ 0x08021808
    ldr r2, .L08021818 @ =gActionSt
    ldrb r0, [r1, #2]
    strb r0, [r2, #0xd]
    movs r0, #7
    strb r0, [r2, #0x11]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L08021818: .4byte gActionSt
    func_end func_08021808

    thumb_func_start func_0802181C
func_0802181C: @ 0x0802181C
    push {lr}
    ldr r0, .L08021848 @ =gActiveUnit
    ldr r2, [r0]
    ldr r1, [r2, #0xc]
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L0802184C
    movs r0, #0x10
    ands r1, r0
    cmp r1, #0
    beq .L0802184C
    adds r0, r2, #0
    bl func_08023EC4
    bl CountTargets
    cmp r0, #0
    beq .L0802184C
    movs r0, #1
    b .L0802184E
    .align 2, 0
.L08021848: .4byte gActiveUnit
.L0802184C:
    movs r0, #3
.L0802184E:
    pop {r1}
    bx r1
    func_end func_0802181C

    thumb_func_start func_08021854
func_08021854: @ 0x08021854
    push {lr}
    ldr r0, .L0802186C @ =gActiveUnit
    ldr r0, [r0]
    bl func_08023EC4
    ldr r0, .L08021870 @ =0x08B95CF8
    bl StartMapSelect
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L0802186C: .4byte gActiveUnit
.L08021870: .4byte 0x08B95CF8
    func_end func_08021854

    thumb_func_start func_08021874
func_08021874: @ 0x08021874
    ldr r2, .L08021890 @ =gActionSt
    movs r0, #8
    strb r0, [r2, #0x11]
    ldr r0, .L08021894 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0x1b]
    strb r0, [r2, #0xd]
    ldrb r0, [r1]
    strb r0, [r2, #0x13]
    ldrb r0, [r1, #1]
    strb r0, [r2, #0x14]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L08021890: .4byte gActionSt
.L08021894: .4byte gActiveUnit
    func_end func_08021874

    thumb_func_start func_08021898
func_08021898: @ 0x08021898
    push {lr}
    ldr r0, .L080218D0 @ =gActiveUnit
    ldr r3, [r0]
    ldr r2, [r3, #0xc]
    movs r0, #0x40
    ands r0, r2
    cmp r0, #0
    bne .L080218D8
    ldr r1, .L080218D4 @ =gBmSt
    adds r1, #0x3d
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L080218D8
    movs r0, #0x10
    ands r2, r0
    cmp r2, #0
    bne .L080218D8
    adds r0, r3, #0
    bl func_08023F64
    bl CountTargets
    cmp r0, #0
    beq .L080218D8
    movs r0, #1
    b .L080218DA
    .align 2, 0
.L080218D0: .4byte gActiveUnit
.L080218D4: .4byte gBmSt
.L080218D8:
    movs r0, #3
.L080218DA:
    pop {r1}
    bx r1
    func_end func_08021898

    thumb_func_start func_080218E0
func_080218E0: @ 0x080218E0
    push {lr}
    ldr r0, .L080218F8 @ =gActiveUnit
    ldr r0, [r0]
    bl func_08023F64
    ldr r0, .L080218FC @ =0x08B95CD8
    bl StartMapSelect
    movs r0, #7
    pop {r1}
    bx r1
    .align 2, 0
.L080218F8: .4byte gActiveUnit
.L080218FC: .4byte 0x08B95CD8
    func_end func_080218E0

    thumb_func_start func_08021900
func_08021900: @ 0x08021900
    push {lr}
    ldr r0, .L08021938 @ =gActiveUnit
    ldr r3, [r0]
    ldr r2, [r3, #0xc]
    movs r0, #0x40
    ands r0, r2
    cmp r0, #0
    bne .L08021940
    ldr r1, .L0802193C @ =gBmSt
    adds r1, #0x3d
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08021940
    movs r0, #0x10
    ands r2, r0
    cmp r2, #0
    beq .L08021940
    adds r0, r3, #0
    bl func_08024018
    bl CountTargets
    cmp r0, #0
    beq .L08021940
    movs r0, #1
    b .L08021942
    .align 2, 0
.L08021938: .4byte gActiveUnit
.L0802193C: .4byte gBmSt
.L08021940:
    movs r0, #3
.L08021942:
    pop {r1}
    bx r1
    func_end func_08021900

    thumb_func_start func_08021948
func_08021948: @ 0x08021948
    push {lr}
    ldr r0, .L08021960 @ =gActiveUnit
    ldr r0, [r0]
    bl func_08024018
    ldr r0, .L08021964 @ =0x08B95CB8
    bl StartMapSelect
    movs r0, #7
    pop {r1}
    bx r1
    .align 2, 0
.L08021960: .4byte gActiveUnit
.L08021964: .4byte 0x08B95CB8
    func_end func_08021948

    thumb_func_start func_08021968
func_08021968: @ 0x08021968
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldrb r0, [r4, #0x1b]
    bl GetUnit
    adds r6, r0, #0
    bl func_0803279C
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    movs r3, #0x11
    ldrsb r3, [r4, r3]
    bl func_0801D3DC
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_0801D4D0
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08021968

    thumb_func_start func_0802199C
func_0802199C: @ 0x0802199C
    push {r4, r5, lr}
    ldr r4, .L080219E8 @ =gActionSt
    movs r0, #9
    strb r0, [r4, #0x11]
    ldrb r0, [r1, #2]
    strb r0, [r4, #0xd]
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl UnitSyncMovement
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r5, #0
    bl func_08021968
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r5, #0
    bl UnitGive
    movs r0, #0x17
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080219E8: .4byte gActionSt
    func_end func_0802199C

    thumb_func_start func_080219EC
func_080219EC: @ 0x080219EC
    push {r4, r5, lr}
    ldr r4, .L08021A38 @ =gActionSt
    movs r0, #0xa
    strb r0, [r4, #0x11]
    ldrb r0, [r1, #2]
    strb r0, [r4, #0xd]
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl UnitSyncMovement
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r5, #0
    bl func_08021968
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r5, #0
    bl UnitGive
    movs r0, #0x17
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08021A38: .4byte gActionSt
    func_end func_080219EC

    thumb_func_start UnitAttackCommandEffect
UnitAttackCommandEffect: @ 0x08021A3C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r0, r4, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #2
    bne .L08021A5C
    ldr r1, .L08021A58 @ =0x00000742
    adds r0, r5, #0
    bl MenuFrozenHelpBox
    movs r0, #8
    b .L08021A90
    .align 2, 0
.L08021A58: .4byte 0x00000742
.L08021A5C:
    bl ClearIcons
    movs r0, #4
    bl ApplyIconPalettes
    ldr r0, .L08021A80 @ =gActiveUnit
    ldr r0, [r0]
    ldr r0, [r0, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08021A84
    adds r0, r5, #0
    adds r1, r4, #0
    bl StartFightItemReview
    b .L08021A8C
    .align 2, 0
.L08021A80: .4byte gActiveUnit
.L08021A84:
    adds r0, r5, #0
    adds r1, r4, #0
    bl StartFightBallistaReview
.L08021A8C:
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
.L08021A90:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end UnitAttackCommandEffect

    thumb_func_start StartFightBallistaReview
StartFightBallistaReview: @ 0x08021A98
    push {r4, r5, lr}
    sub sp, #4
    ldr r0, .L08021ADC @ =0x08B95A64
    bl StartMenu
    adds r5, r0, #0
    ldr r4, .L08021AE0 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    ldr r1, [r4]
    adds r0, r5, #0
    movs r2, #0xf
    movs r3, #0xb
    bl StartEquipInfoWindow
    movs r0, #0x17
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08021ADC: .4byte 0x08B95A64
.L08021AE0: .4byte gActiveUnit
    func_end StartFightBallistaReview

    thumb_func_start StartFightItemReview
StartFightItemReview: @ 0x08021AE4
    push {r4, r5, lr}
    sub sp, #4
    ldr r0, .L08021B2C @ =0x08B95A88
    bl StartMenu
    adds r5, r0, #0
    ldr r4, .L08021B30 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    ldr r1, [r4]
    adds r0, r5, #0
    movs r2, #0xf
    movs r3, #0xb
    bl StartEquipInfoWindow
    bl func_080790B8
    movs r0, #0x17
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08021B2C: .4byte 0x08B95A88
.L08021B30: .4byte gActiveUnit
    func_end StartFightItemReview

    thumb_func_start func_08021B34
func_08021B34: @ 0x08021B34
    push {r4, r5, lr}
    ldr r0, .L08021B70 @ =gBmMapMovement
    ldr r0, [r0]
    movs r5, #1
    rsbs r5, r5, #0
    adds r1, r5, #0
    bl BmMapFill
    ldr r0, .L08021B74 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r4, .L08021B78 @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08021B7C
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    movs r2, #1
    movs r3, #0xa
    bl func_0801B19C
    b .L08021B8C
    .align 2, 0
.L08021B70: .4byte gBmMapMovement
.L08021B74: .4byte gBmMapRange
.L08021B78: .4byte gActiveUnit
.L08021B7C:
    adds r0, r2, #0
    adds r1, r5, #0
    bl GetUnitWeaponReach
    adds r1, r0, #0
    ldr r0, [r4]
    bl BuildUnitStandingRangeForReach
.L08021B8C:
    movs r0, #3
    bl DisplayMoveRangeGraphics
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08021B34

    thumb_func_start func_08021B9C
func_08021B9C: @ 0x08021B9C
    push {lr}
    bl HideMoveRangeGraphics
    movs r0, #0
    pop {r1}
    bx r1
    func_end func_08021B9C

    thumb_func_start func_08021BA8
func_08021BA8: @ 0x08021BA8
    push {r4, r5, lr}
    ldr r5, .L08021BE8 @ =gActiveUnit
    ldr r0, [r5]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L08021BEC
    ldr r0, [r5]
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08021BEC
    ldr r0, [r5]
    adds r1, r4, #0
    bl ListAttackTargetsForWeapon
    bl CountTargets
    cmp r0, #0
    beq .L08021BEC
    movs r0, #1
    b .L08021BEE
    .align 2, 0
.L08021BE8: .4byte gActiveUnit
.L08021BEC:
    movs r0, #3
.L08021BEE:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08021BA8

    thumb_func_start func_08021BF4
func_08021BF4: @ 0x08021BF4
    push {r4, lr}
    ldr r4, .L08021C2C @ =gActiveUnit
    ldr r0, [r4]
    adds r1, #0x3c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl UnitEquipItemSlot
    ldr r1, .L08021C30 @ =gActionSt
    movs r0, #0
    strb r0, [r1, #0x12]
    bl ClearUi
    ldr r0, [r4]
    ldrh r1, [r0, #0x1e]
    bl ListAttackTargetsForWeapon
    ldr r0, .L08021C34 @ =0x08B95C98
    bl StartMapSelect
    bl func_080790BC
    movs r0, #0x27
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08021C2C: .4byte gActiveUnit
.L08021C30: .4byte gActionSt
.L08021C34: .4byte 0x08B95C98
    func_end func_08021BF4

    thumb_func_start func_08021C38
func_08021C38: @ 0x08021C38
    push {r4, r5, r6, lr}
    adds r5, r1, #0
    ldr r0, .L08021C80 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, #0x3c
    movs r2, #0
    ldrsb r2, [r1, r2]
    lsls r2, r2, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r4, [r1]
    adds r1, r4, #0
    bl CanUnitUseWeapon
    adds r2, r0, #0
    adds r0, r5, #0
    adds r0, #0x34
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    movs r1, #0x2c
    ldrsh r3, [r5, r1]
    lsls r3, r3, #5
    movs r6, #0x2a
    ldrsh r1, [r5, r6]
    adds r3, r3, r1
    lsls r3, r3, #1
    ldr r1, .L08021C84 @ =gBg0Tm
    adds r3, r3, r1
    adds r1, r4, #0
    bl func_08016470
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08021C80: .4byte gActiveUnit
.L08021C84: .4byte gBg0Tm
    func_end func_08021C38

    thumb_func_start func_08021C88
func_08021C88: @ 0x08021C88
    push {r4, r5, lr}
    adds r5, r1, #0
    adds r5, #0x3c
    movs r0, #0
    ldrsb r0, [r5, r0]
    bl func_0801DFC0
    ldr r0, .L08021CD0 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08021CD4 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r4, .L08021CD8 @ =gActiveUnit
    ldr r0, [r4]
    movs r1, #0
    ldrsb r1, [r5, r1]
    bl GetUnitWeaponReach
    adds r1, r0, #0
    ldr r0, [r4]
    bl BuildUnitStandingRangeForReach
    movs r0, #2
    bl DisplayMoveRangeGraphics
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08021CD0: .4byte gBmMapMovement
.L08021CD4: .4byte gBmMapRange
.L08021CD8: .4byte gActiveUnit
    func_end func_08021C88

    thumb_func_start func_08021CDC
func_08021CDC: @ 0x08021CDC
    push {lr}
    adds r0, #0x63
    movs r1, #4
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #0
    bne .L08021CEE
    bl HideMoveRangeGraphics
.L08021CEE:
    movs r0, #0
    pop {r1}
    bx r1
    func_end func_08021CDC

    thumb_func_start func_08021CF4
func_08021CF4: @ 0x08021CF4
    push {lr}
    ldr r2, .L08021D20 @ =gActionSt
    movs r0, #2
    strb r0, [r2, #0x11]
    ldrb r0, [r1, #2]
    strb r0, [r2, #0xd]
    movs r0, #2
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L08021D14
    ldrb r0, [r1]
    strb r0, [r2, #0x13]
    ldrb r0, [r1, #1]
    strb r0, [r2, #0x14]
    ldrb r0, [r1, #3]
    strb r0, [r2, #0x15]
.L08021D14:
    ldr r0, .L08021D24 @ =0x08B96D5C
    bl Proc_EndEach
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08021D20: .4byte gActionSt
.L08021D24: .4byte 0x08B96D5C
    func_end func_08021CF4

    thumb_func_start func_08021D28
func_08021D28: @ 0x08021D28
    push {lr}
    ldr r0, .L08021D40 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    movs r0, #0
    bl EnsureCameraOntoPosition
    pop {r0}
    bx r0
    .align 2, 0
.L08021D40: .4byte gActiveUnit
    func_end func_08021D28

    thumb_func_start GoToFightItemReview
GoToFightItemReview: @ 0x08021D44
    push {lr}
    movs r0, #0
    movs r1, #0
    bl UnitAttackCommandEffect
    pop {r0}
    bx r0
    func_end GoToFightItemReview

    thumb_func_start func_08021D54
func_08021D54: @ 0x08021D54
    push {lr}
    ldr r0, .L08021D64 @ =0x08B93E0C
    movs r1, #3
    bl Proc_Start
    movs r0, #0xb
    pop {r1}
    bx r1
    .align 2, 0
.L08021D64: .4byte 0x08B93E0C
    func_end func_08021D54

    thumb_func_start func_08021D68
func_08021D68: @ 0x08021D68
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r1, #0
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r5, r0, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L08021D9E
    ldr r1, .L08021DBC @ =gActionSt
    ldrb r0, [r4]
    strb r0, [r1, #0x13]
    ldrb r0, [r4, #1]
    strb r0, [r1, #0x14]
    ldrb r0, [r4, #3]
    strb r0, [r1, #0x15]
    bl func_0802A254
.L08021D9E:
    ldr r1, .L08021DBC @ =gActionSt
    ldrb r0, [r1, #0x12]
    cmp r0, #8
    bne .L08021DC4
    ldr r0, .L08021DC0 @ =gActiveUnit
    ldr r0, [r0]
    movs r2, #0x10
    ldrsb r2, [r0, r2]
    movs r3, #0x11
    ldrsb r3, [r0, r3]
    adds r1, r5, #0
    bl BattleGenerateBallistaSimulation
    b .L08021DD8
    .align 2, 0
.L08021DBC: .4byte gActionSt
.L08021DC0: .4byte gActiveUnit
.L08021DC4:
    ldr r0, .L08021DE8 @ =gActiveUnit
    ldr r0, [r0]
    movs r3, #1
    rsbs r3, r3, #0
    ldrb r1, [r1, #0x12]
    str r1, [sp]
    adds r1, r5, #0
    adds r2, r3, #0
    bl BattleGenerateSimulation
.L08021DD8:
    bl func_08034164
    movs r0, #0
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08021DE8: .4byte gActiveUnit
    func_end func_08021D68

    thumb_func_start func_08021DEC
func_08021DEC: @ 0x08021DEC
    push {lr}
    ldr r0, .L08021E0C @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    bl HideMoveRangeGraphics
    bl func_0803418C
    movs r0, #0
    pop {r1}
    bx r1
    .align 2, 0
.L08021E0C: .4byte gBg2Tm
    func_end func_08021DEC

    thumb_func_start AnyMenu_Trade_Available
AnyMenu_Trade_Available: @ 0x08021E10
    push {lr}
    ldr r0, .L08021E54 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08021E5C
    ldr r1, .L08021E58 @ =gBmSt
    adds r1, #0x3d
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08021E5C
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L08021E5C
    adds r0, r2, #0
    bl ListTradeTargets
    bl CountTargets
    cmp r0, #0
    beq .L08021E5C
    movs r0, #1
    b .L08021E5E
    .align 2, 0
.L08021E54: .4byte gActiveUnit
.L08021E58: .4byte gBmSt
.L08021E5C:
    movs r0, #3
.L08021E5E:
    pop {r1}
    bx r1
    func_end AnyMenu_Trade_Available

    thumb_func_start UnitActionMenu_Trade_Select
UnitActionMenu_Trade_Select: @ 0x08021E64
    push {lr}
    bl ClearUi
    ldr r0, .L08021E80 @ =gActiveUnit
    ldr r0, [r0]
    bl ListTradeTargets
    ldr r0, .L08021E84 @ =0x08B95C78
    bl StartMapSelect
    movs r0, #7
    pop {r1}
    bx r1
    .align 2, 0
.L08021E80: .4byte gActiveUnit
.L08021E84: .4byte 0x08B95C78
    func_end UnitActionMenu_Trade_Select

    thumb_func_start TradeMapSelect_Select
TradeMapSelect_Select: @ 0x08021E88
    push {r4, lr}
    ldr r2, .L08021EB0 @ =gActionSt
    movs r0, #0x1a
    strb r0, [r2, #0x11]
    ldr r0, .L08021EB4 @ =gActiveUnit
    ldr r4, [r0]
    movs r0, #2
    ldrsb r0, [r1, r0]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #0
    bl func_0802B678
    movs r0, #0x17
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08021EB0: .4byte gActionSt
.L08021EB4: .4byte gActiveUnit
    func_end TradeMapSelect_Select

    thumb_func_start UnitActionMenu_Seize_Available
UnitActionMenu_Seize_Available: @ 0x08021EB8
    push {r4, lr}
    ldr r4, .L08021ED8 @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08021ED4
    adds r0, r2, #0
    bl IsUnitCurrentMainLord
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08021EDC
.L08021ED4:
    movs r0, #3
    b .L08021EF6
    .align 2, 0
.L08021ED8: .4byte gActiveUnit
.L08021EDC:
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078BD0
    movs r1, #3
    cmp r0, #0xf
    bne .L08021EF4
    movs r1, #1
.L08021EF4:
    adds r0, r1, #0
.L08021EF6:
    pop {r4}
    pop {r1}
    bx r1
    func_end UnitActionMenu_Seize_Available

    thumb_func_start UnitActionMenu_Seize_Select
UnitActionMenu_Seize_Select: @ 0x08021EFC
    ldr r1, .L08021F14 @ =gActionSt
    movs r0, #0xf
    strb r0, [r1, #0x11]
    ldr r0, .L08021F18 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    orrs r0, r1
    str r0, [r2, #0xc]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L08021F14: .4byte gActionSt
.L08021F18: .4byte gActiveUnit
    func_end UnitActionMenu_Seize_Select

    thumb_func_start func_08021F1C
func_08021F1C: @ 0x08021F1C
    push {r4, lr}
    ldr r0, .L08021F6C @ =gActiveUnit
    ldr r3, [r0]
    ldr r1, [r3, #0xc]
    movs r2, #0x40
    ands r1, r2
    adds r4, r0, #0
    cmp r1, #0
    bne .L08021F68
    movs r0, #0x11
    ldrsb r0, [r3, r0]
    ldr r1, .L08021F70 @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r3, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #3
    beq .L08021F54
    cmp r0, #5
    beq .L08021F54
    cmp r0, #0x38
    beq .L08021F54
    cmp r0, #0x37
    bne .L08021F68
.L08021F54:
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078BD0
    cmp r0, #0xe
    beq .L08021F74
.L08021F68:
    movs r0, #3
    b .L08021F86
    .align 2, 0
.L08021F6C: .4byte gActiveUnit
.L08021F70: .4byte gBmMapTerrain
.L08021F74:
    ldr r0, [r4]
    bl IsUnitMagicSealed
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08021F84
    movs r0, #1
    b .L08021F86
.L08021F84:
    movs r0, #2
.L08021F86:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08021F1C

    thumb_func_start func_08021F8C
func_08021F8C: @ 0x08021F8C
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L08021FA4
    ldr r1, .L08021FA0 @ =gActionSt
    movs r0, #0xe
    strb r0, [r1, #0x11]
    movs r0, #0x17
    b .L08021FAC
    .align 2, 0
.L08021FA0: .4byte gActionSt
.L08021FA4:
    ldr r1, .L08021FB0 @ =0x00000736
    bl MenuFrozenHelpBox
    movs r0, #8
.L08021FAC:
    pop {r1}
    bx r1
    .align 2, 0
.L08021FB0: .4byte 0x00000736
    func_end func_08021F8C

    thumb_func_start func_08021FB4
func_08021FB4: @ 0x08021FB4
    push {r4, r5, r6, lr}
    ldr r6, .L08021FD8 @ =gActiveUnit
    ldr r2, [r6]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022012
    adds r0, r2, #0
    bl func_08024478
    bl CountTargets
    cmp r0, #0
    beq .L08021FDC
.L08021FD2:
    movs r0, #1
    b .L08022014
    .align 2, 0
.L08021FD8: .4byte gActiveUnit
.L08021FDC:
    movs r5, #0
    ldr r0, [r6]
    ldrh r4, [r0, #0x1e]
    cmp r4, #0
    beq .L08022012
.L08021FE6:
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #0xc
    bne .L08021FFE
    ldr r0, [r6]
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08021FD2
.L08021FFE:
    adds r5, #1
    cmp r5, #4
    bgt .L08022012
    ldr r0, [r6]
    lsls r1, r5, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L08021FE6
.L08022012:
    movs r0, #3
.L08022014:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08021FB4

    thumb_func_start func_0802201C
func_0802201C: @ 0x0802201C
    push {lr}
    adds r3, r0, #0
    ldr r0, .L08022048 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08022050
    ldr r1, .L0802204C @ =gBmSt
    movs r0, #0x9e
    strh r0, [r1, #0x2c]
    adds r0, r3, #0
    bl func_08021FB4
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b .L08022052
    .align 2, 0
.L08022048: .4byte gActiveUnit
.L0802204C: .4byte gBmSt
.L08022050:
    movs r0, #3
.L08022052:
    pop {r1}
    bx r1
    func_end func_0802201C

    thumb_func_start func_08022058
func_08022058: @ 0x08022058
    push {lr}
    adds r3, r0, #0
    ldr r0, .L08022084 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L0802208C
    ldr r1, .L08022088 @ =gBmSt
    movs r0, #0x9d
    strh r0, [r1, #0x2c]
    adds r0, r3, #0
    bl func_08021FB4
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b .L0802208E
    .align 2, 0
.L08022084: .4byte gActiveUnit
.L08022088: .4byte gBmSt
.L0802208C:
    movs r0, #3
.L0802208E:
    pop {r1}
    bx r1
    func_end func_08022058

    thumb_func_start func_08022094
func_08022094: @ 0x08022094
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov sb, r0
    mov sl, r1
    movs r7, #0
    ldr r6, .L0802210C @ =gActiveUnit
    ldr r0, [r6]
    bl func_08024478
    bl CountTargets
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r1, r1, #0x1f
    mov r8, r1
    movs r5, #0
    ldr r0, [r6]
    ldrh r4, [r0, #0x1e]
    cmp r4, #0
    beq .L080220F2
.L080220C4:
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #0xc
    bne .L080220DE
    ldr r0, [r6]
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080220DE
    movs r7, #1
.L080220DE:
    adds r5, #1
    cmp r5, #4
    bgt .L080220F2
    ldr r0, [r6]
    lsls r1, r5, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L080220C4
.L080220F2:
    mov r0, r8
    cmp r0, #0
    beq .L08022110
    cmp r7, #0
    bne .L08022110
    mov r0, sb
    mov r1, sl
    bl func_080236C0
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b .L08022150
    .align 2, 0
.L0802210C: .4byte gActiveUnit
.L08022110:
    ldr r0, .L08022160 @ =0x08B959F8
    bl StartMenu
    adds r5, r0, #0
    ldr r4, .L08022164 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    ldr r1, [r4]
    adds r0, r5, #0
    movs r2, #0xf
    movs r3, #0xb
    bl StartEquipInfoWindow
    bl ClearIcons
    movs r0, #4
    bl ApplyIconPalettes
    movs r0, #0x17
.L08022150:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08022160: .4byte 0x08B959F8
.L08022164: .4byte gActiveUnit
    func_end func_08022094

    thumb_func_start func_08022168
func_08022168: @ 0x08022168
    ldr r2, .L08022178 @ =gActionSt
    movs r0, #4
    strb r0, [r2, #0x11]
    ldrb r0, [r1, #2]
    strb r0, [r2, #0xd]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L08022178: .4byte gActionSt
    func_end func_08022168

    thumb_func_start func_0802217C
func_0802217C: @ 0x0802217C
    ldr r0, .L08022194 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022198
    ldrh r0, [r2, #0x1e]
    cmp r0, #0
    beq .L08022198
    movs r0, #1
    b .L0802219A
    .align 2, 0
.L08022194: .4byte gActiveUnit
.L08022198:
    movs r0, #3
.L0802219A:
    bx lr
    func_end func_0802217C

    thumb_func_start func_0802219C
func_0802219C: @ 0x0802219C
    push {r4, r5, lr}
    sub sp, #4
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #1
    bne .L080221F8
    bl ClearIcons
    movs r0, #4
    bl ApplyIconPalettes
    bl ResetTextFont
    ldr r0, .L080221F0 @ =0x08B95A40
    bl StartMenu
    adds r5, r0, #0
    ldr r4, .L080221F4 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    ldr r1, [r4]
    adds r0, r5, #0
    movs r2, #0xf
    movs r3, #0xb
    bl StartEquipInfoWindow
    movs r0, #0x17
    b .L080221FA
    .align 2, 0
.L080221F0: .4byte 0x08B95A40
.L080221F4: .4byte gActiveUnit
.L080221F8:
    movs r0, #0
.L080221FA:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0802219C

    thumb_func_start func_08022204
func_08022204: @ 0x08022204
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r7, .L0802223C @ =gActiveUnit
    ldr r1, [r7]
    adds r0, r4, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #1
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r5, [r1]
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L08022240
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08021C38
    movs r0, #0
    b .L08022280
    .align 2, 0
.L0802223C: .4byte gActiveUnit
.L08022240:
    adds r0, r5, #0
    bl GetItemType
    cmp r0, #0xc
    bne .L0802224E
    movs r2, #0
    b .L0802225A
.L0802224E:
    ldr r0, [r7]
    adds r1, r5, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
.L0802225A:
    adds r0, r4, #0
    adds r0, #0x34
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    movs r1, #0x2c
    ldrsh r3, [r4, r1]
    lsls r3, r3, #5
    movs r6, #0x2a
    ldrsh r1, [r4, r6]
    adds r3, r3, r1
    lsls r3, r3, #1
    ldr r1, .L08022288 @ =gBg0Tm
    adds r3, r3, r1
    adds r1, r5, #0
    bl func_08016470
    movs r0, #1
    bl EnableBgSync
.L08022280:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08022288: .4byte gBg0Tm
    func_end func_08022204

    thumb_func_start func_0802228C
func_0802228C: @ 0x0802228C
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r7, .L080222A8 @ =gActiveUnit
    ldr r0, [r7]
    lsls r1, r5, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L080222AC
    movs r0, #3
    b .L080222D6
    .align 2, 0
.L080222A8: .4byte gActiveUnit
.L080222AC:
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L080222C2
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08021BA8
.L080222C2:
    ldr r0, [r7]
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    movs r1, #2
    cmp r0, #0
    beq .L080222D4
    movs r1, #1
.L080222D4:
    adds r0, r1, #0
.L080222D6:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802228C

    thumb_func_start func_080222DC
func_080222DC: @ 0x080222DC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r2, .L08022334 @ =gActionSt
    adds r0, r1, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    strb r0, [r2, #0x12]
    ldrh r0, [r1, #0x2a]
    adds r0, #9
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r2, .L08022338 @ =0xFFFFFF00
    ands r5, r2
    orrs r5, r0
    ldrh r0, [r1, #0x2c]
    subs r0, #1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x10
    ldr r1, .L0802233C @ =0xFFFF00FF
    ands r5, r1
    orrs r5, r0
    ldr r0, .L08022340 @ =0xFF00FFFF
    ands r5, r0
    movs r0, #0xc0
    lsls r0, r0, #0xb
    orrs r5, r0
    ldr r0, .L08022344 @ =0x00FFFFFF
    ands r5, r0
    lsls r0, r5, #0x18
    asrs r0, r0, #0x18
    lsls r1, r5, #0x10
    asrs r1, r1, #0x18
    bl func_08022360
    ldr r0, .L08022348 @ =0x08B959D4
    adds r1, r5, #0
    adds r2, r4, #0
    bl StartMenuExt
    movs r0, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08022334: .4byte gActionSt
.L08022338: .4byte 0xFFFFFF00
.L0802233C: .4byte 0xFFFF00FF
.L08022340: .4byte 0xFF00FFFF
.L08022344: .4byte 0x00FFFFFF
.L08022348: .4byte 0x08B959D4
    func_end func_080222DC

    thumb_func_start func_0802234C
func_0802234C: @ 0x0802234C
    push {lr}
    adds r1, #0x3c
    movs r0, #0
    ldrsb r0, [r1, r0]
    bl func_0801DFC0
    pop {r1}
    bx r1
    func_end func_0802234C

    thumb_func_start func_0802235C
func_0802235C: @ 0x0802235C
    bx lr
    func_end func_0802235C

    thumb_func_start func_08022360
func_08022360: @ 0x08022360
    push {lr}
    ldr r0, .L0802238C @ =0x02002774
    ldr r1, .L08022390 @ =0x06004000
    movs r2, #0x80
    lsls r2, r2, #2
    movs r3, #0
    bl InitTextFont
    ldr r0, .L08022394 @ =0x02022CB6
    ldr r1, .L08022398 @ =0x0200323C
    movs r2, #9
    movs r3, #0x13
    bl TmCopyRect_thm
    ldr r0, .L0802239C @ =0x020234B6
    ldr r1, .L080223A0 @ =0x0200373C
    movs r2, #9
    movs r3, #0x13
    bl TmCopyRect_thm
    pop {r0}
    bx r0
    .align 2, 0
.L0802238C: .4byte 0x02002774
.L08022390: .4byte 0x06004000
.L08022394: .4byte 0x02022CB6
.L08022398: .4byte 0x0200323C
.L0802239C: .4byte 0x020234B6
.L080223A0: .4byte 0x0200373C
    func_end func_08022360

    thumb_func_start func_080223A4
func_080223A4: @ 0x080223A4
    push {lr}
    movs r0, #0
    bl SetTextFont
    pop {r0}
    bx r0
    func_end func_080223A4

    thumb_func_start func_080223B0
func_080223B0: @ 0x080223B0
    push {lr}
    movs r0, #0
    bl SetTextFont
    ldr r0, .L080223DC @ =0x0200323C
    ldr r1, .L080223E0 @ =0x02022CB6
    movs r2, #9
    movs r3, #0x13
    bl TmCopyRect_thm
    ldr r0, .L080223E4 @ =0x0200373C
    ldr r1, .L080223E8 @ =0x020234B6
    movs r2, #9
    movs r3, #0x13
    bl TmCopyRect_thm
    movs r0, #3
    bl EnableBgSync
    movs r0, #0xb
    pop {r1}
    bx r1
    .align 2, 0
.L080223DC: .4byte 0x0200323C
.L080223E0: .4byte 0x02022CB6
.L080223E4: .4byte 0x0200373C
.L080223E8: .4byte 0x020234B6
    func_end func_080223B0

    thumb_func_start func_080223EC
func_080223EC: @ 0x080223EC
    push {lr}
    movs r0, #0
    bl SetTextFont
    bl ResetTextFont
    bl func_0804A490
    movs r0, #0x31
    pop {r1}
    bx r1
    func_end func_080223EC

    thumb_func_start func_08022404
func_08022404: @ 0x08022404
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_080223EC
    adds r0, r4, #0
    bl func_080223B0
    ldr r0, .L08022454 @ =0x08B95A40
    bl StartMenu
    adds r5, r0, #0
    ldr r4, .L08022458 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    ldr r1, [r4]
    adds r0, r5, #0
    movs r2, #0xf
    movs r3, #0xb
    bl StartEquipInfoWindow
    movs r0, #1
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08022454: .4byte 0x08B95A40
.L08022458: .4byte gActiveUnit
    func_end func_08022404

    thumb_func_start func_0802245C
func_0802245C: @ 0x0802245C
    push {r4, r5, r6, lr}
    sub sp, #4
    bl func_080223EC
    ldr r6, .L080224E4 @ =gActiveUnit
    ldr r0, [r6]
    bl GetUnitItemCount
    cmp r0, #0
    beq .L080224FC
    ldr r0, .L080224E8 @ =0x0200323C
    ldr r5, .L080224EC @ =0x02022CB6
    adds r1, r5, #0
    movs r2, #9
    movs r3, #0x13
    bl TmCopyRect_thm
    ldr r0, .L080224F0 @ =0x0200373C
    ldr r4, .L080224F4 @ =0x020234B6
    adds r1, r4, #0
    movs r2, #9
    movs r3, #0x13
    bl TmCopyRect_thm
    subs r5, #0x14
    adds r0, r5, #0
    movs r1, #0xe
    movs r2, #0xc
    movs r3, #0
    bl TmFillRect_thm
    subs r4, #0x14
    adds r0, r4, #0
    movs r1, #0xd
    movs r2, #0xc
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #3
    bl EnableBgSync
    ldr r0, .L080224F8 @ =0x08B95A40
    bl StartMenu
    adds r4, r0, #0
    ldr r0, [r6]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    ldr r1, [r6]
    adds r0, r4, #0
    movs r2, #0xf
    movs r3, #0xb
    bl StartEquipInfoWindow
    movs r0, #1
    b .L0802251E
    .align 2, 0
.L080224E4: .4byte gActiveUnit
.L080224E8: .4byte 0x0200323C
.L080224EC: .4byte 0x02022CB6
.L080224F0: .4byte 0x0200373C
.L080224F4: .4byte 0x020234B6
.L080224F8: .4byte 0x08B95A40
.L080224FC:
    bl ClearUi
    movs r0, #0
    bl EndFaceById
    ldr r0, .L08022528 @ =0x08B95AAC
    ldr r2, .L0802252C @ =gBmSt
    movs r3, #0x1c
    ldrsh r1, [r2, r3]
    movs r3, #0xc
    ldrsh r2, [r2, r3]
    subs r1, r1, r2
    movs r2, #1
    movs r3, #0x16
    bl StartSemiCenteredOrphanMenu
    movs r0, #0x1b
.L0802251E:
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08022528: .4byte 0x08B95AAC
.L0802252C: .4byte gBmSt
    func_end func_0802245C

    thumb_func_start func_08022530
func_08022530: @ 0x08022530
    push {r4, r5, lr}
    ldr r5, .L08022580 @ =gActiveUnit
    ldr r0, [r5]
    ldr r1, .L08022584 @ =gActionSt
    ldrb r1, [r1, #0x12]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl GetItemEffect
    cmp r0, #0
    beq .L0802257C
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #4
    beq .L0802257C
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #0xc
    beq .L0802257C
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L08022588
    ldr r0, [r5]
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08022588
.L0802257C:
    movs r0, #3
    b .L0802259E
    .align 2, 0
.L08022580: .4byte gActiveUnit
.L08022584: .4byte gActionSt
.L08022588:
    ldr r0, .L080225A4 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    movs r1, #2
    cmp r0, #0
    beq .L0802259C
    movs r1, #1
.L0802259C:
    adds r0, r1, #0
.L0802259E:
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080225A4: .4byte gActiveUnit
    func_end func_08022530

    thumb_func_start func_080225A8
func_080225A8: @ 0x080225A8
    push {r4, r5, lr}
    ldr r5, .L080225CC @ =gActiveUnit
    ldr r0, [r5]
    ldr r1, .L080225D0 @ =gActionSt
    ldrb r1, [r1, #0x12]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    bne .L080225D4
    movs r0, #3
    b .L080225E8
    .align 2, 0
.L080225CC: .4byte gActiveUnit
.L080225D0: .4byte gActionSt
.L080225D4:
    ldr r0, [r5]
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    movs r1, #2
    cmp r0, #0
    beq .L080225E6
    movs r1, #1
.L080225E6:
    adds r0, r1, #0
.L080225E8:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080225A8

    thumb_func_start func_080225F0
func_080225F0: @ 0x080225F0
    push {lr}
    ldr r0, .L08022614 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, .L08022618 @ =gActionSt
    ldrb r1, [r1, #0x12]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl GetItemAttributes
    movs r1, #0x10
    ands r1, r0
    cmp r1, #0
    bne .L0802261C
    movs r0, #1
    b .L0802261E
    .align 2, 0
.L08022614: .4byte gActiveUnit
.L08022618: .4byte gActionSt
.L0802261C:
    movs r0, #2
.L0802261E:
    pop {r1}
    bx r1
    func_end func_080225F0

    thumb_func_start func_08022624
func_08022624: @ 0x08022624
    push {r4, lr}
    adds r4, r0, #0
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    bne .L0802265C
    ldr r0, .L08022654 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, .L08022658 @ =gActionSt
    ldrb r1, [r1, #0x12]
    lsls r2, r1, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r1, [r1]
    bl func_08026F4C
    adds r1, r0, #0
    adds r0, r4, #0
    bl MenuFrozenHelpBox
    movs r0, #8
    b .L08022698
    .align 2, 0
.L08022654: .4byte gActiveUnit
.L08022658: .4byte gActionSt
.L0802265C:
    bl ClearUi
    ldr r0, .L080226A0 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, .L080226A4 @ =gActionSt
    ldrb r1, [r1, #0x12]
    lsls r2, r1, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r1, [r1]
    bl func_080270FC
    ldr r0, .L080226A8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08022688
    ldr r0, .L080226AC @ =0x0000038A
    bl m4aSongNumStart
.L08022688:
    movs r0, #0
    bl SetTextFont
    bl ResetTextFont
    bl func_0804A490
    movs r0, #0x21
.L08022698:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080226A0: .4byte gActiveUnit
.L080226A4: .4byte gActionSt
.L080226A8: .4byte gPlaySt
.L080226AC: .4byte 0x0000038A
    func_end func_08022624

    thumb_func_start func_080226B0
func_080226B0: @ 0x080226B0
    push {r4, lr}
    adds r4, r0, #0
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L080226DC
    ldr r0, .L080226D4 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, .L080226D8 @ =gActionSt
    ldrb r1, [r1, #0x12]
    bl UnitEquipItemSlot
    adds r0, r4, #0
    bl func_08022404
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b .L080226E6
    .align 2, 0
.L080226D4: .4byte gActiveUnit
.L080226D8: .4byte gActionSt
.L080226DC:
    ldr r1, .L080226EC @ =0x00000737
    adds r0, r4, #0
    bl MenuFrozenHelpBox
    movs r0, #8
.L080226E6:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080226EC: .4byte 0x00000737
    func_end func_080226B0

    thumb_func_start func_080226F0
func_080226F0: @ 0x080226F0
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0802271C @ =gBmSt
    ldr r1, .L08022720 @ =gActionSt
    ldrb r1, [r1, #0x12]
    adds r0, #0x3f
    strb r1, [r0]
    adds r0, r4, #0
    bl func_080223EC
    movs r0, #0
    bl EndFaceById
    adds r0, r4, #0
    adds r1, r5, #0
    bl UnitActionMenu_Trade_Select
    movs r0, #1
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0802271C: .4byte gBmSt
.L08022720: .4byte gActionSt
    func_end func_080226F0

    thumb_func_start func_08022724
func_08022724: @ 0x08022724
    push {r4, lr}
    adds r4, r0, #0
    adds r2, r1, #0
    adds r0, r2, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #2
    beq .L08022784
    ldrh r0, [r2, #0x2a]
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, .L08022770 @ =0xFFFFFF00
    ands r3, r1
    orrs r3, r0
    ldrh r2, [r2, #0x2c]
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x10
    ldr r1, .L08022774 @ =0xFFFF00FF
    ands r3, r1
    orrs r3, r0
    ldr r0, .L08022778 @ =0xFF00FFFF
    ands r3, r0
    movs r0, #0xa0
    lsls r0, r0, #0xb
    orrs r3, r0
    ldr r0, .L0802277C @ =0x00FFFFFF
    ands r3, r0
    ldr r0, .L08022780 @ =0x08B959B0
    adds r1, r3, #0
    adds r2, r4, #0
    bl StartMenuExt
    adds r0, #0x61
    movs r1, #1
    strb r1, [r0]
    movs r0, #0x84
    b .L0802278E
    .align 2, 0
.L08022770: .4byte 0xFFFFFF00
.L08022774: .4byte 0xFFFF00FF
.L08022778: .4byte 0xFF00FFFF
.L0802277C: .4byte 0x00FFFFFF
.L08022780: .4byte 0x08B959B0
.L08022784:
    ldr r1, .L08022794 @ =0x00000739
    adds r0, r4, #0
    bl MenuFrozenHelpBox
    movs r0, #8
.L0802278E:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08022794: .4byte 0x00000739
    func_end func_08022724

    thumb_func_start func_08022798
func_08022798: @ 0x08022798
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L080227C4 @ =gActiveUnit
    ldr r0, [r0]
    ldr r4, .L080227C8 @ =gActionSt
    ldrb r1, [r4, #0x12]
    bl UnitRemoveItem
    ldrb r0, [r4, #0x12]
    cmp r0, #0
    beq .L080227B6
    ldr r0, .L080227CC @ =gBg0Tm
    movs r1, #0
    bl TmFill
.L080227B6:
    adds r0, r5, #0
    bl func_0802245C
    movs r0, #1
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080227C4: .4byte gActiveUnit
.L080227C8: .4byte gActionSt
.L080227CC: .4byte gBg0Tm
    func_end func_08022798

    thumb_func_start func_080227D0
func_080227D0: @ 0x080227D0
    push {lr}
    ldr r0, .L080227E4 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L080227E8
    movs r0, #3
    b .L08022804
    .align 2, 0
.L080227E4: .4byte gActiveUnit
.L080227E8:
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl func_080346C8
    movs r1, #0xff
    lsls r1, r1, #8
    ands r1, r0
    cmp r1, #0
    bne .L08022802
    movs r0, #2
    b .L08022804
.L08022802:
    movs r0, #1
.L08022804:
    pop {r1}
    bx r1
    func_end func_080227D0

    thumb_func_start func_08022808
func_08022808: @ 0x08022808
    push {r4, r5, lr}
    adds r4, r1, #0
    movs r5, #0
    adds r0, r4, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0802281A
    movs r5, #1
.L0802281A:
    ldr r0, .L08022850 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_080346C8
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x34
    adds r2, r5, #0
    movs r5, #0x2c
    ldrsh r3, [r4, r5]
    lsls r3, r3, #5
    movs r5, #0x2a
    ldrsh r4, [r4, r5]
    adds r3, r3, r4
    lsls r3, r3, #1
    ldr r4, .L08022854 @ =gBg0Tm
    adds r3, r3, r4
    bl func_08016470
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08022850: .4byte gActiveUnit
.L08022854: .4byte gBg0Tm
    func_end func_08022808

    thumb_func_start func_08022858
func_08022858: @ 0x08022858
    push {lr}
    bl ClearUi
    ldr r1, .L08022878 @ =gActionSt
    movs r0, #8
    strb r0, [r1, #0x12]
    ldr r0, .L0802287C @ =gActiveUnit
    ldr r0, [r0]
    bl func_080241AC
    ldr r0, .L08022880 @ =0x08B95C98
    bl StartMapSelect
    movs r0, #0x26
    pop {r1}
    bx r1
    .align 2, 0
.L08022878: .4byte gActionSt
.L0802287C: .4byte gActiveUnit
.L08022880: .4byte 0x08B95C98
    func_end func_08022858

    thumb_func_start func_08022884
func_08022884: @ 0x08022884
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    ldr r0, .L08022900 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r4, .L08022904 @ =gBmMapRange
    ldr r0, [r4]
    movs r1, #0
    bl BmMapFill
    ldr r0, [r4]
    bl func_0801B190
    ldr r4, .L08022908 @ =gActiveUnit
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_080346C8
    adds r5, r0, #0
    bl func_0801DFC0
    ldr r0, [r4]
    movs r6, #0x10
    ldrsb r6, [r0, r6]
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r8, r0
    adds r0, r5, #0
    bl func_0801736C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    adds r0, r5, #0
    bl func_08017384
    adds r3, r0, #0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl func_0801B19C
    movs r0, #2
    bl DisplayMoveRangeGraphics
    movs r0, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08022900: .4byte gBmMapMovement
.L08022904: .4byte gBmMapRange
.L08022908: .4byte gActiveUnit
    func_end func_08022884

    thumb_func_start func_0802290C
func_0802290C: @ 0x0802290C
    push {r4, r5, r6, lr}
    ldr r0, .L08022920 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L08022928
    b .L08022976
    .align 2, 0
.L08022920: .4byte gActiveUnit
.L08022924:
    movs r0, #2
    b .L08022978
.L08022928:
    movs r6, #0
    ldrh r4, [r2, #0x1e]
    cmp r4, #0
    beq .L08022976
.L08022930:
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #4
    bne .L08022960
    ldr r5, .L0802295C @ =gActiveUnit
    ldr r0, [r5]
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08022960
    ldr r0, [r5]
    bl IsUnitMagicSealed
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08022924
    movs r0, #1
    b .L08022978
    .align 2, 0
.L0802295C: .4byte gActiveUnit
.L08022960:
    adds r6, #1
    cmp r6, #4
    bgt .L08022976
    ldr r0, .L08022980 @ =gActiveUnit
    ldr r0, [r0]
    lsls r1, r6, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L08022930
.L08022976:
    movs r0, #3
.L08022978:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08022980: .4byte gActiveUnit
    func_end func_0802290C

    thumb_func_start func_08022984
func_08022984: @ 0x08022984
    push {r4, r5, lr}
    sub sp, #4
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L080229DC
    bl ClearIcons
    movs r0, #4
    bl ApplyIconPalettes
    ldr r0, .L080229D4 @ =0x08B95A1C
    bl StartMenu
    adds r5, r0, #0
    ldr r4, .L080229D8 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #0xc
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    ldr r1, [r4]
    adds r0, r5, #0
    movs r2, #0xf
    movs r3, #0xb
    bl StartEquipInfoWindow
    movs r0, #0x17
    b .L080229E4
    .align 2, 0
.L080229D4: .4byte 0x08B95A1C
.L080229D8: .4byte gActiveUnit
.L080229DC:
    ldr r1, .L080229EC @ =0x0000073B
    bl MenuFrozenHelpBox
    movs r0, #8
.L080229E4:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080229EC: .4byte 0x0000073B
    func_end func_08022984

    thumb_func_start func_080229F0
func_080229F0: @ 0x080229F0
    push {r4, r5, r6, lr}
    ldr r5, .L08022A2C @ =gActiveUnit
    ldr r0, [r5]
    movs r4, #1
    rsbs r4, r4, #0
    adds r1, r4, #0
    bl GetUnitItemUseReach
    adds r6, r0, #0
    ldr r0, .L08022A30 @ =gBmMapMovement
    ldr r0, [r0]
    adds r1, r4, #0
    bl BmMapFill
    ldr r0, .L08022A34 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, [r5]
    adds r1, r6, #0
    bl BuildUnitStandingRangeForReach
    movs r0, #5
    bl DisplayMoveRangeGraphics
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08022A2C: .4byte gActiveUnit
.L08022A30: .4byte gBmMapMovement
.L08022A34: .4byte gBmMapRange
    func_end func_080229F0

    thumb_func_start func_08022A38
func_08022A38: @ 0x08022A38
    push {lr}
    bl HideMoveRangeGraphics
    movs r0, #0
    pop {r1}
    bx r1
    func_end func_08022A38

    thumb_func_start func_08022A44
func_08022A44: @ 0x08022A44
    push {r4, r5, lr}
    ldr r5, .L08022A70 @ =gActiveUnit
    ldr r0, [r5]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #4
    bne .L08022A74
    ldr r0, [r5]
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08022A74
    movs r0, #1
    b .L08022A76
    .align 2, 0
.L08022A70: .4byte gActiveUnit
.L08022A74:
    movs r0, #3
.L08022A76:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08022A44

    thumb_func_start func_08022A7C
func_08022A7C: @ 0x08022A7C
    push {r4, r5, lr}
    ldr r5, .L08022AB4 @ =gActiveUnit
    ldr r0, [r5]
    adds r1, #0x3c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl UnitEquipItemSlot
    ldr r4, .L08022AB8 @ =gActionSt
    movs r0, #0
    strb r0, [r4, #0x12]
    bl ClearUi
    ldr r0, [r5]
    ldrb r4, [r4, #0x12]
    lsls r2, r4, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r1, [r1]
    bl func_080270FC
    movs r0, #7
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08022AB4: .4byte gActiveUnit
.L08022AB8: .4byte gActionSt
    func_end func_08022A7C

    thumb_func_start func_08022ABC
func_08022ABC: @ 0x08022ABC
    push {lr}
    bl func_08022204
    pop {r1}
    bx r1
    func_end func_08022ABC

    thumb_func_start func_08022AC8
func_08022AC8: @ 0x08022AC8
    push {r4, r5, r6, lr}
    adds r4, r1, #0
    ldr r5, .L08022B10 @ =gActiveUnit
    ldr r0, [r5]
    adds r4, #0x3c
    movs r1, #0
    ldrsb r1, [r4, r1]
    bl GetUnitItemUseReach
    adds r6, r0, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    bl func_0801DFC0
    ldr r0, .L08022B14 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L08022B18 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, [r5]
    adds r1, r6, #0
    bl BuildUnitStandingRangeForReach
    movs r0, #4
    bl DisplayMoveRangeGraphics
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08022B10: .4byte gActiveUnit
.L08022B14: .4byte gBmMapMovement
.L08022B18: .4byte gBmMapRange
    func_end func_08022AC8

    thumb_func_start func_08022B1C
func_08022B1C: @ 0x08022B1C
    push {lr}
    adds r0, #0x63
    movs r1, #4
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #0
    bne .L08022B2E
    bl HideMoveRangeGraphics
.L08022B2E:
    movs r0, #0
    pop {r1}
    bx r1
    func_end func_08022B1C

    thumb_func_start func_08022B34
func_08022B34: @ 0x08022B34
    push {r4, lr}
    ldr r4, .L08022B58 @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022B52
    adds r0, r2, #0
    bl func_08024094
    bl CountTargets
    cmp r0, #0
    bne .L08022B5C
.L08022B52:
    movs r0, #3
    b .L08022B70
    .align 2, 0
.L08022B58: .4byte gActiveUnit
.L08022B5C:
    ldr r1, [r4]
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #3
    beq .L08022B6E
    movs r0, #1
    b .L08022B70
.L08022B6E:
    movs r0, #2
.L08022B70:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08022B34

    thumb_func_start func_08022B78
func_08022B78: @ 0x08022B78
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L08022B9C
    ldr r0, .L08022B94 @ =gActiveUnit
    ldr r0, [r0]
    bl func_08024094
    ldr r0, .L08022B98 @ =0x08B95C38
    bl StartMapSelect
    movs r0, #7
    b .L08022BA4
    .align 2, 0
.L08022B94: .4byte gActiveUnit
.L08022B98: .4byte 0x08B95C38
.L08022B9C:
    ldr r1, .L08022BA8 @ =0x0000073C
    bl MenuFrozenHelpBox
    movs r0, #8
.L08022BA4:
    pop {r1}
    bx r1
    .align 2, 0
.L08022BA8: .4byte 0x0000073C
    func_end func_08022B78

    thumb_func_start func_08022BAC
func_08022BAC: @ 0x08022BAC
    ldr r2, .L08022BBC @ =gActionSt
    movs r0, #0xc
    strb r0, [r2, #0x11]
    ldrb r0, [r1, #2]
    strb r0, [r2, #0xd]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L08022BBC: .4byte gActionSt
    func_end func_08022BAC

    thumb_func_start func_08022BC0
func_08022BC0: @ 0x08022BC0
    push {r4, lr}
    ldr r4, .L08022BF0 @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022BEC
    adds r0, r2, #0
    bl func_080240C8
    bl CountTargets
    cmp r0, #0
    beq .L08022BEC
    ldr r0, [r4]
    bl func_08024094
    bl CountTargets
    cmp r0, #0
    beq .L08022BF4
.L08022BEC:
    movs r0, #3
    b .L08022C08
    .align 2, 0
.L08022BF0: .4byte gActiveUnit
.L08022BF4:
    ldr r1, [r4]
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #3
    beq .L08022C06
    movs r0, #1
    b .L08022C08
.L08022C06:
    movs r0, #2
.L08022C08:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08022BC0

    thumb_func_start func_08022C10
func_08022C10: @ 0x08022C10
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L08022C34
    ldr r0, .L08022C2C @ =gActiveUnit
    ldr r0, [r0]
    bl func_080240C8
    ldr r0, .L08022C30 @ =0x08B95C18
    bl StartMapSelect
    movs r0, #7
    b .L08022C3C
    .align 2, 0
.L08022C2C: .4byte gActiveUnit
.L08022C30: .4byte 0x08B95C18
.L08022C34:
    ldr r1, .L08022C40 @ =0x0000073C
    bl MenuFrozenHelpBox
    movs r0, #8
.L08022C3C:
    pop {r1}
    bx r1
    .align 2, 0
.L08022C40: .4byte 0x0000073C
    func_end func_08022C10

    thumb_func_start func_08022C44
func_08022C44: @ 0x08022C44
    ldr r2, .L08022C54 @ =gActionSt
    movs r0, #0xd
    strb r0, [r2, #0x11]
    ldrb r0, [r1, #2]
    strb r0, [r2, #0xd]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L08022C54: .4byte gActionSt
    func_end func_08022C44

    thumb_func_start func_08022C58
func_08022C58: @ 0x08022C58
    push {r4, lr}
    ldr r4, .L08022C78 @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022C74
    adds r0, r2, #0
    movs r1, #0x1e
    bl GetUnitKeyItemSlotForTerrain
    cmp r0, #0
    bge .L08022C7C
.L08022C74:
    movs r0, #3
    b .L08022C92
    .align 2, 0
.L08022C78: .4byte gActiveUnit
.L08022C7C:
    ldr r0, [r4]
    movs r1, #0x1e
    bl func_08024298
    bl CountTargets
    movs r1, #3
    cmp r0, #0
    beq .L08022C90
    movs r1, #1
.L08022C90:
    adds r0, r1, #0
.L08022C92:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08022C58

    thumb_func_start func_08022C98
func_08022C98: @ 0x08022C98
    push {r4, lr}
    ldr r4, .L08022CB8 @ =gActionSt
    movs r0, #0x10
    strb r0, [r4, #0x11]
    ldr r0, .L08022CBC @ =gActiveUnit
    ldr r0, [r0]
    ldrb r1, [r0, #0xb]
    strb r1, [r4, #0xc]
    movs r1, #0x1e
    bl GetUnitKeyItemSlotForTerrain
    strb r0, [r4, #0x12]
    movs r0, #0x17
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08022CB8: .4byte gActionSt
.L08022CBC: .4byte gActiveUnit
    func_end func_08022C98

    thumb_func_start func_08022CC0
func_08022CC0: @ 0x08022CC0
    push {r4, lr}
    ldr r4, .L08022CE0 @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022CDC
    adds r0, r2, #0
    movs r1, #0x21
    bl GetUnitKeyItemSlotForTerrain
    cmp r0, #0
    bge .L08022CE4
.L08022CDC:
    movs r0, #3
    b .L08022CF6
    .align 2, 0
.L08022CE0: .4byte gActiveUnit
.L08022CE4:
    ldr r0, [r4]
    bl func_08027354
    lsls r0, r0, #0x18
    movs r1, #3
    cmp r0, #0
    beq .L08022CF4
    movs r1, #1
.L08022CF4:
    adds r0, r1, #0
.L08022CF6:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08022CC0

    thumb_func_start func_08022CFC
func_08022CFC: @ 0x08022CFC
    push {r4, lr}
    ldr r4, .L08022D18 @ =gActionSt
    movs r0, #0x12
    strb r0, [r4, #0x11]
    ldr r0, .L08022D1C @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x21
    bl GetUnitKeyItemSlotForTerrain
    strb r0, [r4, #0x12]
    movs r0, #0x17
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08022D18: .4byte gActionSt
.L08022D1C: .4byte gActiveUnit
    func_end func_08022CFC

    thumb_func_start func_08022D20
func_08022D20: @ 0x08022D20
    push {r4, lr}
    ldr r0, .L08022D98 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022DAC
    ldr r1, .L08022D9C @ =gBmSt
    adds r1, #0x3d
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08022DAC
    adds r0, r2, #0
    bl GetUnitItemCount
    cmp r0, #0
    bne .L08022D50
    bl func_0802E770
    cmp r0, #0
    beq .L08022DAC
.L08022D50:
    bl func_08079D9C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08022DAC
    movs r0, #0x28
    bl GetUnitFromCharId
    adds r3, r0, #0
    ldr r0, [r3, #0xc]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L08022DAC
    ldr r0, .L08022D98 @ =gActiveUnit
    ldr r4, [r0]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r2, #0x10
    ldrsb r2, [r3, r2]
    subs r1, r0, r2
    cmp r1, #0
    bge .L08022D80
    subs r1, r2, r0
.L08022D80:
    ldrb r4, [r4, #0x11]
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    movs r2, #0x11
    ldrsb r2, [r3, r2]
    subs r0, r4, r2
    cmp r0, #0
    blt .L08022DA0
    adds r0, r1, r0
    cmp r0, #1
    beq .L08022DA8
    b .L08022DAC
    .align 2, 0
.L08022D98: .4byte gActiveUnit
.L08022D9C: .4byte gBmSt
.L08022DA0:
    subs r0, r2, r4
    adds r0, r1, r0
    cmp r0, #1
    bne .L08022DAC
.L08022DA8:
    movs r0, #1
    b .L08022DAE
.L08022DAC:
    movs r0, #3
.L08022DAE:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08022D20

    thumb_func_start func_08022DB4
func_08022DB4: @ 0x08022DB4
    push {lr}
    ldr r1, .L08022DCC @ =gActionSt
    movs r0, #0x1a
    strb r0, [r1, #0x11]
    ldr r0, .L08022DD0 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0
    bl func_080974CC
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08022DCC: .4byte gActionSt
.L08022DD0: .4byte gActiveUnit
    func_end func_08022DB4

    thumb_func_start func_08022DD4
func_08022DD4: @ 0x08022DD4
    push {lr}
    ldr r0, .L08022DE8 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L08022DEC
    movs r0, #3
    b .L08022E02
    .align 2, 0
.L08022DE8: .4byte gActiveUnit
.L08022DEC:
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl func_08078BD0
    movs r1, #3
    cmp r0, #0x13
    bne .L08022E00
    movs r1, #1
.L08022E00:
    adds r0, r1, #0
.L08022E02:
    pop {r1}
    bx r1
    func_end func_08022DD4

    thumb_func_start func_08022E08
func_08022E08: @ 0x08022E08
    push {lr}
    ldr r0, .L08022E24 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078C14
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08022E24: .4byte gActiveUnit
    func_end func_08022E08

    thumb_func_start func_08022E28
func_08022E28: @ 0x08022E28
    push {lr}
    ldr r0, .L08022E3C @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L08022E40
    movs r0, #3
    b .L08022E56
    .align 2, 0
.L08022E3C: .4byte gActiveUnit
.L08022E40:
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl func_08078BD0
    movs r1, #3
    cmp r0, #0x14
    bne .L08022E54
    movs r1, #1
.L08022E54:
    adds r0, r1, #0
.L08022E56:
    pop {r1}
    bx r1
    func_end func_08022E28

    thumb_func_start func_08022E5C
func_08022E5C: @ 0x08022E5C
    push {lr}
    ldr r0, .L08022E78 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078C14
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08022E78: .4byte gActiveUnit
    func_end func_08022E5C

    thumb_func_start func_08022E7C
func_08022E7C: @ 0x08022E7C
    push {lr}
    ldr r0, .L08022E90 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L08022E94
    movs r0, #3
    b .L08022EAA
    .align 2, 0
.L08022E90: .4byte gActiveUnit
.L08022E94:
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl func_08078BD0
    movs r1, #3
    cmp r0, #0x15
    bne .L08022EA8
    movs r1, #1
.L08022EA8:
    adds r0, r1, #0
.L08022EAA:
    pop {r1}
    bx r1
    func_end func_08022E7C

    thumb_func_start func_08022EB0
func_08022EB0: @ 0x08022EB0
    push {lr}
    ldr r0, .L08022ECC @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078C14
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08022ECC: .4byte gActiveUnit
    func_end func_08022EB0

    thumb_func_start func_08022ED0
func_08022ED0: @ 0x08022ED0
    push {lr}
    ldr r0, .L08022F00 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022EFA
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, .L08022F04 @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #8
    beq .L08022F08
.L08022EFA:
    movs r0, #3
    b .L08022F1A
    .align 2, 0
.L08022F00: .4byte gActiveUnit
.L08022F04: .4byte gBmMapTerrain
.L08022F08:
    adds r0, r2, #0
    bl func_0802F158
    lsls r0, r0, #0x18
    movs r1, #2
    cmp r0, #0
    beq .L08022F18
    movs r1, #1
.L08022F18:
    adds r0, r1, #0
.L08022F1A:
    pop {r1}
    bx r1
    func_end func_08022ED0

    thumb_func_start func_08022F20
func_08022F20: @ 0x08022F20
    push {r4, lr}
    adds r4, r0, #0
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    bne .L08022F5C
    ldr r0, .L08022F44 @ =gActiveUnit
    ldr r0, [r0]
    bl IsUnitMagicSealed
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08022F4C
    ldr r1, .L08022F48 @ =0x0000073D
    adds r0, r4, #0
    bl MenuFrozenHelpBox
    b .L08022F54
    .align 2, 0
.L08022F44: .4byte gActiveUnit
.L08022F48: .4byte 0x0000073D
.L08022F4C:
    ldr r1, .L08022F58 @ =0x0000073E
    adds r0, r4, #0
    bl MenuFrozenHelpBox
.L08022F54:
    movs r0, #8
    b .L08022F62
    .align 2, 0
.L08022F58: .4byte 0x0000073E
.L08022F5C:
    bl func_080B267C
    movs r0, #0x17
.L08022F62:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08022F20

    thumb_func_start func_08022F68
func_08022F68: @ 0x08022F68
    movs r0, #3
    bx lr
    func_end func_08022F68

    thumb_func_start func_08022F6C
func_08022F6C: @ 0x08022F6C
    ldr r1, .L08022F74 @ =gActionSt
    movs r0, #0x20
    strb r0, [r1, #0x11]
    bx lr
    .align 2, 0
.L08022F74: .4byte gActionSt
    func_end func_08022F6C

    thumb_func_start func_08022F78
func_08022F78: @ 0x08022F78
    push {r4, lr}
    ldr r4, .L08022FAC @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08022FA8
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08022FA8
    adds r0, r2, #0
    bl func_08024504
    bl CountTargets
    cmp r0, #0
    bne .L08022FB0
.L08022FA8:
    movs r0, #3
    b .L08022FC0
    .align 2, 0
.L08022FAC: .4byte gActiveUnit
.L08022FB0:
    ldr r0, [r4]
    bl GetUnitItemCount
    cmp r0, #5
    beq .L08022FBE
    movs r0, #1
    b .L08022FC0
.L08022FBE:
    movs r0, #2
.L08022FC0:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08022F78

    thumb_func_start func_08022FC8
func_08022FC8: @ 0x08022FC8
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L08022FF0
    bl ClearUi
    ldr r0, .L08022FE8 @ =gActiveUnit
    ldr r0, [r0]
    bl func_08024504
    ldr r0, .L08022FEC @ =0x08B95BF8
    bl StartMapSelect
    movs r0, #7
    b .L08022FF8
    .align 2, 0
.L08022FE8: .4byte gActiveUnit
.L08022FEC: .4byte 0x08B95BF8
.L08022FF0:
    ldr r1, .L08022FFC @ =0x0000074B
    bl MenuFrozenHelpBox
    movs r0, #8
.L08022FF8:
    pop {r1}
    bx r1
    .align 2, 0
.L08022FFC: .4byte 0x0000074B
    func_end func_08022FC8

    thumb_func_start func_08023000
func_08023000: @ 0x08023000
    push {r4, lr}
    adds r4, r0, #0
    bl func_08031A74
    ldr r0, .L0802301C @ =0x00000721
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802301C: .4byte 0x00000721
    func_end func_08023000

    thumb_func_start func_08023020
func_08023020: @ 0x08023020
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031BA8
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08023020

    thumb_func_start func_08023044
func_08023044: @ 0x08023044
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r6, .L080230D4 @ =gActionSt
    ldrb r0, [r1, #2]
    strb r0, [r6, #0xd]
    bl ClearIcons
    movs r0, #4
    bl ApplyIconPalettes
    ldr r0, .L080230D8 @ =0x08B95920
    bl StartMenu
    adds r0, r4, #0
    bl func_0804AF00
    ldr r0, .L080230DC @ =0x020234E4
    ldr r1, .L080230E0 @ =0x081960D4
    movs r2, #0x80
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    ldrb r0, [r6, #0xd]
    bl GetUnit
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    bl GetStringTextLen
    movs r4, #0x38
    subs r4, r4, r0
    lsrs r0, r4, #0x1f
    adds r4, r4, r0
    asrs r4, r4, #1
    ldrb r0, [r6, #0xd]
    bl GetUnit
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    ldr r5, .L080230E4 @ =0x02022D26
    movs r1, #7
    str r1, [sp]
    str r0, [sp, #4]
    movs r0, #0
    adds r1, r5, #0
    movs r2, #0
    adds r3, r4, #0
    bl PutDrawText
    adds r5, #0x80
    ldrb r0, [r6, #0xd]
    bl GetUnit
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r2, #0x80
    lsls r2, r2, #2
    adds r0, r5, #0
    movs r3, #5
    bl PutFace80x72_Core
    movs r0, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080230D4: .4byte gActionSt
.L080230D8: .4byte 0x08B95920
.L080230DC: .4byte 0x020234E4
.L080230E0: .4byte 0x081960D4
.L080230E4: .4byte 0x02022D26
    func_end func_08023044

    thumb_func_start func_080230E8
func_080230E8: @ 0x080230E8
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r5, .L08023104 @ =gActionSt
    ldrb r0, [r5, #0xd]
    bl GetUnit
    lsls r4, r4, #1
    adds r0, #0x1e
    adds r0, r0, r4
    ldrh r0, [r0]
    cmp r0, #0
    bne .L08023108
    movs r0, #3
    b .L08023124
    .align 2, 0
.L08023104: .4byte gActionSt
.L08023108:
    ldrb r0, [r5, #0xd]
    bl GetUnit
    adds r0, #0x1e
    adds r0, r0, r4
    ldrh r0, [r0]
    bl IsItemStealable
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023122
    movs r0, #1
    b .L08023124
.L08023122:
    movs r0, #2
.L08023124:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080230E8

    thumb_func_start func_0802312C
func_0802312C: @ 0x0802312C
    push {r4, r5, r6, lr}
    adds r5, r1, #0
    ldr r0, .L08023178 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    adds r1, r5, #0
    adds r1, #0x3c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl IsItemStealable
    adds r2, r0, #0
    adds r0, r5, #0
    adds r0, #0x34
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    movs r1, #0x2c
    ldrsh r3, [r5, r1]
    lsls r3, r3, #5
    movs r6, #0x2a
    ldrsh r1, [r5, r6]
    adds r3, r3, r1
    lsls r3, r3, #1
    ldr r1, .L0802317C @ =gBg0Tm
    adds r3, r3, r1
    adds r1, r4, #0
    bl func_08016470
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08023178: .4byte gActionSt
.L0802317C: .4byte gBg0Tm
    func_end func_0802312C

    thumb_func_start func_08023180
func_08023180: @ 0x08023180
    push {lr}
    adds r2, r0, #0
    adds r0, r1, #0
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L080231A4
    ldr r1, .L080231A0 @ =gActionSt
    adds r0, #0x3c
    ldrb r0, [r0]
    strb r0, [r1, #0x12]
    movs r0, #6
    strb r0, [r1, #0x11]
    movs r0, #0x17
    b .L080231AE
    .align 2, 0
.L080231A0: .4byte gActionSt
.L080231A4:
    ldr r1, .L080231B4 @ =0x0000073F
    adds r0, r2, #0
    bl MenuFrozenHelpBox
    movs r0, #8
.L080231AE:
    pop {r1}
    bx r1
    .align 2, 0
.L080231B4: .4byte 0x0000073F
    func_end func_08023180

    thumb_func_start func_080231B8
func_080231B8: @ 0x080231B8
    push {r4, lr}
    adds r4, r1, #0
    adds r4, #0x3c
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #4
    ble .L080231E4
    movs r2, #0x2a
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r2, #0x2c
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    ldr r2, .L080231E0 @ =gBmSt
    ldrh r2, [r2, #0x2c]
    bl func_0808198C
    movs r0, #0
    b .L08023204
    .align 2, 0
.L080231E0: .4byte gBmSt
.L080231E4:
    movs r2, #0x2a
    ldrsh r0, [r1, r2]
    lsls r0, r0, #3
    movs r2, #0x2c
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    ldr r2, .L0802320C @ =gActiveUnit
    ldr r3, [r2]
    movs r2, #0
    ldrsb r2, [r4, r2]
    lsls r2, r2, #1
    adds r3, #0x1e
    adds r3, r3, r2
    ldrh r2, [r3]
    bl func_0808198C
.L08023204:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0802320C: .4byte gActiveUnit
    func_end func_080231B8

    thumb_func_start func_08023210
func_08023210: @ 0x08023210
    push {r4, lr}
    adds r4, r1, #0
    ldr r0, .L08023244 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    movs r1, #0x2a
    ldrsh r3, [r4, r1]
    lsls r3, r3, #3
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    lsls r1, r1, #3
    adds r4, #0x3c
    movs r2, #0
    ldrsb r2, [r4, r2]
    lsls r2, r2, #1
    adds r0, #0x1e
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r3, #0
    bl func_0808198C
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08023244: .4byte gActionSt
    func_end func_08023210

    thumb_func_start func_08023248
func_08023248: @ 0x08023248
    push {r4, r5, lr}
    movs r0, #0x2a
    ldrsh r5, [r1, r0]
    lsls r5, r5, #3
    movs r0, #0x2c
    ldrsh r4, [r1, r0]
    lsls r4, r4, #3
    ldr r0, .L08023278 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_080346C8
    adds r2, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_0808198C
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08023278: .4byte gActiveUnit
    func_end func_08023248

    thumb_func_start func_0802327C
func_0802327C: @ 0x0802327C
    push {lr}
    bl func_08031DFC
    pop {r0}
    bx r0
    func_end func_0802327C

    thumb_func_start func_08023288
func_08023288: @ 0x08023288
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031E10
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08023288

    thumb_func_start func_080232AC
func_080232AC: @ 0x080232AC
    push {r4, lr}
    adds r4, r0, #0
    bl func_0803202C
    ldr r0, .L080232C8 @ =0x0000071C
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080232C8: .4byte 0x0000071C
    func_end func_080232AC

    thumb_func_start func_080232CC
func_080232CC: @ 0x080232CC
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08032064
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080232CC

    thumb_func_start func_080232F0
func_080232F0: @ 0x080232F0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08023308 @ =0x0000071D
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08023308: .4byte 0x0000071D
    func_end func_080232F0

    thumb_func_start func_0802330C
func_0802330C: @ 0x0802330C
    bx lr
    func_end func_0802330C

    thumb_func_start func_08023310
func_08023310: @ 0x08023310
    push {r4, lr}
    adds r4, r0, #0
    bl func_080321E0
    ldr r0, .L0802332C @ =0x0000071F
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802332C: .4byte 0x0000071F
    func_end func_08023310

    thumb_func_start func_08023330
func_08023330: @ 0x08023330
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08032218
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08023330

    thumb_func_start func_08023354
func_08023354: @ 0x08023354
    push {r4, lr}
    adds r4, r0, #0
    bl func_0803202C
    ldr r0, .L08023370 @ =0x0000071E
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08023370: .4byte 0x0000071E
    func_end func_08023354

    thumb_func_start func_08023374
func_08023374: @ 0x08023374
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_0803211C
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08023374

    thumb_func_start func_08023398
func_08023398: @ 0x08023398
    push {r4, lr}
    adds r4, r0, #0
    bl func_08031A74
    movs r0, #0xe4
    lsls r0, r0, #3
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08023398

    thumb_func_start func_080233B8
func_080233B8: @ 0x080233B8
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    bl ClearIcons
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031A98
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080233B8

    thumb_func_start func_080233E0
func_080233E0: @ 0x080233E0
    push {r4, lr}
    adds r4, r0, #0
    bl func_08031DFC
    ldr r0, .L080233FC @ =0x00000723
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080233FC: .4byte 0x00000723
    func_end func_080233E0

    thumb_func_start func_08023400
func_08023400: @ 0x08023400
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031E10
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08023400

    thumb_func_start func_08023424
func_08023424: @ 0x08023424
    push {r4, lr}
    adds r4, r0, #0
    bl func_08031DFC
    ldr r0, .L08023440 @ =0x00000724
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08032560
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08023440: .4byte 0x00000724
    func_end func_08023424

    thumb_func_start func_08023444
func_08023444: @ 0x08023444
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031E10
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08023444

    thumb_func_start func_08023468
func_08023468: @ 0x08023468
    push {lr}
    bl func_08031DFC
    pop {r0}
    bx r0
    func_end func_08023468

    thumb_func_start func_08023474
func_08023474: @ 0x08023474
    push {r4, lr}
    adds r4, r1, #0
    movs r0, #0
    ldrsb r0, [r4, r0]
    movs r1, #1
    ldrsb r1, [r4, r1]
    bl func_0801EC10
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    bl func_08031E10
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08023474

    thumb_func_start func_08023498
func_08023498: @ 0x08023498
    push {lr}
    ldr r0, .L080234E4 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L080234EC
    ldr r0, [r2, #0xc]
    movs r1, #0x83
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L080234EC
    ldr r1, .L080234E8 @ =gBmSt
    adds r1, #0x3d
    movs r0, #8
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L080234EC
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl GetTrapAt
    cmp r0, #0
    beq .L080234EC
    ldrb r0, [r0, #2]
    cmp r0, #1
    bne .L080234EC
    movs r0, #1
    b .L080234EE
    .align 2, 0
.L080234E4: .4byte gActiveUnit
.L080234E8: .4byte gBmSt
.L080234EC:
    movs r0, #3
.L080234EE:
    pop {r1}
    bx r1
    func_end func_08023498

    thumb_func_start func_080234F4
func_080234F4: @ 0x080234F4
    push {r4, lr}
    ldr r1, .L08023518 @ =gActionSt
    movs r0, #0x1e
    strb r0, [r1, #0x11]
    ldr r4, .L0802351C @ =gActiveUnit
    ldr r0, [r4]
    bl func_08034770
    bl EndAllMus
    ldr r0, [r4]
    bl StartMu
    movs r0, #0x17
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08023518: .4byte gActionSt
.L0802351C: .4byte gActiveUnit
    func_end func_080234F4

    thumb_func_start func_08023520
func_08023520: @ 0x08023520
    ldr r0, .L08023544 @ =gActiveUnit
    ldr r0, [r0]
    ldr r0, [r0, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L0802354C
    ldr r1, .L08023548 @ =gBmSt
    adds r1, #0x3d
    movs r0, #8
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0802354C
    movs r0, #1
    b .L0802354E
    .align 2, 0
.L08023544: .4byte gActiveUnit
.L08023548: .4byte gBmSt
.L0802354C:
    movs r0, #3
.L0802354E:
    bx lr
    func_end func_08023520

    thumb_func_start func_08023550
func_08023550: @ 0x08023550
    push {r4, lr}
    ldr r1, .L08023574 @ =gActionSt
    movs r0, #0x1f
    strb r0, [r1, #0x11]
    ldr r4, .L08023578 @ =gActiveUnit
    ldr r0, [r4]
    bl func_080347A8
    bl EndAllMus
    ldr r0, [r4]
    bl StartMu
    movs r0, #0x17
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08023574: .4byte gActionSt
.L08023578: .4byte gActiveUnit
    func_end func_08023550

    thumb_func_start GetUnitAttackCommandAvailability
GetUnitAttackCommandAvailability: @ 0x0802357C
    push {r4, r5, r6, lr}
    ldr r0, .L08023598 @ =gActiveUnit
    ldr r1, [r0]
    ldr r2, [r1, #0xc]
    movs r0, #0x40
    ands r0, r2
    cmp r0, #0
    bne .L080235EC
    movs r0, #0x80
    lsls r0, r0, #4
    ands r2, r0
    cmp r2, #0
    beq .L080235A0
    b .L080235EC
    .align 2, 0
.L08023598: .4byte gActiveUnit
.L0802359C:
    movs r0, #1
    b .L080235EE
.L080235A0:
    movs r6, #0
    ldrh r4, [r1, #0x1e]
    cmp r4, #0
    beq .L080235EC
.L080235A8:
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L080235D6
    ldr r5, .L080235F4 @ =gActiveUnit
    ldr r0, [r5]
    adds r1, r4, #0
    bl CanUnitUseWeaponNow
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080235D6
    ldr r0, [r5]
    adds r1, r4, #0
    bl ListAttackTargetsForWeapon
    bl CountTargets
    cmp r0, #0
    bne .L0802359C
.L080235D6:
    adds r6, #1
    cmp r6, #4
    bgt .L080235EC
    ldr r0, .L080235F4 @ =gActiveUnit
    ldr r0, [r0]
    lsls r1, r6, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L080235A8
.L080235EC:
    movs r0, #3
.L080235EE:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080235F4: .4byte gActiveUnit
    func_end GetUnitAttackCommandAvailability

    thumb_func_start GetUnitAttackBallistaCommandAvailability
GetUnitAttackBallistaCommandAvailability: @ 0x080235F8
    push {r4, r5, lr}
    ldr r5, .L0802363C @ =gActiveUnit
    ldr r2, [r5]
    ldr r0, [r2, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08023638
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl GetTrapAt
    adds r4, r0, #0
    bl func_080347E4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023638
    ldr r0, [r5]
    movs r1, #0x80
    lsls r1, r1, #1
    ldrb r2, [r4, #3]
    orrs r1, r2
    bl ListAttackTargetsForWeapon
    bl CountTargets
    cmp r0, #0
    bne .L08023640
.L08023638:
    movs r0, #3
    b .L08023650
    .align 2, 0
.L0802363C: .4byte gActiveUnit
.L08023640:
    adds r0, r4, #0
    bl func_0803483C
    cmp r0, #0
    beq .L0802364E
    movs r0, #1
    b .L08023650
.L0802364E:
    movs r0, #2
.L08023650:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end GetUnitAttackBallistaCommandAvailability

    thumb_func_start func_08023658
func_08023658: @ 0x08023658
    push {lr}
    ldr r0, .L08023670 @ =gActiveUnit
    ldr r0, [r0]
    bl func_08024478
    bl CountTargets
    cmp r0, #0
    beq .L08023674
    movs r0, #1
    b .L08023676
    .align 2, 0
.L08023670: .4byte gActiveUnit
.L08023674:
    movs r0, #3
.L08023676:
    pop {r1}
    bx r1
    func_end func_08023658

    thumb_func_start func_0802367C
func_0802367C: @ 0x0802367C
    push {r4, r5, lr}
    adds r4, r1, #0
    adds r5, r4, #0
    adds r5, #0x34
    ldr r0, .L080236B8 @ =gBmSt
    ldrh r0, [r0, #0x2c]
    bl GetItemName
    adds r3, r0, #0
    adds r0, r5, #0
    movs r1, #0x10
    movs r2, #0
    bl Text_InsertDrawString
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    lsls r1, r1, #5
    movs r2, #0x2a
    ldrsh r0, [r4, r2]
    adds r1, r1, r0
    lsls r1, r1, #1
    ldr r0, .L080236BC @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r5, #0
    bl PutText
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080236B8: .4byte gBmSt
.L080236BC: .4byte gBg0Tm
    func_end func_0802367C

    thumb_func_start func_080236C0
func_080236C0: @ 0x080236C0
    push {lr}
    adds r1, #0x3d
    ldrb r1, [r1]
    cmp r1, #2
    beq .L080236E4
    ldr r0, .L080236DC @ =gActiveUnit
    ldr r0, [r0]
    bl func_08024478
    ldr r0, .L080236E0 @ =0x08B95B98
    bl StartMapSelect
    movs r0, #0x27
    b .L080236E6
    .align 2, 0
.L080236DC: .4byte gActiveUnit
.L080236E0: .4byte 0x08B95B98
.L080236E4:
    movs r0, #8
.L080236E6:
    pop {r1}
    bx r1
    func_end func_080236C0

    thumb_func_start func_080236EC
func_080236EC: @ 0x080236EC
    push {r4, r5, lr}
    ldr r5, .L08023718 @ =gActiveUnit
    ldr r0, [r5]
    subs r1, #1
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #0xc
    bne .L0802371C
    ldr r0, [r5]
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802371C
    movs r0, #1
    b .L0802371E
    .align 2, 0
.L08023718: .4byte gActiveUnit
.L0802371C:
    movs r0, #3
.L0802371E:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080236EC

    thumb_func_start func_08023724
func_08023724: @ 0x08023724
    push {r4, lr}
    adds r2, r1, #0
    ldr r0, .L08023764 @ =gActiveUnit
    ldr r1, [r0]
    adds r0, r2, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    subs r0, #1
    lsls r0, r0, #1
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r1, [r1]
    adds r0, r2, #0
    adds r0, #0x34
    movs r4, #0x2c
    ldrsh r3, [r2, r4]
    lsls r3, r3, #5
    movs r4, #0x2a
    ldrsh r2, [r2, r4]
    adds r3, r3, r2
    lsls r3, r3, #1
    ldr r2, .L08023768 @ =gBg0Tm
    adds r3, r3, r2
    movs r2, #1
    bl func_08016470
    movs r0, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08023764: .4byte gActiveUnit
.L08023768: .4byte gBg0Tm
    func_end func_08023724

    thumb_func_start func_0802376C
func_0802376C: @ 0x0802376C
    push {r4, lr}
    ldr r4, .L08023798 @ =gActionSt
    adds r1, #0x3c
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r4, #0x12]
    bl ClearUi
    ldr r0, .L0802379C @ =gActiveUnit
    ldr r0, [r0]
    ldrb r4, [r4, #0x12]
    lsls r2, r4, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r1, [r1]
    bl func_080270FC
    movs r0, #7
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08023798: .4byte gActionSt
.L0802379C: .4byte gActiveUnit
    func_end func_0802376C

    thumb_func_start func_080237A0
func_080237A0: @ 0x080237A0
    push {lr}
    adds r1, #0x3c
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L080237B4
    movs r0, #5
    bl func_0801DFC0
    b .L080237BE
.L080237B4:
    movs r0, #0
    ldrsb r0, [r1, r0]
    subs r0, #1
    bl func_0801DFC0
.L080237BE:
    pop {r1}
    bx r1
    func_end func_080237A0

    thumb_func_start func_080237C4
func_080237C4: @ 0x080237C4
    bx lr
    func_end func_080237C4

    thumb_func_start func_080237C8
func_080237C8: @ 0x080237C8
    push {r4, lr}
    adds r3, r1, #0
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0
    ldrsb r0, [r2, r0]
    cmp r0, #0
    bne .L080237E4
    ldr r0, .L080237E0 @ =gBmSt
    ldrh r2, [r0, #0x2c]
    b .L080237F6
    .align 2, 0
.L080237E0: .4byte gBmSt
.L080237E4:
    ldr r0, .L0802380C @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0
    ldrsb r0, [r2, r0]
    subs r0, #1
    lsls r0, r0, #1
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r2, [r1]
.L080237F6:
    movs r1, #0x2a
    ldrsh r0, [r3, r1]
    lsls r0, r0, #3
    movs r4, #0x2c
    ldrsh r1, [r3, r4]
    lsls r1, r1, #3
    bl func_0808198C
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0802380C: .4byte gActiveUnit
    func_end func_080237C8
