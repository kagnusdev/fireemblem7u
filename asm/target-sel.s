    .include "asm_prelude.inc"

    thumb_func_start func_08023944
func_08023944: @ 0x08023944
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r0, .L080239A4 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L0802399C
.L08023954:
    ldr r0, .L080239A4 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r6, r1, #1
    cmp r4, #0
    blt .L08023996
    lsls r5, r1, #2
.L08023964:
    ldr r0, .L080239A8 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08023990
    ldr r0, .L080239AC @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08023990
    bl GetUnit
    bl _call_via_r7
.L08023990:
    subs r4, #1
    cmp r4, #0
    bge .L08023964
.L08023996:
    adds r1, r6, #0
    cmp r1, #0
    bge .L08023954
.L0802399C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080239A4: .4byte gBmMapSize
.L080239A8: .4byte gBmMapMovement
.L080239AC: .4byte gBmMapUnit
    func_end func_08023944

    thumb_func_start func_080239B0
func_080239B0: @ 0x080239B0
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r0, .L08023A10 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L08023A08
.L080239C0:
    ldr r0, .L08023A10 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r6, r1, #1
    cmp r4, #0
    blt .L08023A02
    lsls r5, r1, #2
.L080239D0:
    ldr r0, .L08023A14 @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L080239FC
    ldr r0, .L08023A18 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L080239FC
    bl GetUnit
    bl _call_via_r7
.L080239FC:
    subs r4, #1
    cmp r4, #0
    bge .L080239D0
.L08023A02:
    adds r1, r6, #0
    cmp r1, #0
    bge .L080239C0
.L08023A08:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08023A10: .4byte gBmMapSize
.L08023A14: .4byte gBmMapRange
.L08023A18: .4byte gBmMapUnit
    func_end func_080239B0

    thumb_func_start func_08023A1C
func_08023A1C: @ 0x08023A1C
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r0, .L08023A6C @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L08023A64
.L08023A2C:
    ldr r0, .L08023A6C @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r6, r5, #1
    cmp r4, #0
    blt .L08023A5E
.L08023A3A:
    ldr r0, .L08023A70 @ =gBmMapRange
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08023A58
    adds r0, r4, #0
    adds r1, r5, #0
    bl _call_via_r7
.L08023A58:
    subs r4, #1
    cmp r4, #0
    bge .L08023A3A
.L08023A5E:
    adds r5, r6, #0
    cmp r5, #0
    bge .L08023A2C
.L08023A64:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08023A6C: .4byte gBmMapSize
.L08023A70: .4byte gBmMapRange
    func_end func_08023A1C

    thumb_func_start func_08023A74
func_08023A74: @ 0x08023A74
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl BeginTargetList
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    bl MapAddInRange
    adds r0, r6, #0
    bl func_080239B0
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08023A74

    thumb_func_start func_08023AA8
func_08023AA8: @ 0x08023AA8
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl BeginTargetList
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    bl MapAddInRange
    adds r0, r6, #0
    bl func_08023A1C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08023AA8

    thumb_func_start func_08023ADC
func_08023ADC: @ 0x08023ADC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl BeginTargetList
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    movs r3, #1
    bl MapAddInRange
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    bl MapAddInRange
    adds r0, r6, #0
    bl func_08023A1C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08023ADC

    thumb_func_start func_08023B10
func_08023B10: @ 0x08023B10
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    mov r8, r0
    ldr r6, .L08023B5C @ =0x02033E40
    ldr r0, [r6]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    adds r0, r4, #0
    adds r1, r5, #0
    bl BeginTargetList
    ldr r0, [r6]
    bl GetUnitMagRange
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #1
    bl MapAddInRange
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    bl MapAddInRange
    mov r0, r8
    bl func_080239B0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08023B5C: .4byte 0x02033E40
    func_end func_08023B10

    thumb_func_start func_08023B60
