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
CMAKE_COMMAND = D:\Gnu-for-windows\cmake-3.20.2-windows-x86_64\bin\cmake.exe

# The command to remove a file.
RM = D:\Gnu-for-windows\cmake-3.20.2-windows-x86_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\diy-x86os\start\test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\diy-x86os\start\test\build

# Include any dependencies generated for this target.
include source/boot/CMakeFiles/boot.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include source/boot/CMakeFiles/boot.dir/compiler_depend.make

# Include the progress variables for this target.
include source/boot/CMakeFiles/boot.dir/progress.make

# Include the compile flags for this target's objects.
include source/boot/CMakeFiles/boot.dir/flags.make

source/boot/CMakeFiles/boot.dir/start.S.obj: source/boot/CMakeFiles/boot.dir/flags.make
source/boot/CMakeFiles/boot.dir/start.S.obj: source/boot/CMakeFiles/boot.dir/includes_ASM.rsp
source/boot/CMakeFiles/boot.dir/start.S.obj: ../source/boot/start.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\diy-x86os\start\test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building ASM object source/boot/CMakeFiles/boot.dir/start.S.obj"
	cd /d E:\diy-x86os\start\test\build\source\boot && D:\Gnu-for-windows\x86_64-elf-tools-windows\bin\x86_64-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles\boot.dir\start.S.obj -c E:\diy-x86os\start\test\source\boot\start.S

source/boot/CMakeFiles/boot.dir/start.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/boot.dir/start.S.i"
	cd /d E:\diy-x86os\start\test\build\source\boot && D:\Gnu-for-windows\x86_64-elf-tools-windows\bin\x86_64-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E E:\diy-x86os\start\test\source\boot\start.S > CMakeFiles\boot.dir\start.S.i

source/boot/CMakeFiles/boot.dir/start.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/boot.dir/start.S.s"
	cd /d E:\diy-x86os\start\test\build\source\boot && D:\Gnu-for-windows\x86_64-elf-tools-windows\bin\x86_64-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S E:\diy-x86os\start\test\source\boot\start.S -o CMakeFiles\boot.dir\start.S.s

source/boot/CMakeFiles/boot.dir/boot.c.obj: source/boot/CMakeFiles/boot.dir/flags.make
source/boot/CMakeFiles/boot.dir/boot.c.obj: source/boot/CMakeFiles/boot.dir/includes_C.rsp
source/boot/CMakeFiles/boot.dir/boot.c.obj: ../source/boot/boot.c
source/boot/CMakeFiles/boot.dir/boot.c.obj: source/boot/CMakeFiles/boot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\diy-x86os\start\test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object source/boot/CMakeFiles/boot.dir/boot.c.obj"
	cd /d E:\diy-x86os\start\test\build\source\boot && D:\Gnu-for-windows\x86_64-elf-tools-windows\bin\x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT source/boot/CMakeFiles/boot.dir/boot.c.obj -MF CMakeFiles\boot.dir\boot.c.obj.d -o CMakeFiles\boot.dir\boot.c.obj -c E:\diy-x86os\start\test\source\boot\boot.c

source/boot/CMakeFiles/boot.dir/boot.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boot.dir/boot.c.i"
	cd /d E:\diy-x86os\start\test\build\source\boot && D:\Gnu-for-windows\x86_64-elf-tools-windows\bin\x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\diy-x86os\start\test\source\boot\boot.c > CMakeFiles\boot.dir\boot.c.i

source/boot/CMakeFiles/boot.dir/boot.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boot.dir/boot.c.s"
	cd /d E:\diy-x86os\start\test\build\source\boot && D:\Gnu-for-windows\x86_64-elf-tools-windows\bin\x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\diy-x86os\start\test\source\boot\boot.c -o CMakeFiles\boot.dir\boot.c.s

# Object files for target boot
boot_OBJECTS = \
"CMakeFiles/boot.dir/start.S.obj" \
"CMakeFiles/boot.dir/boot.c.obj"

# External object files for target boot
boot_EXTERNAL_OBJECTS =

source/boot/boot.exe: source/boot/CMakeFiles/boot.dir/start.S.obj
source/boot/boot.exe: source/boot/CMakeFiles/boot.dir/boot.c.obj
source/boot/boot.exe: source/boot/CMakeFiles/boot.dir/build.make
source/boot/boot.exe: source/boot/CMakeFiles/boot.dir/objects1.rsp
source/boot/boot.exe: source/boot/CMakeFiles/boot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\diy-x86os\start\test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable boot.exe"
	cd /d E:\diy-x86os\start\test\build\source\boot && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\boot.dir\link.txt --verbose=$(VERBOSE)
	cd /d E:\diy-x86os\start\test\build\source\boot && x86_64-elf-objcopy -O binary boot.elf E:/diy-x86os/start/test/../../image/boot.bin
	cd /d E:\diy-x86os\start\test\build\source\boot && x86_64-elf-objdump -x -d -S -m i8086 E:/diy-x86os/start/test/build/source/boot/boot.elf > boot_dis.txt
	cd /d E:\diy-x86os\start\test\build\source\boot && x86_64-elf-readelf -a E:/diy-x86os/start/test/build/source/boot/boot.elf > boot_elf.txt

# Rule to build all files generated by this target.
source/boot/CMakeFiles/boot.dir/build: source/boot/boot.exe
.PHONY : source/boot/CMakeFiles/boot.dir/build

source/boot/CMakeFiles/boot.dir/clean:
	cd /d E:\diy-x86os\start\test\build\source\boot && $(CMAKE_COMMAND) -P CMakeFiles\boot.dir\cmake_clean.cmake
.PHONY : source/boot/CMakeFiles/boot.dir/clean

source/boot/CMakeFiles/boot.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\diy-x86os\start\test E:\diy-x86os\start\test\source\boot E:\diy-x86os\start\test\build E:\diy-x86os\start\test\build\source\boot E:\diy-x86os\start\test\build\source\boot\CMakeFiles\boot.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : source/boot/CMakeFiles/boot.dir/depend

