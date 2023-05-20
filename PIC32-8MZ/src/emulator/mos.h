/*
** Nofrendo (c) 1998-2000 Matthew Conte (matt@conte.com)
*/
#ifndef _MOS_H_
#define _MOS_H_

#ifndef NOFREDO

#include <stddef.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

#define  HOST_LITTLE_ENDIAN
#define  INLINE       static inline  
#define  MOS_ASSERT(X)

typedef  signed char    int8;
typedef  unsigned char  uint8;

typedef  signed int     int32;
typedef  unsigned int   uint32;

#endif // NOFREDO

/* Define this to enable decimal mode in ADC / SBC (not needed in NES) */
/*#define  MOS_DECIMAL*/

#define  MOS_NUMBANKS  16
#define  MOS_BANKSHIFT 12
#define  MOS_BANKSIZE  (0x10000 / MOS_NUMBANKS)
#define  MOS_BANKMASK  (MOS_BANKSIZE - 1)

/* P (flag) register bitmasks */
#define  N_FLAG         0x80
#define  V_FLAG         0x40
#define  R_FLAG         0x20  /* Reserved, always 1 */
#define  B_FLAG         0x10
#define  D_FLAG         0x08
#define  I_FLAG         0x04
#define  Z_FLAG         0x02
#define  C_FLAG         0x01

/* Vector addresses */
#define  NMI_VECTOR     0xFFFA
#define  RESET_VECTOR   0xFFFC
#define  IRQ_VECTOR     0xFFFE

/* cycle counts for interrupts */
#define  INT_CYCLES     7
#define  RESET_CYCLES   6

#define  NMI_MASK       0x01
#define  IRQ_MASK       0x02

/* Stack is located on 6502 page 1 */
#define  STACK_OFFSET   0x0100

typedef struct
{
   uint32 min_range, max_range;
   uint8 (*read_func)(uint32 address);
} memread_t;

typedef struct
{
   uint32 min_range, max_range;
   void (*write_func)(uint32 address, uint8 value);
} memwrite_t;

#define LAST_MEMORY_HANDLER \
    {                       \
        -1, -1, NULL        \
    }

typedef struct
{
   uint8 *mem_page[MOS_NUMBANKS];  /* memory page pointers */

   memread_t *read_handler;
   memwrite_t *write_handler;

   uint32 pc_reg;
   uint8 a_reg, p_reg;
   uint8 x_reg, y_reg;
   uint8 s_reg;

   uint8 jammed;  /* is processor jammed? */
   
   uint8 int_pending, int_latency;

   int32 total_cycles, burn_cycles;
} mos_context;

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/* Functions which govern the 6502's execution */
extern void mos_reset(void);
extern int mos_execute(int total_cycles);
extern void mos_nmi(void);
extern void mos_irq(void);
extern uint8 mos_getbyte(uint32 address);
extern uint32 mos_getcycles(bool reset_flag);
extern void mos_burn(int cycles);
extern void mos_release(void);

/* Context get/set */
extern void mos_setcontext(mos_context *cpu);
extern void mos_getcontext(mos_context *cpu);

/* "driver" */
extern uint8 (*bank_readbyte)(uint32);
extern void (*bank_writebyte)(uint32, uint8);
extern uint8 (*mem_readbyte)(uint32);
extern void (*mem_writebyte)(uint32, uint8);
extern uint8 *(*mem_dma)(int page, uint32 address);

void nes_setup(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* _MOS_H_ */

