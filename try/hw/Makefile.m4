dnl    SPDX-FileCopyrightText: 2021 Monaco F. J. <monaco@usp.br>
dnl   
dnl    SPDX-License-Identifier: GPL-3.0-or-later
dnl
dnl    This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.
dnl
dnl    >> Usage hint:
dnl
dnl       If you're looking for a file such as README or Makefile, then this one 
dnl       you are reading now is probably not the file you are interested in. This
dnl       and other files named with suffix '.m4' are source files used by SYSeg
dnl       to create the actual documentation files, scripts and other items they
dnl       refer to. If you can't find a corresponding file without the '.m4' name
dnl       extension in this same directory, then chances are that you have missed
dnl       the build instructions in the README file at the top of SYSeg's source
dnl       tree (yep, it's called README for a reason).

include(docm4.m4)dnl

##
## Relevent files for this exercise.
##

all: # hw-hex hw-s hw-c
	@echo "Edit this rule"

hw-hex.bin : hw.hex
	@echo "Edit this rule"

hw-s.bin : hw.S
	@echo "Edit this rule"

hw-c.bin : hw.c
	@echo "Edit this line"

hex2bin : hex2bin.c
	gcc $< -o $@

.PHONY: clean

clean:
	rm -rf *.bin *.o *.s hex2bin

# Create stand-alone distribution

EXPORT_FILES = hw.hex hw.S hw.c Makefile README TOOL_PATH/hex2bin.c TOOL_PATH/debug.h

DOCM4_EXPORT([hw],[0.1.1])

# Include Make Bintools

DOCM4_BINTOOLS
