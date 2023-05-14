#include "map.h"

#define VIDEO_W 280
#define VIDEO_H 192

#define SCREEN_LINE_OFFSET 0x80
#define VIDEO_SEGMENT_OFFSET 40

#define TEXT_BYTES 8
#define TEXT_BYTES_MASK 7

uint32_t switches = S_TEXT;

#ifdef LCD

#define PUT_PUXEL(BUFFER, COLOR) *BUFFER++ = COLOR

#define PAL_WHITE LCD_WHITE
#define PAL_BLACK LCD_BLACK

static const uint16_t hcolor[] = {
    LCD_BLACK,
    LCD_RGB565(221, 34, 221), // Purple
    LCD_RGB565(17, 221, 0),   // Green
    LCD_RGB565(17, 221, 0),   // Green
    LCD_RGB565(221, 34, 221), // Purple
    LCD_RGB565(34, 34, 255),  // Medium Blue ?
    LCD_RGB565(255, 102, 0),  // Orange
    LCD_RGB565(255, 102, 0),  // Orange
    LCD_RGB565(34, 34, 255),  // Medium Blue ?
    LCD_WHITE,
};

static const uint16_t lcolor[16] = {
    LCD_RGB565(0, 0, 0),       // Black
    LCD_RGB565(221, 0, 51),    // Magenta
    LCD_RGB565(0, 0, 153),     // Dark Blue
    LCD_RGB565(221, 34, 221),  // Purple
    LCD_RGB565(0, 119, 34),    // Dark Green
    LCD_RGB565(85, 85, 85),    // Grey 1
    LCD_RGB565(34, 34, 255),   // Medium Blue
    LCD_RGB565(102, 170, 255), // Light Blue
    LCD_RGB565(136, 85, 0),    // Brown
    LCD_RGB565(255, 102, 0),   // Orange
    LCD_RGB565(170, 170, 170), // Grey 2
    LCD_RGB565(255, 153, 136), // Pink
    LCD_RGB565(17, 221, 0),    // Green
    LCD_RGB565(255, 255, 0),   // Yellow
    LCD_RGB565(68, 255, 153),  // Aquamarine
    LCD_RGB565(255, 255, 255), // White
};

#else

#define PUT_PUXEL(BUFFER, COLOR) \
    do                           \
    {                            \
        *BUFFER++ = COLOR;       \
        *BUFFER++ = COLOR;       \
        *BUFFER++ = COLOR;       \
        *BUFFER++ = COLOR;       \
    } while (0)

#define PAL_WHITE 7
#define PAL_BLACK 0

static const uint8_t hcolor[10] = {
    PAL_BLACK, // 0 BLASK
    5,         // 1 Purple
    2,         // 2 Green
    2,         // 3 Green
    5,         // 4 Purple
    6,         // 5 Medium Blue ?
    3,         // 6 Orange
    3,         // 7 Orange
    6,         // 8 Medium Blue ?
    PAL_WHITE, // 9 WHITE
};

static const uint8_t lcolor[16] = {
    PAL_BLACK, // 00 Black
    1,         // 01 Magenta
    2,         // 02 Dark Blue
    3,         // 03 Purple
    4,         // 04 Dark Green
    5,         // 05 Grey 1
    6,         // 06 Medium Blue
    1,         // 07 Light Blue
    2,         // 08 Brown
    3,         // 09 Orange
    4,         // 10 Grey 2
    5,         // 11 Pink
    6,         // 12 Green
    1,         // 13 Yellow
    2,         // 14 Aquamarine
    PAL_WHITE, // 15 White
};

#endif

// IO /////////////////////////////////////////////////////////////////////////

