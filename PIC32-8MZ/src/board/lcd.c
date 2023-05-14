#include "user_config.h"
#include "board.h"

#ifdef LCD

#include "lcd.h"

static uint16_t lcd_width = LCD_WIDTH;
static uint16_t lcd_height = LCD_HEIGHT;

uint16_t lcd_get_width() { return lcd_width; }
uint16_t lcd_get_height() { return lcd_height; }

static const uint8_t ILI9341_INIT[] = {
    0x16, 0x01, 0x80, 0x05, 0xEF, 0x03, 0x03, 0x80, 0x02, 0xCF, 0x03, 0x00, 0xC1, 0x30, 0xED, 0x04, 0x64, 0x03, 0x12, 0x81, 0xE8, 0x03, 0x85, 0x00, 0x78, 0xCB, 0x05, 0x39, 0x2C, 0x00, 0x34, 0x02, 0xF7, 0x01, 0x20, 0xEA, 0x02, 0x00, 0x00, 0xC0, 0x01, 0x23, 0xC1, 0x01, 0x10, 0xC5, 0x02, 0x3E, 0x28, 0xC7, 0x01, 0x86, 0x36, 0x01, 0x48, 0x3A, 0x01, 0x55, 0xB1, 0x02, 0x00, 0x18, 0xB6, 0x03, 0x08, 0x82, 0x27, 0xF2, 0x01, 0x00, 0x26, 0x01, 0x01, 0xE0, 0x0F, 0x0F, 0x31, 0x2B, 0x0C, 0x0E, 0x08, 0x4E, 0xF1, 0x37, 0x07, 0x10, 0x03, 0x0E, 0x09, 0x00, 0xE1, 0x0F, 0x00, 0x0E, 0x14, 0x03, 0x11, 0x07, 0x31, 0xC1, 0x48, 0x08, 0x0F, 0x0C, 0x31, 0x36, 0x0F, 0x11, 0x80, 0x78, 0x29, 0x00};

#define SPI_BYTE (0)
#define SPI_WORD (1)

#define DMA_MAX_SIZE (65536u)

#ifdef LCD_USE_DMA

uint16_t __attribute__((coherent, aligned(4))) lcd_buffer[8];

volatile bool lcd_dma_busy;

#ifndef FREERTOS
__attribute__((vector(_DMA0_VECTOR), interrupt(IPL4SRS), nomips16, nofpu))
#endif
void
ISR_LCD_DMA0()
{
    IFS4CLR = _IFS4_DMA0IF_MASK;
    lcd_dma_busy = 0;
}

size_t lcd_dma_write_data(uint16_t data, size_t size) // bytes
{
    lcd_dma_busy = 1;
    if (size > sizeof(lcd_buffer))
        size = sizeof(lcd_buffer);
    for (int i = 0; i < sizeof(lcd_buffer) / 2; i++)
        lcd_buffer[i] = data;
    SYS_DEVCON_DataCacheClean((uint32_t)lcd_buffer, size);
    DCH0SSA = KVA_TO_PA(lcd_buffer);
    DCH0SSIZ = size;
    DCH0INT = _DCH0INT_CHBCIE_MASK;
    DCH0CONSET = _DCH0CON_CHEN_MASK;
    while (lcd_dma_busy)
        continue;
    // LCD_WAIT_BUSY();
    SYS_DEVCON_DataCacheInvalidate((uint32_t)lcd_buffer, size);
    return size;
}

size_t lcd_dma_write_buffer(const void *buffer, size_t size) // bytes
{
    lcd_dma_busy = 1;
    if (size > DMA_MAX_SIZE)
        size = DMA_MAX_SIZE;
    SYS_DEVCON_DataCacheClean((uint32_t)buffer, size);
    DCH0SSA = KVA_TO_PA(buffer);
    DCH0SSIZ = size;
    DCH0INT = _DCH0INT_CHBCIE_MASK;
    DCH0CONSET = _DCH0CON_CHEN_MASK;
    while (lcd_dma_busy)
        continue;
    // LCD_WAIT_BUSY();
    SYS_DEVCON_DataCacheInvalidate((uint32_t)buffer, size);
    return size;
}

