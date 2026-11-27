    .section ".rodata"

    @ 0C5E50 ... 677370

    .incbin "baserom.gba", 0x0C5E50, 0x0C5EA4 - 0x0C5E50

    @ 0C5EA4
    .global Img_Icons
Img_Icons:
    .incbin "baserom.gba", 0x0C5EA4, 0x0CBEA4 - 0x0C5EA4
    .global Pal_Icons
Pal_Icons:
    .incbin "baserom.gba", 0x0CBEA4, 0x0CBEE4 - 0x0CBEA4

    .global Img_FactionMiniCard
Img_FactionMiniCard:
    .incbin "baserom.gba", 0x0CBEE4, 0x0CCCE4 - 0x0CBEE4

    .global Pal_FactionMiniCard
Pal_FactionMiniCard:
    .incbin "baserom.gba", 0x0CCCE4, 0x193DA0 - 0x0CCCE4

    .global gUnk_08193DA0
gUnk_08193DA0:
    .incbin "baserom.gba", 0x193DA0, 0x193DA4 - 0x193DA0

    .global rodata_sEnd
rodata_sEnd:

    .section ".rodata_1", "a"

    .incbin "baserom.gba", 0x193E20, 0x193E90 - 0x193E20

    .global Gfx_MiscUiGraphics
Gfx_MiscUiGraphics:
    .incbin "baserom.gba", 0x193E90, 0x19431C - 0x193E90

    .global Pal_MiscUiGraphics
Pal_MiscUiGraphics:
    .incbin "baserom.gba", 0x19431C, 0x194674 - 0x19431C

    .global Pal_Text
Pal_Text:
    .incbin "baserom.gba", 0x194674, 0x194734 - 0x194674

    .global Pal_GreenTextColors
Pal_GreenTextColors:
    .incbin "baserom.gba", 0x194734, 0x194754 - 0x194734

    .global gUnk_08194754
gUnk_08194754:
    .incbin "baserom.gba", 0x194754, 0x194774 - 0x194754

    .global gUnk_08194774
gUnk_08194774:
    .incbin "baserom.gba", 0x194774, 0x195680 - 0x194774

    .global Tsa_Unk_08195680
Tsa_Unk_08195680:
    .incbin "baserom.gba", 0x195680, 0x195738 - 0x195680

    .global Tsa_Unk_08195738
Tsa_Unk_08195738:
    .incbin "baserom.gba", 0x195738, 0x197CC8 - 0x195738

    .global Img_DragonFlameSmallFire
Img_DragonFlameSmallFire:
    .incbin "baserom.gba", 0x197CC8, 0x198164 - 0x197CC8

    .global Pal_DragonFlameSmallFire
Pal_DragonFlameSmallFire:
    .incbin "baserom.gba", 0x198164, 0x198838 - 0x198164

    .global SpriteConf_DragonFlameSmallFire
SpriteConf_DragonFlameSmallFire:
    .incbin "baserom.gba", 0x198838, 0x19D22C - 0x198838

    .global Img_EventSnowStormfx
Img_EventSnowStormfx:
    .incbin "baserom.gba", 0x19D22C, 0x19D6E4 - 0x19D22C

    .global Pal_EventSnowStormfx
Pal_EventSnowStormfx:
    .incbin "baserom.gba", 0x19D6E4, 0x19D724 - 0x19D6E4

    .global Tsa_EventSnowStormfx
Tsa_EventSnowStormfx:
    .incbin "baserom.gba", 0x19D724, 0x1A755C - 0x19D724

    .global Pal_EventThunderfx
Pal_EventThunderfx:
    .incbin "baserom.gba", 0x1A755C, 0x1A757C - 0x1A755C

    .global Img_EventThunderfx1
Img_EventThunderfx1:
    .incbin "baserom.gba", 0x1A757C, 0x1A80E0 - 0x1A757C

    .global Img_EventThunderfx2
Img_EventThunderfx2:
    .incbin "baserom.gba", 0x1A80E0, 0x1A8A40 - 0x1A80E0

    .global Tsa_EventThunderfx1
Tsa_EventThunderfx1:
    .incbin "baserom.gba", 0x1A8A40, 0x1A8A80 - 0x1A8A40

    .global Tsa_EventThunderfx2