uint8_t io_read_video(uint32_t address)
{
    switch (address)
    {
    case 0xC00C:
        switches &= ~S_80COL;
        break;
    case 0xC00D:
        switches |= S_80COL;
        break;
    case 0xC00E:
        switches &= ~S_ALTCH;
        break;
    case 0xC00F:
        switches |= S_ALTCH;
        break;

    case 0xC01A:
        return switches & S_TEXT ? 0x8D : 0x0D;
    case 0xC01B:
        return switches & S_MIXED ? 0x8D : 0x0D;
    case 0xC01C:
        return switches & S_PAGE2 ? 0x8D : 0x0D;
    case 0xC01D:
        return (switches & S_HIRES) ? 0x8D : 0x0D;
    case 0xC01E:
        return (switches & S_ALTCH) ? 0x8D : 0x0D;
    case 0xC01F:
        return (switches & S_80COL) ? 0x8D : 0x0D;

    case 0xC050: // CLR TEXT
        if (switches & S_TEXT)
            switches &= ~S_TEXT;
        break;
    case 0xC051: // SET TEXT
        if (!(switches & S_TEXT))
            switches |= S_TEXT;
        break;
    case 0xC052: // CLR MIXED
        if (switches & S_MIXED)
            switches &= ~S_MIXED;
        break;
    case 0xC053: // SET MIXED
        if (!(switches & S_MIXED))
            switches |= S_MIXED;
        break;
    case 0xC054: // PAGE1
        if (switches & S_PAGE2)
            switches &= ~S_PAGE2;
        break;
    case 0xC055: // PAGE2
        if (!(switches & S_PAGE2))
            switches |= S_PAGE2;
        break;
    case 0xC056: // CLR HIRES
        if (switches & S_HIRES)
            switches &= ~S_HIRES;
        break;
    case 0xC057: // SET HIRES
        if (!(switches & S_HIRES))
            switches |= S_HIRES;
        break;

    case 0xC05E: // DHIRES ON
        if (!(switches & S_DHIRES))
            switches |= S_DHIRES;
        break;
    case 0xC05F: // DHIRES OFF
        if (switches & S_DHIRES)
            switches &= ~S_DHIRES;
        break;

    case 0xC07F:
        return 0x7F; // NO
    }
    return 0;
}

void io_write_video(uint32_t address, uint8_t value) { io_read_video(address); }

///////////////////////////////////////////////////////////////////////////////

uint8_t mm_read_video_L1(uint32_t address)
{
    if (S_80STORE & switches)
        return (S_PAGE2 & switches) ? AUX[address] : MEM[address];
    return p_read[address];
}

void mm_write_video_L1(uint32_t address, uint8_t value)
{
    if (S_80STORE & switches)
    {
        value = (S_PAGE2 & switches) ? AUX[address] : MEM[address];
    }
    else
    {
        p_write[address] = value;
    }
}

uint8_t mm_read_video_L2(uint32_t address)
{
    return p_read[address];
}

void mm_write_video_L2(uint32_t address, uint8_t value)
{
    p_write[address] = value;
}

uint8_t mm_read_video_H1(uint32_t address)
{
    if ((S_80STORE | S_HIRES) & switches)
        return (S_PAGE2 & switches) ? AUX[address] : MEM[address];
    return p_read[address];
}

void mm_write_video_H1(uint32_t address, uint8_t value)
{
    if ((S_80STORE | S_HIRES) & switches)
    {
        value = (S_PAGE2 & switches) ? AUX[address] = value : MEM[address];
    }
    else
    {
        p_write[address] = value;
    }
}

uint8_t mm_read_video_H2(uint32_t address)
{
    return p_read[address];
}

void mm_write_video_H2(uint32_t address, uint8_t value)
{
    p_write[address] = value;
}

///////////////////////////////////////////////////////////////////////////////
#pragma GCC optimize("Os")
///////////////////////////////////////////////////////////////////////////////

uint8_t *get_video_line(int line, bool HGR)
{
    uint32_t address = (((line >> 3) & 7) * SCREEN_LINE_OFFSET) + ((line >> 6) * VIDEO_SEGMENT_OFFSET);
    if (HGR)
    {
        address += (switches & S_PAGE2 ? 0x4000 : 0x2000) + ((line & 7) * 0x400);
    }
    else
    {
        address += (switches & S_PAGE2 ? 0x800 : 0x400);
    }
    return video_dma(address);
}

#ifdef LCD

static int px = 0 /* 0 - 39 */, py = 0 /* 0 - 191 */;
static uint16_t __attribute__((coherent, aligned(16))) frame_buffer[7]; // 7 color pixesl

