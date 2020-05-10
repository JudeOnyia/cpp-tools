# Specify Minimum Required Version
cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

# Specify Project and Language
project(hg2g LANGUAGES CXX)

# Set Include Directory
include_directories(include)

# Add Executable Program
add_executable(answer src/answer.cpp lib/question.cpp lib/answer.cpp)
