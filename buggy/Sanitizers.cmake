# The ENABLE_ASAN option sets the Address Sanitizer
if(NOT DEFINED ENABLE_ASAN)
	set(ENABLE_ASAN FALSE)
endif()
message("ENABLE_ASAN: ${ENABLE_ASAN} ")
# Error if its not bool
if(NOT (ENABLE_ASAN MATCHES TRUE OR ENABLE_ASAN MATCHES FALSE))
	message(FATAL_ERROR "ENABLE_ASAN must be Boolean(TRUE/FALSE)")
endif()	
if(ENABLE_ASAN)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=address")
	message("Enabled Address Sanitizer")
endif()

# The ENABLE_UBSAN option sets the Undefined Behaviour Sanitizer
if(NOT DEFINED ENABLE_UBSAN)
	set(ENABLE_UBSAN FALSE)
endif()
message("ENABLE_UBSAN: ${ENABLE_UBSAN} ")
# Error if its not bool
if(NOT (ENABLE_UBSAN MATCHES TRUE OR ENABLE_UBSAN MATCHES FALSE))
	message(FATAL_ERROR "ENABLE_UBSAN must be Boolean(TRUE/FALSE)")
endif()
if(ENABLE_UBSAN)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=undefined")
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=undefined")
	message("Enabled Undefined Behaviour Sanitizer")
endif()