static void video_draw_T(int line, uint16_t *buffer)
{
    int color, i;
    bool bInvert;
    int ch = get_video_line(line, false)[px];

    if (bios->pc == PC_8M)
    {
        switch (ch)
        {
        case 0xDD:
            ch = 0xFD; // ]
            break;
        case 0xDB:
            ch = 0xFB; // [
            break;
            // other
        }
    }

    int data = bios_get_charset_data((ch * TEXT_BYTES) + (line & TEXT_BYTES_MASK));

    // FLASH / INVERSE
    static uint32_t ms = 0;
    static bool cursor_flash = false;
    if (millis() - ms > 600)
    {
        ms = millis();
        cursor_flash = !cursor_flash;
    }
    bInvert = (ch < 0x40) || (cursor_flash & ((ch > 0x3F) && (ch < 0x80)));

    for (i = 0; i < 7; i++)
    {
        color = bInvert ? PAL_WHITE : PAL_BLACK; // NORMAL BLACK
        if (data & 1)
            color = bInvert ? PAL_BLACK : PAL_WHITE; // NORMAL WHITE
        data >>= 1;
        PUT_PUXEL(buffer, color);
    }
}

static void video_draw_L(int line, uint16_t *buffer)
{
    int color, i;
    uint8_t *aVideo = get_video_line(line, false);
    color = lcolor[aVideo[px] >> 4];
    for (i = 0; i < 7; i++)
        PUT_PUXEL(buffer, color);
}

static void video_draw_H(int line, uint16_t *buffer)
{
    int i;
    int color_index, color_offset, pixel, pixel_left, pixel_right, pixel_center;
    int pixel_pre, pixel_post, address_odd;
    int data_ex;
    uint8_t *aVideo = get_video_line(line, true);
    pixel_center = aVideo[px];
    pixel_pre = (aVideo[px - 1] & 0x60) >> 5;
    pixel_post = (aVideo[px + 1] & 3);
    address_odd = (px & 1) << 1;
    color_offset = (pixel_center & 0x80) >> 5;
    data_ex = pixel_pre + ((pixel_center & 0x7F) << 2) + (pixel_post << 9);
    for (i = 0; i < 7; i++)
    {
        color_index = 0; // BLACK INDEX
        pixel = (data_ex >> (i + 2)) & 1;
        pixel_left = (data_ex >> (i + 1)) & 1;
        pixel_right = (data_ex >> (i + 3)) & 1;
        if (pixel)
        {
            if (pixel_left || pixel_right)
                color_index = 9; // WHITE INDEX
            else
                color_index = color_offset + address_odd + (i & 1) + 1;
        }
        else
        {
            if (pixel_left && pixel_right)
                color_index = color_offset + address_odd + 1 - (i & 1) + 1;
        }
        PUT_PUXEL(buffer, hcolor[color_index]);
    }
}

static void video_draw(int line, void *buffer)
{
    if (switches & S_TEXT)
    {
        video_draw_T(line, buffer);
    }
    else if (switches & S_MIXED)
    {
        if (switches & S_HIRES)
        {
            if (line < 160)
            {
                video_draw_H(line, buffer);
            }
            else
            {
                video_draw_T(line, buffer);
            }
        }
        else
        {
            if (line < 160)
            {
                video_draw_L(line, buffer);
            }
            else
            {
                video_draw_T(line, buffer);
            }
        }
    }
    else
    {
        video_draw_H(line, buffer);
    }
}

void video_init(void)
{
    // CLEAR SCREEN
    lcd_fill_screen(LCD_RGB565(20, 20, 20));
    lcd_fill(16, 20, VIDEO_W + 8, VIDEO_H + 8, 0);

    // SET ADDRESS WINDOW
    int xoffset = (lcd_get_width() - VIDEO_W) / 2;
    int yoffset = (lcd_get_height() - VIDEO_H) / 2;
    lcd_set_window(xoffset, yoffset, xoffset + VIDEO_W - 1, yoffset + VIDEO_H - 1);

    DCH0SSIZ = sizeof(frame_buffer); // 7 color pixels
    DCH0SSA = KVA_TO_PA(frame_buffer);
}

void video_render(void)
{
    if (!lcd_dma_busy)
    {
        SYS_DEVCON_DataCacheInvalidate((uint32_t)frame_buffer, sizeof(frame_buffer));
        video_draw(py, frame_buffer);
        SYS_DEVCON_DataCacheClean((uint32_t)frame_buffer, sizeof(frame_buffer));

        DCH0CONCLR = _DCH0CON_CHEN_MASK;
        DCH0INT = _DCH0INT_CHBCIE_MASK;
        DCH0CONSET = _DCH0CON_CHEN_MASK;
        
        if (++px > 39)
        {
            px = 0;
            if (++py > 191)
            {
                py = 0;
                LED_GREEN_TGL();
            }
        }
    }
}

#else

#endif
