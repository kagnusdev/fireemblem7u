    .include "asm_prelude.inc"

    thumb_func_start func_0804C0B4
func_0804C0B4: @ 0x0804C0B4
    push {lr}
    ldr r0, .L0804C0CC @ =0x08B9A9E4
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    movs r0, #0x80
    bl SetBgmVolume
    pop {r0}
    bx r0
    .align 2, 0
.L0804C0CC: .4byte 0x08B9A9E4
    func_end func_0804C0B4

    thumb_func_start func_0804C0D0
func_0804C0D0: @ 0x0804C0D0
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x10
    bne .L0804C100
    ldr r4, .L0804C0FC @ =0x0000037B
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    adds r0, r4, #0
    movs r1, #0x78
    movs r2, #0
    bl func_080676E8
    b .L0804C112
    .align 2, 0
.L0804C0FC: .4byte 0x0000037B
.L0804C100:
    cmp r0, #0x74
    bne .L0804C112
    movs r0, #0x80
    lsls r0, r0, #1
    bl SetBgmVolume
    adds r0, r4, #0
    bl Proc_Break
.L0804C112:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804C0D0

    thumb_func_start func_0804C118
func_0804C118: @ 0x0804C118
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r7, r1, #0
    movs r6, #0
    adds r5, r7, #0
.L0804C124:
    movs r0, #0xf
    ldrh r1, [r4]
    cmp r1, #0xff
    beq .L0804C12E
    ldrh r0, [r4]
.L0804C12E:
    lsls r0, r0, #5
    ldr r1, .L0804C160 @ =0x081D93B0
    adds r0, r0, r1
    adds r1, r5, #0
    movs r2, #8
    bl CpuFastSet
    adds r4, #2
    adds r5, #0x20
    adds r6, #1
    cmp r6, #0xa
    bls .L0804C124
    movs r0, #0
    str r0, [sp]
    movs r0, #0xc0
    lsls r0, r0, #1
    adds r1, r7, r0
    ldr r2, .L0804C164 @ =0x01000008
    mov r0, sp
    bl CpuFastSet
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804C160: .4byte 0x081D93B0
.L0804C164: .4byte 0x01000008
    func_end func_0804C118

    thumb_func_start func_0804C168
