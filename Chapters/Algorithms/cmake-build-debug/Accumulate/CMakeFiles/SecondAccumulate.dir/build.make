# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\CLion\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\CLion\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\CLionProjects\Practice\Chapters\Algorithms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug

# Include any dependencies generated for this target.
include Accumulate/CMakeFiles/SecondAccumulate.dir/depend.make
# Include the progress variables for this target.
include Accumulate/CMakeFiles/SecondAccumulate.dir/progress.make

# Include the compile flags for this target's objects.
include Accumulate/CMakeFiles/SecondAccumulate.dir/flags.make

Accumulate/CMakeFiles/SecondAccumulate.dir/second.obj: Accumulate/CMakeFiles/SecondAccumulate.dir/flags.make
Accumulate/CMakeFiles/SecondAccumulate.dir/second.obj: ../Accumulate/second.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Accumulate/CMakeFiles/SecondAccumulate.dir/second.obj"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Accumulate && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SecondAccumulate.dir\second.obj -c D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate\second.cpp

Accumulate/CMakeFiles/SecondAccumulate.dir/second.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SecondAccumulate.dir/second.i"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Accumulate && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate\second.cpp > CMakeFiles\SecondAccumulate.dir\second.i

Accumulate/CMakeFiles/SecondAccumulate.dir/second.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SecondAccumulate.dir/second.s"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Accumulate && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate\second.cpp -o CMakeFiles\SecondAccumulate.dir\second.s

# Object files for target SecondAccumulate
SecondAccumulate_OBJECTS = \
"CMakeFiles/SecondAccumulate.dir/second.obj"

# External object files for target SecondAccumulate
SecondAccumulate_EXTERNAL_OBJECTS =

Accumulate/SecondAccumulate.exe: Accumulate/CMakeFiles/SecondAccumulate.dir/second.obj
Accumulate/SecondAccumulate.exe: Accumulate/CMakeFiles/SecondAccumulate.dir/build.make
Accumulate/SecondAccumulate.exe: Accumulate/CMakeFiles/SecondAccumulate.dir/linklibs.rsp
Accumulate/SecondAccumulate.exe: Accumulate/CMakeFiles/SecondAccumulate.dir/objects1.rsp
Accumulate/SecondAccumulate.exe: Accumulate/CMakeFiles/SecondAccumulate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SecondAccumulate.exe"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Accumulate && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SecondAccumulate.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Accumulate/CMakeFiles/SecondAccumulate.dir/build: Accumulate/SecondAccumulate.exe
.PHONY : Accumulate/CMakeFiles/SecondAccumulate.dir/build

Accumulate/CMakeFiles/SecondAccumulate.dir/clean:
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Accumulate && $(CMAKE_COMMAND) -P CMakeFiles\SecondAccumulate.dir\cmake_clean.cmake
.PHONY : Accumulate/CMakeFiles/SecondAccumulate.dir/clean

Accumulate/CMakeFiles/SecondAccumulate.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\CLionProjects\Practice\Chapters\Algorithms D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Accumulate D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Accumulate\CMakeFiles\SecondAccumulate.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Accumulate/CMakeFiles/SecondAccumulate.dir/depend

