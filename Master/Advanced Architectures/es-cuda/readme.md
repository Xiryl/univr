# 1D Stencil

#### Kernel
```cpp
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
```
#### Report

| Name                | Res    |
|---------------------|----------|
| RADIUS              | 7        |
| ITERATIONS          | 10       |
| N                   | 10000000 |
| BLOCK_DIMENSION     | 254      |
| total host          | 6035.5   |
| total device        | 305.563  |
| core device         | 33.3801  |
| media speedup core  | 180.811x |
| media speedup total | 19.7521x |

# Matrix multiplication

#### Kernel
```cpp
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
```
#### Report

| Field | Res | Res | Res | Res |
|-|-|-|-|-|
|BLOCK_SIZE| 16|16|8|32|
|ITERATIONS| 10| 10| 10|10|
|N| 300|1000|1000|1000|
|total host| 710.426|35662.2|34815.8| 34342.5|
|total device| 32.0477|1028.02|582.248|1964.61|
|core device| 27.7753| 997.085|552.033|1934.36|
|media speedup core| 25.5776x|35.7665x|63.0683x|17.7539x|
|media speedup total| 22.1677x|34.6903x|59.7954x|17.4806x|


# Matrix Transpose

#### Kernel V1
```cpp
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
```

#### Kernel V2
```cpp
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
```

#### Report (kernel v1)

| Field | Res | Res | Res |
|-|-|-|-|
|BLOCK_SIZE| 16|16 | 8|
|ITERATIONS| 10|10|10|
|N| 1000|10000| 10000|
|total host| 58.7886| 8042.11 | 7970.82|
|total device| 22.994| 2770.7 |  2798.9|
|core device| 1.05696|81.4017 | 113.57|
|media speedup core| 55.6204x|98.7953x | 70.1844x|
| media speedup total| 2.5567x | 2.90256x |  2.84785x |
