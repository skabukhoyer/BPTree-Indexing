# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sk/Documents/phase-1-16

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sk/Documents/phase-1-16/build

# Include any dependencies generated for this target.
include CMakeFiles/BPTree.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BPTree.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BPTree.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BPTree.dir/flags.make

CMakeFiles/BPTree.dir/src/BPTree.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/BPTree.cpp.o: ../src/BPTree.cpp
CMakeFiles/BPTree.dir/src/BPTree.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BPTree.dir/src/BPTree.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/BPTree.cpp.o -MF CMakeFiles/BPTree.dir/src/BPTree.cpp.o.d -o CMakeFiles/BPTree.dir/src/BPTree.cpp.o -c /home/sk/Documents/phase-1-16/src/BPTree.cpp

CMakeFiles/BPTree.dir/src/BPTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/BPTree.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/BPTree.cpp > CMakeFiles/BPTree.dir/src/BPTree.cpp.i

CMakeFiles/BPTree.dir/src/BPTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/BPTree.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/BPTree.cpp -o CMakeFiles/BPTree.dir/src/BPTree.cpp.s

CMakeFiles/BPTree.dir/src/Block.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/Block.cpp.o: ../src/Block.cpp
CMakeFiles/BPTree.dir/src/Block.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BPTree.dir/src/Block.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/Block.cpp.o -MF CMakeFiles/BPTree.dir/src/Block.cpp.o.d -o CMakeFiles/BPTree.dir/src/Block.cpp.o -c /home/sk/Documents/phase-1-16/src/Block.cpp

CMakeFiles/BPTree.dir/src/Block.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/Block.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/Block.cpp > CMakeFiles/BPTree.dir/src/Block.cpp.i

CMakeFiles/BPTree.dir/src/Block.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/Block.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/Block.cpp -o CMakeFiles/BPTree.dir/src/Block.cpp.s

CMakeFiles/BPTree.dir/src/InternalNode.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/InternalNode.cpp.o: ../src/InternalNode.cpp
CMakeFiles/BPTree.dir/src/InternalNode.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BPTree.dir/src/InternalNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/InternalNode.cpp.o -MF CMakeFiles/BPTree.dir/src/InternalNode.cpp.o.d -o CMakeFiles/BPTree.dir/src/InternalNode.cpp.o -c /home/sk/Documents/phase-1-16/src/InternalNode.cpp

CMakeFiles/BPTree.dir/src/InternalNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/InternalNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/InternalNode.cpp > CMakeFiles/BPTree.dir/src/InternalNode.cpp.i

CMakeFiles/BPTree.dir/src/InternalNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/InternalNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/InternalNode.cpp -o CMakeFiles/BPTree.dir/src/InternalNode.cpp.s

CMakeFiles/BPTree.dir/src/LeafNode.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/LeafNode.cpp.o: ../src/LeafNode.cpp
CMakeFiles/BPTree.dir/src/LeafNode.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BPTree.dir/src/LeafNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/LeafNode.cpp.o -MF CMakeFiles/BPTree.dir/src/LeafNode.cpp.o.d -o CMakeFiles/BPTree.dir/src/LeafNode.cpp.o -c /home/sk/Documents/phase-1-16/src/LeafNode.cpp

CMakeFiles/BPTree.dir/src/LeafNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/LeafNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/LeafNode.cpp > CMakeFiles/BPTree.dir/src/LeafNode.cpp.i

CMakeFiles/BPTree.dir/src/LeafNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/LeafNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/LeafNode.cpp -o CMakeFiles/BPTree.dir/src/LeafNode.cpp.s

CMakeFiles/BPTree.dir/src/Query.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/Query.cpp.o: ../src/Query.cpp
CMakeFiles/BPTree.dir/src/Query.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/BPTree.dir/src/Query.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/Query.cpp.o -MF CMakeFiles/BPTree.dir/src/Query.cpp.o.d -o CMakeFiles/BPTree.dir/src/Query.cpp.o -c /home/sk/Documents/phase-1-16/src/Query.cpp

CMakeFiles/BPTree.dir/src/Query.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/Query.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/Query.cpp > CMakeFiles/BPTree.dir/src/Query.cpp.i

CMakeFiles/BPTree.dir/src/Query.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/Query.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/Query.cpp -o CMakeFiles/BPTree.dir/src/Query.cpp.s

CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o: ../src/RecordPtr.cpp
CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o -MF CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o.d -o CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o -c /home/sk/Documents/phase-1-16/src/RecordPtr.cpp

CMakeFiles/BPTree.dir/src/RecordPtr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/RecordPtr.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/RecordPtr.cpp > CMakeFiles/BPTree.dir/src/RecordPtr.cpp.i

