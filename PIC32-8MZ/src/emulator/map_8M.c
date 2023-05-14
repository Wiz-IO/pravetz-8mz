#include "map.h"

const memread_t MAP_8M_READ[] = {
    {0xD000, 0xDFFF, mm_read_bank_2},
    {0xE000, 0xFFFF, mm_read_bank_1},

    IO_READ,
    LAST_MEMORY_HANDLER,
};

const memwrite_t MAP_8M_WRITE[] = {
    {0xD000, 0xDFFF, mm_write_bank_2},
    {0xE000, 0xFFFF, mm_write_bank_1},

    IO_WRITE,
    LAST_MEMORY_HANDLER,
};

static uint8_t map8M_mem_readbyte(uint32_t address)
{
    for (memread_t *mr = (memread_t *)MAP_8M_READ; mr->min_range != 0xFFFFFFFF; mr++)
    {
        if (address >= mr->min_range && address <= mr->max_range)
            return mr->read_func(address);
    }
    return MEM[address];
}

static void map8M_mem_writebyte(uint32_t address, uint8_t value)
{
    for (memwrite_t *mw = (memwrite_t *)MAP_8M_WRITE; mw->min_range != 0xFFFFFFFF; mw++)
    {
        if (address >= mw->min_range && address <= mw->max_range)
        {
            mw->write_func(address, value);
            return;
        }
    }
    MEM[address] = value;
}

void map8M_init(void)
{
    mem_readbyte = map8M_mem_readbyte;
    mem_writebyte = map8M_mem_writebyte;
}