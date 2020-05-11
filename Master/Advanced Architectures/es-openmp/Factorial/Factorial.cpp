#include <iostream>
#include <omp.h>
#include "Timer.hpp"

using namespace std;

int main() {
    using namespace timer;
    int N = (1 << 30);
    float time_seq, time_prallel = 0;
    double factorial = 1, factorial_par = 1;
    
    //---------------------------- sequential ---------------------------------

    cout << "Sequential factorial started" << endl;

    Timer<HOST> TM;
    TM.start();
    
    for (int i = 1; i <= N; ++i)
        factorial *= i;
    
    TM.stop();
    time_seq = TM.duration();
    cout << "---> Done." << endl;

    //----------------------------- parallel ----------------------------------

    cout << "Parallel factorial started" << endl;

    TM.start();

    #pragma omp parallel for shared(factorial_par) firstprivate(N)
    for (int i = 1; i <= N; ++i) {
        factorial_par *= i;
    }
        
    TM.stop();
    time_prallel = TM.duration();
    cout << "---> Done." << endl;

    if(factorial_par == factorial) {
        cout << "\n--------\nREPORT:\n--------" <<
                        "\n\tEquals: true" <<
                        "\n\tSequential: " << time_seq << " ms"
                        "\n\tParallel: " << time_prallel << " ms" <<
                        "\n\tSpeedUp: " << std::setprecision(2)<<(time_seq/time_prallel)  << "x" << endl;
    } else {
        cout << "\n--------\nREPORT:\n--------" << 
                "\n\tEquals: false" << endl;
    }
}
