<!--
   SPDX-FileCopyrightText: 2001 Monaco F. J. <monaco@usp.br>
  
   SPDX-License-Identifier: GPL-3.0-or-later

   This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.
-->

 _Copyright (c) 2021 Monaco F. J. <monaco@usp.br>_ 

 _SYSeg is free software and can be distributed under the terms of GNU General
 Public License version 3 of the license or, at your discretion, any later 
 version. See section Licensing bellow for further information._

 SYSeg - System Software by Example
 ========================================
 SYSeg (System Software, e.g.) is a collection of source-code examples and 
 programming exercises intended to illustrate general concepts and techniques 
 related to system software design and implementation. 

About
-------------------------------------------
 
 SYSeg has been compiled from class notes in undergraduate courses in
 Computer Science and Engineering, and is meant to  be useful for students
 and instructors exploring low-level programming.

 Covered topics include code examples exploring
 
  - runtime system _(shared/dynamic libraries,  API implementation etc.)_
  
  - application binary interface _(calling conventions, memory alignment etc.)_
  
  - program build chain _(preprocessor, compiler, assembler, linker etc.)_
  
  - program execution _(dynamic linking, relocation, position-independent-code etc.)_
  
  - build automation systems _(make, code portability, autoconf/automake etc.)_
  
  - operating systems implementation: _(hardware interface, POSIX API, etc.)_
  
  - and other related subjects.

 SYSeg official repository is at https https://gitlab.com/monaco/syseg.


Build and Install
 -----------------------------------------------

 Before you dig into the examples, read this.
 
 Most code examples and programming exercises require auxiliary artifacts 
 (including the documentation!) which must be built beforehand. 

 In order to get those items built you **must** perform the setup procedure.

 Please, read `doc/syseg.md` and proceed as explained.

 There you will also find instructions on how to use SYSeg code examples,
 as well as the requirements and dependencies your system needs to meet
 in order to build and execute SYSeg tools.

 **IMPORTANT**

 In case you have rushed through this file and missed some detail, 
 please do take notice of the directions above. 

 They'll assuredly save you time, should you want to try SYSeg.

 This file is named `README` for a reason.

 Content overview
 ------------------------------
 
 SYSeg contents. 

 - Directory `eg`    contains the main source code examples.
 - Directory `try`   contains suggested programming exercises.
 - Directory `tools` contains auxiliary tools used by examples and exercises.
 - Directory `doc`   contains SYSeg documentation.
 - Directory `extra` contains side notes, arcane features and hacker lore.
 - Directory `draft` contains work-in-progress material (likely buggy)

 Each subdirectory contains a `README` file further explaining its contents.
 

 Contributing
 ------------------------------
 
 SYSeg is a work-in-progress developed and, as such, may contain
 suboptimal code and potential innacuracy in technical explanations as
 result of reliance on imprecise or misleading references. If you ever
 detect one such problem, it would be great if you could drop the
 author a note.

 Bug reports and suggestions are always welcome.

 Feel free to open and issue at the version-control repository.

 The file 'AUTHORS' lists all contributors and acknowledgments, with
 respective contact information.

 Should you like to contribute code, please, refer to the file
 `CONTRIBUTING.md`.
 
 Licensing
 -----------------------------
 
 SYSeg (system-software, _exempli gratia_)
 Copyright (c) 2021 Monaco F. J. <monaco@usp.br>. 

 SYSeg is free software and can be distributed under the terms of GNU General
 Public License version 3 of the license or, at your discretion, any later 
 version. Third-party source files distributed along with SYSeg are made 
 covered by their respective licenses, as annotated in each individual file.

 See the terms of each license under the directory LICENSES. 

 
 
