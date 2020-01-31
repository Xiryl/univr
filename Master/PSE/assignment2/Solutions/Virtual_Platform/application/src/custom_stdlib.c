#include "custom_stdlib.h"

/// Seed used to generate random numbers.
static int rseed;

void srand(int x)
{
    rseed = x;
}

/// @brief Returns a pseudo-random integral number in the range
/// between 0 and RAND_MAX.
int rand(void)
{
    return rseed = (rseed * 1103515245 + 12345) & RAND_MAX;
}