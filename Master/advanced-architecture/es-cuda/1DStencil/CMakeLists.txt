set(PROJECT "1DStencil")
project(${PROJECT} CXX)

cmake_minimum_required(VERSION 3.5)
FIND_PACKAGE(CUDA REQUIRED)

message("\nTest on cmake v" ${CMAKE_VERSION} "  System: " ${CMAKE_SYSTEM} "\n")

# ------------------------------------------------------------------------------
# CHECK C++ 11

include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
if (COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
else()
    message(FATAL_ERROR "Compiler ${CMAKE_CXX_COMPILER} has no C++11 support.")
endif()
# ------------------------------------------------------------------------------

if(CUDA_VERSION_MAJOR LESS 8)
	message(FATAL_ERROR "\nRequired Cuda Toolkit >= v8.0")
endif()
# ------------------------------------------------------------------------------

include_directories(${PROJECT_SOURCE_DIR}/include)

list(APPEND CUDA_NVCC_FLAGS "-arch=sm_62")
list(APPEND CUDA_NVCC_FLAGS "-w")

cuda_add_executable(stencil ${PROJECT_SOURCE_DIR}/1DStencil.cu)
