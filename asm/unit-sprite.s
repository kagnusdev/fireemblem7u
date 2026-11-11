    .include "asm_prelude.inc"

    thumb_func_start func_08024C88
func_08024C88: @ 0x08024C88
    ldr r1, .L08024C94 @ =0x0203A3D0
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L08024C94: .4byte 0x0203A3D0
    func_end func_08024C88

    thumb_func_start ApplyUnitSpritePalettes
ApplyUnitSpritePalettes: @ 0x08024C98
    push {lr}
    ldr r0, .L08024CC0 @ =0x08194594
    movs r1, #0xe0
    lsls r1, r1, #2
    movs r2, #0x80
    bl ApplyPaletteExt
    ldr r1, .L08024CC4 @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L08024CCC
    ldr r0, .L08024CC8 @ =0x08194614
    movs r1, #0xd8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    b .L08024CD8
    .align 2, 0
.L08024CC0: .4byte 0x08194594
.L08024CC4: .4byte gBmSt
.L08024CC8: .4byte 0x08194614
.L08024CCC:
    ldr r0, .L08024CDC @ =0x08194634
    movs r1, #0xd8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
.L08024CD8:
    pop {r0}
    bx r0
    .align 2, 0
.L08024CDC: .4byte 0x08194634
    func_end ApplyUnitSpritePalettes

    thumb_func_start func_08024CE0
func_08024CE0: @ 0x08024CE0
    push {lr}
    ldr r0, .L08024CF4 @ =0x08194654
    movs r1, #0xf0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r0}
    bx r0
    .align 2, 0
.L08024CF4: .4byte 0x08194654
    func_end func_08024CE0

    thumb_func_start ResetUnitSprites
ResetUnitSprites: @ 0x08024CF8
    push {r4, r5, r6, lr}
    movs r2, #0xcf
    ldr r5, .L08024D20 @ =0x02039F18
    ldr r6, .L08024D24 @ =0x02039F14
    ldr r4, .L08024D28 @ =0x02033E44
    movs r3, #0xff
.L08024D04:
    adds r1, r2, r4
    ldrb r0, [r1]
    orrs r0, r3
    strb r0, [r1]
    subs r2, #1
    cmp r2, #0
    bge .L08024D04
    movs r0, #0
    str r0, [r5]
    movs r0, #0x3f
    str r0, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08024D20: .4byte 0x02039F18
.L08024D24: .4byte 0x02039F14
.L08024D28: .4byte 0x02033E44
    func_end ResetUnitSprites

    thumb_func_start func_08024D2C
func_08024D2C: @ 0x08024D2C
    push {r4, r5, r6, lr}
    movs r2, #0xcf
    ldr r5, .L08024D54 @ =0x02039F18
    ldr r6, .L08024D58 @ =0x02039F14
    ldr r4, .L08024D5C @ =0x02033E44
    movs r3, #0xff
.L08024D38:
    adds r1, r2, r4
    ldrb r0, [r1]
    orrs r0, r3
    strb r0, [r1]
    subs r2, #1
    cmp r2, #0
    bge .L08024D38
    movs r0, #0
    str r0, [r5]
    movs r0, #0x5f
    str r0, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08024D54: .4byte 0x02039F18
.L08024D58: .4byte 0x02039F14
.L08024D5C: .4byte 0x02033E44
    func_end func_08024D2C

    thumb_func_start func_08024D60
