#ifndef __define_UT_h__
#define __define_UT_h__

#include <systemc.h>

struct iostruct 
{
    sc_int<32> datain_op1;
    sc_int<32> datain_op2;
    sc_int<32> result;
};

/// @brief Structure to convert uint in float bit to bit.
typedef union 
{
    unsigned int uint;
    float        floating_point;
} ieee754_single_precision;

#define ADDRESS_TYPE int
#define DATA_TYPE iostruct

#endif