Tsa_EventThunderfx2:
    .incbin "baserom.gba", 0x1A8A80, 0x1A8B08 - 0x1A8A80

    .global Tsa_EventThunderfx3
Tsa_EventThunderfx3:
    .incbin "baserom.gba", 0x1A8B08, 0x1A8B90 - 0x1A8B08

    .global Tsa_EventThunderfx4
Tsa_EventThunderfx4:
    .incbin "baserom.gba", 0x1A8B90, 0x1A8BEC - 0x1A8B90

    .global Tsa_EventThunderfx5
Tsa_EventThunderfx5:
    .incbin "baserom.gba", 0x1A8BEC, 0x1A8CE4 - 0x1A8BEC

    .global Tsa_EventThunderfx6
Tsa_EventThunderfx6:
    .incbin "baserom.gba", 0x1A8CE4, 0x1A8DEC - 0x1A8CE4

    .global Tsa_EventThunderfx7
Tsa_EventThunderfx7:
    .incbin "baserom.gba", 0x1A8DEC, 0x1A8E7C - 0x1A8DEC

    .global Img_EventThunderfx3
Img_EventThunderfx3:
    .incbin "baserom.gba", 0x1A8E7C, 0x1A99CC - 0x1A8E7C

    .global Img_EventThunderfx4
Img_EventThunderfx4:
    .incbin "baserom.gba", 0x1A99CC, 0x1AA294 - 0x1A99CC

    .global Tsa_EventThunderfx8
Tsa_EventThunderfx8:
    .incbin "baserom.gba", 0x1AA294, 0x1AA3AC - 0x1AA294

    .global Tsa_EventThunderfx9
Tsa_EventThunderfx9:
    .incbin "baserom.gba", 0x1AA3AC, 0x1AA4C4 - 0x1AA3AC

    .global Tsa_EventThunderfx10
Tsa_EventThunderfx10:
    .incbin "baserom.gba", 0x1AA4C4, 0x1AA5E0 - 0x1AA4C4

    .global Tsa_EventThunderfx11
Tsa_EventThunderfx11:
    .incbin "baserom.gba", 0x1AA5E0, 0x1AA680 - 0x1AA5E0

    .global Img_NinianDispfx
Img_NinianDispfx:
    .incbin "baserom.gba", 0x1AA680, 0x1AA898 - 0x1AA680

    .global Pal_NinianDispfx
Pal_NinianDispfx:
    .incbin "baserom.gba", 0x1AA898, 0x1AA8B8 - 0x1AA898

    .global SpritAnim_NinianDispfx
SpritAnim_NinianDispfx:
    .incbin "baserom.gba", 0x1AA8B8, 0x1AB504 - 0x1AA8B8

    .global Pal_NinianDisp_081AB504
Pal_NinianDisp_081AB504:
    .incbin "baserom.gba", 0x1AB504, 0x1AB524 - 0x1AB504

    .global Img_NinianDisp_081AB524
Img_NinianDisp_081AB524:
    .incbin "baserom.gba", 0x1AB524, 0x1ABCD8 - 0x1AB524

    .global Img_NinianDisp_081ABCD8
Img_NinianDisp_081ABCD8:
    .incbin "baserom.gba", 0x1ABCD8, 0x1AC3A0 - 0x1ABCD8

    .global Tsa_NinianDisp_081AC3A0
Tsa_NinianDisp_081AC3A0:
    .incbin "baserom.gba", 0x1AC3A0, 0x1AC3D8 - 0x1AC3A0

    .global Tsa_NinianDisp_081AC3D8
Tsa_NinianDisp_081AC3D8:
    .incbin "baserom.gba", 0x1AC3D8, 0x1AC420 - 0x1AC3D8

    .global Tsa_NinianDisp_081AC420
Tsa_NinianDisp_081AC420:
    .incbin "baserom.gba", 0x1AC420, 0x1AC494 - 0x1AC420

    .global Tsa_NinianDisp_081AC494
Tsa_NinianDisp_081AC494:
    .incbin "baserom.gba", 0x1AC494, 0x1AC52C - 0x1AC494

    .global Tsa_NinianDisp_081AC52C
