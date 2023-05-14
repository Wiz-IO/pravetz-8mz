#pragma once

#ifdef __cplusplus
extern "C"
{
#endif

    typedef enum
    {
        PC_82,
        PC_8M,
        PC_8A,
        PC_8C = PC_8A,
    } rom_e;

    typedef struct
    {
        rom_e pc;
        int rom_address;
        int rom_size;
        const unsigned char *rom;

        int charset_size;
        const unsigned char *charset;

        void (*init)(void);
        void *read;
        void *write;
    } BIOS_T;

    extern BIOS_T *bios;

    static inline unsigned char bios_get_charset_data(int i) { return bios->charset[i]; }
    unsigned char *bios_init(rom_e, unsigned char *dst);

#ifdef __cplusplus
}
#endif