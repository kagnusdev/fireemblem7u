    .include "asm_prelude.inc"

    thumb_func_start InitMapForChapter
InitMapForChapter: @ 0x08018D88
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r0, .L08018E40 @ =0x02001000
    adds r1, r4, #0
    bl UnpackRawMap
    adds r0, r4, #0
    bl ApplyChapterMapGraphics
    ldr r0, .L08018E44 @ =gMapUnitBuf
    ldr r6, .L08018E48 @ =gBmMapUnit
    ldr r4, .L08018E4C @ =gBmMapSize
    movs r1, #0
    ldrsh r2, [r4, r1]
    movs r7, #2
    ldrsh r3, [r4, r7]
    adds r1, r6, #0
    bl MapInit
    ldr r0, .L08018E50 @ =gMapTerrainBuf
    ldr r5, .L08018E54 @ =gBmMapTerrain
    movs r1, #0
    ldrsh r2, [r4, r1]
    movs r7, #2
    ldrsh r3, [r4, r7]
    adds r1, r5, #0
    bl MapInit
    ldr r0, .L08018E58 @ =0x03000440
    ldr r1, .L08018E5C @ =gBmMapMovement
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r7, #2
    ldrsh r3, [r4, r7]
    bl MapInit
    ldr r0, .L08018E60 @ =0x03000BF8
    ldr r1, .L08018E64 @ =gMapRange
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r7, #2
    ldrsh r3, [r4, r7]
    bl MapInit
    ldr r0, .L08018E68 @ =gMapFogBuf
    ldr r1, .L08018E6C @ =gMapFog
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r7, #2
    ldrsh r3, [r4, r7]
    bl MapInit
    ldr r0, .L08018E70 @ =gMapHiddenBuf
    ldr r1, .L08018E74 @ =gBmMapHidden
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r7, #2
    ldrsh r3, [r4, r7]
    bl MapInit
    ldr r0, .L08018E78 @ =gMapOtherBuf
    ldr r1, .L08018E7C @ =gMapOther
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r7, #2
    ldrsh r3, [r4, r7]
    bl MapInit
    ldr r0, [r6]
    movs r1, #0
    bl MapFill
    ldr r0, [r5]
    movs r1, #0
    bl MapFill
    bl InitMetatilesMap
    bl ApplyEnabledMapChanges
    bl RefreshTerrainMap
    ldr r0, .L08018E80 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    cmp r0, #0x26
    bne .L08018E38
    bl ApplyAutoWaterShadows
.L08018E38:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08018E40: .4byte 0x02001000
.L08018E44: .4byte gMapUnitBuf
.L08018E48: .4byte gBmMapUnit
.L08018E4C: .4byte gBmMapSize
.L08018E50: .4byte gMapTerrainBuf
.L08018E54: .4byte gBmMapTerrain
.L08018E58: .4byte 0x03000440
.L08018E5C: .4byte gBmMapMovement
.L08018E60: .4byte 0x03000BF8
.L08018E64: .4byte gMapRange
.L08018E68: .4byte gMapFogBuf
.L08018E6C: .4byte gMapFog
.L08018E70: .4byte gMapHiddenBuf
.L08018E74: .4byte gBmMapHidden
.L08018E78: .4byte gMapOtherBuf
.L08018E7C: .4byte gMapOther
.L08018E80: .4byte gPlaySt
    func_end InitMapForChapter

    thumb_func_start InitChapterPreviewMap
InitChapterPreviewMap: @ 0x08018E84
    push {r4, r5, r6, lr}
    adds r1, r0, #0
    ldr r0, .L08018ED4 @ =0x02001000
    bl UnpackRawMap
    ldr r0, .L08018ED8 @ =gMapUnitBuf
    ldr r6, .L08018EDC @ =gBmMapUnit
    ldr r4, .L08018EE0 @ =gBmMapSize
    movs r1, #0
    ldrsh r2, [r4, r1]
    movs r1, #2
    ldrsh r3, [r4, r1]
    adds r1, r6, #0
    bl MapInit
    ldr r0, .L08018EE4 @ =gMapTerrainBuf
    ldr r5, .L08018EE8 @ =gBmMapTerrain
    movs r1, #0
    ldrsh r2, [r4, r1]
    movs r1, #2
    ldrsh r3, [r4, r1]
    adds r1, r5, #0
    bl MapInit
    ldr r0, [r6]
    movs r1, #0
    bl MapFill
    ldr r0, [r5]
    movs r1, #0
    bl MapFill
    bl InitMetatilesMap
    bl RefreshTerrainMap
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08018ED4: .4byte 0x02001000
.L08018ED8: .4byte gMapUnitBuf
.L08018EDC: .4byte gBmMapUnit
.L08018EE0: .4byte gBmMapSize
.L08018EE4: .4byte gMapTerrainBuf
.L08018EE8: .4byte gBmMapTerrain
    func_end InitChapterPreviewMap

    thumb_func_start ApplyAutoWaterShadows
ApplyAutoWaterShadows: @ 0x08018EEC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    movs r6, #0
    ldr r1, .L08018FC4 @ =gBmMapSize
    movs r2, #2
    ldrsh r0, [r1, r2]
    mov sb, r1
    cmp r6, r0
    blt .L08018F06
    b .L08019032
.L08018F06:
    ldr r0, .L08018FC8 @ =0x08B932B4
    mov sl, r0
.L08018F0A:
    movs r4, #0
    movs r2, #0
    ldrsh r0, [r1, r2]
    adds r1, r6, #1
    mov r8, r1
    cmp r4, r0
    blt .L08018F1A
    b .L08019024
.L08018F1A:
    ldr r2, .L08018FCC @ =gBmMapTerrain
    mov ip, r2
    lsls r3, r6, #2
    mov r7, sl
    movs r5, #0
.L08018F24:
    mov r1, ip
    ldr r0, [r1]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r2, [r0]
    cmp r2, #0x3c
    bne .L08019014
    movs r2, #0
    cmp r4, #0
    ble .L08018F56
    subs r0, #1
    ldrb r0, [r0]
    cmp r0, #0x17
    bne .L08018F44
    movs r2, #1
