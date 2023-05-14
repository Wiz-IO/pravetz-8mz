#ifndef VIDEO_ROM_82_H
#define VIDEO_ROM_82_H

// tools/VIDEO_ROM_82.bin

// reversed
#define CHARSET_82_SIZE 2048

const unsigned char CHARSET_82[CHARSET_82_SIZE] = {
0x00, 0x38, 0x44, 0x54, 0x74, 0x34, 0x04, 0x78, 0x00, 0x10, 0x28, 0x44, 0x44, 0x7C, 0x44, 0x44, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x44, 0x44, 0x3C, 0x00, 0x38, 0x44, 0x04, 0x04, 0x04, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x44, 0x44, 0x44, 0x3C, 0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x7C, 
0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x78, 0x04, 0x04, 0x04, 0x64, 0x44, 0x78, 
0x00, 0x44, 0x44, 0x44, 0x7C, 0x44, 0x44, 0x44, 0x00, 0x38, 0x10, 0x10, 0x10, 0x10, 0x10, 0x38, 
0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x44, 0x38, 0x00, 0x44, 0x24, 0x14, 0x0C, 0x14, 0x24, 0x44, 
0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x7C, 0x00, 0x44, 0x6C, 0x54, 0x54, 0x44, 0x44, 0x44, 
0x00, 0x44, 0x44, 0x4C, 0x54, 0x64, 0x44, 0x44, 0x00, 0x38, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x38, 0x44, 0x44, 0x44, 0x54, 0x24, 0x58, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x14, 0x24, 0x44, 0x00, 0x38, 0x44, 0x04, 0x38, 0x40, 0x44, 0x38, 
0x00, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x28, 0x10, 0x00, 0x44, 0x44, 0x44, 0x54, 0x54, 0x6C, 0x44, 
0x00, 0x44, 0x44, 0x28, 0x10, 0x28, 0x44, 0x44, 0x00, 0x44, 0x44, 0x28, 0x10, 0x10, 0x10, 0x10, 
0x00, 0x7C, 0x40, 0x20, 0x10, 0x08, 0x04, 0x7C, 0x00, 0x7C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7C, 
0x00, 0x00, 0x04, 0x08, 0x10, 0x20, 0x40, 0x00, 0x00, 0x7C, 0x60, 0x60, 0x60, 0x60, 0x60, 0x7C, 
0x00, 0x00, 0x00, 0x10, 0x28, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x10, 
0x00, 0x28, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x28, 0x28, 0x7C, 0x28, 0x7C, 0x28, 0x28, 
0x00, 0x10, 0x78, 0x14, 0x38, 0x50, 0x3C, 0x10, 0x00, 0x0C, 0x4C, 0x20, 0x10, 0x08, 0x64, 0x60, 
0x00, 0x08, 0x14, 0x14, 0x08, 0x54, 0x24, 0x58, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 
0x00, 0x10, 0x08, 0x04, 0x04, 0x04, 0x08, 0x10, 0x00, 0x10, 0x20, 0x40, 0x40, 0x40, 0x20, 0x10, 
0x00, 0x10, 0x54, 0x38, 0x10, 0x38, 0x54, 0x10, 0x00, 0x00, 0x10, 0x10, 0x7C, 0x10, 0x10, 0x00, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x08, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x20, 0x10, 0x08, 0x04, 0x00, 
0x00, 0x38, 0x44, 0x64, 0x54, 0x4C, 0x44, 0x38, 0x00, 0x10, 0x18, 0x10, 0x10, 0x10, 0x10, 0x38, 
0x00, 0x38, 0x44, 0x40, 0x30, 0x08, 0x04, 0x7C, 0x00, 0x7C, 0x40, 0x20, 0x30, 0x40, 0x44, 0x38, 
0x00, 0x20, 0x30, 0x28, 0x24, 0x7C, 0x20, 0x20, 0x00, 0x7C, 0x04, 0x3C, 0x40, 0x40, 0x44, 0x38, 
0x00, 0x70, 0x08, 0x04, 0x3C, 0x44, 0x44, 0x38, 0x00, 0x7C, 0x40, 0x20, 0x10, 0x08, 0x08, 0x08, 
0x00, 0x38, 0x44, 0x44, 0x38, 0x44, 0x44, 0x38, 0x00, 0x38, 0x44, 0x44, 0x78, 0x40, 0x20, 0x1C, 
0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x10, 0x08, 
0x00, 0x20, 0x10, 0x08, 0x04, 0x08, 0x10, 0x20, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x7C, 0x00, 0x00, 
0x00, 0x08, 0x10, 0x20, 0x40, 0x20, 0x10, 0x08, 0x00, 0x38, 0x44, 0x20, 0x10, 0x10, 0x00, 0x10, 
0x00, 0x38, 0x44, 0x54, 0x74, 0x34, 0x04, 0x78, 0x00, 0x10, 0x28, 0x44, 0x44, 0x7C, 0x44, 0x44, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x44, 0x44, 0x3C, 0x00, 0x38, 0x44, 0x04, 0x04, 0x04, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x44, 0x44, 0x44, 0x3C, 0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x7C, 
0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x78, 0x04, 0x04, 0x04, 0x64, 0x44, 0x78, 
0x00, 0x44, 0x44, 0x44, 0x7C, 0x44, 0x44, 0x44, 0x00, 0x38, 0x10, 0x10, 0x10, 0x10, 0x10, 0x38, 
0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x44, 0x38, 0x00, 0x44, 0x24, 0x14, 0x0C, 0x14, 0x24, 0x44, 
0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x7C, 0x00, 0x44, 0x6C, 0x54, 0x54, 0x44, 0x44, 0x44, 
0x00, 0x44, 0x44, 0x4C, 0x54, 0x64, 0x44, 0x44, 0x00, 0x38, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x38, 0x44, 0x44, 0x44, 0x54, 0x24, 0x58, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x14, 0x24, 0x44, 0x00, 0x38, 0x44, 0x04, 0x38, 0x40, 0x44, 0x38, 
0x00, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x28, 0x10, 0x00, 0x44, 0x44, 0x44, 0x54, 0x54, 0x6C, 0x44, 
0x00, 0x44, 0x44, 0x28, 0x10, 0x28, 0x44, 0x44, 0x00, 0x44, 0x44, 0x28, 0x10, 0x10, 0x10, 0x10, 
0x00, 0x7C, 0x40, 0x20, 0x10, 0x08, 0x04, 0x7C, 0x00, 0x7C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7C, 
0x00, 0x00, 0x04, 0x08, 0x10, 0x20, 0x40, 0x00, 0x00, 0x7C, 0x60, 0x60, 0x60, 0x60, 0x60, 0x7C, 
0x00, 0x00, 0x00, 0x10, 0x28, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x10, 
0x00, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x28, 0x7C, 0x28, 0x7C, 0x28, 0x28, 
0x00, 0x10, 0x78, 0x14, 0x38, 0x50, 0x3C, 0x10, 0x00, 0x0C, 0x4C, 0x20, 0x10, 0x08, 0x64, 0x60, 
0x00, 0x08, 0x14, 0x14, 0x08, 0x54, 0x24, 0x58, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 
0x00, 0x10, 0x08, 0x04, 0x04, 0x04, 0x08, 0x10, 0x00, 0x10, 0x20, 0x40, 0x40, 0x40, 0x20, 0x10, 
0x00, 0x10, 0x54, 0x38, 0x10, 0x38, 0x54, 0x10, 0x00, 0x00, 0x10, 0x10, 0x7C, 0x10, 0x10, 0x00, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x08, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x20, 0x10, 0x08, 0x04, 0x00, 
0x00, 0x38, 0x44, 0x64, 0x54, 0x4C, 0x44, 0x38, 0x00, 0x10, 0x18, 0x10, 0x10, 0x10, 0x10, 0x38, 
0x00, 0x38, 0x44, 0x40, 0x30, 0x08, 0x04, 0x7C, 0x00, 0x7C, 0x40, 0x20, 0x30, 0x40, 0x44, 0x38, 
0x00, 0x20, 0x30, 0x28, 0x24, 0x7C, 0x20, 0x20, 0x00, 0x7C, 0x04, 0x3C, 0x40, 0x40, 0x44, 0x38, 
0x00, 0x70, 0x08, 0x04, 0x3C, 0x44, 0x44, 0x38, 0x00, 0x7C, 0x40, 0x20, 0x10, 0x08, 0x08, 0x08, 
0x00, 0x38, 0x44, 0x44, 0x38, 0x44, 0x44, 0x38, 0x00, 0x38, 0x44, 0x44, 0x78, 0x40, 0x20, 0x1C, 
0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x10, 0x08, 
0x00, 0x20, 0x10, 0x08, 0x04, 0x08, 0x10, 0x20, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x7C, 0x00, 0x00, 
0x00, 0x08, 0x10, 0x20, 0x40, 0x20, 0x10, 0x08, 0x00, 0x38, 0x44, 0x20, 0x10, 0x10, 0x00, 0x10, 
0x00, 0x38, 0x44, 0x54, 0x74, 0x34, 0x04, 0x78, 0x00, 0x10, 0x28, 0x44, 0x44, 0x7C, 0x44, 0x44, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x44, 0x44, 0x3C, 0x00, 0x38, 0x44, 0x04, 0x04, 0x04, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x44, 0x44, 0x44, 0x3C, 0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x7C, 
0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x78, 0x04, 0x04, 0x04, 0x64, 0x44, 0x78, 
0x00, 0x44, 0x44, 0x44, 0x7C, 0x44, 0x44, 0x44, 0x00, 0x38, 0x10, 0x10, 0x10, 0x10, 0x10, 0x38, 
0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x44, 0x38, 0x00, 0x44, 0x24, 0x14, 0x0C, 0x14, 0x24, 0x44, 
0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x7C, 0x00, 0x44, 0x6C, 0x54, 0x54, 0x44, 0x44, 0x44, 
0x00, 0x44, 0x44, 0x4C, 0x54, 0x64, 0x44, 0x44, 0x00, 0x38, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x38, 0x44, 0x44, 0x44, 0x54, 0x24, 0x58, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x14, 0x24, 0x44, 0x00, 0x38, 0x44, 0x04, 0x38, 0x40, 0x44, 0x38, 
0x00, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x28, 0x10, 0x00, 0x44, 0x44, 0x44, 0x54, 0x54, 0x6C, 0x44, 
0x00, 0x44, 0x44, 0x28, 0x10, 0x28, 0x44, 0x44, 0x00, 0x44, 0x44, 0x28, 0x10, 0x10, 0x10, 0x10, 
0x00, 0x7C, 0x40, 0x20, 0x10, 0x08, 0x04, 0x7C, 0x00, 0x7C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7C, 
0x00, 0x00, 0x04, 0x08, 0x10, 0x20, 0x40, 0x00, 0x00, 0x7C, 0x60, 0x60, 0x60, 0x60, 0x60, 0x7C, 
0x00, 0x00, 0x00, 0x10, 0x28, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x10, 
0x00, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x28, 0x7C, 0x28, 0x7C, 0x28, 0x28, 
0x00, 0x10, 0x78, 0x14, 0x38, 0x50, 0x3C, 0x10, 0x00, 0x0C, 0x4C, 0x20, 0x10, 0x08, 0x64, 0x60, 
0x00, 0x08, 0x14, 0x14, 0x08, 0x54, 0x24, 0x58, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 
0x00, 0x10, 0x08, 0x04, 0x04, 0x04, 0x08, 0x10, 0x00, 0x10, 0x20, 0x40, 0x40, 0x40, 0x20, 0x10, 
0x00, 0x10, 0x54, 0x38, 0x10, 0x38, 0x54, 0x10, 0x00, 0x00, 0x10, 0x10, 0x7C, 0x10, 0x10, 0x00, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x10, 0x08, 0x00, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x20, 0x10, 0x08, 0x04, 0x00, 
0x00, 0x38, 0x44, 0x64, 0x54, 0x4C, 0x44, 0x38, 0x00, 0x10, 0x18, 0x10, 0x10, 0x10, 0x10, 0x38, 
0x00, 0x38, 0x44, 0x40, 0x30, 0x08, 0x04, 0x7C, 0x00, 0x7C, 0x40, 0x20, 0x30, 0x40, 0x44, 0x38, 
0x00, 0x20, 0x30, 0x28, 0x24, 0x7C, 0x20, 0x20, 0x00, 0x7C, 0x04, 0x3C, 0x40, 0x40, 0x44, 0x38, 
0x00, 0x70, 0x08, 0x04, 0x3C, 0x44, 0x44, 0x38, 0x00, 0x7C, 0x40, 0x20, 0x10, 0x08, 0x08, 0x08, 
0x00, 0x38, 0x44, 0x44, 0x38, 0x44, 0x44, 0x38, 0x00, 0x38, 0x44, 0x44, 0x78, 0x40, 0x20, 0x1C, 
0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x10, 0x08, 
0x00, 0x20, 0x10, 0x08, 0x04, 0x08, 0x10, 0x20, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x7C, 0x00, 0x00, 
0x00, 0x08, 0x10, 0x20, 0x40, 0x20, 0x10, 0x08, 0x00, 0x38, 0x44, 0x20, 0x10, 0x10, 0x00, 0x10, 
0x00, 0x24, 0x54, 0x54, 0x5C, 0x54, 0x54, 0x24, 0x00, 0x10, 0x28, 0x44, 0x44, 0x7C, 0x44, 0x44, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x44, 0x44, 0x3C, 0x00, 0x38, 0x44, 0x04, 0x04, 0x04, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x44, 0x44, 0x44, 0x3C, 0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x7C, 
0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x78, 0x04, 0x04, 0x04, 0x64, 0x44, 0x78, 
0x00, 0x44, 0x44, 0x44, 0x7C, 0x44, 0x44, 0x44, 0x00, 0x38, 0x10, 0x10, 0x10, 0x10, 0x10, 0x38, 
0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x44, 0x38, 0x00, 0x44, 0x24, 0x14, 0x0C, 0x14, 0x24, 0x44, 
0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x7C, 0x00, 0x44, 0x6C, 0x54, 0x54, 0x44, 0x44, 0x44, 
0x00, 0x44, 0x44, 0x4C, 0x54, 0x64, 0x44, 0x44, 0x00, 0x38, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x38, 0x44, 0x44, 0x44, 0x54, 0x24, 0x58, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x14, 0x24, 0x44, 0x00, 0x38, 0x44, 0x04, 0x38, 0x40, 0x44, 0x38, 
0x00, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x44, 0x44, 0x44, 0x44, 0x44, 0x28, 0x10, 0x00, 0x44, 0x44, 0x44, 0x54, 0x54, 0x6C, 0x44, 
0x00, 0x44, 0x44, 0x28, 0x10, 0x28, 0x44, 0x44, 0x00, 0x44, 0x44, 0x28, 0x10, 0x10, 0x10, 0x10, 
0x00, 0x7C, 0x40, 0x20, 0x10, 0x08, 0x04, 0x7C, 0x00, 0x54, 0x54, 0x54, 0x54, 0x54, 0x7C, 0x00, 
0x00, 0x00, 0x04, 0x08, 0x10, 0x20, 0x40, 0x00, 0x00, 0x54, 0x54, 0x54, 0x54, 0x54, 0x7C, 0x40, 
0x00, 0x44, 0x44, 0x44, 0x78, 0x40, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 
0x00, 0x38, 0x44, 0x54, 0x74, 0x34, 0x04, 0x78, 0x00, 0x10, 0x28, 0x44, 0x44, 0x7C, 0x44, 0x44, 
0x00, 0x3C, 0x04, 0x04, 0x3C, 0x44, 0x44, 0x3C, 0x00, 0x24, 0x24, 0x24, 0x24, 0x24, 0x7C, 0x40, 
0x00, 0x30, 0x48, 0x48, 0x48, 0x48, 0x7C, 0x44, 0x00, 0x7C, 0x04, 0x04, 0x3C, 0x04, 0x04, 0x7C, 
0x00, 0x10, 0x38, 0x54, 0x54, 0x54, 0x38, 0x10, 0x00, 0x7C, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 
0x00, 0x44, 0x44, 0x28, 0x10, 0x28, 0x44, 0x44, 0x00, 0x44, 0x44, 0x64, 0x54, 0x4C, 0x44, 0x44, 
0x00, 0x54, 0x44, 0x64, 0x54, 0x4C, 0x44, 0x44, 0x00, 0x44, 0x24, 0x14, 0x0C, 0x14, 0x24, 0x44, 
0x00, 0x70, 0x48, 0x48, 0x48, 0x48, 0x48, 0x44, 0x00, 0x44, 0x6C, 0x54, 0x54, 0x44, 0x44, 0x44, 
0x00, 0x44, 0x44, 0x44, 0x7C, 0x44, 0x44, 0x44, 0x00, 0x38, 0x44, 0x44, 0x44, 0x44, 0x44, 0x38, 
0x00, 0x7C, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x00, 0x78, 0x44, 0x44, 0x78, 0x50, 0x48, 0x44, 
0x00, 0x3C, 0x44, 0x44, 0x3C, 0x04, 0x04, 0x04, 0x00, 0x38, 0x44, 0x04, 0x04, 0x04, 0x44, 0x38, 
0x00, 0x7C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x00, 0x44, 0x44, 0x44, 0x78, 0x40, 0x40, 0x3C, 
0x00, 0x54, 0x54, 0x38, 0x38, 0x54, 0x54, 0x54, 0x00, 0x3C, 0x44, 0x44, 0x3C, 0x44, 0x44, 0x3C, 
0x00, 0x04, 0x04, 0x04, 0x3C, 0x44, 0x44, 0x3C, 0x00, 0x0C, 0x08, 0x08, 0x38, 0x48, 0x48, 0x38, 
0x00, 0x3C, 0x40, 0x40, 0x38, 0x40, 0x40, 0x3C, 0x00, 0x7C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7C, 
0x00, 0x54, 0x54, 0x54, 0x54, 0x54, 0x7C, 0x40, 0x00, 0x7C, 0x60, 0x60, 0x60, 0x60, 0x60, 0x7C, 
0x00, 0x00, 0x00, 0x10, 0x28, 0x44, 0x00, 0x00, 0x00, 0x7C, 0x7C, 0x7C, 0x7C, 0x7C, 0x7C, 0x7C, 
};

#endif
