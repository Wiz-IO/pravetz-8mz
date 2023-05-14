#pragma once

#ifdef __cplusplus
extern "C"
{
#endif

#include "user_config.h"
#include "board/board.h"
#include "board/lcd.h"
#include "common/ring/ring-buffer.h"
#include "bios.h"
#include "mos.h"
#include "ff.h"

    extern uint8_t MEM[0x10000];
    extern uint8_t AUX[0x10000];
    extern uint8_t MEM_RAM[MOS_BANKSIZE];
    extern uint8_t AUX_RAM[MOS_BANKSIZE];

    extern uint8_t *p_zp;
    extern uint8_t *p_read;
    extern uint8_t *p_write;
    extern uint8_t *p_current_bank_1;
    extern uint8_t *p_current_bank_2;
    extern uint8_t *p_read_bank_1;
    extern uint8_t *p_write_bank_1;
    extern uint8_t *p_read_bank_2;
    extern uint8_t *p_write_bank_2;

    typedef enum
    {
        S_TEXT = 0x0001,
        S_MIXED = 0x0002,
        S_HIRES = 0x0004,
        S_PAGE2 = 0x0008,
        S_80COL = 0x0010,
        S_ALTCH = 0x0020,
        S_80STORE = 0x0040,
        S_DHIRES = 0x0080
    } switches_e;
    extern uint32_t switches;

    void dump(const void *buffer, int len, int mod);

    unsigned char get_key();

    uint8_t *video_dma(uint32_t address);
    void video_init(void);
    void video_render(void);

    void audio_init();

    void disk_init(void);
    void disk_open(const char *disk_a, const char *disk_b);

    void cpu_init(rom_e bios, const char *disk_a, const char *disk_b);
    void cpu_run(void *arg);

    uint8_t mm_read_zp(uint32_t address);
    void mm_write_zp(uint32_t address, uint8_t value);
    uint8_t mm_read(uint32_t address);
    void mm_write(uint32_t address, uint8_t value);

    uint8_t mm_read_bank_1(uint32_t address);
    void mm_write_bank_1(uint32_t address, uint8_t value);
    uint8_t mm_read_bank_2(uint32_t address);
    void mm_write_bank_2(uint32_t address, uint8_t value);

    uint8_t mm_read_video_L1(uint32_t address);
    void mm_write_video_L1(uint32_t address, uint8_t value);
    uint8_t mm_read_video_L2(uint32_t address);
    void mm_write_video_L2(uint32_t address, uint8_t value);
    uint8_t mm_read_video_H1(uint32_t address);
    void mm_write_video_H1(uint32_t address, uint8_t value);
    uint8_t mm_read_video_H2(uint32_t address);
    void mm_write_video_H2(uint32_t address, uint8_t value);

    uint8_t io_read_00(uint32_t address);
    uint8_t io_read_FF(uint32_t address);
    void io_write_NC(uint32_t address, uint8_t value);

    uint8_t io_read_aux(uint32_t address);
    void io_write_aux(uint32_t address, uint8_t value);

    uint8_t io_read_bank(uint32_t address);
    void io_write_bank(uint32_t address, uint8_t value);

    uint8_t io_read_kbd(uint32_t address);
    uint8_t io_read_kbd_strobe(uint32_t address);
    void io_write_kbd_strobe(uint32_t address, uint8_t value);

    uint8_t io_read_audio(uint32_t address);
    void io_write_audio(uint32_t address, uint8_t value);

    uint8_t io_read_video(uint32_t address);
    void io_write_video(uint32_t address, uint8_t value);

    uint8_t io_read_disk(uint32_t address);
    void io_write_disk(uint32_t address, uint8_t value);

// clang-format off
#define IO_READ     {0xC000, 0xC00F, io_read_kbd},          /* KBD                  */ \
                    {0xC010, 0xC010, io_read_kbd_strobe},   /* KBD                  */ \
                    {0xC011, 0xC012, io_read_bank},         /* Banks                */ \
                    {0xC013, 0xC018, io_read_aux},          /* Aux                  */ \
                    {0xC019, 0xC019, io_read_FF},           /* FF                   */ \
                    {0xC01A, 0xC01F, io_read_video},        /* Video                */ \
                    {0xC020, 0xC02F, io_read_FF},           /* FF                   */ \
                    {0xC030, 0xC03F, io_read_audio},        /* Audio                */ \
                    {0xC040, 0xC04F, io_read_FF},           /* FF                   */ \
                    {0xC050, 0xC05F, io_read_video},        /* Video                */ \
                    {0xC060, 0xC060, io_read_FF},           /* FF                   */ \
                    {0xC061, 0xC063, io_read_00},           /* GameButtons (0==OFF) */ \
                    {0xC064, 0xC065, io_read_FF},           /* GameTimer            */ \
                    {0xC066, 0xC06F, io_read_FF},           /* FF                   */ \
                    {0xC070, 0xC070, io_read_FF},           /* GameTimer            */ \
                    {0xC071, 0xC07D, io_read_FF},           /* FF                   */ \
                    {0xC07E, 0xC07E, io_read_FF},           /* IOU                  */ \
                    {0xC07F, 0xC07F, io_read_video},        /* Video                */ \
                    {0xC080, 0xC08F, io_read_bank},         /* Banks                */ \
                    {0xC090, 0xC09F, io_read_FF},           /* PIC                  */ \
                    {0xC0A0, 0xC0CF, io_read_FF},           /* FF                   */ \
                    {0xC0D0, 0xC0DF, io_read_FF},           /* MassStor             */ \
                    {0xC0E0, 0xC0EF, io_read_disk},         /* Disk                 */ \
                    {0xC0F0, 0xC0FF, io_read_FF }           /* ClockIO              */

#define IO_WRITE    {0xC000, 0xC00B, io_write_aux},         /* Aux                  */ \
                    {0xC00C, 0xC00F, io_write_video},       /* Video                */ \
                    {0xC010, 0xC01F, io_write_kbd_strobe},  /* KBD                  */ \
                    {0xC020, 0xC02F, io_write_NC},          /* --                   */ \
                    {0xC030, 0xC03F, io_write_audio},       /* Audio                */ \
                    {0xC040, 0xC04F, io_write_NC},          /* --                   */ \
                    {0xC050, 0xC05F, io_write_video},       /* Video (TTL)          */ \
                    {0xC060, 0xC07D, io_write_NC},          /* --                   */ \
                    {0xC07E, 0xC07F, io_write_NC},          /* IOU                  */ \
                    {0xC080, 0xC08F, io_write_bank},        /* Banks                */ \
                    {0xC090, 0xC09F, io_write_NC},          /* PIC                  */ \
                    {0xC0A0, 0xC0CF, io_write_NC},          /* --                   */ \
                    {0xC0D0, 0xC0DF, io_write_NC},          /* MassStor             */ \
                    {0xC0E0, 0xC0EF, io_write_disk},        /* Disk                 */ \
                    {0xC0F0, 0xC0FF, io_write_NC}           /* ClockIO              */ \

#ifdef __cplusplus
}
#endif