OUTPUT_ARCH(arm)
ENTRY(_start)

MEMORY
{
    EWRAM (w!x)  : ORIGIN = 0x02000000, LENGTH = 256K
    IWRAM (w!x)  : ORIGIN = 0x03000000, LENGTH = 32K
    ROM   (x)    : ORIGIN = 0x08000000, LENGTH = 32M
}

__text_start            =       ORIGIN(ROM);
__ewram_start           =       ORIGIN(EWRAM);
__iwram_start           =       ORIGIN(IWRAM);

/* TODO: dump */
gMusicPlayerTable = 0x0869D668;
gSongTable = 0x0869D6E0;
MsgHuffNodes = 0x08B7D71C;
MsgHuffRoot = 0x08B808A8;

gpKeySt = 0x08B857F8;
gEventCmdTable = 0x08B90E48;
gBackgroundTable = 0x08B91588;
ProcScr_EventWaitForMu = 0x08B91A08;
UnitInfo_Dummy = 0x08B91A18;
ProcScr_EventFlashCursor = 0x08B91A38;
ProcScr_EventCursor = 0x08B91A50;
ProcScr_MoveCamera = 0x08B92E38;

gMsgTable = 0x08B808AC;
gActionSt = 0x0203A85C;

gNumMusicPlayers = 9;
gMaxLines = 0;

