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
include src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/compiler_depend.make

# Include the progress variables for this target.
include src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/progress.make

# Include the compile flags for this target's objects.
include src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/flags.make

src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o: src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/flags.make
src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/examples/boolean-serial-json-dynamic-large-precision.cpp
src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o: src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o -MF CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o.d -o CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/examples/boolean-serial-json-dynamic-large-precision.cpp

src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/examples/boolean-serial-json-dynamic-large-precision.cpp > CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.i

src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/examples/boolean-serial-json-dynamic-large-precision.cpp -o CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.s

# Object files for target boolean-serial-json-dynamic-large-precision
boolean__serial__json__dynamic__large__precision_OBJECTS = \
"CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o"

# External object files for target boolean-serial-json-dynamic-large-precision
boolean__serial__json__dynamic__large__precision_EXTERNAL_OBJECTS =

bin/examples/binfhe/boolean-serial-json-dynamic-large-precision: src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/examples/boolean-serial-json-dynamic-large-precision.cpp.o
bin/examples/binfhe/boolean-serial-json-dynamic-large-precision: src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/build.make
bin/examples/binfhe/boolean-serial-json-dynamic-large-precision: lib/libOPENFHEbinfhe.1.1.1.dylib
bin/examples/binfhe/boolean-serial-json-dynamic-large-precision: lib/libOPENFHEcore.1.1.1.dylib
bin/examples/binfhe/boolean-serial-json-dynamic-large-precision: src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/examples/binfhe/boolean-serial-json-dynamic-large-precision"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/build: bin/examples/binfhe/boolean-serial-json-dynamic-large-precision
.PHONY : src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/build

src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/clean:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && $(CMAKE_COMMAND) -P CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/cmake_clean.cmake
.PHONY : src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/clean

src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/depend:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoniajanuszewicz/Downloads/openfhe-development-main /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/binfhe/CMakeFiles/boolean-serial-json-dynamic-large-precision.dir/depend

