    .include "asm_prelude.inc"

    thumb_func_start CheckEkrHitDone
CheckEkrHitDone: @ 0x0804D574
    ldr r0, .L0804D588 @ =0x02017728
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804D590
    ldr r0, .L0804D58C @ =0x0201772C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804D590
    movs r0, #1
    b .L0804D592
    .align 2, 0
.L0804D588: .4byte 0x02017728
.L0804D58C: .4byte 0x0201772C
.L0804D590:
    movs r0, #0
.L0804D592:
    bx lr
    func_end CheckEkrHitDone

    thumb_func_start func_0804D594
func_0804D594: @ 0x0804D594
    ldr r1, .L0804D5A0 @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #0
    ldrsh r0, [r0, r1]
    bx lr
    .align 2, 0
.L0804D5A0: .4byte 0x02017780
    func_end func_0804D594

    thumb_func_start func_0804D5A4
func_0804D5A4: @ 0x0804D5A4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r1, .L0804D5D4 @ =0x02017728
    ldr r0, [r1]
    cmp r0, #0
    bne .L0804D664
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804D5D8 @ =0x08B9ABC4
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r4, [r6, #0x64]
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804D5E0
    ldr r0, .L0804D5DC @ =0x02000000
    ldr r1, [r0, #8]
    str r1, [r6, #0x5c]
    ldr r0, [r0]
    b .L0804D5E8
    .align 2, 0
.L0804D5D4: .4byte 0x02017728
.L0804D5D8: .4byte 0x08B9ABC4
.L0804D5DC: .4byte 0x02000000
.L0804D5E0:
    ldr r0, .L0804D63C @ =0x02000000
    ldr r1, [r0]
    str r1, [r6, #0x5c]
    ldr r0, [r0, #8]
.L0804D5E8:
    str r0, [r6, #0x60]
    ldr r4, .L0804D640 @ =0x0203E05E
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r5, [r0, r1]
    adds r4, r5, #1
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r5, r5, #1
    adds r5, r5, r0
    adds r0, r5, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [r6, #0x4c]
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r4, r4, #0x10
    asrs r4, r4, #0xf
    adds r4, r4, r0
    adds r0, r4, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [r6, #0x50]
    ldr r1, [r6, #0x4c]
    cmp r1, r0
    ble .L0804D644
    movs r0, #1
    rsbs r0, r0, #0
    b .L0804D646
    .align 2, 0
.L0804D63C: .4byte 0x02000000
.L0804D640: .4byte 0x0203E05E
.L0804D644:
    movs r0, #1
.L0804D646:
    str r0, [r6, #0x48]
    movs r1, #0
    strh r1, [r6, #0x2c]
    ldr r0, [r6, #0x4c]
    strh r0, [r6, #0x2e]
    str r1, [r6, #0x54]
    str r1, [r6, #0x58]
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804D66C @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #1
    strh r1, [r0]
.L0804D664:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804D66C: .4byte 0x02017780
    func_end func_0804D5A4

    thumb_func_start func_0804D670
func_0804D670: @ 0x0804D670
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r4, .L0804D714 @ =0x02000000
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r4
    ldr r6, [r0]
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r7, [r0]
    ldr r1, [r5, #0x58]
    cmp r1, #0
    bne .L0804D6D2
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    bne .L0804D6D2
    strh r1, [r5, #0x2c]
    ldr r0, [r5, #0x48]
    ldrh r1, [r5, #0x2e]
    adds r0, r1, r0
    strh r0, [r5, #0x2e]
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804D718 @ =0x0203E0B8
    lsls r0, r0, #1
    adds r0, r0, r1
    ldr r1, [r5, #0x48]
    ldrh r2, [r0]
    adds r1, r2, r1
    strh r1, [r0]
    movs r0, #0x2e
    ldrsh r1, [r5, r0]
    ldr r0, [r5, #0x50]
    cmp r1, r0
    bne .L0804D6D2
    movs r0, #1
    str r0, [r5, #0x58]
.L0804D6D2:
    ldr r1, [r5, #0x54]
    cmp r1, #0x1e
    bne .L0804D774
    ldr r0, [r5, #0x58]
    cmp r0, #1
    bne .L0804D774
    ldr r4, .L0804D71C @ =0x0203E05E
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r1, [r0]
    adds r1, #1
    movs r4, #0
    strh r1, [r0]
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804D720 @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r4, [r0]
    ldr r0, [r5, #0x50]
    cmp r0, #0
    bne .L0804D768
    bl func_0804B1A0
    cmp r0, #1
    bne .L0804D724
    movs r0, #0
    b .L0804D738
    .align 2, 0
.L0804D714: .4byte 0x02000000
.L0804D718: .4byte 0x0203E0B8
.L0804D71C: .4byte 0x0203E05E
.L0804D720: .4byte 0x02017780
.L0804D724:
    ldr r4, .L0804D748 @ =0x0203E09C
    adds r0, r6, #0
    bl GetAnimPosition
    adds r0, r0, r4
    ldrb r0, [r0]
    bl func_08079514
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L0804D738:
    cmp r0, #1
    bne .L0804D74C
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_0804E018
    b .L0804D768
    .align 2, 0
.L0804D748: .4byte 0x0203E09C
.L0804D74C:
    bl func_08055544
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_0804E1F4
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804D770 @ =0x0203E010
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #0
    strh r1, [r0]
.L0804D768:
    adds r0, r5, #0
    bl Proc_Break
    b .L0804D780
    .align 2, 0
.L0804D770: .4byte 0x0203E010
.L0804D774:
    adds r0, r1, #1
    str r0, [r5, #0x54]
    cmp r0, #0x1d
    bls .L0804D780
    movs r0, #0x1e
    str r0, [r5, #0x54]
.L0804D780:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0804D670

    thumb_func_start func_0804D788
func_0804D788: @ 0x0804D788
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L0804D7D0 @ =0x0201774C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804D820
    ldr r0, .L0804D7D4 @ =0x0201772C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804D820
    strh r0, [r5, #0x2c]
    movs r0, #1
    strh r0, [r5, #0x2e]
    ldr r0, [r5, #0x64]
    bl GetAnimAnotherSide
    adds r4, r0, #0
    bl GetAnimNextRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl func_0805471C
    cmp r0, #1
    bne .L0804D81A
    ldr r0, .L0804D7D8 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #4
    bhi .L0804D81A
    lsls r0, r0, #2
    ldr r1, .L0804D7DC @ =.L0804D7E0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0804D7D0: .4byte 0x0201774C
.L0804D7D4: .4byte 0x0201772C
.L0804D7D8: .4byte 0x0203E02C
.L0804D7DC: .4byte .L0804D7E0
.L0804D7E0: @ jump table
    .4byte .L0804D7F4 @ case 0
    .4byte .L0804D7F4 @ case 1
    .4byte .L0804D808 @ case 2
    .4byte .L0804D7F4 @ case 3
    .4byte .L0804D7F4 @ case 4
.L0804D7F4:
    movs r0, #0x10
    strh r0, [r5, #0x2e]
    adds r0, r4, #0
    bl GetAnimAnotherSide
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L0804D81A
.L0804D808:
    movs r0, #0x14
    strh r0, [r5, #0x2e]
    adds r0, r4, #0
    bl GetAnimAnotherSide
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0804D81A:
    adds r0, r5, #0
    bl Proc_Break
.L0804D820:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0804D788

    thumb_func_start func_0804D828
func_0804D828: @ 0x0804D828
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    movs r3, #0x2e
    ldrsh r0, [r2, r3]
    subs r0, #4
    cmp r1, r0
    bne .L0804D84E
    ldr r0, [r2, #0x64]
    bl GetAnimAnotherSide
    movs r0, #4
    bl EnableBgSync
    b .L0804D864
.L0804D84E:
    movs r3, #0x2e
    ldrsh r0, [r2, r3]
    cmp r1, r0
    bne .L0804D864
    ldr r1, .L0804D868 @ =0x02017728
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r2, #0
    bl Proc_Break
.L0804D864:
    pop {r0}
    bx r0
    .align 2, 0
.L0804D868: .4byte 0x02017728
    func_end func_0804D828

    thumb_func_start func_0804D86C
func_0804D86C: @ 0x0804D86C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r1, .L0804D8A4 @ =0x02017728
    ldr r0, [r1]
    cmp r0, #0
    bne .L0804D93E
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804D8A8 @ =0x08B9ABEC
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    adds r0, r4, #0
    bl GetAnimAnotherSide
    str r0, [r6, #0x64]
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804D8B0
    ldr r0, .L0804D8AC @ =0x02000000
    ldr r1, [r0, #8]
    str r1, [r6, #0x5c]
    ldr r0, [r0]
    b .L0804D8B8
    .align 2, 0
.L0804D8A4: .4byte 0x02017728
.L0804D8A8: .4byte 0x08B9ABEC
.L0804D8AC: .4byte 0x02000000
.L0804D8B0:
    ldr r0, .L0804D90C @ =0x02000000
    ldr r1, [r0]
    str r1, [r6, #0x5c]
    ldr r0, [r0, #8]
.L0804D8B8:
    str r0, [r6, #0x60]
    ldr r4, .L0804D910 @ =0x0203E05E
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r5, [r0, r1]
    adds r4, r5, #1
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r5, r5, #1
    adds r5, r5, r0
    adds r0, r5, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [r6, #0x4c]
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r4, r4, #0x10
    asrs r4, r4, #0xf
    adds r4, r4, r0
    adds r0, r4, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [r6, #0x50]
    ldr r1, [r6, #0x4c]
    cmp r1, r0
    ble .L0804D914
    movs r0, #1
    rsbs r0, r0, #0
    b .L0804D916
    .align 2, 0
.L0804D90C: .4byte 0x02000000
.L0804D910: .4byte 0x0203E05E
.L0804D914:
    movs r0, #1
.L0804D916:
    str r0, [r6, #0x48]
    adds r0, r6, #0
    adds r0, #0x29
    movs r1, #0
    strb r1, [r0]
    strh r1, [r6, #0x2c]
    ldr r0, [r6, #0x4c]
    strh r0, [r6, #0x2e]
    str r1, [r6, #0x54]
    str r1, [r6, #0x58]
    ldr r0, .L0804D944 @ =0x02017750
    str r1, [r0]
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804D948 @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #1
    strh r1, [r0]
.L0804D93E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804D944: .4byte 0x02017750
.L0804D948: .4byte 0x02017780
    func_end func_0804D86C

    thumb_func_start func_0804D94C
func_0804D94C: @ 0x0804D94C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r1, [r5, #0x58]
    cmp r1, #0
    bne .L0804D99C
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    bne .L0804D99C
    strh r1, [r5, #0x2c]
    ldr r0, [r5, #0x48]
    ldrh r1, [r5, #0x2e]
    adds r0, r1, r0
    strh r0, [r5, #0x2e]
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804D9E8 @ =0x0203E0B8
    lsls r0, r0, #1
    adds r0, r0, r1
    ldr r1, [r5, #0x48]
    ldrh r2, [r0]
    adds r1, r2, r1
    strh r1, [r0]
    movs r0, #0x2e
    ldrsh r1, [r5, r0]
    ldr r0, [r5, #0x50]
    cmp r1, r0
    bne .L0804D99C
    movs r0, #1
    str r0, [r5, #0x58]
.L0804D99C:
    ldr r0, [r5, #0x54]
    cmp r0, #0x54
    bne .L0804D9F8
    ldr r6, [r5, #0x58]
    cmp r6, #1
    bne .L0804D9F8
    ldr r4, .L0804D9EC @ =0x0203E05E
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r1, [r0]
    adds r1, #1
    movs r4, #0
    strh r1, [r0]
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804D9F0 @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r4, [r0]
    ldr r0, [r5, #0x50]
    cmp r0, #0
    bne .L0804D9D6
    adds r0, r5, #0
    adds r0, #0x29
    strb r6, [r0]
.L0804D9D6:
    strh r4, [r5, #0x2c]
    movs r0, #0xa
    strh r0, [r5, #0x2e]
    ldr r0, .L0804D9F4 @ =0x02017750
    str r6, [r0]
    adds r0, r5, #0
    bl Proc_Break
    b .L0804DA04
    .align 2, 0
.L0804D9E8: .4byte 0x0203E0B8
.L0804D9EC: .4byte 0x0203E05E
.L0804D9F0: .4byte 0x02017780
.L0804D9F4: .4byte 0x02017750
.L0804D9F8:
    adds r0, #1
    str r0, [r5, #0x54]
    cmp r0, #0x53
    bls .L0804DA04
    movs r0, #0x54
    str r0, [r5, #0x54]
.L0804DA04:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0804D94C

    thumb_func_start func_0804DA0C
func_0804DA0C: @ 0x0804DA0C
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r6, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0804DAA6
    ldr r4, .L0804DA88 @ =0x0203E05E
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r5, [r0, r1]
    adds r4, r5, #1
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    lsls r5, r5, #1
    adds r5, r5, r0
    adds r0, r5, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [r6, #0x4c]
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    lsls r4, r4, #0x10
    asrs r4, r4, #0xf
    adds r4, r4, r0
    adds r0, r4, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [r6, #0x50]
    strh r7, [r6, #0x2c]
    ldr r1, [r6, #0x4c]
    strh r1, [r6, #0x2e]
    str r7, [r6, #0x54]
    str r7, [r6, #0x58]
    cmp r1, r0
    bne .L0804DA78
    movs r0, #1
    str r0, [r6, #0x58]
.L0804DA78:
    ldr r1, [r6, #0x4c]
    ldr r0, [r6, #0x50]
    cmp r1, r0
    ble .L0804DA8C
    movs r0, #1
    rsbs r0, r0, #0
    b .L0804DA8E
    .align 2, 0
.L0804DA88: .4byte 0x0203E05E
.L0804DA8C:
    movs r0, #1
.L0804DA8E:
    str r0, [r6, #0x48]
    adds r0, r6, #0
    bl Proc_Break
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804DAAC @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #2
    strh r1, [r0]
.L0804DAA6:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DAAC: .4byte 0x02017780
    func_end func_0804DA0C

    thumb_func_start func_0804DAB0
func_0804DAB0: @ 0x0804DAB0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    ldr r4, .L0804DB88 @ =0x02000000
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r4
    ldr r7, [r0]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r4
    ldr r6, [r0]
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    mov r8, r0
    ldr r1, [r5, #0x58]
    cmp r1, #0
    bne .L0804DB42
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    bne .L0804DB42
    strh r1, [r5, #0x2c]
    ldr r0, [r5, #0x48]
    ldrh r1, [r5, #0x2e]
    adds r0, r1, r0
    strh r0, [r5, #0x2e]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804DB8C @ =0x0203E0B8
    lsls r0, r0, #1
    adds r0, r0, r1
    ldr r1, [r5, #0x48]
    ldrh r2, [r0]
    adds r1, r2, r1
    strh r1, [r0]
    ldr r4, .L0804DB90 @ =0x00000395
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    movs r0, #2
    ldrsh r1, [r7, r0]
    adds r0, r4, #0
    movs r2, #1
    bl func_080676E8
    movs r2, #0x2e
    ldrsh r1, [r5, r2]
    ldr r0, [r5, #0x50]
    cmp r1, r0
    bne .L0804DB42
    movs r0, #1
    str r0, [r5, #0x58]
.L0804DB42:
    ldr r1, [r5, #0x54]
    cmp r1, #0x1e
    bne .L0804DBEC
    ldr r0, [r5, #0x58]
    cmp r0, #1
    bne .L0804DBEC
    ldr r4, .L0804DB94 @ =0x0203E05E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r1, [r0]
    adds r1, #1
    movs r4, #0
    strh r1, [r0]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804DB98 @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r4, [r0]
    adds r0, r5, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804DBE0
    bl func_0804B1A0
    cmp r0, #1
    bne .L0804DB9C
    movs r0, #0
    b .L0804DBB0
    .align 2, 0
.L0804DB88: .4byte 0x02000000
.L0804DB8C: .4byte 0x0203E0B8
.L0804DB90: .4byte 0x00000395
.L0804DB94: .4byte 0x0203E05E
.L0804DB98: .4byte 0x02017780
.L0804DB9C:
    ldr r4, .L0804DBC0 @ =0x0203E09C
    adds r0, r6, #0
    bl GetAnimPosition
    adds r0, r0, r4
    ldrb r0, [r0]
    bl func_08079514
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L0804DBB0:
    cmp r0, #1
    bne .L0804DBC4
    adds r0, r6, #0
    mov r1, r8
    bl func_0804E018
    b .L0804DBE0
    .align 2, 0
.L0804DBC0: .4byte 0x0203E09C
.L0804DBC4:
    bl func_08055544
    adds r0, r6, #0
    mov r1, r8
    bl func_0804E1F4
    ldr r0, [r5, #0x60]
    bl GetAnimPosition
    ldr r1, .L0804DBE8 @ =0x0203E010
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #0
    strh r1, [r0]
.L0804DBE0:
    adds r0, r5, #0
    bl Proc_Break
    b .L0804DBF8
    .align 2, 0
.L0804DBE8: .4byte 0x0203E010
.L0804DBEC:
    adds r0, r1, #1
    str r0, [r5, #0x54]
    cmp r0, #0x1d
    bls .L0804DBF8
    movs r0, #0x1e
    str r0, [r5, #0x54]
.L0804DBF8:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0804DAB0

    thumb_func_start func_0804DC04
func_0804DC04: @ 0x0804DC04
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r1, .L0804DC34 @ =0x02017728
    ldr r5, [r1]
    cmp r5, #0
    bne .L0804DC72
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804DC38 @ =0x08B9AC24
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    strh r5, [r4, #0x2c]
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804DC40
    ldr r0, .L0804DC3C @ =0x02000000
    ldr r1, [r0, #8]
    str r1, [r4, #0x5c]
    ldr r0, [r0]
    b .L0804DC48
    .align 2, 0
.L0804DC34: .4byte 0x02017728
.L0804DC38: .4byte 0x08B9AC24
.L0804DC3C: .4byte 0x02000000
.L0804DC40:
    ldr r0, .L0804DC78 @ =0x02000000
    ldr r1, [r0]
    str r1, [r4, #0x5c]
    ldr r0, [r0, #8]
.L0804DC48:
    str r0, [r4, #0x60]
    ldr r0, [r4, #0x60]
    movs r1, #1
    bl func_08062480
    str r6, [r4, #0x64]
    adds r1, r4, #0
    adds r1, #0x29
    movs r0, #0
    strb r0, [r1]
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0xd7
    bl func_080675C8
    movs r0, #2
    ldrsh r1, [r6, r0]
    movs r0, #0xd7
    movs r2, #1
    bl func_080676E8
.L0804DC72:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DC78: .4byte 0x02000000
    func_end func_0804DC04

    thumb_func_start func_0804DC7C
func_0804DC7C: @ 0x0804DC7C
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x1e
    bne .L0804DC94
    adds r0, r1, #0
    bl Proc_Break
.L0804DC94:
    pop {r0}
    bx r0
    func_end func_0804DC7C

    thumb_func_start func_0804DC98
func_0804DC98: @ 0x0804DC98
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r1, .L0804DCC8 @ =0x02017728
    ldr r0, [r1]
    cmp r0, #0
    bne .L0804DD64
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804DCCC @ =0x08B9AC4C
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    adds r0, r7, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804DCD4
    ldr r0, .L0804DCD0 @ =0x02000000
    ldr r1, [r0, #8]
    str r1, [r6, #0x5c]
    ldr r0, [r0]
    b .L0804DCDC
    .align 2, 0
.L0804DCC8: .4byte 0x02017728
.L0804DCCC: .4byte 0x08B9AC4C
.L0804DCD0: .4byte 0x02000000
.L0804DCD4:
    ldr r0, .L0804DD34 @ =0x02000000
    ldr r1, [r0]
    str r1, [r6, #0x5c]
    ldr r0, [r0, #8]
.L0804DCDC:
    str r0, [r6, #0x60]
    ldr r4, .L0804DD38 @ =0x0203E05E
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r5, [r0, r1]
    adds r4, r5, #1
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r5, r5, #1
    adds r5, r5, r0
    adds r0, r5, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [r6, #0x4c]
    ldr r0, [r6, #0x60]
    bl GetAnimPosition
    lsls r4, r4, #0x10
    asrs r4, r4, #0xf
    adds r4, r4, r0
    adds r0, r4, #0
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    str r1, [r6, #0x50]
    movs r0, #0
    str r0, [r6, #0x54]
    str r0, [r6, #0x58]
    ldr r0, [r6, #0x4c]
    cmp r0, r1
    bne .L0804DD3C
    movs r0, #1
    str r0, [r6, #0x58]
    b .L0804DD4A
    .align 2, 0
.L0804DD34: .4byte 0x02000000
.L0804DD38: .4byte 0x0203E05E
.L0804DD3C:
    cmp r0, r1
    ble .L0804DD46
    movs r0, #1
    rsbs r0, r0, #0
    b .L0804DD48
.L0804DD46:
    movs r0, #1
.L0804DD48:
    str r0, [r6, #0x48]
.L0804DD4A:
    movs r0, #0
    strh r0, [r6, #0x2c]
    ldr r0, [r6, #0x4c]
    strh r0, [r6, #0x2e]
    str r7, [r6, #0x64]
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804DD6C @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #2
    strh r1, [r0]
.L0804DD64:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DD6C: .4byte 0x02017780
    func_end func_0804DC98

    thumb_func_start func_0804DD70
func_0804DD70: @ 0x0804DD70
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r6, [r5, #0x60]
    ldr r1, [r5, #0x58]
    cmp r1, #0
    bne .L0804DDCE
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    bne .L0804DDCE
    strh r1, [r5, #0x2c]
    ldr r0, [r5, #0x48]
    ldrh r1, [r5, #0x2e]
    adds r0, r1, r0
    strh r0, [r5, #0x2e]
    adds r0, r6, #0
    bl GetAnimPosition
    ldr r1, .L0804DE04 @ =0x0203E0B8
    lsls r0, r0, #1
    adds r0, r0, r1
    ldr r1, [r5, #0x48]
    ldrh r2, [r0]
    adds r1, r2, r1
    strh r1, [r0]
    ldr r4, .L0804DE08 @ =0x00000395
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    movs r0, #2
    ldrsh r1, [r6, r0]
    adds r0, r4, #0
    movs r2, #1
    bl func_080676E8
    movs r2, #0x2e
    ldrsh r1, [r5, r2]
    ldr r0, [r5, #0x50]
    cmp r1, r0
    bne .L0804DDCE
    movs r0, #1
    str r0, [r5, #0x58]
.L0804DDCE:
    ldr r1, [r5, #0x54]
    cmp r1, #0x1e
    bne .L0804DE14
    ldr r0, [r5, #0x58]
    cmp r0, #1
    bne .L0804DE14
    ldr r4, .L0804DE0C @ =0x0203E05E
    adds r0, r6, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r1, [r0]
    adds r1, #1
    movs r4, #0
    strh r1, [r0]
    adds r0, r6, #0
    bl GetAnimPosition
    ldr r1, .L0804DE10 @ =0x02017780
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r4, [r0]
    adds r0, r5, #0
    bl Proc_Break
    b .L0804DE20
    .align 2, 0
.L0804DE04: .4byte 0x0203E0B8
.L0804DE08: .4byte 0x00000395
.L0804DE0C: .4byte 0x0203E05E
.L0804DE10: .4byte 0x02017780
.L0804DE14:
    adds r0, r1, #1
    str r0, [r5, #0x54]
    cmp r0, #0x1d
    bls .L0804DE20
    movs r0, #0x1e
    str r0, [r5, #0x54]
.L0804DE20:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0804DD70

    thumb_func_start func_0804DE28
func_0804DE28: @ 0x0804DE28
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    ldr r1, .L0804DE74 @ =0x02017728
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0804DE78 @ =0x08B9AC74
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    str r6, [r4, #0x60]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r4, #0
    adds r0, #0x29
    mov r1, r8
    strb r1, [r0]
    str r5, [r4, #0x64]
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_08062480
    ldr r0, [r4, #0x5c]
    ldr r1, [r4, #0x60]
    bl func_0804DED0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DE74: .4byte 0x02017728
.L0804DE78: .4byte 0x08B9AC74
    func_end func_0804DE28

    thumb_func_start func_0804DE7C
func_0804DE7C: @ 0x0804DE7C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    cmp r0, #8
    bne .L0804DEC4
    ldr r6, .L0804DECC @ =0x0203E05E
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r6
    ldrh r1, [r0]
    adds r1, #1
    strh r1, [r0]
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804DEBE
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r6
    ldrh r1, [r0]
    adds r1, #1
    strh r1, [r0]
.L0804DEBE:
    adds r0, r4, #0
    bl Proc_Break
.L0804DEC4:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DECC: .4byte 0x0203E05E
    func_end func_0804DE7C

    thumb_func_start func_0804DED0
func_0804DED0: @ 0x0804DED0
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804DEF0 @ =0x08B9AC9C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    str r5, [r0, #0x60]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DEF0: .4byte 0x08B9AC9C
    func_end func_0804DED0

    thumb_func_start func_0804DEF4
func_0804DEF4: @ 0x0804DEF4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    ldr r0, [r7, #0x5c]
    mov r8, r0
    ldr r1, [r7, #0x60]
    mov sb, r1
    ldr r4, .L0804DF50 @ =0x081D7EE4
    movs r2, #0x2c
    ldrsh r0, [r7, r2]
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0804DF5C
    mov r0, r8
    bl GetAnimPosition
    ldr r5, .L0804DF54 @ =0x02000028
    lsls r0, r0, #1
    adds r0, r0, r5
    ldr r4, .L0804DF58 @ =0x0201FB00
    ldrh r0, [r0]
    ldrh r1, [r4]
    subs r0, r0, r1
    mov r2, r8
    strh r0, [r2, #2]
    ldr r0, [r7, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r5
    ldrh r0, [r0]
    ldrh r4, [r4]
    subs r0, r0, r4
    mov r1, sb
    strh r0, [r1, #2]
    adds r0, r7, #0
    bl Proc_Break
    b .L0804DFBC
    .align 2, 0
.L0804DF50: .4byte 0x081D7EE4
.L0804DF54: .4byte 0x02000028
.L0804DF58: .4byte 0x0201FB00
.L0804DF5C:
    mov r0, r8
    bl GetAnimPosition
    cmp r0, #1
    bne .L0804DF78
    movs r2, #0x2c
    ldrsh r0, [r7, r2]
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r0, [r0]
    rsbs r0, r0, #0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    b .L0804DF82
.L0804DF78:
    movs r1, #0x2c
    ldrsh r0, [r7, r1]
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r4, [r0]
.L0804DF82:
    ldr r0, [r7, #0x5c]
    bl GetAnimPosition
    ldr r6, .L0804DFC8 @ =0x02000028
    lsls r0, r0, #1
    adds r0, r0, r6
    ldr r5, .L0804DFCC @ =0x0201FB00
    ldr r1, [r5]
    ldrh r0, [r0]
    subs r1, r0, r1
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    adds r1, r4, r1
    mov r2, r8
    strh r1, [r2, #2]
    ldr r0, [r7, #0x60]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r6
    ldr r1, [r5]
    ldrh r0, [r0]
    subs r1, r0, r1
    adds r4, r4, r1
    mov r0, sb
    strh r4, [r0, #2]
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
.L0804DFBC:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DFC8: .4byte 0x02000028
.L0804DFCC: .4byte 0x0201FB00
    func_end func_0804DEF4

    thumb_func_start func_0804DFD0
func_0804DFD0: @ 0x0804DFD0
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r1, .L0804DFF4 @ =0x02017728
    ldr r4, [r1]
    cmp r4, #0
    bne .L0804DFEC
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804DFF8 @ =0x08B9ACB4
    movs r1, #3
    bl Proc_Start
    strh r4, [r0, #0x2c]
    str r5, [r0, #0x64]
.L0804DFEC:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804DFF4: .4byte 0x02017728
.L0804DFF8: .4byte 0x08B9ACB4
    func_end func_0804DFD0

    thumb_func_start func_0804DFFC
func_0804DFFC: @ 0x0804DFFC
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x11
    bne .L0804E014
    adds r0, r1, #0
    bl Proc_Break
.L0804E014:
    pop {r0}
    bx r0
    func_end func_0804DFFC

    thumb_func_start func_0804E018
func_0804E018: @ 0x0804E018
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804E038 @ =0x08B9ACE4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    str r5, [r0, #0x60]
    ldr r1, .L0804E03C @ =0x02017738
    movs r0, #1
    str r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E038: .4byte 0x08B9ACE4
.L0804E03C: .4byte 0x02017738
    func_end func_0804E018

    thumb_func_start func_0804E040
func_0804E040: @ 0x0804E040
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r7, r0, #0
    movs r6, #0
    ldr r0, .L0804E0AC @ =0x0201774C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804E072
    ldr r0, .L0804E0B0 @ =0x0201772C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804E072
    ldr r4, .L0804E0B4 @ =0x0201FAF8
    adds r0, r7, #0
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    cmp r0, #1
    bne .L0804E072
    movs r6, #1
.L0804E072:
    cmp r6, #1
    bne .L0804E0A6
    movs r0, #7
    strh r0, [r5, #0x2c]
    ldr r0, .L0804E0B8 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0804E0A0
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804E0BC @ =0x02017744
    ldr r1, [r1]
    cmp r0, r1
    beq .L0804E0A0
    movs r1, #1
    rsbs r1, r1, #0
    adds r0, r7, #0
    bl func_0804E498
    movs r0, #0
    strh r0, [r5, #0x2c]
.L0804E0A0:
    adds r0, r5, #0
    bl Proc_Break
.L0804E0A6:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E0AC: .4byte 0x0201774C
.L0804E0B0: .4byte 0x0201772C
.L0804E0B4: .4byte 0x0201FAF8
.L0804E0B8: .4byte 0x0203E02C
.L0804E0BC: .4byte 0x02017744
    func_end func_0804E040

    thumb_func_start func_0804E0C0
func_0804E0C0: @ 0x0804E0C0
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    bne .L0804E0EA
    movs r0, #1
    movs r1, #7
    bl func_08051A9C
    movs r0, #1
    movs r1, #7
    movs r2, #0
    bl func_08051B80
    adds r0, r4, #0
    bl Proc_Break
.L0804E0EA:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804E0C0

    thumb_func_start func_0804E0F0
func_0804E0F0: @ 0x0804E0F0
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    bl func_08051AEC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804E14E
    bl func_0804C4E4
    bl func_0804CE30
    movs r0, #0
    str r0, [sp]
    ldr r1, .L0804E158 @ =gBg0Tm
    ldr r2, .L0804E15C @ =0x01000200
    mov r0, sp
    bl CpuFastSet
    ldr r0, .L0804E160 @ =0x02000038
    ldrh r1, [r0]
    ldrh r2, [r0, #2]
    movs r0, #0
    bl SetBgOffset
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    movs r0, #1
    bl EnableBgSync
    bl func_0804C45C
    ldr r4, .L0804E164 @ =0x0203E09C
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    adds r0, r0, r4
    ldrb r0, [r0]
    bl func_08079624
    adds r0, r5, #0
    bl Proc_Break
.L0804E14E:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E158: .4byte gBg0Tm
.L0804E15C: .4byte 0x01000200
.L0804E160: .4byte 0x02000038
.L0804E164: .4byte 0x0203E09C
    func_end func_0804E0F0

    thumb_func_start func_0804E168
func_0804E168: @ 0x0804E168
    push {r4, r5, lr}
    adds r4, r0, #0
    bl IsEventRunning
    lsls r0, r0, #0x18
    asrs r5, r0, #0x18
    cmp r5, #0
    bne .L0804E1C0
    bl func_08055544
    ldr r0, [r4, #0x5c]
    ldr r1, [r4, #0x60]
    bl func_0804E1F4
    bl func_0804D1D4
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804E1C8 @ =0x0203E010
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r5, [r0]
    movs r0, #1
    bl EnableBgSync
    movs r0, #0
    movs r1, #7
    bl func_08051A9C
    movs r0, #0
    movs r1, #7
    movs r2, #0
    bl func_08051B80
    bl func_0804C4F4
    bl func_0804CE40
    bl func_0804C44C
    adds r0, r4, #0
    bl Proc_Break
.L0804E1C0:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E1C8: .4byte 0x0203E010
    func_end func_0804E168

    thumb_func_start func_0804E1CC
func_0804E1CC: @ 0x0804E1CC
    push {r4, lr}
    adds r4, r0, #0
    bl func_08051AEC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L0804E1E8
    ldr r1, .L0804E1F0 @ =0x02017738
    movs r0, #0
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0804E1E8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E1F0: .4byte 0x02017738
    func_end func_0804E1CC

    thumb_func_start func_0804E1F4
func_0804E1F4: @ 0x0804E1F4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0804E228 @ =0x02017728
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r1, .L0804E22C @ =0x02017734
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804E230 @ =0x08B9AD1C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    str r5, [r0, #0x60]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    adds r0, r4, #0
    bl func_0804F7D0
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E228: .4byte 0x02017728
.L0804E22C: .4byte 0x02017734
.L0804E230: .4byte 0x08B9AD1C
    func_end func_0804E1F4

    thumb_func_start func_0804E234
func_0804E234: @ 0x0804E234
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804E258 @ =0x0201774C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804E272
    ldr r0, .L0804E25C @ =0x0201772C
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804E272
    bl func_08064AE0
    cmp r0, #0
    beq .L0804E260
    ldr r0, [r4, #0x5c]
    bl func_08064C4C
    b .L0804E268
    .align 2, 0
.L0804E258: .4byte 0x0201774C
.L0804E25C: .4byte 0x0201772C
.L0804E260:
    ldr r0, [r4, #0x5c]
    ldr r1, [r4, #0x60]
    bl func_0804E2E8
.L0804E268:
    movs r0, #0x32
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
.L0804E272:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804E234

    thumb_func_start func_0804E278
func_0804E278: @ 0x0804E278
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x5c]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0x1e
    bne .L0804E2BE
    adds r0, r5, #0
    bl func_08064C5C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0804E2DA
    ldr r0, [r4, #0x5c]
    ldr r1, [r4, #0x60]
    bl func_0804E36C
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0xd6
    bl func_080675C8
    movs r0, #2
    ldrsh r1, [r5, r0]
    movs r0, #0xd6
    movs r2, #1
    bl func_080676E8
    movs r0, #0x32
    strh r0, [r4, #0x2e]
    b .L0804E2DA
.L0804E2BE:
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    cmp r1, r0
    bne .L0804E2DA
    ldr r1, .L0804E2E0 @ =0x02017728
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r1, .L0804E2E4 @ =0x02017734
    movs r0, #0
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0804E2DA:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E2E0: .4byte 0x02017728
.L0804E2E4: .4byte 0x02017734
    func_end func_0804E278

    thumb_func_start func_0804E2E8
func_0804E2E8: @ 0x0804E2E8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804E308 @ =0x08B9AD3C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    str r5, [r0, #0x60]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E308: .4byte 0x08B9AD3C
    func_end func_0804E2E8

    thumb_func_start func_0804E30C
func_0804E30C: @ 0x0804E30C
    push {r4, r5, lr}
    adds r2, r0, #0
    ldr r3, [r2, #0x5c]
    ldr r4, [r2, #0x60]
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #6
    ble .L0804E344
    ldr r1, .L0804E340 @ =0x0000FFFD
    adds r0, r1, #0
    ldrh r5, [r3]
    ands r0, r5
    strh r0, [r3]
    ldrh r0, [r4]
    ands r1, r0
    strh r1, [r4]
    movs r0, #0
    strh r0, [r2, #0x2c]
    ldrh r0, [r2, #0x2e]
    adds r0, #1
    strh r0, [r2, #0x2e]
    b .L0804E352
    .align 2, 0
.L0804E340: .4byte 0x0000FFFD
.L0804E344:
    movs r0, #2
    ldrh r1, [r3]
    orrs r1, r0
    strh r1, [r3]
    ldrh r1, [r4]
    orrs r0, r1
    strh r0, [r4]
.L0804E352:
    movs r5, #0x2e
    ldrsh r0, [r2, r5]
    cmp r0, #5
    ble .L0804E366
    movs r0, #0
    strh r0, [r2, #0x2c]
    strh r0, [r2, #0x2e]
    adds r0, r2, #0
    bl Proc_Break
.L0804E366:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0804E30C

    thumb_func_start func_0804E36C
func_0804E36C: @ 0x0804E36C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804E3D4 @ =0x08B9AD54
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    str r5, [r0, #0x60]
    movs r6, #0
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    movs r0, #0xa
    strh r0, [r4, #0xa]
    strh r0, [r5, #0xa]
    bl AnimSort
    ldr r2, .L0804E3D8 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x44
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strb r6, [r0]
    ldr r0, .L0804E3DC @ =0x0000FFE0
    ldrh r1, [r2, #0x3c]
    ands r0, r1
    ldr r1, .L0804E3E0 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xc0
    lsls r3, r3, #4
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r2, #0x3c]
    adds r1, r2, #0
    adds r1, #0x3d
    movs r0, #0x20
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E3D4: .4byte 0x08B9AD54
.L0804E3D8: .4byte gDispIo
.L0804E3DC: .4byte 0x0000FFE0
.L0804E3E0: .4byte 0x0000E0FF
    func_end func_0804E36C

    thumb_func_start func_0804E3E4
func_0804E3E4: @ 0x0804E3E4
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r2, [r4, #0x5c]
    ldr r3, [r4, #0x60]
    ldr r0, [r2, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    str r0, [r2, #0x1c]
    ldr r0, [r3, #0x1c]
    orrs r0, r1
    str r0, [r3, #0x1c]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r5, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x3c
    ble .L0804E458
    movs r0, #2
    ldrh r1, [r2]
    orrs r1, r0
    strh r1, [r2]
    ldrh r1, [r3]
    orrs r0, r1
    strh r0, [r3]
    ldr r0, [r2, #0x1c]
    ldr r1, .L0804E450 @ =0xFFFFFBFF
    ands r0, r1
    str r0, [r2, #0x1c]
    ldr r0, [r3, #0x1c]
    ands r0, r1
    str r0, [r3, #0x1c]
    ldr r2, .L0804E454 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r1, #8
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x45
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, r4, #0
    bl Proc_Break
    b .L0804E48A
    .align 2, 0
.L0804E450: .4byte 0xFFFFFBFF
.L0804E454: .4byte gDispIo
.L0804E458:
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r0, #0x3c
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    ldr r3, .L0804E494 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r1, #0x3f
    ldrb r4, [r2]
    ands r1, r4
    strb r1, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    strb r0, [r1]
    adds r1, #1
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r5, [r0]
.L0804E48A:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E494: .4byte gDispIo
    func_end func_0804E3E4

    thumb_func_start func_0804E498
func_0804E498: @ 0x0804E498
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    lsls r1, r1, #0x10
    lsrs r6, r1, #0x10
    ldr r0, .L0804E4B4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #4
    bhi .L0804E564
    lsls r0, r0, #2
    ldr r1, .L0804E4B8 @ =.L0804E4BC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0804E4B4: .4byte 0x0203E02C
.L0804E4B8: .4byte .L0804E4BC
.L0804E4BC: @ jump table
    .4byte .L0804E564 @ case 0
    .4byte .L0804E4D0 @ case 1
    .4byte .L0804E4D0 @ case 2
    .4byte .L0804E564 @ case 3
    .4byte .L0804E564 @ case 4
.L0804E4D0:
    ldr r0, .L0804E504 @ =0x08B9AD6C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetAnimPosition
    adds r2, r4, #0
    adds r2, #0x29
    movs r1, #0
    strb r0, [r2]
    strh r1, [r4, #0x2c]
    lsls r1, r6, #0x10
    asrs r2, r1, #0x10
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    beq .L0804E50C
    asrs r0, r1, #0x11
    strh r0, [r4, #0x2e]
    subs r0, r2, r0
    strh r0, [r4, #0x30]
    ldr r2, .L0804E508 @ =0x0203E02C
    b .L0804E526
    .align 2, 0
.L0804E504: .4byte 0x08B9AD6C
.L0804E508: .4byte 0x0203E02C
.L0804E50C:
    ldr r0, .L0804E51C @ =0x0203E02C
    adds r2, r0, #0
    ldrh r0, [r2]
    cmp r0, #1
    bne .L0804E520
    movs r0, #5
    b .L0804E522
    .align 2, 0
.L0804E51C: .4byte 0x0203E02C
.L0804E520:
    movs r0, #7
.L0804E522:
    strh r0, [r4, #0x2e]
    strh r0, [r4, #0x30]
.L0804E526:
    movs r1, #0xf0
    ldrh r2, [r2]
    cmp r2, #1
    bne .L0804E530
    movs r1, #0x20
.L0804E530:
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r2, [r0]
    cmp r2, #0
    bne .L0804E548
    rsbs r0, r1, #0
    strh r0, [r4, #0x32]
    lsrs r0, r0, #1
    strh r0, [r4, #0x34]
    strh r0, [r4, #0x36]
    strh r2, [r4, #0x38]
    b .L0804E556
.L0804E548:
    movs r0, #0
    strh r0, [r4, #0x32]
    rsbs r1, r1, #0
    lsrs r0, r1, #1
    strh r0, [r4, #0x34]
    strh r0, [r4, #0x36]
    strh r1, [r4, #0x38]
.L0804E556:
    ldr r1, .L0804E56C @ =0x0201FB00
    movs r2, #0x32
    ldrsh r0, [r4, r2]
    str r0, [r1]
    ldr r1, .L0804E570 @ =0x02017748
    movs r0, #1
    str r0, [r1]
.L0804E564:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E56C: .4byte 0x0201FB00
.L0804E570: .4byte 0x02017748
    func_end func_0804E498

    thumb_func_start func_0804E574
func_0804E574: @ 0x0804E574
    push {r4, r5, lr}
    ldr r3, .L0804E5A4 @ =0x02000000
    ldr r4, [r3]
    rsbs r1, r1, #0
    ldr r2, .L0804E5A8 @ =0x02000028
    ldrh r5, [r2]
    adds r0, r5, r1
    strh r0, [r4, #2]
    ldr r4, [r3, #4]
    ldrh r5, [r2]
    adds r0, r5, r1
    strh r0, [r4, #2]
    ldr r4, [r3, #8]
    ldrh r5, [r2, #2]
    adds r0, r5, r1
    strh r0, [r4, #2]
    ldr r4, [r3, #0xc]
    ldrh r2, [r2, #2]
    adds r1, r2, r1
    strh r1, [r4, #2]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E5A4: .4byte 0x02000000
.L0804E5A8: .4byte 0x02000028
    func_end func_0804E574

    thumb_func_start func_0804E5AC
func_0804E5AC: @ 0x0804E5AC
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x32
    ldrsh r1, [r4, r0]
    adds r0, r4, #0
    bl func_0804E574
    movs r1, #0x32
    ldrsh r0, [r4, r1]
    movs r1, #0
    bl func_08064B38
    movs r1, #0x32
    ldrsh r0, [r4, r1]
    bl func_0804E6DC
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804E5AC

    thumb_func_start func_0804E5DC
func_0804E5DC: @ 0x0804E5DC
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x32
    ldrsh r1, [r4, r0]
    movs r5, #0x34
    ldrsh r2, [r4, r5]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r5, #0x2e
    ldrsh r0, [r4, r5]
    str r0, [sp]
    movs r0, #1
    bl Interpolate
    adds r1, r0, #0
    ldr r5, .L0804E644 @ =0x0201FB00
    str r1, [r5]
    adds r0, r4, #0
    bl func_0804E574
    ldr r0, [r5]
    movs r1, #0
    bl func_08064B38
    ldr r0, [r5]
    bl func_0804E6DC
    bl func_080554F0
    cmp r0, #0
    beq .L0804E622
    ldr r0, [r5]
    bl func_080554FC
.L0804E622:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0804E63C
    movs r0, #1
    strh r0, [r4, #0x2c]
    adds r0, r4, #0
    bl Proc_Break
.L0804E63C:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E644: .4byte 0x0201FB00
    func_end func_0804E5DC

    thumb_func_start func_0804E648
func_0804E648: @ 0x0804E648
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x36
    ldrsh r1, [r4, r0]
    movs r5, #0x38
    ldrsh r2, [r4, r5]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r5, #0x30
    ldrsh r0, [r4, r5]
    str r0, [sp]
    movs r0, #4
    bl Interpolate
    adds r1, r0, #0
    ldr r5, .L0804E6B0 @ =0x0201FB00
    str r1, [r5]
    adds r0, r4, #0
    bl func_0804E574
    ldr r0, [r5]
    movs r1, #0
    bl func_08064B38
    ldr r0, [r5]
    bl func_0804E6DC
    bl func_080554F0
    cmp r0, #0
    beq .L0804E68E
    ldr r0, [r5]
    bl func_080554FC
.L0804E68E:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0804E6CA
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0804E6B8
    ldr r1, .L0804E6B4 @ =0x02017744
    movs r0, #1
    b .L0804E6BC
    .align 2, 0
.L0804E6B0: .4byte 0x0201FB00
.L0804E6B4: .4byte 0x02017744
.L0804E6B8:
    ldr r1, .L0804E6D4 @ =0x02017744
    movs r0, #0
.L0804E6BC:
    str r0, [r1]
    ldr r1, .L0804E6D8 @ =0x02017748
    movs r0, #0
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0804E6CA:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E6D4: .4byte 0x02017744
.L0804E6D8: .4byte 0x02017748
    func_end func_0804E648

    thumb_func_start func_0804E6DC
func_0804E6DC: @ 0x0804E6DC
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    bl func_08064AE0
    cmp r0, #0
    bne .L0804E72C
    bl func_080554F0
    cmp r0, #0
    bne .L0804E72C
    asrs r4, r5, #3
    movs r1, #7
    ands r1, r5
    movs r0, #2
    movs r2, #0
    bl SetBgOffset
    lsls r4, r4, #1
    ldr r0, .L0804E734 @ =0x0201C906
    adds r4, r4, r0
    movs r0, #0x84
    lsls r0, r0, #1
    adds r4, r4, r0
    ldr r2, .L0804E738 @ =gBg2Tm
    movs r0, #0x20
    str r0, [sp]
    movs r0, #0x14
    str r0, [sp, #4]
    subs r0, #0x15
    str r0, [sp, #8]
    str r0, [sp, #0xc]
    adds r0, r4, #0
    movs r1, #0x42
    movs r3, #0x20
    bl func_08066B2C
    movs r0, #4
    bl EnableBgSync
.L0804E72C:
    add sp, #0x10
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E734: .4byte 0x0201C906
.L0804E738: .4byte gBg2Tm
    func_end func_0804E6DC

    thumb_func_start func_0804E73C
func_0804E73C: @ 0x0804E73C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804E774 @ =0x08B9AD94
    movs r1, #3
    bl Proc_Start
    ldr r2, .L0804E778 @ =0x08B9ADAC
    lsls r1, r4, #3
    adds r1, r1, r2
    ldr r1, [r1]
    str r1, [r0, #0x44]
    lsls r4, r4, #1
    adds r4, #1
    lsls r4, r4, #2
    adds r4, r4, r2
    ldr r1, [r4]
    adds r3, r0, #0
    adds r3, #0x29
    movs r2, #0
    strb r1, [r3]
    adds r1, r0, #0
    adds r1, #0x2a
    strb r5, [r1]
    strh r2, [r0, #0x2c]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0804E774: .4byte 0x08B9AD94
.L0804E778: .4byte 0x08B9ADAC
    func_end func_0804E73C

    thumb_func_start func_0804E77C
func_0804E77C: @ 0x0804E77C
    push {r4, lr}
    adds r2, r0, #0
    ldr r3, [r2, #0x44]
    movs r1, #0x2c
    ldrsh r0, [r2, r1]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldrh r4, [r0]
    ldr r1, .L0804E7AC @ =0x00007FFF
    cmp r4, r1
    beq .L0804E7B4
    ldr r1, .L0804E7B0 @ =0x02017760
    strh r4, [r1]
    movs r4, #0x2c
    ldrsh r0, [r2, r4]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldrh r0, [r0, #2]
    strh r0, [r1, #2]
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    b .L0804E7E0
    .align 2, 0
.L0804E7AC: .4byte 0x00007FFF
.L0804E7B0: .4byte 0x02017760
.L0804E7B4:
    adds r0, r2, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0804E7C4
    cmp r0, #1
    beq .L0804E7D8
    b .L0804E7E0
.L0804E7C4:
    strh r0, [r2, #0x2c]
    ldr r0, .L0804E7D4 @ =0x02017760
    ldrh r1, [r3]
    strh r1, [r0]
    ldrh r1, [r3, #2]
    strh r1, [r0, #2]
    b .L0804E7E0
    .align 2, 0
.L0804E7D4: .4byte 0x02017760
.L0804E7D8:
    ldr r1, .L0804E7E8 @ =0x02017760
    movs r0, #0
    strh r0, [r1, #2]
    strh r0, [r1]
.L0804E7E0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804E7E8: .4byte 0x02017760
    func_end func_0804E77C

    thumb_func_start func_0804E7EC
func_0804E7EC: @ 0x0804E7EC
    push {lr}
    ldr r0, .L0804E7FC @ =0x08B9AE04
    movs r1, #3
    bl Proc_Start
    pop {r1}
    bx r1
    .align 2, 0
.L0804E7FC: .4byte 0x08B9AE04
    func_end func_0804E7EC

    thumb_func_start func_0804E800
func_0804E800: @ 0x0804E800
    bx lr
    func_end func_0804E800

    thumb_func_start NewEfxQuake
NewEfxQuake: @ 0x0804E804
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804E814 @ =0x02017748
    ldr r0, [r0]
    cmp r0, #1
    bne .L0804E818
    movs r0, #0
    b .L0804E8F4
    .align 2, 0
.L0804E814: .4byte 0x02017748
.L0804E818:
    ldr r1, .L0804E844 @ =0x0201773C
    movs r0, #1
    str r0, [r1]
    ldr r0, .L0804E848 @ =0x08B9AE1C
    movs r1, #3
    bl Proc_Start
    adds r2, r0, #0
    movs r0, #0
    strh r0, [r2, #0x2c]
    ldr r1, .L0804E84C @ =0x02000000
    ldr r0, [r1]
    str r0, [r2, #0x5c]
    ldr r0, [r1, #8]
    str r0, [r2, #0x60]
    cmp r4, #6
    bhi .L0804E8E0
    lsls r0, r4, #2
    ldr r1, .L0804E850 @ =.L0804E854
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0804E844: .4byte 0x0201773C
.L0804E848: .4byte 0x08B9AE1C
.L0804E84C: .4byte 0x02000000
.L0804E850: .4byte .L0804E854
.L0804E854: @ jump table
    .4byte .L0804E870 @ case 0
    .4byte .L0804E880 @ case 1
    .4byte .L0804E890 @ case 2
    .4byte .L0804E8A0 @ case 3
    .4byte .L0804E8B0 @ case 4
    .4byte .L0804E8C0 @ case 5
    .4byte .L0804E8D0 @ case 6
.L0804E870:
    ldr r0, .L0804E87C @ =0x081D7F00
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #0
    b .L0804E8EA
    .align 2, 0
.L0804E87C: .4byte 0x081D7F00
.L0804E880:
    ldr r0, .L0804E88C @ =0x081D7F22
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #0
    b .L0804E8EA
    .align 2, 0
.L0804E88C: .4byte 0x081D7F22
.L0804E890:
    ldr r0, .L0804E89C @ =0x081D7F6C
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #0
    b .L0804E8EA
    .align 2, 0
.L0804E89C: .4byte 0x081D7F6C
.L0804E8A0:
    ldr r0, .L0804E8AC @ =0x081D7FB6
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #0
    b .L0804E8EA
    .align 2, 0
.L0804E8AC: .4byte 0x081D7FB6
.L0804E8B0:
    ldr r0, .L0804E8BC @ =0x081D8000
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #0
    b .L0804E8EA
    .align 2, 0
.L0804E8BC: .4byte 0x081D8000
.L0804E8C0:
    ldr r0, .L0804E8CC @ =0x081D804A
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #1
    b .L0804E8EA
    .align 2, 0
.L0804E8CC: .4byte 0x081D804A
.L0804E8D0:
    ldr r0, .L0804E8DC @ =0x081D80B4
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #1
    b .L0804E8EA
    .align 2, 0
.L0804E8DC: .4byte 0x081D80B4
.L0804E8E0:
    ldr r0, .L0804E8FC @ =0x081D7F00
    str r0, [r2, #0x44]
    adds r1, r2, #0
    adds r1, #0x29
    movs r0, #0
.L0804E8EA:
    strb r0, [r1]
    movs r0, #0
    strh r0, [r2, #0x34]
    strh r0, [r2, #0x3c]
    adds r0, r2, #0
.L0804E8F4:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0804E8FC: .4byte 0x081D7F00
    func_end NewEfxQuake

    thumb_func_start func_0804E900
func_0804E900: @ 0x0804E900
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    ldr r3, [r6, #0x44]
    ldrh r4, [r6, #0x2c]
    movs r1, #0x2c
    ldrsh r0, [r6, r1]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldrh r2, [r0]
    ldr r1, .L0804E978 @ =0x00007FFF
    cmp r2, r1
    bne .L0804E98C
    ldr r3, .L0804E97C @ =0x02000028
    movs r4, #0
    ldrsh r2, [r3, r4]
    ldr r0, .L0804E980 @ =0x0201FB00
    ldr r1, [r0]
    subs r7, r2, r1
    ldr r2, .L0804E984 @ =0x0200002C
    movs r4, #2
    ldrsh r0, [r3, r4]
    subs r4, r0, r1
    movs r0, #2
    ldrsh r5, [r2, r0]
    lsls r1, r7, #0x10
    asrs r1, r1, #0x10
    movs r3, #0
    ldrsh r2, [r2, r3]
    movs r0, #0
    bl func_080507D8
    lsls r1, r4, #0x10
    asrs r1, r1, #0x10
    adds r2, r5, #0
    movs r0, #1
    bl func_080507D8
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08064AE0
    cmp r0, #0
    beq .L0804E96A
    ldrh r1, [r6, #0x34]
    ldrh r2, [r6, #0x3c]
    movs r0, #3
    bl SetBgOffset
.L0804E96A:
    ldr r1, .L0804E988 @ =0x0201773C
    movs r0, #0
    str r0, [r1]
    adds r0, r6, #0
    bl Proc_End
    b .L0804EA9E
    .align 2, 0
.L0804E978: .4byte 0x00007FFF
.L0804E97C: .4byte 0x02000028
.L0804E980: .4byte 0x0201FB00
.L0804E984: .4byte 0x0200002C
.L0804E988: .4byte 0x0201773C
.L0804E98C:
    ldr r5, .L0804E9E4 @ =0x02017760
    strh r2, [r5]
    movs r1, #0x2c
    ldrsh r0, [r6, r1]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldrh r0, [r0, #2]
    strh r0, [r5, #2]
    adds r0, r4, #1
    strh r0, [r6, #0x2c]
    ldrh r1, [r5]
    ldrh r2, [r5, #2]
    movs r0, #2
    bl SetBgOffset
    bl func_08064AE0
    cmp r0, #0
    beq .L0804E9CC
    ldrh r2, [r6, #0x34]
    ldrh r3, [r5]
    adds r1, r2, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldrh r4, [r6, #0x3c]
    ldrh r0, [r5, #2]
    adds r2, r4, r0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #3
    bl SetBgOffset
.L0804E9CC:
    bl func_08064AE0
    cmp r0, #0
    beq .L0804E9EC
    ldr r4, .L0804E9E8 @ =0x02000028
    movs r2, #0
    ldrsh r1, [r4, r2]
    movs r3, #0
    ldrsh r0, [r5, r3]
    subs r1, r1, r0
    b .L0804E9F8
    .align 2, 0
.L0804E9E4: .4byte 0x02017760
.L0804E9E8: .4byte 0x02000028
.L0804E9EC:
    ldr r4, .L0804EA58 @ =0x02000028
    movs r2, #0
    ldrsh r1, [r4, r2]
    movs r3, #0
    ldrsh r0, [r5, r3]
    adds r1, r1, r0
.L0804E9F8:
    ldr r3, .L0804EA5C @ =0x0201FB00
    ldr r0, [r3]
    subs r7, r1, r0
    ldr r2, .L0804EA60 @ =0x0200002C
    movs r1, #0
    ldrsh r0, [r2, r1]
    mov r8, r0
    movs r1, #2
    ldrsh r0, [r5, r1]
    mov r1, r8
    subs r1, r1, r0
    mov r8, r1
    adds r5, r2, #0
    movs r2, #2
    ldrsh r1, [r4, r2]
    ldr r2, .L0804EA64 @ =0x02017760
    movs r4, #0
    ldrsh r0, [r2, r4]
    adds r1, r1, r0
    ldr r0, [r3]
    subs r4, r1, r0
    movs r0, #2
    ldrsh r1, [r5, r0]
    movs r3, #2
    ldrsh r0, [r2, r3]
    subs r5, r1, r0
    ldr r0, .L0804EA68 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804EA6C
    lsls r1, r7, #0x10
    asrs r1, r1, #0x10
    mov r3, r8
    lsls r2, r3, #0x10
    asrs r2, r2, #0x10
    movs r0, #0
    bl func_080507D8
    lsls r1, r4, #0x10
    asrs r1, r1, #0x10
    lsls r2, r5, #0x10
    asrs r2, r2, #0x10
    movs r0, #1
    bl func_080507D8
    b .L0804EA9E
    .align 2, 0
.L0804EA58: .4byte 0x02000028
.L0804EA5C: .4byte 0x0201FB00
.L0804EA60: .4byte 0x0200002C
.L0804EA64: .4byte 0x02017760
.L0804EA68: .4byte 0x0203E02C
.L0804EA6C:
    cmp r0, #0
    blt .L0804EA9E
    cmp r0, #2
    bgt .L0804EA9E
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804EA90
    lsls r1, r7, #0x10
    asrs r1, r1, #0x10
    mov r4, r8
    lsls r2, r4, #0x10
    asrs r2, r2, #0x10
    movs r0, #0
    bl func_080507D8
    b .L0804EA9E
.L0804EA90:
    lsls r1, r4, #0x10
    asrs r1, r1, #0x10
    lsls r2, r5, #0x10
    asrs r2, r2, #0x10
    movs r0, #1
    bl func_080507D8
.L0804EA9E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0804E900

    thumb_func_start func_0804EAA8
func_0804EAA8: @ 0x0804EAA8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    mov sb, r1
    adds r6, r2, #0
    ldr r0, .L0804EAEC @ =0x02017740
    ldr r7, [r0]
    cmp r7, #0
    beq .L0804EAC0
    b .L0804EC5A
.L0804EAC0:
    movs r4, #1
    str r4, [r0]
    ldr r0, .L0804EAF0 @ =0x08B9AE34
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    mov r0, r8
    str r0, [r5, #0x5c]
    mov r1, sb
    str r1, [r5, #0x60]
    strh r7, [r5, #0x2c]
    adds r0, r5, #0
    adds r0, #0x29
    strb r4, [r0]
    cmp r6, #0
    beq .L0804EB28
    cmp r6, #1
    bne .L0804EAF8
    ldr r0, .L0804EAF4 @ =0x081D7F22
    b .L0804EB2A
    .align 2, 0
.L0804EAEC: .4byte 0x02017740
.L0804EAF0: .4byte 0x08B9AE34
.L0804EAF4: .4byte 0x081D7F22
.L0804EAF8:
    cmp r6, #2
    bne .L0804EB04
    ldr r0, .L0804EB00 @ =0x081D7F6C
    b .L0804EB2A
    .align 2, 0
.L0804EB00: .4byte 0x081D7F6C
.L0804EB04:
    cmp r6, #3
    bne .L0804EB10
    ldr r0, .L0804EB0C @ =0x081D7FB6
    b .L0804EB2A
    .align 2, 0
.L0804EB0C: .4byte 0x081D7FB6
.L0804EB10:
    cmp r6, #4
    bne .L0804EB1C
    ldr r0, .L0804EB18 @ =0x081D81D0
    b .L0804EB2A
    .align 2, 0
.L0804EB18: .4byte 0x081D81D0
.L0804EB1C:
    cmp r6, #5
    bne .L0804EB28
    ldr r0, .L0804EB24 @ =0x081D8266
    b .L0804EB2A
    .align 2, 0
.L0804EB24: .4byte 0x081D8266
.L0804EB28:
    ldr r0, .L0804EB40 @ =0x081D7F00
.L0804EB2A:
    str r0, [r5, #0x44]
    movs r0, #1
    str r0, [r5, #0x48]
    bl func_08064AE0
    adds r4, r0, #0
    cmp r4, #0
    beq .L0804EB44
    movs r0, #0
    str r0, [r5, #0x64]
    b .L0804EC5A
    .align 2, 0
.L0804EB40: .4byte 0x081D7F00
.L0804EB44:
    bl func_080554F0
    cmp r0, #0
    beq .L0804EB50
    str r4, [r5, #0x64]
    b .L0804EC5A
.L0804EB50:
    ldr r0, .L0804EB60 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    bne .L0804EB64
    str r0, [r5, #0x64]
    b .L0804EC5A
    .align 2, 0
.L0804EB60: .4byte 0x0203E02C
.L0804EB64:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804EB94 @ =0x0201FB00
    ldr r1, [r1]
    ldr r2, .L0804EB98 @ =0x02000030
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r0, [r0]
    subs r1, r1, r0
    lsls r1, r1, #0x10
    lsrs r4, r1, #0x10
    mov r0, r8
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804EBA0
    movs r0, #0x40
    strh r0, [r5, #0x36]
    movs r0, #0x68
    strh r0, [r5, #0x3e]
    ldr r0, .L0804EB9C @ =0x08B9CB84
    b .L0804EBAA
    .align 2, 0
.L0804EB94: .4byte 0x0201FB00
.L0804EB98: .4byte 0x02000030
.L0804EB9C: .4byte 0x08B9CB84
.L0804EBA0:
    movs r0, #0xb0
    strh r0, [r5, #0x36]
    movs r0, #0x68
    strh r0, [r5, #0x3e]
    ldr r0, .L0804EBD0 @ =0x08B9CAF8
.L0804EBAA:
    movs r1, #5
    bl AnimCreate
    adds r1, r0, #0
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    ldrh r2, [r5, #0x36]
    subs r0, r2, r0
    strh r0, [r1, #2]
    ldrh r0, [r5, #0x3e]
    strh r0, [r1, #4]
    ldr r0, .L0804EBD4 @ =0x0201775C
    ldr r0, [r0]
    cmp r0, #1
    bne .L0804EBD8
    movs r0, #0xd3
    lsls r0, r0, #6
    b .L0804EBDC
    .align 2, 0
.L0804EBD0: .4byte 0x08B9CAF8
.L0804EBD4: .4byte 0x0201775C
.L0804EBD8:
    movs r0, #0xf3
    lsls r0, r0, #6
.L0804EBDC:
    strh r0, [r1, #8]
    str r1, [r5, #0x64]
    ldr r4, .L0804EC68 @ =0x0200003C
    mov r0, r8
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r1, .L0804EC6C @ =0x06011800
    movs r2, #0x80
    lsls r2, r2, #4
    bl RegisterDataMove
    ldr r4, .L0804EC70 @ =0x0203E024
    mov r0, sb
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r0, [r0]
    cmp r0, #0x39
    bne .L0804EC20
    ldr r4, .L0804EC74 @ =0x0200004C
    mov r0, sb
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r1, .L0804EC78 @ =0x02016828
    movs r2, #8
    bl CpuFastSet
.L0804EC20:
    ldr r4, .L0804EC74 @ =0x0200004C
    mov r0, r8
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r1, .L0804EC7C @ =0x02022AC0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    ldr r0, .L0804EC80 @ =0x0203E02C
    movs r1, #0
    ldrsh r4, [r0, r1]
    mov r0, r8
    bl GetAnimPosition
    adds r1, r0, #0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    adds r0, r4, #0
    bl func_08055468
    ldr r0, .L0804EC84 @ =0x0201FB00
    ldr r0, [r0]
    bl func_0804E6DC
.L0804EC5A:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804EC68: .4byte 0x0200003C
.L0804EC6C: .4byte 0x06011800
.L0804EC70: .4byte 0x0203E024
.L0804EC74: .4byte 0x0200004C
.L0804EC78: .4byte 0x02016828
.L0804EC7C: .4byte 0x02022AC0
.L0804EC80: .4byte 0x0203E02C
.L0804EC84: .4byte 0x0201FB00
    func_end func_0804EAA8

    thumb_func_start func_0804EC88
func_0804EC88: @ 0x0804EC88
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r5, [r7, #0x44]
    movs r1, #0x2c
    ldrsh r0, [r7, r1]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r1, .L0804ECD0 @ =0x00007FFF
    ldrh r0, [r0]
    cmp r0, r1
    beq .L0804ECA6
    b .L0804EDB4
.L0804ECA6:
    ldr r0, .L0804ECD4 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    bne .L0804ECD8
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08064AE0
    cmp r0, #0
    beq .L0804ECFA
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    b .L0804ECFA
    .align 2, 0
.L0804ECD0: .4byte 0x00007FFF
.L0804ECD4: .4byte 0x0203E02C
.L0804ECD8:
    cmp r0, #0
    blt .L0804ECFA
    cmp r0, #2
    bgt .L0804ECFA
    bl func_08064AE0
    cmp r0, #0
    beq .L0804ECF2
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
.L0804ECF2:
    ldr r0, .L0804ED9C @ =0x0201FB00
    ldr r0, [r0]
    bl func_0804E6DC
.L0804ECFA:
    ldr r0, [r7, #0x64]
    cmp r0, #0
    beq .L0804ED0A
    bl AnimDelete
    ldr r0, .L0804EDA0 @ =0x0201FAD0
    bl func_08055320
.L0804ED0A:
    ldr r3, .L0804EDA4 @ =0x02000028
    movs r4, #0
    ldrsh r2, [r3, r4]
    ldr r0, .L0804ED9C @ =0x0201FB00
    ldr r1, [r0]
    subs r6, r2, r1
    ldr r2, .L0804EDA8 @ =0x0200002C
    movs r5, #2
    ldrsh r0, [r3, r5]
    subs r4, r0, r1
    movs r0, #2
    ldrsh r5, [r2, r0]
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    movs r3, #0
    ldrsh r2, [r2, r3]
    movs r0, #0
    bl func_080507D8
    lsls r1, r4, #0x10
    asrs r1, r1, #0x10
    adds r2, r5, #0
    movs r0, #1
    bl func_080507D8
    ldr r1, .L0804EDAC @ =0x02017740
    movs r0, #0
    str r0, [r1]
    adds r0, r7, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804ED92
    bl func_08064AE0
    cmp r0, #0
    beq .L0804ED5E
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
.L0804ED5E:
    ldr r4, .L0804EDB0 @ =0x02000038
    ldrh r1, [r4]
    ldrh r2, [r4, #2]
    movs r0, #0
    bl SetBgOffset
    ldrh r5, [r4]
    rsbs r0, r5, #0
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldrh r6, [r4, #2]
    rsbs r1, r6, #0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_0804C4B0
    ldrh r1, [r4]
    rsbs r0, r1, #0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r4, [r4, #2]
    rsbs r1, r4, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    bl func_0804CDFC
.L0804ED92:
    adds r0, r7, #0
    bl Proc_End
    b .L0804EFCE
    .align 2, 0
.L0804ED9C: .4byte 0x0201FB00
.L0804EDA0: .4byte 0x0201FAD0
.L0804EDA4: .4byte 0x02000028
.L0804EDA8: .4byte 0x0200002C
.L0804EDAC: .4byte 0x02017740
.L0804EDB0: .4byte 0x02000038
.L0804EDB4:
    movs r2, #0x2c
    ldrsh r4, [r7, r2]
    cmp r4, #0
    bne .L0804EDE0
    ldr r0, [r7, #0x64]
    cmp r0, #0
    beq .L0804EDE0
    ldr r0, [r7, #0x5c]
    bl GetAnimPosition
    adds r1, r0, #0
    lsls r0, r1, #4
    subs r0, r0, r1
    lsls r0, r0, #1
    ldr r1, .L0804EE3C @ =0x02023F20
    adds r0, r0, r1
    str r4, [sp]
    movs r1, #0xf
    movs r2, #5
    movs r3, #0
    bl func_080669B4
.L0804EDE0:
    ldr r4, .L0804EE40 @ =0x02017760
    movs r3, #0x2c
    ldrsh r0, [r7, r3]
    lsls r0, r0, #2
    adds r0, r0, r5
    movs r1, #0
    ldrsh r6, [r0, r1]
    mov r8, r6
    strh r6, [r4]
    movs r2, #0x2c
    ldrsh r0, [r7, r2]
    lsls r0, r0, #2
    adds r0, r0, r5
    movs r3, #2
    ldrsh r5, [r0, r3]
    strh r5, [r4, #2]
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    ldr r0, [r7, #0x64]
    cmp r0, #0
    beq .L0804EE4C
    ldr r0, [r7, #0x5c]
    bl GetAnimPosition
    ldr r1, .L0804EE44 @ =0x0201FB00
    ldr r1, [r1]
    ldr r2, .L0804EE48 @ =0x02000030
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r0, [r0]
    subs r1, r1, r0
    ldr r2, [r7, #0x64]
    ldrh r6, [r7, #0x36]
    ldrh r3, [r4]
    adds r0, r6, r3
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    subs r0, r0, r1
    strh r0, [r2, #2]
    ldrh r6, [r7, #0x3e]
    ldrh r4, [r4, #2]
    subs r0, r6, r4
    strh r0, [r2, #4]
    b .L0804EE56
    .align 2, 0
.L0804EE3C: .4byte 0x02023F20
.L0804EE40: .4byte 0x02017760
.L0804EE44: .4byte 0x0201FB00
.L0804EE48: .4byte 0x02000030
.L0804EE4C:
    ldrh r1, [r4]
    ldrh r2, [r4, #2]
    movs r0, #2
    bl SetBgOffset
.L0804EE56:
    adds r0, r7, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804EED0
    bl func_08064AE0
    cmp r0, #0
    beq .L0804EE7A
    mov r0, r8
    rsbs r1, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    lsls r2, r5, #0x10
    lsrs r2, r2, #0x10
    movs r0, #3
    bl SetBgOffset
.L0804EE7A:
    ldr r5, .L0804EF0C @ =0x02017760
    ldr r4, .L0804EF10 @ =0x02000038
    ldrh r2, [r5]
    ldrh r3, [r4]
    adds r1, r2, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldrh r6, [r5, #2]
    ldrh r0, [r4, #2]
    adds r2, r6, r0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #0
    bl SetBgOffset
    ldrh r1, [r5]
    ldrh r2, [r4]
    adds r0, r1, r2
    rsbs r0, r0, #0
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldrh r3, [r5, #2]
    ldrh r6, [r4, #2]
    adds r1, r3, r6
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_0804C4B0
    ldrh r1, [r5]
    ldrh r2, [r4]
    adds r0, r1, r2
    rsbs r0, r0, #0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r5, [r5, #2]
    ldrh r4, [r4, #2]
    adds r1, r5, r4
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    bl func_0804CDFC
.L0804EED0:
    bl func_08064AE0
    cmp r0, #0
    beq .L0804EEE4
    ldr r0, .L0804EF0C @ =0x02017760
    ldrh r1, [r0]
    ldrh r2, [r0, #2]
    movs r0, #3
    bl SetBgOffset
.L0804EEE4:
    bl func_08064AE0
    cmp r0, #0
    beq .L0804EF20
    ldr r3, .L0804EF14 @ =0x02000028
    mov ip, r3
    movs r4, #0
    ldrsh r1, [r3, r4]
    ldr r2, .L0804EF0C @ =0x02017760
    movs r5, #0
    ldrsh r0, [r2, r5]
    subs r1, r1, r0
    ldr r4, .L0804EF18 @ =0x0201FB00
    ldr r0, [r4]
    subs r6, r1, r0
    ldr r3, .L0804EF1C @ =0x0200002C
    movs r0, #0
    ldrsh r1, [r3, r0]
    b .L0804EF3C
    .align 2, 0
.L0804EF0C: .4byte 0x02017760
.L0804EF10: .4byte 0x02000038
.L0804EF14: .4byte 0x02000028
.L0804EF18: .4byte 0x0201FB00
.L0804EF1C: .4byte 0x0200002C
.L0804EF20:
    ldr r6, .L0804EF88 @ =0x02000028
    mov ip, r6
    movs r0, #0
    ldrsh r1, [r6, r0]
    ldr r2, .L0804EF8C @ =0x02017760
    movs r3, #0
    ldrsh r0, [r2, r3]
    adds r1, r1, r0
    ldr r4, .L0804EF90 @ =0x0201FB00
    ldr r0, [r4]
    subs r6, r1, r0
    ldr r3, .L0804EF94 @ =0x0200002C
    movs r5, #0
    ldrsh r1, [r3, r5]
.L0804EF3C:
    movs r5, #2
    ldrsh r0, [r2, r5]
    subs r1, r1, r0
    mov r8, r1
    mov r5, ip
    movs r1, #2
    ldrsh r0, [r5, r1]
    movs r5, #0
    ldrsh r1, [r2, r5]
    adds r0, r0, r1
    ldr r1, [r4]
    subs r4, r0, r1
    movs r0, #2
    ldrsh r1, [r3, r0]
    movs r3, #2
    ldrsh r0, [r2, r3]
    subs r5, r1, r0
    ldr r0, .L0804EF98 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0804EF9C
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    mov r3, r8
    lsls r2, r3, #0x10
    asrs r2, r2, #0x10
    movs r0, #0
    bl func_080507D8
    lsls r1, r4, #0x10
    asrs r1, r1, #0x10
    lsls r2, r5, #0x10
    asrs r2, r2, #0x10
    movs r0, #1
    bl func_080507D8
    b .L0804EFCE
    .align 2, 0
.L0804EF88: .4byte 0x02000028
.L0804EF8C: .4byte 0x02017760
.L0804EF90: .4byte 0x0201FB00
.L0804EF94: .4byte 0x0200002C
.L0804EF98: .4byte 0x0203E02C
.L0804EF9C:
    cmp r0, #0
    blt .L0804EFCE
    cmp r0, #2
    bgt .L0804EFCE
    ldr r0, [r7, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804EFC0
    lsls r1, r6, #0x10
    asrs r1, r1, #0x10
    mov r4, r8
    lsls r2, r4, #0x10
    asrs r2, r2, #0x10
    movs r0, #0
    bl func_080507D8
    b .L0804EFCE
.L0804EFC0:
    lsls r1, r4, #0x10
    asrs r1, r1, #0x10
    lsls r2, r5, #0x10
    asrs r2, r2, #0x10
    movs r0, #1
    bl func_080507D8
.L0804EFCE:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0804EC88

    thumb_func_start func_0804EFDC
func_0804EFDC: @ 0x0804EFDC
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804F00C @ =0x08B9AE4C
    movs r1, #0
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    movs r0, #1
    rsbs r0, r0, #0
    str r0, [sp]
    ldr r1, .L0804F010 @ =0x020165C8
    ldr r2, .L0804F014 @ =0x01000100
    mov r0, sp
    bl CpuFastSet
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F00C: .4byte 0x08B9AE4C
.L0804F010: .4byte 0x020165C8
.L0804F014: .4byte 0x01000100
    func_end func_0804EFDC

    thumb_func_start func_0804F018
func_0804F018: @ 0x0804F018
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804F048 @ =0x08B9AE4C
    movs r1, #0
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    ldr r0, .L0804F04C @ =0x001F001F
    str r0, [sp]
    ldr r1, .L0804F050 @ =0x020165C8
    ldr r2, .L0804F054 @ =0x01000100
    mov r0, sp
    bl CpuFastSet
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F048: .4byte 0x08B9AE4C
.L0804F04C: .4byte 0x001F001F
.L0804F050: .4byte 0x020165C8
.L0804F054: .4byte 0x01000100
    func_end func_0804F018

    thumb_func_start func_0804F058
func_0804F058: @ 0x0804F058
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804F084 @ =0x08B9AE4C
    movs r1, #0
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    str r1, [sp]
    ldr r1, .L0804F088 @ =0x020165C8
    ldr r2, .L0804F08C @ =0x01000100
    mov r0, sp
    bl CpuFastSet
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F084: .4byte 0x08B9AE4C
.L0804F088: .4byte 0x020165C8
.L0804F08C: .4byte 0x01000100
    func_end func_0804F058

    thumb_func_start func_0804F090
func_0804F090: @ 0x0804F090
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0804F0AC @ =0x08B9AE4C
    movs r1, #0
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F0AC: .4byte 0x08B9AE4C
    func_end func_0804F090

    thumb_func_start func_0804F0B0
func_0804F0B0: @ 0x0804F0B0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0804F0E4 @ =0x020165C8
    movs r1, #0xa0
    lsls r1, r1, #0x13
    movs r2, #0x80
    lsls r2, r2, #1
    bl CpuFastSet
    bl DisablePalSync
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    blt .L0804F0DC
    adds r0, r4, #0
    bl Proc_Break
.L0804F0DC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F0E4: .4byte 0x020165C8
    func_end func_0804F0B0

    thumb_func_start func_0804F0E8
func_0804F0E8: @ 0x0804F0E8
    push {r4, lr}
    adds r4, r0, #0
    bl EnablePalSync
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804F0E8

    thumb_func_start func_0804F0FC
func_0804F0FC: @ 0x0804F0FC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r0, .L0804F11C @ =0x08B9AE74
    movs r1, #0
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    strh r6, [r0, #0x30]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F11C: .4byte 0x08B9AE74
    func_end func_0804F0FC

    thumb_func_start func_0804F120
func_0804F120: @ 0x0804F120
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L0804F170 @ =gPal
    ldr r4, .L0804F174 @ =0x020165C8
    movs r5, #0x80
    lsls r5, r5, #1
    adds r1, r4, #0
    adds r2, r5, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    movs r3, #0x10
    bl func_08066F64
    movs r1, #0xa0
    lsls r1, r1, #0x13
    adds r0, r4, #0
    adds r2, r5, #0
    bl CpuFastSet
    bl DisablePalSync
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r6, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0804F16A
    movs r0, #0
    strh r0, [r6, #0x2c]
    adds r0, r6, #0
    bl Proc_Break
.L0804F16A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F170: .4byte gPal
.L0804F174: .4byte 0x020165C8
    func_end func_0804F120

    thumb_func_start func_0804F178
func_0804F178: @ 0x0804F178
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r7, r0]
    movs r1, #0x30
    ldrsh r0, [r7, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    adds r6, r0, #0
    ldr r0, .L0804F1E0 @ =gPal
    ldr r4, .L0804F1E4 @ =0x020165C8
    movs r5, #0x80
    lsls r5, r5, #1
    adds r1, r4, #0
    adds r2, r5, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    adds r3, r6, #0
    bl func_08066F64
    movs r1, #0xa0
    lsls r1, r1, #0x13
    adds r0, r4, #0
    adds r2, r5, #0
    bl CpuFastSet
    bl DisablePalSync
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r7, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0804F1D6
    adds r0, r7, #0
    bl Proc_Break
.L0804F1D6:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F1E0: .4byte gPal
.L0804F1E4: .4byte 0x020165C8
    func_end func_0804F178

    thumb_func_start func_0804F1E8
func_0804F1E8: @ 0x0804F1E8
    push {r4, lr}
    adds r4, r0, #0
    bl EnablePalSync
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804F1E8

    thumb_func_start func_0804F1FC
func_0804F1FC: @ 0x0804F1FC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    ldr r0, .L0804F230 @ =0x08B9AE9C
    movs r1, #4
    bl Proc_Start
    adds r1, r0, #0
    str r6, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    strh r4, [r1, #0x2e]
    strh r5, [r1, #0x30]
    cmp r4, #0
    bne .L0804F22A
    adds r0, r1, #0
    bl Proc_Break
.L0804F22A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F230: .4byte 0x08B9AE9C
    func_end func_0804F1FC

    thumb_func_start func_0804F234
func_0804F234: @ 0x0804F234
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    blt .L0804F24E
    adds r0, r2, #0
    bl Proc_Break
.L0804F24E:
    pop {r0}
    bx r0
    func_end func_0804F234

    thumb_func_start func_0804F254
func_0804F254: @ 0x0804F254
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F290
    ldr r0, .L0804F274 @ =0x0203E0B8
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x50
    bgt .L0804F280
    ldr r0, .L0804F278 @ =0x081D9630
    ldr r1, .L0804F27C @ =0x02022BC0
    b .L0804F29E
    .align 2, 0
.L0804F274: .4byte 0x0203E0B8
.L0804F278: .4byte 0x081D9630
.L0804F27C: .4byte 0x02022BC0
.L0804F280:
    ldr r0, .L0804F288 @ =0x081D9730
    ldr r1, .L0804F28C @ =0x02022BC0
    b .L0804F29E
    .align 2, 0
.L0804F288: .4byte 0x081D9730
.L0804F28C: .4byte 0x02022BC0
.L0804F290:
    ldr r0, .L0804F2A8 @ =0x0203E0B8
    movs r2, #2
    ldrsh r0, [r0, r2]
    cmp r0, #0x50
    bgt .L0804F2B4
    ldr r0, .L0804F2AC @ =0x081D9630
    ldr r1, .L0804F2B0 @ =0x02022BE0
.L0804F29E:
    movs r2, #0x10
    bl CpuSet
    b .L0804F2BE
    .align 2, 0
.L0804F2A8: .4byte 0x0203E0B8
.L0804F2AC: .4byte 0x081D9630
.L0804F2B0: .4byte 0x02022BE0
.L0804F2B4:
    ldr r0, .L0804F2E0 @ =0x081D9730
    ldr r1, .L0804F2E4 @ =0x02022BE0
    movs r2, #0x10
    bl CpuSet
.L0804F2BE:
    bl EnablePalSync
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    blt .L0804F2D8
    adds r0, r4, #0
    bl Proc_Break
.L0804F2D8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F2E0: .4byte 0x081D9730
.L0804F2E4: .4byte 0x02022BE0
    func_end func_0804F254

    thumb_func_start func_0804F2E8
func_0804F2E8: @ 0x0804F2E8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F328
    ldr r0, .L0804F310 @ =0x0203E0B8
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x50
    bgt .L0804F320
    ldr r0, .L0804F314 @ =0x0203E020
    movs r1, #0
    ldrsh r0, [r0, r1]
    lsls r0, r0, #5
    ldr r1, .L0804F318 @ =0x081D95B0
    adds r0, r0, r1
    ldr r1, .L0804F31C @ =0x02022BC0
    b .L0804F340
    .align 2, 0
.L0804F310: .4byte 0x0203E0B8
.L0804F314: .4byte 0x0203E020
.L0804F318: .4byte 0x081D95B0
.L0804F31C: .4byte 0x02022BC0
.L0804F320:
    ldr r0, .L0804F324 @ =0x081D9730
    b .L0804F33E
    .align 2, 0
.L0804F324: .4byte 0x081D9730
.L0804F328:
    ldr r0, .L0804F348 @ =0x0203E0B8
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r0, #0x50
    bgt .L0804F358
    ldr r0, .L0804F34C @ =0x0203E020
    movs r1, #2
    ldrsh r0, [r0, r1]
    lsls r0, r0, #5
    ldr r1, .L0804F350 @ =0x081D95B0
    adds r0, r0, r1
.L0804F33E:
    ldr r1, .L0804F354 @ =0x02022BE0
.L0804F340:
    movs r2, #0x10
    bl CpuSet
    b .L0804F362
    .align 2, 0
.L0804F348: .4byte 0x0203E0B8
.L0804F34C: .4byte 0x0203E020
.L0804F350: .4byte 0x081D95B0
.L0804F354: .4byte 0x02022BE0
.L0804F358:
    ldr r0, .L0804F374 @ =0x081D9730
    ldr r1, .L0804F378 @ =0x02022BE0
    movs r2, #0x10
    bl CpuSet
.L0804F362:
    bl EnablePalSync
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F374: .4byte 0x081D9730
.L0804F378: .4byte 0x02022BE0
    func_end func_0804F2E8

    thumb_func_start func_0804F37C
func_0804F37C: @ 0x0804F37C
    push {r4, r5, r6, lr}
    mov r6, sl
    mov r5, sb
    mov r4, r8
    push {r4, r5, r6}
    sub sp, #4
    adds r5, r0, #0
    ldr r4, .L0804F438 @ =0x0201777C
    ldr r0, .L0804F43C @ =0x08B9AECC
    movs r1, #3
    bl Proc_Start
    str r0, [r4]
    str r5, [r0, #0x5c]
    movs r3, #0
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L0804F440 @ =0x081D8398
    str r1, [r0, #0x48]
    str r2, [r0, #0x54]
    strh r2, [r0, #0x2e]
    str r2, [r0, #0x4c]
    ldr r1, .L0804F444 @ =0x081D83C2
    str r1, [r0, #0x50]
    str r2, [r0, #0x58]
    adds r0, #0x29
    strb r3, [r0]
    ldr r5, .L0804F448 @ =0x0203E020
    movs r1, #0
    ldrsh r0, [r5, r1]
    lsls r0, r0, #5
    ldr r1, .L0804F44C @ =0x081D95B0
    mov sl, r1
    add r0, sl
    ldr r6, .L0804F450 @ =0x0201F93C
    adds r1, r6, #0
    movs r2, #0x10
    bl func_08067114
    movs r1, #0
    ldrsh r0, [r5, r1]
    lsls r0, r0, #5
    ldr r1, .L0804F454 @ =0x081D9670
    mov sb, r1
    add r0, sb
    ldr r4, .L0804F458 @ =0x0201F96C
    adds r1, r4, #0
    movs r2, #0x10
    bl func_08067114
    ldr r2, .L0804F45C @ =0x0201F99C
    movs r0, #5
    mov r8, r0
    str r0, [sp]
    adds r0, r6, #0
    adds r1, r4, #0
    movs r3, #0x10
    bl func_080671AC
    movs r1, #2
    ldrsh r0, [r5, r1]
    lsls r0, r0, #5
    add r0, sl
    ldr r6, .L0804F460 @ =0x0201F9FC
    adds r1, r6, #0
    movs r2, #0x10
    bl func_08067114
    movs r1, #2
    ldrsh r0, [r5, r1]
    lsls r0, r0, #5
    add r0, sb
    ldr r4, .L0804F464 @ =0x0201FA2C
    adds r1, r4, #0
    movs r2, #0x10
    bl func_08067114
    ldr r2, .L0804F468 @ =0x0201FA5C
    mov r0, r8
    str r0, [sp]
    adds r0, r6, #0
    adds r1, r4, #0
    movs r3, #0x10
    bl func_080671AC
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F438: .4byte 0x0201777C
.L0804F43C: .4byte 0x08B9AECC
.L0804F440: .4byte 0x081D8398
.L0804F444: .4byte 0x081D83C2
.L0804F448: .4byte 0x0203E020
.L0804F44C: .4byte 0x081D95B0
.L0804F450: .4byte 0x0201F93C
.L0804F454: .4byte 0x081D9670
.L0804F458: .4byte 0x0201F96C
.L0804F45C: .4byte 0x0201F99C
.L0804F460: .4byte 0x0201F9FC
.L0804F464: .4byte 0x0201FA2C
.L0804F468: .4byte 0x0201FA5C
    func_end func_0804F37C

    thumb_func_start func_0804F46C
func_0804F46C: @ 0x0804F46C
    push {lr}
    ldr r0, .L0804F47C @ =0x0201777C
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L0804F47C: .4byte 0x0201777C
    func_end func_0804F46C

    thumb_func_start func_0804F480
func_0804F480: @ 0x0804F480
    ldr r0, .L0804F48C @ =0x0201777C
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804F48C: .4byte 0x0201777C
    func_end func_0804F480

    thumb_func_start func_0804F490
func_0804F490: @ 0x0804F490
    ldr r0, .L0804F49C @ =0x0201777C
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #0
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0804F49C: .4byte 0x0201777C
    func_end func_0804F490

    thumb_func_start func_0804F4A0
func_0804F4A0: @ 0x0804F4A0
    push {r4, r5, lr}
    sub sp, #0xc
    adds r4, r0, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    beq .L0804F588
    adds r0, r4, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    blt .L0804F4C6
    str r0, [r4, #0x54]
.L0804F4C6:
    adds r0, r4, #0
    adds r0, #0x2e
    adds r1, r4, #0
    adds r1, #0x4c
    ldr r2, [r4, #0x50]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    blt .L0804F4DE
    str r0, [r4, #0x58]
.L0804F4DE:
    ldr r0, .L0804F508 @ =0x0203E0B8
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x50
    bgt .L0804F51C
    ldr r2, .L0804F50C @ =0x0201F93C
    ldr r3, .L0804F510 @ =0x0201F96C
    ldr r5, .L0804F514 @ =0x0201F99C
    ldr r0, .L0804F518 @ =0x02022BC0
    movs r1, #0x10
    str r1, [sp]
    ldr r1, [r4, #0x54]
    str r1, [sp, #4]
    movs r1, #5
    str r1, [sp, #8]
    adds r1, r2, #0
    adds r2, r3, #0
    adds r3, r5, #0
    bl func_0806722C
    b .L0804F52C
    .align 2, 0
.L0804F508: .4byte 0x0203E0B8
.L0804F50C: .4byte 0x0201F93C
.L0804F510: .4byte 0x0201F96C
.L0804F514: .4byte 0x0201F99C
.L0804F518: .4byte 0x02022BC0
.L0804F51C:
    ldr r0, [r4, #0x58]
    lsls r0, r0, #5
    ldr r1, .L0804F558 @ =0x081D9730
    adds r0, r0, r1
    ldr r1, .L0804F55C @ =0x02022BC0
    movs r2, #8
    bl CpuFastSet
.L0804F52C:
    ldr r0, .L0804F560 @ =0x0203E0B8
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r0, #0x50
    bgt .L0804F574
    ldr r2, .L0804F564 @ =0x0201F9FC
    ldr r3, .L0804F568 @ =0x0201FA2C
    ldr r5, .L0804F56C @ =0x0201FA5C
    ldr r0, .L0804F570 @ =0x02022BE0
    movs r1, #0x10
    str r1, [sp]
    ldr r1, [r4, #0x54]
    str r1, [sp, #4]
    movs r1, #5
    str r1, [sp, #8]
    adds r1, r2, #0
    adds r2, r3, #0
    adds r3, r5, #0
    bl func_0806722C
    b .L0804F584
    .align 2, 0
.L0804F558: .4byte 0x081D9730
.L0804F55C: .4byte 0x02022BC0
.L0804F560: .4byte 0x0203E0B8
.L0804F564: .4byte 0x0201F9FC
.L0804F568: .4byte 0x0201FA2C
.L0804F56C: .4byte 0x0201FA5C
.L0804F570: .4byte 0x02022BE0
.L0804F574:
    ldr r0, [r4, #0x58]
    lsls r0, r0, #5
    ldr r1, .L0804F590 @ =0x081D9730
    adds r0, r0, r1
    ldr r1, .L0804F594 @ =0x02022BE0
    movs r2, #8
    bl CpuFastSet
.L0804F584:
    bl EnablePalSync
.L0804F588:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F590: .4byte 0x081D9730
.L0804F594: .4byte 0x02022BE0
    func_end func_0804F4A0

    thumb_func_start func_0804F598
func_0804F598: @ 0x0804F598
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    mov r8, r3
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    ldr r0, .L0804F5D0 @ =0x08B9AEEC
    movs r1, #4
    bl Proc_Start
    str r6, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r4, [r0, #0x2e]
    strh r5, [r0, #0x30]
    adds r0, #0x29
    mov r1, r8
    strb r1, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F5D0: .4byte 0x08B9AEEC
    func_end func_0804F598

    thumb_func_start func_0804F5D4
func_0804F5D4: @ 0x0804F5D4
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    blt .L0804F632
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F60C
    ldr r0, .L0804F604 @ =0x081D97D0
    ldr r1, .L0804F608 @ =0x02022B40
    movs r2, #8
    bl CpuFastSet
    ldr r0, [r4, #0x5c]
    bl func_08064C90
    b .L0804F61C
    .align 2, 0
.L0804F604: .4byte 0x081D97D0
.L0804F608: .4byte 0x02022B40
.L0804F60C:
    ldr r0, .L0804F638 @ =0x081D97D0
    ldr r1, .L0804F63C @ =0x02022B80
    movs r2, #8
    bl CpuFastSet
    ldr r0, [r4, #0x5c]
    bl func_08064C90
.L0804F61C:
    bl EnablePalSync
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r2, #0x30
    ldrsh r0, [r4, r2]
    cmp r1, r0
    blt .L0804F632
    adds r0, r4, #0
    bl Proc_Break
.L0804F632:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F638: .4byte 0x081D97D0
.L0804F63C: .4byte 0x02022B80
    func_end func_0804F5D4

    thumb_func_start func_0804F640
func_0804F640: @ 0x0804F640
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F66C
    ldr r0, .L0804F664 @ =0x02000054
    ldr r0, [r0]
    ldr r1, .L0804F668 @ =0x02022B40
    movs r2, #8
    bl CpuFastSet
    ldr r0, [r4, #0x5c]
    bl func_08064CD8
    b .L0804F67E
    .align 2, 0
.L0804F664: .4byte 0x02000054
.L0804F668: .4byte 0x02022B40
.L0804F66C:
    ldr r0, .L0804F690 @ =0x02000054
    ldr r0, [r0, #4]
    ldr r1, .L0804F694 @ =0x02022B80
    movs r2, #8
    bl CpuFastSet
    ldr r0, [r4, #0x5c]
    bl func_08064CD8
.L0804F67E:
    bl EnablePalSync
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F690: .4byte 0x02000054
.L0804F694: .4byte 0x02022B80
    func_end func_0804F640

    thumb_func_start func_0804F698
func_0804F698: @ 0x0804F698
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F6B0
    ldr r0, .L0804F6AC @ =0x0203E094
    b .L0804F6B2
    .align 2, 0
.L0804F6AC: .4byte 0x0203E094
.L0804F6B0:
    ldr r0, .L0804F738 @ =0x0203E098
.L0804F6B2:
    ldr r6, [r0]
    ldr r0, .L0804F73C @ =0x08B9AF14
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    adds r0, #0x29
    movs r1, #0
    strb r1, [r0]
    str r5, [r4, #0x5c]
    strh r1, [r4, #0x2c]
    str r1, [r4, #0x44]
    ldr r0, .L0804F740 @ =0x081D83E4
    str r0, [r4, #0x48]
    adds r0, r6, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    str r0, [r4, #0x4c]
    ldr r0, .L0804F744 @ =0x0203E008
    ldrh r0, [r0]
    cmp r0, #1
    bne .L0804F6E4
    str r1, [r4, #0x4c]
.L0804F6E4:
    str r1, [r4, #0x50]
    strh r1, [r4, #0x36]
    strh r1, [r4, #0x34]
    strh r1, [r4, #0x32]
    adds r0, r5, #0
    bl GetAnimPosition
    ldr r1, .L0804F748 @ =0x0201776C
    lsls r0, r0, #2
    adds r0, r0, r1
    str r4, [r0]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F754
    ldr r5, .L0804F74C @ =0x02000054
    ldr r0, [r5]
    ldr r4, .L0804F750 @ =gFadeComponents
    adds r1, r4, #0
    movs r2, #0x10
    bl func_08067114
    ldr r0, [r5]
    adds r5, r4, #0
    adds r5, #0x30
    adds r1, r5, #0
    movs r2, #0x10
    bl func_08067154
    movs r0, #0xc0
    lsls r0, r0, #1
    adds r2, r4, r0
    movs r0, #0x10
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #0x10
    bl func_080671AC
    b .L0804F784
    .align 2, 0
.L0804F738: .4byte 0x0203E098
.L0804F73C: .4byte 0x08B9AF14
.L0804F740: .4byte 0x081D83E4
.L0804F744: .4byte 0x0203E008
.L0804F748: .4byte 0x0201776C
.L0804F74C: .4byte 0x02000054
.L0804F750: .4byte gFadeComponents
.L0804F754:
    ldr r5, .L0804F78C @ =0x02000054
    ldr r0, [r5, #4]
    ldr r4, .L0804F790 @ =0x020222C0
    adds r1, r4, #0
    movs r2, #0x10
    bl func_08067114
    ldr r0, [r5, #4]
    adds r5, r4, #0
    adds r5, #0x30
    adds r1, r5, #0
    movs r2, #0x10
    bl func_08067154
    movs r0, #0xa8
    lsls r0, r0, #2
    adds r2, r4, r0
    movs r0, #0x10
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #0x10
    bl func_080671AC
.L0804F784:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F78C: .4byte 0x02000054
.L0804F790: .4byte 0x020222C0
    func_end func_0804F698

    thumb_func_start func_0804F794
func_0804F794: @ 0x0804F794
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L0804F7CC @ =0x0201776C
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    cmp r0, #0
    beq .L0804F7C6
    adds r0, r4, #0
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    bl Proc_End
    adds r0, r4, #0
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r5
    movs r1, #0
    str r1, [r0]
.L0804F7C6:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F7CC: .4byte 0x0201776C
    func_end func_0804F794

    thumb_func_start func_0804F7D0
func_0804F7D0: @ 0x0804F7D0
    push {r4, lr}
    ldr r4, .L0804F7EC @ =0x0201776C
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #1
    strb r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F7EC: .4byte 0x0201776C
    func_end func_0804F7D0

    thumb_func_start func_0804F7F0
func_0804F7F0: @ 0x0804F7F0
    push {r4, lr}
    ldr r4, .L0804F80C @ =0x0201776C
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    adds r0, #0x29
    movs r1, #0
    strb r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F80C: .4byte 0x0201776C
    func_end func_0804F7F0

    thumb_func_start func_0804F810
func_0804F810: @ 0x0804F810
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r4, .L0804F83C @ =0x0201776C
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    str r5, [r0, #0x4c]
    cmp r5, #0
    bne .L0804F834
    adds r0, r6, #0
    movs r1, #0
    movs r2, #0
    movs r3, #0
    bl func_0804F85C
.L0804F834:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F83C: .4byte 0x0201776C
    func_end func_0804F810

    thumb_func_start func_0804F840
func_0804F840: @ 0x0804F840
    push {r4, lr}
    ldr r4, .L0804F858 @ =0x0201776C
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r0, [r0, #0x4c]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0804F858: .4byte 0x0201776C
    func_end func_0804F840

    thumb_func_start func_0804F85C
func_0804F85C: @ 0x0804F85C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    mov r8, r0
    adds r7, r1, #0
    adds r5, r2, #0
    adds r6, r3, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F8C4
    ldr r0, .L0804F8B8 @ =0x02000054
    ldr r0, [r0]
    ldr r4, .L0804F8BC @ =0x02022B40
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r0, .L0804F8C0 @ =0xFFFFFD20
    adds r4, r4, r0
    str r5, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0x17
    movs r2, #1
    adds r3, r7, #0
    bl func_08066FE8
    bl func_08064AE0
    cmp r0, #0
    beq .L0804F8E6
    mov r0, r8
    bl func_08064CD8
    str r5, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #6
    movs r2, #1
    adds r3, r7, #0
    bl func_08066FE8
    b .L0804F8E6
    .align 2, 0
.L0804F8B8: .4byte 0x02000054
.L0804F8BC: .4byte 0x02022B40
.L0804F8C0: .4byte 0xFFFFFD20
.L0804F8C4:
    ldr r0, .L0804F8F4 @ =0x02000054
    ldr r0, [r0, #4]
    ldr r4, .L0804F8F8 @ =0x02022B80
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r0, .L0804F8FC @ =0xFFFFFCE0
    adds r4, r4, r0
    str r5, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0x19
    movs r2, #1
    adds r3, r7, #0
    bl func_08066FE8
.L0804F8E6:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804F8F4: .4byte 0x02000054
.L0804F8F8: .4byte 0x02022B80
.L0804F8FC: .4byte 0xFFFFFCE0
    func_end func_0804F85C

    thumb_func_start func_0804F900
func_0804F900: @ 0x0804F900
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl func_0804F840
    cmp r0, #0
    beq .L0804F9F6
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    beq .L0804F9F6
    ldr r1, [r4, #0x4c]
    ldr r0, [r4, #0x50]
    cmp r1, r0
    beq .L0804F92A
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    str r1, [r4, #0x50]
.L0804F92A:
    adds r0, r4, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0804F97A
    ldr r0, [r4, #0x4c]
    cmp r0, #2
    beq .L0804F962
    cmp r0, #2
    bgt .L0804F950
    cmp r0, #1
    beq .L0804F95A
    b .L0804F974
.L0804F950:
    cmp r0, #3
    beq .L0804F974
    cmp r0, #4
    beq .L0804F96A
    b .L0804F974
.L0804F95A:
    movs r0, #0
    strh r1, [r4, #0x32]
    strh r0, [r4, #0x34]
    b .L0804F978
.L0804F962:
    movs r0, #0
    strh r0, [r4, #0x32]
    strh r0, [r4, #0x34]
    b .L0804F978
.L0804F96A:
    movs r0, #0
    strh r1, [r4, #0x32]
    strh r0, [r4, #0x34]
    strh r0, [r4, #0x36]
    b .L0804F97A
.L0804F974:
    strh r1, [r4, #0x32]
    strh r1, [r4, #0x34]
.L0804F978:
    strh r1, [r4, #0x36]
.L0804F97A:
    ldr r0, [r4, #0x4c]
    cmp r0, #3
    beq .L0804F9A2
    cmp r0, #3
    bgt .L0804F98A
    cmp r0, #1
    blt .L0804F9F2
    b .L0804F98E
.L0804F98A:
    cmp r0, #4
    bne .L0804F9F2
.L0804F98E:
    ldr r0, [r4, #0x5c]
    movs r2, #0x32
    ldrsh r1, [r4, r2]
    movs r3, #0x34
    ldrsh r2, [r4, r3]
    movs r5, #0x36
    ldrsh r3, [r4, r5]
    bl func_0804F85C
    b .L0804F9F2
.L0804F9A2:
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804F9D4
    ldr r0, .L0804F9CC @ =0x02022B40
    ldr r1, .L0804F9D0 @ =gFadeComponents
    adds r2, r1, #0
    adds r2, #0x30
    movs r6, #0xc0
    lsls r6, r6, #1
    adds r3, r1, r6
    movs r5, #0x10
    str r5, [sp]
    movs r6, #0x32
    ldrsh r4, [r4, r6]
    str r4, [sp, #4]
    str r5, [sp, #8]
    bl func_0806722C
    b .L0804F9F2
    .align 2, 0
.L0804F9CC: .4byte 0x02022B40
.L0804F9D0: .4byte gFadeComponents
.L0804F9D4:
    ldr r0, .L0804FA00 @ =0x02022B80
    ldr r1, .L0804FA04 @ =0x020222C0
    adds r2, r1, #0
    adds r2, #0x30
    movs r5, #0xa8
    lsls r5, r5, #2
    adds r3, r1, r5
    movs r5, #0x10
    str r5, [sp]
    movs r6, #0x32
    ldrsh r4, [r4, r6]
    str r4, [sp, #4]
    str r5, [sp, #8]
    bl func_0806722C
.L0804F9F2:
    bl EnablePalSync
.L0804F9F6:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FA00: .4byte 0x02022B80
.L0804FA04: .4byte 0x020222C0
    func_end func_0804F900

    thumb_func_start func_0804FA08
func_0804FA08: @ 0x0804FA08
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0804FA2C
    ldr r0, .L0804FA24 @ =0x02000054
    ldr r0, [r0]
    ldr r1, .L0804FA28 @ =0x02022B40
    movs r2, #8
    bl CpuFastSet
    b .L0804FA38
    .align 2, 0
.L0804FA24: .4byte 0x02000054
.L0804FA28: .4byte 0x02022B40
.L0804FA2C:
    ldr r0, .L0804FA48 @ =0x02000054
    ldr r0, [r0, #4]
    ldr r1, .L0804FA4C @ =0x02022B80
    movs r2, #8
    bl CpuFastSet
.L0804FA38:
    ldr r0, [r4, #0x5c]
    bl func_08064CD8
    bl EnablePalSync
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FA48: .4byte 0x02000054
.L0804FA4C: .4byte 0x02022B80
    func_end func_0804FA08

    thumb_func_start func_0804FA50
func_0804FA50: @ 0x0804FA50
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    ldr r0, .L0804FA8C @ =0x08B9AF3C
    movs r1, #3
    bl Proc_Start
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L0804FA90 @ =0x081D8406
    str r1, [r0, #0x48]
    str r2, [r0, #0x4c]
    str r2, [r0, #0x50]
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    str r4, [r0, #0x54]
    lsls r5, r5, #0x10
    asrs r5, r5, #0x10
    str r5, [r0, #0x58]
    ldr r1, .L0804FA94 @ =0x02017774
    str r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FA8C: .4byte 0x08B9AF3C
.L0804FA90: .4byte 0x081D8406
.L0804FA94: .4byte 0x02017774
    func_end func_0804FA50

    thumb_func_start func_0804FA98
func_0804FA98: @ 0x0804FA98
    push {r4, lr}
    ldr r4, .L0804FAB0 @ =0x02017774
    ldr r0, [r4]
    cmp r0, #0
    beq .L0804FAAA
    bl Proc_End
    movs r0, #0
    str r0, [r4]
.L0804FAAA:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FAB0: .4byte 0x02017774
    func_end func_0804FA98

    thumb_func_start func_0804FAB4
func_0804FAB4: @ 0x0804FAB4
    ldr r0, .L0804FAC0 @ =0x02017774
    ldr r1, [r0]
    movs r0, #1
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804FAC0: .4byte 0x02017774
    func_end func_0804FAB4

    thumb_func_start func_0804FAC4
func_0804FAC4: @ 0x0804FAC4
    ldr r0, .L0804FAD0 @ =0x02017774
    ldr r1, [r0]
    movs r0, #0
    str r0, [r1, #0x50]
    bx lr
    .align 2, 0
.L0804FAD0: .4byte 0x02017774
    func_end func_0804FAC4

    thumb_func_start func_0804FAD4
func_0804FAD4: @ 0x0804FAD4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x50]
    cmp r0, #1
    beq .L0804FB32
    bl InitIcons
    adds r0, r4, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    blt .L0804FAFA
    str r0, [r4, #0x4c]
.L0804FAFA:
    ldr r0, [r4, #0x54]
    cmp r0, #0
    beq .L0804FB14
    movs r0, #0
    movs r1, #0x1d
    bl ApplyIconPalette
    ldr r0, .L0804FB38 @ =gPal
    ldr r3, [r4, #0x4c]
    movs r1, #0x1d
    movs r2, #1
    bl func_08066F64
.L0804FB14:
    ldr r0, [r4, #0x58]
    cmp r0, #0
    beq .L0804FB2E
    movs r0, #0
    movs r1, #0x1e
    bl ApplyIconPalette
    ldr r0, .L0804FB38 @ =gPal
    ldr r3, [r4, #0x4c]
    movs r1, #0x1e
    movs r2, #1
    bl func_08066F64
.L0804FB2E:
    bl EnablePalSync
.L0804FB32:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FB38: .4byte gPal
    func_end func_0804FAD4

    thumb_func_start func_0804FB3C
func_0804FB3C: @ 0x0804FB3C
    push {r4, lr}
    adds r4, r0, #0
    bl InitIcons
    ldr r0, [r4, #0x54]
    cmp r0, #0
    beq .L0804FB52
    movs r0, #0
    movs r1, #0x1d
    bl ApplyIconPalette
.L0804FB52:
    ldr r0, [r4, #0x58]
    cmp r0, #0
    beq .L0804FB60
    movs r0, #0
    movs r1, #0x1e
    bl ApplyIconPalette
.L0804FB60:
    bl EnablePalSync
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0804FB3C

    thumb_func_start func_0804FB6C
func_0804FB6C: @ 0x0804FB6C
    push {r4, r5, lr}
    bl func_08064AE0
    adds r4, r0, #0
    cmp r4, #0
    bne .L0804FBB8
    ldr r0, .L0804FBA0 @ =0x08B9AF64
    movs r1, #4
    bl Proc_Start
    adds r5, r0, #0
    adds r0, #0x29
    strb r4, [r0]
    strh r4, [r5, #0x2c]
    movs r0, #4
    strh r0, [r5, #0x2e]
    ldr r0, .L0804FBA4 @ =0x02017778
    ldr r0, [r0]
    cmp r0, #0
    bne .L0804FBB0
    ldr r0, .L0804FBA8 @ =0x02022920
    ldr r1, .L0804FBAC @ =0x0201C784
    movs r2, #0x50
    bl CpuFastSet
    b .L0804FBB4
    .align 2, 0
.L0804FBA0: .4byte 0x08B9AF64
.L0804FBA4: .4byte 0x02017778
.L0804FBA8: .4byte 0x02022920
.L0804FBAC: .4byte 0x0201C784
.L0804FBB0:
    bl Proc_End
.L0804FBB4:
    ldr r0, .L0804FBC0 @ =0x02017778
    str r5, [r0]
.L0804FBB8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FBC0: .4byte 0x02017778
    func_end func_0804FB6C

    thumb_func_start func_0804FBC4
func_0804FBC4: @ 0x0804FBC4
    ldr r0, .L0804FBD8 @ =0x02017778
    ldr r0, [r0]
    cmp r0, #0
    beq .L0804FBD4
    adds r1, r0, #0
    adds r1, #0x29
    movs r0, #1
    strb r0, [r1]
.L0804FBD4:
    bx lr
    .align 2, 0
.L0804FBD8: .4byte 0x02017778
    func_end func_0804FBC4

    thumb_func_start func_0804FBDC
func_0804FBDC: @ 0x0804FBDC
    push {lr}
    ldr r1, .L0804FBF4 @ =0x02017778
    ldr r0, [r1]
    cmp r0, #0
    beq .L0804FBEE
    movs r0, #0
    str r0, [r1]
    bl Proc_End
.L0804FBEE:
    pop {r0}
    bx r0
    .align 2, 0
.L0804FBF4: .4byte 0x02017778
    func_end func_0804FBDC

    thumb_func_start func_0804FBF8
func_0804FBF8: @ 0x0804FBF8
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r6, r0]
    movs r1, #0x2e
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #8
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L0804FC54 @ =0x0201C784
    ldr r4, .L0804FC58 @ =0x02022920
    adds r1, r4, #0
    movs r2, #0x50
    bl CpuFastSet
    subs r4, #0xc0
    adds r0, r4, #0
    movs r1, #6
    movs r2, #0xa
    adds r3, r5, #0
    bl func_08066EE8
    bl EnablePalSync
    ldrh r1, [r6, #0x2c]
    adds r1, #1
    strh r1, [r6, #0x2c]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r2, #0x2e
    ldrsh r0, [r6, r2]
    adds r0, #1
    cmp r1, r0
    bne .L0804FC4C
    adds r0, r6, #0
    bl Proc_Break
.L0804FC4C:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FC54: .4byte 0x0201C784
.L0804FC58: .4byte 0x02022920
    func_end func_0804FBF8

    thumb_func_start func_0804FC5C
func_0804FC5C: @ 0x0804FC5C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L0804FC94 @ =0x0201C784
    ldr r4, .L0804FC98 @ =0x02022920
    adds r1, r4, #0
    movs r2, #0x50
    bl CpuFastSet
    subs r4, #0xc0
    adds r0, r4, #0
    movs r1, #6
    movs r2, #0xa
    movs r3, #8
    bl func_08066EE8
    adds r0, r5, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804FC8E
    movs r0, #0
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
.L0804FC8E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FC94: .4byte 0x0201C784
.L0804FC98: .4byte 0x02022920
    func_end func_0804FC5C

    thumb_func_start func_0804FC9C
func_0804FC9C: @ 0x0804FC9C
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #8
    movs r2, #0
    bl Interpolate
    adds r4, r0, #0
    ldr r7, .L0804FD10 @ =0x0201C784
    ldr r6, .L0804FD14 @ =0x02022920
    adds r0, r7, #0
    adds r1, r6, #0
    movs r2, #0x50
    bl CpuFastSet
    adds r0, r6, #0
    subs r0, #0xc0
    movs r1, #6
    movs r2, #0xa
    adds r3, r4, #0
    bl func_08066EE8
    bl EnablePalSync
    ldrh r1, [r5, #0x2c]
    adds r1, #1
    strh r1, [r5, #0x2c]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    adds r0, #1
    cmp r1, r0
    bne .L0804FD06
    ldr r1, .L0804FD18 @ =0x02017778
    movs r0, #0
    str r0, [r1]
    adds r0, r7, #0
    adds r1, r6, #0
    movs r2, #0x50
    bl CpuFastSet
    bl EnablePalSync
    adds r0, r5, #0
    bl Proc_Break
.L0804FD06:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FD10: .4byte 0x0201C784
.L0804FD14: .4byte 0x02022920
.L0804FD18: .4byte 0x02017778
    func_end func_0804FC9C

    thumb_func_start func_0804FD1C
func_0804FD1C: @ 0x0804FD1C
    push {r4, r5, lr}
    ldr r0, .L0804FD4C @ =0x08B9AF94
    movs r1, #4
    bl Proc_Start
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x29
    movs r0, #0
    strb r0, [r1]
    strh r0, [r4, #0x2c]
    movs r0, #4
    strh r0, [r4, #0x2e]
    ldr r5, .L0804FD50 @ =0x02017778
    ldr r0, [r5]
    cmp r0, #0
    beq .L0804FD42
    bl Proc_End
.L0804FD42:
    str r4, [r5]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FD4C: .4byte 0x08B9AF94
.L0804FD50: .4byte 0x02017778
    func_end func_0804FD1C

    thumb_func_start func_0804FD54
func_0804FD54: @ 0x0804FD54
    ldr r0, .L0804FD68 @ =0x02017778
    ldr r0, [r0]
    cmp r0, #0
    beq .L0804FD64
    adds r1, r0, #0
    adds r1, #0x29
    movs r0, #1
    strb r0, [r1]
.L0804FD64:
    bx lr
    .align 2, 0
.L0804FD68: .4byte 0x02017778
    func_end func_0804FD54

    thumb_func_start func_0804FD6C
func_0804FD6C: @ 0x0804FD6C
    ldr r0, .L0804FD80 @ =0x02017778
    ldr r0, [r0]
    cmp r0, #0
    beq .L0804FD7C
    adds r1, r0, #0
    adds r1, #0x29
    movs r0, #2
    strb r0, [r1]
.L0804FD7C:
    bx lr
    .align 2, 0
.L0804FD80: .4byte 0x02017778
    func_end func_0804FD6C

    thumb_func_start func_0804FD84
func_0804FD84: @ 0x0804FD84
    push {lr}
    ldr r1, .L0804FD9C @ =0x02017778
    ldr r0, [r1]
    cmp r0, #0
    beq .L0804FD96
    movs r0, #0
    str r0, [r1]
    bl Proc_End
.L0804FD96:
    pop {r0}
    bx r0
    .align 2, 0
.L0804FD9C: .4byte 0x02017778
    func_end func_0804FD84

    thumb_func_start func_0804FDA0
func_0804FDA0: @ 0x0804FDA0
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r6, .L0804FDCC @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r6, r1]
    cmp r0, #0
    bne .L0804FDD0
    movs r2, #0x2c
    ldrsh r3, [r5, r2]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #4
    movs r2, #0x10
    bl Interpolate
    adds r4, r0, #0
    bl func_080672C4
    b .L0804FE00
    .align 2, 0
.L0804FDCC: .4byte 0x0203E00A
.L0804FDD0:
    movs r2, #0x2c
    ldrsh r3, [r5, r2]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x10
    bl Interpolate
    adds r4, r0, #0
    movs r2, #0
    ldrsh r0, [r6, r2]
    subs r0, #1
    bl func_0806AFFC
    ldr r0, .L0804FE24 @ =gPal
    movs r1, #6
    movs r2, #0xa
    adds r3, r4, #0
    bl func_08066EE8
    bl EnablePalSync
.L0804FE00:
    ldrh r1, [r5, #0x2c]
    adds r1, #1
    strh r1, [r5, #0x2c]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    adds r0, #1
    cmp r1, r0
    bne .L0804FE1A
    adds r0, r5, #0
    bl Proc_Break
.L0804FE1A:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FE24: .4byte gPal
    func_end func_0804FDA0

    thumb_func_start func_0804FE28
func_0804FE28: @ 0x0804FE28
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L0804FE5A
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    ldr r0, .L0804FE60 @ =0x081D8434
    str r0, [r4, #0x48]
    ldr r0, .L0804FE64 @ =0x08B9AFD4
    str r0, [r4, #0x4c]
    ldr r0, .L0804FE68 @ =0x082C7ED0
    ldr r1, .L0804FE6C @ =0x06008000
    bl LZ77UnComp16bit
    ldr r0, .L0804FE70 @ =0x082CD6C4
    ldr r1, .L0804FE74 @ =0x02022920
    movs r2, #8
    bl CpuFastSet
    adds r0, r4, #0
    bl Proc_Break
.L0804FE5A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FE60: .4byte 0x081D8434
.L0804FE64: .4byte 0x08B9AFD4
.L0804FE68: .4byte 0x082C7ED0
.L0804FE6C: .4byte 0x06008000
.L0804FE70: .4byte 0x082CD6C4
.L0804FE74: .4byte 0x02022920
    func_end func_0804FE28

    thumb_func_start func_0804FE78
func_0804FE78: @ 0x0804FE78
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r5, .L0804FEF4 @ =0x0201B784
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    blt .L0804FEBC
    ldr r1, [r4, #0x4c]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r1, r5, #0
    bl LZ77UnComp8bit
    ldr r1, .L0804FEF8 @ =gBg3Tm
    movs r0, #6
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066ACC
    movs r0, #8
    bl EnableBgSync
.L0804FEBC:
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #2
    bne .L0804FEEA
    ldr r0, .L0804FEF8 @ =gBg3Tm
    ldr r1, .L0804FEFC @ =0x0000601F
    bl TmFill
    movs r0, #8
    bl EnableBgSync
    ldr r0, .L0804FF00 @ =gPal
    movs r1, #6
    movs r2, #0xa
    movs r3, #0x10
    bl func_08066EE8
    bl EnablePalSync
    adds r0, r4, #0
    bl Proc_Break
.L0804FEEA:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FEF4: .4byte 0x0201B784
.L0804FEF8: .4byte gBg3Tm
.L0804FEFC: .4byte 0x0000601F
.L0804FF00: .4byte gPal
    func_end func_0804FE78

    thumb_func_start func_0804FF04
func_0804FF04: @ 0x0804FF04
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0804FF24 @ =0x0203E00A
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r0, #0
    bne .L0804FF2C
    ldr r0, .L0804FF28 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl UnpackChapterMapGraphics
    bl RenderMap
    b .L0804FF36
    .align 2, 0
.L0804FF24: .4byte 0x0203E00A
.L0804FF28: .4byte gPlaySt
.L0804FF2C:
    movs r2, #0
    ldrsh r0, [r1, r2]
    subs r0, #1
    bl func_0806B020
.L0804FF36:
    ldr r0, .L0804FF5C @ =gPal
    movs r1, #6
    movs r2, #0xa
    movs r3, #0x10
    bl func_08066EE8
    bl EnablePalSync
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #4
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FF5C: .4byte gPal
    func_end func_0804FF04

    thumb_func_start func_0804FF60
func_0804FF60: @ 0x0804FF60
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r6, .L0804FF8C @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r6, r1]
    cmp r0, #0
    bne .L0804FF90
    movs r2, #0x2c
    ldrsh r3, [r5, r2]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #4
    bl Interpolate
    adds r4, r0, #0
    bl func_080672C4
    b .L0804FFC0
    .align 2, 0
.L0804FF8C: .4byte 0x0203E00A
.L0804FF90:
    movs r2, #0x2c
    ldrsh r3, [r5, r2]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    adds r4, r0, #0
    movs r2, #0
    ldrsh r0, [r6, r2]
    subs r0, #1
    bl func_0806AFFC
    ldr r0, .L0804FFE8 @ =gPal
    movs r1, #6
    movs r2, #0xa
    adds r3, r4, #0
    bl func_08066EE8
    bl EnablePalSync
.L0804FFC0:
    ldrh r1, [r5, #0x2c]
    adds r1, #1
    strh r1, [r5, #0x2c]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    adds r0, #1
    cmp r1, r0
    bne .L0804FFE0
    ldr r1, .L0804FFEC @ =0x02017778
    movs r0, #0
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L0804FFE0:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804FFE8: .4byte gPal
.L0804FFEC: .4byte 0x02017778
    func_end func_0804FF60

    thumb_func_start func_0804FFF0
func_0804FFF0: @ 0x0804FFF0
    ldr r1, .L0804FFF8 @ =0x0201772C
    movs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0804FFF8: .4byte 0x0201772C
    func_end func_0804FFF0

    thumb_func_start func_0804FFFC
func_0804FFFC: @ 0x0804FFFC
    ldr r1, .L08050004 @ =0x0201772C
    movs r0, #0
    str r0, [r1]
    bx lr
    .align 2, 0
.L08050004: .4byte 0x0201772C
    func_end func_0804FFFC

    thumb_func_start func_08050008
func_08050008: @ 0x08050008
    push {lr}
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    pop {r0}
    bx r0
    func_end func_08050008

    thumb_func_start func_08050018
func_08050018: @ 0x08050018
    push {lr}
    sub sp, #4
    movs r0, #0
    str r0, [sp]
    ldr r1, .L08050038 @ =gBg1Tm
    ldr r2, .L0805003C @ =0x01000200
    mov r0, sp
    bl CpuFastSet
    movs r0, #2
    bl EnableBgSync
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L08050038: .4byte gBg1Tm
.L0805003C: .4byte 0x01000200
    func_end func_08050018

    thumb_func_start func_08050040
func_08050040: @ 0x08050040
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r0, .L0805010C @ =gDispIo
    mov ip, r0
    mov r2, ip
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    mov r1, ip
    adds r1, #0x44
    movs r2, #0
    movs r3, #0x10
    mov r8, r3
    movs r0, #0x10
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x46
    strb r2, [r0]
    ldr r0, .L08050110 @ =0x0000FFE0
    mov r1, ip
    ldrh r1, [r1, #0x3c]
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    ldr r1, .L08050114 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0xe0
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    mov r1, ip
    strh r0, [r1, #0x3c]
    movs r5, #0x20
    ldrb r0, [r1, #1]
    orrs r0, r5
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r3, ip
    strb r0, [r3, #1]
    mov r0, ip
    adds r0, #0x2d
    strb r2, [r0]
    adds r0, #4
    strb r2, [r0]
    mov r1, ip
    adds r1, #0x2c
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    mov r6, ip
    adds r6, #0x34
    movs r0, #1
    ldrb r1, [r6]
    orrs r1, r0
    movs r2, #2
    orrs r1, r2
    movs r4, #4
    orrs r1, r4
    movs r3, #8
    orrs r1, r3
    mov r2, r8
    orrs r1, r2
    mov r7, ip
    adds r7, #0x36
    ldrb r2, [r7]
    orrs r0, r2
    movs r2, #3
    rsbs r2, r2, #0
    ands r0, r2
    orrs r0, r4
    orrs r0, r3
    mov r3, r8
    orrs r0, r3
    orrs r1, r5
    strb r1, [r6]
    movs r1, #0x21
    rsbs r1, r1, #0
    ands r0, r1
    strb r0, [r7]
    mov r0, ip
    adds r0, #0x3d
    ldrb r1, [r0]
    orrs r5, r1
    strb r5, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805010C: .4byte gDispIo
.L08050110: .4byte 0x0000FFE0
.L08050114: .4byte 0x0000E0FF
    func_end func_08050040

    thumb_func_start func_08050118
func_08050118: @ 0x08050118
    ldr r3, .L0805013C @ =gDispIo
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
    bx lr
    .align 2, 0
.L0805013C: .4byte gDispIo
    func_end func_08050118

    thumb_func_start StartBattleAnimHitEffectsDefault
StartBattleAnimHitEffectsDefault: @ 0x08050140
    push {lr}
    movs r2, #3
    movs r3, #4
    bl func_08050160
    pop {r0}
    bx r0
    func_end StartBattleAnimHitEffectsDefault

    thumb_func_start func_08050150
func_08050150: @ 0x08050150
    push {lr}
    movs r2, #5
    movs r3, #5
    bl func_08050160
    pop {r0}
    bx r0
    func_end func_08050150

    thumb_func_start func_08050160
func_08050160: @ 0x08050160
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r4, r1, #0
    str r2, [sp]
    mov sl, r3
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805018C
    ldr r0, .L08050188 @ =0x02000000
    ldr r7, [r0, #8]
    ldr r1, [r0, #0xc]
    mov sb, r1
    ldr r5, [r0]
    ldr r0, [r0, #4]
    b .L08050198
    .align 2, 0
.L08050188: .4byte 0x02000000
.L0805018C:
    ldr r0, .L080501A8 @ =0x02000000
    ldr r7, [r0]
    ldr r1, [r0, #4]
    mov sb, r1
    ldr r5, [r0, #8]
    ldr r0, [r0, #0xc]
.L08050198:
    mov r8, r0
    cmp r4, #0
    beq .L080501AC
    cmp r4, #1
    bne .L080501A4
    b .L080502D6
.L080501A4:
    b .L080502DC
    .align 2, 0
.L080501A8: .4byte 0x02000000
.L080501AC:
    adds r0, r7, #0
    bl GetAnimPosition
    adds r1, r0, #0
    ldrh r0, [r7, #0xe]
    subs r0, #1
    lsls r0, r0, #1
    adds r0, r0, r1
    bl GetBattleAnimRoundTypeFlags
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    adds r0, r5, #0
    bl GetAnimPosition
    adds r1, r0, #0
    ldrh r0, [r5, #0xe]
    subs r0, #1
    lsls r0, r0, #1
    adds r0, r0, r1
    bl GetBattleAnimRoundTypeFlags
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r0, r6, #0x10
    asrs r0, r0, #0x10
    movs r1, #0x80
    lsls r1, r1, #6
    ands r0, r1
    cmp r0, #0
    beq .L080501FC
    adds r0, r7, #0
    bl func_0804F840
    cmp r0, #0
    bne .L080501FC
    adds r0, r7, #0
    movs r1, #1
    bl func_0804F810
.L080501FC:
    lsls r0, r4, #0x10
    asrs r1, r0, #0x10
    movs r2, #0x80
    lsls r2, r2, #6
    ands r1, r2
    adds r4, r0, #0
    cmp r1, #0
    beq .L0805021E
    adds r0, r5, #0
    bl func_0804F840
    cmp r0, #0
    bne .L0805021E
    adds r0, r5, #0
    movs r1, #1
    bl func_0804F810
.L0805021E:
    lsls r0, r6, #0x10
    asrs r0, r0, #0x10
    movs r1, #0x80
    lsls r1, r1, #8
    ands r0, r1
    cmp r0, #0
    bne .L08050234
    asrs r0, r4, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L0805023C
.L08050234:
    adds r0, r5, #0
    adds r5, r7, #0
    adds r7, r0, #0
    mov r8, sb
.L0805023C:
    ldr r4, .L080502A4 @ =0x0203E05E
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r6, [r0, r1]
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r4, [r0, r1]
    adds r4, #1
    adds r0, r5, #0
    bl GetAnimPosition
    adds r1, r0, #0
    lsls r0, r6, #1
    adds r0, r0, r1
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r6, r0, #0x10
    adds r0, r5, #0
    bl GetAnimPosition
    adds r1, r0, #0
    lsls r0, r4, #1
    adds r0, r0, r1
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r6, r4
    beq .L080502CA
    adds r0, r5, #0
    bl func_0804D5A4
    adds r0, r7, #0
    bl func_08054764
    cmp r0, #1
    bne .L080502A8
    adds r0, r5, #0
    adds r1, r7, #0
    mov r2, sl
    bl func_0804EAA8
    b .L080502B2
    .align 2, 0
.L080502A4: .4byte 0x0203E05E
.L080502A8:
    adds r0, r5, #0
    adds r1, r7, #0
    ldr r2, [sp]
    bl func_0804EAA8
.L080502B2:
    adds r0, r5, #0
    movs r1, #0
    movs r2, #5
    bl func_0804F1FC
    adds r0, r5, #0
    movs r1, #0
    movs r2, #8
    movs r3, #0
    bl func_0804F598
    b .L080502DC
.L080502CA:
    adds r0, r5, #0
    mov r1, r8
    movs r2, #0
    bl func_0804DE28
    b .L080502DC
.L080502D6:
    adds r0, r5, #0
    bl func_0804DC04
.L080502DC:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08050160

    thumb_func_start func_080502EC
func_080502EC: @ 0x080502EC
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov sb, r1
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805030C
    ldr r0, .L08050308 @ =0x02000000
    ldr r7, [r0, #8]
    ldr r5, [r0]
    ldr r0, [r0, #4]
    b .L08050314
    .align 2, 0
.L08050308: .4byte 0x02000000
.L0805030C:
    ldr r0, .L0805036C @ =0x02000000
    ldr r7, [r0]
    ldr r5, [r0, #8]
    ldr r0, [r0, #0xc]
.L08050314:
    mov r8, r0
    ldr r4, .L08050370 @ =0x0203E05E
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r6, [r0, r1]
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r4, [r0, r1]
    adds r4, #1
    adds r0, r5, #0
    bl GetAnimPosition
    adds r1, r0, #0
    lsls r0, r6, #1
    adds r0, r0, r1
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r6, r0, #0x10
    adds r0, r5, #0
    bl GetAnimPosition
    adds r1, r0, #0
    lsls r0, r4, #1
    adds r0, r0, r1
    bl func_08053340
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    mov r0, sb
    cmp r0, #0
    beq .L08050374
    cmp r0, #1
    beq .L080503CC
    b .L080503D2
    .align 2, 0
.L0805036C: .4byte 0x02000000
.L08050370: .4byte 0x0203E05E
.L08050374:
    cmp r6, r4
    beq .L080503B6
    adds r0, r5, #0
    bl func_0804D86C
    adds r0, r7, #0
    bl func_08054764
    cmp r0, #1
    bne .L08050394
    adds r0, r5, #0
    adds r1, r7, #0
    movs r2, #4
    bl func_0804EAA8
    b .L0805039E
.L08050394:
    adds r0, r5, #0
    adds r1, r7, #0
    movs r2, #3
    bl func_0804EAA8
.L0805039E:
    adds r0, r5, #0
    movs r1, #0
    movs r2, #5
    bl func_0804F1FC
    adds r0, r5, #0
    movs r1, #0
    movs r2, #8
    movs r3, #0
    bl func_0804F598
    b .L080503D2
.L080503B6:
    ldr r1, .L080503C8 @ =0x02017750
    movs r0, #2
    str r0, [r1]
    adds r0, r5, #0
    mov r1, r8
    movs r2, #1
    bl func_0804DE28
    b .L080503D2
    .align 2, 0
.L080503C8: .4byte 0x02017750
.L080503CC:
    adds r0, r5, #0
    bl func_0804DC04
.L080503D2:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080502EC

    thumb_func_start func_080503E0
func_080503E0: @ 0x080503E0
    push {r4, lr}
    adds r4, r1, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080503F8
    ldr r0, .L080503F4 @ =0x02000000
    ldr r0, [r0]
    b .L080503FC
    .align 2, 0
.L080503F4: .4byte 0x02000000
.L080503F8:
    ldr r0, .L08050408 @ =0x02000000
    ldr r0, [r0, #8]
.L080503FC:
    cmp r4, #0
    beq .L0805040C
    cmp r4, #1
    beq .L08050412
    b .L08050416
    .align 2, 0
.L08050408: .4byte 0x02000000
.L0805040C:
    bl func_0804DFD0
    b .L08050416
.L08050412:
    bl func_0804DC04
.L08050416:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080503E0

    thumb_func_start func_0805041C
func_0805041C: @ 0x0805041C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r7, r1, #0
    adds r6, r2, #0
    adds r5, r3, #0
    ldr r0, .L08050440 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08050448
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08050444
    adds r0, r7, #0
    b .L08050458
    .align 2, 0
.L08050440: .4byte 0x0203E02C
.L08050444:
    adds r0, r6, #0
    b .L08050458
.L08050448:
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08050456
    adds r0, r5, #0
    b .L08050458
.L08050456:
    ldr r0, [sp, #0x14]
.L08050458:
    movs r1, #0x78
    bl AnimCreate
    adds r1, r0, #0
    movs r0, #0xa1
    lsls r0, r0, #6
    strh r0, [r1, #8]
    ldrh r0, [r4, #2]
    strh r0, [r1, #2]
    ldrh r0, [r4, #4]
    strh r0, [r1, #4]
    adds r0, r1, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0805041C

    thumb_func_start func_08050478
func_08050478: @ 0x08050478
    push {r4, lr}
    sub sp, #8
    adds r3, r0, #0
    ldr r0, .L080504AC @ =0x0203E02C
    movs r4, #0
    ldrsh r0, [r0, r4]
    adds r4, r2, #0
    cmp r0, #0
    bne .L0805048C
    adds r4, r1, #0
.L0805048C:
    adds r0, r3, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080504B4
    ldr r1, .L080504B0 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066AFC
    b .L080504C8
    .align 2, 0
.L080504AC: .4byte 0x0203E02C
.L080504B0: .4byte gBg1Tm
.L080504B4:
    ldr r1, .L080504D8 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066ACC
.L080504C8:
    movs r0, #2
    bl EnableBgSync
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080504D8: .4byte gBg1Tm
    func_end func_08050478

    thumb_func_start func_080504DC
func_080504DC: @ 0x080504DC
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r3, r1, #0
    ldr r0, .L080504F8 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08050500
    ldr r1, .L080504FC @ =0x02019784
    adds r0, r3, #0
    bl LZ77UnComp8bit
    b .L08050508
    .align 2, 0
.L080504F8: .4byte 0x0203E02C
.L080504FC: .4byte 0x02019784
.L08050500:
    ldr r1, .L0805052C @ =0x02019784
    adds r0, r2, #0
    bl LZ77UnComp8bit
.L08050508:
    ldr r5, .L0805052C @ =0x02019784
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08050534
    ldr r1, .L08050530 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066AFC
    b .L08050548
    .align 2, 0
.L0805052C: .4byte 0x02019784
.L08050530: .4byte gBg1Tm
.L08050534:
    ldr r1, .L08050558 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066ACC
.L08050548:
    movs r0, #2
    bl EnableBgSync
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08050558: .4byte gBg1Tm
    func_end func_080504DC

    thumb_func_start func_0805055C
func_0805055C: @ 0x0805055C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r0, r1, #0
    adds r5, r2, #0
    adds r6, r3, #0
    ldr r7, .L08050594 @ =0x02019784
    adds r1, r7, #0
    bl LZ77UnComp8bit
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805059C
    ldr r1, .L08050598 @ =gBg1Tm
    lsls r2, r5, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r6, #0x10
    lsrs r3, r3, #0x10
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r7, #0
    bl func_08066AFC
    b .L080505B4
    .align 2, 0
.L08050594: .4byte 0x02019784
.L08050598: .4byte gBg1Tm
.L0805059C:
    ldr r1, .L080505C4 @ =gBg1Tm
    lsls r2, r5, #0x10
    lsrs r2, r2, #0x10
    lsls r3, r6, #0x10
    lsrs r3, r3, #0x10
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r7, #0
    bl func_08066ACC
.L080505B4:
    movs r0, #2
    bl EnableBgSync
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080505C4: .4byte gBg1Tm
    func_end func_0805055C

    thumb_func_start func_080505C8
func_080505C8: @ 0x080505C8
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    ldr r5, .L080505E8 @ =0x06010800
    ldr r4, .L080505EC @ =0x0201A784
    adds r1, r4, #0
    bl LZ77UnComp8bit
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl RegisterDataMove
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080505E8: .4byte 0x06010800
.L080505EC: .4byte 0x0201A784
    func_end func_080505C8

    thumb_func_start func_080505F0
func_080505F0: @ 0x080505F0
    push {lr}
    adds r2, r1, #0
    ldr r1, .L08050608 @ =0x02022AA0
    lsls r2, r2, #9
    lsrs r2, r2, #0xb
    bl CpuFastSet
    bl EnablePalSync
    pop {r0}
    bx r0
    .align 2, 0
.L08050608: .4byte 0x02022AA0
    func_end func_080505F0

    thumb_func_start func_0805060C
func_0805060C: @ 0x0805060C
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    ldr r5, .L0805062C @ =0x06002000
    ldr r4, .L08050630 @ =0x02017784
    adds r1, r4, #0
    bl LZ77UnComp8bit
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl RegisterDataMove
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805062C: .4byte 0x06002000
.L08050630: .4byte 0x02017784
    func_end func_0805060C

    thumb_func_start func_08050634
func_08050634: @ 0x08050634
    push {lr}
    adds r2, r1, #0
    ldr r1, .L0805064C @ =0x02022880
    lsls r2, r2, #9
    lsrs r2, r2, #0xb
    bl CpuFastSet
    bl EnablePalSync
    pop {r0}
    bx r0
    .align 2, 0
.L0805064C: .4byte 0x02022880
    func_end func_08050634

    thumb_func_start func_08050650
func_08050650: @ 0x08050650
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r3, #0
    ldr r4, [sp, #0x10]
    movs r3, #0
    cmp r3, r4
    bhs .L08050676
.L0805065E:
    cmp r2, r5
    blo .L08050664
    movs r2, #0
.L08050664:
    lsls r0, r2, #1
    adds r0, r0, r6
    ldrh r0, [r0]
    strh r0, [r1]
    adds r1, #2
    adds r3, #1
    adds r2, #1
    cmp r3, r4
    blo .L0805065E
.L08050676:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08050650

    thumb_func_start func_0805067C
func_0805067C: @ 0x0805067C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r3, #0
    ldr r4, [sp, #0x10]
    movs r3, #0
    cmp r3, r4
    bhs .L080506A2
.L0805068A:
    cmp r2, r5
    blo .L08050690
    movs r2, #0
.L08050690:
    lsls r0, r2, #1
    adds r0, r0, r6
    ldrh r0, [r0]
    strh r0, [r1, #0x20]
    adds r1, #2
    adds r3, #1
    adds r2, #1
    cmp r3, r4
    blo .L0805068A
.L080506A2:
    bl EnablePalSync
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805067C

    thumb_func_start func_080506AC
func_080506AC: @ 0x080506AC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r3, #0
    ldr r4, [sp, #0x10]
    movs r3, #0
    cmp r3, r4
    bhs .L080506D8
    movs r0, #0x90
    lsls r0, r0, #2
    adds r1, r1, r0
.L080506C0:
    cmp r2, r5
    blo .L080506C6
    movs r2, #0
.L080506C6:
    lsls r0, r2, #1
    adds r0, r0, r6
    ldrh r0, [r0]
    strh r0, [r1]
    adds r1, #2
    adds r3, #1
    adds r2, #1
    cmp r3, r4
    blo .L080506C0
.L080506D8:
    bl EnablePalSync
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080506AC

    thumb_func_start func_080506E4
func_080506E4: @ 0x080506E4
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r3, r1, #0
    ldrh r0, [r5]
    adds r6, r0, #0
    cmp r6, #0
    bne .L0805075C
    ldrh r0, [r3]
    mov ip, r0
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrh r4, [r0]
    movs r7, #0
    ldrsh r1, [r0, r7]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08050720
    movs r0, #6
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08050720
    movs r0, #5
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08050720
    movs r0, #4
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08050724
.L08050720:
    adds r0, r1, #0
    b .L08050764
.L08050724:
    movs r0, #2
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08050732
    strh r6, [r3]
    ldrh r4, [r2]
    b .L08050746
.L08050732:
    movs r0, #3
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08050746
    mov r0, ip
    subs r0, #1
    strh r0, [r3]
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrh r4, [r0]
.L08050746:
    ldrh r1, [r3]
    lsls r0, r1, #2
    adds r0, r0, r2
    ldrh r0, [r0, #2]
    adds r1, #1
    strh r1, [r3]
    subs r0, #1
    strh r0, [r5]
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    b .L08050764
.L0805075C:
    subs r0, #1
    strh r0, [r5]
    movs r0, #7
    rsbs r0, r0, #0
.L08050764:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080506E4

    thumb_func_start func_0805076C
func_0805076C: @ 0x0805076C
    ldr r1, .L08050774 @ =0x0201775C
    movs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L08050774: .4byte 0x0201775C
    func_end func_0805076C

    thumb_func_start func_08050778
func_08050778: @ 0x08050778
    ldr r0, .L08050788 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #2
    bne .L0805078C
    movs r0, #0x18
    b .L08050796
    .align 2, 0
.L08050788: .4byte 0x0203E02C
.L0805078C:
    cmp r0, #1
    beq .L08050794
    movs r0, #0
    b .L08050796
.L08050794:
    movs r0, #0x10
.L08050796:
    bx lr
    func_end func_08050778

    thumb_func_start func_08050798
func_08050798: @ 0x08050798
    push {lr}
    sub sp, #4
    ldr r1, .L080507B0 @ =0x0201C8C4
    str r0, [sp]
    ldr r2, .L080507B4 @ =0x050002D6
    mov r0, sp
    bl CpuSet
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L080507B0: .4byte 0x0201C8C4
.L080507B4: .4byte 0x050002D6
    func_end func_08050798

    thumb_func_start func_080507B8
func_080507B8: @ 0x080507B8
    push {lr}
    sub sp, #4
    ldr r1, .L080507D0 @ =0x0201D41C
    str r0, [sp]
    ldr r2, .L080507D4 @ =0x05000948
    mov r0, sp
    bl CpuSet
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L080507D0: .4byte 0x0201D41C
.L080507D4: .4byte 0x05000948
    func_end func_080507B8

    thumb_func_start func_080507D8
func_080507D8: @ 0x080507D8
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    cmp r0, #0
    bne .L080507F4
    ldr r0, .L080507F0 @ =0x02000000
    ldr r3, [r0]
    strh r1, [r3, #2]
    strh r2, [r3, #4]
    ldr r3, [r0, #4]
    b .L080507FE
    .align 2, 0
.L080507F0: .4byte 0x02000000
.L080507F4:
    ldr r0, .L08050804 @ =0x02000000
    ldr r3, [r0, #8]
    strh r1, [r3, #2]
    strh r2, [r3, #4]
    ldr r3, [r0, #0xc]
.L080507FE:
    strh r1, [r3, #2]
    strh r2, [r3, #4]
    bx lr
    .align 2, 0
.L08050804: .4byte 0x02000000
    func_end func_080507D8

    thumb_func_start func_08050808
func_08050808: @ 0x08050808
    ldr r0, .L08050810 @ =0x0201FABC
    ldr r0, [r0]
    bx lr
    .align 2, 0
.L08050810: .4byte 0x0201FABC
    func_end func_08050808

    thumb_func_start func_08050814
func_08050814: @ 0x08050814
    ldr r1, .L0805081C @ =0x0201FABC
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805081C: .4byte 0x0201FABC
    func_end func_08050814

    thumb_func_start NewEfxspdquake
NewEfxspdquake: @ 0x08050820
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0805083C @ =0x08B9AFE4
    movs r1, #1
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    ldr r1, .L08050840 @ =0x081D7F22
    str r1, [r0, #0x44]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805083C: .4byte 0x08B9AFE4
.L08050840: .4byte 0x081D7F22
    func_end NewEfxspdquake

    thumb_func_start func_08050844
func_08050844: @ 0x08050844
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    ldr r0, [r7, #0x44]
    mov r8, r0
    movs r1, #0x2c
    ldrsh r0, [r7, r1]
    lsls r0, r0, #2
    add r0, r8
    ldrh r4, [r0, #2]
    ldr r3, .L080508C8 @ =0x02000000
    ldr r6, [r3]
    ldrh r2, [r0]
    mov ip, r2
    movs r5, #0
    ldrsh r2, [r0, r5]
    ldrh r1, [r6, #2]
    adds r0, r1, r2
    movs r5, #0
    mov sb, r5
    strh r0, [r6, #2]
    lsls r1, r4, #0x10
    asrs r1, r1, #0x10
    ldrh r5, [r6, #4]
    adds r0, r5, r1
    strh r0, [r6, #4]
    ldr r6, [r3, #4]
    ldrh r5, [r6, #2]
    adds r0, r5, r2
    strh r0, [r6, #2]
    ldrh r5, [r6, #4]
    adds r0, r5, r1
    strh r0, [r6, #4]
    ldr r6, [r3, #8]
    ldrh r5, [r6, #2]
    adds r0, r5, r2
    strh r0, [r6, #2]
    ldrh r5, [r6, #4]
    adds r0, r5, r1
    strh r0, [r6, #4]
    ldr r6, [r3, #0xc]
    ldrh r0, [r6, #2]
    adds r2, r0, r2
    strh r2, [r6, #2]
    ldrh r2, [r6, #4]
    adds r1, r2, r1
    strh r1, [r6, #4]
    ldr r0, .L080508CC @ =gDispIo
    ldrh r1, [r0, #0x26]
    mov r2, ip
    subs r5, r1, r2
    strh r5, [r0, #0x26]
    ldrh r5, [r0, #0x24]
    subs r4, r5, r4
    strh r4, [r0, #0x24]
    bl func_08050808
    cmp r0, #0
    bne .L080508D0
    adds r0, r7, #0
    bl Proc_Break
    b .L08050906
    .align 2, 0
.L080508C8: .4byte 0x02000000
.L080508CC: .4byte gDispIo
.L080508D0:
    bl func_08050808
    cmp r0, #2
    bne .L080508EC
    ldr r0, .L080508E8 @ =0x081D7FB6
    str r0, [r7, #0x44]
    mov r0, sb
    strh r0, [r7, #0x2c]
    movs r0, #3
    bl func_08050814
    b .L08050906
    .align 2, 0
.L080508E8: .4byte 0x081D7FB6
.L080508EC:
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    movs r1, #0x2c
    ldrsh r0, [r7, r1]
    lsls r0, r0, #2
    add r0, r8
    ldr r1, .L08050914 @ =0x00007FFF
    ldrh r0, [r0]
    cmp r0, r1
    bne .L08050906
    mov r2, sb
    strh r2, [r7, #0x2c]
.L08050906:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08050914: .4byte 0x00007FFF
    func_end func_08050844

    thumb_func_start func_08050918
func_08050918: @ 0x08050918
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r2, .L08050968 @ =0x02000028
    movs r0, #0
    ldrsh r1, [r2, r0]
    ldr r6, .L0805096C @ =0x0201FB00
    ldr r0, [r6]
    subs r1, r1, r0
    ldr r3, .L08050970 @ =0x0200002C
    movs r5, #2
    ldrsh r4, [r2, r5]
    subs r4, r4, r0
    movs r0, #2
    ldrsh r5, [r3, r0]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r0, #0
    ldrsh r2, [r3, r0]
    movs r0, #0
    bl func_080507D8
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    movs r0, #1
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_080507D8
    ldr r0, .L08050974 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08050978
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    b .L08050986
    .align 2, 0
.L08050968: .4byte 0x02000028
.L0805096C: .4byte 0x0201FB00
.L08050970: .4byte 0x0200002C
.L08050974: .4byte 0x0203E02C
.L08050978:
    cmp r0, #0
    blt .L08050986
    cmp r0, #2
    bgt .L08050986
    ldr r0, [r6]
    bl func_0804E6DC
.L08050986:
    adds r0, r7, #0
    bl Proc_Break
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08050918
