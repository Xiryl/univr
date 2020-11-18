#!/bin/bash
DIR=`dirname $0`


#nvcc -w -std=c++11 -arch=sm_62 "$DIR"/1DStencil.cu -I"$DIR"/include -o stencil
nvcc -w -std=c++11 -arch=sm_30 "$DIR"/MatrixMultiplication.cu -I"$DIR"/include -o matrix_mul