    .include "asm_prelude.inc"

    thumb_func_start InitTraps
InitTraps: @ 0x0802BA48
    push {r4, lr}
    ldr r3, .L0802BA68 @ =0x0203A718
    ldr r1, .L0802BA6C @ =0x0203A518
    movs r2, #0
    movs r4, #0xfc
    lsls r4, r4, #1
    adds r0, r1, r4
.L0802BA56:
    strb r2, [r0, #2]
    subs r0, #8
    cmp r0, r1
    bge .L0802BA56
    movs r0, #0
    strb r0, [r3, #2]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802BA68: .4byte 0x0203A718
.L0802BA6C: .4byte 0x0203A518
    func_end InitTraps

    thumb_func_start GetTrapAt
GetTrapAt: @ 0x0802BA70
    adds r3, r0, #0
    ldr r2, .L0802BA78 @ =0x0203A518
    b .L0802BA8E
    .align 2, 0
.L0802BA78: .4byte 0x0203A518
.L0802BA7C:
    ldrb r0, [r2]
    cmp r3, r0
    bne .L0802BA8C
    ldrb r0, [r2, #1]
    cmp r1, r0
    bne .L0802BA8C
    adds r0, r2, #0
    b .L0802BA96
.L0802BA8C:
    adds r2, #8
.L0802BA8E:
    ldrb r0, [r2, #2]
    cmp r0, #0
    bne .L0802BA7C
    movs r0, #0
.L0802BA96:
    bx lr
    func_end GetTrapAt

    thumb_func_start func_0802BA98
func_0802BA98: @ 0x0802BA98
    push {r4, lr}
    adds r4, r0, #0
    ldr r3, .L0802BAA0 @ =0x0203A518
    b .L0802BABC
    .align 2, 0
.L0802BAA0: .4byte 0x0203A518
.L0802BAA4:
    ldrb r0, [r3]
    cmp r0, r4
    bne .L0802BABA
    ldrb r0, [r3, #1]
    cmp r0, r1
    bne .L0802BABA
    ldrb r0, [r3, #2]
    cmp r0, r2
    bne .L0802BABA
    adds r0, r3, #0
    b .L0802BAC4
.L0802BABA:
    adds r3, #8
.L0802BABC:
    ldrb r0, [r3, #2]
    cmp r0, #0
    bne .L0802BAA4
    movs r0, #0
.L0802BAC4:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802BA98

    thumb_func_start func_0802BACC
func_0802BACC: @ 0x0802BACC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0802BAD8 @ =0x0203A518
    b .L0802BADE
    .align 2, 0
.L0802BAD8: .4byte 0x0203A518
.L0802BADC:
    adds r1, #8
.L0802BADE:
    ldrb r0, [r1, #2]
    cmp r0, #0
    bne .L0802BADC
    strb r4, [r1]
    strb r5, [r1, #1]
    strb r2, [r1, #2]
    strb r3, [r1, #3]
    adds r0, r1, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0802BACC

    thumb_func_start func_0802BAF4
func_0802BAF4: @ 0x0802BAF4
    push {r4, r5, r6, lr}
    ldr r4, [sp, #0x10]
    ldr r5, [sp, #0x14]
    ldr r6, [sp, #0x18]
    bl func_0802BACC
    strb r4, [r0, #4]
    strb r5, [r0, #5]
    strb r4, [r0, #6]
    strb r6, [r0, #7]
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0802BAF4

    thumb_func_start RemoveTrap
RemoveTrap: @ 0x0802BB10
    adds r2, r0, #0
    b .L0802BB1A
.L0802BB14:
    ldr r0, [r2, #8]
    ldr r1, [r2, #0xc]
    stm r2!, {r0, r1}
.L0802BB1A:
    ldrb r0, [r2, #2]
    cmp r0, #0
    bne .L0802BB14
    bx lr
    func_end RemoveTrap

    thumb_func_start func_0802BB24
func_0802BB24: @ 0x0802BB24
    push {lr}
    sub sp, #0xc
    str r2, [sp]
    str r3, [sp, #4]
    movs r2, #0xa
    str r2, [sp, #8]
    movs r2, #4
    movs r3, #0
    bl func_0802BAF4
    add sp, #0xc
    pop {r0}
    bx r0
    func_end func_0802BB24

    thumb_func_start func_0802BB40
func_0802BB40: @ 0x0802BB40
    push {r4, lr}
    sub sp, #0xc
    adds r4, r2, #0
    ldr r2, [sp, #0x14]
    str r3, [sp]
    str r2, [sp, #4]
    movs r2, #3
    str r2, [sp, #8]
    movs r2, #5
    adds r3, r4, #0
    bl func_0802BAF4
    add sp, #0xc
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802BB40

    thumb_func_start func_0802BB60
func_0802BB60: @ 0x0802BB60
    push {lr}
    sub sp, #0xc
    str r1, [sp]
    str r2, [sp, #4]
    movs r1, #0xa
    str r1, [sp, #8]
    movs r1, #0
    movs r2, #7
    movs r3, #0
    bl func_0802BAF4
    add sp, #0xc
    pop {r0}
    bx r0
    func_end func_0802BB60

    thumb_func_start func_0802BB7C
func_0802BB7C: @ 0x0802BB7C
    push {lr}
    sub sp, #0xc
    str r2, [sp]
    str r3, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    movs r2, #6
    movs r3, #0
    bl func_0802BAF4
    add sp, #0xc
    pop {r0}
    bx r0
    func_end func_0802BB7C

    thumb_func_start func_0802BB98
func_0802BB98: @ 0x0802BB98
    push {lr}
    movs r2, #8
    movs r3, #0
    bl func_0802BACC
    pop {r0}
    bx r0
    func_end func_0802BB98

    thumb_func_start func_0802BBA8
func_0802BBA8: @ 0x0802BBA8
    push {lr}
    adds r3, r2, #0
    movs r2, #9
    bl func_0802BACC
    pop {r0}
    bx r0
    func_end func_0802BBA8

    thumb_func_start func_0802BBB8
func_0802BBB8: @ 0x0802BBB8
    push {r4, r5, r6, lr}
    ldr r0, .L0802BBEC @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L0802BC38
.L0802BBC6:
    ldr r0, .L0802BBEC @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r6, r5, #1
    cmp r4, #0
    blt .L0802BC32
.L0802BBD4:
    ldr r0, .L0802BBF0 @ =gBmMapTerrain
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r1, r0, r1
    ldr r0, [r1]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x1b
    beq .L0802BBF4
    cmp r0, #0x33
    beq .L0802BC20
    b .L0802BC2C
    .align 2, 0
.L0802BBEC: .4byte gBmMapSize
.L0802BBF0: .4byte gBmMapTerrain
.L0802BBF4:
    subs r0, r1, #4
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x1b
    beq .L0802BC2C
    ldr r0, .L0802BC1C @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    adds r0, #0x2c
    ldrb r3, [r0]
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    bl func_0802BACC
    b .L0802BC2C
    .align 2, 0
.L0802BC1C: .4byte gPlaySt
.L0802BC20:
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    movs r3, #0x14
    bl func_0802BACC
.L0802BC2C:
    subs r4, #1
    cmp r4, #0
    bge .L0802BBD4
.L0802BC32:
    adds r5, r6, #0
    cmp r5, #0
    bge .L0802BBC6
.L0802BC38:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0802BBB8

    thumb_func_start ApplyEnabledMapChanges
ApplyEnabledMapChanges: @ 0x0802BC40
    push {r4, lr}
    ldr r4, .L0802BC48 @ =0x0203A518
    b .L0802BC72
    .align 2, 0
.L0802BC48: .4byte 0x0203A518
.L0802BC4C:
    ldrb r0, [r4, #2]
    cmp r0, #3
    beq .L0802BC58
    cmp r0, #6
    beq .L0802BC60
    b .L0802BC70
.L0802BC58:
    ldrb r0, [r4, #3]
    bl ApplyMapChange
    b .L0802BC70
.L0802BC60:
    ldrb r0, [r4, #3]
    cmp r0, #0
    beq .L0802BC6A
    ldrb r0, [r4, #1]
    b .L0802BC6C
.L0802BC6A:
    ldrb r0, [r4]
.L0802BC6C:
    bl ApplyMapChange
.L0802BC70:
    adds r4, #8
.L0802BC72:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L0802BC4C
    pop {r4}
    pop {r0}
    bx r0
    func_end ApplyEnabledMapChanges

    thumb_func_start func_0802BC80
func_0802BC80: @ 0x0802BC80
    push {r4, r5, lr}
    ldr r2, .L0802BCB4 @ =0x0203A518
    ldrb r0, [r2, #2]
    cmp r0, #0
    beq .L0802BCAC
    ldr r4, .L0802BCB8 @ =gBmMapTerrain
    movs r3, #0
.L0802BC8E:
    ldrb r0, [r2, #2]
    cmp r0, #0xc
    bne .L0802BCA4
    ldr r0, [r4]
    ldrb r5, [r2, #1]
    lsls r1, r5, #2
    adds r1, r1, r0
    ldr r0, [r1]
    ldrb r1, [r2]
    adds r0, r1, r0
    strb r3, [r0]
.L0802BCA4:
    adds r2, #8
    ldrb r0, [r2, #2]
    cmp r0, #0
    bne .L0802BC8E
.L0802BCAC:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802BCB4: .4byte 0x0203A518
.L0802BCB8: .4byte gBmMapTerrain
    func_end func_0802BC80

    thumb_func_start func_0802BCBC
func_0802BCBC: @ 0x0802BCBC
    push {lr}
    bl GetTrapAt
    cmp r0, #0
    beq .L0802BCCA
    ldrb r0, [r0, #3]
    b .L0802BCCC
.L0802BCCA:
    movs r0, #0
.L0802BCCC:
    pop {r1}
    bx r1
    func_end func_0802BCBC

    thumb_func_start func_0802BCD0
func_0802BCD0: @ 0x0802BCD0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0802BCE8 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterMapChanges
    adds r1, r0, #0
    cmp r1, #0
    bne .L0802BCFA
    b .L0802BD02
    .align 2, 0
.L0802BCE8: .4byte gPlaySt
.L0802BCEC:
    adds r0, r1, #0
    b .L0802BD04
.L0802BCF0:
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r4, r0
    beq .L0802BCEC
    adds r1, #0xc
.L0802BCFA:
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0802BCF0
.L0802BD02:
    movs r0, #0
.L0802BD04:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802BCD0

    thumb_func_start GetMapChangeIdAt
GetMapChangeIdAt: @ 0x0802BD0C
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r6, #1
    rsbs r6, r6, #0
    ldr r0, .L0802BD2C @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterMapChanges
    adds r1, r0, #0
    cmp r1, #0
    beq .L0802BD5E
    b .L0802BD56
    .align 2, 0
.L0802BD2C: .4byte gPlaySt
.L0802BD30:
    ldrb r0, [r1, #1]
    cmp r5, r0
    blt .L0802BD54
    ldrb r2, [r1, #2]
    cmp r4, r2
    blt .L0802BD54
    ldrb r3, [r1, #3]
    adds r0, r3, r0
    subs r0, #1
    cmp r0, r5
    blt .L0802BD54
    ldrb r3, [r1, #4]
    adds r0, r3, r2
    subs r0, #1
    cmp r0, r4
    blt .L0802BD54
    movs r6, #0
    ldrsb r6, [r1, r6]
.L0802BD54:
    adds r1, #0xc
.L0802BD56:
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0802BD30
.L0802BD5E:
    adds r0, r6, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end GetMapChangeIdAt

    thumb_func_start ApplyMapChange
ApplyMapChange: @ 0x0802BD68
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    movs r6, #0
    bl func_0802BCD0
    adds r3, r0, #0
    ldr r4, [r3, #8]
    ldrb r0, [r3, #4]
    cmp r6, r0
    bge .L0802BDC2
    ldr r7, .L0802BDD0 @ =0x08B932B4
    mov r8, r7
.L0802BD84:
    movs r5, #0
    adds r0, r6, #1
    mov sb, r0
    ldrb r7, [r3, #3]
    cmp r5, r7
    bge .L0802BDBA
    mov ip, r8
.L0802BD92:
    ldrh r2, [r4]
    cmp r2, #0
    beq .L0802BDB0
    ldrb r0, [r3, #2]
    adds r1, r0, r6
    mov r7, ip
    ldr r0, [r7]
    lsls r1, r1, #2
    adds r1, r1, r0
    ldrb r7, [r3, #1]
    adds r0, r7, r5
    ldr r1, [r1]
    lsls r0, r0, #1
    adds r0, r0, r1
    strh r2, [r0]
.L0802BDB0:
    adds r4, #2
    adds r5, #1
    ldrb r0, [r3, #3]
    cmp r5, r0
    blt .L0802BD92
.L0802BDBA:
    mov r6, sb
    ldrb r7, [r3, #4]
    cmp r6, r7
    blt .L0802BD84
.L0802BDC2:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802BDD0: .4byte 0x08B932B4
    func_end ApplyMapChange

    thumb_func_start AddMapChangeTrap
AddMapChangeTrap: @ 0x0802BDD4
    push {lr}
    adds r3, r0, #0
    movs r0, #0
    movs r1, #0
    movs r2, #3
    bl func_0802BACC
    pop {r0}
    bx r0
    func_end AddMapChangeTrap

    thumb_func_start RemoveMapChangeTrap
RemoveMapChangeTrap: @ 0x0802BDE8
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802BDF0 @ =0x0203A518
    b .L0802BE06
    .align 2, 0
.L0802BDF0: .4byte 0x0203A518
.L0802BDF4:
    cmp r0, #3
    bne .L0802BE04
    ldrb r0, [r4, #3]
    cmp r0, r5
    bne .L0802BE04
    adds r0, r4, #0
    bl RemoveTrap
.L0802BE04:
    adds r4, #8
.L0802BE06:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L0802BDF4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end RemoveMapChangeTrap

    thumb_func_start UnitHideIfUnderRoof
UnitHideIfUnderRoof: @ 0x0802BE14
    adds r2, r0, #0
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, .L0802BE3C @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0x22
    bne .L0802BE38
    ldr r0, [r2, #0xc]
    movs r1, #0x81
    orrs r0, r1
    str r0, [r2, #0xc]
.L0802BE38:
    bx lr
    .align 2, 0
.L0802BE3C: .4byte gBmMapTerrain
    func_end UnitHideIfUnderRoof

    thumb_func_start UpdateRoofedUnits
UpdateRoofedUnits: @ 0x0802BE40
    push {r4, r5, lr}
    movs r5, #1
.L0802BE44:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L0802BE88
    ldr r0, [r4]
    cmp r0, #0
    beq .L0802BE88
    ldr r3, [r4, #0xc]
    movs r0, #0x80
    ands r0, r3
    cmp r0, #0
    beq .L0802BE88
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    ldr r0, .L0802BE9C @ =gBmMapTerrain
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0x22
    beq .L0802BE88
    movs r0, #0x82
    rsbs r0, r0, #0
    ands r3, r0
    movs r0, #0x80
    lsls r0, r0, #1
    orrs r3, r0
    str r3, [r4, #0xc]
.L0802BE88:
    adds r5, #1
    cmp r5, #0xbf
    ble .L0802BE44
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802BE9C: .4byte gBmMapTerrain
    func_end UpdateRoofedUnits

    thumb_func_start func_0802BEA0
func_0802BEA0: @ 0x0802BEA0
    push {r4, lr}
    adds r3, r2, #0
    ldr r2, .L0802BEBC @ =gBmMapUnit
    ldr r4, [r2]
    lsls r2, r1, #2
    adds r2, r2, r4
    ldr r2, [r2]
    adds r2, r2, r0
    ldrb r2, [r2]
    bl EnlistTarget
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802BEBC: .4byte gBmMapUnit
    func_end func_0802BEA0

    thumb_func_start func_0802BEC0
func_0802BEC0: @ 0x0802BEC0
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r2, #0
    movs r4, #0
    b .L0802BEEA
.L0802BECA:
    ldr r0, .L0802BEFC @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r1, r0, r5
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0802BEE8
    adds r2, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    adds r3, r6, #0
    bl EnlistTarget
.L0802BEE8:
    adds r4, #1
.L0802BEEA:
    ldr r0, .L0802BF00 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    cmp r4, r0
    blt .L0802BECA
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802BEFC: .4byte gBmMapUnit
.L0802BF00: .4byte gBmMapSize
    func_end func_0802BEC0

    thumb_func_start func_0802BF04
func_0802BF04: @ 0x0802BF04
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r5, r0, #0
    adds r4, r1, #0
    mov r8, r2
    movs r0, #0
    mov sb, r0
    movs r7, #0
    cmp r3, #1
    beq .L0802BF46
    cmp r3, #1
    bgt .L0802BF26
    cmp r3, #0
    beq .L0802BF40
    b .L0802BF4A
.L0802BF26:
    cmp r3, #2
    beq .L0802BF38
    cmp r3, #3
    bne .L0802BF4A
    movs r0, #0
    mov sb, r0
    movs r7, #1
    rsbs r7, r7, #0
    b .L0802BF4A
.L0802BF38:
    movs r0, #0
    mov sb, r0
    movs r7, #1
    b .L0802BF4A
.L0802BF40:
    movs r0, #1
    rsbs r0, r0, #0
    b .L0802BF48
.L0802BF46:
    movs r0, #1
.L0802BF48:
    mov sb, r0
.L0802BF4A:
    movs r6, #2
.L0802BF4C:
    add r5, sb
    adds r4, r4, r7
    ldr r0, .L0802BF80 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r1, r0, r5
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0802BF6E
    adds r2, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    mov r3, r8
    bl EnlistTarget
.L0802BF6E:
    subs r6, #1
    cmp r6, #0
    bge .L0802BF4C
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802BF80: .4byte gBmMapUnit
    func_end func_0802BF04

    thumb_func_start func_0802BF84
func_0802BF84: @ 0x0802BF84
    push {r4, r5, r6, r7, lr}
    adds r3, r0, #0
    adds r6, r1, #0
    movs r7, #0
    movs r4, #0
    movs r5, #1
    cmp r2, #1
    beq .L0802BFBA
    cmp r2, #1
    bgt .L0802BF9E
    cmp r2, #0
    beq .L0802BFB4
    b .L0802BFBC
.L0802BF9E:
    cmp r2, #2
    beq .L0802BFAE
    cmp r2, #3
    bne .L0802BFBC
    movs r7, #0
    movs r4, #1
    rsbs r4, r4, #0
    b .L0802BFBC
.L0802BFAE:
    movs r7, #0
    movs r4, #1
    b .L0802BFBC
.L0802BFB4:
    movs r7, #1
    rsbs r7, r7, #0
    b .L0802BFBC
.L0802BFBA:
    movs r7, #1
.L0802BFBC:
    ldr r0, .L0802BFE8 @ =gBmMapUnit
    ldr r1, [r0]
    movs r2, #2
    lsls r0, r6, #2
    adds r1, r0, r1
    lsls r4, r4, #2
.L0802BFC8:
    adds r3, r3, r7
    adds r1, r1, r4
    ldr r0, [r1]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0802BFD8
    movs r5, #0
.L0802BFD8:
    subs r2, #1
    cmp r2, #0
    bge .L0802BFC8
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0802BFE8: .4byte gBmMapUnit
    func_end func_0802BF84

    thumb_func_start func_0802BFEC
func_0802BFEC: @ 0x0802BFEC
    push {r4, lr}
    movs r0, #0
    movs r1, #0
    bl BeginTargetList
    ldr r4, .L0802BFFC @ =0x0203A518
    b .L0802C04A
    .align 2, 0
.L0802BFFC: .4byte 0x0203A518
.L0802C000:
    movs r0, #6
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802C048
    ldrb r0, [r4, #2]
    cmp r0, #5
    beq .L0802C03A
    cmp r0, #5
    bgt .L0802C018
    cmp r0, #4
    beq .L0802C01E
    b .L0802C048
.L0802C018:
    cmp r0, #7
    beq .L0802C02C
    b .L0802C048
.L0802C01E:
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #7
    ldrsb r2, [r4, r2]
    bl func_0802BEA0
    b .L0802C048
.L0802C02C:
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #7
    ldrsb r2, [r4, r2]
    bl func_0802BEC0
    b .L0802C048
.L0802C03A:
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #7
    ldrsb r2, [r4, r2]
    ldrb r3, [r4, #3]
    bl func_0802BF04
.L0802C048:
    adds r4, #8
.L0802C04A:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L0802C000
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802BFEC

    thumb_func_start func_0802C058
func_0802C058: @ 0x0802C058
    push {r4, r5, lr}
    movs r5, #0
    movs r0, #0
    movs r1, #0
    bl BeginTargetList
    ldr r4, .L0802C068 @ =0x0203A518
    b .L0802C148
    .align 2, 0
.L0802C068: .4byte 0x0203A518
.L0802C06C:
    movs r0, #6
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802C146
    ldrb r3, [r4, #2]
    cmp r3, #5
    beq .L0802C0C4
    cmp r3, #5
    bgt .L0802C084
    cmp r3, #4
    beq .L0802C08E
    b .L0802C146
.L0802C084:
    cmp r3, #6
    beq .L0802C12E
    cmp r3, #7
    beq .L0802C114
    b .L0802C146
.L0802C08E:
    ldrb r2, [r4, #1]
    ldr r0, .L0802C0C0 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldrb r1, [r4]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0802C146
    adds r0, r1, #0
    adds r1, r2, #0
    movs r2, #0
    movs r3, #4
    bl EnlistTarget
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #7
    ldrsb r2, [r4, r2]
    bl func_0802BEA0
    b .L0802C146
    .align 2, 0
.L0802C0C0: .4byte gBmMapUnit
.L0802C0C4:
    ldrb r2, [r4, #3]
    cmp r2, #1
    beq .L0802C0E8
    cmp r2, #1
    bgt .L0802C0D4
    cmp r2, #0
    beq .L0802C0E4
    b .L0802C0EA
.L0802C0D4:
    cmp r2, #2
    beq .L0802C0E0
    cmp r2, #3
    bne .L0802C0EA
    movs r5, #0x64
    b .L0802C0EA
.L0802C0E0:
    movs r5, #0x65
    b .L0802C0EA
.L0802C0E4:
    movs r5, #0x66
    b .L0802C0EA
.L0802C0E8:
    movs r5, #0x67
.L0802C0EA:
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    bl func_0802BF84
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802C146
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #0
    adds r3, r5, #0
    bl EnlistTarget
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #7
    ldrsb r2, [r4, r2]
    ldrb r3, [r4, #3]
    bl func_0802BF04
    b .L0802C146
.L0802C114:
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #0
    movs r3, #7
    bl EnlistTarget
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    movs r2, #7
    ldrsb r2, [r4, r2]
    bl func_0802BEC0
    b .L0802C146
.L0802C12E:
    ldrb r0, [r4, #3]
    cmp r0, #0
    beq .L0802C138
    ldrb r0, [r4]
    b .L0802C13A
.L0802C138:
    ldrb r0, [r4, #1]
.L0802C13A:
    ldr r1, .L0802C154 @ =0x0203A518
    subs r1, r4, r1
    asrs r1, r1, #3
    movs r2, #0
    bl EnlistTarget
.L0802C146:
    adds r4, #8
.L0802C148:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L0802C06C
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C154: .4byte 0x0203A518
    func_end func_0802C058

    thumb_func_start func_0802C158
func_0802C158: @ 0x0802C158
    ldr r1, .L0802C15C @ =0x0203A518
    b .L0802C172
    .align 2, 0
.L0802C15C: .4byte 0x0203A518
.L0802C160:
    ldrb r0, [r1, #2]
    cmp r0, #7
    bgt .L0802C170
    cmp r0, #4
    blt .L0802C170
    ldrb r0, [r1, #6]
    subs r0, #1
    strb r0, [r1, #6]
.L0802C170:
    adds r1, #8
.L0802C172:
    ldrb r0, [r1, #2]
    cmp r0, #0
    bne .L0802C160
    bx lr
    func_end func_0802C158

    thumb_func_start func_0802C17C
func_0802C17C: @ 0x0802C17C
    ldr r1, .L0802C180 @ =0x0203A518
    b .L0802C19C
    .align 2, 0
.L0802C180: .4byte 0x0203A518
.L0802C184:
    ldrb r0, [r1, #2]
    cmp r0, #7
    bgt .L0802C19A
    cmp r0, #4
    blt .L0802C19A
    movs r0, #6
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L0802C19A
    ldrb r0, [r1, #5]
    strb r0, [r1, #6]
.L0802C19A:
    adds r1, #8
.L0802C19C:
    ldrb r0, [r1, #2]
    cmp r0, #0
    bne .L0802C184
    bx lr
    func_end func_0802C17C

    thumb_func_start func_0802C1A4
func_0802C1A4: @ 0x0802C1A4
    push {r4, r5, lr}
    ldr r4, .L0802C1BC @ =gPlaySt
    ldrb r5, [r4, #0xf]
    movs r0, #0x80
    strb r0, [r4, #0xf]
    bl RefreshEntityMaps
    strb r5, [r4, #0xf]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C1BC: .4byte gPlaySt
    func_end func_0802C1A4

    thumb_func_start func_0802C1C0
func_0802C1C0: @ 0x0802C1C0
    push {lr}
    movs r0, #3
    bl func_08024A88
    pop {r0}
    bx r0
    func_end func_0802C1C0

    thumb_func_start func_0802C1CC
func_0802C1CC: @ 0x0802C1CC
    push {lr}
    movs r0, #0x65
    bl func_08079858
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802C1E0
    ldr r0, .L0802C1E4 @ =0x08CA749C
    bl StartEvent
.L0802C1E0:
    pop {r0}
    bx r0
    .align 2, 0
.L0802C1E4: .4byte 0x08CA749C
    func_end func_0802C1CC

    thumb_func_start func_0802C1E8
func_0802C1E8: @ 0x0802C1E8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    ldr r6, .L0802C218 @ =gBmMapTerrain
    ldr r0, [r6]
    lsls r4, r1, #2
    adds r0, r4, r0
    ldr r0, [r0]
    adds r0, r0, r5
    ldrb r3, [r0]
    adds r0, r5, #0
    movs r2, #0xc
    bl func_0802BACC
    movs r2, #0
    movs r1, #3
    strb r1, [r0, #6]
    ldr r0, [r6]
    adds r4, r4, r0
    ldr r0, [r4]
    adds r0, r0, r5
    strb r2, [r0]
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0802C218: .4byte gBmMapTerrain
    func_end func_0802C1E8

    thumb_func_start func_0802C21C
func_0802C21C: @ 0x0802C21C
    push {r4, lr}
    adds r4, r0, #0
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    bl func_080193BC
    ldr r1, .L0802C248 @ =gBmMapTerrain
    ldr r2, [r1]
    ldrb r3, [r4, #1]
    lsls r1, r3, #2
    adds r1, r1, r2
    ldr r1, [r1]
    ldrb r2, [r4]
    adds r1, r2, r1
    strb r0, [r1]
    adds r0, r4, #0
    bl RemoveTrap
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0802C248: .4byte gBmMapTerrain
    func_end func_0802C21C

    thumb_func_start DecayTraps
DecayTraps: @ 0x0802C24C
    push {r4, lr}
    ldr r4, .L0802C254 @ =0x0203A518
    b .L0802C28E
    .align 2, 0
.L0802C254: .4byte 0x0203A518
.L0802C258:
    ldrb r0, [r4, #2]
    cmp r0, #0xa
    beq .L0802C264
    cmp r0, #0xc
    beq .L0802C278
    b .L0802C28C
.L0802C264:
    ldrb r0, [r4, #3]
    subs r0, #1
    strb r0, [r4, #3]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802C28C
    adds r0, r4, #0
    bl RemoveTrap
    b .L0802C28A
.L0802C278:
    ldrb r0, [r4, #6]
    subs r0, #1
    strb r0, [r4, #6]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802C28C
    adds r0, r4, #0
    bl func_0802C21C
.L0802C28A:
    subs r4, #8
.L0802C28C:
    adds r4, #8
.L0802C28E:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L0802C258
    pop {r4}
    pop {r0}
    bx r0
    func_end DecayTraps

    thumb_func_start func_0802C29C
func_0802C29C: @ 0x0802C29C
    push {r4, lr}
    ldr r4, .L0802C2A4 @ =0x0203A518
    b .L0802C2CA
    .align 2, 0
.L0802C2A4: .4byte 0x0203A518
.L0802C2A8:
    ldrb r0, [r4, #2]
    cmp r0, #0xc
    bne .L0802C2C8
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    bl func_080193BC
    ldr r1, .L0802C2D8 @ =gBmMapTerrain
    ldr r2, [r1]
    ldrb r3, [r4, #1]
    lsls r1, r3, #2
    adds r1, r1, r2
    ldr r1, [r1]
    ldrb r2, [r4]
    adds r1, r2, r1
    strb r0, [r1]
.L0802C2C8:
    adds r4, #8
.L0802C2CA:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L0802C2A8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C2D8: .4byte gBmMapTerrain
    func_end func_0802C29C

    thumb_func_start func_0802C2DC
func_0802C2DC: @ 0x0802C2DC
    push {r4, r5, lr}
    ldr r2, .L0802C310 @ =0x0203A518
    ldrb r0, [r2, #2]
    cmp r0, #0
    beq .L0802C308
    ldr r4, .L0802C314 @ =gBmMapTerrain
    movs r3, #0
.L0802C2EA:
    ldrb r0, [r2, #2]
    cmp r0, #0xc
    bne .L0802C300
    ldr r0, [r4]
    ldrb r5, [r2, #1]
    lsls r1, r5, #2
    adds r1, r1, r0
    ldr r0, [r1]
    ldrb r1, [r2]
    adds r0, r1, r0
    strb r3, [r0]
.L0802C300:
    adds r2, #8
    ldrb r0, [r2, #2]
    cmp r0, #0
    bne .L0802C2EA
.L0802C308:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802C310: .4byte 0x0203A518
.L0802C314: .4byte gBmMapTerrain
    func_end func_0802C2DC

    thumb_func_start GetTrap
GetTrap: @ 0x0802C318
    lsls r0, r0, #3
    ldr r1, .L0802C320 @ =0x0203A518
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L0802C320: .4byte 0x0203A518
    func_end GetTrap
