    .include "asm_prelude.inc"

    thumb_func_start GetUnitSupporterCount
GetUnitSupporterCount: @ 0x08026628
    ldr r0, [r0]
    ldr r0, [r0, #0x2c]
    cmp r0, #0
    beq .L08026634
    ldrb r0, [r0, #0x15]
    b .L08026636
.L08026634:
    movs r0, #0
.L08026636:
    bx lr
    func_end GetUnitSupporterCount

    thumb_func_start func_08026638
func_08026638: @ 0x08026638
    ldr r0, [r0]
    ldr r0, [r0, #0x2c]
    cmp r0, #0
    beq .L08026646
    adds r0, r0, r1
    ldrb r0, [r0]
    b .L08026648
.L08026646:
    movs r0, #0
.L08026648:
    bx lr
    func_end func_08026638

    thumb_func_start func_0802664C
func_0802664C: @ 0x0802664C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    bl func_08026638
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    movs r0, #0xc0
    ldrb r4, [r4, #0xb]
    ands r0, r4
    adds r5, r0, #1
    adds r6, r0, #0
    adds r6, #0x40
    cmp r5, r6
    bge .L0802668A
.L08026668:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L08026684
    ldr r0, [r4]
    cmp r0, #0
    beq .L08026684
    ldrb r0, [r0, #4]
    cmp r0, r7
    bne .L08026684
    adds r0, r4, #0
    b .L0802668C
.L08026684:
    adds r5, #1
    cmp r5, r6
    blt .L08026668
.L0802668A:
    movs r0, #0
.L0802668C:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802664C

    thumb_func_start func_08026694
func_08026694: @ 0x08026694
    adds r0, #0x32
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0xf0
    ble .L080266A2
    movs r0, #3
    b .L080266B4
.L080266A2:
    cmp r0, #0xa0
    ble .L080266AA
    movs r0, #2
    b .L080266B4
.L080266AA:
    cmp r0, #0x50
    bgt .L080266B2
    movs r0, #0
    b .L080266B4
.L080266B2:
    movs r0, #1
.L080266B4:
    bx lr
    func_end func_08026694

    thumb_func_start func_080266B8
func_080266B8: @ 0x080266B8
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    bl GetUnitSupporterCount
    adds r5, r0, #0
    movs r4, #0
    movs r6, #0
    cmp r6, r5
    bge .L080266DA
.L080266CA:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08026694
    adds r6, r6, r0
    adds r4, #1
    cmp r4, r5
    blt .L080266CA
.L080266DA:
    adds r0, r6, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080266B8

    thumb_func_start func_080266E4
func_080266E4: @ 0x080266E4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r2, r0, #0
    ldr r0, .L0802673C @ =gPlaySt
    mov r8, r0
    ldrb r3, [r0, #0x1b]
    cmp r3, #1
    beq .L08026730
    ldr r0, [r2]
    ldr r0, [r0, #0x2c]
    cmp r0, #0
    beq .L08026730
    adds r0, #0xe
    adds r0, r0, r1
    ldrb r6, [r0]
    adds r0, r2, #0
    adds r0, #0x32
    adds r7, r0, r1
    ldrb r5, [r7]
    ldr r4, .L08026740 @ =0x08B94184
    adds r0, r2, #0
    bl func_08026694
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r1, [r0]
    adds r0, r5, r6
    cmp r0, r1
    ble .L08026722
    subs r6, r1, r5
.L08026722:
    adds r0, r5, r6
    strb r0, [r7]
    mov r1, r8
    ldrh r1, [r1, #0x16]
    adds r0, r1, r6
    mov r2, r8
    strh r0, [r2, #0x16]
.L08026730:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802673C: .4byte gPlaySt
.L08026740: .4byte 0x08B94184
    func_end func_080266E4

    thumb_func_start func_08026744
func_08026744: @ 0x08026744
    push {r4, lr}
    adds r2, r0, #0
    adds r2, #0x32
    adds r2, r2, r1
    ldrb r3, [r2]
    adds r3, #1
    strb r3, [r2]
    ldr r3, .L08026774 @ =gPlaySt
    ldrh r2, [r3, #0x16]
    adds r2, #1
    strh r2, [r3, #0x16]
    ldr r2, [r0]
    ldrb r4, [r2, #4]
    bl func_08026638
    adds r1, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    adds r0, r4, #0
    bl func_08026BA0
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08026774: .4byte gPlaySt
    func_end func_08026744

    thumb_func_start func_08026778
func_08026778: @ 0x08026778
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L080267DC @ =gPlaySt
    ldrb r1, [r0, #0x14]
    movs r0, #0x80
    ands r0, r1
    cmp r0, #0
    bne .L080267D6
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    bne .L080267D6
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08026BF0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080267D6
    adds r0, r5, #0
    bl func_080266B8
    cmp r0, #4
    bgt .L080267D6
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_0802664C
    bl func_080266B8
    cmp r0, #4
    bgt .L080267D6
    adds r0, r5, #0
    adds r0, #0x32
    adds r0, r0, r6
    ldrb r7, [r0]
    ldr r4, .L080267E0 @ =0x08B94184
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08026694
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    cmp r7, #0xf1
    bne .L080267E4
.L080267D6:
    movs r0, #0
    b .L080267EE
    .align 2, 0
.L080267DC: .4byte gPlaySt
.L080267E0: .4byte 0x08B94184
.L080267E4:
    movs r1, #0
    cmp r7, r0
    bne .L080267EC
    movs r1, #1
.L080267EC:
    adds r0, r1, #0
.L080267EE:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08026778

    thumb_func_start GetUnitInitialSupportExp
GetUnitInitialSupportExp: @ 0x080267F4
    ldr r0, [r0]
    ldr r0, [r0, #0x2c]
    cmp r0, #0
    beq .L08026804
    adds r0, #7
    adds r0, r0, r1
    ldrb r0, [r0]
    b .L08026808
.L08026804:
    movs r0, #1
    rsbs r0, r0, #0
.L08026808:
    bx lr
    func_end GetUnitInitialSupportExp

    thumb_func_start func_0802680C
func_0802680C: @ 0x0802680C
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    lsls r1, r1, #0x18
    lsrs r7, r1, #0x18
    bl GetUnitSupporterCount
    adds r5, r0, #0
    movs r4, #0
    cmp r4, r5
    bge .L0802683A
.L08026820:
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08026638
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, r7
    bne .L08026834
    adds r0, r4, #0
    b .L0802683E
.L08026834:
    adds r4, #1
    cmp r4, r5
    blt .L08026820
.L0802683A:
    movs r0, #1
    rsbs r0, r0, #0
.L0802683E:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802680C

    thumb_func_start ClearUnitSupports
ClearUnitSupports: @ 0x08026844
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    bl GetUnitSupporterCount
    adds r7, r0, #0
    movs r6, #0
    cmp r6, r7
    bge .L0802688C
    mov r8, r6
.L0802685A:
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_0802664C
    adds r4, r0, #0
    cmp r4, #0
    beq .L08026886
    ldr r0, [r5]
    ldrb r1, [r0, #4]
    adds r0, r4, #0
    bl func_0802680C
    adds r1, r4, #0
    adds r1, #0x32
    adds r1, r1, r0
    mov r0, r8
    strb r0, [r1]
    adds r0, r5, #0
    adds r0, #0x32
    adds r0, r0, r6
    mov r1, r8
    strb r1, [r0]
.L08026886:
    adds r6, #1
    cmp r6, r7
    blt .L0802685A
.L0802688C:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end ClearUnitSupports

    thumb_func_start DoTurnSupportExp
DoTurnSupportExp: @ 0x08026898
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    ldr r1, .L08026938 @ =gPlaySt
    ldrh r0, [r1, #0x10]
    cmp r0, #1
    beq .L08026984
    movs r0, #0x80
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08026984
    movs r4, #1
.L080268B4:
    adds r0, r4, #0
    bl GetUnit
    adds r5, r0, #0
    adds r4, #1
    mov sb, r4
    cmp r5, #0
    beq .L0802697E
    ldr r0, [r5]
    cmp r0, #0
    beq .L0802697E
    ldr r0, [r5, #0xc]
    ldr r1, .L0802693C @ =0x0001000C
    ands r0, r1
    cmp r0, #0
    bne .L0802697E
    adds r0, r5, #0
    bl func_080266B8
    cmp r0, #4
    bgt .L0802697E
    adds r0, r5, #0
    bl GetUnitSupporterCount
    mov r8, r0
    movs r7, #0
    cmp r7, r8
    bge .L0802697E
.L080268EC:
    adds r0, r5, #0
    adds r1, r7, #0
    bl func_0802664C
    adds r4, r0, #0
    cmp r4, #0
    beq .L08026978
    ldr r1, [r4, #0xc]
    ldr r0, .L0802693C @ =0x0001000C
    ands r0, r1
    adds r6, r1, #0
    cmp r0, #0
    bne .L08026978
    movs r1, #0xb
    ldrsb r1, [r4, r1]
    movs r0, #0xc0
    ands r0, r1
    mov ip, r1
    cmp r0, #0
    bne .L08026978
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    subs r1, r2, r0
    cmp r1, #0
    bge .L08026924
    subs r1, r0, r2
.L08026924:
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    subs r2, r3, r0
    cmp r2, #0
    blt .L08026940
    adds r0, r1, r2
    b .L08026944
    .align 2, 0
.L08026938: .4byte gPlaySt
.L0802693C: .4byte 0x0001000C
.L08026940:
    subs r0, r0, r3
    adds r0, r1, r0
.L08026944:
    cmp r0, #0
    beq .L0802694E
    cmp r0, #1
    beq .L08026956
    b .L08026978
.L0802694E:
    ldrb r0, [r5, #0x1b]
    cmp r0, ip
    bne .L08026978
    b .L08026966
.L08026956:
    ldr r0, [r5, #0xc]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    bne .L08026978
    ands r6, r1
    cmp r6, #0
    bne .L08026978
.L08026966:
    adds r0, r4, #0
    bl func_080266B8
    cmp r0, #4
    bgt .L08026978
    adds r0, r5, #0
    adds r1, r7, #0
    bl func_080266E4
.L08026978:
    adds r7, #1
    cmp r7, r8
    blt .L080268EC
.L0802697E:
    mov r4, sb
    cmp r4, #0x3f
    ble .L080268B4
.L08026984:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end DoTurnSupportExp

    thumb_func_start func_08026990
func_08026990: @ 0x08026990
    adds r2, r0, #0
    ldr r1, .L08026998 @ =0x08C9A1C0
    b .L080269A8
    .align 2, 0
.L08026998: .4byte 0x08C9A1C0
.L0802699C:
    ldrb r0, [r1]
    cmp r0, r2
    bne .L080269A6
    adds r0, r1, #0
    b .L080269AE
.L080269A6:
    adds r1, #8
.L080269A8:
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0802699C
.L080269AE:
    bx lr
    func_end func_08026990

    thumb_func_start func_080269B0
func_080269B0: @ 0x080269B0
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, r1, #0
    adds r5, r2, #0
    bl func_08026990
    ldrb r2, [r0, #1]
    adds r1, r2, #0
    muls r1, r5, r1
    ldrb r2, [r4, #1]
    adds r1, r2, r1
    strb r1, [r4, #1]
    ldrb r2, [r0, #2]
    adds r1, r2, #0
    muls r1, r5, r1
    ldrb r2, [r4, #2]
    adds r1, r2, r1
    strb r1, [r4, #2]
    ldrb r2, [r0, #3]
    adds r1, r2, #0
    muls r1, r5, r1
    ldrb r2, [r4, #3]
    adds r1, r2, r1
    strb r1, [r4, #3]
    ldrb r2, [r0, #4]
    adds r1, r2, #0
    muls r1, r5, r1
    ldrb r2, [r4, #4]
    adds r1, r2, r1
    strb r1, [r4, #4]
    ldrb r2, [r0, #5]
    adds r1, r2, #0
    muls r1, r5, r1
    ldrb r2, [r4, #5]
    adds r1, r2, r1
    strb r1, [r4, #5]
    ldrb r0, [r0, #6]
    muls r0, r5, r0
    ldrb r1, [r4, #6]
    adds r0, r1, r0
    strb r0, [r4, #6]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080269B0

    thumb_func_start func_08026A08
func_08026A08: @ 0x08026A08
    movs r1, #0
    strb r1, [r0, #1]
    strb r1, [r0, #2]
    strb r1, [r0, #3]
    strb r1, [r0, #4]
    strb r1, [r0, #5]
    strb r1, [r0, #6]
    bx lr
    func_end func_08026A08

    thumb_func_start func_08026A18
func_08026A18: @ 0x08026A18
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    adds r6, r1, #0
    movs r0, #0
    mov sb, r0
    adds r0, r6, #0
    bl func_08026A08
    adds r0, r7, #0
    bl GetUnitSupporterCount
    mov sl, r0
    movs r1, #0
    mov r8, r1
    cmp sb, sl
    bge .L08026AE4
    subs r0, #1
    str r0, [sp]
.L08026A46:
    mov r1, sb
    asrs r1, r1, #1
    mov sb, r1
    adds r0, r7, #0
    mov r1, r8
    bl func_0802664C
    adds r5, r0, #0
    cmp r5, #0
    beq .L08026ADC
    ldr r1, .L08026B1C @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08026A8C
    movs r2, #0x10
    ldrsb r2, [r7, r2]
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    subs r1, r2, r0
    cmp r1, #0
    bge .L08026A76
    subs r1, r0, r2
.L08026A76:
    movs r3, #0x11
    ldrsb r3, [r7, r3]
    movs r2, #0x11
    ldrsb r2, [r5, r2]
    subs r0, r3, r2
    cmp r0, #0
    bge .L08026A86
    subs r0, r2, r3
.L08026A86:
    adds r0, r1, r0
    cmp r0, #3
    bgt .L08026ADC
.L08026A8C:
    ldr r0, [r5, #0xc]
    ldr r1, .L08026B20 @ =0x0001002C
    ands r0, r1
    cmp r0, #0
    bne .L08026ADC
    ldr r0, [r7]
    ldrb r1, [r0, #4]
    adds r0, r5, #0
    bl func_0802680C
    adds r1, r0, #0
    adds r0, r5, #0
    bl func_08026694
    adds r4, r0, #0
    ldr r0, [r5]
    ldrb r1, [r0, #9]
    adds r0, r6, #0
    adds r2, r4, #0
    bl func_080269B0
    adds r0, r7, #0
    mov r1, r8
    bl func_08026694
    adds r5, r0, #0
    ldr r0, [r7]
    ldrb r1, [r0, #9]
    adds r0, r6, #0
    adds r2, r5, #0
    bl func_080269B0
    cmp r4, #0
    beq .L08026ADC
    cmp r5, #0
    beq .L08026ADC
    movs r0, #1
    ldr r1, [sp]
    lsls r0, r1
    add sb, r0
.L08026ADC:
    movs r0, #1
    add r8, r0
    cmp r8, sl
    blt .L08026A46
.L08026AE4:
    ldrb r1, [r6, #1]
    lsrs r0, r1, #1
    strb r0, [r6, #1]
    ldrb r1, [r6, #2]
    lsrs r0, r1, #1
    strb r0, [r6, #2]
    ldrb r1, [r6, #3]
    lsrs r0, r1, #1
    strb r0, [r6, #3]
    ldrb r1, [r6, #4]
    lsrs r0, r1, #1
    strb r0, [r6, #4]
    ldrb r1, [r6, #5]
    lsrs r0, r1, #1
    strb r0, [r6, #5]
    ldrb r1, [r6, #6]
    lsrs r0, r1, #1
    strb r0, [r6, #6]
    mov r0, sb
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08026B1C: .4byte gBmSt
.L08026B20: .4byte 0x0001002C
    func_end func_08026A18

    thumb_func_start func_08026B24
func_08026B24: @ 0x08026B24
    ldr r0, [r0]
    ldrb r0, [r0, #9]
    cmp r0, #0
    beq .L08026B30
    adds r0, #0x79
    b .L08026B34
.L08026B30:
    movs r0, #1
    rsbs r0, r0, #0
.L08026B34:
    bx lr
    func_end func_08026B24

    thumb_func_start func_08026B38
func_08026B38: @ 0x08026B38
    push {lr}
    bl GetCharacterData
    ldrb r0, [r0, #9]
    cmp r0, #0
    beq .L08026B48
    adds r0, #0x79
    b .L08026B4C
.L08026B48:
    movs r0, #1
    rsbs r0, r0, #0
.L08026B4C:
    pop {r1}
    bx r1
    func_end func_08026B38

    thumb_func_start func_08026B50
func_08026B50: @ 0x08026B50
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L08026B70 @ =0x081C3CC0
    mov r0, sp
    movs r2, #4
    bl memcpy
    mov r1, sp
    adds r0, r1, r4
    ldrb r0, [r0]
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08026B70: .4byte 0x081C3CC0
    func_end func_08026B50

    thumb_func_start func_08026B74
func_08026B74: @ 0x08026B74
    push {r4, r5, lr}
    sub sp, #0x20
    mov r2, sp
    ldr r1, .L08026B9C @ =0x081C3CC4
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
    add sp, #0x20
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08026B9C: .4byte 0x081C3CC4
    func_end func_08026B74

    thumb_func_start func_08026BA0
func_08026BA0: @ 0x08026BA0
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    lsls r6, r6, #0x18
    lsrs r6, r6, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    adds r0, r6, #0
    bl GetUnitFromCharId
    adds r7, r0, #0
    adds r1, r5, #0
    bl func_0802680C
    adds r2, r0, #0
    adds r1, r7, #0
    adds r1, #0x39
    movs r4, #1
    adds r0, r4, #0
    lsls r0, r2
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    adds r0, r5, #0
    bl GetUnitFromCharId
    adds r7, r0, #0
    adds r1, r6, #0
    bl func_0802680C
    adds r2, r0, #0
    adds r0, r7, #0
    adds r0, #0x39
    lsls r4, r2
    ldrb r1, [r0]
    orrs r4, r1
    strb r4, [r0]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08026BA0

    thumb_func_start func_08026BF0
func_08026BF0: @ 0x08026BF0
    adds r0, #0x39
    movs r2, #1
    lsls r2, r1
    ldrb r0, [r0]
    ands r2, r0
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    rsbs r0, r2, #0
    orrs r0, r2
    lsrs r0, r0, #0x1f
    bx lr
    func_end func_08026BF0

    thumb_func_start func_08026C08
func_08026C08: @ 0x08026C08
    push {r4, r5, lr}
    adds r4, r1, #0
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    bl GetUnitFromCharId
    adds r5, r0, #0
    adds r1, r4, #0
    bl func_0802680C
    adds r1, r0, #0
    adds r0, r5, #0
    bl func_08026694
    cmp r0, #2
    bgt .L08026C30
    movs r0, #0
    b .L08026C32
.L08026C30:
    movs r0, #1
.L08026C32:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08026C08

    thumb_func_start func_08026C38
func_08026C38: @ 0x08026C38
    adds r2, r0, #0
    adds r3, r1, #0
    cmp r2, #0
    beq .L08026CCC
    cmp r3, #0
    beq .L08026CCC
    ldrb r1, [r2, #8]
    ldrb r0, [r3, #8]
    strb r0, [r2, #8]
    strb r1, [r3, #8]
    ldrb r1, [r2, #9]
    ldrb r0, [r3, #9]
    strb r0, [r2, #9]
    strb r1, [r3, #9]
    ldrb r1, [r2, #0x12]
    ldrb r0, [r3, #0x12]
    strb r0, [r2, #0x12]
    strb r1, [r3, #0x12]
    ldrb r1, [r2, #0x13]
    ldrb r0, [r3, #0x13]
    strb r0, [r2, #0x13]
    strb r1, [r3, #0x13]
    ldrb r1, [r2, #0x14]
    ldrb r0, [r3, #0x14]
    strb r0, [r2, #0x14]
    strb r1, [r3, #0x14]
    ldrb r1, [r2, #0x15]
    ldrb r0, [r3, #0x15]
    strb r0, [r2, #0x15]
    strb r1, [r3, #0x15]
    ldrb r1, [r2, #0x16]
    ldrb r0, [r3, #0x16]
    strb r0, [r2, #0x16]
    strb r1, [r3, #0x16]
    ldrb r1, [r2, #0x17]
    ldrb r0, [r3, #0x17]
    strb r0, [r2, #0x17]
    strb r1, [r3, #0x17]
    ldrb r1, [r2, #0x18]
    ldrb r0, [r3, #0x18]
    strb r0, [r2, #0x18]
    strb r1, [r3, #0x18]
    ldrb r1, [r2, #0x19]
    ldrb r0, [r3, #0x19]
    strb r0, [r2, #0x19]
    strb r1, [r3, #0x19]
    ldrb r1, [r2, #0x1a]
    ldrb r0, [r3, #0x1a]
    strb r0, [r2, #0x1a]
    strb r1, [r3, #0x1a]
    ldrb r1, [r2, #0x1d]
    ldrb r0, [r3, #0x1d]
    strb r0, [r2, #0x1d]
    strb r1, [r3, #0x1d]
    ldrh r1, [r2, #0x1e]
    ldrh r0, [r3, #0x1e]
    strh r0, [r2, #0x1e]
    strh r1, [r3, #0x1e]
    ldrh r1, [r2, #0x20]
    ldrh r0, [r3, #0x20]
    strh r0, [r2, #0x20]
    strh r1, [r3, #0x20]
    ldrh r1, [r2, #0x22]
    ldrh r0, [r3, #0x22]
    strh r0, [r2, #0x22]
    strh r1, [r3, #0x22]
    ldrh r1, [r2, #0x24]
    ldrh r0, [r3, #0x24]
    strh r0, [r2, #0x24]
    strh r1, [r3, #0x24]
    ldrh r1, [r2, #0x26]
    ldrh r0, [r3, #0x26]
    strh r0, [r2, #0x26]
    strh r1, [r3, #0x26]
.L08026CCC:
    bx lr
    func_end func_08026C38
