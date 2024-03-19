<!--
   SPDX-FileCopyrightText: 2001 Monaco F. J. <monaco@usp.br>
  
   SPDX-License-Identifier: GPL-3.0-or-later

   This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.
-->

 Copyright (c) 2021 Monaco F. J. <monaco@usp.br>. 

 SYSeg is free software and can be distributed under the terms of GNU General
 Public License version 3 of the license or, at your discretion, any later
 version.

 Third-party source-code files distributed along with SYSeg are made available
 under their respective licenses, as annotated in each individual file.

 See the terms of each license under the directory LICENSES. 



# SYSeg - System Software by Example

SYSeg (System Software, e.g.) is a collection of code examples and programming
exercises intended for illustration of general concepts and techniques
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

SYSeg official repository is at https https://gitlab.com/monaco/syseg.

## Before you dig into the examples (IMPORTANT)

- Most code examples and programming exercises require auxiliary artifacts 
  (including the documentation!) which must be built beforehand. 

  In order to get those items built you **must** perform the setup procedure.

  Please, read `doc/syseg.md' and proceed as explained.

  There you will also find instructions on how to use SYSeg code examples,
  as well as the requirements and dependencies your system needs to meet
  in order to build and execute SYSeg tools.

## REALLY IMPORTANT

   In case you have missed it, do take notice of the directions above.

   The file is named `README` for a reason.

## Overview

SYSeg contents. 

 - Directory `eg`    contains the main source code examples.
 - Directory `try`   contains suggested programming exercises.
 - Directory `tools` contains auxiliary tools used by examples and exercises.
 - Directory `doc`   contains SYSeg documentation.
 - Directory `extra` contains additional material about advanced topics,
   	     	     non-standard features, side notes, and hacker lore.
 - Directory 'draft' contains work-in-progress material
   	     	     (likely incomplete or buggy)

   The `README` file in each sub-directory further details its contents.

## Contributing

 Bug reports and suggestions are always welcome: feel free to contact the
 author directly or open an issue at the version-control repository.

 Should you like to contribute code, please, refer to `CONTRIBUTING.md`.

 The file 'AUTHORS' lists all contributors and acknowledgments.
