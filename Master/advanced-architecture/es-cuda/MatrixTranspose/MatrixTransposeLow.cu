#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include "Timer.cuh"
#include "CheckError.cuh"


using namespace std;
using namespace timer;

__global__
void matrixTransposeKernel(int* d_matrix_in,
                           int        N) {
      // row and col for actual thread
      int row = threadIdx.x + (blockDim.x * blockIdx.x);
      int col = threadIdx.y + (blockDim.y * blockIdx.y);

    if ( row != col && row < col && col < N) {
        d_matrix_in[row * N + col] = d_matrix_in[row * N + col] + d_matrix_in[col * N + row]; //  a=a+b;
        d_matrix_in[col * N + row] = d_matrix_in[row * N + col] - d_matrix_in[col * N + row]; //  b=a-b;
        d_matrix_in[row * N + col] =  d_matrix_in[row * N + col] - d_matrix_in[col * N + row]; // a=a-b;
    }
}

const int N  = 1000;
const int ITERATIONS = 10;
const int BLOCK_SIZE_X = 16;
const int BLOCK_SIZE_Y = 16;

int main() {
    Timer<DEVICE> TM_device_total;
    Timer<DEVICE> TM_device_core;
    Timer<HOST>   TM_host;

    float time_device_total = 0;
    float time_device_core = 0;
    float time_host = 0;
    int current_iteration = 0;

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
    TM_host.print("MatrixTranspose host:   ");

    // -------------------------------------------------------------------------
    // DEVICE MEMORY ALLOCATION
    int *d_matrix_in, *d_matrix_out;
    SAFE_CALL( cudaMalloc( &d_matrix_in, N * N * sizeof(int) ) )
    // SAFE_CALL( cudaMalloc( &d_matrix_out, N * N * sizeof(int) ) )

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

    matrixTransposeKernel<<< DimGrid , DimBlock >>>(d_matrix_in, N);

    TM_device_core.stop();
    CHECK_CUDA_ERROR
    TM_device_core.print("MatrixTranspose device: ");

    std::cout << std::setprecision(1)
              << "Speedup: " << TM_host.duration() / TM_device_core.duration()
              << "x\n\n";

    // -------------------------------------------------------------------------
    // COPY DATA FROM DEVICE TO HOST
    SAFE_CALL( cudaMemcpy( h_matrix_tmp, d_matrix_in, N * N * sizeof(int), cudaMemcpyDeviceToHost));

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
    //delete[] h_matrix_out;
    delete[] h_matrix_tmp;

    // -------------------------------------------------------------------------
    // DEVICE MEMORY DEALLOCATION
    SAFE_CALL( cudaFree( d_matrix_in ) )
    // SAFE_CALL( cudaFree( d_matrix_out ) )

    // -------------------------------------------------------------------------
    // cudaDeviceReset();
}
