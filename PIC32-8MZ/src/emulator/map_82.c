#include "map.h"

#if 0
//void UpdateLoRes(uint32_t address, uint8_t value);
static void mm_write_video_lo(uint32_t address, uint8_t value)
{
    MEM[address] = value;
    // UpdateLoRes(address, value);
}
#endif

const memread_t MAP_82_READ[] = {
#if 0
    {0xC000, 0xC000, io_read_kbd},        // KBD
    {0xC001, 0xC00F, io_read_FF},         // FF
    {0xC010, 0xC010, io_read_kbd_strobe}, // KBD
    {0xC011, 0xC02F, io_read_FF},         // FF
    {0xC030, 0xC03F, io_read_FF},         // Audio
    {0xC040, 0xC04F, io_read_FF},         // FF
    {0xC050, 0xC05F, io_read_video},      // Video
    {0xC060, 0xC062, io_read_00},         // Buttons
    {0xC062, 0xC0DF, io_read_FF},         // FF
    {0xC0E0, 0xC0EF, io_read_disk},       // Disk
    {0xC0F0, 0xC0FF, io_read_FF},         // ClockIO
#else
    IO_READ,
#endif
    LAST_MEMORY_HANDLER,
};

const memwrite_t MAP_82_WRITE[] = {
    //{0x0400, 0x07FF, mm_write_video_lo},
#if 0
    {0xC000, 0xC00F, io_write_NC},         // --
    {0xC010, 0xC01F, io_write_kbd_strobe}, // KBD
    {0xC020, 0xC02F, io_write_NC},         // --
    {0xC030, 0xC03F, io_write_NC},         // Audio
    {0xC040, 0xC04F, io_write_NC},         // --
    {0xC050, 0xC05F, io_write_video},      // Video
    {0xC060, 0xC0DF, io_write_NC},         // --
    {0xC0E0, 0xC0EF, io_write_disk},       // Disk
    {0xC0F0, 0xC0FF, io_write_NC},         // ClockIO
#else
    IO_WRITE,
#endif
    LAST_MEMORY_HANDLER,
};

static uint8_t map82_mem_readbyte(uint32_t address)
{
    for (memread_t *mr = (memread_t *)MAP_82_READ; mr->min_range != 0xFFFFFFFF; mr++)
    {
        if (address >= mr->min_range && address <= mr->max_range)
            return mr->read_func(address);
    }
    return MEM[address];
}

static void map82_mem_writebyte(uint32_t address, uint8_t value)
{
    for (memwrite_t *mw = (memwrite_t *)MAP_82_WRITE; mw->min_range != 0xFFFFFFFF; mw++)
    {
        if (address >= mw->min_range && address <= mw->max_range)
        {
            mw->write_func(address, value);
            return;
        }
    }
    MEM[address] = value;
}

void map82_init(void)
{
    mem_readbyte = map82_mem_readbyte;
    mem_writebyte = map82_mem_writebyte;
}