Tsa_NinianDisp_081AC52C:
    .incbin "baserom.gba", 0x1AC52C, 0x1AC5BC - 0x1AC52C

    .global Tsa_NinianDisp_081AC5BC
Tsa_NinianDisp_081AC5BC:
    .incbin "baserom.gba", 0x1AC5BC, 0x1AC63C - 0x1AC5BC

    .global Tsa_NinianDisp_081AC63C
Tsa_NinianDisp_081AC63C:
    .incbin "baserom.gba", 0x1AC63C, 0x1AC6B0 - 0x1AC63C

    .global Img_NinianDisp_081AC6B0
Img_NinianDisp_081AC6B0:
    .incbin "baserom.gba", 0x1AC6B0, 0x1AD0A4 - 0x1AC6B0

    .global Img_NinianDisp_081AD0A4
Img_NinianDisp_081AD0A4:
    .incbin "baserom.gba", 0x1AD0A4, 0x1AD9D0 - 0x1AD0A4

    .global Tsa_NinianDisp_081AD9D0
Tsa_NinianDisp_081AD9D0:
    .incbin "baserom.gba", 0x1AD9D0, 0x1ADA48 - 0x1AD9D0

    .global Tsa_NinianDisp_081ADA48
Tsa_NinianDisp_081ADA48:
    .incbin "baserom.gba", 0x1ADA48, 0x1ADAC8 - 0x1ADA48

    .global Tsa_NinianDisp_081ADAC8
Tsa_NinianDisp_081ADAC8:
    .incbin "baserom.gba", 0x1ADAC8, 0x1ADB54 - 0x1ADAC8

    .global Tsa_NinianDisp_081ADB54
Tsa_NinianDisp_081ADB54:
    .incbin "baserom.gba", 0x1ADB54, 0x1ADBF0 - 0x1ADB54

    .global Tsa_NinianDisp_081ADBF0
Tsa_NinianDisp_081ADBF0:
    .incbin "baserom.gba", 0x1ADBF0, 0x1ADCA0 - 0x1ADBF0

    .global Img_NinianDisp_081ADCA0
Img_NinianDisp_081ADCA0:
    .incbin "baserom.gba", 0x1ADCA0, 0x1AE774 - 0x1ADCA0

    .global Img_NinianDisp_081AE774
Img_NinianDisp_081AE774:
    .incbin "baserom.gba", 0x1AE774, 0x1AED08 - 0x1AE774

    .global Tsa_NinianDisp_081AED08
Tsa_NinianDisp_081AED08:
    .incbin "baserom.gba", 0x1AED08, 0x1AEDC8 - 0x1AED08

    .global Tsa_NinianDisp_081AEDC8
Tsa_NinianDisp_081AEDC8:
    .incbin "baserom.gba", 0x1AEDC8, 0x1AEE9C - 0x1AEDC8

    .global Tsa_NinianDisp_081AEE9C
Tsa_NinianDisp_081AEE9C:
    .incbin "baserom.gba", 0x1AEE9C, 0x1AEF38 - 0x1AEE9C

    .global Img_NinianDisp_081AEF38
Img_NinianDisp_081AEF38:
    .incbin "baserom.gba", 0x1AEF38, 0x1AF934 - 0x1AEF38

    .global Img_NinianDisp_081AF934
Img_NinianDisp_081AF934:
    .incbin "baserom.gba", 0x1AF934, 0x1B0044 - 0x1AF934

    .global Tsa_NinianDisp_081B0044
Tsa_NinianDisp_081B0044:
    .incbin "baserom.gba", 0x1B0044, 0x1B00FC - 0x1B0044

    .global Tsa_NinianDisp_081B00FC
Tsa_NinianDisp_081B00FC:
    .incbin "baserom.gba", 0x1B00FC, 0x1B01C4 - 0x1B00FC

    .global Tsa_NinianDisp_081B01C4
Tsa_NinianDisp_081B01C4:
    .incbin "baserom.gba", 0x1B01C4, 0x1B02A4 - 0x1B01C4

    .global Img_NinianDisp_081B02A4
Img_NinianDisp_081B02A4:
    .incbin "baserom.gba", 0x1B02A4, 0x1B0B38 - 0x1B02A4

    .global Img_NinianDisp_081B0B38
