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
include src/binfhe/CMakeFiles/binfheobj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.make

# Include the progress variables for this target.
include src/binfhe/CMakeFiles/binfheobj.dir/progress.make

# Include the compile flags for this target's objects.
include src/binfhe/CMakeFiles/binfheobj.dir/flags.make

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-base-scheme.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o -MF CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-base-scheme.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-base-scheme.cpp > CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-base-scheme.cpp -o CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-constants-impl.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o -MF CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-constants-impl.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-constants-impl.cpp > CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhe-constants-impl.cpp -o CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhecontext.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o -MF CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhecontext.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhecontext.cpp > CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/binfhecontext.cpp -o CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/lwe-pke.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o -MF CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/lwe-pke.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/lwe-pke.cpp > CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/lwe-pke.cpp -o CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-cggi.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o -MF CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-cggi.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-cggi.cpp > CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-cggi.cpp -o CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-dm.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o -MF CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-dm.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-dm.cpp > CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-dm.cpp -o CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-lmkcdey.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o -MF CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-lmkcdey.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-lmkcdey.cpp > CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc-lmkcdey.cpp -o CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o -MF CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc.cpp > CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-acc.cpp -o CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.s

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/flags.make
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o: /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-cryptoparameters.cpp
src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o: src/binfhe/CMakeFiles/binfheobj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o -MF CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o.d -o CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o -c /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-cryptoparameters.cpp

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.i"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-cryptoparameters.cpp > CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.i

src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.s"
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe/lib/rgsw-cryptoparameters.cpp -o CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.s

binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-base-scheme.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhe-constants-impl.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/binfhecontext.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/lwe-pke.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-cggi.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-dm.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc-lmkcdey.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-acc.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/lib/rgsw-cryptoparameters.cpp.o
binfheobj: src/binfhe/CMakeFiles/binfheobj.dir/build.make
.PHONY : binfheobj

# Rule to build all files generated by this target.
src/binfhe/CMakeFiles/binfheobj.dir/build: binfheobj
.PHONY : src/binfhe/CMakeFiles/binfheobj.dir/build

src/binfhe/CMakeFiles/binfheobj.dir/clean:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe && $(CMAKE_COMMAND) -P CMakeFiles/binfheobj.dir/cmake_clean.cmake
.PHONY : src/binfhe/CMakeFiles/binfheobj.dir/clean

src/binfhe/CMakeFiles/binfheobj.dir/depend:
	cd /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoniajanuszewicz/Downloads/openfhe-development-main /Users/antoniajanuszewicz/Downloads/openfhe-development-main/src/binfhe /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe /Users/antoniajanuszewicz/Downloads/openfhe-development-main/cmake-build-local/src/binfhe/CMakeFiles/binfheobj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/binfhe/CMakeFiles/binfheobj.dir/depend

