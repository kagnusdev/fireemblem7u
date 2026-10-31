#!/bin/sh

xxd fe7_us.gba > fe7_us.hex
xxd baserom.gba > baserom.hex
diff fe7_us.hex baserom.hex
rm fe7_us.hex baserom.hex

