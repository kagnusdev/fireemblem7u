    .include "asm_prelude.inc"

    thumb_func_start BattleGenerateSimulationInternal
BattleGenerateSimulationInternal: @ 0x080281C8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    mov sb, r1
    adds r4, r2, #0
    adds r5, r3, #0
    ldr r6, .L08028214 @ =0x0203A3F0
    adds r0, r6, #0
    mov r1, r8
    bl InitBattleUnit
    ldr r7, .L08028218 @ =0x0203A470
    adds r0, r7, #0
    mov r1, sb
    bl InitBattleUnit
    strb r4, [r6, #0x10]
    strb r5, [r6, #0x11]
    ldr r4, .L0802821C @ =0x0203A3D8
    movs r2, #0x10
    ldrsb r2, [r6, r2]
    movs r0, #0x10
    ldrsb r0, [r7, r0]
    subs r1, r2, r0
    cmp r1, #0
    bge .L08028202
    subs r1, r0, r2
.L08028202:
    movs r3, #0x11
    ldrsb r3, [r6, r3]
    movs r0, #0x11
    ldrsb r0, [r7, r0]
    subs r2, r3, r0
    cmp r2, #0
    blt .L08028220
    adds r0, r1, r2
    b .L08028224
    .align 2, 0
.L08028214: .4byte 0x0203A3F0
.L08028218: .4byte 0x0203A470
.L0802821C: .4byte 0x0203A3D8
.L08028220:
    subs r0, r0, r3
    adds r0, r1, r0
.L08028224:
    strb r0, [r4, #2]
    ldr r1, .L0802823C @ =0x0203A3D8
    movs r0, #8
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08028244
    ldr r0, .L08028240 @ =0x0203A3F0
    bl SetBattleUnitWeaponBallista
    b .L0802824C
    .align 2, 0
.L0802823C: .4byte 0x0203A3D8
.L08028240: .4byte 0x0203A3F0
.L08028244:
    ldr r0, .L08028290 @ =0x0203A3F0
    ldr r1, [sp, #0x1c]
    bl SetBattleUnitWeapon
.L0802824C:
    ldr r4, .L08028294 @ =0x0203A470
    movs r1, #1
    rsbs r1, r1, #0
    adds r0, r4, #0
    bl SetBattleUnitWeapon
    bl BattleInitTargetCanCounter
    ldr r5, .L08028290 @ =0x0203A3F0
    adds r0, r5, #0
    adds r1, r4, #0
    bl BattleApplyWeaponTriangleEffect
    bl func_0802C29C
    adds r0, r5, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r4, #0
    bl SetBattleUnitTerrainBonusesAuto
    mov r0, r8
    mov r1, sb
    bl BattleGenerate
    bl func_0802C2DC
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08028290: .4byte 0x0203A3F0
.L08028294: .4byte 0x0203A470
    func_end BattleGenerateSimulationInternal

    thumb_func_start BattleGenerateRealInternal
BattleGenerateRealInternal: @ 0x08028298
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r5, .L080282D8 @ =0x0203A3F0
    adds r0, r5, #0
    adds r1, r6, #0
    bl InitBattleUnit
    ldr r4, .L080282DC @ =0x0203A470
    adds r0, r4, #0
    adds r1, r7, #0
    bl InitBattleUnit
    ldr r0, .L080282E0 @ =0x0203A3D8
    mov ip, r0
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    subs r1, r2, r0
    cmp r1, #0
    bge .L080282C6
    subs r1, r0, r2
.L080282C6:
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    subs r2, r3, r0
    cmp r2, #0
    blt .L080282E4
    adds r0, r1, r2
    b .L080282E8
    .align 2, 0
.L080282D8: .4byte 0x0203A3F0
.L080282DC: .4byte 0x0203A470
.L080282E0: .4byte 0x0203A3D8
.L080282E4:
    subs r0, r0, r3
    adds r0, r1, r0
.L080282E8:
    mov r1, ip
    strb r0, [r1, #2]
    ldr r1, .L08028300 @ =0x0203A3D8
    movs r0, #8
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08028308
    ldr r0, .L08028304 @ =0x0203A3F0
    bl SetBattleUnitWeaponBallista
    b .L08028312
    .align 2, 0
.L08028300: .4byte 0x0203A3D8
.L08028304: .4byte 0x0203A3F0
.L08028308:
    ldr r0, .L08028378 @ =0x0203A3F0
    movs r1, #1
    rsbs r1, r1, #0
    bl SetBattleUnitWeapon
.L08028312:
    ldr r4, .L0802837C @ =0x0203A470
    movs r1, #1
    rsbs r1, r1, #0
    adds r0, r4, #0
    bl SetBattleUnitWeapon
    bl BattleInitTargetCanCounter
    ldr r5, .L08028378 @ =0x0203A3F0
    adds r0, r5, #0
    adds r1, r4, #0
    bl BattleApplyWeaponTriangleEffect
    bl func_0802C29C
    adds r0, r5, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r4, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r6, #0
    adds r1, r7, #0
    bl BattleGenerate
    bl func_0802C2DC
    adds r0, r4, #0
    bl BattleUnitTargetCheckHasRealWeapon
    adds r0, r4, #0
    bl BattleUnitTargetSetEquippedWeapon
    movs r0, #0xb
    ldrsb r0, [r4, r0]
    cmp r0, #0
    beq .L08028370
    bl BattleApplyExpGains
    bl func_080A02B8
    adds r0, r6, #0
    bl func_0809FD30
    adds r0, r7, #0
    bl func_0809FD30
.L08028370:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08028378: .4byte 0x0203A3F0
.L0802837C: .4byte 0x0203A470
    func_end BattleGenerateRealInternal

    thumb_func_start BattleApplyGameStateUpdates
BattleApplyGameStateUpdates: @ 0x08028380
    push {lr}
    bl BattleApplyUnitUpdates
    bl BattleApplyBallistaUpdates
    ldr r0, .L0802839C @ =0x0203A3F0
    ldr r1, .L080283A0 @ =0x0203A470
    bl func_0802A490
    bl func_0802A494
    pop {r0}
    bx r0
    .align 2, 0
.L0802839C: .4byte 0x0203A3F0
.L080283A0: .4byte 0x0203A470
    func_end BattleApplyGameStateUpdates

    thumb_func_start BattleGenerateSimulation
BattleGenerateSimulation: @ 0x080283A4
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    cmp r2, #0
    bge .L080283BC
    cmp r3, #0
    bge .L080283BC
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    movs r3, #0x11
    ldrsb r3, [r4, r3]
.L080283BC:
    ldr r0, .L080283D8 @ =0x0203A3D8
    movs r1, #2
    strh r1, [r0]
    ldr r0, [sp, #0x10]
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    bl BattleGenerateSimulationInternal
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080283D8: .4byte 0x0203A3D8
    func_end BattleGenerateSimulation

    thumb_func_start BattleGenerateReal
BattleGenerateReal: @ 0x080283DC
    push {lr}
    ldr r3, .L080283EC @ =0x0203A3D8
    movs r2, #1
    strh r2, [r3]
    bl BattleGenerateRealInternal
    pop {r0}
    bx r0
    .align 2, 0
.L080283EC: .4byte 0x0203A3D8
    func_end BattleGenerateReal

    thumb_func_start BattleGenerateBallistaSimulation
BattleGenerateBallistaSimulation: @ 0x080283F0
    push {r4, r5, r6, lr}
    sub sp, #4
    ldr r5, .L0802840C @ =0x0203A3D8
    movs r6, #0
    movs r4, #0xa
    strh r4, [r5]
    str r6, [sp]
    bl BattleGenerateSimulationInternal
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802840C: .4byte 0x0203A3D8
    func_end BattleGenerateBallistaSimulation

    thumb_func_start BattleGenerateBallistaReal
BattleGenerateBallistaReal: @ 0x08028410
    push {lr}
    ldr r3, .L08028420 @ =0x0203A3D8
    movs r2, #9
    strh r2, [r3]
    bl BattleGenerateRealInternal
    pop {r0}
    bx r0
    .align 2, 0
.L08028420: .4byte 0x0203A3D8
    func_end BattleGenerateBallistaReal

    thumb_func_start BattleGenerate
BattleGenerate: @ 0x08028424
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    ldr r5, .L08028470 @ =0x0203A3F0
    ldr r4, .L08028474 @ =0x0203A470
    adds r0, r5, #0
    adds r1, r4, #0
    bl ComputeBattleUnitStats
    adds r0, r4, #0
    adds r1, r5, #0
    bl ComputeBattleUnitStats
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_080289FC
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080289FC
    cmp r6, #0
    bne .L08028454
    bl func_0802A2D8
.L08028454:
    ldr r1, .L08028478 @ =0x0203A3D8
    movs r0, #1
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08028480
    ldr r0, .L0802847C @ =gActionSt
    ldr r0, [r0, #0x18]
    cmp r0, #0
    beq .L08028480
    bl func_0802A8A8
    b .L08028484
    .align 2, 0
.L08028470: .4byte 0x0203A3F0
.L08028474: .4byte 0x0203A470
.L08028478: .4byte 0x0203A3D8
.L0802847C: .4byte gActionSt
.L08028480:
    bl BattleUnwind
.L08028484:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end BattleGenerate

    thumb_func_start BattleGenerateDisplayStats
BattleGenerateDisplayStats: @ 0x0802848C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x48
    adds r7, r0, #0
    lsls r1, r1, #0x18
    lsrs r6, r1, #0x18
    ldr r1, .L080284E8 @ =0x0203A3D8
    movs r3, #0
    movs r2, #0
    movs r0, #4
    strh r0, [r1]
    ldr r0, .L080284EC @ =0x0203A470
    mov ip, r0
    adds r0, #0x48
    strh r2, [r0]
    mov r1, ip
    str r2, [r1, #0x4c]
    adds r1, #0x50
    movs r0, #0xff
    strb r0, [r1]
    mov r0, ip
    str r2, [r0, #4]
    ldr r5, .L080284F0 @ =0x0203A3F0
    adds r0, r5, #0
    adds r0, #0x53
    strb r3, [r0]
    adds r0, #1
    strb r3, [r0]
    lsls r4, r6, #0x18
    lsrs r0, r4, #0x18
    cmp r0, #4
    bhi .L080284F4
    mov r0, sp
    adds r1, r7, #0
    movs r2, #0x48
    bl memcpy
    asrs r1, r4, #0x18
    mov r0, sp
    bl UnitEquipItemSlot
    movs r6, #0
    adds r0, r5, #0
    mov r1, sp
    bl InitBattleUnit
    b .L080284FC
    .align 2, 0
.L080284E8: .4byte 0x0203A3D8
.L080284EC: .4byte 0x0203A470
.L080284F0: .4byte 0x0203A3F0
.L080284F4:
    adds r0, r5, #0
    adds r1, r7, #0
    bl InitBattleUnit
.L080284FC:
    ldr r4, .L08028574 @ =0x0203A3F0
    adds r0, r4, #0
    bl SetBattleUnitTerrainBonusesAuto
    lsls r1, r6, #0x18
    asrs r1, r1, #0x18
    adds r0, r4, #0
    bl SetBattleUnitWeapon
    ldr r1, .L08028578 @ =0x0203A470
    adds r0, r4, #0
    bl ComputeBattleUnitStats
    adds r5, r4, #0
    adds r5, #0x48
    ldrh r0, [r5]
    bl GetItemIndex
    cmp r0, #0x11
    bne .L08028544
    adds r2, r4, #0
    adds r2, #0x5a
    movs r0, #0x14
    ldrsb r0, [r4, r0]
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    ldrh r1, [r2]
    subs r0, r1, r0
    movs r1, #0
    strh r0, [r2]
    adds r0, r4, #0
    adds r0, #0x66
    strh r1, [r0]
    adds r0, #4
    strh r1, [r0]
.L08028544:
    ldrh r0, [r5]
    cmp r0, #0
    bne .L0802855A
    adds r0, r4, #0
    adds r0, #0x5a
    movs r1, #0xff
    strh r1, [r0]
    adds r0, #6
    strh r1, [r0]
    adds r0, #6
    strh r1, [r0]
.L0802855A:
    ldrh r0, [r5]
    bl GetItemWeaponEffect
    cmp r0, #3
    bne .L0802856C
    adds r1, r4, #0
    adds r1, #0x5a
    movs r0, #0xff
    strh r0, [r1]
.L0802856C:
    add sp, #0x48
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08028574: .4byte 0x0203A3F0
.L08028578: .4byte 0x0203A470
    func_end BattleGenerateDisplayStats

    thumb_func_start func_0802857C
func_0802857C: @ 0x0802857C
    push {lr}
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    lsls r1, r1, #0x18
    lsrs r2, r1, #0x18
    ldr r1, .L0802859C @ =0x0203A3D8
    movs r0, #2
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L080285A0
    adds r0, r3, #0
    bl RandRoll
    lsls r0, r0, #0x18
    b .L080285A2
    .align 2, 0
.L0802859C: .4byte 0x0203A3D8
.L080285A0:
    lsls r0, r2, #0x18
.L080285A2:
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0802857C

    thumb_func_start func_080285A8
func_080285A8: @ 0x080285A8
    push {lr}
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    lsls r1, r1, #0x18
    lsrs r2, r1, #0x18
    ldr r1, .L080285C8 @ =0x0203A3D8
    movs r0, #2
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L080285CC
    adds r0, r3, #0
    bl RandRoll2Rn
    lsls r0, r0, #0x18
    b .L080285CE
    .align 2, 0
.L080285C8: .4byte 0x0203A3D8
.L080285CC:
    lsls r0, r2, #0x18
.L080285CE:
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_080285A8

    thumb_func_start InitBattleUnit
InitBattleUnit: @ 0x080285D4
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    cmp r6, #0
    beq .L080286AA
    movs r2, #0x48
    bl memcpy
    adds r0, r6, #0
    bl GetUnitMaxHp
    movs r4, #0
    strb r0, [r5, #0x12]
    adds r0, r6, #0
    bl GetUnitPower
    strb r0, [r5, #0x14]
    adds r0, r6, #0
    bl GetUnitSkill
    strb r0, [r5, #0x15]
    adds r0, r6, #0
    bl GetUnitSpeed
    strb r0, [r5, #0x16]
    adds r0, r6, #0
    bl GetUnitDefense
    strb r0, [r5, #0x17]
    adds r0, r6, #0
    bl GetUnitLuck
    strb r0, [r5, #0x19]
    adds r0, r6, #0
    bl GetUnitResistance
    strb r0, [r5, #0x18]
    ldr r1, [r6, #4]
    ldr r0, [r6]
    ldrb r2, [r1, #0x11]
    ldrb r0, [r0, #0x13]
    adds r0, r2, r0
    ldrb r2, [r6, #0x1a]
    adds r0, r2, r0
    strb r0, [r5, #0x1a]
    ldrb r6, [r6, #0x1d]
    ldrb r1, [r1, #0x12]
    adds r0, r6, r1
    strb r0, [r5, #0x1d]
    ldrb r1, [r5, #8]
    adds r0, r5, #0
    adds r0, #0x70
    strb r1, [r0]
    ldrb r0, [r5, #9]
    adds r1, r5, #0
    adds r1, #0x71
    strb r0, [r1]
    ldrb r0, [r5, #0x13]
    adds r1, #1
    strb r0, [r1]
    subs r1, #3
    movs r0, #0xff
    strb r0, [r1]
    adds r0, r5, #0
    adds r0, #0x73
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    ldr r2, .L080286B0 @ =0x0203A3F0
    adds r0, r2, #0
    adds r0, #0x7b
    strb r4, [r0]
    ldr r1, .L080286B4 @ =0x0203A470
    adds r0, r1, #0
    adds r0, #0x7b
    strb r4, [r0]
    adds r0, r5, #0
    adds r0, #0x53
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #0x28
    strb r4, [r0]
    adds r0, r2, #0
    adds r0, #0x7d
    strb r4, [r0]
    adds r0, r1, #0
    adds r0, #0x7d
    strb r4, [r0]
    adds r0, r2, #0
    adds r0, #0x6e
    strb r4, [r0]
    adds r0, r1, #0
    adds r0, #0x6e
    strb r4, [r0]
.L080286AA:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080286B0: .4byte 0x0203A3F0
.L080286B4: .4byte 0x0203A470
    func_end InitBattleUnit

    thumb_func_start InitBattleUnitWithoutBonuses
InitBattleUnitWithoutBonuses: @ 0x080286B8
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl InitBattleUnit
    ldrb r0, [r4, #0x12]
    strb r0, [r5, #0x12]
    ldrb r0, [r4, #0x14]
    strb r0, [r5, #0x14]
    ldrb r0, [r4, #0x15]
    strb r0, [r5, #0x15]
    ldrb r0, [r4, #0x16]
    strb r0, [r5, #0x16]
    ldrb r0, [r4, #0x17]
    strb r0, [r5, #0x17]
    ldrb r0, [r4, #0x19]
    strb r0, [r5, #0x19]
    ldrb r0, [r4, #0x18]
    strb r0, [r5, #0x18]
    ldr r1, [r4, #4]
    ldr r0, [r4]
    ldrb r1, [r1, #0x11]
    ldrb r0, [r0, #0x13]
    adds r0, r1, r0
    strb r0, [r5, #0x1a]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end InitBattleUnitWithoutBonuses

    thumb_func_start func_080286F0
func_080286F0: @ 0x080286F0
    adds r2, r0, #0
    adds r3, r2, #0
    adds r3, #0x55
    strb r1, [r3]
    ldr r0, [r2, #4]
    ldr r0, [r0, #0x44]
    adds r0, r1, r0
    ldrb r0, [r0]
    adds r1, r2, #0
    adds r1, #0x57
    strb r0, [r1]
    ldr r0, [r2, #4]
    ldr r0, [r0, #0x48]
    ldrb r1, [r3]
    adds r0, r1, r0
    ldrb r0, [r0]
    adds r1, r2, #0
    adds r1, #0x56
    strb r0, [r1]
    ldr r0, [r2, #4]
    ldr r0, [r0, #0x4c]
    ldrb r3, [r3]
    adds r0, r3, r0
    ldrb r1, [r0]
    adds r0, r2, #0
    adds r0, #0x58
    strb r1, [r0]
    bx lr
    func_end func_080286F0

    thumb_func_start SetBattleUnitTerrainBonusesAuto
SetBattleUnitTerrainBonusesAuto: @ 0x08028728
    adds r2, r0, #0
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, .L08028778 @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    adds r3, r2, #0
    adds r3, #0x55
    strb r0, [r3]
    ldr r0, [r2, #4]
    ldr r0, [r0, #0x44]
    ldrb r1, [r3]
    adds r0, r1, r0
    ldrb r0, [r0]
    adds r1, r2, #0
    adds r1, #0x57
    strb r0, [r1]
    ldr r0, [r2, #4]
    ldr r0, [r0, #0x48]
    ldrb r1, [r3]
    adds r0, r1, r0
    ldrb r0, [r0]
    adds r1, r2, #0
    adds r1, #0x56
    strb r0, [r1]
    ldr r0, [r2, #4]
    ldr r0, [r0, #0x4c]
    ldrb r3, [r3]
    adds r0, r3, r0
    ldrb r1, [r0]
    adds r0, r2, #0
    adds r0, #0x58
    strb r1, [r0]
    bx lr
    .align 2, 0
.L08028778: .4byte gBmMapTerrain
    func_end SetBattleUnitTerrainBonusesAuto

    thumb_func_start SetBattleUnitWeapon
SetBattleUnitWeapon: @ 0x0802877C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L08028798
    adds r0, r5, #0
    bl GetUnitEquippedWeaponSlot
    adds r4, r0, #0
.L08028798:
    ldr r0, [r5, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L080287B6
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    bl func_080346C8
    cmp r0, #0
    beq .L080287B6
    movs r4, #8
.L080287B6:
    adds r1, r5, #0
    adds r1, #0x52
    movs r0, #1
    strb r0, [r1]
    mov sb, r1
    cmp r4, #8
    bhi .L08028894
    lsls r0, r4, #2
    ldr r1, .L080287D0 @ =.L080287D4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080287D0: .4byte .L080287D4
.L080287D4: @ jump table
    .4byte .L080287F8 @ case 0
    .4byte .L080287F8 @ case 1
    .4byte .L080287F8 @ case 2
    .4byte .L080287F8 @ case 3
    .4byte .L080287F8 @ case 4
    .4byte .L08028812 @ case 5
    .4byte .L08028830 @ case 6
    .4byte .L08028850 @ case 7
    .4byte .L08028870 @ case 8
.L080287F8:
    adds r1, r5, #0
    adds r1, #0x51
    strb r4, [r1]
    lsls r2, r4, #1
    adds r0, r5, #0
    adds r0, #0x1e
    adds r0, r0, r2
    ldrh r0, [r0]
    adds r2, r5, #0
    adds r2, #0x48
    strh r0, [r2]
    mov r8, r1
    b .L080288AC
.L08028812:
    adds r2, r5, #0
    adds r2, #0x51
    movs r0, #0xff
    strb r0, [r2]
    ldr r0, .L0802882C @ =gBmSt
    ldrh r0, [r0, #0x2c]
    adds r1, r5, #0
    adds r1, #0x48
    strh r0, [r1]
    mov r8, r2
    adds r4, r1, #0
    b .L080288AE
    .align 2, 0
.L0802882C: .4byte gBmSt
.L08028830:
    adds r3, r5, #0
    adds r3, #0x51
    movs r0, #0
    strb r0, [r3]
    ldr r0, .L0802884C @ =0x0203A7F4
    ldrh r1, [r0, #0x1a]
    adds r2, r5, #0
    adds r2, #0x48
    movs r0, #0
    strh r1, [r2]
    mov r1, sb
    strb r0, [r1]
    b .L080288AA
    .align 2, 0
.L0802884C: .4byte 0x0203A7F4
.L08028850:
    adds r3, r5, #0
    adds r3, #0x51
    movs r0, #0
    strb r0, [r3]
    ldr r0, .L0802886C @ =0x0203A7F4
    ldrh r1, [r0, #0x1c]
    adds r2, r5, #0
    adds r2, #0x48
    movs r0, #0
    strh r1, [r2]
    mov r1, sb
    strb r0, [r1]
    b .L080288AA
    .align 2, 0
.L0802886C: .4byte 0x0203A7F4
.L08028870:
    adds r4, r5, #0
    adds r4, #0x51
    movs r0, #0xff
    strb r0, [r4]
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    bl func_080346C8
    adds r2, r5, #0
    adds r2, #0x48
    movs r1, #0
    strh r0, [r2]
    mov r0, sb
    strb r1, [r0]
    mov r8, r4
    b .L080288AC
.L08028894:
    adds r3, r5, #0
    adds r3, #0x51
    movs r0, #0xff
    strb r0, [r3]
    adds r2, r5, #0
    adds r2, #0x48
    movs r1, #0
    movs r0, #0
    strh r0, [r2]
    mov r0, sb
    strb r1, [r0]
.L080288AA:
    mov r8, r3
.L080288AC:
    adds r4, r2, #0
.L080288AE:
    ldrh r0, [r4]
    adds r1, r5, #0
    adds r1, #0x4a
    strh r0, [r1]
    ldrh r0, [r4]
    bl GetItemAttributes
    str r0, [r5, #0x4c]
    ldrh r0, [r4]
    bl GetItemType
    adds r6, r5, #0
    adds r6, #0x50
    strb r0, [r6]
    ldr r7, .L080288F4 @ =0x0203A3D8
    movs r0, #4
    ldrh r1, [r7]
    ands r0, r1
    cmp r0, #0
    bne .L0802895A
    ldr r0, [r5, #0x4c]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L08028920
    ldrh r0, [r4]
    bl GetItemIndex
    cmp r0, #0x11
    beq .L0802891C
    cmp r0, #0x11
    bgt .L080288F8
    cmp r0, #0x10
    beq .L08028906
    b .L08028920
    .align 2, 0
.L080288F4: .4byte 0x0203A3D8
.L080288F8:
    cmp r0, #0x99
    bne .L08028920
    ldrb r7, [r7, #2]
    cmp r7, #2
    bne .L08028910
    movs r0, #5
    b .L0802891E
.L08028906:
    ldrb r7, [r7, #2]
    cmp r7, #2
    bne .L08028910
    movs r0, #6
    b .L0802891E
.L08028910:
    ldr r0, [r5, #0x4c]
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r5, #0x4c]
    b .L08028920
.L0802891C:
    movs r0, #7
.L0802891E:
    strb r0, [r6]
.L08028920:
    ldrh r0, [r4]
    ldr r1, .L08028968 @ =0x0203A3D8
    ldrb r1, [r1, #2]
    bl CanItemReachDistance
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08028938
    mov r1, r8
    ldrb r0, [r1]
    cmp r0, #0xff
    bne .L08028942
.L08028938:
    movs r1, #0
    movs r0, #0
    strh r0, [r4]
    mov r0, sb
    strb r1, [r0]
.L08028942:
    adds r1, r5, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #2
    bne .L0802895A
    movs r1, #0
    movs r0, #0
    strh r0, [r4]
    mov r0, sb
    strb r1, [r0]
.L0802895A:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08028968: .4byte 0x0203A3D8
    func_end SetBattleUnitWeapon

    thumb_func_start SetBattleUnitWeaponBallista
SetBattleUnitWeaponBallista: @ 0x0802896C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r0, #0x10
    ldrsb r0, [r6, r0]
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    bl func_080346C8
    adds r4, r6, #0
    adds r4, #0x48
    movs r5, #0
    strh r0, [r4]
    adds r1, r6, #0
    adds r1, #0x4a
    strh r0, [r1]
    ldrh r0, [r4]
    bl GetItemAttributes
    str r0, [r6, #0x4c]
    ldrh r0, [r4]
    bl GetItemType
    adds r1, r6, #0
    adds r1, #0x50
    strb r0, [r1]
    adds r0, r6, #0
    adds r0, #0x52
    strb r5, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end SetBattleUnitWeaponBallista

    thumb_func_start func_080289AC
func_080289AC: @ 0x080289AC
    bx lr
    func_end func_080289AC

    thumb_func_start ComputeBattleUnitStats
ComputeBattleUnitStats: @ 0x080289B0
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl ComputeBattleUnitDefense
    adds r0, r4, #0
    adds r1, r5, #0
    bl ComputeBattleUnitAttack
    adds r0, r4, #0
    bl ComputeBattleUnitSpeed
    adds r0, r4, #0
    bl ComputeBattleUnitHitRate
    adds r0, r4, #0
    bl ComputeBattleUnitAvoidRate
    adds r0, r4, #0
    bl func_08028D00
    adds r0, r4, #0
    bl func_08028D3C
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08028A24
    adds r0, r4, #0
    bl func_08028E78
    adds r0, r4, #0
    bl func_08028EB4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end ComputeBattleUnitStats

    thumb_func_start func_080289FC
func_080289FC: @ 0x080289FC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl func_08028D48
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08028D74
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08028E1C
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08028EEC
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080289FC

    thumb_func_start func_08028A24
func_08028A24: @ 0x08028A24
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r1, .L08028A90 @ =0x0203A3D8
    movs r0, #0x20
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08028A3E
    ldr r0, .L08028A94 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    cmp r0, #0
    beq .L08028A86
.L08028A3E:
    mov r4, sp
    adds r0, r5, #0
    mov r1, sp
    bl func_08026A18
    adds r1, r5, #0
    adds r1, #0x5a
    ldrb r0, [r4, #1]
    ldrh r2, [r1]
    adds r0, r2, r0
    strh r0, [r1]
    adds r1, #2
    ldrb r0, [r4, #2]
    ldrh r3, [r1]
    adds r0, r3, r0
    strh r0, [r1]
    adds r1, #4
    ldrb r0, [r4, #3]
    ldrh r2, [r1]
    adds r0, r2, r0
    strh r0, [r1]
    adds r1, #2
    ldrh r3, [r1]
    ldrb r2, [r4, #4]
    adds r0, r3, r2
    strh r0, [r1]
    adds r1, #4
    ldrh r3, [r1]
    ldrb r2, [r4, #5]
    adds r0, r3, r2
    strh r0, [r1]
    adds r1, #2
    ldrh r3, [r1]
    ldrb r4, [r4, #6]
    adds r0, r3, r4
    strh r0, [r1]
.L08028A86:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08028A90: .4byte 0x0203A3D8
.L08028A94: .4byte gPlaySt
    func_end func_08028A24

    thumb_func_start ComputeBattleUnitDefense
ComputeBattleUnitDefense: @ 0x08028A98
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r5, #0x48
    ldrh r0, [r5]
    bl GetItemAttributes
    movs r1, #0x40
    ands r1, r0
    cmp r1, #0
    beq .L08028ABE
    adds r0, r4, #0
    adds r0, #0x58
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0x18
    ldrsb r1, [r4, r1]
    b .L08028AEA
.L08028ABE:
    ldrh r0, [r5]
    bl GetItemAttributes
    movs r1, #2
    ands r1, r0
    cmp r1, #0
    beq .L08028ADC
    adds r0, r4, #0
    adds r0, #0x58
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0x18
    ldrsb r1, [r4, r1]
    b .L08028AEA
.L08028ADC:
    adds r0, r4, #0
    adds r0, #0x56
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0x17
    ldrsb r1, [r4, r1]
.L08028AEA:
    adds r0, r0, r1
    adds r1, r4, #0
    adds r1, #0x5c
    strh r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end ComputeBattleUnitDefense

    thumb_func_start func_08028AF8
func_08028AF8: @ 0x08028AF8
    adds r1, r0, #0
    adds r1, #0x56
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    movs r2, #0x17
    ldrsb r2, [r0, r2]
    adds r1, r1, r2
    adds r0, #0x5c
    strh r1, [r0]
    bx lr
    func_end func_08028AF8

    thumb_func_start ComputeBattleUnitAttack
ComputeBattleUnitAttack: @ 0x08028B10
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r6, r5, #0
    adds r6, #0x48
    ldrh r0, [r6]
    bl GetItemMight
    adds r1, r5, #0
    adds r1, #0x54
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r1, r1, r0
    adds r0, r5, #0
    adds r0, #0x5a
    strh r1, [r0]
    ldrh r0, [r6]
    adds r1, r4, #0
    bl IsItemEffectiveAgainst
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08028B52
    ldrh r0, [r6]
    bl GetItemIndex
    adds r1, r5, #0
    adds r1, #0x5a
    ldrh r2, [r1]
    lsls r0, r2, #1
    strh r0, [r1]
.L08028B52:
    adds r1, r5, #0
    adds r1, #0x5a
    movs r0, #0x14
    ldrsb r0, [r5, r0]
    ldrh r2, [r1]
    adds r0, r2, r0
    strh r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end ComputeBattleUnitAttack

    thumb_func_start ComputeBattleUnitSpeed
ComputeBattleUnitSpeed: @ 0x08028B68
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl func_08017310
    adds r1, r0, #0
    movs r0, #0x1a
    ldrsb r0, [r4, r0]
    subs r1, r1, r0
    cmp r1, #0
    bge .L08028B82
    movs r1, #0
.L08028B82:
    movs r0, #0x16
    ldrsb r0, [r4, r0]
    subs r0, r0, r1
    adds r1, r4, #0
    adds r1, #0x5e
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L08028B98
    movs r0, #0
    strh r0, [r1]
.L08028B98:
    pop {r4}
    pop {r0}
    bx r0
    func_end ComputeBattleUnitSpeed

    thumb_func_start ComputeBattleUnitHitRate
ComputeBattleUnitHitRate: @ 0x08028BA0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r0, #0x48
    ldrh r0, [r0]
    bl func_080172F8
    movs r2, #0x15
    ldrsb r2, [r4, r2]
    lsls r2, r2, #1
    adds r2, r2, r0
    movs r0, #0x19
    ldrsb r0, [r4, r0]
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    adds r0, r0, r2
    adds r1, r4, #0
    adds r1, #0x53
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r5, r1, r0
    adds r6, r4, #0
    adds r6, #0x60
    strh r5, [r6]
    ldr r3, .L08028C44 @ =gPlaySt
    adds r0, r3, #0
    adds r0, #0x2b
    ldrb r2, [r0]
    movs r0, #1
    ands r0, r2
    cmp r0, #0
    beq .L08028C3C
    ldrb r0, [r3, #0x1b]
    cmp r0, #1
    beq .L08028C3C
    ldr r1, .L08028C48 @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08028C3C
    movs r0, #0xc0
    ldrb r1, [r4, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L08028C3C
    ldr r1, .L08028C4C @ =0x081C3AC0
    lsrs r0, r2, #4
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r4]
    ldr r0, [r0]
    ldrb r1, [r1, #9]
    cmp r0, r1
    bne .L08028C26
    ldrh r3, [r3, #0x2c]
    lsls r0, r3, #0x13
    lsrs r0, r0, #0x17
    movs r1, #0xc
    bl __divsi3
    cmp r0, #0xa
    ble .L08028C22
    movs r0, #0xa
.L08028C22:
    adds r0, r5, r0
    strh r0, [r6]
.L08028C26:
    adds r0, r4, #0
    bl func_08028194
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08028C3C
    adds r1, r4, #0
    adds r1, #0x60
    ldrh r0, [r1]
    adds r0, #0xa
    strh r0, [r1]
.L08028C3C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08028C44: .4byte gPlaySt
.L08028C48: .4byte gBmSt
.L08028C4C: .4byte 0x081C3AC0
    func_end ComputeBattleUnitHitRate

    thumb_func_start ComputeBattleUnitAvoidRate
ComputeBattleUnitAvoidRate: @ 0x08028C50
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r0, #0x5e
    movs r2, #0
    ldrsh r1, [r0, r2]
    lsls r1, r1, #1
    subs r0, #7
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r0, r0, r1
    movs r1, #0x19
    ldrsb r1, [r4, r1]
    adds r5, r1, r0
    adds r6, r4, #0
    adds r6, #0x62
    strh r5, [r6]
    ldr r3, .L08028CF4 @ =gPlaySt
    adds r0, r3, #0
    adds r0, #0x2b
    ldrb r2, [r0]
    movs r0, #1
    ands r0, r2
    cmp r0, #0
    beq .L08028CDC
    ldrb r0, [r3, #0x1b]
    cmp r0, #1
    beq .L08028CDC
    ldr r1, .L08028CF8 @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08028CDC
    movs r0, #0xc0
    ldrb r1, [r4, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L08028CDC
    ldr r1, .L08028CFC @ =0x081C3AC0
    lsrs r0, r2, #4
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r4]
    ldr r0, [r0]
    ldrb r1, [r1, #9]
    cmp r0, r1
    bne .L08028CC6
    ldrh r3, [r3, #0x2c]
    lsls r0, r3, #0x13
    lsrs r0, r0, #0x17
    movs r1, #0xc
    bl __divsi3
    cmp r0, #0xa
    ble .L08028CC2
    movs r0, #0xa
.L08028CC2:
    adds r0, r5, r0
    strh r0, [r6]
.L08028CC6:
    adds r0, r4, #0
    bl func_08028194
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08028CDC
    adds r1, r4, #0
    adds r1, #0x62
    ldrh r0, [r1]
    adds r0, #0xa
    strh r0, [r1]
.L08028CDC:
    adds r1, r4, #0
    adds r1, #0x62
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0
    bge .L08028CEC
    movs r0, #0
    strh r0, [r1]
.L08028CEC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08028CF4: .4byte gPlaySt
.L08028CF8: .4byte gBmSt
.L08028CFC: .4byte 0x081C3AC0
    func_end ComputeBattleUnitAvoidRate

    thumb_func_start func_08028D00
func_08028D00: @ 0x08028D00
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x48
    ldrh r0, [r0]
    bl func_08017328
    movs r1, #0x15
    ldrsb r1, [r4, r1]
    lsrs r2, r1, #0x1f
    adds r1, r1, r2
    asrs r1, r1, #1
    adds r2, r1, r0
    adds r3, r4, #0
    adds r3, #0x66
    strh r2, [r3]
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L08028D36
    adds r0, r2, #0
    adds r0, #0xf
    strh r0, [r3]
.L08028D36:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08028D00

    thumb_func_start func_08028D3C
func_08028D3C: @ 0x08028D3C
    movs r1, #0x19
    ldrsb r1, [r0, r1]
    adds r0, #0x68
    strh r1, [r0]
    bx lr
    func_end func_08028D3C

    thumb_func_start func_08028D48
func_08028D48: @ 0x08028D48
    adds r2, r0, #0
    adds r2, #0x60
    adds r1, #0x62
    ldrh r2, [r2]
    ldrh r1, [r1]
    subs r1, r2, r1
    adds r2, r0, #0
    adds r2, #0x64
    strh r1, [r2]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    cmp r1, #0x64
    ble .L08028D66
    movs r0, #0x64
    strh r0, [r2]
.L08028D66:
    movs r1, #0
    ldrsh r0, [r2, r1]
    cmp r0, #0
    bge .L08028D72
    movs r0, #0
    strh r0, [r2]
.L08028D72:
    bx lr
    func_end func_08028D48

    thumb_func_start func_08028D74
func_08028D74: @ 0x08028D74
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r1, r4, #0
    adds r1, #0x66
    adds r0, r6, #0
    adds r0, #0x68
    ldrh r1, [r1]
    ldrh r0, [r0]
    subs r5, r1, r0
    adds r7, r4, #0
    adds r7, #0x6a
    strh r5, [r7]
    ldr r2, .L08028DE8 @ =gPlaySt
    adds r1, r2, #0
    adds r1, #0x2b
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08028DD0
    ldrb r0, [r2, #0x1b]
    cmp r0, #1
    beq .L08028DD0
    ldr r1, .L08028DEC @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08028DD0
    movs r0, #0xc0
    ldrb r1, [r6, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L08028DD0
    ldrh r2, [r2, #0x2c]
    lsls r0, r2, #0x13
    lsrs r0, r0, #0x17
    movs r1, #0xc
    bl __divsi3
    cmp r0, #0xa
    ble .L08028DCC
    movs r0, #0xa
.L08028DCC:
    subs r0, r5, r0
    strh r0, [r7]
.L08028DD0:
    adds r0, r4, #0
    adds r0, #0x6a
    movs r2, #0
    ldrsh r1, [r0, r2]
    adds r5, r0, #0
    cmp r1, #0
    bge .L08028DE2
    movs r0, #0
    strh r0, [r5]
.L08028DE2:
    movs r4, #0
    b .L08028DF2
    .align 2, 0
.L08028DE8: .4byte gPlaySt
.L08028DEC: .4byte gBmSt
.L08028DF0:
    adds r4, #1
.L08028DF2:
    cmp r4, #4
    bgt .L08028E16
    lsls r1, r4, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    cmp r0, #0
    beq .L08028E16
    bl GetItemAttributes
    movs r1, #0x80
    lsls r1, r1, #8
    ands r1, r0
    cmp r1, #0
    beq .L08028DF0
    movs r0, #0
    strh r0, [r5]
.L08028E16:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08028D74

    thumb_func_start func_08028E1C
func_08028E1C: @ 0x08028E1C
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    ldr r0, [r3]
    ldr r1, [r3, #4]
    ldr r2, [r0, #0x28]
    ldr r0, [r1, #0x28]
    orrs r2, r0
    movs r0, #0x80
    lsls r0, r0, #0x12
    ands r2, r0
    cmp r2, #0
    bne .L08028E3E
    adds r0, r3, #0
    adds r0, #0x6c
    strh r2, [r0]
    b .L08028E72
.L08028E3E:
    adds r2, r3, #0
    adds r2, #0x6c
    movs r0, #0x32
    strh r0, [r2]
    ldr r3, [r4]
    ldr r4, [r4, #4]
    ldr r0, [r3, #0x28]
    ldr r1, [r4, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #8
    ands r0, r1
    cmp r0, #0
    beq .L08028E5E
    movs r0, #0x19
    strh r0, [r2]
.L08028E5E:
    ldr r0, [r3, #0x28]
    ldr r1, [r4, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0x11
    ands r0, r1
    cmp r0, #0
    beq .L08028E72
    movs r0, #0
    strh r0, [r2]
.L08028E72:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08028E1C

    thumb_func_start func_08028E78
func_08028E78: @ 0x08028E78
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x48
    ldrh r0, [r1]
    cmp r0, #0
    beq .L08028EAE
    bl GetItemType
    adds r1, r0, #0
    cmp r1, #7
    bgt .L08028EAE
    adds r0, r4, #0
    adds r0, #0x28
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0xfa
    bls .L08028EAE
    adds r1, r4, #0
    adds r1, #0x60
    ldrh r0, [r1]
    adds r0, #5
    strh r0, [r1]
    adds r1, #6
    ldrh r0, [r1]
    adds r0, #5
    strh r0, [r1]
.L08028EAE:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08028E78

    thumb_func_start func_08028EB4
func_08028EB4: @ 0x08028EB4
    adds r1, r0, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #6
    beq .L08028EDA
    cmp r0, #6
    bgt .L08028ECC
    cmp r0, #5
    beq .L08028ED6
    b .L08028EEA
.L08028ECC:
    cmp r0, #7
    beq .L08028EDE
    cmp r0, #8
    beq .L08028EE2
    b .L08028EEA
.L08028ED6:
    adds r1, #0x5a
    b .L08028EE4
.L08028EDA:
    adds r1, #0x5c
    b .L08028EE4
.L08028EDE:
    adds r1, #0x66
    b .L08028EE4
.L08028EE2:
    adds r1, #0x62
.L08028EE4:
    ldrh r0, [r1]
    adds r0, #0xa
    strh r0, [r1]
.L08028EEA:
    bx lr
    func_end func_08028EB4

    thumb_func_start func_08028EEC
func_08028EEC: @ 0x08028EEC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    ldr r5, [r4, #0x4c]
    movs r0, #0x40
    ands r5, r0
    cmp r5, #0
    beq .L08028F34
    adds r0, r4, #0
    adds r0, #0x48
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x10
    blt .L08028F7C
    cmp r0, #0x11
    ble .L08028F12
    cmp r0, #0x99
    bne .L08028F7C
.L08028F12:
    adds r2, r4, #0
    adds r2, #0x5a
    movs r0, #0x14
    ldrsb r0, [r4, r0]
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    ldrh r1, [r2]
    subs r0, r1, r0
    movs r1, #0
    strh r0, [r2]
    adds r0, r4, #0
    adds r0, #0x66
    strh r1, [r0]
    adds r0, #4
    strh r1, [r0]
    b .L08028F7C
.L08028F34:
    adds r0, r4, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemWeaponEffect
    cmp r0, #3
    bne .L08028F68
    movs r0, #0x13
    ldrsb r0, [r6, r0]
    adds r0, #1
    asrs r0, r0, #1
    adds r1, r4, #0
    adds r1, #0x5a
    strh r0, [r1]
    cmp r0, #0
    bne .L08028F58
    movs r0, #1
    strh r0, [r1]
.L08028F58:
    adds r0, r6, #0
    adds r0, #0x5c
    strh r5, [r0]
    adds r0, r4, #0
    adds r0, #0x66
    strh r5, [r0]
    adds r0, #4
    strh r5, [r0]
.L08028F68:
    ldr r0, [r4, #0x4c]
    movs r1, #0x80
    lsls r1, r1, #0xa
    ands r0, r1
    cmp r0, #0
    beq .L08028F7C
    adds r1, r6, #0
    adds r1, #0x5c
    movs r0, #0
    strh r0, [r1]
.L08028F7C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08028EEC

    thumb_func_start ClearBattleHits
ClearBattleHits: @ 0x08028F84
    push {r4, r5, lr}
    ldr r4, .L08028FA8 @ =0x0203A4F0
    ldr r5, .L08028FAC @ =0x0203A50C
    movs r2, #0
    movs r3, #0
    adds r0, r4, #0
    movs r1, #6
.L08028F92:
    strh r3, [r0]
    strb r2, [r0, #2]
    strb r2, [r0, #3]
    adds r0, #4
    subs r1, #1
    cmp r1, #0
    bge .L08028F92
    str r4, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08028FA8: .4byte 0x0203A4F0
.L08028FAC: .4byte 0x0203A50C
    func_end ClearBattleHits

    thumb_func_start BattleUnwind
BattleUnwind: @ 0x08028FB0
    push {r4, r5, lr}
    sub sp, #8
    bl ClearBattleHits
    add r4, sp, #4
    mov r0, sp
    adds r1, r4, #0
    bl func_08029028
    ldr r5, .L08029024 @ =0x0203A50C
    ldr r1, [r5]
    movs r0, #1
    ldrb r2, [r1, #2]
    orrs r0, r2
    strb r0, [r1, #2]
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl func_080290B8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08029010
    ldr r1, [r5]
    movs r0, #8
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    ldr r0, [sp, #4]
    ldr r1, [sp]
    bl func_080290B8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08029010
    mov r0, sp
    adds r1, r4, #0
    bl func_0802903C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08029010
    ldr r1, [r5]
    movs r0, #4
    strh r0, [r1]
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl func_080290B8
.L08029010:
    ldr r0, .L08029024 @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #0x80
    ldrb r2, [r1, #2]
    orrs r0, r2
    strb r0, [r1, #2]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08029024: .4byte 0x0203A50C
    func_end BattleUnwind

    thumb_func_start func_08029028
func_08029028: @ 0x08029028
    ldr r2, .L08029034 @ =0x0203A3F0
    str r2, [r0]
    ldr r0, .L08029038 @ =0x0203A470
    str r0, [r1]
    bx lr
    .align 2, 0
.L08029034: .4byte 0x0203A3F0
.L08029038: .4byte 0x0203A470
    func_end func_08029028

    thumb_func_start func_0802903C
func_0802903C: @ 0x0802903C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r7, r1, #0
    ldr r0, .L08029070 @ =0x0203A470
    adds r2, r0, #0
    adds r2, #0x5e
    movs r3, #0
    ldrsh r1, [r2, r3]
    adds r6, r0, #0
    cmp r1, #0xfa
    bgt .L080290AE
    ldr r0, .L08029074 @ =0x0203A3F0
    adds r1, r0, #0
    adds r1, #0x5e
    movs r5, #0
    ldrsh r3, [r1, r5]
    movs r1, #0
    ldrsh r2, [r2, r1]
    subs r1, r3, r2
    adds r5, r0, #0
    cmp r1, #0
    blt .L08029078
    cmp r1, #3
    ble .L080290AE
    b .L0802907E
    .align 2, 0
.L08029070: .4byte 0x0203A470
.L08029074: .4byte 0x0203A3F0
.L08029078:
    subs r0, r2, r3
    cmp r0, #3
    ble .L080290AE
.L0802907E:
    adds r0, r5, #0
    adds r0, #0x5e
    adds r2, r6, #0
    adds r2, #0x5e
    movs r3, #0
    ldrsh r1, [r0, r3]
    movs r3, #0
    ldrsh r0, [r2, r3]
    cmp r1, r0
    ble .L08029098
    str r5, [r4]
    str r6, [r7]
    b .L0802909C
.L08029098:
    str r6, [r4]
    str r5, [r7]
.L0802909C:
    ldr r0, [r4]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemWeaponEffect
    cmp r0, #3
    beq .L080290AE
    movs r0, #1
    b .L080290B0
.L080290AE:
    movs r0, #0
.L080290B0:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802903C

    thumb_func_start func_080290B8
func_080290B8: @ 0x080290B8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    mov r8, r1
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    bne .L080290D0
    b .L08029104
.L080290CC:
    movs r0, #1
    b .L08029106
.L080290D0:
    ldr r0, .L08029110 @ =0x0203A50C
    ldr r0, [r0]
    ldrh r7, [r0]
    adds r0, r6, #0
    bl func_08029114
    adds r5, r0, #0
    movs r4, #0
    cmp r4, r5
    bge .L08029104
.L080290E4:
    ldr r0, .L08029110 @ =0x0203A50C
    ldr r1, [r0]
    adds r0, r7, #0
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    adds r0, r6, #0
    mov r1, r8
    bl func_080294D8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080290CC
    adds r4, #1
    cmp r4, r5
    blt .L080290E4
.L08029104:
    movs r0, #0
.L08029106:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08029110: .4byte 0x0203A50C
    func_end func_080290B8

    thumb_func_start func_08029114
func_08029114: @ 0x08029114
    push {r4, lr}
    movs r4, #1
    bl func_08029128
    lsls r4, r0
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08029114

    thumb_func_start func_08029128
func_08029128: @ 0x08029128
    ldr r0, [r0, #0x4c]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08029148
    ldr r0, .L08029144 @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    movs r0, #1
    b .L0802914A
    .align 2, 0
.L08029144: .4byte 0x0203A50C
.L08029148:
    movs r0, #0
.L0802914A:
    bx lr
    func_end func_08029128

    thumb_func_start func_0802914C
func_0802914C: @ 0x0802914C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L080291F8 @ =0x081C3CE4
    mov r0, sp
    movs r2, #8
    bl memcpy
    movs r3, #0
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r6, [r0, #0x28]
    ldr r0, [r1, #0x28]
    orrs r6, r0
    movs r0, #0xc0
    lsls r0, r0, #0xf
    ands r6, r0
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    mov sl, r0
    ldrb r5, [r5, #0x11]
    lsls r5, r5, #0x18
    asrs r5, r5, #0x18
    mov sb, r5
    movs r7, #0xc0
    ldrb r4, [r4, #0xb]
    ands r7, r4
    ldr r0, .L080291FC @ =0x0203A3D8
    str r3, [r0, #0x10]
    str r3, [r0, #0x14]
    mov r5, sp
    movs r0, #3
    mov r8, r0
.L08029198:
    movs r0, #1
    ldrsb r0, [r5, r0]
    add r0, sb
    ldr r1, .L08029200 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0
    ldrsb r1, [r5, r1]
    ldr r0, [r0]
    add r1, sl
    adds r0, r0, r1
    ldrb r4, [r0]
    cmp r4, #0
    beq .L0802920C
    adds r0, r4, #0
    str r3, [sp, #8]
    bl GetUnit
    adds r2, r0, #0
    movs r0, #0xc0
    ands r4, r0
    ldr r3, [sp, #8]
    cmp r4, r7
    bne .L0802920C
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #2
    beq .L0802920C
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    ands r0, r6
    cmp r0, #0
    beq .L0802920C
    adds r3, #1
    ldr r1, .L080291FC @ =0x0203A3D8
    ldr r0, [r1, #0x10]
    cmp r0, #0
    bne .L08029204
    str r2, [r1, #0x10]
    b .L0802920C
    .align 2, 0
.L080291F8: .4byte 0x081C3CE4
.L080291FC: .4byte 0x0203A3D8
.L08029200: .4byte gBmMapUnit
.L08029204:
    ldr r0, [r1, #0x14]
    cmp r0, #0
    bne .L0802920C
    str r2, [r1, #0x14]
.L0802920C:
    adds r5, #2
    movs r0, #1
    rsbs r0, r0, #0
    add r8, r0
    mov r0, r8
    cmp r0, #0
    bge .L08029198
    movs r0, #0
    cmp r3, #1
    ble .L08029222
    movs r0, #1
.L08029222:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802914C

    thumb_func_start func_08029234
func_08029234: @ 0x08029234
    adds r3, r0, #0
    ldr r2, .L08029260 @ =0x0203A3D8
    adds r0, #0x5a
    ldrh r0, [r0]
    strh r0, [r2, #6]
    adds r1, #0x5c
    ldrh r0, [r1]
    strh r0, [r2, #8]
    adds r0, r3, #0
    adds r0, #0x64
    ldrh r0, [r0]
    strh r0, [r2, #0xa]
    adds r0, r3, #0
    adds r0, #0x6a
    ldrh r0, [r0]
    strh r0, [r2, #0xc]
    adds r0, r3, #0
    adds r0, #0x6c
    ldrh r0, [r0]
    strh r0, [r2, #0xe]
    bx lr
    .align 2, 0
.L08029260: .4byte 0x0203A3D8
    func_end func_08029234

    thumb_func_start func_08029264
func_08029264: @ 0x08029264
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802928C @ =0x0203A3D8
    movs r5, #0
    movs r0, #0
    strh r0, [r4, #4]
    ldrh r0, [r4, #0xa]
    movs r1, #1
    bl func_080285A8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08029294
    ldr r0, .L08029290 @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #2
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    b .L08029314
    .align 2, 0
.L0802928C: .4byte 0x0203A3D8
.L08029290: .4byte 0x0203A50C
.L08029294:
    ldrh r1, [r4, #6]
    ldrh r2, [r4, #8]
    subs r0, r1, r2
    strh r0, [r4, #4]
    ldrh r0, [r4, #0xc]
    movs r1, #0
    bl func_0802857C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080292EA
    ldrh r0, [r4, #0xe]
    movs r1, #0
    bl func_0802857C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080292D4
    ldr r0, .L080292D0 @ =0x0203A50C
    ldr r1, [r0]
    movs r2, #0x80
    lsls r2, r2, #4
    adds r0, r2, #0
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    movs r0, #0x7f
    b .L080292E8
    .align 2, 0
.L080292D0: .4byte 0x0203A50C
.L080292D4:
    ldr r0, .L0802931C @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #1
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    movs r0, #4
    ldrsh r1, [r4, r0]
    lsls r0, r1, #1
    adds r0, r0, r1
.L080292E8:
    strh r0, [r4, #4]
.L080292EA:
    ldr r1, .L08029320 @ =0x0203A3D8
    movs r2, #4
    ldrsh r0, [r1, r2]
    cmp r0, #0x7f
    ble .L080292F8
    movs r0, #0x7f
    strh r0, [r1, #4]
.L080292F8:
    movs r2, #4
    ldrsh r0, [r1, r2]
    cmp r0, #0
    bge .L08029304
    movs r0, #0
    strh r0, [r1, #4]
.L08029304:
    movs r2, #4
    ldrsh r0, [r1, r2]
    cmp r0, #0
    beq .L08029314
    adds r1, r6, #0
    adds r1, #0x7c
    movs r0, #1
    strb r0, [r1]
.L08029314:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802931C: .4byte 0x0203A50C
.L08029320: .4byte 0x0203A3D8
    func_end func_08029264

    thumb_func_start func_08029324
func_08029324: @ 0x08029324
    push {r4, r5, lr}
    adds r2, r0, #0
    adds r3, r1, #0
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0xc0
    lsls r1, r1, #0xf
    ands r0, r1
    cmp r0, #0
    beq .L0802938C
    ldr r4, .L08029394 @ =0x0203A3D8
    ldrb r1, [r4, #2]
    cmp r1, #1
    bne .L0802938C
    ldr r5, .L08029398 @ =0x0203A50C
    ldr r0, [r5]
    ldrb r0, [r0, #2]
    ands r1, r0
    cmp r1, #0
    beq .L0802938C
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    beq .L0802938C
    movs r0, #0x20
    ldrh r1, [r4]
    ands r0, r1
    cmp r0, #0
    bne .L0802938C
    adds r0, r2, #0
    adds r1, r3, #0
    bl func_0802914C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802938C
    ldr r1, [r5]
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r2, #0
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    movs r0, #0x64
    strh r0, [r4, #0xc]
    strh r0, [r4, #0xa]
.L0802938C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08029394: .4byte 0x0203A3D8
.L08029398: .4byte 0x0203A50C
    func_end func_08029324

    thumb_func_start BattleGenerateHitEffects
BattleGenerateHitEffects: @ 0x0802939C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r7, r1, #0
    adds r1, r5, #0
    adds r1, #0x7b
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    ldr r6, .L080293D0 @ =0x0203A50C
    ldr r1, [r6]
    movs r0, #2
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0802948E
    adds r4, r5, #0
    adds r4, #0x48
    ldrh r0, [r4]
    bl GetItemWeaponEffect
    cmp r0, #1
    beq .L080293D4
    cmp r0, #3
    beq .L080293E0
    b .L080293EE
    .align 2, 0
.L080293D0: .4byte 0x0203A50C
.L080293D4:
    adds r1, r7, #0
    adds r1, #0x6f
    strb r0, [r1]
    ldr r0, [r6]
    movs r1, #0x40
    b .L080293E8
.L080293E0:
    ldr r0, [r6]
    movs r3, #0x80
    lsls r3, r3, #2
    adds r1, r3, #0
.L080293E8:
    ldrh r2, [r0]
    orrs r1, r2
    strh r1, [r0]
.L080293EE:
    ldrh r0, [r4]
    bl GetItemWeaponEffect
    cmp r0, #4
    bne .L0802943C
    movs r1, #0x19
    ldrsb r1, [r5, r1]
    movs r0, #0x1f
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    movs r1, #0
    bl func_0802857C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802943C
    ldr r0, .L08029434 @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #0x80
    movs r2, #0
    ldrh r3, [r1]
    orrs r0, r3
    strh r0, [r1]
    ldr r0, .L08029438 @ =0x0203A3D8
    ldrb r1, [r5, #0x13]
    ldrb r0, [r0, #4]
    subs r0, r1, r0
    strb r0, [r5, #0x13]
    lsls r0, r0, #0x18
    cmp r0, #0
    bge .L0802945E
    strb r2, [r5, #0x13]
    b .L0802945E
    .align 2, 0
.L08029434: .4byte 0x0203A50C
.L08029438: .4byte 0x0203A3D8
.L0802943C:
    ldr r1, .L080294D0 @ =0x0203A3D8
    movs r2, #0x13
    ldrsb r2, [r7, r2]
    movs r3, #4
    ldrsh r0, [r1, r3]
    cmp r0, r2
    ble .L0802944C
    strh r2, [r1, #4]
.L0802944C:
    ldrb r2, [r7, #0x13]
    ldrb r1, [r1, #4]
    subs r0, r2, r1
    strb r0, [r7, #0x13]
    lsls r0, r0, #0x18
    cmp r0, #0
    bge .L0802945E
    movs r0, #0
    strb r0, [r7, #0x13]
.L0802945E:
    ldrh r0, [r4]
    bl GetItemWeaponEffect
    cmp r0, #2
    bne .L0802948E
    ldr r0, .L080294D0 @ =0x0203A3D8
    ldrb r3, [r5, #0x13]
    ldrb r0, [r0, #4]
    adds r0, r3, r0
    strb r0, [r5, #0x13]
    lsls r0, r0, #0x18
    ldrb r2, [r5, #0x12]
    lsls r1, r2, #0x18
    cmp r0, r1
    ble .L0802947E
    strb r2, [r5, #0x13]
.L0802947E:
    ldr r0, .L080294D4 @ =0x0203A50C
    ldr r1, [r0]
    movs r2, #0x80
    lsls r2, r2, #1
    adds r0, r2, #0
    ldrh r3, [r1]
    orrs r0, r3
    strh r0, [r1]
.L0802948E:
    ldr r2, .L080294D4 @ =0x0203A50C
    ldr r1, [r2]
    ldr r0, .L080294D0 @ =0x0203A3D8
    ldrh r0, [r0, #4]
    strb r0, [r1, #3]
    ldr r1, [r2]
    movs r0, #2
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L080294AE
    ldr r0, [r5, #0x4c]
    movs r1, #0x82
    ands r0, r1
    cmp r0, #0
    beq .L080294C8
.L080294AE:
    adds r4, r5, #0
    adds r4, #0x48
    ldrh r0, [r4]
    bl GetItemAfterUse
    strh r0, [r4]
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L080294C8
    adds r1, r5, #0
    adds r1, #0x7d
    movs r0, #1
    strb r0, [r1]
.L080294C8:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080294D0: .4byte 0x0203A3D8
.L080294D4: .4byte 0x0203A50C
    func_end BattleGenerateHitEffects

    thumb_func_start func_080294D8
func_080294D8: @ 0x080294D8
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r6, .L08029550 @ =0x0203A470
    cmp r4, r6
    bne .L080294F0
    ldr r0, .L08029554 @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #8
    ldrb r2, [r1, #2]
    orrs r0, r2
    strb r0, [r1, #2]
.L080294F0:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08029234
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08029324
    adds r0, r4, #0
    bl func_08029264
    adds r0, r4, #0
    adds r1, r5, #0
    bl BattleGenerateHitEffects
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    beq .L0802951E
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L08029558
.L0802951E:
    adds r1, r4, #0
    adds r1, #0x7b
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    ldr r2, .L08029554 @ =0x0203A50C
    ldr r1, [r2]
    movs r0, #2
    ldrb r3, [r1, #2]
    orrs r0, r3
    strb r0, [r1, #2]
    movs r0, #0x13
    ldrsb r0, [r6, r0]
    cmp r0, #0
    bne .L08029546
    ldr r1, [r2]
    movs r0, #4
    ldrb r3, [r1, #2]
    orrs r0, r3
    strb r0, [r1, #2]
.L08029546:
    ldr r0, [r2]
    adds r0, #4
    str r0, [r2]
    movs r0, #1
    b .L08029562
    .align 2, 0
.L08029550: .4byte 0x0203A470
.L08029554: .4byte 0x0203A50C
.L08029558:
    ldr r1, .L08029568 @ =0x0203A50C
    ldr r0, [r1]
    adds r0, #4
    str r0, [r1]
    movs r0, #0
.L08029562:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08029568: .4byte 0x0203A50C
    func_end func_080294D8

    thumb_func_start BattleApplyExpGains
BattleApplyExpGains: @ 0x0802956C
    push {r4, r5, r6, lr}
    ldr r5, .L080295D4 @ =0x0203A3F0
    movs r0, #0xb
    ldrsb r0, [r5, r0]
    movs r1, #0xc0
    ands r0, r1
    cmp r0, #0
    bne .L0802958A
    ldr r0, .L080295D8 @ =0x0203A470
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ands r0, r1
    cmp r0, #0
    beq .L080295CE
.L0802958A:
    ldr r1, .L080295DC @ =gPlaySt
    movs r0, #0x80
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L080295CE
    ldr r4, .L080295D8 @ =0x0203A470
    adds r0, r5, #0
    adds r1, r4, #0
    bl GetBattleUnitExpGain
    adds r6, r5, #0
    adds r6, #0x6e
    strb r0, [r6]
    adds r0, r4, #0
    adds r1, r5, #0
    bl GetBattleUnitExpGain
    adds r1, r4, #0
    adds r1, #0x6e
    strb r0, [r1]
    ldrb r2, [r5, #9]
    ldrb r6, [r6]
    adds r1, r2, r6
    strb r1, [r5, #9]
    ldrb r1, [r4, #9]
    adds r0, r1, r0
    strb r0, [r4, #9]
    adds r0, r5, #0
    bl func_08029660
    adds r0, r4, #0
    bl func_08029660
.L080295CE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080295D4: .4byte 0x0203A3F0
.L080295D8: .4byte 0x0203A470
.L080295DC: .4byte gPlaySt
    func_end BattleApplyExpGains

    thumb_func_start GetStatIncrease
GetStatIncrease: @ 0x080295E0
    push {r4, lr}
    movs r4, #0
    cmp r0, #0x64
    ble .L080295F0
.L080295E8:
    adds r4, #1
    subs r0, #0x64
    cmp r0, #0x64
    bgt .L080295E8
.L080295F0:
    bl RandRoll
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080295FC
    adds r4, #1
.L080295FC:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end GetStatIncrease

    thumb_func_start GetAutoleveledStatIncrease
GetAutoleveledStatIncrease: @ 0x08029604
    push {r4, lr}
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r4, #0
    cmp r4, #0
    bge .L08029612
    adds r0, r4, #3
.L08029612:
    asrs r0, r0, #2
    bl RandNext
    adds r1, r0, #0
    adds r0, r4, #0
    cmp r4, #0
    bge .L08029622
    adds r0, r4, #7
.L08029622:
    asrs r0, r0, #3
    subs r0, r1, r0
    adds r0, r4, r0
    bl GetStatIncrease
    pop {r4}
    pop {r1}
    bx r1
    func_end GetAutoleveledStatIncrease

    thumb_func_start CanBattleUnitGainExp
CanBattleUnitGainExp: @ 0x08029634
    adds r2, r0, #0
    ldr r1, .L08029658 @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08029652
    ldrb r0, [r2, #9]
    cmp r0, #0xff
    beq .L0802965C
    movs r0, #0xc0
    ldrb r2, [r2, #0xb]
    ands r0, r2
    cmp r0, #0
    bne .L0802965C
.L08029652:
    movs r0, #1
    b .L0802965E
    .align 2, 0
.L08029658: .4byte gBmSt
.L0802965C:
    movs r0, #0
.L0802965E:
    bx lr
    func_end CanBattleUnitGainExp

    thumb_func_start func_08029660
func_08029660: @ 0x08029660
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r7, r0, #0
    bl CanBattleUnitGainExp
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802967A
    b .L08029808
.L0802967A:
    ldrb r0, [r7, #9]
    cmp r0, #0x63
    bhi .L08029682
    b .L08029808
.L08029682:
    adds r2, r0, #0
    subs r2, #0x64
    strb r2, [r7, #9]
    ldrb r0, [r7, #8]
    adds r0, #1
    strb r0, [r7, #8]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x14
    bne .L080296A4
    adds r1, r7, #0
    adds r1, #0x6e
    ldrb r3, [r1]
    subs r0, r3, r2
    strb r0, [r1]
    movs r0, #0xff
    strb r0, [r7, #9]
.L080296A4:
    ldr r0, [r7, #0xc]
    movs r1, #0x80
    lsls r1, r1, #6
    ands r0, r1
    movs r1, #0
    mov sl, r1
    cmp r0, #0
    beq .L080296B8
    movs r3, #5
    mov sl, r3
.L080296B8:
    ldr r0, [r7]
    ldrb r0, [r0, #0x1c]
    add r0, sl
    bl GetStatIncrease
    adds r1, r7, #0
    adds r1, #0x73
    str r1, [sp]
    strb r0, [r1]
    movs r6, #0
    ldrsb r6, [r1, r6]
    ldr r0, [r7]
    ldrb r0, [r0, #0x1d]
    add r0, sl
    bl GetStatIncrease
    adds r3, r7, #0
    adds r3, #0x74
    str r3, [sp, #4]
    strb r0, [r3]
    movs r0, #0
    ldrsb r0, [r3, r0]
    adds r6, r6, r0
    ldr r0, [r7]
    ldrb r0, [r0, #0x1e]
    add r0, sl
    bl GetStatIncrease
    movs r1, #0x75
    adds r1, r1, r7
    mov r8, r1
    strb r0, [r1]
    movs r0, #0
    ldrsb r0, [r1, r0]
    adds r6, r6, r0
    ldr r0, [r7]
    ldrb r0, [r0, #0x1f]
    add r0, sl
    bl GetStatIncrease
    movs r3, #0x76
    adds r3, r3, r7
    mov sb, r3
    strb r0, [r3]
    movs r0, #0
    ldrsb r0, [r3, r0]
    adds r6, r6, r0
    ldr r0, [r7]
    adds r0, #0x20
    ldrb r0, [r0]
    add r0, sl
    bl GetStatIncrease
    adds r5, r7, #0
    adds r5, #0x77
    strb r0, [r5]
    movs r0, #0
    ldrsb r0, [r5, r0]
    adds r6, r6, r0
    ldr r0, [r7]
    adds r0, #0x21
    ldrb r0, [r0]
    add r0, sl
    bl GetStatIncrease
    adds r4, r7, #0
    adds r4, #0x78
    strb r0, [r4]
    movs r0, #0
    ldrsb r0, [r4, r0]
    adds r6, r6, r0
    ldr r0, [r7]
    adds r0, #0x22
    ldrb r0, [r0]
    add r0, sl
    bl GetStatIncrease
    adds r1, r7, #0
    adds r1, #0x79
    strb r0, [r1]
    movs r0, #0
    ldrsb r0, [r1, r0]
    adds r6, r6, r0
    ldr r0, [sp]
    str r0, [sp, #0xc]
    ldr r3, [sp, #4]
    str r3, [sp, #8]
    mov sl, r8
    mov r8, r5
    adds r5, r4, #0
    adds r4, r1, #0
    cmp r6, #0
    bne .L080297FA
    b .L080297E4
.L08029774:
    ldr r0, [r7]
    ldrb r0, [r0, #0x1d]
    bl GetStatIncrease
    ldr r1, [sp, #8]
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080297FA
    ldr r0, [r7]
    ldrb r0, [r0, #0x1e]
    bl GetStatIncrease
    mov r3, sl
    strb r0, [r3]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080297FA
    ldr r0, [r7]
    ldrb r0, [r0, #0x1f]
    bl GetStatIncrease
    mov r1, sb
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080297FA
    ldr r0, [r7]
    adds r0, #0x20
    ldrb r0, [r0]
    bl GetStatIncrease
    mov r3, r8
    strb r0, [r3]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080297FA
    ldr r0, [r7]
    adds r0, #0x21
    ldrb r0, [r0]
    bl GetStatIncrease
    strb r0, [r5]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080297FA
    ldr r0, [r7]
    adds r0, #0x22
    ldrb r0, [r0]
    bl GetStatIncrease
    strb r0, [r4]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080297FA
    adds r6, #1
.L080297E4:
    cmp r6, #1
    bgt .L080297FA
    ldr r0, [r7]
    ldrb r0, [r0, #0x1c]
    bl GetStatIncrease
    ldr r1, [sp, #0xc]
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08029774
.L080297FA:
    movs r0, #0xb
    ldrsb r0, [r7, r0]
    bl GetUnit
    adds r1, r7, #0
    bl func_08029970
.L08029808:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08029660

    thumb_func_start UnitPromote
UnitPromote: @ 0x08029818
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r0, [r4, #4]
    ldrb r0, [r0, #5]
    bl GetClassData
    adds r3, r0, #0
    adds r0, #0x22
    ldrb r1, [r4, #0x12]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x12]
    lsls r0, r0, #0x18
    ldrb r2, [r3, #0x13]
    lsls r1, r2, #0x18
    cmp r0, r1
    ble .L0802983C
    strb r2, [r4, #0x12]
.L0802983C:
    adds r0, r3, #0
    adds r0, #0x23
    ldrb r5, [r4, #0x14]
    ldrb r0, [r0]
    adds r0, r5, r0
    strb r0, [r4, #0x14]
    lsls r0, r0, #0x18
    ldrb r2, [r3, #0x14]
    lsls r1, r2, #0x18
    cmp r0, r1
    ble .L08029854
    strb r2, [r4, #0x14]
.L08029854:
    adds r0, r3, #0
    adds r0, #0x24
    ldrb r7, [r4, #0x15]
    ldrb r0, [r0]
    adds r0, r7, r0
    strb r0, [r4, #0x15]
    lsls r0, r0, #0x18
    ldrb r2, [r3, #0x15]
    lsls r1, r2, #0x18
    cmp r0, r1
    ble .L0802986C
    strb r2, [r4, #0x15]
.L0802986C:
    adds r0, r3, #0
    adds r0, #0x25
    ldrb r1, [r4, #0x16]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x16]
    lsls r0, r0, #0x18
    ldrb r2, [r3, #0x16]
    lsls r1, r2, #0x18
    cmp r0, r1
    ble .L08029884
    strb r2, [r4, #0x16]
.L08029884:
    adds r0, r3, #0
    adds r0, #0x26
    ldrb r5, [r4, #0x17]
    ldrb r0, [r0]
    adds r0, r5, r0
    strb r0, [r4, #0x17]
    lsls r0, r0, #0x18
    ldrb r2, [r3, #0x17]
    lsls r1, r2, #0x18
    cmp r0, r1
    ble .L0802989C
    strb r2, [r4, #0x17]
.L0802989C:
    adds r0, r3, #0
    adds r0, #0x27
    ldrb r7, [r4, #0x18]
    ldrb r0, [r0]
    adds r0, r7, r0
    strb r0, [r4, #0x18]
    lsls r0, r0, #0x18
    ldrb r2, [r3, #0x18]
    lsls r1, r2, #0x18
    cmp r0, r1
    ble .L080298B4
    strb r2, [r4, #0x18]
.L080298B4:
    movs r2, #0
    adds r6, r4, #0
    adds r6, #0x28
    adds r5, r6, #0
.L080298BC:
    adds r0, r5, r2
    ldr r1, [r4, #4]
    adds r1, #0x2c
    adds r1, r1, r2
    ldrb r7, [r0]
    ldrb r1, [r1]
    subs r1, r7, r1
    strb r1, [r0]
    adds r2, #1
    cmp r2, #7
    ble .L080298BC
    str r3, [r4, #4]
    movs r2, #0
    adds r3, r6, #0
.L080298D8:
    adds r1, r3, r2
    ldr r0, [r4, #4]
    adds r0, #0x2c
    adds r0, r0, r2
    ldrb r0, [r0]
    ldrb r5, [r1]
    adds r0, r0, r5
    cmp r0, #0xfb
    ble .L080298EC
    movs r0, #0xfb
.L080298EC:
    strb r0, [r1]
    adds r2, #1
    cmp r2, #7
    ble .L080298D8
    movs r1, #0
    movs r0, #1
    strb r0, [r4, #8]
    strb r1, [r4, #9]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end UnitPromote

    thumb_func_start GenerateBattleUnitStatGainsComparatively
GenerateBattleUnitStatGainsComparatively: @ 0x08029904
    push {r4, lr}
    adds r3, r0, #0
    ldrb r2, [r3, #0x12]
    ldrb r4, [r1, #0x12]
    subs r0, r2, r4
    adds r2, r3, #0
    adds r2, #0x73
    strb r0, [r2]
    ldrb r0, [r3, #0x14]
    ldrb r4, [r1, #0x14]
    subs r2, r0, r4
    adds r0, r3, #0
    adds r0, #0x74
    strb r2, [r0]
    ldrb r2, [r3, #0x15]
    ldrb r4, [r1, #0x15]
    subs r0, r2, r4
    adds r2, r3, #0
    adds r2, #0x75
    strb r0, [r2]
    ldrb r2, [r3, #0x16]
    ldrb r4, [r1, #0x16]
    subs r0, r2, r4
    adds r2, r3, #0
    adds r2, #0x76
    strb r0, [r2]
    ldrb r2, [r3, #0x17]
    ldrb r4, [r1, #0x17]
    subs r0, r2, r4
    adds r2, r3, #0
    adds r2, #0x77
    strb r0, [r2]
    ldrb r0, [r3, #0x18]
    ldrb r4, [r1, #0x18]
    subs r2, r0, r4
    adds r0, r3, #0
    adds r0, #0x78
    strb r2, [r0]
    ldrb r2, [r3, #0x19]
    ldrb r4, [r1, #0x19]
    subs r0, r2, r4
    adds r2, r3, #0
    adds r2, #0x79
    strb r0, [r2]
    ldrb r0, [r3, #0x1a]
    ldrb r1, [r1, #0x1a]
    subs r1, r0, r1
    adds r0, r3, #0
    adds r0, #0x7a
    strb r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    func_end GenerateBattleUnitStatGainsComparatively

    thumb_func_start func_08029970
func_08029970: @ 0x08029970
    push {r4, r5, r6, lr}
    adds r2, r0, #0
    mov ip, r1
    movs r1, #0x12
    ldrsb r1, [r2, r1]
    mov r0, ip
    adds r0, #0x73
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r1, r0
    movs r0, #0xc0
    ldrb r3, [r2, #0xb]
    ands r0, r3
    cmp r0, #0x80
    bne .L08029996
    cmp r1, #0x78
    bgt .L0802999A
    b .L080299B6
.L08029996:
    cmp r1, #0x3c
    ble .L080299B6
.L0802999A:
    movs r1, #0x12
    ldrsb r1, [r2, r1]
    movs r0, #0xc0
    ldrb r6, [r2, #0xb]
    ands r0, r6
    cmp r0, #0x80
    bne .L080299AC
    movs r0, #0x78
    b .L080299AE
.L080299AC:
    movs r0, #0x3c
.L080299AE:
    subs r0, r0, r1
    mov r1, ip
    adds r1, #0x73
    strb r0, [r1]
.L080299B6:
    movs r0, #0x14
    ldrsb r0, [r2, r0]
    mov r4, ip
    adds r4, #0x74
    movs r1, #0
    ldrsb r1, [r4, r1]
    adds r0, r0, r1
    ldr r5, [r2, #4]
    movs r1, #0x14
    ldrsb r1, [r5, r1]
    adds r3, r5, #0
    cmp r0, r1
    ble .L080299D8
    ldrb r1, [r3, #0x14]
    ldrb r6, [r2, #0x14]
    subs r0, r1, r6
    strb r0, [r4]
.L080299D8:
    movs r0, #0x15
    ldrsb r0, [r2, r0]
    mov r4, ip
    adds r4, #0x75
    movs r1, #0
    ldrsb r1, [r4, r1]
    adds r0, r0, r1
    movs r1, #0x15
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L080299F6
    ldrb r1, [r3, #0x15]
    ldrb r6, [r2, #0x15]
    subs r0, r1, r6
    strb r0, [r4]
.L080299F6:
    movs r0, #0x16
    ldrsb r0, [r2, r0]
    mov r4, ip
    adds r4, #0x76
    movs r1, #0
    ldrsb r1, [r4, r1]
    adds r0, r0, r1
    movs r1, #0x16
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L08029A14
    ldrb r1, [r3, #0x16]
    ldrb r6, [r2, #0x16]
    subs r0, r1, r6
    strb r0, [r4]
.L08029A14:
    movs r0, #0x17
    ldrsb r0, [r2, r0]
    mov r4, ip
    adds r4, #0x77
    movs r1, #0
    ldrsb r1, [r4, r1]
    adds r0, r0, r1
    movs r1, #0x17
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L08029A32
    ldrb r3, [r3, #0x17]
    ldrb r1, [r2, #0x17]
    subs r0, r3, r1
    strb r0, [r4]
.L08029A32:
    movs r0, #0x18
    ldrsb r0, [r2, r0]
    mov r3, ip
    adds r3, #0x78
    movs r1, #0
    ldrsb r1, [r3, r1]
    adds r0, r0, r1
    movs r1, #0x18
    ldrsb r1, [r5, r1]
    cmp r0, r1
    ble .L08029A50
    ldrb r5, [r5, #0x18]
    ldrb r6, [r2, #0x18]
    subs r0, r5, r6
    strb r0, [r3]
.L08029A50:
    movs r0, #0x19
    ldrsb r0, [r2, r0]
    mov r3, ip
    adds r3, #0x79
    movs r1, #0
    ldrsb r1, [r3, r1]
    adds r0, r0, r1
    cmp r0, #0x1e
    ble .L08029A6A
    movs r0, #0x1e
    ldrb r2, [r2, #0x19]
    subs r0, r0, r2
    strb r0, [r3]
.L08029A6A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08029970

    thumb_func_start BattleApplyUnitUpdates
BattleApplyUnitUpdates: @ 0x08029A70
    push {r4, r5, r6, r7, lr}
    ldr r5, .L08029AE4 @ =0x0203A3F0
    movs r0, #0xb
    ldrsb r0, [r5, r0]
    bl GetUnit
    adds r7, r0, #0
    ldr r4, .L08029AE8 @ =0x0203A470
    movs r0, #0xb
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r6, r0, #0
    adds r0, r5, #0
    adds r0, #0x52
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08029AAC
    adds r0, r5, #0
    adds r0, #0x51
    ldrb r0, [r0]
    lsls r1, r0, #1
    adds r0, r5, #0
    adds r0, #0x1e
    adds r1, r1, r0
    adds r0, #0x2a
    ldrh r0, [r0]
    strh r0, [r1]
.L08029AAC:
    adds r0, r4, #0
    adds r0, #0x52
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08029ACE
    adds r0, r4, #0
    adds r0, #0x51
    ldrb r0, [r0]
    lsls r1, r0, #1
    adds r0, r4, #0
    adds r0, #0x1e
    adds r1, r1, r0
    adds r0, #0x2a
    ldrh r0, [r0]
    strh r0, [r1]
.L08029ACE:
    adds r0, r7, #0
    adds r1, r5, #0
    bl UpdateUnitFromBattle
    cmp r6, #0
    beq .L08029AEC
    adds r0, r6, #0
    adds r1, r4, #0
    bl UpdateUnitFromBattle
    b .L08029AF2
    .align 2, 0
.L08029AE4: .4byte 0x0203A3F0
.L08029AE8: .4byte 0x0203A470
.L08029AEC:
    adds r0, r4, #0
    bl UpdateObstacleFromBattle
.L08029AF2:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end BattleApplyUnitUpdates

    thumb_func_start func_08029AF8
func_08029AF8: @ 0x08029AF8
    movs r0, #1
    bx lr
    func_end func_08029AF8

    thumb_func_start GetBattleUnitUpdatedWeaponExp
GetBattleUnitUpdatedWeaponExp: @ 0x08029AFC
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    movs r0, #0xc0
    ldrb r1, [r7, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L08029B58
    movs r0, #0x13
    ldrsb r0, [r7, r0]
    cmp r0, #0
    beq .L08029B58
    ldr r1, .L08029B60 @ =gPlaySt
    movs r0, #0x80
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08029B58
    ldr r1, .L08029B64 @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08029B58
    ldr r1, .L08029B68 @ =0x0203A3D8
    movs r0, #0x20
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08029B6C
    adds r0, r7, #0
    adds r0, #0x52
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08029B58
    ldr r1, [r7, #0x4c]
    movs r0, #5
    ands r0, r1
    cmp r0, #0
    beq .L08029B58
    movs r0, #0x88
    lsls r0, r0, #3
    ands r1, r0
    cmp r1, #0
    beq .L08029B6C
.L08029B58:
    movs r0, #1
    rsbs r0, r0, #0
    b .L08029BE0
    .align 2, 0
.L08029B60: .4byte gPlaySt
.L08029B64: .4byte gBmSt
.L08029B68: .4byte 0x0203A3D8
.L08029B6C:
    adds r4, r7, #0
    adds r4, #0x50
    adds r5, r7, #0
    adds r5, #0x28
    ldrb r1, [r4]
    adds r0, r1, r5
    ldrb r6, [r0]
    adds r0, r7, #0
    adds r0, #0x48
    ldrh r0, [r0]
    bl func_08017494
    adds r1, r7, #0
    adds r1, #0x7b
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    muls r0, r1, r0
    adds r6, r6, r0
    movs r1, #0
    ldrb r3, [r4]
.L08029B96:
    ldr r2, [r7, #4]
    cmp r1, r3
    beq .L08029BB8
    adds r0, r2, #0
    adds r0, #0x2c
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0xfb
    beq .L08029BB8
    adds r0, r5, r1
    ldrb r0, [r0]
    cmp r0, #0xfa
    bls .L08029BB8
    cmp r6, #0xfa
    ble .L08029BBE
    movs r6, #0xfa
    b .L08029BBE
.L08029BB8:
    adds r1, #1
    cmp r1, #7
    ble .L08029B96
.L08029BBE:
    ldr r0, [r7]
    ldr r0, [r0, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L08029BD8
    cmp r6, #0xfb
    ble .L08029BDE
    movs r6, #0xfb
    b .L08029BDE
.L08029BD8:
    cmp r6, #0xb5
    ble .L08029BDE
    movs r6, #0xb5
.L08029BDE:
    adds r0, r6, #0
.L08029BE0:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end GetBattleUnitUpdatedWeaponExp

    thumb_func_start func_08029BE8
func_08029BE8: @ 0x08029BE8
    push {r4, r5, lr}
    adds r2, r0, #0
    adds r2, #0x50
    adds r1, r0, #0
    adds r1, #0x28
    ldrb r2, [r2]
    adds r1, r2, r1
    ldrb r4, [r1]
    bl GetBattleUnitUpdatedWeaponExp
    adds r5, r0, #0
    cmp r5, #0
    blt .L08029C1C
    adds r0, r4, #0
    bl GetWeaponLevelFromExp
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetWeaponLevelFromExp
    adds r1, r0, #0
    eors r1, r4
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
    b .L08029C1E
.L08029C1C:
    movs r0, #0
.L08029C1E:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08029BE8

    thumb_func_start UpdateUnitFromBattle
UpdateUnitFromBattle: @ 0x08029C24
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldrb r0, [r5, #8]
    strb r0, [r4, #8]
    ldrb r0, [r5, #9]
    strb r0, [r4, #9]
    ldrb r0, [r5, #0x13]
    strb r0, [r4, #0x13]
    ldr r0, [r5, #0xc]
    str r0, [r4, #0xc]
    ldr r2, .L08029D08 @ =0x03002850
    lsrs r0, r0, #0x11
    movs r1, #7
    ands r0, r1
    strb r0, [r2]
    adds r1, r5, #0
    adds r1, #0x6f
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    blt .L08029C58
    adds r1, r0, #0
    adds r0, r4, #0
    bl SetUnitStatus
.L08029C58:
    adds r0, r5, #0
    adds r0, #0x73
    ldrb r1, [r4, #0x12]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x12]
    adds r0, r5, #0
    adds r0, #0x74
    ldrb r1, [r4, #0x14]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x14]
    adds r0, r5, #0
    adds r0, #0x75
    ldrb r1, [r4, #0x15]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x15]
    adds r0, r5, #0
    adds r0, #0x76
    ldrb r1, [r4, #0x16]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x16]
    adds r0, r5, #0
    adds r0, #0x77
    ldrb r1, [r4, #0x17]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x17]
    adds r0, r5, #0
    adds r0, #0x78
    ldrb r1, [r4, #0x18]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x18]
    adds r0, r5, #0
    adds r0, #0x79
    ldrb r1, [r4, #0x19]
    ldrb r0, [r0]
    adds r0, r1, r0
    strb r0, [r4, #0x19]
    adds r0, r4, #0
    bl UnitCheckStatCaps
    adds r0, r5, #0
    bl GetBattleUnitUpdatedWeaponExp
    adds r2, r0, #0
    cmp r2, #0
    ble .L08029CCC
    adds r1, r5, #0
    adds r1, #0x50
    adds r0, r4, #0
    adds r0, #0x28
    ldrb r1, [r1]
    adds r0, r1, r0
    strb r2, [r0]
.L08029CCC:
    adds r6, r5, #0
    adds r6, #0x6e
    adds r1, r5, #0
    adds r1, #0x1e
    adds r3, r4, #0
    adds r3, #0x1e
    movs r2, #4
.L08029CDA:
    ldrh r0, [r1]
    strh r0, [r3]
    adds r1, #2
    adds r3, #2
    subs r2, #1
    cmp r2, #0
    bge .L08029CDA
    adds r0, r4, #0
    bl UnitRemoveInvalidItems
    movs r0, #0
    ldrsb r0, [r6, r0]
    cmp r0, #0
    beq .L08029D02
    ldr r0, [r4]
    ldrb r0, [r0, #4]
    movs r1, #0
    ldrsb r1, [r6, r1]
    bl PidStatsAddExpGained
.L08029D02:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08029D08: .4byte 0x03002850
    func_end UpdateUnitFromBattle

    thumb_func_start UpdateUnitDuringBattle
UpdateUnitDuringBattle: @ 0x08029D0C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldrb r0, [r4, #0x13]
    strb r0, [r5, #0x13]
    adds r0, r4, #0
    bl GetBattleUnitUpdatedWeaponExp
    adds r2, r0, #0
    cmp r2, #0
    ble .L08029D30
    adds r1, r4, #0
    adds r1, #0x50
    adds r0, r5, #0
    adds r0, #0x28
    ldrb r1, [r1]
    adds r0, r1, r0
    strb r2, [r0]
.L08029D30:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end UpdateUnitDuringBattle

    thumb_func_start BattleApplyBallistaUpdates
BattleApplyBallistaUpdates: @ 0x08029D38
    push {r4, r5, lr}
    ldr r1, .L08029D64 @ =0x0203A3D8
    movs r0, #8
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08029D5C
    ldr r4, .L08029D68 @ =0x0203A3F0
    adds r0, r4, #0
    adds r0, #0x48
    ldrh r0, [r0]
    bl GetItemUses
    adds r5, r0, #0
    ldrb r0, [r4, #0x1c]
    bl GetTrap
    strb r5, [r0, #6]
.L08029D5C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08029D64: .4byte 0x0203A3D8
.L08029D68: .4byte 0x0203A3F0
    func_end BattleApplyBallistaUpdates

    thumb_func_start func_08029D6C
func_08029D6C: @ 0x08029D6C
    ldr r1, .L08029D78 @ =0x0203A510
    movs r0, #0
    strb r0, [r1]
    strb r0, [r1, #1]
    strb r0, [r1, #2]
    bx lr
    .align 2, 0
.L08029D78: .4byte 0x0203A510
    func_end func_08029D6C

    thumb_func_start GetUnitExpLevel
GetUnitExpLevel: @ 0x08029D7C
    movs r3, #8
    ldrsb r3, [r0, r3]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L08029D96
    adds r3, #0x14
.L08029D96:
    adds r0, r3, #0
    bx lr
    func_end GetUnitExpLevel

    thumb_func_start GetUnitRoundExp
GetUnitRoundExp: @ 0x08029D9C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    bl GetUnitExpLevel
    adds r5, r0, #0
    adds r0, r4, #0
    bl GetUnitExpLevel
    subs r5, r5, r0
    movs r0, #0x1f
    subs r5, r0, r5
    cmp r5, #0
    bge .L08029DBA
    movs r5, #0
.L08029DBA:
    ldr r0, [r6, #4]
    movs r1, #0x1a
    ldrsb r1, [r0, r1]
    adds r0, r5, #0
    bl __divsi3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end GetUnitRoundExp

    thumb_func_start func_08029DCC
func_08029DCC: @ 0x08029DCC
    push {r4, lr}
    movs r2, #8
    ldrsb r2, [r0, r2]
    ldr r3, [r0, #4]
    movs r1, #0x1a
    ldrsb r1, [r3, r1]
    adds r4, r2, #0
    muls r4, r1, r4
    ldr r0, [r0]
    ldr r0, [r0, #0x28]
    ldr r1, [r3, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L08029E00
    ldrb r0, [r3, #5]
    bl GetClassData
    movs r1, #0x1a
    ldrsb r1, [r0, r1]
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r4, r4, r0
.L08029E00:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08029DCC

    thumb_func_start func_08029E08
func_08029E08: @ 0x08029E08
    movs r3, #0
    ldr r0, [r1]
    ldr r1, [r1, #4]
    ldr r2, [r0, #0x28]
    ldr r0, [r1, #0x28]
    orrs r2, r0
    movs r0, #8
    ands r0, r2
    cmp r0, #0
    beq .L08029E1E
    movs r3, #0x14
.L08029E1E:
    movs r0, #0x80
    lsls r0, r0, #8
    ands r2, r0
    cmp r2, #0
    beq .L08029E2A
    adds r3, #0x28
.L08029E2A:
    adds r0, r3, #0
    bx lr
    func_end func_08029E08

    thumb_func_start func_08029E30
func_08029E30: @ 0x08029E30
    push {r4, lr}
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0x12
    ands r0, r1
    cmp r0, #0
    bne .L08029E4C
    b .L08029E66
.L08029E48:
    movs r0, #2
    b .L08029E68
.L08029E4C:
    movs r2, #0
    movs r3, #0x80
    lsls r3, r3, #4
    ldr r1, .L08029E70 @ =0x0203A4F0
.L08029E54:
    adds r0, r3, #0
    ldrh r4, [r1]
    ands r0, r4
    cmp r0, #0
    bne .L08029E48
    adds r1, #4
    adds r2, #1
    cmp r2, #6
    ble .L08029E54
.L08029E66:
    movs r0, #1
.L08029E68:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08029E70: .4byte 0x0203A4F0
    func_end func_08029E30

    thumb_func_start GetUnitKillExpBonus
GetUnitKillExpBonus: @ 0x08029E74
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r5, r1, #0
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L08029E86
    movs r0, #0
    b .L08029F0A
.L08029E86:
    movs r6, #0x14
    ldr r1, .L08029EB0 @ =gPlaySt
    ldrb r0, [r1, #0x1b]
    cmp r0, #1
    beq .L08029E9A
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    beq .L08029EB4
.L08029E9A:
    adds r0, r5, #0
    bl func_08029DCC
    adds r6, r0, #0
    adds r6, #0x14
    adds r0, r7, #0
    bl func_08029DCC
    subs r6, r6, r0
    b .L08029EEE
    .align 2, 0
.L08029EB0: .4byte gPlaySt
.L08029EB4:
    adds r0, r5, #0
    bl func_08029DCC
    adds r4, r0, #0
    adds r0, r7, #0
    bl func_08029DCC
    cmp r4, r0
    bgt .L08029EDC
    adds r0, r5, #0
    bl func_08029DCC
    adds r4, r0, #0
    adds r0, r7, #0
    bl func_08029DCC
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    b .L08029EEA
.L08029EDC:
    adds r0, r5, #0
    bl func_08029DCC
    adds r4, r0, #0
    adds r0, r7, #0
    bl func_08029DCC
.L08029EEA:
    subs r4, r4, r0
    adds r6, r6, r4
.L08029EEE:
    adds r0, r7, #0
    adds r1, r5, #0
    bl func_08029E08
    adds r6, r6, r0
    adds r0, r7, #0
    adds r1, r5, #0
    bl func_08029E30
    muls r6, r0, r6
    cmp r6, #0
    bge .L08029F08
    movs r6, #0
.L08029F08:
    adds r0, r6, #0
.L08029F0A:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end GetUnitKillExpBonus

    thumb_func_start GetBattleUnitExpGain
GetBattleUnitExpGain: @ 0x08029F10
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    bl CanBattleUnitGainExp
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08029F3C
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L08029F3C
    ldr r0, [r6]
    ldr r1, [r6, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0x11
    ands r0, r1
    cmp r0, #0
    beq .L08029F40
.L08029F3C:
    movs r0, #0
    b .L08029F74
.L08029F40:
    adds r0, r5, #0
    adds r0, #0x7c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08029F52
    movs r0, #1
    b .L08029F74
.L08029F52:
    adds r0, r5, #0
    adds r1, r6, #0
    bl GetUnitRoundExp
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    bl GetUnitKillExpBonus
    adds r4, r4, r0
    cmp r4, #0x64
    ble .L08029F6C
    movs r4, #0x64
.L08029F6C:
    cmp r4, #0
    bge .L08029F72
    movs r4, #0
.L08029F72:
    adds r0, r4, #0
.L08029F74:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end GetBattleUnitExpGain

    thumb_func_start func_08029F7C
func_08029F7C: @ 0x08029F7C
    push {r4, lr}
    ldr r1, .L08029FC4 @ =gPlaySt
    movs r0, #0x80
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08029FF2
    ldr r4, .L08029FC8 @ =0x0203A3F0
    ldr r0, [r4, #0x4c]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08029FCC
    movs r0, #0xc0
    ldrb r1, [r4, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L08029FAA
    adds r1, r4, #0
    adds r1, #0x7b
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
.L08029FAA:
    adds r0, r4, #0
    bl func_08029FF8
    adds r1, r4, #0
    adds r1, #0x6e
    strb r0, [r1]
    ldrb r1, [r4, #9]
    adds r0, r1, r0
    strb r0, [r4, #9]
    adds r0, r4, #0
    bl func_08029660
    b .L08029FF2
    .align 2, 0
.L08029FC4: .4byte gPlaySt
.L08029FC8: .4byte 0x0203A3F0
.L08029FCC:
    adds r0, r4, #0
    adds r0, #0x50
    ldrb r0, [r0]
    cmp r0, #0xc
    bne .L08029FF2
    ldrb r1, [r4, #9]
    adds r0, r1, #0
    cmp r0, #0xff
    beq .L08029FF2
    adds r2, r4, #0
    adds r2, #0x6e
    movs r0, #0x14
    strb r0, [r2]
    adds r0, r1, #0
    adds r0, #0x14
    strb r0, [r4, #9]
    adds r0, r4, #0
    bl func_08029660
.L08029FF2:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08029F7C

    thumb_func_start func_08029FF8
func_08029FF8: @ 0x08029FF8
    push {r4, lr}
    adds r4, r0, #0
    bl CanBattleUnitGainExp
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802A00A
    movs r0, #0
    b .L0802A056
.L0802A00A:
    ldr r1, .L0802A01C @ =0x0203A4F0
    movs r0, #2
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0802A020
    movs r0, #1
    b .L0802A056
    .align 2, 0
.L0802A01C: .4byte 0x0203A4F0
.L0802A020:
    adds r0, r4, #0
    adds r0, #0x48
    ldrh r0, [r0]
    bl GetItemCostPerUse
    movs r1, #0x14
    bl __divsi3
    adds r2, r0, #0
    adds r2, #0xa
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L0802A04E
    lsrs r0, r2, #0x1f
    adds r0, r2, r0
    asrs r2, r0, #1
.L0802A04E:
    cmp r2, #0x64
    ble .L0802A054
    movs r2, #0x64
.L0802A054:
    adds r0, r2, #0
.L0802A056:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08029FF8

    thumb_func_start func_0802A05C
func_0802A05C: @ 0x0802A05C
    push {r4, lr}
    ldr r4, .L0802A09C @ =0x0203A3F0
    movs r0, #0xc0
    ldrb r1, [r4, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L0802A096
    adds r0, r4, #0
    bl CanBattleUnitGainExp
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802A096
    ldr r1, .L0802A0A0 @ =gPlaySt
    movs r0, #0x80
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L0802A096
    adds r1, r4, #0
    adds r1, #0x6e
    movs r0, #0xa
    strb r0, [r1]
    ldrb r0, [r4, #9]
    adds r0, #0xa
    strb r0, [r4, #9]
    adds r0, r4, #0
    bl func_08029660
.L0802A096:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A09C: .4byte 0x0203A3F0
.L0802A0A0: .4byte gPlaySt
    func_end func_0802A05C

    thumb_func_start BattleUnitTargetSetEquippedWeapon
BattleUnitTargetSetEquippedWeapon: @ 0x0802A0A4
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r4, r5, #0
    adds r4, #0x4a
    ldrh r0, [r4]
    cmp r0, #0
    bne .L0802A0F2
    adds r0, r5, #0
    bl GetUnitEquippedWeapon
    strh r0, [r4]
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L0802A0F2
    adds r0, r5, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802A0F2
    movs r6, #0
    subs r4, #0x2c
.L0802A0D0:
    ldrh r1, [r4]
    adds r0, r5, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0802A0EA
    ldrh r1, [r4]
    adds r0, r5, #0
    adds r0, #0x4a
    strh r1, [r0]
    b .L0802A0F2
.L0802A0EA:
    adds r4, #2
    adds r6, #1
    cmp r6, #4
    ble .L0802A0D0
.L0802A0F2:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end BattleUnitTargetSetEquippedWeapon

    thumb_func_start BattleUnitTargetCheckHasRealWeapon
BattleUnitTargetCheckHasRealWeapon: @ 0x0802A0F8
    adds r2, r0, #0
    adds r0, #0x52
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L0802A11E
    adds r0, r2, #0
    adds r0, #0x5a
    movs r1, #0xff
    strh r1, [r0]
    adds r0, #6
    strh r1, [r0]
    adds r0, #4
    strh r1, [r0]
    adds r0, #2
    strh r1, [r0]
    adds r0, #4
    strh r1, [r0]
.L0802A11E:
    bx lr
    func_end BattleUnitTargetCheckHasRealWeapon

    thumb_func_start func_0802A120
func_0802A120: @ 0x0802A120
    adds r2, r0, #0
    adds r3, r1, #0
    ldr r0, [r2, #0x4c]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L0802A138
    ldr r0, [r3, #0x4c]
    ands r0, r1
    cmp r0, #0
    bne .L0802A16C
.L0802A138:
    adds r1, r2, #0
    adds r1, #0x53
    movs r0, #0
    ldrsb r0, [r1, r0]
    lsls r0, r0, #1
    rsbs r0, r0, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #0
    ldrsb r0, [r1, r0]
    lsls r0, r0, #1
    rsbs r0, r0, #0
    strb r0, [r1]
    adds r1, r3, #0
    adds r1, #0x53
    movs r0, #0
    ldrsb r0, [r1, r0]
    lsls r0, r0, #1
    rsbs r0, r0, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #0
    ldrsb r0, [r1, r0]
    lsls r0, r0, #1
    rsbs r0, r0, #0
    strb r0, [r1]
.L0802A16C:
    bx lr
    func_end func_0802A120

    thumb_func_start BattleApplyWeaponTriangleEffect
BattleApplyWeaponTriangleEffect: @ 0x0802A170
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r2, .L0802A17C @ =0x08B9426C
    b .L0802A1C0
    .align 2, 0
.L0802A17C: .4byte 0x08B9426C
.L0802A180:
    adds r0, r4, #0
    adds r0, #0x50
    ldrb r0, [r0]
    ldrb r1, [r2]
    cmp r0, r1
    bne .L0802A1BE
    adds r0, r5, #0
    adds r0, #0x50
    ldrb r0, [r0]
    ldrb r1, [r2, #1]
    cmp r0, r1
    bne .L0802A1BE
    ldrb r0, [r2, #2]
    adds r1, r4, #0
    adds r1, #0x53
    strb r0, [r1]
    ldrb r1, [r2, #3]
    adds r0, r4, #0
    adds r0, #0x54
    strb r1, [r0]
    ldrb r1, [r2, #2]
    rsbs r0, r1, #0
    adds r1, r5, #0
    adds r1, #0x53
    strb r0, [r1]
    ldrb r2, [r2, #3]
    rsbs r1, r2, #0
    adds r0, r5, #0
    adds r0, #0x54
    strb r1, [r0]
    b .L0802A1C8
.L0802A1BE:
    adds r2, #4
.L0802A1C0:
    movs r0, #0
    ldrsb r0, [r2, r0]
    cmp r0, #0
    bge .L0802A180
.L0802A1C8:
    ldr r0, [r4, #0x4c]
    movs r6, #0x80
    lsls r6, r6, #1
    ands r0, r6
    cmp r0, #0
    beq .L0802A1DC
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0802A120
.L0802A1DC:
    ldr r0, [r5, #0x4c]
    ands r0, r6
    cmp r0, #0
    beq .L0802A1EC
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0802A120
.L0802A1EC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end BattleApplyWeaponTriangleEffect

    thumb_func_start BattleInitTargetCanCounter
BattleInitTargetCanCounter: @ 0x0802A1F4
    push {r4, lr}
    ldr r4, .L0802A24C @ =0x0203A3F0
    ldr r3, .L0802A250 @ =0x0203A470
    ldr r0, [r4, #0x4c]
    ldr r1, [r3, #0x4c]
    orrs r0, r1
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L0802A216
    adds r0, r3, #0
    adds r0, #0x48
    movs r2, #0
    movs r1, #0
    strh r1, [r0]
    adds r0, #0xa
    strb r2, [r0]
.L0802A216:
    adds r1, r4, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    bne .L0802A246
    movs r0, #0xb
    ldrsb r0, [r4, r0]
    movs r1, #0xc0
    ands r0, r1
    cmp r0, #0
    bne .L0802A246
    movs r2, #0xb
    ldrsb r2, [r3, r2]
    ands r2, r1
    cmp r2, #0
    bne .L0802A246
    adds r0, r3, #0
    adds r0, #0x48
    movs r1, #0
    strh r2, [r0]
    adds r0, #0xa
    strb r1, [r0]
.L0802A246:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A24C: .4byte 0x0203A3F0
.L0802A250: .4byte 0x0203A470
    func_end BattleInitTargetCanCounter

    thumb_func_start func_0802A254
func_0802A254: @ 0x0802A254
    push {r4, lr}
    ldr r4, .L0802A2AC @ =0x0203A470
    adds r0, r4, #0
    bl ClearUnit
    movs r0, #0
    strb r0, [r4, #0xb]
    movs r0, #1
    bl GetClassData
    str r0, [r4, #4]
    ldr r0, .L0802A2B0 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    adds r0, #0x2c
    ldrb r0, [r0]
    strb r0, [r4, #0x12]
    ldr r1, .L0802A2B4 @ =gActionSt
    ldrb r0, [r1, #0x15]
    strb r0, [r4, #0x13]
    ldrb r0, [r1, #0x13]
    strb r0, [r4, #0x10]
    ldrb r0, [r1, #0x14]
    strb r0, [r4, #0x11]
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    ldr r1, .L0802A2B8 @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0x1b
    beq .L0802A2BC
    cmp r0, #0x33
    beq .L0802A2C6
    b .L0802A2D2
    .align 2, 0
.L0802A2AC: .4byte 0x0203A470
.L0802A2B0: .4byte gPlaySt
.L0802A2B4: .4byte gActionSt
.L0802A2B8: .4byte gBmMapTerrain
.L0802A2BC:
    movs r0, #0xfc
    bl GetCharacterData
    str r0, [r4]
    b .L0802A2D2
.L0802A2C6:
    movs r0, #0xfd
    bl GetCharacterData
    str r0, [r4]
    movs r0, #0x14
    strb r0, [r4, #0x12]
.L0802A2D2:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802A254

    thumb_func_start func_0802A2D8
func_0802A2D8: @ 0x0802A2D8
    push {r4, lr}
    ldr r1, .L0802A30C @ =0x0203A3F0
    adds r2, r1, #0
    adds r2, #0x64
    movs r4, #0
    movs r3, #0
    movs r0, #0x64
    strh r0, [r2]
    adds r1, #0x6a
    strh r3, [r1]
    ldr r1, .L0802A310 @ =0x0203A470
    adds r2, r1, #0
    adds r2, #0x5e
    movs r0, #0xff
    strh r0, [r2]
    ldrb r0, [r1, #0x13]
    adds r2, #0x14
    strb r0, [r2]
    adds r0, r1, #0
    adds r0, #0x53
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A30C: .4byte 0x0203A3F0
.L0802A310: .4byte 0x0203A470
    func_end func_0802A2D8

    thumb_func_start UpdateObstacleFromBattle
UpdateObstacleFromBattle: @ 0x0802A314
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    bl GetTrapAt
    adds r5, r0, #0
    cmp r5, #0
    bne .L0802A33A
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    subs r1, #1
    bl GetTrapAt
    adds r5, r0, #0
.L0802A33A:
    ldrb r0, [r4, #0x13]
    strb r0, [r5, #3]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802A39C
    ldrb r0, [r5]
    ldrb r1, [r5, #1]
    bl GetMapChangeIdAt
    adds r6, r0, #0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    ldr r1, .L0802A3A4 @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0x33
    bne .L0802A37A
    ldr r0, .L0802A3A8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802A37A
    ldr r0, .L0802A3AC @ =0x000002D7
    bl m4aSongNumStart
.L0802A37A:
    bl RenderMapForFade
    adds r0, r6, #0
    bl ApplyMapChange
    movs r0, #0
    strb r0, [r5, #2]
    adds r0, r6, #0
    bl AddMapChangeTrap
    bl RefreshTerrainMap
    bl RenderMap
    movs r0, #0
    bl StartMapFade
.L0802A39C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A3A4: .4byte gBmMapTerrain
.L0802A3A8: .4byte gPlaySt
.L0802A3AC: .4byte 0x000002D7
    func_end UpdateObstacleFromBattle

    thumb_func_start BeginBattleAnimations
BeginBattleAnimations: @ 0x0802A3B0
    push {lr}
    ldr r0, .L0802A3E4 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r1, .L0802A3E8 @ =gPal
    movs r0, #0
    strh r0, [r1]
    bl EnablePalSync
    bl RenderMap
    bl func_08050994
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802A3EC
    movs r0, #0
    bl func_0804B194
    bl func_080509A4
    b .L0802A402
    .align 2, 0
.L0802A3E4: .4byte gBg2Tm
.L0802A3E8: .4byte gPal
.L0802A3EC:
    bl EndAllMus
    bl RenderMap
    bl func_0806F23C
    ldr r1, .L0802A408 @ =0x0203A3D8
    movs r0, #0x80
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
.L0802A402:
    pop {r0}
    bx r0
    .align 2, 0
.L0802A408: .4byte 0x0203A3D8
    func_end BeginBattleAnimations

    thumb_func_start func_0802A40C
func_0802A40C: @ 0x0802A40C
    ldr r1, [r0, #0xc]
    movs r0, #0x80
    lsls r0, r0, #7
    ands r0, r1
    cmp r0, #0
    beq .L0802A41C
    movs r0, #0
    b .L0802A42C
.L0802A41C:
    movs r0, #0x80
    lsls r0, r0, #8
    ands r1, r0
    cmp r1, #0
    bne .L0802A42A
    movs r0, #1
    b .L0802A42C
.L0802A42A:
    movs r0, #3
.L0802A42C:
    bx lr
    func_end func_0802A40C

    thumb_func_start GetBattleAnimKind
GetBattleAnimKind: @ 0x0802A430
    push {lr}
    ldr r0, .L0802A464 @ =gPlaySt
    adds r0, #0x42
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1e
    cmp r0, #2
    bne .L0802A48A
    ldr r2, .L0802A468 @ =0x0203A3F0
    movs r0, #0xb
    ldrsb r0, [r2, r0]
    movs r1, #0xc0
    ands r0, r1
    adds r3, r2, #0
    cmp r0, #0
    bne .L0802A470
    ldr r0, .L0802A46C @ =0x0203A470
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ands r0, r1
    cmp r0, #0
    bne .L0802A484
    adds r0, r3, #0
    b .L0802A486
    .align 2, 0
.L0802A464: .4byte gPlaySt
.L0802A468: .4byte 0x0203A3F0
.L0802A46C: .4byte 0x0203A470
.L0802A470:
    ldr r2, .L0802A480 @ =0x0203A470
    movs r0, #0xb
    ldrsb r0, [r2, r0]
    ands r0, r1
    cmp r0, #0
    beq .L0802A484
    movs r0, #1
    b .L0802A48A
    .align 2, 0
.L0802A480: .4byte 0x0203A470
.L0802A484:
    adds r0, r2, #0
.L0802A486:
    bl func_0802A40C
.L0802A48A:
    pop {r1}
    bx r1
    func_end GetBattleAnimKind

    thumb_func_start func_0802A490
func_0802A490: @ 0x0802A490
    bx lr
    func_end func_0802A490

    thumb_func_start func_0802A494
func_0802A494: @ 0x0802A494
    ldr r1, .L0802A4B0 @ =0x0203A4F0
    movs r0, #0x80
    ldrb r2, [r1, #2]
    ands r0, r2
    cmp r0, #0
    bne .L0802A4AE
    movs r2, #0x80
.L0802A4A2:
    adds r1, #4
    adds r0, r2, #0
    ldrb r3, [r1, #2]
    ands r0, r3
    cmp r0, #0
    beq .L0802A4A2
.L0802A4AE:
    bx lr
    .align 2, 0
.L0802A4B0: .4byte 0x0203A4F0
    func_end func_0802A494

    thumb_func_start BattleInitItemEffect
BattleInitItemEffect: @ 0x0802A4B4
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    adds r7, r1, #0
    lsls r1, r7, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r6, [r0]
    cmp r7, #0
    bge .L0802A4C8
    movs r6, #0
.L0802A4C8:
    ldr r1, .L0802A554 @ =0x0203A3D8
    movs r4, #0
    movs r0, #0
    strh r0, [r1]
    ldr r5, .L0802A558 @ =0x0203A3F0
    adds r0, r5, #0
    adds r1, r2, #0
    bl InitBattleUnit
    adds r0, r5, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r5, #0
    bl func_08028AF8
    adds r0, r5, #0
    movs r1, #0
    bl func_08028A24
    adds r0, r5, #0
    adds r0, #0x5a
    movs r2, #0xff
    strh r2, [r0]
    adds r1, r5, #0
    adds r1, #0x64
    movs r0, #0x64
    strh r0, [r1]
    adds r0, r5, #0
    adds r0, #0x6a
    strh r2, [r0]
    subs r0, #0x22
    strh r6, [r0]
    adds r0, #2
    strh r6, [r0]
    adds r0, #7
    strb r7, [r0]
    adds r0, r6, #0
    bl GetItemType
    adds r1, r5, #0
    adds r1, #0x50
    strb r0, [r1]
    adds r0, r6, #0
    bl GetItemAttributes
    str r0, [r5, #0x4c]
    adds r1, r5, #0
    adds r1, #0x52
    movs r0, #1
    strb r0, [r1]
    adds r0, r5, #0
    adds r0, #0x7e
    strb r4, [r0]
    adds r2, r5, #0
    adds r2, #0x6f
    movs r1, #0xff
    ldrb r0, [r2]
    orrs r0, r1
    strb r0, [r2]
    ldr r0, .L0802A55C @ =0x0203A470
    adds r0, #0x6f
    ldrb r2, [r0]
    orrs r1, r2
    strb r1, [r0]
    bl ClearBattleHits
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A554: .4byte 0x0203A3D8
.L0802A558: .4byte 0x0203A3F0
.L0802A55C: .4byte 0x0203A470
    func_end BattleInitItemEffect

    thumb_func_start BattleInitItemEffectTarget
BattleInitItemEffectTarget: @ 0x0802A560
    push {r4, lr}
    adds r1, r0, #0
    ldr r4, .L0802A5AC @ =0x0203A470
    adds r0, r4, #0
    bl InitBattleUnit
    adds r0, r4, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r4, #0
    bl func_08028AF8
    adds r0, r4, #0
    movs r1, #0
    bl func_08028A24
    adds r0, r4, #0
    adds r0, #0x5a
    movs r2, #0
    movs r1, #0xff
    strh r1, [r0]
    adds r0, #0xa
    strh r1, [r0]
    adds r0, #6
    strh r1, [r0]
    subs r0, #0x20
    strh r2, [r0]
    adds r0, r4, #0
    bl BattleUnitTargetSetEquippedWeapon
    ldr r0, .L0802A5B0 @ =0x0203A3F0
    adds r0, #0x7e
    movs r1, #1
    strb r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A5AC: .4byte 0x0203A470
.L0802A5B0: .4byte 0x0203A3F0
    func_end BattleInitItemEffectTarget

    thumb_func_start func_0802A5B4
func_0802A5B4: @ 0x0802A5B4
    push {r4, lr}
    ldr r4, .L0802A5CC @ =0x0203A3F0
    movs r0, #0xb
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r1, r4, #0
    bl UpdateUnitFromBattle
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A5CC: .4byte 0x0203A3F0
    func_end func_0802A5B4

    thumb_func_start func_0802A5D0
func_0802A5D0: @ 0x0802A5D0
    push {r4, lr}
    adds r4, r0, #0
    bl func_0802A05C
    ldr r0, .L0802A5E8 @ =0x08B942A0
    adds r1, r4, #0
    bl Proc_StartBlocking
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A5E8: .4byte 0x08B942A0
    func_end func_0802A5D0

    thumb_func_start func_0802A5EC
func_0802A5EC: @ 0x0802A5EC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r1, .L0802A660 @ =0x0203A50C
    ldr r0, [r1]
    adds r0, #4
    str r0, [r1]
    movs r1, #0x80
    strb r1, [r0, #2]
    bl func_08029F7C
    ldr r4, .L0802A664 @ =0x0203A3F0
    adds r0, r4, #0
    adds r0, #0x52
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0802A650
    adds r5, r4, #0
    adds r5, #0x48
    ldrh r0, [r5]
    bl GetItemAttributes
    movs r1, #4
    ands r1, r0
    cmp r1, #0
    beq .L0802A62A
    adds r1, r4, #0
    adds r1, #0x7d
    movs r0, #1
    strb r0, [r1]
.L0802A62A:
    ldrh r0, [r5]
    bl GetItemAfterUse
    strh r0, [r5]
    adds r1, r4, #0
    adds r1, #0x51
    ldrb r1, [r1]
    lsls r1, r1, #1
    adds r2, r4, #0
    adds r2, #0x1e
    adds r1, r1, r2
    strh r0, [r1]
    ldrh r0, [r5]
    cmp r0, #0
    beq .L0802A650
    adds r1, r4, #0
    adds r1, #0x7d
    movs r0, #0
    strb r0, [r1]
.L0802A650:
    ldr r0, .L0802A668 @ =0x08B942A0
    adds r1, r6, #0
    bl Proc_StartBlocking
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A660: .4byte 0x0203A50C
.L0802A664: .4byte 0x0203A3F0
.L0802A668: .4byte 0x08B942A0
    func_end func_0802A5EC

    thumb_func_start GetOffensiveStaffAccuracy
GetOffensiveStaffAccuracy: @ 0x0802A66C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    bl GetUnitPower
    adds r4, r0, #0
    adds r0, r6, #0
    bl GetUnitResistance
    subs r4, r4, r0
    lsls r0, r4, #2
    adds r7, r0, r4
    adds r0, r5, #0
    bl GetUnitSkill
    adds r4, r0, #0
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    movs r0, #0x10
    ldrsb r0, [r6, r0]
    subs r1, r2, r0
    cmp r1, #0
    bge .L0802A69C
    subs r1, r0, r2
.L0802A69C:
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    movs r0, #0x11
    ldrsb r0, [r6, r0]
    subs r2, r3, r0
    cmp r2, #0
    blt .L0802A6AE
    adds r1, r1, r2
    b .L0802A6B2
.L0802A6AE:
    subs r0, r0, r3
    adds r1, r1, r0
.L0802A6B2:
    adds r0, r4, #0
    adds r0, #0x1e
    adds r0, r7, r0
    lsls r1, r1, #1
    subs r1, r0, r1
    ldr r0, [r6, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x46
    beq .L0802A6C8
    cmp r0, #0x45
    bne .L0802A6CC
.L0802A6C8:
    movs r0, #0
    b .L0802A6DA
.L0802A6CC:
    cmp r1, #0
    bge .L0802A6D2
    movs r1, #0
.L0802A6D2:
    cmp r1, #0x64
    ble .L0802A6D8
    movs r1, #0x64
.L0802A6D8:
    adds r0, r1, #0
.L0802A6DA:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end GetOffensiveStaffAccuracy

    thumb_func_start func_0802A6E0
func_0802A6E0: @ 0x0802A6E0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r6, r0, #0
    ldr r0, .L0802A7B0 @ =0x0203A7F4
    mov sb, r0
    ldr r1, [r0, #4]
    mov r8, r1
    ldr r0, .L0802A7B4 @ =gBmSt
    adds r0, #0x3c
    ldrb r0, [r0]
    str r0, [sp]
    ldr r7, .L0802A7B8 @ =0x0203A3D8
    movs r0, #0x21
    strh r0, [r7]
    ldr r5, .L0802A7BC @ =0x0203A3F0
    adds r0, r5, #0
    adds r1, r6, #0
    bl InitBattleUnit
    ldr r4, .L0802A7C0 @ =0x0203A470
    adds r0, r4, #0
    mov r1, r8
    bl InitBattleUnit
    ldr r0, .L0802A7C4 @ =gActionSt
    mov sl, r0
    ldrb r0, [r0, #0x15]
    cmp r0, #0
    beq .L0802A72A
    strb r0, [r4, #0x13]
    adds r1, r4, #0
    adds r1, #0x72
    strb r0, [r1]
.L0802A72A:
    mov r1, sb
    ldrb r0, [r1, #0xc]
    strb r0, [r7, #2]
    ldrb r1, [r5, #0x10]
    adds r0, r0, r1
    strb r0, [r4, #0x10]
    ldrb r0, [r5, #0x11]
    strb r0, [r4, #0x11]
    adds r0, r5, #0
    movs r1, #6
    bl SetBattleUnitWeapon
    adds r0, r4, #0
    movs r1, #7
    bl SetBattleUnitWeapon
    adds r0, r5, #0
    adds r1, r4, #0
    bl BattleApplyWeaponTriangleEffect
    movs r0, #4
    mov r1, sl
    strb r0, [r1, #0x16]
    movs r0, #3
    bl WriteSuspendSave
    adds r0, r5, #0
    bl SetBattleUnitTerrainBonusesAuto
    adds r0, r4, #0
    movs r1, #8
    bl func_080286F0
    adds r0, r6, #0
    mov r1, r8
    bl BattleGenerate
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802A780
    bl BattleApplyExpGains
.L0802A780:
    adds r0, r6, #0
    adds r1, r5, #0
    bl UpdateUnitDuringBattle
    ldr r0, [sp]
    cmp r0, #0
    beq .L0802A796
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802A7DE
.L0802A796:
    bl func_080A02B8
    ldr r0, [r6, #0xc]
    ldr r2, .L0802A7C8 @ =0xFFF1FFFF
    ands r2, r0
    lsrs r0, r0, #0x11
    movs r1, #7
    ands r0, r1
    adds r0, #1
    cmp r0, #7
    bhi .L0802A7CC
    lsls r0, r0, #0x11
    b .L0802A7D0
    .align 2, 0
.L0802A7B0: .4byte 0x0203A7F4
.L0802A7B4: .4byte gBmSt
.L0802A7B8: .4byte 0x0203A3D8
.L0802A7BC: .4byte 0x0203A3F0
.L0802A7C0: .4byte 0x0203A470
.L0802A7C4: .4byte gActionSt
.L0802A7C8: .4byte 0xFFF1FFFF
.L0802A7CC:
    movs r0, #0xe0
    lsls r0, r0, #0xc
.L0802A7D0:
    adds r1, r2, r0
    str r1, [r6, #0xc]
    ldr r0, .L0802A7F8 @ =0x03002850
    lsrs r1, r1, #0x11
    movs r2, #7
    ands r1, r2
    strb r1, [r0]
.L0802A7DE:
    ldr r0, .L0802A7FC @ =0x0203A3F0
    ldr r1, .L0802A800 @ =0x0203A470
    bl func_0802A490
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A7F8: .4byte 0x03002850
.L0802A7FC: .4byte 0x0203A3F0
.L0802A800: .4byte 0x0203A470
    func_end func_0802A6E0

    thumb_func_start func_0802A804
func_0802A804: @ 0x0802A804
    ldr r0, .L0802A810 @ =0x0203A4F0
    ldrh r0, [r0]
    lsrs r0, r0, #0xa
    movs r1, #1
    ands r0, r1
    bx lr
    .align 2, 0
.L0802A810: .4byte 0x0203A4F0
    func_end func_0802A804

    thumb_func_start func_0802A814
func_0802A814: @ 0x0802A814
    adds r1, r0, #0
    movs r0, #0x13
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802A82A
    adds r0, r1, #0
    adds r0, #0x7d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L0802A82C
.L0802A82A:
    movs r0, #0
.L0802A82C:
    bx lr
    func_end func_0802A814

    thumb_func_start func_0802A830
func_0802A830: @ 0x0802A830
    ldr r1, .L0802A838 @ =gActionSt
    str r0, [r1, #0x18]
    bx lr
    .align 2, 0
.L0802A838: .4byte gActionSt
    func_end func_0802A830

    thumb_func_start func_0802A83C
func_0802A83C: @ 0x0802A83C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r2, .L0802A8A0 @ =0x0203A3D8
    movs r0, #0
    strh r0, [r2, #4]
    ldr r0, .L0802A8A4 @ =0x0203A50C
    ldr r1, [r0]
    movs r0, #2
    ldrh r3, [r1]
    ands r0, r3
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    cmp r3, #0
    bne .L0802A89A
    ldrh r5, [r2, #6]
    ldrh r6, [r2, #8]
    subs r0, r5, r6
    strh r0, [r2, #4]
    movs r0, #1
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0802A874
    movs r0, #4
    ldrsh r1, [r2, r0]
    lsls r0, r1, #1
    adds r0, r0, r1
    strh r0, [r2, #4]
.L0802A874:
    movs r1, #4
    ldrsh r0, [r2, r1]
    cmp r0, #0x7f
    ble .L0802A880
    movs r0, #0x7f
    strh r0, [r2, #4]
.L0802A880:
    movs r5, #4
    ldrsh r0, [r2, r5]
    cmp r0, #0
    bge .L0802A88A
    strh r3, [r2, #4]
.L0802A88A:
    movs r6, #4
    ldrsh r0, [r2, r6]
    cmp r0, #0
    beq .L0802A89A
    adds r1, r4, #0
    adds r1, #0x7c
    movs r0, #1
    strb r0, [r1]
.L0802A89A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A8A0: .4byte 0x0203A3D8
.L0802A8A4: .4byte 0x0203A50C
    func_end func_0802A83C

    thumb_func_start func_0802A8A8
func_0802A8A8: @ 0x0802A8A8
    push {r4, r5, r6, lr}
    ldr r0, .L0802A8F4 @ =gActionSt
    ldr r2, [r0, #0x18]
    ldr r3, .L0802A8F8 @ =0x0203A4F0
    movs r0, #0x80
    ldrb r1, [r2, #2]
    ands r0, r1
    adds r5, r3, #0
    ldr r1, .L0802A8FC @ =0x0203A50C
    cmp r0, #0
    bne .L0802A8CE
    movs r4, #0x80
.L0802A8C0:
    ldm r2!, {r0}
    stm r3!, {r0}
    adds r0, r4, #0
    ldrb r6, [r2, #2]
    ands r0, r6
    cmp r0, #0
    beq .L0802A8C0
.L0802A8CE:
    ldr r0, [r2]
    str r0, [r3]
    str r5, [r1]
    movs r0, #0x80
    ldrb r5, [r5, #2]
    ands r0, r5
    cmp r0, #0
    bne .L0802A984
    adds r6, r1, #0
.L0802A8E0:
    ldr r1, [r6]
    movs r0, #8
    ldrb r1, [r1, #2]
    ands r0, r1
    cmp r0, #0
    beq .L0802A908
    ldr r5, .L0802A900 @ =0x0203A470
    ldr r4, .L0802A904 @ =0x0203A3F0
    b .L0802A90C
    .align 2, 0
.L0802A8F4: .4byte gActionSt
.L0802A8F8: .4byte 0x0203A4F0
.L0802A8FC: .4byte 0x0203A50C
.L0802A900: .4byte 0x0203A470
.L0802A904: .4byte 0x0203A3F0
.L0802A908:
    ldr r5, .L0802A968 @ =0x0203A3F0
    ldr r4, .L0802A96C @ =0x0203A470
.L0802A90C:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08029234
    adds r0, r5, #0
    bl func_0802A83C
    adds r0, r5, #0
    adds r1, r4, #0
    bl BattleGenerateHitEffects
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L0802A932
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802A974
.L0802A932:
    adds r0, r5, #0
    adds r0, #0x7b
    ldrb r1, [r0]
    adds r1, #1
    movs r3, #0
    strb r1, [r0]
    ldr r2, .L0802A970 @ =0x0203A50C
    ldr r1, [r2]
    movs r0, #2
    ldrb r4, [r1, #2]
    orrs r0, r4
    strb r0, [r1, #2]
    ldr r0, .L0802A96C @ =0x0203A470
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L0802A960
    ldr r1, [r2]
    movs r0, #4
    ldrb r6, [r1, #2]
    orrs r0, r6
    strb r0, [r1, #2]
.L0802A960:
    ldr r1, [r2]
    movs r0, #0x80
    strb r0, [r1, #6]
    b .L0802A984
    .align 2, 0
.L0802A968: .4byte 0x0203A3F0
.L0802A96C: .4byte 0x0203A470
.L0802A970: .4byte 0x0203A50C
.L0802A974:
    ldr r1, [r6]
    adds r1, #4
    str r1, [r6]
    movs r0, #0x80
    ldrb r1, [r1, #2]
    ands r0, r1
    cmp r0, #0
    beq .L0802A8E0
.L0802A984:
    ldr r1, .L0802A990 @ =gActionSt
    movs r0, #0
    str r0, [r1, #0x18]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802A990: .4byte gActionSt
    func_end func_0802A8A8

    thumb_func_start func_0802A994
func_0802A994: @ 0x0802A994
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r4, r0, #0
    ldrb r1, [r4, #8]
    cmp r1, #0x14
    bne .L0802A9AA
    b .L0802AB7E
.L0802A9AA:
    movs r0, #0
    strb r0, [r4, #9]
    adds r0, r1, #1
    strb r0, [r4, #8]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r2, [r4]
    cmp r0, #0x14
    beq .L0802A9C2
    ldrb r0, [r2, #4]
    cmp r0, #0x28
    bne .L0802A9C6
.L0802A9C2:
    movs r0, #0xff
    strb r0, [r4, #9]
.L0802A9C6:
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #6
    ands r0, r1
    movs r6, #0
    cmp r0, #0
    beq .L0802A9D6
    movs r6, #5
.L0802A9D6:
    ldrb r2, [r2, #0x1c]
    adds r0, r2, r6
    bl GetStatIncrease
    mov r8, r0
    ldr r0, [r4]
    ldrb r0, [r0, #0x1d]
    adds r0, r0, r6
    bl GetStatIncrease
    str r0, [sp]
    adds r5, r0, #0
    add r5, r8
    ldr r0, [r4]
    ldrb r0, [r0, #0x1e]
    adds r0, r0, r6
    bl GetStatIncrease
    str r0, [sp, #4]
    adds r5, r5, r0
    ldr r0, [r4]
    ldrb r0, [r0, #0x1f]
    adds r0, r0, r6
    bl GetStatIncrease
    mov sl, r0
    add r5, sl
    ldr r0, [r4]
    adds r0, #0x20
    ldrb r0, [r0]
    adds r0, r0, r6
    bl GetStatIncrease
    mov sb, r0
    add r5, sb
    ldr r0, [r4]
    adds r0, #0x21
    ldrb r0, [r0]
    adds r0, r0, r6
    bl GetStatIncrease
    adds r7, r0, #0
    adds r5, r5, r7
    ldr r0, [r4]
    adds r0, #0x22
    ldrb r0, [r0]
    adds r0, r0, r6
    bl GetStatIncrease
    adds r6, r0, #0
    adds r5, r5, r6
    cmp r5, #0
    bne .L0802AAB0
    b .L0802AA82
.L0802AA42:
    ldr r0, [r4]
    ldrb r0, [r0, #0x1f]
    bl GetStatIncrease
    mov sl, r0
    cmp r0, #0
    bne .L0802AAB0
    ldr r0, [r4]
    adds r0, #0x20
    ldrb r0, [r0]
    bl GetStatIncrease
    mov sb, r0
    cmp r0, #0
    bne .L0802AAB0
    ldr r0, [r4]
    adds r0, #0x21
    ldrb r0, [r0]
    bl GetStatIncrease
    adds r7, r0, #0
    cmp r7, #0
    bne .L0802AAB0
    ldr r0, [r4]
    adds r0, #0x22
    ldrb r0, [r0]
    bl GetStatIncrease
    adds r6, r0, #0
    cmp r6, #0
    bne .L0802AAB0
    adds r5, #1
.L0802AA82:
    cmp r5, #1
    bgt .L0802AAB0
    ldr r0, [r4]
    ldrb r0, [r0, #0x1c]
    bl GetStatIncrease
    mov r8, r0
    cmp r0, #0
    bne .L0802AAB0
    ldr r0, [r4]
    ldrb r0, [r0, #0x1d]
    bl GetStatIncrease
    str r0, [sp]
    cmp r0, #0
    bne .L0802AAB0
    ldr r0, [r4]
    ldrb r0, [r0, #0x1e]
    bl GetStatIncrease
    str r0, [sp, #4]
    cmp r0, #0
    beq .L0802AA42
.L0802AAB0:
    movs r2, #0x12
    ldrsb r2, [r4, r2]
    mov r1, r8
    adds r3, r2, r1
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    movs r0, #0xc0
    ands r0, r1
    cmp r0, #0x80
    bne .L0802AACA
    cmp r3, #0x78
    bgt .L0802AACE
    b .L0802AAE0
.L0802AACA:
    cmp r3, #0x3c
    ble .L0802AAE0
.L0802AACE:
    movs r0, #0xc0
    ands r0, r1
    cmp r0, #0x80
    bne .L0802AADA
    movs r0, #0x78
    b .L0802AADC
.L0802AADA:
    movs r0, #0x3c
.L0802AADC:
    subs r0, r0, r2
    mov r8, r0
.L0802AAE0:
    movs r2, #0x14
    ldrsb r2, [r4, r2]
    ldr r1, [sp]
    adds r0, r2, r1
    ldr r3, [r4, #4]
    movs r1, #0x14
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L0802AAF6
    subs r1, r1, r2
    str r1, [sp]
.L0802AAF6:
    movs r2, #0x15
    ldrsb r2, [r4, r2]
    ldr r1, [sp, #4]
    adds r0, r2, r1
    movs r1, #0x15
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L0802AB0A
    subs r1, r1, r2
    str r1, [sp, #4]
.L0802AB0A:
    movs r2, #0x16
    ldrsb r2, [r4, r2]
    mov r1, sl
    adds r0, r2, r1
    movs r1, #0x16
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L0802AB1E
    subs r1, r1, r2
    mov sl, r1
.L0802AB1E:
    movs r2, #0x17
    ldrsb r2, [r4, r2]
    mov r1, sb
    adds r0, r2, r1
    movs r1, #0x17
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L0802AB32
    subs r1, r1, r2
    mov sb, r1
.L0802AB32:
    movs r2, #0x18
    ldrsb r2, [r4, r2]
    adds r0, r2, r7
    movs r1, #0x18
    ldrsb r1, [r3, r1]
    cmp r0, r1
    ble .L0802AB42
    subs r7, r1, r2
.L0802AB42:
    movs r1, #0x19
    ldrsb r1, [r4, r1]
    adds r0, r1, r6
    cmp r0, #0x1e
    ble .L0802AB50
    movs r0, #0x1e
    subs r6, r0, r1
.L0802AB50:
    ldrb r0, [r4, #0x12]
    add r0, r8
    strb r0, [r4, #0x12]
    ldrb r2, [r4, #0x14]
    ldr r1, [sp]
    adds r0, r2, r1
    strb r0, [r4, #0x14]
    ldrb r2, [r4, #0x15]
    ldr r1, [sp, #4]
    adds r0, r2, r1
    strb r0, [r4, #0x15]
    ldrb r0, [r4, #0x16]
    add r0, sl
    strb r0, [r4, #0x16]
    ldrb r0, [r4, #0x17]
    add r0, sb
    strb r0, [r4, #0x17]
    ldrb r2, [r4, #0x18]
    adds r0, r2, r7
    strb r0, [r4, #0x18]
    ldrb r1, [r4, #0x19]
    adds r0, r1, r6
    strb r0, [r4, #0x19]
.L0802AB7E:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0802A994

    thumb_func_start BattleHitAdvance
BattleHitAdvance: @ 0x0802AB90
    ldr r1, .L0802AB9C @ =0x0203A50C
    ldr r0, [r1]
    adds r0, #4
    str r0, [r1]
    bx lr
    .align 2, 0
.L0802AB9C: .4byte 0x0203A50C
    func_end BattleHitAdvance

    thumb_func_start BattleHitTerminate
BattleHitTerminate: @ 0x0802ABA0
    ldr r0, .L0802ABB0 @ =0x0203A50C
    ldr r1, [r0]
    adds r1, #4
    str r1, [r0]
    movs r0, #0x80
    strb r0, [r1, #2]
    bx lr
    .align 2, 0
.L0802ABB0: .4byte 0x0203A50C
    func_end BattleHitTerminate
