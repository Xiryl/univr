#!/bin/bash
DIR=`dirname $0`

g++-9 -O3 -std=c++11 -fopenmp -I"$DIR"/include "$DIR"/main.cpp "$DIR"/src/MatrixMultiplication.cpp -o matrix_mul_O3

./matrix_mul_O3
