    .include "asm_prelude.inc"

    thumb_func_start GetTextPrintDelay
GetTextPrintDelay: @ 0x0802DEC0
    push {lr}
    sub sp, #4
    ldr r1, .L0802DEE4 @ =0x081C4038
    mov r0, sp
    movs r2, #4
    bl memcpy
    ldr r0, .L0802DEE8 @ =gPlaySt
    adds r0, #0x40
    ldrb r0, [r0]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1e
    add r0, sp
    ldrb r0, [r0]
    add sp, #4
    pop {r1}
    bx r1
    .align 2, 0
.L0802DEE4: .4byte 0x081C4038
.L0802DEE8: .4byte gPlaySt
    func_end GetTextPrintDelay

    thumb_func_start IsFirstPlaythrough
IsFirstPlaythrough: @ 0x0802DEEC
    push {lr}
    bl WasGameBeatenAtLeastOnce
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802DEFC
    movs r0, #1
    b .L0802DF1A
.L0802DEFC:
    ldr r1, .L0802DF14 @ =gPlaySt
    movs r0, #0x80
    ldrb r2, [r1, #0x14]
    ands r0, r2
    cmp r0, #0
    bne .L0802DF18
    adds r0, r1, #0
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1f
    b .L0802DF1A
    .align 2, 0
.L0802DF14: .4byte gPlaySt
.L0802DF18:
    movs r0, #0
.L0802DF1A:
    pop {r1}
    bx r1
    func_end IsFirstPlaythrough

    thumb_func_start InitPlayConfig
InitPlayConfig: @ 0x0802DF20
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r5, r0, #0
    mov r0, sp
    movs r4, #0
    strh r4, [r0]
    ldr r7, .L0802DFEC @ =gPlaySt
    ldr r2, .L0802DFF0 @ =0x01000024
    adds r1, r7, #0
    bl CpuSet
    strb r4, [r7, #0xe]
    cmp r5, #0
    beq .L0802DF4C
    movs r0, #0x40
    ldrb r1, [r7, #0x14]
    orrs r0, r1
    strb r0, [r7, #0x14]
.L0802DF4C:
    movs r3, #0x42
    adds r3, r3, r7
    mov ip, r3
    movs r4, #7
    rsbs r4, r4, #0
    adds r3, r4, #0
    mov r5, ip
    ldrb r5, [r5]
    ands r3, r5
    movs r6, #3
    rsbs r6, r6, #0
    mov r8, r6
    mov r2, r8
    ldr r0, .L0802DFF4 @ =0x0202BC38
    ldrb r0, [r0]
    ands r2, r0
    movs r1, #0xd
    rsbs r1, r1, #0
    ands r2, r1
    movs r5, #0x11
    rsbs r5, r5, #0
    ands r2, r5
    movs r0, #0x61
    rsbs r0, r0, #0
    ands r2, r0
    movs r0, #0x20
    orrs r2, r0
    movs r5, #0x7f
    ands r2, r5
    movs r6, #0x41
    adds r6, r6, r7
    mov sl, r6
    movs r0, #2
    rsbs r0, r0, #0
    mov sb, r0
    mov r1, sb
    ldrb r6, [r6]
    ands r1, r6
    mov r0, r8
    ands r1, r0
    movs r6, #0xd
    rsbs r6, r6, #0
    ands r1, r6
    movs r0, #0x41
    rsbs r0, r0, #0
    ands r1, r0
    ands r1, r5
    adds r0, #0x28
    ands r3, r0
    mov r0, ip
    strb r3, [r0]
    ldr r0, .L0802DFF8 @ =0xFFFFFE7F
    mov r3, ip
    ldrh r3, [r3]
    ands r0, r3
    mov r5, ip
    strh r0, [r5]
    adds r0, r7, #0
    adds r0, #0x43
    ldrb r6, [r0]
    ands r4, r6
    strb r4, [r0]
    mov r0, sb
    ands r2, r0
    ldr r3, .L0802DFF4 @ =0x0202BC38
    strb r2, [r3]
    movs r5, #0x11
    rsbs r5, r5, #0
    ands r1, r5
    mov r6, sl
    strb r1, [r6]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802DFEC: .4byte gPlaySt
.L0802DFF0: .4byte 0x01000024
.L0802DFF4: .4byte 0x0202BC38
.L0802DFF8: .4byte 0xFFFFFE7F
    func_end InitPlayConfig

    thumb_func_start func_0802DFFC
func_0802DFFC: @ 0x0802DFFC
    push {r4, r5, lr}
    sub sp, #4
    ldr r4, .L0802E020 @ =gBmSt
    movs r5, #1
    ldrsb r5, [r4, r5]
    mov r1, sp
    movs r0, #0
    strh r0, [r1]
    ldr r2, .L0802E024 @ =0x01000020
    mov r0, sp
    adds r1, r4, #0
    bl CpuSet
    strb r5, [r4, #1]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E020: .4byte gBmSt
.L0802E024: .4byte 0x01000020
    func_end func_0802DFFC

    thumb_func_start StartBattleMap
StartBattleMap: @ 0x0802E028
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    mov r8, r0
    movs r0, #0
    bl InitBgs
    ldr r0, .L0802E0DC @ =OnMain
    bl SetMainFunc
    ldr r0, .L0802E0E0 @ =OnVBlank
    bl SetOnVBlank
    bl func_0802DFFC
    bl ApplySystemGraphics
    bl ApplyUnitSpritePalettes
    bl ResetChapterFlags
    bl ResetUnitSprites
    bl InitTraps
    ldr r4, .L0802E0E4 @ =gPlaySt
    movs r5, #0
    movs r0, #0x40
    strb r0, [r4, #0xf]
    movs r6, #0
    strh r5, [r4, #0x10]
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0xc]
    strb r0, [r4, #0xd]
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0x12]
    strb r0, [r4, #0x15]
    bl InitBmBgLayers
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl InitMapForChapter
    bl func_0802BBB8
    bl GetGameTime
    str r0, [r4, #4]
    strh r5, [r4, #0x16]
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    bl func_080345EC
    mov r0, r8
    bl func_0802E37C
    ldr r0, .L0802E0E8 @ =gPal
    strh r5, [r0]
    bl EnablePalSync
    ldr r2, .L0802E0EC @ =0x030028AC
    ldr r0, .L0802E0F0 @ =0x0000FFE0
    ldrh r1, [r2]
    ands r0, r1
    movs r1, #0x1f
    orrs r0, r1
    strh r0, [r2]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r0, r1
    movs r1, #0xc0
    orrs r0, r1
    strb r0, [r2]
    strb r6, [r2, #8]
    strb r6, [r2, #9]
    movs r0, #0x10
    strb r0, [r2, #0xa]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E0DC: .4byte OnMain
.L0802E0E0: .4byte OnVBlank
.L0802E0E4: .4byte gPlaySt
.L0802E0E8: .4byte gPal
.L0802E0EC: .4byte 0x030028AC
.L0802E0F0: .4byte 0x0000FFE0
    func_end StartBattleMap

    thumb_func_start func_0802E0F4
func_0802E0F4: @ 0x0802E0F4
    push {r4, r5, lr}
    movs r0, #0
    bl InitBgs
    ldr r0, .L0802E178 @ =OnMain
    bl SetMainFunc
    ldr r0, .L0802E17C @ =OnVBlank
    bl SetOnVBlank
    bl ApplySystemGraphics
    bl ApplyUnitSpritePalettes
    bl ResetUnitSprites
    bl InitTraps
    ldr r4, .L0802E180 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0x12]
    movs r5, #0
    strb r0, [r4, #0x15]
    bl InitBmBgLayers
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl InitMapForChapter
    bl func_0802BBB8
    bl func_080345EC
    bl func_0802D3A4
    bl func_0802D380
    ldr r0, .L0802E184 @ =0x08B961A8
    movs r1, #4
    bl Proc_Start
    ldr r0, .L0802E188 @ =gPal
    strh r5, [r0]
    bl EnablePalSync
    ldr r2, .L0802E18C @ =gDispIo
    movs r0, #1
    ldrb r1, [r2, #1]
    orrs r0, r1
    movs r1, #2
    orrs r0, r1
    movs r1, #4
    orrs r0, r1
    movs r1, #9
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E178: .4byte OnMain
.L0802E17C: .4byte OnVBlank
.L0802E180: .4byte gPlaySt
.L0802E184: .4byte 0x08B961A8
.L0802E188: .4byte gPal
.L0802E18C: .4byte gDispIo
    func_end func_0802E0F4

    thumb_func_start ResumeChapterFromSuspend
ResumeChapterFromSuspend: @ 0x0802E190
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0
    bl InitBgs
    ldr r0, .L0802E204 @ =OnMain
    bl SetMainFunc
    ldr r0, .L0802E208 @ =OnVBlank
    bl SetOnVBlank
    bl func_0802DFFC
    ldr r4, .L0802E20C @ =gPlaySt
    ldrb r0, [r4, #0x12]
    ldrb r1, [r4, #0x13]
    bl SetMapCursorPosition
    bl ApplySystemGraphics
    bl ApplyUnitSpritePalettes
    bl ResetUnitSprites
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl InitMapForChapter
    ldr r4, .L0802E210 @ =gBmSt
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    strb r0, [r1]
    adds r0, r5, #0
    bl func_0802E37C
    adds r5, r0, #0
    movs r1, #0x14
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    bl GetCameraCenteredX
    strh r0, [r4, #0xc]
    movs r1, #0x16
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    bl GetCameraCenteredY
    strh r0, [r4, #0xe]
    ldr r0, .L0802E214 @ =gActionSt
    ldrb r0, [r0, #0x16]
    cmp r0, #9
    bhi .L0802E26A
    lsls r0, r0, #2
    ldr r1, .L0802E218 @ =.L0802E21C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802E204: .4byte OnMain
.L0802E208: .4byte OnVBlank
.L0802E20C: .4byte gPlaySt
.L0802E210: .4byte gBmSt
.L0802E214: .4byte gActionSt
.L0802E218: .4byte .L0802E21C
.L0802E21C: @ jump table
    .4byte .L0802E24C @ case 0
    .4byte .L0802E244 @ case 1
    .4byte .L0802E24C @ case 2
    .4byte .L0802E254 @ case 3
    .4byte .L0802E25C @ case 4
    .4byte .L0802E26A @ case 5
    .4byte .L0802E26A @ case 6
    .4byte .L0802E26A @ case 7
    .4byte .L0802E26A @ case 8
    .4byte .L0802E264 @ case 9
.L0802E244:
    adds r0, r5, #0
    bl func_0802E53C
    b .L0802E26A
.L0802E24C:
    adds r0, r5, #0
    bl func_0802E500
    b .L0802E26A
.L0802E254:
    adds r0, r5, #0
    bl func_0802E5BC
    b .L0802E26A
.L0802E25C:
    adds r0, r5, #0
    bl func_0802E5F8
    b .L0802E26A
.L0802E264:
    adds r0, r5, #0
    bl func_0802E674
.L0802E26A:
    ldr r2, .L0802E294 @ =0x030028AC
    ldr r0, .L0802E298 @ =0x0000FFE0
    ldrh r1, [r2]
    ands r0, r1
    movs r1, #0x1f
    orrs r0, r1
    strh r0, [r2]
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r0, r1
    movs r1, #0xc0
    orrs r0, r1
    strb r0, [r2]
    movs r0, #0
    strb r0, [r2, #8]
    strb r0, [r2, #9]
    movs r0, #0x10
    strb r0, [r2, #0xa]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E294: .4byte 0x030028AC
.L0802E298: .4byte 0x0000FFE0
    func_end ResumeChapterFromSuspend

    thumb_func_start func_0802E29C
func_0802E29C: @ 0x0802E29C
    push {lr}
    ldr r0, .L0802E304 @ =OnMain
    bl SetMainFunc
    ldr r0, .L0802E308 @ =OnVBlank
    bl SetOnVBlank
    bl ApplySystemGraphics
    bl ApplyUnitSpritePalettes
    bl ClearUi
    ldr r3, .L0802E30C @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r3, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r3, #1]
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
    movs r0, #0
    bl SetBlankChr
    ldr r0, .L0802E310 @ =gBg2Tm
    movs r1, #0
    bl TmFill
    movs r0, #4
    bl EnableBgSync
    pop {r0}
    bx r0
    .align 2, 0
.L0802E304: .4byte OnMain
.L0802E308: .4byte OnVBlank
.L0802E30C: .4byte gDispIo
.L0802E310: .4byte gBg2Tm
    func_end func_0802E29C

    thumb_func_start func_0802E314
func_0802E314: @ 0x0802E314
    push {lr}
    bl ApplySystemObjectsGraphics
    ldr r0, .L0802E330 @ =0x0203A3F0
    bl StartMu
    bl MU_SetDefaultFacing_Auto
    ldr r0, .L0802E334 @ =0x08B96284
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L0802E330: .4byte 0x0203A3F0
.L0802E334: .4byte 0x08B96284
    func_end func_0802E314

    thumb_func_start func_0802E338
func_0802E338: @ 0x0802E338
    push {r4, lr}
    ldr r4, .L0802E364 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl UnpackChapterMapGraphics
    ldrb r0, [r4, #0x15]
    bl AllocWeatherParticles
    bl RenderMap
    bl RefreshUnitSprites
    bl ApplyUnitSpritePalettes
    bl ForceSyncUnitSpriteSheet
    bl InitSystemTextFont
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E364: .4byte gPlaySt
    func_end func_0802E338

    thumb_func_start RefreshBMapGraphics
RefreshBMapGraphics: @ 0x0802E368
    push {lr}
    movs r0, #0
    bl InitBgs
    bl ApplySystemGraphics
    bl func_0802E338
    pop {r0}
    bx r0
    func_end RefreshBMapGraphics

    thumb_func_start func_0802E37C
func_0802E37C: @ 0x0802E37C
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, .L0802E3A8 @ =0x08B92AF8
    movs r1, #2
    bl Proc_Start
    adds r5, r0, #0
    str r4, [r5, #0x54]
    adds r4, #0x28
    ldrb r0, [r4]
    adds r0, #1
    strb r0, [r4]
    bl func_0802D380
    ldr r0, .L0802E3AC @ =0x08B961A8
    movs r1, #4
    bl Proc_Start
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0802E3A8: .4byte 0x08B92AF8
.L0802E3AC: .4byte 0x08B961A8
    func_end func_0802E37C

    thumb_func_start func_0802E3B0
func_0802E3B0: @ 0x0802E3B0
    push {lr}
    movs r0, #1
    bl Proc_EndEachMarked
    ldr r0, .L0802E3D0 @ =0x08B92AF8
    bl Proc_Find
    ldr r1, [r0, #0x54]
    adds r1, #0x28
    ldrb r2, [r1]
    subs r2, #1
    strb r2, [r1]
    bl Proc_End
    pop {r0}
    bx r0
    .align 2, 0
.L0802E3D0: .4byte 0x08B92AF8
    func_end func_0802E3B0

    thumb_func_start CleanupUnitsBeforeChapter
CleanupUnitsBeforeChapter: @ 0x0802E3D4
    push {r4, r5, r6, r7, lr}
    movs r4, #0x41
.L0802E3D8:
    adds r0, r4, #0
    bl GetUnit
    adds r1, r0, #0
    cmp r1, #0
    beq .L0802E3F0
    ldr r0, [r1]
    cmp r0, #0
    beq .L0802E3F0
    adds r0, r1, #0
    bl ClearUnit
.L0802E3F0:
    adds r4, #1
    cmp r4, #0xbf
    ble .L0802E3D8
    ldr r0, .L0802E46C @ =gPlaySt
    ldrb r0, [r0, #0xe]
    cmp r0, #0x2f
    beq .L0802E474
    movs r6, #1
.L0802E400:
    adds r0, r6, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L0802E464
    ldr r0, [r4]
    cmp r0, #0
    beq .L0802E464
    adds r0, r4, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r4, #0
    bl SetUnitHp
    adds r0, r4, #0
    movs r1, #0
    bl SetUnitStatus
    adds r0, r4, #0
    adds r0, #0x31
    movs r5, #0
    strb r5, [r0]
    ldr r3, [r4, #0xc]
    ldr r0, .L0802E470 @ =0x0631E004
    ands r3, r0
    str r3, [r4, #0xc]
    ldr r0, [r4]
    ldr r2, [r4, #4]
    ldr r1, [r0, #0x28]
    ldr r0, [r2, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #2
    ands r1, r0
    cmp r1, #0
    beq .L0802E454
    movs r0, #5
    rsbs r0, r0, #0
    ands r3, r0
    str r3, [r4, #0xc]
.L0802E454:
    ldr r0, [r4, #0xc]
    movs r1, #9
    orrs r0, r1
    str r0, [r4, #0xc]
    strb r5, [r4, #0x1b]
    adds r0, r4, #0
    adds r0, #0x39
    strb r5, [r0]
.L0802E464:
    adds r6, #1
    cmp r6, #0x3f
    ble .L0802E400
    b .L0802E4E6
    .align 2, 0
.L0802E46C: .4byte gPlaySt
.L0802E470: .4byte 0x0631E004
.L0802E474:
    movs r6, #1
.L0802E476:
    adds r0, r6, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L0802E4E0
    ldr r0, [r4]
    cmp r0, #0
    beq .L0802E4E0
    movs r0, #0xff
    strb r0, [r4, #0x10]
    movs r5, #0
    movs r7, #1
    strb r7, [r4, #0x11]
    adds r0, r4, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r4, #0
    bl SetUnitHp
    adds r0, r4, #0
    movs r1, #0
    bl SetUnitStatus
    adds r0, r4, #0
    adds r0, #0x31
    strb r5, [r0]
    ldr r3, [r4, #0xc]
    ldr r0, .L0802E4F8 @ =0x0631E00C
    ands r3, r0
    str r3, [r4, #0xc]
    ldr r0, [r4]
    ldr r2, [r4, #4]
    ldr r1, [r0, #0x28]
    ldr r0, [r2, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #2
    ands r1, r0
    cmp r1, #0
    beq .L0802E4D2
    movs r0, #5
    rsbs r0, r0, #0
    ands r3, r0
    str r3, [r4, #0xc]
.L0802E4D2:
    ldr r0, [r4, #0xc]
    orrs r0, r7
    str r0, [r4, #0xc]
    strb r5, [r4, #0x1b]
    adds r0, r4, #0
    adds r0, #0x39
    strb r5, [r0]
.L0802E4E0:
    adds r6, #1
    cmp r6, #0x3f
    ble .L0802E476
.L0802E4E6:
    ldr r1, .L0802E4FC @ =gPlaySt
    movs r0, #0xef
    ldrb r2, [r1, #0x14]
    ands r0, r2
    strb r0, [r1, #0x14]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E4F8: .4byte 0x0631E00C
.L0802E4FC: .4byte gPlaySt
    func_end CleanupUnitsBeforeChapter

    thumb_func_start func_0802E500
func_0802E500: @ 0x0802E500
    push {r4, lr}
    adds r4, r0, #0
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    ldr r2, .L0802E538 @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    adds r0, r4, #0
    movs r1, #2
    bl Proc_Goto
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E538: .4byte gDispIo
    func_end func_0802E500

    thumb_func_start func_0802E53C
func_0802E53C: @ 0x0802E53C
    push {r4, r5, lr}
    adds r4, r0, #0
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    ldr r2, .L0802E5AC @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    adds r0, r4, #0
    movs r1, #4
    bl Proc_Goto
    ldr r4, .L0802E5B0 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldr r5, .L0802E5B4 @ =gActiveUnit
    str r0, [r5]
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    ldr r2, .L0802E5B8 @ =gBmMapUnit
    ldr r2, [r2]
    lsls r1, r1, #2
    adds r1, r1, r2
    movs r2, #0x10
    ldrsb r2, [r0, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    movs r1, #0
    strb r1, [r0]
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl HideUnitSprite
    ldr r0, [r5]
    bl StartMu
    bl MU_SetDefaultFacing_Auto
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E5AC: .4byte gDispIo
.L0802E5B0: .4byte gActionSt
.L0802E5B4: .4byte gActiveUnit
.L0802E5B8: .4byte gBmMapUnit
    func_end func_0802E53C

    thumb_func_start func_0802E5BC
func_0802E5BC: @ 0x0802E5BC
    push {r4, lr}
    adds r4, r0, #0
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    ldr r2, .L0802E5F4 @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    adds r0, r4, #0
    movs r1, #5
    bl Proc_Goto
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E5F4: .4byte gDispIo
    func_end func_0802E5BC

    thumb_func_start func_0802E5F8
func_0802E5F8: @ 0x0802E5F8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r5, .L0802E664 @ =gActionSt
    ldrb r0, [r5, #0xc]
    bl GetUnit
    ldr r4, .L0802E668 @ =gActiveUnit
    str r0, [r4]
    bl ArenaResume
    ldr r0, [r4]
    bl func_0802A6E0
    bl BeginBattleAnimations
    ldr r2, .L0802E66C @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    bl RefreshEntityMaps
    ldr r0, .L0802E670 @ =gBmMapUnit
    ldr r1, [r0]
    ldrb r2, [r5, #0xf]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    ldrb r5, [r5, #0xe]
    adds r0, r5, r0
    movs r1, #0
    strb r1, [r0]
    bl RefreshUnitSprites
    adds r0, r6, #0
    movs r1, #8
    bl Proc_Goto
    bl func_080B26A4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E664: .4byte gActionSt
.L0802E668: .4byte gActiveUnit
.L0802E66C: .4byte gDispIo
.L0802E670: .4byte gBmMapUnit
    func_end func_0802E5F8

    thumb_func_start func_0802E674
func_0802E674: @ 0x0802E674
    push {r4, lr}
    adds r4, r0, #0
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    ldr r2, .L0802E6AC @ =gDispIo
    movs r0, #2
    rsbs r0, r0, #0
    ldrb r1, [r2, #1]
    ands r0, r1
    movs r1, #3
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #2
    ands r0, r1
    subs r1, #4
    ands r0, r1
    subs r1, #8
    ands r0, r1
    strb r0, [r2, #1]
    adds r0, r4, #0
    movs r1, #6
    bl Proc_Goto
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E6AC: .4byte gDispIo
    func_end func_0802E674

    thumb_func_start func_0802E6B0
func_0802E6B0: @ 0x0802E6B0
    push {r4, lr}
    ldr r4, .L0802E6D0 @ =gPlaySt
    adds r0, r4, #0
    bl RegisterChapterStats
    bl ComputeChapterRankings
    bl func_0809F618
    movs r0, #0x20
    ldrb r1, [r4, #0x14]
    orrs r0, r1
    strb r0, [r4, #0x14]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E6D0: .4byte gPlaySt
    func_end func_0802E6B0

    thumb_func_start func_0802E6D4
func_0802E6D4: @ 0x0802E6D4
    push {lr}
    movs r0, #2
    bl SetNextGameAction
    bl func_080A049C
    pop {r0}
    bx r0
    func_end func_0802E6D4

    thumb_func_start GetTacticianName
GetTacticianName: @ 0x0802E6E4
    ldr r0, .L0802E6E8 @ =0x0202BC18
    bx lr
    .align 2, 0
.L0802E6E8: .4byte 0x0202BC18
    func_end GetTacticianName

    thumb_func_start SetTacticianName
SetTacticianName: @ 0x0802E6EC
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802E6FC @ =0x0202BC18
    bl strcpy
    pop {r0}
    bx r0
    .align 2, 0
.L0802E6FC: .4byte 0x0202BC18
    func_end SetTacticianName

    thumb_func_start func_0802E700
func_0802E700: @ 0x0802E700
    ldr r0, .L0802E704 @ =0x0203A720
    bx lr
    .align 2, 0
.L0802E704: .4byte 0x0203A720
    func_end func_0802E700

    thumb_func_start func_0802E708
func_0802E708: @ 0x0802E708
    push {lr}
    sub sp, #4
    mov r1, sp
    movs r0, #0
    strh r0, [r1]
    ldr r1, .L0802E724 @ =0x0203A720
    ldr r2, .L0802E728 @ =0x01000064
    mov r0, sp
    bl CpuSet
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0
.L0802E724: .4byte 0x0203A720
.L0802E728: .4byte 0x01000064
    func_end func_0802E708

    thumb_func_start func_0802E72C
func_0802E72C: @ 0x0802E72C
    push {r4, r5, r6, lr}
    ldr r6, .L0802E76C @ =gBuf
    adds r4, r6, #0
    bl func_0802E700
    adds r1, r0, #0
    movs r5, #0
.L0802E73A:
    ldrh r0, [r1]
    cmp r0, #0
    beq .L0802E744
    strh r0, [r4]
    adds r4, #2
.L0802E744:
    adds r1, #2
    adds r0, r5, #1
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    cmp r5, #0x63
    bls .L0802E73A
    movs r0, #0
    strh r0, [r4]
    bl func_0802E708
    bl func_0802E700
    adds r1, r0, #0
    adds r0, r6, #0
    adds r2, r5, #0
    bl CpuSet
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E76C: .4byte gBuf
    func_end func_0802E72C

    thumb_func_start func_0802E770
func_0802E770: @ 0x0802E770
    movs r3, #0
    ldr r2, .L0802E78C @ =0x0203A720
    movs r1, #0x63
.L0802E776:
    ldrh r0, [r2]
    cmp r0, #0
    beq .L0802E77E
    adds r3, #1
.L0802E77E:
    adds r2, #2
    subs r1, #1
    cmp r1, #0
    bge .L0802E776
    adds r0, r3, #0
    bx lr
    .align 2, 0
.L0802E78C: .4byte 0x0203A720
    func_end func_0802E770

    thumb_func_start func_0802E790
func_0802E790: @ 0x0802E790
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L0802E7AC @ =gBmSt
    movs r0, #0
    strh r0, [r1, #0x2e]
    movs r3, #0
    ldr r2, .L0802E7B0 @ =0x0203A720
.L0802E79E:
    ldrh r0, [r2]
    cmp r0, #0
    bne .L0802E7B4
    strh r4, [r2]
    adds r0, r3, #0
    b .L0802E7C2
    .align 2, 0
.L0802E7AC: .4byte gBmSt
.L0802E7B0: .4byte 0x0203A720
.L0802E7B4:
    adds r2, #2
    adds r3, #1
    cmp r3, #0x63
    ble .L0802E79E
    strh r4, [r1, #0x2e]
    movs r0, #1
    rsbs r0, r0, #0
.L0802E7C2:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802E790

    thumb_func_start func_0802E7C8
func_0802E7C8: @ 0x0802E7C8
    push {lr}
    ldr r1, .L0802E7DC @ =0x0203A720
    lsls r0, r0, #1
    adds r0, r0, r1
    movs r1, #0
    strh r1, [r0]
    bl func_0802E72C
    pop {r0}
    bx r0
    .align 2, 0
.L0802E7DC: .4byte 0x0203A720
    func_end func_0802E7C8

    thumb_func_start func_0802E7E0
func_0802E7E0: @ 0x0802E7E0
    push {r4, r5, lr}
    adds r2, r0, #0
    bl GetItemIndex
    adds r2, r0, #0
    movs r1, #0
    movs r4, #0xff
    ldr r3, .L0802E800 @ =0x0203A720
.L0802E7F0:
    adds r0, r4, #0
    ldrh r5, [r3]
    ands r0, r5
    cmp r2, r0
    bne .L0802E804
    adds r0, r1, #0
    b .L0802E810
    .align 2, 0
.L0802E800: .4byte 0x0203A720
.L0802E804:
    adds r3, #2
    adds r1, #1
    cmp r1, #0x63
    ble .L0802E7F0
    movs r0, #1
    rsbs r0, r0, #0
.L0802E810:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0802E7E0

    thumb_func_start func_0802E818
func_0802E818: @ 0x0802E818
    push {r4, lr}
    movs r4, #1
.L0802E81C:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L0802E854
    ldr r3, [r2]
    cmp r3, #0
    beq .L0802E854
    ldr r0, [r2, #0xc]
    ldr r1, .L0802E850 @ =0x0001000C
    ands r0, r1
    cmp r0, #0
    bne .L0802E854
    ldr r0, [r2, #4]
    ldr r1, [r3, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #2
    ands r1, r0
    cmp r1, #0
    beq .L0802E854
    movs r0, #1
    b .L0802E85C
    .align 2, 0
.L0802E850: .4byte 0x0001000C
.L0802E854:
    adds r4, #1
    cmp r4, #0x3f
    ble .L0802E81C
    movs r0, #0
.L0802E85C:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802E818

    thumb_func_start func_0802E864
func_0802E864: @ 0x0802E864
    push {r4, lr}
    ldr r4, .L0802E888 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    movs r1, #0
    ldrb r4, [r4, #0x1b]
    cmp r4, #3
    bne .L0802E87A
    movs r1, #1
.L0802E87A:
    adds r0, #0x86
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0xff
    beq .L0802E88C
    movs r0, #1
    b .L0802E88E
    .align 2, 0
.L0802E888: .4byte gPlaySt
.L0802E88C:
    movs r0, #0
.L0802E88E:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802E864

    thumb_func_start func_0802E894
func_0802E894: @ 0x0802E894
    push {r4, lr}
    movs r4, #1
.L0802E898:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L0802E8C0
    ldr r1, [r2]
    cmp r1, #0
    beq .L0802E8C0
    ldr r0, [r2, #4]
    ldr r1, [r1, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #2
    ands r1, r0
    cmp r1, #0
    beq .L0802E8C0
    adds r0, r2, #0
    b .L0802E8C8
.L0802E8C0:
    adds r4, #1
    cmp r4, #0x3f
    ble .L0802E898
    movs r0, #0
.L0802E8C8:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802E894

    thumb_func_start func_0802E8D0
func_0802E8D0: @ 0x0802E8D0
    ldr r2, .L0802E8E0 @ =0x0203A7E8
    ldr r1, .L0802E8E4 @ =0x0203A7EC
    str r0, [r1]
    str r0, [r2]
    ldr r1, .L0802E8E8 @ =0x0203A7F0
    movs r0, #1
    strb r0, [r1]
    bx lr
    .align 2, 0
.L0802E8E0: .4byte 0x0203A7E8
.L0802E8E4: .4byte 0x0203A7EC
.L0802E8E8: .4byte 0x0203A7F0
    func_end func_0802E8D0

    thumb_func_start func_0802E8EC
func_0802E8EC: @ 0x0802E8EC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802E918 @ =0x0203A7EC
    ldr r1, [r4]
    movs r5, #0
    str r5, [r1]
    bl CopyUnit
    ldr r2, [r4]
    ldr r1, .L0802E91C @ =0x0203A7F0
    ldrb r0, [r1]
    strb r0, [r2, #0xb]
    strb r5, [r6, #0x12]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    ldr r0, [r4]
    adds r0, #0x48
    str r0, [r4]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E918: .4byte 0x0203A7EC
.L0802E91C: .4byte 0x0203A7F0
    func_end func_0802E8EC

    thumb_func_start func_0802E920
func_0802E920: @ 0x0802E920
    push {r4, r5, lr}
    ldr r5, .L0802E954 @ =gBlueUnits
    movs r4, #0x3d
.L0802E926:
    adds r0, r5, #0
    bl ClearUnit
    adds r5, #0x48
    subs r4, #1
    cmp r4, #0
    bge .L0802E926
    ldr r0, .L0802E958 @ =0x0203A7E8
    ldr r0, [r0]
    ldr r1, .L0802E954 @ =gBlueUnits
    ldr r2, .L0802E95C @ =0x0203A7EC
    ldr r2, [r2]
    subs r2, r2, r0
    lsrs r3, r2, #0x1f
    adds r2, r2, r3
    lsls r2, r2, #0xa
    lsrs r2, r2, #0xb
    bl CpuSet
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E954: .4byte gBlueUnits
.L0802E958: .4byte 0x0203A7E8
.L0802E95C: .4byte 0x0203A7EC
    func_end func_0802E920

    thumb_func_start func_0802E960
func_0802E960: @ 0x0802E960
    push {r4, r5, lr}
    ldr r5, .L0802E994 @ =gBlueUnits
    movs r4, #0x3d
.L0802E966:
    adds r0, r5, #0
    bl ClearUnit
    adds r5, #0x48
    subs r4, #1
    cmp r4, #0
    bge .L0802E966
    ldr r0, .L0802E998 @ =0x0203A7E8
    ldr r0, [r0]
    ldr r1, .L0802E994 @ =gBlueUnits
    ldr r2, .L0802E99C @ =0x0203A7EC
    ldr r2, [r2]
    subs r2, r2, r0
    lsrs r3, r2, #0x1f
    adds r2, r2, r3
    lsls r2, r2, #0xa
    lsrs r2, r2, #0xb
    bl CpuSet
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802E994: .4byte gBlueUnits
.L0802E998: .4byte 0x0203A7E8
.L0802E99C: .4byte 0x0203A7EC
    func_end func_0802E960

    thumb_func_start ArenaBeginInternal
ArenaBeginInternal: @ 0x0802E9A0
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L0802EA04 @ =0x0203A7F4
    str r4, [r5]
    ldr r0, .L0802EA08 @ =0x0203A814
    str r0, [r5, #4]
    ldr r2, .L0802EA0C @ =0x03002850
    ldr r0, [r4, #0xc]
    lsrs r0, r0, #0x11
    movs r1, #7
    ands r0, r1
    strb r0, [r2]
    ldr r0, [r4, #4]
    ldrb r0, [r0, #4]
    strb r0, [r5, #0xf]
    adds r0, r4, #0
    bl func_0802EAC0
    strb r0, [r5, #0xd]
    ldrb r0, [r5, #0xd]
    bl func_0802EB18
    strb r0, [r5, #0x10]
    ldrb r0, [r5, #0x10]
    bl GetClassData
    bl func_0802EAEC
    strb r0, [r5, #0xe]
    ldrb r0, [r5, #0xd]
    bl func_0802EBE4
    strb r0, [r5, #0x13]
    ldrb r0, [r5, #0xe]
    bl func_0802EBE4
    strb r0, [r5, #0x14]
    ldrb r0, [r4, #8]
    strb r0, [r5, #0x11]
    ldr r0, [r4, #0xc]
    lsrs r0, r0, #0x11
    movs r1, #7
    ands r0, r1
    cmp r0, #4
    bhi .L0802EA10
    ldrb r0, [r5, #0x11]
    bl func_0802EBFC
    b .L0802EA18
    .align 2, 0
.L0802EA04: .4byte 0x0203A7F4
.L0802EA08: .4byte 0x0203A814
.L0802EA0C: .4byte 0x03002850
.L0802EA10:
    ldrb r0, [r5, #0x11]
    bl func_0802EBFC
    adds r0, #7
.L0802EA18:
    strb r0, [r5, #0x12]
    bl func_0802EC88
    bl func_0802ED74
    movs r4, #0
    b .L0802EA28
.L0802EA26:
    adds r4, #1
.L0802EA28:
    cmp r4, #9
    bgt .L0802EA36
    bl func_0802EF5C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802EA26
.L0802EA36:
    movs r4, #0
    b .L0802EA3C
.L0802EA3A:
    adds r4, #1
.L0802EA3C:
    cmp r4, #4
    bgt .L0802EA4A
    bl func_0802EE14
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802EA3A
.L0802EA4A:
    ldr r4, .L0802EA7C @ =0x0203A7F4
    ldr r0, [r4]
    movs r1, #0x14
    ldrsb r1, [r4, r1]
    bl func_0802EC18
    strh r0, [r4, #0x16]
    ldr r0, [r4, #4]
    movs r1, #0x13
    ldrsb r1, [r4, r1]
    bl func_0802EC18
    strh r0, [r4, #0x18]
    bl func_0802F0AC
    movs r0, #1
    strb r0, [r4, #0xb]
    movs r0, #0
    bl ArenaSetResult
    bl func_0802F1D4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802EA7C: .4byte 0x0203A7F4
    func_end ArenaBeginInternal

    thumb_func_start ArenaBegin
ArenaBegin: @ 0x0802EA80
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L0802EA98 @ =0x0203A862
    bl RandGetSt
    adds r0, r4, #0
    bl ArenaBeginInternal
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802EA98: .4byte 0x0203A862
    func_end ArenaBegin

    thumb_func_start ArenaResume
ArenaResume: @ 0x0802EA9C
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802EABC @ =0x0203A862
    adds r0, r4, #0
    bl RandSetSt
    adds r0, r5, #0
    bl ArenaBeginInternal
    subs r4, #6
    adds r0, r4, #0
    bl RandSetSt
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802EABC: .4byte 0x0203A862
    func_end ArenaResume

    thumb_func_start func_0802EAC0
func_0802EAC0: @ 0x0802EAC0
    push {r4, lr}
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    movs r1, #0
    adds r4, r0, #0
    adds r4, #0x28
.L0802EACE:
    cmp r1, #4
    beq .L0802EADE
    adds r0, r4, r1
    ldrb r0, [r0]
    cmp r2, r0
    bge .L0802EADE
    adds r2, r0, #0
    adds r3, r1, #0
.L0802EADE:
    adds r1, #1
    cmp r1, #7
    ble .L0802EACE
    adds r0, r3, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802EAC0

    thumb_func_start func_0802EAEC
func_0802EAEC: @ 0x0802EAEC
    push {r4, lr}
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    movs r1, #0
    adds r4, r0, #0
    adds r4, #0x2c
.L0802EAFA:
    cmp r1, #4
    beq .L0802EB0A
    adds r0, r4, r1
    ldrb r0, [r0]
    cmp r2, r0
    bge .L0802EB0A
    adds r2, r0, #0
    adds r3, r1, #0
.L0802EB0A:
    adds r1, #1
    cmp r1, #7
    ble .L0802EAFA
    adds r0, r3, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802EAEC

    thumb_func_start func_0802EB18
func_0802EB18: @ 0x0802EB18
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    movs r6, #0
    mov r8, r6
    cmp r0, #7
    bhi .L0802EB6C
    lsls r0, r0, #2
    ldr r1, .L0802EB30 @ =.L0802EB34
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802EB30: .4byte .L0802EB34
.L0802EB34: @ jump table
    .4byte .L0802EB54 @ case 0
    .4byte .L0802EB54 @ case 1
    .4byte .L0802EB54 @ case 2
    .4byte .L0802EB5C @ case 3
    .4byte .L0802EB6C @ case 4
    .4byte .L0802EB68 @ case 5
    .4byte .L0802EB68 @ case 6
    .4byte .L0802EB68 @ case 7
.L0802EB54:
    ldr r0, .L0802EB58 @ =0x08B9629C
    b .L0802EB6A
    .align 2, 0
.L0802EB58: .4byte 0x08B9629C
.L0802EB5C:
    ldr r1, .L0802EB64 @ =0x08B962ED
    mov r8, r1
    b .L0802EB6C
    .align 2, 0
.L0802EB64: .4byte 0x08B962ED
.L0802EB68:
    ldr r0, .L0802EBB4 @ =0x08B962C2
.L0802EB6A:
    mov r8, r0
.L0802EB6C:
    ldr r0, .L0802EBB8 @ =0x0203A7F4
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r0, [r0, #4]
    ldr r5, [r1, #0x28]
    ldr r0, [r0, #0x28]
    orrs r5, r0
    movs r0, #0x80
    lsls r0, r0, #1
    ands r5, r0
    mov r1, r8
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0802EBA6
    mov r4, r8
.L0802EB8A:
    ldrb r0, [r4]
    bl GetClassData
    ldr r0, [r0, #0x28]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, r5
    bne .L0802EB9E
    adds r6, #1
.L0802EB9E:
    adds r4, #1
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0802EB8A
.L0802EBA6:
    adds r0, r6, #0
    bl RandNext
    adds r7, r0, #0
    movs r6, #0
    mov r4, r8
    b .L0802EBC0
    .align 2, 0
.L0802EBB4: .4byte 0x08B962C2
.L0802EBB8: .4byte 0x0203A7F4
.L0802EBBC:
    adds r6, #1
.L0802EBBE:
    adds r4, #1
.L0802EBC0:
    ldrb r0, [r4]
    bl GetClassData
    ldr r0, [r0, #0x28]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, r5
    bne .L0802EBBE
    cmp r6, r7
    bne .L0802EBBC
    ldrb r0, [r4]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802EB18

    thumb_func_start func_0802EBE4
func_0802EBE4: @ 0x0802EBE4
    cmp r0, #0
    blt .L0802EBFA
    cmp r0, #3
    bgt .L0802EBF0
    movs r0, #0
    b .L0802EBFA
.L0802EBF0:
    cmp r0, #7
    bgt .L0802EBFA
    cmp r0, #5
    blt .L0802EBFA
    movs r0, #1
.L0802EBFA:
    bx lr
    func_end func_0802EBE4

    thumb_func_start func_0802EBFC
func_0802EBFC: @ 0x0802EBFC
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #9
    bl RandNext
    adds r4, r4, r0
    subs r0, r4, #4
    cmp r0, #0
    bgt .L0802EC10
    movs r0, #1
.L0802EC10:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802EBFC

    thumb_func_start func_0802EC18
func_0802EC18: @ 0x0802EC18
    push {r4, r5, lr}
    adds r4, r0, #0
    movs r5, #0x12
    ldrsb r5, [r4, r5]
    movs r0, #0x14
    ldrsb r0, [r4, r0]
    adds r0, r0, r5
    movs r2, #0x15
    ldrsb r2, [r4, r2]
    adds r2, r2, r0
    movs r0, #0x16
    ldrsb r0, [r4, r0]
    adds r0, r0, r2
    lsls r5, r0, #1
    movs r0, #0x19
    ldrsb r0, [r4, r0]
    adds r5, r5, r0
    ldr r0, [r4, #4]
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldr r2, [r4]
    ldrb r2, [r2, #0x13]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r0, r0, r2
    adds r5, r5, r0
    lsls r1, r1, #0x18
    cmp r1, #0
    beq .L0802EC5C
    adds r0, r4, #0
    bl GetUnitResistance
    b .L0802EC62
.L0802EC5C:
    adds r0, r4, #0
    bl GetUnitDefense
.L0802EC62:
    lsls r0, r0, #1
    adds r5, r5, r0
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L0802EC80
    adds r0, r4, #0
    bl GetUnitPower
    adds r5, r5, r0
.L0802EC80:
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0802EC18

    thumb_func_start func_0802EC88
func_0802EC88: @ 0x0802EC88
    push {r4, r5, r6, lr}
    sub sp, #0x10
    ldr r6, .L0802ED04 @ =0x0203A814
    mov r1, sp
    movs r2, #0
    movs r0, #0xfb
    strb r0, [r1]
    ldr r5, .L0802ED08 @ =0x0203A7F4
    ldrb r0, [r5, #0x10]
    strb r0, [r1, #1]
    mov r3, sp
    ldrb r0, [r3, #3]
    movs r1, #7
    rsbs r1, r1, #0
    ands r1, r0
    strb r1, [r3, #3]
    mov r4, sp
    ldrb r5, [r5, #0x12]
    lsls r3, r5, #3
    movs r0, #7
    ands r0, r1
    orrs r0, r3
    strb r0, [r4, #3]
    mov r3, sp
    movs r1, #1
    orrs r0, r1
    strb r0, [r3, #3]
    mov r0, sp
    strb r2, [r0, #8]
    strb r2, [r0, #9]
    strb r2, [r0, #0xa]
    strb r2, [r0, #0xb]
    strb r2, [r0, #0xc]
    strb r2, [r0, #0xc]
    strb r2, [r0, #0xd]
    strb r2, [r0, #0xe]
    strb r2, [r0, #0xf]
    adds r0, r6, #0
    bl ClearUnit
    movs r0, #0x80
    strb r0, [r6, #0xb]
    adds r0, r6, #0
    mov r1, sp
    bl UnitInitFromDefinition
    ldr r1, [r6]
    adds r0, r6, #0
    bl UnitLoadStatsFromChracter
    movs r4, #8
    ldrsb r4, [r6, r4]
    ldr r1, .L0802ED0C @ =gPlaySt
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    beq .L0802ED10
    lsls r0, r4, #1
    adds r0, r0, r4
    lsls r0, r0, #3
    b .L0802ED16
    .align 2, 0
.L0802ED04: .4byte 0x0203A814
.L0802ED08: .4byte 0x0203A7F4
.L0802ED0C: .4byte gPlaySt
.L0802ED10:
    lsls r0, r4, #1
    adds r0, r0, r4
    lsls r0, r0, #2
.L0802ED16:
    movs r1, #0xa
    bl __divsi3
    strb r0, [r6, #8]
    adds r0, r6, #0
    bl UnitAutolevel
    strb r4, [r6, #8]
    movs r2, #0
    adds r3, r6, #0
    adds r3, #0x28
    movs r4, #0xb5
.L0802ED2E:
    adds r1, r3, r2
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0802ED38
    strb r4, [r1]
.L0802ED38:
    adds r2, #1
    cmp r2, #7
    ble .L0802ED2E
    movs r0, #8
    ldrsb r0, [r6, r0]
    cmp r0, #0
    bgt .L0802ED4A
    movs r0, #1
    strb r0, [r6, #8]
.L0802ED4A:
    movs r0, #8
    ldrsb r0, [r6, r0]
    cmp r0, #0x14
    ble .L0802ED56
    movs r0, #0x14
    strb r0, [r6, #8]
.L0802ED56:
    adds r0, r6, #0
    bl UnitCheckStatCaps
    adds r0, r6, #0
    bl GetUnitMaxHp
    adds r1, r0, #0
    adds r0, r6, #0
    bl SetUnitHp
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0802EC88

    thumb_func_start func_0802ED74
func_0802ED74: @ 0x0802ED74
    push {r4, lr}
    sub sp, #8
    ldr r1, .L0802EDBC @ =0x081C403C
    mov r0, sp
    movs r2, #8
    bl memcpy
    ldr r4, .L0802EDC0 @ =0x0203A7F4
    ldrb r0, [r4, #0xd]
    add r0, sp
    ldrb r0, [r0]
    bl MakeNewItem
    strh r0, [r4, #0x1a]
    ldrb r0, [r4, #0xe]
    add r0, sp
    ldrb r0, [r0]
    bl MakeNewItem
    strh r0, [r4, #0x1c]
    movs r0, #1
    strb r0, [r4, #0xc]
    ldrb r0, [r4, #0xd]
    cmp r0, #3
    bne .L0802EDAA
    movs r0, #2
    strb r0, [r4, #0xc]
.L0802EDAA:
    ldrb r0, [r4, #0xe]
    cmp r0, #3
    bne .L0802EDB4
    movs r0, #2
    strb r0, [r4, #0xc]
.L0802EDB4:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802EDBC: .4byte 0x081C403C
.L0802EDC0: .4byte 0x0203A7F4
    func_end func_0802ED74

    thumb_func_start func_0802EDC4
func_0802EDC4: @ 0x0802EDC4
    push {r4, r5, lr}
    sub sp, #0x1c
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    ldr r1, .L0802EDDC @ =0x081C4044
    mov r0, sp
    movs r2, #0x1a
    bl memcpy
    mov r4, sp
    b .L0802EE04
    .align 2, 0
.L0802EDDC: .4byte 0x081C4044
.L0802EDE0:
    adds r0, r5, #0
    bl GetItemIndex
    ldrb r1, [r4]
    cmp r0, r1
    bne .L0802EE02
    adds r4, #1
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0802EDFE
    bl MakeNewItem
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    b .L0802EE0A
.L0802EDFE:
    adds r0, r5, #0
    b .L0802EE0A
.L0802EE02:
    adds r4, #1
.L0802EE04:
    ldrb r0, [r4]
    cmp r0, #0xff
    bne .L0802EDE0
.L0802EE0A:
    add sp, #0x1c
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0802EDC4

    thumb_func_start func_0802EE14
func_0802EE14: @ 0x0802EE14
    push {r4, r5, r6, lr}
    movs r6, #0
    ldr r4, .L0802EE3C @ =0x0203A7F4
    ldr r0, [r4]
    bl GetUnitPower
    ldr r5, .L0802EE40 @ =0x0203A3F0
    adds r0, #5
    adds r1, r5, #0
    adds r1, #0x5a
    strh r0, [r1]
    movs r0, #0x14
    ldrsb r0, [r4, r0]
    cmp r0, #0
    beq .L0802EE44
    ldr r0, [r4]
    bl GetUnitResistance
    b .L0802EE4A
    .align 2, 0
.L0802EE3C: .4byte 0x0203A7F4
.L0802EE40: .4byte 0x0203A3F0
.L0802EE44:
    ldr r0, [r4]
    bl GetUnitDefense
.L0802EE4A:
    adds r1, r5, #0
    adds r1, #0x5c
    strh r0, [r1]
    ldr r4, .L0802EE74 @ =0x0203A7F4
    ldr r0, [r4, #4]
    bl GetUnitPower
    ldr r5, .L0802EE78 @ =0x0203A470
    adds r0, #5
    adds r1, r5, #0
    adds r1, #0x5a
    strh r0, [r1]
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    beq .L0802EE7C
    ldr r0, [r4, #4]
    bl GetUnitResistance
    b .L0802EE82
    .align 2, 0
.L0802EE74: .4byte 0x0203A7F4
.L0802EE78: .4byte 0x0203A470
.L0802EE7C:
    ldr r0, [r4, #4]
    bl GetUnitDefense
.L0802EE82:
    adds r1, r5, #0
    adds r1, #0x5c
    strh r0, [r1]
    ldr r0, .L0802EED0 @ =0x0203A3F0
    adds r0, #0x5a
    movs r1, #0
    ldrsh r4, [r0, r1]
    ldr r0, .L0802EED4 @ =0x0203A470
    adds r0, #0x5c
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r4, r0
    ldr r5, .L0802EED8 @ =0x0203A7F4
    ldr r0, [r5, #4]
    bl GetUnitMaxHp
    movs r1, #6
    bl __divsi3
    cmp r4, r0
    bge .L0802EF02
    movs r6, #1
    movs r2, #0x13
    ldrsb r2, [r5, r2]
    cmp r2, #0
    beq .L0802EEDC
    ldr r0, [r5, #4]
    ldrb r1, [r0, #0x18]
    subs r1, #4
    strb r1, [r0, #0x18]
    ldr r1, [r5, #4]
    movs r0, #0x18
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0802EEF0
    movs r0, #0
    strb r0, [r1, #0x18]
    b .L0802EEF0
    .align 2, 0
.L0802EED0: .4byte 0x0203A3F0
.L0802EED4: .4byte 0x0203A470
.L0802EED8: .4byte 0x0203A7F4
.L0802EEDC:
    ldr r0, [r5, #4]
    ldrb r1, [r0, #0x17]
    subs r1, #4
    strb r1, [r0, #0x17]
    ldr r1, [r5, #4]
    movs r0, #0x17
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L0802EEF0
    strb r2, [r1, #0x17]
.L0802EEF0:
    ldr r2, .L0802EF50 @ =0x0203A7F4
    ldr r1, [r2, #4]
    ldrb r0, [r1, #0x16]
    adds r0, #1
    strb r0, [r1, #0x16]
    ldr r1, [r2, #4]
    ldrb r0, [r1, #0x15]
    adds r0, #1
    strb r0, [r1, #0x15]
.L0802EF02:
    ldr r0, .L0802EF54 @ =0x0203A470
    adds r0, #0x5a
    movs r1, #0
    ldrsh r4, [r0, r1]
    ldr r0, .L0802EF58 @ =0x0203A3F0
    adds r0, #0x5c
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r4, r0
    ldr r5, .L0802EF50 @ =0x0203A7F4
    ldr r0, [r5]
    bl GetUnitMaxHp
    movs r1, #6
    bl __divsi3
    cmp r4, r0
    bge .L0802EF48
    movs r6, #1
    ldr r1, [r5, #4]
    ldrb r0, [r1, #0x14]
    adds r0, #3
    strb r0, [r1, #0x14]
    ldr r1, [r5, #4]
    ldrb r0, [r1, #0x16]
    adds r0, #2
    strb r0, [r1, #0x16]
    ldr r1, [r5, #4]
    ldrb r0, [r1, #0x15]
    adds r0, #2
    strb r0, [r1, #0x15]
    ldrh r0, [r5, #0x1c]
    bl func_0802EDC4
    strh r0, [r5, #0x1c]
.L0802EF48:
    adds r0, r6, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0802EF50: .4byte 0x0203A7F4
.L0802EF54: .4byte 0x0203A470
.L0802EF58: .4byte 0x0203A3F0
    func_end func_0802EE14

    thumb_func_start func_0802EF5C
func_0802EF5C: @ 0x0802EF5C
    push {r4, r5, r6, lr}
    ldr r4, .L0802EF88 @ =0x0203A7F4
    ldr r0, [r4]
    movs r1, #0x14
    ldrsb r1, [r4, r1]
    bl func_0802EC18
    strh r0, [r4, #0x16]
    ldr r0, [r4, #4]
    movs r1, #0x13
    ldrsb r1, [r4, r1]
    bl func_0802EC18
    strh r0, [r4, #0x18]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r1, [r4, #0x16]
    cmp r1, r0
    bls .L0802EF8C
    ldrh r1, [r4, #0x16]
    b .L0802EF8E
    .align 2, 0
.L0802EF88: .4byte 0x0203A7F4
.L0802EF8C:
    ldrh r1, [r4, #0x18]
.L0802EF8E:
    ldr r6, .L0802EFAC @ =0x0203A7F4
    ldrh r4, [r6, #0x16]
    ldrh r5, [r6, #0x18]
    subs r2, r4, r5
    cmp r2, #0
    bge .L0802EF9C
    subs r2, r5, r4
.L0802EF9C:
    movs r0, #0x64
    muls r0, r2, r0
    bl __divsi3
    cmp r0, #0x14
    bgt .L0802EFB0
    movs r0, #0
    b .L0802F0A6
    .align 2, 0
.L0802EFAC: .4byte 0x0203A7F4
.L0802EFB0:
    cmp r4, r5
    bhs .L0802F02C
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x12]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802EFCC
    subs r0, r2, #1
    strb r0, [r1, #0x12]
    ldr r1, [r6, #4]
    ldrb r0, [r1, #0x13]
    subs r0, #1
    strb r0, [r1, #0x13]
.L0802EFCC:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x14]
    movs r0, #0x14
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802EFDC
    subs r0, r2, #1
    strb r0, [r1, #0x14]
.L0802EFDC:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x15]
    movs r0, #0x15
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802EFEC
    subs r0, r2, #1
    strb r0, [r1, #0x15]
.L0802EFEC:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x16]
    movs r0, #0x16
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802EFFC
    subs r0, r2, #1
    strb r0, [r1, #0x16]
.L0802EFFC:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x17]
    movs r0, #0x17
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802F00C
    subs r0, r2, #1
    strb r0, [r1, #0x17]
.L0802F00C:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x18]
    movs r0, #0x18
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802F01C
    subs r0, r2, #1
    strb r0, [r1, #0x18]
.L0802F01C:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x19]
    movs r0, #0x19
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L0802F0A4
    subs r0, r2, #1
    b .L0802F0A2
.L0802F02C:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x12]
    movs r0, #0x12
    ldrsb r0, [r1, r0]
    cmp r0, #0x4f
    bgt .L0802F044
    adds r0, r2, #2
    strb r0, [r1, #0x12]
    ldr r1, [r6, #4]
    ldrb r0, [r1, #0x13]
    adds r0, #2
    strb r0, [r1, #0x13]
.L0802F044:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x14]
    movs r0, #0x14
    ldrsb r0, [r1, r0]
    cmp r0, #0x1d
    bgt .L0802F054
    adds r0, r2, #1
    strb r0, [r1, #0x14]
.L0802F054:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x15]
    movs r0, #0x15
    ldrsb r0, [r1, r0]
    cmp r0, #0x1d
    bgt .L0802F064
    adds r0, r2, #1
    strb r0, [r1, #0x15]
.L0802F064:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x16]
    movs r0, #0x16
    ldrsb r0, [r1, r0]
    cmp r0, #0x1d
    bgt .L0802F074
    adds r0, r2, #1
    strb r0, [r1, #0x16]
.L0802F074:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x17]
    movs r0, #0x17
    ldrsb r0, [r1, r0]
    cmp r0, #0x1d
    bgt .L0802F084
    adds r0, r2, #1
    strb r0, [r1, #0x17]
.L0802F084:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x18]
    movs r0, #0x18
    ldrsb r0, [r1, r0]
    cmp r0, #0x1d
    bgt .L0802F094
    adds r0, r2, #1
    strb r0, [r1, #0x18]
.L0802F094:
    ldr r1, [r6, #4]
    ldrb r2, [r1, #0x19]
    movs r0, #0x19
    ldrsb r0, [r1, r0]
    cmp r0, #0x1d
    bgt .L0802F0A4
    adds r0, r2, #1
.L0802F0A2:
    strb r0, [r1, #0x19]
.L0802F0A4:
    movs r0, #1
.L0802F0A6:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0802EF5C

    thumb_func_start func_0802F0AC
func_0802F0AC: @ 0x0802F0AC
    ldr r2, .L0802F0D0 @ =0x0203A7F4
    ldrh r1, [r2, #0x18]
    ldrh r3, [r2, #0x16]
    subs r0, r1, r3
    lsrs r1, r0, #0x1f
    adds r1, r0, r1
    asrs r1, r1, #1
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #1
    movs r1, #0xc8
    lsls r1, r1, #2
    adds r0, r0, r1
    cmp r0, #0
    bgt .L0802F0CC
    movs r0, #1
.L0802F0CC:
    strh r0, [r2, #8]
    bx lr
    .align 2, 0
.L0802F0D0: .4byte 0x0203A7F4
    func_end func_0802F0AC

    thumb_func_start ArenaGetMatchupGoldValue
ArenaGetMatchupGoldValue: @ 0x0802F0D4
    ldr r0, .L0802F0DC @ =0x0203A7F4
    movs r1, #8
    ldrsh r0, [r0, r1]
    bx lr
    .align 2, 0
.L0802F0DC: .4byte 0x0203A7F4
    func_end ArenaGetMatchupGoldValue

    thumb_func_start ArenaGetResult
ArenaGetResult: @ 0x0802F0E0
    ldr r0, .L0802F0E8 @ =0x0203A7F4
    ldrb r0, [r0, #0xa]
    bx lr
    .align 2, 0
.L0802F0E8: .4byte 0x0203A7F4
    func_end ArenaGetResult

    thumb_func_start ArenaSetResult
ArenaSetResult: @ 0x0802F0EC
    ldr r1, .L0802F0F4 @ =0x0203A7F4
    strb r0, [r1, #0xa]
    bx lr
    .align 2, 0
.L0802F0F4: .4byte 0x0203A7F4
    func_end ArenaSetResult

    thumb_func_start ArenaContinueBattle
ArenaContinueBattle: @ 0x0802F0F8
    push {r4, r5, lr}
    ldr r0, .L0802F144 @ =gBmSt
    adds r0, #0x3c
    ldrb r5, [r0]
    ldr r1, .L0802F148 @ =gActionSt
    ldr r4, .L0802F14C @ =0x0203A470
    ldrb r0, [r4, #0x13]
    strb r0, [r1, #0x15]
    movs r0, #4
    strb r0, [r1, #0x16]
    movs r0, #3
    bl WriteSuspendSave
    bl BattleUnwind
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802F122
    bl BattleApplyExpGains
.L0802F122:
    ldr r0, .L0802F150 @ =0x0203A7F4
    ldr r0, [r0]
    ldr r1, .L0802F154 @ =0x0203A3F0
    bl UpdateUnitDuringBattle
    cmp r5, #0
    beq .L0802F138
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802F13C
.L0802F138:
    bl func_080A02B8
.L0802F13C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802F144: .4byte gBmSt
.L0802F148: .4byte gActionSt
.L0802F14C: .4byte 0x0203A470
.L0802F150: .4byte 0x0203A7F4
.L0802F154: .4byte 0x0203A3F0
    func_end ArenaContinueBattle

    thumb_func_start func_0802F158
func_0802F158: @ 0x0802F158
    push {lr}
    adds r2, r0, #0
    adds r1, r2, #0
    adds r1, #0x30
    movs r0, #0xf
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #3
    beq .L0802F178
    adds r0, r2, #0
    bl func_0802EAC0
    cmp r0, #0
    blt .L0802F178
    movs r0, #1
    b .L0802F17A
.L0802F178:
    movs r0, #0
.L0802F17A:
    pop {r1}
    bx r1
    func_end func_0802F158

    thumb_func_start func_0802F180
func_0802F180: @ 0x0802F180
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r1, .L0802F1C0 @ =0x081C403C
    mov r0, sp
    movs r2, #8
    bl memcpy
    ldrh r1, [r4]
    adds r0, r5, #0
    bl CanUnitUseWeapon
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0802F1CA
    movs r1, #0
    ldr r2, [r5, #4]
.L0802F1A4:
    adds r0, r2, #0
    adds r0, #0x2c
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0802F1C4
    mov r2, sp
    adds r0, r2, r1
    ldrb r0, [r0]
    bl MakeNewItem
    strh r0, [r4]
    b .L0802F1CA
    .align 2, 0
.L0802F1C0: .4byte 0x081C403C
.L0802F1C4:
    adds r1, #1
    cmp r1, #7
    ble .L0802F1A4
.L0802F1CA:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0802F180

    thumb_func_start func_0802F1D4
func_0802F1D4: @ 0x0802F1D4
    push {r4, lr}
    ldr r4, .L0802F1F4 @ =0x0203A7F4
    ldr r0, [r4]
    adds r1, r4, #0
    adds r1, #0x1a
    bl func_0802F180
    ldr r0, [r4, #4]
    adds r4, #0x1c
    adds r1, r4, #0
    bl func_0802F180
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802F1F4: .4byte 0x0203A7F4
    func_end func_0802F1D4

    thumb_func_start func_0802F1F8
func_0802F1F8: @ 0x0802F1F8
    push {lr}
    ldr r0, .L0802F204 @ =gActionSt
    bl RandGetSt
    pop {r0}
    bx r0
    .align 2, 0
.L0802F204: .4byte gActionSt
    func_end func_0802F1F8

    thumb_func_start func_0802F208
func_0802F208: @ 0x0802F208
    push {lr}
    ldr r0, .L0802F214 @ =gActionSt
    bl RandSetSt
    pop {r0}
    bx r0
    .align 2, 0
.L0802F214: .4byte gActionSt
    func_end func_0802F208

    thumb_func_start DoAction
DoAction: @ 0x0802F218
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802F23C @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldr r1, .L0802F240 @ =gActiveUnit
    str r0, [r1]
    ldrb r0, [r4, #0x11]
    subs r0, #1
    cmp r0, #0x1a
    bhi .L0802F31E
    lsls r0, r0, #2
    ldr r1, .L0802F244 @ =.L0802F248
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802F23C: .4byte gActionSt
.L0802F240: .4byte gActiveUnit
.L0802F244: .4byte .L0802F248
.L0802F248: @ jump table
    .4byte .L0802F2B4 @ case 0
    .4byte .L0802F2E0 @ case 1
    .4byte .L0802F314 @ case 2
    .4byte .L0802F2E8 @ case 3
    .4byte .L0802F31E @ case 4
    .4byte .L0802F300 @ case 5
    .4byte .L0802F2C8 @ case 6
    .4byte .L0802F2D0 @ case 7
    .4byte .L0802F31E @ case 8
    .4byte .L0802F31E @ case 9
    .4byte .L0802F31E @ case 10
    .4byte .L0802F2F0 @ case 11
    .4byte .L0802F2F8 @ case 12
    .4byte .L0802F2D8 @ case 13
    .4byte .L0802F2D8 @ case 14
    .4byte .L0802F314 @ case 15
    .4byte .L0802F31E @ case 16
    .4byte .L0802F314 @ case 17
    .4byte .L0802F31E @ case 18
    .4byte .L0802F31E @ case 19
    .4byte .L0802F31E @ case 20
    .4byte .L0802F308 @ case 21
    .4byte .L0802F314 @ case 22
    .4byte .L0802F31E @ case 23
    .4byte .L0802F31E @ case 24
    .4byte .L0802F31E @ case 25
    .4byte .L0802F2B4 @ case 26
.L0802F2B4:
    ldr r0, .L0802F2C4 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    orrs r0, r1
    str r0, [r2, #0xc]
    b .L0802F31E
    .align 2, 0
.L0802F2C4: .4byte gActiveUnit
.L0802F2C8:
    adds r0, r5, #0
    bl DoRescueAction
    b .L0802F30E
.L0802F2D0:
    adds r0, r5, #0
    bl DoRescueDropAction
    b .L0802F30E
.L0802F2D8:
    adds r0, r5, #0
    bl func_0802F434
    b .L0802F30E
.L0802F2E0:
    adds r0, r5, #0
    bl func_0802F460
    b .L0802F30E
.L0802F2E8:
    adds r0, r5, #0
    bl func_0802F4C4
    b .L0802F30E
.L0802F2F0:
    adds r0, r5, #0
    bl func_0802F514
    b .L0802F30E
.L0802F2F8:
    adds r0, r5, #0
    bl func_0802F540
    b .L0802F30E
.L0802F300:
    adds r0, r5, #0
    bl func_0802F5E8
    b .L0802F30E
.L0802F308:
    adds r0, r5, #0
    bl func_0802F4B0
.L0802F30E:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L0802F320
.L0802F314:
    adds r0, r5, #0
    bl DoItemAction
    movs r0, #0
    b .L0802F320
.L0802F31E:
    movs r0, #1
.L0802F320:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end DoAction

    thumb_func_start DoRescueAction
DoRescueAction: @ 0x0802F328
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802F378 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r5, r0, #0
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r4, r0, #0
    bl func_080347A8
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    movs r3, #0x11
    ldrsb r3, [r4, r3]
    bl func_0801D3DC
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #0
    adds r3, r6, #0
    bl func_0801D47C
    adds r0, r5, #0
    adds r1, r4, #0
    bl UnitRescue
    adds r0, r4, #0
    bl HideUnitSprite
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F378: .4byte gActionSt
    func_end DoRescueAction

    thumb_func_start func_0802F37C
func_0802F37C: @ 0x0802F37C
    push {lr}
    ldr r1, [r0, #0x54]
    bl func_0803459C
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_0802F37C

    thumb_func_start func_0802F38C
func_0802F38C: @ 0x0802F38C
    push {lr}
    bl RefreshEntityMaps
    bl RenderMap
    bl RefreshUnitSprites
    bl ForceSyncUnitSpriteSheet
    pop {r1}
    bx r1
    func_end func_0802F38C

    thumb_func_start DoRescueDropAction
DoRescueDropAction: @ 0x0802F3A4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L0802F40C @ =gActionSt
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r5, r0, #0
    ldr r0, .L0802F410 @ =gBmMapHidden
    ldr r1, [r0]
    ldrb r2, [r4, #0x14]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r1, [r0]
    ldrb r0, [r4, #0x13]
    adds r1, r0, r1
    movs r0, #1
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0802F418
    ldrb r0, [r4, #0xc]
    bl GetUnit
    bl UnitSyncMovement
    ldrb r0, [r4, #0x13]
    ldrb r1, [r4, #0x14]
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    bl func_0801D3DC
    adds r1, r0, #0
    adds r0, r5, #0
    movs r2, #2
    adds r3, r6, #0
    bl func_0801D47C
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldrb r1, [r4, #0x13]
    ldrb r2, [r4, #0x14]
    bl UnitDrop
    ldr r0, .L0802F414 @ =0x08B96310
    adds r1, r6, #0
    bl Proc_StartBlocking
    str r5, [r0, #0x54]
    b .L0802F426
    .align 2, 0
.L0802F40C: .4byte gActionSt
.L0802F410: .4byte gBmMapHidden
.L0802F414: .4byte 0x08B96310
.L0802F418:
    ldr r0, .L0802F430 @ =gWorkingMoveScr
    movs r1, #0xa
    strb r1, [r0]
    movs r1, #4
    strb r1, [r0, #1]
    bl SetAutoMuMoveScript
.L0802F426:
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F430: .4byte gWorkingMoveScr
    func_end DoRescueDropAction

    thumb_func_start func_0802F434
func_0802F434: @ 0x0802F434
    push {r4, r5, lr}
    ldr r5, .L0802F45C @ =gActionSt
    ldrb r0, [r5, #0xc]
    bl GetUnit
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    ldrb r0, [r5, #0xc]
    bl GetUnit
    movs r1, #0x11
    ldrsb r1, [r0, r1]
    adds r0, r4, #0
    bl func_08078C14
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F45C: .4byte gActionSt
    func_end func_0802F434

    thumb_func_start func_0802F460
func_0802F460: @ 0x0802F460
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r5, .L0802F48C @ =gActionSt
    ldrb r0, [r5, #0xd]
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    bne .L0802F476
    bl func_0802A254
.L0802F476:
    ldrb r0, [r5, #0x12]
    cmp r0, #8
    bne .L0802F490
    ldrb r0, [r5, #0xc]
    bl GetUnit
    adds r1, r4, #0
    bl BattleGenerateBallistaReal
    b .L0802F49C
    .align 2, 0
.L0802F48C: .4byte gActionSt
.L0802F490:
    ldrb r0, [r5, #0xc]
    bl GetUnit
    adds r1, r4, #0
    bl BattleGenerateReal
.L0802F49C:
    ldr r0, .L0802F4AC @ =0x08B96360
    adds r1, r6, #0
    bl Proc_StartBlocking
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F4AC: .4byte 0x08B96360
    func_end func_0802F460

    thumb_func_start func_0802F4B0
func_0802F4B0: @ 0x0802F4B0
    push {lr}
    adds r1, r0, #0
    ldr r0, .L0802F4C0 @ =0x08B963C8
    bl Proc_StartBlocking
    movs r0, #0
    pop {r1}
    bx r1
    .align 2, 0
.L0802F4C0: .4byte 0x08B963C8
    func_end func_0802F4B0

    thumb_func_start func_0802F4C4
func_0802F4C4: @ 0x0802F4C4
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802F508 @ =gActionSt
    ldrb r0, [r4, #0xd]
    bl GetUnit
    ldr r1, [r0, #0xc]
    ldr r2, .L0802F50C @ =0xFFFFFBBD
    ands r1, r2
    str r1, [r0, #0xc]
    ldrb r0, [r4, #0xc]
    bl GetUnit
    movs r1, #1
    rsbs r1, r1, #0
    bl BattleInitItemEffect
    ldrb r0, [r4, #0xd]
    bl GetUnit
    bl BattleInitItemEffectTarget
    ldr r1, .L0802F510 @ =0x0203A3D8
    movs r0, #0x40
    strh r0, [r1]
    adds r0, r5, #0
    bl func_0802A5D0
    bl BeginBattleAnimations
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F508: .4byte gActionSt
.L0802F50C: .4byte 0xFFFFFBBD
.L0802F510: .4byte 0x0203A3D8
    func_end func_0802F4C4

    thumb_func_start func_0802F514
func_0802F514: @ 0x0802F514
    push {r4, r5, lr}
    ldr r4, .L0802F53C @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    ldr r0, [r0]
    ldrb r5, [r0, #4]
    ldrb r0, [r4, #0xd]
    bl GetUnit
    ldr r0, [r0]
    ldrb r1, [r0, #4]
    adds r0, r5, #0
    bl func_08078A40
    movs r0, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F53C: .4byte gActionSt
    func_end func_0802F514

    thumb_func_start func_0802F540
func_0802F540: @ 0x0802F540
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    ldr r0, .L0802F5E0 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    adds r4, r0, #0
    ldr r0, .L0802F5E4 @ =gActiveUnit
    mov sb, r0
    ldr r0, [r0]
    ldr r1, [r4]
    ldrb r1, [r1, #4]
    bl func_0802680C
    adds r7, r0, #0
    mov r1, sb
    ldr r0, [r1]
    ldr r0, [r0]
    ldrb r1, [r0, #4]
    adds r0, r4, #0
    bl func_0802680C
    mov r8, r0
    adds r0, r4, #0
    mov r1, r8
    bl func_08026778
    mov r2, sb
    ldr r0, [r2]
    adds r1, r7, #0
    bl func_08026744
    adds r0, r4, #0
    mov r1, r8
    bl func_08026744
    mov r1, sb
    ldr r0, [r1]
    ldr r1, [r0]
    ldrb r6, [r1, #4]
    ldr r1, [r4]
    ldrb r5, [r1, #4]
    adds r1, r7, #0
    bl func_08026694
    adds r2, r0, #0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08078A80
    mov r2, sb
    ldr r0, [r2]
    adds r0, #0x32
    adds r0, r0, r7
    ldrb r0, [r0]
    adds r4, #0x32
    add r4, r8
    ldrb r1, [r4]
    cmp r0, r1
    beq .L0802F5D0
    cmp r0, r1
    ble .L0802F5C2
    strb r0, [r4]
.L0802F5C2:
    cmp r0, r1
    bge .L0802F5D0
    mov r2, sb
    ldr r0, [r2]
    adds r0, #0x32
    adds r0, r0, r7
    strb r1, [r0]
.L0802F5D0:
    movs r0, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F5E0: .4byte gActionSt
.L0802F5E4: .4byte gActiveUnit
    func_end func_0802F540

    thumb_func_start func_0802F5E8
func_0802F5E8: @ 0x0802F5E8
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r4, .L0802F684 @ =gActionSt
    ldrb r0, [r4, #0xd]
    bl GetUnit
    adds r5, r0, #0
    ldr r0, [r5, #0xc]
    movs r1, #0x80
    lsls r1, r1, #5
    ands r0, r1
    cmp r0, #0
    beq .L0802F618
    ldrb r4, [r4, #0x12]
    adds r0, r5, #0
    bl GetUnitItemCount
    subs r0, #1
    cmp r4, r0
    bne .L0802F618
    ldr r0, [r5, #0xc]
    ldr r1, .L0802F688 @ =0xFFFFEFFF
    ands r0, r1
    str r0, [r5, #0xc]
.L0802F618:
    ldr r5, .L0802F684 @ =gActionSt
    ldrb r0, [r5, #0xd]
    bl GetUnit
    ldrb r2, [r5, #0x12]
    lsls r1, r2, #1
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r6, [r0]
    ldrb r0, [r5, #0xd]
    bl GetUnit
    ldrb r1, [r5, #0x12]
    bl UnitRemoveItem
    ldrb r0, [r5, #0xc]
    bl GetUnit
    adds r1, r6, #0
    bl UnitAddItem
    ldrb r0, [r5, #0xc]
    bl GetUnit
    movs r1, #1
    rsbs r1, r1, #0
    bl BattleInitItemEffect
    ldr r4, .L0802F68C @ =0x0203A470
    adds r1, r4, #0
    adds r1, #0x55
    movs r0, #1
    strb r0, [r1]
    ldrb r0, [r5, #0xd]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    bl InitBattleUnit
    adds r4, #0x48
    strh r6, [r4]
    adds r0, r7, #0
    bl func_0802A5D0
    bl EndAllMus
    bl func_0806F0DC
    movs r0, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0802F684: .4byte gActionSt
.L0802F688: .4byte 0xFFFFEFFF
.L0802F68C: .4byte 0x0203A470
    func_end func_0802F5E8

    thumb_func_start func_0802F690
func_0802F690: @ 0x0802F690
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r6, r0, #0
    movs r0, #0x38
    ldrsh r1, [r6, r0]
    movs r3, #0x3c
    ldrsh r2, [r6, r3]
    adds r7, r6, #0
    adds r7, #0x46
    movs r4, #0
    ldrsh r3, [r7, r4]
    adds r5, r6, #0
    adds r5, #0x48
    movs r4, #0
    ldrsh r0, [r5, r4]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    mov r8, r0
    movs r0, #0x3a
    ldrsh r1, [r6, r0]
    movs r3, #0x3e
    ldrsh r2, [r6, r3]
    movs r4, #0
    ldrsh r3, [r7, r4]
    movs r4, #0
    ldrsh r0, [r5, r4]
    str r0, [sp]
    movs r0, #0
    bl Interpolate
    adds r2, r0, #0
    adds r1, r6, #0
    adds r1, #0x40
    movs r3, #0
    ldrsh r0, [r1, r3]
    adds r2, r2, r0
    adds r3, r6, #0
    adds r3, #0x42
    ldrh r4, [r1]
    ldrh r0, [r3]
    adds r4, r4, r0
    strh r4, [r1]
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r1, [r3]
    ldrh r0, [r0]
    adds r0, r1, r0
    strh r0, [r3]
    ldr r1, .L0802F734 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r1, r3]
    mov r3, r8
    subs r4, r3, r0
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    subs r2, r2, r0
    ldr r3, [r6, #0x2c]
    movs r0, #7
    adds r1, r4, #0
    bl func_080260B4
    ldrh r0, [r7]
    adds r0, #1
    strh r0, [r7]
    lsls r0, r0, #0x10
    ldrh r5, [r5]
    lsls r1, r5, #0x10
    cmp r0, r1
    bne .L0802F728
    adds r0, r6, #0
    bl Proc_Break
.L0802F728:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802F734: .4byte gBmSt
    func_end func_0802F690

    thumb_func_start func_0802F738
func_0802F738: @ 0x0802F738
    push {lr}
    ldr r1, [r0, #0x2c]
    bl func_080345DC
    pop {r0}
    bx r0
    func_end func_0802F738

    thumb_func_start func_0802F744
func_0802F744: @ 0x0802F744
    push {lr}
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    pop {r0}
    bx r0
    func_end func_0802F744

    thumb_func_start func_0802F754
func_0802F754: @ 0x0802F754
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, r5, #0
    bl GetUnitCurrentHp
    adds r6, r0, #0
    cmp r6, #0
    bne .L0802F7F6
    ldr r0, [r5, #0xc]
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L0802F7F6
    ldr r0, .L0802F7FC @ =0x08B96338
    adds r1, r4, #0
    bl Proc_StartBlocking
    adds r4, r0, #0
    ldrb r0, [r5, #0x1b]
    bl GetUnit
    str r0, [r4, #0x2c]
    adds r1, r4, #0
    adds r1, #0x30
    adds r2, r4, #0
    adds r2, #0x34
    adds r0, r5, #0
    bl UnitGetDeathDropLocation
    ldr r1, [r4, #0x30]
    ldr r2, [r4, #0x34]
    adds r0, r5, #0
    bl UnitDrop
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    lsls r0, r0, #4
    strh r0, [r4, #0x38]
    movs r0, #0x11
    ldrsb r0, [r5, r0]
    lsls r0, r0, #4
    strh r0, [r4, #0x3a]
    ldr r0, [r4, #0x30]
    lsls r0, r0, #4
    strh r0, [r4, #0x3c]
    ldr r0, [r4, #0x34]
    lsls r0, r0, #4
    strh r0, [r4, #0x3e]
    adds r0, r4, #0
    adds r0, #0x40
    strh r6, [r0]
    adds r1, r4, #0
    adds r1, #0x42
    ldr r0, .L0802F800 @ =0x0000FFFB
    strh r0, [r1]
    adds r1, #2
    movs r0, #1
    strh r0, [r1]
    adds r0, r4, #0
    adds r0, #0x46
    strh r6, [r0]
    adds r1, #4
    movs r0, #0xb
    strh r0, [r1]
    ldr r0, [r4, #0x2c]
    bl GetUnitSMSId
    bl func_08024DEC
    bl ForceSyncUnitSpriteSheet
    ldr r0, .L0802F804 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0802F7F6
    movs r0, #0xac
    bl m4aSongNumStart
.L0802F7F6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802F7FC: .4byte 0x08B96338
.L0802F800: .4byte 0x0000FFFB
.L0802F804: .4byte gPlaySt
    func_end func_0802F754

    thumb_func_start func_0802F808
func_0802F808: @ 0x0802F808
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L0802F830
    ldr r0, [r4]
    ldrb r1, [r0, #4]
    cmp r1, #0x86
    beq .L0802F830
    ldrb r0, [r0, #4]
    ldr r1, [r5]
    ldrb r1, [r1, #4]
    movs r2, #2
    bl func_0809FEE8
    adds r0, r4, #0
    bl UnitKill
.L0802F830:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_0802F808

    thumb_func_start func_0802F838
func_0802F838: @ 0x0802F838
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L0802F856
    adds r0, r4, #0
    bl UnitKill
    ldr r0, [r4]
    ldrb r0, [r0, #4]
    movs r1, #0
    movs r2, #6
    bl func_0809FEE8
.L0802F856:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802F838

    thumb_func_start func_0802F85C
func_0802F85C: @ 0x0802F85C
    push {lr}
    adds r2, r0, #0
    ldr r1, .L0802F890 @ =0x0203A3D8
    movs r0, #0x80
    ldrh r1, [r1]
    ands r0, r1
    cmp r0, #0
    bne .L0802F884
    ldr r0, .L0802F894 @ =0x0203A3F0
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0802F88C
    ldr r0, .L0802F898 @ =0x0203A470
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0802F88C
.L0802F884:
    adds r0, r2, #0
    movs r1, #1
    bl Proc_Goto
.L0802F88C:
    pop {r0}
    bx r0
    .align 2, 0
.L0802F890: .4byte 0x0203A3D8
.L0802F894: .4byte 0x0203A3F0
.L0802F898: .4byte 0x0203A470
    func_end func_0802F85C

    thumb_func_start func_0802F89C
func_0802F89C: @ 0x0802F89C
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L0802F8B4
    ldr r0, [r4]
    ldrb r0, [r0, #4]
    cmp r0, #0x86
    beq .L0802F8B4
    movs r0, #1
    b .L0802F8B6
.L0802F8B4:
    movs r0, #0
.L0802F8B6:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0802F89C

    thumb_func_start func_0802F8BC
func_0802F8BC: @ 0x0802F8BC
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    movs r0, #0
    str r0, [r6, #0x54]
    ldr r7, .L0802F944 @ =0x0203A3F0
    adds r0, r7, #0
    bl func_0802F89C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802F8E6
    ldr r0, .L0802F948 @ =0x08C9D00C
    bl Proc_Find
    adds r4, r0, #0
    bl StartMuDeathFade
    str r4, [r6, #0x54]
    adds r0, r7, #0
    bl func_080347A8
.L0802F8E6:
    ldr r5, .L0802F94C @ =0x0203A470
    adds r0, r5, #0
    bl func_0802F89C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802F93E
    movs r0, #0xb
    ldrsb r0, [r5, r0]
    bl GetUnit
    ldr r1, [r0, #0xc]
    movs r2, #1
    orrs r1, r2
    str r1, [r0, #0xc]
    bl func_080347A8
    bl RefreshUnitSprites
    adds r0, r5, #0
    bl StartMu
    adds r4, r0, #0
    movs r0, #0x10
    ldrsb r0, [r7, r0]
    movs r1, #0x11
    ldrsb r1, [r7, r1]
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    bl func_0806F478
    ldr r1, .L0802F950 @ =gWorkingMoveScr
    strb r0, [r1]
    movs r0, #4
    strb r0, [r1, #1]
    adds r0, r4, #0
    bl SetMuMoveScript
    adds r0, r4, #0
    bl StartMuDeathFade
    str r4, [r6, #0x54]
.L0802F93E:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802F944: .4byte 0x0203A3F0
.L0802F948: .4byte 0x08C9D00C
.L0802F94C: .4byte 0x0203A470
.L0802F950: .4byte gWorkingMoveScr
    func_end func_0802F8BC

    thumb_func_start func_0802F954
func_0802F954: @ 0x0802F954
    push {lr}
    ldr r0, [r0, #0x54]
    bl EndMu
    pop {r0}
    bx r0
    func_end func_0802F954

    thumb_func_start func_0802F960
func_0802F960: @ 0x0802F960
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r0, #0x64
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetUnit
    adds r6, r0, #0
    adds r0, r5, #0
    adds r0, #0x66
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetUnit
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_0802F754
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_0802F754
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_0802F808
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0802F808
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_0802F960

    thumb_func_start func_0802F9A4
func_0802F9A4: @ 0x0802F9A4
    push {r4, lr}
    bl GetActiveMapSong
    adds r4, r0, #0
    bl GetCurrentBgmSong
    cmp r0, r4
    beq .L0802F9BE
    adds r0, r4, #0
    movs r1, #6
    movs r2, #0
    bl StartBgmExt
.L0802F9BE:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802F9A4

    thumb_func_start func_0802F9C4
func_0802F9C4: @ 0x0802F9C4
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    movs r6, #0
    movs r2, #0
    ldr r5, .L0802FA58 @ =0x0203A3F0
    movs r1, #0xb
    ldrsb r1, [r5, r1]
    adds r0, #0x64
    strh r1, [r0]
    ldr r4, .L0802FA5C @ =0x0203A470
    movs r0, #0xb
    ldrsb r0, [r4, r0]
    adds r1, r7, #0
    adds r1, #0x66
    strh r0, [r1]
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L0802FA00
    movs r0, #0xb
    ldrsb r0, [r5, r0]
    bl GetUnit
    adds r6, r0, #0
    movs r0, #0xb
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r2, r0, #0
.L0802FA00:
    movs r0, #0x13
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L0802FA1C
    movs r0, #0xb
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r6, r0, #0
    movs r0, #0xb
    ldrsb r0, [r5, r0]
    bl GetUnit
    adds r2, r0, #0
.L0802FA1C:
    cmp r6, #0
    beq .L0802FA60
    ldr r0, [r6, #0xc]
    movs r1, #0x80
    lsls r1, r1, #5
    ands r0, r1
    cmp r0, #0
    beq .L0802FA60
    ldrh r0, [r6, #0x1e]
    cmp r0, #0
    beq .L0802FA60
    movs r0, #0xc0
    ldrb r1, [r2, #0xb]
    ands r0, r1
    cmp r0, #0
    bne .L0802FA60
    adds r0, r6, #0
    str r2, [sp]
    bl GetUnitLastItem
    adds r1, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r2, [sp]
    adds r0, r2, #0
    adds r2, r7, #0
    bl StartGiveItem
    movs r0, #0
    b .L0802FA62
    .align 2, 0
.L0802FA58: .4byte 0x0203A3F0
.L0802FA5C: .4byte 0x0203A470
.L0802FA60:
    movs r0, #1
.L0802FA62:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802F9C4

    thumb_func_start func_0802FA6C
func_0802FA6C: @ 0x0802FA6C
    push {lr}
    adds r2, r0, #0
    ldr r1, .L0802FA90 @ =0x0203A470
    movs r0, #1
    strb r0, [r1, #0x12]
    strb r0, [r1, #0x13]
    ldr r0, .L0802FA94 @ =0x0203A3F0
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L0802FA8C
    adds r0, r2, #0
    movs r1, #1
    bl Proc_Goto
.L0802FA8C:
    pop {r0}
    bx r0
    .align 2, 0
.L0802FA90: .4byte 0x0203A470
.L0802FA94: .4byte 0x0203A3F0
    func_end func_0802FA6C

    thumb_func_start func_0802FA98
func_0802FA98: @ 0x0802FA98
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L0802FAB4 @ =gActiveUnit
    ldr r0, [r4]
    bl func_0802F838
    ldr r1, [r4]
    adds r0, r5, #0
    bl func_0802F754
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802FAB4: .4byte gActiveUnit
    func_end func_0802FA98

    thumb_func_start func_0802FAB8
func_0802FAB8: @ 0x0802FAB8
    ldr r3, .L0802FAC8 @ =0x08B96444
    ldr r2, [r3]
    adds r2, #0x29
    strb r0, [r2]
    ldr r0, [r3]
    adds r0, #0x2a
    strb r1, [r0]
    bx lr
    .align 2, 0
.L0802FAC8: .4byte 0x08B96444
    func_end func_0802FAB8

    thumb_func_start func_0802FACC
func_0802FACC: @ 0x0802FACC
    push {r4, r5, r6, r7, lr}
    ldr r3, .L0802FB68 @ =0x08B96444
    ldr r1, [r3]
    adds r2, r1, #0
    adds r2, #0x2c
    movs r1, #0
    ldrsb r1, [r2, r1]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    blt .L0802FB60
    subs r0, #1
    strb r0, [r2]
    ldr r2, [r3]
    adds r0, r2, #0
    adds r0, #0x2c
    movs r1, #0
    ldrsb r1, [r0, r1]
    adds r0, #0x29
    adds r0, r0, r1
    adds r1, r2, #0
    adds r1, #0x2b
    ldrb r1, [r1]
    strb r1, [r0]
    movs r5, #1
    ldr r0, [r3]
    adds r0, #0x2c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r5, r0
    bgt .L0802FB60
    adds r7, r3, #0
.L0802FB0E:
    bl func_0801B1DC
    ldr r3, [r7]
    lsls r4, r5, #0x18
    asrs r4, r4, #0x18
    adds r5, r3, #0
    adds r5, #0x55
    adds r6, r5, r4
    subs r1, r4, #1
    adds r5, r5, r1
    adds r1, r3, #0
    adds r1, #0x41
    adds r1, r1, r4
    movs r2, #0
    ldrsb r2, [r1, r2]
    ldr r1, .L0802FB6C @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r2, r2, #2
    adds r2, r2, r1
    adds r3, #0x2d
    adds r3, r3, r4
    ldrb r3, [r3]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    ldr r1, [r2]
    adds r1, r1, r3
    ldrb r1, [r1]
    adds r0, r1, r0
    ldrb r5, [r5]
    ldrb r0, [r0]
    subs r0, r5, r0
    strb r0, [r6]
    adds r4, #1
    lsls r4, r4, #0x18
    ldr r0, [r7]
    adds r0, #0x2c
    lsrs r5, r4, #0x18
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    cmp r4, r0
    ble .L0802FB0E
.L0802FB60:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0802FB68: .4byte 0x08B96444
.L0802FB6C: .4byte gBmMapTerrain
    func_end func_0802FACC

    thumb_func_start func_0802FB70
func_0802FB70: @ 0x0802FB70
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    lsls r5, r5, #0x18
    lsrs r5, r5, #0x18
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r6, .L0802FBEC @ =0x08B96444
    ldr r0, [r6]
    adds r0, #0x2c
    ldrb r1, [r0]
    adds r1, #1
    strb r1, [r0]
    ldr r0, [r6]
    adds r1, r0, #0
    adds r1, #0x2c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, #0x2d
    adds r0, r0, r1
    strb r5, [r0]
    ldr r0, [r6]
    adds r1, r0, #0
    adds r1, #0x2c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, #0x41
    adds r0, r0, r1
    strb r4, [r0]
    bl func_0801B1DC
    ldr r2, [r6]
    adds r1, r2, #0
    adds r1, #0x2c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r2, #0x55
    adds r3, r2, r1
    subs r1, #1
    adds r2, r2, r1
    lsls r4, r4, #0x18
    ldr r1, .L0802FBF0 @ =gBmMapTerrain
    ldr r1, [r1]
    asrs r4, r4, #0x16
    adds r4, r4, r1
    lsls r5, r5, #0x18
    asrs r5, r5, #0x18
    ldr r1, [r4]
    adds r1, r1, r5
    ldrb r1, [r1]
    adds r0, r1, r0
    ldrb r2, [r2]
    ldrb r0, [r0]
    subs r0, r2, r0
    strb r0, [r3]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0802FBEC: .4byte 0x08B96444
.L0802FBF0: .4byte gBmMapTerrain
    func_end func_0802FB70

    thumb_func_start func_0802FBF4
func_0802FBF4: @ 0x0802FBF4
    push {r4, r5, r6, r7, lr}
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    lsls r1, r1, #0x18
    lsrs r5, r1, #0x18
    movs r1, #0
    ldr r0, .L0802FC48 @ =0x08B96444
    ldr r2, [r0]
    adds r0, r2, #0
    adds r0, #0x2c
    movs r3, #0
    ldrsb r3, [r0, r3]
    cmp r1, r3
    bgt .L0802FC5A
    mov ip, r2
    lsls r0, r4, #0x18
    asrs r7, r0, #0x18
    mov r6, ip
    adds r6, #0x41
    lsls r0, r5, #0x18
    asrs r5, r0, #0x18
    adds r4, r3, #0
.L0802FC20:
    lsls r0, r1, #0x18
    asrs r2, r0, #0x18
    mov r1, ip
    adds r1, #0x2d
    adds r1, r1, r2
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r3, r0, #0
    cmp r1, r7
    bne .L0802FC4C
    adds r0, r6, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, r5
    bne .L0802FC4C
    adds r0, r2, #0
    b .L0802FC5E
    .align 2, 0
.L0802FC48: .4byte 0x08B96444
.L0802FC4C:
    movs r1, #0x80
    lsls r1, r1, #0x11
    adds r0, r3, r1
    lsrs r1, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, r4
    ble .L0802FC20
.L0802FC5A:
    movs r0, #1
    rsbs r0, r0, #0
.L0802FC5E:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802FBF4

    thumb_func_start func_0802FC64
func_0802FC64: @ 0x0802FC64
    push {r4, lr}
    movs r4, #0
.L0802FC68:
    ldr r2, .L0802FC90 @ =gWorkingMoveScr
    adds r1, r4, #0
    lsls r0, r1, #0x18
    movs r3, #0x80
    lsls r3, r3, #0x11
    adds r0, r0, r3
    lsrs r4, r0, #0x18
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r1, r1, r2
    ldrb r0, [r1]
    adds r0, #1
    cmp r0, #0xa
    bhi .L0802FC68
    lsls r0, r0, #2
    ldr r1, .L0802FC94 @ =.L0802FC98
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802FC90: .4byte gWorkingMoveScr
.L0802FC94: .4byte .L0802FC98
.L0802FC98: @ jump table
    .4byte .L0802FD5C @ case 0
    .4byte .L0802FCC4 @ case 1
    .4byte .L0802FCE0 @ case 2
    .4byte .L0802FD30 @ case 3
    .4byte .L0802FD0C @ case 4
    .4byte .L0802FD5C @ case 5
    .4byte .L0802FC68 @ case 6
    .4byte .L0802FC68 @ case 7
    .4byte .L0802FC68 @ case 8
    .4byte .L0802FC68 @ case 9
    .4byte .L0802FC68 @ case 10
.L0802FCC4:
    ldr r0, .L0802FCDC @ =0x08B96444
    ldr r1, [r0]
    adds r0, r1, #0
    adds r0, #0x2c
    movs r2, #0
    ldrsb r2, [r0, r2]
    adds r0, #1
    adds r0, r0, r2
    ldrb r0, [r0]
    subs r0, #1
    b .L0802FCF4
    .align 2, 0
.L0802FCDC: .4byte 0x08B96444
.L0802FCE0:
    ldr r0, .L0802FD08 @ =0x08B96444
    ldr r1, [r0]
    adds r0, r1, #0
    adds r0, #0x2c
    movs r2, #0
    ldrsb r2, [r0, r2]
    adds r0, #1
    adds r0, r0, r2
    ldrb r0, [r0]
    adds r0, #1
.L0802FCF4:
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, #0x41
    adds r1, r1, r2
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_0802FB70
    b .L0802FC68
    .align 2, 0
.L0802FD08: .4byte 0x08B96444
.L0802FD0C:
    ldr r0, .L0802FD2C @ =0x08B96444
    ldr r1, [r0]
    adds r0, r1, #0
    adds r0, #0x2c
    movs r2, #0
    ldrsb r2, [r0, r2]
    adds r0, #1
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, #0x41
    adds r1, r1, r2
    ldrb r1, [r1]
    subs r1, #1
    b .L0802FD4E
    .align 2, 0
.L0802FD2C: .4byte 0x08B96444
.L0802FD30:
    ldr r0, .L0802FD58 @ =0x08B96444
    ldr r1, [r0]
    adds r0, r1, #0
    adds r0, #0x2c
    movs r2, #0
    ldrsb r2, [r0, r2]
    adds r0, #1
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r1, #0x41
    adds r1, r1, r2
    ldrb r1, [r1]
    adds r1, #1
.L0802FD4E:
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_0802FB70
    b .L0802FC68
    .align 2, 0
.L0802FD58: .4byte 0x08B96444
.L0802FD5C:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0802FC64

    thumb_func_start GetMovementScriptFromPath
GetMovementScriptFromPath: @ 0x0802FD64
    push {r4, r5, r6, r7, lr}
    movs r6, #1
    ldr r2, .L0802FDA8 @ =0x08B96444
    ldr r0, [r2]
    adds r0, #0x2c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r7, r2, #0
    ldr r1, .L0802FDAC @ =gWorkingMoveScr
    mov ip, r1
    cmp r6, r0
    bgt .L0802FDF6
    mov r5, ip
.L0802FD80:
    ldr r4, [r2]
    lsls r0, r6, #0x18
    asrs r3, r0, #0x18
    adds r0, r4, #0
    adds r0, #0x2d
    adds r1, r0, r3
    subs r2, r3, #1
    adds r0, r0, r2
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bge .L0802FDB0
    adds r1, r2, r5
    movs r0, #0
    b .L0802FDDC
    .align 2, 0
.L0802FDA8: .4byte 0x08B96444
.L0802FDAC: .4byte gWorkingMoveScr
.L0802FDB0:
    cmp r1, r0
    ble .L0802FDBA
    adds r1, r2, r5
    movs r0, #1
    b .L0802FDDC
.L0802FDBA:
    adds r0, r4, #0
    adds r0, #0x41
    adds r1, r0, r3
    adds r0, r0, r2
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bge .L0802FDD8
    adds r1, r2, r5
    movs r0, #3
    b .L0802FDDC
.L0802FDD8:
    adds r1, r2, r5
    movs r0, #2
.L0802FDDC:
    strb r0, [r1]
    lsls r0, r6, #0x18
    movs r1, #0x80
    lsls r1, r1, #0x11
    adds r0, r0, r1
    adds r2, r7, #0
    ldr r1, [r2]
    adds r1, #0x2c
    lsrs r6, r0, #0x18
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    cmp r0, r1
    ble .L0802FD80
.L0802FDF6:
    lsls r0, r6, #0x18
    asrs r0, r0, #0x18
    subs r0, #1
    add r0, ip
    movs r1, #4
    strb r1, [r0]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end GetMovementScriptFromPath

    thumb_func_start func_0802FE08
func_0802FE08: @ 0x0802FE08
    push {r4, lr}
    ldr r0, .L0802FE44 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, .L0802FE48 @ =0x08B96444
    ldr r3, [r1]
    adds r1, r3, #0
    adds r1, #0x2c
    movs r4, #0
    ldrsb r4, [r1, r4]
    adds r1, #1
    adds r1, r1, r4
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r2, r3, #0
    adds r2, #0x41
    adds r2, r2, r4
    ldrb r2, [r2]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r3, #0x55
    adds r3, r3, r4
    ldrb r3, [r3]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    bl MapFloodOnWorkingMap
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0802FE44: .4byte gActiveUnit
.L0802FE48: .4byte 0x08B96444
    func_end func_0802FE08

    thumb_func_start func_0802FE4C
func_0802FE4C: @ 0x0802FE4C
    push {lr}
    movs r0, #1
    bl func_0802FACC
    bl func_0802FE08
    ldr r1, .L0802FE70 @ =gBmSt
    movs r2, #0x14
    ldrsh r0, [r1, r2]
    movs r2, #0x16
    ldrsh r1, [r1, r2]
    ldr r2, .L0802FE74 @ =gWorkingMoveScr
    bl BuildBestMoveScript
    bl func_0802FC64
    pop {r0}
    bx r0
    .align 2, 0
.L0802FE70: .4byte gBmSt
.L0802FE74: .4byte gWorkingMoveScr
    func_end func_0802FE4C

    thumb_func_start func_0802FE78
func_0802FE78: @ 0x0802FE78
    push {r4, r5, r6, r7, lr}
    ldr r0, .L0802FE84 @ =0x08B96444
    ldr r0, [r0]
    adds r0, #0x2c
    ldrb r1, [r0]
    b .L0802FEE4
    .align 2, 0
.L0802FE84: .4byte 0x08B96444
.L0802FE88:
    asrs r4, r0, #0x18
    movs r2, #0xff
    lsls r2, r2, #0x18
    adds r0, r0, r2
    lsrs r3, r0, #0x18
    lsls r2, r3, #0x18
    lsls r7, r1, #0x18
    cmp r2, #0
    blt .L0802FEDC
    ldr r0, .L0802FEC8 @ =0x08B96444
    ldr r1, [r0]
    adds r5, r1, #0
    adds r5, #0x2d
    adds r0, r5, r4
    movs r6, #0
    ldrsb r6, [r0, r6]
    adds r1, #0x41
    adds r4, r1, r4
.L0802FEAC:
    asrs r2, r2, #0x18
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r6, r0
    bne .L0802FECC
    adds r0, r1, r2
    ldrb r2, [r4]
    ldrb r0, [r0]
    cmp r2, r0
    bne .L0802FECC
    movs r0, #0
    b .L0802FEEC
    .align 2, 0
.L0802FEC8: .4byte 0x08B96444
.L0802FECC:
    lsls r0, r3, #0x18
    movs r2, #0xff
    lsls r2, r2, #0x18
    adds r0, r0, r2
    lsrs r3, r0, #0x18
    lsls r2, r3, #0x18
    cmp r2, #0
    bge .L0802FEAC
.L0802FEDC:
    movs r1, #0xff
    lsls r1, r1, #0x18
    adds r0, r7, r1
    lsrs r1, r0, #0x18
.L0802FEE4:
    lsls r0, r1, #0x18
    cmp r0, #0
    bgt .L0802FE88
    movs r0, #1
.L0802FEEC:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    func_end func_0802FE78

    thumb_func_start PathArrowDisp_Init
PathArrowDisp_Init: @ 0x0802FEF4
    push {r4, r5, lr}
    adds r4, r0, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    ldr r0, .L0802FF64 @ =0x083FDE3C
    ldr r1, .L0802FF68 @ =0x06015E00
    bl Decompress
    ldr r0, .L0802FF6C @ =0x083FE074
    movs r1, #0x98
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    cmp r4, #0
    bne .L0802FF5C
    ldr r5, .L0802FF70 @ =0x08B96444
    ldr r2, [r5]
    ldr r4, .L0802FF74 @ =gActiveUnit
    ldr r1, [r4]
    ldr r0, [r1, #4]
    ldrb r1, [r1, #0x1d]
    ldrb r0, [r0, #0x12]
    adds r0, r1, r0
    ldr r1, .L0802FF78 @ =gActionSt
    ldrb r1, [r1, #0x10]
    subs r0, r0, r1
    adds r2, #0x2b
    strb r0, [r2]
    movs r0, #0
    bl func_0802FACC
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_0802FB70
    ldr r0, [r5]
    adds r1, r0, #0
    adds r1, #0x2b
    ldrb r1, [r1]
    adds r0, #0x55
    strb r1, [r0]
    ldr r1, .L0802FF7C @ =0x0000FFFF
    adds r0, r1, #0
    bl func_0802FAB8
    bl func_0802FF80
.L0802FF5C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0802FF64: .4byte 0x083FDE3C
.L0802FF68: .4byte 0x06015E00
.L0802FF6C: .4byte 0x083FE074
.L0802FF70: .4byte 0x08B96444
.L0802FF74: .4byte gActiveUnit
.L0802FF78: .4byte gActionSt
.L0802FF7C: .4byte 0x0000FFFF
    func_end PathArrowDisp_Init

    thumb_func_start func_0802FF80
func_0802FF80: @ 0x0802FF80
    push {r4, r5, r6, r7, lr}
    ldr r7, .L08030004 @ =0x08B96444
    ldr r2, [r7]
    adds r0, r2, #0
    adds r0, #0x29
    ldr r5, .L08030008 @ =gBmSt
    movs r1, #0
    ldrsb r1, [r0, r1]
    movs r3, #0x14
    ldrsh r0, [r5, r3]
    cmp r1, r0
    bne .L0802FFAA
    adds r0, r2, #0
    adds r0, #0x2a
    movs r1, #0
    ldrsb r1, [r0, r1]
    movs r2, #0x16
    ldrsh r0, [r5, r2]
    cmp r1, r0
    bne .L0802FFAA
    b .L0803012C
.L0802FFAA:
    ldrh r0, [r5, #0x14]
    ldrh r1, [r5, #0x16]
    bl func_0802FAB8
    ldr r0, .L0803000C @ =gBmMapMovement
    ldr r0, [r0]
    bl func_0801B190
    movs r3, #0x16
    ldrsh r0, [r5, r3]
    ldr r1, .L08030010 @ =gWorkingMap
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0x14
    ldrsh r1, [r5, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r4, #1
    rsbs r4, r4, #0
    cmp r0, r4
    bne .L0802FFDE
    b .L0803012C
.L0802FFDE:
    movs r0, #0x14
    ldrsb r0, [r5, r0]
    movs r1, #0x16
    ldrsb r1, [r5, r1]
    bl func_0802FBF4
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, r4
    beq .L08030014
    lsls r0, r1, #0x18
    movs r3, #0x80
    lsls r3, r3, #0x11
    adds r0, r0, r3
    asrs r0, r0, #0x18
    bl func_0802FACC
    b .L0803012C
    .align 2, 0
.L08030004: .4byte 0x08B96444
.L08030008: .4byte gBmSt
.L0803000C: .4byte gBmMapMovement
.L08030010: .4byte gWorkingMap
.L08030014:
    ldr r4, [r7]
    adds r0, r4, #0
    adds r0, #0x2c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r4, #0x55
    adds r4, r4, r0
    bl func_0801B1DC
    movs r1, #0x16
    ldrsh r6, [r5, r1]
    ldr r1, .L08030084 @ =gBmMapTerrain
    ldr r2, [r1]
    lsls r1, r6, #2
    adds r1, r1, r2
    movs r2, #0x14
    ldrsh r3, [r5, r2]
    ldr r1, [r1]
    adds r1, r1, r3
    ldrb r1, [r1]
    adds r0, r1, r0
    movs r1, #0
    ldrsb r1, [r4, r1]
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    blt .L080300A8
    ldr r4, [r7]
    adds r0, r4, #0
    adds r0, #0x2c
    movs r1, #0
    ldrsb r1, [r0, r1]
    adds r0, #1
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    subs r2, r0, r3
    cmp r2, #0
    bge .L0803006A
    subs r2, r3, r0
.L0803006A:
    adds r0, r4, #0
    adds r0, #0x41
    adds r0, r0, r1
    movs r1, #0
    ldrsb r1, [r0, r1]
    subs r0, r1, r6
    cmp r0, #0
    blt .L08030088
    adds r0, r2, r0
    cmp r0, #1
    beq .L08030090
    b .L080300A8
    .align 2, 0
.L08030084: .4byte gBmMapTerrain
.L08030088:
    subs r0, r6, r1
    adds r0, r2, r0
    cmp r0, #1
    bne .L080300A8
.L08030090:
    ldr r1, .L080300A4 @ =gBmSt
    movs r0, #0x14
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x16]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl func_0802FB70
    b .L0803012C
    .align 2, 0
.L080300A4: .4byte gBmSt
.L080300A8:
    ldr r0, .L08030100 @ =0x08B96444
    ldr r0, [r0]
    adds r1, r0, #0
    adds r1, #0x2c
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    adds r0, #0x55
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L080300CA
    movs r0, #1
    bl func_0802FACC
.L080300CA:
    ldr r0, .L08030104 @ =gBmMapOther
    ldr r0, [r0]
    bl func_0801B190
    bl func_0802FE08
    ldr r2, .L08030108 @ =gBmSt
    movs r3, #0x16
    ldrsh r4, [r2, r3]
    ldr r0, .L0803010C @ =gWorkingMap
    ldr r1, [r0]
    lsls r0, r4, #2
    adds r0, r0, r1
    movs r1, #0x14
    ldrsh r3, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r3
    movs r1, #0
    ldrsb r1, [r0, r1]
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bne .L08030110
    bl func_0802FE4C
    b .L0803012C
    .align 2, 0
.L08030100: .4byte 0x08B96444
.L08030104: .4byte gBmMapOther
.L08030108: .4byte gBmSt
.L0803010C: .4byte gWorkingMap
.L08030110:
    ldr r2, .L08030134 @ =gWorkingMoveScr
    adds r0, r3, #0
    adds r1, r4, #0
    bl BuildBestMoveScript
    bl func_0802FC64
    bl func_0802FE78
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803012C
    bl func_0802FE4C
.L0803012C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08030134: .4byte gWorkingMoveScr
    func_end func_0802FF80

    thumb_func_start func_08030138
func_08030138: @ 0x08030138
    push {r4, lr}
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    cmp r2, #0
    bne .L08030146
    movs r0, #0
    b .L08030196
.L08030146:
    ldr r0, .L08030168 @ =0x08B96444
    ldr r3, [r0]
    subs r4, r2, #1
    adds r0, r3, #0
    adds r0, #0x2d
    adds r1, r0, r4
    adds r0, r0, r2
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bge .L0803016C
    movs r0, #3
    b .L08030196
    .align 2, 0
.L08030168: .4byte 0x08B96444
.L0803016C:
    cmp r1, r0
    ble .L08030174
    movs r0, #1
    b .L08030196
.L08030174:
    adds r0, r3, #0
    adds r0, #0x41
    adds r1, r0, r4
    adds r0, r0, r2
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bge .L08030190
    movs r0, #4
    b .L08030196
.L08030190:
    cmp r1, r0
    ble .L08030196
    movs r0, #2
.L08030196:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08030138

    thumb_func_start func_0803019C
func_0803019C: @ 0x0803019C
    push {r4, lr}
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    ldr r0, .L080301B8 @ =0x08B96444
    ldr r3, [r0]
    adds r0, r3, #0
    adds r0, #0x2c
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r2, r0
    bne .L080301BC
    movs r0, #0
    b .L08030204
    .align 2, 0
.L080301B8: .4byte 0x08B96444
.L080301BC:
    adds r0, r3, #0
    adds r0, #0x2d
    adds r1, r0, r2
    adds r4, r2, #1
    adds r0, r0, r4
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bge .L080301DA
    movs r0, #1
    b .L08030204
.L080301DA:
    cmp r1, r0
    ble .L080301E2
    movs r0, #3
    b .L08030204
.L080301E2:
    adds r0, r3, #0
    adds r0, #0x41
    adds r1, r0, r2
    adds r0, r0, r4
    ldrb r1, [r1]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    bge .L080301FE
    movs r0, #2
    b .L08030204
.L080301FE:
    cmp r1, r0
    ble .L08030204
    movs r0, #4
.L08030204:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_0803019C

    thumb_func_start func_0803020C
func_0803020C: @ 0x0803020C
    push {r4, r5, r6, lr}
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    lsls r2, r2, #0x18
    lsrs r5, r2, #0x18
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    ldr r2, .L08030244 @ =gBmSt
    movs r6, #0xe
    ldrsh r0, [r2, r6]
    subs r1, r1, r0
    cmn r1, r3
    ble .L08030248
    cmp r1, #0x9f
    bgt .L08030248
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    movs r3, #0xc
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    cmn r0, r5
    ble .L08030248
    cmp r0, #0xef
    bgt .L08030248
    movs r0, #1
    b .L0803024A
    .align 2, 0
.L08030244: .4byte gBmSt
.L08030248:
    movs r0, #0
.L0803024A:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_0803020C

    thumb_func_start func_08030250
func_08030250: @ 0x08030250
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    ldr r0, .L080302FC @ =0x08B96444
    ldr r0, [r0]
    adds r5, r0, #0
    adds r5, #0x2c
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L080302EC
    ldrb r5, [r5]
    lsls r5, r5, #0x18
    cmp r5, #0
    blt .L080302EC
    ldr r0, .L08030300 @ =0x08B96410
    mov sb, r0
.L08030276:
    ldr r0, .L080302FC @ =0x08B96444
    ldr r1, [r0]
    asrs r6, r5, #0x18
    adds r0, r1, #0
    adds r0, #0x2d
    adds r0, r0, r6
    movs r2, #0
    ldrsb r2, [r0, r2]
    adds r1, #0x41
    adds r1, r1, r6
    movs r0, #0
    ldrsb r0, [r1, r0]
    lsls r7, r2, #4
    lsls r0, r0, #4
    mov r8, r0
    adds r0, r7, #0
    mov r1, r8
    movs r2, #0x10
    movs r3, #0x10
    bl func_0803020C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080302E4
    lsrs r5, r5, #0x18
    adds r0, r5, #0
    bl func_08030138
    adds r4, r0, #0
    adds r0, r5, #0
    bl func_0803019C
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x17
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    lsls r1, r0, #2
    adds r1, r1, r0
    lsls r1, r1, #1
    adds r4, r4, r1
    add r4, sb
    ldrh r3, [r4]
    ldr r0, .L08030304 @ =gBmSt
    movs r2, #0xc
    ldrsh r1, [r0, r2]
    subs r1, r7, r1
    movs r4, #0xe
    ldrsh r2, [r0, r4]
    mov r0, r8
    subs r2, r0, r2
    str r3, [sp]
    movs r0, #0xb
    ldr r3, .L08030308 @ =0x08B905B8
    bl PutSprite
.L080302E4:
    subs r0, r6, #1
    lsls r5, r0, #0x18
    cmp r5, #0
    bge .L08030276
.L080302EC:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080302FC: .4byte 0x08B96444
.L08030300: .4byte 0x08B96410
.L08030304: .4byte gBmSt
.L08030308: .4byte 0x08B905B8
    func_end func_08030250

    thumb_func_start DrawUpdatedPathArrow
DrawUpdatedPathArrow: @ 0x0803030C
    push {lr}
    bl func_0802FF80
    bl func_08030250
    pop {r0}
    bx r0
    func_end DrawUpdatedPathArrow

    thumb_func_start GetPlayerLeaderUnitId
GetPlayerLeaderUnitId: @ 0x0803031C
    ldr r0, .L08030330 @ =gPlaySt
    ldrb r0, [r0, #0x1b]
    cmp r0, #2
    beq .L0803033E
    cmp r0, #2
    bgt .L08030334
    cmp r0, #1
    beq .L0803033A
    b .L08030346
    .align 2, 0
.L08030330: .4byte gPlaySt
.L08030334:
    cmp r0, #3
    beq .L08030342
    b .L08030346
.L0803033A:
    movs r0, #3
    b .L08030348
.L0803033E:
    movs r0, #1
    b .L08030348
.L08030342:
    movs r0, #2
    b .L08030348
.L08030346:
    movs r0, #0
.L08030348:
    bx lr
    func_end GetPlayerLeaderUnitId

    thumb_func_start func_0803034C
func_0803034C: @ 0x0803034C
    push {r4, r5, lr}
    bl func_08079280
    adds r4, r0, #0
    ldr r5, .L080303A0 @ =gBmMapRange
    ldr r0, [r5]
    movs r1, #0
    bl BmMapFill
    ldr r0, .L080303A4 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    bl func_0808DE68
    lsls r0, r0, #4
    adds r4, r4, r0
    ldrb r0, [r4]
    cmp r0, #0
    beq .L08030394
    adds r3, r5, #0
    movs r2, #1
.L0803037C:
    ldr r1, [r3]
    ldrb r5, [r4, #7]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    ldrb r1, [r4, #6]
    adds r0, r1, r0
    strb r2, [r0]
    adds r4, #0x10
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803037C
.L08030394:
    movs r0, #0x10
    bl DisplayMoveRangeGraphics
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080303A0: .4byte gBmMapRange
.L080303A4: .4byte gBmMapMovement
    func_end func_0803034C

    thumb_func_start func_080303A8
func_080303A8: @ 0x080303A8
    push {lr}
    bl func_080900B8
    pop {r0}
    bx r0
    func_end func_080303A8

    thumb_func_start func_080303B4
func_080303B4: @ 0x080303B4
    push {lr}
    movs r1, #1
    str r1, [r0, #0x58]
    bl Proc_Break
    bl func_080303A8
    pop {r0}
    bx r0
    func_end func_080303B4

    thumb_func_start func_080303C8
func_080303C8: @ 0x080303C8
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #2
    str r0, [r5, #0x58]
    ldr r4, .L080303FC @ =gBmSt
    movs r1, #0x14
    ldrsh r0, [r4, r1]
    movs r2, #0x16
    ldrsh r1, [r4, r2]
    bl TrySwitchViewedUnit
    movs r1, #0x20
    ldrsh r0, [r4, r1]
    movs r2, #0x22
    ldrsh r1, [r4, r2]
    movs r2, #0
    bl PutMapCursor
    adds r0, r5, #0
    bl Proc_Break
    bl func_080303A8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080303FC: .4byte gBmSt
    func_end func_080303C8

    thumb_func_start func_08030400
func_08030400: @ 0x08030400
    push {lr}
    movs r1, #0x37
    bl Proc_Goto
    movs r0, #1
    pop {r1}
    bx r1
    func_end func_08030400

    thumb_func_start func_08030410
func_08030410: @ 0x08030410
    push {lr}
    movs r1, #0x33
    bl Proc_Goto
    movs r0, #1
    pop {r1}
    bx r1
    func_end func_08030410

    thumb_func_start func_08030420
func_08030420: @ 0x08030420
    push {r4, r5, lr}
    bl func_0802E894
    adds r4, r0, #0
    cmp r4, #0
    beq .L08030474
    ldr r0, [r4, #0xc]
    movs r1, #9
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r4, #0xc]
    ldr r5, .L0803047C @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    movs r1, #0
    ldrb r2, [r5, #0x1b]
    cmp r2, #3
    bne .L0803044A
    movs r1, #1
.L0803044A:
    adds r0, #0x86
    adds r0, r0, r1
    ldrb r0, [r0]
    strb r0, [r4, #0x10]
    movs r0, #0xe
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    movs r1, #0
    ldrb r5, [r5, #0x1b]
    cmp r5, #3
    bne .L08030464
    movs r1, #1
.L08030464:
    adds r0, #0x88
    adds r0, r0, r1
    ldrb r0, [r0]
    strb r0, [r4, #0x11]
    bl RefreshEntityMaps
    bl RefreshUnitSprites
.L08030474:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803047C: .4byte gPlaySt
    func_end func_08030420

    thumb_func_start func_08030480
func_08030480: @ 0x08030480
    push {lr}
    movs r1, #8
    str r1, [r0, #0x58]
    movs r1, #0x39
    bl Proc_Goto
    pop {r0}
    bx r0
    func_end func_08030480

    thumb_func_start func_08030490
func_08030490: @ 0x08030490
    push {lr}
    bl func_0802E894
    adds r2, r0, #0
    cmp r2, #0
    beq .L080304BA
    ldr r0, [r2, #0xc]
    movs r1, #8
    orrs r0, r1
    str r0, [r2, #0xc]
    movs r0, #0xff
    ldrb r1, [r2, #0x10]
    orrs r1, r0
    strb r1, [r2, #0x10]
    ldrb r1, [r2, #0x11]
    orrs r0, r1
    strb r0, [r2, #0x11]
    bl RefreshEntityMaps
    bl RefreshUnitSprites
.L080304BA:
    pop {r0}
    bx r0
    func_end func_08030490

    thumb_func_start func_080304C0
func_080304C0: @ 0x080304C0
    push {lr}
    movs r1, #9
    str r1, [r0, #0x58]
    movs r1, #0x3b
    bl Proc_Goto
    pop {r0}
    bx r0
    func_end func_080304C0

    thumb_func_start func_080304D0
func_080304D0: @ 0x080304D0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r4, .L08030514 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    movs r1, #0
    ldrb r2, [r4, #0x1b]
    cmp r2, #3
    bne .L080304E8
    movs r1, #1
.L080304E8:
    adds r0, #0x86
    adds r0, r0, r1
    ldrb r5, [r0]
    movs r0, #0xe
    ldrsb r0, [r4, r0]
    bl GetChapterInfo
    movs r1, #0
    ldrb r4, [r4, #0x1b]
    cmp r4, #3
    bne .L08030500
    movs r1, #1
.L08030500:
    adds r0, #0x88
    adds r0, r0, r1
    ldrb r2, [r0]
    adds r0, r6, #0
    adds r1, r5, #0
    bl EnsureCameraOntoPosition
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08030514: .4byte gPlaySt
    func_end func_080304D0

    thumb_func_start func_08030518
func_08030518: @ 0x08030518
    push {lr}
    movs r1, #1
    str r1, [r0, #0x58]
    bl func_0803069C
    pop {r0}
    bx r0
    func_end func_08030518

    thumb_func_start func_08030528
func_08030528: @ 0x08030528
    push {lr}
    bl func_080136AC
    ldr r3, .L08030540 @ =0xFF00FFF0
    movs r0, #0xc0
    movs r1, #0xc0
    movs r2, #0xc0
    bl func_08013728
    pop {r0}
    bx r0
    .align 2, 0
.L08030540: .4byte 0xFF00FFF0
    func_end func_08030528

    thumb_func_start func_08030544
func_08030544: @ 0x08030544
    push {lr}
    sub sp, #0x14
    movs r3, #0x80
    lsls r3, r3, #1
    str r3, [sp]
    str r3, [sp, #4]
    ldr r1, .L0803056C @ =0xFF00FFF0
    str r1, [sp, #8]
    movs r1, #0x40
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    movs r0, #0xc0
    movs r1, #0xc0
    movs r2, #0xc0
    bl func_080139D8
    add sp, #0x14
    pop {r0}
    bx r0
    .align 2, 0
.L0803056C: .4byte 0xFF00FFF0
    func_end func_08030544

    thumb_func_start func_08030570
func_08030570: @ 0x08030570
    push {r4, lr}
    sub sp, #0x14
    adds r4, r0, #0
    bl func_080136AC
    movs r2, #0x80
    lsls r2, r2, #1
    movs r0, #0xc0
    str r0, [sp]
    str r0, [sp, #4]
    ldr r0, .L080305A0 @ =0xFF00FFF0
    str r0, [sp, #8]
    movs r0, #0x40
    str r0, [sp, #0xc]
    str r4, [sp, #0x10]
    adds r0, r2, #0
    adds r1, r2, #0
    movs r3, #0xc0
    bl func_080139D8
    add sp, #0x14
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080305A0: .4byte 0xFF00FFF0
    func_end func_08030570

    thumb_func_start func_080305A4
func_080305A4: @ 0x080305A4
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0xb0
    movs r1, #0x8c
    adds r2, r4, #0
    bl func_08081FBC
    ldr r0, .L080305C4 @ =0x08405170
    ldr r1, .L080305C8 @ =0x06017000
    bl Decompress
    movs r0, #0
    str r0, [r4, #0x58]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080305C4: .4byte 0x08405170
.L080305C8: .4byte 0x06017000
    func_end func_080305A4

    thumb_func_start func_080305CC
func_080305CC: @ 0x080305CC
    push {r4, r5, lr}
    sub sp, #4
    ldr r4, .L08030650 @ =0x08B905F8
    ldr r0, .L08030654 @ =0x0000038D
    str r0, [sp]
    movs r0, #4
    movs r1, #0x68
    movs r2, #0x8c
    adds r3, r4, #0
    bl PutSprite
    ldr r0, .L08030658 @ =0x00000391
    str r0, [sp]
    movs r0, #4
    movs r1, #0x88
    movs r2, #0x8c
    adds r3, r4, #0
    bl PutSprite
    ldr r3, .L0803065C @ =0x08B905B8
    ldr r0, .L08030660 @ =0x00000395
    str r0, [sp]
    movs r0, #4
    movs r1, #0xa8
    movs r2, #0x8c
    bl PutSprite
    ldr r5, .L08030664 @ =0x08B905D0
    movs r0, #0xe0
    lsls r0, r0, #2
    str r0, [sp]
    movs r0, #4
    movs r1, #0x10
    movs r2, #0x8c
    adds r3, r5, #0
    bl PutSprite
    ldr r0, .L08030668 @ =0x00000397
    str r0, [sp]
    movs r0, #4
    movs r1, #0x18
    movs r2, #0x8c
    adds r3, r4, #0
    bl PutSprite
    ldr r0, .L0803066C @ =0x0000039B
    str r0, [sp]
    movs r0, #4
    movs r1, #0x38
    movs r2, #0x8c
    adds r3, r4, #0
    bl PutSprite
    ldr r0, .L08030670 @ =0x0000039F
    str r0, [sp]
    movs r0, #4
    movs r1, #0x58
    movs r2, #0x8c
    adds r3, r5, #0
    bl PutSprite
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08030650: .4byte 0x08B905F8
.L08030654: .4byte 0x0000038D
.L08030658: .4byte 0x00000391
.L0803065C: .4byte 0x08B905B8
.L08030660: .4byte 0x00000395
.L08030664: .4byte 0x08B905D0
.L08030668: .4byte 0x00000397
.L0803066C: .4byte 0x0000039B
.L08030670: .4byte 0x0000039F
    func_end func_080305CC

    thumb_func_start func_08030674
func_08030674: @ 0x08030674
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08030684 @ =0x08B96448
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08030684: .4byte 0x08B96448
    func_end func_08030674

    thumb_func_start func_08030688
func_08030688: @ 0x08030688
    push {lr}
    bl func_08082014
    ldr r0, .L08030698 @ =0x08B96448
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L08030698: .4byte 0x08B96448
    func_end func_08030688

    thumb_func_start func_0803069C
func_0803069C: @ 0x0803069C
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r1, #1
    rsbs r1, r1, #0
    movs r0, #0
    bl func_08082528
    bl ResetText
    bl EndPlayerPhaseSideWindows
    bl HideMoveRangeGraphics
    adds r0, r4, #0
    bl func_0808FE48
    ldr r1, .L08030744 @ =func_080303B4
    ldr r3, .L08030748 @ =0x0000114F
    ldr r0, .L0803074C @ =0x00000383
    str r0, [sp]
    movs r0, #1
    movs r2, #0
    bl func_0808FEC0
    ldr r1, .L08030750 @ =func_080303C8
    ldr r3, .L08030754 @ =0x0000114E
    movs r0, #0xe1
    lsls r0, r0, #2
    str r0, [sp]
    movs r0, #2
    movs r2, #0
    bl func_0808FEC0
    ldr r1, .L08030758 @ =func_08030480
    ldr r3, .L0803075C @ =0x0000114C
    ldr r0, .L08030760 @ =0x00000382
    str r0, [sp]
    movs r0, #8
    movs r2, #0
    bl func_0808FEC0
    ldr r1, .L08030764 @ =gPlaySt
    movs r0, #0x80
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L0803070E
    ldr r1, .L08030768 @ =func_080304C0
    movs r3, #0x8a
    lsls r3, r3, #5
    ldr r0, .L0803076C @ =0x0000037E
    str r0, [sp]
    movs r0, #9
    movs r2, #0
    bl func_0808FEC0
.L0803070E:
    adds r0, r4, #0
    bl func_08030674
    ldr r0, .L08030770 @ =func_08030410
    bl func_0808FE6C
    ldr r0, .L08030774 @ =func_08030400
    bl func_0808FE88
    ldr r0, .L08030778 @ =func_08030688
    bl func_0808FEA4
    movs r0, #0xa
    movs r1, #2
    bl func_0808FFF0
    ldr r0, [r4, #0x58]
    bl func_0808FF68
    movs r0, #3
    bl EnableBgSync
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08030744: .4byte func_080303B4
.L08030748: .4byte 0x0000114F
.L0803074C: .4byte 0x00000383
.L08030750: .4byte func_080303C8
.L08030754: .4byte 0x0000114E
.L08030758: .4byte func_08030480
.L0803075C: .4byte 0x0000114C
.L08030760: .4byte 0x00000382
.L08030764: .4byte gPlaySt
.L08030768: .4byte func_080304C0
.L0803076C: .4byte 0x0000037E
.L08030770: .4byte func_08030410
.L08030774: .4byte func_08030400
.L08030778: .4byte func_08030688
    func_end func_0803069C

    thumb_func_start CanCharacterBePrepMoved
CanCharacterBePrepMoved: @ 0x0803077C
    push {r4, lr}
    adds r4, r0, #0
    bl func_0808DD78
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08030792
    cmp r4, #0x28
    beq .L08030792
    movs r0, #1
    b .L08030794
.L08030792:
    movs r0, #0
.L08030794:
    pop {r4}
    pop {r1}
    bx r1
    func_end CanCharacterBePrepMoved

    thumb_func_start func_0803079C
func_0803079C: @ 0x0803079C
    adds r1, r0, #0
    adds r1, #0x4a
    movs r2, #0
    strh r2, [r1]
    str r2, [r0, #0x2c]
    str r2, [r0, #0x30]
    movs r1, #2
    str r1, [r0, #0x34]
    str r2, [r0, #0x38]
    ldr r1, .L080307C0 @ =gBmMapSize
    movs r2, #0
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    subs r1, #0x78
    adds r0, #0x4c
    strh r1, [r0]
    bx lr
    .align 2, 0
.L080307C0: .4byte gBmMapSize
    func_end func_0803079C

    thumb_func_start func_080307C4
func_080307C4: @ 0x080307C4
    movs r1, #0
    str r1, [r0, #0x34]
    movs r1, #2
    str r1, [r0, #0x38]
    ldr r1, .L080307DC @ =gBmMapSize
    movs r2, #2
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    subs r1, #0x50
    adds r0, #0x4c
    strh r1, [r0]
    bx lr
    .align 2, 0
.L080307DC: .4byte gBmMapSize
    func_end func_080307C4

    thumb_func_start func_080307E0
func_080307E0: @ 0x080307E0
    movs r1, #2
    rsbs r1, r1, #0
    str r1, [r0, #0x34]
    movs r1, #0
    str r1, [r0, #0x38]
    ldr r1, .L080307FC @ =gBmMapSize
    movs r2, #0
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    subs r1, #0x78
    adds r0, #0x4c
    strh r1, [r0]
    bx lr
    .align 2, 0
.L080307FC: .4byte gBmMapSize
    func_end func_080307E0

    thumb_func_start func_08030800
func_08030800: @ 0x08030800
    movs r1, #0
    str r1, [r0, #0x34]
    subs r1, #2
    str r1, [r0, #0x38]
    ldr r1, .L08030818 @ =gBmMapSize
    movs r2, #2
    ldrsh r1, [r1, r2]
    lsls r1, r1, #3
    subs r1, #0x50
    adds r0, #0x4c
    strh r1, [r0]
    bx lr
    .align 2, 0
.L08030818: .4byte gBmMapSize
    func_end func_08030800

    thumb_func_start func_0803081C
func_0803081C: @ 0x0803081C
    push {r4, r5, lr}
    adds r3, r0, #0
    ldr r0, .L08030864 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0xb
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08030836
    adds r1, r3, #0
    adds r1, #0x4a
    movs r0, #1
    strh r0, [r1]
.L08030836:
    adds r0, r3, #0
    adds r0, #0x4a
    movs r1, #0
    ldrsh r0, [r0, r1]
    ldr r4, [r3, #0x2c]
    ldr r5, [r3, #0x30]
    cmp r0, #0
    beq .L08030868
    movs r1, #0xf
    adds r0, r4, #0
    ands r0, r1
    cmp r0, #0
    bne .L08030868
    adds r0, r5, #0
    ands r0, r1
    cmp r0, #0
    bne .L08030868
    adds r0, r3, #0
    movs r1, #2
    bl Proc_Goto
    b .L08030890
    .align 2, 0
.L08030864: .4byte gpKeySt
.L08030868:
    ldr r2, [r3, #0x34]
    adds r2, r4, r2
    str r2, [r3, #0x2c]
    ldr r0, [r3, #0x38]
    adds r0, r5, r0
    str r0, [r3, #0x30]
    ldr r1, .L08030898 @ =gBmSt
    strh r2, [r1, #0xc]
    strh r0, [r1, #0xe]
    adds r1, r3, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bgt .L08030890
    adds r0, r3, #0
    bl Proc_Break
.L08030890:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08030898: .4byte gBmSt
    func_end func_0803081C

    thumb_func_start func_0803089C
func_0803089C: @ 0x0803089C
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    ldr r5, .L080308B8 @ =gPlaySt
    movs r0, #0xe
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    bne .L080308BC
    adds r0, r4, #0
    bl Proc_End
    b .L08030906
    .align 2, 0
.L080308B8: .4byte gPlaySt
.L080308BC:
    bl func_08018980
    movs r6, #0x10
    movs r0, #0x10
    ldrb r1, [r5, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L080308DA
    bl func_0808E1B0
    bl func_0800F0C8
    ldrb r0, [r5, #0x14]
    orrs r0, r6
    strb r0, [r5, #0x14]
.L080308DA:
    movs r0, #0
    bl GetCameraCenteredX
    ldr r4, .L0803090C @ =gBmSt
    strh r0, [r4, #0xc]
    movs r0, #0
    bl GetCameraCenteredY
    strh r0, [r4, #0xe]
    ldrb r0, [r4, #4]
    orrs r0, r6
    strb r0, [r4, #4]
    movs r0, #0xe
    ldrsb r0, [r5, r0]
    bl GetChapterInfo
    ldrb r0, [r0, #0xc]
    strb r0, [r5, #0xd]
    bl RefreshEntityMaps
    bl RenderMap
.L08030906:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0803090C: .4byte gBmSt
    func_end func_0803089C

    thumb_func_start func_08030910
func_08030910: @ 0x08030910
    push {r4, lr}
    bl GetPlayerLeaderUnitId
    bl GetUnitFromCharId
    adds r1, r0, #0
    cmp r1, #0
    beq .L08030930
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl SetMapCursorPosition
    b .L08030938
.L08030930:
    movs r0, #0
    movs r1, #0
    bl SetMapCursorPosition
.L08030938:
    ldr r4, .L08030958 @ =gBmSt
    movs r1, #0x14
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    bl GetCameraCenteredX
    strh r0, [r4, #0xc]
    movs r1, #0x16
    ldrsh r0, [r4, r1]
    lsls r0, r0, #4
    bl GetCameraCenteredY
    strh r0, [r4, #0xe]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08030958: .4byte gBmSt
    func_end func_08030910

    thumb_func_start func_0803095C
func_0803095C: @ 0x0803095C
    push {r4, lr}
    adds r4, r0, #0
    bl DoesBMXFADEExist
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803097A
    ldr r0, [r4, #0x58]
    cmp r0, #2
    bne .L08030974
    bl func_0803034C
.L08030974:
    adds r0, r4, #0
    bl Proc_Break
.L0803097A:
    ldr r1, .L08030990 @ =gBmSt
    movs r2, #0x20
    ldrsh r0, [r1, r2]
    movs r2, #0x22
    ldrsh r1, [r1, r2]
    movs r2, #0
    bl PutMapCursor
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08030990: .4byte gBmSt
    func_end func_0803095C

    thumb_func_start func_08030994
func_08030994: @ 0x08030994
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    bl HandlePlayerCursorMovement
    bl DoesBMXFADEExist
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080309A8
    b .L08030BF4
.L080309A8:
    ldr r1, .L080309E0 @ =gpKeySt
    ldr r0, [r1]
    ldrh r2, [r0, #8]
    movs r0, #0x80
    lsls r0, r0, #2
    ands r0, r2
    adds r3, r1, #0
    cmp r0, #0
    beq .L080309F0
    ldr r1, .L080309E4 @ =gBmSt
    movs r2, #0x14
    ldrsh r0, [r1, r2]
    movs r3, #0x16
    ldrsh r1, [r1, r3]
    bl TrySwitchViewedUnit
    ldr r0, .L080309E8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge .L080309D6
    b .L08030BF4
.L080309D6:
    ldr r0, .L080309EC @ =0x0000038B
    bl m4aSongNumStart
    b .L08030BF4
    .align 2, 0
.L080309E0: .4byte gpKeySt
.L080309E4: .4byte gBmSt
.L080309E8: .4byte gPlaySt
.L080309EC: .4byte 0x0000038B
.L080309F0:
    movs r0, #0x80
    lsls r0, r0, #1
    ands r0, r2
    cmp r0, #0
    beq .L08030A54
    ldr r4, .L08030A4C @ =gBmSt
    movs r1, #0x16
    ldrsh r0, [r4, r1]
    ldr r6, .L08030A50 @ =gBmMapUnit
    ldr r1, [r6]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0x14
    ldrsh r1, [r4, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08030A54
    bl EndAllMus
    bl EndPlayerPhaseSideWindows
    movs r0, #0x1f
    bl SetStatScreenExcludedUnitFlags
    movs r3, #0x16
    ldrsh r0, [r4, r3]
    ldr r1, [r6]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0x14
    ldrsh r1, [r4, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    bl GetUnit
    adds r1, r5, #0
    bl StartStatScreen
    adds r0, r5, #0
    movs r1, #5
    bl Proc_Goto
    b .L08030C04
    .align 2, 0
.L08030A4C: .4byte gBmSt
.L08030A50: .4byte gBmMapUnit
.L08030A54:
    ldr r0, [r3]
    ldrh r1, [r0, #8]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    beq .L08030A88
    bl EndPlayerPhaseSideWindows
    ldr r4, .L08030A80 @ =gPlaySt
    ldr r1, .L08030A84 @ =gBmSt
    ldrh r0, [r1, #0x14]
    strb r0, [r4, #0x12]
    ldrh r0, [r1, #0x16]
    strb r0, [r4, #0x13]
    adds r0, r5, #0
    movs r1, #0
    bl Proc_Goto
    adds r4, #0x41
    ldrb r4, [r4]
    lsls r0, r4, #0x1e
    b .L08030B50
    .align 2, 0
.L08030A80: .4byte gPlaySt
.L08030A84: .4byte gBmSt
.L08030A88:
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    bne .L08030A92
    b .L08030BD0
.L08030A92:
    ldr r2, .L08030AC4 @ =gBmSt
    movs r3, #0x16
    ldrsh r0, [r2, r3]
    ldr r1, .L08030AC8 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r4, #0x14
    ldrsh r1, [r2, r4]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    bl GetPlayerSelectKind
    cmp r0, #4
    bls .L08030ABA
    b .L08030BD0
.L08030ABA:
    lsls r0, r0, #2
    ldr r1, .L08030ACC @ =.L08030AD0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08030AC4: .4byte gBmSt
.L08030AC8: .4byte gBmMapUnit
.L08030ACC: .4byte .L08030AD0
.L08030AD0: @ jump table
    .4byte .L08030AE4 @ case 0
    .4byte .L08030AE4 @ case 1
    .4byte .L08030B64 @ case 2
    .4byte .L08030BAC @ case 3
    .4byte .L08030B8C @ case 4
.L08030AE4:
    bl EndPlayerPhaseSideWindows
    ldr r3, .L08030B30 @ =gPlaySt
    ldr r2, .L08030B34 @ =gBmSt
    ldrh r0, [r2, #0x14]
    strb r0, [r3, #0x12]
    ldrh r0, [r2, #0x16]
    strb r0, [r3, #0x13]
    movs r1, #0x16
    ldrsh r0, [r2, r1]
    ldr r1, .L08030B38 @ =gBmMapTerrain
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r4, #0x14
    ldrsh r1, [r2, r4]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #7
    bgt .L08030B40
    cmp r0, #6
    blt .L08030B40
    adds r0, r3, #0
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08030B24
    ldr r0, .L08030B3C @ =0x0000038A
    bl m4aSongNumStart
.L08030B24:
    adds r0, r5, #0
    movs r1, #0x3c
    bl Proc_Goto
    b .L08030C04
    .align 2, 0
.L08030B30: .4byte gPlaySt
.L08030B34: .4byte gBmSt
.L08030B38: .4byte gBmMapTerrain
.L08030B3C: .4byte 0x0000038A
.L08030B40:
    adds r0, r5, #0
    movs r1, #0
    bl Proc_Goto
    ldr r0, .L08030B5C @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
.L08030B50:
    cmp r0, #0
    blt .L08030C04
    ldr r0, .L08030B60 @ =0x00000389
    bl m4aSongNumStart
    b .L08030C04
    .align 2, 0
.L08030B5C: .4byte gPlaySt
.L08030B60: .4byte 0x00000389
.L08030B64:
    adds r0, r4, #0
    bl UnitBeginAction
    ldr r0, .L08030B88 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r2, #0xc]
    ldr r0, [r5, #0x58]
    cmp r0, #2
    bne .L08030BC0
    adds r0, r5, #0
    movs r1, #3
    bl Proc_Goto
    b .L08030C04
    .align 2, 0
.L08030B88: .4byte gActiveUnit
.L08030B8C:
    ldr r0, [r5, #0x58]
    cmp r0, #2
    bne .L08030BAC
    ldr r0, .L08030BA8 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08030C04
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
    b .L08030C04
    .align 2, 0
.L08030BA8: .4byte gPlaySt
.L08030BAC:
    adds r0, r4, #0
    bl UnitBeginAction
    ldr r0, .L08030BCC @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r2, #0xc]
.L08030BC0:
    adds r0, r5, #0
    movs r1, #1
    bl Proc_Goto
    b .L08030C04
    .align 2, 0
.L08030BCC: .4byte gActiveUnit
.L08030BD0:
    ldr r0, .L08030BF0 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #8
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L08030BF4
    bl EndPlayerPhaseSideWindows
    bl StartMinimapPlayerPhase
    adds r0, r5, #0
    movs r1, #9
    bl Proc_Goto
    b .L08030C04
    .align 2, 0
.L08030BF0: .4byte gpKeySt
.L08030BF4:
    ldr r1, .L08030C0C @ =gBmSt
    movs r2, #0x20
    ldrsh r0, [r1, r2]
    movs r3, #0x22
    ldrsh r1, [r1, r3]
    movs r2, #0
    bl PutMapCursor
.L08030C04:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08030C0C: .4byte gBmSt
    func_end func_08030994

    thumb_func_start func_08030C10
func_08030C10: @ 0x08030C10
    push {lr}
    ldr r0, .L08030C24 @ =0x08B96460
    bl Proc_Find
    movs r1, #0x33
    bl Proc_Goto
    movs r0, #0x17
    pop {r1}
    bx r1
    .align 2, 0
.L08030C24: .4byte 0x08B96460
    func_end func_08030C10

    thumb_func_start func_08030C28
func_08030C28: @ 0x08030C28
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08030C94 @ =0x08196228
    movs r1, #0
    bl StartSpriteAnim
    adds r4, r0, #0
    movs r0, #0
    strh r0, [r4, #0x22]
    adds r0, r4, #0
    movs r1, #0
    bl SetSpriteAnimId
    str r4, [r5, #0x54]
    adds r1, r5, #0
    adds r1, #0x4a
    movs r0, #2
    strh r0, [r1]
    ldr r1, .L08030C98 @ =gBmSt
    movs r2, #0x14
    ldrsh r0, [r1, r2]
    str r0, [r5, #0x3c]
    movs r2, #0x16
    ldrsh r0, [r1, r2]
    str r0, [r5, #0x40]
    ldr r0, .L08030C9C @ =0x00000726
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r5, #0
    bl func_08032560
    ldr r0, .L08030CA0 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    adds r0, r5, #0
    bl EnsureCameraOntoPosition
    ldr r0, .L08030CA4 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08030C8C
    ldr r0, .L08030CA8 @ =0x00000389
    bl m4aSongNumStart
.L08030C8C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08030C94: .4byte 0x08196228
.L08030C98: .4byte gBmSt
.L08030C9C: .4byte 0x00000726
.L08030CA0: .4byte gActiveUnit
.L08030CA4: .4byte gPlaySt
.L08030CA8: .4byte 0x00000389
    func_end func_08030C28

    thumb_func_start func_08030CAC
func_08030CAC: @ 0x08030CAC
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r6, .L08030D44 @ =gBmSt
    movs r0, #0x16
    ldrsh r1, [r6, r0]
    ldr r0, .L08030D48 @ =gBmMapRange
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r0, r1, r0
    movs r3, #0x14
    ldrsh r2, [r6, r3]
    ldr r0, [r0]
    adds r0, r0, r2
    ldrb r7, [r0]
    ldr r0, .L08030D4C @ =gBmMapUnit
    ldr r0, [r0]
    adds r1, r1, r0
    ldr r0, [r1]
    adds r0, r0, r2
    ldrb r0, [r0]
    bl GetUnit
    bl GetPlayerSelectKind
    cmp r0, #4
    bne .L08030CE4
    movs r7, #0
.L08030CE4:
    bl HandlePlayerCursorMovement
    ldr r0, [r4, #0x3c]
    lsls r0, r0, #4
    movs r5, #0xc
    ldrsh r1, [r6, r5]
    subs r5, r0, r1
    ldr r0, [r4, #0x40]
    lsls r0, r0, #4
    movs r2, #0xe
    ldrsh r1, [r6, r2]
    subs r2, r0, r1
    adds r1, r5, #0
    adds r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bhi .L08030D20
    adds r0, r2, #0
    adds r0, #0x20
    cmp r0, #0xc0
    bhi .L08030D20
    subs r2, #0xc
    ldr r3, .L08030D50 @ =0x08B905B8
    movs r0, #6
    str r0, [sp]
    movs r0, #4
    adds r1, r5, #0
    bl PutSprite
.L08030D20:
    ldr r0, .L08030D54 @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L08030D74
    cmp r7, #0
    beq .L08030D58
    ldr r0, [r4, #0x54]
    bl EndSpriteAnim
    adds r0, r4, #0
    bl Proc_Break
    bl func_0803279C
    b .L08030DEE
    .align 2, 0
.L08030D44: .4byte gBmSt
.L08030D48: .4byte gBmMapRange
.L08030D4C: .4byte gBmMapUnit
.L08030D50: .4byte 0x08B905B8
.L08030D54: .4byte gpKeySt
.L08030D58:
    ldr r0, .L08030D70 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08030DEE
    movs r0, #0xe3
    lsls r0, r0, #2
    bl m4aSongNumStart
    b .L08030DEE
    .align 2, 0
.L08030D70: .4byte gPlaySt
.L08030D74:
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L08030DAC
    ldr r0, [r4, #0x54]
    bl EndSpriteAnim
    adds r0, r4, #0
    movs r1, #4
    bl Proc_Goto
    bl func_0803279C
    ldr r0, .L08030DA4 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08030DEE
    ldr r0, .L08030DA8 @ =0x0000038B
    bl m4aSongNumStart
    b .L08030DEE
    .align 2, 0
.L08030DA4: .4byte gPlaySt
.L08030DA8: .4byte 0x0000038B
.L08030DAC:
    lsls r0, r7, #0x18
    asrs r3, r0, #0x18
    adds r1, r4, #0
    adds r1, #0x4a
    movs r5, #0
    ldrsh r2, [r1, r5]
    adds r6, r0, #0
    adds r5, r1, #0
    cmp r3, r2
    beq .L08030DCE
    ldr r0, [r4, #0x54]
    movs r1, #0
    cmp r3, #0
    bne .L08030DCA
    movs r1, #1
.L08030DCA:
    bl SetSpriteAnimId
.L08030DCE:
    ldr r0, [r4, #0x54]
    ldr r3, .L08030DF8 @ =gBmSt
    movs r2, #0x20
    ldrsh r1, [r3, r2]
    movs r4, #0xc
    ldrsh r2, [r3, r4]
    subs r1, r1, r2
    movs r4, #0x22
    ldrsh r2, [r3, r4]
    movs r4, #0xe
    ldrsh r3, [r3, r4]
    subs r2, r2, r3
    bl DisplaySpriteAnim
    asrs r0, r6, #0x18
    strh r0, [r5]
.L08030DEE:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08030DF8: .4byte gBmSt
    func_end func_08030CAC

    thumb_func_start func_08030DFC
func_08030DFC: @ 0x08030DFC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L08030E28 @ =gActiveUnit
    ldr r1, [r4]
    movs r0, #0x10
    ldrsb r0, [r1, r0]
    ldrb r1, [r1, #0x11]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl SetMapCursorPosition
    ldr r0, [r4]
    movs r1, #0x10
    ldrsb r1, [r0, r1]
    movs r2, #0x11
    ldrsb r2, [r0, r2]
    adds r0, r5, #0
    bl EnsureCameraOntoPosition
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08030E28: .4byte gActiveUnit
    func_end func_08030DFC

    thumb_func_start func_08030E2C
func_08030E2C: @ 0x08030E2C
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    ldr r0, .L08030E68 @ =gActiveUnit
    ldr r5, [r0]
    ldr r6, .L08030E6C @ =gBmSt
    movs r1, #0x16
    ldrsh r0, [r6, r1]
    ldr r1, .L08030E70 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r2, #0x14
    ldrsh r1, [r6, r2]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    bne .L08030E74
    movs r0, #0x14
    ldrsh r2, [r6, r0]
    movs r1, #0x16
    ldrsh r3, [r6, r1]
    adds r0, r7, #0
    adds r1, r5, #0
    bl func_0801E480
    b .L08030E94
    .align 2, 0
.L08030E68: .4byte gActiveUnit
.L08030E6C: .4byte gBmSt
.L08030E70: .4byte gBmMapUnit
.L08030E74:
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    movs r3, #0x11
    ldrsb r3, [r4, r3]
    adds r0, r7, #0
    adds r1, r5, #0
    bl func_0801E480
    movs r2, #0x10
    ldrsb r2, [r5, r2]
    movs r3, #0x11
    ldrsb r3, [r5, r3]
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_0801E480
.L08030E94:
    ldr r0, .L08030EAC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08030EA6
    ldr r0, .L08030EB0 @ =0x00000381
    bl m4aSongNumStart
.L08030EA6:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08030EAC: .4byte gPlaySt
.L08030EB0: .4byte 0x00000381
    func_end func_08030E2C

    thumb_func_start func_08030EB4
func_08030EB4: @ 0x08030EB4
    push {lr}
    ldr r0, .L08030EC8 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L08030EC2
    bl RenderMapForFade
.L08030EC2:
    pop {r0}
    bx r0
    .align 2, 0
.L08030EC8: .4byte gPlaySt
    func_end func_08030EB4

    thumb_func_start func_08030ECC
func_08030ECC: @ 0x08030ECC
    push {lr}
    ldr r0, .L08030EE4 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L08030EE0
    bl RenderMap
    movs r0, #0
    bl StartMapFade
.L08030EE0:
    pop {r0}
    bx r0
    .align 2, 0
.L08030EE4: .4byte gPlaySt
    func_end func_08030ECC

    thumb_func_start func_08030EE8
func_08030EE8: @ 0x08030EE8
    push {lr}
    ldr r0, .L08030EF8 @ =0x08CE5CA0
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L08030EF8: .4byte 0x08CE5CA0
    func_end func_08030EE8

    thumb_func_start func_08030EFC
func_08030EFC: @ 0x08030EFC
    push {lr}
    sub sp, #0x1c
    ldr r0, .L08030F34 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterEventInfo
    ldr r0, [r0, #8]
    str r0, [sp]
    mov r1, sp
    ldr r2, .L08030F38 @ =gBmSt
    ldrh r0, [r2, #0x14]
    strb r0, [r1, #0x18]
    ldrh r0, [r2, #0x16]
    strb r0, [r1, #0x19]
    mov r0, sp
    bl func_0807812C
    cmp r0, #0
    beq .L08030F4E
    ldr r0, [sp, #0xc]
    cmp r0, #0x13
    beq .L08030F3C
    cmp r0, #0x14
    beq .L08030F46
    b .L08030F4E
    .align 2, 0
.L08030F34: .4byte gPlaySt
.L08030F38: .4byte gBmSt
.L08030F3C:
    ldr r1, [sp, #4]
    movs r0, #0
    bl func_080B03D4
    b .L08030F4E
.L08030F46:
    ldr r1, [sp, #4]
    movs r0, #0
    bl func_080B03F4
.L08030F4E:
    add sp, #0x1c
    pop {r0}
    bx r0
    func_end func_08030EFC

    thumb_func_start func_08030F54
func_08030F54: @ 0x08030F54
    push {r4, r5, lr}
    adds r5, r0, #0
    bl HandlePlayerCursorMovement
    ldr r0, .L08030FB0 @ =gpKeySt
    ldr r0, [r0]
    ldrh r1, [r0, #8]
    movs r0, #3
    ands r0, r1
    cmp r0, #0
    beq .L08030FC4
    bl EndAllMus
    ldr r0, .L08030FB4 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r2, #0xc]
    ldr r1, .L08030FB8 @ =gBmSt
    movs r0, #0xf7
    ldrb r2, [r1, #4]
    ands r0, r2
    strb r0, [r1, #4]
    bl HideMoveRangeGraphics
    bl RefreshEntityMaps
    bl RefreshUnitSprites
    ldr r0, .L08030FBC @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08030FA4
    ldr r0, .L08030FC0 @ =0x0000038B
    bl m4aSongNumStart
.L08030FA4:
    adds r0, r5, #0
    movs r1, #9
    bl Proc_Goto
    b .L0803106E
    .align 2, 0
.L08030FB0: .4byte gpKeySt
.L08030FB4: .4byte gActiveUnit
.L08030FB8: .4byte gBmSt
.L08030FBC: .4byte gPlaySt
.L08030FC0: .4byte 0x0000038B
.L08030FC4:
    movs r0, #0x80
    lsls r0, r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L08031018
    ldr r2, .L08031074 @ =gBmSt
    movs r3, #0x16
    ldrsh r0, [r2, r3]
    ldr r1, .L08031078 @ =gBmMapUnit
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r3, #0x14
    ldrsh r1, [r2, r3]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r4, [r0]
    ldr r0, .L0803107C @ =gActiveUnitMoveOrigin
    ldr r1, [r0]
    ldr r0, [r2, #0x14]
    cmp r1, r0
    bne .L08030FF6
    ldr r0, .L08031080 @ =gActiveUnit
    ldr r0, [r0]
    ldrb r4, [r0, #0xb]
.L08030FF6:
    cmp r4, #0
    beq .L08031018
    bl EndAllMus
    movs r0, #0x1f
    bl SetStatScreenExcludedUnitFlags
    adds r0, r4, #0
    bl GetUnit
    adds r1, r5, #0
    bl StartStatScreen
    adds r0, r5, #0
    movs r1, #6
    bl Proc_Goto
.L08031018:
    ldr r0, .L08031084 @ =gpKeySt
    ldr r1, [r0]
    movs r0, #0x80
    lsls r0, r0, #2
    ldrh r1, [r1, #8]
    ands r0, r1
    cmp r0, #0
    beq .L0803105E
    ldr r0, .L08031080 @ =gActiveUnit
    ldr r0, [r0]
    cmp r0, #0
    beq .L0803105E
    ldr r4, .L0803107C @ =gActiveUnitMoveOrigin
    movs r0, #0
    ldrsh r1, [r4, r0]
    movs r3, #2
    ldrsh r2, [r4, r3]
    adds r0, r5, #0
    bl EnsureCameraOntoPosition
    movs r1, #0
    ldrsh r0, [r4, r1]
    movs r2, #2
    ldrsh r1, [r4, r2]
    bl SetMapCursorPosition
    ldr r0, .L08031088 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L0803105E
    ldr r0, .L0803108C @ =0x0000038B
    bl m4aSongNumStart
.L0803105E:
    ldr r1, .L08031074 @ =gBmSt
    movs r3, #0x20
    ldrsh r0, [r1, r3]
    movs r2, #0x22
    ldrsh r1, [r1, r2]
    movs r2, #1
    bl PutMapCursor
.L0803106E:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08031074: .4byte gBmSt
.L08031078: .4byte gBmMapUnit
.L0803107C: .4byte gActiveUnitMoveOrigin
.L08031080: .4byte gActiveUnit
.L08031084: .4byte gpKeySt
.L08031088: .4byte gPlaySt
.L0803108C: .4byte 0x0000038B
    func_end func_08030F54

    thumb_func_start func_08031090
func_08031090: @ 0x08031090
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0
    bl InitBgs
    adds r0, r4, #0
    bl func_080A9DC0
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08031090

    thumb_func_start func_080310A8
func_080310A8: @ 0x080310A8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r5, .L080310C4 @ =gActiveUnit
    ldr r2, [r5]
    cmp r2, #0
    bne .L080310C8
    bl RefreshBMapGraphics
    adds r0, r6, #0
    movs r1, #0xc
    bl Proc_Goto
    b .L0803111A
    .align 2, 0
.L080310C4: .4byte gActiveUnit
.L080310C8:
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r4, .L08031120 @ =gBmMapUnit
    ldr r1, [r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r1, [r2, #0xb]
    strb r1, [r0]
    ldr r2, [r5]
    ldr r0, [r2, #0xc]
    movs r1, #2
    rsbs r1, r1, #0
    ands r0, r1
    str r0, [r2, #0xc]
    bl RefreshBMapGraphics
    ldr r2, [r5]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, [r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r1, #0
    strb r1, [r0]
    ldr r2, [r5]
    ldr r0, [r2, #0xc]
    movs r1, #1
    orrs r0, r1
    str r0, [r2, #0xc]
    adds r0, r6, #0
    movs r1, #0xb
    bl Proc_Goto
.L0803111A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08031120: .4byte gBmMapUnit
    func_end func_080310A8

    thumb_func_start func_08031124
func_08031124: @ 0x08031124
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x80
    lsls r0, r0, #1
    movs r1, #0x80
    movs r2, #0x20
    movs r3, #0
    bl StartBgmVolumeChange
    bl func_0800F164
    adds r0, r4, #0
    bl func_080A4E0C
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08031124

    thumb_func_start func_08031148
func_08031148: @ 0x08031148
    push {lr}
    movs r1, #0x80
    lsls r1, r1, #1
    movs r0, #0x80
    movs r2, #0x20
    movs r3, #0
    bl StartBgmVolumeChange
    pop {r0}
    bx r0
    func_end func_08031148

    thumb_func_start func_0803115C
func_0803115C: @ 0x0803115C
    push {lr}
    sub sp, #4
    bl func_08004234
    movs r2, #0x80
    lsls r2, r2, #1
    movs r0, #0
    str r0, [sp]
    movs r0, #0x49
    adds r1, r2, #0
    movs r3, #0x18
    bl CallSomeSoundMaybe
    add sp, #4
    pop {r0}
    bx r0
    func_end func_0803115C

    thumb_func_start func_0803117C
func_0803117C: @ 0x0803117C
    push {r4, lr}
    ldr r1, .L080311D0 @ =gPlaySt
    movs r0, #0x80
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    beq .L080311CA
    ldr r1, .L080311D4 @ =gBmSt
    movs r0, #0x40
    ldrb r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L080311CA
    ldr r0, .L080311D8 @ =gBuf
    bl func_0802E8D0
    movs r4, #1
.L0803119E:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L080311C0
    ldr r0, [r2]
    cmp r0, #0
    beq .L080311C0
    ldr r0, [r2, #0xc]
    ldr r1, .L080311DC @ =0x0001000C
    ands r0, r1
    cmp r0, #0
    bne .L080311C0
    adds r0, r2, #0
    bl func_0802E8EC
.L080311C0:
    adds r4, #1
    cmp r4, #0x3f
    ble .L0803119E
    bl func_0802E960
.L080311CA:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080311D0: .4byte gPlaySt
.L080311D4: .4byte gBmSt
.L080311D8: .4byte gBuf
.L080311DC: .4byte 0x0001000C
    func_end func_0803117C

    thumb_func_start func_080311E0
func_080311E0: @ 0x080311E0
    push {r4, lr}
    movs r4, #1
.L080311E4:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L08031222
    ldr r3, [r2]
    cmp r3, #0
    beq .L08031222
    ldr r1, [r2, #0xc]
    movs r0, #3
    rsbs r0, r0, #0
    ands r1, r0
    str r1, [r2, #0xc]
    ldr r0, .L08031218 @ =0x02010004
    ands r0, r1
    cmp r0, #0
    bne .L08031222
    movs r0, #8
    ands r1, r0
    cmp r1, #0
    beq .L0803121C
    ldrb r0, [r3, #4]
    bl func_080A0110
    b .L08031222
    .align 2, 0
.L08031218: .4byte 0x02010004
.L0803121C:
    ldrb r0, [r3, #4]
    bl func_0809FFEC
.L08031222:
    adds r4, #1
    cmp r4, #0x3f
    ble .L080311E4
    bl func_0803117C
    ldr r0, .L0803124C @ =0x08B96460
    bl Proc_EndEach
    ldr r2, .L08031250 @ =gBmSt
    movs r1, #0xef
    adds r0, r1, #0
    ldrb r3, [r2, #4]
    ands r0, r3
    strb r0, [r2, #4]
    ldr r0, .L08031254 @ =gPlaySt
    ldrb r2, [r0, #0x14]
    ands r1, r2
    strb r1, [r0, #0x14]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0803124C: .4byte 0x08B96460
.L08031250: .4byte gBmSt
.L08031254: .4byte gPlaySt
    func_end func_080311E0

    thumb_func_start func_08031258
func_08031258: @ 0x08031258
    push {lr}
    ldr r0, .L0803126C @ =0x08B96460
    bl Proc_Find
    cmp r0, #0
    beq .L08031266
    movs r0, #1
.L08031266:
    pop {r1}
    bx r1
    .align 2, 0
.L0803126C: .4byte 0x08B96460
    func_end func_08031258

    thumb_func_start func_08031270
func_08031270: @ 0x08031270
    push {r4, r5, r6, r7, lr}
    ldr r0, .L08031284 @ =gActiveUnit
    ldr r0, [r0]
    ldr r0, [r0, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    beq .L0803128C
    b .L080312EE
    .align 2, 0
.L08031284: .4byte gActiveUnit
.L08031288:
    movs r0, #1
    b .L080312F0
.L0803128C:
    ldr r0, .L080312F8 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L080312EE
.L08031298:
    ldr r0, .L080312F8 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    cmp r4, #0
    blt .L080312E8
    lsls r6, r5, #2
    lsls r7, r5, #0x18
.L080312A8:
    ldr r0, .L080312FC @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L080312E2
    ldr r0, .L08031300 @ =gBmMapTerrain
    ldr r0, [r0]
    adds r0, r6, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #3
    beq .L080312D4
    cmp r0, #5
    beq .L080312D4
    cmp r0, #0x38
    beq .L080312D4
    cmp r0, #0x37
    bne .L080312E2
.L080312D4:
    lsls r0, r4, #0x18
    asrs r0, r0, #0x18
    asrs r1, r7, #0x18
    bl func_08078BD0
    cmp r0, #0xe
    beq .L08031288
.L080312E2:
    subs r4, #1
    cmp r4, #0
    bge .L080312A8
.L080312E8:
    subs r5, #1
    cmp r5, #0
    bge .L08031298
.L080312EE:
    movs r0, #0
.L080312F0:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080312F8: .4byte gBmMapSize
.L080312FC: .4byte gBmMapMovement
.L08031300: .4byte gBmMapTerrain
    func_end func_08031270

    thumb_func_start func_08031304
func_08031304: @ 0x08031304
    push {r4, r5, r6, lr}
    ldr r0, .L08031324 @ =gActiveUnit
    ldr r2, [r0]
    ldr r0, [r2, #0xc]
    movs r1, #0x40
    ands r0, r1
    cmp r0, #0
    bne .L08031372
    adds r0, r2, #0
    bl IsUnitCurrentMainLord
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803132C
    b .L08031372
    .align 2, 0
.L08031324: .4byte gActiveUnit
.L08031328:
    movs r0, #1
    b .L08031374
.L0803132C:
    ldr r0, .L0803137C @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r5, r0, #1
    cmp r5, #0
    blt .L08031372
.L08031338:
    ldr r0, .L0803137C @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    cmp r4, #0
    blt .L0803136C
    lsls r6, r5, #0x18
.L08031346:
    ldr r0, .L08031380 @ =gBmMapMovement
    ldr r1, [r0]
    lsls r0, r5, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L08031366
    lsls r0, r4, #0x18
    asrs r0, r0, #0x18
    asrs r1, r6, #0x18
    bl func_08078BD0
    cmp r0, #0xf
    beq .L08031328
.L08031366:
    subs r4, #1
    cmp r4, #0
    bge .L08031346
.L0803136C:
    subs r5, #1
    cmp r5, #0
    bge .L08031338
.L08031372:
    movs r0, #0
.L08031374:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0803137C: .4byte gBmMapSize
.L08031380: .4byte gBmMapMovement
    func_end func_08031304

    thumb_func_start func_08031384
func_08031384: @ 0x08031384
    push {r4, lr}
    movs r0, #0
    movs r1, #0
    bl BeginTargetList
    ldr r0, .L080313BC @ =gBmMapRange
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    ldr r4, .L080313C0 @ =gActiveUnit
    ldr r0, [r4]
    bl GenerateUnitCompleteAttackRange
    ldr r1, .L080313C4 @ =0x02033E40
    ldr r0, [r4]
    str r0, [r1]
    ldr r0, .L080313C8 @ =func_08023C20
    bl func_080239B0
    bl CountTargets
    cmp r0, #0
    beq .L080313B6
    movs r0, #1
.L080313B6:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080313BC: .4byte gBmMapRange
.L080313C0: .4byte gActiveUnit
.L080313C4: .4byte 0x02033E40
.L080313C8: .4byte func_08023C20
    func_end func_08031384

    thumb_func_start func_080313CC
func_080313CC: @ 0x080313CC
    push {lr}
    ldr r0, .L080313E4 @ =gActiveUnit
    ldr r0, [r0]
    bl func_08023E38
    bl CountTargets
    cmp r0, #0
    beq .L080313E0
    movs r0, #1
.L080313E0:
    pop {r1}
    bx r1
    .align 2, 0
.L080313E4: .4byte gActiveUnit
    func_end func_080313CC

    thumb_func_start func_080313E8
func_080313E8: @ 0x080313E8
    push {lr}
    ldr r0, .L08031400 @ =gActiveUnit
    ldr r0, [r0]
    bl ListTradeTargets
    bl CountTargets
    cmp r0, #0
    beq .L080313FC
    movs r0, #1
.L080313FC:
    pop {r1}
    bx r1
    .align 2, 0
.L08031400: .4byte gActiveUnit
    func_end func_080313E8

    thumb_func_start func_08031404
func_08031404: @ 0x08031404
    push {r4, lr}
    bl GetGameTime
    bl func_08031270
    adds r4, r0, #0
    lsls r4, r4, #0x18
    asrs r4, r4, #9
    bl func_08031304
    lsls r0, r0, #0x18
    asrs r0, r0, #8
    orrs r4, r0
    bl func_08031384
    lsls r0, r0, #0x18
    asrs r0, r0, #0x17
    orrs r4, r0
    bl func_080313CC
    lsls r0, r0, #0x18
    asrs r0, r0, #0x10
    orrs r4, r0
    bl func_080313E8
    lsls r0, r0, #0x18
    asrs r0, r0, #1
    orrs r4, r0
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    func_end func_08031404

    thumb_func_start func_08031444
func_08031444: @ 0x08031444
    push {lr}
    ldr r0, .L08031468 @ =gActiveUnit
    ldr r0, [r0]
    ldr r1, [r0, #4]
    ldrb r2, [r0, #0x1d]
    ldrb r1, [r1, #0x12]
    adds r1, r2, r1
    ldr r2, .L0803146C @ =gActionSt
    ldrb r2, [r2, #0x10]
    subs r1, r1, r2
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl GenerateUnitMovementMapExt
    bl func_08031404
    pop {r1}
    bx r1
    .align 2, 0
.L08031468: .4byte gActiveUnit
.L0803146C: .4byte gActionSt
    func_end func_08031444

    thumb_func_start func_08031470
func_08031470: @ 0x08031470
    push {r4, lr}
    ldr r4, .L080314A4 @ =gBmMapMovement
    ldr r0, [r4]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
    ldr r0, .L080314A8 @ =gActiveUnit
    ldr r2, [r0]
    movs r0, #0x11
    ldrsb r0, [r2, r0]
    ldr r1, [r4]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    movs r1, #0
    strb r1, [r0]
    bl func_08031404
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080314A4: .4byte gBmMapMovement
.L080314A8: .4byte gActiveUnit
    func_end func_08031470

    thumb_func_start func_080314AC
func_080314AC: @ 0x080314AC
    push {r4, r5, r6, r7, lr}
    movs r1, #1
    rsbs r1, r1, #0
    bl GetUnitWeaponReach
    adds r7, r0, #0
    ldr r0, .L08031560 @ =gBmMapOther
    ldr r0, [r0]
    movs r1, #0
    bl BmMapFill
    movs r5, #0x81
    ldr r6, .L08031564 @ =gActionSt
.L080314C6:
    adds r0, r5, #0
    bl GetUnit
    adds r4, r0, #0
    cmp r4, #0
    beq .L080314E8
    ldr r0, [r4]
    cmp r0, #0
    beq .L080314E8
    adds r0, r4, #0
    adds r1, r7, #0
    bl BuildUnitStandingRangeForReach
    ldrb r0, [r4, #0x10]
    strb r0, [r6, #0x13]
    ldrb r0, [r4, #0x11]
    strb r0, [r6, #0x14]
.L080314E8:
    adds r5, #1
    cmp r5, #0xbf
    ble .L080314C6
    movs r0, #0
    movs r1, #0
    bl BeginTargetList
    ldr r0, .L08031568 @ =gBmMapSize
    movs r1, #2
    ldrsh r0, [r0, r1]
    subs r6, r0, #1
    cmp r6, #0
    blt .L0803155A
.L08031502:
    ldr r0, .L08031568 @ =gBmMapSize
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r4, r0, #1
    subs r7, r6, #1
    cmp r4, #0
    blt .L08031554
    lsls r5, r6, #2
.L08031512:
    ldr r0, .L0803156C @ =gBmMapMovement
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x78
    bhi .L0803154E
    ldr r0, .L08031570 @ =gBmMapUnit
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0803154E
    ldr r0, .L08031560 @ =gBmMapOther
    ldr r0, [r0]
    adds r0, r5, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803154E
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #1
    movs r3, #1
    bl EnlistTarget
.L0803154E:
    subs r4, #1
    cmp r4, #0
    bge .L08031512
.L08031554:
    adds r6, r7, #0
    cmp r6, #0
    bge .L08031502
.L0803155A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08031560: .4byte gBmMapOther
.L08031564: .4byte gActionSt
.L08031568: .4byte gBmMapSize
.L0803156C: .4byte gBmMapMovement
.L08031570: .4byte gBmMapUnit
    func_end func_080314AC

    thumb_func_start GetChapterInfo
GetChapterInfo: @ 0x08031574
    movs r1, #0x98
    muls r0, r1, r0
    ldr r1, .L08031580 @ =0x08C9A200
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L08031580: .4byte 0x08C9A200
    func_end GetChapterInfo

    thumb_func_start GetChapterMap
GetChapterMap: @ 0x08031584
    push {r4, lr}
    ldr r4, .L0803159C @ =0x08C9C9C8
    bl GetChapterInfo
    ldrb r0, [r0, #8]
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803159C: .4byte 0x08C9C9C8
    func_end GetChapterMap

    thumb_func_start GetChapterMapChanges
GetChapterMapChanges: @ 0x080315A0
    push {r4, lr}
    ldr r4, .L080315B8 @ =0x08C9C9C8
    bl GetChapterInfo
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080315B8: .4byte 0x08C9C9C8
    func_end GetChapterMapChanges

    thumb_func_start GetChapterEventInfo
GetChapterEventInfo: @ 0x080315BC
    push {r4, lr}
    ldr r4, .L080315D4 @ =0x08C9C9C8
    bl GetChapterInfo
    adds r0, #0x78
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080315D4: .4byte 0x08C9C9C8
    func_end GetChapterEventInfo

    thumb_func_start func_080315D8
func_080315D8: @ 0x080315D8
    push {lr}
    bl GetChapterInfo
    adds r0, #0x74
    bl DecodeMsg
    pop {r1}
    bx r1
    func_end func_080315D8

    thumb_func_start func_080315E8
func_080315E8: @ 0x080315E8
    ldr r1, .L080315FC @ =gPlaySt
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r0, r0, #0
    lsrs r0, r0, #0x1f
    bx lr
    .align 2, 0
.L080315FC: .4byte gPlaySt
    func_end func_080315E8

    thumb_func_start func_08031600
func_08031600: @ 0x08031600
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r1, .L0803166C @ =0x081C4060
    add r0, sp, #4
    movs r2, #6
    bl memcpy
    adds r0, r4, #0
    adds r0, #0x60
    ldrb r0, [r0]
    lsls r0, r0, #3
    adds r2, r4, #0
    adds r2, #0x62
    ldrb r2, [r2]
    adds r6, r2, r0
    adds r0, r4, #0
    adds r0, #0x61
    ldrb r0, [r0]
    adds r0, #1
    lsls r5, r0, #3
    ldr r2, [r4, #0x2c]
    ldr r0, [r2, #0xc]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08031674
    bl GetGameTime
    movs r1, #0x1f
    ands r1, r0
    cmp r1, #0x13
    bhi .L08031682
    adds r1, r6, #0
    adds r1, #9
    adds r2, r5, #7
    ldr r3, .L08031670 @ =0x08B905B0
    ldr r0, [r4, #0x2c]
    ldrb r0, [r0, #0x1b]
    lsrs r0, r0, #6
    lsls r0, r0, #1
    mov r4, sp
    adds r4, r4, r0
    adds r4, #4
    movs r0, #0xf
    ldrh r4, [r4]
    ands r0, r4
    lsls r0, r0, #0xc
    adds r0, #3
    str r0, [sp]
    movs r0, #2
    bl PutSprite
    b .L08031682
    .align 2, 0
.L0803166C: .4byte 0x081C4060
.L08031670: .4byte 0x08B905B0
.L08031674:
    str r2, [sp]
    movs r0, #2
    adds r1, r6, #0
    adds r2, r5, #0
    movs r3, #0
    bl func_080263A0
.L08031682:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08031600

    thumb_func_start func_0803168C
func_0803168C: @ 0x0803168C
    push {r4, lr}
    adds r1, r0, #0
    ldr r0, .L080316B4 @ =0x08B96998
    bl Proc_Start
    adds r4, r0, #0
    adds r0, #0x30
    movs r1, #6
    bl InitTextDb
    bl ClearIcons
    movs r0, #4
    bl ApplyIconPalettes
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080316B4: .4byte 0x08B96998
    func_end func_0803168C

    thumb_func_start func_080316B8
func_080316B8: @ 0x080316B8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    ldr r0, [r0]
    ldrh r0, [r0]
    bl DecodeMsg
    bl GetStringTextLen
    cmp r0, #0x27
    bgt .L080316DE
    adds r2, r4, #0
    adds r2, #0x62
    movs r0, #4
    strb r0, [r2]
    adds r1, r4, #0
    adds r1, #0x63
    movs r0, #0x18
    b .L080316EC
.L080316DE:
    adds r2, r4, #0
    adds r2, #0x62
    movs r0, #0
    strb r0, [r2]
    adds r1, r4, #0
    adds r1, #0x63
    movs r0, #0x10
.L080316EC:
    strb r0, [r1]
    ldrb r0, [r2]
    adds r0, #8
    strb r0, [r2]
    ldrb r0, [r1]
    subs r0, #0x10
    strb r0, [r1]
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080316B8

    thumb_func_start func_08031700
func_08031700: @ 0x08031700
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r5, r0, #0
    str r1, [sp, #4]
    adds r6, r2, #0
    adds r7, r3, #0
    cmp r5, #0
    bne .L08031724
    ldr r0, .L08031814 @ =0x08B96998
    bl Proc_Find
    adds r5, r0, #0
    bl ClearUi
.L08031724:
    ldr r0, [sp, #4]
    str r0, [r5, #0x2c]
    adds r0, r5, #0
    adds r0, #0x60
    movs r1, #0
    strb r6, [r0]
    adds r0, #1
    strb r7, [r0]
    adds r4, r7, #2
    ldr r3, [sp, #0x30]
    lsls r3, r3, #1
    adds r3, #2
    str r1, [sp]
    adds r0, r6, #0
    adds r1, r4, #0
    ldr r2, [sp, #0x2c]
    bl DrawUiFrame2
    lsls r0, r7, #5
    adds r0, r0, r6
    lsls r0, r0, #1
    ldr r1, .L08031818 @ =gBg1Tm
    mov sb, r1
    add r0, sb
    ldr r1, .L0803181C @ =0x08196084
    movs r2, #0x80
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    mov r8, r4
    adds r4, r5, #0
    adds r4, #0x30
    movs r2, #0x63
    adds r2, r2, r5
    mov sl, r2
    adds r0, r7, #1
    str r0, [sp, #8]
    ldr r1, [sp, #0x2c]
    cmp r1, #0xa
    ble .L080317C0
    adds r3, r6, #0
    adds r3, #0xa
    adds r0, r6, r1
    subs r2, r0, #1
    mov sb, r0
    cmp r3, r2
    bge .L080317A0
    ldr r7, .L08031820 @ =0x0000100B
    mov ip, r7
    lsls r1, r3, #1
    mov r7, r8
    lsls r0, r7, #6
    ldr r7, .L08031818 @ =gBg1Tm
    adds r0, r0, r7
    adds r1, r1, r0
    subs r3, r2, r3
.L08031794:
    mov r0, ip
    strh r0, [r1]
    adds r1, #2
    subs r3, #1
    cmp r3, #0
    bne .L08031794
.L080317A0:
    mov r2, r8
    lsls r1, r2, #5
    adds r0, r1, #0
    adds r0, #9
    adds r0, r0, r6
    lsls r0, r0, #1
    ldr r7, .L08031818 @ =gBg1Tm
    adds r0, r0, r7
    ldr r2, .L08031824 @ =0x00001026
    strh r2, [r0]
    subs r1, #1
    add r1, sb
    lsls r1, r1, #1
    adds r1, r1, r7
    ldr r0, .L08031828 @ =0x0000100C
    strh r0, [r1]
.L080317C0:
    adds r0, r4, #0
    bl ClearText
    adds r0, r5, #0
    bl func_080316B8
    mov r0, sl
    ldrb r1, [r0]
    adds r0, r4, #0
    bl Text_SetCursor
    ldr r1, [sp, #4]
    ldr r0, [r1]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r1, r0, #0
    adds r0, r4, #0
    bl Text_DrawString
    ldr r2, [sp, #8]
    lsls r1, r2, #5
    adds r1, #3
    adds r1, r1, r6
    lsls r1, r1, #1
    ldr r0, .L0803182C @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    movs r0, #3
    bl EnableBgSync
    adds r0, r5, #0
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08031814: .4byte 0x08B96998
.L08031818: .4byte gBg1Tm
.L0803181C: .4byte 0x08196084
.L08031820: .4byte 0x0000100B
.L08031824: .4byte 0x00001026
.L08031828: .4byte 0x0000100C
.L0803182C: .4byte gBg0Tm
    func_end func_08031700

    thumb_func_start func_08031830
func_08031830: @ 0x08031830
    adds r2, r1, #0
    ldrb r0, [r0, #0x10]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #4
    ldr r1, .L0803184C @ =gBmSt
    movs r3, #0xc
    ldrsh r1, [r1, r3]
    subs r0, r0, r1
    cmp r0, #0x77
    ble .L08031850
    movs r0, #0
    b .L08031854
    .align 2, 0
.L0803184C: .4byte gBmSt
.L08031850:
    movs r0, #0x1e
    subs r0, r0, r2
.L08031854:
    bx lr
    func_end func_08031830

    thumb_func_start func_08031858
func_08031858: @ 0x08031858
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl ClearText
    ldr r0, .L080318B0 @ =0x000010F4
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #3
    bl Text_InsertDrawString
    ldr r0, .L080318B4 @ =0x000012B0
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x28
    movs r2, #3
    bl Text_InsertDrawString
    adds r0, r5, #0
    bl GetUnitCurrentHp
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x20
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    adds r0, r5, #0
    bl GetUnitMaxHp
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080318B0: .4byte 0x000010F4
.L080318B4: .4byte 0x000012B0
    func_end func_08031858

    thumb_func_start func_080318B8
func_080318B8: @ 0x080318B8
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl ClearText
    ldr r0, .L080318FC @ =0x00001107
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r5, #0
    movs r1, #0
    movs r2, #3
    bl Text_InsertDrawString
    ldr r0, [r4, #4]
    movs r3, #0x11
    ldrsb r3, [r0, r3]
    ldr r0, [r4]
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r3, r3, r0
    movs r0, #0x1a
    ldrsb r0, [r4, r0]
    adds r3, r3, r0
    adds r0, r5, #0
    movs r1, #0x38
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080318FC: .4byte 0x00001107
    func_end func_080318B8

    thumb_func_start func_08031900
func_08031900: @ 0x08031900
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl ClearText
    ldr r0, .L08031934 @ =0x00001108
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #3
    bl Text_InsertDrawString
    adds r0, r5, #0
    bl GetUnitAid
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08031934: .4byte 0x00001108
    func_end func_08031900

    thumb_func_start func_08031938
func_08031938: @ 0x08031938
    push {r4, lr}
    lsls r4, r2, #5
    adds r4, #4
    adds r4, r4, r1
    lsls r4, r4, #1
    ldr r1, .L08031968 @ =gBg0Tm
    adds r4, r4, r1
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r0, [r1, #0x28]
    ldr r1, [r2, #0x28]
    orrs r0, r1
    bl GetUnitAidIconId
    adds r1, r0, #0
    movs r2, #0xa0
    lsls r2, r2, #7
    adds r0, r4, #0
    bl PutIcon
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08031968: .4byte gBg0Tm
    func_end func_08031938

    thumb_func_start func_0803196C
func_0803196C: @ 0x0803196C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl ClearText
    ldr r0, .L080319A0 @ =0x0000110A
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #3
    bl Text_InsertDrawString
    adds r0, r5, #0
    bl GetUnitStatusName
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x20
    movs r2, #2
    bl Text_InsertDrawString
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080319A0: .4byte 0x0000110A
    func_end func_0803196C

    thumb_func_start func_080319A4
func_080319A4: @ 0x080319A4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl ClearText
    ldr r0, .L08031A00 @ =0x000010FF
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #3
    bl Text_InsertDrawString
    ldr r0, .L08031A04 @ =0x000012B1
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x28
    movs r2, #3
    bl Text_InsertDrawString
    adds r0, r5, #0
    bl GetUnitResistance
    adds r3, r0, #0
    adds r3, r3, r6
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    adds r0, r5, #0
    bl GetUnitResistance
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x20
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08031A00: .4byte 0x000010FF
.L08031A04: .4byte 0x000012B1
    func_end func_080319A4

    thumb_func_start func_08031A08
func_08031A08: @ 0x08031A08
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl ClearText
    ldr r0, .L08031A3C @ =0x000010FF
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #3
    bl Text_InsertDrawString
    adds r0, r5, #0
    bl GetUnitResistance
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #2
    bl Text_InsertDrawNumberOrBlank
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08031A3C: .4byte 0x000010FF
    func_end func_08031A08

    thumb_func_start func_08031A40
func_08031A40: @ 0x08031A40
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl ClearText
    ldr r0, .L08031A70 @ =0x00001104
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #3
    bl Text_InsertDrawString
    adds r0, r4, #0
    movs r1, #0x38
    movs r2, #2
    adds r3, r5, #0
    bl Text_InsertDrawNumberOrBlank
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08031A70: .4byte 0x00001104
    func_end func_08031A40

    thumb_func_start func_08031A74
func_08031A74: @ 0x08031A74
    push {r4, r5, lr}
    bl func_0803168C
    adds r4, r0, #0
    adds r4, #0x38
    movs r5, #4
.L08031A80:
    adds r0, r4, #0
    movs r1, #7
    bl InitTextDb
    adds r4, #8
    subs r5, #1
    cmp r5, #0
    bge .L08031A80
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08031A74

    thumb_func_start func_08031A98
func_08031A98: @ 0x08031A98
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    str r0, [sp, #8]
    bl GetUnitItemCount
    mov sl, r0
    ldr r0, [sp, #8]
    movs r1, #0xd
    bl func_08031830
    adds r5, r0, #0
    movs r0, #0xd
    str r0, [sp]
    mov r0, sl
    str r0, [sp, #4]
    cmp r0, #0
    bne .L08031AC6
    movs r0, #1
    str r0, [sp, #4]
.L08031AC6:
    movs r0, #0
    ldr r1, [sp, #8]
    adds r2, r5, #0
    movs r3, #0
    bl func_08031700
    adds r4, r0, #0
    mov r0, sl
    cmp r0, #0
    bne .L08031B10
    adds r4, #0x38
    adds r0, r4, #0
    bl ClearText
    ldr r0, .L08031B08 @ =0x0000126D
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r4, #0
    movs r1, #0
    movs r2, #1
    bl Text_InsertDrawString
    adds r1, r5, #0
    adds r1, #0x63
    lsls r1, r1, #1
    ldr r0, .L08031B0C @ =gBg0Tm
    adds r1, r1, r0
    adds r0, r4, #0
    bl PutText
    b .L08031B94
    .align 2, 0
.L08031B08: .4byte 0x0000126D
.L08031B0C: .4byte gBg0Tm
.L08031B10:
    movs r0, #0
    mov sb, r0
    cmp sb, sl
    bge .L08031B94
    ldr r3, .L08031BA4 @ =gBg0Tm
    adds r2, r5, #0
    adds r2, #0x61
    adds r1, r5, #0
    adds r1, #0x6b
    adds r0, r5, #0
    adds r0, #0x63
    adds r5, r4, #0
    adds r5, #0x38
    lsls r0, r0, #1
    adds r0, r0, r3
    mov r8, r0
    lsls r1, r1, #1
    adds r7, r1, r3
    lsls r2, r2, #1
    adds r6, r2, r3
.L08031B38:
    mov r0, sb
    lsls r1, r0, #1
    ldr r0, [sp, #8]
    adds r0, #0x1e
    adds r0, r0, r1
    ldrh r4, [r0]
    adds r0, r5, #0
    bl ClearText
    adds r0, r4, #0
    bl GetItemName
    adds r1, r0, #0
    adds r0, r5, #0
    bl Text_DrawString
    adds r0, r5, #0
    mov r1, r8
    bl PutText
    adds r0, r4, #0
    bl GetItemUses
    adds r2, r0, #0
    adds r0, r7, #0
    movs r1, #2
    bl PutNumberOrBlank
    adds r0, r4, #0
    bl GetItemIcon
    adds r1, r0, #0
    adds r0, r6, #0
    movs r2, #0x80
    lsls r2, r2, #7
    bl PutIcon
    adds r6, #0x80
    adds r7, #0x80
    movs r0, #0x80
    add r8, r0
    adds r5, #8
    movs r0, #1
    add sb, r0
    cmp sb, sl
    blt .L08031B38
.L08031B94:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08031BA4: .4byte gBg0Tm
    func_end func_08031A98

    thumb_func_start func_08031BA8
func_08031BA8: @ 0x08031BA8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    str r0, [sp, #8]
    bl GetUnitItemCount
    str r0, [sp, #0xc]
    ldr r0, [sp, #8]
    movs r1, #0xd
    bl func_08031830
    str r0, [sp, #0x10]
    movs r0, #0xd
    str r0, [sp]
    ldr r0, [sp, #0xc]
    str r0, [sp, #4]
    movs r0, #0
    ldr r1, [sp, #8]
    ldr r2, [sp, #0x10]
    movs r3, #0
    bl func_08031700
    movs r1, #0
    mov sl, r1
    ldr r1, [sp, #0xc]
    cmp sl, r1
    bge .L08031CA6
    ldr r1, [sp, #0x10]
    adds r1, #0x6b
    str r1, [sp, #0x14]
    ldr r1, [sp, #0x10]
    adds r1, #0x63
    str r1, [sp, #0x18]
    movs r1, #0x60
    str r1, [sp, #0x1c]
    adds r7, r0, #0
    adds r7, #0x38
.L08031BF8:
    mov r1, sl
    lsls r0, r1, #1
    ldr r1, [sp, #8]
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r6, [r1]
    adds r0, r6, #0
    bl IsItemStealable
    adds r4, r0, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    adds r0, r7, #0
    bl ClearText
    movs r1, #0
    lsls r4, r4, #0x18
    asrs r4, r4, #0x18
    mov sb, r4
    cmp r4, #0
    bne .L08031C24
    movs r1, #1
.L08031C24:
    adds r0, r7, #0
    bl Text_SetColor
    adds r0, r6, #0
    bl GetItemName
    adds r1, r0, #0
    adds r0, r7, #0
    bl Text_DrawString
    ldr r0, [sp, #0x18]
    lsls r1, r0, #1
    ldr r0, .L08031CB8 @ =gBg0Tm
    mov r8, r0
    add r1, r8
    adds r0, r7, #0
    bl PutText
    ldr r1, [sp, #0x14]
    lsls r0, r1, #1
    mov r1, r8
    adds r4, r0, r1
    movs r5, #1
    mov r0, sb
    cmp r0, #0
    beq .L08031C5A
    movs r5, #2
.L08031C5A:
    adds r0, r6, #0
    bl GetItemUses
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl PutNumberOrBlank
    ldr r4, [sp, #0x1c]
    adds r4, #1
    ldr r1, [sp, #0x10]
    adds r4, r4, r1
    lsls r4, r4, #1
    add r4, r8
    adds r0, r6, #0
    bl GetItemIcon
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #0x80
    lsls r2, r2, #7
    bl PutIcon
    ldr r0, [sp, #0x14]
    adds r0, #0x40
    str r0, [sp, #0x14]
    ldr r1, [sp, #0x18]
    adds r1, #0x40
    str r1, [sp, #0x18]
    ldr r0, [sp, #0x1c]
    adds r0, #0x40
    str r0, [sp, #0x1c]
    adds r7, #8
    movs r1, #1
    add sl, r1
    ldr r0, [sp, #0xc]
    cmp sl, r0
    blt .L08031BF8
.L08031CA6:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08031CB8: .4byte gBg0Tm
    func_end func_08031BA8

    thumb_func_start func_08031CBC
func_08031CBC: @ 0x08031CBC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    str r0, [sp, #8]
    bl GetUnitItemCount
    str r0, [sp, #0x10]
    ldr r0, [sp, #8]
    movs r1, #0x10
    bl func_08031830
    mov sb, r0
    movs r0, #0x10
    str r0, [sp]
    ldr r0, [sp, #0x10]
    str r0, [sp, #4]
    movs r0, #0
    ldr r1, [sp, #8]
    mov r2, sb
    movs r3, #0
    bl func_08031700
    movs r1, #0
    str r1, [sp, #0xc]
    ldr r2, [sp, #0x10]
    cmp r1, r2
    bge .L08031DE0
    mov r1, sb
    adds r1, #0x6c
    str r1, [sp, #0x14]
    mov r2, sb
    adds r2, #0x63
    str r2, [sp, #0x18]
    movs r1, #0x60
    mov sl, r1
    adds r7, r0, #0
    adds r7, #0x38
.L08031D0C:
    ldr r2, [sp, #0xc]
    lsls r0, r2, #1
    ldr r1, [sp, #8]
    adds r1, #0x1e
    adds r1, r1, r0
    ldrh r6, [r1]
    adds r0, r6, #0
    bl IsItemRepairable
    movs r5, #0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08031D28
    movs r5, #1
.L08031D28:
    adds r0, r7, #0
    bl ClearText
    adds r0, r7, #0
    adds r1, r5, #0
    bl Text_SetColor
    adds r0, r6, #0
    bl GetItemName
    adds r1, r0, #0
    adds r0, r7, #0
    bl Text_DrawString
    ldr r0, [sp, #0x18]
    lsls r1, r0, #1
    ldr r2, .L08031DF8 @ =gBg0Tm
    mov r8, r2
    add r1, r8
    adds r0, r7, #0
    bl PutText
    ldr r1, [sp, #0x14]
    lsls r0, r1, #1
    add r0, r8
    adds r1, r5, #0
    movs r2, #0x16
    bl PutSpecialChar
    adds r0, r6, #0
    bl IsItemRepairable
    lsls r0, r0, #0x18
    movs r5, #1
    cmp r0, #0
    beq .L08031D72
    movs r5, #2
.L08031D72:
    mov r4, sl
    adds r4, #0xb
    add r4, sb
    lsls r4, r4, #1
    add r4, r8
    adds r0, r6, #0
    bl GetItemUses
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl PutNumberOrBlank
    mov r4, sl
    adds r4, #0xe
    add r4, sb
    lsls r4, r4, #1
    add r4, r8
    adds r0, r6, #0
    bl GetItemMaxUses
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    bl PutNumberOrBlank
    mov r4, sl
    adds r4, #1
    add r4, sb
    lsls r4, r4, #1
    add r4, r8
    adds r0, r6, #0
    bl GetItemIcon
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #0x80
    lsls r2, r2, #7
    bl PutIcon
    ldr r2, [sp, #0x14]
    adds r2, #0x40
    str r2, [sp, #0x14]
    ldr r0, [sp, #0x18]
    adds r0, #0x40
    str r0, [sp, #0x18]
    movs r1, #0x40
    add sl, r1
    adds r7, #8
    ldr r2, [sp, #0xc]
    adds r2, #1
    str r2, [sp, #0xc]
    ldr r0, [sp, #0x10]
    cmp r2, r0
    blt .L08031D0C
.L08031DE0:
    movs r0, #3
    bl EnableBgSync
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08031DF8: .4byte gBg0Tm
    func_end func_08031CBC

    thumb_func_start func_08031DFC
func_08031DFC: @ 0x08031DFC
    push {lr}
    bl func_0803168C
    adds r0, #0x38
    movs r1, #8
    bl InitTextDb
    pop {r0}
    bx r0
    func_end func_08031DFC

    thumb_func_start func_08031E10
func_08031E10: @ 0x08031E10
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    movs r1, #0xa
    bl func_08031830
    adds r4, r0, #0
    movs r0, #0xa
    str r0, [sp]
    movs r0, #1
    str r0, [sp, #4]
    movs r0, #0
    adds r1, r6, #0
    adds r2, r4, #0
    movs r3, #0
    bl func_08031700
    adds r5, r0, #0
    adds r5, #0x38
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_08031858
    adds r4, #0x61
    lsls r4, r4, #1
    ldr r0, .L08031E58 @ =gBg0Tm
    adds r4, r4, r0
    adds r0, r5, #0
    adds r1, r4, #0
    bl PutText
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08031E58: .4byte gBg0Tm
    func_end func_08031E10

    thumb_func_start func_08031E5C
func_08031E5C: @ 0x08031E5C
    push {r4, lr}
    bl func_0803168C
    adds r4, r0, #0
    adds r0, #0x38
    movs r1, #8
    bl InitTextDb
    adds r4, #0x40
    adds r0, r4, #0
    movs r1, #8
    bl InitTextDb
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08031E5C

    thumb_func_start func_08031E7C
func_08031E7C: @ 0x08031E7C
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #8
    mov r8, r0
    movs r1, #0xa
    bl func_08031830
    adds r4, r0, #0
    movs r0, #0xa
    str r0, [sp]
    movs r0, #2
    str r0, [sp, #4]
    movs r0, #0
    mov r1, r8
    adds r2, r4, #0
    movs r3, #0
    bl func_08031700
    adds r5, r0, #0
    adds r6, r5, #0
    adds r6, #0x38
    adds r0, r6, #0
    mov r1, r8
    bl func_08031858
    adds r1, r4, #0
    adds r1, #0x61
    lsls r1, r1, #1
    ldr r0, .L08031EEC @ =gBg0Tm
    mov sb, r0
    add r1, sb
    adds r0, r6, #0
    bl PutText
    adds r5, #0x40
    adds r0, r5, #0
    mov r1, r8
    bl func_0803196C
    adds r4, #0xa1
    lsls r4, r4, #1
    add r4, sb
    adds r0, r5, #0
    adds r1, r4, #0
    bl PutText
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08031EEC: .4byte gBg0Tm
    func_end func_08031E7C

    thumb_func_start func_08031EF0
func_08031EF0: @ 0x08031EF0
    push {lr}
    bl func_0803168C
    adds r0, #0x38
    movs r1, #8
    bl InitTextDb
    pop {r0}
    bx r0
    func_end func_08031EF0

    thumb_func_start func_08031F04
func_08031F04: @ 0x08031F04
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    movs r1, #0xa
    bl func_08031830
    adds r4, r0, #0
    movs r0, #0xa
    str r0, [sp]
    movs r0, #1
    str r0, [sp, #4]
    movs r0, #0
    adds r1, r6, #0
    adds r2, r4, #0
    movs r3, #0
    bl func_08031700
    adds r5, r0, #0
    adds r5, #0x38
    adds r0, r6, #0
    adds r0, #0x31
    ldrb r0, [r0]
    lsrs r0, r0, #4
    movs r2, #7
    subs r2, r2, r0
    adds r0, r5, #0
    adds r1, r6, #0
    bl func_080319A4
    adds r4, #0x61
    lsls r4, r4, #1
    ldr r0, .L08031F58 @ =gBg0Tm
    adds r4, r4, r0
    adds r0, r5, #0
    adds r1, r4, #0
    bl PutText
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08031F58: .4byte gBg0Tm
    func_end func_08031F04

    thumb_func_start func_08031F5C
func_08031F5C: @ 0x08031F5C
    push {r4, lr}
    bl func_0803168C
    adds r4, r0, #0
    adds r0, #0x38
    movs r1, #8
    bl InitTextDb
    adds r4, #0x40
    adds r0, r4, #0
    movs r1, #8
    bl InitTextDb
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08031F5C

    thumb_func_start func_08031F7C
func_08031F7C: @ 0x08031F7C
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #8
    adds r6, r0, #0
    mov sb, r1
    movs r1, #0xa
    bl func_08031830
    adds r4, r0, #0
    movs r0, #0xa
    str r0, [sp]
    movs r0, #2
    str r0, [sp, #4]
    movs r0, #0
    adds r1, r6, #0
    adds r2, r4, #0
    movs r3, #0
    bl func_08031700
    adds r5, r0, #0
    movs r0, #0x38
    adds r0, r0, r5
    mov r8, r0
    adds r0, r6, #0
    adds r0, #0x31
    ldrb r0, [r0]
    lsrs r0, r0, #4
    movs r2, #7
    subs r2, r2, r0
    mov r0, r8
    adds r1, r6, #0
    bl func_08031A08
    adds r1, r4, #0
    adds r1, #0x61
    lsls r1, r1, #1
    ldr r6, .L08031FF8 @ =gBg0Tm
    adds r1, r1, r6
    mov r0, r8
    bl PutText
    adds r5, #0x40
    adds r0, r5, #0
    mov r1, sb
    bl func_08031A40
    adds r4, #0xa1
    lsls r4, r4, #1
    adds r4, r4, r6
    adds r0, r5, #0
    adds r1, r4, #0
    bl PutText
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08031FF8: .4byte gBg0Tm
    func_end func_08031F7C

    thumb_func_start func_08031FFC
func_08031FFC: @ 0x08031FFC
    push {r4, r5, lr}
    adds r5, r0, #0
    bl func_0803168C
    ldr r4, .L08032028 @ =0x0203A8E4
    str r0, [r4]
    adds r0, #0x38
    movs r1, #8
    bl InitTextDb
    adds r0, r5, #0
    bl func_0803168C
    str r0, [r4, #4]
    adds r0, #0x38
    movs r1, #8
    bl InitTextDb
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08032028: .4byte 0x0203A8E4
    func_end func_08031FFC

    thumb_func_start func_0803202C
func_0803202C: @ 0x0803202C
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    bl InitIcons
    movs r0, #4
    bl ApplyIconPalettes
    adds r0, r4, #0
    bl func_08031FFC
    ldr r0, .L08032060 @ =0x08B90640
    str r0, [sp]
    movs r0, #6
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    movs r3, #0
    bl StartSpriteRefresher
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08032060: .4byte 0x08B90640
    func_end func_0803202C

    thumb_func_start func_08032064
func_08032064: @ 0x08032064
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    mov r8, r0
    movs r1, #0xa
    bl func_08031830
    adds r4, r0, #0
    bl ClearUi
    ldr r6, .L0803210C @ =0x0203A8E4
    ldr r0, [r6]
    ldr r5, .L08032110 @ =gActiveUnit
    ldr r1, [r5]
    movs r7, #0xa
    str r7, [sp]
    movs r2, #1
    mov sl, r2
    str r2, [sp, #4]
    adds r2, r4, #0
    movs r3, #0
    bl func_08031700
    ldr r0, [r6]
    adds r0, #0x38
    ldr r1, [r5]
    bl func_08031900
    ldr r0, [r6]
    adds r0, #0x38
    adds r1, r4, #0
    adds r1, #0x61
    lsls r1, r1, #1
    ldr r2, .L08032114 @ =gBg0Tm
    mov sb, r2
    add r1, sb
    bl PutText
    ldr r0, [r5]
    adds r1, r4, #1
    movs r2, #3
    bl func_08031938
    ldr r0, [r6, #4]
    str r7, [sp]
    mov r1, sl
    str r1, [sp, #4]
    mov r1, r8
    adds r2, r4, #0
    movs r3, #6
    bl func_08031700
    ldr r0, [r6, #4]
    adds r0, #0x38
    mov r1, r8
    bl func_080318B8
    ldr r0, [r6, #4]
    adds r0, #0x38
    ldr r2, .L08032118 @ =0x00000121
    adds r1, r4, r2
    lsls r1, r1, #1
    add r1, sb
    bl PutText
    adds r4, #4
    lsls r4, r4, #3
    movs r0, #0
    adds r1, r4, #0
    movs r2, #0x27
    bl MoveSpriteRefresher
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803210C: .4byte 0x0203A8E4
.L08032110: .4byte gActiveUnit
.L08032114: .4byte gBg0Tm
.L08032118: .4byte 0x00000121
    func_end func_08032064

    thumb_func_start func_0803211C
func_0803211C: @ 0x0803211C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r5, r0, #0
    movs r1, #0xa
    bl func_08031830
    adds r4, r0, #0
    bl ClearUi
    ldrb r0, [r5, #0x1b]
    bl GetUnit
    adds r7, r0, #0
    ldr r6, .L080321D0 @ =0x0203A8E4
    ldr r0, [r6]
    ldr r5, .L080321D4 @ =gActiveUnit
    ldr r1, [r5]
    movs r2, #0xa
    mov sl, r2
    str r2, [sp]
    movs r2, #1
    mov sb, r2
    str r2, [sp, #4]
    adds r2, r4, #0
    movs r3, #0
    bl func_08031700
    ldr r0, [r6]
    adds r0, #0x38
    ldr r1, [r5]
    bl func_08031900
    ldr r0, [r6]
    adds r0, #0x38
    adds r1, r4, #0
    adds r1, #0x61
    lsls r1, r1, #1
    ldr r2, .L080321D8 @ =gBg0Tm
    mov r8, r2
    add r1, r8
    bl PutText
    ldr r0, [r5]
    adds r1, r4, #1
    movs r2, #3
    bl func_08031938
    ldr r0, [r6, #4]
    mov r1, sl
    str r1, [sp]
    mov r2, sb
    str r2, [sp, #4]
    adds r1, r7, #0
    adds r2, r4, #0
    movs r3, #6
    bl func_08031700
    ldr r0, [r6, #4]
    adds r0, #0x38
    adds r1, r7, #0
    bl func_080318B8
    ldr r0, [r6, #4]
    adds r0, #0x38
    ldr r2, .L080321DC @ =0x00000121
    adds r1, r4, r2
    lsls r1, r1, #1
    add r1, r8
    bl PutText
    adds r4, #4
    lsls r4, r4, #3
    movs r0, #0
    adds r1, r4, #0
    movs r2, #0x27
    bl MoveSpriteRefresher
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080321D0: .4byte 0x0203A8E4
.L080321D4: .4byte gActiveUnit
.L080321D8: .4byte gBg0Tm
.L080321DC: .4byte 0x00000121
    func_end func_0803211C

    thumb_func_start func_080321E0
func_080321E0: @ 0x080321E0
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    bl InitIcons
    movs r0, #4
    bl ApplyIconPalettes
    adds r0, r4, #0
    bl func_08031FFC
    ldr r0, .L08032214 @ =0x08B905B8
    str r0, [sp]
    movs r0, #6
    str r0, [sp, #4]
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    movs r3, #0
    bl StartSpriteRefresher
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08032214: .4byte 0x08B905B8
    func_end func_080321E0

    thumb_func_start func_08032218
func_08032218: @ 0x08032218
    push {r4, r5, r6, lr}
    mov r6, sl
    mov r5, sb
    mov r4, r8
    push {r4, r5, r6}
    sub sp, #8
    mov r8, r0
    movs r1, #0xa
    bl func_08031830
    adds r4, r0, #0
    ldr r0, .L080322CC @ =gActiveUnit
    ldr r0, [r0]
    ldrb r0, [r0, #0x1b]
    bl GetUnit
    adds r6, r0, #0
    bl ClearUi
    ldr r5, .L080322D0 @ =0x0203A8E4
    ldr r0, [r5]
    movs r1, #0xa
    mov sl, r1
    str r1, [sp]
    movs r2, #1
    mov sb, r2
    str r2, [sp, #4]
    adds r1, r6, #0
    adds r2, r4, #0
    movs r3, #0
    bl func_08031700
    ldr r0, [r5]
    adds r0, #0x38
    adds r1, r6, #0
    bl func_080318B8
    ldr r0, [r5]
    adds r0, #0x38
    adds r1, r4, #0
    adds r1, #0x61
    lsls r1, r1, #1
    ldr r6, .L080322D4 @ =gBg0Tm
    adds r1, r1, r6
    bl PutText
    ldr r0, [r5, #4]
    mov r1, sl
    str r1, [sp]
    mov r2, sb
    str r2, [sp, #4]
    mov r1, r8
    adds r2, r4, #0
    movs r3, #6
    bl func_08031700
    ldr r0, [r5, #4]
    adds r0, #0x38
    mov r1, r8
    bl func_08031900
    ldr r0, [r5, #4]
    adds r0, #0x38
    ldr r2, .L080322D8 @ =0x00000121
    adds r1, r4, r2
    lsls r1, r1, #1
    adds r1, r1, r6
    bl PutText
    adds r1, r4, #1
    mov r0, r8
    movs r2, #9
    bl func_08031938
    adds r4, #4
    lsls r4, r4, #3
    movs r0, #0
    adds r1, r4, #0
    movs r2, #0x27
    bl MoveSpriteRefresher
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080322CC: .4byte gActiveUnit
.L080322D0: .4byte 0x0203A8E4
.L080322D4: .4byte gBg0Tm
.L080322D8: .4byte 0x00000121
    func_end func_08032218

    thumb_func_start func_080322DC
func_080322DC: @ 0x080322DC
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r7, r1, #0
    movs r5, #0
.L080322E6:
    lsls r4, r5, #5
    adds r0, r6, #0
    adds r0, #0x58
    movs r1, #0
    ldrsh r0, [r0, r1]
    subs r0, #0x20
    adds r4, r4, r0
    adds r0, r6, #0
    adds r0, #0x5c
    movs r2, #0
    ldrsh r0, [r0, r2]
    adds r0, r0, r5
    adds r1, r6, #0
    adds r1, #0x5e
    movs r2, #0
    ldrsh r1, [r1, r2]
    bl __modsi3
    ldr r1, .L08032334 @ =0x08B969A8
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    ldr r1, .L08032338 @ =0x00004240
    adds r0, r0, r1
    str r0, [sp]
    movs r0, #2
    adds r1, r4, #0
    adds r2, r7, #0
    ldr r3, .L0803233C @ =0x08B905F8
    bl PutSprite
    adds r5, #1
    cmp r5, #8
    ble .L080322E6
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08032334: .4byte 0x08B969A8
.L08032338: .4byte 0x00004240
.L0803233C: .4byte 0x08B905F8
    func_end func_080322DC

    thumb_func_start func_08032340
func_08032340: @ 0x08032340
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r5, [r7, #0x2c]
    adds r0, #0x30
    ldr r1, .L08032404 @ =0x06014800
    movs r2, #0x14
    bl InitSpriteTextFont
    movs r0, #1
    bl SetTextFontGlyphs
    ldr r0, .L08032408 @ =0x08194694
    movs r1, #0xa0
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r4, r7, #0
    adds r4, #0x48
    movs r6, #1
.L0803236E:
    adds r0, r4, #0
    bl InitSpriteText
    adds r0, r4, #0
    movs r1, #0
    bl SpriteText_DrawBackgroundExt
    adds r0, r4, #0
    movs r1, #0
    bl Text_SetColor
    adds r4, #8
    subs r6, #1
    cmp r6, #0
    bge .L0803236E
    cmp r5, #0
    beq .L080323F2
    movs r0, #0x5e
    adds r0, r0, r7
    mov r8, r0
    adds r6, r7, #0
    adds r6, #0x5c
    ldrb r2, [r5]
    cmp r2, #1
    bls .L080323E0
    adds r4, r7, #0
    adds r4, #0x48
.L080323A4:
    adds r0, r4, #0
    adds r1, r5, #0
    bl Text_DrawCharacter
    adds r5, r0, #0
    adds r0, r4, #0
    bl Text_GetCursor
    cmp r0, #0xe0
    ble .L080323DA
    subs r5, #1
    adds r4, #8
    adds r0, r5, #0
    mov r1, sp
    bl GetCharTextLen
    adds r0, r7, #0
    adds r0, #0x48
    bl Text_GetCursor
    adds r1, r0, #0
    ldr r0, [sp]
    subs r1, r1, r0
    subs r1, #0xc0
    adds r0, r4, #0
    bl Text_SetCursor
.L080323DA:
    ldrb r0, [r5]
    cmp r0, #1
    bhi .L080323A4
.L080323E0:
    ldr r0, [r7, #0x2c]
    bl GetStringTextLen
    adds r0, #0x10
    asrs r0, r0, #5
    adds r1, r0, #1
    mov r2, r8
    strh r1, [r2]
    strh r0, [r6]
.L080323F2:
    movs r0, #0
    bl SetTextFont
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08032404: .4byte 0x06014800
.L08032408: .4byte 0x08194694
    func_end func_08032340

    thumb_func_start func_0803240C
func_0803240C: @ 0x0803240C
    ldr r0, .L08032434 @ =0x04000006
    ldrh r0, [r0]
    adds r1, r0, #0
    subs r0, #0x8c
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0x14
    bls .L08032440
    ldr r2, .L08032438 @ =0x04000050
    ldr r1, .L0803243C @ =0x030028AC
    ldrh r0, [r1]
    strh r0, [r2]
    adds r2, #2
    ldrh r0, [r1, #8]
    strh r0, [r2]
    adds r2, #2
    ldrb r0, [r1, #0xa]
    strb r0, [r2]
    b .L08032460
    .align 2, 0
.L08032434: .4byte 0x04000006
.L08032438: .4byte 0x04000050
.L0803243C: .4byte 0x030028AC
.L08032440:
    ldr r0, .L08032464 @ =0x08B969C2
    subs r1, #0x80
    adds r1, r1, r0
    ldr r0, .L08032468 @ =gBmSt
    adds r0, #0x38
    ldrb r1, [r1]
    ldrb r0, [r0]
    subs r2, r1, r0
    cmp r2, #0
    bge .L08032456
    movs r2, #0
.L08032456:
    ldr r0, .L0803246C @ =0x04000050
    movs r1, #0xec
    strh r1, [r0]
    adds r0, #4
    strb r2, [r0]
.L08032460:
    bx lr
    .align 2, 0
.L08032464: .4byte 0x08B969C2
.L08032468: .4byte gBmSt
.L0803246C: .4byte 0x04000050
    func_end func_0803240C

    thumb_func_start func_08032470
func_08032470: @ 0x08032470
    push {lr}
    ldr r0, .L08032484 @ =gBmSt
    adds r0, #0x38
    movs r1, #8
    strb r1, [r0]
    ldr r0, .L08032488 @ =func_0803240C
    bl SetOnHBlankA
    pop {r0}
    bx r0
    .align 2, 0
.L08032484: .4byte gBmSt
.L08032488: .4byte func_0803240C
    func_end func_08032470

    thumb_func_start func_0803248C
func_0803248C: @ 0x0803248C
    ldr r0, .L080324A0 @ =gBmSt
    adds r1, r0, #0
    adds r1, #0x38
    ldrb r0, [r1]
    cmp r0, #0
    beq .L0803249C
    subs r0, #1
    strb r0, [r1]
.L0803249C:
    bx lr
    .align 2, 0
.L080324A0: .4byte gBmSt
    func_end func_0803248C

    thumb_func_start func_080324A4
func_080324A4: @ 0x080324A4
    push {r4, lr}
    adds r4, r0, #0
    ldr r1, .L080324CC @ =gBmSt
    adds r1, #0x38
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #8
    bne .L080324C6
    movs r0, #0
    bl SetOnHBlankA
    adds r0, r4, #0
    bl Proc_Break
.L080324C6:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080324CC: .4byte gBmSt
    func_end func_080324A4

    thumb_func_start func_080324D0
func_080324D0: @ 0x080324D0
    push {lr}
    adds r2, r0, #0
    adds r2, #0x58
    movs r1, #0x1f
    strh r1, [r2]
    adds r0, #0x5a
    movs r1, #6
    strh r1, [r0]
    ldr r0, .L080324EC @ =0x08B969E4
    movs r1, #3
    bl Proc_Start
    pop {r0}
    bx r0
    .align 2, 0
.L080324EC: .4byte 0x08B969E4
    func_end func_080324D0

    thumb_func_start func_080324F0
func_080324F0: @ 0x080324F0
    push {lr}
    ldr r0, .L0803250C @ =gBmSt
    ldrh r1, [r0, #0x2a]
    subs r1, #0x10
    strh r1, [r0, #0x2a]
    movs r0, #0
    bl CameraMove_8015DB0
    ldr r0, .L08032510 @ =0x08B969E4
    bl Proc_BreakEach
    pop {r0}
    bx r0
    .align 2, 0
.L0803250C: .4byte gBmSt
.L08032510: .4byte 0x08B969E4
    func_end func_080324F0

    thumb_func_start func_08032514
func_08032514: @ 0x08032514
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r1, .L0803255C @ =0x08B96A0C
    adds r4, r5, #0
    adds r4, #0x5a
    movs r2, #0
    ldrsh r0, [r4, r2]
    adds r0, r0, r1
    ldrb r1, [r0]
    adds r0, r5, #0
    bl func_080322DC
    ldrh r1, [r4]
    movs r2, #0
    ldrsh r0, [r4, r2]
    cmp r0, #0
    beq .L0803253A
    subs r0, r1, #1
    strh r0, [r4]
.L0803253A:
    adds r1, r5, #0
    adds r1, #0x58
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L08032556
    movs r0, #0x1f
    strh r0, [r1]
    adds r1, #4
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
.L08032556:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0803255C: .4byte 0x08B96A0C
    func_end func_08032514

    thumb_func_start func_08032560
func_08032560: @ 0x08032560
    push {r4, lr}
    adds r2, r0, #0
    adds r4, r1, #0
    ldr r0, .L08032594 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsrs r0, r0, #7
    cmp r0, #1
    beq .L0803258C
    ldr r0, .L08032598 @ =0x08B96A14
    adds r1, r2, #0
    bl Proc_Start
    str r4, [r0, #0x2c]
    bl func_08032340
    bl func_08019B40
    ldr r1, .L0803259C @ =gBmSt
    ldrh r0, [r1, #0x2a]
    adds r0, #0x10
    strh r0, [r1, #0x2a]
.L0803258C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08032594: .4byte gPlaySt
.L08032598: .4byte 0x08B96A14
.L0803259C: .4byte gBmSt
    func_end func_08032560

    thumb_func_start func_080325A0
func_080325A0: @ 0x080325A0
    push {r4, lr}
    adds r2, r0, #0
    adds r2, #0x58
    movs r1, #0
    strh r1, [r2]
    adds r0, #0x5a
    movs r1, #6
    strh r1, [r0]
    ldr r0, .L08032604 @ =0x08405450
    ldr r1, .L08032608 @ =0x06015000
    bl Decompress
    ldr r0, .L0803260C @ =0x08405670
    movs r1, #0xa8
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r0, .L08032610 @ =0x08B969E4
    movs r1, #3
    bl Proc_Start
    ldr r4, .L08032614 @ =gPlaySt
    adds r0, r4, #0
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080325E0
    ldr r0, .L08032618 @ =0x0000038A
    bl m4aSongNumStart
.L080325E0:
    adds r3, r4, #0
    adds r3, #0x42
    ldrb r2, [r3]
    lsls r0, r2, #0x1a
    lsrs r0, r0, #0x1f
    movs r1, #1
    subs r1, r1, r0
    movs r0, #1
    ands r1, r0
    lsls r1, r1, #5
    movs r0, #0x21
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08032604: .4byte 0x08405450
.L08032608: .4byte 0x06015000
.L0803260C: .4byte 0x08405670
.L08032610: .4byte 0x08B969E4
.L08032614: .4byte gPlaySt
.L08032618: .4byte 0x0000038A
    func_end func_080325A0

    thumb_func_start func_0803261C
func_0803261C: @ 0x0803261C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r6, r0, #0
    movs r1, #0
    ldr r0, .L080326C0 @ =gPlaySt
    adds r0, #0x42
    mov r8, r0
    ldrb r2, [r0]
    lsls r0, r2, #0x1a
    cmp r0, #0
    bge .L08032638
    movs r1, #5
.L08032638:
    ldr r4, .L080326C4 @ =0x08B905F8
    lsls r5, r1, #0xc
    movs r0, #0xa0
    lsls r0, r0, #2
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0x38
    adds r2, r6, #0
    adds r3, r4, #0
    bl PutSprite
    movs r0, #0xa1
    lsls r0, r0, #2
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0x58
    adds r2, r6, #0
    adds r3, r4, #0
    bl PutSprite
    movs r0, #0xa2
    lsls r0, r0, #2
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0x78
    adds r2, r6, #0
    adds r3, r4, #0
    bl PutSprite
    ldr r4, .L080326C8 @ =0x08B905B8
    movs r0, #0xa3
    lsls r0, r0, #2
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0x98
    adds r2, r6, #0
    adds r3, r4, #0
    bl PutSprite
    ldr r7, .L080326CC @ =0x08B905D0
    ldr r0, .L080326D0 @ =0x0000028E
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0xa8
    adds r2, r6, #0
    adds r3, r7, #0
    bl PutSprite
    mov r3, r8
    ldrb r3, [r3]
    lsls r0, r3, #0x1a
    cmp r0, #0
    blt .L080326D8
    ldr r0, .L080326D4 @ =0x0000028F
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0xb0
    adds r2, r6, #0
    adds r3, r4, #0
    bl PutSprite
    b .L080326FE
    .align 2, 0
.L080326C0: .4byte gPlaySt
.L080326C4: .4byte 0x08B905F8
.L080326C8: .4byte 0x08B905B8
.L080326CC: .4byte 0x08B905D0
.L080326D0: .4byte 0x0000028E
.L080326D4: .4byte 0x0000028F
.L080326D8:
    ldr r0, .L0803270C @ =0x00000292
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0xb0
    adds r2, r6, #0
    adds r3, r4, #0
    bl PutSprite
    movs r0, #0xa5
    lsls r0, r0, #2
    adds r0, r5, r0
    str r0, [sp]
    movs r0, #2
    movs r1, #0xc0
    adds r2, r6, #0
    adds r3, r7, #0
    bl PutSprite
.L080326FE:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803270C: .4byte 0x00000292
    func_end func_0803261C

    thumb_func_start func_08032710
func_08032710: @ 0x08032710
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r1, .L08032768 @ =0x08B96A4C
    adds r4, r5, #0
    adds r4, #0x5a
    movs r2, #0
    ldrsh r0, [r4, r2]
    adds r0, r0, r1
    ldrb r0, [r0]
    bl func_0803261C
    ldrh r1, [r4]
    movs r3, #0
    ldrsh r0, [r4, r3]
    cmp r0, #0
    beq .L08032734
    subs r0, r1, #1
    strh r0, [r4]
.L08032734:
    adds r1, r5, #0
    adds r1, #0x58
    ldrh r2, [r1]
    movs r3, #0
    ldrsh r0, [r1, r3]
    cmp r0, #0x1d
    bgt .L08032746
    adds r0, r2, #1
    strh r0, [r1]
.L08032746:
    ldrh r1, [r1]
    cmp r1, #0x1e
    bne .L08032760
    ldr r0, .L0803276C @ =gpKeySt
    ldr r1, [r0]
    movs r0, #4
    ldrh r1, [r1, #4]
    ands r0, r1
    cmp r0, #0
    bne .L08032760
    adds r0, r5, #0
    bl Proc_Break
.L08032760:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08032768: .4byte 0x08B96A4C
.L0803276C: .4byte gpKeySt
    func_end func_08032710

    thumb_func_start func_08032770
func_08032770: @ 0x08032770
    push {lr}
    adds r1, r0, #0
    ldr r0, .L08032794 @ =0x08B96A54
    bl Proc_StartBlocking
    movs r1, #0
    str r1, [r0, #0x2c]
    bl func_08032340
    bl func_08019B40
    ldr r1, .L08032798 @ =gBmSt
    ldrh r0, [r1, #0x2a]
    adds r0, #0x10
    strh r0, [r1, #0x2a]
    pop {r0}
    bx r0
    .align 2, 0
.L08032794: .4byte 0x08B96A54
.L08032798: .4byte gBmSt
    func_end func_08032770

    thumb_func_start func_0803279C
func_0803279C: @ 0x0803279C
    push {lr}
    ldr r0, .L080327A8 @ =0x08B96A14
    bl Proc_EndEach
    pop {r0}
    bx r0
    .align 2, 0
.L080327A8: .4byte 0x08B96A14
    func_end func_0803279C

    thumb_func_start IsSubtitleHelpActive
IsSubtitleHelpActive: @ 0x080327AC
    push {lr}
    ldr r0, .L080327C0 @ =0x08B96A14
    bl Proc_Find
    cmp r0, #0
    beq .L080327BA
    movs r0, #1
.L080327BA:
    pop {r1}
    bx r1
    .align 2, 0
.L080327C0: .4byte 0x08B96A14
    func_end IsSubtitleHelpActive

    thumb_func_start func_080327C4
func_080327C4: @ 0x080327C4
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r5, .L080327F8 @ =0x08B96A14
    adds r0, r5, #0
    bl Proc_Find
    adds r4, r0, #0
    cmp r4, #0
    bne .L080327E2
    adds r0, r5, #0
    adds r1, r6, #0
    bl Proc_Start
    adds r4, r0, #0
.L080327E2:
    str r7, [r4, #0x2c]
    adds r0, r4, #0
    bl func_08032340
    adds r1, r4, #0
    adds r1, #0x58
    movs r0, #0x1f
    strh r0, [r1]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080327F8: .4byte 0x08B96A14
    func_end func_080327C4

    thumb_func_start func_080327FC
func_080327FC: @ 0x080327FC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    adds r1, r3, #0
    cmp r1, #0
    blt .L08032810
    adds r0, r4, #0
    bl SetUnitStatus
.L08032810:
    adds r0, r4, #0
    adds r1, r5, #0
    bl AddUnitHp
    adds r0, r4, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bgt .L08032828
    adds r0, r4, #0
    bl UnitKill
.L08032828:
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_0802F754
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080327FC

    thumb_func_start func_08032838
func_08032838: @ 0x08032838
    push {lr}
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L0803284E
    ldr r0, .L08032854 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L0803284E
    bl RenderMapForFade
.L0803284E:
    pop {r0}
    bx r0
    .align 2, 0
.L08032854: .4byte gPlaySt
    func_end func_08032838

    thumb_func_start func_08032858
func_08032858: @ 0x08032858
    push {r4, r5, lr}
    adds r4, r1, #0
    movs r1, #1
    rsbs r1, r1, #0
    bl BattleInitItemEffect
    ldr r5, .L08032898 @ =0x0203A3F0
    adds r0, r5, #0
    adds r0, #0x48
    movs r1, #0x6b
    strh r1, [r0]
    adds r0, #2
    strh r1, [r0]
    adds r0, r5, #0
    adds r1, r4, #0
    bl AddUnitHp
    ldr r0, .L0803289C @ =0x0203A50C
    ldr r1, [r0]
    adds r0, r5, #0
    adds r0, #0x72
    ldrb r0, [r0]
    ldrb r5, [r5, #0x13]
    subs r0, r0, r5
    strb r0, [r1, #3]
    bl BattleHitTerminate
    bl BeginBattleAnimations
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08032898: .4byte 0x0203A3F0
.L0803289C: .4byte 0x0203A50C
    func_end func_08032858

    thumb_func_start func_080328A0
func_080328A0: @ 0x080328A0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    movs r1, #1
    rsbs r1, r1, #0
    bl BattleInitItemEffect
    ldr r5, .L080328FC @ =0x0203A3F0
    rsbs r4, r4, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl AddUnitHp
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bge .L080328C6
    movs r0, #0
    strb r0, [r5, #0x13]
.L080328C6:
    ldr r2, .L08032900 @ =0x0203A50C
    ldr r0, [r2]
    adds r1, r5, #0
    adds r1, #0x72
    ldrb r1, [r1]
    ldrb r3, [r5, #0x13]
    subs r1, r1, r3
    strb r1, [r0, #3]
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L080328E8
    ldr r1, [r2]
    movs r0, #2
    ldrb r2, [r1, #2]
    orrs r0, r2
    strb r0, [r1, #2]
.L080328E8:
    bl BattleHitTerminate
    bl func_0806EFC4
    adds r0, r6, #0
    bl func_08032838
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080328FC: .4byte 0x0203A3F0
.L08032900: .4byte 0x0203A50C
    func_end func_080328A0

    thumb_func_start func_08032904
func_08032904: @ 0x08032904
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    movs r1, #1
    rsbs r1, r1, #0
    bl BattleInitItemEffect
    ldr r5, .L08032968 @ =0x0203A3F0
    rsbs r4, r4, #0
    adds r0, r5, #0
    adds r1, r4, #0
    bl AddUnitHp
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bge .L0803292A
    movs r0, #0
    strb r0, [r5, #0x13]
.L0803292A:
    ldr r2, .L0803296C @ =0x0203A50C
    ldr r0, [r2]
    adds r1, r5, #0
    adds r1, #0x72
    ldrb r1, [r1]
    ldrb r3, [r5, #0x13]
    subs r1, r1, r3
    strb r1, [r0, #3]
    movs r0, #0x13
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bne .L08032954
    ldr r1, [r2]
    movs r0, #1
    ldrh r2, [r1]
    orrs r0, r2
    strh r0, [r1]
    movs r0, #2
    ldrb r3, [r1, #2]
    orrs r0, r3
    strb r0, [r1, #2]
.L08032954:
    bl BattleHitTerminate
    bl func_0806F050
    adds r0, r6, #0
    bl func_08032838
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08032968: .4byte 0x0203A3F0
.L0803296C: .4byte 0x0203A50C
    func_end func_08032904

    thumb_func_start func_08032970
func_08032970: @ 0x08032970
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0
    movs r1, #0
    bl BeginTargetList
    movs r4, #0x81
.L0803297E:
    adds r0, r4, #0
    bl GetUnit
    adds r2, r0, #0
    cmp r2, #0
    beq .L080329AE
    ldr r0, [r2]
    cmp r0, #0
    beq .L080329AE
    ldr r0, [r2, #0xc]
    ldr r1, .L080329C4 @ =0x0001000C
    ands r0, r1
    cmp r0, #0
    bne .L080329AE
    movs r0, #0x10
    ldrsb r0, [r2, r0]
    movs r1, #0x11
    ldrsb r1, [r2, r1]
    ldrb r2, [r2, #0xb]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    movs r3, #0
    bl EnlistTarget
.L080329AE:
    adds r4, #1
    cmp r4, #0xbf
    ble .L0803297E
    adds r1, r5, #0
    adds r1, #0x4c
    movs r0, #0
    strh r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080329C4: .4byte 0x0001000C
    func_end func_08032970

    thumb_func_start func_080329C8
func_080329C8: @ 0x080329C8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r5, #0
    adds r6, #0x4c
    movs r0, #0
    ldrsh r4, [r6, r0]
    bl CountTargets
    cmp r4, r0
    bne .L080329E6
    adds r0, r5, #0
    movs r1, #0x63
    bl Proc_Goto
    b .L08032A5A
.L080329E6:
    movs r1, #0
    ldrsh r0, [r6, r1]
    bl GetTarget
    ldrb r0, [r0, #2]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetUnit
    adds r4, r0, #0
    bl HideUnitSprite
    adds r0, r4, #0
    bl UnitKill
    movs r2, #0x10
    ldrsb r2, [r4, r2]
    lsls r2, r2, #4
    ldr r1, .L08032A40 @ =gBmSt
    movs r3, #0xc
    ldrsh r0, [r1, r3]
    subs r2, r2, r0
    movs r0, #0x11
    ldrsb r0, [r4, r0]
    lsls r0, r0, #4
    movs r3, #0xe
    ldrsh r1, [r1, r3]
    subs r0, r0, r1
    cmp r2, #0xf0
    bhi .L08032A2A
    cmp r0, #0
    blt .L08032A2A
    cmp r0, #0xa0
    ble .L08032A44
.L08032A2A:
    adds r1, r5, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    adds r0, r5, #0
    movs r1, #0
    bl Proc_Goto
    b .L08032A5A
    .align 2, 0
.L08032A40: .4byte gBmSt
.L08032A44:
    adds r0, r4, #0
    bl StartMu
    bl StartMuDeathFade
    ldrh r0, [r6]
    adds r0, #1
    strh r0, [r6]
    adds r0, r5, #0
    bl Proc_Break
.L08032A5A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080329C8

    thumb_func_start func_08032A60
func_08032A60: @ 0x08032A60
    push {r4, r5, r6, lr}
    bl ClearUi
    ldr r0, .L08032AB4 @ =0x083FE094
    ldr r1, .L08032AB8 @ =0x06005000
    bl Decompress
    ldr r0, .L08032ABC @ =0x083FE11C
    movs r1, #0x60
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r4, .L08032AC0 @ =gBg0Tm
    ldr r1, .L08032AC4 @ =0x083FE13C
    movs r2, #0xca
    lsls r2, r2, #6
    adds r0, r4, #0
    bl TmApplyTsa_thm
    adds r6, r4, #0
    movs r0, #0x80
    lsls r0, r0, #1
    adds r5, r6, r0
    movs r4, #6
.L08032A90:
    adds r0, r6, #0
    adds r1, r5, #0
    movs r2, #2
    movs r3, #4
    bl TmCopyRect_thm
    movs r0, #0x80
    lsls r0, r0, #1
    adds r5, r5, r0
    subs r4, #1
    cmp r4, #0
    bge .L08032A90
    movs r0, #1
    bl EnableBgSync
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08032AB4: .4byte 0x083FE094
.L08032AB8: .4byte 0x06005000
.L08032ABC: .4byte 0x083FE11C
.L08032AC0: .4byte gBg0Tm
.L08032AC4: .4byte 0x083FE13C
    func_end func_08032A60

    thumb_func_start func_08032AC8
func_08032AC8: @ 0x08032AC8
    push {r4, lr}
    ldr r1, .L08032AF8 @ =gBmSt
    ldr r0, .L08032AFC @ =gActiveUnit
    ldr r0, [r0]
    movs r4, #0x10
    ldrsb r4, [r0, r4]
    lsls r4, r4, #4
    ldrh r1, [r1, #0xc]
    subs r4, r1, r4
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    bl GetGameTime
    adds r2, r0, #0
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #0
    adds r1, r4, #0
    bl SetBgOffset
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08032AF8: .4byte gBmSt
.L08032AFC: .4byte gActiveUnit
    func_end func_08032AC8

    thumb_func_start func_08032B00
func_08032B00: @ 0x08032B00
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0
    ldr r0, .L08032B9C @ =gActiveUnit
    ldr r0, [r0]
    bl HideUnitSprite
    ldr r0, .L08032BA0 @ =gDispIo
    mov ip, r0
    movs r1, #0x21
    rsbs r1, r1, #0
    adds r0, r1, #0
    mov r2, ip
    ldrb r2, [r2, #1]
    ands r0, r2
    movs r2, #0x41
    rsbs r2, r2, #0
    ands r0, r2
    movs r2, #0x80
    orrs r0, r2
    mov r3, ip
    strb r0, [r3, #1]
    mov r7, ip
    adds r7, #0x36
    ldrb r0, [r7]
    ands r1, r0
    movs r2, #0x37
    add r2, ip
    mov r8, r2
    movs r0, #0x20
    ldrb r3, [r2]
    orrs r0, r3
    movs r2, #2
    rsbs r2, r2, #0
    ands r1, r2
    movs r5, #3
    rsbs r5, r5, #0
    ands r1, r5
    movs r4, #5
    rsbs r4, r4, #0
    ands r1, r4
    movs r3, #8
    orrs r1, r3
    movs r2, #0x10
    orrs r1, r2
    strb r1, [r7]
    movs r1, #1
    orrs r0, r1
    ands r0, r5
    ands r0, r4
    orrs r0, r3
    orrs r0, r2
    mov r1, r8
    strb r0, [r1]
    ldr r0, .L08032BA4 @ =0x0000FFE0
    mov r2, ip
    ldrh r2, [r2, #0x3c]
    ands r0, r2
    movs r1, #1
    orrs r0, r1
    ldr r1, .L08032BA8 @ =0x0000E0FF
    ands r0, r1
    movs r3, #0x80
    lsls r3, r3, #5
    adds r1, r3, #0
    orrs r0, r1
    mov r1, ip
    strh r0, [r1, #0x3c]
    adds r6, #0x4c
    movs r0, #0x40
    strh r0, [r6]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08032B9C: .4byte gActiveUnit
.L08032BA0: .4byte gDispIo
.L08032BA4: .4byte 0x0000FFE0
.L08032BA8: .4byte 0x0000E0FF
    func_end func_08032B00

    thumb_func_start func_08032BAC
func_08032BAC: @ 0x08032BAC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, .L08032BFC @ =gActiveUnit
    ldr r4, [r0]
    movs r1, #0x10
    ldrsb r1, [r4, r1]
    lsls r1, r1, #4
    ldr r3, .L08032C00 @ =gBmSt
    movs r2, #0xc
    ldrsh r0, [r3, r2]
    subs r1, r1, r0
    movs r2, #0x11
    ldrsb r2, [r4, r2]
    lsls r2, r2, #4
    movs r6, #0xe
    ldrsh r0, [r3, r6]
    subs r2, r2, r0
    movs r3, #0xa0
    lsls r3, r3, #6
    str r4, [sp]
    movs r0, #4
    bl func_0802647C
    adds r1, r5, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L08032BF2
    adds r0, r5, #0
    bl Proc_Break
.L08032BF2:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08032BFC: .4byte gActiveUnit
.L08032C00: .4byte gBmSt
    func_end func_08032BAC

    thumb_func_start func_08032C04
func_08032C04: @ 0x08032C04
    push {lr}
    ldr r0, .L08032C14 @ =gActiveUnit
    ldr r0, [r0]
    bl ShowUnitSprite
    pop {r0}
    bx r0
    .align 2, 0
.L08032C14: .4byte gActiveUnit
    func_end func_08032C04

    thumb_func_start func_08032C18
func_08032C18: @ 0x08032C18
    adds r2, r0, #0
    adds r2, #0x4c
    movs r3, #0
    movs r1, #0xf
    strh r1, [r2]
    str r3, [r0, #0x2c]
    movs r1, #1
    str r1, [r0, #0x34]
    bx lr
    func_end func_08032C18

    thumb_func_start func_08032C2C
func_08032C2C: @ 0x08032C2C
    adds r2, r0, #0
    adds r2, #0x4c
    movs r1, #0xf
    strh r1, [r2]
    movs r1, #0x10
    str r1, [r0, #0x2c]
    subs r1, #0x11
    str r1, [r0, #0x34]
    bx lr
    func_end func_08032C2C

    thumb_func_start func_08032C40
func_08032C40: @ 0x08032C40
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x2c]
    ldr r0, [r4, #0x34]
    adds r2, r2, r0
    str r2, [r4, #0x2c]
    ldr r0, .L08032C94 @ =gDispIo
    mov ip, r0
    mov r3, ip
    adds r3, #0x3c
    movs r0, #0x3f
    ldrb r1, [r3]
    ands r0, r1
    movs r1, #0x40
    orrs r0, r1
    strb r0, [r3]
    mov r0, ip
    adds r0, #0x44
    movs r1, #0
    strb r2, [r0]
    mov r2, ip
    adds r2, #0x45
    movs r0, #0x10
    strb r0, [r2]
    mov r0, ip
    adds r0, #0x46
    strb r1, [r0]
    adds r1, r4, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L08032C8C
    adds r0, r4, #0
    bl Proc_Break
.L08032C8C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08032C94: .4byte gDispIo
    func_end func_08032C40

    thumb_func_start func_08032C98
func_08032C98: @ 0x08032C98
    push {r4, lr}
    adds r4, r0, #0
    movs r2, #0
    ldr r0, .L08032CB8 @ =gActiveUnit
    ldr r0, [r0]
    movs r1, #0xc0
    ldrb r0, [r0, #0xb]
    ands r1, r0
    cmp r1, #0x40
    beq .L08032CD4
    cmp r1, #0x40
    bgt .L08032CBC
    cmp r1, #0
    beq .L08032CC2
    b .L08032CD6
    .align 2, 0
.L08032CB8: .4byte gActiveUnit
.L08032CBC:
    cmp r1, #0x80
    beq .L08032CCC
    b .L08032CD6
.L08032CC2:
    ldr r2, .L08032CC8 @ =0x02022BE0
    b .L08032CD6
    .align 2, 0
.L08032CC8: .4byte 0x02022BE0
.L08032CCC:
    ldr r2, .L08032CD0 @ =0x02022C00
    b .L08032CD6
    .align 2, 0
.L08032CD0: .4byte 0x02022C00
.L08032CD4:
    ldr r2, .L08032CF0 @ =0x02022C20
.L08032CD6:
    movs r1, #0x90
    lsls r1, r1, #2
    adds r0, r2, #0
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r1, r4, #0
    adds r1, #0x4c
    movs r0, #0
    strh r0, [r1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08032CF0: .4byte 0x02022C20
    func_end func_08032C98

    thumb_func_start func_08032CF4
func_08032CF4: @ 0x08032CF4
    push {lr}
    adds r3, r1, #0
    cmp r3, #0x1f
    ble .L08032CFE
    movs r3, #0x1f
.L08032CFE:
    cmp r3, #0
    bge .L08032D04
    movs r3, #0
.L08032D04:
    ldr r0, .L08032D1C @ =gPal
    lsls r1, r3, #0xa
    lsls r2, r3, #5
    adds r1, r1, r2
    adds r1, r1, r3
    ldr r2, .L08032D20 @ =0x0000025E
    adds r0, r0, r2
    strh r1, [r0]
    bl EnablePalSync
    pop {r0}
    bx r0
    .align 2, 0
.L08032D1C: .4byte gPal
.L08032D20: .4byte 0x0000025E
    func_end func_08032CF4

    thumb_func_start func_08032D24
func_08032D24: @ 0x08032D24
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r5, #0
    adds r4, #0x4c
    movs r0, #0
    ldrsh r1, [r4, r0]
    adds r0, r5, #0
    bl func_08032CF4
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x20
    bne .L08032D4A
    adds r0, r5, #0
    bl Proc_Break
.L08032D4A:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08032D24

    thumb_func_start func_08032D50
func_08032D50: @ 0x08032D50
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r5, #0
    adds r4, #0x4c
    movs r0, #0
    ldrsh r1, [r4, r0]
    adds r0, r5, #0
    bl func_08032CF4
    ldrh r0, [r4]
    subs r0, #1
    strh r0, [r4]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L08032D74
    adds r0, r5, #0
    bl Proc_Break
.L08032D74:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08032D50

    thumb_func_start func_08032D7C
func_08032D7C: @ 0x08032D7C
    push {lr}
    bl ClearUi
    ldr r3, .L08032DD0 @ =gDispIo
    movs r0, #0x21
    rsbs r0, r0, #0
    ldrb r1, [r3, #1]
    ands r0, r1
    movs r1, #0x41
    rsbs r1, r1, #0
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r3, #1]
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
    adds r2, r3, #0
    adds r2, #0x36
    movs r0, #0x20
    ldrb r1, [r2]
    orrs r1, r0
    strb r1, [r2]
    adds r1, r3, #0
    adds r1, #0x37
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    pop {r0}
    bx r0
    .align 2, 0
.L08032DD0: .4byte gDispIo
    func_end func_08032D7C

    thumb_func_start func_08032DD4
func_08032DD4: @ 0x08032DD4
    push {lr}
    adds r2, r1, #0
    ldr r1, .L08032DFC @ =gActiveUnit
    str r0, [r1]
    cmp r2, #0
    beq .L08032E08
    ldr r0, .L08032E00 @ =0x08B96B74
    adds r1, r2, #0
    bl Proc_StartBlocking
    ldr r0, .L08032E04 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L08032E10
    movs r0, #0xaa
    bl m4aSongNumStart
    b .L08032E10
    .align 2, 0
.L08032DFC: .4byte gActiveUnit
.L08032E00: .4byte 0x08B96B74
.L08032E04: .4byte gPlaySt
.L08032E08:
    ldr r0, .L08032E14 @ =0x08B96B74
    movs r1, #3
    bl Proc_StartBlocking
.L08032E10:
    pop {r0}
    bx r0
    .align 2, 0
.L08032E14: .4byte 0x08B96B74
    func_end func_08032DD4

    thumb_func_start func_08032E18
func_08032E18: @ 0x08032E18
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08032E34 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    bl func_080242E8
    bl CountTargets
    cmp r0, #0
    bne .L08032E38
    adds r0, r4, #0
    bl Proc_End
    b .L08032E40
    .align 2, 0
.L08032E34: .4byte gPlaySt
.L08032E38:
    adds r1, r4, #0
    adds r1, #0x4c
    movs r0, #0
    strh r0, [r1]
.L08032E40:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08032E18

    thumb_func_start func_08032E48
func_08032E48: @ 0x08032E48
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r5, r7, #0
    adds r5, #0x4c
    movs r1, #0
    ldrsh r0, [r5, r1]
    bl GetTarget
    adds r4, r0, #0
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r6, r0, #0
    ldr r1, .L08032E80 @ =gActionSt
    ldrb r0, [r4, #2]
    strb r0, [r1, #0xc]
    movs r0, #0
    ldrsh r4, [r5, r0]
    bl CountTargets
    cmp r4, r0
    bne .L08032E84
    adds r0, r7, #0
    bl Proc_End
    b .L08032ECA
    .align 2, 0
.L08032E80: .4byte gActionSt
.L08032E84:
    ldr r0, .L08032EB0 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L08032EB8
    movs r0, #0x11
    ldrsb r0, [r6, r0]
    ldr r1, .L08032EB4 @ =gMapFog
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r6, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08032EB8
    adds r0, r7, #0
    movs r1, #1
    bl Proc_Goto
    b .L08032ECA
    .align 2, 0
.L08032EB0: .4byte gPlaySt
.L08032EB4: .4byte gMapFog
.L08032EB8:
    adds r0, r6, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L08032ECA
    adds r0, r7, #0
    movs r1, #1
    bl Proc_Goto
.L08032ECA:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08032E48

    thumb_func_start func_08032ED0
func_08032ED0: @ 0x08032ED0
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    movs r1, #0
    ldrsb r1, [r0, r1]
    movs r2, #1
    ldrsb r2, [r0, r2]
    adds r0, r4, #0
    bl EnsureCameraOntoPosition
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08032ED0

    thumb_func_start func_08032EF4
func_08032EF4: @ 0x08032EF4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    adds r5, r0, #0
    movs r0, #2
    ldrsb r0, [r5, r0]
    bl GetUnit
    adds r4, r0, #0
    movs r0, #3
    ldrsb r0, [r5, r0]
    cmp r0, #0
    bge .L08032F20
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08032DD4
    b .L08032F30
.L08032F20:
    adds r0, r4, #0
    bl HideUnitSprite
    movs r1, #3
    ldrsb r1, [r5, r1]
    adds r0, r4, #0
    bl func_08032858
.L08032F30:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08032EF4

    thumb_func_start func_08032F38
func_08032F38: @ 0x08032F38
    push {lr}
    bl EndAllMus
    ldr r0, .L08032F5C @ =0x0203A3F0
    ldrb r0, [r0, #0x13]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08032F56
    ldr r0, .L08032F60 @ =gActionSt
    ldrb r0, [r0, #0xc]
    bl GetUnit
    bl ShowUnitSprite
.L08032F56:
    pop {r0}
    bx r0
    .align 2, 0
.L08032F5C: .4byte 0x0203A3F0
.L08032F60: .4byte gActionSt
    func_end func_08032F38

    thumb_func_start func_08032F64
func_08032F64: @ 0x08032F64
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    adds r4, r0, #0
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r1, r0, #0
    movs r0, #3
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bge .L08032F92
    adds r0, r5, #0
    movs r2, #0
    movs r3, #0
    bl func_080327FC
    b .L08032FA0
.L08032F92:
    movs r2, #3
    ldrsb r2, [r4, r2]
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r5, #0
    bl func_080327FC
.L08032FA0:
    adds r1, r5, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08032F64

    thumb_func_start func_08032FB0
func_08032FB0: @ 0x08032FB0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08032FD4 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    bl func_080243BC
    movs r0, #4
    bl func_08024A88
    bl CountTargets
    cmp r0, #0
    bne .L08032FD8
    adds r0, r4, #0
    bl Proc_End
    b .L08032FE0
    .align 2, 0
.L08032FD4: .4byte gPlaySt
.L08032FD8:
    adds r1, r4, #0
    adds r1, #0x4c
    movs r0, #0
    strh r0, [r1]
.L08032FE0:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08032FB0

    thumb_func_start func_08032FE8
func_08032FE8: @ 0x08032FE8
    push {r4, r5, lr}
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    adds r5, r0, #0
    movs r0, #2
    ldrsb r0, [r5, r0]
    bl GetUnit
    adds r4, r0, #0
    bl HideUnitSprite
    movs r1, #3
    ldrsb r1, [r5, r1]
    adds r0, r4, #0
    bl func_080328A0
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08032FE8

    thumb_func_start func_08033014
func_08033014: @ 0x08033014
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r6, #0
    adds r5, #0x4c
    movs r1, #0
    ldrsh r0, [r5, r1]
    bl GetTarget
    adds r4, r0, #0
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r1, r0, #0
    movs r2, #3
    ldrsb r2, [r4, r2]
    rsbs r2, r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r6, #0
    bl func_080327FC
    ldrh r0, [r5]
    adds r0, #1
    strh r0, [r5]
    ldr r0, .L08033080 @ =gActionSt
    ldrb r0, [r0, #0xc]
    bl GetUnit
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L08033064
    bl CheckForWaitEvents
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08033064
    bl RunWaitEvents
.L08033064:
    ldr r0, .L08033080 @ =gActionSt
    ldrb r0, [r0, #0xc]
    bl GetUnit
    bl GetUnitCurrentHp
    cmp r0, #0
    bgt .L08033078
    bl RefreshUnitSprites
.L08033078:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08033080: .4byte gActionSt
    func_end func_08033014

    thumb_func_start func_08033084
func_08033084: @ 0x08033084
    push {r4, lr}
    adds r4, r0, #0
    bl CountTargets
    cmp r0, #0
    bne .L08033098
    adds r0, r4, #0
    bl Proc_End
    b .L080330A0
.L08033098:
    adds r1, r4, #0
    adds r1, #0x4c
    movs r0, #0
    strh r0, [r1]
.L080330A0:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08033084

    thumb_func_start func_080330A8
func_080330A8: @ 0x080330A8
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    adds r7, r0, #0
    ldr r4, .L080330F0 @ =gActionSt
    ldrb r0, [r4, #0xc]
    bl GetUnit
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r5, r0, #0x1c
    ldrb r0, [r4, #0xc]
    bl GetUnit
    movs r1, #0
    bl SetUnitStatus
    cmp r5, #4
    bgt .L080330EA
    cmp r5, #1
    blt .L080330EA
    movs r0, #2
    ldrsb r0, [r7, r0]
    bl GetUnit
    adds r1, r6, #0
    bl func_08032DD4
.L080330EA:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080330F0: .4byte gActionSt
    func_end func_080330A8

    thumb_func_start func_080330F4
func_080330F4: @ 0x080330F4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08033114 @ =gActionSt
    ldrb r0, [r0, #0xc]
    bl GetUnit
    movs r1, #0
    bl SetUnitStatus
    adds r4, #0x4c
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08033114: .4byte gActionSt
    func_end func_080330F4

    thumb_func_start func_08033118
func_08033118: @ 0x08033118
    adds r0, #0x4c
    movs r1, #0
    strh r1, [r0]
    bx lr
    func_end func_08033118

    thumb_func_start func_08033120
func_08033120: @ 0x08033120
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r4, r7, #0
    adds r4, #0x4c
    movs r1, #0
    ldrsh r0, [r4, r1]
    bl GetTarget
    adds r5, r0, #0
    movs r0, #2
    ldrsb r0, [r5, r0]
    bl GetUnit
    adds r6, r0, #0
    ldr r1, .L08033158 @ =gActionSt
    ldrb r0, [r5, #2]
    strb r0, [r1, #0xc]
    movs r0, #0
    ldrsh r4, [r4, r0]
    bl CountTargets
    cmp r4, r0
    bne .L0803315C
    adds r0, r7, #0
    bl Proc_End
    b .L080331AA
    .align 2, 0
.L08033158: .4byte gActionSt
.L0803315C:
    movs r0, #2
    ldrsb r0, [r5, r0]
    cmp r0, #0
    beq .L080331AA
    ldr r0, .L08033190 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L08033198
    movs r0, #0x11
    ldrsb r0, [r6, r0]
    ldr r1, .L08033194 @ =gMapFog
    ldr r1, [r1]
    lsls r0, r0, #2
    adds r0, r0, r1
    movs r1, #0x10
    ldrsb r1, [r6, r1]
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08033198
    adds r0, r7, #0
    movs r1, #1
    bl Proc_Goto
    b .L080331AA
    .align 2, 0
.L08033190: .4byte gPlaySt
.L08033194: .4byte gMapFog
.L08033198:
    adds r0, r6, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L080331AA
    adds r0, r7, #0
    movs r1, #1
    bl Proc_Goto
.L080331AA:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end func_08033120

    thumb_func_start func_080331B0
func_080331B0: @ 0x080331B0
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    adds r2, r0, #0
    movs r0, #0xc0
    lsls r0, r0, #3
    ldrh r1, [r2, #2]
    cmp r1, r0
    beq .L080331DA
    movs r1, #0
    ldrsb r1, [r2, r1]
    ldrb r2, [r2, #1]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    adds r0, r4, #0
    bl EnsureCameraOntoPosition
.L080331DA:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080331B0

    thumb_func_start func_080331E0
func_080331E0: @ 0x080331E0
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    adds r4, r0, #0
    ldrb r1, [r4, #2]
    movs r0, #2
    ldrsb r0, [r4, r0]
    cmp r0, #0
    bne .L080332AE
    movs r0, #3
    ldrsb r0, [r4, r0]
    cmp r0, #0x64
    beq .L08033238
    cmp r0, #0x64
    bgt .L0803321A
    cmp r0, #6
    beq .L0803328C
    cmp r0, #6
    bgt .L08033214
    cmp r0, #4
    beq .L08033228
    b .L0803329A
.L08033214:
    cmp r0, #7
    beq .L08033280
    b .L0803329A
.L0803321A:
    cmp r0, #0x66
    beq .L0803325C
    cmp r0, #0x66
    blt .L0803324A
    cmp r0, #0x67
    beq .L0803326E
    b .L0803329A
.L08033228:
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r2, #1
    ldrsb r2, [r4, r2]
    adds r0, r5, #0
    bl func_0801ED90
    b .L0803329A
.L08033238:
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r2, #1
    ldrsb r2, [r4, r2]
    adds r0, r5, #0
    movs r3, #3
    bl func_0801ED04
    b .L0803329A
.L0803324A:
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r2, #1
    ldrsb r2, [r4, r2]
    adds r0, r5, #0
    movs r3, #2
    bl func_0801ED04
    b .L0803329A
.L0803325C:
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r2, #1
    ldrsb r2, [r4, r2]
    adds r0, r5, #0
    movs r3, #0
    bl func_0801ED04
    b .L0803329A
.L0803326E:
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r2, #1
    ldrsb r2, [r4, r2]
    adds r0, r5, #0
    movs r3, #1
    bl func_0801ED04
    b .L0803329A
.L08033280:
    movs r1, #0
    ldrsb r1, [r4, r1]
    adds r0, r5, #0
    bl func_0801EF48
    b .L0803329A
.L0803328C:
    movs r1, #0
    ldrsb r1, [r4, r1]
    movs r2, #1
    ldrsb r2, [r4, r2]
    adds r0, r5, #0
    bl func_0801EFCC
.L0803329A:
    adds r1, r5, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    adds r0, r5, #0
    movs r1, #0
    bl Proc_Goto
    b .L080332EA
.L080332AE:
    ldr r5, .L080332D8 @ =gActionSt
    strb r1, [r5, #0xc]
    ldrb r0, [r4, #3]
    strb r0, [r5, #0x15]
    ldrb r0, [r5, #0xc]
    bl GetUnit
    bl HideUnitSprite
    ldrb r0, [r5, #0x15]
    cmp r0, #5
    bhi .L080332DC
    ldrb r0, [r5, #0xc]
    bl GetUnit
    movs r1, #3
    ldrsb r1, [r4, r1]
    bl func_080328A0
    b .L080332EA
    .align 2, 0
.L080332D8: .4byte gActionSt
.L080332DC:
    ldrb r0, [r5, #0xc]
    bl GetUnit
    movs r1, #3
    ldrsb r1, [r4, r1]
    bl func_08032904
.L080332EA:
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080331E0

    thumb_func_start func_080332F0
func_080332F0: @ 0x080332F0
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r0, #0x4c
    movs r1, #0
    ldrsh r0, [r0, r1]
    bl GetTarget
    adds r4, r0, #0
    movs r0, #2
    ldrsb r0, [r4, r0]
    bl GetUnit
    adds r5, r0, #0
    movs r0, #3
    ldrsb r0, [r4, r0]
    cmp r0, #5
    bgt .L08033322
    adds r2, r0, #0
    rsbs r2, r2, #0
    adds r0, r6, #0
    adds r1, r5, #0
    movs r3, #1
    bl func_080327FC
    b .L08033334
.L08033322:
    movs r2, #3
    ldrsb r2, [r4, r2]
    rsbs r2, r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_080327FC
.L08033334:
    adds r0, r5, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bgt .L08033342
    bl RefreshUnitSprites
.L08033342:
    adds r1, r6, #0
    adds r1, #0x4c
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080332F0

    thumb_func_start func_08033354
func_08033354: @ 0x08033354
    ldr r0, .L08033370 @ =0x0203A470
    ldrb r0, [r0, #0x10]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #4
    ldr r1, .L08033374 @ =gBmSt
    movs r2, #0xc
    ldrsh r1, [r1, r2]
    subs r0, r0, r1
    cmp r0, #0x6f
    bgt .L08033378
    movs r0, #1
    b .L08033384
    .align 2, 0
.L08033370: .4byte 0x0203A470
.L08033374: .4byte gBmSt
.L08033378:
    cmp r0, #0x70
    bgt .L08033380
    movs r0, #0
    b .L08033384
.L08033380:
    movs r0, #1
    rsbs r0, r0, #0
.L08033384:
    bx lr
    func_end func_08033354

    thumb_func_start func_08033388
func_08033388: @ 0x08033388
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    movs r0, #0
    movs r1, #3
    bl ApplyIconPalette
    movs r1, #1
    ldr r0, .L08033408 @ =gPal
    mov sb, r0
    movs r2, #0x1f
    mov ip, r2
    ldr r0, .L0803340C @ =0x0200300C
    mov r8, r0
.L080333A6:
    adds r0, r1, #0
    adds r0, #0x30
    lsls r0, r0, #1
    add r0, sb
    ldrh r0, [r0]
    adds r4, r0, #0
    mov r2, ip
    ands r4, r2
    asrs r3, r0, #5
    ands r3, r2
    asrs r2, r0, #0xa
    mov r0, ip
    ands r2, r0
    lsls r0, r1, #1
    adds r7, r1, #1
    mov r1, r8
    adds r5, r0, r1
    movs r6, #7
.L080333CA:
    lsls r0, r2, #0xa
    lsls r1, r3, #5
    adds r0, r0, r1
    adds r0, r0, r4
    strh r0, [r5]
    adds r4, #3
    cmp r4, #0x1f
    ble .L080333DC
    movs r4, #0x1f
.L080333DC:
    adds r3, #3
    cmp r3, #0x1f
    ble .L080333E4
    movs r3, #0x1f
.L080333E4:
    adds r2, #3
    cmp r2, #0x1f
    ble .L080333EC
    movs r2, #0x1f
.L080333EC:
    adds r5, #0x20
    subs r6, #1
    cmp r6, #0
    bge .L080333CA
    adds r1, r7, #0
    cmp r1, #0xf
    ble .L080333A6
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08033408: .4byte gPal
.L0803340C: .4byte 0x0200300C
    func_end func_08033388

    thumb_func_start func_08033410
func_08033410: @ 0x08033410
    push {r4, r5, r6, r7, lr}
    movs r7, #0
.L08033414:
    lsls r5, r7, #3
    ldr r0, .L08033458 @ =0x02002FDC
    adds r5, r5, r0
    adds r0, r5, #0
    movs r1, #4
    bl InitText
    ldr r1, .L0803345C @ =0x081C4068
    lsls r0, r7, #2
    adds r0, r0, r1
    ldr r6, [r0]
    adds r0, r6, #0
    bl DecodeMsg
    adds r1, r0, #0
    movs r0, #0x20
    bl GetStringTextCenteredPos
    adds r4, r0, #0
    adds r0, r6, #0
    bl DecodeMsg
    adds r3, r0, #0
    adds r0, r5, #0
    adds r1, r4, #0
    movs r2, #3
    bl Text_InsertDrawString
    adds r7, #1
    cmp r7, #5
    ble .L08033414
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08033458: .4byte 0x02002FDC
.L0803345C: .4byte 0x081C4068
    func_end func_08033410

    thumb_func_start func_08033460
func_08033460: @ 0x08033460
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #8
    mov r8, r0
    adds r6, r1, #0
    ldr r0, [r2]
    ldrh r0, [r0]
    bl DecodeMsg
    adds r4, r0, #0
    movs r0, #0x30
    adds r1, r4, #0
    bl GetStringTextCenteredPos
    adds r5, r0, #0
    adds r0, r6, #0
    bl ClearText
    movs r0, #0
    str r0, [sp]
    str r4, [sp, #4]
    adds r0, r6, #0
    mov r1, r8
    movs r2, #0
    adds r3, r5, #0
    bl PutDrawText
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_08033460

    thumb_func_start func_080334A4
func_080334A4: @ 0x080334A4
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #8
    mov r8, r0
    adds r6, r1, #0
    adds r0, r2, #0
    bl GetItemName
    adds r4, r0, #0
    movs r0, #0x38
    adds r1, r4, #0
    bl GetStringTextCenteredPos
    adds r5, r0, #0
    adds r0, r6, #0
    bl ClearText
    movs r0, #0
    str r0, [sp]
    str r4, [sp, #4]
    adds r0, r6, #0
    mov r1, r8
    movs r2, #0
    adds r3, r5, #0
    bl PutDrawText
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end func_080334A4

    thumb_func_start func_080334E8
func_080334E8: @ 0x080334E8
    push {r4, lr}
    adds r4, r0, #0
    adds r3, r1, #0
    ldr r0, [r2]
    cmp r0, #0
    ble .L08033516
    ldrb r0, [r3]
    adds r0, #1
    strb r0, [r3]
    ldr r0, [r2]
    subs r0, #1
    str r0, [r2]
    ldr r0, [r4, #0x4c]
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08033516
    ldrb r0, [r3]
    adds r0, #1
    strb r0, [r3]
    ldr r0, [r2]
    subs r0, #1
    str r0, [r2]
.L08033516:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080334E8

    thumb_func_start func_0803351C
func_0803351C: @ 0x0803351C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x10
    adds r6, r0, #0
    ldr r7, .L08033660 @ =0x0203A3F0
    adds r0, r7, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemUses
    str r0, [sp, #8]
    ldr r0, .L08033664 @ =0x0203A470
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemUses
    str r0, [sp, #0xc]
    add r1, sp, #4
    mov r0, sp
    bl func_0802903C
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    mov r8, r0
    adds r4, r6, #0
    adds r4, #0x50
    movs r0, #0
    strb r0, [r4]
    adds r1, r6, #0
    adds r1, #0x52
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    bne .L08033574
    adds r0, r7, #0
    adds r0, #0x7d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L080335D2
.L08033574:
    add r5, sp, #8
    adds r0, r7, #0
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_080334E8
    mov r0, r8
    cmp r0, #0
    beq .L08033594
    ldr r0, [sp]
    cmp r0, r7
    bne .L08033594
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_080334E8
.L08033594:
    ldr r4, .L08033660 @ =0x0203A3F0
    adds r0, r4, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    ldr r1, .L08033664 @ =0x0203A470
    bl IsItemEffectiveAgainst
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080335B0
    adds r1, r6, #0
    adds r1, #0x52
    movs r0, #1
    strb r0, [r1]
.L080335B0:
    adds r0, r4, #0
    adds r0, #0x53
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    ble .L080335D2
    ldr r0, [r4, #0x4c]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L080335D2
    adds r1, r6, #0
    adds r1, #0x52
    movs r0, #1
    strb r0, [r1]
.L080335D2:
    adds r4, r6, #0
    adds r4, #0x51
    movs r0, #0
    strb r0, [r4]
    adds r1, r6, #0
    adds r1, #0x53
    strb r0, [r1]
    ldr r5, .L08033664 @ =0x0203A470
    adds r0, r5, #0
    adds r0, #0x48
    ldrh r0, [r0]
    adds r7, r1, #0
    cmp r0, #0
    bne .L080335FC
    adds r0, r5, #0
    adds r0, #0x7d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08033652
.L080335FC:
    add r6, sp, #0xc
    adds r0, r5, #0
    adds r1, r4, #0
    adds r2, r6, #0
    bl func_080334E8
    mov r0, r8
    cmp r0, #0
    beq .L0803361C
    ldr r0, [sp]
    cmp r0, r5
    bne .L0803361C
    adds r1, r4, #0
    adds r2, r6, #0
    bl func_080334E8
.L0803361C:
    ldr r4, .L08033664 @ =0x0203A470
    adds r0, r4, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    ldr r1, .L08033660 @ =0x0203A3F0
    bl IsItemEffectiveAgainst
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08033634
    movs r0, #1
    strb r0, [r7]
.L08033634:
    adds r0, r4, #0
    adds r0, #0x53
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    ble .L08033652
    ldr r0, [r4, #0x4c]
    movs r1, #0x80
    lsls r1, r1, #1
    ands r0, r1
    cmp r0, #0
    beq .L08033652
    movs r0, #1
    strb r0, [r7]
.L08033652:
    add sp, #0x10
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08033660: .4byte 0x0203A3F0
.L08033664: .4byte 0x0203A470
    func_end func_0803351C

    thumb_func_start func_08033668
func_08033668: @ 0x08033668
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r0, .L080336E4 @ =0x0200373C
    ldr r1, .L080336E8 @ =0x08195C2C
    movs r2, #0x90
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    ldr r4, .L080336EC @ =0x0200323C
    adds r0, r4, #0
    movs r1, #0xa
    movs r2, #0xf
    movs r3, #0
    bl TmFillRect_thm
    adds r0, r4, #0
    adds r0, #0x46
    adds r5, r6, #0
    adds r5, #0x38
    ldr r2, .L080336F0 @ =0x0203A3F0
    adds r1, r5, #0
    bl func_08033460
    ldr r1, .L080336F4 @ =0x000002C2
    adds r0, r4, r1
    ldr r7, .L080336F8 @ =0x0203A470
    adds r1, r5, #0
    adds r2, r7, #0
    bl func_08033460
    ldr r3, .L080336FC @ =0x00000342
    adds r4, r4, r3
    adds r6, #0x48
    adds r0, r7, #0
    adds r0, #0x4a
    ldrh r2, [r0]
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_080334A4
    adds r0, r7, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    bne .L08033700
    adds r0, r7, #0
    adds r0, #0x7d
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08033700
    movs r4, #1
    rsbs r4, r4, #0
    adds r0, r7, #0
    adds r0, #0x64
    movs r1, #0xff
    strh r1, [r0]
    adds r0, #6
    strh r1, [r0]
    adds r2, r7, #0
    b .L0803371A
    .align 2, 0
.L080336E4: .4byte 0x0200373C
.L080336E8: .4byte 0x08195C2C
.L080336EC: .4byte 0x0200323C
.L080336F0: .4byte 0x0203A3F0
.L080336F4: .4byte 0x000002C2
.L080336F8: .4byte 0x0203A470
.L080336FC: .4byte 0x00000342
.L08033700:
    ldr r2, .L08033730 @ =0x0203A470
    adds r0, r2, #0
    adds r0, #0x5a
    movs r3, #0
    ldrsh r1, [r0, r3]
    ldr r0, .L08033734 @ =0x0203A3F0
    adds r0, #0x5c
    movs r3, #0
    ldrsh r0, [r0, r3]
    subs r4, r1, r0
    cmp r4, #0
    bge .L0803371A
    movs r4, #0
.L0803371A:
    adds r2, #0x72
    movs r0, #0
    ldrsb r0, [r2, r0]
    cmp r0, #0x63
    ble .L0803373C
    ldr r0, .L08033738 @ =0x02003300
    movs r1, #2
    movs r2, #0xff
    bl PutNumberTwoChr
    b .L0803374A
    .align 2, 0
.L08033730: .4byte 0x0203A470
.L08033734: .4byte 0x0203A3F0
.L08033738: .4byte 0x02003300
.L0803373C:
    ldr r0, .L080337B4 @ =0x02003300
    ldrb r2, [r2]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    movs r1, #2
    bl PutNumberTwoChr
.L0803374A:
    ldr r5, .L080337B8 @ =0x02003380
    adds r0, r5, #0
    movs r1, #2
    adds r2, r4, #0
    bl PutNumberTwoChr
    adds r0, r5, #0
    adds r0, #0x80
    ldr r4, .L080337BC @ =0x0203A470
    adds r1, r4, #0
    adds r1, #0x64
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r5, r1
    adds r1, r4, #0
    adds r1, #0x6a
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    ldr r2, .L080337C0 @ =0x0203A3F0
    adds r0, r2, #0
    adds r0, #0x5a
    movs r3, #0
    ldrsh r1, [r0, r3]
    adds r0, r4, #0
    adds r0, #0x5c
    movs r3, #0
    ldrsh r0, [r0, r3]
    subs r4, r1, r0
    cmp r4, #0
    bge .L08033798
    movs r4, #0
.L08033798:
    adds r1, r2, #0
    adds r1, #0x72
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0x63
    ble .L080337C4
    adds r0, r5, #0
    subs r0, #0x74
    movs r1, #2
    movs r2, #0xff
    bl PutNumberTwoChr
    b .L080337D2
    .align 2, 0
.L080337B4: .4byte 0x02003300
.L080337B8: .4byte 0x02003380
.L080337BC: .4byte 0x0203A470
.L080337C0: .4byte 0x0203A3F0
.L080337C4:
    adds r0, r5, #0
    subs r0, #0x74
    movs r2, #0
    ldrsb r2, [r1, r2]
    movs r1, #2
    bl PutNumberTwoChr
.L080337D2:
    ldr r5, .L08033874 @ =0x0200338C
    adds r0, r5, #0
    movs r1, #2
    adds r2, r4, #0
    bl PutNumberTwoChr
    adds r0, r5, #0
    adds r0, #0x80
    ldr r6, .L08033878 @ =0x0203A3F0
    adds r1, r6, #0
    adds r1, #0x64
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r5, r1
    adds r1, r6, #0
    adds r1, #0x6a
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    adds r0, r5, #0
    subs r0, #0x88
    movs r1, #3
    movs r2, #0x22
    movs r3, #0x23
    bl PutTwoSpecialChar
    ldr r4, .L0803387C @ =0x02002FDC
    adds r1, r5, #0
    subs r1, #0xa
    adds r0, r4, #0
    bl PutText
    adds r0, r4, #0
    adds r0, #8
    adds r1, r5, #0
    adds r1, #0x76
    bl PutText
    adds r4, #0x10
    adds r1, r5, #0
    adds r1, #0xf6
    adds r0, r4, #0
    bl PutText
    movs r0, #0xbf
    lsls r0, r0, #1
    adds r4, r5, r0
    ldr r0, .L08033880 @ =0x0203A470
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIcon
    adds r1, r0, #0
    movs r2, #0x80
    lsls r2, r2, #7
    adds r0, r4, #0
    bl PutIcon
    ldr r1, .L08033884 @ =0xFFFFFEF2
    adds r4, r5, r1
    adds r0, r6, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIcon
    adds r1, r0, #0
    movs r2, #0xc0
    lsls r2, r2, #6
    adds r0, r4, #0
    bl PutIcon
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08033874: .4byte 0x0200338C
.L08033878: .4byte 0x0203A3F0
.L0803387C: .4byte 0x02002FDC
.L08033880: .4byte 0x0203A470
.L08033884: .4byte 0xFFFFFEF2
    func_end func_08033668

    thumb_func_start func_08033888
func_08033888: @ 0x08033888
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    ldr r0, .L0803390C @ =0x0200373C
    ldr r1, .L08033910 @ =0x08195D70
    movs r2, #0x90
    lsls r2, r2, #5
    bl TmApplyTsa_thm
    ldr r7, .L08033914 @ =0x0200323C
    adds r0, r7, #0
    movs r1, #0xa
    movs r2, #0x13
    movs r3, #0
    bl TmFillRect_thm
    adds r0, r7, #0
    adds r0, #0x46
    adds r4, r5, #0
    adds r4, #0x38
    ldr r2, .L08033918 @ =0x0203A3F0
    adds r1, r4, #0
    bl func_08033460
    ldr r1, .L0803391C @ =0x000003C2
    adds r0, r7, r1
    ldr r6, .L08033920 @ =0x0203A470
    adds r1, r4, #0
    adds r2, r6, #0
    bl func_08033460
    ldr r2, .L08033924 @ =0x00000442
    adds r0, r7, r2
    adds r5, #0x48
    adds r1, r6, #0
    adds r1, #0x4a
    ldrh r2, [r1]
    adds r1, r5, #0
    bl func_080334A4
    adds r0, r6, #0
    adds r0, #0x48
    ldrh r0, [r0]
    cmp r0, #0
    bne .L080338F0
    adds r0, r6, #0
    adds r0, #0x5a
    movs r1, #0xff
    strh r1, [r0]
    adds r0, #0xa
    strh r1, [r0]
    adds r0, #6
    strh r1, [r0]
.L080338F0:
    adds r2, r6, #0
    adds r2, #0x72
    movs r0, #0
    ldrsb r0, [r2, r0]
    cmp r0, #0x63
    ble .L08033928
    adds r0, r7, #0
    adds r0, #0xc4
    movs r1, #2
    movs r2, #0xff
    bl PutNumberTwoChr
    b .L08033938
    .align 2, 0
.L0803390C: .4byte 0x0200373C
.L08033910: .4byte 0x08195D70
.L08033914: .4byte 0x0200323C
.L08033918: .4byte 0x0203A3F0
.L0803391C: .4byte 0x000003C2
.L08033920: .4byte 0x0203A470
.L08033924: .4byte 0x00000442
.L08033928:
    adds r0, r7, #0
    adds r0, #0xc4
    ldrb r2, [r2]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    movs r1, #2
    bl PutNumberTwoChr
.L08033938:
    ldr r5, .L080339B8 @ =0x02003380
    ldr r4, .L080339BC @ =0x0203A470
    adds r0, r4, #0
    adds r0, #0x5a
    movs r3, #0
    ldrsh r2, [r0, r3]
    adds r0, r5, #0
    movs r1, #2
    bl PutNumberTwoChr
    adds r0, r5, #0
    adds r0, #0x80
    adds r1, r4, #0
    adds r1, #0x5c
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r5, r1
    adds r1, r4, #0
    adds r1, #0x64
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0xc0
    lsls r1, r1, #1
    adds r0, r5, r1
    adds r1, r4, #0
    adds r1, #0x6a
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r5, r1
    adds r1, r4, #0
    adds r1, #0x5e
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    ldr r0, .L080339C0 @ =0x0203A3F0
    adds r1, r0, #0
    adds r1, #0x72
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0x63
    ble .L080339C4
    adds r0, r5, #0
    subs r0, #0x74
    movs r1, #2
    movs r2, #0xff
    bl PutNumberTwoChr
    b .L080339D2
    .align 2, 0
.L080339B8: .4byte 0x02003380
.L080339BC: .4byte 0x0203A470
.L080339C0: .4byte 0x0203A3F0
.L080339C4:
    adds r0, r5, #0
    subs r0, #0x74
    movs r2, #0
    ldrsb r2, [r1, r2]
    movs r1, #2
    bl PutNumberTwoChr
.L080339D2:
    ldr r5, .L08033ABC @ =0x0200338C
    ldr r6, .L08033AC0 @ =0x0203A3F0
    adds r0, r6, #0
    adds r0, #0x5a
    movs r1, #0
    ldrsh r2, [r0, r1]
    adds r0, r5, #0
    movs r1, #2
    bl PutNumberTwoChr
    adds r0, r5, #0
    adds r0, #0x80
    adds r1, r6, #0
    adds r1, #0x5c
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0x80
    lsls r1, r1, #1
    adds r0, r5, r1
    adds r1, r6, #0
    adds r1, #0x64
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0xc0
    lsls r1, r1, #1
    adds r0, r5, r1
    adds r1, r6, #0
    adds r1, #0x6a
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    movs r1, #0x80
    lsls r1, r1, #2
    adds r0, r5, r1
    adds r1, r6, #0
    adds r1, #0x5e
    movs r3, #0
    ldrsh r2, [r1, r3]
    movs r1, #2
    bl PutNumberTwoChr
    adds r0, r5, #0
    subs r0, #0x88
    movs r1, #3
    movs r2, #0x22
    movs r3, #0x23
    bl PutTwoSpecialChar
    ldr r4, .L08033AC4 @ =0x02002FF4
    adds r1, r5, #0
    subs r1, #0xa
    adds r0, r4, #0
    bl PutText
    adds r0, r4, #0
    adds r0, #8
    adds r1, r5, #0
    adds r1, #0x76
    bl PutText
    adds r0, r4, #0
    subs r0, #0x10
    adds r1, r5, #0
    adds r1, #0xf6
    bl PutText
    adds r0, r4, #0
    subs r0, #8
    movs r2, #0xbb
    lsls r2, r2, #1
    adds r1, r5, r2
    bl PutText
    adds r0, r4, #0
    adds r0, #0x10
    movs r3, #0xfb
    lsls r3, r3, #1
    adds r1, r5, r3
    bl PutText
    ldr r0, .L08033AC8 @ =0x0000027E
    adds r4, r5, r0
    ldr r0, .L08033ACC @ =0x0203A470
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIcon
    adds r1, r0, #0
    movs r2, #0x80
    lsls r2, r2, #7
    adds r0, r4, #0
    bl PutIcon
    ldr r1, .L08033AD0 @ =0xFFFFFEF2
    adds r4, r5, r1
    adds r0, r6, #0
    adds r0, #0x4a
    ldrh r0, [r0]
    bl GetItemIcon
    adds r1, r0, #0
    movs r2, #0xc0
    lsls r2, r2, #6
    adds r0, r4, #0
    bl PutIcon
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08033ABC: .4byte 0x0200338C
.L08033AC0: .4byte 0x0203A3F0
.L08033AC4: .4byte 0x02002FF4
.L08033AC8: .4byte 0x0000027E
.L08033ACC: .4byte 0x0203A470
.L08033AD0: .4byte 0xFFFFFEF2
    func_end func_08033888

    thumb_func_start func_08033AD4
func_08033AD4: @ 0x08033AD4
    push {r4, lr}
    adds r4, r0, #0
    movs r1, #0
    str r1, [r4, #0x2c]
    adds r0, #0x34
    strb r1, [r0]
    subs r0, #2
    ldrb r0, [r0]
    cmp r0, #1
    beq .L08033AEE
    cmp r0, #2
    beq .L08033AFC
    b .L08033B08
.L08033AEE:
    adds r0, r4, #0
    bl func_0803351C
    adds r0, r4, #0
    bl func_08033668
    b .L08033B08
.L08033AFC:
    adds r0, r4, #0
    bl func_0803351C
    adds r0, r4, #0
    bl func_08033888
.L08033B08:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08033AD4

    thumb_func_start func_08033B10
func_08033B10: @ 0x08033B10
    cmp r0, #0x40
    beq .L08033B38
    cmp r0, #0x40
    bgt .L08033B1E
    cmp r0, #0
    beq .L08033B28
    b .L08033B42
.L08033B1E:
    cmp r0, #0x80
    beq .L08033B30
    cmp r0, #0xc0
    beq .L08033B40
    b .L08033B42
.L08033B28:
    ldr r0, .L08033B2C @ =0x08195BAC
    b .L08033B42
    .align 2, 0
.L08033B2C: .4byte 0x08195BAC
.L08033B30:
    ldr r0, .L08033B34 @ =0x08195BCC
    b .L08033B42
    .align 2, 0
.L08033B34: .4byte 0x08195BCC
.L08033B38:
    ldr r0, .L08033B3C @ =0x08195BEC
    b .L08033B42
    .align 2, 0
.L08033B3C: .4byte 0x08195BEC
.L08033B40:
    ldr r0, .L08033B44 @ =0x08195C0C
.L08033B42:
    bx lr
    .align 2, 0
.L08033B44: .4byte 0x08195C0C
    func_end func_08033B10

    thumb_func_start func_08033B48
func_08033B48: @ 0x08033B48
    push {r4, lr}
    ldr r0, .L08033B7C @ =0x0203A3F0
    ldrb r0, [r0, #0xb]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r4, #0xc0
    ands r0, r4
    bl func_08033B10
    movs r1, #0x20
    movs r2, #0x20
    bl ApplyPaletteExt
    ldr r1, .L08033B80 @ =0x0203A470
    movs r0, #0xb
    ldrsb r0, [r1, r0]
    cmp r0, #0
    beq .L08033B84
    ands r0, r4
    bl func_08033B10
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
    b .L08033B92
    .align 2, 0
.L08033B7C: .4byte 0x0203A3F0
.L08033B80: .4byte 0x0203A470
.L08033B84:
    movs r0, #0xc0
    bl func_08033B10
    movs r1, #0x40
    movs r2, #0x20
    bl ApplyPaletteExt
.L08033B92:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08033B48

    thumb_func_start func_08033B98
func_08033B98: @ 0x08033B98
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, .L08033C0C @ =0x081958BC
    ldr r1, .L08033C10 @ =0x06004000
    bl Decompress
    ldr r0, .L08033C14 @ =0x08195F04
    ldr r4, .L08033C18 @ =gBuf
    adds r1, r4, #0
    bl Decompress
    ldr r1, .L08033C1C @ =0x06015D00
    adds r0, r4, #0
    movs r2, #4
    movs r3, #2
    bl Copy2dChr
    ldr r0, .L08033C20 @ =0x08195FB0
    movs r1, #0x90
    lsls r1, r1, #2
    movs r2, #0x20
    bl ApplyPaletteExt
    bl ResetTextFont
    bl InitIcons
    bl func_08033388
    bl func_08033410
    adds r0, r5, #0
    adds r0, #0x38
    movs r1, #6
    bl InitTextDb
    adds r0, r5, #0
    adds r0, #0x40
    movs r1, #6
    bl InitTextDb
    adds r0, r5, #0
    adds r0, #0x48
    movs r1, #7
    bl InitTextDb
    ldr r2, .L08033C24 @ =0x0000FFFF
    movs r0, #1
    movs r1, #0
    bl SetBgOffset
    adds r1, r5, #0
    adds r1, #0x33
    movs r0, #1
    strb r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08033C0C: .4byte 0x081958BC
.L08033C10: .4byte 0x06004000
.L08033C14: .4byte 0x08195F04
.L08033C18: .4byte gBuf
.L08033C1C: .4byte 0x06015D00
.L08033C20: .4byte 0x08195FB0
.L08033C24: .4byte 0x0000FFFF
    func_end func_08033B98

    thumb_func_start func_08033C28
func_08033C28: @ 0x08033C28
    push {lr}
    movs r0, #1
    rsbs r0, r0, #0
    bl UnpackUiWindowFrameGraphics2
    pop {r0}
    bx r0
    func_end func_08033C28

    thumb_func_start func_08033C38
func_08033C38: @ 0x08033C38
    push {r4, lr}
    adds r1, r0, #0
    adds r1, #0x32
    movs r4, #0x14
    ldrb r1, [r1]
    cmp r1, #1
    bne .L08033C48
    movs r4, #0x10
.L08033C48:
    adds r0, #0x35
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bge .L08033C80
    ldr r0, .L08033C70 @ =0x0200323C
    ldr r1, .L08033C74 @ =gBg0Tm
    movs r2, #0xa
    adds r3, r4, #0
    bl TmCopyRect_thm
    ldr r0, .L08033C78 @ =0x0200373C
    ldr r1, .L08033C7C @ =gBg1Tm
    movs r2, #0xa
    adds r3, r4, #0
    bl TmCopyRect_thm
    b .L08033C98
    .align 2, 0
.L08033C70: .4byte 0x0200323C
.L08033C74: .4byte gBg0Tm
.L08033C78: .4byte 0x0200373C
.L08033C7C: .4byte gBg1Tm
.L08033C80:
    ldr r0, .L08033CA4 @ =0x0200323C
    ldr r1, .L08033CA8 @ =0x02022C88
    movs r2, #0xa
    adds r3, r4, #0
    bl TmCopyRect_thm
    ldr r0, .L08033CAC @ =0x0200373C
    ldr r1, .L08033CB0 @ =0x02023488
    movs r2, #0xa
    adds r3, r4, #0
    bl TmCopyRect_thm
.L08033C98:
    movs r0, #3
    bl EnableBgSync
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08033CA4: .4byte 0x0200323C
.L08033CA8: .4byte 0x02022C88
.L08033CAC: .4byte 0x0200373C
.L08033CB0: .4byte 0x02023488
    func_end func_08033C38

    thumb_func_start func_08033CB4
func_08033CB4: @ 0x08033CB4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    movs r6, #0
    movs r5, #0
    ldr r0, .L08033D50 @ =0x0203A3F0
    adds r0, #0x53
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    ble .L08033CCC
    movs r6, #1
.L08033CCC:
    cmp r0, #0
    bge .L08033CD2
    movs r6, #2
.L08033CD2:
    ldr r0, .L08033D54 @ =0x0203A470
    adds r0, #0x53
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    ble .L08033CE2
    movs r5, #1
.L08033CE2:
    cmp r0, #0
    bge .L08033CE8
    movs r5, #2
.L08033CE8:
    cmp r5, #0
    beq .L08033D18
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r0, #8
    lsls r0, r0, #3
    adds r3, r0, #3
    adds r0, r4, #0
    adds r0, #0x31
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r0, #0xb
    lsls r1, r0, #3
    movs r2, #0
    cmp r5, #2
    bne .L08033D12
    movs r2, #1
.L08033D12:
    adds r0, r3, #0
    bl PutSysArrow
.L08033D18:
    cmp r6, #0
    beq .L08033D48
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r0, #2
    lsls r0, r0, #3
    adds r3, r0, #3
    adds r0, r4, #0
    adds r0, #0x31
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r0, #1
    lsls r1, r0, #3
    movs r2, #0
    cmp r6, #2
    bne .L08033D42
    movs r2, #1
.L08033D42:
    adds r0, r3, #0
    bl PutSysArrow
.L08033D48:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08033D50: .4byte 0x0203A3F0
.L08033D54: .4byte 0x0203A470
    func_end func_08033CB4

    thumb_func_start func_08033D58
func_08033D58: @ 0x08033D58
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r0, #0
    ldr r1, [r7, #0x2c]
    lsls r1, r1, #2
    movs r0, #0xff
    ldr r2, .L08033DE8 @ =0x080C5A48
    ands r1, r0
    lsls r0, r1, #1
    adds r0, r0, r2
    movs r3, #0
    ldrsh r0, [r0, r3]
    asrs r6, r0, #0xa
    adds r1, #0x40
    lsls r1, r1, #1
    adds r1, r1, r2
    movs r4, #0
    ldrsh r0, [r1, r4]
    asrs r5, r0, #0xb
    subs r1, r6, #3
    adds r0, r7, #0
    adds r0, #0x30
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #3
    adds r6, r1, r0
    adds r0, r7, #0
    adds r0, #0x31
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r0, r0, #3
    adds r5, r5, r0
    adds r4, r7, #0
    adds r4, #0x50
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #1
    ble .L08033DBE
    adds r1, r6, #0
    adds r1, #0x48
    adds r2, r5, #0
    adds r2, #0x28
    ldr r3, .L08033DEC @ =0x08B905B8
    ldr r4, .L08033DF0 @ =0x000022E6
    adds r0, r0, r4
    str r0, [sp]
    movs r0, #4
    bl PutSprite
.L08033DBE:
    adds r4, r7, #0
    adds r4, #0x51
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #1
    ble .L08033DE0
    adds r1, r6, #0
    adds r1, #0x18
    adds r2, r5, #0
    adds r2, #0x28
    ldr r3, .L08033DEC @ =0x08B905B8
    ldr r4, .L08033DF0 @ =0x000022E6
    adds r0, r0, r4
    str r0, [sp]
    movs r0, #4
    bl PutSprite
.L08033DE0:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08033DE8: .4byte gSinLut
.L08033DEC: .4byte 0x08B905B8
.L08033DF0: .4byte 0x000022E6
    func_end func_08033D58

    thumb_func_start func_08033DF4
func_08033DF4: @ 0x08033DF4
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x52
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08033E18
    ldr r0, .L08033E14 @ =0x08B96D34
    ldr r1, [r4, #0x2c]
    movs r2, #0x1f
    ands r1, r2
    adds r1, r1, r0
    ldrb r0, [r1]
    b .L08033E1A
    .align 2, 0
.L08033E14: .4byte 0x08B96D34
.L08033E18:
    movs r0, #0
.L08033E1A:
    lsls r0, r0, #5
    ldr r1, .L08033E44 @ =0x0200300C
    adds r0, r0, r1
    movs r1, #0x60
    movs r2, #0x20
    bl ApplyPaletteExt
    adds r0, r4, #0
    adds r0, #0x53
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08033E4C
    ldr r0, .L08033E48 @ =0x08B96D34
    ldr r1, [r4, #0x2c]
    movs r2, #0x1f
    ands r1, r2
    adds r1, r1, r0
    ldrb r0, [r1]
    b .L08033E4E
    .align 2, 0
.L08033E44: .4byte 0x0200300C
.L08033E48: .4byte 0x08B96D34
.L08033E4C:
    movs r0, #0
.L08033E4E:
    lsls r0, r0, #5
    ldr r1, .L08033E64 @ =0x0200300C
    adds r0, r0, r1
    movs r1, #0x80
    movs r2, #0x20
    bl ApplyPaletteExt
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08033E64: .4byte 0x0200300C
    func_end func_08033DF4

    thumb_func_start func_08033E68
func_08033E68: @ 0x08033E68
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x2c]
    adds r0, #1
    str r0, [r4, #0x2c]
    adds r0, r4, #0
    adds r0, #0x34
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08033EB0
    bl func_08033354
    adds r1, r0, #0
    cmp r1, #0
    beq .L08033EA0
    adds r0, r4, #0
    adds r0, #0x35
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r1, r0
    beq .L08033EA0
    adds r0, r4, #0
    bl Proc_Break
    b .L08033ECC
.L08033EA0:
    adds r0, r4, #0
    bl func_08033AD4
    adds r0, r4, #0
    bl func_08033C38
    bl func_08033B48
.L08033EB0:
    adds r0, r4, #0
    adds r0, #0x32
    ldrb r0, [r0]
    cmp r0, #1
    bne .L08033ECC
    adds r0, r4, #0
    bl func_08033CB4
    adds r0, r4, #0
    bl func_08033D58
    adds r0, r4, #0
    bl func_08033DF4
.L08033ECC:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08033E68

    thumb_func_start func_08033ED4
func_08033ED4: @ 0x08033ED4
    push {r4, lr}
    adds r4, r0, #0
    bl func_08033AD4
    bl func_08033354
    adds r1, r4, #0
    adds r1, #0x35
    movs r2, #0
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x36
    strb r2, [r0]
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bge .L08033EFE
    adds r0, r4, #0
    adds r0, #0x30
    strb r2, [r0]
    b .L08033F06
.L08033EFE:
    adds r1, r4, #0
    adds r1, #0x30
    movs r0, #0x14
    strb r0, [r1]
.L08033F06:
    adds r1, r4, #0
    adds r1, #0x31
    movs r0, #0
    strb r0, [r1]
    bl func_08033B48
    pop {r4}
    pop {r0}
    bx r0
    func_end func_08033ED4

    thumb_func_start func_08033F18
func_08033F18: @ 0x08033F18
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r7, r0, #0
    adds r0, #0x32
    movs r1, #0x14
    mov sb, r1
    ldrb r0, [r0]
    cmp r0, #1
    bne .L08033F34
    movs r2, #0x10
    mov sb, r2
.L08033F34:
    ldr r0, .L08033F98 @ =gBg0Tm
    mov r8, r0
    movs r1, #0
    bl TmFill
    ldr r1, .L08033F9C @ =gBg1Tm
    mov sl, r1
    mov r0, sl
    movs r1, #0
    bl TmFill
    movs r0, #3
    bl EnableBgSync
    ldr r1, .L08033FA0 @ =0x08B96D54
    adds r2, r7, #0
    adds r2, #0x36
    movs r0, #0
    ldrsb r0, [r2, r0]
    adds r0, r0, r1
    movs r5, #0
    ldrsb r5, [r0, r5]
    adds r0, r7, #0
    adds r0, #0x35
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r6, r2, #0
    cmp r0, #0
    bge .L08033FAC
    movs r4, #0xa
    subs r4, r4, r5
    lsls r4, r4, #1
    ldr r0, .L08033FA4 @ =0x0200323C
    adds r0, r4, r0
    mov r1, r8
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
    ldr r0, .L08033FA8 @ =0x0200373C
    adds r4, r4, r0
    adds r0, r4, #0
    mov r1, sl
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
    b .L08033FCE
    .align 2, 0
.L08033F98: .4byte gBg0Tm
.L08033F9C: .4byte gBg1Tm
.L08033FA0: .4byte 0x08B96D54
.L08033FA4: .4byte 0x0200323C
.L08033FA8: .4byte 0x0200373C
.L08033FAC:
    ldr r0, .L08033FF4 @ =0x0200323C
    movs r4, #0x1e
    subs r4, r4, r5
    lsls r4, r4, #1
    mov r2, r8
    adds r1, r4, r2
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
    ldr r0, .L08033FF8 @ =0x0200373C
    add r4, sl
    adds r1, r4, #0
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
.L08033FCE:
    ldrb r0, [r6]
    adds r0, #1
    strb r0, [r6]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #4
    bne .L08033FE6
    movs r0, #0
    strb r0, [r6]
    adds r0, r7, #0
    bl Proc_Break
.L08033FE6:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08033FF4: .4byte 0x0200323C
.L08033FF8: .4byte 0x0200373C
    func_end func_08033F18

    thumb_func_start func_08033FFC
func_08033FFC: @ 0x08033FFC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r7, r0, #0
    adds r0, #0x32
    movs r1, #0x14
    mov sb, r1
    ldrb r0, [r0]
    cmp r0, #1
    bne .L08034018
    movs r2, #0x10
    mov sb, r2
.L08034018:
    ldr r0, .L0803407C @ =gBg0Tm
    mov r8, r0
    movs r1, #0
    bl TmFill
    ldr r1, .L08034080 @ =gBg1Tm
    mov sl, r1
    mov r0, sl
    movs r1, #0
    bl TmFill
    movs r0, #3
    bl EnableBgSync
    ldr r1, .L08034084 @ =0x08B96D58
    adds r2, r7, #0
    adds r2, #0x36
    movs r0, #0
    ldrsb r0, [r2, r0]
    adds r0, r0, r1
    movs r5, #0
    ldrsb r5, [r0, r5]
    adds r0, r7, #0
    adds r0, #0x35
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    adds r6, r2, #0
    cmp r0, #0
    bge .L08034090
    movs r4, #0xa
    subs r4, r4, r5
    lsls r4, r4, #1
    ldr r0, .L08034088 @ =0x0200323C
    adds r0, r4, r0
    mov r1, r8
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
    ldr r0, .L0803408C @ =0x0200373C
    adds r4, r4, r0
    adds r0, r4, #0
    mov r1, sl
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
    b .L080340B2
    .align 2, 0
.L0803407C: .4byte gBg0Tm
.L08034080: .4byte gBg1Tm
.L08034084: .4byte 0x08B96D58
.L08034088: .4byte 0x0200323C
.L0803408C: .4byte 0x0200373C
.L08034090:
    ldr r0, .L080340D8 @ =0x0200323C
    movs r4, #0x1e
    subs r4, r4, r5
    lsls r4, r4, #1
    mov r2, r8
    adds r1, r4, r2
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
    ldr r0, .L080340DC @ =0x0200373C
    add r4, sl
    adds r1, r4, #0
    adds r2, r5, #0
    mov r3, sb
    bl TmCopyRect_thm
.L080340B2:
    ldrb r0, [r6]
    adds r0, #1
    strb r0, [r6]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #4
    bne .L080340CA
    movs r0, #0
    strb r0, [r6]
    adds r0, r7, #0
    bl Proc_Break
.L080340CA:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080340D8: .4byte 0x0200323C
.L080340DC: .4byte 0x0200373C
    func_end func_08033FFC

    thumb_func_start func_080340E0
func_080340E0: @ 0x080340E0
    push {lr}
    ldr r0, .L080340F0 @ =0x08B90D88
    bl Proc_Find
    cmp r0, #0
    bne .L080340F4
    movs r0, #0
    b .L080340F6
    .align 2, 0
.L080340F0: .4byte 0x08B90D88
.L080340F4:
    movs r0, #1
.L080340F6:
    pop {r1}
    bx r1
    func_end func_080340E0

    thumb_func_start StartFightPreview
StartFightPreview: @ 0x080340FC
    push {r4, lr}
    ldr r0, .L08034114 @ =gPlaySt
    adds r4, r0, #0
    adds r4, #0x42
    ldrb r1, [r4]
    lsls r0, r1, #0x1b
    lsrs r0, r0, #0x1e
    cmp r0, #2
    bne .L08034118
    bl ResetTextFont
    b .L08034158
    .align 2, 0
.L08034114: .4byte gPlaySt
.L08034118:
    ldr r0, .L0803413C @ =0x08B96D5C
    movs r1, #3
    bl Proc_Start
    adds r1, r0, #0
    adds r2, r1, #0
    adds r2, #0x33
    movs r0, #0
    strb r0, [r2]
    ldrb r4, [r4]
    lsls r0, r4, #0x1b
    lsrs r0, r0, #0x1e
    cmp r0, #0
    beq .L08034140
    cmp r0, #1
    beq .L08034146
    b .L0803414C
    .align 2, 0
.L0803413C: .4byte 0x08B96D5C
.L08034140:
    adds r1, #0x32
    movs r0, #1
    b .L0803414A
.L08034146:
    adds r1, #0x32
    movs r0, #2
.L0803414A:
    strb r0, [r1]
.L0803414C:
    ldr r0, .L08034160 @ =gBmMapMovement
    ldr r0, [r0]
    movs r1, #1
    rsbs r1, r1, #0
    bl BmMapFill
.L08034158:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08034160: .4byte gBmMapMovement
    func_end StartFightPreview

    thumb_func_start func_08034164
func_08034164: @ 0x08034164
    push {lr}
    ldr r0, .L08034188 @ =0x08B96D5C
    bl Proc_Find
    adds r1, r0, #0
    cmp r1, #0
    beq .L08034184
    adds r0, #0x33
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    beq .L08034184
    adds r1, #0x34
    movs r0, #1
    strb r0, [r1]
.L08034184:
    pop {r0}
    bx r0
    .align 2, 0
.L08034188: .4byte 0x08B96D5C
    func_end func_08034164

    thumb_func_start func_0803418C
func_0803418C: @ 0x0803418C
    push {r4, lr}
    ldr r0, .L080341B4 @ =0x08B96D5C
    bl Proc_Find
    adds r4, r0, #0
    cmp r4, #0
    beq .L080341C0
    adds r0, #0x33
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L080341B8
    bl ClearUi
    adds r0, r4, #0
    bl Proc_End
    b .L080341C0
    .align 2, 0
.L080341B4: .4byte 0x08B96D5C
.L080341B8:
    adds r0, r4, #0
    movs r1, #1
    bl Proc_Goto
.L080341C0:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_0803418C

    thumb_func_start func_080341C8
func_080341C8: @ 0x080341C8
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    ldr r0, .L08034214 @ =0x08B96D5C
    bl Proc_Find
    adds r4, r0, #0
    cmp r4, #0
    beq .L08034238
    adds r0, r4, #0
    adds r0, #0x34
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne .L08034238
    adds r0, r4, #0
    adds r0, #0x35
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    movs r5, #0x14
    cmp r0, #0
    bge .L080341F8
    movs r5, #0
.L080341F8:
    movs r1, #1
    rsbs r1, r1, #0
    movs r0, #0
    bl func_08082528
    adds r0, r4, #0
    adds r0, #0x32
    ldrb r0, [r0]
    cmp r0, #1
    beq .L08034218
    cmp r0, #2
    beq .L0803422C
    b .L08034238
    .align 2, 0
.L08034214: .4byte 0x08B96D5C
.L08034218:
    ldr r0, .L08034228 @ =0x08CC2568
    adds r1, r6, #0
    adds r2, r5, #0
    movs r3, #0
    bl func_08081CB8
    b .L08034238
    .align 2, 0
.L08034228: .4byte 0x08CC2568
.L0803422C:
    ldr r0, .L08034240 @ =0x08CC2610
    adds r1, r6, #0
    adds r2, r5, #0
    movs r3, #0
    bl func_08081CB8
.L08034238:
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08034240: .4byte 0x08CC2610
    func_end func_080341C8

    thumb_func_start func_08034244
func_08034244: @ 0x08034244
    lsls r1, r1, #0x18
    movs r2, #0
    cmp r1, #0
    beq .L0803424E
    movs r2, #3
.L0803424E:
    cmp r0, #0
    bge .L08034254
    adds r2, #2
.L08034254:
    cmp r0, #0
    ble .L0803425A
    adds r2, #1
.L0803425A:
    ldr r0, .L08034264 @ =0x08B96DD4
    lsls r1, r2, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
.L08034264: .4byte 0x08B96DD4
    func_end func_08034244

    thumb_func_start func_08034268
func_08034268: @ 0x08034268
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08034290 @ =0x08B96D5C
    bl Proc_Find
    ldr r1, .L08034294 @ =0x0203A3F0
    adds r1, #0x53
    movs r2, #0
    ldrsb r2, [r1, r2]
    adds r0, #0x52
    movs r1, #0
    ldrsb r1, [r0, r1]
    adds r0, r2, #0
    bl func_08034244
    adds r4, #0x4c
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08034290: .4byte 0x08B96D5C
.L08034294: .4byte 0x0203A3F0
    func_end func_08034268

    thumb_func_start func_08034298
func_08034298: @ 0x08034298
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L080342C0 @ =0x08B96D5C
    bl Proc_Find
    ldr r1, .L080342C4 @ =0x0203A470
    adds r1, #0x53
    movs r2, #0
    ldrsb r2, [r1, r2]
    adds r0, #0x53
    movs r1, #0
    ldrsb r1, [r0, r1]
    adds r0, r2, #0
    bl func_08034244
    adds r4, #0x4c
    strh r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080342C0: .4byte 0x08B96D5C
.L080342C4: .4byte 0x0203A470
    func_end func_08034298

    thumb_func_start func_080342C8
func_080342C8: @ 0x080342C8
    push {r4, lr}
    ldr r4, [r0, #0x54]
    adds r0, r4, #0
    bl GetUnitCurrentHp
    cmp r0, #0xa
    bgt .L080342DE
    ldr r0, [r4]
    ldrb r0, [r0, #4]
    bl func_0809FDFC
.L080342DE:
    pop {r4}
    pop {r0}
    bx r0
    func_end func_080342C8

    thumb_func_start func_080342E4
func_080342E4: @ 0x080342E4
    push {lr}
    ldr r2, [r0, #0x54]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldrb r2, [r2, #0x11]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    bl func_0801ED90
    pop {r0}
    bx r0
    func_end func_080342E4

    thumb_func_start func_080342FC
func_080342FC: @ 0x080342FC
    push {lr}
    ldr r2, [r0, #0x54]
    movs r1, #0x10
    ldrsb r1, [r2, r1]
    ldrb r2, [r2, #0x11]
    lsls r2, r2, #0x18
    asrs r2, r2, #0x18
    bl func_0801EDC0
    pop {r0}
    bx r0
    func_end func_080342FC

    thumb_func_start func_08034314
func_08034314: @ 0x08034314
    push {r4, lr}
    ldr r4, [r0, #0x54]
    adds r0, #0x50
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #1
    beq .L08034338
    cmp r0, #1
    bgt .L0803432C
    cmp r0, #0
    beq .L08034332
    b .L0803435A
.L0803432C:
    cmp r0, #2
    beq .L08034350
    b .L0803435A
.L08034332:
    bl EndAllMus
    b .L0803435A
.L08034338:
    bl EndAllMus
    ldr r0, .L0803434C @ =gActiveUnit
    ldr r0, [r0]
    bl StartMu
    bl MU_SetDefaultFacing_Auto
    b .L0803435A
    .align 2, 0
.L0803434C: .4byte gActiveUnit
.L08034350:
    adds r0, r4, #0
    bl func_0806E2B8
    bl EndMu
.L0803435A:
    ldr r1, .L08034370 @ =gActionSt
    movs r0, #0xa
    strb r0, [r1, #0x15]
    adds r0, r4, #0
    movs r1, #0xa
    bl func_08032904
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08034370: .4byte gActionSt
    func_end func_08034314

    thumb_func_start func_08034374
func_08034374: @ 0x08034374
    push {r4, r5, r6, lr}
    ldr r4, [r0, #0x54]
    movs r2, #0xa
    rsbs r2, r2, #0
    movs r3, #1
    rsbs r3, r3, #0
    adds r1, r4, #0
    bl func_080327FC
    adds r0, r4, #0
    bl GetUnitCurrentHp
    cmp r0, #0
    bne .L080343B2
    ldr r5, .L080343B8 @ =gActiveUnit
    ldr r6, [r5]
    str r4, [r5]
    ldr r0, [r4]
    ldrb r0, [r0, #4]
    movs r1, #0
    movs r2, #3
    bl func_0809FEE8
    bl CheckForWaitEvents
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080343B0
    bl RunWaitEvents
.L080343B0:
    str r6, [r5]
.L080343B2:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080343B8: .4byte gActiveUnit
    func_end func_08034374

    thumb_func_start func_080343BC
func_080343BC: @ 0x080343BC
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    bl GetTrapAt
    cmp r0, #0
    beq .L08034426
    ldrb r3, [r0, #2]
    cmp r3, #4
    beq .L080343E6
    cmp r3, #4
    bgt .L080343E0
    cmp r3, #1
    beq .L08034426
    b .L0803442A
.L080343E0:
    cmp r3, #0xb
    beq .L080343FC
    b .L0803442A
.L080343E6:
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r0, [r0, #0x28]
    ldr r1, [r1, #0x28]
    orrs r0, r1
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq .L0803442A
    movs r0, #0xe
    b .L0803442C
.L080343FC:
    ldr r0, [r4]
    ldr r1, [r4, #4]
    ldr r2, [r0, #0x28]
    ldr r0, [r1, #0x28]
    orrs r2, r0
    movs r0, #0x80
    lsls r0, r0, #0x12
    ands r0, r2
    cmp r0, #0
    beq .L0803441E
    adds r0, r4, #0
    bl GetUnitItemCount
    cmp r0, #5
    beq .L08034426
    movs r0, #0xf
    b .L0803442C
.L0803441E:
    movs r0, #4
    ands r2, r0
    cmp r2, #0
    beq .L0803442A
.L08034426:
    movs r0, #0
    b .L0803442C
.L0803442A:
    adds r0, r3, #0
.L0803442C:
    pop {r4}
    pop {r1}
    bx r1
    func_end func_080343BC

    thumb_func_start func_08034434
func_08034434: @ 0x08034434
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    adds r0, r5, #0
    bl func_080343BC
    cmp r0, #0xb
    beq .L08034464
    cmp r0, #0xb
    bgt .L08034450
    cmp r0, #8
    beq .L0803445A
    b .L08034510
.L08034450:
    cmp r0, #0xe
    beq .L0803448C
    cmp r0, #0xf
    beq .L080344CC
    b .L08034510
.L0803445A:
    ldr r0, .L08034460 @ =0x08B96DE0
    b .L08034478
    .align 2, 0
.L08034460: .4byte 0x08B96DE0
.L08034464:
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    movs r2, #0xb
    bl func_0802BA98
    bl RemoveTrap
    ldr r0, .L08034488 @ =0x08B96E30
.L08034478:
    adds r1, r6, #0
    bl Proc_StartBlocking
    adds r1, r0, #0
    adds r0, #0x50
    strh r4, [r0]
    str r5, [r1, #0x54]
    b .L08034510
    .align 2, 0
.L08034488: .4byte 0x08B96E30
.L0803448C:
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    bl GetTrapAt
    bl RemoveTrap
    ldr r0, .L080344C4 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080344AE
    movs r0, #0xb1
    bl m4aSongNumStart
.L080344AE:
    movs r4, #1
    rsbs r4, r4, #0
    ldr r0, .L080344C8 @ =0x0000071A
    bl DecodeMsg
    adds r2, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_0801F100
    b .L08034510
    .align 2, 0
.L080344C4: .4byte gPlaySt
.L080344C8: .4byte 0x0000071A
.L080344CC:
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    bl GetTrapAt
    bl RemoveTrap
    ldr r0, .L08034518 @ =gPlaySt
    adds r0, #0x41
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt .L080344EE
    movs r0, #0xb1
    bl m4aSongNumStart
.L080344EE:
    movs r4, #1
    rsbs r4, r4, #0
    ldr r0, .L0803451C @ =0x0000071B
    bl DecodeMsg
    adds r2, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_0801F100
    movs r0, #0x79
    bl MakeNewItem
    adds r1, r0, #0
    adds r0, r5, #0
    bl UnitAddItem
.L08034510:
    movs r0, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08034518: .4byte gPlaySt
.L0803451C: .4byte 0x0000071B
    func_end func_08034434

    thumb_func_start HandlePostActionTraps
HandlePostActionTraps: @ 0x08034520
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r4, .L08034540 @ =gActiveUnit
    ldr r0, [r4]
    bl GetUnitCurrentHp
    cmp r0, #0
    ble .L0803453A
    ldr r0, [r4]
    bl func_080343BC
    cmp r0, #0
    bne .L08034544
.L0803453A:
    movs r0, #1
    b .L0803456C
    .align 2, 0
.L08034540: .4byte gActiveUnit
.L08034544:
    ldr r1, .L08034574 @ =gActionSt
    movs r0, #1
    strb r0, [r1, #0x16]
    strb r0, [r1, #0x11]
    movs r0, #3
    bl WriteSuspendSave
    bl GetBattleAnimKind
    cmp r0, #1
    bne .L0803455E
    bl RefreshUnitSprites
.L0803455E:
    ldr r1, [r4]
    adds r0, r5, #0
    movs r2, #0
    bl func_08034434
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
.L0803456C:
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08034574: .4byte gActionSt
    func_end HandlePostActionTraps

    thumb_func_start func_08034578
func_08034578: @ 0x08034578
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, .L08034598 @ =gActionSt
    ldrb r0, [r0, #0xd]
    bl GetUnit
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #1
    bl func_08034434
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08034598: .4byte gActionSt
    func_end func_08034578

    thumb_func_start func_0803459C
func_0803459C: @ 0x0803459C
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    adds r0, r4, #0
    bl func_080343BC
    cmp r0, #0
    beq .L080345BC
    adds r0, r5, #0
    adds r1, r4, #0
    movs r2, #2
    bl func_08034434
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L080345D4
.L080345BC:
    adds r0, r4, #0
    bl func_0806E2B8
    bl EndMu
    bl RenderMap
    bl RefreshEntityMaps
    bl ForceSyncUnitSpriteSheet
    movs r0, #1
.L080345D4:
    pop {r4, r5}
    pop {r1}
    bx r1
    func_end func_0803459C

    thumb_func_start func_080345DC
func_080345DC: @ 0x080345DC
    push {lr}
    movs r2, #3
    bl func_08034434
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    pop {r1}
    bx r1
    func_end func_080345DC

    thumb_func_start func_080345EC
func_080345EC: @ 0x080345EC
    push {r4, r5, lr}
    sub sp, #4
    bl func_080791F0
    adds r5, r0, #0
    b .L0803468A
.L080345F8:
    ldrb r0, [r5]
    subs r1, r0, #1
    adds r2, r0, #0
    cmp r1, #0xa
    bhi .L08034688
    lsls r0, r1, #2
    ldr r1, .L0803460C @ =.L08034610
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0803460C: .4byte .L08034610
.L08034610: @ jump table
    .4byte .L0803463C @ case 0
    .4byte .L08034688 @ case 1
    .4byte .L08034688 @ case 2
    .4byte .L08034648 @ case 3
    .4byte .L08034656 @ case 4
    .4byte .L08034688 @ case 5
    .4byte .L08034688 @ case 6
    .4byte .L08034668 @ case 7
    .4byte .L08034672 @ case 8
    .4byte .L08034688 @ case 9
    .4byte .L0803467E @ case 10
.L0803463C:
    ldrb r0, [r5, #1]
    ldrb r1, [r5, #2]
    ldrb r2, [r5, #3]
    bl func_08034740
    b .L08034688
.L08034648:
    ldrb r0, [r5, #1]
    ldrb r1, [r5, #2]
    ldrb r2, [r5, #4]
    ldrb r3, [r5, #5]
    bl func_0802BB24
    b .L08034688
.L08034656:
    ldrb r0, [r5, #1]
    ldrb r1, [r5, #2]
    ldrb r2, [r5, #3]
    ldrb r3, [r5, #4]
    ldrb r4, [r5, #5]
    str r4, [sp]
    bl func_0802BB40
    b .L08034688
.L08034668:
    ldrb r0, [r5, #1]
    ldrb r1, [r5, #2]
    bl func_0802BB98
    b .L08034688
.L08034672:
    ldrb r0, [r5, #1]
    ldrb r1, [r5, #2]
    ldrb r2, [r5, #3]
    bl func_0802BBA8
    b .L08034688
.L0803467E:
    ldrb r0, [r5, #1]
    ldrb r1, [r5, #2]
    movs r3, #0
    bl func_0802BACC
.L08034688:
    adds r5, #6
.L0803468A:
    ldrb r0, [r5]
    cmp r0, #0
    bne .L080345F8
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_080345EC

    thumb_func_start func_08034698
func_08034698: @ 0x08034698
    push {lr}
    bl GetTrapAt
    adds r1, r0, #0
    cmp r1, #0
    beq .L080346AA
    ldrb r0, [r1, #2]
    cmp r0, #1
    beq .L080346AE
.L080346AA:
    movs r0, #0
    b .L080346B0
.L080346AE:
    movs r0, #1
.L080346B0:
    cmp r0, #0
    beq .L080346BC
    movs r0, #6
    ldrsb r0, [r1, r0]
    cmp r0, #0
    bne .L080346C0
.L080346BC:
    movs r0, #0
    b .L080346C2
.L080346C0:
    adds r0, r1, #0
.L080346C2:
    pop {r1}
    bx r1
    func_end func_08034698

    thumb_func_start func_080346C8
func_080346C8: @ 0x080346C8
    push {lr}
    bl GetTrapAt
    adds r2, r0, #0
    cmp r2, #0
    beq .L080346DA
    ldrb r0, [r2, #2]
    cmp r0, #1
    beq .L080346DE
.L080346DA:
    movs r1, #0
    b .L080346E0
.L080346DE:
    movs r1, #1
.L080346E0:
    cmp r1, #0
    beq .L08034700
    movs r0, #6
    ldrsb r0, [r2, r0]
    cmp r0, #0
    beq .L08034700
    cmp r2, #0
    beq .L080346F6
    ldrb r1, [r2, #2]
    cmp r1, #1
    beq .L080346FA
.L080346F6:
    movs r1, #0
    b .L080346FC
.L080346FA:
    movs r1, #1
.L080346FC:
    cmp r1, #0
    bne .L08034704
.L08034700:
    movs r0, #0
    b .L0803470A
.L08034704:
    lsls r0, r0, #8
    ldrb r2, [r2, #3]
    orrs r0, r2
.L0803470A:
    pop {r1}
    bx r1
    func_end func_080346C8

    thumb_func_start func_08034710
func_08034710: @ 0x08034710
    push {lr}
    bl GetTrapAt
    cmp r0, #0
    beq .L08034720
    ldrb r1, [r0, #2]
    cmp r1, #1
    beq .L08034724
.L08034720:
    movs r1, #0
    b .L08034726
.L08034724:
    movs r1, #1
.L08034726:
    cmp r1, #0
    beq .L08034730
    ldrb r1, [r0, #3]
    cmp r1, #0
    bne .L08034734
.L08034730:
    movs r0, #0
    b .L0803473A
.L08034734:
    movs r0, #0x80
    lsls r0, r0, #1
    adds r0, r1, r0
.L0803473A:
    pop {r1}
    bx r1
    func_end func_08034710

    thumb_func_start func_08034740
func_08034740: @ 0x08034740
    push {r4, r5, r6, lr}
    adds r5, r2, #0
    movs r2, #1
    movs r3, #0
    bl func_0802BACC
    adds r4, r0, #0
    adds r0, r5, #0
    bl GetItemIndex
    movs r6, #0
    strb r0, [r4, #3]
    adds r0, r5, #0
    bl MakeNewItem
    bl GetItemUses
    strb r0, [r4, #6]
    strb r6, [r4, #5]
    adds r0, r4, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    func_end func_08034740

    thumb_func_start func_08034770
func_08034770: @ 0x08034770
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r0, #0x10
    ldrsb r0, [r5, r0]
    movs r1, #0x11
    ldrsb r1, [r5, r1]
    bl GetTrapAt
    adds r4, r0, #0
    movs r0, #1
    strb r0, [r4, #5]
    bl RefreshUnitSprites
    ldr r0, [r5, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    orrs r0, r1
    str r0, [r5, #0xc]
    movs r0, #0
    bl GetTrap
    subs r4, r4, r0
    asrs r4, r4, #3
    strb r4, [r5, #0x1c]
    pop {r4, r5}
    pop {r0}
    bx r0
    func_end func_08034770

    thumb_func_start func_080347A8
func_080347A8: @ 0x080347A8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0xc]
    movs r1, #0x80
    lsls r1, r1, #4
    ands r0, r1
    cmp r0, #0
    beq .L080347D8
    ldrb r0, [r4, #0x1c]
    bl GetTrap
    ldr r1, [r4, #0xc]
    ldr r2, .L080347E0 @ =0xFFFFF7FF
    ands r1, r2
    str r1, [r4, #0xc]
    movs r1, #0
    strb r1, [r0, #5]
    strb r1, [r4, #0x1c]
    ldrb r1, [r4, #0x10]
    strb r1, [r0]
    ldrb r1, [r4, #0x11]
    strb r1, [r0, #1]
    bl RefreshUnitSprites
.L080347D8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L080347E0: .4byte 0xFFFFF7FF
    func_end func_080347A8

    thumb_func_start func_080347E4
func_080347E4: @ 0x080347E4
    cmp r0, #0
    beq .L080347F2
    ldrb r0, [r0, #2]
    cmp r0, #1
    bne .L080347F2
    movs r0, #1
    b .L080347F4
.L080347F2:
    movs r0, #0
.L080347F4:
    bx lr
    func_end func_080347E4

    thumb_func_start func_080347F8
func_080347F8: @ 0x080347F8
    adds r1, r0, #0
    cmp r1, #0
    beq .L08034804
    ldrb r0, [r1, #2]
    cmp r0, #1
    beq .L08034808
.L08034804:
    movs r0, #0
    b .L0803480A
.L08034808:
    movs r0, #1
.L0803480A:
    cmp r0, #0
    beq .L0803481A
    movs r0, #6
    ldrsb r0, [r1, r0]
    lsls r0, r0, #8
    ldrb r1, [r1, #3]
    orrs r0, r1
    b .L0803481C
.L0803481A:
    movs r0, #0
.L0803481C:
    bx lr
    func_end func_080347F8

    thumb_func_start func_08034820
func_08034820: @ 0x08034820
    cmp r0, #0
    beq .L0803482A
    ldrb r1, [r0, #2]
    cmp r1, #1
    beq .L0803482E
.L0803482A:
    movs r1, #0
    b .L08034830
.L0803482E:
    movs r1, #1
.L08034830:
    cmp r1, #0
    beq .L08034838
    ldrb r0, [r0, #3]
    b .L0803483A
.L08034838:
    movs r0, #0
.L0803483A:
    bx lr
    func_end func_08034820

    thumb_func_start func_0803483C
func_0803483C: @ 0x0803483C
    cmp r0, #0
    beq .L08034846
    ldrb r1, [r0, #2]
    cmp r1, #1
    beq .L0803484A
.L08034846:
    movs r1, #0
    b .L0803484C
.L0803484A:
    movs r1, #1
.L0803484C:
    cmp r1, #0
    beq .L08034858
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    b .L0803485A
.L08034858:
    movs r0, #0
.L0803485A:
    bx lr
    func_end func_0803483C

    thumb_func_start func_0803485C
func_0803485C: @ 0x0803485C
    movs r1, #0
    strb r1, [r0, #5]
    bx lr
    func_end func_0803485C

    thumb_func_start func_08034864
func_08034864: @ 0x08034864
    movs r1, #1
    strb r1, [r0, #5]
    bx lr
    func_end func_08034864

    thumb_func_start GetCurrentPromotedLevelBonus
GetCurrentPromotedLevelBonus: @ 0x0803486C
    ldr r1, .L0803487C @ =gPlaySt
    movs r0, #0x40
    ldrb r1, [r1, #0x14]
    ands r0, r1
    cmp r0, #0
    bne .L08034880
    movs r0, #9
    b .L08034882
    .align 2, 0
.L0803487C: .4byte gPlaySt
.L08034880:
    movs r0, #0x13
.L08034882:
    bx lr
    func_end GetCurrentPromotedLevelBonus

    thumb_func_start IsUnitCurrentMainLord
IsUnitCurrentMainLord: @ 0x08034884
    ldr r0, [r0]
    ldrb r0, [r0, #4]
    cmp r0, #2
    beq .L080348A2
    cmp r0, #2
    bgt .L08034896
    cmp r0, #1
    beq .L0803489E
    b .L080348A6
.L08034896:
    cmp r0, #3
    bne .L080348A6
    movs r2, #1
    b .L080348A8
.L0803489E:
    movs r2, #2
    b .L080348A8
.L080348A2:
    movs r2, #3
    b .L080348A8
.L080348A6:
    movs r2, #0
.L080348A8:
    ldr r0, .L080348BC @ =gPlaySt
    ldrb r0, [r0, #0x1b]
    cmp r0, #2
    beq .L080348CA
    cmp r0, #2
    bgt .L080348C0
    cmp r0, #1
    beq .L080348C6
    b .L080348D2
    .align 2, 0
.L080348BC: .4byte gPlaySt
.L080348C0:
    cmp r0, #3
    beq .L080348CE
    b .L080348D2
.L080348C6:
    movs r1, #1
    b .L080348D4
.L080348CA:
    movs r1, #2
    b .L080348D4
.L080348CE:
    movs r1, #3
    b .L080348D4
.L080348D2:
    movs r1, #4
.L080348D4:
    movs r0, #0
    cmp r2, r1
    bne .L080348DC
    movs r0, #1
.L080348DC:
    bx lr
    func_end IsUnitCurrentMainLord
