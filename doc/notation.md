#    SPDX-FileCopyrightText: 2021 Monaco F. J. <monaco@usp.br>
#   
#    SPDX-License-Identifier: GPL-3.0-or-later
#
#    This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.

 NOTATION CONVENTIONS
 ----------------------------------

 Unless otherwise explicitly annotated, the project documentation uses
 the following conventions.

 - Values in decimal base are denoted in their usual form as 1, 15, 42.
 
   Values in hexadecimal base are denoted with the prefix 0x, as in
   0x1, 0xF, 0x2F, or else by the suffix h, as in 1h, 2Ah.

   Values in binary are informally denote as a sequence of 0s and 1s
   when the base may be inferred by the context. Otherwise, they may
   be denoted with the prefix 0b, as in 0b10, 0b111000, or else with
   the suffix b, as in 10b, 111000b.

 - When referring to memory capacity, the symbols b is used to indicate
   a bit of information, while the symbols B and Byte are used to indicate
   an 8-bit byte. 

 - The symbols K, M, G etc. are used to denote the power-of-two multiples
   of a unit.

    E.g. 4 KBytes = 4 * 1024 Bytes.
    	 1 Gb = 1024 * 1024 b = 1048576 b = 400h bytes.

  - We use 'B' to denote byte, and 'b' to denote bit.


   Background:

   In the context of digital transmission, the electrical engineering
   community usually follow the SI (International System of Units)
   convention, where the prefixes k, M, G etc. denote power-of-ten
   multipliers (10 kb = 10 * 1000 bits). On the other hand, computer
   engineers and scientists, when referring to memory size, most often
   associate the prefixes with power-or-two multipliers (10 kb =
   10 * 1024 bits). This in congruence can be a source of confusion
   when reading equipment datasheets and technical other information
   (e.g. it's not rare that the capacity of a storage device be given
   in one way, and the data transfer rate in the other).

   To avoid the confusion, some references use the prefix Ki, Mi, Gi
   etc. to explicitly indicate the power-of-two multiplier.

   Our call is to assume the traditional power-of-two multiples that
   are familiar to most specialists and apprentices in the context
   of computer sciences and engineering. If we need to express a
   quantity that is multiple of ten, we will use the usual
   engineering notation like 5e3, meaning 5 x 10^3 (5 x 1000).

   


