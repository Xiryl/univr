// ----------------------------------------------------------------------------
// Title:	Memory Mapped I/O support library for M6502-Splatters platform
// Author:	Stefano Centomo, Enrico Fraccaroli
// Date:	15/04/2018
// ----------------------------------------------------------------------------

#include <stdint.h>
#include <stdbool.h>
//                           PSEL Vector
#define NO_PSEL  (     0) // 00000000
#define PSEL1    (     1) // 00000001
#define PSEL2    (1 << 1) // 00000010
#define PSEL3    (1 << 2) // 00000100
#define PSEL4    (1 << 3) // 00001000
#define PSEL5    (1 << 4) // 00010000
#define PSEL6    (1 << 5) // 00100000
#define PSEL7    (1 << 6) // 01000000
#define PSEL8    (1 << 7) // 10000000

// ----------------------------------------------------------------------------
// EXECUTION
// ----------------------------------------------------------------------------
void stop_execution(void);

// ----------------------------------------------------------------------------
// PSEL
// ----------------------------------------------------------------------------
bool set_psel(uint8_t value);

// ----------------------------------------------------------------------------
// FLAGS
// ----------------------------------------------------------------------------
bool set_penable(uint8_t value);
bool set_presetn(uint8_t value);
bool set_pwrite(uint8_t value);
bool get_pready(void);

// ----------------------------------------------------------------------------
// PWDATA
// ----------------------------------------------------------------------------
// 4 Bytes
void set_pwdata_8(uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4);
void set_pwdata_16(uint16_t data1, uint16_t data2);
void set_pwdata(uint32_t data);
// 2 Bytes
void set_pwdata_15_0(uint16_t data);
void set_pwdata_31_16(uint16_t data);
// Single Byte
void set_pwdata_7_0(uint8_t data);
void set_pwdata_15_8(uint8_t data);
void set_pwdata_23_16(uint8_t data);
void set_pwdata_31_24(uint8_t data);

// ----------------------------------------------------------------------------
//PADDR
// ----------------------------------------------------------------------------
// 4 Bytes
void set_paddr_8(uint8_t addr1, uint8_t addr2, uint8_t addr3, uint8_t addr4);
void set_paddr_16(uint16_t addr1, uint16_t addr2);
void set_paddr(uint32_t addr);
// 2 Bytes  
void set_paddr_15_0(uint16_t addr);
void set_paddr_31_16(uint16_t addr);
// Single Byte
void set_paddr_7_0(uint8_t addr);
void set_paddr_15_8(uint8_t addr);
void set_paddr_23_16(uint8_t addr);
void set_paddr_31_24(uint8_t addr);

// ----------------------------------------------------------------------------
//PRDATA
// ----------------------------------------------------------------------------
// 4 Bytes
void get_prdata_8(uint8_t * data1, uint8_t * data2, uint8_t * data3, uint8_t * data4);
void get_prdata_16(uint16_t * data1, uint16_t * data2);
uint32_t get_prdata(void);
// 2 Bytes 
uint16_t get_prdata_15_0(void);
uint16_t get_prdata_31_16(void);
// Single Byte
uint8_t get_prdata_7_0(void);
uint8_t get_prdata_15_8(void);
uint8_t get_prdata_23_16(void);
uint8_t get_prdata_31_24(void);
void reset_flags(void);