# The ENABLE_ASAN option sets the Address Sanitizer
option(ENABLE_ASAN "Enable Asan" false)

if(ENABLE_ASAN)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=address")
	message("Enabled Address Sanitizer")
endif()

# The ENABLE_UBSAN option sets the Undefined Behaviour Sanitizer
option(ENABLE_UBSAN "Enable UBsan" false)

if(ENABLE_UBSAN)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=undefined")
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=undefined")
	message("Enabled Undefined Behaviour Sanitizer")
endif()
