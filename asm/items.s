    .include "asm_prelude.inc"

    thumb_func_start func_08015FF4
func_08015FF4: @ 0x08015FF4
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r7, r3, #0
    cmp r4, #0
    beq .L08016010
    ldr r0, .L0801600C @ =0x08B92E70
    adds r1, r4, #0
    bl Proc_StartBlocking
    b .L08016018
    .align 2, 0
.L0801600C: .4byte 0x08B92E70
.L08016010:
    ldr r0, .L08016038 @ =0x08B92E70
    movs r1, #3
    bl Proc_Start
.L08016018:
    adds r3, r0, #0
    ldr r1, .L0801603C @ =gBmSt
    ldrh r0, [r1, #0xc]
    movs r2, #0
    strh r0, [r3, #0x30]
    ldrh r0, [r1, #0xe]
    strh r0, [r3, #0x32]
    lsls r0, r5, #4
    strh r0, [r3, #0x2c]
    lsls r0, r6, #4
    strh r0, [r3, #0x2e]
    strh r7, [r3, #0x3a]
    str r2, [r3, #0x3c]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08016038: .4byte 0x08B92E70
.L0801603C: .4byte gBmSt
    func_end func_08015FF4

    thumb_func_start GetItemHpBonus
GetItemHpBonus: @ 0x08016040
    adds r1, r0, #0
    cmp r1, #0
    beq .L0801605A
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016060 @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    bne .L08016064
.L0801605A:
    movs r0, #0
    b .L0801606A
    .align 2, 0
.L08016060: .4byte 0x08BE222C
.L08016064:
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L0801606A:
    bx lr
    func_end GetItemHpBonus

    thumb_func_start GetItemPowBonus
GetItemPowBonus: @ 0x0801606C
    adds r1, r0, #0
    cmp r1, #0
    beq .L08016086
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801608C @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    bne .L08016090
.L08016086:
    movs r0, #0
    b .L08016096
    .align 2, 0
.L0801608C: .4byte 0x08BE222C
.L08016090:
    ldrb r0, [r0, #1]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L08016096:
    bx lr
    func_end GetItemPowBonus

    thumb_func_start GetItemSklBonus
GetItemSklBonus: @ 0x08016098
    adds r1, r0, #0
    cmp r1, #0
    beq .L080160B2
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080160B8 @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    bne .L080160BC
.L080160B2:
    movs r0, #0
    b .L080160C2
    .align 2, 0
.L080160B8: .4byte 0x08BE222C
.L080160BC:
    ldrb r0, [r0, #2]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L080160C2:
    bx lr
    func_end GetItemSklBonus

    thumb_func_start GetItemSpdBonus
GetItemSpdBonus: @ 0x080160C4
    adds r1, r0, #0
    cmp r1, #0
    beq .L080160DE
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080160E4 @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    bne .L080160E8
.L080160DE:
    movs r0, #0
    b .L080160EE
    .align 2, 0
.L080160E4: .4byte 0x08BE222C
.L080160E8:
    ldrb r0, [r0, #3]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L080160EE:
    bx lr
    func_end GetItemSpdBonus

    thumb_func_start GetItemDefBonus
GetItemDefBonus: @ 0x080160F0
    adds r1, r0, #0
    cmp r1, #0
    beq .L0801610A
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016110 @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    bne .L08016114
.L0801610A:
    movs r0, #0
    b .L0801611A
    .align 2, 0
.L08016110: .4byte 0x08BE222C
.L08016114:
    ldrb r0, [r0, #4]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L0801611A:
    bx lr
    func_end GetItemDefBonus

    thumb_func_start GetItemResBonus
GetItemResBonus: @ 0x0801611C
    adds r1, r0, #0
    cmp r1, #0
    beq .L08016136
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801613C @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    bne .L08016140
.L08016136:
    movs r0, #0
    b .L08016146
    .align 2, 0
.L0801613C: .4byte 0x08BE222C
.L08016140:
    ldrb r0, [r0, #5]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L08016146:
    bx lr
    func_end GetItemResBonus

    thumb_func_start GetItemLckBonus
GetItemLckBonus: @ 0x08016148
    adds r1, r0, #0
    cmp r1, #0
    beq .L08016162
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016168 @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    bne .L0801616C
.L08016162:
    movs r0, #0
    b .L08016172
    .align 2, 0
.L08016168: .4byte 0x08BE222C
.L0801616C:
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L08016172:
    bx lr
    func_end GetItemLckBonus

    thumb_func_start CreateItem
CreateItem: @ 0x08016174
    adds r2, r0, #0
    movs r0, #0xff
    ands r2, r0
    lsls r0, r2, #3
    adds r0, r0, r2
    lsls r0, r0, #2
    ldr r1, .L080161A0 @ =0x08BE222C
    adds r3, r0, r1
    ldr r1, [r3, #8]
    movs r0, #8
    ands r1, r0
    movs r0, #0xff
    cmp r1, #0
    bne .L08016192
    ldrb r0, [r3, #0x14]
.L08016192:
    cmp r1, #0
    beq .L08016198
    movs r0, #0
.L08016198:
    lsls r0, r0, #8
    adds r0, r0, r2
    bx lr
    .align 2, 0
.L080161A0: .4byte 0x08BE222C
    func_end CreateItem

    thumb_func_start CanUnitUseWeapon
CanUnitUseWeapon: @ 0x080161A4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    cmp r5, #0
    bne .L080161B0
    b .L08016346
.L080161B0:
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08016300 @ =0x08BE222C
    adds r0, r0, r1
    ldr r2, [r0, #8]
    movs r0, #1
    ands r0, r2
    adds r3, r1, #0
    cmp r0, #0
    bne .L080161CC
    b .L08016346
.L080161CC:
    ldr r0, .L08016304 @ =0x003D3C00
    ands r0, r2
    cmp r0, #0
    bne .L080161D6
    b .L08016320
.L080161D6:
    movs r0, #0x80
    lsls r0, r0, #4
    ands r2, r0
    cmp r2, #0
    beq .L080161F6
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #9
    ands r0, r1
    cmp r0, #0
    bne .L080161F6
    b .L08016346
.L080161F6:
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r0, [r0, #8]
    movs r1, #0x80
    lsls r1, r1, #0xb
    ands r0, r1
    cmp r0, #0
    beq .L08016224
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0x15
    ands r0, r1
    cmp r0, #0
    bne .L08016224
    b .L08016346
.L08016224:
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r0, [r0, #8]
    movs r1, #0x80
    lsls r1, r1, #0xc
    ands r0, r1
    cmp r0, #0
    beq .L08016250
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0x16
    ands r0, r1
    cmp r0, #0
    beq .L08016346
.L08016250:
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r0, [r0, #8]
    movs r1, #0x80
    lsls r1, r1, #0xd
    ands r0, r1
    cmp r0, #0
    beq .L0801627C
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0x17
    ands r0, r1
    cmp r0, #0
    beq .L08016346
.L0801627C:
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r0, [r0, #8]
    movs r1, #0x80
    lsls r1, r1, #0xe
    ands r0, r1
    cmp r0, #0
    beq .L080162A2
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    cmp r0, #0
    bge .L08016346
.L080162A2:
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r0, [r0, #8]
    movs r1, #0x80
    lsls r1, r1, #5
    ands r0, r1
    cmp r0, #0
    beq .L080162CE
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0xa
    ands r0, r1
    cmp r0, #0
    beq .L08016346
.L080162CE:
    movs r0, #0xff
    ands r0, r5
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    adds r1, r1, r3
    ldr r1, [r1, #8]
    movs r0, #0x80
    lsls r0, r0, #3
    ands r0, r1
    cmp r0, #0
    beq .L08016308
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x80
    lsls r1, r1, #0xb
    ands r0, r1
    cmp r0, #0
    beq .L08016346
    movs r0, #1
    b .L08016378
    .align 2, 0
.L08016300: .4byte 0x08BE222C
.L08016304: .4byte 0x003D3C00
.L08016308:
    movs r0, #0x80
    lsls r0, r0, #9
    ands r1, r0
    cmp r1, #0
    beq .L08016320
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08017178
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08016346
.L08016320:
    adds r1, r4, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    ldr r3, .L0801634C @ =0x08BE222C
    cmp r0, #3
    bne .L08016350
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r0, [r0, #8]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    beq .L08016350
.L08016346:
    movs r0, #0
    b .L08016378
    .align 2, 0
.L0801634C: .4byte 0x08BE222C
.L08016350:
    movs r1, #0xff
    ands r1, r5
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldrb r2, [r0, #0x1c]
    movs r1, #0xff
    cmp r5, #0
    beq .L08016366
    ldrb r1, [r0, #7]
.L08016366:
    adds r0, r4, #0
    adds r0, #0x28
    adds r0, r0, r1
    movs r1, #0
    ldrb r0, [r0]
    cmp r0, r2
    blt .L08016376
    movs r1, #1
.L08016376:
    adds r0, r1, #0
.L08016378:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end CanUnitUseWeapon

    thumb_func_start CanUnitUseWeaponNow
CanUnitUseWeaponNow: @ 0x08016380
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    cmp r4, #0
    beq .L080163B6
    movs r1, #0xff
    ands r1, r4
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L080163BC @ =0x08BE222C
    adds r0, r0, r1
    ldr r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L080163B6
    movs r0, #2
    ands r1, r0
    cmp r1, #0
    beq .L080163C0
    adds r0, r5, #0
    bl func_0801878C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080163C0
.L080163B6:
    movs r0, #0
    b .L080163CC
    .align 2, 0
.L080163BC: .4byte 0x08BE222C
.L080163C0:
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L080163CC:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end CanUnitUseWeaponNow

    thumb_func_start CanUnitUseStaff
CanUnitUseStaff: @ 0x080163D4
    adds r3, r0, #0
    cmp r1, #0
    beq .L08016408
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801640C @ =0x08BE222C
    adds r2, r1, r0
    ldr r0, [r2, #8]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08016408
    adds r0, r3, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #2
    beq .L08016408
    cmp r1, #4
    beq .L08016408
    cmp r1, #3
    bne .L08016410
.L08016408:
    movs r0, #0
    b .L08016426
    .align 2, 0
.L0801640C: .4byte 0x08BE222C
.L08016410:
    adds r0, r3, #0
    adds r0, #0x28
    ldrb r1, [r2, #7]
    adds r0, r1, r0
    movs r1, #0
    ldrb r0, [r0]
    ldrb r2, [r2, #0x1c]
    cmp r0, r2
    blt .L08016424
    movs r1, #1
.L08016424:
    adds r0, r1, #0
.L08016426:
    bx lr
    func_end CanUnitUseStaff

    thumb_func_start func_08016428
func_08016428: @ 0x08016428
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    cmp r4, #0
    beq .L08016468
    movs r1, #0xff
    ands r1, r4
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08016464 @ =0x08BE222C
    adds r0, r0, r1
    ldr r0, [r0, #8]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08016468
    adds r0, r5, #0
    bl func_0801878C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08016468
    adds r0, r5, #0
    adds r1, r4, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L0801646A
    .align 2, 0
.L08016464: .4byte 0x08BE222C
.L08016468:
    movs r0, #0
.L0801646A:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08016428

    thumb_func_start func_08016470
func_08016470: @ 0x08016470
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r7, r3, #0
    movs r3, #0
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    mov r8, r2
    cmp r2, #0
    bne .L0801648A
    movs r3, #1
.L0801648A:
    adds r0, r5, #0
    movs r1, #0
    adds r2, r3, #0
    bl Text_SetParams
    movs r0, #0xff
    ands r0, r6
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080164F0 @ =0x08BE222C
    adds r4, r1, r0
    ldrh r0, [r4]
    bl DecodeMsg
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl func_08012F14
    adds r1, r0, #0
    adds r0, r5, #0
    bl Text_DrawString
    adds r1, r7, #4
    adds r0, r5, #0
    bl PutText
    adds r3, r7, #0
    adds r3, #0x16
    movs r5, #1
    mov r0, r8
    cmp r0, #0
    beq .L080164D0
    movs r5, #2
.L080164D0:
    ldr r0, [r4, #8]
    movs r1, #8
    ands r0, r1
    asrs r2, r6, #8
    cmp r0, #0
    beq .L080164DE
    movs r2, #0xff
.L080164DE:
    adds r0, r3, #0
    adds r1, r5, #0
    bl PutNumberOrBlank
    cmp r6, #0
    bne .L080164F4
    movs r1, #1
    rsbs r1, r1, #0
    b .L080164F6
    .align 2, 0
.L080164F0: .4byte 0x08BE222C
.L080164F4:
    ldrb r1, [r4, #0x1d]
.L080164F6:
    movs r2, #0x80
    lsls r2, r2, #7
    adds r0, r7, #0
    bl PutIcon
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08016470

    thumb_func_start func_0801650C
func_0801650C: @ 0x0801650C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    mov r8, r1
    adds r7, r3, #0
    movs r3, #0
    lsls r2, r2, #0x18
    asrs r6, r2, #0x18
    cmp r6, #0
    bne .L08016524
    movs r3, #1
.L08016524:
    adds r0, r4, #0
    movs r1, #0
    adds r2, r3, #0
    bl Text_SetParams
    movs r0, #0xff
    mov r1, r8
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080165C0 @ =0x08BE222C
    adds r5, r1, r0
    ldrh r0, [r5]
    bl DecodeMsg
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl func_08012F14
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    adds r1, r7, #4
    adds r0, r4, #0
    bl PutText
    movs r3, #0x14
    adds r3, r3, r7
    mov ip, r3
    movs r1, #1
    cmp r6, #0
    beq .L0801656C
    movs r1, #2
.L0801656C:
    ldr r0, [r5, #8]
    movs r4, #8
    ands r0, r4
    mov r3, r8
    asrs r2, r3, #8
    cmp r0, #0
    beq .L0801657C
    movs r2, #0xff
.L0801657C:
    mov r0, ip
    bl PutNumberOrBlank
    adds r3, r7, #0
    adds r3, #0x1a
    movs r1, #1
    cmp r6, #0
    beq .L0801658E
    movs r1, #2
.L0801658E:
    ldr r0, [r5, #8]
    ands r0, r4
    movs r2, #0xff
    cmp r0, #0
    bne .L0801659A
    ldrb r2, [r5, #0x14]
.L0801659A:
    adds r0, r3, #0
    bl PutNumberOrBlank
    adds r0, r7, #0
    adds r0, #0x16
    movs r1, #0
    cmp r6, #0
    bne .L080165AC
    movs r1, #1
.L080165AC:
    movs r2, #0x16
    bl PutSpecialChar
    mov r0, r8
    cmp r0, #0
    bne .L080165C4
    movs r1, #1
    rsbs r1, r1, #0
    b .L080165C6
    .align 2, 0
.L080165C0: .4byte 0x08BE222C
.L080165C4:
    ldrb r1, [r5, #0x1d]
.L080165C6:
    movs r2, #0x80
    lsls r2, r2, #7
    adds r0, r7, #0
    bl PutIcon
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0801650C

    thumb_func_start func_080165DC
func_080165DC: @ 0x080165DC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    movs r1, #0
    bl Text_SetCursor
    movs r0, #0xff
    ands r0, r6
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801664C @ =0x08BE222C
    adds r5, r1, r0
    ldrh r0, [r5]
    bl DecodeMsg
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl func_08012F14
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    adds r1, r7, #4
    adds r0, r4, #0
    bl PutText
    movs r0, #0x16
    adds r0, r0, r7
    mov r8, r0
    adds r0, r4, #0
    bl Text_GetColor
    adds r3, r0, #0
    ldr r0, [r5, #8]
    movs r1, #8
    ands r0, r1
    asrs r2, r6, #8
    cmp r0, #0
    beq .L08016638
    movs r2, #0xff
.L08016638:
    mov r0, r8
    adds r1, r3, #0
    bl PutNumberOrBlank
    cmp r6, #0
    bne .L08016650
    movs r1, #1
    rsbs r1, r1, #0
    b .L08016652
    .align 2, 0
.L0801664C: .4byte 0x08BE222C
.L08016650:
    ldrb r1, [r5, #0x1d]
.L08016652:
    movs r2, #0x80
    lsls r2, r2, #7
    adds r0, r7, #0
    bl PutIcon
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080165DC

    thumb_func_start func_08016668
func_08016668: @ 0x08016668
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    mov sb, r1
    adds r6, r2, #0
    adds r7, r3, #0
    bl ClearText
    adds r4, r6, #0
    mov r0, r8
    adds r1, r4, #0
    bl Text_SetColor
    movs r0, #0xff
    mov r1, sb
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016714 @ =0x08BE222C
    adds r5, r1, r0
    ldrh r0, [r5]
    bl DecodeMsg
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl func_08012F14
    adds r1, r0, #0
    mov r0, r8
    bl Text_DrawString
    movs r4, #0
    cmp r6, #1
    bne .L080166B6
    movs r4, #1
.L080166B6:
    adds r0, r7, #0
    adds r0, #0x18
    adds r1, r4, #0
    movs r2, #0x16
    bl PutSpecialChar
    movs r4, #1
    cmp r6, #1
    beq .L080166CA
    movs r4, #2
.L080166CA:
    adds r1, r7, #0
    adds r1, #0x16
    ldr r0, [r5, #8]
    movs r6, #8
    ands r0, r6
    mov r3, sb
    asrs r2, r3, #8
    cmp r0, #0
    beq .L080166DE
    movs r2, #0xff
.L080166DE:
    adds r0, r1, #0
    adds r1, r4, #0
    bl PutNumberOrBlank
    adds r1, r7, #0
    adds r1, #0x1c
    ldr r0, [r5, #8]
    ands r0, r6
    movs r2, #0xff
    cmp r0, #0
    bne .L080166F6
    ldrb r2, [r5, #0x14]
.L080166F6:
    adds r0, r1, #0
    adds r1, r4, #0
    bl PutNumberOrBlank
    adds r1, r7, #4
    mov r0, r8
    bl PutText
    mov r0, sb
    cmp r0, #0
    bne .L08016718
    movs r1, #1
    rsbs r1, r1, #0
    b .L0801671A
    .align 2, 0
.L08016714: .4byte 0x08BE222C
.L08016718:
    ldrb r1, [r5, #0x1d]
.L0801671A:
    movs r2, #0x80
    lsls r2, r2, #7
    adds r0, r7, #0
    bl PutIcon
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08016668

    thumb_func_start GetItemAfterUse
GetItemAfterUse: @ 0x08016730
    adds r2, r0, #0
    movs r1, #0xff
    ands r1, r2
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08016758 @ =0x08BE222C
    adds r0, r0, r1
    ldr r0, [r0, #8]
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    bne .L08016752
    ldr r0, .L0801675C @ =0xFFFFFF00
    adds r2, r2, r0
    cmp r2, #0xff
    ble .L08016760
.L08016752:
    lsls r0, r2, #0x10
    lsrs r0, r0, #0x10
    b .L08016762
    .align 2, 0
.L08016758: .4byte 0x08BE222C
.L0801675C: .4byte 0xFFFFFF00
.L08016760:
    movs r0, #0
.L08016762:
    bx lr
    func_end GetItemAfterUse

    thumb_func_start GetUnitEquippedWeapon
GetUnitEquippedWeapon: @ 0x08016764
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r5, #0
.L0801676A:
    lsls r1, r5, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r4, r0, r1
    ldrh r1, [r4]
    adds r0, r6, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08016786
    ldrh r0, [r4]
    b .L0801678E
.L08016786:
    adds r5, #1
    cmp r5, #4
    ble .L0801676A
    movs r0, #0
.L0801678E:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end GetUnitEquippedWeapon

    thumb_func_start GetUnitEquippedWeaponSlot
GetUnitEquippedWeaponSlot: @ 0x08016794
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
.L0801679A:
    lsls r1, r4, #1
    adds r0, r5, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r1, [r0]
    adds r0, r5, #0
    bl CanUnitUseWeaponNow
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080167B6
    adds r0, r4, #0
    b .L080167C0
.L080167B6:
    adds r4, #1
    cmp r4, #4
    ble .L0801679A
    movs r0, #1
    rsbs r0, r0, #0
.L080167C0:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end GetUnitEquippedWeaponSlot

    thumb_func_start CanItemReachDistance
CanItemReachDistance: @ 0x080167C8
    adds r3, r1, #0
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080167EC @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x19]
    lsrs r1, r0, #4
    movs r2, #0xf
    ands r2, r0
    cmp r1, r3
    bgt .L080167F0
    cmp r3, r2
    bgt .L080167F0
    movs r0, #1
    b .L080167F2
    .align 2, 0
.L080167EC: .4byte 0x08BE222C
.L080167F0:
    movs r0, #0
.L080167F2:
    bx lr
    func_end CanItemReachDistance

    thumb_func_start UnitEquipItemSlot
UnitEquipItemSlot: @ 0x080167F4
    push {r4, r5, lr}
    adds r3, r0, #0
    lsls r4, r1, #1
    adds r0, #0x1e
    adds r0, r0, r4
    ldrh r5, [r0]
    adds r2, r1, #0
    cmp r2, #0
    beq .L08016818
    adds r0, r4, #0
    adds r0, #0x1c
    adds r1, r0, r3
.L0801680C:
    ldrh r0, [r1]
    strh r0, [r1, #2]
    subs r1, #2
    subs r2, #1
    cmp r2, #0
    bne .L0801680C
.L08016818:
    strh r5, [r3, #0x1e]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end UnitEquipItemSlot

    thumb_func_start IsItemEffectiveAgainst
IsItemEffectiveAgainst: @ 0x08016820
    push {r4, r5, r6, r7, lr}
    adds r7, r1, #0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    ldr r0, [r7, #4]
    ldrb r3, [r0, #4]
    movs r1, #0xff
    ands r1, r4
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08016844 @ =0x08BE222C
    adds r0, r0, r1
    ldr r2, [r0, #0x10]
    adds r5, r1, #0
    cmp r2, #0
    beq .L080168A4
    b .L08016850
    .align 2, 0
.L08016844: .4byte 0x08BE222C
.L08016848:
    ldrb r0, [r2]
    cmp r0, r3
    beq .L08016858
    adds r2, #1
.L08016850:
    ldrb r0, [r2]
    cmp r0, #0
    bne .L08016848
    b .L080168A4
.L08016858:
    movs r1, #0xff
    ands r1, r4
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r1, [r0, #0x10]
    ldr r0, .L080168A0 @ =0x08C97ED2
    cmp r1, r0
    bne .L0801689A
    movs r3, #0
    movs r6, #0xff
    adds r2, r7, #0
    adds r2, #0x1e
    movs r4, #4
.L08016876:
    adds r0, r6, #0
    ldrh r1, [r2]
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    adds r1, r1, r5
    ldr r0, [r1, #8]
    orrs r3, r0
    adds r2, #2
    subs r4, #1
    cmp r4, #0
    bge .L08016876
    movs r0, #0x80
    lsls r0, r0, #7
    ands r3, r0
    cmp r3, #0
    bne .L080168A4
.L0801689A:
    movs r0, #1
    b .L080168A6
    .align 2, 0
.L080168A0: .4byte 0x08C97ED2
.L080168A4:
    movs r0, #0
.L080168A6:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end IsItemEffectiveAgainst

    thumb_func_start GetItemRangeString
GetItemRangeString: @ 0x080168AC
    push {r4, r5, lr}
    sub sp, #0x28
    mov r2, sp
    ldr r1, .L080168EC @ =0x081C3AF0
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldr r1, [r1]
    str r1, [r2]
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080168F0 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x19]
    adds r1, r0, #0
    cmp r0, #0x22
    beq .L08016926
    cmp r0, #0x22
    bgt .L080168FE
    cmp r0, #0x11
    beq .L0801691A
    cmp r0, #0x11
    bgt .L080168F4
    cmp r0, #0x10
    beq .L08016916
    b .L0801693A
    .align 2, 0
.L080168EC: .4byte 0x081C3AF0
.L080168F0: .4byte 0x08BE222C
.L080168F4:
    cmp r0, #0x12
    beq .L0801691E
    cmp r0, #0x13
    beq .L08016922
    b .L0801693A
.L080168FE:
    cmp r0, #0x3a
    beq .L0801692E
    cmp r0, #0x3a
    bgt .L0801690C
    cmp r0, #0x23
    beq .L0801692A
    b .L0801693A
.L0801690C:
    cmp r1, #0x3f
    beq .L08016932
    cmp r1, #0xff
    beq .L08016936
    b .L0801693A
.L08016916:
    ldr r0, [sp]
    b .L0801693C
.L0801691A:
    ldr r0, [sp, #4]
    b .L0801693C
.L0801691E:
    ldr r0, [sp, #8]
    b .L0801693C
.L08016922:
    ldr r0, [sp, #0xc]
    b .L0801693C
.L08016926:
    ldr r0, [sp, #0x10]
    b .L0801693C
.L0801692A:
    ldr r0, [sp, #0x14]
    b .L0801693C
.L0801692E:
    ldr r0, [sp, #0x18]
    b .L0801693C
.L08016932:
    ldr r0, [sp, #0x1c]
    b .L0801693C
.L08016936:
    ldr r0, [sp, #0x20]
    b .L0801693C
.L0801693A:
    ldr r0, [sp, #0x24]
.L0801693C:
    bl DecodeMsg
    add sp, #0x28
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end GetItemRangeString

    thumb_func_start GetWeaponLevelFromExp
GetWeaponLevelFromExp: @ 0x08016948
    cmp r0, #0
    bgt .L08016950
    movs r0, #0
    b .L0801697A
.L08016950:
    cmp r0, #0x1e
    bgt .L08016958
    movs r0, #1
    b .L0801697A
.L08016958:
    cmp r0, #0x46
    bgt .L08016960
    movs r0, #2
    b .L0801697A
.L08016960:
    cmp r0, #0x78
    bgt .L08016968
    movs r0, #3
    b .L0801697A
.L08016968:
    cmp r0, #0xb4
    bgt .L08016970
    movs r0, #4
    b .L0801697A
.L08016970:
    cmp r0, #0xfa
    ble .L08016978
    movs r0, #6
    b .L0801697A
.L08016978:
    movs r0, #5
.L0801697A:
    bx lr
    func_end GetWeaponLevelFromExp

    thumb_func_start GetWeaponLevelStringFromExp
GetWeaponLevelStringFromExp: @ 0x0801697C
    push {r4, r5, lr}
    sub sp, #0x20
    mov r2, sp
    ldr r1, .L080169B8 @ =0x081C3B18
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4}
    stm r2!, {r3, r4}
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080169BC @ =0x08BE222C
    adds r1, r1, r0
    ldrb r4, [r1, #0x1c]
    ldr r0, [r1, #8]
    ldr r1, .L080169C0 @ =0x003D3C00
    ands r0, r1
    cmp r0, #0
    beq .L080169C4
    adds r0, r4, #0
    bl GetWeaponLevelFromExp
    cmp r0, #0
    bne .L080169C4
    movs r4, #7
    b .L080169CC
    .align 2, 0
.L080169B8: .4byte 0x081C3B18
.L080169BC: .4byte 0x08BE222C
.L080169C0: .4byte 0x003D3C00
.L080169C4:
    adds r0, r4, #0
    bl GetWeaponLevelFromExp
    adds r4, r0, #0
.L080169CC:
    lsls r0, r4, #2
    add r0, sp
    ldr r0, [r0]
    bl DecodeMsg
    add sp, #0x20
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end GetWeaponLevelStringFromExp

    thumb_func_start GetWeaponLevelSpecialCharFromExp
GetWeaponLevelSpecialCharFromExp: @ 0x080169E0
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r1, .L08016A04 @ =0x081C3B38
    mov r0, sp
    movs r2, #7
    bl memcpy
    adds r0, r4, #0
    bl GetWeaponLevelFromExp
    add r0, sp
    ldrb r0, [r0]
    add sp, #8
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08016A04: .4byte 0x081C3B38
    func_end GetWeaponLevelSpecialCharFromExp

    thumb_func_start GetItemKindString
GetItemKindString: @ 0x08016A08
    push {r4, r5, lr}
    sub sp, #0x2c
    mov r2, sp
    ldr r1, .L08016A34 @ =0x081C3B40
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldm r1!, {r3, r4}
    stm r2!, {r3, r4}
    lsls r0, r0, #2
    add r0, sp
    ldr r0, [r0]
    bl DecodeMsg
    add sp, #0x2c
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08016A34: .4byte 0x081C3B40
    func_end GetItemKindString

    thumb_func_start func_08016A38
func_08016A38: @ 0x08016A38
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r6, r2, #0
    bl GetWeaponLevelFromExp
    cmp r0, #6
    bhi .L08016AAA
    lsls r0, r0, #2
    ldr r1, .L08016A54 @ =.L08016A58
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08016A54: .4byte .L08016A58
.L08016A58: @ jump table
    .4byte .L08016AA4 @ case 0
    .4byte .L08016A74 @ case 1
    .4byte .L08016A7C @ case 2
    .4byte .L08016A86 @ case 3
    .4byte .L08016A90 @ case 4
    .4byte .L08016A9A @ case 5
    .4byte .L08016AA4 @ case 6
.L08016A74:
    subs r0, r5, #1
    str r0, [r4]
    movs r0, #0x1e
    b .L08016AA8
.L08016A7C:
    adds r0, r5, #0
    subs r0, #0x1f
    str r0, [r4]
    movs r0, #0x28
    b .L08016AA8
.L08016A86:
    adds r0, r5, #0
    subs r0, #0x47
    str r0, [r4]
    movs r0, #0x32
    b .L08016AA8
.L08016A90:
    adds r0, r5, #0
    subs r0, #0x79
    str r0, [r4]
    movs r0, #0x3c
    b .L08016AA8
.L08016A9A:
    adds r0, r5, #0
    subs r0, #0xb5
    str r0, [r4]
    movs r0, #0x46
    b .L08016AA8
.L08016AA4:
    movs r0, #0
    str r0, [r4]
.L08016AA8:
    str r0, [r6]
.L08016AAA:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08016A38

    thumb_func_start IsItemDisplayUseable
IsItemDisplayUseable: @ 0x08016AB0
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r2, r1, #0
    movs r5, #0xff
    ands r5, r2
    lsls r0, r5, #3
    adds r0, r0, r5
    lsls r0, r0, #2
    ldr r1, .L08016AD8 @ =0x08BE222C
    adds r4, r0, r1
    ldr r1, [r4, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L08016ADC
    adds r0, r3, #0
    adds r1, r2, #0
    bl CanUnitUseWeapon
    b .L08016AEC
    .align 2, 0
.L08016AD8: .4byte 0x08BE222C
.L08016ADC:
    movs r0, #4
    ands r1, r0
    cmp r1, #0
    beq .L08016AF2
    adds r0, r3, #0
    adds r1, r2, #0
    bl CanUnitUseStaff
.L08016AEC:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L08016B26
.L08016AF2:
    ldrb r0, [r4, #0x1e]
    cmp r0, #0
    beq .L08016B24
    adds r0, r3, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #2
    beq .L08016B20
    cmp r1, #4
    beq .L08016B20
    ldr r0, [r3]
    ldr r1, [r3, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    bne .L08016B24
    cmp r5, #0x6a
    bne .L08016B24
.L08016B20:
    movs r0, #0
    b .L08016B26
.L08016B24:
    movs r0, #1
.L08016B26:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end IsItemDisplayUseable

    thumb_func_start func_08016B2C
func_08016B2C: @ 0x08016B2C
    push {lr}
    adds r3, r0, #0
    adds r2, r1, #0
    movs r1, #0xff
    ands r1, r2
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08016B54 @ =0x08BE222C
    adds r0, r0, r1
    ldr r0, [r0, #8]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L08016B58
    adds r0, r3, #0
    adds r1, r2, #0
    bl func_08026CD0
    b .L08016B60
    .align 2, 0
.L08016B54: .4byte 0x08BE222C
.L08016B58:
    adds r0, r3, #0
    adds r1, r2, #0
    bl CanUnitUseWeapon
.L08016B60:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08016B2C

    thumb_func_start GetUnitItemHealAmount
GetUnitItemHealAmount: @ 0x08016B68
    push {r4, lr}
    adds r3, r0, #0
    adds r2, r1, #0
    movs r4, #0
    movs r0, #0xff
    ands r0, r2
    subs r0, #0x4a
    cmp r0, #0x50
    bls .L08016B7C
    b .L08016CDA
.L08016B7C:
    lsls r0, r0, #2
    ldr r1, .L08016B88 @ =.L08016B8C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08016B88: .4byte .L08016B8C
.L08016B8C: @ jump table
    .4byte .L08016CD0 @ case 0
    .4byte .L08016CD4 @ case 1
    .4byte .L08016CD8 @ case 2
    .4byte .L08016CD0 @ case 3
    .4byte .L08016CD0 @ case 4
    .4byte .L08016CDA @ case 5
    .4byte .L08016CDA @ case 6
    .4byte .L08016CDA @ case 7
    .4byte .L08016CDA @ case 8
    .4byte .L08016CDA @ case 9
    .4byte .L08016CDA @ case 10
    .4byte .L08016CDA @ case 11
    .4byte .L08016CDA @ case 12
    .4byte .L08016CDA @ case 13
    .4byte .L08016CDA @ case 14
    .4byte .L08016CDA @ case 15
    .4byte .L08016CDA @ case 16
    .4byte .L08016CDA @ case 17
    .4byte .L08016CDA @ case 18
    .4byte .L08016CDA @ case 19
    .4byte .L08016CDA @ case 20
    .4byte .L08016CDA @ case 21
    .4byte .L08016CDA @ case 22
    .4byte .L08016CDA @ case 23
    .4byte .L08016CDA @ case 24
    .4byte .L08016CDA @ case 25
    .4byte .L08016CDA @ case 26
    .4byte .L08016CDA @ case 27
    .4byte .L08016CDA @ case 28
    .4byte .L08016CDA @ case 29
    .4byte .L08016CDA @ case 30
    .4byte .L08016CDA @ case 31
    .4byte .L08016CDA @ case 32
    .4byte .L08016CD0 @ case 33
    .4byte .L08016CD8 @ case 34
    .4byte .L08016CDA @ case 35
    .4byte .L08016CDA @ case 36
    .4byte .L08016CDA @ case 37
    .4byte .L08016CDA @ case 38
    .4byte .L08016CDA @ case 39
    .4byte .L08016CDA @ case 40
    .4byte .L08016CDA @ case 41
    .4byte .L08016CDA @ case 42
    .4byte .L08016CDA @ case 43
    .4byte .L08016CDA @ case 44
    .4byte .L08016CDA @ case 45
    .4byte .L08016CDA @ case 46
    .4byte .L08016CDA @ case 47
    .4byte .L08016CDA @ case 48
    .4byte .L08016CDA @ case 49
    .4byte .L08016CDA @ case 50
    .4byte .L08016CDA @ case 51
    .4byte .L08016CDA @ case 52
    .4byte .L08016CDA @ case 53
    .4byte .L08016CDA @ case 54
    .4byte .L08016CDA @ case 55
    .4byte .L08016CDA @ case 56
    .4byte .L08016CDA @ case 57
    .4byte .L08016CDA @ case 58
    .4byte .L08016CDA @ case 59
    .4byte .L08016CDA @ case 60
    .4byte .L08016CDA @ case 61
    .4byte .L08016CDA @ case 62
    .4byte .L08016CDA @ case 63
    .4byte .L08016CDA @ case 64
    .4byte .L08016CDA @ case 65
    .4byte .L08016CDA @ case 66
    .4byte .L08016CDA @ case 67
    .4byte .L08016CDA @ case 68
    .4byte .L08016CDA @ case 69
    .4byte .L08016CDA @ case 70
    .4byte .L08016CDA @ case 71
    .4byte .L08016CDA @ case 72
    .4byte .L08016CDA @ case 73
    .4byte .L08016CDA @ case 74
    .4byte .L08016CDA @ case 75
    .4byte .L08016CDA @ case 76
    .4byte .L08016CDA @ case 77
    .4byte .L08016CDA @ case 78
    .4byte .L08016CDA @ case 79
    .4byte .L08016CD0 @ case 80
.L08016CD0:
    movs r4, #0xa
    b .L08016CDA
.L08016CD4:
    movs r4, #0x14
    b .L08016CDA
.L08016CD8:
    movs r4, #0x50
.L08016CDA:
    movs r1, #0xff
    ands r1, r2
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08016D08 @ =0x08BE222C
    adds r0, r0, r1
    ldr r0, [r0, #8]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L08016D00
    adds r0, r3, #0
    bl GetUnitPower
    adds r4, r4, r0
    cmp r4, #0x50
    ble .L08016D00
    movs r4, #0x50
.L08016D00:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08016D08: .4byte 0x08BE222C
    func_end GetUnitItemHealAmount

    thumb_func_start FindUnitItemSlot
FindUnitItemSlot: @ 0x08016D0C
    push {r4, r5, lr}
    movs r3, #0
    movs r4, #0xff
    adds r2, r0, #0
    adds r2, #0x1e
.L08016D16:
    adds r0, r4, #0
    ldrh r5, [r2]
    ands r0, r5
    cmp r0, r1
    bne .L08016D24
    adds r0, r3, #0
    b .L08016D30
.L08016D24:
    adds r2, #2
    adds r3, #1
    cmp r3, #4
    ble .L08016D16
    movs r0, #1
    rsbs r0, r0, #0
.L08016D30:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end FindUnitItemSlot

    thumb_func_start IsItemStealable
IsItemStealable: @ 0x08016D38
    adds r1, r0, #0
    cmp r1, #0
    bne .L08016D42
    movs r1, #0xff
    b .L08016D52
.L08016D42:
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016D5C @ =0x08BE222C
    adds r1, r1, r0
    ldrb r1, [r1, #7]
.L08016D52:
    movs r0, #0
    cmp r1, #9
    bne .L08016D5A
    movs r0, #1
.L08016D5A:
    bx lr
    .align 2, 0
.L08016D5C: .4byte 0x08BE222C
    func_end IsItemStealable

    thumb_func_start IsItemRepairable
IsItemRepairable: @ 0x08016D60
    push {r4, lr}
    adds r4, r0, #0
    cmp r4, #0
    beq .L08016DAC
    movs r0, #0xff
    ands r0, r4
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016DA8 @ =0x08BE222C
    adds r1, r1, r0
    ldr r2, [r1, #8]
    movs r0, #5
    ands r0, r2
    cmp r0, #0
    beq .L08016DAC
    movs r0, #0xc1
    lsls r0, r0, #3
    ands r0, r2
    cmp r0, #0
    bne .L08016DAC
    movs r3, #8
    ands r3, r2
    asrs r0, r4, #8
    cmp r3, #0
    beq .L08016D96
    movs r0, #0xff
.L08016D96:
    movs r2, #0xff
    cmp r3, #0
    bne .L08016D9E
    ldrb r2, [r1, #0x14]
.L08016D9E:
    cmp r0, r2
    beq .L08016DAC
    movs r0, #1
    b .L08016DAE
    .align 2, 0
.L08016DA8: .4byte 0x08BE222C
.L08016DAC:
    movs r0, #0
.L08016DAE:
    pop {r4}
    pop {r1}
    bx r1
    func_end IsItemRepairable

    thumb_func_start GetItemReach
GetItemReach: @ 0x08016DB4
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016DD4 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x19]
    subs r0, #0x11
    cmp r0, #0x2e
    bhi .L08016EB8
    lsls r0, r0, #2
    ldr r1, .L08016DD8 @ =.L08016DDC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08016DD4: .4byte 0x08BE222C
.L08016DD8: .4byte .L08016DDC
.L08016DDC: @ jump table
    .4byte .L08016E98 @ case 0
    .4byte .L08016E9C @ case 1
    .4byte .L08016EA0 @ case 2
    .4byte .L08016EB8 @ case 3
    .4byte .L08016EB8 @ case 4
    .4byte .L08016EB8 @ case 5
    .4byte .L08016EB8 @ case 6
    .4byte .L08016EB8 @ case 7
    .4byte .L08016EB8 @ case 8
    .4byte .L08016EB8 @ case 9
    .4byte .L08016EB8 @ case 10
    .4byte .L08016EB8 @ case 11
    .4byte .L08016EB8 @ case 12
    .4byte .L08016EB8 @ case 13
    .4byte .L08016EB8 @ case 14
    .4byte .L08016EB8 @ case 15
    .4byte .L08016EB8 @ case 16
    .4byte .L08016EA4 @ case 17
    .4byte .L08016EA8 @ case 18
    .4byte .L08016EB8 @ case 19
    .4byte .L08016EB8 @ case 20
    .4byte .L08016EB8 @ case 21
    .4byte .L08016EB8 @ case 22
    .4byte .L08016EB8 @ case 23
    .4byte .L08016EB8 @ case 24
    .4byte .L08016EB8 @ case 25
    .4byte .L08016EB8 @ case 26
    .4byte .L08016EB8 @ case 27
    .4byte .L08016EB8 @ case 28
    .4byte .L08016EB8 @ case 29
    .4byte .L08016EB8 @ case 30
    .4byte .L08016EB8 @ case 31
    .4byte .L08016EB8 @ case 32
    .4byte .L08016EB8 @ case 33
    .4byte .L08016EAC @ case 34
    .4byte .L08016EB8 @ case 35
    .4byte .L08016EB8 @ case 36
    .4byte .L08016EB8 @ case 37
    .4byte .L08016EB8 @ case 38
    .4byte .L08016EB8 @ case 39
    .4byte .L08016EB8 @ case 40
    .4byte .L08016EB0 @ case 41
    .4byte .L08016EB8 @ case 42
    .4byte .L08016EB8 @ case 43
    .4byte .L08016EB8 @ case 44
    .4byte .L08016EB8 @ case 45
    .4byte .L08016EB4 @ case 46
.L08016E98:
    movs r0, #1
    b .L08016EBA
.L08016E9C:
    movs r0, #3
    b .L08016EBA
.L08016EA0:
    movs r0, #7
    b .L08016EBA
.L08016EA4:
    movs r0, #2
    b .L08016EBA
.L08016EA8:
    movs r0, #6
    b .L08016EBA
.L08016EAC:
    movs r0, #4
    b .L08016EBA
.L08016EB0:
    movs r0, #0xc
    b .L08016EBA
.L08016EB4:
    movs r0, #0x14
    b .L08016EBA
.L08016EB8:
    movs r0, #0
.L08016EBA:
    bx lr
    func_end GetItemReach

    thumb_func_start GetUnitWeaponReach
GetUnitWeaponReach: @ 0x08016EBC
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    movs r7, #0
    cmp r1, #0
    blt .L08016ED4
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r0, [r0]
    bl GetItemReach
    b .L08016F08
.L08016ED4:
    movs r5, #0
    ldrh r4, [r6, #0x1e]
    cmp r4, #0
    beq .L08016F06
.L08016EDC:
    adds r0, r6, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08016EF2
    adds r0, r4, #0
    bl GetItemReach
    orrs r7, r0
.L08016EF2:
    adds r5, #1
    cmp r5, #4
    bgt .L08016F06
    lsls r1, r5, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L08016EDC
.L08016F06:
    adds r0, r7, #0
.L08016F08:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end GetUnitWeaponReach

    thumb_func_start GetUnitItemUseReach
GetUnitItemUseReach: @ 0x08016F10
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    movs r6, #0
    cmp r1, #0
    blt .L08016F54
    lsls r0, r1, #1
    adds r1, r5, #0
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r4, [r1]
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08016FC2
    movs r0, #0xff
    ands r0, r4
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016F50 @ =0x08BE222C
    adds r1, r1, r0
    movs r6, #0xf
    ldrb r1, [r1, #0x19]
    ands r6, r1
    cmp r6, #0
    bne .L08016F9E
    movs r6, #0x63
    b .L08016F9E
    .align 2, 0
.L08016F50: .4byte 0x08BE222C
.L08016F54:
    movs r7, #0
    ldrh r4, [r5, #0x1e]
    cmp r4, #0
    beq .L08016F9E
.L08016F5C:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08026CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08016F8A
    movs r0, #0xff
    ands r0, r4
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08016FAC @ =0x08BE222C
    adds r1, r1, r0
    movs r4, #0xf
    ldrb r1, [r1, #0x19]
    ands r4, r1
    cmp r4, #0
    bne .L08016F84
    movs r4, #0x63
.L08016F84:
    cmp r6, r4
    bge .L08016F8A
    adds r6, r4, #0
.L08016F8A:
    adds r7, #1
    cmp r7, #4
    bgt .L08016F9E
    lsls r1, r7, #1
    adds r0, r5, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L08016F5C
.L08016F9E:
    cmp r6, #2
    beq .L08016FBA
    cmp r6, #2
    bgt .L08016FB0
    cmp r6, #1
    beq .L08016FB6
    b .L08016FC2
    .align 2, 0
.L08016FAC: .4byte 0x08BE222C
.L08016FB0:
    cmp r6, #0x63
    beq .L08016FBE
    b .L08016FC2
.L08016FB6:
    movs r0, #1
    b .L08016FC4
.L08016FBA:
    movs r0, #3
    b .L08016FC4
.L08016FBE:
    movs r0, #0x20
    b .L08016FC4
.L08016FC2:
    movs r0, #0
.L08016FC4:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end GetUnitItemUseReach

    thumb_func_start GetUnitStaffReach
GetUnitStaffReach: @ 0x08016FCC
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    movs r6, #0
    movs r5, #0
    ldrh r4, [r7, #0x1e]
    cmp r4, #0
    beq .L0801701C
.L08016FDA:
    adds r0, r7, #0
    adds r1, r4, #0
    bl CanUnitUseStaff
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08017008
    movs r0, #0xff
    ands r0, r4
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801702C @ =0x08BE222C
    adds r1, r1, r0
    movs r4, #0xf
    ldrb r1, [r1, #0x19]
    ands r4, r1
    cmp r4, #0
    bne .L08017002
    movs r4, #0x63
.L08017002:
    cmp r6, r4
    bge .L08017008
    adds r6, r4, #0
.L08017008:
    adds r5, #1
    cmp r5, #4
    bgt .L0801701C
    lsls r1, r5, #1
    adds r0, r7, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L08016FDA
.L0801701C:
    cmp r6, #2
    beq .L0801703A
    cmp r6, #2
    bgt .L08017030
    cmp r6, #1
    beq .L08017036
    b .L08017042
    .align 2, 0
.L0801702C: .4byte 0x08BE222C
.L08017030:
    cmp r6, #0x63
    beq .L0801703E
    b .L08017042
.L08017036:
    movs r0, #1
    b .L08017044
.L0801703A:
    movs r0, #3
    b .L08017044
.L0801703E:
    movs r0, #0x20
    b .L08017044
.L08017042:
    movs r0, #0
.L08017044:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end GetUnitStaffReach

    thumb_func_start func_0801704C
func_0801704C: @ 0x0801704C
    push {r4, r5, r6, r7, lr}
    movs r6, #0
    bl func_0802E700
    adds r3, r0, #0
    movs r5, #0
    ldrh r0, [r3]
    cmp r0, #0
    beq .L08017096
    ldr r7, .L0801707C @ =0x08BE222C
.L08017060:
    ldrh r4, [r3]
    ldrb r1, [r3]
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r2, r0, r7
    ldr r0, [r2, #8]
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq .L08017080
    ldrh r0, [r2, #0x1a]
    b .L08017086
    .align 2, 0
.L0801707C: .4byte 0x08BE222C
.L08017080:
    asrs r0, r4, #8
    ldrh r2, [r2, #0x1a]
    muls r0, r2, r0
.L08017086:
    adds r6, r6, r0
    adds r3, #2
    adds r5, #1
    cmp r5, #0x63
    bgt .L08017096
    ldrh r0, [r3]
    cmp r0, #0
    bne .L08017060
.L08017096:
    adds r0, r6, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0801704C

    thumb_func_start func_080170A0
func_080170A0: @ 0x080170A0
    push {r4, r5, r6, r7, lr}
    movs r5, #0
    movs r4, #1
.L080170A6:
    adds r0, r4, #0
    bl GetUnit
    mov ip, r0
    adds r6, r4, #1
    cmp r0, #0
    beq .L08017110
    ldr r0, [r0]
    cmp r0, #0
    beq .L08017110
    mov r1, ip
    ldr r0, [r1, #0xc]
    ldr r1, .L080170EC @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L08017110
    movs r4, #0
    mov r0, ip
    ldrh r3, [r0, #0x1e]
    cmp r3, #0
    beq .L08017110
    ldr r7, .L080170F0 @ =0x08BE222C
.L080170D2:
    movs r1, #0xff
    ands r1, r3
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r2, r0, r7
    ldr r0, [r2, #8]
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq .L080170F4
    ldrh r0, [r2, #0x1a]
    b .L080170FA
    .align 2, 0
.L080170EC: .4byte 0x00010004
.L080170F0: .4byte 0x08BE222C
.L080170F4:
    asrs r0, r3, #8
    ldrh r2, [r2, #0x1a]
    muls r0, r2, r0
.L080170FA:
    adds r5, r5, r0
    adds r4, #1
    cmp r4, #4
    bgt .L08017110
    lsls r1, r4, #1
    mov r0, ip
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r3, [r0]
    cmp r3, #0
    bne .L080170D2
.L08017110:
    adds r4, r6, #0
    cmp r4, #0x3f
    ble .L080170A6
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080170A0

    thumb_func_start func_08017120
func_08017120: @ 0x08017120
    push {r4, lr}
    bl func_0801704C
    adds r4, r0, #0
    bl func_080170A0
    adds r4, r4, r0
    bl GetGold
    adds r4, r4, r0
    ldr r0, .L08017144 @ =0x0098967F
    cmp r4, r0
    ble .L0801713C
    adds r4, r0, #0
.L0801713C:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08017144: .4byte 0x0098967F
    func_end func_08017120

    thumb_func_start BreakItemSealForPid
BreakItemSealForPid: @ 0x08017148
    adds r2, r0, #0
    lsls r1, r1, #0x18
    lsrs r3, r1, #0x18
    cmp r2, #0
    bne .L08017156
    movs r1, #0xff
    b .L08017166
.L08017156:
    movs r0, #0xff
    ands r0, r2
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017170 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r1, [r1, #7]
.L08017166:
    ldr r0, .L08017174 @ =gPlaySt
    adds r0, #0x1c
    adds r0, r1, r0
    strb r3, [r0]
    bx lr
    .align 2, 0
.L08017170: .4byte 0x08BE222C
.L08017174: .4byte gPlaySt
    func_end BreakItemSealForPid

    thumb_func_start func_08017178
func_08017178: @ 0x08017178
    adds r3, r0, #0
    cmp r1, #0
    bne .L08017182
    movs r1, #0xff
    b .L08017192
.L08017182:
    movs r0, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080171AC @ =0x08BE222C
    adds r1, r1, r0
    ldrb r1, [r1, #7]
.L08017192:
    ldr r0, .L080171B0 @ =gPlaySt
    adds r0, #0x1c
    adds r0, r1, r0
    movs r2, #0
    ldr r1, [r3]
    ldrb r0, [r0]
    ldrb r1, [r1, #4]
    cmp r0, r1
    bne .L080171A6
    movs r2, #1
.L080171A6:
    adds r0, r2, #0
    bx lr
    .align 2, 0
.L080171AC: .4byte 0x08BE222C
.L080171B0: .4byte gPlaySt
    func_end func_08017178

    thumb_func_start GetItemIid
GetItemIid: @ 0x080171B4
    adds r1, r0, #0
    movs r0, #0xff
    ands r0, r1
    bx lr
    func_end GetItemIid

    thumb_func_start GetItemName
GetItemName: @ 0x080171BC
    push {lr}
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080171E0 @ =0x08BE222C
    adds r1, r1, r0
    ldrh r0, [r1]
    bl DecodeMsg
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl func_08012F14
    pop {r1}
    bx r1
    .align 2, 0
.L080171E0: .4byte 0x08BE222C
    func_end GetItemName

    thumb_func_start GetItemNameWithArticle
GetItemNameWithArticle: @ 0x080171E4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    lsls r1, r1, #0x18
    lsrs r6, r1, #0x18
    movs r5, #0xff
    ands r5, r4
    lsls r0, r5, #3
    adds r0, r0, r5
    lsls r0, r0, #2
    ldr r1, .L08017228 @ =0x08BE222C
    adds r0, r0, r1
    ldrh r0, [r0]
    bl DecodeMsg
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #0x10
    ands r1, r0
    rsbs r1, r1, #0
    lsrs r1, r1, #0x1f
    cmp r5, #0x36
    bgt .L08017218
    cmp r5, #0x34
    blt .L08017218
    movs r1, #1
.L08017218:
    lsls r2, r6, #0x18
    asrs r2, r2, #0x18
    movs r0, #1
    bl func_08012F14
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08017228: .4byte 0x08BE222C
    func_end GetItemNameWithArticle

    thumb_func_start func_0801722C
func_0801722C: @ 0x0801722C
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017240 @ =0x08BE222C
    adds r1, r1, r0
    ldrh r0, [r1, #2]
    bx lr
    .align 2, 0
.L08017240: .4byte 0x08BE222C
    func_end func_0801722C

    thumb_func_start func_08017244
func_08017244: @ 0x08017244
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017258 @ =0x08BE222C
    adds r1, r1, r0
    ldrh r0, [r1, #4]
    bx lr
    .align 2, 0
.L08017258: .4byte 0x08BE222C
    func_end func_08017244

    thumb_func_start GetItemKind
GetItemKind: @ 0x0801725C
    cmp r0, #0
    beq .L08017278
    movs r1, #0xff
    ands r1, r0
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08017274 @ =0x08BE222C
    adds r0, r0, r1
    ldrb r0, [r0, #7]
    b .L0801727A
    .align 2, 0
.L08017274: .4byte 0x08BE222C
.L08017278:
    movs r0, #0xff
.L0801727A:
    bx lr
    func_end GetItemKind

    thumb_func_start GetItemAttributes
GetItemAttributes: @ 0x0801727C
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017290 @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #8]
    bx lr
    .align 2, 0
.L08017290: .4byte 0x08BE222C
    func_end GetItemAttributes

    thumb_func_start GetItemUses
GetItemUses: @ 0x08017294
    adds r2, r0, #0
    movs r1, #0xff
    ands r1, r2
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L080172B4 @ =0x08BE222C
    adds r0, r0, r1
    ldr r0, [r0, #8]
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    bne .L080172B8
    asrs r0, r2, #8
    b .L080172BA
    .align 2, 0
.L080172B4: .4byte 0x08BE222C
.L080172B8:
    movs r0, #0xff
.L080172BA:
    bx lr
    func_end GetItemUses

    thumb_func_start GetItemMaxUses
GetItemMaxUses: @ 0x080172BC
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080172D8 @ =0x08BE222C
    adds r2, r1, r0
    ldr r0, [r2, #8]
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    bne .L080172DC
    ldrb r0, [r2, #0x14]
    b .L080172DE
    .align 2, 0
.L080172D8: .4byte 0x08BE222C
.L080172DC:
    movs r0, #0xff
.L080172DE:
    bx lr
    func_end GetItemMaxUses

    thumb_func_start GetItemMight
GetItemMight: @ 0x080172E0
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080172F4 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x15]
    bx lr
    .align 2, 0
.L080172F4: .4byte 0x08BE222C
    func_end GetItemMight

    thumb_func_start func_080172F8
func_080172F8: @ 0x080172F8
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801730C @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x16]
    bx lr
    .align 2, 0
.L0801730C: .4byte 0x08BE222C
    func_end func_080172F8

    thumb_func_start func_08017310
func_08017310: @ 0x08017310
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017324 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x17]
    bx lr
    .align 2, 0
.L08017324: .4byte 0x08BE222C
    func_end func_08017310

    thumb_func_start func_08017328
func_08017328: @ 0x08017328
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801733C @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x18]
    bx lr
    .align 2, 0
.L0801733C: .4byte 0x08BE222C
    func_end func_08017328

    thumb_func_start func_08017340
func_08017340: @ 0x08017340
    adds r3, r0, #0
    movs r0, #0xff
    ands r0, r3
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017360 @ =0x08BE222C
    adds r2, r1, r0
    ldr r0, [r2, #8]
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq .L08017364
    ldrh r0, [r2, #0x1a]
    b .L0801736A
    .align 2, 0
.L08017360: .4byte 0x08BE222C
.L08017364:
    asrs r0, r3, #8
    ldrh r2, [r2, #0x1a]
    muls r0, r2, r0
.L0801736A:
    bx lr
    func_end func_08017340

    thumb_func_start func_0801736C
func_0801736C: @ 0x0801736C
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017380 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r1, [r1, #0x19]
    lsrs r0, r1, #4
    bx lr
    .align 2, 0
.L08017380: .4byte 0x08BE222C
    func_end func_0801736C

    thumb_func_start func_08017384
func_08017384: @ 0x08017384
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L0801739C @ =0x08BE222C
    adds r1, r1, r0
    movs r0, #0xf
    ldrb r1, [r1, #0x19]
    ands r0, r1
    bx lr
    .align 2, 0
.L0801739C: .4byte 0x08BE222C
    func_end func_08017384

    thumb_func_start func_080173A0
func_080173A0: @ 0x080173A0
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080173B4 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x19]
    bx lr
    .align 2, 0
.L080173B4: .4byte 0x08BE222C
    func_end func_080173A0

    thumb_func_start GetItemRequiredExp
GetItemRequiredExp: @ 0x080173B8
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080173CC @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x1c]
    bx lr
    .align 2, 0
.L080173CC: .4byte 0x08BE222C
    func_end GetItemRequiredExp

    thumb_func_start func_080173D0
func_080173D0: @ 0x080173D0
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080173E4 @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0x10]
    bx lr
    .align 2, 0
.L080173E4: .4byte 0x08BE222C
    func_end func_080173D0

    thumb_func_start GetItemBonuses
GetItemBonuses: @ 0x080173E8
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080173FC @ =0x08BE222C
    adds r1, r1, r0
    ldr r0, [r1, #0xc]
    bx lr
    .align 2, 0
.L080173FC: .4byte 0x08BE222C
    func_end GetItemBonuses

    thumb_func_start GetItemIcon
GetItemIcon: @ 0x08017400
    cmp r0, #0
    beq .L0801741C
    movs r1, #0xff
    ands r1, r0
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L08017418 @ =0x08BE222C
    adds r0, r0, r1
    ldrb r0, [r0, #0x1d]
    b .L08017420
    .align 2, 0
.L08017418: .4byte 0x08BE222C
.L0801741C:
    movs r0, #1
    rsbs r0, r0, #0
.L08017420:
    bx lr
    func_end GetItemIcon

    thumb_func_start GetItemWeaponEffect
GetItemWeaponEffect: @ 0x08017424
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017438 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x1f]
    bx lr
    .align 2, 0
.L08017438: .4byte 0x08BE222C
    func_end GetItemWeaponEffect

    thumb_func_start GetItemEffect
GetItemEffect: @ 0x0801743C
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017450 @ =0x08BE222C
    adds r1, r1, r0
    ldrb r0, [r1, #0x1e]
    bx lr
    .align 2, 0
.L08017450: .4byte 0x08BE222C
    func_end GetItemEffect

    thumb_func_start GetItemCostPerUse
GetItemCostPerUse: @ 0x08017454
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017468 @ =0x08BE222C
    adds r1, r1, r0
    ldrh r0, [r1, #0x1a]
    bx lr
    .align 2, 0
.L08017468: .4byte 0x08BE222C
    func_end GetItemCostPerUse

    thumb_func_start GetItemMaxValue
GetItemMaxValue: @ 0x0801746C
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L08017490 @ =0x08BE222C
    adds r2, r1, r0
    ldr r0, [r2, #8]
    movs r1, #8
    ands r0, r1
    movs r1, #0xff
    cmp r0, #0
    bne .L08017488
    ldrb r1, [r2, #0x14]
.L08017488:
    ldrh r2, [r2, #0x1a]
    adds r0, r2, #0
    muls r0, r1, r0
    bx lr
    .align 2, 0
.L08017490: .4byte 0x08BE222C
    func_end GetItemMaxValue

    thumb_func_start func_08017494
func_08017494: @ 0x08017494
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080174A8 @ =0x08BE222C
    adds r1, r1, r0
    adds r1, #0x20
    ldrb r0, [r1]
    bx lr
    .align 2, 0
.L080174A8: .4byte 0x08BE222C
    func_end func_08017494

    thumb_func_start GetIInfo
GetIInfo: @ 0x080174AC
    adds r1, r0, #0
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L080174BC @ =0x08BE222C
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L080174BC: .4byte 0x08BE222C
    func_end GetIInfo

    thumb_func_start func_080174C0
func_080174C0: @ 0x080174C0
    movs r1, #0xff
    ands r0, r1
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, .L080174D4 @ =0x08BE222C
    adds r1, r1, r0
    adds r1, #0x21
    ldrb r0, [r1]
    bx lr
    .align 2, 0
.L080174D4: .4byte 0x08BE222C
    func_end func_080174C0
