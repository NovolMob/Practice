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
CMAKE_SOURCE_DIR = D:\CLionProjects\Practice\Chapters

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\CLionProjects\Practice\Chapters\cmake-build-debug

# Include any dependencies generated for this target.
include Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/depend.make
# Include the progress variables for this target.
include Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/progress.make

# Include the compile flags for this target's objects.
include Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/flags.make

Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/first.obj: Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/flags.make
Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/first.obj: ../Algorithms/Accumulate/first.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\CLionProjects\Practice\Chapters\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/first.obj"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Algorithms\Accumulate && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\FirstAccumulate.dir\first.obj -c D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate\first.cpp

Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/first.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FirstAccumulate.dir/first.i"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Algorithms\Accumulate && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate\first.cpp > CMakeFiles\FirstAccumulate.dir\first.i

Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/first.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FirstAccumulate.dir/first.s"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Algorithms\Accumulate && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate\first.cpp -o CMakeFiles\FirstAccumulate.dir\first.s

# Object files for target FirstAccumulate
FirstAccumulate_OBJECTS = \
"CMakeFiles/FirstAccumulate.dir/first.obj"

# External object files for target FirstAccumulate
FirstAccumulate_EXTERNAL_OBJECTS =

Algorithms/Accumulate/FirstAccumulate.exe: Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/first.obj
Algorithms/Accumulate/FirstAccumulate.exe: Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/build.make
Algorithms/Accumulate/FirstAccumulate.exe: Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/linklibs.rsp
Algorithms/Accumulate/FirstAccumulate.exe: Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/objects1.rsp
Algorithms/Accumulate/FirstAccumulate.exe: Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\CLionProjects\Practice\Chapters\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FirstAccumulate.exe"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Algorithms\Accumulate && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FirstAccumulate.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/build: Algorithms/Accumulate/FirstAccumulate.exe
.PHONY : Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/build

Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/clean:
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Algorithms\Accumulate && $(CMAKE_COMMAND) -P CMakeFiles\FirstAccumulate.dir\cmake_clean.cmake
.PHONY : Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/clean

Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\CLionProjects\Practice\Chapters D:\CLionProjects\Practice\Chapters\Algorithms\Accumulate D:\CLionProjects\Practice\Chapters\cmake-build-debug D:\CLionProjects\Practice\Chapters\cmake-build-debug\Algorithms\Accumulate D:\CLionProjects\Practice\Chapters\cmake-build-debug\Algorithms\Accumulate\CMakeFiles\FirstAccumulate.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Algorithms/Accumulate/CMakeFiles/FirstAccumulate.dir/depend

