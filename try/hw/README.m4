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

include(docm4.m4)

 Bare-Metal Hello World
 ==============================================

 This activity is meant for practicing the concepts and techniques
 addressed in the series of examples covered in 'syseg/eg/hw'.

 Challenge
 ------------------------------

 a) Implement your own version of the hello world program in machine code.

    Edit the file hw.hex using `syseg/eg/hw/eg-00.hex` as reference.
    Avoid copying and pasting the code, though. Try to recreate it from
    your knowledge of x86 real-mode and legacy boot mechanism.

    Edit the Makefile to build hw-hex.bin.

    Test your code using the emulator.

    If it works, try booting it on your physical hardware.

       Note:

       You may need to add some extra code to satisfy idiosyncratic BIOSes.
       Consult the examples in `syseg/eg/hw`

 b) Implement your own version of the hello world program in AT&T assembly.

    Edit the hw.S using `syseg/eg/hw/eg-03.S` as reference.

    Repeat the tests mentioned in part (a).

 c) Implement your own version of the hello world program in C.

    Edit the file hw.c using `syseg/eg/hw/eg-08.c` as reference.

    Repeat the tests mentioned in part (a)

 ===============================================================================

 APPENDIX
 

DOCM4_EXERCISE_DIRECTIONS

DOCM4_BINTOOLS_DOC
