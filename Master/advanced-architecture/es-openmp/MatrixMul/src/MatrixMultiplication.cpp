#include "MatrixMultiplication.hpp"
#include <stdio.h>
#include <iostream>
#include <omp.h>

void sequentialMatrixMatrixMul(int** A, int** B, int** C) {
	for (int row = 0; row != ROWS; ++row) {
 		for (int col = 0; col != COLS; ++col) {
			int sum = 0;
			for (int k = 0; k != COLS; ++k)
				sum += A[row][k] * B[k][col];
			C[row][col] = sum;
		}
	}
}

void openmpMatrixMatrixMul(int** A, int** B, int** C) {
	#pragma omp parallel for firstprivate(ROWS, COLS, A, B)
	for (int row = 0; row < ROWS; row++) {
 		for (int col = 0; col < COLS; col++) {
			int sum = 0;
			for (int k = 0; k != COLS; ++k) {
				sum += A[row][k] * B[k][col];
			}
			C[row][col] = sum;
		}
	}
}

bool isMatrixEquals(int** A, int** B) {
	int row, col = 0;
	for (; row < ROWS; row++) {
 		for (col = 0; col < COLS; col++) {
			if(A[row][col] != B[row][col]) {
				return false;
			}
		}
	}
	return true;
}