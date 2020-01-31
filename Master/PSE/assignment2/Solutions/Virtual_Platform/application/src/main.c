//----------------------------------------------------------
//-- TITLE: Example of C main code rom for mos6502
//--
//-- Author: Stefano Centomo
//--
//-- Date:19/04/2018
//----------------------------------------------------------
//---------------------------------------
//---------------------------------------
//
//	M6502 
//	SUPPORTED TYPES & DIMENSIONS
//
//  int 		=>	16 bits	
//  char		=>	8 bits
//  uint8_t/int8_t	=>	8 bits
//  uint16_t/int16_t	=>	16 bits
//  uint32_t/int32_t	=>	32 bits
//  float/double	=> not supported
//	
//---------------------------------------
//---------------------------------------


#include <stdbool.h>
#include "custom_stdlib.h"
#include "routines.h"


static void test_multiplier() 
{
	// VARIABLES
	uint16_t op1	= 5;
	uint16_t op2	= 2;
	uint32_t result	= 0;

	// Test the multiplier pheripheral
 	result = mul(op1, op2);
 	//Write the result on IO Module
 	io_write(result);
 	//Read new data from IO Module
	op2	= (uint16_t) io_read();
	//Execute multiplication with new op2
 	result = mul(op1, op2);
 	//Write result on IO Module
 	io_write(result);
}

static void test_multiplierIEEE754_verilog(
	uint32_t op1, 
	uint32_t op2, 
	uint32_t *result) 
{
	// Test the multiplier IEEE754 floating-point pheripheral.
 	*result = mulIEEE754_verilog(op1, op2);
}

static void test_multiplierIEEE754_vhdl(
	uint32_t op1, 
	uint32_t op2,
	uint32_t *result) 
{
	// Test the multiplier IEEE754 floating-point pheripheral.
 	*result = mulIEEE754_vhdl(op1, op2);
}

int main()
{
	//test_multiplier();

	// VARIABLES
	uint32_t op1	= 0x40400000; // 2.0
	uint32_t op2	= 0x40000000; // 0.5

	uint32_t res1, res2;
	uint32_t equals;

	test_multiplierIEEE754_verilog(op1, op2, &res1);
	test_multiplierIEEE754_vhdl(op1, op2, &res2);

	if (res1 == res2)
	{
		io_write(1);
	}
	else 
	{
		io_write(0);
	}

	equals = io_read();

	return 0;
}
