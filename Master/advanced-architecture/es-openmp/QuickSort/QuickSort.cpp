#include <algorithm>
#include <chrono>
#include <iostream>
#include <random>
#include <omp.h>
#include "Timer.hpp"

using namespace std;
using namespace timer;

// ---------- DO NOT MODIFY ----------------------------------------------------
int partition(int array[], const int start, const int end) {
    int p = start;
    int pivot_element = array[end];
    for(int i = start; i < end; i++) {
        if(array[i] < pivot_element) {
            std::swap(array[i], array[p]);
            ++p;
        }
    }
    std::swap(array[p], array[end]);
    return p;
}
//------------------------------------------------------------------------------

void quick_sort(int array[], const int start, const int end) {
    if(start < end) {
        int pivot = partition(array, start, end);
        quick_sort(array, start, pivot - 1);
        quick_sort(array, pivot + 1, end);
    }
}

void quick_sort_parallel(int array[], const int start, const int end) {
    if(start < end) {

        int pivot = partition(array, start, end);
        
        #pragma omp task firstprivate(start, pivot) shared(array)
        quick_sort(array, start, pivot - 1);

         #pragma omp task firstprivate(start, pivot) shared(array)
        quick_sort(array, pivot + 1, end);
    }
}

template<typename T>
void print_array(T* array, int size, const char* str) {
    std::cout << str << "\n";
    for (int i = 0; i < size; ++i)
        std::cout << array[i] << ' ';
    std::cout << "\n" << std::endl;
}


int main() {
    const int N = 100000;
    cout << "QuickSort started, N:" << N << endl;
    Timer<HOST> TM;
    float time_seq, time_prallel = 0;

    unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
    std::default_random_engine generator (seed);
    std::uniform_int_distribution<int> distribution(1, 100);

    int* input = new int[N];
    int* input_par = new int[N];
    for (int i = 0; i < N; ++i) {
        input[i] = distribution(generator);
        input_par[i] = input[i];
    }

    //print_array(input, N, "\nInput:");
    //print_array(input_par, N, "\nInput par:");

    cout << " --> seq. start" << endl;
    TM.start();
    quick_sort(input, 0, N - 1);
    TM.stop();
    time_seq = TM.duration();
    cout << " --> seq. end" << endl;

    cout << " --> parall. start" << endl;
    TM.start();
    #pragma omp parallel
    {
        #pragma omp single
        {
            quick_sort_parallel(input_par, 0, N - 1);
        }
    }
    
    TM.stop();
    time_prallel = TM.duration();
    cout << " --> parall. end" << endl;
    

    cout << "Seq: " << time_seq << "ms" << endl;
    cout << "Par: " << time_prallel << "ms" << endl;
    cout << "Speedup: " << (time_seq/time_prallel) << "x" << endl;

    //print_array(input, N, "Sorted:");
    //print_array(input_par, N, "Sorted par:");
}