func_08023B60: @ 0x08023B60
    push {r4, r5, r6, lr}
    movs r0, #0
    bl GetTrap
    adds r4, r0, #0
    ldrb r0, [r4, #2]
    cmp r0, #0
    beq .L08023C12
    ldr r6, .L08023C18 @ =gBmMapTerrain
    ldr r5, .L08023C1C @ =gBmMapRange
.L08023B74:
    cmp r0, #2
    bne .L08023C0A
    ldrb r1, [r4, #1]
    ldr r0, [r6]
    lsls r3, r1, #2
    adds r0, r3, r0
    ldrb r2, [r4]
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x1b
    bne .L08023BA8
    ldr r0, [r5]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08023BA8
    ldrb r3, [r4, #3]
    adds r0, r2, #0
    movs r2, #0
    bl EnlistTarget
.L08023BA8:
    ldrb r1, [r4, #1]
    ldr r0, [r6]
    lsls r3, r1, #2
    adds r0, r3, r0
    ldrb r2, [r4]
    ldr r0, [r0, #4]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x1b
    bne .L08023BDA
    ldr r0, [r5]
    adds r0, r3, r0
    ldr r0, [r0, #4]
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08023BDA
    adds r1, #1
    ldrb r3, [r4, #3]
    adds r0, r2, #0
    movs r2, #0
    bl EnlistTarget
.L08023BDA:
    ldrb r1, [r4, #1]
    ldr r0, [r6]
    lsls r3, r1, #2
    adds r0, r3, r0
    ldrb r2, [r4]
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x33
    bne .L08023C0A
    ldr r0, [r5]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08023C0A
    ldrb r3, [r4, #3]
    adds r0, r2, #0
    movs r2, #0
    bl EnlistTarget
.L08023C0A:
    adds r4, #8
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L08023B74
.L08023C12:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08023C18: .4byte gBmMapTerrain
.L08023C1C: .4byte gBmMapRange
    func_end func_08023B60

    thumb_func_start func_08023C20
func_08023C20: @ 0x08023C20
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08023C54 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08023C4E
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L08023C4E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08023C54: .4byte 0x02033E40
    func_end func_08023C20

    thumb_func_start ListAttackTargetsForWeapon
ListAttackTargetsForWeapon: @ 0x08023C58
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    mov r8, r1
    movs r5, #0x10
    ldrsb r5, [r0, r5]
    movs r6, #0x11
    ldrsb r6, [r0, r6]
    ldr r1, .L08023CB4 @ =0x02033E40
    str r0, [r1]
    adds r0, r5, #0
    adds r1, r6, #0
    bl BeginTargetList
    ldr r0, .L08023CB8 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    mov r0, r8
    bl func_0801736C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    mov r0, r8
    bl func_08017384
    adds r3, r0, #0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r5, #0
    adds r1, r6, #0
    adds r2, r4, #0
    bl func_0801B19C
    ldr r0, .L08023CBC @ =func_08023C20
    bl func_080239B0
    bl func_08023B60
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08023CB4: .4byte 0x02033E40
.L08023CB8: .4byte gBmMapRange
.L08023CBC: .4byte func_08023C20
    func_end ListAttackTargetsForWeapon

    thumb_func_start func_08023CC0
func_08023CC0: @ 0x08023CC0
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L08023D60 @ =0x02033E40
    ldr r0, [r5]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsSameFaction
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023D5A
    adds r1, r4, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    beq .L08023D1E
    ldr r0, [r5]
    ldrh r0, [r0, #0x1e]
    cmp r0, #0
    bne .L08023CF8
    ldrh r0, [r4, #0x1e]
    cmp r0, #0
    beq .L08023D1E
.L08023CF8:
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L08023D1E
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L08023D1E:
    ldr r0, [r4, #0xc]
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08023D5A
    ldrb r0, [r4, #0x1b]
    bl GetUnit
    adds r1, r0, #0
    movs r2, #0xb
    ldrsb r2, [r1, r2]
    movs r0, #0xc0
    ands r0, r2
    cmp r0, #0
    bne .L08023D5A
    ldr r0, .L08023D60 @ =0x02033E40
    ldr r0, [r0]
    ldrh r0, [r0, #0x1e]
    cmp r0, #0
    bne .L08023D4C
    ldrh r0, [r1, #0x1e]
    cmp r0, #0
    beq .L08023D5A
.L08023D4C:
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r3, #0
    bl EnlistTarget
.L08023D5A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08023D60: .4byte 0x02033E40
    func_end func_08023CC0

    thumb_func_start ListTradeTargets
ListTradeTargets: @ 0x08023D64
    push {r4, r5, r6, r7, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r6, .L08023DCC @ =0x02033E40
    str r0, [r6]
    ldr r0, .L08023DD0 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r7, .L08023DD4 @ =func_08023CC0
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    bl func_08023A74
    ldr r0, [r6]
    ldr r0, [r0, #0xc]
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08023DC6
    bl CountTargets
    adds r4, r0, #0
    ldr r0, [r6]
    ldrb r0, [r0, #0x1b]
    bl GetUnit
    bl _call_via_r7
    bl CountTargets
    cmp r4, r0
    beq .L08023DC6
    adds r0, r4, #0
    bl GetTarget
    ldr r1, [r6]
    ldrb r1, [r1, #0x10]
    strb r1, [r0]
    adds r0, r4, #0
    bl GetTarget
    ldr r1, [r6]
    ldrb r1, [r1, #0x11]
    strb r1, [r0, #1]
.L08023DC6:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08023DCC: .4byte 0x02033E40
.L08023DD0: .4byte gBmMapRange
.L08023DD4: .4byte func_08023CC0
    func_end ListTradeTargets

    thumb_func_start func_08023DD8
func_08023DD8: @ 0x08023DD8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L08023E34 @ =0x02033E40
    ldr r0, [r5]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023E2C
    adds r1, r4, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    beq .L08023E2C
    ldr r0, [r4, #0xc]
    movs r1, #0x30
    ands r0, r1
    cmp r0, #0
    bne .L08023E2C
    ldr r0, [r5]
    adds r1, r4, #0
    bl CanUnitRescue
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023E2C
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L08023E2C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08023E34: .4byte 0x02033E40
    func_end func_08023DD8

    thumb_func_start func_08023E38
func_08023E38: @ 0x08023E38
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08023E60 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08023E64 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08023E68 @ =func_08023DD8
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08023E60: .4byte 0x02033E40
.L08023E64: .4byte gBmMapRange
.L08023E68: .4byte func_08023DD8
    func_end func_08023E38

    thumb_func_start func_08023E6C
func_08023E6C: @ 0x08023E6C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    ldr r0, .L08023EB8 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r5, r6, #2
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08023EB0
    ldr r0, .L08023EBC @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0x1b]
    bl GetUnit
    ldr r1, .L08023EC0 @ =gBmMapTerrain
    ldr r1, [r1]
    adds r1, r5, r1
    ldr r1, [r1]
    adds r1, r1, r4
    ldrb r1, [r1]
    bl CanUnitCrossTerrain
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023EB0
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #0
    movs r3, #0
    bl EnlistTarget
.L08023EB0:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08023EB8: .4byte gBmMapUnit
.L08023EBC: .4byte 0x02033E40
.L08023EC0: .4byte gBmMapTerrain
    func_end func_08023E6C

    thumb_func_start func_08023EC4
func_08023EC4: @ 0x08023EC4
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08023EEC @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08023EF0 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08023EF4 @ =func_08023E6C
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023AA8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08023EEC: .4byte 0x02033E40
.L08023EF0: .4byte gBmMapRange
.L08023EF4: .4byte func_08023E6C
    func_end func_08023EC4

    thumb_func_start func_08023EF8
func_08023EF8: @ 0x08023EF8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L08023F60 @ =0x02033E40
    ldr r0, [r4]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r5, r1]
    bl AreUnitIdsSameFaction
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023F5A
    ldr r0, [r5, #0xc]
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08023F5A
    ldr r0, [r5]
    ldr r1, [r5, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L08023F5A
    ldr r4, [r4]
    ldrb r0, [r5, #0x1b]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    bl CanUnitRescue
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08023F5A
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0xb
    ldrsb r2, [r5, r2]
    movs r3, #0
    bl EnlistTarget
.L08023F5A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08023F60: .4byte 0x02033E40
    func_end func_08023EF8

    thumb_func_start func_08023F64
func_08023F64: @ 0x08023F64
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08023F8C @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08023F90 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08023F94 @ =func_08023EF8
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08023F8C: .4byte 0x02033E40
.L08023F90: .4byte gBmMapRange
.L08023F94: .4byte func_08023EF8
    func_end func_08023F64

    thumb_func_start func_08023F98
func_08023F98: @ 0x08023F98
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L08024014 @ =0x02033E40
    ldr r0, [r5]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsSameFaction
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802400C
    ldr r0, [r4, #0xc]
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    bne .L0802400C
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #4
    beq .L0802400C
    cmp r1, #2
    beq .L0802400C
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L0802400C
    ldr r0, [r5]
    ldrb r0, [r0, #0x1b]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    bl CanUnitRescue
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802400C
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L0802400C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024014: .4byte 0x02033E40
    func_end func_08023F98

    thumb_func_start func_08024018
func_08024018: @ 0x08024018
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024040 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024044 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08024048 @ =func_08023F98
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024040: .4byte 0x02033E40
.L08024044: .4byte gBmMapRange
.L08024048: .4byte func_08023F98
    func_end func_08024018

    thumb_func_start func_0802404C
func_0802404C: @ 0x0802404C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #4
    beq .L0802408A
    cmp r1, #2
    beq .L0802408A
    ldr r0, .L08024090 @ =0x02033E40
    ldr r0, [r0]
    ldr r0, [r0]
    ldrb r0, [r0, #4]
    ldr r1, [r4]
    ldrb r1, [r1, #4]
    bl func_080789FC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802408A
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    ldr r3, [r4]
    ldrb r3, [r3, #4]
    bl EnlistTarget
.L0802408A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08024090: .4byte 0x02033E40
    func_end func_0802404C

    thumb_func_start func_08024094
func_08024094: @ 0x08024094
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L080240BC @ =0x02033E40
    str r0, [r1]
    ldr r0, .L080240C0 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L080240C4 @ =func_0802404C
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080240BC: .4byte 0x02033E40
.L080240C0: .4byte gBmMapRange
.L080240C4: .4byte func_0802404C
    func_end func_08024094

    thumb_func_start func_080240C8
func_080240C8: @ 0x080240C8
    push {r4, r5, r6, r7, lr}
    ldr r4, .L0802416C @ =0x02033E40
    str r0, [r4]
    movs r2, #0x10
    ldrsb r2, [r0, r2]
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    adds r0, r2, #0
    bl BeginTargetList
    ldr r0, [r4]
    bl GetUnitSupporterCount
    adds r6, r0, #0
    movs r5, #0
    cmp r5, r6
    bge .L08024166
    adds r7, r4, #0
.L080240EC:
    ldr r0, [r7]
    adds r1, r5, #0
    bl func_0802664C
    adds r4, r0, #0
    cmp r4, #0
    beq .L08024160
    ldr r3, [r7]
    movs r2, #0x10
    ldrsb r2, [r3, r2]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    subs r1, r2, r0
    cmp r1, #0
    bge .L0802410C
    subs r1, r0, r2
.L0802410C:
    ldrb r3, [r3, #0x11]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    movs r2, #0x11
    ldrsb r2, [r4, r2]
    subs r0, r3, r2
    cmp r0, #0
    bge .L0802411E
    subs r0, r2, r3
.L0802411E:
    adds r0, r1, r0
    cmp r0, #1
    bne .L08024160
    ldr r0, [r7]
    adds r1, r5, #0
    bl func_08026778
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08024160
    ldr r0, [r4, #0xc]
    ldr r1, .L08024170 @ =0x0001002C
    ands r0, r1
    cmp r0, #0
    bne .L08024160
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #4
    beq .L08024160
    cmp r1, #2
    beq .L08024160
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    adds r3, r5, #0
    bl EnlistTarget
.L08024160:
    adds r5, #1
    cmp r5, r6
    blt .L080240EC
.L08024166:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802416C: .4byte 0x02033E40
.L08024170: .4byte 0x0001002C
    func_end func_080240C8

    thumb_func_start func_08024174
func_08024174: @ 0x08024174
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080241A8 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080241A2
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #1
    bl EnlistTarget
.L080241A2:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080241A8: .4byte 0x02033E40
    func_end func_08024174

    thumb_func_start func_080241AC
func_080241AC: @ 0x080241AC
    push {r4, r5, r6, r7, lr}
    movs r5, #0x10
    ldrsb r5, [r0, r5]
    movs r6, #0x11
    ldrsb r6, [r0, r6]
    ldr r1, .L0802420C @ =0x02033E40
    str r0, [r1]
    adds r0, r5, #0
    adds r1, r6, #0
    bl BeginTargetList
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08034710
    adds r7, r0, #0
    cmp r7, #0
    beq .L08024206
    ldr r0, .L08024210 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    adds r0, r7, #0
    bl func_0801736C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    adds r0, r7, #0
    bl func_08017384
    adds r3, r0, #0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r5, #0
    adds r1, r6, #0
    adds r2, r4, #0
    bl func_0801B19C
    ldr r0, .L08024214 @ =func_08024174
    bl func_080239B0
    bl func_08023B60
.L08024206:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802420C: .4byte 0x02033E40
.L08024210: .4byte gBmMapRange
.L08024214: .4byte func_08024174
    func_end func_080241AC

    thumb_func_start func_08024218
func_08024218: @ 0x08024218
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08024254 @ =gBmMapTerrain
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x1e
    bne .L0802424E
    lsls r0, r4, #0x18
    asrs r0, r0, #0x18
    lsls r1, r5, #0x18
    asrs r1, r1, #0x18
    bl func_08078F24
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802424E
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x1e
    movs r3, #0
    bl EnlistTarget
.L0802424E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024254: .4byte gBmMapTerrain
    func_end func_08024218

    thumb_func_start func_08024258
func_08024258: @ 0x08024258
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08024294 @ =gBmMapTerrain
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x14
    bne .L0802428E
    lsls r0, r4, #0x18
    asrs r0, r0, #0x18
    lsls r1, r5, #0x18
    asrs r1, r1, #0x18
    bl func_08078F24
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802428E
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x14
    movs r3, #0
    bl EnlistTarget
.L0802428E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024294: .4byte gBmMapTerrain
    func_end func_08024258

    thumb_func_start func_08024298
func_08024298: @ 0x08024298
    push {r4, r5, r6, lr}
    adds r4, r1, #0
    movs r5, #0x10
    ldrsb r5, [r0, r5]
    movs r6, #0x11
    ldrsb r6, [r0, r6]
    ldr r1, .L080242C8 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L080242CC @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    cmp r4, #0x14
    beq .L080242D4
    cmp r4, #0x1e
    bne .L080242DE
    ldr r2, .L080242D0 @ =func_08024218
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08023AA8
    b .L080242DE
    .align 2, 0
.L080242C8: .4byte 0x02033E40
.L080242CC: .4byte gBmMapRange
.L080242D0: .4byte func_08024218
.L080242D4:
    ldr r2, .L080242E4 @ =func_08024258
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08023AA8
.L080242DE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080242E4: .4byte func_08024258
    func_end func_08024298

    thumb_func_start func_080242E8
func_080242E8: @ 0x080242E8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    movs r0, #0
    movs r1, #0
    bl BeginTargetList
    mov r7, r8
    b .L080243A0
.L080242FC:
    adds r0, r7, #0
    bl GetUnit
    adds r5, r0, #0
    cmp r5, #0
    beq .L080243A0
    ldr r0, [r5]
    cmp r0, #0
    beq .L080243A0
    ldr r0, [r5, #0xc]
    ldr r1, .L080243B4 @ =0x0001002C
    ands r0, r1
    cmp r0, #0
    bne .L080243A0
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    ldr r0, .L080243B8 @ =gBmMapTerrain
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r6, [r0]
    adds r0, r6, #0
    bl GetTerrainHealAmount
    cmp r0, #0
    beq .L08024372
    adds r0, r5, #0
    bl GetUnitCurrentHp
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetUnitMaxHp
    cmp r4, r0
    beq .L08024372
    adds r0, r6, #0
    bl GetTerrainHealAmount
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetUnitMaxHp
    muls r0, r4, r0
    movs r1, #0x64
    bl __divsi3
    adds r3, r0, #0
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0xb
    ldrsb r2, [r5, r2]
    bl EnlistTarget
.L08024372:
    adds r0, r6, #0
    bl DoesTerrainHealStatus
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080243A0
    adds r1, r5, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L080243A0
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0xb
    ldrsb r2, [r5, r2]
    movs r3, #1
    rsbs r3, r3, #0
    bl EnlistTarget
.L080243A0:
    adds r7, #1
    mov r0, r8
    adds r0, #0x40
    cmp r7, r0
    blt .L080242FC
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080243B4: .4byte 0x0001002C
.L080243B8: .4byte gBmMapTerrain
    func_end func_080242E8

    thumb_func_start func_080243BC
func_080243BC: @ 0x080243BC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    movs r0, #0
    movs r1, #0
    bl BeginTargetList
    mov r7, r8
    b .L0802441A
.L080243D0:
    adds r0, r7, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L0802441A
    ldr r0, [r2]
    cmp r0, #0
    beq .L0802441A
    ldr r0, [r2, #0xc]
    ldr r1, .L08024430 @ =0x0001002C
    ands r0, r1
    cmp r0, #0
    bne .L0802441A
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #1
    bne .L0802441A
    movs r4, #0x10
    ldrsb r4, [r2, r4]
    movs r5, #0x11
    ldrsb r5, [r2, r5]
    movs r6, #0xb
    ldrsb r6, [r2, r6]
    movs r0, #3
    bl RandNext
    adds r3, r0, #0
    adds r3, #1
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl EnlistTarget
.L0802441A:
    adds r7, #1
    mov r0, r8
    adds r0, #0x40
    cmp r7, r0
    blt .L080243D0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08024430: .4byte 0x0001002C
    func_end func_080243BC

    thumb_func_start func_08024434
func_08024434: @ 0x08024434
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08024474 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsSameFaction
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802446C
    ldr r0, [r4, #0xc]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    beq .L0802446C
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L0802446C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08024474: .4byte 0x02033E40
    func_end func_08024434

    thumb_func_start func_08024478
func_08024478: @ 0x08024478
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L080244A0 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L080244A4 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L080244A8 @ =func_08024434
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080244A0: .4byte 0x02033E40
.L080244A4: .4byte gBmMapRange
.L080244A8: .4byte func_08024434
    func_end func_08024478

    thumb_func_start func_080244AC
func_080244AC: @ 0x080244AC
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    movs r0, #0xc0
    ldrb r1, [r5, #0xb]
    ands r0, r1
    cmp r0, #0x80
    bne .L080244FC
    ldr r0, .L080244F0 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x16
    ldrsb r1, [r0, r1]
    movs r0, #0x16
    ldrsb r0, [r5, r0]
    cmp r1, r0
    blt .L080244FC
    movs r6, #0
    adds r4, r5, #0
    adds r4, #0x1e
.L080244D0:
    ldrh r0, [r4]
    bl IsItemStealable
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080244F4
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0xb
    ldrsb r2, [r5, r2]
    movs r3, #0
    bl EnlistTarget
    b .L080244FC
    .align 2, 0
.L080244F0: .4byte gActiveUnit
.L080244F4:
    adds r4, #2
    adds r6, #1
    cmp r6, #4
    ble .L080244D0
.L080244FC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080244AC

    thumb_func_start func_08024504
func_08024504: @ 0x08024504
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L0802452C @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024530 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08024534 @ =func_080244AC
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802452C: .4byte 0x02033E40
.L08024530: .4byte gBmMapRange
.L08024534: .4byte func_080244AC
    func_end func_08024504

    thumb_func_start func_08024538
func_08024538: @ 0x08024538
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08024588 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r5, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08024582
    ldr r0, [r5, #0xc]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    bne .L08024582
    adds r0, r5, #0
    bl GetUnitCurrentHp
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetUnitMaxHp
    cmp r4, r0
    beq .L08024582
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0xb
    ldrsb r2, [r5, r2]
    movs r3, #0
    bl EnlistTarget
.L08024582:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024588: .4byte 0x02033E40
    func_end func_08024538

    thumb_func_start func_0802458C
func_0802458C: @ 0x0802458C
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L080245B4 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L080245B8 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L080245BC @ =func_08024538
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080245B4: .4byte 0x02033E40
.L080245B8: .4byte gBmMapRange
.L080245BC: .4byte func_08024538
    func_end func_0802458C

    thumb_func_start func_080245C0
func_080245C0: @ 0x080245C0
    push {r4, r5, r6, lr}
    movs r5, #0x10
    ldrsb r5, [r0, r5]
    movs r6, #0x11
    ldrsb r6, [r0, r6]
    ldr r4, .L08024600 @ =0x02033E40
    str r0, [r4]
    adds r0, r5, #0
    adds r1, r6, #0
    bl BeginTargetList
    ldr r0, .L08024604 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, [r4]
    bl GetUnitMagRange
    adds r2, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    movs r3, #1
    bl MapAddInRange
    ldr r0, .L08024608 @ =func_08024538
    bl func_080239B0
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08024600: .4byte 0x02033E40
.L08024604: .4byte gBmMapRange
.L08024608: .4byte func_08024538
    func_end func_080245C0

    thumb_func_start func_0802460C
func_0802460C: @ 0x0802460C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08024658 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08024652
    ldr r0, [r4, #0xc]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    bne .L08024652
    adds r1, r4, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08024652
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L08024652:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08024658: .4byte 0x02033E40
    func_end func_0802460C

    thumb_func_start func_0802465C
func_0802465C: @ 0x0802465C
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024684 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024688 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L0802468C @ =func_0802460C
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024684: .4byte 0x02033E40
.L08024688: .4byte gBmMapRange
.L0802468C: .4byte func_0802460C
    func_end func_0802465C

    thumb_func_start func_08024690
func_08024690: @ 0x08024690
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080246DC @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080246D4
    ldr r0, [r4, #0xc]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    bne .L080246D4
    adds r0, r4, #0
    adds r0, #0x31
    ldrb r0, [r0]
    lsrs r0, r0, #4
    cmp r0, #6
    bhi .L080246D4
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L080246D4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080246DC: .4byte 0x02033E40
    func_end func_08024690

    thumb_func_start func_080246E0
func_080246E0: @ 0x080246E0
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024708 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L0802470C @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08024710 @ =func_08024690
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024708: .4byte 0x02033E40
.L0802470C: .4byte gBmMapRange
.L08024710: .4byte func_08024690
    func_end func_080246E0

    thumb_func_start func_08024714
func_08024714: @ 0x08024714
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08024748 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08024742
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L08024742:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08024748: .4byte 0x02033E40
    func_end func_08024714

    thumb_func_start func_0802474C
func_0802474C: @ 0x0802474C
    push {lr}
    ldr r1, .L08024768 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L0802476C @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L08024770 @ =func_08024714
    bl func_08023B10
    pop {r0}
    bx r0
    .align 2, 0
.L08024768: .4byte 0x02033E40
.L0802476C: .4byte gBmMapRange
.L08024770: .4byte func_08024714
    func_end func_0802474C

    thumb_func_start func_08024774
func_08024774: @ 0x08024774
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080247BC @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080247B4
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #0
    beq .L080247A2
    cmp r1, #3
    bne .L080247B4
.L080247A2:
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L080247B4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080247BC: .4byte 0x02033E40
    func_end func_08024774

    thumb_func_start func_080247C0
func_080247C0: @ 0x080247C0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08024808 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08024800
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #0
    beq .L080247EE
    cmp r1, #2
    bne .L08024800
.L080247EE:
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L08024800:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08024808: .4byte 0x02033E40
    func_end func_080247C0

    thumb_func_start func_0802480C
func_0802480C: @ 0x0802480C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08024854 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802484C
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #0
    beq .L0802483A
    cmp r1, #4
    bne .L0802484C
.L0802483A:
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L0802484C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08024854: .4byte 0x02033E40
    func_end func_0802480C

    thumb_func_start func_08024858
func_08024858: @ 0x08024858
    push {lr}
    ldr r1, .L08024874 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024878 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L0802487C @ =func_08024774
    bl func_08023B10
    pop {r0}
    bx r0
    .align 2, 0
.L08024874: .4byte 0x02033E40
.L08024878: .4byte gBmMapRange
.L0802487C: .4byte func_08024774
    func_end func_08024858

    thumb_func_start func_08024880
func_08024880: @ 0x08024880
    push {lr}
    ldr r1, .L0802489C @ =0x02033E40
    str r0, [r1]
    ldr r0, .L080248A0 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L080248A4 @ =func_080247C0
    bl func_08023B10
    pop {r0}
    bx r0
    .align 2, 0
.L0802489C: .4byte 0x02033E40
.L080248A0: .4byte gBmMapRange
.L080248A4: .4byte func_080247C0
    func_end func_08024880

    thumb_func_start func_080248A8
func_080248A8: @ 0x080248A8
    push {lr}
    ldr r1, .L080248C4 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L080248C8 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L080248CC @ =func_0802480C
    bl func_08023B10
    pop {r0}
    bx r0
    .align 2, 0
.L080248C4: .4byte 0x02033E40
.L080248C8: .4byte gBmMapRange
.L080248CC: .4byte func_0802480C
    func_end func_080248A8

    thumb_func_start func_080248D0
func_080248D0: @ 0x080248D0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08024904 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080248FE
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L080248FE:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08024904: .4byte 0x02033E40
    func_end func_080248D0

    thumb_func_start func_08024908
func_08024908: @ 0x08024908
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024930 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024934 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08024938 @ =func_080248D0
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024930: .4byte 0x02033E40
.L08024934: .4byte gBmMapRange
.L08024938: .4byte func_080248D0
    func_end func_08024908

    thumb_func_start func_0802493C
func_0802493C: @ 0x0802493C
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024964 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024968 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L0802496C @ =func_08024218
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023ADC
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024964: .4byte 0x02033E40
.L08024968: .4byte gBmMapRange
.L0802496C: .4byte func_08024218
    func_end func_0802493C

    thumb_func_start func_08024970
func_08024970: @ 0x08024970
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L08024990 @ =0x02033E40
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsSameFaction
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080249C0
    movs r5, #0
    b .L08024996
    .align 2, 0
.L08024990: .4byte 0x02033E40
.L08024994:
    adds r5, #1
.L08024996:
    cmp r5, #4
    bgt .L080249C0
    lsls r1, r5, #1
    adds r0, r4, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl IsItemRepairable
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08024994
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0xb
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl EnlistTarget
.L080249C0:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08024970

    thumb_func_start func_080249C8
func_080249C8: @ 0x080249C8
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L080249F0 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L080249F4 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L080249F8 @ =func_08024970
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080249F0: .4byte 0x02033E40
.L080249F4: .4byte gBmMapRange
.L080249F8: .4byte func_08024970
    func_end func_080249C8

    thumb_func_start func_080249FC
func_080249FC: @ 0x080249FC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    ldrb r0, [r0, #0x10]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r2, r8
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl BeginTargetList
    bl GetActiveFactionAlliance
    adds r7, r0, #0
    adds r6, r7, #1
    b .L08024A74
.L08024A1E:
    adds r0, r6, #0
    bl GetUnit
    adds r5, r0, #0
    cmp r5, #0
    beq .L08024A70
    ldr r0, [r5]
    cmp r0, #0
    beq .L08024A70
    ldr r0, [r5, #0xc]
    ldr r1, .L08024A84 @ =0x0001000C
    ands r0, r1
    cmp r0, #0
    bne .L08024A70
    adds r0, r5, #0
    bl GetUnitCurrentHp
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetUnitMaxHp
    cmp r4, r0
    bne .L08024A5A
    adds r1, r5, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08024A70
.L08024A5A:
    cmp r5, r8
    beq .L08024A70
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0xb
    ldrsb r2, [r5, r2]
    movs r3, #0
    bl EnlistTarget
.L08024A70:
    adds r6, #1
    adds r0, r7, #0
.L08024A74:
    adds r0, #0x80
    cmp r6, r0
    blt .L08024A1E
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08024A84: .4byte 0x0001000C
    func_end func_080249FC

    thumb_func_start func_08024A88
func_08024A88: @ 0x08024A88
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    bl CountTargets
    adds r7, r0, #0
    movs r6, #0
    cmp r6, r7
    bge .L08024AD4
.L08024A9C:
    adds r0, r6, #0
    bl GetTarget
    adds r4, r0, #0
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r5, r0, #0
    bl GetUnitCurrentHp
    movs r1, #3
    ldrsb r1, [r4, r1]
    cmp r0, r1
    bgt .L08024ACE
    ldr r0, [r5]
    ldrb r0, [r0, #4]
    movs r1, #0
    mov r2, r8
    bl func_0809FEE8
    ldr r0, [r5]
    ldrb r0, [r0, #4]
    bl func_0809FDFC
.L08024ACE:
    adds r6, #1
    cmp r6, r7
    blt .L08024A9C
.L08024AD4:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08024A88

    thumb_func_start func_08024AE0
func_08024AE0: @ 0x08024AE0
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08024B50 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r2, r5, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08024B48
    ldr r0, .L08024B54 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L08024B10
    ldr r0, .L08024B58 @ =gMapFog
    ldr r0, [r0]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08024B48
.L08024B10:
    ldr r0, .L08024B5C @ =0x02033E40
    ldr r0, [r0]
    ldr r1, .L08024B60 @ =gBmMapTerrain
    ldr r1, [r1]
    adds r1, r2, r1
    ldr r1, [r1]
    adds r1, r1, r4
    ldrb r1, [r1]
    bl CanUnitCrossTerrain
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08024B48
    adds r0, r4, #0
    adds r1, r5, #0
    bl GetTrapAt
    cmp r0, #0
    beq .L08024B3C
    ldrb r0, [r0, #2]
    cmp r0, #0xa
    bne .L08024B48
.L08024B3C:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #0
    bl EnlistTarget
.L08024B48:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024B50: .4byte gBmMapUnit
.L08024B54: .4byte gPlaySt
.L08024B58: .4byte gMapFog
.L08024B5C: .4byte 0x02033E40
.L08024B60: .4byte gBmMapTerrain
    func_end func_08024AE0

    thumb_func_start func_08024B64
func_08024B64: @ 0x08024B64
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024B8C @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024B90 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08024B94 @ =func_08024AE0
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023AA8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024B8C: .4byte 0x02033E40
.L08024B90: .4byte gBmMapRange
.L08024B94: .4byte func_08024AE0
    func_end func_08024B64

    thumb_func_start func_08024B98
func_08024B98: @ 0x08024B98
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08024BE4 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r6, r5, #2
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08024BDE
    adds r0, r4, #0
    bl GetTrapAt
    cmp r0, #0
    bne .L08024BDE
    ldr r1, .L08024BE8 @ =0x08BE3C16
    ldr r0, .L08024BEC @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    adds r1, r0, r1
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08024BDE
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #0
    bl EnlistTarget
.L08024BDE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08024BE4: .4byte gBmMapUnit
.L08024BE8: .4byte 0x08BE3C16
.L08024BEC: .4byte gBmMapTerrain
    func_end func_08024B98

    thumb_func_start func_08024BF0
func_08024BF0: @ 0x08024BF0
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024C18 @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024C1C @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08024C20 @ =func_08024B98
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023AA8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024C18: .4byte 0x02033E40
.L08024C1C: .4byte gBmMapRange
.L08024C20: .4byte func_08024B98
    func_end func_08024BF0

    thumb_func_start func_08024C24
func_08024C24: @ 0x08024C24
    push {lr}
    adds r3, r0, #0
    movs r2, #0xb
    ldrsb r2, [r3, r2]
    movs r0, #0xc0
    ands r0, r2
    cmp r0, #0
    bne .L08024C50
    adds r1, r3, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08024C50
    movs r0, #0x10
    ldrsb r0, [r3, r0]
    movs r1, #0x11
    ldrsb r1, [r3, r1]
    movs r3, #0
    bl EnlistTarget
.L08024C50:
    pop {r0}
    bx r0
    func_end func_08024C24

    thumb_func_start func_08024C54
func_08024C54: @ 0x08024C54
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    ldr r1, .L08024C7C @ =0x02033E40
    str r0, [r1]
    ldr r0, .L08024C80 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r2, .L08024C84 @ =func_08024C24
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023A74
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08024C7C: .4byte 0x02033E40
.L08024C80: .4byte gBmMapRange
.L08024C84: .4byte func_08024C24
    func_end func_08024C54
