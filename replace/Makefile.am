#    SPDX-FileCopyrightText: 2021 Monaco F. J. <monaco@usp.br>
#   
#    SPDX-License-Identifier: GPL-3.0-or-later
#
#    This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.

EXTRA_DIST =

docm4_files = README 

include $(top_srcdir)/tools/docm4.am

clean-local:
	rm -f $(docm4_files)

dist-hook: clean-local
