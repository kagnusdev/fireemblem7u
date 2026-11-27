    .include "asm_prelude.inc"

    thumb_func_start func_08078100
func_08078100: @ 0x08078100
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #4]
    cmp r0, #0
    beq .L0807811A
    ldr r0, [r4, #8]
    bl SetFlag
    ldr r0, [r4, #4]
    cmp r0, #1
    beq .L0807811A
    bl StartEvent
.L0807811A:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08078100

    thumb_func_start func_08078120
func_08078120: @ 0x08078120
    push {lr}
    ldr r0, [r0, #8]
    bl SetFlag
    pop {r0}
    bx r0
    func_end func_08078120

    thumb_func_start func_0807812C
func_0807812C: @ 0x0807812C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    movs r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    ldr r6, .L0807813C @ =0x08C9E9A4
    adds r7, r6, #4
    b .L0807814E
    .align 2, 0
.L0807813C: .4byte 0x08C9E9A4
.L08078140:
    lsls r0, r5, #3
    adds r0, r0, r7
    ldr r1, [r0]
    lsls r1, r1, #2
    ldr r0, [r4]
    adds r0, r0, r1
    str r0, [r4]
.L0807814E:
    ldr r0, [r4]
    ldrh r5, [r0]
    ldrh r0, [r0, #2]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078140
    lsls r0, r5, #3
    adds r0, r0, r6
    ldr r1, [r0]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r0, #1
    bne .L08078140
    ldr r0, [r4, #4]
    cmp r0, #0
    bne .L08078178
    movs r0, #0
    b .L0807817A
.L08078178:
    adds r0, r4, #0
.L0807817A:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0807812C

    thumb_func_start func_08078180
func_08078180: @ 0x08078180
    push {r4, lr}
    adds r3, r0, #0
    cmp r3, #0
    bne .L0807818C
    movs r0, #0
    b .L080781A6
.L0807818C:
    ldr r2, [r3]
    ldr r0, .L080781AC @ =0x08C9E9A4
    ldrh r4, [r2]
    lsls r1, r4, #3
    adds r0, #4
    adds r1, r1, r0
    ldr r0, [r1]
    lsls r0, r0, #2
    adds r2, r2, r0
    str r2, [r3]
    adds r0, r3, #0
    bl func_0807812C
.L080781A6:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080781AC: .4byte 0x08C9E9A4
    func_end func_08078180

    thumb_func_start func_080781B0
func_080781B0: @ 0x080781B0
    movs r0, #1
    bx lr
    func_end func_080781B0

    thumb_func_start func_080781B4
func_080781B4: @ 0x080781B4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4]
    ldrh r0, [r0, #8]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080781CA
    movs r0, #0
    b .L080781D6
.L080781CA:
    ldr r0, [r4]
    ldr r1, [r0, #4]
    str r1, [r4, #4]
    ldrh r0, [r0, #2]
    str r0, [r4, #8]
    movs r0, #1
.L080781D6:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080781B4

    thumb_func_start func_080781DC
func_080781DC: @ 0x080781DC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4]
    ldrh r5, [r0, #0xc]
    ldr r6, .L08078210 @ =0xFFFF0000
    ldrh r0, [r0, #2]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078214
    adds r0, r5, #0
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08078214
    ldr r1, [r4]
    ldr r0, [r1, #8]
    str r0, [r4, #4]
    ldr r0, [r1]
    ands r0, r6
    lsrs r0, r0, #0x10
    str r0, [r4, #8]
    movs r0, #1
    b .L08078216
    .align 2, 0
.L08078210: .4byte 0xFFFF0000
.L08078214:
    movs r0, #0
.L08078216:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080781DC

    thumb_func_start func_0807821C
func_0807821C: @ 0x0807821C
    push {r4, r5, r6, lr}
    movs r3, #0
    ldr r1, .L08078240 @ =gBmSt
    ldrb r5, [r1, #0x14]
    ldrb r4, [r1, #0x16]
    adds r6, r4, #0
    ldr r0, [r0]
    ldr r2, [r0, #4]
    cmp r2, #0
    beq .L0807829C
    ldrh r0, [r0]
    cmp r0, #0xf
    beq .L08078244
    cmp r0, #0x10
    beq .L0807826C
.L0807823A:
    movs r0, #1
    b .L080782B2
    .align 2, 0
.L08078240: .4byte gBmSt
.L08078244:
    ldrb r0, [r2]
    cmp r0, #0xff
    beq .L080782B0
.L0807824A:
    lsls r0, r3, #2
    adds r0, r0, r2
    ldrb r1, [r0]
    cmp r5, r1
    bne .L0807825A
    ldrb r0, [r0, #1]
    cmp r6, r0
    beq .L0807823A
.L0807825A:
    adds r0, r3, #1
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    lsls r0, r3, #2
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0xff
    bne .L0807824A
    b .L080782B0
.L0807826C:
    ldr r0, .L08078298 @ =gBmMapMovement
    ldr r1, [r0]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x77
    bhi .L080782B0
    ldrb r0, [r2]
    cmp r5, r0
    blo .L080782B0
    ldrb r1, [r2, #1]
    cmp r4, r1
    blo .L080782B0
    ldrb r0, [r2, #4]
    cmp r5, r0
    bhi .L080782B0
    ldrb r2, [r2, #5]
    cmp r4, r2
    bhi .L080782B0
    b .L0807823A
    .align 2, 0
.L08078298: .4byte gBmMapMovement
.L0807829C:
    ldr r0, .L080782B8 @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    cmp r5, r0
    bne .L080782B0
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    cmp r6, r0
    beq .L0807823A
.L080782B0:
    movs r0, #0
.L080782B2:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080782B8: .4byte gActiveUnit
    func_end func_0807821C

    thumb_func_start func_080782BC
func_080782BC: @ 0x080782BC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4]
    ldrh r5, [r0, #0xc]
    ldr r6, .L080782F0 @ =0xFFFF0000
    ldrh r0, [r0, #2]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080782F4
    adds r0, r5, #0
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080782F4
    ldr r1, [r4]
    ldr r0, [r1, #8]
    str r0, [r4, #4]
    ldr r0, [r1]
    ands r0, r6
    lsrs r0, r0, #0x10
    str r0, [r4, #8]
    movs r0, #1
    b .L080782F6
    .align 2, 0
.L080782F0: .4byte 0xFFFF0000
.L080782F4:
    movs r0, #0
.L080782F6:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080782BC

    thumb_func_start func_080782FC
func_080782FC: @ 0x080782FC
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r2, [r4]
    ldr r1, [r2, #8]
    ldrb r6, [r2, #8]
    movs r0, #0xff
    lsls r0, r0, #8
    ands r0, r1
    lsrs r5, r0, #8
    movs r0, #0xff
    lsls r0, r0, #0x10
    ands r1, r0
    lsrs r7, r1, #0x10
    ldr r0, [r2, #0xc]
    subs r0, #1
    cmp r0, #4
    bhi .L080783B0
    lsls r0, r0, #2
    ldr r1, .L08078328 @ =.L0807832C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08078328: .4byte .L0807832C
.L0807832C: @ jump table
    .4byte .L08078340 @ case 0
    .4byte .L08078350 @ case 1
    .4byte .L08078368 @ case 2
    .4byte .L08078380 @ case 3
    .4byte .L08078398 @ case 4
.L08078340:
    ldr r1, .L0807834C @ =gPlaySt
    ldrb r0, [r1, #0x1b]
    cmp r0, #2
    bne .L080783EC
    b .L08078358
    .align 2, 0
.L0807834C: .4byte gPlaySt
.L08078350:
    ldr r1, .L08078364 @ =gPlaySt
    ldrb r2, [r1, #0x1b]
    cmp r2, #3
    bne .L080783EC
.L08078358:
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    beq .L080783A4
    b .L080783EC
    .align 2, 0
.L08078364: .4byte gPlaySt
.L08078368:
    ldr r1, .L0807837C @ =gPlaySt
    movs r0, #0x40
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    beq .L080783EC
    ldrb r1, [r1, #0x1b]
    cmp r1, #2
    beq .L080783A4
    b .L080783EC
    .align 2, 0
.L0807837C: .4byte gPlaySt
.L08078380:
    ldr r1, .L08078394 @ =gPlaySt
    movs r0, #0x40
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    beq .L080783EC
    ldrb r1, [r1, #0x1b]
    cmp r1, #3
    beq .L080783A4
    b .L080783EC
    .align 2, 0
.L08078394: .4byte gPlaySt
.L08078398:
    ldr r1, .L080783C4 @ =gPlaySt
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    beq .L080783EC
.L080783A4:
    movs r0, #2
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080783EC
.L080783B0:
    cmp r5, #0
    bne .L080783C8
    ldr r0, .L080783C4 @ =gPlaySt
    ldrh r1, [r0, #0x10]
    cmp r1, r6
    bne .L080783EC
    ldrb r0, [r0, #0xf]
    cmp r0, r7
    bne .L080783EC
    b .L080783DA
    .align 2, 0
.L080783C4: .4byte gPlaySt
.L080783C8:
    ldr r1, .L080783E8 @ =gPlaySt
    ldrh r0, [r1, #0x10]
    cmp r0, r6
    blt .L080783EC
    cmp r0, r5
    bgt .L080783EC
    ldrb r1, [r1, #0xf]
    cmp r1, r7
    bne .L080783EC
.L080783DA:
    ldr r0, [r4]
    ldr r1, [r0, #4]
    str r1, [r4, #4]
    ldrh r0, [r0, #2]
    str r0, [r4, #8]
    movs r0, #1
    b .L080783EE
    .align 2, 0
.L080783E8: .4byte gPlaySt
.L080783EC:
    movs r0, #0
.L080783EE:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080782FC

    thumb_func_start func_080783F4
func_080783F4: @ 0x080783F4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r2, [r4]
    ldr r1, [r2, #8]
    movs r3, #0xff
    adds r5, r1, #0
    ands r5, r3
    movs r0, #0xff
    lsls r0, r0, #8
    ands r1, r0
    lsrs r6, r1, #8
    ldr r0, [r2, #0xc]
    adds r1, r0, #0
    ands r1, r3
    cmp r1, #2
    beq .L08078434
    cmp r1, #2
    bhi .L0807841E
    cmp r1, #1
    beq .L08078424
    b .L08078450
.L0807841E:
    cmp r1, #3
    beq .L08078444
    b .L08078450
.L08078424:
    ldr r0, .L08078430 @ =gPlaySt
    ldrb r0, [r0, #0x1b]
    cmp r0, #2
    beq .L08078450
    b .L0807846E
    .align 2, 0
.L08078430: .4byte gPlaySt
.L08078434:
    ldr r0, .L08078440 @ =gPlaySt
    ldrb r0, [r0, #0x1b]
    cmp r0, #3
    beq .L08078450
    b .L0807846E
    .align 2, 0
.L08078440: .4byte gPlaySt
.L08078444:
    lsrs r0, r0, #0x10
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0807846E
.L08078450:
    ldrb r0, [r4, #0x1a]
    cmp r0, r5
    beq .L0807845A
    cmp r5, #0
    bne .L0807846E
.L0807845A:
    ldrb r0, [r4, #0x1b]
    cmp r0, r6
    bne .L0807846E
    ldr r0, [r4]
    ldr r1, [r0, #4]
    str r1, [r4, #4]
    ldrh r0, [r0, #2]
    str r0, [r4, #8]
    movs r0, #1
    b .L08078470
.L0807846E:
    movs r0, #0
.L08078470:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080783F4

    thumb_func_start func_08078478
func_08078478: @ 0x08078478
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r2, [r4]
    ldr r0, [r2, #8]
    ldrb r5, [r2, #8]
    movs r1, #0xff
    lsls r1, r1, #8
    ands r0, r1
    lsrs r6, r0, #8
    ldr r1, [r2, #0xc]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080784B6
    ldrb r0, [r4, #0x1a]
    cmp r0, r5
    beq .L080784A2
    cmp r5, #0
    bne .L080784B6
.L080784A2:
    ldrb r0, [r4, #0x1b]
    cmp r0, r6
    bne .L080784B6
    ldr r0, [r4]
    ldr r1, [r0, #4]
    str r1, [r4, #4]
    ldrh r0, [r0, #2]
    str r0, [r4, #8]
    movs r0, #1
    b .L080784B8
.L080784B6:
    movs r0, #0
.L080784B8:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08078478

    thumb_func_start func_080784C0
func_080784C0: @ 0x080784C0
    push {r4, r5, r6, lr}
    adds r3, r0, #0
    ldr r4, [r3]
    ldr r1, [r4, #8]
    ldrb r2, [r4, #8]
    movs r0, #0xff
    lsls r0, r0, #8
    ands r0, r1
    lsrs r5, r0, #8
    movs r0, #0xff
    lsls r0, r0, #0x10
    ands r1, r0
    lsrs r1, r1, #0x10
    movs r6, #0
    str r6, [r3, #0x10]
    movs r0, #0x18
    ldrsb r0, [r3, r0]
    cmp r2, r0
    bne .L08078502
    movs r0, #0x19
    ldrsb r0, [r3, r0]
    cmp r5, r0
    bne .L08078502
    ldr r0, [r4, #4]
    str r0, [r3, #4]
    ldrh r0, [r4, #2]
    str r0, [r3, #8]
    str r1, [r3, #0xc]
    cmp r1, #0x12
    bne .L080784FE
    str r6, [r3, #0x14]
.L080784FE:
    movs r0, #1
    b .L08078504
.L08078502:
    movs r0, #0
.L08078504:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080784C0

    thumb_func_start func_0807850C
func_0807850C: @ 0x0807850C
    push {r4, lr}
    adds r4, r0, #0
    bl func_080784C0
    movs r1, #3
    str r1, [r4, #0x10]
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0807850C

    thumb_func_start func_08078520
func_08078520: @ 0x08078520
    push {r4, r5, r6, lr}
    adds r2, r0, #0
    ldr r3, [r2]
    ldr r0, [r3, #8]
    movs r1, #0xff
    lsls r1, r1, #8
    ands r1, r0
    lsrs r4, r1, #8
    movs r1, #0xff
    lsls r1, r1, #0x10
    ands r1, r0
    lsrs r5, r1, #0x10
    lsrs r1, r0, #0x18
    ldrb r0, [r3, #8]
    ldrb r6, [r2, #0x18]
    cmp r0, r6
    bne .L08078562
    movs r0, #0x19
    ldrsb r0, [r2, r0]
    cmp r4, r0
    bne .L08078562
    movs r0, #1
    str r0, [r2, #4]
    ldrh r0, [r3, #2]
    str r0, [r2, #8]
    str r5, [r2, #0xc]
    str r1, [r2, #0x10]
    ldrh r0, [r3, #4]
    str r0, [r2, #0x14]
    ldrh r0, [r3, #6]
    str r0, [r2, #0x10]
    movs r0, #1
    b .L08078564
.L08078562:
    movs r0, #0
.L08078564:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08078520

    thumb_func_start func_0807856C
func_0807856C: @ 0x0807856C
    push {r4, r5, r6, lr}
    adds r2, r0, #0
    ldr r3, [r2]
    ldr r0, [r3, #8]
    movs r1, #0xff
    lsls r1, r1, #8
    ands r1, r0
    lsrs r4, r1, #8
    movs r1, #0xff
    lsls r1, r1, #0x10
    ands r1, r0
    lsrs r5, r1, #0x10
    lsrs r1, r0, #0x18
    ldrb r0, [r3, #8]
    ldrb r6, [r2, #0x18]
    cmp r0, r6
    bne .L080785A8
    movs r0, #0x19
    ldrsb r0, [r2, r0]
    cmp r4, r0
    bne .L080785A8
    ldr r0, [r3, #4]
    str r0, [r2, #4]
    ldr r0, [r2]
    ldrh r0, [r0, #2]
    str r0, [r2, #8]
    str r5, [r2, #0xc]
    str r1, [r2, #0x10]
    movs r0, #1
    b .L080785AA
.L080785A8:
    movs r0, #0
.L080785AA:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0807856C

    thumb_func_start func_080785B0
func_080785B0: @ 0x080785B0
    push {r4, r5, r6, lr}
    adds r2, r0, #0
    ldr r3, [r2]
    ldr r0, [r3, #8]
    movs r1, #0xff
    lsls r1, r1, #8
    ands r1, r0
    lsrs r4, r1, #8
    movs r1, #0xff
    lsls r1, r1, #0x10
    ands r1, r0
    lsrs r5, r1, #0x10
    lsrs r1, r0, #0x18
    ldrb r0, [r3, #8]
    ldrb r6, [r2, #0x18]
    cmp r0, r6
    bne .L080785EC
    movs r0, #0x19
    ldrsb r0, [r2, r0]
    cmp r4, r0
    bne .L080785EC
    ldr r0, [r3, #4]
    str r0, [r2, #4]
    ldr r0, [r2]
    ldrh r0, [r0, #2]
    str r0, [r2, #8]
    str r5, [r2, #0xc]
    str r1, [r2, #0x10]
    movs r0, #1
    b .L080785EE
.L080785EC:
    movs r0, #0
.L080785EE:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080785B0

    thumb_func_start func_080785F4
func_080785F4: @ 0x080785F4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r2, [r4]
    ldr r1, [r2, #8]
    movs r0, #0xff
    lsls r0, r0, #8
    ands r0, r1
    lsrs r3, r0, #8
    movs r0, #0xff
    lsls r0, r0, #0x10
    ands r1, r0
    lsrs r5, r1, #0x10
    ldrb r2, [r2, #8]
    ldrb r0, [r4, #0x18]
    cmp r2, r0
    bne .L08078648
    movs r0, #0x19
    ldrsb r0, [r4, r0]
    cmp r3, r0
    bne .L08078648
    cmp r5, #0x15
    bne .L08078632
    ldr r0, .L08078644 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x71
    bl GetUnitItemSlot
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L08078648
.L08078632:
    ldr r0, [r4]
    ldr r1, [r0, #4]
    str r1, [r4, #4]
    ldrh r0, [r0, #2]
    str r0, [r4, #8]
    str r5, [r4, #0xc]
    movs r0, #1
    b .L0807864A
    .align 2, 0
.L08078644: .4byte gActiveUnit
.L08078648:
    movs r0, #0
.L0807864A:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080785F4

    thumb_func_start func_08078650
func_08078650: @ 0x08078650
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r0, .L080786A8 @ =gActiveUnit
    ldr r2, [r0]
    ldrb r0, [r2, #0x11]
    mov ip, r0
    ldr r3, [r5]
    ldr r1, [r3, #8]
    movs r0, #0xff
    lsls r0, r0, #8
    ands r0, r1
    lsrs r4, r0, #8
    movs r0, #0xff
    lsls r0, r0, #0x10
    ands r0, r1
    lsrs r7, r0, #0x10
    lsrs r6, r1, #0x18
    movs r0, #8
    ldrsb r0, [r3, r0]
    ldrb r2, [r2, #0x10]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    cmp r0, r2
    bgt .L080786AC
    lsls r1, r4, #0x18
    mov r4, ip
    lsls r0, r4, #0x18
    asrs r4, r0, #0x18
    cmp r1, r0
    bgt .L080786AC
    lsls r0, r7, #0x18
    asrs r0, r0, #0x18
    cmp r0, r2
    blt .L080786AC
    lsls r0, r6, #0x18
    asrs r0, r0, #0x18
    cmp r0, r4
    blt .L080786AC
    ldr r0, [r3, #4]
    str r0, [r5, #4]
    ldrh r0, [r3, #2]
    str r0, [r5, #8]
    movs r0, #1
    b .L080786AE
    .align 2, 0
.L080786A8: .4byte gActiveUnit
.L080786AC:
    movs r0, #0
.L080786AE:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08078650

    thumb_func_start func_080786B4
func_080786B4: @ 0x080786B4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080786D4 @ =gPlaySt
    ldrb r0, [r0, #0x1b]
    cmp r0, #2
    bne .L080786D8
    movs r0, #2
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080786D8
    adds r0, r4, #0
    bl func_08078650
    b .L080786DA
    .align 2, 0
.L080786D4: .4byte gPlaySt
.L080786D8:
    movs r0, #0
.L080786DA:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080786B4

    thumb_func_start func_080786E0
func_080786E0: @ 0x080786E0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08078700 @ =gPlaySt
    ldrb r0, [r0, #0x1b]
    cmp r0, #3
    bne .L08078704
    movs r0, #2
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078704
    adds r0, r4, #0
    bl func_08078650
    b .L08078706
    .align 2, 0
.L08078700: .4byte gPlaySt
.L08078704:
    movs r0, #0
.L08078706:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080786E0

    thumb_func_start func_0807870C
func_0807870C: @ 0x0807870C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r0, #8]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078724
    movs r0, #0
    b .L08078730
.L08078724:
    ldr r0, [r4]
    ldr r1, [r0, #4]
    str r1, [r4, #4]
    ldrh r0, [r0, #2]
    str r0, [r4, #8]
    movs r0, #1
.L08078730:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0807870C

    thumb_func_start func_08078738
func_08078738: @ 0x08078738
    adds r3, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    ldrb r0, [r3, #0x1a]
    cmp r0, r1
    bne .L0807875C
    ldrb r0, [r3, #0x1b]
    cmp r0, r2
    bne .L0807875C
    ldr r0, [r3]
    ldr r1, [r0, #4]
    str r1, [r3, #4]
    ldrh r0, [r0, #2]
    str r0, [r3, #8]
    movs r0, #1
    b .L0807875E
.L0807875C:
    movs r0, #0
.L0807875E:
    bx lr
    func_end func_08078738

    thumb_func_start func_08078760
func_08078760: @ 0x08078760
    push {r4, r5, lr}
    adds r5, r1, #0
    adds r4, r2, #0
    ldr r1, .L08078788 @ =gActiveUnit
    ldr r2, [r1]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    cmp r1, r0
    blt .L0807878C
    cmp r1, r4
    bgt .L0807878C
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    cmp r1, r5
    blt .L0807878C
    cmp r1, r3
    bgt .L0807878C
    movs r0, #1
    b .L0807878E
    .align 2, 0
.L08078788: .4byte gActiveUnit
.L0807878C:
    movs r0, #0
.L0807878E:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08078760

    thumb_func_start func_08078794
func_08078794: @ 0x08078794
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    adds r7, r1, #0
    adds r6, r2, #0
    adds r5, r3, #0
    movs r4, #1
.L080787A4:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L080787E0
    ldr r0, [r2]
    cmp r0, #0
    beq .L080787E0
    ldr r0, [r2, #0xc]
    ldr r1, .L080787DC @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L080787E0
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    cmp r0, r8
    blt .L080787E0
    cmp r0, r6
    bgt .L080787E0
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    cmp r0, r7
    blt .L080787E0
    cmp r0, r5
    bgt .L080787E0
    movs r0, #1
    b .L080787E8
    .align 2, 0
.L080787DC: .4byte 0x00010004
.L080787E0:
    adds r4, #1
    cmp r4, #0x3f
    ble .L080787A4
    movs r0, #0
.L080787E8:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08078794

    thumb_func_start func_080787F4
func_080787F4: @ 0x080787F4
    push {lr}
    ldr r0, .L08078814 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    bne .L08078818
    movs r0, #0
    movs r1, #0xf
    movs r2, #0x19
    movs r3, #0x17
    bl func_08078794
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078818
    movs r0, #1
    b .L0807881A
    .align 2, 0
.L08078814: .4byte gPlaySt
.L08078818:
    movs r0, #0
.L0807881A:
    pop {r1}
    bx r1
    func_end func_080787F4

    thumb_func_start func_08078820
func_08078820: @ 0x08078820
    push {lr}
    ldr r0, .L08078864 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    bne .L08078860
    movs r0, #0
    movs r1, #0x18
    movs r2, #0x10
    movs r3, #0x1b
    bl func_08078794
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078868
    movs r0, #0
    movs r1, #0x15
    movs r2, #2
    movs r3, #0x17
    bl func_08078794
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078868
    movs r0, #3
    movs r1, #0x14
    movs r2, #5
    movs r3, #0x16
    bl func_08078794
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08078868
.L08078860:
    movs r0, #0
    b .L0807886A
    .align 2, 0
.L08078864: .4byte gPlaySt
.L08078868:
    movs r0, #1
.L0807886A:
    pop {r1}
    bx r1
    func_end func_08078820

    thumb_func_start func_08078870
func_08078870: @ 0x08078870
    push {lr}
    movs r0, #0xc
    movs r1, #0x15
    movs r2, #0x1f
    movs r3, #0x18
    bl func_08078794
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08078870

    thumb_func_start func_08078888
func_08078888: @ 0x08078888
    push {lr}
    ldr r0, .L080788A4 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    bne .L080788A8
    movs r0, #0x11
    movs r1, #0x15
    movs r2, #0x1f
    movs r3, #0x23
    bl func_08078794
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L080788AA
    .align 2, 0
.L080788A4: .4byte gPlaySt
.L080788A8:
    movs r0, #0
.L080788AA:
    pop {r1}
    bx r1
    func_end func_08078888

    thumb_func_start func_080788B0
func_080788B0: @ 0x080788B0
    push {lr}
    ldr r0, .L080788CC @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    bne .L080788D0
    movs r0, #0
    movs r1, #0xf
    movs r2, #8
    movs r3, #0x12
    bl func_08078794
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L080788D2
    .align 2, 0
.L080788CC: .4byte gPlaySt
.L080788D0:
    movs r0, #0
.L080788D2:
    pop {r1}
    bx r1
    func_end func_080788B0

    thumb_func_start func_080788D8
func_080788D8: @ 0x080788D8
    push {lr}
    ldr r0, .L080788F4 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    bne .L080788F8
    movs r0, #0
    movs r1, #0x18
    movs r2, #0xc
    movs r3, #0x1b
    bl func_08078794
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L080788FA
    .align 2, 0
.L080788F4: .4byte gPlaySt
.L080788F8:
    movs r0, #0
.L080788FA:
    pop {r1}
    bx r1
    func_end func_080788D8

    thumb_func_start func_08078900
func_08078900: @ 0x08078900
    push {lr}
    ldr r0, .L0807891C @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    bne .L08078920
    movs r0, #0x15
    movs r1, #0
    movs r2, #0x1e
    movs r3, #6
    bl func_08078794
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L08078922
    .align 2, 0
.L0807891C: .4byte gPlaySt
.L08078920:
    movs r0, #0
.L08078922:
    pop {r1}
    bx r1
    func_end func_08078900

    thumb_func_start func_08078928
func_08078928: @ 0x08078928
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    adds r7, r1, #0
    adds r6, r2, #0
    adds r5, r3, #0
    movs r4, #0x81
.L08078938:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08078974
    ldr r0, [r2]
    cmp r0, #0
    beq .L08078974
    ldr r0, [r2, #0xc]
    ldr r1, .L08078970 @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L08078974
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    cmp r0, r8
    blt .L08078974
    cmp r0, r6
    bgt .L08078974
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    cmp r0, r7
    blt .L08078974
    cmp r0, r5
    bgt .L08078974
    movs r0, #1
    b .L0807897C
    .align 2, 0
.L08078970: .4byte 0x00010004
.L08078974:
    adds r4, #1
    cmp r4, #0xbf
    ble .L08078938
    movs r0, #0
.L0807897C:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08078928

    thumb_func_start CheckAvailableTurnEvent
CheckAvailableTurnEvent: @ 0x08078988
    push {lr}
    sub sp, #0x1c
    ldr r0, .L080789AC @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0]
    str r0, [sp]
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    bne .L080789B0
    movs r0, #0
    b .L080789B2
    .align 2, 0
.L080789AC: .4byte gPlaySt
.L080789B0:
    movs r0, #1
.L080789B2:
    add sp, #0x1c
    pop {r1}
    bx r1
    func_end CheckAvailableTurnEvent

    thumb_func_start StartAvailableTurnEvents
StartAvailableTurnEvents: @ 0x080789B8
    push {lr}
    sub sp, #0x1c
    ldr r0, .L080789E0 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0]
    str r0, [sp]
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L080789F4
    mov r0, sp
    bl func_08078100
    b .L080789EA
    .align 2, 0
.L080789E0: .4byte gPlaySt
.L080789E4:
    mov r0, sp
    bl func_08078100
.L080789EA:
    mov r0, sp
    bl func_08078180
    cmp r0, #0
    bne .L080789E4
.L080789F4:
    add sp, #0x1c
    pop {r0}
    bx r0
    func_end StartAvailableTurnEvents

    thumb_func_start func_080789FC
func_080789FC: @ 0x080789FC
    push {r4, r5, lr}
    sub sp, #0x1c
    adds r4, r0, #0
    adds r5, r1, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    ldr r0, .L08078A30 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #4]
    str r0, [sp]
    mov r0, sp
    strb r4, [r0, #0x1a]
    strb r5, [r0, #0x1b]
    bl func_0807812C
    cmp r0, #0
    bne .L08078A34
    movs r0, #0
    b .L08078A36
    .align 2, 0
.L08078A30: .4byte gPlaySt
.L08078A34:
    movs r0, #1
.L08078A36:
    add sp, #0x1c
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080789FC

    thumb_func_start func_08078A40
func_08078A40: @ 0x08078A40
    push {r4, r5, lr}
    sub sp, #0x1c
    adds r4, r0, #0
    adds r5, r1, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    ldr r0, .L08078A7C @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #4]
    str r0, [sp]
    mov r0, sp
    strb r4, [r0, #0x1a]
    strb r5, [r0, #0x1b]
    bl func_0807812C
    cmp r0, #0
    beq .L08078A74
    mov r0, sp
    bl func_08078100
.L08078A74:
    add sp, #0x1c
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08078A7C: .4byte gPlaySt
    func_end func_08078A40

    thumb_func_start func_08078A80
func_08078A80: @ 0x08078A80
    push {r4, r5, r6, r7, lr}
    adds r4, r2, #0
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    lsls r1, r1, #0x18
    lsrs r6, r1, #0x18
    movs r5, #0
    ldr r0, .L08078A94 @ =0x08C9F9F4
    b .L08078AC2
    .align 2, 0
.L08078A94: .4byte 0x08C9F9F4
.L08078A98:
    adds r2, r1, #0
    ldrb r1, [r0, #1]
    cmp r2, r7
    bne .L08078AA4
    cmp r1, r6
    beq .L08078AAC
.L08078AA4:
    cmp r1, r7
    bne .L08078AC0
    cmp r2, r6
    bne .L08078AC0
.L08078AAC:
    cmp r4, #1
    bne .L08078AB2
    ldr r5, [r0, #4]
.L08078AB2:
    cmp r4, #2
    bne .L08078AB8
    ldr r5, [r0, #8]
.L08078AB8:
    cmp r4, #3
    bne .L08078AC8
    ldr r5, [r0, #0xc]
    b .L08078AC8
.L08078AC0:
    adds r0, #0x14
.L08078AC2:
    ldrb r1, [r0]
    cmp r1, #0
    bne .L08078A98
.L08078AC8:
    cmp r5, #0
    beq .L08078AEC
    adds r1, r7, #0
    adds r2, r6, #0
    adds r3, r4, #0
    bl func_08078B4C
    adds r1, r0, #0
    adds r0, r5, #0
    bl func_0800ED90
    bl func_0800ADB8
    adds r0, r7, #0
    adds r1, r6, #0
    adds r2, r4, #0
    bl func_0809EE50
.L08078AEC:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08078A80

    thumb_func_start func_08078AF4
func_08078AF4: @ 0x08078AF4
    push {r4, r5, r6, lr}
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
    lsls r1, r1, #0x18
    lsrs r4, r1, #0x18
    movs r5, #0
    ldr r1, .L08078B04 @ =0x08C9F9F4
    b .L08078B32
    .align 2, 0
.L08078B04: .4byte 0x08C9F9F4
.L08078B08:
    adds r0, r3, #0
    ldrb r3, [r1, #1]
    cmp r0, r6
    bne .L08078B14
    cmp r3, r4
    beq .L08078B1C
.L08078B14:
    cmp r3, r6
    bne .L08078B30
    cmp r0, r4
    bne .L08078B30
.L08078B1C:
    cmp r2, #1
    bne .L08078B22
    ldr r5, [r1, #4]
.L08078B22:
    cmp r2, #2
    bne .L08078B28
    ldr r5, [r1, #8]
.L08078B28:
    cmp r2, #3
    bne .L08078B38
    ldr r5, [r1, #0xc]
    b .L08078B38
.L08078B30:
    adds r1, #0x14
.L08078B32:
    ldrb r3, [r1]
    cmp r3, #0
    bne .L08078B08
.L08078B38:
    cmp r5, #0
    beq .L08078B46
    adds r0, r5, #0
    bl func_0800EDC8
    bl func_0800ADB8
.L08078B46:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08078AF4

    thumb_func_start func_08078B4C
func_08078B4C: @ 0x08078B4C
    push {r4, r5, lr}
    adds r5, r3, #0
    lsls r1, r1, #0x18
    lsrs r4, r1, #0x18
    lsls r2, r2, #0x18
    lsrs r3, r2, #0x18
    adds r2, r0, #0
    cmp r2, #0
    bne .L08078B82
    ldr r2, .L08078B64 @ =0x08C9F9F4
    b .L08078B6A
    .align 2, 0
.L08078B64: .4byte 0x08C9F9F4
.L08078B68:
    adds r2, #0x14
.L08078B6A:
    ldrb r0, [r2]
    cmp r0, #0
    beq .L08078B82
    ldrb r1, [r2, #1]
    cmp r0, r4
    bne .L08078B7A
    cmp r1, r3
    beq .L08078B82
.L08078B7A:
    cmp r1, r4
    bne .L08078B68
    cmp r0, r3
    bne .L08078B68
.L08078B82:
    ldr r1, [r2, #0x10]
    cmp r1, #0
    beq .L08078BC8
    subs r0, r5, #1
    lsls r0, r0, #3
    adds r3, r1, #0
    lsrs r3, r0
    movs r0, #0xff
    ands r3, r0
    cmp r3, #4
    bhi .L08078BC8
    lsls r0, r3, #2
    ldr r1, .L08078BA4 @ =.L08078BA8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08078BA4: .4byte .L08078BA8
.L08078BA8: @ jump table
    .4byte .L08078BC8 @ case 0
    .4byte .L08078BBC @ case 1
    .4byte .L08078BC0 @ case 2
    .4byte .L08078BC4 @ case 3
    .4byte .L08078BC4 @ case 4
.L08078BBC:
    movs r0, #0x41
    b .L08078BCA
.L08078BC0:
    movs r0, #0x4c
    b .L08078BCA
.L08078BC4:
    movs r0, #0x6a
    b .L08078BCA
.L08078BC8:
    movs r0, #0
.L08078BCA:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08078B4C

    thumb_func_start func_08078BD0
func_08078BD0: @ 0x08078BD0
    push {r4, r5, lr}
    sub sp, #0x1c
    adds r4, r0, #0
    adds r5, r1, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    ldr r0, .L08078C04 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #8]
    str r0, [sp]
    mov r0, sp
    strb r4, [r0, #0x18]
    strb r5, [r0, #0x19]
    bl func_0807812C
    cmp r0, #0
    beq .L08078C08
    ldr r0, [sp, #0xc]
    b .L08078C0A
    .align 2, 0
.L08078C04: .4byte gPlaySt
.L08078C08:
    movs r0, #0
.L08078C0A:
    add sp, #0x1c
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08078BD0

    thumb_func_start func_08078C14
func_08078C14: @ 0x08078C14
    push {r4, r5, lr}
    sub sp, #0x1c
    adds r4, r0, #0
    adds r5, r1, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    ldr r0, .L08078C58 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #8]
    str r0, [sp]
    mov r0, sp
    strb r4, [r0, #0x18]
    strb r5, [r0, #0x19]
    bl func_0807812C
    cmp r0, #0
    bne .L08078C44
    b .L08078DF2
.L08078C44:
    ldr r0, [sp, #0xc]
    cmp r0, #0x1d
    bls .L08078C4C
    b .L08078DF2
.L08078C4C:
    lsls r0, r0, #2
    ldr r1, .L08078C5C @ =.L08078C60
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08078C58: .4byte gPlaySt
.L08078C5C: .4byte .L08078C60
.L08078C60: @ jump table
    .4byte .L08078DF0 @ case 0
    .4byte .L08078DF2 @ case 1
    .4byte .L08078DF2 @ case 2
    .4byte .L08078DF2 @ case 3
    .4byte .L08078DF2 @ case 4
    .4byte .L08078DF2 @ case 5
    .4byte .L08078DF2 @ case 6
    .4byte .L08078DF2 @ case 7
    .4byte .L08078DF2 @ case 8
    .4byte .L08078DF2 @ case 9
    .4byte .L08078DF2 @ case 10
    .4byte .L08078DF2 @ case 11
    .4byte .L08078DF2 @ case 12
    .4byte .L08078DF2 @ case 13
    .4byte .L08078CD8 @ case 14
    .4byte .L08078CD8 @ case 15
    .4byte .L08078D08 @ case 16
    .4byte .L08078D08 @ case 17
    .4byte .L08078D3A @ case 18
    .4byte .L08078DBC @ case 19
    .4byte .L08078DCC @ case 20
    .4byte .L08078DDC @ case 21
    .4byte .L08078DEC @ case 22
    .4byte .L08078DF2 @ case 23
    .4byte .L08078DF2 @ case 24
    .4byte .L08078DF2 @ case 25
    .4byte .L08078DF2 @ case 26
    .4byte .L08078DF2 @ case 27
    .4byte .L08078DF2 @ case 28
    .4byte .L08078CE6 @ case 29
.L08078CD8:
    mov r0, sp
    bl func_08078100
    ldr r0, [sp, #0x10]
    cmp r0, #3
    beq .L08078CE6
    b .L08078DF2
.L08078CE6:
    mov r0, sp
    ldrb r0, [r0, #0x18]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r1, sp
    ldrb r1, [r1, #0x19]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl GetMapChangeIdAt
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    bl func_0800F028
.L08078D02:
    bl func_0800ADB8
    b .L08078DF2
.L08078D08:
    ldr r0, [sp, #4]
    cmp r0, #1
    bne .L08078D32
    mov r0, sp
    ldrb r0, [r0, #0x18]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r1, sp
    ldrb r1, [r1, #0x19]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl GetMapChangeIdAt
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    bl func_0800F028
    ldr r0, [sp, #8]
    bl SetFlag
    b .L08078D02
.L08078D32:
    mov r0, sp
    bl func_08078100
    b .L08078D02
.L08078D3A:
    ldr r4, [sp, #0x14]
    cmp r4, #0
    bne .L08078D64
    mov r0, sp
    ldrb r0, [r0, #0x18]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r1, sp
    ldrb r1, [r1, #0x19]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl GetMapChangeIdAt
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    bl func_0800F028
    mov r0, sp
    bl func_08078100
    b .L08078DB0
.L08078D64:
    cmp r4, #0x76
    beq .L08078D8E
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    mov r0, sp
    ldrb r0, [r0, #0x18]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r1, sp
    ldrb r1, [r1, #0x19]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl GetMapChangeIdAt
    adds r1, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    adds r0, r4, #0
    bl func_0800F044
    b .L08078DB0
.L08078D8E:
    ldr r4, [sp, #0x10]
    mov r0, sp
    ldrb r0, [r0, #0x18]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    mov r1, sp
    ldrb r1, [r1, #0x19]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl GetMapChangeIdAt
    adds r1, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    adds r0, r4, #0
    bl func_0800F06C
.L08078DB0:
    bl func_0800ADB8
    ldr r0, [sp, #8]
    bl SetFlag
    b .L08078DF2
.L08078DBC:
    ldr r0, .L08078DC8 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [sp, #4]
    bl func_080B03D4
    b .L08078DF2
    .align 2, 0
.L08078DC8: .4byte gActiveUnit
.L08078DCC:
    ldr r0, .L08078DD8 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [sp, #4]
    bl func_080B03F4
    b .L08078DF2
    .align 2, 0
.L08078DD8: .4byte gActiveUnit
.L08078DDC:
    ldr r0, .L08078DE8 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [sp, #4]
    bl func_080B0414
    b .L08078DF2
    .align 2, 0
.L08078DE8: .4byte gActiveUnit
.L08078DEC:
    mov r8, r8
    b .L08078DF2
.L08078DF0:
    mov r8, r8
.L08078DF2:
    add sp, #0x1c
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08078C14

    thumb_func_start func_08078DFC
func_08078DFC: @ 0x08078DFC
    push {lr}
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078C14
    pop {r0}
    bx r0
    func_end func_08078DFC

    thumb_func_start func_08078E10
func_08078E10: @ 0x08078E10
    push {lr}
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078BD0
    cmp r0, #0xe
    beq .L08078E26
    movs r0, #0
    b .L08078E28
.L08078E26:
    movs r0, #1
.L08078E28:
    pop {r1}
    bx r1
    func_end func_08078E10

    thumb_func_start func_08078E2C
func_08078E2C: @ 0x08078E2C
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    lsls r1, r1, #0x18
    asrs r4, r1, #0x18
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078E10
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08078E4C
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078C14
.L08078E4C:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08078E2C

    thumb_func_start func_08078E54
func_08078E54: @ 0x08078E54
    push {r4, r5, r6, r7, lr}
    lsls r0, r0, #0x18
    lsls r1, r1, #0x18
    lsrs r6, r0, #0x18
    asrs r5, r0, #0x18
    lsrs r7, r1, #0x18
    asrs r4, r1, #0x18
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078BD0
    cmp r0, #0x13
    beq .L08078EB0
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078BD0
    cmp r0, #0x14
    beq .L08078EB0
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078BD0
    cmp r0, #0x15
    bne .L08078E98
    ldr r0, .L08078EAC @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x71
    bl GetUnitItemSlot
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    bne .L08078EB0
.L08078E98:
    lsls r0, r6, #0x18
    asrs r0, r0, #0x18
    lsls r1, r7, #0x18
    asrs r1, r1, #0x18
    bl func_08078BD0
    cmp r0, #0x16
    beq .L08078EB0
    movs r0, #0
    b .L08078EB2
    .align 2, 0
.L08078EAC: .4byte gActiveUnit
.L08078EB0:
    movs r0, #1
.L08078EB2:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08078E54

    thumb_func_start func_08078EB8
func_08078EB8: @ 0x08078EB8
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    lsls r1, r1, #0x18
    asrs r4, r1, #0x18
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078E54
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08078ED8
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078C14
.L08078ED8:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08078EB8

    thumb_func_start func_08078EE0
func_08078EE0: @ 0x08078EE0
    push {lr}
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078BD0
    cmp r0, #0x12
    beq .L08078EF6
    movs r0, #0
    b .L08078EF8
.L08078EF6:
    movs r0, #1
.L08078EF8:
    pop {r1}
    bx r1
    func_end func_08078EE0

    thumb_func_start func_08078EFC
func_08078EFC: @ 0x08078EFC
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    lsls r1, r1, #0x18
    asrs r4, r1, #0x18
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078EE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08078F1C
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078C14
.L08078F1C:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08078EFC

    thumb_func_start func_08078F24
func_08078F24: @ 0x08078F24
    push {lr}
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078BD0
    cmp r0, #0x10
    beq .L08078F3A
    movs r0, #0
    b .L08078F3C
.L08078F3A:
    movs r0, #1
.L08078F3C:
    pop {r1}
    bx r1
    func_end func_08078F24

    thumb_func_start func_08078F40
func_08078F40: @ 0x08078F40
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    lsls r1, r1, #0x18
    asrs r4, r1, #0x18
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078F24
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08078F60
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078C14
.L08078F60:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08078F40

    thumb_func_start func_08078F68
func_08078F68: @ 0x08078F68
    push {lr}
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_08078BD0
    cmp r0, #0x11
    beq .L08078F7E
    movs r0, #0
    b .L08078F80
.L08078F7E:
    movs r0, #1
.L08078F80:
    pop {r1}
    bx r1
    func_end func_08078F68

    thumb_func_start func_08078F84
func_08078F84: @ 0x08078F84
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    lsls r1, r1, #0x18
    asrs r4, r1, #0x18
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078F68
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08078FA4
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08078C14
.L08078FA4:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08078F84

    thumb_func_start ShouldCallEndEvent
ShouldCallEndEvent: @ 0x08078FAC
    push {lr}
    bl func_080791C0
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end ShouldCallEndEvent

    thumb_func_start MaybeCallEndEvent_
MaybeCallEndEvent_: @ 0x08078FBC
    push {lr}
    bl func_080791D0
    pop {r0}
    bx r0
    func_end MaybeCallEndEvent_

    thumb_func_start TryCallSelectEvents
TryCallSelectEvents: @ 0x08078FC8
    push {lr}
    sub sp, #0x1c
    ldr r0, .L08078FFC @ =gPlaySt
    movs r1, #0xe
    ldrsb r1, [r0, r1]
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r2, .L08079000 @ =0x08C9EA2C
    lsls r0, r1, #4
    adds r0, r0, r2
    ldr r0, [r0]
    str r0, [sp]
    cmp r1, #0xb
    bhi .L08078FF4
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L08078FF4
    mov r0, sp
    bl func_08078100
.L08078FF4:
    movs r0, #0
    add sp, #0x1c
    pop {r1}
    bx r1
    .align 2, 0
.L08078FFC: .4byte gPlaySt
.L08079000: .4byte 0x08C9EA2C
    func_end TryCallSelectEvents

    thumb_func_start StartAfterUnitMovedEvent
StartAfterUnitMovedEvent: @ 0x08079004
    push {r4, lr}
    sub sp, #0x1c
    ldr r0, .L08079048 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    ldr r0, .L0807904C @ =0x08C9EA2C
    lsls r1, r4, #4
    adds r0, #8
    adds r1, r1, r0
    ldr r0, [r1]
    str r0, [sp]
    cmp r4, #0xb
    bhi .L08079050
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L08079050
    mov r0, sp
    bl func_08078100
    cmp r4, #1
    bne .L08079050
    bl func_0807CEFC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08079050
    movs r0, #1
    b .L08079052
    .align 2, 0
.L08079048: .4byte gPlaySt
.L0807904C: .4byte 0x08C9EA2C
.L08079050:
    movs r0, #0
.L08079052:
    add sp, #0x1c
    pop {r4}
    pop {r1}
    bx r1
    func_end StartAfterUnitMovedEvent

    thumb_func_start StartDestSelectedEvent
StartDestSelectedEvent: @ 0x0807905C
    push {lr}
    sub sp, #0x1c
    ldr r0, .L0807909C @ =gPlaySt
    movs r2, #0xe
    ldrsb r2, [r0, r2]
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    ldr r0, .L080790A0 @ =0x08C9EA2C
    lsls r1, r2, #4
    adds r0, #4
    adds r1, r1, r0
    ldr r0, [r1]
    str r0, [sp]
    cmp r2, #0xb
    bhi .L080790AA
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L080790AA
    mov r0, sp
    bl func_0807821C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L080790A4
    mov r0, sp
    bl func_08078100
    movs r0, #1
    b .L080790AC
    .align 2, 0
.L0807909C: .4byte gPlaySt
.L080790A0: .4byte 0x08C9EA2C
.L080790A4:
    mov r0, sp
    bl func_08078120
.L080790AA:
    movs r0, #0
.L080790AC:
    add sp, #0x1c
    pop {r1}
    bx r1
    func_end StartDestSelectedEvent

    thumb_func_start func_080790B4
func_080790B4: @ 0x080790B4
    movs r0, #0
    bx lr
    func_end func_080790B4

    thumb_func_start func_080790B8
func_080790B8: @ 0x080790B8
    movs r0, #0
    bx lr
    func_end func_080790B8

    thumb_func_start func_080790BC
func_080790BC: @ 0x080790BC
    movs r0, #0
    bx lr
    func_end func_080790BC

    thumb_func_start func_080790C0
func_080790C0: @ 0x080790C0
    movs r0, #0
    bx lr
    func_end func_080790C0

    thumb_func_start func_080790C4
func_080790C4: @ 0x080790C4
    push {lr}
    sub sp, #0x1c
    ldr r0, .L080790FC @ =gPlaySt
    movs r2, #0xe
    ldrsb r2, [r0, r2]
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    ldr r0, .L08079100 @ =0x08C9EA2C
    lsls r1, r2, #4
    adds r0, #0xc
    adds r1, r1, r0
    ldr r0, [r1]
    str r0, [sp]
    cmp r2, #0xb
    bhi .L080790F2
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L080790F2
    mov r0, sp
    bl func_08078100
.L080790F2:
    movs r0, #0
    add sp, #0x1c
    pop {r1}
    bx r1
    .align 2, 0
.L080790FC: .4byte gPlaySt
.L08079100: .4byte 0x08C9EA2C
    func_end func_080790C4

    thumb_func_start func_08079104
func_08079104: @ 0x08079104
    push {lr}
    sub sp, #0x1c
    ldr r0, .L08079130 @ =gPlaySt
    movs r2, #0xe
    ldrsb r2, [r0, r2]
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    ldr r0, .L08079134 @ =0x08C9EA2C
    lsls r1, r2, #4
    adds r0, #0xc
    adds r1, r1, r0
    ldr r0, [r1]
    str r0, [sp]
    cmp r2, #0xb
    bhi .L08079138
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L08079138
    movs r0, #1
    b .L0807913A
    .align 2, 0
.L08079130: .4byte gPlaySt
.L08079134: .4byte 0x08C9EA2C
.L08079138:
    movs r0, #0
.L0807913A:
    add sp, #0x1c
    pop {r1}
    bx r1
    func_end func_08079104

    thumb_func_start CheckForWaitEvents
CheckForWaitEvents: @ 0x08079140
    push {lr}
    sub sp, #0x1c
    ldr r0, .L08079170 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #0xc]
    str r0, [sp]
    mov r1, sp
    ldr r0, .L08079174 @ =gActiveUnit
    ldr r2, [r0]
    ldrb r0, [r2, #0x10]
    strb r0, [r1, #0x18]
    ldrb r0, [r2, #0x11]
    strb r0, [r1, #0x19]
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    bne .L08079178
    movs r0, #0
    b .L0807917A
    .align 2, 0
.L08079170: .4byte gPlaySt
.L08079174: .4byte gActiveUnit
.L08079178:
    movs r0, #1
.L0807917A:
    add sp, #0x1c
    pop {r1}
    bx r1
    func_end CheckForWaitEvents

    thumb_func_start RunWaitEvents
RunWaitEvents: @ 0x08079180
    push {lr}
    sub sp, #0x1c
    ldr r0, .L080791B8 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #0xc]
    str r0, [sp]
    mov r1, sp
    ldr r0, .L080791BC @ =gActiveUnit
    ldr r2, [r0]
    ldrb r0, [r2, #0x10]
    strb r0, [r1, #0x18]
    ldrb r0, [r2, #0x11]
    strb r0, [r1, #0x19]
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L080791B2
    mov r0, sp
    bl func_08078100
.L080791B2:
    add sp, #0x1c
    pop {r0}
    bx r0
    .align 2, 0
.L080791B8: .4byte gPlaySt
.L080791BC: .4byte gActiveUnit
    func_end RunWaitEvents

    thumb_func_start func_080791C0
func_080791C0: @ 0x080791C0
    push {lr}
    movs r0, #3
    bl CheckFlag
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_080791C0

    thumb_func_start func_080791D0
func_080791D0: @ 0x080791D0
    push {lr}
    movs r0, #3
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080791EC
    bl ShouldCallEndEvent
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080791EC
    bl func_08079A38
.L080791EC:
    pop {r0}
    bx r0
    func_end func_080791D0

    thumb_func_start func_080791F0
func_080791F0: @ 0x080791F0
    push {r4, lr}
    ldr r4, .L08079208 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterEventInfo
    ldrb r4, [r4, #0x1b]
    cmp r4, #3
    beq .L0807920C
    ldr r0, [r0, #0x10]
    b .L0807920E
    .align 2, 0
.L08079208: .4byte gPlaySt
.L0807920C:
    ldr r0, [r0, #0x14]
.L0807920E:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080791F0

    thumb_func_start func_08079214
func_08079214: @ 0x08079214
    push {r4, r5, lr}
    sub sp, #0x1c
    ldr r5, .L08079248 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r5, r0]
    bl GetChapterEventInfo
    adds r4, r0, #0
    movs r0, #0
    str r0, [sp, #8]
    ldrb r0, [r5, #0xe]
    cmp r0, #0x27
    bne .L08079232
    bl func_0807D7E0
.L08079232:
    ldrb r0, [r5, #0x1b]
    cmp r0, #3
    bne .L08079250
    movs r0, #0x40
    ldrb r5, [r5, #0x14]
    ands r0, r5
    cmp r0, #0
    beq .L0807924C
    ldr r0, [r4, #0x24]
    b .L0807925C
    .align 2, 0
.L08079248: .4byte gPlaySt
.L0807924C:
    ldr r0, [r4, #0x20]
    b .L0807925C
.L08079250:
    movs r0, #0x40
    ldrb r5, [r5, #0x14]
    ands r0, r5
    cmp r0, #0
    beq .L08079264
    ldr r0, [r4, #0x1c]
.L0807925C:
    str r0, [sp, #4]
    bl LoadUnits
    b .L0807926C
.L08079264:
    ldr r0, [r4, #0x18]
    str r0, [sp, #4]
    bl LoadUnits
.L0807926C:
    bl func_080799C8
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    add sp, #0x1c
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08079214

    thumb_func_start func_08079280
func_08079280: @ 0x08079280
    push {r4, lr}
    ldr r4, .L080792A4 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterEventInfo
    adds r1, r0, #0
    ldrb r0, [r4, #0x1b]
    cmp r0, #3
    bne .L080792AC
    movs r0, #0x40
    ldrb r4, [r4, #0x14]
    ands r0, r4
    cmp r0, #0
    beq .L080792A8
    ldr r0, [r1, #0x34]
    b .L080792BC
    .align 2, 0
.L080792A4: .4byte gPlaySt
.L080792A8:
    ldr r0, [r1, #0x30]
    b .L080792BC
.L080792AC:
    movs r0, #0x40
    ldrb r4, [r4, #0x14]
    ands r0, r4
    cmp r0, #0
    bne .L080792BA
    ldr r0, [r1, #0x28]
    b .L080792BC
.L080792BA:
    ldr r0, [r1, #0x2c]
.L080792BC:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08079280

    thumb_func_start func_080792C4
func_080792C4: @ 0x080792C4
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    lsls r1, r1, #0x18
    lsrs r4, r1, #0x18
    ldr r3, .L080792E0 @ =0x08C9EDA0
    ldr r1, .L080792E4 @ =gPlaySt
    movs r0, #0x80
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    beq .L08079310
    b .L08079316
    .align 2, 0
.L080792E0: .4byte 0x08C9EDA0
.L080792E4: .4byte gPlaySt
.L080792E8:
    adds r0, r3, #0
    b .L08079318
.L080792EC:
    ldrb r2, [r3]
    cmp r5, r2
    bne .L080792F6
    cmp r4, r0
    beq .L08079300
.L080792F6:
    ldrb r0, [r3, #1]
    cmp r5, r0
    bne .L0807930E
    cmp r4, r2
    bne .L0807930E
.L08079300:
    ldrb r2, [r3, #2]
    cmp r2, #0x43
    beq .L080792E8
    movs r0, #0xe
    ldrsb r0, [r1, r0]
    cmp r0, r2
    beq .L080792E8
.L0807930E:
    adds r3, #0x10
.L08079310:
    ldrb r0, [r3, #1]
    cmp r0, #0
    bne .L080792EC
.L08079316:
    movs r0, #0
.L08079318:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080792C4

    thumb_func_start func_08079320
func_08079320: @ 0x08079320
    push {r4, r5, lr}
    adds r4, r1, #0
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    b .L0807935A
.L0807932A:
    ldr r0, [r4, #8]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08079358
    ldrb r0, [r4]
    cmp r5, r0
    bne .L08079358
    ldrb r1, [r4, #1]
    cmp r1, #0x43
    beq .L08079350
    ldr r0, .L08079354 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r4, #1]
    cmp r0, r1
    bne .L08079358
.L08079350:
    adds r0, r4, #0
    b .L08079362
    .align 2, 0
.L08079354: .4byte gPlaySt
.L08079358:
    adds r4, #0xc
.L0807935A:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0807932A
    movs r0, #0
.L08079362:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08079320

    thumb_func_start func_08079368
func_08079368: @ 0x08079368
    push {r4, r5, lr}
    adds r4, r1, #0
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    b .L080793A2
.L08079372:
    ldr r0, [r4, #0xc]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080793A0
    ldrb r0, [r4]
    cmp r5, r0
    bne .L080793A0
    ldrb r1, [r4, #1]
    cmp r1, #0x43
    beq .L08079398
    ldr r0, .L0807939C @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r4, #1]
    cmp r0, r1
    bne .L080793A0
.L08079398:
    adds r0, r4, #0
    b .L080793AA
    .align 2, 0
.L0807939C: .4byte gPlaySt
.L080793A0:
    adds r4, #0x10
.L080793A2:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08079372
    movs r0, #0
.L080793AA:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08079368

    thumb_func_start func_080793B0
func_080793B0: @ 0x080793B0
    push {r4, r5, lr}
    adds r4, r1, #0
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    b .L080793EA
.L080793BA:
    ldr r0, [r4, #8]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080793E8
    ldrb r0, [r4]
    cmp r5, r0
    bne .L080793E8
    ldrb r1, [r4, #1]
    cmp r1, #0x43
    beq .L080793E0
    ldr r0, .L080793E4 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r1, [r4, #1]
    cmp r0, r1
    bne .L080793E8
.L080793E0:
    adds r0, r4, #0
    b .L080793F2
    .align 2, 0
.L080793E4: .4byte gPlaySt
.L080793E8:
    adds r4, #0xc
.L080793EA:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L080793BA
    movs r0, #0
.L080793F2:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080793B0

    thumb_func_start func_080793F8
func_080793F8: @ 0x080793F8
    push {r4, r5, r6, r7, lr}
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    adds r7, r4, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    adds r5, r1, #0
    adds r0, r4, #0
    bl func_080792C4
    cmp r0, #0
    beq .L0807941E
    ldr r0, [r0, #0xc]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0807945C
    b .L0807944E
.L0807941E:
    ldr r6, .L08079454 @ =0x08C9EAF4
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08079320
    cmp r0, #0
    bne .L0807944E
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08079320
    cmp r0, #0
    bne .L0807944E
    ldr r1, .L08079458 @ =0x08C9F130
    adds r0, r7, #0
    bl func_08079320
    cmp r0, #0
    beq .L0807945C
    bl func_0802A804
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0807945C
.L0807944E:
    movs r0, #1
    b .L0807945E
    .align 2, 0
.L08079454: .4byte 0x08C9EAF4
.L08079458: .4byte 0x08C9F130
.L0807945C:
    movs r0, #0
.L0807945E:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080793F8

    thumb_func_start func_08079464
func_08079464: @ 0x08079464
    push {r4, r5, r6, r7, lr}
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    adds r7, r4, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    adds r6, r1, #0
    adds r0, r4, #0
    bl func_080792C4
    adds r5, r0, #0
    cmp r5, #0
    beq .L080794A8
    ldr r0, [r5, #0xc]
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08079508
    ldr r0, [r5, #4]
    cmp r0, #0
    beq .L08079496
    bl func_0800ED78
    b .L0807949C
.L08079496:
    ldr r0, [r5, #8]
    bl StartEvent
.L0807949C:
    bl func_0800ADB8
    ldr r0, [r5, #0xc]
    bl SetFlag
    b .L08079508
.L080794A8:
    ldr r5, .L080794DC @ =0x08C9EAF4
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08079320
    adds r4, r0, #0
    cmp r4, #0
    bne .L080794C6
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08079320
    adds r4, r0, #0
    cmp r4, #0
    beq .L080794E0
.L080794C6:
    ldr r0, [r4, #4]
    cmp r0, #0
    beq .L080794D4
    bl func_0800ED78
    bl func_0800ADB8
.L080794D4:
    ldr r0, [r4, #8]
    bl SetFlag
    b .L08079508
    .align 2, 0
.L080794DC: .4byte 0x08C9EAF4
.L080794E0:
    ldr r1, .L08079510 @ =0x08C9F130
    adds r0, r7, #0
    bl func_08079320
    adds r4, r0, #0
    cmp r4, #0
    beq .L08079508
    bl func_0802A804
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08079508
    ldr r0, [r4, #4]
    bl func_0800ED78
    bl func_0800ADB8
    ldr r0, [r4, #8]
    bl SetFlag
.L08079508:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08079510: .4byte 0x08C9F130
    func_end func_08079464

    thumb_func_start func_08079514
func_08079514: @ 0x08079514
    push {r4, r5, r6, lr}
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    adds r5, r4, #0
    ldr r1, .L08079550 @ =0x08C9F2EC
    adds r0, r4, #0
    bl func_08079368
    cmp r0, #0
    bne .L0807954C
    ldr r6, .L08079554 @ =gPlaySt
    ldr r1, .L08079558 @ =0x08C9F22C
    ldrb r0, [r6, #0x1b]
    cmp r0, #1
    bne .L08079534
    ldr r1, .L0807955C @ =0x08C9F16C
.L08079534:
    adds r0, r4, #0
    bl func_080793B0
    cmp r0, #0
    bne .L0807954C
    ldrb r6, [r6, #0x1b]
    cmp r6, #1
    beq .L08079560
    cmp r5, #0xf
    beq .L0807954C
    cmp r5, #0x15
    bne .L08079560
.L0807954C:
    movs r0, #1
    b .L08079562
    .align 2, 0
.L08079550: .4byte 0x08C9F2EC
.L08079554: .4byte gPlaySt
.L08079558: .4byte 0x08C9F22C
.L0807955C: .4byte 0x08C9F16C
.L08079560:
    movs r0, #0
.L08079562:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08079514

    thumb_func_start func_08079568
func_08079568: @ 0x08079568
    push {r4, r5, r6, lr}
    sub sp, #8
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    movs r5, #1
.L08079572:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L08079614
    ldr r0, [r4]
    cmp r0, #0
    beq .L08079614
    ldrb r0, [r0, #4]
    cmp r0, r6
    bne .L08079614
    ldr r0, [r4, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08079614
    lsls r0, r6, #0x18
    lsrs r0, r0, #0x18
    movs r1, #0
    movs r2, #7
    bl func_0809FEE8
    adds r0, r4, #0
    bl UnitKill
    adds r0, r4, #0
    movs r1, #0
    bl SetUnitHp
    ldr r0, .L0807960C @ =0x0203A3F0
    ldrb r1, [r0, #0xb]
    ldrb r2, [r4, #0xb]
    cmp r1, r2
    bne .L080795C0
    adds r1, r4, #0
    movs r2, #0x48
    bl memcpy
.L080795C0:
    ldr r0, .L08079610 @ =0x0203A470
    ldrb r1, [r0, #0xb]
    ldrb r2, [r4, #0xb]
    cmp r1, r2
    bne .L080795D2
    adds r1, r4, #0
    movs r2, #0x48
    bl memcpy
.L080795D2:
    ldr r0, [r4, #0xc]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L080795EA
    ldrb r0, [r4, #0x1b]
    bl GetUnit
    movs r1, #0
    movs r2, #0
    bl UnitDrop
.L080795EA:
    ldr r0, [r4, #0xc]
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L0807961A
    adds r0, r4, #0
    mov r1, sp
    add r2, sp, #4
    bl UnitGetDeathDropLocation
    ldr r1, [sp]
    ldr r2, [sp, #4]
    adds r0, r4, #0
    bl UnitDrop
    b .L0807961A
    .align 2, 0
.L0807960C: .4byte 0x0203A3F0
.L08079610: .4byte 0x0203A470
.L08079614:
    adds r5, #1
    cmp r5, #0x3f
    ble .L08079572
.L0807961A:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08079568

    thumb_func_start func_08079624
func_08079624: @ 0x08079624
    push {r4, r5, r6, lr}
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    ldr r6, .L08079674 @ =gPlaySt
    ldr r1, .L08079678 @ =0x08C9F22C
    ldrb r0, [r6, #0x1b]
    cmp r0, #1
    bne .L08079636
    ldr r1, .L0807967C @ =0x08C9F16C
.L08079636:
    adds r0, r5, #0
    bl func_080793B0
    adds r4, r0, #0
    cmp r4, #0
    beq .L0807969A
    ldr r0, [r4, #4]
    cmp r0, #0
    beq .L0807964C
    bl StartEvent
.L0807964C:
    bl func_0800ADB8
    ldr r0, [r4, #8]
    bl SetFlag
    ldr r0, [r4, #8]
    cmp r0, #0x65
    bne .L08079680
    movs r0, #0x2b
    movs r1, #0
    bl StartBgm
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #1
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    b .L080796FC
    .align 2, 0
.L08079674: .4byte gPlaySt
.L08079678: .4byte 0x08C9F22C
.L0807967C: .4byte 0x08C9F16C
.L08079680:
    adds r0, r5, #0
    bl GetUnitFromCharId
    movs r1, #0xc0
    ldrb r0, [r0, #0xb]
    ands r1, r0
    cmp r1, #0
    bne .L080796FC
    movs r0, #0x2c
    movs r1, #0
    bl StartBgm
    b .L080796FC
.L0807969A:
    ldr r1, .L080796B4 @ =0x08C9F2EC
    adds r0, r5, #0
    bl func_08079368
    adds r4, r0, #0
    cmp r4, #0
    beq .L080796E4
    ldr r0, [r4, #4]
    cmp r0, #0
    beq .L080796B8
    bl func_0800ED78
    b .L080796C2
    .align 2, 0
.L080796B4: .4byte 0x08C9F2EC
.L080796B8:
    ldr r0, [r4, #8]
    cmp r0, #0
    beq .L080796C2
    bl StartEvent
.L080796C2:
    bl func_0800ADB8
    ldr r0, [r4, #0xc]
    bl SetFlag
    adds r0, r5, #0
    bl GetUnitFromCharId
    movs r1, #0xc0
    ldrb r0, [r0, #0xb]
    ands r1, r0
    cmp r1, #0
    bne .L080796E4
    movs r0, #0x2c
    movs r1, #0
    bl StartBgm
.L080796E4:
    cmp r5, #0xf
    beq .L080796EE
    cmp r5, #0x15
    beq .L080796F6
    b .L080796FC
.L080796EE:
    movs r0, #0x15
    bl func_08079568
    b .L080796FC
.L080796F6:
    movs r0, #0xf
    bl func_08079568
.L080796FC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08079624

    thumb_func_start func_08079704
func_08079704: @ 0x08079704
    push {lr}
    movs r0, #0x65
    bl SetFlag
    movs r0, #0x2b
    movs r1, #0
    bl StartBgm
    ldr r0, .L0807972C @ =gPlaySt
    adds r0, #0x41
    movs r1, #1
    ldrb r2, [r0]
    orrs r1, r2
    strb r1, [r0]
    ldr r0, .L08079730 @ =0x08CA749C
    bl StartEvent
    pop {r0}
    bx r0
    .align 2, 0
.L0807972C: .4byte gPlaySt
.L08079730: .4byte 0x08CA749C
    func_end func_08079704

    thumb_func_start func_08079734
func_08079734: @ 0x08079734
    movs r0, #0
    bx lr
    func_end func_08079734

    thumb_func_start func_08079738
func_08079738: @ 0x08079738
    bx lr
    func_end func_08079738

    thumb_func_start func_0807973C
func_0807973C: @ 0x0807973C
    bx lr
    func_end func_0807973C

    thumb_func_start func_08079740
func_08079740: @ 0x08079740
    movs r0, #0
    bx lr
    func_end func_08079740

    thumb_func_start func_08079744
func_08079744: @ 0x08079744
    bx lr
    func_end func_08079744

    thumb_func_start func_08079748
func_08079748: @ 0x08079748
    movs r0, #0
    bx lr
    func_end func_08079748

    thumb_func_start func_0807974C
func_0807974C: @ 0x0807974C
    movs r0, #0
    bx lr
    func_end func_0807974C

    thumb_func_start func_08079750
func_08079750: @ 0x08079750
    bx lr
    func_end func_08079750

    thumb_func_start func_08079754
func_08079754: @ 0x08079754
    bx lr
    func_end func_08079754

    thumb_func_start func_08079758
func_08079758: @ 0x08079758
    bx lr
    func_end func_08079758

    thumb_func_start func_0807975C
func_0807975C: @ 0x0807975C
    bx lr
    func_end func_0807975C

    thumb_func_start func_08079760
func_08079760: @ 0x08079760
    bx lr
    func_end func_08079760

    thumb_func_start func_08079764
func_08079764: @ 0x08079764
    adds r3, r0, #0
    cmp r3, #0
    beq .L0807978C
    subs r3, #1
    ldr r1, .L08079790 @ =0x03004AD8
    adds r0, r3, #0
    cmp r3, #0
    bge .L08079776
    adds r0, r3, #7
.L08079776:
    asrs r0, r0, #3
    adds r2, r0, r1
    ldr r1, .L08079794 @ =0x08C9EAEC
    lsls r0, r0, #3
    subs r0, r3, r0
    adds r0, r0, r1
    ldrb r1, [r2]
    ldrb r0, [r0]
    orrs r1, r0
    adds r0, r1, #0
    strb r0, [r2]
.L0807978C:
    bx lr
    .align 2, 0
.L08079790: .4byte 0x03004AD8
.L08079794: .4byte 0x08C9EAEC
    func_end func_08079764

    thumb_func_start func_08079798
func_08079798: @ 0x08079798
    adds r3, r0, #0
    cmp r3, #0
    beq .L080797C2
    subs r3, #1
    ldr r1, .L080797C8 @ =0x03004AD8
    adds r0, r3, #0
    cmp r3, #0
    bge .L080797AA
    adds r0, r3, #7
.L080797AA:
    asrs r0, r0, #3
    adds r2, r0, r1
    ldr r1, .L080797CC @ =0x08C9EAEC
    lsls r0, r0, #3
    subs r0, r3, r0
    adds r0, r0, r1
    ldrb r2, [r2]
    ldrb r0, [r0]
    ands r2, r0
    adds r0, r2, #0
    cmp r0, #0
    bne .L080797D0
.L080797C2:
    movs r0, #0
    b .L080797D2
    .align 2, 0
.L080797C8: .4byte 0x03004AD8
.L080797CC: .4byte 0x08C9EAEC
.L080797D0:
    movs r0, #1
.L080797D2:
    bx lr
    func_end func_08079798

    thumb_func_start func_080797D4
func_080797D4: @ 0x080797D4
    adds r2, r0, #0
    cmp r2, #0
    beq .L08079802
    subs r2, #1
    ldr r3, .L08079804 @ =0x08C9EAEC
    adds r1, r2, #0
    cmp r2, #0
    bge .L080797E6
    adds r1, r2, #7
.L080797E6:
    asrs r1, r1, #3
    lsls r0, r1, #3
    subs r0, r2, r0
    adds r0, r0, r3
    ldrb r0, [r0]
    mvns r0, r0
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    ldr r0, .L08079808 @ =0x03004AD8
    adds r1, r1, r0
    adds r0, r3, #0
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
.L08079802:
    bx lr
    .align 2, 0
.L08079804: .4byte 0x08C9EAEC
.L08079808: .4byte 0x03004AD8
    func_end func_080797D4

    thumb_func_start ResetChapterFlags
ResetChapterFlags: @ 0x0807980C
    ldr r1, .L0807981C @ =0x03004AD8
    movs r2, #0
    adds r0, r1, #5
.L08079812:
    strb r2, [r0]
    subs r0, #1
    cmp r0, r1
    bge .L08079812
    bx lr
    .align 2, 0
.L0807981C: .4byte 0x03004AD8
    func_end ResetChapterFlags

    thumb_func_start func_08079820
func_08079820: @ 0x08079820
    adds r3, r0, #0
    cmp r3, #0x63
    ble .L0807984C
    cmp r3, #0x64
    beq .L0807984C
    subs r3, #0x65
    ldr r1, .L08079850 @ =0x03004AD0
    adds r0, r3, #0
    cmp r3, #0
    bge .L08079836
    adds r0, r3, #7
.L08079836:
    asrs r0, r0, #3
    adds r2, r0, r1
    ldr r1, .L08079854 @ =0x08C9EAEC
    lsls r0, r0, #3
    subs r0, r3, r0
    adds r0, r0, r1
    ldrb r1, [r2]
    ldrb r0, [r0]
    orrs r1, r0
    adds r0, r1, #0
    strb r0, [r2]
.L0807984C:
    bx lr
    .align 2, 0
.L08079850: .4byte 0x03004AD0
.L08079854: .4byte 0x08C9EAEC
    func_end func_08079820

    thumb_func_start func_08079858
func_08079858: @ 0x08079858
    adds r3, r0, #0
    cmp r3, #0x64
    ble .L08079882
    subs r3, #0x65
    ldr r1, .L08079888 @ =0x03004AD0
    adds r0, r3, #0
    cmp r3, #0
    bge .L0807986A
    adds r0, r3, #7
.L0807986A:
    asrs r0, r0, #3
    adds r2, r0, r1
    ldr r1, .L0807988C @ =0x08C9EAEC
    lsls r0, r0, #3
    subs r0, r3, r0
    adds r0, r0, r1
    ldrb r2, [r2]
    ldrb r0, [r0]
    ands r2, r0
    adds r0, r2, #0
    cmp r0, #0
    bne .L08079890
.L08079882:
    movs r0, #0
    b .L08079892
    .align 2, 0
.L08079888: .4byte 0x03004AD0
.L0807988C: .4byte 0x08C9EAEC
.L08079890:
    movs r0, #1
.L08079892:
    bx lr
    func_end func_08079858

    thumb_func_start func_08079894
func_08079894: @ 0x08079894
    adds r2, r0, #0
    cmp r2, #0x63
    ble .L080798C6
    cmp r2, #0x64
    beq .L080798C6
    subs r2, #0x65
    ldr r3, .L080798C8 @ =0x08C9EAEC
    adds r1, r2, #0
    cmp r2, #0
    bge .L080798AA
    adds r1, r2, #7
.L080798AA:
    asrs r1, r1, #3
    lsls r0, r1, #3
    subs r0, r2, r0
    adds r0, r0, r3
    ldrb r0, [r0]
    mvns r0, r0
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    ldr r0, .L080798CC @ =0x03004AD0
    adds r1, r1, r0
    adds r0, r3, #0
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
.L080798C6:
    bx lr
    .align 2, 0
.L080798C8: .4byte 0x08C9EAEC
.L080798CC: .4byte 0x03004AD0
    func_end func_08079894

    thumb_func_start ResetPermanentFlags
ResetPermanentFlags: @ 0x080798D0
    ldr r1, .L080798E0 @ =0x03004AD0
    movs r2, #0
    adds r0, r1, #7
.L080798D6:
    strb r2, [r0]
    subs r0, #1
    cmp r0, r1
    bge .L080798D6
    bx lr
    .align 2, 0
.L080798E0: .4byte 0x03004AD0
    func_end ResetPermanentFlags

    thumb_func_start SetFlag
SetFlag: @ 0x080798E4
    push {lr}
    cmp r0, #0x63
    bgt .L080798F0
    bl func_08079764
    b .L080798F4
.L080798F0:
    bl func_08079820
.L080798F4:
    pop {r0}
    bx r0
    func_end SetFlag

    thumb_func_start CheckFlag
CheckFlag: @ 0x080798F8
    push {lr}
    cmp r0, #0x63
    ble .L08079904
    bl func_08079858
    b .L08079908
.L08079904:
    bl func_08079798
.L08079908:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end CheckFlag

    thumb_func_start ClearFlag
ClearFlag: @ 0x08079910
    push {lr}
    cmp r0, #0x63
    bgt .L0807991C
    bl func_080797D4
    b .L08079920
.L0807991C:
    bl func_08079894
.L08079920:
    pop {r0}
    bx r0
    func_end ClearFlag

    thumb_func_start func_08079924
func_08079924: @ 0x08079924
    ldr r0, .L08079928 @ =0x03004AD0
    bx lr
    .align 2, 0
.L08079928: .4byte 0x03004AD0
    func_end func_08079924

    thumb_func_start func_0807992C
func_0807992C: @ 0x0807992C
    movs r0, #8
    bx lr
    func_end func_0807992C

    thumb_func_start func_08079930
func_08079930: @ 0x08079930
    ldr r0, .L08079934 @ =0x03004AD8
    bx lr
    .align 2, 0
.L08079934: .4byte 0x03004AD8
    func_end func_08079930

    thumb_func_start func_08079938
func_08079938: @ 0x08079938
    movs r0, #6
    bx lr
    func_end func_08079938

    thumb_func_start func_0807993C
func_0807993C: @ 0x0807993C
    ldr r1, .L0807994C @ =gPlaySt
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08079950
    movs r0, #0
    b .L08079952
    .align 2, 0
.L0807994C: .4byte gPlaySt
.L08079950:
    movs r0, #1
.L08079952:
    bx lr
    func_end func_0807993C

    thumb_func_start func_08079954
func_08079954: @ 0x08079954
    push {r4, lr}
    adds r2, r0, #0
    ldr r1, .L0807997C @ =0x08CA0448
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08079988
    ldr r0, [r2]
    ldrb r3, [r0, #4]
    movs r4, #0x80
    lsls r4, r4, #9
.L08079968:
    ldrb r0, [r1, #1]
    cmp r3, r0
    bne .L08079980
    ldr r0, [r2, #0xc]
    ands r0, r4
    cmp r0, #0
    beq .L08079980
    movs r0, #1
    b .L0807998A
    .align 2, 0
.L0807997C: .4byte 0x08CA0448
.L08079980:
    adds r1, #8
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08079968
.L08079988:
    movs r0, #0
.L0807998A:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08079954

    thumb_func_start func_08079990
func_08079990: @ 0x08079990
    push {lr}
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r2, .L0807999C @ =0x08C9F9EC
    b .L080799AA
    .align 2, 0
.L0807999C: .4byte 0x08C9F9EC
.L080799A0:
    cmp r1, r0
    bne .L080799A8
    ldr r0, [r2, #4]
    b .L080799BE
.L080799A8:
    adds r2, #8
.L080799AA:
    ldrb r1, [r2]
    cmp r1, #0
    bne .L080799A0
    ldr r0, .L080799C4 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r0, [r0, #0x14]
.L080799BE:
    pop {r1}
    bx r1
    .align 2, 0
.L080799C4: .4byte gPlaySt
    func_end func_08079990

    thumb_func_start func_080799C8
func_080799C8: @ 0x080799C8
    push {r4, r5, lr}
    ldr r1, .L08079A10 @ =gPlaySt
    movs r0, #0x40
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    beq .L08079A08
    ldrb r1, [r1, #0x1b]
    cmp r1, #3
    bne .L08079A08
    movs r5, #0x81
.L080799DE:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L08079A02
    ldr r0, [r4]
    cmp r0, #0
    beq .L08079A02
    ldrb r0, [r0, #4]
    bl func_08079990
    adds r1, r0, #0
    cmp r1, #0
    beq .L08079A02
    adds r0, r4, #0
    bl UnitApplyBonusLevels
.L08079A02:
    adds r5, #1
    cmp r5, #0xbf
    ble .L080799DE
.L08079A08:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08079A10: .4byte gPlaySt
    func_end func_080799C8

    thumb_func_start func_08079A14
func_08079A14: @ 0x08079A14
    ldr r1, .L08079A1C @ =0x08CA0538
    ldr r0, [r0]
    ldrb r2, [r0, #4]
    b .L08079A2C
    .align 2, 0
.L08079A1C: .4byte 0x08CA0538
.L08079A20:
    ldrb r0, [r1]
    cmp r0, r2
    bne .L08079A2A
    movs r0, #1
    b .L08079A34
.L08079A2A:
    adds r1, #1
.L08079A2C:
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08079A20
    movs r0, #0
.L08079A34:
    bx lr
    func_end func_08079A14

    thumb_func_start func_08079A38
func_08079A38: @ 0x08079A38
    push {lr}
    ldr r0, .L08079A58 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #0x3c]
    bl StartEvent
    movs r0, #0x91
    bl SetFlag
    pop {r0}
    bx r0
    .align 2, 0
.L08079A58: .4byte gPlaySt
    func_end func_08079A38

    thumb_func_start func_08079A5C
func_08079A5C: @ 0x08079A5C
    push {r4, lr}
    movs r4, #0
    ldr r1, .L08079A8C @ =gPlaySt
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08079A84
    bl IsTutorialDisabled
    cmp r0, #0
    bne .L08079A84
    movs r0, #0x9c
    bl CheckFlag
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r4, r1, #0x1f
.L08079A84:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08079A8C: .4byte gPlaySt
    func_end func_08079A5C

    thumb_func_start func_08079A90
func_08079A90: @ 0x08079A90
    push {lr}
    movs r0, #0x8f
    bl SetFlag
    pop {r0}
    bx r0
    func_end func_08079A90

    thumb_func_start func_08079A9C
func_08079A9C: @ 0x08079A9C
    push {lr}
    movs r0, #0x8f
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08079AAE
    movs r0, #0
    b .L08079AB0
.L08079AAE:
    movs r0, #1
.L08079AB0:
    pop {r1}
    bx r1
    func_end func_08079A9C

    thumb_func_start func_08079AB4
func_08079AB4: @ 0x08079AB4
    push {r4, r5, lr}
    movs r5, #0
    movs r4, #0x81
.L08079ABA:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L08079AD8
    ldr r0, [r1]
    cmp r0, #0
    beq .L08079AD8
    ldr r0, [r1, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08079AD8
    adds r5, #1
.L08079AD8:
    adds r4, #1
    cmp r4, #0xbf
    ble .L08079ABA
    cmp r5, #3
    ble .L08079AE6
    movs r0, #0
    b .L08079AE8
.L08079AE6:
    movs r0, #1
.L08079AE8:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08079AB4

    thumb_func_start func_08079AF0
func_08079AF0: @ 0x08079AF0
    movs r0, #0
    bx lr
    func_end func_08079AF0

    thumb_func_start func_08079AF4
func_08079AF4: @ 0x08079AF4
    push {lr}
    bl EndPlayerPhaseSideWindows
    ldr r0, .L08079B18 @ =gPlaySt
    movs r1, #2
    ldrb r0, [r0, #0x1b]
    cmp r0, #2
    bne .L08079B06
    movs r1, #1
.L08079B06:
    adds r0, r1, #0
    bl GetUnitFromCharId
    movs r1, #0
    bl func_0802CC88
    pop {r0}
    bx r0
    .align 2, 0
.L08079B18: .4byte gPlaySt
    func_end func_08079AF4

    thumb_func_start func_08079B1C
func_08079B1C: @ 0x08079B1C
    push {r4, lr}
    movs r4, #1
.L08079B20:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08079B4E
    ldr r3, [r2]
    cmp r3, #0
    beq .L08079B4E
    ldr r0, [r2, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08079B4E
    ldrb r3, [r3, #4]
    cmp r3, #0x28
    bne .L08079B4E
    movs r0, #8
    ldrsb r0, [r2, r0]
    cmp r0, #0x13
    ble .L08079B54
    movs r0, #1
    b .L08079B56
.L08079B4E:
    adds r4, #1
    cmp r4, #0x3f
    ble .L08079B20
.L08079B54:
    movs r0, #0
.L08079B56:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08079B1C

    thumb_func_start func_08079B5C
func_08079B5C: @ 0x08079B5C
    push {r4, lr}
    bl func_08079BAC
    movs r4, #1
.L08079B64:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08079BA0
    ldr r3, [r2]
    cmp r3, #0
    beq .L08079BA0
    ldr r1, [r2, #0xc]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    bne .L08079BA0
    ldr r0, .L08079B9C @ =0x0001000C
    ands r1, r0
    cmp r1, #0
    bne .L08079BA0
    ldrb r3, [r3, #4]
    cmp r3, #0x28
    bne .L08079BA0
    adds r0, r2, #0
    bl func_0802A994
    movs r0, #0x90
    bl SetFlag
    b .L08079BA6
    .align 2, 0
.L08079B9C: .4byte 0x0001000C
.L08079BA0:
    adds r4, #1
    cmp r4, #0x3f
    ble .L08079B64
.L08079BA6:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08079B5C

    thumb_func_start func_08079BAC
func_08079BAC: @ 0x08079BAC
    push {r4, lr}
    movs r0, #0
    bl GetTrap
    adds r4, r0, #0
    b .L08079BC6
.L08079BB8:
    cmp r0, #0xc
    bne .L08079BC4
    adds r0, r4, #0
    bl func_0802C21C
    subs r4, #8
.L08079BC4:
    adds r4, #8
.L08079BC6:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L08079BB8
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08079BAC

    thumb_func_start func_08079BD4
func_08079BD4: @ 0x08079BD4
    push {lr}
    movs r0, #0xfe
    bl SoftReset
    pop {r0}
    bx r0
    func_end func_08079BD4

    thumb_func_start func_08079BE0
func_08079BE0: @ 0x08079BE0
    ldr r0, .L08079BF4 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    bne .L08079BF8
    movs r0, #1
    b .L08079BFA
    .align 2, 0
.L08079BF4: .4byte gpKeySt
.L08079BF8:
    movs r0, #0
.L08079BFA:
    bx lr
    func_end func_08079BE0

    thumb_func_start func_08079BFC
func_08079BFC: @ 0x08079BFC
    push {lr}
    movs r0, #0xfe
    bl SoftReset
    pop {r0}
    bx r0
    func_end func_08079BFC

    thumb_func_start func_08079C08
func_08079C08: @ 0x08079C08
    ldr r0, .L08079C1C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    bne .L08079C20
    movs r0, #0
    b .L08079C22
    .align 2, 0
.L08079C1C: .4byte gpKeySt
.L08079C20:
    movs r0, #1
.L08079C22:
    bx lr
    func_end func_08079C08

    thumb_func_start func_08079C24
func_08079C24: @ 0x08079C24
    push {lr}
    movs r0, #0
    bl SetVisionWithFade
    pop {r0}
    bx r0
    func_end func_08079C24

    thumb_func_start func_08079C30
func_08079C30: @ 0x08079C30
    push {lr}
    bl GetGold
    ldr r1, .L08079C44 @ =0x00001388
    adds r0, r0, r1
    bl SetGold
    pop {r0}
    bx r0
    .align 2, 0
.L08079C44: .4byte 0x00001388
    func_end func_08079C30

    thumb_func_start func_08079C48
func_08079C48: @ 0x08079C48
    push {r4, lr}
    adds r4, r0, #0
    bl GetGold
    cmp r0, r4
    blt .L08079C5E
    bl GetGold
    subs r0, r0, r4
    bl SetGold
.L08079C5E:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08079C48

    thumb_func_start func_08079C64
func_08079C64: @ 0x08079C64
    adds r1, r0, #0
    ldrb r2, [r1, #0x12]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08079C74
    subs r0, r2, #1
    strb r0, [r1, #0x12]
.L08079C74:
    ldrb r2, [r1, #0x14]
    movs r0, #0x14
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08079C82
    subs r0, r2, #1
    strb r0, [r1, #0x14]
.L08079C82:
    ldrb r2, [r1, #0x15]
    movs r0, #0x15
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08079C90
    subs r0, r2, #1
    strb r0, [r1, #0x15]
.L08079C90:
    ldrb r2, [r1, #0x16]
    movs r0, #0x16
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08079C9E
    subs r0, r2, #1
    strb r0, [r1, #0x16]
.L08079C9E:
    ldrb r2, [r1, #0x17]
    movs r0, #0x17
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08079CAC
    subs r0, r2, #1
    strb r0, [r1, #0x17]
.L08079CAC:
    ldrb r2, [r1, #0x18]
    movs r0, #0x18
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08079CBA
    subs r0, r2, #1
    strb r0, [r1, #0x18]
.L08079CBA:
    ldrb r2, [r1, #0x19]
    movs r0, #0x19
    ldrsb r0, [r1, r0]
    cmp r0, #0
    ble .L08079CC8
    subs r0, r2, #1
    strb r0, [r1, #0x19]
.L08079CC8:
    bx lr
    func_end func_08079C64

    thumb_func_start func_08079CCC
func_08079CCC: @ 0x08079CCC
    push {lr}
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    bl GetUnitFromCharId
    bl func_08079C64
    pop {r0}
    bx r0
    func_end func_08079CCC

    thumb_func_start IsPidBlueDeployed
IsPidBlueDeployed: @ 0x08079CE0
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    movs r4, #1
.L08079CE8:
    adds r0, r4, #0
    bl GetUnit
    cmp r0, #0
    beq .L08079D10
    ldr r2, [r0]
    cmp r2, #0
    beq .L08079D10
    ldr r0, [r0, #0xc]
    ldr r1, .L08079D0C @ =0x0001000C
    ands r0, r1
    cmp r0, #0
    bne .L08079D10
    ldrb r2, [r2, #4]
    cmp r2, r5
    bne .L08079D10
    movs r0, #1
    b .L08079D18
    .align 2, 0
.L08079D0C: .4byte 0x0001000C
.L08079D10:
    adds r4, #1
    cmp r4, #0x3f
    ble .L08079CE8
    movs r0, #0
.L08079D18:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end IsPidBlueDeployed

    thumb_func_start func_08079D20
func_08079D20: @ 0x08079D20
    push {lr}
    movs r0, #9
    bl IsPidBlueDeployed
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079D20

    thumb_func_start func_08079D30
func_08079D30: @ 0x08079D30
    push {lr}
    movs r0, #0x28
    bl IsPidBlueDeployed
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079D30

    thumb_func_start IsPidBlue
IsPidBlue: @ 0x08079D40
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    movs r4, #1
.L08079D48:
    adds r0, r4, #0
    bl GetUnit
    cmp r0, #0
    beq .L08079D6C
    ldr r2, [r0]
    cmp r2, #0
    beq .L08079D6C
    ldr r0, [r0, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08079D6C
    ldrb r2, [r2, #4]
    cmp r2, r5
    bne .L08079D6C
    movs r0, #1
    b .L08079D74
.L08079D6C:
    adds r4, #1
    cmp r4, #0x3f
    ble .L08079D48
    movs r0, #0
.L08079D74:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end IsPidBlue

    thumb_func_start func_08079D7C
func_08079D7C: @ 0x08079D7C
    push {lr}
    movs r0, #0x1a
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079D7C

    thumb_func_start func_08079D8C
func_08079D8C: @ 0x08079D8C
    push {lr}
    movs r0, #0xe
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079D8C

    thumb_func_start func_08079D9C
func_08079D9C: @ 0x08079D9C
    push {lr}
    movs r0, #0x28
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079D9C

    thumb_func_start func_08079DAC
func_08079DAC: @ 0x08079DAC
    push {lr}
    movs r0, #0x25
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079DAC

    thumb_func_start func_08079DBC
func_08079DBC: @ 0x08079DBC
    push {lr}
    movs r0, #0x23
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079DBC

    thumb_func_start func_08079DCC
func_08079DCC: @ 0x08079DCC
    push {lr}
    movs r0, #0x14
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079DCC

    thumb_func_start func_08079DDC
func_08079DDC: @ 0x08079DDC
    push {lr}
    movs r0, #0x24
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079DDC

    thumb_func_start func_08079DEC
func_08079DEC: @ 0x08079DEC
    push {lr}
    movs r0, #0x1b
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079DEC

    thumb_func_start func_08079DFC
func_08079DFC: @ 0x08079DFC
    push {lr}
    movs r0, #8
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079DFC

    thumb_func_start func_08079E0C
func_08079E0C: @ 0x08079E0C
    push {lr}
    movs r0, #0x11
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E0C

    thumb_func_start func_08079E1C
func_08079E1C: @ 0x08079E1C
    push {lr}
    movs r0, #0x13
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E1C

    thumb_func_start func_08079E2C
func_08079E2C: @ 0x08079E2C
    push {lr}
    movs r0, #0x1c
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E2C

    thumb_func_start func_08079E3C
func_08079E3C: @ 0x08079E3C
    push {lr}
    movs r0, #0x17
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E3C

    thumb_func_start func_08079E4C
func_08079E4C: @ 0x08079E4C
    push {lr}
    movs r0, #0x2f
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E4C

    thumb_func_start func_08079E5C
func_08079E5C: @ 0x08079E5C
    push {lr}
    movs r0, #0x18
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E5C

    thumb_func_start func_08079E6C
func_08079E6C: @ 0x08079E6C
    push {lr}
    movs r0, #0x30
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E6C

    thumb_func_start func_08079E7C
func_08079E7C: @ 0x08079E7C
    push {lr}
    movs r0, #0xd
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E7C

    thumb_func_start func_08079E8C
func_08079E8C: @ 0x08079E8C
    push {lr}
    movs r0, #0x2e
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E8C

    thumb_func_start func_08079E9C
func_08079E9C: @ 0x08079E9C
    push {lr}
    movs r0, #0x1d
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079E9C

    thumb_func_start func_08079EAC
func_08079EAC: @ 0x08079EAC
    push {lr}
    movs r0, #0x31
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079EAC

    thumb_func_start func_08079EBC
func_08079EBC: @ 0x08079EBC
    push {lr}
    movs r0, #0x33
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079EBC

    thumb_func_start func_08079ECC
func_08079ECC: @ 0x08079ECC
    push {lr}
    movs r0, #0x15
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079ECC

    thumb_func_start func_08079EDC
func_08079EDC: @ 0x08079EDC
    push {lr}
    movs r0, #0xf
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079EDC

    thumb_func_start func_08079EEC
func_08079EEC: @ 0x08079EEC
    push {lr}
    movs r0, #0x36
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079EEC

    thumb_func_start func_08079EFC
func_08079EFC: @ 0x08079EFC
    push {lr}
    movs r0, #0x22
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079EFC

    thumb_func_start func_08079F0C
func_08079F0C: @ 0x08079F0C
    push {lr}
    movs r0, #0x27
    bl IsPidBlue
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079F0C

    thumb_func_start func_08079F1C
func_08079F1C: @ 0x08079F1C
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    movs r4, #1
.L08079F24:
    adds r0, r4, #0
    bl GetUnit
    cmp r0, #0
    beq .L08079F3E
    ldr r0, [r0]
    cmp r0, #0
    beq .L08079F3E
    ldrb r0, [r0, #4]
    cmp r0, r5
    bne .L08079F3E
    movs r0, #1
    b .L08079F46
.L08079F3E:
    adds r4, #1
    cmp r4, #0x3f
    ble .L08079F24
    movs r0, #0
.L08079F46:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08079F1C

    thumb_func_start func_08079F4C
func_08079F4C: @ 0x08079F4C
    push {lr}
    movs r0, #0x11
    bl func_08079F1C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079F4C

    thumb_func_start func_08079F5C
func_08079F5C: @ 0x08079F5C
    push {lr}
    movs r0, #0x13
    bl func_08079F1C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079F5C

    thumb_func_start func_08079F6C
func_08079F6C: @ 0x08079F6C
    push {lr}
    movs r0, #0x1b
    bl func_08079F1C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08079F6C

    thumb_func_start func_08079F7C
func_08079F7C: @ 0x08079F7C
    push {r4, lr}
    movs r4, #0x81
.L08079F80:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L08079FA0
    ldr r0, [r1]
    cmp r0, #0
    beq .L08079FA0
    ldr r0, [r1, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08079FA0
    movs r0, #1
    b .L08079FA8
.L08079FA0:
    adds r4, #1
    cmp r4, #0xbf
    ble .L08079F80
    movs r0, #0
.L08079FA8:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08079F7C

    thumb_func_start func_08079FB0
func_08079FB0: @ 0x08079FB0
    push {r4, r5, lr}
    movs r5, #0
    movs r4, #0x81
.L08079FB6:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L08079FD8
    ldr r0, [r1]
    cmp r0, #0
    beq .L08079FD8
    ldr r0, [r1, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08079FD8
    adds r0, r5, #1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
.L08079FD8:
    adds r4, #1
    cmp r4, #0xbf
    ble .L08079FB6
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08079FB0

    thumb_func_start func_08079FE8
func_08079FE8: @ 0x08079FE8
    push {lr}
    bl func_08079F7C
    movs r1, #0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08079FF8
    movs r1, #1
.L08079FF8:
    adds r0, r1, #0
    pop {r1}
    bx r1
    func_end func_08079FE8

    thumb_func_start func_0807A000
func_0807A000: @ 0x0807A000
    push {r4, r5, lr}
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    movs r4, #0x41
.L0807A008:
    adds r0, r4, #0
    bl GetUnit
    cmp r0, #0
    beq .L0807A02C
    ldr r2, [r0]
    cmp r2, #0
    beq .L0807A02C
    ldr r0, [r0, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L0807A02C
    ldrb r2, [r2, #4]
    cmp r2, r5
    bne .L0807A02C
    movs r0, #1
    b .L0807A034
.L0807A02C:
    adds r4, #1
    cmp r4, #0xbf
    ble .L0807A008
    movs r0, #0
.L0807A034:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0807A000

    thumb_func_start func_0807A03C
func_0807A03C: @ 0x0807A03C
    push {r4, r5, lr}
    movs r5, #0
    movs r4, #1
.L0807A042:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L0807A068
    ldr r0, [r1]
    cmp r0, #0
    beq .L0807A068
    ldr r1, [r1, #0xc]
    movs r0, #0xc
    ands r0, r1
    cmp r0, #0
    bne .L0807A068
    movs r0, #2
    ands r1, r0
    cmp r1, #0
    bne .L0807A068
    adds r5, #1
.L0807A068:
    adds r4, #1
    cmp r4, #0x3f
    ble .L0807A042
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0807A03C

    thumb_func_start func_0807A078
func_0807A078: @ 0x0807A078
    push {r4, lr}
    movs r4, #0x41
.L0807A07C:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L0807A09C
    ldr r0, [r1]
    cmp r0, #0
    beq .L0807A09C
    ldr r0, [r1, #0xc]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L0807A09C
    movs r0, #0
    b .L0807A0A4
.L0807A09C:
    adds r4, #1
    cmp r4, #0x7f
    ble .L0807A07C
    movs r0, #1
.L0807A0A4:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0807A078

    thumb_func_start func_0807A0AC
func_0807A0AC: @ 0x0807A0AC
    push {lr}
    movs r0, #0x45
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A0AC

    thumb_func_start func_0807A0BC
func_0807A0BC: @ 0x0807A0BC
    push {lr}
    movs r0, #0x3b
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A0BC

    thumb_func_start func_0807A0CC
func_0807A0CC: @ 0x0807A0CC
    push {lr}
    movs r0, #0x7f
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A0CC

    thumb_func_start func_0807A0DC
func_0807A0DC: @ 0x0807A0DC
    push {lr}
    movs r0, #0x80
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A0DC

    thumb_func_start func_0807A0EC
func_0807A0EC: @ 0x0807A0EC
    push {lr}
    movs r0, #0x81
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A0EC

    thumb_func_start func_0807A0FC
func_0807A0FC: @ 0x0807A0FC
    push {lr}
    movs r0, #0x82
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A0FC

    thumb_func_start func_0807A10C
func_0807A10C: @ 0x0807A10C
    push {lr}
    movs r0, #0x24
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A10C

    thumb_func_start func_0807A11C
func_0807A11C: @ 0x0807A11C
    push {lr}
    movs r0, #0x20
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A11C

    thumb_func_start func_0807A12C
func_0807A12C: @ 0x0807A12C
    push {lr}
    movs r0, #0x2b
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A12C

    thumb_func_start func_0807A13C
func_0807A13C: @ 0x0807A13C
    push {lr}
    movs r0, #0x37
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A13C

    thumb_func_start func_0807A14C
func_0807A14C: @ 0x0807A14C
    push {lr}
    movs r0, #0x11
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A14C

    thumb_func_start func_0807A15C
func_0807A15C: @ 0x0807A15C
    push {lr}
    movs r0, #0x13
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A15C

    thumb_func_start func_0807A16C
func_0807A16C: @ 0x0807A16C
    push {lr}
    movs r0, #8
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A16C

    thumb_func_start func_0807A17C
func_0807A17C: @ 0x0807A17C
    push {lr}
    movs r0, #0x4c
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A17C

    thumb_func_start func_0807A18C
func_0807A18C: @ 0x0807A18C
    push {lr}
    movs r0, #0x65
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A18C

    thumb_func_start func_0807A19C
func_0807A19C: @ 0x0807A19C
    push {lr}
    movs r0, #0x66
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A19C

    thumb_func_start func_0807A1AC
func_0807A1AC: @ 0x0807A1AC
    push {lr}
    movs r0, #0xa3
    bl func_0807A000
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A1AC

    thumb_func_start func_0807A1BC
func_0807A1BC: @ 0x0807A1BC
    push {lr}
    movs r0, #1
    movs r1, #0x2d
    bl func_08026C08
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A1BC

    thumb_func_start func_0807A1D0
func_0807A1D0: @ 0x0807A1D0
    push {lr}
    movs r0, #1
    movs r1, #0x25
    bl func_08026C08
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A1D0

    thumb_func_start func_0807A1E4
func_0807A1E4: @ 0x0807A1E4
    push {lr}
    movs r0, #1
    movs r1, #0x1e
    bl func_08026C08
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A1E4

    thumb_func_start func_0807A1F8
func_0807A1F8: @ 0x0807A1F8
    push {lr}
    movs r0, #2
    movs r1, #0x2d
    bl func_08026C08
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A1F8

    thumb_func_start func_0807A20C
func_0807A20C: @ 0x0807A20C
    push {lr}
    movs r0, #2
    movs r1, #0x31
    bl func_08026C08
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A20C

    thumb_func_start func_0807A220
func_0807A220: @ 0x0807A220
    push {lr}
    movs r0, #2
    movs r1, #0x1f
    bl func_08026C08
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A220

    thumb_func_start func_0807A234
func_0807A234: @ 0x0807A234
    push {r4, r5, r6, r7, lr}
    adds r5, r1, #0
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    movs r6, #0
    adds r4, r5, #1
    b .L0807A266
.L0807A242:
    adds r0, r4, #0
    bl GetUnit
    cmp r0, #0
    beq .L0807A264
    ldr r2, [r0]
    cmp r2, #0
    beq .L0807A264
    ldr r0, [r0, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L0807A264
    ldrb r2, [r2, #4]
    cmp r2, r7
    bne .L0807A264
    adds r6, #1
.L0807A264:
    adds r4, #1
.L0807A266:
    adds r0, r5, #0
    adds r0, #0x40
    cmp r4, r0
    blt .L0807A242
    adds r0, r6, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0807A234

    thumb_func_start func_0807A278
func_0807A278: @ 0x0807A278
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    movs r6, #0
    adds r4, r5, #1
    b .L0807A2A4
.L0807A282:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L0807A2A0
    ldr r0, [r1]
    cmp r0, #0
    beq .L0807A2A0
    ldr r0, [r1, #0xc]
    movs r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L0807A2A0
    adds r6, #1
.L0807A2A0:
    adds r4, #1
    adds r0, r5, #0
.L0807A2A4:
    adds r0, #0x40
    cmp r4, r0
    blt .L0807A282
    adds r0, r6, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0807A278

    thumb_func_start func_0807A2B4
func_0807A2B4: @ 0x0807A2B4
    movs r1, #0
    ldr r0, .L0807A2C4 @ =gPlaySt
    ldrh r0, [r0, #0x10]
    cmp r0, #0x14
    bls .L0807A2C0
    movs r1, #1
.L0807A2C0:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0807A2C4: .4byte gPlaySt
    func_end func_0807A2B4

    thumb_func_start func_0807A2C8
func_0807A2C8: @ 0x0807A2C8
    movs r1, #0
    ldr r0, .L0807A2D8 @ =gPlaySt
    ldrh r0, [r0, #0x10]
    cmp r0, #0x19
    bls .L0807A2D4
    movs r1, #1
.L0807A2D4:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0807A2D8: .4byte gPlaySt
    func_end func_0807A2C8

    thumb_func_start func_0807A2DC
func_0807A2DC: @ 0x0807A2DC
    movs r1, #0
    ldr r0, .L0807A2EC @ =gPlaySt
    ldrh r0, [r0, #0x10]
    cmp r0, #0x1e
    bls .L0807A2E8
    movs r1, #1
.L0807A2E8:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0807A2EC: .4byte gPlaySt
    func_end func_0807A2DC

    thumb_func_start func_0807A2F0
func_0807A2F0: @ 0x0807A2F0
    movs r1, #0
    ldr r0, .L0807A300 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0
    bne .L0807A2FC
    movs r1, #1
.L0807A2FC:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0807A300: .4byte gPlaySt
    func_end func_0807A2F0

    thumb_func_start func_0807A304
func_0807A304: @ 0x0807A304
    movs r1, #0
    ldr r0, .L0807A314 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    bne .L0807A310
    movs r1, #1
.L0807A310:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0807A314: .4byte gPlaySt
    func_end func_0807A304

    thumb_func_start func_0807A318
func_0807A318: @ 0x0807A318
    ldr r0, .L0807A330 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r0, [r0, #4]
    ldr r1, [r1, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    lsrs r1, r1, #0xe
    movs r0, #1
    bics r0, r1
    bx lr
    .align 2, 0
.L0807A330: .4byte gActiveUnit
    func_end func_0807A318

    thumb_func_start func_0807A334
func_0807A334: @ 0x0807A334
    push {lr}
    bl GetGold
    movs r2, #0
    ldr r1, .L0807A34C @ =0x0000270F
    cmp r0, r1
    ble .L0807A344
    movs r2, #1
.L0807A344:
    adds r0, r2, #0
    pop {r1}
    bx r1
    .align 2, 0
.L0807A34C: .4byte 0x0000270F
    func_end func_0807A334

    thumb_func_start func_0807A350
func_0807A350: @ 0x0807A350
    push {lr}
    bl GetGold
    movs r2, #0
    ldr r1, .L0807A368 @ =0x00001F3F
    cmp r0, r1
    ble .L0807A360
    movs r2, #1
.L0807A360:
    adds r0, r2, #0
    pop {r1}
    bx r1
    .align 2, 0
.L0807A368: .4byte 0x00001F3F
    func_end func_0807A350

    thumb_func_start func_0807A36C
func_0807A36C: @ 0x0807A36C
    push {lr}
    bl GetGold
    movs r2, #0
    ldr r1, .L0807A384 @ =0x0000176F
    cmp r0, r1
    ble .L0807A37C
    movs r2, #1
.L0807A37C:
    adds r0, r2, #0
    pop {r1}
    bx r1
    .align 2, 0
.L0807A384: .4byte 0x0000176F
    func_end func_0807A36C

    thumb_func_start func_0807A388
func_0807A388: @ 0x0807A388
    push {lr}
    bl GetGold
    movs r2, #0
    ldr r1, .L0807A3A0 @ =0x00001387
    cmp r0, r1
    ble .L0807A398
    movs r2, #1
.L0807A398:
    adds r0, r2, #0
    pop {r1}
    bx r1
    .align 2, 0
.L0807A3A0: .4byte 0x00001387
    func_end func_0807A388

    thumb_func_start func_0807A3A4
func_0807A3A4: @ 0x0807A3A4
    push {lr}
    bl GetTalkChoiceResult
    movs r1, #0
    cmp r0, #1
    bne .L0807A3B2
    movs r1, #1
.L0807A3B2:
    adds r0, r1, #0
    pop {r1}
    bx r1
    func_end func_0807A3A4

    thumb_func_start func_0807A3B8
func_0807A3B8: @ 0x0807A3B8
    ldr r0, .L0807A3C4 @ =gPlaySt
    adds r0, #0x2b
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    lsrs r0, r0, #0x1f
    bx lr
    .align 2, 0
.L0807A3C4: .4byte gPlaySt
    func_end func_0807A3B8

    thumb_func_start IsTactFemale
IsTactFemale: @ 0x0807A3C8
    ldr r0, .L0807A3D4 @ =gPlaySt
    adds r0, #0x2c
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    lsrs r0, r0, #0x1f
    bx lr
    .align 2, 0
.L0807A3D4: .4byte gPlaySt
    func_end IsTactFemale

    thumb_func_start func_0807A3D8
func_0807A3D8: @ 0x0807A3D8
    push {lr}
    movs r0, #0x9b
    bl CheckFlag
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0807A3D8

    thumb_func_start IsTutorialDisabled
IsTutorialDisabled: @ 0x0807A3E8
    ldr r0, .L0807A3F4 @ =gPlaySt
    adds r0, #0x42
    ldrb r0, [r0]
    lsls r0, r0, #0x1a
    lsrs r0, r0, #0x1f
    bx lr
    .align 2, 0
.L0807A3F4: .4byte gPlaySt
    func_end IsTutorialDisabled

    thumb_func_start func_0807A3F8
func_0807A3F8: @ 0x0807A3F8
    push {lr}
    bl func_0809EFBC
    cmp r0, #0
    beq .L0807A404
    movs r0, #1
.L0807A404:
    pop {r1}
    bx r1
    func_end func_0807A3F8

    thumb_func_start func_0807A408
func_0807A408: @ 0x0807A408
    push {lr}
    bl func_08079FB0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0x31
    bhi .L0807A41A
    movs r0, #0
    b .L0807A41C
.L0807A41A:
    movs r0, #1
.L0807A41C:
    pop {r1}
    bx r1
    func_end func_0807A408

    thumb_func_start func_0807A420
func_0807A420: @ 0x0807A420
    movs r1, #0
    ldr r0, .L0807A430 @ =gPlaySt
    ldrb r0, [r0, #0x1b]
    cmp r0, #3
    bne .L0807A42C
    movs r1, #1
.L0807A42C:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0807A430: .4byte gPlaySt
    func_end func_0807A420

    thumb_func_start func_0807A434
func_0807A434: @ 0x0807A434
    push {lr}
    ldr r0, .L0807A44C @ =gActiveUnit
    ldr r0, [r0]
    bl GetUnitCurrentHp
    movs r1, #0
    cmp r0, #0
    bne .L0807A446
    movs r1, #1
.L0807A446:
    adds r0, r1, #0
    pop {r1}
    bx r1
    .align 2, 0
.L0807A44C: .4byte gActiveUnit
    func_end func_0807A434

    thumb_func_start func_0807A450
func_0807A450: @ 0x0807A450
    movs r0, #0
    bx lr
    func_end func_0807A450

    thumb_func_start func_0807A454
func_0807A454: @ 0x0807A454
    push {lr}
    ldr r1, .L0807A478 @ =gPlaySt
    movs r0, #8
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    bne .L0807A46E
    adds r0, r1, #0
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    cmp r0, #0
    bne .L0807A474
.L0807A46E:
    movs r0, #4
    bl FadeBgmOut
.L0807A474:
    pop {r0}
    bx r0
    .align 2, 0
.L0807A478: .4byte gPlaySt
    func_end func_0807A454

    thumb_func_start func_0807A47C
func_0807A47C: @ 0x0807A47C
    ldr r0, .L0807A494 @ =gPlaySt
    ldrb r1, [r0, #0x14]
    movs r0, #0x80
    ands r0, r1
    cmp r0, #0
    bne .L0807A498
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    bne .L0807A498
    movs r0, #0
    b .L0807A49A
    .align 2, 0
.L0807A494: .4byte gPlaySt
.L0807A498:
    movs r0, #1
.L0807A49A:
    bx lr
    func_end func_0807A47C

    thumb_func_start func_0807A49C
func_0807A49C: @ 0x0807A49C
    movs r1, #0
    ldr r0, .L0807A4AC @ =gActionSt
    ldrb r0, [r0, #0x11]
    cmp r0, #1
    bne .L0807A4A8
    movs r1, #1
.L0807A4A8:
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0807A4AC: .4byte gActionSt
    func_end func_0807A49C

    thumb_func_start func_0807A4B0
func_0807A4B0: @ 0x0807A4B0
    push {lr}
    movs r0, #0
    bl SetkeyStIgnoredMask
    pop {r0}
    bx r0
    func_end func_0807A4B0

    thumb_func_start func_0807A4BC
func_0807A4BC: @ 0x0807A4BC
    push {lr}
    movs r0, #2
    bl NewKeyStSetter
    pop {r0}
    bx r0
    func_end func_0807A4BC

    thumb_func_start func_0807A4C8
func_0807A4C8: @ 0x0807A4C8
    push {lr}
    ldr r0, .L0807A4D8 @ =0x08CA74F0
    movs r1, #4
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L0807A4D8: .4byte 0x08CA74F0
    func_end func_0807A4C8

    thumb_func_start func_0807A4DC
func_0807A4DC: @ 0x0807A4DC
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    adds r3, r2, #0
    movs r0, #8
    str r0, [sp]
    movs r0, #1
    adds r1, r4, #0
    adds r2, r5, #0
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L0807A520 @ =0x0841E3B8
    ldr r4, .L0807A524 @ =0x02022AA0
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r0, .L0807A528 @ =0xFFFFFDC0
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #0x12
    movs r2, #1
    adds r3, r5, #0
    bl EfxPalWhiteInOut
    bl EnablePalSync
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0807A520: .4byte 0x0841E3B8
.L0807A524: .4byte 0x02022AA0
.L0807A528: .4byte 0xFFFFFDC0
    func_end func_0807A4DC

    thumb_func_start func_0807A52C
func_0807A52C: @ 0x0807A52C
    push {lr}
    adds r1, r0, #0
    adds r1, #0x64
    movs r2, #0
    strh r2, [r1]
    adds r0, #0x66
    strh r2, [r0]
    ldr r0, .L0807A550 @ =0x08CA7554
    bl Proc_EndEach
    ldr r0, .L0807A554 @ =0x0841E3B8
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r0}
    bx r0
    .align 2, 0
.L0807A550: .4byte 0x08CA7554
.L0807A554: .4byte 0x0841E3B8
    func_end func_0807A52C

    thumb_func_start func_0807A558
func_0807A558: @ 0x0807A558
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    ldr r1, [r0, #0x54]
    cmp r1, #0
    bne .L0807A5D0
    movs r5, #0
    ldr r0, .L0807A5BC @ =0x0203E66C
    ldrb r0, [r0]
    cmp r5, r0
    bge .L0807A662
    ldr r6, .L0807A5C0 @ =gBmSt
.L0807A574:
    adds r0, r5, #0
    bl GetTarget
    movs r1, #0
    ldrsb r1, [r0, r1]
    lsls r1, r1, #4
    movs r3, #0xc
    ldrsh r2, [r6, r3]
    subs r4, r1, r2
    ldrb r0, [r0, #1]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #4
    movs r2, #0xe
    ldrsh r1, [r6, r2]
    subs r2, r0, r1
    movs r3, #0x80
    lsls r3, r3, #2
    adds r0, r4, r3
    ldr r1, .L0807A5C4 @ =0x000001FF
    ands r0, r1
    movs r4, #0x80
    lsls r4, r4, #1
    adds r1, r2, r4
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L0807A5C8 @ =0x08CA7518
    ldr r3, .L0807A5CC @ =0x00002822
    bl PutOamHiRam
    adds r5, #1
    ldr r0, .L0807A5BC @ =0x0203E66C
    ldrb r0, [r0]
    cmp r5, r0
    blt .L0807A574
    b .L0807A662
    .align 2, 0
.L0807A5BC: .4byte 0x0203E66C
.L0807A5C0: .4byte gBmSt
.L0807A5C4: .4byte 0x000001FF
.L0807A5C8: .4byte 0x08CA7518
.L0807A5CC: .4byte 0x00002822
.L0807A5D0:
    cmp r1, #1
    bne .L0807A620
    ldr r0, .L0807A610 @ =gActiveUnit
    ldr r3, [r0]
    movs r0, #0x10
    ldrsb r0, [r3, r0]
    lsls r0, r0, #4
    ldr r2, .L0807A614 @ =gBmSt
    movs r4, #0xc
    ldrsh r1, [r2, r4]
    subs r4, r0, r1
    movs r0, #0x11
    ldrsb r0, [r3, r0]
    lsls r0, r0, #4
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r2, r0, r1
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r4, r1
    subs r1, #1
    ands r0, r1
    movs r3, #0x80
    lsls r3, r3, #1
    adds r1, r2, r3
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L0807A618 @ =0x08CA7518
    ldr r3, .L0807A61C @ =0x00002822
    bl PutOamHiRam
    b .L0807A662
    .align 2, 0
.L0807A610: .4byte gActiveUnit
.L0807A614: .4byte gBmSt
.L0807A618: .4byte 0x08CA7518
.L0807A61C: .4byte 0x00002822
.L0807A620:
    ldrb r0, [r1]
    cmp r0, #0xff
    beq .L0807A662
    ldr r6, .L0807A6A4 @ =gBmSt
    adds r5, r1, #0
.L0807A62A:
    ldrb r4, [r5]
    lsls r1, r4, #4
    movs r2, #0xc
    ldrsh r0, [r6, r2]
    subs r4, r1, r0
    ldrb r3, [r5, #1]
    lsls r1, r3, #4
    movs r2, #0xe
    ldrsh r0, [r6, r2]
    subs r2, r1, r0
    movs r3, #0x80
    lsls r3, r3, #2
    adds r0, r4, r3
    ldr r1, .L0807A6A8 @ =0x000001FF
    ands r0, r1
    movs r4, #0x80
    lsls r4, r4, #1
    adds r1, r2, r4
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L0807A6AC @ =0x08CA7518
    ldr r3, .L0807A6B0 @ =0x00002822
    bl PutOamHiRam
    adds r5, #4
    ldrb r0, [r5]
    cmp r0, #0xff
    bne .L0807A62A
.L0807A662:
    bl GetGameTime
    adds r5, r0, #0
    movs r0, #1
    mov sb, r0
    ands r5, r0
    cmp r5, #0
    bne .L0807A6D8
    mov r6, r8
    adds r6, #0x66
    movs r1, #0
    ldrsh r7, [r6, r1]
    cmp r7, #0
    beq .L0807A6B4
    mov r4, r8
    adds r4, #0x64
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r0, #0x10
    movs r1, #0
    bl func_0807A4DC
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    ble .L0807A6D8
    strh r5, [r4]
    strh r5, [r6]
    b .L0807A6D8
    .align 2, 0
.L0807A6A4: .4byte gBmSt
.L0807A6A8: .4byte 0x000001FF
.L0807A6AC: .4byte 0x08CA7518
.L0807A6B0: .4byte 0x00002822
.L0807A6B4:
    mov r4, r8
    adds r4, #0x64
    movs r0, #0
    ldrsh r2, [r4, r0]
    movs r0, #0
    movs r1, #0x10
    bl func_0807A4DC
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    ble .L0807A6D8
    strh r7, [r4]
    mov r1, sb
    strh r1, [r6]
.L0807A6D8:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0807A558

    thumb_func_start StartTutorialCursors
StartTutorialCursors: @ 0x0807A6E4
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r6, .L0807A734 @ =gActiveUnit
    ldr r0, [r6]
    bl func_080314AC
    ldr r4, .L0807A738 @ =0x0203E66C
    bl CountTargets
    strb r0, [r4]
    cmp r5, #0
    bne .L0807A740
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0807A75A
    ldr r0, .L0807A73C @ =0x08CA7534
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x54]
    movs r0, #0
    bl GetTarget
    movs r1, #0
    ldrsb r1, [r0, r1]
    movs r2, #1
    ldrsb r2, [r0, r2]
    movs r0, #0
    bl EnsureCameraOntoPosition
    ldr r1, [r6]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl SetMapCursorPosition
    b .L0807A75A
    .align 2, 0
.L0807A734: .4byte gActiveUnit
.L0807A738: .4byte 0x0203E66C
.L0807A73C: .4byte 0x08CA7534
.L0807A740:
    ldr r0, .L0807A760 @ =0x08CA7534
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x54]
    ldr r1, [r6]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl SetMapCursorPosition
.L0807A75A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0807A760: .4byte 0x08CA7534
    func_end StartTutorialCursors

    thumb_func_start func_0807A764
func_0807A764: @ 0x0807A764
    adds r0, #0x64
    movs r1, #0xf
    strh r1, [r0]
    bx lr
    func_end func_0807A764

    thumb_func_start func_0807A76C
func_0807A76C: @ 0x0807A76C
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x64
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0807A79A
    bl BoxTalkActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0807A7A6
    ldr r0, .L0807A7AC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0807A7A6
.L0807A79A:
    ldr r0, .L0807A7B0 @ =0x08CA7534
    bl Proc_EndEach
    adds r0, r4, #0
    bl Proc_Break
.L0807A7A6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0807A7AC: .4byte gpKeySt
.L0807A7B0: .4byte 0x08CA7534
    func_end func_0807A76C

    thumb_func_start func_0807A7B4
func_0807A7B4: @ 0x0807A7B4
    push {r4, lr}
    bl BoxTalkActive
    lsls r0, r0, #0x18
    asrs r4, r0, #0x18
    cmp r4, #0
    bne .L0807A7CA
    ldr r0, .L0807A7D4 @ =0x08CA7554
    movs r1, #3
    bl Proc_Start
.L0807A7CA:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0807A7D4: .4byte 0x08CA7554
    func_end func_0807A7B4

    thumb_func_start func_0807A7D8
func_0807A7D8: @ 0x0807A7D8
    push {r4, r5, r6, r7, lr}
    bl GetPlayerLeaderUnitId
    bl GetUnitFromCharId
    adds r5, r0, #0
    movs r7, #0x10
    ldrsb r7, [r5, r7]
    movs r6, #0x11
    ldrsb r6, [r5, r6]
    movs r4, #1
.L0807A7EE:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L0807A824
    ldr r0, [r2]
    cmp r0, #0
    beq .L0807A824
    cmp r2, r5
    beq .L0807A824
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    cmp r0, r7
    bne .L0807A824
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    cmp r0, r6
    bne .L0807A824
    ldr r1, [r2, #0xc]
    movs r0, #0x30
    ands r0, r1
    cmp r0, #0
    bne .L0807A824
    movs r0, #9
    orrs r1, r0
    str r1, [r2, #0xc]
.L0807A824:
    adds r4, #1
    cmp r4, #0x3f
    ble .L0807A7EE
    bl RefreshUnitSprites
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0807A7D8

    thumb_func_start func_0807A834
func_0807A834: @ 0x0807A834
    push {r4, lr}
    movs r4, #1
.L0807A838:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L0807A85A
    ldr r0, [r2]
    cmp r0, #0
    beq .L0807A85A
    ldr r1, [r2, #0xc]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    bne .L0807A85A
    movs r0, #1
    orrs r1, r0
    str r1, [r2, #0xc]
.L0807A85A:
    adds r4, #1
    cmp r4, #0x3f
    ble .L0807A838
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0807A834

    thumb_func_start func_0807A868
func_0807A868: @ 0x0807A868
    push {r4, lr}
    movs r4, #0x41
.L0807A86C:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L0807A884
    ldr r0, [r1]
    cmp r0, #0
    beq .L0807A884
    adds r0, r1, #0
    bl ClearUnit
.L0807A884:
    adds r4, #1
    cmp r4, #0xbf
    ble .L0807A86C
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0807A868

    thumb_func_start func_0807A890
func_0807A890: @ 0x0807A890
    push {r4, lr}
    movs r4, #0x81
.L0807A894:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L0807A8AC
    ldr r0, [r1]
    cmp r0, #0
    beq .L0807A8AC
    adds r0, r1, #0
    bl ClearUnit
.L0807A8AC:
    adds r4, #1
    cmp r4, #0xbf
    ble .L0807A894
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0807A890

    thumb_func_start func_0807A8B8
func_0807A8B8: @ 0x0807A8B8
    push {r4, r5, r6, lr}
    movs r4, #0x41
.L0807A8BC:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L0807A8D4
    ldr r0, [r1]
    cmp r0, #0
    beq .L0807A8D4
    adds r0, r1, #0
    bl ClearUnit
.L0807A8D4:
    adds r4, #1
    cmp r4, #0xbf
    ble .L0807A8BC
    movs r5, #1
    movs r6, #0
.L0807A8DE:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L0807A91E
    ldr r0, [r4]
    cmp r0, #0
    beq .L0807A91E
    adds r0, r4, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r4, #0
    bl SetUnitHp
    adds r0, r4, #0
    movs r1, #0
    bl SetUnitStatus
    adds r0, r4, #0
    adds r0, #0x31
    strb r6, [r0]
    ldr r1, [r4, #0xc]
    ldr r0, .L0807A934 @ =0x0671E00C
    ands r1, r0
    movs r0, #0xff
    strb r0, [r4, #0x10]
    movs r0, #1
    orrs r1, r0
    str r1, [r4, #0xc]
    strb r6, [r4, #0x1b]
.L0807A91E:
    adds r5, #1
    cmp r5, #0x3f
    ble .L0807A8DE
    bl RefreshEntityMaps
    bl EndAllMus
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0807A934: .4byte 0x0671E00C
    func_end func_0807A8B8

    thumb_func_start func_0807A938
func_0807A938: @ 0x0807A938
    push {r4, lr}
    adds r4, r0, #0
    adds r4, #0x4c
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0807A956
    bl LockBmDisplay
    bl LockMus
    movs r0, #0
    strb r0, [r4]
.L0807A956:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0807A938

    thumb_func_start func_0807A95C
func_0807A95C: @ 0x0807A95C
    push {lr}
    adds r2, r0, #0
    adds r2, #0x4c
    ldrb r3, [r2]
    movs r1, #0
    ldrsb r1, [r2, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0807A982
    movs r0, #0xff
    strb r0, [r2]
    bl RefreshBMapGraphics
    bl UnlockBmDisplay
    bl ReleaseMus
    b .L0807A986
.L0807A982:
    bl RefreshBMapGraphics
.L0807A986:
    pop {r0}
    bx r0
    func_end func_0807A95C

    thumb_func_start func_0807A98C
func_0807A98C: @ 0x0807A98C
    push {lr}
    adds r2, r0, #0
    adds r2, #0x4c
    ldrb r3, [r2]
    movs r1, #0
    ldrsb r1, [r2, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0807A9B2
    movs r0, #0xff
    strb r0, [r2]
    bl func_0802E338
    bl UnlockBmDisplay
    bl ReleaseMus
    b .L0807A9B6
.L0807A9B2:
    bl func_0802E338
.L0807A9B6:
    pop {r0}
    bx r0
    func_end func_0807A98C

    thumb_func_start TryLockParentProc
TryLockParentProc: @ 0x0807A9BC
    push {lr}
    ldr r0, [r0, #0x14]
    bl TryLockProc
    pop {r0}
    bx r0
    func_end TryLockParentProc

    thumb_func_start TryUnlockParentProc
TryUnlockParentProc: @ 0x0807A9C8
    push {lr}
    ldr r0, [r0, #0x14]
    bl TryUnlockProc
    pop {r0}
    bx r0
    func_end TryUnlockParentProc

    thumb_func_start func_0807A9D4
func_0807A9D4: @ 0x0807A9D4
    push {lr}
    movs r0, #0
    bl InitBgs
    ldr r2, .L0807AA00 @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    pop {r0}
    bx r0
    .align 2, 0
.L0807AA00: .4byte gDispIo
    func_end func_0807A9D4

    thumb_func_start func_0807AA04
func_0807AA04: @ 0x0807AA04
    push {r4, lr}
    movs r0, #0x26
    bl GetUnitFromCharId
    adds r4, r0, #0
    movs r0, #0x25
    bl GetUnitFromCharId
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08026C38
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0807AA04

    thumb_func_start func_0807AA24
func_0807AA24: @ 0x0807AA24
    push {lr}
    sub sp, #0x10
    movs r2, #1
    rsbs r2, r2, #0
    movs r1, #0xc0
    lsls r1, r1, #1
    str r1, [sp]
    str r1, [sp, #4]
    str r1, [sp, #8]
    str r0, [sp, #0xc]
    adds r0, r2, #0
    movs r1, #2
    movs r2, #0x20
    movs r3, #4
    bl StartScreenFlashing
    add sp, #0x10
    pop {r0}
    bx r0
    func_end func_0807AA24

    thumb_func_start func_0807AA4C
func_0807AA4C: @ 0x0807AA4C
    push {lr}
    sub sp, #0x10
    movs r2, #1
    rsbs r2, r2, #0
    movs r1, #0x80
    lsls r1, r1, #2
    str r1, [sp]
    subs r1, #0xc0
    str r1, [sp, #4]
    str r1, [sp, #8]
    str r0, [sp, #0xc]
    adds r0, r2, #0
    movs r1, #2
    movs r2, #0x20
    movs r3, #4
    bl StartScreenFlashing
    add sp, #0x10
    pop {r0}
    bx r0
    func_end func_0807AA4C

    thumb_func_start func_0807AA74
func_0807AA74: @ 0x0807AA74
    adds r0, #0x4d
    movs r3, #0
    movs r1, #1
    strb r1, [r0]
    ldr r0, .L0807AAB8 @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0xc0
    ldrb r1, [r2]
    orrs r0, r1
    strb r0, [r2]
    mov r0, ip
    adds r0, #0x44
    strb r3, [r0]
    adds r0, #1
    strb r3, [r0]
    mov r1, ip
    adds r1, #0x46
    movs r0, #0x10
    strb r0, [r1]
    ldr r0, .L0807AABC @ =0x0000FFE0
    mov r3, ip
    ldrh r3, [r3, #0x3c]
    ands r0, r3
    movs r1, #0x1f
    orrs r0, r1
    mov r1, ip
    strh r0, [r1, #0x3c]
    movs r0, #0x20
    ldrb r3, [r2]
    orrs r0, r3
    strb r0, [r2]
    bx lr
    .align 2, 0
.L0807AAB8: .4byte gDispIo
.L0807AABC: .4byte 0x0000FFE0
    func_end func_0807AA74

    thumb_func_start func_0807AAC0
func_0807AAC0: @ 0x0807AAC0
    ldr r2, .L0807AAE0 @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    bx lr
    .align 2, 0
.L0807AAE0: .4byte gDispIo
    func_end func_0807AAC0

    thumb_func_start func_0807AAE4
func_0807AAE4: @ 0x0807AAE4
    ldr r2, .L0807AB00 @ =gDispIo
    movs r0, #1
    ldrb r1, [r2, #1]
    orrs r0, r1
    movs r1, #2
    orrs r0, r1
    movs r1, #4
    orrs r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r2, #1]
    bx lr
    .align 2, 0
.L0807AB00: .4byte gDispIo
    func_end func_0807AAE4
