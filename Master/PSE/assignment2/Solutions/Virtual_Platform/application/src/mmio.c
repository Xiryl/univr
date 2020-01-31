//--------------------------------------------
// Memory Mapped I/O support library for m6502
// Author: Stefano Centomo
// Date: 15/04/2018
// Notes:Using addresses before RAM starting point.
// RAM variable starting point = 0x29
//--------------------------------------------

#include "mmio.h"
#include "defines.h"

// ----------------------------------------------------------------------------
// Memory Mapped I/O ADDRESSES
// ----------------------------------------------------------------------------

#define STATUS          MEMORY_ACCESS(STACK_START_ADDRESS + 0x001F)

#define PRDATA_7_0      MEMORY_ACCESS(STACK_START_ADDRESS + 0x0010)
#define PRDATA_15_8     MEMORY_ACCESS(STACK_START_ADDRESS + 0x0011)
#define PRDATA_23_16    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0012)
#define PRDATA_31_24    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0013)
#define PREADY          MEMORY_ACCESS(STACK_START_ADDRESS + 0x0014)

#define PSEL_ADDR       MEMORY_ACCESS(STACK_START_ADDRESS + 0x0020)
#define PWDATA_7_0      MEMORY_ACCESS(STACK_START_ADDRESS + 0x0021)
#define PWDATA_15_8     MEMORY_ACCESS(STACK_START_ADDRESS + 0x0022)
#define PWDATA_23_16    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0023)
#define PWDATA_31_24    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0024)
#define PADDR_7_0       MEMORY_ACCESS(STACK_START_ADDRESS + 0x0025)
#define PADDR_15_8      MEMORY_ACCESS(STACK_START_ADDRESS + 0x0026)
#define PADDR_23_16     MEMORY_ACCESS(STACK_START_ADDRESS + 0x0027)
#define PADDR_31_24     MEMORY_ACCESS(STACK_START_ADDRESS + 0x0028)
#define PENABLE         MEMORY_ACCESS(STACK_START_ADDRESS + 0x0029)
#define PWRITE          MEMORY_ACCESS(STACK_START_ADDRESS + 0x002A)
#define PRESETN         MEMORY_ACCESS(STACK_START_ADDRESS + 0x002B)


/*
#define STATUS          MEMORY_ACCESS(STACK_START_ADDRESS + 0x001A)

#define PADDR_7_0       MEMORY_ACCESS(STACK_START_ADDRESS + 0x001B)
#define PADDR_15_8      MEMORY_ACCESS(STACK_START_ADDRESS + 0x001C)
#define PADDR_23_16     MEMORY_ACCESS(STACK_START_ADDRESS + 0x001D)
#define PADDR_31_24     MEMORY_ACCESS(STACK_START_ADDRESS + 0x001E)
#define PSEL_ADDR       MEMORY_ACCESS(STACK_START_ADDRESS + 0x001F)
#define PWDATA_7_0      MEMORY_ACCESS(STACK_START_ADDRESS + 0x0020)
#define PWDATA_15_8     MEMORY_ACCESS(STACK_START_ADDRESS + 0x0021)
#define PWDATA_23_16    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0022)
#define PWDATA_31_24    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0023)
#define PRDATA_7_0      MEMORY_ACCESS(STACK_START_ADDRESS + 0x0024)
#define PRDATA_15_8     MEMORY_ACCESS(STACK_START_ADDRESS + 0x0025)
#define PRDATA_23_16    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0026)
#define PRDATA_31_24    MEMORY_ACCESS(STACK_START_ADDRESS + 0x0027)
#define FLAGS           MEMORY_ACCESS(STACK_START_ADDRESS + 0x0028)
*/

#define FLAGS_PENABLE 0
#define FLAGS_PRESETN 1
#define FLAGS_PWRITE  2
#define FLAGS_PREADY  3

// ----------------------------------------------------------------------------
// EXECUTION
// ----------------------------------------------------------------------------
void stop_execution(void)
{
	STATUS = 1;
	while(true);
}

