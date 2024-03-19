<!--
   SPDX-FileCopyrightText: 2021 Monaco F. J. <monaco@usp.br>
  
   SPDX-License-Identifier: GPL-3.0-or-later

   This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.
-->

 SYSeg Manual
==============================

TL;DR

- As part of an undergraduate scientific program at the university, I did
  some research work at the institute of physics. There was this huge and
  intimidating high-tech optical measurement device that mainly resembled
  some alien artifact straight out of a sci-fi movie. On a stainless-steel 
  tag attached to the equipment, a short note read, with subtle irony:

  "_If all attempts to assemble this device fail, read the instruction manual._"


INTRODUCTION
------------------------------

 SYSeg (System Software, e.g.) is a collection of code examples and programming
 exercises intended for illustration off general concepts and techniques
 concerning to system software design and implementation. The package, compiled
 from computer sciences and engineering class notes, is meant to be useful
 as a learning resource for students and instructors exploring low-level
 system programming,

 Code examples and companion documentation cover topics such as operating
 systems implementation, program build chain (pre-processor, compiler,
 assembler, linker), runtime system (shared/dynamic libraries, POSIX API etc.),
 application binary interface (ABI: calling conventions), dynamic linking
 (shared objects, relocation, position-independent-code), build automation
 systems and other related subjects.

 ESSENTIAL INFORMATION
 ------------------------------

 Each subdirectory in the source tree has a file `README` wich contains
 important instructions on how use the directory's contents. 

 Please, as the the name suggests, do read the information --- that shall 
 assuredly save you precious time. 

 If you find a file named `README.m4`, this is not the file you're looking
 for; it's a source file that is used by SYSeg be create the actual `README`.
 If you find the source `m4` file but not the corresponding `README` file in
 the same directory, changes are that you have missed the package configuration
 procedure described bellow. If so, please go through the step-by-step
 directions and proceed as explained.

 Requirements
 ------------------------------
 
 SYSeg was designed to be executed on the GNU/Linux operating systems, for the
 x86 hardware platform (aka PC).

 WINDOWS AND MAC USERS
 
 There have been reports of users being able to try SYSeg on Linux running in 
 a virtual machine over Microsoft Windows, as as well on WSL (Windows Subsystem
 for Linux). Such configurations have not been fully tested, though. 

 The examples should work on MacOS, although such possibility has not being
 fully and systematically tested either.

 If you decide to try a setup like those, feedback will be much appreciated.

 DEPENDENCIES

 In order to build and execute SYSeg code examples, the following pieces of
 software may be needed. Some are strictly required and should be installed
 in your system; others may be used only by some examples and their
 installation is optional (depending on the functionality you want to try).

 The SYSeg configuration scripts should inform you during the build procedure,
 and the instructions relative to each code example should also give further
 instructions.

 If a particular package is requested, the list bellow indicate the lowest
 version against which SYSeg examples have been tested. Using a more recent
 version should be fine, but it is not absolutely guaranteed that results won't
 exhibit (hopefully) minor variations. Feedback is always appreciated (feel
 free to open an issue at the official repository).

 It should be safe to use

 - Linux         5.13.0         (any decent ditribution)
 - Bash		 4.4-18		(most shell scripts need bash)
 - GCC 	     	 9.3.0	        (the GNU compiler)
 - GNU binutils  2.34		(GNU assembler, linker, disassembler etc.)
 - GNU coreutils 8.30		(basic utilities, probably already installed)
 - nasm		 2.14.02	(NASM assembler)
 - qemu		 4.2.1		(x86 emulator, specifically qemu-system-i386)
 - gcc-multilib  9.3.0		(to compile 16/32-bit code in a 64-bit platform)
 - xorriso	 1.5.2-1	(depending on your computer's BIOS)
 - hexdump	 POSIX.2	(binary editor)
 - meld		 3.20		(graphical diff tool, optional)
 - Git		 2.34.1		(some SYSeg scripts use git under the hood).
 - pipx		 1.0.0		(this dependence will eventually be deprecated)
 - reuse-tool    (see below)	(for REUSE/SPDX standard compliance)

 SYSeg uses a FSFE's REUSE helper tool. Currently, though, some of its desired
 features of reuse-tool are available only via a few patches. For convenience,
 this SYSeg release uses a custom version of the tool which can be installed
 from the SYSeg author's repository. The setup instructions described bellow
 should take care of the procedures for you.

 Setup Instructions
 ------------------------------
 
 Some examples in SYSeg need auxiliary artifacts which must be built beforehand.

 If you have obtained SYSeg source from the its official VCS repository (i.e.
 you have cloned it from the mainstream Git repository), then execute the 
 script (found at the top of the project's source tree)

 ```
  $ ./bootsrap.sh
 ```

 to create the build configuration script `configure`. To that end, you'll 
 need to have GNU Build System (Autotools) installed. E.g., in apt-based 
 distributions,  you may install the required software with

```
 $ sudo apt install automake autoconf libtool
```

 On the other hand, if you have obtained the software in the form a
 __pre-initialized distribution bundle__, usually as a tarball, you should
 already have the  script `configure` pre-built and thus you will not need
 Autotools (you may then safely skip the Autotools installation step above).

 Either way, locate the file in the root of source directory tree and execute it

```
 $ ./configure
```

 This script shall perform a series of tests to collect data about the build 
 platform. If it complains about missing pieces of software, install them 
 as needed and rerun `configure`. The file `syseg.log` contains a summary
 of the last execution of the configuration script.

 Finally, build the software with

```
 $ make
```

 **Note** that, as mentioned, this procedure is intended to build the auxiliary
 tools needed by SYSeg. The examples and programming exercises themselves will
 not be built as result of the main configuration script being executed. The
 process of building the example code is part of the skills that each example
 and programming exercise is meant to exercise.

 To build each example or programming exercise, one needs to access the
 subdirectory containing the respective source code and follow the instructions
 indicated in the corresponding `README` file (found in that respective
 subdirectory.)

 For more detailed instructions on building SYSeg, please, refer to file
 `INSTALL` in the root of the source tree (which will exists only after you
 have bootstrapped SYSeg, as explained above.)

 If you intend to try the proposed programming exercises according to the given 
 directions, you will need to install SYSeg tools locally. To that end, execute

```
 $make install
```

 This should install SYSeg auxiliary scripts, programs and data files under
 `$HOME/.syseg`. You won't need to add the location to the `PATH` environment
 variable, as the tools that need to access the resources in it will know
 where to find them. Do not install as the `root` user, nor use `sudo` to
 perform the installation.

 SYSeg Contents
 -------------------------------

 The file `README.md`, at the top of SYSeg source tree, contains a summary of
 the project directory structured. In each individual sub-directory, there
 should be a file `README` further detailing its contents. Remember, you need
 to build SYSeg in order to generate the `README` files.

 Proposed Exercises
 ------------------------------
 
 In addition to code examples, SYSeg contains also some proposed programming
 exercises which can be found in directory `syseg/try`

 Users interested in practicing skills on system software design and
 implementation are encouraged to explore them. If this is your case, please
 read on for general directions.

 Instructors are welcome, as well, to use SYSeg's exercises to teach their
 students. SYSeg provides some handy tools for this purpose, including
 scripts to prepare bootstrap code and directions to deliver the activities
 through a VCS repository.

 If you reuse SYSeg code either in your classes or implementation project,
 you are kindly invited to drop the author a message. It's always nice to
 know who else is exploring the material.

 __Notice__

 If the specification of a proposed exercise provides some bootstrap code
 for you to build upon, please, do not simply copy the files and add them
 to your own project. Some examples and bootstrap code work together with
 other components of SYSeg and may require either that you modify the file
 or to copy complementary files to your project --- if you don't, you may
 end up with incomplete code.

 Moreover, if you just copy the files, this may result in your project having
 legally inappropriate or misleading copyright information.

 Please, see below for the  proper way of copying SYSeg code into your project.
 
 Reusing SYSeg Code
 ------------------------------
 
 SYSeg is open source; you may freely reuse portions of it in your work.

 However, please take notice of the following directions.

 COPYRIGHT AND LICENSING LITERACY

 If you reuse third-party's source code in your own project, and modify that
 code, then, under the international copyright convention, you are creating
 a 'derivative work'. The derivative work is now a production of more than
 one author: the author(s) of the original code you copied, and you, who
 made changes to that work. You are entitled to share the copyright of your
 modified work with the copyright holder of the original work. The proper
 way to handle this condition is to have the copyright information of
 your work stating both you and the original author(s) as the legal copyright
 holders of your derivative work.  Also, you may only redistribute your
 derivative work in accordance with the license of the original work (you may
 chose a different license, but this license must not conflict with the terms
 of the license under which the original work' is distributed).
 
 To assist you in addressing these requirements, SYSeg offers a script that
 you can use to export files from SYSeg to your project. You can invoke the
 script like this

     `tools/syseg-export <original-file> <destination-directory>`

 The script will copy the original file into the destination directory
 and change the copyright notice (the comments at the top of the file)
 with the correct information. The script will also annotate the file
 with proper attribution for the original author.

 You can subsequently edit the information if you wish, for instance, to
 add the names of other authors. 

 USING BOOTSTRAP CODE

 If the specification of a SYSeg programming exercise provides some bootstrap
 code for you to build upon, please, do not simply copy the individual files
 to your project. As explained before, this may result in incomplete code.

 Instead, proceed as indicated in the 'README' file in respective directory.

 Unless otherwise indicated, the programming exercise should provide you
 with a Makefile containing a rule specifically intended to modify the
 bootstrap code as needed, copy auxiliary required files, and update the
 copyright notice accordingly. The rule should probably be invoked as

    `make export`

 When you are finished with the exercise, deliver your working using the
 method described in the aforementioned README file. The directions
 will possibly suggest you to commit your changes into a VCS (e.g. Git)
 repository.

 Conventions
 ------------------------------

 The file `doc\conventions.md` summarize some conventions used throughout
 the documentation and source code examples.

 Contributing
 ------------------------------

 Bug reports and suggestions are always welcome!

 Please refer to the file `CONTRIBUTING.md`.


 Troubleshooting
 ------------------------------   
   
 If you ever find any trouble using SYSeg, consider the following tips.

 - __I can see a `README.m4` or a `Makefile.m4` file in a given directory,
   but can't find the corresponding `README` or `Makefile` file.__

   This probably happens because you've missed the installation instructions.
   
   To fix the issue:
   
   ```
   cd <path>/syseg
   ./bootstrap.sh
   ./configure
   make
   ``` 
 - __I edited a Makefile.m4 and need to update the corresponding Makefile__
 
   Within the directory containg the edited `Makefile.am`:
   
   ```
   make -C ..
   ```
   
   