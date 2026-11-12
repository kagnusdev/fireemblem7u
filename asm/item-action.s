    .include "asm_prelude.inc"

    thumb_func_start DoItemHealStaffAction
DoItemHealStaffAction: @ 0x0802C324
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802C3A0 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r2, [r4, #0x12]
    lsls r1, r2, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r1, [r0]
    adds r0, r5, #0
    bl GetUnitItemHealAmount
    adds r5, r0, #0
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r1, r5, #0
    bl AddUnitHp
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl GetUnitCurrentHp
    ldr r1, .L0802C3A4 @ =0x0203A50C
    ldr r1, [r1]
    ldr r5, .L0802C3A8 @ =0x0203A470
    ldrb r2, [r5, #0x13]
    subs r0, r2, r0
    strb r0, [r1, #3]
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl GetUnitCurrentHp
    strb r0, [r5, #0x13]
    adds r0, r6, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C3A0: .4byte gActionSt
.L0802C3A4: .4byte 0x0203A50C
.L0802C3A8: .4byte 0x0203A470
    func_end DoItemHealStaffAction

    thumb_func_start DoItemRestoreStaffAction
DoItemRestoreStaffAction: @ 0x0802C3AC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802C3E4 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xd]
    bl GetUnit
    movs r1, #0
    bl SetUnitStatus
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C3E4: .4byte gActionSt
    func_end DoItemRestoreStaffAction

    thumb_func_start func_0802C3E8
func_0802C3E8: @ 0x0802C3E8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802C428 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r0, #0x31
    movs r1, #0xf
    ldrb r2, [r0]
    ands r1, r2
    movs r2, #0x70
    orrs r1, r2
    strb r1, [r0]
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C428: .4byte gActionSt
    func_end func_0802C3E8

    thumb_func_start GetRescueStaffTargetPosition
GetRescueStaffTargetPosition: @ 0x0802C42C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    str r1, [sp]
    mov sb, r2
    mov sl, r3
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r2]
    str r0, [r3]
    ldr r0, .L0802C4F0 @ =0x0000270F
    str r0, [sp, #4]
    adds r0, r7, #0
    bl MapFloodUnitExtended
    movs r0, #0x11
    ldrsb r0, [r7, r0]
    ldr r1, .L0802C4F4 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r7, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r1, #0xff
    strb r1, [r0]
    ldr r0, .L0802C4F8 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0802C528
.L0802C476:
    ldr r0, .L0802C4F8 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r0, r5, #1
    mov r8, r0
    cmp r4, #0
    blt .L0802C522
    lsls r6, r5, #2
.L0802C488:
    ldr r0, .L0802C4FC @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0802C51C
    ldr r0, .L0802C4F4 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0802C51C
    ldr r0, .L0802C500 @ =gBmMapHidden
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r1, [r0]
    adds r1, r1, r4
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0802C51C
    ldr r0, .L0802C504 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    ldr r0, [sp]
    bl CanUnitCrossTerrain
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802C51C
    movs r0, #0x10
    ldrsb r0, [r7, r0]
    subs r2, r4, r0
    cmp r2, #0
    bge .L0802C4E0
    subs r2, r0, r4
.L0802C4E0:
    movs r0, #0x11
    ldrsb r0, [r7, r0]
    subs r1, r5, r0
    cmp r1, #0
    blt .L0802C508
    adds r0, r2, r1
    b .L0802C50C
    .align 2, 0
.L0802C4F0: .4byte 0x0000270F
.L0802C4F4: .4byte gBmMapUnit
.L0802C4F8: .4byte gBmMapSize
.L0802C4FC: .4byte gBmMapMovement
.L0802C500: .4byte gBmMapHidden
.L0802C504: .4byte gBmMapTerrain
.L0802C508:
    subs r0, r0, r5
    adds r0, r2, r0
.L0802C50C:
    ldr r1, [sp, #4]
    cmp r1, r0
    blt .L0802C51C
    str r0, [sp, #4]
    mov r0, sb
    str r4, [r0]
    mov r1, sl
    str r5, [r1]
.L0802C51C:
    subs r4, #1
    cmp r4, #0
    bge .L0802C488
.L0802C522:
    mov r5, r8
    cmp r5, #0
    bge .L0802C476
.L0802C528:
    mov r1, sb
    ldr r0, [r1]
    cmp r0, #0
    blt .L0802C538
    mov r1, sl
    ldr r0, [r1]
    cmp r0, #0
    bge .L0802C626
.L0802C538:
    ldr r0, .L0802C638 @ =0x0000270F
    str r0, [sp, #4]
    movs r0, #0x10
    ldrsb r0, [r7, r0]
    movs r1, #0x11
    ldrsb r1, [r7, r1]
    ldr r2, .L0802C63C @ =0x08BE3C16
    bl GenerateExtendedMovementMap
    movs r0, #0x11
    ldrsb r0, [r7, r0]
    ldr r1, .L0802C640 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r7, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r1, #0xff
    strb r1, [r0]
    ldr r0, .L0802C644 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0802C602
.L0802C56E:
    ldr r0, .L0802C644 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r0, r5, #1
    mov r8, r0
    cmp r4, #0
    blt .L0802C5FC
    lsls r6, r5, #2
.L0802C580:
    ldr r0, .L0802C648 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0802C5F6
    ldr r0, .L0802C640 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0802C5F6
    ldr r0, .L0802C64C @ =gBmMapHidden
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r1, [r0]
    adds r1, r1, r4
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0802C5F6
    ldr r0, .L0802C650 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    ldr r0, [sp]
    bl CanUnitCrossTerrain
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802C5F6
    movs r0, #0x10
    ldrsb r0, [r7, r0]
    subs r2, r4, r0
    cmp r2, #0
    bge .L0802C5D8
    subs r2, r0, r4
.L0802C5D8:
    movs r1, #0x11
    ldrsb r1, [r7, r1]
    subs r0, r5, r1
    cmp r0, #0
    bge .L0802C5E4
    subs r0, r1, r5
.L0802C5E4:
    adds r0, r2, r0
    ldr r1, [sp, #4]
    cmp r1, r0
    blt .L0802C5F6
    str r0, [sp, #4]
    mov r0, sb
    str r4, [r0]
    mov r1, sl
    str r5, [r1]
.L0802C5F6:
    subs r4, #1
    cmp r4, #0
    bge .L0802C580
.L0802C5FC:
    mov r5, r8
    cmp r5, #0
    bge .L0802C56E
.L0802C602:
    mov r1, sb
    ldr r0, [r1]
    cmp r0, #0
    blt .L0802C612
    mov r1, sl
    ldr r0, [r1]
    cmp r0, #0
    bge .L0802C626
.L0802C612:
    ldr r1, [sp]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    mov r1, sb
    str r0, [r1]
    ldr r1, [sp]
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    mov r1, sl
    str r0, [r1]
.L0802C626:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C638: .4byte 0x0000270F
.L0802C63C: .4byte 0x08BE3C16
.L0802C640: .4byte gBmMapUnit
.L0802C644: .4byte gBmMapSize
.L0802C648: .4byte gBmMapMovement
.L0802C64C: .4byte gBmMapHidden
.L0802C650: .4byte gBmMapTerrain
    func_end GetRescueStaffTargetPosition

    thumb_func_start DoItemRescueStaffAction
DoItemRescueStaffAction: @ 0x0802C654
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r4, .L0802C6C4 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r1, r0, #0
    add r3, sp, #4
    adds r0, r5, #0
    mov r2, sp
    bl GetRescueStaffTargetPosition
    ldrb r0, [r4, #0xd]
    bl GetUnit
    ldr r1, [sp]
    strb r1, [r0, #0x10]
    ldrb r0, [r4, #0xd]
    bl GetUnit
    ldr r1, [sp, #4]
    strb r1, [r0, #0x11]
    ldr r0, .L0802C6C8 @ =0x0203A470
    ldr r1, [sp]
    adds r2, r0, #0
    adds r2, #0x73
    strb r1, [r2]
    ldr r1, [sp, #4]
    adds r0, #0x74
    strb r1, [r0]
    adds r0, r6, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C6C4: .4byte gActionSt
.L0802C6C8: .4byte 0x0203A470
    func_end DoItemRescueStaffAction

    thumb_func_start func_0802C6CC
func_0802C6CC: @ 0x0802C6CC
    push {lr}
    bl func_08034578
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0802C6CC

    thumb_func_start func_0802C6DC
func_0802C6DC: @ 0x0802C6DC
    push {lr}
    ldr r0, .L0802C704 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    bl func_0806E2B8
    bl EndMu
    bl RefreshEntityMaps
    bl RenderMap
    bl RefreshUnitSprites
    bl ForceSyncUnitSpriteSheet
    pop {r1}
    bx r1
    .align 2, 0
.L0802C704: .4byte gActionSt
    func_end func_0802C6DC

    thumb_func_start func_0802C708
func_0802C708: @ 0x0802C708
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802C760 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xd]
    bl GetUnit
    ldrb r1, [r4, #0x13]
    strb r1, [r0, #0x10]
    ldrb r0, [r4, #0xd]
    bl GetUnit
    ldrb r1, [r4, #0x14]
    strb r1, [r0, #0x11]
    ldr r0, .L0802C764 @ =0x0203A470
    ldrb r1, [r4, #0x13]
    adds r2, r0, #0
    adds r2, #0x73
    strb r1, [r2]
    ldrb r1, [r4, #0x14]
    adds r0, #0x74
    strb r1, [r0]
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    ldr r0, .L0802C768 @ =0x08B945C8
    adds r1, r5, #0
    bl Proc_StartBlocking
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C760: .4byte gActionSt
.L0802C764: .4byte 0x0203A470
.L0802C768: .4byte 0x08B945C8
    func_end func_0802C708

    thumb_func_start DoItemAttackStaffAction
DoItemAttackStaffAction: @ 0x0802C76C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802C7C0 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r5, #0
    bl GetOffensiveStaffAccuracy
    ldr r4, .L0802C7C4 @ =0x0203A3F0
    adds r1, r4, #0
    adds r1, #0x64
    strh r0, [r1]
    bl RandRoll
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802C7CC
    ldr r0, .L0802C7C8 @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #2
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    b .L0802C808
    .align 2, 0
.L0802C7C0: .4byte gActionSt
.L0802C7C4: .4byte 0x0203A3F0
.L0802C7C8: .4byte 0x0203A50C
.L0802C7CC:
    adds r0, r4, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x51
    beq .L0802C800
    cmp r0, #0x51
    bgt .L0802C7E4
    cmp r0, #0x50
    beq .L0802C7F4
    b .L0802C808
.L0802C7E4:
    cmp r0, #0x52
    bne .L0802C808
    ldr r0, .L0802C7F0 @ =0x0203A470
    adds r0, #0x6f
    movs r1, #4
    b .L0802C806
    .align 2, 0
.L0802C7F0: .4byte 0x0203A470
.L0802C7F4:
    ldr r0, .L0802C7FC @ =0x0203A470
    adds r0, #0x6f
    movs r1, #3
    b .L0802C806
    .align 2, 0
.L0802C7FC: .4byte 0x0203A470
.L0802C800:
    ldr r0, .L0802C818 @ =0x0203A470
    adds r0, #0x6f
    movs r1, #2
.L0802C806:
    strb r1, [r0]
.L0802C808:
    adds r0, r6, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C818: .4byte 0x0203A470
    func_end DoItemAttackStaffAction

    thumb_func_start DoItemFortifyStaffAction
DoItemFortifyStaffAction: @ 0x0802C81C
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r4, .L0802C890 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl func_080245C0
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r4, [r4, #0x12]
    lsls r1, r4, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r1, [r0]
    adds r0, r5, #0
    bl GetUnitItemHealAmount
    adds r6, r0, #0
    bl CountTargets
    adds r5, r0, #0
    movs r4, #0
    cmp r4, r5
    bge .L0802C880
.L0802C864:
    adds r0, r4, #0
    bl GetTarget
    ldrb r0, [r0, #2]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetUnit
    adds r1, r6, #0
    bl AddUnitHp
    adds r4, #1
    cmp r4, r5
    blt .L0802C864
.L0802C880:
    adds r0, r7, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C890: .4byte gActionSt
    func_end DoItemFortifyStaffAction

    thumb_func_start func_0802C894
func_0802C894: @ 0x0802C894
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802C8CC @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldr r0, .L0802C8D0 @ =0x0203A470
    ldrb r1, [r4, #0x13]
    strb r1, [r0, #0x10]
    ldrb r2, [r4, #0x14]
    strb r2, [r0, #0x11]
    adds r3, r0, #0
    adds r3, #0x73
    strb r1, [r3]
    adds r0, #0x74
    strb r2, [r0]
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C8CC: .4byte gActionSt
.L0802C8D0: .4byte 0x0203A470
    func_end func_0802C894

    thumb_func_start func_0802C8D4
func_0802C8D4: @ 0x0802C8D4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802C928 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xd]
    bl GetUnit
    ldrb r2, [r4, #0x15]
    lsls r1, r2, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl MakeNewItem
    ldrb r4, [r4, #0x15]
    lsls r1, r4, #1
    adds r5, #0x1e
    adds r5, r5, r1
    strh r0, [r5]
    adds r0, r6, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C928: .4byte gActionSt
    func_end func_0802C8D4

    thumb_func_start func_0802C92C
func_0802C92C: @ 0x0802C92C
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r4, .L0802C990 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl func_080249FC
    bl CountTargets
    adds r6, r0, #0
    movs r5, #0
    cmp r5, r6
    bge .L0802C980
.L0802C954:
    adds r0, r5, #0
    bl GetTarget
    ldrb r0, [r0, #2]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetUnit
    adds r4, r0, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r4, #0
    bl SetUnitHp
    adds r0, r4, #0
    movs r1, #0
    bl SetUnitStatus
    adds r5, #1
    cmp r5, r6
    blt .L0802C954
.L0802C980:
    adds r0, r7, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C990: .4byte gActionSt
    func_end func_0802C92C

    thumb_func_start func_0802C994
func_0802C994: @ 0x0802C994
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r5, .L0802C9EC @ =gActionSt
    ldrb r0, [r5, #0xc]
    bl GetUnit
    ldrb r1, [r5, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r5, #0xc]
    bl GetUnit
    adds r1, r4, #0
    bl AddUnitHp
    ldrb r0, [r5, #0xc]
    bl GetUnit
    bl GetUnitCurrentHp
    ldr r1, .L0802C9F0 @ =0x0203A50C
    ldr r1, [r1]
    ldr r4, .L0802C9F4 @ =0x0203A3F0
    ldrb r2, [r4, #0x13]
    subs r0, r2, r0
    strb r0, [r1, #3]
    ldrb r0, [r5, #0xc]
    bl GetUnit
    bl GetUnitCurrentHp
    strb r0, [r4, #0x13]
    adds r4, #0x4a
    movs r0, #0x6b
    strh r0, [r4]
    adds r0, r6, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C9EC: .4byte gActionSt
.L0802C9F0: .4byte 0x0203A50C
.L0802C9F4: .4byte 0x0203A3F0
    func_end func_0802C994

    thumb_func_start func_0802C9F8
func_0802C9F8: @ 0x0802C9F8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802CA58 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r5, #0
    bl SetUnitHp
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl GetUnitCurrentHp
    ldr r1, .L0802CA5C @ =0x0203A50C
    ldr r1, [r1]
    ldr r5, .L0802CA60 @ =0x0203A3F0
    ldrb r2, [r5, #0x13]
    subs r0, r2, r0
    strb r0, [r1, #3]
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl GetUnitCurrentHp
    strb r0, [r5, #0x13]
    adds r0, r6, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CA58: .4byte gActionSt
.L0802CA5C: .4byte 0x0203A50C
.L0802CA60: .4byte 0x0203A3F0
    func_end func_0802C9F8

    thumb_func_start func_0802CA64
func_0802CA64: @ 0x0802CA64
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802CA9C @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r0, #0x31
    movs r1, #0xf
    ldrb r2, [r0]
    ands r1, r2
    movs r2, #0x70
    orrs r1, r2
    strb r1, [r0]
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CA9C: .4byte gActionSt
    func_end func_0802CA64

    thumb_func_start func_0802CAA0
func_0802CAA0: @ 0x0802CAA0
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802CAE0 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r0, #0x31
    movs r1, #0x10
    rsbs r1, r1, #0
    ldrb r2, [r0]
    ands r1, r2
    movs r2, #4
    orrs r1, r2
    strb r1, [r0]
    ldrb r0, [r4, #0xe]
    strb r0, [r4, #0x13]
    ldrb r0, [r4, #0xf]
    strb r0, [r4, #0x14]
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CAE0: .4byte gActionSt
    func_end func_0802CAA0

    thumb_func_start func_0802CAE4
func_0802CAE4: @ 0x0802CAE4
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802CB1C @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xc]
    bl GetUnit
    movs r1, #0
    bl SetUnitStatus
    ldr r0, .L0802CB20 @ =0x0203A3F0
    movs r1, #0
    bl SetUnitStatus
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CB1C: .4byte gActionSt
.L0802CB20: .4byte 0x0203A3F0
    func_end func_0802CAE4

    thumb_func_start func_0802CB24
func_0802CB24: @ 0x0802CB24
    push {r4, r5, lr}
    ldr r4, .L0802CBA0 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl UnitUpdateUsedItem
    ldrb r0, [r4, #0xc]
    bl GetUnit
    movs r5, #0x10
    ldrsb r5, [r0, r5]
    ldrb r0, [r4, #0xc]
    bl GetUnit
    movs r4, #0x11
    ldrsb r4, [r0, r4]
    subs r0, r5, #1
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r4, #0
    bl func_08078F40
    adds r0, r5, #1
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r4, #0
    bl func_08078F40
    subs r1, r4, #1
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r5, #0
    bl func_08078F40
    adds r1, r4, #1
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r5, #0
    bl func_08078F40
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078EFC
    ldr r0, .L0802CBA4 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802CB92
    movs r0, #0xb1
    bl m4aSongNumStart
.L0802CB92:
    ldr r0, .L0802CBA8 @ =0x0203A470
    adds r0, #0x6f
    movs r1, #0xff
    strb r1, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CBA0: .4byte gActionSt
.L0802CBA4: .4byte gPlaySt
.L0802CBA8: .4byte 0x0203A470
    func_end func_0802CB24

    thumb_func_start func_0802CBAC
func_0802CBAC: @ 0x0802CBAC
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r6, r0, #0
    adds r7, r1, #0
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    mov r8, r2
    movs r0, #1
    rsbs r0, r0, #0
    mov sb, r0
    cmp r7, sb
    beq .L0802CBDE
    ldr r3, .L0802CC58 @ =0x0203A3F0
    ldr r1, .L0802CC5C @ =0x0203A470
    lsls r2, r7, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r2
    ldrh r0, [r0]
    adds r1, #0x4a
    strh r0, [r1]
    adds r3, #0x4a
    strh r0, [r3]
.L0802CBDE:
    adds r0, r6, #0
    bl GetUnitEquippedWeapon
    ldr r4, .L0802CC58 @ =0x0203A3F0
    ldr r5, .L0802CC5C @ =0x0203A470
    adds r1, r5, #0
    adds r1, #0x48
    strh r0, [r1]
    adds r1, r4, #0
    adds r1, #0x48
    strh r0, [r1]
    adds r0, r5, #0
    adds r1, r6, #0
    bl InitBattleUnitWithoutBonuses
    adds r0, r6, #0
    bl UnitPromote
    adds r0, r4, #0
    adds r1, r6, #0
    bl InitBattleUnitWithoutBonuses
    adds r0, r4, #0
    adds r1, r5, #0
    bl GenerateBattleUnitStatGainsComparatively
    adds r0, r4, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r5, #0
    bl SetBattleUnitTerrainBonusesAuto
    mov r0, r8
    cmp r0, #0
    beq .L0802CC2C
    ldr r0, [r6, #0xc]
    movs r1, #0x40
    orrs r0, r1
    str r0, [r6, #0xc]
.L0802CC2C:
    cmp r7, sb
    beq .L0802CC38
    adds r0, r6, #0
    adds r1, r7, #0
    bl UnitUpdateUsedItem
.L0802CC38:
    ldr r1, .L0802CC60 @ =0x0203A4F0
    movs r0, #0
    strh r0, [r1]
    movs r0, #0x80
    strb r0, [r1, #2]
    movs r0, #0
    strb r0, [r1, #3]
    ldr r1, .L0802CC64 @ =0x0203A3D8
    movs r0, #0x10
    strh r0, [r1]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CC58: .4byte 0x0203A3F0
.L0802CC5C: .4byte 0x0203A470
.L0802CC60: .4byte 0x0203A4F0
.L0802CC64: .4byte 0x0203A3D8
    func_end func_0802CBAC

    thumb_func_start DoItemPromoteAction
DoItemPromoteAction: @ 0x0802CC68
    push {r4, lr}
    ldr r4, .L0802CC84 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    movs r2, #1
    bl func_0802CBAC
    bl BeginBattleAnimations
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CC84: .4byte gActionSt
    func_end DoItemPromoteAction

    thumb_func_start func_0802CC88
func_0802CC88: @ 0x0802CC88
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    adds r6, r0, #0
    ldr r4, .L0802CD14 @ =0x0203A3F0
    ldr r5, .L0802CD18 @ =0x0203A470
    adds r0, r5, #0
    adds r0, #0x4a
    movs r2, #0
    mov sb, r2
    movs r2, #0
    mov r8, r2
    strh r1, [r0]
    ldr r2, .L0802CD1C @ =0x0000FFFF
    adds r0, r2, #0
    adds r2, r1, #0
    ands r2, r0
    adds r0, r4, #0
    adds r0, #0x4a
    strh r2, [r0]
    adds r0, r5, #0
    adds r0, #0x48
    strh r1, [r0]
    adds r0, r4, #0
    adds r0, #0x48
    strh r2, [r0]
    adds r0, r5, #0
    adds r1, r6, #0
    bl InitBattleUnit
    adds r0, r6, #0
    bl UnitPromote
    adds r0, r4, #0
    adds r1, r6, #0
    bl InitBattleUnit
    adds r0, r4, #0
    adds r1, r5, #0
    bl GenerateBattleUnitStatGainsComparatively
    adds r0, r4, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r5, #0
    bl SetBattleUnitTerrainBonusesAuto
    ldr r0, .L0802CD20 @ =0x0203A4F0
    mov r1, r8
    strh r1, [r0]
    movs r1, #0x80
    strb r1, [r0, #2]
    mov r2, sb
    strb r2, [r0, #3]
    ldr r1, .L0802CD24 @ =0x0203A3D8
    movs r0, #0x10
    strh r0, [r1]
    bl BeginBattleAnimations
    ldr r0, [r6, #0xc]
    movs r1, #1
    orrs r0, r1
    str r0, [r6, #0xc]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CD14: .4byte 0x0203A3F0
.L0802CD18: .4byte 0x0203A470
.L0802CD1C: .4byte 0x0000FFFF
.L0802CD20: .4byte 0x0203A4F0
.L0802CD24: .4byte 0x0203A3D8
    func_end func_0802CC88

    thumb_func_start ApplyItemStatBoost
ApplyItemStatBoost: @ 0x0802CD28
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r7, r1, #0
    movs r5, #0
    lsls r0, r7, #1
    adds r1, r4, #0
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r6, [r1]
    adds r0, r6, #0
    bl GetItemIndex
    cmp r0, #0x88
    bne .L0802CD60
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #6
    orrs r0, r1
    str r0, [r4, #0xc]
    adds r0, r4, #0
    adds r1, r7, #0
    bl UnitUpdateUsedItem
    ldr r0, .L0802CD5C @ =0x00000719
    b .L0802CE56
    .align 2, 0
.L0802CD5C: .4byte 0x00000719
.L0802CD60:
    adds r0, r6, #0
    bl GetItemBonuses
    ldrb r2, [r4, #0x12]
    ldrb r3, [r0]
    adds r1, r2, r3
    strb r1, [r4, #0x12]
    ldrb r2, [r4, #0x13]
    ldrb r3, [r0]
    adds r1, r2, r3
    strb r1, [r4, #0x13]
    ldrb r2, [r4, #0x14]
    ldrb r3, [r0, #1]
    adds r1, r2, r3
    strb r1, [r4, #0x14]
    ldrb r2, [r4, #0x15]
    ldrb r3, [r0, #2]
    adds r1, r2, r3
    strb r1, [r4, #0x15]
    ldrb r2, [r4, #0x16]
    ldrb r3, [r0, #3]
    adds r1, r2, r3
    strb r1, [r4, #0x16]
    ldrb r2, [r4, #0x17]
    ldrb r3, [r0, #4]
    adds r1, r2, r3
    strb r1, [r4, #0x17]
    ldrb r2, [r4, #0x18]
    ldrb r3, [r0, #5]
    adds r1, r2, r3
    strb r1, [r4, #0x18]
    ldrb r2, [r4, #0x19]
    ldrb r3, [r0, #6]
    adds r1, r2, r3
    strb r1, [r4, #0x19]
    ldrb r2, [r4, #0x1d]
    ldrb r3, [r0, #7]
    adds r1, r2, r3
    strb r1, [r4, #0x1d]
    ldrb r1, [r4, #0x1a]
    ldrb r0, [r0, #8]
    adds r0, r1, r0
    strb r0, [r4, #0x1a]
    adds r0, r4, #0
    bl UnitCheckStatCaps
    adds r0, r4, #0
    adds r1, r7, #0
    bl UnitUpdateUsedItem
    adds r0, r6, #0
    bl GetItemIndex
    subs r0, #0x5a
    cmp r0, #8
    bhi .L0802CE54
    lsls r0, r0, #2
    ldr r1, .L0802CDDC @ =.L0802CDE0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802CDDC: .4byte .L0802CDE0
.L0802CDE0: @ jump table
    .4byte .L0802CE14 @ case 0
    .4byte .L0802CE44 @ case 1
    .4byte .L0802CE04 @ case 2
    .4byte .L0802CE24 @ case 3
    .4byte .L0802CE0C @ case 4
    .4byte .L0802CE1A @ case 5
    .4byte .L0802CE2C @ case 6
    .4byte .L0802CE34 @ case 7
    .4byte .L0802CE3C @ case 8
.L0802CE04:
    ldr r5, .L0802CE08 @ =0x00000711
    b .L0802CE54
    .align 2, 0
.L0802CE08: .4byte 0x00000711
.L0802CE0C:
    ldr r5, .L0802CE10 @ =0x00000713
    b .L0802CE54
    .align 2, 0
.L0802CE10: .4byte 0x00000713
.L0802CE14:
    movs r5, #0xe3
    lsls r5, r5, #3
    b .L0802CE54
.L0802CE1A:
    ldr r5, .L0802CE20 @ =0x00000714
    b .L0802CE54
    .align 2, 0
.L0802CE20: .4byte 0x00000714
.L0802CE24:
    ldr r5, .L0802CE28 @ =0x00000712
    b .L0802CE54
    .align 2, 0
.L0802CE28: .4byte 0x00000712
.L0802CE2C:
    ldr r5, .L0802CE30 @ =0x00000715
    b .L0802CE54
    .align 2, 0
.L0802CE30: .4byte 0x00000715
.L0802CE34:
    ldr r5, .L0802CE38 @ =0x00000716
    b .L0802CE54
    .align 2, 0
.L0802CE38: .4byte 0x00000716
.L0802CE3C:
    ldr r5, .L0802CE40 @ =0x00000717
    b .L0802CE54
    .align 2, 0
.L0802CE40: .4byte 0x00000717
.L0802CE44:
    adds r0, r4, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    ldr r5, .L0802CE5C @ =0x0000070F
    cmp r0, #0
    beq .L0802CE54
    adds r5, #1
.L0802CE54:
    adds r0, r5, #0
.L0802CE56:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0802CE5C: .4byte 0x0000070F
    func_end ApplyItemStatBoost

    thumb_func_start DoItemStatBoostAction
DoItemStatBoostAction: @ 0x0802CE60
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r4, .L0802CEB8 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    lsls r2, r1, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r6, [r1]
    ldr r1, .L0802CEBC @ =0x0203A470
    adds r1, #0x6f
    movs r2, #0xff
    strb r2, [r1]
    ldrb r1, [r4, #0x12]
    bl ApplyItemStatBoost
    adds r5, r0, #0
    ldr r0, .L0802CEC0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802CE9A
    ldr r0, .L0802CEC4 @ =0x0000037A
    bl m4aSongNumStart
.L0802CE9A:
    adds r0, r6, #0
    bl GetItemIcon
    adds r4, r0, #0
    adds r0, r5, #0
    bl DecodeMsg
    adds r2, r0, #0
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_0801F100
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CEB8: .4byte gActionSt
.L0802CEBC: .4byte 0x0203A470
.L0802CEC0: .4byte gPlaySt
.L0802CEC4: .4byte 0x0000037A
    func_end DoItemStatBoostAction

    thumb_func_start func_0802CEC8
func_0802CEC8: @ 0x0802CEC8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802CF04 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0x13]
    ldrb r1, [r4, #0x14]
    movs r2, #0xb
    movs r3, #0
    bl func_0802BACC
    adds r0, r5, #0
    bl func_0802A5EC
    ldr r0, .L0802CF08 @ =0x0203A470
    adds r0, #0x6f
    movs r1, #0xff
    strb r1, [r0]
    ldrb r1, [r4, #0x13]
    ldrb r2, [r4, #0x14]
    adds r0, r5, #0
    bl func_080212F8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CF04: .4byte gActionSt
.L0802CF08: .4byte 0x0203A470
    func_end func_0802CEC8

    thumb_func_start func_0802CF0C
func_0802CF0C: @ 0x0802CF0C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802CF44 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0x13]
    ldrb r1, [r4, #0x14]
    bl func_0802C1E8
    adds r0, r5, #0
    bl func_0802A5EC
    ldrb r1, [r4, #0x13]
    ldrb r2, [r4, #0x14]
    adds r0, r5, #0
    bl func_0802061C
    ldr r0, .L0802CF48 @ =0x0203A470
    adds r0, #0x6f
    movs r1, #0xff
    strb r1, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CF44: .4byte gActionSt
.L0802CF48: .4byte 0x0203A470
    func_end func_0802CF0C

    thumb_func_start func_0802CF4C
func_0802CF4C: @ 0x0802CF4C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802CF7C @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0x13]
    ldrb r1, [r4, #0x14]
    movs r2, #0xa
    movs r3, #8
    bl func_0802BACC
    adds r0, r5, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802CF7C: .4byte gActionSt
    func_end func_0802CF4C

    thumb_func_start func_0802CF80
func_0802CF80: @ 0x0802CF80
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r5, #0
    ldr r4, .L0802CFC0 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x12]
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r4, [r4, #0x12]
    lsls r1, r4, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x7d
    beq .L0802CFD2
    cmp r0, #0x7d
    bgt .L0802CFC4
    cmp r0, #0x7c
    beq .L0802CFCE
    b .L0802CFDC
    .align 2, 0
.L0802CFC0: .4byte gActionSt
.L0802CFC4:
    cmp r0, #0x7e
    beq .L0802CFD6
    cmp r0, #0x7f
    beq .L0802CFDA
    b .L0802CFDC
.L0802CFCE:
    movs r5, #5
    b .L0802CFDC
.L0802CFD2:
    movs r5, #6
    b .L0802CFDC
.L0802CFD6:
    movs r5, #7
    b .L0802CFDC
.L0802CFDA:
    movs r5, #8
.L0802CFDC:
    ldr r0, .L0802D004 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    adds r1, r5, #0
    movs r2, #1
    bl SetUnitStatusExt
    ldr r1, .L0802D008 @ =0x0203A3D8
    movs r0, #0x80
    lsls r0, r0, #2
    strh r0, [r1]
    adds r0, r6, #0
    bl func_0802A5EC
    bl BeginBattleAnimations
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D004: .4byte gActionSt
.L0802D008: .4byte 0x0203A3D8
    func_end func_0802CF80

    thumb_func_start DoItemAction
DoItemAction: @ 0x0802D00C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802D040 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r4, [r4, #0x12]
    lsls r1, r4, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl GetItemIndex
    ldr r1, .L0802D044 @ =0x0203A3F0
    adds r1, #0x7e
    movs r2, #0
    strb r2, [r1]
    subs r0, #0x4a
    cmp r0, #0x50
    bls .L0802D036
    b .L0802D234
.L0802D036:
    lsls r0, r0, #2
    ldr r1, .L0802D048 @ =.L0802D04C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802D040: .4byte gActionSt
.L0802D044: .4byte 0x0203A3F0
.L0802D048: .4byte .L0802D04C
.L0802D04C: @ jump table
    .4byte .L0802D190 @ case 0
    .4byte .L0802D190 @ case 1
    .4byte .L0802D190 @ case 2
    .4byte .L0802D190 @ case 3
    .4byte .L0802D1A0 @ case 4
    .4byte .L0802D1A8 @ case 5
    .4byte .L0802D198 @ case 6
    .4byte .L0802D198 @ case 7
    .4byte .L0802D198 @ case 8
    .4byte .L0802D1C0 @ case 9
    .4byte .L0802D1B0 @ case 10
    .4byte .L0802D226 @ case 11
    .4byte .L0802D1D0 @ case 12
    .4byte .L0802D1C8 @ case 13
    .4byte .L0802D1B8 @ case 14
    .4byte .L0802D234 @ case 15
    .4byte .L0802D20E @ case 16
    .4byte .L0802D20E @ case 17
    .4byte .L0802D20E @ case 18
    .4byte .L0802D20E @ case 19
    .4byte .L0802D20E @ case 20
    .4byte .L0802D20E @ case 21
    .4byte .L0802D20E @ case 22
    .4byte .L0802D20E @ case 23
    .4byte .L0802D20E @ case 24
    .4byte .L0802D208 @ case 25
    .4byte .L0802D208 @ case 26
    .4byte .L0802D208 @ case 27
    .4byte .L0802D208 @ case 28
    .4byte .L0802D208 @ case 29
    .4byte .L0802D202 @ case 30
    .4byte .L0802D202 @ case 31
    .4byte .L0802D202 @ case 32
    .4byte .L0802D1E0 @ case 33
    .4byte .L0802D1EA @ case 34
    .4byte .L0802D1F2 @ case 35
    .4byte .L0802D1FA @ case 36
    .4byte .L0802D1D8 @ case 37
    .4byte .L0802D234 @ case 38
    .4byte .L0802D234 @ case 39
    .4byte .L0802D234 @ case 40
    .4byte .L0802D234 @ case 41
    .4byte .L0802D234 @ case 42
    .4byte .L0802D234 @ case 43
    .4byte .L0802D234 @ case 44
    .4byte .L0802D234 @ case 45
    .4byte .L0802D202 @ case 46
    .4byte .L0802D216 @ case 47
    .4byte .L0802D21E @ case 48
    .4byte .L0802D234 @ case 49
    .4byte .L0802D22E @ case 50
    .4byte .L0802D22E @ case 51
    .4byte .L0802D22E @ case 52
    .4byte .L0802D22E @ case 53
    .4byte .L0802D234 @ case 54
    .4byte .L0802D234 @ case 55
    .4byte .L0802D234 @ case 56
    .4byte .L0802D234 @ case 57
    .4byte .L0802D234 @ case 58
    .4byte .L0802D234 @ case 59
    .4byte .L0802D234 @ case 60
    .4byte .L0802D208 @ case 61
    .4byte .L0802D20E @ case 62
    .4byte .L0802D208 @ case 63
    .4byte .L0802D234 @ case 64
    .4byte .L0802D208 @ case 65
    .4byte .L0802D234 @ case 66
    .4byte .L0802D234 @ case 67
    .4byte .L0802D234 @ case 68
    .4byte .L0802D234 @ case 69
    .4byte .L0802D234 @ case 70
    .4byte .L0802D234 @ case 71
    .4byte .L0802D234 @ case 72
    .4byte .L0802D234 @ case 73
    .4byte .L0802D234 @ case 74
    .4byte .L0802D234 @ case 75
    .4byte .L0802D208 @ case 76
    .4byte .L0802D234 @ case 77
    .4byte .L0802D234 @ case 78
    .4byte .L0802D234 @ case 79
    .4byte .L0802D1E0 @ case 80
.L0802D190:
    adds r0, r5, #0
    bl DoItemHealStaffAction
    b .L0802D234
.L0802D198:
    adds r0, r5, #0
    bl DoItemAttackStaffAction
    b .L0802D234
.L0802D1A0:
    adds r0, r5, #0
    bl DoItemFortifyStaffAction
    b .L0802D234
.L0802D1A8:
    adds r0, r5, #0
    bl DoItemRestoreStaffAction
    b .L0802D234
.L0802D1B0:
    adds r0, r5, #0
    bl DoItemRescueStaffAction
    b .L0802D234
.L0802D1B8:
    adds r0, r5, #0
    bl func_0802C3E8
    b .L0802D234
.L0802D1C0:
    adds r0, r5, #0
    bl func_0802C708
    b .L0802D234
.L0802D1C8:
    adds r0, r5, #0
    bl func_0802C894
    b .L0802D234
.L0802D1D0:
    adds r0, r5, #0
    bl func_0802C8D4
    b .L0802D234
.L0802D1D8:
    adds r0, r5, #0
    bl func_0802CAA0
    b .L0802D234
.L0802D1E0:
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0802C994
    b .L0802D234
.L0802D1EA:
    adds r0, r5, #0
    bl func_0802C9F8
    b .L0802D234
.L0802D1F2:
    adds r0, r5, #0
    bl func_0802CA64
    b .L0802D234
.L0802D1FA:
    adds r0, r5, #0
    bl func_0802CAE4
    b .L0802D234
.L0802D202:
    bl func_0802CB24
    b .L0802D234
.L0802D208:
    bl DoItemPromoteAction
    b .L0802D234
.L0802D20E:
    adds r0, r5, #0
    bl DoItemStatBoostAction
    b .L0802D234
.L0802D216:
    adds r0, r5, #0
    bl func_0802CEC8
    b .L0802D234
.L0802D21E:
    adds r0, r5, #0
    bl func_0802CF0C
    b .L0802D234
.L0802D226:
    adds r0, r5, #0
    bl func_0802CF4C
    b .L0802D234
.L0802D22E:
    adds r0, r5, #0
    bl func_0802CF80
.L0802D234:
    ldr r0, .L0802D250 @ =0x0203A470
    adds r0, #0x6f
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    blt .L0802D24A
    ldr r0, .L0802D254 @ =0x08B945E8
    adds r1, r5, #0
    bl Proc_StartBlocking
.L0802D24A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D250: .4byte 0x0203A470
.L0802D254: .4byte 0x08B945E8
    func_end DoItemAction

    thumb_func_start ApplyStatusChange
ApplyStatusChange: @ 0x0802D258
    push {r4, lr}
    ldr r0, .L0802D284 @ =0x0203A470
    adds r4, r0, #0
    adds r4, #0x6f
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #0
    blt .L0802D27C
    ldr r0, .L0802D288 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    movs r1, #0
    ldrsb r1, [r4, r1]
    bl SetUnitStatus
    movs r0, #0xff
    strb r0, [r4]
.L0802D27C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D284: .4byte 0x0203A470
.L0802D288: .4byte gActionSt
    func_end ApplyStatusChange
