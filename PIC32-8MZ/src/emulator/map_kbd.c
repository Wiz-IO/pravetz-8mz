#include "map.h"

static uint8_t last_key = 0;

char prg_0[] = "  ";

char prg_1[] =
    " \r "
    "1GR\r "
    "2COLOR=RND(1)*15\r "
    "3PLOT RND(1)*39, RND(1)*39\r "
    "4GOTO 2\r "
    "RUN\r ";

char prg_2[] =
    " \r "
    "10 HGR\r "
    "11 J = 0\r "
    "20 FOR I=0 TO 278 STEP 3\r "
    "30 HCOLOR=J\r "
    "31 J = J + 1\r "
    "32 IF J > 7 THEN J = 0\r "
    "40 HPLOT I,0 TO I,159\r "
    "50 NEXT I\r "
    "60 GOTO 20\r "
    "RUN\r ";

#define RUN_PROGRAME 0
char *programe[3] = {prg_0, prg_1, prg_2};

static char test_prog(int x)
{
#if RUN_PROGRAME == 0
    return 0;
#endif
    static int n = 0, i = 0;
    char *p = programe[x];
    char key = 0;
    if (++n % 2 == 0 && i < strlen(p))
    {
        last_key = key = p[i] | 0x80;
        i++;
    }
    return key;
}

static uint8_t kbd_check(void)
{
    uint8_t key = test_prog(RUN_PROGRAME);
    if (key > 0)
        return last_key;
    if ((key = get_key()))
    {
        if (key == '\n') // LIMIT KEYS
            key = '\r';
        // printf("%c", new_key);
        last_key = key | 0x80;
    }
    return last_key;
}

// C000 - C00F
uint8_t io_read_kbd(uint32_t address)
{
    return kbd_check();
}

// C010
uint8_t io_read_kbd_strobe(uint32_t address)
{
    last_key &= 0x7F;
    return last_key;
}

// C010 - C01F
void io_write_kbd_strobe(uint32_t address, uint8_t value)
{
    io_read_kbd_strobe(address);
}