    .include "asm_prelude.inc"

    thumb_func_start func_08050994
func_08050994: @ 0x08050994
    push {lr}
    bl func_08051D50
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_08050994

    thumb_func_start func_080509A4
func_080509A4: @ 0x080509A4
    push {lr}
    bl func_080554F0
    cmp r0, #1
    bne .L080509B4
    bl func_08055570
    b .L080509F4
.L080509B4:
    bl func_0806B78C
    cmp r0, #1
    bne .L080509C2
    bl func_0806B7A8
    b .L080509F4
.L080509C2:
    bl func_0804B1AC
    bl AnimClearAll
    bl func_0804D43C
    ldr r1, .L080509F8 @ =0x02017744
    str r0, [r1]
    bl func_08050AAC
    ldr r0, .L080509FC @ =0x02000000
    movs r1, #0
    str r1, [r0]
    str r1, [r0, #4]
    str r1, [r0, #8]
    str r1, [r0, #0xc]
    ldr r0, .L08050A00 @ =0x02000010
    str r1, [r0]
    str r1, [r0, #4]
    ldr r0, .L08050A04 @ =func_08050A38
    bl SetMainFunc
    movs r0, #0
    bl SetOnHBlankA
.L080509F4:
    pop {r0}
    bx r0
    .align 2, 0
.L080509F8: .4byte 0x02017744
.L080509FC: .4byte 0x02000000
.L08050A00: .4byte 0x02000010
.L08050A04: .4byte func_08050A38
    func_end func_080509A4

    thumb_func_start func_08050A08
func_08050A08: @ 0x08050A08
    push {lr}
    bl func_080554F0
    cmp r0, #1
    bne .L08050A18
    bl func_08055594
    b .L08050A30
.L08050A18:
    bl func_0806B78C
    cmp r0, #1
    bne .L08050A26
    bl func_0806B7CC
    b .L08050A30
.L08050A26:
    bl func_08050EB4
    ldr r0, .L08050A34 @ =func_08050A38
    bl SetMainFunc
.L08050A30:
    pop {r0}
    bx r0
    .align 2, 0
.L08050A34: .4byte func_08050A38
    func_end func_08050A08

    thumb_func_start func_08050A38
func_08050A38: @ 0x08050A38
    push {r4, lr}
    ldr r0, .L08050A9C @ =gpKeySt
    ldr r0, [r0]
    bl RefreshKeySt
    bl ClearSprites
    ldr r4, .L08050AA0 @ =gProcTreeRoots
    ldr r0, [r4, #4]
    bl Proc_Run
    bl GetGameLock
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08050A5E
    ldr r0, [r4, #8]
    bl Proc_Run
.L08050A5E:
    ldr r0, [r4, #0xc]
    bl Proc_Run
    ldr r0, [r4, #0x14]
    bl Proc_Run
    movs r0, #0
    bl PutSpriteLayerOam
    ldr r0, [r4, #0x10]
    bl Proc_Run
    bl AnimUpdateAll
    bl func_08053454
    movs r0, #0xd
    bl PutSpriteLayerOam
    ldr r1, .L08050AA4 @ =gBmSt
    movs r0, #1
    strb r0, [r1]
    ldr r0, .L08050AA8 @ =0x04000006
    ldrh r0, [r0]
    strh r0, [r1, #6]
    bl VBlankIntrWait
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08050A9C: .4byte gpKeySt
.L08050AA0: .4byte gProcTreeRoots
.L08050AA4: .4byte gBmSt
.L08050AA8: .4byte 0x04000006
    func_end func_08050A38

    thumb_func_start func_08050AAC
func_08050AAC: @ 0x08050AAC
    push {lr}
    ldr r0, .L08050ABC @ =0x08B9B004
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08050ABC: .4byte 0x08B9B004
    func_end func_08050AAC

    thumb_func_start func_08050AC0
func_08050AC0: @ 0x08050AC0
    push {r4, r5, r6, lr}
    mov r6, sl
    mov r5, sb
    mov r4, r8
    push {r4, r5, r6}
    sub sp, #4
    adds r5, r0, #0
    movs r4, #0
    movs r3, #0
    strh r3, [r5, #0x2c]
    movs r0, #0xf
    strh r0, [r5, #0x2e]
    ldr r2, .L08050BC0 @ =0x0203E02E
    movs r1, #0
    ldrsh r0, [r2, r1]
    movs r6, #4
    ldrsh r1, [r2, r6]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #8
    strh r0, [r5, #0x34]
    strh r0, [r5, #0x32]
    movs r1, #2
    ldrsh r0, [r2, r1]
    movs r6, #6
    ldrsh r1, [r2, r6]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #8
    strh r0, [r5, #0x3c]
    strh r0, [r5, #0x3a]
    str r3, [sp]
    ldr r1, .L08050BC4 @ =gBg2Tm
    ldr r2, .L08050BC8 @ =0x01000200
    mov r0, sp
    bl CpuFastSet
    movs r0, #4
    bl EnableBgSync
    ldr r6, .L08050BCC @ =gDispIo
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0xc0
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    adds r0, r6, #0
    adds r0, #0x44
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r1, #0xa
    movs r0, #4
    mov sl, r0
    movs r0, #4
    strb r0, [r1]
    ldr r0, .L08050BD0 @ =0x0000FFE0
    ldrh r1, [r6, #0x3c]
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    strh r0, [r6, #0x3c]
    movs r2, #0x20
    mov sb, r2
    mov r0, sb
    ldrb r1, [r6, #1]
    orrs r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r6, #1]
    adds r0, r6, #0
    adds r0, #0x2d
    strb r4, [r0]
    adds r0, #4
    strb r4, [r0]
    adds r1, r6, #0
    adds r1, #0x2c
    movs r0, #0xf0
    strb r0, [r1]
    adds r1, #4
    movs r0, #0xa0
    strb r0, [r1]
    movs r2, #0x34
    adds r2, r2, r6
    mov r8, r2
    movs r0, #1
    ldrb r1, [r2]
    orrs r1, r0
    movs r4, #2
    orrs r1, r4
    mov r2, sl
    orrs r1, r2
    movs r3, #8
    orrs r1, r3
    movs r2, #0x10
    orrs r1, r2
    adds r6, #0x36
    ldrb r2, [r6]
    orrs r0, r2
    orrs r0, r4
    mov r2, sl
    orrs r0, r2
    orrs r0, r3
    movs r2, #0x11
    rsbs r2, r2, #0
    ands r0, r2
    subs r2, #0x10
    ands r1, r2
    mov r2, r8
    strb r1, [r2]
    mov r1, sb
    orrs r0, r1
    strb r0, [r6]
    adds r0, r5, #0
    bl Proc_Break
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08050BC0: .4byte 0x0203E02E
.L08050BC4: .4byte gBg2Tm
.L08050BC8: .4byte 0x01000200
.L08050BCC: .4byte gDispIo
.L08050BD0: .4byte 0x0000FFE0
    func_end func_08050AC0

    thumb_func_start func_08050BD4
func_08050BD4: @ 0x08050BD4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r7, r0, #0
    ldrh r0, [r7, #0x2c]
    ldrh r1, [r7, #0x2e]
    cmp r0, r1
    beq .L08050BEC
    adds r0, #1
    strh r0, [r7, #0x2c]
.L08050BEC:
    movs r0, #0x32
    ldrsh r2, [r7, r0]
    movs r1, #0x2c
    ldrsh r3, [r7, r1]
    movs r1, #0x2e
    ldrsh r0, [r7, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    adds r6, r0, #0
    movs r0, #0x3a
    ldrsh r2, [r7, r0]
    movs r1, #0x2c
    ldrsh r3, [r7, r1]
    movs r1, #0x2e
    ldrsh r0, [r7, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    adds r5, r0, #0
    movs r0, #0x34
    ldrsh r2, [r7, r0]
    movs r1, #0x2c
    ldrsh r3, [r7, r1]
    movs r1, #0x2e
    ldrsh r0, [r7, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0xf0
    bl Interpolate
    adds r4, r0, #0
    movs r0, #0x3c
    ldrsh r2, [r7, r0]
    movs r1, #0x2c
    ldrsh r3, [r7, r1]
    movs r1, #0x2e
    ldrsh r0, [r7, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0xa0
    bl Interpolate
    ldr r1, .L08050CD4 @ =gDispIo
    movs r2, #0x2d
    adds r2, r2, r1
    mov r8, r2
    movs r2, #0
    mov sb, r2
    mov r2, r8
    strb r6, [r2]
    adds r6, r1, #0
    adds r6, #0x31
    strb r5, [r6]
    adds r5, r1, #0
    adds r5, #0x2c
    strb r4, [r5]
    adds r4, r1, #0
    adds r4, #0x30
    strb r0, [r4]
    ldrh r0, [r7, #0x2c]
    ldrh r2, [r7, #0x2e]
    cmp r0, r2
    bne .L08050CC4
    adds r2, r1, #0
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
    movs r0, #0
    bl InitOam
    bl LockBmDisplay
    mov r0, sb
    mov r2, r8
    strb r0, [r2]
    strb r0, [r6]
    movs r0, #0xf0
    strb r0, [r5]
    movs r0, #0xa0
    strb r0, [r4]
    ldr r0, .L08050CD8 @ =gPal
    movs r1, #6
    movs r2, #0xa
    movs r3, #4
    bl func_08066EE8
    bl EnablePalSync
    bl EndAllMus
    adds r0, r7, #0
    bl Proc_Break
.L08050CC4:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08050CD4: .4byte gDispIo
.L08050CD8: .4byte gPal
    func_end func_08050BD4

    thumb_func_start func_08050CDC
func_08050CDC: @ 0x08050CDC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08050D08 @ =0x0203E008
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08050D40
    bl func_0804C1D0
    bl func_0804CD64
    ldr r0, .L08050D0C @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #3
    beq .L08050D10
    cmp r0, #3
    ble .L08050D40
    cmp r0, #4
    beq .L08050D38
    b .L08050D40
    .align 2, 0
.L08050D08: .4byte 0x0203E008
.L08050D0C: .4byte 0x0203E02C
.L08050D10:
    ldr r4, .L08050D34 @ =0x0203E010
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bne .L08050D22
    bl func_0804C46C
    bl func_0804CDC8
.L08050D22:
    movs r1, #2
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bne .L08050D40
    bl func_0804C47C
    bl func_0804CDD8
    b .L08050D40
    .align 2, 0
.L08050D34: .4byte 0x0203E010
.L08050D38:
    bl func_0804C46C
    bl func_0804CDC8
.L08050D40:
    bl func_0804CF5C
    movs r0, #0
    bl func_080516E8
    movs r0, #0
    bl func_08051274
    movs r0, #0
    movs r1, #0xb
    bl func_08051A9C
    movs r0, #0
    movs r1, #0xb
    movs r2, #0
    bl func_08051B80
    movs r0, #0
    movs r1, #0xb
    bl func_08051C80
    movs r0, #0
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08050CDC

    thumb_func_start func_08050D7C
func_08050D7C: @ 0x08050D7C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xb
    ble .L08050DBC
    ldr r0, .L08050DAC @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08050DA0
    bl func_08064AE0
    cmp r0, #0
    beq .L08050DB0
.L08050DA0:
    bl func_0804B218
    adds r0, r4, #0
    bl Proc_End
    b .L08050DBC
    .align 2, 0
.L08050DAC: .4byte 0x0203E00A
.L08050DB0:
    strh r0, [r4, #0x2c]
    bl func_0804B218
    adds r0, r4, #0
    bl Proc_Break
.L08050DBC:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08050D7C

    thumb_func_start func_08050DC4
func_08050DC4: @ 0x08050DC4
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r0, #8
    str r0, [sp]
    movs r0, #0
    movs r1, #4
    movs r2, #0x10
    bl Interpolate
    bl func_080672C4
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bne .L08050DF8
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r4, #0
    bl Proc_Break
.L08050DF8:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08050DC4

    thumb_func_start func_08050E00
func_08050E00: @ 0x08050E00
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08050E14 @ =0x0203E00E
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08050E1C
    ldr r1, .L08050E18 @ =0x0201FACC
    movs r0, #6
    b .L08050E20
    .align 2, 0
.L08050E14: .4byte 0x0203E00E
.L08050E18: .4byte 0x0201FACC
.L08050E1C:
    ldr r1, .L08050E48 @ =0x0201FACC
    movs r0, #0xa
.L08050E20:
    str r0, [r1]
    ldr r0, .L08050E4C @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    bl func_0806B020
    ldr r0, .L08050E50 @ =gPal
    movs r1, #6
    movs r2, #0xa
    movs r3, #0x10
    bl func_08066EE8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08050E48: .4byte 0x0201FACC
.L08050E4C: .4byte 0x0203E00A
.L08050E50: .4byte gPal
    func_end func_08050E00

    thumb_func_start func_08050E54
func_08050E54: @ 0x08050E54
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r0, #8
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    adds r4, r0, #0
    ldr r0, .L08050EAC @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #1
    bl func_0806AFFC
    ldr r0, .L08050EB0 @ =gPal
    movs r1, #6
    movs r2, #0xa
    adds r3, r4, #0
    bl func_08066EE8
    bl EnablePalSync
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bne .L08050EA2
    movs r0, #0
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
.L08050EA2:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08050EAC: .4byte 0x0203E00A
.L08050EB0: .4byte gPal
    func_end func_08050E54

    thumb_func_start func_08050EB4
func_08050EB4: @ 0x08050EB4
    push {lr}
    ldr r0, .L08050EC8 @ =0x08B9B04C
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r0}
    bx r0
    .align 2, 0
.L08050EC8: .4byte 0x08B9B04C
    func_end func_08050EB4

    thumb_func_start func_08050ECC
func_08050ECC: @ 0x08050ECC
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r7, .L08050EF0 @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r7, r1]
    cmp r0, #0
    beq .L08050EE6
    bl func_08064AE0
    adds r6, r0, #0
    cmp r6, #0
    beq .L08050EF4
.L08050EE6:
    adds r0, r5, #0
    bl Proc_Break
    b .L08050F38
    .align 2, 0
.L08050EF0: .4byte 0x0203E00A
.L08050EF4:
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r0, #8
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x10
    bl Interpolate
    adds r4, r0, #0
    movs r1, #0
    ldrsh r0, [r7, r1]
    subs r0, #1
    bl func_0806AFFC
    ldr r0, .L08050F40 @ =gPal
    movs r1, #6
    movs r2, #0xa
    adds r3, r4, #0
    bl func_08066EE8
    bl EnablePalSync
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bne .L08050F38
    strh r6, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
.L08050F38:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08050F40: .4byte gPal
    func_end func_08050ECC

    thumb_func_start func_08050F44
func_08050F44: @ 0x08050F44
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08050F64 @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08050F5A
    bl func_08064AE0
    cmp r0, #0
    beq .L08050F68
.L08050F5A:
    adds r0, r4, #0
    bl Proc_Break
    b .L08050F8E
    .align 2, 0
.L08050F64: .4byte 0x0203E00A
.L08050F68:
    ldr r0, .L08050F94 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl UnpackChapterMapGraphics
    movs r0, #0x10
    bl func_080672C4
    bl RenderMap
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    adds r0, r4, #0
    bl Proc_Break
.L08050F8E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08050F94: .4byte gPlaySt
    func_end func_08050F44

    thumb_func_start func_08050F98
func_08050F98: @ 0x08050F98
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, .L08050FBC @ =0x0203E00A
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08050FB2
    bl func_08064AE0
    adds r5, r0, #0
    cmp r5, #0
    beq .L08050FC0
.L08050FB2:
    adds r0, r4, #0
    bl Proc_Break
    b .L08050FEC
    .align 2, 0
.L08050FBC: .4byte 0x0203E00A
.L08050FC0:
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r0, #8
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #4
    bl Interpolate
    bl func_080672C4
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bne .L08050FEC
    strh r5, [r4, #0x2c]
    adds r0, r4, #0
    bl Proc_Break
.L08050FEC:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08050F98

    thumb_func_start func_08050FF4
func_08050FF4: @ 0x08050FF4
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r2, .L08051050 @ =0x0203E02E
    movs r1, #0
    ldrsh r0, [r2, r1]
    movs r3, #4
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #8
    strh r0, [r4, #0x34]
    strh r0, [r4, #0x32]
    movs r1, #2
    ldrsh r0, [r2, r1]
    movs r3, #6
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #8
    strh r0, [r4, #0x3c]
    strh r0, [r4, #0x3a]
    bl AnimClearAll
    movs r0, #1
    bl func_080516E8
    movs r0, #1
    bl func_08051274
    movs r0, #1
    movs r1, #0xb
    bl func_08051A9C
    movs r0, #1
    movs r1, #0xb
    bl func_08051C80
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08051050: .4byte 0x0203E02E
    func_end func_08050FF4

    thumb_func_start func_08051054
func_08051054: @ 0x08051054
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r5, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xc
    ble .L080510D4
    bl func_0804C438
    adds r0, r4, #0
    bl Proc_Break
    bl InitBmBgLayers
    ldr r0, .L080510DC @ =gDispIo
    mov ip, r0
    movs r0, #0x20
    mov r1, ip
    ldrb r1, [r1, #1]
    orrs r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r2, ip
    strb r0, [r2, #1]
    mov r0, ip
    adds r0, #0x2d
    strb r5, [r0]
    adds r0, #4
    strb r5, [r0]
    subs r0, #5
    strb r5, [r0]
    adds r0, #4
    strb r5, [r0]
    mov r5, ip
    adds r5, #0x34
    movs r1, #1
    ldrb r0, [r5]
    orrs r0, r1
    movs r6, #2
    orrs r0, r6
    movs r4, #4
    orrs r0, r4
    movs r3, #8
    orrs r0, r3
    movs r2, #0x10
    orrs r0, r2
    strb r0, [r5]
    mov r2, ip
    adds r2, #0x36
    ldrb r0, [r2]
    orrs r1, r0
    orrs r1, r6
    orrs r1, r4
    orrs r1, r3
    movs r0, #0x11
    rsbs r0, r0, #0
    ands r1, r0
    strb r1, [r2]
.L080510D4:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080510DC: .4byte gDispIo
    func_end func_08051054

    thumb_func_start func_080510E0
func_080510E0: @ 0x080510E0
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #0xf
    strh r0, [r5, #0x2e]
    bl ResetUnitSprites
    bl func_0802E314
    bl RefreshUnitSprites
    bl ForceSyncUnitSpriteSheet
    bl ApplyUnitSpritePalettes
    ldr r2, .L08051168 @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0xc0
    ldrb r3, [r1]
    orrs r0, r3
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x44
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r1, #0xa
    movs r0, #4
    strb r0, [r1]
    ldr r0, .L0805116C @ =0x0000FFE0
    ldrh r1, [r2, #0x3c]
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    strh r0, [r2, #0x3c]
    adds r1, r2, #0
    adds r1, #0x34
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r3, [r1]
    ands r0, r3
    strb r0, [r1]
    adds r1, #2
    movs r0, #0x20
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    bl func_080554F0
    cmp r0, #1
    beq .L08051150
    bl ApplyChapterMapPalettes
.L08051150:
    bl func_0804B1A0
    cmp r0, #1
    bne .L0805115C
    bl func_08044FB8
.L0805115C:
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08051168: .4byte gDispIo
.L0805116C: .4byte 0x0000FFE0
    func_end func_080510E0

    thumb_func_start func_08051170
func_08051170: @ 0x08051170
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    adds r7, r0, #0
    ldrh r0, [r7, #0x2c]
    ldrh r1, [r7, #0x2e]
    cmp r0, r1
    beq .L08051188
    adds r0, #1
    strh r0, [r7, #0x2c]
.L08051188:
    movs r2, #0x32
    ldrsh r1, [r7, r2]
    movs r0, #0x2c
    ldrsh r3, [r7, r0]
    movs r2, #0x2e
    ldrsh r0, [r7, r2]
    str r0, [sp]
    movs r0, #0
    movs r2, #0
    bl Interpolate
    adds r6, r0, #0
    movs r0, #0x3a
    ldrsh r1, [r7, r0]
    movs r2, #0x2c
    ldrsh r3, [r7, r2]
    movs r2, #0x2e
    ldrsh r0, [r7, r2]
    str r0, [sp]
    movs r0, #0
    movs r2, #0
    bl Interpolate
    adds r5, r0, #0
    movs r0, #0x34
    ldrsh r1, [r7, r0]
    movs r2, #0x2c
    ldrsh r3, [r7, r2]
    movs r2, #0x2e
    ldrsh r0, [r7, r2]
    str r0, [sp]
    movs r0, #0
    movs r2, #0xf0
    bl Interpolate
    adds r4, r0, #0
    movs r0, #0x3c
    ldrsh r1, [r7, r0]
    movs r2, #0x2c
    ldrsh r3, [r7, r2]
    movs r2, #0x2e
    ldrsh r0, [r7, r2]
    str r0, [sp]
    movs r0, #0
    movs r2, #0xa0
    bl Interpolate
    ldr r1, .L08051250 @ =gDispIo
    movs r2, #0x2d
    adds r2, r2, r1
    mov sb, r2
    movs r2, #0
    mov r8, r2
    mov r2, sb
    strb r6, [r2]
    adds r6, r1, #0
    adds r6, #0x31
    strb r5, [r6]
    adds r5, r1, #0
    adds r5, #0x2c
    strb r4, [r5]
    adds r4, r1, #0
    adds r4, #0x30
    strb r0, [r4]
    mov r0, r8
    str r0, [sp, #4]
    ldr r1, .L08051254 @ =gBg2Tm
    ldr r2, .L08051258 @ =0x01000200
    add r0, sp, #4
    bl CpuFastSet
    movs r0, #4
    bl EnableBgSync
    ldrh r1, [r7, #0x2c]
    ldrh r2, [r7, #0x2e]
    cmp r1, r2
    bne .L08051242
    movs r0, #0
    mov r1, r8
    strh r1, [r7, #0x2c]
    mov r2, sb
    strb r0, [r2]
    strb r0, [r6]
    movs r0, #0xf0
    strb r0, [r5]
    movs r0, #0xa0
    strb r0, [r4]
    bl EnablePalSync
    adds r0, r7, #0
    bl Proc_Break
.L08051242:
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08051250: .4byte gDispIo
.L08051254: .4byte gBg2Tm
.L08051258: .4byte 0x01000200
    func_end func_08051170

    thumb_func_start func_0805125C
func_0805125C: @ 0x0805125C
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804B1D8
    bl func_0802E29C
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805125C

    thumb_func_start func_08051274
func_08051274: @ 0x08051274
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r3, .L080512DC @ =gDispIo
    adds r1, r3, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
    adds r1, #8
    movs r2, #0
    movs r0, #0xa
    strb r0, [r1]
    adds r1, #1
    movs r0, #6
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r2, [r0]
    ldr r0, .L080512E0 @ =0x0000FFE0
    ldrh r4, [r3, #0x3c]
    ands r0, r4
    ldr r1, .L080512E4 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r3, #0x3c]
    adds r1, r3, #0
    adds r1, #0x3d
    movs r0, #0x20
    ldrb r3, [r1]
    orrs r0, r3
    strb r0, [r1]
    ldr r0, .L080512E8 @ =0x0203E02E
    movs r4, #0
    ldrsh r3, [r0, r4]
    movs r1, #4
    ldrsh r2, [r0, r1]
    cmp r3, r2
    bne .L080512EC
    movs r2, #2
    ldrsh r1, [r0, r2]
    movs r3, #6
    ldrsh r0, [r0, r3]
    movs r4, #2
    cmp r1, r0
    blt .L08051318
    movs r4, #6
    b .L08051318
    .align 2, 0
.L080512DC: .4byte gDispIo
.L080512E0: .4byte 0x0000FFE0
.L080512E4: .4byte 0x0000E0FF
.L080512E8: .4byte 0x0203E02E
.L080512EC:
    movs r4, #2
    ldrsh r1, [r0, r4]
    movs r4, #6
    ldrsh r0, [r0, r4]
    cmp r1, r0
    bne .L08051302
    movs r4, #4
    cmp r3, r2
    bge .L08051318
    movs r4, #0
    b .L08051318
.L08051302:
    cmp r3, r2
    bge .L08051310
    movs r4, #1
    cmp r1, r0
    blt .L08051318
    movs r4, #7
    b .L08051318
.L08051310:
    movs r4, #3
    cmp r1, r0
    blt .L08051318
    movs r4, #5
.L08051318:
    ldr r0, .L0805132C @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #3
    bgt .L08051330
    cmp r0, #1
    bge .L0805133C
    cmp r0, #0
    beq .L08051334
    b .L0805133C
    .align 2, 0
.L0805132C: .4byte 0x0203E02C
.L08051330:
    cmp r0, #4
    bne .L0805133C
.L08051334:
    ldr r0, .L08051338 @ =0x08B9B0B4
    b .L0805133E
    .align 2, 0
.L08051338: .4byte 0x08B9B0B4
.L0805133C:
    ldr r0, .L08051370 @ =0x08B9B0D4
.L0805133E:
    lsls r1, r4, #2
    adds r0, r1, r0
    ldr r0, [r0]
    adds r6, r1, #0
    ldr r1, .L08051374 @ =0x06010000
    bl LZ77UnComp16bit
    ldr r0, .L08051378 @ =0x081E7FF8
    ldr r1, .L0805137C @ =0x02022AE0
    movs r2, #1
    bl CpuFastSet
    bl EnablePalSync
    ldr r0, .L08051380 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #4
    bls .L08051366
    b .L08051642
.L08051366:
    lsls r0, r0, #2
    ldr r1, .L08051384 @ =.L08051388
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08051370: .4byte 0x08B9B0D4
.L08051374: .4byte 0x06010000
.L08051378: .4byte 0x081E7FF8
.L0805137C: .4byte 0x02022AE0
.L08051380: .4byte 0x0203E02C
.L08051384: .4byte .L08051388
.L08051388: @ jump table
    .4byte .L0805139C @ case 0
    .4byte .L0805143C @ case 1
    .4byte .L0805143C @ case 2
    .4byte .L080515A8 @ case 3
    .4byte .L0805139C @ case 4
.L0805139C:
    ldr r0, .L080513EC @ =0x08B9B09C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r7, [r5, #0x44]
    adds r1, r5, #0
    adds r1, #0x29
    movs r0, #0
    strb r0, [r1]
    strh r0, [r5, #0x2c]
    movs r0, #0xb
    strh r0, [r5, #0x2e]
    ldr r2, .L080513F0 @ =0x0203E02E
    movs r3, #0
    ldrsh r0, [r2, r3]
    movs r4, #4
    ldrsh r1, [r2, r4]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #8
    strh r0, [r5, #0x32]
    movs r1, #2
    ldrsh r0, [r2, r1]
    movs r3, #6
    ldrsh r1, [r2, r3]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #8
    strh r0, [r5, #0x3a]
    movs r0, #0x78
    strh r0, [r5, #0x34]
    movs r0, #0x68
    strh r0, [r5, #0x3c]
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L080513F8
    ldr r0, .L080513F4 @ =0x08B9B0F4
    b .L080513FA
    .align 2, 0
.L080513EC: .4byte 0x08B9B09C
.L080513F0: .4byte 0x0203E02E
.L080513F4: .4byte 0x08B9B0F4
.L080513F8:
    ldr r0, .L08051428 @ =0x08B9B154
.L080513FA:
    adds r0, r6, r0
    ldr r0, [r0]
    movs r1, #0x64
    bl AnimCreate
    adds r2, r0, #0
    str r2, [r5, #0x5c]
    movs r0, #0x90
    lsls r0, r0, #7
    strh r0, [r2, #8]
    ldr r0, [r2, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    str r0, [r2, #0x1c]
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L0805142C
    ldrh r0, [r5, #0x32]
    strh r0, [r2, #2]
    ldrh r0, [r5, #0x3a]
    b .L08051432
    .align 2, 0
.L08051428: .4byte 0x08B9B154
.L0805142C:
    ldrh r0, [r5, #0x34]
    strh r0, [r2, #2]
    ldrh r0, [r5, #0x3c]
.L08051432:
    strh r0, [r2, #4]
    ldr r0, .L08051438 @ =0x08B9B1B4
    b .L08051636
    .align 2, 0
.L08051438: .4byte 0x08B9B1B4
.L0805143C:
    ldr r0, .L08051498 @ =0x08B9B09C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r7, [r5, #0x44]
    adds r1, r5, #0
    adds r1, #0x29
    movs r0, #0
    strb r0, [r1]
    strh r0, [r5, #0x2c]
    movs r0, #0xb
    strh r0, [r5, #0x2e]
    ldr r1, .L0805149C @ =0x0203E02E
    movs r4, #0
    ldrsh r0, [r1, r4]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r5, #0x32]
    movs r2, #2
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r5, #0x3a]
    movs r2, #0x48
    strh r2, [r5, #0x34]
    movs r0, #0x68
    strh r0, [r5, #0x3c]
    ldr r0, .L080514A0 @ =0x02017744
    ldr r0, [r0]
    cmp r0, #1
    bne .L0805148E
    ldr r1, .L080514A4 @ =0x081D85A4
    ldr r0, .L080514A8 @ =0x0203E02C
    movs r3, #0
    ldrsh r0, [r0, r3]
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    subs r0, r2, r0
    strh r0, [r5, #0x34]
.L0805148E:
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L080514B0
    ldr r0, .L080514AC @ =0x08B9B114
    b .L080514B2
    .align 2, 0
.L08051498: .4byte 0x08B9B09C
.L0805149C: .4byte 0x0203E02E
.L080514A0: .4byte 0x02017744
.L080514A4: .4byte 0x081D85A4
.L080514A8: .4byte 0x0203E02C
.L080514AC: .4byte 0x08B9B114
.L080514B0:
    ldr r0, .L080514E0 @ =0x08B9B174
.L080514B2:
    adds r0, r6, r0
    ldr r0, [r0]
    movs r1, #0x64
    bl AnimCreate
    adds r2, r0, #0
    str r2, [r5, #0x5c]
    movs r0, #0x90
    lsls r0, r0, #7
    strh r0, [r2, #8]
    ldr r0, [r2, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    str r0, [r2, #0x1c]
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L080514E4
    ldrh r0, [r5, #0x32]
    strh r0, [r2, #2]
    ldrh r0, [r5, #0x3a]
    b .L080514EA
    .align 2, 0
.L080514E0: .4byte 0x08B9B174
.L080514E4:
    ldrh r0, [r5, #0x34]
    strh r0, [r2, #2]
    ldrh r0, [r5, #0x3c]
.L080514EA:
    strh r0, [r2, #4]
    ldr r0, .L08051558 @ =0x08B9B1D4
    adds r0, r6, r0
    ldr r0, [r0]
    str r0, [r5, #0x60]
    movs r4, #0
    strh r4, [r5, #0x3e]
    strh r4, [r5, #0x36]
    ldr r0, .L0805155C @ =0x08B9B09C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r7, [r5, #0x44]
    adds r1, r5, #0
    adds r1, #0x29
    movs r0, #1
    strb r0, [r1]
    strh r4, [r5, #0x2c]
    movs r0, #0xb
    strh r0, [r5, #0x2e]
    ldr r1, .L08051560 @ =0x0203E02E
    movs r4, #4
    ldrsh r0, [r1, r4]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r5, #0x32]
    movs r2, #6
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r5, #0x3a]
    movs r0, #0xa8
    strh r0, [r5, #0x34]
    movs r0, #0x68
    strh r0, [r5, #0x3c]
    ldr r0, .L08051564 @ =0x02017744
    ldr r0, [r0]
    cmp r0, #0
    bne .L0805154C
    ldr r1, .L08051568 @ =0x081D85A4
    ldr r0, .L0805156C @ =0x0203E02C
    movs r3, #0
    ldrsh r0, [r0, r3]
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    adds r0, #0xa8
    strh r0, [r5, #0x34]
.L0805154C:
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L08051574
    ldr r0, .L08051570 @ =0x08B9B134
    b .L08051576
    .align 2, 0
.L08051558: .4byte 0x08B9B1D4
.L0805155C: .4byte 0x08B9B09C
.L08051560: .4byte 0x0203E02E
.L08051564: .4byte 0x02017744
.L08051568: .4byte 0x081D85A4
.L0805156C: .4byte 0x0203E02C
.L08051570: .4byte 0x08B9B134
.L08051574:
    ldr r0, .L080515A4 @ =0x08B9B194
.L08051576:
    adds r0, r6, r0
    ldr r0, [r0]
    movs r1, #0x64
    bl AnimCreate
    adds r2, r0, #0
    str r2, [r5, #0x5c]
    movs r0, #0x90
    lsls r0, r0, #7
    strh r0, [r2, #8]
    ldr r0, [r2, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    str r0, [r2, #0x1c]
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L0805162C
    ldrh r0, [r5, #0x32]
    strh r0, [r2, #2]
    ldrh r0, [r5, #0x3a]
    b .L08051632
    .align 2, 0
.L080515A4: .4byte 0x08B9B194
.L080515A8:
    ldr r0, .L080515EC @ =0x08B9B09C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r7, [r5, #0x44]
    adds r1, r5, #0
    adds r1, #0x29
    movs r0, #0
    strb r0, [r1]
    strh r0, [r5, #0x2c]
    movs r0, #0xb
    strh r0, [r5, #0x2e]
    ldr r1, .L080515F0 @ =0x0203E02E
    movs r4, #4
    ldrsh r0, [r1, r4]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r5, #0x32]
    movs r2, #6
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r5, #0x3a]
    movs r0, #0x78
    strh r0, [r5, #0x34]
    movs r0, #0x68
    strh r0, [r5, #0x3c]
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L080515F8
    ldr r0, .L080515F4 @ =0x08B9B134
    b .L080515FA
    .align 2, 0
.L080515EC: .4byte 0x08B9B09C
.L080515F0: .4byte 0x0203E02E
.L080515F4: .4byte 0x08B9B134
.L080515F8:
    ldr r0, .L08051628 @ =0x08B9B194
.L080515FA:
    adds r0, r6, r0
    ldr r0, [r0]
    movs r1, #0x64
    bl AnimCreate
    adds r2, r0, #0
    str r2, [r5, #0x5c]
    movs r0, #0x90
    lsls r0, r0, #7
    strh r0, [r2, #8]
    ldr r0, [r2, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    str r0, [r2, #0x1c]
    ldr r0, [r5, #0x44]
    cmp r0, #0
    bne .L0805162C
    ldrh r0, [r5, #0x32]
    strh r0, [r2, #2]
    ldrh r0, [r5, #0x3a]
    b .L08051632
    .align 2, 0
.L08051628: .4byte 0x08B9B194
.L0805162C:
    ldrh r0, [r5, #0x34]
    strh r0, [r2, #2]
    ldrh r0, [r5, #0x3c]
.L08051632:
    strh r0, [r2, #4]
    ldr r0, .L08051648 @ =0x08B9B1F4
.L08051636:
    adds r0, r6, r0
    ldr r0, [r0]
    str r0, [r5, #0x60]
    movs r0, #0
    strh r0, [r5, #0x3e]
    strh r0, [r5, #0x36]
.L08051642:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08051648: .4byte 0x08B9B1F4
    func_end func_08051274

    thumb_func_start func_0805164C
func_0805164C: @ 0x0805164C
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, [r4, #0x5c]
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    cmp r1, r0
    blt .L0805166E
    adds r0, r5, #0
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
    b .L080516DE
.L0805166E:
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L08051698
    movs r3, #0x32
    ldrsh r1, [r4, r3]
    movs r6, #0x34
    ldrsh r2, [r4, r6]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    strh r0, [r5, #2]
    movs r0, #0x3a
    ldrsh r1, [r4, r0]
    movs r3, #0x3c
    ldrsh r2, [r4, r3]
    b .L080516BA
.L08051698:
    movs r0, #0x34
    ldrsh r1, [r4, r0]
    movs r3, #0x32
    ldrsh r2, [r4, r3]
    movs r6, #0x2c
    ldrsh r3, [r4, r6]
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    strh r0, [r5, #2]
    movs r0, #0x3c
    ldrsh r1, [r4, r0]
    movs r3, #0x3a
    ldrsh r2, [r4, r3]
.L080516BA:
    movs r6, #0x2c
    ldrsh r3, [r4, r6]
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    strh r0, [r5, #4]
    ldrh r2, [r4, #0x2c]
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r3, #0x2e
    ldrsh r0, [r4, r3]
    cmp r1, r0
    bgt .L080516DE
    adds r0, r2, #1
    strh r0, [r4, #0x2c]
.L080516DE:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805164C

    thumb_func_start func_080516E8
func_080516E8: @ 0x080516E8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08051714 @ =0x08B9B214
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x44]
    movs r1, #0
    str r1, [r4, #0x50]
    str r1, [r4, #0x4c]
    ldr r0, .L08051718 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    blt .L08051756
    cmp r0, #3
    ble .L0805171C
    cmp r0, #4
    beq .L08051744
    b .L08051756
    .align 2, 0
.L08051714: .4byte 0x08B9B214
.L08051718: .4byte 0x0203E02C
.L0805171C:
    ldr r0, .L08051740 @ =0x0203E010
    movs r1, #0
    ldrsh r5, [r0, r1]
    cmp r5, #1
    bne .L08051730
    bl func_08064AE0
    cmp r0, #0
    bne .L08051730
    str r5, [r4, #0x4c]
.L08051730:
    ldr r0, .L08051740 @ =0x0203E010
    movs r2, #2
    ldrsh r0, [r0, r2]
    cmp r0, #1
    bne .L08051756
    str r0, [r4, #0x50]
    b .L08051756
    .align 2, 0
.L08051740: .4byte 0x0203E010
.L08051744:
    cmp r5, #0
    bne .L08051750
    str r1, [r4, #0x4c]
    movs r0, #1
    str r0, [r4, #0x50]
    b .L08051756
.L08051750:
    movs r0, #1
    str r0, [r4, #0x4c]
    str r1, [r4, #0x50]
.L08051756:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080516E8

    thumb_func_start func_0805175C
func_0805175C: @ 0x0805175C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r1, .L0805186C @ =0x081D8594
    ldr r0, .L08051870 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    adds r0, r0, r1
    ldr r1, .L08051874 @ =0x081D856C
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldrb r6, [r0]
    bl func_08054024
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L08051794
    ldr r1, .L08051878 @ =0x0203A3D8
    movs r0, #0x40
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08051794
    ldr r0, .L0805187C @ =gPal
    movs r1, #0x17
    movs r2, #1
    bl func_080670A0
.L08051794:
    ldr r5, .L08051880 @ =0x0203E010
    ldrh r3, [r5]
    cmp r3, #1
    bne .L080517BA
    ldr r0, .L08051884 @ =0x0200005C
    ldr r1, [r0]
    lsls r0, r6, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L08051888 @ =0x0200F1C8
    adds r1, r1, r0
    ldr r0, [r1, #4]
    ldr r1, [r1, #8]
    ldr r2, .L0805188C @ =0x020041C8
    adds r1, r1, r2
    str r1, [r4, #0x54]
    ldr r1, .L08051890 @ =0x02000088
    bl LZ77UnComp8bit
.L080517BA:
    ldrh r5, [r5, #2]
    cmp r5, #1
    bne .L080517DE
    ldr r0, .L08051894 @ =0x02000060
    ldr r1, [r0]
    lsls r0, r6, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L08051898 @ =0x02011BC8
    adds r1, r1, r0
    ldr r0, [r1, #4]
    ldr r1, [r1, #8]
    ldr r2, .L0805189C @ =0x020099C8
    adds r1, r1, r2
    str r1, [r4, #0x58]
    ldr r1, .L080518A0 @ =0x02002088
    bl LZ77UnComp8bit
.L080517DE:
    ldr r5, .L080518A4 @ =0x0203E0B0
    ldr r0, [r5]
    cmp r0, #0
    beq .L080517EC
    ldr r1, .L080518A8 @ =0x02001088
    bl LZ77UnComp8bit
.L080517EC:
    ldr r0, [r5, #4]
    cmp r0, #0
    beq .L080517F8
    ldr r1, .L080518AC @ =0x02003088
    bl LZ77UnComp8bit
.L080517F8:
    ldr r1, .L080518B0 @ =0x06014000
    ldr r0, .L08051890 @ =0x02000088
    movs r2, #0x80
    lsls r2, r2, #7
    bl RegisterDataMove
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0xb
    strh r0, [r4, #0x2e]
    ldr r1, .L080518B4 @ =0x0203E02E
    movs r5, #0
    ldrsh r0, [r1, r5]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r4, #0x32]
    movs r2, #2
    ldrsh r0, [r1, r2]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r4, #0x3a]
    movs r3, #4
    ldrsh r0, [r1, r3]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r4, #0x34]
    movs r5, #6
    ldrsh r0, [r1, r5]
    lsls r0, r0, #4
    adds r0, #8
    strh r0, [r4, #0x3c]
    ldr r1, .L080518B8 @ =0x081D8599
    ldr r2, .L08051870 @ =0x0203E02C
    movs r3, #0
    ldrsh r0, [r2, r3]
    adds r0, r0, r1
    ldrb r5, [r0]
    strh r5, [r4, #0x36]
    ldr r1, .L080518BC @ =0x081D859E
    movs r3, #0
    ldrsh r0, [r2, r3]
    adds r0, r0, r1
    ldrb r3, [r0]
    strh r3, [r4, #0x38]
    ldr r0, .L080518C0 @ =0x02017744
    ldr r0, [r0]
    cmp r0, #0
    bne .L080518C8
    ldr r0, .L080518C4 @ =0x081D85A4
    movs r5, #0
    ldrsh r1, [r2, r5]
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r1, [r1]
    adds r0, r1, r3
    strh r0, [r4, #0x38]
    b .L080518D8
    .align 2, 0
.L0805186C: .4byte 0x081D8594
.L08051870: .4byte 0x0203E02C
.L08051874: .4byte 0x081D856C
.L08051878: .4byte 0x0203A3D8
.L0805187C: .4byte gPal
.L08051880: .4byte 0x0203E010
.L08051884: .4byte 0x0200005C
.L08051888: .4byte 0x0200F1C8
.L0805188C: .4byte 0x020041C8
.L08051890: .4byte 0x02000088
.L08051894: .4byte 0x02000060
.L08051898: .4byte 0x02011BC8
.L0805189C: .4byte 0x020099C8
.L080518A0: .4byte 0x02002088
.L080518A4: .4byte 0x0203E0B0
.L080518A8: .4byte 0x02001088
.L080518AC: .4byte 0x02003088
.L080518B0: .4byte 0x06014000
.L080518B4: .4byte 0x0203E02E
.L080518B8: .4byte 0x081D8599
.L080518BC: .4byte 0x081D859E
.L080518C0: .4byte 0x02017744
.L080518C4: .4byte 0x081D85A4
.L080518C8:
    ldr r0, .L080518E4 @ =0x081D85A4
    movs r3, #0
    ldrsh r1, [r2, r3]
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r1, [r1]
    subs r0, r5, r1
    strh r0, [r4, #0x36]
.L080518D8:
    adds r0, r4, #0
    bl Proc_Break
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080518E4: .4byte 0x081D85A4
    func_end func_0805175C

    thumb_func_start func_080518E8
func_080518E8: @ 0x080518E8
    push {r4, r5, r6, r7, lr}
    ldr r4, .L08051908 @ =0xFFFFFCB4
    add sp, r4
    adds r4, r0, #0
    add r5, sp, #0x304
    ldrh r2, [r4, #0x2c]
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r3, #0x2e
    ldrsh r0, [r4, r3]
    cmp r1, r0
    blt .L0805190C
    adds r0, r4, #0
    bl Proc_Break
    b .L08051A82
    .align 2, 0
.L08051908: .4byte 0xFFFFFCB4
.L0805190C:
    adds r0, r2, #1
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L08051924
    movs r1, #0x94
    lsls r1, r1, #2
    movs r2, #0x80
    lsls r2, r2, #1
    movs r6, #0x2c
    ldrsh r3, [r4, r6]
    b .L08051930
.L08051924:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x94
    lsls r2, r2, #2
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
.L08051930:
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    ldr r0, [r4, #0x4c]
    cmp r0, #1
    bne .L080519E2
    ldr r0, [r4, #0x54]
    lsls r3, r7, #0x10
    asrs r3, r3, #0x10
    movs r1, #0
    str r1, [sp]
    add r1, sp, #4
    adds r2, r3, #0
    bl func_08067444
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L0805198E
    movs r0, #0x32
    ldrsh r1, [r4, r0]
    movs r3, #0x36
    ldrsh r2, [r4, r3]
    movs r6, #0x2c
    ldrsh r3, [r4, r6]
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    movs r0, #0x3a
    ldrsh r1, [r4, r0]
    movs r2, #0x2c
    ldrsh r3, [r4, r2]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    str r0, [sp]
    movs r0, #0
    movs r2, #0x58
    b .L080519BC
.L0805198E:
    movs r3, #0x36
    ldrsh r1, [r4, r3]
    movs r6, #0x32
    ldrsh r2, [r4, r6]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    movs r0, #0x3a
    ldrsh r2, [r4, r0]
    movs r1, #0x2c
    ldrsh r3, [r4, r1]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x58
.L080519BC:
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    add r2, sp, #4
    str r2, [r5, #0x3c]
    movs r0, #0
    strh r6, [r5, #2]
    strh r1, [r5, #4]
    movs r1, #0x80
    lsls r1, r1, #3
    strh r1, [r5, #0xc]
    movs r1, #0xe4
    lsls r1, r1, #7
    strh r1, [r5, #8]
    str r0, [r5, #0x1c]
    adds r0, r5, #0
    bl AnimDisplay
.L080519E2:
    ldr r1, [r4, #0x50]
    cmp r1, #1
    bne .L08051A82
    ldr r0, [r4, #0x58]
    lsls r3, r7, #0x10
    asrs r3, r3, #0x10
    str r1, [sp]
    add r1, sp, #4
    adds r2, r3, #0
    bl func_08067444
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L08051A2E
    movs r3, #0x34
    ldrsh r1, [r4, r3]
    movs r6, #0x38
    ldrsh r2, [r4, r6]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    movs r0, #0x3c
    ldrsh r1, [r4, r0]
    movs r2, #0x2c
    ldrsh r3, [r4, r2]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    str r0, [sp]
    movs r0, #0
    movs r2, #0x58
    b .L08051A5C
.L08051A2E:
    movs r3, #0x38
    ldrsh r1, [r4, r3]
    movs r6, #0x34
    ldrsh r2, [r4, r6]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r6, #0x2e
    ldrsh r0, [r4, r6]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    movs r0, #0x3c
    ldrsh r2, [r4, r0]
    movs r1, #0x2c
    ldrsh r3, [r4, r1]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x58
.L08051A5C:
    bl Interpolate
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    add r2, sp, #4
    str r2, [r5, #0x3c]
    movs r0, #0
    strh r6, [r5, #2]
    strh r1, [r5, #4]
    movs r1, #0x80
    lsls r1, r1, #3
    strh r1, [r5, #0xc]
    movs r1, #0x93
    lsls r1, r1, #8
    strh r1, [r5, #8]
    str r0, [r5, #0x1c]
    adds r0, r5, #0
    bl AnimDisplay
.L08051A82:
    movs r3, #0xd3
    lsls r3, r3, #2
    add sp, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080518E8

    thumb_func_start func_08051A90
func_08051A90: @ 0x08051A90
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08051A90

    thumb_func_start func_08051A9C
func_08051A9C: @ 0x08051A9C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, .L08051AE0 @ =0x08B9B23C
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x44]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r4, [r0, #0x2e]
    movs r1, #0x39
    strh r1, [r0, #0x30]
    movs r2, #0
    cmp r5, #0
    bne .L08051ABE
    movs r2, #0x39
.L08051ABE:
    ldr r1, .L08051AE4 @ =0x02000038
    movs r3, #0
    ldrsh r0, [r1, r3]
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_0804C49C
    ldr r1, .L08051AE8 @ =0x0201FAC0
    movs r0, #1
    str r0, [r1]
    bl func_0804C4D4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08051AE0: .4byte 0x08B9B23C
.L08051AE4: .4byte 0x02000038
.L08051AE8: .4byte 0x0201FAC0
    func_end func_08051A9C

    thumb_func_start func_08051AEC
func_08051AEC: @ 0x08051AEC
    ldr r0, .L08051AF8 @ =0x0201FAC0
    ldr r0, [r0]
    cmp r0, #0
    beq .L08051AFC
    movs r0, #0
    b .L08051AFE
    .align 2, 0
.L08051AF8: .4byte 0x0201FAC0
.L08051AFC:
    movs r0, #1
.L08051AFE:
    bx lr
    func_end func_08051AEC

    thumb_func_start func_08051B00
func_08051B00: @ 0x08051B00
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldrh r2, [r4, #0x2c]
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r3, #0x2e
    ldrsh r0, [r4, r3]
    cmp r1, r0
    blt .L08051B2C
    ldr r1, .L08051B28 @ =0x0201FAC0
    movs r0, #0
    str r0, [r1]
    bl func_0804C4C4
    adds r0, r4, #0
    bl Proc_Break
    b .L08051B74
    .align 2, 0
.L08051B28: .4byte 0x0201FAC0
.L08051B2C:
    adds r0, r2, #1
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L08051B4A
    movs r0, #0x30
    ldrsh r1, [r4, r0]
    movs r2, #0x2c
    ldrsh r3, [r4, r2]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    str r0, [sp]
    movs r0, #1
    movs r2, #0
    b .L08051B5C
.L08051B4A:
    movs r3, #0x30
    ldrsh r2, [r4, r3]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #4
    movs r1, #0
.L08051B5C:
    bl Interpolate
    adds r2, r0, #0
    ldr r1, .L08051B7C @ =0x02000038
    movs r3, #0
    ldrsh r0, [r1, r3]
    ldrh r1, [r1, #2]
    adds r1, r1, r2
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_0804C49C
.L08051B74:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08051B7C: .4byte 0x02000038
    func_end func_08051B00

    thumb_func_start func_08051B80
func_08051B80: @ 0x08051B80
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r0, .L08051BB0 @ =0x08B9B254
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x44]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    strh r6, [r0, #0x30]
    subs r1, #0x31
    str r1, [r0, #0x48]
    cmp r4, #0
    bne .L08051BB4
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    movs r0, #0
    bl func_0804CDE8
    b .L08051BBC
    .align 2, 0
.L08051BB0: .4byte 0x08B9B254
.L08051BB4:
    movs r0, #0
    movs r1, #0
    bl func_0804CDE8
.L08051BBC:
    ldr r1, .L08051BCC @ =0x0201FAC4
    movs r0, #1
    str r0, [r1]
    bl func_0804CE20
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08051BCC: .4byte 0x0201FAC4
    func_end func_08051B80

    thumb_func_start func_08051BD0
func_08051BD0: @ 0x08051BD0
    ldr r0, .L08051BDC @ =0x0201FAC4
    ldr r0, [r0]
    cmp r0, #0
    beq .L08051BE0
    movs r0, #0
    b .L08051BE2
    .align 2, 0
.L08051BDC: .4byte 0x0201FAC4
.L08051BE0:
    movs r0, #1
.L08051BE2:
    bx lr
    func_end func_08051BD0

    thumb_func_start func_08051BE4
func_08051BE4: @ 0x08051BE4
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    ldrh r2, [r1, #0x30]
    cmp r0, r2
    bne .L08051BFC
    movs r0, #0
    strh r0, [r1, #0x2c]
    adds r0, r1, #0
    bl Proc_Break
    b .L08051C00
.L08051BFC:
    adds r0, #1
    strh r0, [r1, #0x2c]
.L08051C00:
    pop {r0}
    bx r0
    func_end func_08051BE4

    thumb_func_start func_08051C04
func_08051C04: @ 0x08051C04
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldrh r2, [r4, #0x2c]
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r3, #0x2e
    ldrsh r0, [r4, r3]
    cmp r1, r0
    blt .L08051C38
    ldr r0, .L08051C34 @ =0x0201FAC4
    movs r1, #0
    str r1, [r0]
    bl func_0804CE10
    ldr r0, [r4, #0x44]
    cmp r0, #2
    bne .L08051C2C
    bl func_0804CD94
.L08051C2C:
    adds r0, r4, #0
    bl Proc_Break
    b .L08051C76
    .align 2, 0
.L08051C34: .4byte 0x0201FAC4
.L08051C38:
    adds r0, r2, #1
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L08051C58
    ldr r1, [r4, #0x48]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    str r0, [sp]
    movs r0, #1
    movs r2, #0
    bl Interpolate
    b .L08051C6C
.L08051C58:
    ldr r2, [r4, #0x48]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #4
    movs r1, #0
    bl Interpolate
.L08051C6C:
    lsls r1, r0, #0x10
    lsrs r1, r1, #0x10
    movs r0, #0
    bl func_0804CDE8
.L08051C76:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08051C04

    thumb_func_start func_08051C80
func_08051C80: @ 0x08051C80
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08051CA4 @ =0x08B9B274
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x44]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    cmp r4, #0
    bne .L08051CAC
    ldr r2, .L08051CA8 @ =0x0000FFA8
    movs r0, #2
    bl SetBgOffset
    b .L08051CB6
    .align 2, 0
.L08051CA4: .4byte 0x08B9B274
.L08051CA8: .4byte 0x0000FFA8
.L08051CAC:
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
.L08051CB6:
    ldr r1, .L08051CC4 @ =0x0201FAC8
    movs r0, #1
    str r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08051CC4: .4byte 0x0201FAC8
    func_end func_08051C80

    thumb_func_start func_08051CC8
func_08051CC8: @ 0x08051CC8
    ldr r0, .L08051CD4 @ =0x0201FAC8
    ldr r0, [r0]
    cmp r0, #0
    beq .L08051CD8
    movs r0, #0
    b .L08051CDA
    .align 2, 0
.L08051CD4: .4byte 0x0201FAC8
.L08051CD8:
    movs r0, #1
.L08051CDA:
    bx lr
    func_end func_08051CC8

    thumb_func_start func_08051CDC
func_08051CDC: @ 0x08051CDC
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldrh r2, [r4, #0x2c]
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r3, #0x2e
    ldrsh r0, [r4, r3]
    cmp r1, r0
    blt .L08051D04
    ldr r1, .L08051D00 @ =0x0201FAC8
    movs r0, #0
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
    b .L08051D48
    .align 2, 0
.L08051D00: .4byte 0x0201FAC8
.L08051D04:
    adds r0, r2, #1
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x44]
    cmp r0, #0
    bne .L08051D26
    movs r1, #0x50
    rsbs r1, r1, #0
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    str r0, [sp]
    movs r0, #1
    movs r2, #0
    bl Interpolate
    b .L08051D3C
.L08051D26:
    movs r2, #0x50
    rsbs r2, r2, #0
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #4
    movs r1, #0
    bl Interpolate
.L08051D3C:
    lsls r2, r0, #0x10
    lsrs r2, r2, #0x10
    movs r0, #2
    movs r1, #0
    bl SetBgOffset
.L08051D48:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08051CDC

    thumb_func_start func_08051D50
func_08051D50: @ 0x08051D50
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x2c
    movs r0, #1
    str r0, [sp, #0x20]
    bl func_08064A48
    ldr r1, .L08051D78 @ =0x0203A3D8
    movs r0, #0x20
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L08051D7C
    movs r0, #0
    bl func_080554E4
    b .L08051D82
    .align 2, 0
.L08051D78: .4byte 0x0203A3D8
.L08051D7C:
    movs r0, #1
    bl func_080554E4
.L08051D82:
    ldr r1, .L08051D98 @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08051D9C
    movs r0, #0
    bl func_0804B194
    b .L08051DA2
    .align 2, 0
.L08051D98: .4byte gBmSt
.L08051D9C:
    movs r0, #1
    bl func_0804B194
.L08051DA2:
    ldr r1, .L08051DBC @ =0x0203A3D8
    movs r0, #0x10
    ldrh r1, [r1]
    ands r0, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r2, #0
    beq .L08051DC4
    ldr r1, .L08051DC0 @ =0x0203E02C
    movs r0, #4
    strh r0, [r1]
    adds r0, r1, #0
    b .L08051DC8
    .align 2, 0
.L08051DBC: .4byte 0x0203A3D8
.L08051DC0: .4byte 0x0203E02C
.L08051DC4:
    ldr r0, .L08051DF4 @ =0x0203E02C
    strh r2, [r0]
.L08051DC8:
    ldrh r0, [r0]
    cmp r0, #4
    bne .L08051E10
    ldr r1, .L08051DF8 @ =0x0203E094
    ldr r0, .L08051DFC @ =0x0203A3F0
    str r0, [r1]
    str r0, [sp, #8]
    ldr r1, .L08051E00 @ =0x0203E098
    ldr r0, .L08051E04 @ =0x0203A470
    str r0, [r1]
    str r0, [sp, #0xc]
    ldr r1, .L08051E08 @ =0x0203E014
    movs r0, #0
    strh r0, [r1, #2]
    strh r0, [r1]
    ldr r0, .L08051E0C @ =0x0203E010
    movs r1, #1
    strh r1, [r0]
    strh r1, [r0, #2]
    ldr r7, [sp, #8]
    adds r3, r0, #0
    b .L08051F0A
    .align 2, 0
.L08051DF4: .4byte 0x0203E02C
.L08051DF8: .4byte 0x0203E094
.L08051DFC: .4byte 0x0203A3F0
.L08051E00: .4byte 0x0203E098
.L08051E04: .4byte 0x0203A470
.L08051E08: .4byte 0x0203E014
.L08051E0C: .4byte 0x0203E010
.L08051E10:
    ldr r5, .L08051E48 @ =0x0203A3F0
    movs r4, #0x40
    rsbs r4, r4, #0
    adds r0, r4, #0
    ldrb r1, [r5, #0xb]
    ands r0, r1
    bl func_08053298
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    ldr r0, .L08051E4C @ =0x0203A470
    ldrb r0, [r0, #0xb]
    ands r4, r0
    adds r0, r4, #0
    bl func_08053298
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    ldr r1, .L08051E50 @ =0x0203A3D8
    movs r0, #0x40
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08051E54
    movs r2, #2
    str r2, [sp, #0x20]
    b .L08051E78
    .align 2, 0
.L08051E48: .4byte 0x0203A3F0
.L08051E4C: .4byte 0x0203A470
.L08051E50: .4byte 0x0203A3D8
.L08051E54:
    adds r1, r5, #0
    adds r1, #0x4a
    ldrh r0, [r1]
    cmp r0, #0
    bne .L08051E64
    movs r3, #2
    str r3, [sp, #0x20]
    b .L08051E78
.L08051E64:
    ldrh r0, [r1]
    bl GetItemIndex
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl func_0806B9EC
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #0x20]
.L08051E78:
    ldr r1, .L08051ECC @ =0x0203E010
    movs r0, #1
    strh r0, [r1, #2]
    strh r0, [r1]
    movs r4, #0
    bl func_0804B1A0
    cmp r0, #1
    beq .L08051EA0
    lsls r0, r7, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    beq .L08051E9E
    cmp r0, #2
    beq .L08051E9E
    cmp r0, #1
    bne .L08051EA0
    cmp r6, #1
    bne .L08051EA0
.L08051E9E:
    movs r4, #1
.L08051EA0:
    adds r2, r4, #0
    cmp r2, #1
    bne .L08051EE4
    ldr r1, .L08051ED0 @ =0x0203E094
    ldr r0, .L08051ED4 @ =0x0203A470
    str r0, [r1]
    str r0, [sp, #8]
    ldr r1, .L08051ED8 @ =0x0203E098
    ldr r0, .L08051EDC @ =0x0203A3F0
    str r0, [r1]
    str r0, [sp, #0xc]
    ldr r0, .L08051EE0 @ =0x0203E014
    movs r1, #0
    strh r2, [r0]
    strh r1, [r0, #2]
    ldr r7, [sp, #0xc]
    ldr r3, .L08051ECC @ =0x0203E010
    ldr r4, [sp, #0x20]
    cmp r4, #1
    bne .L08051F0A
    strh r1, [r3]
    b .L08051F0A
    .align 2, 0
.L08051ECC: .4byte 0x0203E010
.L08051ED0: .4byte 0x0203E094
.L08051ED4: .4byte 0x0203A470
.L08051ED8: .4byte 0x0203E098
.L08051EDC: .4byte 0x0203A3F0
.L08051EE0: .4byte 0x0203E014
.L08051EE4:
    ldr r1, .L08051FC0 @ =0x0203E094
    ldr r0, .L08051FC4 @ =0x0203A3F0
    str r0, [r1]
    str r0, [sp, #8]
    ldr r1, .L08051FC8 @ =0x0203E098
    ldr r0, .L08051FCC @ =0x0203A470
    str r0, [r1]
    str r0, [sp, #0xc]
    ldr r1, .L08051FD0 @ =0x0203E014
    movs r2, #0
    strh r2, [r1]
    movs r0, #1
    strh r0, [r1, #2]
    ldr r7, [sp, #8]
    ldr r3, .L08051FD4 @ =0x0203E010
    ldr r0, [sp, #0x20]
    cmp r0, #1
    bne .L08051F0A
    strh r2, [r3, #2]
.L08051F0A:
    ldr r1, [sp, #8]
    mov sl, r1
    ldr r2, [sp, #0xc]
    str r2, [sp, #0x18]
    ldr r4, [r1]
    str r4, [sp, #0x10]
    ldr r0, [r2]
    str r0, [sp, #0x14]
    movs r1, #0
    mov sb, r1
    mov r8, r1
    ldrh r1, [r3, #2]
    ldrh r2, [r3]
    str r2, [sp, #0x1c]
    movs r4, #0
    ldrsh r6, [r3, r4]
    cmp r6, #0
    beq .L08051F36
    mov r2, sl
    ldr r0, [r2, #4]
    ldr r0, [r0, #0x34]
    mov r8, r0
.L08051F36:
    lsls r0, r1, #0x10
    asrs r5, r0, #0x10
    str r0, [sp, #0x28]
    cmp r5, #0
    beq .L08051F48
    ldr r3, [sp, #0x18]
    ldr r0, [r3, #4]
    ldr r0, [r0, #0x34]
    mov sb, r0
.L08051F48:
    cmp r6, #0
    beq .L08051F74
    ldr r3, .L08051FD8 @ =0x0203E02E
    mov r4, sl
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    ldr r2, .L08051FDC @ =gBmSt
    movs r4, #0xc
    ldrsh r1, [r2, r4]
    subs r0, r0, r1
    asrs r0, r0, #4
    strh r0, [r3]
    mov r1, sl
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    lsls r0, r0, #4
    movs r4, #0xe
    ldrsh r1, [r2, r4]
    subs r0, r0, r1
    asrs r0, r0, #4
    strh r0, [r3, #2]
.L08051F74:
    cmp r5, #0
    beq .L08051FA0
    ldr r3, .L08051FD8 @ =0x0203E02E
    ldr r1, [sp, #0x18]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    lsls r0, r0, #4
    ldr r2, .L08051FDC @ =gBmSt
    movs r4, #0xc
    ldrsh r1, [r2, r4]
    subs r0, r0, r1
    asrs r0, r0, #4
    strh r0, [r3, #4]
    ldr r1, [sp, #0x18]
    movs r0, #0x11
    ldrsb r0, [r1, r0]
    lsls r0, r0, #4
    movs r4, #0xe
    ldrsh r1, [r2, r4]
    subs r0, r0, r1
    asrs r0, r0, #4
    strh r0, [r3, #6]
.L08051FA0:
    ldr r4, .L08051FE0 @ =0x0203E02C
    ldrh r0, [r4]
    cmp r0, #4
    beq .L0805206E
    adds r0, r7, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemAttributes
    movs r1, #0x80
    ands r1, r0
    cmp r1, #0
    beq .L08051FE4
    movs r0, #2
    strh r0, [r4]
    b .L08052066
    .align 2, 0
.L08051FC0: .4byte 0x0203E094
.L08051FC4: .4byte 0x0203A3F0
.L08051FC8: .4byte 0x0203E098
.L08051FCC: .4byte 0x0203A470
.L08051FD0: .4byte 0x0203E014
.L08051FD4: .4byte 0x0203E010
.L08051FD8: .4byte 0x0203E02E
.L08051FDC: .4byte gBmSt
.L08051FE0: .4byte 0x0203E02C
.L08051FE4:
    movs r0, #3
    strh r0, [r4]
    adds r0, r6, r5
    cmp r0, #2
    bne .L08052066
    ldr r0, .L08052008 @ =0x0203E02E
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r3, #4
    ldrsh r2, [r0, r3]
    subs r1, r1, r2
    adds r2, r0, #0
    cmp r1, #0
    blt .L0805200C
    ldrh r4, [r2]
    ldrh r1, [r2, #4]
    subs r0, r4, r1
    b .L08052012
    .align 2, 0
.L08052008: .4byte 0x0203E02E
.L0805200C:
    ldrh r3, [r2, #4]
    ldrh r4, [r2]
    subs r0, r3, r4
.L08052012:
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    adds r3, r0, #0
    movs r1, #2
    ldrsh r0, [r2, r1]
    movs r4, #6
    ldrsh r1, [r2, r4]
    subs r0, r0, r1
    cmp r0, #0
    blt .L0805202C
    ldrh r1, [r2, #2]
    ldrh r4, [r2, #6]
    b .L08052030
.L0805202C:
    ldrh r1, [r2, #6]
    ldrh r4, [r2, #2]
.L08052030:
    subs r0, r1, r4
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    lsls r1, r3, #0x10
    asrs r1, r1, #0x10
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    adds r0, r1, r0
    cmp r0, #1
    bgt .L08052050
    ldr r1, .L0805204C @ =0x0203E02C
    movs r0, #0
    b .L08052064
    .align 2, 0
.L0805204C: .4byte 0x0203E02C
.L08052050:
    cmp r0, #3
    bgt .L08052060
    ldr r1, .L0805205C @ =0x0203E02C
    movs r0, #1
    b .L08052064
    .align 2, 0
.L0805205C: .4byte 0x0203E02C
.L08052060:
    ldr r1, .L080520A4 @ =0x0203E02C
    movs r0, #2
.L08052064:
    strh r0, [r1]
.L08052066:
    ldr r0, .L080520A4 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L080520B0
.L0805206E:
    ldr r0, [sp, #8]
    adds r0, #0x48
    ldrh r2, [r0]
    mov r0, sl
    mov r1, r8
    mov r3, sp
    bl func_08052858
    ldr r5, .L080520A8 @ =0x0203E08E
    ldr r4, .L080520AC @ =0x0203E018
    strh r0, [r4]
    strh r0, [r5]
    ldr r0, [sp, #0xc]
    adds r0, #0x48
    ldrh r2, [r0]
    add r3, sp, #4
    ldr r0, [sp, #0x18]
    mov r1, sb
    bl func_08052858
    strh r0, [r4, #2]
    strh r0, [r5, #2]
    ldr r0, [sp, #0x1c]
    lsls r0, r0, #0x10
    str r0, [sp, #0x24]
    b .L080520F0
    .align 2, 0
.L080520A4: .4byte 0x0203E02C
.L080520A8: .4byte 0x0203E08E
.L080520AC: .4byte 0x0203E018
.L080520B0:
    ldr r1, [sp, #0x1c]
    lsls r0, r1, #0x10
    str r0, [sp, #0x24]
    cmp r0, #0
    beq .L080520D2
    ldr r0, [sp, #8]
    adds r0, #0x4a
    ldrh r2, [r0]
    mov r0, sl
    mov r1, r8
    mov r3, sp
    bl func_08052858
    ldr r2, .L0805223C @ =0x0203E08E
    ldr r1, .L08052240 @ =0x0203E018
    strh r0, [r1]
    strh r0, [r2]
.L080520D2:
    ldr r2, [sp, #0x28]
    cmp r2, #0
    beq .L080520F0
    ldr r0, [sp, #0xc]
    adds r0, #0x4a
    ldrh r2, [r0]
    add r3, sp, #4
    ldr r0, [sp, #0x18]
    mov r1, sb
    bl func_08052858
    ldr r2, .L0805223C @ =0x0203E08E
    ldr r1, .L08052240 @ =0x0203E018
    strh r0, [r1, #2]
    strh r0, [r2, #2]
.L080520F0:
    ldr r3, [sp, #0x24]
    asrs r7, r3, #0x10
    cmp r7, #0
    beq .L08052104
    ldr r1, [sp]
    mov r0, sl
    bl func_0805322C
    ldr r1, .L08052244 @ =0x0203E01C
    strh r0, [r1]
.L08052104:
    ldr r4, [sp, #0x28]
    asrs r4, r4, #0x10
    mov r8, r4
    cmp r4, #0
    beq .L0805211A
    ldr r1, [sp, #4]
    ldr r0, [sp, #0x18]
    bl func_0805322C
    ldr r1, .L08052244 @ =0x0203E01C
    strh r0, [r1, #2]
.L0805211A:
    cmp r7, #0
    beq .L08052132
    ldr r0, .L0805223C @ =0x0203E08E
    movs r1, #0
    ldrsh r0, [r0, r1]
    ldr r1, [sp, #8]
    adds r1, #0x4a
    ldrh r1, [r1]
    bl func_08053250
    ldr r1, .L08052248 @ =0x0203E0A8
    str r0, [r1]
.L08052132:
    mov r2, r8
    cmp r2, #0
    beq .L0805214C
    ldr r0, .L0805223C @ =0x0203E08E
    movs r3, #2
    ldrsh r0, [r0, r3]
    ldr r1, [sp, #0xc]
    adds r1, #0x4a
    ldrh r1, [r1]
    bl func_08053250
    ldr r1, .L08052248 @ =0x0203E0A8
    str r0, [r1, #4]
.L0805214C:
    ldr r4, .L0805224C @ =0x0203E0D8
    mov sb, r4
    ldr r2, [sp, #8]
    adds r2, #0x55
    ldrb r0, [r2]
    strh r0, [r4]
    ldr r6, [sp, #0xc]
    adds r6, #0x55
    ldrb r0, [r6]
    strh r0, [r4, #2]
    ldr r5, .L08052250 @ =0x0203E028
    ldr r1, .L08052254 @ =0x0000FFFF
    adds r0, r1, #0
    ldrh r1, [r5, #2]
    orrs r1, r0
    strh r1, [r5, #2]
    ldrh r3, [r5]
    orrs r0, r3
    strh r0, [r5]
    cmp r7, #0
    beq .L0805218E
    ldrb r4, [r2]
    ldr r0, .L08052258 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r1, [r0, #0x13]
    adds r0, r4, #0
    bl func_08052954
    strh r0, [r5]
.L0805218E:
    mov r4, r8
    cmp r4, #0
    beq .L080521AC
    ldrb r4, [r6]
    ldr r0, .L08052258 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r1, [r0, #0x13]
    adds r0, r4, #0
    bl func_08052954
    strh r0, [r5, #2]
.L080521AC:
    ldr r1, .L0805225C @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    beq .L080521FA
    movs r0, #0x30
    mov r1, sb
    strh r0, [r1]
    strh r0, [r1, #2]
    cmp r7, #0
    beq .L080521DA
    ldr r0, .L08052258 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r1, [r0, #0x13]
    movs r0, #0x30
    bl func_08052954
    strh r0, [r5]
.L080521DA:
    mov r2, r8
    cmp r2, #0
    beq .L080521FA
    mov r3, sb
    ldrh r4, [r3, #2]
    ldr r0, .L08052258 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r1, [r0, #0x13]
    adds r0, r4, #0
    bl func_08052954
    strh r0, [r5, #2]
.L080521FA:
    bl func_0806B78C
    cmp r0, #1
    bne .L08052212
    ldr r1, .L08052250 @ =0x0203E028
    movs r0, #0x14
    strh r0, [r1, #2]
    strh r0, [r1]
    ldr r1, .L0805224C @ =0x0203E0D8
    movs r0, #0x30
    strh r0, [r1, #2]
    strh r0, [r1]
.L08052212:
    ldr r0, .L08052260 @ =0x0203E02C
    movs r4, #0
    ldrsh r0, [r0, r4]
    cmp r0, #0
    blt .L0805222A
    cmp r0, #3
    ble .L0805222A
    cmp r0, #4
    bne .L0805222A
    ldr r1, .L08052250 @ =0x0203E028
    ldrh r0, [r1, #2]
    strh r0, [r1]
.L0805222A:
    ldr r0, .L08052258 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    cmp r0, #2
    bgt .L08052268
    cmp r0, #1
    blt .L08052268
    ldr r1, .L08052264 @ =0x0203E00E
    movs r0, #1
    b .L0805226C
    .align 2, 0
.L0805223C: .4byte 0x0203E08E
.L08052240: .4byte 0x0203E018
.L08052244: .4byte 0x0203E01C
.L08052248: .4byte 0x0203E0A8
.L0805224C: .4byte 0x0203E0D8
.L08052250: .4byte 0x0203E028
.L08052254: .4byte 0x0000FFFF
.L08052258: .4byte gPlaySt
.L0805225C: .4byte gBmSt
.L08052260: .4byte 0x0203E02C
.L08052264: .4byte 0x0203E00E
.L08052268:
    ldr r1, .L080522E8 @ =0x0203E00E
    movs r0, #0
.L0805226C:
    strh r0, [r1]
    ldr r0, [sp, #0x24]
    asrs r4, r0, #0x10
    cmp r4, #0
    beq .L08052284
    ldr r0, .L080522EC @ =0x0203E0DC
    mov r2, sl
    ldr r1, [r2, #4]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    strh r1, [r0]
.L08052284:
    ldr r3, [sp, #0x28]
    asrs r5, r3, #0x10
    cmp r5, #0
    beq .L0805229A
    ldr r0, .L080522EC @ =0x0203E0DC
    ldr r2, [sp, #0x18]
    ldr r1, [r2, #4]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    strh r1, [r0, #2]
.L0805229A:
    cmp r4, #0
    beq .L080522B6
    ldr r1, .L080522F0 @ =0x0203E0B8
    ldr r0, [sp, #8]
    adds r0, #0x72
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1]
    ldr r1, .L080522F4 @ =0x0203E0BC
    mov r3, sl
    movs r0, #0x12
    ldrsb r0, [r3, r0]
    strh r0, [r1]
.L080522B6:
    cmp r5, #0
    beq .L080522D2
    ldr r1, .L080522F0 @ =0x0203E0B8
    ldr r0, [sp, #0xc]
    adds r0, #0x72
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1, #2]
    ldr r1, .L080522F4 @ =0x0203E0BC
    ldr r2, [sp, #0x18]
    movs r0, #0x12
    ldrsb r0, [r2, r0]
    strh r0, [r1, #2]
.L080522D2:
    bl func_08052C9C
    ldr r0, .L080522F8 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L08052300
    ldr r1, .L080522FC @ =0x0203E024
    movs r0, #1
    strh r0, [r1, #2]
    strh r0, [r1]
    b .L0805236C
    .align 2, 0
.L080522E8: .4byte 0x0203E00E
.L080522EC: .4byte 0x0203E0DC
.L080522F0: .4byte 0x0203E0B8
.L080522F4: .4byte 0x0203E0BC
.L080522F8: .4byte 0x0203E02C
.L080522FC: .4byte 0x0203E024
.L08052300:
    cmp r4, #0
    beq .L08052318
    mov r3, sl
    ldr r0, [r3, #4]
    ldrb r0, [r0, #4]
    ldr r1, [sp, #8]
    adds r1, #0x4a
    ldrh r1, [r1]
    bl func_08052B08
    ldr r1, .L080525C0 @ =0x0203E024
    strh r0, [r1]
.L08052318:
    cmp r5, #0
    beq .L08052330
    ldr r4, [sp, #0x18]
    ldr r0, [r4, #4]
    ldrb r0, [r0, #4]
    ldr r1, [sp, #0xc]
    adds r1, #0x4a
    ldrh r1, [r1]
    bl func_08052B08
    ldr r1, .L080525C0 @ =0x0203E024
    strh r0, [r1, #2]
.L08052330:
    ldr r1, .L080525C4 @ =0x0203A3D8
    movs r0, #0x40
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0805236C
    ldr r0, [sp, #0xc]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl func_08053374
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L0805236C
    ldr r1, [sp, #0x18]
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x41
    bne .L0805235C
    ldr r1, .L080525C0 @ =0x0203E024
    movs r0, #0xe
    strh r0, [r1, #2]
.L0805235C:
    ldr r2, [sp, #0x18]
    ldr r0, [r2, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x40
    bne .L0805236C
    ldr r1, .L080525C0 @ =0x0203E024
    movs r0, #0xf
    strh r0, [r1, #2]
.L0805236C:
    ldr r3, [sp, #0x24]
    cmp r3, #0
    beq .L08052380
    ldr r0, .L080525C0 @ =0x0203E024
    ldr r1, [sp, #8]
    adds r1, #0x4a
    ldrh r2, [r1]
    movs r1, #0
    bl func_08052C50
.L08052380:
    ldr r4, [sp, #0x28]
    cmp r4, #0
    beq .L08052394
    ldr r0, .L080525C8 @ =0x0203E026
    ldr r1, [sp, #0xc]
    adds r1, #0x4a
    ldrh r2, [r1]
    movs r1, #1
    bl func_08052C50
.L08052394:
    ldr r0, .L080525CC @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    blt .L080523B0
    cmp r0, #2
    bgt .L080523B0
    mov r2, sl
    ldr r0, [r2, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x46
    bne .L080523B0
    bl func_08064A2C
.L080523B0:
    ldr r3, [sp, #0x24]
    asrs r5, r3, #0x10
    cmp r5, #0
    beq .L080523CA
    movs r0, #0x40
    rsbs r0, r0, #0
    mov r4, sl
    ldrb r4, [r4, #0xb]
    ands r0, r4
    bl func_08053298
    ldr r1, .L080525D0 @ =0x0203E020
    strh r0, [r1]
.L080523CA:
    ldr r0, [sp, #0x28]
    asrs r4, r0, #0x10
    cmp r4, #0
    beq .L080523E4
    movs r0, #0x40
    rsbs r0, r0, #0
    ldr r1, [sp, #0x18]
    ldrb r1, [r1, #0xb]
    ands r0, r1
    bl func_08053298
    ldr r1, .L080525D0 @ =0x0203E020
    strh r0, [r1, #2]
.L080523E4:
    ldr r1, .L080525D4 @ =0x0203E09C
    movs r3, #0
    strb r3, [r1, #1]
    strb r3, [r1]
    cmp r5, #0
    beq .L080523F6
    ldr r2, [sp, #0x10]
    ldrb r0, [r2, #4]
    strb r0, [r1]
.L080523F6:
    cmp r4, #0
    beq .L08052400
    ldr r2, [sp, #0x14]
    ldrb r0, [r2, #4]
    strb r0, [r1, #1]
.L08052400:
    ldr r0, .L080525D8 @ =0x0203E0C4
    mov r8, r0
    cmp r5, #0
    beq .L08052412
    ldr r0, [sp, #8]
    adds r0, #0x64
    ldrh r0, [r0]
    mov r1, r8
    strh r0, [r1]
.L08052412:
    cmp r4, #0
    beq .L08052420
    ldr r0, [sp, #0xc]
    adds r0, #0x64
    ldrh r0, [r0]
    mov r2, r8
    strh r0, [r2, #2]
.L08052420:
    mov r4, r8
    ldrh r0, [r4]
    adds r1, r0, #0
    cmp r1, #0xff
    bne .L0805242E
    ldr r0, .L080525DC @ =0x0000FFFF
    strh r0, [r4]
.L0805242E:
    mov r2, r8
    ldrh r0, [r2, #2]
    adds r4, r0, #0
    cmp r4, #0xff
    bne .L0805243C
    ldr r0, .L080525DC @ =0x0000FFFF
    strh r0, [r2, #2]
.L0805243C:
    cmp r5, #0
    beq .L08052464
    ldr r2, .L080525E0 @ =0x0203E0C8
    ldr r1, [sp, #8]
    adds r1, #0x5a
    ldr r0, [sp, #0xc]
    adds r0, #0x5c
    ldrh r4, [r1]
    ldrh r0, [r0]
    subs r0, r4, r0
    strh r0, [r2]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L0805245A
    strh r3, [r2]
.L0805245A:
    ldrh r1, [r1]
    cmp r1, #0xff
    bne .L08052464
    ldr r0, .L080525DC @ =0x0000FFFF
    strh r0, [r2]
.L08052464:
    ldr r0, [sp, #0x28]
    cmp r0, #0
    beq .L08052490
    ldr r2, .L080525E0 @ =0x0203E0C8
    ldr r1, [sp, #0xc]
    adds r1, #0x5a
    ldr r0, [sp, #8]
    adds r0, #0x5c
    ldrh r3, [r1]
    ldrh r0, [r0]
    subs r0, r3, r0
    strh r0, [r2, #2]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L08052486
    movs r0, #0
    strh r0, [r2, #2]
.L08052486:
    ldrh r1, [r1]
    cmp r1, #0xff
    bne .L08052490
    ldr r0, .L080525DC @ =0x0000FFFF
    strh r0, [r2, #2]
.L08052490:
    ldr r4, [sp, #0x24]
    asrs r7, r4, #0x10
    ldr r3, .L080525E4 @ =0x0203E0CC
    cmp r7, #0
    beq .L080524A2
    ldr r0, [sp, #8]
    adds r0, #0x6a
    ldrh r0, [r0]
    strh r0, [r3]
.L080524A2:
    ldr r0, [sp, #0x28]
    asrs r6, r0, #0x10
    cmp r6, #0
    beq .L080524B2
    ldr r0, [sp, #0xc]
    adds r0, #0x6a
    ldrh r0, [r0]
    strh r0, [r3, #2]
.L080524B2:
    adds r1, r3, #0
    ldrh r0, [r1]
    cmp r0, #0xff
    bne .L080524BE
    ldr r0, .L080525DC @ =0x0000FFFF
    strh r0, [r1]
.L080524BE:
    ldrh r0, [r1, #2]
    cmp r0, #0xff
    bne .L080524C8
    ldr r0, .L080525DC @ =0x0000FFFF
    strh r0, [r1, #2]
.L080524C8:
    ldr r0, .L080525CC @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L080524EA
    ldr r2, .L080525DC @ =0x0000FFFF
    adds r1, r2, #0
    mov r4, r8
    ldrh r0, [r4, #2]
    orrs r0, r1
    strh r0, [r4, #2]
    ldr r2, .L080525E0 @ =0x0203E0C8
    ldrh r0, [r2, #2]
    orrs r0, r1
    strh r0, [r2, #2]
    ldrh r0, [r3, #2]
    orrs r1, r0
    strh r1, [r3, #2]
.L080524EA:
    cmp r7, #0
    beq .L080524FC
    ldr r1, .L080525E8 @ =0x0203E0D0
    ldr r0, [sp, #8]
    adds r0, #0x71
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1]
.L080524FC:
    cmp r6, #0
    beq .L0805250E
    ldr r1, .L080525E8 @ =0x0203E0D0
    ldr r0, [sp, #0xc]
    adds r0, #0x71
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1, #2]
.L0805250E:
    cmp r7, #0
    beq .L08052520
    ldr r1, .L080525EC @ =0x0203E0D4
    ldr r0, [sp, #8]
    adds r0, #0x6e
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1]
.L08052520:
    cmp r6, #0
    beq .L08052532
    ldr r1, .L080525EC @ =0x0203E0D4
    ldr r0, [sp, #0xc]
    adds r0, #0x6e
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1, #2]
.L08052532:
    ldr r1, .L080525F0 @ =0x0203E0E0
    movs r5, #0
    strh r5, [r1, #2]
    strh r5, [r1]
    cmp r7, #0
    beq .L0805254A
    ldr r0, [sp, #8]
    adds r0, #0x53
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1]
.L0805254A:
    cmp r6, #0
    beq .L0805255A
    ldr r0, [sp, #0xc]
    adds r0, #0x53
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r1, #2]
.L0805255A:
    ldr r4, .L080525F4 @ =0x0203E0E4
    strh r5, [r4, #2]
    strh r5, [r4]
    cmp r7, #0
    beq .L08052576
    ldr r0, [sp, #8]
    adds r0, #0x48
    ldrh r0, [r0]
    ldr r1, [sp, #0x18]
    bl IsItemEffectiveAgainst
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r4]
.L08052576:
    cmp r6, #0
    beq .L0805258C
    ldr r0, [sp, #0xc]
    adds r0, #0x48
    ldrh r0, [r0]
    mov r1, sl
    bl IsItemEffectiveAgainst
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    strh r0, [r4, #2]
.L0805258C:
    ldr r4, .L080525F8 @ =0x0203E0B0
    str r5, [r4, #4]
    str r5, [r4]
    cmp r7, #0
    beq .L08052610
    ldr r0, [sp, #8]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x36
    bgt .L08052610
    cmp r0, #0x34
    blt .L08052610
    mov r1, sl
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x19
    beq .L080525FC
    cmp r0, #0x19
    ble .L08052610
    cmp r0, #0x1a
    beq .L08052604
    cmp r0, #0x1b
    beq .L0805260C
    b .L08052610
    .align 2, 0
.L080525C0: .4byte 0x0203E024
.L080525C4: .4byte 0x0203A3D8
.L080525C8: .4byte 0x0203E026
.L080525CC: .4byte 0x0203E02C
.L080525D0: .4byte 0x0203E020
.L080525D4: .4byte 0x0203E09C
.L080525D8: .4byte 0x0203E0C4
.L080525DC: .4byte 0x0000FFFF
.L080525E0: .4byte 0x0203E0C8
.L080525E4: .4byte 0x0203E0CC
.L080525E8: .4byte 0x0203E0D0
.L080525EC: .4byte 0x0203E0D4
.L080525F0: .4byte 0x0203E0E0
.L080525F4: .4byte 0x0203E0E4
.L080525F8: .4byte 0x0203E0B0
.L080525FC:
    ldr r0, .L08052600 @ =0x081DA264
    b .L0805260E
    .align 2, 0
.L08052600: .4byte 0x081DA264
.L08052604:
    ldr r0, .L08052608 @ =0x081DA6D8
    b .L0805260E
    .align 2, 0
.L08052608: .4byte 0x081DA6D8
.L0805260C:
    ldr r0, .L08052640 @ =0x081DAB78
.L0805260E:
    str r0, [r4]
.L08052610:
    ldr r2, [sp, #0x28]
    cmp r2, #0
    beq .L0805266A
    ldr r0, [sp, #0xc]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x36
    bgt .L0805266A
    cmp r0, #0x34
    blt .L0805266A
    ldr r3, [sp, #0x18]
    ldr r0, [r3, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x19
    beq .L08052644
    cmp r0, #0x19
    ble .L0805266A
    cmp r0, #0x1a
    beq .L08052654
    cmp r0, #0x1b
    beq .L08052664
    b .L0805266A
    .align 2, 0
.L08052640: .4byte 0x081DAB78
.L08052644:
    ldr r1, .L0805264C @ =0x0203E0B0
    ldr r0, .L08052650 @ =0x081DA264
    b .L08052668
    .align 2, 0
.L0805264C: .4byte 0x0203E0B0
.L08052650: .4byte 0x081DA264
.L08052654:
    ldr r1, .L0805265C @ =0x0203E0B0
    ldr r0, .L08052660 @ =0x081DA6D8
    b .L08052668
    .align 2, 0
.L0805265C: .4byte 0x0203E0B0
.L08052660: .4byte 0x081DA6D8
.L08052664:
    ldr r1, .L08052684 @ =0x0203E0B0
    ldr r0, .L08052688 @ =0x081DAB78
.L08052668:
    str r0, [r1, #4]
.L0805266A:
    bl func_0804B1A0
    cmp r0, #1
    beq .L0805267E
    ldr r0, .L0805268C @ =gPlaySt
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    cmp r0, #0
    beq .L08052694
.L0805267E:
    ldr r1, .L08052690 @ =0x0203E0E8
    movs r0, #1
    b .L08052698
    .align 2, 0
.L08052684: .4byte 0x0203E0B0
.L08052688: .4byte 0x081DAB78
.L0805268C: .4byte gPlaySt
.L08052690: .4byte 0x0203E0E8
.L08052694:
    ldr r1, .L080526BC @ =0x0203E0E8
    movs r0, #0
.L08052698:
    strh r0, [r1, #2]
    strh r0, [r1]
    ldr r5, .L080526C0 @ =0x0203E00A
    movs r0, #0
    strh r0, [r5]
    bl GetBattleAnimKind
    cmp r0, #3
    bne .L080526E6
    ldr r0, .L080526C4 @ =0x0203E010
    movs r4, #0
    ldrsh r0, [r0, r4]
    cmp r0, #0
    beq .L080526CC
    ldr r0, .L080526C8 @ =0x0203E0D8
    ldrh r4, [r0]
    b .L080526D0
    .align 2, 0
.L080526BC: .4byte 0x0203E0E8
.L080526C0: .4byte 0x0203E00A
.L080526C4: .4byte 0x0203E010
.L080526C8: .4byte 0x0203E0D8
.L080526CC:
    ldr r0, .L08052824 @ =0x0203E0D8
    ldrh r4, [r0, #2]
.L080526D0:
    ldr r0, .L08052828 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r1, [r0, #0x13]
    adds r0, r4, #0
    bl func_08052A30
    strh r0, [r5]
.L080526E6:
    bl func_0806B78C
    cmp r0, #1
    bne .L080526F4
    ldr r1, .L0805282C @ =0x0203E00A
    movs r0, #0x3c
    strh r0, [r1]
.L080526F4:
    movs r4, #0
    bl GetBattleAnimKind
    cmp r0, #0
    bne .L08052700
    movs r4, #1
.L08052700:
    bl GetBattleAnimKind
    cmp r0, #3
    bne .L0805270A
    movs r4, #1
.L0805270A:
    bl GetBattleAnimKind
    cmp r0, #1
    bne .L08052740
    ldr r0, .L08052830 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L0805271C
    movs r4, #1
.L0805271C:
    bl func_080554F0
    cmp r0, #1
    bne .L08052726
    movs r4, #1
.L08052726:
    mov r1, sl
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x46
    bne .L08052732
    movs r4, #1
.L08052732:
    bl func_08053440
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bne .L08052740
    movs r4, #1
.L08052740:
    bl func_08053434
    ldr r0, .L08052830 @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    beq .L08052778
    mov r2, sl
    ldr r0, [r2, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    bne .L08052820
    ldr r3, [sp, #0x18]
    ldr r0, [r3, #0xc]
    ands r0, r1
    cmp r0, #0
    bne .L08052820
    mov r1, sl
    ldr r0, [r1]
    ldrb r0, [r0, #4]
    cmp r0, #0x28
    beq .L08052820
    ldr r2, [sp, #0x18]
    ldr r0, [r2]
    ldrb r0, [r0, #4]
    cmp r0, #0x28
    beq .L08052820
.L08052778:
    ldr r3, [sp, #0x20]
    cmp r3, #1
    beq .L08052788
    mov r1, sl
    ldr r0, [r1, #4]
    ldrb r0, [r0, #4]
    cmp r0, #0x46
    beq .L08052844
.L08052788:
    cmp r4, #0
    beq .L08052820
    ldr r0, .L08052834 @ =0x0203E010
    adds r3, r0, #0
    ldrh r2, [r3]
    cmp r2, #1
    bne .L080527D8
    mov r1, sl
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    beq .L08052820
    ldr r0, .L08052838 @ =0x0203E08E
    movs r4, #0
    ldrsh r0, [r0, r4]
    movs r2, #1
    rsbs r2, r2, #0
    cmp r0, r2
    beq .L08052820
    ldr r0, .L0805283C @ =0x0203E024
    movs r4, #0
    ldrsh r1, [r0, r4]
    movs r0, #2
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08052820
    ldr r0, .L08052840 @ =0x0203E028
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, r2
    beq .L08052820
    ldr r0, .L08052824 @ =0x0203E0D8
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0x1b
    beq .L08052820
    cmp r0, #0x33
    beq .L08052820
.L080527D8:
    ldrh r3, [r3, #2]
    cmp r3, #1
    bne .L08052844
    ldr r1, [sp, #0x18]
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #4
    beq .L08052820
    ldr r0, .L08052838 @ =0x0203E08E
    movs r3, #2
    ldrsh r0, [r0, r3]
    movs r2, #1
    rsbs r2, r2, #0
    cmp r0, r2
    beq .L08052820
    ldr r0, .L0805283C @ =0x0203E024
    movs r4, #2
    ldrsh r1, [r0, r4]
    movs r0, #2
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08052820
    ldr r0, .L08052840 @ =0x0203E028
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r0, r2
    beq .L08052820
    ldr r0, .L08052824 @ =0x0203E0D8
    movs r2, #2
    ldrsh r0, [r0, r2]
    cmp r0, #0x1b
    beq .L08052820
    cmp r0, #0x33
    bne .L08052844
.L08052820:
    movs r0, #0
    b .L08052846
    .align 2, 0
.L08052824: .4byte 0x0203E0D8
.L08052828: .4byte gPlaySt
.L0805282C: .4byte 0x0203E00A
.L08052830: .4byte 0x0203E02C
.L08052834: .4byte 0x0203E010
.L08052838: .4byte 0x0203E08E
.L0805283C: .4byte 0x0203E024
.L08052840: .4byte 0x0203E028
.L08052844:
    movs r0, #1
.L08052846:
    add sp, #0x2c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08051D50

    thumb_func_start func_08052858
func_08052858: @ 0x08052858
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r5, r0, #0
    adds r4, r1, #0
    mov sb, r3
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    mov r8, r2
    movs r0, #0
    mov sl, r0
    cmp r4, #0
    beq .L0805288E
    mov r0, r8
    bl GetItemType
    cmp r0, #9
    bne .L08052898
    mov r0, r8
    bl func_08053374
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L08052898
.L0805288E:
    ldr r0, .L08052894 @ =0x0000FFFF
    b .L08052944
    .align 2, 0
.L08052894: .4byte 0x0000FFFF
.L08052898:
    mov r1, r8
    cmp r1, #0
    bne .L080528A2
    movs r3, #9
    b .L080528AC
.L080528A2:
    mov r0, r8
    bl GetItemType
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
.L080528AC:
    str r4, [sp]
    ldr r2, [r5]
    ldr r1, [r5, #4]
    ldr r0, [r2, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    lsrs r0, r0, #8
    movs r1, #1
    ands r0, r1
    adds r2, #0x25
    adds r2, r2, r0
    ldrb r0, [r2]
    cmp r0, #0
    beq .L080528D2
    ldr r1, .L080528E4 @ =0x08C996B4
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [sp]
.L080528D2:
    movs r0, #0
    mov r2, sb
    str r0, [r2]
    movs r7, #0
    movs r1, #0
.L080528DC:
    ldr r5, [sp]
    movs r6, #0
    b .L0805292C
    .align 2, 0
.L080528E4: .4byte 0x08C996B4
.L080528E8:
    cmp r7, #0
    bne .L080528F0
    cmp r0, #0xff
    bhi .L08052928
.L080528F0:
    cmp r7, #1
    bne .L080528FA
    ldrh r4, [r5]
    cmp r4, #0xff
    bls .L08052928
.L080528FA:
    ldrh r4, [r5]
    mov r0, r8
    str r1, [sp, #4]
    str r3, [sp, #8]
    bl GetItemIndex
    ldr r1, [sp, #4]
    ldr r3, [sp, #8]
    cmp r4, r0
    beq .L08052918
    ldrh r2, [r5]
    ldr r4, .L08052924 @ =0xFFFFFF00
    adds r0, r2, r4
    cmp r0, r3
    bne .L08052928
.L08052918:
    ldrh r5, [r5, #2]
    mov sl, r5
    mov r0, sb
    str r6, [r0]
    movs r1, #1
    b .L08052932
    .align 2, 0
.L08052924: .4byte 0xFFFFFF00
.L08052928:
    adds r5, #4
    adds r6, #1
.L0805292C:
    ldrh r0, [r5]
    cmp r0, #0
    bne .L080528E8
.L08052932:
    cmp r1, #1
    beq .L0805293C
    adds r7, #1
    cmp r7, #1
    ble .L080528DC
.L0805293C:
    mov r0, sl
    subs r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
.L08052944:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_08052858

    thumb_func_start func_08052954
func_08052954: @ 0x08052954
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0xe
    bhi .L08052A1C
    lsls r0, r0, #2
    ldr r1, .L0805296C @ =.L08052970
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0805296C: .4byte .L08052970
.L08052970: @ jump table
    .4byte .L08052A1C @ case 0
    .4byte .L080529AC @ case 1
    .4byte .L080529B4 @ case 2
    .4byte .L080529BC @ case 3
    .4byte .L080529C4 @ case 4
    .4byte .L080529CC @ case 5
    .4byte .L080529D4 @ case 6
    .4byte .L080529DC @ case 7
    .4byte .L080529E4 @ case 8
    .4byte .L080529EC @ case 9
    .4byte .L080529F4 @ case 10
    .4byte .L080529FC @ case 11
    .4byte .L08052A04 @ case 12
    .4byte .L08052A0C @ case 13
    .4byte .L08052A14 @ case 14
.L080529AC:
    ldr r0, .L080529B0 @ =0x08BE4887
    b .L08052A1E
    .align 2, 0
.L080529B0: .4byte 0x08BE4887
.L080529B4:
    ldr r0, .L080529B8 @ =0x08BE48C8
    b .L08052A1E
    .align 2, 0
.L080529B8: .4byte 0x08BE48C8
.L080529BC:
    ldr r0, .L080529C0 @ =0x08BE4909
    b .L08052A1E
    .align 2, 0
.L080529C0: .4byte 0x08BE4909
.L080529C4:
    ldr r0, .L080529C8 @ =0x08BE494A
    b .L08052A1E
    .align 2, 0
.L080529C8: .4byte 0x08BE494A
.L080529CC:
    ldr r0, .L080529D0 @ =0x08BE498B
    b .L08052A1E
    .align 2, 0
.L080529D0: .4byte 0x08BE498B
.L080529D4:
    ldr r0, .L080529D8 @ =0x08BE49CC
    b .L08052A1E
    .align 2, 0
.L080529D8: .4byte 0x08BE49CC
.L080529DC:
    ldr r0, .L080529E0 @ =0x08BE4A0D
    b .L08052A1E
    .align 2, 0
.L080529E0: .4byte 0x08BE4A0D
.L080529E4:
    ldr r0, .L080529E8 @ =0x08BE4A4E
    b .L08052A1E
    .align 2, 0
.L080529E8: .4byte 0x08BE4A4E
.L080529EC:
    ldr r0, .L080529F0 @ =0x08BE4A8F
    b .L08052A1E
    .align 2, 0
.L080529F0: .4byte 0x08BE4A8F
.L080529F4:
    ldr r0, .L080529F8 @ =0x08BE4AD0
    b .L08052A1E
    .align 2, 0
.L080529F8: .4byte 0x08BE4AD0
.L080529FC:
    ldr r0, .L08052A00 @ =0x08BE4B11
    b .L08052A1E
    .align 2, 0
.L08052A00: .4byte 0x08BE4B11
.L08052A04:
    ldr r0, .L08052A08 @ =0x08BE4B52
    b .L08052A1E
    .align 2, 0
.L08052A08: .4byte 0x08BE4B52
.L08052A0C:
    ldr r0, .L08052A10 @ =0x08BE4B93
    b .L08052A1E
    .align 2, 0
.L08052A10: .4byte 0x08BE4B93
.L08052A14:
    ldr r0, .L08052A18 @ =0x08BE4BD4
    b .L08052A1E
    .align 2, 0
.L08052A18: .4byte 0x08BE4BD4
.L08052A1C:
    ldr r0, .L08052A2C @ =0x08BE4846
.L08052A1E:
    adds r0, r2, r0
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    subs r0, #1
    bx lr
    .align 2, 0
.L08052A2C: .4byte 0x08BE4846
    func_end func_08052954

    thumb_func_start func_08052A30
func_08052A30: @ 0x08052A30
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r0, r1, #0x10
    cmp r0, #0xe
    bhi .L08052AF8
    lsls r0, r0, #2
    ldr r1, .L08052A48 @ =.L08052A4C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08052A48: .4byte .L08052A4C
.L08052A4C: @ jump table
    .4byte .L08052AF8 @ case 0
    .4byte .L08052A88 @ case 1
    .4byte .L08052A90 @ case 2
    .4byte .L08052A98 @ case 3
    .4byte .L08052AA0 @ case 4
    .4byte .L08052AA8 @ case 5
    .4byte .L08052AB0 @ case 6
    .4byte .L08052AB8 @ case 7
    .4byte .L08052AC0 @ case 8
    .4byte .L08052AC8 @ case 9
    .4byte .L08052AD0 @ case 10
    .4byte .L08052AD8 @ case 11
    .4byte .L08052AE0 @ case 12
    .4byte .L08052AE8 @ case 13
    .4byte .L08052AF0 @ case 14
.L08052A88:
    ldr r0, .L08052A8C @ =0x08BE4C56
    b .L08052AFA
    .align 2, 0
.L08052A8C: .4byte 0x08BE4C56
.L08052A90:
    ldr r0, .L08052A94 @ =0x08BE4C97
    b .L08052AFA
    .align 2, 0
.L08052A94: .4byte 0x08BE4C97
.L08052A98:
    ldr r0, .L08052A9C @ =0x08BE4CD8
    b .L08052AFA
    .align 2, 0
.L08052A9C: .4byte 0x08BE4CD8
.L08052AA0:
    ldr r0, .L08052AA4 @ =0x08BE4D19
    b .L08052AFA
    .align 2, 0
.L08052AA4: .4byte 0x08BE4D19
.L08052AA8:
    ldr r0, .L08052AAC @ =0x08BE4D5A
    b .L08052AFA
    .align 2, 0
.L08052AAC: .4byte 0x08BE4D5A
.L08052AB0:
    ldr r0, .L08052AB4 @ =0x08BE4D9B
    b .L08052AFA
    .align 2, 0
.L08052AB4: .4byte 0x08BE4D9B
.L08052AB8:
    ldr r0, .L08052ABC @ =0x08BE4DDC
    b .L08052AFA
    .align 2, 0
.L08052ABC: .4byte 0x08BE4DDC
.L08052AC0:
    ldr r0, .L08052AC4 @ =0x08BE4E1D
    b .L08052AFA
    .align 2, 0
.L08052AC4: .4byte 0x08BE4E1D
.L08052AC8:
    ldr r0, .L08052ACC @ =0x08BE4E5E
    b .L08052AFA
    .align 2, 0
.L08052ACC: .4byte 0x08BE4E5E
.L08052AD0:
    ldr r0, .L08052AD4 @ =0x08BE4E9F
    b .L08052AFA
    .align 2, 0
.L08052AD4: .4byte 0x08BE4E9F
.L08052AD8:
    ldr r0, .L08052ADC @ =0x08BE4EE0
    b .L08052AFA
    .align 2, 0
.L08052ADC: .4byte 0x08BE4EE0
.L08052AE0:
    ldr r0, .L08052AE4 @ =0x08BE4F21
    b .L08052AFA
    .align 2, 0
.L08052AE4: .4byte 0x08BE4F21
.L08052AE8:
    ldr r0, .L08052AEC @ =0x08BE4F62
    b .L08052AFA
    .align 2, 0
.L08052AEC: .4byte 0x08BE4F62
.L08052AF0:
    ldr r0, .L08052AF4 @ =0x08BE4FA3
    b .L08052AFA
    .align 2, 0
.L08052AF4: .4byte 0x08BE4FA3
.L08052AF8:
    ldr r0, .L08052B04 @ =0x08BE4C15
.L08052AFA:
    adds r0, r2, r0
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bx lr
    .align 2, 0
.L08052B04: .4byte 0x08BE4C15
    func_end func_08052A30

    thumb_func_start func_08052B08
func_08052B08: @ 0x08052B08
    push {r4, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    adds r0, r1, #0
    bl GetItemIndex
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r3, .L08052B24 @ =0x08C999C0
    ldrh r1, [r3]
    ldr r2, .L08052B28 @ =0x0000FFFF
    b .L08052B30
    .align 2, 0
.L08052B24: .4byte 0x08C999C0
.L08052B28: .4byte 0x0000FFFF
.L08052B2C:
    adds r3, #0x10
    ldrh r1, [r3]
.L08052B30:
    cmp r1, r2
    beq .L08052B38
    cmp r1, r0
    bne .L08052B2C
.L08052B38:
    ldrh r2, [r3, #4]
    ldrh r3, [r3, #4]
    cmp r3, #3
    beq .L08052B42
    b .L08052C46
.L08052B42:
    subs r0, r4, #7
    cmp r0, #0x31
    bls .L08052B4A
    b .L08052C46
.L08052B4A:
    lsls r0, r0, #2
    ldr r1, .L08052B54 @ =.L08052B58
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08052B54: .4byte .L08052B58
.L08052B58: @ jump table
    .4byte .L08052C28 @ case 0
    .4byte .L08052C46 @ case 1
    .4byte .L08052C46 @ case 2
    .4byte .L08052C46 @ case 3
    .4byte .L08052C46 @ case 4
    .4byte .L08052C46 @ case 5
    .4byte .L08052C46 @ case 6
    .4byte .L08052C46 @ case 7
    .4byte .L08052C46 @ case 8
    .4byte .L08052C46 @ case 9
    .4byte .L08052C46 @ case 10
    .4byte .L08052C46 @ case 11
    .4byte .L08052C46 @ case 12
    .4byte .L08052C46 @ case 13
    .4byte .L08052C46 @ case 14
    .4byte .L08052C44 @ case 15
    .4byte .L08052C44 @ case 16
    .4byte .L08052C46 @ case 17
    .4byte .L08052C46 @ case 18
    .4byte .L08052C46 @ case 19
    .4byte .L08052C46 @ case 20
    .4byte .L08052C46 @ case 21
    .4byte .L08052C46 @ case 22
    .4byte .L08052C46 @ case 23
    .4byte .L08052C46 @ case 24
    .4byte .L08052C46 @ case 25
    .4byte .L08052C46 @ case 26
    .4byte .L08052C46 @ case 27
    .4byte .L08052C46 @ case 28
    .4byte .L08052C46 @ case 29
    .4byte .L08052C46 @ case 30
    .4byte .L08052C46 @ case 31
    .4byte .L08052C46 @ case 32
    .4byte .L08052C20 @ case 33
    .4byte .L08052C20 @ case 34
    .4byte .L08052C2C @ case 35
    .4byte .L08052C30 @ case 36
    .4byte .L08052C46 @ case 37
    .4byte .L08052C46 @ case 38
    .4byte .L08052C46 @ case 39
    .4byte .L08052C46 @ case 40
    .4byte .L08052C46 @ case 41
    .4byte .L08052C46 @ case 42
    .4byte .L08052C34 @ case 43
    .4byte .L08052C38 @ case 44
    .4byte .L08052C3C @ case 45
    .4byte .L08052C3C @ case 46
    .4byte .L08052C40 @ case 47
    .4byte .L08052C40 @ case 48
    .4byte .L08052C24 @ case 49
.L08052C20:
    movs r2, #4
    b .L08052C46
.L08052C24:
    movs r2, #5
    b .L08052C46
.L08052C28:
    movs r2, #0xc
    b .L08052C46
.L08052C2C:
    movs r2, #6
    b .L08052C46
.L08052C30:
    movs r2, #0xd
    b .L08052C46
.L08052C34:
    movs r2, #7
    b .L08052C46
.L08052C38:
    movs r2, #8
    b .L08052C46
.L08052C3C:
    movs r2, #9
    b .L08052C46
.L08052C40:
    movs r2, #0xa
    b .L08052C46
.L08052C44:
    movs r2, #0xb
.L08052C46:
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08052B08

    thumb_func_start func_08052C50
func_08052C50: @ 0x08052C50
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, r2, #0
    lsls r1, r1, #0x10
    lsrs r5, r1, #0x10
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl GetItemIndex
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    movs r0, #0
    ldrsh r1, [r4, r0]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08052C76
    movs r0, #0
    strh r0, [r4]
.L08052C76:
    ldr r0, .L08052C98 @ =0x0203E00C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, r5
    beq .L08052C90
    cmp r2, #0x53
    blt .L08052C90
    cmp r2, #0x55
    ble .L08052C8C
    cmp r2, #0x57
    bne .L08052C90
.L08052C8C:
    movs r0, #0
    strh r0, [r4]
.L08052C90:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08052C98: .4byte 0x0203E00C
    func_end func_08052C50

    thumb_func_start func_08052C9C
func_08052C9C: @ 0x08052C9C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    ldr r0, .L08052CF4 @ =0x0203A4F0
    mov sb, r0
    movs r2, #0
    ldr r4, .L08052CF8 @ =0x0203E036
    ldr r5, .L08052CFC @ =0x0203E0A0
    ldr r6, .L08052D00 @ =0x0203E02C
    ldr r1, .L08052D04 @ =0x0000FFFF
    adds r3, r1, #0
    adds r1, r4, #0
.L08052CBA:
    ldrh r0, [r1]
    orrs r0, r3
    strh r0, [r1]
    adds r1, #2
    adds r2, #1
    cmp r2, #0x13
    bls .L08052CBA
    movs r2, #0
    ldr r0, .L08052D08 @ =0x0203E062
    ldr r1, .L08052D04 @ =0x0000FFFF
    adds r3, r1, #0
    adds r1, r0, #4
.L08052CD2:
    ldrh r0, [r1]
    orrs r0, r3
    strh r0, [r1]
    adds r1, #2
    adds r2, #1
    cmp r2, #0x13
    bls .L08052CD2
    movs r2, #0
    str r2, [r5, #4]
    str r2, [r5]
    movs r5, #0
    ldrsh r0, [r6, r5]
    cmp r0, #4
    bne .L08052D0C
    strh r0, [r4]
    strh r0, [r4, #2]
    b .L080531FE
    .align 2, 0
.L08052CF4: .4byte 0x0203A4F0
.L08052CF8: .4byte 0x0203E036
.L08052CFC: .4byte 0x0203E0A0
.L08052D00: .4byte 0x0203E02C
.L08052D04: .4byte 0x0000FFFF
.L08052D08: .4byte 0x0203E062
.L08052D0C:
    ldr r1, .L08052D20 @ =0x0203A3D8
    movs r0, #0x40
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08052D24
    movs r0, #6
    strh r0, [r4]
    strh r2, [r4, #2]
    b .L080531FE
    .align 2, 0
.L08052D20: .4byte 0x0203A3D8
.L08052D24:
    ldrh r6, [r6]
    str r6, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, .L08052DD4 @ =0x0203E094
    ldr r0, [r0]
    str r0, [sp, #4]
    ldr r0, .L08052DD8 @ =0x0203E098
    ldr r0, [r0]
    str r0, [sp, #8]
    ldr r0, [sp, #4]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIndex
    cmp r0, #0x11
    bne .L08052D4C
    cmp r6, #0
    bne .L08052D4C
    movs r0, #1
    str r0, [sp, #0x14]
.L08052D4C:
    ldr r4, [sp, #8]
    adds r4, #0x4a
    ldrh r0, [r4]
    bl GetItemIndex
    adds r5, r4, #0
    cmp r0, #0x11
    bne .L08052D66
    ldr r1, [sp, #0x18]
    cmp r1, #0
    bne .L08052D66
    movs r2, #1
    str r2, [sp, #0x18]
.L08052D66:
    ldr r4, [sp, #4]
    adds r4, #0x4a
    ldrh r0, [r4]
    bl GetItemIndex
    cmp r0, #0x28
    bne .L08052D7E
    ldr r0, [sp, #0x14]
    cmp r0, #0
    bne .L08052D7E
    movs r1, #1
    str r1, [sp, #0x14]
.L08052D7E:
    ldrh r0, [r5]
    bl GetItemIndex
    cmp r0, #0x28
    bne .L08052D92
    ldr r2, [sp, #0x18]
    cmp r2, #0
    bne .L08052D92
    movs r0, #1
    str r0, [sp, #0x18]
.L08052D92:
    ldrh r0, [r4]
    bl GetItemIndex
    cmp r0, #0x29
    bne .L08052DA6
    ldr r1, [sp, #0x14]
    cmp r1, #0
    bne .L08052DA6
    movs r2, #1
    str r2, [sp, #0x14]
.L08052DA6:
    ldrh r0, [r5]
    bl GetItemIndex
    cmp r0, #0x29
    bne .L08052DBA
    ldr r5, [sp, #0x18]
    cmp r5, #0
    bne .L08052DBA
    movs r0, #1
    str r0, [sp, #0x18]
.L08052DBA:
    ldr r2, .L08052DDC @ =0x0203E062
    ldr r1, .L08052DE0 @ =0x0203E0B8
    ldrh r0, [r1]
    strh r0, [r2]
    ldrh r0, [r1, #2]
    strh r0, [r2, #2]
    movs r1, #0
    str r1, [sp, #0xc]
    mov r8, r1
    movs r7, #0
    mov r5, sb
    ldrb r1, [r5, #2]
    b .L080531F4
    .align 2, 0
.L08052DD4: .4byte 0x0203E094
.L08052DD8: .4byte 0x0203E098
.L08052DDC: .4byte 0x0203E062
.L08052DE0: .4byte 0x0203E0B8
.L08052DE4:
    movs r0, #8
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r0, r0, #0
    lsrs r0, r0, #0x1f
    str r0, [sp, #0x10]
    ldr r0, .L08052E1C @ =0x0203E014
    movs r1, #0
    ldrsh r0, [r0, r1]
    ldr r2, [sp, #0x10]
    cmp r0, r2
    bne .L08052E24
    mov r5, sp
    movs r0, #2
    add r0, sp
    mov sl, r0
    ldr r4, [sp, #0x14]
    ldr r1, [sp, #0x18]
    str r1, [sp, #0x1c]
    ldr r6, [sp, #4]
    movs r3, #0
    ldr r2, [sp, #0xc]
    cmp r2, #0
    bne .L08052E40
    ldr r0, .L08052E20 @ =0x0203E00C
    strh r2, [r0]
    b .L08052E40
    .align 2, 0
.L08052E1C: .4byte 0x0203E014
.L08052E20: .4byte 0x0203E00C
.L08052E24:
    mov r5, sp
    adds r5, #2
    mov sl, sp
    ldr r4, [sp, #0x18]
    ldr r0, [sp, #0x14]
    str r0, [sp, #0x1c]
    ldr r6, [sp, #8]
    movs r3, #0
    ldr r1, [sp, #0xc]
    cmp r1, #0
    bne .L08052E40
    ldr r1, .L08052E78 @ =0x0203E00C
    movs r0, #1
    strh r0, [r1]
.L08052E40:
    movs r2, #0x80
    lsls r2, r2, #3
    adds r0, r2, #0
    mov r1, sb
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08052E5C
    ldr r2, .L08052E7C @ =0x0203E0A0
    ldr r1, .L08052E80 @ =0x0203A3D8
    ldr r0, [r1, #0x10]
    str r0, [r2]
    ldr r0, [r1, #0x14]
    str r0, [r2, #4]
.L08052E5C:
    mov r2, sb
    ldrh r1, [r2]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L08052E90
    adds r0, r6, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08052E88
    ldr r0, .L08052E84 @ =0x081D851C
    b .L08052F0A
    .align 2, 0
.L08052E78: .4byte 0x0203E00C
.L08052E7C: .4byte 0x0203E0A0
.L08052E80: .4byte 0x0203A3D8
.L08052E84: .4byte 0x081D851C
.L08052E88:
    ldr r0, .L08052E8C @ =0x081D8544
    b .L08052F0A
    .align 2, 0
.L08052E8C: .4byte 0x081D8544
.L08052E90:
    movs r2, #0x80
    lsls r2, r2, #4
    adds r0, r2, #0
    ands r0, r1
    cmp r0, #0
    beq .L08052EB8
    adds r0, r6, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08052EB0
    ldr r0, .L08052EAC @ =0x081D851C
    b .L08052F0A
    .align 2, 0
.L08052EAC: .4byte 0x081D851C
.L08052EB0:
    ldr r0, .L08052EB4 @ =0x081D8544
    b .L08052F0A
    .align 2, 0
.L08052EB4: .4byte 0x081D8544
.L08052EB8:
    lsls r0, r3, #0x10
    cmp r0, #0
    blt .L08052EDC
    adds r0, r6, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08052ED4
    ldr r0, .L08052ED0 @ =0x081D8508
    b .L08052F0A
    .align 2, 0
.L08052ED0: .4byte 0x081D8508
.L08052ED4:
    ldr r0, .L08052ED8 @ =0x081D853A
    b .L08052F0A
    .align 2, 0
.L08052ED8: .4byte 0x081D853A
.L08052EDC:
    movs r0, #2
    bl func_080672E8
    cmp r0, #1
    beq .L08052F00
    cmp r0, #1
    bgt .L08052EF0
    cmp r0, #0
    beq .L08052EF6
    b .L08052F14
.L08052EF0:
    cmp r0, #2
    beq .L08052F08
    b .L08052F14
.L08052EF6:
    ldr r0, .L08052EFC @ =0x081D854E
    b .L08052F0A
    .align 2, 0
.L08052EFC: .4byte 0x081D854E
.L08052F00:
    ldr r0, .L08052F04 @ =0x081D8558
    b .L08052F0A
    .align 2, 0
.L08052F04: .4byte 0x081D8558
.L08052F08:
    ldr r0, .L08052F30 @ =0x081D8562
.L08052F0A:
    lsls r1, r4, #0x10
    asrs r1, r1, #0xf
    adds r1, r1, r0
    ldrh r0, [r1]
    strh r0, [r5]
.L08052F14:
    movs r0, #2
    mov r1, sb
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L08052F50
    adds r0, r6, #0
    bl UnitHasMagicRank
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08052F38
    ldr r0, .L08052F34 @ =0x081D8512
    b .L08052F3A
    .align 2, 0
.L08052F30: .4byte 0x081D8562
.L08052F34: .4byte 0x081D8512
.L08052F38:
    ldr r0, .L08052F48 @ =0x081D853A
.L08052F3A:
    lsls r1, r4, #0x10
    asrs r1, r1, #0xf
    adds r1, r1, r0
    ldrh r0, [r1]
    strh r0, [r5]
    ldr r0, .L08052F4C @ =0x081D8526
    b .L08052F52
    .align 2, 0
.L08052F48: .4byte 0x081D853A
.L08052F4C: .4byte 0x081D8526
.L08052F50:
    ldr r0, .L08052FD4 @ =0x081D8530
.L08052F52:
    ldr r2, [sp, #0x1c]
    lsls r1, r2, #0x10
    asrs r1, r1, #0xf
    adds r1, r1, r0
    ldrh r0, [r1]
    mov r5, sl
    strh r0, [r5]
    ldr r1, .L08052FD8 @ =0x0203E036
    ldr r2, [sp, #0xc]
    lsls r0, r2, #2
    adds r5, r0, r1
    mov r0, sp
    ldrh r0, [r0]
    movs r6, #0
    strh r0, [r5]
    lsls r0, r2, #1
    adds r0, #1
    lsls r0, r0, #1
    adds r4, r0, r1
    mov r1, sp
    ldrh r0, [r1, #2]
    strh r0, [r4]
    mov r2, sb
    ldrh r1, [r2]
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L08052F8C
    b .L080531E6
.L08052F8C:
    movs r0, #0x80
    ands r0, r1
    cmp r0, #0
    beq .L08053028
    ldr r0, .L08052FDC @ =0x0203E014
    movs r1, #0
    ldrsh r0, [r0, r1]
    ldr r2, [sp, #0x10]
    cmp r0, r2
    bne .L08052FE8
    lsls r0, r7, #1
    bl func_08053340
    mov r2, sb
    movs r1, #3
    ldrsb r1, [r2, r1]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L08052FB8
    movs r2, #0
.L08052FB8:
    adds r0, r7, #1
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    lsls r0, r7, #2
    ldr r1, .L08052FE0 @ =0x0203E062
    adds r0, r0, r1
    strh r2, [r0]
    ldr r2, .L08052FE4 @ =0xFFFF8000
    adds r0, r2, #0
    ldrh r1, [r5]
    orrs r0, r1
    strh r0, [r5]
    b .L080531E6
    .align 2, 0
.L08052FD4: .4byte 0x081D8530
.L08052FD8: .4byte 0x0203E036
.L08052FDC: .4byte 0x0203E014
.L08052FE0: .4byte 0x0203E062
.L08052FE4: .4byte 0xFFFF8000
.L08052FE8:
    mov r2, r8
    lsls r0, r2, #1
    adds r0, #1
    bl func_08053340
    mov r5, sb
    movs r1, #3
    ldrsb r1, [r5, r1]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L08053004
    movs r2, #0
.L08053004:
    mov r0, r8
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #1
    ldr r1, .L08053020 @ =0x0203E062
    adds r0, r0, r1
    strh r2, [r0]
    ldr r2, .L08053024 @ =0xFFFF8000
    b .L080531DE
    .align 2, 0
.L08053020: .4byte 0x0203E062
.L08053024: .4byte 0xFFFF8000
.L08053028:
    movs r2, #0x80
    lsls r2, r2, #1
    adds r0, r2, #0
    ands r0, r1
    cmp r0, #0
    beq .L08053110
    ldr r0, .L0805309C @ =0x0203E014
    movs r5, #0
    ldrsh r0, [r0, r5]
    ldr r1, [sp, #0x10]
    cmp r0, r1
    bne .L080530A8
    mov r2, r8
    lsls r0, r2, #1
    adds r0, #1
    bl func_08053340
    mov r5, sb
    movs r1, #3
    ldrsb r1, [r5, r1]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L0805305C
    movs r2, #0
.L0805305C:
    mov r0, r8
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
    ldr r4, .L080530A0 @ =0x0203E062
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #1
    adds r0, r0, r4
    strh r2, [r0]
    lsls r0, r7, #1
    bl func_08053340
    mov r2, sb
    movs r1, #3
    ldrsb r1, [r2, r1]
    adds r0, r0, r1
    lsls r0, r0, #0x10
    ldr r3, .L080530A4 @ =0x0203E0BC
    lsrs r2, r0, #0x10
    ldrh r5, [r3]
    lsls r1, r5, #0x10
    cmp r0, r1
    ble .L08053090
    ldrh r2, [r3]
.L08053090:
    adds r0, r7, #1
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    lsls r0, r7, #2
    b .L08053100
    .align 2, 0
.L0805309C: .4byte 0x0203E014
.L080530A0: .4byte 0x0203E062
.L080530A4: .4byte 0x0203E0BC
.L080530A8:
    lsls r0, r7, #1
    bl func_08053340
    mov r2, sb
    movs r1, #3
    ldrsb r1, [r2, r1]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L080530C0
    movs r2, #0
.L080530C0:
    adds r0, r7, #1
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    ldr r4, .L08053108 @ =0x0203E062
    lsls r0, r7, #2
    adds r0, r0, r4
    strh r2, [r0]
    mov r5, r8
    lsls r0, r5, #1
    adds r0, #1
    bl func_08053340
    mov r2, sb
    movs r1, #3
    ldrsb r1, [r2, r1]
    adds r0, r0, r1
    lsls r0, r0, #0x10
    ldr r3, .L0805310C @ =0x0203E0BC
    lsrs r2, r0, #0x10
    ldrh r5, [r3, #2]
    lsls r1, r5, #0x10
    cmp r0, r1
    ble .L080530F0
    ldrh r2, [r3, #2]
.L080530F0:
    mov r0, r8
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #1
.L08053100:
    adds r0, r0, r4
    strh r2, [r0]
    b .L080531E6
    .align 2, 0
.L08053108: .4byte 0x0203E062
.L0805310C: .4byte 0x0203E0BC
.L08053110:
    ldr r0, .L08053184 @ =0x0203E014
    movs r1, #0
    ldrsh r0, [r0, r1]
    ldr r2, [sp, #0x10]
    cmp r0, r2
    bne .L0805318C
    mov r1, r8
    lsls r0, r1, #1
    adds r0, #1
    bl func_08053340
    mov r2, sb
    movs r1, #3
    ldrsb r1, [r2, r1]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L08053138
    movs r2, #0
.L08053138:
    mov r0, r8
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    mov r8, r0
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #1
    ldr r1, .L08053188 @ =0x0203E062
    adds r0, r0, r1
    strh r2, [r0]
    movs r0, #0x40
    mov r2, sb
    ldrh r2, [r2]
    ands r0, r2
    cmp r0, #0
    beq .L08053166
    movs r1, #0x80
    lsls r1, r1, #6
    adds r0, r1, #0
    ldrh r2, [r4]
    orrs r0, r2
    strh r0, [r4]
.L08053166:
    movs r1, #0x80
    lsls r1, r1, #4
    adds r0, r1, #0
    mov r2, sb
    ldrh r2, [r2]
    ands r0, r2
    cmp r0, #0
    beq .L080531E6
    movs r1, #0x80
    lsls r1, r1, #5
    adds r0, r1, #0
    ldrh r2, [r5]
    orrs r0, r2
    strh r0, [r5]
    b .L080531E6
    .align 2, 0
.L08053184: .4byte 0x0203E014
.L08053188: .4byte 0x0203E062
.L0805318C:
    lsls r0, r7, #1
    bl func_08053340
    mov r2, sb
    movs r1, #3
    ldrsb r1, [r2, r1]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L080531A4
    movs r2, #0
.L080531A4:
    adds r0, r7, #1
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    lsls r0, r7, #2
    ldr r1, .L08053210 @ =0x0203E062
    adds r0, r0, r1
    strh r2, [r0]
    movs r0, #0x40
    mov r2, sb
    ldrh r2, [r2]
    ands r0, r2
    cmp r0, #0
    beq .L080531CA
    movs r1, #0x80
    lsls r1, r1, #6
    adds r0, r1, #0
    ldrh r2, [r5]
    orrs r0, r2
    strh r0, [r5]
.L080531CA:
    movs r5, #0x80
    lsls r5, r5, #4
    adds r0, r5, #0
    mov r1, sb
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L080531E6
    movs r2, #0x80
    lsls r2, r2, #5
.L080531DE:
    adds r0, r2, #0
    ldrh r5, [r4]
    orrs r0, r5
    strh r0, [r4]
.L080531E6:
    movs r0, #4
    add sb, r0
    ldr r1, [sp, #0xc]
    adds r1, #1
    str r1, [sp, #0xc]
    mov r2, sb
    ldrb r1, [r2, #2]
.L080531F4:
    movs r0, #0x80
    ands r0, r1
    cmp r0, #0
    bne .L080531FE
    b .L08052DE4
.L080531FE:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08053210: .4byte 0x0203E062
    func_end func_08052C9C

    thumb_func_start func_08053214
func_08053214: @ 0x08053214
    ldr r1, .L08053224 @ =0x0203A4F0
    movs r0, #2
    ldrb r1, [r1, #2]
    ands r0, r1
    cmp r0, #0
    bne .L08053228
    movs r0, #0
    b .L0805322A
    .align 2, 0
.L08053224: .4byte 0x0203A4F0
.L08053228:
    movs r0, #1
.L0805322A:
    bx lr
    func_end func_08053214

    thumb_func_start func_0805322C
func_0805322C: @ 0x0805322C
    ldr r3, .L0805324C @ =0x030014D8
    ldr r2, [r0]
    ldr r1, [r0, #4]
    ldr r0, [r2, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    lsrs r0, r0, #8
    movs r1, #1
    ands r0, r1
    adds r2, #0x23
    adds r2, r2, r0
    ldrb r0, [r2]
    strh r0, [r3]
    subs r0, #1
    bx lr
    .align 2, 0
.L0805324C: .4byte 0x030014D8
    func_end func_0805322C

    thumb_func_start func_08053250
func_08053250: @ 0x08053250
    push {lr}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x8b
    bne .L08053290
    adds r0, r1, #0
    bl GetItemIndex
    cmp r0, #0x35
    beq .L08053280
    cmp r0, #0x35
    bgt .L08053272
    cmp r0, #0x34
    beq .L08053278
    b .L08053290
.L08053272:
    cmp r0, #0x36
    beq .L08053288
    b .L08053290
.L08053278:
    ldr r0, .L0805327C @ =0x081DA224
    b .L08053292
    .align 2, 0
.L0805327C: .4byte 0x081DA224
.L08053280:
    ldr r0, .L08053284 @ =0x081DA204
    b .L08053292
    .align 2, 0
.L08053284: .4byte 0x081DA204
.L08053288:
    ldr r0, .L0805328C @ =0x081DA244
    b .L08053292
    .align 2, 0
.L0805328C: .4byte 0x081DA244
.L08053290:
    movs r0, #0
.L08053292:
    pop {r1}
    bx r1
    func_end func_08053250

    thumb_func_start func_08053298
func_08053298: @ 0x08053298
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r1, r0, #0
    cmp r0, #0x40
    beq .L080532B4
    cmp r0, #0x40
    ble .L080532BC
    cmp r1, #0x80
    beq .L080532B0
    cmp r1, #0xc0
    beq .L080532B8
    b .L080532BC
.L080532B0:
    movs r0, #1
    b .L080532BE
.L080532B4:
    movs r0, #2
    b .L080532BE
.L080532B8:
    movs r0, #3
    b .L080532BE
.L080532BC:
    movs r0, #0
.L080532BE:
    bx lr
    func_end func_08053298

    thumb_func_start func_080532C0
func_080532C0: @ 0x080532C0
    push {r4, r5, lr}
    adds r5, r0, #0
    lsls r4, r1, #0x10
    lsrs r4, r4, #0x10
    bl func_08054678
    ldr r1, .L080532E8 @ =0x0203E08E
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r4, [r0]
    bl func_08054024
    adds r0, r5, #0
    movs r1, #6
    bl func_08054594
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080532E8: .4byte 0x0203E08E
    func_end func_080532C0

    thumb_func_start func_080532EC
func_080532EC: @ 0x080532EC
    ldr r1, .L08053308 @ =0x0203E036
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r2, [r0]
    movs r3, #0
    ldrsh r1, [r0, r3]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08053310
    ldr r0, .L0805330C @ =0x00000FFF
    ands r0, r2
    b .L08053312
    .align 2, 0
.L08053308: .4byte 0x0203E036
.L0805330C: .4byte 0x00000FFF
.L08053310:
    adds r0, r1, #0
.L08053312:
    bx lr
    func_end func_080532EC

    thumb_func_start func_08053314
func_08053314: @ 0x08053314
    ldr r1, .L08053334 @ =0x0203E036
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r2, [r0]
    movs r3, #0
    ldrsh r1, [r0, r3]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L0805333C
    ldr r0, .L08053338 @ =0xFFFFF000
    ands r0, r2
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    b .L0805333E
    .align 2, 0
.L08053334: .4byte 0x0203E036
.L08053338: .4byte 0xFFFFF000
.L0805333C:
    movs r0, #0
.L0805333E:
    bx lr
    func_end func_08053314

    thumb_func_start func_08053340
func_08053340: @ 0x08053340
    ldr r1, .L08053350 @ =0x0203E062
    lsls r0, r0, #1
    adds r0, r0, r1
    ldr r1, .L08053354 @ =0x00000FFF
    ldrh r0, [r0]
    ands r1, r0
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L08053350: .4byte 0x0203E062
.L08053354: .4byte 0x00000FFF
    func_end func_08053340

    thumb_func_start func_08053358
func_08053358: @ 0x08053358
    ldr r1, .L0805336C @ =0x0203E062
    lsls r0, r0, #1
    adds r0, r0, r1
    ldr r1, .L08053370 @ =0xFFFFF000
    ldrh r0, [r0]
    ands r1, r0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    adds r0, r1, #0
    bx lr
    .align 2, 0
.L0805336C: .4byte 0x0203E062
.L08053370: .4byte 0xFFFFF000
    func_end func_08053358

    thumb_func_start func_08053374
func_08053374: @ 0x08053374
    push {r4, r5, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    adds r5, r4, #0
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x7c
    beq .L080533A8
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x7d
    beq .L080533A8
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x7e
    beq .L080533A8
    adds r0, r5, #0
    bl GetItemIndex
    cmp r0, #0x7f
    beq .L080533A8
    movs r0, #0
    b .L080533AA
.L080533A8:
    movs r0, #1
.L080533AA:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_08053374

    thumb_func_start func_080533B0
func_080533B0: @ 0x080533B0
    push {r4, r5, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    adds r5, r4, #0
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x84
    beq .L080533E4
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x85
    beq .L080533E4
    adds r0, r4, #0
    bl GetItemIndex
    cmp r0, #0x86
    beq .L080533E4
    adds r0, r5, #0
    bl GetItemIndex
    cmp r0, #0x3c
    beq .L080533E4
    movs r0, #0
    b .L080533E6
.L080533E4:
    movs r0, #1
.L080533E6:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_080533B0

    thumb_func_start func_080533EC
func_080533EC: @ 0x080533EC
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r2, #0x13
    bgt .L08053424
    ldr r1, .L08053418 @ =0x0203E036
    lsls r0, r2, #1
    adds r0, r0, r1
.L080533FA:
    movs r3, #0
    ldrsh r1, [r0, r3]
    cmp r1, #0
    beq .L08053412
    cmp r1, #1
    beq .L08053412
    cmp r1, #2
    beq .L08053412
    cmp r1, #3
    beq .L08053412
    cmp r1, #9
    bne .L0805341C
.L08053412:
    movs r0, #1
    b .L08053426
    .align 2, 0
.L08053418: .4byte 0x0203E036
.L0805341C:
    adds r0, #4
    adds r2, #2
    cmp r2, #0x13
    ble .L080533FA
.L08053424:
    movs r0, #0
.L08053426:
    bx lr
    func_end func_080533EC

    thumb_func_start func_08053428
func_08053428: @ 0x08053428
    ldr r1, .L08053430 @ =0x0203E0EC
    movs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L08053430: .4byte 0x0203E0EC
    func_end func_08053428

    thumb_func_start func_08053434
func_08053434: @ 0x08053434
    ldr r1, .L0805343C @ =0x0203E0EC
    movs r0, #0
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805343C: .4byte 0x0203E0EC
    func_end func_08053434

    thumb_func_start func_08053440
func_08053440: @ 0x08053440
    ldr r0, .L0805344C @ =0x0203E0EC
    ldr r0, [r0]
    cmp r0, #0
    beq .L08053450
    movs r0, #1
    b .L08053452
    .align 2, 0
.L0805344C: .4byte 0x0203E0EC
.L08053450:
    movs r0, #0
.L08053452:
    bx lr
    func_end func_08053440
