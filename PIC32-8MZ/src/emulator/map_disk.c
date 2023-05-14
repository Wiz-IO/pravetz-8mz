#include "map.h"

/* Helps with the bit fiddling necessary to extract the bottom two bits during the 256 - 342 byte nibblize. */

static const uint8_t tab1[] = {
    0x00, 0x08, 0x04, 0x0C, 0x20, 0x28, 0x24, 0x2C,
    0x10, 0x18, 0x14, 0x1C, 0x30, 0x38, 0x34, 0x3C,
    0x80, 0x88, 0x84, 0x8C, 0xA0, 0xA8, 0xA4, 0xAC,
    0x90, 0x98, 0x94, 0x9C, 0xB0, 0xB8, 0xB4, 0xBC,
    0x40, 0x48, 0x44, 0x4C, 0x60, 0x68, 0x64, 0x6C,
    0x50, 0x58, 0x54, 0x5C, 0x70, 0x78, 0x74, 0x7C,
    0xC0, 0xC8, 0xC4, 0xCC, 0xE0, 0xE8, 0xE4, 0xEC,
    0xD0, 0xD8, 0xD4, 0xDC, 0xF0, 0xF8, 0xF4, 0xFC};

/* Translates to "disk bytes" */

static const uint8_t tab2[] = {
    0x96, 0x97, 0x9A, 0x9B, 0x9D, 0x9E, 0x9F, 0xA6,
    0xA7, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF, 0xB2, 0xB3,
    0xB4, 0xB5, 0xB6, 0xB7, 0xB9, 0xBA, 0xBB, 0xBC,
    0xBD, 0xBE, 0xBF, 0xCB, 0xCD, 0xCE, 0xCF, 0xD3,
    0xD6, 0xD7, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE,
    0xDF, 0xE5, 0xE6, 0xE7, 0xE9, 0xEA, 0xEB, 0xEC,
    0xED, 0xEE, 0xEF, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6,
    0xF7, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF};

/* Dos 3.3 to physical sector conversion */

static const uint8_t phys[] = {
    0x00, 0x0D, 0x0B, 0x09, 0x07, 0x05, 0x03, 0x01,
    0x0E, 0x0C, 0x0A, 0x08, 0x06, 0x04, 0x02, 0x0F};

#define DISKS 2

static uint8_t sect_buf[DISKS][1024];
static uint8_t *sectp = NULL;
static uint8_t *sect_point[DISKS] = {NULL, NULL};
static uint8_t write_reg;
static int write_mode = 0;
static int write_prot[DISKS] = {1, 1};
static int cur_track[DISKS] = {0, 0};
static int sect_pos[DISKS];

static int drive = 0;
static FIL disk[DISKS];

#define GAP 0x7F; /* data gap byte */

/* 4 by 4 nibble encoding macros */
#define nib1(a) (((a) >> 1) | 0xAA)
#define nib2(a) ((a) | 0xAA)
#define denib(a, b) (((((a)&0x55) << 1) & 0xFF) | ((b)&0x55))

static void encode_data(int track, int sector);

static void step_motor(unsigned int address)
{
    static int mag[2][4] = {{0, 0, 0, 0}, {0, 0, 0, 0}},
               pmag[2][4] = {{0, 0, 0, 0}, {0, 0, 0, 0}},
               ppmag[2][4] = {{0, 0, 0, 0}, {0, 0, 0, 0}},
               pnum[2] = {0, 0},
               ppnum[2] = {0, 0},
               track_pos[2] = {0, 0};

    static int prev_track[2] = {0, 0};
    int magnet_number;

    address &= 7;
    magnet_number = address >> 1;

    ppmag[drive][ppnum[drive]] = pmag[drive][ppnum[drive]];
    ppnum[drive] = pnum[drive];

    pmag[drive][pnum[drive]] = mag[drive][pnum[drive]];
    pnum[drive] = magnet_number;

    if ((address & 1) == 0)
    {
        mag[drive][magnet_number] = 0;
    }
    else
    {
        if (ppmag[drive][(magnet_number + 1) & 3])
        {
            track_pos[drive]--;
            if (track_pos[drive] < 0)
            {
                track_pos[drive] = 0;
                if (drive)
                {
                    // printf("-- recal d2\n");
                }
                else
                {
                    // printf("-- recal d1\n");
                }
            }
        }

        if (ppmag[drive][(magnet_number - 1) & 3])
        {
            track_pos[drive]++;
            if (track_pos[drive] > 140)
                track_pos[drive] = 140;
        }
        mag[drive][magnet_number] = 1;
    }

    cur_track[drive] = (track_pos[drive] + 1) / 2;
    if (cur_track[drive] != prev_track[drive])
    {
        sectp[drive] = 0; /* recompute sector if head moves  -Wint-conversion */
        sect_pos[drive] = 0;
        prev_track[drive] = cur_track[drive];
    }
}

