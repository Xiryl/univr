set(PROJECT "MatrixMultiplication")
project(${PROJECT} CXX)

cmake_minimum_required(VERSION 3.5)
FIND_PACKAGE(OpenMP REQUIRED)

message("\nTest on cmake v" ${CMAKE_VERSION} "  System: " ${CMAKE_SYSTEM} "\n")

# ------------------------------------------------------------------------------
# CHECK C++ 14

include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++14" COMPILER_SUPPORTS_CXX14)
if(COMPILER_SUPPORTS_CXX14)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
else()
    message(FATAL_ERROR "Compiler ${CMAKE_CXX_COMPILER} has no C++14 support.")
endif()

# ------------------------------------------------------------------------------

include_directories(${PROJECT_SOURCE_DIR}/include)

set(SRC ${PROJECT_SOURCE_DIR}/src/MatrixMultiplication.cpp)

# ------------------------------------------------------------------------------

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}
#                            ${OpenMP_EXE_LINKER_FLAGS}")

add_executable(matrix_mul_O3 ${PROJECT_SOURCE_DIR}/main.cpp ${SRC})
set_target_properties(matrix_mul_O3 PROPERTIES COMPILE_FLAGS "-O3")

add_executable(matrix_mul_O0 ${PROJECT_SOURCE_DIR}/main.cpp ${SRC})
set_target_properties(matrix_mul_O0 PROPERTIES COMPILE_FLAGS "-O0")
