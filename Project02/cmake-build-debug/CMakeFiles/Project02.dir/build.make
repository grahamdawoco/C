# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/c/Users/Dudley/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Dudley/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Dudley/CLionProjects/Project02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Project02.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Project02.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Project02.dir/flags.make

CMakeFiles/Project02.dir/main.c.o: CMakeFiles/Project02.dir/flags.make
CMakeFiles/Project02.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Project02.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Project02.dir/main.c.o   -c /cygdrive/c/Users/Dudley/CLionProjects/Project02/main.c

CMakeFiles/Project02.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project02.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Dudley/CLionProjects/Project02/main.c > CMakeFiles/Project02.dir/main.c.i

CMakeFiles/Project02.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project02.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Dudley/CLionProjects/Project02/main.c -o CMakeFiles/Project02.dir/main.c.s

CMakeFiles/Project02.dir/main.c.o.requires:

.PHONY : CMakeFiles/Project02.dir/main.c.o.requires

CMakeFiles/Project02.dir/main.c.o.provides: CMakeFiles/Project02.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Project02.dir/build.make CMakeFiles/Project02.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Project02.dir/main.c.o.provides

CMakeFiles/Project02.dir/main.c.o.provides.build: CMakeFiles/Project02.dir/main.c.o


CMakeFiles/Project02.dir/doublylinkedlist.c.o: CMakeFiles/Project02.dir/flags.make
CMakeFiles/Project02.dir/doublylinkedlist.c.o: ../doublylinkedlist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Project02.dir/doublylinkedlist.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Project02.dir/doublylinkedlist.c.o   -c /cygdrive/c/Users/Dudley/CLionProjects/Project02/doublylinkedlist.c

CMakeFiles/Project02.dir/doublylinkedlist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project02.dir/doublylinkedlist.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Dudley/CLionProjects/Project02/doublylinkedlist.c > CMakeFiles/Project02.dir/doublylinkedlist.c.i

CMakeFiles/Project02.dir/doublylinkedlist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project02.dir/doublylinkedlist.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Dudley/CLionProjects/Project02/doublylinkedlist.c -o CMakeFiles/Project02.dir/doublylinkedlist.c.s

CMakeFiles/Project02.dir/doublylinkedlist.c.o.requires:

.PHONY : CMakeFiles/Project02.dir/doublylinkedlist.c.o.requires

CMakeFiles/Project02.dir/doublylinkedlist.c.o.provides: CMakeFiles/Project02.dir/doublylinkedlist.c.o.requires
	$(MAKE) -f CMakeFiles/Project02.dir/build.make CMakeFiles/Project02.dir/doublylinkedlist.c.o.provides.build
.PHONY : CMakeFiles/Project02.dir/doublylinkedlist.c.o.provides

CMakeFiles/Project02.dir/doublylinkedlist.c.o.provides.build: CMakeFiles/Project02.dir/doublylinkedlist.c.o


# Object files for target Project02
Project02_OBJECTS = \
"CMakeFiles/Project02.dir/main.c.o" \
"CMakeFiles/Project02.dir/doublylinkedlist.c.o"

# External object files for target Project02
Project02_EXTERNAL_OBJECTS =

Project02.exe: CMakeFiles/Project02.dir/main.c.o
Project02.exe: CMakeFiles/Project02.dir/doublylinkedlist.c.o
Project02.exe: CMakeFiles/Project02.dir/build.make
Project02.exe: CMakeFiles/Project02.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Project02.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Project02.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Project02.dir/build: Project02.exe

.PHONY : CMakeFiles/Project02.dir/build

CMakeFiles/Project02.dir/requires: CMakeFiles/Project02.dir/main.c.o.requires
CMakeFiles/Project02.dir/requires: CMakeFiles/Project02.dir/doublylinkedlist.c.o.requires

.PHONY : CMakeFiles/Project02.dir/requires

CMakeFiles/Project02.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Project02.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Project02.dir/clean

CMakeFiles/Project02.dir/depend:
	cd /cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Dudley/CLionProjects/Project02 /cygdrive/c/Users/Dudley/CLionProjects/Project02 /cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug /cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug /cygdrive/c/Users/Dudley/CLionProjects/Project02/cmake-build-debug/CMakeFiles/Project02.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Project02.dir/depend

