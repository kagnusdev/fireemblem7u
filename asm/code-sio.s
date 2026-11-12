    .include "asm_prelude.inc"

    thumb_func_start func_0803C130
func_0803C130: @ 0x0803C130
    push {r4, r5, lr}
    ldr r4, .L0803C144 @ =0x03004748
    ldr r3, [r4]
    cmp r3, #0
    beq .L0803C14C
    cmp r3, #1
    beq .L0803C1B8
    ldr r0, .L0803C148 @ =0x030013CC
    ldr r0, [r0]
    b .L0803C242
    .align 2, 0
.L0803C144: .4byte 0x03004748
.L0803C148: .4byte 0x030013CC
.L0803C14C:
    ldr r0, .L0803C19C @ =0x04000134
    strh r3, [r0]
    ldr r2, .L0803C1A0 @ =0x04000128
    ldr r0, .L0803C1A4 @ =0x08B98AEC
    ldr r0, [r0]
    ldr r1, .L0803C1A8 @ =0x00001B78
    adds r0, r0, r1
    ldrh r0, [r0]
    mvns r0, r0
    strh r0, [r2, #2]
    ldr r1, .L0803C1AC @ =0x030013C8
    movs r5, #0xc0
    lsls r5, r5, #7
    adds r0, r5, #0
    ldrb r1, [r1]
    orrs r0, r1
    strh r0, [r2]
    ldrh r0, [r2]
    adds r2, r0, #0
    movs r0, #8
    ands r0, r2
    cmp r0, #0
    beq .L0803C23E
    ldr r1, .L0803C1B0 @ =0x030013CC
    movs r0, #4
    ands r2, r0
    lsls r0, r2, #0x10
    lsrs r0, r0, #0x10
    str r0, [r1]
    cmp r0, #0
    beq .L0803C190
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r1]
.L0803C190:
    ldr r0, .L0803C1B4 @ =0x030046B8
    str r3, [r0]
    movs r0, #1
    str r0, [r4]
    b .L0803C23E
    .align 2, 0
.L0803C19C: .4byte 0x04000134
.L0803C1A0: .4byte 0x04000128
.L0803C1A4: .4byte 0x08B98AEC
.L0803C1A8: .4byte 0x00001B78
.L0803C1AC: .4byte 0x030013C8
.L0803C1B0: .4byte 0x030013CC
.L0803C1B4: .4byte 0x030046B8
.L0803C1B8:
    ldr r0, .L0803C1EC @ =0x04000128
    ldrh r0, [r0]
    adds r2, r0, #0
    ldr r0, .L0803C1F0 @ =0x030046B8
    ldr r0, [r0]
    ldr r3, .L0803C1F4 @ =0x08B98AEC
    cmp r0, #0
    beq .L0803C200
    movs r0, #0x40
    ands r0, r2
    cmp r0, #0
    bne .L0803C200
    ldr r1, [r3]
    ldr r0, .L0803C1F8 @ =0x0000FFFF
    ldrh r1, [r1, #0x14]
    cmp r1, r0
    beq .L0803C200
    ldr r1, .L0803C1FC @ =0x030013CC
    movs r0, #0x30
    ands r2, r0
    lsrs r0, r2, #4
    str r0, [r1]
    movs r1, #2
    str r1, [r4]
    b .L0803C242
    .align 2, 0
.L0803C1EC: .4byte 0x04000128
.L0803C1F0: .4byte 0x030046B8
.L0803C1F4: .4byte 0x08B98AEC
.L0803C1F8: .4byte 0x0000FFFF
.L0803C1FC: .4byte 0x030013CC
.L0803C200:
    ldr r2, .L0803C220 @ =0x04000128
    ldr r0, [r3]
    ldr r1, .L0803C224 @ =0x00001B78
    adds r0, r0, r1
    ldrh r0, [r0]
    mvns r0, r0
    strh r0, [r2, #2]
    ldr r0, .L0803C228 @ =0x030013CC
    ldr r0, [r0]
    cmp r0, #0
    beq .L0803C230
    ldr r1, .L0803C22C @ =0x030013C8
    movs r3, #0xc0
    lsls r3, r3, #7
    adds r0, r3, #0
    b .L0803C238
    .align 2, 0
.L0803C220: .4byte 0x04000128
.L0803C224: .4byte 0x00001B78
.L0803C228: .4byte 0x030013CC
.L0803C22C: .4byte 0x030013C8
.L0803C230:
    ldr r1, .L0803C248 @ =0x030013C8
    movs r5, #0xc1
    lsls r5, r5, #7
    adds r0, r5, #0
.L0803C238:
    ldrb r1, [r1]
    orrs r0, r1
    strh r0, [r2]
.L0803C23E:
    movs r0, #1
    rsbs r0, r0, #0
.L0803C242:
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0803C248: .4byte 0x030013C8
    func_end func_0803C130

    thumb_func_start func_0803C24C
func_0803C24C: @ 0x0803C24C
    ldr r0, .L0803C258 @ =0x04000128
    ldrh r1, [r0]
    movs r0, #0x30
    ands r0, r1
    lsrs r0, r0, #4
    bx lr
    .align 2, 0
.L0803C258: .4byte 0x04000128
    func_end func_0803C24C

    thumb_func_start func_0803C25C
func_0803C25C: @ 0x0803C25C
    push {r4, r5, lr}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r3, .L0803C284 @ =0x08B98AEC
    ldr r3, [r3]
    ldr r5, .L0803C288 @ =0x00001B78
    adds r4, r3, r5
    strh r0, [r4]
    ldr r4, .L0803C28C @ =0x00001B7A
    adds r0, r3, r4
    strh r1, [r0]
    adds r5, #4
    adds r3, r3, r5
    strh r2, [r3]
    ldr r0, .L0803C290 @ =0x030013C8
    strb r1, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C284: .4byte 0x08B98AEC
.L0803C288: .4byte 0x00001B78
.L0803C28C: .4byte 0x00001B7A
.L0803C290: .4byte 0x030013C8
    func_end func_0803C25C

    thumb_func_start func_0803C294
func_0803C294: @ 0x0803C294
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    ldr r0, .L0803C3E4 @ =0x030046B4
    movs r3, #0
    str r3, [r0]
    ldr r2, .L0803C3E8 @ =0x08B98AEC
    ldr r0, [r2]
    movs r1, #0
    strh r3, [r0, #0x22]
    strh r3, [r0, #0x24]
    ldr r4, .L0803C3EC @ =0x00001B74
    adds r0, r0, r4
    strb r1, [r0]
    ldr r0, [r2]
    adds r4, #1
    adds r0, r0, r4
    strb r1, [r0]
    ldr r0, [r2]
    adds r4, #1
    adds r0, r0, r4
    strb r1, [r0]
    ldr r0, [r2]
    adds r4, #1
    adds r0, r0, r4
    strb r1, [r0]
    ldr r0, [r2]
    strb r1, [r0, #0x1e]
    ldr r0, [r2]
    strb r1, [r0, #0x1f]
    ldr r0, [r2]
    adds r0, #0x20
    strb r1, [r0]
    ldr r0, [r2]
    strh r3, [r0, #0x30]
    ldr r0, .L0803C3F0 @ =0x030013D8
    mov sb, r0
    ldr r1, .L0803C3F4 @ =0x030013DA
    mov r8, r1
    adds r5, r2, #0
    movs r4, #0
.L0803C2E8:
    ldr r0, [r5]
    adds r0, #0xb
    adds r0, r0, r3
    strb r4, [r0]
    ldr r1, [r5]
    lsls r2, r3, #1
    adds r0, r1, #0
    adds r0, #0x12
    adds r0, r0, r2
    strh r4, [r0]
    adds r1, #0x1a
    adds r1, r1, r3
    strb r4, [r1]
    ldr r0, [r5]
    adds r0, #0x26
    adds r0, r0, r2
    strh r4, [r0]
    adds r3, #1
    cmp r3, #3
    ble .L0803C2E8
    movs r3, #0
    ldr r5, .L0803C3F8 @ =0x030047B0
    movs r2, #0
    ldr r4, .L0803C3E8 @ =0x08B98AEC
.L0803C318:
    adds r0, r3, r5
    strb r2, [r0]
    ldr r0, [r4]
    lsls r1, r3, #1
    adds r0, #0x32
    adds r0, r0, r1
    strh r2, [r0]
    adds r3, #1
    cmp r3, #0x7f
    ble .L0803C318
    movs r4, #0
    ldr r5, .L0803C3E8 @ =0x08B98AEC
    movs r1, #0
    movs r2, #0x9a
    lsls r2, r2, #1
.L0803C336:
    ldr r0, [r5]
    adds r0, r0, r2
    strb r1, [r0]
    strb r1, [r0, #4]
    movs r3, #0x7f
    adds r0, #0x89
.L0803C342:
    strb r1, [r0]
    subs r0, #1
    subs r3, #1
    cmp r3, #0
    bge .L0803C342
    adds r2, #0x8c
    adds r4, #1
    cmp r4, #0x1f
    ble .L0803C336
    movs r4, #0
    ldr r2, .L0803C3E8 @ =0x08B98AEC
    mov ip, r2
    movs r5, #0
    movs r7, #0x8c
    ldr r6, .L0803C3FC @ =0x000012B4
.L0803C360:
    adds r0, r4, #0
    muls r0, r7, r0
    adds r0, r0, r6
    mov r2, ip
    ldr r1, [r2]
    adds r1, r1, r0
    strb r5, [r1]
    strb r5, [r1, #4]
    adds r2, r4, #1
    movs r3, #0x7f
    adds r1, #0x89
.L0803C376:
    strb r5, [r1]
    subs r1, #1
    subs r3, #1
    cmp r3, #0
    bge .L0803C376
    adds r4, r2, #0
    cmp r4, #0xf
    ble .L0803C360
    movs r0, #0
    mov r4, r8
    strh r0, [r4]
    mov r1, sb
    strh r0, [r1]
    movs r1, #0
    ldr r0, .L0803C400 @ =0x0203C50C
    movs r3, #0x80
    lsls r3, r3, #2
.L0803C398:
    strh r1, [r0]
    adds r0, #2
    subs r3, #1
    cmp r3, #0
    bne .L0803C398
    movs r4, #0
    ldr r2, .L0803C404 @ =0x030013E0
    mov r8, r2
    movs r5, #0
    ldr r0, .L0803C408 @ =0x000001FF
    mov ip, r0
    ldr r7, .L0803C40C @ =0x0203C90C
    ldr r6, .L0803C410 @ =0x030013E8
.L0803C3B2:
    lsls r0, r4, #1
    mov r1, r8
    adds r2, r0, r1
    adds r1, r0, r6
    strh r5, [r1]
    strh r5, [r2]
    adds r2, r4, #1
    adds r0, r0, r7
    mov r3, ip
    adds r3, #1
.L0803C3C6:
    strh r5, [r0]
    adds r0, #8
    subs r3, #1
    cmp r3, #0
    bne .L0803C3C6
    adds r4, r2, #0
    cmp r4, #3
    ble .L0803C3B2
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C3E4: .4byte 0x030046B4
.L0803C3E8: .4byte 0x08B98AEC
.L0803C3EC: .4byte 0x00001B74
.L0803C3F0: .4byte 0x030013D8
.L0803C3F4: .4byte 0x030013DA
.L0803C3F8: .4byte 0x030047B0
.L0803C3FC: .4byte 0x000012B4
.L0803C400: .4byte 0x0203C50C
.L0803C404: .4byte 0x030013E0
.L0803C408: .4byte 0x000001FF
.L0803C40C: .4byte 0x0203C90C
.L0803C410: .4byte 0x030013E8
    func_end func_0803C294

    thumb_func_start func_0803C414
func_0803C414: @ 0x0803C414
    push {r4, lr}
    ldr r2, .L0803C470 @ =0x08B98AEC
    ldr r0, [r2]
    movs r4, #0
    strb r4, [r0]
    ldr r0, [r2]
    strb r4, [r0, #1]
    ldr r1, [r2]
    movs r3, #0
    strh r4, [r1, #2]
    strh r4, [r1, #4]
    movs r0, #0xff
    strb r0, [r1, #6]
    ldr r0, [r2]
    strb r3, [r0, #7]
    ldr r0, [r2]
    strb r3, [r0, #8]
    ldr r0, [r2]
    strb r3, [r0, #9]
    ldr r0, [r2]
    strb r3, [r0, #0xf]
    ldr r0, [r2]
    strb r3, [r0, #0x10]
    ldr r0, [r2]
    strb r3, [r0, #0x11]
    ldr r0, [r2]
    adds r0, #0x2e
    strb r3, [r0]
    ldr r0, [r2]
    strb r3, [r0, #0xa]
    ldr r0, .L0803C474 @ =0x00006581
    movs r1, #3
    movs r2, #0x88
    bl func_0803C25C
    movs r0, #0
    bl func_0803D500
    bl func_0803C294
    ldr r0, .L0803C478 @ =0x030013D4
    str r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C470: .4byte 0x08B98AEC
.L0803C474: .4byte 0x00006581
.L0803C478: .4byte 0x030013D4
    func_end func_0803C414

    thumb_func_start func_0803C47C
func_0803C47C: @ 0x0803C47C
    push {r4, lr}
    ldr r0, .L0803C4CC @ =0x04000134
    movs r3, #0
    strh r3, [r0]
    ldr r2, .L0803C4D0 @ =0x04000128
    ldr r1, .L0803C4D4 @ =0x030013C8
    movs r4, #0x80
    lsls r4, r4, #6
    adds r0, r4, #0
    ldrb r1, [r1]
    orrs r0, r1
    strh r0, [r2]
    ldr r0, .L0803C4D8 @ =0x0400010E
    strh r3, [r0]
    ldr r2, .L0803C4DC @ =0x030046B8
    ldr r1, .L0803C4E0 @ =0x030046B4
    movs r0, #0
    str r0, [r1]
    str r0, [r2]
    ldr r1, .L0803C4E4 @ =0x03004748
    str r0, [r1]
    ldr r1, .L0803C4E8 @ =0x030013CC
    subs r0, #1
    str r0, [r1]
    ldr r1, .L0803C4EC @ =func_0803C558
    movs r0, #7
    bl SetIrqFunc
    ldr r1, .L0803C4F0 @ =func_0803C8E8
    movs r0, #6
    bl SetIrqFunc
    ldr r2, .L0803C4F4 @ =0x04000200
    ldrh r0, [r2]
    movs r1, #0xc0
    orrs r0, r1
    strh r0, [r2]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C4CC: .4byte 0x04000134
.L0803C4D0: .4byte 0x04000128
.L0803C4D4: .4byte 0x030013C8
.L0803C4D8: .4byte 0x0400010E
.L0803C4DC: .4byte 0x030046B8
.L0803C4E0: .4byte 0x030046B4
.L0803C4E4: .4byte 0x03004748
.L0803C4E8: .4byte 0x030013CC
.L0803C4EC: .4byte func_0803C558
.L0803C4F0: .4byte func_0803C8E8
.L0803C4F4: .4byte 0x04000200
    func_end func_0803C47C

    thumb_func_start func_0803C4F8
func_0803C4F8: @ 0x0803C4F8
    push {lr}
    ldr r1, .L0803C53C @ =0x04000134
    movs r2, #0x80
    lsls r2, r2, #8
    adds r0, r2, #0
    strh r0, [r1]
    subs r1, #0xc
    movs r0, #0
    strh r0, [r1]
    ldr r2, .L0803C540 @ =0x030046B8
    ldr r1, .L0803C544 @ =0x030046B4
    movs r0, #0
    str r0, [r1]
    str r0, [r2]
    ldr r1, .L0803C548 @ =0x03004748
    str r0, [r1]
    ldr r1, .L0803C54C @ =0x030013CC
    subs r0, #1
    str r0, [r1]
    movs r0, #7
    movs r1, #0
    bl SetIrqFunc
    movs r0, #6
    movs r1, #0
    bl SetIrqFunc
    ldr r2, .L0803C550 @ =0x04000200
    ldrh r1, [r2]
    ldr r0, .L0803C554 @ =0x0000FF3F
    ands r0, r1
    strh r0, [r2]
    pop {r0}
    bx r0
    .align 2, 0
.L0803C53C: .4byte 0x04000134
.L0803C540: .4byte 0x030046B8
.L0803C544: .4byte 0x030046B4
.L0803C548: .4byte 0x03004748
.L0803C54C: .4byte 0x030013CC
.L0803C550: .4byte 0x04000200
.L0803C554: .4byte 0x0000FF3F
    func_end func_0803C4F8

    thumb_func_start func_0803C558
func_0803C558: @ 0x0803C558
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    movs r0, #0
    mov sb, r0
    ldr r0, .L0803C5EC @ =0x030046B8
    movs r2, #1
    str r2, [r0]
    ldr r1, .L0803C5F0 @ =0x08B98AEC
    ldr r0, [r1]
    mov r3, sb
    strb r3, [r0, #0x1e]
    ldr r0, .L0803C5F4 @ =0x030046B4
    str r2, [r0]
    ldr r0, [r1]
    strb r3, [r0, #8]
    ldr r0, .L0803C5F8 @ =0x0400010E
    mov r5, sb
    strh r5, [r0]
    ldr r2, [r1]
    ldr r3, .L0803C5FC @ =0x04000128
    ldrh r0, [r3]
    lsls r1, r0, #0x10
    strh r0, [r2, #2]
    ldrh r0, [r2, #4]
    cmp r0, #6
    beq .L0803C59C
    lsrs r0, r1, #0x14
    movs r1, #3
    ands r0, r1
    strb r0, [r2, #6]
.L0803C59C:
    ldr r0, .L0803C600 @ =0x04000120
    ldr r1, [r0, #4]
    ldr r0, [r0]
    str r0, [sp]
    str r1, [sp, #4]
    ldr r1, .L0803C604 @ =0x030013C8
    movs r2, #0xc0
    lsls r2, r2, #7
    adds r0, r2, #0
    ldrb r1, [r1]
    orrs r0, r1
    strh r0, [r3]
    ldr r0, .L0803C608 @ =0x00007FFF
    strh r0, [r3, #2]
    movs r5, #0
    ldr r3, .L0803C60C @ =0x0000FFFF
    mov sl, r3
    mov r4, sp
    movs r7, #0
.L0803C5C2:
    ldrh r0, [r4]
    cmp r0, #0
    beq .L0803C610
    cmp r0, sl
    beq .L0803C610
    ldr r1, .L0803C5F0 @ =0x08B98AEC
    ldr r0, [r1]
    adds r0, #0xb
    adds r2, r0, r5
    ldrb r0, [r2]
    cmp r0, #0
    bne .L0803C5DE
    movs r0, #1
    strb r0, [r2]
.L0803C5DE:
    ldr r1, [r1]
    movs r0, #1
    lsls r0, r5
    ldrb r2, [r1, #8]
    orrs r0, r2
    strb r0, [r1, #8]
    b .L0803C64A
    .align 2, 0
.L0803C5EC: .4byte 0x030046B8
.L0803C5F0: .4byte 0x08B98AEC
.L0803C5F4: .4byte 0x030046B4
.L0803C5F8: .4byte 0x0400010E
.L0803C5FC: .4byte 0x04000128
.L0803C600: .4byte 0x04000120
.L0803C604: .4byte 0x030013C8
.L0803C608: .4byte 0x00007FFF
.L0803C60C: .4byte 0x0000FFFF
.L0803C610:
    lsls r0, r5, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803C64A
    ldr r0, .L0803C63C @ =0x08B98AEC
    ldr r1, [r0]
    adds r0, r1, #0
    adds r0, #0x12
    adds r0, r0, r7
    ldrh r0, [r0]
    cmp r0, sl
    bne .L0803C640
    adds r0, r1, #0
    adds r0, #0x1a
    adds r0, r0, r5
    ldrb r1, [r0]
    adds r1, #1
    b .L0803C648
    .align 2, 0
.L0803C63C: .4byte 0x08B98AEC
.L0803C640:
    adds r0, r1, #0
    adds r0, #0x1a
    adds r0, r0, r5
    movs r1, #0
.L0803C648:
    strb r1, [r0]
.L0803C64A:
    ldr r3, .L0803C6A4 @ =0x08B98AEC
    mov r8, r3
    ldr r6, [r3]
    adds r3, r6, #0
    adds r3, #0x12
    adds r3, r3, r7
    mov ip, r3
    ldr r1, .L0803C6A8 @ =0x0203C90C
    ldr r2, .L0803C6AC @ =0x030013E8
    adds r2, r7, r2
    ldrh r3, [r2]
    lsls r0, r3, #3
    adds r0, r7, r0
    adds r0, r0, r1
    ldrh r1, [r4]
    strh r1, [r0]
    ldr r0, .L0803C6B0 @ =0x0000FFFF
    ldrh r1, [r4]
    ands r0, r1
    mov r3, ip
    strh r0, [r3]
    ldrh r0, [r2]
    adds r0, #1
    ldr r1, .L0803C6B4 @ =0x000001FF
    mov ip, r1
    mov r3, ip
    ands r0, r3
    strh r0, [r2]
    adds r4, #2
    adds r7, #2
    adds r5, #1
    cmp r5, #3
    ble .L0803C5C2
    mov r4, r8
    adds r0, r6, #0
    ldrh r5, [r0, #4]
    cmp r5, #4
    bls .L0803C770
    ldrb r0, [r0, #1]
    cmp r0, #1
    beq .L0803C6B8
    cmp r0, #3
    beq .L0803C718
    b .L0803C770
    .align 2, 0
.L0803C6A4: .4byte 0x08B98AEC
.L0803C6A8: .4byte 0x0203C90C
.L0803C6AC: .4byte 0x030013E8
.L0803C6B0: .4byte 0x0000FFFF
.L0803C6B4: .4byte 0x000001FF
.L0803C6B8:
    ldr r0, .L0803C704 @ =0x030013DA
    ldr r2, .L0803C708 @ =0x030013D8
    ldrh r3, [r2]
    ldrh r0, [r0]
    cmp r0, r3
    beq .L0803C6DE
    ldr r1, .L0803C70C @ =0x0203C50C
    lsls r0, r3, #1
    adds r0, r0, r1
    ldrh r1, [r0]
    add r0, sp, #8
    strh r1, [r0]
    adds r1, r3, #1
    mov r3, ip
    ands r1, r3
    strh r1, [r2]
    movs r1, #1
    bl func_0803D0E4
.L0803C6DE:
    ldr r1, [r4]
    movs r0, #6
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L0803C770
    ldr r5, .L0803C710 @ =0x00001B7C
    adds r2, r1, r5
    ldrh r0, [r2]
    cmp r0, #0
    beq .L0803C770
    ldr r1, .L0803C714 @ =0x0400010C
    ldrh r2, [r2]
    rsbs r0, r2, #0
    str r0, [r1]
    adds r1, #2
    movs r0, #0xc3
    strh r0, [r1]
    b .L0803C770
    .align 2, 0
.L0803C704: .4byte 0x030013DA
.L0803C708: .4byte 0x030013D8
.L0803C70C: .4byte 0x0203C50C
.L0803C710: .4byte 0x00001B7C
.L0803C714: .4byte 0x0400010C
.L0803C718:
    movs r0, #6
    ldrsb r0, [r6, r0]
    cmp r0, #0
    beq .L0803C732
    adds r0, r6, #0
    adds r0, #0x30
    movs r1, #1
    bl func_0803D0E4
    mov r0, r8
    ldr r1, [r0]
    ldr r0, .L0803C788 @ =0x00005FFF
    strh r0, [r1, #0x30]
.L0803C732:
    movs r5, #0
    ldr r6, .L0803C78C @ =0x00001286
    mov r4, sp
.L0803C738:
    lsls r0, r5, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803C756
    ldrh r1, [r4]
    cmp r1, r6
    beq .L0803C756
    mov r0, sb
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov sb, r0
.L0803C756:
    adds r4, #2
    adds r5, #1
    cmp r5, #3
    ble .L0803C738
    mov r2, sb
    cmp r2, #0
    bne .L0803C770
    ldr r0, .L0803C790 @ =0x08B98AEC
    ldr r0, [r0]
    ldr r3, .L0803C794 @ =0x00001B7E
    adds r0, r0, r3
    movs r1, #1
    strh r1, [r0]
.L0803C770:
    ldr r1, .L0803C798 @ =0x030046B4
    movs r0, #0
    str r0, [r1]
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C788: .4byte 0x00005FFF
.L0803C78C: .4byte 0x00001286
.L0803C790: .4byte 0x08B98AEC
.L0803C794: .4byte 0x00001B7E
.L0803C798: .4byte 0x030046B4
    func_end func_0803C558

    thumb_func_start func_0803C79C
func_0803C79C: @ 0x0803C79C
    push {r4, r5, r6, lr}
    sub sp, #4
    ldr r0, .L0803C7D8 @ =0x08B98AEC
    ldr r2, [r0]
    adds r5, r0, #0
    ldrh r0, [r2, #4]
    cmp r0, #4
    bhi .L0803C7AE
    b .L0803C8DC
.L0803C7AE:
    ldrb r0, [r2, #1]
    cmp r0, #0
    bne .L0803C7B6
    b .L0803C8DC
.L0803C7B6:
    ldrb r0, [r2, #0x1e]
    adds r0, #1
    strb r0, [r2, #0x1e]
    ldr r1, [r5]
    ldrh r0, [r1, #4]
    cmp r0, #6
    bne .L0803C844
    adds r0, r1, #0
    adds r0, #0x21
    ldrb r0, [r0]
    cmp r0, #2
    beq .L0803C7F6
    cmp r0, #2
    bgt .L0803C7DC
    cmp r0, #1
    beq .L0803C81C
    b .L0803C844
    .align 2, 0
.L0803C7D8: .4byte 0x08B98AEC
.L0803C7DC:
    cmp r0, #3
    bne .L0803C844
    ldrb r0, [r1, #0x1e]
    cmp r0, #0x3c
    bls .L0803C7F6
    movs r0, #6
    ldrsb r0, [r1, r0]
    adds r1, #0xb
    adds r1, r1, r0
    movs r0, #0
    strb r0, [r1]
    bl func_080867C0
.L0803C7F6:
    ldr r4, .L0803C868 @ =0x08B98AEC
    ldr r0, [r4]
    ldrb r0, [r0, #1]
    cmp r0, #0
    beq .L0803C81C
    bl func_0803CD64
    lsls r0, r0, #0x18
    asrs r2, r0, #0x18
    cmp r2, #0
    bne .L0803C81C
    ldr r0, [r4]
    movs r1, #6
    ldrsb r1, [r0, r1]
    adds r0, #0xb
    adds r0, r0, r1
    strb r2, [r0]
    bl func_080867C0
.L0803C81C:
    movs r4, #0
    ldr r5, .L0803C868 @ =0x08B98AEC
.L0803C820:
    ldr r0, .L0803C868 @ =0x08B98AEC
    ldr r1, [r0]
    adds r0, r1, #0
    adds r0, #0x1a
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x3c
    bls .L0803C83E
    adds r0, r1, #0
    adds r0, #0xb
    adds r0, r0, r4
    movs r1, #0
    strb r1, [r0]
    bl func_080867C0
.L0803C83E:
    adds r4, #1
    cmp r4, #3
    ble .L0803C820
.L0803C844:
    adds r4, r5, #0
    ldr r1, [r4]
    ldrb r0, [r1, #1]
    adds r6, r0, #0
    cmp r6, #1
    bne .L0803C8B8
    ldrb r5, [r1, #0x10]
    cmp r5, #0
    bne .L0803C89A
    ldrb r1, [r1, #0x11]
    cmp r1, #0x3c
    bls .L0803C86C
    bl func_080867C0
    ldr r1, [r4]
    movs r0, #2
    strh r0, [r1, #4]
    b .L0803C8DC
    .align 2, 0
.L0803C868: .4byte 0x08B98AEC
.L0803C86C:
    mov r0, sp
    bl func_0803D210
    cmp r0, #0
    beq .L0803C89A
    ldr r1, [sp]
    adds r1, #6
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    bl func_0803CE34
    lsls r0, r0, #0x10
    cmp r0, #0
    ble .L0803C89A
    ldr r0, [r4]
    strb r5, [r0, #0x10]
    ldr r1, [r4]
    ldrb r0, [r1, #0x11]
    adds r0, #1
    strb r0, [r1, #0x11]
    ldr r0, [r4]
    adds r0, #0x2e
    strb r6, [r0]
.L0803C89A:
    ldr r2, .L0803C8B4 @ =0x08B98AEC
    ldr r1, [r2]
    ldrb r0, [r1, #0x10]
    adds r0, #1
    strb r0, [r1, #0x10]
    ldr r4, [r2]
    ldrb r0, [r4, #0x10]
    movs r1, #0x26
    bl __umodsi3
    strb r0, [r4, #0x10]
    b .L0803C8DC
    .align 2, 0
.L0803C8B4: .4byte 0x08B98AEC
.L0803C8B8:
    subs r0, #2
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #1
    bhi .L0803C8DC
    movs r0, #6
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L0803C8DC
    adds r0, r1, #0
    adds r0, #0x30
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0803D0E4
    ldr r1, [r5]
    ldr r0, .L0803C8E4 @ =0x00005FFF
    strh r0, [r1, #0x30]
.L0803C8DC:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C8E4: .4byte 0x00005FFF
    func_end func_0803C79C

    thumb_func_start func_0803C8E8
func_0803C8E8: @ 0x0803C8E8
    ldr r1, .L0803C900 @ =0x0400010E
    movs r0, #0
    strh r0, [r1]
    ldr r2, .L0803C904 @ =0x04000128
    ldr r1, .L0803C908 @ =0x030013C8
    movs r3, #0xc1
    lsls r3, r3, #7
    adds r0, r3, #0
    ldrb r1, [r1]
    orrs r0, r1
    strh r0, [r2]
    bx lr
    .align 2, 0
.L0803C900: .4byte 0x0400010E
.L0803C904: .4byte 0x04000128
.L0803C908: .4byte 0x030013C8
    func_end func_0803C8E8

    thumb_func_start func_0803C90C
func_0803C90C: @ 0x0803C90C
    push {r4, r5, lr}
    sub sp, #0x10
    adds r2, r0, #0
    mov r1, sp
    ldr r0, .L0803C93C @ =0x081D3BFC
    ldm r0!, {r3, r4, r5}
    stm r1!, {r3, r4, r5}
    ldr r0, [r0]
    str r0, [r1]
    ldr r0, .L0803C940 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0803C934
    lsls r0, r2, #2
    add r0, sp
    ldrh r0, [r0]
    bl m4aSongNumStart
.L0803C934:
    add sp, #0x10
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803C93C: .4byte 0x081D3BFC
.L0803C940: .4byte gPlaySt
    func_end func_0803C90C

    thumb_func_start func_0803C944
func_0803C944: @ 0x0803C944
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r0, .L0803C998 @ =0x08B98AEC
    ldr r2, [r0]
    ldrb r1, [r2, #1]
    cmp r1, #1
    beq .L0803C956
    b .L0803CCB6
.L0803C956:
    movs r0, #6
    ldrsb r0, [r2, r0]
    lsls r1, r0
    ldrb r0, [r2, #0xf]
    orrs r1, r0
    strb r1, [r2, #0xf]
    movs r7, #0
.L0803C964:
    lsls r4, r7, #0x18
    asrs r0, r4, #0x18
    ldr r5, .L0803C998 @ =0x08B98AEC
    ldr r1, [r5]
    adds r1, #0x32
    bl func_0803CF2C
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    adds r1, r0, #0
    adds r2, r7, #1
    mov r8, r2
    cmp r0, #0
    bne .L0803C982
    b .L0803CCAE
.L0803C982:
    cmp r0, #0x16
    beq .L0803C9B0
    cmp r0, #0x16
    bgt .L0803C99C
    cmp r0, #4
    bne .L0803C990
    b .L0803CAE4
.L0803C990:
    cmp r0, #0xa
    beq .L0803C9B0
    b .L0803CCAE
    .align 2, 0
.L0803C998: .4byte 0x08B98AEC
.L0803C99C:
    cmp r0, #0x2e
    beq .L0803C9B0
    cmp r0, #0x2e
    bgt .L0803C9AA
    cmp r0, #0x2a
    beq .L0803C9B0
    b .L0803CCAE
.L0803C9AA:
    cmp r1, #0x80
    beq .L0803C9B0
    b .L0803CCAE
.L0803C9B0:
    ldr r6, .L0803CA08 @ =0x08B98AEC
    ldr r2, [r6]
    adds r5, r2, #0
    adds r5, #0x32
    ldrb r0, [r5]
    cmp r0, #0xdc
    beq .L0803CA3C
    adds r3, r7, #1
    mov r8, r3
    cmp r0, #0xdf
    beq .L0803C9C8
    b .L0803CCAE
.L0803C9C8:
    ldrb r0, [r5, #1]
    ldrb r4, [r5, #1]
    ldrb r1, [r2, #6]
    cmp r4, r1
    bne .L0803C9D4
    b .L0803CCAE
.L0803C9D4:
    lsls r0, r0, #1
    adds r3, r2, #0
    adds r3, #0x26
    adds r0, r3, r0
    ldrh r4, [r5, #2]
    ldrh r0, [r0]
    cmp r4, r0
    beq .L0803CA10
    ldr r0, .L0803CA0C @ =0x0300479C
    movs r1, #0xde
    strb r1, [r0]
    ldrb r2, [r2, #6]
    lsls r1, r2, #4
    ldrb r2, [r5, #1]
    orrs r1, r2
    strb r1, [r0, #1]
    ldrb r5, [r5, #1]
    lsls r1, r5, #1
    adds r1, r3, r1
    ldrh r1, [r1]
    strh r1, [r0, #2]
    movs r1, #4
    bl func_0803CE34
    b .L0803C964
    .align 2, 0
.L0803CA08: .4byte 0x08B98AEC
.L0803CA0C: .4byte 0x0300479C
.L0803CA10:
    adds r0, r5, #0
    bl func_0803D19C
    ldr r0, .L0803CA38 @ =0x0300479C
    movs r1, #0xde
    strb r1, [r0]
    ldr r2, [r6]
    ldrb r3, [r2, #6]
    lsls r1, r3, #4
    ldrb r4, [r5, #1]
    orrs r1, r4
    strb r1, [r0, #1]
    ldrb r5, [r5, #1]
    lsls r1, r5, #1
    adds r2, #0x26
    adds r2, r2, r1
    ldrh r1, [r2]
    adds r1, #1
    strh r1, [r0, #2]
    b .L0803CAD4
    .align 2, 0
.L0803CA38: .4byte 0x0300479C
.L0803CA3C:
    movs r3, #0
    lsls r0, r7, #2
    adds r1, r7, #1
    mov r8, r1
    ldr r1, .L0803CAA4 @ =0x0203D90C
    adds r0, r0, r7
    lsls r0, r0, #2
    subs r0, r0, r7
    adds r1, #0xa1
    adds r1, r0, r1
    adds r2, #0x38
.L0803CA52:
    adds r0, r2, r3
    ldrb r0, [r0]
    strb r0, [r1]
    adds r1, #1
    adds r3, #1
    cmp r3, #0x12
    ble .L0803CA52
    lsrs r0, r4, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803CA7E
    ldr r0, .L0803CAA8 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r2, [r0]
    ldrb r3, [r5, #2]
    cmp r2, r3
    bne .L0803CA7E
    ldrh r0, [r0, #4]
    cmp r0, #5
    bls .L0803CA8C
.L0803CA7E:
    lsrs r0, r4, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803CAB0
.L0803CA8C:
    ldr r0, .L0803CAA8 @ =0x08B98AEC
    ldr r2, [r0]
    movs r0, #6
    ldrsb r0, [r2, r0]
    cmp r0, #0
    beq .L0803CA9A
    b .L0803CCAE
.L0803CA9A:
    ldr r0, .L0803CAAC @ =0x0300479C
    movs r1, #0xd6
    strb r1, [r0]
    ldrb r1, [r2, #6]
    b .L0803CAD0
    .align 2, 0
.L0803CAA4: .4byte 0x0203D90C
.L0803CAA8: .4byte 0x08B98AEC
.L0803CAAC: .4byte 0x0300479C
.L0803CAB0:
    ldr r0, .L0803CADC @ =0x08B98AEC
    ldr r1, [r0]
    movs r0, #6
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0803CABE
    b .L0803CCAE
.L0803CABE:
    movs r2, #0xd5
    ldrb r4, [r1]
    ldrb r5, [r5, #2]
    cmp r4, r5
    beq .L0803CACA
    movs r2, #0xd7
.L0803CACA:
    ldr r0, .L0803CAE0 @ =0x0300479C
    strb r2, [r0]
    ldrb r1, [r1, #6]
.L0803CAD0:
    strb r1, [r0, #1]
    strh r7, [r0, #2]
.L0803CAD4:
    movs r1, #4
    bl func_0803CE34
    b .L0803CCAE
    .align 2, 0
.L0803CADC: .4byte 0x08B98AEC
.L0803CAE0: .4byte 0x0300479C
.L0803CAE4:
    ldr r0, [r5]
    adds r5, r0, #0
    adds r5, #0x32
    ldrb r0, [r5]
    subs r0, #0xd4
    cmp r0, #0xa
    bls .L0803CAF4
    b .L0803CCAE
.L0803CAF4:
    lsls r0, r0, #2
    ldr r1, .L0803CB00 @ =.L0803CB04
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0803CB00: .4byte .L0803CB04
.L0803CB04: @ jump table
    .4byte .L0803CCA4 @ case 0
    .4byte .L0803CC3C @ case 1
    .4byte .L0803CC68 @ case 2
    .4byte .L0803CBF8 @ case 3
    .4byte .L0803CCAE @ case 4
    .4byte .L0803CB30 @ case 5
    .4byte .L0803CCAE @ case 6
    .4byte .L0803CCAE @ case 7
    .4byte .L0803CCAE @ case 8
    .4byte .L0803CCAE @ case 9
    .4byte .L0803CB48 @ case 10
.L0803CB30:
    ldr r0, .L0803CB44 @ =0x08B98AEC
    ldr r1, [r0]
    movs r0, #1
    ldrb r5, [r5, #1]
    lsls r0, r5
    ldrb r2, [r1, #0xa]
    orrs r0, r2
    strb r0, [r1, #0xa]
    b .L0803CCAA
    .align 2, 0
.L0803CB44: .4byte 0x08B98AEC
.L0803CB48:
    ldr r6, .L0803CBEC @ =0x08B98AEC
    ldr r3, [r6]
    adds r0, r3, #0
    adds r0, #0x2e
    ldrb r0, [r0]
    adds r7, #1
    mov r8, r7
    cmp r0, #0
    bne .L0803CB5C
    b .L0803CCAE
.L0803CB5C:
    ldrb r2, [r5, #1]
    lsrs r4, r2, #4
    movs r1, #6
    ldrsb r1, [r3, r1]
    cmp r4, r1
    bne .L0803CB6A
    b .L0803CCAE
.L0803CB6A:
    movs r0, #0xf
    ands r0, r2
    cmp r0, r1
    beq .L0803CB74
    b .L0803CCAE
.L0803CB74:
    ldrh r0, [r3, #0x24]
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r5, [r5, #2]
    cmp r5, r0
    beq .L0803CB84
    b .L0803CCAE
.L0803CB84:
    movs r0, #1
    lsls r0, r4
    ldrb r4, [r3, #0xf]
    orrs r0, r4
    strb r0, [r3, #0xf]
    ldr r0, .L0803CBF0 @ =0x030013D0
    ldr r1, [r0]
    ldr r0, [r6]
    ldrb r0, [r0, #0xf]
    strb r0, [r1]
    ldr r4, [r6]
    ldrb r0, [r4, #9]
    ldrb r1, [r4, #0xf]
    ands r0, r1
    ldrb r2, [r4, #9]
    cmp r0, r2
    beq .L0803CBA8
    b .L0803CCAE
.L0803CBA8:
    ldrh r0, [r4, #0x24]
    adds r0, #1
    movs r3, #0
    strh r0, [r4, #0x24]
    ldr r2, .L0803CBF4 @ =0x00001B74
    adds r1, r4, r2
    movs r0, #0x8c
    ldrb r1, [r1]
    muls r0, r1, r0
    adds r0, r4, r0
    movs r4, #0x9c
    lsls r4, r4, #1
    adds r0, r0, r4
    strb r3, [r0]
    ldr r0, [r6]
    adds r0, r0, r2
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r1, [r6]
    adds r1, r1, r2
    movs r0, #0x1f
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    ldr r0, [r6]
    adds r0, #0x2e
    strb r3, [r0]
    ldr r0, [r6]
    strb r3, [r0, #0xf]
    strb r3, [r0, #0x11]
    strb r3, [r0, #0x10]
    b .L0803CCAE
    .align 2, 0
.L0803CBEC: .4byte 0x08B98AEC
.L0803CBF0: .4byte 0x030013D0
.L0803CBF4: .4byte 0x00001B74
.L0803CBF8:
    ldrb r0, [r5, #2]
    bl func_0803CD1C
    lsls r0, r0, #0x18
    adds r7, #1
    mov r8, r7
    cmp r0, #0
    bne .L0803CCAE
    ldr r3, .L0803CC38 @ =0x08B98AEC
    ldr r0, [r3]
    movs r1, #6
    ldrsb r1, [r0, r1]
    adds r0, #0xb
    adds r0, r0, r1
    movs r2, #2
    strb r2, [r0]
    ldr r1, [r3]
    movs r0, #0x30
    ldrh r4, [r1, #2]
    ands r0, r4
    lsrs r0, r0, #4
    adds r1, #0xb
    adds r1, r1, r0
    strb r2, [r1]
    ldr r0, [r3]
    adds r0, #0xb
    ldrh r5, [r5, #2]
    adds r0, r5, r0
    strb r2, [r0]
    ldr r1, [r3]
    b .L0803CC5C
    .align 2, 0
.L0803CC38: .4byte 0x08B98AEC
.L0803CC3C:
    ldrb r0, [r5, #2]
    bl func_0803CD1C
    lsls r0, r0, #0x18
    adds r7, #1
    mov r8, r7
    cmp r0, #0
    bne .L0803CCAE
    ldr r2, .L0803CC64 @ =0x08B98AEC
    ldr r0, [r2]
    adds r0, #0xb
    ldrh r5, [r5, #2]
    adds r0, r5, r0
    movs r1, #2
    strb r1, [r0]
    ldr r1, [r2]
.L0803CC5C:
    movs r0, #6
    strh r0, [r1, #4]
    b .L0803CCAE
    .align 2, 0
.L0803CC64: .4byte 0x08B98AEC
.L0803CC68:
    ldr r0, .L0803CC9C @ =0x0203D90C
    adds r0, #0x9c
    ldrh r1, [r5, #2]
    adds r0, r1, r0
    movs r4, #0
    movs r2, #1
    strb r2, [r0]
    ldr r3, .L0803CCA0 @ =0x08B98AEC
    ldr r0, [r3]
    adds r0, #0xb
    ldrh r1, [r5, #2]
    adds r0, r1, r0
    movs r1, #5
    strb r1, [r0]
    ldr r0, [r3]
    ldrh r1, [r5, #2]
    lsls r2, r1
    ldrb r1, [r0, #9]
    orrs r2, r1
    strb r2, [r0, #9]
    ldr r0, [r3]
    adds r0, #0x1a
    ldrh r5, [r5, #2]
    adds r0, r5, r0
    strb r4, [r0]
    b .L0803CCAA
    .align 2, 0
.L0803CC9C: .4byte 0x0203D90C
.L0803CCA0: .4byte 0x08B98AEC
.L0803CCA4:
    ldrb r0, [r5, #1]
    bl func_0803C90C
.L0803CCAA:
    adds r7, #1
    mov r8, r7
.L0803CCAE:
    mov r7, r8
    cmp r7, #3
    bgt .L0803CCB6
    b .L0803C964
.L0803CCB6:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803C944

    thumb_func_start func_0803CCC0
func_0803CCC0: @ 0x0803CCC0
    bx lr
    func_end func_0803CCC0

    thumb_func_start func_0803CCC4
func_0803CCC4: @ 0x0803CCC4
    push {r4, r5, lr}
    movs r5, #0
    movs r4, #0
.L0803CCCA:
    lsls r0, r4, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803CCE0
    adds r0, r5, #1
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
.L0803CCE0:
    adds r4, #1
    cmp r4, #3
    ble .L0803CCCA
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803CCC4

    thumb_func_start func_0803CCF0
func_0803CCF0: @ 0x0803CCF0
    push {r4, r5, lr}
    movs r5, #0
    movs r4, #0
.L0803CCF6:
    lsls r0, r4, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD40
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803CD0C
    adds r0, r5, #1
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
.L0803CD0C:
    adds r4, #1
    cmp r4, #3
    ble .L0803CCF6
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803CCF0

    thumb_func_start func_0803CD1C
func_0803CD1C: @ 0x0803CD1C
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, .L0803CD38 @ =0x08B98AEC
    ldr r1, [r1]
    ldrb r1, [r1, #9]
    asrs r1, r0
    adds r0, r1, #0
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L0803CD3C
    movs r0, #0
    b .L0803CD3E
    .align 2, 0
.L0803CD38: .4byte 0x08B98AEC
.L0803CD3C:
    movs r0, #1
.L0803CD3E:
    bx lr
    func_end func_0803CD1C

    thumb_func_start func_0803CD40
func_0803CD40: @ 0x0803CD40
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, .L0803CD5C @ =0x08B98AEC
    ldr r1, [r1]
    ldrb r1, [r1, #8]
    asrs r1, r0
    adds r0, r1, #0
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L0803CD60
    movs r0, #0
    b .L0803CD62
    .align 2, 0
.L0803CD5C: .4byte 0x08B98AEC
.L0803CD60:
    movs r0, #1
.L0803CD62:
    bx lr
    func_end func_0803CD40

    thumb_func_start func_0803CD64
func_0803CD64: @ 0x0803CD64
    push {r4, lr}
    ldr r2, .L0803CD90 @ =0x08B98AEC
    ldr r3, [r2]
    ldrh r1, [r3, #2]
    movs r0, #0
    strh r0, [r3, #2]
    movs r4, #8
    ands r1, r4
    cmp r1, #0
    bne .L0803CD98
    ldr r0, .L0803CD94 @ =0x04000128
    ldrh r1, [r0]
    adds r0, r4, #0
    ands r0, r1
    cmp r0, #0
    bne .L0803CD98
    adds r1, r3, #0
    adds r1, #0x20
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    b .L0803CDA0
    .align 2, 0
.L0803CD90: .4byte 0x08B98AEC
.L0803CD94: .4byte 0x04000128
.L0803CD98:
    ldr r0, [r2]
    adds r0, #0x20
    movs r1, #0
    strb r1, [r0]
.L0803CDA0:
    ldr r0, [r2]
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0xa
    bhi .L0803CDAE
    movs r0, #1
    b .L0803CDB0
.L0803CDAE:
    movs r0, #0
.L0803CDB0:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803CD64

    thumb_func_start func_0803CDB8
func_0803CDB8: @ 0x0803CDB8
    ldr r0, .L0803CDD4 @ =0x08B98AEC
    ldr r0, [r0]
    ldr r2, .L0803CDD8 @ =0x00001B75
    adds r1, r0, r2
    ldr r3, .L0803CDDC @ =0x00001B74
    adds r0, r0, r3
    ldrb r2, [r1]
    ldrb r3, [r0]
    cmp r2, r3
    bhs .L0803CDE0
    adds r0, r3, #0
    subs r0, #0x20
    subs r0, r2, r0
    b .L0803CDE6
    .align 2, 0
.L0803CDD4: .4byte 0x08B98AEC
.L0803CDD8: .4byte 0x00001B75
.L0803CDDC: .4byte 0x00001B74
.L0803CDE0:
    ldrb r1, [r1]
    ldrb r0, [r0]
    subs r0, r1, r0
.L0803CDE6:
    bx lr
    func_end func_0803CDB8

    thumb_func_start func_0803CDE8
func_0803CDE8: @ 0x0803CDE8
    push {r4, lr}
    movs r2, #0
    movs r1, #0
    ldr r4, .L0803CE28 @ =0x08B98AEC
    ldr r0, [r4]
    adds r3, r0, #0
    adds r3, #0xb
.L0803CDF6:
    adds r0, r3, r1
    ldrb r0, [r0]
    cmp r0, #5
    bne .L0803CE00
    adds r2, #1
.L0803CE00:
    adds r1, #1
    cmp r1, #3
    ble .L0803CDF6
    ldr r0, [r4]
    ldrb r0, [r0, #9]
    cmp r0, #3
    bne .L0803CE12
    cmp r2, #2
    beq .L0803CE22
.L0803CE12:
    cmp r0, #7
    bne .L0803CE1A
    cmp r2, #3
    beq .L0803CE22
.L0803CE1A:
    cmp r0, #0xf
    bne .L0803CE2C
    cmp r2, #4
    bne .L0803CE2C
.L0803CE22:
    movs r0, #1
    b .L0803CE2E
    .align 2, 0
.L0803CE28: .4byte 0x08B98AEC
.L0803CE2C:
    movs r0, #0
.L0803CE2E:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803CDE8

    thumb_func_start func_0803CE34
func_0803CE34: @ 0x0803CE34
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sb, r0
    lsls r1, r1, #0x10
    lsrs r5, r1, #0x10
    movs r0, #0
    mov r8, r0
    ldr r0, .L0803CED4 @ =0x030013DA
    ldrh r3, [r0]
    cmp r5, #0x80
    bhi .L0803CECC
    lsrs r5, r1, #0x11
    ldr r1, .L0803CED8 @ =0x00004FFF
    adds r4, r5, r1
    ldr r2, .L0803CEDC @ =0x0203C50C
    lsls r0, r3, #1
    adds r0, r0, r2
    strh r1, [r0]
    adds r3, #1
    ldr r6, .L0803CEE0 @ =0x000001FF
    ands r3, r6
    ldr r0, .L0803CEE4 @ =0x030013D8
    ldrh r1, [r0]
    mov ip, r2
    mov sl, r0
    cmp r3, r1
    beq .L0803CECC
    lsls r0, r3, #1
    add r0, ip
    strh r5, [r0]
    adds r3, #1
    ands r3, r6
    lsls r6, r3, #1
    adds r7, r3, #1
    cmp r3, r1
    beq .L0803CECC
    movs r2, #0
    cmp r2, r5
    bge .L0803CEA8
    mov r3, sb
.L0803CE8A:
    adds r2, #1
    ldrh r0, [r3]
    adds r1, r0, #0
    muls r1, r2, r1
    adds r0, r4, r1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    mvns r1, r1
    add r1, r8
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov r8, r1
    adds r3, #2
    cmp r2, r5
    blt .L0803CE8A
.L0803CEA8:
    mov r1, ip
    adds r0, r6, r1
    strh r4, [r0]
    ldr r4, .L0803CEE0 @ =0x000001FF
    adds r3, r4, #0
    ands r3, r7
    mov r2, sl
    ldrh r1, [r2]
    cmp r3, r1
    beq .L0803CECC
    lsls r0, r3, #1
    add r0, ip
    mov r2, r8
    strh r2, [r0]
    adds r3, #1
    ands r3, r4
    cmp r3, r1
    bne .L0803CEE8
.L0803CECC:
    movs r0, #1
    rsbs r0, r0, #0
    b .L0803CF18
    .align 2, 0
.L0803CED4: .4byte 0x030013DA
.L0803CED8: .4byte 0x00004FFF
.L0803CEDC: .4byte 0x0203C50C
.L0803CEE0: .4byte 0x000001FF
.L0803CEE4: .4byte 0x030013D8
.L0803CEE8:
    movs r2, #0
    cmp r2, r5
    bge .L0803CF10
    mov r8, ip
    adds r7, r4, #0
    mov r4, sb
    mov r6, sl
.L0803CEF6:
    lsls r0, r3, #1
    add r0, r8
    ldrh r1, [r4]
    strh r1, [r0]
    adds r3, #1
    ands r3, r7
    ldrh r0, [r6]
    cmp r3, r0
    beq .L0803CECC
    adds r4, #2
    adds r2, #1
    cmp r2, r5
    blt .L0803CEF6
.L0803CF10:
    ldr r1, .L0803CF28 @ =0x030013DA
    strh r3, [r1]
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
.L0803CF18:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803CF28: .4byte 0x030013DA
    func_end func_0803CE34

    thumb_func_start func_0803CF2C
func_0803CF2C: @ 0x0803CF2C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    str r1, [sp, #4]
    lsls r0, r0, #0x18
    movs r1, #0
    mov r8, r1
    movs r2, #0
    str r2, [sp, #0xc]
    ldr r1, .L0803CFA4 @ =0x030013E0
    lsrs r3, r0, #0x18
    str r3, [sp]
    asrs r2, r0, #0x17
    adds r3, r2, r1
    ldr r0, .L0803CFA8 @ =0x030013E8
    adds r7, r2, r0
    ldrh r5, [r7]
    mov sl, r1
    ldrh r0, [r3]
    cmp r0, r5
    beq .L0803D02E
    ldr r1, .L0803CFAC @ =0x0203C90C
    ldrh r4, [r3]
    lsls r0, r4, #3
    adds r0, r2, r0
    adds r0, r0, r1
    ldr r6, .L0803CFB0 @ =0x00004FFF
    mov sb, r1
    ldrh r0, [r0]
    cmp r0, r6
    beq .L0803CFB8
    cmp r4, r5
    beq .L0803CFE6
    adds r4, r2, #0
    adds r2, r3, #0
    mov ip, r6
    adds r3, r7, #0
    ldr r6, .L0803CFB4 @ =0x000001FF
    mov r5, sb
.L0803CF80:
    ldrh r0, [r2]
    adds r0, #1
    ands r0, r6
    strh r0, [r2]
    ldrh r1, [r2]
    lsls r0, r1, #3
    adds r0, r4, r0
    adds r0, r0, r5
    ldrh r0, [r0]
    cmp r0, ip
    bne .L0803CF9C
    ldrh r7, [r3]
    cmp r1, r7
    bne .L0803CFB8
.L0803CF9C:
    ldrh r0, [r3]
    cmp r1, r0
    bne .L0803CF80
    b .L0803CFE6
    .align 2, 0
.L0803CFA4: .4byte 0x030013E0
.L0803CFA8: .4byte 0x030013E8
.L0803CFAC: .4byte 0x0203C90C
.L0803CFB0: .4byte 0x00004FFF
.L0803CFB4: .4byte 0x000001FF
.L0803CFB8:
    ldr r1, [sp]
    lsls r0, r1, #0x18
    asrs r1, r0, #0x17
    ldr r3, .L0803CFD8 @ =0x030013E8
    adds r2, r1, r3
    add r1, sl
    ldrh r2, [r2]
    ldrh r1, [r1]
    adds r4, r0, #0
    cmp r2, r1
    bhs .L0803CFDC
    movs r7, #0x80
    lsls r7, r7, #2
    adds r0, r2, r7
    subs r0, r0, r1
    b .L0803CFDE
    .align 2, 0
.L0803CFD8: .4byte 0x030013E8
.L0803CFDC:
    subs r0, r2, r1
.L0803CFDE:
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r1, #4
    bhi .L0803CFEC
.L0803CFE6:
    movs r0, #4
    rsbs r0, r0, #0
    b .L0803D0D4
.L0803CFEC:
    asrs r0, r4, #0x17
    add r0, sl
    ldrh r3, [r0]
    adds r3, #1
    ldr r0, .L0803D000 @ =0x000001FF
    cmp r3, r0
    bgt .L0803D004
    lsls r0, r3, #0x10
    lsrs r0, r0, #0x10
    b .L0803D006
    .align 2, 0
.L0803D000: .4byte 0x000001FF
.L0803D004:
    movs r0, #0
.L0803D006:
    asrs r4, r4, #0x17
    lsls r0, r0, #3
    adds r0, r4, r0
    add r0, sb
    ldrh r6, [r0]
    cmp r6, #0x80
    bls .L0803D028
    mov r1, sl
    adds r0, r4, r1
    ldrh r1, [r0]
    adds r1, #1
    ldr r2, .L0803D024 @ =0x000001FF
    ands r1, r2
    strh r1, [r0]
    b .L0803CFE6
    .align 2, 0
.L0803D024: .4byte 0x000001FF
.L0803D028:
    adds r0, r6, #6
    cmp r0, r1
    ble .L0803D034
.L0803D02E:
    movs r0, #2
    rsbs r0, r0, #0
    b .L0803D0D4
.L0803D034:
    mov r3, sl
    adds r2, r4, r3
    ldrh r0, [r2]
    adds r0, #2
    ldr r7, .L0803D0C8 @ =0x000001FF
    ands r0, r7
    strh r0, [r2]
    ldrh r1, [r2]
    lsls r0, r1, #3
    adds r0, r4, r0
    add r0, sb
    ldrh r0, [r0]
    str r0, [sp, #8]
    adds r1, #1
    ands r1, r7
    strh r1, [r2]
    ldrh r1, [r2]
    lsls r0, r1, #3
    adds r0, r4, r0
    add r0, sb
    ldrh r0, [r0]
    mov sl, r0
    adds r1, #1
    ands r1, r7
    strh r1, [r2]
    ldr r0, .L0803D0CC @ =0x00004FFF
    add r0, r8
    adds r0, r6, r0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
    movs r3, #0
    cmp r3, r6
    bge .L0803D0B6
    mov ip, r4
    adds r4, r2, #0
    ldr r5, [sp, #4]
.L0803D07E:
    ldrh r7, [r4]
    lsls r0, r7, #3
    add r0, ip
    add r0, sb
    ldrh r2, [r0]
    adds r3, #1
    adds r1, r2, #0
    muls r1, r3, r1
    mov r7, r8
    adds r0, r7, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
    mvns r1, r1
    ldr r0, [sp, #0xc]
    adds r1, r0, r1
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    str r1, [sp, #0xc]
    strh r2, [r5]
    ldrh r0, [r4]
    adds r0, #1
    ldr r1, .L0803D0C8 @ =0x000001FF
    ands r0, r1
    strh r0, [r4]
    adds r5, #2
    cmp r3, r6
    blt .L0803D07E
.L0803D0B6:
    ldr r2, [sp, #8]
    cmp r8, r2
    bne .L0803D0C2
    ldr r3, [sp, #0xc]
    cmp r3, sl
    beq .L0803D0D0
.L0803D0C2:
    movs r0, #3
    rsbs r0, r0, #0
    b .L0803D0D4
    .align 2, 0
.L0803D0C8: .4byte 0x000001FF
.L0803D0CC: .4byte 0x00004FFF
.L0803D0D0:
    lsls r0, r6, #0x11
    asrs r0, r0, #0x10
.L0803D0D4:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0803CF2C

    thumb_func_start func_0803D0E4
func_0803D0E4: @ 0x0803D0E4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0803D0FC @ =0x08B98AEC
    ldr r3, [r0]
    movs r2, #6
    ldrsb r2, [r3, r2]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0803D100
    adds r0, r2, #0
    b .L0803D122
    .align 2, 0
.L0803D0FC: .4byte 0x08B98AEC
.L0803D100:
    ldr r2, .L0803D128 @ =0x04000128
    ldrh r0, [r4]
    strh r0, [r2, #2]
    movs r0, #6
    ldrsb r0, [r3, r0]
    cmp r0, #0
    bne .L0803D120
    cmp r1, #0
    bge .L0803D120
    ldr r1, .L0803D12C @ =0x030013C8
    movs r3, #0xc1
    lsls r3, r3, #7
    adds r0, r3, #0
    ldrb r1, [r1]
    orrs r0, r1
    strh r0, [r2]
.L0803D120:
    movs r0, #0
.L0803D122:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803D128: .4byte 0x04000128
.L0803D12C: .4byte 0x030013C8
    func_end func_0803D0E4

    thumb_func_start func_0803D130
func_0803D130: @ 0x0803D130
    push {r4, r5, r6, r7, lr}
    adds r2, r1, #0
    ldr r1, .L0803D158 @ =0x030013E0
    ldr r0, .L0803D15C @ =0x030013E8
    ldrh r3, [r1]
    ldrh r0, [r0]
    cmp r3, r0
    bne .L0803D164
    ldr r7, .L0803D160 @ =0x00007FFF
    adds r0, r7, #0
    strh r0, [r2]
    adds r2, #2
    strh r0, [r2]
    adds r2, #2
    strh r0, [r2]
    strh r0, [r2, #2]
    movs r0, #2
    rsbs r0, r0, #0
    b .L0803D18E
    .align 2, 0
.L0803D158: .4byte 0x030013E0
.L0803D15C: .4byte 0x030013E8
.L0803D160: .4byte 0x00007FFF
.L0803D164:
    movs r4, #0
    ldr r6, .L0803D194 @ =0x0203C90C
    ldr r5, .L0803D198 @ =0x000001FF
    adds r3, r1, #0
.L0803D16C:
    lsls r0, r4, #1
    ldrh r7, [r3]
    lsls r1, r7, #3
    adds r0, r0, r1
    adds r0, r0, r6
    ldrh r0, [r0]
    strh r0, [r2]
    adds r2, #2
    ldrh r0, [r3]
    adds r0, #1
    ands r0, r5
    strh r0, [r3]
    adds r3, #2
    adds r4, #1
    cmp r4, #3
    ble .L0803D16C
    movs r0, #0
.L0803D18E:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803D194: .4byte 0x0203C90C
.L0803D198: .4byte 0x000001FF
    func_end func_0803D130

    thumb_func_start func_0803D19C
func_0803D19C: @ 0x0803D19C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r3, .L0803D204 @ =0x08B98AEC
    ldr r2, [r3]
    ldr r0, .L0803D208 @ =0x00001B77
    adds r1, r2, r0
    movs r0, #0x8c
    ldrb r1, [r1]
    muls r0, r1, r0
    ldr r1, .L0803D20C @ =0x000012B4
    adds r0, r0, r1
    adds r1, r2, r0
    ldrb r0, [r4]
    strb r0, [r1, #4]
    ldrb r0, [r4, #1]
    strb r0, [r1, #5]
    ldrh r0, [r4, #2]
    strh r0, [r1, #6]
    ldrh r0, [r4, #4]
    strh r0, [r1, #8]
    movs r2, #0
    adds r6, r3, #0
    ldrh r0, [r4, #4]
    cmp r2, r0
    bge .L0803D1E4
    adds r5, r1, #0
    adds r5, #0xa
    adds r3, r4, #6
.L0803D1D4:
    adds r0, r5, r2
    adds r1, r3, r2
    ldrb r1, [r1]
    strb r1, [r0]
    adds r2, #1
    ldrh r1, [r4, #4]
    cmp r2, r1
    blt .L0803D1D4
.L0803D1E4:
    ldr r0, [r6]
    ldr r2, .L0803D208 @ =0x00001B77
    adds r0, r0, r2
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r1, [r6]
    adds r1, r1, r2
    movs r0, #0xf
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803D204: .4byte 0x08B98AEC
.L0803D208: .4byte 0x00001B77
.L0803D20C: .4byte 0x000012B4
    func_end func_0803D19C

    thumb_func_start func_0803D210
func_0803D210: @ 0x0803D210
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r0, .L0803D260 @ =0x08B98AEC
    ldr r3, [r0]
    ldr r0, .L0803D264 @ =0x00001B74
    adds r4, r3, r0
    movs r6, #0x8c
    ldrb r1, [r4]
    adds r5, r1, #0
    muls r5, r6, r5
    adds r0, r3, r5
    movs r1, #0x9c
    lsls r1, r1, #1
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0xdf
    bne .L0803D26C
    ldr r1, .L0803D268 @ =0x030013D0
    movs r2, #0x9a
    lsls r2, r2, #1
    adds r0, r5, r2
    adds r0, r3, r0
    str r0, [r1]
    ldrb r1, [r4]
    adds r0, r1, #0
    muls r0, r6, r0
    adds r0, r3, r0
    movs r1, #0x9e
    lsls r1, r1, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    str r0, [r7]
    ldrb r4, [r4]
    adds r0, r4, #0
    muls r0, r6, r0
    adds r0, r0, r2
    adds r0, r3, r0
    adds r0, #4
    b .L0803D26E
    .align 2, 0
.L0803D260: .4byte 0x08B98AEC
.L0803D264: .4byte 0x00001B74
.L0803D268: .4byte 0x030013D0
.L0803D26C:
    movs r0, #0
.L0803D26E:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0803D210

    thumb_func_start func_0803D274
func_0803D274: @ 0x0803D274
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov ip, r0
    lsls r1, r1, #0x10
    lsrs r7, r1, #0x10
    ldr r6, .L0803D310 @ =0x030013D4
    movs r0, #1
    str r0, [r6]
    ldr r4, .L0803D314 @ =0x08B98AEC
    ldr r1, [r4]
    ldr r2, .L0803D318 @ =0x00001B75
    adds r0, r1, r2
    movs r5, #0x8c
    ldrb r0, [r0]
    muls r0, r5, r0
    adds r1, r1, r0
    movs r3, #0x9a
    lsls r3, r3, #1
    adds r1, r1, r3
    movs r0, #0
    strb r0, [r1]
    ldr r1, [r4]
    adds r2, r1, r2
    ldrb r2, [r2]
    adds r0, r2, #0
    muls r0, r5, r0
    adds r0, r0, r3
    adds r5, r1, r0
    adds r2, r5, #4
    movs r0, #0xdf
    strb r0, [r5, #4]
    ldr r0, [r4]
    ldrb r0, [r0, #6]
    strb r0, [r2, #1]
    ldr r1, [r4]
    ldrh r0, [r1, #0x22]
    strh r0, [r2, #2]
    strh r7, [r2, #4]
    ldrh r0, [r1, #0x22]
    adds r0, #1
    strh r0, [r1, #0x22]
    movs r3, #0
    mov r8, r6
    adds r6, r4, #0
    cmp r3, r7
    bhs .L0803D2E8
    adds r2, #6
.L0803D2D4:
    adds r1, r2, r3
    mov r4, ip
    adds r0, r4, r3
    ldrb r0, [r0]
    strb r0, [r1]
    adds r0, r3, #1
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    cmp r3, r7
    blo .L0803D2D4
.L0803D2E8:
    ldr r1, [r6]
    ldr r3, .L0803D318 @ =0x00001B75
    adds r1, r1, r3
    ldrb r0, [r1]
    adds r2, r0, #1
    movs r4, #0
    strb r2, [r1]
    ldr r2, [r6]
    adds r2, r2, r3
    movs r1, #0x1f
    ldrb r3, [r2]
    ands r1, r3
    strb r1, [r2]
    mov r1, r8
    str r4, [r1]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803D310: .4byte 0x030013D4
.L0803D314: .4byte 0x08B98AEC
.L0803D318: .4byte 0x00001B75
    func_end func_0803D274

    thumb_func_start func_0803D31C
func_0803D31C: @ 0x0803D31C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    mov sb, r0
    str r1, [sp]
    mov sl, r2
.L0803D32E:
    ldr r0, .L0803D35C @ =0x08B98AEC
    mov r8, r0
    ldr r2, [r0]
    ldr r7, .L0803D360 @ =0x00001B76
    adds r1, r2, r7
    movs r0, #0x8c
    ldrb r1, [r1]
    muls r0, r1, r0
    ldr r1, .L0803D364 @ =0x000012B4
    adds r0, r0, r1
    adds r5, r2, r0
    adds r6, r5, #4
    ldrb r3, [r5, #4]
    cmp r3, #0xdf
    bne .L0803D356
    ldrb r0, [r6, #1]
    ldrb r1, [r6, #1]
    ldrb r3, [r2, #6]
    cmp r1, r3
    bne .L0803D368
.L0803D356:
    movs r0, #0
    b .L0803D490
    .align 2, 0
.L0803D35C: .4byte 0x08B98AEC
.L0803D360: .4byte 0x00001B76
.L0803D364: .4byte 0x000012B4
.L0803D368:
    lsls r0, r0, #1
    adds r3, r2, #0
    adds r3, #0x26
    adds r0, r3, r0
    ldrh r1, [r6, #2]
    ldrh r0, [r0]
    cmp r1, r0
    beq .L0803D3B4
    ldr r0, .L0803D3B0 @ =0x0300479C
    movs r1, #0xde
    strb r1, [r0]
    ldrb r2, [r2, #6]
    lsls r1, r2, #4
    ldrb r2, [r6, #1]
    orrs r1, r2
    strb r1, [r0, #1]
    ldrb r6, [r6, #1]
    lsls r1, r6, #1
    adds r1, r3, r1
    ldrh r1, [r1]
    movs r4, #0
    strh r1, [r0, #2]
    movs r1, #4
    bl func_0803CE34
    strb r4, [r5, #4]
    mov r3, r8
    ldr r0, [r3]
    adds r0, r0, r7
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r1, [r3]
    adds r1, r1, r7
    b .L0803D422
    .align 2, 0
.L0803D3B0: .4byte 0x0300479C
.L0803D3B4:
    movs r2, #0
    ldrh r3, [r6, #4]
    cmp r2, r3
    bhs .L0803D3D6
    adds r3, r5, #0
    adds r3, #0xa
.L0803D3C0:
    mov r0, sb
    adds r1, r0, r2
    adds r0, r3, r2
    ldrb r0, [r0]
    strb r0, [r1]
    adds r0, r2, #1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    ldrh r1, [r6, #4]
    cmp r2, r1
    blo .L0803D3C0
.L0803D3D6:
    mov r2, sl
    cmp r2, #0
    beq .L0803D438
    mov r0, sb
    bl _call_via_sl
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803D438
    ldr r0, .L0803D42C @ =0x0300479C
    movs r1, #0xde
    strb r1, [r0]
    ldr r4, .L0803D430 @ =0x08B98AEC
    ldr r2, [r4]
    ldrb r3, [r2, #6]
    lsls r1, r3, #4
    ldrb r3, [r6, #1]
    orrs r1, r3
    strb r1, [r0, #1]
    ldrb r3, [r6, #1]
    lsls r1, r3, #1
    adds r2, #0x26
    adds r2, r2, r1
    ldrh r1, [r2]
    movs r5, #0
    strh r1, [r0, #2]
    movs r1, #4
    bl func_0803CE34
    strb r5, [r6]
    ldr r0, [r4]
    ldr r2, .L0803D434 @ =0x00001B76
    adds r0, r0, r2
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r1, [r4]
    adds r1, r1, r2
.L0803D422:
    movs r0, #0xf
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    b .L0803D32E
    .align 2, 0
.L0803D42C: .4byte 0x0300479C
.L0803D430: .4byte 0x08B98AEC
.L0803D434: .4byte 0x00001B76
.L0803D438:
    movs r0, #0
    strb r0, [r6]
    ldrb r5, [r6, #1]
    ldr r4, .L0803D4A0 @ =0x08B98AEC
    ldr r2, [r4]
    lsls r1, r5, #1
    adds r0, r2, #0
    adds r0, #0x26
    adds r0, r0, r1
    ldrh r1, [r0]
    adds r1, #1
    strh r1, [r0]
    ldr r3, .L0803D4A4 @ =0x00001B76
    adds r2, r2, r3
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
    ldr r1, [r4]
    adds r1, r1, r3
    movs r0, #0xf
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    ldr r0, [sp]
    strb r5, [r0]
    ldr r0, .L0803D4A8 @ =0x0300479C
    movs r1, #0xde
    strb r1, [r0]
    ldr r2, [r4]
    ldrb r3, [r2, #6]
    lsls r1, r3, #4
    ldrb r3, [r6, #1]
    orrs r1, r3
    strb r1, [r0, #1]
    ldrb r3, [r6, #1]
    lsls r1, r3, #1
    adds r2, #0x26
    adds r2, r2, r1
    ldrh r1, [r2]
    strh r1, [r0, #2]
    movs r1, #4
    bl func_0803CE34
    ldrh r0, [r6, #4]
.L0803D490:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803D4A0: .4byte 0x08B98AEC
.L0803D4A4: .4byte 0x00001B76
.L0803D4A8: .4byte 0x0300479C
    func_end func_0803D31C

    thumb_func_start func_0803D4AC
func_0803D4AC: @ 0x0803D4AC
    push {lr}
    sub sp, #4
    ldr r1, .L0803D4E8 @ =0x00007FFF
    mov r0, sp
    strh r1, [r0]
    ldr r0, .L0803D4EC @ =0x08B98AEC
    ldr r1, [r0]
    movs r0, #0
    strb r0, [r1, #1]
    mov r0, sp
    movs r1, #1
    bl func_0803D0E4
    ldr r1, .L0803D4F0 @ =0x030013DA
    ldr r0, .L0803D4F4 @ =0x030013D8
    ldrh r0, [r0]
    strh r0, [r1]
    ldr r3, .L0803D4F8 @ =0x030013E0
    ldr r2, .L0803D4FC @ =0x030013E8
    movs r1, #3
.L0803D4D4:
    ldrh r0, [r3]
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    subs r1, #1
    cmp r1, #0
    bge .L0803D4D4
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L0803D4E8: .4byte 0x00007FFF
.L0803D4EC: .4byte 0x08B98AEC
.L0803D4F0: .4byte 0x030013DA
.L0803D4F4: .4byte 0x030013D8
.L0803D4F8: .4byte 0x030013E0
.L0803D4FC: .4byte 0x030013E8
    func_end func_0803D4AC

    thumb_func_start func_0803D500
func_0803D500: @ 0x0803D500
    ldr r1, .L0803D50C @ =0x08B98AEC
    ldr r1, [r1]
    adds r1, #0x21
    strb r0, [r1]
    bx lr
    .align 2, 0
.L0803D50C: .4byte 0x08B98AEC
    func_end func_0803D500

    thumb_func_start func_0803D510
func_0803D510: @ 0x0803D510
    push {lr}
    sub sp, #4
    ldr r1, .L0803D564 @ =0x00007FFF
    mov r0, sp
    strh r1, [r0]
    ldr r1, .L0803D568 @ =0x08B98AEC
    ldr r0, [r1]
    movs r2, #0
    strb r2, [r0, #1]
    ldr r0, [r1]
    ldr r1, .L0803D56C @ =0x00001B7C
    adds r0, r0, r1
    strh r2, [r0]
    mov r0, sp
    movs r1, #1
    bl func_0803D0E4
    ldr r1, .L0803D570 @ =0x030013DA
    ldr r0, .L0803D574 @ =0x030013D8
    ldrh r0, [r0]
    strh r0, [r1]
    ldr r3, .L0803D578 @ =0x030013E0
    ldr r2, .L0803D57C @ =0x030013E8
    movs r1, #3
.L0803D540:
    ldrh r0, [r3]
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    subs r1, #1
    cmp r1, #0
    bge .L0803D540
    ldr r0, .L0803D568 @ =0x08B98AEC
    ldr r2, [r0]
    ldr r0, .L0803D580 @ =0x00001B7E
    adds r1, r2, r0
    movs r0, #0
    strh r0, [r1]
    movs r0, #3
    strb r0, [r2, #1]
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L0803D564: .4byte 0x00007FFF
.L0803D568: .4byte 0x08B98AEC
.L0803D56C: .4byte 0x00001B7C
.L0803D570: .4byte 0x030013DA
.L0803D574: .4byte 0x030013D8
.L0803D578: .4byte 0x030013E0
.L0803D57C: .4byte 0x030013E8
.L0803D580: .4byte 0x00001B7E
    func_end func_0803D510

    thumb_func_start func_0803D584
func_0803D584: @ 0x0803D584
    push {r4, lr}
    sub sp, #4
    ldr r1, .L0803D5E0 @ =0x00002586
    mov r0, sp
    strh r1, [r0]
    ldr r3, .L0803D5E4 @ =0x08B98AEC
    ldr r1, [r3]
    movs r2, #0
    movs r0, #0
    strh r0, [r1, #4]
    strb r2, [r1, #1]
    ldr r0, [r3]
    ldr r1, .L0803D5E8 @ =0x00001B7C
    adds r0, r0, r1
    movs r1, #0x88
    strh r1, [r0]
    ldr r1, .L0803D5EC @ =0x030013DA
    ldr r0, .L0803D5F0 @ =0x030013D8
    ldrh r0, [r0]
    strh r0, [r1]
    adds r4, r3, #0
    ldr r3, .L0803D5F4 @ =0x030013E0
    ldr r2, .L0803D5F8 @ =0x030013E8
    movs r1, #3
.L0803D5B4:
    ldrh r0, [r3]
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    subs r1, #1
    cmp r1, #0
    bge .L0803D5B4
    ldr r1, [r4]
    movs r0, #1
    strb r0, [r1, #1]
    ldr r1, [r4]
    movs r0, #6
    strh r0, [r1, #4]
    movs r1, #1
    rsbs r1, r1, #0
    mov r0, sp
    bl func_0803D0E4
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803D5E0: .4byte 0x00002586
.L0803D5E4: .4byte 0x08B98AEC
.L0803D5E8: .4byte 0x00001B7C
.L0803D5EC: .4byte 0x030013DA
.L0803D5F0: .4byte 0x030013D8
.L0803D5F4: .4byte 0x030013E0
.L0803D5F8: .4byte 0x030013E8
    func_end func_0803D584

    thumb_func_start func_0803D5FC
func_0803D5FC: @ 0x0803D5FC
    push {r4, lr}
    sub sp, #4
    ldr r1, .L0803D658 @ =0x00002586
    mov r0, sp
    strh r1, [r0]
    ldr r3, .L0803D65C @ =0x08B98AEC
    ldr r1, [r3]
    movs r2, #0
    movs r0, #0
    strh r0, [r1, #4]
    strb r2, [r1, #1]
    ldr r0, [r3]
    ldr r1, .L0803D660 @ =0x00001B7C
    adds r0, r0, r1
    movs r1, #0x18
    strh r1, [r0]
    ldr r1, .L0803D664 @ =0x030013DA
    ldr r0, .L0803D668 @ =0x030013D8
    ldrh r0, [r0]
    strh r0, [r1]
    adds r4, r3, #0
    ldr r3, .L0803D66C @ =0x030013E0
    ldr r2, .L0803D670 @ =0x030013E8
    movs r1, #3
.L0803D62C:
    ldrh r0, [r3]
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    subs r1, #1
    cmp r1, #0
    bge .L0803D62C
    ldr r1, [r4]
    movs r0, #1
    strb r0, [r1, #1]
    ldr r1, [r4]
    movs r0, #6
    strh r0, [r1, #4]
    movs r1, #1
    rsbs r1, r1, #0
    mov r0, sp
    bl func_0803D0E4
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803D658: .4byte 0x00002586
.L0803D65C: .4byte 0x08B98AEC
.L0803D660: .4byte 0x00001B7C
.L0803D664: .4byte 0x030013DA
.L0803D668: .4byte 0x030013D8
.L0803D66C: .4byte 0x030013E0
.L0803D670: .4byte 0x030013E8
    func_end func_0803D5FC

    thumb_func_start func_0803D674
func_0803D674: @ 0x0803D674
    ldr r0, .L0803D680 @ =0x030013DA
    ldr r1, .L0803D684 @ =0x030013D8
    ldrh r1, [r1]
    strh r1, [r0]
    bx lr
    .align 2, 0
.L0803D680: .4byte 0x030013DA
.L0803D684: .4byte 0x030013D8
    func_end func_0803D674

    thumb_func_start func_0803D688
func_0803D688: @ 0x0803D688
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, .L0803D6E4 @ =0x08B98AEC
    ldr r1, [r5]
    adds r2, r1, #0
    adds r2, #0x2e
    movs r0, #0
    strb r0, [r2]
    strh r0, [r1, #0x22]
    strh r0, [r1, #0x24]
    ldr r1, [r5]
    strh r0, [r1, #0x2c]
    strh r0, [r1, #0x2a]
    strh r0, [r1, #0x28]
    strh r0, [r1, #0x26]
    bl func_0803C294
    mov r1, sp
    adds r0, r4, #0
    adds r0, #0x34
    ldrb r0, [r0]
    strb r0, [r1]
    mov r2, sp
    ldrh r1, [r4, #0x36]
    lsrs r0, r1, #8
    strb r0, [r2, #1]
    mov r0, sp
    strb r1, [r0, #2]
    mov r1, sp
    adds r4, #0x3a
    ldrb r0, [r4]
    strb r0, [r1, #3]
    mov r0, sp
    movs r1, #4
    bl func_0803D274
    ldr r0, [r5]
    adds r0, #0x2e
    movs r1, #1
    strb r1, [r0]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803D6E4: .4byte 0x08B98AEC
    func_end func_0803D688

    thumb_func_start func_0803D6E8
func_0803D6E8: @ 0x0803D6E8
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x2c]
    cmp r1, #0
    beq .L0803D6F6
    bl _call_via_r1
.L0803D6F6:
    ldr r5, .L0803D754 @ =0x08B98AEC
    ldr r1, [r5]
    adds r0, r1, #0
    adds r0, #0x2e
    ldrb r6, [r0]
    cmp r6, #0
    bne .L0803D74C
    ldrh r2, [r4, #0x38]
    ldrh r0, [r1, #0x24]
    subs r0, #1
    cmp r2, r0
    beq .L0803D72A
    ldr r0, [r4, #0x30]
    adds r0, #0x7a
    str r0, [r4, #0x30]
    movs r0, #0x64
    muls r0, r2, r0
    ldrh r1, [r4, #0x36]
    bl __divsi3
    adds r1, r4, #0
    adds r1, #0x3b
    strb r0, [r1]
    ldrh r0, [r4, #0x38]
    adds r0, #1
    strh r0, [r4, #0x38]
.L0803D72A:
    ldr r0, [r4, #0x30]
    movs r1, #0x7a
    bl func_0803D274
    ldr r0, [r5]
    adds r0, #0x2e
    movs r1, #1
    strb r1, [r0]
    ldr r0, [r5]
    strb r6, [r0, #0x10]
    ldrh r0, [r4, #0x38]
    ldrh r1, [r4, #0x36]
    cmp r0, r1
    blo .L0803D74C
    adds r0, r4, #0
    bl Proc_Break
.L0803D74C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803D754: .4byte 0x08B98AEC
    func_end func_0803D6E8

    thumb_func_start func_0803D758
func_0803D758: @ 0x0803D758
    push {lr}
    ldr r2, .L0803D77C @ =0x08B98AEC
    ldr r1, [r2]
    adds r3, r1, #0
    adds r3, #0x2e
    movs r0, #0
    strb r0, [r3]
    strh r0, [r1, #0x22]
    strh r0, [r1, #0x24]
    ldr r1, [r2]
    strh r0, [r1, #0x2c]
    strh r0, [r1, #0x2a]
    strh r0, [r1, #0x28]
    strh r0, [r1, #0x26]
    bl func_0803C294
    pop {r0}
    bx r0
    .align 2, 0
.L0803D77C: .4byte 0x08B98AEC
    func_end func_0803D758

    thumb_func_start func_0803D780
func_0803D780: @ 0x0803D780
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    add r1, sp, #4
    mov r0, sp
    movs r2, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0803D7BC
    mov r0, sp
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x34
    strb r1, [r0]
    mov r0, sp
    ldrb r1, [r0, #1]
    lsls r1, r1, #8
    ldrb r0, [r0, #2]
    adds r0, r0, r1
    strh r0, [r4, #0x36]
    mov r0, sp
    ldrb r0, [r0, #3]
    adds r1, r4, #0
    adds r1, #0x3a
    strb r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0803D7BC:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0803D780

    thumb_func_start func_0803D7C4
func_0803D7C4: @ 0x0803D7C4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, .L0803D800 @ =gBuf
    ldrh r0, [r4, #0x36]
    subs r0, #1
    ldrh r1, [r4, #0x38]
    cmp r1, r0
    bge .L0803D804
    ldr r0, [r4, #0x30]
    mov r1, sp
    movs r2, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0803D84E
    ldr r0, [r4, #0x30]
    adds r0, #0x7a
    str r0, [r4, #0x30]
    movs r0, #0x64
    ldrh r1, [r4, #0x38]
    muls r0, r1, r0
    ldrh r1, [r4, #0x36]
    bl __divsi3
    adds r1, r4, #0
    adds r1, #0x3b
    strb r0, [r1]
    b .L0803D848
    .align 2, 0
.L0803D800: .4byte gBuf
.L0803D804:
    adds r0, r5, #0
    mov r1, sp
    movs r2, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0803D84E
    movs r2, #0
    adds r3, r4, #0
    adds r3, #0x3a
    adds r6, r4, #0
    adds r6, #0x3b
    ldrb r0, [r3]
    cmp r2, r0
    bge .L0803D83A
.L0803D824:
    ldr r1, [r4, #0x30]
    adds r0, r5, r2
    ldrb r0, [r0]
    strb r0, [r1]
    ldr r0, [r4, #0x30]
    adds r0, #1
    str r0, [r4, #0x30]
    adds r2, #1
    ldrb r1, [r3]
    cmp r2, r1
    blt .L0803D824
.L0803D83A:
    movs r0, #0x64
    ldrh r1, [r4, #0x38]
    muls r0, r1, r0
    ldrh r1, [r4, #0x36]
    bl __divsi3
    strb r0, [r6]
.L0803D848:
    ldrh r0, [r4, #0x38]
    adds r0, #1
    strh r0, [r4, #0x38]
.L0803D84E:
    ldr r1, [r4, #0x2c]
    cmp r1, #0
    beq .L0803D85A
    adds r0, r4, #0
    bl _call_via_r1
.L0803D85A:
    ldrh r0, [r4, #0x38]
    ldrh r1, [r4, #0x36]
    cmp r0, r1
    blo .L0803D868
    adds r0, r4, #0
    bl Proc_Break
.L0803D868:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0803D7C4

    thumb_func_start func_0803D870
func_0803D870: @ 0x0803D870
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    adds r4, r1, #0
    mov r8, r2
    lsls r3, r3, #0x18
    lsrs r6, r3, #0x18
    ldr r0, .L0803D88C @ =0x0079FF86
    cmp r4, r0
    bls .L0803D890
    movs r0, #1
    rsbs r0, r0, #0
    b .L0803D8E2
    .align 2, 0
.L0803D88C: .4byte 0x0079FF86
.L0803D890:
    adds r0, r4, #0
    movs r1, #0x7a
    bl __udivsi3
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    adds r0, r4, #0
    movs r1, #0x7a
    bl __umodsi3
    adds r4, r0, #0
    cmp r4, #0
    beq .L0803D8B2
    adds r0, r5, #1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
.L0803D8B2:
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r0, .L0803D8EC @ =0x08B98AF0
    ldr r1, [sp, #0x18]
    bl Proc_StartBlocking
    adds r3, r0, #0
    str r7, [r3, #0x30]
    adds r0, #0x34
    movs r2, #0
    strb r6, [r0]
    mov r0, r8
    str r0, [r3, #0x2c]
    movs r1, #0
    strh r5, [r3, #0x36]
    adds r0, r3, #0
    adds r0, #0x3a
    strb r4, [r0]
    adds r0, #1
    strb r1, [r0]
    strh r2, [r3, #0x38]
    adds r0, #1
    strb r1, [r0]
    movs r0, #0
.L0803D8E2:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803D8EC: .4byte 0x08B98AF0
    func_end func_0803D870

    thumb_func_start func_0803D8F0
func_0803D8F0: @ 0x0803D8F0
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r1, r2, #0
    ldr r0, .L0803D918 @ =0x08B98B10
    bl Proc_StartBlocking
    str r4, [r0, #0x2c]
    str r5, [r0, #0x30]
    adds r2, r0, #0
    adds r2, #0x3b
    movs r1, #0
    strb r1, [r2]
    movs r2, #0
    strh r1, [r0, #0x38]
    adds r0, #0x3c
    strb r2, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803D918: .4byte 0x08B98B10
    func_end func_0803D8F0

    thumb_func_start func_0803D91C
func_0803D91C: @ 0x0803D91C
    push {lr}
    ldr r0, .L0803D938 @ =0x08B98AF0
    bl Proc_Find
    cmp r0, #0
    bne .L0803D940
    ldr r0, .L0803D93C @ =0x08B98B10
    bl Proc_Find
    cmp r0, #0
    bne .L0803D940
    movs r0, #0
    b .L0803D942
    .align 2, 0
.L0803D938: .4byte 0x08B98AF0
.L0803D93C: .4byte 0x08B98B10
.L0803D940:
    movs r0, #1
.L0803D942:
    pop {r1}
    bx r1
    func_end func_0803D91C

    thumb_func_start func_0803D948
func_0803D948: @ 0x0803D948
    movs r3, #0
    b .L0803D954
.L0803D94C:
    strb r2, [r1]
    adds r0, #1
    adds r1, #1
    adds r3, #1
.L0803D954:
    ldrb r2, [r0]
    cmp r2, #0
    bne .L0803D94C
    ldrb r0, [r0]
    strb r0, [r1]
    adds r0, r3, #0
    bx lr
    func_end func_0803D948

    thumb_func_start func_0803D964
func_0803D964: @ 0x0803D964
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r2, #0
    adds r6, r3, #0
    bl Text_SetCursor
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_SetColor
    adds r0, r4, #0
    adds r1, r6, #0
    bl Text_DrawNumber
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0803D964

    thumb_func_start func_0803D988
func_0803D988: @ 0x0803D988
    push {lr}
    bl func_0803C47C
    bl func_0803C414
    ldr r2, .L0803D9A4 @ =0x08B98AEC
    ldr r1, [r2]
    movs r3, #0
    movs r0, #1
    strb r0, [r1, #1]
    ldr r0, [r2]
    strh r3, [r0, #4]
    pop {r0}
    bx r0
    .align 2, 0
.L0803D9A4: .4byte 0x08B98AEC
    func_end func_0803D988

    thumb_func_start func_0803D9A8
func_0803D9A8: @ 0x0803D9A8
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r0, .L0803D9EC @ =0x00002586
    mov r1, sp
    strh r0, [r1]
    bl func_0803C130
    movs r5, #1
    rsbs r5, r5, #0
    cmp r0, r5
    beq .L0803D9E4
    ldr r4, .L0803D9F0 @ =0x08B98AEC
    ldr r1, [r4]
    movs r0, #0
    strb r0, [r1, #0x11]
    ldr r1, [r4]
    movs r0, #5
    strh r0, [r1, #4]
    bl func_0803C24C
    ldr r1, [r4]
    strb r0, [r1, #6]
    mov r0, sp
    adds r1, r5, #0
    bl func_0803D0E4
    adds r0, r6, #0
    bl Proc_Break
.L0803D9E4:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803D9EC: .4byte 0x00002586
.L0803D9F0: .4byte 0x08B98AEC
    func_end func_0803D9A8

    thumb_func_start func_0803D9F4
func_0803D9F4: @ 0x0803D9F4
    ldr r0, .L0803DA00 @ =gBmSt
    movs r1, #0x40
    ldrb r2, [r0, #4]
    orrs r1, r2
    strb r1, [r0, #4]
    bx lr
    .align 2, 0
.L0803DA00: .4byte gBmSt
    func_end func_0803D9F4

    thumb_func_start func_0803DA04
func_0803DA04: @ 0x0803DA04
    ldr r1, .L0803DA10 @ =gBmSt
    movs r0, #0xbf
    ldrb r2, [r1, #4]
    ands r0, r2
    strb r0, [r1, #4]
    bx lr
    .align 2, 0
.L0803DA10: .4byte gBmSt
    func_end func_0803DA04

    thumb_func_start func_0803DA14
func_0803DA14: @ 0x0803DA14
    ldr r0, .L0803DA20 @ =gBmSt
    ldrb r0, [r0, #4]
    lsrs r0, r0, #6
    movs r1, #1
    ands r0, r1
    bx lr
    .align 2, 0
.L0803DA20: .4byte gBmSt
    func_end func_0803DA14

    thumb_func_start func_0803DA24
func_0803DA24: @ 0x0803DA24
    ldr r1, .L0803DA2C @ =0x0203D90C
    movs r0, #0xff
    strb r0, [r1, #4]
    bx lr
    .align 2, 0
.L0803DA2C: .4byte 0x0203D90C
    func_end func_0803DA24

    thumb_func_start func_0803DA30
func_0803DA30: @ 0x0803DA30
    push {r4, lr}
    ldr r3, .L0803DA64 @ =0x030028AC
    ldr r1, .L0803DA68 @ =0x0000FFE0
    ldrh r2, [r3]
    ands r1, r2
    movs r2, #4
    orrs r1, r2
    ldr r2, .L0803DA6C @ =0x0000E0FF
    ands r1, r2
    movs r4, #0xd8
    lsls r4, r4, #5
    adds r2, r4, #0
    orrs r1, r2
    strh r1, [r3]
    movs r1, #0x3f
    ldrb r2, [r3]
    ands r1, r2
    strb r1, [r3]
    movs r1, #0
    strb r1, [r3, #8]
    strb r1, [r3, #9]
    strb r1, [r3, #0xa]
    str r1, [r0, #0x58]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DA64: .4byte 0x030028AC
.L0803DA68: .4byte 0x0000FFE0
.L0803DA6C: .4byte 0x0000E0FF
    func_end func_0803DA30

    thumb_func_start func_0803DA70
func_0803DA70: @ 0x0803DA70
    push {r4, r5, lr}
    ldr r1, [r0, #0x58]
    adds r1, #1
    str r1, [r0, #0x58]
    movs r4, #0x3f
    adds r3, r4, #0
    ands r3, r1
    cmp r3, #0x1f
    ble .L0803DA86
    movs r0, #0x40
    subs r3, r0, r3
.L0803DA86:
    cmp r3, #0x10
    ble .L0803DA8C
    movs r3, #0x10
.L0803DA8C:
    ldr r2, .L0803DAC4 @ =0x030028AC
    ldr r0, .L0803DAC8 @ =0x0000FFE0
    ldrh r1, [r2]
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    ldr r1, .L0803DACC @ =0x0000E0FF
    ands r0, r1
    movs r5, #0xd8
    lsls r5, r5, #5
    adds r1, r5, #0
    orrs r0, r1
    strh r0, [r2]
    adds r0, r4, #0
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    movs r1, #0
    strb r3, [r2, #8]
    movs r0, #0x10
    subs r0, r0, r3
    strb r0, [r2, #9]
    strb r1, [r2, #0xa]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DAC4: .4byte 0x030028AC
.L0803DAC8: .4byte 0x0000FFE0
.L0803DACC: .4byte 0x0000E0FF
    func_end func_0803DA70

    thumb_func_start func_0803DAD0
func_0803DAD0: @ 0x0803DAD0
    ldr r0, .L0803DAE0 @ =gDispIo
    ldrh r1, [r0, #0x20]
    adds r1, #1
    strh r1, [r0, #0x20]
    ldrh r1, [r0, #0x24]
    subs r1, #1
    strh r1, [r0, #0x24]
    bx lr
    .align 2, 0
.L0803DAE0: .4byte gDispIo
    func_end func_0803DAD0

    thumb_func_start func_0803DAE4
func_0803DAE4: @ 0x0803DAE4
    push {lr}
    adds r2, r0, #0
    ldr r0, .L0803DB04 @ =0x08B98AEC
    ldr r0, [r0]
    ldr r1, .L0803DB08 @ =0x00001286
    strh r1, [r0, #0x30]
    ldr r1, .L0803DB0C @ =0x00001B7E
    adds r0, r0, r1
    ldrh r0, [r0]
    cmp r0, #0
    beq .L0803DB00
    adds r0, r2, #0
    bl Proc_Break
.L0803DB00:
    pop {r0}
    bx r0
    .align 2, 0
.L0803DB04: .4byte 0x08B98AEC
.L0803DB08: .4byte 0x00001286
.L0803DB0C: .4byte 0x00001B7E
    func_end func_0803DAE4

    thumb_func_start func_0803DB10
func_0803DB10: @ 0x0803DB10
    ldr r0, .L0803DB20 @ =0x08B98AEC
    ldr r2, [r0]
    movs r1, #6
    ldrsb r1, [r2, r1]
    movs r0, #1
    lsls r0, r1
    strb r0, [r2, #0xa]
    bx lr
    .align 2, 0
.L0803DB20: .4byte 0x08B98AEC
    func_end func_0803DB10

    thumb_func_start func_0803DB24
func_0803DB24: @ 0x0803DB24
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L0803DB64 @ =0x0300479C
    movs r2, #0
    movs r1, #0xd9
    strb r1, [r0]
    ldr r4, .L0803DB68 @ =0x08B98AEC
    ldr r1, [r4]
    ldrb r1, [r1, #6]
    strb r1, [r0, #1]
    strh r2, [r0, #2]
    movs r1, #4
    bl func_0803CE34
    ldr r4, [r4]
    ldrb r0, [r4, #9]
    ldrb r1, [r4, #0xa]
    ands r0, r1
    ldrb r1, [r4, #9]
    cmp r0, r1
    bne .L0803DB5E
    movs r1, #6
    ldrsb r1, [r4, r1]
    movs r0, #1
    lsls r0, r1
    strb r0, [r4, #0xa]
    adds r0, r5, #0
    bl Proc_Break
.L0803DB5E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DB64: .4byte 0x0300479C
.L0803DB68: .4byte 0x08B98AEC
    func_end func_0803DB24

    thumb_func_start func_0803DB6C
func_0803DB6C: @ 0x0803DB6C
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0x30]
    ldr r0, [r2, #0x38]
    cmp r1, r0
    bge .L0803DB84
    ldr r0, [r2, #0x34]
    cmp r1, r0
    ble .L0803DB84
    ldr r0, [r2, #0x2c]
    bl DisplayFrozenUiHand
.L0803DB84:
    pop {r0}
    bx r0
    func_end func_0803DB6C

    thumb_func_start func_0803DB88
func_0803DB88: @ 0x0803DB88
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r7, [sp, #0x18]
    ldr r0, .L0803DBB4 @ =0x08B98BC4
    adds r1, r4, #0
    bl Proc_Start
    str r5, [r0, #0x2c]
    str r6, [r0, #0x30]
    mov r1, r8
    str r1, [r0, #0x38]
    str r7, [r0, #0x34]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803DBB4: .4byte 0x08B98BC4
    func_end func_0803DB88

    thumb_func_start func_0803DBB8
func_0803DBB8: @ 0x0803DBB8
    push {lr}
    ldr r0, .L0803DBC4 @ =0x08B98BC4
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L0803DBC4: .4byte 0x08B98BC4
    func_end func_0803DBB8

    thumb_func_start func_0803DBC8
func_0803DBC8: @ 0x0803DBC8
    ldr r2, [r0, #0x30]
    adds r2, r2, r1
    str r2, [r0, #0x30]
    bx lr
    func_end func_0803DBC8

    thumb_func_start func_0803DBD0
func_0803DBD0: @ 0x0803DBD0
    push {lr}
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
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L0803DC1C @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0803DC20 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0803DC24 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #7
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L0803DC1C: .4byte gBg0Tm
.L0803DC20: .4byte gBg1Tm
.L0803DC24: .4byte gBg2Tm
    func_end func_0803DBD0

    thumb_func_start func_0803DC28
func_0803DC28: @ 0x0803DC28
    push {lr}
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
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L0803DC7C @ =gBg0Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0803DC80 @ =gBg1Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0803DC84 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    ldr r0, .L0803DC88 @ =gBg3Tm
    movs r1, #0
    bl TmFill
    movs r0, #0xf
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L0803DC7C: .4byte gBg0Tm
.L0803DC80: .4byte gBg1Tm
.L0803DC84: .4byte gBg2Tm
.L0803DC88: .4byte gBg3Tm
    func_end func_0803DC28

    thumb_func_start func_0803DC8C
func_0803DC8C: @ 0x0803DC8C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    lsls r1, r4, #3
    ldr r0, .L0803DCB8 @ =0x0203DC08
    adds r5, r1, r0
    adds r0, r5, #0
    bl ClearText
    cmp r6, #0
    bge .L0803DCC0
    lsls r1, r4, #7
    movs r0, #0x80
    lsls r0, r0, #3
    adds r1, r1, r0
    ldr r0, .L0803DCBC @ =0x02023C62
    adds r1, r1, r0
    adds r0, r5, #0
    bl PutText
    b .L0803DCE6
    .align 2, 0
.L0803DCB8: .4byte 0x0203DC08
.L0803DCBC: .4byte 0x02023C62
.L0803DCC0:
    adds r0, r6, #0
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r5, #0
    bl Text_DrawString
    lsls r1, r4, #7
    movs r0, #0x80
    lsls r0, r0, #3
    adds r1, r1, r0
    ldr r0, .L0803DCEC @ =0x02023C62
    adds r1, r1, r0
    adds r0, r5, #0
    bl PutText
    movs r0, #4
    bl EnableBgSync
.L0803DCE6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DCEC: .4byte 0x02023C62
    func_end func_0803DC8C

    thumb_func_start func_0803DCF0
func_0803DCF0: @ 0x0803DCF0
    push {r4, r5, lr}
    ldr r5, .L0803DD34 @ =0x0203D970
    movs r4, #5
.L0803DCF6:
    adds r0, r5, #0
    movs r1, #0xc
    bl InitText
    adds r5, #8
    subs r4, #1
    cmp r4, #0
    bge .L0803DCF6
    ldr r5, .L0803DD38 @ =0x0203D918
    movs r4, #0xa
.L0803DD0A:
    adds r0, r5, #0
    movs r1, #0xc
    bl InitText
    adds r5, #8
    subs r4, #1
    cmp r4, #0
    bge .L0803DD0A
    ldr r5, .L0803DD3C @ =0x0203DC08
    movs r4, #1
.L0803DD1E:
    adds r0, r5, #0
    movs r1, #0x18
    bl InitText
    adds r5, #8
    subs r4, #1
    cmp r4, #0
    bge .L0803DD1E
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DD34: .4byte 0x0203D970
.L0803DD38: .4byte 0x0203D918
.L0803DD3C: .4byte 0x0203DC08
    func_end func_0803DCF0

    thumb_func_start func_0803DD40
func_0803DD40: @ 0x0803DD40
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r1, .L0803DD94 @ =0x081D5218
    mov r0, sp
    movs r2, #8
    bl memcpy
    movs r1, #0
    movs r4, #4
    adds r0, r5, #0
    adds r0, #0x26
.L0803DD58:
    strh r1, [r0]
    subs r0, #2
    subs r4, #1
    cmp r4, #0
    bge .L0803DD58
    movs r4, #0
.L0803DD64:
    cmp r4, #4
    beq .L0803DD86
    adds r0, r5, #0
    adds r0, #0x28
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803DD86
    mov r1, sp
    adds r0, r1, r4
    movs r1, #0xff
    lsls r1, r1, #8
    ldrb r0, [r0]
    orrs r1, r0
    adds r0, r5, #0
    bl UnitAddItem
.L0803DD86:
    adds r4, #1
    cmp r4, #7
    ble .L0803DD64
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DD94: .4byte 0x081D5218
    func_end func_0803DD40

    thumb_func_start func_0803DD98
func_0803DD98: @ 0x0803DD98
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r1, .L0803DDC8 @ =0x081D5220
    mov r0, sp
    movs r2, #8
    bl memcpy
    ldr r0, .L0803DDCC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0803DDBE
    lsls r0, r4, #1
    add r0, sp
    ldrh r0, [r0]
    bl m4aSongNumStart
.L0803DDBE:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DDC8: .4byte 0x081D5220
.L0803DDCC: .4byte gPlaySt
    func_end func_0803DD98

    thumb_func_start func_0803DDD0
func_0803DDD0: @ 0x0803DDD0
    push {r4, lr}
    ldr r4, .L0803DDF0 @ =0x0203DA0C
    adds r0, r4, #0
    bl func_080A1F90
    movs r0, #8
    ldrb r1, [r4]
    orrs r0, r1
    strb r0, [r4]
    adds r0, r4, #0
    bl func_080A1F54
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803DDF0: .4byte 0x0203DA0C
    func_end func_0803DDD0

    thumb_func_start func_0803DDF4
func_0803DDF4: @ 0x0803DDF4
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, .L0803DE18 @ =gpKeySt
    ldr r0, [r0]
    ldrh r4, [r0, #8]
    adds r3, r4, #0
    cmp r3, #0
    bne .L0803DE24
    ldr r1, .L0803DE1C @ =0x0203DC48
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    cmp r0, #0x3b
    ble .L0803DE78
    ldr r0, .L0803DE20 @ =0x030013F4
    str r3, [r1]
    str r3, [r0]
    b .L0803DE78
    .align 2, 0
.L0803DE18: .4byte gpKeySt
.L0803DE1C: .4byte 0x0203DC48
.L0803DE20: .4byte 0x030013F4
.L0803DE24:
    ldr r0, .L0803DE58 @ =0x0203DC48
    movs r6, #0
    str r6, [r0]
    ldr r1, .L0803DE5C @ =0x0203DC28
    ldr r2, .L0803DE60 @ =0x030013F0
    ldr r0, [r2]
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r4, [r0]
    ldr r1, .L0803DE64 @ =0x030013F4
    ldr r4, [r1]
    lsls r0, r4, #1
    adds r0, r0, r5
    ldrh r0, [r0]
    cmp r3, r0
    bne .L0803DE6C
    adds r0, r4, #1
    str r0, [r1]
    lsls r0, r0, #1
    adds r0, r0, r5
    ldr r1, .L0803DE68 @ =0x0000FFFF
    ldrh r0, [r0]
    cmp r0, r1
    bne .L0803DE6E
    movs r0, #1
    b .L0803DE7A
    .align 2, 0
.L0803DE58: .4byte 0x0203DC48
.L0803DE5C: .4byte 0x0203DC28
.L0803DE60: .4byte 0x030013F0
.L0803DE64: .4byte 0x030013F4
.L0803DE68: .4byte 0x0000FFFF
.L0803DE6C:
    str r6, [r1]
.L0803DE6E:
    ldr r0, [r2]
    adds r0, #1
    movs r1, #0xf
    ands r0, r1
    str r0, [r2]
.L0803DE78:
    movs r0, #0
.L0803DE7A:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0803DDF4

    thumb_func_start func_0803DE80
func_0803DE80: @ 0x0803DE80
    push {lr}
    ldr r0, .L0803DE90 @ =0x08B98BEC
    bl func_0803DDF4
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    .align 2, 0
.L0803DE90: .4byte 0x08B98BEC
    func_end func_0803DE80

    thumb_func_start func_0803DE94
func_0803DE94: @ 0x0803DE94
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0803DEA4 @ =0x08B98CB4
    bl Proc_StartBlocking
    pop {r0}
    bx r0
    .align 2, 0
.L0803DEA4: .4byte 0x08B98CB4
    func_end func_0803DE94

    thumb_func_start func_0803DEA8
func_0803DEA8: @ 0x0803DEA8
    mov ip, r0
    mov r2, ip
    adds r2, #0x4a
    movs r3, #0
    movs r1, #0
    movs r0, #0xd8
    strh r0, [r2]
    mov r0, ip
    adds r0, #0x48
    strb r3, [r0]
    mov r0, ip
    str r1, [r0, #0x40]
    str r1, [r0, #0x3c]
    adds r0, #0x52
    strb r3, [r0]
    adds r2, #0xa
    movs r0, #0xff
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    mov r1, ip
    adds r1, #0x53
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x4c
    strb r3, [r0]
    bx lr
    func_end func_0803DEA8

    thumb_func_start func_0803DEE4
func_0803DEE4: @ 0x0803DEE4
    push {r4, lr}
    ldr r0, .L0803DEF0 @ =0x0203D90C
    ldrb r0, [r0, #0xa]
    cmp r0, #0
    bne .L0803DEF8
    b .L0803DF10
    .align 2, 0
.L0803DEF0: .4byte 0x0203D90C
.L0803DEF4:
    movs r0, #1
    b .L0803DF12
.L0803DEF8:
    movs r2, #0
    movs r3, #0x80
    ldr r1, .L0803DF18 @ =0x0203DA78
.L0803DEFE:
    adds r0, r3, #0
    ldrb r4, [r1, #0x13]
    ands r0, r4
    cmp r0, #0
    bne .L0803DEF4
    adds r1, #0x18
    adds r2, #1
    cmp r2, #9
    ble .L0803DEFE
.L0803DF10:
    movs r0, #0
.L0803DF12:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803DF18: .4byte 0x0203DA78
    func_end func_0803DEE4

    thumb_func_start func_0803DF1C
func_0803DF1C: @ 0x0803DF1C
    push {r4, lr}
    movs r2, #0
    movs r3, #0x80
    ldr r1, .L0803DF34 @ =0x0203DA78
.L0803DF24:
    adds r0, r3, #0
    ldrb r4, [r1, #0x13]
    ands r0, r4
    cmp r0, #0
    bne .L0803DF38
    movs r0, #1
    b .L0803DF42
    .align 2, 0
.L0803DF34: .4byte 0x0203DA78
.L0803DF38:
    adds r1, #0x18
    adds r2, #1
    cmp r2, #9
    ble .L0803DF24
    movs r0, #0
.L0803DF42:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803DF1C

    thumb_func_start func_0803DF48
func_0803DF48: @ 0x0803DF48
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x14
    mov r8, r0
    lsls r1, r1, #0x18
    lsrs r4, r1, #0x18
    movs r5, #0
    ldr r1, .L0803DF78 @ =0x08B98C9C
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r7, [r0]
    bl InitUnits
    cmp r4, #0
    beq .L0803DF7C
    cmp r4, #0
    blt .L0803E02A
    cmp r4, #2
    bgt .L0803E02A
    movs r6, #0
    b .L0803DFE8
    .align 2, 0
.L0803DF78: .4byte 0x08B98C9C
.L0803DF7C:
    movs r6, #0
    mov r1, r8
    lsls r0, r1, #4
    adds r5, r0, r7
    movs r0, #1
    mov r8, r0
    movs r7, #0
.L0803DF8A:
    ldr r0, .L0803DFA8 @ =0x0203DA78
    adds r4, r7, r0
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_080A1C44
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803DFAC
    ldrb r0, [r5, #4]
    strb r0, [r4, #0x14]
    strb r6, [r4, #0x13]
    b .L0803DFC4
    .align 2, 0
.L0803DFA8: .4byte 0x0203DA78
.L0803DFAC:
    ldr r0, .L0803DFE4 @ =0x081D5228
    adds r1, r4, #0
    bl func_0803D948
    ldrb r0, [r5, #5]
    strb r0, [r4, #0x14]
    movs r0, #0x80
    rsbs r0, r0, #0
    adds r1, r0, #0
    adds r0, r6, #0
    orrs r0, r1
    strb r0, [r4, #0x13]
.L0803DFC4:
    mov r0, r8
    bl GetUnit
    adds r1, r0, #0
    adds r0, r6, #0
    mov r2, sp
    bl func_080A1E8C
    movs r1, #5
    add r8, r1
    adds r7, #0x18
    adds r6, #1
    cmp r6, #9
    ble .L0803DF8A
    adds r5, r6, #0
    b .L0803E02A
    .align 2, 0
.L0803DFE4: .4byte 0x081D5228
.L0803DFE8:
    lsls r0, r5, #1
    adds r0, r0, r5
    lsls r0, r0, #3
    ldr r1, .L0803E03C @ =0x0203DA78
    adds r4, r0, r1
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_080A1C44
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0803E024
    mov r1, r8
    lsls r0, r1, #4
    adds r0, r0, r7
    ldrb r0, [r0, #4]
    strb r0, [r4, #0x14]
    strb r6, [r4, #0x13]
    lsls r0, r5, #2
    adds r0, r0, r5
    adds r0, #1
    bl GetUnit
    adds r1, r0, #0
    adds r0, r6, #0
    mov r2, sp
    bl func_080A1E8C
    adds r5, #1
.L0803E024:
    adds r6, #1
    cmp r6, #9
    ble .L0803DFE8
.L0803E02A:
    adds r0, r5, #0
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803E03C: .4byte 0x0203DA78
    func_end func_0803DF48

    thumb_func_start func_0803E040
func_0803E040: @ 0x0803E040
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    adds r5, r0, #0
    lsls r0, r5, #3
    mov r8, r0
    ldr r6, .L0803E0A8 @ =0x0203D918
    adds r0, r0, r6
    mov sb, r0
    bl ClearText
    mov r0, sb
    movs r1, #0
    bl Text_SetColor
    lsls r4, r5, #1
    adds r4, r4, r5
    lsls r4, r4, #3
    ldr r0, .L0803E0AC @ =0x0203DA78
    adds r4, r4, r0
    mov r0, sb
    adds r1, r4, #0
    bl Text_DrawString
    subs r6, #0xc
    add r8, r6
    ldr r1, .L0803E0B0 @ =0x00000FFF
    mov r2, r8
    ldrh r2, [r2, #0xc]
    ands r1, r2
    movs r0, #0xf
    ldrb r4, [r4, #0x14]
    ands r0, r4
    lsls r0, r0, #0xc
    orrs r1, r0
    mov r0, r8
    strh r1, [r0, #0xc]
    lsls r5, r5, #7
    ldr r0, .L0803E0B4 @ =0x02023476
    adds r5, r5, r0
    mov r0, sb
    adds r1, r5, #0
    bl PutText
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803E0A8: .4byte 0x0203D918
.L0803E0AC: .4byte 0x0203DA78
.L0803E0B0: .4byte 0x00000FFF
.L0803E0B4: .4byte 0x02023476
    func_end func_0803E040

    thumb_func_start func_0803E0B8
func_0803E0B8: @ 0x0803E0B8
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
    b .L0803E0C8
.L0803E0C0:
    adds r0, r4, #0
    bl func_0803E040
    adds r4, #1
.L0803E0C8:
    ldr r0, [r5, #0x38]
    cmp r4, r0
    blt .L0803E0C0
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0803E0B8

    thumb_func_start func_0803E0D4
func_0803E0D4: @ 0x0803E0D4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    adds r4, r0, #0
    lsls r1, r1, #0x18
    ldr r0, .L0803E118 @ =0x08B98C9C
    lsrs r1, r1, #0x16
    adds r1, r1, r0
    ldr r1, [r1]
    mov sb, r1
    movs r6, #0
    ldr r0, [r4, #0x38]
    cmp r6, r0
    bge .L0803E168
    ldr r0, .L0803E11C @ =0x0203D90C
    adds r5, r0, #0
    adds r5, #0xc
    mov r8, r5
    ldr r3, .L0803E120 @ =0x0203DA78
    movs r2, #0
.L0803E100:
    ldr r0, .L0803E120 @ =0x0203DA78
    adds r1, r2, r0
    movs r0, #0x80
    ldrb r7, [r1, #0x13]
    ands r0, r7
    cmp r0, #0
    bne .L0803E124
    ldr r0, [r4, #0x3c]
    lsls r0, r0, #4
    add r0, sb
    ldrb r0, [r0, #4]
    b .L0803E12C
    .align 2, 0
.L0803E118: .4byte 0x08B98C9C
.L0803E11C: .4byte 0x0203D90C
.L0803E120: .4byte 0x0203DA78
.L0803E124:
    ldr r0, [r4, #0x3c]
    lsls r0, r0, #4
    add r0, sb
    ldrb r0, [r0, #5]
.L0803E12C:
    strb r0, [r1, #0x14]
    ldr r0, .L0803E17C @ =0x00000FFF
    adds r1, r0, #0
    ldrh r7, [r5]
    ands r1, r7
    movs r0, #0xf
    ldrb r7, [r3, #0x14]
    ands r0, r7
    lsls r0, r0, #0xc
    orrs r1, r0
    strh r1, [r5]
    lsls r1, r6, #7
    ldr r0, .L0803E180 @ =0x02023476
    adds r1, r1, r0
    mov r0, r8
    str r2, [sp]
    str r3, [sp, #4]
    bl PutText
    movs r0, #8
    add r8, r0
    adds r5, #8
    ldr r3, [sp, #4]
    adds r3, #0x18
    ldr r2, [sp]
    adds r2, #0x18
    adds r6, #1
    ldr r0, [r4, #0x38]
    cmp r6, r0
    blt .L0803E100
.L0803E168:
    movs r0, #2
    bl EnableBgSync
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803E17C: .4byte 0x00000FFF
.L0803E180: .4byte 0x02023476
    func_end func_0803E0D4

    thumb_func_start func_0803E184
func_0803E184: @ 0x0803E184
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    ldr r5, [r7, #0x40]
    ldr r1, .L0803E20C @ =0x08B98C9C
    ldr r0, .L0803E210 @ =0x0203D90C
    mov sb, r0
    ldrb r2, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    mov r8, r0
    lsls r0, r5, #2
    adds r0, r0, r5
    adds r0, #1
    bl GetUnit
    adds r6, r0, #0
    ldr r0, .L0803E214 @ =0x0203DA78
    lsls r4, r5, #1
    adds r4, r4, r5
    lsls r4, r4, #3
    adds r4, r4, r0
    movs r0, #0x7f
    ldrb r3, [r4, #0x13]
    ands r0, r3
    bl func_080A1CC4
    adds r0, r5, #0
    adds r1, r6, #0
    adds r2, r4, #0
    bl func_080A1E8C
    ldr r0, .L0803E218 @ =0x081D5228
    adds r1, r4, #0
    bl func_0803D948
    ldr r0, [r7, #0x3c]
    lsls r0, r0, #4
    add r0, r8
    ldrb r0, [r0, #5]
    strb r0, [r4, #0x14]
    movs r0, #0x80
    rsbs r0, r0, #0
    adds r1, r0, #0
    adds r0, r5, #0
    orrs r0, r1
    strb r0, [r4, #0x13]
    adds r0, r5, #0
    bl func_0803E040
    bl func_0803DF1C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803E21C
    mov r1, sb
    ldrb r0, [r1]
    adds r1, r7, #0
    bl func_0803E358
    adds r0, r7, #0
    movs r1, #2
    bl Proc_Goto
    b .L0803E230
    .align 2, 0
.L0803E20C: .4byte 0x08B98C9C
.L0803E210: .4byte 0x0203D90C
.L0803E214: .4byte 0x0203DA78
.L0803E218: .4byte 0x081D5228
.L0803E21C:
    adds r0, r7, #0
    adds r0, #0x4d
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0803E230
    mov r2, sb
    ldrb r0, [r2]
    adds r1, r7, #0
    bl func_0803E358
.L0803E230:
    ldr r0, [r7, #0x38]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r1, r7, #0
    adds r1, #0x4a
    ldrh r1, [r1]
    adds r1, #0x28
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_08048C50
    movs r0, #2
    bl EnableBgSync
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803E184

    thumb_func_start func_0803E258
func_0803E258: @ 0x0803E258
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    ldr r6, [r0, #0x40]
    adds r0, #0x53
    ldrb r7, [r0]
    ldr r2, .L0803E2C4 @ =0x0203DA78
    lsls r0, r7, #1
    adds r0, r0, r7
    lsls r0, r0, #3
    adds r5, r0, r2
    movs r1, #0x7f
    adds r0, r1, #0
    ldrb r3, [r5, #0x13]
    ands r0, r3
    lsls r4, r6, #1
    adds r4, r4, r6
    lsls r4, r4, #3
    adds r4, r4, r2
    ldrb r2, [r4, #0x13]
    ands r1, r2
    bl func_080A1D90
    ldrb r1, [r5, #0x14]
    ldrb r0, [r4, #0x14]
    strb r0, [r5, #0x14]
    strb r1, [r4, #0x14]
    lsls r0, r7, #2
    adds r0, r0, r7
    adds r0, #1
    bl GetUnit
    adds r3, r0, #0
    adds r0, r7, #0
    adds r1, r3, #0
    adds r2, r5, #0
    bl func_080A1E8C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803E2CC
    ldr r0, .L0803E2C8 @ =0x081D5228
    adds r1, r5, #0
    bl func_0803D948
    movs r3, #0x80
    rsbs r3, r3, #0
    adds r1, r3, #0
    adds r0, r7, #0
    orrs r0, r1
    strb r0, [r5, #0x13]
    b .L0803E2CE
    .align 2, 0
.L0803E2C4: .4byte 0x0203DA78
.L0803E2C8: .4byte 0x081D5228
.L0803E2CC:
    strb r7, [r5, #0x13]
.L0803E2CE:
    lsls r0, r6, #2
    adds r0, r0, r6
    adds r0, #1
    bl GetUnit
    adds r3, r0, #0
    lsls r0, r6, #1
    adds r0, r0, r6
    lsls r0, r0, #3
    ldr r1, .L0803E30C @ =0x0203DA78
    adds r4, r0, r1
    adds r0, r6, #0
    adds r1, r3, #0
    adds r2, r4, #0
    bl func_080A1E8C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803E314
    ldr r0, .L0803E310 @ =0x081D5228
    adds r1, r4, #0
    bl func_0803D948
    movs r0, #0x80
    rsbs r0, r0, #0
    adds r1, r0, #0
    adds r0, r6, #0
    orrs r0, r1
    strb r0, [r4, #0x13]
    b .L0803E316
    .align 2, 0
.L0803E30C: .4byte 0x0203DA78
.L0803E310: .4byte 0x081D5228
.L0803E314:
    strb r6, [r4, #0x13]
.L0803E316:
    adds r0, r6, #0
    bl func_0803E040
    adds r0, r7, #0
    bl func_0803E040
    mov r1, r8
    ldr r0, [r1, #0x38]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r1, #0x4a
    ldrh r1, [r1]
    adds r1, #0x28
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_08048C50
    mov r2, r8
    ldr r0, [r2, #0x30]
    bl Proc_End
    mov r1, r8
    adds r1, #0x52
    movs r0, #4
    strb r0, [r1]
    movs r0, #2
    bl EnableBgSync
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803E258

    thumb_func_start func_0803E358
func_0803E358: @ 0x0803E358
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov r8, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    movs r6, #0
    ldr r2, .L0803E3CC @ =0x08B98C9C
    lsls r1, r0, #2
    adds r1, r1, r2
    ldr r7, [r1]
    cmp r0, #1
    bne .L0803E3DC
    ldr r1, .L0803E3D0 @ =0x0203D90C
    ldrb r0, [r1, #5]
    adds r0, #2
    cmp r6, r0
    bge .L0803E3C2
    mov sb, r1
    movs r0, #5
    mov r8, r0
    mov r5, sb
    adds r5, #0x64
    movs r7, #0
.L0803E38C:
    ldr r4, .L0803E3D4 @ =0x0203DC4C
    adds r4, r7, r4
    ldr r0, .L0803E3D8 @ =0x081D5230
    adds r1, r4, #0
    bl func_0803D948
    adds r0, r5, #0
    bl ClearText
    movs r0, #0xa
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #1
    mov r2, r8
    adds r3, r4, #0
    bl func_08014EA8
    movs r1, #3
    add r8, r1
    adds r5, #8
    adds r7, #0x13
    adds r6, #1
    mov r1, sb
    ldrb r0, [r1, #5]
    adds r0, #2
    cmp r6, r0
    blt .L0803E38C
.L0803E3C2:
    ldr r0, .L0803E3D0 @ =0x0203D90C
    ldrb r0, [r0, #5]
    adds r0, #2
    b .L0803E444
    .align 2, 0
.L0803E3CC: .4byte 0x08B98C9C
.L0803E3D0: .4byte 0x0203D90C
.L0803E3D4: .4byte 0x0203DC4C
.L0803E3D8: .4byte 0x081D5230
.L0803E3DC:
    lsls r0, r6, #4
    adds r1, r0, r7
    ldr r0, [r1, #8]
    cmp r0, #0
    bne .L0803E3EA
    adds r0, r6, #0
    b .L0803E444
.L0803E3EA:
    mov r0, r8
    adds r0, #0x4d
    adds r4, r0, r6
    movs r0, #1
    strb r0, [r4]
    movs r5, #0
    ldr r0, [r1, #0xc]
    cmp r0, #0
    beq .L0803E40A
    bl _call_via_r0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803E40A
    strb r5, [r4]
    movs r5, #1
.L0803E40A:
    lsls r4, r6, #3
    ldr r0, .L0803E440 @ =0x0203D970
    adds r4, r4, r0
    adds r0, r4, #0
    bl ClearText
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_SetColor
    lsls r0, r6, #4
    adds r0, r0, r7
    ldr r0, [r0, #8]
    bl DecodeMsg
    adds r3, r0, #0
    lsls r2, r6, #1
    adds r2, #5
    movs r0, #8
    str r0, [sp]
    adds r0, r4, #0
    movs r1, #0
    bl func_08014EA8
    adds r6, #1
    b .L0803E3DC
    .align 2, 0
.L0803E440: .4byte 0x0203D970
.L0803E444:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0803E358

    thumb_func_start func_0803E454
func_0803E454: @ 0x0803E454
    adds r3, r0, #0
    ldr r2, .L0803E470 @ =0x08B98C9C
    ldr r0, .L0803E474 @ =0x0203D90C
    ldrb r1, [r0]
    lsls r0, r1, #2
    adds r0, r0, r2
    ldr r2, [r0]
    cmp r1, #1
    beq .L0803E478
    ldr r0, [r3, #0x3c]
    lsls r0, r0, #4
    adds r0, r0, r2
    ldrh r0, [r0, #2]
    b .L0803E48C
    .align 2, 0
.L0803E470: .4byte 0x08B98C9C
.L0803E474: .4byte 0x0203D90C
.L0803E478:
    ldr r0, [r3, #0x3c]
    cmp r0, #0
    beq .L0803E488
    ldr r0, .L0803E484 @ =0x000003C1
    b .L0803E48C
    .align 2, 0
.L0803E484: .4byte 0x000003C1
.L0803E488:
    movs r0, #0xf0
    lsls r0, r0, #2
.L0803E48C:
    bx lr
    func_end func_0803E454

    thumb_func_start func_0803E490
func_0803E490: @ 0x0803E490
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x10
    adds r7, r0, #0
    ldr r4, .L0803E670 @ =0x08194674
    bl func_0803DBD0
    bl func_08047B34
    ldr r0, .L0803E674 @ =0x081C5BE0
    ldr r1, .L0803E678 @ =0x06014800
    bl Decompress
    movs r0, #0
    movs r1, #2
    bl func_08047BD4
    ldr r0, .L0803E67C @ =0x02023D72
    ldr r1, .L0803E680 @ =0x081C827C
    movs r2, #0x80
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    ldr r0, .L0803E684 @ =0x081C7F04
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x80
    bl ApplyPaletteExt
    ldr r0, .L0803E688 @ =0x081C64A4
    ldr r1, .L0803E68C @ =0x06016000
    bl Decompress
    ldr r0, .L0803E690 @ =0x0840624C
    movs r1, #0x88
    lsls r1, r1, #2
    movs r2, #0x40
    bl ApplyPaletteExt
    ldr r2, .L0803E694 @ =gPal
    adds r1, r2, #0
    adds r1, #0x40
    movs r0, #0
    strh r0, [r1]
    adds r2, #0x42
    movs r3, #2
.L0803E4EE:
    ldrh r0, [r4, #8]
    strh r0, [r2]
    adds r4, #2
    adds r2, #2
    subs r3, #1
    cmp r3, #0
    bge .L0803E4EE
    bl EnablePalSync
    ldr r0, .L0803E698 @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    bl func_0803DCF0
    bl ApplyUnitSpritePalettes
    bl ResetUnitSprites
    bl ForceSyncUnitSpriteSheet
    ldr r0, [r7, #0x3c]
    ldr r1, .L0803E69C @ =0x0203D90C
    ldrb r1, [r1]
    bl func_0803DF48
    str r0, [r7, #0x38]
    adds r6, r7, #0
    adds r6, #0x5c
    adds r5, r7, #0
    adds r5, #0x4a
    movs r1, #0
    add r0, sp, #0xc
.L0803E536:
    strb r1, [r0]
    subs r0, #1
    add r2, sp, #8
    cmp r0, r2
    bge .L0803E536
    ldr r0, [r7, #0x3c]
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    movs r0, #1
    strb r0, [r1]
    ldr r4, .L0803E69C @ =0x0203D90C
    ldrb r0, [r4]
    adds r1, r7, #0
    bl func_0803E358
    str r0, [r7, #0x34]
    adds r0, r7, #0
    bl func_0803E0B8
    ldr r1, [r7, #0x34]
    adds r0, r7, #0
    add r2, sp, #8
    bl func_08048504
    str r0, [r7, #0x2c]
    movs r3, #0
    adds r4, #6
    movs r2, #0xff
.L0803E570:
    adds r1, r3, r4
    ldrb r0, [r1]
    orrs r0, r2
    strb r0, [r1]
    adds r3, #1
    cmp r3, #3
    ble .L0803E570
    movs r4, #0
    strb r4, [r6]
    ldrh r2, [r5]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r0, .L0803E6A0 @ =gDispIo
    mov ip, r0
    movs r0, #0x20
    mov r1, ip
    ldrb r1, [r1, #1]
    orrs r0, r1
    movs r1, #0x40
    orrs r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r2, ip
    strb r0, [r2, #1]
    mov r0, ip
    adds r0, #0x2d
    strb r4, [r0]
    mov r1, ip
    adds r1, #0x31
    movs r0, #0x28
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x2c
    movs r2, #0xf0
    strb r2, [r0]
    adds r0, #4
    movs r1, #0x88
    strb r1, [r0]
    subs r0, #1
    strb r4, [r0]
    adds r0, #4
    strb r1, [r0]
    subs r0, #5
    strb r2, [r0]
    mov r1, ip
    adds r1, #0x32
    movs r0, #0xa0
    strb r0, [r1]
    mov r5, ip
    adds r5, #0x34
    movs r2, #1
    ldrb r0, [r5]
    orrs r0, r2
    movs r1, #2
    orrs r0, r1
    movs r4, #4
    orrs r0, r4
    movs r3, #8
    orrs r0, r3
    movs r6, #0x10
    orrs r0, r6
    strb r0, [r5]
    movs r0, #0x35
    add r0, ip
    mov r8, r0
    ldrb r0, [r0]
    orrs r0, r2
    movs r5, #3
    rsbs r5, r5, #0
    ands r0, r5
    orrs r0, r4
    orrs r0, r3
    movs r1, #0x11
    rsbs r1, r1, #0
    ands r0, r1
    mov r1, r8
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x36
    ldrb r1, [r0]
    orrs r2, r1
    ands r2, r5
    orrs r2, r4
    orrs r2, r3
    orrs r2, r6
    strb r2, [r0]
    ldr r0, [r7, #0x2c]
    ldr r1, .L0803E6A4 @ =0x081D5260
    ldr r4, .L0803E69C @ =0x0203D90C
    ldrb r2, [r4]
    adds r1, r2, r1
    ldrb r1, [r1]
    bl func_08047D80
    ldr r0, .L0803E6A8 @ =0x08B98CA8
    ldrb r3, [r4]
    lsls r1, r3, #2
    adds r0, r1, r0
    ldr r0, [r0]
    ldr r2, .L0803E6AC @ =0x081D5254
    adds r1, r1, r2
    ldr r1, [r1]
    str r3, [sp]
    ldr r2, [r7, #0x2c]
    str r2, [sp, #4]
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    adds r0, r7, #0
    bl func_0803E454
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    movs r1, #1
    bl func_0803DC8C
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0x10
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803E670: .4byte 0x08194674
.L0803E674: .4byte 0x081C5BE0
.L0803E678: .4byte 0x06014800
.L0803E67C: .4byte 0x02023D72
.L0803E680: .4byte 0x081C827C
.L0803E684: .4byte 0x081C7F04
.L0803E688: .4byte 0x081C64A4
.L0803E68C: .4byte 0x06016000
.L0803E690: .4byte 0x0840624C
.L0803E694: .4byte gPal
.L0803E698: .4byte 0x0203DA60
.L0803E69C: .4byte 0x0203D90C
.L0803E6A0: .4byte gDispIo
.L0803E6A4: .4byte 0x081D5260
.L0803E6A8: .4byte 0x08B98CA8
.L0803E6AC: .4byte 0x081D5254
    func_end func_0803E490

    thumb_func_start func_0803E6B0
func_0803E6B0: @ 0x0803E6B0
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    lsls r1, r1, #0x18
    lsrs r7, r1, #0x18
    lsls r2, r2, #0x18
    lsrs r5, r2, #0x18
    lsls r3, r3, #0x18
    lsrs r6, r3, #0x18
    ldr r1, .L0803E710 @ =gpKeySt
    ldr r2, [r1]
    ldrh r3, [r2, #6]
    movs r0, #0x40
    ands r0, r3
    cmp r0, #0
    beq .L0803E6E6
    ldr r0, [r4]
    cmp r0, r5
    bgt .L0803E6DA
    ldrh r2, [r2, #8]
    cmp r3, r2
    bne .L0803E6E6
.L0803E6DA:
    subs r0, #1
    str r0, [r4]
    cmp r0, #0
    bge .L0803E6E6
    subs r0, r6, #1
    str r0, [r4]
.L0803E6E6:
    ldr r1, [r1]
    ldrh r2, [r1, #6]
    movs r0, #0x80
    ands r0, r2
    cmp r0, #0
    beq .L0803E70A
    ldr r0, [r4]
    cmp r0, r7
    blt .L0803E6FE
    ldrh r1, [r1, #8]
    cmp r2, r1
    bne .L0803E70A
.L0803E6FE:
    adds r0, #1
    str r0, [r4]
    adds r1, r6, #0
    bl __modsi3
    str r0, [r4]
.L0803E70A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803E710: .4byte gpKeySt
    func_end func_0803E6B0

    thumb_func_start func_0803E714
func_0803E714: @ 0x0803E714
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r4, r0, #0
    ldr r6, [r4, #0x3c]
    ldr r1, .L0803E7E0 @ =0x08B98C9C
    ldr r0, .L0803E7E4 @ =0x0203D90C
    mov r8, r0
    ldrb r2, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    mov sb, r0
    ldr r5, [r4, #0x2c]
    adds r0, r5, #0
    adds r0, #0x44
    movs r3, #0
    mov sl, r3
    movs r7, #1
    strb r7, [r0]
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r5, #0x48]
    adds r0, r4, #0
    adds r0, #0x3c
    ldr r3, [r4, #0x34]
    subs r1, r3, #1
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    movs r2, #0
    bl func_0803E6B0
    ldr r0, [r4, #0x3c]
    cmp r6, r0
    beq .L0803E792
    movs r0, #3
    bl func_0803DD98
    adds r0, r5, #0
    adds r0, #0x3a
    adds r1, r0, r6
    mov r2, sl
    strb r2, [r1]
    ldr r1, [r4, #0x3c]
    adds r0, r0, r1
    strb r7, [r0]
    mov r3, r8
    ldrb r1, [r3]
    adds r0, r4, #0
    bl func_0803E0D4
    adds r0, r4, #0
    bl func_0803E454
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    movs r1, #1
    bl func_0803DC8C
.L0803E792:
    ldr r0, .L0803E7E8 @ =gpKeySt
    ldr r1, [r0]
    adds r0, r7, #0
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803E824
    mov r0, r8
    ldrb r0, [r0]
    cmp r0, #1
    beq .L0803E802
    adds r0, r4, #0
    adds r0, #0x4d
    ldr r1, [r4, #0x3c]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803E7FA
    lsls r0, r1, #4
    add r0, sb
    ldrb r0, [r0]
    adds r1, r4, #0
    adds r1, #0x52
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #7
    bne .L0803E7EC
    movs r0, #1
    bl func_0803DD98
    adds r0, r4, #0
    movs r1, #9
    bl Proc_Goto
    movs r0, #0xff
    mov r1, r8
    strb r0, [r1, #3]
    b .L0803E880
    .align 2, 0
.L0803E7E0: .4byte 0x08B98C9C
.L0803E7E4: .4byte 0x0203D90C
.L0803E7E8: .4byte gpKeySt
.L0803E7EC:
    movs r0, #2
    bl func_0803DD98
    adds r0, r4, #0
    bl Proc_Break
    b .L0803E824
.L0803E7FA:
    movs r0, #0
    bl func_0803DD98
    b .L0803E824
.L0803E802:
    movs r0, #2
    bl func_0803DD98
    adds r1, r4, #0
    adds r1, #0x52
    movs r0, #8
    strb r0, [r1]
    ldr r0, [r4, #0x3c]
    adds r1, #1
    strb r0, [r1]
    mov r2, sl
    str r2, [r4, #0x44]
    adds r0, r4, #0
    movs r1, #5
    bl Proc_Goto
    b .L0803E880
.L0803E824:
    ldr r5, .L0803E890 @ =gpKeySt
    ldr r1, [r5]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803E846
    movs r0, #1
    bl func_0803DD98
    adds r0, r4, #0
    movs r1, #9
    bl Proc_Goto
    ldr r1, .L0803E894 @ =0x0203D90C
    movs r0, #0xff
    strb r0, [r1, #3]
.L0803E846:
    ldr r1, [r5]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803E880
    adds r0, r4, #0
    adds r0, #0x5c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0803E880
    ldr r0, .L0803E898 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0803E872
    ldr r0, .L0803E89C @ =0x0000038A
    bl m4aSongNumStart
.L0803E872:
    ldr r1, .L0803E894 @ =0x0203D90C
    movs r0, #0
    strb r0, [r1, #3]
    adds r0, r4, #0
    movs r1, #9
    bl Proc_Goto
.L0803E880:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803E890: .4byte gpKeySt
.L0803E894: .4byte 0x0203D90C
.L0803E898: .4byte gPlaySt
.L0803E89C: .4byte 0x0000038A
    func_end func_0803E714

    thumb_func_start func_0803E8A0
func_0803E8A0: @ 0x0803E8A0
    push {r4, lr}
    sub sp, #0x14
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    bl Proc_End
    bl func_08047CA8
    bl InitUnits
    movs r0, #1
    bl GetUnit
    adds r1, r0, #0
    ldr r3, .L0803E8E0 @ =0x0203DA78
    ldr r2, [r4, #0x40]
    lsls r0, r2, #1
    adds r0, r0, r2
    lsls r0, r0, #3
    adds r0, r0, r3
    ldrb r0, [r0, #0x13]
    mov r2, sp
    bl func_080A1E8C
    adds r0, r4, #0
    bl func_0808AB94
    add sp, #0x14
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803E8E0: .4byte 0x0203DA78
    func_end func_0803E8A0

    thumb_func_start func_0803E8E4
func_0803E8E4: @ 0x0803E8E4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0803E900 @ =0x08CC32A4
    bl Proc_Find
    cmp r0, #0
    bne .L0803E8F8
    adds r0, r4, #0
    bl Proc_Break
.L0803E8F8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803E900: .4byte 0x08CC32A4
    func_end func_0803E8E4

    thumb_func_start func_0803E904
func_0803E904: @ 0x0803E904
    movs r1, #0
    ldr r2, .L0803E920 @ =0x0203D90C
    ldrb r0, [r2, #5]
    adds r0, #2
    cmp r1, r0
    bge .L0803E92A
    adds r3, r2, #6
    adds r2, r0, #0
.L0803E914:
    adds r0, r1, r3
    ldrb r0, [r0]
    cmp r0, #0xff
    bne .L0803E924
    movs r0, #0
    b .L0803E92C
    .align 2, 0
.L0803E920: .4byte 0x0203D90C
.L0803E924:
    adds r1, #1
    cmp r1, r2
    blt .L0803E914
.L0803E92A:
    movs r0, #1
.L0803E92C:
    bx lr
    func_end func_0803E904

    thumb_func_start func_0803E930
func_0803E930: @ 0x0803E930
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r7, r0, #0
    ldr r0, [r7, #0x40]
    mov sb, r0
    ldr r1, [r7, #0x2c]
    str r1, [sp, #4]
    ldr r0, .L0803E974 @ =0x08B98BDC
    bl func_0803DDF4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803E97C
    ldr r0, .L0803E978 @ =0x0203DA78
    mov r2, sb
    lsls r1, r2, #1
    add r1, sb
    lsls r1, r1, #3
    adds r1, r1, r0
    movs r0, #0x80
    ldrb r1, [r1, #0x13]
    ands r0, r1
    cmp r0, #0
    bne .L0803E97C
    adds r0, r7, #0
    movs r1, #8
    bl Proc_Goto
    b .L0803EE24
    .align 2, 0
.L0803E974: .4byte 0x08B98BDC
.L0803E978: .4byte 0x0203DA78
.L0803E97C:
    ldr r1, [sp, #4]
    adds r1, #0x44
    movs r0, #0
    strb r0, [r1]
    adds r1, r7, #0
    adds r1, #0x48
    ldr r0, [r7, #0x40]
    ldrb r3, [r1]
    subs r0, r0, r3
    lsls r0, r0, #4
    adds r0, #0x28
    ldr r2, [sp, #4]
    str r0, [r2, #0x48]
    adds r0, r7, #0
    adds r0, #0x4c
    movs r2, #0
    ldrsb r2, [r0, r2]
    mov sl, r1
    str r0, [sp, #8]
    cmp r2, #0
    ble .L0803E9DE
    adds r4, r7, #0
    adds r4, #0x4a
    ldrh r0, [r4]
    subs r0, #4
    strh r0, [r4]
    ldr r3, [sp, #8]
    ldrb r0, [r3]
    subs r0, #1
    strb r0, [r3]
    ldrh r2, [r4]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r0, [r7, #0x30]
    cmp r0, #0
    beq .L0803E9CE
    movs r1, #4
    bl func_0803DBC8
.L0803E9CE:
    movs r0, #4
    bl func_08048674
    ldr r1, [r7, #0x40]
    mov r0, sl
    ldrb r0, [r0]
    subs r1, r1, r0
    b .L0803EA1C
.L0803E9DE:
    cmp r2, #0
    bge .L0803EA3A
    adds r4, r7, #0
    adds r4, #0x4a
    ldrh r0, [r4]
    adds r0, #4
    strh r0, [r4]
    ldr r1, [sp, #8]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    ldrh r2, [r4]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r0, [r7, #0x30]
    cmp r0, #0
    beq .L0803EA0C
    movs r1, #4
    rsbs r1, r1, #0
    bl func_0803DBC8
.L0803EA0C:
    movs r0, #4
    rsbs r0, r0, #0
    bl func_08048674
    ldr r1, [r7, #0x40]
    mov r2, sl
    ldrb r2, [r2]
    subs r1, r1, r2
.L0803EA1C:
    lsls r1, r1, #4
    adds r1, #0x28
    movs r0, #0x50
    bl PutUiHand
    ldr r0, [r7, #0x38]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldrh r1, [r4]
    adds r1, #0x28
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_08048C50
    b .L0803EE24
.L0803EA3A:
    ldr r1, [r7, #0x40]
    mov r3, sl
    ldrb r3, [r3]
    subs r1, r1, r3
    lsls r1, r1, #4
    adds r1, #0x28
    movs r0, #0x50
    bl PutUiHand
    ldr r0, .L0803EA78 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    bne .L0803EA5C
    b .L0803EC76
.L0803EA5C:
    adds r0, r7, #0
    adds r0, #0x52
    ldrb r1, [r0]
    subs r1, #1
    adds r4, r0, #0
    cmp r1, #7
    bls .L0803EA6C
    b .L0803EC76
.L0803EA6C:
    lsls r0, r1, #2
    ldr r1, .L0803EA7C @ =.L0803EA80
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0803EA78: .4byte gpKeySt
.L0803EA7C: .4byte .L0803EA80
.L0803EA80: @ jump table
    .4byte .L0803EAA0 @ case 0
    .4byte .L0803EAD0 @ case 1
    .4byte .L0803EAF8 @ case 2
    .4byte .L0803EB24 @ case 3
    .4byte .L0803EB88 @ case 4
    .4byte .L0803EB96 @ case 5
    .4byte .L0803EC76 @ case 6
    .4byte .L0803EBE4 @ case 7
.L0803EAA0:
    ldr r0, .L0803EAC8 @ =0x0203DA78
    mov r2, sb
    lsls r1, r2, #1
    add r1, sb
    lsls r1, r1, #3
    adds r1, r1, r0
    movs r0, #0x80
    ldrb r1, [r1, #0x13]
    ands r0, r1
    cmp r0, #0
    bne .L0803EAB8
    b .L0803EBDC
.L0803EAB8:
    movs r0, #2
    bl func_0803DD98
    ldr r1, .L0803EACC @ =0x0203D90C
    ldr r0, [r7, #0x40]
    strb r0, [r1, #3]
    b .L0803EAE8
    .align 2, 0
.L0803EAC8: .4byte 0x0203DA78
.L0803EACC: .4byte 0x0203D90C
.L0803EAD0:
    movs r0, #2
    bl func_0803DD98
    ldr r2, .L0803EAF0 @ =0x0203D90C
    ldr r1, .L0803EAF4 @ =0x0203DA78
    mov r3, sb
    lsls r0, r3, #1
    add r0, sb
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrb r0, [r0, #0x13]
    strb r0, [r2, #3]
.L0803EAE8:
    adds r0, r7, #0
    bl Proc_Break
    b .L0803EE24
    .align 2, 0
.L0803EAF0: .4byte 0x0203D90C
.L0803EAF4: .4byte 0x0203DA78
.L0803EAF8:
    ldr r0, .L0803EB20 @ =0x0203DA78
    mov r2, sb
    lsls r1, r2, #1
    add r1, sb
    lsls r1, r1, #3
    adds r1, r1, r0
    movs r0, #0x80
    ldrb r1, [r1, #0x13]
    ands r0, r1
    cmp r0, #0
    bne .L0803EBDC
    movs r0, #2
    bl func_0803DD98
    adds r0, r7, #0
    movs r1, #4
    bl Proc_Goto
    b .L0803EE24
    .align 2, 0
.L0803EB20: .4byte 0x0203DA78
.L0803EB24:
    ldr r0, [r7, #0x38]
    cmp r0, #1
    bgt .L0803EB2C
    b .L0803EC76
.L0803EB2C:
    movs r0, #2
    bl func_0803DD98
    adds r0, r7, #0
    adds r0, #0x53
    mov r3, sb
    strb r3, [r0]
    mov r1, sl
    ldrb r1, [r1]
    subs r2, r3, r1
    lsls r2, r2, #4
    adds r2, #0x28
    movs r0, #0x27
    str r0, [sp]
    adds r0, r7, #0
    movs r1, #0x50
    movs r3, #0x88
    bl func_0803DB88
    str r0, [r7, #0x30]
    mov r1, sb
    adds r1, #1
    ldr r0, [r7, #0x38]
    cmp r1, r0
    bge .L0803EB70
    ldr r0, .L0803EB6C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    ldrh r2, [r1, #6]
    orrs r0, r2
    b .L0803EB7A
    .align 2, 0
.L0803EB6C: .4byte gpKeySt
.L0803EB70:
    ldr r0, .L0803EB84 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x40
    ldrh r3, [r1, #6]
    orrs r0, r3
.L0803EB7A:
    strh r0, [r1, #6]
    movs r0, #5
    strb r0, [r4]
    b .L0803EC76
    .align 2, 0
.L0803EB84: .4byte gpKeySt
.L0803EB88:
    movs r0, #2
    bl func_0803DD98
    adds r0, r7, #0
    bl func_0803E258
    b .L0803EC76
.L0803EB96:
    ldr r0, .L0803EBD8 @ =0x0203DA78
    mov r2, sb
    lsls r1, r2, #1
    add r1, sb
    lsls r1, r1, #3
    adds r1, r1, r0
    movs r0, #0x80
    ldrb r1, [r1, #0x13]
    ands r0, r1
    cmp r0, #0
    bne .L0803EBDC
    movs r0, #2
    bl func_0803DD98
    mov r0, sb
    mov r3, sl
    ldrb r3, [r3]
    subs r2, r0, r3
    lsls r2, r2, #4
    adds r2, #0x28
    movs r0, #0x27
    str r0, [sp]
    adds r0, r7, #0
    movs r1, #0x50
    movs r3, #0x88
    bl func_0803DB88
    str r0, [r7, #0x30]
    adds r0, r7, #0
    movs r1, #7
    bl Proc_Goto
    b .L0803EC76
    .align 2, 0
.L0803EBD8: .4byte 0x0203DA78
.L0803EBDC:
    movs r0, #0
    bl func_0803DD98
    b .L0803EC76
.L0803EBE4:
    movs r0, #2
    bl func_0803DD98
    mov r0, sb
    lsls r4, r0, #1
    add r4, sb
    lsls r4, r4, #3
    ldr r0, .L0803ECA0 @ =0x0203DA78
    adds r4, r4, r0
    movs r1, #0x53
    adds r1, r1, r7
    mov r8, r1
    ldrb r0, [r1]
    lsls r1, r0, #2
    adds r1, r1, r0
    lsls r1, r1, #2
    subs r1, r1, r0
    ldr r6, .L0803ECA4 @ =0x0203DC4C
    adds r1, r1, r6
    adds r0, r4, #0
    bl func_0803D948
    ldr r5, .L0803ECA8 @ =0x0203D90C
    adds r0, r5, #6
    mov r2, r8
    ldrb r2, [r2]
    adds r0, r2, r0
    ldrb r1, [r4, #0x13]
    strb r1, [r0]
    mov r3, r8
    ldrb r3, [r3]
    lsls r0, r3, #3
    adds r5, #0x64
    adds r0, r0, r5
    bl ClearText
    mov r0, r8
    ldrb r1, [r0]
    lsls r0, r1, #3
    adds r0, r0, r5
    lsls r2, r1, #1
    adds r2, r2, r1
    adds r2, #5
    lsls r3, r1, #2
    adds r3, r3, r1
    lsls r3, r3, #2
    subs r3, r3, r1
    adds r3, r3, r6
    movs r1, #0xa
    str r1, [sp]
    movs r1, #1
    bl func_08014EA8
    bl func_0803E904
    adds r1, r7, #0
    adds r1, #0x5c
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803EC6A
    ldr r1, [sp, #4]
    ldr r0, [r1, #0x40]
    cmp r0, #0
    bne .L0803EC6A
    movs r0, #8
    str r0, [r1, #0x40]
.L0803EC6A:
    movs r0, #0
    str r0, [r7, #0x44]
    adds r0, r7, #0
    movs r1, #6
    bl Proc_Goto
.L0803EC76:
    ldr r0, .L0803ECAC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803ECCA
    movs r0, #1
    bl func_0803DD98
    adds r1, r7, #0
    adds r1, #0x52
    ldrb r0, [r1]
    cmp r0, #5
    bne .L0803ECB0
    movs r0, #4
    strb r0, [r1]
    ldr r0, [r7, #0x30]
    bl Proc_End
    b .L0803EE24
    .align 2, 0
.L0803ECA0: .4byte 0x0203DA78
.L0803ECA4: .4byte 0x0203DC4C
.L0803ECA8: .4byte 0x0203D90C
.L0803ECAC: .4byte gpKeySt
.L0803ECB0:
    cmp r0, #8
    beq .L0803ECBE
    adds r0, r7, #0
    movs r1, #2
    bl Proc_Goto
    b .L0803ECCA
.L0803ECBE:
    movs r0, #0
    str r0, [r7, #0x44]
    adds r0, r7, #0
    movs r1, #6
    bl Proc_Goto
.L0803ECCA:
    ldr r0, .L0803ED74 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803ED06
    adds r0, r7, #0
    adds r0, #0x5c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0803ED06
    ldr r0, .L0803ED78 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0803ECF8
    ldr r0, .L0803ED7C @ =0x0000038A
    bl m4aSongNumStart
.L0803ECF8:
    ldr r1, .L0803ED80 @ =0x0203D90C
    movs r0, #0
    strb r0, [r1, #3]
    adds r0, r7, #0
    movs r1, #9
    bl Proc_Goto
.L0803ED06:
    ldr r0, .L0803ED74 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x40
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0803ED8E
    mov r2, sl
    ldrb r0, [r2]
    cmp r0, #0
    beq .L0803ED84
    ldr r0, [r7, #0x40]
    ldrb r3, [r2]
    subs r0, r0, r3
    cmp r0, #1
    bgt .L0803ED84
    adds r4, r7, #0
    adds r4, #0x4a
    ldrh r0, [r4]
    subs r0, #4
    strh r0, [r4]
    ldr r0, [r7, #0x30]
    cmp r0, #0
    beq .L0803ED3C
    movs r1, #4
    bl func_0803DBC8
.L0803ED3C:
    movs r0, #4
    bl func_08048674
    mov r1, sl
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    movs r0, #3
    ldr r2, [sp, #8]
    strb r0, [r2]
    ldr r0, [r7, #0x40]
    subs r0, #1
    str r0, [r7, #0x40]
    ldrh r2, [r4]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r0, [r7, #0x38]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldrh r1, [r4]
    adds r1, #0x28
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_08048C50
    b .L0803ED8E
    .align 2, 0
.L0803ED74: .4byte gpKeySt
.L0803ED78: .4byte gPlaySt
.L0803ED7C: .4byte 0x0000038A
.L0803ED80: .4byte 0x0203D90C
.L0803ED84:
    ldr r0, [r7, #0x40]
    cmp r0, #0
    ble .L0803ED8E
    subs r0, #1
    str r0, [r7, #0x40]
.L0803ED8E:
    ldr r0, .L0803EE08 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0803EE18
    ldr r1, [r7, #0x38]
    cmp r1, #6
    ble .L0803EE0C
    mov r3, sl
    ldrb r2, [r3]
    adds r0, r2, #6
    cmp r0, r1
    bge .L0803EE0C
    ldr r0, [r7, #0x40]
    subs r0, r0, r2
    cmp r0, #3
    ble .L0803EE0C
    adds r4, r7, #0
    adds r4, #0x4a
    ldrh r0, [r4]
    adds r0, #4
    strh r0, [r4]
    ldr r0, [r7, #0x30]
    cmp r0, #0
    beq .L0803EDCC
    movs r1, #4
    rsbs r1, r1, #0
    bl func_0803DBC8
.L0803EDCC:
    movs r0, #4
    rsbs r0, r0, #0
    bl func_08048674
    mov r1, sl
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    movs r0, #0xfd
    ldr r2, [sp, #8]
    strb r0, [r2]
    ldr r0, [r7, #0x40]
    adds r0, #1
    str r0, [r7, #0x40]
    ldrh r2, [r4]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r0, [r7, #0x38]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldrh r1, [r4]
    adds r1, #0x28
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_08048C50
    b .L0803EE18
    .align 2, 0
.L0803EE08: .4byte gpKeySt
.L0803EE0C:
    subs r0, r1, #1
    ldr r1, [r7, #0x40]
    cmp r1, r0
    bge .L0803EE18
    adds r0, r1, #1
    str r0, [r7, #0x40]
.L0803EE18:
    ldr r0, [r7, #0x40]
    cmp sb, r0
    beq .L0803EE24
    movs r0, #3
    bl func_0803DD98
.L0803EE24:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803E930

    thumb_func_start func_0803EE34
func_0803EE34: @ 0x0803EE34
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    rsbs r1, r1, #0
    subs r1, #8
    movs r2, #4
    adds r0, #0x38
.L0803EE40:
    strh r1, [r0]
    subs r0, #2
    subs r2, #1
    cmp r2, #0
    bge .L0803EE40
    bx lr
    func_end func_0803EE34

    thumb_func_start func_0803EE4C
func_0803EE4C: @ 0x0803EE4C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r6, [r4, #0x2c]
    ldr r0, .L0803EEB0 @ =0x081D5263
    ldr r1, [r4, #0x44]
    adds r1, r1, r0
    movs r5, #0
    ldrsb r5, [r1, r5]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0803EE6C
    adds r0, r4, #0
    movs r1, #3
    bl Proc_Goto
.L0803EE6C:
    ldr r0, [r4, #0x44]
    adds r0, #1
    str r0, [r4, #0x44]
    movs r0, #2
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0803EEB8
    ldr r3, .L0803EEB4 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    strb r0, [r3, #0x10]
    adds r0, r1, #0
    ldrb r2, [r3, #0x14]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x14]
    ldrb r0, [r3, #0xc]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0xc]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    adds r1, r6, #0
    adds r1, #0x44
    movs r0, #0
    strb r0, [r1]
    b .L0803EECC
    .align 2, 0
.L0803EEB0: .4byte 0x081D5263
.L0803EEB4: .4byte gDispIo
.L0803EEB8:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    movs r0, #0
    movs r2, #0
    bl SetBgOffset
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_0803EE34
.L0803EECC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0803EE4C

    thumb_func_start func_0803EED4
func_0803EED4: @ 0x0803EED4
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r6, [r4, #0x2c]
    ldr r1, .L0803EF3C @ =0x081D5263
    ldr r0, [r4, #0x44]
    adds r0, r0, r1
    movs r5, #0
    ldrsb r5, [r0, r5]
    movs r7, #1
    rsbs r7, r7, #0
    cmp r5, r7
    bne .L0803EEF4
    adds r0, r4, #0
    movs r1, #2
    bl Proc_Goto
.L0803EEF4:
    ldr r0, [r4, #0x44]
    adds r0, #1
    str r0, [r4, #0x44]
    movs r0, #2
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0803EF44
    ldr r3, .L0803EF40 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    adds r1, r6, #0
    adds r1, #0x44
    movs r0, #1
    strb r0, [r1]
    str r7, [r6, #0x48]
    b .L0803EF58
    .align 2, 0
.L0803EF3C: .4byte 0x081D5263
.L0803EF40: .4byte gDispIo
.L0803EF44:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    movs r0, #0
    movs r2, #0
    bl SetBgOffset
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_0803EE34
.L0803EF58:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803EED4

    thumb_func_start func_0803EF60
func_0803EF60: @ 0x0803EF60
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r1, r5, #0
    adds r1, #0x55
    movs r0, #1
    strb r0, [r1]
    bl func_08049220
    adds r1, r5, #0
    adds r1, #0x48
    ldr r0, [r5, #0x40]
    ldrb r1, [r1]
    subs r0, r0, r1
    cmp r0, #2
    ble .L0803EF84
    lsls r0, r0, #1
    subs r0, #2
    b .L0803EF88
.L0803EF84:
    lsls r0, r0, #1
    adds r0, #5
.L0803EF88:
    str r0, [r5, #0x58]
    ldr r4, .L0803EFB8 @ =0x0203D998
    adds r0, r4, #0
    bl ClearText
    ldr r1, .L0803EFBC @ =0x081D5270
    adds r0, r4, #0
    bl Text_DrawString
    ldr r1, [r5, #0x58]
    adds r1, #4
    lsls r1, r1, #6
    ldr r0, .L0803EFC0 @ =0x02022C7E
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    movs r0, #1
    bl EnableBgSync
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803EFB8: .4byte 0x0203D998
.L0803EFBC: .4byte 0x081D5270
.L0803EFC0: .4byte 0x02022C7E
    func_end func_0803EF60

    thumb_func_start func_0803EFC4
func_0803EFC4: @ 0x0803EFC4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x58]
    lsls r1, r1, #3
    adds r1, #0x18
    movs r0, #0x60
    bl func_0804925C
    ldr r0, .L0803F068 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x20
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803EFF6
    adds r1, r4, #0
    adds r1, #0x55
    ldrb r0, [r1]
    cmp r0, #1
    bne .L0803EFF6
    movs r0, #0
    strb r0, [r1]
    movs r0, #3
    bl func_0803DD98
.L0803EFF6:
    ldr r0, .L0803F068 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #8]
    ands r0, r1
    adds r5, r4, #0
    adds r5, #0x55
    cmp r0, #0
    beq .L0803F018
    ldrb r0, [r5]
    cmp r0, #0
    bne .L0803F018
    movs r0, #1
    strb r0, [r5]
    movs r0, #3
    bl func_0803DD98
.L0803F018:
    ldrb r1, [r5]
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #0x70
    ldr r1, [r4, #0x58]
    lsls r1, r1, #3
    adds r1, #0x20
    bl PutUiHand
    ldr r0, .L0803F068 @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L0803F070
    movs r0, #1
    bl func_0803DD98
    ldr r0, [r4, #0x30]
    bl Proc_End
    ldr r0, [r4, #0x58]
    adds r0, #4
    lsls r0, r0, #6
    ldr r1, .L0803F06C @ =0x02022C7E
    adds r0, r0, r1
    movs r1, #0xc
    movs r2, #2
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #1
    bl EnableBgSync
    adds r0, r4, #0
    bl Proc_Break
    b .L0803F0B8
    .align 2, 0
.L0803F068: .4byte gpKeySt
.L0803F06C: .4byte 0x02022C7E
.L0803F070:
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0803F0B8
    ldr r0, [r4, #0x30]
    bl Proc_End
    ldrb r0, [r5]
    cmp r0, #0
    bne .L0803F092
    adds r0, r4, #0
    bl func_0803E184
    movs r0, #2
    bl func_0803DD98
    b .L0803F098
.L0803F092:
    movs r0, #1
    bl func_0803DD98
.L0803F098:
    ldr r0, [r4, #0x58]
    adds r0, #4
    lsls r0, r0, #6
    ldr r1, .L0803F0C0 @ =0x02022C7E
    adds r0, r0, r1
    movs r1, #0xc
    movs r2, #2
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #1
    bl EnableBgSync
    adds r0, r4, #0
    bl Proc_Break
.L0803F0B8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F0C0: .4byte 0x02022C7E
    func_end func_0803EFC4

    thumb_func_start func_0803F0C4
func_0803F0C4: @ 0x0803F0C4
    push {r4, lr}
    sub sp, #0x14
    ldr r4, [r0, #0x40]
    movs r0, #1
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    mov r2, sp
    bl func_080A1E8C
    add sp, #0x14
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0803F0C4

    thumb_func_start func_0803F0E4
func_0803F0E4: @ 0x0803F0E4
    lsls r0, r0, #0x10
    asrs r0, r0, #0xa
    ldr r1, .L0803F0F0 @ =0x081D3C0C
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L0803F0F0: .4byte 0x081D3C0C
    func_end func_0803F0E4

    thumb_func_start func_0803F0F4
func_0803F0F4: @ 0x0803F0F4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    mov sl, r0
    mov sb, r1
    movs r0, #0
    str r0, [sp]
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803F196
.L0803F10E:
    movs r1, #0
    mov r8, r1
    mov r3, sb
    adds r3, #1
    str r3, [sp, #8]
.L0803F118:
    mov r5, r8
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
    bl func_0803F0E4
    str r0, [sp, #4]
    movs r7, #0
    mov r6, r8
    ldr r0, .L0803F16C @ =0x00003FFF
    ands r6, r0
    movs r1, #0
    mov ip, r1
.L0803F130:
    movs r4, #0
    mov r3, sb
    ldrb r3, [r3]
    str r3, [sp, #0xc]
    ldr r2, [sp, #4]
    add r2, ip
    adds r0, r7, #0
    movs r5, #3
    ands r0, r5
    lsls r1, r0, #0xe
    orrs r1, r6
    ldr r3, [sp]
    lsls r0, r3, #1
    adds r0, #0x48
    mov r5, sl
    adds r3, r0, r5
.L0803F150:
    ldr r0, [r2]
    ldrb r0, [r0]
    ldr r5, [sp, #0xc]
    cmp r0, r5
    bne .L0803F170
    strh r1, [r3]
    mov r0, sl
    adds r0, #0x39
    strb r4, [r0]
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
    b .L0803F18C
    .align 2, 0
.L0803F16C: .4byte 0x00003FFF
.L0803F170:
    adds r2, #4
    adds r4, #1
    cmp r4, #2
    ble .L0803F150
    movs r1, #0xc
    add ip, r1
    adds r7, #1
    cmp r7, #2
    ble .L0803F130
    movs r3, #1
    add r8, r3
    mov r5, r8
    cmp r5, #0x50
    ble .L0803F118
.L0803F18C:
    ldr r0, [sp, #8]
    mov sb, r0
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0803F10E
.L0803F196:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803F0F4

    thumb_func_start func_0803F1A8
func_0803F1A8: @ 0x0803F1A8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    movs r6, #0
    adds r4, r0, #0
    adds r4, #0x31
    ldr r1, .L0803F284 @ =0x0203DA10
    mov r8, r1
    adds r7, r0, #0
    adds r7, #0x30
.L0803F1C2:
    ldrb r3, [r4]
    lsls r0, r3, #2
    adds r0, r0, r3
    adds r0, r6, r0
    lsls r0, r0, #3
    add r0, r8
    bl ClearText
    ldrb r1, [r4]
    lsls r0, r1, #2
    adds r0, r0, r1
    adds r0, r6, r0
    lsls r0, r0, #3
    add r0, r8
    movs r1, #0
    bl Text_SetColor
    movs r2, #0
    lsls r3, r6, #4
    mov sb, r3
    lsls r0, r6, #1
    mov sl, r0
    adds r1, r6, #1
    str r1, [sp]
.L0803F1F2:
    mov r3, sb
    subs r0, r3, r6
    adds r0, r0, r2
    lsls r0, r0, #1
    ldr r1, .L0803F288 @ =0x081D516A
    adds r0, r0, r1
    movs r3, #0
    ldrsh r0, [r0, r3]
    lsls r0, r0, #6
    ldr r1, .L0803F28C @ =0x081D3C0C
    adds r5, r0, r1
    ldrb r1, [r7]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r5, r0
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803F24C
    ldrb r3, [r4]
    lsls r0, r3, #2
    adds r0, r0, r3
    adds r0, r6, r0
    lsls r0, r0, #3
    add r0, r8
    ldrh r1, [r5, #0x30]
    str r2, [sp, #4]
    bl Text_SetCursor
    ldrb r1, [r4]
    lsls r0, r1, #2
    adds r0, r0, r1
    adds r0, r6, r0
    lsls r0, r0, #3
    add r0, r8
    ldrb r3, [r7]
    lsls r1, r3, #1
    adds r1, r1, r3
    lsls r1, r1, #2
    adds r1, r5, r1
    ldr r1, [r1]
    bl Text_DrawString
    ldr r2, [sp, #4]
.L0803F24C:
    adds r2, #1
    cmp r2, #0xe
    ble .L0803F1F2
    ldrb r1, [r4]
    lsls r0, r1, #2
    adds r0, r0, r1
    adds r0, r6, r0
    lsls r0, r0, #3
    add r0, r8
    mov r1, sl
    adds r1, #9
    lsls r1, r1, #6
    ldr r2, .L0803F290 @ =gBg1Tm
    adds r1, r1, r2
    bl PutText
    ldr r6, [sp]
    cmp r6, #4
    ble .L0803F1C2
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F284: .4byte 0x0203DA10
.L0803F288: .4byte 0x081D516A
.L0803F28C: .4byte 0x081D3C0C
.L0803F290: .4byte gBg1Tm
    func_end func_0803F1A8

    thumb_func_start func_0803F294
func_0803F294: @ 0x0803F294
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r4, #0x3d
    ldr r5, .L0803F2DC @ =0x0203DC18
    adds r0, r5, #0
    bl ClearText
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0803F2C6
    adds r6, r5, #0
    movs r5, #0
.L0803F2AC:
    adds r0, r6, #0
    adds r1, r5, #0
    bl Text_SetCursor
    adds r0, r6, #0
    adds r1, r4, #0
    bl Text_DrawCharacter
    adds r4, r0, #0
    adds r5, #7
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803F2AC
.L0803F2C6:
    ldr r0, .L0803F2DC @ =0x0203DC18
    ldr r1, .L0803F2E0 @ =0x02022DB8
    bl PutText
    movs r0, #1
    bl EnableBgSync
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F2DC: .4byte 0x0203DC18
.L0803F2E0: .4byte 0x02022DB8
    func_end func_0803F294

    thumb_func_start func_0803F2E4
func_0803F2E4: @ 0x0803F2E4
    adds r1, r0, #0
    movs r2, #0
    b .L0803F2EE
.L0803F2EA:
    adds r2, #1
    adds r1, #1
.L0803F2EE:
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0803F2EA
    adds r0, r2, #0
    bx lr
    func_end func_0803F2E4

    thumb_func_start func_0803F2F8
func_0803F2F8: @ 0x0803F2F8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    adds r6, r0, #0
    ldr r1, .L0803F370 @ =0x081D527E
    add r0, sp, #8
    movs r2, #0xa
    bl memcpy
    bl func_0803DBD0
    bl func_08047B34
    ldr r0, .L0803F374 @ =0x081C5BE0
    ldr r1, .L0803F378 @ =0x06014800
    bl Decompress
    ldr r0, .L0803F37C @ =0x081C7F04
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0803F380 @ =0x081C8144
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    movs r0, #0
    movs r1, #0
    bl func_08047BD4
    ldr r0, .L0803F384 @ =0x02023E60
    ldr r1, .L0803F388 @ =0x081C84CC
    movs r2, #0x80
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    ldr r0, .L0803F38C @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    bl func_0803DA14
    lsls r0, r0, #0x18
    asrs r1, r0, #0x18
    cmp r1, #0
    beq .L0803F390
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #9
    b .L0803F39A
    .align 2, 0
.L0803F370: .4byte 0x081D527E
.L0803F374: .4byte 0x081C5BE0
.L0803F378: .4byte 0x06014800
.L0803F37C: .4byte 0x081C7F04
.L0803F380: .4byte 0x081C8144
.L0803F384: .4byte 0x02023E60
.L0803F388: .4byte 0x081C84CC
.L0803F38C: .4byte 0x0203DA60
.L0803F390:
    ldr r0, .L0803F4F0 @ =0x0203D90C
    strb r1, [r0]
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #7
.L0803F39A:
    strb r0, [r1]
    movs r4, #0
    adds r5, r1, #0
    ldrb r0, [r1]
    adds r0, #1
    movs r2, #0x38
    adds r2, r2, r6
    mov r8, r2
    ldr r3, .L0803F4F4 @ =0x0203DC18
    mov ip, r3
    adds r7, r6, #0
    adds r7, #0x30
    movs r2, #0x39
    adds r2, r2, r6
    mov sb, r2
    movs r3, #0x31
    adds r3, r3, r6
    mov sl, r3
    adds r2, r6, #0
    adds r2, #0x32
    str r2, [sp, #0x20]
    cmp r4, r0
    bge .L0803F3DA
    adds r2, #0xb
    movs r3, #0
.L0803F3CC:
    adds r0, r2, r4
    strb r3, [r0]
    adds r4, #1
    ldrb r0, [r5]
    adds r0, #1
    cmp r4, r0
    blt .L0803F3CC
.L0803F3DA:
    movs r4, #0
    ldrb r3, [r1]
    cmp r4, r3
    bge .L0803F3F4
    movs r2, #0
    adds r0, r6, #0
    adds r0, #0x48
.L0803F3E8:
    strh r2, [r0]
    adds r0, #2
    adds r4, #1
    ldrb r3, [r1]
    cmp r4, r3
    blt .L0803F3E8
.L0803F3F4:
    movs r0, #0
    mov r1, r8
    strb r0, [r1]
    mov r0, ip
    movs r1, #8
    bl InitText
    movs r0, #2
    strb r0, [r7]
    movs r4, #0
    movs r0, #6
    strh r0, [r6, #0x34]
    bl func_0803F0E4
    ldrh r1, [r0, #0x30]
    subs r1, #4
    ldrh r2, [r0, #0x32]
    adds r2, #1
    adds r0, r6, #0
    bl func_080487DC
    str r0, [r6, #0x2c]
    mov r2, sb
    strb r4, [r2]
    ldr r5, .L0803F4F8 @ =0x0203DA10
    movs r4, #9
.L0803F428:
    adds r0, r5, #0
    movs r1, #0x1a
    bl InitText
    adds r5, #8
    subs r4, #1
    cmp r4, #0
    bge .L0803F428
    ldr r4, .L0803F4FC @ =0x0203D998
    adds r0, r4, #0
    movs r1, #0xc
    bl InitText
    ldr r0, [r6, #0x2c]
    movs r1, #3
    bl func_08047D80
    subs r4, #0x8c
    ldrb r0, [r4]
    str r0, [sp]
    ldr r0, [r6, #0x2c]
    str r0, [sp, #4]
    add r0, sp, #8
    movs r1, #0xa
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    ldr r1, .L0803F500 @ =0x0203DC20
    movs r0, #0
    strb r0, [r1]
    movs r0, #0
    mov r3, sl
    strb r0, [r3]
    adds r0, r6, #0
    bl func_0803F1A8
    ldr r1, [sp, #0x20]
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803F4DA
    movs r4, #0
    bl GetTacticianName
    adds r2, r0, #0
    ldrb r1, [r2]
    add r3, sp, #0x14
    mov ip, r3
    cmp r1, #0
    beq .L0803F4BC
    adds r7, r6, #0
    adds r7, #0x3d
    mov sb, ip
    mov r5, r8
    adds r3, r6, #0
    adds r3, #0x33
.L0803F498:
    adds r0, r7, r4
    strb r1, [r0]
    mov r0, sb
    adds r1, r0, r4
    ldrb r0, [r2]
    strb r0, [r1]
    adds r2, #1
    adds r4, #1
    ldrb r0, [r5]
    adds r0, #1
    ldrb r1, [r3]
    cmp r0, r1
    bge .L0803F4B6
    mov r1, r8
    strb r0, [r1]
.L0803F4B6:
    ldrb r1, [r2]
    cmp r1, #0
    bne .L0803F498
.L0803F4BC:
    adds r0, r6, #0
    mov r1, ip
    bl func_0803F0F4
    adds r0, r6, #0
    bl func_0803F294
    ldr r1, [r6, #0x2c]
    mov r2, r8
    ldrb r2, [r2]
    lsls r0, r2, #3
    mov r3, r8
    ldrb r3, [r3]
    subs r0, r0, r3
    str r0, [r1, #0x40]
.L0803F4DA:
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F4F0: .4byte 0x0203D90C
.L0803F4F4: .4byte 0x0203DC18
.L0803F4F8: .4byte 0x0203DA10
.L0803F4FC: .4byte 0x0203D998
.L0803F500: .4byte 0x0203DC20
    func_end func_0803F2F8

    thumb_func_start func_0803F504
func_0803F504: @ 0x0803F504
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sl, r0
    mov sb, r1
    movs r0, #0x81
    bl GetUnit
    mov r8, r0
    mov r4, r8
    movs r6, #4
.L0803F51E:
    adds r0, r4, #0
    bl ClearUnit
    adds r4, #0x48
    subs r6, #1
    cmp r6, #0
    bge .L0803F51E
    movs r6, #0
    mov r7, r8
.L0803F530:
    ldr r0, .L0803F580 @ =0x0203E788
    adds r0, r6, r0
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803F55E
    bl GetUnitFromCharId
    adds r5, r0, #0
    ldr r4, [r5, #0xc]
    movs r0, #8
    ands r4, r0
    cmp r4, #0
    bne .L0803F55E
    adds r0, r5, #0
    movs r1, #0
    bl SetUnitStatus
    str r4, [r5, #0xc]
    adds r0, r5, #0
    adds r1, r7, #0
    movs r2, #0x48
    bl func_08014E90
.L0803F55E:
    adds r7, #0x48
    adds r6, #1
    cmp r6, #4
    ble .L0803F530
    mov r0, sb
    mov r1, r8
    mov r2, sl
    bl func_080A1E2C
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F580: .4byte 0x0203E788
    func_end func_0803F504

    thumb_func_start func_0803F584
func_0803F584: @ 0x0803F584
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    lsls r5, r1, #1
    adds r2, #0x36
    adds r2, r2, r5
    ldrh r4, [r2]
    movs r1, #0
    ldrsh r0, [r2, r1]
    lsls r0, r0, #6
    ldr r6, .L0803F5D8 @ =0x081D3C0C
    adds r2, r0, r6
    adds r1, r7, #0
    adds r1, #0x30
    ldrb r3, [r1]
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r3, r0, #2
    adds r0, r2, r3
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0803F5CE
    adds r1, r5, #0
    adds r5, r6, #0
.L0803F5B4:
    adds r0, r2, #0
    adds r0, #0x36
    adds r0, r0, r1
    ldrh r4, [r0]
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #6
    adds r2, r0, r5
    adds r0, r2, r3
    ldr r0, [r0]
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803F5B4
.L0803F5CE:
    strh r4, [r7, #0x34]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F5D8: .4byte 0x081D3C0C
    func_end func_0803F584

    thumb_func_start func_0803F5DC
func_0803F5DC: @ 0x0803F5DC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r7, r1, #0
    adds r6, r5, #0
    adds r6, #0x38
    movs r0, #0x3c
    adds r0, r0, r5
    mov r8, r0
    ldrb r1, [r6]
    ldrb r2, [r0]
    cmp r1, r2
    bhs .L0803F65C
    movs r0, #2
    bl func_0803DD98
    adds r4, r5, #0
    adds r4, #0x30
    ldrb r1, [r4]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r7, r0
    ldr r0, [r0]
    ldrb r1, [r6]
    adds r1, #0x3d
    adds r1, r5, r1
    bl func_0803D948
    ldrb r2, [r6]
    lsls r0, r2, #1
    adds r2, r5, #0
    adds r2, #0x48
    adds r2, r2, r0
    ldr r1, .L0803F644 @ =0x00003FFF
    ldrh r0, [r5, #0x34]
    ands r1, r0
    movs r0, #3
    ldrb r4, [r4]
    ands r0, r4
    lsls r0, r0, #0xe
    orrs r1, r0
    strh r1, [r2]
    ldrb r0, [r6]
    adds r0, #1
    mov r1, r8
    ldrb r1, [r1]
    cmp r0, r1
    bge .L0803F648
    strb r0, [r6]
    b .L0803F64C
    .align 2, 0
.L0803F644: .4byte 0x00003FFF
.L0803F648:
    movs r0, #5
    strh r0, [r5, #0x34]
.L0803F64C:
    adds r0, r5, #0
    bl func_0803F294
    adds r1, r5, #0
    adds r1, #0x39
    movs r0, #0
    strb r0, [r1]
    b .L0803F662
.L0803F65C:
    movs r0, #0
    bl func_0803DD98
.L0803F662:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803F5DC

    thumb_func_start func_0803F66C
func_0803F66C: @ 0x0803F66C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r5, #0
    adds r4, #0x38
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0803F6B8
    movs r0, #2
    bl func_0803DD98
    ldrb r1, [r4]
    lsls r0, r1, #1
    adds r2, r5, #0
    adds r2, #0x48
    adds r0, r2, r0
    ldrh r0, [r0]
    cmp r0, #0
    bne .L0803F694
    subs r0, r1, #1
    strb r0, [r4]
.L0803F694:
    ldrb r1, [r4]
    adds r0, r1, r5
    adds r0, #0x3d
    movs r1, #0
    strb r1, [r0]
    ldrb r4, [r4]
    lsls r0, r4, #1
    adds r0, r2, r0
    movs r2, #0
    movs r1, #0
    strh r1, [r0]
    adds r0, r5, #0
    adds r0, #0x39
    strb r2, [r0]
    adds r0, r5, #0
    bl func_0803F294
    b .L0803F6BE
.L0803F6B8:
    movs r0, #0
    bl func_0803DD98
.L0803F6BE:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0803F66C

    thumb_func_start func_0803F6C4
func_0803F6C4: @ 0x0803F6C4
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r5, #0
    adds r4, #0x3d
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0803F702
    movs r0, #2
    bl func_0803DD98
    bl func_0803DA14
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803F6F4
    ldr r0, .L0803F6F0 @ =0x0203D90C
    ldrb r1, [r0, #3]
    adds r0, r4, #0
    bl func_0803F504
    b .L0803F6FA
    .align 2, 0
.L0803F6F0: .4byte 0x0203D90C
.L0803F6F4:
    adds r0, r4, #0
    bl SetTacticianName
.L0803F6FA:
    adds r0, r5, #0
    bl Proc_Break
    b .L0803F708
.L0803F702:
    movs r0, #0
    bl func_0803DD98
.L0803F708:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0803F6C4

    thumb_func_start func_0803F710
func_0803F710: @ 0x0803F710
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r6, .L0803F790 @ =gpKeySt
    ldr r1, [r6]
    movs r0, #0x40
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0803F72E
    adds r0, r4, #0
    movs r1, #0
    adds r2, r5, #0
    bl func_0803F584
.L0803F72E:
    ldr r1, [r6]
    movs r0, #0x80
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0803F744
    adds r0, r4, #0
    movs r1, #1
    adds r2, r5, #0
    bl func_0803F584
.L0803F744:
    ldr r1, [r6]
    movs r0, #0x20
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0803F75A
    adds r0, r4, #0
    movs r1, #2
    adds r2, r5, #0
    bl func_0803F584
.L0803F75A:
    ldr r1, [r6]
    movs r0, #0x10
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0803F770
    adds r0, r4, #0
    movs r1, #3
    adds r2, r5, #0
    bl func_0803F584
.L0803F770:
    ldr r1, [r6]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803F7B6
    adds r0, r5, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #4
    beq .L0803F7A4
    cmp r0, #4
    bgt .L0803F794
    cmp r0, #0
    beq .L0803F79A
    b .L0803F7B6
    .align 2, 0
.L0803F790: .4byte gpKeySt
.L0803F794:
    cmp r0, #5
    beq .L0803F7AE
    b .L0803F7B6
.L0803F79A:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803F5DC
    b .L0803F7B6
.L0803F7A4:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803F66C
    b .L0803F7B6
.L0803F7AE:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803F6C4
.L0803F7B6:
    ldr r6, .L0803F804 @ =gpKeySt
    ldr r1, [r6]
    movs r0, #0x80
    lsls r0, r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803F7CE
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803F66C
.L0803F7CE:
    ldr r1, [r6]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803F7E4
    movs r0, #3
    bl func_0803DD98
    movs r0, #5
    strh r0, [r4, #0x34]
.L0803F7E4:
    ldr r1, [r6]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803F820
    adds r0, r4, #0
    adds r0, #0x38
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803F808
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803F66C
    b .L0803F820
    .align 2, 0
.L0803F804: .4byte gpKeySt
.L0803F808:
    bl func_0803DA14
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0803F820
    movs r0, #1
    bl func_0803DD98
    adds r0, r4, #0
    movs r1, #3
    bl Proc_Goto
.L0803F820:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0803F710

    thumb_func_start func_0803F828
func_0803F828: @ 0x0803F828
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    add r7, sp, #8
    adds r4, r0, #0
    mov r8, sp
    movs r0, #0x3c
    adds r0, r0, r4
    mov sb, r0
    ldrb r0, [r0]
    adds r0, #4
    lsrs r0, r0, #2
    lsls r0, r0, #2
    mov r1, sp
    subs r1, r1, r0
    mov sp, r1
    add r6, sp, #8
    movs r1, #0x34
    ldrsh r0, [r4, r1]
    bl func_0803F0E4
    adds r5, r0, #0
    ldrh r0, [r4, #0x34]
    strh r0, [r4, #0x36]
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803F710
    ldrh r0, [r4, #0x36]
    ldrh r1, [r4, #0x34]
    cmp r0, r1
    beq .L0803F872
    movs r0, #3
    bl func_0803DD98
.L0803F872:
    movs r1, #0x34
    ldrsh r0, [r4, r1]
    bl func_0803F0E4
    adds r5, r0, #0
    adds r0, r4, #0
    adds r0, #0x3d
    adds r1, r6, #0
    bl func_0803D948
    mov r1, sb
    ldrb r0, [r1]
    subs r0, #1
    adds r0, r6, r0
    movs r1, #0
    strb r1, [r0]
    adds r0, r6, #0
    bl func_0803F2E4
    lsls r1, r0, #3
    subs r3, r1, r0
    ldr r6, [r4, #0x2c]
    ldrh r1, [r5, #0x30]
    subs r1, #4
    ldrh r2, [r5, #0x32]
    adds r2, #1
    adds r0, r5, #0
    adds r0, #0x34
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r4, [r0]
    cmp r4, #1
    bhi .L0803F8BC
    ldrb r0, [r0]
    b .L0803F8BE
.L0803F8BC:
    movs r0, #2
.L0803F8BE:
    str r0, [sp, #4]
    adds r0, r6, #0
    bl func_0804881C
    mov sp, r8
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0803F828

    thumb_func_start func_0803F8D8
func_0803F8D8: @ 0x0803F8D8
    ldr r0, .L0803F900 @ =0x04000006
    ldrh r0, [r0]
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0xa0
    bhi .L0803F924
    cmp r0, #0x27
    bhi .L0803F90C
    ldr r1, .L0803F904 @ =0x04000050
    movs r2, #0x84
    lsls r2, r2, #4
    adds r0, r2, #0
    strh r0, [r1]
    adds r1, #2
    ldr r2, .L0803F908 @ =0x00000F08
    adds r0, r2, #0
    strh r0, [r1]
    b .L0803F924
    .align 2, 0
.L0803F900: .4byte 0x04000006
.L0803F904: .4byte 0x04000050
.L0803F908: .4byte 0x00000F08
.L0803F90C:
    ldr r1, .L0803F928 @ =0x04000050
    ldr r2, .L0803F92C @ =0x00000442
    adds r0, r2, #0
    strh r0, [r1]
    ldr r2, .L0803F930 @ =0x04000052
    ldr r0, .L0803F934 @ =0x030013F8
    ldrb r1, [r0]
    movs r0, #0xf
    subs r0, r0, r1
    lsls r0, r0, #8
    adds r1, r1, r0
    strh r1, [r2]
.L0803F924:
    bx lr
    .align 2, 0
.L0803F928: .4byte 0x04000050
.L0803F92C: .4byte 0x00000442
.L0803F930: .4byte 0x04000052
.L0803F934: .4byte 0x030013F8
    func_end func_0803F8D8

    thumb_func_start func_0803F938
func_0803F938: @ 0x0803F938
    push {lr}
    adds r0, #0x3a
    movs r1, #0
    strb r1, [r0]
    ldr r0, .L0803F94C @ =func_0803F8D8
    bl SetOnHBlankA
    pop {r0}
    bx r0
    .align 2, 0
.L0803F94C: .4byte func_0803F8D8
    func_end func_0803F938

    thumb_func_start func_0803F950
func_0803F950: @ 0x0803F950
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r4, .L0803F98C @ =0x030013F8
    adds r5, r6, #0
    adds r5, #0x3a
    ldrb r3, [r5]
    movs r0, #8
    str r0, [sp]
    movs r0, #0
    movs r1, #0xf
    movs r2, #0
    bl Interpolate
    strb r0, [r4]
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #8
    bls .L0803F982
    adds r0, r6, #0
    bl Proc_Break
.L0803F982:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F98C: .4byte 0x030013F8
    func_end func_0803F950

    thumb_func_start func_0803F990
func_0803F990: @ 0x0803F990
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r2, r4, #0
    adds r2, #0x31
    ldrb r0, [r2]
    adds r0, #1
    movs r5, #0
    movs r1, #1
    ands r0, r1
    strb r0, [r2]
    adds r0, r4, #0
    bl func_0803F1A8
    movs r0, #2
    bl EnableBgSync
    adds r4, #0x3a
    strb r5, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0803F990

    thumb_func_start func_0803F9BC
func_0803F9BC: @ 0x0803F9BC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r4, .L0803F9FC @ =0x030013F8
    adds r5, r6, #0
    adds r5, #0x3a
    ldrb r3, [r5]
    movs r0, #8
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0xf
    bl Interpolate
    strb r0, [r4]
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #8
    bls .L0803F9F4
    movs r0, #0
    bl SetOnHBlankA
    adds r0, r6, #0
    bl Proc_Break
.L0803F9F4:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803F9FC: .4byte 0x030013F8
    func_end func_0803F9BC

    thumb_func_start func_0803FA00
func_0803FA00: @ 0x0803FA00
    push {r4, lr}
    adds r0, #0x3b
    movs r1, #1
    strb r1, [r0]
    bl func_08049220
    ldr r4, .L0803FA30 @ =0x0203D998
    adds r0, r4, #0
    bl ClearText
    ldr r1, .L0803FA34 @ =0x081D5288
    adds r0, r4, #0
    bl Text_DrawString
    ldr r1, .L0803FA38 @ =0x02022F76
    adds r0, r4, #0
    bl PutText
    movs r0, #1
    bl EnableBgSync
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803FA30: .4byte 0x0203D998
.L0803FA34: .4byte 0x081D5288
.L0803FA38: .4byte 0x02022F76
    func_end func_0803FA00

    thumb_func_start func_0803FA3C
func_0803FA3C: @ 0x0803FA3C
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0x40
    movs r1, #0x58
    bl func_0804925C
    ldr r0, .L0803FACC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x20
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803FA6A
    adds r1, r5, #0
    adds r1, #0x3b
    ldrb r0, [r1]
    cmp r0, #1
    bne .L0803FA6A
    movs r0, #0
    strb r0, [r1]
    movs r0, #3
    bl func_0803DD98
.L0803FA6A:
    ldr r0, .L0803FACC @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #8]
    ands r0, r1
    adds r4, r5, #0
    adds r4, #0x3b
    cmp r0, #0
    beq .L0803FA8C
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803FA8C
    movs r0, #1
    strb r0, [r4]
    movs r0, #3
    bl func_0803DD98
.L0803FA8C:
    ldrb r1, [r4]
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #0x50
    movs r1, #0x60
    bl PutUiHand
    ldr r0, .L0803FACC @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L0803FAD4
    movs r0, #1
    bl func_0803DD98
    ldr r0, .L0803FAD0 @ =0x02022F76
    movs r1, #0xc
    movs r2, #2
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #1
    bl EnableBgSync
    adds r0, r5, #0
    bl Proc_Break
    b .L0803FB1A
    .align 2, 0
.L0803FACC: .4byte gpKeySt
.L0803FAD0: .4byte 0x02022F76
.L0803FAD4:
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0803FB1A
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803FAFC
    movs r0, #2
    bl func_0803DD98
    ldr r1, .L0803FAF8 @ =0x0203DC20
    movs r0, #1
    strb r0, [r1]
    adds r0, r5, #0
    movs r1, #2
    bl Proc_Goto
    b .L0803FB02
    .align 2, 0
.L0803FAF8: .4byte 0x0203DC20
.L0803FAFC:
    movs r0, #1
    bl func_0803DD98
.L0803FB02:
    ldr r0, .L0803FB20 @ =0x02022F76
    movs r1, #0xc
    movs r2, #2
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #1
    bl EnableBgSync
    adds r0, r5, #0
    bl Proc_Break
.L0803FB1A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803FB20: .4byte 0x02022F76
    func_end func_0803FA3C

    thumb_func_start func_0803FB24
func_0803FB24: @ 0x0803FB24
    push {lr}
    bl func_0803DA14
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803FB34
    bl func_08047CA8
.L0803FB34:
    pop {r0}
    bx r0
    func_end func_0803FB24

    thumb_func_start func_0803FB38
func_0803FB38: @ 0x0803FB38
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x40
    ldrh r0, [r0]
    adds r1, r4, #0
    adds r1, #0x42
    ldrb r2, [r1]
    lsls r1, r2, #3
    movs r3, #0xc0
    lsls r3, r3, #1
    adds r1, r1, r3
    adds r2, #0xa
    bl UnpackFaceChibiSprGraphics
    movs r0, #0
    str r0, [r4, #0x3c]
    subs r0, #0x26
    str r0, [r4, #0x34]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0803FB38

    thumb_func_start func_0803FB64
func_0803FB64: @ 0x0803FB64
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r6, r0, #0
    ldr r4, [r6, #0x2c]
    ldr r0, [r4, #0x64]
    cmp r0, #0
    bne .L0803FB88
    ldr r0, [r6, #0x3c]
    cmp r0, #0x20
    ble .L0803FB82
    adds r0, r6, #0
    bl Proc_Break
.L0803FB82:
    ldr r0, [r4, #0x64]
    cmp r0, #0
    beq .L0803FB8E
.L0803FB88:
    ldr r0, [r6, #0x34]
    adds r0, #1
    str r0, [r6, #0x34]
.L0803FB8E:
    ldr r0, [r6, #0x38]
    subs r0, #1
    str r0, [r6, #0x38]
    cmp r0, #0
    bge .L0803FB9C
    movs r0, #0
    str r0, [r6, #0x38]
.L0803FB9C:
    ldr r4, [r6, #0x38]
    cmp r4, #0
    beq .L0803FBA4
    b .L0803FCB4
.L0803FBA4:
    ldr r3, [r6, #0x3c]
    cmp r3, #0x20
    bgt .L0803FBBC
    movs r1, #0x50
    rsbs r1, r1, #0
    movs r0, #0x20
    str r0, [sp]
    movs r0, #4
    movs r2, #0
    bl Interpolate
    str r0, [r6, #0x30]
.L0803FBBC:
    ldr r0, [r6, #0x3c]
    adds r0, #1
    str r0, [r6, #0x3c]
    ldr r1, [r6, #0x30]
    ldr r2, [r6, #0x34]
    subs r2, #0x10
    ldr r3, .L0803FC68 @ =0x08B98EE4
    movs r0, #0x43
    adds r0, r0, r6
    mov r8, r0
    ldrb r5, [r0]
    lsls r0, r5, #2
    adds r0, r0, r3
    ldr r3, [r0]
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r6, #0x30]
    adds r1, #0x48
    ldr r2, [r6, #0x34]
    subs r2, #6
    ldr r3, .L0803FC6C @ =0x08B98ED4
    adds r5, r6, #0
    adds r5, #0x42
    ldrb r7, [r5]
    lsls r0, r7, #2
    adds r0, r0, r3
    ldr r3, [r0]
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r6, #0x30]
    adds r1, #0x60
    ldr r2, [r6, #0x34]
    adds r2, #8
    ldr r3, .L0803FC70 @ =0x081D52DE
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r6, #0x30]
    adds r1, #0x40
    ldr r2, [r6, #0x34]
    adds r2, #8
    ldr r3, .L0803FC74 @ =0x081D5314
    mov r4, r8
    ldrb r4, [r4]
    lsls r0, r4, #2
    adds r0, #0x50
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r6, #0x30]
    rsbs r1, r1, #0
    adds r1, #0x70
    ldr r2, [r6, #0x34]
    subs r2, #8
    ldr r3, .L0803FC78 @ =0x081D52E6
    movs r0, #0xf
    ldrb r7, [r5]
    ands r0, r7
    lsls r0, r0, #0xc
    movs r4, #0x80
    lsls r4, r4, #3
    adds r0, r0, r4
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    ldr r0, [r6, #0x30]
    rsbs r0, r0, #0
    adds r1, r0, #0
    adds r1, #0x7c
    ldr r2, [r6, #0x34]
    ldr r3, .L0803FC7C @ =0x081D5300
    ldrb r0, [r5]
    cmp r0, #3
    beq .L0803FC80
    lsls r0, r0, #3
    ldrb r4, [r5]
    adds r0, r0, r4
    b .L0803FC82
    .align 2, 0
.L0803FC68: .4byte 0x08B98EE4
.L0803FC6C: .4byte 0x08B98ED4
.L0803FC70: .4byte 0x081D52DE
.L0803FC74: .4byte 0x081D5314
.L0803FC78: .4byte 0x081D52E6
.L0803FC7C: .4byte 0x081D5300
.L0803FC80:
    movs r0, #0x40
.L0803FC82:
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r6, #0x30]
    rsbs r1, r1, #0
    adds r1, #0xd0
    ldr r2, [r6, #0x34]
    subs r2, #8
    ldr r3, .L0803FCC0 @ =0x081D531C
    ldrb r4, [r5]
    adds r0, r4, #0
    adds r0, #0xa
    movs r5, #0xf
    ands r0, r5
    lsls r0, r0, #0xc
    lsls r4, r4, #3
    movs r5, #0xc0
    lsls r5, r5, #1
    adds r4, r4, r5
    adds r0, r0, r4
    str r0, [sp]
    movs r0, #5
    bl PutSprite
.L0803FCB4:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803FCC0: .4byte 0x081D531C
    func_end func_0803FB64

    thumb_func_start func_0803FCC4
func_0803FCC4: @ 0x0803FCC4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, [r5, #0x30]
    ldr r2, [r5, #0x34]
    subs r2, #0x10
    ldr r3, .L0803FD74 @ =0x08B98EE4
    movs r0, #0x43
    adds r0, r0, r5
    mov r8, r0
    ldrb r4, [r0]
    lsls r0, r4, #2
    adds r0, r0, r3
    ldr r3, [r0]
    movs r4, #0
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r5, #0x30]
    adds r1, #0x48
    ldr r2, [r5, #0x34]
    subs r2, #6
    ldr r3, .L0803FD78 @ =0x08B98ED4
    adds r6, r5, #0
    adds r6, #0x42
    ldrb r7, [r6]
    lsls r0, r7, #2
    adds r0, r0, r3
    ldr r3, [r0]
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r5, #0x30]
    adds r1, #0x60
    ldr r2, [r5, #0x34]
    adds r2, #8
    ldr r3, .L0803FD7C @ =0x081D52DE
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r5, #0x30]
    adds r1, #0x40
    ldr r2, [r5, #0x34]
    adds r2, #8
    ldr r3, .L0803FD80 @ =0x081D5314
    mov r4, r8
    ldrb r4, [r4]
    lsls r0, r4, #2
    adds r0, #0x50
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r5, #0x30]
    rsbs r1, r1, #0
    adds r1, #0x70
    ldr r2, [r5, #0x34]
    subs r2, #8
    ldr r3, .L0803FD84 @ =0x081D52E6
    movs r0, #0xf
    ldrb r7, [r6]
    ands r0, r7
    lsls r0, r0, #0xc
    movs r4, #0x80
    lsls r4, r4, #3
    adds r0, r0, r4
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    ldr r0, [r5, #0x30]
    rsbs r0, r0, #0
    adds r1, r0, #0
    adds r1, #0x7c
    ldr r2, [r5, #0x34]
    ldr r3, .L0803FD88 @ =0x081D5300
    ldrb r0, [r6]
    cmp r0, #3
    beq .L0803FD8C
    lsls r0, r0, #3
    ldrb r6, [r6]
    adds r0, r0, r6
    b .L0803FD8E
    .align 2, 0
.L0803FD74: .4byte 0x08B98EE4
.L0803FD78: .4byte 0x08B98ED4
.L0803FD7C: .4byte 0x081D52DE
.L0803FD80: .4byte 0x081D5314
.L0803FD84: .4byte 0x081D52E6
.L0803FD88: .4byte 0x081D5300
.L0803FD8C:
    movs r0, #0x40
.L0803FD8E:
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r5, #0x30]
    rsbs r1, r1, #0
    adds r1, #0xd0
    ldr r2, [r5, #0x34]
    subs r2, #8
    ldr r3, .L0803FDD0 @ =0x081D531C
    adds r0, r5, #0
    adds r0, #0x42
    ldrb r4, [r0]
    adds r0, r4, #0
    adds r0, #0xa
    movs r5, #0xf
    ands r0, r5
    lsls r0, r0, #0xc
    lsls r4, r4, #3
    movs r5, #0xc0
    lsls r5, r5, #1
    adds r4, r4, r5
    adds r0, r0, r4
    str r0, [sp]
    movs r0, #5
    bl PutSprite
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803FDD0: .4byte 0x081D531C
    func_end func_0803FCC4

    thumb_func_start func_0803FDD4
func_0803FDD4: @ 0x0803FDD4
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    mov r8, r0
    mov sb, r1
    adds r4, r2, #0
    adds r6, r3, #0
    ldr r5, [sp, #0x18]
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r6, r6, #0x18
    lsrs r6, r6, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    ldr r0, .L0803FE20 @ =0x08B98EF4
    mov r1, r8
    bl Proc_Start
    adds r1, r0, #0
    mov r0, r8
    str r0, [r1, #0x2c]
    mov r0, sb
    str r0, [r1, #0x38]
    adds r0, r1, #0
    adds r0, #0x40
    strh r4, [r0]
    adds r0, #3
    strb r5, [r0]
    subs r0, #1
    strb r6, [r0]
    adds r0, r1, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0803FE20: .4byte 0x08B98EF4
    func_end func_0803FDD4

    thumb_func_start func_0803FE24
func_0803FE24: @ 0x0803FE24
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    adds r0, #0x40
    ldrb r5, [r0]
    ldr r6, .L0803FE64 @ =gBg2Tm
    adds r3, r2, #0
    adds r3, #0x42
    adds r4, r2, #0
    adds r4, #0x41
    ldrb r1, [r4]
    subs r1, #1
    lsls r0, r1, #3
    adds r0, r2, r0
    adds r0, #0x44
    ldrb r3, [r3]
    ldrb r0, [r0]
    cmp r3, r0
    bne .L0803FE74
    ldr r2, .L0803FE68 @ =0x081D532A
    lsls r0, r1, #1
    lsls r1, r5, #3
    adds r0, r0, r1
    adds r0, r0, r2
    movs r1, #0
    ldrsh r0, [r0, r1]
    lsls r0, r0, #6
    adds r0, r0, r6
    ldr r1, .L0803FE6C @ =0x081C81C4
    ldr r2, .L0803FE70 @ =0x00002060
    bl TmApplyTsa_thm
    b .L0803FE9E
    .align 2, 0
.L0803FE64: .4byte gBg2Tm
.L0803FE68: .4byte 0x081D532A
.L0803FE6C: .4byte 0x081C81C4
.L0803FE70: .4byte 0x00002060
.L0803FE74:
    movs r2, #0
    ldr r7, .L0803FEA4 @ =0x081D532A
    adds r3, r4, #0
    lsls r1, r5, #3
    ldr r5, .L0803FEA8 @ =0x00001034
    adds r4, r5, #0
.L0803FE80:
    ldrb r0, [r3]
    subs r0, #1
    lsls r0, r0, #1
    adds r0, r0, r1
    adds r0, r0, r7
    movs r5, #0
    ldrsh r0, [r0, r5]
    lsls r0, r0, #5
    adds r0, r0, r2
    lsls r0, r0, #1
    adds r0, r0, r6
    strh r4, [r0]
    adds r2, #1
    cmp r2, #0x5f
    ble .L0803FE80
.L0803FE9E:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803FEA4: .4byte 0x081D532A
.L0803FEA8: .4byte 0x00001034
    func_end func_0803FE24

    thumb_func_start func_0803FEAC
func_0803FEAC: @ 0x0803FEAC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    str r0, [sp]
    adds r0, #0x40
    ldrb r0, [r0]
    mov sb, r0
    ldr r0, .L0803FF00 @ =0x02000C60
    bl SetTextFont
    movs r5, #0
    cmp r5, sb
    bge .L0803FF3A
    mov sl, r5
    movs r0, #0x98
    mov r8, r0
    movs r7, #0
    movs r6, #0
.L0803FED6:
    ldr r0, .L0803FF04 @ =0x0203D9AD
    adds r4, r6, r0
    adds r0, r4, #0
    bl GetStringTextLen
    adds r1, r0, #0
    movs r0, #0x48
    subs r0, r0, r1
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r1, r0, #1
    cmp r5, #2
    bgt .L0803FF0C
    adds r1, r7, r1
    ldr r0, .L0803FF08 @ =0x0203DA10
    movs r2, #0
    adds r3, r4, #0
    bl Text_InsertDrawString
    b .L0803FF16
    .align 2, 0
.L0803FF00: .4byte 0x02000C60
.L0803FF04: .4byte 0x0203D9AD
.L0803FF08: .4byte 0x0203DA10
.L0803FF0C:
    ldr r0, .L0803FF4C @ =0x0203DA18
    movs r2, #0
    adds r3, r4, #0
    bl Text_InsertDrawString
.L0803FF16:
    ldr r0, [sp]
    adds r0, #0x48
    add r0, sl
    ldr r3, [r0]
    ldr r0, .L0803FF4C @ =0x0203DA18
    mov r1, r8
    movs r2, #2
    bl func_0803D964
    movs r0, #8
    add sl, r0
    movs r0, #0x20
    add r8, r0
    adds r7, #0x48
    adds r6, #0x13
    adds r5, #1
    cmp r5, sb
    blt .L0803FED6
.L0803FF3A:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803FF4C: .4byte 0x0203DA18
    func_end func_0803FEAC

    thumb_func_start func_0803FF50
func_0803FF50: @ 0x0803FF50
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0803FF70 @ =0x08B98F74
    adds r1, r4, #0
    bl Proc_Start
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x42
    adds r4, #0x44
    ldrb r0, [r0]
    ldrb r4, [r4]
    cmp r0, r4
    bne .L0803FF74
    movs r0, #1
    b .L0803FF76
    .align 2, 0
.L0803FF70: .4byte 0x08B98F74
.L0803FF74:
    movs r0, #0
.L0803FF76:
    str r0, [r1, #0x58]
    adds r0, r1, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803FF50

    thumb_func_start func_0803FF80
func_0803FF80: @ 0x0803FF80
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    bl func_0803DBD0
    bl func_08047B34
    ldr r0, .L080400E4 @ =0x081C5BE0
    ldr r1, .L080400E8 @ =0x06014800
    bl Decompress
    ldr r0, .L080400EC @ =0x081C6DEC
    ldr r1, .L080400F0 @ =0x06016000
    bl Decompress
    ldr r0, .L080400F4 @ =0x081C7018
    ldr r1, .L080400F8 @ =0x06016800
    bl Decompress
    ldr r0, .L080400FC @ =0x081C7F04
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x80
    bl ApplyPaletteExt
    ldr r0, .L08040100 @ =0x081C80A4
    movs r1, #0xb8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08040104 @ =0x081C7794
    ldr r1, .L08040108 @ =0x06000C00
    bl Decompress
    ldr r0, .L0804010C @ =0x081C80E4
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r4, .L08040110 @ =0x081C9F68
    movs r0, #3
    bl GetBgChrOffset
    adds r1, r0, #0
    movs r0, #0xc0
    lsls r0, r0, #0x13
    adds r1, r1, r0
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08040114 @ =0x081CB5BC
    movs r1, #0xa0
    lsls r1, r1, #1
    movs r2, #0x80
    bl ApplyPaletteExt
    ldr r0, .L08040118 @ =gBg3Tm
    ldr r1, .L0804011C @ =0x081CB63C
    movs r2, #0
    bl TmApplyTsa_thm
    ldr r0, .L08040120 @ =0x02000C60
    ldr r1, .L08040124 @ =0x06012000
    movs r2, #0xe
    bl InitSpriteTextFont
    ldr r0, .L08040128 @ =0x08194674
    movs r1, #0xf0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    movs r0, #0
    bl SetTextFontGlyphs
    bl ResetTextFont
    ldr r4, .L0804012C @ =0x0203DA10
    movs r5, #1
.L08040020:
    adds r0, r4, #0
    bl InitSpriteText
    adds r0, r4, #0
    movs r1, #0
    bl SpriteText_DrawBackgroundExt
    adds r4, #8
    subs r5, #1
    cmp r5, #0
    bge .L08040020
    ldr r0, .L08040130 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r2, [r0, #7]
    adds r1, r6, #0
    adds r1, #0x40
    movs r3, #0
    strb r2, [r1]
    ldrb r1, [r0, #7]
    adds r2, r6, #0
    adds r2, #0x41
    strb r1, [r2]
    ldrb r0, [r0, #6]
    adds r1, r6, #0
    adds r1, #0x42
    strb r0, [r1]
    mov r0, sp
    movs r5, #0
    strh r3, [r0]
    adds r4, r6, #0
    adds r4, #0x44
    ldr r2, .L08040134 @ =0x01000010
    adds r1, r4, #0
    bl CpuSet
    adds r0, r4, #0
    bl func_080440E8
    adds r0, r6, #0
    bl func_0803FEAC
    movs r0, #0xb0
    str r0, [r6, #0x64]
    movs r0, #2
    movs r1, #0
    movs r2, #0xb0
    bl SetBgOffset
    ldr r3, .L08040138 @ =gDispIo
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
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #8
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r5, [r0]
    ldr r0, .L0804013C @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #4
    orrs r0, r1
    ldr r1, .L08040140 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    adds r0, r6, #0
    bl func_0803FF50
    movs r0, #8
    bl EnableBgSync
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080400E4: .4byte 0x081C5BE0
.L080400E8: .4byte 0x06014800
.L080400EC: .4byte 0x081C6DEC
.L080400F0: .4byte 0x06016000
.L080400F4: .4byte 0x081C7018
.L080400F8: .4byte 0x06016800
.L080400FC: .4byte 0x081C7F04
.L08040100: .4byte 0x081C80A4
.L08040104: .4byte 0x081C7794
.L08040108: .4byte 0x06000C00
.L0804010C: .4byte 0x081C80E4
.L08040110: .4byte 0x081C9F68
.L08040114: .4byte 0x081CB5BC
.L08040118: .4byte gBg3Tm
.L0804011C: .4byte 0x081CB63C
.L08040120: .4byte 0x02000C60
.L08040124: .4byte 0x06012000
.L08040128: .4byte 0x08194674
.L0804012C: .4byte 0x0203DA10
.L08040130: .4byte 0x08B98AEC
.L08040134: .4byte 0x01000010
.L08040138: .4byte gDispIo
.L0804013C: .4byte 0x0000FFE0
.L08040140: .4byte 0x0000E0FF
    func_end func_0803FF80

    thumb_func_start func_08040144
func_08040144: @ 0x08040144
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r0, #0x40
    ldrb r6, [r0]
    ldr r2, [r4, #0x64]
    subs r2, #1
    str r2, [r4, #0x64]
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #2
    movs r1, #0
    bl SetBgOffset
    bl func_080490D4
    adds r5, r4, #0
    adds r5, #0x41
    ldrb r0, [r5]
    cmp r0, #0
    beq .L080401CE
    ldr r2, [r4, #0x64]
    asrs r2, r2, #3
    ldr r3, .L080401E4 @ =0x081D532A
    ldrb r0, [r5]
    subs r0, #1
    lsls r0, r0, #1
    lsls r1, r6, #3
    adds r0, r0, r1
    adds r0, r0, r3
    movs r1, #0
    ldrsh r0, [r0, r1]
    adds r0, #4
    cmp r2, r0
    bne .L080401CE
    adds r0, r4, #0
    bl func_0803FE24
    movs r0, #4
    bl EnableBgSync
    ldr r2, .L080401E8 @ =0x0203DC9C
    ldrb r1, [r5]
    subs r1, #1
    lsls r0, r1, #3
    adds r0, r4, r0
    adds r0, #0x44
    ldrb r3, [r0]
    lsls r0, r3, #1
    adds r2, #0x24
    adds r0, r0, r2
    ldrh r2, [r0]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    str r1, [sp]
    adds r0, r4, #0
    movs r1, #0x28
    bl func_0803FDD4
    ldrb r2, [r5]
    subs r2, #1
    lsls r2, r2, #2
    adds r1, r4, #0
    adds r1, #0x2c
    adds r1, r1, r2
    str r0, [r1]
    ldrb r0, [r5]
    subs r0, #1
    strb r0, [r5]
.L080401CE:
    ldr r0, [r4, #0x64]
    cmp r0, #0
    bne .L080401DA
    adds r0, r4, #0
    bl Proc_Break
.L080401DA:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080401E4: .4byte 0x081D532A
.L080401E8: .4byte 0x0203DC9C
    func_end func_08040144

    thumb_func_start func_080401EC
func_080401EC: @ 0x080401EC
    push {r4, lr}
    adds r4, r0, #0
    bl func_080490D4
    ldr r0, .L08040228 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08040222
    ldr r2, .L0804022C @ =0x0869D668
    ldr r1, .L08040230 @ =0x0869D6E0
    ldr r0, .L08040234 @ =0x0000040C
    adds r1, r1, r0
    ldrh r3, [r1]
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r0, [r0]
    movs r1, #1
    bl m4aMPlayFadeOut
    adds r0, r4, #0
    bl Proc_Break
.L08040222:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08040228: .4byte gpKeySt
.L0804022C: .4byte 0x0869D668
.L08040230: .4byte 0x0869D6E0
.L08040234: .4byte 0x0000040C
    func_end func_080401EC

    thumb_func_start func_08040238
func_08040238: @ 0x08040238
    push {lr}
    ldr r0, [r0, #0x58]
    cmp r0, #0
    beq .L0804024C
    movs r0, #0x2d
    movs r1, #0
    movs r2, #0
    bl StartBgmExt
    b .L08040256
.L0804024C:
    movs r0, #0x2e
    movs r1, #0
    movs r2, #0
    bl StartBgmExt
.L08040256:
    ldr r0, .L0804026C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08040268
    movs r0, #0x81
    bl m4aSongNumStart
.L08040268:
    pop {r0}
    bx r0
    .align 2, 0
.L0804026C: .4byte gPlaySt
    func_end func_08040238

    thumb_func_start func_08040270
func_08040270: @ 0x08040270
    push {lr}
    movs r0, #0x2e
    movs r1, #0
    movs r2, #0
    bl StartBgmExt
    pop {r0}
    bx r0
    func_end func_08040270

    thumb_func_start func_08040280
func_08040280: @ 0x08040280
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    mov sb, r1
    mov sl, r2
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp]
    adds r1, r3, #0
    movs r2, #0
    ldr r4, .L080402B8 @ =0x0203DB68
.L0804029C:
    lsls r0, r2, #4
    adds r0, r0, r4
    ldr r0, [r0]
    lsrs r0, r0, #5
    cmp r0, r1
    bhs .L080402BC
    adds r7, r2, #0
    movs r2, #9
    lsls r3, r3, #5
    str r3, [sp, #4]
    cmp r2, r7
    ble .L0804032E
    b .L080402C8
    .align 2, 0
.L080402B8: .4byte 0x0203DB68
.L080402BC:
    adds r2, #1
    cmp r2, #9
    ble .L0804029C
    movs r0, #1
    rsbs r0, r0, #0
    b .L08040392
.L080402C8:
    ldr r6, .L080403A4 @ =0x0203DB68
    lsls r1, r2, #4
    adds r4, r1, r6
    subs r2, #1
    mov r8, r2
    lsls r5, r2, #4
    adds r5, r5, r6
    ldrb r0, [r5]
    lsls r2, r0, #0x1e
    lsrs r2, r2, #0x1e
    movs r0, #4
    rsbs r0, r0, #0
    ldrb r3, [r4]
    ands r0, r3
    orrs r0, r2
    strb r0, [r4]
    ldr r3, [r5]
    lsrs r3, r3, #5
    lsls r3, r3, #5
    ldr r0, [r4]
    movs r2, #0x1f
    ands r0, r2
    orrs r0, r3
    str r0, [r4]
    movs r2, #0xc
    ldrb r0, [r5]
    ands r2, r0
    movs r0, #0xd
    rsbs r0, r0, #0
    ldrb r3, [r4]
    ands r0, r3
    orrs r0, r2
    strb r0, [r4]
    movs r3, #0x10
    ldrb r5, [r5]
    ands r3, r5
    movs r2, #0x11
    rsbs r2, r2, #0
    ands r0, r2
    orrs r0, r3
    strb r0, [r4]
    adds r0, r6, #0
    subs r0, #0xc
    adds r0, r1, r0
    adds r6, #4
    adds r1, r1, r6
    bl func_0803D948
    mov r2, r8
    cmp r2, r7
    bgt .L080402C8
.L0804032E:
    ldr r5, .L080403A4 @ =0x0203DB68
    lsls r1, r7, #4
    adds r4, r1, r5
    movs r3, #3
    ldr r2, [sp]
    ands r2, r3
    movs r0, #4
    rsbs r0, r0, #0
    ldrb r6, [r4]
    ands r0, r6
    orrs r0, r2
    strb r0, [r4]
    ldr r0, [r4]
    movs r2, #0x1f
    ands r0, r2
    ldr r2, [sp, #4]
    orrs r0, r2
    str r0, [r4]
    mov r6, sb
    ands r6, r3
    lsls r2, r6, #2
    movs r0, #0xd
    rsbs r0, r0, #0
    ldrb r3, [r4]
    ands r0, r3
    orrs r0, r2
    movs r2, #1
    mov r6, sl
    ands r6, r2
    lsls r3, r6, #4
    movs r2, #0x11
    rsbs r2, r2, #0
    ands r0, r2
    orrs r0, r3
    strb r0, [r4]
    ldr r0, .L080403A8 @ =0x08B98AEC
    ldr r0, [r0]
    movs r2, #6
    ldrsb r2, [r0, r2]
    lsls r0, r2, #2
    adds r0, r0, r2
    lsls r0, r0, #2
    subs r0, r0, r2
    ldr r2, .L080403AC @ =0x0203D9AD
    adds r0, r0, r2
    adds r5, #4
    adds r1, r1, r5
    bl func_0803D948
    adds r0, r7, #0
.L08040392:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080403A4: .4byte 0x0203DB68
.L080403A8: .4byte 0x08B98AEC
.L080403AC: .4byte 0x0203D9AD
    func_end func_08040280

    thumb_func_start func_080403B0
func_080403B0: @ 0x080403B0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    ldr r0, .L08040420 @ =0x0203D90C
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r0, r2
    ldrb r1, [r1]
    lsls r5, r1, #0x1e
    lsrs r5, r5, #0x1f
    adds r0, #0xa0
    ldrb r0, [r0]
    subs r0, #1
    mov sb, r0
    bl func_0804528C
    adds r4, r0, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r1, .L08040424 @ =0x0203DC9C
    ldr r0, .L08040428 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    adds r1, #0x14
    adds r0, r0, r1
    ldr r0, [r0]
    mov r8, r0
    ldr r6, .L0804042C @ =0x0203DB68
    adds r0, r6, #0
    bl func_080A1F2C
    adds r0, r4, #0
    mov r1, sb
    adds r2, r5, #0
    mov r3, r8
    bl func_08040280
    str r0, [r7, #0x58]
    adds r0, r6, #0
    bl func_080A1EF0
    ldr r1, [r7, #0x58]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08040430
    adds r0, r1, #0
    adds r1, r7, #0
    bl func_08041FBC
    b .L08040436
    .align 2, 0
.L08040420: .4byte 0x0203D90C
.L08040424: .4byte 0x0203DC9C
.L08040428: .4byte 0x08B98AEC
.L0804042C: .4byte 0x0203DB68
.L08040430:
    movs r0, #1
    bl FadeBgmOut
.L08040436:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080403B0

    thumb_func_start func_08040444
func_08040444: @ 0x08040444
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    ldr r1, .L080404CC @ =0x081D5352
    mov r0, sp
    movs r2, #3
    bl memcpy
    bl InitUnits
    movs r6, #0
    ldr r1, .L080404D0 @ =0x0203D90C
    ldrb r0, [r1, #5]
    adds r0, #2
    cmp r6, r0
    bge .L08040520
    mov sb, r1
.L0804046C:
    lsls r4, r6, #6
    adds r4, #1
    adds r0, r4, #0
    bl GetUnit
    adds r5, r0, #0
    mov r0, sb
    adds r0, #6
    adds r0, r6, r0
    ldrb r0, [r0]
    lsls r2, r6, #2
    adds r2, r2, r6
    lsls r2, r2, #2
    subs r2, r2, r6
    ldr r1, .L080404D4 @ =0x0203D9AD
    adds r2, r2, r1
    adds r1, r5, #0
    bl func_080A1E8C
    movs r7, #0
    adds r2, r6, #1
    mov sl, r2
    lsls r0, r6, #1
    ldr r1, .L080404D8 @ =0x0203DCC0
    adds r0, r0, r1
    mov r8, r0
.L080404A0:
    adds r0, r4, #0
    bl GetUnit
    adds r5, r0, #0
    movs r2, #0
    strb r2, [r5, #9]
    movs r1, #0
    bl SetUnitStatus
    movs r0, #0
    strb r0, [r5, #0x1b]
    movs r0, #4
    ldr r1, .L080404DC @ =0x0203DA0C
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L080404E0
    adds r0, r5, #0
    bl func_0803DD40
    b .L080404E6
    .align 2, 0
.L080404CC: .4byte 0x081D5352
.L080404D0: .4byte 0x0203D90C
.L080404D4: .4byte 0x0203D9AD
.L080404D8: .4byte 0x0203DCC0
.L080404DC: .4byte 0x0203DA0C
.L080404E0:
    adds r0, r5, #0
    bl func_08048E0C
.L080404E6:
    cmp r7, #0
    bne .L080404F4
    adds r0, r5, #0
    bl GetUnitMiniPortraitId
    mov r2, r8
    strh r0, [r2]
.L080404F4:
    strb r4, [r5, #0xb]
    cmp r6, #0
    beq .L0804050C
    movs r0, #1
    ldr r1, .L08040558 @ =0x0203DA0C
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0804050C
    movs r0, #0x80
    lsls r0, r0, #2
    str r0, [r5, #0xc]
.L0804050C:
    adds r4, #1
    adds r7, #1
    cmp r7, #4
    ble .L080404A0
    mov r6, sl
    mov r2, sb
    ldrb r0, [r2, #5]
    adds r0, #2
    cmp r6, r0
    blt .L0804046C
.L08040520:
    ldr r0, .L0804055C @ =0x0203DC9C
    movs r1, #0
    strb r1, [r0]
    ldr r2, .L08040560 @ =0x08B98AEC
    ldr r0, [r2]
    strb r1, [r0, #6]
    ldr r3, [r2]
    ldr r1, .L08040564 @ =0x0203D90C
    ldrb r0, [r1, #5]
    add r0, sp
    ldrb r0, [r0]
    strb r0, [r3, #9]
    ldr r2, [r2]
    ldrb r0, [r1, #5]
    adds r0, #2
    strb r0, [r2, #7]
    ldrb r0, [r1, #5]
    adds r0, #2
    adds r1, #0xa0
    strb r0, [r1]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08040558: .4byte 0x0203DA0C
.L0804055C: .4byte 0x0203DC9C
.L08040560: .4byte 0x08B98AEC
.L08040564: .4byte 0x0203D90C
    func_end func_08040444

    thumb_func_start func_08040568
func_08040568: @ 0x08040568
    push {lr}
    ldr r0, .L08040578 @ =0x08B9A0E8
    movs r1, #2
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08040578: .4byte 0x08B9A0E8
    func_end func_08040568

    thumb_func_start func_0804057C
func_0804057C: @ 0x0804057C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L080405B4 @ =0x08B9A0E8
    bl Proc_Find
    cmp r0, #0
    bne .L080405AE
    ldr r5, .L080405B8 @ =0x0203D90C
    ldrb r0, [r5, #0xb]
    cmp r0, #1
    bne .L0804059A
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
.L0804059A:
    ldrb r5, [r5, #0xb]
    cmp r5, #2
    bne .L080405A8
    adds r0, r4, #0
    movs r1, #4
    bl Proc_Goto
.L080405A8:
    adds r0, r4, #0
    bl Proc_Break
.L080405AE:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080405B4: .4byte 0x08B9A0E8
.L080405B8: .4byte 0x0203D90C
    func_end func_0804057C

    thumb_func_start func_080405BC
func_080405BC: @ 0x080405BC
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    mov r8, r0
    adds r4, r1, #0
    adds r5, r2, #0
    adds r6, r3, #0
    bl func_08007F64
    bl func_080097FC
    bl ResetTextFont
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, r8
    adds r3, r6, #0
    bl StartTalkExt
    movs r0, #1
    bl func_080080F4
    movs r0, #1
    bl SetTalkFlag
    movs r0, #2
    bl SetTalkFlag
    movs r0, #4
    bl SetTalkFlag
    movs r0, #2
    bl func_080080D8
    movs r0, #1
    bl func_08008E28
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080405BC

    thumb_func_start func_08040610
func_08040610: @ 0x08040610
    push {lr}
    ldr r0, .L08040628 @ =0x08B98B60
    bl Proc_EndEach
    ldr r0, .L0804062C @ =0x08B98B88
    bl Proc_EndEach
    ldr r0, .L08040630 @ =0x08B98B38
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08040628: .4byte 0x08B98B60
.L0804062C: .4byte 0x08B98B88
.L08040630: .4byte 0x08B98B38
    func_end func_08040610

    thumb_func_start func_08040634
func_08040634: @ 0x08040634
    push {lr}
    bl func_0803C4F8
    pop {r0}
    bx r0
    func_end func_08040634

    thumb_func_start func_08040640
func_08040640: @ 0x08040640
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    movs r6, #0
    ldr r0, .L080406BC @ =0x0203D90C
    mov sb, r0
    movs r1, #0x98
    lsls r1, r1, #2
    mov r8, r1
    movs r0, #0xa1
    add r0, sb
    mov sl, r0
    movs r7, #5
.L08040660:
    mov r0, sb
    adds r0, #0x9c
    adds r5, r6, r0
    ldr r0, .L080406C0 @ =0x08B98AEC
    ldr r0, [r0]
    adds r0, #0xb
    adds r0, r0, r6
    ldrb r0, [r0]
    ldrb r1, [r5]
    cmp r1, r0
    beq .L080406F0
    strb r0, [r5]
    lsls r1, r6, #3
    mov r0, sb
    adds r0, #0xc
    adds r4, r1, r0
    adds r0, r4, #0
    bl ClearText
    adds r0, r4, #0
    movs r1, #0
    bl Text_SetColor
    ldrb r0, [r5]
    cmp r0, #4
    bhi .L080406CC
    ldr r1, .L080406C4 @ =0x081D5204
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    movs r0, #0xa
    str r0, [sp]
    adds r0, r4, #0
    movs r1, #0xa
    adds r2, r7, #0
    bl func_08014EA8
    ldr r0, .L080406C8 @ =0x081C8164
    mov r1, r8
    movs r2, #0x20
    bl ApplyPaletteExt
    b .L080406EA
    .align 2, 0
.L080406BC: .4byte 0x0203D90C
.L080406C0: .4byte 0x08B98AEC
.L080406C4: .4byte 0x081D5204
.L080406C8: .4byte 0x081C8164
.L080406CC:
    movs r0, #0xa
    str r0, [sp]
    adds r0, r4, #0
    movs r1, #0xa
    adds r2, r7, #0
    mov r3, sl
    bl func_08014EA8
    lsls r0, r6, #5
    ldr r1, .L08040710 @ =0x081C7F04
    adds r0, r0, r1
    mov r1, r8
    movs r2, #0x20
    bl ApplyPaletteExt
.L080406EA:
    movs r0, #1
    bl EnableBgSync
.L080406F0:
    movs r1, #0x20
    add r8, r1
    movs r0, #0x13
    add sl, r0
    adds r7, #3
    adds r6, #1
    cmp r6, #3
    ble .L08040660
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08040710: .4byte 0x081C7F04
    func_end func_08040640

    thumb_func_start func_08040714
func_08040714: @ 0x08040714
    push {r4, r5, r6, lr}
    sub sp, #0x1c
    adds r6, r0, #0
    bl func_0803DBD0
    bl func_08047B34
    ldr r0, .L08040830 @ =0x081C5BE0
    ldr r1, .L08040834 @ =0x06014800
    bl Decompress
    ldr r0, .L08040838 @ =0x081C6DEC
    ldr r1, .L0804083C @ =0x06016000
    bl Decompress
    ldr r0, .L08040840 @ =0x081C64A4
    ldr r1, .L08040844 @ =0x06016800
    bl Decompress
    movs r4, #0x98
    lsls r4, r4, #2
    movs r5, #3
.L08040740:
    ldr r0, .L08040848 @ =0x081C8164
    adds r1, r4, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r4, #0x20
    subs r5, #1
    cmp r5, #0
    bge .L08040740
    movs r0, #0
    movs r1, #2
    bl func_08047BD4
    ldr r4, .L0804084C @ =0x0203D90C
    ldrb r0, [r4, #3]
    add r1, sp, #8
    bl func_080A1C44
    ldr r0, .L08040850 @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    bl func_0803DCF0
    movs r5, #0
    adds r4, #0x9c
    movs r2, #0xff
.L0804077C:
    adds r1, r5, r4
    ldrb r0, [r1]
    orrs r0, r2
    strb r0, [r1]
    adds r5, #1
    cmp r5, #3
    ble .L0804077C
    bl func_08040640
    movs r5, #0
    ldr r2, .L08040854 @ =0x030046C6
.L08040792:
    adds r0, r5, r2
    mov r1, sp
    adds r1, r1, r5
    adds r1, #8
    ldrb r1, [r1]
    strb r1, [r0]
    adds r5, #1
    cmp r5, #0x12
    ble .L08040792
    movs r0, #0
    str r0, [r6, #0x34]
    str r0, [r6, #0x30]
    movs r0, #0xc0
    movs r1, #0x10
    adds r2, r6, #0
    bl func_08047AE4
    movs r0, #0x48
    movs r1, #0x20
    adds r2, r6, #0
    bl func_08049064
    str r0, [r6, #0x2c]
    ldr r0, .L08040858 @ =0x08B99064
    bl SetFaceConfig
    movs r0, #2
    str r0, [sp]
    movs r0, #3
    movs r1, #0xdf
    movs r2, #0xd0
    movs r3, #0x50
    bl StartFace
    ldr r0, [r6, #0x2c]
    ldr r1, .L0804085C @ =0x081D5260
    ldr r4, .L0804084C @ =0x0203D90C
    ldrb r2, [r4]
    adds r1, r2, r1
    ldrb r1, [r1]
    bl func_08047D80
    ldr r0, .L08040860 @ =0x08B98CA8
    ldrb r3, [r4]
    lsls r1, r3, #2
    adds r0, r1, r0
    ldr r0, [r0]
    ldr r2, .L08040864 @ =0x081D5254
    adds r1, r1, r2
    ldr r1, [r1]
    str r3, [sp]
    ldr r2, [r6, #0x2c]
    str r2, [sp, #4]
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    ldr r0, [r6, #0x30]
    ldr r1, .L08040868 @ =0x000003C6
    adds r0, r0, r1
    movs r1, #1
    bl func_0803DC8C
    ldr r2, .L0804086C @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #0x1c
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08040830: .4byte 0x081C5BE0
.L08040834: .4byte 0x06014800
.L08040838: .4byte 0x081C6DEC
.L0804083C: .4byte 0x06016000
.L08040840: .4byte 0x081C64A4
.L08040844: .4byte 0x06016800
.L08040848: .4byte 0x081C8164
.L0804084C: .4byte 0x0203D90C
.L08040850: .4byte 0x0203DA60
.L08040854: .4byte 0x030046C6
.L08040858: .4byte 0x08B99064
.L0804085C: .4byte 0x081D5260
.L08040860: .4byte 0x08B98CA8
.L08040864: .4byte 0x081D5254
.L08040868: .4byte 0x000003C6
.L0804086C: .4byte gDispIo
    func_end func_08040714

    thumb_func_start func_08040870
func_08040870: @ 0x08040870
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L080408A8 @ =0x00002586
    mov r0, sp
    strh r1, [r0]
    ldr r0, .L080408AC @ =0x08B98B60
    movs r1, #0
    bl Proc_Start
    ldr r0, .L080408B0 @ =0x08B98B88
    adds r1, r4, #0
    bl Proc_Start
    ldr r0, .L080408B4 @ =0x08B98B38
    adds r1, r4, #0
    bl Proc_Start
    movs r1, #1
    rsbs r1, r1, #0
    mov r0, sp
    bl func_0803D0E4
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080408A8: .4byte 0x00002586
.L080408AC: .4byte 0x08B98B60
.L080408B0: .4byte 0x08B98B88
.L080408B4: .4byte 0x08B98B38
    func_end func_08040870

    thumb_func_start func_080408B8
func_080408B8: @ 0x080408B8
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    movs r6, #0
    movs r1, #0
    ldr r5, [r4, #0x2c]
    ldr r0, .L080408F8 @ =0x0203DC24
    str r1, [r0]
    mov r0, sp
    strb r1, [r0]
    bl func_08040640
    ldr r0, .L080408FC @ =0x08B98B38
    bl Proc_Find
    cmp r0, #0
    beq .L08040904
    ldr r0, .L08040900 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    bne .L080408EA
    b .L08040ACE
.L080408EA:
    movs r0, #1
    bl func_0803DD98
    bl func_08047B14
    b .L08040938
    .align 2, 0
.L080408F8: .4byte 0x0203DC24
.L080408FC: .4byte 0x08B98B38
.L08040900: .4byte gpKeySt
.L08040904:
    bl func_08047B14
    ldr r2, .L0804094C @ =0x08B98AEC
    ldr r1, [r2]
    movs r0, #6
    ldrsb r0, [r1, r0]
    str r0, [r5, #0x34]
    movs r3, #0
    adds r1, #0x1a
    adds r5, r2, #0
.L08040918:
    adds r0, r1, r3
    ldrb r0, [r0]
    cmp r0, #0x3c
    bls .L08040922
    adds r6, #1
.L08040922:
    adds r3, #1
    cmp r3, #3
    ble .L08040918
    ldr r0, [r5]
    movs r1, #6
    ldrsb r1, [r0, r1]
    adds r0, #0xb
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #2
    bne .L08040950
.L08040938:
    bl func_08040610
    bl func_08040634
    adds r0, r4, #0
    movs r1, #2
    bl Proc_Goto
    b .L08040ACE
    .align 2, 0
.L0804094C: .4byte 0x08B98AEC
.L08040950:
    bl func_0803CD64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08040966
    ldr r0, [r5]
    ldrb r1, [r0, #0x1e]
    cmp r1, #0x3c
    bhi .L08040966
    cmp r6, #0
    beq .L08040990
.L08040966:
    bl func_08040610
    bl func_08040634
    adds r0, r4, #0
    bl func_08040870
    movs r0, #0
    str r0, [r4, #0x30]
    ldr r0, .L0804098C @ =0x000003C6
    movs r1, #1
    bl func_0803DC8C
    movs r0, #0xc0
    movs r1, #0x10
    adds r2, r4, #0
    bl func_08047AE4
    b .L08040ACE
    .align 2, 0
.L0804098C: .4byte 0x000003C6
.L08040990:
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08040A24
    bl func_0803CDE8
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08040A24
    ldr r0, [r4, #0x30]
    cmp r0, #2
    beq .L080409BA
    movs r0, #2
    str r0, [r4, #0x30]
    movs r0, #0xf2
    lsls r0, r0, #2
    movs r1, #1
    bl func_0803DC8C
.L080409BA:
    ldr r0, .L08040A18 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08040A36
    ldr r0, [r5]
    movs r2, #0
    movs r1, #6
    strh r1, [r0, #4]
    strb r2, [r0, #0x1e]
    movs r3, #0
    adds r2, r5, #0
    movs r1, #0
.L080409D8:
    ldr r0, [r2]
    adds r0, #0x1a
    adds r0, r0, r3
    strb r1, [r0]
    adds r3, #1
    cmp r3, #3
    ble .L080409D8
    movs r0, #2
    bl func_0803DD98
    bl func_0803CCC4
    ldr r2, .L08040A1C @ =0x08B98AEC
    ldr r1, [r2]
    strb r0, [r1, #7]
    ldr r0, .L08040A20 @ =0x0203D90C
    ldr r1, [r2]
    ldrb r1, [r1, #7]
    adds r0, #0xa0
    strb r1, [r0]
    bl func_0803D674
    mov r1, sp
    movs r0, #0x18
    strb r0, [r1]
    mov r0, sp
    movs r1, #4
    bl func_0803D274
    str r0, [r4, #0x34]
    b .L08040A94
    .align 2, 0
.L08040A18: .4byte gpKeySt
.L08040A1C: .4byte 0x08B98AEC
.L08040A20: .4byte 0x0203D90C
.L08040A24:
    ldr r0, [r4, #0x30]
    cmp r0, #1
    beq .L08040A36
    movs r0, #1
    str r0, [r4, #0x30]
    ldr r0, .L08040A9C @ =0x000003C7
    movs r1, #1
    bl func_0803DC8C
.L08040A36:
    ldr r5, .L08040AA0 @ =0x08B98AEC
    ldr r1, [r5]
    movs r0, #6
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L08040AA8
    ldrb r0, [r1, #6]
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08040AA8
    add r1, sp, #4
    mov r0, sp
    movs r2, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L08040AA8
    ldr r0, [r5]
    movs r2, #0
    movs r1, #6
    strh r1, [r0, #4]
    strb r2, [r0, #0x1e]
    movs r3, #0
    adds r2, r5, #0
    movs r1, #0
.L08040A6E:
    ldr r0, [r2]
    adds r0, #0x1a
    adds r0, r0, r3
    strb r1, [r0]
    adds r3, #1
    cmp r3, #3
    ble .L08040A6E
    bl func_0803CCC4
    ldr r2, .L08040AA0 @ =0x08B98AEC
    ldr r1, [r2]
    strb r0, [r1, #7]
    ldr r0, .L08040AA4 @ =0x0203D90C
    ldr r1, [r2]
    ldrb r1, [r1, #7]
    adds r0, #0xa0
    strb r1, [r0]
    bl func_0803D674
.L08040A94:
    adds r0, r4, #0
    bl Proc_Break
    b .L08040ACE
    .align 2, 0
.L08040A9C: .4byte 0x000003C7
.L08040AA0: .4byte 0x08B98AEC
.L08040AA4: .4byte 0x0203D90C
.L08040AA8:
    bl GetGameTime
    movs r1, #0x26
    bl __umodsi3
    cmp r0, #0
    bne .L08040ACE
    ldr r0, .L08040AD8 @ =0x030046C0
    movs r1, #0xdc
    strb r1, [r0]
    ldr r1, .L08040ADC @ =0x08B98AEC
    ldr r2, [r1]
    ldrb r1, [r2, #6]
    strb r1, [r0, #1]
    ldrb r1, [r2]
    strh r1, [r0, #2]
    movs r1, #0x16
    bl func_0803CE34
.L08040ACE:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08040AD8: .4byte 0x030046C0
.L08040ADC: .4byte 0x08B98AEC
    func_end func_080408B8

    thumb_func_start func_08040AE0
func_08040AE0: @ 0x08040AE0
    push {r4, lr}
    adds r4, r0, #0
    bl func_08040640
    ldr r1, .L08040B38 @ =0x0203DC24
    ldr r0, [r1]
    adds r3, r0, #1
    str r3, [r1]
    ldr r0, .L08040B3C @ =0x0203D90C
    adds r0, #0xa0
    ldr r1, .L08040B40 @ =0x08B98AEC
    ldr r2, [r1]
    ldrb r0, [r0]
    ldrb r1, [r2, #7]
    cmp r0, r1
    bne .L08040B08
    movs r0, #0x96
    lsls r0, r0, #2
    cmp r3, r0
    ble .L08040B48
.L08040B08:
    bl func_08040610
    bl func_08040634
    adds r0, r4, #0
    bl func_08040870
    movs r0, #0
    str r0, [r4, #0x30]
    ldr r0, .L08040B44 @ =0x000003C6
    movs r1, #1
    bl func_0803DC8C
    movs r0, #0xc0
    movs r1, #0x10
    adds r2, r4, #0
    bl func_08047AE4
    adds r0, r4, #0
    movs r1, #3
    bl Proc_Goto
    b .L08040B6C
    .align 2, 0
.L08040B38: .4byte 0x0203DC24
.L08040B3C: .4byte 0x0203D90C
.L08040B40: .4byte 0x08B98AEC
.L08040B44: .4byte 0x000003C6
.L08040B48:
    movs r0, #6
    ldrsb r0, [r2, r0]
    cmp r0, #0
    bne .L08040B74
    ldr r1, [r4, #0x34]
    movs r0, #0x8c
    muls r0, r1, r0
    adds r0, r2, r0
    movs r1, #0x9a
    lsls r1, r1, #1
    adds r0, r0, r1
    ldrb r1, [r2, #9]
    ldrb r0, [r0]
    ands r1, r0
    adds r0, r1, #0
    ldrb r2, [r2, #9]
    cmp r0, r2
    bne .L08040B7A
.L08040B6C:
    adds r0, r4, #0
    bl Proc_Break
    b .L08040B7A
.L08040B74:
    adds r0, r4, #0
    bl Proc_Break
.L08040B7A:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08040AE0

    thumb_func_start func_08040B80
func_08040B80: @ 0x08040B80
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r6, r0, #0
    ldr r0, .L08040C18 @ =0x000003C7
    movs r1, #1
    bl func_0803DC8C
    ldr r0, .L08040C1C @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08040C04
    bl GetGameTime
    ldr r7, .L08040C20 @ =0x0203D90C
    adds r4, r7, #0
    adds r4, #0xa0
    ldrb r1, [r4]
    bl __umodsi3
    adds r5, r6, #0
    adds r5, #0x3b
    strb r0, [r5]
    bl RandNextB
    movs r1, #3
    ands r1, r0
    adds r1, #4
    ldrb r4, [r4]
    adds r3, r4, #0
    muls r3, r1, r3
    ldrb r0, [r5]
    adds r3, r0, r3
    adds r0, r6, #0
    adds r0, #0x39
    strb r3, [r0]
    mov r2, sp
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r7, r1
    ldrb r1, [r0]
    lsls r0, r1, #0x1f
    lsrs r0, r0, #0x1f
    strb r0, [r2]
    lsls r0, r1, #0x1d
    lsrs r0, r0, #0x1f
    strb r0, [r2, #1]
    mov r0, sp
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1f
    strb r1, [r0, #2]
    mov r1, sp
    ldrb r0, [r5]
    strb r0, [r1, #3]
    mov r0, sp
    strb r3, [r0, #4]
    adds r0, #6
    bl RandGetSt
    mov r0, sp
    movs r1, #0x10
    bl func_0803D274
    str r0, [r6, #0x34]
.L08040C04:
    adds r0, r6, #0
    adds r0, #0x3a
    movs r1, #0
    strb r1, [r0]
    subs r0, #2
    strb r1, [r0]
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08040C18: .4byte 0x000003C7
.L08040C1C: .4byte 0x08B98AEC
.L08040C20: .4byte 0x0203D90C
    func_end func_08040B80

    thumb_func_start func_08040C24
func_08040C24: @ 0x08040C24
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    adds r5, r0, #0
    ldr r7, [r5, #0x2c]
    ldr r0, .L08040C64 @ =0x08B98AEC
    ldr r2, [r0]
    movs r4, #6
    ldrsb r4, [r2, r4]
    cmp r4, #0
    bne .L08040C68
    ldr r1, [r5, #0x34]
    movs r0, #0x8c
    muls r0, r1, r0
    adds r0, r2, r0
    movs r1, #0x9a
    lsls r1, r1, #1
    adds r0, r0, r1
    ldrb r0, [r0]
    ldrb r2, [r2, #9]
    cmp r0, r2
    bne .L08040CEE
    movs r0, #0xf3
    lsls r0, r0, #2
    movs r1, #1
    bl func_0803DC8C
    str r4, [r7, #0x38]
    adds r0, r5, #0
    bl Proc_Break
    b .L08040CEE
    .align 2, 0
.L08040C64: .4byte 0x08B98AEC
.L08040C68:
    bl GetGameTime
    movs r1, #0x26
    bl __umodsi3
    adds r6, r0, #0
    cmp r6, #0
    bne .L08040CEE
    add r1, sp, #0x10
    mov r0, sp
    movs r2, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L08040CEE
    ldr r4, .L08040CF8 @ =0x0203D90C
    mov r0, sp
    movs r2, #0x80
    lsls r2, r2, #1
    adds r4, r4, r2
    movs r3, #1
    ldrb r1, [r0]
    ands r1, r3
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r2, [r4]
    ands r0, r2
    orrs r0, r1
    mov r1, sp
    ldrb r1, [r1, #1]
    ands r1, r3
    lsls r1, r1, #2
    movs r2, #5
    rsbs r2, r2, #0
    ands r0, r2
    orrs r0, r1
    mov r1, sp
    ldrb r1, [r1, #2]
    ands r1, r3
    lsls r1, r1, #1
    adds r2, #2
    ands r0, r2
    orrs r0, r1
    strb r0, [r4]
    mov r0, sp
    ldrb r0, [r0, #3]
    adds r1, r5, #0
    adds r1, #0x3b
    strb r0, [r1]
    mov r0, sp
    ldrb r0, [r0, #4]
    subs r1, #2
    strb r0, [r1]
    mov r0, sp
    adds r0, #6
    bl RandSetSt
    movs r0, #0xf3
    lsls r0, r0, #2
    movs r1, #1
    bl func_0803DC8C
    str r6, [r7, #0x38]
    adds r0, r5, #0
    bl Proc_Break
.L08040CEE:
    add sp, #0x14
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08040CF8: .4byte 0x0203D90C
    func_end func_08040C24

    thumb_func_start func_08040CFC
func_08040CFC: @ 0x08040CFC
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r7, [r6, #0x2c]
    adds r1, r6, #0
    adds r1, #0x38
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #0x10
    bls .L08040DA0
    movs r0, #0
    strb r0, [r1]
    adds r4, r6, #0
    adds r4, #0x3a
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    ldr r1, .L08040D78 @ =0x0203D90C
    adds r1, #0xa0
    ldrb r0, [r4]
    ldrb r1, [r1]
    bl __umodsi3
    strb r0, [r4]
    adds r5, r6, #0
    adds r5, #0x39
    ldrb r0, [r5]
    subs r0, #1
    strb r0, [r5]
    ldrb r0, [r4]
    str r0, [r7, #0x38]
    ldr r0, .L08040D7C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08040D50
    movs r0, #0x7d
    bl m4aSongNumStart
.L08040D50:
    ldrb r0, [r5]
    cmp r0, #0
    bne .L08040DA0
    adds r0, r6, #0
    adds r0, #0x3b
    ldr r1, .L08040D80 @ =0x08B98AEC
    ldr r1, [r1]
    ldrb r2, [r0]
    adds r4, r0, #0
    ldrb r0, [r4]
    ldrb r1, [r1, #6]
    cmp r0, r1
    beq .L08040D88
    ldr r1, .L08040D84 @ =0x000003CE
    adds r0, r2, r1
    movs r1, #1
    bl func_0803DC8C
    b .L08040D90
    .align 2, 0
.L08040D78: .4byte 0x0203D90C
.L08040D7C: .4byte gPlaySt
.L08040D80: .4byte 0x08B98AEC
.L08040D84: .4byte 0x000003CE
.L08040D88:
    ldr r0, .L08040DA8 @ =0x000003CD
    movs r1, #1
    bl func_0803DC8C
.L08040D90:
    ldrb r0, [r4]
    str r0, [r7, #0x38]
    ldr r1, .L08040DAC @ =0x0203DC9C
    ldrb r0, [r4]
    strb r0, [r1]
    adds r0, r6, #0
    bl Proc_Break
.L08040DA0:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08040DA8: .4byte 0x000003CD
.L08040DAC: .4byte 0x0203DC9C
    func_end func_08040CFC

    thumb_func_start func_08040DB0
func_08040DB0: @ 0x08040DB0
    push {lr}
    ldr r0, .L08040DC8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08040DC4
    movs r0, #0x7e
    bl m4aSongNumStart
.L08040DC4:
    pop {r0}
    bx r0
    .align 2, 0
.L08040DC8: .4byte gPlaySt
    func_end func_08040DB0

    thumb_func_start func_08040DCC
func_08040DCC: @ 0x08040DCC
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
    strb r4, [r5, #9]
    movs r1, #0
    bl SetUnitStatus
    strb r4, [r5, #0x1b]
    ldr r1, .L08040DF8 @ =0x0203D90C
    movs r0, #0x80
    lsls r0, r0, #1
    adds r1, r1, r0
    movs r0, #4
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08040DFC
    adds r0, r5, #0
    bl func_0803DD40
    b .L08040E02
    .align 2, 0
.L08040DF8: .4byte 0x0203D90C
.L08040DFC:
    adds r0, r5, #0
    bl func_08048E0C
.L08040E02:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08040DCC

    thumb_func_start func_08040E08
func_08040E08: @ 0x08040E08
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sb, r0
    ldr r0, .L08040EC4 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #6
    adds r0, #1
    mov r8, r0
    ldr r1, .L08040EC8 @ =0x0203DC24
    movs r0, #0
    str r0, [r1]
    bl InitUnits
    ldr r0, .L08040ECC @ =0x0203D90C
    ldrb r0, [r0, #3]
    ldr r4, .L08040ED0 @ =0x08B99084
    ldr r1, [r4]
    bl func_080A1C10
    movs r6, #0
    ldr r0, .L08040ED4 @ =0x0203DCC0
    mov sl, r0
    movs r7, #0x14
.L08040E42:
    mov r1, r8
    adds r4, r1, r6
    adds r0, r4, #0
    bl GetUnit
    adds r5, r0, #0
    bl ClearUnit
    ldr r1, .L08040ED0 @ =0x08B99084
    ldr r0, [r1]
    adds r0, r0, r7
    adds r1, r5, #0
    bl func_080A0E9C
    adds r0, r5, #0
    bl func_08040DCC
    strb r4, [r5, #0xb]
    cmp r6, #0
    bne .L08040E80
    adds r0, r5, #0
    bl GetUnitMiniPortraitId
    ldr r1, .L08040EC4 @ =0x08B98AEC
    ldr r1, [r1]
    ldrb r1, [r1, #6]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r1, r1, #1
    add r1, sl
    strh r0, [r1]
.L08040E80:
    adds r7, #0x24
    adds r6, #1
    cmp r6, #4
    ble .L08040E42
    ldr r2, .L08040EC4 @ =0x08B98AEC
    mov r3, sb
    adds r3, #0x64
    mov r4, sb
    adds r4, #0x4c
    ldr r0, .L08040ECC @ =0x0203D90C
    movs r1, #0
    movs r6, #3
    adds r0, #0x9f
.L08040E9A:
    strb r1, [r0]
    subs r0, #1
    subs r6, #1
    cmp r6, #0
    bge .L08040E9A
    ldr r2, [r2]
    movs r1, #6
    ldrsb r1, [r2, r1]
    movs r0, #1
    lsls r0, r1
    movs r1, #0
    strb r0, [r2, #0xa]
    strh r1, [r3]
    strh r1, [r4]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08040EC4: .4byte 0x08B98AEC
.L08040EC8: .4byte 0x0203DC24
.L08040ECC: .4byte 0x0203D90C
.L08040ED0: .4byte 0x08B99084
.L08040ED4: .4byte 0x0203DCC0
    func_end func_08040E08

    thumb_func_start func_08040ED8
func_08040ED8: @ 0x08040ED8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x28
    mov sb, r0
    movs r0, #0
    mov sl, r0
    mov r0, sb
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08040F08
    ldr r0, .L08041044 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08040F08
    movs r0, #0x7c
    bl m4aSongNumStart
.L08040F08:
    mov r1, sb
    adds r1, #0x4c
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x17
    ble .L08040F1E
    movs r0, #0
    strh r0, [r1]
.L08040F1E:
    mov r4, sb
    adds r4, #0x64
    movs r3, #0
    ldrsh r0, [r4, r3]
    cmp r0, #4
    bgt .L08040F5E
    ldr r2, .L08041048 @ =0x08B99084
    lsls r1, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #2
    adds r1, #0x14
    ldr r0, [r2]
    adds r0, r0, r1
    movs r1, #0x28
    bl func_0803D274
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov r3, sb
    str r0, [r3, #0x58]
    ldrh r2, [r4]
    adds r2, #1
    strh r2, [r4]
    ldr r1, .L0804104C @ =0x0203D90C
    ldr r0, .L08041050 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, #0x9c
    adds r0, r0, r1
    strb r2, [r0]
.L08040F5E:
    bl GetGameTime
    movs r1, #0x26
    bl __umodsi3
    cmp r0, #0
    bne .L08041034
    add r6, sp, #0x24
    mov r0, sp
    adds r1, r6, #0
    movs r2, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L08040FF0
    ldrb r0, [r6]
    lsls r4, r0, #6
    adds r4, #1
    ldr r1, .L0804104C @ =0x0203D90C
    mov r8, r1
    mov r7, r8
    adds r7, #0x9c
    adds r0, r0, r7
    ldrb r0, [r0]
    adds r0, r0, r4
    bl GetUnit
    adds r5, r0, #0
    bl ClearUnit
    mov r0, sp
    adds r1, r5, #0
    bl func_080A0E9C
    adds r0, r5, #0
    bl func_08040DCC
    ldrb r3, [r6]
    adds r0, r3, r7
    ldrb r0, [r0]
    adds r4, r0, r4
    strb r4, [r5, #0xb]
    ldrb r1, [r6]
    adds r0, r1, r7
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08040FD0
    adds r0, r5, #0
    bl GetUnitMiniPortraitId
    ldr r1, .L08041054 @ =0x0203DC9C
    ldrb r3, [r6]
    lsls r2, r3, #1
    adds r1, #0x24
    adds r2, r2, r1
    strh r0, [r2]
.L08040FD0:
    movs r1, #0x80
    lsls r1, r1, #1
    add r1, r8
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08040FE6
    movs r0, #0x80
    lsls r0, r0, #2
    str r0, [r5, #0xc]
.L08040FE6:
    ldrb r6, [r6]
    adds r1, r6, r7
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
.L08040FF0:
    movs r4, #0
    ldr r5, .L08041058 @ =0x0203D9A8
.L08040FF4:
    lsls r0, r4, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08041014
    adds r0, r4, r5
    ldrb r0, [r0]
    cmp r0, #4
    bhi .L08041014
    mov r0, sl
    adds r0, #1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov sl, r0
.L08041014:
    adds r4, #1
    cmp r4, #3
    ble .L08040FF4
    mov r0, sl
    cmp r0, #0
    bne .L08041034
    ldr r0, .L08041050 @ =0x08B98AEC
    ldr r2, [r0]
    movs r1, #6
    ldrsb r1, [r2, r1]
    movs r0, #1
    lsls r0, r1
    strb r0, [r2, #0xa]
    mov r0, sb
    bl Proc_Break
.L08041034:
    add sp, #0x28
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08041044: .4byte gPlaySt
.L08041048: .4byte 0x08B99084
.L0804104C: .4byte 0x0203D90C
.L08041050: .4byte 0x08B98AEC
.L08041054: .4byte 0x0203DC9C
.L08041058: .4byte 0x0203D9A8
    func_end func_08040ED8

    thumb_func_start func_0804105C
func_0804105C: @ 0x0804105C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804107C
    ldr r0, .L080410F0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804107C
    movs r0, #0x7c
    bl m4aSongNumStart
.L0804107C:
    adds r1, r5, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    adds r0, #1
    movs r6, #0
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x17
    ble .L08041092
    strh r6, [r1]
.L08041092:
    ldr r0, .L080410F4 @ =0x0203DC24
    ldr r1, [r0]
    adds r1, #1
    str r1, [r0]
    movs r0, #0x96
    lsls r0, r0, #2
    cmp r1, r0
    ble .L080410A6
    bl func_080867C0
.L080410A6:
    ldr r0, .L080410F8 @ =0x0300479C
    movs r1, #0xd9
    strb r1, [r0]
    ldr r4, .L080410FC @ =0x08B98AEC
    ldr r1, [r4]
    ldrb r1, [r1, #6]
    strb r1, [r0, #1]
    strh r6, [r0, #2]
    movs r1, #4
    bl func_0803CE34
    ldr r4, [r4]
    ldr r1, [r5, #0x58]
    movs r0, #0x8c
    muls r0, r1, r0
    adds r0, r4, r0
    movs r1, #0x9a
    lsls r1, r1, #1
    adds r0, r0, r1
    ldrb r1, [r4, #9]
    ldrb r2, [r0]
    cmp r2, r1
    bne .L080410E8
    ldrb r0, [r4, #0xa]
    ands r0, r1
    cmp r0, r2
    bne .L080410E8
    ldr r0, .L08041100 @ =0x08B98BAC
    bl Proc_EndEach
    adds r0, r5, #0
    bl Proc_Break
.L080410E8:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080410F0: .4byte gPlaySt
.L080410F4: .4byte 0x0203DC24
.L080410F8: .4byte 0x0300479C
.L080410FC: .4byte 0x08B98AEC
.L08041100: .4byte 0x08B98BAC
    func_end func_0804105C

    thumb_func_start func_08041104
func_08041104: @ 0x08041104
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0803DBD0
    bl func_08047B34
    bl func_080490B4
    movs r0, #3
    bl EndFaceById
    ldr r4, .L0804115C @ =0x0203D960
    adds r0, r4, #0
    bl ClearText
    adds r0, r4, #0
    movs r1, #0
    bl Text_SetColor
    ldr r0, .L08041160 @ =0x00000785
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    ldr r1, .L08041164 @ =0x02023F72
    adds r0, r4, #0
    bl PutText
    ldr r0, .L08041168 @ =0x08B98BAC
    adds r1, r5, #0
    bl Proc_Start
    movs r0, #0
    movs r1, #0
    bl func_08047BD4
    movs r0, #0xf
    bl EnableBgSync
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804115C: .4byte 0x0203D960
.L08041160: .4byte 0x00000785
.L08041164: .4byte 0x02023F72
.L08041168: .4byte 0x08B98BAC
    func_end func_08041104

    thumb_func_start func_0804116C
func_0804116C: @ 0x0804116C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0xc
    mov sb, r0
    bl func_0803DBD0
    bl func_08047B34
    ldr r4, .L0804128C @ =0x081C6A18
    movs r0, #1
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L08041290 @ =0x06000C00
    adds r1, r1, r0
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08041294 @ =0x081C7F84
    movs r1, #0xc0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08041298 @ =0x081C5BE0
    ldr r1, .L0804129C @ =0x06014800
    bl Decompress
    ldr r0, .L080412A0 @ =0x081C7F04
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x80
    bl ApplyPaletteExt
    movs r0, #0
    bl func_08047C38
    ldr r0, .L080412A4 @ =0x0203DA60
    bl SetTextFont
    bl ResetTextFont
    bl func_0803DCF0
    add r0, sp, #8
    bl func_08041FD4
    movs r0, #1
    movs r1, #0xfe
    movs r2, #0
    bl SetBgOffset
    movs r5, #0
    movs r7, #0xc0
    lsls r7, r7, #1
    ldr r6, .L080412A8 @ =0x081D5358
.L080411DE:
    lsls r4, r5, #3
    ldr r1, .L080412AC @ =0x0203D918
    mov r8, r1
    add r4, r8
    adds r0, r4, #0
    bl ClearText
    adds r0, r4, #0
    movs r1, #0
    bl Text_SetColor
    ldr r0, [r6]
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    ldr r1, .L080412B0 @ =0x02022C6C
    adds r1, r7, r1
    adds r0, r4, #0
    bl PutText
    mov r0, sp
    adds r0, r0, r5
    adds r0, #8
    ldrb r1, [r0]
    adds r0, r5, #0
    bl func_0804203C
    adds r7, #0xc0
    adds r6, #0x14
    adds r5, #1
    cmp r5, #2
    ble .L080411DE
    ldr r5, .L080412A8 @ =0x081D5358
    ldr r0, [r5, #0x18]
    lsls r0, r0, #1
    ldr r4, .L080412B4 @ =0x0202369C
    adds r0, r0, r4
    movs r1, #0
    bl func_080417BC
    ldr r0, [r5, #0x1c]
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #1
    bl func_080417BC
    ldr r0, .L080412B8 @ =0x081D5260
    mov r4, r8
    subs r4, #0xc
    ldrb r2, [r4]
    adds r0, r2, r0
    ldrb r1, [r0]
    mov r0, sb
    bl func_08047D80
    ldr r0, .L080412BC @ =0x08B98CA8
    ldrb r3, [r4]
    lsls r1, r3, #2
    adds r0, r1, r0
    ldr r0, [r0]
    ldr r2, .L080412C0 @ =0x081D5254
    adds r1, r1, r2
    ldr r1, [r1]
    str r3, [sp]
    mov r2, sb
    str r2, [sp, #4]
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    ldr r0, .L080412C4 @ =0x000003C9
    movs r1, #1
    bl func_0803DC8C
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804128C: .4byte 0x081C6A18
.L08041290: .4byte 0x06000C00
.L08041294: .4byte 0x081C7F84
.L08041298: .4byte 0x081C5BE0
.L0804129C: .4byte 0x06014800
.L080412A0: .4byte 0x081C7F04
.L080412A4: .4byte 0x0203DA60
.L080412A8: .4byte 0x081D5358
.L080412AC: .4byte 0x0203D918
.L080412B0: .4byte 0x02022C6C
.L080412B4: .4byte 0x0202369C
.L080412B8: .4byte 0x081D5260
.L080412BC: .4byte 0x08B98CA8
.L080412C0: .4byte 0x081D5254
.L080412C4: .4byte 0x000003C9
    func_end func_0804116C

    thumb_func_start func_080412C8
func_080412C8: @ 0x080412C8
    push {lr}
    movs r0, #3
    bl func_0803D500
    pop {r0}
    bx r0
    func_end func_080412C8

    thumb_func_start func_080412D4
func_080412D4: @ 0x080412D4
    push {lr}
    movs r0, #0
    bl func_0803D500
    pop {r0}
    bx r0
    func_end func_080412D4

    thumb_func_start func_080412E0
func_080412E0: @ 0x080412E0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x74
    adds r7, r0, #0
    movs r0, #0
    str r0, [sp, #0x5c]
    add r5, sp, #0x50
    ldr r1, .L080413BC @ =0x081D5394
    adds r0, r5, #0
    movs r2, #6
    bl memcpy
    bl func_0803DBD0
    bl func_08047B34
    ldr r0, .L080413C0 @ =0x081C5BE0
    ldr r1, .L080413C4 @ =0x06014800
    bl Decompress
    movs r0, #0
    movs r1, #4
    bl func_08047BD4
    ldr r0, .L080413C8 @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    movs r0, #0xc0
    movs r1, #0x10
    adds r2, r7, #0
    bl func_08047AE4
    ldr r4, .L080413CC @ =0x0203DC08
    adds r0, r4, #0
    movs r1, #0x18
    bl InitText
    adds r4, #8
    adds r0, r4, #0
    movs r1, #0x18
    bl InitText
    ldr r0, .L080413D0 @ =0x000003CA
    movs r1, #0
    bl func_0803DC8C
    ldr r0, .L080413D4 @ =0x000003CB
    movs r1, #1
    bl func_0803DC8C
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r7, #0x4c]
    movs r1, #2
    mov sb, r1
    mov r2, sp
    adds r2, #0x58
    str r2, [sp, #0x60]
    movs r6, #8
    mov r4, sp
    adds r4, #0x5a
    adds r5, r7, #0
    adds r5, #0x40
.L0804136C:
    movs r0, #0
    strb r0, [r4]
    mov r0, sb
    bl IsSaveValid
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0804143E
    mov r0, sb
    add r1, sp, #8
    bl ReadGameSavePlaySt
    add r0, sp, #8
    bl GetChapterTitle
    adds r2, r7, #0
    adds r2, #0x2c
    adds r1, r2, r6
    str r0, [r1]
    add r1, sp, #8
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    mov sl, r2
    cmp r0, #0
    beq .L080413A8
    movs r0, #4
    ldrb r1, [r4]
    orrs r0, r1
    strb r0, [r4]
.L080413A8:
    add r0, sp, #8
    ldrb r0, [r0, #0x1b]
    cmp r0, #2
    beq .L080413E2
    cmp r0, #2
    bgt .L080413D8
    cmp r0, #1
    beq .L080413DE
    b .L080413F2
    .align 2, 0
.L080413BC: .4byte 0x081D5394
.L080413C0: .4byte 0x081C5BE0
.L080413C4: .4byte 0x06014800
.L080413C8: .4byte 0x0203DA60
.L080413CC: .4byte 0x0203DC08
.L080413D0: .4byte 0x000003CA
.L080413D4: .4byte 0x000003CB
.L080413D8:
    cmp r0, #3
    beq .L080413EA
    b .L080413F2
.L080413DE:
    movs r0, #0x10
    b .L080413EC
.L080413E2:
    movs r0, #0x20
    ldrb r1, [r4]
    orrs r0, r1
    b .L080413F0
.L080413EA:
    movs r0, #0x40
.L080413EC:
    ldrb r2, [r4]
    orrs r0, r2
.L080413F0:
    strb r0, [r4]
.L080413F2:
    add r0, sp, #8
    bl func_080A0A10
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0804140E
    mov r1, sl
    adds r0, r1, r6
    ldr r0, [r0]
    str r0, [r5]
    movs r2, #0x38
    adds r2, r2, r7
    mov r8, r2
    b .L0804141A
.L0804140E:
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r5]
    movs r1, #0x38
    adds r1, r1, r7
    mov r8, r1
.L0804141A:
    mov r2, r8
    adds r0, r2, r6
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L08041454
    ldr r2, [sp, #0x5c]
    cmp r2, #0
    bne .L08041438
    mov r0, sb
    str r0, [r7, #0x50]
    movs r1, #1
    str r1, [sp, #0x5c]
    b .L08041454
.L08041438:
    mov r2, sb
    str r2, [r7, #0x4c]
    b .L08041454
.L0804143E:
    adds r1, r7, #0
    adds r1, #0x2c
    adds r0, r1, r6
    movs r2, #1
    rsbs r2, r2, #0
    str r2, [r5]
    str r2, [r0]
    mov sl, r1
    movs r0, #0x38
    adds r0, r0, r7
    mov r8, r0
.L08041454:
    subs r5, #4
    subs r6, #4
    subs r4, #1
    movs r1, #1
    rsbs r1, r1, #0
    add sb, r1
    mov r2, sb
    cmp r2, #0
    bge .L0804136C
    adds r0, r1, #0
    ldr r1, [r7, #0x4c]
    cmp r1, r0
    bne .L08041476
    ldr r0, [r7, #0x50]
    str r0, [r7, #0x4c]
    str r0, [r7, #0x48]
    b .L08041478
.L08041476:
    str r1, [r7, #0x48]
.L08041478:
    movs r0, #1
    movs r1, #4
    movs r2, #0
    bl SetBgOffset
    movs r0, #0xd0
    lsls r0, r0, #1
    bl func_080823E0
    movs r0, #0
    mov sb, r0
    movs r1, #0xa0
    lsls r1, r1, #1
    str r1, [sp, #0x64]
    mov r2, sl
    str r2, [sp, #0x68]
    movs r0, #0x80
    lsls r0, r0, #1
    str r0, [sp, #0x6c]
    ldr r6, [sp, #0x60]
    movs r1, #0
    str r1, [sp, #0x70]
    movs r2, #0x88
    lsls r2, r2, #7
    mov sl, r2
.L080414AA:
    ldr r0, [sp, #0x70]
    add r0, r8
    ldr r1, [r0]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L080414C0
    movs r0, #2
    ldrb r1, [r6]
    orrs r0, r1
    strb r0, [r6]
.L080414C0:
    movs r0, #1
    ldrb r2, [r6]
    orrs r0, r2
    mov r4, sb
    adds r4, #4
    adds r1, r4, #0
    bl PutChapterTitlePalette
    ldrb r0, [r6]
    mov r5, sb
    adds r5, #7
    adds r1, r5, #0
    bl PutChapterTitlePalette
    ldr r0, .L08041574 @ =0x02023464
    ldr r1, [sp, #0x6c]
    adds r0, r1, r0
    adds r1, r4, #0
    bl func_08082460
    mov r2, sl
    lsls r0, r2, #0xf
    lsrs r0, r0, #0x14
    ldr r2, [sp, #0x68]
    ldm r2!, {r1}
    str r2, [sp, #0x68]
    bl PutChapterTitleGfx
    ldr r0, .L08041578 @ =0x02022C66
    ldr r1, [sp, #0x64]
    adds r0, r1, r0
    adds r1, r5, #0
    bl PutChapterTitleNameTsa
    ldr r2, [sp, #0x64]
    movs r0, #0x80
    lsls r0, r0, #1
    adds r2, r2, r0
    str r2, [sp, #0x64]
    ldr r1, [sp, #0x6c]
    adds r1, r1, r0
    str r1, [sp, #0x6c]
    adds r6, #1
    ldr r2, [sp, #0x70]
    adds r2, #4
    str r2, [sp, #0x70]
    movs r0, #0x80
    lsls r0, r0, #4
    add sl, r0
    movs r1, #1
    add sb, r1
    mov r2, sb
    cmp r2, #2
    ble .L080414AA
    ldr r2, .L0804157C @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    adds r0, r7, #0
    movs r1, #1
    bl func_08047D80
    ldr r0, .L08041580 @ =0x0203D90C
    ldrb r0, [r0]
    str r0, [sp]
    str r7, [sp, #4]
    add r0, sp, #0x50
    movs r1, #6
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0x74
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08041574: .4byte 0x02023464
.L08041578: .4byte 0x02022C66
.L0804157C: .4byte gDispIo
.L08041580: .4byte 0x0203D90C
    func_end func_080412E0

    thumb_func_start func_08041584
func_08041584: @ 0x08041584
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r3, #0
    ldr r0, [sp, #0x14]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    mov ip, r1
    lsls r2, r2, #0x18
    lsrs r6, r2, #0x18
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    ldr r1, .L0804160C @ =gpKeySt
    ldr r3, [r1]
    ldrh r2, [r3, #6]
    movs r0, #0x40
    ands r0, r2
    cmp r0, #0
    beq .L080415D2
    ldr r0, [r4]
    cmp r0, r6
    bgt .L080415B4
    ldrh r3, [r3, #8]
    cmp r2, r3
    bne .L080415D2
.L080415B4:
    subs r2, r7, #1
    movs r3, #1
    rsbs r3, r3, #0
.L080415BA:
    ldr r0, [r4]
    subs r0, #1
    str r0, [r4]
    cmp r0, #0
    bge .L080415C6
    str r2, [r4]
.L080415C6:
    ldr r0, [r4]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    cmp r0, r3
    beq .L080415BA
.L080415D2:
    ldr r1, [r1]
    ldrh r2, [r1, #6]
    movs r0, #0x80
    ands r0, r2
    cmp r0, #0
    beq .L08041606
    ldr r0, [r4]
    cmp r0, ip
    blt .L080415EA
    ldrh r1, [r1, #8]
    cmp r2, r1
    bne .L08041606
.L080415EA:
    ldr r0, [r4]
    adds r0, #1
    str r0, [r4]
    adds r1, r7, #0
    bl __modsi3
    str r0, [r4]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r1, [r0]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L080415EA
.L08041606:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804160C: .4byte gpKeySt
    func_end func_08041584

    thumb_func_start func_08041610
func_08041610: @ 0x08041610
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r5, [r6, #0x48]
    adds r0, #0x48
    ldr r1, [r6, #0x50]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    ldr r2, [r6, #0x4c]
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    adds r3, r6, #0
    adds r3, #0x38
    movs r4, #3
    str r4, [sp]
    bl func_08041584
    ldr r1, [r6, #0x48]
    lsls r1, r1, #5
    adds r1, #0x28
    movs r0, #0x18
    bl PutUiHand
    ldr r0, [r6, #0x48]
    cmp r5, r0
    beq .L0804164A
    movs r0, #3
    bl func_0803DD98
.L0804164A:
    ldr r4, .L08041688 @ =gpKeySt
    ldr r1, [r4]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08041664
    movs r0, #2
    bl func_0803DD98
    adds r0, r6, #0
    bl Proc_Break
.L08041664:
    ldr r1, [r4]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0804167E
    movs r0, #1
    bl func_0803DD98
    adds r0, r6, #0
    movs r1, #4
    bl Proc_Goto
.L0804167E:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08041688: .4byte gpKeySt
    func_end func_08041610

    thumb_func_start func_0804168C
func_0804168C: @ 0x0804168C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x48]
    bl func_080A08EC
    ldr r1, .L080416CC @ =gPlaySt
    movs r0, #0xdf
    ldrb r2, [r1, #0x14]
    ands r0, r2
    strb r0, [r1, #0x14]
    adds r1, #0x41
    movs r0, #0xd
    rsbs r0, r0, #0
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    ldr r1, .L080416D0 @ =0x0203D90C
    ldr r0, [r4, #0x48]
    strb r0, [r1, #4]
    bl ApplyUnitSpritePalettes
    bl func_08044ED8
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080416CC: .4byte gPlaySt
.L080416D0: .4byte 0x0203D90C
    func_end func_0804168C

    thumb_func_start func_080416D4
func_080416D4: @ 0x080416D4
    push {lr}
    adds r1, r0, #0
    ldr r0, .L080416EC @ =0x0203D90C
    ldrb r0, [r0, #3]
    cmp r0, #0xff
    bne .L080416E8
    adds r0, r1, #0
    movs r1, #1
    bl Proc_Goto
.L080416E8:
    pop {r0}
    bx r0
    .align 2, 0
.L080416EC: .4byte 0x0203D90C
    func_end func_080416D4

    thumb_func_start func_080416F0
func_080416F0: @ 0x080416F0
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08041708 @ =0x0203D90C
    ldrb r0, [r0, #4]
    cmp r0, #0xff
    bne .L08041704
    adds r0, r1, #0
    movs r1, #2
    bl Proc_Goto
.L08041704:
    pop {r0}
    bx r0
    .align 2, 0
.L08041708: .4byte 0x0203D90C
    func_end func_080416F0

    thumb_func_start func_0804170C
func_0804170C: @ 0x0804170C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08041728 @ =0x08CC3BDC
    bl Proc_Find
    cmp r0, #0
    bne .L08041720
    adds r0, r4, #0
    bl Proc_Break
.L08041720:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08041728: .4byte 0x08CC3BDC
    func_end func_0804170C

    thumb_func_start func_0804172C
func_0804172C: @ 0x0804172C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08041768 @ =0x0203DC20
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08041760
    bl func_0803DC28
    bl func_0802D3A4
    bl func_08047CA8
    bl func_08047DA4
    bl func_08047F1C
    bl func_08047B14
    bl func_0808EEC8
    adds r0, r4, #0
    movs r1, #5
    bl Proc_Goto
.L08041760:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08041768: .4byte 0x0203DC20
    func_end func_0804172C

    thumb_func_start func_0804176C
func_0804176C: @ 0x0804176C
    push {lr}
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    pop {r0}
    bx r0
    func_end func_0804176C

    thumb_func_start func_0804177C
func_0804177C: @ 0x0804177C
    adds r3, r0, #0
    lsls r0, r1, #1
    adds r0, r0, r1
    ldr r2, .L080417B8 @ =0x00004060
    adds r0, r0, r2
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r1, #2
    ble .L08041798
    movs r1, #0x80
    lsls r1, r1, #5
    adds r0, r2, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
.L08041798:
    strh r2, [r3]
    adds r0, r2, #1
    strh r0, [r3, #2]
    adds r0, r2, #2
    strh r0, [r3, #4]
    adds r1, r3, #0
    adds r1, #0x40
    adds r0, #0x1e
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    adds r1, #2
    adds r0, #1
    strh r0, [r1]
    bx lr
    .align 2, 0
.L080417B8: .4byte 0x00004060
    func_end func_0804177C

    thumb_func_start func_080417BC
func_080417BC: @ 0x080417BC
    push {r4, lr}
    lsls r1, r1, #0x12
    movs r2, #0xa0
    lsls r2, r2, #0x10
    adds r1, r1, r2
    lsrs r1, r1, #0x10
    movs r3, #0xc0
    lsls r3, r3, #7
    adds r2, r1, r3
    strh r2, [r0]
    ldr r4, .L080417F0 @ =0x00006001
    adds r2, r1, r4
    strh r2, [r0, #2]
    adds r3, r0, #0
    adds r3, #0x40
    adds r4, #1
    adds r2, r1, r4
    strh r2, [r3]
    adds r0, #0x42
    ldr r2, .L080417F4 @ =0x00006003
    adds r1, r1, r2
    strh r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080417F0: .4byte 0x00006001
.L080417F4: .4byte 0x00006003
    func_end func_080417BC

    thumb_func_start func_080417F8
func_080417F8: @ 0x080417F8
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    mov r8, r0
    mov sb, r1
    adds r4, r2, #0
    adds r6, r3, #0
    ldr r5, [sp, #0x18]
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r6, r6, #0x10
    lsrs r6, r6, #0x10
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    movs r1, #8
    movs r2, #0
    mov r3, sb
    bl Text_InsertDrawString
    mov r0, r8
    movs r1, #0x60
    movs r2, #2
    adds r3, r6, #0
    bl func_0803D964
    ldr r3, .L08041874 @ =0x081D53C8
    mov r0, r8
    movs r1, #0x68
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L08041878 @ =0x081D539C
    lsls r4, r4, #2
    adds r4, r4, r0
    ldr r0, [r4]
    bl DecodeMsg
    adds r3, r0, #0
    mov r0, r8
    movs r1, #0x88
    movs r2, #2
    bl Text_InsertDrawString
    ldr r0, .L0804187C @ =0x081D53B0
    lsls r5, r5, #2
    adds r5, r5, r0
    ldr r0, [r5]
    bl DecodeMsg
    adds r3, r0, #0
    mov r0, r8
    movs r1, #0xa2
    movs r2, #0
    bl Text_InsertDrawString
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08041874: .4byte 0x081D53C8
.L08041878: .4byte 0x081D539C
.L0804187C: .4byte 0x081D53B0
    func_end func_080417F8

    thumb_func_start func_08041880
func_08041880: @ 0x08041880
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    movs r6, #0
    ldr r0, .L08041914 @ =0x0203DB6C
    ldr r1, .L08041918 @ =0x02023464
    mov sl, r1
    subs r7, r0, #4
    movs r1, #0x24
    add r1, sl
    mov sb, r1
    mov r8, r0
.L0804189E:
    lsls r5, r6, #3
    ldr r0, .L0804191C @ =0x0203DA10
    adds r5, r5, r0
    adds r0, r5, #0
    bl ClearText
    ldrb r0, [r7]
    lsls r2, r0, #0x1e
    lsrs r2, r2, #6
    movs r1, #0x80
    lsls r1, r1, #0x11
    adds r2, r2, r1
    lsrs r2, r2, #0x18
    ldr r3, [r7]
    lsls r3, r3, #0xb
    lsrs r3, r3, #0x10
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1e
    adds r0, #1
    str r0, [sp]
    adds r0, r5, #0
    mov r1, r8
    bl func_080417F8
    lsls r4, r6, #7
    mov r1, sl
    adds r0, r4, r1
    adds r1, r6, #0
    bl func_0804177C
    mov r0, sl
    adds r0, #6
    adds r4, r4, r0
    adds r0, r5, #0
    adds r1, r4, #0
    bl PutText
    ldrb r0, [r7]
    lsls r1, r0, #0x1b
    lsrs r1, r1, #0x1f
    mov r0, sb
    bl func_080417BC
    adds r7, #0x10
    movs r1, #0x80
    add sb, r1
    movs r0, #0x10
    add r8, r0
    adds r6, #1
    cmp r6, #9
    ble .L0804189E
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08041914: .4byte 0x0203DB6C
.L08041918: .4byte 0x02023464
.L0804191C: .4byte 0x0203DA10
    func_end func_08041880

    thumb_func_start func_08041920
func_08041920: @ 0x08041920
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r7, r0, #0
    ldr r1, .L08041AF4 @ =0x081D53CB
    add r0, sp, #8
    movs r2, #8
    bl memcpy
    bl func_0803DBD0
    bl func_08047B34
    ldr r4, .L08041AF8 @ =0x081C6A18
    movs r0, #1
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L08041AFC @ =0x06000C00
    adds r1, r1, r0
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08041B00 @ =0x081C7FC4
    movs r1, #0x80
    movs r2, #0x40
    bl ApplyPaletteExt
    ldr r0, .L08041B04 @ =0x081C7F84
    movs r1, #0xc0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08041B08 @ =0x081C5BE0
    ldr r1, .L08041B0C @ =0x06014800
    bl Decompress
    ldr r0, .L08041B10 @ =0x081C7F04
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x80
    bl ApplyPaletteExt
    movs r0, #0
    movs r1, #2
    bl func_08047BD4
    ldr r0, .L08041B14 @ =0x02023D62
    ldr r1, .L08041B18 @ =0x081C87A0
    movs r2, #0x80
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    ldr r0, .L08041B1C @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    movs r1, #0
    movs r0, #0xc8
    strh r0, [r7, #0x36]
    adds r0, r7, #0
    adds r0, #0x39
    strb r1, [r0]
    subs r0, #1
    strb r1, [r0]
    subs r0, #4
    strb r1, [r0]
    ldrh r2, [r7, #0x36]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r5, .L08041B20 @ =0x0203DA10
    movs r4, #9
.L080419B8:
    adds r0, r5, #0
    movs r1, #0x16
    bl InitText
    adds r5, #8
    subs r4, #1
    cmp r4, #0
    bge .L080419B8
    ldr r4, .L08041B24 @ =0x0203DC08
    adds r0, r4, #0
    movs r1, #0x18
    bl InitText
    adds r0, r4, #0
    adds r0, #8
    movs r1, #0x18
    bl InitText
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L08041B28 @ =0x0000077F
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x10
    movs r2, #0
    bl Text_InsertDrawString
    movs r0, #0xf0
    lsls r0, r0, #3
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x54
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L08041B2C @ =0x00000781
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x78
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L08041B30 @ =0x00000782
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x96
    movs r2, #0
    bl Text_InsertDrawString
    ldr r1, .L08041B34 @ =0x02022DAA
    adds r0, r4, #0
    bl PutText
    ldr r0, .L08041B38 @ =0x000003C2
    movs r1, #1
    bl func_0803DC8C
    ldr r0, .L08041B3C @ =0x0203DB68
    bl func_080A1F2C
    bl func_08041880
    ldr r1, .L08041B40 @ =gDispIo
    mov ip, r1
    movs r0, #0x20
    ldrb r2, [r1, #1]
    orrs r0, r2
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r1, ip
    strb r0, [r1, #1]
    adds r1, #0x2d
    movs r0, #0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0x38
    strb r0, [r1]
    subs r1, #5
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0x88
    strb r0, [r1]
    mov r5, ip
    adds r5, #0x34
    movs r1, #1
    ldrb r0, [r5]
    orrs r0, r1
    movs r2, #2
    orrs r0, r2
    movs r6, #4
    orrs r0, r6
    movs r4, #8
    orrs r0, r4
    movs r3, #0x10
    orrs r0, r3
    strb r0, [r5]
    mov r2, ip
    adds r2, #0x36
    ldrb r0, [r2]
    orrs r1, r0
    movs r0, #3
    rsbs r0, r0, #0
    ands r1, r0
    orrs r1, r6
    orrs r1, r4
    orrs r1, r3
    strb r1, [r2]
    ldrh r0, [r7, #0x36]
    adds r0, #0x38
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp]
    str r7, [sp, #4]
    movs r0, #0xd8
    movs r1, #0x38
    movs r2, #0xa
    movs r3, #5
    bl func_08048BE4
    adds r0, r7, #0
    movs r1, #5
    bl func_08047D80
    ldr r0, .L08041B44 @ =0x0203D90C
    ldrb r0, [r0]
    str r0, [sp]
    str r7, [sp, #4]
    add r0, sp, #8
    movs r1, #8
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    movs r0, #0xc0
    movs r1, #0x10
    adds r2, r7, #0
    bl func_08047AE4
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08041AF4: .4byte 0x081D53CB
.L08041AF8: .4byte 0x081C6A18
.L08041AFC: .4byte 0x06000C00
.L08041B00: .4byte 0x081C7FC4
.L08041B04: .4byte 0x081C7F84
.L08041B08: .4byte 0x081C5BE0
.L08041B0C: .4byte 0x06014800
.L08041B10: .4byte 0x081C7F04
.L08041B14: .4byte 0x02023D62
.L08041B18: .4byte 0x081C87A0
.L08041B1C: .4byte 0x0203DA60
.L08041B20: .4byte 0x0203DA10
.L08041B24: .4byte 0x0203DC08
.L08041B28: .4byte 0x0000077F
.L08041B2C: .4byte 0x00000781
.L08041B30: .4byte 0x00000782
.L08041B34: .4byte 0x02022DAA
.L08041B38: .4byte 0x000003C2
.L08041B3C: .4byte 0x0203DB68
.L08041B40: .4byte gDispIo
.L08041B44: .4byte 0x0203D90C
    func_end func_08041920

    thumb_func_start func_08041B48
func_08041B48: @ 0x08041B48
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r4, #0
    adds r6, #0x38
    movs r0, #0
    ldrsb r0, [r6, r0]
    cmp r0, #0
    ble .L08041B64
    ldrh r0, [r4, #0x36]
    subs r0, #4
    strh r0, [r4, #0x36]
    ldrb r0, [r6]
    subs r0, #1
    b .L08041B72
.L08041B64:
    cmp r0, #0
    bge .L08041B8E
    ldrh r0, [r4, #0x36]
    adds r0, #4
    strh r0, [r4, #0x36]
    ldrb r0, [r6]
    adds r0, #1
.L08041B72:
    strb r0, [r6]
    ldrh r2, [r4, #0x36]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldrh r1, [r4, #0x36]
    adds r1, #0x38
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r0, #0xa
    bl func_08048C50
    b .L08041C3A
.L08041B8E:
    ldr r0, .L08041C40 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x40
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L08041BD4
    adds r5, r4, #0
    adds r5, #0x34
    ldrb r0, [r5]
    cmp r0, #0
    beq .L08041BD4
    movs r0, #3
    bl func_0803DD98
    ldrh r0, [r4, #0x36]
    subs r0, #4
    strh r0, [r4, #0x36]
    ldrb r0, [r5]
    subs r0, #1
    strb r0, [r5]
    movs r0, #3
    strb r0, [r6]
    ldrh r2, [r4, #0x36]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldrh r1, [r4, #0x36]
    adds r1, #0x38
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r0, #0xa
    bl func_08048C50
.L08041BD4:
    ldr r0, .L08041C40 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L08041C20
    adds r5, r4, #0
    adds r5, #0x34
    ldrb r0, [r5]
    adds r0, #5
    cmp r0, #9
    bgt .L08041C20
    movs r0, #3
    bl func_0803DD98
    ldrh r0, [r4, #0x36]
    adds r0, #4
    strh r0, [r4, #0x36]
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    adds r1, r4, #0
    adds r1, #0x38
    movs r0, #0xfd
    strb r0, [r1]
    ldrh r2, [r4, #0x36]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldrh r1, [r4, #0x36]
    adds r1, #0x38
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r0, #0xa
    bl func_08048C50
.L08041C20:
    ldr r0, .L08041C40 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08041C3A
    movs r0, #1
    bl func_0803DD98
    adds r0, r4, #0
    bl Proc_Break
.L08041C3A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08041C40: .4byte gpKeySt
    func_end func_08041B48

    thumb_func_start func_08041C44
func_08041C44: @ 0x08041C44
    cmp r0, #6
    ble .L08041C4C
    movs r0, #5
    b .L08041C58
.L08041C4C:
    subs r0, #2
    cmp r0, #0
    bge .L08041C54
    movs r0, #0
.L08041C54:
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
.L08041C58:
    bx lr
    func_end func_08041C44

    thumb_func_start func_08041C5C
func_08041C5C: @ 0x08041C5C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r7, r0, #0
    ldr r1, .L08041E80 @ =0x081D53D3
    add r0, sp, #8
    movs r2, #7
    bl memcpy
    bl func_0803DBD0
    bl func_08047B34
    ldr r4, .L08041E84 @ =0x081C6A18
    movs r0, #1
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L08041E88 @ =0x06000C00
    adds r1, r1, r0
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08041E8C @ =0x081C7FC4
    movs r1, #0x80
    movs r2, #0x40
    bl ApplyPaletteExt
    ldr r0, .L08041E90 @ =0x081C7F84
    movs r1, #0xc0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08041E94 @ =0x081C5BE0
    ldr r1, .L08041E98 @ =0x06014800
    bl Decompress
    ldr r0, .L08041E9C @ =0x081C7B4C
    ldr r1, .L08041EA0 @ =0x06016000
    bl Decompress
    ldr r0, .L08041EA4 @ =0x081C80E4
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    movs r0, #0
    movs r1, #0
    bl func_08047BD4
    ldr r0, .L08041EA8 @ =0x02023D62
    ldr r1, .L08041EAC @ =0x081C87A0
    movs r2, #0x80
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    ldr r0, .L08041EB0 @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    adds r1, r7, #0
    adds r1, #0x34
    movs r4, #0
    movs r0, #5
    strb r0, [r1]
    movs r1, #0
    movs r0, #0x8c
    lsls r0, r0, #1
    strh r0, [r7, #0x36]
    adds r0, r7, #0
    adds r0, #0x39
    strb r1, [r0]
    subs r0, #1
    strb r1, [r0]
    ldr r0, [r7, #0x3c]
    bl func_08041C44
    adds r1, r7, #0
    adds r1, #0x35
    strb r0, [r1]
    str r4, [r7, #0x40]
    ldrh r2, [r7, #0x36]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldr r5, .L08041EB4 @ =0x0203DA10
    movs r4, #9
.L08041D1A:
    adds r0, r5, #0
    movs r1, #0x18
    bl InitText
    adds r5, #8
    subs r4, #1
    cmp r4, #0
    bge .L08041D1A
    ldr r4, .L08041EB8 @ =0x0203DC08
    adds r0, r4, #0
    movs r1, #0x18
    bl InitText
    adds r0, r4, #0
    adds r0, #8
    movs r1, #0x18
    bl InitText
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L08041EBC @ =0x0000077F
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x10
    movs r2, #0
    bl Text_InsertDrawString
    movs r0, #0xf0
    lsls r0, r0, #3
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x54
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L08041EC0 @ =0x00000781
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x78
    movs r2, #0
    bl Text_InsertDrawString
    ldr r0, .L08041EC4 @ =0x00000782
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x96
    movs r2, #0
    bl Text_InsertDrawString
    ldr r1, .L08041EC8 @ =0x02022DAA
    adds r0, r4, #0
    bl PutText
    ldr r0, .L08041ECC @ =0x0203DB68
    bl func_080A1F2C
    bl func_08041880
    ldr r1, .L08041ED0 @ =gDispIo
    mov ip, r1
    movs r0, #0x20
    ldrb r2, [r1, #1]
    orrs r0, r2
    movs r1, #0x40
    orrs r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r1, ip
    strb r0, [r1, #1]
    mov r0, ip
    adds r0, #0x2d
    movs r2, #0
    mov r8, r2
    mov r1, r8
    strb r1, [r0]
    adds r0, #4
    movs r2, #0x38
    mov sl, r2
    mov r1, sl
    strb r1, [r0]
    subs r0, #5
    movs r6, #0xf0
    strb r6, [r0]
    mov r1, ip
    adds r1, #0x30
    movs r0, #0x88
    strb r0, [r1]
    mov r3, ip
    adds r3, #0x34
    movs r2, #1
    ldrb r0, [r3]
    orrs r0, r2
    movs r1, #2
    orrs r0, r1
    movs r5, #4
    orrs r0, r5
    movs r4, #8
    orrs r0, r4
    movs r1, #0x10
    mov sb, r1
    mov r1, sb
    orrs r0, r1
    strb r0, [r3]
    mov r0, ip
    adds r0, #0x2f
    mov r1, r8
    strb r1, [r0]
    mov r1, ip
    adds r1, #0x33
    movs r0, #0x18
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x2e
    strb r6, [r0]
    adds r0, #4
    mov r1, sl
    strb r1, [r0]
    mov r6, ip
    adds r6, #0x35
    ldrb r0, [r6]
    orrs r0, r2
    movs r3, #3
    rsbs r3, r3, #0
    ands r0, r3
    orrs r0, r5
    orrs r0, r4
    movs r1, #0x11
    rsbs r1, r1, #0
    ands r0, r1
    strb r0, [r6]
    mov r0, ip
    adds r0, #0x36
    ldrb r1, [r0]
    orrs r2, r1
    ands r2, r3
    orrs r2, r5
    orrs r2, r4
    mov r1, sb
    orrs r2, r1
    strb r2, [r0]
    ldr r0, .L08041ED4 @ =0x0203D90C
    ldrb r0, [r0]
    str r0, [sp]
    str r7, [sp, #4]
    add r0, sp, #8
    movs r1, #7
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    ldr r1, [r7, #0x3c]
    lsls r1, r1, #4
    subs r1, #0x18
    movs r0, #0xe
    adds r2, r7, #0
    bl func_080491F0
    str r0, [r7, #0x2c]
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08041E80: .4byte 0x081D53D3
.L08041E84: .4byte 0x081C6A18
.L08041E88: .4byte 0x06000C00
.L08041E8C: .4byte 0x081C7FC4
.L08041E90: .4byte 0x081C7F84
.L08041E94: .4byte 0x081C5BE0
.L08041E98: .4byte 0x06014800
.L08041E9C: .4byte 0x081C7B4C
.L08041EA0: .4byte 0x06016000
.L08041EA4: .4byte 0x081C80E4
.L08041EA8: .4byte 0x02023D62
.L08041EAC: .4byte 0x081C87A0
.L08041EB0: .4byte 0x0203DA60
.L08041EB4: .4byte 0x0203DA10
.L08041EB8: .4byte 0x0203DC08
.L08041EBC: .4byte 0x0000077F
.L08041EC0: .4byte 0x00000781
.L08041EC4: .4byte 0x00000782
.L08041EC8: .4byte 0x02022DAA
.L08041ECC: .4byte 0x0203DB68
.L08041ED0: .4byte gDispIo
.L08041ED4: .4byte 0x0203D90C
    func_end func_08041C5C

    thumb_func_start func_08041ED8
func_08041ED8: @ 0x08041ED8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    mov r8, r0
    ldr r0, [r4, #0x40]
    adds r0, #1
    str r0, [r4, #0x40]
    cmp r0, #0x3b
    ble .L08041F8A
    adds r7, r4, #0
    adds r7, #0x35
    ldrb r1, [r7]
    cmp r1, #5
    bne .L08041EFE
    adds r0, r4, #0
    bl Proc_Break
.L08041EFE:
    adds r5, r4, #0
    adds r5, #0x38
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    ble .L08041F38
    ldrh r0, [r4, #0x36]
    subs r0, #2
    strh r0, [r4, #0x36]
    ldrb r0, [r5]
    subs r0, #1
    strb r0, [r5]
    ldrh r2, [r4, #0x36]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldrh r1, [r4, #0x36]
    adds r1, #0x38
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r0, #0xa
    bl func_08048C50
    mov r1, r8
    ldr r0, [r1, #0x30]
    adds r0, #2
    str r0, [r1, #0x30]
    b .L08041F8A
.L08041F38:
    adds r6, r4, #0
    adds r6, #0x34
    ldrb r0, [r7]
    ldrb r1, [r6]
    cmp r0, r1
    beq .L08041F74
    ldrh r0, [r4, #0x36]
    subs r0, #2
    strh r0, [r4, #0x36]
    ldrb r0, [r6]
    subs r0, #1
    strb r0, [r6]
    movs r0, #7
    strb r0, [r5]
    ldrh r2, [r4, #0x36]
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    ldrh r1, [r4, #0x36]
    adds r1, #0x38
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r0, #0xa
    bl func_08048C50
    mov r1, r8
    ldr r0, [r1, #0x30]
    adds r0, #2
    str r0, [r1, #0x30]
.L08041F74:
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L08041F8A
    ldrb r6, [r6]
    ldrb r7, [r7]
    cmp r6, r7
    bne .L08041F8A
    adds r0, r4, #0
    bl Proc_Break
.L08041F8A:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08041ED8

    thumb_func_start func_08041F94
func_08041F94: @ 0x08041F94
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08041FB8 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08041FB2
    movs r0, #0
    bl FadeBgmOut
    adds r0, r4, #0
    bl Proc_Break
.L08041FB2:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08041FB8: .4byte gpKeySt
    func_end func_08041F94

    thumb_func_start func_08041FBC
func_08041FBC: @ 0x08041FBC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08041FD0 @ =0x08B99560
    bl Proc_StartBlocking
    str r4, [r0, #0x3c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08041FD0: .4byte 0x08B99560
    func_end func_08041FBC

    thumb_func_start func_08041FD4
func_08041FD4: @ 0x08041FD4
    ldr r1, .L08041FF4 @ =0x0203D90C
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r1, r2
    ldrb r2, [r1]
    lsls r1, r2, #0x1f
    lsrs r1, r1, #0x1f
    strb r1, [r0]
    lsls r1, r2, #0x1e
    lsrs r1, r1, #0x1f
    strb r1, [r0, #1]
    lsls r2, r2, #0x1d
    lsrs r2, r2, #0x1f
    strb r2, [r0, #2]
    bx lr
    .align 2, 0
.L08041FF4: .4byte 0x0203D90C
    func_end func_08041FD4

    thumb_func_start func_08041FF8
func_08041FF8: @ 0x08041FF8
    push {r4, r5, lr}
    ldr r5, .L08042038 @ =0x0203D90C
    movs r1, #0x80
    lsls r1, r1, #1
    adds r5, r5, r1
    movs r4, #1
    ldrb r2, [r0]
    ands r2, r4
    movs r1, #2
    rsbs r1, r1, #0
    ldrb r3, [r5]
    ands r1, r3
    orrs r1, r2
    ldrb r2, [r0, #1]
    ands r2, r4
    lsls r2, r2, #1
    movs r3, #3
    rsbs r3, r3, #0
    ands r1, r3
    orrs r1, r2
    ldrb r0, [r0, #2]
    ands r4, r0
    lsls r4, r4, #2
    movs r0, #5
    rsbs r0, r0, #0
    ands r1, r0
    orrs r1, r4
    strb r1, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08042038: .4byte 0x0203D90C
    func_end func_08041FF8

    thumb_func_start func_0804203C
func_0804203C: @ 0x0804203C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    str r1, [sp, #8]
    ldr r1, .L080420E0 @ =0x081D53DC
    ldr r2, [r1, #4]
    ldr r1, [r1]
    str r1, [sp]
    str r2, [sp, #4]
    movs r7, #0
    lsls r1, r0, #1
    ldr r2, .L080420E4 @ =0x081D5358
    mov r8, r2
    adds r1, r1, r0
    adds r1, #6
    lsls r1, r1, #5
    mov sl, r1
    adds r2, #4
    lsls r6, r0, #4
    lsls r1, r0, #2
    adds r1, r1, r0
    lsls r1, r1, #2
    adds r2, r2, r1
    mov sb, r2
    adds r5, r1, #0
.L08042074:
    ldr r4, .L080420E8 @ =0x0203D970
    adds r4, r6, r4
    adds r0, r4, #0
    bl ClearText
    ldr r1, [sp, #8]
    adds r0, r1, r7
    movs r1, #1
    ands r0, r1
    lsls r0, r0, #2
    add r0, sp
    ldr r1, [r0]
    adds r0, r4, #0
    bl Text_SetColor
    mov r0, r8
    adds r0, #0xc
    adds r0, r5, r0
    ldr r0, [r0]
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    mov r2, sb
    adds r2, #4
    mov sb, r2
    subs r2, #4
    ldm r2!, {r1}
    add r1, sl
    lsls r1, r1, #1
    ldr r0, .L080420EC @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    adds r6, #8
    adds r5, #4
    adds r7, #1
    cmp r7, #1
    ble .L08042074
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
.L080420E0: .4byte 0x081D53DC
.L080420E4: .4byte 0x081D5358
.L080420E8: .4byte 0x0203D970
.L080420EC: .4byte gBg0Tm
    func_end func_0804203C

    thumb_func_start func_080420F0
func_080420F0: @ 0x080420F0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    mov r8, r0
    add r6, sp, #0xc
    ldr r1, .L08042264 @ =0x081D53E4
    adds r0, r6, #0
    movs r2, #0xe
    bl memcpy
    bl func_0803DBD0
    bl func_08047B34
    ldr r4, .L08042268 @ =0x081C6A18
    movs r0, #1
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r0, .L0804226C @ =0x06000C00
    adds r1, r1, r0
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08042270 @ =0x081C7F84
    movs r1, #0xc0
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08042274 @ =0x081C5BE0
    ldr r1, .L08042278 @ =0x06014800
    bl Decompress
    ldr r0, .L0804227C @ =0x081C7F04
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x80
    bl ApplyPaletteExt
    movs r0, #0
    bl func_08047C38
    ldr r0, .L08042280 @ =0x0203DA60
    bl SetTextFont
    bl ResetTextFont
    bl func_0803DCF0
    movs r0, #0
    mov r1, r8
    str r0, [r1, #0x30]
    mov r0, r8
    bl func_080488A8
    mov r2, r8
    str r0, [r2, #0x2c]
    movs r0, #1
    movs r1, #0xfe
    movs r2, #0
    bl SetBgOffset
    add r0, sp, #8
    bl func_08041FD4
    mov r3, r8
    ldr r0, [r3, #0x2c]
    ldr r4, [r3, #0x30]
    movs r2, #0x30
    ldrsh r1, [r3, r2]
    ldr r5, .L08042284 @ =0x081D5358
    mov r3, sp
    adds r3, r3, r4
    adds r3, #8
    lsls r2, r4, #2
    adds r2, r2, r4
    ldrb r3, [r3]
    adds r2, r3, r2
    lsls r2, r2, #2
    adds r3, r5, #4
    adds r2, r2, r3
    ldr r2, [r2]
    lsls r2, r2, #0x13
    asrs r2, r2, #0x10
    lsls r3, r4, #1
    adds r3, r3, r4
    lsls r3, r3, #0x13
    movs r4, #0xc0
    lsls r4, r4, #0xe
    adds r3, r3, r4
    asrs r3, r3, #0x10
    bl func_080488CC
    movs r7, #0
    mov sl, r6
    movs r6, #0xc0
    lsls r6, r6, #1
.L080421B8:
    lsls r4, r7, #3
    ldr r0, .L08042288 @ =0x0203D918
    mov sb, r0
    add r4, sb
    adds r0, r4, #0
    bl ClearText
    adds r0, r4, #0
    movs r1, #0
    bl Text_SetColor
    ldr r0, [r5]
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    ldr r1, .L0804228C @ =0x02022C6C
    adds r1, r6, r1
    adds r0, r4, #0
    bl PutText
    mov r0, sp
    adds r0, r0, r7
    adds r0, #8
    ldrb r1, [r0]
    adds r0, r7, #0
    bl func_0804203C
    adds r6, #0xc0
    adds r5, #0x14
    adds r7, #1
    cmp r7, #2
    ble .L080421B8
    ldr r5, .L08042284 @ =0x081D5358
    ldr r0, [r5, #0x18]
    lsls r0, r0, #1
    ldr r4, .L08042290 @ =0x0202369C
    adds r0, r0, r4
    movs r1, #0
    bl func_080417BC
    ldr r0, [r5, #0x1c]
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #1
    bl func_080417BC
    mov r1, r8
    ldr r0, [r1, #0x2c]
    movs r1, #6
    bl func_08047D80
    mov r0, sb
    subs r0, #0xc
    ldrb r0, [r0]
    str r0, [sp]
    mov r2, r8
    ldr r0, [r2, #0x2c]
    str r0, [sp, #4]
    mov r0, sl
    movs r1, #0xe
    movs r2, #0
    movs r3, #8
    bl func_08047E84
    mov r3, r8
    ldr r0, [r3, #0x30]
    ldr r4, .L08042294 @ =0x000003C3
    adds r0, r0, r4
    movs r1, #1
    bl func_0803DC8C
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08042264: .4byte 0x081D53E4
.L08042268: .4byte 0x081C6A18
.L0804226C: .4byte 0x06000C00
.L08042270: .4byte 0x081C7F84
.L08042274: .4byte 0x081C5BE0
.L08042278: .4byte 0x06014800
.L0804227C: .4byte 0x081C7F04
.L08042280: .4byte 0x0203DA60
.L08042284: .4byte 0x081D5358
.L08042288: .4byte 0x0203D918
.L0804228C: .4byte 0x02022C6C
.L08042290: .4byte 0x0202369C
.L08042294: .4byte 0x000003C3
    func_end func_080420F0

    thumb_func_start func_08042298
func_08042298: @ 0x08042298
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r6, r0, #0
    movs r4, #0
    movs r7, #0
    ldr r5, .L080423B4 @ =gpKeySt
    ldr r1, [r5]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080422C2
    movs r0, #1
    bl func_0803DD98
    ldr r0, .L080423B8 @ =0x0203DA0C
    bl func_080A1F54
    adds r0, r6, #0
    bl Proc_Break
.L080422C2:
    mov r0, sp
    bl func_08041FD4
    ldr r1, [r5]
    movs r0, #0x40
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L080422E0
    ldr r0, [r6, #0x30]
    cmp r0, #0
    beq .L080422E0
    subs r0, #1
    str r0, [r6, #0x30]
    movs r4, #1
.L080422E0:
    ldr r2, .L080423B4 @ =gpKeySt
    ldr r1, [r2]
    movs r0, #0x80
    ldrh r1, [r1, #6]
    ands r0, r1
    adds r5, r2, #0
    cmp r0, #0
    beq .L08042300
    ldr r0, [r6, #0x30]
    cmp r0, #1
    bgt .L08042300
    adds r0, #1
    str r0, [r6, #0x30]
    adds r0, r4, #1
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
.L08042300:
    ldr r1, [r5]
    movs r0, #0x20
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08042328
    ldr r0, [r6, #0x30]
    mov r1, sp
    adds r3, r1, r0
    ldrb r1, [r3]
    subs r1, #1
    movs r2, #1
    ands r1, r2
    strb r1, [r3]
    ldrb r1, [r3]
    bl func_0804203C
    adds r0, r4, #1
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
.L08042328:
    ldr r1, [r5]
    movs r0, #0x10
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08042350
    ldr r0, [r6, #0x30]
    mov r2, sp
    adds r3, r2, r0
    ldrb r1, [r3]
    adds r1, #1
    movs r2, #1
    ands r1, r2
    strb r1, [r3]
    ldrb r1, [r3]
    bl func_0804203C
    adds r0, r4, #1
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
.L08042350:
    mov r0, sp
    bl func_08041FF8
    cmp r4, #0
    beq .L080423AA
    movs r0, #3
    bl func_0803DD98
    ldr r5, [r6, #0x30]
    cmp r5, #1
    bne .L0804236A
    movs r7, #2
    rsbs r7, r7, #0
.L0804236A:
    ldr r0, [r6, #0x2c]
    lsls r1, r5, #0x10
    asrs r1, r1, #0x10
    ldr r3, .L080423BC @ =0x081D5358
    mov r2, sp
    adds r4, r2, r5
    lsls r2, r5, #2
    adds r2, r2, r5
    ldrb r4, [r4]
    adds r2, r4, r2
    lsls r2, r2, #2
    adds r3, #4
    adds r2, r2, r3
    ldr r2, [r2]
    adds r2, r2, r7
    lsls r2, r2, #0x13
    asrs r2, r2, #0x10
    lsls r3, r5, #1
    adds r3, r3, r5
    lsls r3, r3, #0x13
    movs r4, #0xc0
    lsls r4, r4, #0xe
    adds r3, r3, r4
    asrs r3, r3, #0x10
    bl func_080488CC
    ldr r0, [r6, #0x30]
    ldr r1, .L080423C0 @ =0x000003C3
    adds r0, r0, r1
    movs r1, #1
    bl func_0803DC8C
.L080423AA:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080423B4: .4byte gpKeySt
.L080423B8: .4byte 0x0203DA0C
.L080423BC: .4byte 0x081D5358
.L080423C0: .4byte 0x000003C3
    func_end func_08042298

    thumb_func_start func_080423C4
func_080423C4: @ 0x080423C4
    push {r4, r5, r6, lr}
    sub sp, #0x28
    adds r2, r0, #0
    adds r3, r1, #0
    mov r0, sp
    ldr r1, .L080423F8 @ =0x081D53F4
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
    cmp r3, #0
    bne .L08042400
    adds r0, r2, #0
    adds r0, #0x58
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08042414
    ldr r0, .L080423FC @ =0x000003B3
    b .L08042420
    .align 2, 0
.L080423F8: .4byte 0x081D53F4
.L080423FC: .4byte 0x000003B3
.L08042400:
    adds r0, r2, #0
    adds r0, #0x58
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08042414
    movs r0, #1
    rsbs r0, r0, #0
    b .L08042420
.L08042414:
    ldr r0, [r2, #0x48]
    lsls r0, r0, #1
    adds r0, r0, r3
    lsls r0, r0, #2
    add r0, sp
    ldr r0, [r0]
.L08042420:
    add sp, #0x28
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080423C4

    thumb_func_start func_08042428
func_08042428: @ 0x08042428
    push {r4, lr}
    sub sp, #0x48
    movs r4, #0
.L0804242E:
    adds r0, r4, #0
    bl IsSaveValid
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08042452
    adds r0, r4, #0
    mov r1, sp
    bl ReadGameSavePlaySt
    mov r0, sp
    bl func_080A0A10
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08042452
    movs r0, #1
    b .L0804245A
.L08042452:
    adds r4, #1
    cmp r4, #2
    ble .L0804242E
    movs r0, #0
.L0804245A:
    add sp, #0x48
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08042428

    thumb_func_start func_08042464
func_08042464: @ 0x08042464
    push {lr}
    bl func_08042428
    ldr r1, .L08042490 @ =0x0203D90C
    strb r0, [r1, #0xa]
    ldr r1, .L08042494 @ =0x0203DC28
    movs r2, #0
    adds r0, r1, #0
    adds r0, #0x1e
.L08042476:
    strh r2, [r0]
    subs r0, #2
    cmp r0, r1
    bge .L08042476
    movs r1, #0
    ldr r3, .L08042498 @ =0x030013F0
    ldr r2, .L0804249C @ =0x030013F4
    ldr r0, .L080424A0 @ =0x0203DC48
    str r1, [r0]
    str r1, [r2]
    str r1, [r3]
    pop {r0}
    bx r0
    .align 2, 0
.L08042490: .4byte 0x0203D90C
.L08042494: .4byte 0x0203DC28
.L08042498: .4byte 0x030013F0
.L0804249C: .4byte 0x030013F4
.L080424A0: .4byte 0x0203DC48
    func_end func_08042464

    thumb_func_start func_080424A4
func_080424A4: @ 0x080424A4
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r6, r0, #0
    ldr r1, .L08042538 @ =0x081D5426
    add r0, sp, #8
    movs r2, #5
    bl memcpy
    ldr r4, .L0804253C @ =0x0203DA0C
    adds r0, r4, #0
    bl func_080A1F90
    ldrb r4, [r4]
    lsls r0, r4, #0x1c
    lsrs r0, r0, #0x1f
    adds r5, r6, #0
    adds r5, #0x59
    movs r4, #0
    strb r0, [r5]
    bl func_08047B34
    ldr r0, .L08042540 @ =0x081C50C4
    ldr r1, .L08042544 @ =0x06014800
    bl Decompress
    ldr r0, .L08042548 @ =0x081C7EA4
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x60
    bl ApplyPaletteExt
    movs r0, #0
    movs r1, #4
    bl func_08047BD4
    ldr r0, .L0804254C @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    bl func_0803DCF0
    str r4, [r6, #0x4c]
    bl func_080A1FB8
    adds r2, r6, #0
    adds r2, #0x58
    strb r0, [r2]
    adds r1, r6, #0
    adds r1, #0x40
    movs r0, #1
    strb r0, [r1]
    movs r1, #0
    ldrsb r1, [r2, r1]
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r1, r0, #0x1f
    adds r0, r6, #0
    adds r0, #0x41
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L08042550
    movs r1, #0
    movs r0, #3
    b .L08042554
    .align 2, 0
.L08042538: .4byte 0x081D5426
.L0804253C: .4byte 0x0203DA0C
.L08042540: .4byte 0x081C50C4
.L08042544: .4byte 0x06014800
.L08042548: .4byte 0x081C7EA4
.L0804254C: .4byte 0x0203DA60
.L08042550:
    movs r1, #1
    movs r0, #4
.L08042554:
    str r0, [r6, #0x50]
    adds r0, r6, #0
    adds r0, #0x44
    strb r1, [r0]
    ldr r0, .L080425DC @ =0x0203D90C
    ldrb r0, [r0, #1]
    str r0, [r6, #0x48]
    adds r2, r6, #0
    adds r2, #0x40
    adds r0, r2, r0
    movs r1, #2
    strb r1, [r0]
    movs r4, #4
    adds r7, r2, #0
    adds r5, r6, #0
    adds r5, #0x3c
.L08042574:
    lsls r3, r4, #0x18
    lsrs r3, r3, #0x18
    adds r0, r7, r4
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r6, #0
    movs r1, #0xb0
    movs r2, #0xa0
    bl func_08048158
    str r0, [r5]
    subs r5, #4
    subs r4, #1
    cmp r4, #0
    bge .L08042574
    ldr r0, [r6, #0x2c]
    movs r1, #0
    bl func_08047D80
    movs r4, #0
    str r4, [sp]
    ldr r0, [r6, #0x2c]
    str r0, [sp, #4]
    add r0, sp, #8
    movs r1, #5
    movs r2, #0
    movs r3, #0xa8
    bl func_08047E84
    ldr r0, .L080425E0 @ =0x08B99600
    bl SetFaceConfig
    movs r0, #2
    str r0, [sp]
    movs r0, #3
    movs r1, #0xdf
    movs r2, #0xd0
    movs r3, #0x50
    bl StartFace
    str r4, [r6, #0x54]
    movs r0, #0x47
    movs r1, #0
    bl StartBgm
    bl func_08044FFC
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080425DC: .4byte 0x0203D90C
.L080425E0: .4byte 0x08B99600
    func_end func_080424A4

    thumb_func_start func_080425E4
func_080425E4: @ 0x080425E4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r7, r0, #0
    movs r1, #0x50
    rsbs r1, r1, #0
    ldr r5, .L0804268C @ =0x081D541C
    ldrb r2, [r5]
    ldr r3, [r7, #0x54]
    movs r4, #0x20
    str r4, [sp]
    movs r0, #4
    bl Interpolate
    adds r6, r0, #0
    ldrb r2, [r5, #1]
    ldr r3, [r7, #0x54]
    str r4, [sp]
    movs r0, #5
    movs r1, #0xa0
    bl Interpolate
    mov sb, r0
    movs r5, #4
    lsls r6, r6, #0x10
    mov r8, r6
    lsls r6, r0, #0x10
    adds r4, r7, #0
    adds r4, #0x3c
.L08042622:
    ldr r0, [r4]
    mov r2, r8
    asrs r1, r2, #0x10
    asrs r2, r6, #0x10
    bl func_080481DC
    subs r4, #4
    subs r5, #1
    cmp r5, #0
    bge .L08042622
    mov r1, sb
    adds r1, #8
    movs r0, #0
    bl func_08047F6C
    ldr r0, [r7, #0x54]
    cmp r0, #0x1f
    ble .L08042678
    movs r0, #0
    str r0, [r7, #0x54]
    adds r0, r7, #0
    movs r1, #0
    bl func_080423C4
    movs r1, #0
    bl func_0803DC8C
    adds r0, r7, #0
    movs r1, #1
    bl func_080423C4
    movs r1, #1
    bl func_0803DC8C
    ldr r0, .L0804268C @ =0x081D541C
    ldrb r1, [r0, #1]
    adds r1, #8
    movs r0, #0
    bl func_08047F6C
    adds r0, r7, #0
    bl Proc_Break
.L08042678:
    ldr r0, [r7, #0x54]
    adds r0, #1
    str r0, [r7, #0x54]
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804268C: .4byte 0x081D541C
    func_end func_080425E4

    thumb_func_start func_08042690
func_08042690: @ 0x08042690
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, [r5, #0x48]
    lsls r0, r0, #1
    movs r7, #4
    ldr r1, .L08042724 @ =0x081D541C
    movs r2, #0x10
    mov r8, r2
    adds r6, r1, #0
    adds r6, #8
    adds r4, r0, r1
    mov sl, r4
    adds r0, #1
    adds r0, r0, r1
    mov sb, r0
.L080426B8:
    ldrb r2, [r6]
    ldr r3, [r5, #0x54]
    mov r0, r8
    str r0, [sp]
    movs r0, #4
    mov r4, sl
    ldrb r1, [r4]
    bl Interpolate
    adds r4, r0, #0
    mov r0, sb
    ldrb r1, [r0]
    ldrb r2, [r6, #1]
    ldr r3, [r5, #0x54]
    mov r0, r8
    str r0, [sp]
    movs r0, #4
    bl Interpolate
    adds r2, r0, #0
    lsls r1, r7, #2
    adds r0, r5, #0
    adds r0, #0x2c
    adds r0, r0, r1
    ldr r0, [r0]
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    adds r1, r4, #0
    bl func_080481DC
    subs r6, #2
    subs r7, #1
    cmp r7, #0
    bge .L080426B8
    ldr r0, [r5, #0x54]
    cmp r0, #0xf
    ble .L0804270C
    adds r0, r5, #0
    bl Proc_Break
.L0804270C:
    ldr r0, [r5, #0x54]
    adds r0, #1
    str r0, [r5, #0x54]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08042724: .4byte 0x081D541C
    func_end func_08042690

    thumb_func_start func_08042728
func_08042728: @ 0x08042728
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r6, r0, #0
    ldr r1, .L080427C4 @ =0x081D5426
    add r0, sp, #8
    movs r2, #5
    bl memcpy
    ldr r4, .L080427C8 @ =0x0203DA0C
    adds r0, r4, #0
    bl func_080A1F90
    ldrb r4, [r4]
    lsls r0, r4, #0x1c
    lsrs r0, r0, #0x1f
    adds r5, r6, #0
    adds r5, #0x59
    movs r4, #0
    strb r0, [r5]
    bl func_08047B34
    ldr r0, .L080427CC @ =0x081C50C4
    ldr r1, .L080427D0 @ =0x06014800
    bl Decompress
    ldr r0, .L080427D4 @ =0x081C7EA4
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x60
    bl ApplyPaletteExt
    movs r0, #0
    movs r1, #4
    bl func_08047BD4
    ldr r0, .L080427D8 @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    bl func_0803DCF0
    str r4, [r6, #0x4c]
    bl func_080A1FB8
    adds r2, r6, #0
    adds r2, #0x58
    strb r0, [r2]
    adds r1, r6, #0
    adds r1, #0x40
    movs r0, #1
    strb r0, [r1]
    movs r1, #0
    ldrsb r1, [r2, r1]
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r1, r0, #0x1f
    adds r0, r6, #0
    adds r0, #0x41
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L080427DC
    movs r1, #0
    movs r0, #3
    b .L080427E0
    .align 2, 0
.L080427C4: .4byte 0x081D5426
.L080427C8: .4byte 0x0203DA0C
.L080427CC: .4byte 0x081C50C4
.L080427D0: .4byte 0x06014800
.L080427D4: .4byte 0x081C7EA4
.L080427D8: .4byte 0x0203DA60
.L080427DC:
    movs r1, #1
    movs r0, #4
.L080427E0:
    str r0, [r6, #0x50]
    adds r0, r6, #0
    adds r0, #0x44
    strb r1, [r0]
    ldr r0, .L080428AC @ =0x0203D90C
    ldrb r0, [r0, #1]
    str r0, [r6, #0x48]
    adds r2, r6, #0
    adds r2, #0x40
    adds r0, r2, r0
    movs r1, #2
    strb r1, [r0]
    ldr r1, [r6, #0x48]
    lsls r1, r1, #1
    movs r5, #4
    mov sb, r2
    ldr r2, .L080428B0 @ =0x081D541C
    adds r0, r1, #1
    adds r0, r0, r2
    mov r8, r0
    adds r4, r6, #0
    adds r4, #0x3c
    adds r1, r1, r2
    mov sl, r1
.L08042810:
    lsls r3, r5, #0x18
    lsrs r3, r3, #0x18
    mov r1, sb
    adds r0, r1, r5
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r6, #0
    mov r2, sl
    ldrb r1, [r2]
    mov r7, r8
    ldrb r2, [r7]
    bl func_08048158
    str r0, [r4]
    subs r4, #4
    subs r5, #1
    cmp r5, #0
    bge .L08042810
    ldr r0, [r6, #0x2c]
    movs r1, #0
    bl func_08047D80
    ldr r1, .L080428B0 @ =0x081D541C
    ldr r0, [r6, #0x48]
    lsls r0, r0, #1
    adds r0, #1
    adds r0, r0, r1
    ldrb r3, [r0]
    adds r3, #8
    movs r4, #0
    str r4, [sp]
    ldr r0, [r6, #0x2c]
    str r0, [sp, #4]
    add r0, sp, #8
    movs r1, #5
    movs r2, #0
    bl func_08047E84
    ldr r0, .L080428B4 @ =0x08B99620
    bl SetFaceConfig
    movs r0, #2
    str r0, [sp]
    movs r0, #3
    movs r1, #0xdf
    movs r2, #0xd0
    movs r3, #0x50
    bl StartFace
    adds r0, r6, #0
    movs r1, #0
    bl func_080423C4
    movs r1, #0
    bl func_0803DC8C
    adds r0, r6, #0
    movs r1, #1
    bl func_080423C4
    movs r1, #1
    bl func_0803DC8C
    bl func_08044FFC
    movs r0, #0x47
    movs r1, #0
    bl StartBgm
    str r4, [r6, #0x54]
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080428AC: .4byte 0x0203D90C
.L080428B0: .4byte 0x081D541C
.L080428B4: .4byte 0x08B99620
    func_end func_08042728

    thumb_func_start func_080428B8
func_080428B8: @ 0x080428B8
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    lsls r1, r1, #0x18
    lsrs r6, r1, #0x18
    ldr r0, [r5, #0x48]
    cmp r0, #1
    bne .L08042938
    ldr r0, .L080429B0 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x20
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08042902
    ldr r1, .L080429B4 @ =0x0203D90C
    ldrb r0, [r1, #5]
    subs r0, #1
    strb r0, [r1, #5]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #2
    bls .L080428EA
    movs r0, #2
    strb r0, [r1, #5]
.L080428EA:
    ldr r0, [r5, #0x30]
    movs r1, #6
    rsbs r1, r1, #0
    movs r2, #4
    str r2, [sp]
    movs r2, #0x34
    movs r3, #0x1f
    bl func_080481C8
    movs r0, #3
    bl func_0803DD98
.L08042902:
    ldr r0, .L080429B0 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08042938
    ldr r4, .L080429B4 @ =0x0203D90C
    ldrb r0, [r4, #5]
    adds r0, #1
    strb r0, [r4, #5]
    ldrb r0, [r4, #5]
    movs r1, #3
    bl __umodsi3
    strb r0, [r4, #5]
    ldr r0, [r5, #0x30]
    movs r1, #0x1f
    str r1, [sp]
    movs r1, #0
    movs r2, #0x3a
    movs r3, #4
    bl func_080481C8
    movs r0, #3
    bl func_0803DD98
.L08042938:
    ldr r1, .L080429B0 @ =gpKeySt
    ldr r2, [r1]
    ldrh r3, [r2, #6]
    movs r0, #0x40
    ands r0, r3
    adds r4, r1, #0
    cmp r0, #0
    beq .L08042972
    ldr r1, [r5, #0x48]
    ldr r0, [r5, #0x4c]
    cmp r1, r0
    bgt .L08042956
    ldrh r2, [r2, #8]
    cmp r3, r2
    bne .L08042972
.L08042956:
    subs r2, r6, #1
    adds r1, r5, #0
    adds r1, #0x40
.L0804295C:
    ldr r0, [r5, #0x48]
    subs r0, #1
    str r0, [r5, #0x48]
    cmp r0, #0
    bge .L08042968
    str r2, [r5, #0x48]
.L08042968:
    ldr r0, [r5, #0x48]
    adds r0, r1, r0
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0804295C
.L08042972:
    ldr r2, [r4]
    ldrh r3, [r2, #6]
    movs r0, #0x80
    ands r0, r3
    cmp r0, #0
    beq .L080429A6
    ldr r1, [r5, #0x48]
    ldr r0, [r5, #0x50]
    cmp r1, r0
    blt .L0804298C
    ldrh r2, [r2, #8]
    cmp r3, r2
    bne .L080429A6
.L0804298C:
    adds r4, r5, #0
    adds r4, #0x40
.L08042990:
    ldr r0, [r5, #0x48]
    adds r0, #1
    str r0, [r5, #0x48]
    adds r1, r6, #0
    bl __modsi3
    str r0, [r5, #0x48]
    adds r0, r4, r0
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08042990
.L080429A6:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080429B0: .4byte gpKeySt
.L080429B4: .4byte 0x0203D90C
    func_end func_080428B8

    thumb_func_start func_080429B8
func_080429B8: @ 0x080429B8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x48]
    movs r1, #5
    bl func_080428B8
    ldr r0, [r4, #0x48]
    cmp r5, r0
    beq .L08042A36
    movs r0, #3
    bl func_0803DD98
    lsls r0, r5, #2
    adds r1, r4, #0
    adds r1, #0x2c
    adds r0, r1, r0
    ldr r3, [r0]
    adds r2, r3, #0
    adds r2, #0x2e
    movs r0, #1
    strb r0, [r2]
    ldr r0, [r4, #0x48]
    lsls r0, r0, #2
    adds r1, r1, r0
    ldr r3, [r1]
    adds r1, r3, #0
    adds r1, #0x2e
    movs r0, #2
    strb r0, [r1]
    movs r0, #0x2a
    ldrsh r1, [r3, r0]
    movs r0, #0x2c
    ldrsh r2, [r3, r0]
    adds r0, r3, #0
    bl func_080489C0
    adds r0, r4, #0
    movs r1, #0
    bl func_080423C4
    movs r1, #0
    bl func_0803DC8C
    adds r0, r4, #0
    movs r1, #1
    bl func_080423C4
    movs r1, #1
    bl func_0803DC8C
    ldr r1, .L08042A84 @ =0x081D541C
    ldr r0, [r4, #0x48]
    lsls r0, r0, #1
    adds r0, #1
    adds r0, r0, r1
    ldrb r1, [r0]
    adds r1, #8
    movs r0, #0
    bl func_08047F50
    ldr r0, [r4, #0x48]
    bl func_08047F8C
.L08042A36:
    ldr r5, .L08042A88 @ =gpKeySt
    ldr r1, [r5]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08042A5A
    movs r0, #0
    str r0, [r4, #0x54]
    movs r0, #2
    bl func_0803DD98
    ldr r1, .L08042A8C @ =0x0203D90C
    ldr r0, [r4, #0x48]
    strb r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08042A5A:
    ldr r1, [r5]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08042A7E
    movs r0, #1
    bl func_0803DD98
    movs r0, #2
    bl FadeBgmOut
    ldr r1, .L08042A8C @ =0x0203D90C
    movs r0, #0xff
    strb r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08042A7E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08042A84: .4byte 0x081D541C
.L08042A88: .4byte gpKeySt
.L08042A8C: .4byte 0x0203D90C
    func_end func_080429B8

    thumb_func_start func_08042A90
func_08042A90: @ 0x08042A90
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r5, r0, #0
    ldr r4, .L08042B3C @ =0x0203D90C
    ldrb r0, [r4]
    cmp r0, #0xff
    bne .L08042AAC
    adds r0, r5, #0
    bl Proc_Break
.L08042AAC:
    ldrb r2, [r4]
    ldr r0, [r5, #0x54]
    cmp r0, #0x10
    bgt .L08042B1A
    movs r0, #4
    mov r8, r0
    lsls r2, r2, #1
    ldr r1, .L08042B40 @ =0x081D541C
    movs r4, #0x10
    mov sb, r4
    adds r0, r2, #1
    adds r0, r0, r1
    str r0, [sp, #4]
    adds r6, r5, #0
    adds r6, #0x3c
    adds r7, r1, #0
    adds r7, #8
    adds r2, r2, r1
    mov sl, r2
.L08042AD2:
    ldrb r1, [r7]
    ldr r3, [r5, #0x54]
    mov r0, sb
    str r0, [sp]
    movs r0, #4
    mov r4, sl
    ldrb r2, [r4]
    bl Interpolate
    adds r4, r0, #0
    ldrb r1, [r7, #1]
    ldr r0, [sp, #4]
    ldrb r2, [r0]
    ldr r3, [r5, #0x54]
    mov r0, sb
    str r0, [sp]
    movs r0, #4
    bl Interpolate
    adds r2, r0, #0
    ldr r0, [r6]
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    adds r1, r4, #0
    bl func_080481DC
    subs r6, #4
    subs r7, #2
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
    mov r0, r8
    cmp r0, #0
    bge .L08042AD2
.L08042B1A:
    ldr r0, [r5, #0x54]
    cmp r0, #0x20
    ble .L08042B26
    adds r0, r5, #0
    bl Proc_Break
.L08042B26:
    ldr r0, [r5, #0x54]
    adds r0, #1
    str r0, [r5, #0x54]
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08042B3C: .4byte 0x0203D90C
.L08042B40: .4byte 0x081D541C
    func_end func_08042A90

    thumb_func_start func_08042B44
func_08042B44: @ 0x08042B44
    push {r4, r5, r6, lr}
    sub sp, #0x14
    adds r6, r0, #0
    mov r1, sp
    ldr r0, .L08042B94 @ =0x081D542C
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    movs r0, #3
    bl EndFaceById
    adds r5, r6, #0
    adds r5, #0x2c
    movs r4, #4
.L08042B62:
    ldm r5!, {r0}
    bl Proc_End
    subs r4, #1
    cmp r4, #0
    bge .L08042B62
    ldr r1, .L08042B98 @ =0x0203D90C
    ldrb r2, [r1]
    adds r0, r2, #0
    cmp r0, #0xff
    bne .L08042BA0
    bl func_0802D3A4
    bl func_08047CA8
    bl func_0803DA04
    ldr r0, .L08042B9C @ =0x08B9333C
    bl Proc_EndEach
    adds r0, r6, #0
    bl Proc_End
    b .L08042BB0
    .align 2, 0
.L08042B94: .4byte 0x081D542C
.L08042B98: .4byte 0x0203D90C
.L08042B9C: .4byte 0x08B9333C
.L08042BA0:
    strb r2, [r1, #1]
    ldrb r1, [r1]
    lsls r0, r1, #2
    add r0, sp
    ldr r0, [r0]
    adds r1, r6, #0
    bl Proc_StartBlocking
.L08042BB0:
    add sp, #0x14
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08042B44

    thumb_func_start func_08042BB8
func_08042BB8: @ 0x08042BB8
    push {r4, lr}
    adds r4, r0, #0
    bl UnpackUiWindowFrameGraphics
    ldr r0, .L08042C20 @ =0x0203DA60
    ldr r1, .L08042C24 @ =0x06001800
    movs r2, #0xc0
    movs r3, #0
    bl InitTextFont
    movs r0, #5
    bl IsSaveValid
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08042BDC
    bl func_080A1AC8
.L08042BDC:
    ldr r1, .L08042C28 @ =0x0203D90C
    movs r0, #0
    strb r0, [r1, #5]
    strb r0, [r1, #3]
    strb r0, [r1, #1]
    bl func_0803D9F4
    bl func_08044ED8
    bl func_0802D380
    ldr r1, .L08042C2C @ =gPlaySt
    movs r0, #0xdf
    ldrb r2, [r1, #0x14]
    ands r0, r2
    strb r0, [r1, #0x14]
    adds r1, #0x41
    movs r0, #0xd
    rsbs r0, r0, #0
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    ldr r0, .L08042C30 @ =0x08B99640
    adds r1, r4, #0
    bl Proc_StartBlocking
    ldr r0, .L08042C34 @ =0x08B9333C
    movs r1, #3
    bl Proc_Start
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08042C20: .4byte 0x0203DA60
.L08042C24: .4byte 0x06001800
.L08042C28: .4byte 0x0203D90C
.L08042C2C: .4byte gPlaySt
.L08042C30: .4byte 0x08B99640
.L08042C34: .4byte 0x08B9333C
    func_end func_08042BB8

    thumb_func_start func_08042C38
func_08042C38: @ 0x08042C38
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08042C54 @ =0x08B98E14
    bl Proc_StartBlocking
    adds r3, r0, #0
    adds r3, #0x33
    movs r2, #0
    movs r1, #7
    strb r1, [r3]
    adds r0, #0x32
    strb r2, [r0]
    pop {r0}
    bx r0
    .align 2, 0
.L08042C54: .4byte 0x08B98E14
    func_end func_08042C38

    thumb_func_start func_08042C58
func_08042C58: @ 0x08042C58
    push {r4, lr}
    adds r4, r0, #0
    bl UnpackUiWindowFrameGraphics
    bl func_0803DA04
    ldr r0, .L08042CA4 @ =0x0203DA60
    ldr r1, .L08042CA8 @ =0x06001800
    movs r2, #0xc0
    movs r3, #0
    bl InitTextFont
    ldr r1, .L08042CAC @ =0x0203D90C
    movs r0, #0
    strb r0, [r1, #5]
    strb r0, [r1, #3]
    strb r0, [r1, #1]
    ldr r1, .L08042CB0 @ =gPlaySt
    adds r1, #0x41
    subs r0, #0xd
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    ldr r0, .L08042CB4 @ =0x08B98E14
    adds r1, r4, #0
    bl Proc_StartBlocking
    adds r2, r0, #0
    adds r2, #0x33
    movs r1, #7
    strb r1, [r2]
    adds r0, #0x32
    movs r1, #1
    strb r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08042CA4: .4byte 0x0203DA60
.L08042CA8: .4byte 0x06001800
.L08042CAC: .4byte 0x0203D90C
.L08042CB0: .4byte gPlaySt
.L08042CB4: .4byte 0x08B98E14
    func_end func_08042C58

    thumb_func_start func_08042CB8
func_08042CB8: @ 0x08042CB8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r5, #0
    ldr r0, .L08042CDC @ =0x08B98B38
    bl Proc_Find
    cmp r0, #0
    beq .L08042CE4
    ldr r0, .L08042CE0 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08042D88
    adds r0, r6, #0
    movs r1, #4
    b .L08042D2E
    .align 2, 0
.L08042CDC: .4byte 0x08B98B38
.L08042CE0: .4byte gpKeySt
.L08042CE4:
    ldr r0, .L08042D38 @ =0x08B98AEC
    ldr r2, [r0]
    movs r0, #6
    ldrsb r0, [r2, r0]
    cmp r0, #1
    bgt .L08042D2A
    adds r1, r0, #0
    adds r0, r2, #0
    adds r0, #0xb
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #2
    beq .L08042D2A
    movs r1, #0
    adds r2, #0x1a
.L08042D02:
    adds r0, r2, r1
    ldrb r0, [r0]
    cmp r0, #0x3c
    bls .L08042D0C
    adds r5, #1
.L08042D0C:
    adds r1, #1
    cmp r1, #3
    ble .L08042D02
    bl func_0803CD64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08042D2A
    ldr r4, .L08042D38 @ =0x08B98AEC
    ldr r2, [r4]
    ldrb r0, [r2, #0x1e]
    cmp r0, #0x3c
    bhi .L08042D2A
    cmp r5, #0
    beq .L08042D3C
.L08042D2A:
    adds r0, r6, #0
    movs r1, #0
.L08042D2E:
    bl EventGotoLabel
.L08042D32:
    movs r0, #0
    b .L08042D8A
    .align 2, 0
.L08042D38: .4byte 0x08B98AEC
.L08042D3C:
    ldr r0, .L08042D84 @ =0x030046C0
    movs r1, #0xdc
    strb r1, [r0]
    ldrb r1, [r2, #6]
    strb r1, [r0, #1]
    ldrb r1, [r2]
    strh r1, [r0, #2]
    movs r1, #0xa
    bl func_0803CE34
    ldr r1, [r4]
    movs r0, #3
    ldrb r2, [r1, #9]
    ands r0, r2
    cmp r0, #3
    bne .L08042D88
    strb r0, [r1, #9]
    bl func_0803D674
    ldr r1, [r4]
    movs r0, #6
    strh r0, [r1, #4]
    movs r0, #0
    strb r0, [r1, #0x1e]
    ldr r0, [r4]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08042D32
    adds r0, r6, #0
    movs r1, #1
    bl EventGotoLabel
    b .L08042D32
    .align 2, 0
.L08042D84: .4byte 0x030046C0
.L08042D88:
    movs r0, #1
.L08042D8A:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08042CB8

    thumb_func_start func_08042D90
func_08042D90: @ 0x08042D90
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08042DAC @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #9]
    cmp r0, #3
    bls .L08042DA6
    adds r0, r1, #0
    movs r1, #0
    bl EventGotoLabel
.L08042DA6:
    pop {r0}
    bx r0
    .align 2, 0
.L08042DAC: .4byte 0x08B98AEC
    func_end func_08042D90

    thumb_func_start func_08042DB0
func_08042DB0: @ 0x08042DB0
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    bl GetTalkChoiceResult
    cmp r0, #1
    bne .L08042DC8
    ldr r1, .L08042DC4 @ =0x0203DC98
    movs r0, #0
    b .L08042DCC
    .align 2, 0
.L08042DC4: .4byte 0x0203DC98
.L08042DC8:
    ldr r1, .L08042DF4 @ =0x0203DC98
    movs r0, #1
.L08042DCC:
    str r0, [r1]
    adds r4, r1, #0
    mov r0, sp
    ldr r1, [r4]
    strb r1, [r0]
    movs r1, #4
    bl func_0803D274
    ldr r0, [r4]
    cmp r0, #0
    beq .L08042DEA
    adds r0, r5, #0
    movs r1, #5
    bl EventGotoLabel
.L08042DEA:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08042DF4: .4byte 0x0203DC98
    func_end func_08042DB0

    thumb_func_start func_08042DF8
func_08042DF8: @ 0x08042DF8
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    movs r4, #0
    movs r1, #0
    ldr r0, .L08042E40 @ =0x08B98AEC
    ldr r0, [r0]
    adds r2, r0, #0
    adds r2, #0x1a
.L08042E0A:
    adds r0, r2, r1
    ldrb r0, [r0]
    cmp r0, #0x3c
    bls .L08042E14
    adds r4, #1
.L08042E14:
    adds r1, #1
    cmp r1, #3
    ble .L08042E0A
    bl func_0803CD64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08042E32
    ldr r0, .L08042E40 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #0x1e]
    cmp r0, #0x3c
    bhi .L08042E32
    cmp r4, #0
    beq .L08042E44
.L08042E32:
    adds r0, r5, #0
    movs r1, #0
    bl EventGotoLabel
.L08042E3A:
    movs r0, #0
    b .L08042E68
    .align 2, 0
.L08042E40: .4byte 0x08B98AEC
.L08042E44:
    add r1, sp, #4
    mov r0, sp
    movs r2, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L08042E66
    mov r0, sp
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08042E3A
    adds r0, r5, #0
    movs r1, #5
    bl EventGotoLabel
    b .L08042E3A
.L08042E66:
    movs r0, #1
.L08042E68:
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08042DF8

    thumb_func_start func_08042E70
func_08042E70: @ 0x08042E70
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl ClearText
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0
    adds r3, r5, #0
    bl Text_InsertDrawString
    adds r0, r4, #0
    movs r1, #0x36
    movs r2, #2
    adds r3, r6, #0
    bl func_0803D964
    ldr r3, .L08042EB0 @ =0x081D5440
    adds r0, r4, #0
    movs r1, #0x3e
    movs r2, #0
    bl Text_InsertDrawString
    ldr r1, .L08042EB4 @ =0x02022F7E
    adds r0, r4, #0
    bl PutText
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08042EB0: .4byte 0x081D5440
.L08042EB4: .4byte 0x02022F7E
    func_end func_08042E70

    thumb_func_start func_08042EB8
func_08042EB8: @ 0x08042EB8
    push {r4, r5, lr}
    sub sp, #0xc
    adds r5, r0, #0
    adds r5, #0x3c
    adds r0, #0x3b
    ldrb r1, [r5]
    ldrb r0, [r0]
    cmp r1, r0
    bhs .L08042F10
    ldr r0, .L08042F18 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08042EDC
    movs r0, #0x7d
    bl m4aSongNumStart
.L08042EDC:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    ldr r0, .L08042F1C @ =0x0203D970
    ldr r1, .L08042F20 @ =0x081D5444
    ldrb r2, [r5]
    bl func_08042E70
    movs r0, #0x80
    lsls r0, r0, #1
    ldr r2, .L08042F24 @ =0x0202303C
    movs r3, #0xc0
    lsls r3, r3, #7
    movs r1, #0x64
    str r1, [sp]
    ldrb r4, [r5]
    str r4, [sp, #4]
    ldrb r5, [r5]
    subs r1, r1, r5
    str r1, [sp, #8]
    movs r1, #0xe
    bl func_0807F848
    movs r0, #1
    bl EnableBgSync
.L08042F10:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08042F18: .4byte gPlaySt
.L08042F1C: .4byte 0x0203D970
.L08042F20: .4byte 0x081D5444
.L08042F24: .4byte 0x0202303C
    func_end func_08042EB8

    thumb_func_start func_08042F28
func_08042F28: @ 0x08042F28
    push {r4, r5, lr}
    sub sp, #0xc
    adds r5, r0, #0
    adds r5, #0x3c
    adds r0, #0x3b
    ldrb r1, [r5]
    ldrb r0, [r0]
    cmp r1, r0
    bhs .L08042F80
    ldr r0, .L08042F88 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08042F4C
    movs r0, #0x7d
    bl m4aSongNumStart
.L08042F4C:
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    ldr r0, .L08042F8C @ =0x0203D970
    ldr r1, .L08042F90 @ =0x081D544C
    ldrb r2, [r5]
    bl func_08042E70
    movs r0, #0x80
    lsls r0, r0, #1
    ldr r2, .L08042F94 @ =0x0202303C
    movs r3, #0xc0
    lsls r3, r3, #7
    movs r1, #0x64
    str r1, [sp]
    ldrb r4, [r5]
    str r4, [sp, #4]
    ldrb r5, [r5]
    subs r1, r1, r5
    str r1, [sp, #8]
    movs r1, #0xe
    bl func_0807F848
    movs r0, #1
    bl EnableBgSync
.L08042F80:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08042F88: .4byte gPlaySt
.L08042F8C: .4byte 0x0203D970
.L08042F90: .4byte 0x081D544C
.L08042F94: .4byte 0x0202303C
    func_end func_08042F28

    thumb_func_start func_08042F98
func_08042F98: @ 0x08042F98
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r0, .L08042FDC @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    ldr r0, .L08042FE0 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08042FF4
    ldr r1, .L08042FE4 @ =0x03005E70
    ldr r0, .L08042FE8 @ =0x0E007400
    ldr r4, .L08042FEC @ =0x02000000
    movs r5, #0xc0
    lsls r5, r5, #4
    ldr r3, [r1]
    adds r1, r4, #0
    adds r2, r5, #0
    bl _call_via_r3
    ldr r2, .L08042FF0 @ =func_08042EB8
    str r6, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #0
    bl func_0803D870
    b .L08042FFE
    .align 2, 0
.L08042FDC: .4byte 0x0203DA60
.L08042FE0: .4byte 0x08B98AEC
.L08042FE4: .4byte 0x03005E70
.L08042FE8: .4byte 0x0E007400
.L08042FEC: .4byte 0x02000000
.L08042FF0: .4byte func_08042EB8
.L08042FF4:
    ldr r0, .L08043008 @ =0x02000000
    ldr r1, .L0804300C @ =func_08042F28
    adds r2, r6, #0
    bl func_0803D8F0
.L08042FFE:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08043008: .4byte 0x02000000
.L0804300C: .4byte func_08042F28
    func_end func_08042F98

    thumb_func_start func_08043010
func_08043010: @ 0x08043010
    push {lr}
    bl func_0803D91C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08043020
    movs r0, #1
    b .L08043052
.L08043020:
    ldr r0, .L08043058 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08043032
    movs r0, #0x7e
    bl m4aSongNumStart
.L08043032:
    bl InitTalkTextFont
    ldr r0, .L0804305C @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08043050
    ldr r0, .L08043060 @ =0x02000000
    ldr r1, .L08043064 @ =0x0E007400
    movs r2, #0xc0
    lsls r2, r2, #4
    bl WriteAndVerifySramFast
.L08043050:
    movs r0, #0
.L08043052:
    pop {r1}
    bx r1
    .align 2, 0
.L08043058: .4byte gPlaySt
.L0804305C: .4byte 0x08B98AEC
.L08043060: .4byte 0x02000000
.L08043064: .4byte 0x0E007400
    func_end func_08043010

    thumb_func_start func_08043068
func_08043068: @ 0x08043068
    ldr r0, .L08043078 @ =0x08B98AEC
    ldr r2, [r0]
    movs r1, #6
    ldrsb r1, [r2, r1]
    movs r0, #1
    lsls r0, r1
    strb r0, [r2, #0xa]
    bx lr
    .align 2, 0
.L08043078: .4byte 0x08B98AEC
    func_end func_08043068

    thumb_func_start func_0804307C
func_0804307C: @ 0x0804307C
    push {r4, lr}
    ldr r0, .L080430A8 @ =0x0300479C
    movs r2, #0
    movs r1, #0xd9
    strb r1, [r0]
    ldr r4, .L080430AC @ =0x08B98AEC
    ldr r1, [r4]
    ldrb r1, [r1, #6]
    strb r1, [r0, #1]
    strh r2, [r0, #2]
    movs r1, #4
    bl func_0803CE34
    ldr r4, [r4]
    ldrb r0, [r4, #9]
    ldrb r1, [r4, #0xa]
    ands r0, r1
    ldrb r1, [r4, #9]
    cmp r0, r1
    beq .L080430B0
    movs r0, #1
    b .L080430BC
    .align 2, 0
.L080430A8: .4byte 0x0300479C
.L080430AC: .4byte 0x08B98AEC
.L080430B0:
    movs r1, #6
    ldrsb r1, [r4, r1]
    movs r0, #1
    lsls r0, r1
    strb r0, [r4, #0xa]
    movs r0, #0
.L080430BC:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0804307C

    thumb_func_start func_080430C4
func_080430C4: @ 0x080430C4
    push {r4, r5, lr}
    sub sp, #0xc
    movs r0, #6
    bl ApplyUiStatBarPal
    movs r5, #0
    str r5, [sp]
    movs r0, #0xd
    movs r1, #0xb
    movs r2, #0x10
    movs r3, #6
    bl DrawUiFrame2
    ldr r0, .L08043120 @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    ldr r4, .L08043124 @ =0x0203D970
    ldr r0, .L08043128 @ =0x00000771
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #0
    bl func_08042E70
    movs r0, #0x80
    lsls r0, r0, #1
    ldr r2, .L0804312C @ =0x0202303C
    movs r3, #0xc0
    lsls r3, r3, #7
    movs r1, #0x64
    str r1, [sp]
    str r5, [sp, #4]
    str r1, [sp, #8]
    movs r1, #0xd
    bl func_0807F848
    movs r0, #1
    bl EnableBgSync
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08043120: .4byte 0x0203DA60
.L08043124: .4byte 0x0203D970
.L08043128: .4byte 0x00000771
.L0804312C: .4byte 0x0202303C
    func_end func_080430C4

    thumb_func_start func_08043130
func_08043130: @ 0x08043130
    ldr r2, .L08043150 @ =gDispIo
    adds r2, #0x36
    movs r0, #1
    ldrb r1, [r2]
    orrs r0, r1
    movs r1, #2
    orrs r0, r1
    movs r1, #4
    orrs r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r2]
    bx lr
    .align 2, 0
.L08043150: .4byte gDispIo
    func_end func_08043130

    thumb_func_start func_08043154
func_08043154: @ 0x08043154
    push {r4, lr}
    adds r4, r0, #0
    bl GetTalkChoiceResult
    cmp r0, #1
    beq .L08043168
    adds r0, r4, #0
    movs r1, #1
    bl EventGotoLabel
.L08043168:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08043154

    thumb_func_start func_08043170
func_08043170: @ 0x08043170
    push {r4, lr}
    adds r4, r0, #0
    bl GetTalkChoiceResult
    cmp r0, #1
    bne .L08043192
    bl func_0809E5AC
    bl func_0809E688
    bl func_0809F1F4
    bl func_0809F668
    bl func_0809F78C
    b .L0804319A
.L08043192:
    adds r0, r4, #0
    movs r1, #1
    bl EventGotoLabel
.L0804319A:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08043170

    thumb_func_start func_080431A0
func_080431A0: @ 0x080431A0
    push {lr}
    movs r0, #0xff
    bl SoftReset
    pop {r0}
    bx r0
    func_end func_080431A0

    thumb_func_start func_080431AC
func_080431AC: @ 0x080431AC
    push {lr}
    adds r1, r0, #0
    ldr r0, .L080431BC @ =0x08B9981C
    bl func_0800AF68
    pop {r0}
    bx r0
    .align 2, 0
.L080431BC: .4byte 0x08B9981C
    func_end func_080431AC

    thumb_func_start func_080431C0
func_080431C0: @ 0x080431C0
    push {lr}
    sub sp, #4
    ldr r3, .L080431DC @ =0x08B99868
    movs r0, #0
    str r0, [sp]
    movs r0, #4
    movs r1, #0x38
    movs r2, #4
    bl PutSprite
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L080431DC: .4byte 0x08B99868
    func_end func_080431C0

    thumb_func_start func_080431E0
func_080431E0: @ 0x080431E0
    push {r4, r5, r6, lr}
    sub sp, #0x18
    adds r6, r0, #0
    ldr r1, .L0804337C @ =0x081D5454
    mov r0, sp
    movs r2, #0x18
    bl memcpy
    mov r0, sp
    bl InitBgs
    ldr r3, .L08043380 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    bl func_08047CA8
    ldr r4, .L08043384 @ =0x081D245C
    movs r0, #1
    bl GetBgChrOffset
    adds r1, r0, #0
    ldr r2, .L08043388 @ =0x06000C00
    adds r1, r1, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L0804338C @ =0x081D26E0
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08043390 @ =0x081D2700
    ldr r1, .L08043394 @ =0x06014000
    bl Decompress
    ldr r0, .L08043398 @ =0x081D2B1C
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r4, .L0804339C @ =gBg1Tm
    ldr r1, .L080433A0 @ =0x081D258C
    ldr r5, .L080433A4 @ =0x00004060
    adds r0, r4, #0
    adds r2, r5, #0
    bl TmApplyTsa_thm
    movs r0, #0x88
    lsls r0, r0, #3
    adds r4, r4, r0
    ldr r1, .L080433A8 @ =0x081D2628
    adds r0, r4, #0
    adds r2, r5, #0
    bl TmApplyTsa_thm
    ldr r4, .L080433AC @ =0x081CE25C
    movs r0, #3
    bl GetBgChrOffset
    adds r1, r0, #0
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r1, r1, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L080433B0 @ =0x081D1DF8
    ldr r4, .L080433B4 @ =gBg3Tm
    adds r1, r4, #0
    bl Decompress
    ldr r0, .L080433B8 @ =0x081D235C
    movs r2, #0x80
    lsls r2, r2, #1
    movs r1, #0xe0
    bl ApplyPaletteExt
    movs r0, #0xe0
    lsls r0, r0, #7
    adds r1, r0, #0
    movs r5, #0xa0
    lsls r5, r5, #2
.L080432AC:
    ldrh r2, [r4]
    adds r0, r1, r2
    strh r0, [r4]
    adds r4, #2
    subs r5, #1
    cmp r5, #0
    bne .L080432AC
    ldr r0, .L080433BC @ =0x08B99870
    adds r1, r6, #0
    bl Proc_Start
    ldr r0, .L080433C0 @ =0x0203DA60
    bl SetTextFont
    bl InitSystemTextFont
    bl ResetTextFont
    ldr r4, .L080433C4 @ =0x0203DC08
    adds r0, r4, #0
    movs r1, #0x18
    bl InitText
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L080433C8 @ =0x0000118D
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0
    bl Text_InsertDrawString
    ldr r1, .L080433CC @ =0x020230EE
    adds r0, r4, #0
    bl PutText
    movs r0, #0xb
    bl EnableBgSync
    movs r0, #0
    movs r1, #0
    movs r2, #4
    bl SetBgOffset
    ldr r3, .L08043380 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #8
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r5, [r0]
    ldr r0, .L080433D0 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    movs r1, #2
    orrs r0, r1
    ldr r1, .L080433D4 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    bl m4aSoundVSyncOff
    ldr r0, .L080433D8 @ =0x030046B0
    ldr r1, .L080433DC @ =SioLinkLoader
    str r1, [r0]
    ldr r2, .L080433E0 @ =0x0300474C
    ldr r0, .L080433E4 @ =SioLinkLoaderEnd
    subs r0, r0, r1
    str r0, [r2]
    ldr r0, .L080433E8 @ =0x03004750
    str r1, [r0, #0x28]
    adds r1, r0, #0
    adds r1, #0x4b
    strb r5, [r1]
    bl func_080493E8
    ldr r0, .L080433EC @ =0x08B98AEC
    ldr r1, [r0]
    movs r0, #4
    strb r0, [r1, #0xb]
    adds r0, r6, #0
    adds r0, #0x64
    strh r5, [r0]
    add sp, #0x18
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804337C: .4byte 0x081D5454
.L08043380: .4byte gDispIo
.L08043384: .4byte 0x081D245C
.L08043388: .4byte 0x06000C00
.L0804338C: .4byte 0x081D26E0
.L08043390: .4byte 0x081D2700
.L08043394: .4byte 0x06014000
.L08043398: .4byte 0x081D2B1C
.L0804339C: .4byte gBg1Tm
.L080433A0: .4byte 0x081D258C
.L080433A4: .4byte 0x00004060
.L080433A8: .4byte 0x081D2628
.L080433AC: .4byte 0x081CE25C
.L080433B0: .4byte 0x081D1DF8
.L080433B4: .4byte gBg3Tm
.L080433B8: .4byte 0x081D235C
.L080433BC: .4byte 0x08B99870
.L080433C0: .4byte 0x0203DA60
.L080433C4: .4byte 0x0203DC08
.L080433C8: .4byte 0x0000118D
.L080433CC: .4byte 0x020230EE
.L080433D0: .4byte 0x0000FFE0
.L080433D4: .4byte 0x0000E0FF
.L080433D8: .4byte 0x030046B0
.L080433DC: .4byte SioLinkLoader
.L080433E0: .4byte 0x0300474C
.L080433E4: .4byte SioLinkLoaderEnd
.L080433E8: .4byte 0x03004750
.L080433EC: .4byte 0x08B98AEC
    func_end func_080431E0

    thumb_func_start func_080433F0
func_080433F0: @ 0x080433F0
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    movs r2, #1
    ldr r5, .L08043410 @ =0x03004750
    movs r4, #1
    ldr r3, .L08043414 @ =0x08B98AEC
.L080433FE:
    ldrb r1, [r5, #0x1d]
    asrs r1, r2
    ands r1, r4
    cmp r1, #0
    bne .L08043418
    ldr r0, [r3]
    adds r0, #0xb
    adds r0, r0, r2
    b .L08043434
    .align 2, 0
.L08043410: .4byte 0x03004750
.L08043414: .4byte 0x08B98AEC
.L08043418:
    ldrb r0, [r5, #0x1e]
    asrs r0, r2
    ands r0, r4
    cmp r0, #0
    bne .L0804342C
    ldr r0, [r3]
    adds r0, #0xb
    adds r0, r0, r2
    strb r4, [r0]
    b .L08043436
.L0804342C:
    ldr r0, [r3]
    adds r0, #0xb
    adds r0, r0, r2
    movs r1, #3
.L08043434:
    strb r1, [r0]
.L08043436:
    adds r2, #1
    cmp r2, #3
    ble .L080433FE
    adds r0, r7, #0
    adds r0, #0x64
    movs r2, #0
    ldrsh r1, [r0, r2]
    adds r6, r0, #0
    cmp r1, #0
    bne .L0804346C
    ldr r0, .L08043468 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0804346C
    movs r0, #1
    bl func_0803DD98
    adds r0, r7, #0
    movs r1, #0xb
    bl Proc_Goto
    b .L080434D6
    .align 2, 0
.L08043468: .4byte gpKeySt
.L0804346C:
    adds r4, r6, #0
    movs r0, #0
    ldrsh r3, [r4, r0]
    cmp r3, #1
    bne .L08043490
    ldr r0, .L080434E0 @ =0x03004750
    ldr r1, .L080434E4 @ =0x030046B0
    ldr r1, [r1]
    adds r1, #0xc0
    ldr r2, .L080434E8 @ =0x0300474C
    ldr r2, [r2]
    subs r2, #0xc0
    str r3, [sp]
    movs r3, #4
    bl func_08049880
    movs r0, #2
    strh r0, [r4]
.L08043490:
    ldr r4, .L080434E0 @ =0x03004750
    adds r0, r4, #0
    bl func_08049424
    movs r1, #0
    ldrsh r0, [r6, r1]
    cmp r0, #0
    bne .L080434C6
    ldrb r0, [r4, #0x18]
    cmp r0, #0
    bne .L080434C6
    ldrb r5, [r4, #0x1e]
    cmp r5, #2
    bne .L080434C6
    ldr r0, .L080434E4 @ =0x030046B0
    ldr r1, [r0]
    adds r1, #0xc0
    ldr r0, .L080434E8 @ =0x0300474C
    ldr r2, [r0]
    subs r2, #0xc0
    movs r0, #1
    str r0, [sp]
    adds r0, r4, #0
    movs r3, #4
    bl func_08049880
    strh r5, [r6]
.L080434C6:
    ldr r0, .L080434E0 @ =0x03004750
    bl func_08049944
    cmp r0, #0
    beq .L080434D6
    adds r0, r7, #0
    bl Proc_Break
.L080434D6:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080434E0: .4byte 0x03004750
.L080434E4: .4byte 0x030046B0
.L080434E8: .4byte 0x0300474C
    func_end func_080433F0

    thumb_func_start func_080434EC
func_080434EC: @ 0x080434EC
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L08043528 @ =0x00002586
    mov r0, sp
    strh r1, [r0]
    ldr r0, .L0804352C @ =0x08B98B60
    movs r1, #0
    bl Proc_Start
    ldr r0, .L08043530 @ =0x08B98B88
    adds r1, r4, #0
    bl Proc_Start
    ldr r0, .L08043534 @ =0x08B98B38
    adds r1, r4, #0
    bl Proc_Start
    movs r1, #1
    rsbs r1, r1, #0
    mov r0, sp
    bl func_0803D0E4
    bl m4aSoundVSyncOn
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08043528: .4byte 0x00002586
.L0804352C: .4byte 0x08B98B60
.L08043530: .4byte 0x08B98B88
.L08043534: .4byte 0x08B98B38
    func_end func_080434EC

    thumb_func_start func_08043538
func_08043538: @ 0x08043538
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r4, #0
    ldr r0, .L08043584 @ =0x08B98B38
    bl Proc_Find
    cmp r0, #0
    bne .L080435C8
    movs r1, #0
    ldr r0, .L08043588 @ =0x08B98AEC
    ldr r0, [r0]
    adds r2, r0, #0
    adds r2, #0x1a
.L08043552:
    adds r0, r2, r1
    ldrb r0, [r0]
    cmp r0, #0x3c
    bls .L0804355C
    adds r4, #1
.L0804355C:
    adds r1, #1
    cmp r1, #3
    ble .L08043552
    bl func_0803CD64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0804357A
    ldr r5, .L08043588 @ =0x08B98AEC
    ldr r2, [r5]
    ldrb r0, [r2, #0x1e]
    cmp r0, #0x3c
    bhi .L0804357A
    cmp r4, #0
    beq .L0804358C
.L0804357A:
    adds r0, r6, #0
    movs r1, #0xa
    bl Proc_Goto
    b .L080435C8
    .align 2, 0
.L08043584: .4byte 0x08B98B38
.L08043588: .4byte 0x08B98AEC
.L0804358C:
    ldr r0, .L080435D0 @ =0x030046C0
    movs r1, #0xdc
    strb r1, [r0]
    ldrb r1, [r2, #6]
    strb r1, [r0, #1]
    ldrb r1, [r2]
    strh r1, [r0, #2]
    movs r1, #0xa
    bl func_0803CE34
    ldr r1, [r5]
    movs r0, #3
    ldrb r2, [r1, #9]
    ands r0, r2
    cmp r0, #3
    bne .L080435C8
    strb r0, [r1, #9]
    bl func_0803D674
    ldr r0, [r5]
    movs r1, #6
    strh r1, [r0, #4]
    movs r1, #0
    strb r1, [r0, #0x1e]
    movs r0, #3
    bl func_0803D500
    adds r0, r6, #0
    bl Proc_Break
.L080435C8:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080435D0: .4byte 0x030046C0
    func_end func_08043538

    thumb_func_start func_080435D4
func_080435D4: @ 0x080435D4
    push {lr}
    ldr r0, .L080435F8 @ =0x08B98B60
    bl Proc_EndEach
    ldr r0, .L080435FC @ =0x08B98B88
    bl Proc_EndEach
    ldr r0, .L08043600 @ =0x08B98B38
    bl Proc_EndEach
    bl func_0803C4F8
    bl func_08081B44
    bl func_0803C414
    pop {r0}
    bx r0
    .align 2, 0
.L080435F8: .4byte 0x08B98B60
.L080435FC: .4byte 0x08B98B88
.L08043600: .4byte 0x08B98B38
    func_end func_080435D4

    thumb_func_start func_08043604
func_08043604: @ 0x08043604
    push {lr}
    ldr r2, .L08043614 @ =0x081D546C
    movs r0, #8
    movs r1, #0x10
    bl func_0800530C
    pop {r0}
    bx r0
    .align 2, 0
.L08043614: .4byte 0x081D546C
    func_end func_08043604

    thumb_func_start func_08043618
func_08043618: @ 0x08043618
    ldrb r0, [r0]
    cmp r0, #2
    bgt .L08043626
    cmp r0, #0
    blt .L08043626
    movs r0, #1
    b .L08043628
.L08043626:
    movs r0, #0
.L08043628:
    bx lr
    func_end func_08043618

    thumb_func_start func_0804362C
func_0804362C: @ 0x0804362C
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r4, .L08043654 @ =0x02000C00
    ldr r2, .L08043658 @ =func_08043618
    adds r0, r4, #0
    mov r1, sp
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0804367E
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0804365C
    adds r0, r5, #0
    bl Proc_Break
    b .L0804367E
    .align 2, 0
.L08043654: .4byte 0x02000C00
.L08043658: .4byte func_08043618
.L0804365C:
    cmp r0, #0
    blt .L0804367E
    cmp r0, #2
    bgt .L0804367E
    ldr r0, .L08043688 @ =0x06015000
    movs r1, #6
    bl func_08082528
    ldr r2, .L0804368C @ =0x00001193
    movs r0, #0x38
    movs r1, #0x38
    bl func_08081A94
    adds r0, r5, #0
    movs r1, #0xa
    bl Proc_Goto
.L0804367E:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08043688: .4byte 0x06015000
.L0804368C: .4byte 0x00001193
    func_end func_0804362C

    thumb_func_start func_08043690
func_08043690: @ 0x08043690
    ldrb r0, [r0]
    cmp r0, #0x55
    beq .L0804369A
    movs r0, #0
    b .L0804369C
.L0804369A:
    movs r0, #1
.L0804369C:
    bx lr
    func_end func_08043690

    thumb_func_start func_080436A0
func_080436A0: @ 0x080436A0
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, .L080436DC @ =0x02000C04
    ldr r2, .L080436E0 @ =func_08043690
    adds r0, r5, #0
    mov r1, sp
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L080436F6
    ldrb r0, [r5, #4]
    cmp r0, #0
    bne .L080436EC
    ldr r0, .L080436E4 @ =0x06015000
    movs r1, #6
    bl func_08082528
    ldr r2, .L080436E8 @ =0x00001194
    movs r0, #0x38
    movs r1, #0x38
    bl func_08081A94
    adds r0, r4, #0
    movs r1, #0xa
    bl Proc_Goto
    b .L080436F6
    .align 2, 0
.L080436DC: .4byte 0x02000C04
.L080436E0: .4byte func_08043690
.L080436E4: .4byte 0x06015000
.L080436E8: .4byte 0x00001194
.L080436EC:
    movs r0, #0
    str r0, [r4, #0x58]
    adds r0, r4, #0
    bl Proc_Break
.L080436F6:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080436A0

    thumb_func_start func_08043700
func_08043700: @ 0x08043700
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r4, [r5, #0x54]
    ldr r0, .L08043774 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x40
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08043724
    ldr r0, [r4, #0x44]
    cmp r0, #0
    ble .L08043724
    subs r0, #1
    str r0, [r4, #0x44]
    movs r0, #3
    bl func_0803DD98
.L08043724:
    ldr r0, .L08043774 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08043742
    ldr r0, [r4, #0x44]
    cmp r0, #1
    bgt .L08043742
    adds r0, #1
    str r0, [r4, #0x44]
    movs r0, #3
    bl func_0803DD98
.L08043742:
    ldr r0, .L08043774 @ =gpKeySt
    ldr r1, [r0]
    movs r6, #1
    adds r0, r6, #0
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08043782
    ldr r0, .L08043778 @ =0x02000C04
    adds r0, #1
    ldr r1, [r4, #0x44]
    adds r1, r1, r0
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0804377C
    movs r0, #2
    bl func_0803DD98
    str r6, [r4, #0x50]
    ldr r0, [r4, #0x44]
    str r0, [r5, #0x60]
    adds r0, r5, #0
    bl Proc_Break
    b .L08043782
    .align 2, 0
.L08043774: .4byte gpKeySt
.L08043778: .4byte 0x02000C04
.L0804377C:
    movs r0, #0
    bl func_0803DD98
.L08043782:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08043700

    thumb_func_start func_08043788
func_08043788: @ 0x08043788
    ldrb r0, [r0]
    cmp r0, #0x66
    beq .L08043792
    movs r0, #0
    b .L08043794
.L08043792:
    movs r0, #1
.L08043794:
    bx lr
    func_end func_08043788

    thumb_func_start func_08043798
func_08043798: @ 0x08043798
    push {r4, r5, lr}
    sub sp, #0x28
    adds r5, r0, #0
    ldr r4, .L080437F8 @ =0x02000C1C
    add r1, sp, #0x24
    ldr r2, .L080437FC @ =func_08043788
    adds r0, r4, #0
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L0804381E
    bl func_08081B44
    movs r0, #0
    bl func_0803D500
    ldr r0, .L08043800 @ =0x06016800
    movs r1, #0xd
    bl func_08082528
    ldr r2, .L08043804 @ =0x00001195
    movs r0, #0x40
    movs r1, #0x48
    bl func_08081A94
    mov r0, sp
    bl func_0809F000
    adds r3, r4, #4
    mov r2, sp
    movs r1, #7
.L080437D8:
    ldm r3!, {r0}
    stm r2!, {r0}
    subs r1, #1
    cmp r1, #0
    bge .L080437D8
    ldr r1, .L08043808 @ =0x02000C04
    adds r1, #5
    ldr r0, [r5, #0x60]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0x19
    bne .L0804380C
    mov r1, sp
    movs r0, #2
    b .L08043810
    .align 2, 0
.L080437F8: .4byte 0x02000C1C
.L080437FC: .4byte func_08043788
.L08043800: .4byte 0x06016800
.L08043804: .4byte 0x00001195
.L08043808: .4byte 0x02000C04
.L0804380C:
    mov r1, sp
    movs r0, #1
.L08043810:
    strh r0, [r1, #0x20]
    mov r0, sp
    bl func_0809F058
    adds r0, r5, #0
    bl Proc_Break
.L0804381E:
    add sp, #0x28
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08043798

    thumb_func_start func_08043828
func_08043828: @ 0x08043828
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    mov sb, r0
    adds r7, r1, #0
    mov sl, r3
    lsls r2, r2, #0x18
    lsrs r4, r2, #0x18
    str r4, [sp, #0x10]
    movs r6, #0
    cmp r7, #0
    bne .L08043848
    b .L08043960
.L08043848:
    cmp r7, #0x32
    bne .L0804387C
    ldr r7, .L08043878 @ =0x00001186
    adds r0, r7, #0
    bl DecodeMsg
    bl GetStringTextLen
    adds r5, r0, #0
    cmp r4, #0
    beq .L08043864
    movs r0, #0x30
    subs r0, r0, r5
    asrs r6, r0, #1
.L08043864:
    adds r0, r7, #0
    bl DecodeMsg
    adds r3, r0, #0
    mov r0, sb
    adds r1, r6, #0
    mov r2, sl
    bl Text_InsertDrawString
    b .L08043960
    .align 2, 0
.L08043878: .4byte 0x00001186
.L0804387C:
    ldr r5, [sp]
    asrs r4, r7, #1
    adds r0, r4, #0
    movs r1, #0xa
    bl __divsi3
    mov r8, r0
    adds r0, r4, #0
    movs r1, #0xa
    bl __modsi3
    adds r4, r0, #0
    mov r0, r8
    cmp r0, #0
    beq .L080438B0
    ldr r1, .L08043970 @ =0x08B99880
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    bl DecodeMsg
    bl GetStringTextLen
    subs r0, #1
    str r0, [sp, #4]
    adds r5, r5, r0
.L080438B0:
    lsls r0, r4, #1
    ldr r1, .L08043970 @ =0x08B99880
    adds r0, r0, r1
    str r0, [sp, #0x14]
    ldrh r0, [r0]
    bl DecodeMsg
    bl GetStringTextLen
    subs r0, #1
    str r0, [sp, #8]
    adds r5, r5, r0
    ldr r0, .L08043974 @ =0x00001185
    bl DecodeMsg
    bl GetStringTextLen
    str r0, [sp, #0xc]
    adds r5, r5, r0
    movs r4, #1
    ands r4, r7
    cmp r4, #0
    beq .L080438EA
    ldr r0, .L08043978 @ =0x00001188
    bl DecodeMsg
    bl GetStringTextLen
    adds r5, r5, r0
.L080438EA:
    ldr r2, [sp, #0x10]
    cmp r2, #0
    beq .L080438F6
    movs r0, #0x30
    subs r0, r0, r5
    asrs r6, r0, #1
.L080438F6:
    ldr r0, [sp]
    adds r6, r6, r0
    mov r0, r8
    cmp r0, #0
    beq .L0804391C
    lsls r0, r0, #1
    ldr r1, .L08043970 @ =0x08B99880
    adds r0, r0, r1
    ldrh r0, [r0]
    bl DecodeMsg
    adds r3, r0, #0
    mov r0, sb
    adds r1, r6, #0
    mov r2, sl
    bl Text_InsertDrawString
    ldr r0, [sp, #4]
    adds r6, r6, r0
.L0804391C:
    ldr r2, [sp, #0x14]
    ldrh r0, [r2]
    bl DecodeMsg
    adds r3, r0, #0
    mov r0, sb
    adds r1, r6, #0
    mov r2, sl
    bl Text_InsertDrawString
    ldr r0, [sp, #8]
    adds r6, r6, r0
    ldr r0, .L08043974 @ =0x00001185
    bl DecodeMsg
    adds r3, r0, #0
    mov r0, sb
    adds r1, r6, #0
    mov r2, sl
    bl Text_InsertDrawString
    ldr r0, [sp, #0xc]
    adds r6, r6, r0
    cmp r4, #0
    beq .L08043960
    ldr r0, .L08043978 @ =0x00001188
    bl DecodeMsg
    adds r3, r0, #0
    mov r0, sb
    adds r1, r6, #0
    mov r2, sl
    bl Text_InsertDrawString
.L08043960:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08043970: .4byte 0x08B99880
.L08043974: .4byte 0x00001185
.L08043978: .4byte 0x00001188
    func_end func_08043828

    thumb_func_start func_0804397C
func_0804397C: @ 0x0804397C
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r0, .L080439CC @ =0x08B99894
    lsls r2, r2, #2
    adds r5, r2, r0
    ldrh r4, [r5, #2]
    adds r0, r6, #0
    adds r1, r4, #0
    movs r2, #1
    adds r3, r7, #0
    bl func_08043828
    ldrh r0, [r5]
    bl DecodeMsg
    bl GetStringTextLen
    movs r1, #0x46
    subs r1, r1, r0
    lsrs r0, r1, #0x1f
    adds r1, r1, r0
    asrs r1, r1, #1
    cmp r4, #0
    bne .L080439B0
    subs r1, #0x20
.L080439B0:
    adds r4, r1, #0
    adds r4, #0x28
    ldrh r0, [r5]
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    adds r2, r7, #0
    bl Text_InsertDrawString
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080439CC: .4byte 0x08B99894
    func_end func_0804397C

    thumb_func_start func_080439D0
func_080439D0: @ 0x080439D0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08043A10 @ =0x00001191
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0
    bl Text_InsertDrawString
    movs r0, #1
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x80
    movs r2, #0
    bl Text_InsertDrawString
    movs r0, #2
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0xb0
    movs r2, #0
    bl Text_InsertDrawString
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08043A10: .4byte 0x00001191
    func_end func_080439D0

    thumb_func_start func_08043A14
func_08043A14: @ 0x08043A14
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r6, r0, #0
    ldr r0, .L08043AF8 @ =0x081D2B3C
    ldr r1, .L08043AFC @ =0x06012800
    bl Decompress
    ldr r0, .L08043B00 @ =0x081D3598
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0xc0
    bl ApplyPaletteExt
    ldr r0, .L08043B04 @ =0x02000C60
    ldr r1, .L08043B08 @ =0x06015000
    movs r2, #0xe
    bl InitSpriteTextFont
    ldr r0, .L08043B0C @ =0x08194674
    movs r1, #0xd0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    movs r0, #0
    bl SetTextFontGlyphs
    bl ResetTextFont
    movs r5, #0
    ldr r0, .L08043B10 @ =0x02000C04
    mov r8, r0
    movs r1, #5
    add r1, r8
    mov sb, r1
.L08043A5E:
    lsls r0, r5, #2
    adds r2, r6, #0
    adds r2, #0x2c
    adds r2, r2, r0
    mov r0, r8
    adds r0, #9
    adds r0, r5, r0
    ldrb r0, [r0]
    lsls r1, r0, #1
    adds r1, #1
    mov r0, r8
    adds r0, #1
    adds r0, r5, r0
    ldrb r3, [r0]
    subs r1, r1, r3
    str r1, [r2]
    ldrb r0, [r0]
    movs r7, #1
    cmp r0, #0
    beq .L08043A88
    movs r7, #0
.L08043A88:
    lsls r4, r5, #3
    ldr r0, .L08043B14 @ =0x02000C40
    adds r4, r4, r0
    adds r0, r4, #0
    bl InitSpriteText
    adds r0, r4, #0
    movs r1, #0
    bl SpriteText_DrawBackgroundExt
    mov r1, sb
    adds r0, r5, r1
    ldrb r2, [r0]
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_0804397C
    lsls r2, r5, #1
    adds r0, r6, #0
    adds r0, #0x38
    adds r0, r0, r2
    movs r1, #0x18
    strh r1, [r0]
    adds r1, r6, #0
    adds r1, #0x3e
    adds r1, r1, r2
    lsls r0, r5, #5
    adds r0, #0x20
    strh r0, [r1]
    adds r5, #1
    cmp r5, #2
    ble .L08043A5E
    ldr r4, .L08043B18 @ =0x02000C58
    adds r0, r4, #0
    bl InitSpriteText
    adds r0, r4, #0
    movs r1, #0
    bl SpriteText_DrawBackgroundExt
    adds r0, r4, #0
    bl func_080439D0
    movs r0, #0
    str r0, [r6, #0x48]
    str r0, [r6, #0x44]
    str r0, [r6, #0x54]
    str r0, [r6, #0x50]
    str r0, [r6, #0x4c]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08043AF8: .4byte 0x081D2B3C
.L08043AFC: .4byte 0x06012800
.L08043B00: .4byte 0x081D3598
.L08043B04: .4byte 0x02000C60
.L08043B08: .4byte 0x06015000
.L08043B0C: .4byte 0x08194674
.L08043B10: .4byte 0x02000C04
.L08043B14: .4byte 0x02000C40
.L08043B18: .4byte 0x02000C58
    func_end func_08043A14

    thumb_func_start func_08043B1C
func_08043B1C: @ 0x08043B1C
    push {r4, r5, r6, lr}
    sub sp, #0xc
    mov r6, sp
    adds r6, #6
    add r5, sp, #8
    add r1, sp, #4
    adds r2, r6, #0
    adds r3, r5, #0
    bl FormatTime
    add r0, sp, #4
    ldrh r0, [r0]
    cmp r0, #0x63
    bls .L08043B44
    add r0, sp, #4
    movs r1, #0x63
    strh r1, [r0]
    movs r0, #0x3b
    strh r0, [r5]
    strh r0, [r6]
.L08043B44:
    ldrh r0, [r5]
    movs r1, #0xa
    bl DivRem
    ldr r4, .L08043C04 @ =0x08B99984
    str r0, [sp]
    movs r0, #4
    movs r1, #0xd8
    movs r2, #0x90
    adds r3, r4, #0
    bl PutSprite
    ldrh r0, [r5]
    movs r1, #0xa
    bl Div
    str r0, [sp]
    movs r0, #4
    movs r1, #0xd0
    movs r2, #0x90
    adds r3, r4, #0
    bl PutSprite
    movs r5, #0xa
    str r5, [sp]
    movs r0, #4
    movs r1, #0xc8
    movs r2, #0x90
    adds r3, r4, #0
    bl PutSprite
    ldrh r0, [r6]
    movs r1, #0xa
    bl DivRem
    ldr r4, .L08043C08 @ =0x08B9997C
    str r0, [sp]
    movs r0, #4
    movs r1, #0xc0
    movs r2, #0x88
    adds r3, r4, #0
    bl PutSprite
    ldrh r0, [r6]
    movs r1, #0xa
    bl Div
    str r0, [sp]
    movs r0, #4
    movs r1, #0xb8
    movs r2, #0x88
    adds r3, r4, #0
    bl PutSprite
    str r5, [sp]
    movs r0, #4
    movs r1, #0xb0
    movs r2, #0x88
    adds r3, r4, #0
    bl PutSprite
    add r0, sp, #4
    ldrh r0, [r0]
    movs r1, #0xa
    bl DivRem
    str r0, [sp]
    movs r0, #4
    movs r1, #0xa8
    movs r2, #0x88
    adds r3, r4, #0
    bl PutSprite
    add r0, sp, #4
    ldrh r0, [r0]
    movs r1, #0xa
    bl Div
    cmp r0, #0
    ble .L08043BFC
    add r0, sp, #4
    ldrh r0, [r0]
    movs r1, #0xa
    bl Div
    str r0, [sp]
    movs r0, #4
    movs r1, #0xa0
    movs r2, #0x88
    adds r3, r4, #0
    bl PutSprite
.L08043BFC:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08043C04: .4byte 0x08B99984
.L08043C08: .4byte 0x08B9997C
    func_end func_08043B1C

    thumb_func_start func_08043C0C
func_08043C0C: @ 0x08043C0C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r6, r0, #0
    movs r7, #0
    movs r0, #0x38
    adds r0, r0, r6
    mov r8, r0
    movs r2, #0x3e
    adds r2, r2, r6
    mov sb, r2
.L08043C26:
    lsls r0, r7, #1
    adds r5, r6, #0
    adds r5, #0x38
    adds r5, r5, r0
    movs r2, #0
    ldrsh r1, [r5, r2]
    adds r4, r6, #0
    adds r4, #0x3e
    adds r4, r4, r0
    movs r0, #0
    ldrsh r2, [r4, r0]
    lsls r3, r7, #2
    adds r0, r6, #0
    adds r0, #0x2c
    adds r0, r0, r3
    ldr r0, [r0]
    movs r3, #0xf
    ands r0, r3
    lsls r0, r0, #0xc
    str r0, [sp]
    movs r0, #4
    ldr r3, .L08043CBC @ =0x08B99968
    bl PutSprite
    movs r2, #0
    ldrsh r1, [r5, r2]
    adds r1, #0x28
    movs r0, #0
    ldrsh r2, [r4, r0]
    adds r2, #8
    lsls r0, r7, #6
    str r0, [sp]
    movs r0, #4
    ldr r3, .L08043CC0 @ =0x08B9993C
    bl PutSprite
    adds r7, #1
    cmp r7, #2
    ble .L08043C26
    ldr r1, .L08043CC4 @ =0x02000C04
    ldr r0, [r6, #0x44]
    lsls r0, r0, #2
    adds r1, #0xc
    adds r0, r0, r1
    ldr r0, [r0]
    bl func_08043B1C
    ldr r1, [r6, #0x44]
    lsls r1, r1, #1
    mov r2, r8
    adds r0, r2, r1
    movs r2, #0
    ldrsh r0, [r0, r2]
    adds r0, #0x10
    add r1, sb
    movs r2, #0
    ldrsh r1, [r1, r2]
    adds r1, #8
    bl PutUiHand
    ldr r0, [r6, #0x50]
    cmp r0, #1
    bne .L08043CAE
    movs r0, #0
    str r0, [r6, #0x54]
    adds r0, r6, #0
    bl Proc_Break
.L08043CAE:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08043CBC: .4byte 0x08B99968
.L08043CC0: .4byte 0x08B9993C
.L08043CC4: .4byte 0x02000C04
    func_end func_08043C0C

    thumb_func_start func_08043CC8
func_08043CC8: @ 0x08043CC8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0
    mov r8, r0
    movs r7, #0
.L08043CD8:
    ldr r0, [r5, #0x44]
    cmp r8, r0
    beq .L08043D06
    adds r0, r5, #0
    adds r0, #0x38
    adds r0, r0, r7
    movs r2, #0
    ldrsh r1, [r0, r2]
    ldr r3, [r5, #0x54]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #5
    movs r2, #0xa0
    lsls r2, r2, #1
    bl Interpolate
    adds r6, r0, #0
    adds r0, r5, #0
    adds r0, #0x3e
    adds r0, r0, r7
    movs r3, #0
    ldrsh r4, [r0, r3]
    b .L08043D2C
.L08043D06:
    adds r0, r5, #0
    adds r0, #0x38
    adds r0, r0, r7
    movs r1, #0
    ldrsh r6, [r0, r1]
    adds r0, r5, #0
    adds r0, #0x3e
    adds r0, r0, r7
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r3, #0x3e
    ldrsh r2, [r5, r3]
    ldr r3, [r5, #0x54]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #4
    bl Interpolate
    adds r4, r0, #0
.L08043D2C:
    mov r0, r8
    lsls r1, r0, #2
    adds r0, r5, #0
    adds r0, #0x2c
    adds r0, r0, r1
    ldr r0, [r0]
    movs r1, #0xf
    ands r0, r1
    lsls r0, r0, #0xc
    str r0, [sp]
    movs r0, #4
    adds r1, r6, #0
    adds r2, r4, #0
    ldr r3, .L08043D9C @ =0x08B99968
    bl PutSprite
    adds r1, r6, #0
    adds r1, #0x28
    adds r2, r4, #0
    adds r2, #8
    mov r3, r8
    lsls r0, r3, #6
    str r0, [sp]
    movs r0, #4
    ldr r3, .L08043DA0 @ =0x08B9993C
    bl PutSprite
    adds r7, #2
    movs r0, #1
    add r8, r0
    mov r1, r8
    cmp r1, #2
    ble .L08043CD8
    ldr r1, .L08043DA4 @ =0x02000C04
    ldr r0, [r5, #0x44]
    lsls r0, r0, #2
    adds r1, #0xc
    adds r0, r0, r1
    ldr r0, [r0]
    bl func_08043B1C
    ldr r0, [r5, #0x50]
    cmp r0, #2
    bne .L08043D8E
    movs r0, #0
    str r0, [r5, #0x54]
    adds r0, r5, #0
    bl Proc_Break
.L08043D8E:
    ldr r0, [r5, #0x54]
    cmp r0, #0xf
    bgt .L08043DA8
    adds r0, #1
    str r0, [r5, #0x54]
    b .L08043DAC
    .align 2, 0
.L08043D9C: .4byte 0x08B99968
.L08043DA0: .4byte 0x08B9993C
.L08043DA4: .4byte 0x02000C04
.L08043DA8:
    movs r0, #0
    str r0, [r5, #0x50]
.L08043DAC:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08043CC8

    thumb_func_start func_08043DB8
func_08043DB8: @ 0x08043DB8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0
    mov r8, r0
    movs r7, #0
.L08043DC8:
    ldr r0, [r5, #0x44]
    cmp r8, r0
    beq .L08043DF4
    adds r0, r5, #0
    adds r0, #0x38
    adds r0, r0, r7
    movs r1, #0
    ldrsh r2, [r0, r1]
    ldr r3, [r5, #0x54]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #5
    movs r1, #0xf0
    bl Interpolate
    adds r6, r0, #0
    adds r0, r5, #0
    adds r0, #0x3e
    adds r0, r0, r7
    movs r3, #0
    ldrsh r4, [r0, r3]
    b .L08043E1A
.L08043DF4:
    adds r0, r5, #0
    adds r0, #0x38
    adds r0, r0, r7
    movs r1, #0
    ldrsh r6, [r0, r1]
    movs r3, #0x3e
    ldrsh r1, [r5, r3]
    adds r0, r5, #0
    adds r0, #0x3e
    adds r0, r0, r7
    movs r3, #0
    ldrsh r2, [r0, r3]
    ldr r3, [r5, #0x54]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #4
    bl Interpolate
    adds r4, r0, #0
.L08043E1A:
    mov r0, r8
    lsls r1, r0, #2
    adds r0, r5, #0
    adds r0, #0x2c
    adds r0, r0, r1
    ldr r0, [r0]
    movs r1, #0xf
    ands r0, r1
    lsls r0, r0, #0xc
    str r0, [sp]
    movs r0, #4
    adds r1, r6, #0
    adds r2, r4, #0
    ldr r3, .L08043E78 @ =0x08B99968
    bl PutSprite
    adds r1, r6, #0
    adds r1, #0x28
    adds r2, r4, #0
    adds r2, #8
    mov r3, r8
    lsls r0, r3, #6
    str r0, [sp]
    movs r0, #4
    ldr r3, .L08043E7C @ =0x08B9993C
    bl PutSprite
    adds r7, #2
    movs r0, #1
    add r8, r0
    mov r1, r8
    cmp r1, #2
    ble .L08043DC8
    ldr r0, .L08043E80 @ =0x02000C04
    ldr r1, [r5, #0x44]
    lsls r1, r1, #2
    adds r0, #0xc
    adds r1, r1, r0
    ldr r0, [r1]
    bl func_08043B1C
    ldr r0, [r5, #0x54]
    cmp r0, #0xf
    bgt .L08043E84
    adds r0, #1
    str r0, [r5, #0x54]
    b .L08043E92
    .align 2, 0
.L08043E78: .4byte 0x08B99968
.L08043E7C: .4byte 0x08B9993C
.L08043E80: .4byte 0x02000C04
.L08043E84:
    movs r0, #0
    str r0, [r5, #0x54]
    str r0, [r5, #0x50]
    adds r0, r5, #0
    movs r1, #0
    bl Proc_Goto
.L08043E92:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08043DB8

    thumb_func_start func_08043EA0
func_08043EA0: @ 0x08043EA0
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08043EB0 @ =0x08B9998C
    bl Proc_Start
    pop {r1}
    bx r1
    .align 2, 0
.L08043EB0: .4byte 0x08B9998C
    func_end func_08043EA0

    thumb_func_start func_08043EB4
func_08043EB4: @ 0x08043EB4
    push {r4, lr}
    sub sp, #0xc
    adds r4, r0, #0
    bl ApplySystemGraphics
    adds r0, r4, #0
    bl func_080ACA90
    ldr r0, .L08043EFC @ =0x08B99870
    bl Proc_EndEach
    adds r0, r4, #0
    bl func_08043EA0
    str r0, [r4, #0x54]
    bl UnpackUiWindowFrameGraphics
    ldr r0, .L08043F00 @ =gBg1Tm
    movs r1, #4
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    movs r1, #0x12
    movs r2, #0x10
    movs r3, #0xb
    bl PutUiWindowFrame
    movs r0, #0xf
    bl EnableBgSync
    add sp, #0xc
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08043EFC: .4byte 0x08B99870
.L08043F00: .4byte gBg1Tm
    func_end func_08043EB4

    thumb_func_start func_08043F04
func_08043F04: @ 0x08043F04
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x54]
    ldr r0, [r0, #0x50]
    cmp r0, #0
    bne .L08043F16
    adds r0, r1, #0
    bl Proc_Break
.L08043F16:
    pop {r0}
    bx r0
    func_end func_08043F04

    thumb_func_start func_08043F1C
func_08043F1C: @ 0x08043F1C
    push {r4, r5, lr}
    sub sp, #0xc
    adds r5, r0, #0
    ldr r0, .L08043F4C @ =gBg1Tm
    movs r1, #6
    str r1, [sp]
    movs r4, #0
    str r4, [sp, #4]
    str r4, [sp, #8]
    movs r1, #2
    movs r2, #9
    movs r3, #0x10
    bl PutUiWindowFrame
    movs r0, #2
    bl EnableBgSync
    adds r5, #0x68
    strh r4, [r5]
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08043F4C: .4byte gBg1Tm
    func_end func_08043F1C

    thumb_func_start func_08043F50
func_08043F50: @ 0x08043F50
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r7, [r5, #0x54]
    ldr r4, .L08043FA8 @ =0x08B999BC
    movs r0, #0
    str r0, [sp]
    movs r0, #4
    movs r1, #0x18
    movs r2, #0x50
    adds r3, r4, #0
    bl PutSprite
    movs r0, #0x10
    str r0, [sp]
    movs r0, #4
    movs r1, #0x30
    movs r2, #0x60
    adds r3, r4, #0
    bl PutSprite
    adds r4, r5, #0
    adds r4, #0x68
    movs r0, #0
    ldrsh r1, [r4, r0]
    movs r0, #0x34
    muls r0, r1, r0
    adds r0, #0x28
    movs r1, #0x60
    bl PutUiHand
    ldr r0, .L08043FAC @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r6, #2
    adds r0, r6, #0
    ands r0, r1
    cmp r0, #0
    beq .L08043FB0
    movs r0, #1
    bl func_0803DD98
    str r6, [r7, #0x50]
    b .L08044012
    .align 2, 0
.L08043FA8: .4byte 0x08B999BC
.L08043FAC: .4byte gpKeySt
.L08043FB0:
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08043FC8
    ldrh r0, [r4]
    cmp r0, #1
    bne .L08043FC8
    subs r0, #1
    strh r0, [r4]
    movs r0, #3
    bl func_0803DD98
.L08043FC8:
    ldr r0, .L0804402C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x10
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08043FEE
    adds r1, r5, #0
    adds r1, #0x68
    ldrh r2, [r1]
    movs r3, #0
    ldrsh r0, [r1, r3]
    cmp r0, #0
    bne .L08043FEE
    adds r0, r2, #1
    strh r0, [r1]
    movs r0, #3
    bl func_0803DD98
.L08043FEE:
    ldr r0, .L0804402C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08044072
    adds r0, r5, #0
    adds r0, #0x68
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08044034
    movs r0, #1
    bl func_0803DD98
    movs r0, #2
    str r0, [r7, #0x50]
.L08044012:
    ldr r0, .L08044030 @ =0x020236A4
    movs r1, #0x10
    movs r2, #6
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #2
    bl EnableBgSync
    adds r0, r5, #0
    bl Proc_Break
    b .L08044072
    .align 2, 0
.L0804402C: .4byte gpKeySt
.L08044030: .4byte 0x020236A4
.L08044034:
    movs r0, #2
    bl func_0803DD98
    ldr r0, .L0804407C @ =0x02000C00
    ldr r1, [r7, #0x44]
    strb r1, [r0]
    movs r1, #4
    bl func_0803D274
    ldr r0, .L08044080 @ =0x020236A4
    movs r1, #0x10
    movs r2, #6
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #2
    bl EnableBgSync
    ldr r0, .L08044084 @ =0x06016800
    movs r1, #0xd
    bl func_08082528
    ldr r2, .L08044088 @ =0x00001192
    movs r0, #0x40
    movs r1, #0x48
    bl func_08081A94
    adds r0, r5, #0
    movs r1, #3
    bl Proc_Goto
.L08044072:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804407C: .4byte 0x02000C00
.L08044080: .4byte 0x020236A4
.L08044084: .4byte 0x06016800
.L08044088: .4byte 0x00001192
    func_end func_08043F50

    thumb_func_start func_0804408C
func_0804408C: @ 0x0804408C
    push {lr}
    adds r2, r0, #0
    ldr r0, .L080440A8 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #9
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080440A4
    adds r0, r2, #0
    bl Proc_Break
.L080440A4:
    pop {r0}
    bx r0
    .align 2, 0
.L080440A8: .4byte gpKeySt
    func_end func_0804408C

    thumb_func_start func_080440AC
func_080440AC: @ 0x080440AC
    push {lr}
    bl m4aSoundVSyncOn
    pop {r0}
    bx r0
    func_end func_080440AC

    thumb_func_start GC_ConnectToFE6
GC_ConnectToFE6: @ 0x080440B8
    push {r4, lr}
    adds r4, r0, #0
    bl UnpackUiWindowFrameGraphics
    ldr r0, .L080440DC @ =0x0203DA60
    ldr r1, .L080440E0 @ =0x06001800
    movs r2, #0xc0
    movs r3, #0
    bl InitTextFont
    ldr r0, .L080440E4 @ =0x08B999D8
    adds r1, r4, #0
    bl Proc_StartBlocking
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080440DC: .4byte 0x0203DA60
.L080440E0: .4byte 0x06001800
.L080440E4: .4byte 0x08B999D8
    func_end GC_ConnectToFE6

    thumb_func_start func_080440E8
func_080440E8: @ 0x080440E8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    ldr r1, .L08044130 @ =0x0203D90C
    adds r0, r1, #0
    adds r0, #0xa0
    ldrb r3, [r0]
    movs r0, #0x80
    lsls r0, r0, #1
    adds r1, r1, r0
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08044138
    movs r6, #0
    cmp r6, r3
    bge .L08044192
    ldr r4, .L08044134 @ =0x0203DCAB
    adds r5, r4, #5
    mov r2, r8
.L08044114:
    adds r1, r6, r4
    ldrb r0, [r1]
    strb r0, [r2]
    ldrb r1, [r1]
    lsls r0, r1, #2
    adds r0, r0, r5
    ldr r0, [r0]
    str r0, [r2, #4]
    adds r2, #8
    adds r6, #1
    cmp r6, r3
    blt .L08044114
    b .L08044192
    .align 2, 0
.L08044130: .4byte 0x0203D90C
.L08044134: .4byte 0x0203DCAB
.L08044138:
    movs r6, #0
    subs r1, r3, #2
    mov ip, r1
    cmp r6, r3
    bge .L08044158
    ldr r0, .L0804415C @ =0x0203DC9C
    adds r2, r0, #0
    adds r2, #0x14
    mov r1, r8
.L0804414A:
    strb r6, [r1]
    ldm r2!, {r0}
    str r0, [r1, #4]
    adds r1, #8
    adds r6, #1
    cmp r6, r3
    blt .L0804414A
.L08044158:
    movs r6, #0
    b .L0804418C
    .align 2, 0
.L0804415C: .4byte 0x0203DC9C
.L08044160:
    adds r5, r0, #0
    adds r7, r6, #1
    cmp r0, r6
    blt .L0804418A
    lsls r0, r0, #3
    mov r1, r8
    adds r2, r0, r1
.L0804416E:
    ldr r4, [r2, #4]
    ldr r3, [r2, #0xc]
    cmp r4, r3
    bhs .L08044182
    ldrb r1, [r2]
    ldrb r0, [r2, #8]
    strb r0, [r2]
    strb r1, [r2, #8]
    str r3, [r2, #4]
    str r4, [r2, #0xc]
.L08044182:
    subs r2, #8
    subs r5, #1
    cmp r5, r6
    bge .L0804416E
.L0804418A:
    adds r6, r7, #0
.L0804418C:
    mov r0, ip
    cmp r6, r0
    ble .L08044160
.L08044192:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080440E8

    thumb_func_start func_0804419C
func_0804419C: @ 0x0804419C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    lsls r0, r2, #5
    adds r0, r0, r5
    lsls r0, r0, #1
    ldr r1, .L080441E8 @ =gBg1Tm
    adds r0, r0, r1
    movs r1, #0
    adds r4, r2, #1
.L080441B0:
    adds r2, r1, #1
    movs r1, #5
.L080441B4:
    strh r3, [r0]
    adds r0, #2
    adds r3, #1
    subs r1, #1
    cmp r1, #0
    bge .L080441B4
    adds r0, #0x34
    adds r1, r2, #0
    cmp r1, #3
    ble .L080441B0
    adds r0, r6, #0
    bl ClearText
    lsls r0, r4, #5
    adds r0, #4
    adds r0, r0, r5
    lsls r0, r0, #1
    ldr r1, .L080441EC @ =gBg0Tm
    adds r0, r0, r1
    movs r1, #2
    ldr r2, [sp, #0x10]
    bl PutNumber
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080441E8: .4byte gBg1Tm
.L080441EC: .4byte gBg0Tm
    func_end func_0804419C

    thumb_func_start func_080441F0
func_080441F0: @ 0x080441F0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, .L080442B0 @ =0x081C79B4
    ldr r1, .L080442B4 @ =0x06002800
    bl Decompress
    ldr r0, .L080442B8 @ =0x081C7F04
    movs r1, #0x40
    movs r2, #0x80
    bl ApplyPaletteExt
    movs r0, #0
    bl SetTextFont
    bl ResetTextFont
    movs r0, #0
    mov sb, r0
    ldr r0, .L080442BC @ =0x081D5470
    mov sl, r0
    adds r6, r4, #0
    adds r6, #0x2c
    ldr r7, .L080442C0 @ =0x081D54E0
.L08044228:
    ldr r0, .L080442C4 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    add r0, sb
    add r0, sl
    ldrb r5, [r0]
    adds r0, r5, #0
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0804428C
    ldr r0, .L080442C8 @ =0x0203DC9C
    mov r8, r0
    adds r0, #0xa
    adds r0, r5, r0
    ldrb r0, [r0]
    adds r4, r5, #2
    cmp r0, #0
    bne .L08044260
    lsls r1, r4, #5
    ldr r0, .L080442CC @ =0x081C8164
    movs r2, #0x20
    bl ApplyPaletteExt
.L08044260:
    movs r0, #0xf
    ands r4, r0
    lsls r4, r4, #0xc
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r4, r4, r0
    adds r0, r6, #0
    movs r1, #4
    bl InitTextDb
    ldrb r1, [r7]
    ldrb r2, [r7, #1]
    lsls r0, r5, #2
    mov r3, r8
    adds r3, #0x14
    adds r0, r0, r3
    ldr r0, [r0]
    str r0, [sp]
    adds r0, r6, #0
    adds r3, r4, #0
    bl func_0804419C
.L0804428C:
    adds r6, #8
    adds r7, #2
    movs r0, #1
    add sb, r0
    mov r0, sb
    cmp r0, #3
    ble .L08044228
    movs r0, #3
    bl EnableBgSync
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080442B0: .4byte 0x081C79B4
.L080442B4: .4byte 0x06002800
.L080442B8: .4byte 0x081C7F04
.L080442BC: .4byte 0x081D5470
.L080442C0: .4byte 0x081D54E0
.L080442C4: .4byte 0x08B98AEC
.L080442C8: .4byte 0x0203DC9C
.L080442CC: .4byte 0x081C8164
    func_end func_080441F0

    thumb_func_start func_080442D0
func_080442D0: @ 0x080442D0
    bx lr
    func_end func_080442D0

    thumb_func_start func_080442D4
func_080442D4: @ 0x080442D4
    push {lr}
    movs r0, #0
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L080442F8 @ =0x08B99AD8
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L080442F8: .4byte 0x08B99AD8
    func_end func_080442D4

    thumb_func_start func_080442FC
func_080442FC: @ 0x080442FC
    push {lr}
    ldr r0, .L0804430C @ =0x08B99AD8
    bl Proc_EndEach
    bl ClearUi
    pop {r0}
    bx r0
    .align 2, 0
.L0804430C: .4byte 0x08B99AD8
    func_end func_080442FC

    thumb_func_start func_08044310
func_08044310: @ 0x08044310
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r0, #0x33
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    ldr r1, .L08044360 @ =0x081D5480
    adds r2, r5, #0
    adds r2, #0x32
    ldr r0, .L08044364 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    ldrb r2, [r2]
    adds r0, r2, r0
    adds r0, r0, r1
    ldrb r2, [r0]
    adds r0, r5, #0
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08044368
    ldrb r0, [r4, #0x10]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    subs r0, #0x10
    strh r0, [r5, #0x2a]
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    strh r0, [r5, #0x2c]
    lsls r2, r2, #1
    b .L08044390
    .align 2, 0
.L08044360: .4byte 0x081D5480
.L08044364: .4byte 0x08B98AEC
.L08044368:
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r3, .L080443CC @ =0x08B99AF0
    lsls r0, r2, #3
    adds r0, r0, r3
    ldr r0, [r0]
    adds r0, r0, r1
    subs r0, #0xc
    strh r0, [r5, #0x2a]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    lsls r2, r2, #1
    adds r0, r2, #1
    lsls r0, r0, #2
    adds r0, r0, r3
    ldrh r0, [r0]
    adds r1, r0, r1
    strh r1, [r5, #0x2c]
.L08044390:
    ldr r1, .L080443D0 @ =0x081D54E0
    adds r0, r2, r1
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #8
    movs r4, #0
    strh r0, [r5, #0x2e]
    adds r0, r2, #1
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r0, #8
    strh r0, [r5, #0x30]
    ldr r0, .L080443D4 @ =0x02000C60
    bl SetTextFont
    ldr r0, .L080443D8 @ =0x02000C78
    adds r1, r5, #0
    adds r1, #0x32
    ldrb r1, [r1]
    lsls r1, r1, #5
    adds r1, #0x18
    ldr r3, [r5, #0x34]
    movs r2, #2
    bl func_0803D964
    str r4, [r5, #0x3c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080443CC: .4byte 0x08B99AF0
.L080443D0: .4byte 0x081D54E0
.L080443D4: .4byte 0x02000C60
.L080443D8: .4byte 0x02000C78
    func_end func_08044310

    thumb_func_start func_080443DC
func_080443DC: @ 0x080443DC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    adds r0, #0x33
    ldrb r0, [r0]
    bl GetUnit
    str r0, [sp, #4]
    ldr r3, [r7, #0x3c]
    cmp r3, #0x10
    bhi .L08044470
    movs r0, #0x80
    lsls r0, r0, #1
    mov r8, r0
    movs r0, #0x10
    str r0, [sp]
    movs r0, #1
    movs r1, #0x10
    mov r2, r8
    bl Interpolate
    mov sl, r0
    ldr r4, .L080444A0 @ =0x080C5A48
    movs r1, #0x80
    adds r1, r1, r4
    mov sb, r1
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    mov r1, r8
    bl Div
    adds r6, r0, #0
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    movs r1, #0
    ldrsh r0, [r4, r1]
    rsbs r0, r0, #0
    lsls r0, r0, #4
    mov r1, sl
    bl Div
    adds r5, r0, #0
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    movs r2, #0
    ldrsh r0, [r4, r2]
    lsls r0, r0, #4
    mov r1, r8
    bl Div
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    mov r1, sb
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    mov r1, sl
    bl Div
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    movs r0, #0
    adds r1, r6, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl SetObjAffine
.L08044470:
    adds r0, r7, #0
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L080444C2
    ldr r1, [r7, #0x3c]
    cmp r1, #3
    bls .L080444C2
    cmp r1, #0x16
    bhi .L080444C2
    subs r1, #4
    ldr r4, [sp, #4]
    ldrb r4, [r4, #0x10]
    cmp r4, #8
    bne .L080444A8
    ldr r0, .L080444A4 @ =0x08B99B10
    lsls r1, r1, #1
    adds r0, r1, r0
    ldrh r2, [r7, #0x2a]
    ldrh r0, [r0]
    adds r0, r2, r0
    b .L080444B4
    .align 2, 0
.L080444A0: .4byte gSinLut
.L080444A4: .4byte 0x08B99B10
.L080444A8:
    ldr r0, .L08044508 @ =0x08B99B10
    lsls r1, r1, #1
    adds r0, r1, r0
    ldrh r4, [r7, #0x2a]
    ldrh r0, [r0]
    subs r0, r4, r0
.L080444B4:
    strh r0, [r7, #0x2a]
    ldr r0, .L0804450C @ =0x08B99B36
    adds r0, r1, r0
    ldrh r1, [r7, #0x2c]
    ldrh r0, [r0]
    subs r0, r1, r0
    strh r0, [r7, #0x2c]
.L080444C2:
    movs r2, #0x2a
    ldrsh r0, [r7, r2]
    movs r4, #0x2c
    ldrsh r1, [r7, r4]
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r2, .L08044510 @ =0x08B905F8
    adds r3, r7, #0
    adds r3, #0x32
    ldrb r3, [r3]
    lsls r3, r3, #2
    ldr r4, .L08044514 @ =0x00009340
    adds r3, r3, r4
    bl PutOamHiRam
    ldr r0, [r7, #0x3c]
    adds r0, #1
    str r0, [r7, #0x3c]
    cmp r0, #0x40
    bls .L080444F6
    movs r0, #0
    str r0, [r7, #0x3c]
    adds r0, r7, #0
    bl Proc_Break
.L080444F6:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08044508: .4byte 0x08B99B10
.L0804450C: .4byte 0x08B99B36
.L08044510: .4byte 0x08B905F8
.L08044514: .4byte 0x00009340
    func_end func_080443DC

    thumb_func_start func_08044518
func_08044518: @ 0x08044518
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0x2a
    ldrsh r1, [r6, r0]
    movs r0, #0x2e
    ldrsh r2, [r6, r0]
    ldr r3, [r6, #0x3c]
    movs r4, #0x30
    str r4, [sp]
    movs r0, #5
    bl Interpolate
    adds r5, r0, #0
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    movs r0, #0x30
    ldrsh r2, [r6, r0]
    ldr r3, [r6, #0x3c]
    str r4, [sp]
    movs r0, #5
    bl Interpolate
    adds r1, r0, #0
    ldr r2, .L08044574 @ =0x08B905F8
    adds r0, r6, #0
    adds r0, #0x32
    ldrb r0, [r0]
    lsls r3, r0, #2
    ldr r0, .L08044578 @ =0x00009340
    adds r3, r3, r0
    adds r0, r5, #0
    bl PutOamHiRam
    ldr r0, [r6, #0x3c]
    adds r0, #1
    str r0, [r6, #0x3c]
    cmp r0, #0x20
    bls .L0804456C
    adds r0, r6, #0
    bl Proc_Break
.L0804456C:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08044574: .4byte 0x08B905F8
.L08044578: .4byte 0x00009340
    func_end func_08044518

    thumb_func_start func_0804457C
func_0804457C: @ 0x0804457C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0
    mov r8, r1
    adds r4, r2, #0
    adds r6, r3, #0
    bl ClearText
    adds r0, r5, #0
    movs r1, #0x18
    movs r2, #2
    adds r3, r6, #0
    bl func_0803D964
    adds r4, #1
    lsls r4, r4, #5
    adds r4, #1
    add r4, r8
    lsls r4, r4, #1
    ldr r0, .L080445C0 @ =gBg0Tm
    adds r4, r4, r0
    adds r0, r5, #0
    adds r1, r4, #0
    bl PutText
    movs r0, #1
    bl EnableBgSync
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080445C0: .4byte gBg0Tm
    func_end func_0804457C

    thumb_func_start func_080445C4
func_080445C4: @ 0x080445C4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r1, .L08044624 @ =0x081D5480
    adds r2, r6, #0
    adds r2, #0x32
    ldr r0, .L08044628 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    ldrb r2, [r2]
    adds r0, r2, r0
    adds r0, r0, r1
    ldr r2, .L0804462C @ =0x081D54E0
    ldrb r0, [r0]
    lsls r0, r0, #1
    adds r1, r0, r2
    ldrb r1, [r1]
    movs r5, #0
    strh r1, [r6, #0x2a]
    adds r0, #1
    adds r0, r0, r2
    ldrb r0, [r0]
    strh r0, [r6, #0x2c]
    movs r0, #0
    bl SetTextFont
    adds r0, r6, #0
    adds r0, #0x48
    movs r2, #0x2a
    ldrsh r1, [r6, r2]
    movs r3, #0x2c
    ldrsh r2, [r6, r3]
    ldr r3, [r6, #0x38]
    ldr r4, [r6, #0x34]
    subs r3, r3, r4
    bl func_0804457C
    str r5, [r6, #0x3c]
    ldr r0, [r6, #0x38]
    ldr r1, [r6, #0x34]
    subs r0, r0, r1
    str r0, [r6, #0x44]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08044624: .4byte 0x081D5480
.L08044628: .4byte 0x08B98AEC
.L0804462C: .4byte 0x081D54E0
    func_end func_080445C4

    thumb_func_start func_08044630
func_08044630: @ 0x08044630
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r2, [r4, #0x38]
    ldr r1, [r4, #0x34]
    subs r1, r2, r1
    ldr r3, [r4, #0x3c]
    movs r0, #0xa
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    adds r5, r0, #0
    movs r0, #0
    bl SetTextFont
    adds r0, r4, #0
    adds r0, #0x48
    movs r2, #0x2a
    ldrsh r1, [r4, r2]
    movs r3, #0x2c
    ldrsh r2, [r4, r3]
    adds r3, r5, #0
    bl func_0804457C
    ldr r0, [r4, #0x44]
    cmp r0, r5
    beq .L0804468A
    adds r1, r4, #0
    adds r1, #0x32
    ldr r0, .L080446BC @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r1, [r1]
    ldrb r0, [r0, #6]
    cmp r1, r0
    bne .L0804468A
    ldr r0, .L080446C0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804468A
    movs r0, #0x80
    bl m4aSongNumStart
.L0804468A:
    str r5, [r4, #0x44]
    ldr r0, [r4, #0x3c]
    adds r0, #1
    str r0, [r4, #0x3c]
    cmp r0, #0xa
    bls .L080446B2
    movs r0, #0
    str r0, [r4, #0x3c]
    ldr r0, .L080446C4 @ =0x0203DC9C
    adds r1, r4, #0
    adds r1, #0x32
    ldrb r1, [r1]
    lsls r1, r1, #2
    adds r0, #0x14
    adds r1, r1, r0
    ldr r0, [r4, #0x38]
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L080446B2:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080446BC: .4byte 0x08B98AEC
.L080446C0: .4byte gPlaySt
.L080446C4: .4byte 0x0203DC9C
    func_end func_08044630

    thumb_func_start func_080446C8
func_080446C8: @ 0x080446C8
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x3c]
    adds r0, #1
    str r0, [r1, #0x3c]
    cmp r0, #0x14
    bls .L080446DC
    adds r0, r1, #0
    bl Proc_Break
.L080446DC:
    pop {r0}
    bx r0
    func_end func_080446C8

    thumb_func_start func_080446E0
func_080446E0: @ 0x080446E0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08044704 @ =0x02000C60
    bl SetTextFont
    ldr r0, .L08044708 @ =0x02000C78
    ldr r3, [r4, #0x54]
    movs r1, #0x80
    movs r2, #0
    bl Text_InsertDrawString
    adds r4, #0x4c
    movs r0, #0
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08044704: .4byte 0x02000C60
.L08044708: .4byte 0x02000C78
    func_end func_080446E0

    thumb_func_start func_0804470C
func_0804470C: @ 0x0804470C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    movs r0, #0x4c
    adds r0, r0, r7
    mov sb, r0
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x10
    bgt .L0804479E
    movs r2, #0x80
    lsls r2, r2, #1
    mov r8, r2
    mov r0, sb
    movs r1, #0
    ldrsh r3, [r0, r1]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #1
    movs r1, #0x10
    bl Interpolate
    mov sl, r0
    ldr r4, .L0804480C @ =0x080C5A48
    ldr r2, .L08044810 @ =0x080C5AC8
    movs r1, #0
    ldrsh r0, [r2, r1]
    lsls r0, r0, #4
    mov r1, r8
    bl Div
    adds r6, r0, #0
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    movs r2, #0
    ldrsh r0, [r4, r2]
    rsbs r0, r0, #0
    lsls r0, r0, #4
    mov r1, sl
    bl Div
    adds r5, r0, #0
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    movs r1, #0
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    mov r1, r8
    bl Div
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    ldr r2, .L08044810 @ =0x080C5AC8
    movs r1, #0
    ldrsh r0, [r2, r1]
    lsls r0, r0, #4
    mov r1, sl
    bl Div
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    movs r0, #1
    adds r1, r6, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl SetObjAffine
.L0804479E:
    ldr r0, [r7, #0x2c]
    movs r2, #0x80
    lsls r2, r2, #2
    adds r0, r0, r2
    ldr r1, [r7, #0x30]
    movs r4, #0x80
    lsls r4, r4, #1
    adds r1, r1, r4
    ldr r5, .L08044814 @ =0x08B905F8
    ldr r3, .L08044818 @ =0x00009350
    adds r2, r5, #0
    bl PutOamHiRam
    ldr r0, [r7, #0x2c]
    movs r1, #0x88
    lsls r1, r1, #2
    adds r0, r0, r1
    ldr r1, [r7, #0x30]
    adds r1, r1, r4
    ldr r3, .L0804481C @ =0x00009354
    adds r2, r5, #0
    bl PutOamHiRam
    ldr r0, [r7, #0x2c]
    movs r2, #0x90
    lsls r2, r2, #2
    adds r0, r0, r2
    ldr r1, [r7, #0x30]
    adds r1, r1, r4
    ldr r2, .L08044820 @ =0x08B905B8
    ldr r3, .L08044824 @ =0x00009358
    bl PutOamHiRam
    mov r1, sb
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x40
    ble .L080447FA
    movs r0, #0
    strh r0, [r1]
    adds r0, r7, #0
    bl Proc_Break
.L080447FA:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804480C: .4byte gSinLut
.L08044810: .4byte 0x080C5AC8
.L08044814: .4byte 0x08B905F8
.L08044818: .4byte 0x00009350
.L0804481C: .4byte 0x00009354
.L08044820: .4byte 0x08B905B8
.L08044824: .4byte 0x00009358
    func_end func_0804470C

    thumb_func_start func_08044828
func_08044828: @ 0x08044828
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    adds r0, #0x4c
    str r0, [sp, #4]
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x10
    bgt .L080448BE
    movs r2, #0x80
    lsls r2, r2, #1
    mov r8, r2
    ldr r0, [sp, #4]
    movs r1, #0
    ldrsh r3, [r0, r1]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #4
    mov r1, r8
    movs r2, #0x10
    bl Interpolate
    mov sl, r0
    ldr r4, .L08044928 @ =0x080C5A48
    movs r2, #0x80
    adds r2, r2, r4
    mov sb, r2
    movs r1, #0
    ldrsh r0, [r2, r1]
    lsls r0, r0, #4
    mov r1, r8
    bl Div
    adds r6, r0, #0
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    movs r2, #0
    ldrsh r0, [r4, r2]
    rsbs r0, r0, #0
    lsls r0, r0, #4
    mov r1, sl
    bl Div
    adds r5, r0, #0
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    movs r1, #0
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    mov r1, r8
    bl Div
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    mov r2, sb
    movs r1, #0
    ldrsh r0, [r2, r1]
    lsls r0, r0, #4
    mov r1, sl
    bl Div
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    movs r0, #1
    adds r1, r6, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl SetObjAffine
.L080448BE:
    ldr r0, [r7, #0x2c]
    movs r2, #0x80
    lsls r2, r2, #2
    adds r0, r0, r2
    ldr r1, [r7, #0x30]
    movs r4, #0x80
    lsls r4, r4, #1
    adds r1, r1, r4
    ldr r5, .L0804492C @ =0x08B905F8
    ldr r3, .L08044930 @ =0x00009350
    adds r2, r5, #0
    bl PutOamHiRam
    ldr r0, [r7, #0x2c]
    movs r1, #0x88
    lsls r1, r1, #2
    adds r0, r0, r1
    ldr r1, [r7, #0x30]
    adds r1, r1, r4
    ldr r3, .L08044934 @ =0x00009354
    adds r2, r5, #0
    bl PutOamHiRam
    ldr r0, [r7, #0x2c]
    movs r2, #0x90
    lsls r2, r2, #2
    adds r0, r0, r2
    ldr r1, [r7, #0x30]
    adds r1, r1, r4
    ldr r2, .L08044938 @ =0x08B905B8
    ldr r3, .L0804493C @ =0x00009358
    bl PutOamHiRam
    ldr r1, [sp, #4]
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x10
    ble .L08044916
    adds r0, r7, #0
    bl Proc_Break
.L08044916:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08044928: .4byte gSinLut
.L0804492C: .4byte 0x08B905F8
.L08044930: .4byte 0x00009350
.L08044934: .4byte 0x00009354
.L08044938: .4byte 0x08B905B8
.L0804493C: .4byte 0x00009358
    func_end func_08044828

    thumb_func_start func_08044940
func_08044940: @ 0x08044940
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    mov sb, r3
    movs r0, #0
    mov sl, r0
    ldr r0, .L08044A18 @ =0x08194674
    movs r1, #0xc8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08044A1C @ =0x02000C60
    ldr r1, .L08044A20 @ =0x06016800
    movs r2, #3
    bl InitSpriteTextFont
    movs r0, #0
    bl SetTextFontGlyphs
    bl ResetTextFont
    ldr r4, .L08044A24 @ =0x02000C78
    adds r0, r4, #0
    bl InitSpriteText
    adds r0, r4, #0
    movs r1, #0
    bl SpriteText_DrawBackgroundExt
    movs r0, #0
    bl SetTextFont
    movs r1, #0
    mov r8, r1
.L08044996:
    ldr r0, .L08044A28 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    add r0, r8
    ldr r1, .L08044A2C @ =0x081D5480
    adds r0, r0, r1
    ldrb r4, [r0]
    adds r0, r4, #0
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08044A44
    ldr r6, .L08044A30 @ =0x0203DC9C
    lsls r5, r4, #3
    adds r0, r6, #0
    adds r0, #0x30
    adds r7, r5, r0
    ldr r0, [r7]
    cmp r0, #0
    beq .L08044A3C
    ldr r0, .L08044A34 @ =0x08B99B5C
    ldr r1, [sp, #0x34]
    bl Proc_StartBlocking
    adds r2, r0, #0
    adds r0, #0x32
    strb r4, [r0]
    adds r0, r5, r6
    adds r0, #0x2c
    ldrb r0, [r0]
    adds r1, r2, #0
    adds r1, #0x33
    strb r0, [r1]
    lsls r1, r4, #2
    adds r0, r6, #0
    adds r0, #0x14
    adds r3, r1, r0
    ldr r1, [r3]
    ldr r0, [r7]
    adds r1, r1, r0
    str r1, [r2, #0x38]
    ldr r0, .L08044A38 @ =0x0000270F
    cmp r1, r0
    bls .L080449F8
    str r0, [r2, #0x38]
.L080449F8:
    ldr r0, [r2, #0x38]
    ldr r1, [r3]
    subs r0, r0, r1
    str r0, [r2, #0x34]
    adds r0, r2, #0
    adds r0, #0x40
    mov r1, sb
    strb r1, [r0]
    adds r0, #8
    movs r1, #4
    bl InitTextDb
    movs r0, #1
    add sl, r0
    b .L08044A44
    .align 2, 0
.L08044A18: .4byte 0x08194674
.L08044A1C: .4byte 0x02000C60
.L08044A20: .4byte 0x06016800
.L08044A24: .4byte 0x02000C78
.L08044A28: .4byte 0x08B98AEC
.L08044A2C: .4byte 0x081D5480
.L08044A30: .4byte 0x0203DC9C
.L08044A34: .4byte 0x08B99B5C
.L08044A38: .4byte 0x0000270F
.L08044A3C:
    mov r0, sp
    movs r1, #4
    bl InitTextDb
.L08044A44:
    movs r1, #1
    add r8, r1
    mov r0, r8
    cmp r0, #3
    ble .L08044996
    mov r1, sl
    cmp r1, #0
    beq .L08044A78
    mov r0, sb
    cmp r0, #0
    beq .L08044A6E
    ldr r0, .L08044A74 @ =0x08B99B9C
    ldr r1, [sp, #0x34]
    bl Proc_StartBlocking
    ldr r1, [sp, #8]
    str r1, [r0, #0x2c]
    ldr r1, [sp, #0xc]
    str r1, [r0, #0x30]
    ldr r1, [sp, #0x10]
    str r1, [r0, #0x54]
.L08044A6E:
    movs r0, #1
    b .L08044A7A
    .align 2, 0
.L08044A74: .4byte 0x08B99B9C
.L08044A78:
    movs r0, #0
.L08044A7A:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08044940

    thumb_func_start func_08044A8C
func_08044A8C: @ 0x08044A8C
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_080442D4
    ldr r0, .L08044ABC @ =0x000012CB
    bl DecodeMsg
    adds r2, r0, #0
    str r4, [sp]
    movs r0, #0x58
    movs r1, #0x3c
    movs r3, #1
    bl func_08044940
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08044AB4
    bl func_080442FC
.L08044AB4:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08044ABC: .4byte 0x000012CB
    func_end func_08044A8C

    thumb_func_start func_08044AC0
func_08044AC0: @ 0x08044AC0
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_080442D4
    ldr r0, .L08044AE8 @ =0x000012CB
    bl DecodeMsg
    adds r2, r0, #0
    str r4, [sp]
    movs r0, #0x58
    movs r1, #0x3c
    movs r3, #0
    bl func_08044940
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08044AE8: .4byte 0x000012CB
    func_end func_08044AC0

    thumb_func_start func_08044AEC
func_08044AEC: @ 0x08044AEC
    adds r1, r0, #0
    adds r1, #0x1e
    ldr r3, .L08044B04 @ =0x03001428
    movs r2, #4
.L08044AF4:
    ldrh r0, [r1]
    strh r0, [r3]
    adds r1, #2
    adds r3, #2
    subs r2, #1
    cmp r2, #0
    bge .L08044AF4
    bx lr
    .align 2, 0
.L08044B04: .4byte 0x03001428
    func_end func_08044AEC

    thumb_func_start func_08044B08
func_08044B08: @ 0x08044B08
    ldr r3, .L08044B20 @ =0x03001428
    adds r1, r0, #0
    adds r1, #0x1e
    movs r2, #4
.L08044B10:
    ldrh r0, [r3]
    strh r0, [r1]
    adds r3, #2
    adds r1, #2
    subs r2, #1
    cmp r2, #0
    bge .L08044B10
    bx lr
    .align 2, 0
.L08044B20: .4byte 0x03001428
    func_end func_08044B08

    thumb_func_start func_08044B24
func_08044B24: @ 0x08044B24
    push {lr}
    bl func_08044DCC
    bl RefreshUnitSprites
    pop {r0}
    bx r0
    func_end func_08044B24

    thumb_func_start func_08044B34
func_08044B34: @ 0x08044B34
    movs r1, #0
    ldr r3, .L08044B50 @ =0x0203DC9C
    adds r2, r3, #0
    adds r2, #0xa
.L08044B3C:
    cmp r0, #2
    beq .L08044B66
    cmp r0, #2
    bgt .L08044B54
    cmp r0, #0
    beq .L08044B5E
    cmp r0, #1
    beq .L08044B62
    b .L08044B70
    .align 2, 0
.L08044B50: .4byte 0x0203DC9C
.L08044B54:
    cmp r0, #3
    beq .L08044B6A
    cmp r0, #0xff
    beq .L08044B6E
    b .L08044B70
.L08044B5E:
    movs r1, #2
    b .L08044B70
.L08044B62:
    movs r1, #3
    b .L08044B70
.L08044B66:
    movs r1, #1
    b .L08044B70
.L08044B6A:
    movs r1, #0
    b .L08044B70
.L08044B6E:
    movs r1, #0xff
.L08044B70:
    adds r0, r1, r2
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08044B80
    cmp r1, #0xff
    beq .L08044B80
    adds r0, r1, #0
    b .L08044B3C
.L08044B80:
    strb r1, [r3, #1]
    bx lr
    func_end func_08044B34

    thumb_func_start func_08044B84
func_08044B84: @ 0x08044B84
    ldr r1, .L08044B94 @ =0x0300141C
    movs r0, #0
    strb r0, [r1]
    strb r0, [r1, #1]
    strb r0, [r1, #3]
    strb r0, [r1, #2]
    bx lr
    .align 2, 0
.L08044B94: .4byte 0x0300141C
    func_end func_08044B84

    thumb_func_start func_08044B98
func_08044B98: @ 0x08044B98
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r0, r3, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    lsls r6, r6, #0x18
    lsrs r6, r6, #0x18
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp]
    bl func_08044B84
    ldr r1, .L08044BD4 @ =0x0300141C
    strb r4, [r1]
    strb r5, [r1, #1]
    strb r6, [r1, #2]
    ldr r0, [sp]
    strb r0, [r1, #3]
    ldr r0, .L08044BD8 @ =0x0203D90C
    ldrb r0, [r0]
    cmp r0, #2
    beq .L08044BDC
    movs r0, #0
    b .L08044BE8
    .align 2, 0
.L08044BD4: .4byte 0x0300141C
.L08044BD8: .4byte 0x0203D90C
.L08044BDC:
    adds r0, r1, #0
    movs r1, #4
    bl func_0803D274
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08044BE8:
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08044B98

    thumb_func_start func_08044BF0
func_08044BF0: @ 0x08044BF0
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    movs r1, #0
    ldr r3, .L08044C04 @ =0x03001400
.L08044BF8:
    adds r0, r1, r3
    ldrb r0, [r0]
    cmp r0, r2
    bne .L08044C08
    adds r0, r1, #0
    b .L08044C0E
    .align 2, 0
.L08044C04: .4byte 0x03001400
.L08044C08:
    adds r1, #1
    cmp r1, #0x13
    ble .L08044BF8
.L08044C0E:
    bx lr
    func_end func_08044BF0

    thumb_func_start func_08044C10
func_08044C10: @ 0x08044C10
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r4, r0, #0
    str r1, [sp, #0x10]
    adds r5, r2, #0
    mov r8, r3
    ldr r0, [sp, #0x34]
    mov sb, r0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r1, .L08044D04 @ =0x081D54EC
    mov r0, sp
    movs r2, #8
    bl memcpy
    add r7, sp, #8
    ldr r1, .L08044D08 @ =0x081D54F4
    adds r0, r7, #0
    movs r2, #8
    bl memcpy
    adds r0, r4, #0
    bl func_08044BF0
    adds r4, r0, #0
    movs r1, #5
    bl Div
    lsls r6, r0, #1
    strb r4, [r5]
    ldr r0, .L08044D0C @ =0x03001400
    adds r4, r4, r0
    ldrb r0, [r4]
    bl GetUnit
    adds r5, r0, #0
    ldr r0, [r5, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    mov sl, r1
    ands r0, r1
    cmp r0, #0
    bne .L08044C8C
    adds r0, r5, #0
    bl StartMu
    ldr r1, .L08044D10 @ =0x03001420
    ldr r2, [sp, #0x10]
    lsls r4, r2, #2
    adds r4, r4, r1
    str r0, [r4]
    bl DisableMuCamera
    ldr r0, [r4]
    mov r3, sp
    adds r1, r3, r6
    bl SetMuMoveScript
.L08044C8C:
    ldr r0, [r5, #0xc]
    movs r1, #1
    orrs r0, r1
    str r0, [r5, #0xc]
    bl RefreshUnitSprites
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    adds r4, r7, r6
    movs r1, #0
    ldrsb r1, [r4, r1]
    adds r0, r0, r1
    mov r1, r8
    str r0, [r1]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    adds r0, r6, #1
    adds r3, r7, r0
    movs r0, #0
    ldrsb r0, [r3, r0]
    adds r1, r1, r0
    mov r2, sb
    str r1, [r2]
    ldr r0, [r5, #0xc]
    mov r1, sl
    ands r0, r1
    cmp r0, #0
    beq .L08044CF4
    mov r2, r8
    ldr r0, [r2]
    movs r2, #0
    strb r0, [r5, #0x10]
    mov r1, sb
    ldr r0, [r1]
    strb r0, [r5, #0x11]
    movs r1, #0
    ldrsb r1, [r4, r1]
    mov r4, r8
    ldr r0, [r4]
    subs r0, r0, r1
    str r0, [r4]
    movs r1, #0
    ldrsb r1, [r3, r1]
    mov r3, sb
    ldr r0, [r3]
    subs r0, r0, r1
    str r0, [r3]
    ldr r1, .L08044D10 @ =0x03001420
    ldr r4, [sp, #0x10]
    lsls r0, r4, #2
    adds r0, r0, r1
    str r2, [r0]
.L08044CF4:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08044D04: .4byte 0x081D54EC
.L08044D08: .4byte 0x081D54F4
.L08044D0C: .4byte 0x03001400
.L08044D10: .4byte 0x03001420
    func_end func_08044C10

    thumb_func_start func_08044D14
func_08044D14: @ 0x08044D14
    ldr r1, .L08044D28 @ =0x03001400
    movs r2, #0
    adds r0, r1, #0
    adds r0, #0x13
.L08044D1C:
    strb r2, [r0]
    subs r0, #1
    cmp r0, r1
    bge .L08044D1C
    bx lr
    .align 2, 0
.L08044D28: .4byte 0x03001400
    func_end func_08044D14

    thumb_func_start func_08044D2C
func_08044D2C: @ 0x08044D2C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    movs r7, #0
.L08044D3A:
    ldr r0, .L08044DB8 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    adds r0, r7, r0
    ldr r1, .L08044DBC @ =0x081D5470
    adds r0, r0, r1
    ldrb r4, [r0]
    adds r0, r4, #0
    bl func_0803CD1C
    lsls r0, r0, #0x18
    adds r1, r7, #1
    mov sb, r1
    cmp r0, #0
    beq .L08044DA2
    lsls r0, r4, #6
    adds r0, #1
    mov r8, r0
    movs r6, #0
    lsls r3, r7, #2
    ldr r0, .L08044DC0 @ =0x081D5490
    mov sl, r0
.L08044D6C:
    adds r0, r3, r7
    adds r5, r0, r6
    ldr r0, .L08044DC4 @ =0x081D54FC
    adds r0, r6, r0
    ldrb r4, [r0]
    add r4, r8
    adds r0, r4, #0
    str r3, [sp]
    bl GetUnit
    adds r2, r0, #0
    ldr r0, [r2]
    ldr r3, [sp]
    cmp r0, #0
    beq .L08044D9C
    ldr r0, .L08044DC8 @ =0x03001400
    adds r0, r5, r0
    strb r4, [r0]
    lsls r1, r5, #2
    add r1, sl
    ldrh r0, [r1]
    strb r0, [r2, #0x10]
    ldrh r0, [r1, #2]
    strb r0, [r2, #0x11]
.L08044D9C:
    adds r6, #1
    cmp r6, #4
    ble .L08044D6C
.L08044DA2:
    mov r7, sb
    cmp r7, #3
    ble .L08044D3A
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08044DB8: .4byte 0x08B98AEC
.L08044DBC: .4byte 0x081D5470
.L08044DC0: .4byte 0x081D5490
.L08044DC4: .4byte 0x081D54FC
.L08044DC8: .4byte 0x03001400
    func_end func_08044D2C

    thumb_func_start func_08044DCC
func_08044DCC: @ 0x08044DCC
    push {r4, lr}
    ldr r0, .L08044E24 @ =gBmMapUnit
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L08044E28 @ =gMapFog
    ldr r0, [r0]
    movs r1, #1
    bl BmMapFill
    movs r4, #1
.L08044DE4:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08044E18
    ldr r0, [r2]
    cmp r0, #0
    beq .L08044E18
    ldr r0, [r2, #0xc]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L08044E18
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldr r0, .L08044E24 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    ldrb r2, [r2, #0x10]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    ldr r0, [r1]
    adds r0, r0, r2
    strb r4, [r0]
.L08044E18:
    adds r4, #1
    cmp r4, #0xc5
    ble .L08044DE4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08044E24: .4byte gBmMapUnit
.L08044E28: .4byte gMapFog
    func_end func_08044DCC

    thumb_func_start func_08044E2C
func_08044E2C: @ 0x08044E2C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    movs r2, #0
    ldr r0, .L08044EA4 @ =0x081D5470
    mov sl, r0
.L08044E3E:
    ldr r0, .L08044EA8 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    adds r0, r2, r0
    add r0, sl
    ldrb r4, [r0]
    adds r0, r4, #0
    str r2, [sp]
    bl func_0803CD1C
    lsls r0, r0, #0x18
    ldr r2, [sp]
    adds r1, r2, #1
    mov sb, r1
    cmp r0, #0
    beq .L08044EC2
    lsls r0, r4, #6
    adds r0, #1
    mov r8, r0
    movs r6, #0
    lsls r3, r2, #2
    ldr r7, .L08044EAC @ =0x03001400
.L08044E70:
    adds r0, r3, r2
    adds r5, r0, r6
    ldr r0, .L08044EB0 @ =0x081D54FC
    adds r0, r6, r0
    ldrb r4, [r0]
    add r4, r8
    adds r0, r4, #0
    str r2, [sp]
    str r3, [sp, #4]
    bl GetUnit
    adds r1, r0, #0
    ldr r0, [r1]
    ldr r2, [sp]
    ldr r3, [sp, #4]
    cmp r0, #0
    beq .L08044E9C
    ldr r0, [r1, #0xc]
    ldr r1, .L08044EB4 @ =0x00010005
    ands r0, r1
    cmp r0, #0
    beq .L08044EB8
.L08044E9C:
    adds r1, r5, r7
    movs r0, #0
    strb r0, [r1]
    b .L08044EBC
    .align 2, 0
.L08044EA4: .4byte 0x081D5470
.L08044EA8: .4byte 0x08B98AEC
.L08044EAC: .4byte 0x03001400
.L08044EB0: .4byte 0x081D54FC
.L08044EB4: .4byte 0x00010005
.L08044EB8:
    adds r0, r5, r7
    strb r4, [r0]
.L08044EBC:
    adds r6, #1
    cmp r6, #4
    ble .L08044E70
.L08044EC2:
    mov r2, sb
    cmp r2, #3
    ble .L08044E3E
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08044E2C

    thumb_func_start func_08044ED8
func_08044ED8: @ 0x08044ED8
    push {r4, r5, lr}
    sub sp, #4
    mov r1, sp
    movs r0, #0
    strh r0, [r1]
    ldr r4, .L08044F30 @ =gBmSt
    ldr r2, .L08044F34 @ =0x01000020
    mov r0, sp
    adds r1, r4, #0
    bl CpuSet
    movs r0, #0x40
    movs r5, #0
    ldrb r1, [r4, #4]
    orrs r0, r1
    strb r0, [r4, #4]
    bl InitTraps
    ldr r4, .L08044F38 @ =gPlaySt
    movs r0, #0x40
    strb r0, [r4, #0xf]
    movs r0, #0x41
    strb r0, [r4, #0xe]
    strh r5, [r4, #0x10]
    bl GetChapterInfo
    ldrb r0, [r0, #0xc]
    strb r0, [r4, #0xd]
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0x12]
    strb r0, [r4, #0x15]
    movs r0, #0x41
    bl InitMapForChapter
    bl GetGameTime
    str r0, [r4, #4]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08044F30: .4byte gBmSt
.L08044F34: .4byte 0x01000020
.L08044F38: .4byte gPlaySt
    func_end func_08044ED8

    thumb_func_start func_08044F3C
func_08044F3C: @ 0x08044F3C
    push {lr}
    bl func_08044ED8
    bl func_08044D14
    bl func_08044D2C
    ldr r0, .L08044F6C @ =gMapFog
    ldr r2, [r0]
    movs r1, #0
    ldr r0, .L08044F70 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    bne .L08044F5A
    movs r1, #1
.L08044F5A:
    adds r0, r2, #0
    bl BmMapFill
    bl func_08044DCC
    bl RenderMap
    pop {r0}
    bx r0
    .align 2, 0
.L08044F6C: .4byte gMapFog
.L08044F70: .4byte gPlaySt
    func_end func_08044F3C

    thumb_func_start func_08044F74
func_08044F74: @ 0x08044F74
    push {r4, lr}
    ldr r0, .L08044FAC @ =0x0203DC9C
    movs r1, #0
    movs r2, #3
    adds r0, #0xd
.L08044F7E:
    strb r1, [r0]
    subs r0, #1
    subs r2, #1
    cmp r2, #0
    bge .L08044F7E
    movs r2, #0
    ldr r4, .L08044FB0 @ =0x03001400
    ldr r3, .L08044FB4 @ =0x0203DCA6
.L08044F8E:
    adds r0, r2, r4
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08044FA0
    lsrs r0, r0, #6
    adds r0, r0, r3
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
.L08044FA0:
    adds r2, #1
    cmp r2, #0x13
    ble .L08044F8E
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08044FAC: .4byte 0x0203DC9C
.L08044FB0: .4byte 0x03001400
.L08044FB4: .4byte 0x0203DCA6
    func_end func_08044F74

    thumb_func_start func_08044FB8
func_08044FB8: @ 0x08044FB8
    push {lr}
    ldr r0, .L08044FC8 @ =0x081C7D58
    ldr r1, .L08044FCC @ =0x06014800
    bl Decompress
    pop {r0}
    bx r0
    .align 2, 0
.L08044FC8: .4byte 0x081C7D58
.L08044FCC: .4byte 0x06014800
    func_end func_08044FB8

    thumb_func_start func_08044FD0
func_08044FD0: @ 0x08044FD0
    push {lr}
    movs r0, #0
    bl InitBgs
    bl ApplySystemGraphics
    bl ApplyUnitSpritePalettes
    bl ForceSyncUnitSpriteSheet
    bl func_08044FB8
    bl InitSystemTextFont
    ldr r1, .L08044FF8 @ =0x0203DC9C
    movs r0, #0xff
    strb r0, [r1, #3]
    pop {r0}
    bx r0
    .align 2, 0
.L08044FF8: .4byte 0x0203DC9C
    func_end func_08044FD0

    thumb_func_start func_08044FFC
func_08044FFC: @ 0x08044FFC
    push {r4, r5, lr}
    ldr r1, .L08045054 @ =gPlaySt
    movs r0, #0x42
    adds r0, r0, r1
    mov ip, r0
    movs r3, #7
    rsbs r3, r3, #0
    ldrb r2, [r0]
    ands r3, r2
    adds r5, r1, #0
    adds r5, #0x40
    movs r2, #0x10
    ldrb r0, [r5]
    orrs r2, r0
    movs r0, #0x61
    rsbs r0, r0, #0
    ands r2, r0
    movs r0, #0x40
    orrs r2, r0
    movs r0, #0x7f
    ands r2, r0
    adds r4, r1, #0
    adds r4, #0x41
    subs r0, #0x81
    ldrb r1, [r4]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #0xa
    ands r0, r1
    strb r0, [r4]
    movs r0, #0x19
    rsbs r0, r0, #0
    ands r3, r0
    mov r0, ip
    strb r3, [r0]
    movs r0, #1
    orrs r2, r0
    strb r2, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08045054: .4byte gPlaySt
    func_end func_08044FFC

    thumb_func_start func_08045058
func_08045058: @ 0x08045058
    push {r4, r5, lr}
    movs r0, #0
    bl InitBgs
    bl func_0803DBD0
    bl func_08044F3C
    bl func_08044F74
    ldr r4, .L08045104 @ =0x0203DC9C
    movs r5, #0
    strb r5, [r4, #9]
    ldr r0, .L08045108 @ =0x0203D90C
    strb r5, [r0, #0xb]
    ldr r0, .L0804510C @ =0x08B99BC4
    ldrb r1, [r4]
    adds r0, r1, r0
    ldrb r0, [r0]
    bl func_08044B34
    movs r0, #1
    strb r0, [r4, #0xe]
    strb r5, [r4, #2]
    strb r0, [r4, #3]
    movs r1, #0
    movs r0, #3
    adds r4, #0x20
.L08045090:
    str r1, [r4]
    subs r4, #4
    subs r0, #1
    cmp r0, #0
    bge .L08045090
    movs r4, #0
    ldr r0, .L08045110 @ =0x03001400
    ldrb r0, [r0, #3]
    bl GetUnit
    ldr r2, .L08045114 @ =0x03001414
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    lsls r1, r1, #4
    strh r1, [r2]
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    lsls r1, r1, #4
    strh r1, [r2, #2]
    movs r2, #0x10
    ldrsb r2, [r0, r2]
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    adds r0, r2, #0
    bl SetMapCursorPosition
    ldr r0, .L08045118 @ =gBmSt
    strh r4, [r0, #0xc]
    strh r4, [r0, #0xe]
    bl ApplySystemGraphics
    bl ApplyUnitSpritePalettes
    bl ResetUnitSprites
    bl RefreshUnitSprites
    bl func_08044FB8
    bl func_08046B48
    ldr r0, .L0804511C @ =0x08B961A8
    movs r1, #4
    bl Proc_Start
    bl func_0802D380
    bl func_08044FFC
    ldr r1, .L08045120 @ =gPlaySt
    movs r0, #0xbf
    ldrb r2, [r1, #0x14]
    ands r0, r2
    strb r0, [r1, #0x14]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08045104: .4byte 0x0203DC9C
.L08045108: .4byte 0x0203D90C
.L0804510C: .4byte 0x08B99BC4
.L08045110: .4byte 0x03001400
.L08045114: .4byte 0x03001414
.L08045118: .4byte gBmSt
.L0804511C: .4byte 0x08B961A8
.L08045120: .4byte gPlaySt
    func_end func_08045058

    thumb_func_start func_08045124
func_08045124: @ 0x08045124
    push {r4, r5, lr}
    ldr r0, .L08045164 @ =0x03001400
    ldr r1, .L08045168 @ =0x0203DC9C
    ldrb r1, [r1, #4]
    adds r0, r1, r0
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    bl StartMu
    ldr r5, .L0804516C @ =0x03001420
    str r0, [r5]
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    movs r2, #0x11
    ldrsb r2, [r4, r2]
    subs r2, #1
    lsls r2, r2, #4
    bl func_0806DAFC
    ldr r0, [r5]
    bl DisableMuCamera
    ldr r0, [r5]
    movs r1, #3
    bl func_0806BF4C
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08045164: .4byte 0x03001400
.L08045168: .4byte 0x0203DC9C
.L0804516C: .4byte 0x03001420
    func_end func_08045124

    thumb_func_start func_08045170
func_08045170: @ 0x08045170
    push {lr}
    adds r2, r0, #0
    ldr r0, .L08045190 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0804518A
    adds r0, r2, #0
    bl Proc_Break
.L0804518A:
    pop {r0}
    bx r0
    .align 2, 0
.L08045190: .4byte gpKeySt
    func_end func_08045170

    thumb_func_start func_08045194
func_08045194: @ 0x08045194
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080451A8 @ =0x0203D90C
    ldrb r0, [r0]
    cmp r0, #1
    beq .L080451AC
    cmp r0, #2
    beq .L080451C0
    b .L080451EC
    .align 2, 0
.L080451A8: .4byte 0x0203D90C
.L080451AC:
    ldr r0, .L080451B8 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0
    beq .L080451CE
    ldr r0, .L080451BC @ =0x08B99FF8
    b .L080451D0
    .align 2, 0
.L080451B8: .4byte gPlaySt
.L080451BC: .4byte 0x08B99FF8
.L080451C0:
    ldr r0, .L080451D8 @ =gPlaySt
    ldr r1, .L080451DC @ =0x08B98AEC
    ldr r1, [r1]
    ldrb r0, [r0, #0xf]
    ldrb r1, [r1, #6]
    cmp r0, r1
    bne .L080451E4
.L080451CE:
    ldr r0, .L080451E0 @ =0x08B99D58
.L080451D0:
    adds r1, r4, #0
    bl Proc_StartBlocking
    b .L080451EC
    .align 2, 0
.L080451D8: .4byte gPlaySt
.L080451DC: .4byte 0x08B98AEC
.L080451E0: .4byte 0x08B99D58
.L080451E4:
    ldr r0, .L080451F8 @ =0x08B99F08
    adds r1, r4, #0
    bl Proc_StartBlocking
.L080451EC:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080451F8: .4byte 0x08B99F08
    func_end func_08045194

    thumb_func_start func_080451FC
func_080451FC: @ 0x080451FC
    push {r4, lr}
    adds r3, r0, #0
    movs r1, #0
    ldr r0, .L08045214 @ =0x0203D90C
    ldrb r2, [r0]
    cmp r2, #1
    bne .L08045218
    ldrb r0, [r0, #0xb]
    cmp r0, #1
    bne .L08045228
    b .L0804521E
    .align 2, 0
.L08045214: .4byte 0x0203D90C
.L08045218:
    ldrb r0, [r0, #0xb]
    cmp r0, #2
    bne .L08045228
.L0804521E:
    adds r0, r3, #0
    movs r1, #3
    bl Proc_Goto
    b .L08045282
.L08045228:
    ldr r0, .L0804523C @ =0x0203DC9C
    ldrb r2, [r0, #1]
    adds r0, r2, #0
    cmp r0, #0xff
    bne .L08045240
    adds r0, r3, #0
    movs r1, #2
    bl Proc_Goto
    b .L08045282
    .align 2, 0
.L0804523C: .4byte 0x0203DC9C
.L08045240:
    ldr r0, .L08045248 @ =gPlaySt
    strb r2, [r0, #0xf]
    ldr r2, .L0804524C @ =0x03001400
    b .L08045252
    .align 2, 0
.L08045248: .4byte gPlaySt
.L0804524C: .4byte 0x03001400
.L08045250:
    adds r1, #1
.L08045252:
    adds r0, r1, r2
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08045250
    ldr r4, .L08045288 @ =0x0203DC9C
    strb r1, [r4, #2]
    adds r0, r1, #1
    strb r0, [r4, #3]
    bl ApplySystemObjectsGraphics
    movs r0, #0
    adds r4, #0x2c
    movs r1, #3
.L0804526C:
    str r0, [r4, #4]
    strb r0, [r4]
    adds r4, #8
    subs r1, #1
    cmp r1, #0
    bge .L0804526C
    movs r0, #1
    rsbs r0, r0, #0
    movs r1, #9
    bl SetupDebugFontForOBJ
.L08045282:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08045288: .4byte 0x0203DC9C
    func_end func_080451FC

    thumb_func_start func_0804528C
func_0804528C: @ 0x0804528C
    push {r4, r5, r6, r7, lr}
    movs r5, #4
    ldr r3, .L080452E8 @ =0x0203DC9C
    ldr r0, .L080452EC @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    adds r2, r3, #0
    adds r2, #0x14
    adds r0, r0, r2
    ldr r7, [r0]
    ldr r1, .L080452F0 @ =0x0203D90C
    movs r0, #0x80
    lsls r0, r0, #1
    adds r1, r1, r0
    movs r0, #2
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L080452F8
    movs r4, #0
    adds r5, r3, #0
    adds r5, #0xf
.L080452BE:
    lsls r0, r4, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080452DC
    ldr r0, .L080452EC @ =0x08B98AEC
    ldr r0, [r0]
    movs r1, #6
    ldrsb r1, [r0, r1]
    adds r0, r4, r5
    ldrb r0, [r0]
    cmp r1, r0
    beq .L080452F4
.L080452DC:
    adds r4, #1
    cmp r4, #3
    ble .L080452BE
    movs r5, #3
    b .L08045328
    .align 2, 0
.L080452E8: .4byte 0x0203DC9C
.L080452EC: .4byte 0x08B98AEC
.L080452F0: .4byte 0x0203D90C
.L080452F4:
    adds r0, r4, #0
    b .L0804532A
.L080452F8:
    movs r4, #0
    adds r6, r2, #0
.L080452FC:
    lsls r0, r4, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0804531E
    ldr r0, .L08045330 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, r4
    beq .L0804531E
    ldr r0, [r6]
    cmp r7, r0
    bls .L08045320
.L0804531E:
    subs r5, #1
.L08045320:
    adds r6, #4
    adds r4, #1
    cmp r4, #3
    ble .L080452FC
.L08045328:
    adds r0, r5, #0
.L0804532A:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08045330: .4byte 0x08B98AEC
    func_end func_0804528C

    thumb_func_start func_08045334
func_08045334: @ 0x08045334
    push {lr}
    ldr r0, .L08045350 @ =0x08B961A8
    bl Proc_EndEach
    bl func_08046B5C
    bl func_0802D3A4
    movs r0, #1
    bl FadeBgmOut
    pop {r0}
    bx r0
    .align 2, 0
.L08045350: .4byte 0x08B961A8
    func_end func_08045334

    thumb_func_start func_08045354
func_08045354: @ 0x08045354
    push {r4, r5, r6, r7, lr}
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    mov ip, r1
    ldr r1, .L08045384 @ =0x0203DC9C
    ldrb r2, [r1, #2]
    adds r5, r2, #0
    strb r2, [r1, #3]
    movs r0, #0xf0
    ands r0, r3
    adds r7, r1, #0
    cmp r0, #0
    beq .L08045442
    lsls r4, r2, #2
    movs r0, #0x40
    ands r0, r3
    cmp r0, #0
    beq .L0804538C
    ldr r0, .L08045388 @ =0x08B99BC8
    adds r0, r4, r0
    b .L080453C2
    .align 2, 0
.L08045384: .4byte 0x0203DC9C
.L08045388: .4byte 0x08B99BC8
.L0804538C:
    movs r0, #0x80
    ands r0, r3
    cmp r0, #0
    beq .L080453A0
    ldr r1, .L0804539C @ =0x08B99BC8
    adds r0, r4, #1
    b .L080453C0
    .align 2, 0
.L0804539C: .4byte 0x08B99BC8
.L080453A0:
    movs r0, #0x20
    ands r0, r3
    cmp r0, #0
    beq .L080453B4
    ldr r1, .L080453B0 @ =0x08B99BC8
    adds r0, r4, #2
    b .L080453C0
    .align 2, 0
.L080453B0: .4byte 0x08B99BC8
.L080453B4:
    movs r0, #0x10
    ands r0, r3
    cmp r0, #0
    beq .L080453C4
    ldr r1, .L08045420 @ =0x08B99BC8
    adds r0, r4, #3
.L080453C0:
    adds r0, r0, r1
.L080453C2:
    ldrb r2, [r0]
.L080453C4:
    subs r5, r2, r5
    ldrb r0, [r7, #3]
    cmp r0, #0
    bne .L080453D8
    movs r0, #0x20
    ands r0, r3
    cmp r0, #0
    beq .L080453D8
    movs r5, #1
    rsbs r5, r5, #0
.L080453D8:
    ldrb r0, [r7, #3]
    cmp r0, #0x13
    bne .L080453E8
    movs r0, #0x80
    ands r0, r3
    cmp r0, #0
    beq .L080453E8
    movs r5, #1
.L080453E8:
    ldr r6, .L08045424 @ =0x03001400
    mov r0, ip
    lsls r4, r0, #0x18
.L080453EE:
    adds r0, r2, r6
    ldrb r0, [r0]
    lsls r1, r0, #0x18
    cmp r1, #0
    beq .L0804540C
    cmp r4, #0
    beq .L08045440
    lsrs r1, r1, #0x1e
    ldr r0, .L08045428 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bne .L08045440
.L0804540C:
    cmp r5, #0
    bge .L0804542C
    subs r0, r2, #1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    cmp r2, #0xff
    bne .L080453EE
    movs r2, #0x13
    b .L080453EE
    .align 2, 0
.L08045420: .4byte 0x08B99BC8
.L08045424: .4byte 0x03001400
.L08045428: .4byte 0x08B98AEC
.L0804542C:
    adds r0, r2, #1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    adds r0, r2, #0
    movs r1, #0x14
    bl __umodsi3
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    b .L080453EE
.L08045440:
    strb r2, [r7, #2]
.L08045442:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08045354

    thumb_func_start func_08045448
func_08045448: @ 0x08045448
    push {r4, r5, r6, r7, lr}
    ldr r6, .L080454B4 @ =0x0203DC9C
    ldrb r0, [r6, #2]
    ldrb r1, [r6, #3]
    cmp r0, r1
    beq .L080454AE
    ldr r7, .L080454B8 @ =0x03001400
    adds r0, r1, r7
    ldrb r0, [r0]
    bl GetUnit
    adds r5, r0, #0
    ldrb r1, [r6, #2]
    adds r0, r1, r7
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    cmp r5, #0
    beq .L0804547A
    bl EndAllMus
    adds r0, r5, #0
    bl ShowUnitSprite
.L0804547A:
    cmp r4, #0
    beq .L080454AE
    ldr r0, [r4, #0xc]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L080454AE
    ldrb r6, [r6, #2]
    adds r0, r6, r7
    ldrb r0, [r0]
    lsrs r1, r0, #6
    ldr r0, .L080454BC @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bne .L080454AE
    adds r0, r4, #0
    bl StartMu
    bl DisableMuCamera
    adds r0, r4, #0
    bl HideUnitSprite
.L080454AE:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080454B4: .4byte 0x0203DC9C
.L080454B8: .4byte 0x03001400
.L080454BC: .4byte 0x08B98AEC
    func_end func_08045448

    thumb_func_start func_080454C0
func_080454C0: @ 0x080454C0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r5, #0
.L080454C6:
    lsls r1, r5, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L080454F2
    adds r0, r6, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L080454F2
    movs r0, #1
    b .L080454FA
.L080454F2:
    adds r5, #1
    cmp r5, #4
    ble .L080454C6
    movs r0, #0
.L080454FA:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_080454C0

    thumb_func_start func_08045500
func_08045500: @ 0x08045500
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, .L08045534 @ =0x0203DC9C
    ldr r1, .L08045538 @ =0x0203D90C
    adds r1, #0xa0
    ldrb r3, [r1]
    lsls r0, r3, #1
    adds r0, r0, r3
    ldrb r2, [r2, #9]
    cmp r2, r0
    blt .L08045528
    bl func_080442FC
    ldr r0, .L0804553C @ =0x08B99D3C
    bl StartEvent
    adds r0, r4, #0
    movs r1, #3
    bl Proc_Goto
.L08045528:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08045534: .4byte 0x0203DC9C
.L08045538: .4byte 0x0203D90C
.L0804553C: .4byte 0x08B99D3C
    func_end func_08045500

    thumb_func_start func_08045540
func_08045540: @ 0x08045540
    push {r4, lr}
    adds r4, r0, #0
    bl func_0803CDB8
    cmp r0, #7
    bgt .L08045552
    adds r0, r4, #0
    bl Proc_Break
.L08045552:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08045540

    thumb_func_start func_08045558
func_08045558: @ 0x08045558
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r6, r0, #0
    ldr r1, .L08045640 @ =0x081D5501
    mov r0, sp
    movs r2, #2
    bl memcpy
    ldr r0, .L08045644 @ =0x0203DC9C
    mov sb, r0
    ldrb r1, [r0, #2]
    mov sl, r1
    bl func_08045448
    ldr r4, .L08045648 @ =gpKeySt
    ldr r0, [r4]
    ldrh r0, [r0, #6]
    movs r1, #0
    bl func_08045354
    ldr r2, .L0804564C @ =gActiveUnitId
    mov r8, r2
    ldr r0, .L08045650 @ =0x03001400
    mov r3, sb
    ldrb r3, [r3, #2]
    adds r0, r3, r0
    ldrb r0, [r0]
    strb r0, [r2]
    ldrb r0, [r2]
    bl GetUnit
    adds r2, r0, #0
    ldr r7, .L08045654 @ =gActiveUnit
    str r2, [r7]
    ldr r1, [r4]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0804567C
    mov r0, r8
    ldrb r0, [r0]
    lsrs r1, r0, #6
    ldr r0, .L08045658 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bne .L08045668
    adds r0, r2, #0
    bl func_080454C0
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    cmp r5, #1
    bne .L08045668
    ldr r0, .L0804565C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080455E4
    ldr r0, .L08045660 @ =0x00000389
    bl m4aSongNumStart
.L080455E4:
    bl EndAllMus
    ldr r0, [r7]
    bl StartMu
    ldr r4, .L08045664 @ =0x03001420
    str r0, [r4]
    bl DisableMuCamera
    ldr r0, [r4]
    mov r1, sp
    bl SetMuMoveScript
    ldr r1, [r7]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    str r0, [r6, #0x2c]
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    subs r0, #1
    str r0, [r6, #0x30]
    ldr r0, [r1, #0xc]
    orrs r0, r5
    str r0, [r1, #0xc]
    bl func_08044B24
    mov r1, sb
    ldrb r0, [r1, #2]
    strb r0, [r1, #4]
    movs r0, #0x40
    movs r1, #1
    bl func_08045354
    mov r2, r8
    ldrb r1, [r2]
    movs r0, #1
    movs r2, #0
    movs r3, #0
    bl func_08044B98
    adds r0, r6, #0
    movs r1, #5
    bl Proc_Goto
    b .L0804575A
    .align 2, 0
.L08045640: .4byte 0x081D5501
.L08045644: .4byte 0x0203DC9C
.L08045648: .4byte gpKeySt
.L0804564C: .4byte gActiveUnitId
.L08045650: .4byte 0x03001400
.L08045654: .4byte gActiveUnit
.L08045658: .4byte 0x08B98AEC
.L0804565C: .4byte gPlaySt
.L08045660: .4byte 0x00000389
.L08045664: .4byte 0x03001420
.L08045668:
    ldr r0, .L080456AC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804567C
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
.L0804567C:
    ldr r2, .L080456B0 @ =gpKeySt
    ldr r1, [r2]
    movs r0, #0x80
    lsls r0, r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080456B8
    ldr r0, .L080456B4 @ =gActiveUnit
    ldr r0, [r0]
    ldr r0, [r0, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L080456B8
    bl EndAllMus
    adds r0, r6, #0
    movs r1, #4
    bl Proc_Goto
    b .L0804575A
    .align 2, 0
.L080456AC: .4byte gPlaySt
.L080456B0: .4byte gpKeySt
.L080456B4: .4byte gActiveUnit
.L080456B8:
    ldr r1, [r2]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080456F4
    bl func_080442FC
    ldr r0, .L080456EC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080456E2
    movs r0, #0xe2
    lsls r0, r0, #2
    bl m4aSongNumStart
    ldr r0, .L080456F0 @ =0x08B99D20
    bl StartEvent
.L080456E2:
    adds r0, r6, #0
    movs r1, #2
    bl Proc_Goto
    b .L0804575A
    .align 2, 0
.L080456EC: .4byte gPlaySt
.L080456F0: .4byte 0x08B99D20
.L080456F4:
    ldr r0, .L0804576C @ =gActiveUnit
    ldr r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    lsls r5, r0, #4
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r4, r1, #4
    bl SetMapCursorPosition
    bl GetGameTime
    subs r0, #1
    ldr r6, .L08045770 @ =0x03001418
    ldr r1, [r6]
    cmp r0, r1
    bne .L0804572A
    ldr r0, .L08045774 @ =0x03001414
    movs r3, #0
    ldrsh r1, [r0, r3]
    adds r1, r5, r1
    asrs r5, r1, #1
    movs r1, #2
    ldrsh r0, [r0, r1]
    adds r0, r4, r0
    asrs r4, r0, #1
.L0804572A:
    ldr r0, .L08045774 @ =0x03001414
    strh r5, [r0]
    strh r4, [r0, #2]
    bl GetGameTime
    str r0, [r6]
    adds r0, r5, #0
    adds r1, r4, #0
    movs r2, #0
    bl PutMapCursor
    ldr r0, .L08045778 @ =0x0203DC9C
    ldrb r0, [r0, #2]
    cmp sl, r0
    beq .L0804575A
    ldr r0, .L0804577C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804575A
    ldr r0, .L08045780 @ =0x00000385
    bl m4aSongNumStart
.L0804575A:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804576C: .4byte gActiveUnit
.L08045770: .4byte 0x03001418
.L08045774: .4byte 0x03001414
.L08045778: .4byte 0x0203DC9C
.L0804577C: .4byte gPlaySt
.L08045780: .4byte 0x00000385
    func_end func_08045558

    thumb_func_start func_08045784
func_08045784: @ 0x08045784
    push {lr}
    bl func_080442D4
    pop {r0}
    bx r0
    func_end func_08045784

    thumb_func_start func_08045790
func_08045790: @ 0x08045790
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    mov r8, r0
    ldr r6, .L0804586C @ =0x0203DC9C
    ldrb r0, [r6, #2]
    str r0, [sp, #4]
    ldr r1, .L08045870 @ =gpKeySt
    ldr r0, [r1]
    ldrh r0, [r0, #6]
    movs r1, #1
    bl func_08045354
    ldr r2, .L08045874 @ =gActiveUnitId
    mov sl, r2
    ldr r0, .L08045878 @ =0x03001400
    mov sb, r0
    ldrb r0, [r6, #2]
    add r0, sb
    ldrb r0, [r0]
    strb r0, [r2]
    ldrb r0, [r2]
    bl GetUnit
    ldr r1, .L0804587C @ =gActiveUnit
    str r0, [r1]
    movs r2, #0x10
    ldrsb r2, [r0, r2]
    lsls r5, r2, #4
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    lsls r4, r1, #4
    adds r0, r2, #0
    bl SetMapCursorPosition
    bl GetGameTime
    subs r0, #1
    ldr r7, .L08045880 @ =0x03001418
    ldr r1, [r7]
    cmp r0, r1
    bne .L080457FC
    ldr r0, .L08045884 @ =0x03001414
    movs r2, #0
    ldrsh r1, [r0, r2]
    adds r1, r5, r1
    asrs r5, r1, #1
    movs r1, #2
    ldrsh r0, [r0, r1]
    adds r0, r4, r0
    asrs r4, r0, #1
.L080457FC:
    ldr r0, .L08045884 @ =0x03001414
    strh r5, [r0]
    strh r4, [r0, #2]
    bl GetGameTime
    str r0, [r7]
    adds r0, r5, #0
    adds r1, r4, #0
    movs r2, #0
    bl PutMapCursor
    ldr r2, .L08045870 @ =gpKeySt
    ldr r0, [r2]
    ldrh r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L08045890
    ldr r0, .L08045888 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08045832
    ldr r0, .L0804588C @ =0x00000389
    bl m4aSongNumStart
.L08045832:
    ldrb r0, [r6, #2]
    add r0, sb
    ldrb r0, [r0]
    adds r2, r6, #5
    mov r3, r8
    adds r3, #0x34
    mov r1, r8
    adds r1, #0x38
    str r1, [sp]
    movs r1, #1
    bl func_08044C10
    ldrb r0, [r6, #5]
    add r0, sb
    ldrb r1, [r0]
    mov r0, sl
    ldrb r2, [r0]
    movs r0, #3
    movs r3, #0
    bl func_08044B98
    bl func_080442FC
    mov r0, r8
    movs r1, #7
    bl Proc_Goto
    b .L08045944
    .align 2, 0
.L0804586C: .4byte 0x0203DC9C
.L08045870: .4byte gpKeySt
.L08045874: .4byte gActiveUnitId
.L08045878: .4byte 0x03001400
.L0804587C: .4byte gActiveUnit
.L08045880: .4byte 0x03001418
.L08045884: .4byte 0x03001414
.L08045888: .4byte gPlaySt
.L0804588C: .4byte 0x00000389
.L08045890:
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L080458FC
    ldr r0, .L080458F0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080458AA
    ldr r0, .L080458F4 @ =0x0000038B
    bl m4aSongNumStart
.L080458AA:
    ldr r0, .L080458F8 @ =0x03001420
    ldr r0, [r0]
    bl EndMu
    ldrb r0, [r6, #4]
    add r0, sb
    ldrb r0, [r0]
    bl GetUnit
    ldr r1, [r0, #0xc]
    movs r2, #2
    rsbs r2, r2, #0
    ands r1, r2
    str r1, [r0, #0xc]
    bl func_08044B24
    ldrb r0, [r6, #4]
    strb r0, [r6, #2]
    adds r0, #1
    strb r0, [r6, #3]
    mov r2, sl
    ldrb r1, [r2]
    ldrb r0, [r6, #4]
    add r0, sb
    ldrb r2, [r0]
    movs r0, #2
    movs r3, #0
    bl func_08044B98
    mov r0, r8
    movs r1, #1
    bl Proc_Goto
    b .L08045944
    .align 2, 0
.L080458F0: .4byte gPlaySt
.L080458F4: .4byte 0x0000038B
.L080458F8: .4byte 0x03001420
.L080458FC:
    movs r0, #0x80
    lsls r0, r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L08045928
    ldr r1, .L08045924 @ =gActiveUnit
    ldr r0, [r1]
    ldr r0, [r0, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L08045928
    bl EndAllMus
    mov r0, r8
    movs r1, #6
    bl Proc_Goto
    b .L08045944
    .align 2, 0
.L08045924: .4byte gActiveUnit
.L08045928:
    ldr r0, .L08045954 @ =0x0203DC9C
    ldr r2, [sp, #4]
    ldrb r0, [r0, #2]
    cmp r2, r0
    beq .L08045944
    ldr r0, .L08045958 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08045944
    ldr r0, .L0804595C @ =0x00000385
    bl m4aSongNumStart
.L08045944:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08045954: .4byte 0x0203DC9C
.L08045958: .4byte gPlaySt
.L0804595C: .4byte 0x00000385
    func_end func_08045790

    thumb_func_start func_08045960
func_08045960: @ 0x08045960
    push {r4, lr}
    adds r4, r0, #0
    bl ResetTextFont
    ldr r1, .L080459A0 @ =0x0203DC9C
    movs r0, #0xff
    strb r0, [r1, #6]
    ldr r0, .L080459A4 @ =0x03001400
    ldrb r1, [r1, #4]
    adds r0, r1, r0
    ldrb r0, [r0]
    bl GetUnit
    ldr r1, .L080459A8 @ =gActiveUnit
    str r0, [r1]
    bl func_08044AEC
    bl GetGameLock
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r4, #0x64
    strh r0, [r4]
    movs r0, #4
    bl ApplyIconPalettes
    ldr r0, .L080459AC @ =0x08B9A7B8
    bl StartMenu
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080459A0: .4byte 0x0203DC9C
.L080459A4: .4byte 0x03001400
.L080459A8: .4byte gActiveUnit
.L080459AC: .4byte 0x08B9A7B8
    func_end func_08045960

    thumb_func_start func_080459B0
func_080459B0: @ 0x080459B0
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r0, #0x64
    movs r1, #0
    ldrsh r4, [r0, r1]
    bl GetGameLock
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r4, r0
    bne .L080459E2
    ldr r0, .L080459E8 @ =0x0203DC9C
    ldrb r0, [r0, #6]
    cmp r0, #0
    bne .L080459DC
    ldr r0, .L080459EC @ =gActiveUnit
    ldr r0, [r0]
    bl func_08044B08
    adds r0, r5, #0
    bl Proc_End
.L080459DC:
    adds r0, r5, #0
    bl Proc_Break
.L080459E2:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080459E8: .4byte 0x0203DC9C
.L080459EC: .4byte gActiveUnit
    func_end func_080459B0

    thumb_func_start func_080459F0
func_080459F0: @ 0x080459F0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, .L08045A28 @ =gActiveUnit
    ldr r0, [r0]
    ldr r6, .L08045A2C @ =0x0203DC9C
    ldrb r2, [r6, #7]
    lsls r1, r2, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r5, [r0]
    bl GetGameLock
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r4, #0x64
    strh r0, [r4]
    adds r0, r5, #0
    bl func_0801736C
    cmp r0, #1
    bne .L08045A30
    adds r0, r5, #0
    bl func_08017384
    cmp r0, #1
    bne .L08045A30
    strb r0, [r6, #6]
    b .L08045AB2
    .align 2, 0
.L08045A28: .4byte gActiveUnit
.L08045A2C: .4byte 0x0203DC9C
.L08045A30:
    adds r0, r5, #0
    bl func_0801736C
    cmp r0, #2
    bne .L08045A50
    adds r0, r5, #0
    bl func_08017384
    adds r1, r0, #0
    cmp r1, #2
    bne .L08045A50
    ldr r0, .L08045A4C @ =0x0203DC9C
    strb r1, [r0, #6]
    b .L08045AB2
    .align 2, 0
.L08045A4C: .4byte 0x0203DC9C
.L08045A50:
    adds r0, r5, #0
    bl func_0801736C
    adds r4, r0, #0
    cmp r4, #2
    bne .L08045A70
    adds r0, r5, #0
    bl func_08017384
    cmp r0, #3
    bne .L08045A70
    ldr r0, .L08045A6C @ =0x0203DC9C
    strb r4, [r0, #6]
    b .L08045AB2
    .align 2, 0
.L08045A6C: .4byte 0x0203DC9C
.L08045A70:
    ldr r0, .L08045A90 @ =0x03001400
    ldr r4, .L08045A94 @ =0x0203DC9C
    ldrb r1, [r4, #5]
    adds r0, r1, r0
    ldrb r0, [r0]
    bl GetUnit
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r5, #0
    bne .L08045A98
    movs r0, #1
    strb r0, [r4, #6]
    b .L08045AB2
    .align 2, 0
.L08045A90: .4byte 0x03001400
.L08045A94: .4byte 0x0203DC9C
.L08045A98:
    adds r0, r5, #0
    bl func_0801736C
    cmp r0, #1
    ble .L08045AA8
    movs r0, #2
    strb r0, [r4, #6]
    b .L08045AB2
.L08045AA8:
    movs r0, #1
    strb r0, [r4, #6]
    movs r0, #4
    bl ApplyIconPalettes
.L08045AB2:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080459F0

    thumb_func_start func_08045AB8
func_08045AB8: @ 0x08045AB8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r6, r0, #0
    movs r0, #0
    mov sl, r0
    movs r1, #1
    str r1, [sp, #4]
    ldr r4, .L08045B40 @ =0x03001400
    ldr r2, .L08045B44 @ =0x0203DC9C
    mov r8, r2
    ldrb r1, [r2, #4]
    adds r0, r1, r4
    ldrb r0, [r0]
    bl GetUnit
    mov sb, r0
    mov r2, r8
    ldrb r2, [r2, #5]
    adds r4, r2, r4
    ldrb r0, [r4]
    bl GetUnit
    adds r5, r0, #0
    adds r0, r6, #0
    adds r0, #0x64
    movs r1, #0
    ldrsh r4, [r0, r1]
    bl GetGameLock
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r4, r0
    bne .L08045BB6
    movs r0, #0x11
    ldrsb r0, [r5, r0]
    adds r0, #1
    ldr r1, .L08045B48 @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r5, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0x17
    beq .L08045B24
    movs r2, #1
    rsbs r2, r2, #0
    str r2, [sp, #4]
.L08045B24:
    mov r1, r8
    ldrb r0, [r1, #6]
    cmp r0, #0
    bne .L08045B50
    ldr r0, .L08045B4C @ =gActiveUnit
    ldr r0, [r0]
    bl func_08044B08
    adds r0, r6, #0
    movs r1, #0
    bl Proc_Goto
    b .L08045BB6
    .align 2, 0
.L08045B40: .4byte 0x03001400
.L08045B44: .4byte 0x0203DC9C
.L08045B48: .4byte gBmMapTerrain
.L08045B4C: .4byte gActiveUnit
.L08045B50:
    ldr r7, .L08045BA4 @ =gActiveUnit
    ldr r0, [r7]
    mov r2, r8
    ldrb r1, [r2, #7]
    bl UnitEquipItemSlot
    ldr r4, [r5, #0xc]
    movs r0, #0x80
    lsls r0, r0, #2
    ands r4, r0
    cmp r4, #0
    bne .L08045BA8
    adds r0, r6, #0
    bl StartFightPreview
    mov r0, r8
    ldrb r0, [r0, #6]
    cmp r0, #2
    bne .L08045B7A
    movs r1, #1
    mov sl, r1
.L08045B7A:
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    add r2, sl
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    ldr r0, [sp, #4]
    adds r3, r3, r0
    str r4, [sp]
    mov r0, sb
    adds r1, r5, #0
    bl BattleGenerateSimulation
    bl func_08034164
    ldr r0, [r7]
    bl func_08044B08
    adds r0, r6, #0
    bl Proc_Break
    b .L08045BB6
    .align 2, 0
.L08045BA4: .4byte gActiveUnit
.L08045BA8:
    ldr r0, [r7]
    bl func_08044B08
    adds r0, r6, #0
    movs r1, #1
    bl Proc_Goto
.L08045BB6:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08045AB8

    thumb_func_start func_08045BC8
func_08045BC8: @ 0x08045BC8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08045BF8 @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L08045C04
    ldr r0, .L08045BFC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08045BEC
    ldr r0, .L08045C00 @ =0x0000038A
    bl m4aSongNumStart
.L08045BEC:
    bl func_0803418C
    adds r0, r4, #0
    bl Proc_Break
    b .L08045C2A
    .align 2, 0
.L08045BF8: .4byte gpKeySt
.L08045BFC: .4byte gPlaySt
.L08045C00: .4byte 0x0000038A
.L08045C04:
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L08045C2A
    ldr r0, .L08045C30 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08045C1E
    ldr r0, .L08045C34 @ =0x0000038B
    bl m4aSongNumStart
.L08045C1E:
    bl func_0803418C
    adds r0, r4, #0
    movs r1, #0
    bl Proc_Goto
.L08045C2A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08045C30: .4byte gPlaySt
.L08045C34: .4byte 0x0000038B
    func_end func_08045BC8

    thumb_func_start func_08045C38
func_08045C38: @ 0x08045C38
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08045C50 @ =0x08B99C18
    adds r1, r4, #0
    bl Proc_StartBlocking
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08045C50: .4byte 0x08B99C18
    func_end func_08045C38

    thumb_func_start func_08045C54
func_08045C54: @ 0x08045C54
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, .L08045C88 @ =0x03001400
    ldr r6, .L08045C8C @ =0x0203DC9C
    ldrb r1, [r6, #5]
    adds r0, r1, r0
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    bl ClearUi
    ldrb r0, [r6, #6]
    cmp r0, #0
    bne .L08045CE0
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L08045C94
    ldr r0, .L08045C90 @ =0x03001420
    ldr r0, [r0, #4]
    bl EndMu
    b .L08045C9C
    .align 2, 0
.L08045C88: .4byte 0x03001400
.L08045C8C: .4byte 0x0203DC9C
.L08045C90: .4byte 0x03001420
.L08045C94:
    ldr r0, [r5, #0x34]
    strb r0, [r4, #0x10]
    ldr r0, [r5, #0x38]
    strb r0, [r4, #0x11]
.L08045C9C:
    ldr r0, [r4, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r4, #0xc]
    bl RefreshUnitSprites
    ldr r1, .L08045CD8 @ =0x0203DC9C
    ldrb r0, [r1, #5]
    strb r0, [r1, #2]
    adds r0, #1
    strb r0, [r1, #3]
    ldr r0, .L08045CDC @ =0x03001400
    ldrb r1, [r1, #5]
    adds r0, r1, r0
    ldrb r2, [r0]
    movs r0, #4
    movs r1, #0
    movs r3, #0
    bl func_08044B98
    adds r0, r5, #0
    bl func_08045784
    adds r0, r5, #0
    movs r1, #5
    bl Proc_Goto
    b .L08045D16
    .align 2, 0
.L08045CD8: .4byte 0x0203DC9C
.L08045CDC: .4byte 0x03001400
.L08045CE0:
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    beq .L08045D0A
    adds r0, r4, #0
    bl StartMu
    ldr r1, .L08045D1C @ =0x03001420
    str r0, [r1, #4]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    str r0, [r5, #0x34]
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    str r0, [r5, #0x38]
    ldr r0, [r4, #0xc]
    ldr r1, .L08045D20 @ =0xFFFFFDFF
    ands r0, r1
    str r0, [r4, #0xc]
.L08045D0A:
    ldrb r2, [r6, #6]
    ldrb r3, [r6, #7]
    movs r0, #5
    movs r1, #0
    bl func_08044B98
.L08045D16:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08045D1C: .4byte 0x03001420
.L08045D20: .4byte 0xFFFFFDFF
    func_end func_08045C54

    thumb_func_start func_08045D24
func_08045D24: @ 0x08045D24
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #0xc
    adds r6, r0, #0
    ldr r4, .L08045D9C @ =0x03001400
    ldr r5, .L08045DA0 @ =0x0203DC9C
    ldrb r1, [r5, #4]
    adds r0, r1, r4
    ldrb r0, [r0]
    bl GetUnit
    mov r8, r0
    ldrb r5, [r5, #5]
    adds r4, r5, r4
    ldrb r0, [r4]
    bl GetUnit
    adds r4, r0, #0
    ldr r0, [r6, #0x2c]
    movs r1, #0
    mov sb, r1
    mov r1, r8
    strb r0, [r1, #0x10]
    ldr r0, [r6, #0x30]
    strb r0, [r1, #0x11]
    ldr r0, [r6, #0x34]
    strb r0, [r4, #0x10]
    ldr r0, [r6, #0x38]
    strb r0, [r4, #0x11]
    ldr r5, .L08045DA4 @ =0x03001420
    ldr r1, [r5]
    movs r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    str r6, [sp, #8]
    mov r0, r8
    movs r2, #6
    movs r3, #5
    bl func_08047A00
    ldr r1, [r5, #4]
    mov r0, sb
    str r0, [sp]
    str r0, [sp, #4]
    str r6, [sp, #8]
    adds r0, r4, #0
    movs r2, #8
    movs r3, #5
    bl func_08047A00
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08045D9C: .4byte 0x03001400
.L08045DA0: .4byte 0x0203DC9C
.L08045DA4: .4byte 0x03001420
    func_end func_08045D24

    thumb_func_start func_08045DA8
func_08045DA8: @ 0x08045DA8
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    ldr r4, .L08045E04 @ =0x03001400
    ldr r5, .L08045E08 @ =0x0203DC9C
    ldrb r1, [r5, #4]
    adds r0, r1, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r7, r0, #0
    ldr r1, .L08045E0C @ =0x081D5503
    mov r0, sp
    movs r2, #2
    bl memcpy
    ldr r6, .L08045E10 @ =0x03001420
    ldr r0, [r6, #4]
    bl EndMu
    ldrb r5, [r5, #5]
    adds r4, r5, r4
    ldrb r0, [r4]
    bl GetUnit
    ldr r1, [r0, #0xc]
    movs r2, #2
    rsbs r2, r2, #0
    ands r1, r2
    str r1, [r0, #0xc]
    ldr r0, .L08045E14 @ =0x0300141C
    ldrb r0, [r0, #2]
    cmp r0, #1
    bne .L08045DF6
    ldr r0, [r6]
    mov r1, sp
    bl SetMuMoveScript
    movs r0, #7
    strb r0, [r7, #0x10]
.L08045DF6:
    bl func_08044B24
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08045E04: .4byte 0x03001400
.L08045E08: .4byte 0x0203DC9C
.L08045E0C: .4byte 0x081D5503
.L08045E10: .4byte 0x03001420
.L08045E14: .4byte 0x0300141C
    func_end func_08045DA8

    thumb_func_start func_08045E18
func_08045E18: @ 0x08045E18
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    bl MuExistsActive
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08045E86
    ldr r4, .L08045E90 @ =0x03001400
    ldr r5, .L08045E94 @ =0x0203DC9C
    ldrb r1, [r5, #4]
    adds r0, r1, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r6, r0, #0
    ldrb r2, [r5, #5]
    adds r0, r2, r4
    ldrb r0, [r0]
    bl GetUnit
    mov r8, r0
    adds r0, r6, #0
    bl HideUnitSprite
    ldr r1, .L08045E98 @ =gActionSt
    movs r0, #2
    strb r0, [r1, #0x11]
    ldrb r5, [r5, #5]
    adds r4, r5, r4
    ldrb r0, [r4]
    strb r0, [r1, #0xd]
    ldr r0, .L08045E9C @ =0x0300141C
    ldrb r1, [r0, #3]
    adds r0, r6, #0
    bl UnitEquipItemSlot
    adds r0, r6, #0
    mov r1, r8
    bl BattleGenerateReal
    ldr r1, .L08045EA0 @ =gBmSt
    movs r0, #0x40
    ldrb r2, [r1, #4]
    orrs r0, r2
    strb r0, [r1, #4]
    ldr r0, .L08045EA4 @ =0x08B9A188
    adds r1, r7, #0
    bl Proc_StartBlocking
    adds r0, r7, #0
    bl Proc_Break
.L08045E86:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08045E90: .4byte 0x03001400
.L08045E94: .4byte 0x0203DC9C
.L08045E98: .4byte gActionSt
.L08045E9C: .4byte 0x0300141C
.L08045EA0: .4byte gBmSt
.L08045EA4: .4byte 0x08B9A188
    func_end func_08045E18

    thumb_func_start func_08045EA8
func_08045EA8: @ 0x08045EA8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sl, r0
    ldr r0, .L08045F94 @ =0x03001400
    ldr r1, .L08045F98 @ =0x0203DC9C
    mov r8, r1
    ldrb r2, [r1, #4]
    adds r1, r2, r0
    ldrb r4, [r1]
    mov r3, r8
    ldrb r3, [r3, #5]
    adds r0, r3, r0
    ldrb r5, [r0]
    adds r0, r4, #0
    bl GetUnit
    adds r6, r0, #0
    adds r0, r5, #0
    bl GetUnit
    adds r7, r0, #0
    bl func_08044FB8
    lsrs r0, r4, #6
    lsls r0, r0, #3
    mov r2, r8
    adds r2, #0x30
    adds r3, r0, r2
    ldr r1, .L08045F9C @ =0x0203A3F0
    mov sb, r1
    adds r1, #0x6e
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    str r1, [r3]
    add r0, r8
    adds r0, #0x2c
    movs r3, #0
    strb r4, [r0]
    strb r3, [r6, #9]
    lsrs r0, r5, #6
    lsls r0, r0, #3
    adds r2, r0, r2
    ldr r4, .L08045FA0 @ =0x0203A470
    adds r1, r4, #0
    adds r1, #0x6e
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    str r1, [r2]
    add r0, r8
    adds r0, #0x2c
    strb r5, [r0]
    strb r3, [r7, #9]
    adds r0, r6, #0
    bl func_08048E0C
    adds r0, r7, #0
    bl func_08048E0C
    adds r0, r6, #0
    movs r1, #0
    bl SetUnitStatus
    adds r0, r7, #0
    movs r1, #0
    bl SetUnitStatus
    bl EndAllMus
    adds r0, r6, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    beq .L08045F54
    adds r0, r6, #0
    bl ShowUnitSprite
    ldr r0, [r6, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r6, #0xc]
.L08045F54:
    bl func_08044B24
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    adds r0, r6, #0
    bl GetUnitCurrentHp
    mov r1, sb
    adds r1, #0x72
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    cmp r0, r1
    bne .L08045FA4
    adds r0, r7, #0
    bl GetUnitCurrentHp
    adds r1, r4, #0
    adds r1, #0x72
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    cmp r0, r1
    bne .L08045FA4
    mov r2, r8
    ldrb r0, [r2, #9]
    adds r0, #1
    strb r0, [r2, #9]
    b .L08045FAA
    .align 2, 0
.L08045F94: .4byte 0x03001400
.L08045F98: .4byte 0x0203DC9C
.L08045F9C: .4byte 0x0203A3F0
.L08045FA0: .4byte 0x0203A470
.L08045FA4:
    ldr r1, .L08045FC0 @ =0x0203DC9C
    movs r0, #0
    strb r0, [r1, #9]
.L08045FAA:
    mov r0, sl
    bl Proc_Break
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08045FC0: .4byte 0x0203DC9C
    func_end func_08045EA8

    thumb_func_start func_08045FC4
func_08045FC4: @ 0x08045FC4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    str r0, [sp, #0xc]
    ldr r1, .L08046030 @ =0x03001400
    ldr r0, .L08046034 @ =0x0203DC9C
    mov sl, r0
    ldrb r2, [r0, #4]
    adds r0, r2, r1
    ldrb r0, [r0]
    adds r5, r0, #0
    mov r3, sl
    ldrb r3, [r3, #5]
    adds r1, r3, r1
    ldrb r1, [r1]
    mov sb, r1
    bl GetUnit
    adds r4, r0, #0
    mov r0, sb
    bl GetUnit
    mov r8, r0
    movs r7, #0
    adds r0, r5, #0
    bl func_08044BF0
    str r0, [sp, #0x10]
    mov r0, sb
    bl func_08044BF0
    str r0, [sp, #0x14]
    ldr r6, .L08046038 @ =0x03001420
    str r7, [r6, #4]
    str r7, [r6]
    ldr r0, [r4, #0xc]
    ldr r1, .L0804603C @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L08046020
    ldr r0, [r4]
    cmp r0, #0
    bne .L08046040
.L08046020:
    lsrs r0, r5, #6
    mov r1, sl
    adds r1, #0xa
    adds r0, r0, r1
    ldrb r1, [r0]
    subs r1, #1
    strb r1, [r0]
    b .L08046078
    .align 2, 0
.L08046030: .4byte 0x03001400
.L08046034: .4byte 0x0203DC9C
.L08046038: .4byte 0x03001420
.L0804603C: .4byte 0x00010004
.L08046040:
    adds r0, r4, #0
    bl StartMu
    str r0, [r6]
    bl DisableMuCamera
    ldr r0, [r4, #0xc]
    movs r1, #1
    orrs r0, r1
    str r0, [r4, #0xc]
    movs r7, #1
    ldr r1, [r6]
    ldr r2, .L080460A0 @ =0x081D5490
    ldr r5, [sp, #0x10]
    lsls r0, r5, #2
    adds r0, r0, r2
    movs r3, #0
    ldrsh r2, [r0, r3]
    movs r5, #2
    ldrsh r3, [r0, r5]
    movs r0, #2
    str r0, [sp]
    str r7, [sp, #4]
    ldr r0, [sp, #0xc]
    str r0, [sp, #8]
    adds r0, r4, #0
    bl func_08047A00
.L08046078:
    mov r1, r8
    ldr r0, [r1, #0xc]
    ldr r1, .L080460A4 @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L0804608C
    mov r2, r8
    ldr r0, [r2]
    cmp r0, #0
    bne .L080460AC
.L0804608C:
    ldr r0, .L080460A8 @ =0x0203DC9C
    mov r3, sb
    lsrs r1, r3, #6
    adds r0, #0xa
    adds r1, r1, r0
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    b .L080460F0
    .align 2, 0
.L080460A0: .4byte 0x081D5490
.L080460A4: .4byte 0x00010004
.L080460A8: .4byte 0x0203DC9C
.L080460AC:
    mov r0, r8
    bl StartMu
    ldr r4, .L0804610C @ =0x03001420
    str r0, [r4, #4]
    bl DisableMuCamera
    mov r5, r8
    ldr r0, [r5, #0xc]
    movs r1, #1
    orrs r0, r1
    str r0, [r5, #0xc]
    adds r0, r7, #0
    movs r7, #0
    cmp r0, #0
    bne .L080460CE
    movs r7, #1
.L080460CE:
    ldr r1, [r4, #4]
    ldr r2, .L08046110 @ =0x081D5490
    ldr r3, [sp, #0x14]
    lsls r0, r3, #2
    adds r0, r0, r2
    movs r4, #0
    ldrsh r2, [r0, r4]
    movs r5, #2
    ldrsh r3, [r0, r5]
    movs r0, #2
    str r0, [sp]
    str r7, [sp, #4]
    ldr r0, [sp, #0xc]
    str r0, [sp, #8]
    mov r0, r8
    bl func_08047A00
.L080460F0:
    bl func_08044B24
    ldr r0, [sp, #0xc]
    bl Proc_Break
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804610C: .4byte 0x03001420
.L08046110: .4byte 0x081D5490
    func_end func_08045FC4

    thumb_func_start func_08046114
func_08046114: @ 0x08046114
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    movs r3, #0
.L0804611E:
    lsls r0, r3, #0x18
    lsrs r0, r0, #0x18
    str r3, [sp]
    bl func_0803CD1C
    lsls r0, r0, #0x18
    ldr r3, [sp]
    adds r1, r3, #1
    mov r8, r1
    cmp r0, #0
    beq .L08046184
    movs r6, #0
    movs r7, #0
    ldr r0, .L08046198 @ =0x03001400
    adds r4, r3, r0
    movs r5, #4
.L0804613E:
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0804616C
    adds r7, #1
    str r3, [sp]
    bl GetUnit
    adds r2, r0, #0
    ldr r0, [r2, #0xc]
    ldr r1, .L0804619C @ =0x00010004
    ands r0, r1
    ldr r3, [sp]
    cmp r0, #0
    bne .L0804616C
    adds r0, r2, #0
    bl func_080454C0
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r3, [sp]
    cmp r0, #1
    bne .L0804616C
    adds r6, #1
.L0804616C:
    adds r4, #5
    subs r5, #1
    cmp r5, #0
    bge .L0804613E
    cmp r6, #0
    bne .L08046184
    cmp r7, #0
    beq .L08046184
    ldr r0, .L080461A0 @ =0x0203DC9C
    adds r0, #0xa
    adds r0, r3, r0
    strb r6, [r0]
.L08046184:
    mov r3, r8
    cmp r3, #3
    ble .L0804611E
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08046198: .4byte 0x03001400
.L0804619C: .4byte 0x00010004
.L080461A0: .4byte 0x0203DC9C
    func_end func_08046114

    thumb_func_start func_080461A4
func_080461A4: @ 0x080461A4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    ldr r0, .L08046248 @ =0x03001400
    ldr r5, .L0804624C @ =0x0203DC9C
    ldrb r2, [r5, #4]
    adds r1, r2, r0
    ldrb r6, [r1]
    ldrb r1, [r5, #5]
    adds r0, r1, r0
    ldrb r7, [r0]
    adds r0, r6, #0
    bl GetUnit
    adds r4, r0, #0
    adds r0, r7, #0
    bl GetUnit
    adds r2, r0, #0
    ldr r1, [r4, #0xc]
    ldr r3, .L08046250 @ =0x00010004
    adds r0, r1, #0
    ands r0, r3
    cmp r0, #0
    bne .L080461E0
    movs r0, #2
    rsbs r0, r0, #0
    ands r1, r0
    str r1, [r4, #0xc]
.L080461E0:
    ldr r1, [r2, #0xc]
    adds r0, r1, #0
    ands r0, r3
    cmp r0, #0
    bne .L080461F2
    movs r0, #2
    rsbs r0, r0, #0
    ands r1, r0
    str r1, [r2, #0xc]
.L080461F2:
    lsrs r0, r6, #6
    adds r1, r0, #0
    adds r2, r5, #0
    adds r2, #0xa
    adds r0, r1, r2
    ldrb r0, [r0]
    adds r5, r1, #0
    cmp r0, #0
    beq .L0804620E
    lsrs r1, r7, #6
    adds r0, r1, r2
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0804626A
.L0804620E:
    adds r4, r1, #0
    ldr r2, .L0804624C @ =0x0203DC9C
    ldr r3, .L08046254 @ =0x0203D90C
    adds r3, #0xa0
    ldrb r6, [r3]
    ldrb r1, [r2, #0xe]
    subs r0, r6, r1
    adds r1, r2, #0
    adds r1, #0xf
    adds r0, r0, r1
    strb r4, [r0]
    ldrb r0, [r2, #0xe]
    adds r0, #1
    strb r0, [r2, #0xe]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldrb r3, [r3]
    cmp r0, r3
    bne .L0804626A
    adds r1, r5, #0
    adds r0, r2, #0
    adds r0, #0xa
    adds r0, r1, r0
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08046258
    adds r4, r1, #0
    b .L0804625A
    .align 2, 0
.L08046248: .4byte 0x03001400
.L0804624C: .4byte 0x0203DC9C
.L08046250: .4byte 0x00010004
.L08046254: .4byte 0x0203D90C
.L08046258:
    lsrs r4, r7, #6
.L0804625A:
    strb r4, [r2, #0xf]
    movs r0, #0xff
    bl func_08044B34
    mov r0, r8
    bl Proc_Break
    b .L08046278
.L0804626A:
    ldr r0, .L08046284 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    bl func_08044B34
    mov r0, r8
    bl Proc_Break
.L08046278:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08046284: .4byte gPlaySt
    func_end func_080461A4

    thumb_func_start func_08046288
func_08046288: @ 0x08046288
    push {lr}
    bl EndAllMus
    bl EndAllMus
    bl func_08044DCC
    bl func_08044E2C
    bl RefreshUnitSprites
    pop {r0}
    bx r0
    func_end func_08046288

    thumb_func_start func_080462A4
func_080462A4: @ 0x080462A4
    push {lr}
    ldr r0, .L080462D0 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L080462CC
    ldr r0, .L080462D4 @ =0x0300479C
    movs r2, #0
    movs r1, #0xd4
    strb r1, [r0]
    ldr r1, .L080462D8 @ =0x08B98AEC
    ldr r1, [r1]
    ldrb r1, [r1, #6]
    strb r1, [r0, #1]
    strh r2, [r0, #2]
    movs r1, #4
    bl func_0803CE34
.L080462CC:
    pop {r0}
    bx r0
    .align 2, 0
.L080462D0: .4byte gpKeySt
.L080462D4: .4byte 0x0300479C
.L080462D8: .4byte 0x08B98AEC
    func_end func_080462A4

    thumb_func_start func_080462DC
func_080462DC: @ 0x080462DC
    ldrb r0, [r0]
    cmp r0, #1
    beq .L080462EE
    cmp r0, #1
    blt .L080462F2
    cmp r0, #7
    bgt .L080462F2
    cmp r0, #6
    blt .L080462F2
.L080462EE:
    movs r0, #1
    b .L080462F4
.L080462F2:
    movs r0, #0
.L080462F4:
    bx lr
    func_end func_080462DC

    thumb_func_start func_080462F8
func_080462F8: @ 0x080462F8
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r4, .L08046320 @ =0x0300141C
    ldr r2, .L08046324 @ =func_080462DC
    adds r0, r4, #0
    add r1, sp, #4
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L080463A4
    ldrb r0, [r4]
    cmp r0, #6
    beq .L08046350
    cmp r0, #6
    bgt .L08046328
    cmp r0, #1
    beq .L0804632E
    b .L080463A4
    .align 2, 0
.L08046320: .4byte 0x0300141C
.L08046324: .4byte func_080462DC
.L08046328:
    cmp r0, #7
    beq .L0804638C
    b .L080463A4
.L0804632E:
    ldrb r0, [r4, #1]
    ldr r2, .L0804634C @ =0x0203DCA0
    adds r3, r5, #0
    adds r3, #0x2c
    adds r1, r5, #0
    adds r1, #0x30
    str r1, [sp]
    movs r1, #0
    bl func_08044C10
    adds r0, r5, #0
    movs r1, #1
    bl Proc_Goto
    b .L080463A4
    .align 2, 0
.L0804634C: .4byte 0x0203DCA0
.L08046350:
    bl func_080442FC
    add r0, sp, #4
    ldrb r1, [r0]
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    subs r0, r0, r1
    ldr r1, .L08046380 @ =0x0203D9AD
    adds r0, r0, r1
    ldr r1, .L08046384 @ =0x03001438
    bl func_0803D948
    ldr r0, .L08046388 @ =0x08B99C68
    movs r1, #0x60
    movs r2, #0
    movs r3, #0
    bl func_0800AD40
    adds r0, r5, #0
    movs r1, #3
    bl Proc_Goto
    b .L080463A4
    .align 2, 0
.L08046380: .4byte 0x0203D9AD
.L08046384: .4byte 0x03001438
.L08046388: .4byte 0x08B99C68
.L0804638C:
    bl func_080442FC
    ldr r0, .L080463B0 @ =0x08B99C88
    movs r1, #0x60
    movs r2, #0
    movs r3, #0
    bl func_0800AD40
    adds r0, r5, #0
    movs r1, #4
    bl Proc_Goto
.L080463A4:
    bl func_080462A4
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080463B0: .4byte 0x08B99C88
    func_end func_080462F8

    thumb_func_start func_080463B4
func_080463B4: @ 0x080463B4
    ldrb r0, [r0]
    cmp r0, #3
    bgt .L080463C2
    cmp r0, #2
    blt .L080463C2
    movs r0, #1
    b .L080463C4
.L080463C2:
    movs r0, #0
.L080463C4:
    bx lr
    func_end func_080463B4

    thumb_func_start func_080463C8
func_080463C8: @ 0x080463C8
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r4, .L080463EC @ =0x0300141C
    ldr r2, .L080463F0 @ =func_080463B4
    adds r0, r4, #0
    add r1, sp, #4
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L08046454
    ldrb r0, [r4]
    cmp r0, #2
    beq .L080463F4
    cmp r0, #3
    beq .L08046438
    b .L08046454
    .align 2, 0
.L080463EC: .4byte 0x0300141C
.L080463F0: .4byte func_080463B4
.L080463F4:
    ldrb r0, [r4, #2]
    bl GetUnit
    adds r4, r0, #0
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L08046418
    ldr r0, .L08046414 @ =0x03001420
    ldr r0, [r0]
    bl EndMu
    b .L08046420
    .align 2, 0
.L08046414: .4byte 0x03001420
.L08046418:
    ldr r0, [r5, #0x2c]
    strb r0, [r4, #0x10]
    ldr r0, [r5, #0x30]
    strb r0, [r4, #0x11]
.L08046420:
    ldr r0, [r4, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r4, #0xc]
    bl RefreshUnitSprites
    adds r0, r5, #0
    movs r1, #0
    bl Proc_Goto
    b .L08046454
.L08046438:
    ldrb r0, [r4, #1]
    ldr r2, .L08046460 @ =0x0203DCA1
    adds r3, r5, #0
    adds r3, #0x34
    adds r1, r5, #0
    adds r1, #0x38
    str r1, [sp]
    movs r1, #1
    bl func_08044C10
    adds r0, r5, #0
    movs r1, #2
    bl Proc_Goto
.L08046454:
    bl func_080462A4
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08046460: .4byte 0x0203DCA1
    func_end func_080463C8

    thumb_func_start func_08046464
func_08046464: @ 0x08046464
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r6, r2, #0
    mov r8, r3
    bl StartMu
    ldr r1, .L080464A0 @ =0x03001420
    lsls r4, r4, #2
    adds r4, r4, r1
    str r0, [r4]
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    str r0, [r6]
    movs r0, #0x11
    ldrsb r0, [r5, r0]
    mov r1, r8
    str r0, [r1]
    ldr r0, [r5, #0xc]
    ldr r1, .L080464A4 @ =0xFFFFFDFF
    ands r0, r1
    str r0, [r5, #0xc]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080464A0: .4byte 0x03001420
.L080464A4: .4byte 0xFFFFFDFF
    func_end func_08046464

    thumb_func_start func_080464A8
func_080464A8: @ 0x080464A8
    ldrb r0, [r0]
    cmp r0, #5
    bgt .L080464B6
    cmp r0, #4
    blt .L080464B6
    movs r0, #1
    b .L080464B8
.L080464B6:
    movs r0, #0
.L080464B8:
    bx lr
    func_end func_080464A8

    thumb_func_start func_080464BC
func_080464BC: @ 0x080464BC
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    ldr r4, .L080464E0 @ =0x0300141C
    ldr r2, .L080464E4 @ =func_080464A8
    adds r0, r4, #0
    mov r1, sp
    bl func_0803D31C
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L08046582
    ldrb r0, [r4]
    cmp r0, #4
    beq .L080464E8
    cmp r0, #5
    beq .L0804652C
    b .L08046582
    .align 2, 0
.L080464E0: .4byte 0x0300141C
.L080464E4: .4byte func_080464A8
.L080464E8:
    ldrb r0, [r4, #2]
    bl GetUnit
    adds r6, r0, #0
    ldr r0, [r6, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L0804650C
    ldr r0, .L08046508 @ =0x03001420
    ldr r0, [r0, #4]
    bl EndMu
    b .L08046514
    .align 2, 0
.L08046508: .4byte 0x03001420
.L0804650C:
    ldr r0, [r7, #0x34]
    strb r0, [r6, #0x10]
    ldr r0, [r7, #0x38]
    strb r0, [r6, #0x11]
.L08046514:
    ldr r0, [r6, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r6, #0xc]
    bl RefreshUnitSprites
    adds r0, r7, #0
    movs r1, #1
    bl Proc_Goto
    b .L08046582
.L0804652C:
    ldr r4, .L08046590 @ =0x03001400
    ldr r5, .L08046594 @ =0x0203DC9C
    ldrb r1, [r5, #4]
    adds r0, r1, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r6, r0, #0
    ldrb r5, [r5, #5]
    adds r4, r5, r4
    ldrb r0, [r4]
    bl GetUnit
    adds r4, r0, #0
    ldr r0, [r6, #0xc]
    movs r5, #0x80
    lsls r5, r5, #2
    ands r0, r5
    cmp r0, #0
    beq .L08046564
    adds r2, r7, #0
    adds r2, #0x2c
    adds r3, r7, #0
    adds r3, #0x30
    adds r0, r6, #0
    movs r1, #0
    bl func_08046464
.L08046564:
    ldr r0, [r4, #0xc]
    ands r0, r5
    cmp r0, #0
    beq .L0804657C
    adds r2, r7, #0
    adds r2, #0x34
    adds r3, r7, #0
    adds r3, #0x38
    adds r0, r4, #0
    movs r1, #1
    bl func_08046464
.L0804657C:
    adds r0, r7, #0
    bl Proc_Break
.L08046582:
    bl func_080462A4
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08046590: .4byte 0x03001400
.L08046594: .4byte 0x0203DC9C
    func_end func_080464BC

    thumb_func_start func_08046598
func_08046598: @ 0x08046598
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    movs r7, #0
    movs r0, #0
    mov r8, r0
    movs r5, #0
    ldrh r4, [r6, #0x1e]
    cmp r4, #0
    beq .L080465E4
.L080465AE:
    adds r0, r6, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080465D0
    adds r0, r4, #0
    bl GetItemMight
    cmp r0, r8
    bls .L080465D0
    adds r7, r4, #0
    adds r0, r7, #0
    bl GetItemMight
    mov r8, r0
.L080465D0:
    adds r5, #1
    cmp r5, #4
    bgt .L080465E4
    lsls r1, r5, #1
    adds r0, r6, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    cmp r4, #0
    bne .L080465AE
.L080465E4:
    cmp r7, #0
    beq .L080465F2
    adds r0, r6, #0
    bl GetUnitPower
    add r0, r8
    b .L080465F4
.L080465F2:
    movs r0, #0
.L080465F4:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08046598

    thumb_func_start func_08046600
func_08046600: @ 0x08046600
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    movs r0, #0
    mov r8, r0
    movs r6, #0
    adds r5, r7, #0
    adds r0, r7, #5
    cmp r7, r0
    bge .L0804664A
.L08046616:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    ldr r0, [r4, #0xc]
    ldr r1, .L0804666C @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L08046642
    ldr r0, [r4]
    cmp r0, #0
    beq .L08046642
    movs r0, #1
    add r8, r0
    adds r0, r4, #0
    bl func_08046598
    adds r6, r6, r0
    adds r0, r4, #0
    bl GetUnitCurrentHp
    adds r6, r6, r0
.L08046642:
    adds r5, #1
    adds r0, r7, #5
    cmp r5, r0
    blt .L08046616
.L0804664A:
    ldr r0, .L08046670 @ =0x0203DC9C
    asrs r1, r7, #6
    lsls r1, r1, #2
    adds r0, #0x14
    adds r1, r1, r0
    ldr r0, [r1]
    adds r6, r6, r0
    adds r0, r6, #0
    mov r1, r8
    bl Div
    adds r6, r0, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0804666C: .4byte 0x00010004
.L08046670: .4byte 0x0203DC9C
    func_end func_08046600

    thumb_func_start func_08046674
func_08046674: @ 0x08046674
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, .L080466B4 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #8
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L080466C0
    bl func_080442FC
    str r4, [r5, #0x58]
    ldr r0, .L080466B8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080466A8
    movs r0, #0xe2
    lsls r0, r0, #2
    bl m4aSongNumStart
    ldr r0, .L080466BC @ =0x08B99D20
    bl StartEvent
.L080466A8:
    adds r0, r5, #0
    movs r1, #3
    bl Proc_Goto
    movs r0, #1
    b .L080466C2
    .align 2, 0
.L080466B4: .4byte gpKeySt
.L080466B8: .4byte gPlaySt
.L080466BC: .4byte 0x08B99D20
.L080466C0:
    movs r0, #0
.L080466C2:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08046674

    thumb_func_start func_080466C8
func_080466C8: @ 0x080466C8
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    movs r6, #1
    rsbs r6, r6, #0
    movs r1, #0
    bl func_08046674
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08046720
    movs r4, #0
.L080466E0:
    lsls r0, r4, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08046714
    ldr r5, .L08046728 @ =0x0203DC9C
    adds r0, r5, #0
    adds r0, #0xa
    adds r0, r4, r0
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08046714
    ldr r0, .L0804672C @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, r4
    beq .L08046714
    lsls r0, r4, #6
    adds r0, #1
    bl func_08046600
    cmp r6, r0
    bls .L08046714
    adds r6, r0, #0
    strb r4, [r5, #2]
.L08046714:
    adds r4, #1
    cmp r4, #3
    ble .L080466E0
    adds r0, r7, #0
    bl Proc_Break
.L08046720:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08046728: .4byte 0x0203DC9C
.L0804672C: .4byte gPlaySt
    func_end func_080466C8

    thumb_func_start func_08046730
func_08046730: @ 0x08046730
    push {r4, lr}
    adds r0, r1, #0
    bl GetUnitEquippedWeapon
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    adds r4, r0, #0
    cmp r0, #0
    beq .L08046754
    bl func_08017384
    cmp r0, #1
    beq .L08046754
    adds r0, r4, #0
    bl func_0801736C
    cmp r0, #1
    bgt .L08046758
.L08046754:
    movs r0, #1
    b .L0804675A
.L08046758:
    movs r0, #2
.L0804675A:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08046730

    thumb_func_start func_08046760
func_08046760: @ 0x08046760
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x3c
    str r0, [sp, #0x10]
    movs r0, #0
    str r0, [sp, #0x18]
    movs r1, #0
    str r1, [sp, #0x1c]
    movs r2, #0
    str r2, [sp, #0x20]
    ldr r0, [sp, #0x10]
    movs r1, #1
    bl func_08046674
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804678C
    b .L0804697A
.L0804678C:
    ldr r0, .L080468CC @ =0x0203A8EC
    adds r0, #0x7d
    movs r1, #0xe
    strb r1, [r0]
    ldr r0, .L080468D0 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    lsls r0, r0, #6
    str r0, [sp, #0x14]
    adds r4, r0, #0
    adds r4, #1
    adds r0, #6
    ldr r1, [sp, #0x10]
    adds r1, #0x2c
    str r1, [sp, #0x34]
    ldr r2, [sp, #0x10]
    adds r2, #0x30
    str r2, [sp, #0x38]
    cmp r4, r0
    blt .L080467B4
    b .L0804695C
.L080467B4:
    ldr r0, .L080468D4 @ =gActiveUnitId
    strb r4, [r0]
    ldrb r0, [r0]
    bl GetUnit
    adds r2, r0, #0
    ldr r0, .L080468D8 @ =gActiveUnit
    str r2, [r0]
    ldr r1, [r2, #0xc]
    ldr r0, .L080468DC @ =0x00010004
    ands r1, r0
    ldr r0, [sp, #0x14]
    adds r0, #6
    str r0, [sp, #0x30]
    adds r4, #1
    str r4, [sp, #0x28]
    cmp r1, #0
    beq .L080467DA
    b .L08046952
.L080467DA:
    ldr r0, [r2]
    cmp r0, #0
    bne .L080467E2
    b .L08046952
.L080467E2:
    movs r5, #0
.L080467E4:
    ldr r0, .L080468D8 @ =gActiveUnit
    ldr r2, [r0]
    lsls r1, r5, #1
    adds r0, r2, #0
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r6, r4, #0
    adds r1, r5, #1
    str r1, [sp, #0x2c]
    cmp r4, #0
    bne .L080467FE
    b .L0804694A
.L080467FE:
    adds r0, r2, #0
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0804680E
    b .L0804694A
.L0804680E:
    mov sl, r5
    movs r2, #0
    mov r8, r2
    adds r0, r4, #0
    bl func_0801736C
    cmp r0, #2
    ble .L08046820
    b .L0804694A
.L08046820:
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #0x80
    ands r1, r0
    cmp r1, #0
    beq .L08046830
    b .L0804694A
.L08046830:
    adds r0, r4, #0
    bl func_0801736C
    cmp r0, #1
    bne .L0804683E
    movs r0, #2
    mov r8, r0
.L0804683E:
    adds r0, r6, #0
    bl func_08017384
    cmp r0, #1
    ble .L08046850
    movs r0, #1
    mov r1, r8
    orrs r1, r0
    mov r8, r1
.L08046850:
    add r0, sp, #4
    strh r5, [r0, #4]
    ldr r0, .L080468E0 @ =0x0203DC9C
    ldrb r0, [r0, #2]
    lsls r0, r0, #6
    mov sb, r0
    mov r5, sb
    adds r5, #1
    adds r0, #6
    cmp r5, r0
    bge .L0804694A
    add r6, sp, #4
    ldr r7, .L080468E4 @ =0x0300141C
    mov r0, r8
    movs r2, #2
    ands r0, r2
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #0x24]
.L08046876:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    ldr r1, [r4, #0xc]
    ldr r0, .L080468DC @ =0x00010004
    ands r1, r0
    cmp r1, #0
    bne .L08046940
    ldr r0, [r4]
    cmp r0, #0
    beq .L08046940
    strb r5, [r6, #2]
    ldr r0, [sp, #0x24]
    cmp r0, #0
    beq .L080468F0
    ldrb r0, [r4, #0x10]
    adds r0, #1
    strb r0, [r6]
    ldrb r0, [r4, #0x11]
    strb r0, [r6, #1]
    add r0, sp, #4
    bl func_08038FA4
    ldr r0, [sp, #0xc]
    ldr r1, [sp, #0x18]
    cmp r1, r0
    bhi .L080468F0
    str r0, [sp, #0x18]
    ldr r0, .L080468D4 @ =gActiveUnitId
    ldrb r0, [r0]
    str r0, [sp, #0x1c]
    lsls r0, r5, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #0x20]
    mov r2, r8
    cmp r2, #3
    bne .L080468E8
    movs r0, #3
    adds r1, r4, #0
    bl func_08046730
    b .L080468EA
    .align 2, 0
.L080468CC: .4byte 0x0203A8EC
.L080468D0: .4byte gPlaySt
.L080468D4: .4byte gActiveUnitId
.L080468D8: .4byte gActiveUnit
.L080468DC: .4byte 0x00010004
.L080468E0: .4byte 0x0203DC9C
.L080468E4: .4byte 0x0300141C
.L080468E8:
    movs r0, #1
.L080468EA:
    strb r0, [r7, #2]
    mov r0, sl
    strb r0, [r7, #3]
.L080468F0:
    movs r0, #1
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L08046940
    ldrb r0, [r4, #0x10]
    adds r0, #1
    strb r0, [r6]
    ldrb r0, [r4, #0x11]
    subs r0, #1
    strb r0, [r6, #1]
    add r0, sp, #4
    bl func_08038FA4
    ldr r0, [sp, #0xc]
    ldr r2, [sp, #0x18]
    cmp r2, r0
    bhi .L08046940
    str r0, [sp, #0x18]
    ldr r0, .L08046934 @ =gActiveUnitId
    ldrb r0, [r0]
    str r0, [sp, #0x1c]
    lsls r0, r5, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #0x20]
    mov r0, r8
    cmp r0, #3
    bne .L08046938
    movs r0, #3
    adds r1, r4, #0
    bl func_08046730
    strb r0, [r7, #2]
    b .L0804693C
    .align 2, 0
.L08046934: .4byte gActiveUnitId
.L08046938:
    movs r1, #2
    strb r1, [r7, #2]
.L0804693C:
    mov r2, sl
    strb r2, [r7, #3]
.L08046940:
    adds r5, #1
    mov r0, sb
    adds r0, #6
    cmp r5, r0
    blt .L08046876
.L0804694A:
    ldr r5, [sp, #0x2c]
    cmp r5, #4
    bgt .L08046952
    b .L080467E4
.L08046952:
    ldr r4, [sp, #0x28]
    ldr r0, [sp, #0x30]
    cmp r4, r0
    bge .L0804695C
    b .L080467B4
.L0804695C:
    ldr r2, .L0804698C @ =0x0203DCA0
    ldr r1, [sp, #0x38]
    str r1, [sp]
    ldr r0, [sp, #0x1c]
    movs r1, #0
    ldr r3, [sp, #0x34]
    bl func_08044C10
    ldr r0, .L08046990 @ =0x0300141C
    add r2, sp, #0x20
    ldrb r2, [r2]
    strb r2, [r0, #1]
    ldr r0, [sp, #0x10]
    bl Proc_Break
.L0804697A:
    add sp, #0x3c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804698C: .4byte 0x0203DCA0
.L08046990: .4byte 0x0300141C
    func_end func_08046760

    thumb_func_start func_08046994
func_08046994: @ 0x08046994
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080469C0 @ =0x0300141C
    ldrb r0, [r0, #1]
    bl GetUnit
    adds r1, r0, #0
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    lsls r0, r0, #4
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    lsls r1, r1, #4
    movs r2, #2
    adds r3, r4, #0
    bl func_080350E4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080469C0: .4byte 0x0300141C
    func_end func_08046994

    thumb_func_start func_080469C4
func_080469C4: @ 0x080469C4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r6, r0, #0
    ldr r0, .L08046A48 @ =0x0300141C
    ldrb r0, [r0, #1]
    ldr r5, .L08046A4C @ =0x0203DCA1
    movs r1, #0x34
    adds r1, r1, r6
    mov r8, r1
    movs r1, #0x38
    adds r1, r1, r6
    mov sb, r1
    str r1, [sp]
    movs r1, #1
    adds r2, r5, #0
    mov r3, r8
    bl func_08044C10
    ldr r4, .L08046A50 @ =0x03001400
    subs r5, #5
    ldrb r1, [r5, #4]
    adds r0, r1, r4
    ldrb r0, [r0]
    bl GetUnit
    adds r7, r0, #0
    ldrb r5, [r5, #5]
    adds r4, r5, r4
    ldrb r0, [r4]
    bl GetUnit
    adds r4, r0, #0
    ldr r0, [r7, #0xc]
    movs r5, #0x80
    lsls r5, r5, #2
    ands r0, r5
    cmp r0, #0
    beq .L08046A26
    adds r2, r6, #0
    adds r2, #0x2c
    adds r3, r6, #0
    adds r3, #0x30
    adds r0, r7, #0
    movs r1, #0
    bl func_08046464
.L08046A26:
    ldr r0, [r4, #0xc]
    ands r0, r5
    cmp r0, #0
    beq .L08046A3A
    adds r0, r4, #0
    movs r1, #1
    mov r2, r8
    mov r3, sb
    bl func_08046464
.L08046A3A:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08046A48: .4byte 0x0300141C
.L08046A4C: .4byte 0x0203DCA1
.L08046A50: .4byte 0x03001400
    func_end func_080469C4

    thumb_func_start func_08046A54
func_08046A54: @ 0x08046A54
    push {r4, lr}
    adds r4, r0, #0
    movs r1, #2
    bl func_08046674
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L08046A76
    bl MuExistsActive
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08046A76
    adds r0, r4, #0
    bl Proc_Break
.L08046A76:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08046A54

    thumb_func_start func_08046A7C
func_08046A7C: @ 0x08046A7C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    bl GetGameTime
    ldr r2, .L08046B34 @ =0x08B99C98
    movs r1, #0x1f
    ands r1, r0
    adds r1, r1, r2
    ldrb r0, [r1]
    adds r0, #4
    asrs r0, r0, #1
    mov sl, r0
    movs r7, #0
.L08046A9C:
    ldr r0, .L08046B38 @ =0x08B98AEC
    ldr r0, [r0]
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #2
    adds r0, r7, r0
    ldr r1, .L08046B3C @ =0x081D5470
    adds r0, r0, r1
    ldrb r0, [r0]
    bl func_0803CD1C
    lsls r0, r0, #0x18
    adds r1, r7, #1
    mov sb, r1
    cmp r0, #0
    beq .L08046B1E
    movs r6, #0
    lsls r0, r7, #2
    mov r8, r0
.L08046AC4:
    mov r1, r8
    adds r0, r1, r7
    adds r0, r0, r6
    ldr r1, .L08046B40 @ =0x03001400
    adds r0, r0, r1
    ldrb r0, [r0]
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08046B18
    ldr r0, [r2]
    cmp r0, #0
    beq .L08046B18
    ldr r0, [r2, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    ands r0, r1
    cmp r0, #0
    beq .L08046B18
    movs r5, #0x10
    ldrsb r5, [r2, r5]
    lsls r5, r5, #4
    movs r4, #0x11
    ldrsb r4, [r2, r4]
    lsls r4, r4, #4
    mov r0, sl
    subs r4, r4, r0
    adds r0, r2, #0
    bl func_080256C8
    movs r3, #0xf
    ands r3, r0
    lsls r3, r3, #0xc
    movs r1, #0xa4
    lsls r1, r1, #4
    adds r3, r3, r1
    adds r0, r5, #0
    adds r1, r4, #0
    ldr r2, .L08046B44 @ =0x08B905B8
    bl PutOamHiRam
.L08046B18:
    adds r6, #1
    cmp r6, #4
    ble .L08046AC4
.L08046B1E:
    mov r7, sb
    cmp r7, #3
    ble .L08046A9C
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08046B34: .4byte 0x08B99C98
.L08046B38: .4byte 0x08B98AEC
.L08046B3C: .4byte 0x081D5470
.L08046B40: .4byte 0x03001400
.L08046B44: .4byte 0x08B905B8
    func_end func_08046A7C

    thumb_func_start func_08046B48
func_08046B48: @ 0x08046B48
    push {lr}
    ldr r0, .L08046B58 @ =0x08B99CB8
    movs r1, #4
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08046B58: .4byte 0x08B99CB8
    func_end func_08046B48

    thumb_func_start func_08046B5C
func_08046B5C: @ 0x08046B5C
    push {lr}
    ldr r0, .L08046B68 @ =0x08B99CB8
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08046B68: .4byte 0x08B99CB8
    func_end func_08046B5C

    thumb_func_start func_08046B6C
func_08046B6C: @ 0x08046B6C
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x1f
    bl SetStatScreenExcludedUnitFlags
    ldr r0, .L08046B88 @ =gActiveUnit
    ldr r0, [r0]
    adds r1, r4, #0
    bl StartStatScreen
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08046B88: .4byte gActiveUnit
    func_end func_08046B6C

    thumb_func_start func_08046B8C
func_08046B8C: @ 0x08046B8C
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08046BA4 @ =0x0203DC9C
    ldrb r0, [r0, #8]
    cmp r0, #0
    bne .L08046BA8
    adds r0, r1, #0
    movs r1, #0
    bl Proc_Goto
    b .L08046BBA
    .align 2, 0
.L08046BA4: .4byte 0x0203DC9C
.L08046BA8:
    bl EndAllMus
    ldr r0, .L08046BC0 @ =gPlaySt
    ldrb r1, [r0, #0xf]
    movs r0, #6
    movs r2, #0
    movs r3, #0
    bl func_08044B98
.L08046BBA:
    pop {r0}
    bx r0
    .align 2, 0
.L08046BC0: .4byte gPlaySt
    func_end func_08046B8C

    thumb_func_start func_08046BC4
func_08046BC4: @ 0x08046BC4
    push {lr}
    ldr r2, .L08046BD8 @ =0x0203DC9C
    ldrb r1, [r2, #8]
    cmp r1, #0
    bne .L08046BDC
    strb r1, [r2, #9]
    movs r1, #0
    bl Proc_Goto
    b .L08046BEE
    .align 2, 0
.L08046BD8: .4byte 0x0203DC9C
.L08046BDC:
    bl EndAllMus
    ldr r0, .L08046BF4 @ =gPlaySt
    ldrb r1, [r0, #0xf]
    movs r0, #7
    movs r2, #0
    movs r3, #0
    bl func_08044B98
.L08046BEE:
    pop {r0}
    bx r0
    .align 2, 0
.L08046BF4: .4byte gPlaySt
    func_end func_08046BC4

    thumb_func_start func_08046BF8
func_08046BF8: @ 0x08046BF8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08046C10 @ =0x0203DC9C
    ldrb r0, [r0, #8]
    cmp r0, #0
    bne .L08046C14
    ldr r1, [r4, #0x58]
    adds r0, r4, #0
    bl Proc_Goto
    b .L08046C30
    .align 2, 0
.L08046C10: .4byte 0x0203DC9C
.L08046C14:
    bl EndAllMus
    bl EndAllMus
    ldr r1, .L08046C38 @ =0x0203D90C
    movs r0, #1
    strb r0, [r1, #0xb]
    movs r0, #0xff
    bl func_08044B34
    adds r0, r4, #0
    movs r1, #5
    bl Proc_Goto
.L08046C30:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08046C38: .4byte 0x0203D90C
    func_end func_08046BF8

    thumb_func_start func_08046C3C
func_08046C3C: @ 0x08046C3C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    movs r6, #0
    ldr r1, .L08046C50 @ =0x0203D90C
    ldrb r0, [r1]
    cmp r0, #1
    bne .L08046C54
    strb r0, [r1, #0xb]
    b .L08046CA6
    .align 2, 0
.L08046C50: .4byte 0x0203D90C
.L08046C54:
    ldr r2, .L08046CB8 @ =0x0203DC9C
    adds r4, r1, #0
    adds r4, #0xa0
    ldrb r0, [r4]
    ldrb r3, [r2, #0xe]
    subs r1, r0, r3
    adds r0, r2, #0
    adds r0, #0xf
    adds r1, r1, r0
    ldr r3, .L08046CBC @ =gPlaySt
    ldrb r0, [r3, #0xf]
    strb r0, [r1]
    ldrb r0, [r2, #0xe]
    adds r0, #1
    strb r0, [r2, #0xe]
    ldrb r1, [r3, #0xf]
    lsls r0, r1, #2
    adds r1, r2, #0
    adds r1, #0x14
    adds r0, r0, r1
    str r6, [r0]
    ldrb r0, [r2, #0xe]
    ldrb r1, [r4]
    cmp r0, r1
    bne .L08046CC0
    movs r1, #0
    ldrb r0, [r4]
    cmp r6, r0
    bge .L08046CA4
    adds r4, r2, #0
    adds r4, #0xa
    adds r3, r0, #0
.L08046C94:
    adds r0, r1, r4
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08046C9E
    adds r6, r1, #0
.L08046C9E:
    adds r1, #1
    cmp r1, r3
    blt .L08046C94
.L08046CA4:
    strb r6, [r2, #0xf]
.L08046CA6:
    movs r0, #0xff
    bl func_08044B34
    adds r0, r5, #0
    movs r1, #8
    bl Proc_Goto
    b .L08046CCE
    .align 2, 0
.L08046CB8: .4byte 0x0203DC9C
.L08046CBC: .4byte gPlaySt
.L08046CC0:
    ldrb r0, [r3, #0xf]
    bl func_08044B34
    adds r0, r5, #0
    movs r1, #8
    bl Proc_Goto
.L08046CCE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08046C3C

    thumb_func_start func_08046CD4
func_08046CD4: @ 0x08046CD4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08046CF4 @ =0x0203D90C
    ldrb r0, [r1]
    cmp r0, #1
    bne .L08046CF8
    strb r0, [r1, #0xb]
    movs r0, #0xff
    bl func_08044B34
    adds r0, r4, #0
    movs r1, #8
    bl Proc_Goto
    b .L08046D0A
    .align 2, 0
.L08046CF4: .4byte 0x0203D90C
.L08046CF8:
    movs r0, #2
    strb r0, [r1, #0xb]
    movs r0, #0xff
    bl func_08044B34
    adds r0, r4, #0
    movs r1, #8
    bl Proc_Goto
.L08046D0A:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08046CD4

    thumb_func_start func_08046D10
func_08046D10: @ 0x08046D10
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    movs r5, #0
    ldr r2, .L08046D7C @ =0x0203DC9C
    ldr r0, .L08046D80 @ =0x0203D90C
    adds r4, r0, #0
    adds r4, #0xa0
    ldrb r0, [r4]
    ldrb r3, [r2, #0xe]
    subs r1, r0, r3
    adds r0, r2, #0
    adds r0, #0xf
    adds r1, r1, r0
    ldr r3, .L08046D84 @ =gPlaySt
    ldrb r0, [r3, #0xf]
    strb r0, [r1]
    ldrb r0, [r2, #0xe]
    adds r0, #1
    strb r0, [r2, #0xe]
    ldrb r1, [r3, #0xf]
    lsls r0, r1, #2
    adds r1, r2, #0
    adds r1, #0x14
    adds r0, r0, r1
    str r5, [r0]
    ldrb r0, [r2, #0xe]
    ldrb r1, [r4]
    cmp r0, r1
    bne .L08046D88
    movs r1, #0
    ldrb r0, [r4]
    cmp r5, r0
    bge .L08046D68
    adds r4, r2, #0
    adds r4, #0xa
    adds r3, r0, #0
.L08046D58:
    adds r0, r1, r4
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08046D62
    adds r5, r1, #0
.L08046D62:
    adds r1, #1
    cmp r1, r3
    blt .L08046D58
.L08046D68:
    strb r5, [r2, #0xf]
    movs r0, #0xff
    bl func_08044B34
    adds r0, r6, #0
    movs r1, #5
    bl Proc_Goto
    b .L08046D96
    .align 2, 0
.L08046D7C: .4byte 0x0203DC9C
.L08046D80: .4byte 0x0203D90C
.L08046D84: .4byte gPlaySt
.L08046D88:
    ldrb r0, [r3, #0xf]
    bl func_08044B34
    adds r0, r6, #0
    movs r1, #5
    bl Proc_Goto
.L08046D96:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08046D10

    thumb_func_start func_08046D9C
func_08046D9C: @ 0x08046D9C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08046DBC @ =0x0203D90C
    movs r0, #2
    strb r0, [r1, #0xb]
    movs r0, #0xff
    bl func_08044B34
    adds r0, r4, #0
    movs r1, #5
    bl Proc_Goto
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08046DBC: .4byte 0x0203D90C
    func_end func_08046D9C

    thumb_func_start func_08046DC0
func_08046DC0: @ 0x08046DC0
    push {r4, lr}
    movs r3, #0
    str r3, [r0, #0x58]
    ldr r2, .L08046DE0 @ =gPlaySt
    ldrb r4, [r2, #0xf]
    lsls r1, r4, #6
    str r1, [r0, #0x5c]
    ldr r0, .L08046DE4 @ =0x0203DC9C
    adds r0, #0xa
    ldrb r2, [r2, #0xf]
    adds r0, r2, r0
    strb r3, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08046DE0: .4byte gPlaySt
.L08046DE4: .4byte 0x0203DC9C
    func_end func_08046DC0

    thumb_func_start func_08046DE8
func_08046DE8: @ 0x08046DE8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
.L08046DEC:
    ldr r1, [r5, #0x58]
    cmp r1, #5
    bne .L08046DFC
    adds r0, r5, #0
    movs r1, #1
    bl Proc_Goto
    b .L08046E60
.L08046DFC:
    ldr r0, [r5, #0x5c]
    adds r0, r0, r1
    adds r0, #1
    bl GetUnit
    adds r6, r0, #0
    ldr r0, [r6, #0xc]
    ldr r1, .L08046E20 @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L08046E18
    ldr r0, [r6]
    cmp r0, #0
    bne .L08046E24
.L08046E18:
    ldr r0, [r5, #0x58]
    adds r0, #1
    str r0, [r5, #0x58]
    b .L08046DEC
    .align 2, 0
.L08046E20: .4byte 0x00010004
.L08046E24:
    bl RefreshUnitSprites
    adds r0, r6, #0
    bl HideUnitSprite
    adds r0, r6, #0
    bl StartMu
    adds r4, r0, #0
    ldr r1, .L08046E68 @ =gWorkingMoveScr
    movs r0, #2
    strb r0, [r1]
    movs r0, #4
    strb r0, [r1, #1]
    adds r0, r4, #0
    bl SetMuMoveScript
    adds r0, r4, #0
    bl func_080476E4
    str r4, [r5, #0x54]
    ldr r0, [r5, #0x58]
    adds r0, #1
    str r0, [r5, #0x58]
    ldr r0, [r6, #0xc]
    ldr r1, .L08046E6C @ =0xFFFFFDFF
    ands r0, r1
    movs r1, #5
    orrs r0, r1
    str r0, [r6, #0xc]
.L08046E60:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08046E68: .4byte gWorkingMoveScr
.L08046E6C: .4byte 0xFFFFFDFF
    func_end func_08046DE8

    thumb_func_start func_08046E70
func_08046E70: @ 0x08046E70
    push {lr}
    ldr r0, [r0, #0x54]
    bl EndMu
    pop {r0}
    bx r0
    func_end func_08046E70

    thumb_func_start func_08046E7C
func_08046E7C: @ 0x08046E7C
    push {lr}
    bl func_08044DCC
    bl func_08044E2C
    bl RefreshUnitSprites
    pop {r0}
    bx r0
    func_end func_08046E7C

    thumb_func_start func_08046E90
func_08046E90: @ 0x08046E90
    push {lr}
    bl GetTalkChoiceResult
    adds r1, r0, #0
    cmp r1, #1
    bne .L08046EA8
    ldr r0, .L08046EA4 @ =0x0203DC9C
    strb r1, [r0, #8]
    b .L08046EAE
    .align 2, 0
.L08046EA4: .4byte 0x0203DC9C
.L08046EA8:
    ldr r1, .L08046EB4 @ =0x0203DC9C
    movs r0, #0
    strb r0, [r1, #8]
.L08046EAE:
    pop {r0}
    bx r0
    .align 2, 0
.L08046EB4: .4byte 0x0203DC9C
    func_end func_08046E90

    thumb_func_start func_08046EB8
func_08046EB8: @ 0x08046EB8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, .L08046EFC @ =0x06015000
    movs r1, #6
    bl func_08082528
    movs r2, #0xf5
    lsls r2, r2, #2
    movs r0, #0x40
    movs r1, #0x38
    bl func_08081A94
    movs r4, #0
    ldr r6, .L08046F00 @ =0x0203DCA6
.L08046ED4:
    lsls r0, r4, #0x18
    lsrs r0, r0, #0x18
    bl func_0803CD1C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08046EEC
    adds r0, r4, r6
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08046EEC
    str r4, [r5, #0x58]
.L08046EEC:
    adds r4, #1
    cmp r4, #3
    ble .L08046ED4
    movs r0, #0
    str r0, [r5, #0x5c]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08046EFC: .4byte 0x06015000
.L08046F00: .4byte 0x0203DCA6
    func_end func_08046EB8

    thumb_func_start func_08046F04
func_08046F04: @ 0x08046F04
    push {r4, lr}
    adds r4, r0, #0
.L08046F08:
    ldr r1, [r4, #0x5c]
    cmp r1, #4
    ble .L08046F1A
    bl func_08081B44
    adds r0, r4, #0
    bl Proc_Break
    b .L08046F72
.L08046F1A:
    ldr r0, [r4, #0x58]
    lsls r0, r0, #6
    adds r0, r0, r1
    adds r0, #1
    bl GetUnit
    adds r2, r0, #0
    ldr r0, [r2, #0xc]
    ldr r1, .L08046F40 @ =0x00010004
    ands r0, r1
    cmp r0, #0
    bne .L08046F38
    ldr r0, [r2]
    cmp r0, #0
    bne .L08046F44
.L08046F38:
    ldr r0, [r4, #0x5c]
    adds r0, #1
    str r0, [r4, #0x5c]
    b .L08046F08
    .align 2, 0
.L08046F40: .4byte 0x00010004
.L08046F44:
    ldr r3, .L08046F78 @ =0x0203DC9C
    ldr r0, [r4, #0x58]
    lsls r0, r0, #3
    adds r1, r3, #0
    adds r1, #0x30
    adds r0, r0, r1
    movs r1, #0x1e
    str r1, [r0]
    ldr r1, [r4, #0x58]
    lsls r2, r1, #3
    adds r2, r2, r3
    lsls r1, r1, #6
    ldr r0, [r4, #0x5c]
    adds r0, r0, r1
    adds r0, #1
    adds r2, #0x2c
    strb r0, [r2]
    adds r0, r4, #0
    bl func_08044AC0
    ldr r0, [r4, #0x5c]
    adds r0, #1
    str r0, [r4, #0x5c]
.L08046F72:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08046F78: .4byte 0x0203DC9C
    func_end func_08046F04

    thumb_func_start func_08046F7C
func_08046F7C: @ 0x08046F7C
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08046F94 @ =0x0203D90C
    ldrb r0, [r0]
    cmp r0, #1
    bne .L08046F90
    adds r0, r1, #0
    movs r1, #1
    bl Proc_Goto
.L08046F90:
    pop {r0}
    bx r0
    .align 2, 0
.L08046F94: .4byte 0x0203D90C
    func_end func_08046F7C

    thumb_func_start func_08046F98
func_08046F98: @ 0x08046F98
    push {lr}
    ldr r0, .L08046FC4 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    bl RenderMap
    bl func_08050994
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08046FC8
    movs r0, #1
    bl func_0804B194
    bl func_080509A4
    b .L08046FDE
    .align 2, 0
.L08046FC4: .4byte gBg2Tm
.L08046FC8:
    bl EndAllMus
    bl RenderMap
    bl func_0806F23C
    ldr r0, .L08046FE4 @ =0x0203A3D8
    movs r1, #0x80
    ldrh r2, [r0]
    orrs r1, r2
    strh r1, [r0]
.L08046FDE:
    pop {r0}
    bx r0
    .align 2, 0
.L08046FE4: .4byte 0x0203A3D8
    func_end func_08046F98

    thumb_func_start func_08046FE8
func_08046FE8: @ 0x08046FE8
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r6, .L08047058 @ =0x0203A3F0
    movs r0, #0x13
    ldrsb r0, [r6, r0]
    cmp r0, #0
    bne .L08047004
    ldr r0, .L0804705C @ =0x08C9D00C
    bl Proc_Find
    adds r4, r0, #0
    bl func_080476E4
    str r4, [r7, #0x54]
.L08047004:
    ldr r5, .L08047060 @ =0x0203A470
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L08047050
    bl RefreshUnitSprites
    movs r0, #0xb
    ldrsb r0, [r5, r0]
    bl GetUnit
    bl HideUnitSprite
    adds r0, r5, #0
    bl StartMu
    adds r4, r0, #0
    movs r0, #0x10
    ldrsb r0, [r6, r0]
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    bl func_0806F478
    ldr r1, .L08047064 @ =gWorkingMoveScr
    strb r0, [r1]
    movs r0, #4
    strb r0, [r1, #1]
    adds r0, r4, #0
    bl SetMuMoveScript
    adds r0, r4, #0
    bl func_080476E4
    str r4, [r7, #0x54]
.L08047050:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08047058: .4byte 0x0203A3F0
.L0804705C: .4byte 0x08C9D00C
.L08047060: .4byte 0x0203A470
.L08047064: .4byte gWorkingMoveScr
    func_end func_08046FE8

    thumb_func_start func_08047068
func_08047068: @ 0x08047068
    push {r4, r5, lr}
    ldr r0, .L080470B0 @ =0x0203A3F0
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetUnit
    adds r4, r0, #0
    ldr r0, .L080470B4 @ =0x0203A470
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetUnit
    adds r5, r0, #0
    adds r0, r4, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L08047098
    ldr r0, [r4, #0xc]
    movs r1, #5
    orrs r0, r1
    str r0, [r4, #0xc]
.L08047098:
    adds r0, r5, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L080470AA
    ldr r0, [r5, #0xc]
    movs r1, #5
    orrs r0, r1
    str r0, [r5, #0xc]
.L080470AA:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080470B0: .4byte 0x0203A3F0
.L080470B4: .4byte 0x0203A470
    func_end func_08047068

    thumb_func_start func_080470B8
func_080470B8: @ 0x080470B8
    ldr r1, .L080470C0 @ =0x0203DCE8
    movs r0, #1
    strb r0, [r1]
    bx lr
    .align 2, 0
.L080470C0: .4byte 0x0203DCE8
    func_end func_080470B8

    thumb_func_start func_080470C4
func_080470C4: @ 0x080470C4
    ldr r1, .L080470CC @ =0x0203DCE8
    movs r0, #0
    strb r0, [r1]
    bx lr
    .align 2, 0
.L080470CC: .4byte 0x0203DCE8
    func_end func_080470C4

    thumb_func_start func_080470D0
func_080470D0: @ 0x080470D0
    ldr r2, .L08047104 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    bx lr
    .align 2, 0
.L08047104: .4byte gDispIo
    func_end func_080470D0

    thumb_func_start func_08047108
func_08047108: @ 0x08047108
    ldr r0, .L08047134 @ =0x04000006
    ldrh r0, [r0]
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    ldr r3, .L08047138 @ =0x02001188
    cmp r1, #0xa0
    bls .L08047120
    ldr r0, .L0804713C @ =0x02001180
    ldr r0, [r0]
    str r0, [r3]
    movs r1, #0
.L08047120:
    ldr r2, .L08047140 @ =0x04000042
    ldr r0, [r3]
    lsls r1, r1, #2
    adds r1, r1, r0
    ldrh r3, [r1]
    lsls r0, r3, #8
    ldrh r1, [r1, #2]
    adds r0, r1, r0
    strh r0, [r2]
    bx lr
    .align 2, 0
.L08047134: .4byte 0x04000006
.L08047138: .4byte 0x02001188
.L0804713C: .4byte 0x02001180
.L08047140: .4byte 0x04000042
    func_end func_08047108

    thumb_func_start func_08047144
func_08047144: @ 0x08047144
    ldr r2, .L08047154 @ =0x02001180
    ldr r3, [r2]
    ldr r1, .L08047158 @ =0x02001184
    ldr r0, [r1]
    str r0, [r2]
    str r3, [r1]
    bx lr
    .align 2, 0
.L08047154: .4byte 0x02001180
.L08047158: .4byte 0x02001184
    func_end func_08047144

    thumb_func_start func_0804715C
func_0804715C: @ 0x0804715C
    push {lr}
    ldr r2, .L08047180 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    movs r0, #0
    bl SetOnHBlankA
    pop {r0}
    bx r0
    .align 2, 0
.L08047180: .4byte gDispIo
    func_end func_0804715C

    thumb_func_start func_08047184
func_08047184: @ 0x08047184
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp, #4]
    ldr r7, [sp, #0x34]
    ldr r0, [sp, #0x48]
    ldr r6, [sp, #0x4c]
    lsls r6, r6, #0x10
    lsrs r6, r6, #0x10
    subs r1, #0x78
    subs r2, #0x50
    subs r3, #0x78
    subs r7, #0x50
    ldr r4, [sp, #0x38]
    subs r4, #0x78
    str r4, [sp, #0x38]
    ldr r4, [sp, #0x3c]
    subs r4, #0x50
    str r4, [sp, #0x3c]
    ldr r4, [sp, #0x40]
    subs r4, #0x78
    str r4, [sp, #0x40]
    ldr r4, [sp, #0x44]
    subs r4, #0x50
    str r4, [sp, #0x44]
    ldr r4, .L080472F0 @ =0x080C5A48
    mov sb, r4
    lsls r0, r0, #0x10
    movs r4, #0xff
    lsls r4, r4, #0x10
    ands r4, r0
    asrs r4, r4, #0x10
    mov ip, r4
    lsls r0, r4, #1
    add r0, sb
    movs r4, #0
    ldrsh r5, [r0, r4]
    adds r0, r1, #0
    muls r0, r5, r0
    mov r8, r0
    mov r4, ip
    adds r4, #0x40
    lsls r4, r4, #1
    add r4, sb
    movs r0, #0
    ldrsh r4, [r4, r0]
    adds r0, r2, #0
    muls r0, r4, r0
    add r0, r8
    str r0, [sp, #8]
    muls r1, r4, r1
    adds r0, r2, #0
    muls r0, r5, r0
    subs r1, r1, r0
    str r1, [sp, #0xc]
    adds r1, r3, #0
    muls r1, r5, r1
    adds r0, r7, #0
    muls r0, r4, r0
    adds r1, r1, r0
    mov sb, r1
    adds r1, r3, #0
    muls r1, r4, r1
    adds r0, r7, #0
    muls r0, r5, r0
    subs r7, r1, r0
    ldr r2, [sp, #0x38]
    adds r1, r2, #0
    muls r1, r5, r1
    ldr r2, [sp, #0x3c]
    adds r0, r2, #0
    muls r0, r4, r0
    adds r1, r1, r0
    mov sl, r1
    ldr r0, [sp, #0x38]
    adds r1, r0, #0
    muls r1, r4, r1
    adds r0, r2, #0
    muls r0, r5, r0
    subs r1, r1, r0
    mov r8, r1
    ldr r2, [sp, #0x40]
    adds r1, r2, #0
    muls r1, r5, r1
    ldr r2, [sp, #0x44]
    adds r0, r2, #0
    muls r0, r4, r0
    adds r1, r1, r0
    str r1, [sp, #0x10]
    ldr r0, [sp, #0x40]
    adds r1, r0, #0
    muls r1, r4, r1
    adds r0, r2, #0
    muls r0, r5, r0
    subs r4, r1, r0
    ldr r1, [sp, #8]
    asrs r0, r1, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r0, #0x78
    str r0, [sp, #8]
    ldr r2, [sp, #0xc]
    asrs r0, r2, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r0, #0x50
    str r0, [sp, #0xc]
    mov r1, sb
    asrs r0, r1, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r0, #0x78
    mov sb, r0
    asrs r0, r7, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r7, r0, #0
    adds r7, #0x50
    mov r2, sl
    asrs r0, r2, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r0, #0x78
    mov sl, r0
    mov r1, r8
    asrs r0, r1, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r0, #0x50
    mov r8, r0
    ldr r2, [sp, #0x10]
    asrs r0, r2, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r0, #0x78
    str r0, [sp, #0x10]
    asrs r0, r4, #0xc
    muls r0, r6, r0
    asrs r0, r0, #8
    adds r4, r0, #0
    adds r4, #0x50
    str r7, [sp]
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    ldr r2, [sp, #0xc]
    mov r3, sb
    bl func_080133C8
    mov r0, r8
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    adds r2, r7, #0
    mov r3, sl
    bl func_080133C8
    str r4, [sp]
    ldr r0, [sp, #4]
    mov r1, sl
    mov r2, r8
    ldr r3, [sp, #0x10]
    bl func_080133C8
    ldr r1, [sp, #0xc]
    str r1, [sp]
    ldr r0, [sp, #4]
    ldr r1, [sp, #0x10]
    adds r2, r4, #0
    ldr r3, [sp, #8]
    bl func_080133C8
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080472F0: .4byte gSinLut
    func_end func_08047184

    thumb_func_start func_080472F4
func_080472F4: @ 0x080472F4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08047328 @ =0x02001180
    ldr r0, .L0804732C @ =0x02000F00
    str r0, [r1]
    ldr r5, .L08047330 @ =0x02001184
    ldr r2, .L08047334 @ =0xFFFFFD80
    adds r1, r0, r2
    str r1, [r5]
    ldr r1, .L08047338 @ =0x02001188
    str r0, [r1]
    bl func_080133A8
    ldr r0, [r5]
    bl func_080133A8
    adds r4, #0x4c
    movs r0, #0
    strh r0, [r4]
    ldr r0, .L0804733C @ =func_08047108
    bl SetOnHBlankA
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08047328: .4byte 0x02001180
.L0804732C: .4byte 0x02000F00
.L08047330: .4byte 0x02001184
.L08047334: .4byte 0xFFFFFD80
.L08047338: .4byte 0x02001188
.L0804733C: .4byte func_08047108
    func_end func_080472F4

    thumb_func_start func_08047340
func_08047340: @ 0x08047340
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    adds r4, r0, #0
    adds r7, r4, #0
    adds r7, #0x4c
    adds r5, r4, #0
    adds r5, #0x64
    ldrh r0, [r7]
    ldrh r1, [r5]
    cmp r0, r1
    bne .L08047364
    movs r0, #0
    bl SetOnHBlankA
    adds r0, r4, #0
    bl Proc_Break
    b .L080473CA
.L08047364:
    movs r0, #0
    ldrsh r3, [r7, r0]
    movs r1, #0
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0xa0
    movs r2, #0xc0
    bl Interpolate
    adds r6, r0, #0
    movs r2, #0x88
    lsls r2, r2, #1
    movs r0, #0
    ldrsh r3, [r7, r0]
    movs r1, #0
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #1
    movs r1, #0x10
    bl Interpolate
    adds r5, r0, #0
    ldr r4, .L080473D4 @ =0x02001184
    ldr r0, [r4]
    bl func_080133A8
    ldr r0, [r4]
    movs r2, #0
    str r2, [sp]
    movs r1, #0xf0
    str r1, [sp, #4]
    movs r1, #0xa0
    str r1, [sp, #8]
    str r2, [sp, #0xc]
    str r1, [sp, #0x10]
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    str r6, [sp, #0x14]
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    str r5, [sp, #0x18]
    movs r1, #0
    movs r3, #0xf0
    bl func_08047184
    bl func_08047144
    ldrh r0, [r7]
    adds r0, #1
    strh r0, [r7]
.L080473CA:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080473D4: .4byte 0x02001184
    func_end func_08047340

    thumb_func_start func_080473D8
func_080473D8: @ 0x080473D8
    ldr r2, .L0804741C @ =gDispIo
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
    movs r1, #0x21
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #0x20
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    adds r1, r2, #0
    adds r1, #0x2f
    movs r0, #0
    strb r0, [r1]
    adds r1, #4
    strb r0, [r1]
    subs r1, #5
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    bx lr
    .align 2, 0
.L0804741C: .4byte gDispIo
    func_end func_080473D8

    thumb_func_start func_08047420
func_08047420: @ 0x08047420
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, .L080474C0 @ =0x08B9A1E0
    bl Proc_StartBlocking
    adds r0, #0x64
    movs r3, #0
    strh r4, [r0]
    ldr r0, .L080474C4 @ =gDispIo
    mov ip, r0
    movs r2, #1
    ldrb r0, [r0, #1]
    orrs r0, r2
    movs r1, #2
    mov r8, r1
    mov r1, r8
    orrs r0, r1
    movs r6, #4
    orrs r0, r6
    movs r5, #8
    orrs r0, r5
    movs r4, #0x10
    orrs r0, r4
    movs r1, #0x21
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r1, ip
    strb r0, [r1, #1]
    mov r0, ip
    adds r0, #0x2f
    strb r3, [r0]
    adds r0, #4
    strb r3, [r0]
    adds r1, #0x2e
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    mov r7, ip
    adds r7, #0x35
    ldrb r0, [r7]
    orrs r2, r0
    mov r1, r8
    orrs r2, r1
    orrs r2, r6
    orrs r2, r5
    orrs r2, r4
    mov r3, ip
    adds r3, #0x36
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r3]
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
    strb r0, [r3]
    movs r0, #0x20
    orrs r2, r0
    strb r2, [r7]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080474C0: .4byte 0x08B9A1E0
.L080474C4: .4byte gDispIo
    func_end func_08047420

    thumb_func_start func_080474C8
func_080474C8: @ 0x080474C8
    push {lr}
    adds r1, r0, #0
    movs r0, #0x40
    bl func_08047420
    pop {r0}
    bx r0
    func_end func_080474C8

    thumb_func_start func_080474D8
func_080474D8: @ 0x080474D8
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    adds r4, r0, #0
    adds r7, r4, #0
    adds r7, #0x4c
    adds r5, r4, #0
    adds r5, #0x64
    ldrh r0, [r7]
    ldrh r1, [r5]
    cmp r0, r1
    bne .L080474FC
    movs r0, #0
    bl SetOnHBlankA
    adds r0, r4, #0
    bl Proc_Break
    b .L08047562
.L080474FC:
    movs r2, #0
    ldrsh r3, [r7, r2]
    movs r1, #0
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #4
    movs r1, #0xc0
    movs r2, #0xa0
    bl Interpolate
    adds r6, r0, #0
    movs r1, #0x88
    lsls r1, r1, #1
    movs r2, #0
    ldrsh r3, [r7, r2]
    movs r2, #0
    ldrsh r0, [r5, r2]
    str r0, [sp]
    movs r0, #5
    movs r2, #0x10
    bl Interpolate
    adds r5, r0, #0
    ldr r4, .L0804756C @ =0x02001184
    ldr r0, [r4]
    bl func_080133A8
    ldr r0, [r4]
    movs r2, #0
    str r2, [sp]
    movs r1, #0xf0
    str r1, [sp, #4]
    movs r1, #0xa0
    str r1, [sp, #8]
    str r2, [sp, #0xc]
    str r1, [sp, #0x10]
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    str r6, [sp, #0x14]
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    str r5, [sp, #0x18]
    movs r1, #0
    movs r3, #0xf0
    bl func_08047184
    bl func_08047144
    ldrh r0, [r7]
    adds r0, #1
    strh r0, [r7]
.L08047562:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804756C: .4byte 0x02001184
    func_end func_080474D8

    thumb_func_start func_08047570
func_08047570: @ 0x08047570
    ldr r2, .L08047590 @ =gDispIo
    movs r0, #0
    strb r0, [r2, #1]
    adds r1, r2, #0
    adds r1, #0x2f
    strb r0, [r1]
    adds r1, #4
    strb r0, [r1]
    subs r1, #5
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    bx lr
    .align 2, 0
.L08047590: .4byte gDispIo
    func_end func_08047570

    thumb_func_start func_08047594
func_08047594: @ 0x08047594
    push {r4, lr}
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, .L08047618 @ =0x08B9A218
    bl Proc_StartBlocking
    adds r0, #0x64
    movs r2, #0
    strh r4, [r0]
    ldr r3, .L0804761C @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r3, #1]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r3, #1]
    adds r0, r3, #0
    adds r0, #0x2f
    strb r2, [r0]
    adds r0, #4
    strb r2, [r0]
    adds r1, r3, #0
    adds r1, #0x2e
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    adds r4, r3, #0
    adds r4, #0x35
    movs r2, #1
    ldrb r0, [r4]
    orrs r2, r0
    movs r0, #2
    orrs r2, r0
    movs r0, #4
    orrs r2, r0
    movs r0, #8
    orrs r2, r0
    movs r0, #0x10
    orrs r2, r0
    adds r3, #0x36
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r3]
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
    strb r0, [r3]
    movs r0, #0x20
    orrs r2, r0
    strb r2, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08047618: .4byte 0x08B9A218
.L0804761C: .4byte gDispIo
    func_end func_08047594

    thumb_func_start func_08047620
func_08047620: @ 0x08047620
    push {lr}
    adds r1, r0, #0
    movs r0, #0x40
    bl func_08047594
    pop {r0}
    bx r0
    func_end func_08047620

    thumb_func_start func_08047630
func_08047630: @ 0x08047630
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804764C @ =0x08B9A1E0
    bl Proc_Find
    cmp r0, #0
    bne .L08047644
    adds r0, r4, #0
    bl Proc_Break
.L08047644:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804764C: .4byte 0x08B9A1E0
    func_end func_08047630

    thumb_func_start func_08047650
func_08047650: @ 0x08047650
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804766C @ =0x08B9A218
    bl Proc_Find
    cmp r0, #0
    bne .L08047664
    adds r0, r4, #0
    bl Proc_Break
.L08047664:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804766C: .4byte 0x08B9A218
    func_end func_08047650

    thumb_func_start func_08047670
func_08047670: @ 0x08047670
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080476BC @ =0x08B9A250
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r0, [r1]
    movs r1, #0xb0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r1, [r4, #0x30]
    ldr r0, [r4, #0x34]
    ldrh r0, [r0, #2]
    movs r2, #0xd0
    lsls r2, r2, #7
    adds r0, r0, r2
    strh r0, [r1, #0x22]
    ldr r0, [r4, #0x34]
    ldrb r0, [r0, #1]
    adds r0, #0x10
    lsls r0, r0, #5
    ldr r1, .L080476C0 @ =gPal
    adds r0, r0, r1
    movs r1, #0x16
    movs r2, #0x14
    adds r3, r4, #0
    bl StartPalFade
    ldr r0, .L080476C4 @ =0x08B9A268
    adds r1, r4, #0
    bl Proc_Start
    str r4, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080476BC: .4byte 0x08B9A250
.L080476C0: .4byte gPal
.L080476C4: .4byte 0x08B9A268
    func_end func_08047670

    thumb_func_start func_080476C8
func_080476C8: @ 0x080476C8
    ldr r0, [r0, #0x2c]
    ldr r2, [r0, #0x30]
    ldr r1, [r0, #0x34]
    movs r0, #0xf
    ldrb r3, [r1, #1]
    ands r0, r3
    lsls r0, r0, #0xc
    ldrh r1, [r1, #2]
    adds r0, r1, r0
    movs r1, #0x80
    lsls r1, r1, #4
    adds r0, r0, r1
    strh r0, [r2, #0x22]
    bx lr
    func_end func_080476C8

    thumb_func_start func_080476E4
func_080476E4: @ 0x080476E4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x3f
    movs r5, #0
    movs r0, #7
    strb r0, [r1]
    ldr r0, .L0804775C @ =0x08C9D044
    adds r1, r4, #0
    bl Proc_Start
    str r4, [r0, #0x54]
    adds r0, #0x64
    movs r3, #0
    movs r1, #0x20
    strh r1, [r0]
    ldr r1, .L08047760 @ =gDispIo
    mov ip, r1
    mov r2, ip
    adds r2, #0x3c
    movs r1, #0x3f
    ldrb r6, [r2]
    ands r1, r6
    strb r1, [r2]
    ldrh r0, [r0]
    lsrs r1, r0, #1
    mov r0, ip
    adds r0, #0x44
    strb r1, [r0]
    mov r1, ip
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x46
    strb r3, [r0]
    ldr r0, [r4, #0x30]
    strh r5, [r0, #0x18]
    ldr r0, [r4, #0x30]
    strh r5, [r0, #0x1a]
    adds r0, r4, #0
    movs r1, #0
    bl func_08047670
    ldr r1, [r4, #0x30]
    movs r0, #0xd
    strh r0, [r1, #0x1e]
    ldr r0, .L08047764 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08047754
    movs r0, #0xd6
    bl m4aSongNumStart
.L08047754:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804775C: .4byte 0x08C9D044
.L08047760: .4byte gDispIo
.L08047764: .4byte gPlaySt
    func_end func_080476E4

    thumb_func_start func_08047768
func_08047768: @ 0x08047768
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r1, [r5, #0x30]
    ldr r0, [r5, #0x34]
    ldrh r0, [r0, #2]
    movs r2, #0xd0
    lsls r2, r2, #7
    adds r0, r0, r2
    strh r0, [r1, #0x22]
    ldr r0, [r5, #0x34]
    ldrb r0, [r0, #1]
    adds r0, #0x10
    lsls r0, r0, #5
    ldr r1, .L080477AC @ =gPal
    adds r0, r0, r1
    movs r1, #0xb0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L080477B0 @ =0x08B9A250
    lsls r4, r4, #2
    adds r4, r4, r0
    ldr r0, [r4]
    movs r1, #0x16
    movs r2, #8
    adds r3, r5, #0
    bl StartPalFade
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080477AC: .4byte gPal
.L080477B0: .4byte 0x08B9A250
    func_end func_08047768

    thumb_func_start func_080477B4
func_080477B4: @ 0x080477B4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    ldrb r0, [r0, #1]
    adds r0, #0x10
    lsls r0, r0, #5
    ldr r1, .L080477E0 @ =gPal
    adds r0, r0, r1
    movs r1, #0x16
    movs r2, #8
    adds r3, r4, #0
    bl StartPalFade
    ldr r0, .L080477E4 @ =0x08C9D0BC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x54]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080477E0: .4byte gPal
.L080477E4: .4byte 0x08C9D0BC
    func_end func_080477B4

    thumb_func_start func_080477E8
func_080477E8: @ 0x080477E8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08047828 @ =0x083F4C08
    ldr r1, .L0804782C @ =0x06004400
    bl Decompress
    ldr r0, .L08047830 @ =0x083F4E68
    movs r1, #0x60
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r1, r4, #0
    adds r1, #0x40
    movs r0, #0
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08047820
    ldr r2, [r4, #0x34]
    lsls r2, r2, #3
    movs r0, #0x7f
    movs r1, #2
    bl func_0806C25C
.L08047820:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08047828: .4byte 0x083F4C08
.L0804782C: .4byte 0x06004400
.L08047830: .4byte 0x083F4E68
    func_end func_080477E8

    thumb_func_start func_08047834
func_08047834: @ 0x08047834
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r7, r0, #0
    ldr r0, .L080478E8 @ =gBg2Tm
    ldr r1, [r7, #0x34]
    subs r1, #1
    ldr r2, [r7, #0x38]
    subs r2, #3
    ldr r3, .L080478EC @ =0x00003220
    movs r4, #4
    str r4, [sp]
    movs r4, #6
    str r4, [sp, #4]
    ldr r4, .L080478F0 @ =0x083F4E88
    str r4, [sp, #8]
    ldr r6, .L080478F4 @ =0x08B9A280
    adds r5, r7, #0
    adds r5, #0x40
    ldrb r4, [r5]
    adds r4, r4, r6
    ldrb r4, [r4]
    str r4, [sp, #0xc]
    bl func_080148FC
    movs r0, #4
    bl EnableBgSync
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    adds r6, r0, r6
    ldrb r0, [r6]
    cmp r0, #0xff
    bne .L0804787E
    adds r0, r7, #0
    bl Proc_Break
.L0804787E:
    ldr r3, .L080478F8 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r4, [r3, #0x10]
    ands r0, r4
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    adds r2, r3, #0
    adds r2, #0x3c
    ldr r0, .L080478FC @ =0x0000FFE0
    ldrh r4, [r3, #0x3c]
    ands r0, r4
    movs r1, #4
    orrs r0, r1
    ldr r1, .L08047900 @ =0x0000E0FF
    ands r0, r1
    movs r4, #0xd8
    lsls r4, r4, #5
    adds r1, r4, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0xc
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r1, r3, #0
    adds r1, #0x46
    movs r0, #0
    strb r0, [r1]
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080478E8: .4byte gBg2Tm
.L080478EC: .4byte 0x00003220
.L080478F0: .4byte 0x083F4E88
.L080478F4: .4byte 0x08B9A280
.L080478F8: .4byte gDispIo
.L080478FC: .4byte 0x0000FFE0
.L08047900: .4byte 0x0000E0FF
    func_end func_08047834

    thumb_func_start func_08047904
func_08047904: @ 0x08047904
    push {lr}
    ldr r0, .L08047938 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    ldr r3, .L0804793C @ =gDispIo
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
    pop {r0}
    bx r0
    .align 2, 0
.L08047938: .4byte gBg2Tm
.L0804793C: .4byte gDispIo
    func_end func_08047904

    thumb_func_start func_08047940
func_08047940: @ 0x08047940
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804796C @ =0x08B9A298
    movs r1, #2
    bl Proc_Start
    ldr r2, [r4, #0x2c]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    lsls r1, r1, #1
    str r1, [r0, #0x34]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    lsls r1, r1, #1
    str r1, [r0, #0x38]
    adds r4, #0x41
    ldrb r1, [r4]
    adds r0, #0x41
    strb r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804796C: .4byte 0x08B9A298
    func_end func_08047940

    thumb_func_start func_08047970
func_08047970: @ 0x08047970
    push {lr}
    ldr r0, [r0, #0x30]
    movs r1, #0
    bl func_08047768
    pop {r0}
    bx r0
    func_end func_08047970

    thumb_func_start func_08047980
func_08047980: @ 0x08047980
    push {lr}
    ldr r0, [r0, #0x30]
    bl func_0806DAB4
    pop {r0}
    bx r0
    func_end func_08047980

    thumb_func_start func_0804798C
func_0804798C: @ 0x0804798C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x30]
    ldr r1, [r4, #0x34]
    lsls r1, r1, #4
    ldr r2, [r4, #0x38]
    lsls r2, r2, #4
    bl func_0806DAFC
    ldr r1, [r4, #0x2c]
    ldr r0, [r4, #0x34]
    strb r0, [r1, #0x10]
    ldr r1, [r4, #0x2c]
    ldr r0, [r4, #0x38]
    strb r0, [r1, #0x11]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804798C

    thumb_func_start func_080479B0
func_080479B0: @ 0x080479B0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x3c]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L080479C4
    ldr r0, [r4, #0x30]
    bl func_0806BF4C
.L080479C4:
    ldr r0, [r4, #0x30]
    bl func_0806DADC
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080479B0

    thumb_func_start func_080479D0
func_080479D0: @ 0x080479D0
    push {lr}
    ldr r0, [r0, #0x30]
    bl func_080477B4
    pop {r0}
    bx r0
    func_end func_080479D0

    thumb_func_start func_080479DC
func_080479DC: @ 0x080479DC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080479FC @ =0x08B9A298
    bl Proc_Find
    rsbs r1, r0, #0
    orrs r1, r0
    cmp r1, #0
    blt .L080479F4
    adds r0, r4, #0
    bl Proc_Break
.L080479F4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080479FC: .4byte 0x08B9A298
    func_end func_080479DC

    thumb_func_start func_08047A00
func_08047A00: @ 0x08047A00
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    mov r8, r3
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x20]
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r1, #0
    beq .L08047A28
    ldr r0, .L08047A24 @ =0x08B9A2C8
    bl Proc_StartBlocking
    b .L08047A30
    .align 2, 0
.L08047A24: .4byte 0x08B9A2C8
.L08047A28:
    ldr r0, .L08047A54 @ =0x08B9A2C8
    movs r1, #2
    bl Proc_Start
.L08047A30:
    adds r1, r0, #0
    str r5, [r1, #0x2c]
    str r6, [r1, #0x30]
    str r7, [r1, #0x34]
    mov r0, r8
    str r0, [r1, #0x38]
    ldr r0, [sp, #0x18]
    str r0, [r1, #0x3c]
    adds r0, r1, #0
    adds r0, #0x41
    strb r4, [r0]
    adds r0, r1, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08047A54: .4byte 0x08B9A2C8
    func_end func_08047A00

    thumb_func_start func_08047A58
func_08047A58: @ 0x08047A58
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    mov r8, r3
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x20]
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r1, #0
    beq .L08047A80
    ldr r0, .L08047A7C @ =0x08B9A340
    bl Proc_StartBlocking
    b .L08047A88
    .align 2, 0
.L08047A7C: .4byte 0x08B9A340
.L08047A80:
    ldr r0, .L08047AAC @ =0x08B9A340
    movs r1, #2
    bl Proc_Start
.L08047A88:
    adds r1, r0, #0
    str r5, [r1, #0x2c]
    str r6, [r1, #0x30]
    str r7, [r1, #0x34]
    mov r0, r8
    str r0, [r1, #0x38]
    ldr r0, [sp, #0x18]
    str r0, [r1, #0x3c]
    adds r0, r1, #0
    adds r0, #0x41
    strb r4, [r0]
    adds r0, r1, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08047AAC: .4byte 0x08B9A340
    func_end func_08047A58

    thumb_func_start func_08047AB0
func_08047AB0: @ 0x08047AB0
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r2, r1, #0
    ldr r3, .L08047AD0 @ =0x081D5508
    movs r0, #0
    str r0, [sp]
    movs r0, #4
    adds r1, r4, #0
    bl PutSprite
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08047AD0: .4byte 0x081D5508
    func_end func_08047AB0

    thumb_func_start func_08047AD4
func_08047AD4: @ 0x08047AD4
    push {lr}
    ldr r2, [r0, #0x2c]
    ldr r1, [r0, #0x30]
    adds r0, r2, #0
    bl func_08047AB0
    pop {r0}
    bx r0
    func_end func_08047AD4

    thumb_func_start func_08047AE4
func_08047AE4: @ 0x08047AE4
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    ldr r4, .L08047B10 @ =0x08B9A380
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r5, #0
    bl Proc_Start
    str r6, [r0, #0x2c]
    mov r1, r8
    str r1, [r0, #0x30]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08047B10: .4byte 0x08B9A380
    func_end func_08047AE4

    thumb_func_start func_08047B14
func_08047B14: @ 0x08047B14
    push {r4, lr}
    ldr r4, .L08047B30 @ =0x08B9A380
    adds r0, r4, #0
    bl Proc_Find
    cmp r0, #0
    beq .L08047B28
    adds r0, r4, #0
    bl Proc_EndEach
.L08047B28:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08047B30: .4byte 0x08B9A380
    func_end func_08047B14

    thumb_func_start func_08047B34
func_08047B34: @ 0x08047B34
    push {r4, lr}
    sub sp, #0x18
    ldr r1, .L08047BB8 @ =0x081D5516
    mov r0, sp
    movs r2, #0x18
    bl memcpy
    mov r0, sp
    bl InitBgs
    ldr r3, .L08047BBC @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    bl ApplySystemGraphics
    ldr r0, .L08047BC0 @ =0x081C7F84
    movs r1, #0xc0
    lsls r1, r1, #2
    movs r2, #0x40
    bl ApplyPaletteExt
    ldr r4, .L08047BC4 @ =0x081CBD4C
    movs r0, #3
    bl GetBgChrOffset
    adds r1, r0, #0
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r1, r1, r2
    adds r0, r4, #0
    bl Decompress
    ldr r0, .L08047BC8 @ =0x081CDEFC
    ldr r1, .L08047BCC @ =gBg3Tm
    bl Decompress
    ldr r0, .L08047BD0 @ =0x081CE21C
    movs r1, #0xe0
    lsls r1, r1, #1
    movs r2, #0x40
    bl ApplyPaletteExt
    add sp, #0x18
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08047BB8: .4byte 0x081D5516
.L08047BBC: .4byte gDispIo
.L08047BC0: .4byte 0x081C7F84
.L08047BC4: .4byte 0x081CBD4C
.L08047BC8: .4byte 0x081CDEFC
.L08047BCC: .4byte gBg3Tm
.L08047BD0: .4byte 0x081CE21C
    func_end func_08047B34

    thumb_func_start func_08047BD4
func_08047BD4: @ 0x08047BD4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r4, .L08047C30 @ =gBg3Tm
    ldr r0, .L08047C34 @ =0x08CC1C5C
    bl Proc_EndEach
    movs r0, #0x14
    subs r0, r0, r5
    lsls r0, r0, #5
    cmp r0, #0
    ble .L08047C02
    movs r1, #0xe0
    lsls r1, r1, #8
    adds r2, r1, #0
    adds r1, r0, #0
.L08047BF4:
    ldrh r3, [r4]
    adds r0, r2, r3
    strh r0, [r4]
    adds r4, #2
    subs r1, #1
    cmp r1, #0
    bne .L08047BF4
.L08047C02:
    lsls r0, r5, #5
    ldr r3, .L08047C34 @ =0x08CC1C5C
    cmp r0, #0
    ble .L08047C20
    movs r5, #0xf0
    lsls r5, r5, #8
    adds r2, r5, #0
    adds r1, r0, #0
.L08047C12:
    ldrh r5, [r4]
    adds r0, r2, r5
    strh r0, [r4]
    adds r4, #2
    subs r1, #1
    cmp r1, #0
    bne .L08047C12
.L08047C20:
    adds r0, r3, #0
    adds r1, r6, #0
    bl Proc_Start
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08047C30: .4byte gBg3Tm
.L08047C34: .4byte 0x08CC1C5C
    func_end func_08047BD4

    thumb_func_start func_08047C38
func_08047C38: @ 0x08047C38
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x28
    mov r8, r0
    ldr r1, .L08047C98 @ =0x081D552E
    mov r0, sp
    movs r2, #0x28
    bl memcpy
    ldr r4, .L08047C9C @ =gBg3Tm
    ldr r0, .L08047CA0 @ =0x08CC1C5C
    bl Proc_EndEach
    movs r3, #0
    movs r6, #0xf
    ldr r5, .L08047CA4 @ =0x0000027F
.L08047C5A:
    adds r2, r4, #0
    adds r0, r3, #0
    adds r4, r2, #2
    cmp r3, #0
    bge .L08047C66
    adds r0, #0x1f
.L08047C66:
    asrs r0, r0, #5
    lsls r0, r0, #1
    mov r7, sp
    adds r1, r7, r0
    adds r0, r6, #0
    ldrh r1, [r1]
    ands r0, r1
    lsls r0, r0, #0xc
    ldrh r1, [r2]
    adds r0, r1, r0
    strh r0, [r2]
    adds r3, #1
    cmp r3, r5
    ble .L08047C5A
    ldr r0, .L08047CA0 @ =0x08CC1C5C
    mov r1, r8
    bl Proc_Start
    add sp, #0x28
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08047C98: .4byte 0x081D552E
.L08047C9C: .4byte gBg3Tm
.L08047CA0: .4byte 0x08CC1C5C
.L08047CA4: .4byte 0x0000027F
    func_end func_08047C38

    thumb_func_start func_08047CA8
func_08047CA8: @ 0x08047CA8
    push {lr}
    ldr r0, .L08047CB4 @ =0x08CC1C5C
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08047CB4: .4byte 0x08CC1C5C
    func_end func_08047CA8

    thumb_func_start func_08047CB8
func_08047CB8: @ 0x08047CB8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    adds r5, r1, #0
    lsls r2, r2, #5
    mov r8, r2
    cmp r3, #0
    ble .L08047CEE
    movs r7, #0x80
    lsls r7, r7, #3
    adds r4, r3, #0
.L08047CD0:
    mov r2, r8
    cmp r2, #0
    bge .L08047CD8
    adds r2, #3
.L08047CD8:
    lsls r2, r2, #9
    lsrs r2, r2, #0xb
    adds r0, r6, #0
    adds r1, r5, #0
    bl CpuFastSet
    adds r6, r6, r7
    adds r5, r5, r7
    subs r4, #1
    cmp r4, #0
    bne .L08047CD0
.L08047CEE:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08047CB8

    thumb_func_start func_08047CF8
func_08047CF8: @ 0x08047CF8
    push {r4, r5, r6, lr}
    ldr r0, [r0, #0x58]
    movs r6, #3
    ands r6, r0
    cmp r0, #0
    bge .L08047D06
    adds r0, #3
.L08047D06:
    asrs r4, r0, #2
    ldr r0, .L08047D44 @ =0x081CBAF0
    ldr r1, .L08047D48 @ =0x06000800
    bl Decompress
    ldr r0, .L08047D4C @ =0x081C4A68
    ldr r5, .L08047D50 @ =gBuf
    adds r1, r5, #0
    bl Decompress
    lsls r0, r6, #8
    lsls r4, r4, #0xb
    adds r0, r0, r4
    adds r0, r0, r5
    ldr r1, .L08047D54 @ =0x06014000
    movs r2, #8
    movs r3, #2
    bl func_08047CB8
    ldr r0, .L08047D58 @ =gBg2Tm
    ldr r1, .L08047D5C @ =0x081CBCD0
    movs r2, #0x82
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    movs r0, #4
    bl EnableBgSync
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08047D44: .4byte 0x081CBAF0
.L08047D48: .4byte 0x06000800
.L08047D4C: .4byte 0x081C4A68
.L08047D50: .4byte gBuf
.L08047D54: .4byte 0x06014000
.L08047D58: .4byte gBg2Tm
.L08047D5C: .4byte 0x081CBCD0
    func_end func_08047CF8

    thumb_func_start func_08047D60
func_08047D60: @ 0x08047D60
    push {lr}
    sub sp, #4
    ldr r3, .L08047D7C @ =0x08B9A398
    movs r0, #0
    str r0, [sp]
    movs r0, #4
    movs r1, #0x28
    movs r2, #8
    bl PutSpriteExt
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L08047D7C: .4byte 0x08B9A398
    func_end func_08047D60

    thumb_func_start func_08047D80
func_08047D80: @ 0x08047D80
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r4, .L08047DA0 @ =0x08B9A3A8
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r5, #0
    bl Proc_Start
    str r6, [r0, #0x58]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08047DA0: .4byte 0x08B9A3A8
    func_end func_08047D80

    thumb_func_start func_08047DA4
func_08047DA4: @ 0x08047DA4
    push {lr}
    ldr r0, .L08047DB0 @ =0x08B9A3A8
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08047DB0: .4byte 0x08B9A3A8
    func_end func_08047DA4

    thumb_func_start func_08047DB4
func_08047DB4: @ 0x08047DB4
    ldr r3, .L08047DF4 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    movs r2, #0
    movs r0, #8
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xf
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r2, [r0]
    ldr r0, .L08047DF8 @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    ldr r1, .L08047DFC @ =0x0000E0FF
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    bx lr
    .align 2, 0
.L08047DF4: .4byte gDispIo
.L08047DF8: .4byte 0x0000FFE0
.L08047DFC: .4byte 0x0000E0FF
    func_end func_08047DB4

    thumb_func_start func_08047E00
func_08047E00: @ 0x08047E00
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, .L08047E7C @ =0x00007E08
    mov sb, r0
    ldr r2, [r5, #0x2c]
    ldr r0, [r5, #0x34]
    adds r2, r2, r0
    asrs r2, r2, #1
    ldr r0, [r5, #0x30]
    ldr r1, [r5, #0x38]
    adds r0, r0, r1
    asrs r0, r0, #1
    mov r8, r0
    str r2, [r5, #0x34]
    str r0, [r5, #0x38]
    movs r7, #0
    adds r6, r2, #0
.L08047E2A:
    ldr r4, [r5, #0x40]
    adds r0, r4, #0
    cmp r4, #0
    bge .L08047E34
    adds r0, r4, #7
.L08047E34:
    asrs r0, r0, #3
    adds r0, r0, r7
    ldr r1, [r5, #0x3c]
    bl __modsi3
    movs r1, #7
    ands r4, r1
    subs r1, r6, r4
    add r0, sb
    str r0, [sp]
    movs r0, #0xc
    mov r2, r8
    ldr r3, .L08047E80 @ =0x08B9A3C8
    bl PutSprite
    adds r6, #8
    adds r7, #1
    cmp r7, #0x1f
    ble .L08047E2A
    ldr r1, [r5, #0x40]
    adds r1, #1
    str r1, [r5, #0x40]
    ldr r0, [r5, #0x3c]
    lsls r0, r0, #3
    cmp r1, r0
    bne .L08047E6C
    movs r0, #0
    str r0, [r5, #0x40]
.L08047E6C:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08047E7C: .4byte 0x00007E08
.L08047E80: .4byte 0x08B9A3C8
    func_end func_08047E00

    thumb_func_start func_08047E84
func_08047E84: @ 0x08047E84
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    adds r6, r1, #0
    mov r8, r2
    mov sb, r3
    ldr r0, .L08047F08 @ =0x081C4878
    ldr r1, .L08047F0C @ =gBuf
    bl Decompress
    movs r4, #0
    cmp r4, r6
    bge .L08047EC8
    ldr r5, .L08047F10 @ =0x06014100
.L08047EA4:
    adds r0, r4, #0
    adds r1, r6, #0
    bl __modsi3
    adds r0, r7, r0
    ldrb r0, [r0]
    lsls r0, r0, #5
    ldr r1, .L08047F0C @ =gBuf
    adds r0, r0, r1
    adds r1, r5, #0
    movs r2, #1
    movs r3, #2
    bl func_08047CB8
    adds r5, #0x20
    adds r4, #1
    cmp r4, r6
    blt .L08047EA4
.L08047EC8:
    ldr r0, [sp, #0x1c]
    lsls r0, r0, #5
    ldr r1, .L08047F14 @ =0x081C8004
    adds r0, r0, r1
    movs r1, #0xb8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r4, .L08047F18 @ =0x08B9A3D0
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    ldr r1, [sp, #0x20]
    bl Proc_Start
    mov r1, r8
    str r1, [r0, #0x2c]
    str r1, [r0, #0x34]
    mov r1, sb
    str r1, [r0, #0x30]
    str r1, [r0, #0x38]
    str r6, [r0, #0x3c]
    movs r1, #0
    str r1, [r0, #0x40]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08047F08: .4byte 0x081C4878
.L08047F0C: .4byte gBuf
.L08047F10: .4byte 0x06014100
.L08047F14: .4byte 0x081C8004
.L08047F18: .4byte 0x08B9A3D0
    func_end func_08047E84

    thumb_func_start func_08047F1C
func_08047F1C: @ 0x08047F1C
    push {lr}
    ldr r2, .L08047F48 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    ldr r0, .L08047F4C @ =0x08B9A3D0
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08047F48: .4byte gDispIo
.L08047F4C: .4byte 0x08B9A3D0
    func_end func_08047F1C

    thumb_func_start func_08047F50
func_08047F50: @ 0x08047F50
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08047F68 @ =0x08B9A3D0
    bl Proc_Find
    str r4, [r0, #0x2c]
    str r5, [r0, #0x30]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08047F68: .4byte 0x08B9A3D0
    func_end func_08047F50

    thumb_func_start func_08047F6C
func_08047F6C: @ 0x08047F6C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08047F88 @ =0x08B9A3D0
    bl Proc_Find
    str r4, [r0, #0x34]
    str r4, [r0, #0x2c]
    str r5, [r0, #0x38]
    str r5, [r0, #0x30]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08047F88: .4byte 0x08B9A3D0
    func_end func_08047F6C

    thumb_func_start func_08047F8C
func_08047F8C: @ 0x08047F8C
    push {lr}
    lsls r0, r0, #5
    ldr r1, .L08047FA4 @ =0x081C8004
    adds r0, r0, r1
    movs r1, #0xb8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r0}
    bx r0
    .align 2, 0
.L08047FA4: .4byte 0x081C8004
    func_end func_08047F8C

    thumb_func_start func_08047FA8
func_08047FA8: @ 0x08047FA8
    push {r4, lr}
    sub sp, #0x20
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    ldr r1, .L08047FEC @ =0x081D55DE
    mov r0, sp
    movs r2, #0x20
    bl memcpy
    ldr r0, .L08047FF0 @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08047FE4
    mov r1, sp
    adds r0, r1, r4
    ldrb r2, [r0]
    adds r2, #0x10
    ldr r3, .L08047FF4 @ =gPal
    lsls r0, r2, #0xa
    lsls r1, r2, #5
    adds r0, r0, r1
    adds r0, r0, r2
    movs r1, #0x9f
    lsls r1, r1, #2
    adds r3, r3, r1
    strh r0, [r3]
    bl EnablePalSync
.L08047FE4:
    add sp, #0x20
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08047FEC: .4byte 0x081D55DE
.L08047FF0: .4byte 0x0203DCE8
.L08047FF4: .4byte gPal
    func_end func_08047FA8

    thumb_func_start func_08047FF8
func_08047FF8: @ 0x08047FF8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r0, .L0804813C @ =0x000082DA
    mov r8, r0
    movs r2, #0x2a
    ldrsh r1, [r7, r2]
    movs r3, #0x2c
    ldrsh r2, [r7, r3]
    ldr r3, .L08048140 @ =0x08B9A3F0
    adds r0, r7, #0
    adds r0, #0x2f
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r3, [r0]
    ldr r4, .L08048144 @ =0x081D559C
    adds r5, r7, #0
    adds r5, #0x2e
    ldrb r6, [r5]
    lsls r0, r6, #1
    adds r0, r0, r4
    ldrh r0, [r0]
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    ldrb r5, [r5]
    cmp r5, #2
    bne .L08048042
    adds r0, r7, #0
    adds r0, #0x30
    ldrb r0, [r0]
    bl func_08047FA8
.L08048042:
    adds r2, r7, #0
    adds r2, #0x30
    ldrb r0, [r2]
    adds r0, #1
    movs r1, #0x1f
    ands r0, r1
    strb r0, [r2]
    movs r0, #0x81
    lsls r0, r0, #1
    ldrh r1, [r7, #0x2e]
    cmp r1, r0
    bne .L0804812E
    ldrh r1, [r7, #0x3a]
    ldrh r2, [r7, #0x36]
    adds r0, r1, r2
    strh r0, [r7, #0x36]
    ldrh r2, [r7, #0x3c]
    ldrh r3, [r7, #0x38]
    adds r0, r2, r3
    strh r0, [r7, #0x38]
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    ble .L08048076
    subs r0, r1, #1
    strh r0, [r7, #0x3a]
.L08048076:
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    ble .L08048082
    subs r0, r2, #1
    strh r0, [r7, #0x3c]
.L08048082:
    bl GetGameTime
    movs r1, #3
    ands r1, r0
    cmp r1, #0
    bne .L080480AA
    ldrh r1, [r7, #0x32]
    movs r6, #0x32
    ldrsh r0, [r7, r6]
    cmp r0, #0
    bge .L0804809C
    adds r0, r1, #1
    strh r0, [r7, #0x32]
.L0804809C:
    ldrh r1, [r7, #0x34]
    movs r2, #0x34
    ldrsh r0, [r7, r2]
    cmp r0, #0x34
    ble .L080480AA
    subs r0, r1, #1
    strh r0, [r7, #0x34]
.L080480AA:
    movs r3, #0x2a
    ldrsh r5, [r7, r3]
    movs r6, #0x32
    ldrsh r0, [r7, r6]
    adds r0, #0x46
    adds r5, r5, r0
    movs r0, #0x2c
    ldrsh r4, [r7, r0]
    adds r4, #8
    ldr r6, .L08048148 @ =0x08B905D0
    ldrh r1, [r7, #0x36]
    lsrs r0, r1, #5
    movs r1, #6
    bl __umodsi3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    add r0, r8
    str r0, [sp]
    movs r0, #0
    adds r1, r5, #0
    adds r2, r4, #0
    adds r3, r6, #0
    bl PutSprite
    movs r2, #0x2a
    ldrsh r5, [r7, r2]
    movs r3, #0x34
    ldrsh r0, [r7, r3]
    adds r0, #0x46
    adds r5, r5, r0
    movs r6, #0x2c
    ldrsh r4, [r7, r6]
    adds r4, #8
    ldr r6, .L0804814C @ =0x08B90620
    ldrh r1, [r7, #0x38]
    lsrs r0, r1, #5
    movs r1, #6
    bl __umodsi3
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    add r0, r8
    str r0, [sp]
    movs r0, #0
    adds r1, r5, #0
    adds r2, r4, #0
    adds r3, r6, #0
    bl PutSprite
    movs r2, #0x2a
    ldrsh r1, [r7, r2]
    adds r1, #0x4b
    movs r3, #0x2c
    ldrsh r2, [r7, r3]
    adds r2, #8
    ldr r3, .L08048150 @ =0x08B9A404
    ldr r0, .L08048154 @ =0x0203D90C
    ldrb r0, [r0, #5]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r3, [r0]
    movs r0, #0
    str r0, [sp]
    bl PutSpriteExt
.L0804812E:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804813C: .4byte 0x000082DA
.L08048140: .4byte 0x08B9A3F0
.L08048144: .4byte 0x081D559C
.L08048148: .4byte 0x08B905D0
.L0804814C: .4byte 0x08B90620
.L08048150: .4byte 0x08B9A404
.L08048154: .4byte 0x0203D90C
    func_end func_08047FF8

    thumb_func_start func_08048158
func_08048158: @ 0x08048158
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    mov r8, r0
    adds r4, r1, #0
    adds r5, r2, #0
    adds r2, r3, #0
    ldr r6, [sp, #0x18]
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    lsls r6, r6, #0x18
    lsrs r6, r6, #0x18
    ldr r0, .L080481C4 @ =0x08B9A410
    mov r1, r8
    str r2, [sp]
    bl Proc_Start
    mov r8, r0
    movs r3, #0
    movs r1, #0
    strh r4, [r0, #0x2a]
    strh r5, [r0, #0x2c]
    adds r0, #0x2e
    strb r6, [r0]
    adds r0, #1
    ldr r2, [sp]
    strb r2, [r0]
    mov r0, r8
    strh r1, [r0, #0x32]
    movs r0, #0x34
    mov r2, r8
    strh r0, [r2, #0x34]
    strh r1, [r2, #0x38]
    strh r1, [r2, #0x36]
    movs r0, #4
    strh r0, [r2, #0x3c]
    strh r0, [r2, #0x3a]
    mov r0, r8
    adds r0, #0x3e
    strb r3, [r0]
    subs r0, #0xe
    strb r3, [r0]
    mov r0, r8
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080481C4: .4byte 0x08B9A410
    func_end func_08048158

    thumb_func_start func_080481C8
func_080481C8: @ 0x080481C8
    push {r4, lr}
    ldr r4, [sp, #8]
    strh r1, [r0, #0x32]
    strh r2, [r0, #0x34]
    strh r3, [r0, #0x3a]
    strh r4, [r0, #0x3c]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080481C8

    thumb_func_start func_080481DC
func_080481DC: @ 0x080481DC
    strh r1, [r0, #0x2a]
    strh r2, [r0, #0x2c]
    bx lr
    func_end func_080481DC

    thumb_func_start func_080481E4
func_080481E4: @ 0x080481E4
    push {r4, lr}
    sub sp, #0x20
    ldr r4, .L0804822C @ =0x081C80C4
    ldr r1, .L08048230 @ =0x081D55DE
    mov r0, sp
    movs r2, #0x20
    bl memcpy
    ldr r0, .L08048234 @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08048222
    bl GetGameTime
    movs r1, #0x3f
    ands r1, r0
    asrs r1, r1, #1
    mov r2, sp
    adds r0, r2, r1
    ldr r1, .L08048238 @ =gPal
    ldrb r0, [r0]
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r0, [r0]
    ldr r2, .L0804823C @ =0x0000033E
    adds r1, r1, r2
    strh r0, [r1]
    bl EnablePalSync
.L08048222:
    add sp, #0x20
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804822C: .4byte 0x081C80C4
.L08048230: .4byte 0x081D55DE
.L08048234: .4byte 0x0203DCE8
.L08048238: .4byte gPal
.L0804823C: .4byte 0x0000033E
    func_end func_080481E4

    thumb_func_start func_08048240
func_08048240: @ 0x08048240
    push {r4, lr}
    sub sp, #0x20
    ldr r4, .L08048288 @ =0x081C8124
    ldr r1, .L0804828C @ =0x081D55DE
    mov r0, sp
    movs r2, #0x20
    bl memcpy
    ldr r0, .L08048290 @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08048280
    bl GetGameTime
    movs r1, #0x3f
    ands r1, r0
    asrs r1, r1, #1
    mov r2, sp
    adds r0, r2, r1
    ldr r1, .L08048294 @ =gPal
    ldrb r0, [r0]
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r0, [r0]
    movs r2, #0x9f
    lsls r2, r2, #2
    adds r1, r1, r2
    strh r0, [r1]
    bl EnablePalSync
.L08048280:
    add sp, #0x20
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08048288: .4byte 0x081C8124
.L0804828C: .4byte 0x081D55DE
.L08048290: .4byte 0x0203DCE8
.L08048294: .4byte gPal
    func_end func_08048240

    thumb_func_start func_08048298
func_08048298: @ 0x08048298
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    ldr r0, .L080482D8 @ =0x0203D90C
    ldrb r0, [r0]
    cmp r0, #1
    beq .L080482B0
    b .L08048420
.L080482B0:
    adds r0, r7, #0
    adds r0, #0x44
    movs r1, #0
    ldrsb r1, [r0, r1]
    movs r2, #0xc0
    lsls r2, r2, #4
    mov r8, r2
    str r0, [sp, #4]
    cmp r1, #0
    beq .L080482CA
    movs r0, #0x80
    lsls r0, r0, #3
    mov r8, r0
.L080482CA:
    ldr r3, .L080482DC @ =0x08B9A428
    cmp r1, #0
    beq .L080482E0
    movs r0, #0x80
    lsls r0, r0, #4
    b .L080482E4
    .align 2, 0
.L080482D8: .4byte 0x0203D90C
.L080482DC: .4byte 0x08B9A428
.L080482E0:
    movs r0, #0x80
    lsls r0, r0, #3
.L080482E4:
    str r0, [sp]
    movs r0, #0xb
    movs r1, #0x50
    movs r2, #0x20
    bl PutSprite
    movs r6, #0
    ldr r0, [r7, #0x2c]
    cmp r6, r0
    bge .L08048346
    movs r5, #0x20
.L080482FA:
    lsls r1, r6, #1
    adds r0, r7, #0
    adds r0, #0x30
    adds r4, r0, r1
    movs r2, #0
    ldrsh r1, [r4, r2]
    adds r1, #8
    movs r0, #0xf
    ands r0, r6
    lsls r0, r0, #0xc
    add r0, r8
    str r0, [sp]
    movs r0, #4
    adds r2, r5, #0
    ldr r3, .L08048400 @ =0x081D55FE
    bl PutSprite
    adds r0, r7, #0
    adds r0, #0x3a
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0804833C
    movs r0, #0
    ldrsh r1, [r4, r0]
    adds r1, #8
    mov r2, r8
    str r2, [sp]
    movs r0, #4
    adds r2, r5, #0
    ldr r3, .L08048404 @ =0x081D562C
    bl PutSprite
.L0804833C:
    adds r5, #0x18
    adds r6, #1
    ldr r0, [r7, #0x2c]
    cmp r6, r0
    blt .L080482FA
.L08048346:
    ldr r0, [r7, #0x40]
    cmp r0, #0
    beq .L080483F8
    ldr r0, .L08048408 @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08048376
    bl GetGameTime
    ldr r2, .L0804840C @ =gPal
    movs r1, #0x3f
    ands r1, r0
    lsrs r1, r1, #2
    lsls r1, r1, #1
    ldr r0, .L08048410 @ =0x0840628C
    adds r1, r1, r0
    ldrh r0, [r1]
    ldr r1, .L08048414 @ =0x0000031A
    adds r2, r2, r1
    strh r0, [r2]
    bl EnablePalSync
.L08048376:
    ldr r0, [r7, #0x40]
    cmp r0, #0xff
    bgt .L08048380
    adds r0, #0x10
    str r0, [r7, #0x40]
.L08048380:
    ldr r4, .L08048418 @ =0x080C5A48
    movs r2, #0x80
    adds r2, r2, r4
    mov sb, r2
    movs r1, #0
    ldrsh r0, [r2, r1]
    lsls r0, r0, #4
    movs r2, #0x80
    lsls r2, r2, #1
    mov r8, r2
    mov r1, r8
    bl Div
    adds r6, r0, #0
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    movs r1, #0
    ldrsh r0, [r4, r1]
    rsbs r0, r0, #0
    lsls r0, r0, #4
    ldr r1, [r7, #0x40]
    bl Div
    adds r5, r0, #0
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    movs r2, #0
    ldrsh r0, [r4, r2]
    lsls r0, r0, #4
    mov r1, r8
    bl Div
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    mov r1, sb
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    ldr r1, [r7, #0x40]
    bl Div
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    movs r0, #0
    adds r1, r6, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl SetObjAffine
    ldr r3, .L0804841C @ =0x081D5646
    movs r0, #0x80
    lsls r0, r0, #8
    str r0, [sp]
    movs r0, #4
    movs r1, #0x78
    movs r2, #0
    bl PutSprite
.L080483F8:
    bl func_08048240
    b .L080484AE
    .align 2, 0
.L08048400: .4byte 0x081D55FE
.L08048404: .4byte 0x081D562C
.L08048408: .4byte 0x0203DCE8
.L0804840C: .4byte gPal
.L08048410: .4byte 0x0840628C
.L08048414: .4byte 0x0000031A
.L08048418: .4byte gSinLut
.L0804841C: .4byte 0x081D5646
.L08048420:
    ldr r3, .L08048488 @ =0x08B9A428
    movs r0, #0
    str r0, [sp]
    movs r0, #0xb
    movs r1, #0x50
    movs r2, #0x20
    bl PutSprite
    movs r6, #0
    ldr r0, [r7, #0x2c]
    adds r1, r7, #0
    adds r1, #0x44
    str r1, [sp, #4]
    cmp r6, r0
    bge .L080484AA
    ldr r2, .L0804848C @ =0x08B9A4A0
    mov sl, r2
    movs r0, #8
    rsbs r0, r0, #0
    mov sb, r0
    movs r1, #0x28
    mov r8, r1
.L0804844C:
    lsls r1, r6, #1
    adds r0, r7, #0
    adds r0, #0x30
    adds r5, r0, r1
    movs r2, #0
    ldrsh r1, [r5, r2]
    adds r4, r7, #0
    adds r4, #0x3a
    adds r4, r4, r6
    ldrb r2, [r4]
    lsls r0, r2, #2
    add r0, sl
    ldr r3, [r0]
    movs r0, #0
    str r0, [sp]
    movs r0, #2
    mov r2, r8
    bl PutSprite
    ldrb r0, [r4]
    cmp r0, #0
    beq .L08048490
    ldrh r1, [r5]
    movs r2, #0
    ldrsh r0, [r5, r2]
    cmp r0, #0
    bge .L0804849E
    adds r0, r1, #1
    b .L0804849C
    .align 2, 0
.L08048488: .4byte 0x08B9A428
.L0804848C: .4byte 0x08B9A4A0
.L08048490:
    ldrh r1, [r5]
    movs r2, #0
    ldrsh r0, [r5, r2]
    cmp r0, sb
    ble .L0804849E
    subs r0, r1, #1
.L0804849C:
    strh r0, [r5]
.L0804849E:
    movs r0, #0x10
    add r8, r0
    adds r6, #1
    ldr r0, [r7, #0x2c]
    cmp r6, r0
    blt .L0804844C
.L080484AA:
    bl func_080481E4
.L080484AE:
    ldr r0, .L080484FC @ =0x0203D90C
    movs r1, #0x80
    lsls r1, r1, #4
    mov r8, r1
    ldrb r0, [r0]
    cmp r0, #1
    bne .L080484C2
    movs r2, #0x80
    lsls r2, r2, #3
    mov r8, r2
.L080484C2:
    ldr r1, [sp, #4]
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L080484D4
    movs r0, #0xc0
    movs r1, #0x10
    bl func_08047AB0
.L080484D4:
    ldr r0, [r7, #0x48]
    cmp r0, #0
    blt .L080484EC
    adds r2, r0, #0
    adds r2, #8
    ldr r3, .L08048500 @ =0x08B9A466
    mov r0, r8
    str r0, [sp]
    movs r0, #4
    movs r1, #0x50
    bl PutSprite
.L080484EC:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080484FC: .4byte 0x0203D90C
.L08048500: .4byte 0x08B9A466
    func_end func_08048298

    thumb_func_start func_08048504
func_08048504: @ 0x08048504
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    adds r5, r1, #0
    mov r8, r2
    ldr r4, .L080485A4 @ =0x08B9A4A8
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r6, #0
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x2c]
    adds r1, r4, #0
    adds r1, #0x44
    movs r2, #0
    movs r0, #1
    strb r0, [r1]
    str r2, [r4, #0x40]
    subs r0, #2
    str r0, [r4, #0x48]
    movs r3, #0
    adds r5, r4, #0
    adds r5, #0x3a
    ldr r0, .L080485A8 @ =0x0000FFF8
    mov ip, r0
    adds r2, r4, #0
    adds r2, #0x30
.L08048544:
    adds r0, r5, r3
    mov r7, r8
    adds r1, r7, r3
    ldrb r1, [r1]
    strb r1, [r0]
    mov r0, ip
    strh r0, [r2]
    adds r2, #2
    adds r3, #1
    cmp r3, #4
    ble .L08048544
    ldr r2, [r6, #0x38]
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    adds r0, r6, #0
    adds r0, #0x4a
    ldrb r0, [r0]
    adds r0, #0x28
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp]
    str r4, [sp, #4]
    movs r0, #0xe0
    movs r1, #0x28
    movs r3, #6
    bl func_08048BE4
    adds r0, r6, #0
    adds r0, #0x48
    ldrb r0, [r0]
    lsls r0, r0, #4
    movs r1, #0x28
    subs r1, r1, r0
    ldr r0, [r6, #0x38]
    str r0, [sp]
    str r4, [sp, #4]
    movs r0, #0x98
    movs r2, #0x88
    movs r3, #0x27
    bl func_0804862C
    adds r0, r4, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080485A4: .4byte 0x08B9A4A8
.L080485A8: .4byte 0x0000FFF8
    func_end func_08048504

    thumb_func_start func_080485AC
func_080485AC: @ 0x080485AC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0
    mov r8, r0
    b .L08048614
.L080485C0:
    mov r1, r8
    lsls r0, r1, #4
    ldr r1, [r4, #0x30]
    adds r5, r1, r0
    ldr r0, [r4, #0x38]
    movs r1, #1
    add r1, r8
    mov sl, r1
    cmp r5, r0
    bge .L08048612
    ldr r0, [r4, #0x34]
    cmp r5, r0
    ble .L08048612
    movs r6, #0
    mov r0, r8
    lsls r0, r0, #2
    mov sb, r0
    movs r7, #0
.L080485E4:
    mov r0, sb
    add r0, r8
    adds r0, r0, r6
    adds r0, #1
    bl GetUnit
    adds r2, r0, #0
    ldr r0, [r2]
    cmp r0, #0
    beq .L0804860A
    ldr r1, [r4, #0x2c]
    adds r1, r1, r7
    str r2, [sp]
    movs r0, #4
    adds r2, r5, #0
    movs r3, #0x80
    lsls r3, r3, #3
    bl func_080263A0
.L0804860A:
    adds r7, #0xe
    adds r6, #1
    cmp r6, #4
    ble .L080485E4
.L08048612:
    mov r8, sl
.L08048614:
    ldr r0, [r4, #0x3c]
    cmp r8, r0
    blt .L080485C0
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080485AC

    thumb_func_start func_0804862C
func_0804862C: @ 0x0804862C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sb, r0
    mov sl, r1
    adds r7, r2, #0
    mov r8, r3
    ldr r6, [sp, #0x20]
    ldr r5, [sp, #0x24]
    ldr r4, .L08048670 @ =0x08B9A4C0
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r5, #0
    bl Proc_Start
    str r6, [r0, #0x3c]
    mov r1, sb
    str r1, [r0, #0x2c]
    mov r1, sl
    str r1, [r0, #0x30]
    mov r1, r8
    str r1, [r0, #0x34]
    str r7, [r0, #0x38]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08048670: .4byte 0x08B9A4C0
    func_end func_0804862C

    thumb_func_start func_08048674
func_08048674: @ 0x08048674
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804868C @ =0x08B9A4C0
    bl Proc_Find
    ldr r1, [r0, #0x30]
    adds r1, r1, r4
    str r1, [r0, #0x30]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804868C: .4byte 0x08B9A4C0
    func_end func_08048674

    thumb_func_start func_08048690
func_08048690: @ 0x08048690
    push {r4, r5, r6, lr}
    ldr r5, .L080486D4 @ =0x081C8104
    ldr r0, .L080486D8 @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L080486CE
    bl GetGameTime
    adds r2, r0, #0
    movs r0, #0x1f
    ands r2, r0
    asrs r2, r2, #1
    movs r1, #0
    ldr r0, .L080486DC @ =gPal
    movs r4, #0xf
    ldr r6, .L080486E0 @ =0x00000336
    adds r3, r0, r6
.L080486B6:
    adds r0, r2, r1
    ands r0, r4
    lsls r0, r0, #1
    adds r0, r0, r5
    ldrh r0, [r0]
    strh r0, [r3]
    adds r3, #2
    adds r1, #1
    cmp r1, #4
    ble .L080486B6
    bl EnablePalSync
.L080486CE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080486D4: .4byte 0x081C8104
.L080486D8: .4byte 0x0203DCE8
.L080486DC: .4byte gPal
.L080486E0: .4byte 0x00000336
    func_end func_08048690

    thumb_func_start func_080486E4
func_080486E4: @ 0x080486E4
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    ldr r1, [r7, #0x34]
    ldr r0, [r7, #0x2c]
    adds r1, r1, r0
    asrs r1, r1, #1
    ldr r2, [r7, #0x38]
    ldr r0, [r7, #0x30]
    adds r2, r2, r0
    asrs r2, r2, #1
    str r1, [r7, #0x2c]
    str r2, [r7, #0x30]
    ldr r3, .L08048750 @ =0x08B9A4D8
    ldr r0, [r7, #0x3c]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r3, [r0]
    movs r4, #0
    str r4, [sp]
    movs r0, #2
    bl PutSprite
    ldr r1, [r7, #0x40]
    adds r1, #0x60
    ldr r3, .L08048754 @ =0x081D5664
    str r4, [sp]
    movs r0, #2
    movs r2, #0x30
    bl PutSprite
    bl func_0803DA14
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08048760
    ldr r3, .L08048758 @ =0x08B9A428
    str r4, [sp]
    movs r0, #2
    movs r1, #0x60
    movs r2, #0x20
    bl PutSprite
    ldr r3, .L0804875C @ =0x081D55FE
    movs r0, #0x80
    lsls r0, r0, #4
    str r0, [sp]
    movs r0, #4
    movs r1, #0x50
    movs r2, #0x20
    bl PutSprite
    b .L08048780
    .align 2, 0
.L08048750: .4byte 0x08B9A4D8
.L08048754: .4byte 0x081D5664
.L08048758: .4byte 0x08B9A428
.L0804875C: .4byte 0x081D55FE
.L08048760:
    ldr r3, .L080487A8 @ =0x08B9A436
    str r0, [sp]
    movs r0, #2
    movs r1, #0x58
    movs r2, #0x20
    bl PutSprite
    ldr r3, .L080487AC @ =0x081D5618
    movs r0, #0x80
    lsls r0, r0, #4
    str r0, [sp]
    movs r0, #4
    movs r1, #0x50
    movs r2, #0x20
    bl PutSprite
.L08048780:
    movs r4, #3
    ldr r0, .L080487B0 @ =0x08B9A4E0
    adds r6, r0, #0
    adds r6, #0xc
    movs r5, #0x78
.L0804878A:
    ldr r0, [r7, #0x44]
    cmp r0, r4
    bne .L080487B4
    cmp r4, #2
    bgt .L080487B4
    ldr r3, [r6]
    movs r0, #0x80
    lsls r0, r0, #7
    str r0, [sp]
    movs r0, #4
    movs r1, #0xc4
    adds r2, r5, #0
    bl PutSprite
    b .L080487C6
    .align 2, 0
.L080487A8: .4byte 0x08B9A436
.L080487AC: .4byte 0x081D5618
.L080487B0: .4byte 0x08B9A4E0
.L080487B4:
    ldr r3, [r6]
    movs r0, #0x80
    lsls r0, r0, #8
    str r0, [sp]
    movs r0, #4
    movs r1, #0xc4
    adds r2, r5, #0
    bl PutSprite
.L080487C6:
    adds r6, #4
    adds r5, #0x10
    adds r4, #1
    cmp r4, #4
    ble .L0804878A
    bl func_08048690
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080486E4

    thumb_func_start func_080487DC
func_080487DC: @ 0x080487DC
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    adds r5, r1, #0
    mov r8, r2
    ldr r4, .L08048818 @ =0x08B9A4F4
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r6, #0
    bl Proc_Start
    str r5, [r0, #0x34]
    str r5, [r0, #0x2c]
    mov r1, r8
    str r1, [r0, #0x38]
    str r1, [r0, #0x30]
    movs r1, #0
    str r1, [r0, #0x3c]
    str r1, [r0, #0x40]
    movs r1, #1
    str r1, [r0, #0x44]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08048818: .4byte 0x08B9A4F4
    func_end func_080487DC

    thumb_func_start func_0804881C
func_0804881C: @ 0x0804881C
    push {r4, r5, lr}
    ldr r4, [sp, #0xc]
    ldr r5, [sp, #0x10]
    str r1, [r0, #0x34]
    str r2, [r0, #0x38]
    str r4, [r0, #0x3c]
    str r3, [r0, #0x40]
    str r5, [r0, #0x44]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0804881C

    thumb_func_start func_08048834
func_08048834: @ 0x08048834
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    movs r2, #0x2a
    ldrsh r0, [r5, r2]
    adds r1, r1, r0
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r7, r0, #2
    ldrh r0, [r5, #0x2c]
    strh r0, [r5, #0x2a]
    ldr r0, .L080488A4 @ =0x08B9A50C
    mov r8, r0
    movs r6, #0x30
    movs r4, #2
.L0804885A:
    mov r1, r8
    adds r1, #4
    mov r8, r1
    subs r1, #4
    ldm r1!, {r3}
    movs r0, #0
    str r0, [sp]
    movs r0, #2
    movs r1, #0x20
    adds r2, r6, #0
    bl PutSprite
    adds r6, #0x18
    subs r4, #1
    cmp r4, #0
    bge .L0804885A
    adds r1, r7, #0
    adds r1, #0x30
    movs r0, #0x20
    bl DisplayFrozenUiHand
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    movs r2, #0x30
    ldrsh r1, [r5, r2]
    bl PutUiHand
    movs r0, #0xc0
    movs r1, #0x10
    bl func_08047AB0
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080488A4: .4byte 0x08B9A50C
    func_end func_08048834

    thumb_func_start func_080488A8
func_080488A8: @ 0x080488A8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L080488C8 @ =0x08B9A518
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r5, #0
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2a]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080488C8: .4byte 0x08B9A518
    func_end func_080488A8

    thumb_func_start func_080488CC
func_080488CC: @ 0x080488CC
    strh r1, [r0, #0x2c]
    strh r2, [r0, #0x2e]
    strh r3, [r0, #0x30]
    bx lr
    func_end func_080488CC

    thumb_func_start func_080488D4
func_080488D4: @ 0x080488D4
    push {lr}
    adds r1, r0, #0
    ldr r2, .L08048900 @ =0x081C8104
    ldr r0, .L08048904 @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L080488FA
    ldr r0, .L08048908 @ =gPal
    lsls r1, r1, #1
    adds r1, r1, r2
    ldrh r1, [r1]
    movs r2, #0xb7
    lsls r2, r2, #2
    adds r0, r0, r2
    strh r1, [r0]
    bl EnablePalSync
.L080488FA:
    pop {r0}
    bx r0
    .align 2, 0
.L08048900: .4byte 0x081C8104
.L08048904: .4byte 0x0203DCE8
.L08048908: .4byte gPal
    func_end func_080488D4

    thumb_func_start func_0804890C
func_0804890C: @ 0x0804890C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    movs r0, #0x4c
    adds r0, r0, r7
    mov r8, r0
    movs r1, #0
    ldrsh r5, [r0, r1]
    lsls r4, r5, #1
    adds r0, r5, #0
    bl func_080488D4
    ldr r0, .L080489AC @ =0x081D56E4
    adds r4, #1
    lsls r4, r4, #1
    adds r4, r4, r0
    movs r1, #0
    ldrsh r6, [r4, r1]
    ldr r1, [r7, #0x2c]
    subs r1, r1, r6
    lsls r5, r5, #2
    adds r5, r5, r0
    movs r0, #0
    ldrsh r5, [r5, r0]
    ldr r2, [r7, #0x30]
    subs r2, r2, r5
    ldr r3, .L080489B0 @ =0x081D56AC
    movs r4, #0
    str r4, [sp]
    movs r0, #2
    bl PutSprite
    ldr r1, [r7, #0x2c]
    adds r1, r1, r6
    adds r1, #0x10
    ldr r2, [r7, #0x30]
    subs r2, r2, r5
    ldr r3, .L080489B4 @ =0x081D56BA
    str r4, [sp]
    movs r0, #2
    bl PutSprite
    ldr r1, [r7, #0x2c]
    subs r1, r1, r6
    ldr r2, [r7, #0x30]
    adds r2, r2, r5
    ldr r3, .L080489B8 @ =0x081D56C8
    str r4, [sp]
    movs r0, #2
    bl PutSprite
    ldr r1, [r7, #0x2c]
    adds r1, r1, r6
    adds r1, #0x10
    ldr r2, [r7, #0x30]
    adds r2, r2, r5
    ldr r3, .L080489BC @ =0x081D56D6
    str r4, [sp]
    movs r0, #2
    bl PutSprite
    mov r1, r8
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf
    bne .L080489A0
    adds r0, r7, #0
    bl Proc_Break
.L080489A0:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080489AC: .4byte 0x081D56E4
.L080489B0: .4byte 0x081D56AC
.L080489B4: .4byte 0x081D56BA
.L080489B8: .4byte 0x081D56C8
.L080489BC: .4byte 0x081D56D6
    func_end func_0804890C

    thumb_func_start func_080489C0
func_080489C0: @ 0x080489C0
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    ldr r0, .L080489E0 @ =0x08B9A530
    adds r1, r3, #0
    bl Proc_Start
    str r4, [r0, #0x2c]
    str r5, [r0, #0x30]
    adds r0, #0x4c
    movs r1, #0
    strh r1, [r0]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L080489E0: .4byte 0x08B9A530
    func_end func_080489C0

    thumb_func_start func_080489E4
func_080489E4: @ 0x080489E4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r0, #0x45
    movs r1, #0
    strb r1, [r0]
    subs r0, #1
    strb r1, [r0]
    subs r0, #7
    ldr r4, [r6, #0x34]
    ldrb r0, [r0]
    muls r0, r4, r0
    lsls r0, r0, #3
    adds r5, r6, #0
    adds r5, #0x3c
    ldrb r1, [r5]
    bl __divsi3
    str r0, [r6, #0x38]
    lsls r4, r4, #0xb
    ldrb r5, [r5]
    lsls r1, r5, #4
    adds r0, r4, #0
    bl __divsi3
    adds r1, r6, #0
    adds r1, #0x42
    strh r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080489E4

    thumb_func_start func_08048A20
func_08048A20: @ 0x08048A20
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x30
    adds r7, r0, #0
    ldr r0, [r7, #0x2c]
    mov r8, r0
    ldr r1, [r7, #0x30]
    str r1, [sp, #0xc]
    adds r1, #8
    mov sl, r1
    ldr r0, [r7, #0x38]
    asrs r2, r0, #3
    str r2, [sp, #0x10]
    movs r1, #7
    ands r0, r1
    movs r1, #8
    subs r0, r1, r0
    str r0, [sp, #0x14]
    movs r3, #0x3e
    ldrsh r0, [r7, r3]
    adds r1, r7, #0
    adds r1, #0x42
    ldrh r1, [r1]
    muls r0, r1, r0
    asrs r0, r0, #8
    str r0, [sp, #0x18]
    movs r0, #0x3c
    adds r0, r0, r7
    mov ip, r0
    movs r1, #0x3d
    adds r1, r1, r7
    mov sb, r1
    ldrb r2, [r0]
    ldrb r3, [r1]
    cmp r2, r3
    bhi .L08048A70
    b .L08048BC8
.L08048A70:
    adds r5, r7, #0
    adds r5, #0x44
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    adds r4, r7, #0
    adds r4, #0x45
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    adds r0, r7, #0
    adds r0, #0x40
    movs r1, #0x3e
    ldrsh r2, [r7, r1]
    movs r3, #0
    ldrsh r1, [r0, r3]
    adds r3, r5, #0
    str r0, [sp, #0x2c]
    cmp r2, r1
    bge .L08048A9E
    ldrb r0, [r3]
    adds r0, #2
    strb r0, [r3]
.L08048A9E:
    movs r0, #0x3e
    ldrsh r1, [r7, r0]
    ldr r2, [sp, #0x2c]
    movs r3, #0
    ldrsh r0, [r2, r3]
    cmp r1, r0
    ble .L08048AB2
    ldrb r0, [r4]
    adds r0, #2
    strb r0, [r4]
.L08048AB2:
    movs r6, #0
    mov r0, ip
    str r0, [sp, #0x28]
    ldr r1, [sp, #0x18]
    add r1, sl
    str r1, [sp, #0x1c]
    ldr r2, [sp, #0x10]
    lsls r2, r2, #3
    str r2, [sp, #0x24]
    ldr r3, [sp, #0xc]
    str r3, [sp, #0x20]
.L08048AC8:
    ldrb r0, [r5]
    cmp r0, #0x30
    bls .L08048AD2
    movs r0, #0
    strb r0, [r5]
.L08048AD2:
    lsls r4, r6, #2
    add r4, sp
    adds r4, #4
    ldrb r1, [r5]
    lsrs r0, r1, #3
    movs r1, #6
    bl __umodsi3
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [r4]
    adds r5, #1
    adds r6, #1
    cmp r6, #1
    ble .L08048AC8
    movs r2, #0x3e
    ldrsh r0, [r7, r2]
    cmp r0, #0
    beq .L08048B0A
    mov r2, sl
    subs r2, #9
    ldr r3, .L08048BD8 @ =0x08B9A550
    ldr r0, [sp, #4]
    str r0, [sp]
    movs r0, #3
    mov r1, r8
    bl PutSprite
.L08048B0A:
    movs r3, #0x3e
    ldrsh r0, [r7, r3]
    cmp r0, #0
    bge .L08048B14
    adds r0, #0xf
.L08048B14:
    asrs r0, r0, #4
    mov r1, sb
    ldrb r1, [r1]
    adds r0, r1, r0
    ldr r2, [sp, #0x28]
    ldrb r2, [r2]
    cmp r0, r2
    bge .L08048B3A
    ldr r2, [r7, #0x34]
    lsls r2, r2, #3
    add r2, sl
    adds r2, #1
    ldr r3, .L08048BDC @ =0x08B9A548
    ldr r0, [sp, #8]
    str r0, [sp]
    movs r0, #3
    mov r1, r8
    bl PutSprite
.L08048B3A:
    movs r6, #0
    ldr r0, [r7, #0x34]
    cmp r6, r0
    bge .L08048B5E
    mov r4, sl
    movs r5, #1
.L08048B46:
    str r5, [sp]
    movs r0, #2
    mov r1, r8
    adds r2, r4, #0
    ldr r3, .L08048BE0 @ =0x08B9A558
    bl PutSprite
    adds r4, #8
    adds r6, #1
    ldr r0, [r7, #0x34]
    cmp r6, r0
    blt .L08048B46
.L08048B5E:
    ldr r3, [sp, #0x10]
    cmp r3, #0
    ble .L08048B80
    ldr r4, [sp, #0x1c]
    movs r5, #0
    adds r6, r3, #0
.L08048B6A:
    str r5, [sp]
    movs r0, #2
    mov r1, r8
    adds r2, r4, #0
    ldr r3, .L08048BE0 @ =0x08B9A558
    bl PutSprite
    adds r4, #8
    subs r6, #1
    cmp r6, #0
    bne .L08048B6A
.L08048B80:
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x24]
    adds r2, r0, r1
    ldr r3, [sp, #0x14]
    subs r2, r2, r3
    ldr r4, .L08048BE0 @ =0x08B9A558
    movs r0, #0
    str r0, [sp]
    movs r0, #2
    mov r1, r8
    adds r3, r4, #0
    bl PutSprite
    movs r5, #2
    str r5, [sp]
    movs r0, #2
    mov r1, r8
    ldr r2, [sp, #0x20]
    adds r3, r4, #0
    bl PutSprite
    movs r1, #0x80
    lsls r1, r1, #6
    add r1, r8
    ldr r2, [r7, #0x34]
    lsls r2, r2, #3
    add r2, sl
    subs r2, #7
    str r5, [sp]
    movs r0, #2
    adds r3, r4, #0
    bl PutSprite
    ldrh r0, [r7, #0x3e]
    ldr r1, [sp, #0x2c]
    strh r0, [r1]
.L08048BC8:
    add sp, #0x30
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08048BD8: .4byte 0x08B9A550
.L08048BDC: .4byte 0x08B9A548
.L08048BE0: .4byte 0x08B9A558
    func_end func_08048A20

    thumb_func_start func_08048BE4
func_08048BE4: @ 0x08048BE4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sb, r0
    mov sl, r1
    mov r8, r2
    adds r5, r3, #0
    ldr r6, [sp, #0x20]
    ldr r7, [sp, #0x24]
    mov r0, r8
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov r8, r0
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    lsls r6, r6, #0x18
    lsrs r6, r6, #0x18
    ldr r4, .L08048C4C @ =0x08B9A560
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r7, #0
    bl Proc_Start
    adds r1, r0, #0
    mov r2, sb
    str r2, [r1, #0x2c]
    mov r0, sl
    str r0, [r1, #0x30]
    lsls r0, r5, #1
    subs r0, #2
    str r0, [r1, #0x34]
    adds r0, r1, #0
    adds r0, #0x3c
    mov r2, r8
    strb r2, [r0]
    adds r0, #1
    strb r5, [r0]
    strh r6, [r1, #0x3e]
    adds r0, #3
    strh r6, [r0]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08048C4C: .4byte 0x08B9A560
    func_end func_08048BE4

    thumb_func_start func_08048C50
func_08048C50: @ 0x08048C50
    push {r4, r5, r6, r7, lr}
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    lsls r1, r1, #0x10
    lsrs r4, r1, #0x10
    ldr r0, .L08048CA4 @ =0x08B9A560
    bl Proc_Find
    adds r6, r0, #0
    cmp r6, #0
    beq .L08048C9C
    adds r5, r6, #0
    adds r5, #0x3c
    strb r7, [r5]
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    movs r1, #0xff
    ands r0, r1
    strh r0, [r6, #0x3e]
    adds r0, r6, #0
    adds r0, #0x3d
    ldr r4, [r6, #0x34]
    ldrb r0, [r0]
    muls r0, r4, r0
    lsls r0, r0, #3
    ldrb r1, [r5]
    bl __divsi3
    str r0, [r6, #0x38]
    lsls r4, r4, #0xb
    ldrb r5, [r5]
    lsls r1, r5, #4
    adds r0, r4, #0
    bl __divsi3
    adds r1, r6, #0
    adds r1, #0x42
    strh r0, [r1]
.L08048C9C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08048CA4: .4byte 0x08B9A560
    func_end func_08048C50

    thumb_func_start func_08048CA8
func_08048CA8: @ 0x08048CA8
    push {lr}
    ldr r0, .L08048CC4 @ =0x081C9D88
    ldr r1, .L08048CC8 @ =0x06002000
    bl Decompress
    ldr r0, .L08048CCC @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #1
    beq .L08048CF4
    cmp r0, #1
    bgt .L08048CD0
    cmp r0, #0
    beq .L08048CDA
    b .L08048D3E
    .align 2, 0
.L08048CC4: .4byte 0x081C9D88
.L08048CC8: .4byte 0x06002000
.L08048CCC: .4byte gPlaySt
.L08048CD0:
    cmp r0, #2
    beq .L08048D0C
    cmp r0, #3
    beq .L08048D2C
    b .L08048D3E
.L08048CDA:
    ldr r0, .L08048CE8 @ =0x081C8AB4
    ldr r1, .L08048CEC @ =0x06002800
    bl Decompress
    ldr r0, .L08048CF0 @ =0x081C9EE8
    b .L08048D16
    .align 2, 0
.L08048CE8: .4byte 0x081C8AB4
.L08048CEC: .4byte 0x06002800
.L08048CF0: .4byte 0x081C9EE8
.L08048CF4:
    ldr r0, .L08048D00 @ =0x081C8F64
    ldr r1, .L08048D04 @ =0x06002800
    bl Decompress
    ldr r0, .L08048D08 @ =0x081C9F28
    b .L08048D16
    .align 2, 0
.L08048D00: .4byte 0x081C8F64
.L08048D04: .4byte 0x06002800
.L08048D08: .4byte 0x081C9F28
.L08048D0C:
    ldr r0, .L08048D20 @ =0x081C9424
    ldr r1, .L08048D24 @ =0x06002800
    bl Decompress
    ldr r0, .L08048D28 @ =0x081C9F08
.L08048D16:
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
    b .L08048D3E
    .align 2, 0
.L08048D20: .4byte 0x081C9424
.L08048D24: .4byte 0x06002800
.L08048D28: .4byte 0x081C9F08
.L08048D2C:
    ldr r0, .L08048D50 @ =0x081C98D4
    ldr r1, .L08048D54 @ =0x06002800
    bl Decompress
    ldr r0, .L08048D58 @ =0x081C9F48
    movs r1, #0xa0
    movs r2, #0x20
    bl ApplyPaletteExt
.L08048D3E:
    ldr r2, .L08048D5C @ =0x0300144C
    ldr r1, .L08048D60 @ =gPlaySt
    ldrb r0, [r1, #0xf]
    str r0, [r2]
    movs r0, #0
    strb r0, [r1, #0xf]
    pop {r0}
    bx r0
    .align 2, 0
.L08048D50: .4byte 0x081C98D4
.L08048D54: .4byte 0x06002800
.L08048D58: .4byte 0x081C9F48
.L08048D5C: .4byte 0x0300144C
.L08048D60: .4byte gPlaySt
    func_end func_08048CA8

    thumb_func_start func_08048D64
func_08048D64: @ 0x08048D64
    push {r4, lr}
    ldr r1, .L08048DD4 @ =gPlaySt
    ldr r0, .L08048DD8 @ =0x0300144C
    ldr r0, [r0]
    movs r2, #0
    strb r0, [r1, #0xf]
    ldr r3, .L08048DDC @ =gDispIo
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
    adds r1, r3, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r4, [r1]
    ands r0, r4
    strb r0, [r1]
    adds r1, #8
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x45
    strb r2, [r0]
    adds r0, #1
    strb r2, [r0]
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r4, [r3, #0x10]
    ands r0, r4
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08048DD4: .4byte gPlaySt
.L08048DD8: .4byte 0x0300144C
.L08048DDC: .4byte gDispIo
    func_end func_08048D64

    thumb_func_start func_08048DE0
func_08048DE0: @ 0x08048DE0
    push {lr}
    ldr r1, .L08048DF0 @ =0x03005D20
    movs r0, #0x49
    bl StartBgm
    pop {r0}
    bx r0
    .align 2, 0
.L08048DF0: .4byte 0x03005D20
    func_end func_08048DE0

    thumb_func_start func_08048DF4
func_08048DF4: @ 0x08048DF4
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r2, r0, r1
    ldrh r1, [r2]
    cmp r1, #0
    beq .L08048E0A
    movs r3, #0xff
    lsls r3, r3, #8
    adds r0, r3, #0
    orrs r1, r0
    strh r1, [r2]
.L08048E0A:
    bx lr
    func_end func_08048DF4

    thumb_func_start func_08048E0C
func_08048E0C: @ 0x08048E0C
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
.L08048E12:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08048DF4
    adds r4, #1
    cmp r4, #4
    ble .L08048E12
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08048E0C

    thumb_func_start func_08048E28
func_08048E28: @ 0x08048E28
    push {r4, r5, r6, lr}
    ldr r5, .L08048E6C @ =0x081C80E4
    ldr r0, .L08048E70 @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08048E66
    bl GetGameTime
    adds r2, r0, #0
    movs r0, #0x1f
    ands r2, r0
    asrs r2, r2, #1
    movs r1, #0
    ldr r0, .L08048E74 @ =gPal
    movs r4, #0xf
    ldr r6, .L08048E78 @ =0x00000322
    adds r3, r0, r6
.L08048E4E:
    adds r0, r2, r1
    ands r0, r4
    lsls r0, r0, #1
    adds r0, r0, r5
    ldrh r0, [r0]
    strh r0, [r3]
    adds r3, #2
    adds r1, #1
    cmp r1, #0xe
    ble .L08048E4E
    bl EnablePalSync
.L08048E66:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08048E6C: .4byte 0x081C80E4
.L08048E70: .4byte 0x0203DCE8
.L08048E74: .4byte gPal
.L08048E78: .4byte 0x00000322
    func_end func_08048E28

    thumb_func_start func_08048E7C
func_08048E7C: @ 0x08048E7C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    movs r0, #0
    mov sb, r0
    movs r1, #0
    str r1, [sp, #4]
    mov sl, r1
.L08048E94:
    ldr r1, [r7, #0x2c]
    ldr r2, [r7, #0x30]
    ldr r3, [sp, #4]
    adds r2, r2, r3
    movs r0, #0xf
    mov r4, sb
    ands r0, r4
    lsls r0, r0, #0xc
    movs r3, #0x80
    lsls r3, r3, #4
    adds r0, r0, r3
    str r0, [sp]
    movs r0, #4
    ldr r3, .L08049048 @ =0x081D55FE
    bl PutSprite
    ldr r4, .L0804904C @ =0x080C5AC8
    movs r1, #0
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    movs r1, #0x80
    lsls r1, r1, #1
    bl Div
    adds r6, r0, #0
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    ldr r2, .L08049050 @ =0x080C5A48
    movs r3, #0
    ldrsh r0, [r2, r3]
    rsbs r0, r0, #0
    lsls r0, r0, #4
    movs r1, #0x80
    lsls r1, r1, #1
    bl Div
    adds r5, r0, #0
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    ldr r4, .L08049050 @ =0x080C5A48
    movs r1, #0
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    movs r1, #0x80
    lsls r1, r1, #1
    bl Div
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    ldr r2, .L0804904C @ =0x080C5AC8
    movs r3, #0
    ldrsh r0, [r2, r3]
    lsls r0, r0, #4
    movs r1, #0x80
    lsls r1, r1, #1
    bl Div
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    mov r0, sb
    adds r1, r6, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl SetObjAffine
    ldr r1, [r7, #0x38]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08048FBE
    adds r3, r7, #0
    adds r3, #0x3c
    cmp r1, sb
    beq .L08048F44
    mov r4, sl
    adds r1, r3, r4
    ldrh r0, [r1]
    movs r2, #0x80
    lsls r2, r2, #1
    cmp r0, r2
    bls .L08048F3E
    subs r0, #8
    strh r0, [r1]
.L08048F3E:
    ldr r0, [r7, #0x38]
    cmp r0, sb
    bne .L08048F56
.L08048F44:
    mov r4, sl
    adds r2, r3, r4
    ldrh r1, [r2]
    ldr r0, .L08049054 @ =0x0000014F
    cmp r1, r0
    bhi .L08048F56
    adds r0, r1, #0
    adds r0, #8
    strh r0, [r2]
.L08048F56:
    ldr r1, .L0804904C @ =0x080C5AC8
    movs r2, #0
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    add r3, sl
    mov r8, r3
    ldrh r1, [r3]
    bl Div
    adds r6, r0, #0
    lsls r6, r6, #0x10
    asrs r6, r6, #0x10
    ldr r3, .L08049050 @ =0x080C5A48
    movs r4, #0
    ldrsh r0, [r3, r4]
    rsbs r0, r0, #0
    lsls r0, r0, #4
    mov r2, r8
    ldrh r1, [r2]
    bl Div
    adds r5, r0, #0
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    ldr r3, .L08049050 @ =0x080C5A48
    movs r4, #0
    ldrsh r0, [r3, r4]
    lsls r0, r0, #4
    mov r2, r8
    ldrh r1, [r2]
    bl Div
    adds r4, r0, #0
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    ldr r3, .L0804904C @ =0x080C5AC8
    movs r1, #0
    ldrsh r0, [r3, r1]
    lsls r0, r0, #4
    mov r2, r8
    ldrh r1, [r2]
    bl Div
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [sp]
    mov r0, sb
    adds r1, r6, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl SetObjAffine
.L08048FBE:
    ldr r1, [r7, #0x2c]
    subs r1, #0x30
    ldr r2, [r7, #0x30]
    ldr r3, [sp, #4]
    adds r2, r2, r3
    ldr r3, .L08049058 @ =0x08B9A5D0
    mov r4, sb
    lsls r0, r4, #2
    adds r0, r0, r3
    ldr r3, [r0]
    movs r4, #0
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r0, [sp, #4]
    adds r0, #0x18
    str r0, [sp, #4]
    movs r1, #2
    add sl, r1
    movs r2, #1
    add sb, r2
    mov r3, sb
    cmp r3, #3
    bgt .L08048FF2
    b .L08048E94
.L08048FF2:
    ldr r2, [r7, #0x34]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    beq .L08049036
    ldr r1, [r7, #0x2c]
    subs r1, #0x40
    lsls r0, r2, #1
    adds r0, r0, r2
    lsls r0, r0, #3
    ldr r2, [r7, #0x30]
    adds r2, r2, r0
    adds r2, #8
    ldr r3, .L0804905C @ =0x081D5744
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    ldr r1, [r7, #0x2c]
    subs r1, #0x40
    ldr r2, [r7, #0x34]
    lsls r0, r2, #1
    adds r0, r0, r2
    lsls r0, r0, #3
    ldr r2, [r7, #0x30]
    adds r2, r2, r0
    adds r2, #0x12
    ldr r3, .L08049060 @ =0x081D574C
    str r4, [sp]
    movs r0, #4
    bl PutSprite
    bl func_08048E28
.L08049036:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08049048: .4byte 0x081D55FE
.L0804904C: .4byte 0x080C5AC8
.L08049050: .4byte gSinLut
.L08049054: .4byte 0x0000014F
.L08049058: .4byte 0x08B9A5D0
.L0804905C: .4byte 0x081D5744
.L08049060: .4byte 0x081D574C
    func_end func_08048E7C

    thumb_func_start func_08049064
func_08049064: @ 0x08049064
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    ldr r4, .L080490B0 @ =0x08B9A5E0
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r5, #0
    bl Proc_Start
    adds r1, r0, #0
    str r6, [r1, #0x2c]
    mov r0, r8
    str r0, [r1, #0x30]
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [r1, #0x34]
    str r0, [r1, #0x38]
    movs r3, #0x80
    lsls r3, r3, #1
    movs r2, #3
    adds r0, r1, #0
    adds r0, #0x42
.L0804909A:
    strh r3, [r0]
    subs r0, #2
    subs r2, #1
    cmp r2, #0
    bge .L0804909A
    adds r0, r1, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080490B0: .4byte 0x08B9A5E0
    func_end func_08049064

    thumb_func_start func_080490B4
func_080490B4: @ 0x080490B4
    push {lr}
    ldr r0, .L080490C0 @ =0x08B9A5E0
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L080490C0: .4byte 0x08B9A5E0
    func_end func_080490B4

    thumb_func_start func_080490C4
func_080490C4: @ 0x080490C4
    push {lr}
    ldr r0, .L080490D0 @ =0x08B9A5E0
    bl Proc_Find
    pop {r1}
    bx r1
    .align 2, 0
.L080490D0: .4byte 0x08B9A5E0
    func_end func_080490C4

    thumb_func_start func_080490D4
func_080490D4: @ 0x080490D4
    push {r4, r5, lr}
    ldr r5, .L08049118 @ =0x081C80E4
    ldr r0, .L0804911C @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08049112
    bl GetGameTime
    adds r2, r0, #0
    movs r0, #0x1f
    ands r2, r0
    asrs r2, r2, #1
    movs r1, #0
    ldr r0, .L08049120 @ =gPal
    movs r4, #0xf
    adds r3, r0, #0
    adds r3, #0x42
.L080490FA:
    adds r0, r2, r1
    ands r0, r4
    lsls r0, r0, #1
    adds r0, r0, r5
    ldrh r0, [r0]
    strh r0, [r3]
    adds r3, #2
    adds r1, #1
    cmp r1, #0xe
    ble .L080490FA
    bl EnablePalSync
.L08049112:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08049118: .4byte 0x081C80E4
.L0804911C: .4byte 0x0203DCE8
.L08049120: .4byte gPal
    func_end func_080490D4

    thumb_func_start func_08049124
func_08049124: @ 0x08049124
    push {r4, r5, r6, lr}
    ldr r5, .L08049168 @ =0x081C80E4
    ldr r0, .L0804916C @ =0x0203DCE8
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08049162
    bl GetGameTime
    adds r2, r0, #0
    movs r0, #0x1f
    ands r2, r0
    asrs r2, r2, #1
    movs r1, #0
    ldr r0, .L08049170 @ =gPal
    movs r4, #0xf
    ldr r6, .L08049174 @ =0x00000262
    adds r3, r0, r6
.L0804914A:
    adds r0, r2, r1
    ands r0, r4
    lsls r0, r0, #1
    adds r0, r0, r5
    ldrh r0, [r0]
    strh r0, [r3]
    adds r3, #2
    adds r1, #1
    cmp r1, #0xe
    ble .L0804914A
    bl EnablePalSync
.L08049162:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08049168: .4byte 0x081C80E4
.L0804916C: .4byte 0x0203DCE8
.L08049170: .4byte gPal
.L08049174: .4byte 0x00000262
    func_end func_08049124

    thumb_func_start func_08049178
func_08049178: @ 0x08049178
    ldr r3, .L080491B8 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    movs r2, #0
    movs r0, #8
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xc
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r2, [r0]
    ldr r0, .L080491BC @ =0x0000FFE0
    ldrh r2, [r3, #0x3c]
    ands r0, r2
    ldr r1, .L080491C0 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xe0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    bx lr
    .align 2, 0
.L080491B8: .4byte gDispIo
.L080491BC: .4byte 0x0000FFE0
.L080491C0: .4byte 0x0000E0FF
    func_end func_08049178

    thumb_func_start func_080491C4
func_080491C4: @ 0x080491C4
    push {lr}
    sub sp, #4
    adds r1, r0, #0
    ldr r2, [r1, #0x30]
    adds r0, r2, #0
    subs r0, #0x1f
    cmp r0, #0x79
    bhi .L080491E6
    ldr r1, [r1, #0x2c]
    ldr r3, .L080491EC @ =0x081D575A
    movs r0, #0
    str r0, [sp]
    movs r0, #4
    bl PutSprite
    bl func_08049124
.L080491E6:
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L080491EC: .4byte 0x081D575A
    func_end func_080491C4

    thumb_func_start func_080491F0
func_080491F0: @ 0x080491F0
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    ldr r4, .L0804921C @ =0x08B9A5F0
    adds r0, r4, #0
    bl Proc_EndEach
    adds r0, r4, #0
    adds r1, r5, #0
    bl Proc_Start
    str r6, [r0, #0x2c]
    mov r1, r8
    str r1, [r0, #0x30]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0804921C: .4byte 0x08B9A5F0
    func_end func_080491F0

    thumb_func_start func_08049220
func_08049220: @ 0x08049220
    push {r4, lr}
    ldr r0, .L0804924C @ =0x084120A0
    ldr r4, .L08049250 @ =0x0200118C
    adds r1, r4, #0
    bl Decompress
    ldr r1, .L08049254 @ =0x06016800
    adds r0, r4, #0
    movs r2, #6
    movs r3, #4
    bl func_08047CB8
    ldr r0, .L08049258 @ =0x084138F0
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804924C: .4byte 0x084120A0
.L08049250: .4byte 0x0200118C
.L08049254: .4byte 0x06016800
.L08049258: .4byte 0x084138F0
    func_end func_08049220

    thumb_func_start func_0804925C
func_0804925C: @ 0x0804925C
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r2, r1, #0
    ldr r3, .L0804927C @ =0x081D578C
    movs r0, #0
    str r0, [sp]
    movs r0, #1
    adds r1, r4, #0
    bl PutSprite
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804927C: .4byte 0x081D578C
    func_end func_0804925C

    thumb_func_start func_08049280
func_08049280: @ 0x08049280
    push {r4, r5, lr}
    ldr r5, .L080492AC @ =gActiveUnit
    ldr r0, [r5]
    lsls r1, r1, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r4, #0
    bl GetItemAttributes
    movs r1, #1
    ands r1, r0
    cmp r1, #0
    beq .L080492C2
    adds r0, r4, #0
    bl func_0801736C
    cmp r0, #2
    ble .L080492B0
    movs r0, #2
    b .L080492C4
    .align 2, 0
.L080492AC: .4byte gActiveUnit
.L080492B0:
    ldr r0, [r5]
    adds r1, r4, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080492C2
    movs r0, #1
    b .L080492C4
.L080492C2:
    movs r0, #3
.L080492C4:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08049280

    thumb_func_start func_080492CC
func_080492CC: @ 0x080492CC
    adds r0, r1, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #2
    beq .L080492E8
    ldr r0, .L080492E4 @ =0x0203DC9C
    adds r1, #0x3c
    ldrb r1, [r1]
    strb r1, [r0, #7]
    movs r0, #0x84
    b .L080492EA
    .align 2, 0
.L080492E4: .4byte 0x0203DC9C
.L080492E8:
    movs r0, #8
.L080492EA:
    bx lr
    func_end func_080492CC

    thumb_func_start func_080492EC
func_080492EC: @ 0x080492EC
    ldr r2, .L080492FC @ =0x0203DC9C
    adds r1, #0x3c
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r2, #6]
    movs r0, #0x17
    bx lr
    .align 2, 0
.L080492FC: .4byte 0x0203DC9C
    func_end func_080492EC

    thumb_func_start func_08049300
func_08049300: @ 0x08049300
    push {r4, r5, r6, lr}
    adds r4, r1, #0
    ldr r0, .L0804935C @ =gActiveUnit
    ldr r0, [r0]
    adds r1, #0x3c
    movs r2, #0
    ldrsb r2, [r1, r2]
    lsls r2, r2, #1
    adds r1, r0, #0
    adds r1, #0x1e
    adds r1, r1, r2
    ldrh r6, [r1]
    adds r1, r6, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    adds r0, r6, #0
    bl func_0801736C
    cmp r0, #2
    ble .L0804932E
    movs r5, #0
.L0804932E:
    adds r0, r4, #0
    adds r0, #0x34
    lsls r2, r5, #0x18
    asrs r2, r2, #0x18
    movs r1, #0x2c
    ldrsh r3, [r4, r1]
    lsls r3, r3, #5
    movs r5, #0x2a
    ldrsh r1, [r4, r5]
    adds r3, r3, r1
    lsls r3, r3, #1
    ldr r1, .L08049360 @ =gBg0Tm
    adds r3, r3, r1
    adds r1, r6, #0
    bl func_08016470
    movs r0, #1
    bl EnableBgSync
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0804935C: .4byte gActiveUnit
.L08049360: .4byte gBg0Tm
    func_end func_08049300

    thumb_func_start func_08049364
func_08049364: @ 0x08049364
    ldr r1, .L08049370 @ =0x0203DC9C
    movs r0, #0
    strb r0, [r1, #6]
    movs r0, #0x1b
    bx lr
    .align 2, 0
.L08049370: .4byte 0x0203DC9C
    func_end func_08049364

    thumb_func_start func_08049374
func_08049374: @ 0x08049374
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    ldr r1, .L080493DC @ =0x0203DC9C
    movs r0, #0
    strb r0, [r1, #6]
    adds r7, r2, #0
    adds r7, #0x2d
    movs r0, #0
    ldrsb r0, [r7, r0]
    lsls r0, r0, #5
    adds r5, r2, #0
    adds r5, #0x2c
    movs r1, #0
    ldrsb r1, [r5, r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L080493E0 @ =gBg0Tm
    adds r0, r0, r1
    adds r6, r2, #0
    adds r6, #0x2e
    movs r1, #0
    ldrsb r1, [r6, r1]
    adds r4, r2, #0
    adds r4, #0x2f
    movs r2, #0
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #0
    ldrsb r0, [r7, r0]
    lsls r0, r0, #5
    movs r1, #0
    ldrsb r1, [r5, r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L080493E4 @ =gBg1Tm
    adds r0, r0, r1
    movs r1, #0
    ldrsb r1, [r6, r1]
    movs r2, #0
    ldrsb r2, [r4, r2]
    movs r3, #0
    bl TmFillRect_thm
    movs r0, #3
    bl EnableBgSync
    movs r0, #0xb
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080493DC: .4byte 0x0203DC9C
.L080493E0: .4byte gBg0Tm
.L080493E4: .4byte gBg1Tm
    func_end func_08049374

    thumb_func_start func_080493E8
func_080493E8: @ 0x080493E8
    adds r2, r0, #0
    movs r1, #0
    strb r1, [r2, #0x1e]
    strb r1, [r2, #0x18]
    strb r1, [r2, #0x1d]
    adds r3, r2, #0
    adds r3, #0x4a
    movs r0, #0xf
    strb r0, [r3]
    adds r0, r2, #0
    adds r0, #0x48
    strb r1, [r0]
    strh r1, [r2, #0x16]
    ldr r0, .L08049414 @ =0x04000134
    strh r1, [r0]
    ldr r2, .L08049418 @ =0x04000128
    ldr r3, .L0804941C @ =0x00002003
    adds r0, r3, #0
    strh r0, [r2]
    ldr r0, .L08049420 @ =0x0400012A
    strh r1, [r0]
    bx lr
    .align 2, 0
.L08049414: .4byte 0x04000134
.L08049418: .4byte 0x04000128
.L0804941C: .4byte 0x00002003
.L08049420: .4byte 0x0400012A
    func_end func_080493E8

    thumb_func_start func_08049424
func_08049424: @ 0x08049424
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r6, r0, #0
    bl func_08049944
    cmp r0, #0
    beq .L0804943A
    b .L08049800
.L0804943A:
    adds r0, r6, #0
    adds r0, #0x4a
    ldrb r1, [r0]
    mov sl, r0
    cmp r1, #0xf
    bls .L0804944E
    subs r0, r1, #1
    mov r1, sl
    strb r0, [r1]
    b .L08049800
.L0804944E:
    adds r1, r6, #0
    adds r1, #0x48
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08049478
    movs r0, #0
    strb r0, [r1]
    ldr r0, .L08049474 @ =0x04000128
    ldrh r0, [r0]
    movs r4, #0xfc
    ands r4, r0
    cmp r4, #8
    beq .L08049478
    adds r0, r6, #0
    bl func_080493E8
    movs r0, #8
    eors r0, r4
    b .L08049802
    .align 2, 0
.L08049474: .4byte 0x04000128
.L08049478:
    ldrb r2, [r6, #0x18]
    cmp r2, #0xdf
    bls .L080494CA
    adds r0, r6, #0
    bl func_08049954
    adds r4, r0, #0
    cmp r4, #0
    beq .L0804948C
    b .L08049802
.L0804948C:
    adds r0, r6, #0
    adds r0, #0x4b
    ldrb r0, [r0]
    cmp r0, #1
    bne .L080494A8
    ldrb r0, [r6, #0x18]
    cmp r0, #0xe1
    bls .L080494A8
    adds r0, r6, #0
    bl func_08049944
    cmp r0, #0
    bne .L080494A8
    b .L080497F0
.L080494A8:
    adds r0, r6, #0
    bl func_08049944
    cmp r0, #0
    beq .L080494B4
    b .L08049800
.L080494B4:
    ldrh r0, [r6, #0x16]
    cmp r0, #0
    bne .L080494C4
    adds r0, r6, #0
    bl func_080493E8
    movs r0, #0x71
    b .L08049802
.L080494C4:
    subs r0, #1
    strh r0, [r6, #0x16]
    b .L08049800
.L080494CA:
    ldrb r0, [r6, #0x18]
    cmp r0, #2
    bne .L080494D2
    b .L08049608
.L080494D2:
    cmp r0, #2
    bgt .L080494E0
    cmp r0, #0
    beq .L080494EE
    cmp r0, #1
    beq .L080495AC
    b .L08049744
.L080494E0:
    cmp r0, #0xd0
    bne .L080494E6
    b .L08049654
.L080494E6:
    cmp r0, #0xd1
    bne .L080494EC
    b .L080496F0
.L080494EC:
    b .L08049744
.L080494EE:
    movs r5, #0xe
    movs r4, #3
    ldr r0, .L08049534 @ =0x04000120
    ldrh r0, [r0, #6]
    adds r1, r0, #0
    ldr r0, .L08049538 @ =0x0000FFFF
    ldrb r2, [r6, #0x1e]
    adds r7, r2, #0
    cmp r1, r0
    bne .L08049516
    adds r3, r1, #0
    ldr r1, .L0804953C @ =0x04000126
.L08049506:
    asrs r5, r5, #1
    subs r1, #2
    subs r4, #1
    cmp r4, #0
    beq .L08049516
    ldrh r0, [r1]
    cmp r0, r3
    beq .L08049506
.L08049516:
    movs r0, #0xe
    ands r5, r0
    strb r5, [r6, #0x1d]
    movs r4, #3
    ldr r0, .L08049534 @ =0x04000120
    ldrh r0, [r0, #6]
    adds r3, r0, #0
    asrs r0, r2, #3
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L08049544
    ldr r0, .L08049540 @ =0x00007208
    b .L0804956A
    .align 2, 0
.L08049534: .4byte 0x04000120
.L08049538: .4byte 0x0000FFFF
.L0804953C: .4byte 0x04000126
.L08049540: .4byte 0x00007208
.L08049544:
    subs r4, #1
    cmp r4, #0
    beq .L08049570
    lsls r0, r4, #1
    ldr r1, .L08049598 @ =0x04000120
    adds r0, r0, r1
    ldrh r0, [r0]
    adds r3, r0, #0
    adds r0, r2, #0
    asrs r0, r4
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L08049544
    adds r0, r1, #0
    lsls r0, r4
    movs r1, #0xe4
    lsls r1, r1, #7
    orrs r0, r1
.L0804956A:
    cmp r3, r0
    beq .L08049544
    movs r5, #0
.L08049570:
    adds r0, r5, #0
    ands r0, r7
    strb r0, [r6, #0x1e]
    cmp r5, #0
    bne .L08049580
    movs r0, #0xf
    mov r2, sl
    strb r0, [r2]
.L08049580:
    mov r1, sl
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0804959C
    ldrb r2, [r6, #0x1d]
    ldrb r0, [r6, #0x1e]
    cmp r2, r0
    beq .L080495A2
    adds r0, r6, #0
    bl func_0804985C
    b .L080495AC
    .align 2, 0
.L08049598: .4byte 0x04000120
.L0804959C:
    subs r0, #1
    mov r1, sl
    strb r0, [r1]
.L080495A2:
    movs r2, #0xc4
    lsls r2, r2, #7
    adds r0, r2, #0
    ldrb r1, [r6, #0x1e]
    b .L080496AC
.L080495AC:
    adds r1, r6, #0
    adds r1, #0x49
    movs r0, #0
    strb r0, [r1]
    movs r4, #3
    adds r7, r1, #0
    ldr r5, .L08049600 @ =0x03001450
.L080495BA:
    lsls r0, r4, #1
    ldr r2, .L08049604 @ =0x04000120
    adds r0, r0, r2
    ldrh r0, [r0]
    adds r3, r0, #0
    asrs r0, r3, #8
    subs r2, r4, #1
    cmp r0, #0x72
    bne .L080495E4
    lsls r0, r2, #1
    adds r0, r0, r5
    strh r3, [r0]
    movs r0, #0xff
    ands r3, r0
    movs r0, #1
    lsls r0, r4
    cmp r3, r0
    bne .L080495E4
    ldrb r0, [r1]
    orrs r3, r0
    strb r3, [r1]
.L080495E4:
    adds r4, r2, #0
    cmp r4, #0
    bne .L080495BA
    ldrb r1, [r6, #0x1d]
    ldrb r2, [r7]
    cmp r1, r2
    bne .L080495A2
    movs r0, #2
    strb r0, [r6, #0x18]
    movs r1, #0xc2
    lsls r1, r1, #7
    adds r0, r1, #0
    ldrb r1, [r7]
    b .L080496AC
    .align 2, 0
.L08049600: .4byte 0x03001450
.L08049604: .4byte 0x04000120
.L08049608:
    movs r4, #3
    adds r7, r6, #0
    adds r7, #0x49
    adds r5, r7, #0
    movs r2, #1
    mov ip, r2
    ldr r0, .L0804964C @ =0x03001450
    mov sb, r0
    ldr r1, .L08049650 @ =0x04000120
    mov r8, r1
.L0804961C:
    ldrb r3, [r5]
    adds r0, r3, #0
    asrs r0, r4
    mov r2, ip
    ands r0, r2
    subs r2, r4, #1
    cmp r0, #0
    beq .L08049644
    lsls r0, r4, #1
    add r0, r8
    ldrh r1, [r0]
    lsls r0, r2, #1
    add r0, sb
    ldrh r0, [r0]
    cmp r1, r0
    beq .L08049644
    mov r0, ip
    lsls r0, r4
    eors r3, r0
    strb r3, [r5]
.L08049644:
    adds r4, r2, #0
    cmp r4, #0
    bne .L0804961C
    b .L080497A8
    .align 2, 0
.L0804964C: .4byte 0x03001450
.L08049650: .4byte 0x04000120
.L08049654:
    movs r5, #1
    movs r4, #3
    adds r7, r6, #0
    adds r7, #0x49
    movs r0, #0x19
    adds r0, r0, r6
    mov ip, r0
    ldr r1, .L080496B8 @ =0x03001450
    mov r8, r1
.L08049666:
    lsls r0, r4, #1
    ldr r2, .L080496BC @ =0x04000120
    adds r0, r0, r2
    ldrh r0, [r0]
    adds r3, r0, #0
    subs r2, r4, #1
    mov r1, ip
    adds r0, r1, r2
    strb r3, [r0]
    ldrb r1, [r7]
    asrs r1, r4
    movs r0, #1
    ands r1, r0
    cmp r1, #0
    beq .L0804969A
    asrs r0, r3, #8
    subs r0, #0x72
    cmp r0, #1
    bls .L0804968E
    b .L080497F6
.L0804968E:
    lsls r0, r2, #1
    add r0, r8
    ldrh r0, [r0]
    cmp r3, r0
    bne .L0804969A
    movs r5, #0
.L0804969A:
    adds r4, r2, #0
    cmp r4, #0
    bne .L08049666
    cmp r5, #0
    bne .L080496C0
    movs r2, #0xc6
    lsls r2, r2, #7
    adds r0, r2, #0
    ldrb r1, [r6, #0x1c]
.L080496AC:
    orrs r1, r0
    adds r0, r6, #0
    bl func_08049810
    b .L08049802
    .align 2, 0
.L080496B8: .4byte 0x03001450
.L080496BC: .4byte 0x04000120
.L080496C0:
    movs r0, #0xd1
    strb r0, [r6, #0x18]
    movs r5, #0x11
    movs r4, #3
    mov r0, ip
    adds r0, #2
.L080496CC:
    ldrb r1, [r0]
    adds r5, r1, r5
    subs r0, #1
    subs r4, #1
    cmp r4, #0
    bne .L080496CC
    strb r5, [r6, #0x14]
    movs r0, #0xff
    ands r5, r0
    movs r2, #0xc8
    lsls r2, r2, #7
    adds r0, r2, #0
    orrs r5, r0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08049810
    b .L08049802
.L080496F0:
    movs r4, #3
    adds r7, r6, #0
    adds r7, #0x49
    ldrb r1, [r7]
    ldr r2, .L08049730 @ =0x04000126
    movs r5, #1
.L080496FC:
    ldrh r0, [r2]
    adds r3, r0, #0
    adds r0, r1, #0
    asrs r0, r4
    ands r0, r5
    cmp r0, #0
    beq .L08049710
    asrs r0, r3, #8
    cmp r0, #0x73
    bne .L080497F6
.L08049710:
    subs r2, #2
    subs r4, #1
    cmp r4, #0
    bne .L080496FC
    adds r0, r6, #0
    bl MultiBoot
    adds r4, r0, #0
    cmp r4, #0
    bne .L08049734
    movs r0, #0xe0
    strb r0, [r6, #0x18]
    adds r0, #0xb0
    strh r0, [r6, #0x16]
    b .L08049800
    .align 2, 0
.L08049730: .4byte 0x04000126
.L08049734:
    adds r0, r6, #0
    bl func_080493E8
    movs r0, #0x1e
    mov r1, sl
    strb r0, [r1]
    movs r0, #0x70
    b .L08049802
.L08049744:
    movs r4, #3
    adds r7, r6, #0
    adds r7, #0x49
    mov ip, r7
    movs r2, #1
    mov r8, r2
.L08049750:
    mov r0, ip
    ldrb r5, [r0]
    adds r0, r5, #0
    asrs r0, r4
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L0804978A
    lsls r0, r4, #1
    ldr r2, .L080497A4 @ =0x04000120
    adds r0, r0, r2
    ldrh r0, [r0]
    adds r3, r0, #0
    asrs r2, r3, #8
    ldrb r0, [r6, #0x18]
    lsrs r1, r0, #1
    movs r0, #0x62
    subs r0, r0, r1
    mov r1, r8
    lsls r1, r4
    cmp r2, r0
    bne .L08049784
    movs r0, #0xff
    ands r3, r0
    cmp r3, r1
    beq .L0804978A
.L08049784:
    eors r5, r1
    mov r1, ip
    strb r5, [r1]
.L0804978A:
    subs r4, #1
    cmp r4, #0
    bne .L08049750
    ldrb r2, [r6, #0x18]
    cmp r2, #0xc4
    bne .L080497A8
    movs r0, #0xe
    ldrb r7, [r7]
    ands r0, r7
    strb r0, [r6, #0x1e]
    strb r4, [r6, #0x18]
    b .L080495A2
    .align 2, 0
.L080497A4: .4byte 0x04000120
.L080497A8:
    ldrb r0, [r7]
    cmp r0, #0
    bne .L080497B8
    adds r0, r6, #0
    bl func_080493E8
    movs r0, #0x50
    b .L08049802
.L080497B8:
    ldrb r0, [r6, #0x18]
    adds r0, #2
    strb r0, [r6, #0x18]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #0xc4
    bne .L080497C8
    b .L080495A2
.L080497C8:
    ldr r0, [r6, #0x28]
    ldrb r1, [r6, #0x18]
    adds r0, r1, r0
    subs r1, r0, #3
    ldrb r1, [r1]
    lsls r1, r1, #8
    subs r0, #4
    ldrb r0, [r0]
    orrs r1, r0
    adds r0, r6, #0
    bl func_08049810
    adds r4, r0, #0
    cmp r4, #0
    bne .L08049802
    adds r0, r6, #0
    adds r0, #0x4b
    ldrb r0, [r0]
    cmp r0, #1
    bne .L08049800
.L080497F0:
    bl func_08049A58
    b .L0804944E
.L080497F6:
    adds r0, r6, #0
    bl func_080493E8
    movs r0, #0x60
    b .L08049802
.L08049800:
    movs r0, #0
.L08049802:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08049424

    thumb_func_start func_08049810
func_08049810: @ 0x08049810
    push {r4, lr}
    adds r2, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r3, .L0804983C @ =0x04000128
    ldrh r0, [r3]
    movs r4, #0x8c
    ands r4, r0
    cmp r4, #8
    bne .L08049848
    ldr r0, .L08049840 @ =0x0400012A
    strh r1, [r0]
    ldr r1, .L08049844 @ =0x00002083
    adds r0, r1, #0
    strh r0, [r3]
    adds r1, r2, #0
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    movs r0, #0
    b .L08049854
    .align 2, 0
.L0804983C: .4byte 0x04000128
.L08049840: .4byte 0x0400012A
.L08049844: .4byte 0x00002083
.L08049848:
    adds r0, r2, #0
    bl func_080493E8
    movs r0, #8
    eors r4, r0
    adds r0, r4, #0
.L08049854:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08049810

    thumb_func_start func_0804985C
func_0804985C: @ 0x0804985C
    push {lr}
    adds r1, r0, #0
    ldrb r0, [r1, #0x18]
    cmp r0, #0
    beq .L0804986E
    adds r0, r1, #0
    bl func_080493E8
    b .L0804987A
.L0804986E:
    adds r2, r1, #0
    adds r2, #0x4a
    strb r0, [r2]
    strb r0, [r1, #0x1e]
    movs r0, #1
    strb r0, [r1, #0x18]
.L0804987A:
    pop {r0}
    bx r0
    func_end func_0804985C

    thumb_func_start func_08049880
func_08049880: @ 0x08049880
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    ldr r0, [sp, #0x14]
    lsls r3, r3, #0x18
    lsrs r5, r3, #0x18
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    movs r3, #0
    ldrb r0, [r4, #0x18]
    cmp r0, #0
    bne .L080498BC
    ldrb r0, [r4, #0x1e]
    cmp r0, #0
    beq .L080498BC
    adds r0, r4, #0
    adds r0, #0x4a
    ldrb r0, [r0]
    cmp r0, #0
    bne .L080498BC
    str r6, [r4, #0x20]
    adds r2, #0xf
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r2, r0
    subs r0, #0xf0
    adds r1, r2, r0
    ldr r0, .L080498C4 @ =0x0003FF00
    cmp r1, r0
    bls .L080498C8
.L080498BC:
    adds r0, r4, #0
    bl func_080493E8
    b .L0804993C
    .align 2, 0
.L080498C4: .4byte 0x0003FF00
.L080498C8:
    adds r0, r6, r2
    str r0, [r4, #0x24]
    lsls r1, r7, #0x18
    movs r2, #0x80
    lsls r2, r2, #0x13
    adds r0, r1, r2
    asrs r0, r0, #0x18
    adds r2, r1, #0
    cmp r0, #8
    bhi .L08049928
    lsls r0, r0, #2
    ldr r1, .L080498E8 @ =.L080498EC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080498E8: .4byte .L080498EC
.L080498EC: @ jump table
    .4byte .L08049910 @ case 0
    .4byte .L08049910 @ case 1
    .4byte .L08049910 @ case 2
    .4byte .L08049910 @ case 3
    .4byte .L0804991A @ case 4
    .4byte .L08049920 @ case 5
    .4byte .L08049920 @ case 6
    .4byte .L08049920 @ case 7
    .4byte .L08049920 @ case 8
.L08049910:
    lsls r3, r5, #3
    asrs r1, r2, #0x18
    movs r0, #3
    subs r0, r0, r1
    b .L08049926
.L0804991A:
    movs r0, #0x38
    adds r3, r5, #0
    b .L08049926
.L08049920:
    lsls r3, r5, #3
    asrs r0, r2, #0x18
    subs r0, #1
.L08049926:
    orrs r3, r0
.L08049928:
    movs r0, #0x3f
    ands r3, r0
    lsls r0, r3, #1
    movs r2, #0x7f
    rsbs r2, r2, #0
    adds r1, r2, #0
    orrs r0, r1
    strb r0, [r4, #0x1c]
    movs r0, #0xd0
    strb r0, [r4, #0x18]
.L0804993C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08049880

    thumb_func_start func_08049944
func_08049944: @ 0x08049944
    ldrb r0, [r0, #0x18]
    cmp r0, #0xe9
    beq .L0804994E
    movs r0, #0
    b .L08049950
.L0804994E:
    movs r0, #1
.L08049950:
    bx lr
    func_end func_08049944

    thumb_func_start func_08049954
func_08049954: @ 0x08049954
    push {r4, r5, r6, lr}
    adds r3, r0, #0
    ldrb r0, [r3, #0x18]
    cmp r0, #0xe0
    beq .L08049970
    cmp r0, #0xe0
    blt .L08049980
    cmp r0, #0xe8
    bgt .L08049980
    cmp r0, #0xe7
    blt .L08049980
    movs r4, #3
    ldrb r5, [r3, #0x1e]
    b .L080499E0
.L08049970:
    movs r1, #0
    movs r0, #0xe1
    strb r0, [r3, #0x18]
    str r1, [r3, #4]
    movs r0, #0x80
    lsls r0, r0, #0xd
    str r0, [r3]
    b .L080499D2
.L08049980:
    movs r4, #3
    ldrb r5, [r3, #0x1e]
    movs r6, #1
    ldr r1, .L080499DC @ =0x04000126
.L08049988:
    ldrh r0, [r1]
    adds r2, r0, #0
    adds r0, r5, #0
    asrs r0, r4
    ands r0, r6
    cmp r0, #0
    beq .L0804999C
    ldr r0, [r3, #4]
    cmp r2, r0
    bne .L08049970
.L0804999C:
    subs r1, #2
    subs r4, #1
    cmp r4, #0
    bne .L08049988
    ldrb r0, [r3, #0x18]
    adds r0, #1
    strb r0, [r3, #0x18]
    ldr r1, [r3]
    ldrh r0, [r3]
    str r0, [r3, #4]
    cmp r1, #0
    bne .L080499CA
    ldr r0, [r3, #0x28]
    adds r1, r0, #0
    adds r1, #0xac
    adds r0, #0xad
    ldrb r0, [r0]
    lsls r0, r0, #8
    ldrb r1, [r1]
    orrs r0, r1
    str r0, [r3, #4]
    lsls r0, r0, #5
    str r0, [r3]
.L080499CA:
    ldr r0, [r3]
    lsrs r0, r0, #5
    str r0, [r3]
.L080499D0:
    ldrh r1, [r3]
.L080499D2:
    adds r0, r3, #0
    bl func_08049810
    b .L08049A38
    .align 2, 0
.L080499DC: .4byte 0x04000126
.L080499E0:
    lsls r0, r4, #1
    ldr r1, .L08049A28 @ =0x04000120
    adds r0, r0, r1
    ldrh r0, [r0]
    adds r2, r0, #0
    adds r0, r5, #0
    asrs r0, r4
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L080499FC
    ldr r0, [r3, #4]
    cmp r2, r0
    bne .L08049A2C
.L080499FC:
    subs r4, #1
    cmp r4, #0
    bne .L080499E0
    ldrb r0, [r3, #0x18]
    adds r0, #1
    strb r0, [r3, #0x18]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #0xe9
    beq .L08049A36
    ldr r0, [r3, #0x28]
    adds r1, r0, #0
    adds r1, #0xae
    adds r0, #0xaf
    ldrb r0, [r0]
    lsls r0, r0, #8
    ldrb r1, [r1]
    orrs r0, r1
    str r0, [r3]
    str r0, [r3, #4]
    b .L080499D0
    .align 2, 0
.L08049A28: .4byte 0x04000120
.L08049A2C:
    adds r0, r3, #0
    bl func_080493E8
    movs r0, #0x71
    b .L08049A38
.L08049A36:
    movs r0, #0
.L08049A38:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08049954

    thumb_func_start func_08049A40
func_08049A40: @ 0x08049A40
    mov r2, pc
    lsrs r2, r2, #0x18
    movs r1, #0xc
    cmp r2, #2
    beq .L08049A52
    movs r1, #0xd
    cmp r2, #8
    beq .L08049A52
    movs r1, #4
.L08049A52:
    subs r0, r0, r1
    bgt .L08049A52
    bx lr
    func_end func_08049A40

    thumb_func_start func_08049A58
func_08049A58: @ 0x08049A58
    push {r4, r5, lr}
    movs r2, #0
    ldr r3, .L08049A8C @ =0x04000128
    ldrh r1, [r3]
    movs r0, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L08049A7C
    ldr r5, .L08049A90 @ =0x0000795C
    movs r4, #0x80
.L08049A6C:
    adds r2, #1
    cmp r2, r5
    bgt .L08049A7C
    ldrh r1, [r3]
    adds r0, r4, #0
    ands r0, r1
    cmp r0, #0
    bne .L08049A6C
.L08049A7C:
    movs r0, #0x96
    lsls r0, r0, #2
    bl func_08049A40
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08049A8C: .4byte 0x04000128
.L08049A90: .4byte 0x0000795C
    func_end func_08049A58
