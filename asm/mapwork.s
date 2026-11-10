    .include "asm_prelude.inc"

    thumb_func_start MapFloodUnitMovement
MapFloodUnitMovement: @ 0x08019BE0
    push {r4, r5, lr}
    adds r5, r0, #0
    lsls r4, r1, #0x18
    lsrs r4, r4, #0x18
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L08019C14 @ =gBmMapMovement
    ldr r1, [r0]
    ldr r0, .L08019C18 @ =gWorkingMap
    str r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    movs r3, #0xb
    ldrsb r3, [r5, r3]
    adds r2, r4, #0
    bl BeginMapFlood
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08019C14: .4byte gBmMapMovement
.L08019C18: .4byte gWorkingMap
    func_end MapFloodUnitMovement

    thumb_func_start MapFloodUnitExtended
MapFloodUnitExtended: @ 0x08019C1C
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L08019C48 @ =gBmMapMovement
    ldr r1, [r0]
    ldr r0, .L08019C4C @ =gWorkingMap
    str r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0x7c
    movs r3, #0
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08019C48: .4byte gBmMapMovement
.L08019C4C: .4byte gWorkingMap
    func_end MapFloodUnitExtended

    thumb_func_start MapFloodRange_Unitless
MapFloodRange_Unitless: @ 0x08019C50
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, r2, #0
    bl SetWorkingMoveTable
    ldr r0, .L08019C78 @ =gMapRange
    ldr r1, [r0]
    ldr r0, .L08019C7C @ =gWorkingMap
    str r1, [r0]
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x7c
    movs r3, #0
    bl BeginMapFlood
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08019C78: .4byte gMapRange
.L08019C7C: .4byte gWorkingMap
    func_end MapFloodRange_Unitless

    thumb_func_start GenerateExtendedMovementMap
GenerateExtendedMovementMap: @ 0x08019C80
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, r2, #0
    bl SetWorkingMoveTable
    ldr r0, .L08019CA8 @ =gBmMapMovement
    ldr r1, [r0]
    ldr r0, .L08019CAC @ =gWorkingMap
    str r1, [r0]
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x7c
    movs r3, #0
    bl BeginMapFlood
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08019CA8: .4byte gBmMapMovement
.L08019CAC: .4byte gWorkingMap
    func_end GenerateExtendedMovementMap

    thumb_func_start MapFloodOnWorkingMap
MapFloodOnWorkingMap: @ 0x08019CB0
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    adds r0, r5, #0
    adds r1, r6, #0
    mov r2, r8
    bl BeginMapFlood
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end MapFloodOnWorkingMap

    thumb_func_start SetWorkingMoveTable
SetWorkingMoveTable: @ 0x08019CE0
    push {r4, lr}
    adds r3, r0, #0
    movs r2, #0
    ldr r4, .L08019CFC @ =gWorkingMovTable
.L08019CE8:
    adds r0, r2, r4
    adds r1, r3, r2
    ldrb r1, [r1]
    strb r1, [r0]
    adds r2, #1
    cmp r2, #0x40
    ble .L08019CE8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08019CFC: .4byte gWorkingMovTable
    func_end SetWorkingMoveTable

    thumb_func_start BeginMapFlood
