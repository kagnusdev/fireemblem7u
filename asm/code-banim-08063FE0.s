    .include "asm_prelude.inc"

    thumb_func_start func_08063FE0
func_08063FE0: @ 0x08063FE0
    ldr r0, .L08063FEC @ =0x0203E0F4
    movs r1, #0
    str r1, [r0]
    ldr r0, .L08063FF0 @ =0x0203E0F8
    str r1, [r0]
    bx lr
    .align 2, 0
.L08063FEC: .4byte 0x0203E0F4
.L08063FF0: .4byte 0x0203E0F8
    func_end func_08063FE0

    thumb_func_start func_08063FF4
func_08063FF4: @ 0x08063FF4
    push {r4, lr}
    ldr r4, .L0806400C @ =0x0203E0F4
    ldr r0, [r4]
    cmp r0, #0
    beq .L08064006
    bl Proc_End
    movs r0, #0
    str r0, [r4]
.L08064006:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806400C: .4byte 0x0203E0F4
    func_end func_08063FF4

    thumb_func_start func_08064010
func_08064010: @ 0x08064010
    push {r4, lr}
    ldr r4, .L08064028 @ =0x0203E0F8
    ldr r0, [r4]
    cmp r0, #0
    beq .L08064022
    bl Proc_End
    movs r0, #0
    str r0, [r4]
.L08064022:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08064028: .4byte 0x0203E0F8
    func_end func_08064010

    thumb_func_start func_0806402C
func_0806402C: @ 0x0806402C
    ldr r1, .L08064034 @ =0x0203E0F4
    str r0, [r1]
    bx lr
    .align 2, 0
.L08064034: .4byte 0x0203E0F4
    func_end func_0806402C

    thumb_func_start func_08064038
func_08064038: @ 0x08064038
    ldr r1, .L08064040 @ =0x0203E0F8
    str r0, [r1]
    bx lr
    .align 2, 0
.L08064040: .4byte 0x0203E0F8
    func_end func_08064038

    thumb_func_start func_08064044
