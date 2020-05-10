# Specify minimum required version
cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

# Specify Project and Language
project(fibonacci LANGUAGES CXX)

# Add Program target
add_executable(fibonacci main.cpp fibonacci.cpp fibonacci.hpp)
