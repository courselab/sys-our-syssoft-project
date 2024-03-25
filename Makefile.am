#    SPDX-FileCopyrightText: 2021 Monaco F. J. <monaco@usp.br>
#   
#    SPDX-License-Identifier: GPL-3.0-or-later
#
#    This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.

SUBDIRS = tools eg extra try test replace 

ACLOCAL_AMFLAGS = -I m4

# Other directories which have a manually crafted Makefile, where we want
# to invoke make clean.

other_dirs = draft .reuse LICENSES

.PHONY: clean-local

clean-local:
	for i in $(other_dirs) ; do \
	  if test -f $$i/Makefile ; then \
	    $(MAKE) $(AM_MAKEFLAGS) -C $$i clean;\
	  fi;\
	done

EXTRA_DIST = $(other_dirs) .gitignore .version .srcdir

EXTRA_GARBAGE = *~

DISTCLEANFILES = $(DESTDIR).srcdir $(DESTDIR).version