.L08018F44:
    cmp r0, #0x2d
    bne .L08018F4A
    movs r2, #1
.L08018F4A:
    cmp r0, #0x20
    bne .L08018F50
    movs r2, #1
.L08018F50:
    cmp r0, #0x21
    bne .L08018F56
    movs r2, #1
.L08018F56:
    cmp r6, #0
    ble .L08018F80
    mov r1, ip
    ldr r0, [r1]
    adds r0, r3, r0
    subs r0, #4
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x17
    bne .L08018F6E
    adds r2, #2
.L08018F6E:
    cmp r0, #0x2d
    bne .L08018F74
    adds r2, #2
.L08018F74:
    cmp r0, #0x20
    bne .L08018F7A
    adds r2, #2
.L08018F7A:
    cmp r0, #0x21
    bne .L08018F80
    adds r2, #2
.L08018F80:
    cmp r4, #0
    ble .L08018FB4
    cmp r6, #0
    ble .L08018FB4
    mov r1, ip
    ldr r0, [r1]
    adds r1, r3, r0
    ldr r0, [r1]
    adds r0, r4, r0
    subs r0, #1
    ldrb r0, [r0]
    cmp r0, #0x17
    bne .L08018FB4
    ldr r0, [r1, #4]
    adds r0, r4, r0
    subs r0, #1
    ldrb r0, [r0]
    cmp r0, #0x3c
    bne .L08018FB4
    subs r0, r1, #4
    ldr r0, [r0]
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0x17
    beq .L08018FB4
    movs r2, #4
.L08018FB4:
    cmp r2, #2
    beq .L08018FE8
    cmp r2, #2
    bgt .L08018FD0
    cmp r2, #1
    beq .L08018FDA
    b .L08019014
    .align 2, 0
.L08018FC4: .4byte gBmMapSize
.L08018FC8: .4byte 0x08B932B4
.L08018FCC: .4byte gBmMapTerrain
.L08018FD0:
    cmp r2, #3
    beq .L08018FF6
    cmp r2, #4
    beq .L08019004
    b .L08019014
.L08018FDA:
    ldr r0, [r7]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r5, r0
    movs r2, #0xb7
    lsls r2, r2, #2
    b .L08019010
.L08018FE8:
    ldr r0, [r7]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r5, r0
    movs r2, #0xb6
    lsls r2, r2, #2
    b .L08019010
.L08018FF6:
    ldr r0, [r7]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r5, r0
    movs r2, #0xd6
    lsls r2, r2, #2
    b .L08019010
.L08019004:
    ldr r0, [r7]
    adds r0, r3, r0
    ldr r0, [r0]
    adds r0, r5, r0
    movs r2, #0xd7
    lsls r2, r2, #2
.L08019010:
    adds r1, r2, #0
    strh r1, [r0]
.L08019014:
    adds r5, #2
    adds r4, #1
    mov r1, sb
    movs r2, #0
    ldrsh r0, [r1, r2]
    cmp r4, r0
    bge .L08019024
    b .L08018F24
.L08019024:
    mov r6, r8
    mov r1, sb
    movs r2, #2
    ldrsh r0, [r1, r2]
    cmp r6, r0
    bge .L08019032
    b .L08018F0A
.L08019032:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    func_end ApplyAutoWaterShadows

    thumb_func_start RefreshAutoWaterShadows
RefreshAutoWaterShadows: @ 0x08019040
    push {lr}
    ldr r0, .L08019064 @ =0x02001000
    ldr r1, .L08019068 @ =gPlaySt
    ldrb r1, [r1, #0xe]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl UnpackRawMap
    bl InitMetatilesMap
    bl ApplyEnabledMapChanges
    bl RefreshTerrainMap
    bl ApplyAutoWaterShadows
    pop {r0}
    bx r0
    .align 2, 0
.L08019064: .4byte 0x02001000
.L08019068: .4byte gPlaySt
    func_end RefreshAutoWaterShadows

    thumb_func_start MapInit
MapInit: @ 0x0801906C
    push {r4, r5, r6, r7, lr}
    mov ip, r1
    adds r6, r2, #0
    adds r5, r3, #0
    ldr r2, .L080190A8 @ =0x03000438
    str r0, [r2]
    adds r6, #2
    adds r5, #4
    lsls r1, r5, #2
    adds r4, r0, r1
    movs r3, #0
    adds r7, r2, #0
    cmp r3, r5
    bge .L08019098
.L08019088:
    ldr r1, [r2]
    lsls r0, r3, #2
    adds r0, r0, r1
    str r4, [r0]
    adds r4, r4, r6
    adds r3, #1
    cmp r3, r5
    blt .L08019088
.L08019098:
    ldr r0, [r7]
    adds r0, #8
    mov r1, ip
    str r0, [r1]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080190A8: .4byte 0x03000438
    func_end MapInit

    thumb_func_start MapFill
MapFill: @ 0x080190AC
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r3, r1, #0
    ldr r0, .L08019104 @ =gBmMapSize
    movs r2, #2
    ldrsh r1, [r0, r2]
    adds r1, #4
    movs r2, #0
    ldrsh r0, [r0, r2]
    adds r0, #2
    adds r4, r1, #0
    muls r4, r0, r4
    movs r0, #1
    ands r0, r4
    cmp r0, #0
    beq .L080190D0
    subs r4, #1
.L080190D0:
    movs r0, #0xff
    ands r3, r0
    lsls r0, r3, #8
    adds r3, r3, r0
    mov r0, sp
    strh r3, [r0]
    adds r0, r5, #0
    subs r0, #8
    ldr r1, [r0]
    lsrs r2, r4, #0x1f
    adds r2, r4, r2
    lsls r2, r2, #0xa
    lsrs r2, r2, #0xb
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r2, r0
    mov r0, sp
    bl CpuSet
    adds r0, r5, #0
    bl func_0801B190
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08019104: .4byte gBmMapSize
    func_end MapFill

    thumb_func_start func_08019108
func_08019108: @ 0x08019108
    push {r4, r5, r6, r7, lr}
    lsls r1, r1, #0x18
    lsrs r3, r1, #0x18
    adds r6, r0, #0
    movs r4, #0
    ldr r0, .L08019170 @ =gBmMapSize
    movs r2, #2
    ldrsh r1, [r0, r2]
    adds r7, r0, #0
    cmp r4, r1
    bge .L0801913C
    adds r5, r7, #0
    adds r2, r6, #0
.L08019122:
    ldr r0, [r2]
    strb r3, [r0]
    movs r1, #0
    ldrsh r0, [r5, r1]
    ldm r2!, {r1}
    adds r0, r0, r1
    subs r0, #1
    strb r3, [r0]
    adds r4, #1
    movs r1, #2
    ldrsh r0, [r5, r1]
    cmp r4, r0
    blt .L08019122
.L0801913C:
    movs r1, #0
    movs r2, #0
    ldrsh r0, [r7, r2]
    cmp r1, r0
    bge .L08019168
    adds r2, r7, #0
.L08019148:
    ldr r0, [r6]
    adds r0, r0, r1
    strb r3, [r0]
    movs r4, #2
    ldrsh r0, [r2, r4]
    lsls r0, r0, #2
    adds r0, r0, r6
    subs r0, #4
    ldr r0, [r0]
    adds r0, r0, r1
    strb r3, [r0]
    adds r1, #1
    movs r4, #0
    ldrsh r0, [r2, r4]
    cmp r1, r0
    blt .L08019148
.L08019168:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019170: .4byte gBmMapSize
    func_end func_08019108

    thumb_func_start UnpackRawMap
UnpackRawMap: @ 0x08019174
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r0, r6, #0
    bl GetChapterMap
    adds r1, r4, #0
    bl Decompress
    ldr r5, .L080191C4 @ =gBmMapSize
    ldrb r0, [r4]
    strh r0, [r5]
    ldrb r0, [r4, #1]
    strh r0, [r5, #2]
    ldr r4, .L080191C8 @ =0x08C9C9C8
    adds r0, r6, #0
    bl GetChapterInfo
    ldrb r0, [r0, #7]
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    ldr r1, .L080191CC @ =gTilesetInfo
    bl Decompress
    ldr r1, .L080191D0 @ =gBmSt
    movs r2, #0
    ldrsh r0, [r5, r2]
    lsls r0, r0, #4
    subs r0, #0xf0
    strh r0, [r1, #0x28]
    movs r2, #2
    ldrsh r0, [r5, r2]
    lsls r0, r0, #4
    subs r0, #0xa0
    strh r0, [r1, #0x2a]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080191C4: .4byte gBmMapSize
.L080191C8: .4byte 0x08C9C9C8
.L080191CC: .4byte gTilesetInfo
.L080191D0: .4byte gBmSt
    func_end UnpackRawMap

    thumb_func_start ApplyChapterMapGraphics
ApplyChapterMapGraphics: @ 0x080191D4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r5, .L08019230 @ =0x08C9C9C8
    bl GetChapterInfo
    ldrb r0, [r0, #4]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    ldr r1, .L08019234 @ =0x06008000
    bl Decompress
    adds r0, r4, #0
    bl GetChapterInfo
    ldrb r0, [r0, #5]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    cmp r0, #0
    beq .L08019212
    adds r0, r4, #0
    bl GetChapterInfo
    ldrb r0, [r0, #5]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    ldr r1, .L08019238 @ =0x0600C000
    bl Decompress
.L08019212:
    adds r0, r4, #0
    bl GetChapterInfo
    ldrb r0, [r0, #6]
    lsls r0, r0, #2
    adds r0, r0, r5
    ldr r0, [r0]
    movs r2, #0xa0
    lsls r2, r2, #1
    movs r1, #0xc0
    bl ApplyPaletteExt
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08019230: .4byte 0x08C9C9C8
.L08019234: .4byte 0x06008000
.L08019238: .4byte 0x0600C000
    func_end ApplyChapterMapGraphics

    thumb_func_start ApplyChapterMapPalettes
ApplyChapterMapPalettes: @ 0x0801923C
    push {r4, lr}
    ldr r4, .L08019264 @ =0x08C9C9C8
    ldr r0, .L08019268 @ =gPlaySt
    ldrb r0, [r0, #0xe]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bl GetChapterInfo
    ldrb r0, [r0, #6]
    lsls r0, r0, #2
    adds r0, r0, r4
    ldr r0, [r0]
    movs r2, #0xa0
    lsls r2, r2, #1
    movs r1, #0xc0
    bl ApplyPaletteExt
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08019264: .4byte 0x08C9C9C8
.L08019268: .4byte gPlaySt
    func_end ApplyChapterMapPalettes

    thumb_func_start InitMetatilesMap
InitMetatilesMap: @ 0x0801926C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r3, .L08019320 @ =0x08B932B4
    ldr r0, [r3]
    mov sb, r0
    ldr r5, .L08019324 @ =0x02001000
    ldr r1, .L08019328 @ =gBmMapSize
    ldrh r0, [r1, #2]
    adds r0, #1
    strh r0, [r1, #2]
    adds r5, #2
    movs r4, #2
    ldrsh r2, [r1, r4]
    lsls r0, r2, #2
    add r0, sb
    mov ip, r0
    movs r4, #0
    mov sl, r1
    cmp r4, r2
    bge .L080192E2
    mov r7, sl
.L0801929C:
    lsls r3, r4, #2
    mov r1, sb
    adds r0, r3, r1
    mov r1, ip
    str r1, [r0]
    movs r0, #0
    ldrsh r1, [r7, r0]
    lsls r0, r1, #1
    add ip, r0
    movs r2, #0
    adds r6, r4, #1
    cmp r2, r1
    bge .L080192D8
    ldr r1, .L08019320 @ =0x08B932B4
    mov r8, r1
    adds r4, r3, #0
.L080192BC:
    mov r1, r8
    ldr r0, [r1]
    adds r0, r4, r0
    ldr r1, [r0]
    lsls r0, r2, #1
    adds r0, r0, r1
    ldrh r1, [r5]
    strh r1, [r0]
    adds r5, #2
    adds r2, #1
    movs r1, #0
    ldrsh r0, [r7, r1]
    cmp r2, r0
    blt .L080192BC
.L080192D8:
    adds r4, r6, #0
    movs r1, #2
    ldrsh r0, [r7, r1]
    cmp r4, r0
    blt .L0801929C
.L080192E2:
    ldr r1, .L08019320 @ =0x08B932B4
    ldr r0, [r1]
    lsls r1, r4, #2
    adds r1, r1, r0
    subs r1, #4
    ldr r5, [r1]
    movs r2, #0
    mov r3, sl
    movs r4, #0
    ldrsh r0, [r3, r4]
    cmp r2, r0
    bge .L0801930A
    movs r1, #0
.L080192FC:
    strh r1, [r5]
    adds r5, #2
    adds r2, #1
    movs r4, #0
    ldrsh r0, [r3, r4]
    cmp r2, r0
    blt .L080192FC
.L0801930A:
    mov r1, sl
    ldrh r0, [r1, #2]
    subs r0, #1
    strh r0, [r1, #2]
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019320: .4byte 0x08B932B4
.L08019324: .4byte 0x02001000
.L08019328: .4byte gBmMapSize
    func_end InitMetatilesMap

    thumb_func_start RefreshTerrainMap
RefreshTerrainMap: @ 0x0801932C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    movs r1, #0
    ldr r0, .L080193AC @ =gBmMapSize
    mov sb, r0
    movs r2, #2
    ldrsh r0, [r0, r2]
    cmp r1, r0
    bge .L0801939A
    mov r8, sb
    ldr r3, .L080193B0 @ =0x08B932B4
    mov sl, r3
.L0801934A:
    movs r3, #0
    mov r4, r8
    movs r2, #0
    ldrsh r0, [r4, r2]
    adds r6, r1, #1
    cmp r3, r0
    bge .L0801938E
    ldr r4, .L080193B4 @ =gBmMapTerrain
    mov ip, r4
    lsls r4, r1, #2
    ldr r5, .L080193B8 @ =0x08B932B0
    mov r7, sl
.L08019362:
    mov r1, ip
    ldr r0, [r1]
    adds r0, r4, r0
    ldr r2, [r0]
    adds r2, r2, r3
    ldr r0, [r7]
    adds r0, r4, r0
    ldr r1, [r0]
    lsls r0, r3, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsrs r1, r0, #2
    ldr r0, [r5]
    adds r0, r0, r1
    ldrb r0, [r0]
    strb r0, [r2]
    adds r3, #1
    mov r2, r8
    movs r1, #0
    ldrsh r0, [r2, r1]
    cmp r3, r0
    blt .L08019362
.L0801938E:
    adds r1, r6, #0
    mov r2, sb
    movs r3, #2
    ldrsh r0, [r2, r3]
    cmp r1, r0
    blt .L0801934A
.L0801939A:
    bl func_0802BC80
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080193AC: .4byte gBmMapSize
.L080193B0: .4byte 0x08B932B4
.L080193B4: .4byte gBmMapTerrain
.L080193B8: .4byte 0x08B932B0
    func_end RefreshTerrainMap

    thumb_func_start func_080193BC
func_080193BC: @ 0x080193BC
    ldr r2, .L080193D8 @ =0x08B932B4
    ldr r2, [r2]
    lsls r1, r1, #2
    adds r1, r1, r2
    ldr r1, [r1]
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsrs r1, r0, #2
    ldr r0, .L080193DC @ =0x08B932B0
    ldr r0, [r0]
    adds r0, r0, r1
    ldrb r0, [r0]
    bx lr
    .align 2, 0
.L080193D8: .4byte 0x08B932B4
.L080193DC: .4byte 0x08B932B0
    func_end func_080193BC

    thumb_func_start PutMapMetatile
PutMapMetatile: @ 0x080193E0
    push {r4, r5, lr}
    ldr r4, [sp, #0xc]
    lsls r2, r2, #7
    adds r0, r0, r2
    lsls r1, r1, #2
    adds r5, r0, r1
    ldr r0, .L08019444 @ =0x08B932B4
    ldr r0, [r0]
    lsls r4, r4, #2
    adds r0, r4, r0
    ldr r1, [r0]
    lsls r0, r3, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    lsls r1, r0, #1
    ldr r0, .L08019448 @ =gTilesetInfo
    adds r2, r1, r0
    ldr r0, .L0801944C @ =gMapFog
    ldr r0, [r0]
    adds r4, r4, r0
    ldr r0, [r4]
    adds r0, r0, r3
    ldrb r0, [r0]
    movs r3, #0xb0
    lsls r3, r3, #8
    cmp r0, #0
    beq .L0801941A
    movs r3, #0xc0
    lsls r3, r3, #7
.L0801941A:
    ldrh r1, [r2]
    adds r0, r1, r3
    strh r0, [r5]
    adds r2, #2
    ldrh r4, [r2]
    adds r0, r4, r3
    strh r0, [r5, #2]
    adds r2, #2
    adds r1, r5, #0
    adds r1, #0x40
    ldrh r4, [r2]
    adds r0, r4, r3
    strh r0, [r1]
    adds r1, #2
    ldrh r2, [r2, #2]
    adds r0, r2, r3
    strh r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08019444: .4byte 0x08B932B4
.L08019448: .4byte gTilesetInfo
.L0801944C: .4byte gMapFog
    func_end PutMapMetatile

    thumb_func_start func_08019450
func_08019450: @ 0x08019450
    bx lr
    func_end func_08019450

    thumb_func_start PutLimitViewSquare
PutLimitViewSquare: @ 0x08019454
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    ldr r0, [sp, #0x10]
    lsls r0, r0, #5
    adds r0, r0, r3
    lsls r0, r0, #2
    adds r4, r4, r0
    cmp r4, #0
    bne .L0801946E
    bl func_08019450
.L0801946E:
    ldr r0, .L08019490 @ =gBmMapMovement
    ldr r0, [r0]
    lsls r2, r5, #2
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    blt .L08019498
    movs r1, #0x85
    lsls r1, r1, #7
    adds r0, r1, #0
    strh r0, [r4]
    ldr r2, .L08019494 @ =0x00004281
    b .L080194D2
    .align 2, 0
.L08019490: .4byte gBmMapMovement
.L08019494: .4byte 0x00004281
.L08019498:
    ldr r0, .L080194BC @ =gMapRange
    ldr r0, [r0]
    adds r0, r2, r0
    ldr r0, [r0]
    adds r0, r0, r6
    movs r1, #0
    ldrsb r1, [r0, r1]
    cmp r1, #0
    beq .L080194F0
    ldrh r0, [r4]
    cmp r0, #0
    beq .L080194C8
    ldr r1, .L080194C0 @ =0x00005284
    adds r0, r1, #0
    strh r0, [r4]
    ldr r2, .L080194C4 @ =0x00005285
    b .L080194D2
    .align 2, 0
.L080194BC: .4byte gMapRange
.L080194C0: .4byte 0x00005284
.L080194C4: .4byte 0x00005285
.L080194C8:
    movs r1, #0xa5
    lsls r1, r1, #7
    adds r0, r1, #0
    strh r0, [r4]
    ldr r2, .L080194EC @ =0x00005281
.L080194D2:
    adds r0, r2, #0
    strh r0, [r4, #2]
    adds r1, r4, #0
    adds r1, #0x40
    adds r2, #1
    adds r0, r2, #0
    strh r0, [r1]
    adds r1, #2
    adds r2, #1
    adds r0, r2, #0
    strh r0, [r1]
    b .L080194FE
    .align 2, 0
.L080194EC: .4byte 0x00005281
.L080194F0:
    strh r1, [r4]
    strh r1, [r4, #2]
    adds r0, r4, #0
    adds r0, #0x40
    strh r1, [r0]
    adds r0, #2
    strh r1, [r0]
.L080194FE:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    func_end PutLimitViewSquare

    thumb_func_start RenderMap
RenderMap: @ 0x08019504
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    ldr r0, .L08019578 @ =gBmSt
    ldrh r2, [r0, #0xc]
    lsls r1, r2, #0x10
    asrs r1, r1, #0x14
    strh r1, [r0, #0x24]
    ldrh r2, [r0, #0xe]
    lsls r1, r2, #0x10
    asrs r1, r1, #0x14
    strh r1, [r0, #0x26]
    movs r5, #9
    adds r7, r0, #0
.L0801951E:
    movs r4, #0xe
    subs r6, r5, #1
.L08019522:
    movs r0, #0x24
    ldrsh r3, [r7, r0]
    adds r3, r3, r4
    movs r1, #0x26
    ldrsh r0, [r7, r1]
    adds r0, r0, r5
    str r0, [sp]
    ldr r0, .L0801957C @ =gBg3Tm
    adds r1, r4, #0
    adds r2, r5, #0
    bl PutMapMetatile
    subs r4, #1
    cmp r4, #0
    bge .L08019522
    adds r5, r6, #0
    cmp r5, #0
    bge .L0801951E
    movs r0, #8
    bl EnableBgSync
    movs r0, #3
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    ldr r2, .L08019580 @ =gDispIo
    movs r0, #1
    ldrb r1, [r2, #1]
    orrs r0, r1
    movs r1, #2
    orrs r0, r1
    movs r1, #4
    orrs r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r2, #1]
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019578: .4byte gBmSt
.L0801957C: .4byte gBg3Tm
.L08019580: .4byte gDispIo
    func_end RenderMap

    thumb_func_start RenderMapForFade
RenderMapForFade: @ 0x08019584
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    movs r1, #0x80
    lsls r1, r1, #8
    movs r0, #2
    bl SetBgChrOffset
    ldr r1, .L080195E8 @ =gBmSt
    ldrh r2, [r1, #0xc]
    lsls r0, r2, #0x10
    asrs r0, r0, #0x14
    strh r0, [r1, #0x24]
    ldrh r2, [r1, #0xe]
    lsls r0, r2, #0x10
    asrs r0, r0, #0x14
    strh r0, [r1, #0x26]
    movs r5, #9
    adds r7, r1, #0
.L080195A8:
    movs r4, #0xe
    subs r6, r5, #1
.L080195AC:
    movs r0, #0x24
    ldrsh r3, [r7, r0]
    adds r3, r3, r4
    movs r1, #0x26
    ldrsh r0, [r7, r1]
    adds r0, r0, r5
    str r0, [sp]
    ldr r0, .L080195EC @ =gBg2Tm
    adds r1, r4, #0
    adds r2, r5, #0
    bl PutMapMetatile
    subs r4, #1
    cmp r4, #0
    bge .L080195AC
    adds r5, r6, #0
    cmp r5, #0
    bge .L080195A8
    movs r0, #4
    bl EnableBgSync
    movs r0, #2
    movs r1, #0
    movs r2, #0
    bl SetBgOffset
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080195E8: .4byte gBmSt
.L080195EC: .4byte gBg2Tm
    func_end RenderMapForFade

    thumb_func_start UpdateRenderMap
UpdateRenderMap: @ 0x080195F0
    push {r4, r5, lr}
    ldr r2, .L08019620 @ =gBmSt
    ldrh r4, [r2, #0xc]
    movs r0, #0xc
    ldrsh r3, [r2, r0]
    ldrh r0, [r2, #0x10]
    movs r5, #0x10
    ldrsh r1, [r2, r5]
    cmp r3, r1
    beq .L08019634
    cmp r3, r1
    ble .L08019624
    adds r0, r3, #0
    subs r0, #1
    subs r1, #1
    eors r0, r1
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08019634
    movs r0, #0xf
    bl RenderMapColumn
    b .L08019634
    .align 2, 0
.L08019620: .4byte gBmSt
.L08019624:
    eors r0, r4
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08019634
    movs r0, #0
    bl RenderMapColumn
.L08019634:
    ldr r2, .L08019664 @ =gBmSt
    ldrh r4, [r2, #0xe]
    movs r5, #0xe
    ldrsh r3, [r2, r5]
    ldrh r0, [r2, #0x12]
    movs r5, #0x12
    ldrsh r1, [r2, r5]
    cmp r3, r1
    beq .L08019678
    cmp r3, r1
    ble .L08019668
    adds r0, r3, #0
    subs r0, #1
    subs r1, #1
    eors r0, r1
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08019678
    movs r0, #0xa
    bl RenderMapLine
    b .L08019678
    .align 2, 0
.L08019664: .4byte gBmSt
.L08019668:
    eors r0, r4
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08019678
    movs r0, #0
    bl RenderMapLine
.L08019678:
    ldr r4, .L080196CC @ =gBmSt
    ldr r0, [r4, #0xc]
    str r0, [r4, #0x10]
    ldrh r5, [r4, #0x24]
    lsls r1, r5, #4
    ldrh r0, [r4, #0xc]
    subs r1, r0, r1
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldrh r3, [r4, #0x26]
    lsls r2, r3, #4
    ldrh r5, [r4, #0xe]
    subs r2, r5, r2
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #3
    bl SetBgOffset
    movs r0, #1
    ldrb r1, [r4, #4]
    ands r0, r1
    cmp r0, #0
    beq .L080196C4
    ldrh r3, [r4, #0x24]
    lsls r1, r3, #4
    ldrh r5, [r4, #0xc]
    subs r1, r5, r1
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldrh r0, [r4, #0x26]
    lsls r2, r0, #4
    ldrh r4, [r4, #0xe]
    subs r2, r4, r2
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    movs r0, #2
    bl SetBgOffset
.L080196C4:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080196CC: .4byte gBmSt
    func_end UpdateRenderMap

    thumb_func_start RenderMapColumn
RenderMapColumn: @ 0x080196D0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r4, .L08019744 @ =gBmSt
    ldrh r1, [r4, #0xc]
    lsls r3, r1, #0x10
    asrs r3, r3, #0x14
    adds r1, r0, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov r8, r1
    ldrh r2, [r4, #0xe]
    lsls r1, r2, #0x10
    asrs r1, r1, #0x14
    lsls r2, r1, #0x10
    lsrs r2, r2, #0x10
    mov sl, r2
    ldrh r2, [r4, #0x24]
    subs r3, r3, r2
    adds r7, r0, r3
    movs r0, #0xf
    ands r7, r0
    ldrh r0, [r4, #0x26]
    subs r1, r1, r0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov sb, r1
    movs r0, #1
    ldrb r4, [r4, #4]
    ands r0, r4
    cmp r0, #0
    bne .L0801974C
    movs r6, #0xa
    movs r4, #0xf
.L0801971E:
    mov r1, sb
    adds r2, r1, r6
    ands r2, r4
    mov r1, sl
    adds r0, r1, r6
    str r0, [sp]
    ldr r0, .L08019748 @ =gBg3Tm
    adds r1, r7, #0
    mov r3, r8
    bl PutMapMetatile
    subs r6, #1
    cmp r6, #0
    bge .L0801971E
    movs r0, #8
    bl EnableBgSync
    b .L08019782
    .align 2, 0
.L08019744: .4byte gBmSt
.L08019748: .4byte gBg3Tm
.L0801974C:
    movs r6, #0xa
.L0801974E:
    mov r2, sb
    adds r4, r2, r6
    movs r0, #0xf
    ands r4, r0
    mov r0, sl
    adds r5, r0, r6
    str r5, [sp]
    ldr r0, .L08019794 @ =gBg3Tm
    adds r1, r7, #0
    adds r2, r4, #0
    mov r3, r8
    bl PutMapMetatile
    str r4, [sp]
    ldr r0, .L08019798 @ =gBg2Tm
    mov r1, r8
    adds r2, r5, #0
    adds r3, r7, #0
    bl PutLimitViewSquare
    subs r6, #1
    cmp r6, #0
    bge .L0801974E
    movs r0, #0xc
    bl EnableBgSync
.L08019782:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019794: .4byte gBg3Tm
.L08019798: .4byte gBg2Tm
    func_end RenderMapColumn

    thumb_func_start RenderMapLine
RenderMapLine: @ 0x0801979C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r4, .L08019810 @ =gBmSt
    ldrh r1, [r4, #0xc]
    lsls r2, r1, #0x10
    asrs r2, r2, #0x14
    lsls r1, r2, #0x10
    lsrs r1, r1, #0x10
    mov sl, r1
    ldrh r1, [r4, #0xe]
    lsls r3, r1, #0x10
    asrs r3, r3, #0x14
    adds r1, r0, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    mov r8, r1
    ldrh r1, [r4, #0x24]
    subs r2, r2, r1
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    mov sb, r2
    ldrh r1, [r4, #0x26]
    subs r3, r3, r1
    adds r7, r0, r3
    movs r0, #0xf
    ands r7, r0
    movs r0, #1
    ldrb r4, [r4, #4]
    ands r0, r4
    cmp r0, #0
    bne .L08019818
    movs r6, #0xf
    movs r4, #0xf
.L080197EA:
    mov r0, sb
    adds r1, r0, r6
    ands r1, r4
    mov r0, sl
    adds r3, r0, r6
    mov r0, r8
    str r0, [sp]
    ldr r0, .L08019814 @ =gBg3Tm
    adds r2, r7, #0
    bl PutMapMetatile
    subs r6, #1
    cmp r6, #0
    bge .L080197EA
    movs r0, #8
    bl EnableBgSync
    b .L08019850
    .align 2, 0
.L08019810: .4byte gBmSt
.L08019814: .4byte gBg3Tm
.L08019818:
    movs r6, #0xf
.L0801981A:
    mov r1, sb
    adds r4, r1, r6
    movs r0, #0xf
    ands r4, r0
    mov r0, sl
    adds r5, r0, r6
    mov r1, r8
    str r1, [sp]
    ldr r0, .L08019860 @ =gBg3Tm
    adds r1, r4, #0
    adds r2, r7, #0
    adds r3, r5, #0
    bl PutMapMetatile
    str r7, [sp]
    ldr r0, .L08019864 @ =gBg2Tm
    adds r1, r5, #0
    mov r2, r8
    adds r3, r4, #0
    bl PutLimitViewSquare
    subs r6, #1
    cmp r6, #0
    bge .L0801981A
    movs r0, #0xc
    bl EnableBgSync
.L08019850:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019860: .4byte gBg3Tm
.L08019864: .4byte gBg2Tm
    func_end RenderMapLine

    thumb_func_start RefreshUnitsOnMaps
RefreshUnitsOnMaps: @ 0x08019868
    push {r4, r5, r6, r7, lr}
    movs r7, #1
.L0801986C:
    adds r0, r7, #0
    bl GetUnit
    adds r6, r0, #0
    cmp r6, #0
    beq .L080198C0
    ldr r0, [r6]
    cmp r0, #0
    beq .L080198C0
    ldr r0, [r6, #0xc]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L080198C0
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    ldr r0, .L08019950 @ =gBmMapUnit
    ldr r0, [r0]
    lsls r1, r1, #2
    adds r1, r1, r0
    movs r2, #0x10
    ldrsb r2, [r6, r2]
    ldr r0, [r1]
    adds r0, r0, r2
    strb r7, [r0]
    ldr r0, .L08019954 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    beq .L080198C0
    movs r4, #0x10
    ldrsb r4, [r6, r4]
    movs r5, #0x11
    ldrsb r5, [r6, r5]
    adds r0, r6, #0
    bl GetUnitFogViewRange
    adds r2, r0, #0
    adds r0, r4, #0
    adds r1, r5, #0
    movs r3, #1
    bl MapAddInRange
.L080198C0:
    adds r7, #1
    cmp r7, #0x7f
    ble .L0801986C
    ldr r0, .L08019954 @ =gPlaySt
    ldrb r0, [r0, #0xf]
    cmp r0, #0x80
    beq .L08019998
    movs r7, #0x81
.L080198D0:
    adds r0, r7, #0
    bl GetUnit
    adds r6, r0, #0
    cmp r6, #0
    beq .L08019986
    ldr r2, [r6]
    cmp r2, #0
    beq .L08019986
    ldr r0, [r6, #0xc]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L08019986
    ldr r0, [r6, #4]
    ldr r1, [r2, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x13
    ands r1, r0
    cmp r1, #0
    beq .L08019910
    movs r0, #0x10
    ldrsb r0, [r6, r0]
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    movs r2, #0xa
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L08019910:
    ldr r0, .L08019954 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    movs r2, #0x11
    ldrsb r2, [r6, r2]
    movs r3, #0x10
    ldrsb r3, [r6, r3]
    cmp r0, #0
    beq .L08019960
    ldr r0, .L08019958 @ =gMapFog
    ldr r0, [r0]
    lsls r1, r2, #2
    adds r0, r1, r0
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08019960
    ldr r0, .L0801995C @ =gBmMapHidden
    ldr r0, [r0]
    adds r0, r1, r0
    ldr r1, [r0]
    adds r1, r1, r3
    movs r0, #1
    ldrb r2, [r1]
    orrs r0, r2
    strb r0, [r1]
    ldr r0, [r6, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    orrs r0, r1
    str r0, [r6, #0xc]
    b .L08019986
    .align 2, 0
.L08019950: .4byte gBmMapUnit
.L08019954: .4byte gPlaySt
.L08019958: .4byte gMapFog
.L0801995C: .4byte gBmMapHidden
.L08019960:
    ldr r0, .L08019990 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r3
    strb r7, [r0]
    ldr r1, [r6, #0xc]
    movs r0, #0x80
    lsls r0, r0, #2
    ands r0, r1
    cmp r0, #0
    beq .L08019986
    ldr r0, .L08019994 @ =0xFFFFFDFF
    ands r1, r0
    movs r0, #0x80
    lsls r0, r0, #1
    orrs r1, r0
    str r1, [r6, #0xc]
.L08019986:
    adds r7, #1
    cmp r7, #0xc5
    ble .L080198D0
    b .L08019A2C
    .align 2, 0
.L08019990: .4byte gBmMapUnit
.L08019994: .4byte 0xFFFFFDFF
.L08019998:
    movs r7, #0x81
.L0801999A:
    adds r0, r7, #0
    bl GetUnit
    adds r6, r0, #0
    cmp r6, #0
    beq .L08019A26
    ldr r2, [r6]
    cmp r2, #0
    beq .L08019A26
    ldr r0, [r6, #0xc]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne .L08019A26
    ldr r0, [r6, #4]
    ldr r1, [r2, #0x28]
    ldr r0, [r0, #0x28]
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x13
    ands r1, r0
    cmp r1, #0
    beq .L080199DA
    movs r0, #0x10
    ldrsb r0, [r6, r0]
    movs r1, #0x11
    ldrsb r1, [r6, r1]
    movs r2, #0xa
    movs r3, #1
    rsbs r3, r3, #0
    bl MapAddInRange
.L080199DA:
    ldr r0, .L08019A08 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    movs r2, #0x11
    ldrsb r2, [r6, r2]
    movs r3, #0x10
    ldrsb r3, [r6, r3]
    cmp r0, #0
    beq .L08019A18
    ldr r0, .L08019A0C @ =gMapFog
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08019A10
    ldr r0, [r6, #0xc]
    movs r1, #0x80
    lsls r1, r1, #2
    orrs r0, r1
    b .L08019A16
    .align 2, 0
.L08019A08: .4byte gPlaySt
.L08019A0C: .4byte gMapFog
.L08019A10:
    ldr r0, [r6, #0xc]
    ldr r1, .L08019A34 @ =0xFFFFFDFF
    ands r0, r1
.L08019A16:
    str r0, [r6, #0xc]
.L08019A18:
    ldr r0, .L08019A38 @ =gBmMapUnit
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    adds r0, r0, r3
    strb r7, [r0]
.L08019A26:
    adds r7, #1
    cmp r7, #0xc5
    ble .L0801999A
.L08019A2C:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08019A34: .4byte 0xFFFFFDFF
.L08019A38: .4byte gBmMapUnit
    func_end RefreshUnitsOnMaps

    thumb_func_start RefreshTorchlightOnFogMap
RefreshTorchlightOnFogMap: @ 0x08019A3C
    push {r4, lr}
    movs r0, #0
    bl GetTrap
    adds r4, r0, #0
    b .L08019A5C
.L08019A48:
    ldrb r0, [r4, #2]
    cmp r0, #0xa
    bne .L08019A5A
    ldrb r0, [r4]
    ldrb r1, [r4, #1]
    ldrb r2, [r4, #3]
    movs r3, #1
    bl MapAddInRange
.L08019A5A:
    adds r4, #8
.L08019A5C:
    ldrb r0, [r4, #2]
    cmp r0, #0
    bne .L08019A48
    pop {r4}
    pop {r0}
    bx r0
    func_end RefreshTorchlightOnFogMap

    thumb_func_start RefreshMinesOnHiddenMap
RefreshMinesOnHiddenMap: @ 0x08019A68
    push {r4, r5, lr}
    movs r0, #0
    bl GetTrap
    adds r2, r0, #0
    ldrb r0, [r2, #2]
    cmp r0, #0
    beq .L08019AAE
    ldr r5, .L08019AB4 @ =gBmMapUnit
    ldr r4, .L08019AB8 @ =gBmMapHidden
.L08019A7C:
    ldrb r0, [r2, #2]
    cmp r0, #0xb
    bne .L08019AA6
    ldr r0, [r5]
    ldrb r3, [r2, #1]
    lsls r1, r3, #2
    adds r0, r1, r0
    ldrb r3, [r2]
    ldr r0, [r0]
    adds r0, r0, r3
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08019AA6
    ldr r0, [r4]
    adds r0, r1, r0
    ldr r1, [r0]
    adds r1, r1, r3
    movs r0, #2
    ldrb r3, [r1]
    orrs r0, r3
    strb r0, [r1]
.L08019AA6:
    adds r2, #8
    ldrb r0, [r2, #2]
    cmp r0, #0
    bne .L08019A7C
.L08019AAE:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08019AB4: .4byte gBmMapUnit
.L08019AB8: .4byte gBmMapHidden
    func_end RefreshMinesOnHiddenMap

    thumb_func_start RefreshEntityMaps
RefreshEntityMaps: @ 0x08019ABC
    push {lr}
    ldr r0, .L08019AF8 @ =gBmMapUnit
    ldr r0, [r0]
    movs r1, #0
    bl MapFill
    ldr r0, .L08019AFC @ =gBmMapHidden
    ldr r0, [r0]
    movs r1, #0
    bl MapFill
    ldr r0, .L08019B00 @ =gMapFog
    ldr r2, [r0]
    movs r1, #0
    ldr r0, .L08019B04 @ =gPlaySt
    ldrb r0, [r0, #0xd]
    cmp r0, #0
    bne .L08019AE2
    movs r1, #1
.L08019AE2:
    adds r0, r2, #0
    bl MapFill
    bl RefreshTorchlightOnFogMap
    bl RefreshUnitsOnMaps
    bl RefreshMinesOnHiddenMap
    pop {r0}
    bx r0
    .align 2, 0
.L08019AF8: .4byte gBmMapUnit
.L08019AFC: .4byte gBmMapHidden
.L08019B00: .4byte gMapFog
.L08019B04: .4byte gPlaySt
    func_end RefreshEntityMaps

    thumb_func_start GetTerrainName
GetTerrainName: @ 0x08019B08
    push {lr}
    ldr r1, .L08019B1C @ =0x08BE50E8
    lsls r0, r0, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    bl DecodeMsg
    pop {r1}
    bx r1
    .align 2, 0
.L08019B1C: .4byte 0x08BE50E8
    func_end GetTerrainName

    thumb_func_start GetTerrainHealAmount
GetTerrainHealAmount: @ 0x08019B20
    ldr r1, .L08019B2C @ =0x08BE47C4
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bx lr
    .align 2, 0
.L08019B2C: .4byte 0x08BE47C4
    func_end GetTerrainHealAmount

    thumb_func_start DoesTerrainHealStatus
DoesTerrainHealStatus: @ 0x08019B30
    ldr r1, .L08019B3C @ =0x08BE4805
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    bx lr
    .align 2, 0
.L08019B3C: .4byte 0x08BE4805
    func_end DoesTerrainHealStatus

    thumb_func_start func_08019B40
func_08019B40: @ 0x08019B40
    push {r4, r5, r6, lr}
    ldr r4, .L08019B94 @ =gTilesetInfo
    ldr r5, .L08019B98 @ =0x000003FF
    adds r0, r5, #0
    ldrh r1, [r4]
    ands r0, r1
    movs r6, #0x80
    lsls r6, r6, #3
    adds r0, r0, r6
    adds r4, #2
    bl SetBlankChr
    adds r0, r5, #0
    ldrh r1, [r4]
    ands r0, r1
    adds r0, r0, r6
    adds r4, #2
    bl SetBlankChr
    adds r0, r5, #0
    ldrh r1, [r4]
    ands r0, r1
    adds r0, r0, r6
    adds r4, #2
    bl SetBlankChr
    ldrh r4, [r4]
    ands r5, r4
    adds r5, r5, r6
    adds r0, r5, #0
    bl SetBlankChr
    ldr r1, .L08019B9C @ =gPal
    movs r0, #0x86
    lsls r0, r0, #7
    strh r0, [r1]
    bl EnablePalSync
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08019B94: .4byte gTilesetInfo
.L08019B98: .4byte 0x000003FF
.L08019B9C: .4byte gPal
    func_end func_08019B40

    thumb_func_start MapFloodUnit
MapFloodUnit: @ 0x08019BA0
    push {r4, lr}
    adds r4, r0, #0
    bl GetUnitMovementCost
    bl SetWorkingMoveTable
    ldr r0, .L08019BD8 @ =gBmMapMovement
    ldr r1, [r0]
    ldr r0, .L08019BDC @ =gWorkingMap
    str r1, [r0]
    movs r0, #0x10
    ldrsb r0, [r4, r0]
    movs r1, #0x11
    ldrsb r1, [r4, r1]
    movs r2, #0x1d
    ldrsb r2, [r4, r2]
    ldr r3, [r4, #4]
    ldrb r3, [r3, #0x12]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    adds r2, r2, r3
    movs r3, #0xb
    ldrsb r3, [r4, r3]
    bl BeginMapFlood
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08019BD8: .4byte gBmMapMovement
.L08019BDC: .4byte gWorkingMap
    func_end MapFloodUnit
