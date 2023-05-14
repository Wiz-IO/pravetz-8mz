#pragma once
#ifdef __cplusplus
extern "C"
{
#endif

// DISPLAY //
#define LCD
#define LCD_USE_DMA

#ifndef LCD
#define VGA
#endif

// UART //
#define KEYBOARD_SIMULATOR

#ifdef __cplusplus
}
#endif
