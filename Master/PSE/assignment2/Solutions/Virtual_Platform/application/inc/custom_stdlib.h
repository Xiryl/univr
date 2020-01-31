#ifndef CUSTOM_STDLIB
#define CUSTOM_STDLIB

/// @brief Allows to set the seed of the random value generator.
void srand(int x);

/// The maximum value returned by the rand function.
#define RAND_MAX ((1U << 15) - 1)

/// @brief Generates a random value.
int rand(void);

#endif