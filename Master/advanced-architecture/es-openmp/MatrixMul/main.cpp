#include <chrono>
#include <iostream>
#include <random>
#include "MatrixMultiplication.hpp"
#include <omp.h>
#include "Timer.hpp"

using namespace std;

int main() {
    using namespace timer;
    float time_seq, time_prallel = 0;
    
    // -------------------- Matrix Allocation ---------------------------------

    int** A = new int*[ROWS];
    int** B = new int*[ROWS];
    int** C_seq = new int*[ROWS];
    int** C_par = new int*[ROWS];

    for (int i = 0; i < ROWS; i++) {
        A[i] = new int[COLS];
        B[i] = new int[COLS];
        C_seq[i] = new int[COLS];
        C_par[i] = new int[COLS];
    }

    // -------------------- Matrix Filling ------------------------------------

    cout << "Matrix filling started" << endl;

    unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
    std::default_random_engine generator (seed);
    std::uniform_int_distribution<int> distribution(1, 100);

    for (int i = 0; i < ROWS; ++i) {
        for (int j = 0; j < COLS; ++j)
            A[i][j] = distribution(generator);
    }

    for (int i = 0; i < ROWS; ++i) {
        for (int j = 0; j < COLS; ++j)
            B[i][j] = distribution(generator);
    }
    
    cout << "---> Done." << endl;

    // ----------------- Matrix Multiplication Sequential ----------------------

    cout << "Sequential multiplication srated" << endl;

    Timer<HOST> TM;
    TM.start();

    sequentialMatrixMatrixMul(A, B, C_seq);

    TM.stop();
    time_seq = TM.duration();
    cout << "---> Done." << endl;

    // ----------------- Matrix Multiplication OPENMP -------------------------

    cout << "Prallel multiplication srated with " << omp_get_max_threads() << " threads" << endl;
    TM.start();

    openmpMatrixMatrixMul(A, B, C_par);

    TM.stop();
    time_prallel = TM.duration();
    cout << "---> Done." << endl;
    
    // ----------------- Check the results (C_seq = C_par) ---------------------

    cout << "Check results started" << endl;

    if(isMatrixEquals(C_seq, C_par)) {
        cout << "\n--------\nREPORT:\n--------" << 
                "\n\tEquals: true" <<
                "\n\tSequential: " << time_seq << " ms"
                "\n\tParallel: " << time_prallel << " ms" <<
                "\n\tSpeedUp: " << std::setprecision(2)<<(time_seq/time_prallel)  << "x" << endl;
    } else {
        cout << "----------\nREPORT:\n----------\n" << 
                "\n\tEquals: false" << endl;
    }
}
