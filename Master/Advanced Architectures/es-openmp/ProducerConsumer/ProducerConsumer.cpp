#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <omp.h>
#include "Timer.hpp"

using namespace std;
using namespace timer;

void test_producer_consumer(int Buffer[32]) {
	int count = 0;
	int N_OF_TESTS = 3500;

	for(int i = 0; i < N_OF_TESTS; i++) {
		// PRODUCER
		if ((rand() % 50) == 0) {// some random computations
			if (count < 31) {
				#pragma omp critical 
				{
					++count;
					std::cout << "Thread:\t" << omp_get_thread_num()
							<< "\tProduce on index: " << count << std::endl;
					Buffer[count] = omp_get_thread_num();
				}
			}
		}

		// CONSUMER
		if ((std::rand() % 51) == 0) {		// some random computations

			if (count >= 1) {
				#pragma omp critical 
				{
					int var = Buffer[count];
					std::cout << "Thread:\t" << omp_get_thread_num()
							<< "\tConsume on index: " << count
							<< "\tvalue: " << var << std::endl;
					--count;
				}
				
			}
		}
	}
}

void test_producer_consumer_atomic(int Buffer[32]) {
	int count = 0;
	int N_OF_TESTS = 3500;

	for(int i = 0; i < N_OF_TESTS; i++) {
		// PRODUCER
		if ((rand() % 50) == 0) {// some random computations
			if (count < 31) {
				#pragma omp atomic
				++count;
				std::cout << "Thread:\t" << omp_get_thread_num()
						<< "\tProduce on index: " << count << std::endl;
				Buffer[count] = omp_get_thread_num();
			}
		}

		// CONSUMER
		if ((std::rand() % 51) == 0) {		// some random computations

			if (count >= 1) {
					int var = Buffer[count];
					std::cout << "Thread:\t" << omp_get_thread_num()
							<< "\tConsume on index: " << count
							<< "\tvalue: " << var << std::endl;
					#pragma omp atomic
					--count;
			}
		}
	}
}

int main() {
	int Buffer[32];
	std::srand(time(NULL));

	omp_set_num_threads(2);

	#pragma omp parallel 
	{
		test_producer_consumer(Buffer);
	}	
}