BeginMapFlood: @ 0x08019D00
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r7, r1, #0
    ldr r1, .L08019D20 @ =gMapFloodSt
    ldr r0, .L08019D24 @ =gMapFloodSquareBufB
    str r0, [r1, #4]
    ldr r0, .L08019D28 @ =gMapFloodSquareBufA
    str r0, [r1]
    strb r2, [r1, #9]
    adds r6, r1, #0
    cmp r3, #0
    bne .L08019D2C
    strb r3, [r6, #8]
    b .L08019D32
    .align 2, 0
.L08019D20: .4byte gMapFloodSt
.L08019D24: .4byte gMapFloodSquareBufB
.L08019D28: .4byte gMapFloodSquareBufA
.L08019D2C:
    movs r0, #1
    strb r0, [r6, #8]
    strb r3, [r6, #0xa]
.L08019D32:
    movs r0, #0
    mov r8, r0
    movs r0, #0x78
    strb r0, [r6, #0xb]
    ldr r4, .L08019D80 @ =gWorkingMap
    ldr r0, [r4]
    movs r1, #1
    rsbs r1, r1, #0
    bl MapFill
    ldr r0, [r6, #4]
    strb r5, [r0]
    ldr r0, [r6, #4]
    strb r7, [r0, #1]
    ldr r1, [r6, #4]
    movs r0, #5
    strb r0, [r1, #2]
    ldr r0, [r6, #4]
    mov r1, r8
    strb r1, [r0, #3]
    ldr r1, [r4]
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r5
    mov r1, r8
    strb r1, [r0]
    ldr r0, [r6, #4]
    adds r0, #4
    str r0, [r6, #4]
    movs r1, #4
    strb r1, [r0, #2]
    bl MapFloodCoreRam
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019D80: .4byte gWorkingMap
    func_end BeginMapFlood

    thumb_func_start func_08019D84
func_08019D84: @ 0x08019D84
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    adds r6, r1, #0
    mov ip, r2
    ldr r5, .L08019E48 @ =gMapFloodSt
    ldr r2, [r5]
    movs r0, #0
    ldrsb r0, [r2, r0]
    adds r6, r6, r0
    movs r0, #1
    ldrsb r0, [r2, r0]
    add ip, r0
    ldr r3, .L08019E4C @ =gWorkingMovTable
    ldr r0, .L08019E50 @ =gBmMapTerrain
    ldr r0, [r0]
    mov r1, ip
    lsls r7, r1, #2
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    adds r0, r0, r3
    mov sb, r0
    ldr r4, .L08019E54 @ =gWorkingMap
    ldr r1, [r4]
    ldrb r3, [r2, #1]
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r0, [r0]
    ldrb r2, [r2]
    adds r0, r2, r0
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r2, sb
    ldrb r2, [r2]
    adds r0, r2, r0
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    asrs r0, r0, #0x10
    adds r1, r7, r1
    ldr r1, [r1]
    adds r1, r1, r6
    ldrb r1, [r1]
    cmp r0, r1
    bge .L08019E3C
    movs r0, #8
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L08019E0A
    ldr r0, .L08019E58 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08019E0A
    ldrb r3, [r5, #0xa]
    eors r0, r3
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    bne .L08019E3C
.L08019E0A:
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    ldrb r1, [r5, #9]
    cmp r0, r1
    bgt .L08019E3C
    ldr r0, [r5, #4]
    strb r6, [r0]
    ldr r0, [r5, #4]
    mov r3, ip
    strb r3, [r0, #1]
    ldr r0, [r5, #4]
    mov r1, r8
    strb r1, [r0, #2]
    ldr r0, [r5, #4]
    strb r2, [r0, #3]
    ldr r0, [r5, #4]
    adds r0, #4
    str r0, [r5, #4]
    ldr r1, [r4]
    mov r3, ip
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r6
    strb r2, [r0]
.L08019E3C:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019E48: .4byte gMapFloodSt
.L08019E4C: .4byte gWorkingMovTable
.L08019E50: .4byte gBmMapTerrain
.L08019E54: .4byte gWorkingMap
.L08019E58: .4byte gBmMapUnit
    func_end func_08019D84

    thumb_func_start BuildBestMoveScript
BuildBestMoveScript: @ 0x08019E5C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r6, r0, #0
    mov sb, r1
    str r2, [sp, #8]
    str r2, [sp, #0xc]
    movs r0, #0
    mov ip, r0
    ldr r1, .L08019EAC @ =gWorkingMap
    ldr r0, [r1]
    mov r3, sb
    lsls r2, r3, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08019E8E
    b .L08019FF2
.L08019E8E:
    mov r4, sp
    add r7, sp, #4
    mov sl, r7
    mov r8, r2
.L08019E96:
    ldr r0, .L08019EB0 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r0, #1
    cmp r6, r0
    bne .L08019EB4
    movs r0, #0xff
    ldrb r3, [r4]
    orrs r0, r3
    b .L08019EBE
    .align 2, 0
.L08019EAC: .4byte gWorkingMap
.L08019EB0: .4byte gBmMapSize
.L08019EB4:
    ldr r0, [r1]
    add r0, r8
    ldr r0, [r0]
    adds r0, r6, r0
    ldrb r0, [r0, #1]
.L08019EBE:
    strb r0, [r4]
    cmp r6, #0
    bne .L08019ECC
    ldrb r0, [r4, #1]
    movs r7, #0xff
    orrs r0, r7
    b .L08019ED8
.L08019ECC:
    ldr r0, [r1]
    add r0, r8
    ldr r0, [r0]
    adds r0, r6, r0
    subs r0, #1
    ldrb r0, [r0]
.L08019ED8:
    strb r0, [r4, #1]
    ldr r2, .L08019EF0 @ =gBmMapSize
    movs r3, #2
    ldrsh r0, [r2, r3]
    subs r0, #1
    cmp sb, r0
    bne .L08019EF4
    ldrb r0, [r4, #3]
    movs r7, #0xff
    orrs r0, r7
    b .L08019EFE
    .align 2, 0
.L08019EF0: .4byte gBmMapSize
.L08019EF4:
    ldr r0, [r1]
    add r0, r8
    ldr r0, [r0, #4]
    adds r0, r0, r6
    ldrb r0, [r0]
.L08019EFE:
    strb r0, [r4, #3]
    mov r0, sb
    cmp r0, #0
    bne .L08019F0E
    ldrb r0, [r4, #2]
    movs r1, #0xff
    orrs r0, r1
    b .L08019F1A
.L08019F0E:
    ldr r0, [r1]
    add r0, r8
    subs r0, #4
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
.L08019F1A:
    strb r0, [r4, #2]
    movs r1, #0x80
    lsls r1, r1, #1
    movs r7, #0
    movs r2, #0
    ldr r3, [sp, #8]
    adds r3, #1
    str r3, [sp, #0x10]
.L08019F2A:
    mov r3, sp
    adds r0, r3, r2
    ldrb r0, [r0]
    cmp r1, r0
    ble .L08019F36
    adds r1, r0, #0
.L08019F36:
    adds r2, #1
    cmp r2, #3
    ble .L08019F2A
    movs r2, #0
    adds r5, r1, #0
    add r3, sp, #4
.L08019F42:
    mov r1, sp
    adds r0, r1, r2
    ldrb r0, [r0]
    cmp r5, r0
    bne .L08019F60
    adds r1, r7, #0
    lsls r0, r1, #0x10
    movs r7, #0x80
    lsls r7, r7, #9
    adds r0, r0, r7
    lsrs r7, r0, #0x10
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    adds r1, r3, r1
    strb r2, [r1]
.L08019F60:
    adds r2, #1
    cmp r2, #3
    ble .L08019F42
    lsls r0, r7, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    beq .L08019F86
    cmp r0, #2
    bgt .L08019F78
    cmp r0, #1
    beq .L08019F82
    b .L08019F9A
.L08019F78:
    cmp r0, #3
    beq .L08019F8A
    cmp r0, #4
    beq .L08019F8E
    b .L08019F9A
.L08019F82:
    mov r0, sl
    b .L08019F96
.L08019F86:
    movs r0, #2
    b .L08019F90
.L08019F8A:
    movs r0, #3
    b .L08019F90
.L08019F8E:
    movs r0, #4
.L08019F90:
    bl RandNext
    add r0, sl
.L08019F96:
    ldrb r0, [r0]
    mov ip, r0
.L08019F9A:
    mov r2, ip
    ldr r1, [sp, #8]
    strb r2, [r1]
    ldr r3, [sp, #0x10]
    str r3, [sp, #8]
    mov r0, ip
    cmp r0, #1
    beq .L08019FC2
    cmp r0, #1
    bgt .L08019FB4
    cmp r0, #0
    beq .L08019FBE
    b .L08019FDC
.L08019FB4:
    cmp r0, #2
    beq .L08019FD0
    cmp r0, #3
    beq .L08019FC6
    b .L08019FDC
.L08019FBE:
    adds r6, #1
    b .L08019FDC
.L08019FC2:
    subs r6, #1
    b .L08019FDC
.L08019FC6:
    movs r7, #4
    add r8, r7
    movs r0, #1
    add sb, r0
    b .L08019FDC
.L08019FD0:
    movs r1, #4
    rsbs r1, r1, #0
    add r8, r1
    movs r2, #1
    rsbs r2, r2, #0
    add sb, r2
.L08019FDC:
    ldr r1, .L0801A00C @ =gWorkingMap
    ldr r0, [r1]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08019FF2
    b .L08019E96
.L08019FF2:
    ldr r0, [sp, #0xc]
    ldr r1, [sp, #8]
    bl func_0801A010
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801A00C: .4byte gWorkingMap
    func_end BuildBestMoveScript

    thumb_func_start func_0801A010
func_0801A010: @ 0x0801A010
    sub sp, #0x40
    adds r3, r0, #0
    mov r2, sp
    cmp r1, r3
    bls .L0801A026
.L0801A01A:
    subs r1, #1
    ldrb r0, [r1]
    strb r0, [r2]
    adds r2, #1
    cmp r1, r3
    bhi .L0801A01A
.L0801A026:
    movs r0, #4
    strb r0, [r2]
    mov r2, sp
    b .L0801A034
.L0801A02E:
    strb r0, [r3]
    adds r2, #1
    adds r3, #1
.L0801A034:
    ldrb r0, [r2]
    cmp r0, #4
    bne .L0801A02E
    movs r0, #4
    strb r0, [r3]
    add sp, #0x40
    bx lr
    func_end func_0801A010

    thumb_func_start func_0801A044
func_0801A044: @ 0x0801A044
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r3, r1, #0
    adds r4, r2, #0
    ldr r5, .L0801A058 @ =gWorkingMoveScript
    ldr r6, .L0801A05C @ =gActionSt
    ldr r0, .L0801A060 @ =gBmMapHidden
    mov ip, r0
    b .L0801A066
    .align 2, 0
.L0801A058: .4byte gWorkingMoveScript
.L0801A05C: .4byte gActionSt
.L0801A060: .4byte gBmMapHidden
.L0801A064:
    adds r5, #1
.L0801A066:
    strb r3, [r6, #0xe]
    strb r4, [r6, #0xf]
    ldrb r0, [r5]
    cmp r0, #1
    beq .L0801A08E
    cmp r0, #1
    bgt .L0801A07A
    cmp r0, #0
    beq .L0801A08A
    b .L0801A090
.L0801A07A:
    cmp r0, #2
    beq .L0801A086
    cmp r0, #3
    bne .L0801A090
    subs r4, #1
    b .L0801A090
.L0801A086:
    adds r4, #1
    b .L0801A090
.L0801A08A:
    subs r3, #1
    b .L0801A090
.L0801A08E:
    adds r3, #1
.L0801A090:
    ldr r0, [r7]
    ldr r2, [r7, #4]
    ldr r1, [r0, #0x28]
    ldr r0, [r2, #0x28]
    orrs r1, r0
    ldr r0, .L0801A0C8 @ =0x02001808
    ands r1, r0
    lsls r2, r4, #2
    cmp r1, #0
    bne .L0801A0CC
    mov r1, ip
    ldr r0, [r1]
    adds r0, r2, r0
    ldr r1, [r0]
    adds r1, r1, r3
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0801A0CC
    movs r0, #4
    strb r0, [r5, #1]
    movs r0, #0x1b
    strb r0, [r6, #0x11]
    strb r3, [r6, #0xe]
    strb r4, [r6, #0xf]
    b .L0801A0F4
    .align 2, 0
.L0801A0C8: .4byte 0x02001808
.L0801A0CC:
    mov r1, ip
    ldr r0, [r1]
    adds r0, r2, r0
    ldr r1, [r0]
    adds r1, r1, r3
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0801A0EE
    movs r0, #0xa
    strb r0, [r5]
    movs r0, #4
    strb r0, [r5, #1]
    movs r0, #0x1b
    strb r0, [r6, #0x11]
    b .L0801A0F4
.L0801A0EE:
    ldrb r0, [r5]
    cmp r0, #4
    bne .L0801A064
.L0801A0F4:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0801A044

    thumb_func_start func_0801A0FC
func_0801A0FC: @ 0x0801A0FC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r1, .L0801A1DC @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    subs r4, r0, #1
    ldr r7, .L0801A1E0 @ =gMapFloodSt
    mov sb, r7
    cmp r4, #0
    blt .L0801A1C4
    mov ip, r1
    mov sl, sb
.L0801A11A:
    mov r1, ip
    movs r2, #0
    ldrsh r0, [r1, r2]
    subs r3, r0, #1
    subs r7, r4, #1
    mov r8, r7
    cmp r3, #0
    blt .L0801A1BE
    lsls r5, r4, #2
    mov r6, sl
.L0801A12E:
    ldr r1, .L0801A1E4 @ =gBmMapMovement
    ldr r0, [r1]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r3
    ldrb r2, [r1]
    cmp r2, #0x78
    bhi .L0801A1B8
    movs r0, #0
    ldrsb r0, [r1, r0]
    ldrb r2, [r6, #0xb]
    cmp r0, r2
    beq .L0801A1B8
    subs r1, #1
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A158
    cmp r3, #0
    beq .L0801A158
    strb r2, [r1]
.L0801A158:
    ldr r7, .L0801A1E4 @ =gBmMapMovement
    ldr r0, [r7]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r3, r0
    movs r0, #1
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A17A
    mov r2, ip
    movs r7, #0
    ldrsh r0, [r2, r7]
    subs r0, #1
    cmp r3, r0
    beq .L0801A17A
    ldrb r0, [r6, #0xb]
    strb r0, [r1, #1]
.L0801A17A:
    ldr r1, .L0801A1E4 @ =gBmMapMovement
    ldr r0, [r1]
    adds r0, r5, r0
    subs r0, #4
    ldr r0, [r0]
    adds r1, r0, r3
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A196
    cmp r4, #0
    beq .L0801A196
    ldrb r0, [r6, #0xb]
    strb r0, [r1]
.L0801A196:
    ldr r2, .L0801A1E4 @ =gBmMapMovement
    ldr r0, [r2]
    adds r0, r5, r0
    ldr r0, [r0, #4]
    adds r1, r0, r3
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A1B8
    mov r7, ip
    movs r2, #2
    ldrsh r0, [r7, r2]
    subs r0, #1
    cmp r4, r0
    beq .L0801A1B8
    ldrb r0, [r6, #0xb]
    strb r0, [r1]
.L0801A1B8:
    subs r3, #1
    cmp r3, #0
    bge .L0801A12E
.L0801A1BE:
    mov r4, r8
    cmp r4, #0
    bge .L0801A11A
.L0801A1C4:
    mov r7, sb
    ldrb r0, [r7, #0xb]
    adds r0, #1
    strb r0, [r7, #0xb]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801A1DC: .4byte gBmMapSize
.L0801A1E0: .4byte gMapFloodSt
.L0801A1E4: .4byte gBmMapMovement
    func_end func_0801A0FC

    thumb_func_start func_0801A1E8
func_0801A1E8: @ 0x0801A1E8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r1, .L0801A2C8 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    subs r4, r0, #1
    ldr r7, .L0801A2CC @ =gMapFloodSt
    mov sb, r7
    cmp r4, #0
    blt .L0801A2B0
    mov ip, r1
    mov sl, sb
.L0801A206:
    mov r1, ip
    movs r2, #0
    ldrsh r0, [r1, r2]
    subs r3, r0, #1
    subs r7, r4, #1
    mov r8, r7
    cmp r3, #0
    blt .L0801A2AA
    lsls r5, r4, #2
    mov r6, sl
.L0801A21A:
    ldr r1, .L0801A2D0 @ =gWorkingMap
    ldr r0, [r1]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r3
    ldrb r2, [r1]
    cmp r2, #0x78
    bhi .L0801A2A4
    movs r0, #0
    ldrsb r0, [r1, r0]
    ldrb r2, [r6, #0xb]
    cmp r0, r2
    beq .L0801A2A4
    subs r1, #1
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A244
    cmp r3, #0
    beq .L0801A244
    strb r2, [r1]
.L0801A244:
    ldr r7, .L0801A2D0 @ =gWorkingMap
    ldr r0, [r7]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r3, r0
    movs r0, #1
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A266
    mov r2, ip
    movs r7, #0
    ldrsh r0, [r2, r7]
    subs r0, #1
    cmp r3, r0
    beq .L0801A266
    ldrb r0, [r6, #0xb]
    strb r0, [r1, #1]
.L0801A266:
    ldr r1, .L0801A2D0 @ =gWorkingMap
    ldr r0, [r1]
    adds r0, r5, r0
    subs r0, #4
    ldr r0, [r0]
    adds r1, r0, r3
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A282
    cmp r4, #0
    beq .L0801A282
    ldrb r0, [r6, #0xb]
    strb r0, [r1]
.L0801A282:
    ldr r2, .L0801A2D0 @ =gWorkingMap
    ldr r0, [r2]
    adds r0, r5, r0
    ldr r0, [r0, #4]
    adds r1, r0, r3
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0801A2A4
    mov r7, ip
    movs r2, #2
    ldrsh r0, [r7, r2]
    subs r0, #1
    cmp r4, r0
    beq .L0801A2A4
    ldrb r0, [r6, #0xb]
    strb r0, [r1]
.L0801A2A4:
    subs r3, #1
    cmp r3, #0
    bge .L0801A21A
.L0801A2AA:
    mov r4, r8
    cmp r4, #0
    bge .L0801A206
.L0801A2B0:
    mov r7, sb
    ldrb r0, [r7, #0xb]
    adds r0, #1
    strb r0, [r7, #0xb]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801A2C8: .4byte gBmMapSize
.L0801A2CC: .4byte gMapFloodSt
.L0801A2D0: .4byte gWorkingMap
    func_end func_0801A1E8

    thumb_func_start MapAddInRange
MapAddInRange: @ 0x0801A2D4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    str r0, [sp]
    mov sb, r1
    mov r8, r2
    mov sl, r3
    mov r5, r8
    mov r4, sb
    adds r0, r4, r5
    cmp r4, r0
    bgt .L0801A354
    ldr r1, .L0801A3D0 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    cmp r4, r0
    bge .L0801A354
.L0801A2FC:
    ldr r6, [sp]
    subs r1, r6, r5
    lsls r0, r5, #1
    adds r0, #1
    cmp r1, #0
    bge .L0801A30C
    adds r0, r0, r1
    movs r1, #0
.L0801A30C:
    adds r3, r1, r0
    ldr r2, .L0801A3D0 @ =gBmMapSize
    movs r6, #0
    ldrsh r0, [r2, r6]
    cmp r3, r0
    ble .L0801A31A
    adds r3, r0, #0
.L0801A31A:
    adds r2, r1, #0
    subs r5, #1
    adds r7, r4, #1
    mov r6, sb
    add r6, r8
    cmp r2, r3
    bge .L0801A344
    ldr r0, .L0801A3D4 @ =gWorkingMap
    mov ip, r0
    lsls r4, r4, #2
.L0801A32E:
    mov r1, ip
    ldr r0, [r1]
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r1, [r0]
    add r1, sl
    strb r1, [r0]
    adds r2, #1
    cmp r2, r3
    blt .L0801A32E
.L0801A344:
    adds r4, r7, #0
    cmp r4, r6
    bgt .L0801A354
    ldr r2, .L0801A3D0 @ =gBmMapSize
    movs r6, #2
    ldrsh r0, [r2, r6]
    cmp r4, r0
    blt .L0801A2FC
.L0801A354:
    mov r5, r8
    subs r5, #1
    mov r4, sb
    subs r4, #1
    mov r0, sb
    mov r1, r8
    subs r0, r0, r1
    mov r8, r0
    cmp r4, r8
    blt .L0801A3BE
    cmp r4, #0
    blt .L0801A3BE
    ldr r2, .L0801A3D0 @ =gBmMapSize
    mov ip, r2
    ldr r6, .L0801A3D4 @ =gWorkingMap
    mov sb, r6
.L0801A374:
    ldr r0, [sp]
    subs r1, r0, r5
    lsls r0, r5, #1
    adds r0, #1
    cmp r1, #0
    bge .L0801A384
    adds r0, r0, r1
    movs r1, #0
.L0801A384:
    adds r3, r1, r0
    mov r2, ip
    movs r6, #0
    ldrsh r0, [r2, r6]
    cmp r3, r0
    ble .L0801A392
    adds r3, r0, #0
.L0801A392:
    adds r2, r1, #0
    subs r5, #1
    subs r6, r4, #1
    cmp r2, r3
    bge .L0801A3B4
    mov r7, sb
    lsls r4, r4, #2
.L0801A3A0:
    ldr r0, [r7]
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r1, [r0]
    add r1, sl
    strb r1, [r0]
    adds r2, #1
    cmp r2, r3
    blt .L0801A3A0
.L0801A3B4:
    adds r4, r6, #0
    cmp r6, r8
    blt .L0801A3BE
    cmp r6, #0
    bge .L0801A374
.L0801A3BE:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801A3D0: .4byte gBmMapSize
.L0801A3D4: .4byte gWorkingMap
    func_end MapAddInRange

    thumb_func_start func_0801A3D8
func_0801A3D8: @ 0x0801A3D8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    str r0, [sp]
    mov sb, r1
    mov r8, r2
    mov sl, r3
    mov r5, r8
    mov r3, sb
    adds r0, r3, r5
    cmp r3, r0
    bgt .L0801A454
    ldr r4, .L0801A4CC @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r4, r1]
    cmp r3, r0
    bge .L0801A454
.L0801A400:
    ldr r2, [sp]
    subs r1, r2, r5
    lsls r0, r5, #1
    adds r0, #1
    cmp r1, #0
    bge .L0801A410
    adds r0, r0, r1
    movs r1, #0
.L0801A410:
    adds r2, r1, r0
    ldr r4, .L0801A4CC @ =gBmMapSize
    movs r6, #0
    ldrsh r0, [r4, r6]
    cmp r2, r0
    ble .L0801A41E
    adds r2, r0, #0
.L0801A41E:
    subs r6, r5, #1
    adds r7, r3, #1
    mov r0, sb
    add r0, r8
    mov ip, r0
    cmp r1, r2
    bge .L0801A442
    ldr r5, .L0801A4D0 @ =gWorkingMap
    lsls r4, r3, #2
.L0801A430:
    ldr r0, [r5]
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r1
    mov r3, sl
    strb r3, [r0]
    adds r1, #1
    cmp r1, r2
    blt .L0801A430
.L0801A442:
    adds r5, r6, #0
    adds r3, r7, #0
    cmp r3, ip
    bgt .L0801A454
    ldr r4, .L0801A4CC @ =gBmMapSize
    movs r6, #2
    ldrsh r0, [r4, r6]
    cmp r3, r0
    blt .L0801A400
.L0801A454:
    mov r5, r8
    subs r5, #1
    mov r3, sb
    subs r3, #1
    mov r0, sb
    mov r1, r8
    subs r0, r0, r1
    mov r8, r0
    cmp r3, r8
    blt .L0801A4BC
    cmp r3, #0
    blt .L0801A4BC
    ldr r2, .L0801A4CC @ =gBmMapSize
    mov ip, r2
    ldr r4, .L0801A4D0 @ =gWorkingMap
    mov sb, r4
.L0801A474:
    ldr r6, [sp]
    subs r1, r6, r5
    lsls r0, r5, #1
    adds r0, #1
    cmp r1, #0
    bge .L0801A484
    adds r0, r0, r1
    movs r1, #0
.L0801A484:
    adds r2, r1, r0
    mov r4, ip
    movs r6, #0
    ldrsh r0, [r4, r6]
    cmp r2, r0
    ble .L0801A492
    adds r2, r0, #0
.L0801A492:
    subs r6, r5, #1
    subs r4, r3, #1
    cmp r1, r2
    bge .L0801A4B0
    mov r7, sb
    lsls r5, r3, #2
.L0801A49E:
    ldr r0, [r7]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r1
    mov r3, sl
    strb r3, [r0]
    adds r1, #1
    cmp r1, r2
    blt .L0801A49E
.L0801A4B0:
    adds r5, r6, #0
    adds r3, r4, #0
    cmp r4, r8
    blt .L0801A4BC
    cmp r4, #0
    bge .L0801A474
.L0801A4BC:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801A4CC: .4byte gBmMapSize
.L0801A4D0: .4byte gWorkingMap
    func_end func_0801A3D8

    thumb_func_start func_0801A4D4
func_0801A4D4: @ 0x0801A4D4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov sb, r0
    movs r1, #1
    rsbs r1, r1, #0
    bl GetUnitWeaponReach
    subs r0, #1
    cmp r0, #0xe
    bls .L0801A4F2
    b .L0801AB72
.L0801A4F2:
    lsls r0, r0, #2
    ldr r1, .L0801A4FC @ =.L0801A500
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0801A4FC: .4byte .L0801A500
.L0801A500: @ jump table
    .4byte .L0801A53C @ case 0
    .4byte .L0801A710 @ case 1
    .4byte .L0801A5D8 @ case 2
    .4byte .L0801A848 @ case 3
    .4byte .L0801A980 @ case 4
    .4byte .L0801A7AC @ case 5
    .4byte .L0801A674 @ case 6
    .4byte .L0801AB72 @ case 7
    .4byte .L0801AB72 @ case 8
    .4byte .L0801AB72 @ case 9
    .4byte .L0801AB72 @ case 10
    .4byte .L0801A8E4 @ case 11
    .4byte .L0801AA34 @ case 12
    .4byte .L0801AB72 @ case 13
    .4byte .L0801AAEC @ case 14
.L0801A53C:
    ldr r0, .L0801A5C8 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A54A
    b .L0801AB72
.L0801A54A:
    ldr r0, .L0801A5C8 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r0, #1
    mov r8, r0
    subs r0, r6, #1
    str r0, [sp]
    mov r1, r8
    cmp r1, #0
    blt .L0801A5C0
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801A564:
    ldr r0, .L0801A5CC @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801A5B4
    ldr r0, .L0801A5D0 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A5B4
    ldr r0, .L0801A5D4 @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A5B4
    mov r2, r8
    lsls r4, r2, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801A5B4:
    movs r0, #1
    rsbs r0, r0, #0
    add r8, r0
    mov r1, r8
    cmp r1, #0
    bge .L0801A564
.L0801A5C0:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A54A
    b .L0801AB72
    .align 2, 0
.L0801A5C8: .4byte gBmMapSize
.L0801A5CC: .4byte gBmMapMovement
.L0801A5D0: .4byte gBmMapUnit
.L0801A5D4: .4byte gMapOther
.L0801A5D8:
    ldr r0, .L0801A664 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A5E6
    b .L0801AB72
.L0801A5E6:
    ldr r0, .L0801A664 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    mov r8, r0
    subs r2, r6, #1
    str r2, [sp]
    cmp r0, #0
    blt .L0801A65A
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801A5FE:
    ldr r0, .L0801A668 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801A64E
    ldr r0, .L0801A66C @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A64E
    ldr r0, .L0801A670 @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A64E
    mov r0, r8
    lsls r4, r0, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801A64E:
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
    mov r2, r8
    cmp r2, #0
    bge .L0801A5FE
.L0801A65A:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A5E6
    b .L0801AB72
    .align 2, 0
.L0801A664: .4byte gBmMapSize
.L0801A668: .4byte gBmMapMovement
.L0801A66C: .4byte gBmMapUnit
.L0801A670: .4byte gMapOther
.L0801A674:
    ldr r0, .L0801A700 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A682
    b .L0801AB72
.L0801A682:
    ldr r0, .L0801A700 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r0, #1
    mov r8, r0
    subs r0, r6, #1
    str r0, [sp]
    mov r1, r8
    cmp r1, #0
    blt .L0801A6F8
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801A69C:
    ldr r0, .L0801A704 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801A6EC
    ldr r0, .L0801A708 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A6EC
    ldr r0, .L0801A70C @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A6EC
    mov r2, r8
    lsls r4, r2, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #3
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801A6EC:
    movs r0, #1
    rsbs r0, r0, #0
    add r8, r0
    mov r1, r8
    cmp r1, #0
    bge .L0801A69C
.L0801A6F8:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A682
    b .L0801AB72
    .align 2, 0
.L0801A700: .4byte gBmMapSize
.L0801A704: .4byte gBmMapMovement
.L0801A708: .4byte gBmMapUnit
.L0801A70C: .4byte gMapOther
.L0801A710:
    ldr r0, .L0801A79C @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A71E
    b .L0801AB72
.L0801A71E:
    ldr r0, .L0801A79C @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    mov r8, r0
    subs r2, r6, #1
    str r2, [sp]
    cmp r0, #0
    blt .L0801A792
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801A736:
    ldr r0, .L0801A7A0 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801A786
    ldr r0, .L0801A7A4 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A786
    ldr r0, .L0801A7A8 @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A786
    mov r0, r8
    lsls r4, r0, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #1
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801A786:
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
    mov r2, r8
    cmp r2, #0
    bge .L0801A736
.L0801A792:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A71E
    b .L0801AB72
    .align 2, 0
.L0801A79C: .4byte gBmMapSize
.L0801A7A0: .4byte gBmMapMovement
.L0801A7A4: .4byte gBmMapUnit
.L0801A7A8: .4byte gMapOther
.L0801A7AC:
    ldr r0, .L0801A838 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A7BA
    b .L0801AB72
.L0801A7BA:
    ldr r0, .L0801A838 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r0, #1
    mov r8, r0
    subs r0, r6, #1
    str r0, [sp]
    mov r1, r8
    cmp r1, #0
    blt .L0801A830
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801A7D4:
    ldr r0, .L0801A83C @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801A824
    ldr r0, .L0801A840 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A824
    ldr r0, .L0801A844 @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A824
    mov r2, r8
    lsls r4, r2, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #3
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #1
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801A824:
    movs r0, #1
    rsbs r0, r0, #0
    add r8, r0
    mov r1, r8
    cmp r1, #0
    bge .L0801A7D4
.L0801A830:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A7BA
    b .L0801AB72
    .align 2, 0
.L0801A838: .4byte gBmMapSize
.L0801A83C: .4byte gBmMapMovement
.L0801A840: .4byte gBmMapUnit
.L0801A844: .4byte gMapOther
.L0801A848:
    ldr r0, .L0801A8D4 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A856
    b .L0801AB72
.L0801A856:
    ldr r0, .L0801A8D4 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    mov r8, r0
    subs r2, r6, #1
    str r2, [sp]
    cmp r0, #0
    blt .L0801A8CA
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801A86E:
    ldr r0, .L0801A8D8 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801A8BE
    ldr r0, .L0801A8DC @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A8BE
    ldr r0, .L0801A8E0 @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A8BE
    mov r0, r8
    lsls r4, r0, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #3
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801A8BE:
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
    mov r2, r8
    cmp r2, #0
    bge .L0801A86E
.L0801A8CA:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A856
    b .L0801AB72
    .align 2, 0
.L0801A8D4: .4byte gBmMapSize
.L0801A8D8: .4byte gBmMapMovement
.L0801A8DC: .4byte gBmMapUnit
.L0801A8E0: .4byte gMapOther
.L0801A8E4:
    ldr r0, .L0801A970 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A8F2
    b .L0801AB72
.L0801A8F2:
    ldr r0, .L0801A970 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r0, #1
    mov r8, r0
    subs r0, r6, #1
    str r0, [sp]
    mov r1, r8
    cmp r1, #0
    blt .L0801A968
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801A90C:
    ldr r0, .L0801A974 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801A95C
    ldr r0, .L0801A978 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A95C
    ldr r0, .L0801A97C @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801A95C
    mov r2, r8
    lsls r4, r2, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #0xa
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801A95C:
    movs r0, #1
    rsbs r0, r0, #0
    add r8, r0
    mov r1, r8
    cmp r1, #0
    bge .L0801A90C
.L0801A968:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A8F2
    b .L0801AB72
    .align 2, 0
.L0801A970: .4byte gBmMapSize
.L0801A974: .4byte gBmMapMovement
.L0801A978: .4byte gBmMapUnit
.L0801A97C: .4byte gMapOther
.L0801A980:
    ldr r0, .L0801AA24 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801A98E
    b .L0801AB72
.L0801A98E:
    ldr r0, .L0801AA24 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    mov r8, r0
    subs r2, r6, #1
    str r2, [sp]
    cmp r0, #0
    blt .L0801AA1C
    lsls r7, r6, #2
    lsls r0, r6, #0x10
    asrs r5, r0, #0x10
.L0801A9A6:
    ldr r0, .L0801AA28 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801AA10
    ldr r0, .L0801AA2C @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AA10
    ldr r0, .L0801AA30 @ =gMapOther
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AA10
    mov r0, r8
    lsls r4, r0, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #3
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AA10:
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
    mov r2, r8
    cmp r2, #0
    bge .L0801A9A6
.L0801AA1C:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801A98E
    b .L0801AB72
    .align 2, 0
.L0801AA24: .4byte gBmMapSize
.L0801AA28: .4byte gBmMapMovement
.L0801AA2C: .4byte gBmMapUnit
.L0801AA30: .4byte gMapOther
.L0801AA34:
    ldr r0, .L0801AADC @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    bge .L0801AA42
    b .L0801AB72
.L0801AA42:
    ldr r0, .L0801AADC @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r0, #1
    mov r8, r0
    subs r0, r6, #1
    str r0, [sp]
    mov r1, r8
    cmp r1, #0
    blt .L0801AAD2
    lsls r7, r6, #2
    lsls r0, r6, #0x10
    asrs r5, r0, #0x10
.L0801AA5C:
    ldr r0, .L0801AAE0 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801AAC6
    ldr r0, .L0801AAE4 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AAC6
    ldr r0, .L0801AAE8 @ =gMapOther
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AAC6
    mov r2, r8
    lsls r4, r2, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0xa
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AAC6:
    movs r0, #1
    rsbs r0, r0, #0
    add r8, r0
    mov r1, r8
    cmp r1, #0
    bge .L0801AA5C
.L0801AAD2:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801AA42
    b .L0801AB72
    .align 2, 0
.L0801AADC: .4byte gBmMapSize
.L0801AAE0: .4byte gBmMapMovement
.L0801AAE4: .4byte gBmMapUnit
.L0801AAE8: .4byte gMapOther
.L0801AAEC:
    ldr r0, .L0801AC4C @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    cmp r6, #0
    blt .L0801AB72
.L0801AAF8:
    ldr r0, .L0801AC4C @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    mov r8, r0
    subs r2, r6, #1
    str r2, [sp]
    cmp r0, #0
    blt .L0801AB6C
    lsls r5, r6, #2
    lsls r0, r6, #0x10
    asrs r6, r0, #0x10
.L0801AB10:
    ldr r0, .L0801AC50 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801AB60
    ldr r0, .L0801AC54 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AB60
    ldr r0, .L0801AC58 @ =gMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AB60
    mov r0, r8
    lsls r4, r0, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #0xa
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AB60:
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
    mov r2, r8
    cmp r2, #0
    bge .L0801AB10
.L0801AB6C:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801AAF8
.L0801AB72:
    mov r1, sb
    ldr r0, [r1]
    ldr r1, [r1, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L0801AC34
    ldr r0, .L0801AC4C @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    cmp r6, #0
    blt .L0801AC34
.L0801AB92:
    ldr r0, .L0801AC4C @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    mov r8, r0
    subs r2, r6, #1
    str r2, [sp]
    cmp r0, #0
    blt .L0801AC2E
    lsls r0, r6, #2
    mov sb, r0
    lsls r0, r6, #0x10
    asrs r0, r0, #0x10
    mov sl, r0
.L0801ABAE:
    ldr r0, .L0801AC50 @ =gBmMapMovement
    ldr r0, [r0]
    add r0, sb
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801AC22
    ldr r0, .L0801AC54 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, sb
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AC22
    ldr r0, .L0801AC58 @ =gMapOther
    ldr r0, [r0]
    add r0, sb
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AC22
    mov r0, r8
    adds r1, r6, #0
    bl func_080346C8
    adds r7, r0, #0
    cmp r7, #0
    beq .L0801AC22
    mov r1, r8
    lsls r5, r1, #0x10
    asrs r5, r5, #0x10
    bl func_0801736C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    adds r0, r7, #0
    bl func_08017384
    adds r2, r0, #0
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    adds r0, r5, #0
    mov r1, sl
    movs r3, #1
    bl MapAddInRange
    subs r4, #1
    adds r0, r5, #0
    mov r1, sl
    adds r2, r4, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AC22:
    movs r2, #1
    rsbs r2, r2, #0
    add r8, r2
    mov r0, r8
    cmp r0, #0
    bge .L0801ABAE
.L0801AC2E:
    ldr r6, [sp]
    cmp r6, #0
    bge .L0801AB92
.L0801AC34:
    ldr r2, .L0801AC50 @ =gBmMapMovement
    ldr r1, [r2]
    ldr r0, .L0801AC5C @ =gWorkingMap
    str r1, [r0]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801AC4C: .4byte gBmMapSize
.L0801AC50: .4byte gBmMapMovement
.L0801AC54: .4byte gBmMapUnit
.L0801AC58: .4byte gMapOther
.L0801AC5C: .4byte gWorkingMap
    func_end func_0801A4D4

    thumb_func_start BuildUnitStandingRangeForReach
BuildUnitStandingRangeForReach: @ 0x0801AC60
    push {r4, r5, lr}
    adds r2, r0, #0
    movs r4, #0x10
    ldrsb r4, [r2, r4]
    movs r5, #0x11
    ldrsb r5, [r2, r5]
    subs r0, r1, #1
    cmp r0, #0x1f
    bls .L0801AC74
    b .L0801AE08
.L0801AC74:
    lsls r0, r0, #2
    ldr r1, .L0801AC80 @ =.L0801AC84
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0801AC80: .4byte .L0801AC84
.L0801AC84: @ jump table
    .4byte .L0801AD04 @ case 0
    .4byte .L0801AD1C @ case 1
    .4byte .L0801AD0C @ case 2
    .4byte .L0801AD44 @ case 3
    .4byte .L0801AD6C @ case 4
    .4byte .L0801AD30 @ case 5
    .4byte .L0801AD14 @ case 6
    .4byte .L0801AE08 @ case 7
    .4byte .L0801AE08 @ case 8
    .4byte .L0801AE08 @ case 9
    .4byte .L0801AE08 @ case 10
    .4byte .L0801AD58 @ case 11
    .4byte .L0801AD9A @ case 12
    .4byte .L0801AE08 @ case 13
    .4byte .L0801ADC8 @ case 14
    .4byte .L0801AE08 @ case 15
    .4byte .L0801AE08 @ case 16
    .4byte .L0801AE08 @ case 17
    .4byte .L0801AE08 @ case 18
    .4byte .L0801AE08 @ case 19
    .4byte .L0801AE08 @ case 20
    .4byte .L0801AE08 @ case 21
    .4byte .L0801AE08 @ case 22
    .4byte .L0801AE08 @ case 23
    .4byte .L0801AE08 @ case 24
    .4byte .L0801AE08 @ case 25
    .4byte .L0801AE08 @ case 26
    .4byte .L0801AE08 @ case 27
    .4byte .L0801AE08 @ case 28
    .4byte .L0801AE08 @ case 29
    .4byte .L0801AE08 @ case 30
    .4byte .L0801ADE4 @ case 31
.L0801AD04:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    b .L0801ADCE
.L0801AD0C:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    b .L0801ADCE
.L0801AD14:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #3
    b .L0801ADCE
.L0801AD1C:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    b .L0801ADDA
.L0801AD30:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #3
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    b .L0801ADDA
.L0801AD44:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #3
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    b .L0801ADDA
.L0801AD58:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0xa
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    b .L0801ADDA
.L0801AD6C:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #3
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    b .L0801ADDA
.L0801AD9A:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0xa
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    b .L0801ADDA
.L0801ADC8:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0xa
.L0801ADCE:
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
.L0801ADDA:
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
    b .L0801AE08
.L0801ADE4:
    adds r0, r2, #0
    bl GetUnitMagRange
    adds r2, r0, #0
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AE08:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end BuildUnitStandingRangeForReach

    thumb_func_start BuildUnitCompleteStaffRange
BuildUnitCompleteStaffRange: @ 0x0801AE10
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r4, r0, #0
    bl GetUnitStaffReach
    adds r5, r0, #0
    adds r0, r4, #0
    bl GetUnitMagRange
    adds r2, r0, #0
    cmp r5, #3
    beq .L0801AED0
    cmp r5, #3
    bgt .L0801AE38
    cmp r5, #1
    beq .L0801AE40
    b .L0801AFEA
.L0801AE38:
    cmp r5, #0x20
    bne .L0801AE3E
    b .L0801AF60
.L0801AE3E:
    b .L0801AFEA
.L0801AE40:
    ldr r0, .L0801AEC0 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    bge .L0801AE4E
    b .L0801AFEA
.L0801AE4E:
    ldr r0, .L0801AEC0 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r5, r0, #1
    subs r3, r1, #1
    mov r8, r3
    cmp r5, #0
    blt .L0801AEB8
    lsls r6, r1, #2
    lsls r0, r1, #0x10
    asrs r7, r0, #0x10
.L0801AE64:
    ldr r0, .L0801AEC4 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801AEB2
    ldr r0, .L0801AEC8 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AEB2
    ldr r0, .L0801AECC @ =gMapOther
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AEB2
    lsls r4, r5, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r7, #0
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r7, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AEB2:
    subs r5, #1
    cmp r5, #0
    bge .L0801AE64
.L0801AEB8:
    mov r1, r8
    cmp r1, #0
    bge .L0801AE4E
    b .L0801AFEA
    .align 2, 0
.L0801AEC0: .4byte gBmMapSize
.L0801AEC4: .4byte gBmMapMovement
.L0801AEC8: .4byte gBmMapUnit
.L0801AECC: .4byte gMapOther
.L0801AED0:
    ldr r0, .L0801AF50 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    bge .L0801AEDE
    b .L0801AFEA
.L0801AEDE:
    ldr r0, .L0801AF50 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r5, r0, #1
    subs r3, r1, #1
    mov r8, r3
    cmp r5, #0
    blt .L0801AF48
    lsls r6, r1, #2
    lsls r0, r1, #0x10
    asrs r7, r0, #0x10
.L0801AEF4:
    ldr r0, .L0801AF54 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801AF42
    ldr r0, .L0801AF58 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AF42
    ldr r0, .L0801AF5C @ =gMapOther
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AF42
    lsls r4, r5, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r7, #0
    movs r2, #2
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r7, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AF42:
    subs r5, #1
    cmp r5, #0
    bge .L0801AEF4
.L0801AF48:
    mov r1, r8
    cmp r1, #0
    bge .L0801AEDE
    b .L0801AFEA
    .align 2, 0
.L0801AF50: .4byte gBmMapSize
.L0801AF54: .4byte gBmMapMovement
.L0801AF58: .4byte gBmMapUnit
.L0801AF5C: .4byte gMapOther
.L0801AF60:
    ldr r0, .L0801AFF8 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L0801AFEA
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    mov sl, r0
.L0801AF72:
    ldr r0, .L0801AFF8 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r5, r0, #1
    subs r3, r1, #1
    mov r8, r3
    cmp r5, #0
    blt .L0801AFE4
    lsls r6, r1, #2
    lsls r0, r1, #0x10
    asrs r7, r0, #0x10
    mov r0, sl
    lsls r0, r0, #0x10
    mov sb, r0
.L0801AF8E:
    ldr r0, .L0801AFFC @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801AFDE
    ldr r0, .L0801B000 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AFDE
    ldr r0, .L0801B004 @ =gMapOther
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801AFDE
    lsls r4, r5, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    adds r1, r7, #0
    mov r3, sb
    asrs r2, r3, #0x10
    movs r3, #1
    bl MapAddInRange
    adds r0, r4, #0
    adds r1, r7, #0
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L0801AFDE:
    subs r5, #1
    cmp r5, #0
    bge .L0801AF8E
.L0801AFE4:
    mov r1, r8
    cmp r1, #0
    bge .L0801AF72
.L0801AFEA:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801AFF8: .4byte gBmMapSize
.L0801AFFC: .4byte gBmMapMovement
.L0801B000: .4byte gBmMapUnit
.L0801B004: .4byte gMapOther
    func_end BuildUnitCompleteStaffRange

    thumb_func_start func_0801B008
func_0801B008: @ 0x0801B008
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp]
    movs r0, #1
    rsbs r0, r0, #0
    mov sl, r0
    ldr r0, .L0801B038 @ =gMapRange
    ldr r0, [r0]
    movs r1, #0
    bl MapFill
    bl func_080238EC
    mov sb, r0
    mov r6, sb
    adds r6, #1
    b .L0801B12C
    .align 2, 0
.L0801B038: .4byte gMapRange
.L0801B03C:
    adds r0, r6, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L0801B128
    ldr r0, [r4]
    cmp r0, #0
    beq .L0801B128
    ldr r1, [sp]
    lsls r0, r1, #0x18
    mov r8, r0
    cmp r0, #0
    beq .L0801B064
    adds r0, r4, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801B128
.L0801B064:
    ldr r0, .L0801B0F4 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L0801B086
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    ldr r0, .L0801B0F8 @ =gMapFog
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0801B128
.L0801B086:
    ldr r5, [r4, #0xc]
    movs r0, #0x80
    ands r5, r0
    cmp r5, #0
    bne .L0801B128
    ldr r0, [r4, #4]
    ldrb r2, [r4, #0x1d]
    ldrb r0, [r0, #0x12]
    adds r1, r2, r0
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r4, #0
    bl MapFloodUnitMovement
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    ldr r0, .L0801B0FC @ =gBmMapUnit
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r7, [r0]
    strb r5, [r0]
    adds r0, r4, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    cmp sl, r5
    beq .L0801B0DE
    ldr r0, .L0801B100 @ =gMapOther
    ldr r0, [r0]
    movs r1, #0
    bl MapFill
    cmp r5, #0
    beq .L0801B0DC
    movs r0, #1
    bl func_0801B148
.L0801B0DC:
    mov sl, r5
.L0801B0DE:
    ldr r0, .L0801B104 @ =gMapRange
    ldr r1, [r0]
    ldr r0, .L0801B108 @ =gWorkingMap
    str r1, [r0]
    mov r0, r8
    cmp r0, #0
    beq .L0801B10C
    adds r0, r4, #0
    bl BuildUnitCompleteStaffRange
    b .L0801B112
    .align 2, 0
.L0801B0F4: .4byte gPlaySt
.L0801B0F8: .4byte gMapFog
.L0801B0FC: .4byte gBmMapUnit
.L0801B100: .4byte gMapOther
.L0801B104: .4byte gMapRange
.L0801B108: .4byte gWorkingMap
.L0801B10C:
    adds r0, r4, #0
    bl func_0801A4D4
.L0801B112:
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    ldr r0, .L0801B144 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    strb r7, [r0]
.L0801B128:
    adds r6, #1
    mov r0, sb
.L0801B12C:
    adds r0, #0x80
    cmp r6, r0
    bge .L0801B134
    b .L0801B03C
.L0801B134:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801B144: .4byte gBmMapUnit
    func_end func_0801B008

    thumb_func_start func_0801B148
func_0801B148: @ 0x0801B148
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0x81
.L0801B14E:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L0801B182
    ldr r1, [r2]
    cmp r1, #0
    beq .L0801B182
    ldr r0, [r2, #4]
    ldr r1, [r1, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x13
    ands r1, r0
    cmp r1, #0
    beq .L0801B182
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    movs r2, #0xa
    adds r3, r5, #0
    bl func_0801A3D8
.L0801B182:
    adds r4, #1
    cmp r4, #0xbf
    ble .L0801B14E
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0801B148

    thumb_func_start func_0801B190
func_0801B190: @ 0x0801B190
    ldr r1, .L0801B198 @ =gWorkingMap
    str r0, [r1]
    bx lr
    .align 2, 0
.L0801B198: .4byte gWorkingMap
    func_end func_0801B190

    thumb_func_start func_0801B19C
func_0801B19C: @ 0x0801B19C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r4, r2, #0
    adds r2, r3, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    adds r0, r5, #0
    adds r1, r6, #0
    movs r3, #1
    bl MapAddInRange
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    subs r4, #1
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r5, #0
    adds r1, r6, #0
    adds r2, r4, #0
    bl MapAddInRange
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0801B19C

    thumb_func_start func_0801B1DC
func_0801B1DC: @ 0x0801B1DC
    ldr r0, .L0801B1E0 @ =gWorkingMovTable
    bx lr
    .align 2, 0
.L0801B1E0: .4byte gWorkingMovTable
    func_end func_0801B1DC
