    .include "asm_prelude.inc"

    thumb_func_start func_080212D8
func_080212D8: @ 0x080212D8
    push {lr}
    ldr r0, .L080212F0 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080212EC
    ldr r0, .L080212F4 @ =0x000002F9
    bl m4aSongNumStart
.L080212EC:
    pop {r0}
    bx r0
    .align 2, 0
.L080212F0: .4byte gPlaySt
.L080212F4: .4byte 0x000002F9
    func_end func_080212D8

    thumb_func_start func_080212F8
func_080212F8: @ 0x080212F8
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    lsls r0, r5, #4
    ldr r2, .L0802135C @ =gBmSt
    movs r3, #0xc
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r5, r0, #0
    adds r5, #8
    lsls r0, r6, #4
    movs r3, #0xe
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    adds r6, r0, #4
    adds r0, r4, #0
    movs r1, #0x20
    bl StartTemporaryLock
    ldr r0, .L08021360 @ =0x081C3368
    ldr r1, .L08021364 @ =0x06013000
    bl Decompress
    ldr r0, .L08021368 @ =0x081C3570
    movs r1, #0xa8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L0802136C @ =0x081C34DC
    movs r3, #0xa3
    lsls r3, r3, #7
    movs r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    adds r1, r5, #0
    adds r2, r6, #0
    bl StartSpriteAnimProc
    ldr r0, .L08021370 @ =0x08B93D44
    adds r1, r4, #0
    bl Proc_Start
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802135C: .4byte gBmSt
.L08021360: .4byte 0x081C3368
.L08021364: .4byte 0x06013000
.L08021368: .4byte 0x081C3570
.L0802136C: .4byte 0x081C34DC
.L08021370: .4byte 0x08B93D44
    func_end func_080212F8