static void setup_sector(int track, int sector)
{
    int checksum;
    int physical_sector;
    char s[50];
    int i;

    physical_sector = phys[sector];

    sectp = sect_buf[drive];

    for (i = 0; i < 16; i++)
        *sectp++ = GAP;

    *sectp++ = 0xD5; /* address header */
    *sectp++ = 0xAA;
    *sectp++ = 0x96;

    *sectp++ = 0xFF; /* disk volume 254 */
    *sectp++ = 0xFE;

    *sectp++ = nib1(track);
    *sectp++ = nib2(track);

    *sectp++ = nib1(physical_sector);
    *sectp++ = nib2(physical_sector);

    checksum = 254 ^ track ^ physical_sector;
    *sectp++ = nib1(checksum);
    *sectp++ = nib2(checksum);

    *sectp++ = 0xDE; /* address trailer */
    *sectp++ = 0xAA;

    for (i = 0; i < 8; i++)
        *sectp++ = GAP;

    *sectp++ = 0xD5; /* data header */
    *sectp++ = 0xAA;
    *sectp++ = 0xAD;

    encode_data(track, sector); /* nibblized data */

    *sectp++ = 0xDE; /* data trailer */
    *sectp++ = 0xAA;
    *sectp++ = 0xEB;

    *sectp = '\0';           /* ending mark for our use */
    sectp = sect_buf[drive]; /* start reading at beginning */
}

static void raw_disk_write() {}

static void read_disk(int track, int sector, uint8_t *buf)
{
    int block;
    block = track * 16 + sector;
    f_lseek(&disk[drive], block * 256);
    unsigned int bytesRead;
    int res = f_read(&disk[drive], buf, 256, (UINT *)&bytesRead);
    if (res)
    {
        printf("[ERROR] DISK READ\n");
        disk[drive].err = FR_DISK_ERR;
    }
    else
    {
        LED_R_TGL();
    }
}

static void write_disk(int track, int sector, uint8_t *buf) {}

static void encode_data(int track, int sector)
{
    uint8_t buf[344];
    uint8_t *one;
    uint8_t *bump;
    uint8_t *two;
    uint8_t *three;
    uint8_t *dest;
    int i;
    read_disk(track, sector, &buf[86]);
    buf[342] = 0;
    buf[343] = 0;
    dest = buf;
    one = &buf[86];
    two = &buf[86 + 0x56];
    bump = two;
    three = &buf[86 + 0xAC];
    do
    {
        i = (*one++ & 0x03) |
            ((*two++ & 0x03) << 2) | ((*three++ & 0x03) << 4);
        *dest++ = tab1[i];
    } while (one != bump);
    sectp[0] = buf[0];
    for (i = 1; i <= 342; i++)
        sectp[i] = buf[i - 1] ^ buf[i];
    for (i = 0; i <= 342; i++)
        sectp[i] = tab2[sectp[i] >> 2];
    sectp = &sectp[343];
}

///////////////////////////////////////////////////////////////////////////////

