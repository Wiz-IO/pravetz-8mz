/*
    CopyLeft 2023 Georgi Angelov
*/

#include "board/board.h"
#include "board/lcd.h"
#include "emulator/map.h"

void lcd_app(void)
{
    // SIMPLE SPLASH SCREEN
    lcd_fill_screen(LCD_BLACK);
    lcd_fill(0, 0, 320, 240, LCD_RGB565(200, 200, 200)); // red if not SD
    lcd_fill(10, 10, 300, 220, LCD_GREEN);

    lcd_set_cursor(90, 80);
    lcd_set_text_color(LCD_WHITE, LCD_GREEN);
    lcd_set_text_size(8, 8);
    lcd_print("8MZ");

    lcd_set_cursor(60, 180);
    lcd_set_text_color(LCD_BLUE, LCD_GREEN);
    lcd_set_text_size(2, 2);
    lcd_print("Pravetz 8 Emulator");

    delay(1000);
    // GUI BEGIN
}

int main(void)
{
    board_init();
    printf("\nPravetz 8MZ 2023 WizIO\n");

    lcd_init(3);
    lcd_app();

#if 1
    // cpu_init(PC_82, "EMU/ROM/IMG/Karateka.dsk", 0);
    cpu_init(PC_8M, 0, 0);
    cpu_run(0);
#endif

    while (1)
    {
        delay(300);
        LED_GREEN_TGL();
        lcd_fill_screen(rand()); // 31559 us,  ~31 fps
    }
}