#endif // LCD_USE_DMA

static void lcd_delay_ms(unsigned ms)
{
    ms *= 100000; // 100 MHz Core Timer
    unsigned ticks = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() - ticks < ms)
        continue;
}

static inline void lcd_spi_set_mode(bool mode)
{
    while (SPI1STAT & _SPI1STAT_SPIBUSY_MASK) // MUST
        continue;
    SPI1CONCLR = _SPI1CON_ON_MASK; // MUST
    if (mode == SPI_WORD)
        SPI1CONSET = _SPI1CON_MODE16_MASK;
    else
        SPI1CONCLR = _SPI1CON_MODE16_MASK;
    SPI1CONSET = _SPI1CON_ON_MASK;
}

static uint16_t lcd_spi_write_blocked(uint16_t tx)
{
    SPI1BUF = tx;
    while (SPI1STAT & _SPI1STAT_SPIRBE_MASK)
        continue;
    return SPI1BUF;
}

void lcd_write_cmd(uint8_t command)
{
    LCD_DC_CMD();
    lcd_spi_set_mode(SPI_BYTE);
    lcd_spi_write_blocked(command);
}

void lcd_write_data(uint16_t data)
{
    LCD_DC_DATA();
    lcd_spi_write_blocked(data);
}

void lcd_set_rotation(uint8_t rot)
{
    lcd_write_cmd(0x36); // ILI9341_MADCTL
    switch (rot & 3)
    {
    case 0:
        lcd_write_data(0x40 | 0x08); // ILI9341_MADCTL_MX
        lcd_width = LCD_WIDTH;
        lcd_height = LCD_HEIGHT;
        break;
    case 1:
        lcd_write_data(0x20 | 0x08); // ILI9341_MADCTL_MV
        lcd_width = LCD_HEIGHT;
        lcd_height = LCD_WIDTH;
        break;
    case 2:
        lcd_write_data(0x80 | 0x08); // ILI9341_MADCTL_MY
        lcd_width = LCD_WIDTH;
        lcd_height = LCD_HEIGHT;
        break;
    case 3:
        lcd_write_data(0x40 | 0x80 | 0x20 | 0x08);
        lcd_width = LCD_HEIGHT;
        lcd_height = LCD_WIDTH;
        break;
    }
}

static inline void lcd_commands_init(const uint8_t *address)
{
    uint8_t *addr = (uint8_t *)address;
    uint8_t numCommands, numArgs;
    uint16_t ms;
    numCommands = *addr++;
    while (numCommands--)
    {
        lcd_write_cmd(*addr++);
        numArgs = *addr++;
        ms = numArgs & 0x80;
        numArgs &= 0x7F;
        while (numArgs--)
            lcd_write_data(*addr++);
        if (ms)
        {
            ms = *addr++;
            if (ms == 255)
                ms = 500;
            lcd_delay_ms(ms);
        }
    }
}

void lcd_init(int rotation)
{
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    MUX_LCD_PINS();
    SYSKEY = 0x33333333;
    LCD_RST_INIT();
    LCD_DC_INIT();

    SPI1CON = 0;
    SPI1BRG = 0;       // 50 MHz
    SPI1CON = 0x08265; // CKP=1, CKE=0,

#ifdef LCD_USE_DMA
    IFS4CLR = _IFS4_DMA0IF_MASK;            // clear IF
    IPC33SET = 4 << _IPC33_DMA0IP_POSITION; // prio
    IEC4SET = _IEC4_DMA0IE_MASK;            // enable IE
    DCH0CON = 0;                            // only dma prio
    DCH0ECONbits.SIRQEN = 1;                //
    DCH0ECONbits.CHSIRQ = _SPI1_TX_VECTOR;  //
    DCH0DSA = KVA_TO_PA(&SPI1BUF);          //
    DCH0DSIZ = 2;                           // word mode
    DCH0CSIZ = 2;                           //
    DMACONSET = 0x8000;                     // enable DMA
#endif

    LCD_RST_1();
    lcd_delay_ms(10);
    LCD_RST_0();
    lcd_delay_ms(20);
    LCD_RST_1();
    lcd_delay_ms(150);

    lcd_commands_init(ILI9341_INIT);
    lcd_set_rotation(rotation);
}

