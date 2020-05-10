# Definition of options "ENABLE_ASAN" and "ENABLE_UBSAN" for sanitizers 
include(Sanitizers.cmake)

# Specify Minimum Required Version
cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

# Specify Project and Language
project(buggy LANGUAGES CXX)

# Add executable program
add_executable(buggy buggy.cpp)
