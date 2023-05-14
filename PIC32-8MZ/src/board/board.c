#include "user_config.h"
#include "board.h"

void board_init(void)
{
    __builtin_disable_interrupts();

    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;

    _CP0_BIS_CAUSE(0x00800000U);
    INTCONSET = _INTCON_MVEC_MASK;

#ifndef FREERTOS
    PRISS = 0x76543210;
#endif

    PRECONbits.PREFEN = 3;
    PRECONbits.PFMWS = 2;

    unsigned int cp0 = _mfc0(16, 0);
    cp0 &= ~0x07;
    cp0 |= 0b011;
    _mtc0(16, 0, cp0);

    time_init();
    uart_init();

    LED_RED_INIT();
    LED_GREEN_INIT();
    LED_ORANGE_INIT();
    LED_R_INIT();
    LED_G_INIT();
    LED_B_INIT();
    BUTTON_INIT();

    SYSKEY = 0x33333333;

#ifdef LCD
    lcd_init(3);
#endif

    sd_init();

    __builtin_enable_interrupts();
}

static unsigned int _excep_code;
static unsigned int _excep_addr;
static char *_cause_str;
static char *cause[] = {
    "Interrupt",
    "Undefined",
    "Undefined",
    "Undefined",
    "Load/Fetch address error",
    "Store address error",
    "Instruction bus error",
    "Data bus error",
    "Syscall",
    "Breakpoint",
    "Reserved instruction",
    "Coprocessor unusable",
    "Arithmetic overflow",
    "Trap",
    "Reserved",
    "Reserved",
    "Reserved",
    "Reserved",
    "Reserved",
};

void _general_exception_handler(void)
{
    _excep_code = (_CP0_GET_CAUSE() & 0x0000007C) >> 2;
    _excep_addr = _CP0_GET_EPC();
    _cause_str = cause[_excep_code];
    printf("\n[TRAP] '%s' ( cause = %d, addr = 0x%X )\n\n", _cause_str, _excep_code, _excep_addr);
    while (1)
        continue;
}