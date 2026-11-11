    .include "asm_prelude.inc"

    thumb_func_start func_08021174
func_08021174: @ 0x08021174
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r3, .L080211A4 @ =gPal
    ldr r2, .L080211A8 @ =0x00007FFF
    adds r1, r3, #0
    adds r1, #0x42
    movs r0, #0xe
.L08021182:
    strh r2, [r1]
    adds r1, #2
    subs r0, #1
    cmp r0, #0
    bge .L08021182
    movs r4, #0
    ldr r0, .L080211A8 @ =0x00007FFF
    strh r0, [r3]
    bl EnablePalSync
    adds r0, r5, #0
    adds r0, #0x4c
    strh r4, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080211A4: .4byte gPal
.L080211A8: .4byte 0x00007FFF
    func_end func_08021174

    thumb_func_start func_080211AC
func_080211AC: @ 0x080211AC
    push {r4, r5, r6, lr}
    sub sp, #0x50
    adds r5, r0, #0
    ldr r1, .L08021204 @ =0x081C3C68
    mov r0, sp
    movs r2, #0x50
    bl memcpy
    ldr r1, .L08021208 @ =gPal
    movs r0, #0
    strh r0, [r1]
    movs r2, #1
    adds r4, r5, #0
    adds r4, #0x4c
    adds r3, r4, #0
    adds r1, #0x5e
.L080211CC:
    movs r6, #0
    ldrsh r0, [r3, r6]
    adds r0, r0, r2
    subs r0, #1
    lsls r0, r0, #1
    add r0, sp
    ldrh r0, [r0]
    strh r0, [r1]
    subs r1, #2
    adds r2, #1
    cmp r2, #0xf
    ble .L080211CC
    bl EnablePalSync
    ldrh r0, [r4]
    adds r0, #3
    strh r0, [r4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xc
    ble .L080211FC
    adds r0, r5, #0
    bl Proc_Break
.L080211FC:
    add sp, #0x50
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08021204: .4byte 0x081C3C68
.L08021208: .4byte gPal
    func_end func_080211AC

    thumb_func_start func_0802120C
func_0802120C: @ 0x0802120C
    push {lr}
    ldr r2, .L08021230 @ =gDispIo
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
    bl ClearUi
    pop {r0}
    bx r0
    .align 2, 0
.L08021230: .4byte gDispIo
    func_end func_0802120C

    thumb_func_start func_08021234
func_08021234: @ 0x08021234
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080212B4 @ =0x081BAC1C
    ldr r1, .L080212B8 @ =0x06005000
    bl Decompress
    ldr r0, .L080212BC @ =0x081BAFD4
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L080212C0 @ =0x02022C64
    ldr r1, .L080212C4 @ =0x081BB1D4
    movs r2, #0x8a
    lsls r2, r2, #6
    bl func_080AACD8
    movs r0, #1
    bl EnableBgSync
    ldr r3, .L080212C8 @ =gDispIo
    movs r0, #1
    ldrb r1, [r3, #1]
    orrs r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r3, #1]
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x80
    orrs r0, r1
    strb r0, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    movs r0, #0
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    ldr r0, .L080212CC @ =0x0000FFE0
    ldrh r1, [r3, #0x3c]
    ands r0, r1
    ldr r1, .L080212D0 @ =0x0000E0FF
    ands r0, r1
    strh r0, [r3, #0x3c]
    ldr r0, .L080212D4 @ =0x08B93D0C
    adds r1, r4, #0
    bl Proc_StartBlocking
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080212B4: .4byte 0x081BAC1C
.L080212B8: .4byte 0x06005000
.L080212BC: .4byte 0x081BAFD4
.L080212C0: .4byte 0x02022C64
.L080212C4: .4byte 0x081BB1D4
.L080212C8: .4byte gDispIo
.L080212CC: .4byte 0x0000FFE0
.L080212D0: .4byte 0x0000E0FF
.L080212D4: .4byte 0x08B93D0C
    func_end func_08021234