Img_NinianDisp_081B0B38:
    .incbin "baserom.gba", 0x1B0B38, 0x1B0EE8 - 0x1B0B38

    .global Tsa_NinianDisp_081B0EE8
Tsa_NinianDisp_081B0EE8:
    .incbin "baserom.gba", 0x1B0EE8, 0x1B0F78 - 0x1B0EE8

    .global Tsa_NinianDisp_081B0F78
Tsa_NinianDisp_081B0F78:
    .incbin "baserom.gba", 0x1B0F78, 0x1B1038 - 0x1B0F78

    .global Tsa_NinianDisp_081B1038
Tsa_NinianDisp_081B1038:
    .incbin "baserom.gba", 0x1B1038, 0x1B93C8 - 0x1B1038

    .global Img_DragonGateFlame
Img_DragonGateFlame:
    .incbin "baserom.gba", 0x1B93C8, 0x1B9790 - 0x1B93C8

    .global Pal_DragonGateFlame
Pal_DragonGateFlame:
    .incbin "baserom.gba", 0x1B9790, 0x1B97B0 - 0x1B9790

    .global Tsa_DragonGateFlame
Tsa_DragonGateFlame:
    .incbin "baserom.gba", 0x1B97B0, 0x1BB310 - 0x1B97B0

    .global Img_DragonGateLight
Img_DragonGateLight:
    .incbin "baserom.gba", 0x1BB310, 0x1BC744 - 0x1BB310

    .global Pal_DragonGateLight
Pal_DragonGateLight:
    .incbin "baserom.gba", 0x1BC744, 0x1BC764 - 0x1BC744

    .global Pal_DragonGateLightForMixing
Pal_DragonGateLightForMixing:
    .incbin "baserom.gba", 0x1BC764, 0x1BC784 - 0x1BC764

    .global Tsa_DragonGateLight
Tsa_DragonGateLight:
    .incbin "baserom.gba", 0x1BC784, 0x1BCB1C - 0x1BC784

    .global Img_DragonGateDragon
Img_DragonGateDragon:
    .incbin "baserom.gba", 0x1BCB1C, 0x1BD758 - 0x1BCB1C

    .global Pal_DragonGateDragon
Pal_DragonGateDragon:
    .incbin "baserom.gba", 0x1BD758, 0x1BD958 - 0x1BD758

    .global Tsa_DragonGateDragon
Tsa_DragonGateDragon:
    .incbin "baserom.gba", 0x1BD958, 0x1C3B6C - 0x1BD958


    .section ".rodata_1_2", "a"

    .incbin "baserom.gba", 0x1C3B74, 0x1D581C - 0x1C3B74

    .global gUiItemHoverModel
gUiItemHoverModel:
    .incbin "baserom.gba", 0x1D581C, 0x1D7B80 - 0x1D581C

    .global gUnk_081D7B80
gUnk_081D7B80:
    .incbin "baserom.gba", 0x1D7B80, 0x1D7DD4 - 0x1D7B80

    .global gUnk_081D7DD4
gUnk_081D7DD4:
    .incbin "baserom.gba", 0x1D7DD4, 0x1D856C - 0x1D7DD4


    .section ".rodata_1_3", "a"

    .incbin "baserom.gba", 0x1D85A4, 0x1D8654 - 0x1D85A4

    .global TsaConf_BanimTmA1
TsaConf_BanimTmA1:
    .incbin "baserom.gba", 0x1D8654, 0x1D86EC - 0x1D8654

    .global TsaConf_BanimTmA2
TsaConf_BanimTmA2:
    .incbin "baserom.gba", 0x1D86EC, 0x1D8784 - 0x1D86EC

    .global TsaConf_BanimTmA3
TsaConf_BanimTmA3:
    .incbin "baserom.gba", 0x1D8784, 0x1D881C - 0x1D8784

    .global TsaConf_BanimTmA4
TsaConf_BanimTmA4:
    .incbin "baserom.gba", 0x1D881C, 0x1D97D0 - 0x1D881C

    .global Pal_EkrDragon
