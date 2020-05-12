# Specify Version
cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

# Specify project and language
project(coverage LANGUAGES CXX)

# Option to enable coverage
option(ENABLE_COVERAGE "Enable Coverage" false)

# Enable Coverage
if(ENABLE_COVERAGE)
	set(CMAKE_BUILD_TYPE "Debug" CACHE STRING
		"Set the build type." FORCE)
	include(CodeCoverage.cmake)
	append_coverage_compiler_flags()
endif()

add_executable(random random.cpp)

if(ENABLE_COVERAGE)
	setup_target_for_coverage_lcov(
		NAME coverage
		EXECUTABLE ${CMAKE_CURRENT_SOURCE_DIR}/run_tests ${CMAKE_CURRENT_BINARY_DIR}
		LCOV_ARGS --rc lcov_branch_coverage=1
		GENHTML_ARGS --legend --branch-coverage
		DEPENDENCIES random)
endif()
