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
include src/core/CMakeFiles/OPENFHEcore.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/core/CMakeFiles/OPENFHEcore.dir/compiler_depend.make

# Include the progress variables for this target.
include src/core/CMakeFiles/OPENFHEcore.dir/progress.make

# Include the compile flags for this target's objects.
include src/core/CMakeFiles/OPENFHEcore.dir/flags.make

# Object files for target OPENFHEcore
OPENFHEcore_OBJECTS =

# External object files for target OPENFHEcore
OPENFHEcore_EXTERNAL_OBJECTS = \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/lattice/constants-lattice-impl.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/lattice/elemparamfactory.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/lattice/lattice.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/lattice/stdlatticeparms.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-dcrtpoly.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-poly.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/chebyshev.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/dftransform.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/discretegaussiangeneratorgeneric.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/distributiongenerator.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/be4-math-impl.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/mubintvecdyn.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/ubintdyn.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/be2-math-impl.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/mubintvecfxd.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/ubintfxd.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/be6-math-impl.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/mubintvecntl.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/ubintntl.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/benative-math-impl.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/mubintvecnat.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/matrix.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/math/nbtheory2.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/blockAllocator.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/xallocator.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/debug.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/demangle.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/hashutil.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/inttypes.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/openfhebase64.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/parallel.cpp.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2b-ref.c.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2xb-ref.c.o" \
"/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/coreobj.dir/lib/utils/utilities.cpp.o"

lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/lattice/constants-lattice-impl.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/lattice/elemparamfactory.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/lattice/lattice.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/lattice/stdlatticeparms.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-dcrtpoly.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/lattice/trapdoor-poly.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/chebyshev.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/dftransform.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/discretegaussiangeneratorgeneric.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/distributiongenerator.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/be4-math-impl.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/mubintvecdyn.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintdyn/ubintdyn.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/be2-math-impl.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/mubintvecfxd.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintfxd/ubintfxd.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/be6-math-impl.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/mubintvecntl.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/bigintntl/ubintntl.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/benative-math-impl.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/hal/intnat/mubintvecnat.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/matrix.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/math/nbtheory2.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/blockAllocator.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/blockAllocator/xallocator.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/debug.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/demangle.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/hashutil.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/inttypes.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/openfhebase64.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/parallel.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2b-ref.c.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/prng/blake2xb-ref.c.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/coreobj.dir/lib/utils/utilities.cpp.o
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/OPENFHEcore.dir/build.make
lib/libOPENFHEcore.1.1.1.dylib: src/core/CMakeFiles/OPENFHEcore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library ../../lib/libOPENFHEcore.dylib"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OPENFHEcore.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libOPENFHEcore.1.1.1.dylib ../../lib/libOPENFHEcore.1.dylib ../../lib/libOPENFHEcore.dylib

lib/libOPENFHEcore.1.dylib: lib/libOPENFHEcore.1.1.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libOPENFHEcore.1.dylib

lib/libOPENFHEcore.dylib: lib/libOPENFHEcore.1.1.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libOPENFHEcore.dylib

# Rule to build all files generated by this target.
src/core/CMakeFiles/OPENFHEcore.dir/build: lib/libOPENFHEcore.dylib
.PHONY : src/core/CMakeFiles/OPENFHEcore.dir/build

src/core/CMakeFiles/OPENFHEcore.dir/clean:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core && $(CMAKE_COMMAND) -P CMakeFiles/OPENFHEcore.dir/cmake_clean.cmake
.PHONY : src/core/CMakeFiles/OPENFHEcore.dir/clean

src/core/CMakeFiles/OPENFHEcore.dir/depend:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoniajanuszewicz/Downloads/openfhe-development-main /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/core /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/core/CMakeFiles/OPENFHEcore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/core/CMakeFiles/OPENFHEcore.dir/depend

