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
include src/pke/CMakeFiles/depth-bfvrns-behz.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/pke/CMakeFiles/depth-bfvrns-behz.dir/compiler_depend.make

# Include the progress variables for this target.
include src/pke/CMakeFiles/depth-bfvrns-behz.dir/progress.make

# Include the compile flags for this target's objects.
include src/pke/CMakeFiles/depth-bfvrns-behz.dir/flags.make

src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o: src/pke/CMakeFiles/depth-bfvrns-behz.dir/flags.make
src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/pke/examples/depth-bfvrns-behz.cpp
src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o: src/pke/CMakeFiles/depth-bfvrns-behz.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/pke && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o -MF CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o.d -o CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/pke/examples/depth-bfvrns-behz.cpp

src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/pke && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/pke/examples/depth-bfvrns-behz.cpp > CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.i

src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/pke && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/pke/examples/depth-bfvrns-behz.cpp -o CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.s

# Object files for target depth-bfvrns-behz
depth__bfvrns__behz_OBJECTS = \
"CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o"

# External object files for target depth-bfvrns-behz
depth__bfvrns__behz_EXTERNAL_OBJECTS =

bin/examples/pke/depth-bfvrns-behz: src/pke/CMakeFiles/depth-bfvrns-behz.dir/examples/depth-bfvrns-behz.cpp.o
bin/examples/pke/depth-bfvrns-behz: src/pke/CMakeFiles/depth-bfvrns-behz.dir/build.make
bin/examples/pke/depth-bfvrns-behz: lib/libOPENFHEpke.1.1.1.dylib
bin/examples/pke/depth-bfvrns-behz: lib/libOPENFHEbinfhe.1.1.1.dylib
bin/examples/pke/depth-bfvrns-behz: lib/libOPENFHEcore.1.1.1.dylib
bin/examples/pke/depth-bfvrns-behz: src/pke/CMakeFiles/depth-bfvrns-behz.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/examples/pke/depth-bfvrns-behz"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/pke && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/depth-bfvrns-behz.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/pke/CMakeFiles/depth-bfvrns-behz.dir/build: bin/examples/pke/depth-bfvrns-behz
.PHONY : src/pke/CMakeFiles/depth-bfvrns-behz.dir/build

src/pke/CMakeFiles/depth-bfvrns-behz.dir/clean:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/pke && $(CMAKE_COMMAND) -P CMakeFiles/depth-bfvrns-behz.dir/cmake_clean.cmake
.PHONY : src/pke/CMakeFiles/depth-bfvrns-behz.dir/clean

src/pke/CMakeFiles/depth-bfvrns-behz.dir/depend:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoniajanuszewicz/Downloads/openfhe-development-main /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/pke /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/pke /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/pke/CMakeFiles/depth-bfvrns-behz.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pke/CMakeFiles/depth-bfvrns-behz.dir/depend

