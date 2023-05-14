#include "map.h"

#ifdef SOUND_HARD

static ring_buffer_t SND;
static char ring_buffer[4096];
#define SND_LEN sizeof(short)
static bool started = false;

void audio_init()
{
    ring_buffer_init(&SND, sizeof(ring_buffer), ring_buffer);
    SND.reset(&SND);

    T2CON = (5 << _T2CON_TCKPS_POSITION); // 1:32
    PR2 = -1;
    IPC1SET = 6 << _IPC1_OC1IP_POSITION; // prio
    IFS0CLR = _IFS0_OC1IF_MASK;
    IEC0SET = _IEC0_OC1IE_MASK;
    OC1CONSET = _OC1CON_ON_MASK;
}

static void audio_play(int val)
{
    started = true;
    LED_ORANGE_ON();
    OC1R = 0x7FFF & val;
    OC1CON = val < 0x8000 ? 2 : 1;
    OC1CONSET = _OC1CON_ON_MASK; // RUN
    TMR2 = 0;
    T2CONSET = _T2CON_ON_MASK;
}

void audio_add(int val)
{
    // printf("%d ", val);
    static bool flag = 0;

    if (val > 6000)
        val = 2;

    val /= 0.32; // nSec

    if (val < 2)
        val = 2;

    if (flag)
        val |= 0x8000;
    flag = !flag;

    while (SND.available(&SND) < SND_LEN)
    {
        printf("E ");
        continue;
    }

    __builtin_disable_interrupts();
    SND.write(&SND, (void *)&val, SND_LEN);
    __builtin_enable_interrupts();

    uint32_t value = 0;
    if (!started && SND.read(&SND, &value, SND_LEN) >= SND_LEN)
        audio_play(value);
}

void
#ifndef FREERTOS
    __attribute__((vector(_OUTPUT_COMPARE_1_VECTOR), interrupt(IPL6AUTO), nomips16))
#endif
    OC1_IntHandler(void)
{
    IFS0CLR = _IFS0_OC1IF_MASK;
    T2CONCLR = _T2CON_ON_MASK;
    uint32_t value = 0;
    if (SND.read(&SND, &value, SND_LEN) == SND_LEN)
        audio_play(value);
    else
        started = false;
    LED_ORANGE_OFF();
}

#else
void audio_init() { SOUND_INIT(); }
#endif
///////////////////////////////////////////////////////////////////////////////

uint8_t io_read_audio(uint32_t address)
{
#ifdef SOUND_HARD
    static uint32_t snd_ticks = 0;
    uint32_t ticks = mos_getcycles(false);
    audio_add(ticks - snd_ticks);
    snd_ticks = ticks;
#else
    SOUND_TGL();
#endif
    return 0;
}

void io_write_audio(uint32_t address, uint8_t value) { io_read_audio(address); }
