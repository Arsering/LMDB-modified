# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/spdk/p4510/zhengyang/data/lmdb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/spdk/p4510/zhengyang/data/lmdb/build

# Include any dependencies generated for this target.
include src/CMakeFiles/lmdb.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/lmdb.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/lmdb.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/lmdb.dir/flags.make

src/CMakeFiles/lmdb.dir/mdb.c.o: src/CMakeFiles/lmdb.dir/flags.make
src/CMakeFiles/lmdb.dir/mdb.c.o: /home/spdk/p4510/zhengyang/data/lmdb/src/mdb.c
src/CMakeFiles/lmdb.dir/mdb.c.o: src/CMakeFiles/lmdb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spdk/p4510/zhengyang/data/lmdb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/lmdb.dir/mdb.c.o"
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/lmdb.dir/mdb.c.o -MF CMakeFiles/lmdb.dir/mdb.c.o.d -o CMakeFiles/lmdb.dir/mdb.c.o -c /home/spdk/p4510/zhengyang/data/lmdb/src/mdb.c

src/CMakeFiles/lmdb.dir/mdb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lmdb.dir/mdb.c.i"
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spdk/p4510/zhengyang/data/lmdb/src/mdb.c > CMakeFiles/lmdb.dir/mdb.c.i

src/CMakeFiles/lmdb.dir/mdb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lmdb.dir/mdb.c.s"
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spdk/p4510/zhengyang/data/lmdb/src/mdb.c -o CMakeFiles/lmdb.dir/mdb.c.s

src/CMakeFiles/lmdb.dir/midl.c.o: src/CMakeFiles/lmdb.dir/flags.make
src/CMakeFiles/lmdb.dir/midl.c.o: /home/spdk/p4510/zhengyang/data/lmdb/src/midl.c
src/CMakeFiles/lmdb.dir/midl.c.o: src/CMakeFiles/lmdb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spdk/p4510/zhengyang/data/lmdb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/lmdb.dir/midl.c.o"
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/lmdb.dir/midl.c.o -MF CMakeFiles/lmdb.dir/midl.c.o.d -o CMakeFiles/lmdb.dir/midl.c.o -c /home/spdk/p4510/zhengyang/data/lmdb/src/midl.c

src/CMakeFiles/lmdb.dir/midl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lmdb.dir/midl.c.i"
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/spdk/p4510/zhengyang/data/lmdb/src/midl.c > CMakeFiles/lmdb.dir/midl.c.i

src/CMakeFiles/lmdb.dir/midl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lmdb.dir/midl.c.s"
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/spdk/p4510/zhengyang/data/lmdb/src/midl.c -o CMakeFiles/lmdb.dir/midl.c.s

# Object files for target lmdb
lmdb_OBJECTS = \
"CMakeFiles/lmdb.dir/mdb.c.o" \
"CMakeFiles/lmdb.dir/midl.c.o"

# External object files for target lmdb
lmdb_EXTERNAL_OBJECTS =

/home/spdk/p4510/zhengyang/data/lmdb/lib/liblmdb.a: src/CMakeFiles/lmdb.dir/mdb.c.o
/home/spdk/p4510/zhengyang/data/lmdb/lib/liblmdb.a: src/CMakeFiles/lmdb.dir/midl.c.o
/home/spdk/p4510/zhengyang/data/lmdb/lib/liblmdb.a: src/CMakeFiles/lmdb.dir/build.make
/home/spdk/p4510/zhengyang/data/lmdb/lib/liblmdb.a: src/CMakeFiles/lmdb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spdk/p4510/zhengyang/data/lmdb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library /home/spdk/p4510/zhengyang/data/lmdb/lib/liblmdb.a"
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && $(CMAKE_COMMAND) -P CMakeFiles/lmdb.dir/cmake_clean_target.cmake
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lmdb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/lmdb.dir/build: /home/spdk/p4510/zhengyang/data/lmdb/lib/liblmdb.a
.PHONY : src/CMakeFiles/lmdb.dir/build

src/CMakeFiles/lmdb.dir/clean:
	cd /home/spdk/p4510/zhengyang/data/lmdb/build/src && $(CMAKE_COMMAND) -P CMakeFiles/lmdb.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/lmdb.dir/clean

src/CMakeFiles/lmdb.dir/depend:
	cd /home/spdk/p4510/zhengyang/data/lmdb/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spdk/p4510/zhengyang/data/lmdb /home/spdk/p4510/zhengyang/data/lmdb/src /home/spdk/p4510/zhengyang/data/lmdb/build /home/spdk/p4510/zhengyang/data/lmdb/build/src /home/spdk/p4510/zhengyang/data/lmdb/build/src/CMakeFiles/lmdb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/lmdb.dir/depend

