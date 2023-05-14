#ifndef _LCD_H_
#define _LCD_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#include <sys/attribs.h>
#include <sys/kmem.h>
#include <sys_devcon.h>

    // clang-format off

#define USE_LCD_DMA

#define LCD_WIDTH           (240u)
#define LCD_HEIGHT          (320u)

#define LCD_RGB565(r,g,b)  ((((r) & 0xF8) << 8) | (((g) & 0xFC) << 3) | ((b) >> 3)) 
#define LCD_BLACK           0
#define LCD_WHITE           0xFFFF
#define LCD_RED             LCD_RGB565(0xFF, 0x00, 0x00) 
#define LCD_GREEN           LCD_RGB565(0x00, 0xFF, 0x00) 
#define LCD_BLUE            LCD_RGB565(0x00, 0x00, 0xFF) 
#define LCD_GRAY            RGB5LCD_RGB56565(0x40, 0x40, 0x40) 
#define LCD_YELLOW          0xFFE0

// clang-format off

extern volatile bool lcd_dma_busy;
extern uint16_t __attribute__((coherent, aligned(4))) lcd_buffer[8];

size_t lcd_dma_write_data(uint16_t data, size_t size);
size_t lcd_dma_write_buffer(const void *buffer, size_t size);

void lcd_write_cmd(uint8_t command);
void lcd_write_data(uint16_t data);

void lcd_set_rotation(uint8_t rot);
void lcd_init(int rotation);

uint16_t lcd_get_width();
uint16_t lcd_get_height();

void lcd_set_window(unsigned xs, unsigned ys, unsigned xe, unsigned ye);
void lcd_fill(unsigned x, unsigned y, unsigned w, unsigned h, uint16_t color);
void lcd_fill_screen(uint16_t color);
void lcd_draw_image(unsigned x, unsigned y, unsigned w, unsigned h, const uint16_t *buffer);

void lcd_draw_pixel(unsigned x, unsigned y, uint16_t color);
void lcd_draw_VLine(int16_t x, int16_t y, int16_t h, uint16_t color);
void lcd_draw_HLine(int16_t x, int16_t y, int16_t w, uint16_t color);
void lcd_draw_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
void lcd_draw_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);

size_t lcd_putc(uint8_t c);
void lcd_print(char *txt);
void lcd_set_cursor(int16_t x, int16_t y);
void lcd_set_text_color(uint16_t c, uint16_t bg);
void lcd_set_text_size(uint8_t s_x, uint8_t s_y);
void lcd_set_font(void *Font);

#ifdef __cplusplus
}
#endif

#endif /* _LCD_H_ */
