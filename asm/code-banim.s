    .include "asm_prelude.inc"

    thumb_func_start UpdateBanimFrame
UpdateBanimFrame: @ 0x08054024
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    ldr r0, .L080541F4 @ =banim_data
    mov sb, r0
    ldr r1, .L080541F8 @ =character_battle_animation_palette_table
    mov sl, r1
    ldr r1, .L080541FC @ =gpImgSheet
    movs r0, #0
    str r0, [r1, #4]
    str r0, [r1]
    ldr r0, .L08054200 @ =gBanimValid
    movs r1, #0
    ldrsh r2, [r0, r1]
    mov r8, r2
    cmp r2, #1
    bne .L080540DC
    ldr r0, .L08054204 @ =gBanimIdx
    movs r2, #0
    ldrsh r5, [r0, r2]
    ldr r0, .L08054208 @ =gBanimFactionPal
    movs r1, #0
    ldrsh r7, [r0, r1]
    ldr r0, .L0805420C @ =gBanimUniquePal
    movs r2, #0
    ldrsh r4, [r0, r2]
    lsls r0, r5, #5
    ldr r1, .L080541F4 @ =banim_data
    adds r6, r0, r1
    ldr r0, [r6, #0x10]
    ldr r1, .L08054210 @ =gBanimScrLeft
    bl LZ77UnCompWram
    ldr r1, .L08054214 @ =gpBanimModesLeft
    ldr r0, [r6, #0xc]
    str r0, [r1]
    adds r0, r5, #0
    movs r1, #0
    bl GetBanimPalette
    lsls r0, r0, #5
    ldr r2, .L080541F4 @ =banim_data
    adds r0, r0, r2
    ldr r0, [r0, #0x1c]
    ldr r5, .L08054218 @ =gBanimPaletteLeft
    adds r1, r5, #0
    bl LZ77UnCompWram
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    beq .L080540A6
    lsls r0, r4, #4
    add r0, sl
    ldr r0, [r0, #0xc]
    adds r1, r5, #0
    bl LZ77UnCompWram
    adds r0, r5, #0
    movs r1, #0
    bl ApplyBanimUniquePalette
.L080540A6:
    ldr r1, .L0805421C @ =gpEfxUnitPaletteBackup
    lsls r0, r7, #5
    adds r0, r0, r5
    str r0, [r1]
    ldr r4, .L08054220 @ =gPal + 0x2e0
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r0, .L08054224 @ =gBanimTriAtkPalettes
    ldr r0, [r0]
    adds r4, #0x20
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    ldr r0, [r6, #0x18]
    ldr r4, .L08054228 @ =gBanimOaml
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r0, .L0805422C @ =0x000057F0
    adds r4, r4, r0
    mov r1, r8
    str r1, [r4]
.L080540DC:
    ldr r0, .L08054200 @ =gBanimValid
    movs r1, #2
    ldrsh r2, [r0, r1]
    mov r8, r2
    cmp r2, #1
    bne .L08054176
    ldr r0, .L08054204 @ =gBanimIdx
    movs r2, #2
    ldrsh r5, [r0, r2]
    ldr r0, .L08054208 @ =gBanimFactionPal
    movs r1, #2
    ldrsh r7, [r0, r1]
    ldr r0, .L0805420C @ =gBanimUniquePal
    movs r2, #2
    ldrsh r4, [r0, r2]
    lsls r0, r5, #5
    mov r1, sb
    adds r6, r0, r1
    ldr r0, [r6, #0x10]
    ldr r1, .L08054230 @ =gBanimScrRight
    bl LZ77UnCompWram
    ldr r1, .L08054234 @ =gpBanimModesRight
    ldr r0, [r6, #0xc]
    str r0, [r1]
    adds r0, r5, #0
    movs r1, #1
    bl GetBanimPalette
    lsls r0, r0, #5
    add r0, sb
    ldr r0, [r0, #0x1c]
    ldr r5, .L08054238 @ =gBanimPaletteRight
    adds r1, r5, #0
    bl LZ77UnCompWram
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    beq .L08054140
    lsls r0, r4, #4
    add r0, sl
    ldr r0, [r0, #0xc]
    adds r1, r5, #0
    bl LZ77UnCompWram
    adds r0, r5, #0
    movs r1, #1
    bl ApplyBanimUniquePalette
.L08054140:
    ldr r1, .L0805421C @ =gpEfxUnitPaletteBackup
    lsls r0, r7, #5
    adds r0, r0, r5
    str r0, [r1, #4]
    ldr r4, .L0805423C @ =gPal + 0x320
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    ldr r0, .L08054224 @ =gBanimTriAtkPalettes
    ldr r0, [r0, #4]
    adds r4, #0x20
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    ldr r0, [r6, #0x14]
    ldr r4, .L08054240 @ =gBanimOamr2
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r2, .L0805422C @ =0x000057F0
    adds r4, r4, r2
    mov r0, r8
    str r0, [r4]
.L08054176:
    ldr r6, .L08054244 @ =gpEkrTriangleUnits
    ldr r2, [r6]
    cmp r2, #0
    beq .L080541E4
    ldr r0, [r2, #4]
    ldr r1, [r0, #0x34]
    adds r0, r2, #0
    movs r2, #0
    mov r3, sp
    bl GetBattleAnimationId_WithUnique
    lsls r0, r0, #0x10
    ldr r5, .L08054224 @ =gBanimTriAtkPalettes
    lsrs r0, r0, #0xb
    add r0, sb
    ldr r0, [r0, #0x1c]
    str r0, [r5]
    ldr r0, [r6]
    ldr r1, [sp]
    bl GetBattleAnimCharacterUniquePalIndex
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    movs r7, #1
    rsbs r7, r7, #0
    cmp r4, r7
    beq .L080541B4
    lsls r0, r4, #4
    add r0, sl
    ldr r0, [r0, #0xc]
    str r0, [r5]
.L080541B4:
    ldr r0, [r6, #4]
    ldr r1, [r0, #4]
    ldr r1, [r1, #0x34]
    movs r2, #0
    mov r3, sp
    bl GetBattleAnimationId_WithUnique
    lsls r0, r0, #0x10
    lsrs r0, r0, #0xb
    add r0, sb
    ldr r0, [r0, #0x1c]
    str r0, [r5, #4]
    ldr r0, [r6, #4]
    ldr r1, [sp]
    bl GetBattleAnimCharacterUniquePalIndex
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, r7
    beq .L080541E4
    lsls r0, r4, #4
    add r0, sl
    ldr r0, [r0, #0xc]
    str r0, [r5, #4]
.L080541E4:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080541F4: .4byte banim_data
.L080541F8: .4byte character_battle_animation_palette_table
.L080541FC: .4byte gpImgSheet
.L08054200: .4byte gBanimValid
.L08054204: .4byte gBanimIdx
.L08054208: .4byte gBanimFactionPal
.L0805420C: .4byte gBanimUniquePal
.L08054210: .4byte gBanimScrLeft
.L08054214: .4byte gpBanimModesLeft
.L08054218: .4byte gBanimPaletteLeft
.L0805421C: .4byte gpEfxUnitPaletteBackup
.L08054220: .4byte gPal + 0x2e0
.L08054224: .4byte gBanimTriAtkPalettes
.L08054228: .4byte gBanimOaml
.L0805422C: .4byte 0x000057F0
.L08054230: .4byte gBanimScrRight
.L08054234: .4byte gpBanimModesRight
.L08054238: .4byte gBanimPaletteRight
.L0805423C: .4byte gPal + 0x320
.L08054240: .4byte gBanimOamr2
.L08054244: .4byte gpEkrTriangleUnits
    func_end UpdateBanimFrame

    thumb_func_start func_08054248
func_08054248: @ 0x08054248
    push {lr}
    ldr r0, .L08054260 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #4
    bhi .L080542C2
    lsls r0, r0, #2
    ldr r1, .L08054264 @ =.L08054268
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08054260: .4byte 0x0203E02C
.L08054264: .4byte .L08054268
.L08054268: @ jump table
    .4byte .L0805427C @ case 0
    .4byte .L08054286 @ case 1
    .4byte .L08054290 @ case 2
    .4byte .L0805427C @ case 3
    .4byte .L0805427C @ case 4
.L0805427C:
    movs r0, #6
    movs r1, #6
    bl func_080542D8
    b .L080542C2
.L08054286:
    movs r0, #8
    movs r1, #8
    bl func_080542D8
    b .L080542C2
.L08054290:
    movs r0, #8
    movs r1, #8
    bl func_080542D8
    bl func_0804D43C
    cmp r0, #0
    bne .L080542B4
    ldr r1, .L080542B0 @ =0x02000000
    ldr r2, [r1, #8]
    movs r0, #0xc0
    lsls r0, r0, #1
    strh r0, [r2, #2]
    ldr r1, [r1, #0xc]
    b .L080542C0
    .align 2, 0
.L080542B0: .4byte 0x02000000
.L080542B4:
    ldr r1, .L080542D0 @ =0x02000000
    ldr r2, [r1]
    movs r0, #0xc0
    lsls r0, r0, #1
    strh r0, [r2, #2]
    ldr r1, [r1, #4]
.L080542C0:
    strh r0, [r1, #2]
.L080542C2:
    ldr r1, .L080542D4 @ =0x0203E05E
    movs r0, #0
    strh r0, [r1]
    strh r0, [r1, #2]
    pop {r0}
    bx r0
    .align 2, 0
.L080542D0: .4byte 0x02000000
.L080542D4: .4byte 0x0203E05E
    func_end func_08054248

    thumb_func_start func_080542D8
func_080542D8: @ 0x080542D8
    push {r4, r5, r6, lr}
    adds r2, r0, #0
    adds r6, r1, #0
    ldr r4, .L08054324 @ =0x02000000
    movs r0, #0
    str r0, [r4]
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r0, [r4, #0xc]
    ldr r5, .L08054328 @ =gBanimValid
    ldrh r0, [r5]
    cmp r0, #1
    bne .L080542F8
    adds r0, r2, #0
    bl func_08054330
.L080542F8:
    ldrh r5, [r5, #2]
    cmp r5, #1
    bne .L08054304
    adds r0, r6, #0
    bl func_08054474
.L08054304:
    ldr r0, .L0805432C @ =0x0203E02C
    ldrh r0, [r0]
    cmp r0, #4
    bne .L0805431E
    ldr r1, [r4]
    movs r2, #2
    ldrh r0, [r1]
    orrs r0, r2
    strh r0, [r1]
    ldr r1, [r4, #4]
    ldrh r0, [r1]
    orrs r0, r2
    strh r0, [r1]
.L0805431E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08054324: .4byte 0x02000000
.L08054328: .4byte gBanimValid
.L0805432C: .4byte 0x0203E02C
    func_end func_080542D8

    thumb_func_start func_08054330
func_08054330: @ 0x08054330
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    ldr r2, .L08054438 @ =0x081D856C
    lsls r1, r7, #2
    adds r0, r1, r2
    ldrb r5, [r0]
    adds r0, r1, #1
    adds r0, r0, r2
    ldrb r6, [r0]
    adds r0, r1, #2
    adds r0, r0, r2
    ldrb r0, [r0]
    mov r8, r0
    adds r1, #3
    adds r1, r1, r2
    ldrb r1, [r1]
    mov sb, r1
    ldr r0, .L0805443C @ =0x081D8599
    ldr r1, .L08054440 @ =0x0203E02C
    movs r2, #0
    ldrsh r1, [r1, r2]
    adds r0, r1, r0
    ldrb r4, [r0]
    ldr r3, .L08054444 @ =0x02000030
    ldr r0, .L08054448 @ =0x081D85A4
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r1, [r1]
    rsbs r1, r1, #0
    movs r2, #0
    strh r1, [r3]
    ldr r0, .L0805444C @ =0x02000034
    strh r2, [r0]
    ldr r0, .L08054450 @ =0x02000028
    adds r1, r1, r4
    strh r1, [r0]
    ldr r1, .L08054454 @ =0x0200002C
    movs r0, #0x58
    strh r0, [r1]
    ldr r0, .L08054458 @ =gpBanimModesLeft
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L0805445C @ =gBanimScrLeft
    adds r0, r1, r0
    cmp r5, #0xff
    bne .L08054398
    ldr r0, .L08054460 @ =0x08B9B28C
.L08054398:
    adds r1, r6, #0
    bl AnimCreate
    adds r2, r0, #0
    ldr r1, .L08054450 @ =0x02000028
    ldr r0, .L08054464 @ =0x0201FB00
    ldrh r1, [r1]
    ldrh r0, [r0]
    subs r0, r1, r0
    movs r1, #0
    strh r0, [r2, #2]
    ldr r0, .L08054454 @ =0x0200002C
    ldrh r0, [r0]
    strh r0, [r2, #4]
    movs r0, #0xf4
    lsls r0, r0, #7
    strh r0, [r2, #8]
    movs r3, #0x80
    lsls r3, r3, #3
    adds r0, r3, #0
    ldrh r3, [r2, #0xc]
    orrs r0, r3
    strh r0, [r2, #0xc]
    strh r1, [r2, #0xe]
    strb r7, [r2, #0x12]
    ldr r0, .L08054468 @ =0x02000088
    str r0, [r2, #0x2c]
    ldr r0, .L0805446C @ =gBanimOaml
    str r0, [r2, #0x30]
    ldr r0, .L08054470 @ =0x02000000
    str r2, [r0]
    ldr r0, .L08054458 @ =gpBanimModesLeft
    ldr r1, [r0]
    mov r2, r8
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L0805445C @ =gBanimScrLeft
    adds r0, r1, r0
    cmp r2, #0xff
    bne .L080543EC
    ldr r0, .L08054460 @ =0x08B9B28C
.L080543EC:
    mov r1, sb
    bl AnimCreate
    adds r2, r0, #0
    ldr r1, .L08054450 @ =0x02000028
    ldr r0, .L08054464 @ =0x0201FB00
    ldrh r1, [r1]
    ldrh r0, [r0]
    subs r0, r1, r0
    movs r1, #0
    strh r0, [r2, #2]
    ldr r0, .L08054454 @ =0x0200002C
    ldrh r0, [r0]
    strh r0, [r2, #4]
    movs r0, #0xf4
    lsls r0, r0, #7
    strh r0, [r2, #8]
    movs r3, #0xa0
    lsls r3, r3, #3
    adds r0, r3, #0
    ldrh r3, [r2, #0xc]
    orrs r0, r3
    strh r0, [r2, #0xc]
    strh r1, [r2, #0xe]
    strb r7, [r2, #0x12]
    ldr r0, .L08054468 @ =0x02000088
    str r0, [r2, #0x2c]
    ldr r0, .L0805446C @ =gBanimOaml
    str r0, [r2, #0x30]
    ldr r0, .L08054470 @ =0x02000000
    str r2, [r0, #4]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08054438: .4byte 0x081D856C
.L0805443C: .4byte 0x081D8599
.L08054440: .4byte 0x0203E02C
.L08054444: .4byte 0x02000030
.L08054448: .4byte 0x081D85A4
.L0805444C: .4byte 0x02000034
.L08054450: .4byte 0x02000028
.L08054454: .4byte 0x0200002C
.L08054458: .4byte gpBanimModesLeft
.L0805445C: .4byte gBanimScrLeft
.L08054460: .4byte 0x08B9B28C
.L08054464: .4byte 0x0201FB00
.L08054468: .4byte 0x02000088
.L0805446C: .4byte gBanimOaml
.L08054470: .4byte 0x02000000
    func_end func_08054330

    thumb_func_start func_08054474
func_08054474: @ 0x08054474
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r2, .L0805455C @ =0x081D856C
    lsls r1, r5, #2
    adds r0, r1, r2
    ldrb r3, [r0]
    adds r0, r1, #1
    adds r0, r0, r2
    ldrb r4, [r0]
    adds r0, r1, #2
    adds r0, r0, r2
    ldrb r6, [r0]
    adds r1, #3
    adds r1, r1, r2
    ldrb r7, [r1]
    ldr r1, .L08054560 @ =0x081D859E
    ldr r0, .L08054564 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    adds r0, r0, r1
    ldrb r2, [r0]
    ldr r0, .L08054568 @ =0x02000030
    movs r1, #0
    strh r1, [r0, #2]
    ldr r0, .L0805456C @ =0x02000034
    strh r1, [r0, #2]
    ldr r0, .L08054570 @ =0x02000028
    strh r2, [r0, #2]
    ldr r1, .L08054574 @ =0x0200002C
    movs r0, #0x58
    strh r0, [r1, #2]
    ldr r0, .L08054578 @ =gpBanimModesRight
    ldr r1, [r0]
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L0805457C @ =gBanimScrRight
    adds r0, r1, r0
    cmp r3, #0xff
    bne .L080544C6
    ldr r0, .L08054580 @ =0x08B9B28C
.L080544C6:
    adds r1, r4, #0
    bl AnimCreate
    adds r2, r0, #0
    ldr r1, .L08054570 @ =0x02000028
    ldr r0, .L08054584 @ =0x0201FB00
    ldrh r1, [r1, #2]
    ldrh r0, [r0]
    subs r0, r1, r0
    movs r1, #0
    strh r0, [r2, #2]
    ldr r0, .L08054574 @ =0x0200002C
    ldrh r0, [r0, #2]
    strh r0, [r2, #4]
    movs r0, #0x9b
    lsls r0, r0, #8
    strh r0, [r2, #8]
    movs r3, #0xc0
    lsls r3, r3, #3
    adds r0, r3, #0
    ldrh r3, [r2, #0xc]
    orrs r0, r3
    strh r0, [r2, #0xc]
    strh r1, [r2, #0xe]
    strb r5, [r2, #0x12]
    ldr r0, .L08054588 @ =0x02002088
    str r0, [r2, #0x2c]
    ldr r0, .L0805458C @ =gBanimOamr2
    str r0, [r2, #0x30]
    ldr r0, .L08054590 @ =0x02000000
    str r2, [r0, #8]
    ldr r0, .L08054578 @ =gpBanimModesRight
    ldr r1, [r0]
    lsls r0, r6, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L0805457C @ =gBanimScrRight
    adds r0, r1, r0
    cmp r6, #0xff
    bne .L08054518
    ldr r0, .L08054580 @ =0x08B9B28C
.L08054518:
    adds r1, r7, #0
    bl AnimCreate
    adds r2, r0, #0
    ldr r1, .L08054570 @ =0x02000028
    ldr r0, .L08054584 @ =0x0201FB00
    ldrh r1, [r1, #2]
    ldrh r0, [r0]
    subs r0, r1, r0
    movs r1, #0
    strh r0, [r2, #2]
    ldr r0, .L08054574 @ =0x0200002C
    ldrh r0, [r0, #2]
    strh r0, [r2, #4]
    movs r0, #0x9b
    lsls r0, r0, #8
    strh r0, [r2, #8]
    movs r3, #0xe0
    lsls r3, r3, #3
    adds r0, r3, #0
    ldrh r3, [r2, #0xc]
    orrs r0, r3
    strh r0, [r2, #0xc]
    strh r1, [r2, #0xe]
    strb r5, [r2, #0x12]
    ldr r0, .L08054588 @ =0x02002088
    str r0, [r2, #0x2c]
    ldr r0, .L0805458C @ =gBanimOamr2
    str r0, [r2, #0x30]
    ldr r0, .L08054590 @ =0x02000000
    str r2, [r0, #0xc]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805455C: .4byte 0x081D856C
.L08054560: .4byte 0x081D859E
.L08054564: .4byte 0x0203E02C
.L08054568: .4byte 0x02000030
.L0805456C: .4byte 0x02000034
.L08054570: .4byte 0x02000028
.L08054574: .4byte 0x0200002C
.L08054578: .4byte gpBanimModesRight
.L0805457C: .4byte gBanimScrRight
.L08054580: .4byte 0x08B9B28C
.L08054584: .4byte 0x0201FB00
.L08054588: .4byte 0x02002088
.L0805458C: .4byte gBanimOamr2
.L08054590: .4byte 0x02000000
    func_end func_08054474

    thumb_func_start SwitchAISFrameDataFromBARoundType
SwitchAISFrameDataFromBARoundType: @ 0x08054594
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    bl GetAISLayerId
    cmp r0, #0
    bne .L080545B4
    ldr r0, .L080545B0 @ =0x081D856C
    lsls r1, r6, #2
    adds r2, r1, r0
    ldrb r5, [r2]
    adds r1, #1
    adds r1, r1, r0
    b .L080545C2
    .align 2, 0
.L080545B0: .4byte 0x081D856C
.L080545B4:
    ldr r2, .L080545E0 @ =0x081D856C
    lsls r1, r6, #2
    adds r0, r1, #2
    adds r0, r0, r2
    ldrb r5, [r0]
    adds r1, #3
    adds r1, r1, r2
.L080545C2:
    ldrb r7, [r1]
    cmp r5, #0xff
    beq .L08054608
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080545EC
    ldr r0, .L080545E4 @ =gpBanimModesLeft
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L080545E8 @ =gBanimScrLeft
    b .L080545F8
    .align 2, 0
.L080545E0: .4byte 0x081D856C
.L080545E4: .4byte gpBanimModesLeft
.L080545E8: .4byte gBanimScrLeft
.L080545EC:
    ldr r0, .L08054600 @ =gpBanimModesRight
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldr r0, .L08054604 @ =gBanimScrRight
.L080545F8:
    adds r1, r1, r0
    str r1, [r4, #0x24]
    str r1, [r4, #0x20]
    b .L08054612
    .align 2, 0
.L08054600: .4byte gpBanimModesRight
.L08054604: .4byte gBanimScrRight
.L08054608:
    ldr r0, .L08054658 @ =0x08B9B28C
    str r0, [r4, #0x24]
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #0x10]
.L08054612:
    movs r3, #0
    movs r2, #0
    strh r7, [r4, #0xa]
    ldr r0, .L0805465C @ =0x0000F3FF
    ldrh r1, [r4, #8]
    ands r0, r1
    movs r5, #0x80
    lsls r5, r5, #4
    adds r1, r5, #0
    orrs r0, r1
    strh r0, [r4, #8]
    strh r2, [r4, #6]
    movs r0, #0xe0
    lsls r0, r0, #3
    ldrh r1, [r4, #0xc]
    ands r0, r1
    strh r0, [r4, #0xc]
    strb r6, [r4, #0x12]
    strb r3, [r4, #0x14]
    adds r0, r4, #0
    bl GetAnimPosition
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #2
    subs r1, r1, r0
    lsls r1, r1, #0xb
    ldr r0, .L08054660 @ =gBanimOaml
    adds r1, r1, r0
    str r1, [r4, #0x30]
    bl AnimSort
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08054658: .4byte 0x08B9B28C
.L0805465C: .4byte 0x0000F3FF
.L08054660: .4byte gBanimOaml
    func_end SwitchAISFrameDataFromBARoundType

    thumb_func_start GetAISLayerId
GetAISLayerId: @ 0x08054664
    movs r1, #0x80
    lsls r1, r1, #1
    ldrh r0, [r0, #0xc]
    ands r1, r0
    cmp r1, #0
    beq .L08054674
    movs r0, #1
    b .L08054676
.L08054674:
    movs r0, #0
.L08054676:
    bx lr
    func_end GetAISLayerId

    thumb_func_start GetAnimPosition
GetAnimPosition: @ 0x08054678
    movs r1, #0x80
    lsls r1, r1, #2
    ldrh r0, [r0, #0xc]
    ands r1, r0
    cmp r1, #0
    beq .L08054688
    movs r0, #1
    b .L0805468A
.L08054688:
    movs r0, #0
.L0805468A:
    bx lr
    func_end GetAnimPosition

    thumb_func_start CheckRoundMiss
CheckRoundMiss: @ 0x0805468C
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bhi .L080546D0
    lsls r0, r0, #2
    ldr r1, .L080546A0 @ =.L080546A4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080546A0: .4byte .L080546A4
.L080546A4: @ jump table
    .4byte .L080546D0 @ case 0
    .4byte .L080546D0 @ case 1
    .4byte .L080546D0 @ case 2
    .4byte .L080546D0 @ case 3
    .4byte .L080546CC @ case 4
    .4byte .L080546CC @ case 5
    .4byte .L080546D0 @ case 6
    .4byte .L080546D0 @ case 7
    .4byte .L080546D0 @ case 8
    .4byte .L080546D0 @ case 9
.L080546CC:
    movs r0, #1
    b .L080546D2
.L080546D0:
    movs r0, #0
.L080546D2:
    bx lr
    func_end CheckRoundMiss

    thumb_func_start CheckRound1
CheckRound1: @ 0x080546D4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bhi .L08054718
    lsls r0, r0, #2
    ldr r1, .L080546E8 @ =.L080546EC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080546E8: .4byte .L080546EC
.L080546EC: @ jump table
    .4byte .L08054718 @ case 0
    .4byte .L08054718 @ case 1
    .4byte .L08054718 @ case 2
    .4byte .L08054718 @ case 3
    .4byte .L08054718 @ case 4
    .4byte .L08054718 @ case 5
    .4byte .L08054714 @ case 6
    .4byte .L08054714 @ case 7
    .4byte .L08054714 @ case 8
    .4byte .L08054718 @ case 9
.L08054714:
    movs r0, #1
    b .L0805471A
.L08054718:
    movs r0, #0
.L0805471A:
    bx lr
    func_end CheckRound1

    thumb_func_start func_0805471C
func_0805471C: @ 0x0805471C
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bhi .L08054760
    lsls r0, r0, #2
    ldr r1, .L08054730 @ =.L08054734
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08054730: .4byte .L08054734
.L08054734: @ jump table
    .4byte .L0805475C @ case 0
    .4byte .L0805475C @ case 1
    .4byte .L0805475C @ case 2
    .4byte .L0805475C @ case 3
    .4byte .L08054760 @ case 4
    .4byte .L08054760 @ case 5
    .4byte .L08054760 @ case 6
    .4byte .L08054760 @ case 7
    .4byte .L08054760 @ case 8
    .4byte .L0805475C @ case 9
.L0805475C:
    movs r0, #1
    b .L08054762
.L08054760:
    movs r0, #0
.L08054762:
    bx lr
    func_end func_0805471C

    thumb_func_start func_08054764
func_08054764: @ 0x08054764
    ldrb r0, [r0, #0x12]
    cmp r0, #9
    bhi .L080547A4
    lsls r0, r0, #2
    ldr r1, .L08054774 @ =.L08054778
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08054774: .4byte .L08054778
.L08054778: @ jump table
    .4byte .L080547A4 @ case 0
    .4byte .L080547A0 @ case 1
    .4byte .L080547A4 @ case 2
    .4byte .L080547A0 @ case 3
    .4byte .L080547A4 @ case 4
    .4byte .L080547A4 @ case 5
    .4byte .L080547A4 @ case 6
    .4byte .L080547A4 @ case 7
    .4byte .L080547A4 @ case 8
    .4byte .L080547A4 @ case 9
.L080547A0:
    movs r0, #1
    b .L080547A6
.L080547A4:
    movs r0, #0
.L080547A6:
    bx lr
    func_end func_08054764

    thumb_func_start GetAnimAnotherSide
GetAnimAnotherSide: @ 0x080547A8
    push {r4, lr}
    ldr r4, .L080547C0 @ =0x02000000
    bl GetAnimPosition
    movs r1, #1
    eors r1, r0
    lsls r1, r1, #3
    adds r1, r1, r4
    ldr r0, [r1]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080547C0: .4byte 0x02000000
    func_end GetAnimAnotherSide

    thumb_func_start func_080547C4
func_080547C4: @ 0x080547C4
    push {r4, lr}
    adds r4, r0, #0
    bl GetAnimPosition
    adds r1, r0, #0
    ldrh r0, [r4, #0xe]
    subs r0, #1
    lsls r0, r0, #1
    adds r0, r0, r1
    bl GetBattleAnimRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080547C4

    thumb_func_start GetAnimNextRoundType
GetAnimNextRoundType: @ 0x080547E4
    push {r4, lr}
    adds r4, r0, #0
    bl GetAnimPosition
    adds r1, r0, #0
    ldrh r4, [r4, #0xe]
    lsls r0, r4, #1
    adds r0, r0, r1
    bl GetBattleAnimRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    pop {r4}
    pop {r1}
    bx r1
    func_end GetAnimNextRoundType

    thumb_func_start GetAnimRoundTypeAnotherSide
GetAnimRoundTypeAnotherSide: @ 0x08054804
    push {r4, lr}
    adds r4, r0, #0
    bl GetAnimPosition
    adds r2, r0, #0
    ldrh r0, [r4, #0xe]
    subs r0, #1
    lsls r0, r0, #1
    movs r1, #1
    eors r1, r2
    adds r0, r0, r1
    bl GetBattleAnimRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    pop {r4}
    pop {r1}
    bx r1
    func_end GetAnimRoundTypeAnotherSide

    thumb_func_start GetAnimNextRoundTypeAnotherSide
GetAnimNextRoundTypeAnotherSide: @ 0x08054828
    push {r4, lr}
    adds r4, r0, #0
    bl GetAnimPosition
    adds r2, r0, #0
    ldrh r4, [r4, #0xe]
    lsls r0, r4, #1
    movs r1, #1
    eors r1, r2
    adds r0, r0, r1
    bl GetBattleAnimRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    pop {r4}
    pop {r1}
    bx r1
    func_end GetAnimNextRoundTypeAnotherSide

    thumb_func_start func_0805484C
func_0805484C: @ 0x0805484C
    cmp r0, #0
    bne .L08054864
    ldr r2, .L08054860 @ =0x02000000
    ldr r3, [r2]
    movs r1, #2
    ldrh r0, [r3]
    orrs r0, r1
    strh r0, [r3]
    ldr r3, [r2, #4]
    b .L08054876
    .align 2, 0
.L08054860: .4byte 0x02000000
.L08054864:
    cmp r0, #1
    bne .L0805487C
    ldr r2, .L08054880 @ =0x02000000
    ldr r3, [r2, #8]
    movs r1, #2
    ldrh r0, [r3]
    orrs r0, r1
    strh r0, [r3]
    ldr r3, [r2, #0xc]
.L08054876:
    ldrh r0, [r3]
    orrs r0, r1
    strh r0, [r3]
.L0805487C:
    bx lr
    .align 2, 0
.L08054880: .4byte 0x02000000
    func_end func_0805484C

    thumb_func_start func_08054884
func_08054884: @ 0x08054884
    push {r4, lr}
    cmp r0, #0
    bne .L080548A4
    ldr r2, .L0805489C @ =0x02000000
    ldr r3, [r2]
    ldr r1, .L080548A0 @ =0x0000FFFD
    adds r0, r1, #0
    ldrh r4, [r3]
    ands r0, r4
    strh r0, [r3]
    ldr r3, [r2, #4]
    b .L080548B8
    .align 2, 0
.L0805489C: .4byte 0x02000000
.L080548A0: .4byte 0x0000FFFD
.L080548A4:
    cmp r0, #1
    bne .L080548BE
    ldr r2, .L080548C4 @ =0x02000000
    ldr r3, [r2, #8]
    ldr r1, .L080548C8 @ =0x0000FFFD
    adds r0, r1, #0
    ldrh r4, [r3]
    ands r0, r4
    strh r0, [r3]
    ldr r3, [r2, #0xc]
.L080548B8:
    ldrh r0, [r3]
    ands r1, r0
    strh r1, [r3]
.L080548BE:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080548C4: .4byte 0x02000000
.L080548C8: .4byte 0x0000FFFD
    func_end func_08054884

    thumb_func_start func_080548CC
func_080548CC: @ 0x080548CC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    cmp r4, #0
    bne .L080548D8
    b .L08054A5E
.L080548D8:
    movs r5, #0xf0
    lsls r5, r5, #8
    ldrh r0, [r4, #0xc]
    ands r5, r0
    cmp r5, #0
    bne .L080548E6
    b .L08054A5E
.L080548E6:
    movs r0, #0x80
    lsls r0, r0, #5
    ands r0, r5
    cmp r0, #0
    bne .L080548F2
    b .L08054A20
.L080548F2:
    ldrb r0, [r4, #0x14]
    cmp r0, #0
    bne .L080548FA
    b .L08054A16
.L080548FA:
    ldrb r1, [r4, #0x14]
    adds r0, r1, r4
    ldrb r0, [r0, #0x14]
    cmp r0, #0x32
    bls .L08054906
    b .L08054A0E
.L08054906:
    lsls r0, r0, #2
    ldr r1, .L08054910 @ =.L08054914
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08054910: .4byte .L08054914
.L08054914: @ jump table
    .4byte .L08054A0E @ case 0
    .4byte .L080549E0 @ case 1
    .4byte .L080549E0 @ case 2
    .4byte .L080549F8 @ case 3
    .4byte .L080549F8 @ case 4
    .4byte .L080549E8 @ case 5
    .4byte .L08054A0E @ case 6
    .4byte .L08054A0E @ case 7
    .4byte .L08054A0E @ case 8
    .4byte .L08054A0E @ case 9
    .4byte .L08054A0E @ case 10
    .4byte .L08054A0E @ case 11
    .4byte .L08054A0E @ case 12
    .4byte .L08054A00 @ case 13
    .4byte .L08054A0E @ case 14
    .4byte .L08054A0E @ case 15
    .4byte .L08054A0E @ case 16
    .4byte .L08054A0E @ case 17
    .4byte .L08054A0E @ case 18
    .4byte .L08054A0E @ case 19
    .4byte .L08054A0E @ case 20
    .4byte .L08054A0E @ case 21
    .4byte .L08054A0E @ case 22
    .4byte .L08054A0E @ case 23
    .4byte .L08054A08 @ case 24
    .4byte .L08054A0E @ case 25
    .4byte .L08054A0E @ case 26
    .4byte .L08054A0E @ case 27
    .4byte .L08054A0E @ case 28
    .4byte .L08054A0E @ case 29
    .4byte .L08054A0E @ case 30
    .4byte .L08054A0E @ case 31
    .4byte .L08054A0E @ case 32
    .4byte .L08054A0E @ case 33
    .4byte .L08054A0E @ case 34
    .4byte .L08054A0E @ case 35
    .4byte .L08054A0E @ case 36
    .4byte .L08054A0E @ case 37
    .4byte .L08054A0E @ case 38
    .4byte .L08054A0E @ case 39
    .4byte .L08054A0E @ case 40
    .4byte .L08054A0E @ case 41
    .4byte .L08054A0E @ case 42
    .4byte .L08054A0E @ case 43
    .4byte .L08054A0E @ case 44
    .4byte .L08054A0E @ case 45
    .4byte .L08054A0E @ case 46
    .4byte .L08054A0E @ case 47
    .4byte .L08054A0E @ case 48
    .4byte .L08054A0E @ case 49
    .4byte .L08054A0E @ case 50
.L080549E0:
    adds r0, r4, #0
    bl func_08054A68
    b .L08054A0E
.L080549E8:
    adds r0, r4, #0
    bl GetAISLayerId
    cmp r0, #0
    bne .L080549F8
    adds r0, r4, #0
    bl func_08064244
.L080549F8:
    ldr r0, [r4, #0x20]
    adds r0, #4
    str r0, [r4, #0x20]
    b .L08054A0E
.L08054A00:
    adds r0, r4, #0
    bl func_08054A8C
    b .L08054A0E
.L08054A08:
    adds r0, r4, #0
    bl func_08054A68
.L08054A0E:
    ldrb r0, [r4, #0x14]
    subs r0, #1
    strb r0, [r4, #0x14]
    b .L080548F2
.L08054A16:
    movs r0, #0xe7
    lsls r0, r0, #8
    ldrh r1, [r4, #0xc]
    ands r0, r1
    strh r0, [r4, #0xc]
.L08054A20:
    movs r0, #0x80
    lsls r0, r0, #6
    ands r0, r5
    cmp r0, #0
    beq .L08054A50
    adds r0, r4, #0
    bl GetAISLayerId
    cmp r0, #0
    bne .L08054A46
    ldr r1, [r6, #0x2c]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    beq .L08054A46
    adds r0, r4, #0
    bl RegisterAISSheetGraphics
    ldr r0, [r4, #0x28]
    str r0, [r6, #0x2c]
.L08054A46:
    movs r0, #0xd7
    lsls r0, r0, #8
    ldrh r1, [r4, #0xc]
    ands r0, r1
    strh r0, [r4, #0xc]
.L08054A50:
    movs r0, #0x80
    lsls r0, r0, #7
    ands r5, r0
    cmp r5, #0
    beq .L08054A5E
    ldr r0, .L08054A64 @ =0x0000FFFF
    strh r0, [r4, #0xe]
.L08054A5E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08054A64: .4byte 0x0000FFFF
    func_end func_080548CC

    thumb_func_start func_08054A68
func_08054A68: @ 0x08054A68
    adds r1, r0, #0
    ldr r0, .L08054A88 @ =0x0000FFFE
    strh r0, [r1, #0xe]
    movs r0, #8
    ldrh r2, [r1, #0x10]
    ands r0, r2
    cmp r0, #0
    beq .L08054A84
    strh r0, [r1, #0x10]
    movs r0, #0
    strh r0, [r1, #0xe]
    ldr r0, [r1, #0x20]
    adds r0, #4
    str r0, [r1, #0x20]
.L08054A84:
    bx lr
    .align 2, 0
.L08054A88: .4byte 0x0000FFFE
    func_end func_08054A68

    thumb_func_start func_08054A8C
func_08054A8C: @ 0x08054A8C
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r6, [r7, #0x44]
    bl GetAISLayerId
    cmp r0, #0
    bne .L08054ADE
    ldr r3, .L08054AE4 @ =0x081D856C
    movs r1, #6
    ldrsh r0, [r6, r1]
    lsls r0, r0, #5
    ldr r1, .L08054AE8 @ =banim_data
    adds r0, r0, r1
    ldr r1, [r0, #0xc]
    ldr r2, [r6, #0x14]
    ldr r4, [r6, #0x18]
    ldr r5, [r6, #0x28]
    ldrb r3, [r3, #0x18]
    lsls r0, r3, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r1, r5, r0
    ldr r0, [r1, #4]
    str r0, [r2, #0x28]
    ldr r5, [r2, #0x30]
    ldr r0, [r1, #8]
    adds r5, r5, r0
    str r5, [r2, #0x3c]
    ldr r5, [r4, #0x30]
    ldr r0, .L08054AEC @ =0x000057F0
    adds r5, r5, r0
    str r5, [r4, #0x3c]
    ldr r1, [r6, #0x2c]
    ldr r0, [r7, #0x28]
    cmp r1, r0
    beq .L08054ADE
    adds r0, r7, #0
    bl NewEkrChienCHR
    ldr r0, [r7, #0x28]
    str r0, [r6, #0x2c]
.L08054ADE:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08054AE4: .4byte 0x081D856C
.L08054AE8: .4byte banim_data
.L08054AEC: .4byte 0x000057F0
    func_end func_08054A8C

    thumb_func_start func_08054AF0
func_08054AF0: @ 0x08054AF0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, .L08054B78 @ =banim_data
    mov sb, r0
    ldr r2, .L08054B7C @ =0x081D856C
    ldrh r3, [r5, #0xa]
    lsls r1, r3, #2
    adds r0, r1, r2
    ldrb r4, [r0]
    adds r0, r1, #1
    adds r0, r0, r2
    ldrb r0, [r0]
    mov r8, r0
    adds r0, r1, #2
    adds r0, r0, r2
    ldrb r6, [r0]
    adds r1, #3
    adds r1, r1, r2
    ldrb r1, [r1]
    str r1, [sp]
    movs r1, #6
    ldrsh r0, [r5, r1]
    lsls r0, r0, #5
    add r0, sb
    ldr r0, [r0, #0x10]
    ldr r1, [r5, #0x28]
    bl LZ77UnCompWram
    movs r2, #6
    ldrsh r0, [r5, r2]
    lsls r0, r0, #5
    mov r3, sb
    adds r1, r0, r3
    ldr r2, [r1, #0xc]
    ldr r3, [r5, #0x28]
    ldr r7, .L08054B80 @ =0x08B9B28C
    cmp r4, #0xff
    beq .L08054B4E
    lsls r0, r4, #2
    adds r0, r0, r2
    ldr r0, [r0]
    adds r7, r3, r0
.L08054B4E:
    ldr r0, .L08054B80 @ =0x08B9B28C
    mov sl, r0
    cmp r6, #0xff
    beq .L08054B60
    lsls r0, r6, #2
    adds r0, r0, r2
    ldr r0, [r0]
    adds r3, r3, r0
    mov sl, r3
.L08054B60:
    ldrh r0, [r5, #0xc]
    cmp r0, #0
    bne .L08054B88
    ldr r4, [r5, #0x24]
    ldr r0, [r1, #0x18]
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r2, .L08054B84 @ =0x000057F0
    adds r1, r4, r2
    b .L08054B96
    .align 2, 0
.L08054B78: .4byte banim_data
.L08054B7C: .4byte 0x081D856C
.L08054B80: .4byte 0x08B9B28C
.L08054B84: .4byte 0x000057F0
.L08054B88:
    ldr r4, [r5, #0x24]
    ldr r0, [r1, #0x14]
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r3, .L08054C80 @ =0x000057F0
    adds r1, r4, r3
.L08054B96:
    movs r0, #1
    str r0, [r1]
    mov r1, r8
    adds r0, r7, #0
    bl AnimCreate
    adds r2, r0, #0
    ldr r0, [r5, #0x24]
    str r0, [r2, #0x30]
    ldrh r0, [r5, #2]
    movs r6, #0
    strh r0, [r2, #2]
    ldrh r0, [r5, #4]
    strh r0, [r2, #4]
    ldrh r1, [r5, #0x10]
    lsls r0, r1, #0xc
    movs r3, #0x80
    lsls r3, r3, #4
    adds r4, r3, #0
    orrs r0, r4
    ldrh r1, [r5, #0xe]
    orrs r0, r1
    strh r0, [r2, #8]
    ldrh r3, [r5, #0xc]
    lsls r0, r3, #9
    movs r3, #0x80
    lsls r3, r3, #3
    adds r1, r3, #0
    orrs r0, r1
    ldrh r1, [r2, #0xc]
    orrs r0, r1
    strh r0, [r2, #0xc]
    strh r6, [r2, #0xe]
    ldrh r0, [r5, #0xa]
    strb r0, [r2, #0x12]
    ldr r0, [r5, #0x1c]
    str r0, [r2, #0x2c]
    str r2, [r5, #0x14]
    str r5, [r2, #0x44]
    ldr r1, [sp]
    mov r0, sl
    bl AnimCreate
    adds r2, r0, #0
    ldr r0, [r5, #0x24]
    str r0, [r2, #0x30]
    ldrh r0, [r5, #2]
    strh r0, [r2, #2]
    ldrh r0, [r5, #4]
    strh r0, [r2, #4]
    ldrh r3, [r5, #0x10]
    lsls r0, r3, #0xc
    orrs r0, r4
    ldrh r1, [r5, #0xe]
    orrs r0, r1
    strh r0, [r2, #8]
    ldrh r3, [r5, #0xc]
    lsls r0, r3, #9
    movs r3, #0xa0
    lsls r3, r3, #3
    adds r1, r3, #0
    orrs r0, r1
    ldrh r1, [r2, #0xc]
    orrs r0, r1
    strh r0, [r2, #0xc]
    strh r6, [r2, #0xe]
    ldrh r0, [r5, #0xa]
    strb r0, [r2, #0x12]
    ldr r0, [r5, #0x1c]
    str r0, [r2, #0x2c]
    str r2, [r5, #0x18]
    str r5, [r2, #0x44]
    movs r2, #6
    ldrsh r0, [r5, r2]
    lsls r0, r0, #5
    add r0, sb
    ldr r0, [r0, #0x1c]
    ldr r1, [r5, #0x20]
    bl LZ77UnCompWram
    movs r3, #8
    ldrsh r1, [r5, r3]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08054C52
    adds r0, r1, #0
    lsls r0, r0, #4
    ldr r2, .L08054C84 @ =character_battle_animation_palette_table
    adds r0, r0, r2
    ldr r0, [r0, #0xc]
    ldr r1, [r5, #0x20]
    bl LZ77UnCompWram
.L08054C52:
    ldrb r3, [r5, #1]
    lsls r1, r3, #5
    ldr r0, [r5, #0x20]
    adds r0, r0, r1
    ldrh r2, [r5, #0x10]
    lsls r1, r2, #5
    ldr r2, .L08054C88 @ =0x02022A60
    adds r1, r1, r2
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    str r6, [r5, #0x2c]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08054C80: .4byte 0x000057F0
.L08054C84: .4byte character_battle_animation_palette_table
.L08054C88: .4byte 0x02022A60
    func_end func_08054AF0

    thumb_func_start func_08054C8C
func_08054C8C: @ 0x08054C8C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r6, r0, #0
    ldr r0, .L08054D00 @ =banim_data
    mov sb, r0
    ldr r2, .L08054D04 @ =0x081D856C
    ldrh r1, [r6, #0xa]
    lsls r0, r1, #2
    adds r1, r0, r2
    ldrb r4, [r1]
    adds r0, #2
    adds r0, r0, r2
    ldrb r5, [r0]
    movs r2, #6
    ldrsh r0, [r6, r2]
    lsls r0, r0, #5
    add r0, sb
    ldr r0, [r0, #0x10]
    ldr r1, [r6, #0x28]
    bl LZ77UnCompWram
    movs r3, #6
    ldrsh r0, [r6, r3]
    lsls r0, r0, #5
    mov r7, sb
    adds r1, r0, r7
    ldr r2, [r1, #0xc]
    ldr r3, [r6, #0x28]
    ldr r7, .L08054D08 @ =0x08B9B28C
    cmp r4, #0xff
    beq .L08054CD6
    lsls r0, r4, #2
    adds r0, r0, r2
    ldr r0, [r0]
    adds r7, r3, r0
.L08054CD6:
    ldr r0, .L08054D08 @ =0x08B9B28C
    mov r8, r0
    cmp r5, #0xff
    beq .L08054CE8
    lsls r0, r5, #2
    adds r0, r0, r2
    ldr r0, [r0]
    adds r3, r3, r0
    mov r8, r3
.L08054CE8:
    ldrh r0, [r6, #0xc]
    cmp r0, #0
    bne .L08054D10
    ldr r4, [r6, #0x24]
    ldr r0, [r1, #0x18]
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r2, .L08054D0C @ =0x000057F0
    adds r1, r4, r2
    b .L08054D1E
    .align 2, 0
.L08054D00: .4byte banim_data
.L08054D04: .4byte 0x081D856C
.L08054D08: .4byte 0x08B9B28C
.L08054D0C: .4byte 0x000057F0
.L08054D10:
    ldr r4, [r6, #0x24]
    ldr r0, [r1, #0x14]
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r3, .L08054DF4 @ =0x000057F0
    adds r1, r4, r3
.L08054D1E:
    movs r0, #1
    str r0, [r1]
    ldr r5, [r6, #0x14]
    str r7, [r5, #0x24]
    str r7, [r5, #0x20]
    ldr r0, [r6, #0x24]
    str r0, [r5, #0x30]
    ldrh r0, [r6, #2]
    movs r4, #0
    movs r2, #0
    strh r0, [r5, #2]
    ldrh r0, [r6, #4]
    strh r0, [r5, #4]
    ldrh r7, [r6, #0x10]
    lsls r0, r7, #0xc
    movs r1, #0x80
    lsls r1, r1, #4
    adds r3, r1, #0
    orrs r0, r3
    ldrh r7, [r6, #0xe]
    orrs r0, r7
    strh r0, [r5, #8]
    movs r1, #0xe0
    lsls r1, r1, #3
    adds r0, r1, #0
    ldrh r7, [r5, #0xc]
    ands r0, r7
    strh r0, [r5, #0xc]
    strh r2, [r5, #0x10]
    strh r2, [r5, #6]
    strh r2, [r5, #0xe]
    ldrh r0, [r6, #0xa]
    strb r0, [r5, #0x12]
    ldr r0, [r6, #0x1c]
    str r0, [r5, #0x2c]
    strb r4, [r5, #0x14]
    str r5, [r6, #0x14]
    ldr r5, [r6, #0x18]
    mov r0, r8
    str r0, [r5, #0x24]
    str r0, [r5, #0x20]
    ldr r0, [r6, #0x24]
    str r0, [r5, #0x30]
    ldrh r0, [r6, #2]
    strh r0, [r5, #2]
    ldrh r0, [r6, #4]
    strh r0, [r5, #4]
    ldrh r7, [r6, #0x10]
    lsls r0, r7, #0xc
    orrs r0, r3
    ldrh r3, [r6, #0xe]
    orrs r0, r3
    strh r0, [r5, #8]
    ldrh r7, [r5, #0xc]
    ands r1, r7
    strh r1, [r5, #0xc]
    strh r2, [r5, #0x10]
    strh r2, [r5, #6]
    strh r2, [r5, #0xe]
    ldrh r0, [r6, #0xa]
    strb r0, [r5, #0x12]
    ldr r0, [r6, #0x1c]
    str r0, [r5, #0x2c]
    strb r4, [r5, #0x14]
    str r5, [r6, #0x18]
    movs r1, #6
    ldrsh r0, [r6, r1]
    lsls r0, r0, #5
    add r0, sb
    ldr r0, [r0, #0x1c]
    ldr r1, [r6, #0x20]
    bl LZ77UnCompWram
    movs r2, #8
    ldrsh r1, [r6, r2]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L08054DCC
    adds r0, r1, #0
    lsls r0, r0, #4
    ldr r7, .L08054DF8 @ =character_battle_animation_palette_table
    adds r0, r0, r7
    ldr r0, [r0, #0xc]
    ldr r1, [r6, #0x20]
    bl LZ77UnCompWram
.L08054DCC:
    ldrb r0, [r6, #1]
    lsls r1, r0, #5
    ldr r0, [r6, #0x20]
    adds r0, r0, r1
    ldrh r6, [r6, #0x10]
    lsls r1, r6, #5
    ldr r2, .L08054DFC @ =0x02022A60
    adds r1, r1, r2
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08054DF4: .4byte 0x000057F0
.L08054DF8: .4byte character_battle_animation_palette_table
.L08054DFC: .4byte 0x02022A60
    func_end func_08054C8C

    thumb_func_start func_08054E00
func_08054E00: @ 0x08054E00
    push {lr}
    strh r1, [r0, #6]
    strh r2, [r0, #8]
    bl func_08054C8C
    pop {r0}
    bx r0
    func_end func_08054E00

    thumb_func_start func_08054E10
func_08054E10: @ 0x08054E10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    strh r1, [r0, #2]
    strh r2, [r0, #4]
    ldr r2, [r0, #0x14]
    strh r1, [r2, #2]
    ldrh r1, [r0, #4]
    strh r1, [r2, #4]
    ldr r2, [r0, #0x18]
    ldrh r1, [r0, #2]
    strh r1, [r2, #2]
    ldrh r0, [r0, #4]
    strh r0, [r2, #4]
    bx lr
    func_end func_08054E10

    thumb_func_start func_08054E2C
func_08054E2C: @ 0x08054E2C
    lsls r1, r1, #0x10
    ldr r2, [r0, #0x14]
    lsrs r1, r1, #6
    strh r1, [r2, #8]
    ldr r2, [r0, #0x18]
    strh r1, [r2, #8]
    bx lr
    func_end func_08054E2C

    thumb_func_start func_08054E3C
func_08054E3C: @ 0x08054E3C
    ldr r1, [r0, #0x14]
    ldr r2, [r0, #0x18]
    ldr r0, .L08054E54 @ =0x0000FFFE
    ldrh r1, [r1, #0xe]
    cmp r1, r0
    beq .L08054E58
    ldrh r2, [r2, #0xe]
    cmp r2, r0
    beq .L08054E58
    movs r0, #0
    b .L08054E5A
    .align 2, 0
.L08054E54: .4byte 0x0000FFFE
.L08054E58:
    movs r0, #1
.L08054E5A:
    bx lr
    func_end func_08054E3C

    thumb_func_start func_08054E5C
func_08054E5C: @ 0x08054E5C
    ldr r3, [r0, #0x14]
    movs r2, #8
    ldrh r1, [r3, #0x10]
    orrs r1, r2
    strh r1, [r3, #0x10]
    ldr r3, [r0, #0x18]
    ldrh r0, [r3, #0x10]
    orrs r0, r2
    strh r0, [r3, #0x10]
    bx lr
    func_end func_08054E5C

    thumb_func_start func_08054E70
func_08054E70: @ 0x08054E70
    ldr r1, [r0, #0x14]
    ldr r0, .L08054E80 @ =0x0000FFFF
    ldrh r1, [r1, #0xe]
    cmp r1, r0
    bne .L08054E84
    movs r0, #1
    b .L08054E86
    .align 2, 0
.L08054E80: .4byte 0x0000FFFF
.L08054E84:
    movs r0, #0
.L08054E86:
    bx lr
    func_end func_08054E70

    thumb_func_start func_08054E88
func_08054E88: @ 0x08054E88
    push {r4, lr}
    ldr r4, .L08054EA0 @ =0x0201FB0C
    ldr r0, .L08054EA4 @ =0x08B9B2DC
    movs r1, #4
    bl Proc_Start
    str r0, [r4]
    bl AnimClearAll
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08054EA0: .4byte 0x0201FB0C
.L08054EA4: .4byte 0x08B9B2DC
    func_end func_08054E88

    thumb_func_start func_08054EA8
func_08054EA8: @ 0x08054EA8
    push {lr}
    ldr r0, .L08054EB8 @ =0x0201FB0C
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L08054EB8: .4byte 0x0201FB0C
    func_end func_08054EA8

    thumb_func_start func_08054EBC
func_08054EBC: @ 0x08054EBC
    push {lr}
    bl AnimUpdateAll
    pop {r0}
    bx r0
    func_end func_08054EBC

    thumb_func_start func_08054EC8
func_08054EC8: @ 0x08054EC8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L08054EEC @ =0x08B9B2F4
    movs r1, #4
    bl Proc_Start
    adds r5, r0, #0
    adds r0, r4, #0
    bl func_08054AF0
    str r4, [r5, #0x5c]
    str r5, [r4, #0x34]
    movs r0, #1
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08054EEC: .4byte 0x08B9B2F4
    func_end func_08054EC8

    thumb_func_start func_08054EF0
func_08054EF0: @ 0x08054EF0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x14]
    bl AnimDelete
    ldr r0, [r4, #0x18]
    bl AnimDelete
    movs r0, #0
    str r0, [r4, #0x14]
    str r0, [r4, #0x18]
    ldr r0, [r4, #0x34]
    bl Proc_End
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08054EF0

    thumb_func_start func_08054F14
func_08054F14: @ 0x08054F14
    push {r4, lr}
    ldr r4, [r0, #0x5c]
    ldr r1, [r4, #0x14]
    adds r0, r4, #0
    bl func_080548CC
    ldr r1, [r4, #0x18]
    adds r0, r4, #0
    bl func_080548CC
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08054F14

    thumb_func_start func_08054F30
func_08054F30: @ 0x08054F30
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0xc
    adds r6, r0, #0
    movs r0, #0
    ldrsh r1, [r6, r0]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #3
    ldr r2, .L08054F98 @ =battle_terrain_table
    adds r0, r0, r2
    mov r8, r0
    movs r0, #6
    ldrsh r1, [r6, r0]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r5, r0, r2
    movs r1, #0
    ldrsh r0, [r6, r1]
    movs r4, #1
    rsbs r4, r4, #0
    cmp r0, r4
    beq .L08054F6E
    mov r2, r8
    ldr r0, [r2, #0xc]
    ldr r1, [r6, #0x20]
    bl LZ77UnCompWram
.L08054F6E:
    movs r1, #6
    ldrsh r0, [r6, r1]
    cmp r0, r4
    beq .L08054F84
    ldr r0, [r5, #0xc]
    ldr r1, [r6, #0x20]
    movs r2, #0x80
    lsls r2, r2, #5
    adds r1, r1, r2
    bl LZ77UnCompWram
.L08054F84:
    movs r1, #0xc
    ldrsh r0, [r6, r1]
    cmp r0, #3
    bgt .L08054F9C
    cmp r0, #1
    bge .L08054FAA
    cmp r0, #0
    beq .L08054FA0
    b .L08054FAA
    .align 2, 0
.L08054F98: .4byte battle_terrain_table
.L08054F9C:
    cmp r0, #4
    bne .L08054FAA
.L08054FA0:
    ldr r3, [r6, #0x20]
    movs r2, #0x80
    lsls r2, r2, #5
    adds r7, r3, r2
    b .L08054FB8
.L08054FAA:
    ldr r0, [r6, #0x20]
    movs r1, #0x80
    lsls r1, r1, #4
    adds r3, r0, r1
    movs r2, #0xc0
    lsls r2, r2, #5
    adds r7, r0, r2
.L08054FB8:
    mov r0, r8
    ldr r0, [r0, #0x10]
    mov r8, r0
    ldr r5, [r5, #0x10]
    mov sb, r5
    movs r1, #0xe
    ldrsh r4, [r6, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    beq .L0805503C
    cmp r4, r0
    blt .L0805509C
    cmp r4, #3
    bgt .L0805509C
    movs r2, #4
    ldrsh r0, [r6, r2]
    adds r0, #0x40
    lsls r0, r0, #5
    movs r4, #0xc0
    lsls r4, r4, #0x13
    adds r0, r0, r4
    ldr r1, [r6, #0x1c]
    adds r1, r1, r0
    movs r5, #0x80
    lsls r5, r5, #4
    adds r0, r3, #0
    adds r2, r5, #0
    bl RegisterDataMove
    movs r1, #0xa
    ldrsh r0, [r6, r1]
    lsls r0, r0, #5
    adds r0, r0, r4
    ldr r1, [r6, #0x1c]
    adds r1, r1, r0
    adds r0, r7, #0
    adds r2, r5, #0
    bl RegisterDataMove
    movs r2, #2
    ldrsh r1, [r6, r2]
    lsls r1, r1, #5
    ldr r4, .L08055038 @ =gPal
    adds r1, r1, r4
    mov r0, r8
    movs r2, #8
    bl CpuFastSet
    movs r0, #8
    ldrsh r1, [r6, r0]
    lsls r1, r1, #5
    adds r1, r1, r4
    mov r0, sb
    movs r2, #8
    bl CpuFastSet
    bl EnablePalSync
    adds r0, r6, #0
    bl func_08055320
    b .L0805509C
    .align 2, 0
.L08055038: .4byte gPal
.L0805503C:
    movs r1, #0
    ldrsh r0, [r6, r1]
    cmp r0, r4
    beq .L0805506A
    movs r2, #4
    ldrsh r0, [r6, r2]
    lsls r0, r0, #5
    ldr r1, [r6, #0x1c]
    adds r1, r1, r0
    movs r2, #0x80
    lsls r2, r2, #4
    adds r0, r3, #0
    bl RegisterDataMove
    movs r0, #2
    ldrsh r1, [r6, r0]
    lsls r1, r1, #5
    ldr r0, .L080550B4 @ =0x02022A60
    adds r1, r1, r0
    mov r0, r8
    movs r2, #8
    bl CpuFastSet
.L0805506A:
    movs r1, #6
    ldrsh r0, [r6, r1]
    cmp r0, r4
    beq .L08055098
    movs r2, #0xa
    ldrsh r0, [r6, r2]
    lsls r0, r0, #5
    ldr r1, [r6, #0x1c]
    adds r1, r1, r0
    movs r2, #0x80
    lsls r2, r2, #4
    adds r0, r7, #0
    bl RegisterDataMove
    movs r0, #8
    ldrsh r1, [r6, r0]
    lsls r1, r1, #5
    ldr r0, .L080550B4 @ =0x02022A60
    adds r1, r1, r0
    mov r0, sb
    movs r2, #8
    bl CpuFastSet
.L08055098:
    bl EnablePalSync
.L0805509C:
    ldrh r0, [r6, #0xe]
    adds r0, #1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    bls .L080550AA
    b .L080552CA
.L080550AA:
    lsls r0, r0, #2
    ldr r1, .L080550B8 @ =.L080550BC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080550B4: .4byte 0x02022A60
.L080550B8: .4byte .L080550BC
.L080550BC: @ jump table
    .4byte .L080550F0 @ case 0
    .4byte .L080550D0 @ case 1
    .4byte .L080550D8 @ case 2
    .4byte .L080550E0 @ case 3
    .4byte .L080550E8 @ case 4
.L080550D0:
    movs r0, #1
    bl EnableBgSync
    b .L080552CA
.L080550D8:
    movs r0, #2
    bl EnableBgSync
    b .L080552CA
.L080550E0:
    movs r0, #4
    bl EnableBgSync
    b .L080552CA
.L080550E8:
    movs r0, #8
    bl EnableBgSync
    b .L080552CA
.L080550F0:
    movs r0, #0
    str r0, [r6, #0x14]
    str r0, [r6, #0x18]
    movs r2, #0
    ldrsh r1, [r6, r2]
    subs r0, #1
    cmp r1, r0
    beq .L080551DE
    movs r1, #0xc
    ldrsh r0, [r6, r1]
    cmp r0, #4
    bhi .L080551DE
    lsls r0, r0, #2
    ldr r1, .L08055114 @ =.L08055118
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08055114: .4byte .L08055118
.L08055118: @ jump table
    .4byte .L0805512C @ case 0
    .4byte .L08055158 @ case 1
    .4byte .L08055184 @ case 2
    .4byte .L080551B0 @ case 3
    .4byte .L0805512C @ case 4
.L0805512C:
    movs r2, #2
    ldrsh r0, [r6, r2]
    lsls r0, r0, #0xc
    ldrh r1, [r6, #4]
    orrs r0, r1
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08055154 @ =0x08B9CC84
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0x48
    b .L080551D4
    .align 2, 0
.L08055154: .4byte 0x08B9CC84
.L08055158:
    movs r1, #2
    ldrsh r0, [r6, r1]
    lsls r0, r0, #0xc
    ldrh r2, [r6, #4]
    orrs r0, r2
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08055180 @ =0x08B9CB84
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0x20
    b .L080551D4
    .align 2, 0
.L08055180: .4byte 0x08B9CB84
.L08055184:
    movs r1, #2
    ldrsh r0, [r6, r1]
    lsls r0, r0, #0xc
    ldrh r2, [r6, #4]
    orrs r0, r2
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L080551AC @ =0x08B9CB84
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0x40
    b .L080551D4
    .align 2, 0
.L080551AC: .4byte 0x08B9CB84
.L080551B0:
    movs r1, #2
    ldrsh r0, [r6, r1]
    lsls r0, r0, #0xc
    ldrh r2, [r6, #4]
    orrs r0, r2
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L080551FC @ =0x08B9CC84
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0x78
.L080551D4:
    movs r1, #0x68
    movs r3, #2
    bl func_08067300
    str r0, [r6, #0x14]
.L080551DE:
    movs r0, #6
    ldrsh r1, [r6, r0]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq .L080552CA
    movs r1, #0xc
    ldrsh r0, [r6, r1]
    cmp r0, #4
    bhi .L080552CA
    lsls r0, r0, #2
    ldr r1, .L08055200 @ =.L08055204
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080551FC: .4byte 0x08B9CC84
.L08055200: .4byte .L08055204
.L08055204: @ jump table
    .4byte .L08055218 @ case 0
    .4byte .L08055244 @ case 1
    .4byte .L08055270 @ case 2
    .4byte .L0805529C @ case 3
    .4byte .L08055218 @ case 4
.L08055218:
    movs r2, #8
    ldrsh r0, [r6, r2]
    lsls r0, r0, #0xc
    ldrh r1, [r6, #0xa]
    orrs r0, r1
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08055240 @ =0x08B9CC04
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0xa8
    b .L080552C0
    .align 2, 0
.L08055240: .4byte 0x08B9CC04
.L08055244:
    movs r1, #8
    ldrsh r0, [r6, r1]
    lsls r0, r0, #0xc
    ldrh r2, [r6, #0xa]
    orrs r0, r2
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L0805526C @ =0x08B9CAF8
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0xb0
    b .L080552C0
    .align 2, 0
.L0805526C: .4byte 0x08B9CAF8
.L08055270:
    movs r1, #8
    ldrsh r0, [r6, r1]
    lsls r0, r0, #0xc
    ldrh r2, [r6, #0xa]
    orrs r0, r2
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08055298 @ =0x08B9CAF8
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0xb0
    b .L080552C0
    .align 2, 0
.L08055298: .4byte 0x08B9CAF8
.L0805529C:
    movs r1, #8
    ldrsh r0, [r6, r1]
    lsls r0, r0, #0xc
    ldrh r2, [r6, #0xa]
    orrs r0, r2
    movs r2, #0xc0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L080552D8 @ =0x08B9CAF8
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    movs r0, #4
    str r0, [sp, #8]
    movs r0, #0x80
.L080552C0:
    movs r1, #0x68
    movs r3, #2
    bl func_08067300
    str r0, [r6, #0x18]
.L080552CA:
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080552D8: .4byte 0x08B9CAF8
    func_end func_08054F30

    thumb_func_start func_080552DC
func_080552DC: @ 0x080552DC
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0xe
    ldrsh r1, [r4, r0]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08055300
    ldr r0, [r4, #0x14]
    cmp r0, #0
    beq .L080552F6
    bl Proc_End
.L080552F6:
    ldr r0, [r4, #0x18]
    cmp r0, #0
    beq .L08055300
    bl Proc_End
.L08055300:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080552DC

    thumb_func_start func_08055308
func_08055308: @ 0x08055308
    push {r4, r5, lr}
    ldr r4, [sp, #0xc]
    ldr r5, [r0, #0x14]
    strh r1, [r5, #0x32]
    strh r2, [r5, #0x3a]
    ldr r5, [r0, #0x18]
    strh r3, [r5, #0x32]
    strh r4, [r5, #0x3a]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08055308

    thumb_func_start func_08055320
func_08055320: @ 0x08055320
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r7, r0, #0
    movs r4, #0
    mov sl, r4
    ldr r0, .L08055364 @ =0x08B9B29C
    movs r2, #0xc
    ldrsh r1, [r7, r2]
    lsls r2, r1, #3
    adds r2, r2, r0
    ldr r2, [r2]
    str r2, [sp, #0x10]
    lsls r1, r1, #1
    adds r1, #1
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r1, [r1]
    str r1, [sp, #0x14]
    movs r0, #0
    bl func_08050798
    movs r1, #0xc
    ldrsh r0, [r7, r1]
    cmp r0, #4
    bhi .L080553B4
    lsls r0, r0, #2
    ldr r1, .L08055368 @ =.L0805536C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08055364: .4byte 0x08B9B29C
.L08055368: .4byte .L0805536C
.L0805536C: @ jump table
    .4byte .L08055380 @ case 0
    .4byte .L08055388 @ case 1
    .4byte .L080553A0 @ case 2
    .4byte .L080553B4 @ case 3
    .4byte .L08055380 @ case 4
.L08055380:
    movs r4, #0x21
    movs r2, #0x30
    mov sl, r2
    b .L080553D4
.L08055388:
    movs r4, #0x1d
    movs r0, #0x30
    mov sl, r0
    ldr r0, .L0805539C @ =0x02017744
    ldr r0, [r0]
    movs r5, #4
    rsbs r5, r5, #0
.L08055396:
    cmp r0, #1
    bne .L080553D6
    b .L080553D4
    .align 2, 0
.L0805539C: .4byte 0x02017744
.L080553A0:
    movs r4, #3
    movs r1, #0x30
    mov sl, r1
    ldr r0, .L080553B0 @ =0x02017744
    ldr r0, [r0]
    movs r5, #0x1e
    rsbs r5, r5, #0
    b .L08055396
    .align 2, 0
.L080553B0: .4byte 0x02017744
.L080553B4:
    movs r2, #0
    ldrsh r0, [r7, r2]
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L080553C6
    movs r4, #0x27
    movs r0, #3
    mov sl, r0
.L080553C6:
    movs r2, #6
    ldrsh r0, [r7, r2]
    cmp r0, r1
    beq .L080553D4
    movs r4, #3
    movs r0, #0x2a
    mov sl, r0
.L080553D4:
    movs r5, #0
.L080553D6:
    movs r1, #1
    rsbs r1, r1, #0
    mov sb, r1
    lsls r2, r4, #1
    ldr r4, .L0805545C @ =0x0201CF78
    adds r2, r2, r4
    movs r0, #0xf
    mov r8, r0
    str r0, [sp]
    movs r6, #5
    str r6, [sp, #4]
    movs r1, #2
    ldrsh r0, [r7, r1]
    str r0, [sp, #8]
    movs r1, #4
    ldrsh r0, [r7, r1]
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x10]
    mov r1, sb
    movs r3, #0x42
    bl func_08066B2C
    mov r0, sl
    lsls r2, r0, #1
    adds r2, r2, r4
    mov r1, r8
    str r1, [sp]
    str r6, [sp, #4]
    movs r1, #8
    ldrsh r0, [r7, r1]
    str r0, [sp, #8]
    movs r1, #0xa
    ldrsh r0, [r7, r1]
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x14]
    mov r1, sb
    movs r3, #0x42
    bl func_08066B2C
    lsls r0, r5, #1
    adds r4, r4, r0
    ldr r2, .L08055460 @ =0xFFFFFA96
    adds r4, r4, r2
    ldr r2, .L08055464 @ =gBg2Tm
    movs r0, #0x20
    str r0, [sp]
    movs r0, #0x14
    str r0, [sp, #4]
    mov r0, sb
    str r0, [sp, #8]
    str r0, [sp, #0xc]
    adds r0, r4, #0
    movs r1, #0x42
    movs r3, #0x20
    bl func_08066B2C
    movs r0, #4
    bl EnableBgSync
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805545C: .4byte 0x0201CF78
.L08055460: .4byte 0xFFFFFA96
.L08055464: .4byte gBg2Tm
    func_end func_08055320

    thumb_func_start func_08055468
func_08055468: @ 0x08055468
    push {lr}
    sub sp, #0x10
    lsls r1, r1, #0x10
    lsrs r3, r1, #0x10
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    bhi .L080554B0
    lsls r0, r0, #2
    ldr r1, .L08055484 @ =.L08055488
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08055484: .4byte .L08055488
.L08055488: @ jump table
    .4byte .L0805549C @ case 0
    .4byte .L080554A6 @ case 1
    .4byte .L080554B0 @ case 2
    .4byte .L080554B0 @ case 3
    .4byte .L0805549C @ case 4
.L0805549C:
    movs r2, #0x30
    cmp r3, #0
    bne .L080554B8
    movs r2, #0x21
    b .L080554B8
.L080554A6:
    movs r2, #0x30
    cmp r3, #0
    bne .L080554B8
    movs r2, #0x1d
    b .L080554B8
.L080554B0:
    movs r2, #0x30
    cmp r3, #0
    bne .L080554B8
    movs r2, #3
.L080554B8:
    ldr r0, .L080554DC @ =0x081D85AE
    movs r1, #1
    rsbs r1, r1, #0
    lsls r2, r2, #1
    ldr r3, .L080554E0 @ =0x0201CF78
    adds r2, r2, r3
    movs r3, #0xf
    str r3, [sp]
    movs r3, #5
    str r3, [sp, #4]
    str r1, [sp, #8]
    str r1, [sp, #0xc]
    movs r3, #0x42
    bl func_08066B2C
    add sp, #0x10
    pop {r0}
    bx r0
    .align 2, 0
.L080554DC: .4byte 0x081D85AE
.L080554E0: .4byte 0x0201CF78
    func_end func_08055468

    thumb_func_start func_080554E4
func_080554E4: @ 0x080554E4
    ldr r1, .L080554EC @ =0x0203E0F0
    str r0, [r1]
    bx lr
    .align 2, 0
.L080554EC: .4byte 0x0203E0F0
    func_end func_080554E4

    thumb_func_start func_080554F0
func_080554F0: @ 0x080554F0
    ldr r0, .L080554F8 @ =0x0203E0F0
    ldr r0, [r0]
    bx lr
    .align 2, 0
.L080554F8: .4byte 0x0203E0F0
    func_end func_080554F0

    thumb_func_start func_080554FC
func_080554FC: @ 0x080554FC
    push {r4, lr}
    sub sp, #0x10
    asrs r4, r0, #3
    movs r1, #7
    ands r1, r0
    movs r0, #3
    movs r2, #0
    bl SetBgOffset
    lsls r4, r4, #1
    ldr r0, .L0805553C @ =0x0201D42C
    adds r4, r4, r0
    ldr r2, .L08055540 @ =gBg3Tm
    movs r0, #0x20
    str r0, [sp]
    movs r0, #0x16
    str r0, [sp, #4]
    subs r0, #0x17
    str r0, [sp, #8]
    str r0, [sp, #0xc]
    adds r0, r4, #0
    movs r1, #0x42
    movs r3, #0x20
    bl func_08066B2C
    movs r0, #8
    bl EnableBgSync
    add sp, #0x10
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805553C: .4byte 0x0201D42C
.L08055540: .4byte gBg3Tm
    func_end func_080554FC

    thumb_func_start func_08055544
func_08055544: @ 0x08055544
    push {lr}
    bl func_080554F0
    cmp r0, #0
    beq .L08055558
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x8f
    bl func_080675C8
.L08055558:
    pop {r0}
    bx r0
    func_end func_08055544

    thumb_func_start func_0805555C
func_0805555C: @ 0x0805555C
    push {lr}
    bl func_080554F0
    cmp r0, #0
    beq .L0805556C
    movs r0, #0x8e
    bl func_0806767C
.L0805556C:
    pop {r0}
    bx r0
    func_end func_0805555C

    thumb_func_start func_08055570
func_08055570: @ 0x08055570
    push {lr}
    bl func_0804B1AC
    bl AnimClearAll
    bl func_0804D43C
    ldr r1, .L08055590 @ =0x02017744
    str r0, [r1]
    bl func_080555AC
    movs r0, #0
    bl SetOnHBlankA
    pop {r0}
    bx r0
    .align 2, 0
.L08055590: .4byte 0x02017744
    func_end func_08055570

    thumb_func_start func_08055594
func_08055594: @ 0x08055594
    push {lr}
    bl AnimClearAll
    bl func_08055734
    ldr r0, .L080555A8 @ =func_08050A38
    bl SetMainFunc
    pop {r0}
    bx r0
    .align 2, 0
.L080555A8: .4byte func_08050A38
    func_end func_08055594

    thumb_func_start func_080555AC
func_080555AC: @ 0x080555AC
    push {lr}
    ldr r0, .L080555BC @ =0x08B9B30C
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L080555BC: .4byte 0x08B9B30C
    func_end func_080555AC

    thumb_func_start func_080555C0
func_080555C0: @ 0x080555C0
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    mov r8, r0
    movs r0, #0
    bl InitOam
    ldr r1, .L08055634 @ =0x02017744
    ldr r0, .L08055638 @ =0x0203E00C
    movs r2, #0
    ldrsh r0, [r0, r2]
    str r0, [r1]
    bl func_0804CF5C
    bl UpdateBanimFrame
    bl func_0804C1D0
    bl func_0804CD64
    bl func_0804B218
    ldr r0, .L0805563C @ =0x081DE59C
    ldr r4, .L08055640 @ =0x02022920
    adds r1, r4, #0
    movs r2, #0x20
    bl CpuFastSet
    subs r4, #0xc0
    ldr r5, .L08055644 @ =0x020165C8
    movs r6, #0x80
    lsls r6, r6, #1
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl CpuFastSet
    adds r0, r5, #0
    adds r1, r4, #0
    adds r2, r6, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    movs r3, #0x10
    bl func_08066EE8
    bl EnablePalSync
    mov r0, r8
    bl Proc_Break
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08055634: .4byte 0x02017744
.L08055638: .4byte 0x0203E00C
.L0805563C: .4byte 0x081DE59C
.L08055640: .4byte 0x02022920
.L08055644: .4byte 0x020165C8
    func_end func_080555C0

    thumb_func_start func_08055648
func_08055648: @ 0x08055648
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r5, r0, #0
    ldr r0, .L080556A8 @ =0x081DB790
    ldr r1, .L080556AC @ =0x06008000
    bl LZ77UnComp16bit
    ldr r0, .L080556B0 @ =0x081DDDFC
    ldr r6, .L080556B4 @ =0x02019784
    adds r1, r6, #0
    bl LZ77UnCompWram
    movs r1, #1
    rsbs r1, r1, #0
    ldr r2, .L080556B8 @ =0x0201D41C
    movs r0, #0x2e
    str r0, [sp]
    movs r0, #0x14
    str r0, [sp, #4]
    movs r0, #6
    str r0, [sp, #8]
    movs r4, #0
    str r4, [sp, #0xc]
    adds r0, r6, #0
    movs r3, #0x42
    bl func_08066B2C
    movs r0, #0
    bl func_080554FC
    movs r0, #8
    bl EnableBgSync
    strh r4, [r5, #0x2c]
    movs r0, #0x10
    strh r0, [r5, #0x2e]
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x8e
    bl func_080675C8
    adds r0, r5, #0
    bl Proc_Break
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080556A8: .4byte 0x081DB790
.L080556AC: .4byte 0x06008000
.L080556B0: .4byte 0x081DDDFC
.L080556B4: .4byte 0x02019784
.L080556B8: .4byte 0x0201D41C
    func_end func_08055648

    thumb_func_start func_080556BC
func_080556BC: @ 0x080556BC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r6, r0]
    movs r1, #0x2e
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L08055718 @ =0x020165C8
    ldr r4, .L0805571C @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
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
    bne .L08055710
    adds r0, r6, #0
    bl Proc_Break
.L08055710:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08055718: .4byte 0x020165C8
.L0805571C: .4byte gPal
    func_end func_080556BC

    thumb_func_start func_08055720
func_08055720: @ 0x08055720
    push {r4, lr}
    adds r4, r0, #0
    bl func_08055808
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08055720

    thumb_func_start func_08055734
func_08055734: @ 0x08055734
    push {lr}
    ldr r0, .L08055748 @ =0x08B9B33C
    movs r1, #3
    bl Proc_Start
    bl func_0805583C
    pop {r0}
    bx r0
    .align 2, 0
.L08055748: .4byte 0x08B9B33C
    func_end func_08055734

    thumb_func_start func_0805574C
func_0805574C: @ 0x0805574C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08055770 @ =gPal
    ldr r1, .L08055774 @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    bl CpuFastSet
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x10
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08055770: .4byte gPal
.L08055774: .4byte 0x020165C8
    func_end func_0805574C

    thumb_func_start func_08055778
func_08055778: @ 0x08055778
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
    movs r2, #0x10
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L080557D4 @ =0x020165C8
    ldr r4, .L080557D8 @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
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
    bne .L080557CC
    adds r0, r6, #0
    bl Proc_Break
.L080557CC:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080557D4: .4byte 0x020165C8
.L080557D8: .4byte gPal
    func_end func_08055778

    thumb_func_start func_080557DC
func_080557DC: @ 0x080557DC
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804B1D8
    bl func_0804C438
    ldr r0, .L08055800 @ =OnMain
    bl SetMainFunc
    ldr r0, .L08055804 @ =OnVBlank
    bl SetOnVBlank
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08055800: .4byte OnMain
.L08055804: .4byte OnVBlank
    func_end func_080557DC

    thumb_func_start func_08055808
func_08055808: @ 0x08055808
    push {r4, lr}
    ldr r4, .L0805582C @ =0x0201FB18
    ldr r0, .L08055830 @ =0x08B9B364
    movs r1, #3
    bl Proc_Start
    str r0, [r4]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08055834 @ =0x081D8644
    str r1, [r0, #0x48]
    ldr r1, .L08055838 @ =0x08B9B37C
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805582C: .4byte 0x0201FB18
.L08055830: .4byte 0x08B9B364
.L08055834: .4byte 0x081D8644
.L08055838: .4byte 0x08B9B37C
    func_end func_08055808

    thumb_func_start func_0805583C
func_0805583C: @ 0x0805583C
    push {lr}
    ldr r0, .L0805584C @ =0x0201FB18
    ldr r0, [r0]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L0805584C: .4byte 0x0201FB18
    func_end func_0805583C

    thumb_func_start func_08055850
func_08055850: @ 0x08055850
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    blt .L0805587C
    ldr r1, [r4, #0x4c]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    ldr r1, .L08055884 @ =0x02022920
    movs r2, #0x20
    bl CpuFastSet
    bl EnablePalSync
.L0805587C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08055884: .4byte 0x02022920
    func_end func_08055850

    thumb_func_start StartSpellAnimation
StartSpellAnimation: @ 0x08055888
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L080558B0 @ =0x0203E024
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    ldr r1, .L080558B4 @ =0x08BA13D0
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080558B0: .4byte 0x0203E024
.L080558B4: .4byte 0x08BA13D0
    func_end StartSpellAnimation

    thumb_func_start func_080558B8
func_080558B8: @ 0x080558B8
    bx lr
    func_end func_080558B8

    thumb_func_start func_080558BC
func_080558BC: @ 0x080558BC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r7, [sp, #0x18]
    ldr r1, .L080558F8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080558FC @ =0x08BA14E4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r5, [r0, #0x44]
    str r6, [r0, #0x48]
    mov r1, r8
    str r1, [r0, #0x4c]
    str r7, [r0, #0x50]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080558F8: .4byte 0x0201774C
.L080558FC: .4byte 0x08BA14E4
    func_end func_080558BC

    thumb_func_start func_08055900
func_08055900: @ 0x08055900
    ldr r1, .L0805590C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805590C: .4byte 0x0201774C
    func_end func_08055900

    thumb_func_start func_08055910
func_08055910: @ 0x08055910
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r2, r0, #0
    ldr r0, .L08055990 @ =0x0201FDAC
    ldr r0, [r0]
    ldr r4, .L08055994 @ =0x0201FDB8
    cmp r0, #0
    bne .L08055928
    ldr r4, .L08055998 @ =0x0201FEF8
.L08055928:
    ldrh r0, [r2, #0x2e]
    lsls r1, r0, #0x18
    lsrs r3, r1, #0x18
    ldr r1, [r2, #0x50]
    adds r0, r0, r1
    strh r0, [r2, #0x2e]
    movs r1, #0
    ldr r0, [r2, #0x44]
    mov r8, r0
    ldr r6, [r2, #0x48]
    mov sl, r6
    ldr r7, .L0805599C @ =0x08BDACBC
    mov ip, r7
    ldr r5, [r2, #0x4c]
    ldr r0, .L080559A0 @ =gDispIo
    mov sb, r0
.L08055948:
    mov r6, sl
    adds r0, r3, r6
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    lsls r0, r3, #1
    add r0, ip
    movs r7, #0
    ldrsh r0, [r0, r7]
    muls r0, r5, r0
    lsls r0, r0, #8
    lsrs r0, r0, #0x10
    mov r6, sb
    ldrh r6, [r6, #0x20]
    adds r0, r6, r0
    strh r0, [r4]
    adds r4, #2
    adds r1, #1
    cmp r1, #0x77
    bls .L08055948
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, r8
    bne .L08055982
    adds r0, r2, #0
    bl Proc_End
.L08055982:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08055990: .4byte 0x0201FDAC
.L08055994: .4byte 0x0201FDB8
.L08055998: .4byte 0x0201FEF8
.L0805599C: .4byte 0x08BDACBC
.L080559A0: .4byte gDispIo
    func_end func_08055910

    thumb_func_start func_080559A4
func_080559A4: @ 0x080559A4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L080559E4 @ =0x08BA1504
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r5, [r0, #0x44]
    ldr r2, .L080559E8 @ =0x0201FDB8
.L080559BE:
    lsrs r0, r1, #1
    rsbs r0, r0, #0
    strh r0, [r2]
    adds r2, #2
    adds r1, #1
    cmp r1, #0x77
    bls .L080559BE
    ldr r2, .L080559EC @ =0x0201FEF8
    movs r1, #0
.L080559D0:
    lsrs r0, r1, #1
    rsbs r0, r0, #0
    strh r0, [r2]
    adds r2, #2
    adds r1, #1
    cmp r1, #0x77
    bls .L080559D0
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080559E4: .4byte 0x08BA1504
.L080559E8: .4byte 0x0201FDB8
.L080559EC: .4byte 0x0201FEF8
    func_end func_080559A4

    thumb_func_start func_080559F0
func_080559F0: @ 0x080559F0
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r2, #0x44]
    cmp r0, r1
    bne .L08055A0A
    adds r0, r2, #0
    bl Proc_Break
.L08055A0A:
    pop {r0}
    bx r0
    func_end func_080559F0

    thumb_func_start func_08055A10
func_08055A10: @ 0x08055A10
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L08055A38 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08055A3C @ =0x08BA151C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r5, [r0, #0x44]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08055A38: .4byte 0x0201774C
.L08055A3C: .4byte 0x08BA151C
    func_end func_08055A10

    thumb_func_start func_08055A40
func_08055A40: @ 0x08055A40
    ldr r1, .L08055A4C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L08055A4C: .4byte 0x0201774C
    func_end func_08055A40

    thumb_func_start func_08055A50
func_08055A50: @ 0x08055A50
    push {r4, r5, lr}
    adds r3, r0, #0
    ldr r0, .L08055A8C @ =0x0201FDAC
    ldr r0, [r0]
    ldr r1, .L08055A90 @ =0x0201FDB8
    cmp r0, #0
    bne .L08055A60
    ldr r1, .L08055A94 @ =0x0201FEF8
.L08055A60:
    movs r2, #0
    ldr r5, [r3, #0x44]
    ldr r4, .L08055A98 @ =gDispIo
.L08055A66:
    ldrh r0, [r4, #0x20]
    strh r0, [r1]
    adds r1, #2
    adds r2, #1
    cmp r2, #0x77
    bls .L08055A66
    ldrh r0, [r3, #0x2c]
    adds r0, #1
    strh r0, [r3, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, r5
    bne .L08055A86
    adds r0, r3, #0
    bl Proc_End
.L08055A86:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08055A8C: .4byte 0x0201FDAC
.L08055A90: .4byte 0x0201FDB8
.L08055A94: .4byte 0x0201FEF8
.L08055A98: .4byte gDispIo
    func_end func_08055A50

    thumb_func_start func_08055A9C
func_08055A9C: @ 0x08055A9C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    adds r4, r1, #0
    adds r5, r2, #0
    adds r6, r3, #0
    ldr r1, .L08055AE4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08055AE8 @ =0x08BA153C
    movs r1, #3
    bl Proc_Start
    adds r7, r0, #0
    mov r0, r8
    str r0, [r7, #0x5c]
    movs r1, #0
    mov sb, r1
    movs r0, #0
    strh r0, [r7, #0x2c]
    strh r0, [r7, #0x2e]
    str r4, [r7, #0x44]
    str r5, [r7, #0x54]
    str r6, [r7, #0x58]
    mov r0, r8
    bl GetAnimAnotherSide
    bl GetAnimPosition
    cmp r0, #0
    bne .L08055AF0
    ldr r0, .L08055AEC @ =0x0000FFB8
    b .L08055AF2
    .align 2, 0
.L08055AE4: .4byte 0x0201774C
.L08055AE8: .4byte 0x08BA153C
.L08055AEC: .4byte 0x0000FFB8
.L08055AF0:
    ldr r0, .L08055B10 @ =0x0000FFF8
.L08055AF2:
    strh r0, [r7, #0x32]
    ldr r0, .L08055B14 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08055B1E
    mov r0, r8
    bl GetAnimPosition
    cmp r0, #0
    bne .L08055B18
    ldrh r0, [r7, #0x32]
    adds r0, #0x18
    b .L08055B1C
    .align 2, 0
.L08055B10: .4byte 0x0000FFF8
.L08055B14: .4byte 0x0203E02C
.L08055B18:
    ldrh r0, [r7, #0x32]
    subs r0, #0x18
.L08055B1C:
    strh r0, [r7, #0x32]
.L08055B1E:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08055A9C

    thumb_func_start func_08055B2C
func_08055B2C: @ 0x08055B2C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r0, .L08055B74 @ =0x0201FB20
    ldr r0, [r0]
    ldr r5, .L08055B78 @ =0x0201FB2C
    cmp r0, #0
    bne .L08055B3C
    ldr r5, .L08055B7C @ =0x0201FC6C
.L08055B3C:
    ldr r1, [r4, #0x54]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r2, [r0]
    ldr r1, [r4, #0x58]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r3, [r0]
    ldr r0, .L08055B80 @ =0x0000FFFF
    cmp r2, r0
    beq .L08055BA8
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    movs r2, #0
    ldr r6, [r4, #0x44]
    ldr r7, .L08055B84 @ =0x00007FFF
    mov ip, r7
.L08055B64:
    ldrh r1, [r3]
    movs r7, #0
    ldrsh r0, [r3, r7]
    cmp r0, ip
    bne .L08055B88
    movs r0, #0
    b .L08055B9A
    .align 2, 0
.L08055B74: .4byte 0x0201FB20
.L08055B78: .4byte 0x0201FB2C
.L08055B7C: .4byte 0x0201FC6C
.L08055B80: .4byte 0x0000FFFF
.L08055B84: .4byte 0x00007FFF
.L08055B88:
    ldrh r0, [r4, #0x32]
    adds r1, r1, r0
    ldrh r7, [r3, #2]
    adds r0, r0, r7
    lsls r1, r1, #0x10
    asrs r1, r1, #8
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    orrs r0, r1
.L08055B9A:
    strh r0, [r5]
    adds r3, #4
    adds r5, #2
    adds r2, #1
    cmp r2, #0x77
    bls .L08055B64
    b .L08055BB8
.L08055BA8:
    movs r2, #0
    ldr r6, [r4, #0x44]
    movs r0, #0
.L08055BAE:
    strh r0, [r5]
    adds r5, #2
    adds r2, #1
    cmp r2, #0x77
    bls .L08055BAE
.L08055BB8:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, r6
    bne .L08055BD4
    ldr r1, .L08055BDC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08055BD4:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08055BDC: .4byte 0x0201774C
    func_end func_08055B2C

    thumb_func_start func_08055BE0
func_08055BE0: @ 0x08055BE0
    ldr r0, .L08055BFC @ =0x04000004
    ldrh r1, [r0]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08055BFA
    ldr r3, .L08055C00 @ =0x04000014
    ldr r2, .L08055C04 @ =0x0201FDB4
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
.L08055BFA:
    bx lr
    .align 2, 0
.L08055BFC: .4byte 0x04000004
.L08055C00: .4byte 0x04000014
.L08055C04: .4byte 0x0201FDB4
    func_end func_08055BE0

    thumb_func_start func_08055C08
func_08055C08: @ 0x08055C08
    ldr r0, .L08055C24 @ =0x04000004
    ldrh r1, [r0]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08055C22
    ldr r3, .L08055C28 @ =0x04000016
    ldr r2, .L08055C2C @ =0x0201FDB4
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
.L08055C22:
    bx lr
    .align 2, 0
.L08055C24: .4byte 0x04000004
.L08055C28: .4byte 0x04000016
.L08055C2C: .4byte 0x0201FDB4
    func_end func_08055C08

    thumb_func_start func_08055C30
func_08055C30: @ 0x08055C30
    ldr r0, .L08055C5C @ =0x04000004
    ldrh r1, [r0]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08055C58
    ldr r3, .L08055C60 @ =0x0400001A
    ldr r2, .L08055C64 @ =0x0201FB28
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
    subs r3, #6
    ldr r2, .L08055C68 @ =0x0201FDB4
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
.L08055C58:
    bx lr
    .align 2, 0
.L08055C5C: .4byte 0x04000004
.L08055C60: .4byte 0x0400001A
.L08055C64: .4byte 0x0201FB28
.L08055C68: .4byte 0x0201FDB4
    func_end func_08055C30

    thumb_func_start func_08055C6C
func_08055C6C: @ 0x08055C6C
    ldr r0, .L08055C98 @ =0x04000004
    ldrh r1, [r0]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08055C94
    ldr r3, .L08055C9C @ =0x0400001A
    ldr r2, .L08055CA0 @ =0x0201FB28
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
    subs r3, #4
    ldr r2, .L08055CA4 @ =0x0201FDB4
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
.L08055C94:
    bx lr
    .align 2, 0
.L08055C98: .4byte 0x04000004
.L08055C9C: .4byte 0x0400001A
.L08055CA0: .4byte 0x0201FB28
.L08055CA4: .4byte 0x0201FDB4
    func_end func_08055C6C

    thumb_func_start func_08055CA8
func_08055CA8: @ 0x08055CA8
    ldr r0, .L08055CC4 @ =0x04000004
    ldrh r1, [r0]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08055CC2
    ldr r3, .L08055CC8 @ =0x0400001A
    ldr r2, .L08055CCC @ =0x0201FB28
    ldr r0, [r2]
    ldrh r1, [r0]
    strh r1, [r3]
    adds r0, #2
    str r0, [r2]
.L08055CC2:
    bx lr
    .align 2, 0
.L08055CC4: .4byte 0x04000004
.L08055CC8: .4byte 0x0400001A
.L08055CCC: .4byte 0x0201FB28
    func_end func_08055CA8

    thumb_func_start func_08055CD0
func_08055CD0: @ 0x08055CD0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    str r0, [sp]
    str r1, [sp, #4]
    adds r4, r3, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    ldr r1, .L08055D6C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r6, .L08055D70 @ =0x0201FDB8
    ldr r7, .L08055D74 @ =0x0201FEF8
    ldr r0, .L08055D78 @ =0x0201FDAC
    mov sl, r0
    cmp r4, #2
    bne .L08055D32
    ldr r1, .L08055D7C @ =0x0201FB2C
    movs r0, #0
    adds r5, r1, #0
    ldr r3, .L08055D80 @ =0x0201FB20
    mov ip, r3
    ldr r3, .L08055D84 @ =0x0201FB24
    mov r8, r3
    ldr r3, .L08055D88 @ =0x0201FB28
    mov sb, r3
.L08055D0C:
    strh r2, [r1]
    adds r1, #2
    adds r0, #1
    cmp r0, #0x9f
    bls .L08055D0C
    ldr r1, .L08055D8C @ =0x0201FC6C
    movs r0, #0
.L08055D1A:
    strh r2, [r1]
    adds r1, #2
    adds r0, #1
    cmp r0, #0x9f
    bls .L08055D1A
    movs r0, #0
    mov r1, ip
    str r0, [r1]
    mov r3, r8
    str r5, [r3]
    mov r0, sb
    str r5, [r0]
.L08055D32:
    adds r1, r6, #0
    movs r0, #0
.L08055D36:
    strh r2, [r1]
    adds r1, #2
    adds r0, #1
    cmp r0, #0x9f
    bls .L08055D36
    adds r1, r7, #0
    movs r0, #0
.L08055D44:
    strh r2, [r1]
    adds r1, #2
    adds r0, #1
    cmp r0, #0x9f
    bls .L08055D44
    movs r0, #0
    mov r1, sl
    str r0, [r1]
    ldr r3, .L08055D90 @ =0x0201FDB0
    str r6, [r3]
    ldr r0, .L08055D94 @ =0x0201FDB4
    str r6, [r0]
    cmp r4, #1
    beq .L08055DB8
    cmp r4, #1
    blo .L08055D98
    cmp r4, #2
    beq .L08055DD8
    b .L08055DE6
    .align 2, 0
.L08055D6C: .4byte 0x0201774C
.L08055D70: .4byte 0x0201FDB8
.L08055D74: .4byte 0x0201FEF8
.L08055D78: .4byte 0x0201FDAC
.L08055D7C: .4byte 0x0201FB2C
.L08055D80: .4byte 0x0201FB20
.L08055D84: .4byte 0x0201FB24
.L08055D88: .4byte 0x0201FB28
.L08055D8C: .4byte 0x0201FC6C
.L08055D90: .4byte 0x0201FDB0
.L08055D94: .4byte 0x0201FDB4
.L08055D98:
    bl func_08064AE0
    cmp r0, #0
    bne .L08055DAC
    ldr r0, .L08055DA8 @ =func_08055BE0
    bl SetOnHBlankA
    b .L08055DE6
    .align 2, 0
.L08055DA8: .4byte func_08055BE0
.L08055DAC:
    ldr r0, .L08055DB4 @ =func_08055C30
    bl SetOnHBlankA
    b .L08055DE6
    .align 2, 0
.L08055DB4: .4byte func_08055C30
.L08055DB8:
    bl func_08064AE0
    cmp r0, #0
    bne .L08055DCC
    ldr r0, .L08055DC8 @ =func_08055C08
    bl SetOnHBlankA
    b .L08055DE6
    .align 2, 0
.L08055DC8: .4byte func_08055C08
.L08055DCC:
    ldr r0, .L08055DD4 @ =func_08055C6C
    bl SetOnHBlankA
    b .L08055DE6
    .align 2, 0
.L08055DD4: .4byte func_08055C6C
.L08055DD8:
    bl func_08064AE0
    cmp r0, #0
    bne .L08055DE6
    ldr r0, .L08055E0C @ =func_08055C08
    bl SetOnHBlankA
.L08055DE6:
    ldr r0, .L08055E10 @ =0x08BA1554
    movs r1, #0
    bl Proc_Start
    ldr r1, [sp]
    str r1, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    ldr r3, [sp, #4]
    str r3, [r0, #0x44]
    str r4, [r0, #0x48]
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08055E0C: .4byte func_08055C08
.L08055E10: .4byte 0x08BA1554
    func_end func_08055CD0

    thumb_func_start func_08055E14
func_08055E14: @ 0x08055E14
    push {lr}
    adds r3, r2, #0
    movs r2, #0
    bl func_08055CD0
    pop {r0}
    bx r0
    func_end func_08055E14

    thumb_func_start func_08055E24
func_08055E24: @ 0x08055E24
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08055E24

    thumb_func_start func_08055E30
func_08055E30: @ 0x08055E30
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08055E5C @ =gBmSt
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r3, .L08055E60 @ =0x0201FB24
    ldr r2, .L08055E64 @ =0x0201FDB0
    cmp r0, #0
    beq .L08055EA8
    ldr r0, [r4, #0x48]
    cmp r0, #2
    bne .L08055E78
    ldr r1, .L08055E68 @ =0x0201FB20
    ldr r0, [r1]
    cmp r0, #1
    bne .L08055E70
    movs r0, #0
    str r0, [r1]
    ldr r0, .L08055E6C @ =0x0201FB2C
    b .L08055E76
    .align 2, 0
.L08055E5C: .4byte gBmSt
.L08055E60: .4byte 0x0201FB24
.L08055E64: .4byte 0x0201FDB0
.L08055E68: .4byte 0x0201FB20
.L08055E6C: .4byte 0x0201FB2C
.L08055E70:
    movs r0, #1
    str r0, [r1]
    ldr r0, .L08055E8C @ =0x0201FC6C
.L08055E76:
    str r0, [r3]
.L08055E78:
    ldr r1, .L08055E90 @ =0x0201FDAC
    ldr r0, [r1]
    cmp r0, #1
    bne .L08055E9C
    movs r0, #0
    str r0, [r1]
    ldr r1, .L08055E94 @ =0x0201FDB0
    ldr r0, .L08055E98 @ =0x0201FDB8
    b .L08055EA4
    .align 2, 0
.L08055E8C: .4byte 0x0201FC6C
.L08055E90: .4byte 0x0201FDAC
.L08055E94: .4byte 0x0201FDB0
.L08055E98: .4byte 0x0201FDB8
.L08055E9C:
    movs r0, #1
    str r0, [r1]
    ldr r1, .L08055EDC @ =0x0201FDB0
    ldr r0, .L08055EE0 @ =0x0201FEF8
.L08055EA4:
    str r0, [r1]
    adds r2, r1, #0
.L08055EA8:
    ldr r1, .L08055EE4 @ =0x0201FB28
    ldr r0, [r3]
    str r0, [r1]
    ldr r1, .L08055EE8 @ =0x0201FDB4
    ldr r0, [r2]
    str r0, [r1]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r4, #0x44]
    cmp r0, r1
    bne .L08055EFC
    ldr r0, .L08055EEC @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    bl func_08064AE0
    cmp r0, #0
    bne .L08055EF0
    movs r0, #0
    bl SetOnHBlankA
    b .L08055EF6
    .align 2, 0
.L08055EDC: .4byte 0x0201FDB0
.L08055EE0: .4byte 0x0201FEF8
.L08055EE4: .4byte 0x0201FB28
.L08055EE8: .4byte 0x0201FDB4
.L08055EEC: .4byte 0x0201774C
.L08055EF0:
    ldr r0, .L08055F04 @ =func_08055CA8
    bl SetOnHBlankA
.L08055EF6:
    adds r0, r4, #0
    bl Proc_Break
.L08055EFC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08055F04: .4byte func_08055CA8
    func_end func_08055E30

    thumb_func_start func_08055F08
func_08055F08: @ 0x08055F08
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r7, [sp, #0x18]
    ldr r1, .L08055F48 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08055F4C @ =0x08BA1574
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r4, [r0, #0x2e]
    adds r4, r4, r6
    strh r4, [r0, #0x30]
    mov r1, r8
    str r1, [r0, #0x44]
    str r7, [r0, #0x48]
    ldr r1, [sp, #0x1c]
    str r1, [r0, #0x4c]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08055F48: .4byte 0x0201774C
.L08055F4C: .4byte 0x08BA1574
    func_end func_08055F08

    thumb_func_start func_08055F50
func_08055F50: @ 0x08055F50
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    blt .L08056044
    ldr r1, [r5, #0x44]
    ldr r2, [r5, #0x48]
    movs r6, #0x2c
    ldrsh r3, [r5, r6]
    movs r0, #0x2e
    ldrsh r4, [r5, r0]
    subs r3, r3, r4
    movs r6, #0x30
    ldrsh r0, [r5, r6]
    subs r0, r0, r4
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    adds r6, r0, #0
    ldr r0, [r5, #0x4c]
    cmp r0, #1
    beq .L08055FC4
    cmp r0, #1
    bgt .L08055F96
    cmp r0, #0
    beq .L08055F9C
    b .L0805602A
.L08055F96:
    cmp r0, #2
    beq .L08055FEC
    b .L0805602A
.L08055F9C:
    ldr r3, .L08055FC0 @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    b .L08056026
    .align 2, 0
.L08055FC0: .4byte gDispIo
.L08055FC4:
    ldr r3, .L08055FE8 @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    strb r7, [r0]
    adds r0, #1
    strb r6, [r0]
    b .L0805602A
    .align 2, 0
.L08055FE8: .4byte gDispIo
.L08055FEC:
    movs r2, #0x2c
    ldrsh r3, [r5, r2]
    movs r0, #0x2e
    ldrsh r1, [r5, r0]
    subs r3, r3, r1
    movs r2, #0x30
    ldrsh r0, [r5, r2]
    subs r0, r0, r1
    str r0, [sp]
    movs r0, #0
    movs r1, #8
    movs r2, #0x10
    bl Interpolate
    ldr r4, .L0805604C @ =gDispIo
    adds r3, r4, #0
    adds r3, #0x3c
    movs r1, #0x3f
    ldrb r2, [r3]
    ands r1, r2
    movs r2, #0x40
    orrs r1, r2
    strb r1, [r3]
    adds r1, r4, #0
    adds r1, #0x44
    strb r6, [r1]
    adds r1, #1
    strb r0, [r1]
    adds r0, r4, #0
.L08056026:
    adds r0, #0x46
    strb r7, [r0]
.L0805602A:
    movs r6, #0x2c
    ldrsh r1, [r5, r6]
    movs r2, #0x30
    ldrsh r0, [r5, r2]
    cmp r1, r0
    blt .L08056044
    ldr r1, .L08056050 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L08056044:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805604C: .4byte gDispIo
.L08056050: .4byte 0x0201774C
    func_end func_08055F50

    thumb_func_start func_08056054
func_08056054: @ 0x08056054
    push {r4, r5, r6, lr}
    mov r6, sl
    mov r5, sb
    mov r4, r8
    push {r4, r5, r6}
    mov r8, r0
    mov sb, r1
    mov sl, r2
    adds r5, r3, #0
    ldr r6, [sp, #0x1c]
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    lsls r6, r6, #0x10
    lsrs r6, r6, #0x10
    ldr r1, .L080560AC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080560B0 @ =0x08BA158C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    mov r0, r8
    str r0, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    strh r0, [r4, #0x2e]
    mov r0, sb
    str r0, [r4, #0x44]
    mov r0, sl
    str r0, [r4, #0x54]
    mov r0, r8
    bl GetAnimAnotherSide
    strh r5, [r4, #0x32]
    strh r6, [r4, #0x3a]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080560AC: .4byte 0x0201774C
.L080560B0: .4byte 0x08BA158C
    func_end func_08056054

    thumb_func_start func_080560B4
func_080560B4: @ 0x080560B4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r5, r0, #0
    ldr r0, .L08056134 @ =0x0201FB20
    ldr r0, [r0]
    ldr r1, .L08056138 @ =0x0201FB2C
    mov r8, r1
    cmp r0, #0
    bne .L080560CE
    ldr r2, .L0805613C @ =0x0201FC6C
    mov r8, r2
.L080560CE:
    ldr r4, [r5, #0x54]
    movs r7, #0x2e
    ldrsh r0, [r5, r7]
    lsls r0, r0, #1
    adds r0, r0, r4
    ldrh r7, [r0]
    adds r0, r7, #0
    bl func_08013450
    adds r6, r0, #0
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    lsls r0, r0, #1
    adds r0, r0, r4
    ldr r1, .L08056140 @ =0x0000FFFF
    ldrh r0, [r0, #2]
    cmp r0, r1
    beq .L080560F8
    ldrh r0, [r5, #0x2e]
    adds r0, #1
    strh r0, [r5, #0x2e]
.L080560F8:
    ldrh r1, [r5, #0x3a]
    subs r0, r1, r7
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    cmp r0, #0
    bge .L08056106
    movs r2, #0
.L08056106:
    adds r0, r7, r1
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xa0
    ble .L08056114
    movs r1, #0xa0
.L08056114:
    movs r3, #0
    lsls r0, r2, #0x10
    ldr r2, [r5, #0x44]
    mov ip, r2
    asrs r0, r0, #0x10
    mov sb, r0
    lsls r0, r1, #0x10
    asrs r4, r0, #0x10
.L08056124:
    cmp sb, r3
    bhi .L0805612C
    cmp r4, r3
    bhs .L08056144
.L0805612C:
    movs r0, #0
    mov r7, r8
    strh r0, [r7]
    b .L08056174
    .align 2, 0
.L08056134: .4byte 0x0201FB20
.L08056138: .4byte 0x0201FB2C
.L0805613C: .4byte 0x0201FC6C
.L08056140: .4byte 0x0000FFFF
.L08056144:
    ldrh r2, [r5, #0x32]
    ldrh r1, [r6]
    adds r0, r2, r1
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r0, #0
    bge .L08056154
    movs r1, #0
.L08056154:
    ldrh r7, [r6, #2]
    adds r0, r2, r7
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf0
    ble .L08056164
    movs r2, #0xf0
.L08056164:
    lsls r1, r1, #0x10
    asrs r1, r1, #8
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    orrs r0, r1
    mov r1, r8
    strh r0, [r1]
    adds r6, #4
.L08056174:
    movs r2, #2
    add r8, r2
    adds r3, #1
    cmp r3, #0x9f
    bls .L08056124
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r3, #0
    strh r0, [r5, #0x2c]
    movs r4, #0x2c
    ldrsh r0, [r5, r4]
    cmp r0, ip
    bne .L080561BA
    ldr r1, .L080561C8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r2, .L080561CC @ =gDispIo
    adds r1, r2, #0
    adds r1, #0x3c
    movs r0, #0x3f
    ldrb r7, [r1]
    ands r0, r7
    strb r0, [r1]
    adds r1, #8
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r2, #0
    adds r0, #0x45
    strb r3, [r0]
    adds r0, #1
    strb r3, [r0]
    adds r0, r5, #0
    bl Proc_Break
.L080561BA:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080561C8: .4byte 0x0201774C
.L080561CC: .4byte gDispIo
    func_end func_080560B4

    thumb_func_start func_080561D0
func_080561D0: @ 0x080561D0
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    ldr r1, .L0805620C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08056210 @ =0x08BA15A4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r6, [r4, #0x5c]
    adds r0, r5, #0
    movs r1, #0
    bl func_0804E73C
    str r0, [r4, #0x60]
    movs r0, #0
    strh r0, [r4, #0x2c]
    mov r0, r8
    strh r0, [r4, #0x2e]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805620C: .4byte 0x0201774C
.L08056210: .4byte 0x08BA15A4
    func_end func_080561D0

    thumb_func_start func_08056214
func_08056214: @ 0x08056214
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov r8, r0
    ldr r5, .L080562A4 @ =0x02017760
    ldrh r1, [r5]
    ldrh r2, [r5, #2]
    movs r0, #2
    bl SetBgOffset
    ldr r4, .L080562A8 @ =0x02000038
    ldrh r0, [r5]
    ldrh r2, [r4]
    adds r1, r0, r2
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldrh r3, [r5, #2]
    ldrh r0, [r4, #2]
    adds r2, r3, r0
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
    ldrh r2, [r4, #2]
    adds r1, r3, r2
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_0804C4B0
    ldrh r3, [r5]
    ldrh r1, [r4]
    adds r0, r3, r1
    rsbs r0, r0, #0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r2, [r5, #2]
    ldrh r4, [r4, #2]
    adds r1, r2, r4
    rsbs r1, r1, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    bl func_0804CDFC
    bl func_08064AE0
    cmp r0, #0
    beq .L08056292
    ldrh r1, [r5]
    ldrh r2, [r5, #2]
    movs r0, #3
    bl SetBgOffset
.L08056292:
    bl func_08064AE0
    cmp r0, #0
    beq .L080562B0
    ldr r3, .L080562AC @ =0x02000028
    ldrh r4, [r3]
    ldrh r1, [r5]
    subs r0, r4, r1
    b .L080562B8
    .align 2, 0
.L080562A4: .4byte 0x02017760
.L080562A8: .4byte 0x02000038
.L080562AC: .4byte 0x02000028
.L080562B0:
    ldr r3, .L080563C8 @ =0x02000028
    ldrh r1, [r3]
    ldrh r2, [r5]
    adds r0, r1, r2
.L080562B8:
    ldr r2, .L080563CC @ =0x0201FB00
    ldr r1, [r2]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    ldr r1, .L080563D0 @ =0x0200002C
    ldrh r4, [r1]
    ldrh r5, [r5, #2]
    subs r0, r4, r5
    lsls r0, r0, #0x10
    lsrs r6, r0, #0x10
    mov sb, r3
    mov sl, r1
    ldr r2, .L080563D4 @ =0x02017760
    mov r1, sb
    ldrh r1, [r1, #2]
    ldrh r3, [r2]
    adds r0, r1, r3
    ldr r4, .L080563CC @ =0x0201FB00
    ldr r1, [r4]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    mov r1, sl
    ldrh r1, [r1, #2]
    ldrh r2, [r2, #2]
    subs r0, r1, r2
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r1, r7, #0x10
    asrs r1, r1, #0x10
    lsls r2, r6, #0x10
    asrs r2, r2, #0x10
    movs r0, #0
    bl func_080507D8
    lsls r1, r5, #0x10
    asrs r1, r1, #0x10
    lsls r2, r4, #0x10
    asrs r2, r2, #0x10
    movs r0, #1
    bl func_080507D8
    mov r2, r8
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L080563BA
    ldr r1, .L080563D8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r4, .L080563DC @ =0x02000038
    ldrh r1, [r4]
    ldrh r2, [r4, #2]
    movs r0, #0
    bl SetBgOffset
    ldrh r1, [r4]
    rsbs r0, r1, #0
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldrh r2, [r4, #2]
    rsbs r1, r2, #0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    bl func_0804C4B0
    ldrh r3, [r4]
    rsbs r0, r3, #0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r4, [r4, #2]
    rsbs r1, r4, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    bl func_0804CDFC
    bl func_08064AE0
    cmp r0, #0
    beq .L08056378
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
.L08056378:
    ldr r4, .L080563CC @ =0x0201FB00
    ldr r0, [r4]
    mov r2, sb
    ldrh r2, [r2]
    subs r1, r2, r0
    mov r3, sb
    ldrh r3, [r3, #2]
    subs r0, r3, r0
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    mov r0, sl
    ldrh r4, [r0, #2]
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    movs r3, #0
    ldrsh r2, [r0, r3]
    movs r0, #0
    bl func_080507D8
    lsls r1, r5, #0x10
    asrs r1, r1, #0x10
    lsls r2, r4, #0x10
    asrs r2, r2, #0x10
    movs r0, #1
    bl func_080507D8
    mov r4, r8
    ldr r0, [r4, #0x60]
    bl Proc_End
    mov r0, r8
    bl Proc_Break
.L080563BA:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080563C8: .4byte 0x02000028
.L080563CC: .4byte 0x0201FB00
.L080563D0: .4byte 0x0200002C
.L080563D4: .4byte 0x02017760
.L080563D8: .4byte 0x0201774C
.L080563DC: .4byte 0x02000038
    func_end func_08056214

    thumb_func_start func_080563E0
func_080563E0: @ 0x080563E0
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056400 @ =0x08BA15BC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08056400: .4byte 0x08BA15BC
    func_end func_080563E0

    thumb_func_start func_08056404
func_08056404: @ 0x08056404
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r4, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r6, #0
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805642A
    movs r0, #9
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    b .L08056452
.L0805642A:
    cmp r0, #0xa
    bne .L08056452
    adds r0, r4, #0
    bl GetAnimNextRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L08056448
    movs r0, #2
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
.L08056448:
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L08056452:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08056404

    thumb_func_start func_08056458
func_08056458: @ 0x08056458
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L0805648C @ =0x08BA15D4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805648C: .4byte 0x08BA15D4
    func_end func_08056458

    thumb_func_start func_08056490
func_08056490: @ 0x08056490
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805650E
    ldr r0, [r5, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    ldr r0, [r5, #0x5c]
    bl func_0805652C
    ldrh r0, [r5, #0x2c]
    cmp r0, #1
    bne .L0805650E
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r4, r5, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r6, #0
    bl StartBattleAnimHitEffectsDefault
    adds r0, r6, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    beq .L08056500
    ldr r0, [r5, #0x5c]
    bl func_08054764
    cmp r0, #1
    bne .L080564F4
    adds r0, r6, #0
    bl NewEfxPierceCritical
    b .L08056500
.L080564F4:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08056524
    ldr r0, [r5, #0x5c]
    bl NewEfxNormalEffect
.L08056500:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08056524
    adds r0, r6, #0
    bl func_08067D14
    b .L08056524
.L0805650E:
    movs r1, #0x2c
    ldrsh r0, [r5, r1]
    cmp r0, #0x46
    beq .L08056524
    cmp r0, #0x50
    bne .L08056524
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L08056524:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08056490

    thumb_func_start func_0805652C
func_0805652C: @ 0x0805652C
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L08056570 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08056574 @ =0x08BA15EC
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r4, [r6, #0x5c]
    movs r0, #0
    strh r0, [r6, #0x2c]
    ldr r1, .L08056578 @ =0x08BA51E8
    ldr r2, .L0805657C @ =0x08BA4E50
    ldr r3, .L08056580 @ =0x08BA5244
    ldr r0, .L08056584 @ =0x08BA4EAC
    str r0, [sp]
    adds r0, r4, #0
    bl func_0805041C
    adds r5, r0, #0
    str r5, [r6, #0x60]
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08056588
    ldrh r0, [r5, #2]
    adds r0, #0x48
    b .L0805658C
    .align 2, 0
.L08056570: .4byte 0x0201774C
.L08056574: .4byte 0x08BA15EC
.L08056578: .4byte 0x08BA51E8
.L0805657C: .4byte 0x08BA4E50
.L08056580: .4byte 0x08BA5244
.L08056584: .4byte 0x08BA4EAC
.L08056588:
    ldrh r0, [r5, #2]
    subs r0, #0x48
.L0805658C:
    strh r0, [r5, #2]
    ldr r0, .L0805659C @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L080565A0
    movs r0, #0x23
    b .L080565A2
    .align 2, 0
.L0805659C: .4byte 0x0203E02C
.L080565A0:
    movs r0, #0xa
.L080565A2:
    strh r0, [r6, #0x2e]
    ldr r0, [r6, #0x5c]
    ldr r1, [r6, #0x60]
    bl func_08056714
    str r0, [r6, #0x64]
    ldr r0, .L080565C8 @ =0x081E9D84
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L080565CC @ =0x081E9984
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080565C8: .4byte 0x081E9D84
.L080565CC: .4byte 0x081E9984
    func_end func_0805652C

    thumb_func_start func_080565D0
func_080565D0: @ 0x080565D0
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L08056622
    ldr r1, .L08056610 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r0, .L08056614 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0805661C
    ldr r0, .L08056618 @ =0x02017758
    movs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x64]
    bl Proc_End
    adds r0, r4, #0
    bl Proc_End
    b .L08056622
    .align 2, 0
.L08056610: .4byte 0x0201774C
.L08056614: .4byte 0x0203E02C
.L08056618: .4byte 0x02017758
.L0805661C:
    adds r0, r4, #0
    bl Proc_Break
.L08056622:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080565D0

    thumb_func_start func_08056628
func_08056628: @ 0x08056628
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805664C @ =0x02017754
    movs r0, #0
    str r0, [r1]
    ldr r0, [r4, #0x64]
    bl Proc_End
    ldr r0, [r4, #0x5c]
    bl func_08056650
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805664C: .4byte 0x02017754
    func_end func_08056628

    thumb_func_start func_08056650
func_08056650: @ 0x08056650
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L08056690 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08056694 @ =0x08BA160C
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r4, [r6, #0x5c]
    movs r0, #0
    strh r0, [r6, #0x2c]
    ldr r3, .L08056698 @ =0x08BA5264
    ldr r2, .L0805669C @ =0x08BA4ECC
    str r2, [sp]
    adds r0, r4, #0
    adds r1, r3, #0
    bl func_0805041C
    adds r5, r0, #0
    str r5, [r6, #0x60]
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080566A0
    ldrh r0, [r5, #2]
    adds r0, #0x48
    b .L080566A4
    .align 2, 0
.L08056690: .4byte 0x0201774C
.L08056694: .4byte 0x08BA160C
.L08056698: .4byte 0x08BA5264
.L0805669C: .4byte 0x08BA4ECC
.L080566A0:
    ldrh r0, [r5, #2]
    subs r0, #0x48
.L080566A4:
    strh r0, [r5, #2]
    ldr r0, .L080566CC @ =0x081E9D84
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L080566D0 @ =0x081E9984
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    ldr r0, [r6, #0x5c]
    ldr r1, [r6, #0x60]
    bl func_08056714
    str r0, [r6, #0x64]
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080566CC: .4byte 0x081E9D84
.L080566D0: .4byte 0x081E9984
    func_end func_08056650

    thumb_func_start func_080566D4
func_080566D4: @ 0x080566D4
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x11
    bne .L08056706
    ldr r1, .L0805670C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r1, .L08056710 @ =0x02017758
    movs r0, #1
    str r0, [r1]
    ldr r0, [r4, #0x64]
    bl Proc_End
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08056706:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805670C: .4byte 0x0201774C
.L08056710: .4byte 0x02017758
    func_end func_080566D4

    thumb_func_start func_08056714
func_08056714: @ 0x08056714
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r1, .L08056750 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08056754 @ =0x08BA1624
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r6, [r4, #0x5c]
    str r5, [r4, #0x60]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #1
    strh r0, [r4, #0x2e]
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r6, r0]
    movs r0, #0xcd
    movs r3, #1
    bl func_080681E4
    adds r0, r4, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08056750: .4byte 0x0201774C
.L08056754: .4byte 0x08BA1624
    func_end func_08056714

    thumb_func_start func_08056758
func_08056758: @ 0x08056758
    ldr r1, .L08056764 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L08056764: .4byte 0x0201774C
    func_end func_08056758

    thumb_func_start func_08056768
func_08056768: @ 0x08056768
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    bne .L080567AA
    ldr r0, [r4, #0x60]
    bl func_0806814C
    adds r2, r0, #0
    ldr r0, [r4, #0x60]
    ldrh r0, [r0, #2]
    adds r2, r0, r2
    movs r1, #0x80
    lsls r1, r1, #1
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    movs r0, #0xcd
    movs r3, #1
    bl func_080681E4
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldrh r1, [r4, #0x2e]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    cmp r0, #8
    bgt .L080567AA
    adds r0, r1, #1
    strh r0, [r4, #0x2e]
.L080567AA:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08056768

    thumb_func_start func_080567B0
func_080567B0: @ 0x080567B0
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L080567E4 @ =0x08BA1644
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080567E4: .4byte 0x08BA1644
    func_end func_080567B0

    thumb_func_start func_080567E8
func_080567E8: @ 0x080567E8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    bl func_08050778
    adds r4, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805687E
    ldr r0, [r5, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    ldr r0, [r5, #0x5c]
    bl func_080568A0
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r5, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xcc
    movs r3, #1
    bl func_080681E4
    ldrh r0, [r5, #0x2c]
    cmp r0, #1
    bne .L0805687E
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r4, r5, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r6, #0
    bl StartBattleAnimHitEffectsDefault
    adds r0, r6, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    beq .L08056870
    ldr r0, [r5, #0x5c]
    bl func_08054764
    cmp r0, #1
    bne .L08056864
    adds r0, r6, #0
    bl NewEfxPierceCritical
    b .L08056870
.L08056864:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805689A
    ldr r0, [r5, #0x5c]
    bl NewEfxNormalEffect
.L08056870:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805689A
    adds r0, r6, #0
    bl func_08067D14
    b .L0805689A
.L0805687E:
    movs r3, #0x2c
    ldrsh r1, [r5, r3]
    adds r0, r4, #0
    adds r0, #9
    cmp r1, r0
    beq .L0805689A
    adds r0, #1
    cmp r1, r0
    bne .L0805689A
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L0805689A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080567E8

    thumb_func_start func_080568A0
func_080568A0: @ 0x080568A0
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L080568E8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080568EC @ =0x08BA165C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r1, .L080568F0 @ =0x08BA5390
    ldr r2, .L080568F4 @ =0x08BA5304
    ldr r3, .L080568F8 @ =0x08BA53A0
    ldr r0, .L080568FC @ =0x08BA5314
    str r0, [sp]
    adds r0, r5, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L08056900 @ =0x081E9D84
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056904 @ =0x081E9DA4
    movs r1, #0x60
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080568E8: .4byte 0x0201774C
.L080568EC: .4byte 0x08BA165C
.L080568F0: .4byte 0x08BA5390
.L080568F4: .4byte 0x08BA5304
.L080568F8: .4byte 0x08BA53A0
.L080568FC: .4byte 0x08BA5314
.L08056900: .4byte 0x081E9D84
.L08056904: .4byte 0x081E9DA4
    func_end func_080568A0

    thumb_func_start func_08056908
func_08056908: @ 0x08056908
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #4
    bne .L0805692E
    ldr r0, .L08056934 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0805692E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08056934: .4byte 0x0201774C
    func_end func_08056908

    thumb_func_start func_08056938
func_08056938: @ 0x08056938
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056988 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #0
    bl func_08056DD4
    ldr r0, .L0805698C @ =0x081EA010
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056990 @ =0x081E9DE0
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056988: .4byte 0x08BA1674
.L0805698C: .4byte 0x081EA010
.L08056990: .4byte 0x081E9DE0
    func_end func_08056938

    thumb_func_start func_08056994
func_08056994: @ 0x08056994
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L080569E4 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L080569E8 @ =0x081EA24C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L080569EC @ =0x081EA030
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080569E4: .4byte 0x08BA1674
.L080569E8: .4byte 0x081EA24C
.L080569EC: .4byte 0x081EA030
    func_end func_08056994

    thumb_func_start func_080569F0
func_080569F0: @ 0x080569F0
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056A40 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #0
    bl func_08056DD4
    ldr r0, .L08056A44 @ =0x081EA484
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056A48 @ =0x081EA26C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056A40: .4byte 0x08BA1674
.L08056A44: .4byte 0x081EA484
.L08056A48: .4byte 0x081EA26C
    func_end func_080569F0

    thumb_func_start func_08056A4C
func_08056A4C: @ 0x08056A4C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056A9C @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056AA0 @ =0x081EA6C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056AA4 @ =0x081EA4A4
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056A9C: .4byte 0x08BA1674
.L08056AA0: .4byte 0x081EA6C0
.L08056AA4: .4byte 0x081EA4A4
    func_end func_08056A4C

    thumb_func_start func_08056AA8
func_08056AA8: @ 0x08056AA8
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056AF8 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056AFC @ =0x081EA90C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056B00 @ =0x081EA6E0
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056AF8: .4byte 0x08BA1674
.L08056AFC: .4byte 0x081EA90C
.L08056B00: .4byte 0x081EA6E0
    func_end func_08056AA8

    thumb_func_start func_08056B04
func_08056B04: @ 0x08056B04
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056B54 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056B58 @ =0x081EAB74
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056B5C @ =0x081EA92C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056B54: .4byte 0x08BA1674
.L08056B58: .4byte 0x081EAB74
.L08056B5C: .4byte 0x081EA92C
    func_end func_08056B04

    thumb_func_start func_08056B60
func_08056B60: @ 0x08056B60
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056BB0 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056BB4 @ =0x081EADCC
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056BB8 @ =0x081EAB94
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056BB0: .4byte 0x08BA1674
.L08056BB4: .4byte 0x081EADCC
.L08056BB8: .4byte 0x081EAB94
    func_end func_08056B60

    thumb_func_start func_08056BBC
func_08056BBC: @ 0x08056BBC
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056C0C @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056C10 @ =0x081EB050
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056C14 @ =0x081EADEC
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056C0C: .4byte 0x08BA1674
.L08056C10: .4byte 0x081EB050
.L08056C14: .4byte 0x081EADEC
    func_end func_08056BBC

    thumb_func_start func_08056C18
func_08056C18: @ 0x08056C18
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056C68 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056C6C @ =0x081EB2E0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056C70 @ =0x081EB070
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056C68: .4byte 0x08BA1674
.L08056C6C: .4byte 0x081EB2E0
.L08056C70: .4byte 0x081EB070
    func_end func_08056C18

    thumb_func_start func_08056C74
func_08056C74: @ 0x08056C74
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056CC4 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056CC8 @ =0x081EB530
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056CCC @ =0x081EB300
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056CC4: .4byte 0x08BA1674
.L08056CC8: .4byte 0x081EB530
.L08056CCC: .4byte 0x081EB300
    func_end func_08056C74

    thumb_func_start func_08056CD0
func_08056CD0: @ 0x08056CD0
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056D20 @ =0x08BA1674
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    adds r0, r5, #0
    movs r1, #1
    bl func_08056DD4
    ldr r0, .L08056D24 @ =0x081EB76C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08056D28 @ =0x081EB550
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056D20: .4byte 0x08BA1674
.L08056D24: .4byte 0x081EB76C
.L08056D28: .4byte 0x081EB550
    func_end func_08056CD0

    thumb_func_start func_08056D2C
func_08056D2C: @ 0x08056D2C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08056DB6
    ldr r0, [r5, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r5, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xca
    movs r3, #1
    bl func_080681E4
    ldrh r0, [r5, #0x2c]
    cmp r0, #1
    bne .L08056DB6
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r4, r5, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r6, #0
    bl StartBattleAnimHitEffectsDefault
    adds r0, r6, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    beq .L08056DA8
    ldr r0, [r5, #0x5c]
    bl func_08054764
    cmp r0, #1
    bne .L08056D9C
    adds r0, r6, #0
    bl NewEfxPierceCritical
    b .L08056DA8
.L08056D9C:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08056DCC
    ldr r0, [r5, #0x5c]
    bl NewEfxNormalEffect
.L08056DA8:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08056DCC
    adds r0, r6, #0
    bl func_08067D14
    b .L08056DCC
.L08056DB6:
    movs r3, #0x2c
    ldrsh r0, [r5, r3]
    cmp r0, #0xe
    beq .L08056DCC
    cmp r0, #0x10
    bne .L08056DCC
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L08056DCC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08056D2C

    thumb_func_start func_08056DD4
func_08056DD4: @ 0x08056DD4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r1, .L08056E00 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08056E04 @ =0x08BA168C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    cmp r4, #0
    bne .L08056E10
    ldr r2, .L08056E08 @ =0x08BA5584
    ldr r3, .L08056E0C @ =0x08BA57D8
    b .L08056E14
    .align 2, 0
.L08056E00: .4byte 0x0201774C
.L08056E04: .4byte 0x08BA168C
.L08056E08: .4byte 0x08BA5584
.L08056E0C: .4byte 0x08BA57D8
.L08056E10:
    ldr r2, .L08056E34 @ =0x08BA5A38
    ldr r3, .L08056E38 @ =0x08BA5C98
.L08056E14:
    str r2, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    bl func_0805041C
    adds r4, r0, #0
    str r4, [r5, #0x60]
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08056E3C
    ldrh r0, [r4, #2]
    adds r0, #0x38
    b .L08056E40
    .align 2, 0
.L08056E34: .4byte 0x08BA5A38
.L08056E38: .4byte 0x08BA5C98
.L08056E3C:
    ldrh r0, [r4, #2]
    subs r0, #0x38
.L08056E40:
    strh r0, [r4, #2]
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08056DD4

    thumb_func_start func_08056E4C
func_08056E4C: @ 0x08056E4C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xc
    bne .L08056E72
    ldr r0, .L08056E78 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08056E72:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08056E78: .4byte 0x0201774C
    func_end func_08056E4C

    thumb_func_start func_08056E7C
func_08056E7C: @ 0x08056E7C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08056EB0 @ =0x08BA16A4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08056EB0: .4byte 0x08BA16A4
    func_end func_08056E7C

    thumb_func_start func_08056EB4
func_08056EB4: @ 0x08056EB4
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r4, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r6, #0
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x27
    bne .L08056F48
    adds r0, r4, #0
    movs r1, #0
    bl func_08056FC4
    adds r0, r4, #0
    movs r1, #0
    bl func_080570A0
    adds r0, r4, #0
    movs r1, #0x82
    movs r2, #1
    bl func_08055E14
    adds r0, r4, #0
    movs r1, #0x64
    bl func_080559A4
    ldr r3, .L08056F7C @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0
    movs r2, #8
    movs r3, #0
    bl func_08055F08
    str r6, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0x3c
    movs r2, #0x28
    movs r3, #0x10
    bl func_08055F08
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r4, r0]
    movs r0, #0xef
    movs r3, #1
    bl func_080681E4
.L08056F48:
    movs r1, #0x2c
    ldrsh r0, [r5, r1]
    cmp r0, #0x8b
    bne .L08056FA4
    movs r0, #9
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    adds r0, r5, #0
    adds r0, #0x29
    ldrb r1, [r0]
    adds r0, r4, #0
    bl func_080503E0
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08056F88
    ldr r0, .L08056F80 @ =gpEfxUnitPaletteBackup
    ldr r0, [r0]
    ldr r1, .L08056F84 @ =gPal + 0x2e0
    movs r2, #8
    bl CpuFastSet
    b .L08056F94
    .align 2, 0
.L08056F7C: .4byte gDispIo
.L08056F80: .4byte gpEfxUnitPaletteBackup
.L08056F84: .4byte gPal + 0x2e0
.L08056F88:
    ldr r0, .L08056F9C @ =gpEfxUnitPaletteBackup
    ldr r0, [r0, #4]
    ldr r1, .L08056FA0 @ =gPal + 0x320
    movs r2, #8
    bl CpuFastSet
.L08056F94:
    adds r0, r4, #0
    bl func_0804F7F0
    b .L08056FBA
    .align 2, 0
.L08056F9C: .4byte gpEfxUnitPaletteBackup
.L08056FA0: .4byte gPal + 0x320
.L08056FA4:
    cmp r0, #0xb3
    bne .L08056FBA
    movs r0, #2
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L08056FBA:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08056EB4

    thumb_func_start func_08056FC4
func_08056FC4: @ 0x08056FC4
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r1, .L0805700C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057010 @ =0x08BA16BC
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L08057014 @ =0x081E7FFC
    str r1, [r0, #0x48]
    ldr r1, .L08057018 @ =0x08BA16D4
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805701C @ =0x08BA1740
    str r1, [r0, #0x54]
    str r2, [r0, #0x58]
    lsls r4, r4, #5
    ldr r0, .L08057020 @ =0x082DCA8C
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805700C: .4byte 0x0201774C
.L08057010: .4byte 0x08BA16BC
.L08057014: .4byte 0x081E7FFC
.L08057018: .4byte 0x08BA16D4
.L0805701C: .4byte 0x08BA1740
.L08057020: .4byte 0x082DCA8C
    func_end func_08056FC4

    thumb_func_start func_08057024
func_08057024: @ 0x08057024
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08057074
    ldr r7, [r4, #0x4c]
    ldr r0, [r4, #0x50]
    mov r8, r0
    ldr r0, [r4, #0x54]
    lsls r5, r1, #2
    adds r6, r5, r0
    ldr r0, [r4, #0x58]
    ldr r2, [r6]
    cmp r0, r2
    beq .L0805705E
    movs r1, #0x80
    lsls r1, r1, #6
    adds r0, r2, #0
    bl func_0805060C
.L0805705E:
    ldr r0, [r6]
    str r0, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    adds r1, r5, r7
    ldr r1, [r1]
    mov r3, r8
    adds r2, r5, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L08057092
.L08057074:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08057092
    bl func_08050018
    ldr r1, .L0805709C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08057092:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805709C: .4byte 0x0201774C
    func_end func_08057024

    thumb_func_start func_080570A0
func_080570A0: @ 0x080570A0
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r1, .L080570F4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080570F8 @ =0x08BA17AC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r6, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x38
    strh r0, [r4, #0x2e]
    ldr r3, .L080570FC @ =0x08BD8FEC
    str r3, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    lsls r5, r5, #5
    ldr r0, .L08057100 @ =0x082DCA8C
    adds r5, r5, r0
    adds r0, r5, #0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08057104 @ =0x082DE1F0
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080570F4: .4byte 0x0201774C
.L080570F8: .4byte 0x08BA17AC
.L080570FC: .4byte 0x08BD8FEC
.L08057100: .4byte 0x082DCA8C
.L08057104: .4byte 0x082DE1F0
    func_end func_080570A0

    thumb_func_start func_08057108
func_08057108: @ 0x08057108
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08057130
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L08057138 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08057130:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057138: .4byte 0x0201774C
    func_end func_08057108

    thumb_func_start func_0805713C
func_0805713C: @ 0x0805713C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08057170 @ =0x08BA17C4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08057170: .4byte 0x08BA17C4
    func_end func_0805713C

    thumb_func_start func_08057174
func_08057174: @ 0x08057174
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r4, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r6, #0
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x19
    bne .L08057208
    adds r0, r4, #0
    movs r1, #0
    bl func_08056FC4
    adds r0, r4, #0
    movs r1, #0
    bl func_080570A0
    adds r0, r4, #0
    movs r1, #0x82
    movs r2, #1
    bl func_08055E14
    adds r0, r4, #0
    movs r1, #0x64
    bl func_080559A4
    ldr r3, .L0805723C @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0
    movs r2, #8
    movs r3, #0
    bl func_08055F08
    str r6, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0x3c
    movs r2, #0x28
    movs r3, #0x10
    bl func_08055F08
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r4, r0]
    movs r0, #0xef
    movs r3, #1
    bl func_080681E4
.L08057208:
    movs r1, #0x2c
    ldrsh r0, [r5, r1]
    cmp r0, #0x7d
    bne .L08057264
    movs r0, #9
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    adds r0, r5, #0
    adds r0, #0x29
    ldrb r1, [r0]
    adds r0, r4, #0
    bl func_080503E0
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057248
    ldr r0, .L08057240 @ =gpEfxUnitPaletteBackup
    ldr r0, [r0]
    ldr r1, .L08057244 @ =gPal + 0x2e0
    movs r2, #8
    bl CpuFastSet
    b .L08057254
    .align 2, 0
.L0805723C: .4byte gDispIo
.L08057240: .4byte gpEfxUnitPaletteBackup
.L08057244: .4byte gPal + 0x2e0
.L08057248:
    ldr r0, .L0805725C @ =gpEfxUnitPaletteBackup
    ldr r0, [r0, #4]
    ldr r1, .L08057260 @ =gPal + 0x320
    movs r2, #8
    bl CpuFastSet
.L08057254:
    adds r0, r4, #0
    bl func_0804F7F0
    b .L0805727A
    .align 2, 0
.L0805725C: .4byte gpEfxUnitPaletteBackup
.L08057260: .4byte gPal + 0x320
.L08057264:
    cmp r0, #0xa5
    bne .L0805727A
    movs r0, #2
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L0805727A:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08057174

    thumb_func_start func_08057284
func_08057284: @ 0x08057284
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L080572D0 @ =0x08BA17DC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r1, r4, #0
    adds r1, #0x29
    strb r0, [r1]
    movs r0, #0x9b
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080572D0: .4byte 0x08BA17DC
    func_end func_08057284

    thumb_func_start func_080572D4
func_080572D4: @ 0x080572D4
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    bne .L080572FA
    ldr r0, [r5, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L0805738C
.L080572FA:
    movs r1, #0x2c
    ldrsh r0, [r5, r1]
    cmp r0, #0x22
    bne .L0805731C
    ldr r0, .L08057318 @ =0x00000137
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r5, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805738C
    .align 2, 0
.L08057318: .4byte 0x00000137
.L0805731C:
    cmp r0, #0x2a
    bne .L08057328
    adds r0, r6, #0
    bl func_08057394
    b .L0805738C
.L08057328:
    cmp r0, #0x2d
    bne .L0805737A
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r4, r5, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r6, #0
    bl StartBattleAnimHitEffectsDefault
    adds r0, r6, #0
    bl func_08067CC4
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    beq .L0805736C
    ldr r0, [r5, #0x5c]
    bl func_08054764
    cmp r0, #1
    bne .L08057360
    adds r0, r6, #0
    bl NewEfxPierceCritical
    b .L0805736C
.L08057360:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805738C
    ldr r0, [r5, #0x5c]
    bl NewEfxNormalEffect
.L0805736C:
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805738C
    adds r0, r6, #0
    bl func_08067D14
    b .L0805738C
.L0805737A:
    cmp r0, #0x3e
    beq .L0805738C
    cmp r0, #0x40
    bne .L0805738C
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L0805738C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080572D4

    thumb_func_start func_08057394
func_08057394: @ 0x08057394
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L080573E8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080573EC @ =0x08BA17F4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r7, #0
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L080573F0 @ =0x08BA5D9C
    ldr r2, .L080573F4 @ =0x08BA5E38
    str r2, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r4, #0x60]
    ldrh r0, [r6, #4]
    adds r0, #0x10
    strh r0, [r6, #4]
    movs r0, #0xc0
    lsls r0, r0, #4
    ldrh r1, [r6, #8]
    ands r0, r1
    strh r0, [r6, #8]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #1
    bne .L080573F8
    movs r1, #0xe4
    lsls r1, r1, #7
    b .L080573FC
    .align 2, 0
.L080573E8: .4byte 0x0201774C
.L080573EC: .4byte 0x08BA17F4
.L080573F0: .4byte 0x08BA5D9C
.L080573F4: .4byte 0x08BA5E38
.L080573F8:
    movs r1, #0x93
    lsls r1, r1, #8
.L080573FC:
    adds r0, r1, #0
    ldrh r1, [r6, #8]
    orrs r0, r1
    strh r0, [r6, #8]
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08057394

    thumb_func_start func_0805740C
func_0805740C: @ 0x0805740C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xa
    ble .L08057432
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L08057438 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08057432:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057438: .4byte 0x0201774C
    func_end func_0805740C

    thumb_func_start func_0805743C
func_0805743C: @ 0x0805743C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08057474 @ =0x08BA180C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08057474: .4byte 0x08BA180C
    func_end func_0805743C

    thumb_func_start func_08057478
func_08057478: @ 0x08057478
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805749C
    ldr r0, [r4, #0x5c]
    movs r1, #6
    bl func_0804EFDC
    b .L0805750E
.L0805749C:
    cmp r0, #6
    bne .L080574D4
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    adds r0, r5, #0
    movs r1, #9
    bl func_08057514
    adds r0, r5, #0
    movs r1, #9
    bl func_08057608
    adds r0, r5, #0
    bl func_08057714
    movs r0, #0x86
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805750E
.L080574D4:
    cmp r0, #0xa
    bne .L080574F8
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805750E
    adds r0, r5, #0
    bl func_08067D14
    b .L0805750E
.L080574F8:
    cmp r0, #0x19
    beq .L0805750E
    cmp r0, #0x1e
    bne .L0805750E
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805750E:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08057478

    thumb_func_start func_08057514
func_08057514: @ 0x08057514
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L08057574 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057578 @ =0x08BA1824
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    ldr r0, .L0805757C @ =0x081EE054
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L08057580 @ =0x081ED194
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08057584 @ =0x081EE154
    ldr r5, .L08057588 @ =0x02019784
    adds r1, r5, #0
    bl LZ77UnCompWram
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057590
    ldr r1, .L0805758C @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r2, #0x20
    movs r3, #0x14
    bl func_08066ACC
    b .L080575A4
    .align 2, 0
.L08057574: .4byte 0x0201774C
.L08057578: .4byte 0x08BA1824
.L0805757C: .4byte 0x081EE054
.L08057580: .4byte 0x081ED194
.L08057584: .4byte 0x081EE154
.L08057588: .4byte 0x02019784
.L0805758C: .4byte gBg1Tm
.L08057590:
    ldr r1, .L080575CC @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r2, #0x20
    movs r3, #0x14
    bl func_08066AFC
.L080575A4:
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    ldr r2, .L080575D0 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080575CC: .4byte gBg1Tm
.L080575D0: .4byte gDispIo
    func_end func_08057514

    thumb_func_start func_080575D4
func_080575D4: @ 0x080575D4
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L080575FE
    bl func_08050018
    ldr r1, .L08057604 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L080575FE:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057604: .4byte 0x0201774C
    func_end func_080575D4

    thumb_func_start func_08057608
func_08057608: @ 0x08057608
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L08057638 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805763C @ =0x08BA183C
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r4, [r6, #0x5c]
    movs r0, #0
    strh r0, [r6, #0x2c]
    strh r5, [r6, #0x2e]
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057640
    movs r0, #0xd8
    b .L08057644
    .align 2, 0
.L08057638: .4byte 0x0201774C
.L0805763C: .4byte 0x08BA183C
.L08057640:
    movs r0, #0xd8
    rsbs r0, r0, #0
.L08057644:
    str r0, [r6, #0x44]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08057608

    thumb_func_start func_0805764C
func_0805764C: @ 0x0805764C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r6, r0, #0
    ldr r2, [r6, #0x44]
    movs r0, #0x2c
    ldrsh r3, [r6, r0]
    movs r1, #0x2e
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    ldr r4, .L08057684 @ =gDispIo
    strh r0, [r4, #0x20]
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057688
    ldrh r4, [r4, #0x20]
    lsrs r0, r4, #3
    adds r7, r0, #0
    adds r7, #0x1e
    b .L0805768E
    .align 2, 0
.L08057684: .4byte gDispIo
.L08057688:
    ldrh r4, [r4, #0x20]
    lsrs r0, r4, #3
    subs r7, r0, #1
.L0805768E:
    movs r2, #0x1f
    mov r8, r2
    adds r0, r7, #0
    ands r0, r2
    lsls r0, r0, #1
    ldr r5, .L0805770C @ =gBg1Tm
    adds r0, r0, r5
    movs r4, #0x80
    lsls r4, r4, #1
    str r4, [sp]
    movs r1, #1
    movs r2, #0x14
    movs r3, #1
    bl func_080669B4
    adds r0, r7, #1
    mov r1, r8
    ands r0, r1
    lsls r0, r0, #1
    adds r0, r0, r5
    str r4, [sp]
    movs r1, #1
    movs r2, #0x14
    movs r3, #1
    bl func_080669B4
    adds r0, r7, #2
    mov r2, r8
    ands r0, r2
    lsls r0, r0, #1
    adds r0, r0, r5
    str r4, [sp]
    movs r1, #1
    movs r2, #0x14
    movs r3, #1
    bl func_080669B4
    movs r0, #2
    bl EnableBgSync
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r6, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08057700
    ldr r1, .L08057710 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050018
    adds r0, r6, #0
    bl Proc_Break
.L08057700:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805770C: .4byte gBg1Tm
.L08057710: .4byte 0x0201774C
    func_end func_0805764C

    thumb_func_start func_08057714
func_08057714: @ 0x08057714
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08057740 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057744 @ =0x08BA1854
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08057748 @ =0x081E806A
    str r1, [r0, #0x48]
    ldr r1, .L0805774C @ =0x081EE054
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057740: .4byte 0x0201774C
.L08057744: .4byte 0x08BA1854
.L08057748: .4byte 0x081E806A
.L0805774C: .4byte 0x081EE054
    func_end func_08057714

    thumb_func_start func_08057750
func_08057750: @ 0x08057750
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08057776
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08057790
.L08057776:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08057790
    bl func_08050118
    ldr r1, .L08057798 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08057790:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057798: .4byte 0x0201774C
    func_end func_08057750

    thumb_func_start func_0805779C
func_0805779C: @ 0x0805779C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L080577D4 @ =0x08BA1874
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080577D4: .4byte 0x08BA1874
    func_end func_0805779C

    thumb_func_start func_080577D8
func_080577D8: @ 0x080577D8
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08057806
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L08057806:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L08057854
    ldr r0, .L08057850 @ =0x0000010D
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    adds r0, r5, #0
    bl func_08057894
    ldr r0, [r4, #0x5c]
    movs r1, #6
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805788A
    adds r0, r5, #0
    bl func_08067D14
    b .L0805788A
    .align 2, 0
.L08057850: .4byte 0x0000010D
.L08057854:
    adds r0, r6, #0
    adds r0, #0x1c
    cmp r1, r0
    bne .L0805786E
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0xe
    movs r3, #0x10
    bl func_08055F08
    b .L0805788A
.L0805786E:
    adds r0, r6, #0
    adds r0, #0x32
    cmp r1, r0
    beq .L0805788A
    adds r0, #5
    cmp r1, r0
    bne .L0805788A
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805788A:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080577D8

    thumb_func_start func_08057894
func_08057894: @ 0x08057894
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L080578EC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080578F0 @ =0x08BA188C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x34
    strh r0, [r4, #0x2e]
    adds r0, r5, #0
    bl GetAnimPosition
    ldr r3, .L080578F4 @ =0x08BA7F18
    cmp r0, #0
    bne .L080578C4
    ldr r3, .L080578F8 @ =0x08BA72B8
.L080578C4:
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L080578FC @ =0x081EF21C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08057900 @ =0x081EE51C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080578EC: .4byte 0x0201774C
.L080578F0: .4byte 0x08BA188C
.L080578F4: .4byte 0x08BA7F18
.L080578F8: .4byte 0x08BA72B8
.L080578FC: .4byte 0x081EF21C
.L08057900: .4byte 0x081EE51C
    func_end func_08057894

    thumb_func_start func_08057904
func_08057904: @ 0x08057904
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805792C
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L08057934 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805792C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057934: .4byte 0x0201774C
    func_end func_08057904

    thumb_func_start func_08057938
func_08057938: @ 0x08057938
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L0805796C @ =0x08BA18A4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805796C: .4byte 0x08BA18A4
    func_end func_08057938

    thumb_func_start func_08057970
func_08057970: @ 0x08057970
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r6, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08057998
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L08057998:
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, #1
    bne .L080579E4
    ldr r0, [r4, #0x5c]
    movs r1, #0x5a
    movs r2, #0xa
    bl func_080561D0
    adds r0, r5, #0
    bl func_08057A20
    adds r0, r5, #0
    bl func_08057B30
    adds r0, r5, #0
    bl func_08057BB8
    str r6, [sp]
    str r6, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x28
    movs r2, #0xf
    movs r3, #0x10
    bl func_08055F08
    ldr r0, .L080579E0 @ =0x0000011D
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    b .L08057A16
    .align 2, 0
.L080579E0: .4byte 0x0000011D
.L080579E4:
    cmp r0, #0xf
    bne .L08057A08
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08057A16
    adds r0, r5, #0
    bl func_08067D14
    b .L08057A16
.L08057A08:
    cmp r0, #0x82
    bne .L08057A16
    bl func_0804FFFC
    adds r0, r4, #0
    bl Proc_Break
.L08057A16:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08057970

    thumb_func_start func_08057A20
func_08057A20: @ 0x08057A20
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r1, .L08057A7C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057A80 @ =0x08BA18BC
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #0x34
    strh r0, [r5, #0x2e]
    adds r0, r6, #0
    bl GetAnimPosition
    ldr r3, .L08057A84 @ =0x08BAA2A8
    cmp r0, #0
    bne .L08057A50
    ldr r3, .L08057A88 @ =0x08BA96A8
.L08057A50:
    str r3, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    adds r4, r0, #0
    str r4, [r5, #0x60]
    ldr r0, .L08057A8C @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08057A96
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057A90
    ldrh r0, [r4, #2]
    adds r0, #0x10
    b .L08057AAA
    .align 2, 0
.L08057A7C: .4byte 0x0201774C
.L08057A80: .4byte 0x08BA18BC
.L08057A84: .4byte 0x08BAA2A8
.L08057A88: .4byte 0x08BA96A8
.L08057A8C: .4byte 0x0203E02C
.L08057A90:
    ldrh r0, [r4, #2]
    subs r0, #0x10
    b .L08057AAA
.L08057A96:
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057AA6
    ldrh r0, [r4, #2]
    adds r0, #0x48
    b .L08057AAA
.L08057AA6:
    ldrh r0, [r4, #2]
    subs r0, #0x48
.L08057AAA:
    strh r0, [r4, #2]
    ldr r0, .L08057AC8 @ =0x081EF21C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08057ACC @ =0x081EE51C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08057AC8: .4byte 0x081EF21C
.L08057ACC: .4byte 0x081EE51C
    func_end func_08057A20

    thumb_func_start func_08057AD0
func_08057AD0: @ 0x08057AD0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08057AF4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08057B02
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057AF8
    ldr r0, [r4, #0x60]
    ldr r1, [r4, #0x5c]
    ldrh r1, [r1, #2]
    adds r1, #0x48
    b .L08057B00
    .align 2, 0
.L08057AF4: .4byte 0x0203E02C
.L08057AF8:
    ldr r0, [r4, #0x60]
    ldr r1, [r4, #0x5c]
    ldrh r1, [r1, #2]
    subs r1, #0x48
.L08057B00:
    strh r1, [r0, #2]
.L08057B02:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08057B26
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L08057B2C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08057B26:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057B2C: .4byte 0x0201774C
    func_end func_08057AD0

    thumb_func_start func_08057B30
func_08057B30: @ 0x08057B30
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r1, .L08057B74 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057B78 @ =0x08BA18D4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x70
    strh r0, [r4, #0x2e]
    ldr r0, .L08057B7C @ =0x0827AC10
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r2, .L08057B80 @ =0x0827C028
    ldr r0, [r4, #0x5c]
    adds r1, r2, #0
    bl func_080504DC
    bl func_08050008
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08057B74: .4byte 0x0201774C
.L08057B78: .4byte 0x08BA18D4
.L08057B7C: .4byte 0x0827AC10
.L08057B80: .4byte 0x0827C028
    func_end func_08057B30

    thumb_func_start func_08057B84
func_08057B84: @ 0x08057B84
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L08057BAE
    bl func_08050018
    bl func_08050118
    ldr r1, .L08057BB4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08057BAE:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057BB4: .4byte 0x0201774C
    func_end func_08057B84

    thumb_func_start func_08057BB8
func_08057BB8: @ 0x08057BB8
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08057BE4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057BE8 @ =0x08BA18EC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08057BEC @ =0x081E808C
    str r1, [r0, #0x48]
    ldr r1, .L08057BF0 @ =0x0827C008
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057BE4: .4byte 0x0201774C
.L08057BE8: .4byte 0x08BA18EC
.L08057BEC: .4byte 0x081E808C
.L08057BF0: .4byte 0x0827C008
    func_end func_08057BB8

    thumb_func_start func_08057BF4
func_08057BF4: @ 0x08057BF4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r5, r0, #0x10
    cmp r5, #0
    blt .L08057C34
    ldr r0, [r4, #0x4c]
    ldr r4, .L08057C30 @ =0x020165C8
    adds r1, r4, #0
    movs r2, #8
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #1
    adds r3, r5, #0
    bl func_08066F64
    adds r0, r4, #0
    movs r1, #0x20
    bl func_08050634
    b .L08057C4A
    .align 2, 0
.L08057C30: .4byte 0x020165C8
.L08057C34:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L08057C4A
    ldr r1, .L08057C50 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08057C4A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08057C50: .4byte 0x0201774C
    func_end func_08057BF4

    thumb_func_start func_08057C54
func_08057C54: @ 0x08057C54
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08057C8C @ =0x08BA190C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08057C8C: .4byte 0x08BA190C
    func_end func_08057C54

    thumb_func_start func_08057C90
func_08057C90: @ 0x08057C90
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08057CCC
    ldr r0, [r4, #0x5c]
    movs r1, #0x5a
    movs r2, #0xa
    bl func_080561D0
    ldr r0, [r4, #0x5c]
    bl func_08057D10
    movs r0, #0x8f
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
.L08057CCC:
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, #4
    bne .L08057CF4
    movs r0, #9
    ldrh r3, [r5, #0x10]
    orrs r0, r3
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08057D0A
    adds r0, r5, #0
    bl func_08067D14
    b .L08057D0A
.L08057CF4:
    cmp r0, #0x32
    beq .L08057D0A
    cmp r0, #0x3c
    bne .L08057D0A
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L08057D0A:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08057C90

    thumb_func_start func_08057D10
func_08057D10: @ 0x08057D10
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L08057D4C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057D50 @ =0x08BA1924
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    ldr r2, .L08057D54 @ =0x08BAAED8
    ldr r3, .L08057D58 @ =0x08BABB08
    str r2, [sp]
    adds r0, r4, #0
    adds r1, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r5, #0x60]
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057D5C
    ldrh r0, [r6, #2]
    adds r0, #0x20
    b .L08057D60
    .align 2, 0
.L08057D4C: .4byte 0x0201774C
.L08057D50: .4byte 0x08BA1924
.L08057D54: .4byte 0x08BAAED8
.L08057D58: .4byte 0x08BABB08
.L08057D5C:
    ldrh r0, [r6, #2]
    subs r0, #0x20
.L08057D60:
    strh r0, [r6, #2]
    ldr r0, .L08057D7C @ =0x081F02E0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08057D80 @ =0x081EE51C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08057D7C: .4byte 0x081F02E0
.L08057D80: .4byte 0x081EE51C
    func_end func_08057D10

    thumb_func_start func_08057D84
func_08057D84: @ 0x08057D84
    push {lr}
    ldr r2, .L08057D98 @ =0x0201774C
    ldr r1, [r2]
    subs r1, #1
    str r1, [r2]
    ldr r0, [r0, #0x60]
    bl AnimDelete
    pop {r0}
    bx r0
    .align 2, 0
.L08057D98: .4byte 0x0201774C
    func_end func_08057D84

    thumb_func_start func_08057D9C
func_08057D9C: @ 0x08057D9C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08057DD0 @ =0x08BA1944
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08057DD0: .4byte 0x08BA1944
    func_end func_08057D9C

    thumb_func_start func_08057DD4
func_08057DD4: @ 0x08057DD4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08057E1A
    ldr r0, [r4, #0x5c]
    movs r1, #0x5a
    movs r2, #0xa
    bl func_080561D0
    ldr r0, [r4, #0x5c]
    bl func_08057E60
    ldr r0, [r4, #0x5c]
    bl func_08057F08
    ldr r0, [r4, #0x5c]
    bl func_08057F90
    ldr r0, .L08057E44 @ =0x0000011F
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
.L08057E1A:
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, #4
    bne .L08057E48
    movs r0, #9
    ldrh r3, [r5, #0x10]
    orrs r0, r3
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08057E5A
    adds r0, r5, #0
    bl func_08067D14
    b .L08057E5A
    .align 2, 0
.L08057E44: .4byte 0x0000011F
.L08057E48:
    cmp r0, #0x20
    beq .L08057E5A
    cmp r0, #0x30
    bne .L08057E5A
    bl func_0804FFFC
    adds r0, r4, #0
    bl Proc_Break
.L08057E5A:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08057DD4

    thumb_func_start func_08057E60
func_08057E60: @ 0x08057E60
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08057E9C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057EA0 @ =0x08BA195C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08057EA4 @ =0x081E8166
    str r1, [r0, #0x48]
    ldr r1, .L08057EA8 @ =0x08BA1974
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L08057EAC @ =0x081F0320
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057E9C: .4byte 0x0201774C
.L08057EA0: .4byte 0x08BA195C
.L08057EA4: .4byte 0x081E8166
.L08057EA8: .4byte 0x08BA1974
.L08057EAC: .4byte 0x081F0320
    func_end func_08057E60

    thumb_func_start func_08057EB0
func_08057EB0: @ 0x08057EB0
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08057EDE
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L08057EFC
.L08057EDE:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L08057EFC
    bl func_08050018
    ldr r1, .L08057F04 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08057EFC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057F04: .4byte 0x0201774C
    func_end func_08057EB0

    thumb_func_start func_08057F08
func_08057F08: @ 0x08057F08
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08057F34 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057F38 @ =0x08BA19A4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08057F3C @ =0x081E81AC
    str r1, [r0, #0x48]
    ldr r1, .L08057F40 @ =0x0820D584
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057F34: .4byte 0x0201774C
.L08057F38: .4byte 0x08BA19A4
.L08057F3C: .4byte 0x081E81AC
.L08057F40: .4byte 0x0820D584
    func_end func_08057F08

    thumb_func_start func_08057F44
func_08057F44: @ 0x08057F44
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08057F6A
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08057F84
.L08057F6A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08057F84
    bl func_08050118
    ldr r1, .L08057F8C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08057F84:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08057F8C: .4byte 0x0201774C
    func_end func_08057F44

    thumb_func_start func_08057F90
func_08057F90: @ 0x08057F90
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08057FD4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08057FD8 @ =0x08BA19C4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x37
    strh r0, [r4, #0x2e]
    ldr r3, .L08057FDC @ =0x08BAC744
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r4, #0x60]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08057FE0
    ldrh r0, [r6, #2]
    adds r0, #0x24
    b .L08057FE4
    .align 2, 0
.L08057FD4: .4byte 0x0201774C
.L08057FD8: .4byte 0x08BA19C4
.L08057FDC: .4byte 0x08BAC744
.L08057FE0:
    ldrh r0, [r6, #2]
    subs r0, #0x24
.L08057FE4:
    strh r0, [r6, #2]
    ldrh r0, [r6, #4]
    adds r0, #0xc
    strh r0, [r6, #4]
    ldr r0, .L08058008 @ =0x081F0300
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805800C @ =0x081EE51C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08058008: .4byte 0x081F0300
.L0805800C: .4byte 0x081EE51C
    func_end func_08057F90

    thumb_func_start func_08058010
func_08058010: @ 0x08058010
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L08058038
    ldr r0, .L08058040 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08058038:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058040: .4byte 0x0201774C
    func_end func_08058010

    thumb_func_start func_08058044
func_08058044: @ 0x08058044
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805807C @ =0x08BA19DC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805807C: .4byte 0x08BA19DC
    func_end func_08058044

    thumb_func_start func_08058080
func_08058080: @ 0x08058080
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L080580AA
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L080580AA:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L080580C8
    adds r0, r5, #0
    bl func_08058120
    adds r0, r5, #0
    bl func_08058228
    adds r0, r5, #0
    bl func_080582B0
    b .L0805811A
.L080580C8:
    adds r0, r6, #4
    cmp r1, r0
    bne .L080580FE
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r5, r0]
    movs r0, #0xf5
    movs r3, #1
    bl func_080681E4
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805811A
    adds r0, r5, #0
    bl func_08067D14
    b .L0805811A
.L080580FE:
    adds r0, r6, #0
    adds r0, #0x50
    cmp r1, r0
    beq .L0805811A
    adds r0, #0x10
    cmp r1, r0
    bne .L0805811A
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805811A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08058080

    thumb_func_start func_08058120
func_08058120: @ 0x08058120
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08058178 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805817C @ =0x08BA19F4
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08058180 @ =0x081E824E
    str r0, [r5, #0x48]
    ldr r0, .L08058184 @ =0x08BA1A0C
    str r0, [r5, #0x4c]
    ldr r0, .L08058188 @ =0x08BA1A14
    str r0, [r5, #0x50]
    ldr r0, .L0805818C @ =0x081FB4B4
    movs r1, #0x86
    lsls r1, r1, #5
    bl func_0805060C
    bl func_08050040
    ldr r0, .L08058190 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805819E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08058194
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0805819E
    .align 2, 0
.L08058178: .4byte 0x0201774C
.L0805817C: .4byte 0x08BA19F4
.L08058180: .4byte 0x081E824E
.L08058184: .4byte 0x08BA1A0C
.L08058188: .4byte 0x08BA1A14
.L0805818C: .4byte 0x081FB4B4
.L08058190: .4byte 0x0203E02C
.L08058194:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0805819E:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08058120

    thumb_func_start func_080581A4
func_080581A4: @ 0x080581A4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r6, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r5, r0, #0x10
    cmp r5, #0
    blt .L080581FC
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r5, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    cmp r5, #0
    bne .L080581DA
    ldr r6, .L080581F4 @ =0x0000011F
.L080581DA:
    cmp r5, #1
    bne .L080581E2
    movs r6, #0xa8
    lsls r6, r6, #1
.L080581E2:
    ldr r0, .L080581F8 @ =0x0202349C
    str r6, [sp]
    movs r1, #2
    movs r2, #0x14
    movs r3, #1
    bl func_080669B4
    b .L0805821A
    .align 2, 0
.L080581F4: .4byte 0x0000011F
.L080581F8: .4byte 0x0202349C
.L080581FC:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0805821A
    bl func_08050018
    ldr r1, .L08058224 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805821A:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08058224: .4byte 0x0201774C
    func_end func_080581A4

    thumb_func_start func_08058228
func_08058228: @ 0x08058228
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08058254 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058258 @ =0x08BA1A1C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805825C @ =0x081E8258
    str r1, [r0, #0x48]
    ldr r1, .L08058260 @ =0x081FBD70
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058254: .4byte 0x0201774C
.L08058258: .4byte 0x08BA1A1C
.L0805825C: .4byte 0x081E8258
.L08058260: .4byte 0x081FBD70
    func_end func_08058228

    thumb_func_start func_08058264
func_08058264: @ 0x08058264
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805828A
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L080582A4
.L0805828A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L080582A4
    bl func_08050118
    ldr r1, .L080582AC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L080582A4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080582AC: .4byte 0x0201774C
    func_end func_08058264

    thumb_func_start func_080582B0
func_080582B0: @ 0x080582B0
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L080582F8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080582FC @ =0x08BA1A3C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L08058300 @ =0x08BB3F30
    ldr r2, .L08058304 @ =0x08BB3404
    str r2, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L08058308 @ =0x081FC634
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805830C @ =0x081FC19C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080582F8: .4byte 0x0201774C
.L080582FC: .4byte 0x08BA1A3C
.L08058300: .4byte 0x08BB3F30
.L08058304: .4byte 0x08BB3404
.L08058308: .4byte 0x081FC634
.L0805830C: .4byte 0x081FC19C
    func_end func_080582B0

    thumb_func_start func_08058310
func_08058310: @ 0x08058310
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x32
    ble .L08058336
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L0805833C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08058336:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805833C: .4byte 0x0201774C
    func_end func_08058310

    thumb_func_start func_08058340
func_08058340: @ 0x08058340
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08058380 @ =0x08BA1A54
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r1, #0
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r4, #0
    adds r0, #0x2a
    strb r1, [r0]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058380: .4byte 0x08BA1A54
    func_end func_08058340

    thumb_func_start func_08058384
func_08058384: @ 0x08058384
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L080583C4 @ =0x08BA1A54
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r1, r4, #0
    adds r1, #0x2a
    movs r0, #1
    strb r0, [r1]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080583C4: .4byte 0x08BA1A54
    func_end func_08058384

    thumb_func_start func_080583C8
func_080583C8: @ 0x080583C8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    ldr r0, .L080583F4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L080583F8
    movs r5, #0x20
    movs r7, #0x34
    movs r3, #0x36
    mov r8, r3
    movs r0, #0x55
    mov sb, r0
    b .L08058404
    .align 2, 0
.L080583F4: .4byte 0x0203E02C
.L080583F8:
    movs r5, #0x28
    movs r7, #0x3c
    movs r1, #0x41
    mov r8, r1
    movs r3, #0x60
    mov sb, r3
.L08058404:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08058430
    ldr r0, [r4, #0x5c]
    bl func_080584D0
    ldr r0, [r4, #0x5c]
    bl func_08058588
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xf1
    movs r3, #1
    bl func_080681E4
.L08058430:
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, r5
    bne .L08058444
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L080584C4
.L08058444:
    cmp r0, r7
    bne .L080584AE
    movs r0, #9
    ldrh r3, [r6, #0x10]
    orrs r0, r3
    strh r0, [r6, #0x10]
    adds r5, r4, #0
    adds r5, #0x29
    ldrb r1, [r5]
    adds r0, r6, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r5]
    cmp r0, #0
    bne .L080584C4
    adds r0, r4, #0
    adds r0, #0x2a
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08058484
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r6, r0]
    movs r0, #0xf7
    movs r3, #1
    bl func_080681E4
    adds r0, r6, #0
    bl func_0805865C
    b .L080584A6
.L08058484:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r0, #0xf8
    movs r3, #1
    bl func_080681E4
    adds r0, r6, #0
    bl func_08058744
    adds r0, r6, #0
    bl func_08058810
    adds r0, r6, #0
    bl func_0805889C
.L080584A6:
    adds r0, r6, #0
    bl func_08067D14
    b .L080584C4
.L080584AE:
    cmp r0, r8
    beq .L080584C4
    cmp r0, sb
    bne .L080584C4
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L080584C4:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080583C8

    thumb_func_start func_080584D0
func_080584D0: @ 0x080584D0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08058514 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058518 @ =0x08BA1A6C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805851C @ =0x081E829A
    str r1, [r0, #0x48]
    ldr r1, .L08058520 @ =0x08BA1A84
    str r1, [r0, #0x4c]
    ldr r1, .L08058524 @ =0x08BA1AB4
    str r1, [r0, #0x50]
    ldr r0, .L08058528 @ =0x081FD2CC
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805852C @ =0x081FC6D4
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058514: .4byte 0x0201774C
.L08058518: .4byte 0x08BA1A6C
.L0805851C: .4byte 0x081E829A
.L08058520: .4byte 0x08BA1A84
.L08058524: .4byte 0x08BA1AB4
.L08058528: .4byte 0x081FD2CC
.L0805852C: .4byte 0x081FC6D4
    func_end func_080584D0

    thumb_func_start func_08058530
func_08058530: @ 0x08058530
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0805855E
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L0805857C
.L0805855E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0805857C
    bl func_08050018
    ldr r1, .L08058584 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805857C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058584: .4byte 0x0201774C
    func_end func_08058530

    thumb_func_start func_08058588
func_08058588: @ 0x08058588
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r1, .L080585CC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080585D0 @ =0x08BA1AE4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r6, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r1, .L080585D4 @ =0x08BB46D0
    ldr r2, .L080585D8 @ =0x08BB4348
    ldr r3, .L080585DC @ =0x08BB46FC
    ldr r0, .L080585E0 @ =0x08BB4374
    str r0, [sp]
    adds r0, r6, #0
    bl func_0805041C
    adds r5, r0, #0
    str r5, [r4, #0x60]
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080585E4
    ldrh r0, [r6, #2]
    subs r0, #8
    b .L080585E8
    .align 2, 0
.L080585CC: .4byte 0x0201774C
.L080585D0: .4byte 0x08BA1AE4
.L080585D4: .4byte 0x08BB46D0
.L080585D8: .4byte 0x08BB4348
.L080585DC: .4byte 0x08BB46FC
.L080585E0: .4byte 0x08BB4374
.L080585E4:
    ldrh r0, [r6, #2]
    adds r0, #8
.L080585E8:
    strh r0, [r5, #2]
    ldrh r0, [r6, #4]
    adds r0, #8
    strh r0, [r5, #4]
    ldr r0, .L0805860C @ =0x081FEE00
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08058610 @ =0x081FE804
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805860C: .4byte 0x081FEE00
.L08058610: .4byte 0x081FE804
    func_end func_08058588

    thumb_func_start func_08058614
func_08058614: @ 0x08058614
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x25
    bne .L0805863A
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xf2
    movs r3, #1
    bl func_080681E4
    b .L08058652
.L0805863A:
    cmp r0, #0x32
    ble .L08058652
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L08058658 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08058652:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058658: .4byte 0x0201774C
    func_end func_08058614

    thumb_func_start func_0805865C
func_0805865C: @ 0x0805865C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L080586B4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080586B8 @ =0x08BA1AFC
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L080586BC @ =0x081E82CC
    str r0, [r5, #0x48]
    ldr r0, .L080586C0 @ =0x08BA1B68
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L080586C4 @ =0x08BA1B14
    str r0, [r5, #0x54]
    ldr r0, .L080586C8 @ =0x08207A18
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r0, .L080586CC @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L080586DA
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L080586D0
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L080586DA
    .align 2, 0
.L080586B4: .4byte 0x0201774C
.L080586B8: .4byte 0x08BA1AFC
.L080586BC: .4byte 0x081E82CC
.L080586C0: .4byte 0x08BA1B68
.L080586C4: .4byte 0x08BA1B14
.L080586C8: .4byte 0x08207A18
.L080586CC: .4byte 0x0203E02C
.L080586D0:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L080586DA:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805865C

    thumb_func_start func_080586E0
func_080586E0: @ 0x080586E0
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L0805871C
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L0805873A
.L0805871C:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L0805873A
    bl func_08050018
    ldr r1, .L08058740 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_End
.L0805873A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08058740: .4byte 0x0201774C
    func_end func_080586E0

    thumb_func_start func_08058744
func_08058744: @ 0x08058744
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L080587A0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080587A4 @ =0x08BA1BBC
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    ldr r0, .L080587A8 @ =0x08209520
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r5, #0x5c]
    ldr r2, .L080587AC @ =0x0820A6DC
    adds r1, r2, #0
    bl func_080504DC
    bl func_08050008
    bl func_08050040
    ldr r0, .L080587B0 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L080587D0
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L080587B4
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L080587BE
    .align 2, 0
.L080587A0: .4byte 0x0201774C
.L080587A4: .4byte 0x08BA1BBC
.L080587A8: .4byte 0x08209520
.L080587AC: .4byte 0x0820A6DC
.L080587B0: .4byte 0x0203E02C
.L080587B4:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L080587BE:
    ldr r0, .L080587D8 @ =0x0202349C
    movs r1, #0x80
    lsls r1, r1, #1
    str r1, [sp]
    movs r1, #2
    movs r2, #0x14
    movs r3, #1
    bl func_080669F4
.L080587D0:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080587D8: .4byte 0x0202349C
    func_end func_08058744

    thumb_func_start func_080587DC
func_080587DC: @ 0x080587DC
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    bne .L08058804
    bl func_08050018
    bl func_08050118
    ldr r1, .L0805880C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08058804:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805880C: .4byte 0x0201774C
    func_end func_080587DC

    thumb_func_start func_08058810
func_08058810: @ 0x08058810
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08058844 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058848 @ =0x08BA1BD4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805884C @ =0x081E8322
    str r1, [r0, #0x48]
    ldr r1, .L08058850 @ =0x0820A4DC
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058844: .4byte 0x0201774C
.L08058848: .4byte 0x08BA1BD4
.L0805884C: .4byte 0x081E8322
.L08058850: .4byte 0x0820A4DC
    func_end func_08058810

    thumb_func_start func_08058854
func_08058854: @ 0x08058854
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805887A
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08058890
.L0805887A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08058890
    ldr r1, .L08058898 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08058890:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058898: .4byte 0x0201774C
    func_end func_08058854

    thumb_func_start func_0805889C
func_0805889C: @ 0x0805889C
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L080588DC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080588E0 @ =0x08BA1BF4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L080588E4 @ =0x08BB62EC
    ldr r2, .L080588E8 @ =0x08BB54CC
    str r2, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r4, #0x60]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080588EC
    ldrh r0, [r6, #2]
    subs r0, #8
    b .L080588F0
    .align 2, 0
.L080588DC: .4byte 0x0201774C
.L080588E0: .4byte 0x08BA1BF4
.L080588E4: .4byte 0x08BB62EC
.L080588E8: .4byte 0x08BB54CC
.L080588EC:
    ldrh r0, [r6, #2]
    adds r0, #8
.L080588F0:
    strh r0, [r6, #2]
    ldr r0, [r6, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #3
    orrs r0, r1
    str r0, [r6, #0x1c]
    ldr r0, .L08058918 @ =0x0820AB9C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805891C @ =0x0820A924
    movs r1, #0x80
    lsls r1, r1, #4
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08058918: .4byte 0x0820AB9C
.L0805891C: .4byte 0x0820A924
    func_end func_0805889C

    thumb_func_start func_08058920
func_08058920: @ 0x08058920
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    ble .L08058946
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L0805894C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08058946:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805894C: .4byte 0x0201774C
    func_end func_08058920

    thumb_func_start func_08058950
func_08058950: @ 0x08058950
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08058988 @ =0x08BA1C0C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058988: .4byte 0x08BA1C0C
    func_end func_08058950

    thumb_func_start func_0805898C
func_0805898C: @ 0x0805898C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L080589C2
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L080589C2:
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    adds r0, r6, #1
    cmp r1, r0
    bne .L08058A1E
    adds r0, r5, #0
    bl func_08058AC4
    adds r0, r5, #0
    bl func_08058D28
    ldr r3, .L08058A34 @ =gDispIo
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
    mov r2, r8
    strb r2, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r2, [r0]
    str r1, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x10
    movs r3, #0
    bl func_08055F08
    movs r0, #0x91
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
.L08058A1E:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #0
    adds r0, #0x52
    cmp r1, r0
    bne .L08058A38
    ldr r0, [r4, #0x5c]
    movs r1, #4
    bl func_0804EFDC
    b .L08058AB8
    .align 2, 0
.L08058A34: .4byte gDispIo
.L08058A38:
    adds r0, r6, #0
    adds r0, #0x55
    cmp r1, r0
    bne .L08058A74
    adds r0, r5, #0
    bl func_08058BAC
    adds r0, r5, #0
    bl func_08058C94
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x18
    movs r2, #0x10
    movs r3, #0x10
    bl func_08055F08
    ldr r0, .L08058A70 @ =0x00000123
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    b .L08058AB8
    .align 2, 0
.L08058A70: .4byte 0x00000123
.L08058A74:
    adds r0, r6, #0
    adds r0, #0x58
    cmp r1, r0
    bne .L08058A9C
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08058AB8
    adds r0, r5, #0
    bl func_08067D14
    b .L08058AB8
.L08058A9C:
    adds r0, r6, #0
    adds r0, #0x88
    cmp r1, r0
    beq .L08058AB8
    adds r0, #0x19
    cmp r1, r0
    bne .L08058AB8
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L08058AB8:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805898C

    thumb_func_start func_08058AC4
func_08058AC4: @ 0x08058AC4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08058B18 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058B1C @ =0x08BA1C24
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08058B20 @ =0x081E8378
    str r0, [r5, #0x48]
    ldr r0, .L08058B24 @ =0x08BA1C3C
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08058B28 @ =0x08BA1C54
    str r0, [r5, #0x54]
    ldr r0, .L08058B2C @ =0x0821BBA8
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L08058B30 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08058B3E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08058B34
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08058B3E
    .align 2, 0
.L08058B18: .4byte 0x0201774C
.L08058B1C: .4byte 0x08BA1C24
.L08058B20: .4byte 0x081E8378
.L08058B24: .4byte 0x08BA1C3C
.L08058B28: .4byte 0x08BA1C54
.L08058B2C: .4byte 0x0821BBA8
.L08058B30: .4byte 0x0203E02C
.L08058B34:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08058B3E:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08058AC4

    thumb_func_start func_08058B48
func_08058B48: @ 0x08058B48
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L08058B84
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    ldr r5, [r4, #0x54]
    ldr r0, [r4, #0x5c]
    lsls r4, r3, #2
    adds r1, r4, r1
    ldr r1, [r1]
    adds r2, r4, r2
    ldr r2, [r2]
    bl func_080504DC
    adds r4, r4, r5
    ldr r0, [r4]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    b .L08058BA2
.L08058B84:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L08058BA2
    bl func_08050018
    ldr r1, .L08058BA8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08058BA2:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058BA8: .4byte 0x0201774C
    func_end func_08058B48

    thumb_func_start func_08058BAC
func_08058BAC: @ 0x08058BAC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08058C00 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058C04 @ =0x08BA1C6C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08058C08 @ =0x081E83E6
    str r0, [r5, #0x48]
    ldr r0, .L08058C0C @ =0x08BA1C84
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08058C10 @ =0x08BA1CB0
    str r0, [r5, #0x54]
    ldr r0, .L08058C14 @ =0x08213E80
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L08058C18 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08058C26
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08058C1C
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08058C26
    .align 2, 0
.L08058C00: .4byte 0x0201774C
.L08058C04: .4byte 0x08BA1C6C
.L08058C08: .4byte 0x081E83E6
.L08058C0C: .4byte 0x08BA1C84
.L08058C10: .4byte 0x08BA1CB0
.L08058C14: .4byte 0x08213E80
.L08058C18: .4byte 0x0203E02C
.L08058C1C:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08058C26:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08058BAC

    thumb_func_start func_08058C30
func_08058C30: @ 0x08058C30
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L08058C6C
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    ldr r5, [r4, #0x54]
    ldr r0, [r4, #0x5c]
    lsls r4, r3, #2
    adds r1, r4, r1
    ldr r1, [r1]
    adds r2, r4, r2
    ldr r2, [r2]
    bl func_080504DC
    adds r4, r4, r5
    ldr r0, [r4]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    b .L08058C8A
.L08058C6C:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L08058C8A
    bl func_08050018
    ldr r1, .L08058C90 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08058C8A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058C90: .4byte 0x0201774C
    func_end func_08058C30

    thumb_func_start func_08058C94
func_08058C94: @ 0x08058C94
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08058CE4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058CE8 @ =0x08BA1CDC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L08058CEC @ =0x08BB91BC
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldrh r1, [r0, #2]
    adds r1, #0x18
    strh r1, [r0, #2]
    ldr r0, .L08058CF0 @ =0x0826AC3C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08058CF4 @ =0x0821C860
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058CE4: .4byte 0x0201774C
.L08058CE8: .4byte 0x08BA1CDC
.L08058CEC: .4byte 0x08BB91BC
.L08058CF0: .4byte 0x0826AC3C
.L08058CF4: .4byte 0x0821C860
    func_end func_08058C94

    thumb_func_start func_08058CF8
func_08058CF8: @ 0x08058CF8
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x33
    ble .L08058D1E
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L08058D24 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08058D1E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058D24: .4byte 0x0201774C
    func_end func_08058CF8

    thumb_func_start func_08058D28
func_08058D28: @ 0x08058D28
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08058D64 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058D68 @ =0x08BA1CF4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    strh r2, [r0, #0x2e]
    movs r1, #1
    str r1, [r0, #0x44]
    str r2, [r0, #0x48]
    ldr r0, .L08058D6C @ =0x0826AC3C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08058D70 @ =0x0821C860
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08058D64: .4byte 0x0201774C
.L08058D68: .4byte 0x08BA1CF4
.L08058D6C: .4byte 0x0826AC3C
.L08058D70: .4byte 0x0821C860
    func_end func_08058D28

    thumb_func_start func_08058D74
func_08058D74: @ 0x08058D74
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
.L08058D7A:
    ldr r0, [r5, #0x5c]
    adds r1, r4, #0
    bl func_08058DA0
    adds r4, #1
    cmp r4, #0x1b
    ble .L08058D7A
    ldr r1, .L08058D9C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058D9C: .4byte 0x0201774C
    func_end func_08058D74

    thumb_func_start func_08058DA0
func_08058DA0: @ 0x08058DA0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r1
    mov r4, sp
    mov r0, sp
    movs r1, #0
    movs r2, #8
    bl memset
    movs r5, #0
    movs r0, #1
    strb r0, [r4, #6]
    strb r0, [r4, #7]
    ldr r1, .L08058E30 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08058E34 @ =0x08BA1D0C
    movs r1, #3
    bl Proc_Start
    adds r7, r0, #0
    str r6, [r7, #0x5c]
    strh r5, [r7, #0x2c]
    movs r0, #0x64
    strh r0, [r7, #0x2e]
    movs r0, #7
    mov r1, r8
    ands r0, r1
    mov r2, sp
    adds r4, r2, r0
    ldrb r0, [r4]
    adds r1, r7, #0
    adds r1, #0x29
    strb r0, [r1]
    ldr r0, .L08058E38 @ =0x08BB9228
    movs r1, #0x78
    bl AnimCreate
    str r0, [r7, #0x60]
    movs r1, #0xa1
    lsls r1, r1, #6
    strh r1, [r0, #8]
    movs r1, #0x80
    lsls r1, r1, #1
    strh r1, [r0, #2]
    strh r1, [r0, #4]
    ldr r5, .L08058E3C @ =0x0000FFFF
    adds r0, r5, #0
    bl func_080672E8
    strh r0, [r7, #0x32]
    adds r0, r5, #0
    bl func_080672E8
    strh r0, [r7, #0x3a]
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08058E44
    adds r0, r5, #0
    bl func_080672E8
    ldr r2, .L08058E40 @ =0x000001FF
    adds r1, r2, #0
    ands r0, r1
    movs r1, #0xe0
    lsls r1, r1, #3
    b .L08058E56
    .align 2, 0
.L08058E30: .4byte 0x0201774C
.L08058E34: .4byte 0x08BA1D0C
.L08058E38: .4byte 0x08BB9228
.L08058E3C: .4byte 0x0000FFFF
.L08058E40: .4byte 0x000001FF
.L08058E44:
    adds r0, r5, #0
    bl func_080672E8
    ldr r2, .L08058EA0 @ =0x000001FF
    adds r1, r2, #0
    ands r0, r1
    movs r2, #0xa0
    lsls r2, r2, #4
    adds r1, r2, #0
.L08058E56:
    adds r0, r0, r1
    strh r0, [r7, #0x34]
    ldr r4, .L08058EA4 @ =0x0000FF0F
    adds r0, r4, #0
    bl func_080672E8
    ldr r2, .L08058EA8 @ =0x000003FF
    adds r1, r2, #0
    ands r0, r1
    ldr r1, .L08058EAC @ =0xFFFFFF00
    adds r0, r0, r1
    strh r0, [r7, #0x3c]
    adds r0, r4, #0
    bl func_080672E8
    strh r0, [r7, #0x36]
    adds r0, r4, #0
    bl func_080672E8
    strh r0, [r7, #0x3e]
    movs r0, #7
    mov r2, r8
    ands r0, r2
    add r0, sp
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08058EB0
    adds r0, r4, #0
    bl func_080672E8
    ldr r2, .L08058EA0 @ =0x000001FF
    adds r1, r2, #0
    ands r0, r1
    movs r1, #0xe0
    lsls r1, r1, #3
    b .L08058EC2
    .align 2, 0
.L08058EA0: .4byte 0x000001FF
.L08058EA4: .4byte 0x0000FF0F
.L08058EA8: .4byte 0x000003FF
.L08058EAC: .4byte 0xFFFFFF00
.L08058EB0:
    adds r0, r4, #0
    bl func_080672E8
    ldr r2, .L08058EE8 @ =0x000001FF
    adds r1, r2, #0
    ands r0, r1
    movs r2, #0xa0
    lsls r2, r2, #4
    adds r1, r2, #0
.L08058EC2:
    adds r0, r0, r1
    strh r0, [r7, #0x38]
    ldr r0, .L08058EEC @ =0x0000FF0F
    bl func_080672E8
    ldr r2, .L08058EF0 @ =0x000003FF
    adds r1, r2, #0
    ands r0, r1
    ldr r1, .L08058EF4 @ =0xFFFFFF00
    adds r0, r0, r1
    adds r1, r7, #0
    adds r1, #0x40
    strh r0, [r1]
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08058EE8: .4byte 0x000001FF
.L08058EEC: .4byte 0x0000FF0F
.L08058EF0: .4byte 0x000003FF
.L08058EF4: .4byte 0xFFFFFF00
    func_end func_08058DA0

    thumb_func_start func_08058EF8
func_08058EF8: @ 0x08058EF8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r3, [r4, #0x60]
    ldrh r2, [r4, #0x2c]
    adds r2, #1
    strh r2, [r4, #0x2c]
    lsls r1, r2, #0x10
    ldrh r5, [r4, #0x2e]
    lsls r0, r5, #0x10
    cmp r1, r0
    ble .L08058F28
    ldr r1, .L08058F24 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r3, #0
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
    b .L08058FA8
    .align 2, 0
.L08058F24: .4byte 0x0201774C
.L08058F28:
    movs r0, #1
    ands r2, r0
    cmp r2, #0
    bne .L08058F6C
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08058F44
    ldr r0, .L08058F40 @ =0x08BB9288
    b .L08058F46
    .align 2, 0
.L08058F40: .4byte 0x08BB9288
.L08058F44:
    ldr r0, .L08058F68 @ =0x08BB9290
.L08058F46:
    str r0, [r3, #0x24]
    str r0, [r3, #0x20]
    movs r0, #0
    strh r0, [r3, #6]
    ldrh r1, [r4, #0x32]
    ldrh r2, [r4, #0x34]
    adds r0, r1, r2
    strh r0, [r4, #0x32]
    ldrh r5, [r4, #0x3a]
    ldrh r2, [r4, #0x3c]
    adds r1, r5, r2
    strh r1, [r4, #0x3a]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x18
    strh r0, [r3, #2]
    ldrh r4, [r4, #0x3a]
    b .L08058FA4
    .align 2, 0
.L08058F68: .4byte 0x08BB9290
.L08058F6C:
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08058F80
    ldr r0, .L08058F7C @ =0x08BB9288
    b .L08058F82
    .align 2, 0
.L08058F7C: .4byte 0x08BB9288
.L08058F80:
    ldr r0, .L08058FB0 @ =0x08BB9290
.L08058F82:
    str r0, [r3, #0x24]
    str r0, [r3, #0x20]
    movs r0, #0
    strh r0, [r3, #6]
    ldrh r5, [r4, #0x3e]
    ldrh r1, [r4, #0x38]
    adds r0, r5, r1
    strh r0, [r4, #0x3e]
    adds r1, r4, #0
    adds r1, #0x40
    ldrh r1, [r1]
    adds r0, r1, r0
    strh r0, [r4, #0x3e]
    ldrh r2, [r4, #0x36]
    lsrs r0, r2, #8
    strh r0, [r3, #2]
    ldrh r4, [r4, #0x3e]
.L08058FA4:
    lsrs r0, r4, #8
    strh r0, [r3, #4]
.L08058FA8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058FB0: .4byte 0x08BB9290
    func_end func_08058EF8

    thumb_func_start func_08058FB4
func_08058FB4: @ 0x08058FB4
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08058FEC @ =0x08BA1D24
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08058FEC: .4byte 0x08BA1D24
    func_end func_08058FB4

    thumb_func_start func_08058FF0
func_08058FF0: @ 0x08058FF0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805901A
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805901A:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L08059040
    ldr r0, .L08059088 @ =0x00000119
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    adds r0, r5, #0
    bl func_080590B0
    adds r0, r5, #0
    bl func_080591EC
.L08059040:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #0
    adds r0, #0x59
    cmp r1, r0
    bne .L08059056
    adds r0, r5, #0
    movs r1, #2
    movs r2, #3
    bl func_08059320
.L08059056:
    movs r3, #0x2c
    ldrsh r1, [r4, r3]
    adds r0, r6, #0
    adds r0, #0x5e
    cmp r1, r0
    bne .L0805908C
    adds r0, r5, #0
    bl func_08059160
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L080590A8
    adds r0, r5, #0
    bl func_08067D14
    b .L080590A8
    .align 2, 0
.L08059088: .4byte 0x00000119
.L0805908C:
    adds r0, r6, #0
    adds r0, #0xc3
    cmp r1, r0
    beq .L080590A8
    adds r0, #5
    cmp r1, r0
    bne .L080590A8
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L080590A8:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08058FF0

    thumb_func_start func_080590B0
func_080590B0: @ 0x080590B0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L080590EC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080590F0 @ =0x08BA1D3C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L080590F4 @ =0x081E8414
    str r1, [r0, #0x48]
    ldr r1, .L080590F8 @ =0x08BA1D80
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L080590FC @ =0x08BA1D54
    str r1, [r0, #0x54]
    ldr r0, .L08059100 @ =0x0820D584
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080590EC: .4byte 0x0201774C
.L080590F0: .4byte 0x08BA1D3C
.L080590F4: .4byte 0x081E8414
.L080590F8: .4byte 0x08BA1D80
.L080590FC: .4byte 0x08BA1D54
.L08059100: .4byte 0x0820D584
    func_end func_080590B0

    thumb_func_start func_08059104
func_08059104: @ 0x08059104
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L08059140
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L08059156
.L08059140:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L08059156
    ldr r1, .L0805915C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r7, #0
    bl Proc_End
.L08059156:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805915C: .4byte 0x0201774C
    func_end func_08059104

    thumb_func_start func_08059160
func_08059160: @ 0x08059160
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805917C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059180 @ =0x08BA1DAC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805917C: .4byte 0x0201774C
.L08059180: .4byte 0x08BA1DAC
    func_end func_08059160

    thumb_func_start func_08059184
func_08059184: @ 0x08059184
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    ldr r3, .L080591BC @ =0x08BB7280
    str r3, [sp]
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L080591C0 @ =0x081FC634
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L080591C4 @ =0x081FC19C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080591BC: .4byte 0x08BB7280
.L080591C0: .4byte 0x081FC634
.L080591C4: .4byte 0x081FC19C
    func_end func_08059184

    thumb_func_start func_080591C8
func_080591C8: @ 0x080591C8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L080591E8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080591E8: .4byte 0x0201774C
    func_end func_080591C8

    thumb_func_start func_080591EC
func_080591EC: @ 0x080591EC
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08059208 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805920C @ =0x08BA1DD4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08059208: .4byte 0x0201774C
.L0805920C: .4byte 0x08BA1DD4
    func_end func_080591EC

    thumb_func_start func_08059210
func_08059210: @ 0x08059210
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x8d
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
    ldr r0, [r4, #0x5c]
    movs r1, #0x26
    bl func_0804EFDC
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #5
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08059210

    thumb_func_start func_08059244
func_08059244: @ 0x08059244
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r6, r0]
    movs r1, #0x2e
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L080592A0 @ =gPal
    ldr r4, .L080592A4 @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    adds r3, r5, #0
    bl func_08066F64
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r6, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08059298
    movs r0, #0
    strh r0, [r6, #0x2c]
    movs r0, #0xa
    strh r0, [r6, #0x2e]
    adds r0, r6, #0
    bl Proc_Break
.L08059298:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080592A0: .4byte gPal
.L080592A4: .4byte 0x020165C8
    func_end func_08059244

    thumb_func_start func_080592A8
func_080592A8: @ 0x080592A8
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
    bl Interpolate
    ldr r2, .L08059318 @ =gDispIo
    mov ip, r2
    mov r3, ip
    adds r3, #0x3c
    movs r1, #0x3f
    ldrb r2, [r3]
    ands r1, r2
    movs r2, #0x40
    orrs r1, r2
    strb r1, [r3]
    mov r1, ip
    adds r1, #0x44
    movs r2, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #0x10
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x46
    strb r2, [r0]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08059310
    bl func_08050018
    bl func_08050118
    ldr r1, .L0805931C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08059310:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08059318: .4byte gDispIo
.L0805931C: .4byte 0x0201774C
    func_end func_080592A8

    thumb_func_start func_08059320
func_08059320: @ 0x08059320
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r1, .L08059354 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059358 @ =gPal
    ldr r1, .L0805935C @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    bl CpuFastSet
    ldr r0, .L08059360 @ =0x08BA1E14
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
.L08059354: .4byte 0x0201774C
.L08059358: .4byte gPal
.L0805935C: .4byte 0x020165C8
.L08059360: .4byte 0x08BA1E14
    func_end func_08059320

    thumb_func_start func_08059364
func_08059364: @ 0x08059364
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x10
    bl Interpolate
    adds r3, r0, #0
    ldr r4, .L080593C0 @ =0x020165C8
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    bl func_08066EE8
    movs r1, #0xa0
    lsls r1, r1, #0x13
    movs r2, #0x80
    lsls r2, r2, #1
    adds r0, r4, #0
    bl CpuFastSet
    bl DisablePalSync
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L080593B8
    movs r0, #0
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
.L080593B8:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080593C0: .4byte 0x020165C8
    func_end func_08059364

    thumb_func_start func_080593C4
func_080593C4: @ 0x080593C4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08059400 @ =0x020165C8
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
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L080593F8
    ldr r1, .L08059404 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L080593F8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08059400: .4byte 0x020165C8
.L08059404: .4byte 0x0201774C
    func_end func_080593C4

    thumb_func_start func_08059408
func_08059408: @ 0x08059408
    bx lr
    func_end func_08059408

    thumb_func_start func_0805940C
func_0805940C: @ 0x0805940C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08059444 @ =0x08BA1E34
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08059444: .4byte 0x08BA1E34
    func_end func_0805940C

    thumb_func_start func_08059448
func_08059448: @ 0x08059448
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r2, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08059484
    movs r0, #0x85
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
    adds r0, r5, #0
    bl func_08059538
    b .L08059532
.L08059484:
    cmp r0, #0x10
    bne .L08059490
    ldr r0, [r4, #0x5c]
    bl func_080596FC
    b .L08059532
.L08059490:
    cmp r0, #0x4a
    bne .L080594A0
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L08059532
.L080594A0:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r2, #0
    adds r0, #0x4b
    cmp r1, r0
    bne .L080594B6
    adds r0, r5, #0
    bl func_08059740
    str r0, [r4, #0x64]
    b .L08059532
.L080594B6:
    adds r0, r2, #0
    adds r0, #0x5e
    cmp r1, r0
    bne .L080594DC
    ldr r0, .L080594D8 @ =0x000002E1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    ldr r0, [r4, #0x5c]
    bl func_080595E8
    b .L08059532
    .align 2, 0
.L080594D8: .4byte 0x000002E1
.L080594DC:
    adds r0, r2, #0
    adds r0, #0x72
    cmp r1, r0
    bne .L080594EC
    ldr r0, [r4, #0x64]
    bl Proc_End
    b .L08059532
.L080594EC:
    adds r0, r2, #0
    adds r0, #0x83
    cmp r1, r0
    bne .L0805951C
    ldr r0, [r4, #0x5c]
    movs r1, #6
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08059532
    adds r0, r5, #0
    bl func_08067D14
    b .L08059532
.L0805951C:
    adds r0, r2, #0
    adds r0, #0xa4
    cmp r1, r0
    bne .L08059532
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L08059532:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08059448

    thumb_func_start func_08059538
func_08059538: @ 0x08059538
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08059590 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059594 @ =0x08BA1E4C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08059598 @ =0x081E845A
    str r0, [r5, #0x48]
    ldr r0, .L0805959C @ =0x08BA1E64
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L080595A0 @ =0x08BA1F08
    str r0, [r5, #0x54]
    ldr r0, .L080595A4 @ =0x08227108
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r0, .L080595A8 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L080595B6
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L080595AC
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L080595B6
    .align 2, 0
.L08059590: .4byte 0x0201774C
.L08059594: .4byte 0x08BA1E4C
.L08059598: .4byte 0x081E845A
.L0805959C: .4byte 0x08BA1E64
.L080595A0: .4byte 0x08BA1F08
.L080595A4: .4byte 0x08227108
.L080595A8: .4byte 0x0203E02C
.L080595AC:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L080595B6:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L080595CC
    ldr r0, .L080595C8 @ =gDispIo
    ldrh r1, [r0, #0x20]
    adds r1, #4
    b .L080595D2
    .align 2, 0
.L080595C8: .4byte gDispIo
.L080595CC:
    ldr r0, .L080595E4 @ =gDispIo
    ldrh r1, [r0, #0x20]
    subs r1, #4
.L080595D2:
    strh r1, [r0, #0x20]
    adds r1, r0, #0
    ldrh r0, [r1, #0x22]
    adds r0, #8
    strh r0, [r1, #0x22]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080595E4: .4byte gDispIo
    func_end func_08059538

    thumb_func_start func_080595E8
func_080595E8: @ 0x080595E8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08059668 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805966C @ =0x08BA1E4C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r4, #0
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08059670 @ =0x081E848C
    str r0, [r5, #0x48]
    ldr r0, .L08059674 @ =0x08BA1E64
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08059678 @ =0x08BA1F08
    str r0, [r5, #0x54]
    ldr r0, .L0805967C @ =0x08227128
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r3, .L08059680 @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    movs r0, #0xa
    strb r0, [r1]
    adds r1, #1
    movs r0, #7
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r4, [r0]
    ldr r0, .L08059684 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08059692
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08059688
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L08059692
    .align 2, 0
.L08059668: .4byte 0x0201774C
.L0805966C: .4byte 0x08BA1E4C
.L08059670: .4byte 0x081E848C
.L08059674: .4byte 0x08BA1E64
.L08059678: .4byte 0x08BA1F08
.L0805967C: .4byte 0x08227128
.L08059680: .4byte gDispIo
.L08059684: .4byte 0x0203E02C
.L08059688:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L08059692:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080595E8

    thumb_func_start func_08059698
func_08059698: @ 0x08059698
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L080596D4
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L080596F2
.L080596D4:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L080596F2
    bl func_08050018
    ldr r1, .L080596F8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_End
.L080596F2:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080596F8: .4byte 0x0201774C
    func_end func_08059698

    thumb_func_start func_080596FC
func_080596FC: @ 0x080596FC
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08059734 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059738 @ =0x08BA1FAC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    adds r0, r5, #0
    bl GetAnimAnotherSide
    ldr r3, .L0805973C @ =0x08BA14DC
    ldr r0, [r4, #0x5c]
    str r3, [sp]
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08059734: .4byte 0x0201774C
.L08059738: .4byte 0x08BA1FAC
.L0805973C: .4byte 0x08BA14DC
    func_end func_080596FC

    thumb_func_start func_08059740
func_08059740: @ 0x08059740
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08059780 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059784 @ =0x08BA1FF4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    adds r0, r5, #0
    bl GetAnimAnotherSide
    ldr r3, .L08059788 @ =0x08BA14DC
    ldr r0, [r4, #0x5c]
    str r3, [sp]
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldrh r1, [r0, #4]
    subs r1, #4
    strh r1, [r0, #4]
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08059780: .4byte 0x0201774C
.L08059784: .4byte 0x08BA1FF4
.L08059788: .4byte 0x08BA14DC
    func_end func_08059740

    thumb_func_start func_0805978C
func_0805978C: @ 0x0805978C
    push {lr}
    ldr r2, .L080597A0 @ =0x0201774C
    ldr r1, [r2]
    subs r1, #1
    str r1, [r2]
    ldr r0, [r0, #0x60]
    bl AnimDelete
    pop {r0}
    bx r0
    .align 2, 0
.L080597A0: .4byte 0x0201774C
    func_end func_0805978C

    thumb_func_start func_080597A4
func_080597A4: @ 0x080597A4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L080597D4 @ =0x08BB94FC
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L080597D8 @ =0x0822A25C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L080597DC @ =0x08229664
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080597D4: .4byte 0x08BB94FC
.L080597D8: .4byte 0x0822A25C
.L080597DC: .4byte 0x08229664
    func_end func_080597A4

    thumb_func_start func_080597E0
func_080597E0: @ 0x080597E0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L08059810 @ =0x08BB9680
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L08059814 @ =0x0822A25C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08059818 @ =0x08229A64
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08059810: .4byte 0x08BB9680
.L08059814: .4byte 0x0822A25C
.L08059818: .4byte 0x08229A64
    func_end func_080597E0

    thumb_func_start func_0805981C
func_0805981C: @ 0x0805981C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805984C @ =0x08BB9B34
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L08059850 @ =0x0822A25C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08059854 @ =0x08229EA4
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805984C: .4byte 0x08BB9B34
.L08059850: .4byte 0x0822A25C
.L08059854: .4byte 0x08229EA4
    func_end func_0805981C

    thumb_func_start func_08059858
func_08059858: @ 0x08059858
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L08059880 @ =0x08BB9A78
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    movs r0, #0x14
    strh r0, [r1, #0xa]
    bl AnimSort
    movs r0, #0x27
    strh r0, [r4, #0x2c]
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08059880: .4byte 0x08BB9A78
    func_end func_08059858

    thumb_func_start func_08059884
func_08059884: @ 0x08059884
    adds r1, r0, #0
    ldr r2, [r1, #0x60]
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    movs r3, #0
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x28
    bne .L080598A2
    ldr r0, .L080598A4 @ =0x08BB9AAC
    str r0, [r2, #0x24]
    str r0, [r2, #0x20]
    strh r3, [r2, #6]
    strh r3, [r1, #0x2c]
.L080598A2:
    bx lr
    .align 2, 0
.L080598A4: .4byte 0x08BB9AAC
    func_end func_08059884

    thumb_func_start func_080598A8
func_080598A8: @ 0x080598A8
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L080598E0 @ =0x08BA2024
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080598E0: .4byte 0x08BA2024
    func_end func_080598A8

    thumb_func_start func_080598E4
func_080598E4: @ 0x080598E4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    bl func_08050778
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805991A
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805991A:
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    adds r0, r5, #1
    cmp r1, r0
    bne .L08059978
    ldr r3, .L08059974 @ =gDispIo
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
    mov r2, r8
    strb r2, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r2, [r0]
    str r1, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0
    movs r2, #0xa
    movs r3, #0
    bl func_08055F08
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x23
    movs r2, #0x14
    movs r3, #0x10
    bl func_08055F08
    adds r0, r6, #0
    bl func_08059AB4
    movs r0, #0x92
    lsls r0, r0, #1
    b .L080599C6
    .align 2, 0
.L08059974: .4byte gDispIo
.L08059978:
    adds r0, r5, #0
    adds r0, #0xf
    cmp r1, r0
    bne .L080599B0
    movs r0, #2
    str r0, [sp]
    adds r0, r6, #0
    movs r1, #0x2a
    movs r2, #0xf
    movs r3, #0
    bl func_080558BC
    adds r1, r0, #0
    adds r0, r6, #0
    movs r2, #0x1e
    bl func_08059DAC
    ldr r0, .L080599AC @ =gDispIo
    movs r1, #0x20
    ldrsh r2, [r0, r1]
    adds r0, r6, #0
    movs r1, #0x2b
    movs r3, #0
    bl func_08055CD0
    b .L08059A1C
    .align 2, 0
.L080599AC: .4byte gDispIo
.L080599B0:
    adds r0, r5, #0
    adds r0, #0x3c
    cmp r1, r0
    bne .L080599DC
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r1, [r0]
    adds r0, r6, #0
    bl func_08059A28
    ldr r0, .L080599D8 @ =0x00000125
.L080599C6:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r3, #1
    bl func_080681E4
    b .L08059A1C
    .align 2, 0
.L080599D8: .4byte 0x00000125
.L080599DC:
    adds r0, r5, #0
    adds r0, #0x41
    cmp r1, r0
    bne .L08059A04
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r6, #0
    bl func_080502EC
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08059A1C
    adds r0, r6, #0
    bl func_08067D14
    b .L08059A1C
.L08059A04:
    adds r0, r5, #0
    adds r0, #0x6e
    cmp r1, r0
    beq .L08059A1C
    adds r0, #0x14
    cmp r1, r0
    bne .L08059A1C
    bl func_0804FFFC
    adds r0, r4, #0
    bl Proc_Break
.L08059A1C:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080598E4

    thumb_func_start func_08059A28
func_08059A28: @ 0x08059A28
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L08059A88 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059A8C @ =0x08BA203C
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r4, [r6, #0x5c]
    adds r1, r6, #0
    adds r1, #0x29
    movs r0, #0
    strb r5, [r1]
    strh r0, [r6, #0x2c]
    str r0, [r6, #0x44]
    ldr r0, .L08059A90 @ =0x081E8502
    str r0, [r6, #0x48]
    ldr r0, .L08059A94 @ =0x08BA2150
    str r0, [r6, #0x4c]
    str r0, [r6, #0x50]
    ldr r0, .L08059A98 @ =0x08BA2084
    str r0, [r6, #0x54]
    ldr r0, .L08059A9C @ =0x08232BB0
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r0, .L08059AA0 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08059AAE
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08059AA4
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08059AAE
    .align 2, 0
.L08059A88: .4byte 0x0201774C
.L08059A8C: .4byte 0x08BA203C
.L08059A90: .4byte 0x081E8502
.L08059A94: .4byte 0x08BA2150
.L08059A98: .4byte 0x08BA2084
.L08059A9C: .4byte 0x08232BB0
.L08059AA0: .4byte 0x0203E02C
.L08059AA4:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08059AAE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08059A28

    thumb_func_start func_08059AB4
func_08059AB4: @ 0x08059AB4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08059B24 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059B28 @ =0x08BA206C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08059B2C @ =0x081E85CE
    str r0, [r5, #0x48]
    ldr r0, .L08059B30 @ =0x08BA2150
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08059B34 @ =0x08BA2084
    str r0, [r5, #0x54]
    ldr r0, .L08059B38 @ =0x08232BB0
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r2, .L08059B3C @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    ldr r0, .L08059B40 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08059B4E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08059B44
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08059B4E
    .align 2, 0
.L08059B24: .4byte 0x0201774C
.L08059B28: .4byte 0x08BA206C
.L08059B2C: .4byte 0x081E85CE
.L08059B30: .4byte 0x08BA2150
.L08059B34: .4byte 0x08BA2084
.L08059B38: .4byte 0x08232BB0
.L08059B3C: .4byte gDispIo
.L08059B40: .4byte 0x0203E02C
.L08059B44:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08059B4E:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08059AB4

    thumb_func_start func_08059B54
func_08059B54: @ 0x08059B54
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L08059B90
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L08059BD2
.L08059B90:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L08059BD2
    bl func_08050018
    adds r0, r7, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #1
    bne .L08059BC4
    ldr r1, .L08059BC0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    bl func_0804FBC4
    adds r0, r7, #0
    bl Proc_End
    b .L08059BD2
    .align 2, 0
.L08059BC0: .4byte 0x0201774C
.L08059BC4:
    movs r0, #0
    strh r0, [r7, #0x2c]
    movs r0, #1
    strh r0, [r7, #0x2e]
    adds r0, r7, #0
    bl Proc_Break
.L08059BD2:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08059B54

    thumb_func_start func_08059BD8
func_08059BD8: @ 0x08059BD8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L08059BFC @ =0x02017750
    ldr r0, [r5]
    cmp r0, #2
    bne .L08059C04
    ldr r1, .L08059C00 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_End
    b .L08059C5E
    .align 2, 0
.L08059BFC: .4byte 0x02017750
.L08059C00: .4byte 0x0201774C
.L08059C04:
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r3, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    movs r1, #0x2e
    ldrsh r2, [r4, r1]
    ldrh r1, [r4, #0x2e]
    cmp r0, r2
    ble .L08059C1C
    strh r1, [r4, #0x2c]
.L08059C1C:
    movs r1, #0x2c
    ldrsh r0, [r4, r1]
    cmp r0, r2
    bne .L08059C5E
    ldr r0, [r5]
    cmp r0, #1
    bne .L08059C5E
    strh r3, [r4, #0x2c]
    strh r3, [r4, #0x2e]
    str r3, [r4, #0x44]
    ldr r0, .L08059C64 @ =0x081E8570
    str r0, [r4, #0x48]
    ldr r0, .L08059C68 @ =0x08BA2150
    str r0, [r4, #0x4c]
    str r0, [r4, #0x50]
    ldr r0, .L08059C6C @ =0x08BA2084
    str r0, [r4, #0x54]
    ldr r0, .L08059C70 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08059C58
    bl func_08050778
    strh r0, [r4, #0x2e]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L08059C58:
    adds r0, r4, #0
    bl Proc_Break
.L08059C5E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08059C64: .4byte 0x081E8570
.L08059C68: .4byte 0x08BA2150
.L08059C6C: .4byte 0x08BA2084
.L08059C70: .4byte 0x0203E02C
    func_end func_08059BD8

    thumb_func_start func_08059C74
func_08059C74: @ 0x08059C74
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08059CDA
    ldr r0, .L08059CB0 @ =0x0203E02C
    movs r3, #0
    ldrsh r0, [r0, r3]
    cmp r0, #0
    beq .L08059CBE
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08059CB4
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L08059CBE
    .align 2, 0
.L08059CB0: .4byte 0x0203E02C
.L08059CB4:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L08059CBE:
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x93
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    adds r0, r4, #0
    bl Proc_Break
.L08059CDA:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08059C74

    thumb_func_start func_08059CE0
func_08059CE0: @ 0x08059CE0
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L08059D1C
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L08059D3E
.L08059D1C:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L08059D3E
    bl func_08050018
    ldr r1, .L08059D44 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    bl func_0804FBC4
    adds r0, r7, #0
    bl Proc_Break
.L08059D3E:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08059D44: .4byte 0x0201774C
    func_end func_08059CE0

    thumb_func_start func_08059D48
func_08059D48: @ 0x08059D48
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L08059D84
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L08059DA2
.L08059D84:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L08059DA2
    bl func_08050018
    ldr r1, .L08059DA8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_Break
.L08059DA2:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08059DA8: .4byte 0x0201774C
    func_end func_08059D48

    thumb_func_start func_08059DAC
func_08059DAC: @ 0x08059DAC
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r1, .L08059DD4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059DD8 @ =0x08BA221C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    str r6, [r0, #0x64]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08059DD4: .4byte 0x0201774C
.L08059DD8: .4byte 0x08BA221C
    func_end func_08059DAC

    thumb_func_start func_08059DDC
func_08059DDC: @ 0x08059DDC
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r4, [r5, #0x64]
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #4
    movs r1, #0
    movs r2, #0x80
    bl Interpolate
    str r0, [r4, #0x4c]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08059E18
    ldr r1, .L08059E20 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L08059E18:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08059E20: .4byte 0x0201774C
    func_end func_08059DDC

    thumb_func_start func_08059E24
func_08059E24: @ 0x08059E24
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08059E5C @ =0x08BA2234
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08059E5C: .4byte 0x08BA2234
    func_end func_08059E24

    thumb_func_start func_08059E60
func_08059E60: @ 0x08059E60
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08059E8A
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L08059E8A:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L08059EAE
    movs r0, #0x90
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    adds r0, r5, #0
    bl func_08059F18
    b .L08059F10
.L08059EAE:
    adds r0, r6, #0
    adds r0, #0x1a
    cmp r1, r0
    bne .L08059EF4
    ldr r0, .L08059EF0 @ =0x00000121
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    ldr r0, [r4, #0x5c]
    movs r1, #4
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08059F10
    adds r0, r5, #0
    bl func_08067D14
    b .L08059F10
    .align 2, 0
.L08059EF0: .4byte 0x00000121
.L08059EF4:
    adds r0, r6, #0
    adds r0, #0x2f
    cmp r1, r0
    beq .L08059F10
    adds r0, #1
    cmp r1, r0
    bne .L08059F10
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L08059F10:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08059E60

    thumb_func_start func_08059F18
func_08059F18: @ 0x08059F18
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08059F6C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08059F70 @ =0x08BA224C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08059F74 @ =0x081E85D4
    str r0, [r5, #0x48]
    ldr r0, .L08059F78 @ =0x08BA236C
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08059F7C @ =0x08BA2264
    str r0, [r5, #0x54]
    ldr r0, .L08059F80 @ =0x08BA22E8
    str r0, [r5, #0x58]
    bl func_08050040
    ldr r0, .L08059F84 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08059F92
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08059F88
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08059F92
    .align 2, 0
.L08059F6C: .4byte 0x0201774C
.L08059F70: .4byte 0x08BA224C
.L08059F74: .4byte 0x081E85D4
.L08059F78: .4byte 0x08BA236C
.L08059F7C: .4byte 0x08BA2264
.L08059F80: .4byte 0x08BA22E8
.L08059F84: .4byte 0x0203E02C
.L08059F88:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08059F92:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08059F18

    thumb_func_start func_08059F98
func_08059F98: @ 0x08059F98
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r5, r0, #0x10
    cmp r5, #0
    blt .L0805A020
    ldr r6, [r7, #0x4c]
    ldr r0, [r7, #0x50]
    mov r8, r0
    ldr r0, [r7, #0x54]
    ldr r4, [r7, #0x58]
    lsls r5, r5, #2
    adds r0, r5, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    adds r4, r5, r4
    ldr r0, [r4]
    movs r1, #0x20
    bl func_08050634
    ldr r0, [r7, #0x5c]
    adds r6, r5, r6
    ldr r1, [r6]
    add r5, r8
    ldr r2, [r5]
    bl func_080504DC
    ldr r0, .L0805A000 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805A03E
    ldr r0, [r7, #0x5c]
    bl GetAnimPosition
    adds r1, r0, #0
    cmp r1, #0
    bne .L0805A008
    ldr r0, .L0805A004 @ =gBg1Tm
    b .L0805A00C
    .align 2, 0
.L0805A000: .4byte 0x0203E02C
.L0805A004: .4byte gBg1Tm
.L0805A008:
    ldr r0, .L0805A01C @ =0x0202349A
    movs r1, #0
.L0805A00C:
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
    b .L0805A03E
    .align 2, 0
.L0805A01C: .4byte 0x0202349A
.L0805A020:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0805A03E
    bl func_08050018
    ldr r1, .L0805A04C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_End
.L0805A03E:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A04C: .4byte 0x0201774C
    func_end func_08059F98

    thumb_func_start func_0805A050
func_0805A050: @ 0x0805A050
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805A08C @ =0x08BA23F0
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r6, #0
    strh r6, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    ldr r0, .L0805A090 @ =0x02020038
    str r6, [r0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A08C: .4byte 0x08BA23F0
.L0805A090: .4byte 0x02020038
    func_end func_0805A050

    thumb_func_start func_0805A094
func_0805A094: @ 0x0805A094
    push {lr}
    adds r2, r0, #0
    adds r3, r1, #0
    ldr r0, .L0805A0B0 @ =0x02020038
    ldr r0, [r0]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L0805A0B4
    adds r1, #0xff
    movs r0, #0xfe
    bl func_080681E4
    b .L0805A0BE
    .align 2, 0
.L0805A0B0: .4byte 0x02020038
.L0805A0B4:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0xff
    bl func_080681E4
.L0805A0BE:
    ldr r1, .L0805A0CC @ =0x02020038
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L0805A0CC: .4byte 0x02020038
    func_end func_0805A094

    thumb_func_start func_0805A0D0
func_0805A0D0: @ 0x0805A0D0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r4, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805A0FE
    ldr r0, [r6, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805A0FE:
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    adds r0, r4, #1
    cmp r1, r0
    bne .L0805A120
    adds r0, r5, #0
    movs r1, #4
    bl func_0804EFDC
    adds r0, r5, #0
    bl func_0805A200
    adds r0, r5, #0
    bl func_0805A2CC
    movs r0, #0x30
    b .L0805A146
.L0805A120:
    adds r0, r4, #0
    adds r0, #0x15
    cmp r1, r0
    bne .L0805A134
    adds r0, r5, #0
    movs r1, #4
    bl func_0804EFDC
    movs r0, #0xa0
    b .L0805A146
.L0805A134:
    adds r0, r4, #0
    adds r0, #0x29
    cmp r1, r0
    bne .L0805A14E
    adds r0, r5, #0
    movs r1, #4
    bl func_0804EFDC
    movs r0, #0x70
.L0805A146:
    movs r1, #0
    bl func_0805A094
    b .L0805A1F8
.L0805A14E:
    adds r0, r4, #0
    adds r0, #0x3d
    cmp r1, r0
    bne .L0805A182
    adds r0, r5, #0
    movs r1, #4
    bl func_0804EFDC
    movs r0, #0x10
    str r0, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #3
    movs r2, #0xa
    movs r3, #0
    bl func_08055F08
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    adds r0, r1, #0
    movs r3, #1
    bl func_080681E4
    b .L0805A1F8
.L0805A182:
    adds r0, r4, #0
    adds r0, #0x5e
    cmp r1, r0
    bne .L0805A1C8
    adds r0, r5, #0
    movs r1, #4
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, r6, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldr r0, .L0805A1C4 @ =0x00000101
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805A1F8
    adds r0, r5, #0
    bl func_08067D14
    b .L0805A1F8
    .align 2, 0
.L0805A1C4: .4byte 0x00000101
.L0805A1C8:
    adds r0, r4, #0
    adds r0, #0x69
    cmp r1, r0
    bne .L0805A1E2
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x14
    movs r3, #8
    bl func_08055F08
    b .L0805A1F8
.L0805A1E2:
    adds r0, r4, #0
    adds r0, #0x71
    cmp r1, r0
    bne .L0805A1F8
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
.L0805A1F8:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805A0D0

    thumb_func_start func_0805A200
func_0805A200: @ 0x0805A200
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805A238 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A23C @ =0x08BA2408
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805A240 @ =0x081E865A
    str r1, [r0, #0x48]
    ldr r1, .L0805A244 @ =0x08BA2690
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805A248 @ =0x08BA2420
    str r1, [r0, #0x54]
    ldr r1, .L0805A24C @ =0x08BA2558
    str r1, [r0, #0x58]
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A238: .4byte 0x0201774C
.L0805A23C: .4byte 0x08BA2408
.L0805A240: .4byte 0x081E865A
.L0805A244: .4byte 0x08BA2690
.L0805A248: .4byte 0x08BA2420
.L0805A24C: .4byte 0x08BA2558
    func_end func_0805A200

    thumb_func_start func_0805A250
func_0805A250: @ 0x0805A250
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r5, r0, #0x10
    cmp r5, #0
    blt .L0805A29E
    ldr r6, [r7, #0x4c]
    ldr r0, [r7, #0x50]
    mov r8, r0
    ldr r0, [r7, #0x54]
    ldr r4, [r7, #0x58]
    lsls r5, r5, #2
    adds r0, r5, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    adds r4, r5, r4
    ldr r0, [r4]
    movs r1, #0x20
    bl func_08050634
    ldr r0, [r7, #0x5c]
    adds r6, r5, r6
    ldr r1, [r6]
    add r5, r8
    ldr r2, [r5]
    bl func_080504DC
    b .L0805A2BC
.L0805A29E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0805A2BC
    bl func_08050018
    ldr r1, .L0805A2C8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_End
.L0805A2BC:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A2C8: .4byte 0x0201774C
    func_end func_0805A250

    thumb_func_start func_0805A2CC
func_0805A2CC: @ 0x0805A2CC
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805A2F8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A2FC @ =0x08BA27C8
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    movs r1, #7
    str r1, [r0, #0x44]
    strh r2, [r0, #0x2e]
    movs r1, #6
    str r1, [r0, #0x48]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A2F8: .4byte 0x0201774C
.L0805A2FC: .4byte 0x08BA27C8
    func_end func_0805A2CC

    thumb_func_start func_0805A300
func_0805A300: @ 0x0805A300
    push {r4, r5, lr}
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r5, #0x44]
    cmp r0, r1
    ble .L0805A35C
    movs r0, #0
    strh r0, [r5, #0x2c]
    ldr r2, .L0805A364 @ =0x08BA27E8
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    lsls r1, r0, #3
    adds r1, r1, r2
    ldr r4, [r1]
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r2, [r0]
    ldr r0, [r5, #0x60]
    adds r1, r4, #0
    bl func_0805A36C
    adds r0, r4, #0
    movs r1, #1
    bl func_0805A094
    ldrh r0, [r5, #0x2e]
    adds r0, #1
    strh r0, [r5, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r5, #0x48]
    cmp r0, r1
    ble .L0805A35C
    ldr r1, .L0805A368 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L0805A35C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A364: .4byte 0x08BA27E8
.L0805A368: .4byte 0x0201774C
    func_end func_0805A300

    thumb_func_start func_0805A36C
func_0805A36C: @ 0x0805A36C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    ldr r1, .L0805A3C4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A3C8 @ =0x08BA2820
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L0805A3CC @ =0x08BBB964
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    strh r6, [r0, #2]
    mov r1, r8
    strh r1, [r0, #4]
    ldr r0, .L0805A3D0 @ =0x08269CD8
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805A3D4 @ =0x08269A14
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A3C4: .4byte 0x0201774C
.L0805A3C8: .4byte 0x08BA2820
.L0805A3CC: .4byte 0x08BBB964
.L0805A3D0: .4byte 0x08269CD8
.L0805A3D4: .4byte 0x08269A14
    func_end func_0805A36C

    thumb_func_start func_0805A3D8
func_0805A3D8: @ 0x0805A3D8
    push {lr}
    ldr r0, [r0, #0x60]
    bl AnimDelete
    ldr r1, .L0805A3EC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L0805A3EC: .4byte 0x0201774C
    func_end func_0805A3D8

    thumb_func_start func_0805A3F0
func_0805A3F0: @ 0x0805A3F0
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805A428 @ =0x08BA2840
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A428: .4byte 0x08BA2840
    func_end func_0805A3F0

    thumb_func_start func_0805A42C
func_0805A42C: @ 0x0805A42C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    mov r8, r0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805A45E
    ldr r0, [r6, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805A45E:
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    mov r0, r8
    adds r0, #1
    cmp r1, r0
    bne .L0805A480
    adds r0, r5, #0
    movs r1, #0x82
    bl func_0805AB44
    ldr r0, .L0805A4A4 @ =0x000002CA
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
.L0805A480:
    movs r2, #0x2c
    ldrsh r1, [r6, r2]
    mov r0, r8
    adds r0, #0x32
    movs r2, #0x29
    adds r2, r2, r6
    mov sb, r2
    cmp r1, r0
    bne .L0805A4FE
    ldrb r0, [r2]
    cmp r0, #0
    bne .L0805A4A8
    adds r0, r5, #0
    movs r1, #0xcd
    movs r2, #0xa
    bl func_080561D0
    b .L0805A4B2
    .align 2, 0
.L0805A4A4: .4byte 0x000002CA
.L0805A4A8:
    adds r0, r5, #0
    movs r1, #0x69
    movs r2, #0xa
    bl func_080561D0
.L0805A4B2:
    adds r0, r5, #0
    movs r1, #0x28
    bl func_0805AA7C
    ldr r3, .L0805A5DC @ =gDispIo
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
    movs r4, #0
    strb r4, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r4, [r0]
    str r1, [sp]
    str r4, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #8
    movs r3, #0
    bl func_08055F08
    str r4, [sp]
    str r4, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x20
    movs r2, #8
    movs r3, #0x10
    bl func_08055F08
.L0805A4FE:
    movs r2, #0x2c
    ldrsh r1, [r6, r2]
    mov r0, r8
    adds r0, #0x64
    cmp r1, r0
    bne .L0805A51A
    adds r0, r5, #0
    movs r1, #0x34
    bl func_0805A62C
    adds r0, r5, #0
    movs r1, #0x34
    bl func_0805A6F8
.L0805A51A:
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    mov r0, r8
    adds r0, #0x78
    cmp r1, r0
    bne .L0805A530
    adds r0, r5, #0
    movs r1, #0x23
    movs r2, #0x19
    bl func_0805ADF0
.L0805A530:
    mov r2, sb
    ldrb r7, [r2]
    cmp r7, #0
    bne .L0805A5E4
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    mov r0, r8
    adds r0, #0x9b
    cmp r1, r0
    bne .L0805A5C0
    movs r0, #9
    movs r4, #0
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    ldrb r1, [r2]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    adds r0, r5, #0
    bl func_08067D14
    adds r0, r5, #0
    movs r1, #0x3c
    bl func_0805A864
    ldr r3, .L0805A5DC @ =gDispIo
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
    strb r4, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r4, [r0]
    movs r0, #0xc
    str r0, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #5
    movs r3, #0
    bl func_08055F08
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x3c
    movs r2, #0x1e
    movs r3, #0xc
    bl func_08055F08
    adds r0, r5, #0
    bl func_0805A78C
    ldr r0, .L0805A5E0 @ =0x000002CB
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
.L0805A5C0:
    movs r2, #0x2c
    ldrsh r1, [r6, r2]
    mov r0, r8
    adds r0, #0xff
    cmp r1, r0
    bne .L0805A61C
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
    b .L0805A61C
    .align 2, 0
.L0805A5DC: .4byte gDispIo
.L0805A5E0: .4byte 0x000002CB
.L0805A5E4:
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    mov r0, r8
    adds r0, #0x9b
    cmp r1, r0
    bne .L0805A602
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    mov r2, sb
    ldrb r1, [r2]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
.L0805A602:
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    mov r0, r8
    adds r0, #0xa0
    cmp r1, r0
    bne .L0805A61C
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
.L0805A61C:
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805A42C

    thumb_func_start func_0805A62C
func_0805A62C: @ 0x0805A62C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805A66C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A670 @ =0x08BA2858
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    strh r5, [r0, #0x30]
    str r1, [r0, #0x44]
    ldr r1, .L0805A674 @ =0x081E87D0
    str r1, [r0, #0x48]
    ldr r1, .L0805A678 @ =0x08BA2870
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L0805A67C @ =0x0827C2E4
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A66C: .4byte 0x0201774C
.L0805A670: .4byte 0x08BA2858
.L0805A674: .4byte 0x081E87D0
.L0805A678: .4byte 0x08BA2870
.L0805A67C: .4byte 0x0827C2E4
    func_end func_0805A62C

    thumb_func_start func_0805A680
func_0805A680: @ 0x0805A680
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0805A6BE
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    ldr r0, .L0805A6EC @ =0x0202349C
    ldr r1, .L0805A6F0 @ =0x0000011F
    str r1, [sp]
    movs r1, #2
    movs r2, #0x14
    movs r3, #1
    bl func_080669B4
.L0805A6BE:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805A6E4
    bl func_08050018
    ldr r1, .L0805A6F4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805A6E4:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A6EC: .4byte 0x0202349C
.L0805A6F0: .4byte 0x0000011F
.L0805A6F4: .4byte 0x0201774C
    func_end func_0805A680

    thumb_func_start func_0805A6F8
func_0805A6F8: @ 0x0805A6F8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805A730 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A734 @ =0x08BA28A0
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    strh r5, [r0, #0x30]
    str r1, [r0, #0x44]
    ldr r1, .L0805A738 @ =0x081E8802
    str r1, [r0, #0x48]
    ldr r1, .L0805A73C @ =0x0827DC34
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A730: .4byte 0x0201774C
.L0805A734: .4byte 0x08BA28A0
.L0805A738: .4byte 0x081E8802
.L0805A73C: .4byte 0x0827DC34
    func_end func_0805A6F8

    thumb_func_start func_0805A740
func_0805A740: @ 0x0805A740
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805A764
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
.L0805A764:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805A782
    ldr r1, .L0805A788 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805A782:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A788: .4byte 0x0201774C
    func_end func_0805A740

    thumb_func_start func_0805A78C
func_0805A78C: @ 0x0805A78C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805A7C8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A7CC @ =0x08BA28C0
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805A7D0 @ =0x081E8814
    str r1, [r0, #0x48]
    ldr r1, .L0805A7D4 @ =0x08BA28D8
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805A7D8 @ =0x08BA28EC
    str r1, [r0, #0x54]
    ldr r0, .L0805A7DC @ =0x082871D8
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A7C8: .4byte 0x0201774C
.L0805A7CC: .4byte 0x08BA28C0
.L0805A7D0: .4byte 0x081E8814
.L0805A7D4: .4byte 0x08BA28D8
.L0805A7D8: .4byte 0x08BA28EC
.L0805A7DC: .4byte 0x082871D8
    func_end func_0805A78C

    thumb_func_start func_0805A7E0
func_0805A7E0: @ 0x0805A7E0
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L0805A838
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    ldr r0, .L0805A830 @ =0x0202349C
    ldr r1, .L0805A834 @ =0x0000011F
    str r1, [sp]
    movs r1, #2
    movs r2, #0x14
    movs r3, #1
    bl func_080669B4
    b .L0805A856
    .align 2, 0
.L0805A830: .4byte 0x0202349C
.L0805A834: .4byte 0x0000011F
.L0805A838:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L0805A856
    bl func_08050018
    ldr r1, .L0805A860 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_Break
.L0805A856:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A860: .4byte 0x0201774C
    func_end func_0805A7E0

    thumb_func_start func_0805A864
func_0805A864: @ 0x0805A864
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805A8A4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A8A8 @ =0x08BA2900
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    strh r2, [r0, #0x2e]
    strh r5, [r0, #0x30]
    movs r1, #2
    str r1, [r0, #0x44]
    str r2, [r0, #0x48]
    ldr r0, .L0805A8AC @ =0x0828E1DC
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    ldr r0, .L0805A8B0 @ =0x0828EA64
    movs r1, #0x20
    bl func_080505F0
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805A8A4: .4byte 0x0201774C
.L0805A8A8: .4byte 0x08BA2900
.L0805A8AC: .4byte 0x0828E1DC
.L0805A8B0: .4byte 0x0828EA64
    func_end func_0805A864

    thumb_func_start func_0805A8B4
func_0805A8B4: @ 0x0805A8B4
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805A8DC
    ldr r1, .L0805A8D8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
    b .L0805A920
    .align 2, 0
.L0805A8D8: .4byte 0x0201774C
.L0805A8DC:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r4, #0x44]
    cmp r0, r1
    bne .L0805A920
    movs r0, #0
    strh r0, [r4, #0x2e]
    movs r0, #2
    str r0, [r4, #0x44]
    bl func_08004CC4
    cmp r0, #4
    ble .L0805A90A
    ldr r0, [r4, #0x5c]
    ldr r2, [r4, #0x48]
    adds r1, r2, #0
    adds r2, #1
    str r2, [r4, #0x48]
    bl func_0805A928
.L0805A90A:
    bl func_08004CC4
    cmp r0, #4
    ble .L0805A920
    ldr r0, [r4, #0x5c]
    ldr r2, [r4, #0x48]
    adds r1, r2, #0
    adds r2, #1
    str r2, [r4, #0x48]
    bl func_0805A928
.L0805A920:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805A8B4

    thumb_func_start func_0805A928
func_0805A928: @ 0x0805A928
    push {r4, r5, r6, r7, lr}
    sub sp, #0x90
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L0805A994 @ =0x081E88CA
    mov r0, sp
    movs r2, #0x10
    bl memcpy
    add r4, sp, #0x10
    ldr r1, .L0805A998 @ =0x081E88DA
    adds r0, r4, #0
    movs r2, #0x80
    bl memcpy
    ldr r1, .L0805A99C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805A9A0 @ =0x08BA2918
    movs r1, #3
    bl Proc_Start
    adds r7, r0, #0
    str r5, [r7, #0x5c]
    movs r5, #0
    strh r5, [r7, #0x2c]
    movs r0, #7
    ands r0, r6
    lsls r0, r0, #1
    add r0, sp
    ldrh r0, [r0]
    strh r0, [r7, #0x2e]
    movs r0, #0xe0
    bl func_080672E8
    adds r0, #8
    strh r0, [r7, #0x32]
    strh r5, [r7, #0x3a]
    movs r1, #0
    movs r0, #0x3f
    ands r0, r6
    lsls r0, r0, #1
    adds r4, r4, r0
    movs r2, #0
    ldrsh r0, [r4, r2]
    cmp r0, #5
    bhi .L0805A9F4
    lsls r0, r0, #2
    ldr r1, .L0805A9A4 @ =.L0805A9A8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0805A994: .4byte 0x081E88CA
.L0805A998: .4byte 0x081E88DA
.L0805A99C: .4byte 0x0201774C
.L0805A9A0: .4byte 0x08BA2918
.L0805A9A4: .4byte .L0805A9A8
.L0805A9A8: @ jump table
    .4byte .L0805A9C0 @ case 0
    .4byte .L0805A9C8 @ case 1
    .4byte .L0805A9D0 @ case 2
    .4byte .L0805A9D8 @ case 3
    .4byte .L0805A9E0 @ case 4
    .4byte .L0805A9E8 @ case 5
.L0805A9C0:
    ldr r0, .L0805A9C4 @ =0x08BD2478
    b .L0805A9EA
    .align 2, 0
.L0805A9C4: .4byte 0x08BD2478
.L0805A9C8:
    ldr r0, .L0805A9CC @ =0x08BD2470
    b .L0805A9EA
    .align 2, 0
.L0805A9CC: .4byte 0x08BD2470
.L0805A9D0:
    ldr r0, .L0805A9D4 @ =0x08BD2468
    b .L0805A9EA
    .align 2, 0
.L0805A9D4: .4byte 0x08BD2468
.L0805A9D8:
    ldr r0, .L0805A9DC @ =0x08BD2460
    b .L0805A9EA
    .align 2, 0
.L0805A9DC: .4byte 0x08BD2460
.L0805A9E0:
    ldr r0, .L0805A9E4 @ =0x08BD2480
    b .L0805A9EA
    .align 2, 0
.L0805A9E4: .4byte 0x08BD2480
.L0805A9E8:
    ldr r0, .L0805AA08 @ =0x08BD2458
.L0805A9EA:
    movs r1, #0x78
    bl AnimCreate
    adds r1, r0, #0
    str r1, [r7, #0x60]
.L0805A9F4:
    cmp r1, #0
    bne .L0805AA10
    ldr r1, .L0805AA0C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r7, #0
    bl Proc_End
    b .L0805AA1E
    .align 2, 0
.L0805AA08: .4byte 0x08BD2458
.L0805AA0C: .4byte 0x0201774C
.L0805AA10:
    movs r0, #0x91
    lsls r0, r0, #6
    strh r0, [r1, #8]
    ldrh r0, [r7, #0x32]
    strh r0, [r1, #2]
    ldrh r0, [r7, #0x3a]
    strh r0, [r1, #4]
.L0805AA1E:
    add sp, #0x90
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805A928

    thumb_func_start func_0805AA28
func_0805AA28: @ 0x0805AA28
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, [r4, #0x60]
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    cmp r1, r0
    ble .L0805AA58
    ldr r1, .L0805AA54 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
    b .L0805AA74
    .align 2, 0
.L0805AA54: .4byte 0x0201774C
.L0805AA58:
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #1
    movs r1, #0x78
    movs r2, #8
    bl Interpolate
    strh r0, [r5, #4]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
.L0805AA74:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805AA28

    thumb_func_start func_0805AA7C
func_0805AA7C: @ 0x0805AA7C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805AAC0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805AAC4 @ =0x08BA2930
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    strh r5, [r0, #0x30]
    str r1, [r0, #0x44]
    ldr r1, .L0805AAC8 @ =0x081E895A
    str r1, [r0, #0x48]
    ldr r1, .L0805AACC @ =0x08BA2948
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805AAD0 @ =0x08BA2954
    str r1, [r0, #0x54]
    ldr r0, .L0805AAD4 @ =0x0828D4A8
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805AAC0: .4byte 0x0201774C
.L0805AAC4: .4byte 0x08BA2930
.L0805AAC8: .4byte 0x081E895A
.L0805AACC: .4byte 0x08BA2948
.L0805AAD0: .4byte 0x08BA2954
.L0805AAD4: .4byte 0x0828D4A8
    func_end func_0805AA7C

    thumb_func_start func_0805AAD8
func_0805AAD8: @ 0x0805AAD8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r0, #0x2c
    adds r1, r6, #0
    adds r1, #0x44
    ldr r2, [r6, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L0805AB12
    ldr r1, [r6, #0x4c]
    ldr r2, [r6, #0x50]
    ldr r5, [r6, #0x54]
    ldr r0, [r6, #0x5c]
    lsls r4, r4, #2
    adds r1, r4, r1
    ldr r1, [r1]
    adds r2, r4, r2
    ldr r2, [r2]
    bl func_080504DC
    adds r4, r4, r5
    ldr r0, [r4]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
.L0805AB12:
    ldrh r0, [r6, #0x2e]
    adds r0, #1
    strh r0, [r6, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r6, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805AB38
    bl func_08050018
    ldr r1, .L0805AB40 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r6, #0
    bl Proc_Break
.L0805AB38:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805AB40: .4byte 0x0201774C
    func_end func_0805AAD8

    thumb_func_start func_0805AB44
func_0805AB44: @ 0x0805AB44
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805AB88 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805AB8C @ =0x08BA2960
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r4, #0
    strh r4, [r0, #0x2c]
    strh r4, [r0, #0x2e]
    strh r5, [r0, #0x30]
    movs r1, #2
    str r1, [r0, #0x44]
    str r4, [r0, #0x48]
    ldr r0, .L0805AB90 @ =0x0828EA84
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    ldr r0, .L0805AB94 @ =0x0828EAB8
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805AB98 @ =0x0202003C
    str r4, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805AB88: .4byte 0x0201774C
.L0805AB8C: .4byte 0x08BA2960
.L0805AB90: .4byte 0x0828EA84
.L0805AB94: .4byte 0x0828EAB8
.L0805AB98: .4byte 0x0202003C
    func_end func_0805AB44

    thumb_func_start func_0805AB9C
func_0805AB9C: @ 0x0805AB9C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805ABD0
    ldr r1, .L0805ABC8 @ =0x0202003C
    movs r0, #1
    str r0, [r1]
    ldr r1, .L0805ABCC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
    b .L0805AC14
    .align 2, 0
.L0805ABC8: .4byte 0x0202003C
.L0805ABCC: .4byte 0x0201774C
.L0805ABD0:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r4, #0x44]
    cmp r0, r1
    bne .L0805AC14
    movs r0, #0
    strh r0, [r4, #0x2e]
    movs r0, #2
    str r0, [r4, #0x44]
    bl func_08004CC4
    cmp r0, #4
    ble .L0805ABFE
    ldr r0, [r4, #0x5c]
    ldr r2, [r4, #0x48]
    adds r1, r2, #0
    adds r2, #1
    str r2, [r4, #0x48]
    bl func_0805AC1C
.L0805ABFE:
    bl func_08004CC4
    cmp r0, #4
    ble .L0805AC14
    ldr r0, [r4, #0x5c]
    ldr r2, [r4, #0x48]
    adds r1, r2, #0
    adds r2, #1
    str r2, [r4, #0x48]
    bl func_0805AC1C
.L0805AC14:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805AB9C

    thumb_func_start func_0805AC1C
func_0805AC1C: @ 0x0805AC1C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x40
    mov r8, r0
    mov sl, r1
    ldr r1, .L0805ACB8 @ =0x081E8968
    mov r0, sp
    movs r2, #0x10
    bl memcpy
    add r5, sp, #0x10
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x10
    bl memset
    movs r6, #0
    movs r0, #1
    strh r0, [r5, #4]
    strh r0, [r5, #0xa]
    add r0, sp, #0x20
    mov sb, r0
    ldr r1, .L0805ACBC @ =0x081E8978
    movs r2, #0x10
    bl memcpy
    add r4, sp, #0x30
    ldr r1, .L0805ACC0 @ =0x081E8988
    adds r0, r4, #0
    movs r2, #0x10
    bl memcpy
    ldr r1, .L0805ACC4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805ACC8 @ =0x08BA2978
    movs r1, #3
    bl Proc_Start
    adds r7, r0, #0
    mov r1, r8
    str r1, [r7, #0x5c]
    strh r6, [r7, #0x2c]
    movs r0, #7
    mov r2, sl
    ands r0, r2
    lsls r6, r0, #1
    mov r1, sp
    adds r0, r1, r6
    ldrh r0, [r0]
    strh r0, [r7, #0x2e]
    movs r0, #0xff
    bl func_080672E8
    strh r0, [r7, #0x30]
    movs r0, #0x10
    bl func_080672E8
    adds r4, r4, r6
    ldrh r4, [r4]
    adds r0, r4, r0
    strh r0, [r7, #0x32]
    movs r0, #0x70
    strh r0, [r7, #0x3a]
    ldr r0, [r7, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805ACCC
    mov r2, sb
    adds r0, r2, r6
    movs r1, #0
    ldrsh r0, [r0, r1]
    b .L0805ACD6
    .align 2, 0
.L0805ACB8: .4byte 0x081E8968
.L0805ACBC: .4byte 0x081E8978
.L0805ACC0: .4byte 0x081E8988
.L0805ACC4: .4byte 0x0201774C
.L0805ACC8: .4byte 0x08BA2978
.L0805ACCC:
    mov r2, sb
    adds r0, r2, r6
    movs r1, #0
    ldrsh r0, [r0, r1]
    rsbs r0, r0, #0
.L0805ACD6:
    str r0, [r7, #0x44]
    movs r1, #0
    movs r0, #7
    mov r2, sl
    ands r0, r2
    lsls r0, r0, #1
    adds r0, r5, r0
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    beq .L0805ACF2
    cmp r0, #1
    beq .L0805ACFC
    b .L0805AD08
.L0805ACF2:
    ldr r0, .L0805ACF8 @ =0x08BD24DC
    b .L0805ACFE
    .align 2, 0
.L0805ACF8: .4byte 0x08BD24DC
.L0805ACFC:
    ldr r0, .L0805AD1C @ =0x08BD24D0
.L0805ACFE:
    movs r1, #0x78
    bl AnimCreate
    adds r1, r0, #0
    str r1, [r7, #0x60]
.L0805AD08:
    cmp r1, #0
    bne .L0805AD24
    ldr r1, .L0805AD20 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r7, #0
    bl Proc_End
    b .L0805AD32
    .align 2, 0
.L0805AD1C: .4byte 0x08BD24D0
.L0805AD20: .4byte 0x0201774C
.L0805AD24:
    movs r0, #0x91
    lsls r0, r0, #6
    strh r0, [r1, #8]
    ldrh r0, [r7, #0x32]
    strh r0, [r1, #2]
    ldrh r0, [r7, #0x3a]
    strh r0, [r1, #4]
.L0805AD32:
    add sp, #0x40
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805AC1C

    thumb_func_start func_0805AD44
func_0805AD44: @ 0x0805AD44
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r6, [r5, #0x60]
    ldr r0, .L0805AD78 @ =0x0202003C
    ldr r0, [r0]
    cmp r0, #1
    beq .L0805AD60
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    cmp r1, r0
    ble .L0805AD80
.L0805AD60:
    ldr r1, .L0805AD7C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r6, #0
    bl AnimDelete
    adds r0, r5, #0
    bl Proc_Break
    b .L0805ADE4
    .align 2, 0
.L0805AD78: .4byte 0x0202003C
.L0805AD7C: .4byte 0x0201774C
.L0805AD80:
    movs r4, #0x2c
    ldrsh r3, [r5, r4]
    movs r7, #0x2e
    ldrsh r0, [r5, r7]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x70
    bl Interpolate
    ldrh r1, [r5, #0x2c]
    adds r1, #1
    strh r1, [r5, #0x2c]
    ldr r4, .L0805ADEC @ =0x080C5A48
    movs r2, #0x30
    ldrsh r1, [r5, r2]
    adds r1, #0x40
    lsls r1, r1, #1
    adds r1, r1, r4
    ldrh r1, [r1]
    lsls r3, r1, #0x10
    asrs r3, r3, #0x1a
    ldrh r1, [r5, #0x30]
    adds r1, #6
    movs r2, #0xff
    ands r1, r2
    strh r1, [r5, #0x30]
    ldr r2, [r5, #0x44]
    movs r1, #0xff
    ands r2, r1
    lsls r1, r2, #1
    adds r1, r1, r4
    movs r7, #0
    ldrsh r1, [r1, r7]
    adds r2, #0x40
    lsls r2, r2, #1
    adds r2, r2, r4
    movs r4, #0
    ldrsh r2, [r2, r4]
    muls r1, r0, r1
    muls r0, r2, r0
    asrs r1, r1, #0xc
    asrs r0, r0, #0xc
    ldrh r7, [r5, #0x32]
    adds r3, r7, r3
    subs r3, r3, r1
    strh r3, [r6, #2]
    ldrh r5, [r5, #0x3a]
    subs r0, r5, r0
    strh r0, [r6, #4]
.L0805ADE4:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805ADEC: .4byte gSinLut
    func_end func_0805AD44

    thumb_func_start func_0805ADF0
func_0805ADF0: @ 0x0805ADF0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r1, .L0805AE20 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805AE24 @ =0x08BA2990
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0804EFDC
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805AE20: .4byte 0x0201774C
.L0805AE24: .4byte 0x08BA2990
    func_end func_0805ADF0

    thumb_func_start func_0805AE28
func_0805AE28: @ 0x0805AE28
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
    movs r2, #0x10
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L0805AE84 @ =gPal
    ldr r4, .L0805AE88 @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    adds r3, r5, #0
    bl func_08066F64
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r6, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805AE7C
    ldr r1, .L0805AE8C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r6, #0
    bl Proc_Break
.L0805AE7C:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805AE84: .4byte gPal
.L0805AE88: .4byte 0x020165C8
.L0805AE8C: .4byte 0x0201774C
    func_end func_0805AE28

    thumb_func_start func_0805AE90
func_0805AE90: @ 0x0805AE90
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805AEC8 @ =0x08BA29A8
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805AEC8: .4byte 0x08BA29A8
    func_end func_0805AE90

    thumb_func_start func_0805AECC
func_0805AECC: @ 0x0805AECC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r3, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #1
    bne .L0805AF10
    ldr r0, .L0805AF0C @ =0x00000127
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
    adds r0, r5, #0
    bl func_0805AFBC
    ldr r0, [r4, #0x5c]
    bl func_0805B1EC
    b .L0805AFB6
    .align 2, 0
.L0805AF0C: .4byte 0x00000127
.L0805AF10:
    cmp r2, #0x14
    bne .L0805AF24
    movs r0, #0x94
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805AF50
.L0805AF24:
    cmp r2, #0x32
    bne .L0805AF34
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L0805AFB6
.L0805AF34:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r3, #0
    adds r0, #0x46
    cmp r1, r0
    bne .L0805AF5C
    adds r0, r5, #0
    bl func_0805B040
    ldr r0, .L0805AF58 @ =0x00000129
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
.L0805AF50:
    movs r3, #1
    bl func_080681E4
    b .L0805AFB6
    .align 2, 0
.L0805AF58: .4byte 0x00000129
.L0805AF5C:
    adds r0, r3, #0
    adds r0, #0x49
    cmp r1, r0
    bne .L0805AF6E
    ldr r0, [r4, #0x5c]
    movs r1, #0xa
    bl func_0804EFDC
    b .L0805AFB6
.L0805AF6E:
    adds r0, r3, #0
    adds r0, #0x4b
    cmp r1, r0
    bne .L0805AF9C
    adds r0, r5, #0
    bl func_0805B0C4
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805AFB6
    adds r0, r5, #0
    bl func_08067D14
    b .L0805AFB6
.L0805AF9C:
    adds r0, r3, #0
    adds r0, #0x5a
    cmp r1, r0
    beq .L0805AFB6
    cmp r2, #0x64
    bne .L0805AFB6
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805AFB6:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805AECC

    thumb_func_start func_0805AFBC
func_0805AFBC: @ 0x0805AFBC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805B010 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B014 @ =0x08BA29C0
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805B018 @ =0x081E8998
    str r0, [r5, #0x48]
    ldr r0, .L0805B01C @ =0x08BA2A28
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805B020 @ =0x08BA29D8
    str r0, [r5, #0x54]
    ldr r0, .L0805B024 @ =0x0823E2F4
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805B028 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805B036
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805B02C
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L0805B036
    .align 2, 0
.L0805B010: .4byte 0x0201774C
.L0805B014: .4byte 0x08BA29C0
.L0805B018: .4byte 0x081E8998
.L0805B01C: .4byte 0x08BA2A28
.L0805B020: .4byte 0x08BA29D8
.L0805B024: .4byte 0x0823E2F4
.L0805B028: .4byte 0x0203E02C
.L0805B02C:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L0805B036:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805AFBC

    thumb_func_start func_0805B040
func_0805B040: @ 0x0805B040
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805B094 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B098 @ =0x08BA29C0
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805B09C @ =0x081E8A06
    str r0, [r5, #0x48]
    ldr r0, .L0805B0A0 @ =0x08BA2A84
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805B0A4 @ =0x08BA2A78
    str r0, [r5, #0x54]
    ldr r0, .L0805B0A8 @ =0x0823E2F4
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805B0AC @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805B0BA
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805B0B0
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0805B0BA
    .align 2, 0
.L0805B094: .4byte 0x0201774C
.L0805B098: .4byte 0x08BA29C0
.L0805B09C: .4byte 0x081E8A06
.L0805B0A0: .4byte 0x08BA2A84
.L0805B0A4: .4byte 0x08BA2A78
.L0805B0A8: .4byte 0x0823E2F4
.L0805B0AC: .4byte 0x0203E02C
.L0805B0B0:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0805B0BA:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805B040

    thumb_func_start func_0805B0C4
func_0805B0C4: @ 0x0805B0C4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805B118 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B11C @ =0x08BA29C0
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805B120 @ =0x081E8A14
    str r0, [r5, #0x48]
    ldr r0, .L0805B124 @ =0x08BA2AE4
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805B128 @ =0x08BA2A90
    str r0, [r5, #0x54]
    ldr r0, .L0805B12C @ =0x0823E2D4
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805B130 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805B13E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805B134
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0805B13E
    .align 2, 0
.L0805B118: .4byte 0x0201774C
.L0805B11C: .4byte 0x08BA29C0
.L0805B120: .4byte 0x081E8A14
.L0805B124: .4byte 0x08BA2AE4
.L0805B128: .4byte 0x08BA2A90
.L0805B12C: .4byte 0x0823E2D4
.L0805B130: .4byte 0x0203E02C
.L0805B134:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0805B13E:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805B0C4

    thumb_func_start func_0805B148
func_0805B148: @ 0x0805B148
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L0805B1C0
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    ldr r0, .L0805B1A0 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805B1DE
    ldr r0, [r7, #0x5c]
    bl GetAnimPosition
    adds r1, r0, #0
    cmp r1, #0
    bne .L0805B1A8
    ldr r0, .L0805B1A4 @ =gBg1Tm
    b .L0805B1AC
    .align 2, 0
.L0805B1A0: .4byte 0x0203E02C
.L0805B1A4: .4byte gBg1Tm
.L0805B1A8:
    ldr r0, .L0805B1BC @ =0x0202349A
    movs r1, #0
.L0805B1AC:
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
    b .L0805B1DE
    .align 2, 0
.L0805B1BC: .4byte 0x0202349A
.L0805B1C0:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L0805B1DE
    bl func_08050018
    ldr r1, .L0805B1E8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_Break
.L0805B1DE:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B1E8: .4byte 0x0201774C
    func_end func_0805B148

    thumb_func_start func_0805B1EC
func_0805B1EC: @ 0x0805B1EC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805B22C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B230 @ =0x08BA2B38
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L0805B234 @ =0x08BBA10C
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r4, #0x60]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805B238
    ldrh r0, [r6, #2]
    subs r0, #6
    b .L0805B23C
    .align 2, 0
.L0805B22C: .4byte 0x0201774C
.L0805B230: .4byte 0x08BA2B38
.L0805B234: .4byte 0x08BBA10C
.L0805B238:
    ldrh r0, [r6, #2]
    adds r0, #6
.L0805B23C:
    strh r0, [r6, #2]
    ldr r0, .L0805B258 @ =0x082424B4
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805B25C @ =0x08242348
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B258: .4byte 0x082424B4
.L0805B25C: .4byte 0x08242348
    func_end func_0805B1EC

    thumb_func_start func_0805B260
func_0805B260: @ 0x0805B260
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x2c
    bne .L0805B286
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L0805B28C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805B286:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B28C: .4byte 0x0201774C
    func_end func_0805B260

    thumb_func_start func_0805B290
func_0805B290: @ 0x0805B290
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805B2C8 @ =0x08BA2B50
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B2C8: .4byte 0x08BA2B50
    func_end func_0805B290

    thumb_func_start func_0805B2CC
func_0805B2CC: @ 0x0805B2CC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r1, #0
    mov r8, r1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805B300
    ldr r0, [r4, #0x5c]
    subs r1, #1
    bl func_0804E498
.L0805B300:
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    adds r0, r6, #1
    cmp r1, r0
    bne .L0805B358
    adds r0, r5, #0
    bl func_0805B438
    ldr r3, .L0805B354 @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    mov r2, r8
    str r2, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x20
    movs r3, #0
    bl func_08055F08
    adds r0, r5, #0
    movs r1, #0xaa
    bl func_0805B6F4
    movs r0, #0x95
    lsls r0, r0, #1
    b .L0805B362
    .align 2, 0
.L0805B354: .4byte gDispIo
.L0805B358:
    ldr r2, .L0805B374 @ =0x0000011B
    adds r0, r6, r2
    cmp r1, r0
    bne .L0805B37C
    ldr r0, .L0805B378 @ =0x0000012B
.L0805B362:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805B42C
    .align 2, 0
.L0805B374: .4byte 0x0000011B
.L0805B378: .4byte 0x0000012B
.L0805B37C:
    ldr r2, .L0805B390 @ =0x0000013B
    adds r0, r6, r2
    cmp r1, r0
    bne .L0805B394
    adds r0, r5, #0
    movs r1, #0x19
    bl func_0805B8F4
    b .L0805B42C
    .align 2, 0
.L0805B390: .4byte 0x0000013B
.L0805B394:
    movs r3, #0xaa
    lsls r3, r3, #1
    adds r0, r6, r3
    cmp r1, r0
    bne .L0805B3C6
    adds r0, r5, #0
    movs r1, #0xc
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl func_08050150
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805B42C
    adds r0, r5, #0
    bl func_08067D14
    b .L0805B42C
.L0805B3C6:
    movs r2, #0xad
    lsls r2, r2, #1
    adds r0, r6, r2
    cmp r1, r0
    bne .L0805B414
    movs r0, #0x96
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
    adds r0, r5, #0
    movs r1, #0x64
    movs r2, #0xa
    bl func_080561D0
    adds r0, r5, #0
    movs r1, #0x64
    bl func_0805B534
    adds r0, r5, #0
    movs r1, #0x64
    bl func_0805B660
    mov r3, r8
    str r3, [sp]
    str r3, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x46
    movs r2, #0x1e
    movs r3, #0x10
    bl func_08055F08
    adds r0, r5, #0
    bl func_0805BA48
    b .L0805B42C
.L0805B414:
    movs r2, #0xf5
    lsls r2, r2, #1
    adds r0, r6, r2
    cmp r1, r0
    bne .L0805B42C
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805B42C:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805B2CC

    thumb_func_start func_0805B438
func_0805B438: @ 0x0805B438
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805B48C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B490 @ =0x08BA2B68
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805B494 @ =0x081E8A6A
    str r0, [r5, #0x48]
    ldr r0, .L0805B498 @ =0x08BA2B94
    str r0, [r5, #0x4c]
    ldr r0, .L0805B49C @ =0x08BA2B80
    str r0, [r5, #0x54]
    ldr r0, .L0805B4A0 @ =0x08279EA4
    movs r1, #0x20
    bl func_08050634
    bl func_08050008
    bl func_08050040
    ldr r0, .L0805B4A4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0805B4B4
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805B4A8
    movs r0, #1
    movs r1, #0xf8
    b .L0805B4AC
    .align 2, 0
.L0805B48C: .4byte 0x0201774C
.L0805B490: .4byte 0x08BA2B68
.L0805B494: .4byte 0x081E8A6A
.L0805B498: .4byte 0x08BA2B94
.L0805B49C: .4byte 0x08BA2B80
.L0805B4A0: .4byte 0x08279EA4
.L0805B4A4: .4byte 0x0203E02C
.L0805B4A8:
    movs r0, #1
    movs r1, #0x18
.L0805B4AC:
    movs r2, #0
    bl SetBgOffset
    b .L0805B4C8
.L0805B4B4:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805B4C8
    movs r0, #1
    movs r1, #0x10
    movs r2, #0
    bl SetBgOffset
.L0805B4C8:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805B438

    thumb_func_start func_0805B4D0
func_0805B4D0: @ 0x0805B4D0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r0, #0x2c
    adds r1, r6, #0
    adds r1, #0x44
    ldr r2, [r6, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L0805B50A
    ldr r5, [r6, #0x4c]
    ldr r0, [r6, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r6, #0x5c]
    adds r4, r4, r5
    ldr r1, [r4]
    movs r2, #0x20
    movs r3, #0x14
    bl func_0805055C
    b .L0805B528
.L0805B50A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L0805B528
    bl func_08050018
    ldr r1, .L0805B530 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r6, #0
    bl Proc_Break
.L0805B528:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B530: .4byte 0x0201774C
    func_end func_0805B4D0

    thumb_func_start func_0805B534
func_0805B534: @ 0x0805B534
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805B57C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B580 @ =0x08BA2BA8
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    strh r1, [r0, #0x32]
    strh r1, [r0, #0x3a]
    strh r1, [r0, #0x34]
    strh r1, [r0, #0x3c]
    ldr r0, .L0805B584 @ =0x082779AC
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L0805B588 @ =0x08279EC4
    movs r1, #0x20
    bl func_08050634
    bl func_08050008
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B57C: .4byte 0x0201774C
.L0805B580: .4byte 0x08BA2BA8
.L0805B584: .4byte 0x082779AC
.L0805B588: .4byte 0x08279EC4
    func_end func_0805B534

    thumb_func_start func_0805B58C
func_0805B58C: @ 0x0805B58C
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    movs r6, #1
    adds r0, r6, #0
    ldrh r1, [r5, #0x2c]
    ands r0, r1
    cmp r0, #0
    beq .L0805B5E8
    ldrh r2, [r5, #0x32]
    subs r2, #0xc
    strh r2, [r5, #0x32]
    ldrh r1, [r5, #0x3a]
    adds r1, #0xc
    strh r1, [r5, #0x3a]
    ldr r0, .L0805B5D8 @ =gDispIo
    strh r2, [r0, #0x20]
    strh r1, [r0, #0x22]
    ldr r0, .L0805B5DC @ =0x0827A12C
    ldr r4, .L0805B5E0 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L0805B5E4 @ =gBg1Tm
    str r6, [sp]
    movs r0, #0x80
    lsls r0, r0, #1
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066ACC
    movs r0, #2
    bl EnableBgSync
    b .L0805B61E
    .align 2, 0
.L0805B5D8: .4byte gDispIo
.L0805B5DC: .4byte 0x0827A12C
.L0805B5E0: .4byte 0x02019784
.L0805B5E4: .4byte gBg1Tm
.L0805B5E8:
    ldrh r2, [r5, #0x34]
    adds r2, #8
    strh r2, [r5, #0x34]
    ldrh r1, [r5, #0x3c]
    adds r1, #8
    strh r1, [r5, #0x3c]
    ldr r0, .L0805B64C @ =gDispIo
    strh r2, [r0, #0x20]
    strh r1, [r0, #0x22]
    ldr r0, .L0805B650 @ =0x0827A12C
    ldr r4, .L0805B654 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L0805B658 @ =gBg1Tm
    str r6, [sp]
    movs r0, #0x80
    lsls r0, r0, #1
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066AFC
    movs r0, #2
    bl EnableBgSync
.L0805B61E:
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805B644
    bl func_08050018
    bl func_08050118
    ldr r1, .L0805B65C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L0805B644:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B64C: .4byte gDispIo
.L0805B650: .4byte 0x0827A12C
.L0805B654: .4byte 0x02019784
.L0805B658: .4byte gBg1Tm
.L0805B65C: .4byte 0x0201774C
    func_end func_0805B58C

    thumb_func_start func_0805B660
func_0805B660: @ 0x0805B660
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805B698 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B69C @ =0x08BA2BC0
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    strh r5, [r0, #0x30]
    str r1, [r0, #0x44]
    ldr r1, .L0805B6A0 @ =0x081E8A80
    str r1, [r0, #0x48]
    ldr r1, .L0805B6A4 @ =0x08279EC4
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B698: .4byte 0x0201774C
.L0805B69C: .4byte 0x08BA2BC0
.L0805B6A0: .4byte 0x081E8A80
.L0805B6A4: .4byte 0x08279EC4
    func_end func_0805B660

    thumb_func_start func_0805B6A8
func_0805B6A8: @ 0x0805B6A8
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805B6CC
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
.L0805B6CC:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805B6EA
    ldr r1, .L0805B6F0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805B6EA:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B6F0: .4byte 0x0201774C
    func_end func_0805B6A8

    thumb_func_start func_0805B6F4
func_0805B6F4: @ 0x0805B6F4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805B734 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B738 @ =0x08BA2BE0
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    strh r2, [r0, #0x30]
    movs r1, #0xa
    str r1, [r0, #0x44]
    str r2, [r0, #0x48]
    ldr r0, .L0805B73C @ =0x0827ABF0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805B740 @ =0x0827A6FC
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B734: .4byte 0x0201774C
.L0805B738: .4byte 0x08BA2BE0
.L0805B73C: .4byte 0x0827ABF0
.L0805B740: .4byte 0x0827A6FC
    func_end func_0805B6F4

    thumb_func_start func_0805B744
func_0805B744: @ 0x0805B744
    push {lr}
    adds r3, r0, #0
    ldrh r0, [r3, #0x2c]
    adds r0, #1
    strh r0, [r3, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r3, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805B76C
    ldr r1, .L0805B768 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r3, #0
    bl Proc_Break
    b .L0805B792
    .align 2, 0
.L0805B768: .4byte 0x0201774C
.L0805B76C:
    ldrh r0, [r3, #0x30]
    adds r0, #1
    strh r0, [r3, #0x30]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r3, #0x44]
    cmp r0, r1
    bne .L0805B792
    movs r0, #0
    strh r0, [r3, #0x30]
    movs r0, #0xa
    str r0, [r3, #0x44]
    ldr r0, [r3, #0x5c]
    ldr r2, [r3, #0x48]
    adds r1, r2, #0
    adds r2, #1
    str r2, [r3, #0x48]
    bl func_0805B798
.L0805B792:
    pop {r0}
    bx r0
    func_end func_0805B744

    thumb_func_start func_0805B798
func_0805B798: @ 0x0805B798
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r1, .L0805B824 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B828 @ =0x08BA2BF8
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r6, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x1e
    bl func_080672E8
    adds r0, #0x8c
    strh r0, [r4, #0x2e]
    movs r0, #0x1e
    bl func_080672E8
    adds r5, r0, #0
    movs r0, #0x1e
    bl func_080672E8
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0x46
    strh r0, [r4, #0x32]
    adds r0, r1, #0
    adds r0, #0x28
    strh r0, [r4, #0x34]
    ldr r0, .L0805B82C @ =0x0000FFEC
    strh r0, [r4, #0x3a]
    movs r0, #0xa0
    strh r0, [r4, #0x3c]
    ldr r0, .L0805B830 @ =0x0203E02C
    movs r2, #0
    ldrsh r0, [r0, r2]
    cmp r0, #0
    bne .L0805B7F8
    adds r0, r5, #0
    adds r0, #0x5e
    strh r0, [r4, #0x32]
    adds r0, r1, #0
    adds r0, #0x40
    strh r0, [r4, #0x34]
.L0805B7F8:
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #1
    bne .L0805B810
    movs r0, #0xf0
    ldrh r2, [r4, #0x32]
    subs r1, r0, r2
    strh r1, [r4, #0x32]
    ldrh r1, [r4, #0x34]
    subs r0, r0, r1
    strh r0, [r4, #0x34]
.L0805B810:
    movs r0, #2
    bl func_080672E8
    cmp r0, #0
    beq .L0805B838
    cmp r0, #1
    beq .L0805B840
    ldr r0, .L0805B834 @ =0x08BD17C8
    b .L0805B842
    .align 2, 0
.L0805B824: .4byte 0x0201774C
.L0805B828: .4byte 0x08BA2BF8
.L0805B82C: .4byte 0x0000FFEC
.L0805B830: .4byte 0x0203E02C
.L0805B834: .4byte 0x08BD17C8
.L0805B838:
    ldr r0, .L0805B83C @ =0x08BD17B8
    b .L0805B842
    .align 2, 0
.L0805B83C: .4byte 0x08BD17B8
.L0805B840:
    ldr r0, .L0805B860 @ =0x08BD17C0
.L0805B842:
    movs r1, #0x78
    bl AnimCreate
    adds r1, r0, #0
    str r1, [r4, #0x60]
    cmp r1, #0
    bne .L0805B868
    ldr r1, .L0805B864 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_End
    b .L0805B876
    .align 2, 0
.L0805B860: .4byte 0x08BD17C0
.L0805B864: .4byte 0x0201774C
.L0805B868:
    movs r0, #0x91
    lsls r0, r0, #6
    strh r0, [r1, #8]
    movs r0, #0x80
    lsls r0, r0, #1
    strh r0, [r1, #2]
    strh r0, [r1, #4]
.L0805B876:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805B798

    thumb_func_start func_0805B87C
func_0805B87C: @ 0x0805B87C
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r6, [r5, #0x60]
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    cmp r1, r0
    ble .L0805B8AC
    ldr r1, .L0805B8A8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r6, #0
    bl AnimDelete
    adds r0, r5, #0
    bl Proc_Break
    b .L0805B8EC
    .align 2, 0
.L0805B8A8: .4byte 0x0201774C
.L0805B8AC:
    movs r4, #0x32
    ldrsh r1, [r5, r4]
    movs r7, #0x34
    ldrsh r2, [r5, r7]
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r4, #0x2e
    ldrsh r0, [r5, r4]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    movs r7, #0x3a
    ldrsh r1, [r5, r7]
    movs r0, #0x3c
    ldrsh r2, [r5, r0]
    movs r7, #0x2c
    ldrsh r3, [r5, r7]
    movs r7, #0x2e
    ldrsh r0, [r5, r7]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    strh r4, [r6, #2]
    strh r0, [r6, #4]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
.L0805B8EC:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805B87C

    thumb_func_start func_0805B8F4
func_0805B8F4: @ 0x0805B8F4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r1, .L0805B98C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805B990 @ =0x08BA2C10
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    strh r0, [r5, #0x2e]
    strh r4, [r5, #0x30]
    movs r0, #0x5b
    strh r0, [r5, #0x32]
    movs r0, #0x3f
    strh r0, [r5, #0x34]
    ldr r0, .L0805B994 @ =0x0000FFF6
    strh r0, [r5, #0x3a]
    movs r0, #0x64
    strh r0, [r5, #0x3c]
    ldr r0, .L0805B998 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L0805B93A
    movs r0, #0x73
    strh r0, [r5, #0x32]
    movs r0, #0x57
    strh r0, [r5, #0x34]
.L0805B93A:
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #1
    bne .L0805B952
    movs r0, #0xf0
    ldrh r2, [r5, #0x32]
    subs r1, r0, r2
    strh r1, [r5, #0x32]
    ldrh r1, [r5, #0x34]
    subs r0, r0, r1
    strh r0, [r5, #0x34]
.L0805B952:
    ldr r3, .L0805B99C @ =0x08BD17D0
    str r3, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r5, #0x60]
    ldrh r1, [r5, #0x32]
    strh r1, [r0, #2]
    ldrh r1, [r5, #0x3a]
    strh r1, [r0, #4]
    ldr r3, .L0805B9A0 @ =0x08BD17F4
    str r3, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r5, #0x64]
    ldrh r1, [r5, #0x32]
    strh r1, [r0, #2]
    ldrh r1, [r5, #0x3a]
    strh r1, [r0, #4]
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805B98C: .4byte 0x0201774C
.L0805B990: .4byte 0x08BA2C10
.L0805B994: .4byte 0x0000FFF6
.L0805B998: .4byte 0x0203E02C
.L0805B99C: .4byte 0x08BD17D0
.L0805B9A0: .4byte 0x08BD17F4
    func_end func_0805B8F4

    thumb_func_start func_0805B9A4
func_0805B9A4: @ 0x0805B9A4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r4, r0, #0
    ldr r6, [r4, #0x60]
    ldr r5, [r4, #0x64]
    movs r0, #0x32
    ldrsh r1, [r4, r0]
    movs r7, #0x34
    ldrsh r2, [r4, r7]
    movs r0, #0x2e
    ldrsh r3, [r4, r0]
    movs r7, #0x30
    ldrsh r0, [r4, r7]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    movs r1, #0
    mov r8, r1
    strh r0, [r5, #2]
    strh r0, [r6, #2]
    movs r2, #0x3a
    ldrsh r1, [r4, r2]
    movs r7, #0x3c
    ldrsh r2, [r4, r7]
    movs r0, #0x2e
    ldrsh r3, [r4, r0]
    movs r7, #0x30
    ldrsh r0, [r4, r7]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    strh r0, [r5, #4]
    strh r0, [r6, #4]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x11
    bne .L0805BA0A
    mov r0, r8
    strh r0, [r4, #0x2c]
    ldr r0, .L0805BA40 @ =0x08BD17F4
    str r0, [r5, #0x24]
    str r0, [r5, #0x20]
    mov r1, r8
    strh r1, [r6, #6]
.L0805BA0A:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805BA34
    adds r0, r6, #0
    bl AnimDelete
    adds r0, r5, #0
    bl AnimDelete
    ldr r1, .L0805BA44 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805BA34:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805BA40: .4byte 0x08BD17F4
.L0805BA44: .4byte 0x0201774C
    func_end func_0805B9A4

    thumb_func_start func_0805BA48
func_0805BA48: @ 0x0805BA48
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805BA70 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805BA74 @ =0x08BA2C28
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    strh r2, [r0, #0x2e]
    movs r1, #1
    str r1, [r0, #0x44]
    str r2, [r0, #0x48]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805BA70: .4byte 0x0201774C
.L0805BA74: .4byte 0x08BA2C28
    func_end func_0805BA48

    thumb_func_start func_0805BA78
func_0805BA78: @ 0x0805BA78
    push {lr}
    adds r3, r0, #0
    ldrh r0, [r3, #0x2c]
    adds r0, #1
    strh r0, [r3, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x2f
    bne .L0805BAA0
    ldr r1, .L0805BA9C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r3, #0
    bl Proc_Break
    b .L0805BAC6
    .align 2, 0
.L0805BA9C: .4byte 0x0201774C
.L0805BAA0:
    ldrh r0, [r3, #0x2e]
    adds r0, #1
    strh r0, [r3, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r3, #0x44]
    cmp r0, r1
    bne .L0805BAC6
    movs r0, #0
    strh r0, [r3, #0x2e]
    movs r0, #1
    str r0, [r3, #0x44]
    ldr r0, [r3, #0x5c]
    ldr r2, [r3, #0x48]
    adds r1, r2, #0
    adds r2, #1
    str r2, [r3, #0x48]
    bl func_0805BACC
.L0805BAC6:
    pop {r0}
    bx r0
    func_end func_0805BA78

    thumb_func_start func_0805BACC
func_0805BACC: @ 0x0805BACC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805BB28 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805BB2C @ =0x08BA2C40
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #0x14
    strh r0, [r5, #0x2e]
    movs r0, #0x78
    bl func_080672E8
    adds r1, r0, #0
    subs r1, #0x3c
    strh r1, [r5, #0x32]
    adds r0, #0xb4
    strh r0, [r5, #0x34]
    movs r1, #0x32
    ldrsh r0, [r5, r1]
    lsls r1, r0, #1
    adds r1, r1, r0
    asrs r1, r1, #1
    movs r0, #0x34
    ldrsh r2, [r5, r0]
    lsls r0, r2, #1
    adds r0, r0, r2
    asrs r0, r0, #1
    adds r1, #0xc0
    strh r1, [r5, #0x3a]
    ldr r1, .L0805BB30 @ =0xFFFFFEB8
    adds r0, r0, r1
    strh r0, [r5, #0x3c]
    movs r0, #2
    bl func_080672E8
    cmp r0, #1
    bne .L0805BB38
    ldr r0, .L0805BB34 @ =0x08BD1840
    b .L0805BB3A
    .align 2, 0
.L0805BB28: .4byte 0x0201774C
.L0805BB2C: .4byte 0x08BA2C40
.L0805BB30: .4byte 0xFFFFFEB8
.L0805BB34: .4byte 0x08BD1840
.L0805BB38:
    ldr r0, .L0805BB58 @ =0x08BD185C
.L0805BB3A:
    movs r1, #0x78
    bl AnimCreate
    adds r1, r0, #0
    str r1, [r5, #0x60]
    cmp r1, #0
    bne .L0805BB60
    ldr r1, .L0805BB5C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_End
    b .L0805BB6E
    .align 2, 0
.L0805BB58: .4byte 0x08BD185C
.L0805BB5C: .4byte 0x0201774C
.L0805BB60:
    movs r0, #0x91
    lsls r0, r0, #6
    strh r0, [r1, #8]
    movs r0, #0x80
    lsls r0, r0, #1
    strh r0, [r1, #2]
    strh r0, [r1, #4]
.L0805BB6E:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805BACC

    thumb_func_start func_0805BB74
func_0805BB74: @ 0x0805BB74
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r6, [r5, #0x60]
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    cmp r1, r0
    ble .L0805BBA4
    ldr r1, .L0805BBA0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r6, #0
    bl AnimDelete
    adds r0, r5, #0
    bl Proc_Break
    b .L0805BBE4
    .align 2, 0
.L0805BBA0: .4byte 0x0201774C
.L0805BBA4:
    movs r4, #0x32
    ldrsh r1, [r5, r4]
    movs r7, #0x34
    ldrsh r2, [r5, r7]
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r4, #0x2e
    ldrsh r0, [r5, r4]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    movs r7, #0x3a
    ldrsh r1, [r5, r7]
    movs r0, #0x3c
    ldrsh r2, [r5, r0]
    movs r7, #0x2c
    ldrsh r3, [r5, r7]
    movs r7, #0x2e
    ldrsh r0, [r5, r7]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    strh r4, [r6, #2]
    strh r0, [r6, #4]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
.L0805BBE4:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805BB74

    thumb_func_start func_0805BBEC
func_0805BBEC: @ 0x0805BBEC
    bx lr
    func_end func_0805BBEC

    thumb_func_start func_0805BBF0
func_0805BBF0: @ 0x0805BBF0
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805BC28 @ =0x08BA2C58
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805BC28: .4byte 0x08BA2C58
    func_end func_0805BBF0

    thumb_func_start func_0805BC2C
func_0805BC2C: @ 0x0805BC2C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r4, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805BC62
    ldr r0, [r6, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805BC62:
    movs r2, #0x2c
    ldrsh r1, [r6, r2]
    adds r0, r4, #1
    cmp r1, r0
    bne .L0805BCD4
    ldr r3, .L0805BCD0 @ =gDispIo
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
    mov r2, r8
    strb r2, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r2, [r0]
    str r1, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0xf
    movs r3, #0
    bl func_08055F08
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x50
    movs r2, #0xf
    movs r3, #0x10
    bl func_08055F08
    ldr r0, [r6, #0x5c]
    bl func_0805BDCC
    ldr r0, [r6, #0x5c]
    bl func_0805C13C
    movs r0, #0x9c
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
    b .L0805BDC0
    .align 2, 0
.L0805BCD0: .4byte gDispIo
.L0805BCD4:
    adds r0, r4, #0
    adds r0, #0x46
    cmp r1, r0
    bne .L0805BD02
    movs r0, #2
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0x2a
    movs r2, #0xf
    movs r3, #0
    bl func_080558BC
    adds r1, r0, #0
    adds r0, r5, #0
    movs r2, #0x1e
    bl func_08059DAC
    adds r0, r5, #0
    movs r1, #0x2b
    movs r2, #0
    bl func_08055E14
    b .L0805BDC0
.L0805BD02:
    adds r0, r4, #0
    adds r0, #0x78
    cmp r1, r0
    bne .L0805BD12
    adds r0, r5, #0
    bl func_0805BE3C
    b .L0805BDC0
.L0805BD12:
    adds r0, r4, #0
    adds r0, #0x7d
    cmp r1, r0
    bne .L0805BD30
    ldr r0, .L0805BD2C @ =0x00000139
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805BDC0
    .align 2, 0
.L0805BD2C: .4byte 0x00000139
.L0805BD30:
    adds r0, r4, #0
    adds r0, #0x97
    cmp r1, r0
    bne .L0805BD40
    ldr r0, [r6, #0x5c]
    bl func_0805BF94
    b .L0805BDC0
.L0805BD40:
    adds r0, r4, #0
    adds r0, #0xe2
    cmp r1, r0
    bne .L0805BD88
    ldr r0, .L0805BD84 @ =0x000002E2
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, r6, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805BDC0
    adds r0, r5, #0
    bl func_08067D14
    b .L0805BDC0
    .align 2, 0
.L0805BD84: .4byte 0x000002E2
.L0805BD88:
    adds r0, r4, #0
    adds r0, #0xec
    cmp r1, r0
    bne .L0805BDA8
    adds r0, r5, #0
    bl func_0805BEC0
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x10
    movs r2, #0xa
    movs r3, #0x10
    bl func_08055F08
    b .L0805BDC0
.L0805BDA8:
    movs r2, #0x87
    lsls r2, r2, #1
    adds r0, r4, r2
    cmp r1, r0
    bne .L0805BDC0
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
.L0805BDC0:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805BC2C

    thumb_func_start func_0805BDCC
func_0805BDCC: @ 0x0805BDCC
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805BE20 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805BE24 @ =0x08BA2C70
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L0805BE28 @ =0x081E8A92
    str r1, [r0, #0x48]
    ldr r1, .L0805BE2C @ =0x08BA2C88
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805BE30 @ =0x08BA2CF4
    str r1, [r0, #0x54]
    str r2, [r0, #0x58]
    ldr r0, .L0805BE34 @ =0x08232BB0
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r2, .L0805BE38 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805BE20: .4byte 0x0201774C
.L0805BE24: .4byte 0x08BA2C70
.L0805BE28: .4byte 0x081E8A92
.L0805BE2C: .4byte 0x08BA2C88
.L0805BE30: .4byte 0x08BA2CF4
.L0805BE34: .4byte 0x08232BB0
.L0805BE38: .4byte gDispIo
    func_end func_0805BDCC

    thumb_func_start func_0805BE3C
func_0805BE3C: @ 0x0805BE3C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805BEA4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805BEA8 @ =0x08BA2C70
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r4, #0
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L0805BEAC @ =0x081E8A98
    str r1, [r0, #0x48]
    ldr r1, .L0805BEB0 @ =0x08BA2C88
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805BEB4 @ =0x08BA2CF4
    str r1, [r0, #0x54]
    str r2, [r0, #0x58]
    ldr r0, .L0805BEB8 @ =0x0824A714
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r3, .L0805BEBC @ =gDispIo
    adds r2, r3, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r1, [r2]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r1, r3, #0
    adds r1, #0x44
    movs r0, #0xc
    strb r0, [r1]
    adds r1, #1
    movs r0, #6
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r4, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805BEA4: .4byte 0x0201774C
.L0805BEA8: .4byte 0x08BA2C70
.L0805BEAC: .4byte 0x081E8A98
.L0805BEB0: .4byte 0x08BA2C88
.L0805BEB4: .4byte 0x08BA2CF4
.L0805BEB8: .4byte 0x0824A714
.L0805BEBC: .4byte gDispIo
    func_end func_0805BE3C

    thumb_func_start func_0805BEC0
func_0805BEC0: @ 0x0805BEC0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805BF00 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805BF04 @ =0x08BA2C70
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L0805BF08 @ =0x081E8B3A
    str r1, [r0, #0x48]
    ldr r1, .L0805BF0C @ =0x08BA2C88
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805BF10 @ =0x08BA2CF4
    str r1, [r0, #0x54]
    str r2, [r0, #0x58]
    ldr r0, .L0805BF14 @ =0x0824A734
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805BF00: .4byte 0x0201774C
.L0805BF04: .4byte 0x08BA2C70
.L0805BF08: .4byte 0x081E8B3A
.L0805BF0C: .4byte 0x08BA2C88
.L0805BF10: .4byte 0x08BA2CF4
.L0805BF14: .4byte 0x0824A734
    func_end func_0805BEC0

    thumb_func_start func_0805BF18
func_0805BF18: @ 0x0805BF18
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805BF68
    ldr r7, [r4, #0x4c]
    ldr r0, [r4, #0x50]
    mov r8, r0
    ldr r0, [r4, #0x54]
    lsls r5, r1, #2
    adds r6, r5, r0
    ldr r0, [r4, #0x58]
    ldr r2, [r6]
    cmp r0, r2
    beq .L0805BF52
    movs r1, #0x80
    lsls r1, r1, #6
    adds r0, r2, #0
    bl func_0805060C
.L0805BF52:
    ldr r0, [r6]
    str r0, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    adds r1, r5, r7
    ldr r1, [r1]
    mov r3, r8
    adds r2, r5, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L0805BF86
.L0805BF68:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0805BF86
    bl func_08050018
    ldr r1, .L0805BF90 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805BF86:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805BF90: .4byte 0x0201774C
    func_end func_0805BF18

    thumb_func_start func_0805BF94
func_0805BF94: @ 0x0805BF94
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805BFEC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805BFF0 @ =0x08BA2D60
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    adds r0, r5, #0
    bl GetAnimAnotherSide
    adds r5, r0, #0
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L0805BFF4 @ =0x08BA14DC
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r4, #0x60]
    ldr r0, .L0805BFF8 @ =0x0000F3FF
    ldrh r1, [r6, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #3
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r6, #8]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805BFFC
    ldrh r0, [r6, #2]
    subs r0, #8
    b .L0805C000
    .align 2, 0
.L0805BFEC: .4byte 0x0201774C
.L0805BFF0: .4byte 0x08BA2D60
.L0805BFF4: .4byte 0x08BA14DC
.L0805BFF8: .4byte 0x0000F3FF
.L0805BFFC:
    ldrh r0, [r6, #2]
    adds r0, #8
.L0805C000:
    strh r0, [r6, #2]
    ldrh r0, [r6, #4]
    subs r0, #0x10
    strh r0, [r6, #4]
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805BF94

    thumb_func_start func_0805C010
func_0805C010: @ 0x0805C010
    push {lr}
    ldr r2, .L0805C024 @ =0x0201774C
    ldr r1, [r2]
    subs r1, #1
    str r1, [r2]
    ldr r0, [r0, #0x60]
    bl AnimDelete
    pop {r0}
    bx r0
    .align 2, 0
.L0805C024: .4byte 0x0201774C
    func_end func_0805C010

    thumb_func_start func_0805C028
func_0805C028: @ 0x0805C028
    push {r4, lr}
    adds r1, r0, #0
    ldr r2, [r1, #0x60]
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    movs r4, #0
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #1
    bne .L0805C06C
    ldr r0, .L0805C060 @ =0x08BBA2CC
    str r0, [r2, #0x24]
    str r0, [r2, #0x20]
    strh r4, [r2, #6]
    movs r0, #0xa
    strh r0, [r1, #0x2e]
    ldr r0, .L0805C064 @ =0x0824D5C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805C068 @ =0x0824C860
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    b .L0805C07C
    .align 2, 0
.L0805C060: .4byte 0x08BBA2CC
.L0805C064: .4byte 0x0824D5C0
.L0805C068: .4byte 0x0824C860
.L0805C06C:
    movs r2, #0x2e
    ldrsh r0, [r1, r2]
    cmp r3, r0
    bne .L0805C07C
    strh r4, [r1, #0x2c]
    adds r0, r1, #0
    bl Proc_Break
.L0805C07C:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805C028

    thumb_func_start func_0805C084
func_0805C084: @ 0x0805C084
    push {r4, lr}
    adds r1, r0, #0
    ldr r2, [r1, #0x60]
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    movs r4, #0
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #1
    bne .L0805C0C8
    ldr r0, .L0805C0BC @ =0x08BBA5D4
    str r0, [r2, #0x24]
    str r0, [r2, #0x20]
    strh r4, [r2, #6]
    movs r0, #0xa
    strh r0, [r1, #0x2e]
    ldr r0, .L0805C0C0 @ =0x0824D5C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805C0C4 @ =0x0824CD2C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    b .L0805C0D8
    .align 2, 0
.L0805C0BC: .4byte 0x08BBA5D4
.L0805C0C0: .4byte 0x0824D5C0
.L0805C0C4: .4byte 0x0824CD2C
.L0805C0C8:
    movs r2, #0x2e
    ldrsh r0, [r1, r2]
    cmp r3, r0
    bne .L0805C0D8
    strh r4, [r1, #0x2c]
    adds r0, r1, #0
    bl Proc_Break
.L0805C0D8:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805C084

    thumb_func_start func_0805C0E0
func_0805C0E0: @ 0x0805C0E0
    push {r4, lr}
    adds r1, r0, #0
    ldr r2, [r1, #0x60]
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    movs r4, #0
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #1
    bne .L0805C124
    ldr r0, .L0805C118 @ =0x08BBA8D0
    str r0, [r2, #0x24]
    str r0, [r2, #0x20]
    strh r4, [r2, #6]
    movs r0, #0xa
    strh r0, [r1, #0x2e]
    ldr r0, .L0805C11C @ =0x0824D5C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805C120 @ =0x0824D1C4
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    b .L0805C134
    .align 2, 0
.L0805C118: .4byte 0x08BBA8D0
.L0805C11C: .4byte 0x0824D5C0
.L0805C120: .4byte 0x0824D1C4
.L0805C124:
    movs r2, #0x2e
    ldrsh r0, [r1, r2]
    cmp r3, r0
    bne .L0805C134
    strh r4, [r1, #0x2c]
    adds r0, r1, #0
    bl Proc_Break
.L0805C134:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805C0E0

    thumb_func_start func_0805C13C
func_0805C13C: @ 0x0805C13C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805C174 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C178 @ =0x08BA2DA8
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    movs r1, #0x2c
    strh r1, [r0, #0x30]
    ldr r0, .L0805C17C @ =0x0822A25C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805C180 @ =0x08229664
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C174: .4byte 0x0201774C
.L0805C178: .4byte 0x08BA2DA8
.L0805C17C: .4byte 0x0822A25C
.L0805C180: .4byte 0x08229664
    func_end func_0805C13C

    thumb_func_start func_0805C184
func_0805C184: @ 0x0805C184
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    bne .L0805C1D6
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, .L0805C1DC @ =0x08BA2DC0
    movs r1, #0x2e
    ldrsh r2, [r4, r1]
    lsls r1, r2, #2
    adds r1, r1, r0
    lsls r2, r2, #1
    adds r2, #1
    lsls r2, r2, #1
    adds r2, r2, r0
    ldr r0, [r4, #0x5c]
    movs r3, #0
    ldrsh r1, [r1, r3]
    movs r3, #0
    ldrsh r2, [r2, r3]
    bl func_0805C1E4
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #6
    bne .L0805C1D6
    ldr r1, .L0805C1E0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805C1D6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C1DC: .4byte 0x08BA2DC0
.L0805C1E0: .4byte 0x0201774C
    func_end func_0805C184

    thumb_func_start func_0805C1E4
func_0805C1E4: @ 0x0805C1E4
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    ldr r1, .L0805C22C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C230 @ =0x08BA2DD8
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L0805C234 @ =0x08BB9534
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    strh r6, [r0, #2]
    mov r1, r8
    strh r1, [r0, #4]
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C22C: .4byte 0x0201774C
.L0805C230: .4byte 0x08BA2DD8
.L0805C234: .4byte 0x08BB9534
    func_end func_0805C1E4

    thumb_func_start func_0805C238
func_0805C238: @ 0x0805C238
    push {lr}
    ldr r2, .L0805C24C @ =0x0201774C
    ldr r1, [r2]
    subs r1, #1
    str r1, [r2]
    ldr r0, [r0, #0x60]
    bl AnimDelete
    pop {r0}
    bx r0
    .align 2, 0
.L0805C24C: .4byte 0x0201774C
    func_end func_0805C238

    thumb_func_start func_0805C250
func_0805C250: @ 0x0805C250
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805C288 @ =0x08BA2DF8
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C288: .4byte 0x08BA2DF8
    func_end func_0805C250

    thumb_func_start func_0805C28C
func_0805C28C: @ 0x0805C28C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r4, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805C2C2
    ldr r0, [r6, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805C2C2:
    movs r2, #0x2c
    ldrsh r1, [r6, r2]
    adds r0, r4, #1
    cmp r1, r0
    bne .L0805C354
    adds r0, r5, #0
    movs r1, #0x64
    bl func_0805C470
    adds r0, r5, #0
    movs r1, #0x64
    bl func_0805C54C
    movs r4, #0x80
    lsls r4, r4, #1
    movs r0, #1
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0x64
    movs r2, #2
    adds r3, r4, #0
    bl func_080558BC
    adds r0, r5, #0
    movs r1, #0x69
    movs r2, #0
    bl func_08055E14
    ldr r3, .L0805C350 @ =gDispIo
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
    mov r2, r8
    strb r2, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r2, [r0]
    str r1, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0xf
    movs r3, #0
    bl func_08055F08
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x46
    movs r2, #0xf
    movs r3, #0x10
    bl func_08055F08
    movs r0, #0x98
    lsls r0, r0, #1
    adds r1, r4, #0
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
    b .L0805C464
    .align 2, 0
.L0805C350: .4byte gDispIo
.L0805C354:
    adds r0, r4, #0
    adds r0, #0x28
    cmp r1, r0
    bne .L0805C36C
    adds r0, r5, #0
    movs r1, #0x4a
    bl func_0805C5E4
    ldr r0, .L0805C368 @ =0x00000131
    b .L0805C3C4
    .align 2, 0
.L0805C368: .4byte 0x00000131
.L0805C36C:
    adds r0, r4, #0
    adds r0, #0x6e
    cmp r1, r0
    bne .L0805C37C
    adds r0, r5, #0
    bl func_0805C678
    b .L0805C464
.L0805C37C:
    adds r0, r4, #0
    adds r0, #0x6f
    cmp r1, r0
    beq .L0805C3C0
    adds r0, r4, #0
    adds r0, #0x7d
    cmp r1, r0
    beq .L0805C3C0
    adds r0, r4, #0
    adds r0, #0x8b
    cmp r1, r0
    beq .L0805C3C0
    adds r0, r4, #0
    adds r0, #0x99
    cmp r1, r0
    beq .L0805C3C0
    adds r0, r4, #0
    adds r0, #0xa7
    cmp r1, r0
    beq .L0805C3C0
    adds r0, r4, #0
    adds r0, #0xb5
    cmp r1, r0
    beq .L0805C3C0
    adds r0, r4, #0
    adds r0, #0xc3
    cmp r1, r0
    beq .L0805C3C0
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    adds r0, r4, #0
    adds r0, #0xd1
    cmp r1, r0
    bne .L0805C3D4
.L0805C3C0:
    movs r0, #0x99
    lsls r0, r0, #1
.L0805C3C4:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805C464
.L0805C3D4:
    adds r0, r4, #0
    adds r0, #0xee
    cmp r1, r0
    bne .L0805C420
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0804EFDC
    adds r0, r5, #0
    bl func_0805C85C
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, r6, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldr r0, .L0805C41C @ =0x00000133
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805C464
    adds r0, r5, #0
    bl func_08067D14
    b .L0805C464
    .align 2, 0
.L0805C41C: .4byte 0x00000133
.L0805C420:
    adds r0, r4, #0
    adds r0, #0xf8
    cmp r1, r0
    bne .L0805C442
    adds r0, r5, #0
    bl func_0805C708
    movs r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x12
    movs r2, #8
    movs r3, #0x10
    bl func_08055F08
    b .L0805C464
.L0805C442:
    movs r2, #0x91
    lsls r2, r2, #1
    adds r0, r4, r2
    cmp r1, r0
    beq .L0805C464
    movs r3, #0x96
    lsls r3, r3, #1
    adds r0, r4, r3
    cmp r1, r0
    bne .L0805C464
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
.L0805C464:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805C28C

    thumb_func_start func_0805C470
func_0805C470: @ 0x0805C470
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805C4E4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C4E8 @ =0x08BA2E10
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    ldr r0, .L0805C4EC @ =0x0824D5E0
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050018
    ldr r0, .L0805C4F0 @ =0x0824DF20
    ldr r4, .L0805C4F4 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L0805C4F8 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066ACC
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    ldr r2, .L0805C4FC @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C4E4: .4byte 0x0201774C
.L0805C4E8: .4byte 0x08BA2E10
.L0805C4EC: .4byte 0x0824D5E0
.L0805C4F0: .4byte 0x0824DF20
.L0805C4F4: .4byte 0x02019784
.L0805C4F8: .4byte gBg1Tm
.L0805C4FC: .4byte gDispIo
    func_end func_0805C470

    thumb_func_start func_0805C500
func_0805C500: @ 0x0805C500
    push {lr}
    bl func_08050018
    ldr r1, .L0805C518 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L0805C518: .4byte 0x0201774C
    func_end func_0805C500

    thumb_func_start func_0805C51C
func_0805C51C: @ 0x0805C51C
    push {lr}
    adds r2, r0, #0
    ldr r0, .L0805C548 @ =gDispIo
    ldrh r1, [r0, #0x22]
    adds r1, #1
    strh r1, [r0, #0x22]
    ldrh r1, [r0, #0x20]
    subs r1, #1
    strh r1, [r0, #0x20]
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L0805C544
    adds r0, r2, #0
    bl Proc_Break
.L0805C544:
    pop {r0}
    bx r0
    .align 2, 0
.L0805C548: .4byte gDispIo
    func_end func_0805C51C

    thumb_func_start func_0805C54C
func_0805C54C: @ 0x0805C54C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805C584 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C588 @ =0x08BA2E30
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    strh r5, [r0, #0x30]
    str r1, [r0, #0x44]
    ldr r1, .L0805C58C @ =0x081E8B70
    str r1, [r0, #0x48]
    ldr r1, .L0805C590 @ =0x0824DD40
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C584: .4byte 0x0201774C
.L0805C588: .4byte 0x08BA2E30
.L0805C58C: .4byte 0x081E8B70
.L0805C590: .4byte 0x0824DD40
    func_end func_0805C54C

    thumb_func_start func_0805C594
func_0805C594: @ 0x0805C594
    ldr r1, .L0805C5A0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805C5A0: .4byte 0x0201774C
    func_end func_0805C594

    thumb_func_start func_0805C5A4
func_0805C5A4: @ 0x0805C5A4
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805C5C8
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
.L0805C5C8:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805C5DE
    adds r0, r4, #0
    bl Proc_Break
.L0805C5DE:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805C5A4

    thumb_func_start func_0805C5E4
func_0805C5E4: @ 0x0805C5E4
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L0805C630 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C634 @ =0x08BA2E58
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    ldr r3, .L0805C638 @ =0x08BBB5C0
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0805C63C @ =0x082572A4
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805C640 @ =0x08256728
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C630: .4byte 0x0201774C
.L0805C634: .4byte 0x08BA2E58
.L0805C638: .4byte 0x08BBB5C0
.L0805C63C: .4byte 0x082572A4
.L0805C640: .4byte 0x08256728
    func_end func_0805C5E4

    thumb_func_start func_0805C644
func_0805C644: @ 0x0805C644
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805C66C
    ldr r0, .L0805C674 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0805C66C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C674: .4byte 0x0201774C
    func_end func_0805C644

    thumb_func_start func_0805C678
func_0805C678: @ 0x0805C678
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805C6DC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C6E0 @ =0x08BA2E70
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r1, #0
    strh r1, [r5, #0x2c]
    str r1, [r5, #0x44]
    ldr r0, .L0805C6E4 @ =0x081E8BAE
    str r0, [r5, #0x48]
    ldr r0, .L0805C6E8 @ =0x08BA2F54
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805C6EC @ =0x08BA2E88
    str r0, [r5, #0x54]
    str r1, [r5, #0x58]
    ldr r0, .L0805C6F0 @ =0x082520E0
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L0805C6F4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805C702
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805C6F8
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0805C702
    .align 2, 0
.L0805C6DC: .4byte 0x0201774C
.L0805C6E0: .4byte 0x08BA2E70
.L0805C6E4: .4byte 0x081E8BAE
.L0805C6E8: .4byte 0x08BA2F54
.L0805C6EC: .4byte 0x08BA2E88
.L0805C6F0: .4byte 0x082520E0
.L0805C6F4: .4byte 0x0203E02C
.L0805C6F8:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0805C702:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805C678

    thumb_func_start func_0805C708
func_0805C708: @ 0x0805C708
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805C764 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C768 @ =0x08BA2E70
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r1, #0
    strh r1, [r5, #0x2c]
    str r1, [r5, #0x44]
    ldr r0, .L0805C76C @ =0x081E82CC
    str r0, [r5, #0x48]
    ldr r0, .L0805C770 @ =0x08BA1B68
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805C774 @ =0x08BA1B14
    str r0, [r5, #0x54]
    str r1, [r5, #0x58]
    ldr r0, .L0805C778 @ =0x08252100
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r0, .L0805C77C @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805C78A
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805C780
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0805C78A
    .align 2, 0
.L0805C764: .4byte 0x0201774C
.L0805C768: .4byte 0x08BA2E70
.L0805C76C: .4byte 0x081E82CC
.L0805C770: .4byte 0x08BA1B68
.L0805C774: .4byte 0x08BA1B14
.L0805C778: .4byte 0x08252100
.L0805C77C: .4byte 0x0203E02C
.L0805C780:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0805C78A:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805C708

    thumb_func_start func_0805C790
func_0805C790: @ 0x0805C790
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805C82C
    ldr r7, [r4, #0x4c]
    ldr r0, [r4, #0x50]
    mov r8, r0
    ldr r0, [r4, #0x54]
    lsls r5, r1, #2
    adds r6, r5, r0
    ldr r0, [r4, #0x58]
    ldr r2, [r6]
    cmp r0, r2
    beq .L0805C7CC
    movs r1, #0x80
    lsls r1, r1, #6
    adds r0, r2, #0
    bl func_0805060C
.L0805C7CC:
    ldr r0, [r6]
    str r0, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    adds r1, r5, r7
    ldr r1, [r1]
    mov r3, r8
    adds r2, r5, r3
    ldr r2, [r2]
    bl func_080504DC
    ldr r0, .L0805C808 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805C84A
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    adds r1, r0, #0
    cmp r1, #0
    bne .L0805C810
    ldr r0, .L0805C80C @ =gBg1Tm
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
    b .L0805C820
    .align 2, 0
.L0805C808: .4byte 0x0203E02C
.L0805C80C: .4byte gBg1Tm
.L0805C810:
    ldr r0, .L0805C828 @ =0x0202349A
    movs r1, #0
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
.L0805C820:
    movs r0, #2
    bl EnableBgSync
    b .L0805C84A
    .align 2, 0
.L0805C828: .4byte 0x0202349A
.L0805C82C:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0805C84A
    bl func_08050018
    ldr r1, .L0805C858 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805C84A:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C858: .4byte 0x0201774C
    func_end func_0805C790

    thumb_func_start func_0805C85C
func_0805C85C: @ 0x0805C85C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805C894 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C898 @ =0x08BA3020
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    ldr r0, .L0805C89C @ =0x082572C4
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805C8A0 @ =0x08256728
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C894: .4byte 0x0201774C
.L0805C898: .4byte 0x08BA3020
.L0805C89C: .4byte 0x082572C4
.L0805C8A0: .4byte 0x08256728
    func_end func_0805C85C

    thumb_func_start func_0805C8A4
func_0805C8A4: @ 0x0805C8A4
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #2
    bne .L0805C8E4
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x5c]
    ldr r2, [r4, #0x44]
    adds r1, r2, #0
    adds r2, #1
    str r2, [r4, #0x44]
    bl func_0805C8F0
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #8
    bne .L0805C8E4
    ldr r1, .L0805C8EC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805C8E4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C8EC: .4byte 0x0201774C
    func_end func_0805C8A4

    thumb_func_start func_0805C8F0
func_0805C8F0: @ 0x0805C8F0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r1, .L0805C930 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805C934 @ =0x08BA3038
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #0x1e
    strh r0, [r5, #0x2e]
    ldr r1, .L0805C938 @ =0x08BA3050
    movs r0, #7
    ands r0, r4
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [r5, #0x44]
    movs r1, #0
    movs r0, #1
    ands r0, r4
    cmp r0, #0
    beq .L0805C93C
    cmp r0, #1
    beq .L0805C944
    b .L0805C950
    .align 2, 0
.L0805C930: .4byte 0x0201774C
.L0805C934: .4byte 0x08BA3038
.L0805C938: .4byte 0x08BA3050
.L0805C93C:
    ldr r0, .L0805C940 @ =0x08BBB568
    b .L0805C946
    .align 2, 0
.L0805C940: .4byte 0x08BBB568
.L0805C944:
    ldr r0, .L0805C96C @ =0x08BBB594
.L0805C946:
    movs r1, #0x78
    bl AnimCreate
    adds r1, r0, #0
    str r1, [r5, #0x60]
.L0805C950:
    movs r0, #0xa1
    lsls r0, r0, #6
    strh r0, [r1, #8]
    ldrh r0, [r6, #2]
    strh r0, [r1, #2]
    ldrh r0, [r6, #2]
    strh r0, [r5, #0x32]
    ldrh r0, [r6, #4]
    strh r0, [r1, #4]
    ldrh r0, [r6, #4]
    strh r0, [r5, #0x3a]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C96C: .4byte 0x08BBB594
    func_end func_0805C8F0

    thumb_func_start func_0805C970
func_0805C970: @ 0x0805C970
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r5, [r6, #0x60]
    movs r2, #0x96
    lsls r2, r2, #1
    movs r0, #0x2c
    ldrsh r3, [r6, r0]
    movs r1, #0x2e
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    ldr r4, .L0805C9E8 @ =0x080C5A48
    ldr r2, [r6, #0x44]
    lsls r1, r2, #1
    adds r1, r1, r4
    movs r3, #0
    ldrsh r1, [r1, r3]
    adds r3, r0, #0
    muls r3, r1, r3
    adds r2, #0x40
    lsls r2, r2, #1
    adds r2, r2, r4
    movs r4, #0
    ldrsh r1, [r2, r4]
    muls r0, r1, r0
    asrs r3, r3, #0xc
    ldrh r1, [r6, #0x32]
    adds r3, r1, r3
    strh r3, [r5, #2]
    asrs r0, r0, #0xc
    ldrh r2, [r6, #0x3a]
    adds r0, r2, r0
    strh r0, [r5, #4]
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r6, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L0805C9DE
    ldr r0, .L0805C9EC @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r6, #0x60]
    bl AnimDelete
    adds r0, r6, #0
    bl Proc_Break
.L0805C9DE:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805C9E8: .4byte gSinLut
.L0805C9EC: .4byte 0x0201774C
    func_end func_0805C970

    thumb_func_start func_0805C9F0
func_0805C9F0: @ 0x0805C9F0
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805CA14 @ =0x08BA3070
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805CA14: .4byte 0x08BA3070
    func_end func_0805C9F0

    thumb_func_start func_0805CA18
func_0805CA18: @ 0x0805CA18
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r6, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805CA4A
    ldr r0, [r4, #0x5c]
    bl func_0805D430
    movs r0, #0xb3
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CAF4
.L0805CA4A:
    cmp r0, #0x34
    bne .L0805CAB0
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D03C
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D21C
    ldr r3, .L0805CAAC @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x23
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    movs r0, #0x87
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CAF4
    .align 2, 0
.L0805CAAC: .4byte gDispIo
.L0805CAB0:
    cmp r0, #0x37
    bne .L0805CABE
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    b .L0805CB38
.L0805CABE:
    cmp r0, #0x71
    bne .L0805CB00
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D0F8
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D28C
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x1d
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    ldr r0, .L0805CAFC @ =0x0000010F
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
.L0805CAF4:
    movs r3, #1
    bl func_080681E4
    b .L0805CB38
    .align 2, 0
.L0805CAFC: .4byte 0x0000010F
.L0805CB00:
    cmp r0, #0xa6
    bne .L0805CB0C
    adds r0, r5, #0
    bl func_0804DC98
    b .L0805CB38
.L0805CB0C:
    cmp r0, #0xb5
    bne .L0805CB38
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r5, #0
    bl GetAnimNextRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L0805CB32
    movs r0, #2
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
.L0805CB32:
    adds r0, r4, #0
    bl Proc_Break
.L0805CB38:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805CA18

    thumb_func_start func_0805CB40
func_0805CB40: @ 0x0805CB40
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805CB64 @ =0x08BA3088
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805CB64: .4byte 0x08BA3088
    func_end func_0805CB40

    thumb_func_start func_0805CB68
func_0805CB68: @ 0x0805CB68
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r2, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r6, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805CBA0
    ldr r0, [r4, #0x5c]
    bl func_0805D430
    movs r0, #0xb3
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CC8A
.L0805CBA0:
    cmp r0, #0x34
    bne .L0805CC08
    ldr r0, [r4, #0x5c]
    movs r1, #1
    bl func_0805D03C
    ldr r0, [r4, #0x5c]
    movs r1, #1
    bl func_0805D21C
    ldr r3, .L0805CC04 @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x23
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    movs r0, #0x88
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CC8A
    .align 2, 0
.L0805CC04: .4byte gDispIo
.L0805CC08:
    cmp r0, #0x37
    bne .L0805CC16
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    b .L0805CCDC
.L0805CC16:
    cmp r0, #0x71
    bne .L0805CC26
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L0805CCDC
.L0805CC26:
    movs r3, #0x2c
    ldrsh r1, [r4, r3]
    adds r0, r2, #0
    adds r0, #0x72
    cmp r1, r0
    bne .L0805CC9C
    ldr r0, [r4, #0x5c]
    movs r1, #1
    bl func_0805D0F8
    ldr r0, [r4, #0x5c]
    movs r1, #1
    bl func_0805D28C
    ldr r3, .L0805CC94 @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x1d
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    ldr r0, .L0805CC98 @ =0x00000111
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
.L0805CC8A:
    movs r3, #1
    bl func_080681E4
    b .L0805CCDC
    .align 2, 0
.L0805CC94: .4byte gDispIo
.L0805CC98: .4byte 0x00000111
.L0805CC9C:
    adds r0, r2, #0
    adds r0, #0xa6
    cmp r1, r0
    bne .L0805CCAC
    adds r0, r5, #0
    bl func_0804DC98
    b .L0805CCDC
.L0805CCAC:
    adds r0, r2, #0
    adds r0, #0xb5
    cmp r1, r0
    bne .L0805CCDC
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r5, #0
    bl GetAnimNextRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L0805CCD6
    movs r0, #2
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
.L0805CCD6:
    adds r0, r4, #0
    bl Proc_Break
.L0805CCDC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805CB68

    thumb_func_start func_0805CCE4
func_0805CCE4: @ 0x0805CCE4
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805CD08 @ =0x08BA30A0
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805CD08: .4byte 0x08BA30A0
    func_end func_0805CCE4

    thumb_func_start func_0805CD0C
func_0805CD0C: @ 0x0805CD0C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r2, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r6, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805CD44
    ldr r0, [r4, #0x5c]
    bl func_0805D430
    movs r0, #0xb3
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CE2E
.L0805CD44:
    cmp r0, #0x34
    bne .L0805CDAC
    ldr r0, [r4, #0x5c]
    movs r1, #2
    bl func_0805D03C
    ldr r0, [r4, #0x5c]
    movs r1, #2
    bl func_0805D21C
    ldr r3, .L0805CDA8 @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x23
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    movs r0, #0x89
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CE2E
    .align 2, 0
.L0805CDA8: .4byte gDispIo
.L0805CDAC:
    cmp r0, #0x37
    bne .L0805CDBA
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    b .L0805CE80
.L0805CDBA:
    cmp r0, #0x71
    bne .L0805CDCA
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L0805CE80
.L0805CDCA:
    movs r3, #0x2c
    ldrsh r1, [r4, r3]
    adds r0, r2, #0
    adds r0, #0x72
    cmp r1, r0
    bne .L0805CE40
    ldr r0, [r4, #0x5c]
    movs r1, #2
    bl func_0805D0F8
    ldr r0, [r4, #0x5c]
    movs r1, #2
    bl func_0805D28C
    ldr r3, .L0805CE38 @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x1d
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    ldr r0, .L0805CE3C @ =0x00000113
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
.L0805CE2E:
    movs r3, #1
    bl func_080681E4
    b .L0805CE80
    .align 2, 0
.L0805CE38: .4byte gDispIo
.L0805CE3C: .4byte 0x00000113
.L0805CE40:
    adds r0, r2, #0
    adds r0, #0xa6
    cmp r1, r0
    bne .L0805CE50
    adds r0, r5, #0
    bl func_0804DC98
    b .L0805CE80
.L0805CE50:
    adds r0, r2, #0
    adds r0, #0xb5
    cmp r1, r0
    bne .L0805CE80
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r5, #0
    bl GetAnimNextRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L0805CE7A
    movs r0, #2
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
.L0805CE7A:
    adds r0, r4, #0
    bl Proc_Break
.L0805CE80:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805CD0C

    thumb_func_start func_0805CE88
func_0805CE88: @ 0x0805CE88
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805CEAC @ =0x08BA30B8
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805CEAC: .4byte 0x08BA30B8
    func_end func_0805CE88

    thumb_func_start func_0805CEB0
func_0805CEB0: @ 0x0805CEB0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r2, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r6, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805CEF0
    ldr r0, [r4, #0x5c]
    bl func_0805D430
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D590
    movs r0, #0xb3
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CFE2
.L0805CEF0:
    cmp r0, #0x34
    bne .L0805CF58
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D03C
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D21C
    ldr r3, .L0805CF54 @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x23
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    movs r0, #0x87
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L0805CFE2
    .align 2, 0
.L0805CF54: .4byte gDispIo
.L0805CF58:
    cmp r0, #0x37
    bne .L0805CF66
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    b .L0805D034
.L0805CF66:
    cmp r0, #0x97
    bne .L0805CF7E
    ldr r0, [r4, #0x5c]
    movs r1, #1
    bl func_0805D590
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L0805D034
.L0805CF7E:
    movs r3, #0x2c
    ldrsh r1, [r4, r3]
    adds r0, r2, #0
    adds r0, #0xa1
    cmp r1, r0
    bne .L0805CFF4
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D0F8
    ldr r0, [r4, #0x5c]
    movs r1, #0
    bl func_0805D28C
    ldr r3, .L0805CFEC @ =gDispIo
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
    strb r6, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r6, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0xc
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0x1d
    movs r2, #0x19
    movs r3, #1
    bl func_0805D344
    ldr r0, .L0805CFF0 @ =0x0000010F
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
.L0805CFE2:
    movs r3, #1
    bl func_080681E4
    b .L0805D034
    .align 2, 0
.L0805CFEC: .4byte gDispIo
.L0805CFF0: .4byte 0x0000010F
.L0805CFF4:
    adds r0, r2, #0
    adds r0, #0xd3
    cmp r1, r0
    bne .L0805D004
    adds r0, r5, #0
    bl func_0804DC98
    b .L0805D034
.L0805D004:
    adds r0, r2, #0
    adds r0, #0xdd
    cmp r1, r0
    bne .L0805D034
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r5, #0
    bl GetAnimNextRoundType
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, r1
    beq .L0805D02E
    movs r0, #2
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
.L0805D02E:
    adds r0, r4, #0
    bl Proc_Break
.L0805D034:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805CEB0

    thumb_func_start func_0805D03C
func_0805D03C: @ 0x0805D03C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    ldr r1, .L0805D084 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D088 @ =0x08BA30D0
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    cmp r6, #0
    beq .L0805D09C
    cmp r6, #2
    bhi .L0805D0EE
    adds r1, r5, #0
    adds r1, #0x29
    movs r0, #1
    strb r0, [r1]
    ldr r0, .L0805D08C @ =0x081E8CBC
    str r0, [r5, #0x48]
    ldr r0, .L0805D090 @ =0x0826B454
    str r0, [r5, #0x4c]
    ldr r0, .L0805D094 @ =0x0826BDB4
    str r0, [r5, #0x50]
    ldr r0, .L0805D098 @ =0x0826AC5C
    movs r1, #0xa8
    lsls r1, r1, #5
    bl func_0805060C
    b .L0805D0EE
    .align 2, 0
.L0805D084: .4byte 0x0201774C
.L0805D088: .4byte 0x08BA30D0
.L0805D08C: .4byte 0x081E8CBC
.L0805D090: .4byte 0x0826B454
.L0805D094: .4byte 0x0826BDB4
.L0805D098: .4byte 0x0826AC5C
.L0805D09C:
    adds r1, r5, #0
    adds r1, #0x29
    movs r0, #1
    strb r0, [r1]
    ldr r0, .L0805D0D4 @ =0x081E8CB0
    str r0, [r5, #0x48]
    ldr r0, .L0805D0D8 @ =0x08269E88
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805D0DC @ =0x08269CF8
    movs r1, #0x80
    lsls r1, r1, #3
    bl func_0805060C
    ldr r0, .L0805D0E0 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805D0EE
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805D0E4
    movs r0, #1
    movs r1, #0x18
    b .L0805D0E8
    .align 2, 0
.L0805D0D4: .4byte 0x081E8CB0
.L0805D0D8: .4byte 0x08269E88
.L0805D0DC: .4byte 0x08269CF8
.L0805D0E0: .4byte 0x0203E02C
.L0805D0E4:
    movs r0, #1
    movs r1, #0xe8
.L0805D0E8:
    movs r2, #0
    bl SetBgOffset
.L0805D0EE:
    bl func_08050040
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805D03C

    thumb_func_start func_0805D0F8
func_0805D0F8: @ 0x0805D0F8
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    ldr r1, .L0805D140 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D144 @ =0x08BA30D0
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r1, #0
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    adds r0, r5, #0
    adds r0, #0x29
    strb r1, [r0]
    cmp r6, #0
    beq .L0805D158
    cmp r6, #2
    bhi .L0805D1A2
    ldr r0, .L0805D148 @ =0x081E8CC2
    str r0, [r5, #0x48]
    ldr r0, .L0805D14C @ =0x0826B454
    str r0, [r5, #0x4c]
    ldr r0, .L0805D150 @ =0x0826BDB4
    str r0, [r5, #0x50]
    ldr r0, .L0805D154 @ =0x0826AC5C
    movs r1, #0xa8
    lsls r1, r1, #5
    bl func_0805060C
    b .L0805D1A2
    .align 2, 0
.L0805D140: .4byte 0x0201774C
.L0805D144: .4byte 0x08BA30D0
.L0805D148: .4byte 0x081E8CC2
.L0805D14C: .4byte 0x0826B454
.L0805D150: .4byte 0x0826BDB4
.L0805D154: .4byte 0x0826AC5C
.L0805D158:
    ldr r0, .L0805D188 @ =0x081E8CB6
    str r0, [r5, #0x48]
    ldr r0, .L0805D18C @ =0x08269E88
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805D190 @ =0x08269CF8
    movs r1, #0x80
    lsls r1, r1, #3
    bl func_0805060C
    ldr r0, .L0805D194 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805D1A2
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805D198
    movs r0, #1
    movs r1, #0xe8
    b .L0805D19C
    .align 2, 0
.L0805D188: .4byte 0x081E8CB6
.L0805D18C: .4byte 0x08269E88
.L0805D190: .4byte 0x08269CF8
.L0805D194: .4byte 0x0203E02C
.L0805D198:
    movs r0, #1
    movs r1, #0x18
.L0805D19C:
    movs r2, #0
    bl SetBgOffset
.L0805D1A2:
    bl func_08050040
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805D0F8

    thumb_func_start func_0805D1AC
func_0805D1AC: @ 0x0805D1AC
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L0805D1DE
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r4, r3, #2
    adds r4, r4, r3
    lsls r3, r4, #4
    subs r3, r3, r4
    lsls r3, r3, #4
    adds r1, r1, r3
    adds r2, r2, r3
    bl func_08050478
    b .L0805D210
.L0805D1DE:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L0805D210
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0805D1F8
    bl func_08050018
    bl func_08050118
.L0805D1F8:
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r1, .L0805D218 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805D210:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D218: .4byte 0x0201774C
    func_end func_0805D1AC

    thumb_func_start func_0805D21C
func_0805D21C: @ 0x0805D21C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805D244 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D248 @ =0x08BA30E8
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    str r4, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    str r0, [r1, #0x44]
    cmp r5, #0
    bne .L0805D250
    ldr r0, .L0805D24C @ =0x081E8CC8
    b .L0805D25E
    .align 2, 0
.L0805D244: .4byte 0x0201774C
.L0805D248: .4byte 0x08BA30E8
.L0805D24C: .4byte 0x081E8CC8
.L0805D250:
    cmp r5, #1
    bne .L0805D25C
    ldr r0, .L0805D258 @ =0x081E8D4C
    b .L0805D25E
    .align 2, 0
.L0805D258: .4byte 0x081E8D4C
.L0805D25C:
    ldr r0, .L0805D268 @ =0x081E8D7E
.L0805D25E:
    str r0, [r1, #0x48]
    cmp r5, #0
    bne .L0805D270
    ldr r0, .L0805D26C @ =0x0826A7E8
    b .L0805D27E
    .align 2, 0
.L0805D268: .4byte 0x081E8D7E
.L0805D26C: .4byte 0x0826A7E8
.L0805D270:
    cmp r5, #1
    bne .L0805D27C
    ldr r0, .L0805D278 @ =0x0826C934
    b .L0805D27E
    .align 2, 0
.L0805D278: .4byte 0x0826C934
.L0805D27C:
    ldr r0, .L0805D288 @ =0x0826C714
.L0805D27E:
    str r0, [r1, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D288: .4byte 0x0826C714
    func_end func_0805D21C

    thumb_func_start func_0805D28C
func_0805D28C: @ 0x0805D28C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805D2B4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D2B8 @ =0x08BA30E8
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    str r4, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    str r0, [r1, #0x44]
    cmp r5, #0
    bne .L0805D2C0
    ldr r0, .L0805D2BC @ =0x081E8D0A
    b .L0805D2CE
    .align 2, 0
.L0805D2B4: .4byte 0x0201774C
.L0805D2B8: .4byte 0x08BA30E8
.L0805D2BC: .4byte 0x081E8D0A
.L0805D2C0:
    cmp r5, #1
    bne .L0805D2CC
    ldr r0, .L0805D2C8 @ =0x081E8D4C
    b .L0805D2CE
    .align 2, 0
.L0805D2C8: .4byte 0x081E8D4C
.L0805D2CC:
    ldr r0, .L0805D2D8 @ =0x081E8D7E
.L0805D2CE:
    str r0, [r1, #0x48]
    cmp r5, #0
    bne .L0805D2E0
    ldr r0, .L0805D2DC @ =0x0826A7E8
    b .L0805D2EE
    .align 2, 0
.L0805D2D8: .4byte 0x081E8D7E
.L0805D2DC: .4byte 0x0826A7E8
.L0805D2E0:
    cmp r5, #1
    bne .L0805D2EC
    ldr r0, .L0805D2E8 @ =0x0826C934
    b .L0805D2EE
    .align 2, 0
.L0805D2E8: .4byte 0x0826C934
.L0805D2EC:
    ldr r0, .L0805D2F8 @ =0x0826C714
.L0805D2EE:
    str r0, [r1, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D2F8: .4byte 0x0826C714
    func_end func_0805D28C

    thumb_func_start func_0805D2FC
func_0805D2FC: @ 0x0805D2FC
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805D322
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L0805D338
.L0805D322:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0805D338
    ldr r1, .L0805D340 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805D338:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D340: .4byte 0x0201774C
    func_end func_0805D2FC

    thumb_func_start func_0805D344
func_0805D344: @ 0x0805D344
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r8, r3
    ldr r1, .L0805D378 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D37C @ =0x08BA3108
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
.L0805D378: .4byte 0x0201774C
.L0805D37C: .4byte 0x08BA3108
    func_end func_0805D344

    thumb_func_start func_0805D380
func_0805D380: @ 0x0805D380
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    subs r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L0805D396
    adds r0, r1, #0
    bl Proc_Break
.L0805D396:
    pop {r0}
    bx r0
    func_end func_0805D380

    thumb_func_start func_0805D39C
func_0805D39C: @ 0x0805D39C
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    cmp r1, r0
    ble .L0805D3C4
    ldr r1, .L0805D3C0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
    b .L0805D422
    .align 2, 0
.L0805D3C0: .4byte 0x0201774C
.L0805D3C4:
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0805D3E0
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x10
    b .L0805D3F0
.L0805D3E0:
    movs r2, #0x2c
    ldrsh r3, [r4, r2]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0x10
    movs r2, #0
.L0805D3F0:
    bl Interpolate
    adds r5, r0, #0
    ldr r3, .L0805D42C @ =gDispIo
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
.L0805D422:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D42C: .4byte gDispIo
    func_end func_0805D39C

    thumb_func_start func_0805D430
func_0805D430: @ 0x0805D430
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805D47C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D480 @ =0x08BA3128
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x33
    strh r0, [r4, #0x2e]
    ldr r3, .L0805D484 @ =0x08BBE6B0
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0805D488 @ =0x0826AC3C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805D48C @ =0x0826A9E8
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D47C: .4byte 0x0201774C
.L0805D480: .4byte 0x08BA3128
.L0805D484: .4byte 0x08BBE6B0
.L0805D488: .4byte 0x0826AC3C
.L0805D48C: .4byte 0x0826A9E8
    func_end func_0805D430

    thumb_func_start func_0805D490
func_0805D490: @ 0x0805D490
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805D4E0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D4E4 @ =0x08BA3140
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x33
    strh r0, [r4, #0x2e]
    movs r0, #0x34
    strh r0, [r4, #0x30]
    ldr r3, .L0805D4E8 @ =0x08BBE6B0
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0805D4EC @ =0x0826AC3C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805D4F0 @ =0x0826A9E8
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D4E0: .4byte 0x0201774C
.L0805D4E4: .4byte 0x08BA3140
.L0805D4E8: .4byte 0x08BBE6B0
.L0805D4EC: .4byte 0x0826AC3C
.L0805D4F0: .4byte 0x0826A9E8
    func_end func_0805D490

    thumb_func_start func_0805D4F4
func_0805D4F4: @ 0x0805D4F4
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805D51C
    ldr r0, .L0805D524 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0805D51C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D524: .4byte 0x0201774C
    func_end func_0805D4F4

    thumb_func_start func_0805D528
func_0805D528: @ 0x0805D528
    push {r4, r5, lr}
    adds r2, r0, #0
    ldr r3, [r2, #0x60]
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    movs r4, #0
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r5, [r2, #0x2e]
    lsls r1, r5, #0x10
    cmp r0, r1
    bne .L0805D550
    ldr r0, .L0805D558 @ =0x08BBE740
    str r0, [r3, #0x24]
    str r0, [r3, #0x20]
    strh r4, [r3, #6]
    strh r4, [r2, #0x2c]
    adds r0, r2, #0
    bl Proc_Break
.L0805D550:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D558: .4byte 0x08BBE740
    func_end func_0805D528

    thumb_func_start func_0805D55C
func_0805D55C: @ 0x0805D55C
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805D584
    ldr r0, .L0805D58C @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0805D584:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D58C: .4byte 0x0201774C
    func_end func_0805D55C

    thumb_func_start func_0805D590
func_0805D590: @ 0x0805D590
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r1, .L0805D5C0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D5C4 @ =0x08BA3160
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    str r5, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    adds r0, r1, #0
    adds r0, #0x29
    strb r4, [r0]
    cmp r4, #0
    bne .L0805D5C8
    movs r0, #0x2b
    strh r0, [r1, #0x2e]
    movs r0, #0x44
    b .L0805D5CE
    .align 2, 0
.L0805D5C0: .4byte 0x0201774C
.L0805D5C4: .4byte 0x08BA3160
.L0805D5C8:
    movs r0, #0x1f
    strh r0, [r1, #0x2e]
    movs r0, #0x3d
.L0805D5CE:
    strh r0, [r1, #0x30]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805D590

    thumb_func_start func_0805D5D8
func_0805D5D8: @ 0x0805D5D8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805D696
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0805D63E
    ldr r0, .L0805D620 @ =0x08BBFC5C
    mov r8, r0
    ldr r7, .L0805D624 @ =0x08BC125C
    ldr r0, .L0805D628 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805D62C
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    movs r5, #0x88
    cmp r0, #0
    bne .L0805D63A
    movs r5, #0x68
    b .L0805D63A
    .align 2, 0
.L0805D620: .4byte 0x08BBFC5C
.L0805D624: .4byte 0x08BC125C
.L0805D628: .4byte 0x0203E02C
.L0805D62C:
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    movs r5, #0x70
    cmp r0, #0
    bne .L0805D63A
    movs r5, #0x80
.L0805D63A:
    movs r6, #0x4e
    b .L0805D67C
.L0805D63E:
    ldr r2, .L0805D660 @ =0x08BBFCD0
    mov r8, r2
    ldr r7, .L0805D664 @ =0x08BC12D0
    ldr r0, .L0805D668 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805D66C
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    movs r5, #0x4c
    cmp r0, #0
    bne .L0805D67A
    movs r5, #0xa4
    b .L0805D67A
    .align 2, 0
.L0805D660: .4byte 0x08BBFCD0
.L0805D664: .4byte 0x08BC12D0
.L0805D668: .4byte 0x0203E02C
.L0805D66C:
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    movs r5, #0x64
    cmp r0, #0
    bne .L0805D67A
    movs r5, #0x8c
.L0805D67A:
    movs r6, #0x40
.L0805D67C:
    ldr r0, [r4, #0x5c]
    mov r2, r8
    str r2, [sp]
    adds r1, r7, #0
    adds r3, r7, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    strh r5, [r0, #2]
    strh r6, [r0, #4]
    adds r0, r4, #0
    bl Proc_Break
.L0805D696:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805D5D8

    thumb_func_start func_0805D6A4
func_0805D6A4: @ 0x0805D6A4
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805D6CC
    ldr r0, .L0805D6D4 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L0805D6CC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D6D4: .4byte 0x0201774C
    func_end func_0805D6A4

    thumb_func_start func_0805D6D8
func_0805D6D8: @ 0x0805D6D8
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805D704 @ =0x08BA3180
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    movs r1, #0
    strh r1, [r0, #0x2c]
    adds r0, #0x29
    strb r2, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D704: .4byte 0x08BA3180
    func_end func_0805D6D8

    thumb_func_start func_0805D708
func_0805D708: @ 0x0805D708
    push {r4, lr}
    adds r4, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805D734 @ =0x08BA3180
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    adds r0, #0x29
    movs r1, #1
    strb r1, [r0]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D734: .4byte 0x08BA3180
    func_end func_0805D708

    thumb_func_start func_0805D738
func_0805D738: @ 0x0805D738
    push {r4, r5, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r5, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #1
    bne .L0805D768
    ldr r0, [r4, #0x5c]
    bl func_0805D490
    movs r0, #0xb3
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805D800
.L0805D768:
    cmp r1, #0x34
    bne .L0805D780
    ldr r0, [r4, #0x5c]
    bl func_0805D80C
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    adds r1, #0x29
    ldrb r1, [r1]
    bl func_0805D8DC
    b .L0805D800
.L0805D780:
    cmp r1, #0xb7
    bne .L0805D7EC
    movs r0, #0x8a
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
    ldr r0, [r4, #0x5c]
    bl func_0805D970
    ldr r0, [r4, #0x5c]
    adds r1, r4, #0
    adds r1, #0x29
    ldrb r1, [r1]
    bl func_0805DB34
    ldr r3, .L0805D7E8 @ =gDispIo
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
    strb r5, [r0]
    adds r1, r3, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r0, r3, #0
    adds r0, #0x46
    strb r5, [r0]
    ldr r0, [r4, #0x5c]
    movs r1, #1
    movs r2, #0x14
    movs r3, #0
    bl func_0805D344
    ldr r0, [r4, #0x5c]
    movs r1, #0xb4
    movs r2, #0x28
    movs r3, #1
    bl func_0805D344
    b .L0805D800
    .align 2, 0
.L0805D7E8: .4byte gDispIo
.L0805D7EC:
    ldr r0, .L0805D808 @ =0x000001C5
    cmp r1, r0
    bne .L0805D800
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805D800:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D808: .4byte 0x000001C5
    func_end func_0805D738

    thumb_func_start func_0805D80C
func_0805D80C: @ 0x0805D80C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805D848 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D84C @ =0x08BA3198
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805D850 @ =0x081E8DC0
    str r1, [r0, #0x48]
    ldr r1, .L0805D854 @ =0x08BA31B0
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L0805D858 @ =0x08269CF8
    movs r1, #0x80
    lsls r1, r1, #3
    bl func_0805060C
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D848: .4byte 0x0201774C
.L0805D84C: .4byte 0x08BA3198
.L0805D850: .4byte 0x081E8DC0
.L0805D854: .4byte 0x08BA31B0
.L0805D858: .4byte 0x08269CF8
    func_end func_0805D80C

    thumb_func_start func_0805D85C
func_0805D85C: @ 0x0805D85C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    adds r0, r4, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r5, r0, #0x10
    cmp r5, #0
    blt .L0805D8B4
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    lsls r0, r5, #2
    adds r1, r0, r1
    ldr r1, [r1]
    adds r0, r0, r2
    ldr r2, [r0]
    adds r0, r6, #0
    bl func_080504DC
    ldr r0, .L0805D8AC @ =0x081E8DD2
    lsls r1, r5, #1
    adds r0, r1, r0
    ldrh r0, [r0]
    ldr r2, .L0805D8B0 @ =0x081E8DDA
    adds r1, r1, r2
    ldrh r2, [r1]
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #0
    bl func_080681E4
    b .L0805D8D2
    .align 2, 0
.L0805D8AC: .4byte 0x081E8DD2
.L0805D8B0: .4byte 0x081E8DDA
.L0805D8B4:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    bne .L0805D8D2
    bl func_08050018
    ldr r1, .L0805D8D8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805D8D2:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D8D8: .4byte 0x0201774C
    func_end func_0805D85C

    thumb_func_start func_0805D8DC
func_0805D8DC: @ 0x0805D8DC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805D908 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805D90C @ =0x08BA31C0
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    str r4, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    str r0, [r1, #0x44]
    ldr r0, .L0805D910 @ =0x081E8DE2
    str r0, [r1, #0x48]
    cmp r5, #0
    bne .L0805D918
    ldr r0, .L0805D914 @ =0x0826D3D4
    b .L0805D91A
    .align 2, 0
.L0805D908: .4byte 0x0201774C
.L0805D90C: .4byte 0x08BA31C0
.L0805D910: .4byte 0x081E8DE2
.L0805D914: .4byte 0x0826D3D4
.L0805D918:
    ldr r0, .L0805D924 @ =0x0826D5D4
.L0805D91A:
    str r0, [r1, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D924: .4byte 0x0826D5D4
    func_end func_0805D8DC

    thumb_func_start func_0805D928
func_0805D928: @ 0x0805D928
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805D94E
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L0805D964
.L0805D94E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0805D964
    ldr r1, .L0805D96C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805D964:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805D96C: .4byte 0x0201774C
    func_end func_0805D928

    thumb_func_start func_0805D970
func_0805D970: @ 0x0805D970
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    ldr r1, .L0805DA2C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805DA30 @ =0x08BA31E0
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805DA34 @ =0x081E8EE4
    str r1, [r0, #0x48]
    ldr r1, .L0805DA38 @ =0x08BA31F8
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L0805DA3C @ =0x0826AC5C
    movs r1, #0xa8
    lsls r1, r1, #5
    bl func_0805060C
    ldr r6, .L0805DA40 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r6, #0xc]
    ands r0, r2
    strb r0, [r6, #0xc]
    adds r0, r1, #0
    ldrb r2, [r6, #0x14]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r6, #0x14]
    ldrb r0, [r6, #0x10]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r6, #0x10]
    movs r0, #3
    ldrb r1, [r6, #0x18]
    orrs r0, r1
    strb r0, [r6, #0x18]
    bl func_0805076C
    ldr r2, .L0805DA44 @ =0x0000F3FF
    mov r8, r2
    mov r0, r8
    ldrh r1, [r5, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #3
    adds r7, r2, #0
    orrs r0, r7
    strh r0, [r5, #8]
    ldr r4, .L0805DA48 @ =0x02000010
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r1, [r0]
    cmp r1, #0
    beq .L0805DA04
    mov r0, r8
    ldrh r2, [r1, #8]
    ands r0, r2
    orrs r0, r7
    strh r0, [r1, #8]
.L0805DA04:
    bl func_08050040
    ldr r0, .L0805DA4C @ =0x0000FFE0
    ldrh r1, [r6, #0x3c]
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    ldr r1, .L0805DA50 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r6, #0x3c]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DA2C: .4byte 0x0201774C
.L0805DA30: .4byte 0x08BA31E0
.L0805DA34: .4byte 0x081E8EE4
.L0805DA38: .4byte 0x08BA31F8
.L0805DA3C: .4byte 0x0826AC5C
.L0805DA40: .4byte gDispIo
.L0805DA44: .4byte 0x0000F3FF
.L0805DA48: .4byte 0x02000010
.L0805DA4C: .4byte 0x0000FFE0
.L0805DA50: .4byte 0x0000E0FF
    func_end func_0805D970

    thumb_func_start func_0805DA54
func_0805DA54: @ 0x0805DA54
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r6, [r5, #0x5c]
    adds r0, r6, #0
    bl GetAnimAnotherSide
    adds r7, r0, #0
    ldr r4, .L0805DAB0 @ =0x02000010
    adds r0, r6, #0
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r4, [r0]
    cmp r4, #0
    beq .L0805DA84
    ldr r0, .L0805DAB4 @ =0x0000F3FF
    ldrh r1, [r4, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #3
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r4, #8]
.L0805DA84:
    adds r0, r5, #0
    adds r0, #0x2c
    adds r1, r5, #0
    adds r1, #0x44
    ldr r2, [r5, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L0805DAB8
    ldr r1, [r5, #0x4c]
    ldr r2, [r5, #0x50]
    lsls r0, r3, #2
    adds r1, r0, r1
    ldr r1, [r1]
    adds r0, r0, r2
    ldr r2, [r0]
    adds r0, r7, #0
    bl func_080504DC
    b .L0805DB22
    .align 2, 0
.L0805DAB0: .4byte 0x02000010
.L0805DAB4: .4byte 0x0000F3FF
.L0805DAB8:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L0805DB22
    bl func_08050018
    ldr r1, .L0805DB28 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r3, .L0805DB2C @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    ldr r2, .L0805DB30 @ =0x0000F3FF
    adds r0, r2, #0
    ldrh r3, [r6, #8]
    ands r0, r3
    movs r3, #0x80
    lsls r3, r3, #4
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r6, #8]
    cmp r4, #0
    beq .L0805DB18
    adds r0, r2, #0
    ldrh r2, [r4, #8]
    ands r0, r2
    orrs r0, r1
    strh r0, [r4, #8]
.L0805DB18:
    bl func_08050118
    adds r0, r5, #0
    bl Proc_Break
.L0805DB22:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DB28: .4byte 0x0201774C
.L0805DB2C: .4byte gDispIo
.L0805DB30: .4byte 0x0000F3FF
    func_end func_0805DA54

    thumb_func_start func_0805DB34
func_0805DB34: @ 0x0805DB34
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805DB60 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805DB64 @ =0x08BA31FC
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    str r4, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    str r0, [r1, #0x44]
    ldr r0, .L0805DB68 @ =0x081E8EEA
    str r0, [r1, #0x48]
    cmp r5, #0
    bne .L0805DB70
    ldr r0, .L0805DB6C @ =0x0826A7E8
    b .L0805DB72
    .align 2, 0
.L0805DB60: .4byte 0x0201774C
.L0805DB64: .4byte 0x08BA31FC
.L0805DB68: .4byte 0x081E8EEA
.L0805DB6C: .4byte 0x0826A7E8
.L0805DB70:
    ldr r0, .L0805DB7C @ =0x0826D7D4
.L0805DB72:
    str r0, [r1, #0x4c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DB7C: .4byte 0x0826D7D4
    func_end func_0805DB34

    thumb_func_start func_0805DB80
func_0805DB80: @ 0x0805DB80
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805DBA6
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L0805DBBC
.L0805DBA6:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0805DBBC
    ldr r1, .L0805DBC4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805DBBC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DBC4: .4byte 0x0201774C
    func_end func_0805DB80

    thumb_func_start func_0805DBC8
func_0805DBC8: @ 0x0805DBC8
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805DC00 @ =0x08BA321C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DC00: .4byte 0x08BA321C
    func_end func_0805DBC8

    thumb_func_start func_0805DC04
func_0805DC04: @ 0x0805DC04
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    bl func_08050778
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805DC3A
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805DC3A:
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    adds r0, r5, #1
    cmp r1, r0
    bne .L0805DCB0
    adds r0, r6, #0
    bl func_0805DD28
    movs r5, #8
    str r5, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x28
    movs r2, #0x1e
    movs r3, #0x10
    bl func_08055F08
    movs r4, #0x10
    str r4, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x47
    movs r2, #0x1e
    movs r3, #8
    bl func_08055F08
    str r5, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x66
    movs r2, #0x1e
    movs r3, #0x10
    bl func_08055F08
    str r4, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x85
    movs r2, #0x1e
    movs r3, #8
    bl func_08055F08
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0xa4
    movs r2, #0x3c
    movs r3, #0x10
    bl func_08055F08
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r6, r0]
    movs r0, #0xfd
    movs r3, #1
    bl func_080681E4
    b .L0805DD1C
.L0805DCB0:
    adds r0, r5, #0
    adds r0, #0x50
    cmp r1, r0
    bne .L0805DCC0
    adds r0, r6, #0
    bl func_0805DDE0
    b .L0805DD1C
.L0805DCC0:
    adds r0, r5, #0
    adds r0, #0xa4
    cmp r1, r0
    bne .L0805DCD6
    adds r0, r6, #0
    movs r1, #1
    movs r2, #5
    movs r3, #0
    bl func_0804F598
    b .L0805DD1C
.L0805DCD6:
    adds r0, r5, #0
    adds r0, #0xc8
    cmp r1, r0
    bne .L0805DCFC
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r1, [r0]
    adds r0, r6, #0
    bl func_080503E0
    adds r0, r6, #0
    movs r1, #0
    bl func_0804F810
    b .L0805DD1C
.L0805DCFC:
    movs r2, #0x96
    lsls r2, r2, #1
    adds r0, r5, r2
    cmp r1, r0
    bne .L0805DD1C
    movs r0, #2
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805DD1C:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805DC04

    thumb_func_start func_0805DD28
func_0805DD28: @ 0x0805DD28
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805DD64 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805DD68 @ =0x08BA3234
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805DD6C @ =0x081E8FC8
    str r1, [r0, #0x48]
    ldr r1, .L0805DD70 @ =0x08BA324C
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805DD74 @ =0x08BA3280
    str r1, [r0, #0x54]
    ldr r0, .L0805DD78 @ =0x08270258
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DD64: .4byte 0x0201774C
.L0805DD68: .4byte 0x08BA3234
.L0805DD6C: .4byte 0x081E8FC8
.L0805DD70: .4byte 0x08BA324C
.L0805DD74: .4byte 0x08BA3280
.L0805DD78: .4byte 0x08270258
    func_end func_0805DD28

    thumb_func_start func_0805DD7C
func_0805DD7C: @ 0x0805DD7C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L0805DDB8
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    ldr r5, [r4, #0x54]
    ldr r0, [r4, #0x5c]
    lsls r4, r3, #2
    adds r1, r4, r1
    ldr r1, [r1]
    adds r2, r4, r2
    ldr r2, [r2]
    bl func_080504DC
    adds r4, r4, r5
    ldr r0, [r4]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    b .L0805DDD6
.L0805DDB8:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L0805DDD6
    bl func_08050018
    ldr r1, .L0805DDDC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805DDD6:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DDDC: .4byte 0x0201774C
    func_end func_0805DD7C

    thumb_func_start func_0805DDE0
func_0805DDE0: @ 0x0805DDE0
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L0805DE1C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805DE20 @ =0x08BA32B4
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    ldr r3, .L0805DE24 @ =0x08BC4044
    str r3, [sp]
    adds r0, r4, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r5, #0x60]
    adds r0, r4, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805DE28
    ldrh r0, [r6, #2]
    subs r0, #8
    b .L0805DE2C
    .align 2, 0
.L0805DE1C: .4byte 0x0201774C
.L0805DE20: .4byte 0x08BA32B4
.L0805DE24: .4byte 0x08BC4044
.L0805DE28:
    ldrh r0, [r6, #2]
    adds r0, #8
.L0805DE2C:
    strh r0, [r6, #2]
    ldrh r0, [r6, #4]
    subs r0, #8
    strh r0, [r6, #4]
    ldr r0, .L0805DE50 @ =0x08276198
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805DE54 @ =0x08275FB0
    movs r1, #0x80
    lsls r1, r1, #4
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DE50: .4byte 0x08276198
.L0805DE54: .4byte 0x08275FB0
    func_end func_0805DDE0

    thumb_func_start func_0805DE58
func_0805DE58: @ 0x0805DE58
    ldr r1, .L0805DE64 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805DE64: .4byte 0x0201774C
    func_end func_0805DE58

    thumb_func_start func_0805DE68
func_0805DE68: @ 0x0805DE68
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805DEA0 @ =0x08BA32D4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805DEA0: .4byte 0x08BA32D4
    func_end func_0805DE68

    thumb_func_start func_0805DEA4
func_0805DEA4: @ 0x0805DEA4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805DEE8
    ldr r0, [r4, #0x5c]
    bl func_0805E090
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xfa
    movs r3, #1
    bl func_080681E4
.L0805DEE8:
    ldrh r0, [r4, #0x2c]
    cmp r0, #0x29
    bne .L0805DEFA
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    b .L0805DF9E
.L0805DEFA:
    movs r3, #0x2c
    ldrsh r1, [r4, r3]
    adds r0, r6, #0
    adds r0, #0x44
    cmp r1, r0
    bne .L0805DF2E
    ldr r0, [r4, #0x5c]
    bl func_0805DFAC
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r5, r0]
    movs r0, #0xfb
    movs r3, #1
    bl func_080681E4
    ldr r0, [r4, #0x5c]
    str r7, [sp]
    str r7, [sp, #4]
    movs r1, #0x42
    movs r2, #0x14
    movs r3, #0x10
    bl func_08055F08
    b .L0805DF9E
.L0805DF2E:
    adds r0, r6, #0
    adds r0, #0x86
    cmp r1, r0
    bne .L0805DF80
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r0, #0xfc
    movs r3, #1
    bl func_080681E4
    bl func_080676B4
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r6, r4, #0
    adds r6, #0x29
    ldrb r1, [r6]
    adds r0, r5, #0
    bl func_080503E0
    ldr r0, [r4, #0x5c]
    movs r1, #0xa
    bl func_0804EFDC
    ldrb r0, [r6]
    cmp r0, #0
    bne .L0805DF9E
    adds r0, r5, #0
    bl func_0804F840
    cmp r0, #0
    bne .L0805DF9E
    adds r0, r5, #0
    movs r1, #3
    bl func_0804F810
    b .L0805DF9E
.L0805DF80:
    adds r0, r6, #0
    adds r0, #0x9e
    cmp r1, r0
    bne .L0805DF9E
    movs r0, #2
    ldrh r3, [r5, #0x10]
    orrs r0, r3
    strh r0, [r5, #0x10]
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805DF9E:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805DEA4

    thumb_func_start func_0805DFAC
func_0805DFAC: @ 0x0805DFAC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805E00C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E010 @ =0x08BA32EC
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805E014 @ =0x081E8FFE
    str r0, [r5, #0x48]
    ldr r0, .L0805E018 @ =0x08BA3304
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805E01C @ =0x08272D9C
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805E020 @ =0x08270E90
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    ldr r0, .L0805E024 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805E032
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805E028
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L0805E032
    .align 2, 0
.L0805E00C: .4byte 0x0201774C
.L0805E010: .4byte 0x08BA32EC
.L0805E014: .4byte 0x081E8FFE
.L0805E018: .4byte 0x08BA3304
.L0805E01C: .4byte 0x08272D9C
.L0805E020: .4byte 0x08270E90
.L0805E024: .4byte 0x0203E02C
.L0805E028:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L0805E032:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805DFAC

    thumb_func_start func_0805E038
func_0805E038: @ 0x0805E038
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0805E066
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L0805E084
.L0805E066:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0805E084
    bl func_08050018
    ldr r1, .L0805E08C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805E084:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E08C: .4byte 0x0201774C
    func_end func_0805E038

    thumb_func_start func_0805E090
func_0805E090: @ 0x0805E090
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805E0D4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E0D8 @ =0x08BA334C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L0805E0DC @ =0x08BC4310
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0805E0E0 @ =0x08272D9C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805E0E4 @ =0x0827287C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E0D4: .4byte 0x0201774C
.L0805E0D8: .4byte 0x08BA334C
.L0805E0DC: .4byte 0x08BC4310
.L0805E0E0: .4byte 0x08272D9C
.L0805E0E4: .4byte 0x0827287C
    func_end func_0805E090

    thumb_func_start func_0805E0E8
func_0805E0E8: @ 0x0805E0E8
    push {lr}
    ldr r0, [r0, #0x60]
    bl AnimDelete
    ldr r1, .L0805E0FC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L0805E0FC: .4byte 0x0201774C
    func_end func_0805E0E8

    thumb_func_start func_0805E100
func_0805E100: @ 0x0805E100
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805E138 @ =0x08BA336C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E138: .4byte 0x08BA336C
    func_end func_0805E100

    thumb_func_start func_0805E13C
func_0805E13C: @ 0x0805E13C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805E180
    ldr r0, [r4, #0x5c]
    bl func_0805E320
    ldr r0, .L0805E1D4 @ =0x0000011B
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
.L0805E180:
    ldrh r0, [r4, #0x2c]
    cmp r0, #0x64
    bne .L0805E190
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805E190:
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    adds r0, r6, #0
    adds r0, #0x82
    cmp r1, r0
    bne .L0805E1D8
    adds r0, r5, #0
    bl func_0805E378
    adds r0, r5, #0
    bl func_0805E3CC
    ldr r0, [r4, #0x5c]
    bl func_0805E23C
    movs r0, #0x10
    str r0, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x14
    movs r3, #0
    bl func_08055F08
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r5, #0
    movs r1, #0xe6
    movs r2, #0x14
    movs r3, #0x10
    bl func_08055F08
    b .L0805E22E
    .align 2, 0
.L0805E1D4: .4byte 0x0000011B
.L0805E1D8:
    movs r3, #0xa5
    lsls r3, r3, #1
    adds r0, r6, r3
    cmp r1, r0
    bne .L0805E20E
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl func_080503E0
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805E22E
    adds r0, r5, #0
    bl func_0804F840
    cmp r0, #0
    bne .L0805E22E
    adds r0, r5, #0
    movs r1, #2
    bl func_0804F810
    b .L0805E22E
.L0805E20E:
    movs r2, #0xb9
    lsls r2, r2, #1
    adds r0, r6, r2
    cmp r1, r0
    bne .L0805E22E
    movs r0, #2
    ldrh r3, [r5, #0x10]
    orrs r0, r3
    strh r0, [r5, #0x10]
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805E22E:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805E13C

    thumb_func_start func_0805E23C
func_0805E23C: @ 0x0805E23C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805E29C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E2A0 @ =0x08BA3384
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805E2A4 @ =0x081E9048
    str r0, [r5, #0x48]
    ldr r0, .L0805E2A8 @ =0x08BA339C
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805E2AC @ =0x082751D0
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805E2B0 @ =0x08274304
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    ldr r0, .L0805E2B4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805E2C2
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805E2B8
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L0805E2C2
    .align 2, 0
.L0805E29C: .4byte 0x0201774C
.L0805E2A0: .4byte 0x08BA3384
.L0805E2A4: .4byte 0x081E9048
.L0805E2A8: .4byte 0x08BA339C
.L0805E2AC: .4byte 0x082751D0
.L0805E2B0: .4byte 0x08274304
.L0805E2B4: .4byte 0x0203E02C
.L0805E2B8:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L0805E2C2:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805E23C

    thumb_func_start func_0805E2C8
func_0805E2C8: @ 0x0805E2C8
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0805E2F6
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L0805E314
.L0805E2F6:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0805E314
    bl func_08050018
    ldr r1, .L0805E31C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805E314:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E31C: .4byte 0x0201774C
    func_end func_0805E2C8

    thumb_func_start func_0805E320
func_0805E320: @ 0x0805E320
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805E364 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E368 @ =0x08BA33DC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L0805E36C @ =0x08BCC1E0
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0805E370 @ =0x08276198
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805E374 @ =0x08275FB0
    movs r1, #0x80
    lsls r1, r1, #4
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E364: .4byte 0x0201774C
.L0805E368: .4byte 0x08BA33DC
.L0805E36C: .4byte 0x08BCC1E0
.L0805E370: .4byte 0x08276198
.L0805E374: .4byte 0x08275FB0
    func_end func_0805E320

    thumb_func_start func_0805E378
func_0805E378: @ 0x0805E378
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805E3B0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E3B4 @ =0x08BA33FC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L0805E3B8 @ =0x08BCC060
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldrh r1, [r0, #4]
    subs r1, #8
    strh r1, [r0, #4]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E3B0: .4byte 0x0201774C
.L0805E3B4: .4byte 0x08BA33FC
.L0805E3B8: .4byte 0x08BCC060
    func_end func_0805E378

    thumb_func_start func_0805E3BC
func_0805E3BC: @ 0x0805E3BC
    ldr r1, .L0805E3C8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805E3C8: .4byte 0x0201774C
    func_end func_0805E3BC

    thumb_func_start func_0805E3CC
func_0805E3CC: @ 0x0805E3CC
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805E3E8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E3EC @ =0x08BA341C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E3E8: .4byte 0x0201774C
.L0805E3EC: .4byte 0x08BA341C
    func_end func_0805E3CC

    thumb_func_start func_0805E3F0
func_0805E3F0: @ 0x0805E3F0
    push {r4, lr}
    movs r3, #0x8e
    lsls r3, r3, #1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r0, #0x5c]
    movs r4, #2
    ldrsh r2, [r0, r4]
    adds r0, r3, #0
    movs r3, #1
    bl func_080681E4
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805E3F0

    thumb_func_start func_0805E410
func_0805E410: @ 0x0805E410
    ldr r1, .L0805E41C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805E41C: .4byte 0x0201774C
    func_end func_0805E410

    thumb_func_start func_0805E420
func_0805E420: @ 0x0805E420
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805E458 @ =0x08BA3464
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E458: .4byte 0x08BA3464
    func_end func_0805E420

    thumb_func_start func_0805E45C
func_0805E45C: @ 0x0805E45C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    bl func_08050778
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r1, #0
    mov r8, r1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805E492
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805E492:
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    adds r0, r5, #1
    cmp r1, r0
    bne .L0805E50C
    adds r0, r6, #0
    bl func_0805E57C
    movs r5, #8
    str r5, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x28
    movs r2, #0x1e
    movs r3, #0x10
    bl func_08055F08
    movs r4, #0x10
    str r4, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x47
    movs r2, #0x1e
    movs r3, #8
    bl func_08055F08
    str r5, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x66
    movs r2, #0x1e
    movs r3, #0x10
    bl func_08055F08
    str r4, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x85
    movs r2, #0x1e
    movs r3, #8
    bl func_08055F08
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0xa4
    movs r2, #0x3c
    movs r3, #0x10
    bl func_08055F08
    ldr r0, .L0805E508 @ =0x00000103
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805E570
    .align 2, 0
.L0805E508: .4byte 0x00000103
.L0805E50C:
    adds r0, r5, #0
    adds r0, #0x50
    cmp r1, r0
    bne .L0805E51C
    adds r0, r6, #0
    bl func_0805E634
    b .L0805E570
.L0805E51C:
    adds r0, r5, #0
    adds r0, #0xa4
    cmp r1, r0
    bne .L0805E532
    adds r0, r6, #0
    movs r1, #1
    movs r2, #5
    movs r3, #0
    bl func_0804F598
    b .L0805E570
.L0805E532:
    adds r0, r5, #0
    adds r0, #0xc8
    cmp r1, r0
    bne .L0805E550
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r1, [r0]
    adds r0, r6, #0
    bl func_080503E0
    b .L0805E570
.L0805E550:
    movs r2, #0x96
    lsls r2, r2, #1
    adds r0, r5, r2
    cmp r1, r0
    bne .L0805E570
    movs r0, #2
    ldrh r3, [r6, #0x10]
    orrs r0, r3
    strh r0, [r6, #0x10]
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805E570:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805E45C

    thumb_func_start func_0805E57C
func_0805E57C: @ 0x0805E57C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805E5B8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E5BC @ =0x08BA347C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805E5C0 @ =0x081E914A
    str r1, [r0, #0x48]
    ldr r1, .L0805E5C4 @ =0x08BA3494
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0805E5C8 @ =0x08BA34C8
    str r1, [r0, #0x54]
    ldr r0, .L0805E5CC @ =0x08272DBC
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E5B8: .4byte 0x0201774C
.L0805E5BC: .4byte 0x08BA347C
.L0805E5C0: .4byte 0x081E914A
.L0805E5C4: .4byte 0x08BA3494
.L0805E5C8: .4byte 0x08BA34C8
.L0805E5CC: .4byte 0x08272DBC
    func_end func_0805E57C

    thumb_func_start func_0805E5D0
func_0805E5D0: @ 0x0805E5D0
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L0805E60C
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    ldr r5, [r4, #0x54]
    ldr r0, [r4, #0x5c]
    lsls r4, r3, #2
    adds r1, r4, r1
    ldr r1, [r1]
    adds r2, r4, r2
    ldr r2, [r2]
    bl func_080504DC
    adds r4, r4, r5
    ldr r0, [r4]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    b .L0805E62A
.L0805E60C:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L0805E62A
    bl func_08050018
    ldr r1, .L0805E630 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805E62A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E630: .4byte 0x0201774C
    func_end func_0805E5D0

    thumb_func_start func_0805E634
func_0805E634: @ 0x0805E634
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805E678 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E67C @ =0x08BA34FC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L0805E680 @ =0x08BC6FF4
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0805E684 @ =0x082761B8
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805E688 @ =0x08275FB0
    movs r1, #0x80
    lsls r1, r1, #4
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E678: .4byte 0x0201774C
.L0805E67C: .4byte 0x08BA34FC
.L0805E680: .4byte 0x08BC6FF4
.L0805E684: .4byte 0x082761B8
.L0805E688: .4byte 0x08275FB0
    func_end func_0805E634

    thumb_func_start func_0805E68C
func_0805E68C: @ 0x0805E68C
    ldr r1, .L0805E698 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805E698: .4byte 0x0201774C
    func_end func_0805E68C

    thumb_func_start func_0805E69C
func_0805E69C: @ 0x0805E69C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805E6D4 @ =0x08BA351C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E6D4: .4byte 0x08BA351C
    func_end func_0805E69C

    thumb_func_start func_0805E6D8
func_0805E6D8: @ 0x0805E6D8
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805E706
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805E706:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L0805E754
    adds r0, r5, #0
    bl func_0805E9DC
    adds r0, r5, #0
    movs r1, #0x4a
    bl func_0805E7B8
    adds r0, r5, #0
    movs r1, #0x4a
    bl func_0805E93C
    movs r4, #0x80
    lsls r4, r4, #1
    movs r0, #1
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0x4a
    movs r2, #0xa
    adds r3, r4, #0
    bl func_080558BC
    adds r0, r5, #0
    movs r1, #0x4a
    movs r2, #0
    bl func_08055E14
    movs r1, #2
    ldrsh r2, [r5, r1]
    movs r0, #0xf9
    adds r1, r4, #0
    movs r3, #1
    bl func_080681E4
    b .L0805E7AE
.L0805E754:
    adds r0, r6, #0
    adds r0, #0x4a
    cmp r1, r0
    bne .L0805E790
    adds r0, r5, #0
    movs r1, #5
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl func_080503E0
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805E7AE
    adds r0, r5, #0
    bl func_0804F840
    cmp r0, #0
    bne .L0805E7AE
    adds r0, r5, #0
    movs r1, #4
    bl func_0804F810
    b .L0805E7AE
.L0805E790:
    adds r0, r6, #0
    adds r0, #0x5a
    cmp r1, r0
    bne .L0805E7AE
    movs r0, #2
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805E7AE:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805E6D8

    thumb_func_start func_0805E7B8
func_0805E7B8: @ 0x0805E7B8
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r1, .L0805E8B0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E8B4 @ =0x08BA3534
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    movs r6, #0
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r4, [r0, #0x2e]
    ldr r0, .L0805E8B8 @ =0x082761D8
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805E8BC @ =0x082739E4
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L0805E8C0 @ =0x08273AE4
    ldr r1, .L0805E8C4 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066ACC
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    ldr r0, .L0805E8C8 @ =gDispIo
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
    movs r0, #0xe
    strb r0, [r1]
    adds r1, #1
    movs r4, #8
    movs r0, #8
    strb r0, [r1]
    mov r0, ip
    adds r0, #0x46
    strb r6, [r0]
    mov r6, ip
    adds r6, #0x37
    movs r3, #0x20
    ldrb r1, [r6]
    orrs r1, r3
    movs r0, #0x21
    rsbs r0, r0, #0
    mov r2, ip
    ldrb r2, [r2, #1]
    ands r0, r2
    movs r2, #0x41
    rsbs r2, r2, #0
    ands r0, r2
    movs r2, #0x80
    orrs r0, r2
    mov r7, ip
    strb r0, [r7, #1]
    movs r0, #2
    rsbs r0, r0, #0
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    movs r0, #4
    orrs r1, r0
    orrs r1, r4
    movs r0, #0x10
    orrs r1, r0
    strb r1, [r6]
    ldr r0, .L0805E8CC @ =0x0000FFE0
    ldrh r1, [r7, #0x3c]
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    ldr r1, .L0805E8D0 @ =0x0000E0FF
    ands r0, r1
    movs r2, #0xe0
    lsls r2, r2, #5
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r7, #0x3c]
    mov r0, ip
    adds r0, #0x3d
    ldrb r7, [r0]
    orrs r3, r7
    strb r3, [r0]
    ldr r0, [r5, #0x1c]
    movs r1, #0x80
    lsls r1, r1, #4
    orrs r0, r1
    str r0, [r5, #0x1c]
    ldr r0, .L0805E8D4 @ =0x0000F3FF
    ldrh r1, [r5, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #3
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r5, #8]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E8B0: .4byte 0x0201774C
.L0805E8B4: .4byte 0x08BA3534
.L0805E8B8: .4byte 0x082761D8
.L0805E8BC: .4byte 0x082739E4
.L0805E8C0: .4byte 0x08273AE4
.L0805E8C4: .4byte gBg1Tm
.L0805E8C8: .4byte gDispIo
.L0805E8CC: .4byte 0x0000FFE0
.L0805E8D0: .4byte 0x0000E0FF
.L0805E8D4: .4byte 0x0000F3FF
    func_end func_0805E7B8

    thumb_func_start func_0805E8D8
func_0805E8D8: @ 0x0805E8D8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x5c]
    ldr r1, .L0805E92C @ =gDispIo
    ldrh r0, [r1, #0x22]
    subs r0, #1
    strh r0, [r1, #0x22]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805E924
    bl func_08050018
    bl func_08050118
    ldr r0, [r5, #0x1c]
    ldr r1, .L0805E930 @ =0xFFFFF7FF
    ands r0, r1
    str r0, [r5, #0x1c]
    ldr r0, .L0805E934 @ =0x0000F3FF
    ldrh r1, [r5, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r5, #8]
    ldr r1, .L0805E938 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805E924:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E92C: .4byte gDispIo
.L0805E930: .4byte 0xFFFFF7FF
.L0805E934: .4byte 0x0000F3FF
.L0805E938: .4byte 0x0201774C
    func_end func_0805E8D8

    thumb_func_start func_0805E93C
func_0805E93C: @ 0x0805E93C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805E960 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805E964 @ =0x08BA354C
    movs r1, #4
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E960: .4byte 0x0201774C
.L0805E964: .4byte 0x08BA354C
    func_end func_0805E93C

    thumb_func_start func_0805E968
func_0805E968: @ 0x0805E968
    push {r4, lr}
    sub sp, #0x48
    adds r4, r0, #0
    ldr r2, [r4, #0x5c]
    mov r1, sp
    ldrh r0, [r2, #2]
    strh r0, [r1, #2]
    ldrh r0, [r2, #4]
    strh r0, [r1, #4]
    ldr r0, [r2, #0x3c]
    str r0, [sp, #0x3c]
    ldr r0, [r2, #0x1c]
    ldr r1, .L0805E9C4 @ =0xFFFFF7FF
    ands r0, r1
    str r0, [sp, #0x1c]
    mov r0, sp
    ldrh r1, [r2, #8]
    strh r1, [r0, #8]
    mov r2, sp
    ldr r0, .L0805E9C8 @ =0x0000F3FF
    ands r0, r1
    strh r0, [r2, #8]
    movs r3, #0x80
    lsls r3, r3, #4
    adds r1, r3, #0
    orrs r0, r1
    strh r0, [r2, #8]
    mov r0, sp
    bl AnimDisplay
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805E9BA
    adds r0, r4, #0
    bl Proc_Break
.L0805E9BA:
    add sp, #0x48
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805E9C4: .4byte 0xFFFFF7FF
.L0805E9C8: .4byte 0x0000F3FF
    func_end func_0805E968

    thumb_func_start func_0805E9CC
func_0805E9CC: @ 0x0805E9CC
    ldr r1, .L0805E9D8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805E9D8: .4byte 0x0201774C
    func_end func_0805E9CC

    thumb_func_start func_0805E9DC
func_0805E9DC: @ 0x0805E9DC
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805EA24 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805EA28 @ =0x08BA356C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    adds r0, r5, #0
    bl GetAnimAnotherSide
    ldr r3, .L0805EA2C @ =0x08BA14DC
    ldr r0, [r4, #0x5c]
    str r3, [sp]
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r1, .L0805EA30 @ =0x0000F3FF
    ldrh r2, [r0, #8]
    ands r1, r2
    movs r3, #0x80
    lsls r3, r3, #3
    adds r2, r3, #0
    orrs r1, r2
    strh r1, [r0, #8]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EA24: .4byte 0x0201774C
.L0805EA28: .4byte 0x08BA356C
.L0805EA2C: .4byte 0x08BA14DC
.L0805EA30: .4byte 0x0000F3FF
    func_end func_0805E9DC

    thumb_func_start func_0805EA34
func_0805EA34: @ 0x0805EA34
    push {lr}
    ldr r2, .L0805EA48 @ =0x0201774C
    ldr r1, [r2]
    subs r1, #1
    str r1, [r2]
    ldr r0, [r0, #0x60]
    bl AnimDelete
    pop {r0}
    bx r0
    .align 2, 0
.L0805EA48: .4byte 0x0201774C
    func_end func_0805EA34

    thumb_func_start func_0805EA4C
func_0805EA4C: @ 0x0805EA4C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EA7C @ =0x08BCC794
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EA80 @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EA84 @ =0x082761F8
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EA7C: .4byte 0x08BCC794
.L0805EA80: .4byte 0x08276AB0
.L0805EA84: .4byte 0x082761F8
    func_end func_0805EA4C

    thumb_func_start func_0805EA88
func_0805EA88: @ 0x0805EA88
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EAB8 @ =0x08BCC7A8
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EABC @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EAC0 @ =0x082761F8
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EAB8: .4byte 0x08BCC7A8
.L0805EABC: .4byte 0x08276AB0
.L0805EAC0: .4byte 0x082761F8
    func_end func_0805EA88

    thumb_func_start func_0805EAC4
func_0805EAC4: @ 0x0805EAC4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EAF4 @ =0x08BCC7BC
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EAF8 @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EAFC @ =0x082761F8
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EAF4: .4byte 0x08BCC7BC
.L0805EAF8: .4byte 0x08276AB0
.L0805EAFC: .4byte 0x082761F8
    func_end func_0805EAC4

    thumb_func_start func_0805EB00
func_0805EB00: @ 0x0805EB00
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EB30 @ =0x08BCC7D0
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EB34 @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EB38 @ =0x082761F8
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EB30: .4byte 0x08BCC7D0
.L0805EB34: .4byte 0x08276AB0
.L0805EB38: .4byte 0x082761F8
    func_end func_0805EB00

    thumb_func_start func_0805EB3C
func_0805EB3C: @ 0x0805EB3C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EB6C @ =0x08BCC7E4
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EB70 @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EB74 @ =0x082761F8
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EB6C: .4byte 0x08BCC7E4
.L0805EB70: .4byte 0x08276AB0
.L0805EB74: .4byte 0x082761F8
    func_end func_0805EB3C

    thumb_func_start func_0805EB78
func_0805EB78: @ 0x0805EB78
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EBA8 @ =0x08BCCB58
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EBAC @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EBB0 @ =0x08276690
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EBA8: .4byte 0x08BCCB58
.L0805EBAC: .4byte 0x08276AB0
.L0805EBB0: .4byte 0x08276690
    func_end func_0805EB78

    thumb_func_start func_0805EBB4
func_0805EBB4: @ 0x0805EBB4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EBE4 @ =0x08BCCB64
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EBE8 @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EBEC @ =0x08276690
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EBE4: .4byte 0x08BCCB64
.L0805EBE8: .4byte 0x08276AB0
.L0805EBEC: .4byte 0x08276690
    func_end func_0805EBB4

    thumb_func_start func_0805EBF0
func_0805EBF0: @ 0x0805EBF0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EC20 @ =0x08BCCB70
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EC24 @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EC28 @ =0x08276690
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EC20: .4byte 0x08BCCB70
.L0805EC24: .4byte 0x08276AB0
.L0805EC28: .4byte 0x08276690
    func_end func_0805EBF0

    thumb_func_start func_0805EC2C
func_0805EC2C: @ 0x0805EC2C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EC5C @ =0x08BCCB7C
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EC60 @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EC64 @ =0x08276690
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EC5C: .4byte 0x08BCCB7C
.L0805EC60: .4byte 0x08276AB0
.L0805EC64: .4byte 0x08276690
    func_end func_0805EC2C

    thumb_func_start func_0805EC68
func_0805EC68: @ 0x0805EC68
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, .L0805EC98 @ =0x08BCCB88
    str r0, [r1, #0x24]
    str r0, [r1, #0x20]
    movs r0, #0
    strh r0, [r1, #6]
    ldr r0, .L0805EC9C @ =0x08276AB0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805ECA0 @ =0x08276690
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EC98: .4byte 0x08BCCB88
.L0805EC9C: .4byte 0x08276AB0
.L0805ECA0: .4byte 0x08276690
    func_end func_0805EC68

    thumb_func_start func_0805ECA4
func_0805ECA4: @ 0x0805ECA4
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805ECDC @ =0x08BA3624
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805ECDC: .4byte 0x08BA3624
    func_end func_0805ECA4

    thumb_func_start func_0805ECE0
func_0805ECE0: @ 0x0805ECE0
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r4, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805ED0C
    ldr r0, [r5, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805ED0C:
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L0805ED3C
    ldr r0, [r5, #0x5c]
    bl func_0805EDAC
    adds r0, r4, #0
    bl func_0805EE60
    adds r0, r4, #0
    bl func_0805EEB8
    movs r0, #0x81
    lsls r0, r0, #1
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r4, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805EDA6
.L0805ED3C:
    adds r0, r6, #0
    adds r0, #0x28
    cmp r1, r0
    beq .L0805ED4C
    adds r0, r6, #0
    adds r0, #0x50
    cmp r1, r0
    bne .L0805ED54
.L0805ED4C:
    adds r0, r4, #0
    bl func_0805EEB8
    b .L0805EDA6
.L0805ED54:
    adds r0, r6, #0
    adds r0, #0xb0
    cmp r1, r0
    bne .L0805ED6A
    adds r0, r4, #0
    movs r1, #1
    movs r2, #5
    movs r3, #0
    bl func_0804F598
    b .L0805EDA6
.L0805ED6A:
    adds r0, r6, #0
    adds r0, #0xe1
    cmp r1, r0
    bne .L0805ED88
    movs r0, #9
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    adds r0, r5, #0
    adds r0, #0x29
    ldrb r1, [r0]
    adds r0, r4, #0
    bl func_080503E0
    b .L0805EDA6
.L0805ED88:
    adds r0, r6, #0
    adds r0, #0xe6
    cmp r1, r0
    bne .L0805EDA6
    movs r0, #2
    ldrh r3, [r4, #0x10]
    orrs r0, r3
    strh r0, [r4, #0x10]
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r5, #0
    bl Proc_Break
.L0805EDA6:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805ECE0

    thumb_func_start func_0805EDAC
func_0805EDAC: @ 0x0805EDAC
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805EDF0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805EDF4 @ =0x08BA363C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805EDF8 @ =0x081E9180
    str r1, [r0, #0x48]
    ldr r1, .L0805EDFC @ =0x08BA3654
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L0805EE00 @ =0x0827747C
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805EE04 @ =0x08276BF0
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EDF0: .4byte 0x0201774C
.L0805EDF4: .4byte 0x08BA363C
.L0805EDF8: .4byte 0x081E9180
.L0805EDFC: .4byte 0x08BA3654
.L0805EE00: .4byte 0x0827747C
.L0805EE04: .4byte 0x08276BF0
    func_end func_0805EDAC

    thumb_func_start func_0805EE08
func_0805EE08: @ 0x0805EE08
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0805EE36
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L0805EE54
.L0805EE36:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0805EE54
    bl func_08050018
    ldr r1, .L0805EE5C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805EE54:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EE5C: .4byte 0x0201774C
    func_end func_0805EE08

    thumb_func_start func_0805EE60
func_0805EE60: @ 0x0805EE60
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805EEA4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805EEA8 @ =0x08BA3668
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L0805EEAC @ =0x08BD0C48
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0805EEB0 @ =0x0827798C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805EEB4 @ =0x08275FB0
    movs r1, #0x80
    lsls r1, r1, #4
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EEA4: .4byte 0x0201774C
.L0805EEA8: .4byte 0x08BA3668
.L0805EEAC: .4byte 0x08BD0C48
.L0805EEB0: .4byte 0x0827798C
.L0805EEB4: .4byte 0x08275FB0
    func_end func_0805EE60

    thumb_func_start func_0805EEB8
func_0805EEB8: @ 0x0805EEB8
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L0805EEEC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805EEF0 @ =0x08BA3688
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L0805EEF4 @ =0x08BD0D98
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EEEC: .4byte 0x0201774C
.L0805EEF0: .4byte 0x08BA3688
.L0805EEF4: .4byte 0x08BD0D98
    func_end func_0805EEB8

    thumb_func_start func_0805EEF8
func_0805EEF8: @ 0x0805EEF8
    push {lr}
    ldr r0, [r0, #0x60]
    bl AnimDelete
    ldr r1, .L0805EF0C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L0805EF0C: .4byte 0x0201774C
    func_end func_0805EEF8

    thumb_func_start func_0805EF10
func_0805EF10: @ 0x0805EF10
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805EF48 @ =0x08BA36A8
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805EF48: .4byte 0x08BA36A8
    func_end func_0805EF10

    thumb_func_start func_0805EF4C
func_0805EF4C: @ 0x0805EF4C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805EF76
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805EF76:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L0805EF8A
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0804EFDC
    b .L0805F018
.L0805EF8A:
    adds r0, r6, #0
    adds r0, #0xb
    cmp r1, r0
    bne .L0805EFAC
    adds r0, r5, #0
    bl func_0805F0DC
    movs r0, #0xaf
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805F018
.L0805EFAC:
    adds r0, r6, #0
    adds r0, #0x17
    cmp r1, r0
    bne .L0805EFC4
    adds r0, r5, #0
    movs r1, #5
    bl func_0804EFDC
    adds r0, r5, #0
    bl func_0805F288
    b .L0805F018
.L0805EFC4:
    adds r0, r6, #0
    adds r0, #0x1d
    cmp r1, r0
    bne .L0805EFDA
    adds r0, r5, #0
    bl func_0805F020
    adds r0, r5, #0
    bl func_0805F1FC
    b .L0805F018
.L0805EFDA:
    adds r0, r6, #0
    adds r0, #0x1e
    cmp r1, r0
    bne .L0805F002
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805F018
    adds r0, r5, #0
    bl func_08067D14
    b .L0805F018
.L0805F002:
    adds r0, r6, #0
    adds r0, #0x23
    cmp r1, r0
    bne .L0805F018
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L0805F018:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0805EF4C

    thumb_func_start func_0805F020
func_0805F020: @ 0x0805F020
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805F060 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F064 @ =0x08BA36C0
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805F068 @ =0x081E924A
    str r1, [r0, #0x48]
    ldr r1, .L0805F06C @ =0x08BA36D8
    str r1, [r0, #0x4c]
    ldr r1, .L0805F070 @ =0x08BA36DC
    str r1, [r0, #0x50]
    ldr r1, .L0805F074 @ =0x08BA36E0
    str r1, [r0, #0x54]
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F060: .4byte 0x0201774C
.L0805F064: .4byte 0x08BA36C0
.L0805F068: .4byte 0x081E924A
.L0805F06C: .4byte 0x08BA36D8
.L0805F070: .4byte 0x08BA36DC
.L0805F074: .4byte 0x08BA36E0
    func_end func_0805F020

    thumb_func_start func_0805F078
func_0805F078: @ 0x0805F078
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L0805F0B4
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L0805F0D2
.L0805F0B4:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L0805F0D2
    bl func_08050018
    ldr r1, .L0805F0D8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_Break
.L0805F0D2:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F0D8: .4byte 0x0201774C
    func_end func_0805F078

    thumb_func_start func_0805F0DC
func_0805F0DC: @ 0x0805F0DC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805F138 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F13C @ =0x08BA36E4
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805F140 @ =0x081E9250
    str r0, [r5, #0x48]
    ldr r0, .L0805F144 @ =0x08BA36FC
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805F148 @ =0x08290954
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805F14C @ =0x08290678
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L0805F150 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805F15E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805F154
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0805F15E
    .align 2, 0
.L0805F138: .4byte 0x0201774C
.L0805F13C: .4byte 0x08BA36E4
.L0805F140: .4byte 0x081E9250
.L0805F144: .4byte 0x08BA36FC
.L0805F148: .4byte 0x08290954
.L0805F14C: .4byte 0x08290678
.L0805F150: .4byte 0x0203E02C
.L0805F154:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0805F15E:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805F0DC

    thumb_func_start func_0805F168
func_0805F168: @ 0x0805F168
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0805F1D0
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    ldr r0, .L0805F1B0 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805F1EE
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    adds r1, r0, #0
    cmp r1, #0
    bne .L0805F1B8
    ldr r0, .L0805F1B4 @ =gBg1Tm
    b .L0805F1BC
    .align 2, 0
.L0805F1B0: .4byte 0x0203E02C
.L0805F1B4: .4byte gBg1Tm
.L0805F1B8:
    ldr r0, .L0805F1CC @ =0x0202349A
    movs r1, #0
.L0805F1BC:
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
    b .L0805F1EE
    .align 2, 0
.L0805F1CC: .4byte 0x0202349A
.L0805F1D0:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0805F1EE
    bl func_08050018
    ldr r1, .L0805F1F8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805F1EE:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F1F8: .4byte 0x0201774C
    func_end func_0805F168

    thumb_func_start func_0805F1FC
func_0805F1FC: @ 0x0805F1FC
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805F230 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F234 @ =0x08BA3720
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    ldr r1, .L0805F238 @ =0x081E9276
    str r1, [r0, #0x48]
    ldr r1, .L0805F23C @ =0x0828FD00
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F230: .4byte 0x0201774C
.L0805F234: .4byte 0x08BA3720
.L0805F238: .4byte 0x081E9276
.L0805F23C: .4byte 0x0828FD00
    func_end func_0805F1FC

    thumb_func_start func_0805F240
func_0805F240: @ 0x0805F240
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805F266
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L0805F27C
.L0805F266:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L0805F27C
    ldr r1, .L0805F284 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L0805F27C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F284: .4byte 0x0201774C
    func_end func_0805F240

    thumb_func_start func_0805F288
func_0805F288: @ 0x0805F288
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805F2C0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F2C4 @ =0x08BA3740
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    movs r1, #2
    strh r1, [r0, #0x2e]
    strh r2, [r0, #0x30]
    ldr r0, .L0805F2C8 @ =0x0829162C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805F2CC @ =0x08291368
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F2C0: .4byte 0x0201774C
.L0805F2C4: .4byte 0x08BA3740
.L0805F2C8: .4byte 0x0829162C
.L0805F2CC: .4byte 0x08291368
    func_end func_0805F288

    thumb_func_start func_0805F2D0
func_0805F2D0: @ 0x0805F2D0
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L0805F36C
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805F320
    ldr r0, [r5, #0x5c]
    movs r4, #2
    ldrsh r3, [r0, r4]
    ldr r4, .L0805F31C @ =0x08BA3758
    movs r6, #0x30
    ldrsh r2, [r5, r6]
    lsls r1, r2, #1
    adds r1, r1, r4
    movs r6, #0
    ldrsh r1, [r1, r6]
    adds r6, r3, r1
    movs r1, #4
    ldrsh r3, [r0, r1]
    adds r2, #1
    lsls r2, r2, #1
    adds r2, r2, r4
    movs r4, #0
    ldrsh r1, [r2, r4]
    adds r2, r3, r1
    adds r1, r6, #0
    bl func_0805F37C
    b .L0805F34C
    .align 2, 0
.L0805F31C: .4byte 0x08BA3758
.L0805F320:
    ldr r0, [r5, #0x5c]
    movs r6, #2
    ldrsh r3, [r0, r6]
    ldr r4, .L0805F374 @ =0x08BA3758
    movs r1, #0x30
    ldrsh r2, [r5, r1]
    lsls r1, r2, #1
    adds r1, r1, r4
    movs r6, #0
    ldrsh r1, [r1, r6]
    subs r6, r3, r1
    movs r1, #4
    ldrsh r3, [r0, r1]
    adds r2, #1
    lsls r2, r2, #1
    adds r2, r2, r4
    movs r4, #0
    ldrsh r1, [r2, r4]
    adds r2, r3, r1
    adds r1, r6, #0
    bl func_0805F37C
.L0805F34C:
    movs r0, #0
    strh r0, [r5, #0x2c]
    ldrh r0, [r5, #0x30]
    adds r0, #2
    strh r0, [r5, #0x30]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #7
    ble .L0805F36C
    ldr r1, .L0805F378 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L0805F36C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F374: .4byte 0x08BA3758
.L0805F378: .4byte 0x0201774C
    func_end func_0805F2D0

    thumb_func_start func_0805F37C
func_0805F37C: @ 0x0805F37C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    mov r8, r2
    ldr r1, .L0805F3C8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F3CC @ =0x08BA3768
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x46
    strh r0, [r4, #0x2e]
    ldr r3, .L0805F3D0 @ =0x08BD27AC
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    strh r6, [r0, #2]
    mov r1, r8
    strh r1, [r0, #4]
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F3C8: .4byte 0x0201774C
.L0805F3CC: .4byte 0x08BA3768
.L0805F3D0: .4byte 0x08BD27AC
    func_end func_0805F37C

    thumb_func_start func_0805F3D4
func_0805F3D4: @ 0x0805F3D4
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    bne .L0805F3F6
    ldr r1, .L0805F3FC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r2, #0
    bl Proc_Break
.L0805F3F6:
    pop {r0}
    bx r0
    .align 2, 0
.L0805F3FC: .4byte 0x0201774C
    func_end func_0805F3D4

    thumb_func_start func_0805F400
func_0805F400: @ 0x0805F400
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805F438 @ =0x08BA3780
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F438: .4byte 0x08BA3780
    func_end func_0805F400

    thumb_func_start func_0805F43C
func_0805F43C: @ 0x0805F43C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r4, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r1, #0
    mov r8, r1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805F470
    ldr r0, [r6, #0x5c]
    subs r1, #1
    bl func_0804E498
.L0805F470:
    movs r3, #0x2c
    ldrsh r1, [r6, r3]
    adds r0, r4, #1
    cmp r1, r0
    bne .L0805F50C
    adds r0, r5, #0
    bl func_0805F638
    ldr r6, .L0805F504 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r6, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r6, #1]
    adds r2, r6, #0
    adds r2, #0x3c
    movs r0, #0x3f
    ldrb r3, [r2]
    ands r0, r3
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r2]
    adds r0, r6, #0
    adds r0, #0x44
    strb r7, [r0]
    adds r1, r6, #0
    adds r1, #0x45
    movs r0, #0x10
    strb r0, [r1]
    adds r1, #1
    strb r7, [r1]
    str r0, [sp]
    mov r0, r8
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0xa
    movs r3, #0
    bl func_08055F08
    movs r4, #0x80
    lsls r4, r4, #1
    movs r0, #2
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0x14
    movs r2, #0xf
    adds r3, r4, #0
    bl func_080558BC
    adds r1, r0, #0
    adds r0, r5, #0
    movs r2, #0x14
    bl func_0805FD44
    movs r1, #0x20
    ldrsh r2, [r6, r1]
    adds r0, r5, #0
    movs r1, #0x14
    movs r3, #0
    bl func_08055CD0
    ldr r0, .L0805F508 @ =0x000002BD
    adds r1, r4, #0
    movs r2, #0x78
    movs r3, #1
    bl func_080681E4
    b .L0805F62A
    .align 2, 0
.L0805F504: .4byte gDispIo
.L0805F508: .4byte 0x000002BD
.L0805F50C:
    adds r0, r4, #0
    adds r0, #0x29
    cmp r1, r0
    bne .L0805F53C
    bl func_0805F6EC
    adds r0, r5, #0
    movs r1, #0x15
    movs r2, #1
    bl func_08055E14
    adds r0, r5, #0
    bl func_0805FAE8
    mov r3, r8
    str r3, [sp]
    str r3, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x19
    movs r3, #0x10
    bl func_08055F08
    b .L0805F62A
.L0805F53C:
    adds r0, r4, #0
    adds r0, #0x37
    cmp r1, r0
    bne .L0805F55C
    ldr r0, .L0805F558 @ =0x000002BE
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    movs r3, #0
    bl func_080681E4
    b .L0805F62A
    .align 2, 0
.L0805F558: .4byte 0x000002BE
.L0805F55C:
    adds r0, r4, #0
    adds r0, #0x46
    cmp r1, r0
    bne .L0805F5C8
    adds r0, r5, #0
    movs r1, #0x41
    bl func_0805F82C
    adds r0, r5, #0
    movs r1, #0x41
    bl func_0805F968
    ldr r3, .L0805F5C4 @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    mov r3, r8
    str r3, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0xa
    movs r3, #0
    bl func_08055F08
    movs r0, #1
    str r0, [sp]
    adds r0, r5, #0
    movs r1, #0x41
    movs r2, #2
    movs r3, #0x80
    bl func_080558BC
    adds r0, r5, #0
    movs r1, #0x44
    movs r2, #0
    bl func_08055E14
    b .L0805F62A
    .align 2, 0
.L0805F5C4: .4byte gDispIo
.L0805F5C8:
    adds r0, r4, #0
    adds r0, #0x87
    cmp r1, r0
    bne .L0805F5FA
    adds r0, r5, #0
    movs r1, #5
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, r6, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0805F62A
    adds r0, r5, #0
    bl func_08067D14
    b .L0805F62A
.L0805F5FA:
    adds r0, r4, #0
    adds r0, #0x8c
    cmp r1, r0
    bne .L0805F614
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, [r6, #0x5c]
    bl func_0805FA00
    b .L0805F62A
.L0805F614:
    adds r0, r4, #0
    adds r0, #0xbe
    cmp r1, r0
    bne .L0805F62A
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
.L0805F62A:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805F43C

    thumb_func_start func_0805F638
func_0805F638: @ 0x0805F638
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805F67C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F680 @ =0x08BA3798
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L0805F684 @ =0x081E9290
    str r1, [r0, #0x48]
    ldr r1, .L0805F688 @ =0x08BA37B0
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L0805F68C @ =0x0829211C
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L0805F690 @ =0x0829164C
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F67C: .4byte 0x0201774C
.L0805F680: .4byte 0x08BA3798
.L0805F684: .4byte 0x081E9290
.L0805F688: .4byte 0x08BA37B0
.L0805F68C: .4byte 0x0829211C
.L0805F690: .4byte 0x0829164C
    func_end func_0805F638

    thumb_func_start func_0805F694
func_0805F694: @ 0x0805F694
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0805F6C2
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L0805F6E0
.L0805F6C2:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0805F6E0
    bl func_08050018
    ldr r1, .L0805F6E8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805F6E0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F6E8: .4byte 0x0201774C
    func_end func_0805F694

    thumb_func_start func_0805F6EC
func_0805F6EC: @ 0x0805F6EC
    push {lr}
    ldr r0, .L0805F708 @ =0x08BA37B4
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    bl func_0805F7C8
    pop {r0}
    bx r0
    .align 2, 0
.L0805F708: .4byte 0x08BA37B4
    func_end func_0805F6EC

    thumb_func_start func_0805F70C
func_0805F70C: @ 0x0805F70C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov sb, r0
    ldr r0, .L0805F770 @ =0x0201FDAC
    ldr r0, [r0]
    ldr r5, .L0805F774 @ =0x0201FB2C
    cmp r0, #0
    bne .L0805F722
    ldr r5, .L0805F778 @ =0x0201FC6C
.L0805F722:
    ldr r3, .L0805F77C @ =0x0201FDB8
    cmp r0, #0
    bne .L0805F72A
    ldr r3, .L0805F780 @ =0x0201FEF8
.L0805F72A:
    movs r4, #0
    movs r6, #0
    ldr r0, .L0805F784 @ =0x08BA37E4
    movs r1, #0xe0
    lsls r1, r1, #0xf
    mov r8, r1
    movs r2, #0x70
    mov ip, r2
    adds r7, r0, #0
    subs r7, #0x20
.L0805F73E:
    cmp r4, #0xf
    bls .L0805F79C
    cmp r4, #0x6f
    bhi .L0805F79C
    movs r0, #0
    ldrsh r1, [r7, r0]
    mov r2, sb
    ldr r0, [r2, #0x44]
    muls r0, r1, r0
    lsls r0, r0, #4
    lsrs r2, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    beq .L0805F794
    cmp r4, #0x3f
    bhi .L0805F78C
    adds r0, r4, #0
    subs r0, #0x70
    cmp r1, r0
    bhs .L0805F794
    ldr r1, .L0805F788 @ =0x0000FF90
    adds r0, r4, r1
    lsls r0, r0, #0x10
    b .L0805F792
    .align 2, 0
.L0805F770: .4byte 0x0201FDAC
.L0805F774: .4byte 0x0201FB2C
.L0805F778: .4byte 0x0201FC6C
.L0805F77C: .4byte 0x0201FDB8
.L0805F780: .4byte 0x0201FEF8
.L0805F784: .4byte 0x08BA37E4
.L0805F788: .4byte 0x0000FF90
.L0805F78C:
    cmp r1, ip
    bls .L0805F794
    mov r0, r8
.L0805F792:
    lsrs r2, r0, #0x10
.L0805F794:
    strh r2, [r5]
    adds r5, #2
    strh r2, [r3]
    b .L0805F7A2
.L0805F79C:
    strh r6, [r5]
    adds r5, #2
    strh r6, [r3]
.L0805F7A2:
    adds r3, #2
    ldr r1, .L0805F7C4 @ =0xFFFF0000
    add r8, r1
    movs r2, #1
    rsbs r2, r2, #0
    add ip, r2
    adds r7, #2
    adds r4, #1
    cmp r4, #0x9f
    bls .L0805F73E
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F7C4: .4byte 0xFFFF0000
    func_end func_0805F70C

    thumb_func_start func_0805F7C8
func_0805F7C8: @ 0x0805F7C8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0805F7E4 @ =0x08BA37CC
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    movs r1, #0x14
    strh r1, [r0, #0x2e]
    str r4, [r0, #0x5c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F7E4: .4byte 0x08BA37CC
    func_end func_0805F7C8

    thumb_func_start func_0805F7E8
func_0805F7E8: @ 0x0805F7E8
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, [r4, #0x5c]
    movs r2, #0x80
    lsls r2, r2, #7
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    str r0, [r5, #0x44]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805F824
    adds r0, r5, #0
    bl Proc_End
    adds r0, r4, #0
    bl Proc_Break
.L0805F824:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805F7E8

    thumb_func_start func_0805F82C
func_0805F82C: @ 0x0805F82C
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805F890 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F894 @ =0x08BA38A4
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r4, [r6, #0x5c]
    movs r0, #0
    strh r0, [r6, #0x2c]
    strh r5, [r6, #0x2e]
    ldr r0, .L0805F898 @ =0x0829226C
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L0805F89C @ =0x082929CC
    movs r1, #0x20
    bl func_08050634
    bl func_08050018
    ldr r0, .L0805F8A0 @ =0x08292BAC
    ldr r4, .L0805F8A4 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805F8AC
    ldr r1, .L0805F8A8 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x1e
    movs r3, #0x20
    bl func_08066AFC
    b .L0805F8C0
    .align 2, 0
.L0805F890: .4byte 0x0201774C
.L0805F894: .4byte 0x08BA38A4
.L0805F898: .4byte 0x0829226C
.L0805F89C: .4byte 0x082929CC
.L0805F8A0: .4byte 0x08292BAC
.L0805F8A4: .4byte 0x02019784
.L0805F8A8: .4byte gBg1Tm
.L0805F8AC:
    ldr r1, .L0805F8EC @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x1e
    movs r3, #0x20
    bl func_08066ACC
.L0805F8C0:
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    ldr r0, .L0805F8F0 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805F8FE
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805F8F4
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0805F8FE
    .align 2, 0
.L0805F8EC: .4byte gBg1Tm
.L0805F8F0: .4byte 0x0203E02C
.L0805F8F4:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0805F8FE:
    ldr r2, .L0805F91C @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F91C: .4byte gDispIo
    func_end func_0805F82C

    thumb_func_start func_0805F920
func_0805F920: @ 0x0805F920
    push {lr}
    bl func_08050018
    ldr r1, .L0805F938 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L0805F938: .4byte 0x0201774C
    func_end func_0805F920

    thumb_func_start func_0805F93C
func_0805F93C: @ 0x0805F93C
    push {lr}
    adds r2, r0, #0
    ldr r1, .L0805F964 @ =gDispIo
    ldrh r0, [r1, #0x22]
    adds r0, #1
    strh r0, [r1, #0x22]
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L0805F95E
    adds r0, r2, #0
    bl Proc_Break
.L0805F95E:
    pop {r0}
    bx r0
    .align 2, 0
.L0805F964: .4byte gDispIo
    func_end func_0805F93C

    thumb_func_start func_0805F968
func_0805F968: @ 0x0805F968
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0805F9A0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805F9A4 @ =0x08BA38C4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    strh r5, [r0, #0x30]
    str r1, [r0, #0x44]
    ldr r1, .L0805F9A8 @ =0x081E9296
    str r1, [r0, #0x48]
    ldr r1, .L0805F9AC @ =0x082929CC
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805F9A0: .4byte 0x0201774C
.L0805F9A4: .4byte 0x08BA38C4
.L0805F9A8: .4byte 0x081E9296
.L0805F9AC: .4byte 0x082929CC
    func_end func_0805F968

    thumb_func_start func_0805F9B0
func_0805F9B0: @ 0x0805F9B0
    ldr r1, .L0805F9BC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L0805F9BC: .4byte 0x0201774C
    func_end func_0805F9B0

    thumb_func_start func_0805F9C0
func_0805F9C0: @ 0x0805F9C0
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0805F9E4
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
.L0805F9E4:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805F9FA
    adds r0, r4, #0
    bl Proc_Break
.L0805F9FA:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0805F9C0

    thumb_func_start func_0805FA00
func_0805FA00: @ 0x0805FA00
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L0805FA58 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805FA5C @ =0x08BA38EC
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0805FA60 @ =0x081E92D4
    str r0, [r5, #0x48]
    ldr r0, .L0805FA64 @ =0x08BA3904
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0805FA68 @ =0x08BA3934
    str r0, [r5, #0x54]
    ldr r0, .L0805FA6C @ =0x08295850
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r0, .L0805FA70 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0805FA7E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0805FA74
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L0805FA7E
    .align 2, 0
.L0805FA58: .4byte 0x0201774C
.L0805FA5C: .4byte 0x08BA38EC
.L0805FA60: .4byte 0x081E92D4
.L0805FA64: .4byte 0x08BA3904
.L0805FA68: .4byte 0x08BA3934
.L0805FA6C: .4byte 0x08295850
.L0805FA70: .4byte 0x0203E02C
.L0805FA74:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L0805FA7E:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0805FA00

    thumb_func_start func_0805FA84
func_0805FA84: @ 0x0805FA84
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L0805FAC0
    ldr r1, [r4, #0x4c]
    ldr r2, [r4, #0x50]
    ldr r5, [r4, #0x54]
    ldr r0, [r4, #0x5c]
    lsls r4, r3, #2
    adds r1, r4, r1
    ldr r1, [r1]
    adds r2, r4, r2
    ldr r2, [r2]
    bl func_080504DC
    adds r4, r4, r5
    ldr r0, [r4]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    b .L0805FADE
.L0805FAC0:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r3, r0
    bne .L0805FADE
    bl func_08050018
    ldr r1, .L0805FAE4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0805FADE:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FAE4: .4byte 0x0201774C
    func_end func_0805FA84

    thumb_func_start func_0805FAE8
func_0805FAE8: @ 0x0805FAE8
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
.L0805FAEE:
    ldr r0, .L0805FB18 @ =0x08BA3964
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    str r4, [r0, #0x44]
    adds r4, #1
    cmp r4, #7
    bls .L0805FAEE
    ldr r0, .L0805FB1C @ =0x082967F4
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L0805FB20 @ =0x082963F4
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FB18: .4byte 0x08BA3964
.L0805FB1C: .4byte 0x082967F4
.L0805FB20: .4byte 0x082963F4
    func_end func_0805FAE8

    thumb_func_start func_0805FB24
func_0805FB24: @ 0x0805FB24
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L0805FB84 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    movs r5, #0
    strh r5, [r4, #0x2c]
    strh r5, [r4, #0x2e]
    ldr r1, [r4, #0x44]
    ldr r0, .L0805FB88 @ =0x00002AAA
    muls r0, r1, r0
    strh r0, [r4, #0x30]
    ldr r3, .L0805FB8C @ =0x08BD29CC
    ldr r0, [r4, #0x5c]
    str r3, [sp]
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    strh r5, [r0, #6]
    ldr r1, .L0805FB90 @ =0x0000F3FF
    ldrh r2, [r0, #8]
    ands r1, r2
    movs r3, #0x80
    lsls r3, r3, #4
    adds r2, r3, #0
    orrs r1, r2
    strh r1, [r0, #8]
    movs r1, #0x80
    lsls r1, r1, #1
    strh r1, [r0, #2]
    strh r1, [r0, #4]
    ldr r1, [r4, #0x5c]
    ldrh r0, [r1, #2]
    strh r0, [r4, #0x32]
    ldrh r0, [r1, #4]
    strh r0, [r4, #0x3a]
    adds r0, r4, #0
    bl Proc_Break
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FB84: .4byte 0x0201774C
.L0805FB88: .4byte 0x00002AAA
.L0805FB8C: .4byte 0x08BD29CC
.L0805FB90: .4byte 0x0000F3FF
    func_end func_0805FB24

    thumb_func_start func_0805FB94
func_0805FB94: @ 0x0805FB94
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, [r4, #0x60]
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r7, #0x14
    str r7, [sp]
    movs r0, #4
    movs r1, #0
    movs r2, #0x32
    bl Interpolate
    ldrh r2, [r4, #0x30]
    movs r3, #0x80
    lsls r3, r3, #2
    adds r1, r2, r3
    movs r6, #0
    strh r1, [r4, #0x30]
    lsrs r2, r1, #8
    ldr r3, .L0805FC24 @ =0x080C5A48
    lsls r1, r2, #1
    adds r1, r1, r3
    adds r2, #0x40
    lsls r2, r2, #1
    adds r2, r2, r3
    movs r3, #0
    ldrsh r1, [r1, r3]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    muls r1, r0, r1
    lsls r1, r1, #4
    movs r3, #0
    ldrsh r2, [r2, r3]
    muls r0, r2, r0
    lsls r0, r0, #4
    asrs r1, r1, #0x10
    ldrh r2, [r4, #0x32]
    adds r1, r2, r1
    asrs r0, r0, #0x10
    ldrh r3, [r4, #0x3a]
    adds r0, r3, r0
    strh r1, [r5, #2]
    strh r0, [r5, #4]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x14
    ble .L0805FBFC
    strh r7, [r4, #0x2c]
.L0805FBFC:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x14
    ble .L0805FC1C
    strh r6, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    ldr r0, .L0805FC28 @ =0x08BD2C2C
    str r0, [r5, #0x24]
    str r0, [r5, #0x20]
    strh r6, [r5, #6]
    adds r0, r4, #0
    bl Proc_Break
.L0805FC1C:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FC24: .4byte gSinLut
.L0805FC28: .4byte 0x08BD2C2C
    func_end func_0805FB94

    thumb_func_start func_0805FC2C
func_0805FC2C: @ 0x0805FC2C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r5, [r4, #0x60]
    movs r3, #0x32
    ldrh r1, [r4, #0x30]
    movs r2, #0x80
    lsls r2, r2, #2
    adds r0, r1, r2
    movs r6, #0
    strh r0, [r4, #0x30]
    lsrs r0, r0, #8
    ldr r2, .L0805FCA4 @ =0x080C5A48
    lsls r1, r0, #1
    adds r1, r1, r2
    adds r0, #0x40
    lsls r0, r0, #1
    adds r0, r0, r2
    movs r2, #0
    ldrsh r1, [r1, r2]
    muls r1, r3, r1
    movs r2, #0
    ldrsh r0, [r0, r2]
    muls r0, r3, r0
    asrs r1, r1, #0xc
    ldrh r2, [r4, #0x32]
    adds r1, r2, r1
    asrs r0, r0, #0xc
    ldrh r2, [r4, #0x3a]
    adds r0, r2, r0
    strh r1, [r5, #2]
    strh r0, [r5, #4]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x3c
    ble .L0805FC7C
    movs r0, #0x3c
    strh r0, [r4, #0x2c]
.L0805FC7C:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x3c
    ble .L0805FC9C
    strh r6, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    ldr r0, .L0805FCA8 @ =0x08BD2A04
    str r0, [r5, #0x24]
    str r0, [r5, #0x20]
    strh r6, [r5, #6]
    adds r0, r4, #0
    bl Proc_Break
.L0805FC9C:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FCA4: .4byte gSinLut
.L0805FCA8: .4byte 0x08BD2A04
    func_end func_0805FC2C

    thumb_func_start func_0805FCAC
func_0805FCAC: @ 0x0805FCAC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r4, [r5, #0x60]
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r6, #0xa
    str r6, [sp]
    movs r0, #1
    movs r1, #0x32
    movs r2, #0
    bl Interpolate
    ldrh r2, [r5, #0x30]
    movs r3, #0x80
    lsls r3, r3, #3
    adds r1, r2, r3
    strh r1, [r5, #0x30]
    lsrs r2, r1, #8
    ldr r3, .L0805FD3C @ =0x080C5A48
    lsls r1, r2, #1
    adds r1, r1, r3
    adds r2, #0x40
    lsls r2, r2, #1
    adds r2, r2, r3
    movs r3, #0
    ldrsh r1, [r1, r3]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    muls r1, r0, r1
    lsls r1, r1, #4
    movs r3, #0
    ldrsh r2, [r2, r3]
    muls r0, r2, r0
    lsls r0, r0, #4
    asrs r1, r1, #0x10
    ldrh r2, [r5, #0x32]
    adds r1, r2, r1
    asrs r0, r0, #0x10
    ldrh r3, [r5, #0x3a]
    adds r0, r3, r0
    strh r1, [r4, #2]
    strh r0, [r4, #4]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xa
    ble .L0805FD12
    strh r6, [r5, #0x2c]
.L0805FD12:
    ldrh r0, [r5, #0x2e]
    adds r0, #1
    strh r0, [r5, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xa
    ble .L0805FD34
    ldr r0, .L0805FD40 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r5, #0x60]
    bl AnimDelete
    adds r0, r5, #0
    bl Proc_Break
.L0805FD34:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FD3C: .4byte gSinLut
.L0805FD40: .4byte 0x0201774C
    func_end func_0805FCAC

    thumb_func_start func_0805FD44
func_0805FD44: @ 0x0805FD44
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r1, .L0805FD6C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805FD70 @ =0x08BA3994
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    str r6, [r0, #0x64]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FD6C: .4byte 0x0201774C
.L0805FD70: .4byte 0x08BA3994
    func_end func_0805FD44

    thumb_func_start func_0805FD74
func_0805FD74: @ 0x0805FD74
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r4, [r5, #0x64]
    movs r0, #0x2c
    ldrsh r3, [r5, r0]
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #4
    movs r1, #0x80
    movs r2, #0
    bl Interpolate
    str r0, [r4, #0x4c]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0805FDB0
    ldr r1, .L0805FDB8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L0805FDB0:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FDB8: .4byte 0x0201774C
    func_end func_0805FD74

    thumb_func_start func_0805FDBC
func_0805FDBC: @ 0x0805FDBC
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L0805FDF4 @ =0x08BA39AC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FDF4: .4byte 0x08BA39AC
    func_end func_0805FDBC

    thumb_func_start func_0805FDF8
func_0805FDF8: @ 0x0805FDF8
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r4, r0, #0
    bl func_08050778
    adds r6, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L0805FE22
    ldr r0, [r5, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L0805FE22:
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    adds r0, r6, #1
    cmp r1, r0
    bne .L0805FE3E
    movs r0, #0xf
    bl func_08060160
    adds r0, r4, #0
    movs r1, #0xf
    movs r2, #1
    bl func_08055E14
    b .L0805FE84
.L0805FE3E:
    adds r0, r6, #2
    cmp r1, r0
    bne .L0805FE68
    adds r0, r4, #0
    bl func_0805FF48
    adds r0, r4, #0
    bl func_080600D0
    ldr r0, .L0805FE64 @ =0x000002BF
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r4, r3]
    movs r3, #1
    bl func_080681E4
    b .L0805FE84
    .align 2, 0
.L0805FE64: .4byte 0x000002BF
.L0805FE68:
    adds r0, r6, #0
    adds r0, #0x2e
    cmp r1, r0
    bne .L0805FE84
    movs r0, #0xb0
    lsls r0, r0, #2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r5, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    movs r3, #1
    bl func_080681E4
.L0805FE84:
    adds r7, r5, #0
    adds r7, #0x29
    ldrb r0, [r7]
    cmp r0, #0
    bne .L0805FF0A
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    adds r0, r6, #0
    adds r0, #0x33
    cmp r1, r0
    bne .L0805FEAC
    adds r0, r4, #0
    bl func_080605F0
    adds r0, r4, #0
    bl func_08060298
    adds r0, r4, #0
    bl func_080603B8
.L0805FEAC:
    movs r3, #0x2c
    ldrsh r1, [r5, r3]
    adds r0, r6, #0
    adds r0, #0x54
    cmp r1, r0
    bne .L0805FED6
    adds r0, r4, #0
    movs r1, #5
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    ldrb r1, [r7]
    adds r0, r4, #0
    bl StartBattleAnimHitEffectsDefault
    adds r0, r4, #0
    bl func_08067D14
.L0805FED6:
    movs r3, #0x2c
    ldrsh r1, [r5, r3]
    adds r0, r6, #0
    adds r0, #0x5a
    cmp r1, r0
    bne .L0805FEEE
    adds r0, r4, #0
    bl func_08060444
    adds r0, r4, #0
    bl func_08060564
.L0805FEEE:
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    adds r0, r6, #0
    adds r0, #0x69
    cmp r1, r0
    bne .L0805FF40
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r5, #0
    bl Proc_Break
    b .L0805FF40
.L0805FF0A:
    movs r3, #0x2c
    ldrsh r1, [r5, r3]
    adds r0, r6, #0
    adds r0, #0x32
    cmp r1, r0
    bne .L0805FF26
    movs r0, #9
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    ldrb r1, [r7]
    adds r0, r4, #0
    bl StartBattleAnimHitEffectsDefault
.L0805FF26:
    movs r3, #0x2c
    ldrsh r1, [r5, r3]
    adds r0, r6, #0
    adds r0, #0x33
    cmp r1, r0
    bne .L0805FF40
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r5, #0
    bl Proc_Break
.L0805FF40:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_0805FDF8

    thumb_func_start func_0805FF48
func_0805FF48: @ 0x0805FF48
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0805FF9C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0805FFA0 @ =0x08BA39C4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    movs r1, #0x28
    strh r1, [r0, #0x2e]
    ldr r0, .L0805FFA4 @ =0x08296814
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050018
    ldr r0, .L0805FFA8 @ =0x08296DA4
    ldr r1, .L0805FFAC @ =0x02019784
    bl LZ77UnCompWram
    bl func_08050040
    ldr r2, .L0805FFB0 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0805FF9C: .4byte 0x0201774C
.L0805FFA0: .4byte 0x08BA39C4
.L0805FFA4: .4byte 0x08296814
.L0805FFA8: .4byte 0x08296DA4
.L0805FFAC: .4byte 0x02019784
.L0805FFB0: .4byte gDispIo
    func_end func_0805FF48

    thumb_func_start func_0805FFB4
func_0805FFB4: @ 0x0805FFB4
    push {lr}
    bl func_08050018
    ldr r1, .L0805FFCC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L0805FFCC: .4byte 0x0201774C
    func_end func_0805FFB4

    thumb_func_start func_0805FFD0
func_0805FFD0: @ 0x0805FFD0
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08060000
    ldr r0, .L0805FFF8 @ =0x02019784
    ldr r1, .L0805FFFC @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066AFC
    b .L08060014
    .align 2, 0
.L0805FFF8: .4byte 0x02019784
.L0805FFFC: .4byte gBg1Tm
.L08060000:
    ldr r0, .L08060044 @ =0x02019784
    ldr r1, .L08060048 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066ACC
.L08060014:
    movs r0, #2
    bl EnableBgSync
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r2, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r4, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L08060056
    strh r2, [r4, #0x2c]
    movs r0, #6
    strh r0, [r4, #0x2e]
    strh r2, [r4, #0x32]
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0806004C
    movs r0, #0x80
    b .L0806004E
    .align 2, 0
.L08060044: .4byte 0x02019784
.L08060048: .4byte gBg1Tm
.L0806004C:
    ldr r0, .L08060060 @ =0x0000FF80
.L0806004E:
    strh r0, [r4, #0x34]
    adds r0, r4, #0
    bl Proc_Break
.L08060056:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060060: .4byte 0x0000FF80
    func_end func_0805FFD0

    thumb_func_start func_08060064
func_08060064: @ 0x08060064
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
    movs r0, #0
    bl Interpolate
    ldr r1, .L080600AC @ =gDispIo
    strh r0, [r1, #0x20]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L080600A4
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0xc
    strh r0, [r4, #0x2e]
    adds r0, r4, #0
    bl Proc_Break
.L080600A4:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080600AC: .4byte gDispIo
    func_end func_08060064

    thumb_func_start func_080600B0
func_080600B0: @ 0x080600B0
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L080600CA
    adds r0, r2, #0
    bl Proc_Break
.L080600CA:
    pop {r0}
    bx r0
    func_end func_080600B0

    thumb_func_start func_080600D0
func_080600D0: @ 0x080600D0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08060104 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060108 @ =0x08BA39F4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    ldr r1, .L0806010C @ =0x081E9306
    str r1, [r0, #0x48]
    ldr r1, .L08060110 @ =0x08296C04
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060104: .4byte 0x0201774C
.L08060108: .4byte 0x08BA39F4
.L0806010C: .4byte 0x081E9306
.L08060110: .4byte 0x08296C04
    func_end func_080600D0

    thumb_func_start func_08060114
func_08060114: @ 0x08060114
    ldr r1, .L08060120 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L08060120: .4byte 0x0201774C
    func_end func_08060114

    thumb_func_start func_08060124
func_08060124: @ 0x08060124
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0806014A
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08060158
.L0806014A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08060158
    adds r0, r4, #0
    bl Proc_Break
.L08060158:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08060124

    thumb_func_start func_08060160
func_08060160: @ 0x08060160
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08060180 @ =0x08BA3A1C
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    adds r1, r4, #0
    bl func_08060234
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060180: .4byte 0x08BA3A1C
    func_end func_08060160

    thumb_func_start func_08060184
func_08060184: @ 0x08060184
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov sb, r0
    ldr r0, .L080601E0 @ =0x0201FDAC
    ldr r0, [r0]
    ldr r5, .L080601E4 @ =0x0201FB2C
    cmp r0, #0
    bne .L0806019A
    ldr r5, .L080601E8 @ =0x0201FC6C
.L0806019A:
    ldr r4, .L080601EC @ =0x0201FDB8
    cmp r0, #0
    bne .L080601A2
    ldr r4, .L080601F0 @ =0x0201FEF8
.L080601A2:
    movs r3, #0
    movs r0, #0
    mov r8, r0
    movs r1, #0x80
    lsls r1, r1, #0x10
    mov ip, r1
    movs r7, #0x80
    ldr r6, .L080601F4 @ =0x08BA3A4C
.L080601B2:
    cmp r3, #0x7f
    bhi .L0806020C
    movs r2, #0
    ldrsh r1, [r6, r2]
    mov r2, sb
    ldr r0, [r2, #0x44]
    muls r0, r1, r0
    lsls r0, r0, #4
    lsrs r2, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    beq .L08060204
    cmp r3, #0x3f
    bhi .L080601FC
    adds r0, r3, #0
    subs r0, #0x80
    cmp r1, r0
    bhs .L08060204
    ldr r1, .L080601F8 @ =0x0000FF80
    adds r0, r3, r1
    lsls r0, r0, #0x10
    b .L08060202
    .align 2, 0
.L080601E0: .4byte 0x0201FDAC
.L080601E4: .4byte 0x0201FB2C
.L080601E8: .4byte 0x0201FC6C
.L080601EC: .4byte 0x0201FDB8
.L080601F0: .4byte 0x0201FEF8
.L080601F4: .4byte 0x08BA3A4C
.L080601F8: .4byte 0x0000FF80
.L080601FC:
    cmp r1, r7
    bls .L08060204
    mov r0, ip
.L08060202:
    lsrs r2, r0, #0x10
.L08060204:
    strh r2, [r5]
    adds r5, #2
    strh r2, [r4]
    b .L08060214
.L0806020C:
    mov r1, r8
    strh r1, [r5]
    adds r5, #2
    strh r1, [r4]
.L08060214:
    adds r4, #2
    ldr r2, .L08060230 @ =0xFFFF0000
    add ip, r2
    subs r7, #1
    adds r6, #2
    adds r3, #1
    cmp r3, #0x9f
    bls .L080601B2
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08060230: .4byte 0xFFFF0000
    func_end func_08060184

    thumb_func_start func_08060234
func_08060234: @ 0x08060234
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, .L08060250 @ =0x08BA3A34
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r4, [r0, #0x2e]
    str r5, [r0, #0x5c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08060250: .4byte 0x08BA3A34
    func_end func_08060234

    thumb_func_start func_08060254
func_08060254: @ 0x08060254
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, [r4, #0x5c]
    movs r1, #0x80
    lsls r1, r1, #7
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    str r0, [sp]
    movs r0, #4
    movs r2, #0
    bl Interpolate
    str r0, [r5, #0x44]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08060290
    adds r0, r5, #0
    bl Proc_End
    adds r0, r4, #0
    bl Proc_Break
.L08060290:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08060254

    thumb_func_start func_08060298
func_08060298: @ 0x08060298
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r1, .L080602DC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080602E0 @ =0x08BA3B4C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #0xc
    strh r0, [r5, #0x2e]
    ldr r0, .L080602E4 @ =0x08296F50
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050018
    ldr r0, .L080602E8 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L080602F4
    ldr r0, .L080602EC @ =0x0829803C
    ldr r1, .L080602F0 @ =0x02019784
    bl LZ77UnCompWram
    b .L080602FC
    .align 2, 0
.L080602DC: .4byte 0x0201774C
.L080602E0: .4byte 0x08BA3B4C
.L080602E4: .4byte 0x08296F50
.L080602E8: .4byte 0x0203E02C
.L080602EC: .4byte 0x0829803C
.L080602F0: .4byte 0x02019784
.L080602F4:
    ldr r0, .L0806031C @ =0x08298470
    ldr r1, .L08060320 @ =0x02019784
    bl LZ77UnCompWram
.L080602FC:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08060328
    ldr r0, .L08060320 @ =0x02019784
    ldr r1, .L08060324 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066AFC
    b .L0806033C
    .align 2, 0
.L0806031C: .4byte 0x08298470
.L08060320: .4byte 0x02019784
.L08060324: .4byte gBg1Tm
.L08060328:
    ldr r0, .L08060370 @ =0x02019784
    ldr r1, .L08060374 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066ACC
.L0806033C:
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r2, .L08060378 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08060370: .4byte 0x02019784
.L08060374: .4byte gBg1Tm
.L08060378: .4byte gDispIo
    func_end func_08060298

    thumb_func_start func_0806037C
func_0806037C: @ 0x0806037C
    push {lr}
    bl func_08050018
    ldr r1, .L08060394 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L08060394: .4byte 0x0201774C
    func_end func_0806037C

    thumb_func_start func_08060398
func_08060398: @ 0x08060398
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L080603B2
    adds r0, r2, #0
    bl Proc_Break
.L080603B2:
    pop {r0}
    bx r0
    func_end func_08060398

    thumb_func_start func_080603B8
func_080603B8: @ 0x080603B8
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L080603EC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080603F0 @ =0x08BA3B6C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    ldr r1, .L080603F4 @ =0x081E933C
    str r1, [r0, #0x48]
    ldr r1, .L080603F8 @ =0x08297FBC
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080603EC: .4byte 0x0201774C
.L080603F0: .4byte 0x08BA3B6C
.L080603F4: .4byte 0x081E933C
.L080603F8: .4byte 0x08297FBC
    func_end func_080603B8

    thumb_func_start func_080603FC
func_080603FC: @ 0x080603FC
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08060422
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08060438
.L08060422:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08060438
    ldr r1, .L08060440 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08060438:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060440: .4byte 0x0201774C
    func_end func_080603FC

    thumb_func_start func_08060444
func_08060444: @ 0x08060444
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r1, .L08060488 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0806048C @ =0x08BA3B8C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #0xc
    strh r0, [r5, #0x2e]
    ldr r0, .L08060490 @ =0x0828EAD8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050018
    ldr r0, .L08060494 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L080604A0
    ldr r0, .L08060498 @ =0x0828FDC0
    ldr r1, .L0806049C @ =0x02019784
    bl LZ77UnCompWram
    b .L080604A8
    .align 2, 0
.L08060488: .4byte 0x0201774C
.L0806048C: .4byte 0x08BA3B8C
.L08060490: .4byte 0x0828EAD8
.L08060494: .4byte 0x0203E02C
.L08060498: .4byte 0x0828FDC0
.L0806049C: .4byte 0x02019784
.L080604A0:
    ldr r0, .L080604C8 @ =0x0829021C
    ldr r1, .L080604CC @ =0x02019784
    bl LZ77UnCompWram
.L080604A8:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L080604D4
    ldr r0, .L080604CC @ =0x02019784
    ldr r1, .L080604D0 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066AFC
    b .L080604E8
    .align 2, 0
.L080604C8: .4byte 0x0829021C
.L080604CC: .4byte 0x02019784
.L080604D0: .4byte gBg1Tm
.L080604D4:
    ldr r0, .L0806051C @ =0x02019784
    ldr r1, .L08060520 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066ACC
.L080604E8:
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r2, .L08060524 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806051C: .4byte 0x02019784
.L08060520: .4byte gBg1Tm
.L08060524: .4byte gDispIo
    func_end func_08060444

    thumb_func_start func_08060528
func_08060528: @ 0x08060528
    push {lr}
    bl func_08050018
    ldr r1, .L08060540 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L08060540: .4byte 0x0201774C
    func_end func_08060528

    thumb_func_start func_08060544
func_08060544: @ 0x08060544
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L0806055E
    adds r0, r2, #0
    bl Proc_Break
.L0806055E:
    pop {r0}
    bx r0
    func_end func_08060544

    thumb_func_start func_08060564
func_08060564: @ 0x08060564
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08060598 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0806059C @ =0x08BA3BAC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    ldr r1, .L080605A0 @ =0x081E934E
    str r1, [r0, #0x48]
    ldr r1, .L080605A4 @ =0x0829885C
    str r1, [r0, #0x4c]
    adds r0, r1, #0
    movs r1, #0x20
    bl func_08050634
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060598: .4byte 0x0201774C
.L0806059C: .4byte 0x08BA3BAC
.L080605A0: .4byte 0x081E934E
.L080605A4: .4byte 0x0829885C
    func_end func_08060564

    thumb_func_start func_080605A8
func_080605A8: @ 0x080605A8
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L080605CE
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L080605E4
.L080605CE:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L080605E4
    ldr r1, .L080605EC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L080605E4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080605EC: .4byte 0x0201774C
    func_end func_080605A8

    thumb_func_start func_080605F0
func_080605F0: @ 0x080605F0
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08060648 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0806064C @ =0x08BA3BCC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x28
    strh r0, [r4, #0x2e]
    ldr r3, .L08060650 @ =0x08BD3758
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r1, [r4, #0x5c]
    ldrh r1, [r1, #2]
    strh r1, [r0, #2]
    ldr r1, [r4, #0x5c]
    ldrh r1, [r1, #4]
    strh r1, [r0, #4]
    ldr r0, .L08060654 @ =0x08298D38
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08060658 @ =0x082988DC
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08060648: .4byte 0x0201774C
.L0806064C: .4byte 0x08BA3BCC
.L08060650: .4byte 0x08BD3758
.L08060654: .4byte 0x08298D38
.L08060658: .4byte 0x082988DC
    func_end func_080605F0

    thumb_func_start func_0806065C
func_0806065C: @ 0x0806065C
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    bne .L0806067E
    ldr r1, .L08060684 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r2, #0
    bl Proc_Break
.L0806067E:
    pop {r0}
    bx r0
    .align 2, 0
.L08060684: .4byte 0x0201774C
    func_end func_0806065C

    thumb_func_start func_08060688
func_08060688: @ 0x08060688
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L080606C0 @ =0x08BA3BE4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080606C0: .4byte 0x08BA3BE4
    func_end func_08060688

    thumb_func_start func_080606C4
func_080606C4: @ 0x080606C4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r4, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r1, #0
    mov r8, r1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L080606F8
    ldr r0, [r6, #0x5c]
    subs r1, #1
    bl func_0804E498
.L080606F8:
    movs r3, #0x2c
    ldrsh r1, [r6, r3]
    adds r0, r4, #1
    cmp r1, r0
    bne .L08060768
    adds r0, r5, #0
    bl func_080608AC
    adds r0, r5, #0
    bl func_08060CFC
    ldr r3, .L08060760 @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    mov r3, r8
    str r3, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x14
    movs r3, #0
    bl func_08055F08
    mov r0, r8
    str r0, [sp]
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x32
    movs r2, #0xa
    movs r3, #0x10
    bl func_08055F08
    ldr r0, .L08060764 @ =0x000002C7
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
    b .L08060868
    .align 2, 0
.L08060760: .4byte gDispIo
.L08060764: .4byte 0x000002C7
.L08060768:
    adds r0, r4, #0
    adds r0, #0x45
    cmp r1, r0
    bne .L080607C0
    ldr r0, [r6, #0x5c]
    movs r1, #0x5a
    movs r2, #0xa
    bl func_080561D0
    adds r0, r5, #0
    movs r1, #0x54
    bl func_080609E4
    ldr r3, .L080607BC @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    mov r3, r8
    str r3, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0x14
    movs r3, #0
    bl func_08055F08
    movs r0, #0xb2
    lsls r0, r0, #2
    b .L08060862
    .align 2, 0
.L080607BC: .4byte gDispIo
.L080607C0:
    adds r0, r4, #0
    adds r0, #0x58
    cmp r1, r0
    bne .L080607D2
    adds r0, r5, #0
    movs r1, #0x32
    bl func_08060C60
    b .L0806089E
.L080607D2:
    adds r0, r4, #0
    adds r0, #0x5d
    cmp r1, r0
    beq .L080607E2
    adds r0, r4, #0
    adds r0, #0x6c
    cmp r1, r0
    bne .L080607EC
.L080607E2:
    adds r0, r5, #0
    movs r1, #5
    bl func_0804EFDC
    b .L0806089E
.L080607EC:
    adds r0, r4, #0
    adds r0, #0x99
    cmp r1, r0
    bne .L0806081E
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, r6, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0806089E
    adds r0, r5, #0
    bl func_08067D14
    b .L0806089E
.L0806081E:
    adds r0, r4, #0
    adds r0, #0x9f
    cmp r1, r0
    bne .L08060840
    adds r0, r6, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0806089E
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
    b .L0806089E
.L08060840:
    adds r0, r4, #0
    adds r0, #0xa3
    cmp r1, r0
    bne .L08060874
    ldr r0, [r6, #0x5c]
    movs r1, #0xf
    movs r2, #9
    bl func_080561D0
    adds r0, r5, #0
    movs r1, #0x1e
    bl func_08060AEC
    adds r0, r5, #0
    bl func_08060BD0
    ldr r0, .L08060870 @ =0x000002C9
.L08060862:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
.L08060868:
    movs r3, #1
    bl func_080681E4
    b .L0806089E
    .align 2, 0
.L08060870: .4byte 0x000002C9
.L08060874:
    adds r0, r4, #0
    adds r0, #0xb3
    cmp r1, r0
    bne .L08060888
    ldr r0, [r6, #0x5c]
    movs r1, #0xf
    movs r2, #8
    bl func_080561D0
    b .L0806089E
.L08060888:
    adds r0, r4, #0
    adds r0, #0xcc
    cmp r1, r0
    bne .L0806089E
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
.L0806089E:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080606C4

    thumb_func_start func_080608AC
func_080608AC: @ 0x080608AC
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08060910 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060914 @ =0x08BA3BFC
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08060918 @ =0x081E9360
    str r0, [r5, #0x48]
    ldr r0, .L0806091C @ =0x08BA3C14
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08060920 @ =0x08298D58
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08060924 @ =0x08299F70
    movs r1, #0x20
    bl func_08050634
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L08060928 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08060936
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L0806092C
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08060936
    .align 2, 0
.L08060910: .4byte 0x0201774C
.L08060914: .4byte 0x08BA3BFC
.L08060918: .4byte 0x081E9360
.L0806091C: .4byte 0x08BA3C14
.L08060920: .4byte 0x08298D58
.L08060924: .4byte 0x08299F70
.L08060928: .4byte 0x0203E02C
.L0806092C:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08060936:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080608AC

    thumb_func_start func_08060940
func_08060940: @ 0x08060940
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L080609B8
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    ldr r0, .L08060994 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L080609D6
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    adds r1, r0, #0
    cmp r1, #0
    bne .L0806099C
    ldr r0, .L08060998 @ =gBg1Tm
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
    b .L080609AC
    .align 2, 0
.L08060994: .4byte 0x0203E02C
.L08060998: .4byte gBg1Tm
.L0806099C:
    ldr r0, .L080609B4 @ =0x0202349A
    movs r1, #0
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
.L080609AC:
    movs r0, #2
    bl EnableBgSync
    b .L080609D6
    .align 2, 0
.L080609B4: .4byte 0x0202349A
.L080609B8:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L080609D6
    bl func_08050018
    ldr r1, .L080609E0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L080609D6:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080609E0: .4byte 0x0201774C
    func_end func_08060940

    thumb_func_start func_080609E4
func_080609E4: @ 0x080609E4
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L08060A6C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060A70 @ =0x08BA3C44
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    ldr r0, .L08060A74 @ =0x0829C5B8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08060A78 @ =0x0829CFA8
    movs r1, #0x20
    bl func_08050634
    bl func_08050018
    ldr r0, .L08060A7C @ =0x0829D028
    ldr r4, .L08060A80 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L08060A84 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066AFC
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r2, .L08060A88 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08060A6C: .4byte 0x0201774C
.L08060A70: .4byte 0x08BA3C44
.L08060A74: .4byte 0x0829C5B8
.L08060A78: .4byte 0x0829CFA8
.L08060A7C: .4byte 0x0829D028
.L08060A80: .4byte 0x02019784
.L08060A84: .4byte gBg1Tm
.L08060A88: .4byte gDispIo
    func_end func_080609E4

    thumb_func_start func_08060A8C
func_08060A8C: @ 0x08060A8C
    push {lr}
    bl func_08050018
    ldr r1, .L08060AA4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L08060AA4: .4byte 0x0201774C
    func_end func_08060A8C

    thumb_func_start func_08060AA8
func_08060AA8: @ 0x08060AA8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08060AC4
    ldr r1, .L08060AC0 @ =gDispIo
    ldrh r0, [r1, #0x20]
    adds r0, #2
    b .L08060ACA
    .align 2, 0
.L08060AC0: .4byte gDispIo
.L08060AC4:
    ldr r1, .L08060AE8 @ =gDispIo
    ldrh r0, [r1, #0x20]
    subs r0, #2
.L08060ACA:
    strh r0, [r1, #0x20]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08060AE2
    adds r0, r4, #0
    bl Proc_Break
.L08060AE2:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060AE8: .4byte gDispIo
    func_end func_08060AA8

    thumb_func_start func_08060AEC
func_08060AEC: @ 0x08060AEC
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L08060B74 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060B78 @ =0x08BA3C64
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    ldr r0, .L08060B7C @ =0x0829B1BC
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08060B80 @ =0x0829C01C
    movs r1, #0x20
    bl func_08050634
    bl func_08050018
    ldr r0, .L08060B84 @ =0x0829C15C
    ldr r4, .L08060B88 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L08060B8C @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066AFC
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r2, .L08060B90 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08060B74: .4byte 0x0201774C
.L08060B78: .4byte 0x08BA3C64
.L08060B7C: .4byte 0x0829B1BC
.L08060B80: .4byte 0x0829C01C
.L08060B84: .4byte 0x0829C15C
.L08060B88: .4byte 0x02019784
.L08060B8C: .4byte gBg1Tm
.L08060B90: .4byte gDispIo
    func_end func_08060AEC

    thumb_func_start func_08060B94
func_08060B94: @ 0x08060B94
    push {lr}
    bl func_08050018
    ldr r1, .L08060BAC @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L08060BAC: .4byte 0x0201774C
    func_end func_08060B94

    thumb_func_start func_08060BB0
func_08060BB0: @ 0x08060BB0
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L08060BCA
    adds r0, r2, #0
    bl Proc_Break
.L08060BCA:
    pop {r0}
    bx r0
    func_end func_08060BB0

    thumb_func_start func_08060BD0
func_08060BD0: @ 0x08060BD0
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08060C04 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060C08 @ =0x08BA3C84
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    ldr r1, .L08060C0C @ =0x081E93B6
    str r1, [r0, #0x48]
    ldr r1, .L08060C10 @ =0x0829C01C
    str r1, [r0, #0x4c]
    ldr r0, .L08060C14 @ =0x0829B13C
    movs r1, #0x20
    bl func_08050634
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060C04: .4byte 0x0201774C
.L08060C08: .4byte 0x08BA3C84
.L08060C0C: .4byte 0x081E93B6
.L08060C10: .4byte 0x0829C01C
.L08060C14: .4byte 0x0829B13C
    func_end func_08060BD0

    thumb_func_start func_08060C18
func_08060C18: @ 0x08060C18
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08060C3E
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08060C54
.L08060C3E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08060C54
    ldr r1, .L08060C5C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08060C54:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060C5C: .4byte 0x0201774C
    func_end func_08060C18

    thumb_func_start func_08060C60
func_08060C60: @ 0x08060C60
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L08060CB4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060CB8 @ =0x08BA3CA4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    ldr r3, .L08060CBC @ =0x08BD3E44
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    movs r1, #0x78
    strh r1, [r0, #2]
    movs r1, #0x48
    strh r1, [r0, #4]
    ldr r0, .L08060CC0 @ =0x0829DA8C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08060CC4 @ =0x0829D2A0
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08060CB4: .4byte 0x0201774C
.L08060CB8: .4byte 0x08BA3CA4
.L08060CBC: .4byte 0x08BD3E44
.L08060CC0: .4byte 0x0829DA8C
.L08060CC4: .4byte 0x0829D2A0
    func_end func_08060C60

    thumb_func_start func_08060CC8
func_08060CC8: @ 0x08060CC8
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L08060CF0
    ldr r0, .L08060CF8 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08060CF0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08060CF8: .4byte 0x0201774C
    func_end func_08060CC8

    thumb_func_start func_08060CFC
func_08060CFC: @ 0x08060CFC
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08060D58 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060D5C @ =0x08BA3CBC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    adds r0, r5, #0
    bl GetAnimAnotherSide
    ldr r3, .L08060D60 @ =0x08BA14DC
    ldr r0, [r4, #0x5c]
    str r3, [sp]
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r1, .L08060D64 @ =0x0000F3FF
    ldrh r2, [r0, #8]
    ands r1, r2
    movs r3, #0x80
    lsls r3, r3, #3
    adds r2, r3, #0
    orrs r1, r2
    strh r1, [r0, #8]
    ldr r0, .L08060D68 @ =0x0829DDB8
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08060D6C @ =0x0829DAAC
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08060D58: .4byte 0x0201774C
.L08060D5C: .4byte 0x08BA3CBC
.L08060D60: .4byte 0x08BA14DC
.L08060D64: .4byte 0x0000F3FF
.L08060D68: .4byte 0x0829DDB8
.L08060D6C: .4byte 0x0829DAAC
    func_end func_08060CFC

    thumb_func_start func_08060D70
func_08060D70: @ 0x08060D70
    push {lr}
    ldr r2, .L08060D84 @ =0x0201774C
    ldr r1, [r2]
    subs r1, #1
    str r1, [r2]
    ldr r0, [r0, #0x60]
    bl AnimDelete
    pop {r0}
    bx r0
    .align 2, 0
.L08060D84: .4byte 0x0201774C
    func_end func_08060D70

    thumb_func_start func_08060D88
func_08060D88: @ 0x08060D88
    push {lr}
    ldr r2, [r0, #0x60]
    ldr r1, .L08060DA0 @ =0x08BD42A0
    str r1, [r2, #0x24]
    str r1, [r2, #0x20]
    movs r1, #0
    strh r1, [r2, #6]
    bl Proc_Break
    pop {r0}
    bx r0
    .align 2, 0
.L08060DA0: .4byte 0x08BD42A0
    func_end func_08060D88

    thumb_func_start func_08060DA4
func_08060DA4: @ 0x08060DA4
    push {lr}
    ldr r2, [r0, #0x60]
    ldr r1, .L08060DBC @ =0x08BD42F4
    str r1, [r2, #0x24]
    str r1, [r2, #0x20]
    movs r1, #0
    strh r1, [r2, #6]
    bl Proc_Break
    pop {r0}
    bx r0
    .align 2, 0
.L08060DBC: .4byte 0x08BD42F4
    func_end func_08060DA4

    thumb_func_start func_08060DC0
func_08060DC0: @ 0x08060DC0
    push {lr}
    ldr r2, [r0, #0x60]
    ldr r1, .L08060DD8 @ =0x08BD4300
    str r1, [r2, #0x24]
    str r1, [r2, #0x20]
    movs r1, #0
    strh r1, [r2, #6]
    bl Proc_Break
    pop {r0}
    bx r0
    .align 2, 0
.L08060DD8: .4byte 0x08BD4300
    func_end func_08060DC0

    thumb_func_start func_08060DDC
func_08060DDC: @ 0x08060DDC
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08060E14 @ =0x08BA3D04
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08060E14: .4byte 0x08BA3D04
    func_end func_08060DDC

    thumb_func_start func_08060E18
func_08060E18: @ 0x08060E18
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r2, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r6, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08060E54
    adds r0, r5, #0
    bl func_08060F70
    ldr r0, .L08060E50 @ =0x000002C1
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L08060EB6
    .align 2, 0
.L08060E50: .4byte 0x000002C1
.L08060E54:
    cmp r0, #0xe
    bne .L08060E60
    adds r0, r5, #0
    bl func_08061004
    b .L08060F66
.L08060E60:
    cmp r0, #0x2c
    bne .L08060E78
    ldr r0, .L08060E74 @ =0x000002C2
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r2, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r2, r3]
    b .L08060EB6
    .align 2, 0
.L08060E74: .4byte 0x000002C2
.L08060E78:
    cmp r0, #0x53
    bne .L08060E90
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0804EFDC
    b .L08060F66
.L08060E90:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r2, #0
    adds r0, #0x5d
    cmp r1, r0
    bne .L08060EA4
    adds r0, r5, #0
    bl func_08061098
    b .L08060F66
.L08060EA4:
    adds r0, r2, #0
    adds r0, #0x67
    cmp r1, r0
    bne .L08060EC4
    ldr r0, .L08060EC0 @ =0x000002C3
    movs r1, #0x80
    lsls r1, r1, #1
    movs r3, #2
    ldrsh r2, [r5, r3]
.L08060EB6:
    movs r3, #1
    bl func_080681E4
    b .L08060F66
    .align 2, 0
.L08060EC0: .4byte 0x000002C3
.L08060EC4:
    adds r0, r2, #0
    adds r0, #0x7d
    cmp r1, r0
    bne .L08060ED8
    str r6, [sp]
    str r6, [sp, #4]
    adds r0, r5, #0
    movs r1, #0
    movs r2, #0xa
    b .L08060F48
.L08060ED8:
    adds r0, r2, #0
    adds r0, #0x89
    cmp r1, r0
    bne .L08060EEE
    adds r0, r5, #0
    bl func_08061184
    adds r0, r5, #0
    bl func_080612A4
    b .L08060F66
.L08060EEE:
    adds r0, r2, #0
    adds r0, #0x90
    cmp r1, r0
    bne .L08060F1E
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0804EFDC
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08060F66
    adds r0, r5, #0
    bl func_08067D14
    b .L08060F66
.L08060F1E:
    adds r0, r2, #0
    adds r0, #0x9a
    cmp r1, r0
    bne .L08060F50
    ldr r0, [r4, #0x5c]
    movs r1, #0x55
    movs r2, #1
    bl func_08055E14
    ldr r0, [r4, #0x5c]
    movs r1, #0x38
    bl func_080559A4
    adds r0, r5, #0
    bl func_08061334
    str r6, [sp]
    str r6, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x2c
    movs r2, #0xc
.L08060F48:
    movs r3, #0x10
    bl func_08055F08
    b .L08060F66
.L08060F50:
    adds r0, r2, #0
    adds r0, #0xf5
    cmp r1, r0
    bne .L08060F66
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r4, #0
    bl Proc_Break
.L08060F66:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08060E18

    thumb_func_start func_08060F70
func_08060F70: @ 0x08060F70
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08060FD4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08060FD8 @ =0x08BA3D1C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08060FDC @ =0x081E9408
    str r0, [r5, #0x48]
    ldr r0, .L08060FE0 @ =0x08BA3D34
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08060FE4 @ =0x0829DDD8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08060FE8 @ =0x0829E750
    movs r1, #0x20
    bl func_08050634
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L08060FEC @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08060FFA
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08060FF0
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08060FFA
    .align 2, 0
.L08060FD4: .4byte 0x0201774C
.L08060FD8: .4byte 0x08BA3D1C
.L08060FDC: .4byte 0x081E9408
.L08060FE0: .4byte 0x08BA3D34
.L08060FE4: .4byte 0x0829DDD8
.L08060FE8: .4byte 0x0829E750
.L08060FEC: .4byte 0x0203E02C
.L08060FF0:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08060FFA:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08060F70

    thumb_func_start func_08061004
func_08061004: @ 0x08061004
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08061068 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0806106C @ =0x08BA3D1C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08061070 @ =0x081E9436
    str r0, [r5, #0x48]
    ldr r0, .L08061074 @ =0x08BA3D34
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08061078 @ =0x0829DDD8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L0806107C @ =0x0829E750
    movs r1, #0x20
    bl func_08050634
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L08061080 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0806108E
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08061084
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
    b .L0806108E
    .align 2, 0
.L08061068: .4byte 0x0201774C
.L0806106C: .4byte 0x08BA3D1C
.L08061070: .4byte 0x081E9436
.L08061074: .4byte 0x08BA3D34
.L08061078: .4byte 0x0829DDD8
.L0806107C: .4byte 0x0829E750
.L08061080: .4byte 0x0203E02C
.L08061084:
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
.L0806108E:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08061004

    thumb_func_start func_08061098
func_08061098: @ 0x08061098
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L080610FC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08061100 @ =0x08BA3D1C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L08061104 @ =0x081E9468
    str r0, [r5, #0x48]
    ldr r0, .L08061108 @ =0x08BA3D34
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L0806110C @ =0x0829DDD8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08061110 @ =0x0829E750
    movs r1, #0x20
    bl func_08050634
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r0, .L08061114 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08061122
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08061118
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08061122
    .align 2, 0
.L080610FC: .4byte 0x0201774C
.L08061100: .4byte 0x08BA3D1C
.L08061104: .4byte 0x081E9468
.L08061108: .4byte 0x08BA3D34
.L0806110C: .4byte 0x0829DDD8
.L08061110: .4byte 0x0829E750
.L08061114: .4byte 0x0203E02C
.L08061118:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08061122:
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08061098

    thumb_func_start func_0806112C
func_0806112C: @ 0x0806112C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0806115A
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L08061178
.L0806115A:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L08061178
    bl func_08050018
    ldr r1, .L08061180 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08061178:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08061180: .4byte 0x0201774C
    func_end func_0806112C

    thumb_func_start func_08061184
func_08061184: @ 0x08061184
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r1, .L080611C8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080611CC @ =0x08BA3DA4
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    movs r0, #5
    strh r0, [r5, #0x2e]
    ldr r0, .L080611D0 @ =0x0828EAD8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050018
    ldr r0, .L080611D4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L080611E0
    ldr r0, .L080611D8 @ =0x0828FDC0
    ldr r1, .L080611DC @ =0x02019784
    bl LZ77UnCompWram
    b .L080611E8
    .align 2, 0
.L080611C8: .4byte 0x0201774C
.L080611CC: .4byte 0x08BA3DA4
.L080611D0: .4byte 0x0828EAD8
.L080611D4: .4byte 0x0203E02C
.L080611D8: .4byte 0x0828FDC0
.L080611DC: .4byte 0x02019784
.L080611E0:
    ldr r0, .L08061208 @ =0x0829021C
    ldr r1, .L0806120C @ =0x02019784
    bl LZ77UnCompWram
.L080611E8:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08061214
    ldr r0, .L0806120C @ =0x02019784
    ldr r1, .L08061210 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066AFC
    b .L08061228
    .align 2, 0
.L08061208: .4byte 0x0829021C
.L0806120C: .4byte 0x02019784
.L08061210: .4byte gBg1Tm
.L08061214:
    ldr r0, .L0806125C @ =0x02019784
    ldr r1, .L08061260 @ =gBg1Tm
    movs r2, #1
    str r2, [sp]
    adds r2, #0xff
    str r2, [sp, #4]
    movs r2, #0x1e
    movs r3, #0x14
    bl func_08066ACC
.L08061228:
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r2, .L08061264 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806125C: .4byte 0x02019784
.L08061260: .4byte gBg1Tm
.L08061264: .4byte gDispIo
    func_end func_08061184

    thumb_func_start func_08061268
func_08061268: @ 0x08061268
    push {lr}
    bl func_08050018
    ldr r1, .L08061280 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L08061280: .4byte 0x0201774C
    func_end func_08061268

    thumb_func_start func_08061284
func_08061284: @ 0x08061284
    push {lr}
    adds r2, r0, #0
    ldrh r0, [r2, #0x2c]
    adds r0, #1
    strh r0, [r2, #0x2c]
    lsls r0, r0, #0x10
    ldrh r3, [r2, #0x2e]
    lsls r1, r3, #0x10
    cmp r0, r1
    ble .L0806129E
    adds r0, r2, #0
    bl Proc_Break
.L0806129E:
    pop {r0}
    bx r0
    func_end func_08061284

    thumb_func_start func_080612A4
func_080612A4: @ 0x080612A4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L080612DC @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080612E0 @ =0x08BA3DC4
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    str r4, [r1, #0x5c]
    movs r0, #0
    strh r0, [r1, #0x2c]
    strh r0, [r1, #0x2e]
    str r0, [r1, #0x44]
    ldr r0, .L080612E4 @ =0x081E9482
    str r0, [r1, #0x48]
    ldr r0, .L080612E8 @ =0x0828FD00
    str r0, [r1, #0x4c]
    adds r0, #0x60
    movs r1, #0x20
    bl func_08050634
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080612DC: .4byte 0x0201774C
.L080612E0: .4byte 0x08BA3DC4
.L080612E4: .4byte 0x081E9482
.L080612E8: .4byte 0x0828FD00
    func_end func_080612A4

    thumb_func_start func_080612EC
func_080612EC: @ 0x080612EC
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08061312
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08061328
.L08061312:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08061328
    ldr r1, .L08061330 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08061328:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08061330: .4byte 0x0201774C
    func_end func_080612EC

    thumb_func_start func_08061334
func_08061334: @ 0x08061334
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0806137C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08061380 @ =0x08BA3DE4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08061384 @ =0x081E9494
    str r1, [r0, #0x48]
    ldr r1, .L08061388 @ =0x08BA3DFC
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L0806138C @ =0x08BA3E2C
    str r1, [r0, #0x54]
    ldr r0, .L08061390 @ =0x082AEF60
    movs r1, #0x20
    bl func_08050634
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806137C: .4byte 0x0201774C
.L08061380: .4byte 0x08BA3DE4
.L08061384: .4byte 0x081E9494
.L08061388: .4byte 0x08BA3DFC
.L0806138C: .4byte 0x08BA3E2C
.L08061390: .4byte 0x082AEF60
    func_end func_08061334

    thumb_func_start func_08061394
func_08061394: @ 0x08061394
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r0, #0x2c
    adds r1, r7, #0
    adds r1, #0x44
    ldr r2, [r7, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r4, r0, #0x10
    cmp r4, #0
    blt .L080613D0
    ldr r5, [r7, #0x4c]
    ldr r6, [r7, #0x50]
    ldr r0, [r7, #0x54]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, [r7, #0x5c]
    adds r5, r4, r5
    ldr r1, [r5]
    adds r4, r4, r6
    ldr r2, [r4]
    bl func_080504DC
    b .L080613EE
.L080613D0:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    bne .L080613EE
    bl func_08050018
    ldr r1, .L080613F4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r7, #0
    bl Proc_Break
.L080613EE:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080613F4: .4byte 0x0201774C
    func_end func_08061394

    thumb_func_start func_080613F8
func_080613F8: @ 0x080613F8
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FB6C
    bl func_08050008
    ldr r0, .L08061430 @ =0x08BA3E5C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08061430: .4byte 0x08BA3E5C
    func_end func_080613F8

    thumb_func_start func_08061434
func_08061434: @ 0x08061434
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x5c]
    bl GetAnimAnotherSide
    adds r5, r0, #0
    bl func_08050778
    adds r4, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r1, #0
    mov r8, r1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08061468
    ldr r0, [r6, #0x5c]
    subs r1, #1
    bl func_0804E498
.L08061468:
    movs r0, #0x2c
    ldrsh r1, [r6, r0]
    adds r0, r4, #1
    cmp r1, r0
    bne .L0806147C
    adds r0, r5, #0
    movs r1, #0xa
    bl func_0804EFDC
    b .L0806158E
.L0806147C:
    adds r0, r4, #0
    adds r0, #0xb
    cmp r1, r0
    bne .L08061490
    adds r0, r5, #0
    bl func_0806159C
    movs r0, #0xb1
    lsls r0, r0, #2
    b .L08061566
.L08061490:
    adds r0, r4, #0
    adds r0, #0x1a
    cmp r1, r0
    bne .L080614E0
    adds r0, r5, #0
    movs r1, #0x72
    bl func_08061914
    ldr r3, .L080614D8 @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    mov r0, r8
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r1, #0xa
    movs r2, #0xa
    movs r3, #0
    bl func_08055F08
    ldr r0, .L080614DC @ =0x000002C5
    b .L08061566
    .align 2, 0
.L080614D8: .4byte gDispIo
.L080614DC: .4byte 0x000002C5
.L080614E0:
    adds r0, r4, #0
    adds r0, #0x4c
    cmp r1, r0
    bne .L080614FA
    adds r0, r5, #0
    movs r1, #0x3c
    bl func_08061760
    adds r0, r5, #0
    movs r1, #0x3c
    bl func_080617DC
    b .L0806158E
.L080614FA:
    adds r0, r4, #0
    adds r0, #0x56
    cmp r1, r0
    bne .L0806150E
    adds r0, r5, #0
    movs r1, #0x37
    movs r2, #0x2d
    bl func_08061874
    b .L0806158E
.L0806150E:
    adds r0, r4, #0
    adds r0, #0x8d
    cmp r1, r0
    bne .L08061538
    movs r0, #9
    ldrh r1, [r5, #0x10]
    orrs r0, r1
    strh r0, [r5, #0x10]
    adds r4, r6, #0
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r5, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0806158E
    adds r0, r5, #0
    bl func_08067D14
    b .L0806158E
.L08061538:
    adds r0, r4, #0
    adds r0, #0x8e
    cmp r1, r0
    bne .L08061578
    adds r0, r5, #0
    movs r1, #0x64
    movs r2, #0xa
    bl func_080561D0
    adds r0, r5, #0
    movs r1, #0x64
    bl func_08061658
    mov r0, r8
    str r0, [sp]
    str r0, [sp, #4]
    adds r0, r5, #0
    movs r1, #0x50
    movs r2, #0x14
    movs r3, #0x10
    bl func_08055F08
    ldr r0, .L08061574 @ =0x000002C6
.L08061566:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
    b .L0806158E
    .align 2, 0
.L08061574: .4byte 0x000002C6
.L08061578:
    adds r0, r4, #0
    adds r0, #0xf5
    cmp r1, r0
    bne .L0806158E
    bl func_0804FFFC
    bl func_0804FBC4
    adds r0, r6, #0
    bl Proc_Break
.L0806158E:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08061434

    thumb_func_start func_0806159C
func_0806159C: @ 0x0806159C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L080615E8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080615EC @ =0x08BA3E74
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L080615F0 @ =0x081E9506
    str r1, [r0, #0x48]
    ldr r1, .L080615F4 @ =0x08BA3E8C
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L080615F8 @ =0x0829DDD8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L080615FC @ =0x0829E750
    movs r1, #0x20
    bl func_08050634
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080615E8: .4byte 0x0201774C
.L080615EC: .4byte 0x08BA3E74
.L080615F0: .4byte 0x081E9506
.L080615F4: .4byte 0x08BA3E8C
.L080615F8: .4byte 0x0829DDD8
.L080615FC: .4byte 0x0829E750
    func_end func_0806159C

    thumb_func_start func_08061600
func_08061600: @ 0x08061600
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L0806162E
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L0806164C
.L0806162E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L0806164C
    bl func_08050018
    ldr r1, .L08061654 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L0806164C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08061654: .4byte 0x0201774C
    func_end func_08061600

    thumb_func_start func_08061658
func_08061658: @ 0x08061658
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L080616E0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080616E4 @ =0x08BA3EBC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    ldr r0, .L080616E8 @ =0x082B0CFC
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L080616EC @ =0x082B125C
    movs r1, #0x20
    bl func_08050634
    bl func_08050018
    ldr r0, .L080616F0 @ =0x082B127C
    ldr r4, .L080616F4 @ =0x02019784
    adds r1, r4, #0
    bl LZ77UnCompWram
    ldr r1, .L080616F8 @ =gBg1Tm
    movs r0, #1
    str r0, [sp]
    adds r0, #0xff
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #0x20
    bl func_08066ACC
    movs r0, #2
    bl EnableBgSync
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r2, .L080616FC @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r2, #1]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080616E0: .4byte 0x0201774C
.L080616E4: .4byte 0x08BA3EBC
.L080616E8: .4byte 0x082B0CFC
.L080616EC: .4byte 0x082B125C
.L080616F0: .4byte 0x082B127C
.L080616F4: .4byte 0x02019784
.L080616F8: .4byte gBg1Tm
.L080616FC: .4byte gDispIo
    func_end func_08061658

    thumb_func_start func_08061700
func_08061700: @ 0x08061700
    push {lr}
    bl func_08050018
    ldr r1, .L08061718 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    pop {r0}
    bx r0
    .align 2, 0
.L08061718: .4byte 0x0201774C
    func_end func_08061700

    thumb_func_start func_0806171C
func_0806171C: @ 0x0806171C
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08061738
    ldr r1, .L08061734 @ =gDispIo
    ldrh r0, [r1, #0x20]
    adds r0, #0xc
    b .L0806173E
    .align 2, 0
.L08061734: .4byte gDispIo
.L08061738:
    ldr r1, .L0806175C @ =gDispIo
    ldrh r0, [r1, #0x20]
    subs r0, #0xc
.L0806173E:
    strh r0, [r1, #0x20]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08061756
    adds r0, r4, #0
    bl Proc_Break
.L08061756:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806175C: .4byte gDispIo
    func_end func_0806171C

    thumb_func_start func_08061760
func_08061760: @ 0x08061760
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L080617C4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080617C8 @ =0x08BA3EDC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    ldr r3, .L080617CC @ =0x08BD53D4
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    movs r1, #0x78
    strh r1, [r0, #2]
    movs r1, #0x48
    strh r1, [r0, #4]
    ldr r1, .L080617D0 @ =0x0000F3FF
    ldrh r2, [r0, #8]
    ands r1, r2
    movs r3, #0x80
    lsls r3, r3, #3
    adds r2, r3, #0
    orrs r1, r2
    strh r1, [r0, #8]
    ldr r0, .L080617D4 @ =0x082B3D5C
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L080617D8 @ =0x082B3A2C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080617C4: .4byte 0x0201774C
.L080617C8: .4byte 0x08BA3EDC
.L080617CC: .4byte 0x08BD53D4
.L080617D0: .4byte 0x0000F3FF
.L080617D4: .4byte 0x082B3D5C
.L080617D8: .4byte 0x082B3A2C
    func_end func_08061760

    thumb_func_start func_080617DC
func_080617DC: @ 0x080617DC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r1, .L08061830 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08061834 @ =0x08BA3EDC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    strh r6, [r4, #0x2e]
    ldr r3, .L08061838 @ =0x08BD546C
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    movs r1, #0x78
    strh r1, [r0, #2]
    movs r1, #0x48
    strh r1, [r0, #4]
    ldr r1, .L0806183C @ =0x0000F3FF
    ldrh r2, [r0, #8]
    ands r1, r2
    movs r3, #0x80
    lsls r3, r3, #3
    adds r2, r3, #0
    orrs r1, r2
    strh r1, [r0, #8]
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08061830: .4byte 0x0201774C
.L08061834: .4byte 0x08BA3EDC
.L08061838: .4byte 0x08BD546C
.L0806183C: .4byte 0x0000F3FF
    func_end func_080617DC

    thumb_func_start func_08061840
func_08061840: @ 0x08061840
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L08061868
    ldr r0, .L08061870 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08061868:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08061870: .4byte 0x0201774C
    func_end func_08061840

    thumb_func_start func_08061874
func_08061874: @ 0x08061874
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r1, .L080618A4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080618A8 @ =0x08BA3EF4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r5, [r0, #0x2e]
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0804EFDC
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080618A4: .4byte 0x0201774C
.L080618A8: .4byte 0x08BA3EF4
    func_end func_08061874

    thumb_func_start func_080618AC
func_080618AC: @ 0x080618AC
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
    movs r2, #0x10
    bl Interpolate
    adds r5, r0, #0
    ldr r0, .L08061908 @ =gPal
    ldr r4, .L0806190C @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r4, #0
    bl CpuFastSet
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x20
    adds r3, r5, #0
    bl func_08066F64
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r6, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08061900
    ldr r1, .L08061910 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r6, #0
    bl Proc_Break
.L08061900:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08061908: .4byte gPal
.L0806190C: .4byte 0x020165C8
.L08061910: .4byte 0x0201774C
    func_end func_080618AC

    thumb_func_start func_08061914
func_08061914: @ 0x08061914
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r4, r1, #0
    ldr r1, .L08061998 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0806199C @ =0x08BA3F0C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r7, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    strh r0, [r5, #0x2e]
    strh r4, [r5, #0x30]
    str r0, [r5, #0x44]
    ldr r0, .L080619A0 @ =0x081E9538
    str r0, [r5, #0x48]
    ldr r4, .L080619A4 @ =0x082B35B0
    str r4, [r5, #0x4c]
    ldr r0, .L080619A8 @ =0x082B1BB8
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    subs r4, #0x20
    adds r0, r4, #0
    movs r1, #0x20
    bl func_08050634
    ldr r0, [r5, #0x5c]
    ldr r2, .L080619AC @ =0x082B35D0
    adds r1, r2, #0
    bl func_080504DC
    ldr r0, .L080619B0 @ =0x02000000
    ldr r0, [r0]
    bl func_08064AB0
    cmp r0, #0
    bne .L080619B8
    ldr r3, .L080619B4 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x14]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x14]
    ldrb r0, [r3, #0x10]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x10]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    b .L080619E4
    .align 2, 0
.L08061998: .4byte 0x0201774C
.L0806199C: .4byte 0x08BA3F0C
.L080619A0: .4byte 0x081E9538
.L080619A4: .4byte 0x082B35B0
.L080619A8: .4byte 0x082B1BB8
.L080619AC: .4byte 0x082B35D0
.L080619B0: .4byte 0x02000000
.L080619B4: .4byte gDispIo
.L080619B8:
    ldr r3, .L08061A28 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x18]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x18]
    ldrb r0, [r3, #0x10]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x10]
    movs r0, #3
    ldrb r1, [r3, #0x14]
    orrs r0, r1
    strb r0, [r3, #0x14]
.L080619E4:
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    ldr r6, .L08061A2C @ =0x0000F3FF
    adds r1, r6, #0
    ldrh r2, [r7, #8]
    ands r1, r2
    movs r2, #0x80
    lsls r2, r2, #3
    adds r5, r2, #0
    orrs r1, r5
    strh r1, [r7, #8]
    adds r1, r6, #0
    ldrh r2, [r0, #8]
    ands r1, r2
    orrs r1, r5
    strh r1, [r0, #8]
    ldr r4, .L08061A30 @ =0x02000010
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r1, [r0]
    cmp r1, #0
    beq .L08061A20
    adds r0, r6, #0
    ldrh r2, [r1, #8]
    ands r0, r2
    orrs r0, r5
    strh r0, [r1, #8]
.L08061A20:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08061A28: .4byte gDispIo
.L08061A2C: .4byte 0x0000F3FF
.L08061A30: .4byte 0x02000010
    func_end func_08061914

    thumb_func_start func_08061A34
func_08061A34: @ 0x08061A34
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    ldr r4, .L08061ADC @ =0x02000010
    bl GetAnimPosition
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r4, [r0]
    cmp r4, #0
    beq .L08061A62
    ldr r0, .L08061AE0 @ =0x0000F3FF
    ldrh r1, [r4, #8]
    ands r0, r1
    movs r2, #0x80
    lsls r2, r2, #3
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r4, #8]
.L08061A62:
    adds r0, r5, #0
    adds r0, #0x2c
    adds r1, r5, #0
    adds r1, #0x44
    ldr r2, [r5, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r3, r0, #0x10
    cmp r3, #0
    blt .L08061A88
    ldr r0, [r5, #0x4c]
    ldr r1, .L08061AE4 @ =0x02022862
    movs r2, #0xf
    str r2, [sp]
    adds r2, r3, #0
    movs r3, #0xf
    bl func_0805067C
.L08061A88:
    ldrh r0, [r5, #0x2e]
    adds r0, #1
    strh r0, [r5, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08061B58
    ldr r1, .L08061AE8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r0, .L08061AEC @ =0x02000000
    ldr r0, [r0]
    bl func_08064AB0
    cmp r0, #0
    bne .L08061AF4
    ldr r3, .L08061AF0 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x14]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x14]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    b .L08061B20
    .align 2, 0
.L08061ADC: .4byte 0x02000010
.L08061AE0: .4byte 0x0000F3FF
.L08061AE4: .4byte 0x02022862
.L08061AE8: .4byte 0x0201774C
.L08061AEC: .4byte 0x02000000
.L08061AF0: .4byte gDispIo
.L08061AF4:
    ldr r3, .L08061B60 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x18]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x18]
    movs r0, #3
    ldrb r1, [r3, #0x14]
    orrs r0, r1
    strb r0, [r3, #0x14]
.L08061B20:
    ldr r1, [r5, #0x5c]
    ldr r3, .L08061B64 @ =0x0000F3FF
    adds r0, r3, #0
    ldrh r2, [r1, #8]
    ands r0, r2
    strh r0, [r1, #8]
    ldr r1, [r5, #0x5c]
    movs r0, #0x80
    lsls r0, r0, #4
    adds r2, r0, #0
    ldrh r0, [r1, #8]
    orrs r0, r2
    strh r0, [r1, #8]
    adds r0, r3, #0
    ldrh r1, [r6, #8]
    ands r0, r1
    orrs r0, r2
    strh r0, [r6, #8]
    cmp r4, #0
    beq .L08061B52
    adds r0, r3, #0
    ldrh r1, [r4, #8]
    ands r0, r1
    orrs r0, r2
    strh r0, [r4, #8]
.L08061B52:
    adds r0, r5, #0
    bl Proc_Break
.L08061B58:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08061B60: .4byte gDispIo
.L08061B64: .4byte 0x0000F3FF
    func_end func_08061A34

    thumb_func_start func_08061B68
func_08061B68: @ 0x08061B68
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_0804FD1C
    bl func_08050008
    ldr r0, .L08061BA0 @ =0x08BA3F24
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08061BA0: .4byte 0x08BA3F24
    func_end func_08061B68

    thumb_func_start func_08061BA4
func_08061BA4: @ 0x08061BA4
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r6, r0, #0
    bl func_08050778
    adds r5, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    movs r7, #0
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08061BD2
    ldr r0, [r4, #0x5c]
    movs r1, #1
    rsbs r1, r1, #0
    bl func_0804E498
.L08061BD2:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    adds r0, r5, #0
    adds r0, #0x14
    cmp r1, r0
    bne .L08061BEC
    adds r0, r6, #0
    bl func_08062254
    ldr r0, .L08061BE8 @ =0x000002FD
    b .L08061C8C
    .align 2, 0
.L08061BE8: .4byte 0x000002FD
.L08061BEC:
    adds r0, r5, #0
    adds r0, #0x28
    cmp r1, r0
    bne .L08061C0C
    adds r0, r6, #0
    bl func_08061F08
    adds r0, r6, #0
    bl func_08061D24
    adds r0, r6, #0
    bl func_08061E70
    bl func_0804FD54
    b .L08061D18
.L08061C0C:
    adds r0, r5, #0
    adds r0, #0x91
    cmp r1, r0
    bne .L08061C20
    adds r0, r6, #0
    movs r1, #0x1e
    movs r2, #0x14
    bl func_08062108
    b .L08061D18
.L08061C20:
    adds r0, r5, #0
    adds r0, #0xaf
    cmp r1, r0
    bne .L08061C48
    movs r0, #9
    ldrh r1, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    adds r4, #0x29
    ldrb r1, [r4]
    adds r0, r6, #0
    bl StartBattleAnimHitEffectsDefault
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08061D18
    adds r0, r6, #0
    bl func_08067D14
    b .L08061D18
.L08061C48:
    adds r0, r5, #0
    adds r0, #0xb0
    cmp r1, r0
    bne .L08061C6A
    adds r0, r4, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08061D18
    bl func_0804FFFC
    bl func_0804FD6C
    adds r0, r4, #0
    bl Proc_Break
    b .L08061D18
.L08061C6A:
    adds r0, r5, #0
    adds r0, #0xb1
    cmp r1, r0
    bne .L08061CA0
    ldr r0, [r4, #0x5c]
    movs r1, #0x50
    movs r2, #9
    bl func_080561D0
    adds r0, r6, #0
    movs r1, #0x1e
    bl func_08060AEC
    adds r0, r6, #0
    bl func_08060BD0
    ldr r0, .L08061C9C @ =0x000002FE
.L08061C8C:
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
    b .L08061D18
    .align 2, 0
.L08061C9C: .4byte 0x000002FE
.L08061CA0:
    adds r0, r5, #0
    adds r0, #0xcd
    cmp r1, r0
    bne .L08061CB2
    ldr r0, [r4, #0x5c]
    movs r1, #0xa
    bl func_0804EFDC
    b .L08061D18
.L08061CB2:
    adds r0, r5, #0
    adds r0, #0xd7
    cmp r1, r0
    bne .L08061CE4
    ldr r0, [r4, #0x5c]
    movs r1, #0x46
    movs r2, #1
    bl func_08055E14
    ldr r0, [r4, #0x5c]
    movs r1, #0x32
    bl func_080559A4
    ldr r0, [r4, #0x5c]
    bl func_08061FDC
    str r7, [sp]
    str r7, [sp, #4]
    adds r0, r6, #0
    movs r1, #0x10
    movs r2, #0xa
    movs r3, #0x10
    bl func_08055F08
    b .L08061D18
.L08061CE4:
    adds r0, r5, #0
    adds r0, #0xe1
    cmp r1, r0
    bne .L08061CF4
    adds r0, r6, #0
    bl func_080621E4
    b .L08061D18
.L08061CF4:
    adds r0, r5, #0
    adds r0, #0xf0
    cmp r1, r0
    bne .L08061D02
    bl func_0804FD6C
    b .L08061D18
.L08061D02:
    movs r2, #0x2c
    ldrsh r1, [r4, r2]
    ldr r2, .L08061D20 @ =0x0000010B
    adds r0, r5, r2
    cmp r1, r0
    bne .L08061D18
    bl func_0804FFFC
    adds r0, r4, #0
    bl Proc_Break
.L08061D18:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08061D20: .4byte 0x0000010B
    func_end func_08061BA4

    thumb_func_start func_08061D24
func_08061D24: @ 0x08061D24
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08061D60 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08061D64 @ =0x08BA3F3C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    movs r1, #7
    str r1, [r0, #0x44]
    strh r2, [r0, #0x2e]
    movs r1, #5
    str r1, [r0, #0x48]
    ldr r0, .L08061D68 @ =0x082D9800
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    ldr r0, .L08061D6C @ =0x082D9C74
    movs r1, #0x20
    bl func_080505F0
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08061D60: .4byte 0x0201774C
.L08061D64: .4byte 0x08BA3F3C
.L08061D68: .4byte 0x082D9800
.L08061D6C: .4byte 0x082D9C74
    func_end func_08061D24

    thumb_func_start func_08061D70
func_08061D70: @ 0x08061D70
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r6, #0x44]
    cmp r0, r1
    ble .L08061DD6
    movs r0, #0
    strh r0, [r6, #0x2c]
    ldr r5, .L08061DE0 @ =0x08BA3F5C
    movs r0, #0x2e
    ldrsh r4, [r6, r0]
    lsls r0, r4, #4
    adds r0, r0, r5
    ldr r1, [r0]
    lsls r4, r4, #2
    adds r0, r4, #1
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r2, [r0]
    adds r0, r4, #2
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r3, [r0]
    adds r4, #3
    lsls r4, r4, #2
    adds r4, r4, r5
    ldr r4, [r4]
    ldr r0, [r6, #0x60]
    str r4, [sp]
    bl func_08061DE8
    ldrh r0, [r6, #0x2e]
    adds r0, #1
    strh r0, [r6, #0x2e]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    ldr r1, [r6, #0x48]
    cmp r0, r1
    ble .L08061DD6
    ldr r1, .L08061DE4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r6, #0
    bl Proc_Break
.L08061DD6:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08061DE0: .4byte 0x08BA3F5C
.L08061DE4: .4byte 0x0201774C
    func_end func_08061D70

    thumb_func_start func_08061DE8
func_08061DE8: @ 0x08061DE8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r6, r0, #0
    mov r8, r1
    mov sb, r2
    adds r4, r3, #0
    ldr r7, [sp, #0x20]
    ldr r1, .L08061E48 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08061E4C @ =0x08BA4044
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    ldr r0, .L08061E50 @ =0x08BA402C
    lsls r4, r4, #2
    adds r4, r4, r0
    ldr r3, [r4]
    str r3, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r5, #0x60]
    mov r1, r8
    strh r1, [r0, #2]
    mov r2, sb
    strh r2, [r0, #4]
    ldr r1, .L08061E54 @ =0x0000F3FF
    ldrh r2, [r0, #8]
    ands r1, r2
    orrs r1, r7
    strh r1, [r0, #8]
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08061E48: .4byte 0x0201774C
.L08061E4C: .4byte 0x08BA4044
.L08061E50: .4byte 0x08BA402C
.L08061E54: .4byte 0x0000F3FF
    func_end func_08061DE8

    thumb_func_start func_08061E58
func_08061E58: @ 0x08061E58
    push {lr}
    ldr r0, [r0, #0x60]
    bl AnimDelete
    ldr r1, .L08061E6C @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L08061E6C: .4byte 0x0201774C
    func_end func_08061E58

    thumb_func_start func_08061E70
func_08061E70: @ 0x08061E70
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08061EC4 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08061EC8 @ =0x08BA4064
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    ldr r3, .L08061ECC @ =0x08BD6CF4
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    movs r1, #0x78
    strh r1, [r0, #2]
    movs r1, #0x3c
    strh r1, [r0, #4]
    ldr r1, .L08061ED0 @ =0x0000F3FF
    ldrh r2, [r0, #8]
    ands r1, r2
    movs r3, #0xc0
    lsls r3, r3, #4
    adds r2, r3, #0
    orrs r1, r2
    strh r1, [r0, #8]
    movs r1, #0x14
    strh r1, [r0, #0xa]
    bl AnimSort
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08061EC4: .4byte 0x0201774C
.L08061EC8: .4byte 0x08BA4064
.L08061ECC: .4byte 0x08BD6CF4
.L08061ED0: .4byte 0x0000F3FF
    func_end func_08061E70

    thumb_func_start func_08061ED4
func_08061ED4: @ 0x08061ED4
    push {lr}
    ldr r0, [r0, #0x60]
    bl AnimDelete
    ldr r1, .L08061EE8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L08061EE8: .4byte 0x0201774C
    func_end func_08061ED4

    thumb_func_start func_08061EEC
func_08061EEC: @ 0x08061EEC
    push {lr}
    ldr r2, [r0, #0x60]
    ldr r1, .L08061F04 @ =0x08BD6D14
    str r1, [r2, #0x24]
    str r1, [r2, #0x20]
    movs r1, #0
    strh r1, [r2, #6]
    bl Proc_Break
    pop {r0}
    bx r0
    .align 2, 0
.L08061F04: .4byte 0x08BD6D14
    func_end func_08061EEC

    thumb_func_start func_08061F08
func_08061F08: @ 0x08061F08
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08061F48 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08061F4C @ =0x08BA4094
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L08061F50 @ =0x081E9576
    str r1, [r0, #0x48]
    ldr r1, .L08061F54 @ =0x08BA40D4
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L08061F58 @ =0x08BA40AC
    str r1, [r0, #0x54]
    str r2, [r0, #0x58]
    ldr r0, .L08061F5C @ =0x082C5C08
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08061F48: .4byte 0x0201774C
.L08061F4C: .4byte 0x08BA4094
.L08061F50: .4byte 0x081E9576
.L08061F54: .4byte 0x08BA40D4
.L08061F58: .4byte 0x08BA40AC
.L08061F5C: .4byte 0x082C5C08
    func_end func_08061F08

    thumb_func_start func_08061F60
func_08061F60: @ 0x08061F60
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08061FB0
    ldr r7, [r4, #0x4c]
    ldr r0, [r4, #0x50]
    mov r8, r0
    ldr r0, [r4, #0x54]
    lsls r5, r1, #2
    adds r6, r5, r0
    ldr r0, [r4, #0x58]
    ldr r2, [r6]
    cmp r0, r2
    beq .L08061F9A
    movs r1, #0x80
    lsls r1, r1, #6
    adds r0, r2, #0
    bl func_0805060C
.L08061F9A:
    ldr r0, [r6]
    str r0, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    adds r1, r5, r7
    ldr r1, [r1]
    mov r3, r8
    adds r2, r5, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L08061FCE
.L08061FB0:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08061FCE
    bl func_08050018
    ldr r1, .L08061FD8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08061FCE:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08061FD8: .4byte 0x0201774C
    func_end func_08061F60

    thumb_func_start func_08061FDC
func_08061FDC: @ 0x08061FDC
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08062024 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08062028 @ =0x08BA40FC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r2, #0
    strh r2, [r0, #0x2c]
    str r2, [r0, #0x44]
    ldr r1, .L0806202C @ =0x081E9624
    str r1, [r0, #0x48]
    ldr r1, .L08062030 @ =0x08BA413C
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r1, .L08062034 @ =0x08BA4114
    str r1, [r0, #0x54]
    str r2, [r0, #0x58]
    ldr r0, .L08062038 @ =0x082D8260
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08062024: .4byte 0x0201774C
.L08062028: .4byte 0x08BA40FC
.L0806202C: .4byte 0x081E9624
.L08062030: .4byte 0x08BA413C
.L08062034: .4byte 0x08BA4114
.L08062038: .4byte 0x082D8260
    func_end func_08061FDC

    thumb_func_start func_0806203C
func_0806203C: @ 0x0806203C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L080620D8
    ldr r7, [r4, #0x4c]
    ldr r0, [r4, #0x50]
    mov r8, r0
    ldr r0, [r4, #0x54]
    lsls r5, r1, #2
    adds r6, r5, r0
    ldr r0, [r4, #0x58]
    ldr r2, [r6]
    cmp r0, r2
    beq .L08062078
    movs r1, #0x80
    lsls r1, r1, #6
    adds r0, r2, #0
    bl func_0805060C
.L08062078:
    ldr r0, [r6]
    str r0, [r4, #0x58]
    ldr r0, [r4, #0x5c]
    adds r1, r5, r7
    ldr r1, [r1]
    mov r3, r8
    adds r2, r5, r3
    ldr r2, [r2]
    bl func_080504DC
    ldr r0, .L080620B4 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L080620F6
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    adds r1, r0, #0
    cmp r1, #0
    bne .L080620BC
    ldr r0, .L080620B8 @ =gBg1Tm
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
    b .L080620CC
    .align 2, 0
.L080620B4: .4byte 0x0203E02C
.L080620B8: .4byte gBg1Tm
.L080620BC:
    ldr r0, .L080620D4 @ =0x0202349A
    movs r1, #0
    str r1, [sp]
    movs r1, #3
    movs r2, #0x14
    movs r3, #0
    bl func_080669B4
.L080620CC:
    movs r0, #2
    bl EnableBgSync
    b .L080620F6
    .align 2, 0
.L080620D4: .4byte 0x0202349A
.L080620D8:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L080620F6
    bl func_08050018
    ldr r1, .L08062104 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L080620F6:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08062104: .4byte 0x0201774C
    func_end func_0806203C

    thumb_func_start func_08062108
func_08062108: @ 0x08062108
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0
    mov r8, r1
    adds r6, r2, #0
    ldr r1, .L08062148 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L0806214C @ =0x08BA4164
    movs r1, #4
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, .L08062150 @ =gPal
    ldr r1, .L08062154 @ =0x020165C8
    movs r2, #0x80
    lsls r2, r2, #1
    bl CpuFastSet
    strh r6, [r4, #0x2e]
    mov r0, r8
    strh r0, [r4, #0x30]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08062148: .4byte 0x0201774C
.L0806214C: .4byte 0x08BA4164
.L08062150: .4byte gPal
.L08062154: .4byte 0x020165C8
    func_end func_08062108

    thumb_func_start func_08062158
func_08062158: @ 0x08062158
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r5, r0, #0
    movs r0, #0x2c
    ldrsh r1, [r5, r0]
    movs r2, #0x2e
    ldrsh r0, [r5, r2]
    cmp r1, r0
    ble .L08062172
    ldrh r3, [r5, #0x2e]
    b .L08062174
.L08062172:
    ldrh r3, [r5, #0x2c]
.L08062174:
    movs r1, #0x2e
    ldrsh r0, [r5, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    movs r2, #0x10
    bl Interpolate
    adds r4, r0, #0
    ldr r7, .L080621D8 @ =0x020165C8
    ldr r6, .L080621DC @ =gPal
    movs r2, #0x80
    lsls r2, r2, #1
    mov r8, r2
    adds r0, r7, #0
    adds r1, r6, #0
    bl CpuFastSet
    adds r0, r6, #0
    movs r1, #0
    movs r2, #0x20
    adds r3, r4, #0
    bl func_08066F64
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r5, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L080621CC
    adds r0, r7, #0
    adds r1, r6, #0
    mov r2, r8
    bl CpuFastSet
    ldr r1, .L080621E0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r5, #0
    bl Proc_Break
.L080621CC:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080621D8: .4byte 0x020165C8
.L080621DC: .4byte gPal
.L080621E0: .4byte 0x0201774C
    func_end func_08062158

    thumb_func_start func_080621E4
func_080621E4: @ 0x080621E4
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L08062230 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08062234 @ =0x08BA417C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    ldr r3, .L08062238 @ =0x08BD7078
    str r3, [sp]
    adds r0, r4, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r5, #0x60]
    ldrh r1, [r4, #2]
    strh r1, [r0, #2]
    ldrh r1, [r4, #4]
    strh r1, [r0, #4]
    ldr r0, .L0806223C @ =0x082D9C94
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    ldr r0, .L08062240 @ =0x082DA240
    movs r1, #0x20
    bl func_080505F0
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062230: .4byte 0x0201774C
.L08062234: .4byte 0x08BA417C
.L08062238: .4byte 0x08BD7078
.L0806223C: .4byte 0x082D9C94
.L08062240: .4byte 0x082DA240
    func_end func_080621E4

    thumb_func_start func_08062244
func_08062244: @ 0x08062244
    ldr r1, .L08062250 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L08062250: .4byte 0x0201774C
    func_end func_08062244

    thumb_func_start func_08062254
func_08062254: @ 0x08062254
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, .L080622A0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080622A4 @ =0x08BA419C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    ldr r3, .L080622A8 @ =0x08BD7090
    str r3, [sp]
    adds r0, r4, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r5, #0x60]
    ldrh r1, [r4, #2]
    strh r1, [r0, #2]
    ldrh r1, [r4, #4]
    strh r1, [r0, #4]
    ldr r0, .L080622AC @ =0x082D9C94
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    ldr r0, .L080622B0 @ =0x082DA240
    movs r1, #0x20
    bl func_080505F0
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080622A0: .4byte 0x0201774C
.L080622A4: .4byte 0x08BA419C
.L080622A8: .4byte 0x08BD7090
.L080622AC: .4byte 0x082D9C94
.L080622B0: .4byte 0x082DA240
    func_end func_08062254

    thumb_func_start func_080622B4
func_080622B4: @ 0x080622B4
    ldr r1, .L080622C0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bx lr
    .align 2, 0
.L080622C0: .4byte 0x0201774C
    func_end func_080622B4

    thumb_func_start func_080622C4
func_080622C4: @ 0x080622C4
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L080622FC @ =0x08BA41BC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #1
    str r0, [r4, #0x44]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080622FC: .4byte 0x08BA41BC
    func_end func_080622C4

    thumb_func_start func_08062300
func_08062300: @ 0x08062300
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08062338 @ =0x08BA41BC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #2
    str r0, [r4, #0x44]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062338: .4byte 0x08BA41BC
    func_end func_08062300

    thumb_func_start func_0806233C
func_0806233C: @ 0x0806233C
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L08062374 @ =0x08BA41BC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #3
    str r0, [r4, #0x44]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062374: .4byte 0x08BA41BC
    func_end func_0806233C

    thumb_func_start func_08062378
func_08062378: @ 0x08062378
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0804FFF0
    bl func_08050008
    ldr r0, .L080623B0 @ =0x08BA41BC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #4
    str r0, [r4, #0x44]
    adds r0, r5, #0
    bl GetAnimRoundTypeAnotherSide
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bl CheckRoundMiss
    adds r4, #0x29
    strb r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080623B0: .4byte 0x08BA41BC
    func_end func_08062378

    thumb_func_start func_080623B4
func_080623B4: @ 0x080623B4
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r0, [r5, #0x5c]
    bl GetAnimAnotherSide
    adds r4, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    movs r7, #0
    movs r6, #0
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x19
    bne .L08062448
    ldr r1, [r5, #0x44]
    adds r0, r4, #0
    bl func_08056FC4
    ldr r1, [r5, #0x44]
    adds r0, r4, #0
    bl func_080570A0
    adds r0, r4, #0
    movs r1, #0x82
    movs r2, #1
    bl func_08055E14
    adds r0, r4, #0
    movs r1, #0x64
    bl func_080559A4
    ldr r3, .L0806245C @ =gDispIo
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
    strb r7, [r0]
    adds r0, #1
    movs r1, #0x10
    strb r1, [r0]
    adds r0, #1
    strb r7, [r0]
    str r1, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0
    movs r2, #8
    movs r3, #0
    bl func_08055F08
    str r6, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    movs r1, #0x3c
    movs r2, #0x28
    movs r3, #0x10
    bl func_08055F08
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #2
    ldrsh r2, [r4, r0]
    movs r0, #0xef
    movs r3, #1
    bl func_080681E4
.L08062448:
    movs r1, #0x2c
    ldrsh r0, [r5, r1]
    cmp r0, #0x7d
    bne .L08062460
    movs r0, #9
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    b .L08062476
    .align 2, 0
.L0806245C: .4byte gDispIo
.L08062460:
    cmp r0, #0xa5
    bne .L08062476
    movs r0, #2
    ldrh r1, [r4, #0x10]
    orrs r0, r1
    strh r0, [r4, #0x10]
    bl func_0804FFFC
    adds r0, r5, #0
    bl Proc_Break
.L08062476:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_080623B4

    thumb_func_start func_08062480
func_08062480: @ 0x08062480
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L080624A8 @ =0x08BA41D4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    adds r0, #0x29
    strb r5, [r0]
    ldr r0, .L080624AC @ =0x081D9FDC
    ldr r1, .L080624B0 @ =0x06012000
    bl LZ77UnComp16bit
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080624A8: .4byte 0x08BA41D4
.L080624AC: .4byte 0x081D9FDC
.L080624B0: .4byte 0x06012000
    func_end func_08062480

    thumb_func_start func_080624B4
func_080624B4: @ 0x080624B4
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L080624D2
    ldr r0, [r1, #0x5c]
    adds r1, #0x29
    ldrb r1, [r1]
    bl func_080624E0
    b .L080624DC
.L080624D2:
    cmp r0, #0xa
    bne .L080624DC
    adds r0, r1, #0
    bl Proc_Break
.L080624DC:
    pop {r0}
    bx r0
    func_end func_080624B4

    thumb_func_start func_080624E0
func_080624E0: @ 0x080624E0
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, .L08062504 @ =0x08BA41EC
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r5, [r6, #0x5c]
    movs r0, #0
    strh r0, [r6, #0x2c]
    cmp r4, #0
    bne .L0806250C
    movs r0, #0x32
    strh r0, [r6, #0x2e]
    ldr r4, .L08062508 @ =0x08B9D9F0
    b .L08062512
    .align 2, 0
.L08062504: .4byte 0x08BA41EC
.L08062508: .4byte 0x08B9D9F0
.L0806250C:
    movs r0, #0x32
    strh r0, [r6, #0x2e]
    ldr r4, .L0806254C @ =0x08B9DA64
.L08062512:
    adds r0, r5, #0
    bl GetAnimPosition
    movs r2, #0xa2
    lsls r2, r2, #7
    cmp r0, #0
    bne .L08062524
    movs r2, #0xc2
    lsls r2, r2, #7
.L08062524:
    movs r1, #2
    ldrsh r0, [r5, r1]
    movs r3, #4
    ldrsh r1, [r5, r3]
    subs r1, #0x28
    str r2, [sp]
    movs r2, #0
    str r2, [sp, #4]
    movs r2, #3
    str r2, [sp, #8]
    adds r2, r4, #0
    movs r3, #2
    bl func_08067300
    str r0, [r6, #0x60]
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0806254C: .4byte 0x08B9DA64
    func_end func_080624E0

    thumb_func_start func_08062550
func_08062550: @ 0x08062550
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, [r4, #0x5c]
    ldrh r0, [r0, #2]
    strh r0, [r1, #0x32]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08062578
    ldr r0, [r4, #0x60]
    bl Proc_End
    adds r0, r4, #0
    bl Proc_Break
.L08062578:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08062550

    thumb_func_start NewEfxPierceCritical
NewEfxPierceCritical: @ 0x08062580
    push {r4, lr}
    adds r4, r0, #0
    bl func_08050008
    ldr r0, .L0806259C @ =0x08BA4204
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806259C: .4byte 0x08BA4204
    func_end NewEfxPierceCritical

    thumb_func_start func_080625A0
func_080625A0: @ 0x080625A0
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L080625C0
    ldr r0, [r4, #0x5c]
    bl func_080625D0
    ldr r0, [r4, #0x5c]
    bl func_08062648
    b .L080625CA
.L080625C0:
    cmp r0, #0x11
    bne .L080625CA
    adds r0, r4, #0
    bl Proc_Break
.L080625CA:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080625A0

    thumb_func_start func_080625D0
func_080625D0: @ 0x080625D0
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L0806260C @ =0x08BA421C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, .L08062610 @ =0x081F1864
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08062614 @ =0x081F2944
    movs r1, #0x20
    bl func_08050634
    ldr r0, [r4, #0x5c]
    ldr r1, .L08062618 @ =0x081F2B44
    ldr r2, .L0806261C @ =0x081F2FE4
    bl func_080504DC
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806260C: .4byte 0x08BA421C
.L08062610: .4byte 0x081F1864
.L08062614: .4byte 0x081F2944
.L08062618: .4byte 0x081F2B44
.L0806261C: .4byte 0x081F2FE4
    func_end func_080625D0

    thumb_func_start func_08062620
func_08062620: @ 0x08062620
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x11
    bne .L08062640
    bl func_08050018
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08062640:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08062620

    thumb_func_start func_08062648
func_08062648: @ 0x08062648
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0806266C @ =0x08BA4234
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08062670 @ =0x081E9650
    str r1, [r0, #0x48]
    ldr r1, .L08062674 @ =0x081F2944
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0806266C: .4byte 0x08BA4234
.L08062670: .4byte 0x081E9650
.L08062674: .4byte 0x081F2944
    func_end func_08062648

    thumb_func_start func_08062678
func_08062678: @ 0x08062678
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L0806269E
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L080626AC
.L0806269E:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L080626AC
    adds r0, r4, #0
    bl Proc_Break
.L080626AC:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08062678

    thumb_func_start NewEfxNormalEffect
NewEfxNormalEffect: @ 0x080626B4
    push {r4, lr}
    adds r4, r0, #0
    bl func_08050008
    ldr r0, .L080626D0 @ =0x08BA4254
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080626D0: .4byte 0x08BA4254
    func_end NewEfxNormalEffect

    thumb_func_start func_080626D4
func_080626D4: @ 0x080626D4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x5c]
    bl GetAnimAnotherSide
    adds r1, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L080626F8
    ldr r0, [r4, #0x5c]
    movs r1, #4
    bl func_0804EFDC
    b .L0806270E
.L080626F8:
    cmp r0, #4
    bne .L08062704
    adds r0, r1, #0
    bl func_08062714
    b .L0806270E
.L08062704:
    cmp r0, #0x18
    bne .L0806270E
    adds r0, r4, #0
    bl Proc_Break
.L0806270E:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080626D4

    thumb_func_start func_08062714
func_08062714: @ 0x08062714
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08062774 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08062778 @ =0x08BA426C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r0, [r5, #0x44]
    ldr r0, .L0806277C @ =0x081E9692
    str r0, [r5, #0x48]
    ldr r0, .L08062780 @ =0x08BA4284
    str r0, [r5, #0x4c]
    str r0, [r5, #0x50]
    ldr r0, .L08062784 @ =0x081F398C
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L08062788 @ =0x081F35C4
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    ldr r0, .L0806278C @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L0806279A
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08062790
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L0806279A
    .align 2, 0
.L08062774: .4byte 0x0201774C
.L08062778: .4byte 0x08BA426C
.L0806277C: .4byte 0x081E9692
.L08062780: .4byte 0x08BA4284
.L08062784: .4byte 0x081F398C
.L08062788: .4byte 0x081F35C4
.L0806278C: .4byte 0x0203E02C
.L08062790:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L0806279A:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08062714

    thumb_func_start func_080627A0
func_080627A0: @ 0x080627A0
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L080627CE
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L080627EC
.L080627CE:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L080627EC
    bl func_08050018
    ldr r1, .L080627F4 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L080627EC:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080627F4: .4byte 0x0201774C
    func_end func_080627A0

    thumb_func_start NewEfxYushaSpinShield
NewEfxYushaSpinShield: @ 0x080627F8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L0806281C @ =0x08BA42AC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0806282C
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806281C: .4byte 0x08BA42AC
    func_end NewEfxYushaSpinShield

    thumb_func_start func_08062820
func_08062820: @ 0x08062820
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08062820

    thumb_func_start func_0806282C
func_0806282C: @ 0x0806282C
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r0, .L08062854 @ =0x08BA42C4
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    adds r0, #0x29
    strb r4, [r0]
    cmp r4, #0
    bne .L08062860
    ldr r2, .L08062858 @ =0x08BAD8F0
    ldr r3, .L0806285C @ =0x08BAEB90
    b .L08062864
    .align 2, 0
.L08062854: .4byte 0x08BA42C4
.L08062858: .4byte 0x08BAD8F0
.L0806285C: .4byte 0x08BAEB90
.L08062860:
    ldr r2, .L08062890 @ =0x08BAFE60
    ldr r3, .L08062894 @ =0x08BB1130
.L08062864:
    str r2, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    bl func_0805041C
    adds r4, r0, #0
    str r4, [r5, #0x60]
    movs r0, #0xc0
    lsls r0, r0, #4
    ldrh r1, [r4, #8]
    ands r0, r1
    movs r5, #0
    strh r0, [r4, #8]
    adds r0, r6, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08062898
    movs r1, #0xe4
    lsls r1, r1, #7
    b .L0806289C
    .align 2, 0
.L08062890: .4byte 0x08BAFE60
.L08062894: .4byte 0x08BB1130
.L08062898:
    movs r1, #0x93
    lsls r1, r1, #8
.L0806289C:
    adds r0, r1, #0
    ldrh r1, [r4, #8]
    orrs r0, r1
    strh r0, [r4, #8]
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0806282C

    thumb_func_start func_080628AC
func_080628AC: @ 0x080628AC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, [r5, #0x60]
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x45
    bne .L0806290A
    adds r0, r5, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L080628E4
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L080628DC
    ldr r0, .L080628D8 @ =0x08BAEC94
    b .L080628FA
    .align 2, 0
.L080628D8: .4byte 0x08BAEC94
.L080628DC:
    ldr r0, .L080628E0 @ =0x08BAD9F4
    b .L080628FA
    .align 2, 0
.L080628E0: .4byte 0x08BAD9F4
.L080628E4:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L080628F8
    ldr r0, .L080628F4 @ =0x08BB1234
    b .L080628FA
    .align 2, 0
.L080628F4: .4byte 0x08BB1234
.L080628F8:
    ldr r0, .L08062910 @ =0x08BAFF64
.L080628FA:
    str r0, [r4, #0x24]
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #6]
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
.L0806290A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062910: .4byte 0x08BAFF64
    func_end func_080628AC

    thumb_func_start func_08062914
func_08062914: @ 0x08062914
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1, #0x5c]
    ldrh r2, [r0, #0x10]
    movs r0, #4
    ands r0, r2
    cmp r0, #0
    beq .L08062936
    movs r0, #8
    ands r0, r2
    cmp r0, #0
    beq .L08062936
    movs r0, #0
    strh r0, [r1, #0x2c]
    adds r0, r1, #0
    bl Proc_Break
.L08062936:
    pop {r0}
    bx r0
    func_end func_08062914

    thumb_func_start func_0806293C
func_0806293C: @ 0x0806293C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, [r5, #0x60]
    bl CheckEkrHitDone
    cmp r0, #1
    bne .L08062996
    adds r0, r5, #0
    adds r0, #0x29
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08062970
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08062968
    ldr r0, .L08062964 @ =0x08BAECBC
    b .L08062986
    .align 2, 0
.L08062964: .4byte 0x08BAECBC
.L08062968:
    ldr r0, .L0806296C @ =0x08BADA1C
    b .L08062986
    .align 2, 0
.L0806296C: .4byte 0x08BADA1C
.L08062970:
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08062984
    ldr r0, .L08062980 @ =0x08BB125C
    b .L08062986
    .align 2, 0
.L08062980: .4byte 0x08BB125C
.L08062984:
    ldr r0, .L0806299C @ =0x08BAFF8C
.L08062986:
    str r0, [r4, #0x24]
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #6]
    strh r0, [r5, #0x2c]
    adds r0, r5, #0
    bl Proc_Break
.L08062996:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806299C: .4byte 0x08BAFF8C
    func_end func_0806293C

    thumb_func_start func_080629A0
func_080629A0: @ 0x080629A0
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x14
    bne .L080629C2
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L080629C2:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080629A0

    thumb_func_start NewEfxHurtmutEff00
NewEfxHurtmutEff00: @ 0x080629C8
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L080629F4 @ =0x0201774C
    ldr r5, [r0]
    cmp r5, #0
    bne .L08062A06
    ldr r0, .L080629F8 @ =0x08BA42F4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    strh r5, [r0, #0x2c]
    ldr r0, .L080629FC @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L08062A00
    adds r0, r4, #0
    bl func_08062A18
    b .L08062A06
    .align 2, 0
.L080629F4: .4byte 0x0201774C
.L080629F8: .4byte 0x08BA42F4
.L080629FC: .4byte 0x0203E02C
.L08062A00:
    adds r0, r4, #0
    bl func_08062B18
.L08062A06:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end NewEfxHurtmutEff00

    thumb_func_start func_08062A0C
func_08062A0C: @ 0x08062A0C
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08062A0C

    thumb_func_start func_08062A18
func_08062A18: @ 0x08062A18
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08062A50 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08062A54 @ =0x08BA430C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L08062A58 @ =0x08BA14DC
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062A50: .4byte 0x0201774C
.L08062A54: .4byte 0x08BA430C
.L08062A58: .4byte 0x08BA14DC
    func_end func_08062A18

    thumb_func_start func_08062A5C
func_08062A5C: @ 0x08062A5C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, [r5, #0x60]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #1
    bne .L08062A74
    ldr r0, .L08062A70 @ =0x08BA8230
    b .L08062A76
    .align 2, 0
.L08062A70: .4byte 0x08BA8230
.L08062A74:
    ldr r0, .L08062A9C @ =0x08BA859C
.L08062A76:
    str r0, [r4, #0x24]
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #6]
    ldr r0, .L08062AA0 @ =0x081F02C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08062AA4 @ =0x081EF23C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062A9C: .4byte 0x08BA859C
.L08062AA0: .4byte 0x081F02C0
.L08062AA4: .4byte 0x081EF23C
    func_end func_08062A5C

    thumb_func_start func_08062AA8
func_08062AA8: @ 0x08062AA8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, [r5, #0x60]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #1
    bne .L08062AC0
    ldr r0, .L08062ABC @ =0x08BA8884
    b .L08062AC2
    .align 2, 0
.L08062ABC: .4byte 0x08BA8884
.L08062AC0:
    ldr r0, .L08062AE8 @ =0x08BA8AE0
.L08062AC2:
    str r0, [r4, #0x24]
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #6]
    ldr r0, .L08062AEC @ =0x081F02C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08062AF0 @ =0x081EFADC
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062AE8: .4byte 0x08BA8AE0
.L08062AEC: .4byte 0x081F02C0
.L08062AF0: .4byte 0x081EFADC
    func_end func_08062AA8

    thumb_func_start func_08062AF4
func_08062AF4: @ 0x08062AF4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08062B14 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08062B14: .4byte 0x0201774C
    func_end func_08062AF4

    thumb_func_start func_08062B18
func_08062B18: @ 0x08062B18
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08062B50 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08062B54 @ =0x08BA4344
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r3, .L08062B58 @ =0x08BA14DC
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062B50: .4byte 0x0201774C
.L08062B54: .4byte 0x08BA4344
.L08062B58: .4byte 0x08BA14DC
    func_end func_08062B18

    thumb_func_start func_08062B5C
func_08062B5C: @ 0x08062B5C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, [r5, #0x60]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #1
    bne .L08062B74
    ldr r0, .L08062B70 @ =0x08BA8278
    b .L08062B76
    .align 2, 0
.L08062B70: .4byte 0x08BA8278
.L08062B74:
    ldr r0, .L08062B9C @ =0x08BA85E4
.L08062B76:
    str r0, [r4, #0x24]
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #6]
    ldr r0, .L08062BA0 @ =0x081F02C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08062BA4 @ =0x081EF23C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062B9C: .4byte 0x08BA85E4
.L08062BA0: .4byte 0x081F02C0
.L08062BA4: .4byte 0x081EF23C
    func_end func_08062B5C

    thumb_func_start func_08062BA8
func_08062BA8: @ 0x08062BA8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, [r5, #0x60]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    cmp r0, #1
    bne .L08062BC0
    ldr r0, .L08062BBC @ =0x08BA8894
    b .L08062BC2
    .align 2, 0
.L08062BBC: .4byte 0x08BA8894
.L08062BC0:
    ldr r0, .L08062BE8 @ =0x08BA8AF0
.L08062BC2:
    str r0, [r4, #0x24]
    str r0, [r4, #0x20]
    movs r0, #0
    strh r0, [r4, #6]
    ldr r0, .L08062BEC @ =0x081F02C0
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08062BF0 @ =0x081EFADC
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    adds r0, r5, #0
    bl Proc_Break
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08062BE8: .4byte 0x08BA8AF0
.L08062BEC: .4byte 0x081F02C0
.L08062BF0: .4byte 0x081EFADC
    func_end func_08062BA8

    thumb_func_start func_08062BF4
func_08062BF4: @ 0x08062BF4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08062C14 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08062C14: .4byte 0x0201774C
    func_end func_08062BF4

    thumb_func_start NewEfxMagfcast
NewEfxMagfcast: @ 0x08062C18
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r0, .L08062C5C @ =0x0201774C
    ldr r4, [r0]
    cmp r4, #0
    bne .L08062C70
    bl func_08050008
    ldr r0, .L08062C60 @ =0x08BA437C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    strh r4, [r5, #0x2c]
    ldr r4, .L08062C64 @ =gBanimIdx
    adds r0, r6, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x57
    blt .L08062C68
    cmp r0, #0x58
    bgt .L08062C68
    ldr r0, [r5, #0x5c]
    adds r1, r7, #0
    bl func_08062C94
    b .L08062C70
    .align 2, 0
.L08062C5C: .4byte 0x0201774C
.L08062C60: .4byte 0x08BA437C
.L08062C64: .4byte gBanimIdx
.L08062C68:
    ldr r0, [r5, #0x5c]
    adds r1, r7, #2
    bl func_08062C94
.L08062C70:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end NewEfxMagfcast

    thumb_func_start func_08062C78
func_08062C78: @ 0x08062C78
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x2c]
    adds r0, #1
    strh r0, [r1, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x14
    bne .L08062C90
    adds r0, r1, #0
    bl Proc_Break
.L08062C90:
    pop {r0}
    bx r0
    func_end func_08062C78

    thumb_func_start func_08062C94
func_08062C94: @ 0x08062C94
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldr r1, .L08062CC8 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08062CCC @ =0x08BA4394
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r6, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    str r0, [r4, #0x44]
    cmp r5, #1
    beq .L08062CE0
    cmp r5, #1
    blo .L08062CD0
    cmp r5, #2
    beq .L08062CF0
    cmp r5, #3
    beq .L08062D04
    b .L08062D1A
    .align 2, 0
.L08062CC8: .4byte 0x0201774C
.L08062CCC: .4byte 0x08BA4394
.L08062CD0:
    ldr r0, .L08062CD8 @ =0x081E96BC
    str r0, [r4, #0x48]
    ldr r0, .L08062CDC @ =0x08BA43AC
    b .L08062CF6
    .align 2, 0
.L08062CD8: .4byte 0x081E96BC
.L08062CDC: .4byte 0x08BA43AC
.L08062CE0:
    ldr r0, .L08062CE8 @ =0x081E96D2
    str r0, [r4, #0x48]
    ldr r0, .L08062CEC @ =0x08BA43AC
    b .L08062CF6
    .align 2, 0
.L08062CE8: .4byte 0x081E96D2
.L08062CEC: .4byte 0x08BA43AC
.L08062CF0:
    ldr r0, .L08062CFC @ =0x081E96D8
    str r0, [r4, #0x48]
    ldr r0, .L08062D00 @ =0x08BA43C4
.L08062CF6:
    str r0, [r4, #0x4c]
    str r0, [r4, #0x50]
    b .L08062D1A
    .align 2, 0
.L08062CFC: .4byte 0x081E96D8
.L08062D00: .4byte 0x08BA43C4
.L08062D04:
    ldr r0, .L08062D50 @ =0x081E96FA
    str r0, [r4, #0x48]
    ldr r0, .L08062D54 @ =0x08BA43C4
    str r0, [r4, #0x4c]
    str r0, [r4, #0x50]
    ldrb r1, [r6, #0x14]
    adds r0, r1, r6
    ldrb r1, [r0, #0x14]
    adds r0, r6, #0
    bl EfxPlaySEwithCmdCtrl
.L08062D1A:
    ldr r0, .L08062D58 @ =0x081F832C
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L08062D5C @ =0x081F9080
    movs r1, #0x20
    bl func_08050634
    bl func_08050040
    ldr r0, .L08062D60 @ =0x0203E02C
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    beq .L08062D6E
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    cmp r0, #0
    bne .L08062D64
    movs r0, #1
    movs r1, #0x18
    movs r2, #0
    bl SetBgOffset
    b .L08062D6E
    .align 2, 0
.L08062D50: .4byte 0x081E96FA
.L08062D54: .4byte 0x08BA43C4
.L08062D58: .4byte 0x081F832C
.L08062D5C: .4byte 0x081F9080
.L08062D60: .4byte 0x0203E02C
.L08062D64:
    movs r0, #1
    movs r1, #0xe8
    movs r2, #0
    bl SetBgOffset
.L08062D6E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08062C94

    thumb_func_start func_08062D74
func_08062D74: @ 0x08062D74
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08062DA2
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L08062DC0
.L08062DA2:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L08062DC0
    bl func_08050018
    ldr r1, .L08062DC8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_End
.L08062DC0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08062DC8: .4byte 0x0201774C
    func_end func_08062D74

    thumb_func_start NewEfxSunakemuri
NewEfxSunakemuri: @ 0x08062DCC
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L08062DF4 @ =0x0201774C
    ldr r4, [r0]
    cmp r4, #0
    bne .L08062DEE
    ldr r0, .L08062DF8 @ =0x08BA4404
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    strh r4, [r0, #0x2c]
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08062E08
.L08062DEE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08062DF4: .4byte 0x0201774C
.L08062DF8: .4byte 0x08BA4404
    func_end NewEfxSunakemuri

    thumb_func_start func_08062DFC
func_08062DFC: @ 0x08062DFC
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08062DFC

    thumb_func_start func_08062E08
func_08062E08: @ 0x08062E08
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r1, .L08062E70 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08062E74 @ =0x08BA441C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r6, [r5, #0x5c]
    movs r0, #0
    strh r0, [r5, #0x2c]
    ldr r2, .L08062E78 @ =0x08BB1320
    cmp r4, #0
    beq .L08062E36
    ldr r2, .L08062E7C @ =0x08BB15B0
    cmp r4, #1
    bne .L08062E36
    ldr r2, .L08062E80 @ =0x08BB1468
.L08062E36:
    ldr r3, .L08062E84 @ =0x08BB13C4
    cmp r4, #0
    beq .L08062E44
    ldr r3, .L08062E88 @ =0x08BB1654
    cmp r4, #1
    bne .L08062E44
    ldr r3, .L08062E8C @ =0x08BB150C
.L08062E44:
    str r2, [sp]
    adds r0, r6, #0
    adds r1, r3, #0
    bl func_0805041C
    str r0, [r5, #0x60]
    ldr r4, .L08062E90 @ =0x0203E0D8
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0x40
    bls .L08062E66
    b .L08062FD0
.L08062E66:
    lsls r0, r0, #2
    ldr r1, .L08062E94 @ =.L08062E98
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08062E70: .4byte 0x0201774C
.L08062E74: .4byte 0x08BA441C
.L08062E78: .4byte 0x08BB1320
.L08062E7C: .4byte 0x08BB15B0
.L08062E80: .4byte 0x08BB1468
.L08062E84: .4byte 0x08BB13C4
.L08062E88: .4byte 0x08BB1654
.L08062E8C: .4byte 0x08BB150C
.L08062E90: .4byte 0x0203E0D8
.L08062E94: .4byte .L08062E98
.L08062E98: @ jump table
    .4byte .L08062FD0 @ case 0
    .4byte .L08062F9C @ case 1
    .4byte .L08062F9C @ case 2
    .4byte .L08062F9C @ case 3
    .4byte .L08062F9C @ case 4
    .4byte .L08062F9C @ case 5
    .4byte .L08062FC8 @ case 6
    .4byte .L08062FC8 @ case 7
    .4byte .L08062FC8 @ case 8
    .4byte .L08062FC8 @ case 9
    .4byte .L08062F9C @ case 10
    .4byte .L08062FC8 @ case 11
    .4byte .L08062F9C @ case 12
    .4byte .L08062F9C @ case 13
    .4byte .L08062F9C @ case 14
    .4byte .L08062F9C @ case 15
    .4byte .L08062FB8 @ case 16
    .4byte .L08062F9C @ case 17
    .4byte .L08062F9C @ case 18
    .4byte .L08062F9C @ case 19
    .4byte .L08062FA4 @ case 20
    .4byte .L08062FB8 @ case 21
    .4byte .L08062FB8 @ case 22
    .4byte .L08062FC8 @ case 23
    .4byte .L08062FC8 @ case 24
    .4byte .L08062F9C @ case 25
    .4byte .L08062F9C @ case 26
    .4byte .L08062F9C @ case 27
    .4byte .L08062F9C @ case 28
    .4byte .L08062FC8 @ case 29
    .4byte .L08062FC8 @ case 30
    .4byte .L08062FC8 @ case 31
    .4byte .L08062FC8 @ case 32
    .4byte .L08062FC8 @ case 33
    .4byte .L08062F9C @ case 34
    .4byte .L08062F9C @ case 35
    .4byte .L08062FC8 @ case 36
    .4byte .L08062F9C @ case 37
    .4byte .L08062F9C @ case 38
    .4byte .L08062F9C @ case 39
    .4byte .L08062F9C @ case 40
    .4byte .L08062F9C @ case 41
    .4byte .L08062F9C @ case 42
    .4byte .L08062F9C @ case 43
    .4byte .L08062FD0 @ case 44
    .4byte .L08062FC8 @ case 45
    .4byte .L08062FD0 @ case 46
    .4byte .L08062F9C @ case 47
    .4byte .L08062FC8 @ case 48
    .4byte .L08062FC8 @ case 49
    .4byte .L08062FC8 @ case 50
    .4byte .L08062F9C @ case 51
    .4byte .L08062FD0 @ case 52
    .4byte .L08062FD0 @ case 53
    .4byte .L08062FB8 @ case 54
    .4byte .L08062FC8 @ case 55
    .4byte .L08062F9C @ case 56
    .4byte .L08062F9C @ case 57
    .4byte .L08062F9C @ case 58
    .4byte .L08062F9C @ case 59
    .4byte .L08062FB8 @ case 60
    .4byte .L08062F9C @ case 61
    .4byte .L08062FC8 @ case 62
    .4byte .L08062F9C @ case 63
    .4byte .L08062F9C @ case 64
.L08062F9C:
    ldr r0, .L08062FA0 @ =0x081FB454
    b .L08062FBA
    .align 2, 0
.L08062FA0: .4byte 0x081FB454
.L08062FA4:
    ldr r0, [r5, #0x5c]
    bl func_08067C6C
    cmp r0, #0
    beq .L08062FB8
    ldr r0, .L08062FB4 @ =0x081FB454
    b .L08062FBA
    .align 2, 0
.L08062FB4: .4byte 0x081FB454
.L08062FB8:
    ldr r0, .L08062FC4 @ =0x081FB474
.L08062FBA:
    movs r1, #0x20
    bl func_080505F0
    b .L08062FD0
    .align 2, 0
.L08062FC4: .4byte 0x081FB474
.L08062FC8:
    ldr r0, .L08062FE4 @ =0x081FB494
    movs r1, #0x20
    bl func_080505F0
.L08062FD0:
    ldr r0, .L08062FE8 @ =0x081FAFE4
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08062FE4: .4byte 0x081FB494
.L08062FE8: .4byte 0x081FAFE4
    func_end func_08062E08

    thumb_func_start func_08062FEC
func_08062FEC: @ 0x08062FEC
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #9
    bne .L08063012
    ldr r0, .L08063018 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L08063012:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063018: .4byte 0x0201774C
    func_end func_08062FEC

    thumb_func_start NewEfxLokmsuna
NewEfxLokmsuna: @ 0x0806301C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08063040 @ =0x0201774C
    ldr r4, [r0]
    cmp r4, #0
    bne .L0806303A
    ldr r0, .L08063044 @ =0x08BA4434
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    strh r4, [r0, #0x2c]
    adds r0, r5, #0
    bl func_08063054
.L0806303A:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08063040: .4byte 0x0201774C
.L08063044: .4byte 0x08BA4434
    func_end NewEfxLokmsuna

    thumb_func_start func_08063048
func_08063048: @ 0x08063048
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_08063048

    thumb_func_start func_08063054
func_08063054: @ 0x08063054
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L080630A0 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L080630A4 @ =0x08BA444C
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r7, #0
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r2, .L080630A8 @ =0x08BD91D8
    ldr r3, .L080630AC @ =0x08BD92FC
    str r2, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_0805041C
    adds r6, r0, #0
    str r6, [r4, #0x60]
    ldr r0, .L080630B0 @ =0x00000FFF
    ldrh r1, [r6, #8]
    ands r0, r1
    strh r0, [r6, #8]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080630B4
    movs r1, #0xe0
    lsls r1, r1, #7
    b .L080630B8
    .align 2, 0
.L080630A0: .4byte 0x0201774C
.L080630A4: .4byte 0x08BA444C
.L080630A8: .4byte 0x08BD91D8
.L080630AC: .4byte 0x08BD92FC
.L080630B0: .4byte 0x00000FFF
.L080630B4:
    movs r1, #0x90
    lsls r1, r1, #8
.L080630B8:
    adds r0, r1, #0
    ldrh r1, [r6, #8]
    orrs r0, r1
    strh r0, [r6, #8]
    ldr r0, .L080630D4 @ =0x082DE400
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080630D4: .4byte 0x082DE400
    func_end func_08063054

    thumb_func_start func_080630D8
func_080630D8: @ 0x080630D8
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xf
    bne .L080630FE
    ldr r0, .L08063104 @ =0x0201774C
    ldr r1, [r0]
    subs r1, #1
    str r1, [r0]
    ldr r0, [r4, #0x60]
    bl AnimDelete
    adds r0, r4, #0
    bl Proc_Break
.L080630FE:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063104: .4byte 0x0201774C
    func_end func_080630D8

    thumb_func_start NewEfxKingPika
NewEfxKingPika: @ 0x08063108
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08063120 @ =0x08BA4464
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063120: .4byte 0x08BA4464
    func_end NewEfxKingPika

    thumb_func_start func_08063124
func_08063124: @ 0x08063124
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r6, [r7, #0x5c]
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08063146
    adds r0, r6, #0
    movs r1, #1
    movs r2, #0x28
    movs r3, #0
    bl func_0804F598
    b .L0806318A
.L08063146:
    cmp r0, #0xa
    bne .L08063154
    adds r0, r6, #0
    movs r1, #0x14
    bl func_0804EFDC
    b .L0806318A
.L08063154:
    cmp r0, #0x2d
    bne .L0806318A
    ldr r5, .L08063190 @ =0x02000000
    adds r0, r6, #0
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r5
    ldr r4, [r0]
    adds r0, r6, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r2, [r0]
    movs r0, #0x40
    ldrh r1, [r4, #0x10]
    orrs r1, r0
    strh r1, [r4, #0x10]
    ldrh r1, [r2, #0x10]
    orrs r0, r1
    strh r0, [r2, #0x10]
    adds r0, r7, #0
    bl Proc_Break
.L0806318A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08063190: .4byte 0x02000000
    func_end func_08063124

    thumb_func_start NewEfxFlashFX
NewEfxFlashFX: @ 0x08063194
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080631AC @ =0x08BA447C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080631AC: .4byte 0x08BA447C
    func_end NewEfxFlashFX

    thumb_func_start func_080631B0
func_080631B0: @ 0x080631B0
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r6, [r7, #0x5c]
    ldrh r0, [r7, #0x2c]
    adds r0, #1
    strh r0, [r7, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L080631CE
    adds r0, r6, #0
    movs r1, #5
    bl func_0804EFDC
    b .L08063204
.L080631CE:
    cmp r0, #6
    bne .L08063204
    ldr r5, .L0806320C @ =0x02000000
    adds r0, r6, #0
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r5
    ldr r4, [r0]
    adds r0, r6, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r2, [r0]
    movs r0, #0x40
    ldrh r1, [r4, #0x10]
    orrs r1, r0
    strh r1, [r4, #0x10]
    ldrh r1, [r2, #0x10]
    orrs r0, r1
    strh r0, [r2, #0x10]
    adds r0, r7, #0
    bl Proc_Break
.L08063204:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0806320C: .4byte 0x02000000
    func_end func_080631B0

    thumb_func_start func_08063210
func_08063210: @ 0x08063210
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08063270 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08063274 @ =0x08BA4494
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x28
    strh r0, [r4, #0x2e]
    ldr r3, .L08063278 @ =0x08BA6660
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L0806327C @ =0x081EB900
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08063280 @ =0x081EB78C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xee
    movs r3, #1
    bl func_080681E4
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08063270: .4byte 0x0201774C
.L08063274: .4byte 0x08BA4494
.L08063278: .4byte 0x08BA6660
.L0806327C: .4byte 0x081EB900
.L08063280: .4byte 0x081EB78C
    func_end func_08063210

    thumb_func_start func_08063284
func_08063284: @ 0x08063284
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x18
    bne .L080632A8
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xee
    movs r3, #1
    bl func_080681E4
.L080632A8:
    movs r0, #0x2c
    ldrsh r1, [r4, r0]
    movs r2, #0x2e
    ldrsh r0, [r4, r2]
    cmp r1, r0
    ble .L080632C8
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L080632D0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L080632C8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080632D0: .4byte 0x0201774C
    func_end func_08063284

    thumb_func_start func_080632D4
func_080632D4: @ 0x080632D4
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, .L08063334 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08063338 @ =0x08BA44AC
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    movs r0, #0x19
    strh r0, [r4, #0x2e]
    ldr r3, .L0806333C @ =0x08BA6630
    str r3, [sp]
    adds r0, r5, #0
    adds r1, r3, #0
    adds r2, r3, #0
    bl func_0805041C
    str r0, [r4, #0x60]
    ldr r0, .L08063340 @ =0x081EB900
    movs r1, #0x20
    bl func_080505F0
    ldr r0, .L08063344 @ =0x081EB78C
    movs r1, #0x80
    lsls r1, r1, #5
    bl func_080505C8
    movs r1, #0x80
    lsls r1, r1, #1
    ldr r0, [r4, #0x5c]
    movs r3, #2
    ldrsh r2, [r0, r3]
    movs r0, #0xe1
    movs r3, #1
    bl func_080681E4
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08063334: .4byte 0x0201774C
.L08063338: .4byte 0x08BA44AC
.L0806333C: .4byte 0x08BA6630
.L08063340: .4byte 0x081EB900
.L08063344: .4byte 0x081EB78C
    func_end func_080632D4

    thumb_func_start func_08063348
func_08063348: @ 0x08063348
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L08063370
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r1, .L08063378 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    adds r0, r4, #0
    bl Proc_Break
.L08063370:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063378: .4byte 0x0201774C
    func_end func_08063348

    thumb_func_start NewEfxSpecalEffect
NewEfxSpecalEffect: @ 0x0806337C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r4, .L080633B0 @ =0x02017768
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #0
    bne .L080633CA
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, r0, r4
    movs r1, #1
    strh r1, [r0]
    adds r0, r5, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L080633B8
    ldr r0, .L080633B4 @ =0x0203E094
    b .L080633BA
    .align 2, 0
.L080633B0: .4byte 0x02017768
.L080633B4: .4byte 0x0203E094
.L080633B8:
    ldr r0, .L080633F8 @ =0x0203E098
.L080633BA:
    ldr r0, [r0]
    adds r0, #0x4a
    ldrh r0, [r0]
    bl func_080533B0
    lsls r0, r0, #0x10
    cmp r0, #0
    bne .L08063400
.L080633CA:
    ldr r4, .L080633FC @ =0x02000000
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r4
    ldr r6, [r0]
    adds r0, r5, #0
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r2, [r0]
    movs r1, #0x40
    ldrh r0, [r6, #0x10]
    orrs r0, r1
    strh r0, [r6, #0x10]
    ldrh r0, [r2, #0x10]
    orrs r0, r1
    strh r0, [r2, #0x10]
    b .L08063422
    .align 2, 0
.L080633F8: .4byte 0x0203E098
.L080633FC: .4byte 0x02000000
.L08063400:
    ldr r0, .L08063428 @ =0x08BA44C4
    movs r1, #3
    bl Proc_Start
    str r5, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0xf0
    movs r2, #0x78
    movs r3, #0
    bl func_080681E4
    adds r0, r5, #0
    bl func_08063438
.L08063422:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08063428: .4byte 0x08BA44C4
    func_end NewEfxSpecalEffect

    thumb_func_start func_0806342C
func_0806342C: @ 0x0806342C
    push {lr}
    bl Proc_Break
    pop {r0}
    bx r0
    func_end func_0806342C

    thumb_func_start func_08063438
func_08063438: @ 0x08063438
    push {r4, lr}
    adds r4, r0, #0
    bl func_08050008
    ldr r0, .L08063454 @ =0x08BA44DC
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063454: .4byte 0x08BA44DC
    func_end func_08063438

    thumb_func_start func_08063458
func_08063458: @ 0x08063458
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08063472
    ldr r0, [r6, #0x5c]
    bl func_080634C8
    b .L080634BC
.L08063472:
    cmp r0, #0x15
    bne .L08063486
    ldr r0, [r6, #0x5c]
    movs r1, #0x2d
    movs r2, #1
    bl func_08055E14
    bl func_0806353C
    b .L080634BC
.L08063486:
    cmp r0, #0x46
    bne .L080634BC
    ldr r5, .L080634C4 @ =0x02000000
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r5
    ldr r4, [r0]
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r2, [r0]
    movs r0, #0x40
    ldrh r1, [r4, #0x10]
    orrs r1, r0
    strh r1, [r4, #0x10]
    ldrh r1, [r2, #0x10]
    orrs r0, r1
    strh r0, [r2, #0x10]
    adds r0, r6, #0
    bl Proc_Break
.L080634BC:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080634C4: .4byte 0x02000000
    func_end func_08063458

    thumb_func_start func_080634C8
func_080634C8: @ 0x080634C8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08063504 @ =0x08BA44F4
    movs r1, #3
    bl Proc_Start
    adds r4, r0, #0
    str r5, [r4, #0x5c]
    movs r0, #0
    strh r0, [r4, #0x2c]
    ldr r0, .L08063508 @ =0x081F3440
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    ldr r0, .L0806350C @ =0x081F3500
    movs r1, #0x20
    bl func_08050634
    ldr r0, [r4, #0x5c]
    ldr r2, .L08063510 @ =0x081F3520
    adds r1, r2, #0
    bl func_080504DC
    bl func_08050040
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08063504: .4byte 0x08BA44F4
.L08063508: .4byte 0x081F3440
.L0806350C: .4byte 0x081F3500
.L08063510: .4byte 0x081F3520
    func_end func_080634C8

    thumb_func_start func_08063514
func_08063514: @ 0x08063514
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x3c
    bne .L08063534
    bl func_08050018
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08063534:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08063514

    thumb_func_start func_0806353C
func_0806353C: @ 0x0806353C
    push {lr}
    ldr r0, .L08063558 @ =0x08BA450C
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    bl func_080635E0
    pop {r0}
    bx r0
    .align 2, 0
.L08063558: .4byte 0x08BA450C
    func_end func_0806353C

    thumb_func_start func_0806355C
func_0806355C: @ 0x0806355C
    push {r4, r5, r6, r7, lr}
    mov ip, r0
    ldr r0, .L080635A4 @ =0x0201FDAC
    ldr r0, [r0]
    ldr r4, .L080635A8 @ =0x0201FDB8
    cmp r0, #0
    bne .L0806356C
    ldr r4, .L080635AC @ =0x0201FEF8
.L0806356C:
    movs r3, #0
    movs r7, #0x88
    lsls r7, r7, #0x10
    movs r6, #0x88
    ldr r5, .L080635B0 @ =0x08BA453C
.L08063576:
    cmp r3, #0x77
    bhi .L080635C2
    movs r0, #0
    ldrsh r1, [r5, r0]
    mov r2, ip
    ldr r0, [r2, #0x44]
    muls r0, r1, r0
    lsls r0, r0, #4
    lsrs r2, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    beq .L080635BE
    cmp r3, #0x3b
    bhi .L080635B8
    adds r0, r3, #0
    subs r0, #0x88
    cmp r1, r0
    bhs .L080635BE
    ldr r1, .L080635B4 @ =0x0000FF78
    adds r0, r3, r1
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
    b .L080635BE
    .align 2, 0
.L080635A4: .4byte 0x0201FDAC
.L080635A8: .4byte 0x0201FDB8
.L080635AC: .4byte 0x0201FEF8
.L080635B0: .4byte 0x08BA453C
.L080635B4: .4byte 0x0000FF78
.L080635B8:
    cmp r1, r6
    bls .L080635BE
    lsrs r2, r7, #0x10
.L080635BE:
    strh r2, [r4]
    b .L080635C6
.L080635C2:
    movs r0, #0
    strh r0, [r4]
.L080635C6:
    adds r4, #2
    ldr r2, .L080635DC @ =0xFFFF0000
    adds r7, r7, r2
    subs r6, #1
    adds r5, #2
    adds r3, #1
    cmp r3, #0x9f
    bls .L08063576
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080635DC: .4byte 0xFFFF0000
    func_end func_0806355C

    thumb_func_start func_080635E0
func_080635E0: @ 0x080635E0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080635FC @ =0x08BA4524
    movs r1, #3
    bl Proc_Start
    movs r1, #0
    strh r1, [r0, #0x2c]
    movs r1, #0x28
    strh r1, [r0, #0x2e]
    str r4, [r0, #0x5c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080635FC: .4byte 0x08BA4524
    func_end func_080635E0

    thumb_func_start func_08063600
func_08063600: @ 0x08063600
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r5, [r4, #0x5c]
    movs r2, #0x80
    lsls r2, r2, #0xb
    movs r0, #0x2c
    ldrsh r3, [r4, r0]
    movs r1, #0x2e
    ldrsh r0, [r4, r1]
    str r0, [sp]
    movs r0, #0
    movs r1, #0
    bl Interpolate
    str r0, [r5, #0x44]
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x2e]
    lsls r1, r2, #0x10
    cmp r0, r1
    ble .L0806363C
    adds r0, r5, #0
    bl Proc_End
    adds r0, r4, #0
    bl Proc_Break
.L0806363C:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08063600

    thumb_func_start func_08063644
func_08063644: @ 0x08063644
    push {r4, lr}
    adds r4, r0, #0
    bl func_08050008
    ldr r0, .L08063660 @ =0x08BA462C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063660: .4byte 0x08BA462C
    func_end func_08063644

    thumb_func_start func_08063664
func_08063664: @ 0x08063664
    push {r4, r5, lr}
    adds r5, r0, #0
    ldrh r0, [r5, #0x2c]
    adds r0, #1
    strh r0, [r5, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x11
    bne .L0806369A
    ldr r0, [r5, #0x5c]
    movs r1, #0x49
    bl func_080636AC
    movs r4, #0xa0
    lsls r4, r4, #1
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_080675C8
    ldr r0, [r5, #0x5c]
    movs r2, #2
    ldrsh r1, [r0, r2]
    adds r0, r4, #0
    movs r2, #1
    bl func_080676E8
.L0806369A:
    ldrh r0, [r5, #0x2c]
    cmp r0, #0x64
    bne .L080636A6
    adds r0, r5, #0
    bl Proc_Break
.L080636A6:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08063664

    thumb_func_start func_080636AC
func_080636AC: @ 0x080636AC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0806372C @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08063730 @ =0x08BA4644
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    strh r5, [r0, #0x30]
    str r1, [r0, #0x44]
    ldr r1, .L08063734 @ =0x081E971C
    str r1, [r0, #0x48]
    ldr r1, .L08063738 @ =0x08BA465C
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L0806373C @ =0x081FAC38
    movs r1, #0x20
    bl func_08050634
    ldr r0, .L08063740 @ =0x081F9FC4
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    bl func_08050040
    ldr r3, .L08063744 @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x14]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x14]
    ldrb r0, [r3, #0x10]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x10]
    movs r0, #3
    ldrb r1, [r3, #0x18]
    orrs r0, r1
    strb r0, [r3, #0x18]
    movs r0, #1
    movs r1, #0x10
    movs r2, #0
    bl SetBgOffset
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0806372C: .4byte 0x0201774C
.L08063730: .4byte 0x08BA4644
.L08063734: .4byte 0x081E971C
.L08063738: .4byte 0x08BA465C
.L0806373C: .4byte 0x081FAC38
.L08063740: .4byte 0x081F9FC4
.L08063744: .4byte gDispIo
    func_end func_080636AC

    thumb_func_start func_08063748
func_08063748: @ 0x08063748
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08063774
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
.L08063774:
    ldrh r0, [r4, #0x2e]
    adds r0, #1
    strh r0, [r4, #0x2e]
    lsls r0, r0, #0x10
    ldrh r2, [r4, #0x30]
    lsls r1, r2, #0x10
    cmp r0, r1
    bne .L080637C6
    ldr r3, .L080637CC @ =gDispIo
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, r1, #0
    ldrb r2, [r3, #0xc]
    ands r0, r2
    strb r0, [r3, #0xc]
    adds r0, r1, #0
    ldrb r2, [r3, #0x10]
    ands r0, r2
    movs r2, #1
    orrs r0, r2
    strb r0, [r3, #0x10]
    ldrb r0, [r3, #0x18]
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r3, #0x18]
    movs r0, #3
    ldrb r1, [r3, #0x14]
    orrs r0, r1
    strb r0, [r3, #0x14]
    bl func_08050018
    ldr r1, .L080637D0 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L080637C6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080637CC: .4byte gDispIo
.L080637D0: .4byte 0x0201774C
    func_end func_08063748

    thumb_func_start NewEfxMantBatabata
NewEfxMantBatabata: @ 0x080637D4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    bl GetAnimPosition
    ldr r1, .L08063800 @ =gBanimIdx
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    subs r0, #0x57
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x1b
    bhi .L080638C8
    lsls r0, r0, #2
    ldr r1, .L08063804 @ =.L08063808
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08063800: .4byte gBanimIdx
.L08063804: .4byte .L08063808
.L08063808: @ jump table
    .4byte .L08063878 @ case 0
    .4byte .L08063878 @ case 1
    .4byte .L08063888 @ case 2
    .4byte .L080638C8 @ case 3
    .4byte .L08063888 @ case 4
    .4byte .L080638C8 @ case 5
    .4byte .L080638C8 @ case 6
    .4byte .L080638C8 @ case 7
    .4byte .L080638C8 @ case 8
    .4byte .L080638C8 @ case 9
    .4byte .L080638C8 @ case 10
    .4byte .L080638C8 @ case 11
    .4byte .L080638C8 @ case 12
    .4byte .L080638C8 @ case 13
    .4byte .L080638C8 @ case 14
    .4byte .L080638C8 @ case 15
    .4byte .L080638C8 @ case 16
    .4byte .L08063898 @ case 17
    .4byte .L080638C8 @ case 18
    .4byte .L080638C8 @ case 19
    .4byte .L080638B8 @ case 20
    .4byte .L080638B8 @ case 21
    .4byte .L080638C8 @ case 22
    .4byte .L080638C8 @ case 23
    .4byte .L080638C8 @ case 24
    .4byte .L080638C8 @ case 25
    .4byte .L080638A8 @ case 26
    .4byte .L080638A8 @ case 27
.L08063878:
    ldr r5, .L08063880 @ =0x08BB17E8
    ldr r4, .L08063884 @ =0x08BB197C
    b .L080638CC
    .align 2, 0
.L08063880: .4byte 0x08BB17E8
.L08063884: .4byte 0x08BB197C
.L08063888:
    ldr r5, .L08063890 @ =0x08BB1B28
    ldr r4, .L08063894 @ =0x08BB1CD4
    b .L080638CC
    .align 2, 0
.L08063890: .4byte 0x08BB1B28
.L08063894: .4byte 0x08BB1CD4
.L08063898:
    ldr r5, .L080638A0 @ =0x08BB1E80
    ldr r4, .L080638A4 @ =0x08BB2028
    b .L080638CC
    .align 2, 0
.L080638A0: .4byte 0x08BB1E80
.L080638A4: .4byte 0x08BB2028
.L080638A8:
    ldr r5, .L080638B0 @ =0x08BB2164
    ldr r4, .L080638B4 @ =0x08BB229C
    b .L080638CC
    .align 2, 0
.L080638B0: .4byte 0x08BB2164
.L080638B4: .4byte 0x08BB229C
.L080638B8:
    ldr r5, .L080638C0 @ =0x08BB2500
    ldr r4, .L080638C4 @ =0x08BB2768
    b .L080638CC
    .align 2, 0
.L080638C0: .4byte 0x08BB2500
.L080638C4: .4byte 0x08BB2768
.L080638C8:
    ldr r5, .L08063924 @ =0x08BB288C
    ldr r4, .L08063928 @ =0x08BB29B0
.L080638CC:
    ldr r0, .L0806392C @ =0x08BA466C
    movs r1, #3
    bl Proc_Start
    adds r6, r0, #0
    str r7, [r6, #0x5c]
    movs r0, #0
    mov r8, r0
    movs r0, #0
    strh r0, [r6, #0x2c]
    str r5, [sp]
    adds r0, r7, #0
    adds r1, r4, #0
    adds r2, r5, #0
    adds r3, r4, #0
    bl func_0805041C
    adds r4, r0, #0
    str r4, [r6, #0x60]
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    ldr r1, .L08063930 @ =0x02000010
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r6, #0x60]
    str r1, [r0]
    movs r0, #0xc0
    lsls r0, r0, #4
    ldrh r1, [r4, #8]
    ands r0, r1
    strh r0, [r4, #8]
    movs r0, #0x64
    strh r0, [r4, #0xa]
    bl AnimSort
    adds r0, r7, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08063934
    movs r1, #0xe4
    lsls r1, r1, #7
    b .L08063938
    .align 2, 0
.L08063924: .4byte 0x08BB288C
.L08063928: .4byte 0x08BB29B0
.L0806392C: .4byte 0x08BA466C
.L08063930: .4byte 0x02000010
.L08063934:
    movs r1, #0x93
    lsls r1, r1, #8
.L08063938:
    adds r0, r1, #0
    ldrh r1, [r4, #8]
    orrs r0, r1
    strh r0, [r4, #8]
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    bl func_0805484C
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end NewEfxMantBatabata

    thumb_func_start func_08063958
func_08063958: @ 0x08063958
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0x60]
    ldr r0, [r2, #0x5c]
    ldrh r0, [r0, #2]
    strh r0, [r1, #2]
    ldr r0, [r2, #0x5c]
    ldrh r1, [r0, #0x10]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    beq .L0806397E
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    beq .L0806397E
    adds r0, r2, #0
    bl Proc_Break
.L0806397E:
    pop {r0}
    bx r0
    func_end func_08063958

    thumb_func_start func_08063984
func_08063984: @ 0x08063984
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, [r4, #0x60]
    ldr r0, [r4, #0x5c]
    ldrh r0, [r0, #2]
    strh r0, [r1, #2]
    bl CheckEkrHitDone
    cmp r0, #1
    bne .L080639BE
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    bl func_08054884
    ldr r0, [r4, #0x60]
    bl AnimDelete
    ldr r0, [r4, #0x5c]
    bl GetAnimPosition
    ldr r1, .L080639C4 @ =0x02000010
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0
    str r1, [r0]
    adds r0, r4, #0
    bl Proc_Break
.L080639BE:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080639C4: .4byte 0x02000010
    func_end func_08063984

    thumb_func_start NewEfxChillEffect
NewEfxChillEffect: @ 0x080639C8
    push {r4, lr}
    adds r4, r0, #0
    bl func_08050008
    ldr r0, .L080639E4 @ =0x08BA468C
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080639E4: .4byte 0x08BA468C
    func_end NewEfxChillEffect

    thumb_func_start func_080639E8
func_080639E8: @ 0x080639E8
    push {r4, lr}
    adds r4, r0, #0
    ldrh r0, [r4, #0x2c]
    adds r0, #1
    strh r0, [r4, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #1
    bne .L08063A08
    ldr r0, [r4, #0x5c]
    bl func_08063A2C
    ldr r0, [r4, #0x5c]
    bl func_08063ADC
    b .L08063A24
.L08063A08:
    cmp r0, #3
    beq .L08063A10
    cmp r0, #0x11
    bne .L08063A1A
.L08063A10:
    ldr r0, [r4, #0x5c]
    movs r1, #5
    bl func_0804F058
    b .L08063A24
.L08063A1A:
    cmp r0, #0x24
    bne .L08063A24
    adds r0, r4, #0
    bl Proc_Break
.L08063A24:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080639E8

    thumb_func_start func_08063A2C
func_08063A2C: @ 0x08063A2C
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L08063A70 @ =0x0201774C
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, .L08063A74 @ =0x08BA46A4
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    strh r1, [r0, #0x2e]
    str r1, [r0, #0x44]
    ldr r1, .L08063A78 @ =0x081E973A
    str r1, [r0, #0x48]
    ldr r1, .L08063A7C @ =0x08BA46BC
    str r1, [r0, #0x4c]
    str r1, [r0, #0x50]
    ldr r0, .L08063A80 @ =0x08296F50
    movs r1, #0x80
    lsls r1, r1, #6
    bl func_0805060C
    movs r0, #1
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063A70: .4byte 0x0201774C
.L08063A74: .4byte 0x08BA46A4
.L08063A78: .4byte 0x081E973A
.L08063A7C: .4byte 0x08BA46BC
.L08063A80: .4byte 0x08296F50
    func_end func_08063A2C

    thumb_func_start func_08063A84
func_08063A84: @ 0x08063A84
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r2, r0, #0x10
    cmp r2, #0
    blt .L08063AB2
    ldr r1, [r4, #0x4c]
    ldr r3, [r4, #0x50]
    ldr r0, [r4, #0x5c]
    lsls r2, r2, #2
    adds r1, r2, r1
    ldr r1, [r1]
    adds r2, r2, r3
    ldr r2, [r2]
    bl func_080504DC
    b .L08063AD0
.L08063AB2:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r2, r0
    bne .L08063AD0
    bl func_08050018
    ldr r1, .L08063AD8 @ =0x0201774C
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    bl func_08050118
    adds r0, r4, #0
    bl Proc_Break
.L08063AD0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063AD8: .4byte 0x0201774C
    func_end func_08063A84

    thumb_func_start func_08063ADC
func_08063ADC: @ 0x08063ADC
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08063B00 @ =0x08BA46C8
    movs r1, #3
    bl Proc_Start
    str r4, [r0, #0x5c]
    movs r1, #0
    strh r1, [r0, #0x2c]
    str r1, [r0, #0x44]
    ldr r1, .L08063B04 @ =0x081E9748
    str r1, [r0, #0x48]
    ldr r1, .L08063B08 @ =0x082B3D7C
    str r1, [r0, #0x4c]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08063B00: .4byte 0x08BA46C8
.L08063B04: .4byte 0x081E9748
.L08063B08: .4byte 0x082B3D7C
    func_end func_08063ADC

    thumb_func_start func_08063B0C
func_08063B0C: @ 0x08063B0C
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x2c
    adds r1, r4, #0
    adds r1, #0x44
    ldr r2, [r4, #0x48]
    bl func_080506E4
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #0
    blt .L08063B32
    ldr r0, [r4, #0x4c]
    lsls r1, r1, #5
    adds r0, r0, r1
    movs r1, #0x20
    bl func_08050634
    b .L08063B40
.L08063B32:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08063B40
    adds r0, r4, #0
    bl Proc_Break
.L08063B40:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08063B0C

    thumb_func_start NewEfxChillAnime
NewEfxChillAnime: @ 0x08063B48
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    cmp r1, #0
    bne .L08063B64
    ldr r6, .L08063B5C @ =0x08BD5644
    ldr r4, .L08063B60 @ =0x08BD5848
    b .L08063B68
    .align 2, 0
.L08063B5C: .4byte 0x08BD5644
.L08063B60: .4byte 0x08BD5848
.L08063B64:
    ldr r6, .L08063BC0 @ =0x08BD5BFC
    ldr r4, .L08063BC4 @ =0x08BD5FB0
.L08063B68:
    ldr r0, .L08063BC8 @ =0x08BA46E8
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    str r7, [r5, #0x5c]
    movs r0, #0
    mov r8, r0
    movs r0, #0
    strh r0, [r5, #0x2c]
    str r6, [sp]
    adds r0, r7, #0
    adds r1, r4, #0
    adds r2, r6, #0
    adds r3, r4, #0
    bl func_0805041C
    adds r4, r0, #0
    str r4, [r5, #0x60]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    ldr r1, .L08063BCC @ =0x02000010
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r1, [r5, #0x60]
    str r1, [r0]
    movs r0, #0xc0
    lsls r0, r0, #4
    ldrh r1, [r4, #8]
    ands r0, r1
    strh r0, [r4, #8]
    movs r0, #0x64
    strh r0, [r4, #0xa]
    bl AnimSort
    adds r0, r7, #0
    bl GetAnimPosition
    cmp r0, #0
    bne .L08063BD0
    movs r1, #0xe4
    lsls r1, r1, #7
    b .L08063BD4
    .align 2, 0
.L08063BC0: .4byte 0x08BD5BFC
.L08063BC4: .4byte 0x08BD5FB0
.L08063BC8: .4byte 0x08BA46E8
.L08063BCC: .4byte 0x02000010
.L08063BD0:
    movs r1, #0x93
    lsls r1, r1, #8
.L08063BD4:
    adds r0, r1, #0
    ldrh r1, [r4, #8]
    orrs r0, r1
    strh r0, [r4, #8]
    ldr r0, [r5, #0x5c]
    bl GetAnimPosition
    bl func_0805484C
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end NewEfxChillAnime

    thumb_func_start func_08063BF4
func_08063BF4: @ 0x08063BF4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r1, [r6, #0x60]
    ldr r0, [r6, #0x5c]
    ldrh r0, [r0, #2]
    strh r0, [r1, #2]
    ldrh r0, [r6, #0x2c]
    adds r0, #1
    strh r0, [r6, #0x2c]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x14
    bne .L08063C60
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    bl func_08054884
    ldr r0, [r6, #0x60]
    bl AnimDelete
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    ldr r1, .L08063C68 @ =0x02000010
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0
    str r1, [r0]
    ldr r5, .L08063C6C @ =0x02000000
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #3
    adds r0, r0, r5
    ldr r4, [r0]
    ldr r0, [r6, #0x5c]
    bl GetAnimPosition
    lsls r0, r0, #1
    adds r0, #1
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r2, [r0]
    movs r0, #0x40
    ldrh r1, [r4, #0x10]
    orrs r1, r0
    strh r1, [r4, #0x10]
    ldrh r1, [r2, #0x10]
    orrs r0, r1
    strh r0, [r2, #0x10]
    adds r0, r6, #0
    bl Proc_Break
.L08063C60:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08063C68: .4byte 0x02000010
.L08063C6C: .4byte 0x02000000
    func_end func_08063BF4
