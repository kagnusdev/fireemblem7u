#include "map.h"

// NOTE: data only

struct Vec2i EWRAM_DATA gBmMapSize = { 0 };

u8 ** EWRAM_DATA gBmMapUnit = NULL;
u8 ** EWRAM_DATA gBmMapTerrain = NULL;
u8 ** EWRAM_DATA gBmMapMovement = NULL;
u8 ** EWRAM_DATA gMapRange = NULL;
u8 ** EWRAM_DATA gMapFog = NULL;
u8 ** EWRAM_DATA gBmMapHidden = NULL;
u8 ** EWRAM_DATA gMapOther = NULL;

u8 ALIGNED(4) EWRAM_DATA gMapUnitBuf[MAP_BUFFER_SIZE] = { 0 };
u8 ALIGNED(4) EWRAM_DATA gMapTerrainBuf[MAP_BUFFER_SIZE] = { 0 };
// static u8 sMapMovementBuf[MAP_BUFFER_SIZE];
// static u8 sMapRangeBuf[MAP_BUFFER_SIZE];
u8 ALIGNED(4) EWRAM_DATA gMapFogBuf[MAP_BUFFER_SIZE] = { 0 };
u8 ALIGNED(4) EWRAM_DATA gMapHiddenBuf[MAP_BUFFER_SIZE] = { 0 };
u8 ALIGNED(4) EWRAM_DATA gMapOtherBuf[MAP_BUFFER_SIZE] = { 0 };

u16 EWRAM_DATA gTilesetInfo[TILESET_METATILES * 4 + (TILESET_METATILES + 1) / 2] = { 0 };
u16 EWRAM_DATA gMapMetatiles[MAP_BUFFER_SIZE] = { 0 };
