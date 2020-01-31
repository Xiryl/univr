//-------------------------------------------------------------
// Title:	Driver Library for m6502-Splatters platform
// Author:	Stefano Centomo
// Date:	15/06/2018
//-------------------------------------------------------------
#include "mmio.h"
#include "stdbool.h"
#include "defines.h"

// Send op1 and op2 to multiplier connected to psel1, and return the result.
uint32_t mul(uint16_t op1, uint16_t op2);
// WRITE to IO module
void io_write(uint32_t data);
// READ from IO module
uint32_t io_read(void);

// Add your driver here!

/** @brief Multiplier floating-point IEEE754 connected to psel3,
 * with the implementation in Verilog.
 * @param op1 The first operand in floating-point.
 * @param op2 The second operand in floating-point.
 * @return The result of floating-point multiplication.
 */
uint32_t mulIEEE754_verilog(uint32_t op1, uint32_t op2);

/** @brief Multiplier floating-point IEEE754 connected to psel4,
 * with the implementation in VHDL.
 * @param op1 The first operand in floating-point.
 * @param op2 The second operand in floating-point.
 * @return The result of floating-point multiplication.
 */
uint32_t mulIEEE754_vhdl(uint32_t op1, uint32_t op2);