func_08064044: @ 0x08064044
    ldr r0, [r0, #0x44]
    ldr r0, [r0, #0x30]
    bx lr
    func_end func_08064044

    thumb_func_start func_0806404C
func_0806404C: @ 0x0806404C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08064068
    ldr r0, .L08064064 @ =0x081D8599
    ldrh r1, [r4, #2]
    ldrb r0, [r0]
    subs r0, r1, r0
    b .L08064070
    .align 2, 0
.L08064064: .4byte 0x081D8599
.L08064068:
    ldr r0, .L080640A0 @ =0x081D859E
    ldrb r0, [r0]
    ldrh r3, [r4, #2]
    subs r0, r0, r3
.L08064070:
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    movs r2, #0x58
    ldrh r4, [r4, #4]
    subs r2, r2, r4
    ldrh r0, [r5, #0x12]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    ldrh r3, [r5, #2]
    subs r1, r1, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    ldrh r5, [r5, #4]
    subs r2, r2, r5
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    bl SetBgOffset
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080640A0: .4byte 0x081D859E
    func_end func_0806404C

    thumb_func_start func_080640A4
func_080640A4: @ 0x080640A4
    push {r4, lr}
    sub sp, #4
    bl func_08064044
    adds r4, r0, #0
    movs r0, #0
    str r0, [sp]
    ldr r1, [r4, #0x14]
    ldr r2, .L080640D0 @ =0x01000200
    mov r0, sp
    bl CpuFastSet
    movs r0, #1
    ldrh r4, [r4, #0x12]
    lsls r0, r4
    bl EnableBgSync
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080640D0: .4byte 0x01000200
    func_end func_080640A4

    thumb_func_start func_080640D4
func_080640D4: @ 0x080640D4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r7, r2, #0
    adds r6, r3, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    bl func_08064044
    mov r8, r0
    cmp r4, #0
    bne .L080640F4
    adds r0, r7, #0
    b .L080640F6
.L080640F4:
    adds r0, r6, #0
.L080640F6:
    movs r1, #0x78
    bl AnimCreate
    adds r2, r0, #0
    mov r1, r8
    ldrh r1, [r1, #0x10]
    lsls r0, r1, #0xc
    mov r3, r8
    ldrh r3, [r3, #0xe]
    orrs r0, r3
    movs r3, #0x80
    lsls r3, r3, #4
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r2, #8]
    ldrh r0, [r5, #2]
    strh r0, [r2, #2]
    ldrh r0, [r5, #4]
    strh r0, [r2, #4]
    adds r0, r2, #0
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_080640D4

    thumb_func_start func_08064128
func_08064128: @ 0x08064128
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r2, #0
    lsls r1, r1, #0x10
    lsrs r7, r1, #0x10
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    adds r5, r3, #0
    bl func_08064044
    adds r4, r0, #0
    cmp r5, #1
    bne .L0806414A
    ldr r1, [r4, #0x1c]
    adds r0, r6, #0
    bl LZ77UnCompWram
.L0806414A:
    adds r2, r6, #0
    cmp r5, #1
    bne .L08064152
    ldr r2, [r4, #0x1c]
.L08064152:
    cmp r7, #0
    bne .L0806416C
    ldr r1, [r4, #0x14]
    ldrh r0, [r4, #0xc]
    str r0, [sp]
    ldrh r0, [r4, #0xa]
    str r0, [sp, #4]
    adds r0, r2, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl EfxTmCpyBgHFlip
    b .L08064180
.L0806416C:
    ldr r1, [r4, #0x14]
    ldrh r0, [r4, #0xc]
    str r0, [sp]
    ldrh r0, [r4, #0xa]
    str r0, [sp, #4]
    adds r0, r2, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl EfxTmCpyBG
.L08064180:
    movs r0, #1
    ldrh r4, [r4, #0x12]
    lsls r0, r4
    bl EnableBgSync
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08064128

    thumb_func_start func_08064194
func_08064194: @ 0x08064194
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    bl func_08064044
    adds r4, r0, #0
    ldrh r0, [r4, #0xa]
    lsls r5, r0, #5
    movs r0, #0xc0
    lsls r0, r0, #0x13
    adds r5, r5, r0
    ldr r1, [r4, #0x18]
    adds r0, r6, #0
    bl LZ77UnCompWram
    ldr r0, [r4, #0x18]
    movs r2, #0x80
    lsls r2, r2, #6
    adds r1, r5, #0
    bl RegisterDataMove
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08064194

    thumb_func_start func_080641C4
func_080641C4: @ 0x080641C4
    push {r4, lr}
    adds r4, r1, #0
    bl func_08064044
    ldrh r0, [r0, #0xc]
    lsls r1, r0, #5
    ldr r0, .L080641E8 @ =gPal
    adds r1, r1, r0
    adds r0, r4, #0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080641E8: .4byte gPal
    func_end func_080641C4

    thumb_func_start func_080641EC
func_080641EC: @ 0x080641EC
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    bl func_08064044
    adds r4, r0, #0
    ldrh r0, [r4, #0xe]
    lsls r5, r0, #5
    ldr r0, .L08064218 @ =0x06010000
    adds r5, r5, r0
    ldr r1, [r4, #0x20]
    adds r0, r6, #0
    bl LZ77UnCompWram
    ldr r0, [r4, #0x20]
    movs r2, #0x80
    lsls r2, r2, #5
    adds r1, r5, #0
    bl RegisterDataMove
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08064218: .4byte 0x06010000
    func_end func_080641EC

    thumb_func_start func_0806421C
func_0806421C: @ 0x0806421C
    push {r4, lr}
    adds r4, r1, #0
    bl func_08064044
    ldrh r0, [r0, #0x10]
    lsls r1, r0, #5
    ldr r0, .L08064240 @ =0x02022A60
    adds r1, r1, r0
    adds r0, r4, #0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08064240: .4byte 0x02022A60
    func_end func_0806421C

    thumb_func_start func_08064244
func_08064244: @ 0x08064244
    push {r4, lr}
    adds r4, r0, #0
    bl func_08064044
    ldr r1, .L08064264 @ =0x08BA47D8
    ldrh r0, [r0]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r4, #0
    bl _call_via_r1
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08064264: .4byte 0x08BA47D8
    func_end func_08064244

    thumb_func_start func_08064268
func_08064268: @ 0x08064268
    bx lr
    func_end func_08064268

    thumb_func_start func_0806426C
func_0806426C: @ 0x0806426C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L08064288 @ =0x08BA47F8
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    bl func_0806402C
    str r4, [r5, #0x5c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08064288: .4byte 0x08BA47F8
    func_end func_0806426C

    thumb_func_start func_0806428C
func_0806428C: @ 0x0806428C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_080642AC
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_08064358
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806428C

    thumb_func_start func_080642AC
func_080642AC: @ 0x080642AC
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08064044
    adds r6, r0, #0
    ldr r0, .L080642F8 @ =0x08BA4820
    adds r1, r4, #0
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    ldr r0, .L080642FC @ =0x081E9838
    str r0, [r4, #0x48]
    ldr r0, .L08064300 @ =0x08BA4838
    str r0, [r4, #0x4c]
    ldr r1, .L08064304 @ =0x081FD2CC
    adds r0, r5, #0
    bl func_080641C4
    ldr r0, [r4, #0x5c]
    ldr r1, .L08064308 @ =0x081FC6D4
    bl func_08064194
    ldr r0, [r6, #0x24]
    bl _call_via_r0
    ldr r0, [r4, #0x5c]
    adds r1, r6, #0
    bl func_0806404C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080642F8: .4byte 0x08BA4820
.L080642FC: .4byte 0x081E9838
.L08064300: .4byte 0x08BA4838
.L08064304: .4byte 0x081FD2CC
.L08064308: .4byte 0x081FC6D4
    func_end func_080642AC

    thumb_func_start func_0806430C
func_0806430C: @ 0x0806430C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08064338
    ldr r2, [r4, #0x4c]
    ldr r0, [r4, #0x5c]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #1
    movs r3, #1
    bl func_08064128
    b .L08064350
.L08064338:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08064350
    ldr r0, [r4, #0x5c]
    bl func_080640A4
    bl SpellFx_ClearColorEffects
    adds r0, r4, #0
    bl Proc_Break
.L08064350:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806430C

    thumb_func_start func_08064358
func_08064358: @ 0x08064358
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08064044
    adds r7, r0, #0
    ldr r0, .L08064394 @ =0x08BA4868
    adds r1, r4, #0
    bl Proc_Start
    adds r6, r0, #0
    str r5, [r6, #0x5c]
    movs r0, #0
    strh r0, [r6, #0x2c]
    ldr r2, .L08064398 @ =0x08BB46D0
    ldr r3, .L0806439C @ =0x08BB4348
    adds r0, r5, #0
    movs r1, #1
    bl func_080640D4
    adds r4, r0, #0
    str r4, [r6, #0x60]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080643A0
    ldrh r0, [r5, #2]
    subs r0, #8
    b .L080643A4
    .align 2, 0
.L08064394: .4byte 0x08BA4868
.L08064398: .4byte 0x08BB46D0
.L0806439C: .4byte 0x08BB4348
.L080643A0:
    ldrh r0, [r5, #2]
    adds r0, #8
.L080643A4:
    strh r0, [r4, #2]
    ldrh r0, [r5, #4]
    adds r0, #8
    strh r0, [r4, #4]
    ldrh r2, [r4, #2]
    ldrh r3, [r7, #6]
    adds r1, r2, r3
    strh r1, [r4, #2]
    ldrh r7, [r7, #8]
    adds r0, r7, r0
    strh r0, [r4, #4]
    ldr r0, [r6, #0x5c]
    ldr r1, .L080643D0 @ =0x081FEE00
    bl func_0806421C
    ldr r0, [r6, #0x5c]
    ldr r1, .L080643D4 @ =0x081FE804
    bl func_080641EC
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080643D0: .4byte 0x081FEE00
.L080643D4: .4byte 0x081FE804
    func_end func_08064358

    thumb_func_start func_080643D8
func_080643D8: @ 0x080643D8
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x32
    ble .L080643F6
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L080643F6:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080643D8

    thumb_func_start func_080643FC
func_080643FC: @ 0x080643FC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L08064418 @ =0x08BA4880
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    bl func_0806402C
    str r4, [r5, #0x5c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08064418: .4byte 0x08BA4880
    func_end func_080643FC

    thumb_func_start func_0806441C
func_0806441C: @ 0x0806441C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_08064444
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_08064524
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_08064598
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806441C

    thumb_func_start func_08064444
func_08064444: @ 0x08064444
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    bl func_08064044
    adds r6, r0, #0
    ldr r0, .L0806448C @ =0x08BA48A8
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    ldr r0, .L08064490 @ =0x081E986A
    str r0, [r4, #0x48]
    ldr r0, .L08064494 @ =0x08BA48C0
    str r0, [r4, #0x4c]
    ldr r1, .L08064498 @ =0x081FBD70
    adds r0, r5, #0
    bl func_080641C4
    ldr r0, [r4, #0x5c]
    ldr r1, .L0806449C @ =0x081FB4B4
    bl func_08064194
    ldr r0, [r6, #0x24]
    bl _call_via_r0
    ldr r0, [r4, #0x5c]
    adds r1, r6, #0
    bl func_0806404C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0806448C: .4byte 0x08BA48A8
.L08064490: .4byte 0x081E986A
.L08064494: .4byte 0x08BA48C0
.L08064498: .4byte 0x081FBD70
.L0806449C: .4byte 0x081FB4B4
    func_end func_08064444

    thumb_func_start func_080644A0
func_080644A0: @ 0x080644A0
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r7, #0
    ldr r0, [r4, #0x5c]
    bl func_08064044
    adds r6, r0, #0
    adds r0, r4, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r5, r0, #0x10
    cmp r5, #0
    blt .L08064502
    ldr r2, [r4, #0x4c]
    ldr r0, [r4, #0x5c]
    lsls r1, r5, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #0
    movs r3, #1
    bl func_08064128
    cmp r5, #0
    bne .L080644E4
    ldrh r0, [r6, #0xa]
    adds r0, #0x1f
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
.L080644E4:
    cmp r5, #1
    bne .L080644F0
    ldrh r0, [r6, #0xa]
    adds r0, #0x50
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
.L080644F0:
    ldr r0, [r6, #0x14]
    adds r0, #0x3c
    ldrh r3, [r6, #0xc]
    str r7, [sp]
    movs r1, #2
    movs r2, #0x14
    bl FillBGRect
    b .L0806451A
.L08064502:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0806451A
    ldr r0, [r4, #0x5c]
    bl func_080640A4
    bl SpellFx_ClearColorEffects
    adds r0, r4, #0
    bl Proc_Break
.L0806451A:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080644A0

    thumb_func_start func_08064524
func_08064524: @ 0x08064524
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L0806454C @ =0x08BA48C8
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    bl func_08064038
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    ldr r0, .L08064550 @ =0x081E9874
    str r0, [r4, #0x48]
    ldr r0, .L08064554 @ =0x081FBD70
    str r0, [r4, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806454C: .4byte 0x08BA48C8
.L08064550: .4byte 0x081E9874
.L08064554: .4byte 0x081FBD70
    func_end func_08064524

    thumb_func_start func_08064558
func_08064558: @ 0x08064558
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0806457E
    ldr r1, [r4, #0x4c]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #5
    adds r1, r1, r2
    bl func_080641C4
    b .L08064590
.L0806457E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L08064590
    bl func_08064010
    adds r0, r4, #0
    bl Proc_Break
.L08064590:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08064558

    thumb_func_start func_08064598
func_08064598: @ 0x08064598
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    bl func_08064044
    adds r7, r0, #0
    ldr r0, .L080645D4 @ =0x08BA48E8
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r5, [r6, #0x5c]
    movs r0, #0
    strh r0, [r6, #0x2c]
    ldr r2, .L080645D8 @ =0x08BB3F30
    ldr r3, .L080645DC @ =0x08BB3404
    adds r0, r5, #0
    movs r1, #1
    bl func_080640D4
    adds r4, r0, #0
    str r4, [r6, #0x60]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080645E0
    ldrh r0, [r5, #2]
    adds r0, #0x38
    b .L080645E4
    .align 2, 0
.L080645D4: .4byte 0x08BA48E8
.L080645D8: .4byte 0x08BB3F30
.L080645DC: .4byte 0x08BB3404
.L080645E0:
    ldrh r0, [r5, #2]
    subs r0, #0x38
.L080645E4:
    strh r0, [r4, #2]
    ldrh r1, [r4, #2]
    ldrh r2, [r7, #6]
    adds r0, r1, r2
    strh r0, [r4, #2]
    ldrh r1, [r4, #4]
    ldrh r7, [r7, #8]
    adds r0, r1, r7
    strh r0, [r4, #4]
    ldr r0, [r6, #0x5c]
    ldr r1, .L0806460C @ =0x081FC634
    bl func_0806421C
    ldr r0, [r6, #0x5c]
    ldr r1, .L08064610 @ =0x081FC19C
    bl func_080641EC
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806460C: .4byte 0x081FC634
.L08064610: .4byte 0x081FC19C
    func_end func_08064598

    thumb_func_start func_08064614
func_08064614: @ 0x08064614
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x32
    ble .L08064632
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08064632:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08064614

    thumb_func_start func_08064638
func_08064638: @ 0x08064638
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08064650 @ =0x08BA4900
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08064650: .4byte 0x08BA4900
    func_end func_08064638

    thumb_func_start func_08064654
func_08064654: @ 0x08064654
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_080648AC
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_080646C8
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_08064768
    ldr r3, .L080646C4 @ =gDispIo
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
    movs r1, #0
    strb r1, [r0]
    adds r2, #9
    movs r0, #0x10
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x46
    strb r1, [r0]
    ldr r0, [r4, #0x5c]
    str r4, [sp]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_080647DC
    ldr r0, [r4, #0x5c]
    str r4, [sp]
    movs r1, #0x23
    movs r2, #0x19
    movs r3, #1
    bl func_080647DC
    adds r0, r4, #0
    bl Proc_Break
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080646C4: .4byte gDispIo
    func_end func_08064654

    thumb_func_start func_080646C8
func_080646C8: @ 0x080646C8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    bl func_08064044
    adds r6, r0, #0
    ldr r0, .L0806470C @ =0x08BA4928
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    bl func_0806402C
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    ldr r0, .L08064710 @ =0x081E98B6
    str r0, [r4, #0x48]
    ldr r0, .L08064714 @ =0x08BA4940
    str r0, [r4, #0x4c]
    ldr r1, .L08064718 @ =0x08269CF8
    adds r0, r5, #0
    bl func_08064194
    ldr r0, [r6, #0x24]
    bl _call_via_r0
    ldr r0, [r4, #0x5c]
    adds r1, r6, #0
    bl func_0806404C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0806470C: .4byte 0x08BA4928
.L08064710: .4byte 0x081E98B6
.L08064714: .4byte 0x08BA4940
.L08064718: .4byte 0x08269CF8
    func_end func_080646C8

    thumb_func_start func_0806471C
func_0806471C: @ 0x0806471C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08064748
    ldr r2, [r4, #0x4c]
    ldr r0, [r4, #0x5c]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r2, [r1]
    movs r1, #1
    movs r3, #0
    bl func_08064128
    b .L08064760
.L08064748:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08064760
    ldr r0, [r4, #0x5c]
    bl func_080640A4
    bl SpellFx_ClearColorEffects
    adds r0, r4, #0
    bl Proc_Break
.L08064760:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806471C

    thumb_func_start func_08064768
func_08064768: @ 0x08064768
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08064790 @ =0x08BA4944
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    bl func_08064038
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    ldr r0, .L08064794 @ =0x081E98BC
    str r0, [r4, #0x48]
    ldr r0, .L08064798 @ =0x0826A7E8
    str r0, [r4, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08064790: .4byte 0x08BA4944
.L08064794: .4byte 0x081E98BC
.L08064798: .4byte 0x0826A7E8
    func_end func_08064768

    thumb_func_start func_0806479C
func_0806479C: @ 0x0806479C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L080647C2
    ldr r1, [r4, #0x4c]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #5
    adds r1, r1, r2
    bl func_080641C4
    b .L080647D4
.L080647C2:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L080647D4
    bl func_08064010
    adds r0, r4, #0
    bl Proc_Break
.L080647D4:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0806479C

    thumb_func_start func_080647DC
func_080647DC: @ 0x080647DC
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r0, .L08064808 @ =0x08BA4964
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    strh r5, [r0, #0x2c]
    strh r6, [r0, #0x2e]
    adds r0, #0x29
    mov r1, r8
    strb r1, [r0]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08064808: .4byte 0x08BA4964
    func_end func_080647DC

    thumb_func_start func_0806480C
func_0806480C: @ 0x0806480C
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    subs r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L08064822
    adds r0, r1, #0
    bl Proc_Break
.L08064822:
    pop {r0}
    bx r0
    func_end func_0806480C

    thumb_func_start func_08064828
func_08064828: @ 0x08064828
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    cmp r1, r0
    ble .L08064842
    adds r0, r4, #0
    bl Proc_Break
    b .L080648A0
.L08064842:
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0806485E
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x10
    b .L0806486E
.L0806485E:
    movs r2, #0x2c
    ldrsh r3, [r4, r2]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
.L0806486E:
    bl Interpolate
    adds r5, r0, #0
    ldr r3, .L080648A8 @ =gDispIo
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
    movs r1, #0
    strb r5, [r0]
    adds r2, #9
    movs r0, #0x10
    strb r0, [r2]
    adds r0, r3, #0
    adds r0, #0x46
    strb r1, [r0]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
.L080648A0:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080648A8: .4byte gDispIo
    func_end func_08064828

    thumb_func_start func_080648AC
func_080648AC: @ 0x080648AC
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    bl func_08064044
    adds r6, r0, #0
    ldr r0, .L08064900 @ =0x08BA4984
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x33
    strh r0, [r4, #0x2e]
    ldr r3, .L08064904 @ =0x08BBE6B0
    adds r0, r5, #0
    movs r1, #1
    adds r2, r3, #0
    bl func_080640D4
    str r0, [r4, #0x60]
    ldrh r2, [r0, #2]
    ldrh r3, [r6, #6]
    adds r1, r2, r3
    strh r1, [r0, #2]
    ldrh r2, [r0, #4]
    ldrh r6, [r6, #8]
    adds r1, r2, r6
    strh r1, [r0, #4]
    ldr r0, [r4, #0x5c]
    ldr r1, .L08064908 @ =0x0826AC3C
    bl func_0806421C
    ldr r0, [r4, #0x5c]
    ldr r1, .L0806490C @ =0x0826A9E8
    bl func_080641EC
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08064900: .4byte 0x08BA4984
.L08064904: .4byte 0x08BBE6B0
.L08064908: .4byte 0x0826AC3C
.L0806490C: .4byte 0x0826A9E8
    func_end func_080648AC

    thumb_func_start func_08064910
func_08064910: @ 0x08064910
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L08064930
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08064930:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08064910

    thumb_func_start func_08064938
func_08064938: @ 0x08064938
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L08064954 @ =0x08BA499C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    bl func_0806402C
    str r4, [r5, #0x5c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08064954: .4byte 0x08BA499C
    func_end func_08064938

    thumb_func_start func_08064958
func_08064958: @ 0x08064958
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    bl func_08064970
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08064958

    thumb_func_start func_08064970
func_08064970: @ 0x08064970
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08064044
    adds r6, r0, #0
    ldr r0, .L080649B4 @ =0x08BA49C4
    adds r1, r4, #0
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    ldr r0, .L080649B8 @ =0x081E98FE
    str r0, [r4, #0x48]
    ldr r0, .L080649BC @ =0x08BA4AE4
    str r0, [r4, #0x4c]
    str r0, [r4, #0x50]
    ldr r0, .L080649C0 @ =0x08BA49DC
    str r0, [r4, #0x54]
    ldr r0, .L080649C4 @ =0x08BA4A60
    str r0, [r4, #0x58]
    ldr r0, [r6, #0x24]
    bl _call_via_r0
    ldr r0, [r4, #0x5c]
    adds r1, r6, #0
    bl func_0806404C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080649B4: .4byte 0x08BA49C4
.L080649B8: .4byte 0x081E98FE
.L080649BC: .4byte 0x08BA4AE4
.L080649C0: .4byte 0x08BA49DC
.L080649C4: .4byte 0x08BA4A60
    func_end func_08064970

    thumb_func_start func_080649C8
func_080649C8: @ 0x080649C8
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl EfxAdvanceFrameLut
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L08064A0C
    ldr r6, [r7, #0x4c]
    ldr r1, [r7, #0x54]
    ldr r5, [r7, #0x58]
    ldr r0, [r7, #0x5c]
    lsls r4, r4, #2
    adds r1, r4, r1
    ldr r1, [r1]
    bl func_08064194
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    bl func_080641C4
    ldr r0, [r7, #0x5c]
    adds r4, r4, r6
    ldr r2, [r4]
    movs r1, #0
    movs r3, #1
    bl func_08064128
    b .L08064A24
.L08064A0C:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L08064A24
    ldr r0, [r7, #0x5c]
    bl func_080640A4
    bl SpellFx_ClearColorEffects
    adds r0, r7, #0
    bl Proc_Break
.L08064A24:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080649C8

    thumb_func_start func_08064A2C
func_08064A2C: @ 0x08064A2C
    ldr r0, .L08064A38 @ =0x02020040
    movs r1, #1
    ldrh r2, [r0]
    orrs r1, r2
    strh r1, [r0]
    bx lr
    .align 2, 0
.L08064A38: .4byte 0x02020040
    func_end func_08064A2C

    thumb_func_start func_08064A3C
func_08064A3C: @ 0x08064A3C
    ldr r0, .L08064A44 @ =0x02020040
    ldrh r0, [r0]
    bx lr
    .align 2, 0
.L08064A44: .4byte 0x02020040
    func_end func_08064A3C
