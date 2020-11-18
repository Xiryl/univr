#include <chrono>
#include <iostream>
#include <random>
#include <omp.h>
#include "Timer.hpp"

using namespace std;

int main() {
    using namespace timer;
    float time_seq, time_prallel = 0;
    int N = (1 << 25);

    int* Array = new int[N];
    const int to_find1 = 18;        //search [ .. ][ .. ][ 18 ][ 64 ][ .. ]
    const int to_find2 = 64;

    bool do_another_cycle = true; // in case the seed doesn't generate the two numbers

    while (do_another_cycle == true) {

        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::chrono::time_point<std::chrono::system_clock> start, end;
        std::default_random_engine generator (seed);
        std::uniform_int_distribution<int> distribution(1, 10000);

        for (int i = 0; i < N; ++i)
            Array[i] = distribution(generator);

        // -------------------------- sequential ----------------------------------
    
        cout << "Sequential search started" << endl;

        Timer<HOST> TM;
        TM.start();

        int index = -1;
        for (int i = 0; i < N - 1; ++i) {
            if (Array[i] == to_find1 && Array[i + 1] == to_find2) {
                index = i;
                break;
            }
        }

        TM.stop();
        time_seq = TM.duration();

        if(index != -1) {
            cout << "---> Found at index: " << index << endl;
        } else {
            cout << "---> Not found." << endl;
        }

        // -------------------------- parallel ------------------------------------

        cout << "Parallel search started" << endl;

        TM.start();

        int index_par = -1;
        bool found = false;
        #pragma omp parallel for shared(found)
        for (int i = 0; i < N - 1; ++i) {
            if (found == false && Array[i] == to_find1 && Array[i + 1] == to_find2) {
                index_par = i;
                found = true;
            }
        }

        TM.stop();
        time_prallel = TM.duration();

        if(index_par !=- 1) {
            cout << "---> Found at index: " << index_par << endl;
        } else {
            cout << "---> Not found." << endl;
        }

        if(index == index_par && index_par != -1) {
            do_another_cycle = false;
            cout << "\n--------\nREPORT:\n--------" << 
                    "\n\tEquals: true" <<
                    "\n\tSequential: " << time_seq << " ms"
                    "\n\tParallel: " << time_prallel << " ms" <<
                    "\n\tSpeedUp: " << std::setprecision(2)<<(time_seq/time_prallel)  << "x" << endl;
        } else {
            cout << "\n...Seems the seed doesn't create 18-64 items. I'll try again...\n" << endl;
        }
    }
}