Pal_EkrDragon:
    .incbin "baserom.gba", 0x1D97D0, 0x1E9792 - 0x1D97D0

    .global FrameLut_EfxDrsmmoya
FrameLut_EfxDrsmmoya:
    .incbin "baserom.gba", 0x1E9792, 0x2B49EC - 0x1E9792

    .global Tsa_EfxDrsmmoyaBgRight1
Tsa_EfxDrsmmoyaBgRight1:
    .incbin "baserom.gba", 0x2B49EC, 0x2B5798 - 0x2B49EC

    .global Tsa_EfxDrsmmoyaBgRight2
Tsa_EfxDrsmmoyaBgRight2:
    .incbin "baserom.gba", 0x2B5798, 0x2B694C - 0x2B5798

    .global Tsa_EfxDrsmmoyaBgRight3
Tsa_EfxDrsmmoyaBgRight3:
    .incbin "baserom.gba", 0x2B694C, 0x2B7834 - 0x2B694C

    .global Tsa_EfxDrsmmoyaBgRight4
Tsa_EfxDrsmmoyaBgRight4:
    .incbin "baserom.gba", 0x2B7834, 0x2B83B4 - 0x2B7834

    .global Pal_EfxDrsmmoyaBg
Pal_EfxDrsmmoyaBg:
    .incbin "baserom.gba", 0x2B83B4, 0x2B83D4 - 0x2B83B4

    .global Tsa_EfxDrsmmoyaBgLeft1
Tsa_EfxDrsmmoyaBgLeft1:
    .incbin "baserom.gba", 0x2B83D4, 0x2B8490 - 0x2B83D4

    .global Tsa_EfxDrsmmoyaBgLeft2
Tsa_EfxDrsmmoyaBgLeft2:
    .incbin "baserom.gba", 0x2B8490, 0x2B8568 - 0x2B8490

    .global Tsa_EfxDrsmmoyaBgLeft3
Tsa_EfxDrsmmoyaBgLeft3:
    .incbin "baserom.gba", 0x2B8568, 0x2B8668 - 0x2B8568

    .global Tsa_EfxDrsmmoyaBgLeft4
Tsa_EfxDrsmmoyaBgLeft4:
    .incbin "baserom.gba", 0x2B8668, 0x2B8794 - 0x2B8668

    .global Tsa_EfxDrsmmoyaBgLeft5
Tsa_EfxDrsmmoyaBgLeft5:
    .incbin "baserom.gba", 0x2B8794, 0x2B88EC - 0x2B8794

    .global Tsa_EfxDrsmmoyaBgLeft6
Tsa_EfxDrsmmoyaBgLeft6:
    .incbin "baserom.gba", 0x2B88EC, 0x2B8A68 - 0x2B88EC

    .global Tsa_EfxDrsmmoyaBgLeft7
Tsa_EfxDrsmmoyaBgLeft7:
    .incbin "baserom.gba", 0x2B8A68, 0x2B8BE4 - 0x2B8A68

    .global Tsa_EfxDrsmmoyaBgLeft8
Tsa_EfxDrsmmoyaBgLeft8:
    .incbin "baserom.gba", 0x2B8BE4, 0x2B8D44 - 0x2B8BE4

    .global Tsa_EfxDrsmmoyaBgLeft9
Tsa_EfxDrsmmoyaBgLeft9:
    .incbin "baserom.gba", 0x2B8D44, 0x2B8E94 - 0x2B8D44

    .global Tsa_EfxDrsmmoyaBgLeft10
Tsa_EfxDrsmmoyaBgLeft10:
    .incbin "baserom.gba", 0x2B8E94, 0x2B8FD0 - 0x2B8E94

    .global Tsa_EfxDrsmmoyaBgLeft11
Tsa_EfxDrsmmoyaBgLeft11:
    .incbin "baserom.gba", 0x2B8FD0, 0x2B90F8 - 0x2B8FD0

    .global Tsa_EfxDrsmmoyaBgLeft12
Tsa_EfxDrsmmoyaBgLeft12:
    .incbin "baserom.gba", 0x2B90F8, 0x2B920C - 0x2B90F8

    .global Tsa_EfxDrsmmoyaBgLeft13