CMakeFiles/BPTree.dir/src/RecordPtr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/RecordPtr.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/RecordPtr.cpp -o CMakeFiles/BPTree.dir/src/RecordPtr.cpp.s

CMakeFiles/BPTree.dir/src/TreeNode.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/TreeNode.cpp.o: ../src/TreeNode.cpp
CMakeFiles/BPTree.dir/src/TreeNode.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/BPTree.dir/src/TreeNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/TreeNode.cpp.o -MF CMakeFiles/BPTree.dir/src/TreeNode.cpp.o.d -o CMakeFiles/BPTree.dir/src/TreeNode.cpp.o -c /home/sk/Documents/phase-1-16/src/TreeNode.cpp

CMakeFiles/BPTree.dir/src/TreeNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/TreeNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/TreeNode.cpp > CMakeFiles/BPTree.dir/src/TreeNode.cpp.i

CMakeFiles/BPTree.dir/src/TreeNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/TreeNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/TreeNode.cpp -o CMakeFiles/BPTree.dir/src/TreeNode.cpp.s

CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o: ../src/UnorderedHeap.cpp
CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o -MF CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o.d -o CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o -c /home/sk/Documents/phase-1-16/src/UnorderedHeap.cpp

CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/UnorderedHeap.cpp > CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.i

CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/UnorderedHeap.cpp -o CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.s

CMakeFiles/BPTree.dir/src/main.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/BPTree.dir/src/main.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/BPTree.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/main.cpp.o -MF CMakeFiles/BPTree.dir/src/main.cpp.o.d -o CMakeFiles/BPTree.dir/src/main.cpp.o -c /home/sk/Documents/phase-1-16/src/main.cpp

CMakeFiles/BPTree.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/main.cpp > CMakeFiles/BPTree.dir/src/main.cpp.i

CMakeFiles/BPTree.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/main.cpp -o CMakeFiles/BPTree.dir/src/main.cpp.s

CMakeFiles/BPTree.dir/src/utils.cpp.o: CMakeFiles/BPTree.dir/flags.make
CMakeFiles/BPTree.dir/src/utils.cpp.o: ../src/utils.cpp
CMakeFiles/BPTree.dir/src/utils.cpp.o: CMakeFiles/BPTree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/BPTree.dir/src/utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BPTree.dir/src/utils.cpp.o -MF CMakeFiles/BPTree.dir/src/utils.cpp.o.d -o CMakeFiles/BPTree.dir/src/utils.cpp.o -c /home/sk/Documents/phase-1-16/src/utils.cpp

CMakeFiles/BPTree.dir/src/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BPTree.dir/src/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sk/Documents/phase-1-16/src/utils.cpp > CMakeFiles/BPTree.dir/src/utils.cpp.i

CMakeFiles/BPTree.dir/src/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BPTree.dir/src/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sk/Documents/phase-1-16/src/utils.cpp -o CMakeFiles/BPTree.dir/src/utils.cpp.s

# Object files for target BPTree
BPTree_OBJECTS = \
"CMakeFiles/BPTree.dir/src/BPTree.cpp.o" \
"CMakeFiles/BPTree.dir/src/Block.cpp.o" \
"CMakeFiles/BPTree.dir/src/InternalNode.cpp.o" \
"CMakeFiles/BPTree.dir/src/LeafNode.cpp.o" \
"CMakeFiles/BPTree.dir/src/Query.cpp.o" \
"CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o" \
"CMakeFiles/BPTree.dir/src/TreeNode.cpp.o" \
"CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o" \
"CMakeFiles/BPTree.dir/src/main.cpp.o" \
"CMakeFiles/BPTree.dir/src/utils.cpp.o"

# External object files for target BPTree
BPTree_EXTERNAL_OBJECTS =

BPTree: CMakeFiles/BPTree.dir/src/BPTree.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/Block.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/InternalNode.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/LeafNode.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/Query.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/RecordPtr.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/TreeNode.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/UnorderedHeap.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/main.cpp.o
BPTree: CMakeFiles/BPTree.dir/src/utils.cpp.o
BPTree: CMakeFiles/BPTree.dir/build.make
BPTree: CMakeFiles/BPTree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sk/Documents/phase-1-16/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable BPTree"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BPTree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BPTree.dir/build: BPTree
.PHONY : CMakeFiles/BPTree.dir/build

CMakeFiles/BPTree.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BPTree.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BPTree.dir/clean

CMakeFiles/BPTree.dir/depend:
	cd /home/sk/Documents/phase-1-16/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sk/Documents/phase-1-16 /home/sk/Documents/phase-1-16 /home/sk/Documents/phase-1-16/build /home/sk/Documents/phase-1-16/build /home/sk/Documents/phase-1-16/build/CMakeFiles/BPTree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BPTree.dir/depend

