#ifndef MAP_H
#define MAP_H

#include "prelude.h"

#define MAP_BUFFER_SIZE 0x7B8
#define TILESET_METATILES 0x400

extern struct Vec2i gBmMapSize;

extern u8 ** gBmMapUnit;
extern u8 ** gBmMapTerrain;
extern u8 ** gBmMapMovement;
extern u8 ** gMapRange;
extern u8 ** gMapFog;
extern u8 ** gBmMapHidden;
extern u8 ** gMapOther;

#define gMapRangeSigned ((i8 **)gMapRange)
#define gBmMapMovementSigned ((i8 **)gBmMapMovement)

#endif // MAP_H
