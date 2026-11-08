    .include "asm_prelude.inc"

    thumb_func_start Interpolate
Interpolate: @ 0x08012FE8
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    ldr r5, [sp, #0x10]
    cmp r5, #0
    bne .L08012FF6
    adds r0, r2, #0
    b .L080130AA
.L08012FF6:
    cmp r0, #5
    bhi .L080130A8
    lsls r0, r0, #2
    ldr r1, .L08013004 @ =.L08013008
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08013004: .4byte .L08013008
.L08013008: @ jump table
    .4byte .L08013020 @ case 0
    .4byte .L0801302C @ case 1
    .4byte .L0801303C @ case 2
    .4byte .L08013050 @ case 3
    .4byte .L08013074 @ case 4
    .4byte .L08013086 @ case 5
.L08013020:
    subs r0, r2, r6
    adds r2, r0, #0
    muls r2, r3, r2
    adds r0, r2, #0
    adds r1, r5, #0
    b .L0801306C
.L0801302C:
    adds r0, r3, #0
    muls r0, r3, r0
    subs r1, r2, r6
    adds r2, r0, #0
    muls r2, r1, r2
    adds r1, r5, #0
    muls r1, r5, r1
    b .L0801306A
.L0801303C:
    adds r0, r3, #0
    muls r0, r3, r0
    adds r1, r0, #0
    muls r1, r3, r1
    subs r0, r2, r6
    adds r2, r1, #0
    muls r2, r0, r2
    adds r0, r5, #0
    muls r0, r5, r0
    b .L08013066
.L08013050:
    adds r0, r3, #0
    muls r0, r3, r0
    muls r0, r3, r0
    adds r1, r0, #0
    muls r1, r3, r1
    subs r0, r2, r6
    adds r2, r1, #0
    muls r2, r0, r2
    adds r0, r5, #0
    muls r0, r5, r0
    muls r0, r5, r0
.L08013066:
    adds r1, r0, #0
    muls r1, r5, r1
.L0801306A:
    adds r0, r2, #0
.L0801306C:
    bl Div
    adds r0, r6, r0
    b .L080130AA
.L08013074:
    subs r1, r5, r3
    adds r0, r1, #0
    muls r0, r1, r0
    subs r4, r2, r6
    adds r2, r0, #0
    muls r2, r4, r2
    adds r1, r5, #0
    muls r1, r5, r1
    b .L0801309C
.L08013086:
    subs r1, r5, r3
    adds r0, r1, #0
    muls r0, r1, r0
    muls r0, r1, r0
    subs r4, r2, r6
    adds r2, r0, #0
    muls r2, r4, r2
    adds r0, r5, #0
    muls r0, r5, r0
    adds r1, r0, #0
    muls r1, r5, r1
.L0801309C:
    adds r0, r2, #0
    bl Div
    adds r4, r6, r4
    subs r0, r4, r0
    b .L080130AA
.L080130A8:
    movs r0, #0
.L080130AA:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end Interpolate

    thumb_func_start func_080130B0
func_080130B0: @ 0x080130B0
    bx lr
    func_end func_080130B0

    thumb_func_start func_080130B4
func_080130B4: @ 0x080130B4
    push {r4, lr}
    adds r4, r0, #0
    b .L080130C6
.L080130BA:
    adds r1, #1
    adds r4, #1
    cmp r2, r3
    beq .L080130C6
    movs r0, #0
    b .L080130D4
.L080130C6:
    ldrb r2, [r4]
    ldrb r3, [r1]
    adds r0, r3, #0
    orrs r0, r2
    cmp r0, #0
    bne .L080130BA
    movs r0, #1
.L080130D4:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080130B4

    thumb_func_start StringCopy
StringCopy: @ 0x080130DC
    adds r3, r0, #0
    b .L080130E6
.L080130E0:
    strb r2, [r3]
    adds r1, #1
    adds r3, #1
.L080130E6:
    ldrb r2, [r1]
    cmp r2, #0
    bne .L080130E0
    ldrb r0, [r1]
    strb r0, [r3]
    bx lr
    func_end StringCopy

    thumb_func_start func_080130F4
func_080130F4: @ 0x080130F4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl func_080131A8
    adds r2, r0, #0
    subs r1, r2, #4
    movs r0, #0x1f
    ands r0, r1
    cmp r0, #0
    beq .L0801311C
    adds r0, r4, #4
    lsrs r2, r1, #0x1f
    adds r2, r1, r2
    lsls r2, r2, #0xa
    lsrs r2, r2, #0xb
    adds r1, r5, #0
    bl CpuSet
    b .L08013132
.L0801311C:
    adds r3, r4, #4
    adds r0, r1, #0
    cmp r0, #0
    bge .L08013126
    subs r0, r2, #1
.L08013126:
    lsls r2, r0, #9
    lsrs r2, r2, #0xb
    adds r0, r3, #0
    adds r1, r5, #0
    bl CpuFastSet
.L08013132:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080130F4

    thumb_func_start func_08013138
func_08013138: @ 0x08013138
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r6, .L08013164 @ =gBuf
    adds r1, r6, #0
    bl LZ77UnComp8bit
    adds r0, r4, #0
    bl func_080131A8
    cmp r0, #0
    bge .L08013152
    adds r0, #3
.L08013152:
    lsls r2, r0, #9
    lsrs r2, r2, #0xb
    adds r0, r6, #0
    adds r1, r5, #0
    bl CpuFastSet
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08013164: .4byte gBuf
    func_end func_08013138

    thumb_func_start Decompress
Decompress: @ 0x08013168
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    movs r0, #0xfa
    lsls r0, r0, #0x18
    adds r1, r4, r0
    ldr r0, .L080131A0 @ =0x00017FFF
    movs r2, #1
    cmp r1, r0
    bhi .L0801317E
    movs r2, #0
.L0801317E:
    ldr r0, .L080131A4 @ =0x08B928BC
    movs r1, #0xf0
    ldrb r5, [r3]
    ands r1, r5
    lsrs r1, r1, #3
    adds r1, r2, r1
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r2, [r1]
    adds r0, r3, #0
    adds r1, r4, #0
    bl _call_via_r2
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080131A0: .4byte 0x00017FFF
.L080131A4: .4byte 0x08B928BC
    func_end Decompress

    thumb_func_start func_080131A8
func_080131A8: @ 0x080131A8
    ldr r0, [r0]
    lsrs r0, r0, #8
    bx lr
    func_end func_080131A8

    thumb_func_start func_080131B0
func_080131B0: @ 0x080131B0
    adds r3, r2, #0
    str r3, [r0]
    ldr r2, .L080131C4 @ =0x0000FFE0
    ands r1, r2
    asrs r1, r1, #5
    ands r2, r3
    asrs r3, r2, #5
    subs r1, r3, r1
    str r1, [r0, #4]
    bx lr
    .align 2, 0
.L080131C4: .4byte 0x0000FFE0
    func_end func_080131B0

    thumb_func_start func_080131C8
func_080131C8: @ 0x080131C8
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r1, [r5]
    adds r0, r4, #0
    bl Decompress
    adds r0, r4, #0
    bl func_080131A8
    ldr r1, [r5]
    adds r1, r1, r0
    str r1, [r5]
    ldr r1, [r5, #4]
    cmp r0, #0
    bge .L080131EA
    adds r0, #0x1f
.L080131EA:
    asrs r0, r0, #5
    adds r0, r1, r0
    str r0, [r5, #4]
    adds r0, r1, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080131C8

    thumb_func_start func_080131F8
func_080131F8: @ 0x080131F8
    lsls r3, r1, #5
    ldr r2, [r0]
    adds r2, r2, r3
    str r2, [r0]
    ldr r2, [r0, #4]
    adds r1, r2, r1
    str r1, [r0, #4]
    adds r0, r2, #0
    bx lr
    func_end func_080131F8

    thumb_func_start Register2dChrMove
Register2dChrMove: @ 0x0801320C
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    lsls r7, r2, #5
    cmp r3, #0
    ble .L08013232
    adds r4, r3, #0
.L0801321A:
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r7, #0
    bl RegisterDataMove
    adds r6, r6, r7
    movs r0, #0x80
    lsls r0, r0, #3
    adds r5, r5, r0
    subs r4, #1
    cmp r4, #0
    bne .L0801321A
.L08013232:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end Register2dChrMove

    thumb_func_start Copy2dChr
Copy2dChr: @ 0x08013238
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r6, r1, #0
    lsls r4, r2, #5
    cmp r3, #0
    ble .L08013268
    adds r5, r3, #0
.L08013246:
    adds r2, r4, #0
    cmp r4, #0
    bge .L0801324E
    adds r2, r4, #3
.L0801324E:
    lsls r2, r2, #9
    lsrs r2, r2, #0xb
    adds r0, r7, #0
    adds r1, r6, #0
    bl CpuFastSet
    adds r7, r7, r4
    movs r0, #0x80
    lsls r0, r0, #3
    adds r6, r6, r0
    subs r5, #1
    cmp r5, #0
    bne .L08013246
.L08013268:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end Copy2dChr

    thumb_func_start ApplyBitmap
ApplyBitmap: @ 0x08013270
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r6, r0, #0
    adds r5, r1, #0
    adds r7, r2, #0
    cmp r3, #0
    ble .L080132A0
    lsls r0, r7, #6
    mov sb, r0
    adds r4, r3, #0
    lsls r0, r7, #5
    mov r8, r0
.L0801328C:
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r7, #0
    bl ApplyBitmapLine
    add r6, sb
    add r5, r8
    subs r4, #1
    cmp r4, #0
    bne .L0801328C
.L080132A0:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end ApplyBitmap

    thumb_func_start ApplyBitmapLine
ApplyBitmapLine: @ 0x080132AC
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    adds r7, r2, #0
    cmp r7, #0
    ble .L080132CE
    adds r4, r7, #0
.L080132BA:
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r7, #0
    bl ApplyBitmapTile
    adds r6, #8
    adds r5, #0x20
    subs r4, #1
    cmp r4, #0
    bne .L080132BA
.L080132CE:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end ApplyBitmapLine

    thumb_func_start ApplyBitmapTile
ApplyBitmapTile: @ 0x080132D4
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    movs r1, #7
.L080132DC:
    ldrb r5, [r3, #7]
    lsls r0, r5, #4
    ldrb r5, [r3, #6]
    orrs r0, r5
    lsls r0, r0, #4
    ldrb r5, [r3, #5]
    orrs r0, r5
    lsls r0, r0, #4
    ldrb r5, [r3, #4]
    orrs r0, r5
    lsls r0, r0, #4
    ldrb r5, [r3, #3]
    orrs r0, r5
    lsls r0, r0, #4
    ldrb r5, [r3, #2]
    orrs r0, r5
    lsls r0, r0, #4
    ldrb r5, [r3, #1]
    orrs r0, r5
    lsls r0, r0, #4
    ldrb r5, [r3]
    orrs r0, r5
    stm r4!, {r0}
    lsls r0, r2, #3
    adds r3, r3, r0
    subs r1, #1
    cmp r1, #0
    bge .L080132DC
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end ApplyBitmapTile

    thumb_func_start PutAppliedBitmap
PutAppliedBitmap: @ 0x0801331C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    movs r0, #0
    cmp r0, r3
    bge .L08013348
.L0801332A:
    adds r2, r0, #1
    cmp r5, #0
    ble .L08013342
    lsls r0, r0, #6
    adds r0, r0, r6
    adds r1, r5, #0
.L08013336:
    strh r4, [r0]
    adds r4, #1
    adds r0, #2
    subs r1, #1
    cmp r1, #0
    bne .L08013336
.L08013342:
    adds r0, r2, #0
    cmp r0, r3
    blt .L0801332A
.L08013348:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end PutAppliedBitmap

    thumb_func_start PutDigits
PutDigits: @ 0x08013350
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r2, #0
    cmp r3, #0
    ble .L08013374
    movs r2, #0
.L0801335C:
    strh r2, [r0]
    subs r0, #2
    subs r3, #1
    cmp r3, #0
    bne .L0801335C
    b .L08013374
.L08013368:
    ldrb r2, [r1]
    adds r0, r2, r5
    subs r0, #0x30
    strh r0, [r4]
    subs r4, #2
    subs r1, #1
.L08013374:
    ldrb r0, [r1]
    cmp r0, #0x20
    bne .L08013368
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end PutDigits

    thumb_func_start func_08013380
func_08013380: @ 0x08013380
    adds r0, #0x4c
    strh r1, [r0]
    bx lr
    func_end func_08013380

    thumb_func_start func_08013388
func_08013388: @ 0x08013388
    adds r0, #0x4c
    ldrh r1, [r0]
    adds r1, #1
    ldr r2, .L08013398 @ =0x00007FFF
    ands r1, r2
    strh r1, [r0]
    bx lr
    .align 2, 0
.L08013398: .4byte 0x00007FFF
    func_end func_08013388

    thumb_func_start func_0801339C
func_0801339C: @ 0x0801339C
    adds r0, #0x4c
    ldrh r1, [r0]
    subs r1, #1
    strh r1, [r0]
    bx lr
    func_end func_0801339C

    thumb_func_start func_080133A8
func_080133A8: @ 0x080133A8
    push {r4, lr}
    movs r1, #0x9f
    movs r3, #0xf0
    movs r4, #1
    rsbs r4, r4, #0
    adds r2, r4, #0
.L080133B4:
    strh r3, [r0]
    adds r0, #2
    strh r2, [r0]
    adds r0, #2
    subs r1, #1
    cmp r1, #0
    bge .L080133B4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080133A8

    thumb_func_start func_080133C8
func_080133C8: @ 0x080133C8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    adds r5, r1, #0
    adds r4, r2, #0
    ldr r6, [sp, #0x18]
    cmp r4, r6
    ble .L080133E6
    adds r1, r3, #0
    adds r3, r5, #0
    adds r5, r1, #0
    adds r1, r6, #0
    adds r6, r4, #0
    adds r4, r1, #0
.L080133E6:
    subs r0, r3, r5
    lsls r0, r0, #0x10
    subs r1, r6, r4
    bl __divsi3
    mov ip, r0
    lsls r5, r5, #0x10
    cmp r6, #0xa0
    ble .L080133FA
    movs r6, #0xa0
.L080133FA:
    cmp r4, #0
    bge .L0801340A
    rsbs r0, r4, #0
    mov r1, ip
    muls r1, r0, r1
    adds r0, r1, #0
    adds r5, r5, r0
    movs r4, #0
.L0801340A:
    cmp r4, r6
    bge .L08013444
    lsls r0, r4, #2
    mov r2, r8
    adds r1, r0, r2
    adds r2, r1, #0
.L08013416:
    asrs r3, r5, #0x10
    cmp r3, #0xf0
    ble .L0801341E
    movs r3, #0xf0
.L0801341E:
    cmp r3, #0
    bge .L08013424
    movs r3, #0
.L08013424:
    movs r7, #0
    ldrsh r0, [r1, r7]
    cmp r0, r3
    ble .L0801342E
    strh r3, [r1]
.L0801342E:
    movs r7, #2
    ldrsh r0, [r2, r7]
    cmp r0, r3
    bge .L08013438
    strh r3, [r2, #2]
.L08013438:
    add r5, ip
    adds r1, #4
    adds r2, #4
    adds r4, #1
    cmp r4, r6
    blt .L08013416
.L08013444:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080133C8

    thumb_func_start func_08013450
func_08013450: @ 0x08013450
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    adds r6, r0, #0
    str r6, [sp]
    cmp r6, #0x50
    ble .L08013468
    movs r0, #0x50
    str r0, [sp]
.L08013468:
    adds r2, r6, #0
    movs r1, #0
    mov sb, r1
    cmp r2, #0
    blt .L08013560
    movs r3, #0
    str r3, [sp, #4]
    ldr r4, [sp]
    lsls r0, r4, #2
    ldr r7, .L08013574 @ =gBuf
    adds r0, r0, r7
    mov sl, r0
    str r0, [sp, #8]
    rsbs r1, r2, #0
    str r1, [sp, #0xc]
    lsls r0, r2, #2
    ldr r3, [sp, #8]
    subs r3, r3, r0
    str r3, [sp, #0x10]
    ldr r4, [sp, #8]
    adds r0, r0, r4
    str r0, [sp, #0x14]
.L08013494:
    ldr r0, [sp]
    add r0, sb
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp, #0x18]
    cmp r0, #0x9f
    bhi .L080134A6
    mov r7, sl
    strh r2, [r7, #2]
.L080134A6:
    ldr r0, [sp]
    mov r1, sb
    subs r0, r0, r1
    mov r8, r0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r4, #0x9f
    bhi .L080134BA
    ldr r3, [sp, #8]
    strh r2, [r3, #2]
.L080134BA:
    ldr r7, [sp]
    adds r7, r7, r2
    mov ip, r7
    lsls r0, r7, #0x10
    lsrs r3, r0, #0x10
    cmp r3, #0x9f
    bhi .L080134CE
    mov r1, sb
    ldr r0, [sp, #0x14]
    strh r1, [r0, #2]
.L080134CE:
    ldr r7, [sp]
    subs r5, r7, r2
    lsls r0, r5, #0x10
    lsrs r1, r0, #0x10
    cmp r1, #0x9f
    bhi .L080134E0
    mov r7, sb
    ldr r0, [sp, #0x10]
    strh r7, [r0, #2]
.L080134E0:
    ldr r0, [sp, #0x18]
    cmp r0, #0x9f
    bhi .L080134EE
    mov r7, sp
    ldrh r0, [r7, #0xc]
    mov r7, sl
    strh r0, [r7]
.L080134EE:
    cmp r4, #0x9f
    bhi .L08013500
    mov r4, r8
    lsls r0, r4, #2
    ldr r7, .L08013574 @ =gBuf
    adds r0, r0, r7
    mov r4, sp
    ldrh r4, [r4, #0xc]
    strh r4, [r0]
.L08013500:
    cmp r3, #0x9f
    bhi .L08013512
    mov r7, ip
    lsls r0, r7, #2
    ldr r3, .L08013574 @ =gBuf
    adds r0, r0, r3
    mov r4, sp
    ldrh r4, [r4, #4]
    strh r4, [r0]
.L08013512:
    cmp r1, #0x9f
    bhi .L08013522
    lsls r0, r5, #2
    ldr r7, .L08013574 @ =gBuf
    adds r0, r0, r7
    mov r1, sp
    ldrh r1, [r1, #4]
    strh r1, [r0]
.L08013522:
    adds r1, r6, #1
    mov r3, sb
    lsls r0, r3, #1
    subs r6, r1, r0
    cmp r6, #0
    bge .L08013548
    subs r1, r2, #1
    lsls r0, r1, #1
    adds r6, r6, r0
    ldr r4, [sp, #0xc]
    adds r4, #1
    str r4, [sp, #0xc]
    ldr r7, [sp, #0x10]
    adds r7, #4
    str r7, [sp, #0x10]
    ldr r0, [sp, #0x14]
    subs r0, #4
    str r0, [sp, #0x14]
    adds r2, r1, #0
.L08013548:
    ldr r1, [sp, #4]
    subs r1, #1
    str r1, [sp, #4]
    movs r3, #4
    add sl, r3
    ldr r4, [sp, #8]
    subs r4, #4
    str r4, [sp, #8]
    movs r7, #1
    add sb, r7
    cmp r2, sb
    bge .L08013494
.L08013560:
    ldr r0, .L08013574 @ =gBuf
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08013574: .4byte gBuf
    func_end func_08013450

    thumb_func_start func_08013578
func_08013578: @ 0x08013578
    push {r4, r5, r6, r7, lr}
    adds r3, r0, #0
    ldr r7, .L08013594 @ =gBuf
    movs r6, #0
    adds r5, r7, #0
    ldr r4, .L08013598 @ =gPal
.L08013584:
    ldrh r1, [r4]
    movs r0, #0x1f
    ands r0, r1
    cmp r0, r3
    blt .L0801359C
    subs r1, r1, r3
    b .L080135A0
    .align 2, 0
.L08013594: .4byte gBuf
.L08013598: .4byte gPal
.L0801359C:
    ldr r0, .L080135B0 @ =0x0000FFE0
    ands r1, r0
.L080135A0:
    movs r0, #0xf8
    lsls r0, r0, #2
    ands r0, r1
    lsls r2, r3, #5
    cmp r0, r2
    blt .L080135B4
    subs r1, r1, r2
    b .L080135B8
    .align 2, 0
.L080135B0: .4byte 0x0000FFE0
.L080135B4:
    ldr r0, .L080135C8 @ =0x0000FC1F
    ands r1, r0
.L080135B8:
    movs r0, #0xf8
    lsls r0, r0, #7
    ands r0, r1
    lsls r2, r3, #0xa
    cmp r0, r2
    blt .L080135CC
    subs r1, r1, r2
    b .L080135D0
    .align 2, 0
.L080135C8: .4byte 0x0000FC1F
.L080135CC:
    ldr r0, .L080135F8 @ =0x000003FF
    ands r1, r0
.L080135D0:
    strh r1, [r5]
    adds r5, #2
    adds r4, #2
    adds r6, #1
    ldr r0, .L080135FC @ =0x000001FF
    cmp r6, r0
    ble .L08013584
    bl DisablePalSync
    movs r1, #0xa0
    lsls r1, r1, #0x13
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r7, #0
    bl RegisterDataMove
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080135F8: .4byte 0x000003FF
.L080135FC: .4byte 0x000001FF
    func_end func_08013578

    thumb_func_start func_08013600
func_08013600: @ 0x08013600
    bx lr
    func_end func_08013600

    thumb_func_start func_08013604
func_08013604: @ 0x08013604
    push {lr}
    sub sp, #0x10
    ldr r1, .L08013620 @ =0x08193E20
    mov r0, sp
    movs r2, #0xd
    bl memcpy
    mov r0, sp
    bl func_08013604
    add sp, #0x10
    pop {r0}
    bx r0
    .align 2, 0
.L08013620: .4byte 0x08193E20
    func_end func_08013604

    thumb_func_start func_08013624
func_08013624: @ 0x08013624
    ldr r0, .L08013628 @ =gPalFadeStatus
    bx lr
    .align 2, 0
.L08013628: .4byte gPalFadeStatus
    func_end func_08013624

    thumb_func_start func_0801362C
func_0801362C: @ 0x0801362C
    push {r4, lr}
    adds r4, r0, #0
    bl func_08013624
    strh r4, [r0, #0x2a]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0801362C

    thumb_func_start func_0801363C
func_0801363C: @ 0x0801363C
    push {r4, lr}
    adds r4, r0, #0
    bl func_08013624
    adds r0, #0x5a
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0801363C

    thumb_func_start func_08013650
func_08013650: @ 0x08013650
    push {r4, lr}
    adds r4, r0, #0
    bl func_08013624
    adds r0, #0x8a
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08013650

    thumb_func_start func_08013664
func_08013664: @ 0x08013664
    push {lr}
    bl func_08013624
    ldrh r0, [r0, #0x2a]
    pop {r1}
    bx r1
    func_end func_08013664

    thumb_func_start func_08013670
func_08013670: @ 0x08013670
    push {lr}
    bl func_08013624
    adds r0, #0x5a
    ldrh r0, [r0]
    pop {r1}
    bx r1
    func_end func_08013670

    thumb_func_start func_08013680
func_08013680: @ 0x08013680
    push {lr}
    bl func_08013624
    adds r0, #0x8a
    ldrh r0, [r0]
    pop {r1}
    bx r1
    func_end func_08013680

    thumb_func_start func_08013690
func_08013690: @ 0x08013690
    push {r4, r5, lr}
    adds r4, r1, #0
    adds r5, r2, #0
    bl func_0801362C
    adds r0, r4, #0
    bl func_0801363C
    adds r0, r5, #0
    bl func_08013650
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08013690

    thumb_func_start func_080136AC
func_080136AC: @ 0x080136AC
    push {r4, r5, lr}
    bl func_08013624
    ldr r3, .L080136F4 @ =gPal
    movs r1, #0
.L080136B6:
    adds r5, r0, #0
    adds r5, #0x30
    adds r4, r1, #1
    adds r1, r0, #0
    movs r2, #0xf
.L080136C0:
    ldrh r0, [r3]
    strh r0, [r1]
    adds r3, #2
    adds r1, #2
    subs r2, #1
    cmp r2, #0
    bge .L080136C0
    adds r0, r5, #0
    adds r1, r4, #0
    cmp r1, #0x1f
    ble .L080136B6
    movs r4, #0x80
    lsls r4, r4, #1
    adds r0, r4, #0
    bl func_0801362C
    adds r0, r4, #0
    bl func_0801363C
    adds r0, r4, #0
    bl func_08013650
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080136F4: .4byte gPal
    func_end func_080136AC

    thumb_func_start func_080136F8
func_080136F8: @ 0x080136F8
    push {r4, lr}
    adds r4, r0, #0
    bl func_08013624
    lsls r2, r4, #5
    ldr r1, .L08013724 @ =gPal
    adds r2, r2, r1
    lsls r1, r4, #1
    adds r1, r1, r4
    lsls r1, r1, #4
    adds r1, r1, r0
    movs r3, #0xf
.L08013710:
    ldrh r0, [r2]
    strh r0, [r1]
    adds r2, #2
    adds r1, #2
    subs r3, #1
    cmp r3, #0
    bge .L08013710
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08013724: .4byte gPal
    func_end func_080136F8

    thumb_func_start func_08013728
func_08013728: @ 0x08013728
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    mov r8, r1
    str r2, [sp]
    mov sl, r3
    bl func_0801362C
    mov r0, r8
    bl func_0801363C
    ldr r0, [sp]
    bl func_08013650
    bl func_08013624
    mov sb, r0
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r7, r0
    ble .L080137AC
    ldr r0, .L080137A4 @ =0xFFFFFF00
    adds r7, r7, r0
    movs r5, #0
    mov ip, r5
.L08013762:
    movs r0, #1
    lsls r0, r5
    mov r1, sl
    ands r0, r1
    cmp r0, #0
    beq .L08013798
    movs r4, #0
    movs r6, #0x1f
    mov r3, ip
    add r3, sb
    lsls r0, r5, #5
    ldr r1, .L080137A8 @ =gPal
    adds r2, r0, r1
.L0801377C:
    adds r1, r6, #0
    ldrh r0, [r3]
    ands r1, r0
    subs r0, r6, r1
    muls r0, r7, r0
    asrs r0, r0, #8
    adds r1, r1, r0
    ands r1, r6
    strh r1, [r2]
    adds r3, #2
    adds r2, #2
    adds r4, #1
    cmp r4, #0xf
    ble .L0801377C
.L08013798:
    movs r1, #0x30
    add ip, r1
    adds r5, #1
    cmp r5, #0x1f
    ble .L08013762
    b .L080137EC
    .align 2, 0
.L080137A4: .4byte 0xFFFFFF00
.L080137A8: .4byte gPal
.L080137AC:
    movs r5, #0
    mov ip, r5
.L080137B0:
    movs r0, #1
    lsls r0, r5
    mov r6, sl
    ands r0, r6
    cmp r0, #0
    beq .L080137E2
    movs r4, #0
    movs r3, #0x1f
    mov r2, ip
    add r2, sb
    lsls r0, r5, #5
    ldr r6, .L08013848 @ =gPal
    adds r1, r0, r6
.L080137CA:
    adds r0, r3, #0
    ldrh r6, [r2]
    ands r0, r6
    muls r0, r7, r0
    asrs r0, r0, #8
    ands r0, r3
    strh r0, [r1]
    adds r2, #2
    adds r1, #2
    adds r4, #1
    cmp r4, #0xf
    ble .L080137CA
.L080137E2:
    movs r0, #0x30
    add ip, r0
    adds r5, #1
    cmp r5, #0x1f
    ble .L080137B0
.L080137EC:
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r8, r0
    ble .L08013850
    ldr r1, .L0801384C @ =0xFFFFFF00
    add r8, r1
    movs r5, #0
    mov ip, r5
.L080137FC:
    movs r0, #1
    lsls r0, r5
    mov r6, sl
    ands r0, r6
    cmp r0, #0
    beq .L0801383C
    movs r4, #0
    movs r6, #0xf8
    lsls r6, r6, #2
    mov r3, ip
    add r3, sb
    lsls r0, r5, #5
    ldr r7, .L08013848 @ =gPal
    adds r2, r0, r7
.L08013818:
    adds r0, r6, #0
    ldrh r1, [r3]
    ands r0, r1
    subs r1, r6, r0
    mov r7, r8
    muls r7, r1, r7
    adds r1, r7, #0
    asrs r1, r1, #8
    adds r0, r0, r1
    ands r0, r6
    ldrh r1, [r2]
    orrs r0, r1
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    adds r4, #1
    cmp r4, #0xf
    ble .L08013818
.L0801383C:
    movs r6, #0x30
    add ip, r6
    adds r5, #1
    cmp r5, #0x1f
    ble .L080137FC
    b .L08013898
    .align 2, 0
.L08013848: .4byte gPal
.L0801384C: .4byte 0xFFFFFF00
.L08013850:
    movs r5, #0
    movs r6, #0
.L08013854:
    movs r0, #1
    lsls r0, r5
    mov r7, sl
    ands r0, r7
    cmp r0, #0
    beq .L08013890
    movs r4, #0
    movs r3, #0xf8
    lsls r3, r3, #2
    mov r0, sb
    adds r2, r6, r0
    lsls r0, r5, #5
    ldr r7, .L080138F8 @ =gPal
    adds r1, r0, r7
.L08013870:
    adds r0, r3, #0
    ldrh r7, [r2]
    ands r0, r7
    mov r7, r8
    muls r7, r0, r7
    adds r0, r7, #0
    asrs r0, r0, #8
    ands r0, r3
    ldrh r7, [r1]
    orrs r0, r7
    strh r0, [r1]
    adds r2, #2
    adds r1, #2
    adds r4, #1
    cmp r4, #0xf
    ble .L08013870
.L08013890:
    adds r6, #0x30
    adds r5, #1
    cmp r5, #0x1f
    ble .L08013854
.L08013898:
    movs r0, #0x80
    lsls r0, r0, #1
    ldr r1, [sp]
    cmp r1, r0
    ble .L08013900
    ldr r5, .L080138FC @ =0xFFFFFF00
    adds r1, r1, r5
    str r1, [sp]
    movs r5, #0
.L080138AA:
    movs r0, #1
    lsls r0, r5
    mov r6, sl
    ands r0, r6
    adds r7, r5, #1
    cmp r0, #0
    beq .L080138F0
    movs r4, #0
    lsls r0, r5, #1
    adds r0, r0, r5
    lsls r0, r0, #4
    movs r6, #0xf8
    lsls r6, r6, #7
    mov r1, sb
    adds r3, r0, r1
    lsls r0, r5, #5
    ldr r5, .L080138F8 @ =gPal
    adds r2, r0, r5
.L080138CE:
    adds r0, r6, #0
    ldrh r1, [r3]
    ands r0, r1
    subs r1, r6, r0
    ldr r5, [sp]
    muls r1, r5, r1
    asrs r1, r1, #8
    adds r0, r0, r1
    ands r0, r6
    ldrh r1, [r2]
    orrs r0, r1
    strh r0, [r2]
    adds r3, #2
    adds r2, #2
    adds r4, #1
    cmp r4, #0xf
    ble .L080138CE
.L080138F0:
    adds r5, r7, #0
    cmp r5, #0x1f
    ble .L080138AA
    b .L0801394A
    .align 2, 0
.L080138F8: .4byte gPal
.L080138FC: .4byte 0xFFFFFF00
.L08013900:
    movs r5, #0
.L08013902:
    movs r0, #1
    lsls r0, r5
    mov r6, sl
    ands r0, r6
    adds r7, r5, #1
    cmp r0, #0
    beq .L08013944
    movs r4, #0
    lsls r0, r5, #1
    adds r0, r0, r5
    lsls r0, r0, #4
    movs r3, #0xf8
    lsls r3, r3, #7
    mov r1, sb
    adds r2, r0, r1
    lsls r0, r5, #5
    ldr r5, .L08013960 @ =gPal
    adds r1, r0, r5
.L08013926:
    adds r0, r3, #0
    ldrh r6, [r2]
    ands r0, r6
    ldr r5, [sp]
    muls r0, r5, r0
    asrs r0, r0, #8
    ands r0, r3
    ldrh r6, [r1]
    orrs r0, r6
    strh r0, [r1]
    adds r2, #2
    adds r1, #2
    adds r4, #1
    cmp r4, #0xf
    ble .L08013926
.L08013944:
    adds r5, r7, #0
    cmp r5, #0x1f
    ble .L08013902
.L0801394A:
    bl EnablePalSync
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08013960: .4byte gPal
    func_end func_08013728

    thumb_func_start func_08013964
func_08013964: @ 0x08013964
    movs r1, #0
    str r1, [r0, #0x44]
    bx lr
    func_end func_08013964

    thumb_func_start func_0801396C
func_0801396C: @ 0x0801396C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x44]
    ldr r0, [r4, #0x48]
    adds r2, r1, r0
    str r2, [r4, #0x44]
    movs r7, #0x80
    lsls r7, r7, #1
    subs r3, r7, r2
    ldr r0, [r4, #0x2c]
    adds r1, r0, #0
    muls r1, r3, r1
    ldr r0, [r4, #0x38]
    muls r0, r2, r0
    adds r0, r1, r0
    cmp r0, #0
    bge .L08013990
    adds r0, #0xff
.L08013990:
    asrs r6, r0, #8
    ldr r0, [r4, #0x30]
    adds r1, r0, #0
    muls r1, r3, r1
    ldr r0, [r4, #0x3c]
    muls r0, r2, r0
    adds r1, r1, r0
    cmp r1, #0
    bge .L080139A4
    adds r1, #0xff
.L080139A4:
    asrs r5, r1, #8
    ldr r0, [r4, #0x34]
    adds r1, r0, #0
    muls r1, r3, r1
    ldr r0, [r4, #0x40]
    muls r0, r2, r0
    adds r1, r1, r0
    cmp r1, #0
    bge .L080139B8
    adds r1, #0xff
.L080139B8:
    asrs r2, r1, #8
    ldr r3, [r4, #0x4c]
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08013728
    ldr r0, [r4, #0x44]
    cmp r0, r7
    bne .L080139D0
    adds r0, r4, #0
    bl Proc_Break
.L080139D0:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0801396C

    thumb_func_start func_080139D8
func_080139D8: @ 0x080139D8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    mov sb, r3
    ldr r7, [sp, #0x1c]
    ldr r4, [sp, #0x28]
    ldr r1, [sp, #0x2c]
    ldr r0, .L08013A18 @ =0x08B928DC
    bl Proc_Start
    str r5, [r0, #0x2c]
    str r6, [r0, #0x30]
    mov r1, r8
    str r1, [r0, #0x34]
    mov r1, sb
    str r1, [r0, #0x38]
    str r7, [r0, #0x3c]
    ldr r1, [sp, #0x20]
    str r1, [r0, #0x40]
    str r4, [r0, #0x48]
    ldr r1, [sp, #0x24]
    str r1, [r0, #0x4c]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08013A18: .4byte 0x08B928DC
    func_end func_080139D8

    thumb_func_start func_08013A1C
func_08013A1C: @ 0x08013A1C
    push {lr}
    ldr r0, .L08013A2C @ =0x08B928DC
    bl Proc_Find
    cmp r0, #0
    bne .L08013A30
    movs r0, #0
    b .L08013A32
    .align 2, 0
.L08013A2C: .4byte 0x08B928DC
.L08013A30:
    movs r0, #1
.L08013A32:
    pop {r1}
    bx r1
    func_end func_08013A1C

    thumb_func_start func_08013A38
func_08013A38: @ 0x08013A38
    adds r2, r0, #0
    adds r2, #0x64
    movs r1, #0
    strh r1, [r2]
    adds r0, #0x66
    movs r1, #0x5a
    strh r1, [r0]
    bx lr
    func_end func_08013A38

    thumb_func_start func_08013A48
func_08013A48: @ 0x08013A48
    push {r4, r5, lr}
    adds r3, r0, #0
    movs r4, #0
    ldr r5, .L08013AAC @ =gpKeySt
    ldr r1, [r5]
    movs r0, #1
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08013A66
    adds r1, r3, #0
    adds r1, #0x66
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
.L08013A66:
    adds r1, r3, #0
    adds r1, #0x64
    ldrh r2, [r1]
    adds r0, r2, #1
    strh r0, [r1]
    movs r0, #0xf
    ands r0, r2
    cmp r0, #0
    bne .L08013AA6
    ldr r0, [r5]
    ldrh r1, [r0, #4]
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08013A8E
    adds r0, r3, #0
    adds r0, #0x66
    movs r2, #0
    ldrsh r0, [r0, r2]
    rsbs r4, r0, #0
.L08013A8E:
    movs r0, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08013A9E
    adds r0, r3, #0
    adds r0, #0x66
    movs r1, #0
    ldrsh r4, [r0, r1]
.L08013A9E:
    movs r0, #0x9a
    adds r1, r4, #0
    bl func_08014D80
.L08013AA6:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08013AAC: .4byte gpKeySt
    func_end func_08013A48

    thumb_func_start func_08013AB0
func_08013AB0: @ 0x08013AB0
    push {lr}
    ldr r0, .L08013AC0 @ =0x08B928FC
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08013AC0: .4byte 0x08B928FC
    func_end func_08013AB0

    thumb_func_start func_08013AC4
func_08013AC4: @ 0x08013AC4
    bx lr
    func_end func_08013AC4

    thumb_func_start StartPalFadeToBlack
StartPalFadeToBlack: @ 0x08013AC8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r3, r2, #0
    ldr r0, .L08013AE0 @ =0x08B92A28
    adds r1, r4, #0
    adds r2, r5, #0
    bl StartPalFade
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08013AE0: .4byte 0x08B92A28
    func_end StartPalFadeToBlack

    thumb_func_start func_08013AE4
func_08013AE4: @ 0x08013AE4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r3, r2, #0
    ldr r0, .L08013AFC @ =0x08B92A48
    adds r1, r4, #0
    adds r2, r5, #0
    bl StartPalFade
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08013AFC: .4byte 0x08B92A48
    func_end func_08013AE4

    thumb_func_start StartPalFade
StartPalFade: @ 0x08013B00
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    mov sb, r0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r1, r3, #0
    lsls r4, r5, #1
    adds r4, r4, r5
    lsls r4, r4, #4
    ldr r0, .L08013B54 @ =gPalFadeStatus
    adds r4, r4, r0
    ldr r0, .L08013B58 @ =0x08B92914
    bl Proc_Start
    mov r8, r0
    lsls r5, r5, #5
    ldr r0, .L08013B5C @ =gPal
    adds r5, r5, r0
    adds r0, r5, #0
    adds r1, r4, #0
    movs r2, #0x10
    bl CpuSet
    str r5, [r4, #0x24]
    mov r0, sb
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #0x28]
    strh r6, [r4, #0x2a]
    adds r6, #1
    strh r6, [r4, #0x2c]
    mov r0, r8
    str r4, [r0, #0x2c]
    adds r0, r4, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08013B54: .4byte gPalFadeStatus
.L08013B58: .4byte 0x08B92914
.L08013B5C: .4byte gPal
    func_end StartPalFade

    thumb_func_start func_08013B60
func_08013B60: @ 0x08013B60
    push {lr}
    ldr r0, .L08013B6C @ =0x08B92914
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08013B6C: .4byte 0x08B92914
    func_end func_08013B60

    thumb_func_start func_08013B70
func_08013B70: @ 0x08013B70
    strh r1, [r0, #0x2c]
    bx lr
    func_end func_08013B70

    thumb_func_start func_08013B74
func_08013B74: @ 0x08013B74
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r7, r0, #0
    ldr r0, [r7, #0x2c]
    mov sl, r0
    ldr r1, [r0, #0x20]
    str r1, [sp, #8]
    ldr r1, [r0, #0x24]
    ldrh r0, [r0, #0x28]
    mov r2, sl
    ldrh r2, [r2, #0x2c]
    cmp r0, r2
    beq .L08013B9E
    mov r3, sl
    ldrh r3, [r3, #0x2a]
    cmp r0, r3
    bls .L08013BA6
.L08013B9E:
    adds r0, r7, #0
    bl Proc_End
    b .L08013C4C
.L08013BA6:
    movs r0, #0
    str r0, [sp, #4]
    str r1, [sp, #0xc]
.L08013BAC:
    ldr r1, [sp, #4]
    lsls r2, r1, #1
    mov r3, sl
    adds r0, r2, r3
    ldrh r0, [r0]
    movs r1, #0x1f
    ands r1, r0
    movs r6, #0xf8
    lsls r6, r6, #2
    ands r6, r0
    movs r3, #0xf8
    lsls r3, r3, #7
    mov sb, r3
    ands r3, r0
    mov sb, r3
    ldr r0, [sp, #8]
    adds r2, r2, r0
    ldrh r0, [r2]
    movs r2, #0x1f
    ands r2, r0
    movs r4, #0xf8
    lsls r4, r4, #2
    ands r4, r0
    movs r3, #0xf8
    lsls r3, r3, #7
    mov r8, r3
    ands r3, r0
    mov r8, r3
    ldr r0, [r7, #0x2c]
    ldrh r3, [r0, #0x28]
    ldrh r0, [r0, #0x2a]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    adds r5, r0, #0
    ldr r0, [r7, #0x2c]
    ldrh r3, [r0, #0x28]
    ldrh r0, [r0, #0x2a]
    str r0, [sp]
    movs r0, #0
    adds r1, r6, #0
    adds r2, r4, #0
    bl Interpolate
    adds r4, r0, #0
    ldr r0, [r7, #0x2c]
    ldrh r3, [r0, #0x28]
    ldrh r0, [r0, #0x2a]
    str r0, [sp]
    movs r0, #0
    mov r1, sb
    mov r2, r8
    bl Interpolate
    movs r1, #0xf8
    lsls r1, r1, #7
    ands r0, r1
    movs r2, #0xf8
    lsls r2, r2, #2
    ands r4, r2
    orrs r0, r4
    movs r3, #0x1f
    ands r5, r3
    orrs r0, r5
    ldr r1, [sp, #0xc]
    strh r0, [r1]
    adds r1, #2
    str r1, [sp, #0xc]
    ldr r2, [sp, #4]
    adds r2, #1
    str r2, [sp, #4]
    cmp r2, #0xf
    ble .L08013BAC
    bl EnablePalSync
    ldr r1, [r7, #0x2c]
    ldrh r0, [r1, #0x28]
    adds r0, #1
    strh r0, [r1, #0x28]
.L08013C4C:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08013B74

    thumb_func_start SetBlackPal
SetBlackPal: @ 0x08013C5C
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08013C74 @ =0x08B92A28
    lsls r1, r1, #5
    ldr r2, .L08013C78 @ =gPal
    adds r1, r1, r2
    movs r2, #0x10
    bl CpuSet
    pop {r0}
    bx r0
    .align 2, 0
.L08013C74: .4byte 0x08B92A28
.L08013C78: .4byte gPal
    func_end SetBlackPal

    thumb_func_start func_08013C7C
func_08013C7C: @ 0x08013C7C
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08013C94 @ =0x08B92A48
    lsls r1, r1, #5
    ldr r2, .L08013C98 @ =gPal
    adds r1, r1, r2
    movs r2, #0x10
    bl CpuSet
    pop {r0}
    bx r0
    .align 2, 0
.L08013C94: .4byte 0x08B92A48
.L08013C98: .4byte gPal
    func_end func_08013C7C

    thumb_func_start func_08013C9C
func_08013C9C: @ 0x08013C9C
    push {r4, lr}
    movs r4, #0
.L08013CA0:
    adds r0, r4, #0
    bl SetBlackPal
    adds r4, #1
    cmp r4, #0x1f
    ble .L08013CA0
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08013C9C

    thumb_func_start func_08013CB4
func_08013CB4: @ 0x08013CB4
    push {r4, lr}
    movs r4, #0
.L08013CB8:
    adds r0, r4, #0
    bl SetBlackPal
    adds r4, #1
    cmp r4, #0x1f
    ble .L08013CB8
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08013CB4

    thumb_func_start func_08013CCC
func_08013CCC: @ 0x08013CCC
    push {r4, r5, r6, lr}
    ldr r1, .L08013D3C @ =gDispIo
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
    ldr r1, .L08013D40 @ =0x0000FFE0
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
.L08013D3C: .4byte gDispIo
.L08013D40: .4byte 0x0000FFE0
    func_end func_08013CCC

    thumb_func_start func_08013D44
func_08013D44: @ 0x08013D44
    push {lr}
    adds r2, r0, #0
    ldr r0, .L08013D5C @ =gDispIo
    adds r3, r0, #0
    adds r3, #0x46
    ldrb r0, [r3]
    cmp r0, #0x10
    bne .L08013D60
    adds r0, r2, #0
    bl Proc_End
    b .L08013D84
    .align 2, 0
.L08013D5C: .4byte gDispIo
.L08013D60:
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
    ble .L08013D7E
    movs r0, #0x80
    lsls r0, r0, #1
    strh r0, [r1]
.L08013D7E:
    ldrh r1, [r1]
    lsrs r0, r1, #4
    strb r0, [r3]
.L08013D84:
    pop {r0}
    bx r0
    func_end func_08013D44

    thumb_func_start func_08013D88
func_08013D88: @ 0x08013D88
    push {r4, r5, r6, lr}
    ldr r1, .L08013E08 @ =gDispIo
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
    movs r2, #0
    strb r2, [r1]
    adds r1, #1
    strb r2, [r1]
    adds r1, #1
    movs r5, #0x10
    strb r5, [r1]
    ldr r1, .L08013E0C @ =0x0000FFE0
    mov r6, ip
    ldrh r6, [r6, #0x3c]
    ands r1, r6
    movs r2, #0x1f
    orrs r1, r2
    ldr r2, .L08013E10 @ =0x0000E0FF
    ands r1, r2
    movs r6, #0xf8
    lsls r6, r6, #5
    adds r2, r6, #0
    orrs r1, r2
    mov r2, ip
    strh r1, [r2, #0x3c]
    ldrb r6, [r4]
    orrs r3, r6
    strb r3, [r4]
    adds r1, r0, #0
    adds r1, #0x64
    strh r5, [r1]
    adds r0, #0x66
    movs r1, #0x80
    lsls r1, r1, #1
    strh r1, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08013E08: .4byte gDispIo
.L08013E0C: .4byte 0x0000FFE0
.L08013E10: .4byte 0x0000E0FF
    func_end func_08013D88

    thumb_func_start func_08013E14
func_08013E14: @ 0x08013E14
    push {lr}
    adds r2, r0, #0
    ldr r0, .L08013E2C @ =gDispIo
    adds r3, r0, #0
    adds r3, #0x46
    ldrb r0, [r3]
    cmp r0, #0
    bne .L08013E30
    adds r0, r2, #0
    bl Proc_End
    b .L08013E50
    .align 2, 0
.L08013E2C: .4byte gDispIo
.L08013E30:
    adds r1, r2, #0
    adds r1, #0x66
    adds r0, r2, #0
    adds r0, #0x64
    ldrh r2, [r1]
    ldrh r0, [r0]
    subs r0, r2, r0
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bgt .L08013E4A
    movs r0, #0
    strh r0, [r1]
.L08013E4A:
    ldrh r1, [r1]
    lsrs r0, r1, #4
    strb r0, [r3]
.L08013E50:
    pop {r0}
    bx r0
    func_end func_08013E14

    thumb_func_start func_08013E54
func_08013E54: @ 0x08013E54
    push {lr}
    bl func_08013CCC
    ldr r3, .L08013E80 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x80
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    pop {r0}
    bx r0
    .align 2, 0
.L08013E80: .4byte gDispIo
    func_end func_08013E54

    thumb_func_start func_08013E84
func_08013E84: @ 0x08013E84
    push {lr}
    bl func_08013D88
    ldr r3, .L08013EB4 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x80
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r1, r3, #0
    adds r1, #0x46
    movs r0, #0x10
    strb r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L08013EB4: .4byte gDispIo
    func_end func_08013E84

    thumb_func_start FadeExists
FadeExists: @ 0x08013EB8
    push {lr}
    ldr r0, .L08013EE8 @ =0x08B9294C
    bl Proc_Find
    cmp r0, #0
    bne .L08013EF8
    ldr r0, .L08013EEC @ =0x08B9292C
    bl Proc_Find
    cmp r0, #0
    bne .L08013EF8
    ldr r0, .L08013EF0 @ =0x08B9298C
    bl Proc_Find
    cmp r0, #0
    bne .L08013EF8
    ldr r0, .L08013EF4 @ =0x08B9296C
    bl Proc_Find
    cmp r0, #0
    bne .L08013EF8
    movs r0, #0
    b .L08013EFA
    .align 2, 0
.L08013EE8: .4byte 0x08B9294C
.L08013EEC: .4byte 0x08B9292C
.L08013EF0: .4byte 0x08B9298C
.L08013EF4: .4byte 0x08B9296C
.L08013EF8:
    movs r0, #1
.L08013EFA:
    pop {r1}
    bx r1
    func_end FadeExists

    thumb_func_start StartFadeToBlack
StartFadeToBlack: @ 0x08013F00
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08013F18 @ =0x08B9292C
    movs r1, #3
    bl Proc_Start
    adds r0, #0x64
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08013F18: .4byte 0x08B9292C
    func_end StartFadeToBlack

    thumb_func_start StartFadeFromBlack
StartFadeFromBlack: @ 0x08013F1C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08013F34 @ =0x08B9294C
    movs r1, #3
    bl Proc_Start
    adds r0, #0x64
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08013F34: .4byte 0x08B9294C
    func_end StartFadeFromBlack

    thumb_func_start StartLockingFadeToBlack
StartLockingFadeToBlack: @ 0x08013F38
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08013F4C @ =0x08B9292C
    bl Proc_StartBlocking
    adds r0, #0x64
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08013F4C: .4byte 0x08B9292C
    func_end StartLockingFadeToBlack

    thumb_func_start StartLockingFadeFromBlack
StartLockingFadeFromBlack: @ 0x08013F50
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08013F64 @ =0x08B9294C
    bl Proc_StartBlocking
    adds r0, #0x64
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08013F64: .4byte 0x08B9294C
    func_end StartLockingFadeFromBlack

    thumb_func_start StartLockingFadeToWhite
StartLockingFadeToWhite: @ 0x08013F68
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08013F7C @ =0x08B9296C
    bl Proc_StartBlocking
    adds r0, #0x64
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08013F7C: .4byte 0x08B9296C
    func_end StartLockingFadeToWhite

    thumb_func_start StartLockingFadeFromWhite
StartLockingFadeFromWhite: @ 0x08013F80
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08013F94 @ =0x08B9298C
    bl Proc_StartBlocking
    adds r0, #0x64
    strh r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08013F94: .4byte 0x08B9298C
    func_end StartLockingFadeFromWhite

    thumb_func_start StartMidFadeToBlack
StartMidFadeToBlack: @ 0x08013F98
    push {lr}
    movs r0, #0x10
    bl StartFadeToBlack
    pop {r0}
    bx r0
    func_end StartMidFadeToBlack

    thumb_func_start func_08013FA4
func_08013FA4: @ 0x08013FA4
    push {lr}
    movs r0, #4
    bl StartFadeToBlack
    pop {r0}
    bx r0
    func_end func_08013FA4

    thumb_func_start StartFastFadeToBlack
StartFastFadeToBlack: @ 0x08013FB0
    push {lr}
    movs r0, #0x40
    bl StartFadeToBlack
    pop {r0}
    bx r0
    func_end StartFastFadeToBlack

    thumb_func_start func_08013FBC
func_08013FBC: @ 0x08013FBC
    push {lr}
    movs r0, #0x10
    bl StartFadeFromBlack
    pop {r0}
    bx r0
    func_end func_08013FBC

    thumb_func_start func_08013FC8
func_08013FC8: @ 0x08013FC8
    push {lr}
    movs r0, #4
    bl StartFadeFromBlack
    pop {r0}
    bx r0
    func_end func_08013FC8

    thumb_func_start func_08013FD4
func_08013FD4: @ 0x08013FD4
    push {lr}
    movs r0, #0x40
    bl StartFadeFromBlack
    pop {r0}
    bx r0
    func_end func_08013FD4

    thumb_func_start StartMidLockingFadeToBlack
StartMidLockingFadeToBlack: @ 0x08013FE0
    push {lr}
    adds r1, r0, #0
    movs r0, #0x10
    bl StartLockingFadeToBlack
    pop {r0}
    bx r0
    func_end StartMidLockingFadeToBlack

    thumb_func_start StartSlowLockingFadeToBlack
StartSlowLockingFadeToBlack: @ 0x08013FF0
    push {lr}
    adds r1, r0, #0
    movs r0, #4
    bl StartLockingFadeToBlack
    pop {r0}
    bx r0
    func_end StartSlowLockingFadeToBlack

    thumb_func_start func_08014000
func_08014000: @ 0x08014000
    push {lr}
    adds r1, r0, #0
    movs r0, #0x40
    bl StartLockingFadeToBlack
    pop {r0}
    bx r0
    func_end func_08014000

    thumb_func_start StartMidLockingFadeFromBlack
StartMidLockingFadeFromBlack: @ 0x08014010
    push {lr}
    adds r1, r0, #0
    movs r0, #0x10
    bl StartLockingFadeFromBlack
    pop {r0}
    bx r0
    func_end StartMidLockingFadeFromBlack

    thumb_func_start func_08014020
func_08014020: @ 0x08014020
    push {lr}
    adds r1, r0, #0
    movs r0, #4
    bl StartLockingFadeFromBlack
    pop {r0}
    bx r0
    func_end func_08014020

    thumb_func_start func_08014030
func_08014030: @ 0x08014030
    push {lr}
    adds r1, r0, #0
    movs r0, #0x40
    bl StartLockingFadeFromBlack
    pop {r0}
    bx r0
    func_end func_08014030

    thumb_func_start func_08014040
func_08014040: @ 0x08014040
    push {lr}
    adds r1, r0, #0
    movs r0, #4
    bl StartLockingFadeToWhite
    pop {r0}
    bx r0
    func_end func_08014040

    thumb_func_start func_08014050
func_08014050: @ 0x08014050
    push {lr}
    adds r1, r0, #0
    movs r0, #4
    bl StartLockingFadeFromWhite
    pop {r0}
    bx r0
    func_end func_08014050

    thumb_func_start func_08014060
func_08014060: @ 0x08014060
    push {lr}
    adds r2, r0, #0
    ldr r3, .L08014074 @ =func_080143E0
    movs r0, #1
    movs r1, #4
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L08014074: .4byte func_080143E0
    func_end func_08014060

    thumb_func_start func_08014078
func_08014078: @ 0x08014078
    push {lr}
    adds r2, r0, #0
    ldr r3, .L0801408C @ =func_080143E0
    movs r0, #1
    movs r1, #8
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L0801408C: .4byte func_080143E0
    func_end func_08014078

    thumb_func_start func_08014090
func_08014090: @ 0x08014090
    push {lr}
    adds r2, r0, #0
    ldr r3, .L080140A4 @ =func_080143E0
    movs r0, #1
    movs r1, #0x10
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L080140A4: .4byte func_080143E0
    func_end func_08014090

    thumb_func_start func_080140A8
func_080140A8: @ 0x080140A8
    push {lr}
    adds r2, r0, #0
    ldr r3, .L080140BC @ =func_080143E0
    movs r0, #1
    movs r1, #0x20
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L080140BC: .4byte func_080143E0
    func_end func_080140A8

    thumb_func_start func_080140C0
func_080140C0: @ 0x080140C0
    push {lr}
    adds r2, r0, #0
    ldr r3, .L080140D4 @ =func_080143E0
    movs r0, #1
    movs r1, #0x40
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L080140D4: .4byte func_080143E0
    func_end func_080140C0

    thumb_func_start func_080140D8
func_080140D8: @ 0x080140D8
    push {lr}
    adds r2, r0, #0
    movs r0, #0
    movs r1, #8
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_080140D8

    thumb_func_start func_080140EC
func_080140EC: @ 0x080140EC
    push {lr}
    adds r2, r0, #0
    movs r0, #0
    movs r1, #0x10
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_080140EC

    thumb_func_start func_08014100
func_08014100: @ 0x08014100
    push {lr}
    adds r2, r0, #0
    movs r0, #0
    movs r1, #0x20
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_08014100

    thumb_func_start func_08014114
func_08014114: @ 0x08014114
    push {lr}
    adds r2, r0, #0
    movs r0, #0
    movs r1, #0x40
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_08014114

    thumb_func_start func_08014128
func_08014128: @ 0x08014128
    push {lr}
    adds r2, r0, #0
    ldr r3, .L0801413C @ =func_080143E0
    movs r0, #3
    movs r1, #4
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L0801413C: .4byte func_080143E0
    func_end func_08014128

    thumb_func_start func_08014140
func_08014140: @ 0x08014140
    push {lr}
    adds r2, r0, #0
    ldr r3, .L08014154 @ =func_080143E0
    movs r0, #3
    movs r1, #8
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L08014154: .4byte func_080143E0
    func_end func_08014140

    thumb_func_start func_08014158
func_08014158: @ 0x08014158
    push {lr}
    adds r2, r0, #0
    ldr r3, .L0801416C @ =func_080143E0
    movs r0, #3
    movs r1, #0x10
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L0801416C: .4byte func_080143E0
    func_end func_08014158

    thumb_func_start func_08014170
func_08014170: @ 0x08014170
    push {lr}
    adds r2, r0, #0
    ldr r3, .L08014184 @ =func_080143E0
    movs r0, #3
    movs r1, #0x20
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L08014184: .4byte func_080143E0
    func_end func_08014170

    thumb_func_start func_08014188
func_08014188: @ 0x08014188
    push {lr}
    adds r2, r0, #0
    ldr r3, .L0801419C @ =func_080143E0
    movs r0, #3
    movs r1, #0x40
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L0801419C: .4byte func_080143E0
    func_end func_08014188

    thumb_func_start func_080141A0
func_080141A0: @ 0x080141A0
    push {lr}
    adds r2, r0, #0
    movs r0, #2
    movs r1, #4
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_080141A0

    thumb_func_start func_080141B4
func_080141B4: @ 0x080141B4
    push {lr}
    adds r2, r0, #0
    movs r0, #2
    movs r1, #8
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_080141B4

    thumb_func_start func_080141C8
func_080141C8: @ 0x080141C8
    push {lr}
    adds r2, r0, #0
    movs r0, #2
    movs r1, #8
    movs r3, #0
    bl func_080142C8
    bl func_080143A0
    pop {r0}
    bx r0
    func_end func_080141C8

    thumb_func_start func_080141E0
func_080141E0: @ 0x080141E0
    push {lr}
    adds r2, r0, #0
    movs r0, #2
    movs r1, #0x10
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_080141E0

    thumb_func_start func_080141F4
func_080141F4: @ 0x080141F4
    push {lr}
    adds r2, r0, #0
    movs r0, #2
    movs r1, #0x20
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_080141F4

    thumb_func_start func_08014208
func_08014208: @ 0x08014208
    push {lr}
    adds r2, r0, #0
    movs r0, #2
    movs r1, #0x40
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_08014208

    thumb_func_start func_0801421C
func_0801421C: @ 0x0801421C
    push {lr}
    adds r2, r0, #0
    movs r0, #6
    movs r1, #0x10
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_0801421C

    thumb_func_start func_08014230
func_08014230: @ 0x08014230
    push {lr}
    adds r2, r0, #0
    movs r0, #7
    movs r1, #0x10
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_08014230

    thumb_func_start func_08014244
func_08014244: @ 0x08014244
    push {lr}
    adds r2, r0, #0
    movs r0, #6
    movs r1, #8
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_08014244

    thumb_func_start func_08014258
func_08014258: @ 0x08014258
    push {lr}
    adds r2, r0, #0
    movs r0, #4
    movs r1, #4
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_08014258

    thumb_func_start func_0801426C
func_0801426C: @ 0x0801426C
    push {lr}
    adds r2, r0, #0
    movs r0, #4
    movs r1, #8
    movs r3, #0
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_0801426C

    thumb_func_start func_08014280
func_08014280: @ 0x08014280
    push {lr}
    adds r2, r0, #0
    ldr r3, .L08014294 @ =func_08014450
    movs r0, #7
    movs r1, #8
    bl func_080142C8
    pop {r0}
    bx r0
    .align 2, 0
.L08014294: .4byte func_08014450
    func_end func_08014280

    thumb_func_start WaitForFade
WaitForFade: @ 0x08014298
    push {r4, lr}
    adds r4, r0, #0
    bl FadeExists
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080142AC
    adds r0, r4, #0
    bl Proc_Break
.L080142AC:
    pop {r4}
    pop {r0}
    bx r0
    func_end WaitForFade

    thumb_func_start func_080142B4
func_080142B4: @ 0x080142B4
    push {lr}
    adds r2, r0, #0
    adds r3, r1, #0
    movs r0, #3
    movs r1, #0x40
    bl func_080142C8
    pop {r0}
    bx r0
    func_end func_080142B4

    thumb_func_start func_080142C8
func_080142C8: @ 0x080142C8
    push {r4, r5, r6, r7, lr}
    adds r4, r1, #0
    adds r1, r2, #0
    adds r5, r3, #0
    ldr r7, .L0801430C @ =0x08193E30
    lsls r2, r0, #1
    adds r2, r2, r0
    lsls r6, r2, #2
    adds r0, r6, r7
    ldr r2, [r0]
    ldr r0, .L08014310 @ =0x08B929AC
    bl _call_via_r2
    str r4, [r0, #0x54]
    str r5, [r0, #0x4c]
    asrs r4, r4, #4
    cmp r4, #0
    bne .L080142EE
    movs r4, #1
.L080142EE:
    adds r0, r7, #4
    adds r0, r6, r0
    ldr r1, [r0]
    adds r0, r7, #0
    adds r0, #8
    adds r0, r6, r0
    ldr r0, [r0]
    muls r0, r4, r0
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl _call_via_r1
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801430C: .4byte 0x08193E30
.L08014310: .4byte 0x08B929AC
    func_end func_080142C8

    thumb_func_start func_08014314
func_08014314: @ 0x08014314
    push {lr}
    ldr r0, .L08014320 @ =0x08B929AC
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08014320: .4byte 0x08B929AC
    func_end func_08014314

    thumb_func_start func_08014324
func_08014324: @ 0x08014324
    movs r1, #0
    str r1, [r0, #0x58]
    str r1, [r0, #0x5c]
    str r1, [r0, #0x4c]
    bx lr
    func_end func_08014324

    thumb_func_start func_08014330
func_08014330: @ 0x08014330
    push {r4, lr}
    adds r4, r0, #0
    bl func_08014354
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0801434E
    ldr r0, [r4, #0x4c]
    cmp r0, #0
    beq .L08014348
    bl _call_via_r0
.L08014348:
    adds r0, r4, #0
    bl Proc_Break
.L0801434E:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08014330

    thumb_func_start func_08014354
func_08014354: @ 0x08014354
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x58]
    ldr r2, [r4, #0x54]
    adds r1, r0, r2
    str r1, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    adds r0, r0, r2
    str r0, [r4, #0x5c]
    cmp r1, #0xf
    bgt .L08014372
    cmp r0, r2
    beq .L08014378
.L0801436E:
    movs r0, #1
    b .L08014390
.L08014372:
    adds r0, r1, #0
    subs r0, #0x10
    str r0, [r4, #0x58]
.L08014378:
    bl ColorFadeTick_thm
    ldr r1, .L08014398 @ =gPal
    movs r0, #0
    strh r0, [r1]
    bl EnablePalSync
    ldr r1, [r4, #0x5c]
    ldr r0, .L0801439C @ =0x000001FF
    cmp r1, r0
    ble .L0801436E
    movs r0, #0
.L08014390:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08014398: .4byte gPal
.L0801439C: .4byte 0x000001FF
    func_end func_08014354

    thumb_func_start func_080143A0
func_080143A0: @ 0x080143A0
    push {lr}
    movs r0, #0x10
    movs r1, #0x10
    movs r2, #0
    bl func_08002338
    bl func_080143C4
    pop {r0}
    bx r0
    func_end func_080143A0

    thumb_func_start func_080143B4
func_080143B4: @ 0x080143B4
    push {lr}
    movs r2, #0
    bl func_08002338
    bl func_080143C4
    pop {r0}
    bx r0
    func_end func_080143B4

    thumb_func_start func_080143C4
func_080143C4: @ 0x080143C4
    push {lr}
    ldr r0, .L080143DC @ =0x08B929AC
    bl Proc_Find
    adds r1, r0, #0
    cmp r1, #0
    beq .L080143D6
    movs r0, #0
    str r0, [r1, #0x4c]
.L080143D6:
    pop {r0}
    bx r0
    .align 2, 0
.L080143DC: .4byte 0x08B929AC
    func_end func_080143C4

    thumb_func_start func_080143E0
func_080143E0: @ 0x080143E0
    push {r4, lr}
    ldr r4, .L08014444 @ =gDispIo
    adds r2, r4, #0
    adds r2, #0x3c
    movs r0, #0xc0
    ldrb r1, [r2]
    orrs r0, r1
    strb r0, [r2]
    adds r0, r4, #0
    adds r0, #0x44
    movs r3, #0
    strb r3, [r0]
    adds r0, #1
    strb r3, [r0]
    adds r1, r4, #0
    adds r1, #0x46
    movs r0, #0x10
    strb r0, [r1]
    ldr r0, .L08014448 @ =0x0000FFE0
    ldrh r1, [r4, #0x3c]
    ands r0, r1
    movs r1, #0x1f
    orrs r0, r1
    strh r0, [r4, #0x3c]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r0, r1
    strb r0, [r2]
    ldr r0, .L0801444C @ =gPal
    strh r3, [r0]
    bl EnablePalSync
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r4, #1]
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
    strb r0, [r4, #1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08014444: .4byte gDispIo
.L08014448: .4byte 0x0000FFE0
.L0801444C: .4byte gPal
    func_end func_080143E0

    thumb_func_start func_08014450
func_08014450: @ 0x08014450
    ldr r3, .L0801448C @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x80
    orrs r0, r1
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x44
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r1, r3, #0
    adds r1, #0x46
    movs r0, #0x10
    strb r0, [r1]
    ldr r0, .L08014490 @ =0x0000FFE0
    ldrh r1, [r3, #0x3c]
    ands r0, r1
    movs r1, #0x1f
    orrs r0, r1
    strh r0, [r3, #0x3c]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r0, r1
    strb r0, [r2]
    bx lr
    .align 2, 0
.L0801448C: .4byte gDispIo
.L08014490: .4byte 0x0000FFE0
    func_end func_08014450

    thumb_func_start StartTemporaryLock
StartTemporaryLock: @ 0x08014494
    push {r4, lr}
    adds r2, r0, #0
    adds r4, r1, #0
    ldr r0, .L080144AC @ =0x08B929DC
    adds r1, r2, #0
    bl Proc_StartBlocking
    str r4, [r0, #0x58]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080144AC: .4byte 0x08B929DC
    func_end StartTemporaryLock

    thumb_func_start func_080144B0
func_080144B0: @ 0x080144B0
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x58]
    cmp r0, #0
    bne .L080144C2
    adds r0, r1, #0
    bl Proc_Break
    b .L080144C6
.L080144C2:
    subs r0, #1
    str r0, [r1, #0x58]
.L080144C6:
    pop {r0}
    bx r0
    func_end func_080144B0

    thumb_func_start func_080144CC
func_080144CC: @ 0x080144CC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r6, r1, #0
    movs r5, #0
    cmp r4, #0
    bne .L080144F4
    ldr r0, .L080144F0 @ =0x08B929F4
    ldrb r1, [r0]
    strb r1, [r6]
    adds r6, #1
    ldrb r0, [r0, #1]
    strb r0, [r6]
    strb r4, [r6, #1]
    movs r0, #1
    b .L08014580
    .align 2, 0
.L080144F0: .4byte 0x08B929F4
.L080144F4:
    cmp r4, #0
    bge .L08014506
    ldr r0, .L08014510 @ =0x08B929F8
    ldrb r1, [r0]
    strb r1, [r6]
    ldrb r0, [r0, #1]
    strb r0, [r6, #1]
    rsbs r4, r4, #0
    movs r5, #2
.L08014506:
    ldr r0, .L08014514 @ =0x0001869F
    cmp r4, r0
    ble .L08014518
    adds r5, #0xa
    b .L08014546
    .align 2, 0
.L08014510: .4byte 0x08B929F8
.L08014514: .4byte 0x0001869F
.L08014518:
    ldr r0, .L08014524 @ =0x0000270F
    cmp r4, r0
    ble .L08014528
    adds r5, #8
    b .L08014546
    .align 2, 0
.L08014524: .4byte 0x0000270F
.L08014528:
    ldr r0, .L08014534 @ =0x000003E7
    cmp r4, r0
    ble .L08014538
    adds r5, #6
    b .L08014546
    .align 2, 0
.L08014534: .4byte 0x000003E7
.L08014538:
    cmp r4, #0x63
    ble .L08014540
    adds r5, #4
    b .L08014546
.L08014540:
    cmp r4, #9
    ble .L08014546
    adds r5, #2
.L08014546:
    mov r8, r5
    cmp r4, #0
    ble .L08014572
    ldr r7, .L0801458C @ =0x08B929F4
.L0801454E:
    adds r0, r4, #0
    movs r1, #0xa
    bl DivRem
    adds r2, r6, r5
    ldrb r1, [r7]
    strb r1, [r2]
    ldrb r1, [r7, #1]
    adds r0, r1, r0
    strb r0, [r2, #1]
    adds r0, r4, #0
    movs r1, #0xa
    bl Div
    adds r4, r0, #0
    subs r5, #2
    cmp r4, #0
    bgt .L0801454E
.L08014572:
    mov r0, r8
    adds r1, r6, r0
    movs r0, #0
    strb r0, [r1, #2]
    mov r1, r8
    asrs r0, r1, #1
    adds r0, #1
.L08014580:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0801458C: .4byte 0x08B929F4
    func_end func_080144CC

    thumb_func_start func_08014590
func_08014590: @ 0x08014590
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    movs r6, #0
    cmp r4, #0
    bne .L080145AC
    ldr r0, .L080145A8 @ =0x08B929FB
    ldrb r0, [r0]
    strb r0, [r5]
    strb r4, [r5, #1]
    movs r0, #1
    b .L0801462A
    .align 2, 0
.L080145A8: .4byte 0x08B929FB
.L080145AC:
    cmp r4, #0
    bge .L080145BA
    ldr r0, .L080145C4 @ =0x08B929FC
    ldrb r0, [r0]
    strb r0, [r5]
    adds r5, #1
    rsbs r4, r4, #0
.L080145BA:
    ldr r0, .L080145C8 @ =0x0001869F
    cmp r4, r0
    ble .L080145CC
    movs r6, #5
    b .L080145FA
    .align 2, 0
.L080145C4: .4byte 0x08B929FC
.L080145C8: .4byte 0x0001869F
.L080145CC:
    ldr r0, .L080145D8 @ =0x0000270F
    cmp r4, r0
    ble .L080145DC
    movs r6, #4
    b .L080145FA
    .align 2, 0
.L080145D8: .4byte 0x0000270F
.L080145DC:
    ldr r0, .L080145E8 @ =0x000003E7
    cmp r4, r0
    ble .L080145EC
    movs r6, #3
    b .L080145FA
    .align 2, 0
.L080145E8: .4byte 0x000003E7
.L080145EC:
    cmp r4, #0x63
    ble .L080145F4
    movs r6, #2
    b .L080145FA
.L080145F4:
    cmp r4, #9
    ble .L080145FA
    movs r6, #1
.L080145FA:
    adds r7, r6, #0
    cmp r4, #0
    ble .L08014622
.L08014600:
    adds r0, r4, #0
    movs r1, #0xa
    bl DivRem
    adds r2, r5, r6
    ldr r1, .L08014630 @ =0x08B929FB
    ldrb r1, [r1]
    adds r0, r1, r0
    strb r0, [r2]
    adds r0, r4, #0
    movs r1, #0xa
    bl Div
    adds r4, r0, #0
    subs r6, #1
    cmp r4, #0
    bgt .L08014600
.L08014622:
    adds r0, r5, r7
    movs r1, #0
    strb r1, [r0, #1]
    adds r0, r7, #1
.L0801462A:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08014630: .4byte 0x08B929FB
    func_end func_08014590

    thumb_func_start func_08014634
func_08014634: @ 0x08014634
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    mov sb, r0
    mov r8, r1
    adds r4, r2, #0
    adds r6, r3, #0
    ldr r5, .L08014694 @ =0x03000430
    adds r0, r5, #0
    adds r1, r4, #0
    bl InitText
    adds r0, r6, #0
    bl GetStringTextLen
    lsls r4, r4, #3
    subs r4, r4, r0
    subs r4, #1
    lsrs r0, r4, #0x1f
    adds r4, r4, r0
    asrs r4, r4, #1
    adds r0, r5, #0
    adds r1, r4, #0
    bl Text_SetCursor
    adds r0, r5, #0
    mov r1, r8
    bl Text_SetColor
    adds r0, r5, #0
    adds r1, r6, #0
    bl Text_DrawString
    adds r0, r5, #0
    mov r1, sb
    bl PutText
    movs r0, #1
    bl EnableBgSync
    adds r0, r5, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08014694: .4byte 0x03000430
    func_end func_08014634

    thumb_func_start func_08014698
func_08014698: @ 0x08014698
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r4, .L080146D8 @ =0x03000430
    adds r0, r5, #0
    bl GetStringTextLen
    adds r1, r0, #7
    cmp r1, #0
    bge .L080146B0
    adds r1, #7
.L080146B0:
    asrs r1, r1, #3
    adds r0, r4, #0
    bl InitText
    adds r0, r4, #0
    adds r1, r6, #0
    bl Text_SetColor
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_DrawString
    adds r0, r4, #0
    adds r1, r7, #0
    bl PutText
    adds r0, r4, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080146D8: .4byte 0x03000430
    func_end func_08014698

    thumb_func_start func_080146DC
func_080146DC: @ 0x080146DC
    push {lr}
    ldr r0, .L080146E8 @ =0x08B92A00
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L080146E8: .4byte 0x08B92A00
    func_end func_080146DC

    thumb_func_start func_080146EC
func_080146EC: @ 0x080146EC
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0
    mov r8, r1
    adds r4, r2, #0
    adds r6, r3, #0
    ldr r1, [sp, #0x14]
    ldr r0, .L08014724 @ =0x08B92A00
    bl Proc_Start
    str r5, [r0, #0x2c]
    movs r2, #0
    mov r1, r8
    strh r1, [r0, #0x30]
    lsrs r1, r4, #0x1f
    adds r4, r4, r1
    asrs r4, r4, #1
    strh r4, [r0, #0x32]
    strh r6, [r0, #0x36]
    strh r6, [r0, #0x34]
    strh r2, [r0, #0x38]
    strh r2, [r0, #0x3a]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08014724: .4byte 0x08B92A00
    func_end func_080146EC

    thumb_func_start func_08014728
func_08014728: @ 0x08014728
    push {r4, lr}
    sub sp, #4
    ldr r4, [sp, #0xc]
    str r4, [sp]
    bl func_080146EC
    movs r1, #0
    strh r1, [r0, #0x3a]
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08014728

    thumb_func_start func_08014740
func_08014740: @ 0x08014740
    push {r4, lr}
    sub sp, #4
    ldr r4, [sp, #0xc]
    str r4, [sp]
    bl func_080146EC
    movs r1, #1
    strh r1, [r0, #0x3a]
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08014740

    thumb_func_start func_08014758
func_08014758: @ 0x08014758
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x36]
    adds r0, #1
    strh r0, [r4, #0x36]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r1, [r4, #0x34]
    cmp r0, r1
    blo .L080147B4
    movs r0, #0
    strh r0, [r4, #0x36]
    ldrh r0, [r4, #0x38]
    ldrh r1, [r4, #0x32]
    bl DivRem
    adds r5, r0, #0
    ldrh r0, [r4, #0x3a]
    cmp r0, #0
    beq .L08014786
    ldrh r2, [r4, #0x32]
    subs r0, r2, r5
    subs r5, r0, #1
.L08014786:
    lsls r6, r5, #1
    ldr r0, [r4, #0x2c]
    adds r0, r0, r6
    ldrh r1, [r4, #0x30]
    ldrh r3, [r4, #0x32]
    subs r2, r3, r5
    lsls r2, r2, #1
    bl ApplyPaletteExt
    cmp r5, #0
    ble .L080147AE
    ldr r0, [r4, #0x2c]
    ldrh r2, [r4, #0x32]
    lsls r1, r2, #1
    ldrh r3, [r4, #0x30]
    adds r1, r3, r1
    subs r1, r1, r6
    adds r2, r6, #0
    bl ApplyPaletteExt
.L080147AE:
    ldrh r0, [r4, #0x38]
    adds r0, #1
    strh r0, [r4, #0x38]
.L080147B4:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08014758

    thumb_func_start func_080147BC
func_080147BC: @ 0x080147BC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sb, r0
    mov sl, r1
    ldr r0, [sp, #0x24]
    lsls r3, r3, #0x10
    lsrs r4, r3, #0x10
    adds r3, r2, #0
    adds r0, r3, r0
    cmp r3, r0
    bge .L08014814
    mov r8, r0
    mov r0, sl
    lsls r0, r0, #1
    mov ip, r0
.L080147E0:
    mov r1, sl
    ldr r2, [sp, #0x20]
    adds r0, r1, r2
    adds r6, r3, #1
    cmp r1, r0
    bge .L0801480E
    adds r5, r0, #0
    lsls r0, r3, #6
    add r0, sb
    mov r7, ip
    adds r2, r7, r0
.L080147F6:
    cmp r1, #0x1f
    bhi .L08014800
    cmp r3, #0x1f
    bhi .L08014800
    strh r4, [r2]
.L08014800:
    adds r2, #2
    adds r1, #1
    adds r0, r4, #1
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    cmp r1, r5
    blt .L080147F6
.L0801480E:
    adds r3, r6, #0
    cmp r3, r8
    blt .L080147E0
.L08014814:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080147BC

    thumb_func_start func_08014824
func_08014824: @ 0x08014824
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    str r0, [sp]
    adds r7, r1, #0
    mov sl, r2
    ldr r0, [sp, #0x28]
    mov ip, r0
    ldr r0, [sp, #0x34]
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    mov sb, r3
    ldr r1, [sp, #0x30]
    str r1, [sp, #4]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080148A4
    movs r5, #0
    ldr r2, [sp, #0x2c]
    cmp r5, r2
    bge .L080148EC
.L08014854:
    movs r2, #0
    adds r6, r5, #1
    cmp r2, ip
    bge .L0801489A
    lsls r3, r5, #6
    movs r0, #0x80
    lsls r0, r0, #3
    mov r8, r0
.L08014864:
    adds r0, r7, r2
    adds r4, r2, #1
    cmp r0, #0x1f
    bhi .L08014894
    mov r2, sl
    adds r1, r2, r5
    cmp r1, #0x1f
    bhi .L08014894
    lsls r1, r1, #6
    lsls r0, r0, #1
    ldr r2, [sp]
    adds r0, r0, r2
    adds r1, r1, r0
    mov r2, ip
    subs r0, r2, r4
    lsls r0, r0, #1
    ldr r2, [sp, #4]
    adds r0, r0, r2
    adds r0, r3, r0
    ldrh r0, [r0]
    add r0, sb
    mov r2, r8
    eors r0, r2
    strh r0, [r1]
.L08014894:
    adds r2, r4, #0
    cmp r2, ip
    blt .L08014864
.L0801489A:
    adds r5, r6, #0
    ldr r0, [sp, #0x2c]
    cmp r5, r0
    blt .L08014854
    b .L080148EC
.L080148A4:
    movs r5, #0
    ldr r1, [sp, #0x2c]
    cmp r5, r1
    bge .L080148EC
    lsls r2, r7, #1
    mov r8, r2
.L080148B0:
    movs r2, #0
    adds r6, r5, #1
    cmp r2, ip
    bge .L080148E4
    lsls r0, r5, #6
    ldr r1, [sp, #4]
    adds r4, r1, r0
    ldr r3, [sp]
    add r3, r8
.L080148C2:
    adds r0, r7, r2
    cmp r0, #0x1f
    bhi .L080148DA
    mov r1, sl
    adds r0, r1, r5
    cmp r0, #0x1f
    bhi .L080148DA
    lsls r0, r0, #6
    adds r0, r0, r3
    ldrh r1, [r4]
    add r1, sb
    strh r1, [r0]
.L080148DA:
    adds r4, #2
    adds r3, #2
    adds r2, #1
    cmp r2, ip
    blt .L080148C2
.L080148E4:
    adds r5, r6, #0
    ldr r2, [sp, #0x2c]
    cmp r5, r2
    blt .L080148B0
.L080148EC:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08014824

    thumb_func_start func_080148FC
func_080148FC: @ 0x080148FC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    str r0, [sp]
    mov sb, r1
    str r2, [sp, #4]
    ldr r7, [sp, #0x28]
    ldr r5, [sp, #0x34]
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    mov sl, r3
    ldr r0, [sp, #0x30]
    mov r8, r0
    movs r0, #0x20
    adds r1, r7, #0
    bl Div
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl Div
    adds r6, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl DivRem
    adds r1, r7, #0
    muls r1, r0, r1
    lsls r1, r1, #1
    add r1, r8
    ldr r2, [sp, #0x2c]
    adds r0, r6, #0
    muls r0, r2, r0
    lsls r0, r0, #6
    adds r1, r1, r0
    mov r8, r1
    movs r5, #0
    cmp r5, r2
    bge .L08014996
    mov r0, sb
    lsls r0, r0, #1
    mov ip, r0
.L08014958:
    movs r4, #0
    adds r6, r5, #1
    cmp r4, r7
    bge .L0801498E
    lsls r0, r5, #6
    mov r1, r8
    adds r3, r1, r0
    ldr r2, [sp]
    add r2, ip
.L0801496A:
    mov r1, sb
    adds r0, r1, r4
    cmp r0, #0x1f
    bhi .L08014984
    ldr r1, [sp, #4]
    adds r0, r1, r5
    cmp r0, #0x1f
    bhi .L08014984
    lsls r0, r0, #6
    adds r0, r0, r2
    ldrh r1, [r3]
    add r1, sl
    strh r1, [r0]
.L08014984:
    adds r3, #2
    adds r2, #2
    adds r4, #1
    cmp r4, r7
    blt .L0801496A
.L0801498E:
    adds r5, r6, #0
    ldr r2, [sp, #0x2c]
    cmp r5, r2
    blt .L08014958
.L08014996:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080148FC

    thumb_func_start func_080149A8
func_080149A8: @ 0x080149A8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    str r0, [sp]
    mov sl, r1
    str r2, [sp, #4]
    ldr r0, [sp, #0x34]
    mov r8, r0
    ldr r4, [sp, #0x40]
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    str r3, [sp, #8]
    ldr r1, [sp, #0x3c]
    ldrb r2, [r1]
    adds r2, #1
    mov sb, r2
    adds r1, #2
    str r1, [sp, #0xc]
    mov r0, sb
    mov r1, r8
    bl Div
    adds r5, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl Div
    adds r1, r5, #0
    muls r1, r0, r1
    subs r4, r4, r1
    mov r1, r8
    muls r1, r4, r1
    lsls r1, r1, #1
    ldr r6, [sp, #0xc]
    adds r1, r6, r1
    ldr r7, [sp, #0x38]
    muls r0, r7, r0
    lsls r0, r0, #6
    adds r1, r1, r0
    str r1, [sp, #0xc]
    movs r5, #0
    cmp r5, r7
    bge .L08014A58
    mov r0, sl
    lsls r0, r0, #1
    mov ip, r0
.L08014A0A:
    movs r4, #0
    adds r1, r5, #1
    str r1, [sp, #0x10]
    cmp r4, r8
    bge .L08014A50
    ldr r2, [sp, #0x38]
    subs r0, r2, r5
    subs r0, #1
    mov r6, sb
    muls r6, r0, r6
    adds r0, r6, #0
    lsls r0, r0, #1
    ldr r7, [sp, #0xc]
    adds r3, r7, r0
    ldr r2, [sp]
    add r2, ip
.L08014A2A:
    mov r1, sl
    adds r0, r1, r4
    cmp r0, #0x1f
    bhi .L08014A46
    ldr r6, [sp, #4]
    adds r0, r6, r5
    cmp r0, #0x1f
    bhi .L08014A46
    lsls r0, r0, #6
    adds r0, r0, r2
    ldrh r7, [r3]
    ldr r6, [sp, #8]
    adds r1, r7, r6
    strh r1, [r0]
.L08014A46:
    adds r3, #2
    adds r2, #2
    adds r4, #1
    cmp r4, r8
    blt .L08014A2A
.L08014A50:
    ldr r5, [sp, #0x10]
    ldr r7, [sp, #0x38]
    cmp r5, r7
    blt .L08014A0A
.L08014A58:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080149A8

    thumb_func_start func_08014A68
func_08014A68: @ 0x08014A68
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    adds r5, r1, #0
    mov ip, r2
    ldr r0, [sp, #0x1c]
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    adds r2, r3, #2
    movs r1, #0xff
    ldr r0, [r3]
    ldrb r3, [r3]
    mov sb, r3
    lsrs r3, r0, #8
    ands r3, r1
    lsls r1, r3, #0x10
    asrs r0, r1, #0x10
    cmp r0, #0
    blt .L08014AD6
.L08014A92:
    asrs r0, r1, #0x10
    add r0, ip
    lsls r4, r3, #0x10
    cmp r0, #0x1f
    bhi .L08014ACA
    lsls r0, r0, #5
    adds r0, r5, r0
    lsls r0, r0, #1
    mov r3, r8
    adds r1, r3, r0
    mov r7, sb
    lsls r3, r7, #0x10
    asrs r0, r3, #0x10
    cmp r0, #0
    blt .L08014ACA
.L08014AB0:
    asrs r3, r3, #0x10
    adds r0, r5, r3
    cmp r0, #0x1f
    bhi .L08014ABE
    ldrh r7, [r2]
    adds r0, r7, r6
    strh r0, [r1]
.L08014ABE:
    subs r0, r3, #1
    adds r2, #2
    adds r1, #2
    lsls r3, r0, #0x10
    cmp r3, #0
    bge .L08014AB0
.L08014ACA:
    ldr r1, .L08014AE4 @ =0xFFFF0000
    adds r0, r4, r1
    lsrs r3, r0, #0x10
    lsls r1, r3, #0x10
    cmp r1, #0
    bge .L08014A92
.L08014AD6:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08014AE4: .4byte 0xFFFF0000
    func_end func_08014A68

    thumb_func_start func_08014AE8
func_08014AE8: @ 0x08014AE8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    subs r0, #1
    str r0, [r4, #0x34]
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    bne .L08014B06
    ldr r0, [r4, #0x2c]
    bl _call_via_r0
    adds r0, r4, #0
    bl Proc_Break
.L08014B06:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08014AE8

    thumb_func_start func_08014B0C
func_08014B0C: @ 0x08014B0C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    subs r0, #1
    str r0, [r4, #0x34]
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    bne .L08014B2C
    ldr r1, [r4, #0x2c]
    ldr r0, [r4, #0x30]
    bl _call_via_r1
    adds r0, r4, #0
    bl Proc_Break
.L08014B2C:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08014B0C

    thumb_func_start CallDelayed
CallDelayed: @ 0x08014B34
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08014B4C @ =0x08B92A08
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x2c]
    str r5, [r0, #0x34]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08014B4C: .4byte 0x08B92A08
    func_end CallDelayed

    thumb_func_start func_08014B50
func_08014B50: @ 0x08014B50
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r0, .L08014B6C @ =0x08B92A18
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x2c]
    str r5, [r0, #0x30]
    str r6, [r0, #0x34]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08014B6C: .4byte 0x08B92A18
    func_end func_08014B50

    thumb_func_start func_08014B70
func_08014B70: @ 0x08014B70
    cmp r1, #0
    ble .L08014B80
    movs r2, #0
.L08014B76:
    strb r2, [r0]
    adds r0, #1
    subs r1, #1
    cmp r1, #0
    bgt .L08014B76
.L08014B80:
    bx lr
    func_end func_08014B70

    thumb_func_start func_08014B84
func_08014B84: @ 0x08014B84
    cmp r1, #0
    ble .L08014B92
.L08014B88:
    strb r2, [r0]
    adds r0, #1
    subs r1, #1
    cmp r1, #0
    bgt .L08014B88
.L08014B92:
    bx lr
    func_end func_08014B84

    thumb_func_start func_08014B94
func_08014B94: @ 0x08014B94
    cmp r1, #0
    ble .L08014BA2
.L08014B98:
    strh r2, [r0]
    adds r0, #2
    subs r1, #1
    cmp r1, #0
    bgt .L08014B98
.L08014BA2:
    bx lr
    func_end func_08014B94

    thumb_func_start func_08014BA4
func_08014BA4: @ 0x08014BA4
    push {r4, lr}
    adds r1, r0, #0
    ldr r0, .L08014BC4 @ =0x08B92AE8
    bl Proc_StartBlocking
    adds r4, r0, #0
    bl GetGameLock
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r4, #0x64
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08014BC4: .4byte 0x08B92AE8
    func_end func_08014BA4

    thumb_func_start func_08014BC8
func_08014BC8: @ 0x08014BC8
    push {r4, lr}
    adds r4, r0, #0
    bl GetGameLock
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r1, r4, #0
    adds r1, #0x64
    movs r2, #0
    ldrsh r1, [r1, r2]
    cmp r0, r1
    bne .L08014BE6
    adds r0, r4, #0
    bl Proc_Break
.L08014BE6:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08014BC8

    thumb_func_start func_08014BEC
func_08014BEC: @ 0x08014BEC
    push {r4, lr}
    adds r4, r0, #0
    adds r3, r2, #0
    movs r0, #0x1f
    ands r0, r3
    cmp r0, #0
    beq .L08014C0A
    lsrs r2, r3, #0x1f
    adds r2, r3, r2
    lsls r2, r2, #0xa
    lsrs r2, r2, #0xb
    adds r0, r4, #0
    bl CpuSet
    b .L08014C1C
.L08014C0A:
    adds r2, r3, #0
    cmp r2, #0
    bge .L08014C12
    adds r2, #3
.L08014C12:
    lsls r2, r2, #9
    lsrs r2, r2, #0xb
    adds r0, r4, #0
    bl CpuFastSet
.L08014C1C:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08014BEC

    thumb_func_start func_08014C24
func_08014C24: @ 0x08014C24
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    lsls r7, r2, #5
    cmp r3, #0
    ble .L08014C4A
    adds r4, r3, #0
.L08014C32:
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r7, #0
    bl func_08014BEC
    adds r6, r6, r7
    movs r0, #0x80
    lsls r0, r0, #3
    adds r5, r5, r0
    subs r4, #1
    cmp r4, #0
    bne .L08014C32
.L08014C4A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08014C24

    thumb_func_start func_08014C50
func_08014C50: @ 0x08014C50
    push {r4, r5, lr}
    adds r4, r0, #0
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    cmp r2, #0
    ble .L08014C6C
.L08014C5C:
    ldrh r5, [r4]
    adds r0, r5, r3
    strh r0, [r1]
    adds r4, #2
    adds r1, #2
    subs r2, #2
    cmp r2, #0
    bgt .L08014C5C
.L08014C6C:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08014C50

    thumb_func_start func_08014C74
func_08014C74: @ 0x08014C74
    cmp r0, #1
    beq .L08014C9C
    cmp r0, #1
    bgt .L08014C82
    cmp r0, #0
    beq .L08014C8C
    b .L08014CCC
.L08014C82:
    cmp r0, #2
    beq .L08014CAC
    cmp r0, #3
    beq .L08014CBC
    b .L08014CCC
.L08014C8C:
    lsls r0, r2, #5
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L08014C98 @ =gBg0Tm
    adds r0, r0, r1
    b .L08014CCE
    .align 2, 0
.L08014C98: .4byte gBg0Tm
.L08014C9C:
    lsls r0, r2, #5
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L08014CA8 @ =gBg1Tm
    adds r0, r0, r1
    b .L08014CCE
    .align 2, 0
.L08014CA8: .4byte gBg1Tm
.L08014CAC:
    lsls r0, r2, #5
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L08014CB8 @ =gBg2Tm
    adds r0, r0, r1
    b .L08014CCE
    .align 2, 0
.L08014CB8: .4byte gBg2Tm
.L08014CBC:
    lsls r0, r2, #5
    adds r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L08014CC8 @ =gBg3Tm
    adds r0, r0, r1
    b .L08014CCE
    .align 2, 0
.L08014CC8: .4byte gBg3Tm
.L08014CCC:
    movs r0, #0
.L08014CCE:
    bx lr
    func_end func_08014C74

    thumb_func_start func_08014CD0
func_08014CD0: @ 0x08014CD0
    push {r4, r5, lr}
    ldr r4, .L08014D54 @ =gDispIo
    movs r5, #0x80
    adds r0, r5, #0
    ldrb r1, [r4, #0xc]
    ands r0, r1
    cmp r0, #0
    bne .L08014CF4
    movs r0, #0
    bl GetBgChrOffset
    movs r1, #0xc0
    lsls r1, r1, #0x13
    adds r0, r0, r1
    movs r1, #0x10
    movs r2, #0
    bl func_08014B94
.L08014CF4:
    adds r0, r5, #0
    ldrb r1, [r4, #0x10]
    ands r0, r1
    cmp r0, #0
    bne .L08014D12
    movs r0, #1
    bl GetBgChrOffset
    movs r1, #0xc0
    lsls r1, r1, #0x13
    adds r0, r0, r1
    movs r1, #0x10
    movs r2, #0
    bl func_08014B94
.L08014D12:
    adds r0, r5, #0
    ldrb r1, [r4, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08014D30
    movs r0, #2
    bl GetBgChrOffset
    movs r1, #0xc0
    lsls r1, r1, #0x13
    adds r0, r0, r1
    movs r1, #0x10
    movs r2, #0
    bl func_08014B94
.L08014D30:
    adds r0, r5, #0
    ldrb r4, [r4, #0x18]
    ands r0, r4
    cmp r0, #0
    bne .L08014D4E
    movs r0, #3
    bl GetBgChrOffset
    movs r1, #0xc0
    lsls r1, r1, #0x13
    adds r0, r0, r1
    movs r1, #0x10
    movs r2, #0
    bl func_08014B94
.L08014D4E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08014D54: .4byte gDispIo
    func_end func_08014CD0

    thumb_func_start func_08014D58
func_08014D58: @ 0x08014D58
    push {lr}
    adds r1, r0, #0
    cmp r1, #0
    bge .L08014D66
    movs r0, #0x60
    rsbs r0, r0, #0
    b .L08014D7C
.L08014D66:
    cmp r1, #0xef
    bgt .L08014D7A
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #6
    movs r1, #0xf0
    bl Div
    subs r0, #0x60
    b .L08014D7C
.L08014D7A:
    movs r0, #0x5f
.L08014D7C:
    pop {r1}
    bx r1
    func_end func_08014D58

    thumb_func_start func_08014D80
func_08014D80: @ 0x08014D80
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    ldr r0, .L08014DD0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08014D9A
    lsls r0, r4, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStart
.L08014D9A:
    ldr r2, .L08014DD4 @ =0x0869D668
    ldr r0, .L08014DD8 @ =0x0869D6E0
    lsls r1, r4, #3
    adds r1, r1, r0
    ldrh r3, [r1, #4]
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r4, [r0]
    adds r0, r4, #0
    bl m4aMPlayImmInit
    ldr r5, .L08014DDC @ =0x0000FFFF
    adds r0, r6, #0
    bl func_08014D58
    adds r2, r0, #0
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r0, r4, #0
    adds r1, r5, #0
    bl m4aMPlayPanpotControl
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08014DD0: .4byte gPlaySt
.L08014DD4: .4byte 0x0869D668
.L08014DD8: .4byte 0x0869D6E0
.L08014DDC: .4byte 0x0000FFFF
    func_end func_08014D80

    thumb_func_start func_08014DE0
func_08014DE0: @ 0x08014DE0
    push {lr}
    adds r3, r0, #0
    adds r2, r1, #0
    ldr r0, .L08014DF4 @ =func_08014DF8
    adds r1, r3, #0
    bl func_08014B50
    pop {r0}
    bx r0
    .align 2, 0
.L08014DF4: .4byte func_08014DF8
    func_end func_08014DE0

    thumb_func_start func_08014DF8
func_08014DF8: @ 0x08014DF8
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08014E14 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08014E10
    lsls r0, r1, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStart
.L08014E10:
    pop {r0}
    bx r0
    .align 2, 0
.L08014E14: .4byte gPlaySt
    func_end func_08014DF8

    thumb_func_start func_08014E18
func_08014E18: @ 0x08014E18
    push {lr}
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    movs r1, #0
    bl StartBgm
    pop {r0}
    bx r0
    func_end func_08014E18

    thumb_func_start func_08014E28
func_08014E28: @ 0x08014E28
    push {lr}
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl FadeBgmOut
    pop {r0}
    bx r0
    func_end func_08014E28

    thumb_func_start func_08014E38
func_08014E38: @ 0x08014E38
    push {r4, r5, r6, r7, lr}
    lsls r0, r0, #5
    ldr r1, .L08014E8C @ =gPal
    movs r2, #0x1f
    mov ip, r2
    movs r7, #0xf8
    lsls r7, r7, #2
    movs r6, #0xf8
    lsls r6, r6, #7
    adds r4, r0, r1
    movs r5, #0xf
.L08014E4E:
    ldrh r1, [r4]
    movs r0, #0x1f
    ands r0, r1
    lsrs r0, r0, #2
    lsls r2, r0, #1
    adds r2, r2, r0
    adds r0, r7, #0
    ands r0, r1
    lsrs r0, r0, #2
    lsls r3, r0, #1
    adds r3, r3, r0
    adds r0, r6, #0
    ands r0, r1
    lsrs r0, r0, #2
    lsls r1, r0, #1
    adds r1, r1, r0
    mov r0, ip
    ands r2, r0
    ands r3, r7
    orrs r2, r3
    ands r1, r6
    orrs r2, r1
    strh r2, [r4]
    adds r4, #2
    subs r5, #1
    cmp r5, #0
    bge .L08014E4E
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08014E8C: .4byte gPal
    func_end func_08014E38

    thumb_func_start func_08014E90
func_08014E90: @ 0x08014E90
    adds r3, r0, #0
    cmp r2, #0
    beq .L08014EA4
.L08014E96:
    ldrb r0, [r3]
    strb r0, [r1]
    adds r1, #1
    adds r3, #1
    subs r2, #1
    cmp r2, #0
    bne .L08014E96
.L08014EA4:
    bx lr
    func_end func_08014E90

    thumb_func_start func_08014EA8
func_08014EA8: @ 0x08014EA8
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    adds r6, r0, #0
    mov sb, r1
    adds r5, r2, #0
    mov r8, r3
    ldr r4, [sp, #0x18]
    mov r0, r8
    bl GetStringTextLen
    adds r1, r0, #0
    lsls r4, r4, #3
    subs r4, r4, r1
    asrs r1, r4, #1
    adds r0, r6, #0
    bl Text_SetCursor
    adds r0, r6, #0
    mov r1, r8
    bl Text_DrawString
    lsls r5, r5, #5
    add r5, sb
    lsls r5, r5, #1
    ldr r0, .L08014EF4 @ =gBg0Tm
    adds r5, r5, r0
    adds r0, r6, #0
    adds r1, r5, #0
    bl PutText
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08014EF4: .4byte gBg0Tm
    func_end func_08014EA8

    thumb_func_start func_08014EF8
func_08014EF8: @ 0x08014EF8
    push {r4, r5, r6, lr}
    ldr r6, [r0]
    ldr r3, [r1]
    muls r3, r6, r3
    ldr r5, [r0, #4]
    ldr r4, [r1, #0xc]
    muls r4, r5, r4
    adds r3, r3, r4
    ldr r4, [r0, #8]
    ldr r0, [r1, #0x18]
    muls r0, r4, r0
    adds r3, r3, r0
    asrs r3, r3, #0xc
    str r3, [r2]
    ldr r0, [r1, #4]
    muls r0, r6, r0
    ldr r3, [r1, #0x10]
    muls r3, r5, r3
    adds r0, r0, r3
    ldr r3, [r1, #0x1c]
    muls r3, r4, r3
    adds r0, r0, r3
    asrs r0, r0, #0xc
    str r0, [r2, #4]
    ldr r0, [r1, #8]
    muls r0, r6, r0
    ldr r3, [r1, #0x14]
    muls r3, r5, r3
    adds r0, r0, r3
    ldr r1, [r1, #0x20]
    muls r1, r4, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r2, #8]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08014EF8

    thumb_func_start func_08014F44
func_08014F44: @ 0x08014F44
    push {r4, r5, r6, lr}
    sub sp, #0x30
    adds r3, r0, #0
    adds r4, r1, #0
    adds r6, r2, #0
    cmp r3, r6
    beq .L08014F56
    cmp r4, r6
    bne .L08014F5A
.L08014F56:
    mov r5, sp
    b .L08014F5C
.L08014F5A:
    adds r5, r6, #0
.L08014F5C:
    ldr r1, [r3]
    ldr r0, [r4]
    muls r0, r1, r0
    ldr r2, [r3, #4]
    ldr r1, [r4, #0xc]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #8]
    ldr r1, [r4, #0x18]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5]
    ldr r1, [r3]
    ldr r0, [r4, #4]
    muls r0, r1, r0
    ldr r2, [r3, #4]
    ldr r1, [r4, #0x10]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #8]
    ldr r1, [r4, #0x1c]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #4]
    ldr r1, [r3]
    ldr r0, [r4, #8]
    muls r0, r1, r0
    ldr r2, [r3, #4]
    ldr r1, [r4, #0x14]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #8]
    ldr r1, [r4, #0x20]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #8]
    ldr r1, [r3, #0xc]
    ldr r0, [r4]
    muls r0, r1, r0
    ldr r2, [r3, #0x10]
    ldr r1, [r4, #0xc]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x14]
    ldr r1, [r4, #0x18]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #0xc]
    ldr r1, [r3, #0xc]
    ldr r0, [r4, #4]
    muls r0, r1, r0
    ldr r2, [r3, #0x10]
    ldr r1, [r4, #0x10]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x14]
    ldr r1, [r4, #0x1c]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #0x10]
    ldr r1, [r3, #0xc]
    ldr r0, [r4, #8]
    muls r0, r1, r0
    ldr r2, [r3, #0x10]
    ldr r1, [r4, #0x14]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x14]
    ldr r1, [r4, #0x20]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #0x14]
    ldr r1, [r3, #0x18]
    ldr r0, [r4]
    muls r0, r1, r0
    ldr r2, [r3, #0x1c]
    ldr r1, [r4, #0xc]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x20]
    ldr r1, [r4, #0x18]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #0x18]
    ldr r1, [r3, #0x18]
    ldr r0, [r4, #4]
    muls r0, r1, r0
    ldr r2, [r3, #0x1c]
    ldr r1, [r4, #0x10]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x20]
    ldr r1, [r4, #0x1c]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #0x1c]
    ldr r1, [r3, #0x18]
    ldr r0, [r4, #8]
    muls r0, r1, r0
    ldr r2, [r3, #0x1c]
    ldr r1, [r4, #0x14]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x20]
    ldr r1, [r4, #0x20]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r5, #0x20]
    ldr r1, [r3]
    ldr r0, [r4, #0x24]
    muls r0, r1, r0
    ldr r2, [r3, #0xc]
    ldr r1, [r4, #0x28]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x18]
    ldr r1, [r4, #0x2c]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    ldr r1, [r3, #0x24]
    adds r0, r0, r1
    str r0, [r5, #0x24]
    ldr r1, [r3, #4]
    ldr r0, [r4, #0x24]
    muls r0, r1, r0
    ldr r2, [r3, #0x10]
    ldr r1, [r4, #0x28]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x1c]
    ldr r1, [r4, #0x2c]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    ldr r1, [r3, #0x28]
    adds r0, r0, r1
    str r0, [r5, #0x28]
    ldr r1, [r3, #8]
    ldr r0, [r4, #0x24]
    muls r0, r1, r0
    ldr r2, [r3, #0x14]
    ldr r1, [r4, #0x28]
    muls r1, r2, r1
    adds r0, r0, r1
    ldr r2, [r3, #0x20]
    ldr r1, [r4, #0x2c]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    ldr r1, [r3, #0x2c]
    adds r0, r0, r1
    str r0, [r5, #0x2c]
    cmp r5, sp
    bne .L080150AC
    mov r0, sp
    adds r1, r6, #0
    bl func_080150D4
.L080150AC:
    add sp, #0x30
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08014F44

    thumb_func_start func_080150B4
func_080150B4: @ 0x080150B4
    movs r2, #0x80
    lsls r2, r2, #5
    str r2, [r0]
    movs r1, #0
    str r1, [r0, #4]
    str r1, [r0, #8]
    str r1, [r0, #0xc]
    str r2, [r0, #0x10]
    str r1, [r0, #0x14]
    str r1, [r0, #0x18]
    str r1, [r0, #0x1c]
    str r2, [r0, #0x20]
    str r1, [r0, #0x24]
    str r1, [r0, #0x28]
    str r1, [r0, #0x2c]
    bx lr
    func_end func_080150B4

    thumb_func_start func_080150D4
func_080150D4: @ 0x080150D4
    ldr r2, [r0]
    str r2, [r1]
    ldr r2, [r0, #4]
    str r2, [r1, #4]
    ldr r2, [r0, #8]
    str r2, [r1, #8]
    ldr r2, [r0, #0xc]
    str r2, [r1, #0xc]
    ldr r2, [r0, #0x10]
    str r2, [r1, #0x10]
    ldr r2, [r0, #0x14]
    str r2, [r1, #0x14]
    ldr r2, [r0, #0x18]
    str r2, [r1, #0x18]
    ldr r2, [r0, #0x1c]
    str r2, [r1, #0x1c]
    ldr r2, [r0, #0x20]
    str r2, [r1, #0x20]
    ldr r2, [r0, #0x24]
    str r2, [r1, #0x24]
    ldr r2, [r0, #0x28]
    str r2, [r1, #0x28]
    ldr r0, [r0, #0x2c]
    str r0, [r1, #0x2c]
    bx lr
    func_end func_080150D4

    thumb_func_start func_08015108
func_08015108: @ 0x08015108
    push {r4, lr}
    ldr r3, .L08015150 @ =0x080C5A48
    lsls r1, r1, #0x10
    movs r2, #0xff
    lsls r2, r2, #0x10
    ands r2, r1
    asrs r2, r2, #0x10
    adds r1, r2, #0
    adds r1, #0x40
    lsls r1, r1, #1
    adds r1, r1, r3
    ldrh r4, [r1]
    lsls r2, r2, #1
    adds r2, r2, r3
    ldrh r2, [r2]
    movs r1, #0x80
    lsls r1, r1, #5
    str r1, [r0]
    movs r3, #0
    str r3, [r0, #4]
    str r3, [r0, #8]
    str r3, [r0, #0xc]
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    str r4, [r0, #0x10]
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    rsbs r1, r2, #0
    str r1, [r0, #0x14]
    str r3, [r0, #0x18]
    str r2, [r0, #0x1c]
    str r4, [r0, #0x20]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08015150: .4byte gSinLut
    func_end func_08015108

    thumb_func_start func_08015154
func_08015154: @ 0x08015154
    push {r4, lr}
    ldr r3, .L08015198 @ =0x080C5A48
    lsls r1, r1, #0x10
    movs r2, #0xff
    lsls r2, r2, #0x10
    ands r2, r1
    asrs r2, r2, #0x10
    adds r1, r2, #0
    adds r1, #0x40
    lsls r1, r1, #1
    adds r1, r1, r3
    lsls r2, r2, #1
    adds r2, r2, r3
    ldrh r2, [r2]
    movs r3, #0
    ldrsh r4, [r1, r3]
    str r4, [r0]
    movs r3, #0
    str r3, [r0, #4]
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    rsbs r1, r2, #0
    str r1, [r0, #8]
    str r3, [r0, #0xc]
    movs r1, #0x80
    lsls r1, r1, #5
    str r1, [r0, #0x10]
    str r3, [r0, #0x14]
    str r2, [r0, #0x18]
    str r3, [r0, #0x1c]
    str r4, [r0, #0x20]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08015198: .4byte gSinLut
    func_end func_08015154

    thumb_func_start func_0801519C
func_0801519C: @ 0x0801519C
    push {r4, lr}
    ldr r3, .L080151E0 @ =0x080C5A48
    lsls r1, r1, #0x10
    movs r2, #0xff
    lsls r2, r2, #0x10
    ands r2, r1
    asrs r2, r2, #0x10
    adds r1, r2, #0
    adds r1, #0x40
    lsls r1, r1, #1
    adds r1, r1, r3
    lsls r2, r2, #1
    adds r2, r2, r3
    ldrh r2, [r2]
    movs r4, #0
    ldrsh r3, [r1, r4]
    str r3, [r0]
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    rsbs r1, r2, #0
    str r1, [r0, #4]
    movs r1, #0
    str r1, [r0, #8]
    str r2, [r0, #0xc]
    str r3, [r0, #0x10]
    str r1, [r0, #0x14]
    str r1, [r0, #0x18]
    str r1, [r0, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #5
    str r1, [r0, #0x20]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080151E0: .4byte gSinLut
    func_end func_0801519C

    thumb_func_start func_080151E4
func_080151E4: @ 0x080151E4
    bx lr
    func_end func_080151E4

    thumb_func_start func_080151E8
func_080151E8: @ 0x080151E8
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4]
    ldr r0, [r1]
    muls r0, r2, r0
    ldr r3, [r4, #4]
    ldr r2, [r1, #4]
    muls r2, r3, r2
    adds r0, r0, r2
    ldr r2, [r4, #8]
    ldr r1, [r1, #8]
    muls r1, r2, r1
    adds r0, r0, r1
    asrs r0, r0, #0xc
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080151E8

    thumb_func_start func_0801520C
func_0801520C: @ 0x0801520C
    push {r4, r5, r6, lr}
    ldr r6, [r0, #4]
    ldr r3, [r1, #8]
    muls r3, r6, r3
    ldr r5, [r0, #8]
    ldr r4, [r1, #4]
    muls r4, r5, r4
    subs r3, r3, r4
    asrs r3, r3, #0xc
    str r3, [r2]
    ldr r3, [r1]
    muls r3, r5, r3
    ldr r4, [r0]
    ldr r0, [r1, #8]
    muls r0, r4, r0
    subs r3, r3, r0
    asrs r3, r3, #0xc
    str r3, [r2, #4]
    ldr r0, [r1, #4]
    muls r0, r4, r0
    ldr r1, [r1]
    muls r1, r6, r1
    subs r0, r0, r1
    asrs r0, r0, #0xc
    str r0, [r2, #8]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0801520C

    thumb_func_start func_08015244
func_08015244: @ 0x08015244
    muls r0, r3, r0
    muls r1, r2, r1
    subs r0, r0, r1
    bx lr
    func_end func_08015244