func_08024D60: @ 0x08024D60
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    mov r8, r1
    ldr r1, .L08024D9C @ =0x08B93E48
    mov r2, r8
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r6, [r0]
    ldr r5, .L08024DA0 @ =0x08C99700
    movs r4, #0x7f
    ands r4, r7
    lsls r4, r4, #3
    adds r0, r5, #4
    adds r0, r4, r0
    ldr r0, [r0]
    ldr r1, .L08024DA4 @ =0x08B93E44
    ldr r1, [r1]
    bl Decompress
    adds r4, r4, r5
    ldrh r0, [r4, #2]
    cmp r0, #1
    beq .L08024DB8
    cmp r0, #1
    bgt .L08024DA8
    cmp r0, #0
    beq .L08024DAE
    b .L08024DD6
    .align 2, 0
.L08024D9C: .4byte 0x08B93E48
.L08024DA0: .4byte 0x08C99700
.L08024DA4: .4byte 0x08B93E44
.L08024DA8:
    cmp r0, #2
    beq .L08024DC2
    b .L08024DD6
.L08024DAE:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08024F4C
    b .L08024DCA
.L08024DB8:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08025028
    b .L08024DCA
.L08024DC2:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08025118
.L08024DCA:
    ldr r2, .L08024DE8 @ =0x02033E44
    add r2, r8
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    strb r0, [r2]
.L08024DD6:
    ldr r0, .L08024DE8 @ =0x02033E44
    add r0, r8
    ldrb r0, [r0]
    lsls r0, r0, #1
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08024DE8: .4byte 0x02033E44
    func_end func_08024D60

    thumb_func_start func_08024DEC
func_08024DEC: @ 0x08024DEC
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r0, .L08024E24 @ =0x02033E44
    adds r7, r6, r0
    ldrb r1, [r7]
    cmp r1, #0xff
    bne .L08024EA0
    ldr r5, .L08024E28 @ =0x08C99700
    movs r4, #0x7f
    ands r4, r6
    lsls r4, r4, #3
    adds r0, r5, #4
    adds r0, r4, r0
    ldr r0, [r0]
    ldr r1, .L08024E2C @ =0x08B93E44
    ldr r1, [r1]
    bl Decompress
    adds r4, r4, r5
    ldrh r0, [r4, #2]
    cmp r0, #1
    beq .L08024E54
    cmp r0, #1
    bgt .L08024E30
    cmp r0, #0
    beq .L08024E36
    b .L08024E96
    .align 2, 0
.L08024E24: .4byte 0x02033E44
.L08024E28: .4byte 0x08C99700
.L08024E2C: .4byte 0x08B93E44
.L08024E30:
    cmp r0, #2
    beq .L08024E70
    b .L08024E96
.L08024E36:
    ldr r4, .L08024E50 @ =0x02039F14
    ldr r0, [r4]
    adds r1, r6, #0
    bl func_08024EB8
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    strb r0, [r7]
    ldr r0, [r4]
    subs r0, #1
    b .L08024E94
    .align 2, 0
.L08024E50: .4byte 0x02039F14
.L08024E54:
    ldr r4, .L08024E6C @ =0x02039F18
    ldr r0, [r4]
    adds r1, r6, #0
    bl func_08025028
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    strb r0, [r7]
    ldr r0, [r4]
    adds r0, #2
    b .L08024E94
    .align 2, 0
.L08024E6C: .4byte 0x02039F18
.L08024E70:
    ldr r4, .L08024EAC @ =0x02039F18
    ldr r1, [r4]
    movs r0, #0x1e
    ands r0, r1
    cmp r0, #0x1e
    bne .L08024E80
    adds r0, r1, #2
    str r0, [r4]
.L08024E80:
    ldr r0, [r4]
    adds r1, r6, #0
    bl func_08025118
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    strb r0, [r7]
    ldr r0, [r4]
    adds r0, #4
.L08024E94:
    str r0, [r4]
.L08024E96:
    ldr r1, .L08024EB0 @ =0x0203A3D0
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08024EB4 @ =0x02033E44
.L08024EA0:
    adds r0, r6, r0
    ldrb r0, [r0]
    lsls r0, r0, #1
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08024EAC: .4byte 0x02039F18
.L08024EB0: .4byte 0x0203A3D0
.L08024EB4: .4byte 0x02033E44
    func_end func_08024DEC

    thumb_func_start func_08024EB8
func_08024EB8: @ 0x08024EB8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    str r0, [sp]
    adds r2, r1, #0
    ldr r1, .L08024F40 @ =0x08B93E58
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsls r0, r0, #5
    mov sb, r0
    lsrs r0, r2, #7
    movs r1, #1
    bics r1, r0
    movs r6, #0
    ldr r0, .L08024F44 @ =0x08B93E44
    mov sl, r0
    movs r0, #0x80
    lsls r0, r0, #3
    add r0, sb
    ldr r2, .L08024F48 @ =0x02033F14
    adds r4, r0, r2
    movs r3, #0x40
    mov r8, r3
    movs r7, #0
    lsls r5, r1, #7
.L08024EF2:
    mov r1, sl
    ldr r0, [r1]
    adds r0, r0, r7
    lsls r1, r6, #0xd
    ldr r2, .L08024F48 @ =0x02033F14
    add r2, sb
    adds r1, r1, r2
    movs r2, #0x10
    bl CpuFastSet
    mov r2, sl
    ldr r0, [r2]
    add r0, r8
    adds r1, r4, #0
    movs r2, #0x10
    bl CpuFastSet
    movs r3, #0x80
    lsls r3, r3, #6
    adds r4, r4, r3
    add r8, r5
    adds r7, r7, r5
    adds r6, #1
    cmp r6, #2
    ble .L08024EF2
    ldr r0, .L08024F40 @ =0x08B93E58
    ldr r2, [sp]
    lsls r1, r2, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08024F40: .4byte 0x08B93E58
.L08024F44: .4byte 0x08B93E44
.L08024F48: .4byte 0x02033F14
    func_end func_08024EB8

    thumb_func_start func_08024F4C
func_08024F4C: @ 0x08024F4C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp, #8]
    mov sb, r1
    ldr r1, .L08025018 @ =0x08B93E58
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsls r5, r0, #5
    mov r1, sb
    lsrs r0, r1, #7
    movs r2, #1
    mov sb, r2
    mov r1, sb
    bics r1, r0
    mov sb, r1
    movs r7, #0
    mov r2, sp
    adds r2, #4
    str r2, [sp, #0xc]
    ldr r0, .L0802501C @ =0x02033F14
    mov r8, r0
    movs r1, #0xc0
    lsls r1, r1, #4
    adds r0, r5, r1
    mov r2, r8
    adds r6, r0, r2
    movs r0, #0x40
    str r0, [sp, #0x10]
    movs r1, #0
    mov sl, r1
.L08024F92:
    movs r2, #0
    str r2, [sp]
    lsls r4, r7, #0xd
    mov r0, r8
    adds r1, r5, r0
    adds r1, r4, r1
    mov r0, sp
    ldr r2, .L08025020 @ =0x01000010
    bl CpuFastSet
    movs r1, #0
    str r1, [sp, #4]
    movs r1, #0x80
    lsls r1, r1, #3
    add r1, r8
    adds r1, r4, r1
    adds r1, r1, r5
    ldr r0, [sp, #0xc]
    ldr r2, .L08025020 @ =0x01000010
    bl CpuFastSet
    ldr r2, .L08025024 @ =0x08B93E44
    ldr r0, [r2]
    add r0, sl
    movs r1, #0x80
    lsls r1, r1, #4
    add r1, r8
    adds r4, r4, r1
    adds r4, r4, r5
    adds r1, r4, #0
    movs r2, #0x10
    bl CpuFastSet
    ldr r1, .L08025024 @ =0x08B93E44
    ldr r0, [r1]
    ldr r2, [sp, #0x10]
    adds r0, r0, r2
    adds r1, r6, #0
    movs r2, #0x10
    bl CpuFastSet
    movs r0, #0x80
    lsls r0, r0, #6
    adds r6, r6, r0
    mov r1, sb
    lsls r0, r1, #7
    ldr r2, [sp, #0x10]
    adds r2, r2, r0
    str r2, [sp, #0x10]
    add sl, r0
    adds r7, #1
    cmp r7, #2
    ble .L08024F92
    ldr r0, .L08025018 @ =0x08B93E58
    ldr r2, [sp, #8]
    lsls r1, r2, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08025018: .4byte 0x08B93E58
.L0802501C: .4byte 0x02033F14
.L08025020: .4byte 0x01000010
.L08025024: .4byte 0x08B93E44
    func_end func_08024F4C

    thumb_func_start func_08025028
func_08025028: @ 0x08025028
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp]
    adds r2, r1, #0
    ldr r1, .L0802510C @ =0x08B93E58
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsls r6, r0, #5
    lsrs r0, r2, #7
    movs r1, #1
    bics r1, r0
    movs r0, #0
    mov sb, r0
    ldr r2, .L08025110 @ =0x08B93E44
    mov r8, r2
    ldr r3, .L08025114 @ =0x02033F14
    mov sl, r3
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r0, r6, r2
    adds r7, r0, r3
    movs r3, #0xc0
    str r3, [sp, #4]
    movs r0, #0x80
    str r0, [sp, #8]
    movs r2, #0x40
    str r2, [sp, #0xc]
    movs r3, #0
    str r3, [sp, #0x10]
    lsls r5, r1, #8
.L0802506E:
    mov r1, r8
    ldr r0, [r1]
    ldr r2, [sp, #0x10]
    adds r0, r0, r2
    mov r3, sb
    lsls r4, r3, #0xd
    mov r2, sl
    adds r1, r6, r2
    adds r1, r4, r1
    movs r2, #0x10
    bl CpuFastSet
    mov r3, r8
    ldr r0, [r3]
    ldr r1, [sp, #0xc]
    adds r0, r0, r1
    movs r1, #0x80
    lsls r1, r1, #3
    add r1, sl
    adds r1, r4, r1
    adds r1, r1, r6
    movs r2, #0x10
    bl CpuFastSet
    mov r2, r8
    ldr r0, [r2]
    ldr r3, [sp, #8]
    adds r0, r0, r3
    movs r1, #0x80
    lsls r1, r1, #4
    add r1, sl
    adds r4, r4, r1
    adds r4, r4, r6
    adds r1, r4, #0
    movs r2, #0x10
    bl CpuFastSet
    mov r1, r8
    ldr r0, [r1]
    ldr r2, [sp, #4]
    adds r0, r0, r2
    adds r1, r7, #0
    movs r2, #0x10
    bl CpuFastSet
    movs r3, #0x80
    lsls r3, r3, #6
    adds r7, r7, r3
    ldr r0, [sp, #4]
    adds r0, r0, r5
    str r0, [sp, #4]
    ldr r1, [sp, #8]
    adds r1, r1, r5
    str r1, [sp, #8]
    ldr r2, [sp, #0xc]
    adds r2, r2, r5
    str r2, [sp, #0xc]
    ldr r3, [sp, #0x10]
    adds r3, r3, r5
    str r3, [sp, #0x10]
    movs r0, #1
    add sb, r0
    mov r1, sb
    cmp r1, #2
    ble .L0802506E
    ldr r0, .L0802510C @ =0x08B93E58
    ldr r2, [sp]
    lsls r1, r2, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0802510C: .4byte 0x08B93E58
.L08025110: .4byte 0x08B93E44
.L08025114: .4byte 0x02033F14
    func_end func_08025028

    thumb_func_start func_08025118
func_08025118: @ 0x08025118
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp]
    adds r2, r1, #0
    ldr r1, .L08025200 @ =0x08B93E58
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsls r6, r0, #5
    lsrs r0, r2, #7
    movs r1, #1
    bics r1, r0
    movs r0, #0
    mov sb, r0
    ldr r2, .L08025204 @ =0x08B93E44
    mov r8, r2
    ldr r3, .L08025208 @ =0x02033F14
    mov sl, r3
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r0, r6, r2
    adds r7, r0, r3
    movs r3, #0xc0
    lsls r3, r3, #1
    str r3, [sp, #4]
    movs r0, #0x80
    lsls r0, r0, #1
    str r0, [sp, #8]
    movs r2, #0x80
    str r2, [sp, #0xc]
    movs r3, #0
    str r3, [sp, #0x10]
    lsls r5, r1, #9
.L08025162:
    mov r1, r8
    ldr r0, [r1]
    ldr r2, [sp, #0x10]
    adds r0, r0, r2
    mov r3, sb
    lsls r4, r3, #0xd
    mov r2, sl
    adds r1, r6, r2
    adds r1, r4, r1
    movs r2, #0x20
    bl CpuFastSet
    mov r3, r8
    ldr r0, [r3]
    ldr r1, [sp, #0xc]
    adds r0, r0, r1
    movs r1, #0x80
    lsls r1, r1, #3
    add r1, sl
    adds r1, r4, r1
    adds r1, r1, r6
    movs r2, #0x20
    bl CpuFastSet
    mov r2, r8
    ldr r0, [r2]
    ldr r3, [sp, #8]
    adds r0, r0, r3
    movs r1, #0x80
    lsls r1, r1, #4
    add r1, sl
    adds r4, r4, r1
    adds r4, r4, r6
    adds r1, r4, #0
    movs r2, #0x20
    bl CpuFastSet
    mov r1, r8
    ldr r0, [r1]
    ldr r2, [sp, #4]
    adds r0, r0, r2
    adds r1, r7, #0
    movs r2, #0x20
    bl CpuFastSet
    movs r3, #0x80
    lsls r3, r3, #6
    adds r7, r7, r3
    ldr r0, [sp, #4]
    adds r0, r0, r5
    str r0, [sp, #4]
    ldr r1, [sp, #8]
    adds r1, r1, r5
    str r1, [sp, #8]
    ldr r2, [sp, #0xc]
    adds r2, r2, r5
    str r2, [sp, #0xc]
    ldr r3, [sp, #0x10]
    adds r3, r3, r5
    str r3, [sp, #0x10]
    movs r0, #1
    add sb, r0
    mov r1, sb
    cmp r1, #2
    ble .L08025162
    ldr r0, .L08025200 @ =0x08B93E58
    ldr r2, [sp]
    lsls r1, r2, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08025200: .4byte 0x08B93E58
.L08025204: .4byte 0x08B93E44
.L08025208: .4byte 0x02033F14
    func_end func_08025118

    thumb_func_start func_0802520C
func_0802520C: @ 0x0802520C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    str r1, [sp]
    bl GetUnitSMSId
    str r0, [sp, #4]
    bl func_08024DEC
    lsls r6, r0, #5
    ldr r1, .L08025274 @ =0x08B93F18
    ldr r2, [sp]
    lsls r0, r2, #1
    adds r0, r0, r1
    ldrh r5, [r0]
    movs r4, #0
    bl GetGameTime
    movs r1, #0x48
    bl __umodsi3
    adds r1, r0, #0
    cmp r1, #0x43
    ble .L08025244
    movs r4, #1
.L08025244:
    cmp r1, #0x23
    ble .L0802524A
    movs r4, #2
.L0802524A:
    cmp r1, #0x1f
    ble .L08025250
    movs r4, #1
.L08025250:
    cmp r1, #0
    blt .L08025256
    movs r4, #0
.L08025256:
    ldr r1, .L08025278 @ =0x08C99700
    movs r0, #0x7f
    ldr r3, [sp, #4]
    ands r0, r3
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #2]
    cmp r0, #1
    beq .L08025304
    cmp r0, #1
    bgt .L0802527C
    cmp r0, #0
    beq .L08025284
    b .L080254DE
    .align 2, 0
.L08025274: .4byte 0x08B93F18
.L08025278: .4byte 0x08C99700
.L0802527C:
    cmp r0, #2
    bne .L08025282
    b .L080253FC
.L08025282:
    b .L080254DE
.L08025284:
    movs r1, #0
    lsls r4, r4, #0xd
    mov sl, r4
    ldr r7, .L080252F8 @ =0x02033F14
    mov sb, r7
    lsrs r7, r5, #1
    movs r0, #1
    bics r0, r5
    lsls r0, r0, #2
    movs r4, #0xf
    lsls r4, r0
.L0802529A:
    movs r5, #0
    lsls r3, r1, #0xd
    adds r1, #1
    mov r8, r1
    adds r0, r6, r7
    adds r0, r0, r3
    mov r1, sb
    adds r2, r0, r1
    movs r1, #0x80
    lsls r1, r1, #3
    adds r0, r7, r1
    adds r0, r6, r0
    adds r0, r0, r3
    mov r3, sb
    adds r1, r0, r3
.L080252B8:
    adds r0, r4, #0
    ldrb r3, [r2]
    ands r0, r3
    strb r0, [r2]
    adds r0, r4, #0
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r2, #0x20
    adds r1, #0x20
    adds r5, #1
    cmp r5, #1
    ble .L080252B8
    mov r1, r8
    cmp r1, #2
    ble .L0802529A
    ldr r7, .L080252F8 @ =0x02033F14
    adds r0, r6, r7
    add r0, sl
    ldr r2, .L080252FC @ =0x06011000
    adds r1, r6, r2
    movs r2, #0x10
    bl CpuFastSet
    movs r3, #0x80
    lsls r3, r3, #3
    adds r0, r7, r3
    add r0, sl
    adds r0, r0, r6
    ldr r7, .L08025300 @ =0x06011400
    adds r1, r6, r7
    b .L080253E0
    .align 2, 0
.L080252F8: .4byte 0x02033F14
.L080252FC: .4byte 0x06011000
.L08025300: .4byte 0x06011400
.L08025304:
    movs r1, #0
    lsls r4, r4, #0xd
    mov sl, r4
    ldr r2, .L080253E8 @ =0x02033F14
    mov sb, r2
    lsrs r3, r5, #1
    str r3, [sp, #8]
    bics r0, r5
    lsls r0, r0, #2
    movs r7, #0xf
    mov ip, r7
    mov r2, ip
    lsls r2, r0
    mov ip, r2
.L08025320:
    movs r5, #0
    lsls r3, r1, #0xd
    adds r1, #1
    mov r8, r1
    adds r4, r3, #0
    ldr r3, [sp, #8]
    adds r0, r6, r3
    adds r0, r0, r4
    mov r7, sb
    adds r3, r0, r7
.L08025334:
    lsls r2, r5, #5
    mov r0, ip
    ldrb r1, [r3]
    ands r0, r1
    strb r0, [r3]
    movs r7, #0x80
    lsls r7, r7, #3
    adds r0, r2, r7
    adds r0, r6, r0
    ldr r1, [sp, #8]
    adds r0, r0, r1
    adds r0, r0, r4
    add r0, sb
    mov r1, ip
    ldrb r7, [r0]
    ands r1, r7
    strb r1, [r0]
    movs r1, #0x80
    lsls r1, r1, #4
    adds r0, r2, r1
    adds r0, r6, r0
    ldr r7, [sp, #8]
    adds r0, r0, r7
    adds r0, r0, r4
    add r0, sb
    mov r1, ip
    ldrb r7, [r0]
    ands r1, r7
    strb r1, [r0]
    movs r0, #0xc0
    lsls r0, r0, #4
    adds r2, r2, r0
    adds r2, r6, r2
    ldr r1, [sp, #8]
    adds r2, r2, r1
    adds r2, r2, r4
    add r2, sb
    mov r0, ip
    ldrb r7, [r2]
    ands r0, r7
    strb r0, [r2]
    adds r3, #0x20
    adds r5, #1
    cmp r5, #1
    ble .L08025334
    mov r1, r8
    cmp r1, #2
    ble .L08025320
    ldr r1, .L080253E8 @ =0x02033F14
    adds r0, r6, r1
    add r0, sl
    ldr r2, .L080253EC @ =0x06011000
    adds r1, r6, r2
    movs r2, #0x10
    bl CpuFastSet
    ldr r3, .L080253E8 @ =0x02033F14
    movs r7, #0x80
    lsls r7, r7, #3
    adds r0, r3, r7
    add r0, sl
    adds r0, r0, r6
    ldr r2, .L080253F0 @ =0x06011400
    adds r1, r6, r2
    movs r2, #0x10
    bl CpuFastSet
    ldr r3, .L080253E8 @ =0x02033F14
    movs r7, #0x80
    lsls r7, r7, #4
    adds r0, r3, r7
    add r0, sl
    adds r0, r0, r6
    ldr r2, .L080253F4 @ =0x06011800
    adds r1, r6, r2
    movs r2, #0x10
    bl CpuFastSet
    ldr r3, .L080253E8 @ =0x02033F14
    movs r7, #0xc0
    lsls r7, r7, #4
    adds r0, r3, r7
    add r0, sl
    adds r0, r0, r6
    ldr r2, .L080253F8 @ =0x06011C00
    adds r1, r6, r2
.L080253E0:
    movs r2, #0x10
    bl CpuFastSet
    b .L080254DE
    .align 2, 0
.L080253E8: .4byte 0x02033F14
.L080253EC: .4byte 0x06011000
.L080253F0: .4byte 0x06011400
.L080253F4: .4byte 0x06011800
.L080253F8: .4byte 0x06011C00
.L080253FC:
    movs r1, #0
    lsls r4, r4, #0xd
    mov sl, r4
    ldr r3, .L08025500 @ =0x02033F14
    mov sb, r3
    lsrs r7, r5, #1
    str r7, [sp, #8]
    movs r0, #1
    bics r0, r5
    lsls r0, r0, #2
    movs r2, #0xf
    mov ip, r2
    mov r3, ip
    lsls r3, r0
    mov ip, r3
.L0802541A:
    movs r5, #0
    adds r7, r1, #1
    mov r8, r7
    lsls r4, r1, #0xd
    ldr r1, [sp, #8]
    adds r0, r6, r1
    adds r0, r0, r4
    mov r2, sb
    adds r3, r0, r2
.L0802542C:
    lsls r2, r5, #5
    mov r0, ip
    ldrb r7, [r3]
    ands r0, r7
    strb r0, [r3]
    movs r1, #0x80
    lsls r1, r1, #3
    adds r0, r2, r1
    adds r0, r6, r0
    ldr r7, [sp, #8]
    adds r0, r0, r7
    adds r0, r0, r4
    add r0, sb
    mov r1, ip
    ldrb r7, [r0]
    ands r1, r7
    strb r1, [r0]
    movs r1, #0x80
    lsls r1, r1, #4
    adds r0, r2, r1
    adds r0, r6, r0
    ldr r7, [sp, #8]
    adds r0, r0, r7
    adds r0, r0, r4
    add r0, sb
    mov r1, ip
    ldrb r7, [r0]
    ands r1, r7
    strb r1, [r0]
    movs r0, #0xc0
    lsls r0, r0, #4
    adds r2, r2, r0
    adds r2, r6, r2
    ldr r1, [sp, #8]
    adds r2, r2, r1
    adds r2, r2, r4
    add r2, sb
    mov r0, ip
    ldrb r7, [r2]
    ands r0, r7
    strb r0, [r2]
    adds r3, #0x20
    adds r5, #1
    cmp r5, #3
    ble .L0802542C
    mov r1, r8
    cmp r1, #2
    ble .L0802541A
    ldr r1, .L08025500 @ =0x02033F14
    adds r0, r6, r1
    add r0, sl
    ldr r2, .L08025504 @ =0x06011000
    adds r1, r6, r2
    movs r2, #0x20
    bl CpuFastSet
    ldr r3, .L08025500 @ =0x02033F14
    movs r7, #0x80
    lsls r7, r7, #3
    adds r0, r3, r7
    add r0, sl
    adds r0, r0, r6
    ldr r2, .L08025508 @ =0x06011400
    adds r1, r6, r2
    movs r2, #0x20
    bl CpuFastSet
    ldr r3, .L08025500 @ =0x02033F14
    movs r7, #0x80
    lsls r7, r7, #4
    adds r0, r3, r7
    add r0, sl
    adds r0, r0, r6
    ldr r2, .L0802550C @ =0x06011800
    adds r1, r6, r2
    movs r2, #0x20
    bl CpuFastSet
    ldr r3, .L08025500 @ =0x02033F14
    movs r7, #0xc0
    lsls r7, r7, #4
    adds r0, r3, r7
    add r0, sl
    adds r0, r0, r6
    ldr r2, .L08025510 @ =0x06011C00
    adds r1, r6, r2
    movs r2, #0x20
    bl CpuFastSet
.L080254DE:
    ldr r3, [sp]
    cmp r3, #0x3f
    bne .L080254EE
    ldr r0, .L08025514 @ =0x02033E44
    ldr r7, [sp, #4]
    adds r0, r7, r0
    movs r1, #0xff
    strb r1, [r0]
.L080254EE:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08025500: .4byte 0x02033F14
.L08025504: .4byte 0x06011000
.L08025508: .4byte 0x06011400
.L0802550C: .4byte 0x06011800
.L08025510: .4byte 0x06011C00
.L08025514: .4byte 0x02033E44
    func_end func_0802520C

    thumb_func_start func_08025518
func_08025518: @ 0x08025518
    push {r4, r5, lr}
    bl GetGameTime
    movs r1, #0x48
    bl __umodsi3
    adds r4, r0, #0
    adds r5, r4, #0
    cmp r4, #0
    bne .L08025538
    ldr r0, .L08025570 @ =0x02033F14
    ldr r1, .L08025574 @ =0x06011000
    movs r2, #0x80
    lsls r2, r2, #4
    bl CpuFastSet
.L08025538:
    cmp r4, #0x20
    bne .L08025548
    ldr r0, .L08025578 @ =0x02035F14
    ldr r1, .L08025574 @ =0x06011000
    movs r2, #0x80
    lsls r2, r2, #4
    bl CpuFastSet
.L08025548:
    cmp r4, #0x24
    bne .L08025558
    ldr r0, .L0802557C @ =0x02037F14
    ldr r1, .L08025574 @ =0x06011000
    movs r2, #0x80
    lsls r2, r2, #4
    bl CpuFastSet
.L08025558:
    cmp r5, #0x44
    bne .L08025568
    ldr r0, .L08025578 @ =0x02035F14
    ldr r1, .L08025574 @ =0x06011000
    movs r2, #0x80
    lsls r2, r2, #4
    bl CpuFastSet
.L08025568:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08025570: .4byte 0x02033F14
.L08025574: .4byte 0x06011000
.L08025578: .4byte 0x02035F14
.L0802557C: .4byte 0x02037F14
    func_end func_08025518

    thumb_func_start ForceSyncUnitSpriteSheet
ForceSyncUnitSpriteSheet: @ 0x08025580
    push {lr}
    ldr r0, .L080255A0 @ =0x0203A3D0
    movs r1, #0
    str r1, [r0]
    bl GetGameTime
    movs r1, #0x48
    bl __umodsi3
    adds r1, r0, #0
    cmp r0, #0x43
    bgt .L080255AC
    cmp r0, #0x23
    ble .L080255A8
    ldr r0, .L080255A4 @ =0x02037F14
    b .L080255AE
    .align 2, 0
.L080255A0: .4byte 0x0203A3D0
.L080255A4: .4byte 0x02037F14
.L080255A8:
    cmp r0, #0x1f
    ble .L080255C4
.L080255AC:
    ldr r0, .L080255BC @ =0x02035F14
.L080255AE:
    ldr r1, .L080255C0 @ =0x06011000
    movs r2, #0x80
    lsls r2, r2, #6
    bl RegisterDataMove
    b .L080255D4
    .align 2, 0
.L080255BC: .4byte 0x02035F14
.L080255C0: .4byte 0x06011000
.L080255C4:
    cmp r1, #0
    blt .L080255D4
    ldr r0, .L080255D8 @ =0x02033F14
    ldr r1, .L080255DC @ =0x06011000
    movs r2, #0x80
    lsls r2, r2, #6
    bl RegisterDataMove
.L080255D4:
    pop {r0}
    bx r0
    .align 2, 0
.L080255D8: .4byte 0x02033F14
.L080255DC: .4byte 0x06011000
    func_end ForceSyncUnitSpriteSheet

    thumb_func_start func_080255E0
func_080255E0: @ 0x080255E0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl GetGameTime
    movs r1, #0x48
    bl __umodsi3
    adds r1, r0, #0
    movs r2, #0
    cmp r0, #0
    bne .L080255FA
    ldr r2, .L08025644 @ =0x02033F14
.L080255FA:
    cmp r0, #0x20
    bne .L08025600
    ldr r2, .L08025648 @ =0x02035F14
.L08025600:
    cmp r0, #0x24
    bne .L08025606
    ldr r2, .L0802564C @ =0x02037F14
.L08025606:
    cmp r1, #0x44
    bne .L0802560C
    ldr r2, .L08025648 @ =0x02035F14
.L0802560C:
    cmp r2, #0
    beq .L0802563C
    ldr r1, .L08025650 @ =0x08B93E48
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    lsls r0, r0, #5
    adds r1, r5, #0
    adds r1, #0x20
    adds r5, r0, r1
    adds r4, r0, r2
    movs r6, #3
.L08025624:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x10
    bl CpuFastSet
    movs r0, #0x80
    lsls r0, r0, #3
    adds r5, r5, r0
    adds r4, r4, r0
    subs r6, #1
    cmp r6, #0
    bge .L08025624
.L0802563C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08025644: .4byte 0x02033F14
.L08025648: .4byte 0x02035F14
.L0802564C: .4byte 0x02037F14
.L08025650: .4byte 0x08B93E48
    func_end func_080255E0

    thumb_func_start func_08025654
func_08025654: @ 0x08025654
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl GetGameTime
    movs r1, #0x48
    bl __umodsi3
    adds r1, r0, #0
    movs r2, #0
    cmp r0, #0x43
    bgt .L0802567C
    cmp r0, #0x23
    ble .L08025678
    ldr r2, .L08025674 @ =0x02037F14
    b .L0802568A
    .align 2, 0
.L08025674: .4byte 0x02037F14
.L08025678:
    cmp r0, #0x1f
    ble .L08025684
.L0802567C:
    ldr r2, .L08025680 @ =0x02035F14
    b .L0802568A
    .align 2, 0
.L08025680: .4byte 0x02035F14
.L08025684:
    cmp r1, #0
    blt .L0802568A
    ldr r2, .L080256C0 @ =0x02033F14
.L0802568A:
    cmp r2, #0
    beq .L080256BA
    ldr r1, .L080256C4 @ =0x08B93E48
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    lsls r0, r0, #5
    adds r1, r5, #0
    adds r1, #0x20
    adds r5, r0, r1
    adds r4, r0, r2
    movs r6, #3
.L080256A2:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x40
    bl RegisterDataMove
    movs r0, #0x80
    lsls r0, r0, #3
    adds r5, r5, r0
    adds r4, r4, r0
    subs r6, #1
    cmp r6, #0
    bge .L080256A2
.L080256BA:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080256C0: .4byte 0x02033F14
.L080256C4: .4byte 0x08B93E48
    func_end func_08025654

    thumb_func_start func_080256C8
func_080256C8: @ 0x080256C8
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0xc]
    movs r0, #0x80
    lsls r0, r0, #0x14
    ands r0, r1
    cmp r0, #0
    beq .L080256DC
    movs r0, #0xb
    b .L080256EE
.L080256DC:
    movs r0, #2
    ands r1, r0
    cmp r1, #0
    bne .L080256EC
    adds r0, r2, #0
    bl GetUnitSpritePalette
    b .L080256EE
.L080256EC:
    movs r0, #0xf
.L080256EE:
    pop {r1}
    bx r1
    func_end func_080256C8

    thumb_func_start GetUnitSpritePalette
GetUnitSpritePalette: @ 0x080256F4
    movs r1, #0xc0
    ldrb r0, [r0, #0xb]
    ands r1, r0
    cmp r1, #0x40
    beq .L0802571A
    cmp r1, #0x40
    bgt .L08025708
    cmp r1, #0
    beq .L08025712
    b .L08025720
.L08025708:
    cmp r1, #0x80
    beq .L08025716
    cmp r1, #0xc0
    beq .L0802571E
    b .L08025720
.L08025712:
    movs r0, #0xc
    b .L08025720
.L08025716:
    movs r0, #0xd
    b .L08025720
.L0802571A:
    movs r0, #0xe
    b .L08025720
.L0802571E:
    movs r0, #0xb
.L08025720:
    bx lr
    func_end GetUnitSpritePalette

    thumb_func_start RefreshUnitSprites
RefreshUnitSprites: @ 0x08025724
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    movs r0, #0
    mov r8, r0
    ldr r0, .L0802582C @ =0x0203A3CC
    ldr r1, .L08025830 @ =0x02039F1C
    mov r2, r8
    str r2, [r1]
    movs r2, #0x80
    lsls r2, r2, #3
    strh r2, [r1, #6]
    adds r1, #0xc
    str r1, [r0]
    movs r7, #1
.L08025744:
    adds r0, r7, #0
    bl GetUnit
    adds r6, r0, #0
    cmp r6, #0
    beq .L080257EE
    ldr r0, [r6]
    cmp r0, #0
    beq .L080257EE
    movs r0, #0
    str r0, [r6, #0x3c]
    ldr r0, [r6, #0xc]
    ldr r1, .L08025834 @ =0x00000201
    ands r0, r1
    cmp r0, #0
    bne .L080257EE
    movs r2, #0x11
    ldrsb r2, [r6, r2]
    ldr r0, .L08025838 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r6, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L080257EE
    lsls r0, r2, #4
    bl func_080258D8
    adds r5, r0, #0
    movs r0, #0x11
    ldrsb r0, [r6, r0]
    lsls r0, r0, #4
    strh r0, [r5, #6]
    movs r0, #0x10
    ldrsb r0, [r6, r0]
    lsls r0, r0, #4
    strh r0, [r5, #4]
    adds r0, r6, #0
    bl GetUnitSMSId
    bl func_08024DEC
    adds r4, r0, #0
    adds r0, r6, #0
    bl func_080256C8
    adds r4, #0x80
    movs r1, #0xf
    ands r1, r0
    lsls r1, r1, #0xc
    adds r4, r4, r1
    strh r4, [r5, #8]
    adds r0, r6, #0
    bl GetUnitSMSId
    ldr r2, .L0802583C @ =0x08C99700
    movs r1, #0x7f
    ands r1, r0
    lsls r1, r1, #3
    adds r1, r1, r2
    ldrh r0, [r1, #2]
    adds r2, r0, #0
    strb r0, [r5, #0xb]
    ldr r0, [r6, #0xc]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L080257DA
    adds r0, r2, #3
    strb r0, [r5, #0xb]
.L080257DA:
    ldr r0, [r6, #0xc]
    movs r1, #0x80
    lsls r1, r1, #0x11
    ands r0, r1
    cmp r0, #0
    beq .L080257EC
    ldrb r0, [r5, #0xb]
    adds r0, #0x40
    strb r0, [r5, #0xb]
.L080257EC:
    str r5, [r6, #0x3c]
.L080257EE:
    adds r7, #1
    cmp r7, #0xc5
    ble .L08025744
    movs r0, #0
    bl GetTrap
    adds r4, r0, #0
    ldrb r0, [r4, #2]
    cmp r0, #0
    beq .L080258B8
    ldr r1, .L08025840 @ =0xFFFFC080
    adds r6, r1, #0
    ldr r7, .L08025844 @ =0x08C99992
    movs r2, #0x28
    adds r2, r2, r7
    mov sb, r2
.L0802580E:
    cmp r0, #1
    bne .L08025882
    movs r0, #5
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L08025882
    ldrb r0, [r4, #3]
    cmp r0, #0x35
    beq .L08025852
    cmp r0, #0x35
    bgt .L08025848
    cmp r0, #0x34
    beq .L0802584E
    b .L08025864
    .align 2, 0
.L0802582C: .4byte 0x0203A3CC
.L08025830: .4byte 0x02039F1C
.L08025834: .4byte 0x00000201
.L08025838: .4byte gBmMapUnit
.L0802583C: .4byte 0x08C99700
.L08025840: .4byte 0xFFFFC080
.L08025844: .4byte 0x08C99992
.L08025848:
    cmp r0, #0x36
    beq .L08025856
    b .L08025864
.L0802584E:
    movs r0, #0x52
    b .L08025858
.L08025852:
    movs r0, #0x53
    b .L08025858
.L08025856:
    movs r0, #0x54
.L08025858:
    bl func_08024DEC
    adds r0, r0, r6
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
.L08025864:
    ldrb r1, [r4, #1]
    lsls r0, r1, #4
    bl func_080258D8
    adds r5, r0, #0
    ldrb r2, [r4, #1]
    lsls r0, r2, #4
    strh r0, [r5, #6]
    ldrb r1, [r4]
    lsls r0, r1, #4
    strh r0, [r5, #4]
    mov r2, r8
    strh r2, [r5, #8]
    ldrh r0, [r7]
    strb r0, [r5, #0xb]
.L08025882:
    ldrb r0, [r4, #2]
    cmp r0, #0xc
    bne .L080258B0
    ldrb r1, [r4, #1]
    lsls r0, r1, #4
    bl func_080258D8
    adds r5, r0, #0
    ldrb r2, [r4, #1]
    lsls r0, r2, #4
    strh r0, [r5, #6]
    ldrb r1, [r4]
    lsls r0, r1, #4
    strh r0, [r5, #4]
    movs r0, #0x57
    bl func_08024DEC
    ldr r2, .L080258D0 @ =0xFFFFB080
    adds r0, r0, r2
    strh r0, [r5, #8]
    mov r1, sb
    ldrh r0, [r1]
    strb r0, [r5, #0xb]
.L080258B0:
    adds r4, #8
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L0802580E
.L080258B8:
    ldr r0, .L080258D4 @ =0x0203A3D0
    ldr r0, [r0]
    cmp r0, #0
    beq .L080258C4
    bl ForceSyncUnitSpriteSheet
.L080258C4:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080258D0: .4byte 0xFFFFB080
.L080258D4: .4byte 0x0203A3D0
    func_end RefreshUnitSprites

    thumb_func_start func_080258D8
func_080258D8: @ 0x080258D8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r2, .L080258F4 @ =0x02039F1C
    ldr r3, .L080258F8 @ =0x0203A3CC
.L080258E0:
    ldr r1, [r2]
    cmp r1, #0
    beq .L080258FC
    movs r5, #6
    ldrsh r0, [r1, r5]
    cmp r0, r4
    blt .L080258FC
    adds r2, r1, #0
    b .L080258E0
    .align 2, 0
.L080258F4: .4byte 0x02039F1C
.L080258F8: .4byte 0x0203A3CC
.L080258FC:
    ldr r0, [r3]
    str r1, [r0]
    str r0, [r2]
    adds r1, r0, #0
    adds r1, #0xc
    str r1, [r3]
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080258D8

    thumb_func_start func_08025910
func_08025910: @ 0x08025910
    push {r4, r5, r6, lr}
    ldr r0, .L08025984 @ =0x02039F1C
    ldr r6, [r0]
    bl func_08025B54
    cmp r6, #0
    bne .L08025920
    b .L08025A92
.L08025920:
    movs r3, #0
    movs r0, #4
    ldrsh r1, [r6, r0]
    ldr r2, .L08025988 @ =gBmSt
    movs r4, #0xc
    ldrsh r0, [r2, r4]
    subs r4, r1, r0
    movs r5, #6
    ldrsh r1, [r6, r5]
    movs r5, #0xe
    ldrsh r0, [r2, r5]
    subs r5, r1, r0
    adds r1, r4, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bls .L08025946
    b .L08025A8A
.L08025946:
    adds r0, r5, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bls .L08025950
    b .L08025A8A
.L08025950:
    movs r0, #0x80
    ldrb r1, [r6, #0xb]
    ands r0, r1
    cmp r0, #0
    beq .L0802595C
    b .L08025A8A
.L0802595C:
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L0802596E
    bl GetGameTime
    adds r3, r0, #0
    movs r0, #2
    ands r3, r0
.L0802596E:
    movs r0, #0xf
    ldrb r2, [r6, #0xb]
    ands r0, r2
    cmp r0, #5
    bls .L0802597A
    b .L08025A8A
.L0802597A:
    lsls r0, r0, #2
    ldr r1, .L0802598C @ =.L08025990
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08025984: .4byte 0x02039F1C
.L08025988: .4byte gBmSt
.L0802598C: .4byte .L08025990
.L08025990: @ jump table
    .4byte .L080259A8 @ case 0
    .4byte .L080259D0 @ case 1
    .4byte .L080259F4 @ case 2
    .4byte .L08025A1C @ case 3
    .4byte .L08025A3C @ case 4
    .4byte .L08025A64 @ case 5
.L080259A8:
    adds r0, r4, r3
    movs r4, #0x80
    lsls r4, r4, #2
    adds r0, r0, r4
    ldr r1, .L080259C8 @ =0x000001FF
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r5, r2
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L080259CC @ =0x08B905B8
    ldrh r4, [r6, #8]
    movs r5, #0x80
    lsls r5, r5, #4
    b .L08025A58
    .align 2, 0
.L080259C8: .4byte 0x000001FF
.L080259CC: .4byte 0x08B905B8
.L080259D0:
    adds r0, r4, r3
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r0, r1
    subs r1, #1
    ands r0, r1
    adds r1, r5, #0
    adds r1, #0xf0
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L080259F0 @ =0x08B905D8
    ldrh r4, [r6, #8]
    movs r5, #0x80
    lsls r5, r5, #4
    b .L08025A58
    .align 2, 0
.L080259F0: .4byte 0x08B905D8
.L080259F4:
    adds r0, r3, #0
    subs r0, #8
    adds r0, r4, r0
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r0, r1
    subs r1, #1
    ands r0, r1
    adds r1, r5, #0
    adds r1, #0xf0
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025A18 @ =0x08B905C0
    ldrh r4, [r6, #8]
    movs r5, #0x80
    lsls r5, r5, #4
    b .L08025A58
    .align 2, 0
.L08025A18: .4byte 0x08B905C0
.L08025A1C:
    adds r0, r4, r3
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r0, r1
    subs r1, #1
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r5, r2
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025A38 @ =0x08B905B8
    b .L08025A52
    .align 2, 0
.L08025A38: .4byte 0x08B905B8
.L08025A3C:
    adds r0, r4, r3
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r0, r1
    subs r1, #1
    ands r0, r1
    adds r1, r5, #0
    adds r1, #0xf0
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025A60 @ =0x08B905D8
.L08025A52:
    ldrh r4, [r6, #8]
    movs r5, #0xc0
    lsls r5, r5, #4
.L08025A58:
    adds r3, r4, r5
    bl PutOamHiRam
    b .L08025A8A
    .align 2, 0
.L08025A60: .4byte 0x08B905D8
.L08025A64:
    adds r0, r3, #0
    subs r0, #8
    adds r0, r4, r0
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r0, r1
    subs r1, #1
    ands r0, r1
    adds r1, r5, #0
    adds r1, #0xf0
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025A98 @ =0x08B905C0
    ldrh r4, [r6, #8]
    movs r5, #0xc0
    lsls r5, r5, #4
    adds r3, r4, r5
    bl PutOamHiRam
.L08025A8A:
    ldr r6, [r6]
    cmp r6, #0
    beq .L08025A92
    b .L08025920
.L08025A92:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08025A98: .4byte 0x08B905C0
    func_end func_08025910

    thumb_func_start func_08025A9C
func_08025A9C: @ 0x08025A9C
    push {r4, r5, lr}
    ldr r4, .L08025B38 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    adds r0, #0x93
    ldrb r5, [r0]
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    adds r0, #0x94
    ldrb r4, [r0]
    bl GetGameTime
    movs r2, #0
    movs r1, #0x1f
    ands r1, r0
    cmp r1, #0x13
    bhi .L08025AC8
    movs r2, #1
.L08025AC8:
    cmp r5, #0xff
    beq .L08025B32
    cmp r2, #0
    beq .L08025B32
    ldr r0, .L08025B3C @ =gMapFog
    ldr r0, [r0]
    lsls r1, r4, #2
    adds r0, r1, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08025B32
    ldr r0, .L08025B40 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r1, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0x22
    beq .L08025B32
    lsls r1, r5, #4
    ldr r2, .L08025B44 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    lsls r1, r4, #4
    movs r4, #0xe
    ldrsh r0, [r2, r4]
    subs r2, r1, r0
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L08025B32
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bhi .L08025B32
    movs r1, #0x81
    lsls r1, r1, #2
    adds r0, r3, r1
    subs r1, #5
    ands r0, r1
    ldr r3, .L08025B48 @ =0x00000107
    adds r1, r2, r3
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025B4C @ =0x08B905B0
    ldr r3, .L08025B50 @ =0x00000C51
    bl PutOamHiRam
.L08025B32:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08025B38: .4byte gPlaySt
.L08025B3C: .4byte gMapFog
.L08025B40: .4byte gBmMapTerrain
.L08025B44: .4byte gBmSt
.L08025B48: .4byte 0x00000107
.L08025B4C: .4byte 0x08B905B0
.L08025B50: .4byte 0x00000C51
    func_end func_08025A9C

    thumb_func_start func_08025B54
func_08025B54: @ 0x08025B54
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    ldr r1, .L08025C2C @ =0x081C3CB8
    mov r0, sp
    movs r2, #6
    bl memcpy
    ldr r0, .L08025C30 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    adds r0, #0x92
    ldrb r0, [r0]
    str r0, [sp, #8]
    bl GetGameTime
    movs r2, #0
    movs r1, #0x1f
    ands r1, r0
    cmp r1, #0x13
    bhi .L08025B8C
    movs r2, #1
.L08025B8C:
    adds r7, r2, #0
    bl GetGameTime
    lsrs r0, r0, #3
    movs r1, #0xc
    bl __umodsi3
    str r0, [sp, #0xc]
    bl GetGameTime
    lsrs r0, r0, #4
    movs r1, #7
    bl __umodsi3
    str r0, [sp, #0x10]
    bl GetGameTime
    lsrs r0, r0, #3
    movs r1, #9
    bl __umodsi3
    mov sl, r0
    bl GetGameTime
    lsrs r0, r0, #2
    movs r1, #0x12
    bl __umodsi3
    mov sb, r0
    movs r0, #0x91
    bl CheckFlag
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08025BD4
    b .L08025F62
.L08025BD4:
    bl func_08025A9C
    movs r0, #1
    mov r8, r0
.L08025BDC:
    mov r0, r8
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    bne .L08025BEA
    b .L08025F56
.L08025BEA:
    ldr r0, [r4]
    cmp r0, #0
    bne .L08025BF2
    b .L08025F56
.L08025BF2:
    ldr r0, [r4, #0xc]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L08025BFE
    b .L08025F56
.L08025BFE:
    adds r0, r4, #0
    bl func_080265A8
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08025C0C
    b .L08025F56
.L08025C0C:
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    subs r0, #1
    lsls r6, r7, #0x18
    cmp r0, #7
    bls .L08025C20
    b .L08025DFE
.L08025C20:
    lsls r0, r0, #2
    ldr r1, .L08025C34 @ =.L08025C38
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08025C2C: .4byte 0x081C3CB8
.L08025C30: .4byte gPlaySt
.L08025C34: .4byte .L08025C38
.L08025C38: @ jump table
    .4byte .L08025C58 @ case 0
    .4byte .L08025D00 @ case 1
    .4byte .L08025CAC @ case 2
    .4byte .L08025D50 @ case 3
    .4byte .L08025DB0 @ case 4
    .4byte .L08025DB0 @ case 5
    .4byte .L08025DB0 @ case 6
    .4byte .L08025DB0 @ case 7
.L08025C58:
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025CA4 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r5, #0xe
    ldrsh r1, [r2, r5]
    subs r2, r0, r1
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    lsls r6, r7, #0x18
    cmp r1, r0
    bls .L08025C82
    b .L08025DFE
.L08025C82:
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bls .L08025C8C
    b .L08025DFE
.L08025C8C:
    movs r1, #0xff
    lsls r1, r1, #1
    adds r0, r3, r1
    adds r1, #1
    ands r0, r1
    adds r1, r2, #0
    adds r1, #0xfc
    movs r2, #0xff
    ands r1, r2
    ldr r3, .L08025CA8 @ =0x08B94114
    ldr r5, [sp, #0xc]
    b .L08025D94
    .align 2, 0
.L08025CA4: .4byte gBmSt
.L08025CA8: .4byte 0x08B94114
.L08025CAC:
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025CF8 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r5, #0xe
    ldrsh r1, [r2, r5]
    subs r2, r0, r1
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    lsls r6, r7, #0x18
    cmp r1, r0
    bls .L08025CD6
    b .L08025DFE
.L08025CD6:
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bls .L08025CE0
    b .L08025DFE
.L08025CE0:
    movs r1, #0xff
    lsls r1, r1, #1
    adds r0, r3, r1
    adds r1, #1
    ands r0, r1
    adds r1, r2, #0
    adds r1, #0xfc
    movs r2, #0xff
    ands r1, r2
    ldr r3, .L08025CFC @ =0x08B94074
    mov r5, sb
    b .L08025D94
    .align 2, 0
.L08025CF8: .4byte gBmSt
.L08025CFC: .4byte 0x08B94074
.L08025D00:
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025D44 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r5, #0xe
    ldrsh r1, [r2, r5]
    subs r2, r0, r1
    adds r0, r3, #0
    adds r0, #0x10
    movs r5, #0x80
    lsls r5, r5, #1
    lsls r6, r7, #0x18
    cmp r0, r5
    bhi .L08025DFE
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bhi .L08025DFE
    ldr r1, .L08025D48 @ =0x00000202
    adds r0, r3, r1
    subs r1, #3
    ands r0, r1
    adds r1, r2, r5
    movs r2, #0xff
    ands r1, r2
    ldr r3, .L08025D4C @ =0x08B93FD0
    ldr r5, [sp, #0x10]
    b .L08025D94
    .align 2, 0
.L08025D44: .4byte gBmSt
.L08025D48: .4byte 0x00000202
.L08025D4C: .4byte 0x08B93FD0
.L08025D50:
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025DA4 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r5, #0xe
    ldrsh r1, [r2, r5]
    subs r2, r0, r1
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    lsls r6, r7, #0x18
    cmp r1, r0
    bhi .L08025DFE
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bhi .L08025DFE
    ldr r1, .L08025DA8 @ =0x00000201
    adds r0, r3, r1
    subs r1, #2
    ands r0, r1
    adds r1, r2, #0
    adds r1, #0xfb
    movs r2, #0xff
    ands r1, r2
    ldr r3, .L08025DAC @ =0x08B94034
    mov r5, sl
.L08025D94:
    lsls r2, r5, #2
    adds r2, r2, r3
    ldr r2, [r2]
    movs r3, #0
    bl PutOamHiRam
    b .L08025DFE
    .align 2, 0
.L08025DA4: .4byte gBmSt
.L08025DA8: .4byte 0x00000201
.L08025DAC: .4byte 0x08B94034
.L08025DB0:
    lsls r0, r7, #0x18
    adds r6, r0, #0
    cmp r6, #0
    bne .L08025DBA
    b .L08025F56
.L08025DBA:
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025E70 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r5, #0xe
    ldrsh r1, [r2, r5]
    subs r2, r0, r1
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L08025DFE
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bhi .L08025DFE
    ldr r1, .L08025E74 @ =0x000001FF
    adds r0, r3, r1
    ands r0, r1
    adds r1, r2, #0
    adds r1, #0xfb
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025E78 @ =0x08B94144
    movs r3, #0
    bl PutOamHiRam
.L08025DFE:
    cmp r6, #0
    bne .L08025E04
    b .L08025F56
.L08025E04:
    ldr r0, [r4, #0xc]
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08025E8C
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025E70 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r5, #0xe
    ldrsh r1, [r2, r5]
    subs r2, r0, r1
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bls .L08025E36
    b .L08025F56
.L08025E36:
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bls .L08025E40
    b .L08025F56
.L08025E40:
    ldr r1, .L08025E7C @ =0x00000209
    adds r0, r3, r1
    subs r1, #0xa
    ands r0, r1
    ldr r3, .L08025E80 @ =0x00000107
    adds r1, r2, r3
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025E84 @ =0x08B905B0
    ldrb r4, [r4, #0x1b]
    lsrs r3, r4, #6
    lsls r3, r3, #1
    mov r5, sp
    adds r4, r5, r3
    movs r3, #0xf
    ldrh r4, [r4]
    ands r3, r4
    lsls r3, r3, #0xc
    ldr r4, .L08025E88 @ =0x00000803
    adds r3, r3, r4
    bl PutOamHiRam
    b .L08025F56
    .align 2, 0
.L08025E70: .4byte gBmSt
.L08025E74: .4byte 0x000001FF
.L08025E78: .4byte 0x08B94144
.L08025E7C: .4byte 0x00000209
.L08025E80: .4byte 0x00000107
.L08025E84: .4byte 0x08B905B0
.L08025E88: .4byte 0x00000803
.L08025E8C:
    movs r0, #0xc0
    ldrb r1, [r4, #0xb]
    ands r0, r1
    ldr r2, [r4]
    cmp r0, #0
    beq .L08025F08
    ldr r0, [r4, #4]
    ldr r1, [r2, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #8
    ands r1, r0
    cmp r1, #0
    beq .L08025F08
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025EF4 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r4, #0xe
    ldrsh r1, [r2, r4]
    subs r2, r0, r1
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L08025F56
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bhi .L08025F56
    ldr r5, .L08025EF8 @ =0x00000209
    adds r0, r3, r5
    ldr r1, .L08025EFC @ =0x000001FF
    ands r0, r1
    ldr r3, .L08025F00 @ =0x00000107
    adds r1, r2, r3
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025F04 @ =0x08B905B0
    movs r3, #0x81
    lsls r3, r3, #4
    bl PutOamHiRam
    b .L08025F56
    .align 2, 0
.L08025EF4: .4byte gBmSt
.L08025EF8: .4byte 0x00000209
.L08025EFC: .4byte 0x000001FF
.L08025F00: .4byte 0x00000107
.L08025F04: .4byte 0x08B905B0
.L08025F08:
    ldr r5, [sp, #8]
    ldrb r2, [r2, #4]
    cmp r5, r2
    bne .L08025F56
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r2, .L08025F74 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r3, r1, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r4, #0xe
    ldrsh r1, [r2, r4]
    subs r2, r0, r1
    adds r1, r3, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L08025F56
    adds r0, r2, #0
    adds r0, #0x10
    cmp r0, #0xb0
    bhi .L08025F56
    ldr r5, .L08025F78 @ =0x00000209
    adds r0, r3, r5
    ldr r1, .L08025F7C @ =0x000001FF
    ands r0, r1
    ldr r3, .L08025F80 @ =0x00000107
    adds r1, r2, r3
    movs r2, #0xff
    ands r1, r2
    ldr r2, .L08025F84 @ =0x08B905B0
    ldr r3, .L08025F88 @ =0x00000811
    bl PutOamHiRam
.L08025F56:
    movs r4, #1
    add r8, r4
    mov r5, r8
    cmp r5, #0xbf
    bgt .L08025F62
    b .L08025BDC
.L08025F62:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08025F74: .4byte gBmSt
.L08025F78: .4byte 0x00000209
.L08025F7C: .4byte 0x000001FF
.L08025F80: .4byte 0x00000107
.L08025F84: .4byte 0x08B905B0
.L08025F88: .4byte 0x00000811
    func_end func_08025B54

    thumb_func_start func_08025F8C
func_08025F8C: @ 0x08025F8C
    ldr r1, .L08025F94 @ =gBmSt
    ldr r0, .L08025F98 @ =0x0000FFFF
    strh r0, [r1, #0x18]
    bx lr
    .align 2, 0
.L08025F94: .4byte gBmSt
.L08025F98: .4byte 0x0000FFFF
    func_end func_08025F8C

    thumb_func_start ResetUnitSpriteHover
ResetUnitSpriteHover: @ 0x08025F9C
    ldr r1, .L08025FA4 @ =0x0203A3D4
    movs r0, #0
    str r0, [r1]
    bx lr
    .align 2, 0
.L08025FA4: .4byte 0x0203A3D4
    func_end ResetUnitSpriteHover

    thumb_func_start UnitSpriteHoverUpdate
UnitSpriteHoverUpdate: @ 0x08025FA8
    push {r4, lr}
    ldr r2, .L0802600C @ =gBmSt
    movs r1, #0x16
    ldrsh r0, [r2, r1]
    ldr r1, .L08026010 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r3, #0x14
    ldrsh r1, [r2, r3]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L08026018
    ldr r0, [r4, #0xc]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L08026018
    movs r0, #0xc0
    ldrb r1, [r4, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L08026018
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #4
    beq .L08026018
    cmp r1, #2
    beq .L08026018
    ldr r1, .L08026014 @ =0x0203A3D4
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    cmp r0, #5
    bne .L08026018
    adds r0, r4, #0
    bl StartMu
    adds r0, r4, #0
    bl HideUnitSprite
    b .L08026052
    .align 2, 0
.L0802600C: .4byte gBmSt
.L08026010: .4byte gBmMapUnit
.L08026014: .4byte 0x0203A3D4
.L08026018:
    ldr r2, .L08026058 @ =gBmSt
    ldr r1, [r2, #0x18]
    ldr r0, [r2, #0x14]
    cmp r1, r0
    beq .L08026052
    ldr r1, .L0802605C @ =0x0203A3D4
    movs r0, #0
    str r0, [r1]
    movs r3, #0x1a
    ldrsh r0, [r2, r3]
    ldr r1, .L08026060 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r3, #0x18
    ldrsh r1, [r2, r3]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L08026052
    bl EndAllMus
    adds r0, r4, #0
    bl ShowUnitSprite
.L08026052:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08026058: .4byte gBmSt
.L0802605C: .4byte 0x0203A3D4
.L08026060: .4byte gBmMapUnit
    func_end UnitSpriteHoverUpdate

    thumb_func_start IsUnitSpriteHoverEnabledAt
IsUnitSpriteHoverEnabledAt: @ 0x08026064
    push {lr}
    ldr r2, .L080260A8 @ =gBmMapUnit
    ldr r2, [r2]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r1, [r1]
    adds r1, r1, r0
    ldrb r0, [r1]
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L080260AC
    ldr r0, [r2, #0xc]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    bne .L080260AC
    movs r0, #0xc0
    ldrb r1, [r2, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L080260AC
    adds r0, r2, #0
    adds r0, #0x30
    movs r1, #0xf
    ldrb r0, [r0]
    ands r1, r0
    cmp r1, #4
    beq .L080260AC
    cmp r1, #2
    beq .L080260AC
    movs r0, #1
    b .L080260AE
    .align 2, 0
.L080260A8: .4byte gBmMapUnit
.L080260AC:
    movs r0, #0
.L080260AE:
    pop {r1}
    bx r1
    func_end IsUnitSpriteHoverEnabledAt

    thumb_func_start func_080260B4
func_080260B4: @ 0x080260B4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov sb, r0
    mov r8, r1
    adds r7, r2, #0
    adds r4, r3, #0
    adds r0, r4, #0
    bl GetUnitSMSId
    adds r5, r0, #0
    bl func_08024DEC
    adds r6, r0, #0
    mov r1, r8
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L0802618A
    adds r0, r7, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L0802618A
    ldr r1, .L08026104 @ =0x08C99700
    movs r0, #0x7f
    ands r0, r5
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #2]
    cmp r0, #1
    beq .L08026138
    cmp r0, #1
    bgt .L08026108
    cmp r0, #0
    beq .L0802610E
    b .L0802618A
    .align 2, 0
.L08026104: .4byte 0x08C99700
.L08026108:
    cmp r0, #2
    beq .L08026164
    b .L0802618A
.L0802610E:
    adds r0, r4, #0
    bl func_080256C8
    movs r1, #0xf
    ands r1, r0
    lsls r1, r1, #0xc
    movs r2, #0x88
    lsls r2, r2, #4
    adds r0, r6, r2
    adds r1, r1, r0
    ldr r3, .L08026134 @ =0x08B905B8
    str r1, [sp]
    mov r0, sb
    mov r1, r8
    adds r2, r7, #0
    bl PutSprite
    b .L0802618A
    .align 2, 0
.L08026134: .4byte 0x08B905B8
.L08026138:
    adds r0, r4, #0
    bl func_080256C8
    movs r1, #0xf
    ands r1, r0
    lsls r1, r1, #0xc
    movs r2, #0x88
    lsls r2, r2, #4
    adds r0, r6, r2
    adds r1, r1, r0
    adds r2, r7, #0
    subs r2, #0x10
    ldr r3, .L08026160 @ =0x08B905D8
    str r1, [sp]
    mov r0, sb
    mov r1, r8
    bl PutSprite
    b .L0802618A
    .align 2, 0
.L08026160: .4byte 0x08B905D8
.L08026164:
    adds r0, r4, #0
    bl func_080256C8
    movs r4, #0xf
    ands r4, r0
    lsls r4, r4, #0xc
    movs r1, #0x88
    lsls r1, r1, #4
    adds r0, r6, r1
    adds r4, r4, r0
    mov r1, r8
    subs r1, #8
    adds r2, r7, #0
    subs r2, #0x10
    ldr r3, .L08026198 @ =0x08B905C0
    str r4, [sp]
    mov r0, sb
    bl PutSprite
.L0802618A:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08026198: .4byte 0x08B905C0
    func_end func_080260B4

    thumb_func_start func_0802619C
func_0802619C: @ 0x0802619C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov sb, r0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r0, [sp, #0x20]
    lsls r3, r3, #0x10
    lsrs r7, r3, #0x10
    bl GetClassSMSId
    mov r8, r0
    bl func_08024DEC
    adds r4, r0, #0
    adds r4, #0x80
    adds r1, r6, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L0802623C
    adds r0, r5, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L0802623C
    ldr r1, .L080261F0 @ =0x08C99700
    movs r0, #0x7f
    mov r2, r8
    ands r0, r2
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #2]
    cmp r0, #1
    beq .L08026210
    cmp r0, #1
    bgt .L080261F4
    cmp r0, #0
    beq .L080261FA
    b .L0802623C
    .align 2, 0
.L080261F0: .4byte 0x08C99700
.L080261F4:
    cmp r0, #2
    beq .L08026228
    b .L0802623C
.L080261FA:
    ldr r3, .L0802620C @ =0x08B905B8
    adds r0, r7, r4
    str r0, [sp]
    mov r0, sb
    adds r1, r6, #0
    adds r2, r5, #0
    bl PutSprite
    b .L0802623C
    .align 2, 0
.L0802620C: .4byte 0x08B905B8
.L08026210:
    adds r2, r5, #0
    subs r2, #0x10
    ldr r3, .L08026224 @ =0x08B905D8
    adds r0, r7, r4
    str r0, [sp]
    mov r0, sb
    adds r1, r6, #0
    bl PutSprite
    b .L0802623C
    .align 2, 0
.L08026224: .4byte 0x08B905D8
.L08026228:
    adds r1, r6, #0
    subs r1, #8
    adds r2, r5, #0
    subs r2, #0x10
    ldr r3, .L0802624C @ =0x08B905C0
    adds r0, r7, r4
    str r0, [sp]
    mov r0, sb
    bl PutSprite
.L0802623C:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802624C: .4byte 0x08B905C0
    func_end func_0802619C

    thumb_func_start func_08026250
func_08026250: @ 0x08026250
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r0
    adds r5, r1, #0
    adds r4, r2, #0
    adds r0, r3, #0
    bl GetClassSMSId
    adds r6, r0, #0
    bl func_08024DEC
    adds r7, r0, #0
    adds r7, #0x80
    adds r1, r5, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L080262F4
    adds r0, r4, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L080262F4
    ldr r1, .L0802629C @ =0x08C99700
    movs r0, #0x7f
    ands r0, r6
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #2]
    cmp r0, #1
    beq .L080262B4
    cmp r0, #1
    bgt .L080262A0
    cmp r0, #0
    beq .L080262A6
    b .L080262F4
    .align 2, 0
.L0802629C: .4byte 0x08C99700
.L080262A0:
    cmp r0, #2
    beq .L080262D4
    b .L080262F4
.L080262A6:
    movs r0, #0x80
    lsls r0, r0, #4
    adds r2, r4, r0
    ldr r3, .L080262B0 @ =0x08B905B8
    b .L080262C4
    .align 2, 0
.L080262B0: .4byte 0x08B905B8
.L080262B4:
    adds r2, r4, #0
    subs r2, #0x10
    movs r0, #0xff
    ands r2, r0
    movs r0, #0x80
    lsls r0, r0, #4
    adds r2, r2, r0
    ldr r3, .L080262D0 @ =0x08B905D8
.L080262C4:
    str r7, [sp]
    mov r0, r8
    adds r1, r5, #0
    bl PutSpriteExt
    b .L080262F4
    .align 2, 0
.L080262D0: .4byte 0x08B905D8
.L080262D4:
    adds r1, r5, #0
    subs r1, #8
    ldr r0, .L08026300 @ =0x000001FF
    ands r1, r0
    adds r2, r4, #0
    subs r2, #0x10
    movs r0, #0xff
    ands r2, r0
    movs r0, #0x80
    lsls r0, r0, #4
    adds r2, r2, r0
    ldr r3, .L08026304 @ =0x08B905C0
    str r7, [sp]
    mov r0, r8
    bl PutSpriteExt
.L080262F4:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08026300: .4byte 0x000001FF
.L08026304: .4byte 0x08B905C0
    func_end func_08026250

    thumb_func_start func_08026308
func_08026308: @ 0x08026308
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r0, [sp, #0x1c]
    ldr r4, [sp, #0x20]
    lsls r3, r3, #0x10
    lsrs r7, r3, #0x10
    bl GetClassSMSId
    adds r2, r0, #0
    ldr r0, .L0802635C @ =0x08B93E48
    lsls r4, r4, #2
    adds r4, r4, r0
    ldr r0, [r4]
    adds r4, r0, #1
    adds r1, r6, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L08026390
    adds r0, r5, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L08026390
    ldr r1, .L08026360 @ =0x08C99700
    movs r0, #0x7f
    ands r0, r2
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #2]
    cmp r0, #0
    blt .L08026390
    cmp r0, #1
    ble .L08026364
    cmp r0, #2
    beq .L0802637C
    b .L08026390
    .align 2, 0
.L0802635C: .4byte 0x08B93E48
.L08026360: .4byte 0x08C99700
.L08026364:
    adds r2, r5, #0
    subs r2, #0x10
    ldr r3, .L08026378 @ =0x08B905D8
    adds r0, r7, r4
    str r0, [sp]
    mov r0, r8
    adds r1, r6, #0
    bl PutSprite
    b .L08026390
    .align 2, 0
.L08026378: .4byte 0x08B905D8
.L0802637C:
    adds r1, r6, #0
    subs r1, #8
    adds r2, r5, #0
    subs r2, #0x10
    ldr r3, .L0802639C @ =0x08B905C0
    adds r0, r7, r4
    str r0, [sp]
    mov r0, r8
    bl PutSprite
.L08026390:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802639C: .4byte 0x08B905C0
    func_end func_08026308

    thumb_func_start func_080263A0
func_080263A0: @ 0x080263A0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov sb, r0
    mov r8, r1
    adds r6, r2, #0
    adds r7, r3, #0
    ldr r0, [sp, #0x20]
    bl GetUnitSMSId
    adds r4, r0, #0
    bl func_08024DEC
    adds r5, r0, #0
    adds r5, #0x80
    mov r1, r8
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L0802646A
    adds r0, r6, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L0802646A
    ldr r1, .L080263F0 @ =0x08C99700
    movs r0, #0x7f
    ands r0, r4
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #2]
    cmp r0, #1
    beq .L08026420
    cmp r0, #1
    bgt .L080263F4
    cmp r0, #0
    beq .L080263FA
    b .L0802646A
    .align 2, 0
.L080263F0: .4byte 0x08C99700
.L080263F4:
    cmp r0, #2
    beq .L08026448
    b .L0802646A
.L080263FA:
    ldr r0, [sp, #0x20]
    bl GetUnitSpritePalette
    movs r1, #0xf
    ands r1, r0
    lsls r1, r1, #0xc
    adds r1, r7, r1
    adds r1, r1, r5
    ldr r3, .L0802641C @ =0x08B905B8
    str r1, [sp]
    mov r0, sb
    mov r1, r8
    adds r2, r6, #0
    bl PutSprite
    b .L0802646A
    .align 2, 0
.L0802641C: .4byte 0x08B905B8
.L08026420:
    ldr r0, [sp, #0x20]
    bl GetUnitSpritePalette
    movs r1, #0xf
    ands r1, r0
    lsls r1, r1, #0xc
    adds r1, r7, r1
    adds r1, r1, r5
    adds r2, r6, #0
    subs r2, #0x10
    ldr r3, .L08026444 @ =0x08B905D8
    str r1, [sp]
    mov r0, sb
    mov r1, r8
    bl PutSprite
    b .L0802646A
    .align 2, 0
.L08026444: .4byte 0x08B905D8
.L08026448:
    ldr r0, [sp, #0x20]
    bl GetUnitSpritePalette
    movs r4, #0xf
    ands r4, r0
    lsls r4, r4, #0xc
    adds r4, r7, r4
    adds r4, r4, r5
    mov r1, r8
    subs r1, #8
    adds r2, r6, #0
    subs r2, #0x10
    ldr r3, .L08026478 @ =0x08B905C0
    str r4, [sp]
    mov r0, sb
    bl PutSprite
.L0802646A:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08026478: .4byte 0x08B905C0
    func_end func_080263A0

    thumb_func_start func_0802647C
func_0802647C: @ 0x0802647C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov sb, r0
    adds r7, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r0, [sp, #0x20]
    bl GetUnitSMSId
    adds r5, r0, #0
    bl func_08024DEC
    adds r4, r0, #0
    adds r4, #0x80
    adds r1, r7, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L08026550
    adds r0, r6, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L08026550
    ldr r1, .L080264CC @ =0x08C99700
    movs r0, #0x7f
    ands r0, r5
    lsls r0, r0, #3
    adds r0, r0, r1
    ldrh r0, [r0, #2]
    cmp r0, #1
    beq .L08026500
    cmp r0, #1
    bgt .L080264D0
    cmp r0, #0
    beq .L080264D6
    b .L08026550
    .align 2, 0
.L080264CC: .4byte 0x08C99700
.L080264D0:
    cmp r0, #2
    beq .L0802652C
    b .L08026550
.L080264D6:
    ldr r3, .L080264F8 @ =0x08B94152
    add r4, r8
    str r4, [sp]
    mov r0, sb
    adds r1, r7, #0
    adds r2, r6, #0
    bl PutSprite
    ldr r3, .L080264FC @ =0x08B9416A
    str r4, [sp]
    mov r0, sb
    adds r1, r7, #0
    adds r2, r6, #0
    bl PutSprite
    b .L08026550
    .align 2, 0
.L080264F8: .4byte 0x08B94152
.L080264FC: .4byte 0x08B9416A
.L08026500:
    adds r5, r6, #0
    subs r5, #0x10
    ldr r3, .L08026524 @ =0x08B9415A
    add r4, r8
    str r4, [sp]
    mov r0, sb
    adds r1, r7, #0
    adds r2, r5, #0
    bl PutSprite
    ldr r3, .L08026528 @ =0x08B94172
    str r4, [sp]
    mov r0, sb
    adds r1, r7, #0
    adds r2, r5, #0
    bl PutSprite
    b .L08026550
    .align 2, 0
.L08026524: .4byte 0x08B9415A
.L08026528: .4byte 0x08B94172
.L0802652C:
    adds r5, r7, #0
    subs r5, #8
    subs r6, #0x10
    ldr r3, .L08026560 @ =0x08B94162
    add r4, r8
    str r4, [sp]
    mov r0, sb
    adds r1, r5, #0
    adds r2, r6, #0
    bl PutSprite
    ldr r3, .L08026564 @ =0x08B9417A
    str r4, [sp]
    mov r0, sb
    adds r1, r5, #0
    adds r2, r6, #0
    bl PutSprite
.L08026550:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08026560: .4byte 0x08B94162
.L08026564: .4byte 0x08B9417A
    func_end func_0802647C

    thumb_func_start func_08026568
func_08026568: @ 0x08026568
    ldr r1, .L08026570 @ =0x02039F1C
    movs r0, #0
    str r0, [r1]
    bx lr
    .align 2, 0
.L08026570: .4byte 0x02039F1C
    func_end func_08026568

    thumb_func_start HideUnitSprite
HideUnitSprite: @ 0x08026574
    push {r4, lr}
    adds r4, r0, #0
    cmp r4, #0
    bne .L08026580
    bl RefreshUnitSprites
.L08026580:
    ldr r1, [r4, #0x3c]
    cmp r1, #0
    beq .L08026592
    movs r2, #0x80
    rsbs r2, r2, #0
    adds r0, r2, #0
    ldrb r2, [r1, #0xb]
    orrs r0, r2
    strb r0, [r1, #0xb]
.L08026592:
    pop {r4}
    pop {r0}
    bx r0
    func_end HideUnitSprite

    thumb_func_start ShowUnitSprite
ShowUnitSprite: @ 0x08026598
    ldr r1, [r0, #0x3c]
    cmp r1, #0
    beq .L080265A6
    movs r0, #0x7f
    ldrb r2, [r1, #0xb]
    ands r0, r2
    strb r0, [r1, #0xb]
.L080265A6:
    bx lr
    func_end ShowUnitSprite

    thumb_func_start func_080265A8
func_080265A8: @ 0x080265A8
    ldr r1, [r0, #0x3c]
    cmp r1, #0
    beq .L080265BC
    movs r0, #0x80
    rsbs r0, r0, #0
    ldrb r1, [r1, #0xb]
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b .L080265BE
.L080265BC:
    movs r0, #0x80
.L080265BE:
    bx lr
    func_end func_080265A8

    thumb_func_start func_080265C0
func_080265C0: @ 0x080265C0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    adds r5, r1, #0
    mov sb, r2
    ldr r0, .L08026624 @ =0x08B93F18
    lsls r3, r3, #1
    adds r3, r3, r0
    ldrh r6, [r3]
    movs r3, #0
    cmp r3, sb
    bge .L08026618
    movs r0, #7
    ands r0, r6
    lsls r0, r0, #2
    movs r1, #0xf
    mov ip, r1
    mov r7, ip
    lsls r7, r0
    mov ip, r7
.L080265EC:
    adds r4, r3, #1
    cmp r5, #0
    ble .L08026612
    mov r0, ip
    mvns r2, r0
    asrs r1, r6, #3
    lsls r1, r1, #2
    lsls r0, r3, #0xa
    adds r3, r5, #0
    adds r0, r0, r1
    mov r7, r8
    adds r1, r7, r0
.L08026604:
    ldr r0, [r1]
    ands r0, r2
    str r0, [r1]
    adds r1, #0x20
    subs r3, #1
    cmp r3, #0
    bne .L08026604
.L08026612:
    adds r3, r4, #0
    cmp r3, sb
    blt .L080265EC
.L08026618:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08026624: .4byte 0x08B93F18
    func_end func_080265C0
