    .include "asm_prelude.inc"

    thumb_func_start func_0800A608
func_0800A608: @ 0x0800A608
    ldr r1, .L0800A614 @ =0x08B90C98
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0800A614: .4byte 0x08B90C98
    func_end func_0800A608

    thumb_func_start LoadUnitWrapper
LoadUnitWrapper: @ 0x0800A618
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r7, r1, #0
    bl UnitInfoRequiresNoMovement
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800A6F8
    movs r0, #6
    ldrb r1, [r5, #3]
    ands r0, r1
    cmp r0, #0
    beq .L0800A662
    movs r6, #0
    ldrb r0, [r5]
    movs r1, #0
    bl func_08017D70
    adds r4, r0, #0
    cmp r4, #0
    beq .L0800A66E
    ldrb r2, [r5, #3]
    lsls r0, r2, #0x1d
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq .L0800A658
    cmp r0, #1
    ble .L0800A65A
    cmp r0, #2
    bne .L0800A65A
    movs r6, #0x80
    b .L0800A65A
.L0800A658:
    movs r6, #0x40
.L0800A65A:
    adds r0, r4, #0
    adds r1, r6, #0
    bl UnitChangeFaction
.L0800A662:
    ldrb r0, [r5]
    bl GetUnitByPid
    adds r4, r0, #0
    cmp r4, #0
    bne .L0800A682
.L0800A66E:
    adds r0, r5, #0
    bl CreateUnit
    adds r4, r0, #0
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #0xf
    orrs r0, r1
    str r0, [r4, #0xc]
    b .L0800A6B4
.L0800A682:
    adds r0, r4, #0
    bl func_08079954
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0800A69E
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080178F4
    ldr r0, [r4, #0xc]
    ldr r1, .L0800A700 @ =0xFFFEFFFF
    ands r0, r1
    str r0, [r4, #0xc]
.L0800A69E:
    adds r0, r4, #0
    bl func_08079A14
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800A6B4
    ldr r0, [r4, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L0800A6F8
.L0800A6B4:
    ldrb r0, [r5, #4]
    strb r0, [r4, #0x10]
    ldrb r0, [r5, #5]
    strb r0, [r4, #0x11]
    ldr r1, .L0800A704 @ =gPlaySt
    movs r0, #0x40
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    beq .L0800A6E8
    ldrb r0, [r1, #0x1b]
    cmp r0, #3
    bne .L0800A6E8
    movs r0, #6
    ldrb r2, [r5, #3]
    ands r0, r2
    cmp r0, #4
    bne .L0800A6E8
    movs r0, #0xe
    ldrsb r0, [r1, r0]
    bl GetChapterInfo
    ldrb r1, [r0, #0x14]
    adds r0, r4, #0
    bl UnitApplyBonusLevels
.L0800A6E8:
    adds r0, r5, #0
    adds r1, r4, #0
    adds r2, r7, #0
    movs r3, #1
    bl func_0800A71C
    bl RefreshEntityMaps
.L0800A6F8:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800A700: .4byte 0xFFFEFFFF
.L0800A704: .4byte gPlaySt
    func_end LoadUnitWrapper

    thumb_func_start FakeLoadUnit
FakeLoadUnit: @ 0x0800A708
    push {lr}
    movs r2, #0
    movs r3, #0
    bl func_0800A71C
    bl RefreshEntityMaps
    pop {r0}
    bx r0
    func_end FakeLoadUnit

    thumb_func_start func_0800A71C
func_0800A71C: @ 0x0800A71C
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    cmp r6, #0
    beq .L0800A796
    cmp r3, #0
    beq .L0800A786
    cmp r7, #0
    beq .L0800A774
    ldr r5, [r6, #0xc]
    movs r0, #0x80
    ands r5, r0
    cmp r5, #0
    bne .L0800A774
    ldrb r1, [r4, #4]
    ldrb r2, [r4, #5]
    adds r0, r6, #0
    movs r3, #0
    bl TryMoveUnit
    bl RefreshUnitSprites
    ldr r0, .L0800A770 @ =0x0000FFFF
    adds r1, r0, #0
    ldrh r2, [r4, #4]
    ands r1, r2
    ldrh r2, [r4, #6]
    ands r0, r2
    cmp r1, r0
    beq .L0800A796
    ldrb r2, [r4, #6]
    ldrb r3, [r4, #7]
    str r5, [sp]
    adds r0, r7, #0
    adds r1, r6, #0
    bl TryMoveUnitDisplayed
    b .L0800A796
    .align 2, 0
.L0800A770: .4byte 0x0000FFFF
.L0800A774:
    ldrb r1, [r4, #6]
    ldrb r2, [r4, #7]
    adds r0, r6, #0
    movs r3, #1
    bl TryMoveUnit
    bl RefreshUnitSprites
    b .L0800A796
.L0800A786:
    ldrb r1, [r4, #6]
    ldrb r2, [r4, #7]
    adds r0, r6, #0
    movs r3, #1
    bl TryMoveUnit
    bl RefreshUnitSprites
.L0800A796:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0800A71C

    thumb_func_start func_0800A7A0
func_0800A7A0: @ 0x0800A7A0
    ldr r0, .L0800A7B4 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L0800A7B8
    movs r0, #0
    b .L0800A7BA
    .align 2, 0
.L0800A7B4: .4byte gpKeySt
.L0800A7B8:
    movs r0, #1
.L0800A7BA:
    bx lr
    func_end func_0800A7A0

    thumb_func_start func_0800A7BC
func_0800A7BC: @ 0x0800A7BC
    ldr r1, .L0800A7C8 @ =0x03000100
    movs r0, #0
    str r0, [r1]
    movs r0, #1
    bx lr
    .align 2, 0
.L0800A7C8: .4byte 0x03000100
    func_end func_0800A7BC

    thumb_func_start func_0800A7CC
func_0800A7CC: @ 0x0800A7CC
    ldr r0, .L0800A7DC @ =0x08B90C9C
    ldr r2, .L0800A7E0 @ =0x03000100
    ldr r1, [r2]
    adds r0, r1, r0
    ldrb r0, [r0]
    adds r1, #1
    str r1, [r2]
    bx lr
    .align 2, 0
.L0800A7DC: .4byte 0x08B90C9C
.L0800A7E0: .4byte 0x03000100
    func_end func_0800A7CC

    thumb_func_start func_0800A7E4
func_0800A7E4: @ 0x0800A7E4
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r6, r0, #0
    movs r4, #0
    ldr r5, [r6, #0x2c]
    b .L0800A906
.L0800A7F0:
    ldrb r0, [r5]
    subs r0, #1
    cmp r0, #0xb
    bls .L0800A7FA
    b .L0800A904
.L0800A7FA:
    lsls r0, r0, #2
    ldr r1, .L0800A804 @ =.L0800A808
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800A804: .4byte .L0800A808
.L0800A808: @ jump table
    .4byte .L0800A900 @ case 0
    .4byte .L0800A8C4 @ case 1
    .4byte .L0800A8D8 @ case 2
    .4byte .L0800A8EC @ case 3
    .4byte .L0800A8AC @ case 4
    .4byte .L0800A898 @ case 5
    .4byte .L0800A8A4 @ case 6
    .4byte .L0800A904 @ case 7
    .4byte .L0800A854 @ case 8
    .4byte .L0800A874 @ case 9
    .4byte .L0800A842 @ case 10
    .4byte .L0800A838 @ case 11
.L0800A838:
    ldr r1, [r5, #4]
    adds r0, r6, #0
    adds r0, #0x48
    strh r1, [r0]
    b .L0800A904
.L0800A842:
    ldr r0, .L0800A850 @ =0x0300010C
    ldr r0, [r0]
    mov r1, sp
    bl func_08014590
    lsls r0, r0, #3
    b .L0800A902
    .align 2, 0
.L0800A850: .4byte 0x0300010C
.L0800A854:
    adds r0, r6, #0
    adds r0, #0x44
    strb r4, [r0]
    ldr r0, .L0800A870 @ =0x03000108
    ldrh r0, [r0]
    bl GetItemIcon
    strh r0, [r6, #0x3e]
    adds r0, r6, #0
    adds r0, #0x42
    ldrb r1, [r0]
    movs r0, #0
    b .L0800A88A
    .align 2, 0
.L0800A870: .4byte 0x03000108
.L0800A874:
    adds r0, r6, #0
    adds r0, #0x44
    strb r4, [r0]
    ldr r0, .L0800A894 @ =0x03000108
    ldrh r0, [r0]
    adds r0, #0x70
    strh r0, [r6, #0x3e]
    adds r0, r6, #0
    adds r0, #0x42
    ldrb r1, [r0]
    movs r0, #1
.L0800A88A:
    bl ApplyIconPalette
    adds r4, #0x10
    b .L0800A904
    .align 2, 0
.L0800A894: .4byte 0x03000108
.L0800A898:
    ldr r0, [r5, #4]
    bl DecodeMsg
    bl GetStringTextLen
    b .L0800A902
.L0800A8A4:
    ldr r0, [r5, #4]
    bl GetStringTextLen
    b .L0800A902
.L0800A8AC:
    ldr r0, .L0800A8C0 @ =0x03000104
    ldr r0, [r0]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8C0: .4byte 0x03000104
.L0800A8C4:
    ldr r0, .L0800A8D4 @ =0x03000108
    ldrh r0, [r0]
    bl GetItemName
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8D4: .4byte 0x03000108
.L0800A8D8:
    ldr r0, .L0800A8E8 @ =0x03000108
    ldrh r0, [r0]
    movs r1, #1
    bl GetItemNameWithArticle
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8E8: .4byte 0x03000108
.L0800A8EC:
    ldr r0, .L0800A8FC @ =0x03000108
    ldrh r0, [r0]
    movs r1, #0
    bl GetItemNameWithArticle
    bl GetStringTextLen
    b .L0800A902
    .align 2, 0
.L0800A8FC: .4byte 0x03000108
.L0800A900:
    ldr r0, [r5, #4]
.L0800A902:
    adds r4, r4, r0
.L0800A904:
    adds r5, #8
.L0800A906:
    ldrb r0, [r5]
    cmp r0, #0
    beq .L0800A90E
    b .L0800A7F0
.L0800A90E:
    adds r0, r4, #0
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0800A7E4

    thumb_func_start func_0800A918
func_0800A918: @ 0x0800A918
    push {r4, r5, lr}
    sub sp, #0x18
    adds r5, r0, #0
    str r1, [sp, #0x10]
    str r2, [sp, #0x14]
    b .L0800AA02
.L0800A924:
    ldrb r0, [r5]
    subs r0, #1
    cmp r0, #0xa
    bhi .L0800AA00
    lsls r0, r0, #2
    ldr r1, .L0800A938 @ =.L0800A93C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800A938: .4byte .L0800A93C
.L0800A93C: @ jump table
    .4byte .L0800A9F8 @ case 0
    .4byte .L0800A9BC @ case 1
    .4byte .L0800A9CC @ case 2
    .4byte .L0800A9DC @ case 3
    .4byte .L0800A9A8 @ case 4
    .4byte .L0800A994 @ case 5
    .4byte .L0800A99E @ case 6
    .4byte .L0800A98A @ case 7
    .4byte .L0800A980 @ case 8
    .4byte .L0800A980 @ case 9
    .4byte .L0800A968 @ case 10
.L0800A968:
    ldr r0, .L0800A97C @ =0x0300010C
    ldr r0, [r0]
    mov r1, sp
    bl func_08014590
    add r0, sp, #0x10
    mov r1, sp
    bl Text_DrawString
    b .L0800AA00
    .align 2, 0
.L0800A97C: .4byte 0x0300010C
.L0800A980:
    add r0, sp, #0x10
    movs r1, #0x10
    bl Text_Skip
    b .L0800AA00
.L0800A98A:
    add r0, sp, #0x10
    ldr r1, [r5, #4]
    bl Text_SetColor
    b .L0800AA00
.L0800A994:
    add r4, sp, #0x10
    ldr r0, [r5, #4]
    bl DecodeMsg
    b .L0800A9E8
.L0800A99E:
    add r0, sp, #0x10
    ldr r1, [r5, #4]
    bl Text_DrawString
    b .L0800AA00
.L0800A9A8:
    add r4, sp, #0x10
    ldr r0, .L0800A9B8 @ =0x03000104
    ldr r0, [r0]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    b .L0800A9E8
    .align 2, 0
.L0800A9B8: .4byte 0x03000104
.L0800A9BC:
    add r4, sp, #0x10
    ldr r0, .L0800A9C8 @ =0x03000108
    ldrh r0, [r0]
    bl GetItemName
    b .L0800A9E8
    .align 2, 0
.L0800A9C8: .4byte 0x03000108
.L0800A9CC:
    add r4, sp, #0x10
    ldr r0, .L0800A9D8 @ =0x03000108
    ldrh r0, [r0]
    movs r1, #1
    b .L0800A9E4
    .align 2, 0
.L0800A9D8: .4byte 0x03000108
.L0800A9DC:
    add r4, sp, #0x10
    ldr r0, .L0800A9F4 @ =0x03000108
    ldrh r0, [r0]
    movs r1, #0
.L0800A9E4:
    bl GetItemNameWithArticle
.L0800A9E8:
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    b .L0800AA00
    .align 2, 0
.L0800A9F4: .4byte 0x03000108
.L0800A9F8:
    add r0, sp, #0x10
    ldr r1, [r5, #4]
    bl Text_Skip
.L0800AA00:
    adds r5, #8
.L0800AA02:
    ldrb r0, [r5]
    cmp r0, #0
    bne .L0800A924
    movs r0, #3
    bl EnableBgSync
    add sp, #0x18
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0800A918

    thumb_func_start func_0800AA18
func_0800AA18: @ 0x0800AA18
    adds r3, r0, #0
    adds r2, r3, #0
    adds r2, #0x34
    movs r0, #0xff
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    adds r1, r3, #0
    adds r1, #0x35
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x3b
    movs r1, #0
    strb r1, [r0]
    ldr r0, .L0800AA48 @ =0x0000FFFF
    strh r0, [r3, #0x3e]
    adds r0, r3, #0
    adds r0, #0x44
    strb r1, [r0]
    adds r0, #4
    strh r1, [r0]
    bx lr
    .align 2, 0
.L0800AA48: .4byte 0x0000FFFF
    func_end func_0800AA18

    thumb_func_start func_0800AA4C
func_0800AA4C: @ 0x0800AA4C
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L0800AAB4 @ =0x06002000
    adds r1, r1, r0
    movs r2, #0x80
    lsls r2, r2, #1
    movs r0, #0
    movs r3, #0
    bl InitTextFont
    bl ClearIcons
    bl LoadUiFrameGraphics
    ldr r3, .L0800AAB8 @ =gDispIo
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
    adds r0, r4, #0
    bl func_0800A7E4
    adds r4, #0x46
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AAB4: .4byte 0x06002000
.L0800AAB8: .4byte gDispIo
    func_end func_0800AA4C

    thumb_func_start func_0800AABC
func_0800AABC: @ 0x0800AABC
    push {lr}
    adds r3, r0, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    beq .L0800AAD4
    movs r0, #0x80
    lsls r0, r0, #1
    movs r1, #0x80
    movs r2, #0x10
    bl StartBgmVolumeChange
.L0800AAD4:
    pop {r0}
    bx r0
    func_end func_0800AABC

    thumb_func_start func_0800AAD8
func_0800AAD8: @ 0x0800AAD8
    push {lr}
    adds r1, r0, #0
    adds r1, #0x48
    ldrh r0, [r1]
    cmp r0, #0
    beq .L0800AAF6
    ldr r0, .L0800AAFC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0800AAF6
    ldrh r0, [r1]
    bl m4aSongNumStart
.L0800AAF6:
    pop {r0}
    bx r0
    .align 2, 0
.L0800AAFC: .4byte gPlaySt
    func_end func_0800AAD8

    thumb_func_start func_0800AB00
func_0800AB00: @ 0x0800AB00
    push {lr}
    adds r3, r0, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    beq .L0800AB18
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x80
    movs r2, #0x10
    bl StartBgmVolumeChange
.L0800AB18:
    pop {r0}
    bx r0
    func_end func_0800AB00

    thumb_func_start func_0800AB1C
func_0800AB1C: @ 0x0800AB1C
    push {r4, lr}
    ldr r4, [r0, #0x2c]
    ldr r1, [r0, #0x30]
    ldr r2, .L0800AB34 @ =0x08B905B8
    adds r0, #0x4a
    ldrh r3, [r0]
    adds r0, r4, #0
    bl PutOamHiRam
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AB34: .4byte 0x08B905B8
    func_end func_0800AB1C

    thumb_func_start func_0800AB38
func_0800AB38: @ 0x0800AB38
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r5, r0, #0
    bl func_0800A7E4
    adds r2, r5, #0
    adds r2, #0x46
    strh r0, [r2]
    lsls r1, r0, #0x10
    lsrs r6, r1, #0x13
    movs r1, #7
    ands r1, r0
    cmp r1, #0
    beq .L0800AB5E
    adds r6, #1
.L0800AB5E:
    lsls r0, r6, #3
    ldrh r2, [r2]
    subs r0, r0, r2
    asrs r0, r0, #1
    mov sb, r0
    adds r2, r5, #0
    adds r2, #0x34
    movs r1, #0
    ldrsb r1, [r2, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0800AB82
    movs r0, #0x1e
    subs r0, r0, r6
    asrs r0, r0, #1
    subs r7, r0, #1
    b .L0800AB86
.L0800AB82:
    movs r7, #0
    ldrsb r7, [r2, r7]
.L0800AB86:
    adds r2, r5, #0
    adds r2, #0x35
    movs r1, #0
    ldrsb r1, [r2, r1]
    movs r0, #1
    rsbs r0, r0, #0
    movs r3, #8
    mov r8, r3
    cmp r1, r0
    beq .L0800AB9E
    adds r2, r1, #0
    mov r8, r2
.L0800AB9E:
    adds r4, r6, #2
    adds r0, r5, #0
    adds r0, #0x36
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    movs r3, #4
    bl func_08049CE4
    movs r0, #0x37
    adds r0, r0, r5
    mov sl, r0
    strb r7, [r0]
    adds r1, r5, #0
    adds r1, #0x38
    str r1, [sp, #0xc]
    mov r2, r8
    strb r2, [r1]
    adds r0, r5, #0
    adds r0, #0x39
    strb r4, [r0]
    adds r1, #2
    movs r0, #3
    strb r0, [r1]
    adds r4, r5, #0
    adds r4, #0x44
    ldrb r0, [r4]
    add r0, sb
    strb r0, [r4]
    add r0, sp, #4
    adds r1, r6, #0
    bl InitText
    adds r0, r5, #0
    adds r0, #0x3b
    ldrb r1, [r0]
    add r0, sp, #4
    bl Text_SetColor
    add r0, sp, #4
    mov r1, sb
    bl Text_SetCursor
    ldr r0, [r5, #0x2c]
    ldr r1, [sp, #4]
    ldr r2, [sp, #8]
    bl func_0800A918
    ldr r6, .L0800AC80 @ =0x0000FFFF
    ldrh r3, [r5, #0x3e]
    cmp r3, r6
    beq .L0800AC16
    ldrh r0, [r5, #0x3e]
    adds r1, r5, #0
    adds r1, #0x40
    ldrh r1, [r1]
    bl PutIconObjImg
.L0800AC16:
    mov r1, r8
    adds r1, #1
    lsls r1, r1, #5
    adds r1, #1
    adds r1, r1, r7
    lsls r1, r1, #1
    ldr r0, .L0800AC84 @ =gBg0Tm
    adds r1, r1, r0
    add r0, sp, #4
    bl PutText
    bl ResetText
    ldrh r0, [r5, #0x3e]
    cmp r0, r6
    beq .L0800AC6E
    ldr r0, .L0800AC88 @ =0x08B90D00
    adds r1, r5, #0
    bl Proc_Start
    mov r2, sl
    ldrb r1, [r2]
    adds r1, #1
    lsls r1, r1, #3
    ldrb r4, [r4]
    adds r1, r4, r1
    str r1, [r0, #0x2c]
    ldr r3, [sp, #0xc]
    ldrb r1, [r3]
    adds r1, #1
    lsls r1, r1, #3
    str r1, [r0, #0x30]
    adds r3, r5, #0
    adds r3, #0x40
    adds r2, r5, #0
    adds r2, #0x42
    movs r1, #0xf
    ldrb r2, [r2]
    ands r1, r2
    lsls r1, r1, #0xc
    ldrh r3, [r3]
    orrs r1, r3
    adds r0, #0x4a
    strh r1, [r0]
.L0800AC6E:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AC80: .4byte 0x0000FFFF
.L0800AC84: .4byte gBg0Tm
.L0800AC88: .4byte 0x08B90D00
    func_end func_0800AB38

    thumb_func_start func_0800AC8C
func_0800AC8C: @ 0x0800AC8C
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x30]
    cmp r0, #0
    bge .L0800ACAC
    ldr r0, .L0800ACA8 @ =gpKeySt
    ldr r0, [r0]
    ldrh r0, [r0, #8]
    cmp r0, #0
    beq .L0800ACBE
    adds r0, r1, #0
    bl Proc_Break
    b .L0800ACBE
    .align 2, 0
.L0800ACA8: .4byte gpKeySt
.L0800ACAC:
    cmp r0, #0
    beq .L0800ACBE
    subs r0, #1
    str r0, [r1, #0x30]
    cmp r0, #0
    bne .L0800ACBE
    adds r0, r1, #0
    bl Proc_Break
.L0800ACBE:
    pop {r0}
    bx r0
    func_end func_0800AC8C

    thumb_func_start func_0800ACC4
func_0800ACC4: @ 0x0800ACC4
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    adds r5, r2, #0
    adds r5, #0x38
    ldrb r1, [r5]
    lsls r0, r1, #5
    adds r7, r2, #0
    adds r7, #0x37
    ldrb r1, [r7]
    adds r0, r1, r0
    lsls r0, r0, #1
    ldr r1, .L0800AD14 @ =gBg0Tm
    adds r0, r0, r1
    adds r6, r2, #0
    adds r6, #0x39
    ldrb r1, [r6]
    adds r4, r2, #0
    adds r4, #0x3a
    ldrb r2, [r4]
    movs r3, #0
    bl TmFillRect_thm
    ldrb r5, [r5]
    lsls r0, r5, #5
    ldrb r7, [r7]
    adds r0, r7, r0
    lsls r0, r0, #1
    ldr r1, .L0800AD18 @ =gBg1Tm
    adds r0, r0, r1
    ldrb r1, [r6]
    ldrb r2, [r4]
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #3
    bl EnableBgSync
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AD14: .4byte gBg0Tm
.L0800AD18: .4byte gBg1Tm
    func_end func_0800ACC4

    thumb_func_start func_0800AD1C
func_0800AD1C: @ 0x0800AD1C
    ldr r1, .L0800AD24 @ =0x03000104
    str r0, [r1]
    bx lr
    .align 2, 0
.L0800AD24: .4byte 0x03000104
    func_end func_0800AD1C

    thumb_func_start func_0800AD28
func_0800AD28: @ 0x0800AD28
    ldr r1, .L0800AD30 @ =0x03000108
    strh r0, [r1]
    bx lr
    .align 2, 0
.L0800AD30: .4byte 0x03000108
    func_end func_0800AD28

    thumb_func_start func_0800AD34
func_0800AD34: @ 0x0800AD34
    ldr r1, .L0800AD3C @ =0x0300010C
    str r0, [r1]
    bx lr
    .align 2, 0
.L0800AD3C: .4byte 0x0300010C
    func_end func_0800AD34

    thumb_func_start func_0800AD40
func_0800AD40: @ 0x0800AD40
    push {r4, r5, lr}
    sub sp, #8
    movs r5, #0x90
    lsls r5, r5, #2
    movs r4, #4
    str r4, [sp]
    str r3, [sp, #4]
    adds r3, r5, #0
    bl func_0800AD5C
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0800AD40

    thumb_func_start func_0800AD5C
func_0800AD5C: @ 0x0800AD5C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    ldr r1, [sp, #0x18]
    cmp r1, #0
    beq .L0800AD78
    ldr r0, .L0800AD74 @ =0x08B90CA0
    bl Proc_StartBlocking
    b .L0800AD80
    .align 2, 0
.L0800AD74: .4byte 0x08B90CA0
.L0800AD78:
    ldr r0, .L0800ADA4 @ =0x08B90CA0
    movs r1, #3
    bl Proc_Start
.L0800AD80:
    adds r1, r0, #0
    str r4, [r1, #0x30]
    str r5, [r1, #0x2c]
    adds r0, r1, #0
    adds r0, #0x36
    strb r6, [r0]
    adds r0, #0xa
    strh r7, [r0]
    ldr r0, [sp, #0x14]
    adds r0, #0x10
    adds r2, r1, #0
    adds r2, #0x42
    strb r0, [r2]
    adds r0, r1, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0800ADA4: .4byte 0x08B90CA0
    func_end func_0800AD5C

    thumb_func_start func_0800ADA8
func_0800ADA8: @ 0x0800ADA8
    push {lr}
    ldr r0, .L0800ADB4 @ =0x08B90CA0
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L0800ADB4: .4byte 0x08B90CA0
    func_end func_0800ADA8

    thumb_func_start func_0800ADB8
func_0800ADB8: @ 0x0800ADB8
    push {lr}
    ldr r0, .L0800ADC8 @ =0x08B90D88
    ldr r1, .L0800ADCC @ =func_0800ADD0
    bl Proc_ForEach
    pop {r0}
    bx r0
    .align 2, 0
.L0800ADC8: .4byte 0x08B90D88
.L0800ADCC: .4byte func_0800ADD0
    func_end func_0800ADB8

    thumb_func_start func_0800ADD0
func_0800ADD0: @ 0x0800ADD0
    push {lr}
    bl EvtCmd_NoSkip
    pop {r0}
    bx r0
    func_end func_0800ADD0

    thumb_func_start Event_FadeOutOfBackgroundTalk
Event_FadeOutOfBackgroundTalk: @ 0x0800ADDC
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0800ADEC @ =0x08B90D08
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L0800ADEC: .4byte 0x08B90D08
    func_end Event_FadeOutOfBackgroundTalk

    thumb_func_start Event_FadeOutOfSkip
Event_FadeOutOfSkip: @ 0x0800ADF0
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0800AE00 @ =0x08B90D68
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L0800AE00: .4byte 0x08B90D68
    func_end Event_FadeOutOfSkip

    thumb_func_start func_0800AE04
func_0800AE04: @ 0x0800AE04
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0800AE14 @ =0x08B90D40
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L0800AE14: .4byte 0x08B90D40
    func_end func_0800AE04

    thumb_func_start func_0800AE18
func_0800AE18: @ 0x0800AE18
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0x14]
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0800AE30
    adds r0, r2, #0
    bl StartMidLockingFadeToBlack
.L0800AE30:
    pop {r0}
    bx r0
    func_end func_0800AE18

    thumb_func_start func_0800AE34
func_0800AE34: @ 0x0800AE34
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0x14]
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0800AE4C
    adds r0, r2, #0
    bl StartMidLockingFadeFromBlack
.L0800AE4C:
    pop {r0}
    bx r0
    func_end func_0800AE34

    thumb_func_start func_0800AE50
func_0800AE50: @ 0x0800AE50
    push {lr}
    bl func_0802E368
    bl UnlockBmDisplay
    bl ReleaseMus
    ldr r0, .L0800AE84 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0800AE88 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    movs r0, #2
    bl EnableBgSync
    bl ClearTalk
    pop {r0}
    bx r0
    .align 2, 0
.L0800AE84: .4byte gBg0Tm
.L0800AE88: .4byte gBg1Tm
    func_end func_0800AE50

    thumb_func_start func_0800AE8C
func_0800AE8C: @ 0x0800AE8C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x14]
    ldr r0, .L0800AEDC @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0800AEE0 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    movs r0, #2
    bl EnableBgSync
    bl ClearTalk
    bl func_0802E368
    adds r1, r5, #0
    adds r1, #0x5e
    movs r0, #4
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0800AEE4
    adds r0, r5, #0
    adds r0, #0x4d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0800AEEA
    movs r0, #0x20
    adds r1, r4, #0
    bl StartLockingFadeFromBlack
    b .L0800AEEA
    .align 2, 0
.L0800AEDC: .4byte gBg0Tm
.L0800AEE0: .4byte gBg1Tm
.L0800AEE4:
    adds r0, r4, #0
    bl StartMidLockingFadeFromBlack
.L0800AEEA:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0800AE8C

    thumb_func_start EventForceSlowTextSpeed
EventForceSlowTextSpeed: @ 0x0800AEF0
    adds r3, r0, #0
    adds r3, #0x68
    movs r1, #0
    ldrsb r1, [r3, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0800AF18
    ldr r2, .L0800AF1C @ =gPlaySt
    adds r2, #0x40
    ldrb r1, [r2]
    lsls r0, r1, #0x19
    lsrs r0, r0, #0x1e
    strb r0, [r3]
    movs r0, #0x61
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #0x20
    orrs r0, r1
    strb r0, [r2]
.L0800AF18:
    bx lr
    .align 2, 0
.L0800AF1C: .4byte gPlaySt
    func_end EventForceSlowTextSpeed

    thumb_func_start func_0800AF20
func_0800AF20: @ 0x0800AF20
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r3, #0x68
    ldrb r4, [r3]
    movs r1, #0
    ldrsb r1, [r3, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0800AF50
    ldr r2, .L0800AF58 @ =gPlaySt
    adds r2, #0x40
    movs r0, #3
    ands r1, r0
    lsls r1, r1, #5
    movs r0, #0x61
    rsbs r0, r0, #0
    ldrb r5, [r2]
    ands r0, r5
    orrs r0, r1
    strb r0, [r2]
    movs r0, #0xff
    orrs r0, r4
    strb r0, [r3]
.L0800AF50:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800AF58: .4byte gPlaySt
    func_end func_0800AF20

    thumb_func_start StartEvent
StartEvent: @ 0x0800AF5C
    push {lr}
    movs r1, #3
    bl StartEventInternal
    pop {r1}
    bx r1
    func_end StartEvent

    thumb_func_start func_0800AF68
func_0800AF68: @ 0x0800AF68
    push {lr}
    bl StartEventInternal
    pop {r1}
    bx r1
    func_end func_0800AF68

    thumb_func_start StartEventInternal
StartEventInternal: @ 0x0800AF74
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r5, r1, #0
    ldr r6, .L0800AF9C @ =0x08B90D88
    adds r0, r6, #0
    bl Proc_Find
    adds r4, r0, #0
    cmp r4, #0
    beq .L0800AFA8
    ldr r2, .L0800AFA0 @ =0x03004170
    ldr r1, .L0800AFA4 @ =0x03004160
    ldrb r3, [r1]
    lsls r0, r3, #2
    adds r0, r0, r2
    str r7, [r0]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    b .L0800B0E8
    .align 2, 0
.L0800AF9C: .4byte 0x08B90D88
.L0800AFA0: .4byte 0x03004170
.L0800AFA4: .4byte 0x03004160
.L0800AFA8:
    ldr r0, .L0800AFC0 @ =0x03004160
    strb r4, [r0]
    ldr r0, .L0800AFC4 @ =0x03004170
    str r4, [r0]
    cmp r5, #7
    bgt .L0800AFC8
    adds r0, r6, #0
    adds r1, r5, #0
    bl Proc_Start
    b .L0800AFD0
    .align 2, 0
.L0800AFC0: .4byte 0x03004160
.L0800AFC4: .4byte 0x03004170
.L0800AFC8:
    adds r0, r6, #0
    adds r1, r5, #0
    bl Proc_StartBlocking
.L0800AFD0:
    adds r4, r0, #0
    str r7, [r4, #0x2c]
    str r7, [r4, #0x30]
    movs r1, #0
    str r1, [r4, #0x34]
    str r1, [r4, #0x38]
    str r1, [r4, #0x40]
    str r1, [r4, #0x3c]
    str r1, [r4, #0x48]
    adds r3, r4, #0
    adds r3, #0x5e
    movs r2, #0
    movs r0, #1
    strh r0, [r3]
    adds r0, r4, #0
    adds r0, #0x50
    strh r1, [r0]
    subs r0, #2
    strb r2, [r0]
    adds r0, #8
    strh r1, [r0]
    adds r2, r4, #0
    adds r2, #0x4c
    movs r0, #0xff
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    adds r1, r4, #0
    adds r1, #0x68
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    ldr r2, .L0800B034 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0xc0
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0xc0
    bne .L0800B038
    adds r0, r2, #0
    adds r0, #0x46
    ldrb r0, [r0]
    cmp r0, #0x10
    bne .L0800B038
    adds r1, r4, #0
    adds r1, #0x4d
    movs r0, #1
    b .L0800B03E
    .align 2, 0
.L0800B034: .4byte gDispIo
.L0800B038:
    adds r1, r4, #0
    adds r1, #0x4d
    movs r0, #0
.L0800B03E:
    strb r0, [r1]
    ldr r0, .L0800B060 @ =gMapOther
    ldr r0, [r0]
    movs r1, #0
    bl MapFill
    ldr r0, [r4, #0x30]
    ldr r0, [r0]
    subs r0, #0x86
    cmp r0, #7
    bhi .L0800B0E8
    lsls r0, r0, #2
    ldr r1, .L0800B064 @ =.L0800B068
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800B060: .4byte gMapOther
.L0800B064: .4byte .L0800B068
.L0800B068: @ jump table
    .4byte .L0800B096 @ case 0
    .4byte .L0800B0A4 @ case 1
    .4byte .L0800B0B2 @ case 2
    .4byte .L0800B0E8 @ case 3
    .4byte .L0800B088 @ case 4
    .4byte .L0800B0C0 @ case 5
    .4byte .L0800B0CE @ case 6
    .4byte .L0800B0DC @ case 7
.L0800B088:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_SilentSkip
    b .L0800B0E8
.L0800B096:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkip
    b .L0800B0E8
.L0800B0A4:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipTalk
    b .L0800B0E8
.L0800B0B2:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipTalkSlow
    b .L0800B0E8
.L0800B0C0:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipUnlessNewGamePlus
    b .L0800B0E8
.L0800B0CE:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipTalkSlowUnlessNewGamePlus
    b .L0800B0E8
.L0800B0DC:
    ldr r0, [r4, #0x30]
    adds r0, #4
    str r0, [r4, #0x30]
    adds r0, r4, #0
    bl EvtCmd_NoSkipSlowUnlessNewGamePlus
.L0800B0E8:
    adds r0, r4, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end StartEventInternal

    thumb_func_start func_0800B0F0
func_0800B0F0: @ 0x0800B0F0
    push {r4, lr}
    adds r4, r0, #0
    bl LockGame
    movs r0, #0
    str r0, [r4, #0x40]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0800B0F0

    thumb_func_start func_0800B104
func_0800B104: @ 0x0800B104
    push {lr}
    bl ReleaseGame
    pop {r0}
    bx r0
    func_end func_0800B104

    thumb_func_start func_0800B110
func_0800B110: @ 0x0800B110
    push {lr}
    adds r0, #0x5e
    movs r1, #0x10
    ldrh r0, [r0]
    ands r1, r0
    cmp r1, #0
    bne .L0800B12C
    movs r0, #0
    bl SetTextFont
    bl InitSystemTextFont
    bl LoadUiFrameGraphics
.L0800B12C:
    pop {r0}
    bx r0
    func_end func_0800B110

    thumb_func_start func_0800B130
func_0800B130: @ 0x0800B130
    push {r4, lr}
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x5e
    ldr r0, .L0800B174 @ =0x0000FFFB
    ldrh r3, [r1]
    ands r0, r3
    strh r0, [r1]
    ldr r3, .L0800B178 @ =0x03004160
    ldrb r0, [r3]
    cmp r0, #0
    beq .L0800B16E
    subs r0, #1
    strb r0, [r3]
    movs r0, #0
    str r0, [r2, #0x40]
    ldr r1, .L0800B17C @ =0x03004170
    ldrb r4, [r3]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r2, #0x2c]
    ldrb r3, [r3]
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r2, #0x30]
    adds r0, r2, #0
    movs r1, #0
    bl Proc_Goto
.L0800B16E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B174: .4byte 0x0000FFFB
.L0800B178: .4byte 0x03004160
.L0800B17C: .4byte 0x03004170
    func_end func_0800B130

    thumb_func_start func_0800B180
func_0800B180: @ 0x0800B180
    push {lr}
    adds r0, #0x5e
    movs r1, #8
    ldrh r0, [r0]
    ands r1, r0
    cmp r1, #0
    beq .L0800B192
    bl func_0802E3B0
.L0800B192:
    pop {r0}
    bx r0
    func_end func_0800B180

    thumb_func_start func_0800B198
func_0800B198: @ 0x0800B198
    push {r4, lr}
    adds r4, r0, #0
    bl func_080143E0
    ldr r0, .L0800B1C0 @ =0x08B90B9C
    bl Proc_EndEach
    adds r4, #0x4c
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0800B1B8
    bl func_0806E144
.L0800B1B8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B1C0: .4byte 0x08B90B9C
    func_end func_0800B198

    thumb_func_start Event_IsSkipAllowed
Event_IsSkipAllowed: @ 0x0800B1C4
    push {lr}
    adds r0, #0x5e
    ldrh r1, [r0]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    bne .L0800B1E8
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L0800B1E8
    bl IsBattleDeamonActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B1E8
    movs r0, #1
    b .L0800B1EA
.L0800B1E8:
    movs r0, #0
.L0800B1EA:
    pop {r1}
    bx r1
    func_end Event_IsSkipAllowed

    thumb_func_start Event_DarkenThenFunc
Event_DarkenThenFunc: @ 0x0800B1F0
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, .L0800B208 @ =0x08B90E28
    bl Proc_StartBlocking
    str r5, [r0, #0x50]
    str r4, [r0, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B208: .4byte 0x08B90E28
    func_end Event_DarkenThenFunc

    thumb_func_start EventDarkenThenFunc_OnInit
EventDarkenThenFunc_OnInit: @ 0x0800B20C
    push {r4, lr}
    adds r4, r0, #0
    bl EventDarkenThenFunc_StartDarken
    adds r4, #0x64
    movs r0, #0x40
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    func_end EventDarkenThenFunc_OnInit

    thumb_func_start EventDarkenThenFunc_OnLoop
EventDarkenThenFunc_OnLoop: @ 0x0800B220
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x50]
    bl EventDarkenThenFunc_StepDarken
    ldr r0, .L0800B248 @ =gDispIo
    adds r0, #0x46
    ldrb r0, [r0]
    cmp r0, #0x10
    bne .L0800B240
    ldr r0, [r4, #0x4c]
    bl _call_via_r5
    adds r0, r4, #0
    bl Proc_Break
.L0800B240:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B248: .4byte gDispIo
    func_end EventDarkenThenFunc_OnLoop

    thumb_func_start EventDarkenThenFunc_StartDarken
EventDarkenThenFunc_StartDarken: @ 0x0800B24C
    push {r4, r5, r6, lr}
    ldr r1, .L0800B2BC @ =gDispIo
    mov ip, r1
    mov r2, ip
    adds r2, #0x34
    movs r3, #0x20
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    adds r2, #1
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    adds r2, #2
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    subs r2, #1
    ldrb r1, [r2]
    orrs r1, r3
    strb r1, [r2]
    mov r4, ip
    adds r4, #0x3c
    movs r1, #0xc0
    ldrb r2, [r4]
    orrs r1, r2
    strb r1, [r4]
    mov r1, ip
    adds r1, #0x44
    movs r5, #0
    strb r5, [r1]
    adds r1, #1
    strb r5, [r1]
    adds r1, #1
    strb r5, [r1]
    ldr r1, .L0800B2C0 @ =0x0000FFE0
    mov r6, ip
    ldrh r6, [r6, #0x3c]
    ands r1, r6
    movs r2, #0x1f
    orrs r1, r2
    mov r2, ip
    strh r1, [r2, #0x3c]
    ldrb r6, [r4]
    orrs r3, r6
    strb r3, [r4]
    adds r2, r0, #0
    adds r2, #0x64
    movs r1, #0x10
    strh r1, [r2]
    adds r0, #0x66
    strh r5, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B2BC: .4byte gDispIo
.L0800B2C0: .4byte 0x0000FFE0
    func_end EventDarkenThenFunc_StartDarken

    thumb_func_start EventDarkenThenFunc_StepDarken
EventDarkenThenFunc_StepDarken: @ 0x0800B2C4
    push {lr}
    adds r2, r0, #0
    ldr r0, .L0800B2DC @ =gDispIo
    adds r3, r0, #0
    adds r3, #0x46
    ldrb r0, [r3]
    cmp r0, #0x10
    bne .L0800B2E0
    adds r0, r2, #0
    bl Proc_End
    b .L0800B304
    .align 2, 0
.L0800B2DC: .4byte gDispIo
.L0800B2E0:
    adds r1, r2, #0
    adds r1, #0x66
    adds r0, r2, #0
    adds r0, #0x64
    ldrh r2, [r1]
    ldrh r0, [r0]
    adds r0, r2, r0
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xff
    ble .L0800B2FE
    movs r0, #0x80
    lsls r0, r0, #1
    strh r0, [r1]
.L0800B2FE:
    ldrh r1, [r1]
    lsrs r0, r1, #4
    strb r0, [r3]
.L0800B304:
    pop {r0}
    bx r0
    func_end EventDarkenThenFunc_StepDarken

    thumb_func_start Event_BeginSkip
Event_BeginSkip: @ 0x0800B308
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x50
    movs r0, #0
    strh r0, [r1]
    ldr r0, [r4, #0x3c]
    cmp r0, #0
    beq .L0800B31E
    bl _call_via_r0
.L0800B31E:
    adds r5, r4, #0
    adds r5, #0x5e
    movs r0, #4
    ldrh r1, [r5]
    orrs r0, r1
    strh r0, [r5]
    bl func_0800A4E8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B372
    bl func_080B5644
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0800B348
    adds r0, r4, #0
    bl func_0800B198
    subs r5, #0x11
    b .L0800B36E
.L0800B348:
    movs r0, #0x20
    ldrh r5, [r5]
    ands r0, r5
    adds r5, r4, #0
    adds r5, #0x4d
    cmp r0, #0
    bne .L0800B36E
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L0800B366
    adds r0, r4, #0
    bl func_0800B198
    b .L0800B36E
.L0800B366:
    ldr r0, .L0800B38C @ =func_0800B198
    adds r1, r4, #0
    bl Event_DarkenThenFunc
.L0800B36E:
    movs r0, #1
    strb r0, [r5]
.L0800B372:
    movs r0, #5
    bl Proc_BlockEachMarked
    ldr r1, [r4, #0x40]
    cmp r1, #0
    beq .L0800B384
    adds r0, r4, #0
    bl _call_via_r1
.L0800B384:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0800B38C: .4byte func_0800B198
    func_end Event_BeginSkip

    thumb_func_start Event_MainLoop
Event_MainLoop: @ 0x0800B390
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r0, .L0800B3D8 @ =0x08B969E4
    bl Proc_Find
    cmp r0, #0
    bne .L0800B494
    bl IsSubtitleHelpActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B494
    bl IsMapFadeActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B494
    adds r0, r4, #0
    bl Event_IsSkipAllowed
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0800B3E0
    ldr r0, .L0800B3DC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0800B3E0
    adds r0, r4, #0
    bl Event_BeginSkip
    b .L0800B494
    .align 2, 0
.L0800B3D8: .4byte 0x08B969E4
.L0800B3DC: .4byte gpKeySt
.L0800B3E0:
    adds r3, r4, #0
    adds r3, #0x50
    ldrh r2, [r3]
    cmp r2, #0
    beq .L0800B43C
    subs r5, r2, #1
    strh r5, [r3]
    adds r0, r4, #0
    adds r0, #0x4e
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0800B494
    ldr r0, .L0800B434 @ =gPlaySt
    adds r0, #0x40
    ldrb r0, [r0]
    lsrs r0, r0, #7
    cmp r0, #0
    bne .L0800B412
    ldr r0, .L0800B438 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L0800B494
.L0800B412:
    lsls r0, r5, #0x10
    cmp r0, #0
    beq .L0800B494
    subs r0, r2, #2
    strh r0, [r3]
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0800B494
    subs r0, r2, #3
    strh r0, [r3]
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0800B494
    subs r0, r2, #4
    strh r0, [r3]
    b .L0800B494
    .align 2, 0
.L0800B434: .4byte gPlaySt
.L0800B438: .4byte gpKeySt
.L0800B43C:
    ldr r1, [r4, #0x40]
    cmp r1, #0
    beq .L0800B44A
    adds r0, r4, #0
    bl _call_via_r1
    b .L0800B494
.L0800B44A:
    adds r6, r4, #0
    adds r6, #0x56
    ldr r7, .L0800B468 @ =gEventCmdTable
    adds r0, r7, #4
    mov r8, r0
.L0800B454:
    ldr r0, [r4, #0x30]
    ldrh r5, [r0]
    ldrh r0, [r6]
    cmp r0, #0
    beq .L0800B46C
    subs r0, #1
    strh r0, [r6]
    movs r2, #0
    b .L0800B47A
    .align 2, 0
.L0800B468: .4byte gEventCmdTable
.L0800B46C:
    lsls r0, r5, #3
    adds r0, r0, r7
    ldr r1, [r0]
    adds r0, r4, #0
    bl _call_via_r1
    adds r2, r0, #0
.L0800B47A:
    cmp r2, #1
    beq .L0800B454
    cmp r2, #3
    beq .L0800B494
    lsls r0, r5, #3
    add r0, r8
    ldr r1, [r0]
    lsls r1, r1, #2
    ldr r0, [r4, #0x30]
    adds r0, r0, r1
    str r0, [r4, #0x30]
    cmp r2, #2
    bne .L0800B454
.L0800B494:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end Event_MainLoop

    thumb_func_start Event_WaitForFaceEnd
Event_WaitForFaceEnd: @ 0x0800B4A0
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x5e
    movs r0, #0x10
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0800B4BC
    bl FaceExists
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0800B4C2
.L0800B4BC:
    adds r0, r4, #0
    bl Proc_Break
.L0800B4C2:
    pop {r4}
    pop {r0}
    bx r0
    func_end Event_WaitForFaceEnd
