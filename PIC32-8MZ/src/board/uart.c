#include "user_config.h"
#include "board.h"

static inline void u_init()
{
    MUX_UART();
    UART_STA = UART_MODE = 0;
    UART_BRG = (((SYS_CLK_BUS_PERIPHERAL_1 >> 4) + (UART_BAUDRATE >> 1)) / UART_BAUDRATE) - 1;
    UART_STA = _U1STA_UTXEN_MASK | _U1STA_URXEN_MASK;
    UART_MODE = _U1MODE_ON_MASK;
}

#ifdef KEYBOARD_SIMULATOR

#include "common/ring/ring-buffer.h"

static ring_buffer_t RX;
static char ring_buffer[UART_RING_SIZE] __attribute__((aligned(16))) = {0};

#define ENABLE_RX() IEC3SET = _IEC3_U1RXIE_MASK
#define DISABLE_RX() IEC3CLR = _IEC3_U1RXIE_MASK
#define CLEAR_RX() IFS3CLR = _IFS3_U1RXIF_MASK

unsigned char get_key()
{
    unsigned char key;
    DISABLE_RX();
    int res = RX.read(&RX, &key, 1);
    ENABLE_RX();
    return res == 1 ? key : 0;
}

#ifndef FREERTOS
__attribute__((vector(_UART1_RX_VECTOR), interrupt(UART_IPL), nomips16))
#endif
void  
ISR_UART1_RX(void)
{
    DISABLE_RX();
    CLEAR_RX();
    while (UART_STA & _U1STA_URXDA_MASK) // FIFO = 8
    {
        volatile int c = UART_RX; // flush
        if (c && c != '\r')       // remove
        {
            RX.write(&RX, (void *)&c, 1UL);
        }
    }
    ENABLE_RX();
}

void uart_init(void)
{
    // memset(ring_buffer, 0, UART_RING_SIZE);
    u_init();

    ring_buffer_init(&RX, UART_RING_SIZE, ring_buffer);
    RX.reset(&RX);

    IPC28SET = UART_PRI << _IPC28_U1RXIP_POSITION; // prio
    CLEAR_RX();
    ENABLE_RX();

    __XC_UART = 1; // stdio - UART1
}

#else // only printf

unsigned char get_key()
{
    return 0;
}

void uart_init(void)
{
    u_init();
    __XC_UART = 1; // stdio - UART1
}

#endif // KEYBOARD_SIMULATOR

#if 1
void dump(const void *buffer, int len, int mod)
{
    printf("[DMP] %p\n", buffer);
    uint8_t *p = (uint8_t *)buffer;
    int line = 0;
    while (len--)
    {
        printf("%02X ", (int)*p++);
        if (++line % mod == 0)
            printf("\n");
    }
    printf("\n");
}
#endif