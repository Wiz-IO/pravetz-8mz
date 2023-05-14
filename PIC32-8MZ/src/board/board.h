#pragma once
#ifdef __cplusplus
extern "C"
{
#endif

#if defined(__LANGUAGE_C__) || defined(__LANGUAGE_C_PLUS_PLUS)

#include <xc.h>
#include <sys_devcon.h>
#include <sys/kmem.h>
#include <sys/attribs.h>
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

    // clang-format off

#define SYS_CLK_FREQ                (200000000ul)
#define SYS_CLK_BUS_PERIPHERAL_1    (SYS_CLK_FREQ >> 1)

// G12
#define BUTTON                      (12)
#define BUTTON_INIT()               TRISGbits.TRISG12 = 1
#define BUTTON_GET()                PORTGbits.PORTG12

// E4
#define LED_GREEN                   (4)
#define LED_GREEN_INIT()            TRISECLR = 1 << LED_GREEN
#define LED_GREEN_TGL()             LATEINV  = 1 << LED_GREEN
#define LED_GREEN_ON()              LATESET  = 1 << LED_GREEN
#define LED_GREEN_OFF()             LATECLR  = 1 << LED_GREEN

// E3
#define LED_RED                     (3)
#define LED_RED_INIT()              TRISECLR = 1 << LED_RED
#define LED_RED_TGL()               LATEINV  = 1 << LED_RED
#define LED_RED_ON()                LATESET  = 1 << LED_RED
#define LED_RED_OFF()               LATECLR  = 1 << LED_RED

// E6
#define LED_ORANGE                  (6)
#define LED_ORANGE_INIT()           TRISECLR = 1 << LED_ORANGE
#define LED_ORANGE_TGL()            LATEINV  = 1 << LED_ORANGE
#define LED_ORANGE_ON()             LATESET  = 1 << LED_ORANGE
#define LED_ORANGE_OFF()            LATECLR  = 1 << LED_ORANGE

#define LED_R                       (5)
#define LED_R_TGL()                 LATBINV  = 1 << LED_R
#define LED_R_ON()                  LATBCLR  = 1 << LED_R
#define LED_R_OFF()                 LATBSET  = 1 << LED_R
#define LED_R_INIT()                (TRISBCLR = 1 << LED_R, LED_R_OFF())

#define LED_G                       (1)
#define LED_G_TGL()                 LATBINV  = 1 << LED_G
#define LED_G_ON()                  LATBCLR  = 1 << LED_G
#define LED_G_OFF()                 LATBSET  = 1 << LED_G
#define LED_G_INIT()                (TRISBCLR = 1 << LED_G, LED_G_OFF())

#define LED_B                       (0)
#define LED_B_TGL()                 LATBINV  = 1 << LED_B
#define LED_B_ON()                  LATBCLR  = 1 << LED_B
#define LED_B_OFF()                 LATBSET  = 1 << LED_B
#define LED_B_INIT()                (TRISBCLR = 1 << LED_B, LED_B_OFF())

// F2
#define SOUND                       (2)
#define SOUND_INIT()                TRISFCLR = 1 << SOUND
#define SOUND_TGL()                 LATFINV  = 1 << SOUND

// UART1
#define UART_BAUDRATE               (115200)
#define UART_MODE                   U1MODE
#define UART_STA                    U1STA
#define UART_BRG                    U1BRG
#define UART_RX                     U1RXREG
#define UART_VECTOR                 _UART1_RX_VECTOR
#define UART_PRI                    4
#define UART_SUB                    0
#define UART_IPL                    IPL4SRS /* as UART_PRI */
#define MUX_RX_PIN()                U1RXR = 3
#define MUX_TX_PIN()                RPD15R = 1
#define MUX_UART()                  ( MUX_RX_PIN(), MUX_TX_PIN() )
#define UART_RING_SIZE              (64)

// SPI1 - LCD
#define LCD_RST                     (4)
#define LCD_RST_INIT()              TRISDCLR = 1 << LCD_RST
#define LCD_RST_0()                 LATDCLR = 1 << LCD_RST
#define LCD_RST_1()                 LATDSET = 1 << LCD_RST

#define LCD_DC                      (14)
#define LCD_DC_INIT()               TRISDCLR = 1 << LCD_DC
#define LCD_DC_CMD()                LATDCLR = 1 << LCD_DC
#define LCD_DC_DATA()               LATDSET = 1 << LCD_DC
#define LCD_WAIT_BUSY()             while (SPI1STAT & _SPI1STAT_SPIBUSY_MASK) continue

#define MUX_LCD_MISO()              SDI1R = 11            
#define MUX_LCD_MOSI()              RPD3R = 5    
#define MUX_LCD_PINS()              (MUX_LCD_MISO(), MUX_LCD_MOSI(), SPI1CONbits.MSSEN = 0)         

// SPI2 - SD CARD
#define MUX_SD_MISO()               SDI2R = 12
#define MUX_SD_MOSI()               RPG7R = 6
#define MUX_SD_PINS()               (MUX_SD_MISO(), MUX_SD_MOSI(), SPI2CONbits.MSSEN = 0)

#define SD_CS_PIN                   (5)
#define SD_CS_INIT()                TRISDCLR = 1 << SD_CS_PIN
#define SD_CS_0()                   LATDCLR = 1 << SD_CS_PIN
#define SD_CS_1()                   LATDSET = 1 << SD_CS_PIN

#define SD_SPI_L                    (10) /* init speed low */
#define SD_SPI_H                    (1)  /* 25 MHz */

    // clang-format on

    void board_init(void);
    void uart_init(void);
    void time_init(void);
    void sd_init(void);
    void lcd_init(int rotation);

    uint32_t millis(void);
    void delay(uint32_t ms);

#endif // __LANGUAGE_C__
#ifdef __cplusplus
}
#endif
