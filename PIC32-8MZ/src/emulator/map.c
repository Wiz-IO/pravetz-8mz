#include "map.h"

uint8_t __attribute__((aligned(16))) MEM[0x10000] = {0};
uint8_t __attribute__((aligned(16))) AUX[0x10000] = {0};
uint8_t __attribute__((aligned(16))) MEM_RAM[MOS_BANKSIZE] = {0};
uint8_t __attribute__((aligned(16))) AUX_RAM[MOS_BANKSIZE] = {0};

uint8_t *p_zp;
uint8_t *p_read;
uint8_t *p_write;

uint8_t *p_current_bank_1; /* 0xD000-0xFFFF = p_ROM | p_AUX */
uint8_t *p_current_bank_2; /* 0xD000-0xDFFF = MEM_RAM | p_AUX */
uint8_t *p_read_bank_1;    /* p_current_bank_1 | p_ROM */
uint8_t *p_write_bank_1;   /* p_current_bank_1 | p_ROM */
uint8_t *p_read_bank_2;    /* p_current_bank_1 | p_current_bank_2 | p_ROM */
uint8_t *p_write_bank_2;   /* p_current_bank_1 | p_current_bank_2 | p_ROM */

///////////////////////////////////////////////////////////////////////////////

uint8_t *video_dma(uint32_t address) // render data
{
    return &MEM[address]; // ???
}

uint8 *default_mem_dma(int page, uint32 address) { return (page) ? &AUX[address] : &MEM[address]; }

static uint8_t default_bank_readbyte(uint32_t address) { return MEM[address]; }

static void default_bank_writebyte(uint32_t address, uint8_t value) { MEM[address] = value; }

///////////////////////////////////////////////////////////////////////////////

uint8_t io_read_00(uint32_t address)
{
    // printf("[00] %04X\n", address);
    return 0;
}

uint8_t io_read_FF(uint32_t address)
{
    // printf("[FF] %04X\n", address);
    return 0xFF;
}

void io_write_NC(uint32_t address, uint8_t value)
{
    // printf("[NC] %04X\n", address);
}

///////////////////////////////////////////////////////////////////////////////

uint8_t io_read_bank(uint32_t address)
{
    // printf("[BK] %04X\n", address);

    static uint32_t last_slot = 0;
    static uint8_t RdBnk2 = 0x8D;

    uint8_t v = 0xFF;
    /* keep track of last bank accessed */
    if (address >= 0xC080 && address <= 0xC083)
        RdBnk2 = 0x8D;
    if (address >= 0xC088 && address <= 0xC08B)
        RdBnk2 = 0x0D;
    /* default to write-protected RAM */
    p_write_bank_1 = p_write_bank_2 = NULL; // ROM

    switch (address)
    {
    case 0xC011:
        v = RdBnk2;
        break;
    case 0xC012:
        v = (p_read_bank_1 == MEM) ? 0x0D : 0x8D;
        break;
    case 0xC080:
    case 0xC083:
    case 0xC084:
    case 0xC087:
        p_read_bank_1 = p_current_bank_1;
        p_read_bank_2 = p_current_bank_2;
        break;
    case 0xC088:
    case 0xC08B:
    case 0xC08C:
    case 0xC08F:
        p_read_bank_1 = p_read_bank_2 = p_current_bank_1;
        break;
    case 0xC081:
    case 0xC082:
    case 0xC085:
    case 0xC086:
    case 0xC089:
    case 0xC08A:
    case 0xC08D:
    case 0xC08E:
        p_read_bank_1 = p_read_bank_2 = MEM;
        break;
    }
    /* check for double read */
    if (last_slot == address)
    {
        /* write-enable RAM */
        switch (address)
        {
        case 0xC081:
        case 0xC083:
            p_write_bank_1 = p_current_bank_1;
            p_write_bank_2 = p_current_bank_2;
            break;
        case 0xC089:
        case 0xC08B:
            p_write_bank_1 = p_write_bank_2 = p_current_bank_1;
            break;
        }
    }
    last_slot = address; /* keep last access */
    return v;
}

void io_write_bank(uint32_t address, uint8_t value) { io_read_bank(address); }

static uint8_t SlotCxROM;
static uint8_t SlotC3ROM;

uint8_t io_read_aux(uint32_t address)
{
    // printf("[AU] %04X R\n", address);
    switch (address)
    {
    case 0xC015: /* Read SLOTCXROM switch */
        return SlotCxROM;
    case 0xC017: /* Read SLOTC3ROM switch */
        return SlotC3ROM;

    case 0xC013: /* RdRAMRd: bit 7 clear = read main 48K, set = read aux 48K */
        return (p_read == AUX) ? 0x8D : 0xD;
    case 0xC014: /* RdRAMWrt: bit 7 clear = write main 48K, set = write aux 48K */
        return (p_write == AUX) ? 0x8D : 0xD;
    case 0xC016: /* RdAltZP: bit 7 clear = main page 0 & 1, set = aux page 0 & 1 */
        return (p_zp == AUX) ? 0x8D : 0xD;
    case 0xC018: /* Rd80Store */
        return (switches & S_80STORE) ? 0x8D : 0xD;
    }
    return 0xFF;
}

