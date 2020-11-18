#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include "Timer.cuh"
#include "CheckError.cuh"

using namespace std;
using namespace timer;

const int RADIUS = 7;
const int N  = 10000000;
const int ITERATIONS = 10;
const int BLOCK_DIMENSION = 254;

__global__
void stencilKernel(const int* d_input, int N,int* d_output) {
    // indice univoco della thread
    int thdIx = blockIdx.x * blockDim.x + threadIdx.x;

    // limiti sx e dx
    int leftBound = RADIUS;
    int rightBound = N - RADIUS;

    if(thdIx < N && thdIx >= leftBound && thdIx < rightBound) {
        // sommo gli elementi dell range [ - RADIUS <- thIdx -> + RADIUS]
        for(int i = - RADIUS ; i <= RADIUS; i++) {
            d_output[thdIx] += d_input[thdIx + i];
        }
    }
}


int main() {
    Timer<DEVICE> TM_device_total;
    Timer<DEVICE> TM_device_core;
    Timer<HOST>   TM_host;

    float time_device_total = 0;
    float time_device_core = 0;
    float total_time_device_total = 0;
    float total_time_device_core = 0;
    float time_host = 0;
    float total_time_host = 0;
    int current_iteration = 0;

    cout << "RADIUS: " << RADIUS << endl;
    cout << "ITERATIONS: " << ITERATIONS << endl;
    cout << "N: " << N << endl;

    while(current_iteration++ < ITERATIONS) {
        cout << "EXECUTING ITERATION N. " << current_iteration << endl;

        // host allocation
        int* h_input      = new int[N];
        int* h_output_tmp = new int[N]; // <-- used for device result
        int* h_output     = new int[N](); // initilization to zero

        //cout << "Array initialization started ..." << endl;

        // host initialization
        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::default_random_engine generator(seed);
        std::uniform_int_distribution<int> distribution(1, 100);

        for (int i = 0; i < N; i++)
            h_input[i] = distribution(generator);

        //cout << "Host execution started ..." << endl;

        // host execution
        TM_host.start();

        for (int i = RADIUS; i < N - RADIUS; i++) {
            for (int j = i - RADIUS; j <= i + RADIUS; j++)
                h_output[i] += h_input[j];
        }

        TM_host.stop();
        time_host += TM_host.duration();
        //cout << "\t--> done" << endl;

        //cout << "Device allocation started ..." << endl;

        TM_device_total.start();

        // device memory allocation
        int *d_input, *d_output;
        SAFE_CALL( cudaMalloc( &d_input, N * sizeof(int) ))
        SAFE_CALL( cudaMalloc( &d_output, N * sizeof(int) ))

        //cout << "Memcpy CPU --> GPU started ..." << endl;
        // copy data CPU --> GPU
        SAFE_CALL( cudaMemcpy( d_input, h_input, N * sizeof(int), cudaMemcpyHostToDevice ))

        // set dimensions
        dim3 DimGrid(N/BLOCK_DIMENSION, 1, 1);
        if (N%BLOCK_DIMENSION) DimGrid.x++;
        dim3 DimBlock(BLOCK_DIMENSION, 1, 1);

        //cout << "Device execution started ..." << endl;
        // device execution
        TM_device_core.start();

        stencilKernel<<<DimGrid, DimBlock>>>(d_input, N, d_output);

        TM_device_core.stop();
        time_device_core += TM_device_core.duration();
        CHECK_CUDA_ERROR
        //cout << "\t--> done" << endl;

        //cout << "Memcpy CPU <-- GPU started ..." << endl;
        // copy data CPU <-- GPU
        SAFE_CALL( cudaMemcpy( h_output_tmp, d_output, N * sizeof(int), cudaMemcpyDeviceToHost));

        TM_device_total.stop();
        time_device_total += TM_device_total.duration();

        // check result
        for (int i = 0; i < N; i++) {
            if (h_output[i] != h_output_tmp[i]) {
                cerr << "wrong result at: " << i
                        << "\nhost:   " << h_output[i]
                        << "\ndevice: " << h_output_tmp[i] << "\n\n";
                cudaDeviceReset();
                exit(EXIT_FAILURE);
            }
        }
        cout << "\t --> Computation OK\n\n";

        // host deallocation
        delete[] h_input;
        delete[] h_output;
        delete[] h_output_tmp;

        // device deallocation
        SAFE_CALL( cudaFree( d_input ) )
        SAFE_CALL( cudaFree( d_output ) )
    }

    float m_total_host = time_host / ITERATIONS;
    float m_total_device_total = time_device_total / ITERATIONS;
    float m_total_device_core = time_device_core / ITERATIONS;
    float speedup_core = m_total_host / m_total_device_core;
    float speedup_total = m_total_host / m_total_device_total;
    cout << "RADIUS: " << RADIUS << endl;
    cout << "ITERATIONS: " << ITERATIONS << endl;
    cout << "N: " << N << endl;
    cout << "BLOCK_DIMENSION: " << BLOCK_DIMENSION << endl;
    cout << "total host: " << time_host << endl;
    cout << "total device: " << time_device_total << endl;
    cout << "core device: " << time_device_core << endl;
    cout << "media speedup core: " << speedup_core << "x" << endl;
    cout << "media speedup total: " << speedup_total << "x" << endl;

    // reset GPU
    //cudaDeviceReset();
}
