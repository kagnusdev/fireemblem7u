    .include "asm_prelude.inc"

    thumb_func_start BeginTargetList
BeginTargetList: @ 0x0804ACE4
    ldr r2, .L0804ACF4 @ =0x0203DCF4
    movs r3, #0
    strh r0, [r2]
    strh r1, [r2, #2]
    ldr r0, .L0804ACF8 @ =0x0203DFF8
    str r3, [r0]
    bx lr
    .align 2, 0
.L0804ACF4: .4byte 0x0203DCF4
.L0804ACF8: .4byte 0x0203DFF8
    func_end BeginTargetList

    thumb_func_start EnlistTarget
EnlistTarget: @ 0x0804ACFC
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    ldr r4, .L0804AD48 @ =0x0203DCF8
    mov r8, r4
    ldr r6, .L0804AD4C @ =0x0203DFF8
    ldr r5, [r6]
    lsls r4, r5, #1
    adds r4, r4, r5
    lsls r4, r4, #2
    add r4, r8
    strb r0, [r4]
    ldr r4, [r6]
    lsls r0, r4, #1
    adds r0, r0, r4
    lsls r0, r0, #2
    add r0, r8
    strb r1, [r0, #1]
    ldr r1, [r6]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    strb r2, [r0, #2]
    ldr r1, [r6]
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    strb r3, [r0, #3]
    ldr r0, [r6]
    adds r0, #1
    str r0, [r6]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804AD48: .4byte 0x0203DCF8
.L0804AD4C: .4byte 0x0203DFF8
    func_end EnlistTarget

    thumb_func_start func_0804AD50
func_0804AD50: @ 0x0804AD50
    push {r4, r5, r6, lr}
    movs r2, #0
    ldr r0, .L0804AD90 @ =0x0203DFF8
    ldr r1, [r0]
    adds r6, r0, #0
    ldr r4, .L0804AD94 @ =0x0203DCF8
    cmp r2, r1
    bge .L0804AD7A
    adds r5, r6, #0
    adds r3, r4, #0
    adds r3, #0xc
    adds r1, r4, #0
    subs r1, #0xc
.L0804AD6A:
    str r1, [r1, #0x14]
    str r3, [r1, #0x10]
    adds r3, #0xc
    adds r1, #0xc
    adds r2, #1
    ldr r0, [r5]
    cmp r2, r0
    blt .L0804AD6A
.L0804AD7A:
    ldr r1, [r6]
    subs r1, #1
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r4
    str r0, [r4, #8]
    str r4, [r0, #4]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0804AD90: .4byte 0x0203DFF8
.L0804AD94: .4byte 0x0203DCF8
    func_end func_0804AD50

    thumb_func_start func_0804AD98
func_0804AD98: @ 0x0804AD98
    ldr r3, [r0, #0x30]
    movs r0, #0
    ldrsb r0, [r3, r0]
    lsls r0, r0, #4
    str r0, [r1]
    movs r0, #1
    ldrsb r0, [r3, r0]
    lsls r0, r0, #4
    str r0, [r2]
    bx lr
    func_end func_0804AD98

    thumb_func_start func_0804ADAC
func_0804ADAC: @ 0x0804ADAC
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x34
    movs r0, #0x40
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0804ADD6
    add r2, sp, #4
    adds r0, r4, #0
    mov r1, sp
    bl func_0804AD98
    ldr r0, [sp]
    ldr r1, [sp, #4]
    movs r2, #4
    bl PutMapCursor
    b .L0804AE72
.L0804ADD6:
    adds r0, r4, #0
    bl func_0804AF34
    adds r0, r4, #0
    bl func_0804AFB0
    adds r5, r0, #0
    movs r0, #2
    ands r0, r5
    cmp r0, #0
    beq .L0804ADF2
    adds r0, r4, #0
    bl func_0804AF00
.L0804ADF2:
    movs r0, #4
    ands r0, r5
    cmp r0, #0
    beq .L0804AE0C
    ldr r0, .L0804AE7C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804AE0C
    ldr r0, .L0804AE80 @ =0x0000038A
    bl m4aSongNumStart
.L0804AE0C:
    movs r0, #8
    ands r0, r5
    cmp r0, #0
    beq .L0804AE26
    ldr r0, .L0804AE7C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804AE26
    ldr r0, .L0804AE84 @ =0x0000038B
    bl m4aSongNumStart
.L0804AE26:
    movs r0, #0x10
    ands r0, r5
    cmp r0, #0
    beq .L0804AE32
    bl ClearUi
.L0804AE32:
    movs r0, #0x20
    ands r0, r5
    cmp r0, #0
    beq .L0804AE40
    movs r0, #0
    bl EndFaceById
.L0804AE40:
    movs r0, #1
    ands r0, r5
    cmp r0, #0
    bne .L0804AE72
    add r2, sp, #4
    adds r0, r4, #0
    mov r1, sp
    bl func_0804AD98
    ldr r1, [sp]
    asrs r1, r1, #4
    ldr r2, [sp, #4]
    asrs r2, r2, #4
    adds r0, r4, #0
    bl EnsureCameraOntoPosition
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #1
    beq .L0804AE72
    ldr r0, [sp]
    ldr r1, [sp, #4]
    movs r2, #2
    bl PutMapCursor
.L0804AE72:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0804AE7C: .4byte gPlaySt
.L0804AE80: .4byte 0x0000038A
.L0804AE84: .4byte 0x0000038B
    func_end func_0804ADAC

    thumb_func_start StartMapSelect
StartMapSelect: @ 0x0804AE88
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    bl LockGame
    ldr r0, .L0804AEE8 @ =0x08B9A92C
    movs r1, #3
    bl Proc_Start
    adds r5, r0, #0
    adds r1, r5, #0
    adds r1, #0x34
    movs r6, #0
    movs r0, #1
    strb r0, [r1]
    str r4, [r5, #0x2c]
    bl func_0804B15C
    str r0, [r5, #0x30]
    str r6, [r5, #0x38]
    ldr r0, [r5, #0x2c]
    ldr r1, [r0]
    cmp r1, #0
    beq .L0804AEBC
    adds r0, r5, #0
    bl _call_via_r1
.L0804AEBC:
    ldr r0, [r5, #0x2c]
    ldr r1, [r0, #8]
    cmp r1, #0
    beq .L0804AECA
    adds r0, r5, #0
    bl _call_via_r1
.L0804AECA:
    ldr r0, [r5, #0x2c]
    ldr r2, [r0, #0xc]
    cmp r2, #0
    beq .L0804AEDA
    ldr r1, [r5, #0x30]
    adds r0, r5, #0
    bl _call_via_r2
.L0804AEDA:
    ldr r0, .L0804AEEC @ =gpKeySt
    ldr r0, [r0]
    strh r6, [r0, #8]
    adds r0, r5, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0804AEE8: .4byte 0x08B9A92C
.L0804AEEC: .4byte gpKeySt
    func_end StartMapSelect

    thumb_func_start func_0804AEF0
func_0804AEF0: @ 0x0804AEF0
    push {r4, lr}
    adds r4, r1, #0
    bl StartMapSelect
    str r4, [r0, #0x38]
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0804AEF0

    thumb_func_start func_0804AF00
func_0804AF00: @ 0x0804AF00
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    ldr r1, [r0, #4]
    cmp r1, #0
    beq .L0804AF12
    adds r0, r4, #0
    bl _call_via_r1
.L0804AF12:
    adds r1, r4, #0
    adds r1, #0x34
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq .L0804AF24
    bl UnlockGame
.L0804AF24:
    adds r0, r4, #0
    bl Proc_End
    ldr r0, [r4, #0x14]
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0804AF00

    thumb_func_start func_0804AF34
func_0804AF34: @ 0x0804AF34
    push {r4, lr}
    adds r4, r0, #0
    ldr r3, [r4, #0x30]
    ldr r2, .L0804AFA4 @ =gpKeySt
    ldr r1, [r2]
    movs r0, #0x60
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0804AF50
    ldr r0, [r3, #4]
    cmp r0, #0
    beq .L0804AF50
    str r0, [r4, #0x30]
.L0804AF50:
    ldr r1, [r2]
    movs r0, #0x90
    ldrh r1, [r1, #6]
    ands r0, r1
    cmp r0, #0
    beq .L0804AF66
    ldr r0, [r4, #0x30]
    ldr r0, [r0, #8]
    cmp r0, #0
    beq .L0804AF66
    str r0, [r4, #0x30]
.L0804AF66:
    ldr r0, [r4, #0x30]
    cmp r0, r3
    beq .L0804AF9E
    ldr r0, [r4, #0x2c]
    ldr r2, [r0, #0x10]
    cmp r2, #0
    beq .L0804AF7C
    adds r0, r4, #0
    adds r1, r3, #0
    bl _call_via_r2
.L0804AF7C:
    ldr r0, [r4, #0x2c]
    ldr r2, [r0, #0xc]
    cmp r2, #0
    beq .L0804AF8C
    ldr r1, [r4, #0x30]
    adds r0, r4, #0
    bl _call_via_r2
.L0804AF8C:
    ldr r0, .L0804AFA8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0804AF9E
    ldr r0, .L0804AFAC @ =0x00000387
    bl m4aSongNumStart
.L0804AF9E:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0804AFA4: .4byte gpKeySt
.L0804AFA8: .4byte gPlaySt
.L0804AFAC: .4byte 0x00000387
    func_end func_0804AF34

    thumb_func_start func_0804AFB0
func_0804AFB0: @ 0x0804AFB0
    push {r4, lr}
    adds r2, r0, #0
    movs r4, #0
    ldr r0, .L0804AFD0 @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0804AFD4
    ldr r3, [r2, #0x38]
    cmp r3, #0
    bne .L0804AFF4
    ldr r0, [r2, #0x2c]
    ldr r3, [r0, #0x14]
    b .L0804AFF0
    .align 2, 0
.L0804AFD0: .4byte gpKeySt
.L0804AFD4:
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L0804AFE2
    ldr r0, [r2, #0x2c]
    ldr r3, [r0, #0x18]
    b .L0804AFF0
.L0804AFE2:
    movs r0, #0x80
    lsls r0, r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L0804B000
    ldr r0, [r2, #0x2c]
    ldr r3, [r0, #0x1c]
.L0804AFF0:
    cmp r3, #0
    beq .L0804B000
.L0804AFF4:
    ldr r1, [r2, #0x30]
    adds r0, r2, #0
    bl _call_via_r3
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
.L0804B000:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0804AFB0

    thumb_func_start func_0804B008
func_0804B008: @ 0x0804B008
    push {lr}
    ldr r0, .L0804B024 @ =0x08B9A92C
    bl Proc_Find
    cmp r0, #0
    beq .L0804B01E
    adds r0, #0x34
    movs r1, #0x40
    ldrb r2, [r0]
    orrs r1, r2
    strb r1, [r0]
.L0804B01E:
    pop {r0}
    bx r0
    .align 2, 0
.L0804B024: .4byte 0x08B9A92C
    func_end func_0804B008

    thumb_func_start func_0804B028
func_0804B028: @ 0x0804B028
    push {lr}
    ldr r0, .L0804B044 @ =0x08B9A92C
    bl Proc_Find
    cmp r0, #0
    beq .L0804B040
    adds r1, r0, #0
    adds r1, #0x34
    movs r0, #0xbf
    ldrb r2, [r1]
    ands r0, r2
    strb r0, [r1]
.L0804B040:
    pop {r0}
    bx r0
    .align 2, 0
.L0804B044: .4byte 0x08B9A92C
    func_end func_0804B028

    thumb_func_start func_0804B048
func_0804B048: @ 0x0804B048
    push {r4, r5, r6, r7, lr}
    movs r7, #0
    ldr r5, .L0804B080 @ =0x0203DCF8
    ldr r0, .L0804B084 @ =0x0203DFF8
    ldr r0, [r0]
    cmp r7, r0
    bge .L0804B09E
    ldr r1, .L0804B088 @ =0x0203DCF4
    mov ip, r1
    movs r2, #0
    ldrsh r6, [r1, r2]
    adds r4, r0, #0
.L0804B060:
    movs r0, #0
    ldrsb r0, [r5, r0]
    subs r2, r6, r0
    cmp r2, #0
    bge .L0804B06C
    subs r2, r0, r6
.L0804B06C:
    mov r0, ip
    movs r1, #2
    ldrsh r3, [r0, r1]
    movs r0, #1
    ldrsb r0, [r5, r0]
    subs r1, r3, r0
    cmp r1, #0
    blt .L0804B08C
    adds r0, r2, r1
    b .L0804B090
    .align 2, 0
.L0804B080: .4byte 0x0203DCF8
.L0804B084: .4byte 0x0203DFF8
.L0804B088: .4byte 0x0203DCF4
.L0804B08C:
    subs r0, r0, r3
    adds r0, r2, r0
.L0804B090:
    cmp r7, r0
    bge .L0804B096
    adds r7, r0, #0
.L0804B096:
    subs r4, #1
    adds r5, #0xc
    cmp r4, #0
    bne .L0804B060
.L0804B09E:
    adds r0, r7, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0804B048

    thumb_func_start func_0804B0A8
func_0804B0A8: @ 0x0804B0A8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    movs r7, #0
    movs r5, #0
    movs r4, #0
    ldr r0, .L0804B13C @ =0x0203DFF8
    mov sb, r0
    ldr r1, .L0804B140 @ =0x0203DCF4
    mov r8, r1
    ldr r3, .L0804B144 @ =0x08B9A964
    mov sl, r3
.L0804B0C6:
    mov r6, r8
    movs r0, #0
    ldrsh r2, [r6, r0]
    lsls r1, r4, #2
    add r1, sl
    movs r0, #0
    ldrsb r0, [r1, r0]
    adds r2, r2, r0
    str r2, [sp]
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r0, #1
    ldrsb r0, [r1, r0]
    adds r2, r2, r0
    movs r1, #0
    ldr r3, .L0804B148 @ =0x0203DCF8
    mov r6, sb
    ldr r0, [r6]
    adds r4, #1
    cmp r1, r0
    bge .L0804B120
    mov ip, sb
.L0804B0F2:
    movs r0, #0
    ldrsb r0, [r3, r0]
    ldr r6, [sp]
    cmp r6, r0
    bne .L0804B114
    movs r0, #1
    ldrsb r0, [r3, r0]
    cmp r2, r0
    bne .L0804B114
    str r5, [r3, #4]
    cmp r5, #0
    beq .L0804B10C
    str r3, [r5, #8]
.L0804B10C:
    cmp r7, #0
    bne .L0804B112
    adds r7, r3, #0
.L0804B112:
    adds r5, r3, #0
.L0804B114:
    adds r1, #1
    adds r3, #0xc
    mov r6, ip
    ldr r0, [r6]
    cmp r1, r0
    blt .L0804B0F2
.L0804B120:
    cmp r4, #0xc
    ble .L0804B0C6
    str r5, [r7, #4]
    str r7, [r5, #8]
    adds r0, r7, #0
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0804B13C: .4byte 0x0203DFF8
.L0804B140: .4byte 0x0203DCF4
.L0804B144: .4byte 0x08B9A964
.L0804B148: .4byte 0x0203DCF8
    func_end func_0804B0A8

    thumb_func_start func_0804B14C
func_0804B14C: @ 0x0804B14C
    push {lr}
    bl func_0804AD50
    ldr r0, .L0804B158 @ =0x0203DCF8
    pop {r1}
    bx r1
    .align 2, 0
.L0804B158: .4byte 0x0203DCF8
    func_end func_0804B14C

    thumb_func_start func_0804B15C
func_0804B15C: @ 0x0804B15C
    push {lr}
    bl func_0804B048
    cmp r0, #2
    bgt .L0804B16C
    bl func_0804B0A8
    b .L0804B170
.L0804B16C:
    bl func_0804B14C
.L0804B170:
    pop {r1}
    bx r1
    func_end func_0804B15C

    thumb_func_start CountTargets
CountTargets: @ 0x0804B174
    ldr r0, .L0804B17C @ =0x0203DFF8
    ldr r0, [r0]
    bx lr
    .align 2, 0
.L0804B17C: .4byte 0x0203DFF8
    func_end CountTargets

    thumb_func_start GetTarget
GetTarget: @ 0x0804B180
    adds r1, r0, #0
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    ldr r1, .L0804B190 @ =0x0203DCF8
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L0804B190: .4byte 0x0203DCF8
    func_end GetTarget