// ----------------------------------------------------------------------------
// PERIPHERAL SELECTOR
// ----------------------------------------------------------------------------
bool set_psel(uint8_t value)
{
    if ((value == 0) || CHECK_SINGLE_BIT(value))
    {
        PSEL_ADDR = value;
    }
    return false;
}

void reset_flags(void)
{

    PWRITE  = (uint8_t) 0;
    PENABLE = (uint8_t) 0;
    PRESETN = (uint8_t) 0;
    PREADY  = (uint8_t) 0; 
}
// ----------------------------------------------------------------------------
// FLAGS MANAGEMENT
// ----------------------------------------------------------------------------
bool set_penable(uint8_t value)
{

    PENABLE = value;
/*
    if (value == 0)
    {
        FLAGS = CLEAR_BIT(FLAGS, FLAGS_PENABLE);
        return true;
    }
    else if (value == 1)
    {
        FLAGS = SET_BIT(FLAGS, FLAGS_PENABLE);
        return true;
    }*/
    return false;
}

bool set_presetn(uint8_t value)
{

    PRESETN = value;
   /* if (value == 0)
    {
        FLAGS = CLEAR_BIT(FLAGS, FLAGS_PRESETN);
        return true;
    }
    else if (value == 1)
    {
        FLAGS = SET_BIT(FLAGS, FLAGS_PRESETN);
        return true;
    }*/
    return false;
}

bool set_pwrite(uint8_t value)
{
   
    PWRITE = value;
   /* if (value == 0)
    {
        FLAGS = CLEAR_BIT(FLAGS, FLAGS_PWRITE);
        return true;
    }
    else if (value == 1)
    {
        FLAGS = SET_BIT(FLAGS, FLAGS_PWRITE);
        return true;
    }*/
    return false;
}

bool get_pready(void)
{

    return PREADY;
}

// ----------------------------------------------------------------------------
// PWDATA
// ----------------------------------------------------------------------------
//-----------------------------
//4 Bytes
//-----------------------------
void set_pwdata_8(uint8_t data1, uint8_t data2, uint8_t data3, uint8_t data4)
{
    PWDATA_7_0   = data1;
    PWDATA_15_8  = data2;
    PWDATA_23_16 = data3;
    PWDATA_31_24 = data4;
}

void set_pwdata_16(uint16_t data1, uint16_t data2)
{
    PWDATA_7_0   = (data1 & 0x00FF);
    PWDATA_15_8  = (data1 & 0xFF00) >> 8;
    PWDATA_23_16 = (data2 & 0x00FF);
    PWDATA_31_24 = (data2 & 0xFF00) >> 8;
}

void set_pwdata(uint32_t data)
{
    PWDATA_7_0   = (data & 0x000000FF);
    PWDATA_15_8  = (data & 0x0000FF00) >> 8;
    PWDATA_23_16 = (data & 0x00FF0000) >> 16;
    PWDATA_31_24 = (data & 0xFF000000) >> 24;
}

//-----------------------------
// 2 Bytes
//-----------------------------
void set_pwdata_15_0(uint16_t data)
{
    PWDATA_7_0  = (uint8_t)(data & 0x00FF);
    PWDATA_15_8 = (uint8_t)((data & 0xFF00) >> 8);
}

void set_pwdata_31_16(uint16_t data)
{
    PWDATA_23_16 = ((data & 0x00ff));
    PWDATA_31_24 = ((data & 0xff00) >> 8);
}

//-----------------------------
// Single Byte
//-----------------------------
void set_pwdata_7_0(uint8_t data)
{
    PWDATA_7_0 = data;
}

void set_pwdata_15_8(uint8_t data)
{
    PWDATA_15_8 = data;
}

void set_pwdata_23_16(uint8_t data)
{
    PWDATA_23_16 = data;
}

void set_pwdata_31_24(uint8_t data)
{
    PWDATA_31_24 = data;
}