void io_write_aux(uint32_t address, uint8_t value)
{
    // printf("[AU] %04X W\n", address);
    switch (address)
    {
    case 0xC000: /* 80Store Off: Enable RAMRd and RAMWrt */
        switches &= ~S_80STORE;
        break;
    case 0xC001: /* 80Store On: */
        switches |= S_80STORE;
        break;
    case 0xC002: /* RAMRd Off: Read main 48K RAM */
        if (!(switches & S_80STORE))
            p_read = MEM;
        break;
    case 0xC003: /* RAMRd On: Read aux 48K RAM */
        if (!(switches & S_80STORE))
            p_read = AUX;
        break;
    case 0xC004: /* RAMWrt Off: Write main 48K RAM */
        if (!(switches & S_80STORE))
            p_write = MEM;
        break;
    case 0xC005: /* RAMWrt On: Write aux 48K RAM */
        if (!(switches & S_80STORE))
            p_write = AUX;
        break;

    case 0xC006: /* SLOTCXROM Off */
        SlotCxROM = 0x0D;
        // CurSlotROMSeg = MainSeg;
        break;
    case 0xC007: /* SLOTCXROM On */
        SlotCxROM = 0x8D;
        /* only allow slot ROM changes on a //e */
        // if (ExpSlotSeg == ROMSeg) CurSlotROMSeg = ROMSeg;
        break;

    case 0xC008: /* AZP Off: use main bank page 0 & 1 */
        if (p_read_bank_1 == p_current_bank_1)
            p_read_bank_1 = MEM;
        if (p_write_bank_1 == p_current_bank_1)
            p_write_bank_1 = MEM;
        if (p_read_bank_2 == p_current_bank_2)
            p_read_bank_2 = MEM_RAM;
        if (p_write_bank_2 == p_current_bank_2)
            p_write_bank_2 = MEM_RAM;
        p_current_bank_1 = MEM;
        p_current_bank_2 = MEM_RAM;
        p_zp = MEM;
        break;
    case 0xC009: /* AZP On: use aux bank page 0 & 1 */
        if (p_read_bank_1 == p_current_bank_1)
            p_read_bank_1 = AUX;
        if (p_write_bank_1 == p_current_bank_1)
            p_write_bank_1 = AUX;
        if (p_read_bank_2 == p_current_bank_2)
            p_read_bank_2 = AUX_RAM;
        if (p_write_bank_2 == p_current_bank_2)
            p_write_bank_2 = AUX_RAM;
        p_current_bank_1 = AUX;
        p_current_bank_2 = AUX_RAM;
        p_zp = AUX;
        break;

    case 0xC00A: /* SLOTC3ROM Off */
        SlotC3ROM = 0x0D;
        break;
    case 0xC00B: /* SLOTC3ROM On */
        SlotC3ROM = 0x8D;
        break;
    }
}

///////////////////////////////////////////////////////////////////////////////

uint8_t mm_read_zp(uint32_t address) { return p_zp[address]; }

void mm_write_zp(uint32_t address, uint8_t value) { p_zp[address] = value; }

uint8_t mm_read(uint32_t address) { return p_read[address]; }

void mm_write(uint32_t address, uint8_t value) { p_write[address] = value; }

uint8_t mm_read_bank_1(uint32_t address) { return (p_read_bank_1) ? p_read_bank_1[address] : MEM[address]; }

void mm_write_bank_1(uint32_t address, uint8_t value)
{
    if (p_write_bank_1)
        p_write_bank_1[address] = value;
}

uint8_t mm_read_bank_2(uint32_t address) { return (p_read_bank_2) ? p_read_bank_2[address] : MEM[address]; }

void mm_write_bank_2(uint32_t address, uint8_t value)
{
    if (p_write_bank_2)
        p_write_bank_2[address] = value;
}

///////////////////////////////////////////////////////////////////////////////

void cpu_init(rom_e rom, const char *disk_a, const char *disk_b)
{
    memset(&MEM[0xC000], 0xFF, MOS_BANKSIZE);

    bank_readbyte = default_bank_readbyte;
    bank_writebyte = default_bank_writebyte;
    mem_dma = default_mem_dma;

    bios_init(rom, MEM);

    p_read = p_write = p_zp = p_read_bank_1 = p_current_bank_1 = p_current_bank_2 = p_read_bank_2 = MEM;
    p_write_bank_1 = p_write_bank_2 = NULL; // ROM

    disk_open(disk_a, disk_b);

    mos_context ctx;
    mos_getcontext(&ctx);
    for (int i = 0; i < 16; i++)
        ctx.mem_page[i] = &MEM[i * MOS_BANKSIZE];
    ctx.read_handler = (memread_t *)bios->read;
    ctx.write_handler = (memwrite_t *)bios->write;
    mos_setcontext(&ctx);
}

void cpu_run(void *arg)
{
    audio_init();
    video_init();
    mos_reset();
    while (1)
    {
        mos_execute(1); // n cycles
        video_render();
    }
}