    .include "asm_prelude.inc"

    thumb_func_start func_0802D28C
func_0802D28C: @ 0x0802D28C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    cmp r0, #0
    beq .L0802D2CA
    ldrh r1, [r4, #0x34]
    movs r2, #0x34
    ldrsh r0, [r4, r2]
    cmp r0, #0
    beq .L0802D2A6
    subs r0, r1, #1
    strh r0, [r4, #0x34]
    b .L0802D2CA
.L0802D2A6:
    ldr r2, [r4, #0x30]
    ldrh r0, [r2]
    strh r0, [r4, #0x34]
    ldr r0, [r2, #4]
    ldr r1, .L0802D2D0 @ =0x0600A000
    ldrh r2, [r2, #2]
    lsrs r2, r2, #2
    bl CpuFastSet
    ldr r1, [r4, #0x30]
    adds r0, r1, #0
    adds r0, #8
    str r0, [r4, #0x30]
    ldrh r0, [r1, #8]
    cmp r0, #0
    bne .L0802D2CA
    ldr r0, [r4, #0x2c]
    str r0, [r4, #0x30]
.L0802D2CA:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D2D0: .4byte 0x0600A000
    func_end func_0802D28C

    thumb_func_start func_0802D2D4
func_0802D2D4: @ 0x0802D2D4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x38]
    cmp r0, #0
    beq .L0802D318
    ldrh r1, [r4, #0x36]
    movs r2, #0x36
    ldrsh r0, [r4, r2]
    cmp r0, #0
    beq .L0802D2EE
    subs r0, r1, #1
    strh r0, [r4, #0x36]
    b .L0802D318
.L0802D2EE:
    ldr r3, [r4, #0x3c]
    ldrb r0, [r3, #4]
    strh r0, [r4, #0x36]
    ldr r0, [r3]
    ldrb r2, [r3, #6]
    lsls r1, r2, #1
    ldr r2, .L0802D320 @ =0x02022920
    adds r1, r1, r2
    ldrb r2, [r3, #5]
    bl CpuSet
    bl EnablePalSync
    ldr r0, [r4, #0x3c]
    adds r0, #8
    str r0, [r4, #0x3c]
    ldrb r0, [r0, #4]
    cmp r0, #0
    bne .L0802D318
    ldr r0, [r4, #0x38]
    str r0, [r4, #0x3c]
.L0802D318:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D320: .4byte 0x02022920
    func_end func_0802D2D4

    thumb_func_start func_0802D324
func_0802D324: @ 0x0802D324
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    movs r0, #0
    strh r0, [r4, #0x34]
    strh r0, [r4, #0x36]
    ldr r5, .L0802D360 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    ldr r6, .L0802D364 @ =0x08C9C9C8
    ldrb r0, [r0, #9]
    lsls r0, r0, #2
    adds r0, r0, r6
    ldr r0, [r0]
    str r0, [r4, #0x30]
    str r0, [r4, #0x2c]
    movs r0, #0xe
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #2
    adds r0, r0, r6
    ldr r0, [r0]
    str r0, [r4, #0x3c]
    str r0, [r4, #0x38]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D360: .4byte gPlaySt
.L0802D364: .4byte 0x08C9C9C8
    func_end func_0802D324

    thumb_func_start func_0802D368
func_0802D368: @ 0x0802D368
    push {lr}
    movs r0, #0
    bl SetOnHBlankB
    pop {r0}
    bx r0
    func_end func_0802D368

    thumb_func_start func_0802D374
func_0802D374: @ 0x0802D374
    push {lr}
    movs r1, #0
    bl Proc_Goto
    pop {r0}
    bx r0
    func_end func_0802D374

    thumb_func_start func_0802D380
func_0802D380: @ 0x0802D380
    push {lr}
    ldr r0, .L0802D39C @ =0x08B96158
    movs r1, #0
    bl Proc_Start
    bl func_0802D324
    bl WeatherInit
    ldr r1, .L0802D3A0 @ =gBmSt
    movs r0, #0
    strb r0, [r1, #2]
    pop {r0}
    bx r0
    .align 2, 0
.L0802D39C: .4byte 0x08B96158
.L0802D3A0: .4byte gBmSt
    func_end func_0802D380

    thumb_func_start func_0802D3A4
func_0802D3A4: @ 0x0802D3A4
    push {lr}
    ldr r0, .L0802D3B0 @ =0x08B96158
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L0802D3B0: .4byte 0x08B96158
    func_end func_0802D3A4

    thumb_func_start LockBmDisplay
LockBmDisplay: @ 0x0802D3B4
    push {lr}
    ldr r1, .L0802D3E0 @ =gBmSt
    ldrb r0, [r1, #2]
    adds r0, #1
    strb r0, [r1, #2]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    bgt .L0802D3DC
    movs r0, #0
    bl SetOnHBlankB
    ldr r1, .L0802D3E4 @ =gPal
    movs r0, #0
    strh r0, [r1]
    bl EnablePalSync
    movs r0, #1
    bl Proc_BlockEachMarked
.L0802D3DC:
    pop {r0}
    bx r0
    .align 2, 0
.L0802D3E0: .4byte gBmSt
.L0802D3E4: .4byte gPal
    func_end LockBmDisplay

    thumb_func_start UnlockBmDisplay
UnlockBmDisplay: @ 0x0802D3E8
    push {lr}
    ldr r1, .L0802D41C @ =gBmSt
    ldrb r2, [r1, #2]
    movs r0, #2
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802D418
    subs r0, r2, #1
    strb r0, [r1, #2]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802D418
    movs r0, #1
    bl Proc_UnblockEachMarked
    ldr r0, .L0802D420 @ =0x08B96158
    bl Proc_Find
    cmp r0, #0
    beq .L0802D418
    bl Proc_End
    bl func_0802D380
.L0802D418:
    pop {r0}
    bx r0
    .align 2, 0
.L0802D41C: .4byte gBmSt
.L0802D420: .4byte 0x08B96158
    func_end UnlockBmDisplay

    thumb_func_start AllocWeatherParticles
AllocWeatherParticles: @ 0x0802D424
    push {lr}
    subs r0, #1
    cmp r0, #5
    bhi .L0802D464
    lsls r0, r0, #2
    ldr r1, .L0802D438 @ =.L0802D43C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802D438: .4byte .L0802D43C
.L0802D43C: @ jump table
    .4byte .L0802D454 @ case 0
    .4byte .L0802D454 @ case 1
    .4byte .L0802D464 @ case 2
    .4byte .L0802D454 @ case 3
    .4byte .L0802D45C @ case 4
    .4byte .L0802D454 @ case 5
.L0802D454:
    movs r0, #0x20
    bl InitOam
    b .L0802D46A
.L0802D45C:
    movs r0, #0x10
    bl InitOam
    b .L0802D46A
.L0802D464:
    movs r0, #0
    bl InitOam
.L0802D46A:
    pop {r0}
    bx r0
    func_end AllocWeatherParticles

    thumb_func_start WeatherInit_None
WeatherInit_None: @ 0x0802D470
    push {lr}
    ldr r0, .L0802D484 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    bl AllocWeatherParticles
    movs r0, #0
    bl SetOnHBlankB
    pop {r0}
    bx r0
    .align 2, 0
.L0802D484: .4byte gPlaySt
    func_end WeatherInit_None

    thumb_func_start WeatherInit_Snow
WeatherInit_Snow: @ 0x0802D488
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    mov r1, sp
    ldr r0, .L0802D4F0 @ =0x081C402C
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldr r0, .L0802D4F4 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    bl AllocWeatherParticles
    movs r6, #0
    ldr r7, .L0802D4F8 @ =0x081C3FCC
    ldr r5, .L0802D4FC @ =0x020027DC
.L0802D4A2:
    movs r0, #0xf
    ands r0, r6
    lsls r4, r0, #1
    adds r4, r4, r0
    bl RandNextB
    strh r0, [r5]
    bl RandNextB
    strh r0, [r5, #2]
    lsls r0, r4, #1
    adds r0, r0, r7
    ldrh r0, [r0]
    lsls r0, r0, #1
    strh r0, [r5, #4]
    adds r0, r4, #1
    lsls r0, r0, #1
    adds r0, r0, r7
    ldrh r0, [r0]
    lsls r0, r0, #1
    strh r0, [r5, #6]
    adds r4, #2
    lsls r4, r4, #1
    adds r4, r4, r7
    ldrh r0, [r4]
    strb r0, [r5, #9]
    adds r4, r0, #0
    lsls r0, r4, #2
    add r0, sp
    ldr r0, [r0]
    strb r0, [r5, #8]
    adds r5, #0xc
    adds r6, #1
    cmp r6, #0x3f
    ble .L0802D4A2
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D4F0: .4byte 0x081C402C
.L0802D4F4: .4byte gPlaySt
.L0802D4F8: .4byte 0x081C3FCC
.L0802D4FC: .4byte 0x020027DC
    func_end WeatherInit_Snow

    thumb_func_start func_0802D500
func_0802D500: @ 0x0802D500
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    bl GetOamSplice
    cmp r0, #0
    beq .L0802D5AA
    bl GetGameTime
    movs r1, #1
    ands r0, r1
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #7
    ldr r0, .L0802D5B4 @ =0x020027DC
    adds r4, r1, r0
    mov r2, sp
    ldr r3, .L0802D5B8 @ =gBmSt
    movs r0, #0xc
    ldrsh r1, [r3, r0]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    cmp r0, #0
    bge .L0802D532
    adds r0, #0xf
.L0802D532:
    asrs r0, r0, #4
    strh r0, [r2]
    mov r0, sp
    ldrh r2, [r3, #0xe]
    strh r2, [r0, #2]
    mov r1, sp
    ldrh r0, [r3, #0xc]
    strh r0, [r1, #4]
    mov r0, sp
    strh r2, [r0, #6]
    mov r5, sp
    movs r7, #0xc
    ldrsh r1, [r3, r7]
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #2
    cmp r0, #0
    bge .L0802D558
    adds r0, #0xf
.L0802D558:
    asrs r0, r0, #4
    strh r0, [r5, #8]
    mov r0, sp
    strh r2, [r0, #0xa]
    movs r6, #0xff
    movs r5, #0x1f
.L0802D564:
    ldrh r1, [r4]
    ldrh r2, [r4, #4]
    adds r0, r1, r2
    strh r0, [r4]
    ldrh r3, [r4, #2]
    ldrh r7, [r4, #6]
    adds r1, r3, r7
    strh r1, [r4, #2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x18
    ldrb r3, [r4, #9]
    lsls r2, r3, #2
    mov r7, sp
    adds r3, r7, r2
    movs r7, #0
    ldrsh r2, [r3, r7]
    subs r0, r0, r2
    ands r0, r6
    lsls r1, r1, #0x10
    asrs r1, r1, #0x18
    movs r7, #2
    ldrsh r2, [r3, r7]
    subs r1, r1, r2
    ands r1, r6
    ldrb r3, [r4, #8]
    movs r2, #0x80
    lsls r2, r2, #5
    adds r3, r3, r2
    ldr r2, .L0802D5BC @ =0x08B905B0
    bl PutOamLoRam
    adds r4, #0xc
    subs r5, #1
    cmp r5, #0
    bge .L0802D564
.L0802D5AA:
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D5B4: .4byte 0x020027DC
.L0802D5B8: .4byte gBmSt
.L0802D5BC: .4byte 0x08B905B0
    func_end func_0802D500

    thumb_func_start WeatherInit_Rain
WeatherInit_Rain: @ 0x0802D5C0
    push {r4, r5, r6, r7, lr}
    ldr r0, .L0802D618 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    bl AllocWeatherParticles
    movs r6, #0
    ldr r7, .L0802D61C @ =0x081C3FCC
    ldr r5, .L0802D620 @ =0x020027DC
.L0802D5D0:
    movs r0, #0xf
    ands r0, r6
    lsls r4, r0, #1
    adds r4, r4, r0
    bl RandNextB
    strh r0, [r5]
    bl RandNextB
    strh r0, [r5, #2]
    lsls r1, r4, #1
    adds r1, r1, r7
    ldrh r2, [r1]
    lsls r0, r2, #1
    adds r0, r0, r2
    lsls r0, r0, #1
    strh r0, [r5, #4]
    adds r0, r4, #1
    lsls r0, r0, #1
    adds r0, r0, r7
    ldrh r0, [r0]
    lsls r0, r0, #4
    strh r0, [r5, #6]
    adds r4, #2
    lsls r4, r4, #1
    adds r4, r4, r7
    ldrh r0, [r4]
    strb r0, [r5, #8]
    adds r5, #0xc
    adds r6, #1
    cmp r6, #0x3f
    ble .L0802D5D0
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D618: .4byte gPlaySt
.L0802D61C: .4byte 0x081C3FCC
.L0802D620: .4byte 0x020027DC
    func_end WeatherInit_Rain

    thumb_func_start func_0802D624
func_0802D624: @ 0x0802D624
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    bl GetOamSplice
    cmp r0, #0
    beq .L0802D68C
    bl GetGameTime
    movs r1, #1
    ands r0, r1
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #7
    ldr r0, .L0802D698 @ =0x020027DC
    adds r4, r1, r0
    ldr r7, .L0802D69C @ =gBmSt
    movs r6, #0xff
    movs r5, #0x1f
    ldr r0, .L0802D6A0 @ =0x08B96208
    mov r8, r0
.L0802D64E:
    ldrh r1, [r4]
    ldrh r2, [r4, #4]
    adds r0, r1, r2
    strh r0, [r4]
    ldrh r3, [r4, #2]
    ldrh r2, [r4, #6]
    adds r1, r3, r2
    strh r1, [r4, #2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x18
    movs r3, #0xc
    ldrsh r2, [r7, r3]
    subs r0, r0, r2
    ands r0, r6
    lsls r1, r1, #0x10
    asrs r1, r1, #0x18
    movs r3, #0xe
    ldrsh r2, [r7, r3]
    subs r1, r1, r2
    ands r1, r6
    ldrb r3, [r4, #8]
    lsls r2, r3, #2
    add r2, r8
    ldr r2, [r2]
    movs r3, #0
    bl PutOamLoRam
    adds r4, #0xc
    subs r5, #1
    cmp r5, #0
    bge .L0802D64E
.L0802D68C:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D698: .4byte 0x020027DC
.L0802D69C: .4byte gBmSt
.L0802D6A0: .4byte 0x08B96208
    func_end func_0802D624

    thumb_func_start WeatherInit_Sandstorm
WeatherInit_Sandstorm: @ 0x0802D6A4
    push {r4, r5, r6, lr}
    ldr r0, .L0802D700 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    bl AllocWeatherParticles
    ldr r0, .L0802D704 @ =0x08199458
    ldr r4, .L0802D708 @ =gBuf
    adds r1, r4, #0
    bl Decompress
    ldr r1, .L0802D70C @ =0x06010380
    adds r0, r4, #0
    movs r2, #4
    movs r3, #4
    bl Copy2dChr
    movs r6, #0
    ldr r4, .L0802D710 @ =0x020027DC
    movs r5, #0x3f
.L0802D6CA:
    bl RandNextB
    strh r0, [r4]
    bl RandNextB
    movs r1, #0xa0
    bl __umodsi3
    adds r0, #0xf0
    movs r1, #0xff
    ands r0, r1
    strh r0, [r4, #2]
    bl RandNextB
    movs r1, #7
    ands r0, r1
    subs r0, #0x20
    strh r0, [r4, #4]
    strh r6, [r4, #6]
    adds r4, #0xc
    subs r5, #1
    cmp r5, #0
    bge .L0802D6CA
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D700: .4byte gPlaySt
.L0802D704: .4byte 0x08199458
.L0802D708: .4byte gBuf
.L0802D70C: .4byte 0x06010380
.L0802D710: .4byte 0x020027DC
    func_end WeatherInit_Sandstorm

    thumb_func_start func_0802D714
func_0802D714: @ 0x0802D714
    push {r4, r5, lr}
    bl GetOamSplice
    cmp r0, #0
    beq .L0802D758
    bl GetGameTime
    movs r1, #1
    ands r0, r1
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #7
    ldr r0, .L0802D760 @ =0x020027DC
    adds r4, r1, r0
    movs r5, #0x1f
.L0802D732:
    ldrh r1, [r4]
    ldrh r2, [r4, #4]
    adds r0, r1, r2
    strh r0, [r4]
    movs r1, #0xff
    ands r0, r1
    subs r0, #0x10
    ldr r1, .L0802D764 @ =0x000001FF
    ands r0, r1
    movs r2, #2
    ldrsh r1, [r4, r2]
    ldr r2, .L0802D768 @ =0x08B905C0
    ldr r3, .L0802D76C @ =0x0000101C
    bl PutOamLoRam
    adds r4, #0xc
    subs r5, #1
    cmp r5, #0
    bge .L0802D732
.L0802D758:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D760: .4byte 0x020027DC
.L0802D764: .4byte 0x000001FF
.L0802D768: .4byte 0x08B905C0
.L0802D76C: .4byte 0x0000101C
    func_end func_0802D714

    thumb_func_start WeatherInit_Snowstorm
WeatherInit_Snowstorm: @ 0x0802D770
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    mov r4, sp
    mov r0, sp
    movs r1, #0
    movs r2, #8
    bl memset
    movs r0, #1
    strb r0, [r4, #6]
    strb r0, [r4, #7]
    ldr r0, .L0802D7DC @ =gPlaySt
    ldrb r0, [r0, #0x15]
    bl AllocWeatherParticles
    ldr r0, .L0802D7E0 @ =0x081994E0
    ldr r4, .L0802D7E4 @ =gBuf
    adds r1, r4, #0
    bl Decompress
    ldr r1, .L0802D7E8 @ =0x06010300
    adds r0, r4, #0
    movs r2, #8
    movs r3, #4
    bl Copy2dChr
    movs r6, #0
    ldr r5, .L0802D7EC @ =0x020027DC
    ldr r0, .L0802D7F0 @ =0x000001FF
    adds r7, r0, #0
.L0802D7AC:
    movs r0, #7
    ands r0, r6
    add r0, sp
    ldrb r4, [r0]
    bl RandNextB
    strh r0, [r5]
    bl RandNextB
    strh r0, [r5, #2]
    bl RandNextB
    ldr r2, .L0802D7F4 @ =0x000003FF
    adds r1, r2, #0
    ands r0, r1
    ldr r1, .L0802D7F8 @ =0xFFFFFF00
    adds r0, r0, r1
    strh r0, [r5, #6]
    strb r4, [r5, #8]
    cmp r4, #0
    beq .L0802D7FC
    cmp r4, #1
    beq .L0802D80A
    b .L0802D81A
    .align 2, 0
.L0802D7DC: .4byte gPlaySt
.L0802D7E0: .4byte 0x081994E0
.L0802D7E4: .4byte gBuf
.L0802D7E8: .4byte 0x06010300
.L0802D7EC: .4byte 0x020027DC
.L0802D7F0: .4byte 0x000001FF
.L0802D7F4: .4byte 0x000003FF
.L0802D7F8: .4byte 0xFFFFFF00
.L0802D7FC:
    bl RandNextB
    ands r0, r7
    movs r2, #0xe0
    lsls r2, r2, #3
    adds r0, r0, r2
    b .L0802D818
.L0802D80A:
    bl RandNextB
    ands r0, r7
    movs r2, #0xa0
    lsls r2, r2, #4
    adds r1, r2, #0
    adds r0, r0, r1
.L0802D818:
    strh r0, [r5, #4]
.L0802D81A:
    adds r5, #0xc
    adds r6, #1
    cmp r6, #0x3f
    ble .L0802D7AC
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end WeatherInit_Snowstorm

    thumb_func_start func_0802D82C
func_0802D82C: @ 0x0802D82C
    push {r4, r5, r6, r7, lr}
    bl GetOamSplice
    cmp r0, #0
    beq .L0802D88C
    bl GetGameTime
    movs r1, #1
    ands r0, r1
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #7
    ldr r0, .L0802D894 @ =0x020027DC
    adds r4, r1, r0
    ldr r7, .L0802D898 @ =gBmSt
    movs r6, #0xff
    movs r5, #0x1f
.L0802D84E:
    ldrh r1, [r4]
    ldrh r2, [r4, #4]
    adds r0, r1, r2
    strh r0, [r4]
    ldrh r3, [r4, #2]
    ldrh r2, [r4, #6]
    adds r1, r3, r2
    strh r1, [r4, #2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x18
    movs r3, #0xc
    ldrsh r2, [r7, r3]
    subs r0, r0, r2
    ands r0, r6
    lsls r1, r1, #0x10
    asrs r1, r1, #0x18
    movs r3, #0xe
    ldrsh r2, [r7, r3]
    subs r1, r1, r2
    ands r1, r6
    ldrb r2, [r4, #8]
    lsls r3, r2, #2
    ldr r2, .L0802D89C @ =0x00001018
    adds r3, r3, r2
    ldr r2, .L0802D8A0 @ =0x08B905C0
    bl PutOamLoRam
    adds r4, #0xc
    subs r5, #1
    cmp r5, #0
    bge .L0802D84E
.L0802D88C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D894: .4byte 0x020027DC
.L0802D898: .4byte gBmSt
.L0802D89C: .4byte 0x00001018
.L0802D8A0: .4byte 0x08B905C0
    func_end func_0802D82C

    thumb_func_start func_0802D8A4
func_0802D8A4: @ 0x0802D8A4
    ldr r0, .L0802D8D8 @ =0x04000006
    ldrh r0, [r0]
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    cmp r3, #0xa0
    bls .L0802D8B4
    movs r3, #0
.L0802D8B4:
    ldr r0, .L0802D8DC @ =gBmSt
    movs r1, #0xe
    ldrsh r0, [r0, r1]
    lsrs r1, r0, #0x1f
    adds r0, r0, r1
    asrs r0, r0, #1
    adds r0, r3, r0
    lsls r0, r0, #0x10
    lsrs r3, r0, #0x10
    ldr r0, .L0802D8E0 @ =0x0000013F
    cmp r3, r0
    bls .L0802D8E4
    movs r1, #0xa0
    lsls r1, r1, #0x13
    movs r0, #0
    strh r0, [r1]
    b .L0802D8F2
    .align 2, 0
.L0802D8D8: .4byte 0x04000006
.L0802D8DC: .4byte gBmSt
.L0802D8E0: .4byte 0x0000013F
.L0802D8E4:
    movs r2, #0xa0
    lsls r2, r2, #0x13
    lsls r0, r3, #1
    ldr r1, .L0802D8F4 @ =0x02002ADC
    adds r0, r0, r1
    ldrh r0, [r0]
    strh r0, [r2]
.L0802D8F2:
    bx lr
    .align 2, 0
.L0802D8F4: .4byte 0x02002ADC
    func_end func_0802D8A4

    thumb_func_start WeatherInit_Blue
WeatherInit_Blue: @ 0x0802D8F8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r5, .L0802D930 @ =0x02002ADC
    movs r4, #0
    ldr r0, .L0802D934 @ =func_0802D8A4
    mov r8, r0
    movs r7, #0x1f
    ldr r6, .L0802D938 @ =0x0000013F
.L0802D90A:
    adds r0, r4, #0
    movs r1, #0xa
    bl __divsi3
    subs r0, r7, r0
    lsls r0, r0, #0xa
    strh r0, [r5]
    adds r5, #2
    adds r4, #1
    cmp r4, r6
    ble .L0802D90A
    mov r0, r8
    bl SetOnHBlankB
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D930: .4byte 0x02002ADC
.L0802D934: .4byte func_0802D8A4
.L0802D938: .4byte 0x0000013F
    func_end WeatherInit_Blue

    thumb_func_start func_0802D93C
func_0802D93C: @ 0x0802D93C
    bx lr
    func_end func_0802D93C

    thumb_func_start FlamesWeatherHBlank
FlamesWeatherHBlank: @ 0x0802D940
    push {lr}
    ldr r0, .L0802D978 @ =0x04000006
    ldrh r0, [r0]
    adds r0, #1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0x5f
    bls .L0802D972
    cmp r0, #0x9f
    bhi .L0802D972
    adds r2, r0, #0
    subs r2, #0x60
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    ldr r0, .L0802D97C @ =0x02002ADC
    lsls r1, r2, #4
    adds r0, r1, r0
    movs r1, #7
    ands r1, r2
    lsls r1, r1, #4
    ldr r2, .L0802D980 @ =0x050000E0
    adds r1, r1, r2
    movs r2, #2
    bl CpuFastSet
.L0802D972:
    pop {r0}
    bx r0
    .align 2, 0
.L0802D978: .4byte 0x04000006
.L0802D97C: .4byte 0x02002ADC
.L0802D980: .4byte 0x050000E0
    func_end FlamesWeatherHBlank

    thumb_func_start ApplyFlamesWeatherGradient
ApplyFlamesWeatherGradient: @ 0x0802D984
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    movs r1, #0
    ldr r0, .L0802D9FC @ =gPal
    mov sl, r0
    movs r6, #0x1f
    ldr r3, .L0802DA00 @ =0x02002ADC
    mov sb, r3
.L0802D99A:
    movs r2, #0
    adds r0, r1, #7
    adds r3, r1, #1
    mov r8, r3
    lsls r0, r0, #4
    mov ip, r0
    lsls r7, r1, #4
.L0802D9A8:
    mov r1, ip
    adds r0, r1, r2
    lsls r0, r0, #1
    add r0, sl
    ldrh r0, [r0]
    adds r3, r0, #0
    ands r3, r6
    asrs r1, r0, #5
    ands r1, r6
    asrs r0, r0, #0xa
    ands r0, r6
    adds r5, r2, #1
    adds r2, r7, r2
    lsls r2, r2, #1
    lsls r0, r0, #0xa
    lsls r1, r1, #5
    adds r4, r0, r1
    add r2, sb
    movs r1, #7
.L0802D9CE:
    adds r3, #2
    cmp r3, #0x1f
    ble .L0802D9D6
    movs r3, #0x1f
.L0802D9D6:
    adds r0, r4, r3
    strh r0, [r2]
    adds r2, #0x80
    subs r1, #1
    cmp r1, #0
    bge .L0802D9CE
    adds r2, r5, #0
    cmp r2, #0xf
    ble .L0802D9A8
    mov r1, r8
    cmp r1, #3
    ble .L0802D99A
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802D9FC: .4byte gPal
.L0802DA00: .4byte 0x02002ADC
    func_end ApplyFlamesWeatherGradient

    thumb_func_start FlamesWeatherInitGradient
FlamesWeatherInitGradient: @ 0x0802DA04
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    bl ApplyChapterMapPalettes
    movs r1, #0
    ldr r0, .L0802DA88 @ =gPal
    mov sl, r0
    movs r6, #0x1f
    ldr r3, .L0802DA8C @ =0x02002ADC
    mov sb, r3
.L0802DA1E:
    movs r2, #0
    adds r0, r1, #7
    adds r3, r1, #1
    mov r8, r3
    lsls r0, r0, #4
    mov ip, r0
    lsls r7, r1, #4
.L0802DA2C:
    mov r1, ip
    adds r0, r1, r2
    lsls r0, r0, #1
    add r0, sl
    ldrh r0, [r0]
    adds r3, r0, #0
    ands r3, r6
    asrs r1, r0, #5
    ands r1, r6
    asrs r0, r0, #0xa
    ands r0, r6
    adds r5, r2, #1
    adds r2, r7, r2
    lsls r2, r2, #1
    lsls r0, r0, #0xa
    lsls r1, r1, #5
    adds r4, r0, r1
    add r2, sb
    movs r1, #7
.L0802DA52:
    adds r3, #2
    cmp r3, #0x1f
    ble .L0802DA5A
    movs r3, #0x1f
.L0802DA5A:
    adds r0, r4, r3
    strh r0, [r2]
    adds r2, #0x80
    subs r1, #1
    cmp r1, #0
    bge .L0802DA52
    adds r2, r5, #0
    cmp r2, #0xf
    ble .L0802DA2C
    mov r1, r8
    cmp r1, #3
    ble .L0802DA1E
    ldr r0, .L0802DA90 @ =FlamesWeatherHBlank
    bl SetOnHBlankB
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802DA88: .4byte gPal
.L0802DA8C: .4byte 0x02002ADC
.L0802DA90: .4byte FlamesWeatherHBlank
    func_end FlamesWeatherInitGradient

    thumb_func_start FlamesWeatherInitParticles
FlamesWeatherInitParticles: @ 0x0802DA94
    push {r4, r5, r6, lr}
    ldr r0, .L0802DAE0 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    bl AllocWeatherParticles
    ldr r0, .L0802DAE4 @ =0x08199578
    ldr r1, .L0802DAE8 @ =0x06010300
    bl Decompress
    ldr r0, .L0802DAEC @ =0x081995B8
    movs r1, #0xd0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r5, .L0802DAF0 @ =0x081C3FCC
    ldr r4, .L0802DAF4 @ =0x020027DC
    movs r6, #0xf
.L0802DAB8:
    bl RandNextB
    strh r0, [r4]
    bl RandNextB
    strh r0, [r4, #2]
    ldrh r1, [r5]
    rsbs r0, r1, #0
    strh r0, [r4, #4]
    ldrh r1, [r5, #2]
    rsbs r0, r1, #0
    strh r0, [r4, #6]
    adds r5, #6
    adds r4, #0xc
    subs r6, #1
    cmp r6, #0
    bge .L0802DAB8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802DAE0: .4byte gPlaySt
.L0802DAE4: .4byte 0x08199578
.L0802DAE8: .4byte 0x06010300
.L0802DAEC: .4byte 0x081995B8
.L0802DAF0: .4byte 0x081C3FCC
.L0802DAF4: .4byte 0x020027DC
    func_end FlamesWeatherInitParticles

    thumb_func_start WeatherInit_Flames
WeatherInit_Flames: @ 0x0802DAF8
    push {lr}
    bl FlamesWeatherInitGradient
    bl FlamesWeatherInitParticles
    pop {r0}
    bx r0
    func_end WeatherInit_Flames

    thumb_func_start func_0802DB08
func_0802DB08: @ 0x0802DB08
    push {r4, r5, r6, r7, lr}
    ldr r4, .L0802DB68 @ =0x02022940
    ldr r1, .L0802DB6C @ =0x050000E0
    adds r0, r4, #0
    movs r2, #0x20
    bl CpuFastSet
    movs r5, #0xc
    subs r4, #0xe0
    mov ip, r4
    movs r6, #0x1f
    ldr r7, .L0802DB70 @ =0x02002ADC
.L0802DB20:
    adds r0, r5, #0
    adds r0, #0x90
    lsls r0, r0, #1
    add r0, ip
    ldrh r0, [r0]
    adds r3, r0, #0
    ands r3, r6
    asrs r1, r0, #5
    ands r1, r6
    asrs r0, r0, #0xa
    ands r0, r6
    adds r2, r5, #0
    adds r2, #0x20
    adds r4, r5, #1
    lsls r0, r0, #0xa
    lsls r1, r1, #5
    adds r5, r0, r1
    lsls r2, r2, #1
    adds r2, r2, r7
    movs r1, #7
.L0802DB48:
    adds r3, #2
    cmp r3, #0x1f
    ble .L0802DB50
    movs r3, #0x1f
.L0802DB50:
    adds r0, r5, r3
    strh r0, [r2]
    adds r2, #0x80
    subs r1, #1
    cmp r1, #0
    bge .L0802DB48
    adds r5, r4, #0
    cmp r5, #0xf
    ble .L0802DB20
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802DB68: .4byte 0x02022940
.L0802DB6C: .4byte 0x050000E0
.L0802DB70: .4byte 0x02002ADC
    func_end func_0802DB08

    thumb_func_start func_0802DB74
func_0802DB74: @ 0x0802DB74
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    ldr r4, .L0802DC00 @ =0x020027DC
    bl GetOamSplice
    cmp r0, #0
    beq .L0802DBF4
    ldr r0, .L0802DC04 @ =gBmSt
    mov r8, r0
    movs r1, #0xff
    mov sb, r1
    movs r6, #0xf
.L0802DB90:
    ldrh r2, [r4]
    ldrh r3, [r4, #4]
    adds r5, r2, r3
    strh r5, [r4]
    ldrh r7, [r4, #2]
    ldrh r1, [r4, #6]
    adds r0, r7, r1
    strh r0, [r4, #2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x18
    mov r2, r8
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r2, r0, r1
    mov r7, sb
    ands r2, r7
    cmp r2, #0x3f
    ble .L0802DBEC
    cmp r2, #0xa0
    bgt .L0802DBEC
    adds r1, r2, #0
    subs r1, #0x40
    cmp r1, #0
    bge .L0802DBC2
    adds r1, #7
.L0802DBC2:
    asrs r1, r1, #3
    movs r0, #0x1f
    subs r3, r0, r1
    cmp r3, #0x17
    bgt .L0802DBCE
    movs r3, #0x18
.L0802DBCE:
    lsls r0, r5, #0x10
    asrs r0, r0, #0x18
    mov r5, r8
    movs r7, #0xc
    ldrsh r1, [r5, r7]
    subs r0, r0, r1
    mov r1, sb
    ands r0, r1
    movs r5, #0xa0
    lsls r5, r5, #8
    adds r3, r3, r5
    adds r1, r2, #0
    ldr r2, .L0802DC08 @ =0x08B905B0
    bl PutOamLoRam
.L0802DBEC:
    subs r6, #1
    adds r4, #0xc
    cmp r6, #0
    bge .L0802DB90
.L0802DBF4:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802DC00: .4byte 0x020027DC
.L0802DC04: .4byte gBmSt
.L0802DC08: .4byte 0x08B905B0
    func_end func_0802DB74

    thumb_func_start func_0802DC0C
func_0802DC0C: @ 0x0802DC0C
    push {lr}
    bl func_0802DB08
    bl func_0802DB74
    pop {r0}
    bx r0
    func_end func_0802DC0C

    thumb_func_start func_0802DC1C
func_0802DC1C: @ 0x0802DC1C
    push {r4, r5, r6, lr}
    sub sp, #0x20
    adds r5, r0, #0
    movs r0, #0xd0
    lsls r0, r0, #1
    adds r2, r5, r0
    mov r1, sp
    movs r3, #7
.L0802DC2C:
    ldm r2!, {r0}
    stm r1!, {r0}
    subs r3, #1
    cmp r3, #0
    bge .L0802DC2C
    movs r0, #0xd
    adds r6, r5, #0
    subs r6, #0x20
.L0802DC3C:
    subs r4, r0, #1
    lsls r0, r0, #5
    adds r2, r0, r6
    movs r3, #7
.L0802DC44:
    ldr r1, [r2, #0x20]
    lsls r1, r1, #4
    ldr r0, [r2]
    lsrs r0, r0, #0x1c
    orrs r1, r0
    str r1, [r2, #0x20]
    adds r2, #4
    subs r3, #1
    cmp r3, #0
    bge .L0802DC44
    adds r0, r4, #0
    cmp r0, #0
    bge .L0802DC3C
    movs r6, #0x10
    rsbs r6, r6, #0
    adds r2, r5, #0
    mov r4, sp
    movs r3, #7
.L0802DC68:
    ldr r1, [r2]
    ands r1, r6
    str r1, [r2]
    ldm r4!, {r0}
    lsrs r0, r0, #0x1c
    orrs r1, r0
    stm r2!, {r1}
    subs r3, #1
    cmp r3, #0
    bge .L0802DC68
    add sp, #0x20
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0802DC1C

    thumb_func_start WeatherInit_Clouds
WeatherInit_Clouds: @ 0x0802DC84
    push {lr}
    movs r0, #0
    bl AllocWeatherParticles
    ldr r0, .L0802DCA4 @ =0x081995F8
    ldr r1, .L0802DCA8 @ =0x020027DC
    bl Decompress
    ldr r0, .L0802DCAC @ =0x08199B14
    movs r1, #0xd0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r0}
    bx r0
    .align 2, 0
.L0802DCA4: .4byte 0x081995F8
.L0802DCA8: .4byte 0x020027DC
.L0802DCAC: .4byte 0x08199B14
    func_end WeatherInit_Clouds

    thumb_func_start func_0802DCB0
func_0802DCB0: @ 0x0802DCB0
    push {r4, lr}
    ldr r4, .L0802DCCC @ =0x020027DC
    bl GetGameTime
    adds r1, r0, #0
    movs r0, #7
    ands r1, r0
    cmp r1, #7
    bhi .L0802DD20
    lsls r0, r1, #2
    ldr r1, .L0802DCD0 @ =.L0802DCD4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802DCCC: .4byte 0x020027DC
.L0802DCD0: .4byte .L0802DCD4
.L0802DCD4: @ jump table
    .4byte .L0802DCF4 @ case 0
    .4byte .L0802DD20 @ case 1
    .4byte .L0802DCFC @ case 2
    .4byte .L0802DD20 @ case 3
    .4byte .L0802DD02 @ case 4
    .4byte .L0802DD20 @ case 5
    .4byte .L0802DD08 @ case 6
    .4byte .L0802DD14 @ case 7
.L0802DCF4:
    adds r0, r4, #0
    bl func_0802DC1C
    b .L0802DD20
.L0802DCFC:
    movs r1, #0xe0
    lsls r1, r1, #1
    b .L0802DD0C
.L0802DD02:
    movs r1, #0xe0
    lsls r1, r1, #2
    b .L0802DD0C
.L0802DD08:
    movs r1, #0xa8
    lsls r1, r1, #3
.L0802DD0C:
    adds r0, r4, r1
    bl func_0802DC1C
    b .L0802DD20
.L0802DD14:
    ldr r1, .L0802DD28 @ =0x06010240
    adds r0, r4, #0
    movs r2, #0xe
    movs r3, #4
    bl Copy2dChr
.L0802DD20:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802DD28: .4byte 0x06010240
    func_end func_0802DCB0

    thumb_func_start func_0802DD2C
func_0802DD2C: @ 0x0802DD2C
    push {lr}
    sub sp, #4
    ldr r0, .L0802DD54 @ =gBmSt
    movs r1, #0xe
    ldrsh r0, [r0, r1]
    movs r1, #5
    bl __divsi3
    adds r2, r0, #0
    rsbs r2, r2, #0
    ldr r3, .L0802DD58 @ =0x08B96214
    ldr r0, .L0802DD5C @ =0x0000AC12
    str r0, [sp]
    movs r0, #0xe
    movs r1, #0
    bl PutSprite
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L0802DD54: .4byte gBmSt
.L0802DD58: .4byte 0x08B96214
.L0802DD5C: .4byte 0x0000AC12
    func_end func_0802DD2C

    thumb_func_start WeatherInit
WeatherInit: @ 0x0802DD60
    push {lr}
    ldr r0, .L0802DD74 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    cmp r0, #7
    bhi .L0802DDCA
    lsls r0, r0, #2
    ldr r1, .L0802DD78 @ =.L0802DD7C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802DD74: .4byte gPlaySt
.L0802DD78: .4byte .L0802DD7C
.L0802DD7C: @ jump table
    .4byte .L0802DD9C @ case 0
    .4byte .L0802DDA2 @ case 1
    .4byte .L0802DDAE @ case 2
    .4byte .L0802DDBA @ case 3
    .4byte .L0802DDB4 @ case 4
    .4byte .L0802DDC0 @ case 5
    .4byte .L0802DDA8 @ case 6
    .4byte .L0802DDC6 @ case 7
.L0802DD9C:
    bl WeatherInit_None
    b .L0802DDCA
.L0802DDA2:
    bl WeatherInit_Snow
    b .L0802DDCA
.L0802DDA8:
    bl WeatherInit_Sandstorm
    b .L0802DDCA
.L0802DDAE:
    bl WeatherInit_Snowstorm
    b .L0802DDCA
.L0802DDB4:
    bl WeatherInit_Rain
    b .L0802DDCA
.L0802DDBA:
    bl WeatherInit_Blue
    b .L0802DDCA
.L0802DDC0:
    bl WeatherInit_Flames
    b .L0802DDCA
.L0802DDC6:
    bl WeatherInit_Clouds
.L0802DDCA:
    pop {r0}
    bx r0
    func_end WeatherInit

    thumb_func_start func_0802DDD0
func_0802DDD0: @ 0x0802DDD0
    push {lr}
    ldr r0, .L0802DDE8 @ =gPlaySt
    ldrb r0, [r0, #0x15]
    subs r0, #1
    cmp r0, #6
    bhi .L0802DE34
    lsls r0, r0, #2
    ldr r1, .L0802DDEC @ =.L0802DDF0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802DDE8: .4byte gPlaySt
.L0802DDEC: .4byte .L0802DDF0
.L0802DDF0: @ jump table
    .4byte .L0802DE0C @ case 0
    .4byte .L0802DE18 @ case 1
    .4byte .L0802DE24 @ case 2
    .4byte .L0802DE1E @ case 3
    .4byte .L0802DE2A @ case 4
    .4byte .L0802DE12 @ case 5
    .4byte .L0802DE30 @ case 6
.L0802DE0C:
    bl func_0802D500
    b .L0802DE34
.L0802DE12:
    bl func_0802D714
    b .L0802DE34
.L0802DE18:
    bl func_0802D82C
    b .L0802DE34
.L0802DE1E:
    bl func_0802D624
    b .L0802DE34
.L0802DE24:
    bl func_0802D93C
    b .L0802DE34
.L0802DE2A:
    bl func_0802DC0C
    b .L0802DE34
.L0802DE30:
    bl func_0802DCB0
.L0802DE34:
    pop {r0}
    bx r0
    func_end func_0802DDD0

    thumb_func_start func_0802DE38
func_0802DE38: @ 0x0802DE38
    push {lr}
    ldr r0, .L0802DE4C @ =gPlaySt
    ldrb r0, [r0, #0x15]
    cmp r0, #7
    bne .L0802DE46
    bl func_0802DD2C
.L0802DE46:
    pop {r0}
    bx r0
    .align 2, 0
.L0802DE4C: .4byte gPlaySt
    func_end func_0802DE38

    thumb_func_start DisableTilesetPalAnim
DisableTilesetPalAnim: @ 0x0802DE50
    push {lr}
    ldr r0, .L0802DE68 @ =0x08B96158
    bl Proc_Find
    adds r1, r0, #0
    cmp r1, #0
    beq .L0802DE62
    movs r0, #0
    str r0, [r1, #0x38]
.L0802DE62:
    pop {r0}
    bx r0
    .align 2, 0
.L0802DE68: .4byte 0x08B96158
    func_end DisableTilesetPalAnim

    thumb_func_start EnableTilesetPalAnim
EnableTilesetPalAnim: @ 0x0802DE6C
    push {r4, lr}
    ldr r0, .L0802DE9C @ =0x08B96158
    bl Proc_Find
    adds r4, r0, #0
    cmp r4, #0
    beq .L0802DE94
    ldr r0, .L0802DEA0 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldr r1, .L0802DEA4 @ =0x08C9C9C8
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r4, #0x3c]
    str r0, [r4, #0x38]
.L0802DE94:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802DE9C: .4byte 0x08B96158
.L0802DEA0: .4byte gPlaySt
.L0802DEA4: .4byte 0x08C9C9C8
    func_end EnableTilesetPalAnim

    thumb_func_start SetWeather
SetWeather: @ 0x0802DEA8
    push {lr}
    ldr r1, .L0802DEBC @ =gPlaySt
    strb r0, [r1, #0x15]
    bl AllocWeatherParticles
    bl WeatherInit
    pop {r0}
    bx r0
    .align 2, 0
.L0802DEBC: .4byte gPlaySt
    func_end SetWeather