void lcd_set_window(unsigned xs, unsigned ys, unsigned xe, unsigned ye)
{
    lcd_write_cmd(0x2A); // ILI9341_CASET

    LCD_DC_DATA();
    lcd_spi_set_mode(SPI_WORD);

#ifdef LCD_USE_DMA
    lcd_buffer[0] = xs;
    lcd_buffer[1] = xe;
    lcd_dma_write_buffer(lcd_buffer, 4);
#else
    lcd_write_data(xs);
    lcd_write_data(xe);
#endif

    lcd_write_cmd(0x2B); // PASET

    LCD_DC_DATA();
    lcd_spi_set_mode(SPI_WORD);

#ifdef LCD_USE_DMA
    lcd_buffer[0] = ys;
    lcd_buffer[1] = ye;
    lcd_dma_write_buffer(lcd_buffer, 4);
#else
    lcd_write_data(ys);
    lcd_write_data(ye);
#endif

    lcd_write_cmd(0x2C); // RAMWR

    LCD_DC_DATA();
    lcd_spi_set_mode(SPI_WORD);
}

void lcd_fill(unsigned x, unsigned y, unsigned w, unsigned h, uint16_t color)
{
    // if (x >= lcd_width || y >= lcd_height || w < 1 || h < 1) return;
    lcd_set_window(x, y, x + w - 1, y + h - 1);
    unsigned size = w * h;
#ifdef LCD_USE_DMA
    while (size)
        size -= lcd_dma_write_data(color, size << 1) >> 1;
#else
    while (size--) // slow
        lcd_write_data(color);
#endif
}

void lcd_fill_screen(uint16_t color)
{
    // uint32_t T1, T0 = _CP0_GET_COUNT();
    lcd_fill(0, 0, lcd_width, lcd_height, color);
    // T1 = _CP0_GET_COUNT();
    // printf("[LCD]  %u\n", (T1 - T0) / 100);
}

void lcd_draw_image(unsigned x, unsigned y, unsigned w, unsigned h, const uint16_t *buffer)
{
    // if (x >= lcd_width || y >= lcd_height || w <= 0 || h <= 0 || buffer == NULL) return;
    lcd_set_window(x, y, x + w - 1, y + h - 1);
    size_t size = w * h;
#ifdef LCD_USE_DMA
    size_t sent;
    while (size)
    {
        sent = lcd_dma_write_buffer(buffer, size << 1) >> 1;
        size -= sent;
        buffer += sent;
    }
#else
    while (size--) // slow
        lcd_write_data(*buffer++);
#endif
}

void lcd_draw_pixel(unsigned x, unsigned y, uint16_t color)
{
    lcd_fill(x, y, 1, 1, color);
}

#ifndef _swap_int16_t
#define _swap_int16_t(a, b) \
    {                       \
        int16_t t = a;      \
        a = b;              \
        b = t;              \
    }
#endif

