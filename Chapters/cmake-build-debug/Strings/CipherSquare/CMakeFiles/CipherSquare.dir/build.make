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
include Strings/CipherSquare/CMakeFiles/CipherSquare.dir/depend.make
# Include the progress variables for this target.
include Strings/CipherSquare/CMakeFiles/CipherSquare.dir/progress.make

# Include the compile flags for this target's objects.
include Strings/CipherSquare/CMakeFiles/CipherSquare.dir/flags.make

Strings/CipherSquare/CMakeFiles/CipherSquare.dir/task.obj: Strings/CipherSquare/CMakeFiles/CipherSquare.dir/flags.make
Strings/CipherSquare/CMakeFiles/CipherSquare.dir/task.obj: ../Strings/CipherSquare/task.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\CLionProjects\Practice\Chapters\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Strings/CipherSquare/CMakeFiles/CipherSquare.dir/task.obj"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Strings\CipherSquare && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CipherSquare.dir\task.obj -c D:\CLionProjects\Practice\Chapters\Strings\CipherSquare\task.cpp

Strings/CipherSquare/CMakeFiles/CipherSquare.dir/task.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CipherSquare.dir/task.i"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Strings\CipherSquare && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\CLionProjects\Practice\Chapters\Strings\CipherSquare\task.cpp > CMakeFiles\CipherSquare.dir\task.i

Strings/CipherSquare/CMakeFiles/CipherSquare.dir/task.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CipherSquare.dir/task.s"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Strings\CipherSquare && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\CLionProjects\Practice\Chapters\Strings\CipherSquare\task.cpp -o CMakeFiles\CipherSquare.dir\task.s

# Object files for target CipherSquare
CipherSquare_OBJECTS = \
"CMakeFiles/CipherSquare.dir/task.obj"

# External object files for target CipherSquare
CipherSquare_EXTERNAL_OBJECTS =

Strings/CipherSquare/CipherSquare.exe: Strings/CipherSquare/CMakeFiles/CipherSquare.dir/task.obj
Strings/CipherSquare/CipherSquare.exe: Strings/CipherSquare/CMakeFiles/CipherSquare.dir/build.make
Strings/CipherSquare/CipherSquare.exe: Strings/CipherSquare/CMakeFiles/CipherSquare.dir/linklibs.rsp
Strings/CipherSquare/CipherSquare.exe: Strings/CipherSquare/CMakeFiles/CipherSquare.dir/objects1.rsp
Strings/CipherSquare/CipherSquare.exe: Strings/CipherSquare/CMakeFiles/CipherSquare.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\CLionProjects\Practice\Chapters\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CipherSquare.exe"
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Strings\CipherSquare && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CipherSquare.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Strings/CipherSquare/CMakeFiles/CipherSquare.dir/build: Strings/CipherSquare/CipherSquare.exe
.PHONY : Strings/CipherSquare/CMakeFiles/CipherSquare.dir/build

Strings/CipherSquare/CMakeFiles/CipherSquare.dir/clean:
	cd /d D:\CLionProjects\Practice\Chapters\cmake-build-debug\Strings\CipherSquare && $(CMAKE_COMMAND) -P CMakeFiles\CipherSquare.dir\cmake_clean.cmake
.PHONY : Strings/CipherSquare/CMakeFiles/CipherSquare.dir/clean

Strings/CipherSquare/CMakeFiles/CipherSquare.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\CLionProjects\Practice\Chapters D:\CLionProjects\Practice\Chapters\Strings\CipherSquare D:\CLionProjects\Practice\Chapters\cmake-build-debug D:\CLionProjects\Practice\Chapters\cmake-build-debug\Strings\CipherSquare D:\CLionProjects\Practice\Chapters\cmake-build-debug\Strings\CipherSquare\CMakeFiles\CipherSquare.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Strings/CipherSquare/CMakeFiles/CipherSquare.dir/depend
