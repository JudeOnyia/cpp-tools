# Specify Version
cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

# Specify Project and Language
project(cgal_in_circle LANGUAGES CXX)

# Set CXX Flags with the -frounding-math option
set(CMAKE_CXX_FLAGS "-frounding-math")

# Find CGAL Library
find_package(CGAL REQUIRED)

# Set Include directories and libraries
include_directories(${CGAL_INCLUDE_DIRS})
link_libraries(${CGAL_LIBRARY} ${GMP_LIBRARIES})

# Add Executable
add_executable(in_circle in_circle.cpp utility.cpp utility.hpp)
add_executable(in_sphere in_sphere.cpp utility.cpp utility.hpp)