Tsa_EfxDrsmmoyaBgLeft13:
    .incbin "baserom.gba", 0x2B920C, 0x2DE598 - 0x2B920C

    .global FrameLut_EkrDragonWingFlashingNormalAtk
FrameLut_EkrDragonWingFlashingNormalAtk:
    .incbin "baserom.gba", 0x2DE598, 0x2DE5AA - 0x2DE598

    .global FrameLut_EkrDragonWingFlashingCriticalAtk
FrameLut_EkrDragonWingFlashingCriticalAtk:
    .incbin "baserom.gba", 0x2DE5AA, 0x2DE6A4 - 0x2DE5AA

    .global FrameLut_EkrDragonFlashingWingObjNormalAtk
FrameLut_EkrDragonFlashingWingObjNormalAtk:
    .incbin "baserom.gba", 0x2DE6A4, 0x2DE6AA - 0x2DE6A4

    .global FrameLut_EkrDragonFlashingWingObjCriticalAtk
FrameLut_EkrDragonFlashingWingObjCriticalAtk:
    .incbin "baserom.gba", 0x2DE6AA, 0x2DE7A4 - 0x2DE6AA

    .global FrameLut_EkrDragon_082DE7A4
FrameLut_EkrDragon_082DE7A4:
    .incbin "baserom.gba", 0x2DE7A4, 0x2DE7AA - 0x2DE7A4

    .global FrameLut_EkrDragon_082DE7AA
FrameLut_EkrDragon_082DE7AA:
    .incbin "baserom.gba", 0x2DE7AA, 0x2DE7BC - 0x2DE7AA

    .global FrameLut_EkrDragon_082DE7BC
FrameLut_EkrDragon_082DE7BC:
    .incbin "baserom.gba", 0x2DE7BC, 0x2DE7CE - 0x2DE7BC

    .global FrameLut_EkrDragon_082DE7CE
FrameLut_EkrDragon_082DE7CE:
    .incbin "baserom.gba", 0x2DE7CE, 0x2DE7E8 - 0x2DE7CE

    .global Img_EkrDragon_082DE7E8
Img_EkrDragon_082DE7E8:
    .incbin "baserom.gba", 0x2DE7E8, 0x2E0FEC - 0x2DE7E8

    .global Pals_EkrDragonFlashingWingBg
Pals_EkrDragonFlashingWingBg:
    .incbin "baserom.gba", 0x2E0FEC, 0x2E10CC - 0x2E0FEC

    .global Tsa_EkrDragon_DragonTail
Tsa_EkrDragon_DragonTail:
    .incbin "baserom.gba", 0x2E10CC, 0x2E1218 - 0x2E10CC

    .global Tsa_EkrDragon_MainBg
Tsa_EkrDragon_MainBg:
    .incbin "baserom.gba", 0x2E1218, 0x2E14FC - 0x2E1218

    .global Tsa_EkrDragon_082E14FC
Tsa_EkrDragon_082E14FC:
    .incbin "baserom.gba", 0x2E14FC, 0x2E17A4 - 0x2E14FC

    .global Tsa_EkrDragon_082E17A4
Tsa_EkrDragon_082E17A4:
    .incbin "baserom.gba", 0x2E17A4, 0x2E1A30 - 0x2E17A4

    .global Img_EkrDragonTunkFace
Img_EkrDragonTunkFace:
    .incbin "baserom.gba", 0x2E1A30, 0x2E2910 - 0x2E1A30

    .global Img_EkrDragonBark
Img_EkrDragonBark:
    .incbin "baserom.gba", 0x2E2910, 0x2E35CC - 0x2E2910

    .global Img_EfxDragonDeadFallHead
Img_EfxDragonDeadFallHead:
    .incbin "baserom.gba", 0x2E35CC, 0x2E4064 - 0x2E35CC

    .global Pal_EkrDragonHead
Pal_EkrDragonHead:
    .incbin "baserom.gba", 0x2E4064, 0x2E4084 - 0x2E4064

    .global Pals_EkrDragonFlashingWingObj
Pals_EkrDragonFlashingWingObj:
    .incbin "baserom.gba", 0x2E4084, 0x2E4164 - 0x2E4084

    .global Img_EkrDragonFireBg3
