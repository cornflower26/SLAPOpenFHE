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

# Utility rule file for testbinfhe.

# Include any custom commands dependencies for this target.
include src/binfhe/CMakeFiles/testbinfhe.dir/compiler_depend.make

# Include the progress variables for this target.
include src/binfhe/CMakeFiles/testbinfhe.dir/progress.make

src/binfhe/CMakeFiles/testbinfhe: unittest/binfhe_tests
src/binfhe/CMakeFiles/testbinfhe: src/binfhe/runbinfhetests

src/binfhe/runbinfhetests:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating runbinfhetests"
	/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/unittest/binfhe_tests

testbinfhe: src/binfhe/CMakeFiles/testbinfhe
testbinfhe: src/binfhe/runbinfhetests
testbinfhe: src/binfhe/CMakeFiles/testbinfhe.dir/build.make
.PHONY : testbinfhe

# Rule to build all files generated by this target.
src/binfhe/CMakeFiles/testbinfhe.dir/build: testbinfhe
.PHONY : src/binfhe/CMakeFiles/testbinfhe.dir/build

src/binfhe/CMakeFiles/testbinfhe.dir/clean:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && $(CMAKE_COMMAND) -P CMakeFiles/testbinfhe.dir/cmake_clean.cmake
.PHONY : src/binfhe/CMakeFiles/testbinfhe.dir/clean

src/binfhe/CMakeFiles/testbinfhe.dir/depend:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoniajanuszewicz/Downloads/openfhe-development-main /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe/CMakeFiles/testbinfhe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/binfhe/CMakeFiles/testbinfhe.dir/depend
