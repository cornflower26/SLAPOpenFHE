# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/antoniajanuszewicz/Downloads/openfhe-development-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local

# Include any dependencies generated for this target.
include benchmark/CMakeFiles/lib-benchmark.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include benchmark/CMakeFiles/lib-benchmark.dir/compiler_depend.make

# Include the progress variables for this target.
include benchmark/CMakeFiles/lib-benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include benchmark/CMakeFiles/lib-benchmark.dir/flags.make

benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o: benchmark/CMakeFiles/lib-benchmark.dir/flags.make
benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/benchmark/src/lib-benchmark.cpp
benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o: benchmark/CMakeFiles/lib-benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/benchmark && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o -MF CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o.d -o CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/benchmark/src/lib-benchmark.cpp

benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/benchmark && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/benchmark/src/lib-benchmark.cpp > CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.i

benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/benchmark && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/benchmark/src/lib-benchmark.cpp -o CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.s

# Object files for target lib-benchmark
lib__benchmark_OBJECTS = \
"CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o"

# External object files for target lib-benchmark
lib__benchmark_EXTERNAL_OBJECTS =

bin/benchmark/lib-benchmark: benchmark/CMakeFiles/lib-benchmark.dir/src/lib-benchmark.cpp.o
bin/benchmark/lib-benchmark: benchmark/CMakeFiles/lib-benchmark.dir/build.make
bin/benchmark/lib-benchmark: lib/libOPENFHEpke.1.1.1.dylib
bin/benchmark/lib-benchmark: lib/libOPENFHEbinfhe.1.1.1.dylib
bin/benchmark/lib-benchmark: lib/libOPENFHEcore.1.1.1.dylib
bin/benchmark/lib-benchmark: lib/libbenchmark.a
bin/benchmark/lib-benchmark: benchmark/CMakeFiles/lib-benchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/benchmark/lib-benchmark"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/benchmark && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib-benchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmark/CMakeFiles/lib-benchmark.dir/build: bin/benchmark/lib-benchmark
.PHONY : benchmark/CMakeFiles/lib-benchmark.dir/build

benchmark/CMakeFiles/lib-benchmark.dir/clean:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/benchmark && $(CMAKE_COMMAND) -P CMakeFiles/lib-benchmark.dir/cmake_clean.cmake
.PHONY : benchmark/CMakeFiles/lib-benchmark.dir/clean

benchmark/CMakeFiles/lib-benchmark.dir/depend:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoniajanuszewicz/Downloads/openfhe-development-main /Users/antoniajanuszewicz/Downloads/openfhe-development-main/benchmark /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/benchmark /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/benchmark/CMakeFiles/lib-benchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmark/CMakeFiles/lib-benchmark.dir/depend