// ----------------------------------------------------------------------------
// PADDR
// ----------------------------------------------------------------------------
//-----------------------------
//4 Bytes
//-----------------------------
void set_paddr_8(uint8_t addr1, uint8_t addr2, uint8_t addr3, uint8_t addr4)
{
    PADDR_7_0   = addr1;
    PADDR_15_8  = addr2;
    PADDR_23_16 = addr3;
    PADDR_31_24 = addr4;
}

void set_paddr_16(uint16_t addr1, uint16_t addr2)
{
    PADDR_7_0   = (addr1 & 0x00ff);
    PADDR_15_8  = (addr1 & 0xff00) >> 8;
    PADDR_23_16 = (addr2 & 0x00ff);
    PADDR_31_24 = (addr2 & 0xff00) >> 8;
}

void set_paddr(uint32_t addr)
{
    PADDR_7_0   = (addr & 0x000000ff);
    PADDR_15_8  = (addr & 0x0000ff00) >> 8;
    PADDR_23_16 = (addr & 0x00ff0000) >> 16;
    PADDR_31_24 = (addr & 0xff000000) >> 24;
}

//-----------------------------
// 2 Bytes
//-----------------------------
void set_paddr_15_0(uint16_t addr)
{
    PADDR_7_0  = (addr & 0x00ff);
    PADDR_15_8 = ((addr & 0xff00) >> 8 );
}

void set_paddr_31_16(uint16_t addr)
{
    PADDR_23_16 = (addr & 0x00ff);
    PADDR_31_24 = ((addr & 0xff00) >> 8 );
}

//-----------------------------
// Single Byte
//-----------------------------
void set_paddr_7_0(uint8_t addr)
{
    PADDR_7_0 = addr; 
}

void set_paddr_15_8(uint8_t addr)
{
    PADDR_15_8 = addr;
}

void set_paddr_23_16(uint8_t addr)
{
    PADDR_23_16 = addr;
}

void set_paddr_31_24(uint8_t addr)
{
    PADDR_31_24 = addr;
}

// ----------------------------------------------------------------------------
// PRDATA
// ----------------------------------------------------------------------------
//-----------------------------
//4 Bytes
//-----------------------------
void get_prdata_8(uint8_t * data1, uint8_t * data2, uint8_t * data3, uint8_t * data4)
{
    (*data1) = PRDATA_7_0;
    (*data2) = PRDATA_15_8;
    (*data3) = PRDATA_23_16;
    (*data4) = PRDATA_31_24;
}

void get_prdata_16(uint16_t * data1, uint16_t * data2)
{
    (*data1) = (((uint16_t)PRDATA_15_8  ) << 8) + ((uint16_t)PRDATA_7_0);
    (*data2) = (((uint16_t)PRDATA_31_24 ) << 8) + ((uint16_t)PRDATA_23_16);
}

uint32_t get_prdata(void)
{
    return  (((uint32_t) PRDATA_31_24) << 24) + (((uint32_t) PRDATA_23_16) << 16) +
            (((uint32_t) PRDATA_15_8)  << 8)  + ((uint32_t)  PRDATA_7_0);
}

//-----------------------------
// 2 Bytes
//-----------------------------
uint16_t get_prdata_15_0(void)
{
    return (((uint16_t) PRDATA_15_8) << 8) + ((uint16_t) PRDATA_7_0);
}

uint16_t get_prdata_31_16(void)
{
    return (((uint16_t) PRDATA_31_24) << 8) + ((uint16_t) PRDATA_23_16);
}

//-----------------------------
// Single Byte
//-----------------------------
uint8_t get_prdata_7_0(void)
{
    return (uint8_t) PRDATA_7_0;
}

uint8_t get_prdata_15_8(void)
{
    return (uint8_t) PRDATA_15_8;
}

uint8_t get_prdata_23_16(void)
{
    return (uint8_t) PRDATA_23_16;
}

uint8_t get_prdata_31_24(void)
{
    return (uint8_t) PRDATA_31_24;
}

