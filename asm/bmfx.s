    .include "asm_prelude.inc"

    thumb_func_start func_0801D3DC
func_0801D3DC: @ 0x0801D3DC
    cmp r0, r2
    bne .L0801D3F0
    cmp r1, r3
    bge .L0801D3E8
    movs r0, #3
    b .L0801D402
.L0801D3E8:
    cmp r1, r3
    ble .L0801D3F0
    movs r0, #2
    b .L0801D402
.L0801D3F0:
    cmp r1, r3
    bne .L0801D400
    cmp r0, r2
    blt .L0801D400
    cmp r0, r2
    ble .L0801D400
    movs r0, #1
    b .L0801D402
.L0801D400:
    movs r0, #0
.L0801D402:
    bx lr
    func_end func_0801D3DC

    thumb_func_start func_0801D404
func_0801D404: @ 0x0801D404
    push {lr}
    adds r3, r0, #0
    ldr r0, [r3]
    ldr r1, [r3, #4]
    ldr r2, [r0, #0x28]
    ldr r0, [r1, #0x28]
    orrs r2, r0
    movs r0, #1
    ands r0, r2
    cmp r0, #0
    bne .L0801D422
    adds r0, r3, #0
    bl StartMu
    b .L0801D43C
.L0801D422:
    movs r0, #0x80
    lsls r0, r0, #7
    ands r2, r0
    cmp r2, #0
    bne .L0801D432
    adds r0, r3, #0
    movs r1, #0x61
    b .L0801D436
.L0801D432:
    adds r0, r3, #0
    movs r1, #0x62
.L0801D436:
    movs r2, #0xc
    bl func_0806BA88
.L0801D43C:
    pop {r1}
    bx r1
    func_end func_0801D404

    thumb_func_start func_0801D440
func_0801D440: @ 0x0801D440
    push {r4, r5, lr}
    adds r4, r0, #0
    bl MuExistsActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0801D476
    adds r5, r4, #0
    adds r5, #0x3c
    ldrb r0, [r5]
    cmp r0, #2
    beq .L0801D45E
    ldr r0, [r4, #0x34]
    bl EndMu
.L0801D45E:
    adds r0, r4, #0
    bl Proc_Break
    ldrb r5, [r5]
    cmp r5, #1
    bne .L0801D476
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    bl ForceSyncUnitSpriteSheet
.L0801D476:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0801D440

    thumb_func_start func_0801D47C
func_0801D47C: @ 0x0801D47C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    adds r4, r1, #0
    mov r8, r2
    adds r1, r3, #0
    ldr r0, .L0801D4CC @ =0x08B935EC
    bl Proc_StartBlocking
    adds r7, r0, #0
    str r6, [r7, #0x30]
    str r4, [r7, #0x2c]
    adds r5, r7, #0
    adds r5, #0x38
    movs r0, #0xe
    strb r0, [r5]
    adds r0, r7, #0
    adds r0, #0x39
    strb r4, [r0]
    adds r1, r7, #0
    adds r1, #0x3a
    movs r0, #4
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x3c
    mov r1, r8
    strb r1, [r0]
    adds r0, r6, #0
    bl func_0801D404
    str r0, [r7, #0x34]
    adds r1, r5, #0
    bl SetMuMoveScript
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801D4CC: .4byte 0x08B935EC
    func_end func_0801D47C

    thumb_func_start func_0801D4D0
func_0801D4D0: @ 0x0801D4D0
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r0, .L0801D518 @ =0x08B93604
    movs r1, #3
    bl Proc_Start
    adds r7, r0, #0
    str r6, [r7, #0x30]
    str r4, [r7, #0x2c]
    adds r5, r7, #0
    adds r5, #0x38
    movs r1, #0
    movs r0, #0xe
    strb r0, [r5]
    adds r0, r7, #0
    adds r0, #0x39
    strb r4, [r0]
    adds r2, r7, #0
    adds r2, #0x3a
    movs r0, #4
    strb r0, [r2]
    adds r0, r7, #0
    adds r0, #0x3c
    strb r1, [r0]
    adds r0, r6, #0
    bl func_0801D404
    str r0, [r7, #0x34]
    adds r1, r5, #0
    bl SetMuMoveScript
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801D518: .4byte 0x08B93604
    func_end func_0801D4D0

    thumb_func_start func_0801D51C
func_0801D51C: @ 0x0801D51C
    push {lr}
    adds r0, #0x4c
    movs r1, #0x10
    strh r1, [r0]
    bl InitBmBgLayers
    ldr r2, .L0801D548 @ =0x030028AC
    ldr r0, .L0801D54C @ =0x0000FFE0
    ldrh r1, [r2]
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    ldr r1, .L0801D550 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xc0
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r2]
    pop {r0}
    bx r0
    .align 2, 0
.L0801D548: .4byte 0x030028AC
.L0801D54C: .4byte 0x0000FFE0
.L0801D550: .4byte 0x0000E0FF
    func_end func_0801D51C

    thumb_func_start func_0801D554
func_0801D554: @ 0x0801D554
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r5, r0, #0
    ldr r0, .L0801D5E4 @ =gDispIo
    mov ip, r0
    mov r4, ip
    adds r4, #0x3c
    movs r1, #0x3f
    mov sl, r1
    mov r0, sl
    ldrb r6, [r4]
    ands r0, r6
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r4]
    adds r3, r5, #0
    adds r3, #0x4c
    ldrh r1, [r3]
    movs r0, #0x44
    add r0, ip
    mov sb, r0
    movs r2, #0
    strb r1, [r0]
    movs r0, #0x10
    subs r0, r0, r1
    movs r6, #0x45
    add r6, ip
    mov r8, r6
    strb r0, [r6]
    mov r7, ip
    adds r7, #0x46
    strb r2, [r7]
    subs r1, #1
    movs r6, #0
    strh r1, [r3]
    lsls r1, r1, #0x10
    cmp r1, #0
    bge .L0801D5D6
    adds r0, r5, #0
    bl Proc_Break
    mov r0, sl
    ldrb r1, [r4]
    ands r0, r1
    strb r0, [r4]
    movs r0, #0x10
    mov r1, sb
    strb r0, [r1]
    mov r0, r8
    strb r6, [r0]
    strb r6, [r7]
    movs r0, #2
    movs r1, #0
    bl SetBgChrOffset
    ldr r0, .L0801D5E8 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
.L0801D5D6:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801D5E4: .4byte gDispIo
.L0801D5E8: .4byte gBg2Tm
    func_end func_0801D554

    thumb_func_start func_0801D5EC
func_0801D5EC: @ 0x0801D5EC
    push {r4, lr}
    adds r4, r0, #0
    bl SetAllUnitNotBackSprite
    adds r4, #0x4e
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    beq .L0801D602
    bl UnlockGame
.L0801D602:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0801D5EC

    thumb_func_start StartMapFade
StartMapFade: @ 0x0801D608
    push {r4, lr}
    adds r4, r0, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r0, .L0801D630 @ =0x08B9362C
    movs r1, #3
    bl Proc_Start
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    adds r0, #0x4e
    strh r4, [r0]
    cmp r4, #0
    beq .L0801D628
    bl LockGame
.L0801D628:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801D630: .4byte 0x08B9362C
    func_end StartMapFade

    thumb_func_start DoesBMXFADEExist
DoesBMXFADEExist: @ 0x0801D634
    push {lr}
    ldr r0, .L0801D648 @ =0x08B9362C
    bl Proc_Find
    cmp r0, #0
    beq .L0801D642
    movs r0, #1
.L0801D642:
    pop {r1}
    bx r1
    .align 2, 0
.L0801D648: .4byte 0x08B9362C
    func_end DoesBMXFADEExist

    thumb_func_start func_0801D64C
func_0801D64C: @ 0x0801D64C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r4, .L0801D68C @ =gPlaySt
    ldrh r0, [r4, #0x10]
    cmp r0, #1
    bne .L0801D66A
    movs r0, #1
    bl GetUnit
    adds r1, r0, #0
    ldrb r0, [r1, #0x10]
    strb r0, [r4, #0x12]
    ldrb r0, [r1, #0x11]
    strb r0, [r4, #0x13]
.L0801D66A:
    adds r0, r4, #0
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r0, r0, #0x1b
    cmp r0, #0
    blt .L0801D690
    movs r0, #1
    bl GetUnit
    adds r1, r0, #0
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    str r0, [r5]
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    b .L0801D696
    .align 2, 0
.L0801D68C: .4byte gPlaySt
.L0801D690:
    ldrb r0, [r4, #0x12]
    str r0, [r5]
    ldrb r0, [r4, #0x13]
.L0801D696:
    str r0, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0801D64C

    thumb_func_start func_0801D6A0
func_0801D6A0: @ 0x0801D6A0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r0, .L0801D6B0 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    adds r4, r0, #1
    b .L0801D6F4
    .align 2, 0
.L0801D6B0: .4byte gPlaySt
.L0801D6B4:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L0801D6EE
    ldr r3, [r2]
    cmp r3, #0
    beq .L0801D6EE
    ldr r0, [r2, #0xc]
    ldr r1, .L0801D700 @ =0x00000201
    ands r0, r1
    cmp r0, #0
    bne .L0801D6EE
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    str r0, [r6]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    str r0, [r5]
    ldr r0, [r2, #4]
    ldr r1, [r3, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #8
    ands r1, r0
    cmp r1, #0
    bne .L0801D6FA
.L0801D6EE:
    adds r4, #1
    ldr r0, .L0801D704 @ =gPlaySt
    ldrb r0, [r0, #0xf]
.L0801D6F4:
    adds r0, #0x40
    cmp r4, r0
    blt .L0801D6B4
.L0801D6FA:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801D700: .4byte 0x00000201
.L0801D704: .4byte gPlaySt
    func_end func_0801D6A0

    thumb_func_start func_0801D708
func_0801D708: @ 0x0801D708
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    ldr r4, .L0801D72C @ =gPlaySt
    ldrb r0, [r4, #0xf]
    bl CountFactionMoveableUnits
    cmp r0, #0
    bne .L0801D730
    adds r0, r5, #0
    bl Proc_End
    b .L0801D772
    .align 2, 0
.L0801D72C: .4byte gPlaySt
.L0801D730:
    ldrb r0, [r4, #0xf]
    cmp r0, #0x40
    beq .L0801D750
    cmp r0, #0x40
    bgt .L0801D740
    cmp r0, #0
    beq .L0801D746
    b .L0801D758
.L0801D740:
    cmp r0, #0x80
    beq .L0801D750
    b .L0801D758
.L0801D746:
    add r1, sp, #4
    mov r0, sp
    bl func_0801D64C
    b .L0801D758
.L0801D750:
    add r1, sp, #4
    mov r0, sp
    bl func_0801D6A0
.L0801D758:
    ldr r1, [sp]
    cmp r1, #0
    blt .L0801D772
    ldr r2, [sp, #4]
    cmp r2, #0
    blt .L0801D772
    adds r0, r5, #0
    bl EnsureCameraOntoPosition
    ldr r0, [sp]
    ldr r1, [sp, #4]
    bl SetMapCursorPosition
.L0801D772:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0801D708

    thumb_func_start func_0801D77C
func_0801D77C: @ 0x0801D77C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    bl func_0807FA14
    bl GetUnit
    cmp r0, #0
    beq .L0801D7A6
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    adds r0, r6, #0
    adds r1, r4, #0
    adds r2, r5, #0
    bl EnsureCameraOntoPosition
    adds r0, r4, #0
    adds r1, r5, #0
    bl SetMapCursorPosition
.L0801D7A6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0801D77C

    thumb_func_start func_0801D7AC
func_0801D7AC: @ 0x0801D7AC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L0801D7D8 @ =0x02001F70
    bl func_0802E770
    strb r0, [r5]
    movs r0, #4
    bl ApplyIconPalettes
    bl func_0802E818
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801D7E0
    ldrb r5, [r5]
    cmp r5, #0x63
    bhi .L0801D7E0
    ldr r0, .L0801D7DC @ =0x08B95968
    adds r1, r4, #0
    bl func_0804A254
    b .L0801D7E8
    .align 2, 0
.L0801D7D8: .4byte 0x02001F70
.L0801D7DC: .4byte 0x08B95968
.L0801D7E0:
    ldr r0, .L0801D7F0 @ =0x08B95944
    adds r1, r4, #0
    bl func_0804A254
.L0801D7E8:
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0801D7F0: .4byte 0x08B95944
    func_end func_0801D7AC

    thumb_func_start func_0801D7F4
func_0801D7F4: @ 0x0801D7F4
    push {r4, lr}
    adds r4, r0, #0
    bl func_0803279C
    bl func_0801E2CC
    ldr r0, .L0801D80C @ =gBmSt
    ldrh r0, [r0, #0x2e]
    cmp r0, #0
    beq .L0801D810
    movs r0, #0
    b .L0801D81A
    .align 2, 0
.L0801D80C: .4byte gBmSt
.L0801D810:
    adds r0, r4, #0
    movs r1, #0x63
    bl Proc_Goto
    movs r0, #1
.L0801D81A:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0801D7F4

    thumb_func_start func_0801D820
func_0801D820: @ 0x0801D820
    push {lr}
    adds r1, r0, #0
    movs r0, #0
    bl func_080974EC
    movs r0, #0
    pop {r1}
    bx r1
    func_end func_0801D820

    thumb_func_start func_0801D830
func_0801D830: @ 0x0801D830
    push {lr}
    ldr r0, .L0801D840 @ =gBmSt
    ldrh r0, [r0, #0x2e]
    bl func_0802E790
    pop {r1}
    bx r1
    .align 2, 0
.L0801D840: .4byte gBmSt
    func_end func_0801D830

    thumb_func_start func_0801D844
func_0801D844: @ 0x0801D844
    push {lr}
    ldr r0, .L0801D858 @ =gActionSt
    ldrb r0, [r0, #0xc]
    bl GetUnit
    ldr r1, .L0801D85C @ =gActiveUnit
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L0801D858: .4byte gActionSt
.L0801D85C: .4byte gActiveUnit
    func_end func_0801D844

    thumb_func_start func_0801D860
func_0801D860: @ 0x0801D860
    push {r4, lr}
    adds r4, r0, #0
    bl func_0802E818
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801D89C
    ldr r0, .L0801D884 @ =0x02001F70
    ldrb r0, [r0]
    cmp r0, #0x63
    bhi .L0801D88C
    ldr r0, .L0801D888 @ =gActionSt
    ldrh r1, [r0, #6]
    adds r0, r4, #0
    bl func_0801F2B0
    b .L0801D8A6
    .align 2, 0
.L0801D884: .4byte 0x02001F70
.L0801D888: .4byte gActionSt
.L0801D88C:
    ldr r0, .L0801D898 @ =gActionSt
    ldrh r1, [r0, #6]
    adds r0, r4, #0
    bl func_0801F298
    b .L0801D8A6
    .align 2, 0
.L0801D898: .4byte gActionSt
.L0801D89C:
    ldr r0, .L0801D8AC @ =gActionSt
    ldrh r1, [r0, #6]
    adds r0, r4, #0
    bl func_0801F298
.L0801D8A6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801D8AC: .4byte gActionSt
    func_end func_0801D860

    thumb_func_start HandleGiveUnitItem
HandleGiveUnitItem: @ 0x0801D8B0
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl UnitAddItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0801D942
    ldr r0, .L0801D918 @ =gActiveUnit
    str r4, [r0]
    ldr r0, .L0801D91C @ =gBmSt
    strh r5, [r0, #0x2c]
    adds r0, r4, #0
    bl GetUnitPortraitId
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0
    movs r2, #0xb0
    movs r3, #4
    bl StartFace
    movs r0, #0
    movs r1, #5
    bl SetFaceBlinkControlById
    adds r0, r6, #0
    adds r1, r4, #0
    movs r2, #0xf
    movs r3, #0xa
    bl StartEquipInfoWindow
    bl func_0802E818
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801D924
    bl func_0802E770
    cmp r0, #0x63
    bgt .L0801D924
    ldr r0, .L0801D920 @ =0x00000727
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08032560
    b .L0801D934
    .align 2, 0
.L0801D918: .4byte gActiveUnit
.L0801D91C: .4byte gBmSt
.L0801D920: .4byte 0x00000727
.L0801D924:
    movs r0, #0xe5
    lsls r0, r0, #3
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08032560
.L0801D934:
    movs r0, #2
    bl SetTalkChoiceResult
    ldr r0, .L0801D94C @ =0x08B9369C
    adds r1, r6, #0
    bl Proc_StartBlocking
.L0801D942:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801D94C: .4byte 0x08B9369C
    func_end HandleGiveUnitItem

    thumb_func_start func_0801D950
func_0801D950: @ 0x0801D950
    push {lr}
    bl func_08022204
    pop {r1}
    bx r1
    func_end func_0801D950

    thumb_func_start func_0801D95C
func_0801D95C: @ 0x0801D95C
    push {r4, r5, r6, lr}
    adds r4, r1, #0
    ldr r0, .L0801D998 @ =gBmSt
    ldrh r6, [r0, #0x2c]
    adds r5, r4, #0
    adds r5, #0x34
    adds r0, r5, #0
    movs r1, #2
    bl Text_SetColor
    movs r0, #0x2c
    ldrsh r2, [r4, r0]
    lsls r2, r2, #5
    movs r1, #0x2a
    ldrsh r0, [r4, r1]
    adds r2, r2, r0
    lsls r2, r2, #1
    ldr r0, .L0801D99C @ =gBg0Tm
    adds r2, r2, r0
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_080165DC
    movs r0, #1
    bl EnableBgSync
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801D998: .4byte gBmSt
.L0801D99C: .4byte gBg0Tm
    func_end func_0801D95C

    thumb_func_start func_0801D9A0
func_0801D9A0: @ 0x0801D9A0
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r5, .L0801D9E8 @ =gActiveUnit
    ldr r1, [r5]
    adds r4, #0x3c
    movs r0, #0
    ldrsb r0, [r4, r0]
    lsls r0, r0, #1
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r0, [r1]
    bl func_0802E790
    ldr r3, .L0801D9EC @ =gActionSt
    ldr r0, [r5]
    movs r2, #0
    ldrsb r2, [r4, r2]
    lsls r2, r2, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r1, [r1]
    strh r1, [r3, #6]
    movs r1, #0
    ldrsb r1, [r4, r1]
    bl UnitRemoveItem
    ldr r0, [r5]
    ldr r1, .L0801D9F0 @ =gBmSt
    ldrh r1, [r1, #0x2c]
    bl UnitAddItem
    movs r0, #0x37
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0801D9E8: .4byte gActiveUnit
.L0801D9EC: .4byte gActionSt
.L0801D9F0: .4byte gBmSt
    func_end func_0801D9A0

    thumb_func_start func_0801D9F4
func_0801D9F4: @ 0x0801D9F4
    push {r4, lr}
    ldr r4, .L0801DA0C @ =gBmSt
    ldrh r0, [r4, #0x2c]
    bl func_0802E790
    ldr r1, .L0801DA10 @ =gActionSt
    ldrh r0, [r4, #0x2c]
    strh r0, [r1, #6]
    movs r0, #0x37
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0801DA0C: .4byte gBmSt
.L0801DA10: .4byte gActionSt
    func_end func_0801D9F4

    thumb_func_start func_0801DA14
func_0801DA14: @ 0x0801DA14
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L0801DA68 @ =gActiveUnit
    ldr r2, [r0]
    adds r5, r1, #0
    adds r5, #0x3c
    movs r0, #0
    ldrsb r0, [r5, r0]
    lsls r0, r0, #1
    adds r2, #0x1e
    adds r2, r2, r0
    ldrh r4, [r2]
    ldr r1, .L0801DA6C @ =gActionSt
    strh r4, [r1, #6]
    movs r0, #0
    ldrsb r0, [r5, r0]
    strh r0, [r1, #8]
    movs r1, #1
    rsbs r1, r1, #0
    movs r0, #0
    bl func_08082528
    movs r0, #2
    bl SetTalkChoiceResult
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #0x10
    ands r1, r0
    cmp r1, #0
    beq .L0801DA74
    movs r1, #0
    ldrsb r1, [r5, r1]
    lsls r1, r1, #4
    adds r1, #0x20
    ldr r2, .L0801DA70 @ =0x00000762
    movs r0, #8
    adds r3, r6, #0
    bl StartBoxTalk
    b .L0801DA86
    .align 2, 0
.L0801DA68: .4byte gActiveUnit
.L0801DA6C: .4byte gActionSt
.L0801DA70: .4byte 0x00000762
.L0801DA74:
    movs r1, #0
    ldrsb r1, [r5, r1]
    lsls r1, r1, #4
    adds r1, #0x20
    ldr r2, .L0801DA90 @ =0x00000761
    movs r0, #8
    adds r3, r6, #0
    bl StartBoxTalk
.L0801DA86:
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801DA90: .4byte 0x00000761
    func_end func_0801DA14

    thumb_func_start func_0801DA94
func_0801DA94: @ 0x0801DA94
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r0, .L0801DADC @ =gBmSt
    ldrh r4, [r0, #0x2c]
    ldr r1, .L0801DAE0 @ =gActionSt
    strh r4, [r1, #6]
    movs r0, #5
    strh r0, [r1, #8]
    movs r1, #1
    rsbs r1, r1, #0
    movs r0, #0
    bl func_08082528
    movs r0, #2
    bl SetTalkChoiceResult
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #0x10
    ands r1, r0
    cmp r1, #0
    beq .L0801DAE8
    adds r0, r5, #0
    adds r0, #0x3c
    movs r1, #0
    ldrsb r1, [r0, r1]
    lsls r1, r1, #4
    adds r1, #0x20
    ldr r2, .L0801DAE4 @ =0x00000762
    movs r0, #8
    adds r3, r6, #0
    bl StartBoxTalk
    b .L0801DAFE
    .align 2, 0
.L0801DADC: .4byte gBmSt
.L0801DAE0: .4byte gActionSt
.L0801DAE4: .4byte 0x00000762
.L0801DAE8:
    adds r0, r5, #0
    adds r0, #0x3c
    movs r1, #0
    ldrsb r1, [r0, r1]
    lsls r1, r1, #4
    adds r1, #0x20
    ldr r2, .L0801DB08 @ =0x00000761
    movs r0, #8
    adds r3, r6, #0
    bl StartBoxTalk
.L0801DAFE:
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0801DB08: .4byte 0x00000761
    func_end func_0801DA94

    thumb_func_start func_0801DB0C
func_0801DB0C: @ 0x0801DB0C
    push {r4, lr}
    bl GetTalkChoiceResult
    cmp r0, #1
    beq .L0801DB1A
    movs r0, #0
    b .L0801DB40
.L0801DB1A:
    ldr r0, .L0801DB48 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0
    strh r0, [r1, #8]
    ldr r1, .L0801DB4C @ =gActionSt
    ldrh r0, [r1, #8]
    cmp r0, #4
    bhi .L0801DB3E
    ldr r4, .L0801DB50 @ =gActiveUnit
    ldr r0, [r4]
    ldrh r1, [r1, #8]
    bl UnitRemoveItem
    ldr r0, [r4]
    ldr r1, .L0801DB54 @ =gBmSt
    ldrh r1, [r1, #0x2c]
    bl UnitAddItem
.L0801DB3E:
    movs r0, #0x37
.L0801DB40:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0801DB48: .4byte gpKeySt
.L0801DB4C: .4byte gActionSt
.L0801DB50: .4byte gActiveUnit
.L0801DB54: .4byte gBmSt
    func_end func_0801DB0C

    thumb_func_start SetVisionWithFade
SetVisionWithFade: @ 0x0801DB58
    push {r4, lr}
    adds r4, r0, #0
    cmp r4, #0
    bge .L0801DB6E
    ldr r0, .L0801DB90 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r4, [r0, #0xc]
.L0801DB6E:
    bl RenderMapForFade
    ldr r0, .L0801DB90 @ =gPlaySt
    strb r4, [r0, #0xd]
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    bl RenderMap
    movs r0, #1
    bl StartMapFade
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801DB90: .4byte gPlaySt
    func_end SetVisionWithFade

    thumb_func_start SetVision
SetVision: @ 0x0801DB94
    push {lr}
    adds r1, r0, #0
    cmp r1, #0
    bge .L0801DBAA
    ldr r0, .L0801DBC0 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r1, [r0, #0xc]
.L0801DBAA:
    ldr r0, .L0801DBC0 @ =gPlaySt
    strb r1, [r0, #0xd]
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    bl RenderMap
    pop {r0}
    bx r0
    .align 2, 0
.L0801DBC0: .4byte gPlaySt
    func_end SetVision

    thumb_func_start func_0801DBC4
func_0801DBC4: @ 0x0801DBC4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov sb, r0
    mov r8, r1
    ldr r6, .L0801DC90 @ =gBmMapMovement
    ldr r0, [r6]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L0801DC94 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, [r6]
    bl func_0801B190
    mov r0, r8
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    mov r0, sb
    bl GetUnitMagRange
    adds r3, r0, #0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #1
    bl func_0801B19C
    ldr r0, .L0801DC98 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    bne .L0801DCA8
    ldr r0, .L0801DC9C @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r3, r0, #1
    adds r2, r6, #0
    cmp r3, #0
    bge .L0801DC24
    b .L0801DD2C
.L0801DC24:
    ldr r0, .L0801DC9C @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r7, r3, #1
    cmp r4, #0
    blt .L0801DC86
    ldr r6, .L0801DC90 @ =gBmMapMovement
    lsls r5, r3, #2
.L0801DC36:
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801DC80
    ldr r0, .L0801DCA0 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    mov r0, r8
    bl CanUnitCrossTerrain
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801DC6E
    ldr r0, .L0801DCA4 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    ldr r2, .L0801DC90 @ =gBmMapMovement
    cmp r0, #0
    beq .L0801DC80
.L0801DC6E:
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    movs r2, #1
    rsbs r2, r2, #0
    adds r1, r2, #0
    strb r1, [r0]
    ldr r2, .L0801DC90 @ =gBmMapMovement
.L0801DC80:
    subs r4, #1
    cmp r4, #0
    bge .L0801DC36
.L0801DC86:
    adds r3, r7, #0
    cmp r3, #0
    bge .L0801DC24
    b .L0801DD2C
    .align 2, 0
.L0801DC90: .4byte gBmMapMovement
.L0801DC94: .4byte gBmMapRange
.L0801DC98: .4byte gPlaySt
.L0801DC9C: .4byte gBmMapSize
.L0801DCA0: .4byte gBmMapTerrain
.L0801DCA4: .4byte gBmMapUnit
.L0801DCA8:
    ldr r0, .L0801DD58 @ =gBmMapSize
    movs r3, #2
    ldrsh r0, [r0, r3]
    subs r3, r0, #1
    adds r2, r6, #0
    cmp r3, #0
    blt .L0801DD2C
.L0801DCB6:
    ldr r0, .L0801DD58 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r7, r3, #1
    cmp r4, #0
    blt .L0801DD26
    lsls r5, r3, #2
.L0801DCC6:
    ldr r0, [r2]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0801DD20
    ldr r0, .L0801DD5C @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    mov r0, r8
    bl CanUnitCrossTerrain
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801DD0E
    ldr r0, .L0801DD60 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801DD0E
    ldr r0, .L0801DD64 @ =gMapFog
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    ldr r2, .L0801DD68 @ =gBmMapMovement
    cmp r0, #0
    bne .L0801DD20
.L0801DD0E:
    ldr r2, .L0801DD68 @ =gBmMapMovement
    ldr r0, [r2]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    movs r3, #1
    rsbs r3, r3, #0
    adds r1, r3, #0
    strb r1, [r0]
.L0801DD20:
    subs r4, #1
    cmp r4, #0
    bge .L0801DCC6
.L0801DD26:
    adds r3, r7, #0
    cmp r3, #0
    bge .L0801DCB6
.L0801DD2C:
    mov r1, sb
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    ldr r1, [r2]
    lsls r0, r0, #2
    adds r0, r0, r1
    mov r2, sb
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r3, #1
    rsbs r3, r3, #0
    adds r1, r3, #0
    strb r1, [r0]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801DD58: .4byte gBmMapSize
.L0801DD5C: .4byte gBmMapTerrain
.L0801DD60: .4byte gBmMapUnit
.L0801DD64: .4byte gMapFog
.L0801DD68: .4byte gBmMapMovement
    func_end func_0801DBC4

    thumb_func_start func_0801DD6C
func_0801DD6C: @ 0x0801DD6C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r0, #0x64
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801DD7E
    b .L0801DEEA
.L0801DD7E:
    adds r0, r4, #0
    adds r0, #0x33
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bge .L0801DD8E
    b .L0801DEEA
.L0801DD8E:
    ldr r6, .L0801DEF4 @ =0x0203A3F0
    movs r0, #0x5a
    adds r0, r0, r6
    mov r8, r0
    ldr r5, .L0801DEF8 @ =0x0203A470
    adds r7, r5, #0
    adds r7, #0x5a
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r3, #0
    ldrsh r0, [r7, r3]
    cmp r1, r0
    ble .L0801DDC2
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x2d
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #3
    lsls r1, r1, #3
    movs r2, #0
    bl PutSysArrow
.L0801DDC2:
    mov r0, r8
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r3, #0
    ldrsh r0, [r7, r3]
    cmp r1, r0
    bge .L0801DDEA
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x2d
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #3
    lsls r1, r1, #3
    movs r2, #1
    bl PutSysArrow
.L0801DDEA:
    adds r7, r6, #0
    adds r7, #0x60
    movs r0, #0x60
    adds r0, r0, r5
    mov r8, r0
    movs r2, #0
    ldrsh r1, [r7, r2]
    movs r3, #0
    ldrsh r0, [r0, r3]
    cmp r1, r0
    ble .L0801DE1A
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x2d
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #5
    lsls r1, r1, #3
    movs r2, #0
    bl PutSysArrow
.L0801DE1A:
    movs r0, #0
    ldrsh r1, [r7, r0]
    mov r2, r8
    movs r3, #0
    ldrsh r0, [r2, r3]
    cmp r1, r0
    bge .L0801DE42
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x2d
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #5
    lsls r1, r1, #3
    movs r2, #1
    bl PutSysArrow
.L0801DE42:
    adds r7, r6, #0
    adds r7, #0x66
    movs r0, #0x66
    adds r0, r0, r5
    mov r8, r0
    movs r2, #0
    ldrsh r1, [r7, r2]
    movs r3, #0
    ldrsh r0, [r0, r3]
    cmp r1, r0
    ble .L0801DE72
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x63
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #3
    lsls r1, r1, #3
    movs r2, #0
    bl PutSysArrow
.L0801DE72:
    movs r0, #0
    ldrsh r1, [r7, r0]
    mov r2, r8
    movs r3, #0
    ldrsh r0, [r2, r3]
    cmp r1, r0
    bge .L0801DE9A
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x63
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #3
    lsls r1, r1, #3
    movs r2, #1
    bl PutSysArrow
.L0801DE9A:
    adds r6, #0x62
    adds r5, #0x62
    movs r0, #0
    ldrsh r1, [r6, r0]
    movs r2, #0
    ldrsh r0, [r5, r2]
    cmp r1, r0
    ble .L0801DEC4
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x63
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #5
    lsls r1, r1, #3
    movs r2, #0
    bl PutSysArrow
.L0801DEC4:
    movs r3, #0
    ldrsh r1, [r6, r3]
    movs r2, #0
    ldrsh r0, [r5, r2]
    cmp r1, r0
    bge .L0801DEEA
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #0x63
    adds r1, r4, #0
    adds r1, #0x31
    ldrb r1, [r1]
    adds r1, #5
    lsls r1, r1, #3
    movs r2, #1
    bl PutSysArrow
.L0801DEEA:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801DEF4: .4byte 0x0203A3F0
.L0801DEF8: .4byte 0x0203A470
    func_end func_0801DD6C

    thumb_func_start StartEquipInfoWindow
StartEquipInfoWindow: @ 0x0801DEFC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    mov r8, r3
    ldr r4, .L0801DFB4 @ =0x08B936EC
    adds r0, r4, #0
    bl Proc_Find
    cmp r0, #0
    bne .L0801DFAA
    adds r0, r4, #0
    adds r1, r5, #0
    bl Proc_Start
    adds r4, r0, #0
    str r6, [r4, #0x2c]
    adds r0, #0x30
    strb r7, [r0]
    adds r0, #1
    mov r1, r8
    strb r1, [r0]
    adds r5, r4, #0
    adds r5, #0x32
    movs r0, #3
    strb r0, [r5]
    adds r0, r6, #0
    bl GetUnitEquippedWeaponSlot
    adds r1, r4, #0
    adds r1, #0x33
    strb r0, [r1]
    adds r1, #0x31
    movs r0, #1
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x34
    movs r1, #0xc
    bl InitTextDb
    adds r0, r4, #0
    adds r0, #0x3c
    movs r1, #0xc
    bl InitTextDb
    adds r0, r4, #0
    adds r0, #0x44
    movs r1, #0xc
    bl InitTextDb
    ldrb r1, [r5]
    movs r0, #1
    bl ApplyIconPalette
    ldr r0, [r4, #0x2c]
    movs r1, #1
    rsbs r1, r1, #0
    bl BattleGenerateDisplayStats
    ldr r3, .L0801DFB8 @ =0x0203A470
    ldr r2, .L0801DFBC @ =0x0203A3F0
    adds r0, r2, #0
    adds r0, #0x5a
    ldrh r0, [r0]
    adds r1, r3, #0
    adds r1, #0x5a
    strh r0, [r1]
    adds r0, r2, #0
    adds r0, #0x60
    ldrh r1, [r0]
    adds r0, r3, #0
    adds r0, #0x60
    strh r1, [r0]
    adds r0, r2, #0
    adds r0, #0x66
    ldrh r0, [r0]
    adds r1, r3, #0
    adds r1, #0x66
    strh r0, [r1]
    adds r0, r2, #0
    adds r0, #0x62
    ldrh r1, [r0]
    adds r0, r3, #0
    adds r0, #0x62
    strh r1, [r0]
.L0801DFAA:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801DFB4: .4byte 0x08B936EC
.L0801DFB8: .4byte 0x0203A470
.L0801DFBC: .4byte 0x0203A3F0
    func_end StartEquipInfoWindow

    thumb_func_start func_0801DFC0
func_0801DFC0: @ 0x0801DFC0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r5, r0, #0
    ldr r0, .L0801E03C @ =0x08B936EC
    bl Proc_Find
    adds r7, r0, #0
    movs r0, #0
    bl GetBgTilemap
    adds r4, r7, #0
    adds r4, #0x30
    ldrb r2, [r4]
    lsls r1, r2, #1
    adds r0, r0, r1
    movs r3, #0x31
    adds r3, r3, r7
    mov r8, r3
    ldrb r2, [r3]
    lsls r1, r2, #6
    adds r0, r0, r1
    str r0, [sp, #4]
    adds r6, r7, #0
    adds r6, #0x34
    ldr r3, [r7, #0x2c]
    mov sb, r3
    adds r0, r7, #0
    adds r0, #0x32
    ldrb r0, [r0]
    str r0, [sp, #8]
    adds r0, r6, #0
    bl ClearText
    adds r0, r7, #0
    adds r0, #0x3c
    bl ClearText
    adds r0, r7, #0
    adds r0, #0x44
    bl ClearText
    ldrb r0, [r4]
    mov r2, r8
    ldrb r1, [r2]
    movs r2, #0
    str r2, [sp]
    movs r2, #0xe
    movs r3, #8
    bl DrawUiFrame2
    cmp r5, #0
    blt .L0801E058
    cmp r5, #4
    ble .L0801E040
    cmp r5, #5
    beq .L0801E04C
    b .L0801E058
    .align 2, 0
.L0801E03C: .4byte 0x08B936EC
.L0801E040:
    lsls r1, r5, #1
    mov r0, sb
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    b .L0801E05C
.L0801E04C:
    ldr r0, .L0801E054 @ =gBmSt
    ldrh r4, [r0, #0x2c]
    b .L0801E05C
    .align 2, 0
.L0801E054: .4byte gBmSt
.L0801E058:
    adds r4, r5, #0
    movs r5, #8
.L0801E05C:
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #9
    beq .L0801E078
    cmp r0, #9
    bgt .L0801E070
    cmp r0, #4
    beq .L0801E078
    b .L0801E11C
.L0801E070:
    cmp r0, #0xc
    bgt .L0801E11C
    cmp r0, #0xb
    blt .L0801E11C
.L0801E078:
    adds r0, r4, #0
    bl func_08017244
    bl DecodeMsg
    adds r4, r0, #0
    movs r5, #0
    ldr r7, [sp, #4]
    adds r7, #0x42
    movs r3, #8
    adds r3, r3, r6
    mov r8, r3
    ldr r0, [sp, #4]
    adds r0, #0xc2
    mov sb, r0
    movs r1, #0x10
    adds r1, r1, r6
    mov sl, r1
    b .L0801E0A2
.L0801E09E:
    adds r4, #1
    adds r5, #1
.L0801E0A2:
    lsls r0, r5, #3
    adds r0, r6, r0
    movs r1, #0
    movs r2, #0
    adds r3, r4, #0
    bl Text_InsertDrawString
    adds r0, r4, #0
    bl GetStringLineEnd
    adds r4, r0, #0
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0801E09E
    ldr r3, .L0801E114 @ =0x0203A3F0
    ldr r2, .L0801E118 @ =0x0203A470
    adds r0, r2, #0
    adds r0, #0x5a
    ldrh r0, [r0]
    adds r1, r3, #0
    adds r1, #0x5a
    strh r0, [r1]
    adds r0, r2, #0
    adds r0, #0x60
    ldrh r1, [r0]
    adds r0, r3, #0
    adds r0, #0x60
    strh r1, [r0]
    adds r0, r2, #0
    adds r0, #0x66
    ldrh r0, [r0]
    adds r1, r3, #0
    adds r1, #0x66
    strh r0, [r1]
    adds r0, r2, #0
    adds r0, #0x62
    ldrh r1, [r0]
    adds r0, r3, #0
    adds r0, #0x62
    strh r1, [r0]
    adds r0, r6, #0
    adds r1, r7, #0
    bl PutText
    mov r0, r8
    mov r1, sb
    bl PutText
    ldr r2, [sp, #4]
    movs r3, #0xa1
    lsls r3, r3, #1
    adds r1, r2, r3
    mov r0, sl
    bl PutText
    b .L0801E294
    .align 2, 0
.L0801E114: .4byte 0x0203A3F0
.L0801E118: .4byte 0x0203A470
.L0801E11C:
    lsls r1, r5, #0x18
    asrs r1, r1, #0x18
    mov r0, sb
    bl BattleGenerateDisplayStats
    cmp r5, #8
    bne .L0801E15E
    ldr r3, .L0801E2AC @ =0x0203A470
    ldr r2, .L0801E2B0 @ =0x0203A3F0
    adds r0, r2, #0
    adds r0, #0x5a
    ldrh r0, [r0]
    adds r1, r3, #0
    adds r1, #0x5a
    strh r0, [r1]
    adds r0, r2, #0
    adds r0, #0x60
    ldrh r1, [r0]
    adds r0, r3, #0
    adds r0, #0x60
    strh r1, [r0]
    adds r0, r2, #0
    adds r0, #0x66
    ldrh r0, [r0]
    adds r1, r3, #0
    adds r1, #0x66
    strh r0, [r1]
    adds r0, r2, #0
    adds r0, #0x62
    ldrh r1, [r0]
    adds r0, r3, #0
    adds r0, #0x62
    strh r1, [r0]
.L0801E15E:
    ldr r0, .L0801E2B0 @ =0x0203A3F0
    mov r8, r0
    movs r1, #0x48
    add r1, r8
    mov sl, r1
    ldrh r1, [r1]
    mov r0, sb
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    movs r2, #1
    mov sb, r2
    cmp r0, #0
    beq .L0801E17E
    movs r3, #2
    mov sb, r3
.L0801E17E:
    ldr r0, .L0801E2B4 @ =0x00001101
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r6, #0
    movs r1, #0x20
    movs r2, #0
    bl Text_InsertDrawString
    adds r5, r6, #0
    adds r5, #8
    ldr r0, .L0801E2B8 @ =0x00001103
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r5, #0
    movs r1, #2
    movs r2, #0
    bl Text_InsertDrawString
    adds r4, r6, #0
    adds r4, #0x10
    ldr r0, .L0801E2BC @ =0x00001104
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L0801E2C0 @ =0x0000110D
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r5, #0
    movs r1, #0x2c
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L0801E2C4 @ =0x00001105
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x2c
    movs r2, #0
    bl Text_InsertDrawString
    mov r0, r8
    adds r0, #0x5a
    movs r1, #0
    ldrsh r3, [r0, r1]
    adds r0, r5, #0
    movs r1, #0x1e
    mov r2, sb
    bl Text_InsertDrawNumberOrBlank
    mov r0, r8
    adds r0, #0x60
    movs r2, #0
    ldrsh r3, [r0, r2]
    adds r0, r4, #0
    movs r1, #0x1e
    mov r2, sb
    bl Text_InsertDrawNumberOrBlank
    mov r0, r8
    adds r0, #0x66
    movs r1, #0
    ldrsh r3, [r0, r1]
    adds r0, r5, #0
    movs r1, #0x54
    mov r2, sb
    bl Text_InsertDrawNumberOrBlank
    mov r0, r8
    adds r0, #0x62
    movs r2, #0
    ldrsh r3, [r0, r2]
    adds r0, r4, #0
    movs r1, #0x54
    mov r2, sb
    bl Text_InsertDrawNumberOrBlank
    adds r0, r7, #0
    adds r0, #0x34
    adds r6, r7, #0
    adds r6, #0x31
    ldrb r1, [r6]
    adds r1, #1
    lsls r1, r1, #5
    adds r1, #1
    adds r5, r7, #0
    adds r5, #0x30
    ldrb r3, [r5]
    adds r1, r3, r1
    lsls r1, r1, #1
    ldr r4, .L0801E2C8 @ =gBg0Tm
    adds r1, r1, r4
    bl PutText
    adds r0, r7, #0
    adds r0, #0x3c
    ldrb r1, [r6]
    adds r1, #3
    lsls r1, r1, #5
    adds r1, #1
    ldrb r2, [r5]
    adds r1, r2, r1
    lsls r1, r1, #1
    adds r1, r1, r4
    bl PutText
    adds r0, r7, #0
    adds r0, #0x44
    ldrb r1, [r6]
    adds r1, #5
    lsls r1, r1, #5
    adds r1, #1
    ldrb r5, [r5]
    adds r1, r5, r1
    lsls r1, r1, #1
    adds r1, r1, r4
    bl PutText
    ldr r4, [sp, #4]
    adds r4, #0x4e
    mov r3, sl
    ldrh r0, [r3]
    bl GetItemType
    adds r1, r0, #0
    adds r1, #0x70
    ldr r0, [sp, #8]
    lsls r2, r0, #0xc
    adds r0, r4, #0
    bl PutIcon
.L0801E294:
    movs r0, #1
    bl EnableBgSync
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E2AC: .4byte 0x0203A470
.L0801E2B0: .4byte 0x0203A3F0
.L0801E2B4: .4byte 0x00001101
.L0801E2B8: .4byte 0x00001103
.L0801E2BC: .4byte 0x00001104
.L0801E2C0: .4byte 0x0000110D
.L0801E2C4: .4byte 0x00001105
.L0801E2C8: .4byte gBg0Tm
    func_end func_0801DFC0

    thumb_func_start func_0801E2CC
func_0801E2CC: @ 0x0801E2CC
    push {lr}
    ldr r0, .L0801E2D8 @ =0x08B936EC
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L0801E2D8: .4byte 0x08B936EC
    func_end func_0801E2CC

    thumb_func_start func_0801E2DC
func_0801E2DC: @ 0x0801E2DC
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, [r4, #0x2c]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    lsls r0, r0, #4
    movs r2, #0
    mov r8, r2
    strh r0, [r4, #0x30]
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    lsls r0, r0, #4
    strh r0, [r4, #0x32]
    movs r3, #0x34
    ldrsh r2, [r4, r3]
    movs r1, #0x30
    ldrsh r0, [r4, r1]
    subs r2, r2, r0
    movs r3, #0x36
    ldrsh r1, [r4, r3]
    movs r3, #0x32
    ldrsh r0, [r4, r3]
    subs r1, r1, r0
    adds r0, r2, #0
    muls r0, r2, r0
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r0, r0, r1
    bl Sqrt
    adds r5, r0, #0
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    movs r1, #0x80
    lsls r1, r1, #5
    movs r2, #0x80
    lsls r2, r2, #0xa
    movs r6, #0x80
    lsls r6, r6, #2
    str r6, [sp]
    movs r0, #0
    adds r3, r5, #0
    bl Interpolate
    str r0, [r4, #0x44]
    str r6, [sp]
    movs r0, #0
    movs r1, #0xc
    movs r2, #0x30
    adds r3, r5, #0
    bl Interpolate
    strh r0, [r4, #0x3e]
    mov r3, r8
    strh r3, [r4, #0x3c]
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0801E2DC

    thumb_func_start func_0801E360
func_0801E360: @ 0x0801E360
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r7, r0, #0
    movs r2, #0x80
    lsls r2, r2, #9
    movs r0, #0x3c
    ldrsh r3, [r7, r0]
    movs r1, #0x3e
    ldrsh r0, [r7, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    str r0, [sp, #4]
    movs r2, #0x34
    ldrsh r6, [r7, r2]
    movs r1, #0x30
    ldrsh r0, [r7, r1]
    mov sb, r0
    subs r6, r6, r0
    movs r0, #0x36
    ldrsh r2, [r7, r0]
    mov r8, r2
    movs r2, #0x32
    ldrsh r1, [r7, r2]
    str r1, [sp, #8]
    mov r0, r8
    subs r0, r0, r1
    mov r8, r0
    ldr r2, .L0801E450 @ =0x080C5A48
    ldr r1, [sp, #4]
    asrs r0, r1, #9
    movs r1, #0xff
    ands r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    movs r2, #0
    ldrsh r4, [r0, r2]
    adds r0, r6, #0
    muls r0, r4, r0
    ldr r5, [r7, #0x44]
    adds r1, r5, #0
    bl __divsi3
    mov sl, r0
    mov r0, r8
    muls r0, r4, r0
    adds r1, r5, #0
    bl __divsi3
    ldr r2, [sp, #4]
    adds r1, r6, #0
    muls r1, r2, r1
    asrs r1, r1, #0x10
    adds r5, r1, r0
    mov r0, r8
    muls r0, r2, r0
    asrs r0, r0, #0x10
    mov r1, sl
    subs r4, r0, r1
    add sb, r5
    ldr r1, .L0801E454 @ =gBmSt
    movs r2, #0xc
    ldrsh r0, [r1, r2]
    mov r2, sb
    subs r5, r2, r0
    ldr r0, [sp, #8]
    adds r4, r4, r0
    movs r2, #0xe
    ldrsh r0, [r1, r2]
    subs r4, r4, r0
    adds r1, r5, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L0801E42A
    adds r0, r4, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L0801E42A
    adds r2, r4, #0
    subs r2, #0xc
    ldr r3, .L0801E458 @ =0x08B905B8
    movs r0, #6
    str r0, [sp]
    movs r0, #4
    adds r1, r5, #0
    bl PutSprite
    ldr r3, [r7, #0x2c]
    movs r0, #4
    adds r1, r5, #0
    adds r2, r4, #0
    bl func_080260B4
.L0801E42A:
    ldrh r0, [r7, #0x3c]
    adds r0, #1
    strh r0, [r7, #0x3c]
    lsls r0, r0, #0x10
    ldrh r2, [r7, #0x3e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0801E440
    adds r0, r7, #0
    bl Proc_Break
.L0801E440:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E450: .4byte gSinLut
.L0801E454: .4byte gBmSt
.L0801E458: .4byte 0x08B905B8
    func_end func_0801E360

    thumb_func_start func_0801E45C
func_0801E45C: @ 0x0801E45C
    adds r1, r0, #0
    ldr r2, [r1, #0x2c]
    movs r3, #0x34
    ldrsh r0, [r1, r3]
    cmp r0, #0
    bge .L0801E46A
    adds r0, #0xf
.L0801E46A:
    asrs r0, r0, #4
    strb r0, [r2, #0x10]
    ldr r2, [r1, #0x2c]
    movs r3, #0x36
    ldrsh r0, [r1, r3]
    cmp r0, #0
    bge .L0801E47A
    adds r0, #0xf
.L0801E47A:
    asrs r0, r0, #4
    strb r0, [r2, #0x11]
    bx lr
    func_end func_0801E45C

    thumb_func_start func_0801E480
func_0801E480: @ 0x0801E480
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    mov r8, r1
    adds r4, r2, #0
    adds r5, r3, #0
    ldr r0, .L0801E4B4 @ =0x08B93704
    adds r1, r6, #0
    bl Proc_Start
    mov r1, r8
    str r1, [r0, #0x2c]
    lsls r4, r4, #4
    strh r4, [r0, #0x34]
    lsls r5, r5, #4
    strh r5, [r0, #0x36]
    mov r0, r8
    bl HideUnitSprite
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E4B4: .4byte 0x08B93704
    func_end func_0801E480

    thumb_func_start func_0801E4B8
func_0801E4B8: @ 0x0801E4B8
    push {lr}
    ldr r0, .L0801E4C8 @ =0x08B93704
    bl Proc_Find
    cmp r0, #0
    bne .L0801E4CC
    movs r0, #0
    b .L0801E4CE
    .align 2, 0
.L0801E4C8: .4byte 0x08B93704
.L0801E4CC:
    movs r0, #1
.L0801E4CE:
    pop {r1}
    bx r1
    func_end func_0801E4B8

    thumb_func_start func_0801E4D4
func_0801E4D4: @ 0x0801E4D4
    push {lr}
    ldr r1, .L0801E504 @ =0x04000050
    ldr r2, .L0801E508 @ =0x00003C42
    adds r0, r2, #0
    strh r0, [r1]
    ldr r2, .L0801E50C @ =0x04000052
    ldr r1, .L0801E510 @ =gBmSt
    adds r0, r1, #0
    adds r0, #0x3a
    ldrb r0, [r0]
    strb r0, [r2]
    adds r2, #1
    adds r1, #0x3b
    ldrb r0, [r1]
    strb r0, [r2]
    movs r0, #0x48
    bl SetNextVCount
    ldr r0, .L0801E514 @ =func_0801E518
    bl SetOnVMatch
    pop {r0}
    bx r0
    .align 2, 0
.L0801E504: .4byte 0x04000050
.L0801E508: .4byte 0x00003C42
.L0801E50C: .4byte 0x04000052
.L0801E510: .4byte gBmSt
.L0801E514: .4byte func_0801E518
    func_end func_0801E4D4

    thumb_func_start func_0801E518
func_0801E518: @ 0x0801E518
    push {lr}
    ldr r1, .L0801E548 @ =0x04000050
    ldr r2, .L0801E54C @ =0x00003E41
    adds r0, r2, #0
    strh r0, [r1]
    ldr r2, .L0801E550 @ =0x04000052
    ldr r1, .L0801E554 @ =gBmSt
    adds r0, r1, #0
    adds r0, #0x38
    ldrb r0, [r0]
    strb r0, [r2]
    adds r2, #1
    adds r1, #0x39
    ldrb r0, [r1]
    strb r0, [r2]
    movs r0, #0x60
    bl SetNextVCount
    ldr r0, .L0801E558 @ =func_0801E55C
    bl SetOnVMatch
    pop {r0}
    bx r0
    .align 2, 0
.L0801E548: .4byte 0x04000050
.L0801E54C: .4byte 0x00003E41
.L0801E550: .4byte 0x04000052
.L0801E554: .4byte gBmSt
.L0801E558: .4byte func_0801E55C
    func_end func_0801E518

    thumb_func_start func_0801E55C
func_0801E55C: @ 0x0801E55C
    push {lr}
    ldr r1, .L0801E58C @ =0x04000050
    ldr r2, .L0801E590 @ =0x00003C42
    adds r0, r2, #0
    strh r0, [r1]
    ldr r2, .L0801E594 @ =0x04000052
    ldr r1, .L0801E598 @ =gBmSt
    adds r0, r1, #0
    adds r0, #0x3a
    ldrb r0, [r0]
    strb r0, [r2]
    adds r2, #1
    adds r1, #0x3b
    ldrb r0, [r1]
    strb r0, [r2]
    movs r0, #0
    bl SetNextVCount
    ldr r0, .L0801E59C @ =func_0801E4D4
    bl SetOnVMatch
    pop {r0}
    bx r0
    .align 2, 0
.L0801E58C: .4byte 0x04000050
.L0801E590: .4byte 0x00003C42
.L0801E594: .4byte 0x04000052
.L0801E598: .4byte gBmSt
.L0801E59C: .4byte func_0801E4D4
    func_end func_0801E55C

    thumb_func_start func_0801E5A0
func_0801E5A0: @ 0x0801E5A0
    push {lr}
    ldr r2, .L0801E5C0 @ =0x02022EA0
    movs r1, #0
    ldr r0, .L0801E5C4 @ =0x00005140
    adds r3, r0, #0
.L0801E5AA:
    adds r0, r1, r3
    strh r0, [r2]
    adds r2, #2
    adds r1, #1
    cmp r1, #0x5f
    ble .L0801E5AA
    movs r0, #1
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L0801E5C0: .4byte 0x02022EA0
.L0801E5C4: .4byte 0x00005140
    func_end func_0801E5A0

    thumb_func_start func_0801E5C8
func_0801E5C8: @ 0x0801E5C8
    push {r4, r5, lr}
    adds r5, r0, #0
    bl GetCurrentBgmSong
    adds r4, r0, #0
    bl GetActiveMapSong
    cmp r4, r0
    beq .L0801E5E0
    movs r0, #4
    bl FadeBgmOut
.L0801E5E0:
    ldr r0, .L0801E600 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0801E5F2
    ldr r0, .L0801E604 @ =0x00000393
    bl m4aSongNumStart
.L0801E5F2:
    adds r1, r5, #0
    adds r1, #0x4c
    movs r0, #0xf
    strh r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E600: .4byte gPlaySt
.L0801E604: .4byte 0x00000393
    func_end func_0801E5C8

    thumb_func_start func_0801E608
func_0801E608: @ 0x0801E608
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    movs r1, #0x1c
    rsbs r1, r1, #0
    movs r2, #0x40
    rsbs r2, r2, #0
    adds r4, r5, #0
    adds r4, #0x4c
    movs r0, #0
    ldrsh r3, [r4, r0]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #2
    bl Interpolate
    adds r1, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    movs r0, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L0801E668 @ =gBmSt
    adds r2, r0, #0
    adds r2, #0x38
    ldrb r1, [r2]
    adds r1, #1
    strb r1, [r2]
    adds r0, #0x39
    ldrb r1, [r0]
    subs r1, #1
    strb r1, [r0]
    ldrh r0, [r4]
    subs r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L0801E660
    movs r0, #0xf
    strh r0, [r4]
    adds r0, r5, #0
    bl Proc_Break
.L0801E660:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E668: .4byte gBmSt
    func_end func_0801E608

    thumb_func_start func_0801E66C
func_0801E66C: @ 0x0801E66C
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    movs r2, #0x1c
    rsbs r2, r2, #0
    adds r4, r5, #0
    adds r4, #0x4c
    movs r0, #0
    ldrsh r3, [r4, r0]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #5
    movs r1, #0x24
    bl Interpolate
    adds r1, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    movs r0, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L0801E6CC @ =gBmSt
    adds r2, r0, #0
    adds r2, #0x38
    ldrb r1, [r2]
    subs r1, #1
    strb r1, [r2]
    adds r0, #0x39
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldrh r0, [r4]
    subs r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L0801E6C2
    movs r0, #0xf
    strh r0, [r4]
    adds r0, r5, #0
    bl Proc_Break
.L0801E6C2:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E6CC: .4byte gBmSt
    func_end func_0801E66C

    thumb_func_start func_0801E6D0
func_0801E6D0: @ 0x0801E6D0
    push {lr}
    ldr r0, .L0801E6E4 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    movs r0, #1
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L0801E6E4: .4byte gBg0Tm
    func_end func_0801E6D0

    thumb_func_start func_0801E6E8
func_0801E6E8: @ 0x0801E6E8
    adds r0, #0x4c
    movs r1, #4
    strh r1, [r0]
    bx lr
    func_end func_0801E6E8

    thumb_func_start func_0801E6F0
func_0801E6F0: @ 0x0801E6F0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov sl, r0
    movs r6, #9
    movs r0, #0x4c
    add r0, sl
    mov r8, r0
    ldr r1, .L0801E7C0 @ =gBg1Tm
    mov ip, r1
.L0801E70A:
    movs r3, #0xe
    str r3, [sp]
    lsls r0, r6, #1
    lsls r2, r6, #6
    subs r7, r6, #1
    mov sb, r7
    adds r0, #1
    lsls r1, r0, #5
    adds r1, #0x1d
    lsls r0, r0, #6
    add r0, ip
    adds r5, r0, #0
    adds r5, #0x38
    adds r2, #0x1d
    lsls r0, r6, #7
    add r0, ip
    adds r4, r0, #0
    adds r4, #0x38
    lsls r2, r2, #1
    add r2, ip
    lsls r1, r1, #1
    add r1, ip
.L0801E736:
    mov r3, r8
    movs r7, #0
    ldrsh r0, [r3, r7]
    ldr r3, [sp]
    subs r0, r3, r0
    adds r0, #0x15
    subs r3, r0, r6
    cmp r3, #0x10
    ble .L0801E74A
    movs r3, #0x10
.L0801E74A:
    cmp r3, #0
    bge .L0801E750
    movs r3, #0
.L0801E750:
    movs r0, #0x10
    subs r3, r0, r3
    movs r0, #0xfe
    ands r3, r0
    movs r7, #0xa2
    lsls r7, r7, #7
    adds r0, r7, #0
    adds r0, r3, r0
    strh r0, [r4]
    adds r7, #1
    adds r0, r7, #0
    adds r0, r3, r0
    strh r0, [r2]
    adds r7, #0x1f
    adds r0, r3, r7
    strh r0, [r5]
    adds r7, #1
    adds r0, r3, r7
    strh r0, [r1]
    subs r1, #4
    subs r5, #4
    subs r2, #4
    subs r4, #4
    ldr r0, [sp]
    subs r0, #1
    str r0, [sp]
    cmp r0, #0
    bge .L0801E736
    mov r6, sb
    cmp r6, #0
    bge .L0801E70A
    mov r1, r8
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    movs r0, #2
    bl EnableBgSync
    mov r3, r8
    ldrh r3, [r3]
    cmp r3, #0x22
    bne .L0801E7B0
    movs r0, #0
    mov r7, r8
    strh r0, [r7]
    mov r0, sl
    bl Proc_Break
.L0801E7B0:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E7C0: .4byte gBg1Tm
    func_end func_0801E6F0

    thumb_func_start func_0801E7C4
func_0801E7C4: @ 0x0801E7C4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov sl, r0
    movs r6, #9
    movs r0, #0x4c
    add r0, sl
    mov r8, r0
    ldr r1, .L0801E890 @ =gBg1Tm
    mov ip, r1
.L0801E7DE:
    movs r3, #0xe
    str r3, [sp]
    lsls r0, r6, #1
    lsls r2, r6, #6
    subs r7, r6, #1
    mov sb, r7
    adds r0, #1
    lsls r1, r0, #5
    adds r1, #0x1d
    lsls r0, r0, #6
    add r0, ip
    adds r5, r0, #0
    adds r5, #0x38
    adds r2, #0x1d
    lsls r0, r6, #7
    add r0, ip
    adds r4, r0, #0
    adds r4, #0x38
    lsls r2, r2, #1
    add r2, ip
    lsls r1, r1, #1
    add r1, ip
.L0801E80A:
    mov r3, r8
    movs r7, #0
    ldrsh r0, [r3, r7]
    ldr r3, [sp]
    subs r0, r3, r0
    adds r0, #0x15
    subs r3, r0, r6
    cmp r3, #0x10
    ble .L0801E81E
    movs r3, #0x10
.L0801E81E:
    cmp r3, #0
    bge .L0801E824
    movs r3, #0
.L0801E824:
    movs r0, #0xfe
    ands r3, r0
    ldr r7, .L0801E894 @ =0x00005501
    adds r0, r7, #0
    adds r0, r3, r0
    strh r0, [r4]
    subs r7, #1
    adds r0, r7, #0
    adds r0, r3, r0
    strh r0, [r2]
    adds r7, #0x21
    adds r0, r3, r7
    strh r0, [r5]
    subs r7, #1
    adds r0, r3, r7
    strh r0, [r1]
    subs r1, #4
    subs r5, #4
    subs r2, #4
    subs r4, #4
    ldr r0, [sp]
    subs r0, #1
    str r0, [sp]
    cmp r0, #0
    bge .L0801E80A
    mov r6, sb
    cmp r6, #0
    bge .L0801E7DE
    mov r1, r8
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    movs r0, #2
    bl EnableBgSync
    mov r3, r8
    ldrh r3, [r3]
    cmp r3, #0x24
    bne .L0801E87E
    movs r0, #0
    mov r7, r8
    strh r0, [r7]
    mov r0, sl
    bl Proc_Break
.L0801E87E:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E890: .4byte gBg1Tm
.L0801E894: .4byte 0x00005501
    func_end func_0801E7C4

    thumb_func_start func_0801E898
func_0801E898: @ 0x0801E898
    adds r0, #0x4c
    movs r1, #4
    strh r1, [r0]
    bx lr
    func_end func_0801E898

    thumb_func_start func_0801E8A0
func_0801E8A0: @ 0x0801E8A0
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r6, #0
    adds r4, #0x4c
    movs r0, #0
    ldrsh r3, [r4, r0]
    movs r5, #0x20
    str r5, [sp]
    movs r0, #5
    movs r1, #0x10
    movs r2, #0x3c
    bl Interpolate
    ldr r3, .L0801E920 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x2d
    movs r1, #0
    strb r1, [r2]
    adds r1, r0, #0
    adds r1, #8
    adds r2, #4
    strb r1, [r2]
    subs r2, #5
    movs r1, #0xf0
    strb r1, [r2]
    movs r2, #0x60
    rsbs r2, r2, #0
    adds r1, r2, #0
    subs r1, r1, r0
    adds r0, r3, #0
    adds r0, #0x30
    strb r1, [r0]
    movs r0, #0
    ldrsh r3, [r4, r0]
    str r5, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #7
    bl Interpolate
    ldr r2, .L0801E924 @ =gBmSt
    adds r1, r2, #0
    adds r1, #0x3a
    strb r0, [r1]
    movs r1, #0x10
    subs r1, r1, r0
    adds r2, #0x3b
    strb r1, [r2]
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x20
    bne .L0801E916
    adds r0, r6, #0
    bl Proc_Break
.L0801E916:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E920: .4byte gDispIo
.L0801E924: .4byte gBmSt
    func_end func_0801E8A0

    thumb_func_start func_0801E928
func_0801E928: @ 0x0801E928
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r6, #0
    adds r4, #0x4c
    movs r0, #0
    ldrsh r3, [r4, r0]
    movs r5, #0x20
    str r5, [sp]
    movs r0, #5
    movs r1, #0
    movs r2, #0x3c
    bl Interpolate
    ldr r3, .L0801E9A4 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x2d
    movs r1, #0
    strb r1, [r2]
    adds r1, r0, #0
    adds r1, #8
    adds r2, #4
    strb r1, [r2]
    subs r2, #5
    movs r1, #0xf0
    strb r1, [r2]
    movs r2, #0x60
    rsbs r2, r2, #0
    adds r1, r2, #0
    subs r1, r1, r0
    adds r0, r3, #0
    adds r0, #0x30
    strb r1, [r0]
    movs r0, #0
    ldrsh r3, [r4, r0]
    str r5, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #7
    bl Interpolate
    ldr r2, .L0801E9A8 @ =gBmSt
    adds r1, r2, #0
    adds r1, #0x3a
    strb r0, [r1]
    movs r1, #0x10
    subs r1, r1, r0
    adds r2, #0x3b
    strb r1, [r2]
    ldrh r0, [r4]
    subs r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L0801E99C
    adds r0, r6, #0
    bl Proc_Break
.L0801E99C:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E9A4: .4byte gDispIo
.L0801E9A8: .4byte gBmSt
    func_end func_0801E928

    thumb_func_start func_0801E9AC
func_0801E9AC: @ 0x0801E9AC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0801E9C8 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    bl CountFactionMoveableUnits
    cmp r0, #0
    bne .L0801E9C2
    adds r0, r4, #0
    bl Proc_End
.L0801E9C2:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E9C8: .4byte gPlaySt
    func_end func_0801E9AC

    thumb_func_start func_0801E9CC
func_0801E9CC: @ 0x0801E9CC
    push {lr}
    ldr r0, .L0801EA08 @ =0x08195520
    ldr r1, .L0801EA0C @ =0x06002000
    bl Decompress
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L0801EA10 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x40
    beq .L0801EA54
    cmp r0, #0x40
    bgt .L0801EA14
    cmp r0, #0
    beq .L0801EA1A
    b .L0801EA66
    .align 2, 0
.L0801EA08: .4byte 0x08195520
.L0801EA0C: .4byte 0x06002000
.L0801EA10: .4byte gPlaySt
.L0801EA14:
    cmp r0, #0x80
    beq .L0801EA34
    b .L0801EA66
.L0801EA1A:
    ldr r0, .L0801EA28 @ =0x08194794
    ldr r1, .L0801EA2C @ =0x06002800
    bl Decompress
    ldr r0, .L0801EA30 @ =0x08194C10
    b .L0801EA3E
    .align 2, 0
.L0801EA28: .4byte 0x08194794
.L0801EA2C: .4byte 0x06002800
.L0801EA30: .4byte 0x08194C10
.L0801EA34:
    ldr r0, .L0801EA48 @ =0x08194C30
    ldr r1, .L0801EA4C @ =0x06002800
    bl Decompress
    ldr r0, .L0801EA50 @ =0x08195088
.L0801EA3E:
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
    b .L0801EA66
    .align 2, 0
.L0801EA48: .4byte 0x08194C30
.L0801EA4C: .4byte 0x06002800
.L0801EA50: .4byte 0x08195088
.L0801EA54:
    ldr r0, .L0801EA6C @ =0x081950A8
    ldr r1, .L0801EA70 @ =0x06002800
    bl Decompress
    ldr r0, .L0801EA74 @ =0x08195500
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
.L0801EA66:
    pop {r0}
    bx r0
    .align 2, 0
.L0801EA6C: .4byte 0x081950A8
.L0801EA70: .4byte 0x06002800
.L0801EA74: .4byte 0x08195500
    func_end func_0801E9CC

    thumb_func_start func_0801EA78
func_0801EA78: @ 0x0801EA78
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    ldr r0, .L0801EB60 @ =gDispIo
    mov ip, r0
    movs r1, #0x20
    mov r8, r1
    mov r0, r8
    mov r2, ip
    ldrb r2, [r2, #1]
    orrs r0, r2
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r1, ip
    strb r0, [r1, #1]
    mov r0, ip
    adds r0, #0x2d
    movs r6, #0
    strb r6, [r0]
    adds r0, #4
    strb r6, [r0]
    adds r1, #0x2c
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    movs r2, #0x34
    add r2, ip
    mov sb, r2
    movs r0, #1
    ldrb r1, [r2]
    orrs r1, r0
    movs r2, #3
    rsbs r2, r2, #0
    ands r1, r2
    movs r5, #4
    orrs r1, r5
    movs r4, #8
    orrs r1, r4
    movs r3, #0x10
    orrs r1, r3
    mov r7, ip
    adds r7, #0x36
    ldrb r2, [r7]
    orrs r0, r2
    movs r2, #2
    orrs r0, r2
    orrs r0, r5
    orrs r0, r4
    orrs r0, r3
    mov r2, r8
    orrs r1, r2
    mov r2, sb
    strb r1, [r2]
    mov r1, r8
    orrs r0, r1
    strb r0, [r7]
    ldr r1, .L0801EB64 @ =gBmSt
    adds r0, r1, #0
    adds r0, #0x3a
    strb r6, [r0]
    adds r0, #1
    movs r3, #0x10
    strb r3, [r0]
    subs r0, #3
    strb r6, [r0]
    adds r0, #1
    strb r3, [r0]
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    movs r1, #0
    mov r0, ip
    adds r0, #0x44
    strb r1, [r0]
    adds r0, #1
    strb r3, [r0]
    adds r0, #1
    strb r6, [r0]
    ldr r0, .L0801EB68 @ =0x0000FFE0
    mov r2, ip
    ldrh r2, [r2, #0x3c]
    ands r0, r2
    movs r1, #2
    orrs r0, r1
    ldr r1, .L0801EB6C @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xe0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    mov r1, ip
    strh r0, [r1, #0x3c]
    movs r0, #0
    bl SetVCount
    ldr r0, .L0801EB70 @ =func_0801E4D4
    bl SetOnVMatch
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EB60: .4byte gDispIo
.L0801EB64: .4byte gBmSt
.L0801EB68: .4byte 0x0000FFE0
.L0801EB6C: .4byte 0x0000E0FF
.L0801EB70: .4byte func_0801E4D4
    func_end func_0801EA78

    thumb_func_start func_0801EB74
func_0801EB74: @ 0x0801EB74
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0801EBFC @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    ldr r0, .L0801EC00 @ =gBmSt
    adds r1, r0, #0
    adds r1, #0x3a
    ldrb r2, [r1]
    mov r1, ip
    adds r1, #0x44
    movs r3, #0
    strb r2, [r1]
    adds r0, #0x3b
    ldrb r0, [r0]
    adds r1, #1
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x46
    strb r3, [r0]
    ldr r0, .L0801EC04 @ =0x08B9372C
    bl Proc_Find
    cmp r0, #0
    bne .L0801EBF6
    ldr r0, .L0801EC08 @ =0x08B9376C
    bl Proc_Find
    cmp r0, #0
    bne .L0801EBF6
    ldr r0, .L0801EC0C @ =0x08B9378C
    bl Proc_Find
    cmp r0, #0
    bne .L0801EBF6
    bl ClearUi
    movs r0, #0
    bl SetOnVMatch
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    adds r0, r4, #0
    bl Proc_Break
.L0801EBF6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EBFC: .4byte gDispIo
.L0801EC00: .4byte gBmSt
.L0801EC04: .4byte 0x08B9372C
.L0801EC08: .4byte 0x08B9376C
.L0801EC0C: .4byte 0x08B9378C
    func_end func_0801EB74

    thumb_func_start func_0801EC10
func_0801EC10: @ 0x0801EC10
    push {lr}
    adds r2, r0, #0
    adds r3, r1, #0
    ldr r0, .L0801EC3C @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_0806F478
    adds r0, #5
    ldr r1, .L0801EC40 @ =gWorkingMoveScr
    strb r0, [r1]
    movs r0, #4
    strb r0, [r1, #1]
    adds r0, r1, #0
    bl SetAutoMuMoveScript
    pop {r0}
    bx r0
    .align 2, 0
.L0801EC3C: .4byte gActiveUnit
.L0801EC40: .4byte gWorkingMoveScr
    func_end func_0801EC10

    thumb_func_start func_0801EC44
func_0801EC44: @ 0x0801EC44
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    movs r0, #0
    movs r6, #0
    movs r7, #0
    adds r1, r5, #0
    adds r1, #0x4a
    movs r2, #0
    ldrsh r1, [r1, r2]
    cmp r1, #1
    beq .L0801EC9C
    cmp r1, #1
    bgt .L0801EC66
    cmp r1, #0
    beq .L0801EC8C
    b .L0801ECA0
.L0801EC66:
    cmp r1, #2
    beq .L0801EC7C
    cmp r1, #3
    bne .L0801ECA0
    ldr r0, .L0801EC74 @ =0x08196898
    ldr r6, .L0801EC78 @ =0x08196380
    b .L0801ECA0
    .align 2, 0
.L0801EC74: .4byte 0x08196898
.L0801EC78: .4byte 0x08196380
.L0801EC7C:
    ldr r0, .L0801EC84 @ =0x08196898
    ldr r6, .L0801EC88 @ =0x08196380
    movs r7, #1
    b .L0801ECA0
    .align 2, 0
.L0801EC84: .4byte 0x08196898
.L0801EC88: .4byte 0x08196380
.L0801EC8C:
    ldr r0, .L0801EC94 @ =0x08196E80
    ldr r6, .L0801EC98 @ =0x08196624
    movs r7, #1
    b .L0801ECA0
    .align 2, 0
.L0801EC94: .4byte 0x08196E80
.L0801EC98: .4byte 0x08196624
.L0801EC9C:
    ldr r0, .L0801ECF0 @ =0x08196E80
    ldr r6, .L0801ECF4 @ =0x08196624
.L0801ECA0:
    ldr r1, .L0801ECF8 @ =0x06014800
    bl Decompress
    ldr r0, .L0801ECFC @ =0x081973F4
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r4, [r5, #0x2c]
    lsls r4, r4, #4
    ldr r1, .L0801ED00 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r1, r3]
    subs r0, #8
    subs r4, r4, r0
    ldr r2, [r5, #0x30]
    lsls r2, r2, #4
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    subs r0, #8
    subs r2, r2, r0
    movs r3, #0x99
    lsls r3, r3, #6
    str r7, [sp]
    movs r0, #0
    str r0, [sp, #4]
    adds r0, r6, #0
    adds r1, r4, #0
    bl StartSpriteAnimProc
    adds r4, #8
    movs r0, #0xba
    adds r1, r4, #0
    bl func_08014D80
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801ECF0: .4byte 0x08196E80
.L0801ECF4: .4byte 0x08196624
.L0801ECF8: .4byte 0x06014800
.L0801ECFC: .4byte 0x081973F4
.L0801ED00: .4byte gBmSt
    func_end func_0801EC44

    thumb_func_start func_0801ED04
func_0801ED04: @ 0x0801ED04
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r0, .L0801ED30 @ =0x08B937F4
    adds r1, r4, #0
    bl Proc_StartBlocking
    str r5, [r0, #0x2c]
    str r6, [r0, #0x30]
    adds r0, #0x4a
    mov r1, r8
    strh r1, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801ED30: .4byte 0x08B937F4
    func_end func_0801ED04

    thumb_func_start func_0801ED34
func_0801ED34: @ 0x0801ED34
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, .L0801ED80 @ =0x08197CC8
    ldr r1, .L0801ED84 @ =0x06014800
    bl Decompress
    ldr r4, [r5, #0x2c]
    lsls r4, r4, #4
    ldr r1, .L0801ED88 @ =gBmSt
    movs r2, #0xc
    ldrsh r0, [r1, r2]
    subs r0, #8
    subs r4, r4, r0
    ldr r2, [r5, #0x30]
    lsls r2, r2, #4
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    subs r0, #8
    subs r2, r2, r0
    movs r3, #0x99
    lsls r3, r3, #6
    ldr r0, .L0801ED8C @ =0x08198184
    movs r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r4, #0
    bl StartSpriteAnimProc
    adds r4, #8
    movs r0, #0xbf
    adds r1, r4, #0
    bl func_08014D80
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801ED80: .4byte 0x08197CC8
.L0801ED84: .4byte 0x06014800
.L0801ED88: .4byte gBmSt
.L0801ED8C: .4byte 0x08198184
    func_end func_0801ED34

    thumb_func_start func_0801ED90
func_0801ED90: @ 0x0801ED90
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r0, .L0801EDB8 @ =0x08198164
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0801EDBC @ =0x08B93814
    adds r1, r4, #0
    bl Proc_StartBlocking
    str r5, [r0, #0x2c]
    str r6, [r0, #0x30]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EDB8: .4byte 0x08198164
.L0801EDBC: .4byte 0x08B93814
    func_end func_0801ED90

    thumb_func_start func_0801EDC0
func_0801EDC0: @ 0x0801EDC0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r0, .L0801EDE8 @ =0x08198818
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0801EDEC @ =0x08B93814
    adds r1, r4, #0
    bl Proc_StartBlocking
    str r5, [r0, #0x2c]
    str r6, [r0, #0x30]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EDE8: .4byte 0x08198818
.L0801EDEC: .4byte 0x08B93814
    func_end func_0801EDC0

    thumb_func_start func_0801EDF0
func_0801EDF0: @ 0x0801EDF0
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r1, [r5, #0x2c]
    lsls r1, r1, #4
    ldr r3, .L0801EE4C @ =gBmSt
    movs r2, #0xc
    ldrsh r0, [r3, r2]
    subs r0, #8
    subs r1, r1, r0
    ldr r0, .L0801EE50 @ =0x000001FF
    ands r1, r0
    ldr r2, [r5, #0x30]
    lsls r2, r2, #4
    movs r4, #0xe
    ldrsh r0, [r3, r4]
    subs r0, #8
    subs r2, r2, r0
    movs r0, #0xff
    ands r2, r0
    movs r3, #0x99
    lsls r3, r3, #6
    ldr r0, .L0801EE54 @ =0x083EDA80
    movs r4, #0
    str r4, [sp]
    str r4, [sp, #4]
    bl StartSpriteAnimProc
    ldr r0, [r5, #0x5c]
    subs r0, #1
    str r0, [r5, #0x5c]
    cmp r0, #0
    bgt .L0801EE3A
    adds r0, r5, #0
    movs r1, #0x64
    bl Proc_Goto
.L0801EE3A:
    ldr r0, [r5, #0x58]
    cmp r0, #1
    beq .L0801EE76
    cmp r0, #1
    bgt .L0801EE58
    cmp r0, #0
    beq .L0801EE70
    b .L0801EE7C
    .align 2, 0
.L0801EE4C: .4byte gBmSt
.L0801EE50: .4byte 0x000001FF
.L0801EE54: .4byte 0x083EDA80
.L0801EE58:
    cmp r0, #2
    beq .L0801EE68
    cmp r0, #3
    bne .L0801EE7C
    ldr r0, [r5, #0x30]
    subs r0, #1
    str r0, [r5, #0x30]
    b .L0801EE7C
.L0801EE68:
    ldr r0, [r5, #0x30]
    adds r0, #1
    str r0, [r5, #0x30]
    b .L0801EE7C
.L0801EE70:
    ldr r0, [r5, #0x2c]
    subs r0, #1
    b .L0801EE7A
.L0801EE76:
    ldr r0, [r5, #0x2c]
    adds r0, #1
.L0801EE7A:
    str r0, [r5, #0x2c]
.L0801EE7C:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0801EDF0

    thumb_func_start func_0801EE84
func_0801EE84: @ 0x0801EE84
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    adds r4, r0, #0
    mov r8, r1
    mov sb, r2
    adds r5, r3, #0
    ldr r6, [sp, #0x18]
    ldr r0, .L0801EECC @ =0x083F4464
    ldr r1, .L0801EED0 @ =0x06014800
    bl Decompress
    ldr r0, .L0801EED4 @ =0x083F46F0
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0801EED8 @ =0x08B93834
    adds r1, r4, #0
    bl Proc_StartBlocking
    str r5, [r0, #0x58]
    str r6, [r0, #0x5c]
    mov r1, r8
    str r1, [r0, #0x2c]
    mov r1, sb
    str r1, [r0, #0x30]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EECC: .4byte 0x083F4464
.L0801EED0: .4byte 0x06014800
.L0801EED4: .4byte 0x083F46F0
.L0801EED8: .4byte 0x08B93834
    func_end func_0801EE84

    thumb_func_start func_0801EEDC
func_0801EEDC: @ 0x0801EEDC
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, .L0801EF34 @ =0x08197434
    ldr r1, .L0801EF38 @ =0x06014800
    bl Decompress
    ldr r0, .L0801EF3C @ =0x08197414
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r4, [r5, #0x2c]
    lsls r4, r4, #4
    ldr r0, .L0801EF40 @ =gBmSt
    movs r1, #0xc
    ldrsh r0, [r0, r1]
    subs r0, #8
    subs r4, r4, r0
    movs r3, #0x99
    lsls r3, r3, #6
    ldr r0, .L0801EF44 @ =0x0819770C
    movs r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r4, #0
    movs r2, #0x50
    bl StartSpriteAnimProc
    adds r4, #8
    movs r0, #0xbc
    adds r1, r4, #0
    bl func_08014D80
    ldr r1, [r5, #0x2c]
    adds r0, r5, #0
    movs r2, #0x1f
    bl EnsureCameraOntoPosition
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EF34: .4byte 0x08197434
.L0801EF38: .4byte 0x06014800
.L0801EF3C: .4byte 0x08197414
.L0801EF40: .4byte gBmSt
.L0801EF44: .4byte 0x0819770C
    func_end func_0801EEDC

    thumb_func_start func_0801EF48
func_0801EF48: @ 0x0801EF48
    push {r4, lr}
    adds r2, r0, #0
    adds r4, r1, #0
    ldr r0, .L0801EF60 @ =0x08B93874
    adds r1, r2, #0
    bl Proc_StartBlocking
    str r4, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EF60: .4byte 0x08B93874
    func_end func_0801EF48

    thumb_func_start func_0801EF64
func_0801EF64: @ 0x0801EF64
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x2c]
    bl func_0802BCD0
    ldrb r1, [r0, #3]
    lsrs r4, r1, #1
    ldrb r1, [r0, #1]
    adds r4, r1, r4
    ldrb r1, [r0, #4]
    lsrs r2, r1, #1
    ldrb r0, [r0, #2]
    adds r2, r0, r2
    adds r0, r5, #0
    adds r1, r4, #0
    bl EnsureCameraOntoPosition
    str r4, [r5, #0x34]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0801EF64

    thumb_func_start func_0801EF90
func_0801EF90: @ 0x0801EF90
    push {r4, lr}
    adds r4, r0, #0
    bl RenderMapForFade
    bl RefreshAutoWaterShadows
    bl RenderMap
    movs r0, #0
    bl StartMapFade
    ldr r0, [r4, #0x30]
    movs r2, #0xbd
    cmp r0, #0
    beq .L0801EFB0
    movs r2, #0xbe
.L0801EFB0:
    ldr r0, .L0801EFC8 @ =gBmSt
    movs r1, #0xc
    ldrsh r0, [r0, r1]
    ldr r1, [r4, #0x34]
    subs r1, r1, r0
    adds r0, r2, #0
    bl func_08014D80
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EFC8: .4byte gBmSt
    func_end func_0801EF90

    thumb_func_start func_0801EFCC
func_0801EFCC: @ 0x0801EFCC
    push {r4, r5, lr}
    adds r1, r0, #0
    adds r4, r2, #0
    ldr r0, .L0801EFF4 @ =0x08B9389C
    bl Proc_StartBlocking
    adds r5, r0, #0
    adds r0, r4, #0
    bl GetTrap
    adds r1, r0, #0
    movs r0, #1
    ldrb r2, [r1, #3]
    eors r0, r2
    strb r0, [r1, #3]
    cmp r0, #0
    beq .L0801EFF8
    ldrb r0, [r1, #1]
    b .L0801EFFA
    .align 2, 0
.L0801EFF4: .4byte 0x08B9389C
.L0801EFF8:
    ldrb r0, [r1]
.L0801EFFA:
    str r0, [r5, #0x2c]
    ldrb r0, [r1, #3]
    str r0, [r5, #0x30]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0801EFCC

    thumb_func_start func_0801F008
func_0801F008: @ 0x0801F008
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, .L0801F068 @ =0x08198FA4
    ldr r1, .L0801F06C @ =0x06014800
    bl Decompress
    ldr r0, .L0801F070 @ =0x08199438
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r4, [r5, #0x2c]
    lsls r4, r4, #4
    ldr r1, .L0801F074 @ =gBmSt
    movs r2, #0xc
    ldrsh r0, [r1, r2]
    subs r0, #8
    subs r4, r4, r0
    ldr r2, [r5, #0x30]
    lsls r2, r2, #4
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    subs r0, #8
    subs r2, r2, r0
    movs r3, #0x99
    lsls r3, r3, #6
    ldr r0, .L0801F078 @ =0x08199224
    adds r5, #0x4a
    movs r6, #0
    ldrsh r1, [r5, r6]
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    adds r1, r4, #0
    bl StartSpriteAnimProc
    adds r4, #8
    movs r0, #0xbb
    adds r1, r4, #0
    bl func_08014D80
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F068: .4byte 0x08198FA4
.L0801F06C: .4byte 0x06014800
.L0801F070: .4byte 0x08199438
.L0801F074: .4byte gBmSt
.L0801F078: .4byte 0x08199224
    func_end func_0801F008

    thumb_func_start func_0801F07C
func_0801F07C: @ 0x0801F07C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    ldr r0, .L0801F0A0 @ =0x08B938CC
    adds r1, r4, #0
    bl Proc_StartBlocking
    str r5, [r0, #0x2c]
    str r6, [r0, #0x30]
    cmp r7, #1
    beq .L0801F0AA
    cmp r7, #1
    bgt .L0801F0A4
    cmp r7, #0
    beq .L0801F0B2
    b .L0801F0C2
    .align 2, 0
.L0801F0A0: .4byte 0x08B938CC
.L0801F0A4:
    cmp r7, #3
    beq .L0801F0BA
    b .L0801F0C2
.L0801F0AA:
    adds r1, r0, #0
    adds r1, #0x4a
    movs r0, #0
    b .L0801F0C0
.L0801F0B2:
    adds r1, r0, #0
    adds r1, #0x4a
    movs r0, #1
    b .L0801F0C0
.L0801F0BA:
    adds r1, r0, #0
    adds r1, #0x4a
    movs r0, #2
.L0801F0C0:
    strh r0, [r1]
.L0801F0C2:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0801F07C

    thumb_func_start func_0801F0C8
func_0801F0C8: @ 0x0801F0C8
    adds r0, #0x4c
    movs r1, #0xf0
    strh r1, [r0]
    bx lr
    func_end func_0801F0C8

    thumb_func_start func_0801F0D0
func_0801F0D0: @ 0x0801F0D0
    push {lr}
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    blt .L0801F0F2
    ldr r0, .L0801F0FC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #3
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0801F0F8
.L0801F0F2:
    adds r0, r2, #0
    bl Proc_Break
.L0801F0F8:
    pop {r0}
    bx r0
    .align 2, 0
.L0801F0FC: .4byte gpKeySt
    func_end func_0801F0D0

    thumb_func_start func_0801F100
func_0801F100: @ 0x0801F100
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r0, r6, #0
    bl GetStringTextLen
    adds r2, r0, #0
    cmp r5, #0
    blt .L0801F118
    adds r2, #0x10
.L0801F118:
    adds r2, #0x18
    movs r0, #0xf0
    subs r0, r0, r2
    cmp r0, #0
    bge .L0801F124
    adds r0, #0xf
.L0801F124:
    asrs r4, r0, #4
    adds r0, r2, #0
    cmp r0, #0
    bge .L0801F12E
    adds r0, #7
.L0801F12E:
    asrs r2, r0, #3
    movs r0, #0
    str r0, [sp]
    adds r0, r4, #0
    movs r1, #8
    movs r3, #4
    bl DrawUiFrame2
    cmp r5, #0
    blt .L0801F15E
    bl InitIcons
    movs r0, #4
    bl ApplyIconPalettes
    lsls r0, r4, #1
    ldr r1, .L0801F188 @ =0x02022EA2
    adds r0, r0, r1
    movs r2, #0x80
    lsls r2, r2, #7
    adds r1, r5, #0
    bl PutIcon
    adds r4, #2
.L0801F15E:
    bl ResetTextFont
    lsls r1, r4, #1
    ldr r0, .L0801F188 @ =0x02022EA2
    adds r1, r1, r0
    movs r0, #0x14
    str r0, [sp]
    str r6, [sp, #4]
    movs r0, #0
    movs r2, #0
    movs r3, #0
    bl PutDrawText
    ldr r0, .L0801F18C @ =0x08B938EC
    adds r1, r7, #0
    bl Proc_StartBlocking
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F188: .4byte 0x02022EA2
.L0801F18C: .4byte 0x08B938EC
    func_end func_0801F100

    thumb_func_start func_0801F190
func_0801F190: @ 0x0801F190
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0xc
    mov r8, r0
    adds r7, r1, #0
    adds r4, r2, #0
    adds r5, r3, #0
    bl ResetTextFont
    add r0, sp, #4
    movs r1, #0x14
    bl InitText
    cmp r4, #0
    beq .L0801F1CE
    add r0, sp, #4
    movs r1, #0
    bl Text_SetColor
    adds r0, r4, #0
    bl DecodeMsg
    adds r1, r0, #0
    add r0, sp, #4
    bl Text_DrawString
    add r0, sp, #4
    movs r1, #2
    bl Text_Skip
.L0801F1CE:
    add r0, sp, #4
    movs r1, #2
    bl Text_SetColor
    cmp r4, #0
    beq .L0801F1E0
    adds r0, r7, #0
    movs r1, #0
    b .L0801F1E4
.L0801F1E0:
    adds r0, r7, #0
    movs r1, #1
.L0801F1E4:
    bl GetItemNameWithArticle
    adds r1, r0, #0
    add r0, sp, #4
    bl Text_DrawString
    add r0, sp, #4
    bl Text_GetCursor
    adds r1, r0, #7
    cmp r1, #0
    bge .L0801F1FE
    adds r1, #7
.L0801F1FE:
    asrs r4, r1, #3
    adds r1, r4, #2
    lsls r1, r1, #3
    add r0, sp, #4
    bl Text_SetCursor
    add r0, sp, #4
    movs r1, #0
    bl Text_SetColor
    cmp r5, #0
    beq .L0801F224
    adds r0, r5, #0
    bl DecodeMsg
    adds r1, r0, #0
    add r0, sp, #4
    bl Text_DrawString
.L0801F224:
    add r0, sp, #4
    bl Text_GetCursor
    adds r2, r0, #0
    adds r2, #0x18
    movs r0, #0xf0
    subs r0, r0, r2
    cmp r0, #0
    bge .L0801F238
    adds r0, #0xf
.L0801F238:
    asrs r6, r0, #4
    adds r0, r2, #0
    cmp r0, #0
    bge .L0801F242
    adds r0, #7
.L0801F242:
    asrs r2, r0, #3
    movs r0, #0
    str r0, [sp]
    adds r0, r6, #0
    movs r1, #8
    movs r3, #4
    bl DrawUiFrame2
    lsls r1, r6, #1
    ldr r5, .L0801F290 @ =0x02022EA2
    adds r1, r1, r5
    add r0, sp, #4
    bl PutText
    adds r4, #1
    adds r4, r6, r4
    lsls r4, r4, #1
    subs r5, #2
    adds r4, r4, r5
    adds r0, r7, #0
    bl GetItemIcon
    adds r1, r0, #0
    movs r2, #0x80
    lsls r2, r2, #7
    adds r0, r4, #0
    bl PutIcon
    ldr r0, .L0801F294 @ =0x08B938EC
    mov r1, r8
    bl Proc_StartBlocking
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F290: .4byte 0x02022EA2
.L0801F294: .4byte 0x08B938EC
    func_end func_0801F190

    thumb_func_start func_0801F298
func_0801F298: @ 0x0801F298
    push {lr}
    ldr r2, .L0801F2A8 @ =0x0000075E
    ldr r3, .L0801F2AC @ =0x000012B2
    bl func_0801F190
    pop {r0}
    bx r0
    .align 2, 0
.L0801F2A8: .4byte 0x0000075E
.L0801F2AC: .4byte 0x000012B2
    func_end func_0801F298

    thumb_func_start func_0801F2B0
func_0801F2B0: @ 0x0801F2B0
    push {lr}
    ldr r2, .L0801F2C0 @ =0x0000075F
    movs r3, #0xec
    lsls r3, r3, #3
    bl func_0801F190
    pop {r0}
    bx r0
    .align 2, 0
.L0801F2C0: .4byte 0x0000075F
    func_end func_0801F2B0
