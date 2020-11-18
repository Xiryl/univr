#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include "Timer.cuh"
#include "CheckError.cuh"

using namespace std;
using namespace timer;

const int BLOCK_SIZE_X = 16; // dato da width / tile width
const int BLOCK_SIZE_Y = 16;
const int ITERATIONS = 10;
const int N = 300;

__global__
void matrixMultiplicationKernel(const int* d_matrixA,
                                const int* d_matrixB,
                                int        N,
                                int*       d_matrixC) {
    // row and col for actual thread
    int row = threadIdx.x + (blockDim.x * blockIdx.x);
    int col = threadIdx.y + (blockDim.y * blockIdx.y);

    if (row < N && col < N) {
        // element of matrix computed
        int value = 0;

        for (int i = 0; i < N; i++) {
            value += d_matrixA[row * N + i] * d_matrixB[i * N + col];
        }
    
        d_matrixC[row * N + col] = value;
    }
}

int main() {
    Timer<DEVICE> TM_device_total;
    Timer<DEVICE> TM_device_core;
    Timer<HOST>   TM_host;

    float time_device_total = 0;
    float time_device_core = 0;
    float time_host = 0;
    int current_iteration = 0;

    // host initalization
    while(current_iteration++ < ITERATIONS) {
        cout << "EXECUTING ITERATION N. " << current_iteration << endl;

        // host allocation
        int* h_matrixA    = new int[N * N];
        int* h_matrixB    = new int[N * N];
        int* h_matrix_tmp = new int[N * N]; // <-- used for device result
        int* h_matrixC    = new int[N * N];

        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::default_random_engine generator(seed);
        std::uniform_int_distribution<int> distribution(1, 100);

        for (int i = 0; i < N * N; i++) {
            h_matrixA[i] = distribution(generator);
            h_matrixB[i] = distribution(generator);
        }

        // host execution
        TM_host.start();

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                int sum = 0;
                for (int k = 0; k < N; k++)
                    sum += h_matrixA[i * N + k] * h_matrixB[k * N + j];
                h_matrixC[i * N + j] = sum;
            }
        }

        TM_host.stop();
        time_host += TM_host.duration();

        TM_device_total.start();

        // device allocation
        int *d_matrixA, *d_matrixB, *d_matrixC;
        SAFE_CALL( cudaMalloc(  &d_matrixA, N * N * sizeof(int) ) )
        SAFE_CALL( cudaMalloc(  &d_matrixB, N * N * sizeof(int) ) )
        SAFE_CALL( cudaMalloc(  &d_matrixC, N * N * sizeof(int) ) )

        // copy data CPU -> GPU
        SAFE_CALL( cudaMemcpy( d_matrixA, h_matrixA, N * N * sizeof(int), cudaMemcpyHostToDevice ))
        SAFE_CALL( cudaMemcpy( d_matrixB, h_matrixB, N * N * sizeof(int), cudaMemcpyHostToDevice ))

        dim3 DimGrid(N/BLOCK_SIZE_X, N/BLOCK_SIZE_Y, 1);
        if (N%BLOCK_SIZE_X) DimGrid.x++;
        if (N%BLOCK_SIZE_Y) DimGrid.y++;
        dim3 DimBlock(BLOCK_SIZE_X, BLOCK_SIZE_Y, 1);

        // device execution
        TM_device_core.start();

        matrixMultiplicationKernel<<< DimGrid, DimBlock >>> (d_matrixA, d_matrixB, N, d_matrixC);

        TM_device_core.stop();
        time_device_core += TM_device_core.duration();
        CHECK_CUDA_ERROR

        // copy data CPU <-- GPU
        SAFE_CALL( cudaMemcpy( h_matrix_tmp, d_matrixC, N * N * sizeof(int), cudaMemcpyDeviceToHost));

        TM_device_total.stop();
        time_device_total += TM_device_total.duration();

        // check res
        for (int i = 0; i < N * N; i++) {
            if (h_matrixC[i] != h_matrix_tmp[i]) {
                std::cerr << "wrong result at: ("
                        << (i / N) << ", " << (i % N) << ")"
                        << "\nhost:   " << h_matrixC[i]
                        << "\ndevice: " << h_matrix_tmp[i] << "\n\n";
                cudaDeviceReset();
                std::exit(EXIT_FAILURE);
            }
        }
        cout << "\t --> Computation OK\n\n";

        // host deallocation
        delete[] h_matrixA;
        delete[] h_matrixB;
        delete[] h_matrixC;
        delete[] h_matrix_tmp;

        // device deallocation
        
        SAFE_CALL( cudaFree( d_matrixA ) )
        SAFE_CALL( cudaFree( d_matrixB ) )
        SAFE_CALL( cudaFree( d_matrixC ) )
    }

    float m_total_host = time_host / ITERATIONS;
    float m_total_device_total = time_device_total / ITERATIONS;
    float m_total_device_core = time_device_core / ITERATIONS;
    float speedup_core = m_total_host / m_total_device_core;
    float speedup_total = m_total_host / m_total_device_total;
    cout << "BLOCK_SIZE: " << BLOCK_SIZE_X << endl;
    cout << "ITERATIONS: " << ITERATIONS << endl;
    cout << "N: " << N << endl;
    cout << "total host: " << time_host << endl;
    cout << "total device: " << time_device_total << endl;
    cout << "core device: " << time_device_core << endl;
    cout << "media speedup core: " << speedup_core << "x" << endl;
    cout << "media speedup total: " << speedup_total << "x" << endl;

    // reset
    // cudaDeviceReset();
}