func_0804C168: @ 0x0804C168
    push {r4, r5, r6, lr}
    adds r5, r1, #0
    lsls r0, r0, #0x10
    asrs r6, r0, #0x10
    movs r0, #1
    rsbs r0, r0, #0
    cmp r6, r0
    bne .L0804C184
    movs r0, #0xb
    strh r0, [r5]
    movs r0, #0xa
    strh r0, [r5, #2]
    strh r0, [r5, #4]
    b .L0804C1CA
.L0804C184:
    adds r0, r6, #0
    movs r1, #0x64
    bl Div
    strh r0, [r5]
    movs r0, #0x64
    ldrh r1, [r5]
    adds r4, r1, #0
    muls r4, r0, r4
    subs r4, r6, r4
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    adds r0, r4, #0
    movs r1, #0xa
    bl Div
    strh r0, [r5, #2]
    lsls r0, r0, #2
    ldrh r2, [r5, #2]
    adds r0, r0, r2
    lsls r0, r0, #1
    subs r4, r4, r0
    strh r4, [r5, #4]
    adds r1, r2, #0
    ldrh r2, [r5]
    adds r0, r1, r2
    cmp r0, #0
    bne .L0804C1C0
    movs r0, #0xb
    strh r0, [r5, #2]
.L0804C1C0:
    ldrh r0, [r5]
    cmp r0, #0
    bne .L0804C1CA
    movs r0, #0xb
    strh r0, [r5]
.L0804C1CA:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0804C168

    thumb_func_start func_0804C1D0
func_0804C1D0: @ 0x0804C1D0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    ldr r4, .L0804C21C @ =0x02000068
    ldr r0, .L0804C220 @ =0x08B9A9FC
    movs r1, #1
    bl Proc_Start
    str r0, [r4]
    movs r0, #0
    bl func_0804C48C
    bl func_0804C44C
    bl func_0804C4F4
    bl func_0804C4D4
    ldr r1, .L0804C224 @ =0x02000038
    movs r2, #0
    ldrsh r0, [r1, r2]
    movs r2, #2
    ldrsh r1, [r1, r2]
    bl func_0804C49C
    ldr r0, .L0804C228 @ =0x0203E0B8
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x50
    ble .L0804C234
    ldr r0, .L0804C22C @ =0x081D9730
    ldr r1, .L0804C230 @ =0x02022BC0
    movs r2, #0x10
    bl CpuSet
    b .L0804C248
    .align 2, 0
.L0804C21C: .4byte 0x02000068
.L0804C220: .4byte 0x08B9A9FC
.L0804C224: .4byte 0x02000038
.L0804C228: .4byte 0x0203E0B8
.L0804C22C: .4byte 0x081D9730
.L0804C230: .4byte 0x02022BC0
.L0804C234:
    ldr r0, .L0804C260 @ =0x0203E020
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #5
    ldr r1, .L0804C264 @ =0x081D95B0
    adds r0, r0, r1
    ldr r1, .L0804C268 @ =0x02022BC0
    movs r2, #0x10
    bl CpuSet
.L0804C248:
    ldr r0, .L0804C26C @ =0x0203E0B8
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r0, #0x50
    ble .L0804C278
    ldr r0, .L0804C270 @ =0x081D9730
    ldr r1, .L0804C274 @ =0x02022BE0
    movs r2, #0x10
    bl CpuSet
    b .L0804C28C
    .align 2, 0
.L0804C260: .4byte 0x0203E020
.L0804C264: .4byte 0x081D95B0
.L0804C268: .4byte 0x02022BC0
.L0804C26C: .4byte 0x0203E0B8
.L0804C270: .4byte 0x081D9730
.L0804C274: .4byte 0x02022BE0
.L0804C278:
    ldr r0, .L0804C3DC @ =0x0203E020
    movs r2, #2
    ldrsh r0, [r0, r2]
    lsls r0, r0, #5
    ldr r1, .L0804C3E0 @ =0x081D95B0
    adds r0, r0, r1
    ldr r1, .L0804C3E4 @ =0x02022BE0
    movs r2, #0x10
    bl CpuSet
.L0804C28C:
    ldr r1, .L0804C3E8 @ =0x0203E0C0
    ldr r2, .L0804C3EC @ =0x0000FFFF
    adds r0, r2, #0
    ldrh r2, [r1]
    orrs r2, r0
    strh r2, [r1]
    ldrh r2, [r1, #2]
    orrs r0, r2
    strh r0, [r1, #2]
    ldr r0, .L0804C3F0 @ =0x081D9020
    ldr r1, .L0804C3F4 @ =0x06013800
    bl LZ77UnComp16bit
    ldr r0, .L0804C3F8 @ =0x081D90C0
    ldr r1, .L0804C3FC @ =0x06013C00
    bl LZ77UnComp16bit
    ldr r6, .L0804C3DC @ =0x0203E020
    movs r1, #0
    ldrsh r0, [r6, r1]
    lsls r0, r0, #5
    ldr r5, .L0804C400 @ =0x081D9330
    adds r0, r0, r5
    ldr r4, .L0804C404 @ =0x02022B00
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    movs r2, #2
    ldrsh r0, [r6, r2]
    lsls r0, r0, #5
    adds r0, r0, r5
    adds r4, #0x20
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    ldr r6, .L0804C408 @ =0x0203E0C4
    movs r1, #0
    ldrsh r0, [r6, r1]
    ldr r7, .L0804C40C @ =0x02017700
    adds r1, r7, #0
    bl func_0804C168
    ldr r5, .L0804C410 @ =0x0203E0C8
    movs r2, #0
    ldrsh r0, [r5, r2]
    adds r1, r7, #6
    bl func_0804C168
    ldr r4, .L0804C414 @ =0x0203E0CC
    movs r1, #0
    ldrsh r0, [r4, r1]
    adds r1, r7, #0
    adds r1, #0xc
    bl func_0804C168
    movs r2, #2
    ldrsh r0, [r6, r2]
    adds r1, r7, #0
    adds r1, #0x12
    bl func_0804C168
    movs r1, #2
    ldrsh r0, [r5, r1]
    adds r1, r7, #0
    adds r1, #0x18
    bl func_0804C168
    movs r2, #2
    ldrsh r0, [r4, r2]
    adds r1, r7, #0
    adds r1, #0x1e
    bl func_0804C168
    movs r0, #0
    str r0, [sp]
    ldr r1, .L0804C418 @ =0x020169C8
    ldr r2, .L0804C41C @ =0x01000100
    mov r0, sp
    bl CpuFastSet
    movs r6, #0
    mov sb, r7
.L0804C338:
    movs r5, #0
    lsls r3, r6, #1
    adds r0, r6, #1
    mov r8, r0
    lsls r4, r6, #7
.L0804C342:
    adds r0, r3, r6
    adds r0, r0, r5
    lsls r0, r0, #1
    add r0, sb
    ldrh r0, [r0]
    lsls r0, r0, #5
    ldr r1, .L0804C420 @ =0x081D9170
    adds r0, r0, r1
    ldr r7, .L0804C418 @ =0x020169C8
    adds r1, r4, r7
    movs r2, #0x10
    str r3, [sp, #4]
    bl CpuSet
    adds r4, #0x20
    adds r5, #1
    ldr r3, [sp, #4]
    cmp r5, #2
    bls .L0804C342
    mov r6, r8
    cmp r6, #5
    bls .L0804C338
    ldr r1, .L0804C424 @ =0x06013A00
    movs r4, #0xc0
    lsls r4, r4, #1
    adds r0, r7, #0
    adds r2, r4, #0
    bl RegisterDataMove
    adds r0, r7, r4
    ldr r1, .L0804C428 @ =0x06013E00
    adds r2, r4, #0
    bl RegisterDataMove
    bl InitIcons
    movs r0, #0
    movs r1, #0x1d
    bl ApplyIconPalette
    movs r0, #0
    movs r1, #0x1e
    bl ApplyIconPalette
    ldr r0, .L0804C42C @ =0x0203E094
    ldr r0, [r0]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIcon
    movs r1, #0xee
    lsls r1, r1, #1
    bl PutIconObjImg
    ldr r0, .L0804C430 @ =0x0203E098
    ldr r0, [r0]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIcon
    movs r1, #0xef
    lsls r1, r1, #1
    bl PutIconObjImg
    ldr r0, .L0804C434 @ =0x0819431C
    movs r1, #0x80
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804C3DC: .4byte 0x0203E020
.L0804C3E0: .4byte 0x081D95B0
.L0804C3E4: .4byte 0x02022BE0
.L0804C3E8: .4byte 0x0203E0C0
.L0804C3EC: .4byte 0x0000FFFF
.L0804C3F0: .4byte 0x081D9020
.L0804C3F4: .4byte 0x06013800
.L0804C3F8: .4byte 0x081D90C0
.L0804C3FC: .4byte 0x06013C00
.L0804C400: .4byte 0x081D9330
.L0804C404: .4byte 0x02022B00
.L0804C408: .4byte 0x0203E0C4
.L0804C40C: .4byte 0x02017700
.L0804C410: .4byte 0x0203E0C8
.L0804C414: .4byte 0x0203E0CC
.L0804C418: .4byte 0x020169C8
.L0804C41C: .4byte 0x01000100
.L0804C420: .4byte 0x081D9170
.L0804C424: .4byte 0x06013A00
.L0804C428: .4byte 0x06013E00
.L0804C42C: .4byte 0x0203E094
.L0804C430: .4byte 0x0203E098
.L0804C434: .4byte 0x0819431C
    func_end func_0804C1D0

    thumb_func_start func_0804C438
func_0804C438: @ 0x0804C438
    push {lr}
    ldr r0, .L0804C448 @ =0x02000068
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L0804C448: .4byte 0x02000068
    func_end func_0804C438

    thumb_func_start func_0804C44C
func_0804C44C: @ 0x0804C44C
    ldr r0, .L0804C458 @ =0x02000068
    ldr r1, [r0]
    movs r0, #0
    str r0, [r1, #0x4c]
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804C458: .4byte 0x02000068
    func_end func_0804C44C

    thumb_func_start func_0804C45C
func_0804C45C: @ 0x0804C45C
    ldr r0, .L0804C468 @ =0x02000068
    ldr r1, [r0]
    movs r0, #1
    str r0, [r1, #0x4c]
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804C468: .4byte 0x02000068
    func_end func_0804C45C

    thumb_func_start func_0804C46C
func_0804C46C: @ 0x0804C46C
    ldr r0, .L0804C478 @ =0x02000068
    ldr r1, [r0]
    movs r0, #1
    str r0, [r1, #0x4c]
    bx lr
    .align 2, 0
.L0804C478: .4byte 0x02000068
    func_end func_0804C46C

    thumb_func_start func_0804C47C
func_0804C47C: @ 0x0804C47C
    ldr r0, .L0804C488 @ =0x02000068
    ldr r1, [r0]
    movs r0, #1
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804C488: .4byte 0x02000068
    func_end func_0804C47C

    thumb_func_start func_0804C48C
func_0804C48C: @ 0x0804C48C
    lsls r0, r0, #0x10
    ldr r1, .L0804C498 @ =0x02000068
    ldr r1, [r1]
    lsrs r0, r0, #6
    str r0, [r1, #0x44]
    bx lr
    .align 2, 0
.L0804C498: .4byte 0x02000068
    func_end func_0804C48C

    thumb_func_start func_0804C49C
func_0804C49C: @ 0x0804C49C
    ldr r2, .L0804C4AC @ =0x02000068
    ldr r2, [r2]
    movs r3, #0
    strh r0, [r2, #0x32]
    strh r1, [r2, #0x3a]
    adds r2, #0x29
    strb r3, [r2]
    bx lr
    .align 2, 0
.L0804C4AC: .4byte 0x02000068
    func_end func_0804C49C

    thumb_func_start func_0804C4B0
func_0804C4B0: @ 0x0804C4B0
    ldr r2, .L0804C4C0 @ =0x02000068
    ldr r2, [r2]
    strh r0, [r2, #0x32]
    strh r1, [r2, #0x3a]
    adds r2, #0x29
    movs r0, #1
    strb r0, [r2]
    bx lr
    .align 2, 0
.L0804C4C0: .4byte 0x02000068
    func_end func_0804C4B0

    thumb_func_start func_0804C4C4
func_0804C4C4: @ 0x0804C4C4
    ldr r0, .L0804C4D0 @ =0x02000068
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804C4D0: .4byte 0x02000068
    func_end func_0804C4C4

    thumb_func_start func_0804C4D4
func_0804C4D4: @ 0x0804C4D4
    ldr r0, .L0804C4E0 @ =0x02000068
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #0
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804C4E0: .4byte 0x02000068
    func_end func_0804C4D4

    thumb_func_start func_0804C4E4
func_0804C4E4: @ 0x0804C4E4
    ldr r0, .L0804C4F0 @ =0x02000068
    ldr r0, [r0]
    adds r0, #0x2a
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804C4F0: .4byte 0x02000068
    func_end func_0804C4E4

    thumb_func_start func_0804C4F4
func_0804C4F4: @ 0x0804C4F4
    ldr r0, .L0804C500 @ =0x02000068
    ldr r0, [r0]
    adds r0, #0x2a
    movs r1, #0
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804C500: .4byte 0x02000068
    func_end func_0804C4F4

    thumb_func_start func_0804C504
func_0804C504: @ 0x0804C504
    adds r3, r0, #0
    cmp r1, #0
    ble .L0804C52C
    cmp r2, #1
    beq .L0804C51C
    cmp r2, #1
    bhs .L0804C524
    ldr r0, .L0804C518 @ =0x08B9AB1C
    b .L0804C546
    .align 2, 0
.L0804C518: .4byte 0x08B9AB1C
.L0804C51C:
    ldr r0, .L0804C520 @ =0x08B9AB34
    b .L0804C546
    .align 2, 0
.L0804C520: .4byte 0x08B9AB34
.L0804C524:
    ldr r0, .L0804C528 @ =0x08B9AB4C
    b .L0804C546
    .align 2, 0
.L0804C528: .4byte 0x08B9AB4C
.L0804C52C:
    cmp r2, #1
    beq .L0804C53C
    cmp r2, #1
    bhs .L0804C544
    ldr r0, .L0804C538 @ =0x08B9AB64
    b .L0804C546
    .align 2, 0
.L0804C538: .4byte 0x08B9AB64
.L0804C53C:
    ldr r0, .L0804C540 @ =0x08B9AB7C
    b .L0804C546
    .align 2, 0
.L0804C540: .4byte 0x08B9AB7C
.L0804C544:
    ldr r0, .L0804C54C @ =0x08B9AB94
.L0804C546:
    str r0, [r3, #0x3c]
    bx lr
    .align 2, 0
.L0804C54C: .4byte 0x08B9AB94
    func_end func_0804C504

    thumb_func_start func_0804C550
func_0804C550: @ 0x0804C550
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x120
    mov sb, r0
    movs r0, #0
    str r0, [sp, #0xd8]
    bl GetGameTime
    lsrs r0, r0, #3
    movs r1, #3
    bl DivRem
    str r0, [sp, #0xe4]
    mov r0, sb
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804C57C
    b .L0804CD20
.L0804C57C:
    mov r0, sb
    adds r0, #0x29
    ldrb r1, [r0]
    str r0, [sp, #0x108]
    cmp r1, #0
    bne .L0804C66A
    mov r1, sb
    ldrh r1, [r1, #0x3a]
    lsls r0, r1, #0x10
    asrs r4, r0, #0x13
    lsls r0, r4, #5
    movs r2, #0xd0
    lsls r2, r2, #1
    adds r7, r0, r2
    cmp r7, #0
    bge .L0804C59E
    movs r7, #0
.L0804C59E:
    adds r6, r4, #7
    cmp r6, #7
    ble .L0804C5A6
    movs r6, #7
.L0804C5A6:
    movs r0, #7
    subs r0, r0, r6
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #1
    mov sl, r1
    ldr r0, .L0804C5C8 @ =0x0203E02C
    movs r3, #0
    ldrsh r0, [r0, r3]
    cmp r0, #0
    blt .L0804C5CC
    cmp r0, #2
    bgt .L0804C5CC
    movs r4, #0
    movs r0, #0xf
    str r0, [sp, #0xdc]
    b .L0804C5D2
    .align 2, 0
.L0804C5C8: .4byte 0x0203E02C
.L0804C5CC:
    movs r1, #8
    str r1, [sp, #0xdc]
    movs r4, #8
.L0804C5D2:
    ldr r2, .L0804C6B8 @ =0x02022FA0
    mov r8, r2
    movs r0, #0x9f
    str r0, [sp]
    mov r0, r8
    movs r1, #0x1e
    movs r2, #8
    movs r3, #0
    bl func_080669B4
    mov r3, sb
    ldr r0, [r3, #0x4c]
    cmp r0, #0
    bne .L0804C624
    ldr r0, .L0804C6BC @ =0x081D8D9C
    add r0, sl
    lsls r5, r7, #1
    lsls r1, r4, #1
    ldr r2, .L0804C6C0 @ =0xFFFFFCC0
    add r2, r8
    adds r1, r1, r2
    adds r5, r5, r1
    lsls r4, r6, #0x10
    lsrs r4, r4, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r5, #0
    movs r2, #0xf
    adds r3, r4, #0
    bl func_08066ACC
    movs r0, #0x80
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0xf
    adds r2, r4, #0
    movs r3, #2
    bl func_0806693C
.L0804C624:
    mov r4, sb
    ldr r0, [r4, #0x50]
    cmp r0, #0
    bne .L0804C664
    ldr r0, .L0804C6C4 @ =0x081D8E70
    add r0, sl
    lsls r5, r7, #1
    ldr r2, [sp, #0xdc]
    lsls r1, r2, #1
    ldr r2, .L0804C6C0 @ =0xFFFFFCC0
    add r2, r8
    adds r1, r1, r2
    adds r5, r5, r1
    lsls r4, r6, #0x10
    lsrs r4, r4, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r5, #0
    movs r2, #0x10
    adds r3, r4, #0
    bl func_08066ACC
    movs r0, #0x80
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0x10
    adds r2, r4, #0
    movs r3, #3
    bl func_0806693C
.L0804C664:
    movs r0, #1
    bl EnableBgSync
.L0804C66A:
    ldr r1, .L0804C6C8 @ =0x0203E0C0
    ldr r0, .L0804C6CC @ =0x0203E0B8
    ldrh r2, [r0]
    adds r5, r0, #0
    ldrh r3, [r1]
    ldrh r4, [r5]
    cmp r3, r4
    beq .L0804C67E
    movs r0, #1
    str r0, [sp, #0xd8]
.L0804C67E:
    ldrh r0, [r5, #2]
    ldrh r3, [r1, #2]
    cmp r3, r0
    beq .L0804C68A
    movs r4, #1
    str r4, [sp, #0xd8]
.L0804C68A:
    strh r2, [r1]
    strh r0, [r1, #2]
    ldrh r7, [r5]
    ldr r0, .L0804C6D0 @ =0x0203E0BC
    ldrh r6, [r0]
    ldrh r1, [r5, #2]
    mov r8, r1
    ldrh r0, [r0, #2]
    str r0, [sp, #0xd4]
    ldr r0, .L0804C6D4 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #3
    beq .L0804C6D8
    cmp r0, #3
    bgt .L0804C6F8
    cmp r0, #0
    blt .L0804C6F8
    mov r3, sb
    movs r4, #0x32
    ldrsh r3, [r3, r4]
    mov sl, r3
    b .L0804C702
    .align 2, 0
.L0804C6B8: .4byte 0x02022FA0
.L0804C6BC: .4byte 0x081D8D9C
.L0804C6C0: .4byte 0xFFFFFCC0
.L0804C6C4: .4byte 0x081D8E70
.L0804C6C8: .4byte 0x0203E0C0
.L0804C6CC: .4byte 0x0203E0B8
.L0804C6D0: .4byte 0x0203E0BC
.L0804C6D4: .4byte 0x0203E02C
.L0804C6D8:
    ldr r0, .L0804C6EC @ =0x0203E010
    ldrh r0, [r0]
    cmp r0, #1
    bne .L0804C6F0
    mov r1, sb
    movs r2, #0x32
    ldrsh r0, [r1, r2]
    adds r0, #0x38
    b .L0804C700
    .align 2, 0
.L0804C6EC: .4byte 0x0203E010
.L0804C6F0:
    mov r3, sb
    movs r4, #0x32
    ldrsh r0, [r3, r4]
    b .L0804C6FE
.L0804C6F8:
    mov r1, sb
    movs r2, #0x32
    ldrsh r0, [r1, r2]
.L0804C6FE:
    subs r0, #0x38
.L0804C700:
    mov sl, r0
.L0804C702:
    ldr r3, [sp, #0x108]
    ldrb r0, [r3]
    cmp r0, #0
    bne .L0804C71C
    ldr r4, .L0804C718 @ =0x0000FFF8
    mov r0, sb
    ldrh r1, [r0, #0x3a]
    ands r1, r4
    str r1, [sp, #0xe0]
    b .L0804C724
    .align 2, 0
.L0804C718: .4byte 0x0000FFF8
.L0804C71C:
    mov r2, sb
    movs r3, #0x3a
    ldrsh r2, [r2, r3]
    str r2, [sp, #0xe0]
.L0804C724:
    adds r4, r5, #0
    movs r1, #0
    ldrsh r0, [r4, r1]
    movs r1, #0xa
    bl Div
    add r2, sp, #0x68
    strh r0, [r2]
    lsls r1, r0, #2
    adds r1, r1, r0
    lsls r1, r1, #1
    ldrh r3, [r4]
    subs r1, r3, r1
    strh r1, [r2, #2]
    lsls r0, r0, #0x10
    adds r3, r2, #0
    cmp r0, #0
    bne .L0804C74C
    movs r0, #0xb
    strh r0, [r3]
.L0804C74C:
    movs r1, #2
    ldrsh r0, [r4, r1]
    movs r1, #0xa
    str r3, [sp, #0x11c]
    bl Div
    ldr r3, [sp, #0x11c]
    strh r0, [r3, #4]
    lsls r1, r0, #2
    adds r1, r1, r0
    lsls r1, r1, #1
    ldrh r2, [r4, #2]
    subs r1, r2, r1
    strh r1, [r3, #6]
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L0804C772
    movs r0, #0xb
    strh r0, [r3, #4]
.L0804C772:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0x50
    ble .L0804C780
    movs r0, #0xc
    strh r0, [r3]
    strh r0, [r3, #2]
.L0804C780:
    movs r2, #2
    ldrsh r0, [r5, r2]
    cmp r0, #0x50
    ble .L0804C78E
    movs r0, #0xc
    strh r0, [r3, #4]
    strh r0, [r3, #6]
.L0804C78E:
    mov r4, sl
    adds r4, #9
    str r4, [sp, #0xf4]
    ldr r0, [sp, #0xe0]
    adds r0, #0x91
    str r0, [sp, #0x114]
    mov r1, sl
    adds r1, #0x81
    str r1, [sp, #0x110]
    lsls r2, r7, #0x10
    str r2, [sp, #0xf8]
    lsls r6, r6, #0x10
    str r6, [sp, #0xfc]
    adds r4, #0x14
    str r4, [sp, #0x10c]
    mov r0, r8
    lsls r0, r0, #0x10
    str r0, [sp, #0x100]
    ldr r1, [sp, #0xd4]
    lsls r1, r1, #0x10
    str r1, [sp, #0x104]
    mov r2, sl
    adds r2, #0x95
    str r2, [sp, #0x118]
    ldr r4, [sp, #0xd8]
    cmp r4, #1
    bne .L0804C820
    add r0, sp, #0xd0
    movs r1, #0
    str r1, [r0]
    ldr r1, .L0804C858 @ =0x02016DC8
    ldr r2, .L0804C85C @ =0x01000020
    str r3, [sp, #0x11c]
    bl CpuFastSet
    movs r0, #0
    ldr r3, [sp, #0x11c]
.L0804C7D8:
    adds r1, r0, #1
    mov r8, r1
    lsls r5, r0, #6
    lsls r0, r0, #2
    adds r4, r0, r3
    movs r6, #1
.L0804C7E4:
    ldrh r2, [r4]
    lsls r0, r2, #5
    ldr r1, .L0804C860 @ =0x081D9170
    adds r0, r0, r1
    ldr r7, .L0804C858 @ =0x02016DC8
    adds r1, r5, r7
    movs r2, #0x10
    str r3, [sp, #0x11c]
    bl CpuSet
    adds r5, #0x20
    adds r4, #2
    subs r6, #1
    ldr r3, [sp, #0x11c]
    cmp r6, #0
    bge .L0804C7E4
    mov r0, r8
    cmp r0, #1
    ble .L0804C7D8
    ldr r1, .L0804C864 @ =0x060139C0
    adds r0, r7, #0
    movs r2, #0x40
    bl RegisterDataMove
    adds r0, r7, #0
    adds r0, #0x40
    ldr r1, .L0804C868 @ =0x06013DC0
    movs r2, #0x40
    bl RegisterDataMove
.L0804C820:
    add r0, sp, #8
    movs r4, #0
    ldr r1, .L0804C86C @ =0x000051CE
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r0, r2, #0
    add r1, sp, #0xf4
    ldrh r1, [r1]
    strh r1, [r0, #2]
    add r2, sp, #0x114
    ldrh r2, [r2]
    strh r2, [r0, #4]
    strh r4, [r0, #0xc]
    movs r0, #0
    bl func_0804D594
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #1
    beq .L0804C874
    ldr r0, .L0804C870 @ =0x08B9AA44
    str r0, [sp, #0x44]
    str r4, [sp, #0x24]
    b .L0804C89E
    .align 2, 0
.L0804C858: .4byte 0x02016DC8
.L0804C85C: .4byte 0x01000020
.L0804C860: .4byte 0x081D9170
.L0804C864: .4byte 0x060139C0
.L0804C868: .4byte 0x06013DC0
.L0804C86C: .4byte 0x000051CE
.L0804C870: .4byte 0x08B9AA44
.L0804C874:
    add r1, sp, #0x70
    str r1, [sp, #0x44]
    movs r0, #0x80
    lsls r0, r0, #2
    str r0, [sp, #0x24]
    add r2, sp, #8
    adds r0, r2, #0
    ldrh r0, [r0, #2]
    subs r0, #8
    strh r0, [r2, #2]
    adds r0, r2, #0
    ldrh r0, [r0, #4]
    subs r0, #8
    strh r0, [r2, #4]
    ldr r0, .L0804C8E8 @ =0x08B9AA44
    movs r2, #0x80
    lsls r2, r2, #1
    str r3, [sp]
    movs r3, #0x80
    bl func_08067444
.L0804C89E:
    mov r3, sb
    ldr r0, [r3, #0x4c]
    cmp r0, #0
    bne .L0804C8AC
    add r0, sp, #8
    bl AnimDisplay
.L0804C8AC:
    movs r4, #0
    str r4, [sp, #0x24]
    add r0, sp, #8
    ldr r1, .L0804C8EC @ =0x000061EE
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r0, r2, #0
    add r1, sp, #0x110
    ldrh r1, [r1]
    strh r1, [r0, #2]
    add r2, sp, #0x114
    ldrh r2, [r2]
    strh r2, [r0, #4]
    strh r4, [r0, #0xc]
    movs r0, #1
    bl func_0804D594
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #1
    beq .L0804C8F0
    ldr r0, .L0804C8E8 @ =0x08B9AA44
    str r0, [sp, #0x44]
    str r4, [sp, #0x24]
    b .L0804C91A
    .align 2, 0
.L0804C8E8: .4byte 0x08B9AA44
.L0804C8EC: .4byte 0x000061EE
.L0804C8F0:
    add r1, sp, #0x70
    str r1, [sp, #0x44]
    movs r0, #0x80
    lsls r0, r0, #2
    str r0, [sp, #0x24]
    add r2, sp, #8
    adds r0, r2, #0
    ldrh r0, [r0, #2]
    subs r0, #8
    strh r0, [r2, #2]
    adds r0, r2, #0
    ldrh r0, [r0, #4]
    subs r0, #8
    strh r0, [r2, #4]
    ldr r0, .L0804CA14 @ =0x08B9AA44
    movs r2, #0x80
    lsls r2, r2, #1
    str r3, [sp]
    movs r3, #0x80
    bl func_08067444
.L0804C91A:
    mov r3, sb
    ldr r0, [r3, #0x50]
    cmp r0, #0
    bne .L0804C928
    add r0, sp, #8
    bl AnimDisplay
.L0804C928:
    ldr r4, [sp, #0xf8]
    ldr r0, .L0804CA18 @ =0xFFD80000
    adds r1, r4, r0
    ldr r2, [sp, #0xfc]
    adds r0, r2, r0
    lsrs r5, r0, #0x10
    lsrs r7, r4, #0x10
    lsrs r2, r2, #0x10
    mov r8, r2
    lsrs r6, r1, #0x10
    asrs r1, r1, #0x10
    cmp r1, #0x28
    ble .L0804C944
    movs r6, #0x28
.L0804C944:
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L0804C94E
    movs r5, #0x28
.L0804C94E:
    lsls r0, r6, #0x10
    cmp r0, #0
    bge .L0804C956
    movs r6, #0
.L0804C956:
    lsls r0, r5, #0x10
    cmp r0, #0
    bge .L0804C95E
    movs r5, #0
.L0804C95E:
    lsls r0, r7, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L0804C968
    movs r7, #0x28
.L0804C968:
    mov r3, r8
    lsls r0, r3, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L0804C976
    movs r4, #0x28
    mov r8, r4
.L0804C976:
    add r0, sp, #8
    movs r3, #0
    movs r1, #0xb0
    lsls r1, r1, #8
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r4, sb
    ldr r0, [r4, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    str r3, [sp, #0x24]
    adds r0, r2, #0
    add r1, sp, #0x10c
    ldrh r1, [r1]
    strh r1, [r0, #2]
    ldr r0, .L0804CA1C @ =0x08B9AA14
    str r0, [sp, #0x44]
    ldr r2, [r4, #0x4c]
    str r2, [sp, #0xe8]
    cmp r2, #0
    bne .L0804CA4C
    lsls r0, r5, #0x10
    asrs r2, r0, #0x10
    add r4, sp, #0x50
    cmp r2, #0
    beq .L0804C9E6
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    adds r0, r4, #0
    bl func_08066CA0
    ldr r3, [sp, #0xd8]
    cmp r3, #1
    bne .L0804C9C2
    ldr r1, .L0804CA20 @ =0x02016E48
    adds r0, r4, #0
    bl func_0804C118
.L0804C9C2:
    add r1, sp, #8
    ldr r0, [sp, #0xe0]
    adds r0, #0x8e
    strh r0, [r1, #4]
    adds r2, r1, #0
    movs r0, #0xfc
    lsls r0, r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    strh r0, [r1, #8]
    adds r0, r1, #0
    add r1, sp, #0xe8
    ldrh r1, [r1]
    strh r1, [r0, #0xc]
    bl AnimDisplay
.L0804C9E6:
    lsls r1, r7, #0x10
    asrs r1, r1, #0x10
    mov r3, r8
    lsls r2, r3, #0x10
    asrs r2, r2, #0x10
    adds r0, r4, #0
    bl func_08066CA0
    ldr r0, [sp, #0xd8]
    cmp r0, #1
    bne .L0804CA04
    ldr r1, .L0804CA24 @ =0x02017248
    adds r0, r4, #0
    bl func_0804C118
.L0804CA04:
    cmp r5, #0
    beq .L0804CA28
    add r1, sp, #8
    ldr r0, [sp, #0xe0]
    adds r0, #0x95
    strh r0, [r1, #4]
    b .L0804CA30
    .align 2, 0
.L0804CA14: .4byte 0x08B9AA44
.L0804CA18: .4byte 0xFFD80000
.L0804CA1C: .4byte 0x08B9AA14
.L0804CA20: .4byte 0x02016E48
.L0804CA24: .4byte 0x02017248
.L0804CA28:
    add r0, sp, #8
    add r1, sp, #0x114
    ldrh r1, [r1]
    strh r1, [r0, #4]
.L0804CA30:
    add r2, sp, #8
    adds r1, r2, #0
    movs r0, #0xfc
    lsls r0, r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    movs r3, #0
    movs r1, #0x20
    orrs r0, r1
    strh r0, [r2, #8]
    adds r0, r2, #0
    strh r3, [r0, #0xc]
    bl AnimDisplay
.L0804CA4C:
    ldr r2, [sp, #0x100]
    ldr r3, .L0804CB44 @ =0xFFD80000
    adds r1, r2, r3
    ldr r4, [sp, #0x104]
    adds r0, r4, r3
    lsrs r5, r0, #0x10
    lsrs r7, r2, #0x10
    lsrs r4, r4, #0x10
    mov r8, r4
    lsrs r6, r1, #0x10
    asrs r1, r1, #0x10
    cmp r1, #0x28
    ble .L0804CA68
    movs r6, #0x28
.L0804CA68:
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L0804CA72
    movs r5, #0x28
.L0804CA72:
    lsls r0, r6, #0x10
    cmp r0, #0
    bge .L0804CA7A
    movs r6, #0
.L0804CA7A:
    lsls r0, r5, #0x10
    cmp r0, #0
    bge .L0804CA82
    movs r5, #0
.L0804CA82:
    lsls r0, r7, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L0804CA8C
    movs r7, #0x28
.L0804CA8C:
    mov r1, r8
    lsls r0, r1, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L0804CA9A
    movs r2, #0x28
    mov r8, r2
.L0804CA9A:
    add r0, sp, #8
    movs r3, #0
    mov ip, r3
    movs r1, #0xc0
    lsls r1, r1, #8
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r4, sb
    ldr r0, [r4, #0x44]
    add r4, sp, #0xec
    strh r3, [r4]
    orrs r0, r1
    strh r0, [r2, #8]
    mov r0, ip
    str r0, [sp, #0x24]
    adds r0, r2, #0
    add r1, sp, #0x118
    ldrh r1, [r1]
    strh r1, [r0, #2]
    ldr r0, .L0804CB48 @ =0x08B9AA14
    str r0, [sp, #0x44]
    mov r2, sb
    ldr r2, [r2, #0x50]
    str r2, [sp, #0xf0]
    cmp r2, #0
    bne .L0804CB78
    lsls r0, r5, #0x10
    asrs r2, r0, #0x10
    adds r5, r0, #0
    add r4, sp, #0x50
    cmp r2, #0
    beq .L0804CB16
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    adds r0, r4, #0
    bl func_08066CA0
    ldr r3, [sp, #0xd8]
    cmp r3, #1
    bne .L0804CAF2
    ldr r1, .L0804CB4C @ =0x02017048
    adds r0, r4, #0
    bl func_0804C118
.L0804CAF2:
    add r1, sp, #8
    ldr r0, [sp, #0xe0]
    adds r0, #0x8e
    strh r0, [r1, #4]
    adds r2, r1, #0
    movs r0, #0xfc
    lsls r0, r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    movs r1, #0x10
    orrs r0, r1
    strh r0, [r2, #8]
    adds r0, r2, #0
    add r1, sp, #0xf0
    ldrh r1, [r1]
    strh r1, [r0, #0xc]
    bl AnimDisplay
.L0804CB16:
    lsls r1, r7, #0x10
    asrs r1, r1, #0x10
    mov r3, r8
    lsls r2, r3, #0x10
    asrs r2, r2, #0x10
    adds r0, r4, #0
    bl func_08066CA0
    ldr r0, [sp, #0xd8]
    cmp r0, #1
    bne .L0804CB34
    ldr r1, .L0804CB50 @ =0x02017448
    adds r0, r4, #0
    bl func_0804C118
.L0804CB34:
    cmp r5, #0
    beq .L0804CB54
    add r1, sp, #8
    ldr r0, [sp, #0xe0]
    adds r0, #0x95
    strh r0, [r1, #4]
    b .L0804CB5C
    .align 2, 0
.L0804CB44: .4byte 0xFFD80000
.L0804CB48: .4byte 0x08B9AA14
.L0804CB4C: .4byte 0x02017048
.L0804CB50: .4byte 0x02017448
.L0804CB54:
    add r0, sp, #8
    add r1, sp, #0x114
    ldrh r1, [r1]
    strh r1, [r0, #4]
.L0804CB5C:
    add r2, sp, #8
    adds r1, r2, #0
    movs r0, #0xfc
    lsls r0, r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    movs r3, #0
    movs r1, #0x30
    orrs r0, r1
    strh r0, [r2, #8]
    adds r0, r2, #0
    strh r3, [r0, #0xc]
    bl AnimDisplay
.L0804CB78:
    ldr r2, [sp, #0xd8]
    cmp r2, #1
    bne .L0804CB8A
    ldr r0, .L0804CD30 @ =0x02016E48
    ldr r1, .L0804CD34 @ =0x06013000
    movs r2, #0x80
    lsls r2, r2, #4
    bl RegisterDataMove
.L0804CB8A:
    mov r3, sb
    ldr r4, [r3, #0x4c]
    cmp r4, #0
    bne .L0804CBE8
    str r4, [sp, #0x24]
    ldr r0, .L0804CD38 @ =0x08B9AA5C
    str r0, [sp, #0x44]
    add r0, sp, #8
    ldr r1, .L0804CD3C @ =0x000051D0
    strh r1, [r0, #8]
    adds r2, r0, #0
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0xf
    strh r0, [r1, #2]
    ldr r0, [sp, #0xe0]
    adds r0, #0x70
    strh r0, [r1, #4]
    adds r0, r1, #0
    strh r4, [r0, #0xc]
    bl AnimDisplay
    str r4, [sp, #0x24]
    ldr r0, .L0804CD40 @ =0x08B9AA8C
    str r0, [sp, #0x44]
    add r0, sp, #8
    ldr r1, .L0804CD44 @ =0x000051C0
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0x65
    strh r0, [r1, #2]
    ldr r0, [sp, #0xe0]
    adds r0, #0x78
    strh r0, [r1, #4]
    adds r0, r1, #0
    strh r4, [r0, #0xc]
    bl AnimDisplay
.L0804CBE8:
    mov r0, sb
    ldr r4, [r0, #0x50]
    cmp r4, #0
    bne .L0804CC48
    str r4, [sp, #0x24]
    ldr r0, .L0804CD38 @ =0x08B9AA5C
    str r0, [sp, #0x44]
    add r0, sp, #8
    ldr r1, .L0804CD48 @ =0x000061F0
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0xd7
    strh r0, [r1, #2]
    ldr r0, [sp, #0xe0]
    adds r0, #0x70
    strh r0, [r1, #4]
    adds r0, r1, #0
    strh r4, [r0, #0xc]
    bl AnimDisplay
    str r4, [sp, #0x24]
    ldr r0, .L0804CD4C @ =0x08B9AAC8
    str r0, [sp, #0x44]
    add r0, sp, #8
    ldr r1, .L0804CD50 @ =0x000061C0
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0x87
    strh r0, [r1, #2]
    ldr r0, [sp, #0xe0]
    adds r0, #0x78
    strh r0, [r1, #4]
    adds r0, r1, #0
    strh r4, [r0, #0xc]
    bl AnimDisplay
.L0804CC48:
    mov r0, sb
    ldr r4, [r0, #0x4c]
    cmp r4, #0
    bne .L0804CCB4
    str r4, [sp, #0x24]
    ldr r1, .L0804CD54 @ =0x0203E0E0
    movs r2, #0
    ldrsh r0, [r1, r2]
    ldr r5, [sp, #0xe0]
    adds r5, #0x7a
    cmp r0, #0
    beq .L0804CC8E
    adds r1, r0, #0
    add r0, sp, #8
    ldr r2, [sp, #0xe4]
    bl func_0804C504
    add r0, sp, #8
    movs r1, #0xe5
    lsls r1, r1, #1
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0x35
    strh r0, [r1, #2]
    adds r0, r1, #0
    strh r5, [r0, #4]
    strh r4, [r0, #0xc]
    bl AnimDisplay
.L0804CC8E:
    ldr r0, .L0804CD58 @ =0x08B9AB04
    str r0, [sp, #0x44]
    add r0, sp, #8
    ldr r1, .L0804CD5C @ =0x0000D1DC
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0x2b
    strh r0, [r1, #2]
    adds r0, r1, #0
    strh r5, [r0, #4]
    strh r4, [r0, #0xc]
    bl AnimDisplay
.L0804CCB4:
    mov r0, sb
    ldr r4, [r0, #0x50]
    cmp r4, #0
    bne .L0804CD20
    str r4, [sp, #0x24]
    ldr r1, .L0804CD54 @ =0x0203E0E0
    movs r2, #2
    ldrsh r0, [r1, r2]
    ldr r5, [sp, #0xe0]
    adds r5, #0x7a
    cmp r0, #0
    beq .L0804CCFA
    adds r1, r0, #0
    add r0, sp, #8
    ldr r2, [sp, #0xe4]
    bl func_0804C504
    add r0, sp, #8
    movs r1, #0xe5
    lsls r1, r1, #1
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0x84
    strh r0, [r1, #2]
    adds r0, r1, #0
    strh r5, [r0, #4]
    strh r4, [r0, #0xc]
    bl AnimDisplay
.L0804CCFA:
    ldr r0, .L0804CD58 @ =0x08B9AB04
    str r0, [sp, #0x44]
    add r0, sp, #8
    ldr r1, .L0804CD60 @ =0x0000E1DE
    strh r1, [r0, #8]
    adds r2, r0, #0
    mov r3, sb
    ldr r0, [r3, #0x44]
    orrs r0, r1
    strh r0, [r2, #8]
    adds r1, r2, #0
    mov r0, sl
    adds r0, #0x7a
    strh r0, [r1, #2]
    adds r0, r1, #0
    strh r5, [r0, #4]
    strh r4, [r0, #0xc]
    bl AnimDisplay
.L0804CD20:
    add sp, #0x120
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804CD30: .4byte 0x02016E48
.L0804CD34: .4byte 0x06013000
.L0804CD38: .4byte 0x08B9AA5C
.L0804CD3C: .4byte 0x000051D0
.L0804CD40: .4byte 0x08B9AA8C
.L0804CD44: .4byte 0x000051C0
.L0804CD48: .4byte 0x000061F0
.L0804CD4C: .4byte 0x08B9AAC8
.L0804CD50: .4byte 0x000061C0
.L0804CD54: .4byte 0x0203E0E0
.L0804CD58: .4byte 0x08B9AB04
.L0804CD5C: .4byte 0x0000D1DC
.L0804CD60: .4byte 0x0000E1DE
    func_end func_0804C550

    thumb_func_start func_0804CD64
func_0804CD64: @ 0x0804CD64
    push {r4, lr}
    ldr r4, .L0804CD8C @ =0x0200006C
    ldr r0, .L0804CD90 @ =0x08B9ABAC
    movs r1, #5
    bl Proc_Start
    str r0, [r4]
    movs r0, #0
    movs r1, #0
    bl func_0804CDE8
    bl func_0804CDA8
    bl func_0804CE40
    bl func_0804CE20
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804CD8C: .4byte 0x0200006C
.L0804CD90: .4byte 0x08B9ABAC
    func_end func_0804CD64

    thumb_func_start func_0804CD94
func_0804CD94: @ 0x0804CD94
    push {lr}
    ldr r0, .L0804CDA4 @ =0x0200006C
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L0804CDA4: .4byte 0x0200006C
    func_end func_0804CD94

    thumb_func_start func_0804CDA8
func_0804CDA8: @ 0x0804CDA8
    ldr r0, .L0804CDB4 @ =0x0200006C
    ldr r1, [r0]
    movs r0, #0
    str r0, [r1, #0x4c]
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804CDB4: .4byte 0x0200006C
    func_end func_0804CDA8

    thumb_func_start func_0804CDB8
func_0804CDB8: @ 0x0804CDB8
    ldr r0, .L0804CDC4 @ =0x0200006C
    ldr r1, [r0]
    movs r0, #1
    str r0, [r1, #0x4c]
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804CDC4: .4byte 0x0200006C
    func_end func_0804CDB8

    thumb_func_start func_0804CDC8
func_0804CDC8: @ 0x0804CDC8
    ldr r0, .L0804CDD4 @ =0x0200006C
    ldr r1, [r0]
    movs r0, #1
    str r0, [r1, #0x4c]
    bx lr
    .align 2, 0
.L0804CDD4: .4byte 0x0200006C
    func_end func_0804CDC8

    thumb_func_start func_0804CDD8
func_0804CDD8: @ 0x0804CDD8
    ldr r0, .L0804CDE4 @ =0x0200006C
    ldr r1, [r0]
    movs r0, #1
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804CDE4: .4byte 0x0200006C
    func_end func_0804CDD8

    thumb_func_start func_0804CDE8
func_0804CDE8: @ 0x0804CDE8
    ldr r2, .L0804CDF8 @ =0x0200006C
    ldr r2, [r2]
    movs r3, #0
    strh r0, [r2, #0x32]
    strh r1, [r2, #0x3a]
    adds r2, #0x29
    strb r3, [r2]
    bx lr
    .align 2, 0
.L0804CDF8: .4byte 0x0200006C
    func_end func_0804CDE8

    thumb_func_start func_0804CDFC
func_0804CDFC: @ 0x0804CDFC
    ldr r2, .L0804CE0C @ =0x0200006C
    ldr r2, [r2]
    strh r0, [r2, #0x32]
    strh r1, [r2, #0x3a]
    adds r2, #0x29
    movs r0, #1
    strb r0, [r2]
    bx lr
    .align 2, 0
.L0804CE0C: .4byte 0x0200006C
    func_end func_0804CDFC

    thumb_func_start func_0804CE10
func_0804CE10: @ 0x0804CE10
    ldr r0, .L0804CE1C @ =0x0200006C
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804CE1C: .4byte 0x0200006C
    func_end func_0804CE10

    thumb_func_start func_0804CE20
func_0804CE20: @ 0x0804CE20
    ldr r0, .L0804CE2C @ =0x0200006C
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #0
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804CE2C: .4byte 0x0200006C
    func_end func_0804CE20

    thumb_func_start func_0804CE30
func_0804CE30: @ 0x0804CE30
    ldr r0, .L0804CE3C @ =0x0200006C
    ldr r0, [r0]
    adds r0, #0x2a
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804CE3C: .4byte 0x0200006C
    func_end func_0804CE30

    thumb_func_start func_0804CE40
func_0804CE40: @ 0x0804CE40
    ldr r0, .L0804CE4C @ =0x0200006C
    ldr r0, [r0]
    adds r0, #0x2a
    movs r1, #0
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804CE4C: .4byte 0x0200006C
    func_end func_0804CE40

    thumb_func_start func_0804CE50
func_0804CE50: @ 0x0804CE50
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #1
    beq .L0804CF40
    adds r0, r7, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0804CF40
    ldrh r1, [r7, #0x3a]
    lsls r0, r1, #0x10
    asrs r0, r0, #0x13
    lsls r2, r0, #5
    mov r8, r2
    cmp r2, #0
    bge .L0804CE82
    movs r1, #0
    mov r8, r1
.L0804CE82:
    adds r6, r0, #7
    cmp r6, #6
    ble .L0804CE8A
    movs r6, #6
.L0804CE8A:
    movs r0, #6
    subs r0, r0, r6
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #1
    mov sl, r1
    ldr r0, .L0804CEA8 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    blt .L0804CEAC
    cmp r0, #2
    bgt .L0804CEAC
    movs r4, #0
    b .L0804CEAE
    .align 2, 0
.L0804CEA8: .4byte 0x0203E02C
.L0804CEAC:
    movs r4, #0xf
.L0804CEAE:
    ldr r0, .L0804CF50 @ =gBg0Tm
    mov sb, r0
    movs r0, #0x9f
    str r0, [sp]
    mov r0, sb
    movs r1, #0x1e
    movs r2, #7
    movs r3, #0
    bl func_080669B4
    cmp r6, #0
    ble .L0804CF3A
    ldr r0, [r7, #0x4c]
    cmp r0, #0
    bne .L0804CF00
    ldr r0, .L0804CF54 @ =0x081D8C34
    add r0, sl
    mov r1, r8
    lsls r5, r1, #1
    lsls r1, r4, #1
    add r1, sb
    adds r5, r5, r1
    lsls r4, r6, #0x10
    lsrs r4, r4, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r5, #0
    movs r2, #0xf
    adds r3, r4, #0
    bl func_08066ACC
    movs r0, #0x80
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0xf
    adds r2, r4, #0
    movs r3, #2
    bl func_0806693C
.L0804CF00:
    ldr r0, [r7, #0x50]
    cmp r0, #0
    bne .L0804CF3A
    ldr r0, .L0804CF58 @ =0x081D8CE8
    add r0, sl
    mov r2, r8
    lsls r5, r2, #1
    movs r2, #0xf
    lsls r1, r2, #1
    add r1, sb
    adds r5, r5, r1
    lsls r4, r6, #0x10
    lsrs r4, r4, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r5, #0
    adds r3, r4, #0
    bl func_08066ACC
    movs r0, #0x80
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0xf
    adds r2, r4, #0
    movs r3, #3
    bl func_0806693C
.L0804CF3A:
    movs r0, #1
    bl EnableBgSync
.L0804CF40:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804CF50: .4byte gBg0Tm
.L0804CF54: .4byte 0x081D8C34
.L0804CF58: .4byte 0x081D8CE8
    func_end func_0804CE50

    thumb_func_start func_0804CF5C
func_0804CF5C: @ 0x0804CF5C
    push {r4, r5, r6, lr}
    sub sp, #0x10
    ldr r4, .L0804D050 @ =gDispIo
    movs r2, #8
    rsbs r2, r2, #0
    ldrb r0, [r4]
    ands r2, r0
    movs r5, #1
    ldrb r0, [r4, #1]
    orrs r0, r5
    movs r6, #2
    orrs r0, r6
    movs r1, #4
    orrs r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r4, #1]
    movs r0, #0x41
    rsbs r0, r0, #0
    ands r2, r0
    strb r2, [r4]
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
    movs r0, #0
    movs r1, #0
    bl SetBgChrOffset
    movs r0, #1
    movs r1, #0
    bl SetBgChrOffset
    movs r0, #2
    movs r1, #0
    bl SetBgChrOffset
    movs r1, #0x80
    lsls r1, r1, #8
    movs r0, #3
    bl SetBgChrOffset
    movs r1, #0xc0
    lsls r1, r1, #7
    movs r0, #0
    bl  SetBgTilemapOffset
    movs r1, #0xd0
    lsls r1, r1, #7
    movs r0, #1
    bl  SetBgTilemapOffset
    movs r1, #0xe0
    lsls r1, r1, #7
    movs r0, #2
    bl  SetBgTilemapOffset
    movs r1, #0xf0
    lsls r1, r1, #7
    movs r0, #3
    bl  SetBgTilemapOffset
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r4, #0xc]
    ands r0, r2
    strb r0, [r4, #0xc]
    adds r0, r1, #0
    ldrb r2, [r4, #0x10]
    ands r0, r2
    orrs r0, r5
    strb r0, [r4, #0x10]
    ldrb r0, [r4, #0x14]
    ands r1, r0
    orrs r1, r6
    strb r1, [r4, #0x14]
    movs r0, #3
    ldrb r1, [r4, #0x18]
    orrs r0, r1
    strb r0, [r4, #0x18]
    movs r4, #0
    str r4, [sp]
    ldr r1, .L0804D054 @ =gBg0Tm
    ldr r5, .L0804D058 @ =0x01000200
    mov r0, sp
    adds r2, r5, #0
    bl CpuFastSet
    str r4, [sp, #4]
    add r0, sp, #4
    ldr r1, .L0804D05C @ =gBg1Tm
    adds r2, r5, #0
    bl CpuFastSet
    str r4, [sp, #8]
    add r0, sp, #8
    ldr r6, .L0804D060 @ =gBg2Tm
    adds r1, r6, #0
    adds r2, r5, #0
    bl CpuFastSet
    bl func_080554F0
    cmp r0, #0
    bne .L0804D064
    bl func_0804D0B8
    b .L0804D070
    .align 2, 0
.L0804D050: .4byte gDispIo
.L0804D054: .4byte gBg0Tm
.L0804D058: .4byte 0x01000200
.L0804D05C: .4byte gBg1Tm
.L0804D060: .4byte gBg2Tm
.L0804D064:
    str r4, [sp, #0xc]
    add r0, sp, #0xc
    adds r1, r6, #0
    adds r2, r5, #0
    bl CpuFastSet
.L0804D070:
    bl func_0804D1D4
    bl EnablePalSync
    movs r0, #1
    bl EnableBgSync
    movs r0, #2
    bl EnableBgSync
    movs r0, #4
    bl EnableBgSync
    ldr r3, .L0804D0B4 @ =gDispIo
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
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804D0B4: .4byte gDispIo
    func_end func_0804CF5C

    thumb_func_start func_0804D0B8
func_0804D0B8: @ 0x0804D0B8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r4, .L0804D0F8 @ =0x0201FAD0
    ldr r2, .L0804D0FC @ =0x0203E028
    movs r0, #0
    ldrsh r1, [r2, r0]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #3
    ldr r3, .L0804D100 @ =0x08FC0008
    adds r5, r0, r3
    movs r6, #2
    ldrsh r1, [r2, r6]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r3, r0, r3
    ldr r0, .L0804D104 @ =0x0203E02C
    movs r7, #0
    ldrsh r1, [r0, r7]
    mov r8, r2
    adds r6, r0, #0
    cmp r1, #3
    bgt .L0804D10C
    cmp r1, #1
    bge .L0804D130
    cmp r1, #0
    beq .L0804D114
    ldr r0, .L0804D108 @ =0x020145C8
    b .L0804D142
    .align 2, 0
.L0804D0F8: .4byte 0x0201FAD0
.L0804D0FC: .4byte 0x0203E028
.L0804D100: .4byte 0x08FC0008
.L0804D104: .4byte 0x0203E02C
.L0804D108: .4byte 0x020145C8
.L0804D10C:
    ldr r7, .L0804D128 @ =0x020145C8
    mov ip, r7
    cmp r1, #4
    bne .L0804D144
.L0804D114:
    ldr r0, .L0804D12C @ =0x0200003C
    ldr r1, .L0804D128 @ =0x020145C8
    str r1, [r0]
    movs r7, #0x80
    lsls r7, r7, #5
    adds r2, r1, r7
    str r2, [r0, #4]
    mov ip, r1
    b .L0804D144
    .align 2, 0
.L0804D128: .4byte 0x020145C8
.L0804D12C: .4byte 0x0200003C
.L0804D130:
    ldr r0, .L0804D1B4 @ =0x0200003C
    ldr r1, .L0804D1B8 @ =0x02014DC8
    str r1, [r0]
    movs r7, #0x80
    lsls r7, r7, #5
    adds r2, r1, r7
    str r2, [r0, #4]
    ldr r0, .L0804D1BC @ =0xFFFFF800
    adds r0, r0, r1
.L0804D142:
    mov ip, r0
.L0804D144:
    ldr r0, .L0804D1C0 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    ldr r0, .L0804D1C4 @ =0x0200004C
    ldr r1, [r5, #0x10]
    str r1, [r0]
    ldr r1, [r3, #0x10]
    str r1, [r0, #4]
    ldr r2, .L0804D1C8 @ =0x02000044
    ldr r1, .L0804D1CC @ =0x08B9B29C
    movs r3, #0
    ldrsh r0, [r6, r3]
    lsls r0, r0, #3
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r2]
    movs r7, #0
    ldrsh r0, [r6, r7]
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r2, #4]
    mov r1, r8
    ldrh r0, [r1]
    movs r2, #0
    strh r0, [r4]
    movs r0, #4
    strh r0, [r4, #2]
    movs r1, #0xa0
    lsls r1, r1, #2
    strh r1, [r4, #4]
    mov r3, r8
    ldrh r0, [r3, #2]
    strh r0, [r4, #6]
    movs r0, #5
    strh r0, [r4, #8]
    strh r1, [r4, #0xa]
    ldrh r0, [r6]
    strh r0, [r4, #0xc]
    movs r0, #2
    strh r0, [r4, #0xe]
    str r2, [r4, #0x1c]
    mov r6, ip
    str r6, [r4, #0x20]
    ldr r0, .L0804D1D0 @ =0x0203E00E
    ldrh r0, [r0]
    strh r0, [r4, #0x10]
    adds r0, r4, #0
    bl func_08054F30
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804D1B4: .4byte 0x0200003C
.L0804D1B8: .4byte 0x02014DC8
.L0804D1BC: .4byte 0xFFFFF800
.L0804D1C0: .4byte gPlaySt
.L0804D1C4: .4byte 0x0200004C
.L0804D1C8: .4byte 0x02000044
.L0804D1CC: .4byte 0x08B9B29C
.L0804D1D0: .4byte 0x0203E00E
    func_end func_0804D0B8

    thumb_func_start func_0804D1D4
func_0804D1D4: @ 0x0804D1D4
    push {r4, r5, r6, lr}
    sub sp, #8
    ldr r4, .L0804D214 @ =0x08194674
    adds r0, r4, #0
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r0, r4, #0
    movs r1, #0x60
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0804D218 @ =0x02017648
    ldr r1, .L0804D21C @ =0x06001400
    movs r2, #0xa0
    movs r3, #2
    bl InitTextFont
    bl SetTextDrawNoClear
    ldr r0, .L0804D220 @ =0x081D88B4
    ldr r1, .L0804D224 @ =0x06001000
    bl LZ77UnComp16bit
    ldr r0, .L0804D228 @ =0x0203E010
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804D230
    ldr r5, .L0804D22C @ =0x08B9A998
    b .L0804D23E
    .align 2, 0
.L0804D214: .4byte 0x08194674
.L0804D218: .4byte 0x02017648
.L0804D21C: .4byte 0x06001400
.L0804D220: .4byte 0x081D88B4
.L0804D224: .4byte 0x06001000
.L0804D228: .4byte 0x0203E010
.L0804D22C: .4byte 0x08B9A998
.L0804D230:
    ldr r0, .L0804D278 @ =0x0203E094
    ldr r0, [r0]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r5, r0, #0
.L0804D23E:
    ldr r4, .L0804D27C @ =0x02017660
    adds r0, r4, #0
    movs r1, #6
    bl InitText
    movs r0, #0x30
    adds r1, r5, #0
    bl GetStringTextCenteredPos
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_SetCursor
    ldr r0, .L0804D280 @ =0x081D8ABC
    ldr r1, .L0804D284 @ =0x06001400
    bl LZ77UnComp16bit
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_DrawString
    ldr r0, .L0804D288 @ =0x0203E010
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804D290
    ldr r5, .L0804D28C @ =0x08B9A998
    b .L0804D29E
    .align 2, 0
.L0804D278: .4byte 0x0203E094
.L0804D27C: .4byte 0x02017660
.L0804D280: .4byte 0x081D8ABC
.L0804D284: .4byte 0x06001400
.L0804D288: .4byte 0x0203E010
.L0804D28C: .4byte 0x08B9A998
.L0804D290:
    ldr r0, .L0804D2D8 @ =0x0203E094
    ldr r0, [r0]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemName
    adds r5, r0, #0
.L0804D29E:
    ldr r4, .L0804D2DC @ =0x02017670
    adds r0, r4, #0
    movs r1, #7
    bl InitText
    movs r0, #0x38
    adds r1, r5, #0
    bl GetStringTextCenteredPos
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_SetCursor
    ldr r0, .L0804D2E0 @ =0x081D8B0C
    ldr r1, .L0804D2E4 @ =0x06001580
    bl LZ77UnComp16bit
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_DrawString
    ldr r0, .L0804D2E8 @ =0x0203E010
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804D2F0
    ldr r5, .L0804D2EC @ =0x08B9A998
    b .L0804D2FE
    .align 2, 0
.L0804D2D8: .4byte 0x0203E094
.L0804D2DC: .4byte 0x02017670
.L0804D2E0: .4byte 0x081D8B0C
.L0804D2E4: .4byte 0x06001580
.L0804D2E8: .4byte 0x0203E010
.L0804D2EC: .4byte 0x08B9A998
.L0804D2F0:
    ldr r0, .L0804D338 @ =0x0203E098
    ldr r0, [r0]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r5, r0, #0
.L0804D2FE:
    ldr r4, .L0804D33C @ =0x02017678
    adds r0, r4, #0
    movs r1, #6
    bl InitText
    movs r0, #0x30
    adds r1, r5, #0
    bl GetStringTextCenteredPos
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_SetCursor
    ldr r0, .L0804D340 @ =0x081D8B78
    ldr r1, .L0804D344 @ =0x06001740
    bl LZ77UnComp16bit
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_DrawString
    ldr r0, .L0804D348 @ =0x0203E010
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804D350
    ldr r5, .L0804D34C @ =0x08B9A998
    b .L0804D35E
    .align 2, 0
.L0804D338: .4byte 0x0203E098
.L0804D33C: .4byte 0x02017678
.L0804D340: .4byte 0x081D8B78
.L0804D344: .4byte 0x06001740
.L0804D348: .4byte 0x0203E010
.L0804D34C: .4byte 0x08B9A998
.L0804D350:
    ldr r0, .L0804D414 @ =0x0203E098
    ldr r0, [r0]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemName
    adds r5, r0, #0
.L0804D35E:
    ldr r4, .L0804D418 @ =0x02017668
    adds r0, r4, #0
    movs r1, #7
    bl InitText
    movs r0, #0x38
    adds r1, r5, #0
    bl GetStringTextCenteredPos
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_SetCursor
    ldr r0, .L0804D41C @ =0x081D8BC8
    ldr r1, .L0804D420 @ =0x060018C0
    bl LZ77UnComp16bit
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_DrawString
    ldr r4, .L0804D424 @ =gBg0Tm
    adds r0, r4, #0
    movs r1, #0x9f
    bl TmFill
    ldr r0, .L0804D428 @ =0x081D8F50
    adds r6, r4, #0
    adds r6, #0x3c
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r6, #0
    movs r2, #2
    movs r3, #0x14
    bl func_08066ACC
    adds r4, #0x3e
    movs r5, #0x80
    str r5, [sp]
    adds r0, r4, #0
    movs r1, #1
    movs r2, #0x14
    movs r3, #2
    bl func_0806693C
    str r5, [sp]
    adds r0, r6, #0
    movs r1, #1
    movs r2, #0x14
    movs r3, #3
    bl func_0806693C
    movs r0, #1
    bl EnableBgSync
    ldr r6, .L0804D42C @ =0x0203E020
    movs r1, #0
    ldrsh r0, [r6, r1]
    lsls r0, r0, #5
    ldr r5, .L0804D430 @ =0x081D8FA0
    adds r0, r0, r5
    ldr r4, .L0804D434 @ =0x020228A0
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    movs r1, #2
    ldrsh r0, [r6, r1]
    lsls r0, r0, #5
    adds r0, r0, r5
    adds r4, #0x20
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    ldr r1, .L0804D438 @ =0x02000038
    movs r0, #0
    strh r0, [r1]
    strh r0, [r1, #2]
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804D414: .4byte 0x0203E098
.L0804D418: .4byte 0x02017668
.L0804D41C: .4byte 0x081D8BC8
.L0804D420: .4byte 0x060018C0
.L0804D424: .4byte gBg0Tm
.L0804D428: .4byte 0x081D8F50
.L0804D42C: .4byte 0x0203E020
.L0804D430: .4byte 0x081D8FA0
.L0804D434: .4byte 0x020228A0
.L0804D438: .4byte 0x02000038
    func_end func_0804D1D4

    thumb_func_start func_0804D43C
func_0804D43C: @ 0x0804D43C
    push {r4, r5, lr}
    ldr r0, .L0804D454 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #4
    bhi .L0804D47C
    lsls r0, r0, #2
    ldr r1, .L0804D458 @ =.L0804D45C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0804D454: .4byte 0x0203E02C
.L0804D458: .4byte .L0804D45C
.L0804D45C: @ jump table
    .4byte .L0804D4C4 @ case 0
    .4byte .L0804D470 @ case 1
    .4byte .L0804D47C @ case 2
    .4byte .L0804D4C4 @ case 3
    .4byte .L0804D4C4 @ case 4
.L0804D470:
    ldr r0, .L0804D478 @ =0x0203E00C
    movs r2, #0
    ldrsh r0, [r0, r2]
    b .L0804D4C6
    .align 2, 0
.L0804D478: .4byte 0x0203E00C
.L0804D47C:
    movs r1, #0
    movs r5, #0
    ldr r0, .L0804D4AC @ =0x0203E008
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    bne .L0804D4A4
    ldr r4, .L0804D4B0 @ =0x0203E09C
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    bl func_080793F8
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    ldrb r0, [r4, #1]
    ldrb r1, [r4]
    bl func_080793F8
    lsls r0, r0, #0x18
    asrs r1, r0, #0x18
.L0804D4A4:
    cmp r5, #1
    bne .L0804D4B4
    movs r0, #0
    b .L0804D4C6
    .align 2, 0
.L0804D4AC: .4byte 0x0203E008
.L0804D4B0: .4byte 0x0203E09C
.L0804D4B4:
    cmp r1, #1
    beq .L0804D4C4
    ldr r0, .L0804D4C0 @ =0x0203E00C
    movs r1, #0
    ldrsh r0, [r0, r1]
    b .L0804D4C6
    .align 2, 0
.L0804D4C0: .4byte 0x0203E00C
.L0804D4C4:
    movs r0, #1
.L0804D4C6:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0804D43C

    thumb_func_start func_0804D4CC
func_0804D4CC: @ 0x0804D4CC
    ldr r1, .L0804D528 @ =0x02017728
    movs r0, #0
    str r0, [r1]
    ldr r1, .L0804D52C @ =0x0201772C
    str r0, [r1]
    ldr r1, .L0804D530 @ =0x02017730
    str r0, [r1]
    ldr r1, .L0804D534 @ =0x02017738
    str r0, [r1]
    ldr r1, .L0804D538 @ =0x0201773C
    str r0, [r1]
    ldr r1, .L0804D53C @ =0x02017740
    str r0, [r1]
    ldr r1, .L0804D540 @ =0x02017748
    str r0, [r1]
    ldr r1, .L0804D544 @ =0x0201774C
    str r0, [r1]
    ldr r1, .L0804D548 @ =0x02017750
    str r0, [r1]
    ldr r1, .L0804D54C @ =0x02017754
    str r0, [r1]
    ldr r1, .L0804D550 @ =0x02017758
    str r0, [r1]
    ldr r1, .L0804D554 @ =0x0201775C
    str r0, [r1]
    ldr r1, .L0804D558 @ =0x02017760
    strh r0, [r1]
    strh r0, [r1, #2]
    ldr r1, .L0804D55C @ =0x02017764
    strh r0, [r1]
    strh r0, [r1, #2]
    ldr r1, .L0804D560 @ =0x02017768
    strh r0, [r1]
    strh r0, [r1, #2]
    ldr r1, .L0804D564 @ =0x02017780
    strh r0, [r1]
    strh r0, [r1, #2]
    ldr r1, .L0804D568 @ =0x0201776C
    str r0, [r1]
    str r0, [r1, #4]
    ldr r1, .L0804D56C @ =0x02017778
    str r0, [r1]
    ldr r1, .L0804D570 @ =0x0201777C
    str r0, [r1]
    bx lr
    .align 2, 0
.L0804D528: .4byte 0x02017728
.L0804D52C: .4byte 0x0201772C
.L0804D530: .4byte 0x02017730
.L0804D534: .4byte 0x02017738
.L0804D538: .4byte 0x0201773C
.L0804D53C: .4byte 0x02017740
.L0804D540: .4byte 0x02017748
.L0804D544: .4byte 0x0201774C
.L0804D548: .4byte 0x02017750
.L0804D54C: .4byte 0x02017754
.L0804D550: .4byte 0x02017758
.L0804D554: .4byte 0x0201775C
.L0804D558: .4byte 0x02017760
.L0804D55C: .4byte 0x02017764
.L0804D560: .4byte 0x02017768
.L0804D564: .4byte 0x02017780
.L0804D568: .4byte 0x0201776C
.L0804D56C: .4byte 0x02017778
.L0804D570: .4byte 0x0201777C
    func_end func_0804D4CC
