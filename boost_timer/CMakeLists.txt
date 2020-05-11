# Specify the Version
cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

# Specify the Project and Language
project(boost_timer LANGUAGES CXX)

# Disable Multithreading Support in Boost
set(Boost_USE_MULTITHREADED FALSE)

# Find the Boost Library
find_package(Boost REQUIRED COMPONENTS timer)

# Set Include directories and libraries
include_directories(${Boost_INCLUDE_DIR})
link_libraries(${Boost_LIBRARIES})

# Add executable
add_executable(timer timer.cpp fibonacci.cpp fibonacci.hpp)
