#ifndef DEFINES
#define DEFINES

/// The maximum length of a string.
#define MAX_STRING_LENGTH 125
/// Starting address of the stack.
#define STACK_START_ADDRESS 0x3C00

/// Function used to access memory.
#define MEMORY_ACCESS(address) (*(volatile char*)(address))
// Set the bit at the given *position* of the given *variable* to 1.
#define SET_BIT(variable, position)   (((variable) |=  (1UL << (position))))
// Set the bit at the given *position* of the given *variable* to 0.
#define CLEAR_BIT(variable, position) (((variable) &= ~(1UL << (position))))
// Checks (true/false) if the bit the given *position* of the given *variable* is 1.
#define CHECK_BIT(variable, position) (((variable) &   (1UL << (position))) != 0)
// This mask checks if only one bit is set.
#define CHECK_SINGLE_BIT(variable)    ((variable) && !((variable) & ((variable) - 1)))

/// @brief Structure to convert uint in float bit to bit.
typedef union 
{
    uint32_t     uint32;
    float        floating_point;
} ieee754_single_precision;

#endif