#if 1
static const char ROM_DISK2[] =
    "\xA2\x20\xA0\x00\xA2\x03\x86\x3C\x8A\x0A\x24\x3C\xF0\x10\x05\x3C"
    "\x49\xFF\x29\x7E\xB0\x08\x4A\xD0\xFB\x98\x9D\x56\x03\xC8\xE8\x10"
    "\xE5\x20\x58\xFF\xBA\xBD\x00\x01\x0A\x0A\x0A\x0A\x85\x2B\xAA\xBD"
    "\x8E\xC0\xBD\x8C\xC0\xBD\x8A\xC0\xBD\x89\xC0\xA0\x50\xBD\x80\xC0"
    "\x98\x29\x03\x0A\x05\x2B\xAA\xBD\x81\xC0\xA9\x56\xA9\x00\xEA\x88" // FIX THIS  x20\xA8\xFC\x88
    "\x10\xEB\x85\x26\x85\x3D\x85\x41\xA9\x08\x85\x27\x18\x08\xBD\x8C"
    "\xC0\x10\xFB\x49\xD5\xD0\xF7\xBD\x8C\xC0\x10\xFB\xC9\xAA\xD0\xF3"
    "\xEA\xBD\x8C\xC0\x10\xFB\xC9\x96\xF0\x09\x28\x90\xDF\x49\xAD\xF0"
    "\x25\xD0\xD9\xA0\x03\x85\x40\xBD\x8C\xC0\x10\xFB\x2A\x85\x3C\xBD"
    "\x8C\xC0\x10\xFB\x25\x3C\x88\xD0\xEC\x28\xC5\x3D\xD0\xBE\xA5\x40"
    "\xC5\x41\xD0\xB8\xB0\xB7\xA0\x56\x84\x3C\xBC\x8C\xC0\x10\xFB\x59"
    "\xD6\x02\xA4\x3C\x88\x99\x00\x03\xD0\xEE\x84\x3C\xBC\x8C\xC0\x10"
    "\xFB\x59\xD6\x02\xA4\x3C\x91\x26\xC8\xD0\xEF\xBC\x8C\xC0\x10\xFB"
    "\x59\xD6\x02\xD0\x87\xA0\x00\xA2\x56\xCA\x30\xFB\xB1\x26\x5E\x00"
    "\x03\x2A\x5E\x00\x03\x2A\x91\x26\xC8\xD0\xEE\xE6\x27\xE6\x3D\xA5"
    "\x3D\xCD\x00\x08\xA6\x2B\x90\xDB\x4C\x01\x08\x00\x00\x00\x00\x00";
#endif

void disk_init(void)
{
    memcpy(mem_dma(0, 0xC600), ROM_DISK2, 256);
    disk[0].err = FR_DISK_ERR;
    disk[1].err = FR_DISK_ERR;
    printf("[DISK] ROM LOADED\n");
}

void disk_open(const char *disk_a, const char *disk_b)
{
    int res = -1;
    disk[0].err = FR_DISK_ERR;
    disk[1].err = FR_DISK_ERR;
    if (disk_b)
    {
        res = f_open(&disk[1], disk_b, FA_READ);
        if (res)
        {
            printf("[ERROR] DISK OPEN B\n");
        }
        else
        {
            disk[1].err = FR_OK;
            printf("[DISK] B: %s\n", disk_b);
        }
    }

    if (disk_a)
    {
        res = f_open(&disk[0], disk_a, FA_READ);
        if (res)
        {
            printf("[ERROR] DISK OPEN A\n");
        }
        else
        {
            printf("[DISK] A: %s\n", disk_a);
            disk_init();
            disk[0].err = FR_OK;
        }
    }
}

static uint8_t disk_io(uint32_t address, uint8_t value)
{
    // printf("[DISK] IO:%04X\n", address);
    address &= 0xF;
    switch (address)
    {
    case 0x0: /* Phase 0 off */
    case 0x1: /* Phase 0 on */
    case 0x2: /* Phase 1 off */
    case 0x3: /* Phase 1 on */
    case 0x4: /* Phase 2 off */
    case 0x5: /* Phase 2 on */
    case 0x6: /* Phase 3 off */
    case 0x7: /* Phase 3 on */
        step_motor(address);
        break;

    case 0x8: /* Drive off */
        LED_R_OFF();
        break;

    case 0x9: /* Drive on */
        // LR_ON();
        break;

    case 0xA: /* Select drive 1 */
        sect_point[drive] = sectp;
        drive = 0;
        sectp = sect_point[0];
        break;

    case 0xB: /* Select drive 2 */
        sect_point[drive] = sectp;
        drive = 1;
        sectp = sect_point[1];
        break;

    case 0xC: /* Shift data register */
        if (disk[drive].err)
        {
            printf("[ERROR] DISK %d\n", drive);
            return (255); // NO DISK
        }
        if (write_mode)
        {
            raw_disk_write();
            return (0);
        }
        if (sectp == NULL || *sectp == '\0')
        {
            sect_pos[drive]--;
            if (sect_pos[drive] < 0)
                sect_pos[drive] = 15;
            setup_sector(cur_track[drive], sect_pos[drive]);
        }
        return (*sectp++); // read data

    case 0xD: /* Load data register */
        write_reg = value;
        break;

    case 0xE: /* Read mode */
        write_mode = 0;
        return (write_prot[drive] ? 0xFF : 0);

    case 0xF: /* Write mode */
        write_mode = 1;
        break;
    }

    return 0xFF;
}

uint8_t io_read_disk(uint32_t address) { return disk_io(address, 0); }

void io_write_disk(uint32_t address, uint8_t value) { disk_io(address, value); }

///////////////////////////////////////////////////////////////////////////////