void lcd_line(unsigned x0, unsigned y0, unsigned x1, unsigned y1, uint16_t color)
{
    int16_t steep = abs(y1 - y0) > abs(x1 - x0);
    if (steep)
    {
        _swap_int16_t(x0, y0);
        _swap_int16_t(x1, y1);
    }

    if (x0 > x1)
    {
        _swap_int16_t(x0, x1);
        _swap_int16_t(y0, y1);
    }

    int16_t dx, dy;
    dx = x1 - x0;
    dy = abs(y1 - y0);

    int16_t err = dx / 2;
    int16_t ystep;

    if (y0 < y1)
    {
        ystep = 1;
    }
    else
    {
        ystep = -1;
    }
    for (; x0 <= x1; x0++)
    {
        if (steep)
        {
            lcd_draw_pixel(y0, x0, color);
        }
        else
        {
            lcd_draw_pixel(x0, y0, color);
        }
        err -= dy;
        if (err < 0)
        {
            y0 += ystep;
            err += dx;
        }
    }
}

void lcd_draw_VLine(int16_t x, int16_t y, int16_t h, uint16_t color)
{
    lcd_line(x, y, x, y + h - 1, color); // fill
}

void lcd_draw_HLine(int16_t x, int16_t y, int16_t w, uint16_t color)
{
    lcd_line(x, y, x + w - 1, y, color); // fill
}

void lcd_draw_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color)
{
    if (x0 == x1)
    {
        if (y0 > y1)
        {
            _swap_int16_t(y0, y1);
        }
        lcd_draw_VLine(x0, y0, y1 - y0 + 1, color);
    }
    else if (y0 == y1)
    {
        if (x0 > x1)
        {
            _swap_int16_t(x0, x1);
        }
        lcd_draw_HLine(x0, y0, x1 - x0 + 1, color);
    }
    else
    {
        lcd_line(x0, y0, x1, y1, color);
    }
}

void lcd_draw_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color)
{
    lcd_draw_HLine(x, y, w, color);
    lcd_draw_HLine(x, y + h - 1, w, color);
    lcd_draw_VLine(x, y, h, color);
    lcd_draw_VLine(x + w - 1, y, h, color);
}

///////////////////////////////////////////////////////////////////////////////

#if 1

#include "common/fonts/gfxfont.h"

GFXfont *gfxFont = 0;
static bool wrap, _cp437 = false;

int16_t
    cursor_x = 0,
    cursor_y = 0;
uint16_t
    textcolor = -1,
    textbgcolor = 0;
uint8_t
    textsize_x = 1,
    textsize_y = 1;

static GFXglyph *read_glyph_ptr(const GFXfont *gfxFont, uint8_t c)
{
    return gfxFont->glyph + c;
}

static uint8_t *read_bitmap_ptr(const GFXfont *gfxFont)
{
    return gfxFont->bitmap;
}

void lcd_draw_char(int16_t x, int16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size_x, uint8_t size_y)
{

    if (!gfxFont)
    { // 'Classic' built-in font

        if ((x >= lcd_width) ||           // Clip right
            (y >= lcd_height) ||          // Clip bottom
            ((x + 6 * size_x - 1) < 0) || // Clip left
            ((y + 8 * size_y - 1) < 0))   // Clip top
            return;

        if (!_cp437 && (c >= 176))
            c++; // Handle 'classic' charset behavior

        for (int8_t i = 0; i < 5; i++)
        {
            uint8_t line = font[c * 5 + i];
            for (int8_t j = 0; j < 8; j++, line >>= 1)
            {
                if (line & 1)
                {
                    if (size_x == 1 && size_y == 1)
                        lcd_draw_pixel(x + i, y + j, color);
                    else
                        lcd_fill(x + i * size_x, y + j * size_y, size_x, size_y, color);
                }
                else if (bg != color)
                {
                    if (size_x == 1 && size_y == 1)
                        lcd_draw_pixel(x + i, y + j, bg);
                    else
                        lcd_fill(x + i * size_x, y + j * size_y, size_x, size_y, bg);
                }
            }
        }
        if (bg != color)
        {
            if (size_x == 1 && size_y == 1)
                lcd_draw_VLine(x + 5, y, 8, bg);
            else
                lcd_fill(x + 5 * size_x, y, size_x, 8 * size_y, bg);
        }
    }
    else
    { // Custom font
        c -= (uint8_t)gfxFont->first;
        GFXglyph *glyph = read_glyph_ptr(gfxFont, c);
        uint8_t *bitmap = read_bitmap_ptr(gfxFont);

        uint16_t bo = glyph->bitmapOffset;
        uint8_t w = glyph->width,
                h = glyph->height;
        int8_t xo = glyph->xOffset,
               yo = glyph->yOffset;
        uint8_t xx, yy, bits = 0, bit = 0;
        int16_t xo16 = 0, yo16 = 0;

        if (size_x > 1 || size_y > 1)
        {
            xo16 = xo;
            yo16 = yo;
        }

        for (yy = 0; yy < h; yy++)
        {
            for (xx = 0; xx < w; xx++)
            {
                if (!(bit++ & 7))
                {
                    bits = bitmap[bo++];
                }
                if (bits & 0x80)
                {
                    if (size_x == 1 && size_y == 1)
                    {
                        lcd_draw_pixel(x + xo + xx, y + yo + yy, color);
                    }
                    else
                    {
                        lcd_fill(x + (xo16 + xx) * size_x, y + (yo16 + yy) * size_y, size_x, size_y, color);
                    }
                }
                bits <<= 1;
            }
        }
    }
}

