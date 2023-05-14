
#include "board.h"

static volatile uint32_t ms_cnt = 0;

#ifdef USE_TIMER1

#ifndef FREERTOS
__attribute__((vector(_TIMER_1_VECTOR), interrupt(IPL4SRS), nomips16, nofpu))
#endif
void
ISR_TIMER1(void)
{
    IFS0CLR = _IFS0_T1IF_MASK;
    ms_cnt++;
}

#else // CORE TIMER

#define CORE_TIMER_INTERRUPT_TICKS (SYS_CLK_BUS_PERIPHERAL_1 / 1000ul)

#ifndef FREERTOS
__attribute__((vector(_CORE_TIMER_VECTOR), interrupt(IPL4SRS), nomips16, nofpu))
#endif
void
ISR_CORE_TIMER(void)
{
    IFS0CLR = _IFS0_CTIF_MASK;
    _CP0_SET_COMPARE(_CP0_GET_COUNT() + CORE_TIMER_INTERRUPT_TICKS);
    ms_cnt++;
}

#endif

void time_init(void)
{
#ifdef USE_TIMER1
    T1CON = 0;
    TMR1 = 0;
    IPC1SET = 4 << _IPC1_T1IP_POSITION;
    IFS0CLR = _IFS0_T1IF_MASK;
    IEC0SET = _IEC0_T1IE_MASK;
    T1CONbits.TCKPS = 1;
    PR1 = (SYS_CLK_FREQ / 2 / 1000) / 8 - 1;
    T1CONSET = _T1CON_ON_MASK;
#else  
    // clang-format off
    // CORE TIMER 1 ms
    int ticks = CORE_TIMER_INTERRUPT_TICKS;
    asm volatile("mtc0   $0,$9");
    asm volatile("mtc0   %0,$11" : "+r"(ticks));
    _CP0_SET_COMPARE(ticks);
    IPC0SET = (4) << _IPC0_CTIP_POSITION;
    IFS0CLR = _IFS0_CTIF_MASK;
    IEC0SET = _IEC0_CTIE_MASK;
// clang-format on  
#endif
}

uint32_t millis(void) { return ms_cnt; }

void delay(uint32_t t)
{
    uint32_t startTime = ms_cnt;
    while ((ms_cnt - startTime) < t)
        continue;
}