Img_EkrDragonFireBg3:
    .incbin "baserom.gba", 0x2E4164, 0x2E4B54 - 0x2E4164

    .global Pal_EkrDragonFireBg3
Pal_EkrDragonFireBg3:
    .incbin "baserom.gba", 0x2E4B54, 0x2E4B74 - 0x2E4B54

    .global Tsa_EkrDragonFireBg3
Tsa_EkrDragonFireBg3:
    .incbin "baserom.gba", 0x2E4B74, 0x2E4D30 - 0x2E4B74

    .global Img_EkrDragonFireBG2
Img_EkrDragonFireBG2:
    .incbin "baserom.gba", 0x2E4D30, 0x2E589C - 0x2E4D30

    .global Pal_EkrDragonFireBG2
Pal_EkrDragonFireBG2:
    .incbin "baserom.gba", 0x2E589C, 0x2E58BC - 0x2E589C

    .global Tsa_EkrDragonFireBG2
Tsa_EkrDragonFireBG2:
    .incbin "baserom.gba", 0x2E58BC, 0x3FBD34 - 0x2E58BC

    .global gUnk_083FBD34
gUnk_083FBD34:
    .incbin "baserom.gba", 0x3FBD34, 0x3FBDDC - 0x3FBD34

    .global gUnk_083FBDDC
gUnk_083FBDDC:
    .incbin "baserom.gba", 0x3FBDDC, 0x3FBE80 - 0x3FBDDC

    .global gUnk_083FBE80
gUnk_083FBE80:
    .incbin "baserom.gba", 0x3FBE80, 0x3FBEDC - 0x3FBE80

    .global gUnk_083FBEDC
gUnk_083FBEDC:
    .incbin "baserom.gba", 0x3FBEDC, 0x3FBF30 - 0x3FBEDC

    .global gUnk_083FBF30
gUnk_083FBF30:
    .incbin "baserom.gba", 0x3FBF30, 0x3FBF80 - 0x3FBF30

    .global gUnk_083FBF80
gUnk_083FBF80:
    .incbin "baserom.gba", 0x3FBF80, 0x3FBFD0 - 0x3FBF80

    .global gUnk_083FBFD0
gUnk_083FBFD0:
    .incbin "baserom.gba", 0x3FBFD0, 0x3FDA1C - 0x3FBFD0

    .global Img_LimitViewSquares
Img_LimitViewSquares:
    .incbin "baserom.gba", 0x3FDA1C, 0x3FDC9C - 0x3FDA1C

    .global Img_LimitViewSquareFull
Img_LimitViewSquareFull:
    .incbin "baserom.gba", 0x3FDC9C, 0x3FDD1C - 0x3FDC9C

    .global Pal_LimitViewBlue
Pal_LimitViewBlue:
    .incbin "baserom.gba", 0x3FDD1C, 0x3FDD7C - 0x3FDD1C

    .global Pal_LimitViewRed
Pal_LimitViewRed:
    .incbin "baserom.gba", 0x3FDD7C, 0x3FDDDC - 0x3FDD7C

    .global Pal_LimitViewGreen
Pal_LimitViewGreen:
    .incbin "baserom.gba", 0x3FDDDC, 0x3FE578 - 0x3FDDDC

    .global Img_ChapterIntroMotif
Img_ChapterIntroMotif:
    .incbin "baserom.gba", 0x3FE578, 0x3FF538 - 0x3FE578

    .global Tm_ChapterIntroMotif
Tm_ChapterIntroMotif:
    .incbin "baserom.gba", 0x3FF538, 0x3FF760 - 0x3FF538

    .global Pal_ChapterIntroMotif
Pal_ChapterIntroMotif:
    .incbin "baserom.gba", 0x3FF760, 0x3FF780 - 0x3FF760

    .global Img_ChapterIntroFog
Img_ChapterIntroFog:
    .incbin "baserom.gba", 0x3FF780, 0x401404 - 0x3FF780

    .global Pal_ChapterIntroFog
Pal_ChapterIntroFog:
    .incbin "baserom.gba", 0x401404, 0x677370 - 0x401404

    .section ".rodata_2", "a"

    @ 677648 ... B855DC

    .incbin "baserom.gba", 0x677648, 0xB855DC - 0x677648
