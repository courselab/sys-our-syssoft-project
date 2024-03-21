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

DOCM4_REVIEW

 BUILD PROCESS
 ==============================

 This directory contains a series of examples illustrating the process
 by which a program is transformed from its source into its executable form,
 aka the build process.

DOCM4_INSTRUCTIONS

 Contents
 ------------------------------

 Take a look at the following examples.



 * eg-01.c          Very simple program to exemplify the build steps.

   		    Execute

		      make eg-01.i           to produce the preprocessed source
		      make eg-01.s           to produce the assembly
		      make eg-01.o	     to produce the object code
		      make eg-01	     to produce the binary

		      less eg-01.s	     to inspect the assembly
		      make eg-01.o/diss      to disassemble the object
		      make eg-01/diss        to disassemble the executable


		    Try

		      readelf -r eg-01.o

                    and see that symbol foo is unresolved.

 * eg-02.c	    A C program containing one single compilation unity.

		    Build and execute the binary, and then check the return
		    status with.

		      echo $?

 * eg-03-alpha.c    Same as eg-02.c, but implementing functions after main().

		    Build the binary. You should see a warning about 
		    implicit function declarations.

 * eg-03.c	    Same as eg-03l-alpha, but with function declarations
   		    before main().

		    Build the binary and see that the issue is fixed.

 * eg-04.c	    Same as eg-03.c, but with declarations in a separate
   		    header file.

		    File eg-04.h is provided.
		    
		    Build the proprocessing translated unity with

 		       make eg-04.i

		    and compare with the source eg-02.c to see that the
		    processor directives have been resolved.

 * eg-05.c	    A program to illustrate the translation units

   		    Source eg-05.c calls an external function, which is
		    declared in eg-07.h.

		    Build the translation unit eg-05.i with

		       make eg-05.i

		    and inspect its contents with 'cat' to verify the
		    inclusions were resolved and macros have been expanded.


 * eg-06.c	    Like eg-03.c, but split into several translation units

   		    Build eg-06 with

		      make eg-06

		    and see the intermediate build steps which invoke the
		    preprocessor, compiler, assembler and linker.

		    Then build with

		      make eg-06 ALT=1

                    and see that this time we build the objects, create
		    a static library and then build the binary by linking
		    its object against the library
		    
		    Yet, build with
 
		      make eg-06 ALT=2


		    This time, libeg-06.a includes another object file, baz.o,
		    defining the symbol baz.

		    Run


		    meld <(make clean && make eg-06 ALT=1 && nm libeg-06.a) \
		         <(make clean && make eg-06 ALT=2 && nm libeg-06.a)

	            to compare both libraries.  Then, run

		    meld <(make clean && make eg-06 ALT=1 && nm eg-06) \
		         <(make clean && make eg-06 ALT=2 && nm eg-06)
		    

                    and see that baz is not included in the binary.

		    Also, compare the disassembly to make it sure
		    
		    meld <(make clean && make eg-06 ALT=1 && objdump -d eg-06)\
		         <(make clean && make eg-06 ALT=2 && objdump -d eg-06)

		    
DOCM4_BINTOOLS_DOC
