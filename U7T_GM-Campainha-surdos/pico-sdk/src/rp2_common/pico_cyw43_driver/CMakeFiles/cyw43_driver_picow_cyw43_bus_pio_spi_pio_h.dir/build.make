# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /home/pride/.pico-sdk/cmake/v3.29.9/bin/cmake

# The command to remove a file.
RM = /home/pride/.pico-sdk/cmake/v3.29.9/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos

# Utility rule file for cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.

# Include any custom commands dependencies for this target.
include pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/compiler_depend.make

# Include the progress variables for this target.
include pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/progress.make

pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h: pico-sdk/src/rp2_common/pico_cyw43_driver/cyw43_bus_pio_spi.pio.h

pico-sdk/src/rp2_common/pico_cyw43_driver/cyw43_bus_pio_spi.pio.h: /home/pride/.pico-sdk/sdk/1.5.1/src/rp2_common/pico_cyw43_driver/cyw43_bus_pio_spi.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating cyw43_bus_pio_spi.pio.h"
	cd /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos/pico-sdk/src/rp2_common/pico_cyw43_driver && ../../../../pioasm/pioasm -o c-sdk /home/pride/.pico-sdk/sdk/1.5.1/src/rp2_common/pico_cyw43_driver/cyw43_bus_pio_spi.pio /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos/pico-sdk/src/rp2_common/pico_cyw43_driver/cyw43_bus_pio_spi.pio.h

cyw43_driver_picow_cyw43_bus_pio_spi_pio_h: pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h
cyw43_driver_picow_cyw43_bus_pio_spi_pio_h: pico-sdk/src/rp2_common/pico_cyw43_driver/cyw43_bus_pio_spi.pio.h
cyw43_driver_picow_cyw43_bus_pio_spi_pio_h: pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/build.make
.PHONY : cyw43_driver_picow_cyw43_bus_pio_spi_pio_h

# Rule to build all files generated by this target.
pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/build: cyw43_driver_picow_cyw43_bus_pio_spi_pio_h
.PHONY : pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/build

pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/clean:
	cd /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos/pico-sdk/src/rp2_common/pico_cyw43_driver && $(CMAKE_COMMAND) -P CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/cmake_clean.cmake
.PHONY : pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/clean

pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/depend:
	cd /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos /home/pride/.pico-sdk/sdk/1.5.1/src/rp2_common/pico_cyw43_driver /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos/pico-sdk/src/rp2_common/pico_cyw43_driver /home/pride/Personal-staff/Projeto-Embarcatech/U7T_GM-Campainha-surdos/pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : pico-sdk/src/rp2_common/pico_cyw43_driver/CMakeFiles/cyw43_driver_picow_cyw43_bus_pio_spi_pio_h.dir/depend

