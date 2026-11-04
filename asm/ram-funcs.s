    .include "asm_prelude.inc"

    thumb_func_start InitRamFuncs
InitRamFuncs: @ 0x0800427C
    push {r4, r7, lr}
    sub sp, #4
    mov r7, sp
    ldr r0, .L080042FC @ =ArmCodeEnd
    ldr r1, .L08004300 @ =ArmCodeStart
    subs r0, r0, r1
    str r0, [r7]
    ldr r0, .L08004300 @ =ArmCodeStart
    ldr r1, .L08004304 @ =0x03002F40
    ldr r2, [r7]
    asrs r3, r2, #0x1f
    lsrs r4, r3, #0x1f
    adds r3, r2, r4
    asrs r2, r3, #1
    lsls r3, r2, #0xb
    lsrs r2, r3, #0xb
    bl CpuSet
    ldr r0, .L08004308 @ =0x03002F30
    ldr r1, .L0800430C @ =DrawGlyph
    ldr r2, .L08004300 @ =ArmCodeStart
    subs r1, r1, r2
    ldr r2, .L08004304 @ =0x03002F40
    adds r1, r2, r1
    str r1, [r0]
    ldr r0, .L08004310 @ =0x03003940
    ldr r1, .L08004314 @ =DecodeString
    ldr r2, .L08004300 @ =ArmCodeStart
    subs r1, r1, r2
    ldr r2, .L08004304 @ =0x03002F40
    adds r1, r2, r1
    str r1, [r0]
    ldr r0, .L08004318 @ =0x03002920
    ldr r1, .L0800431C @ =PutOamHi
    ldr r2, .L08004300 @ =ArmCodeStart
    subs r1, r1, r2
    ldr r2, .L08004304 @ =0x03002F40
    adds r1, r2, r1
    str r1, [r0]
    ldr r0, .L08004320 @ =0x03003944
    ldr r1, .L08004324 @ =PutOamLo
    ldr r2, .L08004300 @ =ArmCodeStart
    subs r1, r1, r2
    ldr r2, .L08004304 @ =0x03002F40
    adds r1, r2, r1
    str r1, [r0]
    ldr r0, .L08004328 @ =0x03004150
    ldr r1, .L0800432C @ =MapFloodCoreStep
    ldr r2, .L08004300 @ =ArmCodeStart
    subs r1, r1, r2
    ldr r2, .L08004304 @ =0x03002F40
    adds r1, r2, r1
    str r1, [r0]
    ldr r0, .L08004330 @ =0x03002918
    ldr r1, .L08004334 @ =MapFloodCore
    ldr r2, .L08004300 @ =ArmCodeStart
    subs r1, r1, r2
    ldr r2, .L08004304 @ =0x03002F40
    adds r1, r2, r1
    str r1, [r0]
    add sp, #4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080042FC: .4byte ArmCodeEnd
.L08004300: .4byte ArmCodeStart
.L08004304: .4byte 0x03002F40
.L08004308: .4byte 0x03002F30
.L0800430C: .4byte DrawGlyph
.L08004310: .4byte 0x03003940
.L08004314: .4byte DecodeString
.L08004318: .4byte 0x03002920
.L0800431C: .4byte PutOamHi
.L08004320: .4byte 0x03003944
.L08004324: .4byte PutOamLo
.L08004328: .4byte 0x03004150
.L0800432C: .4byte MapFloodCoreStep
.L08004330: .4byte 0x03002918
.L08004334: .4byte MapFloodCore
    func_end InitRamFuncs

	thumb_func_start DrawGlyphRam
DrawGlyphRam: @ 0x08004214
	push {r4, r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	ldr r0, _0800423C @ =0x03002F30
	ldr r1, [r7, #4]
	ldr r2, [r7, #8]
	ldr r3, [r7, #0xc]
	ldr r4, [r0]
	ldr r0, [r7]
	bl _call_via_r4
	add sp, #0x10
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800423C: .4byte 0x03002F30

    thumb_func_start DecodeStringRam
DecodeStringRam: @ 0x08004364
    push {r7, lr}
    sub sp, #8
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    ldr r0, .L08004384 @ =0x03003940
    ldr r1, [r7, #4]
    ldr r2, [r0]
    ldr r0, [r7]
    bl _call_via_r2
    add sp, #8
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08004384: .4byte 0x03003940
    func_end DecodeStringRam

    thumb_func_start PutOamHiRam
PutOamHiRam: @ 0x08004388
    push {r4, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L080043B0 @ =0x03002920
    ldr r1, [r7, #4]
    ldr r2, [r7, #8]
    ldr r3, [r7, #0xc]
    ldr r4, [r0]
    ldr r0, [r7]
    bl _call_via_r4
    add sp, #0x10
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080043B0: .4byte 0x03002920
    func_end PutOamHiRam

    thumb_func_start PutOamLoRam
PutOamLoRam: @ 0x080043B4
    push {r4, r7, lr}
    sub sp, #0x10
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    str r3, [r7, #0xc]
    ldr r0, .L080043DC @ =0x03003944
    ldr r1, [r7, #4]
    ldr r2, [r7, #8]
    ldr r3, [r7, #0xc]
    ldr r4, [r0]
    ldr r0, [r7]
    bl _call_via_r4
    add sp, #0x10
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080043DC: .4byte 0x03003944
    func_end PutOamLoRam

    thumb_func_start MapFloodCoreStepRam
MapFloodCoreStepRam: @ 0x080043E0
    push {r7, lr}
    sub sp, #0xc
    mov r7, sp
    str r0, [r7]
    str r1, [r7, #4]
    str r2, [r7, #8]
    ldr r0, .L08004404 @ =0x03004150
    ldr r1, [r7, #4]
    ldr r2, [r7, #8]
    ldr r3, [r0]
    ldr r0, [r7]
    bl _call_via_r3
    add sp, #0xc
    pop {r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08004404: .4byte 0x03004150
    func_end MapFloodCoreStepRam

    thumb_func_start MapFloodCoreRam
MapFloodCoreRam: @ 0x08004408
    push {r4, r7, lr}
    mov r7, sp
    ldr r0, .L0800441C @ =0x03002918
    ldr r4, [r0]
    bl _call_via_r4
    pop {r4, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800441C: .4byte 0x03002918
    func_end MapFloodCoreRam
