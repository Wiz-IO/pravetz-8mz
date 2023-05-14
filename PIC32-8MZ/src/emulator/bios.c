#include "ROM/ROM_00.h" // APPLE ][
#include "ROM/ROM_82.h"
#include "ROM/ROM_8M.h"
#include "ROM/ROM_8A.h"
//#include "ROM/ROM_8C.h"
#include "ROM/CHARSET_82.h"
#include "ROM/CHARSET_8M.h"
#include "ROM/CHARSET_8A.h"
//#include "ROM/CHARSET_8C.h"
#include "bios.h"
#include "mos.h"
#include <stddef.h>
#include <stdint.h>
#include <string.h>

extern void map82_init(void);
extern const memread_t MAP_82_READ[];
extern const memwrite_t MAP_82_WRITE[];

extern void map8M_init(void);
extern const memread_t MAP_8M_READ[];
extern const memwrite_t MAP_8M_WRITE[];

extern void map8A_init(void);
extern const memread_t MAP_8A_READ[];
extern const memwrite_t MAP_8A_WRITE[];

static const BIOS_T ROMS[] = {
    {
        .pc = PC_82,
        .rom = ROM_82,
        .rom_size = ROM_82_SIZE,
        .rom_address = ROM_82_ADDRESS,
        .charset_size = CHARSET_82_SIZE,
        .charset = CHARSET_82,
        .init = map82_init,
        .read = (void *)&MAP_82_READ,
        .write = (void *)&MAP_82_WRITE,
    },
    {
        .pc = PC_8M,
        .rom = ROM_8M,
        .rom_size = ROM_8M_SIZE,
        .rom_address = ROM_8M_ADDRESS,
        .charset_size = CHARSET_82_SIZE,
        .charset = CHARSET_82,
        .init = map8M_init,
        .read = (void *)&MAP_8M_READ,
        .write = (void *)&MAP_8M_WRITE,
    },
    {
        .pc = PC_8A,
        .rom = ROM_8A,
        .rom_size = ROM_8A_SIZE,
        .rom_address = ROM_8A_ADDRESS,
        .charset_size = CHARSET_8A_SIZE,
        .charset = CHARSET_8A,
        .init = map8M_init,
        .read = (void *)&MAP_8A_READ,
        .write = (void *)&MAP_8A_WRITE,
    },  
};

BIOS_T *bios = NULL;

unsigned char *bios_init(rom_e rom, unsigned char *dst)
{
    bios = (BIOS_T *)&ROMS[rom];
    unsigned char *p = &dst[bios->rom_address];
    memcpy(p, bios->rom, bios->rom_size);
    bios->init();
    return p;
}
