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
include third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/compiler_depend.make

# Include the progress variables for this target.
include third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/flags.make

third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.o: third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/flags.make
third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/third-party/google-benchmark/src/benchmark_main.cc
third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.o: third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.o -MF CMakeFiles/benchmark_main.dir/benchmark_main.cc.o.d -o CMakeFiles/benchmark_main.dir/benchmark_main.cc.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/third-party/google-benchmark/src/benchmark_main.cc

third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/benchmark_main.dir/benchmark_main.cc.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/third-party/google-benchmark/src/benchmark_main.cc > CMakeFiles/benchmark_main.dir/benchmark_main.cc.i

third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/benchmark_main.dir/benchmark_main.cc.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/third-party/google-benchmark/src/benchmark_main.cc -o CMakeFiles/benchmark_main.dir/benchmark_main.cc.s

# Object files for target benchmark_main
benchmark_main_OBJECTS = \
"CMakeFiles/benchmark_main.dir/benchmark_main.cc.o"

# External object files for target benchmark_main
benchmark_main_EXTERNAL_OBJECTS =

lib/libbenchmark_main.a: third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/benchmark_main.cc.o
lib/libbenchmark_main.a: third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/build.make
lib/libbenchmark_main.a: third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libbenchmark_main.a"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src && $(CMAKE_COMMAND) -P CMakeFiles/benchmark_main.dir/cmake_clean_target.cmake
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchmark_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/build: lib/libbenchmark_main.a
.PHONY : third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/build

third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/clean:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src && $(CMAKE_COMMAND) -P CMakeFiles/benchmark_main.dir/cmake_clean.cmake
.PHONY : third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/clean

third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/depend:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoniajanuszewicz/Downloads/openfhe-development-main /Users/antoniajanuszewicz/Downloads/openfhe-development-main/third-party/google-benchmark/src /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/google-benchmark/src/CMakeFiles/benchmark_main.dir/depend