size_t lcd_putc(uint8_t c)
{
    if (!gfxFont)
    { // 'Classic' built-in font
        if (c == '\n')
        {                               // Newline?
            cursor_x = 0;               // Reset x to zero,
            cursor_y += textsize_y * 8; // advance y one line
        }
        else if (c != '\r')
        { // Ignore carriage returns
            if (wrap && ((cursor_x + textsize_x * 6) > lcd_width))
            {                               // Off right?
                cursor_x = 0;               // Reset x to zero,
                cursor_y += textsize_y * 8; // advance y one line
            }
            lcd_draw_char(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize_x, textsize_y);
            cursor_x += textsize_x * 6; // Advance x one char
        }
    }
    else
    { // Custom font

        if (c == '\n')
        {
            cursor_x = 0;
            cursor_y += (int16_t)textsize_y * (uint8_t)gfxFont->yAdvance;
        }
        else if (c != '\r')
        {
            uint8_t first = gfxFont->first;
            if ((c >= first) && (c <= (uint8_t)gfxFont->last))
            {
                GFXglyph *glyph = read_glyph_ptr(gfxFont, c - first);
                uint8_t w = glyph->width,
                        h = glyph->height;
                if ((w > 0) && (h > 0))
                {
                    int16_t xo = (int8_t)glyph->xOffset;
                    if (wrap && ((cursor_x + textsize_x * (xo + w)) > lcd_width))
                    {
                        cursor_x = 0;
                        cursor_y += (int16_t)textsize_y * (uint8_t)gfxFont->yAdvance;
                    }
                    lcd_draw_char(cursor_x, cursor_y, c, textcolor, textbgcolor, textsize_x, textsize_y);
                }
                cursor_x += (uint8_t)glyph->xAdvance * (int16_t)textsize_x;
            }
        }
    }
    return 1;
}

void lcd_print(char *txt)
{
    while (*txt)
        lcd_putc(*txt++);
}

void lcd_set_cursor(int16_t x, int16_t y)
{
    cursor_x = x;
    cursor_y = y;
}

void lcd_set_text_color(uint16_t c, uint16_t bg)
{
    textcolor = c;
    textbgcolor = bg;
}

void lcd_set_text_size(uint8_t s_x, uint8_t s_y)
{
    textsize_x = (s_x > 0) ? s_x : 1;
    textsize_y = (s_y > 0) ? s_y : 1;
}

void lcd_set_font(void *Font)
{
    gfxFont = (GFXfont *)Font;
}

#endif // charset

#endif // LCD