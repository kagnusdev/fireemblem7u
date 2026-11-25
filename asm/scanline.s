    .include "asm_prelude.inc"

    thumb_func_start func_0807685C
func_0807685C: @ 0x0807685C
    push {r7, lr}
    mov r7, sp
    ldr r1, .L0807688C @ =0x0203E160
    adds r0, r1, #0
    bl func_080770F0
    ldr r1, .L08076890 @ =0x0203E3E0
    adds r0, r1, #0
    bl func_080770F0
    ldr r0, .L08076894 @ =0x0203E660
    ldr r1, .L0807688C @ =0x0203E160
    str r1, [r0]
    ldr r0, .L08076894 @ =0x0203E660
    ldr r1, .L08076890 @ =0x0203E3E0
    str r1, [r0, #4]
    ldr r0, .L08076898 @ =0x0203E668
    ldr r1, .L08076894 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807688C: .4byte 0x0203E160
.L08076890: .4byte 0x0203E3E0
.L08076894: .4byte 0x0203E660
.L08076898: .4byte 0x0203E668
    func_end func_0807685C

    thumb_func_start func_0807689C
func_0807689C: @ 0x0807689C
    push {r7, lr}
    mov r7, sp
    ldr r0, .L080769C4 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x20
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080769C4 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0xbf
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080769C4 @ =gDispIo
    ldrb r1, [r0, #1]
    movs r2, #0x7f
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0, #1]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2d
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x31
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x2c
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xf0
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x30
    ldrb r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    movs r3, #0xa0
    adds r1, r2, #0
    orrs r1, r3
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0xfe
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0xfd
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0xfb
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0xf7
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x34
    ldrb r1, [r0]
    movs r2, #0xef
    ands r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #1
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #2
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r0, .L080769C4 @ =gDispIo
    adds r1, r0, #0
    adds r0, #0x36
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    adds r2, r1, #0
    strb r2, [r0]
    ldr r1, .L080769C8 @ =func_08076A10
    adds r0, r1, #0
    bl SetOnHBlankA
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080769C4: .4byte gDispIo
.L080769C8: .4byte func_08076A10
    func_end func_0807689C

    thumb_func_start func_080769CC
func_080769CC: @ 0x080769CC
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, .L080769FC @ =0x0203E660
    ldr r1, [r0, #4]
    adds r0, r1, #0
    bl func_080770F0
    ldr r1, .L080769FC @ =0x0203E660
    ldr r0, [r1, #4]
    ldr r2, [r7, #4]
    ldr r3, [r7, #8]
    ldr r1, [r7]
    bl func_080771BC
    bl func_080770C8
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080769FC: .4byte 0x0203E660
    func_end func_080769CC

    thumb_func_start func_08076A00
func_08076A00: @ 0x08076A00
    push {r7, lr}
    mov r7, sp
    movs r0, #0
    bl SetOnHBlankA
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08076A00

    thumb_func_start func_08076A10
func_08076A10: @ 0x08076A10
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08076A38 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08076A44
    ldr r0, .L08076A3C @ =0x0203E668
    ldr r1, .L08076A40 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08076A52
    .align 2, 0
.L08076A38: .4byte 0x04000006
.L08076A3C: .4byte 0x0203E668
.L08076A40: .4byte 0x0203E660
.L08076A44:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08076A52:
    ldr r0, .L08076A70 @ =0x04000040
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08076A74 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076A70: .4byte 0x04000040
.L08076A74: .4byte 0x0203E668
    func_end func_08076A10

    thumb_func_start func_08076A78
func_08076A78: @ 0x08076A78
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08076AA0 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08076AAC
    ldr r0, .L08076AA4 @ =0x0203E668
    ldr r1, .L08076AA8 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08076ABA
    .align 2, 0
.L08076AA0: .4byte 0x04000006
.L08076AA4: .4byte 0x0203E668
.L08076AA8: .4byte 0x0203E660
.L08076AAC:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08076ABA:
    ldr r0, .L08076AF0 @ =0x04000040
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08076AF4 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    ldr r0, .L08076AF8 @ =0x04000018
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08076AF4 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076AF0: .4byte 0x04000040
.L08076AF4: .4byte 0x0203E668
.L08076AF8: .4byte 0x04000018
    func_end func_08076A78

    thumb_func_start func_08076AFC
func_08076AFC: @ 0x08076AFC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08076B24 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08076B30
    ldr r0, .L08076B28 @ =0x0203E668
    ldr r1, .L08076B2C @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08076B3E
    .align 2, 0
.L08076B24: .4byte 0x04000006
.L08076B28: .4byte 0x0203E668
.L08076B2C: .4byte 0x0203E660
.L08076B30:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08076B3E:
    ldr r0, .L08076B74 @ =0x05000022
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08076B78 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    ldr r0, .L08076B7C @ =0x05000042
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08076B78 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076B74: .4byte 0x05000022
.L08076B78: .4byte 0x0203E668
.L08076B7C: .4byte 0x05000042
    func_end func_08076AFC

    thumb_func_start func_08076B80
func_08076B80: @ 0x08076B80
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08076BA8 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08076BB4
    ldr r0, .L08076BAC @ =0x0203E668
    ldr r1, .L08076BB0 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08076BC2
    .align 2, 0
.L08076BA8: .4byte 0x04000006
.L08076BAC: .4byte 0x0203E668
.L08076BB0: .4byte 0x0203E660
.L08076BB4:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08076BC2:
    ldr r0, .L08076BE0 @ =0x04000052
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08076BE4 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076BE0: .4byte 0x04000052
.L08076BE4: .4byte 0x0203E668
    func_end func_08076B80

    thumb_func_start func_08076BE8
func_08076BE8: @ 0x08076BE8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08076C10 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08076C1C
    ldr r0, .L08076C14 @ =0x0203E668
    ldr r1, .L08076C18 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08076C2A
    .align 2, 0
.L08076C10: .4byte 0x04000006
.L08076C14: .4byte 0x0203E668
.L08076C18: .4byte 0x0203E660
.L08076C1C:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08076C2A:
    ldr r0, .L08076C48 @ =0x04000054
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08076C4C @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076C48: .4byte 0x04000054
.L08076C4C: .4byte 0x0203E668
    func_end func_08076BE8

    thumb_func_start func_08076C50
func_08076C50: @ 0x08076C50
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0xc
    add r7, sp, #4
    adds r5, r0, #0
    adds r4, r1, #0
    adds r1, r2, #0
    adds r0, r3, #0
    adds r2, r7, #0
    adds r3, r5, #0
    strh r3, [r2]
    adds r2, r7, #2
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #4
    strh r1, [r2]
    adds r1, r7, #6
    strh r0, [r1]
    ldr r1, .L08076D84 @ =0x0203E660
    ldr r0, [r1, #4]
    adds r2, r7, #0
    ldrh r1, [r2]
    adds r3, r7, #2
    ldrh r2, [r3]
    adds r4, r7, #4
    ldrh r3, [r4]
    adds r4, r7, #4
    ldrh r5, [r4]
    movs r6, #0x1f
    adds r4, r5, #0
    ands r4, r6
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    lsrs r5, r4, #1
    adds r4, r5, #0
    movs r5, #0x1f
    ands r4, r5
    adds r5, r7, #4
    ldrh r6, [r5]
    movs r5, #0xf8
    lsls r5, r5, #2
    mov r8, r5
    mov r5, r8
    ands r5, r6
    mov r8, r5
    mov r5, r8
    lsls r6, r5, #0x10
    lsrs r5, r6, #0x10
    lsrs r6, r5, #1
    adds r5, r6, #0
    movs r6, #0xf8
    lsls r6, r6, #2
    ands r5, r6
    orrs r4, r5
    adds r5, r7, #4
    ldrh r6, [r5]
    movs r5, #0xf8
    lsls r5, r5, #7
    mov r8, r5
    mov r5, r8
    ands r5, r6
    mov r8, r5
    mov r5, r8
    lsls r6, r5, #0x10
    lsrs r5, r6, #0x10
    lsrs r6, r5, #1
    adds r5, r6, #0
    movs r6, #0xf8
    lsls r6, r6, #7
    ands r5, r6
    orrs r4, r5
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    str r4, [sp]
    bl func_080772A0
    ldr r0, .L08076D84 @ =0x0203E660
    ldr r1, [r0, #4]
    movs r2, #0xa0
    lsls r2, r2, #1
    adds r0, r1, r2
    adds r2, r7, #0
    ldrh r1, [r2]
    adds r3, r7, #2
    ldrh r2, [r3]
    adds r4, r7, #6
    ldrh r3, [r4]
    adds r4, r7, #6
    ldrh r5, [r4]
    movs r6, #0x1f
    adds r4, r5, #0
    ands r4, r6
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    lsrs r5, r4, #1
    adds r4, r5, #0
    movs r5, #0x1f
    ands r4, r5
    adds r5, r7, #6
    ldrh r6, [r5]
    movs r5, #0xf8
    lsls r5, r5, #2
    mov r8, r5
    mov r5, r8
    ands r5, r6
    mov r8, r5
    mov r5, r8
    lsls r6, r5, #0x10
    lsrs r5, r6, #0x10
    lsrs r6, r5, #1
    adds r5, r6, #0
    movs r6, #0xf8
    lsls r6, r6, #2
    ands r5, r6
    orrs r4, r5
    adds r5, r7, #6
    ldrh r6, [r5]
    movs r5, #0xf8
    lsls r5, r5, #7
    mov r8, r5
    mov r5, r8
    ands r5, r6
    mov r8, r5
    mov r5, r8
    lsls r6, r5, #0x10
    lsrs r5, r6, #0x10
    lsrs r6, r5, #1
    adds r5, r6, #0
    movs r6, #0xf8
    lsls r6, r6, #7
    ands r5, r6
    orrs r4, r5
    adds r6, r4, #0
    lsls r5, r6, #0x10
    lsrs r4, r5, #0x10
    str r4, [sp]
    bl func_080772A0
    bl func_080770C8
    ldr r1, .L08076D88 @ =func_08076AFC
    adds r0, r1, #0
    bl SetOnHBlankA
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08076D84: .4byte 0x0203E660
.L08076D88: .4byte func_08076AFC
    func_end func_08076C50

    thumb_func_start func_08076D8C
func_08076D8C: @ 0x08076D8C
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L08076DB4 @ =0x0203E660
    ldr r1, [r0, #4]
    adds r0, r1, #0
    bl func_080770F0
.L08076DA4:
    ldr r0, [r7, #0x1c]
    ldrb r1, [r0]
    cmp r1, #0xff
    beq .L08076DB8
    ldr r0, [r7, #4]
    cmp r0, #0
    bge .L08076DBA
    b .L08076DB8
    .align 2, 0
.L08076DB4: .4byte 0x0203E660
.L08076DB8:
    b .L08076E08
.L08076DBA:
    ldr r0, [r7, #0x1c]
    ldrb r1, [r0]
    ldr r2, [r7, #8]
    adds r0, r1, #0
    muls r0, r2, r0
    ldr r1, [r7, #0xc]
    bl Div
    str r0, [r7, #0x10]
    ldr r0, [r7, #0x1c]
    adds r1, r0, #1
    str r1, [r7, #0x1c]
    ldr r0, [r7, #0x10]
    cmp r0, #0
    ble .L08076DFA
    ldr r1, .L08076E04 @ =0x0203E660
    ldr r0, [r1, #4]
    ldr r1, [r7]
    ldr r3, [r7, #0x10]
    adds r2, r1, r3
    subs r1, r2, #1
    ldr r2, [r7, #4]
    bl func_08077174
    ldr r1, .L08076E04 @ =0x0203E660
    ldr r0, [r1, #4]
    ldr r1, [r7]
    ldr r2, [r7, #0x10]
    subs r1, r1, r2
    ldr r2, [r7, #4]
    bl func_0807712C
.L08076DFA:
    ldr r0, [r7, #4]
    subs r1, r0, #1
    str r1, [r7, #4]
    b .L08076DA4
    .align 2, 0
.L08076E04: .4byte 0x0203E660
.L08076E08:
    ldr r0, [r7, #0x10]
    cmp r0, #0
    ble .L08076E44
.L08076E0E:
    ldr r0, [r7, #4]
    cmp r0, #0
    bge .L08076E16
    b .L08076E44
.L08076E16:
    ldr r1, .L08076E40 @ =0x0203E660
    ldr r0, [r1, #4]
    ldr r1, [r7]
    ldr r3, [r7, #0x10]
    adds r2, r1, r3
    subs r1, r2, #1
    ldr r2, [r7, #4]
    bl func_08077174
    ldr r1, .L08076E40 @ =0x0203E660
    ldr r0, [r1, #4]
    ldr r1, [r7]
    ldr r2, [r7, #0x10]
    subs r1, r1, r2
    ldr r2, [r7, #4]
    bl func_0807712C
    ldr r0, [r7, #4]
    subs r1, r0, #1
    str r1, [r7, #4]
    b .L08076E0E
    .align 2, 0
.L08076E40: .4byte 0x0203E660
.L08076E44:
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08076D8C

    thumb_func_start func_08076E4C
func_08076E4C: @ 0x08076E4C
    push {r4, r5, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    adds r4, r1, #0
    adds r1, r2, #0
    adds r0, r3, #0
    adds r2, r7, #4
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #6
    strh r1, [r2]
    adds r1, r7, #0
    adds r1, #8
    strh r0, [r1]
    movs r0, #0
    str r0, [r7, #0xc]
.L08076E6E:
    ldr r0, [r7, #0xc]
    cmp r0, #0x9f
    ble .L08076E76
    b .L08076EBC
.L08076E76:
    ldr r0, [r7]
    ldr r1, .L08076EB8 @ =0x080C5A48
    adds r2, r7, #0
    adds r2, #8
    movs r4, #0
    ldrsh r3, [r2, r4]
    ldr r4, [r7, #0xc]
    adds r2, r3, #0
    muls r2, r4, r2
    adds r3, r7, #4
    movs r5, #0
    ldrsh r4, [r3, r5]
    adds r2, r2, r4
    movs r3, #0xff
    ands r2, r3
    adds r3, r2, #0
    lsls r2, r3, #1
    adds r3, r1, r2
    movs r2, #0
    ldrsh r1, [r3, r2]
    adds r2, r7, #6
    movs r4, #0
    ldrsh r3, [r2, r4]
    muls r1, r3, r1
    asrs r2, r1, #0xc
    adds r1, r2, #0
    strh r1, [r0]
    adds r0, #2
    str r0, [r7]
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L08076E6E
    .align 2, 0
.L08076EB8: .4byte gSinLut
.L08076EBC:
    add sp, #0x10
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    func_end func_08076E4C

    thumb_func_start func_08076EC4
func_08076EC4: @ 0x08076EC4
    push {r4, r5, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    adds r4, r1, #0
    adds r1, r2, #0
    adds r0, r3, #0
    adds r2, r7, #4
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #6
    strh r1, [r2]
    adds r1, r7, #0
    adds r1, #8
    strh r0, [r1]
    movs r0, #0
    str r0, [r7, #0xc]
.L08076EE6:
    ldr r0, [r7, #0xc]
    cmp r0, #0x9f
    ble .L08076EEE
    b .L08076F3C
.L08076EEE:
    ldr r0, [r7]
    ldr r1, .L08076F38 @ =0x080C5A48
    adds r2, r7, #0
    adds r2, #8
    movs r4, #0
    ldrsh r3, [r2, r4]
    ldr r4, [r7, #0xc]
    adds r2, r3, #0
    muls r2, r4, r2
    adds r3, r7, #4
    movs r5, #0
    ldrsh r4, [r3, r5]
    adds r2, r2, r4
    movs r3, #0xff
    ands r2, r3
    adds r3, r2, #0
    lsls r2, r3, #1
    adds r3, r1, r2
    movs r2, #0
    ldrsh r1, [r3, r2]
    adds r2, r7, #6
    movs r4, #0
    ldrsh r3, [r2, r4]
    muls r1, r3, r1
    asrs r2, r1, #0xc
    adds r1, r2, #0
    ldr r3, [r7, #0x20]
    adds r2, r3, #0
    adds r1, r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    adds r0, #2
    str r0, [r7]
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L08076EE6
    .align 2, 0
.L08076F38: .4byte gSinLut
.L08076F3C:
    add sp, #0x10
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    func_end func_08076EC4

    thumb_func_start func_08076F44
func_08076F44: @ 0x08076F44
    push {r4, r5, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    adds r4, r1, #0
    adds r1, r2, #0
    adds r0, r3, #0
    adds r2, r7, #4
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #6
    strh r1, [r2]
    adds r1, r7, #0
    adds r1, #8
    strh r0, [r1]
    ldr r0, [r7]
    adds r1, r0, #2
    str r1, [r7]
    movs r0, #1
    str r0, [r7, #0xc]
.L08076F6C:
    ldr r0, [r7, #0xc]
    cmp r0, #0x9f
    ble .L08076F74
    b .L08076FBC
.L08076F74:
    ldr r0, [r7]
    ldr r1, .L08076FB8 @ =0x080C5A48
    adds r2, r7, #0
    adds r2, #8
    movs r4, #0
    ldrsh r3, [r2, r4]
    ldr r4, [r7, #0xc]
    adds r2, r3, #0
    muls r2, r4, r2
    adds r3, r7, #4
    movs r5, #0
    ldrsh r4, [r3, r5]
    adds r2, r2, r4
    movs r3, #0xff
    ands r2, r3
    adds r3, r2, #0
    lsls r2, r3, #1
    adds r3, r1, r2
    movs r2, #0
    ldrsh r1, [r3, r2]
    adds r2, r7, #6
    movs r4, #0
    ldrsh r3, [r2, r4]
    muls r1, r3, r1
    asrs r2, r1, #0xc
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #4
    str r1, [r7]
    ldr r0, [r7, #0xc]
    adds r1, r0, #2
    str r1, [r7, #0xc]
    b .L08076F6C
    .align 2, 0
.L08076FB8: .4byte gSinLut
.L08076FBC:
    add sp, #0x10
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    func_end func_08076F44

    thumb_func_start func_08076FC4
func_08076FC4: @ 0x08076FC4
    push {r4, r5, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    adds r4, r1, #0
    adds r1, r2, #0
    adds r0, r3, #0
    adds r2, r7, #4
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #6
    strh r1, [r2]
    adds r1, r7, #0
    adds r1, #8
    strh r0, [r1]
    ldr r0, [r7]
    adds r1, r0, #2
    str r1, [r7]
    movs r0, #1
    str r0, [r7, #0xc]
.L08076FEC:
    ldr r0, [r7, #0xc]
    cmp r0, #0x9f
    ble .L08076FF4
    b .L08077044
.L08076FF4:
    ldr r0, [r7]
    ldr r1, .L08077040 @ =0x080C5A48
    adds r2, r7, #0
    adds r2, #8
    movs r4, #0
    ldrsh r3, [r2, r4]
    ldr r4, [r7, #0xc]
    adds r2, r3, #0
    muls r2, r4, r2
    adds r3, r7, #4
    movs r5, #0
    ldrsh r4, [r3, r5]
    adds r2, r2, r4
    movs r3, #0xff
    ands r2, r3
    adds r3, r2, #0
    lsls r2, r3, #1
    adds r3, r1, r2
    movs r2, #0
    ldrsh r1, [r3, r2]
    adds r2, r7, #6
    movs r4, #0
    ldrsh r3, [r2, r4]
    adds r2, r1, #0
    muls r2, r3, r2
    asrs r1, r2, #0xc
    ldr r3, [r7, #0x20]
    adds r2, r3, #0
    adds r2, r1, r2
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #4
    str r1, [r7]
    ldr r0, [r7, #0xc]
    adds r1, r0, #2
    str r1, [r7, #0xc]
    b .L08076FEC
    .align 2, 0
.L08077040: .4byte gSinLut
.L08077044:
    add sp, #0x10
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    func_end func_08076FC4

    thumb_func_start func_0807704C
func_0807704C: @ 0x0807704C
    push {r4, r5, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    adds r4, r1, #0
    adds r1, r2, #0
    adds r0, r3, #0
    adds r2, r7, #4
    adds r3, r4, #0
    strh r3, [r2]
    adds r2, r7, #6
    strh r1, [r2]
    adds r1, r7, #0
    adds r1, #8
    strh r0, [r1]
    ldr r0, [r7, #0x20]
    str r0, [r7, #0xc]
.L0807706E:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0x24]
    cmp r0, r1
    blt .L08077078
    b .L080770C0
.L08077078:
    ldr r0, [r7]
    ldr r1, .L080770BC @ =0x080C5A48
    adds r2, r7, #0
    adds r2, #8
    movs r4, #0
    ldrsh r3, [r2, r4]
    ldr r4, [r7, #0xc]
    adds r2, r3, #0
    muls r2, r4, r2
    adds r3, r7, #4
    movs r5, #0
    ldrsh r4, [r3, r5]
    adds r2, r2, r4
    movs r3, #0xff
    ands r2, r3
    adds r3, r2, #0
    lsls r2, r3, #1
    adds r3, r1, r2
    movs r2, #0
    ldrsh r1, [r3, r2]
    adds r2, r7, #6
    movs r4, #0
    ldrsh r3, [r2, r4]
    muls r1, r3, r1
    asrs r2, r1, #0xc
    adds r1, r2, #0
    strh r1, [r0]
    adds r0, #2
    str r0, [r7]
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L0807706E
    .align 2, 0
.L080770BC: .4byte gSinLut
.L080770C0:
    add sp, #0x10
    pop {r4, r5, r7}
    pop {r0}
    bx r0
    func_end func_0807704C

    thumb_func_start func_080770C8
func_080770C8: @ 0x080770C8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    ldr r0, .L080770EC @ =0x0203E660
    ldr r1, [r0]
    str r1, [r7]
    ldr r0, .L080770EC @ =0x0203E660
    ldr r1, .L080770EC @ =0x0203E660
    ldr r2, [r1, #4]
    str r2, [r0]
    ldr r0, .L080770EC @ =0x0203E660
    ldr r1, [r7]
    str r1, [r0, #4]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080770EC: .4byte 0x0203E660
    func_end func_080770C8

    thumb_func_start func_080770F0
func_080770F0: @ 0x080770F0
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    str r0, [r7, #8]
    movs r0, #0
    str r0, [r7, #4]
.L08077100:
    ldr r0, [r7, #4]
    cmp r0, #0x9f
    ble .L08077108
    b .L08077124
.L08077108:
    adds r0, r7, #0
    adds r0, #8
    ldr r1, [r0]
    ldr r3, .L08077120 @ =0x0000F0F0
    adds r2, r3, #0
    strh r2, [r1]
    adds r1, #2
    str r1, [r0]
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L08077100
    .align 2, 0
.L08077120: .4byte 0x0000F0F0
.L08077124:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080770F0

    thumb_func_start func_0807712C
func_0807712C: @ 0x0807712C
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7, #8]
    cmp r0, #0
    blt .L08077146
    ldr r0, [r7, #8]
    cmp r0, #0x9f
    bgt .L08077146
    b .L08077148
.L08077146:
    b .L0807716C
.L08077148:
    ldr r0, [r7, #4]
    cmp r0, #0
    bge .L08077152
    movs r0, #0
    str r0, [r7, #4]
.L08077152:
    ldr r0, [r7, #4]
    cmp r0, #0xf0
    ble .L0807715C
    movs r0, #0xf0
    str r0, [r7, #4]
.L0807715C:
    ldr r1, [r7, #8]
    lsls r0, r1, #1
    ldr r2, [r7]
    adds r1, r0, r2
    adds r0, r1, #1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    strb r2, [r0]
.L0807716C:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0807712C

    thumb_func_start func_08077174
func_08077174: @ 0x08077174
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, [r7, #8]
    cmp r0, #0
    blt .L0807718E
    ldr r0, [r7, #8]
    cmp r0, #0x9f
    bgt .L0807718E
    b .L08077190
.L0807718E:
    b .L080771B2
.L08077190:
    ldr r0, [r7, #4]
    cmp r0, #0
    bge .L0807719A
    movs r0, #0
    str r0, [r7, #4]
.L0807719A:
    ldr r0, [r7, #4]
    cmp r0, #0xf0
    ble .L080771A4
    movs r0, #0xf0
    str r0, [r7, #4]
.L080771A4:
    ldr r1, [r7, #8]
    lsls r0, r1, #1
    ldr r1, [r7]
    adds r0, r0, r1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    strb r2, [r0]
.L080771B2:
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08077174

    thumb_func_start func_080771BC
func_080771BC: @ 0x080771BC
    push {r7, lr}
    sub sp, #0x18
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, [r7, #0xc]
    str r0, [r7, #0x10]
    movs r0, #0
    str r0, [r7, #0x14]
.L080771D2:
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #0x14]
    cmp r0, r1
    bge .L080771DC
    b .L08077298
.L080771DC:
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r1, [r7, #0xc]
    adds r0, r1, #1
    ldr r2, [r7, #0x14]
    lsls r1, r2, #1
    subs r0, r0, r1
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bge .L08077290
    ldr r1, [r7, #0x10]
    subs r0, r1, #1
    lsls r1, r0, #1
    ldr r0, [r7, #0xc]
    adds r1, r0, r1
    str r1, [r7, #0xc]
    ldr r0, [r7, #0x10]
    subs r1, r0, #1
    str r1, [r7, #0x10]
.L08077290:
    ldr r0, [r7, #0x14]
    adds r1, r0, #1
    str r1, [r7, #0x14]
    b .L080771D2
.L08077298:
    add sp, #0x18
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080771BC

    thumb_func_start func_080772A0
func_080772A0: @ 0x080772A0
    push {r4, r7, lr}
    sub sp, #0x28
    add r7, sp, #4
    str r0, [r7]
    adds r4, r1, #0
    adds r1, r3, #0
    ldr r0, [r7, #0x30]
    adds r3, r7, #4
    strh r4, [r3]
    adds r3, r7, #6
    strh r2, [r3]
    adds r2, r7, #0
    adds r2, #8
    strh r1, [r2]
    adds r1, r7, #0
    adds r1, #0xa
    strh r0, [r1]
    adds r1, r7, #6
    ldrh r0, [r1]
    adds r1, r7, #4
    ldrh r2, [r1]
    subs r0, r0, r2
    str r0, [r7, #0x20]
    movs r0, #0
    str r0, [r7, #0x10]
    movs r0, #0
    str r0, [r7, #0xc]
.L080772D6:
    ldr r0, [r7, #0xc]
    cmp r0, #0x9f
    ble .L080772DE
    b .L080773E8
.L080772DE:
    adds r0, r7, #4
    ldrh r1, [r0]
    ldr r0, [r7, #0xc]
    cmp r0, r1
    bge .L080772F8
    ldr r0, [r7]
    adds r1, r7, #0
    adds r1, #8
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, #2
    str r0, [r7]
    b .L080773E0
.L080772F8:
    adds r0, r7, #6
    ldrh r1, [r0]
    ldr r0, [r7, #0xc]
    cmp r0, r1
    ble .L08077312
    ldr r0, [r7]
    adds r1, r7, #0
    adds r1, #0xa
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, #2
    str r0, [r7]
    b .L080773E0
.L08077312:
    adds r0, r7, #0
    adds r0, #8
    ldrh r1, [r0]
    movs r2, #0x1f
    adds r0, r1, #0
    ands r0, r2
    adds r1, r0, #0
    lsls r0, r1, #0x10
    lsrs r1, r0, #0x10
    adds r0, r7, #0
    adds r0, #0xa
    ldrh r2, [r0]
    movs r3, #0x1f
    adds r0, r2, #0
    ands r0, r3
    adds r2, r0, #0
    lsls r0, r2, #0x10
    lsrs r2, r0, #0x10
    ldr r3, [r7, #0x10]
    ldr r0, [r7, #0x20]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    str r0, [r7, #0x14]
    adds r0, r7, #0
    adds r0, #8
    ldrh r1, [r0]
    movs r2, #0xf8
    lsls r2, r2, #2
    adds r0, r1, #0
    ands r0, r2
    adds r1, r0, #0
    lsls r0, r1, #0x10
    lsrs r1, r0, #0x10
    adds r0, r7, #0
    adds r0, #0xa
    ldrh r2, [r0]
    movs r3, #0xf8
    lsls r3, r3, #2
    adds r0, r2, #0
    ands r0, r3
    adds r2, r0, #0
    lsls r0, r2, #0x10
    lsrs r2, r0, #0x10
    ldr r3, [r7, #0x10]
    ldr r0, [r7, #0x20]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    str r0, [r7, #0x18]
    adds r0, r7, #0
    adds r0, #8
    ldrh r1, [r0]
    movs r2, #0xf8
    lsls r2, r2, #7
    adds r0, r1, #0
    ands r0, r2
    adds r1, r0, #0
    lsls r0, r1, #0x10
    lsrs r1, r0, #0x10
    adds r0, r7, #0
    adds r0, #0xa
    ldrh r2, [r0]
    movs r3, #0xf8
    lsls r3, r3, #7
    adds r0, r2, #0
    ands r0, r3
    adds r2, r0, #0
    lsls r0, r2, #0x10
    lsrs r2, r0, #0x10
    ldr r3, [r7, #0x10]
    ldr r0, [r7, #0x20]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    str r0, [r7, #0x1c]
    ldr r0, [r7]
    ldr r2, [r7, #0x14]
    adds r1, r2, #0
    movs r2, #0x1f
    ands r1, r2
    ldr r3, [r7, #0x18]
    adds r2, r3, #0
    movs r3, #0xf8
    lsls r3, r3, #2
    ands r2, r3
    orrs r1, r2
    ldr r3, [r7, #0x1c]
    adds r2, r3, #0
    movs r3, #0xf8
    lsls r3, r3, #7
    ands r2, r3
    orrs r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    adds r0, #2
    str r0, [r7]
    ldr r0, [r7, #0x10]
    adds r1, r0, #1
    str r1, [r7, #0x10]
.L080773E0:
    ldr r0, [r7, #0xc]
    adds r1, r0, #1
    str r1, [r7, #0xc]
    b .L080772D6
.L080773E8:
    add sp, #0x28
    pop {r4, r7}
    pop {r0}
    bx r0
    func_end func_080772A0

    thumb_func_start func_080773F0
func_080773F0: @ 0x080773F0
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r0, #0x64
    ldrh r1, [r0]
    movs r2, #0
    ands r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_080773F0

    thumb_func_start func_08077410
func_08077410: @ 0x08077410
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    str r0, [r7]
    ldr r0, .L08077448 @ =0x0203E660
    ldr r1, [r0, #4]
    movs r2, #0xa0
    lsls r2, r2, #1
    adds r0, r1, r2
    ldr r1, [r7]
    adds r2, r1, #0
    adds r1, #0x64
    ldrh r2, [r1]
    adds r3, r2, #1
    adds r4, r3, #0
    strh r4, [r1]
    lsls r2, r2, #0x10
    asrs r1, r2, #0x10
    movs r2, #0x10
    movs r3, #8
    bl func_08076E4C
    bl func_080770C8
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077448: .4byte 0x0203E660
    func_end func_08077410

    thumb_func_start func_0807744C
func_0807744C: @ 0x0807744C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    movs r0, #0
    str r0, [r7]
.L08077456:
    ldr r0, [r7]
    cmp r0, #0x9f
    ble .L0807745E
    b .L08077480
.L0807745E:
    ldr r0, .L0807747C @ =0x0203E660
    ldr r1, [r7]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r0]
    adds r0, r1, r2
    movs r2, #0x80
    lsls r2, r2, #5
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #1
    str r1, [r7]
    b .L08077456
    .align 2, 0
.L0807747C: .4byte 0x0203E660
.L08077480:
    movs r0, #8
    str r0, [r7]
.L08077484:
    ldr r0, [r7]
    cmp r0, #0x97
    ble .L0807748C
    b .L080774A8
.L0807748C:
    ldr r0, .L080774A4 @ =0x0203E660
    ldr r1, [r7]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r0]
    adds r0, r1, r2
    movs r1, #0x10
    strh r1, [r0]
    ldr r0, [r7]
    adds r1, r0, #1
    str r1, [r7]
    b .L08077484
    .align 2, 0
.L080774A4: .4byte 0x0203E660
.L080774A8:
    movs r0, #0
    str r0, [r7]
.L080774AC:
    ldr r0, [r7]
    cmp r0, #0x20
    ble .L080774B4
    b .L08077514
.L080774B4:
    ldr r0, .L0807750C @ =0x0203E660
    ldr r1, [r7]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r0, [r0]
    adds r1, r1, r0
    adds r0, r1, #0
    adds r0, #0x10
    ldr r2, [r7]
    asrs r1, r2, #1
    adds r2, r1, #0
    movs r3, #0x10
    subs r1, r3, r2
    adds r2, r1, #0
    lsls r1, r2, #8
    ldr r3, [r7]
    asrs r2, r3, #1
    orrs r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, .L0807750C @ =0x0203E660
    ldr r1, [r7]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r3, .L08077510 @ =0xFFFFFED0
    adds r2, r1, r3
    ldr r1, [r0]
    subs r0, r1, r2
    ldr r2, [r7]
    asrs r1, r2, #1
    adds r2, r1, #0
    movs r3, #0x10
    subs r1, r3, r2
    adds r2, r1, #0
    lsls r1, r2, #8
    ldr r3, [r7]
    asrs r2, r3, #1
    orrs r1, r2
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7]
    adds r1, r0, #1
    str r1, [r7]
    b .L080774AC
    .align 2, 0
.L0807750C: .4byte 0x0203E660
.L08077510: .4byte 0xFFFFFED0
.L08077514:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0807744C

    thumb_func_start func_0807751C
func_0807751C: @ 0x0807751C
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L08077540 @ =0x0203E660
    ldr r1, [r7]
    adds r2, r1, #0
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r0, [r0]
    adds r1, r1, r0
    adds r0, r1, #0
    b .L08077544
    .align 2, 0
.L08077540: .4byte 0x0203E660
.L08077544:
    add sp, #8
    pop {r7}
    pop {r1}
    bx r1
    func_end func_0807751C

    thumb_func_start func_0807754C
func_0807754C: @ 0x0807754C
    push {r7, lr}
    sub sp, #0x18
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, [r7, #0xc]
    str r0, [r7, #0x10]
    movs r0, #0
    str r0, [r7, #0x14]
.L08077562:
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #0x14]
    cmp r0, r1
    bge .L0807756C
    b .L08077644
.L0807756C:
    ldr r0, [r7, #8]
    ldr r1, [r7, #0x14]
    adds r0, r0, r1
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L080775C2
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
.L080775C2:
    ldr r0, [r7, #8]
    ldr r1, [r7, #0x10]
    adds r0, r0, r1
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L08077618
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
.L08077618:
    ldr r1, [r7, #0xc]
    adds r0, r1, #1
    ldr r2, [r7, #0x14]
    lsls r1, r2, #1
    subs r0, r0, r1
    str r0, [r7, #0xc]
    ldr r0, [r7, #0xc]
    cmp r0, #0
    bge .L0807763C
    ldr r1, [r7, #0x10]
    subs r0, r1, #1
    lsls r1, r0, #1
    ldr r0, [r7, #0xc]
    adds r1, r0, r1
    str r1, [r7, #0xc]
    ldr r0, [r7, #0x10]
    subs r1, r0, #1
    str r1, [r7, #0x10]
.L0807763C:
    ldr r0, [r7, #0x14]
    adds r1, r0, #1
    str r1, [r7, #0x14]
    b .L08077562
.L08077644:
    add sp, #0x18
    pop {r7}
    pop {r0}
    bx r0
    func_end func_0807754C

    thumb_func_start func_0807764C
func_0807764C: @ 0x0807764C
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, .L0807767C @ =0x0203E660
    ldr r1, [r0, #4]
    adds r0, r1, #0
    bl func_080770F0
    ldr r1, .L0807767C @ =0x0203E660
    ldr r0, [r1, #4]
    ldr r2, [r7, #4]
    ldr r3, [r7, #8]
    ldr r1, [r7]
    bl func_0807754C
    bl func_080770C8
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0807767C: .4byte 0x0203E660
    func_end func_0807764C

    thumb_func_start func_08077680
func_08077680: @ 0x08077680
    push {r7, lr}
    sub sp, #0x14
    mov r7, sp
    str r0, [r7]
    ldr r0, [r7]
    cmp r0, #0x70
    ble .L08077692
    movs r0, #0x70
    str r0, [r7]
.L08077692:
    movs r0, #0x50
    ldr r1, [r7]
    subs r0, r0, r1
    str r0, [r7, #8]
    ldr r0, [r7]
    adds r1, r0, #0
    adds r1, #0x50
    str r1, [r7, #0xc]
    movs r0, #0
    str r0, [r7, #4]
.L080776A6:
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    cmp r0, r1
    blt .L080776B0
    b .L080776D0
.L080776B0:
    ldr r0, .L080776CC @ =0x0203E660
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r0, #4]
    adds r0, r1, r2
    movs r2, #0x80
    lsls r2, r2, #5
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L080776A6
    .align 2, 0
.L080776CC: .4byte 0x0203E660
.L080776D0:
    ldr r0, [r7, #0xc]
    str r0, [r7, #4]
.L080776D4:
    ldr r0, [r7, #4]
    cmp r0, #0x9f
    ble .L080776DC
    b .L080776FC
.L080776DC:
    ldr r0, .L080776F8 @ =0x0203E660
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r0, #4]
    adds r0, r1, r2
    movs r2, #0x80
    lsls r2, r2, #5
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L080776D4
    .align 2, 0
.L080776F8: .4byte 0x0203E660
.L080776FC:
    ldr r0, [r7, #8]
    str r0, [r7, #4]
.L08077700:
    ldr r0, [r7, #4]
    cmp r0, #0x4f
    bgt .L08077714
    ldr r1, [r7, #8]
    adds r0, r1, #0
    adds r0, #0x20
    ldr r1, [r7, #4]
    cmp r1, r0
    blt .L08077716
    b .L08077714
.L08077714:
    b .L08077750
.L08077716:
    ldr r0, [r7, #4]
    ldr r1, [r7, #8]
    subs r0, r0, r1
    asrs r1, r0, #1
    str r1, [r7, #0x10]
    ldr r0, .L0807774C @ =0x0203E660
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r0, #4]
    adds r0, r1, r2
    ldr r2, [r7, #0x10]
    adds r1, r2, #0
    movs r2, #0x10
    subs r1, r2, r1
    adds r2, r1, #0
    lsls r1, r2, #8
    ldr r3, [r7, #0x10]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L08077700
    .align 2, 0
.L0807774C: .4byte 0x0203E660
.L08077750:
    ldr r0, [r7, #0xc]
    subs r1, r0, #1
    str r1, [r7, #4]
.L08077756:
    ldr r0, [r7, #4]
    cmp r0, #0x4f
    ble .L0807776A
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    subs r0, #0x20
    ldr r1, [r7, #4]
    cmp r1, r0
    bge .L0807776C
    b .L0807776A
.L0807776A:
    b .L080777A4
.L0807776C:
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #4]
    subs r0, r0, r1
    asrs r1, r0, #1
    str r1, [r7, #0x10]
    ldr r0, .L080777A0 @ =0x0203E660
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r0, #4]
    adds r0, r1, r2
    ldr r2, [r7, #0x10]
    adds r1, r2, #0
    movs r2, #0x10
    subs r1, r2, r1
    adds r2, r1, #0
    lsls r1, r2, #8
    ldr r3, [r7, #0x10]
    adds r2, r3, #0
    orrs r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, [r7, #4]
    subs r1, r0, #1
    str r1, [r7, #4]
    b .L08077756
    .align 2, 0
.L080777A0: .4byte 0x0203E660
.L080777A4:
    ldr r0, [r7, #8]
    adds r1, r0, #0
    adds r1, #0x20
    str r1, [r7, #4]
.L080777AC:
    ldr r1, [r7, #0xc]
    adds r0, r1, #0
    subs r0, #0x20
    ldr r1, [r7, #4]
    cmp r1, r0
    blt .L080777BA
    b .L080777D8
.L080777BA:
    ldr r0, .L080777D4 @ =0x0203E660
    ldr r1, [r7, #4]
    adds r2, r1, #0
    lsls r1, r2, #1
    ldr r2, [r0, #4]
    adds r0, r1, r2
    movs r1, #0x10
    strh r1, [r0]
    ldr r0, [r7, #4]
    adds r1, r0, #1
    str r1, [r7, #4]
    b .L080777AC
    .align 2, 0
.L080777D4: .4byte 0x0203E660
.L080777D8:
    bl func_080770C8
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08077680

    thumb_func_start func_080777E4
func_080777E4: @ 0x080777E4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L0807780C @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9e
    bls .L08077818
    ldr r0, .L08077810 @ =0x0203E668
    ldr r1, .L08077814 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08077826
    .align 2, 0
.L0807780C: .4byte 0x04000006
.L08077810: .4byte 0x0203E668
.L08077814: .4byte 0x0203E660
.L08077818:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08077826:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    bne .L0807784E
    ldr r0, .L08077858 @ =0x04000040
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L0807785C @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
.L0807784E:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077858: .4byte 0x04000040
.L0807785C: .4byte 0x0203E668
    func_end func_080777E4

    thumb_func_start func_08077860
func_08077860: @ 0x08077860
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077888 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9e
    bls .L08077894
    ldr r0, .L0807788C @ =0x0203E668
    ldr r1, .L08077890 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L080778A2
    .align 2, 0
.L08077888: .4byte 0x04000006
.L0807788C: .4byte 0x0203E668
.L08077890: .4byte 0x0203E660
.L08077894:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L080778A2:
    ldr r0, .L080778C0 @ =0x04000052
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L080778C4 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080778C0: .4byte 0x04000052
.L080778C4: .4byte 0x0203E668
    func_end func_08077860

    thumb_func_start func_080778C8
func_080778C8: @ 0x080778C8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077904 @ =0x04000006
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L080778E8
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
.L080778E8:
    ldr r0, .L08077908 @ =0x0400001A
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L0807790C @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077904: .4byte 0x04000006
.L08077908: .4byte 0x0400001A
.L0807790C: .4byte 0x0203E668
    func_end func_080778C8

    thumb_func_start func_08077910
func_08077910: @ 0x08077910
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    movs r0, #0
    str r0, [r7, #8]
.L0807791E:
    ldr r0, [r7, #8]
    cmp r0, #0x9f
    ble .L08077926
    b .L08077954
.L08077926:
    ldr r0, [r7, #8]
    adds r1, r0, #0
    lsls r0, r1, #1
    ldr r2, .L08077950 @ =0x0203E668
    ldr r1, [r2]
    adds r0, r0, r1
    ldr r2, [r7, #8]
    adds r1, r2, #0
    movs r2, #1
    ands r1, r2
    ldr r3, [r7, #8]
    asrs r2, r3, #1
    adds r1, r1, r2
    adds r2, r1, #0
    rsbs r1, r2, #0
    adds r2, r1, #0
    strh r2, [r0]
    ldr r0, [r7, #8]
    adds r1, r0, #1
    str r1, [r7, #8]
    b .L0807791E
    .align 2, 0
.L08077950: .4byte 0x0203E668
.L08077954:
    bl func_080770C8
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08077910

    thumb_func_start func_08077960
func_08077960: @ 0x08077960
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077988 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08077994
    ldr r0, .L0807798C @ =0x0203E668
    ldr r1, .L08077990 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L080779A2
    .align 2, 0
.L08077988: .4byte 0x04000006
.L0807798C: .4byte 0x0203E668
.L08077990: .4byte 0x0203E660
.L08077994:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L080779A2:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L080779E4
    ldr r0, .L080779EC @ =0x04000014
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L080779F0 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    ldr r0, .L080779F4 @ =0x04000016
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L080779F0 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
.L080779E4:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080779EC: .4byte 0x04000014
.L080779F0: .4byte 0x0203E668
.L080779F4: .4byte 0x04000016
    func_end func_08077960

    thumb_func_start func_080779F8
func_080779F8: @ 0x080779F8
    push {r4, r5, r6, r7, lr}
    sub sp, #0x18
    mov r7, sp
    str r0, [r7]
    adds r5, r1, #0
    adds r4, r2, #0
    ldr r2, [r7, #0x2c]
    ldr r1, [r7, #0x30]
    ldr r0, [r7, #0x34]
    adds r6, r7, #4
    strh r5, [r6]
    adds r5, r7, #6
    strh r4, [r5]
    adds r4, r7, #0
    adds r4, #8
    strh r3, [r4]
    adds r3, r7, #0
    adds r3, #0xa
    strh r2, [r3]
    adds r2, r7, #0
    adds r2, #0xc
    strh r1, [r2]
    adds r1, r7, #0
    adds r1, #0xe
    strh r0, [r1]
    ldr r1, [r7]
    adds r2, r1, #2
    str r2, [r7]
    movs r1, #1
    str r1, [r7, #0x10]
.L08077A34:
    ldr r1, [r7, #0x10]
    cmp r1, #0x9f
    ble .L08077A3C
    b .L08077AD2
.L08077A3C:
    ldr r1, .L08077A98 @ =0x080C5A48
    adds r2, r7, #0
    adds r2, #8
    movs r4, #0
    ldrsh r3, [r2, r4]
    ldr r4, [r7, #0x10]
    adds r2, r3, #0
    muls r2, r4, r2
    adds r3, r7, #4
    movs r5, #0
    ldrsh r4, [r3, r5]
    adds r2, r2, r4
    movs r3, #0xff
    ands r2, r3
    adds r3, r2, #0
    lsls r2, r3, #1
    adds r3, r1, r2
    movs r2, #0
    ldrsh r1, [r3, r2]
    adds r2, r7, #6
    movs r4, #0
    ldrsh r3, [r2, r4]
    muls r1, r3, r1
    str r1, [r7, #0x14]
    adds r1, r7, #0
    adds r1, #0xe
    movs r5, #0
    ldrsh r0, [r1, r5]
    adds r1, r7, #0
    adds r1, #0xc
    movs r3, #0
    ldrsh r2, [r1, r3]
    ldr r3, [r7, #0x10]
    subs r1, r3, r2
    cmp r1, #0
    blt .L08077A9C
    adds r1, r7, #0
    adds r1, #0xc
    movs r4, #0
    ldrsh r2, [r1, r4]
    ldr r3, [r7, #0x10]
    subs r1, r3, r2
    ldr r2, [r7, #0x14]
    muls r1, r2, r1
    muls r1, r0, r1
    b .L08077AB0
    .align 2, 0
.L08077A98: .4byte gSinLut
.L08077A9C:
    adds r2, r7, #0
    adds r2, #0xc
    movs r5, #0
    ldrsh r3, [r2, r5]
    ldr r4, [r7, #0x10]
    subs r2, r3, r4
    ldr r3, [r7, #0x14]
    adds r1, r2, #0
    muls r1, r3, r1
    muls r1, r0, r1
.L08077AB0:
    str r1, [r7, #0x14]
    ldr r1, [r7]
    ldr r3, [r7, #0x14]
    asrs r2, r3, #0x14
    adds r3, r7, #0
    adds r3, #0xa
    ldrh r3, [r3]
    adds r2, r2, r3
    adds r3, r2, #0
    strh r3, [r1]
    ldr r1, [r7]
    adds r2, r1, #4
    str r2, [r7]
    ldr r1, [r7, #0x10]
    adds r2, r1, #2
    str r2, [r7, #0x10]
    b .L08077A34
.L08077AD2:
    add sp, #0x18
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080779F8

    thumb_func_start func_08077ADC
func_08077ADC: @ 0x08077ADC
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077B04 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08077B10
    ldr r0, .L08077B08 @ =0x0203E668
    ldr r1, .L08077B0C @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08077B1E
    .align 2, 0
.L08077B04: .4byte 0x04000006
.L08077B08: .4byte 0x0203E668
.L08077B0C: .4byte 0x0203E660
.L08077B10:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08077B1E:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08077B60
    ldr r0, .L08077B68 @ =0x04000010
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077B6C @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    ldr r0, .L08077B70 @ =0x04000012
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077B6C @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
.L08077B60:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077B68: .4byte 0x04000010
.L08077B6C: .4byte 0x0203E668
.L08077B70: .4byte 0x04000012
    func_end func_08077ADC

    thumb_func_start func_08077B74
func_08077B74: @ 0x08077B74
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077B9C @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08077BA8
    ldr r0, .L08077BA0 @ =0x0203E668
    ldr r1, .L08077BA4 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08077BB6
    .align 2, 0
.L08077B9C: .4byte 0x04000006
.L08077BA0: .4byte 0x0203E668
.L08077BA4: .4byte 0x0203E660
.L08077BA8:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08077BB6:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08077BF8
    ldr r0, .L08077C00 @ =0x04000014
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077C04 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    ldr r0, .L08077C08 @ =0x04000016
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077C04 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
.L08077BF8:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077C00: .4byte 0x04000014
.L08077C04: .4byte 0x0203E668
.L08077C08: .4byte 0x04000016
    func_end func_08077B74

    thumb_func_start func_08077C0C
func_08077C0C: @ 0x08077C0C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077C34 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08077C40
    ldr r0, .L08077C38 @ =0x0203E668
    ldr r1, .L08077C3C @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08077C4E
    .align 2, 0
.L08077C34: .4byte 0x04000006
.L08077C38: .4byte 0x0203E668
.L08077C3C: .4byte 0x0203E660
.L08077C40:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08077C4E:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08077C90
    ldr r0, .L08077C98 @ =0x04000018
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077C9C @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    ldr r0, .L08077CA0 @ =0x0400001A
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077C9C @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
.L08077C90:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077C98: .4byte 0x04000018
.L08077C9C: .4byte 0x0203E668
.L08077CA0: .4byte 0x0400001A
    func_end func_08077C0C

    thumb_func_start func_08077CA4
func_08077CA4: @ 0x08077CA4
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077CCC @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08077CD8
    ldr r0, .L08077CD0 @ =0x0203E668
    ldr r1, .L08077CD4 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08077CE6
    .align 2, 0
.L08077CCC: .4byte 0x04000006
.L08077CD0: .4byte 0x0203E668
.L08077CD4: .4byte 0x0203E660
.L08077CD8:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08077CE6:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08077D28
    ldr r0, .L08077D30 @ =0x0400001C
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077D34 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    ldr r0, .L08077D38 @ =0x0400001E
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077D34 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
.L08077D28:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077D30: .4byte 0x0400001C
.L08077D34: .4byte 0x0203E668
.L08077D38: .4byte 0x0400001E
    func_end func_08077CA4

    thumb_func_start func_08077D3C
func_08077D3C: @ 0x08077D3C
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077D64 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08077D70
    ldr r0, .L08077D68 @ =0x0203E668
    ldr r1, .L08077D6C @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08077D7E
    .align 2, 0
.L08077D64: .4byte 0x04000006
.L08077D68: .4byte 0x0203E668
.L08077D6C: .4byte 0x0203E660
.L08077D70:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08077D7E:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08077DD0
    ldr r0, .L08077DD8 @ =0x04000018
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077DDC @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldr r1, .L08077DE0 @ =gDispIo
    ldrh r2, [r2]
    ldrh r1, [r1, #0x24]
    adds r2, r2, r1
    adds r1, r2, #0
    strh r1, [r0]
    ldr r0, .L08077DE4 @ =0x0400001A
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077DDC @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldr r2, .L08077DE0 @ =gDispIo
    ldrh r1, [r1]
    ldrh r2, [r2, #0x26]
    adds r1, r1, r2
    adds r2, r1, #0
    strh r2, [r0]
.L08077DD0:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077DD8: .4byte 0x04000018
.L08077DDC: .4byte 0x0203E668
.L08077DE0: .4byte gDispIo
.L08077DE4: .4byte 0x0400001A
    func_end func_08077D3C

    thumb_func_start func_08077DE8
func_08077DE8: @ 0x08077DE8
    push {r7, lr}
    sub sp, #4
    mov r7, sp
    adds r0, r7, #0
    ldr r1, .L08077E10 @ =0x04000006
    ldrh r2, [r1]
    strh r2, [r0]
    adds r0, r7, #0
    ldrh r1, [r0]
    cmp r1, #0x9f
    bls .L08077E1C
    ldr r0, .L08077E14 @ =0x0203E668
    ldr r1, .L08077E18 @ =0x0203E660
    ldr r2, [r1]
    str r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    strh r1, [r0]
    b .L08077E2A
    .align 2, 0
.L08077E10: .4byte 0x04000006
.L08077E14: .4byte 0x0203E668
.L08077E18: .4byte 0x0203E660
.L08077E1C:
    adds r1, r7, #0
    adds r0, r7, #0
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r1, r2, #1
    adds r2, r1, #0
    strh r2, [r0]
.L08077E2A:
    adds r0, r7, #0
    ldrh r1, [r0]
    movs r2, #1
    adds r0, r1, #0
    ands r0, r2
    adds r2, r0, #0
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0
    beq .L08077E9A
    ldr r0, .L08077EA4 @ =0x04000014
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077EA8 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    ldr r0, .L08077EAC @ =0x04000016
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077EA8 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
    ldr r0, .L08077EB0 @ =0x04000018
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077EA8 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r1, r3
    ldrh r1, [r2]
    strh r1, [r0]
    ldr r0, .L08077EB4 @ =0x0400001A
    adds r1, r7, #0
    ldrh r2, [r1]
    adds r3, r2, #0
    lsls r1, r3, #1
    ldr r3, .L08077EA8 @ =0x0203E668
    ldr r2, [r3]
    adds r1, r1, r2
    ldrh r2, [r1]
    strh r2, [r0]
.L08077E9A:
    add sp, #4
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08077EA4: .4byte 0x04000014
.L08077EA8: .4byte 0x0203E668
.L08077EAC: .4byte 0x04000016
.L08077EB0: .4byte 0x04000018
.L08077EB4: .4byte 0x0400001A
    func_end func_08077DE8

    thumb_func_start func_08077EB8
func_08077EB8: @ 0x08077EB8
    push {r7, lr}
    sub sp, #0x24
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, [r7, #0xc]
    ldr r1, [r7, #0x2c]
    cmp r0, r1
    bgt .L08077ED0
    b .L08077FC6
.L08077ED0:
    ldr r0, [r7, #0xc]
    str r0, [r7, #0x20]
    str r0, [r7, #0x10]
    movs r0, #0
    str r0, [r7, #0x14]
.L08077EDA:
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #0x14]
    cmp r0, r1
    bge .L08077EE4
    b .L08077FC4
.L08077EE4:
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #0x2c]
    adds r1, r0, #0
    muls r1, r2, r1
    adds r0, r1, #0
    ldr r1, [r7, #0xc]
    bl __divsi3
    str r0, [r7, #0x18]
    ldr r0, [r7, #0x14]
    ldr r2, [r7, #0x2c]
    adds r1, r0, #0
    muls r1, r2, r1
    adds r0, r1, #0
    ldr r1, [r7, #0xc]
    bl __divsi3
    str r0, [r7, #0x1c]
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x1c]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x1c]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x1c]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x10]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x1c]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x18]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x18]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x18]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x14]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x18]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r1, [r7, #0x20]
    adds r0, r1, #1
    ldr r2, [r7, #0x14]
    lsls r1, r2, #1
    subs r0, r0, r1
    str r0, [r7, #0x20]
    ldr r0, [r7, #0x20]
    cmp r0, #0
    bge .L08077FBC
    ldr r1, [r7, #0x10]
    subs r0, r1, #1
    lsls r1, r0, #1
    ldr r0, [r7, #0x20]
    adds r1, r0, r1
    str r1, [r7, #0x20]
    ldr r0, [r7, #0x10]
    subs r1, r0, #1
    str r1, [r7, #0x10]
.L08077FBC:
    ldr r0, [r7, #0x14]
    adds r1, r0, #1
    str r1, [r7, #0x14]
    b .L08077EDA
.L08077FC4:
    b .L080780BA
.L08077FC6:
    ldr r0, [r7, #0x2c]
    str r0, [r7, #0x20]
    str r0, [r7, #0x10]
    movs r0, #0
    str r0, [r7, #0x14]
.L08077FD0:
    ldr r0, [r7, #0x10]
    ldr r1, [r7, #0x14]
    cmp r0, r1
    bge .L08077FDA
    b .L080780BA
.L08077FDA:
    ldr r0, [r7, #0x10]
    ldr r2, [r7, #0xc]
    adds r1, r0, #0
    muls r1, r2, r1
    adds r0, r1, #0
    ldr r1, [r7, #0x2c]
    bl __divsi3
    str r0, [r7, #0x18]
    ldr r0, [r7, #0x14]
    ldr r2, [r7, #0xc]
    adds r1, r0, #0
    muls r1, r2, r1
    adds r0, r1, #0
    ldr r1, [r7, #0x2c]
    bl __divsi3
    str r0, [r7, #0x1c]
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x18]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x18]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x18]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x18]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x14]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x1c]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x1c]
    adds r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_08077174
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x1c]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    adds r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r0, [r7, #4]
    ldr r2, [r7, #0x1c]
    subs r1, r0, r2
    ldr r0, [r7, #8]
    ldr r3, [r7, #0x10]
    subs r2, r0, r3
    ldr r0, [r7]
    bl func_0807712C
    ldr r1, [r7, #0x20]
    adds r0, r1, #1
    ldr r2, [r7, #0x14]
    lsls r1, r2, #1
    subs r0, r0, r1
    str r0, [r7, #0x20]
    ldr r0, [r7, #0x20]
    cmp r0, #0
    bge .L080780B2
    ldr r1, [r7, #0x10]
    subs r0, r1, #1
    lsls r1, r0, #1
    ldr r0, [r7, #0x20]
    adds r1, r0, r1
    str r1, [r7, #0x20]
    ldr r0, [r7, #0x10]
    subs r1, r0, #1
    str r1, [r7, #0x10]
.L080780B2:
    ldr r0, [r7, #0x14]
    adds r1, r0, #1
    str r1, [r7, #0x14]
    b .L08077FD0
.L080780BA:
    add sp, #0x24
    pop {r7}
    pop {r0}
    bx r0
    func_end func_08077EB8

    thumb_func_start func_080780C4
func_080780C4: @ 0x080780C4
    push {r7, lr}
    sub sp, #0x14
    add r7, sp, #4
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L080780FC @ =0x0203E660
    ldr r1, [r0, #4]
    adds r0, r1, #0
    bl func_080770F0
    ldr r1, .L080780FC @ =0x0203E660
    ldr r0, [r1, #4]
    ldr r2, [r7, #4]
    ldr r3, [r7, #8]
    ldr r1, [r7, #0xc]
    str r1, [sp]
    ldr r1, [r7]
    bl func_08077EB8
    bl func_080770C8
    add sp, #0x14
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080780FC: .4byte 0x0203E660
    func_end func_080780C4
