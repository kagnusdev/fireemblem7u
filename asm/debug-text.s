    .include "asm_prelude.inc"

    thumb_func_start DebugInitBg
DebugInitBg: @ 0x08004EF8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    cmp r6, #0
    bne .L08004F06
    movs r6, #0xb0
    lsls r6, r6, #7
.L08004F06:
    adds r0, r5, #0
    movs r1, #0
    bl SetBgChrOffset
    adds r0, r5, #0
    movs r1, #0
    bl SetBgScreenSize
    ldr r0, .L08004F5C @ =0x08B8590C
    ldr r1, .L08004F60 @ =0x0001FFFF
    ands r1, r6
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r1, r1, r2
    movs r2, #0x80
    lsls r2, r2, #4
    bl RegisterDataMove
    ldr r1, .L08004F64 @ =gPal
    movs r0, #0
    strh r0, [r1]
    ldr r0, .L08004F68 @ =0x00007FFF
    strh r0, [r1, #4]
    bl EnablePalSync
    adds r0, r5, #0
    bl GetBgTilemap
    movs r1, #0
    bl TmFill
    ldr r4, .L08004F6C @ =gDebugText
    strh r5, [r4, #4]
    str r6, [r4]
    adds r0, r5, #0
    adds r1, r6, #0
    bl GetBgChrId
    strh r0, [r4, #6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08004F5C: .4byte 0x08B8590C
.L08004F60: .4byte 0x0001FFFF
.L08004F64: .4byte gPal
.L08004F68: .4byte 0x00007FFF
.L08004F6C: .4byte gDebugText
    func_end DebugInitBg

    thumb_func_start DebugPutStr
DebugPutStr: @ 0x08004F70
    push {r4, r5, r6, r7, lr}
    adds r2, r0, #0
    ldrb r0, [r1]
    ldr r5, .L08004F90 @ =gDebugText
    cmp r0, #0
    beq .L08004FAE
    adds r3, r5, #0
    ldr r4, .L08004F94 @ =0x0000FFC0
.L08004F80:
    cmp r0, #0x60
    bls .L08004F98
    ldrh r6, [r3, #6]
    adds r0, r6, r4
    ldrb r7, [r1]
    adds r0, r7, r0
    b .L08004FA2
    .align 2, 0
.L08004F90: .4byte gDebugText
.L08004F94: .4byte 0x0000FFC0
.L08004F98:
    ldrh r6, [r3, #6]
    ldr r7, .L08004FBC @ =0x0000FFE0
    adds r0, r6, r7
    ldrb r6, [r1]
    adds r0, r6, r0
.L08004FA2:
    strh r0, [r2]
    adds r2, #2
    adds r1, #1
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08004F80
.L08004FAE:
    movs r7, #4
    ldrsh r0, [r5, r7]
    bl EnableBgSyncById
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08004FBC: .4byte 0x0000FFE0
    func_end DebugPutStr

    thumb_func_start func_08004FC0
func_08004FC0: @ 0x08004FC0
    push {r1, r2, r3}
    push {lr}
    sub sp, #0x100
    mov r1, sp
    bl DebugPutStr
    add sp, #0x100
    pop {r3}
    add sp, #0xc
    bx r3
    func_end func_08004FC0

    thumb_func_start func_08004FD4
func_08004FD4: @ 0x08004FD4
    push {r4, r5, r6, lr}
    movs r1, #0
    ldr r2, .L08005010 @ =gDebugText
    ldr r6, .L08005014 @ =gBg2Tm
    movs r5, #0xff
    adds r4, r2, #0
    adds r4, #0x14
    movs r3, #0
.L08004FE4:
    adds r0, r1, #0
    ands r0, r5
    lsls r0, r0, #5
    adds r0, r0, r4
    strb r3, [r0]
    adds r1, #1
    cmp r1, #0xff
    ble .L08004FE4
    movs r0, #0
    str r0, [r2, #8]
    str r0, [r2, #0xc]
    adds r0, r6, #0
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08005010: .4byte gDebugText
.L08005014: .4byte gBg2Tm
    func_end func_08004FD4

    thumb_func_start func_08005018
func_08005018: @ 0x08005018
    push {r0, r1, r2, r3}
    push {lr}
    sub sp, #0x100
    mov r0, sp
    bl func_08005134
    add sp, #0x100
    pop {r3}
    add sp, #0x10
    bx r3
    func_end func_08005018

    thumb_func_start func_0800502C
func_0800502C: @ 0x0800502C
    ldr r1, .L0800503C @ =gNumberStr
    ldr r0, .L08005040 @ =0x20202020
    stm r1!, {r0}
    str r0, [r1]
    ldr r1, .L0800503C @ =gNumberStr
    movs r0, #0
    strb r0, [r1, #8]
    bx lr
    .align 2, 0
.L0800503C: .4byte gNumberStr
.L08005040: .4byte 0x20202020
    func_end func_0800502C

    thumb_func_start func_08005044
func_08005044: @ 0x08005044
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    bl func_0800502C
    movs r6, #7
    b .L08005056
.L08005050:
    subs r6, #1
    cmp r6, #0
    blt .L08005074
.L08005056:
    ldr r4, .L0800507C @ =gNumberStr
    adds r4, r6, r4
    adds r0, r5, #0
    movs r1, #0xa
    bl __modsi3
    adds r0, #0x30
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #0xa
    bl __divsi3
    adds r5, r0, #0
    cmp r5, #0
    bne .L08005050
.L08005074:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800507C: .4byte gNumberStr
    func_end func_08005044

    thumb_func_start func_08005080
func_08005080: @ 0x08005080
    push {r4, lr}
    adds r4, r0, #0
    bl func_0800502C
    cmp r4, #0xff
    beq .L08005094
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L080050A4
.L08005094:
    ldr r1, .L080050A0 @ =gNumberStr
    movs r0, #0x3a
    strb r0, [r1, #7]
    strb r0, [r1, #6]
    b .L080050AA
    .align 2, 0
.L080050A0: .4byte gNumberStr
.L080050A4:
    adds r0, r4, #0
    bl func_08005044
.L080050AA:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08005080

    thumb_func_start func_080050B0
func_080050B0: @ 0x080050B0
    push {r4, lr}
    adds r4, r1, #0
    bl func_08005044
    ldr r0, .L080050C8 @ =0x02028D4C
    subs r0, r0, r4
    bl func_08005134
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080050C8: .4byte 0x02028D4C
    func_end func_080050B0

    thumb_func_start func_080050CC
func_080050CC: @ 0x080050CC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    bl func_0800502C
    movs r2, #7
    ldr r1, .L08005110 @ =gNumberStr
    ldr r3, .L08005114 @ =0x08193D8C
    movs r0, #0xf
    ands r0, r4
    adds r0, r0, r3
    ldrb r0, [r0]
    strb r0, [r1, #7]
    asrs r4, r4, #4
    cmp r4, #0
    beq .L08005108
    adds r6, r1, #0
    adds r5, r3, #0
    movs r3, #0xf
.L080050F0:
    subs r2, #1
    cmp r2, #0
    blt .L08005108
    adds r0, r2, r6
    adds r1, r4, #0
    ands r1, r3
    adds r1, r1, r5
    ldrb r1, [r1]
    strb r1, [r0]
    asrs r4, r4, #4
    cmp r4, #0
    bne .L080050F0
.L08005108:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08005110: .4byte gNumberStr
.L08005114: .4byte 0x08193D8C
    func_end func_080050CC

    thumb_func_start func_08005118
func_08005118: @ 0x08005118
    push {r4, lr}
    adds r4, r1, #0
    bl func_080050CC
    ldr r0, .L08005130 @ =0x02028D4C
    subs r0, r0, r4
    bl func_08005134
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08005130: .4byte 0x02028D4C
    func_end func_08005118

    thumb_func_start func_08005134
func_08005134: @ 0x08005134
    push {r4, lr}
    adds r4, r0, #0
    ldrb r0, [r4]
    ldr r1, .L08005150 @ =gDebugText
    mov ip, r1
    cmp r0, #0
    beq .L08005186
    mov r3, ip
.L08005144:
    ldrb r2, [r4]
    ldr r0, [r3, #8]
    cmp r0, #0x30
    bne .L08005154
    movs r2, #0
    b .L08005156
    .align 2, 0
.L08005150: .4byte gDebugText
.L08005154:
    adds r4, #1
.L08005156:
    cmp r2, #0xa
    bne .L0800515C
    movs r2, #0
.L0800515C:
    ldrb r0, [r3, #0xc]
    lsls r1, r0, #5
    ldr r0, [r3, #8]
    adds r0, r0, r1
    adds r1, r3, #0
    adds r1, #0x14
    adds r0, r0, r1
    strb r2, [r0]
    ldr r0, [r3, #8]
    adds r0, #1
    str r0, [r3, #8]
    cmp r2, #0
    bne .L08005180
    mov r1, ip
    str r2, [r1, #8]
    ldr r0, [r1, #0xc]
    adds r0, #1
    str r0, [r1, #0xc]
.L08005180:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08005144
.L08005186:
    mov r2, ip
    ldr r0, [r2, #0x10]
    adds r0, #0x14
    ldr r1, [r2, #0xc]
    cmp r1, r0
    bls .L08005198
    adds r0, r1, #0
    subs r0, #0x14
    str r0, [r2, #0x10]
.L08005198:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08005134

    thumb_func_start func_080051A0
func_080051A0: @ 0x080051A0
    push {r4, r5, r6, r7, lr}
    ldr r0, .L080051E8 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r3, #0
    ldr r7, .L080051EC @ =gDebugText
    movs r0, #0x14
    adds r0, r0, r7
    mov ip, r0
    movs r6, #0xff
.L080051B6:
    lsls r1, r3, #6
    ldr r0, .L080051E8 @ =gBg2Tm
    adds r2, r1, r0
    ldr r0, [r7, #0x10]
    adds r0, r3, r0
    ands r0, r6
    lsls r0, r0, #5
    add r0, ip
    ldrb r0, [r0]
    adds r5, r3, #1
    cmp r0, #0
    beq .L08005206
    ldr r4, .L080051EC @ =gDebugText
    ldr r0, [r4, #0x10]
    adds r0, r3, r0
    ands r0, r6
    lsls r0, r0, #5
    adds r1, r4, #0
    adds r1, #0x14
    adds r1, r0, r1
.L080051DE:
    ldrb r0, [r1]
    cmp r0, #0x60
    bls .L080051F0
    subs r0, #0x40
    b .L080051F2
    .align 2, 0
.L080051E8: .4byte gBg2Tm
.L080051EC: .4byte gDebugText
.L080051F0:
    subs r0, #0x20
.L080051F2:
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r3, [r4, #6]
    adds r0, r3, r0
    strh r0, [r2]
    adds r2, #2
    adds r1, #1
    ldrb r0, [r1]
    cmp r0, #0
    bne .L080051DE
.L08005206:
    adds r3, r5, #0
    cmp r3, #0x13
    ble .L080051B6
    movs r0, #4
    bl EnableBgSync
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080051A0

    thumb_func_start func_08005218
func_08005218: @ 0x08005218
    push {r4, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    movs r0, #2
    ands r1, r0
    cmp r1, #0
    beq .L0800522E
    movs r0, #0
    b .L08005272
.L0800522E:
    bl func_080051A0
    ldr r3, .L08005278 @ =gDebugText
    ldr r0, [r3, #0xc]
    ldr r2, .L0800527C @ =0xFFFFFF00
    adds r1, r0, r2
    cmp r1, #0
    bge .L08005240
    movs r1, #0
.L08005240:
    adds r2, r0, #0
    subs r2, #0x14
    cmp r2, #0
    bge .L0800524A
    movs r2, #0
.L0800524A:
    movs r0, #0x40
    ands r0, r4
    cmp r0, #0
    beq .L0800525C
    ldr r0, [r3, #0x10]
    cmp r1, r0
    bhs .L0800525C
    subs r0, #1
    str r0, [r3, #0x10]
.L0800525C:
    movs r0, #0x80
    ands r0, r4
    cmp r0, #0
    beq .L08005270
    ldr r1, .L08005278 @ =gDebugText
    ldr r0, [r1, #0x10]
    cmp r2, r0
    bls .L08005270
    adds r0, #1
    str r0, [r1, #0x10]
.L08005270:
    movs r0, #1
.L08005272:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08005278: .4byte gDebugText
.L0800527C: .4byte 0xFFFFFF00
    func_end func_08005218

    thumb_func_start SetupDebugFontForOBJ
SetupDebugFontForOBJ: @ 0x08005280
    push {r4, lr}
    adds r2, r0, #0
    adds r4, r1, #0
    cmp r2, #0
    bge .L0800528E
    movs r2, #0xc0
    lsls r2, r2, #6
.L0800528E:
    ldr r0, .L080052F0 @ =0x0000FFFF
    ands r2, r0
    ldr r1, .L080052F4 @ =gDebugOam2Chr
    adds r0, r2, #0
    asrs r0, r0, #5
    str r0, [r1]
    ldr r1, .L080052F8 @ =gDebugOam2Pal
    movs r0, #0xf
    ands r0, r4
    lsls r0, r0, #0xc
    str r0, [r1]
    ldr r0, .L080052FC @ =0x08B8590C
    movs r3, #0x80
    lsls r3, r3, #9
    adds r1, r2, r3
    ldr r2, .L08005300 @ =0x0001FFFF
    ands r1, r2
    movs r2, #0xc0
    lsls r2, r2, #0x13
    adds r1, r1, r2
    movs r2, #0x80
    lsls r2, r2, #4
    bl RegisterDataMove
    ldr r3, .L08005304 @ =gPal
    adds r1, r4, #0
    adds r1, #0x10
    lsls r0, r1, #5
    adds r0, r0, r3
    movs r2, #0
    strh r2, [r0]
    lsls r1, r1, #4
    adds r0, r1, #1
    lsls r0, r0, #1
    adds r0, r0, r3
    movs r2, #0xf8
    lsls r2, r2, #7
    strh r2, [r0]
    adds r1, #2
    lsls r1, r1, #1
    adds r1, r1, r3
    ldr r0, .L08005308 @ =0x00007FFF
    strh r0, [r1]
    bl EnablePalSync
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080052F0: .4byte 0x0000FFFF
.L080052F4: .4byte gDebugOam2Chr
.L080052F8: .4byte gDebugOam2Pal
.L080052FC: .4byte 0x08B8590C
.L08005300: .4byte 0x0001FFFF
.L08005304: .4byte gPal
.L08005308: .4byte 0x00007FFF
    func_end SetupDebugFontForOBJ

    thumb_func_start func_0800530C
func_0800530C: @ 0x0800530C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r4, r2, #0
    b .L0800533E
.L08005316:
    cmp r0, #0x60
    bls .L0800531E
    subs r0, #0x40
    b .L08005320
.L0800531E:
    subs r0, #0x20
.L08005320:
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    ldr r0, .L0800534C @ =gDebugOam2Chr
    ldr r3, [r0]
    adds r3, r1, r3
    ldr r0, .L08005350 @ =gDebugOam2Pal
    ldr r0, [r0]
    adds r3, r3, r0
    adds r0, r5, #0
    adds r1, r6, #0
    ldr r2, .L08005354 @ =0x08B905B0
    bl PutOamHiRam
    adds r5, #8
    adds r4, #1
.L0800533E:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08005316
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800534C: .4byte gDebugOam2Chr
.L08005350: .4byte gDebugOam2Pal
.L08005354: .4byte 0x08B905B0
    func_end func_0800530C

    thumb_func_start func_08005358
func_08005358: @ 0x08005358
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r0, r2, #0
    adds r4, r3, #0
    bl func_08005044
    ldr r2, .L08005378 @ =0x02028D4C
    subs r2, r2, r4
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_0800530C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08005378: .4byte 0x02028D4C
    func_end func_08005358

    thumb_func_start func_0800537C
func_0800537C: @ 0x0800537C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r0, r2, #0
    adds r4, r3, #0
    bl func_080050CC
    ldr r2, .L0800539C @ =0x02028D4C
    subs r2, r2, r4
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_0800530C
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800539C: .4byte 0x02028D4C
    func_end func_0800537C
