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
include Search/CMakeFiles/Search.dir/depend.make
# Include the progress variables for this target.
include Search/CMakeFiles/Search.dir/progress.make

# Include the compile flags for this target's objects.
include Search/CMakeFiles/Search.dir/flags.make

Search/CMakeFiles/Search.dir/task.obj: Search/CMakeFiles/Search.dir/flags.make
Search/CMakeFiles/Search.dir/task.obj: ../Search/task.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Search/CMakeFiles/Search.dir/task.obj"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Search && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Search.dir\task.obj -c D:\CLionProjects\Practice\Chapters\Algorithms\Search\task.cpp

Search/CMakeFiles/Search.dir/task.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Search.dir/task.i"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Search && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\CLionProjects\Practice\Chapters\Algorithms\Search\task.cpp > CMakeFiles\Search.dir\task.i

Search/CMakeFiles/Search.dir/task.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Search.dir/task.s"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Search && D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\CLionProjects\Practice\Chapters\Algorithms\Search\task.cpp -o CMakeFiles\Search.dir\task.s

# Object files for target Search
Search_OBJECTS = \
"CMakeFiles/Search.dir/task.obj"

# External object files for target Search
Search_EXTERNAL_OBJECTS =

Search/Search.exe: Search/CMakeFiles/Search.dir/task.obj
Search/Search.exe: Search/CMakeFiles/Search.dir/build.make
Search/Search.exe: Search/CMakeFiles/Search.dir/linklibs.rsp
Search/Search.exe: Search/CMakeFiles/Search.dir/objects1.rsp
Search/Search.exe: Search/CMakeFiles/Search.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Search.exe"
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Search && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Search.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Search/CMakeFiles/Search.dir/build: Search/Search.exe
.PHONY : Search/CMakeFiles/Search.dir/build

Search/CMakeFiles/Search.dir/clean:
	cd /d D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Search && $(CMAKE_COMMAND) -P CMakeFiles\Search.dir\cmake_clean.cmake
.PHONY : Search/CMakeFiles/Search.dir/clean

Search/CMakeFiles/Search.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\CLionProjects\Practice\Chapters\Algorithms D:\CLionProjects\Practice\Chapters\Algorithms\Search D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Search D:\CLionProjects\Practice\Chapters\Algorithms\cmake-build-debug\Search\CMakeFiles\Search.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Search/CMakeFiles/Search.dir/depend