SECTIONS
{
    ROM __text_start : ALIGN(4)
    {
        src/crt0.o(.text);
        src/armfunc.o(.text);
        src/main.o(.text);
        src/interrupt.o(.text);
        src/random.o(.text);
        src/hardware.o(.text);
        src/move-data.o(.text);
        src/oam.o(.text);
        src/sound.o(.text);
        src/ram-funcs.o(.text);
        src/proc.o(.text);
        src/icon.o(.text);
        asm/debug-text.o(.text);
        src/text.o(.text);
        src/anime.o(.text);
        src/sprite.o(.text);
        src/face.o(.text);
        src/talk.o(.text);
        src/talk-advance.o(.text);
        src/event.o(.text);
        asm/event-engine.o(.text);
        src/eventscr.o(.text);
        asm/eventscr.o(.text);
        asm/eventscr-080101CC.o(.text);
        asm/eventscr_snowstorm.o(.text);
        asm/eventscr_thunder.o(.text);
        asm/eventscr_niniandisp.o(.text);
        asm/eventscr_screenflash.o(.text);
        asm/eventscr_fade.o(.text);
        asm/eventscr_spriteanim.o(.text);
        src/sprite-anim.o(.text);
        src/game-ctrl.o(.text);
        src/msg.o(.text);
        asm/utils.o(.text);
        src/bm.o(.text);
        asm/items.o(.text);
        src/unit.o(.text);
        asm/map.o(.text);
        asm/mapwork.o(.text);
        asm/debug-menu.o(.text);
        src/player-phase.o(.text);
        asm/bmfx.o(.text);
        src/bmfx-chapterintrofx.o(.text);
        asm/bmfx_080200D8.o(.text);
        asm/bmfx-swingsword.o(.text);
        asm/bmfx-minefx.o(.text);
        asm/bmfx-niniantransform.o(.text);
        asm/map-menu.o(.text);
        src/faction.o(.text);
        src/gold.o(.text);
        asm/target-sel.o(.text);
        asm/unit-sprite.o(.text);
        asm/support.o(.text);
        asm/item-use.o(.text);
        asm/battle.o(.text);
        asm/trade-menu.o(.text);
        asm/trap.o(.text);
        asm/item-action.o(.text);
        asm/bmio.o(.text);
        asm/code1.o(.text);
        asm/code-ai.o(.text);
        asm/code-sio.o(.text);
        src/ui.o(.text);
        asm/ui-menu.o(.text);
        asm/map-sel.o(.text);
        asm/banim-ekrbattle.o(.text);
        asm/banim-ekrgauge.o(.text);
        asm/banim-efxbattle.o(.text);
        asm/code-banim1.o(.text);
        src/banim-main.o(.text);
        asm/code.o(.text);
        src/m4a_1.o(.text);
        src/m4a.o(.text);
        src/gbasvc.o(.text);
        src/gbasram.o(.text);
        *libgcc.a:_ashldi3.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_muldi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libc.a:memcpy.o(.text);
        *libc.a:memset.o(.text);
        *libc.a:sprintf.o(.text);
        *libc.a:strcpy.o(.text);
        *libc.a:strlen.o(.text);
        *libc.a:strstr.o(.text);
        *libc.a:vfprintf.o(.text);
        *libc.a:vsprintf.o(.text);
        *libc.a:wsetup.o(.text);
        *libc.a:dtoa.o(.text);
        *libc.a:fflush.o(.text);
        *libc.a:findfp.o(.text);
        *libc.a:freer.o(.text);
        *libc.a:fvwrite.o(.text);
        *libc.a:fwalk.o(.text);
        *libc.a:locale.o(.text);
        *libc.a:makebuf.o(.text);
        *libc.a:mallocr.o(.text);
        *libc.a:mbtowc_r.o(.text);
        *libc.a:memchr.o(.text);
        *libc.a:memmove.o(.text);
        *libc.a:mlock.o(.text);
        *libc.a:mprec.o(.text);
        *libc.a:s_isinf.o(.text);
        *libc.a:s_isnan.o(.text);
        *libc.a:sbrkr.o(.text);
        *libc.a:stdio.o(.text);
        *libc.a:strcmp.o(.text);
        *libc.a:syscalls.o(.text);
        *libc.a:writer.o(.text);
        *libc.a:callocr.o(.text);
        *libc.a:closer.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:fstatr.o(.text);
        *libc.a:libcfunc.o(.text);
        *libc.a:lseekr.o(.text);
        *libc.a:readr.o(.text);
        *libgcc.a:dp-bit.o(.text);
        *libgcc.a:fp-bit.o(.text);
        *libgcc.a:_lshrdi3.o(.text);
        *libgcc.a:_negdi2.o(.text);

        *(fake_glue);

        . = ALIGN(4); src/main.o(.rodata);
        . = ALIGN(4); src/interrupt.o(.rodata);
        . = ALIGN(4); src/random.o(.rodata);
        . = ALIGN(4); src/hardware.o(.rodata);
        . = ALIGN(4); src/move-data.o(.rodata);
        . = ALIGN(4); src/oam.o(.rodata);
        . = ALIGN(4); src/sound.o(.rodata);
        . = ALIGN(4); asm/rodata.o(.rodata);
        . = ALIGN(4); src/face.o(.rodata);
        . = ALIGN(4); src/talk.o(.rodata);
        . = ALIGN(4); src/msg.o(.rodata);
        . = ALIGN(4); asm/rodata.o(.rodata_1);
        . = ALIGN(4); src/unit.o(.rodata);
        . = ALIGN(4); asm/rodata.o(.rodata_1_2);
        . = ALIGN(4); src/m4a.o(.rodata);
        . = ALIGN(4); asm/rodata.o(.rodata_2);
        . = ALIGN(4); *libc.a:vfprintf.o(.rodata);
        . = ALIGN(4); *libc.a:dtoa.o(.rodata);
        . = ALIGN(4); *libc.a:impure.o(.rodata);
        . = ALIGN(4); *libc.a:locale.o(.rodata);
        . = ALIGN(4); *libc.a:mprec.o(.rodata);
        . = ALIGN(4); *libc.a:syscalls.o(.rodata);

        . = ALIGN(4); src/hardware.o(.data);
        . = ALIGN(4); src/sound.o(.data);
        . = ALIGN(4); src/proc.o(.data);
        . = ALIGN(4); asm/data.o(.data_0);
        . = ALIGN(4); src/sprite.o(.data);
        . = ALIGN(4); src/face.o(.data);
        . = ALIGN(4); src/talk.o(.data);
        . = ALIGN(4); asm/data.o(.data_0_1);
        . = ALIGN(4); src/talk-advance.o(.data);
        . = ALIGN(4); src/event.o(.data);
        . = ALIGN(4); asm/data.o(.data_0_2);
        . = ALIGN(4); src/sprite-anim.o(.data);
        . = ALIGN(4); src/game-ctrl.o(.data);
        . = ALIGN(4); src/msg.o(.data);
        . = ALIGN(4); asm/data.o(.data_0_3);
        . = ALIGN(4); src/bm.o(.data);
        . = ALIGN(4); asm/data.o(.data);
        . = ALIGN(4); src/player-phase.o(.data);
        . = ALIGN(4); asm/data.o(.data_1);
        . = ALIGN(4); src/bmfx-chapterintrofx.o(.data);
        . = ALIGN(4); asm/data.o(.data_1_1);
        . = ALIGN(4); src/sio_link_loader.o(.data);

        /* libc */
        . = ALIGN(4); *libc.a:impure.o(.data);
        . = ALIGN(4); *libc.a:locale.o(.data);
        . = ALIGN(4); *libc.a:mallocr.o(.data);

        /* garbage first then banim */
        . = ALIGN(4); asm/data.o(.data_2);
    }

    IWRAM __iwram_start (NOLOAD) : ALIGN(4)
    {
        . = ALIGN(4); src/random.o(.bss);
        . = ALIGN(4); src/hardware.o(.bss);
        . = ALIGN(4); src/oam.o(.bss);
        . = ALIGN(4); src/sound.o(.bss);
        . = ALIGN(4); src/talk.o(.bss);
        . = 0x000110;
        . = ALIGN(4); src/sprite-anim.o(.bss);
        . = 0x002258;
        . = ALIGN(4); src/gbasram.o(.bss);
        . = ALIGN(4); *libc.a:syscalls.o(.bss);
        . = ALIGN(4); *libgcc.a:dp-bit.o(.bss);
        . = ALIGN(4); *libgcc.a:fp-bit.o(.bss);
        . = ALIGN(4); *(bss.SoundMainRam);

        /* COMMON */
        . = 0x002860; gOamLoPutIt = .;
        . = 0x002870; gDispIo = .;
        . = 0x0028E0; IntrFuncTable = .;
        . = 0x002918; MapFloodCoreRamFunc = .;
        . = 0x00291C; gOamAffinePutId = .;
        . = 0x002920; PutOamHiRamFunc = .;
        . = 0x002924; gOnHBlankA = .;
        . = 0x002930; gOam = .;
        . = 0x002F30; DrawGlyphRamFunc = .;
        . = 0x002F34; gOamHiPutIt = .;
        . = 0x002F38; gOnHBlankB = .;
        . = 0x002F40; RamFuncArea = .;
        . = 0x003940; DecodeStringRamFunc = .;
        . = 0x003944; PutOamLoRamFunc = .;
        . = 0x003948; gOamAffinePutIt = .;
        . = 0x003950; IntrMainRam = .;
        . = 0x004150; MapFloodCoreStepRamFunc = .;
        . = 0x004190; gSpriteAllocIt = .;
        . = 0x0041C0; gFaces = .;
        . = 0x0041D0; gMutableUnitInfo = .;
        . = 0x0041E0; gWorkingMap = .;
        . = 0x0041F0; gMapFloodSquareBufB = .;
        . = 0x0043F0; gWorkingMovTable = .;
        . = 0x004490; gMapFloodSquareBufA = .;
        . = 0x004690; gActiveUnit = .;
        . = 0x0046A0; gMapFloodSt = .;
        . = 0x004830; gBanimDebugCurrentIndex = .;
        . = 0x004AE0; *(COMMON.gSoundInfo);
        . = 0x005A90; gMPlayInfo_SE4 = .;
        . = 0x005AD0; gMPlayInfo_SE5 = .;
        . = 0x005B10; gMPlayInfo_BGM1 = .;
        . = 0x005B50;
        . = ALIGN(4); *(COMMON.gMPlayJumpTable);
        . = ALIGN(4); *(COMMON.gCgbChans);
        . = 0x005CE0; gMPlayInfo_SE6 = .;
        . = 0x005D20; gMPlayInfo_BGM2 = .;
        . = 0x005D60; gMPlayInfo_SE1 = .;
        . = 0x005DA0; gMPlayInfo_SE3 = .;
        . = 0x005DE0; *(COMMON.gMPlayMemAccArea);
        . = 0x005DF0; gMPlayInfo_SE7 = .;
        . = 0x005E30; gMPlayInfo_SE2 = .;
        . = 0x005E70;
        . = ALIGN(4); *(COMMON.ReadSramFast);
        . = ALIGN(4); *(COMMON.VerifySramFast);
        . = ALIGN(4); errno = .; . = . + 4;
    }

    ewram_overlay_0 __ewram_start (NOLOAD) : ALIGN(4)
    {
        . = 0x001F70;
        . = ALIGN(4); src/bmfx-chapterintrofx.o(ewram_overlay_0);
    }

    ewram_overlay_banim __ewram_start (NOLOAD) : ALIGN(4)
    {
        . = 0x000000; gAnims = .;
        . = 0x000024; gAnimC01Blocking = .;
        . = 0x00005C; gpBanimModesLeft = .;
        . = 0x000060; gpBanimModesRight = .;
        . = 0x00F1C8; gBanimScrLeft = .;
        . = 0x017758; gEfxTeonoState = .;
        . = 0x01FAF8; gBanimDoneFlag = .;
        . = 0x01FB10; gpImgSheet = .;
    }

    ewram_data __ewram_start (NOLOAD) : ALIGN(4)
    {
        . = 0x020140; /* begin (before that is ewram overlay) */

        . = ALIGN(4); src/hardware.o(ewram_data);
        . = ALIGN(4); src/move-data.o(ewram_data);
        . = ALIGN(4); src/sound.o(ewram_data);
        . = ALIGN(4); src/proc.o(ewram_data);
        . = ALIGN(4); src/icon.o(ewram_data);
        . = ALIGN(4); src/debug_text.o(ewram_data);
        . = ALIGN(4); src/text.o(ewram_data);
        . = ALIGN(4); src/anime.o(ewram_data);
        . = ALIGN(4); src/sprite.o(ewram_data);
        . = ALIGN(4); src/face.o(ewram_data);
        . = ALIGN(4); src/eventscr.o(ewram_data);
        . = ALIGN(4); src/msg.o(ewram_data);
        . = ALIGN(4); src/util.o(ewram_data);
        . = ALIGN(4); src/bm.o(ewram_data);
        . = ALIGN(4); src/unit.o(ewram_data);
        . = ALIGN(4); src/map.o(ewram_data);

        . = 0x033E00; gWorkingMoveScr = .;

        . = 0x03DCEC; src/ui.o(ewram_data);

        . = 0x03E02C; gEkrDistanceType = .;

        . = 0x03E0B0; gBanimForceUnitChgDebug = .;

        . = 0x03EEA8;
        . = ALIGN(4); end = .;
    }

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
