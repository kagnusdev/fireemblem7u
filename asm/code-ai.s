    .include "asm_prelude.inc"

    thumb_func_start func_080348E0
func_080348E0: @ 0x080348E0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r2, .L0803493C @ =0x0203A8EC
    adds r3, r2, #0
    adds r3, #0x7b
    movs r1, #0
    movs r0, #1
    strb r0, [r3]
    adds r3, #3
    movs r0, #0xff
    strb r0, [r3]
    adds r0, r2, #0
    adds r0, #0x78
    strb r1, [r0]
    ldr r5, .L08034940 @ =0x081D3A60
    ldr r4, .L08034944 @ =gPlaySt
    movs r3, #0
    movs r1, #7
    adds r0, #0x15
.L08034906:
    strb r3, [r0]
    subs r0, #1
    subs r1, #1
    cmp r1, #0
    bge .L08034906
    adds r1, r2, #0
    adds r1, #0x80
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    str r0, [r1]
    adds r1, #4
    movs r0, #0
    strb r0, [r1]
    bl func_08039704
    bl func_0803715C
    ldr r0, .L08034948 @ =0x08B96ED4
    adds r1, r6, #0
    bl Proc_StartBlocking
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803493C: .4byte 0x0203A8EC
.L08034940: .4byte 0x081D3A60
.L08034944: .4byte gPlaySt
.L08034948: .4byte 0x08B96ED4
    func_end func_080348E0

    thumb_func_start func_0803494C
func_0803494C: @ 0x0803494C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L0803499C @ =0x0203A8EC
    adds r2, r0, #0
    adds r2, #0x7b
    movs r1, #4
    strb r1, [r2]
    adds r2, #3
    movs r1, #0xff
    strb r1, [r2]
    adds r1, r0, #0
    ldr r5, .L080349A0 @ =0x081D3A60
    ldr r4, .L080349A4 @ =gPlaySt
    movs r0, #0
    movs r3, #7
    adds r2, r1, #0
    adds r2, #0x8d
.L0803496E:
    strb r0, [r2]
    subs r2, #1
    subs r3, #1
    cmp r3, #0
    bge .L0803496E
    adds r1, #0x80
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    str r0, [r1]
    bl func_08039704
    bl func_0803715C
    ldr r0, .L080349A8 @ =0x08B96EEC
    adds r1, r6, #0
    bl Proc_StartBlocking
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803499C: .4byte 0x0203A8EC
.L080349A0: .4byte 0x081D3A60
.L080349A4: .4byte gPlaySt
.L080349A8: .4byte 0x08B96EEC
    func_end func_0803494C

    thumb_func_start func_080349AC
func_080349AC: @ 0x080349AC
    ldr r0, .L080349B8 @ =0x0203A8EC
    adds r0, #0x7b
    movs r1, #0
    strb r1, [r0]
    bx lr
    .align 2, 0
.L080349B8: .4byte 0x0203A8EC
    func_end func_080349AC

    thumb_func_start func_080349BC
func_080349BC: @ 0x080349BC
    push {r4, lr}
    ldr r4, .L080349DC @ =0x08B96F0C
    ldr r2, .L080349E0 @ =0x0203A8EC
    adds r2, #0x78
    ldrb r1, [r2]
    adds r3, r1, #1
    strb r3, [r2]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x16
    adds r1, r1, r4
    ldr r1, [r1]
    bl _call_via_r1
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080349DC: .4byte 0x08B96F0C
.L080349E0: .4byte 0x0203A8EC
    func_end func_080349BC

    thumb_func_start func_080349E4
func_080349E4: @ 0x080349E4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0xc
    mov r8, r0
    movs r5, #0
    ldr r0, .L08034A70 @ =gPlaySt
    ldrb r2, [r0, #0xf]
    mov r1, sp
    ldr r0, .L08034A74 @ =0x081D3658
    ldm r0!, {r3, r4, r6}
    stm r1!, {r3, r4, r6}
    movs r6, #0
    lsrs r0, r2, #6
    lsls r0, r0, #2
    mov r3, sp
    adds r1, r3, r0
    ldr r0, [r1]
    cmp r5, r0
    bge .L08034A48
    adds r7, r1, #0
    adds r4, r2, #1
.L08034A10:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    ldr r0, [r2]
    cmp r0, #0
    beq .L08034A3E
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    bne .L08034A3E
    ldr r0, [r2, #0xc]
    ldr r1, .L08034A78 @ =0x00000427
    ands r0, r1
    cmp r0, #0
    bne .L08034A3E
    ldr r0, .L08034A7C @ =0x0203A8EC
    adds r0, r5, r0
    strb r4, [r0]
    adds r5, #1
.L08034A3E:
    adds r4, #1
    adds r6, #1
    ldr r0, [r7]
    cmp r6, r0
    blt .L08034A10
.L08034A48:
    cmp r5, #0
    beq .L08034A64
    ldr r0, .L08034A7C @ =0x0203A8EC
    adds r2, r5, r0
    movs r1, #0
    strb r1, [r2]
    str r0, [r0, #0x74]
    ldr r1, .L08034A80 @ =0x030047A0
    ldr r0, .L08034A84 @ =func_08034EDC
    str r0, [r1]
    ldr r0, .L08034A88 @ =0x08B96F44
    mov r1, r8
    bl Proc_StartBlocking
.L08034A64:
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08034A70: .4byte gPlaySt
.L08034A74: .4byte 0x081D3658
.L08034A78: .4byte 0x00000427
.L08034A7C: .4byte 0x0203A8EC
.L08034A80: .4byte 0x030047A0
.L08034A84: .4byte func_08034EDC
.L08034A88: .4byte 0x08B96F44
    func_end func_080349E4

    thumb_func_start func_08034A8C
func_08034A8C: @ 0x08034A8C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_08034BE4
    adds r4, r0, #0
    cmp r4, #0
    beq .L08034AB6
    bl func_08034C84
    ldr r0, .L08034ABC @ =0x0203A8EC
    adds r2, r4, r0
    movs r1, #0
    strb r1, [r2]
    str r0, [r0, #0x74]
    ldr r1, .L08034AC0 @ =0x030047A0
    ldr r0, .L08034AC4 @ =func_08034EDC
    str r0, [r1]
    ldr r0, .L08034AC8 @ =0x08B96F44
    adds r1, r5, #0
    bl Proc_StartBlocking
.L08034AB6:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08034ABC: .4byte 0x0203A8EC
.L08034AC0: .4byte 0x030047A0
.L08034AC4: .4byte func_08034EDC
.L08034AC8: .4byte 0x08B96F44
    func_end func_08034A8C

    thumb_func_start func_08034ACC
func_08034ACC: @ 0x08034ACC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    movs r7, #0
    movs r0, #0
    mov r8, r0
    movs r6, #0
    ldrh r4, [r5, #0x1e]
    cmp r4, #0
    beq .L08034B4A
.L08034AE2:
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08034AFE
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08034B36
.L08034AFE:
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #4
    ands r1, r0
    cmp r1, #0
    bne .L08034B5C
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L08034B36
    adds r0, r4, #0
    bl func_08017384
    cmp r0, #1
    ble .L08034B2C
    adds r0, r7, #1
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    b .L08034B36
.L08034B2C:
    mov r0, r8
    adds r0, #1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov r8, r0
.L08034B36:
    adds r6, #1
    cmp r6, #4
    bgt .L08034B4A
    lsls r1, r6, #1
    adds r0, r5, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L08034AE2
.L08034B4A:
    cmp r7, #0
    beq .L08034B52
    movs r0, #0x28
    b .L08034B62
.L08034B52:
    mov r0, r8
    cmp r0, #0
    bne .L08034B60
    movs r0, #0x57
    b .L08034B62
.L08034B5C:
    movs r0, #0x48
    b .L08034B62
.L08034B60:
    movs r0, #0x14
.L08034B62:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08034ACC

    thumb_func_start func_08034B6C
func_08034B6C: @ 0x08034B6C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    movs r1, #0x1d
    ldrsb r1, [r5, r1]
    ldr r0, [r5, #4]
    ldrb r0, [r0, #0x12]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r4, r1, r0
    adds r0, r5, #0
    bl GetUnitLeaderCharId
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    adds r6, r2, #0
    ldr r3, [r5]
    ldr r0, [r5, #4]
    ldr r1, [r3, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x30
    ands r0, r1
    cmp r0, #0
    beq .L08034BA2
    adds r0, r4, #0
    subs r0, #0x95
    b .L08034BDE
.L08034BA2:
    movs r0, #1
    ldrb r7, [r5, #0xa]
    ands r0, r7
    cmp r0, #0
    bne .L08034BDC
    lsls r0, r2, #8
    adds r4, r4, r0
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    beq .L08034BBE
    adds r0, r4, #0
    adds r0, #0x3c
    b .L08034BDE
.L08034BBE:
    ldrb r0, [r3, #4]
    cmp r0, r6
    beq .L08034BCE
    movs r0, #0x80
    lsls r0, r0, #6
    ands r1, r0
    cmp r1, #0
    beq .L08034BD4
.L08034BCE:
    adds r0, r4, #0
    adds r0, #0x57
    b .L08034BDE
.L08034BD4:
    adds r0, r5, #0
    bl func_08034ACC
    adds r4, r4, r0
.L08034BDC:
    adds r0, r4, #0
.L08034BDE:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08034B6C

    thumb_func_start func_08034BE4
func_08034BE4: @ 0x08034BE4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0xc
    movs r5, #0
    ldr r0, .L08034C70 @ =gPlaySt
    ldrb r2, [r0, #0xf]
    ldr r0, .L08034C74 @ =0x08B96ED0
    ldr r0, [r0]
    mov r8, r0
    mov r1, sp
    ldr r0, .L08034C78 @ =0x081D3658
    ldm r0!, {r3, r4, r6}
    stm r1!, {r3, r4, r6}
    movs r6, #0
    lsrs r0, r2, #6
    lsls r0, r0, #2
    mov r3, sp
    adds r1, r3, r0
    ldr r0, [r1]
    cmp r5, r0
    bge .L08034C60
    adds r7, r1, #0
    adds r4, r2, #1
.L08034C14:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    ldr r0, [r2]
    cmp r0, #0
    beq .L08034C56
    adds r0, r2, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #2
    beq .L08034C56
    cmp r1, #4
    beq .L08034C56
    ldr r0, [r2, #0xc]
    ldr r1, .L08034C7C @ =0x00000427
    ands r0, r1
    cmp r0, #0
    bne .L08034C56
    ldr r0, .L08034C80 @ =0x0203A8EC
    adds r0, r5, r0
    strb r4, [r0]
    adds r0, r2, #0
    bl func_08034B6C
    mov r1, r8
    adds r1, #4
    mov r8, r1
    subs r1, #4
    stm r1!, {r0}
    adds r5, #1
.L08034C56:
    adds r4, #1
    adds r6, #1
    ldr r0, [r7]
    cmp r6, r0
    blt .L08034C14
.L08034C60:
    adds r0, r5, #0
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08034C70: .4byte gPlaySt
.L08034C74: .4byte 0x08B96ED0
.L08034C78: .4byte 0x081D3658
.L08034C7C: .4byte 0x00000427
.L08034C80: .4byte 0x0203A8EC
    func_end func_08034BE4

    thumb_func_start func_08034C84
func_08034C84: @ 0x08034C84
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    cmp r0, #1
    ble .L08034CDA
    movs r5, #0
    subs r0, #2
    cmp r5, r0
    bgt .L08034CDA
    mov ip, r0
    ldr r1, .L08034CE8 @ =0x08B96ED0
    mov sb, r1
    ldr r1, .L08034CEC @ =0x0203A8EC
    mov r8, r1
.L08034CA2:
    adds r4, r0, #0
    adds r6, r5, #1
    cmp r0, r5
    blt .L08034CD2
    mov r7, sb
    mov r1, r8
    adds r3, r0, r1
.L08034CB0:
    ldr r1, [r7]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r2, [r0]
    ldr r1, [r0, #4]
    cmp r2, r1
    bls .L08034CCA
    str r1, [r0]
    str r2, [r0, #4]
    ldrb r1, [r3]
    ldrb r0, [r3, #1]
    strb r0, [r3]
    strb r1, [r3, #1]
.L08034CCA:
    subs r3, #1
    subs r4, #1
    cmp r4, r5
    bge .L08034CB0
.L08034CD2:
    adds r5, r6, #0
    mov r0, ip
    cmp r5, r0
    ble .L08034CA2
.L08034CDA:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08034CE8: .4byte 0x08B96ED0
.L08034CEC: .4byte 0x0203A8EC
    func_end func_08034C84

    thumb_func_start func_08034CF0
func_08034CF0: @ 0x08034CF0
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08034CF0

    thumb_func_start func_08034CFC
func_08034CFC: @ 0x08034CFC
    push {lr}
    ldr r0, .L08034D14 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0xc0
    ldrb r1, [r1, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L08034D1C
    ldr r1, .L08034D18 @ =gActionSt
    movs r0, #3
    b .L08034D20
    .align 2, 0
.L08034D14: .4byte gActiveUnit
.L08034D18: .4byte gActionSt
.L08034D1C:
    ldr r1, .L08034D2C @ =gActionSt
    movs r0, #2
.L08034D20:
    strb r0, [r1, #0x16]
    movs r0, #3
    bl WriteSuspendSave
    pop {r0}
    bx r0
    .align 2, 0
.L08034D2C: .4byte gActionSt
    func_end func_08034CFC

    thumb_func_start func_08034D30
func_08034D30: @ 0x08034D30
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
.L08034D34:
    ldr r4, .L08034D78 @ =0x0203A8EC
    adds r0, r4, #0
    adds r0, #0x79
    movs r1, #0
    strb r1, [r0]
    ldr r2, [r4, #0x74]
    ldrb r0, [r2]
    cmp r0, #0
    beq .L08034E24
    adds r0, r4, #0
    adds r0, #0x7c
    strb r1, [r0]
    ldr r1, .L08034D7C @ =gActiveUnitId
    ldrb r0, [r2]
    strb r0, [r1]
    ldrb r0, [r1]
    bl GetUnit
    adds r1, r0, #0
    ldr r6, .L08034D80 @ =gActiveUnit
    str r1, [r6]
    ldr r5, [r1, #0xc]
    movs r0, #6
    ands r5, r0
    cmp r5, #0
    bne .L08034D6E
    ldr r0, [r1]
    cmp r0, #0
    bne .L08034D84
.L08034D6E:
    ldr r0, [r4, #0x74]
    adds r0, #1
    str r0, [r4, #0x74]
    b .L08034D34
    .align 2, 0
.L08034D78: .4byte 0x0203A8EC
.L08034D7C: .4byte gActiveUnitId
.L08034D80: .4byte gActiveUnit
.L08034D84:
    bl RefreshEntityMaps
    bl RenderMap
    bl RefreshUnitSprites
    ldr r0, [r6]
    bl func_0803C0C8
    ldr r1, [r6]
    adds r1, #0x40
    movs r0, #0xf8
    ldrh r1, [r1]
    ands r0, r1
    lsrs r0, r0, #3
    adds r1, r4, #0
    adds r1, #0x7d
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x7a
    strb r5, [r0]
    bl AiRefreshDangerMap
    bl func_08034E30
    ldr r0, .L08034E00 @ =0x030047A0
    ldr r0, [r0]
    bl _call_via_r0
    ldr r2, [r6]
    ldr r0, [r2, #0xc]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    str r0, [r2, #0xc]
    ldr r1, .L08034E04 @ =0x0203A97C
    movs r0, #0xa
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L08034DEE
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    ldrb r3, [r1, #2]
    cmp r0, r3
    bne .L08034E08
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldrb r2, [r1, #3]
    cmp r0, r2
    bne .L08034E08
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08034E08
.L08034DEE:
    ldr r0, [r4, #0x74]
    adds r0, #1
    str r0, [r4, #0x74]
    adds r0, r7, #0
    movs r1, #0
    bl Proc_Goto
    b .L08034E2A
    .align 2, 0
.L08034E00: .4byte 0x030047A0
.L08034E04: .4byte 0x0203A97C
.L08034E08:
    ldr r0, .L08034E1C @ =0x0203A8EC
    ldr r1, [r0, #0x74]
    adds r1, #1
    str r1, [r0, #0x74]
    ldr r0, .L08034E20 @ =0x08B96F9C
    adds r1, r7, #0
    bl Proc_StartBlocking
    b .L08034E2A
    .align 2, 0
.L08034E1C: .4byte 0x0203A8EC
.L08034E20: .4byte 0x08B96F9C
.L08034E24:
    adds r0, r7, #0
    bl Proc_End
.L08034E2A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08034D30

    thumb_func_start func_08034E30
func_08034E30: @ 0x08034E30
    ldr r1, .L08034E4C @ =0x0203A97C
    movs r0, #0
    strb r0, [r1]
    strb r0, [r1, #1]
    strb r0, [r1, #2]
    strb r0, [r1, #3]
    strb r0, [r1, #4]
    strb r0, [r1, #5]
    strb r0, [r1, #6]
    strb r0, [r1, #7]
    strb r0, [r1, #8]
    strb r0, [r1, #9]
    strb r0, [r1, #0xa]
    bx lr
    .align 2, 0
.L08034E4C: .4byte 0x0203A97C
    func_end func_08034E30

    thumb_func_start func_08034E50
func_08034E50: @ 0x08034E50
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    ldr r6, [sp, #0x18]
    ldr r4, [sp, #0x1c]
    mov r8, r4
    ldr r4, [sp, #0x20]
    mov sb, r4
    ldr r4, .L08034E8C @ =0x0203A97C
    ldr r5, .L08034E90 @ =gActiveUnitId
    ldrb r5, [r5]
    strb r5, [r4, #1]
    strb r0, [r4, #2]
    strb r1, [r4, #3]
    strb r2, [r4]
    strb r3, [r4, #6]
    strb r6, [r4, #7]
    mov r0, r8
    strb r0, [r4, #8]
    mov r0, sb
    strb r0, [r4, #9]
    movs r0, #1
    strb r0, [r4, #0xa]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08034E8C: .4byte 0x0203A97C
.L08034E90: .4byte gActiveUnitId
    func_end func_08034E50

    thumb_func_start func_08034E94
func_08034E94: @ 0x08034E94
    push {r4, r5, lr}
    ldr r4, [sp, #0xc]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    lsls r1, r1, #0x18
    lsrs r5, r1, #0x18
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r1, .L08034ED8 @ =0x0203A97C
    cmp r0, #0xff
    beq .L08034EB4
    strb r0, [r1]
.L08034EB4:
    cmp r5, #0xff
    beq .L08034EBA
    strb r5, [r1, #6]
.L08034EBA:
    cmp r2, #0xff
    beq .L08034EC0
    strb r2, [r1, #7]
.L08034EC0:
    cmp r3, #0xff
    beq .L08034EC6
    strb r3, [r1, #8]
.L08034EC6:
    cmp r4, #0xff
    beq .L08034ECC
    strb r4, [r1, #9]
.L08034ECC:
    movs r0, #1
    strb r0, [r1, #0xa]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08034ED8: .4byte 0x0203A97C
    func_end func_08034E94

    thumb_func_start func_08034EDC
func_08034EDC: @ 0x08034EDC
    push {r4, r5, lr}
    ldr r2, .L08034F34 @ =0x08B96F14
    ldr r0, .L08034F38 @ =0x0203A8EC
    adds r1, r0, #0
    adds r1, #0x79
    ldrb r3, [r1]
    lsls r0, r3, #2
    adds r0, r0, r2
    ldr r0, [r0]
    cmp r0, #0
    beq .L08034F2C
    ldr r0, .L08034F3C @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08034F2C
    adds r5, r2, #0
    adds r4, r1, #0
.L08034F02:
    ldrb r0, [r4]
    adds r1, r0, #1
    strb r1, [r4]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x16
    adds r0, r0, r5
    ldr r0, [r0]
    bl _call_via_r0
    ldrb r1, [r4]
    lsls r0, r1, #2
    adds r0, r0, r5
    ldr r0, [r0]
    cmp r0, #0
    beq .L08034F2C
    ldr r0, .L08034F3C @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08034F02
.L08034F2C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08034F34: .4byte 0x08B96F14
.L08034F38: .4byte 0x0203A8EC
.L08034F3C: .4byte 0x0203A97C
    func_end func_08034EDC

    thumb_func_start func_08034F40
func_08034F40: @ 0x08034F40
    push {r4, lr}
    sub sp, #8
    ldr r1, .L08034F8C @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08034FE8
    ldr r4, .L08034F90 @ =gActiveUnit
    ldr r0, [r4]
    bl func_0803975C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08034FCC
    bl func_080397DC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08034FE8
    ldr r1, [r4]
    movs r0, #8
    ldrb r1, [r1, #0xa]
    ands r0, r1
    cmp r0, #0
    beq .L08034F94
    bl func_08039894
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08034F94
    bl func_08039D74
    b .L08034FE8
    .align 2, 0
.L08034F8C: .4byte 0x0203A8EC
.L08034F90: .4byte gActiveUnit
.L08034F94:
    add r4, sp, #4
    adds r0, r4, #0
    bl func_08039534
    lsls r0, r0, #0x18
    asrs r2, r0, #0x18
    cmp r2, #1
    bne .L08034FE8
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r3, #2
    ldrsh r1, [r4, r3]
    str r2, [sp]
    movs r2, #0
    movs r3, #0
    bl func_08036B00
    ldr r0, .L08034FC8 @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    cmp r0, #1
    bne .L08034FE8
    bl func_08039DA0
    b .L08034FE8
    .align 2, 0
.L08034FC8: .4byte 0x0203A97C
.L08034FCC:
    ldr r1, [r4]
    movs r0, #8
    ldrb r1, [r1, #0xa]
    ands r0, r1
    cmp r0, #0
    beq .L08034FE8
    bl func_08039894
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08034FE8
    bl func_08039D74
.L08034FE8:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08034F40

    thumb_func_start func_08034FF0
func_08034FF0: @ 0x08034FF0
    push {lr}
    ldr r1, .L08035008 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08035004
    bl func_0803BA18
.L08035004:
    pop {r0}
    bx r0
    .align 2, 0
.L08035008: .4byte 0x0203A8EC
    func_end func_08034FF0

    thumb_func_start func_0803500C
func_0803500C: @ 0x0803500C
    push {r4, lr}
    movs r4, #0
    ldr r1, .L08035024 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08035028
    bl func_080384EC
    b .L0803503E
    .align 2, 0
.L08035024: .4byte 0x0203A8EC
.L08035028:
    bl func_080375B8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803503E
    adds r4, #1
    cmp r4, #0xff
    ble .L08035028
    bl func_0803760C
.L0803503E:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0803500C

    thumb_func_start func_08035044
func_08035044: @ 0x08035044
    push {r4, lr}
    movs r4, #0
    ldr r0, .L0803507C @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08035068
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl func_08034698
    cmp r0, #0
    bne .L0803509A
.L08035068:
    ldr r1, .L08035080 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08035084
    bl func_0803850C
    b .L0803509A
    .align 2, 0
.L0803507C: .4byte gActiveUnit
.L08035080: .4byte 0x0203A8EC
.L08035084:
    bl func_08037648
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803509A
    adds r4, #1
    cmp r4, #0xff
    ble .L08035084
    bl func_0803769C
.L0803509A:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08035044

    thumb_func_start func_080350A0
func_080350A0: @ 0x080350A0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    ldr r1, [r4, #0x30]
    ldr r2, [r4, #0x58]
    bl PutMapCursor
    ldr r0, .L080350E0 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #9
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L080350CA
    adds r0, r4, #0
    adds r0, #0x64
    movs r2, #0
    ldrsh r1, [r0, r2]
    adds r2, r0, #0
    cmp r1, #0x2d
    ble .L080350D4
.L080350CA:
    adds r0, r4, #0
    bl Proc_Break
    adds r2, r4, #0
    adds r2, #0x64
.L080350D4:
    ldrh r0, [r2]
    adds r0, #1
    strh r0, [r2]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080350E0: .4byte gpKeySt
    func_end func_080350A0

    thumb_func_start func_080350E4
func_080350E4: @ 0x080350E4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r1, r3, #0
    ldr r0, .L08035108 @ =0x08B96F7C
    bl Proc_StartBlocking
    str r4, [r0, #0x2c]
    str r5, [r0, #0x30]
    str r6, [r0, #0x58]
    adds r0, #0x64
    movs r1, #0
    strh r1, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08035108: .4byte 0x08B96F7C
    func_end func_080350E4

    thumb_func_start func_0803510C
func_0803510C: @ 0x0803510C
    push {lr}
    ldr r0, .L08035120 @ =0x08B85854
    bl Proc_Find
    cmp r0, #0
    bne .L0803511C
    bl StartMapSongBgm
.L0803511C:
    pop {r0}
    bx r0
    .align 2, 0
.L08035120: .4byte 0x08B85854
    func_end func_0803510C

    thumb_func_start func_08035124
func_08035124: @ 0x08035124
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    movs r0, #0x31
    adds r0, r0, r4
    mov ip, r0
    movs r0, #1
    mov r1, ip
    strb r0, [r1]
    ldr r1, .L08035180 @ =gPlaySt
    ldrb r0, [r1, #0xd]
    cmp r0, #0
    beq .L080351A6
    ldrb r1, [r1, #0xf]
    cmp r1, #0x80
    bne .L080351A6
    ldr r0, .L08035184 @ =gActiveUnit
    ldr r1, [r0]
    movs r5, #0x11
    ldrsb r5, [r1, r5]
    ldr r0, .L08035188 @ =gMapFog
    ldr r2, [r0]
    lsls r0, r5, #2
    adds r0, r0, r2
    ldrb r1, [r1, #0x10]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08035176
    ldr r3, .L0803518C @ =0x0203A97C
    ldrb r6, [r3, #3]
    lsls r0, r6, #2
    adds r0, r0, r2
    ldr r0, [r0]
    ldrb r2, [r3, #2]
    adds r0, r2, r0
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08035190
.L08035176:
    adds r0, r4, #0
    adds r2, r5, #0
    bl EnsureCameraOntoPosition
    b .L080351B8
    .align 2, 0
.L08035180: .4byte gPlaySt
.L08035184: .4byte gActiveUnit
.L08035188: .4byte gMapFog
.L0803518C: .4byte 0x0203A97C
.L08035190:
    mov r6, ip
    strb r0, [r6]
    ldrb r0, [r3]
    cmp r0, #4
    bne .L080351B8
    ldrb r1, [r3, #2]
    ldrb r2, [r3, #3]
    adds r0, r4, #0
    bl EnsureCameraOntoPosition
    b .L080351B8
.L080351A6:
    ldr r0, .L080351C0 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    adds r0, r4, #0
    bl EnsureCameraOntoPosition
.L080351B8:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080351C0: .4byte gActiveUnit
    func_end func_08035124

    thumb_func_start func_080351C4
func_080351C4: @ 0x080351C4
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r6, .L08035228 @ =gActiveUnit
    ldr r0, [r6]
    bl UnitBeginAction
    ldr r0, [r6]
    bl HideUnitSprite
    ldr r0, [r6]
    bl MapFloodUnit
    ldr r0, .L0803522C @ =gBmMapMovement
    ldr r0, [r0]
    bl func_0801B190
    ldr r4, .L08035230 @ =0x0203A97C
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    ldr r7, .L08035234 @ =gWorkingMoveScr
    adds r2, r7, #0
    bl BuildBestMoveScript
    ldr r0, [r6]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    bl UnitApplyWorkingMovementScript
    ldr r1, .L08035238 @ =gActionSt
    ldrb r0, [r1, #0xe]
    strb r0, [r4, #2]
    ldrb r0, [r1, #0xf]
    strb r0, [r4, #3]
    adds r5, #0x31
    ldrb r0, [r5]
    cmp r0, #0
    beq .L08035222
    ldr r0, [r6]
    bl StartMu
    bl MU_SetDefaultFacing_Auto
    adds r0, r7, #0
    bl SetAutoMuMoveScript
.L08035222:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08035228: .4byte gActiveUnit
.L0803522C: .4byte gBmMapMovement
.L08035230: .4byte 0x0203A97C
.L08035234: .4byte gWorkingMoveScr
.L08035238: .4byte gActionSt
    func_end func_080351C4

    thumb_func_start AiEndMuAndRefreshUnits
AiEndMuAndRefreshUnits: @ 0x0803523C
    push {r4, r5, lr}
    ldr r0, .L08035288 @ =gActionSt
    ldrb r0, [r0, #0xc]
    bl GetUnit
    ldr r5, .L0803528C @ =gActiveUnit
    str r0, [r5]
    ldr r4, .L08035290 @ =0x0203A97C
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl SetMapCursorPosition
    bl RenderMapForFade
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl MoveActiveUnit
    bl RefreshEntityMaps
    bl RenderMap
    movs r0, #1
    bl StartMapFade
    bl EndAllMus
    bl RefreshEntityMaps
    ldr r0, [r5]
    bl ShowUnitSprite
    bl RefreshUnitSprites
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08035288: .4byte gActionSt
.L0803528C: .4byte gActiveUnit
.L08035290: .4byte 0x0203A97C
    func_end AiEndMuAndRefreshUnits

    thumb_func_start func_08035294
func_08035294: @ 0x08035294
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r5, .L080352EC @ =gActionSt
    ldr r0, .L080352F0 @ =gActiveUnitId
    ldrb r0, [r0]
    strb r0, [r5, #0xc]
    movs r0, #2
    strb r0, [r5, #0x11]
    ldr r4, .L080352F4 @ =0x0203A97C
    ldrb r0, [r4, #6]
    strb r0, [r5, #0xd]
    ldr r6, .L080352F8 @ =gActiveUnit
    ldr r1, [r6]
    ldrb r0, [r4, #2]
    strb r0, [r1, #0x10]
    ldr r1, [r6]
    ldrb r0, [r4, #3]
    strb r0, [r1, #0x11]
    ldrb r0, [r4, #6]
    cmp r0, #0
    bne .L080352D2
    ldrb r0, [r4, #8]
    ldrb r1, [r4, #9]
    bl GetTrapAt
    ldrb r1, [r0]
    strb r1, [r5, #0x13]
    ldrb r1, [r0, #1]
    strb r1, [r5, #0x14]
    ldrb r0, [r0, #3]
    strb r0, [r5, #0x15]
.L080352D2:
    movs r1, #7
    ldrsb r1, [r4, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L080352FC
    ldr r0, [r6]
    ldrb r1, [r4, #7]
    bl UnitEquipItemSlot
    movs r0, #0
    b .L080352FE
    .align 2, 0
.L080352EC: .4byte gActionSt
.L080352F0: .4byte gActiveUnitId
.L080352F4: .4byte 0x0203A97C
.L080352F8: .4byte gActiveUnit
.L080352FC:
    movs r0, #8
.L080352FE:
    strb r0, [r5, #0x12]
    adds r0, r7, #0
    bl DoAction
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08035294

    thumb_func_start func_0803530C
func_0803530C: @ 0x0803530C
    push {r4, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r1, .L08035344 @ =0x081D3664
    mov r0, sp
    movs r2, #0xc
    bl memcpy
    ldr r1, .L08035348 @ =0x0203A97C
    ldrb r0, [r1, #8]
    cmp r0, #5
    beq .L0803533A
    adds r0, r4, #0
    adds r0, #0x31
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803533A
    ldrb r2, [r1, #8]
    lsls r0, r2, #1
    adds r0, r0, r2
    add r0, sp
    bl SetAutoMuMoveScript
.L0803533A:
    add sp, #0xc
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08035344: .4byte 0x081D3664
.L08035348: .4byte 0x0203A97C
    func_end func_0803530C

    thumb_func_start func_0803534C
func_0803534C: @ 0x0803534C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    mov r8, r0
    ldr r4, .L08035390 @ =0x0203A97C
    ldrb r0, [r4, #6]
    bl GetUnit
    adds r6, r0, #0
    ldrb r0, [r4, #7]
    lsls r1, r0, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r5, [r0]
    ldr r0, .L08035394 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r5, #0
    bl UnitAddItem
    ldrb r1, [r4, #7]
    adds r0, r6, #0
    bl UnitRemoveItem
    adds r0, r5, #0
    mov r1, r8
    bl func_0800EEF4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08035390: .4byte 0x0203A97C
.L08035394: .4byte gActiveUnit
    func_end func_0803534C

    thumb_func_start func_08035398
func_08035398: @ 0x08035398
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r3, .L080353D4 @ =0x0203A97C
    ldrb r2, [r3, #2]
    ldrb r4, [r3, #3]
    ldr r0, .L080353D8 @ =gBmMapTerrain
    ldr r1, [r0]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x21
    bne .L080353E4
    ldr r1, .L080353DC @ =gActiveUnit
    ldr r0, [r1]
    strb r2, [r0, #0x10]
    ldr r1, [r1]
    ldrb r0, [r3, #3]
    strb r0, [r1, #0x11]
    ldr r1, .L080353E0 @ =gActionSt
    movs r0, #0x17
    strb r0, [r1, #0x11]
    ldrb r0, [r3, #7]
    strb r0, [r1, #0x12]
    adds r0, r5, #0
    bl DoItemAction
    b .L08035410
    .align 2, 0
.L080353D4: .4byte 0x0203A97C
.L080353D8: .4byte gBmMapTerrain
.L080353DC: .4byte gActiveUnit
.L080353E0: .4byte gActionSt
.L080353E4:
    subs r1, r4, #1
    lsls r0, r2, #0x18
    asrs r0, r0, #0x18
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078C14
    ldr r0, .L08035418 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08035404
    movs r0, #0xab
    bl m4aSongNumStart
.L08035404:
    ldr r0, .L0803541C @ =0x08B9701C
    movs r1, #0x60
    movs r2, #0
    adds r3, r5, #0
    bl func_0800AD40
.L08035410:
    movs r0, #1
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08035418: .4byte gPlaySt
.L0803541C: .4byte 0x08B9701C
    func_end func_08035398

    thumb_func_start func_08035420
func_08035420: @ 0x08035420
    push {r4, lr}
    ldr r4, .L0803544C @ =gActiveUnit
    ldr r2, [r4]
    ldr r3, .L08035450 @ =0x0203A97C
    ldrb r1, [r3, #2]
    strb r1, [r2, #0x10]
    ldr r2, [r4]
    ldrb r1, [r3, #3]
    strb r1, [r2, #0x11]
    ldr r2, .L08035454 @ =gActionSt
    movs r1, #3
    strb r1, [r2, #0x11]
    ldrb r1, [r3, #6]
    strb r1, [r2, #0xd]
    ldrb r1, [r3, #7]
    strb r1, [r2, #0x12]
    bl DoItemAction
    movs r0, #1
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803544C: .4byte gActiveUnit
.L08035450: .4byte 0x0203A97C
.L08035454: .4byte gActionSt
    func_end func_08035420

    thumb_func_start func_08035458
func_08035458: @ 0x08035458
    push {r4, lr}
    ldr r4, .L08035480 @ =gActiveUnit
    ldr r2, [r4]
    ldr r3, .L08035484 @ =0x0203A97C
    ldrb r1, [r3, #2]
    strb r1, [r2, #0x10]
    ldr r2, [r4]
    ldrb r1, [r3, #3]
    strb r1, [r2, #0x11]
    ldr r2, .L08035488 @ =gActionSt
    movs r1, #0x17
    strb r1, [r2, #0x11]
    ldrb r1, [r3, #7]
    strb r1, [r2, #0x12]
    bl DoItemAction
    movs r0, #1
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035480: .4byte gActiveUnit
.L08035484: .4byte 0x0203A97C
.L08035488: .4byte gActionSt
    func_end func_08035458

    thumb_func_start func_0803548C
func_0803548C: @ 0x0803548C
    movs r0, #1
    bx lr
    func_end func_0803548C

    thumb_func_start func_08035490
func_08035490: @ 0x08035490
    push {r4, r5, lr}
    ldr r2, .L080354CC @ =gActiveUnit
    ldr r1, [r2]
    ldr r5, .L080354D0 @ =0x0203A97C
    ldrb r0, [r5, #2]
    strb r0, [r1, #0x10]
    ldr r1, [r2]
    ldrb r0, [r5, #3]
    strb r0, [r1, #0x11]
    ldrb r0, [r5, #6]
    cmp r0, #0
    bne .L080354C2
    ldrb r0, [r5, #7]
    bl GetUnit
    ldr r0, [r0]
    ldrb r4, [r0, #4]
    ldrb r0, [r5, #8]
    bl GetUnit
    ldr r0, [r0]
    ldrb r1, [r0, #4]
    adds r0, r4, #0
    bl func_08078A40
.L080354C2:
    movs r0, #1
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080354CC: .4byte gActiveUnit
.L080354D0: .4byte 0x0203A97C
    func_end func_08035490

    thumb_func_start func_080354D4
func_080354D4: @ 0x080354D4
    push {lr}
    ldr r1, .L080354F4 @ =gActiveUnit
    ldr r2, [r1]
    ldr r3, .L080354F8 @ =0x0203A97C
    ldrb r0, [r3, #2]
    strb r0, [r2, #0x10]
    ldr r2, [r1]
    ldrb r0, [r3, #3]
    strb r0, [r2, #0x11]
    ldr r0, [r1]
    bl func_08034770
    movs r0, #1
    pop {r1}
    bx r1
    .align 2, 0
.L080354F4: .4byte gActiveUnit
.L080354F8: .4byte 0x0203A97C
    func_end func_080354D4

    thumb_func_start func_080354FC
func_080354FC: @ 0x080354FC
    push {lr}
    ldr r1, .L0803551C @ =gActiveUnit
    ldr r2, [r1]
    ldr r3, .L08035520 @ =0x0203A97C
    ldrb r0, [r3, #2]
    strb r0, [r2, #0x10]
    ldr r2, [r1]
    ldrb r0, [r3, #3]
    strb r0, [r2, #0x11]
    ldr r0, [r1]
    bl func_080347A8
    movs r0, #1
    pop {r1}
    bx r1
    .align 2, 0
.L0803551C: .4byte gActiveUnit
.L08035520: .4byte 0x0203A97C
    func_end func_080354FC

    thumb_func_start func_08035524
func_08035524: @ 0x08035524
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    movs r6, #0
    movs r5, #0
    ldr r0, .L08035550 @ =gActionSt
    ldrb r0, [r0, #0x11]
    cmp r0, #0x1b
    bne .L0803553A
    b .L08035628
.L0803553A:
    ldr r0, .L08035554 @ =0x0203A97C
    ldrb r1, [r0]
    adds r2, r0, #0
    cmp r1, #0xa
    bhi .L08035612
    lsls r0, r1, #2
    ldr r1, .L08035558 @ =.L0803555C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08035550: .4byte gActionSt
.L08035554: .4byte 0x0203A97C
.L08035558: .4byte .L0803555C
.L0803555C: @ jump table
    .4byte .L08035628 @ case 0
    .4byte .L08035588 @ case 1
    .4byte .L08035628 @ case 2
    .4byte .L080355F4 @ case 3
    .4byte .L08035628 @ case 4
    .4byte .L08035600 @ case 5
    .4byte .L08035628 @ case 6
    .4byte .L080355F8 @ case 7
    .4byte .L080355FC @ case 8
    .4byte .L08035628 @ case 9
    .4byte .L08035628 @ case 10
.L08035588:
    ldr r1, .L08035598 @ =0x0203A97C
    ldrb r0, [r1, #6]
    cmp r0, #0
    bne .L0803559C
    ldrb r6, [r1, #8]
    ldrb r5, [r1, #9]
    b .L080355AA
    .align 2, 0
.L08035598: .4byte 0x0203A97C
.L0803559C:
    ldrb r0, [r1, #6]
    bl GetUnit
    movs r6, #0x10
    ldrsb r6, [r0, r6]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
.L080355AA:
    ldr r7, .L080355EC @ =0x0203A97C
    movs r1, #7
    ldrsb r1, [r7, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08035612
    ldr r4, .L080355F0 @ =gActiveUnit
    ldr r0, [r4]
    ldr r0, [r0, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08035612
    bl EndAllMus
    ldr r1, [r4]
    ldrb r0, [r7, #2]
    strb r0, [r1, #0x10]
    ldr r1, [r4]
    ldrb r0, [r7, #3]
    strb r0, [r1, #0x11]
    ldr r0, [r4]
    bl func_08034770
    ldr r0, [r4]
    bl StartMu
    bl MU_SetDefaultFacing_Auto
    b .L08035612
    .align 2, 0
.L080355EC: .4byte 0x0203A97C
.L080355F0: .4byte gActiveUnit
.L080355F4:
    ldrb r0, [r2, #6]
    b .L08035606
.L080355F8:
    ldrb r0, [r2, #6]
    b .L08035606
.L080355FC:
    ldrb r0, [r2, #9]
    b .L08035606
.L08035600:
    ldrb r0, [r2, #6]
    cmp r0, #0
    beq .L08035628
.L08035606:
    bl GetUnit
    movs r6, #0x10
    ldrsb r6, [r0, r6]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
.L08035612:
    mov r0, r8
    adds r1, r6, #0
    adds r2, r5, #0
    bl EnsureCameraOntoPosition
    lsls r0, r6, #4
    lsls r1, r5, #4
    movs r2, #2
    mov r3, r8
    bl func_080350E4
.L08035628:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08035524

    thumb_func_start func_08035634
func_08035634: @ 0x08035634
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x30
    movs r1, #0
    strb r1, [r0]
    ldr r0, .L0803564C @ =gActionSt
    ldrb r0, [r0, #0x11]
    cmp r0, #0x1b
    bne .L08035654
    ldr r0, .L08035650 @ =func_08035790
    b .L08035706
    .align 2, 0
.L0803564C: .4byte gActionSt
.L08035650: .4byte func_08035790
.L08035654:
    ldr r0, .L08035668 @ =0x0203A97C
    ldrb r0, [r0]
    cmp r0, #0xa
    bhi .L08035708
    lsls r0, r0, #2
    ldr r1, .L0803566C @ =.L08035670
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08035668: .4byte 0x0203A97C
.L0803566C: .4byte .L08035670
.L08035670: @ jump table
    .4byte .L0803569C @ case 0
    .4byte .L080356A4 @ case 1
    .4byte .L080356B4 @ case 2
    .4byte .L080356C4 @ case 3
    .4byte .L080356D4 @ case 4
    .4byte .L080356DC @ case 5
    .4byte .L080356E4 @ case 6
    .4byte .L080356EC @ case 7
    .4byte .L080356F4 @ case 8
    .4byte .L080356FC @ case 9
    .4byte .L08035704 @ case 10
.L0803569C:
    ldr r0, .L080356A0 @ =func_08035790
    b .L08035706
    .align 2, 0
.L080356A0: .4byte func_08035790
.L080356A4:
    ldr r0, .L080356B0 @ =func_08035790
    str r0, [r4, #0x2c]
    adds r0, r4, #0
    bl func_08035294
    b .L08035708
    .align 2, 0
.L080356B0: .4byte func_08035790
.L080356B4:
    adds r0, r4, #0
    bl func_0803530C
    ldr r0, .L080356C0 @ =func_08035794
    b .L08035706
    .align 2, 0
.L080356C0: .4byte func_08035794
.L080356C4:
    adds r0, r4, #0
    bl func_0803534C
    ldr r0, .L080356D0 @ =func_080357B8
    b .L08035706
    .align 2, 0
.L080356D0: .4byte func_080357B8
.L080356D4:
    ldr r0, .L080356D8 @ =func_08035398
    b .L08035706
    .align 2, 0
.L080356D8: .4byte func_08035398
.L080356DC:
    ldr r0, .L080356E0 @ =func_08035420
    b .L08035706
    .align 2, 0
.L080356E0: .4byte func_08035420
.L080356E4:
    ldr r0, .L080356E8 @ =func_08035458
    b .L08035706
    .align 2, 0
.L080356E8: .4byte func_08035458
.L080356EC:
    ldr r0, .L080356F0 @ =func_0803548C
    b .L08035706
    .align 2, 0
.L080356F0: .4byte func_0803548C
.L080356F4:
    ldr r0, .L080356F8 @ =func_08035490
    b .L08035706
    .align 2, 0
.L080356F8: .4byte func_08035490
.L080356FC:
    ldr r0, .L08035700 @ =func_080354D4
    b .L08035706
    .align 2, 0
.L08035700: .4byte func_080354D4
.L08035704:
    ldr r0, .L08035710 @ =func_080354FC
.L08035706:
    str r0, [r4, #0x2c]
.L08035708:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08035710: .4byte func_080354FC
    func_end func_08035634

    thumb_func_start func_08035714
func_08035714: @ 0x08035714
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x30
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    ldr r1, [r4, #0x2c]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08035738
    adds r0, r4, #0
    bl Proc_Break
.L08035738:
    ldr r3, .L08035750 @ =gActiveUnit
    ldr r1, [r3]
    ldr r2, .L08035754 @ =0x0203A97C
    ldrb r0, [r2, #2]
    strb r0, [r1, #0x10]
    ldr r1, [r3]
    ldrb r0, [r2, #3]
    strb r0, [r1, #0x11]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08035750: .4byte gActiveUnit
.L08035754: .4byte 0x0203A97C
    func_end func_08035714

    thumb_func_start func_08035758
func_08035758: @ 0x08035758
    push {r4, lr}
    adds r4, r0, #0
    bl func_08039704
    bl AiEndMuAndRefreshUnits
    ldr r0, .L08035788 @ =gActiveUnit
    ldr r1, [r0]
    ldr r0, [r1]
    cmp r0, #0
    beq .L08035778
    ldr r0, [r1, #0xc]
    ldr r1, .L0803578C @ =0x00010005
    ands r0, r1
    cmp r0, #0
    beq .L08035780
.L08035778:
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
.L08035780:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08035788: .4byte gActiveUnit
.L0803578C: .4byte 0x00010005
    func_end func_08035758

    thumb_func_start func_08035790
func_08035790: @ 0x08035790
    movs r0, #1
    bx lr
    func_end func_08035790

    thumb_func_start func_08035794
func_08035794: @ 0x08035794
    push {lr}
    bl MuExistsActive
    lsls r0, r0, #0x18
    asrs r1, r0, #0x18
    cmp r1, #0
    beq .L080357A6
    movs r0, #0
    b .L080357AE
.L080357A6:
    ldr r0, .L080357B4 @ =gActiveUnit
    ldr r0, [r0]
    str r1, [r0]
    movs r0, #1
.L080357AE:
    pop {r1}
    bx r1
    .align 2, 0
.L080357B4: .4byte gActiveUnit
    func_end func_08035794

    thumb_func_start func_080357B8
func_080357B8: @ 0x080357B8
    push {lr}
    adds r0, #0x30
    ldrb r0, [r0]
    cmp r0, #4
    bhi .L080357C6
    movs r0, #0
    b .L080357DE
.L080357C6:
    ldr r0, .L080357E4 @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L080357E8 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    movs r0, #3
    bl EnableBgSync
    movs r0, #1
.L080357DE:
    pop {r1}
    bx r1
    .align 2, 0
.L080357E4: .4byte gBg0Tm
.L080357E8: .4byte gBg1Tm
    func_end func_080357B8

    thumb_func_start func_080357EC
func_080357EC: @ 0x080357EC
    push {r4, r5, r6, lr}
    sub sp, #0x18
    bl func_080399C4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803582A
    add r0, sp, #4
    bl func_080399F8
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803582A
    ldr r1, .L08035834 @ =0x0203A97C
    ldrb r0, [r1, #2]
    ldrb r1, [r1, #3]
    add r4, sp, #0x10
    mov r5, sp
    adds r5, #0x12
    add r6, sp, #0x14
    str r6, [sp]
    adds r2, r4, #0
    adds r3, r5, #0
    bl func_08039B04
    ldrh r0, [r4]
    ldrh r1, [r5]
    ldrh r2, [r6]
    add r3, sp, #4
    bl func_08039CA4
.L0803582A:
    add sp, #0x18
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08035834: .4byte 0x0203A97C
    func_end func_080357EC

    thumb_func_start func_08035838
func_08035838: @ 0x08035838
    adds r3, r0, #0
    lsls r1, r1, #0x18
    lsrs r0, r1, #0x18
    cmp r0, #5
    bhi .L08035898
    lsls r0, r0, #2
    ldr r1, .L0803584C @ =.L08035850
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0803584C: .4byte .L08035850
.L08035850: @ jump table
    .4byte .L08035868 @ case 0
    .4byte .L08035872 @ case 1
    .4byte .L0803587A @ case 2
    .4byte .L08035882 @ case 3
    .4byte .L0803588A @ case 4
    .4byte .L08035892 @ case 5
.L08035868:
    ldrb r3, [r3]
    cmp r3, r2
    bls .L08035898
.L0803586E:
    movs r0, #1
    b .L0803589A
.L08035872:
    ldrb r3, [r3]
    cmp r3, r2
    blo .L08035898
    b .L0803586E
.L0803587A:
    ldrb r0, [r3]
    cmp r0, r2
    bne .L08035898
    b .L0803586E
.L08035882:
    ldrb r3, [r3]
    cmp r3, r2
    bhi .L08035898
    b .L0803586E
.L0803588A:
    ldrb r3, [r3]
    cmp r3, r2
    bhs .L08035898
    b .L0803586E
.L08035892:
    ldrb r0, [r3]
    cmp r0, r2
    bne .L0803586E
.L08035898:
    movs r0, #0
.L0803589A:
    bx lr
    func_end func_08035838

    thumb_func_start func_0803589C
func_0803589C: @ 0x0803589C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    adds r6, r1, #0
    ldr r0, .L08035938 @ =gActiveUnit
    ldr r0, [r0]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl MapFloodRange_Unitless
    bl func_0801A1E8
    ldr r0, .L0803593C @ =0x0000FFFF
    strh r0, [r6]
    movs r5, #1
    ldr r0, .L08035940 @ =0x0203A972
    mov r8, r0
.L080358CE:
    adds r0, r5, #0
    bl GetUnit
    adds r3, r0, #0
    cmp r3, #0
    beq .L08035924
    ldr r4, [r3]
    cmp r4, #0
    beq .L08035924
    movs r1, #0x11
    ldrsb r1, [r3, r1]
    ldr r0, .L08035944 @ =gBmMapRange
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r3, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08035924
    ldrb r0, [r4, #4]
    cmp r0, r7
    bne .L08035924
    ldr r1, [r3, #0xc]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    bne .L08035968
    movs r0, #0x20
    ands r1, r0
    cmp r1, #0
    beq .L08035918
    movs r0, #3
    mov r1, r8
    strb r0, [r1]
.L08035918:
    movs r0, #0x10
    ldrsb r0, [r3, r0]
    strh r0, [r6]
    movs r0, #0x11
    ldrsb r0, [r3, r0]
    strh r0, [r6, #2]
.L08035924:
    adds r5, #1
    cmp r5, #0xbf
    ble .L080358CE
    movs r1, #0
    ldrsh r0, [r6, r1]
    cmp r0, #0
    blt .L08035948
    movs r0, #1
    b .L0803597E
    .align 2, 0
.L08035938: .4byte gActiveUnit
.L0803593C: .4byte 0x0000FFFF
.L08035940: .4byte 0x0203A972
.L08035944: .4byte gBmMapRange
.L08035948:
    adds r0, r7, #0
    bl GetUnitFromCharId
    ldr r0, [r0, #0xc]
    ldr r1, .L08035960 @ =0x0001000C
    ands r0, r1
    cmp r0, #0
    beq .L08035974
    ldr r0, .L08035964 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #1
    b .L0803597A
    .align 2, 0
.L08035960: .4byte 0x0001000C
.L08035964: .4byte 0x0203A8EC
.L08035968:
    ldr r0, .L08035970 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #1
    b .L0803597A
    .align 2, 0
.L08035970: .4byte 0x0203A8EC
.L08035974:
    ldr r0, .L08035988 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #4
.L0803597A:
    strb r1, [r0]
    movs r0, #0
.L0803597E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08035988: .4byte 0x0203A8EC
    func_end func_0803589C

    thumb_func_start func_0803598C
func_0803598C: @ 0x0803598C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    adds r6, r1, #0
    movs r7, #0xff
    ldr r0, .L08035A1C @ =gActiveUnit
    ldr r0, [r0]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl MapFloodRange_Unitless
    ldr r0, .L08035A20 @ =0x0000FFFF
    strh r0, [r6]
    movs r4, #1
.L080359B8:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08035A08
    ldr r0, [r2]
    cmp r0, #0
    beq .L08035A08
    ldr r0, [r2, #0xc]
    ldr r1, .L08035A24 @ =0x00010025
    ands r0, r1
    cmp r0, #0
    bne .L08035A08
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r0, .L08035A28 @ =gBmMapRange
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r3, #0x10
    ldrsb r3, [r2, r3]
    ldr r0, [r1]
    adds r1, r0, r3
    ldrb r0, [r1]
    cmp r0, #0x78
    bhi .L08035A08
    ldr r0, [r2, #4]
    ldrb r0, [r0, #4]
    cmp r0, r8
    bne .L08035A08
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r7, r0
    blt .L08035A08
    ldrb r7, [r1]
    strh r3, [r6]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    strh r0, [r6, #2]
.L08035A08:
    adds r4, #1
    cmp r4, #0xbf
    ble .L080359B8
    movs r1, #0
    ldrsh r0, [r6, r1]
    cmp r0, #0
    bge .L08035A2C
    movs r0, #0
    b .L08035A2E
    .align 2, 0
.L08035A1C: .4byte gActiveUnit
.L08035A20: .4byte 0x0000FFFF
.L08035A24: .4byte 0x00010025
.L08035A28: .4byte gBmMapRange
.L08035A2C:
    movs r0, #1
.L08035A2E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0803598C

    thumb_func_start func_08035A38
func_08035A38: @ 0x08035A38
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp]
    str r1, [sp, #4]
    movs r0, #0xff
    str r0, [sp, #8]
    movs r1, #0
    str r1, [sp, #0x10]
    ldr r0, .L08035A78 @ =gActiveUnit
    ldr r0, [r0]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl MapFloodRange_Unitless
    ldr r2, .L08035A7C @ =0x0000FFFF
    str r2, [sp, #0xc]
    ldr r0, .L08035A80 @ =gBmMapSize
    ldrh r0, [r0, #2]
    subs r0, #1
    lsls r0, r0, #0x10
    b .L08035B0E
    .align 2, 0
.L08035A78: .4byte gActiveUnit
.L08035A7C: .4byte 0x0000FFFF
.L08035A80: .4byte gBmMapSize
.L08035A84:
    ldr r0, .L08035B20 @ =gBmMapSize
    ldrh r0, [r0]
    subs r0, #1
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    lsls r4, r6, #0x10
    lsls r1, r1, #0x10
    mov r8, r1
    cmp r4, #0
    blt .L08035B0A
    mov sl, r8
    ldr r0, .L08035B24 @ =gBmMapRange
    mov sb, r0
    asrs r7, r1, #0xe
.L08035AA0:
    mov r1, sb
    ldr r0, [r1]
    adds r0, r7, r0
    asrs r5, r4, #0x10
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08035AFC
    ldr r0, .L08035B28 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r2, r0, r5
    ldrb r1, [r2]
    cmp r1, #0
    beq .L08035AFC
    ldr r0, .L08035B2C @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    beq .L08035AFC
    adds r0, r1, #0
    bl GetUnit
    ldr r2, [sp]
    bl _call_via_r2
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08035AFC
    mov r1, sb
    ldr r0, [r1]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r2, [r0]
    ldr r1, [sp, #8]
    cmp r2, r1
    bhi .L08035AFC
    ldrb r0, [r0]
    str r0, [sp, #8]
    lsrs r4, r4, #0x10
    str r4, [sp, #0xc]
    mov r2, sl
    lsrs r2, r2, #0x10
    str r2, [sp, #0x10]
.L08035AFC:
    lsls r0, r6, #0x10
    ldr r1, .L08035B30 @ =0xFFFF0000
    adds r0, r0, r1
    lsrs r6, r0, #0x10
    lsls r4, r6, #0x10
    cmp r4, #0
    bge .L08035AA0
.L08035B0A:
    ldr r0, .L08035B30 @ =0xFFFF0000
    add r0, r8
.L08035B0E:
    lsrs r1, r0, #0x10
    cmp r0, #0
    bge .L08035A84
    ldr r2, [sp, #0xc]
    lsls r0, r2, #0x10
    cmp r0, #0
    bge .L08035B34
    movs r0, #0
    b .L08035B44
    .align 2, 0
.L08035B20: .4byte gBmMapSize
.L08035B24: .4byte gBmMapRange
.L08035B28: .4byte gBmMapUnit
.L08035B2C: .4byte gActiveUnitId
.L08035B30: .4byte 0xFFFF0000
.L08035B34:
    mov r0, sp
    ldrh r1, [r0, #0xc]
    ldr r0, [sp, #4]
    strh r1, [r0]
    mov r2, sp
    ldrh r2, [r2, #0x10]
    strh r2, [r0, #2]
    movs r0, #1
.L08035B44:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08035A38

    thumb_func_start func_08035B54
func_08035B54: @ 0x08035B54
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp]
    str r1, [sp, #4]
    movs r0, #0xff
    str r0, [sp, #8]
    movs r1, #0
    str r1, [sp, #0x10]
    ldr r0, .L08035B94 @ =gActiveUnit
    ldr r0, [r0]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803BF60
    ldr r2, .L08035B98 @ =0x0000FFFF
    str r2, [sp, #0xc]
    ldr r0, .L08035B9C @ =gBmMapSize
    ldrh r0, [r0, #2]
    subs r0, #1
    lsls r0, r0, #0x10
    b .L08035C2A
    .align 2, 0
.L08035B94: .4byte gActiveUnit
.L08035B98: .4byte 0x0000FFFF
.L08035B9C: .4byte gBmMapSize
.L08035BA0:
    ldr r0, .L08035C3C @ =gBmMapSize
    ldrh r0, [r0]
    subs r0, #1
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    lsls r4, r6, #0x10
    lsls r1, r1, #0x10
    mov r8, r1
    cmp r4, #0
    blt .L08035C26
    mov sl, r8
    ldr r0, .L08035C40 @ =gBmMapRange
    mov sb, r0
    asrs r7, r1, #0xe
.L08035BBC:
    mov r1, sb
    ldr r0, [r1]
    adds r0, r7, r0
    asrs r5, r4, #0x10
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08035C18
    ldr r0, .L08035C44 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r2, r0, r5
    ldrb r1, [r2]
    cmp r1, #0
    beq .L08035C18
    ldr r0, .L08035C48 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    beq .L08035C18
    adds r0, r1, #0
    bl GetUnit
    ldr r2, [sp]
    bl _call_via_r2
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08035C18
    mov r1, sb
    ldr r0, [r1]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r2, [r0]
    ldr r1, [sp, #8]
    cmp r2, r1
    bhi .L08035C18
    ldrb r0, [r0]
    str r0, [sp, #8]
    lsrs r4, r4, #0x10
    str r4, [sp, #0xc]
    mov r2, sl
    lsrs r2, r2, #0x10
    str r2, [sp, #0x10]
.L08035C18:
    lsls r0, r6, #0x10
    ldr r1, .L08035C4C @ =0xFFFF0000
    adds r0, r0, r1
    lsrs r6, r0, #0x10
    lsls r4, r6, #0x10
    cmp r4, #0
    bge .L08035BBC
.L08035C26:
    ldr r0, .L08035C4C @ =0xFFFF0000
    add r0, r8
.L08035C2A:
    lsrs r1, r0, #0x10
    cmp r0, #0
    bge .L08035BA0
    ldr r2, [sp, #0xc]
    lsls r0, r2, #0x10
    cmp r0, #0
    bge .L08035C50
    movs r0, #0
    b .L08035C60
    .align 2, 0
.L08035C3C: .4byte gBmMapSize
.L08035C40: .4byte gBmMapRange
.L08035C44: .4byte gBmMapUnit
.L08035C48: .4byte gActiveUnitId
.L08035C4C: .4byte 0xFFFF0000
.L08035C50:
    mov r0, sp
    ldrh r1, [r0, #0xc]
    ldr r0, [sp, #4]
    strh r1, [r0]
    mov r2, sp
    ldrh r2, [r2, #0x10]
    strh r2, [r0, #2]
    movs r0, #1
.L08035C60:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08035B54

    thumb_func_start func_08035C70
func_08035C70: @ 0x08035C70
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x14
    movs r0, #0
    mov r8, r0
    mov sb, r0
    ldr r0, .L08035C94 @ =gActiveUnit
    ldr r0, [r0]
    bl MapFloodUnit
    ldr r3, .L08035C98 @ =0x0000FFFF
    ldr r0, .L08035C9C @ =gBmMapSize
    ldrh r0, [r0, #2]
    subs r0, #1
    lsls r0, r0, #0x10
    b .L08035D0A
    .align 2, 0
.L08035C94: .4byte gActiveUnit
.L08035C98: .4byte 0x0000FFFF
.L08035C9C: .4byte gBmMapSize
.L08035CA0:
    ldr r0, .L08035D40 @ =gBmMapSize
    ldrh r0, [r0]
    subs r0, #1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    lsls r4, r5, #0x10
    lsls r7, r1, #0x10
    cmp r4, #0
    blt .L08035D06
    adds r2, r7, #0
    asrs r6, r7, #0xe
.L08035CB6:
    ldr r0, .L08035D44 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    asrs r1, r4, #0x10
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08035CF8
    ldr r0, .L08035D48 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08035CF8
    movs r0, #0x80
    lsls r0, r0, #1
    str r2, [sp, #0xc]
    str r3, [sp, #0x10]
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r2, [sp, #0xc]
    ldr r3, [sp, #0x10]
    cmp r0, r8
    blo .L08035CF8
    mov r8, r0
    lsrs r3, r4, #0x10
    lsrs r1, r2, #0x10
    mov sb, r1
.L08035CF8:
    lsls r0, r5, #0x10
    ldr r1, .L08035D4C @ =0xFFFF0000
    adds r0, r0, r1
    lsrs r5, r0, #0x10
    lsls r4, r5, #0x10
    cmp r4, #0
    bge .L08035CB6
.L08035D06:
    ldr r1, .L08035D4C @ =0xFFFF0000
    adds r0, r7, r1
.L08035D0A:
    lsrs r1, r0, #0x10
    cmp r0, #0
    bge .L08035CA0
    lsls r0, r3, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08035D30
    mov r0, sb
    lsls r1, r0, #0x10
    asrs r1, r1, #0x10
    movs r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    adds r0, r2, #0
    movs r2, #0
    movs r3, #0
    bl func_08034E50
.L08035D30:
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08035D40: .4byte gBmMapSize
.L08035D44: .4byte gBmMapMovement
.L08035D48: .4byte gBmMapUnit
.L08035D4C: .4byte 0xFFFF0000
    func_end func_08035C70

    thumb_func_start func_08035D50
func_08035D50: @ 0x08035D50
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    lsls r2, r2, #0x10
    lsrs r6, r2, #0x10
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    subs r3, r1, r0
    cmp r3, #0
    bge .L08035D6A
    subs r3, r0, r1
.L08035D6A:
    movs r2, #0x11
    ldrsb r2, [r4, r2]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    subs r0, r2, r1
    cmp r0, #0
    bge .L08035D7A
    subs r0, r1, r2
.L08035D7A:
    adds r5, r3, r0
    adds r0, r6, #0
    bl func_08017384
    movs r1, #0x1d
    ldrsb r1, [r4, r1]
    ldr r2, [r4, #4]
    ldrb r2, [r2, #0x12]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r1, r1, r2
    adds r1, r1, r0
    cmp r5, r1
    ble .L08035D9A
    movs r0, #0
    b .L08035D9C
.L08035D9A:
    movs r0, #1
.L08035D9C:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08035D50

    thumb_func_start AiCouldReachByBirdsEyeDistance
AiCouldReachByBirdsEyeDistance: @ 0x08035DA4
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    lsls r2, r2, #0x10
    lsrs r7, r2, #0x10
    movs r3, #0x10
    ldrsb r3, [r4, r3]
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    subs r1, r3, r0
    cmp r1, #0
    bge .L08035DBE
    subs r1, r0, r3
.L08035DBE:
    movs r2, #0x11
    ldrsb r2, [r4, r2]
    movs r0, #0x11
    ldrsb r0, [r5, r0]
    subs r3, r2, r0
    cmp r3, #0
    blt .L08035DD0
    adds r6, r1, r3
    b .L08035DD4
.L08035DD0:
    subs r0, r0, r2
    adds r6, r1, r0
.L08035DD4:
    adds r0, r7, #0
    bl func_08017384
    movs r1, #0x1d
    ldrsb r1, [r4, r1]
    ldr r2, [r4, #4]
    ldrb r2, [r2, #0x12]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r1, r1, r2
    movs r2, #0x1d
    ldrsb r2, [r5, r2]
    ldr r3, [r5, #4]
    ldrb r3, [r3, #0x12]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    adds r2, r2, r3
    adds r1, r1, r2
    adds r1, r1, r0
    cmp r6, r1
    ble .L08035E02
    movs r0, #0
    b .L08035E04
.L08035E02:
    movs r0, #1
.L08035E04:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end AiCouldReachByBirdsEyeDistance

    thumb_func_start func_08035E0C
func_08035E0C: @ 0x08035E0C
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    b .L08035E1C
.L08035E12:
    cmp r2, r1
    bne .L08035E1A
    movs r0, #1
    b .L08035E24
.L08035E1A:
    adds r0, #2
.L08035E1C:
    ldrh r2, [r0]
    cmp r2, #0
    bne .L08035E12
    movs r0, #0
.L08035E24:
    bx lr
    func_end func_08035E0C

    thumb_func_start func_08035E28
func_08035E28: @ 0x08035E28
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    b .L08035E38
.L08035E2E:
    cmp r2, r1
    bne .L08035E36
    movs r0, #1
    b .L08035E40
.L08035E36:
    adds r0, #1
.L08035E38:
    ldrb r2, [r0]
    cmp r2, #0
    bne .L08035E2E
    movs r0, #0
.L08035E40:
    bx lr
    func_end func_08035E28

    thumb_func_start func_08035E44
func_08035E44: @ 0x08035E44
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    str r0, [sp]
    mov r8, r1
    adds r7, r2, #0
    movs r0, #0xff
    mov sb, r0
    ldr r0, .L08035F20 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L08035F16
.L08035E66:
    ldr r0, .L08035F20 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r0, r5, #1
    mov sl, r0
    cmp r4, #0
    blt .L08035F10
    lsls r6, r5, #2
.L08035E78:
    ldr r0, .L08035F24 @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08035F0A
    ldr r0, .L08035F28 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    ldr r0, [sp]
    bl func_08035E28
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08035F0A
    movs r0, #1
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L08035ED0
    ldr r0, .L08035F2C @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08035ED0
    ldr r0, .L08035F30 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08035F0A
.L08035ED0:
    movs r0, #2
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L08035EEA
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    lsls r1, r5, #0x10
    asrs r1, r1, #0x10
    bl func_08036514
    cmp r0, #0
    bne .L08035F0A
.L08035EEA:
    ldr r0, .L08035F24 @ =gBmMapRange
    ldr r0, [r0]
    adds r1, r6, r0
    ldr r0, [r1]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp sb, r0
    ble .L08035F0A
    strh r4, [r7]
    strh r5, [r7, #2]
    ldr r0, [r1]
    adds r0, r0, r4
    ldrb r0, [r0]
    mov sb, r0
.L08035F0A:
    subs r4, #1
    cmp r4, #0
    bge .L08035E78
.L08035F10:
    mov r5, sl
    cmp r5, #0
    bge .L08035E66
.L08035F16:
    mov r0, sb
    cmp r0, #0xff
    bne .L08035F34
    movs r0, #0
    b .L08035F36
    .align 2, 0
.L08035F20: .4byte gBmMapSize
.L08035F24: .4byte gBmMapRange
.L08035F28: .4byte gBmMapTerrain
.L08035F2C: .4byte gBmMapUnit
.L08035F30: .4byte gActiveUnit
.L08035F34:
    movs r0, #1
.L08035F36:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08035E44

    thumb_func_start func_08035F48
func_08035F48: @ 0x08035F48
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    ldr r1, .L08035F80 @ =gBmMapRange
    ldr r0, [r1]
    lsls r2, r4, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x77
    bgt .L08035F7C
    ldr r0, .L08035F84 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r2, [r0]
    cmp r2, #0
    beq .L08035F8C
    ldr r0, .L08035F88 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r2, r0
    beq .L08035F8C
.L08035F7C:
    movs r0, #0xff
    b .L08035F98
    .align 2, 0
.L08035F80: .4byte gBmMapRange
.L08035F84: .4byte gBmMapUnit
.L08035F88: .4byte gActiveUnitId
.L08035F8C:
    ldr r1, [r1]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
.L08035F98:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08035F48

    thumb_func_start func_08035FA0
func_08035FA0: @ 0x08035FA0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp, #4]
    mov sl, r1
    mov sb, r2
    movs r0, #0xff
    str r0, [sp, #8]
    ldr r0, .L080360BC @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    blt .L080360B0
    mov r8, sp
.L08035FC4:
    ldr r0, .L080360BC @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r5, r0, #1
    subs r3, r6, #1
    str r3, [sp, #0xc]
    cmp r5, #0
    blt .L080360AA
    lsls r7, r6, #2
    str r7, [sp, #0x10]
.L08035FD8:
    ldr r0, .L080360C0 @ =gBmMapRange
    ldr r0, [r0]
    ldr r1, [sp, #0x10]
    adds r0, r1, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L080360A4
    ldr r0, .L080360C4 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r1, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r1, [r0]
    ldr r0, [sp, #4]
    bl func_08035E28
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080360A4
    movs r0, #1
    mov r2, sl
    ands r0, r2
    cmp r0, #0
    beq .L08036034
    ldr r0, .L080360C8 @ =gBmMapUnit
    ldr r0, [r0]
    ldr r3, [sp, #0x10]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r1, r0, r5
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08036034
    ldr r0, .L080360CC @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080360A4
.L08036034:
    movs r0, #2
    mov r7, sl
    ands r0, r7
    cmp r0, #0
    beq .L0803604E
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    bl func_08036514
    cmp r0, #0
    bne .L080360A4
.L0803604E:
    mov r4, sp
    adds r0, r5, #0
    adds r1, r6, #0
    ldr r2, .L080360D0 @ =func_08035F48
    mov r3, sp
    bl func_08036810
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080360A4
    movs r1, #2
    ldrsh r0, [r4, r1]
    ldr r1, .L080360C0 @ =gBmMapRange
    ldr r2, [r1]
    lsls r0, r0, #2
    adds r0, r0, r2
    mov r3, r8
    movs r7, #0
    ldrsh r1, [r3, r7]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r1, [sp, #8]
    cmp r1, r0
    ble .L080360A4
    ldrh r0, [r3]
    mov r3, sb
    strh r0, [r3]
    ldrh r0, [r4, #2]
    strh r0, [r3, #2]
    movs r7, #2
    ldrsh r0, [r4, r7]
    lsls r0, r0, #2
    adds r0, r0, r2
    mov r2, r8
    movs r3, #0
    ldrsh r1, [r2, r3]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    str r0, [sp, #8]
.L080360A4:
    subs r5, #1
    cmp r5, #0
    bge .L08035FD8
.L080360AA:
    ldr r6, [sp, #0xc]
    cmp r6, #0
    bge .L08035FC4
.L080360B0:
    ldr r7, [sp, #8]
    cmp r7, #0xff
    bne .L080360D4
    movs r0, #0
    b .L080360D6
    .align 2, 0
.L080360BC: .4byte gBmMapSize
.L080360C0: .4byte gBmMapRange
.L080360C4: .4byte gBmMapTerrain
.L080360C8: .4byte gBmMapUnit
.L080360CC: .4byte gActiveUnit
.L080360D0: .4byte func_08035F48
.L080360D4:
    movs r0, #1
.L080360D6:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08035FA0

    thumb_func_start func_080360E8
func_080360E8: @ 0x080360E8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    mov sl, r0
    mov r8, r1
    movs r0, #0xff
    str r0, [sp, #4]
    movs r1, #0
    str r1, [sp, #8]
    ldr r0, .L0803615C @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r7, r0, #1
    cmp r7, #0
    bge .L0803610E
    b .L080362D0
.L0803610E:
    movs r4, #1
    mov r0, sl
    ands r0, r4
    str r0, [sp, #0xc]
.L08036116:
    ldr r0, .L0803615C @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    bge .L08036124
    b .L080362C8
.L08036124:
    lsls r2, r7, #2
    mov sb, r2
    mov r5, sp
    movs r4, #2
    mov r0, sl
    ands r0, r4
    str r0, [sp, #0x10]
.L08036132:
    ldr r0, .L08036160 @ =gBmMapRange
    ldr r0, [r0]
    add r0, sb
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0x78
    bls .L08036144
    b .L080362C0
.L08036144:
    ldr r0, .L08036164 @ =gBmMapTerrain
    ldr r0, [r0]
    add r0, sb
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0x1e
    beq .L08036168
    cmp r0, #0x21
    beq .L08036198
    b .L080362C0
    .align 2, 0
.L0803615C: .4byte gBmMapSize
.L08036160: .4byte gBmMapRange
.L08036164: .4byte gBmMapTerrain
.L08036168:
    ldr r0, [sp, #8]
    adds r0, #1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #8]
    movs r0, #8
    mov r1, sl
    ands r0, r1
    cmp r0, #0
    beq .L0803617E
    b .L080362C0
.L0803617E:
    adds r0, r6, #0
    adds r1, r7, #0
    ldr r2, .L08036194 @ =func_08035F48
    mov r3, sp
    bl func_08036810
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08036192
    b .L080362C0
.L08036192:
    b .L08036234
    .align 2, 0
.L08036194: .4byte func_08035F48
.L08036198:
    ldr r0, [sp, #8]
    adds r0, #1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #8]
    movs r0, #4
    mov r2, sl
    ands r0, r2
    cmp r0, #0
    beq .L080361AE
    b .L080362C0
.L080361AE:
    strh r6, [r5]
    mov r4, sp
    strh r7, [r4, #2]
    ldr r0, .L08036228 @ =gBmMapMovement
    ldr r0, [r0]
    add r0, sb
    ldr r2, [r0]
    adds r2, r2, r6
    ldr r0, .L0803622C @ =gActiveUnit
    ldr r3, [r0]
    movs r1, #0x1d
    ldrsb r1, [r3, r1]
    ldr r0, [r3, #4]
    ldrb r0, [r0, #0x12]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r1, r0
    ldrb r2, [r2]
    cmp r2, r1
    bgt .L08036234
    ldr r0, [sp, #0xc]
    cmp r0, #0
    beq .L08036206
    movs r1, #2
    ldrsh r0, [r4, r1]
    ldr r1, .L08036230 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r5, r2]
    ldr r0, [r0]
    adds r1, r0, r1
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08036206
    movs r0, #0xb
    ldrsb r0, [r3, r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080362C0
.L08036206:
    ldr r4, [sp, #0x10]
    cmp r4, #0
    beq .L0803621C
    movs r1, #0
    ldrsh r0, [r5, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    bl func_08036514
    cmp r0, #0
    bne .L080362C0
.L0803621C:
    ldrh r0, [r5]
    mov r4, r8
    strh r0, [r4]
    ldrh r0, [r5, #2]
    strh r0, [r4, #2]
    b .L08036308
    .align 2, 0
.L08036228: .4byte gBmMapMovement
.L0803622C: .4byte gActiveUnit
.L08036230: .4byte gBmMapUnit
.L08036234:
    ldr r0, [sp, #0xc]
    cmp r0, #0
    beq .L0803626A
    movs r1, #2
    ldrsh r0, [r5, r1]
    ldr r1, .L080362F8 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r5, r2]
    ldr r0, [r0]
    adds r1, r0, r1
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803626A
    ldr r0, .L080362FC @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080362C0
.L0803626A:
    ldr r4, [sp, #0x10]
    cmp r4, #0
    beq .L08036280
    movs r1, #0
    ldrsh r0, [r5, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    bl func_08036514
    cmp r0, #0
    bne .L080362C0
.L08036280:
    mov r2, sp
    movs r4, #2
    ldrsh r0, [r2, r4]
    ldr r1, .L08036300 @ =gBmMapRange
    ldr r3, [r1]
    lsls r0, r0, #2
    adds r0, r0, r3
    movs r4, #0
    ldrsh r1, [r5, r4]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r1, [sp, #4]
    cmp r1, r0
    ble .L080362C0
    ldrh r0, [r5]
    mov r4, r8
    strh r0, [r4]
    ldrh r0, [r2, #2]
    strh r0, [r4, #2]
    movs r1, #2
    ldrsh r0, [r2, r1]
    lsls r0, r0, #2
    adds r0, r0, r3
    movs r2, #0
    ldrsh r1, [r5, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    str r0, [sp, #4]
.L080362C0:
    subs r6, #1
    cmp r6, #0
    blt .L080362C8
    b .L08036132
.L080362C8:
    subs r7, #1
    cmp r7, #0
    blt .L080362D0
    b .L08036116
.L080362D0:
    movs r0, #0
    cmp r0, #0
    bne .L080362DE
    ldr r0, .L08036304 @ =0x0203A8EC
    adds r0, #0x87
    movs r1, #1
    strb r1, [r0]
.L080362DE:
    ldr r4, [sp, #8]
    cmp r4, #0
    bne .L080362EC
    ldr r0, .L08036304 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #5
    strb r1, [r0]
.L080362EC:
    ldr r0, [sp, #4]
    cmp r0, #0xff
    bne .L08036308
    movs r0, #0
    b .L0803630A
    .align 2, 0
.L080362F8: .4byte gBmMapUnit
.L080362FC: .4byte gActiveUnit
.L08036300: .4byte gBmMapRange
.L08036304: .4byte 0x0203A8EC
.L08036308:
    movs r0, #1
.L0803630A:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080360E8

    thumb_func_start func_0803631C
func_0803631C: @ 0x0803631C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    movs r4, #0
    ldr r1, .L08036384 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    subs r2, r0, #1
    cmp r2, #0
    blt .L08036378
    movs r3, #0
    ldrsh r7, [r1, r3]
    ldr r0, .L08036388 @ =gBmMapRange
    mov r8, r0
    ldr r3, .L0803638C @ =gBmMapUnit
    mov ip, r3
.L0803633C:
    subs r1, r7, #1
    subs r5, r2, #1
    cmp r1, #0
    blt .L08036372
    mov r3, r8
    ldr r0, [r3]
    lsls r2, r2, #2
    adds r0, r2, r0
    ldr r3, [r0]
    mov r6, ip
.L08036350:
    adds r0, r3, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0803636C
    ldr r0, [r6]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803636C
    adds r4, #1
.L0803636C:
    subs r1, #1
    cmp r1, #0
    bge .L08036350
.L08036372:
    adds r2, r5, #0
    cmp r2, #0
    bge .L0803633C
.L08036378:
    adds r0, r4, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08036384: .4byte gBmMapSize
.L08036388: .4byte gBmMapRange
.L0803638C: .4byte gBmMapUnit
    func_end func_0803631C

    thumb_func_start func_08036390
func_08036390: @ 0x08036390
    push {r4, r5, r6, r7, lr}
    movs r6, #0
    ldr r0, .L080363FC @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L080363F2
.L080363A0:
    ldr r0, .L080363FC @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r7, r1, #1
    cmp r4, #0
    blt .L080363EC
    lsls r5, r1, #2
.L080363B0:
    ldr r0, .L08036400 @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L080363E6
    ldr r0, .L08036404 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L080363E6
    ldr r0, .L08036408 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080363E6
    adds r6, #1
.L080363E6:
    subs r4, #1
    cmp r4, #0
    bge .L080363B0
.L080363EC:
    adds r1, r7, #0
    cmp r1, #0
    bge .L080363A0
.L080363F2:
    adds r0, r6, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080363FC: .4byte gBmMapSize
.L08036400: .4byte gBmMapRange
.L08036404: .4byte gBmMapUnit
.L08036408: .4byte gActiveUnitId
    func_end func_08036390

    thumb_func_start func_0803640C
func_0803640C: @ 0x0803640C
    push {r4, r5, r6, r7, lr}
    movs r6, #0
    ldr r0, .L08036478 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L08036470
.L0803641C:
    ldr r0, .L08036478 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r7, r1, #1
    cmp r4, #0
    blt .L0803646A
    lsls r5, r1, #2
.L0803642C:
    ldr r0, .L0803647C @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08036464
    ldr r0, .L08036480 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08036464
    ldr r0, .L08036484 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08036464
    adds r6, #1
.L08036464:
    subs r4, #1
    cmp r4, #0
    bge .L0803642C
.L0803646A:
    adds r1, r7, #0
    cmp r1, #0
    bge .L0803641C
.L08036470:
    adds r0, r6, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08036478: .4byte gBmMapSize
.L0803647C: .4byte gBmMapRange
.L08036480: .4byte gBmMapUnit
.L08036484: .4byte gActiveUnitId
    func_end func_0803640C

    thumb_func_start func_08036488
func_08036488: @ 0x08036488
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    movs r6, #0
    ldr r4, .L08036504 @ =0x08B97034
    subs r4, #4
    movs r2, #0
    ldrsh r0, [r4, r2]
    ldr r2, .L08036508 @ =0x0000270F
    cmp r0, r2
    beq .L080364F6
    lsls r0, r3, #0x10
    asrs r0, r0, #0x10
    mov ip, r0
    ldr r5, .L0803650C @ =gBmMapSize
    lsls r0, r1, #0x10
    asrs r7, r0, #0x10
    mov sb, r2
    ldr r0, .L08036510 @ =gBmMapUnit
    mov r8, r0
.L080364BA:
    adds r4, #4
    movs r1, #0
    ldrsh r0, [r4, r1]
    mov r2, ip
    adds r3, r2, r0
    movs r1, #0
    ldrsh r0, [r5, r1]
    cmp r3, r0
    bge .L080364EE
    movs r2, #2
    ldrsh r0, [r4, r2]
    adds r2, r7, r0
    movs r1, #2
    ldrsh r0, [r5, r1]
    cmp r2, r0
    bge .L080364EE
    mov r0, r8
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0
    beq .L080364EE
    adds r6, #1
.L080364EE:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, sb
    bne .L080364BA
.L080364F6:
    adds r0, r6, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08036504: .4byte 0x08B97034
.L08036508: .4byte 0x0000270F
.L0803650C: .4byte gBmMapSize
.L08036510: .4byte gBmMapUnit
    func_end func_08036488

    thumb_func_start func_08036514
func_08036514: @ 0x08036514
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    movs r6, #0
    ldr r4, .L0803659C @ =0x08B97034
    subs r4, #4
    movs r2, #0
    ldrsh r0, [r4, r2]
    ldr r2, .L080365A0 @ =0x0000270F
    cmp r0, r2
    beq .L0803658E
    lsls r0, r3, #0x10
    asrs r0, r0, #0x10
    mov r8, r0
    ldr r5, .L080365A4 @ =gBmMapSize
    lsls r0, r1, #0x10
    asrs r7, r0, #0x10
    mov sb, r2
.L08036542:
    adds r4, #4
    movs r1, #0
    ldrsh r0, [r4, r1]
    mov r2, r8
    adds r3, r2, r0
    movs r1, #0
    ldrsh r0, [r5, r1]
    cmp r3, r0
    bge .L08036586
    movs r2, #2
    ldrsh r0, [r4, r2]
    adds r2, r7, r0
    movs r1, #2
    ldrsh r0, [r5, r1]
    cmp r2, r0
    bge .L08036586
    ldr r0, .L080365A8 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r1, r0, r3
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08036586
    ldr r0, .L080365AC @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08036586
    adds r6, #1
.L08036586:
    movs r2, #0
    ldrsh r0, [r4, r2]
    cmp r0, sb
    bne .L08036542
.L0803658E:
    adds r0, r6, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803659C: .4byte 0x08B97034
.L080365A0: .4byte 0x0000270F
.L080365A4: .4byte gBmMapSize
.L080365A8: .4byte gBmMapUnit
.L080365AC: .4byte gActiveUnitId
    func_end func_08036514

    thumb_func_start func_080365B0
func_080365B0: @ 0x080365B0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    movs r6, #0
    ldr r4, .L0803663C @ =0x08B97034
    subs r4, #4
    movs r2, #0
    ldrsh r0, [r4, r2]
    ldr r2, .L08036640 @ =0x0000270F
    cmp r0, r2
    beq .L0803662C
    lsls r0, r3, #0x10
    asrs r0, r0, #0x10
    mov r8, r0
    ldr r5, .L08036644 @ =gBmMapSize
    lsls r0, r1, #0x10
    asrs r7, r0, #0x10
    mov sb, r2
.L080365DE:
    adds r4, #4
    movs r1, #0
    ldrsh r0, [r4, r1]
    mov r2, r8
    adds r3, r2, r0
    movs r1, #0
    ldrsh r0, [r5, r1]
    cmp r3, r0
    bge .L08036624
    movs r2, #2
    ldrsh r0, [r4, r2]
    adds r2, r7, r0
    movs r1, #2
    ldrsh r0, [r5, r1]
    cmp r2, r0
    bge .L08036624
    ldr r0, .L08036648 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r1, r0, r3
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08036624
    ldr r0, .L0803664C @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08036624
    adds r6, #1
.L08036624:
    movs r2, #0
    ldrsh r0, [r4, r2]
    cmp r0, sb
    bne .L080365DE
.L0803662C:
    adds r0, r6, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803663C: .4byte 0x08B97034
.L08036640: .4byte 0x0000270F
.L08036644: .4byte gBmMapSize
.L08036648: .4byte gBmMapUnit
.L0803664C: .4byte gActiveUnitId
    func_end func_080365B0

    thumb_func_start AiMakeMoveRangeMapsForUnitAndWeapon
AiMakeMoveRangeMapsForUnitAndWeapon: @ 0x08036650
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov sb, r1
    bl MapFloodUnit
    ldr r0, .L080366E4 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L080366E8 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r7, r0, #1
    cmp r7, #0
    blt .L080366D4
.L0803667A:
    ldr r0, .L080366E8 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    subs r0, r7, #1
    mov sl, r0
    cmp r6, #0
    blt .L080366CE
    lsls r1, r7, #0x10
    mov r8, r1
.L0803668E:
    ldr r0, .L080366EC @ =gBmMapMovement
    ldr r1, [r0]
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L080366C8
    lsls r5, r6, #0x10
    asrs r5, r5, #0x10
    mov r0, sb
    bl func_0801736C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    mov r0, sb
    bl func_08017384
    adds r3, r0, #0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r5, #0
    mov r2, r8
    asrs r1, r2, #0x10
    adds r2, r4, #0
    bl func_0801B19C
.L080366C8:
    subs r6, #1
    cmp r6, #0
    bge .L0803668E
.L080366CE:
    mov r7, sl
    cmp r7, #0
    bge .L0803667A
.L080366D4:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080366E4: .4byte gBmMapRange
.L080366E8: .4byte gBmMapSize
.L080366EC: .4byte gBmMapMovement
    func_end AiMakeMoveRangeMapsForUnitAndWeapon

    thumb_func_start func_080366F0
func_080366F0: @ 0x080366F0
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    bl GetUnitPower
    cmp r0, #0x14
    bgt .L08036706
    adds r0, r4, #0
    bl GetUnitPower
    adds r7, r0, #0
    b .L08036708
.L08036706:
    movs r7, #0x14
.L08036708:
    adds r0, r4, #0
    bl MapFloodUnit
    ldr r0, .L08036764 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L08036768 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0803675C
.L08036724:
    ldr r0, .L08036768 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r6, r5, #1
    cmp r4, #0
    blt .L08036756
.L08036732:
    ldr r0, .L0803676C @ =gBmMapMovement
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08036750
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #1
    bl MapAddInRange
.L08036750:
    subs r4, #1
    cmp r4, #0
    bge .L08036732
.L08036756:
    adds r5, r6, #0
    cmp r5, #0
    bge .L08036724
.L0803675C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08036764: .4byte gBmMapRange
.L08036768: .4byte gBmMapSize
.L0803676C: .4byte gBmMapMovement
    func_end func_080366F0

    thumb_func_start func_08036770
func_08036770: @ 0x08036770
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov sb, r1
    bl MapFloodUnit
    ldr r0, .L08036804 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L08036808 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r7, r0, #1
    cmp r7, #0
    blt .L080367F4
.L0803679A:
    ldr r0, .L08036808 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    subs r0, r7, #1
    mov sl, r0
    cmp r6, #0
    blt .L080367EE
    lsls r1, r7, #0x10
    mov r8, r1
.L080367AE:
    ldr r0, .L0803680C @ =gBmMapMovement
    ldr r1, [r0]
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L080367E8
    lsls r5, r6, #0x10
    asrs r5, r5, #0x10
    mov r0, sb
    bl func_0801736C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    mov r0, sb
    bl func_08017384
    adds r3, r0, #0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r5, #0
    mov r2, r8
    asrs r1, r2, #0x10
    adds r2, r4, #0
    bl func_0801B19C
.L080367E8:
    subs r6, #1
    cmp r6, #0
    bge .L080367AE
.L080367EE:
    mov r7, sl
    cmp r7, #0
    bge .L0803679A
.L080367F4:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08036804: .4byte gBmMapRange
.L08036808: .4byte gBmMapSize
.L0803680C: .4byte gBmMapMovement
    func_end func_08036770

    thumb_func_start func_08036810
func_08036810: @ 0x08036810
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0xc
    adds r7, r0, #0
    adds r6, r1, #0
    adds r5, r3, #0
    mov sb, r2
    movs r0, #0xff
    mov r8, r0
    ldr r1, .L08036878 @ =0x081D3670
    mov r0, sp
    movs r2, #8
    bl memcpy
    mov r4, sp
    movs r2, #3
.L08036834:
    movs r0, #0
    ldrsb r0, [r4, r0]
    adds r0, r7, r0
    movs r1, #1
    ldrsb r1, [r4, r1]
    adds r1, r6, r1
    str r2, [sp, #8]
    bl _call_via_r9
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r2, [sp, #8]
    cmp r0, #0xff
    beq .L08036866
    cmp r8, r0
    bls .L08036866
    mov r8, r0
    movs r0, #0
    ldrsb r0, [r4, r0]
    adds r0, r0, r7
    strh r0, [r5]
    movs r0, #1
    ldrsb r0, [r4, r0]
    adds r0, r0, r6
    strh r0, [r5, #2]
.L08036866:
    adds r4, #2
    subs r2, #1
    cmp r2, #0
    bge .L08036834
    mov r0, r8
    cmp r0, #0xff
    bne .L0803687C
    movs r0, #0
    b .L0803687E
    .align 2, 0
.L08036878: .4byte 0x081D3670
.L0803687C:
    movs r0, #1
.L0803687E:
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08036810

    thumb_func_start func_0803688C
func_0803688C: @ 0x0803688C
    push {r4, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    movs r0, #0
    ldr r2, .L080368B8 @ =0x08B97290
    ldrh r1, [r2]
    ldr r3, .L080368BC @ =0x0000FFFF
    cmp r1, r3
    beq .L080368AC
.L0803689E:
    cmp r1, r4
    beq .L080368B0
    adds r2, #2
    adds r0, #1
    ldrh r1, [r2]
    cmp r1, r3
    bne .L0803689E
.L080368AC:
    movs r0, #1
    rsbs r0, r0, #0
.L080368B0:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080368B8: .4byte 0x08B97290
.L080368BC: .4byte 0x0000FFFF
    func_end func_0803688C

    thumb_func_start func_080368C0
func_080368C0: @ 0x080368C0
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    movs r6, #0xff
    movs r5, #0xff
    movs r4, #0
.L080368CA:
    lsls r1, r4, #1
    adds r0, r7, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r1, [r0]
    cmp r1, #0
    beq .L080368F6
    movs r0, #0xff
    ands r1, r0
    adds r0, r1, #0
    bl func_0803688C
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r6, r0
    blo .L080368F0
    adds r6, r0, #0
    lsls r0, r4, #0x18
    lsrs r5, r0, #0x18
.L080368F0:
    adds r4, #1
    cmp r4, #4
    ble .L080368CA
.L080368F6:
    lsls r0, r5, #0x18
    asrs r0, r0, #0x18
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080368C0

    thumb_func_start func_08036900
func_08036900: @ 0x08036900
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r5, r0, #0
    mov sb, r1
    movs r0, #0xff
    mov sl, r0
    ldr r1, .L08036944 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0803694C
    ldr r4, .L08036948 @ =gBmMapMovement
    ldr r0, [r4]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    movs r0, #0x11
    ldrsb r0, [r5, r0]
    ldr r1, [r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r5, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r1, #0
    strb r1, [r0]
    b .L08036952
    .align 2, 0
.L08036944: .4byte 0x0203A8EC
.L08036948: .4byte gBmMapMovement
.L0803694C:
    adds r0, r5, #0
    bl MapFloodUnit
.L08036952:
    ldr r1, .L080369D0 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    subs r5, r0, #1
    cmp r5, #0
    blt .L080369C6
.L0803695E:
    ldr r1, .L080369D0 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r1, r2]
    subs r3, r0, #1
    subs r0, r5, #1
    mov r8, r0
    cmp r3, #0
    blt .L080369C0
    lsls r4, r5, #2
    ldr r1, .L080369D4 @ =gBmMapMovement
    mov ip, r1
    ldr r7, .L080369D8 @ =gBmMapUnit
    ldr r6, .L080369DC @ =gActiveUnitId
    ldr r1, .L080369E0 @ =gBmMapOther
.L0803697A:
    mov r2, ip
    ldr r0, [r2]
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L080369BA
    ldr r0, [r7]
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803699E
    ldrb r2, [r6]
    cmp r0, r2
    bne .L080369BA
.L0803699E:
    ldr r0, [r1]
    adds r2, r4, r0
    ldr r0, [r2]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp sl, r0
    blo .L080369BA
    mov r0, sb
    strh r3, [r0]
    strh r5, [r0, #2]
    ldr r0, [r2]
    adds r0, r0, r3
    ldrb r0, [r0]
    mov sl, r0
.L080369BA:
    subs r3, #1
    cmp r3, #0
    bge .L0803697A
.L080369C0:
    mov r5, r8
    cmp r5, #0
    bge .L0803695E
.L080369C6:
    mov r1, sl
    cmp r1, #0xff
    bne .L080369E4
    movs r0, #0
    b .L080369E6
    .align 2, 0
.L080369D0: .4byte gBmMapSize
.L080369D4: .4byte gBmMapMovement
.L080369D8: .4byte gBmMapUnit
.L080369DC: .4byte gActiveUnitId
.L080369E0: .4byte gBmMapOther
.L080369E4:
    movs r0, #1
.L080369E6:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08036900

    thumb_func_start func_080369F4
func_080369F4: @ 0x080369F4
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r4, r1, #0
    ldr r5, .L08036A74 @ =gActiveUnit
    ldr r0, [r5]
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L08036A78 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    ldr r2, [r5]
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    movs r3, #0xb
    ldrsb r3, [r2, r3]
    movs r2, #0x7c
    bl BeginMapFlood
    adds r0, r4, #0
    bl func_08036A8C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r6, .L08036A7C @ =0x08B97098
    cmp r0, #1
    bne .L08036A34
    ldr r6, .L08036A80 @ =0x08B9709C
.L08036A34:
    adds r0, r6, #0
    movs r1, #1
    adds r2, r7, #0
    bl func_08035E44
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08036A84
    ldr r0, [r5]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl MapFloodRange_Unitless
    adds r0, r6, #0
    movs r1, #0
    adds r2, r7, #0
    bl func_08035E44
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08036A84
    movs r0, #0
    b .L08036A86
    .align 2, 0
.L08036A74: .4byte gActiveUnit
.L08036A78: .4byte gBmMapRange
.L08036A7C: .4byte 0x08B97098
.L08036A80: .4byte 0x08B9709C
.L08036A84:
    movs r0, #1
.L08036A86:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080369F4

    thumb_func_start func_08036A8C
func_08036A8C: @ 0x08036A8C
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    movs r5, #0
    strb r5, [r6]
    ldr r4, .L08036AAC @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitItemCount
    cmp r0, #5
    bne .L08036AB4
    ldr r1, [r4]
    movs r0, #8
    ldrb r2, [r1, #0xa]
    orrs r0, r2
    strb r0, [r1, #0xa]
    b .L08036AF6
    .align 2, 0
.L08036AAC: .4byte gActiveUnit
.L08036AB0:
    movs r0, #1
    b .L08036AF8
.L08036AB4:
    movs r5, #0
    adds r7, r4, #0
.L08036AB8:
    ldr r0, [r7]
    lsls r1, r5, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    beq .L08036AF6
    strb r5, [r6]
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x68
    beq .L08036AB0
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x6a
    bne .L08036AF0
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r0, [r0, #4]
    ldr r1, [r1, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #4
    ands r1, r0
    cmp r1, #0
    bne .L08036AB0
.L08036AF0:
    adds r5, #1
    cmp r5, #4
    ble .L08036AB8
.L08036AF6:
    movs r0, #0
.L08036AF8:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08036A8C

    thumb_func_start func_08036B00
func_08036B00: @ 0x08036B00
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    ldr r4, [sp, #0x38]
    lsls r0, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r6, r1, #0x10
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp, #0xc]
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    mov sl, r3
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    movs r1, #0
    str r1, [sp, #0x14]
    ldr r1, .L08036B5C @ =gActiveUnit
    ldr r1, [r1]
    movs r2, #0x10
    ldrsb r2, [r1, r2]
    lsrs r5, r0, #0x10
    asrs r0, r0, #0x10
    cmp r2, r0
    bne .L08036B60
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r0, r6, #0x10
    asrs r0, r0, #0x10
    cmp r1, r0
    bne .L08036B60
    ldr r0, [sp, #0x14]
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    adds r0, r2, #0
    ldr r2, [sp, #0xc]
    movs r3, #0
    bl func_08034E50
    b .L08036CB8
    .align 2, 0
.L08036B5C: .4byte gActiveUnit
.L08036B60:
    cmp r4, #0
    beq .L08036B84
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    lsls r4, r6, #0x10
    asrs r4, r4, #0x10
    ldr r0, .L08036B80 @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl MapFloodRange_Unitless
    b .L08036B94
    .align 2, 0
.L08036B80: .4byte gActiveUnit
.L08036B84:
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    ldr r2, .L08036BC4 @ =gActiveUnit
    ldr r2, [r2]
    bl func_0803C0FC
.L08036B94:
    ldr r4, .L08036BC4 @ =gActiveUnit
    ldr r0, [r4]
    bl MapFloodUnit
    ldr r2, [r4]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, .L08036BC8 @ =gBmMapRange
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    mov sb, r0
    ldr r1, .L08036BCC @ =0x0000FFFF
    str r1, [sp, #0x10]
    ldr r0, .L08036BD0 @ =gBmMapSize
    ldrh r0, [r0, #2]
    subs r0, #1
    lsls r0, r0, #0x10
    b .L08036C90
    .align 2, 0
.L08036BC4: .4byte gActiveUnit
.L08036BC8: .4byte gBmMapRange
.L08036BCC: .4byte 0x0000FFFF
.L08036BD0: .4byte gBmMapSize
.L08036BD4:
    ldr r0, .L08036CC8 @ =gBmMapSize
    ldrh r0, [r0]
    subs r0, #1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r1, r4, #0x10
    lsls r7, r2, #0x10
    cmp r1, #0
    blt .L08036C8C
    asrs r0, r7, #0xe
    mov r8, r0
.L08036BEA:
    ldr r0, .L08036CCC @ =gBmMapMovement
    ldr r0, [r0]
    add r0, r8
    asrs r3, r1, #0x10
    ldr r0, [r0]
    adds r0, r0, r3
    lsls r2, r4, #0x10
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08036C80
    ldr r0, .L08036CD0 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r1, [r0]
    cmp r1, #0
    beq .L08036C16
    ldr r0, .L08036CD4 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L08036C80
.L08036C16:
    mov r1, sl
    cmp r1, #0
    bne .L08036C4A
    ldr r0, .L08036CD8 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x1d
    ldrsb r1, [r0, r1]
    ldr r0, [r0, #4]
    ldrb r0, [r0, #0x12]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r1, r0
    ldr r0, .L08036CDC @ =0x0203A8EC
    adds r0, #0x85
    ldrb r0, [r0]
    cmp r1, r0
    bge .L08036C4A
    ldr r0, .L08036CE0 @ =gBmMapOther
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r2, r4, #0x10
    cmp r0, #0
    bne .L08036C80
.L08036C4A:
    lsls r4, r4, #0x10
    asrs r6, r4, #0x10
    asrs r5, r7, #0x10
    adds r0, r6, #0
    adds r1, r5, #0
    mov r2, sl
    bl func_08039510
    lsls r0, r0, #0x18
    adds r2, r4, #0
    cmp r0, #0
    beq .L08036C80
    ldr r0, .L08036CE4 @ =gBmMapRange
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r1, [r0]
    cmp r1, sb
    bhi .L08036C80
    ldrb r0, [r0]
    mov sb, r0
    lsrs r0, r2, #0x10
    str r0, [sp, #0x10]
    lsrs r1, r7, #0x10
    str r1, [sp, #0x14]
.L08036C80:
    ldr r1, .L08036CE8 @ =0xFFFF0000
    adds r0, r2, r1
    lsrs r4, r0, #0x10
    lsls r1, r4, #0x10
    cmp r1, #0
    bge .L08036BEA
.L08036C8C:
    ldr r1, .L08036CE8 @ =0xFFFF0000
    adds r0, r7, r1
.L08036C90:
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L08036BD4
    ldr r1, [sp, #0x10]
    lsls r0, r1, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08036CB8
    ldr r0, [sp, #0x14]
    lsls r1, r0, #0x10
    asrs r1, r1, #0x10
    movs r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    adds r0, r2, #0
    ldr r2, [sp, #0xc]
    movs r3, #0
    bl func_08034E50
.L08036CB8:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08036CC8: .4byte gBmMapSize
.L08036CCC: .4byte gBmMapMovement
.L08036CD0: .4byte gBmMapUnit
.L08036CD4: .4byte gActiveUnitId
.L08036CD8: .4byte gActiveUnit
.L08036CDC: .4byte 0x0203A8EC
.L08036CE0: .4byte gBmMapOther
.L08036CE4: .4byte gBmMapRange
.L08036CE8: .4byte 0xFFFF0000
    func_end func_08036B00

    thumb_func_start func_08036CEC
func_08036CEC: @ 0x08036CEC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    ldr r4, [sp, #0x38]
    lsls r0, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r6, r1, #0x10
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp, #0xc]
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    mov sl, r3
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    movs r1, #0
    str r1, [sp, #0x14]
    ldr r1, .L08036D48 @ =gActiveUnit
    ldr r1, [r1]
    movs r2, #0x10
    ldrsb r2, [r1, r2]
    lsrs r5, r0, #0x10
    asrs r0, r0, #0x10
    cmp r2, r0
    bne .L08036D4C
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r0, r6, #0x10
    asrs r0, r0, #0x10
    cmp r1, r0
    bne .L08036D4C
    ldr r0, [sp, #0x14]
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    adds r0, r2, #0
    ldr r2, [sp, #0xc]
    movs r3, #0
    bl func_08034E50
    b .L08036EA4
    .align 2, 0
.L08036D48: .4byte gActiveUnit
.L08036D4C:
    cmp r4, #0
    beq .L08036D70
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    lsls r4, r6, #0x10
    asrs r4, r4, #0x10
    ldr r0, .L08036D6C @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_0803BF60
    b .L08036D80
    .align 2, 0
.L08036D6C: .4byte gActiveUnit
.L08036D70:
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    ldr r2, .L08036DB0 @ =gActiveUnit
    ldr r2, [r2]
    bl func_0803BF8C
.L08036D80:
    ldr r4, .L08036DB0 @ =gActiveUnit
    ldr r0, [r4]
    bl MapFloodUnit
    ldr r2, [r4]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, .L08036DB4 @ =gBmMapRange
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    mov sb, r0
    ldr r1, .L08036DB8 @ =0x0000FFFF
    str r1, [sp, #0x10]
    ldr r0, .L08036DBC @ =gBmMapSize
    ldrh r0, [r0, #2]
    subs r0, #1
    lsls r0, r0, #0x10
    b .L08036E7C
    .align 2, 0
.L08036DB0: .4byte gActiveUnit
.L08036DB4: .4byte gBmMapRange
.L08036DB8: .4byte 0x0000FFFF
.L08036DBC: .4byte gBmMapSize
.L08036DC0:
    ldr r0, .L08036EB4 @ =gBmMapSize
    ldrh r0, [r0]
    subs r0, #1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r1, r4, #0x10
    lsls r7, r2, #0x10
    cmp r1, #0
    blt .L08036E78
    asrs r0, r7, #0xe
    mov r8, r0
.L08036DD6:
    ldr r0, .L08036EB8 @ =gBmMapMovement
    ldr r0, [r0]
    add r0, r8
    asrs r3, r1, #0x10
    ldr r0, [r0]
    adds r0, r0, r3
    lsls r2, r4, #0x10
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08036E6C
    ldr r0, .L08036EBC @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r1, [r0]
    cmp r1, #0
    beq .L08036E02
    ldr r0, .L08036EC0 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L08036E6C
.L08036E02:
    mov r1, sl
    cmp r1, #0
    bne .L08036E36
    ldr r0, .L08036EC4 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x1d
    ldrsb r1, [r0, r1]
    ldr r0, [r0, #4]
    ldrb r0, [r0, #0x12]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, r1, r0
    ldr r0, .L08036EC8 @ =0x0203A8EC
    adds r0, #0x85
    ldrb r0, [r0]
    cmp r1, r0
    bge .L08036E36
    ldr r0, .L08036ECC @ =gBmMapOther
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r2, r4, #0x10
    cmp r0, #0
    bne .L08036E6C
.L08036E36:
    lsls r4, r4, #0x10
    asrs r6, r4, #0x10
    asrs r5, r7, #0x10
    adds r0, r6, #0
    adds r1, r5, #0
    mov r2, sl
    bl func_08039510
    lsls r0, r0, #0x18
    adds r2, r4, #0
    cmp r0, #0
    beq .L08036E6C
    ldr r0, .L08036ED0 @ =gBmMapRange
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r1, [r0]
    cmp r1, sb
    bhi .L08036E6C
    ldrb r0, [r0]
    mov sb, r0
    lsrs r0, r2, #0x10
    str r0, [sp, #0x10]
    lsrs r1, r7, #0x10
    str r1, [sp, #0x14]
.L08036E6C:
    ldr r1, .L08036ED4 @ =0xFFFF0000
    adds r0, r2, r1
    lsrs r4, r0, #0x10
    lsls r1, r4, #0x10
    cmp r1, #0
    bge .L08036DD6
.L08036E78:
    ldr r1, .L08036ED4 @ =0xFFFF0000
    adds r0, r7, r1
.L08036E7C:
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L08036DC0
    ldr r1, [sp, #0x10]
    lsls r0, r1, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08036EA4
    ldr r0, [sp, #0x14]
    lsls r1, r0, #0x10
    asrs r1, r1, #0x10
    movs r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    adds r0, r2, #0
    ldr r2, [sp, #0xc]
    movs r3, #0
    bl func_08034E50
.L08036EA4:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08036EB4: .4byte gBmMapSize
.L08036EB8: .4byte gBmMapMovement
.L08036EBC: .4byte gBmMapUnit
.L08036EC0: .4byte gActiveUnitId
.L08036EC4: .4byte gActiveUnit
.L08036EC8: .4byte 0x0203A8EC
.L08036ECC: .4byte gBmMapOther
.L08036ED0: .4byte gBmMapRange
.L08036ED4: .4byte 0xFFFF0000
    func_end func_08036CEC

    thumb_func_start AiGetUnitClosestValidPosition
AiGetUnitClosestValidPosition: @ 0x08036ED8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    str r0, [sp, #8]
    adds r6, r3, #0
    lsls r1, r1, #0x10
    lsls r2, r2, #0x10
    lsrs r3, r2, #0x10
    asrs r5, r2, #0x10
    ldr r2, .L08036F2C @ =gBmMapUnit
    ldr r0, [r2]
    lsls r2, r5, #2
    adds r0, r2, r0
    lsrs r4, r1, #0x10
    mov r8, r4
    asrs r4, r1, #0x10
    ldr r1, [r0]
    adds r1, r1, r4
    ldr r7, .L08036F30 @ =gBmMapOther
    ldr r0, [r7]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r1]
    ldrb r0, [r0]
    orrs r1, r0
    ldr r0, .L08036F34 @ =gBmMapHidden
    ldr r0, [r0]
    adds r2, r2, r0
    ldr r0, [r2]
    adds r0, r0, r4
    ldrb r0, [r0]
    orrs r1, r0
    cmp r1, #0
    bne .L08036F38
    mov r1, r8
    strh r1, [r6]
    strh r3, [r6, #2]
    b .L08037030
    .align 2, 0
.L08036F2C: .4byte gBmMapUnit
.L08036F30: .4byte gBmMapOther
.L08036F34: .4byte gBmMapHidden
.L08036F38:
    ldr r0, [sp, #8]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl MapFloodRange_Unitless
    ldr r0, [sp, #8]
    bl MapFloodUnitExtended
    movs r2, #0x7c
    str r2, [sp]
    ldr r0, .L08036F60 @ =0x0000FFFF
    strh r0, [r6]
    ldr r1, .L08036F64 @ =gBmMapSize
    ldrh r0, [r1, #2]
    subs r0, #1
    lsls r0, r0, #0x10
    b .L08036FFE
    .align 2, 0
.L08036F60: .4byte 0x0000FFFF
.L08036F64: .4byte gBmMapSize
.L08036F68:
    ldr r4, .L08037014 @ =gBmMapSize
    ldrh r0, [r4]
    subs r0, #1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r1, r4, #0x10
    lsls r7, r5, #0x10
    str r7, [sp, #8]
    cmp r1, #0
    blt .L08036FF8
    asrs r3, r7, #0xe
    ldr r0, .L08037018 @ =gBmMapMovement
    str r0, [sp, #4]
    ldr r2, .L0803701C @ =gBmMapUnit
    mov sl, r2
    ldr r7, .L08037020 @ =gBmMapOther
    mov sb, r7
    ldr r0, .L08037024 @ =gBmMapHidden
    mov r8, r0
    ldr r2, .L08037028 @ =gBmMapRange
    mov ip, r2
.L08036F92:
    ldr r7, [sp, #4]
    ldr r0, [r7]
    adds r0, r3, r0
    asrs r2, r1, #0x10
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08036FEA
    mov r1, sl
    ldr r0, [r1]
    adds r0, r3, r0
    ldr r1, [r0]
    adds r1, r1, r2
    mov r7, sb
    ldr r0, [r7]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r1, [r1]
    ldrb r0, [r0]
    orrs r1, r0
    mov r7, r8
    ldr r0, [r7]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    orrs r1, r0
    cmp r1, #0
    bne .L08036FEA
    mov r1, ip
    ldr r0, [r1]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r2, [r0]
    ldr r7, [sp]
    cmp r2, r7
    bhi .L08036FEA
    ldrb r0, [r0]
    str r0, [sp]
    strh r4, [r6]
    strh r5, [r6, #2]
.L08036FEA:
    lsls r0, r4, #0x10
    ldr r1, .L0803702C @ =0xFFFF0000
    adds r0, r0, r1
    lsrs r4, r0, #0x10
    lsls r1, r4, #0x10
    cmp r1, #0
    bge .L08036F92
.L08036FF8:
    ldr r2, [sp, #8]
    ldr r4, .L0803702C @ =0xFFFF0000
    adds r0, r2, r4
.L08036FFE:
    lsrs r5, r0, #0x10
    cmp r0, #0
    bge .L08036F68
    movs r7, #0
    ldrsh r1, [r6, r7]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08037030
    movs r0, #0
    b .L08037032
    .align 2, 0
.L08037014: .4byte gBmMapSize
.L08037018: .4byte gBmMapMovement
.L0803701C: .4byte gBmMapUnit
.L08037020: .4byte gBmMapOther
.L08037024: .4byte gBmMapHidden
.L08037028: .4byte gBmMapRange
.L0803702C: .4byte 0xFFFF0000
.L08037030:
    movs r0, #1
.L08037032:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end AiGetUnitClosestValidPosition

    thumb_func_start func_08037044
func_08037044: @ 0x08037044
    push {r4, lr}
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    movs r3, #0
    ldr r2, .L08037050 @ =0x08B970C8
    b .L0803706C
    .align 2, 0
.L08037050: .4byte 0x08B970C8
.L08037054:
    ldr r1, [r2]
    b .L0803705E
.L08037058:
    cmp r0, r4
    beq .L08037072
    adds r1, #1
.L0803705E:
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08037058
    adds r0, r3, #1
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    adds r2, #4
.L0803706C:
    ldr r0, [r2]
    cmp r0, #0
    bne .L08037054
.L08037072:
    adds r0, r3, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08037044

    thumb_func_start func_0803707C
func_0803707C: @ 0x0803707C
    push {r4, r5, lr}
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    movs r4, #1
.L08037084:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L080370B8
    ldr r0, [r1]
    cmp r0, #0
    beq .L080370B8
    ldrb r0, [r0, #4]
    cmp r0, r5
    bne .L080370B8
    ldr r1, [r1, #0xc]
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L080370AA
.L080370A6:
    movs r0, #1
    b .L080370C0
.L080370AA:
    ldr r0, .L080370B4 @ =0x00010005
    ands r1, r0
    cmp r1, #0
    bne .L080370BE
    b .L080370A6
    .align 2, 0
.L080370B4: .4byte 0x00010005
.L080370B8:
    adds r4, #1
    cmp r4, #0xbf
    ble .L08037084
.L080370BE:
    movs r0, #0
.L080370C0:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803707C

    thumb_func_start func_080370C8
func_080370C8: @ 0x080370C8
    push {r4, r5, r6, lr}
    ldr r4, [sp, #0x10]
    lsls r1, r1, #0x10
    lsrs r5, r1, #0x10
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    adds r6, r3, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    subs r1, r0, r2
    cmp r1, #0
    bge .L080370EA
    subs r1, r2, r0
.L080370EA:
    lsls r0, r5, #0x10
    asrs r2, r0, #0x10
    subs r0, r2, r3
    cmp r0, #0
    bge .L080370F6
    subs r0, r6, r2
.L080370F6:
    adds r0, r1, r0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, r4
    bls .L08037104
    movs r0, #0
    b .L08037106
.L08037104:
    movs r0, #1
.L08037106:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080370C8

    thumb_func_start func_0803710C
func_0803710C: @ 0x0803710C
    push {lr}
    sub sp, #4
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    lsls r1, r1, #0x18
    ldr r2, .L08037134 @ =gBmMapTerrain
    ldr r2, [r2]
    lsrs r1, r1, #0x16
    adds r1, r1, r2
    ldr r1, [r1]
    adds r1, r1, r0
    ldrb r0, [r1]
    cmp r0, #0x21
    beq .L08037142
    cmp r0, #0x21
    bgt .L08037138
    cmp r0, #3
    beq .L08037150
    b .L08037154
    .align 2, 0
.L08037134: .4byte gBmMapTerrain
.L08037138:
    cmp r0, #0x24
    beq .L08037150
    cmp r0, #0x37
    bne .L08037154
    b .L08037150
.L08037142:
    mov r0, sp
    bl func_08036A8C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08037154
.L08037150:
    movs r0, #1
    b .L08037156
.L08037154:
    movs r0, #0
.L08037156:
    add sp, #4
    pop {r1}
    bx r1
    func_end func_0803710C

    thumb_func_start func_0803715C
func_0803715C: @ 0x0803715C
    push {r4, r5, r6, r7, lr}
    ldr r0, .L08037210 @ =0x0203A8EC
    adds r0, #0x85
    movs r1, #0
    strb r1, [r0]
    movs r4, #1
.L08037168:
    adds r0, r4, #0
    bl GetUnit
    adds r5, r0, #0
    adds r7, r4, #1
    cmp r5, #0
    beq .L08037202
    ldr r0, [r5]
    cmp r0, #0
    beq .L08037202
    ldr r0, [r5, #0xc]
    ldr r1, .L08037214 @ =0x00010005
    ands r0, r1
    cmp r0, #0
    bne .L08037202
    ldr r0, [r5, #4]
    ldrb r1, [r5, #0x1d]
    ldrb r0, [r0, #0x12]
    adds r0, r1, r0
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    ldr r0, .L08037210 @ =0x0203A8EC
    adds r0, #0x85
    ldrb r2, [r0]
    cmp r1, r2
    bls .L0803719E
    strb r1, [r0]
.L0803719E:
    movs r6, #0
    ldrh r4, [r5, #0x1e]
    cmp r4, #0
    beq .L080371FC
.L080371A6:
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080371C2
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080371E8
.L080371C2:
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #2
    ands r1, r0
    cmp r1, #0
    beq .L080371D8
    movs r0, #1
    ldrb r1, [r5, #0xa]
    orrs r0, r1
    strb r0, [r5, #0xa]
.L080371D8:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08037218
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08037260
.L080371E8:
    adds r6, #1
    cmp r6, #4
    bgt .L080371FC
    lsls r1, r6, #1
    adds r0, r5, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L080371A6
.L080371FC:
    adds r0, r5, #0
    bl func_080372AC
.L08037202:
    adds r4, r7, #0
    cmp r4, #0x3f
    ble .L08037168
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08037210: .4byte 0x0203A8EC
.L08037214: .4byte 0x00010005
    func_end func_0803715C

    thumb_func_start func_08037218
func_08037218: @ 0x08037218
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    lsls r1, r1, #0x10
    lsrs r5, r1, #0x10
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #4
    ands r1, r0
    cmp r1, #0
    beq .L0803725A
    movs r4, #2
    adds r0, r5, #0
    bl GetItemIndex
    cmp r0, #0x51
    beq .L0803724E
    cmp r0, #0x51
    bgt .L08037244
    cmp r0, #0x50
    beq .L0803724A
    b .L08037254
.L08037244:
    cmp r0, #0x52
    beq .L08037252
    b .L08037254
.L0803724A:
    movs r4, #8
    b .L08037254
.L0803724E:
    movs r4, #0x10
    b .L08037254
.L08037252:
    movs r4, #0x20
.L08037254:
    ldrb r0, [r6, #0xa]
    orrs r4, r0
    strb r4, [r6, #0xa]
.L0803725A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08037218

    thumb_func_start func_08037260
func_08037260: @ 0x08037260
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    lsls r1, r1, #0x10
    lsrs r4, r1, #0x10
    movs r5, #0
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L08037284
    adds r0, r4, #0
    bl func_08017384
    cmp r0, #1
    ble .L08037284
    movs r5, #0x40
.L08037284:
    adds r0, r4, #0
    bl GetItemEffect
    cmp r0, #1
    blt .L0803729E
    cmp r0, #5
    ble .L0803729A
    cmp r0, #0x22
    bgt .L0803729E
    cmp r0, #0x21
    blt .L0803729E
.L0803729A:
    movs r0, #4
    orrs r5, r0
.L0803729E:
    ldrb r0, [r6, #0xa]
    orrs r5, r0
    strb r5, [r6, #0xa]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08037260

    thumb_func_start func_080372AC
func_080372AC: @ 0x080372AC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    movs r0, #0
    mov r8, r0
    ldr r0, .L08037344 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    movs r0, #0x10
    ldrsb r0, [r6, r0]
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    movs r2, #1
    movs r3, #8
    bl func_0801B19C
    ldr r0, .L08037348 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L08037332
.L080372DE:
    ldr r0, .L08037348 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r7, r1, #1
    cmp r4, #0
    blt .L0803732C
    lsls r5, r1, #2
.L080372EE:
    ldr r0, .L08037344 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08037326
    ldr r0, .L0803734C @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08037326
    movs r0, #0xb
    ldrsb r0, [r6, r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08037326
    movs r0, #1
    add r8, r0
.L08037326:
    subs r4, #1
    cmp r4, #0
    bge .L080372EE
.L0803732C:
    adds r1, r7, #0
    cmp r1, #0
    bge .L080372DE
.L08037332:
    adds r0, r6, #0
    adds r0, #0x46
    mov r1, r8
    strb r1, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08037344: .4byte gBmMapMovement
.L08037348: .4byte gBmMapSize
.L0803734C: .4byte gBmMapUnit
    func_end func_080372AC

    thumb_func_start CharStoreAI
CharStoreAI: @ 0x08037350
    adds r3, r0, #0
    ldrb r0, [r1, #0xc]
    adds r2, r3, #0
    adds r2, #0x42
    strb r0, [r2]
    ldrb r2, [r1, #0xd]
    adds r0, r3, #0
    adds r0, #0x44
    strb r2, [r0]
    adds r2, r3, #0
    adds r2, #0x40
    ldr r0, .L0803737C @ =0x0000FFF8
    ldrh r3, [r2]
    ands r0, r3
    ldrb r3, [r1, #0xe]
    orrs r0, r3
    ldrb r1, [r1, #0xf]
    lsls r1, r1, #8
    orrs r0, r1
    strh r0, [r2]
    bx lr
    .align 2, 0
.L0803737C: .4byte 0x0000FFF8
    func_end CharStoreAI

    thumb_func_start func_08037380
func_08037380: @ 0x08037380
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov r8, r0
    movs r0, #0
    mov sb, r0
    ldr r0, .L08037434 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    blt .L0803742A
.L0803739C:
    ldr r0, .L08037434 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    subs r0, r6, #1
    mov sl, r0
    cmp r5, #0
    blt .L08037424
    lsls r7, r6, #2
.L080373AE:
    ldr r0, .L08037438 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803741E
    ldr r0, .L0803743C @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0803741E
    ldr r0, .L08037440 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r1, [r0]
    cmp r1, #0
    beq .L080373EA
    ldr r0, .L08037444 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L0803741E
.L080373EA:
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08039304
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08039344
    adds r4, r4, r0
    ldr r0, .L08037448 @ =gBmMapOther
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    lsrs r0, r0, #3
    subs r4, r4, r0
    ldr r1, .L0803744C @ =0x7FFFFFFF
    adds r4, r4, r1
    cmp sb, r4
    bhs .L0803741E
    mov r0, r8
    strh r5, [r0]
    strh r6, [r0, #2]
    mov sb, r4
.L0803741E:
    subs r5, #1
    cmp r5, #0
    bge .L080373AE
.L08037424:
    mov r6, sl
    cmp r6, #0
    bge .L0803739C
.L0803742A:
    mov r1, sb
    cmp r1, #0
    bne .L08037450
    movs r0, #0
    b .L08037452
    .align 2, 0
.L08037434: .4byte gBmMapSize
.L08037438: .4byte gBmMapMovement
.L0803743C: .4byte gBmMapRange
.L08037440: .4byte gBmMapUnit
.L08037444: .4byte gActiveUnitId
.L08037448: .4byte gBmMapOther
.L0803744C: .4byte 0x7FFFFFFF
.L08037450:
    movs r0, #1
.L08037452:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08037380

    thumb_func_start func_08037460
func_08037460: @ 0x08037460
    push {r4, r5, r6, lr}
    movs r6, #0
    bl GetActiveFactionAlliance
    adds r5, r0, #0
    adds r4, r5, #1
    b .L0803749A
.L0803746E:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08037496
    ldr r0, [r2]
    cmp r0, #0
    beq .L08037496
    ldr r0, [r2, #0xc]
    ldr r1, .L080374A8 @ =0x00010005
    ands r0, r1
    cmp r0, #0
    bne .L08037496
    movs r0, #1
    ldrb r2, [r2, #0xa]
    ands r0, r2
    cmp r0, #0
    beq .L08037496
    adds r6, #1
.L08037496:
    adds r4, #1
    adds r0, r5, #0
.L0803749A:
    adds r0, #0x80
    cmp r4, r0
    blt .L0803746E
    adds r0, r6, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080374A8: .4byte 0x00010005
    func_end func_08037460

    thumb_func_start func_080374AC
func_080374AC: @ 0x080374AC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    movs r7, #0
    ldr r0, .L08037538 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L0803752C
.L080374C0:
    ldr r0, .L08037538 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r0, r1, #1
    mov r8, r0
    cmp r4, #0
    blt .L08037526
    lsls r5, r1, #2
.L080374D2:
    ldr r0, .L0803753C @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08037520
    ldr r6, .L08037540 @ =gBmMapUnit
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08037520
    ldr r0, .L08037544 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08037520
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    bl GetUnit
    movs r1, #1
    ldrb r0, [r0, #0xa]
    ands r1, r0
    cmp r1, #0
    beq .L08037520
    adds r7, #1
.L08037520:
    subs r4, #1
    cmp r4, #0
    bge .L080374D2
.L08037526:
    mov r1, r8
    cmp r1, #0
    bge .L080374C0
.L0803752C:
    adds r0, r7, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08037538: .4byte gBmMapSize
.L0803753C: .4byte gBmMapRange
.L08037540: .4byte gBmMapUnit
.L08037544: .4byte gActiveUnitId
    func_end func_080374AC

    thumb_func_start func_08037548
func_08037548: @ 0x08037548
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r5, #0
.L0803754E:
    lsls r0, r5, #1
    adds r1, r6, #0
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r0, [r1]
    adds r4, r0, #0
    cmp r4, #0
    beq .L08037584
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #6
    ands r1, r0
    cmp r1, #0
    beq .L0803757E
    adds r0, r6, #0
    adds r1, r4, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803757E
    movs r0, #1
    b .L08037586
.L0803757E:
    adds r5, #1
    cmp r5, #4
    ble .L0803754E
.L08037584:
    movs r0, #0
.L08037586:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08037548

    thumb_func_start func_0803758C
func_0803758C: @ 0x0803758C
    push {lr}
    adds r2, r0, #0
    ldr r1, .L080375A8 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L080375AC
    adds r0, r2, #0
    movs r1, #0
    bl GenerateUnitMovementMapExt
    b .L080375B2
    .align 2, 0
.L080375A8: .4byte 0x0203A8EC
.L080375AC:
    adds r0, r2, #0
    bl MapFloodUnit
.L080375B2:
    pop {r0}
    bx r0
    func_end func_0803758C

    thumb_func_start func_080375B8
func_080375B8: @ 0x080375B8
    push {r4, lr}
    ldr r3, .L080375F8 @ =0x030013B8
    ldr r1, .L080375FC @ =0x08B989F0
    ldr r0, .L08037600 @ =gActiveUnit
    ldr r0, [r0]
    adds r4, r0, #0
    adds r4, #0x42
    ldr r2, [r1]
    ldrb r4, [r4]
    lsls r1, r4, #2
    adds r1, r1, r2
    ldr r1, [r1]
    str r1, [r3]
    adds r0, #0x43
    ldrb r4, [r0]
    lsls r2, r4, #4
    adds r1, r1, r2
    str r1, [r3]
    ldr r4, .L08037604 @ =0x030013B0
    movs r1, #1
    strb r1, [r4]
    ldr r2, .L08037608 @ =0x030013B4
    movs r1, #0
    str r1, [r2]
    bl func_080376D8
    movs r0, #0
    ldrsb r0, [r4, r0]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080375F8: .4byte 0x030013B8
.L080375FC: .4byte 0x08B989F0
.L08037600: .4byte gActiveUnit
.L08037604: .4byte 0x030013B0
.L08037608: .4byte 0x030013B4
    func_end func_080375B8

    thumb_func_start func_0803760C
func_0803760C: @ 0x0803760C
    push {r4, lr}
    ldr r1, .L08037634 @ =0x030013B8
    ldr r0, .L08037638 @ =0x08B970A4
    str r0, [r1]
    ldr r4, .L0803763C @ =0x030013B0
    movs r0, #1
    strb r0, [r4]
    ldr r1, .L08037640 @ =0x030013B4
    movs r0, #0
    str r0, [r1]
    ldr r0, .L08037644 @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x43
    bl func_080376D8
    movs r0, #0
    ldrsb r0, [r4, r0]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08037634: .4byte 0x030013B8
.L08037638: .4byte 0x08B970A4
.L0803763C: .4byte 0x030013B0
.L08037640: .4byte 0x030013B4
.L08037644: .4byte gActiveUnit
    func_end func_0803760C

    thumb_func_start func_08037648
func_08037648: @ 0x08037648
    push {r4, lr}
    ldr r3, .L08037688 @ =0x030013B8
    ldr r2, .L0803768C @ =0x08B989E4
    ldr r0, .L08037690 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r0, #0
    adds r1, #0x44
    ldr r2, [r2]
    ldrb r1, [r1]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r1, [r1]
    str r1, [r3]
    adds r0, #0x45
    ldrb r4, [r0]
    lsls r2, r4, #4
    adds r1, r1, r2
    str r1, [r3]
    ldr r4, .L08037694 @ =0x030013B0
    movs r1, #1
    strb r1, [r4]
    ldr r2, .L08037698 @ =0x030013B4
    movs r1, #1
    str r1, [r2]
    bl func_080376D8
    movs r0, #0
    ldrsb r0, [r4, r0]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08037688: .4byte 0x030013B8
.L0803768C: .4byte 0x08B989E4
.L08037690: .4byte gActiveUnit
.L08037694: .4byte 0x030013B0
.L08037698: .4byte 0x030013B4
    func_end func_08037648

    thumb_func_start func_0803769C
func_0803769C: @ 0x0803769C
    push {r4, lr}
    ldr r1, .L080376C4 @ =0x030013B8
    ldr r0, .L080376C8 @ =0x08B970B4
    str r0, [r1]
    ldr r4, .L080376CC @ =0x030013B0
    movs r0, #1
    strb r0, [r4]
    ldr r1, .L080376D0 @ =0x030013B4
    movs r0, #1
    str r0, [r1]
    ldr r0, .L080376D4 @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x45
    bl func_080376D8
    movs r0, #0
    ldrsb r0, [r4, r0]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080376C4: .4byte 0x030013B8
.L080376C8: .4byte 0x08B970B4
.L080376CC: .4byte 0x030013B0
.L080376D0: .4byte 0x030013B4
.L080376D4: .4byte gActiveUnit
    func_end func_0803769C

    thumb_func_start func_080376D8
func_080376D8: @ 0x080376D8
    push {r4, lr}
    sub sp, #0x70
    adds r4, r0, #0
    ldr r1, .L08037700 @ =0x081D3678
    mov r0, sp
    movs r2, #0x70
    bl memcpy
    ldr r1, .L08037704 @ =0x030013B8
    ldr r0, [r1]
    ldrb r0, [r0]
    cmp r0, #0x1b
    bls .L08037714
    ldr r0, .L08037708 @ =0x030013B4
    ldr r0, [r0]
    cmp r0, #0
    bne .L08037710
    ldr r0, .L0803770C @ =0x08B970A4
    b .L08037712
    .align 2, 0
.L08037700: .4byte 0x081D3678
.L08037704: .4byte 0x030013B8
.L08037708: .4byte 0x030013B4
.L0803770C: .4byte 0x08B970A4
.L08037710:
    ldr r0, .L08037738 @ =0x08B970B4
.L08037712:
    str r0, [r1]
.L08037714:
    ldr r1, .L0803773C @ =0x0203A8EC
    ldr r0, .L08037740 @ =0x030013B8
    ldr r2, [r0]
    ldrb r0, [r2, #2]
    adds r1, #0x7e
    strb r0, [r1]
    ldrb r2, [r2]
    lsls r0, r2, #2
    add r0, sp
    ldr r1, [r0]
    adds r0, r4, #0
    bl _call_via_r1
    add sp, #0x70
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08037738: .4byte 0x08B970B4
.L0803773C: .4byte 0x0203A8EC
.L08037740: .4byte 0x030013B8
    func_end func_080376D8

    thumb_func_start func_08037744
func_08037744: @ 0x08037744
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L08037774 @ =0x030013B8
    ldr r2, [r0]
    ldrb r5, [r2, #3]
    movs r4, #0
    ldr r0, [r2, #8]
    ldrb r1, [r2, #1]
    ldr r2, [r2, #4]
    bl func_08035838
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080377D0
    ldr r0, .L08037778 @ =0x030013B4
    ldr r0, [r0]
    cmp r0, #0
    bne .L08037784
    ldr r1, .L0803777C @ =0x08B989F0
    ldr r0, .L08037780 @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x42
    b .L0803778C
    .align 2, 0
.L08037774: .4byte 0x030013B8
.L08037778: .4byte 0x030013B4
.L0803777C: .4byte 0x08B989F0
.L08037780: .4byte gActiveUnit
.L08037784:
    ldr r1, .L080377A4 @ =0x08B989E4
    ldr r0, .L080377A8 @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x44
.L0803778C:
    ldr r1, [r1]
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    cmp r5, #0
    beq .L080377CC
    lsls r0, r4, #4
    adds r0, r0, r1
    ldr r2, .L080377AC @ =0x030013B0
    b .L080377BA
    .align 2, 0
.L080377A4: .4byte 0x08B989E4
.L080377A8: .4byte gActiveUnit
.L080377AC: .4byte 0x030013B0
.L080377B0:
    adds r0, r4, #1
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    lsls r0, r4, #4
    adds r0, r0, r1
.L080377BA:
    ldrb r3, [r0]
    cmp r3, #0x1b
    bne .L080377B0
    ldrb r0, [r0, #3]
    cmp r0, r5
    bne .L080377B0
    adds r0, r4, #1
    strb r0, [r6]
    b .L080377D8
.L080377CC:
    strb r5, [r6]
    b .L080377D6
.L080377D0:
    ldrb r0, [r6]
    adds r0, #1
    strb r0, [r6]
.L080377D6:
    ldr r2, .L080377E4 @ =0x030013B0
.L080377D8:
    movs r0, #0
    strb r0, [r2]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080377E4: .4byte 0x030013B0
    func_end func_08037744

    thumb_func_start func_080377E8
func_080377E8: @ 0x080377E8
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, .L0803780C @ =0x030013BC
    ldr r0, .L08037810 @ =0x030013B8
    ldr r0, [r0]
    ldr r1, [r0, #8]
    str r1, [r2]
    ldr r0, [r0, #0xc]
    bl _call_via_r1
    ldr r1, .L08037814 @ =0x030013B0
    strb r0, [r1]
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803780C: .4byte 0x030013BC
.L08037810: .4byte 0x030013B8
.L08037814: .4byte 0x030013B0
    func_end func_080377E8

    thumb_func_start func_08037818
func_08037818: @ 0x08037818
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r0, .L08037878 @ =0x030013B8
    ldr r0, [r0]
    ldrb r3, [r0, #1]
    adds r6, r3, #0
    ldrb r4, [r0, #2]
    adds r7, r4, #0
    cmp r3, #0xff
    beq .L0803783C
    ldr r1, .L0803787C @ =gActiveUnit
    ldr r0, [r1]
    adds r0, #0x42
    movs r2, #0
    strb r3, [r0]
    ldr r0, [r1]
    adds r0, #0x43
    strb r2, [r0]
.L0803783C:
    cmp r4, #0xff
    beq .L08037850
    ldr r1, .L0803787C @ =gActiveUnit
    ldr r0, [r1]
    adds r0, #0x44
    movs r2, #0
    strb r4, [r0]
    ldr r0, [r1]
    adds r0, #0x45
    strb r2, [r0]
.L08037850:
    ldr r0, .L08037880 @ =0x030013B4
    ldr r0, [r0]
    cmp r0, #0
    bne .L0803785C
    cmp r6, #0xff
    beq .L08037864
.L0803785C:
    cmp r0, #1
    bne .L0803786A
    cmp r7, #0xff
    bne .L0803786A
.L08037864:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
.L0803786A:
    ldr r0, .L08037884 @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #0
    strb r1, [r0]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08037878: .4byte 0x030013B8
.L0803787C: .4byte gActiveUnit
.L08037880: .4byte 0x030013B4
.L08037884: .4byte 0x0203A8EC
    func_end func_08037818

    thumb_func_start func_08037888
func_08037888: @ 0x08037888
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, .L080378A8 @ =0x030013B8
    ldr r0, [r0]
    ldrb r3, [r0, #3]
    movs r2, #0
    ldr r0, .L080378AC @ =0x030013B4
    ldr r0, [r0]
    cmp r0, #0
    bne .L080378B8
    ldr r1, .L080378B0 @ =0x08B989F0
    ldr r0, .L080378B4 @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x42
    b .L080378C0
    .align 2, 0
.L080378A8: .4byte 0x030013B8
.L080378AC: .4byte 0x030013B4
.L080378B0: .4byte 0x08B989F0
.L080378B4: .4byte gActiveUnit
.L080378B8:
    ldr r1, .L080378D8 @ =0x08B989E4
    ldr r0, .L080378DC @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x44
.L080378C0:
    ldr r1, [r1]
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    cmp r3, #0
    beq .L08037900
    lsls r0, r2, #4
    adds r0, r0, r1
    ldr r5, .L080378E0 @ =0x030013B0
    b .L080378EE
    .align 2, 0
.L080378D8: .4byte 0x08B989E4
.L080378DC: .4byte gActiveUnit
.L080378E0: .4byte 0x030013B0
.L080378E4:
    adds r0, r2, #1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    lsls r0, r2, #4
    adds r0, r0, r1
.L080378EE:
    ldrb r6, [r0]
    cmp r6, #0x1b
    bne .L080378E4
    ldrb r0, [r0, #3]
    cmp r0, r3
    bne .L080378E4
    adds r0, r2, #1
    strb r0, [r4]
    b .L08037904
.L08037900:
    strb r3, [r4]
    ldr r5, .L08037910 @ =0x030013B0
.L08037904:
    movs r0, #0
    strb r0, [r5]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08037910: .4byte 0x030013B0
    func_end func_08037888

    thumb_func_start func_08037914
func_08037914: @ 0x08037914
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08037938 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r1, #0xb]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803793C
    movs r0, #1
    b .L0803793E
    .align 2, 0
.L08037938: .4byte gActiveUnit
.L0803793C:
    movs r0, #0
.L0803793E:
    pop {r1}
    bx r1
    func_end func_08037914

    thumb_func_start func_08037944
func_08037944: @ 0x08037944
    ldr r1, .L08037950 @ =gActiveUnit
    ldr r1, [r1]
    cmp r0, r1
    beq .L08037954
    movs r0, #1
    b .L08037956
    .align 2, 0
.L08037950: .4byte gActiveUnit
.L08037954:
    movs r0, #0
.L08037956:
    bx lr
    func_end func_08037944

    thumb_func_start func_08037958
func_08037958: @ 0x08037958
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08037990 @ =0x030013B8
    ldr r0, [r0]
    ldr r0, [r0, #8]
    ldr r1, [r4]
    ldrb r1, [r1, #4]
    bl func_08035E0C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08037998
    ldr r0, .L08037994 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08037998
    movs r0, #1
    b .L0803799A
    .align 2, 0
.L08037990: .4byte 0x030013B8
.L08037994: .4byte gActiveUnit
.L08037998:
    movs r0, #0
.L0803799A:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08037958

    thumb_func_start func_080379A0
func_080379A0: @ 0x080379A0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080379D8 @ =0x030013B8
    ldr r0, [r0]
    ldr r0, [r0, #8]
    ldr r1, [r4]
    ldrb r1, [r1, #4]
    bl func_08035E0C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L080379D2
    ldr r0, .L080379DC @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080379E0
.L080379D2:
    movs r0, #1
    b .L080379E2
    .align 2, 0
.L080379D8: .4byte 0x030013B8
.L080379DC: .4byte gActiveUnit
.L080379E0:
    movs r0, #0
.L080379E2:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080379A0

    thumb_func_start func_080379E8
func_080379E8: @ 0x080379E8
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2]
    ldr r1, .L08037A18 @ =0x030013B8
    ldr r1, [r1]
    ldrb r0, [r0, #4]
    ldrb r1, [r1, #4]
    cmp r0, r1
    bne .L08037A20
    ldr r0, .L08037A1C @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r2, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08037A20
    movs r0, #1
    b .L08037A22
    .align 2, 0
.L08037A18: .4byte 0x030013B8
.L08037A1C: .4byte gActiveUnit
.L08037A20:
    movs r0, #0
.L08037A22:
    pop {r1}
    bx r1
    func_end func_080379E8

    thumb_func_start func_08037A28
func_08037A28: @ 0x08037A28
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2, #4]
    ldr r1, .L08037A58 @ =0x030013B8
    ldr r1, [r1]
    ldrb r0, [r0, #4]
    ldrb r1, [r1, #4]
    cmp r0, r1
    bne .L08037A60
    ldr r0, .L08037A5C @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r2, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08037A60
    movs r0, #1
    b .L08037A62
    .align 2, 0
.L08037A58: .4byte 0x030013B8
.L08037A5C: .4byte gActiveUnit
.L08037A60:
    movs r0, #0
.L08037A62:
    pop {r1}
    bx r1
    func_end func_08037A28

    thumb_func_start func_08037A68
func_08037A68: @ 0x08037A68
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r0, #0x64
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r5, .L08037AB8 @ =0x030013B8
    ldr r1, [r5]
    ldrb r1, [r1, #1]
    cmp r0, r1
    bhi .L08037AE8
    ldr r0, .L08037ABC @ =func_08037914
    bl func_0803AAD8
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #0
    bne .L08037AF0
    ldr r0, [r5]
    ldrh r0, [r0, #4]
    bl func_0803707C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08037AD0
    ldr r0, [r5]
    ldr r0, [r0, #4]
    bl GetUnitFromCharId
    ldr r0, [r0, #0xc]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08037AC4
    ldr r0, .L08037AC0 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #3
    b .L08037AD6
    .align 2, 0
.L08037AB8: .4byte 0x030013B8
.L08037ABC: .4byte func_08037914
.L08037AC0: .4byte 0x0203A8EC
.L08037AC4:
    ldr r0, .L08037ACC @ =func_080379E8
    bl func_08038558
    b .L08037AF0
    .align 2, 0
.L08037ACC: .4byte func_080379E8
.L08037AD0:
    ldr r0, .L08037AE0 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #1
.L08037AD6:
    strb r1, [r0]
    ldr r0, .L08037AE4 @ =0x030013B0
    strb r4, [r0]
    b .L08037AF0
    .align 2, 0
.L08037AE0: .4byte 0x0203A8EC
.L08037AE4: .4byte 0x030013B0
.L08037AE8:
    ldr r0, .L08037AFC @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #4
    strb r1, [r0]
.L08037AF0:
    ldrb r0, [r6]
    adds r0, #1
    strb r0, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08037AFC: .4byte 0x0203A8EC
    func_end func_08037A68

    thumb_func_start func_08037B00
func_08037B00: @ 0x08037B00
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0x64
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, .L08037B34 @ =0x030013B8
    ldr r1, [r1]
    ldrb r2, [r1, #1]
    cmp r0, r2
    bhi .L08037B58
    ldr r0, [r1, #8]
    cmp r0, #0
    bne .L08037B3C
    ldr r4, .L08037B38 @ =func_08037914
    adds r0, r4, #0
    bl func_0803AAD8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08037B60
    adds r0, r4, #0
    bl func_08038558
    b .L08037B60
    .align 2, 0
.L08037B34: .4byte 0x030013B8
.L08037B38: .4byte func_08037914
.L08037B3C:
    ldr r0, .L08037B50 @ =func_080379A0
    bl func_0803AAD8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08037B60
    ldr r0, .L08037B54 @ =func_08037958
    bl func_08038558
    b .L08037B60
    .align 2, 0
.L08037B50: .4byte func_080379A0
.L08037B54: .4byte func_08037958
.L08037B58:
    ldr r0, .L08037B6C @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #4
    strb r1, [r0]
.L08037B60:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08037B6C: .4byte 0x0203A8EC
    func_end func_08037B00

    thumb_func_start func_08037B70
func_08037B70: @ 0x08037B70
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    bx lr
    func_end func_08037B70

    thumb_func_start func_08037B78
func_08037B78: @ 0x08037B78
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0x64
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, .L08037BB4 @ =0x030013B8
    ldr r1, [r1]
    ldrb r1, [r1, #1]
    cmp r0, r1
    bhi .L08037BC0
    ldr r0, .L08037BB8 @ =0x0203A8EC
    adds r0, #0x7b
    movs r1, #2
    ldrb r2, [r0]
    orrs r1, r2
    strb r1, [r0]
    ldr r4, .L08037BBC @ =func_08037914
    adds r0, r4, #0
    bl func_0803AAD8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08037BC8
    adds r0, r4, #0
    bl func_08038558
    b .L08037BC8
    .align 2, 0
.L08037BB4: .4byte 0x030013B8
.L08037BB8: .4byte 0x0203A8EC
.L08037BBC: .4byte func_08037914
.L08037BC0:
    ldr r0, .L08037BD4 @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #4
    strb r1, [r0]
.L08037BC8:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08037BD4: .4byte 0x0203A8EC
    func_end func_08037B78

    thumb_func_start func_08037BD8
func_08037BD8: @ 0x08037BD8
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0x64
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, .L08037C08 @ =0x030013B8
    ldr r1, [r1]
    ldrb r1, [r1, #1]
    cmp r0, r1
    bhi .L08037C10
    ldr r4, .L08037C0C @ =func_08037A28
    adds r0, r4, #0
    bl func_0803AAD8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08037C18
    adds r0, r4, #0
    bl func_08038558
    b .L08037C18
    .align 2, 0
.L08037C08: .4byte 0x030013B8
.L08037C0C: .4byte func_08037A28
.L08037C10:
    ldr r0, .L08037C24 @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #4
    strb r1, [r0]
.L08037C18:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08037C24: .4byte 0x0203A8EC
    func_end func_08037BD8

    thumb_func_start func_08037C28
func_08037C28: @ 0x08037C28
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08037C40 @ =func_08037914
    bl func_0803AAD8
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08037C40: .4byte func_08037914
    func_end func_08037C28

    thumb_func_start func_08037C44
func_08037C44: @ 0x08037C44
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08037C5C @ =func_08037914
    bl func_0803AAD8
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08037C5C: .4byte func_08037914
    func_end func_08037C44

    thumb_func_start func_08037C60
func_08037C60: @ 0x08037C60
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08037C78 @ =func_08037914
    bl func_0803AAD8
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08037C78: .4byte func_08037914
    func_end func_08037C60

    thumb_func_start func_08037C7C
func_08037C7C: @ 0x08037C7C
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r4, .L08037CC0 @ =0x030013B8
    ldr r2, [r4]
    ldrb r0, [r2, #1]
    ldrb r1, [r2, #3]
    ldrb r3, [r2, #2]
    movs r2, #1
    str r2, [sp]
    movs r2, #0
    bl func_08036B00
    ldr r0, .L08037CC4 @ =0x0203A97C
    ldrb r1, [r0, #0xa]
    cmp r1, #1
    bne .L08037CB6
    ldr r2, [r4]
    ldrb r3, [r0, #2]
    ldrb r1, [r2, #1]
    cmp r3, r1
    bne .L08037CB6
    ldrb r0, [r0, #3]
    ldrb r2, [r2, #3]
    cmp r0, r2
    bne .L08037CB6
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
.L08037CB6:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08037CC0: .4byte 0x030013B8
.L08037CC4: .4byte 0x0203A97C
    func_end func_08037C7C

    thumb_func_start func_08037CC8
func_08037CC8: @ 0x08037CC8
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    ldr r6, .L08037D38 @ =0x030013B8
    ldr r0, [r6]
    ldr r0, [r0, #4]
    add r5, sp, #4
    adds r1, r5, #0
    bl func_0803589C
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L08037D6C
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r6]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036B00
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r5, .L08037D3C @ =0x0203A97C
    ldrb r2, [r5, #2]
    ldrb r3, [r5, #3]
    str r4, [sp]
    bl func_080370C8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08037D72
    ldr r0, [r6]
    ldr r0, [r0, #4]
    bl GetUnitFromCharId
    adds r1, r0, #0
    ldr r4, [r1, #0xc]
    movs r0, #0x20
    ands r4, r0
    cmp r4, #0
    beq .L08037D44
    ldr r0, .L08037D40 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #3
    strb r1, [r0]
    b .L08037D72
    .align 2, 0
.L08037D38: .4byte 0x030013B8
.L08037D3C: .4byte 0x0203A97C
.L08037D40: .4byte 0x0203A8EC
.L08037D44:
    ldrb r0, [r1, #0xb]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0
    movs r3, #0
    bl func_08034E94
    ldr r0, .L08037D64 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #2
    strb r1, [r0]
    strb r4, [r5, #0xa]
    ldr r0, .L08037D68 @ =0x030013B0
    strb r4, [r0]
    b .L08037D72
    .align 2, 0
.L08037D64: .4byte 0x0203A8EC
.L08037D68: .4byte 0x030013B0
.L08037D6C:
    ldr r1, .L08037D80 @ =0x030013B0
    movs r0, #0
    strb r0, [r1]
.L08037D72:
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08037D80: .4byte 0x030013B0
    func_end func_08037CC8

    thumb_func_start func_08037D84
func_08037D84: @ 0x08037D84
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    bx lr
    func_end func_08037D84

    thumb_func_start func_08037D8C
func_08037D8C: @ 0x08037D8C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r7, .L08037DCC @ =0x030013B8
    ldr r0, [r7]
    ldr r0, [r0, #4]
    add r5, sp, #4
    adds r1, r5, #0
    bl func_0803598C
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L08037DBE
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r7]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036B00
.L08037DBE:
    ldrb r0, [r6]
    adds r0, #1
    strb r0, [r6]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08037DCC: .4byte 0x030013B8
    func_end func_08037D8C

    thumb_func_start func_08037DD0
func_08037DD0: @ 0x08037DD0
    push {r4, r5, lr}
    sub sp, #0x14
    adds r5, r0, #0
    bl func_0803BA18
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08037E20
    ldr r3, .L08037E14 @ =0x030013B8
    ldr r0, [r3]
    ldrb r0, [r0, #3]
    cmp r0, #0
    beq .L08037EBC
    ldr r2, .L08037E18 @ =gActiveUnit
    ldr r0, [r2]
    adds r0, #0x46
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r0, [r2]
    adds r0, #0x46
    ldr r1, [r3]
    ldrb r0, [r0]
    ldrb r1, [r1, #3]
    cmp r0, r1
    bne .L08037EBC
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    ldr r1, .L08037E1C @ =0x030013B0
    movs r0, #0
    b .L08037EBA
    .align 2, 0
.L08037E14: .4byte 0x030013B8
.L08037E18: .4byte gActiveUnit
.L08037E1C: .4byte 0x030013B0
.L08037E20:
    add r4, sp, #0x10
    adds r0, r4, #0
    add r1, sp, #0xc
    bl func_080369F4
    lsls r0, r0, #0x18
    asrs r2, r0, #0x18
    cmp r2, #1
    bne .L08037EB0
    movs r1, #0
    ldrsh r0, [r4, r1]
    movs r3, #2
    ldrsh r1, [r4, r3]
    str r2, [sp]
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
    ldr r4, .L08037EA0 @ =0x0203A97C
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl func_0803710C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08037EBC
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    add r2, sp, #0xc
    ldrb r2, [r2]
    str r2, [sp]
    movs r4, #0
    str r4, [sp, #4]
    str r4, [sp, #8]
    movs r2, #4
    movs r3, #0
    bl func_08034E50
    ldr r3, .L08037EA4 @ =0x030013B8
    ldr r0, [r3]
    ldrb r0, [r0, #3]
    cmp r0, #0
    beq .L08037EBC
    ldr r2, .L08037EA8 @ =gActiveUnit
    ldr r0, [r2]
    adds r0, #0x46
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r0, [r2]
    adds r0, #0x46
    ldr r1, [r3]
    ldrb r0, [r0]
    ldrb r1, [r1, #3]
    cmp r0, r1
    bne .L08037EBC
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    ldr r0, .L08037EAC @ =0x030013B0
    strb r4, [r0]
    b .L08037EBC
    .align 2, 0
.L08037EA0: .4byte 0x0203A97C
.L08037EA4: .4byte 0x030013B8
.L08037EA8: .4byte gActiveUnit
.L08037EAC: .4byte 0x030013B0
.L08037EB0:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    ldr r1, .L08037EC4 @ =0x030013B0
    movs r0, #0
.L08037EBA:
    strb r0, [r1]
.L08037EBC:
    add sp, #0x14
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08037EC4: .4byte 0x030013B0
    func_end func_08037DD0

    thumb_func_start func_08037EC8
func_08037EC8: @ 0x08037EC8
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    ldr r0, .L08037F08 @ =gActiveUnit
    ldr r0, [r0]
    add r4, sp, #0xc
    adds r1, r4, #0
    bl func_08036900
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08037EFA
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r4, r2]
    movs r2, #0
    str r2, [sp]
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r3, #0
    bl func_08034E50
.L08037EFA:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    add sp, #0x10
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08037F08: .4byte gActiveUnit
    func_end func_08037EC8

    thumb_func_start func_08037F0C
func_08037F0C: @ 0x08037F0C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    ldr r6, .L08037F48 @ =0x030013B8
    ldr r0, [r6]
    ldr r0, [r0, #8]
    cmp r0, #0
    bne .L08037F50
    ldr r0, .L08037F4C @ =func_08037914
    add r5, sp, #4
    adds r1, r5, #0
    bl func_08035A38
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L08037F78
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r6]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036B00
    b .L08037F78
    .align 2, 0
.L08037F48: .4byte 0x030013B8
.L08037F4C: .4byte func_08037914
.L08037F50:
    ldr r0, .L08037F88 @ =func_08037958
    add r5, sp, #4
    adds r1, r5, #0
    bl func_08035A38
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L08037F78
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r6]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036B00
.L08037F78:
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08037F88: .4byte func_08037958
    func_end func_08037F0C

    thumb_func_start func_08037F8C
func_08037F8C: @ 0x08037F8C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    ldr r6, .L08037FC8 @ =0x030013B8
    ldr r0, [r6]
    ldr r0, [r0, #8]
    cmp r0, #0
    bne .L08037FD0
    ldr r0, .L08037FCC @ =func_08037914
    add r5, sp, #4
    adds r1, r5, #0
    bl func_08035B54
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L08037FF8
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r6]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036CEC
    b .L08037FF8
    .align 2, 0
.L08037FC8: .4byte 0x030013B8
.L08037FCC: .4byte func_08037914
.L08037FD0:
    ldr r0, .L08038008 @ =func_08037958
    add r5, sp, #4
    adds r1, r5, #0
    bl func_08035B54
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L08037FF8
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r6]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036CEC
.L08037FF8:
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08038008: .4byte func_08037958
    func_end func_08037F8C

    thumb_func_start func_0803800C
func_0803800C: @ 0x0803800C
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    bx lr
    func_end func_0803800C

    thumb_func_start func_08038014
func_08038014: @ 0x08038014
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    bx lr
    func_end func_08038014

    thumb_func_start func_0803801C
func_0803801C: @ 0x0803801C
    push {r4, lr}
    adds r4, r0, #0
    bl func_08035C70
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0803801C

    thumb_func_start func_08038030
func_08038030: @ 0x08038030
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08038050 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #8
    ldrb r2, [r1, #0xa]
    orrs r0, r2
    strb r0, [r1, #0xa]
    bl func_08039894
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08038050: .4byte gActiveUnit
    func_end func_08038030

    thumb_func_start func_08038054
func_08038054: @ 0x08038054
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    bl func_08039304
    adds r4, r0, #0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08039344
    adds r4, r4, r0
    ldr r0, .L0803809C @ =gBmMapMovement
    ldr r0, [r0]
    lsls r5, r5, #2
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    subs r4, r4, r0
    ldr r0, .L080380A0 @ =gBmMapOther
    ldr r0, [r0]
    adds r5, r5, r0
    ldr r0, [r5]
    adds r0, r0, r6
    ldrb r0, [r0]
    lsrs r0, r0, #3
    subs r4, r4, r0
    ldr r0, .L080380A4 @ =0x7FFFFFFF
    adds r4, r4, r0
    adds r0, r4, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0803809C: .4byte gBmMapMovement
.L080380A0: .4byte gBmMapOther
.L080380A4: .4byte 0x7FFFFFFF
    func_end func_08038054

    thumb_func_start func_080380A8
func_080380A8: @ 0x080380A8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    adds r5, r0, #0
    adds r6, r1, #0
    str r2, [sp]
    str r3, [sp, #4]
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0xc]
    movs r1, #0
    str r1, [sp, #0x14]
    ldr r4, .L080381EC @ =gActiveUnit
    ldr r0, [r4]
    bl MapFloodUnit
    movs r2, #0
    str r2, [sp, #8]
    ldr r0, [r4]
    ldrh r0, [r0, #0x1e]
    mov r8, r0
    cmp r0, #0
    beq .L080381D2
    lsls r5, r5, #0x10
    str r5, [sp, #0x18]
    lsls r6, r6, #0x10
    str r6, [sp, #0x1c]
.L080380E6:
    ldr r0, .L080381EC @ =gActiveUnit
    ldr r0, [r0]
    mov r1, r8
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    ldr r1, [sp, #8]
    adds r1, #1
    mov sb, r1
    cmp r0, #0
    beq .L080381B8
    ldr r0, .L080381F0 @ =gBmMapRange
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
    ldr r2, [sp, #0x18]
    asrs r0, r2, #0x10
    ldr r2, [sp, #0x1c]
    asrs r1, r2, #0x10
    adds r2, r4, #0
    bl func_0801B19C
    ldr r0, .L080381F4 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    blt .L080381B8
.L08038138:
    ldr r0, .L080381F4 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r5, r0, #1
    subs r0, r6, #1
    mov sl, r0
    cmp r5, #0
    blt .L080381B2
    lsls r7, r6, #2
.L0803814A:
    ldr r0, .L080381F8 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L080381AC
    ldr r0, .L080381F0 @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L080381AC
    ldr r0, .L080381FC @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r1, [r0]
    cmp r1, #0
    beq .L08038186
    ldr r0, .L08038200 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L080381AC
.L08038186:
    mov r0, r8
    bl GetItemMight
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08038054
    adds r4, r4, r0
    ldr r1, [sp, #0x14]
    cmp r4, r1
    bls .L080381AC
    str r5, [sp, #0xc]
    str r6, [sp, #0x10]
    str r4, [sp, #0x14]
    mov r2, sp
    ldrb r0, [r2, #8]
    ldr r2, [sp, #4]
    strb r0, [r2]
.L080381AC:
    subs r5, #1
    cmp r5, #0
    bge .L0803814A
.L080381B2:
    mov r6, sl
    cmp r6, #0
    bge .L08038138
.L080381B8:
    mov r1, sb
    str r1, [sp, #8]
    cmp r1, #4
    bgt .L080381D2
    ldr r0, .L080381EC @ =gActiveUnit
    ldr r0, [r0]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    mov r8, r0
    cmp r0, #0
    bne .L080380E6
.L080381D2:
    ldr r2, [sp, #0x14]
    cmp r2, #0
    beq .L08038204
    mov r0, sp
    ldrh r1, [r0, #0xc]
    ldr r0, [sp]
    strh r1, [r0]
    mov r2, sp
    ldrh r2, [r2, #0x10]
    strh r2, [r0, #2]
    movs r0, #1
    b .L08038206
    .align 2, 0
.L080381EC: .4byte gActiveUnit
.L080381F0: .4byte gBmMapRange
.L080381F4: .4byte gBmMapSize
.L080381F8: .4byte gBmMapMovement
.L080381FC: .4byte gBmMapUnit
.L08038200: .4byte gActiveUnitId
.L08038204:
    movs r0, #0
.L08038206:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080380A8

    thumb_func_start func_08038218
func_08038218: @ 0x08038218
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    str r0, [sp]
    mov r8, r1
    adds r7, r2, #0
    movs r0, #0xff
    mov sb, r0
    ldr r0, .L080382F4 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L080382EA
.L0803823A:
    ldr r0, .L080382F4 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r0, r5, #1
    mov sl, r0
    cmp r4, #0
    blt .L080382E4
    lsls r6, r5, #2
.L0803824C:
    ldr r0, .L080382F8 @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L080382DE
    ldr r0, .L080382FC @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    ldr r0, [sp]
    bl func_08035E28
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080382DE
    movs r0, #1
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L080382A4
    ldr r0, .L08038300 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L080382A4
    ldr r0, .L08038304 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080382DE
.L080382A4:
    movs r0, #2
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L080382BE
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    lsls r1, r5, #0x10
    asrs r1, r1, #0x10
    bl func_08036514
    cmp r0, #0
    bne .L080382DE
.L080382BE:
    ldr r0, .L080382F8 @ =gBmMapRange
    ldr r0, [r0]
    adds r1, r6, r0
    ldr r0, [r1]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp sb, r0
    ble .L080382DE
    strh r4, [r7]
    strh r5, [r7, #2]
    ldr r0, [r1]
    adds r0, r0, r4
    ldrb r0, [r0]
    mov sb, r0
.L080382DE:
    subs r4, #1
    cmp r4, #0
    bge .L0803824C
.L080382E4:
    mov r5, sl
    cmp r5, #0
    bge .L0803823A
.L080382EA:
    mov r0, sb
    cmp r0, #0xff
    bne .L08038308
    movs r0, #0
    b .L0803830A
    .align 2, 0
.L080382F4: .4byte gBmMapSize
.L080382F8: .4byte gBmMapRange
.L080382FC: .4byte gBmMapTerrain
.L08038300: .4byte gBmMapUnit
.L08038304: .4byte gActiveUnit
.L08038308:
    movs r0, #1
.L0803830A:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08038218

    thumb_func_start func_0803831C
func_0803831C: @ 0x0803831C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x18
    adds r7, r0, #0
    ldr r0, .L080383A0 @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803C058
    ldr r0, .L080383A4 @ =0x08B970C4
    add r4, sp, #0x10
    movs r1, #0
    adds r2, r4, #0
    bl func_08038218
    lsls r0, r0, #0x18
    asrs r6, r0, #0x18
    cmp r6, #1
    bne .L080383BC
    movs r1, #0
    ldrsh r0, [r4, r1]
    movs r2, #2
    ldrsh r1, [r4, r2]
    add r5, sp, #0x14
    adds r2, r5, #0
    add r3, sp, #0xc
    bl func_080380A8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080383A8
    movs r1, #0
    ldrsh r0, [r4, r1]
    movs r2, #2
    ldrsh r1, [r4, r2]
    bl GetTrapAt
    cmp r0, #0
    bne .L0803837A
    movs r1, #0
    ldrsh r0, [r4, r1]
    movs r2, #2
    ldrsh r1, [r4, r2]
    adds r1, #1
    bl GetTrapAt
    cmp r0, #0
    beq .L080383D0
.L0803837A:
    movs r1, #0
    ldrsh r0, [r5, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    add r2, sp, #0xc
    ldrb r2, [r2]
    str r2, [sp]
    ldrb r2, [r4]
    str r2, [sp, #4]
    ldrh r2, [r4, #2]
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp, #8]
    movs r2, #1
    movs r3, #0
    bl func_08034E50
    b .L080383CA
    .align 2, 0
.L080383A0: .4byte gActiveUnit
.L080383A4: .4byte 0x08B970C4
.L080383A8:
    movs r1, #0
    ldrsh r0, [r4, r1]
    movs r2, #2
    ldrsh r1, [r4, r2]
    str r6, [sp]
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
    b .L080383CA
.L080383BC:
    ldr r0, .L080383D8 @ =0x0203A8EC
    adds r0, #0x86
    movs r2, #0
    movs r1, #4
    strb r1, [r0]
    ldr r0, .L080383DC @ =0x030013B0
    strb r2, [r0]
.L080383CA:
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
.L080383D0:
    add sp, #0x18
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080383D8: .4byte 0x0203A8EC
.L080383DC: .4byte 0x030013B0
    func_end func_0803831C

    thumb_func_start func_080383E0
func_080383E0: @ 0x080383E0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    ldr r0, .L08038430 @ =gActiveUnit
    ldr r0, [r0]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl MapFloodRange_Unitless
    ldr r6, .L08038434 @ =0x030013B8
    ldr r0, [r6]
    adds r0, #3
    add r5, sp, #4
    movs r1, #0
    adds r2, r5, #0
    bl func_08035E44
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L08038438
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r6]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036B00
    b .L08038446
    .align 2, 0
.L08038430: .4byte gActiveUnit
.L08038434: .4byte 0x030013B8
.L08038438:
    ldr r0, .L08038454 @ =0x0203A8EC
    adds r0, #0x86
    movs r2, #0
    movs r1, #4
    strb r1, [r0]
    ldr r0, .L08038458 @ =0x030013B0
    strb r2, [r0]
.L08038446:
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08038454: .4byte 0x0203A8EC
.L08038458: .4byte 0x030013B0
    func_end func_080383E0

    thumb_func_start func_0803845C
func_0803845C: @ 0x0803845C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    ldr r0, .L080384AC @ =gActiveUnit
    ldr r0, [r0]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    movs r5, #0x11
    ldrsb r5, [r0, r5]
    bl GetUnitMovementCost
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl MapFloodRange_Unitless
    ldr r6, .L080384B0 @ =0x030013B8
    ldr r0, [r6]
    ldr r0, [r0, #8]
    add r5, sp, #4
    movs r1, #0
    adds r2, r5, #0
    bl func_08035E44
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #1
    bne .L080384B4
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldr r2, [r6]
    ldrb r3, [r2, #2]
    str r4, [sp]
    movs r2, #0
    bl func_08036B00
    b .L080384C2
    .align 2, 0
.L080384AC: .4byte gActiveUnit
.L080384B0: .4byte 0x030013B8
.L080384B4:
    ldr r0, .L080384D0 @ =0x0203A8EC
    adds r0, #0x86
    movs r2, #0
    movs r1, #4
    strb r1, [r0]
    ldr r0, .L080384D4 @ =0x030013B0
    strb r2, [r0]
.L080384C2:
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080384D0: .4byte 0x0203A8EC
.L080384D4: .4byte 0x030013B0
    func_end func_0803845C

    thumb_func_start func_080384D8
func_080384D8: @ 0x080384D8
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r1, .L080384E8 @ =0x030013B0
    movs r0, #0
    strb r0, [r1]
    bx lr
    .align 2, 0
.L080384E8: .4byte 0x030013B0
    func_end func_080384D8

    thumb_func_start func_080384EC
func_080384EC: @ 0x080384EC
    push {lr}
    ldr r0, .L08038504 @ =func_08037914
    bl func_0803AAD8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08038500
    ldr r0, .L08038508 @ =func_08037944
    bl func_08038558
.L08038500:
    pop {r0}
    bx r0
    .align 2, 0
.L08038504: .4byte func_08037914
.L08038508: .4byte func_08037944
    func_end func_080384EC

    thumb_func_start func_0803850C
func_0803850C: @ 0x0803850C
    push {r4, lr}
    sub sp, #8
    ldr r0, .L08038540 @ =func_08037944
    add r4, sp, #4
    adds r1, r4, #0
    bl func_08035A38
    lsls r0, r0, #0x18
    asrs r2, r0, #0x18
    cmp r2, #1
    bne .L08038536
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r3, #2
    ldrsh r1, [r4, r3]
    str r2, [sp]
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
.L08038536:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08038540: .4byte func_08037944
    func_end func_0803850C

    thumb_func_start func_08038544
func_08038544: @ 0x08038544
    movs r0, #1
    bx lr
    func_end func_08038544

    thumb_func_start func_08038548
func_08038548: @ 0x08038548
    push {lr}
    ldrb r0, [r0]
    bl func_08037044
    movs r0, #1
    pop {r1}
    bx r1
    func_end func_08038548

    thumb_func_start func_08038558
func_08038558: @ 0x08038558
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x28
    str r0, [sp, #0x24]
    add r0, sp, #0x18
    movs r5, #0
    strb r5, [r0, #2]
    str r5, [r0, #8]
    ldr r6, .L080385C0 @ =gActiveUnit
    ldr r3, [r6]
    ldr r1, [r3, #0xc]
    movs r2, #0x80
    lsls r2, r2, #4
    ands r1, r2
    cmp r1, #0
    beq .L080385C8
    ldr r4, .L080385C4 @ =gBmMapMovement
    ldr r0, [r4]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r2, [r6]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, [r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    strb r5, [r0]
    ldr r1, [r6]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08034698
    cmp r0, #0
    beq .L080385B6
    b .L0803871E
.L080385B6:
    ldr r0, [r6]
    bl func_080347A8
    b .L0803865E
    .align 2, 0
.L080385C0: .4byte gActiveUnit
.L080385C4: .4byte gBmMapMovement
.L080385C8:
    ldr r0, [r3]
    ldr r1, [r3, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L080385FE
    adds r0, r3, #0
    bl GetUnitItemCount
    cmp r0, #4
    bgt .L080385FE
    ldr r0, [r6]
    bl MapFloodUnit
    bl func_0801A0FC
    bl func_08038C44
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080385FE
    movs r0, #0
    b .L08038792
.L080385FE:
    ldr r1, .L08038634 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08038640
    ldr r4, .L08038638 @ =gBmMapMovement
    ldr r0, [r4]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L0803863C @ =gActiveUnit
    ldr r2, [r0]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, [r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r1, #0
    strb r1, [r0]
    b .L08038648
    .align 2, 0
.L08038634: .4byte 0x0203A8EC
.L08038638: .4byte gBmMapMovement
.L0803863C: .4byte gActiveUnit
.L08038640:
    ldr r0, .L080387A4 @ =gActiveUnit
    ldr r0, [r0]
    bl MapFloodUnit
.L08038648:
    ldr r0, .L080387A4 @ =gActiveUnit
    ldr r0, [r0]
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803865E
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
.L0803865E:
    ldr r0, .L080387A8 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0
    mov r8, r0
    ldr r1, .L080387A4 @ =gActiveUnit
    ldr r0, [r1]
    ldrh r5, [r0, #0x1e]
    cmp r5, #0
    beq .L0803871E
    mov sl, r1
    add r1, sp, #0xc
    mov sb, r1
.L0803867A:
    mov r2, sl
    ldr r0, [r2]
    adds r1, r5, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    mov r7, r8
    adds r7, #1
    cmp r0, #0
    beq .L08038708
    mov r4, r8
    mov r3, sb
    strh r4, [r3, #4]
    movs r6, #1
.L08038696:
    adds r0, r6, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L08038702
    ldr r0, [r4]
    cmp r0, #0
    beq .L08038702
    ldr r0, [r4, #0xc]
    ldr r1, .L080387AC @ =0x00010025
    ands r0, r1
    cmp r0, #0
    bne .L08038702
    adds r0, r4, #0
    ldr r1, [sp, #0x24]
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038702
    mov r2, sl
    ldr r0, [r2]
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_08035D50
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038702
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08038964
    ldrb r0, [r4, #0xb]
    mov r3, sb
    strb r0, [r3, #2]
    add r0, sp, #0xc
    bl func_08038DA4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038702
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x20]
    cmp r1, r0
    blo .L08038702
    add r1, sp, #0x18
    add r0, sp, #0xc
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    mov r0, r8
    mov r4, sp
    strh r0, [r4, #0x1c]
.L08038702:
    adds r6, #1
    cmp r6, #0xbf
    ble .L08038696
.L08038708:
    mov r8, r7
    cmp r7, #4
    bgt .L0803871E
    mov r1, sl
    ldr r0, [r1]
    lsls r1, r7, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r5, [r0]
    cmp r5, #0
    bne .L0803867A
.L0803871E:
    ldr r0, .L080387A4 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L08038754
    ldr r0, [sp, #0x24]
    add r1, sp, #0xc
    bl func_08038A7C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08038754
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x20]
    cmp r1, r0
    blo .L08038754
    add r1, sp, #0x18
    add r0, sp, #0xc
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
.L08038754:
    add r1, sp, #0x18
    ldr r0, [r1, #8]
    cmp r0, #0
    bne .L08038762
    ldrb r0, [r1, #2]
    cmp r0, #0
    beq .L08038792
.L08038762:
    mov r1, sp
    ldrb r0, [r1, #0x18]
    ldrb r1, [r1, #0x19]
    mov r2, sp
    ldrb r3, [r2, #0x1a]
    ldrb r2, [r2, #0x1c]
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #1
    bl func_08034E50
    mov r3, sp
    movs r1, #0x1c
    ldrsb r1, [r3, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08038792
    ldr r0, .L080387A4 @ =gActiveUnit
    ldr r0, [r0]
    bl func_080347A8
.L08038792:
    add sp, #0x28
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080387A4: .4byte gActiveUnit
.L080387A8: .4byte gBmMapRange
.L080387AC: .4byte 0x00010025
    func_end func_08038558

    thumb_func_start func_080387B0
func_080387B0: @ 0x080387B0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x28
    str r0, [sp, #0x24]
    add r2, sp, #0x18
    movs r5, #0
    strb r5, [r2, #2]
    str r5, [r2, #8]
    ldr r6, .L08038954 @ =gActiveUnit
    ldr r0, [r6]
    ldr r0, [r0, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    mov r8, r2
    cmp r0, #0
    beq .L08038814
    ldr r4, .L08038958 @ =gBmMapMovement
    ldr r0, [r4]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r2, [r6]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, [r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    strb r5, [r0]
    ldr r1, [r6]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08034698
    cmp r0, #0
    bne .L080388D2
    ldr r0, [r6]
    bl func_080347A8
.L08038814:
    ldr r0, .L0803895C @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0
    mov sb, r0
    ldr r0, [r6]
    ldrh r5, [r0, #0x1e]
    cmp r5, #0
    beq .L080388D2
    add r1, sp, #0xc
    mov sl, r1
.L0803882C:
    ldr r2, .L08038954 @ =gActiveUnit
    ldr r0, [r2]
    adds r1, r5, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    mov r7, sb
    adds r7, #1
    cmp r0, #0
    beq .L080388BC
    mov r4, sb
    mov r3, sl
    strh r4, [r3, #4]
    movs r6, #1
.L08038848:
    adds r0, r6, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L080388B6
    ldr r0, [r4]
    cmp r0, #0
    beq .L080388B6
    ldr r0, [r4, #0xc]
    ldr r1, .L08038960 @ =0x00010025
    ands r0, r1
    cmp r0, #0
    bne .L080388B6
    adds r0, r4, #0
    ldr r1, [sp, #0x24]
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080388B6
    ldr r2, .L08038954 @ =gActiveUnit
    ldr r0, [r2]
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_08035D50
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080388B6
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08038964
    ldrb r0, [r4, #0xb]
    mov r3, sl
    strb r0, [r3, #2]
    add r0, sp, #0xc
    bl func_08038DA4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080388B6
    ldr r1, [sp, #0x14]
    mov r4, r8
    ldr r0, [r4, #8]
    cmp r1, r0
    blo .L080388B6
    mov r1, r8
    add r0, sp, #0xc
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    mov r1, sb
    mov r0, r8
    strh r1, [r0, #4]
.L080388B6:
    adds r6, #1
    cmp r6, #0xbf
    ble .L08038848
.L080388BC:
    mov sb, r7
    cmp r7, #4
    bgt .L080388D2
    ldr r2, .L08038954 @ =gActiveUnit
    ldr r0, [r2]
    lsls r1, r7, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r5, [r0]
    cmp r5, #0
    bne .L0803882C
.L080388D2:
    ldr r0, .L08038954 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L0803890A
    ldr r0, [sp, #0x24]
    add r1, sp, #0xc
    bl func_08038A7C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803890A
    ldr r1, [sp, #0x14]
    mov r3, r8
    ldr r0, [r3, #8]
    cmp r1, r0
    blo .L0803890A
    mov r1, r8
    add r0, sp, #0xc
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
.L0803890A:
    mov r1, r8
    ldr r0, [r1, #8]
    cmp r0, #0
    bne .L08038918
    ldrb r0, [r1, #2]
    cmp r0, #0
    beq .L08038944
.L08038918:
    mov r4, r8
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    ldrb r3, [r4, #2]
    ldrb r2, [r4, #4]
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #1
    bl func_08034E50
    movs r1, #4
    ldrsb r1, [r4, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08038944
    ldr r0, .L08038954 @ =gActiveUnit
    ldr r0, [r0]
    bl func_080347A8
.L08038944:
    add sp, #0x28
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08038954: .4byte gActiveUnit
.L08038958: .4byte gBmMapMovement
.L0803895C: .4byte gBmMapRange
.L08038960: .4byte 0x00010025
    func_end func_080387B0

    thumb_func_start func_08038964
func_08038964: @ 0x08038964
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r0, #0
    lsls r5, r1, #0x10
    lsrs r5, r5, #0x10
    ldr r0, .L080389B4 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    movs r6, #0x10
    ldrsb r6, [r4, r6]
    ldrb r4, [r4, #0x11]
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    mov r8, r4
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
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080389B4: .4byte gBmMapRange
    func_end func_08038964

    thumb_func_start func_080389B8
func_080389B8: @ 0x080389B8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    mov sl, r2
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L08038A70 @ =gBmMapMovement
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r3, #0xb
    ldrsb r3, [r5, r3]
    adds r2, r4, #0
    bl BeginMapFlood
    ldr r0, .L08038A74 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L08038A78 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r7, r0, #1
    cmp r7, #0
    blt .L08038A62
.L08038A08:
    ldr r0, .L08038A78 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r6, r0, #1
    subs r0, r7, #1
    mov sb, r0
    cmp r6, #0
    blt .L08038A5C
    lsls r1, r7, #0x10
    mov r8, r1
.L08038A1C:
    ldr r0, .L08038A70 @ =gBmMapMovement
    ldr r1, [r0]
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08038A56
    lsls r5, r6, #0x10
    asrs r5, r5, #0x10
    mov r0, sl
    bl func_0801736C
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    mov r0, sl
    bl func_08017384
    adds r3, r0, #0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r5, #0
    mov r2, r8
    asrs r1, r2, #0x10
    adds r2, r4, #0
    bl func_0801B19C
.L08038A56:
    subs r6, #1
    cmp r6, #0
    bge .L08038A1C
.L08038A5C:
    mov r7, sb
    cmp r7, #0
    bge .L08038A08
.L08038A62:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08038A70: .4byte gBmMapMovement
.L08038A74: .4byte gBmMapRange
.L08038A78: .4byte gBmMapSize
    func_end func_080389B8

    thumb_func_start func_08038A7C
func_08038A7C: @ 0x08038A7C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    str r0, [sp, #0x10]
    mov r8, r1
    movs r0, #0
    mov sl, r0
    add r4, sp, #0xc
    ldr r1, .L08038AF0 @ =0x081D3B64
    adds r0, r4, #0
    movs r2, #3
    bl memcpy
    ldr r0, .L08038AF4 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r7, r0, #1
    cmp r7, #0
    blt .L08038B18
.L08038AA8:
    ldr r0, .L08038AF4 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r3, r7, #1
    mov sb, r3
    cmp r4, #0
    blt .L08038B12
    ldr r2, .L08038AF8 @ =gBmMapMovement
    lsls r6, r7, #2
.L08038ABC:
    ldr r0, [r2]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08038B0C
    adds r0, r4, #0
    adds r1, r7, #0
    str r2, [sp, #0x14]
    bl func_080346C8
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    ldr r2, [sp, #0x14]
    cmp r5, #0
    beq .L08038AFC
    movs r0, #1
    add sl, r0
    ldr r0, [r2]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    strb r5, [r0]
    b .L08038B0C
    .align 2, 0
.L08038AF0: .4byte 0x081D3B64
.L08038AF4: .4byte gBmMapSize
.L08038AF8: .4byte gBmMapMovement
.L08038AFC:
    ldr r0, [r2]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    movs r3, #1
    rsbs r3, r3, #0
    adds r1, r3, #0
    strb r1, [r0]
.L08038B0C:
    subs r4, #1
    cmp r4, #0
    bge .L08038ABC
.L08038B12:
    mov r7, sb
    cmp r7, #0
    bge .L08038AA8
.L08038B18:
    mov r0, sl
    cmp r0, #0
    beq .L08038BD8
    movs r0, #0
    mov r1, r8
    strb r0, [r1, #2]
    str r0, [r1, #8]
    movs r1, #0
    mov r6, sp
.L08038B2A:
    mov r0, sp
    adds r0, r0, r1
    adds r0, #0xc
    ldrb r5, [r0]
    ldr r0, .L08038BCC @ =0x0000FFFF
    mov r2, r8
    strh r0, [r2, #4]
    movs r7, #1
    adds r1, #1
    mov sb, r1
.L08038B3E:
    adds r0, r7, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L08038BAC
    ldr r0, [r4]
    cmp r0, #0
    beq .L08038BAC
    ldr r0, [r4, #0xc]
    ldr r1, .L08038BD0 @ =0x00010025
    ands r0, r1
    cmp r0, #0
    bne .L08038BAC
    adds r0, r4, #0
    ldr r3, [sp, #0x10]
    bl _call_via_r3
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038BAC
    ldr r0, .L08038BD4 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_08035D50
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038BAC
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08038964
    ldrb r0, [r4, #0xb]
    strb r0, [r6, #2]
    mov r0, sp
    adds r1, r5, #0
    bl func_08038E64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038BAC
    ldr r1, [sp, #8]
    mov r2, r8
    ldr r0, [r2, #8]
    cmp r1, r0
    blo .L08038BAC
    ldrb r0, [r6]
    strb r0, [r2]
    ldrb r0, [r6, #1]
    strb r0, [r2, #1]
    ldrb r0, [r6, #2]
    strb r0, [r2, #2]
    str r1, [r2, #8]
.L08038BAC:
    adds r7, #1
    cmp r7, #0xbf
    ble .L08038B3E
    mov r1, sb
    cmp r1, #2
    ble .L08038B2A
    mov r3, r8
    ldr r0, [r3, #8]
    cmp r0, #0
    bne .L08038BC6
    ldrb r0, [r3, #2]
    cmp r0, #0
    beq .L08038BD8
.L08038BC6:
    movs r0, #1
    b .L08038BDA
    .align 2, 0
.L08038BCC: .4byte 0x0000FFFF
.L08038BD0: .4byte 0x00010025
.L08038BD4: .4byte gActiveUnit
.L08038BD8:
    movs r0, #0
.L08038BDA:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08038A7C

    thumb_func_start func_08038BEC
func_08038BEC: @ 0x08038BEC
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    ldr r1, .L08038C24 @ =gBmMapMovement
    ldr r0, [r1]
    lsls r2, r4, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x77
    bgt .L08038C20
    ldr r0, .L08038C28 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r2, [r0]
    cmp r2, #0
    beq .L08038C30
    ldr r0, .L08038C2C @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r2, r0
    beq .L08038C30
.L08038C20:
    movs r0, #0xff
    b .L08038C3C
    .align 2, 0
.L08038C24: .4byte gBmMapMovement
.L08038C28: .4byte gBmMapUnit
.L08038C2C: .4byte gActiveUnitId
.L08038C30:
    ldr r1, [r1]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
.L08038C3C:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08038BEC

    thumb_func_start func_08038C44
func_08038C44: @ 0x08038C44
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    movs r0, #0
    str r0, [sp, #0x10]
    movs r1, #0xff
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x18]
    ldr r0, .L08038C68 @ =gBmMapSize
    movs r3, #2
    ldrsh r0, [r0, r3]
    subs r0, #1
    b .L08038D40
    .align 2, 0
.L08038C68: .4byte gBmMapSize
.L08038C6C:
    ldr r0, .L08038D50 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    mov r2, r8
    subs r2, #1
    str r2, [sp, #0x20]
    cmp r5, #0
    blt .L08038D3E
    mov r3, r8
    lsls r7, r3, #2
.L08038C82:
    ldr r0, .L08038D54 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08038D38
    ldr r0, .L08038D58 @ =gBmMapUnit
    mov sl, r0
    ldr r0, [r0]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r1, r0, r5
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08038D38
    ldr r0, .L08038D5C @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08038D38
    mov r1, sp
    adds r1, #0xc
    str r1, [sp, #0x1c]
    adds r0, r5, #0
    mov r1, r8
    ldr r2, .L08038D60 @ =func_08038BEC
    add r3, sp, #0xc
    bl func_08036810
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038D38
    mov r2, sl
    ldr r0, [r2]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    ldr r0, .L08038D64 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x16
    ldrsb r1, [r0, r1]
    movs r0, #0x16
    ldrsb r0, [r4, r0]
    cmp r1, r0
    blt .L08038D38
    adds r0, r4, #0
    bl func_080368C0
    lsls r6, r0, #0x18
    asrs r1, r6, #0x18
    cmp r1, #0
    blt .L08038D38
    lsls r1, r1, #1
    adds r0, r4, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrb r0, [r0]
    bl func_0803688C
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r3, [sp, #0x14]
    cmp r3, r0
    blo .L08038D38
    str r0, [sp, #0x14]
    add r1, sp, #0xc
    ldr r2, [sp, #0x1c]
    ldrh r0, [r2, #2]
    lsls r0, r0, #0x10
    ldrh r1, [r1]
    orrs r1, r0
    mov sb, r1
    mov r3, sl
    ldr r0, [r3]
    adds r0, r7, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    str r0, [sp, #0x18]
    lsrs r6, r6, #0x18
    str r6, [sp, #0x10]
.L08038D38:
    subs r5, #1
    cmp r5, #0
    bge .L08038C82
.L08038D3E:
    ldr r0, [sp, #0x20]
.L08038D40:
    mov r8, r0
    cmp r0, #0
    bge .L08038C6C
    ldr r1, [sp, #0x14]
    cmp r1, #0xff
    bne .L08038D68
    movs r0, #0
    b .L08038D90
    .align 2, 0
.L08038D50: .4byte gBmMapSize
.L08038D54: .4byte gBmMapMovement
.L08038D58: .4byte gBmMapUnit
.L08038D5C: .4byte gActiveUnitId
.L08038D60: .4byte func_08038BEC
.L08038D64: .4byte gActiveUnit
.L08038D68:
    ldr r0, .L08038DA0 @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x46
    ldrb r1, [r0]
    adds r1, #1
    movs r2, #0
    strb r1, [r0]
    mov r3, sb
    lsls r0, r3, #0x10
    asrs r0, r0, #0x10
    asrs r1, r3, #0x10
    ldr r3, [sp, #0x10]
    str r3, [sp]
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #3
    ldr r3, [sp, #0x18]
    bl func_08034E50
    movs r0, #1
.L08038D90:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08038DA0: .4byte gActiveUnit
    func_end func_08038C44

    thumb_func_start func_08038DA4
func_08038DA4: @ 0x08038DA4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    movs r3, #0
    ldr r0, .L08038E40 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L08038E2E
.L08038DBC:
    ldr r0, .L08038E40 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r0, r5, #1
    mov r8, r0
    cmp r4, #0
    blt .L08038E28
    lsls r6, r5, #2
.L08038DCE:
    ldr r0, .L08038E44 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08038E22
    ldr r0, .L08038E48 @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08038E22
    ldr r0, .L08038E4C @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    cmp r1, #0
    beq .L08038E0A
    ldr r0, .L08038E50 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L08038E22
.L08038E0A:
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    str r3, [sp]
    bl func_08038F38
    ldr r3, [sp]
    cmp r0, r3
    bls .L08038E22
    strb r4, [r7]
    strb r5, [r7, #1]
    adds r3, r0, #0
.L08038E22:
    subs r4, #1
    cmp r4, #0
    bge .L08038DCE
.L08038E28:
    mov r5, r8
    cmp r5, #0
    bge .L08038DBC
.L08038E2E:
    cmp r3, #0
    beq .L08038E54
    adds r0, r7, #0
    bl func_08038FA4
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L08038E56
    .align 2, 0
.L08038E40: .4byte gBmMapSize
.L08038E44: .4byte gBmMapMovement
.L08038E48: .4byte gBmMapRange
.L08038E4C: .4byte gBmMapUnit
.L08038E50: .4byte gActiveUnitId
.L08038E54:
    movs r0, #0
.L08038E56:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08038DA4

    thumb_func_start func_08038E64
func_08038E64: @ 0x08038E64
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r7, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov sb, r1
    movs r3, #0
    ldr r0, .L08038F14 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L08038F04
.L08038E84:
    ldr r0, .L08038F14 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r0, r5, #1
    mov r8, r0
    cmp r4, #0
    blt .L08038EFE
    lsls r6, r5, #2
.L08038E96:
    ldr r0, .L08038F18 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    cmp r1, #0x78
    bhi .L08038EF8
    movs r1, #0
    ldrsb r1, [r0, r1]
    mov r2, sb
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x18
    cmp r1, r0
    bne .L08038EF8
    ldr r0, .L08038F1C @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08038EF8
    ldr r0, .L08038F20 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    cmp r1, #0
    beq .L08038EE0
    ldr r0, .L08038F24 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L08038EF8
.L08038EE0:
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    str r3, [sp]
    bl func_08038F38
    ldr r3, [sp]
    cmp r0, r3
    bls .L08038EF8
    strb r4, [r7]
    strb r5, [r7, #1]
    adds r3, r0, #0
.L08038EF8:
    subs r4, #1
    cmp r4, #0
    bge .L08038E96
.L08038EFE:
    mov r5, r8
    cmp r5, #0
    bge .L08038E84
.L08038F04:
    cmp r3, #0
    beq .L08038F28
    adds r0, r7, #0
    bl func_08038FA4
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L08038F2A
    .align 2, 0
.L08038F14: .4byte gBmMapSize
.L08038F18: .4byte gBmMapMovement
.L08038F1C: .4byte gBmMapRange
.L08038F20: .4byte gBmMapUnit
.L08038F24: .4byte gActiveUnitId
.L08038F28:
    movs r0, #0
.L08038F2A:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08038E64

    thumb_func_start func_08038F38
func_08038F38: @ 0x08038F38
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldrb r0, [r2, #2]
    bl GetUnit
    adds r2, r0, #0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_080392B4
    adds r4, r0, #0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08039304
    adds r4, r4, r0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08039344
    adds r4, r4, r0
    ldr r0, .L08038F94 @ =gBmMapMovement
    ldr r0, [r0]
    lsls r5, r5, #2
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    subs r4, r4, r0
    ldr r0, .L08038F98 @ =gBmMapOther
    ldr r0, [r0]
    adds r5, r5, r0
    ldr r0, [r5]
    adds r0, r0, r6
    ldrb r0, [r0]
    lsrs r0, r0, #3
    subs r4, r4, r0
    ldr r0, .L08038F9C @ =0x7FFFFFFF
    adds r4, r4, r0
    adds r0, r4, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08038F94: .4byte gBmMapMovement
.L08038F98: .4byte gBmMapOther
.L08038F9C: .4byte 0x7FFFFFFF
    func_end func_08038F38

    thumb_func_start func_08038FA0
func_08038FA0: @ 0x08038FA0
    movs r0, #0
    bx lr
    func_end func_08038FA0

    thumb_func_start func_08038FA4
func_08038FA4: @ 0x08038FA4
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, .L08038FCC @ =0x0000FFFF
    ldrh r1, [r5, #4]
    cmp r1, r0
    beq .L08038FD4
    ldrb r0, [r5, #2]
    bl GetUnit
    adds r1, r0, #0
    ldr r0, .L08038FD0 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r2, [r5]
    ldrb r3, [r5, #1]
    ldrh r4, [r5, #4]
    str r4, [sp]
    bl BattleGenerateSimulation
    b .L08038FEA
    .align 2, 0
.L08038FCC: .4byte 0x0000FFFF
.L08038FD0: .4byte gActiveUnit
.L08038FD4:
    ldr r0, .L08038FFC @ =gActiveUnit
    ldr r4, [r0]
    ldrb r0, [r5, #2]
    bl GetUnit
    adds r1, r0, #0
    ldrb r2, [r5]
    ldrb r3, [r5, #1]
    adds r0, r4, #0
    bl BattleGenerateBallistaSimulation
.L08038FEA:
    adds r0, r5, #0
    bl func_08038FA0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039000
    movs r0, #0
    b .L08039008
    .align 2, 0
.L08038FFC: .4byte gActiveUnit
.L08039000:
    adds r0, r5, #0
    bl func_08039240
    movs r0, #1
.L08039008:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08038FA4

    thumb_func_start func_08039010
func_08039010: @ 0x08039010
    push {r4, lr}
    ldr r3, .L08039020 @ =0x0203A470
    movs r0, #0x13
    ldrsb r0, [r3, r0]
    cmp r0, #0
    bne .L08039024
    movs r0, #0x32
    b .L08039062
    .align 2, 0
.L08039020: .4byte 0x0203A470
.L08039024:
    ldr r1, .L08039068 @ =0x0203A3F0
    adds r0, r1, #0
    adds r0, #0x5a
    movs r4, #0
    ldrsh r2, [r0, r4]
    adds r0, r3, #0
    adds r0, #0x5c
    movs r3, #0
    ldrsh r0, [r0, r3]
    subs r2, r2, r0
    adds r1, #0x64
    movs r4, #0
    ldrsh r0, [r1, r4]
    adds r1, r2, #0
    muls r1, r0, r1
    cmp r1, #0
    bge .L08039048
    movs r1, #0
.L08039048:
    adds r0, r1, #0
    movs r1, #0x64
    bl Div
    adds r1, r0, #0
    ldr r0, .L0803906C @ =0x030013C0
    ldr r0, [r0]
    ldrb r0, [r0]
    muls r1, r0, r1
    cmp r1, #0x28
    ble .L08039060
    movs r1, #0x28
.L08039060:
    adds r0, r1, #0
.L08039062:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08039068: .4byte 0x0203A3F0
.L0803906C: .4byte 0x030013C0
    func_end func_08039010

    thumb_func_start func_08039070
func_08039070: @ 0x08039070
    ldr r0, .L0803908C @ =0x0203A470
    movs r1, #0x13
    ldrsb r1, [r0, r1]
    movs r0, #0x14
    subs r1, r0, r1
    ldr r0, .L08039090 @ =0x030013C0
    ldr r0, [r0]
    ldrb r0, [r0, #1]
    muls r1, r0, r1
    cmp r1, #0
    bge .L08039088
    movs r1, #0
.L08039088:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0803908C: .4byte 0x0203A470
.L08039090: .4byte 0x030013C0
    func_end func_08039070

    thumb_func_start func_08039094
func_08039094: @ 0x08039094
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    movs r5, #0
    ldr r4, .L08039124 @ =0x08B989FC
    ldrb r2, [r4]
    cmp r2, #0x7f
    beq .L08039108
    ldr r0, .L08039128 @ =0x0203A3F0
    mov sb, r0
    ldr r1, .L0803912C @ =gBmMapSize
    mov r8, r1
.L080390AE:
    mov r3, sb
    ldrb r3, [r3, #0x10]
    adds r2, r2, r3
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    mov r6, sb
    ldrb r6, [r6, #0x11]
    ldrb r7, [r4, #1]
    adds r0, r6, r7
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    ldr r0, .L08039130 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r1, [r0]
    mov r6, r8
    movs r7, #0
    ldrsh r0, [r6, r7]
    cmp r2, r0
    bge .L08039100
    movs r2, #2
    ldrsh r0, [r6, r2]
    cmp r3, r0
    bge .L08039100
    cmp r1, #0
    beq .L08039100
    mov r3, sb
    movs r0, #0xb
    ldrsb r0, [r3, r0]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08039100
    movs r0, #2
    ldrsb r0, [r4, r0]
    adds r5, r5, r0
.L08039100:
    adds r4, #4
    ldrb r2, [r4]
    cmp r2, #0x7f
    bne .L080390AE
.L08039108:
    ldr r0, .L08039134 @ =0x030013C0
    ldr r0, [r0]
    ldrb r0, [r0, #2]
    muls r5, r0, r5
    cmp r5, #0xa
    ble .L08039116
    movs r5, #0xa
.L08039116:
    adds r0, r5, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08039124: .4byte 0x08B989FC
.L08039128: .4byte 0x0203A3F0
.L0803912C: .4byte gBmMapSize
.L08039130: .4byte gBmMapUnit
.L08039134: .4byte 0x030013C0
    func_end func_08039094

    thumb_func_start func_08039138
func_08039138: @ 0x08039138
    push {lr}
    ldr r0, .L08039164 @ =0x0203A470
    ldr r0, [r0, #4]
    ldrb r0, [r0, #4]
    bl func_08037044
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, .L08039168 @ =0x030013C0
    ldr r2, [r1]
    adds r1, r2, #0
    adds r1, #8
    adds r1, r1, r0
    ldrb r2, [r2, #3]
    ldrb r1, [r1]
    adds r0, r2, #0
    muls r0, r1, r0
    cmp r0, #0x14
    ble .L08039160
    movs r0, #0x14
.L08039160:
    pop {r1}
    bx r1
    .align 2, 0
.L08039164: .4byte 0x0203A470
.L08039168: .4byte 0x030013C0
    func_end func_08039138

    thumb_func_start func_0803916C
func_0803916C: @ 0x0803916C
    ldr r1, .L0803917C @ =gPlaySt
    ldr r0, .L08039180 @ =0x030013C0
    ldr r0, [r0]
    ldrb r0, [r0, #4]
    ldrh r1, [r1, #0x10]
    muls r0, r1, r0
    bx lr
    .align 2, 0
.L0803917C: .4byte gPlaySt
.L08039180: .4byte 0x030013C0
    func_end func_0803916C

    thumb_func_start func_08039184
func_08039184: @ 0x08039184
    push {lr}
    ldr r2, .L08039198 @ =0x0203A470
    adds r0, r2, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    bne .L0803919C
    movs r0, #0xa
    rsbs r0, r0, #0
    b .L080391D8
    .align 2, 0
.L08039198: .4byte 0x0203A470
.L0803919C:
    adds r0, r2, #0
    adds r0, #0x5a
    movs r3, #0
    ldrsh r1, [r0, r3]
    ldr r0, .L080391DC @ =0x0203A3F0
    adds r0, #0x5c
    movs r3, #0
    ldrsh r0, [r0, r3]
    subs r1, r1, r0
    adds r0, r2, #0
    adds r0, #0x64
    movs r2, #0
    ldrsh r0, [r0, r2]
    muls r1, r0, r1
    cmp r1, #0
    bge .L080391BE
    movs r1, #0
.L080391BE:
    adds r0, r1, #0
    movs r1, #0x64
    bl Div
    adds r1, r0, #0
    ldr r0, .L080391E0 @ =0x030013C0
    ldr r0, [r0]
    ldrb r0, [r0, #5]
    muls r1, r0, r1
    cmp r1, #0x28
    ble .L080391D6
    movs r1, #0x28
.L080391D6:
    adds r0, r1, #0
.L080391D8:
    pop {r1}
    bx r1
    .align 2, 0
.L080391DC: .4byte 0x0203A3F0
.L080391E0: .4byte 0x030013C0
    func_end func_08039184

    thumb_func_start func_080391E4
func_080391E4: @ 0x080391E4
    ldr r2, .L08039210 @ =0x0203A3F0
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, .L08039214 @ =gBmMapOther
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    lsrs r1, r0, #3
    ldr r0, .L08039218 @ =0x030013C0
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    muls r1, r0, r1
    cmp r1, #0x14
    ble .L0803920C
    movs r1, #0x14
.L0803920C:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L08039210: .4byte 0x0203A3F0
.L08039214: .4byte gBmMapOther
.L08039218: .4byte 0x030013C0
    func_end func_080391E4

    thumb_func_start func_0803921C
func_0803921C: @ 0x0803921C
    ldr r0, .L08039238 @ =0x0203A3F0
    movs r1, #0x13
    ldrsb r1, [r0, r1]
    movs r0, #0x14
    subs r1, r0, r1
    ldr r0, .L0803923C @ =0x030013C0
    ldr r0, [r0]
    ldrb r0, [r0, #7]
    muls r1, r0, r1
    cmp r1, #0
    bge .L08039234
    movs r1, #0
.L08039234:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L08039238: .4byte 0x0203A3F0
.L0803923C: .4byte 0x030013C0
    func_end func_0803921C

    thumb_func_start func_08039240
func_08039240: @ 0x08039240
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r2, .L0803929C @ =0x030013C0
    ldr r1, .L080392A0 @ =0x0203A8EC
    adds r1, #0x7d
    ldrb r3, [r1]
    lsls r0, r3, #2
    adds r0, r0, r3
    lsls r0, r0, #2
    ldr r1, .L080392A4 @ =0x081D36F4
    adds r0, r0, r1
    str r0, [r2]
    bl func_08039010
    adds r4, r0, #0
    adds r5, r4, #0
    bl func_08039070
    adds r4, r4, r0
    bl func_08039094
    adds r4, r4, r0
    bl func_08039138
    adds r4, r4, r0
    bl func_0803916C
    adds r4, r4, r0
    bl func_08039184
    subs r4, r4, r0
    bl func_080391E4
    subs r4, r4, r0
    bl func_0803921C
    subs r4, r4, r0
    cmp r4, #0
    bge .L08039290
    movs r4, #0
.L08039290:
    cmp r4, #0
    beq .L080392A8
    lsls r0, r4, #2
    adds r0, r0, r4
    lsls r4, r0, #3
    b .L080392AA
    .align 2, 0
.L0803929C: .4byte 0x030013C0
.L080392A0: .4byte 0x0203A8EC
.L080392A4: .4byte 0x081D36F4
.L080392A8:
    adds r4, r5, #0
.L080392AA:
    str r4, [r6, #8]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08039240

    thumb_func_start func_080392B4
func_080392B4: @ 0x080392B4
    push {r4, r5, lr}
    movs r4, #0x10
    ldrsb r4, [r2, r4]
    subs r3, r4, r0
    cmp r3, #0
    bge .L080392C2
    subs r3, r0, r4
.L080392C2:
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    subs r4, r0, r1
    cmp r4, #0
    blt .L080392D0
    adds r5, r3, r4
    b .L080392D4
.L080392D0:
    subs r0, r1, r0
    adds r5, r3, r0
.L080392D4:
    adds r0, r2, #0
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0
    beq .L080392FA
    adds r0, r4, #0
    bl func_08017384
    cmp r5, r0
    bgt .L080392F6
    adds r0, r4, #0
    bl func_0801736C
    cmp r5, r0
    bge .L080392FA
.L080392F6:
    movs r0, #0x32
    b .L080392FC
.L080392FA:
    movs r0, #0
.L080392FC:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080392B4

    thumb_func_start func_08039304
func_08039304: @ 0x08039304
    ldr r2, .L0803933C @ =gBmMapTerrain
    ldr r2, [r2]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r1, [r1]
    adds r1, r1, r0
    ldrb r3, [r1]
    ldr r0, .L08039340 @ =gActiveUnit
    ldr r0, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r2, #0x44]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r1, [r2, #0x48]
    adds r1, r1, r3
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    ldr r1, [r2, #0x4c]
    adds r1, r1, r3
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L0803933C: .4byte gBmMapTerrain
.L08039340: .4byte gActiveUnit
    func_end func_08039304

    thumb_func_start func_08039344
func_08039344: @ 0x08039344
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    adds r6, r1, #0
    movs r5, #0
    ldr r4, .L08039394 @ =0x08B98A60
    movs r1, #0
    ldrsh r0, [r4, r1]
    ldr r1, .L08039398 @ =0x0000270F
    cmp r0, r1
    beq .L080393B0
    mov r8, r1
.L0803935E:
    movs r2, #2
    ldrsh r0, [r4, r2]
    adds r0, r6, r0
    ldr r1, .L0803939C @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r4, r2]
    ldr r0, [r0]
    adds r1, r7, r1
    adds r1, r0, r1
    ldrb r0, [r1]
    cmp r0, #0
    beq .L080393A6
    ldr r0, .L080393A0 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080393A4
    adds r5, #5
    b .L080393A6
    .align 2, 0
.L08039394: .4byte 0x08B98A60
.L08039398: .4byte 0x0000270F
.L0803939C: .4byte gBmMapUnit
.L080393A0: .4byte gActiveUnitId
.L080393A4:
    subs r5, #5
.L080393A6:
    adds r4, #4
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, r8
    bne .L0803935E
.L080393B0:
    adds r0, r5, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08039344

    thumb_func_start AiRefreshDangerMap
AiRefreshDangerMap: @ 0x080393BC
    push {lr}
    ldr r0, .L080393E0 @ =0x0203A8EC
    adds r1, r0, #0
    adds r1, #0x7a
    ldrb r0, [r1]
    cmp r0, #0
    bne .L080393DC
    movs r0, #1
    strb r0, [r1]
    ldr r0, .L080393E4 @ =gBmMapOther
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    bl AiFillDangerMap
.L080393DC:
    pop {r0}
    bx r0
    .align 2, 0
.L080393E0: .4byte 0x0203A8EC
.L080393E4: .4byte gBmMapOther
    func_end AiRefreshDangerMap

    thumb_func_start AiFillDangerMap
AiFillDangerMap: @ 0x080393E8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    movs r0, #0
    mov r8, r0
    mov sb, r0
    movs r4, #1
.L080393FA:
    adds r0, r4, #0
    bl GetUnit
    adds r6, r0, #0
    adds r4, #1
    mov sl, r4
    cmp r6, #0
    beq .L080394E4
    ldr r0, [r6]
    cmp r0, #0
    beq .L080394E4
    ldr r0, [r6, #0xc]
    ldr r1, .L080394F8 @ =0x0001000D
    ands r0, r1
    cmp r0, #0
    bne .L080394E4
    ldr r0, .L080394FC @ =gActiveUnitId
    ldrb r0, [r0]
    movs r1, #0xb
    ldrsb r1, [r6, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080394E4
    movs r5, #0
    ldrh r4, [r6, #0x1e]
    cmp r4, #0
    beq .L0803946E
.L08039434:
    adds r0, r6, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803945A
    adds r0, r4, #0
    bl GetItemMight
    cmp r0, sb
    ble .L0803945A
    mov r8, r4
    mov r0, r8
    bl GetItemMight
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov sb, r0
.L0803945A:
    adds r5, #1
    cmp r5, #4
    bgt .L0803946E
    lsls r1, r5, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L08039434
.L0803946E:
    mov r1, r8
    cmp r1, #0
    beq .L080394E4
    ldr r0, .L08039500 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r6, #0
    mov r2, r8
    bl AiCouldReachByBirdsEyeDistance
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080394E4
    adds r0, r6, #0
    mov r1, r8
    bl AiMakeMoveRangeMapsForUnitAndWeapon
    ldr r0, .L08039504 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r1, r0, #1
    cmp r1, #0
    blt .L080394E4
.L0803949A:
    ldr r0, .L08039504 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r7, r1, #1
    cmp r4, #0
    blt .L080394DE
    lsls r5, r1, #2
.L080394AA:
    ldr r0, .L08039508 @ =gBmMapRange
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L080394D8
    adds r0, r6, #0
    bl GetUnitPower
    ldr r1, .L0803950C @ =gBmMapOther
    ldr r1, [r1]
    adds r1, r5, r1
    ldr r1, [r1]
    adds r1, r1, r4
    add r0, sb
    asrs r0, r0, #1
    ldrb r2, [r1]
    adds r0, r2, r0
    strb r0, [r1]
.L080394D8:
    subs r4, #1
    cmp r4, #0
    bge .L080394AA
.L080394DE:
    adds r1, r7, #0
    cmp r1, #0
    bge .L0803949A
.L080394E4:
    mov r4, sl
    cmp r4, #0xbf
    ble .L080393FA
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080394F8: .4byte 0x0001000D
.L080394FC: .4byte gActiveUnitId
.L08039500: .4byte gActiveUnit
.L08039504: .4byte gBmMapSize
.L08039508: .4byte gBmMapRange
.L0803950C: .4byte gBmMapOther
    func_end AiFillDangerMap

    thumb_func_start func_08039510
func_08039510: @ 0x08039510
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    ldr r3, .L0803952C @ =gBmMapOther
    ldr r3, [r3]
    lsls r1, r1, #2
    adds r1, r1, r3
    ldr r1, [r1]
    adds r1, r1, r0
    ldrb r1, [r1]
    cmp r1, r2
    bhi .L08039530
    movs r0, #1
    b .L08039532
    .align 2, 0
.L0803952C: .4byte gBmMapOther
.L08039530:
    movs r0, #0
.L08039532:
    bx lr
    func_end func_08039510

    thumb_func_start func_08039534
func_08039534: @ 0x08039534
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov r8, r0
    ldr r0, .L080395F8 @ =0x00002710
    str r0, [sp]
    movs r1, #0xff
    mov sb, r1
    ldr r0, .L080395FC @ =gActiveUnit
    ldr r2, [r0]
    adds r1, r2, #0
    adds r1, #0x40
    movs r3, #0x80
    lsls r3, r3, #6
    adds r0, r3, #0
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08039562
    b .L080396F0
.L08039562:
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    ands r0, r3
    cmp r0, #0
    beq .L08039574
    b .L080396F0
.L08039574:
    adds r0, r2, #0
    movs r1, #0x7c
    bl GenerateUnitMovementMapExt
    ldr r0, .L08039600 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r0, r2]
    subs r7, r0, #1
    cmp r7, #0
    bge .L0803958A
    b .L080396A6
.L0803958A:
    ldr r0, .L08039600 @ =gBmMapSize
    movs r3, #0
    ldrsh r0, [r0, r3]
    subs r4, r0, #1
    subs r0, r7, #1
    mov sl, r0
    cmp r4, #0
    bge .L0803959C
    b .L0803969E
.L0803959C:
    lsls r5, r7, #2
.L0803959E:
    ldr r0, .L08039604 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08039696
    ldr r0, .L08039608 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    ldr r0, .L0803960C @ =0x08B98AC4
    bl func_08035E28
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08039618
    ldr r6, .L08039610 @ =gBmMapUnit
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08039696
    ldr r0, .L08039614 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039696
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r2, r0, #0
    b .L0803965A
    .align 2, 0
.L080395F8: .4byte 0x00002710
.L080395FC: .4byte gActiveUnit
.L08039600: .4byte gBmMapSize
.L08039604: .4byte gBmMapMovement
.L08039608: .4byte gBmMapTerrain
.L0803960C: .4byte 0x08B98AC4
.L08039610: .4byte gBmMapUnit
.L08039614: .4byte gActiveUnitId
.L08039618:
    ldr r6, .L080396E4 @ =gBmMapUnit
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08039664
    ldr r0, .L080396E8 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039696
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x40
    movs r3, #0x80
    lsls r3, r3, #6
    adds r0, r3, #0
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08039664
.L0803965A:
    movs r0, #4
    ldrb r2, [r2, #0xa]
    ands r0, r2
    cmp r0, #0
    beq .L08039696
.L08039664:
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    lsls r1, r7, #0x10
    asrs r1, r1, #0x10
    bl func_08036514
    adds r2, r0, #0
    ldr r0, [sp]
    cmp r2, r0
    bgt .L08039696
    ldr r0, .L080396EC @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, sb
    bgt .L08039696
    str r2, [sp]
    ldrb r1, [r1]
    mov sb, r1
    mov r1, r8
    strh r4, [r1]
    strh r7, [r1, #2]
.L08039696:
    subs r4, #1
    cmp r4, #0
    blt .L0803969E
    b .L0803959E
.L0803969E:
    mov r7, sl
    cmp r7, #0
    blt .L080396A6
    b .L0803958A
.L080396A6:
    mov r2, sb
    cmp r2, #0xff
    beq .L080396F0
    mov r3, r8
    movs r1, #2
    ldrsh r0, [r3, r1]
    ldr r1, .L080396E4 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r3, r2]
    ldr r0, [r0]
    adds r2, r0, r1
    ldrb r1, [r2]
    cmp r1, #0
    beq .L080396E0
    ldr r0, .L080396E8 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    beq .L080396E0
    adds r0, r1, #0
    bl GetUnit
    adds r2, r0, #0
    movs r0, #2
    ldrb r3, [r2, #0xa]
    orrs r0, r3
    strb r0, [r2, #0xa]
.L080396E0:
    movs r0, #1
    b .L080396F2
    .align 2, 0
.L080396E4: .4byte gBmMapUnit
.L080396E8: .4byte gActiveUnitId
.L080396EC: .4byte gBmMapMovement
.L080396F0:
    movs r0, #0
.L080396F2:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08039534

    thumb_func_start func_08039704
func_08039704: @ 0x08039704
    push {r4, r5, r6, lr}
    sub sp, #0xc
    ldr r0, .L08039754 @ =gPlaySt
    ldrb r2, [r0, #0xf]
    mov r1, sp
    ldr r0, .L08039758 @ =0x081D3B68
    ldm r0!, {r3, r4, r5}
    stm r1!, {r3, r4, r5}
    movs r5, #0
    lsrs r0, r2, #6
    lsls r0, r0, #2
    mov r3, sp
    adds r1, r3, r0
    ldr r0, [r1]
    cmp r5, r0
    bge .L0803974A
    adds r6, r1, #0
    adds r4, r2, #1
.L08039728:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L08039740
    ldr r0, [r1]
    cmp r0, #0
    beq .L08039740
    adds r0, r1, #0
    bl func_0803975C
.L08039740:
    adds r4, #1
    adds r5, #1
    ldr r0, [r6]
    cmp r5, r0
    blt .L08039728
.L0803974A:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08039754: .4byte gPlaySt
.L08039758: .4byte 0x081D3B68
    func_end func_08039704

    thumb_func_start func_0803975C
func_0803975C: @ 0x0803975C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl GetUnitCurrentHp
    movs r1, #0x64
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r5, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r4, #0
    bl Div
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    ldrb r3, [r5, #0xa]
    movs r0, #1
    ands r0, r3
    cmp r0, #0
    beq .L080397AC
    ldr r2, .L080397A8 @ =0x08B9727C
    adds r1, r5, #0
    adds r1, #0x40
    movs r0, #7
    ldrh r1, [r1]
    ands r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, r4
    bhi .L080397D2
    movs r0, #0xfe
    ands r0, r3
    strb r0, [r5, #0xa]
    movs r0, #0
    b .L080397D4
    .align 2, 0
.L080397A8: .4byte 0x08B9727C
.L080397AC:
    ldr r2, .L080397C8 @ =0x08B9727C
    adds r1, r5, #0
    adds r1, #0x40
    movs r0, #7
    ldrh r1, [r1]
    ands r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrb r0, [r0, #1]
    cmp r0, r4
    bhi .L080397CC
    movs r0, #0
    b .L080397D4
    .align 2, 0
.L080397C8: .4byte 0x08B9727C
.L080397CC:
    movs r0, #1
    orrs r0, r3
    strb r0, [r5, #0xa]
.L080397D2:
    movs r0, #1
.L080397D4:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803975C

    thumb_func_start func_080397DC
func_080397DC: @ 0x080397DC
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    movs r6, #0
    ldr r7, .L08039858 @ =gActiveUnit
.L080397E4:
    ldr r0, [r7]
    lsls r1, r6, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    adds r4, r0, #0
    cmp r4, #0
    beq .L0803988A
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x6b
    beq .L08039808
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x6c
    bne .L08039884
.L08039808:
    ldr r1, .L0803985C @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08039860
    ldr r2, [r7]
    adds r1, r2, #0
    adds r1, #0x40
    movs r3, #0x80
    lsls r3, r3, #6
    adds r0, r3, #0
    ldrh r1, [r1]
    ands r0, r1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0
    bne .L08039860
    add r5, sp, #0xc
    adds r0, r2, #0
    adds r1, r5, #0
    bl func_08036900
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08039884
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    lsls r2, r6, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    str r4, [sp, #4]
    str r4, [sp, #8]
    b .L08039878
    .align 2, 0
.L08039858: .4byte gActiveUnit
.L0803985C: .4byte 0x0203A8EC
.L08039860:
    ldr r1, [r7]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r2, r6, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
.L08039878:
    movs r2, #6
    movs r3, #0
    bl func_08034E50
    movs r0, #1
    b .L0803988C
.L08039884:
    adds r6, #1
    cmp r6, #4
    ble .L080397E4
.L0803988A:
    movs r0, #0
.L0803988C:
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080397DC

    thumb_func_start func_08039894
func_08039894: @ 0x08039894
    push {r4, r5, r6, lr}
    sub sp, #0xc
    ldr r6, .L08039904 @ =gActiveUnit
    ldr r0, [r6]
    movs r1, #0x7c
    bl GenerateUnitMovementMapExt
    bl func_0803993C
    adds r4, r0, #0
    cmp r4, #0
    beq .L08039930
    ldrb r5, [r4, #1]
    ldr r0, .L08039908 @ =gBmMapMovement
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldrb r3, [r4]
    ldr r0, [r0]
    adds r0, r0, r3
    movs r2, #0
    ldrsb r2, [r0, r2]
    ldr r1, [r6]
    movs r0, #0x1d
    ldrsb r0, [r1, r0]
    ldr r1, [r1, #4]
    ldrb r1, [r1, #0x12]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, r0, r1
    cmp r2, r0
    bgt .L08039910
    movs r0, #1
    str r0, [sp]
    adds r0, r3, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
    ldr r1, .L0803990C @ =0x0203A97C
    ldrb r0, [r1, #2]
    ldrb r1, [r1, #3]
    ldrb r3, [r4]
    ldrb r2, [r4, #1]
    str r2, [sp]
    ldrb r2, [r4, #2]
    str r2, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    movs r2, #2
    bl func_08034E50
    movs r0, #1
    b .L08039932
    .align 2, 0
.L08039904: .4byte gActiveUnit
.L08039908: .4byte gBmMapMovement
.L0803990C: .4byte 0x0203A97C
.L08039910:
    movs r0, #0
    str r0, [sp]
    adds r0, r3, #0
    adds r1, r5, #0
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
    ldr r0, .L0803992C @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L08039932
    .align 2, 0
.L0803992C: .4byte 0x0203A97C
.L08039930:
    movs r0, #0
.L08039932:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08039894

    thumb_func_start func_0803993C
func_0803993C: @ 0x0803993C
    push {r4, r5, r6, lr}
    movs r1, #0
    movs r5, #0
    ldr r0, .L0803995C @ =gPlaySt
    movs r2, #0xe
    ldrsb r2, [r0, r2]
    movs r4, #0xff
    ldrb r0, [r0, #0xf]
    cmp r0, #0x40
    beq .L08039974
    cmp r0, #0x40
    bgt .L08039960
    cmp r0, #0
    beq .L08039966
    b .L0803997C
    .align 2, 0
.L0803995C: .4byte gPlaySt
.L08039960:
    cmp r0, #0x80
    beq .L0803996A
    b .L0803997C
.L08039966:
    movs r0, #0
    b .L080399B6
.L0803996A:
    ldr r1, .L08039970 @ =0x08B97100
    b .L08039976
    .align 2, 0
.L08039970: .4byte 0x08B97100
.L08039974:
    ldr r1, .L080399BC @ =0x08B971C0
.L08039976:
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
.L0803997C:
    movs r0, #0
    lsls r0, r0, #2
    adds r1, r0, r1
    ldrb r0, [r1]
    cmp r0, #0xff
    beq .L080399B4
    ldr r0, .L080399C0 @ =gBmMapMovement
    ldr r3, [r0]
    adds r2, r1, #0
.L0803998E:
    ldrb r1, [r2, #1]
    lsls r0, r1, #2
    adds r0, r0, r3
    ldr r0, [r0]
    ldrb r6, [r2]
    adds r1, r6, r0
    ldrb r0, [r1]
    cmp r0, #0x78
    bhi .L080399AC
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r4, r0
    ble .L080399AC
    ldrb r4, [r1]
    adds r5, r2, #0
.L080399AC:
    adds r2, #4
    ldrb r0, [r2]
    cmp r0, #0xff
    bne .L0803998E
.L080399B4:
    adds r0, r5, #0
.L080399B6:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080399BC: .4byte 0x08B971C0
.L080399C0: .4byte gBmMapMovement
    func_end func_0803993C

    thumb_func_start func_080399C4
func_080399C4: @ 0x080399C4
    ldr r0, .L080399EC @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L080399F4
    ldr r0, .L080399F0 @ =0x0203A97C
    ldrb r0, [r0]
    cmp r0, #1
    beq .L080399F4
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    beq .L080399F4
    movs r0, #1
    b .L080399F6
    .align 2, 0
.L080399EC: .4byte gActiveUnit
.L080399F0: .4byte 0x0203A97C
.L080399F4:
    movs r0, #0
.L080399F6:
    bx lr
    func_end func_080399C4

    thumb_func_start func_080399F8
func_080399F8: @ 0x080399F8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r5, .L08039A10 @ =gActiveUnit
    ldr r0, [r5]
    bl GetUnitItemCount
    cmp r0, #0
    bne .L08039A14
    movs r0, #0
    b .L08039AF6
    .align 2, 0
.L08039A10: .4byte gActiveUnit
.L08039A14:
    movs r7, #0
    strh r7, [r4]
    ldr r0, [r5]
    ldrh r5, [r0, #0x1e]
    cmp r5, #0
    beq .L08039AF6
    adds r6, r4, #0
    movs r0, #0
    mov r8, r0
.L08039A26:
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #5
    ands r1, r0
    cmp r1, #0
    beq .L08039AD8
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #0x80
    lsls r1, r1, #3
    ands r1, r0
    cmp r1, #0
    bne .L08039AD8
    ldr r4, .L08039AB8 @ =gActiveUnit
    ldr r0, [r4]
    adds r1, r5, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08039A62
    ldr r0, [r4]
    adds r1, r5, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039AD8
.L08039A62:
    adds r0, r5, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L08039ABC
    adds r0, r5, #0
    bl func_0801736C
    cmp r0, #1
    ble .L08039A82
    movs r0, #2
    ldrh r1, [r6]
    orrs r0, r1
    strh r0, [r6]
.L08039A82:
    adds r0, r5, #0
    bl func_08017384
    cmp r0, #1
    bne .L08039A94
    movs r0, #1
    ldrh r1, [r6]
    orrs r0, r1
    strh r0, [r6]
.L08039A94:
    adds r0, r5, #0
    bl GetItemUses
    movs r1, #0x64
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r5, #0
    bl GetItemMaxUses
    adds r1, r0, #0
    adds r0, r4, #0
    bl Div
    adds r4, r0, #0
    cmp r4, #0xa
    bhi .L08039ACA
    movs r0, #4
    b .L08039AC4
    .align 2, 0
.L08039AB8: .4byte gActiveUnit
.L08039ABC:
    adds r0, r5, #0
    bl func_08039CCC
    movs r0, #8
.L08039AC4:
    ldrh r1, [r6]
    orrs r0, r1
    strh r0, [r6]
.L08039ACA:
    adds r0, r5, #0
    bl GetItemMight
    lsls r0, r0, #8
    ldrh r1, [r6]
    orrs r0, r1
    strh r0, [r6]
.L08039AD8:
    adds r6, #2
    movs r0, #2
    add r8, r0
    adds r7, #1
    cmp r7, #4
    bgt .L08039AF6
    movs r0, #0
    strh r0, [r6]
    ldr r0, .L08039B00 @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x1e
    add r0, r8
    ldrh r5, [r0]
    cmp r5, #0
    bne .L08039A26
.L08039AF6:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08039B00: .4byte gActiveUnit
    func_end func_080399F8

    thumb_func_start func_08039B04
func_08039B04: @ 0x08039B04
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    str r0, [sp, #4]
    str r1, [sp, #8]
    str r2, [sp, #0xc]
    str r3, [sp, #0x10]
    movs r0, #0
    ldr r1, [sp, #0x3c]
    strh r0, [r1]
    ldr r2, [sp, #0x10]
    strh r0, [r2]
    ldr r3, [sp, #0xc]
    strh r0, [r3]
    ldr r0, .L08039C48 @ =gBmMapOther
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    movs r4, #1
.L08039B32:
    adds r0, r4, #0
    bl GetUnit
    adds r5, r0, #0
    adds r4, #1
    str r4, [sp, #0x14]
    cmp r5, #0
    beq .L08039C22
    ldr r0, [r5]
    cmp r0, #0
    beq .L08039C22
    ldr r0, [r5, #0xc]
    movs r1, #0x21
    ands r0, r1
    cmp r0, #0
    bne .L08039C22
    ldr r0, .L08039C4C @ =gActiveUnitId
    ldrb r0, [r0]
    movs r1, #0xb
    ldrsb r1, [r5, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08039C22
    adds r0, r5, #0
    ldr r1, [sp, #4]
    ldr r2, [sp, #8]
    bl func_08039D04
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039C22
    adds r0, r5, #0
    bl MapFloodUnit
    ldr r4, .L08039C50 @ =gBmMapMovement
    ldr r1, [r4]
    ldr r7, [sp, #8]
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r0, [r0]
    ldr r1, [sp, #4]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0xff
    beq .L08039C22
    adds r0, r5, #0
    mov r1, sp
    bl func_08039D48
    adds r6, r0, #0
    mov r0, sp
    ldrh r0, [r0]
    bl func_0801736C
    cmp r0, #1
    ble .L08039BB0
    ldr r2, [sp, #0xc]
    ldrh r2, [r2]
    adds r0, r2, r6
    ldr r3, [sp, #0xc]
    strh r0, [r3]
.L08039BB0:
    mov r0, sp
    ldrh r0, [r0]
    bl func_08017384
    cmp r0, #1
    bne .L08039BC6
    ldr r7, [sp, #0x10]
    ldrh r7, [r7]
    adds r0, r7, r6
    ldr r1, [sp, #0x10]
    strh r0, [r1]
.L08039BC6:
    ldr r1, .L08039C54 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    subs r2, r0, #1
    mov sl, r1
    cmp r2, #0
    blt .L08039C22
    mov sb, r4
    ldr r3, .L08039C48 @ =gBmMapOther
    mov r8, r3
.L08039BDA:
    mov r7, sl
    movs r1, #0
    ldrsh r0, [r7, r1]
    subs r3, r0, #1
    subs r7, r2, #1
    str r7, [sp, #0x18]
    cmp r3, #0
    blt .L08039C1C
    lsls r4, r2, #2
    mov r1, sb
    mov r5, r8
    movs r0, #0xff
    mov ip, r0
.L08039BF4:
    ldr r0, [r1]
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08039C16
    ldr r0, [r5]
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r7, [r0]
    adds r2, r7, r6
    cmp r2, #0xff
    ble .L08039C14
    mov r2, ip
.L08039C14:
    strb r2, [r0]
.L08039C16:
    subs r3, #1
    cmp r3, #0
    bge .L08039BF4
.L08039C1C:
    ldr r2, [sp, #0x18]
    cmp r2, #0
    bge .L08039BDA
.L08039C22:
    ldr r4, [sp, #0x14]
    cmp r4, #0xbf
    ble .L08039B32
    ldr r3, [sp, #0xc]
    ldrh r7, [r3]
    ldr r3, [sp, #0x10]
    ldrh r3, [r3]
    adds r0, r7, r3
    ldr r7, [sp, #0x3c]
    strh r0, [r7]
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08039C48: .4byte gBmMapOther
.L08039C4C: .4byte gActiveUnitId
.L08039C50: .4byte gBmMapMovement
.L08039C54: .4byte gBmMapSize
    func_end func_08039B04

    thumb_func_start func_08039C58
func_08039C58: @ 0x08039C58
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    movs r5, #1
    rsbs r5, r5, #0
    movs r4, #0
    movs r3, #0
    movs r7, #0xff
    lsls r7, r7, #8
.L08039C68:
    ldrh r0, [r1]
    cmp r0, #0
    beq .L08039C82
    adds r2, r0, #0
    ands r0, r6
    cmp r0, #0
    beq .L08039C82
    adds r0, r7, #0
    ands r0, r2
    cmp r0, r4
    bls .L08039C82
    adds r4, r0, #0
    adds r5, r3, #0
.L08039C82:
    adds r1, #2
    adds r3, #1
    cmp r3, #4
    ble .L08039C68
    cmp r5, #0
    ble .L08039C98
    ldr r0, .L08039CA0 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r5, #0
    bl UnitEquipItemSlot
.L08039C98:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08039CA0: .4byte gActiveUnit
    func_end func_08039C58

    thumb_func_start func_08039CA4
func_08039CA4: @ 0x08039CA4
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    cmn r1, r0
    beq .L08039CC8
    cmp r1, r0
    blo .L08039CC0
    movs r0, #1
    adds r1, r3, #0
    bl func_08039C58
    b .L08039CC8
.L08039CC0:
    movs r0, #2
    adds r1, r3, #0
    bl func_08039C58
.L08039CC8:
    pop {r0}
    bx r0
    func_end func_08039CA4

    thumb_func_start func_08039CCC
func_08039CCC: @ 0x08039CCC
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl GetItemIndex
    cmp r0, #0x4a
    blt .L08039CFC
    cmp r0, #0x4e
    ble .L08039CE4
    cmp r0, #0x56
    beq .L08039CF0
    b .L08039CFC
.L08039CE4:
    ldr r0, .L08039CEC @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #4
    b .L08039CF6
    .align 2, 0
.L08039CEC: .4byte gActiveUnit
.L08039CF0:
    ldr r0, .L08039D00 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
.L08039CF6:
    ldrb r2, [r1, #0xa]
    orrs r0, r2
    strb r0, [r1, #0xa]
.L08039CFC:
    pop {r0}
    bx r0
    .align 2, 0
.L08039D00: .4byte gActiveUnit
    func_end func_08039CCC

    thumb_func_start func_08039D04
func_08039D04: @ 0x08039D04
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    movs r0, #0x1d
    ldrsb r0, [r3, r0]
    ldr r1, [r3, #4]
    ldrb r1, [r1, #0x12]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r5, r0, r1
    movs r0, #0x10
    ldrsb r0, [r3, r0]
    subs r1, r4, r0
    cmp r1, #0
    bge .L08039D24
    subs r1, r0, r4
.L08039D24:
    movs r0, #0x11
    ldrsb r0, [r3, r0]
    subs r3, r2, r0
    cmp r3, #0
    blt .L08039D32
    adds r0, r1, r3
    b .L08039D36
.L08039D32:
    subs r0, r0, r2
    adds r0, r1, r0
.L08039D36:
    cmp r5, r0
    bge .L08039D3E
    movs r0, #0
    b .L08039D40
.L08039D3E:
    movs r0, #1
.L08039D40:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08039D04

    thumb_func_start func_08039D48
func_08039D48: @ 0x08039D48
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    bl GetUnitEquippedWeapon
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    strh r4, [r6]
    adds r0, r5, #0
    bl GetUnitPower
    adds r5, r0, #0
    adds r0, r4, #0
    bl GetItemMight
    adds r5, r5, r0
    adds r0, r5, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08039D48

    thumb_func_start func_08039D74
func_08039D74: @ 0x08039D74
    push {r4, lr}
    ldr r4, .L08039D9C @ =0x0203A97C
    ldrb r0, [r4]
    cmp r0, #2
    beq .L08039D96
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl func_08039DD8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08039D96
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl func_08039EFC
.L08039D96:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08039D9C: .4byte 0x0203A97C
    func_end func_08039D74

    thumb_func_start func_08039DA0
func_08039DA0: @ 0x08039DA0
    push {r4, lr}
    ldr r4, .L08039DD4 @ =0x0203A97C
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl func_08039DD8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08039DCC
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl func_08039EFC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08039DCC
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    bl func_08039F60
.L08039DCC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08039DD4: .4byte 0x0203A97C
    func_end func_08039DA0

    thumb_func_start func_08039DD8
func_08039DD8: @ 0x08039DD8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    mov sl, r0
    str r1, [sp, #0xc]
    movs r0, #0
    mov r8, r0
    mov sb, r0
    ldr r0, .L08039EB8 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #0x30
    ands r0, r1
    cmp r0, #0
    beq .L08039EB4
    ldr r0, .L08039EBC @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    mov r0, sl
    ldr r1, [sp, #0xc]
    movs r2, #1
    movs r3, #1
    bl MapAddInRange
    ldr r0, .L08039EC0 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r1, r0, #1
    cmp r1, #0
    blt .L08039EAE
.L08039E28:
    ldr r0, .L08039EC0 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r7, r1, #1
    cmp r4, #0
    blt .L08039EA8
    lsls r5, r1, #2
.L08039E38:
    ldr r0, .L08039EBC @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08039EA2
    ldr r6, .L08039EC4 @ =gBmMapUnit
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08039EA2
    ldr r0, .L08039EC8 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039EA2
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r2, r0, #0
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x30
    ands r0, r1
    cmp r0, #0
    bne .L08039EA2
    movs r0, #8
    ldrsb r0, [r2, r0]
    cmp r8, r0
    bge .L08039EA2
    ldrb r2, [r2, #8]
    mov r8, r2
    ldr r0, [r6]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    mov sb, r0
.L08039EA2:
    subs r4, #1
    cmp r4, #0
    bge .L08039E38
.L08039EA8:
    adds r1, r7, #0
    cmp r1, #0
    bge .L08039E28
.L08039EAE:
    mov r0, r8
    cmp r0, #0
    bne .L08039ECC
.L08039EB4:
    movs r0, #0
    b .L08039EEA
    .align 2, 0
.L08039EB8: .4byte gActiveUnit
.L08039EBC: .4byte gBmMapMovement
.L08039EC0: .4byte gBmMapSize
.L08039EC4: .4byte gBmMapUnit
.L08039EC8: .4byte gActiveUnitId
.L08039ECC:
    mov r1, sl
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    ldr r2, [sp, #0xc]
    lsls r1, r2, #0x10
    asrs r1, r1, #0x10
    movs r2, #0
    str r2, [sp]
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #7
    mov r3, sb
    bl func_08034E50
    movs r0, #1
.L08039EEA:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08039DD8

    thumb_func_start func_08039EFC
func_08039EFC: @ 0x08039EFC
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r0, .L08039F50 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08039F4C
    ldr r4, .L08039F54 @ =gBmMapMovement
    ldr r0, [r4]
    movs r5, #1
    rsbs r5, r5, #0
    adds r1, r5, #0
    bl BmMapFill
    ldr r1, [r4]
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r6
    movs r1, #0
    strb r1, [r0]
    adds r0, r6, #0
    adds r1, r7, #0
    movs r2, #1
    movs r3, #0x78
    bl MapAddInRange
    bl func_08038C44
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, r5
    bne .L08039F58
.L08039F4C:
    movs r0, #0
    b .L08039F5A
    .align 2, 0
.L08039F50: .4byte gActiveUnit
.L08039F54: .4byte gBmMapMovement
.L08039F58:
    movs r0, #1
.L08039F5A:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08039EFC

    thumb_func_start func_08039F60
func_08039F60: @ 0x08039F60
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    str r0, [sp, #0xc]
    mov sl, r1
    ldr r0, .L08039F84 @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    cmp r7, #0
    bne .L08039FB8
    b .L0803A06E
    .align 2, 0
.L08039F84: .4byte gActiveUnit
.L08039F88:
    ldr r0, .L08039FB4 @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitEquippedWeaponSlot
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov r1, sb
    asrs r2, r1, #0x10
    mov r3, r8
    asrs r1, r3, #0x10
    ldrb r3, [r5, #0xb]
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    str r0, [sp, #8]
    adds r0, r2, #0
    movs r2, #1
    bl func_08034E50
    movs r0, #1
    b .L0803A070
    .align 2, 0
.L08039FB4: .4byte gActiveUnit
.L08039FB8:
    ldr r0, .L0803A080 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, [sp, #0xc]
    lsls r0, r0, #0x10
    mov sb, r0
    asrs r6, r0, #0x10
    mov r1, sl
    lsls r1, r1, #0x10
    mov r8, r1
    asrs r5, r1, #0x10
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
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r4, #0
    bl func_0801B19C
    ldr r0, .L0803A084 @ =gBmMapSize
    movs r3, #2
    ldrsh r0, [r0, r3]
    subs r7, r0, #1
    cmp r7, #0
    blt .L0803A06E
.L0803A000:
    ldr r0, .L0803A084 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    cmp r4, #0
    blt .L0803A068
    lsls r6, r7, #2
.L0803A00E:
    ldr r0, .L0803A080 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0803A062
    ldr r5, .L0803A088 @ =gBmMapUnit
    ldr r0, [r5]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803A062
    ldr r0, .L0803A08C @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803A062
    ldr r0, [r5]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r5, r0, #0
    ldr r0, [sp, #0xc]
    mov r1, sl
    adds r2, r5, #0
    bl func_080392B4
    cmp r0, #0
    bne .L08039F88
.L0803A062:
    subs r4, #1
    cmp r4, #0
    bge .L0803A00E
.L0803A068:
    subs r7, #1
    cmp r7, #0
    bge .L0803A000
.L0803A06E:
    movs r0, #0
.L0803A070:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A080: .4byte gBmMapMovement
.L0803A084: .4byte gBmMapSize
.L0803A088: .4byte gBmMapUnit
.L0803A08C: .4byte gActiveUnitId
    func_end func_08039F60

    thumb_func_start func_0803A090
func_0803A090: @ 0x0803A090
    ldr r2, .L0803A0B4 @ =gBmMapUnit
    ldr r2, [r2]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r1, [r1]
    adds r1, r1, r0
    ldrb r1, [r1]
    cmp r1, #0
    beq .L0803A0B0
    ldr r0, .L0803A0B8 @ =gActiveUnitId
    ldrb r0, [r0]
    eors r0, r1
    movs r1, #0x80
    ands r0, r1
    cmp r0, #0
    bne .L0803A0BC
.L0803A0B0:
    movs r0, #0
    b .L0803A0BE
    .align 2, 0
.L0803A0B4: .4byte gBmMapUnit
.L0803A0B8: .4byte gActiveUnitId
.L0803A0BC:
    movs r0, #1
.L0803A0BE:
    bx lr
    func_end func_0803A090

    thumb_func_start func_0803A0C0
func_0803A0C0: @ 0x0803A0C0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    movs r7, #0
    ldr r4, .L0803A158 @ =gActiveUnit
    ldr r0, [r4]
    movs r1, #0x1d
    ldrsb r1, [r0, r1]
    ldr r2, [r0, #4]
    ldrb r2, [r2, #0x12]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r1, r1, r2
    mov r2, r8
    ldrb r2, [r2]
    muls r1, r2, r1
    lsls r1, r1, #0x10
    lsrs r5, r1, #0x14
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    mov r3, r8
    ldrb r0, [r3, #1]
    cmp r0, #0
    beq .L0803A164
    cmp r2, #0
    beq .L0803A164
    ldr r0, [r4]
    adds r1, r5, #0
    bl func_080389B8
    ldr r0, .L0803A15C @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0803A1DA
.L0803A10E:
    ldr r0, .L0803A15C @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r6, r5, #1
    cmp r4, #0
    blt .L0803A14E
.L0803A11C:
    ldr r0, .L0803A160 @ =gBmMapRange
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0803A148
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803A090
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803A148
    adds r0, r7, #1
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
.L0803A148:
    subs r4, #1
    cmp r4, #0
    bge .L0803A11C
.L0803A14E:
    adds r5, r6, #0
    cmp r5, #0
    bge .L0803A10E
    b .L0803A1DA
    .align 2, 0
.L0803A158: .4byte gActiveUnit
.L0803A15C: .4byte gBmMapSize
.L0803A160: .4byte gBmMapRange
.L0803A164:
    ldr r4, .L0803A1F4 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L0803A1F8 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r2, r5, #0
    movs r3, #0
    bl BeginMapFlood
    ldr r0, .L0803A1FC @ =gBmMapSize
    movs r3, #2
    ldrsh r0, [r0, r3]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0803A1DA
.L0803A198:
    ldr r0, .L0803A1FC @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r6, r5, #1
    cmp r4, #0
    blt .L0803A1D4
.L0803A1A6:
    ldr r0, .L0803A1F8 @ =gBmMapRange
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803A1CE
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803A090
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803A1CE
    adds r0, r7, #1
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
.L0803A1CE:
    subs r4, #1
    cmp r4, #0
    bge .L0803A1A6
.L0803A1D4:
    adds r5, r6, #0
    cmp r5, #0
    bge .L0803A198
.L0803A1DA:
    ldr r0, .L0803A200 @ =0x0203A8EC
    adds r0, #0x86
    mov r2, r8
    ldrb r2, [r2, #2]
    adds r0, r2, r0
    strb r7, [r0]
    movs r0, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A1F4: .4byte gActiveUnit
.L0803A1F8: .4byte gBmMapRange
.L0803A1FC: .4byte gBmMapSize
.L0803A200: .4byte 0x0203A8EC
    func_end func_0803A0C0

    thumb_func_start func_0803A204
func_0803A204: @ 0x0803A204
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r5, .L0803A2A0 @ =gActiveUnit
    ldr r0, [r5]
    movs r1, #0x1d
    ldrsb r1, [r0, r1]
    ldr r2, [r0, #4]
    ldrb r2, [r2, #0x12]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r1, r1, r2
    ldrb r2, [r4, #4]
    muls r1, r2, r1
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x14
    str r1, [sp, #4]
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov sl, r0
    ldr r2, [r5]
    adds r1, r2, #0
    adds r1, #0x40
    movs r0, #0xfe
    lsls r0, r0, #5
    ldrh r1, [r1]
    ands r0, r1
    lsrs r0, r0, #8
    ldr r1, [r4]
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrb r1, [r0]
    mov r8, r1
    ldrb r0, [r0, #1]
    mov sb, r0
    movs r6, #0x10
    ldrsb r6, [r2, r6]
    movs r7, #0x11
    ldrsb r7, [r2, r7]
    strb r1, [r2, #0x10]
    ldr r0, [r5]
    mov r2, sb
    strb r2, [r0, #0x11]
    ldrb r0, [r4, #5]
    cmp r0, #0
    beq .L0803A2A8
    mov r0, sl
    cmp r0, #0
    beq .L0803A2A8
    ldr r0, [r5]
    ldr r1, [sp, #4]
    mov r2, sl
    bl func_080389B8
    ldr r0, .L0803A2A4 @ =gBmMapRange
    ldr r1, [r0]
    mov r2, sb
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L0803A2E2
.L0803A294:
    ldr r0, [r5]
    strb r6, [r0, #0x10]
    ldr r0, [r5]
    strb r7, [r0, #0x11]
    b .L0803A3A8
    .align 2, 0
.L0803A2A0: .4byte gActiveUnit
.L0803A2A4: .4byte gBmMapRange
.L0803A2A8:
    ldr r5, .L0803A358 @ =gActiveUnit
    ldr r0, [r5]
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r4, .L0803A35C @ =gBmMapRange
    ldr r0, [r4]
    bl func_0801B190
    ldr r1, [r5]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldr r2, [sp, #4]
    movs r3, #0
    bl BeginMapFlood
    ldr r1, [r4]
    mov r2, sb
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803A294
.L0803A2E2:
    ldr r4, .L0803A358 @ =gActiveUnit
    ldr r0, [r4]
    strb r6, [r0, #0x10]
    ldr r0, [r4]
    strb r7, [r0, #0x11]
    ldr r0, [r4]
    bl MapFloodUnit
    ldr r0, [r4]
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803A306
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
.L0803A306:
    ldr r1, .L0803A360 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0803A39A
.L0803A312:
    ldr r1, .L0803A360 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r1, r2]
    subs r3, r0, #1
    subs r0, r5, #1
    mov ip, r0
    cmp r3, #0
    blt .L0803A394
    ldr r7, .L0803A364 @ =gBmMapMovement
    ldr r6, .L0803A35C @ =gBmMapRange
    movs r2, #1
    rsbs r2, r2, #0
    adds r1, r2, #0
.L0803A32C:
    mov r0, sl
    cmp r0, #0
    beq .L0803A368
    ldr r0, [r7]
    lsls r2, r5, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r4, r0, r3
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #0x77
    bgt .L0803A38C
    ldr r0, [r6]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L0803A38E
    b .L0803A38C
    .align 2, 0
.L0803A358: .4byte gActiveUnit
.L0803A35C: .4byte gBmMapRange
.L0803A360: .4byte gBmMapSize
.L0803A364: .4byte gBmMapMovement
.L0803A368:
    ldr r0, [r7]
    lsls r2, r5, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r4, r0, r3
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #0x77
    bgt .L0803A38C
    ldr r0, [r6]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x77
    ble .L0803A38E
.L0803A38C:
    strb r1, [r4]
.L0803A38E:
    subs r3, #1
    cmp r3, #0
    bge .L0803A32C
.L0803A394:
    mov r5, ip
    cmp r5, #0
    bge .L0803A312
.L0803A39A:
    ldr r0, .L0803A3CC @ =func_08037914
    bl func_080387B0
    ldr r0, .L0803A3D0 @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    cmp r0, #1
    beq .L0803A3B8
.L0803A3A8:
    mov r0, r8
    mov r1, sb
    movs r2, #1
    str r2, [sp]
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
.L0803A3B8:
    movs r0, #1
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A3CC: .4byte func_08037914
.L0803A3D0: .4byte 0x0203A97C
    func_end func_0803A204

    thumb_func_start func_0803A3D4
func_0803A3D4: @ 0x0803A3D4
    ldr r1, .L0803A3E8 @ =0x0203A8EC
    ldr r0, .L0803A3EC @ =gActiveUnit
    ldr r0, [r0]
    adds r0, #0x46
    ldrb r0, [r0]
    adds r1, #0x86
    strb r0, [r1]
    movs r0, #0
    bx lr
    .align 2, 0
.L0803A3E8: .4byte 0x0203A8EC
.L0803A3EC: .4byte gActiveUnit
    func_end func_0803A3D4

    thumb_func_start func_0803A3F0
func_0803A3F0: @ 0x0803A3F0
    push {r4, r5, lr}
    bl GetActiveFactionAlliance
    adds r4, r0, #1
    adds r0, #0x80
    cmp r4, r0
    bge .L0803A40C
    adds r5, r0, #0
.L0803A400:
    adds r0, r4, #0
    bl GetUnit
    adds r4, #1
    cmp r4, r5
    blt .L0803A400
.L0803A40C:
    ldr r0, .L0803A41C @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #0
    strb r1, [r0]
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A41C: .4byte 0x0203A8EC
    func_end func_0803A3F0

    thumb_func_start func_0803A420
func_0803A420: @ 0x0803A420
    push {r4, r5, lr}
    bl GetActiveFactionAlliance
    adds r4, r0, #1
    adds r0, #0x80
    cmp r4, r0
    bge .L0803A43C
    adds r5, r0, #0
.L0803A430:
    adds r0, r4, #0
    bl GetUnit
    adds r4, #1
    cmp r4, r5
    blt .L0803A430
.L0803A43C:
    ldr r0, .L0803A44C @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #0
    strb r1, [r0]
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A44C: .4byte 0x0203A8EC
    func_end func_0803A420

    thumb_func_start func_0803A450
func_0803A450: @ 0x0803A450
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r7, .L0803A484 @ =gActiveUnit
    ldr r2, [r7]
    adds r1, r2, #0
    adds r1, #0x40
    movs r0, #0xfe
    lsls r0, r0, #5
    ldrh r1, [r1]
    ands r0, r1
    lsrs r3, r0, #8
    adds r5, r2, #0
    adds r5, #0x46
    ldrb r4, [r5]
    ldr r0, .L0803A488 @ =0x08B972E8
    ldr r1, [r0]
    cmp r1, #0
    beq .L0803A47E
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r2, [r0]
    cmp r2, #0
    bne .L0803A48C
.L0803A47E:
    movs r0, #0
    b .L0803A4CE
    .align 2, 0
.L0803A484: .4byte gActiveUnit
.L0803A488: .4byte 0x08B972E8
.L0803A48C:
    lsls r0, r4, #2
    adds r3, r2, r0
    movs r0, #0
    ldrsh r1, [r3, r0]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0803A4A2
    movs r4, #0
    strb r4, [r5]
    adds r3, r2, #0
.L0803A4A2:
    ldrh r0, [r3]
    strh r0, [r6]
    ldrh r0, [r3, #2]
    strh r0, [r6, #2]
    movs r1, #2
    ldrsh r0, [r3, r1]
    ldr r1, .L0803A4D4 @ =gBmMapMovement
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r3, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0xff
    beq .L0803A4CC
    adds r4, #1
    ldr r0, [r7]
    adds r0, #0x46
    strb r4, [r0]
.L0803A4CC:
    movs r0, #1
.L0803A4CE:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A4D4: .4byte gBmMapMovement
    func_end func_0803A450

    thumb_func_start func_0803A4D8
func_0803A4D8: @ 0x0803A4D8
    push {r4, lr}
    sub sp, #8
    ldr r4, .L0803A508 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r1, #0
    beq .L0803A510
    ldr r0, [r4]
    bl AiMakeMoveRangeMapsForUnitAndWeapon
    bl func_08036390
    adds r1, r0, #0
    cmp r1, #0
    beq .L0803A516
    ldr r0, .L0803A50C @ =0x0203A8EC
    adds r0, #0x86
    strb r1, [r0]
    movs r0, #0
    b .L0803A540
    .align 2, 0
.L0803A508: .4byte gActiveUnit
.L0803A50C: .4byte 0x0203A8EC
.L0803A510:
    ldr r0, [r4]
    bl MapFloodUnit
.L0803A516:
    add r4, sp, #4
    adds r0, r4, #0
    bl func_0803A450
    lsls r0, r0, #0x18
    asrs r2, r0, #0x18
    cmp r2, #1
    beq .L0803A52A
    movs r0, #0
    b .L0803A540
.L0803A52A:
    add r0, sp, #4
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r3, #2
    ldrsh r1, [r4, r3]
    str r2, [sp]
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
    movs r0, #1
.L0803A540:
    add sp, #8
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803A4D8

    thumb_func_start func_0803A548
func_0803A548: @ 0x0803A548
    adds r1, r0, #0
    ldr r0, .L0803A574 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r2, [r0, #0x10]
    ldrb r0, [r0, #0x11]
    ldrb r3, [r1]
    cmp r3, r2
    bhi .L0803A57C
    ldrb r3, [r1, #2]
    cmp r3, r2
    blo .L0803A57C
    ldrb r2, [r1, #1]
    cmp r2, r0
    bhi .L0803A57C
    ldrb r1, [r1, #3]
    cmp r1, r0
    blo .L0803A57C
    ldr r0, .L0803A578 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #1
    b .L0803A582
    .align 2, 0
.L0803A574: .4byte gActiveUnit
.L0803A578: .4byte 0x0203A8EC
.L0803A57C:
    ldr r0, .L0803A588 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #0
.L0803A582:
    strb r1, [r0]
    movs r0, #0
    bx lr
    .align 2, 0
.L0803A588: .4byte 0x0203A8EC
    func_end func_0803A548

    thumb_func_start func_0803A58C
func_0803A58C: @ 0x0803A58C
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldrb r0, [r4]
    bl GetUnitFromCharId
    ldrb r5, [r0, #0xb]
    ldrb r0, [r4, #1]
    bl GetUnitFromCharId
    ldrb r3, [r0, #0xb]
    movs r0, #0xff
    str r0, [sp]
    movs r0, #8
    movs r1, #0
    adds r2, r5, #0
    bl func_08034E94
    movs r0, #1
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803A58C

    thumb_func_start func_0803A5BC
func_0803A5BC: @ 0x0803A5BC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    movs r5, #0
    ldr r7, .L0803A5F4 @ =gActiveUnitId
    ldrb r0, [r7]
    mov r8, r0
    ldr r4, .L0803A5F8 @ =gActiveUnit
    ldr r6, [r4]
    adds r0, r6, #0
    bl GetUnitLeaderCharId
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0
    beq .L0803A666
    bl GetUnitFromCharId
    adds r1, r0, #0
    str r1, [r4]
    cmp r1, #0
    bne .L0803A600
    str r6, [r4]
    ldr r0, .L0803A5FC @ =0x0203A8EC
    adds r0, #0x87
    movs r1, #1
    strb r1, [r0]
    b .L0803A666
    .align 2, 0
.L0803A5F4: .4byte gActiveUnitId
.L0803A5F8: .4byte gActiveUnit
.L0803A5FC: .4byte 0x0203A8EC
.L0803A600:
    ldrb r0, [r1, #0xb]
    strb r0, [r7]
    adds r0, r1, #0
    adds r0, #0x42
    ldrb r4, [r0]
    adds r0, #1
    ldrb r7, [r0]
.L0803A60E:
    bl func_080375B8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803A624
    adds r5, #1
    cmp r5, #0xff
    ble .L0803A60E
    bl func_0803760C
.L0803A624:
    ldr r1, .L0803A63C @ =0x0203A97C
    ldrb r2, [r1, #0xa]
    cmp r2, #1
    bne .L0803A644
    ldrb r0, [r1]
    cmp r0, #1
    bne .L0803A644
    ldr r0, .L0803A640 @ =0x0203A8EC
    ldrb r1, [r1, #6]
    adds r0, #0x86
    b .L0803A64A
    .align 2, 0
.L0803A63C: .4byte 0x0203A97C
.L0803A640: .4byte 0x0203A8EC
.L0803A644:
    ldr r0, .L0803A674 @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #0
.L0803A64A:
    strb r1, [r0]
    bl func_08034E30
    ldr r1, .L0803A678 @ =gActiveUnit
    ldr r0, [r1]
    adds r0, #0x42
    strb r4, [r0]
    ldr r0, [r1]
    adds r0, #0x43
    strb r7, [r0]
    ldr r0, .L0803A67C @ =gActiveUnitId
    mov r2, r8
    strb r2, [r0]
    str r6, [r1]
.L0803A666:
    movs r0, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A674: .4byte 0x0203A8EC
.L0803A678: .4byte gActiveUnit
.L0803A67C: .4byte gActiveUnitId
    func_end func_0803A5BC

    thumb_func_start func_0803A680
func_0803A680: @ 0x0803A680
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2]
    ldr r0, .L0803A6AC @ =0x0203A988
    ldrb r1, [r1, #4]
    ldrb r0, [r0]
    cmp r1, r0
    bne .L0803A6B4
    ldr r0, .L0803A6B0 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r1, #0xb
    ldrsb r1, [r2, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803A6B4
    movs r0, #1
    b .L0803A6B6
    .align 2, 0
.L0803A6AC: .4byte 0x0203A988
.L0803A6B0: .4byte gActiveUnit
.L0803A6B4:
    movs r0, #0
.L0803A6B6:
    pop {r1}
    bx r1
    func_end func_0803A680

    thumb_func_start func_0803A6BC
func_0803A6BC: @ 0x0803A6BC
    push {lr}
    ldr r2, .L0803A6DC @ =0x0203A988
    ldrb r1, [r0]
    strb r1, [r2]
    ldrb r0, [r0]
    bl func_0803707C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803A6E4
    ldr r0, .L0803A6E0 @ =0x0203A8EC
    adds r0, #0x87
    movs r1, #1
    strb r1, [r0]
    b .L0803A70A
    .align 2, 0
.L0803A6DC: .4byte 0x0203A988
.L0803A6E0: .4byte 0x0203A8EC
.L0803A6E4:
    ldr r0, .L0803A710 @ =func_0803A680
    bl func_08038558
    ldr r0, .L0803A714 @ =0x0203A8EC
    adds r1, r0, #0
    adds r1, #0x86
    movs r0, #0
    strb r0, [r1]
    ldr r0, .L0803A718 @ =0x0203A97C
    ldrb r2, [r0, #0xa]
    cmp r2, #1
    bne .L0803A706
    ldrb r2, [r0]
    cmp r2, #1
    bne .L0803A706
    ldrb r0, [r0, #6]
    strb r0, [r1]
.L0803A706:
    bl func_08034E30
.L0803A70A:
    movs r0, #0
    pop {r1}
    bx r1
    .align 2, 0
.L0803A710: .4byte func_0803A680
.L0803A714: .4byte 0x0203A8EC
.L0803A718: .4byte 0x0203A97C
    func_end func_0803A6BC

    thumb_func_start func_0803A71C
func_0803A71C: @ 0x0803A71C
    push {lr}
    movs r1, #0xb
    ldrsb r1, [r0, r1]
    ldr r0, .L0803A744 @ =0x0203A8EC
    adds r0, #0x86
    ldrb r0, [r0]
    cmp r1, r0
    bne .L0803A74C
    ldr r0, .L0803A748 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803A74C
    movs r0, #1
    b .L0803A74E
    .align 2, 0
.L0803A744: .4byte 0x0203A8EC
.L0803A748: .4byte gActiveUnit
.L0803A74C:
    movs r0, #0
.L0803A74E:
    pop {r1}
    bx r1
    func_end func_0803A71C

    thumb_func_start func_0803A754
func_0803A754: @ 0x0803A754
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r0, .L0803A7B4 @ =0x0203A8EC
    adds r0, #0x86
    ldrb r0, [r0]
    bl GetUnit
    movs r2, #0x10
    ldrsb r2, [r0, r2]
    ldr r1, .L0803A7B8 @ =gActiveUnit
    ldr r1, [r1]
    movs r3, #0x10
    ldrsb r3, [r1, r3]
    subs r7, r2, r3
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r2, #0x11
    ldrsb r2, [r1, r2]
    subs r0, r0, r2
    mov r8, r0
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    subs r5, r0, r3
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    subs r6, r0, r2
    movs r0, #0xb
    ldrsb r0, [r1, r0]
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803A7BC
    adds r0, r7, #0
    muls r0, r5, r0
    cmp r0, #0
    blt .L0803A7BC
    mov r0, r8
    muls r0, r6, r0
    cmp r0, #0
    blt .L0803A7BC
    movs r0, #1
    b .L0803A7BE
    .align 2, 0
.L0803A7B4: .4byte 0x0203A8EC
.L0803A7B8: .4byte gActiveUnit
.L0803A7BC:
    movs r0, #0
.L0803A7BE:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0803A754

    thumb_func_start func_0803A7C8
func_0803A7C8: @ 0x0803A7C8
    push {r4, r5, lr}
    sub sp, #4
    ldr r0, .L0803A818 @ =0x0203A8EC
    adds r1, r0, #0
    adds r1, #0x86
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803A80E
    ldrb r0, [r1]
    bl GetUnit
    adds r4, r0, #0
    ldr r0, .L0803A81C @ =func_0803A71C
    bl func_08038558
    ldr r5, .L0803A820 @ =0x0203A97C
    ldrb r0, [r5, #0xa]
    cmp r0, #1
    beq .L0803A80E
    ldr r0, .L0803A824 @ =func_0803A754
    bl func_08038558
    ldrb r5, [r5, #0xa]
    cmp r5, #1
    beq .L0803A80E
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #1
    str r2, [sp]
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
.L0803A80E:
    movs r0, #1
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A818: .4byte 0x0203A8EC
.L0803A81C: .4byte func_0803A71C
.L0803A820: .4byte 0x0203A97C
.L0803A824: .4byte func_0803A754
    func_end func_0803A7C8

    thumb_func_start func_0803A828
func_0803A828: @ 0x0803A828
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x64
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r3, .L0803A85C @ =0x0203A8EC
    ldrb r2, [r4, #1]
    adds r1, r3, #0
    adds r1, #0x7c
    strb r2, [r1]
    ldrb r4, [r4]
    cmp r0, r4
    bhi .L0803A864
    ldr r4, .L0803A860 @ =func_08037914
    adds r0, r4, #0
    bl func_0803AAD8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803A86C
    adds r0, r4, #0
    bl func_08038558
    b .L0803A86C
    .align 2, 0
.L0803A85C: .4byte 0x0203A8EC
.L0803A860: .4byte func_08037914
.L0803A864:
    adds r1, r3, #0
    adds r1, #0x79
    movs r0, #4
    strb r0, [r1]
.L0803A86C:
    movs r0, #1
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803A828

    thumb_func_start func_0803A874
func_0803A874: @ 0x0803A874
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x64
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldrb r1, [r4]
    cmp r0, r1
    bhi .L0803A8B0
    bl func_0803BA18
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803A8B8
    movs r0, #0x64
    bl RandNext
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldrb r4, [r4, #1]
    cmp r0, r4
    bhi .L0803A8B8
    ldr r0, .L0803A8AC @ =func_08037914
    bl func_08038558
    b .L0803A8B8
    .align 2, 0
.L0803A8AC: .4byte func_08037914
.L0803A8B0:
    ldr r0, .L0803A8C0 @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #4
    strb r1, [r0]
.L0803A8B8:
    movs r0, #1
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A8C0: .4byte 0x0203A8EC
    func_end func_0803A874

    thumb_func_start func_0803A8C4
func_0803A8C4: @ 0x0803A8C4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    ldr r0, .L0803A920 @ =0x0000FFFF
    str r0, [sp, #0x10]
    str r0, [sp, #0xc]
    movs r1, #0
    mov r8, r1
    movs r2, #0xff
    mov sl, r2
    ldr r4, .L0803A924 @ =gActiveUnit
    ldr r2, [r4]
    ldr r0, [r2, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L0803A928
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    bl func_08034698
    cmp r0, #0
    beq .L0803A900
    b .L0803AA28
.L0803A900:
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    mov r2, r8
    str r2, [sp]
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #0xa
    movs r3, #0
    bl func_08034E50
    b .L0803AA28
    .align 2, 0
.L0803A920: .4byte 0x0000FFFF
.L0803A924: .4byte gActiveUnit
.L0803A928:
    adds r0, r2, #0
    bl func_0803BEA0
    ldr r0, .L0803A9FC @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0803A9B0
.L0803A93A:
    ldr r0, .L0803A9FC @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r0, r5, #1
    mov sb, r0
    cmp r4, #0
    blt .L0803A9AA
    ldr r7, .L0803AA00 @ =gBmMapMovement
    lsls r6, r5, #2
.L0803A94E:
    ldr r0, [r7]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803A9A4
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08034698
    cmp r0, #0
    beq .L0803A9A4
    mov r1, r8
    lsls r0, r1, #0x10
    movs r2, #0x80
    lsls r2, r2, #9
    adds r0, r0, r2
    lsrs r0, r0, #0x10
    mov r8, r0
    ldr r0, .L0803AA04 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0803A9A4
    ldr r0, [r7]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    cmp r1, sl
    bhi .L0803A9A4
    ldrb r0, [r0]
    mov sl, r0
    lsls r0, r4, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp, #0xc]
    lsls r0, r5, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp, #0x10]
.L0803A9A4:
    subs r4, #1
    cmp r4, #0
    bge .L0803A94E
.L0803A9AA:
    mov r5, sb
    cmp r5, #0
    bge .L0803A93A
.L0803A9B0:
    ldr r2, [sp, #0xc]
    lsls r0, r2, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L0803A9CE
    ldr r0, [sp, #0x10]
    lsls r1, r0, #0x10
    asrs r1, r1, #0x10
    movs r0, #1
    str r0, [sp]
    adds r0, r4, #0
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
.L0803A9CE:
    ldr r1, .L0803AA08 @ =0x0203A97C
    ldrb r2, [r1, #0xa]
    cmp r2, #1
    bne .L0803AA0C
    ldrb r0, [r1, #2]
    cmp r0, r4
    bne .L0803AA28
    ldrb r1, [r1, #3]
    ldr r2, [sp, #0x10]
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    cmp r1, r0
    bne .L0803AA28
    movs r0, #0
    str r0, [sp]
    movs r0, #9
    movs r1, #0
    movs r2, #0
    movs r3, #0
    bl func_08034E94
    b .L0803AA28
    .align 2, 0
.L0803A9FC: .4byte gBmMapSize
.L0803AA00: .4byte gBmMapMovement
.L0803AA04: .4byte gBmMapUnit
.L0803AA08: .4byte 0x0203A97C
.L0803AA0C:
    mov r0, r8
    cmp r0, #0
    beq .L0803AA20
    ldr r0, .L0803AA1C @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #7
    b .L0803AA26
    .align 2, 0
.L0803AA1C: .4byte 0x0203A8EC
.L0803AA20:
    ldr r0, .L0803AA3C @ =0x0203A8EC
    adds r0, #0x86
    movs r1, #6
.L0803AA26:
    strb r1, [r0]
.L0803AA28:
    movs r0, #1
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803AA3C: .4byte 0x0203A8EC
    func_end func_0803A8C4

    thumb_func_start func_0803AA40
func_0803AA40: @ 0x0803AA40
    push {lr}
    sub sp, #4
    ldrb r2, [r0]
    ldrb r1, [r0, #1]
    movs r0, #1
    str r0, [sp]
    adds r0, r2, #0
    movs r2, #0
    movs r3, #0xff
    bl func_08036B00
    movs r0, #1
    add sp, #4
    pop {r1}
    bx r1
    func_end func_0803AA40

    thumb_func_start func_0803AA60
func_0803AA60: @ 0x0803AA60
    ldr r0, .L0803AA6C @ =0x0203A8EC
    adds r0, #0x79
    movs r1, #4
    strb r1, [r0]
    movs r0, #1
    bx lr
    .align 2, 0
.L0803AA6C: .4byte 0x0203A8EC
    func_end func_0803AA60

    thumb_func_start func_0803AA70
func_0803AA70: @ 0x0803AA70
    push {r4, r5, r6, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    movs r5, #0
    ldr r0, .L0803AA8C @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r4, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803AA94
    b .L0803AAC8
    .align 2, 0
.L0803AA8C: .4byte gActiveUnit
.L0803AA90:
    adds r0, r5, #0
    b .L0803AACC
.L0803AA94:
    adds r0, r4, #0
    bl GetItemIndex
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    ldr r4, .L0803AAD4 @ =0x081D3B74
    ldrh r0, [r4]
    cmp r0, #0
    beq .L0803AAC8
    movs r3, #0
    adds r2, r4, #4
    adds r1, r4, #0
.L0803AAAC:
    ldrh r0, [r1]
    cmp r6, r0
    bne .L0803AAB8
    ldr r0, [r2]
    cmp r0, #0
    bne .L0803AA90
.L0803AAB8:
    adds r3, #8
    adds r2, #8
    adds r1, #8
    adds r5, #1
    adds r0, r3, r4
    ldrh r0, [r0]
    cmp r0, #0
    bne .L0803AAAC
.L0803AAC8:
    movs r0, #1
    rsbs r0, r0, #0
.L0803AACC:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0803AAD4: .4byte 0x081D3B74
    func_end func_0803AA70

    thumb_func_start func_0803AAD8
func_0803AAD8: @ 0x0803AAD8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    movs r6, #0
    ldr r0, .L0803AB74 @ =gActiveUnit
    ldr r2, [r0]
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #3
    beq .L0803AB62
    movs r5, #0
    ldrh r4, [r2, #0x1e]
    cmp r4, #0
    beq .L0803AB62
    ldr r0, .L0803AB78 @ =0x081D3B78
    mov r8, r0
.L0803AB00:
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #4
    ands r1, r0
    cmp r1, #0
    beq .L0803AB4C
    adds r0, r4, #0
    bl GetItemRequiredExp
    cmp r0, r6
    blt .L0803AB4C
    adds r0, r4, #0
    bl func_0803AA70
    adds r1, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0803AB4C
    lsls r0, r1, #3
    add r0, r8
    ldr r2, [r0]
    adds r0, r5, #0
    adds r1, r7, #0
    bl _call_via_r2
    ldr r0, .L0803AB7C @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0803AB4C
    adds r0, r4, #0
    bl GetItemRequiredExp
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
.L0803AB4C:
    adds r5, #1
    cmp r5, #4
    bgt .L0803AB62
    ldr r0, .L0803AB74 @ =gActiveUnit
    ldr r0, [r0]
    lsls r1, r5, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L0803AB00
.L0803AB62:
    ldr r0, .L0803AB7C @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803AB74: .4byte gActiveUnit
.L0803AB78: .4byte 0x081D3B78
.L0803AB7C: .4byte 0x0203A97C
    func_end func_0803AAD8

    thumb_func_start func_0803AB80
func_0803AB80: @ 0x0803AB80
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    str r0, [sp]
    str r1, [sp, #4]
    mov r8, r2
    movs r0, #0
    mov sl, r0
    ldr r2, .L0803AC24 @ =0x08B98AC8
    movs r1, #3
    mov sb, r1
.L0803AB9C:
    ldr r0, [r2]
    ldr r1, [sp]
    adds r5, r1, r0
    ldr r0, [r2, #4]
    ldr r1, [sp, #4]
    adds r7, r1, r0
    ldr r0, .L0803AC28 @ =gBmMapMovement
    ldr r0, [r0]
    lsls r6, r7, #2
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x77
    bhi .L0803AC0A
    ldr r0, .L0803AC2C @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r1, [r0]
    cmp r1, #0
    beq .L0803ABD2
    ldr r0, .L0803AC30 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L0803AC0A
.L0803ABD2:
    adds r0, r5, #0
    adds r1, r7, #0
    str r2, [sp, #8]
    bl func_08039304
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r7, #0
    bl func_08039344
    adds r4, r4, r0
    ldr r0, .L0803AC34 @ =gBmMapOther
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    lsrs r0, r0, #3
    subs r4, r4, r0
    ldr r0, .L0803AC38 @ =0x7FFFFFFF
    adds r4, r4, r0
    ldr r2, [sp, #8]
    cmp sl, r4
    bhs .L0803AC0A
    mov r1, r8
    strh r5, [r1]
    strh r7, [r1, #2]
    mov sl, r4
.L0803AC0A:
    adds r2, #8
    movs r0, #1
    rsbs r0, r0, #0
    add sb, r0
    mov r1, sb
    cmp r1, #0
    bge .L0803AB9C
    mov r0, sl
    cmp r0, #0
    bne .L0803AC3C
    movs r0, #0
    b .L0803AC3E
    .align 2, 0
.L0803AC24: .4byte 0x08B98AC8
.L0803AC28: .4byte gBmMapMovement
.L0803AC2C: .4byte gBmMapUnit
.L0803AC30: .4byte gActiveUnitId
.L0803AC34: .4byte gBmMapOther
.L0803AC38: .4byte 0x7FFFFFFF
.L0803AC3C:
    movs r0, #1
.L0803AC3E:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0803AB80

    thumb_func_start func_0803AC50
func_0803AC50: @ 0x0803AC50
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    str r0, [sp, #0x10]
    mov sb, r1
    movs r0, #0x64
    mov sl, r0
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [sp, #0x18]
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x1c]
    ldr r0, .L0803ADA8 @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    ldr r0, [sp, #0x18]
    bl GenerateMagicSealMap
    bl func_0801A0FC
    ldr r0, .L0803ADAC @ =0x0203A8EC
    adds r1, r0, #0
    adds r1, #0x7c
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803AC92
    adds r1, r0, #0
    mov sl, r1
.L0803AC92:
    ldr r0, .L0803ADB0 @ =gBmMapSize
    movs r4, #2
    ldrsh r0, [r0, r4]
    subs r7, r0, #1
    cmp r7, #0
    blt .L0803AD72
.L0803AC9E:
    ldr r0, .L0803ADB0 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    subs r2, r7, #1
    str r2, [sp, #0x20]
    cmp r6, #0
    blt .L0803AD6C
    lsls r4, r7, #2
    mov r8, r4
.L0803ACB2:
    ldr r0, .L0803ADB4 @ =gBmMapMovement
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803AD66
    ldr r0, .L0803ADB8 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r2, r0, r6
    ldrb r1, [r2]
    cmp r1, #0
    beq .L0803AD66
    ldr r0, .L0803ADBC @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    beq .L0803AD66
    adds r0, r1, #0
    bl GetUnit
    adds r5, r0, #0
    movs r0, #4
    ldr r1, .L0803ADC0 @ =0x0203A967
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803AD02
    mov r2, sb
    cmp r2, #0
    beq .L0803AD02
    adds r0, r5, #0
    bl _call_via_r9
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803AD66
.L0803AD02:
    ldr r4, .L0803ADC4 @ =0x0203A968
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803AD14
    movs r0, #1
    ldrb r1, [r5, #0xa]
    ands r0, r1
    cmp r0, #0
    beq .L0803AD66
.L0803AD14:
    adds r0, r5, #0
    bl GetUnitCurrentHp
    movs r1, #0x64
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r5, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r4, #0
    bl Div
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, sl
    bhi .L0803AD66
    add r5, sp, #0xc
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r5, #0
    bl func_0803AB80
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803AD66
    mov sl, r4
    add r0, sp, #0xc
    movs r4, #0
    ldrsh r2, [r0, r4]
    str r2, [sp, #0x14]
    movs r1, #2
    ldrsh r0, [r5, r1]
    str r0, [sp, #0x18]
    ldr r0, .L0803ADB8 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    str r0, [sp, #0x1c]
.L0803AD66:
    subs r6, #1
    cmp r6, #0
    bge .L0803ACB2
.L0803AD6C:
    ldr r7, [sp, #0x20]
    cmp r7, #0
    bge .L0803AC9E
.L0803AD72:
    movs r0, #1
    rsbs r0, r0, #0
    ldr r2, [sp, #0x14]
    cmp r2, r0
    beq .L0803AD96
    adds r0, r2, #0
    ldr r1, [sp, #0x18]
    ldr r3, [sp, #0x1c]
    ldr r4, [sp, #0x10]
    lsls r2, r4, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #5
    bl func_08034E50
.L0803AD96:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803ADA8: .4byte gActiveUnit
.L0803ADAC: .4byte 0x0203A8EC
.L0803ADB0: .4byte gBmMapSize
.L0803ADB4: .4byte gBmMapMovement
.L0803ADB8: .4byte gBmMapUnit
.L0803ADBC: .4byte gActiveUnitId
.L0803ADC0: .4byte 0x0203A967
.L0803ADC4: .4byte 0x0203A968
    func_end func_0803AC50

    thumb_func_start func_0803ADC8
func_0803ADC8: @ 0x0803ADC8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    str r0, [sp, #0x10]
    mov sb, r1
    movs r0, #0x64
    mov sl, r0
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [sp, #0x18]
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x1c]
    ldr r4, .L0803AF78 @ =0x0203A8EC
    adds r5, r4, #0
    adds r5, #0x7b
    movs r0, #4
    ldrb r3, [r5]
    ands r0, r3
    cmp r0, #0
    beq .L0803ADFA
    b .L0803AF68
.L0803ADFA:
    ldr r0, .L0803AF7C @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    ldr r0, [sp, #0x18]
    bl GenerateMagicSealMap
    adds r1, r4, #0
    adds r1, #0x7c
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803AE16
    adds r4, r0, #0
    mov sl, r4
.L0803AE16:
    movs r0, #1
    mov r8, r0
.L0803AE1A:
    mov r0, r8
    bl GetUnit
    adds r6, r0, #0
    cmp r6, #0
    bne .L0803AE28
    b .L0803AF38
.L0803AE28:
    ldr r0, [r6]
    cmp r0, #0
    bne .L0803AE30
    b .L0803AF38
.L0803AE30:
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    ldr r0, .L0803AF80 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r6, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldr r1, .L0803AF84 @ =gActiveUnitId
    ldrb r0, [r0]
    ldrb r1, [r1]
    cmp r0, r1
    beq .L0803AF38
    ldr r0, [r6, #0xc]
    ldr r1, .L0803AF88 @ =0x00010005
    ands r0, r1
    cmp r0, #0
    bne .L0803AF38
    movs r0, #4
    ldr r1, .L0803AF8C @ =0x0203A967
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803AE78
    mov r2, sb
    cmp r2, #0
    beq .L0803AE78
    adds r0, r6, #0
    bl _call_via_r9
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803AF38
.L0803AE78:
    ldr r3, .L0803AF90 @ =0x0203A968
    ldrb r0, [r3]
    cmp r0, #0
    bne .L0803AE8A
    movs r0, #1
    ldrb r4, [r6, #0xa]
    ands r0, r4
    cmp r0, #0
    beq .L0803AF38
.L0803AE8A:
    ldr r7, .L0803AF7C @ =gActiveUnit
    ldr r0, [r7]
    bl GetUnitMagRange
    ldr r2, [r7]
    ldr r1, [r2, #4]
    ldrb r3, [r2, #0x1d]
    ldrb r1, [r1, #0x12]
    adds r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    movs r4, #0x10
    ldrsb r4, [r2, r4]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldrb r2, [r6, #0x10]
    ldrb r3, [r6, #0x11]
    str r0, [sp]
    adds r0, r4, #0
    bl func_080370C8
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803AF38
    ldr r0, .L0803AF94 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    movs r4, #0x10
    ldrsb r4, [r6, r4]
    movs r5, #0x11
    ldrsb r5, [r6, r5]
    ldr r0, [r7]
    bl GetUnitMagRange
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #1
    bl MapAddInRange
    add r5, sp, #0xc
    adds r0, r5, #0
    bl func_08037380
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803AF38
    adds r0, r6, #0
    bl GetUnitCurrentHp
    movs r1, #0x64
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r4, #0
    bl Div
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, sl
    bhi .L0803AF38
    mov sl, r0
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r4, [r0, r1]
    str r4, [sp, #0x14]
    movs r3, #2
    ldrsh r2, [r5, r3]
    str r2, [sp, #0x18]
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    ldr r0, .L0803AF80 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r6, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r0, [r0]
    str r0, [sp, #0x1c]
.L0803AF38:
    movs r4, #1
    add r8, r4
    mov r0, r8
    cmp r0, #0xbf
    bgt .L0803AF44
    b .L0803AE1A
.L0803AF44:
    movs r0, #1
    rsbs r0, r0, #0
    ldr r1, [sp, #0x14]
    cmp r1, r0
    beq .L0803AF68
    adds r0, r1, #0
    ldr r1, [sp, #0x18]
    ldr r3, [sp, #0x1c]
    ldr r4, [sp, #0x10]
    lsls r2, r4, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #5
    bl func_08034E50
.L0803AF68:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803AF78: .4byte 0x0203A8EC
.L0803AF7C: .4byte gActiveUnit
.L0803AF80: .4byte gBmMapUnit
.L0803AF84: .4byte gActiveUnitId
.L0803AF88: .4byte 0x00010005
.L0803AF8C: .4byte 0x0203A967
.L0803AF90: .4byte 0x0203A968
.L0803AF94: .4byte gBmMapRange
    func_end func_0803ADC8

    thumb_func_start func_0803AF98
func_0803AF98: @ 0x0803AF98
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    str r0, [sp, #0xc]
    movs r0, #0
    mov r8, r0
    mov sb, r0
    mov sl, r0
    ldr r1, .L0803B088 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B078
    bl func_08037460
    cmp r0, #2
    ble .L0803B078
    ldr r0, .L0803B08C @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
    ldr r0, .L0803B090 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0803B050
.L0803AFE0:
    ldr r0, .L0803B090 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r7, r5, #1
    cmp r4, #0
    blt .L0803B04A
    lsls r6, r5, #2
.L0803AFF0:
    ldr r0, .L0803B094 @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803B044
    ldr r0, .L0803B098 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r1, [r0]
    cmp r1, #0
    beq .L0803B018
    ldr r0, .L0803B09C @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r1, r0
    bne .L0803B044
.L0803B018:
    ldr r0, .L0803B0A0 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L0803B08C @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitMagRange
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #1
    bl MapAddInRange
    bl func_080374AC
    cmp r0, r8
    ble .L0803B044
    mov r8, r0
    mov sb, r4
    mov sl, r5
.L0803B044:
    subs r4, #1
    cmp r4, #0
    bge .L0803AFF0
.L0803B04A:
    adds r5, r7, #0
    cmp r5, #0
    bge .L0803AFE0
.L0803B050:
    mov r3, r8
    cmp r3, #1
    ble .L0803B078
    mov r1, sb
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    mov r2, sl
    lsls r1, r2, #0x10
    asrs r1, r1, #0x10
    ldr r3, [sp, #0xc]
    lsls r2, r3, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #5
    movs r3, #0
    bl func_08034E50
.L0803B078:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803B088: .4byte 0x0203A8EC
.L0803B08C: .4byte gActiveUnit
.L0803B090: .4byte gBmMapSize
.L0803B094: .4byte gBmMapMovement
.L0803B098: .4byte gBmMapUnit
.L0803B09C: .4byte gActiveUnitId
.L0803B0A0: .4byte gBmMapRange
    func_end func_0803AF98

    thumb_func_start func_0803B0A4
func_0803B0A4: @ 0x0803B0A4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    str r0, [sp, #0x10]
    mov sb, r1
    movs r0, #0
    mov sl, r0
    movs r1, #0
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x18]
    movs r5, #0
    str r5, [sp, #0x1c]
    ldr r1, .L0803B1E8 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0803B0D4
    b .L0803B1D6
.L0803B0D4:
    ldr r0, .L0803B1EC @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
    bl func_0801A0FC
    ldr r0, .L0803B1F0 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r7, r0, #1
    cmp r7, #0
    blt .L0803B1A0
.L0803B0F4:
    ldr r0, .L0803B1F0 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r5, r7, #1
    str r5, [sp, #0x20]
    cmp r4, #0
    blt .L0803B19A
    lsls r0, r7, #2
    mov r8, r0
.L0803B108:
    ldr r0, .L0803B1F4 @ =gBmMapMovement
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803B194
    ldr r0, .L0803B1F8 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803B194
    bl GetUnit
    adds r5, r0, #0
    ldr r1, .L0803B1E8 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B150
    mov r1, sb
    cmp r1, #0
    beq .L0803B150
    adds r0, r5, #0
    bl _call_via_r9
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803B194
.L0803B150:
    movs r0, #9
    ldrb r2, [r5, #0xa]
    ands r0, r2
    cmp r0, #0
    bne .L0803B194
    movs r0, #8
    ldrsb r0, [r5, r0]
    cmp r0, sl
    blt .L0803B194
    add r6, sp, #0xc
    adds r0, r4, #0
    adds r1, r7, #0
    adds r2, r6, #0
    bl func_0803AB80
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B194
    ldrb r5, [r5, #8]
    mov sl, r5
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r5, [r0, r1]
    str r5, [sp, #0x14]
    movs r5, #2
    ldrsh r2, [r6, r5]
    str r2, [sp, #0x18]
    ldr r0, .L0803B1F8 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    str r0, [sp, #0x1c]
.L0803B194:
    subs r4, #1
    cmp r4, #0
    bge .L0803B108
.L0803B19A:
    ldr r7, [sp, #0x20]
    cmp r7, #0
    bge .L0803B0F4
.L0803B1A0:
    mov r0, sl
    cmp r0, #0
    beq .L0803B1D6
    add r4, sp, #0xc
    adds r0, r4, #0
    bl func_0803B83C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B1D6
    ldr r0, [sp, #0x14]
    ldr r1, [sp, #0x18]
    ldr r3, [sp, #0x1c]
    ldr r5, [sp, #0x10]
    lsls r2, r5, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    add r2, sp, #0xc
    ldrb r2, [r2]
    str r2, [sp, #4]
    ldrh r2, [r4, #2]
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp, #8]
    movs r2, #5
    bl func_08034E50
.L0803B1D6:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803B1E8: .4byte 0x0203A8EC
.L0803B1EC: .4byte gActiveUnit
.L0803B1F0: .4byte gBmMapSize
.L0803B1F4: .4byte gBmMapMovement
.L0803B1F8: .4byte gBmMapUnit
    func_end func_0803B0A4

    thumb_func_start func_0803B1FC
func_0803B1FC: @ 0x0803B1FC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    str r0, [sp, #0x10]
    mov sb, r1
    movs r0, #0
    mov sl, r0
    movs r1, #0
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x18]
    movs r4, #0
    str r4, [sp, #0x1c]
    ldr r1, .L0803B32C @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B31A
    ldr r0, .L0803B330 @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
    bl func_0801A0FC
    ldr r0, .L0803B334 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r7, r0, #1
    cmp r7, #0
    blt .L0803B2FA
.L0803B24A:
    ldr r0, .L0803B334 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r0, r7, #1
    str r0, [sp, #0x20]
    cmp r4, #0
    blt .L0803B2F4
    lsls r1, r7, #2
    mov r8, r1
.L0803B25E:
    ldr r0, .L0803B338 @ =gBmMapMovement
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803B2EE
    ldr r0, .L0803B33C @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803B2EE
    bl GetUnit
    adds r5, r0, #0
    ldr r1, .L0803B32C @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B2A6
    mov r2, sb
    cmp r2, #0
    beq .L0803B2A6
    adds r0, r5, #0
    bl _call_via_r9
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803B2EE
.L0803B2A6:
    adds r1, r5, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0803B2EE
    movs r0, #8
    ldrsb r0, [r5, r0]
    cmp r0, sl
    blt .L0803B2EE
    add r6, sp, #0xc
    adds r0, r4, #0
    adds r1, r7, #0
    adds r2, r6, #0
    bl func_0803AB80
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B2EE
    ldrb r5, [r5, #8]
    mov sl, r5
    add r0, sp, #0xc
    movs r2, #0
    ldrsh r1, [r0, r2]
    str r1, [sp, #0x14]
    movs r1, #2
    ldrsh r0, [r6, r1]
    str r0, [sp, #0x18]
    ldr r0, .L0803B33C @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    str r0, [sp, #0x1c]
.L0803B2EE:
    subs r4, #1
    cmp r4, #0
    bge .L0803B25E
.L0803B2F4:
    ldr r7, [sp, #0x20]
    cmp r7, #0
    bge .L0803B24A
.L0803B2FA:
    mov r2, sl
    cmp r2, #0
    beq .L0803B31A
    ldr r0, [sp, #0x14]
    ldr r1, [sp, #0x18]
    ldr r3, [sp, #0x1c]
    ldr r4, [sp, #0x10]
    lsls r2, r4, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #5
    bl func_08034E50
.L0803B31A:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803B32C: .4byte 0x0203A8EC
.L0803B330: .4byte gActiveUnit
.L0803B334: .4byte gBmMapSize
.L0803B338: .4byte gBmMapMovement
.L0803B33C: .4byte gBmMapUnit
    func_end func_0803B1FC

    thumb_func_start func_0803B340
func_0803B340: @ 0x0803B340
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    movs r6, #0
.L0803B346:
    lsls r0, r6, #1
    adds r1, r5, #0
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r0, [r1]
    adds r4, r0, #0
    cmp r4, #0
    beq .L0803B38E
    adds r0, r4, #0
    bl GetItemAttributes
    ldr r1, .L0803B384 @ =0x00000405
    ands r1, r0
    cmp r1, #0
    beq .L0803B388
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803B380
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B388
.L0803B380:
    movs r0, #1
    b .L0803B390
    .align 2, 0
.L0803B384: .4byte 0x00000405
.L0803B388:
    adds r6, #1
    cmp r6, #4
    ble .L0803B346
.L0803B38E:
    movs r0, #0
.L0803B390:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0803B340

    thumb_func_start func_0803B398
func_0803B398: @ 0x0803B398
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L0803B3B4 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r5, #0
    bl GetOffensiveStaffAccuracy
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, #4
    bhi .L0803B3B8
    movs r0, #0
    b .L0803B3E4
    .align 2, 0
.L0803B3B4: .4byte gActiveUnit
.L0803B3B8:
    adds r0, r5, #0
    bl GetUnitPower
    adds r0, r4, r0
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    adds r0, r5, #0
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0
    beq .L0803B3E2
    bl GetItemAttributes
    movs r1, #2
    ands r1, r0
    cmp r1, #0
    beq .L0803B3E2
    lsls r0, r4, #0x19
    lsrs r4, r0, #0x18
.L0803B3E2:
    adds r0, r4, #0
.L0803B3E4:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803B398

    thumb_func_start func_0803B3EC
func_0803B3EC: @ 0x0803B3EC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    str r0, [sp, #0x10]
    mov sl, r1
    movs r0, #0
    str r0, [sp, #0x14]
    movs r1, #0
    str r1, [sp, #0x18]
    movs r2, #0
    str r2, [sp, #0x1c]
    movs r3, #0
    str r3, [sp, #0x20]
    ldr r1, .L0803B568 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0803B41C
    b .L0803B558
.L0803B41C:
    ldr r0, .L0803B56C @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
    movs r4, #1
    mov sb, r4
.L0803B430:
    mov r0, sb
    bl GetUnit
    adds r6, r0, #0
    cmp r6, #0
    beq .L0803B528
    ldr r0, [r6]
    cmp r0, #0
    beq .L0803B528
    ldr r0, [r6, #0xc]
    ldr r1, .L0803B570 @ =0x00010005
    ands r0, r1
    cmp r0, #0
    bne .L0803B528
    ldr r1, .L0803B568 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B46C
    mov r0, sl
    cmp r0, #0
    beq .L0803B46C
    adds r0, r6, #0
    bl _call_via_sl
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B528
.L0803B46C:
    adds r1, r6, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #3
    beq .L0803B528
    adds r0, r6, #0
    bl func_08037548
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B528
    ldr r1, .L0803B56C @ =gActiveUnit
    mov r8, r1
    ldr r0, [r1]
    bl GetUnitMagRange
    mov r3, r8
    ldr r2, [r3]
    ldr r1, [r2, #4]
    ldrb r4, [r2, #0x1d]
    ldrb r1, [r1, #0x12]
    adds r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    movs r4, #0x10
    ldrsb r4, [r2, r4]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldrb r2, [r6, #0x10]
    ldrb r3, [r6, #0x11]
    str r0, [sp]
    adds r0, r4, #0
    bl func_080370C8
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B528
    adds r0, r6, #0
    bl func_0803B340
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B528
    adds r0, r6, #0
    bl func_0803B398
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    cmp r7, #0
    beq .L0803B528
    ldr r0, [sp, #0x14]
    cmp r7, r0
    blo .L0803B528
    ldr r0, .L0803B574 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    movs r4, #0x10
    ldrsb r4, [r6, r4]
    movs r5, #0x11
    ldrsb r5, [r6, r5]
    mov r1, r8
    ldr r0, [r1]
    bl GetUnitMagRange
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #1
    bl MapAddInRange
    add r4, sp, #0xc
    adds r0, r4, #0
    bl func_08037380
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B528
    str r7, [sp, #0x14]
    add r0, sp, #0xc
    movs r3, #0
    ldrsh r2, [r0, r3]
    str r2, [sp, #0x18]
    movs r1, #2
    ldrsh r0, [r4, r1]
    str r0, [sp, #0x1c]
    ldrb r6, [r6, #0xb]
    lsls r6, r6, #0x18
    asrs r6, r6, #0x18
    str r6, [sp, #0x20]
.L0803B528:
    movs r2, #1
    add sb, r2
    mov r3, sb
    cmp r3, #0xbf
    bgt .L0803B534
    b .L0803B430
.L0803B534:
    ldr r4, [sp, #0x14]
    cmp r4, #0
    beq .L0803B558
    ldr r0, [sp, #0x18]
    ldr r1, [sp, #0x1c]
    ldr r2, [sp, #0x20]
    lsls r3, r2, #0x18
    lsrs r3, r3, #0x18
    ldr r4, [sp, #0x10]
    lsls r2, r4, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #5
    bl func_08034E50
.L0803B558:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803B568: .4byte 0x0203A8EC
.L0803B56C: .4byte gActiveUnit
.L0803B570: .4byte 0x00010005
.L0803B574: .4byte gBmMapRange
    func_end func_0803B3EC

    thumb_func_start func_0803B578
func_0803B578: @ 0x0803B578
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    str r0, [sp, #0x10]
    mov sb, r1
    movs r0, #0
    mov sl, r0
    movs r1, #0
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x18]
    movs r3, #0
    str r3, [sp, #0x1c]
    ldr r1, .L0803B6EC @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0803B5A8
    b .L0803B6DA
.L0803B5A8:
    ldr r0, .L0803B6F0 @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
    movs r4, #1
    mov r8, r4
.L0803B5BC:
    mov r0, r8
    bl GetUnit
    adds r6, r0, #0
    cmp r6, #0
    beq .L0803B6AA
    ldr r0, [r6]
    cmp r0, #0
    beq .L0803B6AA
    ldr r0, [r6, #0xc]
    ldr r1, .L0803B6F4 @ =0x00010005
    ands r0, r1
    cmp r0, #0
    bne .L0803B6AA
    ldr r1, .L0803B6EC @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B5F8
    mov r0, sb
    cmp r0, #0
    beq .L0803B5F8
    adds r0, r6, #0
    bl _call_via_r9
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B6AA
.L0803B5F8:
    adds r1, r6, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B6AA
    ldr r7, .L0803B6F0 @ =gActiveUnit
    ldr r0, [r7]
    bl GetUnitMagRange
    ldr r2, [r7]
    ldr r1, [r2, #4]
    ldrb r3, [r2, #0x1d]
    ldrb r1, [r1, #0x12]
    adds r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    movs r4, #0x10
    ldrsb r4, [r2, r4]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldrb r2, [r6, #0x10]
    ldrb r3, [r6, #0x11]
    str r0, [sp]
    adds r0, r4, #0
    bl func_080370C8
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B6AA
    adds r0, r6, #0
    bl func_0803B340
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B6AA
    ldr r0, [r7]
    adds r1, r6, #0
    bl GetOffensiveStaffAccuracy
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    cmp r1, #4
    bls .L0803B6AA
    movs r0, #8
    ldrsb r0, [r6, r0]
    adds r0, r1, r0
    cmp r0, sl
    blt .L0803B6AA
    ldr r0, .L0803B6F8 @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    movs r4, #0x10
    ldrsb r4, [r6, r4]
    movs r5, #0x11
    ldrsb r5, [r6, r5]
    ldr r0, [r7]
    bl GetUnitMagRange
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #1
    bl MapAddInRange
    add r4, sp, #0xc
    adds r0, r4, #0
    bl func_08037380
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B6AA
    ldrb r0, [r6, #8]
    mov sl, r0
    add r0, sp, #0xc
    movs r2, #0
    ldrsh r1, [r0, r2]
    str r1, [sp, #0x14]
    movs r0, #2
    ldrsh r3, [r4, r0]
    str r3, [sp, #0x18]
    ldrb r6, [r6, #0xb]
    lsls r6, r6, #0x18
    asrs r6, r6, #0x18
    str r6, [sp, #0x1c]
.L0803B6AA:
    movs r1, #1
    add r8, r1
    mov r2, r8
    cmp r2, #0xbf
    bgt .L0803B6B6
    b .L0803B5BC
.L0803B6B6:
    mov r3, sl
    cmp r3, #0
    beq .L0803B6DA
    ldr r0, [sp, #0x14]
    ldr r1, [sp, #0x18]
    ldr r4, [sp, #0x1c]
    lsls r3, r4, #0x18
    lsrs r3, r3, #0x18
    ldr r4, [sp, #0x10]
    lsls r2, r4, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #5
    bl func_08034E50
.L0803B6DA:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803B6EC: .4byte 0x0203A8EC
.L0803B6F0: .4byte gActiveUnit
.L0803B6F4: .4byte 0x00010005
.L0803B6F8: .4byte gBmMapRange
    func_end func_0803B578

    thumb_func_start func_0803B6FC
func_0803B6FC: @ 0x0803B6FC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    str r0, [sp, #0x10]
    mov sb, r1
    movs r0, #0xff
    mov sl, r0
    movs r1, #0
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x18]
    movs r4, #0
    str r4, [sp, #0x1c]
    ldr r1, .L0803B828 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B816
    ldr r0, .L0803B82C @ =gActiveUnit
    ldr r0, [r0]
    bl func_0803758C
    movs r0, #1
    rsbs r0, r0, #0
    bl GenerateMagicSealMap
    bl func_0801A0FC
    ldr r0, .L0803B830 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r7, r0, #1
    cmp r7, #0
    blt .L0803B7F6
.L0803B74A:
    ldr r0, .L0803B830 @ =gBmMapSize
    movs r2, #0
    ldrsh r0, [r0, r2]
    subs r4, r0, #1
    subs r0, r7, #1
    str r0, [sp, #0x20]
    cmp r4, #0
    blt .L0803B7F0
    lsls r1, r7, #2
    mov r8, r1
.L0803B75E:
    ldr r0, .L0803B834 @ =gBmMapMovement
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803B7EA
    ldr r0, .L0803B838 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803B7EA
    bl GetUnit
    adds r5, r0, #0
    ldr r1, .L0803B828 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0803B7A6
    mov r2, sb
    cmp r2, #0
    beq .L0803B7A6
    adds r0, r5, #0
    bl _call_via_r9
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0803B7EA
.L0803B7A6:
    adds r0, r5, #0
    bl GetUnitResistance
    cmp r0, sl
    bgt .L0803B7EA
    add r6, sp, #0xc
    adds r0, r4, #0
    adds r1, r7, #0
    adds r2, r6, #0
    bl func_0803AB80
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803B7EA
    adds r0, r5, #0
    bl GetUnitResistance
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov sl, r0
    add r0, sp, #0xc
    movs r2, #0
    ldrsh r1, [r0, r2]
    str r1, [sp, #0x14]
    movs r1, #2
    ldrsh r0, [r6, r1]
    str r0, [sp, #0x18]
    ldr r0, .L0803B838 @ =gBmMapUnit
    ldr r0, [r0]
    add r0, r8
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    str r0, [sp, #0x1c]
.L0803B7EA:
    subs r4, #1
    cmp r4, #0
    bge .L0803B75E
.L0803B7F0:
    ldr r7, [sp, #0x20]
    cmp r7, #0
    bge .L0803B74A
.L0803B7F6:
    mov r2, sl
    cmp r2, #0xff
    beq .L0803B816
    ldr r0, [sp, #0x14]
    ldr r1, [sp, #0x18]
    ldr r3, [sp, #0x1c]
    ldr r4, [sp, #0x10]
    lsls r2, r4, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #5
    bl func_08034E50
.L0803B816:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803B828: .4byte 0x0203A8EC
.L0803B82C: .4byte gActiveUnit
.L0803B830: .4byte gBmMapSize
.L0803B834: .4byte gBmMapMovement
.L0803B838: .4byte gBmMapUnit
    func_end func_0803B6FC

    thumb_func_start func_0803B83C
func_0803B83C: @ 0x0803B83C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    str r0, [sp]
    movs r0, #0xff
    str r0, [sp, #4]
    mov r8, r0
    mov sl, r0
    movs r1, #0
    str r1, [sp, #8]
    movs r0, #0
    str r0, [sp, #0xc]
    ldr r0, .L0803B910 @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitMovementCost
    str r0, [sp, #0x10]
    bl GetActiveFactionAlliance
    str r0, [sp, #0x14]
    adds r4, r0, #0
    adds r4, #1
    adds r0, #0x80
    cmp r4, r0
    blt .L0803B876
    b .L0803B99E
.L0803B876:
    adds r0, r4, #0
    bl GetUnit
    adds r7, r0, #0
    ldr r1, [sp, #0x14]
    adds r1, #0x80
    str r1, [sp, #0x1c]
    adds r4, #1
    str r4, [sp, #0x18]
    cmp r7, #0
    bne .L0803B88E
    b .L0803B994
.L0803B88E:
    ldr r0, [r7]
    cmp r0, #0
    bne .L0803B896
    b .L0803B994
.L0803B896:
    ldr r0, [r7, #0xc]
    ldr r1, .L0803B914 @ =0x00010025
    ands r0, r1
    cmp r0, #0
    bne .L0803B994
    adds r0, r7, #0
    bl func_0803C08C
    ldr r0, .L0803B918 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    blt .L0803B96E
.L0803B8B2:
    ldr r0, .L0803B918 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r0, r6, #1
    mov sb, r0
    cmp r4, #0
    blt .L0803B968
    ldr r3, .L0803B91C @ =gBmMapRange
    lsls r5, r6, #2
.L0803B8C6:
    ldr r0, [r3]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r2, r0, r4
    ldrb r1, [r2]
    cmp r1, #0x78
    bhi .L0803B962
    ldr r0, .L0803B920 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803B924
    movs r0, #0xb
    ldrsb r0, [r7, r0]
    ldrb r1, [r1]
    str r3, [sp, #0x20]
    bl AreUnitIdsAllied
    lsls r0, r0, #0x18
    ldr r3, [sp, #0x20]
    cmp r0, #0
    bne .L0803B962
    ldr r0, [r3]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r1, r0, r4
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r8, r0
    ble .L0803B962
    ldrb r1, [r1]
    mov r8, r1
    b .L0803B962
    .align 2, 0
.L0803B910: .4byte gActiveUnit
.L0803B914: .4byte 0x00010025
.L0803B918: .4byte gBmMapSize
.L0803B91C: .4byte gBmMapRange
.L0803B920: .4byte gBmMapUnit
.L0803B924:
    ldr r0, .L0803B9A8 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    ldr r1, [sp, #0x10]
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    ble .L0803B962
    ldr r0, .L0803B9AC @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x78
    ble .L0803B962
    movs r0, #0
    ldrsb r0, [r2, r0]
    cmp sl, r0
    ble .L0803B962
    str r4, [sp, #8]
    str r6, [sp, #0xc]
    ldrb r2, [r2]
    mov sl, r2
.L0803B962:
    subs r4, #1
    cmp r4, #0
    bge .L0803B8C6
.L0803B968:
    mov r6, sb
    cmp r6, #0
    bge .L0803B8B2
.L0803B96E:
    mov r0, r8
    cmp r0, #0xff
    beq .L0803B994
    ldr r1, [sp, #4]
    cmp r1, r8
    blo .L0803B994
    mov r0, sl
    cmp r0, #0xff
    beq .L0803B994
    mov r1, sp
    ldrh r0, [r1, #8]
    ldr r1, [sp]
    strh r0, [r1]
    mov r1, sp
    ldrh r0, [r1, #0xc]
    ldr r1, [sp]
    strh r0, [r1, #2]
    mov r1, r8
    str r1, [sp, #4]
.L0803B994:
    ldr r4, [sp, #0x18]
    ldr r0, [sp, #0x1c]
    cmp r4, r0
    bge .L0803B99E
    b .L0803B876
.L0803B99E:
    ldr r1, [sp, #4]
    cmp r1, #0xff
    bne .L0803B9B0
    movs r0, #0
    b .L0803B9B2
    .align 2, 0
.L0803B9A8: .4byte gBmMapTerrain
.L0803B9AC: .4byte gBmMapMovement
.L0803B9B0:
    movs r0, #1
.L0803B9B2:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0803B83C

    thumb_func_start func_0803B9C4
func_0803B9C4: @ 0x0803B9C4
    push {r4, r5, r6, lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    movs r4, #0
    bl GetItemIndex
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    ldr r3, .L0803B9F4 @ =0x081D3BDC
    ldrh r0, [r3]
    cmp r0, #0
    beq .L0803BA08
    movs r1, #0
    adds r2, r3, #0
    adds r6, r2, #4
.L0803B9E2:
    ldrh r0, [r2]
    cmp r5, r0
    bne .L0803B9F8
    adds r0, r1, r6
    ldr r0, [r0]
    cmp r0, #0
    beq .L0803B9F8
    adds r0, r4, #0
    b .L0803BA0C
    .align 2, 0
.L0803B9F4: .4byte 0x081D3BDC
.L0803B9F8:
    adds r1, #8
    adds r2, #8
    adds r4, #1
    ldr r3, .L0803BA14 @ =0x081D3BDC
    adds r0, r1, r3
    ldrh r0, [r0]
    cmp r0, #0
    bne .L0803B9E2
.L0803BA08:
    movs r0, #1
    rsbs r0, r0, #0
.L0803BA0C:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0803BA14: .4byte 0x081D3BDC
    func_end func_0803B9C4

    thumb_func_start func_0803BA18
func_0803BA18: @ 0x0803BA18
    push {r4, r5, r6, lr}
    ldr r1, .L0803BA2C @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0803BA30
    movs r0, #0
    b .L0803BAA2
    .align 2, 0
.L0803BA2C: .4byte 0x0203A8EC
.L0803BA30:
    movs r5, #0
    ldr r0, .L0803BA90 @ =gActiveUnit
    ldr r0, [r0]
    ldrh r4, [r0, #0x1e]
    cmp r4, #0
    beq .L0803BA7A
    ldr r6, .L0803BA94 @ =0x081D3BE0
.L0803BA3E:
    adds r0, r4, #0
    bl GetItemType
    cmp r0, #0
    beq .L0803BA64
    adds r0, r4, #0
    bl func_0803B9C4
    adds r1, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0803BA64
    lsls r0, r1, #3
    adds r0, r0, r6
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
.L0803BA64:
    adds r5, #1
    cmp r5, #4
    bgt .L0803BA7A
    ldr r0, .L0803BA90 @ =gActiveUnit
    ldr r0, [r0]
    lsls r1, r5, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L0803BA3E
.L0803BA7A:
    ldr r0, .L0803BA98 @ =0x0203A8EC
    adds r0, #0x79
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803BAA0
    ldr r0, .L0803BA9C @ =0x0203A97C
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L0803BAA2
    .align 2, 0
.L0803BA90: .4byte gActiveUnit
.L0803BA94: .4byte 0x081D3BE0
.L0803BA98: .4byte 0x0203A8EC
.L0803BA9C: .4byte 0x0203A97C
.L0803BAA0:
    movs r0, #1
.L0803BAA2:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0803BA18

    thumb_func_start func_0803BAA8
func_0803BAA8: @ 0x0803BAA8
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r6, r0, #0
    ldr r4, .L0803BB30 @ =0x0203A8EC
    adds r0, r4, #0
    adds r0, #0x80
    ldr r0, [r0]
    ldr r1, .L0803BB34 @ =0x80000001
    ands r0, r1
    cmp r0, #0
    beq .L0803BB26
    ldr r0, .L0803BB38 @ =gActiveUnit
    ldr r0, [r0]
    add r5, sp, #0xc
    adds r1, r5, #0
    bl func_0803BCE8
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803BB26
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    adds r2, r4, #0
    adds r2, #0x7e
    ldrb r3, [r2]
    movs r2, #1
    str r2, [sp]
    movs r2, #0
    bl func_08036B00
    ldr r4, .L0803BB3C @ =0x0203A97C
    ldrb r0, [r4, #0xa]
    cmp r0, #1
    bne .L0803BB26
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r5, r2]
    ldrb r2, [r4, #2]
    ldrb r3, [r4, #3]
    movs r5, #0
    str r5, [sp]
    bl func_080370C8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803BB26
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    lsls r2, r6, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    str r5, [sp, #4]
    str r5, [sp, #8]
    movs r2, #6
    movs r3, #0
    bl func_08034E50
.L0803BB26:
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BB30: .4byte 0x0203A8EC
.L0803BB34: .4byte 0x80000001
.L0803BB38: .4byte gActiveUnit
.L0803BB3C: .4byte 0x0203A97C
    func_end func_0803BAA8

    thumb_func_start func_0803BB40
func_0803BB40: @ 0x0803BB40
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r7, r0, #0
    movs r5, #0
    ldr r6, .L0803BB80 @ =0x0203A8EC
    adds r0, r6, #0
    adds r0, #0x80
    ldr r0, [r0]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    beq .L0803BC12
    ldr r4, .L0803BB84 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitItemCount
    cmp r0, #4
    ble .L0803BB88
    ldr r2, [r4]
    ldrb r1, [r2, #0xa]
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    bne .L0803BB88
    movs r0, #8
    orrs r0, r1
    strb r0, [r2, #0xa]
    adds r0, r6, #0
    adds r0, #0x79
    strb r5, [r0]
    b .L0803BC12
    .align 2, 0
.L0803BB80: .4byte 0x0203A8EC
.L0803BB84: .4byte gActiveUnit
.L0803BB88:
    ldr r6, .L0803BC1C @ =gActiveUnit
    ldr r2, [r6]
    ldr r0, [r2]
    ldr r1, [r2, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r4, #4
    ands r0, r4
    cmp r0, #0
    beq .L0803BC12
    adds r0, r2, #0
    bl GetUnitItemCount
    cmp r0, #4
    ble .L0803BBAA
    orrs r5, r4
.L0803BBAA:
    ldr r0, [r6]
    add r6, sp, #0xc
    adds r1, r5, #0
    adds r2, r6, #0
    bl func_0803BD64
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803BC12
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r6, r2]
    ldr r2, .L0803BC20 @ =0x0203A8EC
    adds r2, #0x7e
    ldrb r3, [r2]
    movs r5, #0
    str r5, [sp]
    movs r2, #0
    bl func_08036B00
    ldr r4, .L0803BC24 @ =0x0203A97C
    ldrb r0, [r4, #0xa]
    cmp r0, #1
    bne .L0803BC12
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r6, r2]
    ldrb r2, [r4, #2]
    ldrb r3, [r4, #3]
    str r5, [sp]
    bl func_080370C8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803BC12
    ldrb r0, [r4, #2]
    ldrb r1, [r4, #3]
    lsls r2, r7, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    str r5, [sp, #4]
    str r5, [sp, #8]
    movs r2, #6
    movs r3, #0
    bl func_08034E50
.L0803BC12:
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BC1C: .4byte gActiveUnit
.L0803BC20: .4byte 0x0203A8EC
.L0803BC24: .4byte 0x0203A97C
    func_end func_0803BB40

    thumb_func_start func_0803BC28
func_0803BC28: @ 0x0803BC28
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    ldr r0, .L0803BC88 @ =0x0203A8EC
    adds r0, #0x80
    ldr r0, [r0]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L0803BC7E
    ldr r0, .L0803BC8C @ =gActiveUnit
    ldr r2, [r0]
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #1
    bne .L0803BC7E
    add r4, sp, #0xc
    adds r0, r2, #0
    adds r1, r4, #0
    bl func_08036900
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803BC7E
    add r0, sp, #0xc
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r1, [r4, r2]
    lsls r2, r5, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    movs r2, #6
    movs r3, #0
    bl func_08034E50
.L0803BC7E:
    add sp, #0x10
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BC88: .4byte 0x0203A8EC
.L0803BC8C: .4byte gActiveUnit
    func_end func_0803BC28

    thumb_func_start func_0803BC90
func_0803BC90: @ 0x0803BC90
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    ldr r1, .L0803BCC8 @ =gBmMapRange
    ldr r0, [r1]
    lsls r2, r4, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x77
    bgt .L0803BCC4
    ldr r0, .L0803BCCC @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r2, [r0]
    cmp r2, #0
    beq .L0803BCD4
    ldr r0, .L0803BCD0 @ =gActiveUnitId
    ldrb r0, [r0]
    cmp r2, r0
    beq .L0803BCD4
.L0803BCC4:
    movs r0, #0xff
    b .L0803BCE0
    .align 2, 0
.L0803BCC8: .4byte gBmMapRange
.L0803BCCC: .4byte gBmMapUnit
.L0803BCD0: .4byte gActiveUnitId
.L0803BCD4:
    ldr r1, [r1]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
.L0803BCE0:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803BC90

    thumb_func_start func_0803BCE8
func_0803BCE8: @ 0x0803BCE8
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_0803BFF4
    ldr r0, .L0803BD2C @ =0x08B98AE8
    movs r1, #0
    adds r2, r4, #0
    bl func_08035FA0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803BD34
    adds r0, r5, #0
    bl func_0803BED0
    movs r1, #2
    ldrsh r0, [r4, r1]
    ldr r1, .L0803BD30 @ =gBmMapRange
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r4, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x77
    bgt .L0803BD34
    movs r0, #1
    b .L0803BD36
    .align 2, 0
.L0803BD2C: .4byte 0x08B98AE8
.L0803BD30: .4byte gBmMapRange
.L0803BD34:
    movs r0, #0
.L0803BD36:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803BCE8

    thumb_func_start func_0803BD3C
func_0803BD3C: @ 0x0803BD3C
    push {r4, lr}
    adds r4, r1, #0
    bl func_0803BED0
    ldr r0, .L0803BD58 @ =0x08B98AEA
    movs r1, #0
    adds r2, r4, #0
    bl func_08035E44
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803BD5C
    movs r0, #1
    b .L0803BD5E
    .align 2, 0
.L0803BD58: .4byte 0x08B98AEA
.L0803BD5C:
    movs r0, #0
.L0803BD5E:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803BD3C

    thumb_func_start func_0803BD64
func_0803BD64: @ 0x0803BD64
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r4, r2, #0
    bl func_0803BEA0
    adds r0, r5, #0
    bl func_0803BFC0
    movs r0, #1
    orrs r0, r6
    adds r1, r4, #0
    bl func_080360E8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803BDB0
    movs r1, #2
    ldrsh r0, [r4, r1]
    ldr r1, .L0803BDAC @ =gBmMapMovement
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0
    ldrsh r1, [r4, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x77
    bgt .L0803BDB0
.L0803BDA6:
    movs r0, #1
    b .L0803BDF6
    .align 2, 0
.L0803BDAC: .4byte gBmMapMovement
.L0803BDB0:
    adds r0, r5, #0
    bl func_0803BFF4
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_080360E8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803BDF4
    movs r3, #2
    ldrsh r1, [r4, r3]
    ldr r0, .L0803BDFC @ =gBmMapMovement
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r0, r1, r0
    movs r3, #0
    ldrsh r2, [r4, r3]
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x77
    bgt .L0803BDA6
    ldr r0, .L0803BE00 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r1, r0
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0803BDA6
.L0803BDF4:
    movs r0, #0
.L0803BDF6:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0803BDFC: .4byte gBmMapMovement
.L0803BE00: .4byte gBmMapUnit
    func_end func_0803BD64

    thumb_func_start func_0803BE04
func_0803BE04: @ 0x0803BE04
    push {r4, r5, lr}
    adds r4, r0, #0
    movs r2, #1
    ldr r3, .L0803BE24 @ =gWorkingMovTable
    movs r5, #1
.L0803BE0E:
    adds r0, r4, r2
    ldrb r1, [r0]
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    ble .L0803BE28
    adds r0, r2, r3
    strb r1, [r0]
    b .L0803BE2C
    .align 2, 0
.L0803BE24: .4byte gWorkingMovTable
.L0803BE28:
    adds r0, r2, r3
    strb r5, [r0]
.L0803BE2C:
    adds r0, r2, #1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r2, #0x40
    bls .L0803BE0E
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0803BE04

    thumb_func_start func_0803BE3C
func_0803BE3C: @ 0x0803BE3C
    push {r4, r5, r6, lr}
    adds r3, r0, #0
    adds r5, r1, #0
    movs r2, #1
    ldr r6, .L0803BE68 @ =gWorkingMovTable
    adds r4, r6, #0
.L0803BE48:
    adds r1, r2, r4
    adds r0, r3, r2
    ldrb r0, [r0]
    strb r0, [r1]
    adds r0, r2, #1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r2, #0x40
    bls .L0803BE48
    adds r1, r5, r6
    movs r0, #1
    strb r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BE68: .4byte gWorkingMovTable
    func_end func_0803BE3C

    thumb_func_start func_0803BE6C
func_0803BE6C: @ 0x0803BE6C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    movs r3, #1
    ldr r2, .L0803BE9C @ =gWorkingMovTable
    adds r5, r2, #0
.L0803BE7A:
    adds r1, r3, r5
    adds r0, r4, r3
    ldrb r0, [r0]
    strb r0, [r1]
    adds r0, r3, #1
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    cmp r3, #0x40
    bls .L0803BE7A
    adds r0, r6, r2
    movs r1, #1
    strb r1, [r0]
    adds r0, r7, r2
    strb r1, [r0]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BE9C: .4byte gWorkingMovTable
    func_end func_0803BE6C

    thumb_func_start func_0803BEA0
func_0803BEA0: @ 0x0803BEA0
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L0803BECC @ =gBmMapMovement
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    movs r2, #0x7c
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BECC: .4byte gBmMapMovement
    func_end func_0803BEA0

    thumb_func_start func_0803BED0
func_0803BED0: @ 0x0803BED0
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L0803BEFC @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    movs r2, #0x7c
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BEFC: .4byte gBmMapRange
    func_end func_0803BED0

    thumb_func_start func_0803BF00
func_0803BF00: @ 0x0803BF00
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    bl func_0803BE04
    ldr r0, .L0803BF2C @ =gBmMapMovement
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    movs r2, #0x7c
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BF2C: .4byte gBmMapMovement
    func_end func_0803BF00

    thumb_func_start func_0803BF30
func_0803BF30: @ 0x0803BF30
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    bl func_0803BE04
    ldr r0, .L0803BF5C @ =gBmMapMovement
    ldr r0, [r0]
    bl func_0801B190
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
.L0803BF5C: .4byte gBmMapMovement
    func_end func_0803BF30

    thumb_func_start func_0803BF60
func_0803BF60: @ 0x0803BF60
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, r2, #0
    bl func_0803BE04
    ldr r0, .L0803BF88 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x7c
    movs r3, #0
    bl BeginMapFlood
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BF88: .4byte gBmMapRange
    func_end func_0803BF60

    thumb_func_start func_0803BF8C
func_0803BF8C: @ 0x0803BF8C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r4, r2, #0
    adds r0, r4, #0
    bl GetUnitMovementCost
    bl func_0803BE04
    ldr r0, .L0803BFBC @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    adds r0, r5, #0
    adds r1, r6, #0
    movs r2, #0x7c
    bl BeginMapFlood
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BFBC: .4byte gBmMapRange
    func_end func_0803BF8C

    thumb_func_start func_0803BFC0
func_0803BFC0: @ 0x0803BFC0
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    movs r1, #0x1e
    bl func_0803BE3C
    ldr r0, .L0803BFF0 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    movs r2, #0x7c
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803BFF0: .4byte gBmMapRange
    func_end func_0803BFC0

    thumb_func_start func_0803BFF4
func_0803BFF4: @ 0x0803BFF4
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    movs r1, #0x1e
    bl func_0803BE3C
    ldr r0, .L0803C020 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
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
.L0803C020: .4byte gBmMapRange
    func_end func_0803BFF4

    thumb_func_start func_0803C024
func_0803C024: @ 0x0803C024
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    movs r1, #0x1b
    movs r2, #0x33
    bl func_0803BE6C
    ldr r0, .L0803C054 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    movs r2, #0x7c
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C054: .4byte gBmMapRange
    func_end func_0803C024

    thumb_func_start func_0803C058
func_0803C058: @ 0x0803C058
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    movs r1, #0x1b
    movs r2, #0x33
    bl func_0803BE6C
    ldr r0, .L0803C088 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
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
.L0803C088: .4byte gBmMapRange
    func_end func_0803C058

    thumb_func_start func_0803C08C
func_0803C08C: @ 0x0803C08C
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L0803C0C4 @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0x1d
    ldrsb r2, [r4, r2]
    ldr r3, [r4, #4]
    ldrb r3, [r3, #0x12]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    adds r2, r2, r3
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C0C4: .4byte gBmMapRange
    func_end func_0803C08C

    thumb_func_start func_0803C0C8
func_0803C0C8: @ 0x0803C0C8
    adds r0, #0x40
    movs r1, #0x80
    lsls r1, r1, #6
    ldrh r0, [r0]
    ands r1, r0
    cmp r1, #0
    beq .L0803C0E8
    ldr r0, .L0803C0E4 @ =0x0203A8EC
    adds r0, #0x7b
    movs r1, #2
    ldrb r2, [r0]
    orrs r1, r2
    strb r1, [r0]
    b .L0803C0F4
    .align 2, 0
.L0803C0E4: .4byte 0x0203A8EC
.L0803C0E8:
    ldr r1, .L0803C0F8 @ =0x0203A8EC
    adds r1, #0x7b
    movs r0, #0xfd
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
.L0803C0F4:
    bx lr
    .align 2, 0
.L0803C0F8: .4byte 0x0203A8EC
    func_end func_0803C0C8

    thumb_func_start func_0803C0FC
func_0803C0FC: @ 0x0803C0FC
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r4, r2, #0
    adds r0, r4, #0
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L0803C12C @ =gBmMapRange
    ldr r0, [r0]
    bl func_0801B190
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    adds r0, r5, #0
    adds r1, r6, #0
    movs r2, #0x7c
    bl BeginMapFlood
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C12C: .4byte gBmMapRange
    func_end func_0803C0FC
