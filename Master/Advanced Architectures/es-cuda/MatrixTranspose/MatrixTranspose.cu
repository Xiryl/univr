#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include "Timer.cuh"
#include "CheckError.cuh"

using namespace std;
using namespace timer;

const int N  = 1000;
const int ITERATIONS = 10;
const int BLOCK_SIZE_X = 16;
const int BLOCK_SIZE_Y = 16;

__global__
void matrixTransposeKernel(const int* d_matrix_in,
                           int        N,
                           int*       d_matrix_out) {
      // row and col for actual thread
      int row = threadIdx.x + (blockDim.x * blockIdx.x);
      int col = threadIdx.y + (blockDim.y * blockIdx.y);
  
      if (row < N && col < N) {
          d_matrix_out[row * N + col] = d_matrix_in[col * N + row];
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

    while(current_iteration++ < ITERATIONS) {
        cout << "EXECUTING ITERATION N. " << current_iteration << endl;

        // -------------------------------------------------------------------------
        // HOST MEMORY ALLOCATION
        int* h_matrix_in  = new int[N * N];
        int* h_matrix_tmp = new int[N * N]; // <-- used for device result
        int* h_matrix_out = new int[N * N];

        // -------------------------------------------------------------------------
        // HOST INITILIZATION
        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::default_random_engine generator(seed);
        std::uniform_int_distribution<int> distribution(1, 100);

        for (int i = 0; i < N * N; i++)
            h_matrix_in[i] = distribution(generator);

        // -------------------------------------------------------------------------
        // HOST EXECUTIION
        TM_host.start();

        for (int i = 0; i < N ; i++) {
            for (int j = 0; j < N ; j++)
                h_matrix_out[i * N + j] = h_matrix_in[j * N + i];
        }

        TM_host.stop();
        time_host += TM_host.duration();

        TM_device_total.start();

        // -------------------------------------------------------------------------
        // DEVICE MEMORY ALLOCATION
        int *d_matrix_in, *d_matrix_out;
        SAFE_CALL( cudaMalloc( &d_matrix_in, N * N * sizeof(int) ) )
        SAFE_CALL( cudaMalloc( &d_matrix_out, N * N * sizeof(int) ) )

        // -------------------------------------------------------------------------
        // COPY DATA FROM HOST TO DEVIE
        SAFE_CALL( cudaMemcpy( d_matrix_in, h_matrix_in, N * N * sizeof(int), cudaMemcpyHostToDevice ))

        // -------------------------------------------------------------------------
        // DEVICE EXECUTION
        TM_device_core.start();

        dim3 DimGrid(N/BLOCK_SIZE_X, N/BLOCK_SIZE_Y, 1);
        if (N%BLOCK_SIZE_X) DimGrid.x++;
        if (N%BLOCK_SIZE_Y) DimGrid.y++;
        dim3 DimBlock(BLOCK_SIZE_X, BLOCK_SIZE_Y, 1);

        matrixTransposeKernel<<< DimGrid , DimBlock >>>(d_matrix_in, N, d_matrix_out);

        CHECK_CUDA_ERROR
        TM_device_core.stop();
        time_device_core += TM_device_core.duration();


        // -------------------------------------------------------------------------
        // COPY DATA FROM DEVICE TO HOST
        SAFE_CALL( cudaMemcpy( h_matrix_tmp, d_matrix_out, N * N * sizeof(int), cudaMemcpyDeviceToHost));

        TM_device_total.stop();
        time_device_total += TM_device_total.duration();

        // -------------------------------------------------------------------------
        // RESULT CHECK
        for (int i = 0; i < N * N; i++) {
            if (h_matrix_out[i] != h_matrix_tmp[i]) {
                std::cerr << "wrong result at: ("
                        << (i / N) << ", " << (i % N) << ")"
                        << "\nhost:   " << h_matrix_out[i]
                        << "\ndevice: " << h_matrix_tmp[i] << "\n\n";
                cudaDeviceReset();
                std::exit(EXIT_FAILURE);
            }
        }
        std::cout << "<> Correct\n\n";

        // -------------------------------------------------------------------------
        // HOST MEMORY DEALLOCATION
        delete[] h_matrix_in;
        delete[] h_matrix_out;
        delete[] h_matrix_tmp;

        // -------------------------------------------------------------------------
        // DEVICE MEMORY DEALLOCATION
        SAFE_CALL( cudaFree( d_matrix_in ) )
        SAFE_CALL( cudaFree( d_matrix_out ) )
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

    // -------------------------------------------------------------------------
    // cudaDeviceReset();
}
