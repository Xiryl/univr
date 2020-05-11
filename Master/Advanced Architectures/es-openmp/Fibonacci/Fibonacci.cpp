#include <iostream>
#include <omp.h>
#include "Timer.hpp"

using namespace std;
using namespace timer;

long long int fibonacci(long long int value, int level)
{
    if (value <= 1)
        return 1;

    long long int fib_left, fib_right;
    fib_left = fibonacci(value - 1, level + 1);
    fib_right = fibonacci(value - 2, level + 1);

    return fib_left + fib_right;
}

long long int fibonacci_par(long long int value, int level)
{
    if (value <= 1)
        return 1;

    long long int fib_left, fib_right;

#pragma omp task firstprivate(value, level) shared(fib_left)
    fib_left = fibonacci(value - 1, level + 1);

#pragma omp task firstprivate(value, level) shared(fib_right)
    fib_right = fibonacci(value - 2, level + 1);

#pragma omp taskwait

    return fib_left + fib_right;
}

int main()
{

    Timer<HOST> TM;
    float time_par, time_seq, m_seq, m_par = 0;

    int value = 40;
    int test_cases = 10;

    cout << "Starting Fibonacci.cpp"
         << "\n --> Value: " << value << "\n --> n. Test:" << test_cases << endl;

    for (int i = 0; i <= test_cases; i++)
    {
        cout << "Executing iteration: " << i << endl;
        TM.start();
        long long int result_seq = fibonacci(value, 1);
        TM.stop();
        time_seq += TM.duration();

        TM.start();
#pragma omp parallel firstprivate(value)
        {
#pragma omp single
            {
                long long int result_par = fibonacci_par(value, 1);
            }
        }
        TM.stop();
        time_par += TM.duration();
    }

    m_seq = time_seq / test_cases;
    m_par = time_par / test_cases;

    cout << "\n--------\nREPORT:\n--------"
         << "\n\tTotal Sequential: " << time_seq << " ms"
                                                    "\n\tMedia Sequential: "
         << m_seq << " ms"
                     "\n\tTotal Parallel: "
         << time_par << " ms"
         << "\n\tMedia Pralallel: " << m_par << " ms"
                                                "\n\tSpeedUp: "
         << std::setprecision(2) << (m_seq / m_par) << "x" << endl;
}
