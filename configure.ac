dnl    SPDX-FileCopyrightText: 2021 Monaco F. J. <monaco@usp.br>
dnl   
dnl    SPDX-License-Identifier: GPL-3.0-or-later
dnl
dnl    This file is part of SYSeg, available at https://gitlab.com/monaco/syseg.

dnl Initialize Autoconf, Automake and Libtool
dnl Define language and tools

AC_INIT([SYSeg], [1.0.0-beta], [monaco@usp.br],[syseg]) 
AC_PREREQ([2.65])                              
AC_CONFIG_AUX_DIR([build-aux])                 
AC_CONFIG_MACRO_DIR([m4])                      
AC_CONFIG_HEADERS([config.h])                  
AM_INIT_AUTOMAKE([-Wall 1.14.1 subdir-objects -Werror])	dnl Init Automake options

AC_PROG_CC 		        dnl Defines CC
AM_PROG_AR                      dnl Archiver for static lib                     

LT_INIT                         

dnl Set some variables containing copyright information

AC_SUBST([COPYRIGHT_YEAR],["2021"])
AC_SUBST([COPYRIGHT_NAME],["Monaco F. J. <monaco@usp.br>."])
AC_SUBST([COPYRIGHT_EMAIL],["monaco@usp.br"])


dnl
dnl Check for programs and libraries
dnl

m4_define([build_notes],
[

 IMPORTANT NOTICE: Build complete with limitations.
 --------------------------------------------------

 $1 not found in your system.

 As a consequence, examples which require this resource may be affected.
 Building SYSeg has still been possible. However, depending on which component
 of the project you are interested in, this may or may not limit the access to
 the available functionality (you may not be able to try some of the code
 examples or programming exercises). If you know that the referred resource is
 relevant, or if you are unsure, please install $1 and re-run this script.
 
 e.g. in apt-based distributions, run: apt install $2
 ])

m4_define([build_notes_fail],
[

  FAILED TO BUILD SYSeg: Required dependence not met.
  --------------------------------------------------

 $1 not found in your system.

 Program $1 is required to successfully build SYSeg.
 Please install $1 and re-run this script.

 e.g. in apt-based distributions, run: apt install $2
 ])


m4_define([build_notes_reuse],
[

 FAILED TO BUILD SYSeg: dependency not met.
 --------------------------------------------------

 $1 not found in your system.

 FSFE's REUSE helper tool is required for successfully building SYSeg.

 As of the time this build script was prepared, some of the desired features
 of reuse-tool are available only via a few patches. For convenience, this
 SYSeg release uses a custom version of the tool which can be installed from
 the SYSeg author's repository. Apparently, the package is not installed yet.
 Please invoke the following command at the shell prompt
 
   tools/install-reuse

 and re-run this script.

 This should install a local copy of the reuse-tool within SYSeg source tree,
 with the executable located at .local/bin (the local version should not
 conflict with any global/system-wide REUSE installation, if one exists in
 your system; if the install script warns you about updating your PATH
 environment variable, you may safely ignore it.)

 ])


m4_define([build_notes_git],
[

 FAILED TO BUILD SYSeg: unset repository options.
 --------------------------------------------------

 SYSeg relies on Git to perform a few tasks, and it requires some repository
 repository options to be set (in particular, the user's name and e-mail).
 Apparently, your environment is not configured. Please, execute the git
 configuration commands bellow

 git config [--global] <user name>
 git config [--global] <user e-mail>
 
])

rm -f syseg.log

dnl syseg_check_prog_warn(macro, program, install)

m4_define([syseg_check_prog_warn],
[
AC_CHECK_PROG(has_$1,$2,[yes])
AS_IF([test x"$has_$1" != x"yes"],
AC_MSG_WARN([*** Program $1 not found.])
echo "[build_notes([$1],[$3])]" >> syseg.log)
])

dnl syseg_check_prog_fail(macro, program, install)

m4_define([syseg_check_prog_fail],
[
AC_CHECK_PROG(has_$1,$2,[yes])
AS_IF([test x"$has_$1" != x"yes"],
AC_MSG_WARN([*** Program $1 not found.])
echo "[build_notes_fail([$1],[$3])]" >> syseg.log)
])

dnl syseg_check_reuse(macro, program, install)

m4_define([syseg_check_reuse],
[
AC_CHECK_FILE($1,[has_file=yes],)
AS_IF([test x"$has_file" != x"yes"],
AC_MSG_WARN([*** FSFE's REUSE helper tool not found.])
echo "[build_notes_reuse([$1],[$2])]" >> syseg.log
cat syseg.log
AC_MSG_NOTICE($ac_abs_confdir)
AC_MSG_ERROR([Fix the above errors and re-run this script]))
])

dnl syseg_check_git_config(macro, program, install)

m4_define([syseg_check_git_config],
[
user_name=`git config user.name`
user_email=`git config user.email`
AS_IF([test x"$user_name" == x"" || test x"$user_email" == x""],
AC_MSG_WARN([*** Git user and email not set.])   
echo "[build_notes_git]" >> syseg.log
cat syseg.log
AC_MSG_ERROR([Fix the above errors and re-run this script]))
])


dnl We currently require the compiler to support some specific functionality;
dnl build should fail otherwise. 


AX_CHECK_COMPILE_FLAG(
	[-fcf-protection],,
	[AC_MSG_ERROR([*** -fcf-protection not supported by compiler (gcc too old?)])]
	)

AX_GCC_FUNC_ATTRIBUTE([naked])
if test $ax_cv_have_func_attribute_naked = "no"; then
AC_MSG_ERROR([*** function attribute 'naked' not supported (gcc too old?)])
fi

syseg_check_prog_warn([xorriso],[xorriso],[xorriso])
syseg_check_prog_warn([qemu],[qemu-system-i386],[qemu-system-i386])
syseg_check_prog_warn([meld],[meld],[meld])
syseg_check_prog_warn([objdump],[objdump],[binutils])
syseg_check_prog_warn([readelf],[readelf],[binutils])
syseg_check_prog_warn([nasm],[nasm],[nasm])
syseg_check_prog_fail([Git],[git],[git])
syseg_check_prog_fail([Bash],[bash],[bash])

syseg_check_git_config()

dnl This should be eventually deprecated when the mainstream reuse-tool
dnl is updated with pending patches.

syseg_check_prog_fail([pipx],[pipx],[pipx])
syseg_check_reuse([$HOME/.syseg/bin/reuse],[reuse-tool]) 




dnl Alternative short name used for install prefixes etc.

AC_DEFINE(SHORT_NAME, [syseg],[Define short name.])
AC_SUBST([short_name],[syseg])

dnl Replace missing functions (see also GNUlib)

dnl AC_CONFIG_LIBOBJ_DIR([replace])
dnl AC_SEARCH_LIBS([qux], [xpto], [], AC_MSG_WARN([*** Symbol xpto not found in libxpto]),[])
dnl AC_SEARCH_LIBS([baz], [xpto], [], [AC_LIBOBJ(mybaz)],[])

dnl Define variables to be used by Automake

AC_SUBST([CPP_FLAGS],"-ansi -D_POSIX_C_SOURCE=200809L -Wall -Wextra")
AC_SUBST([C_FLAGS])
AC_SUBST([LD_FLAGS])

dnl Canonical check for POSIX threads.

AX_PTHREAD([AC_DEFINE(HAVE_PTHREAD,1,
            [Define to 1 if POSIX threads libraries and headers are found.]) ], 
	    AC_MSG_ERROR([POSIX threads support not detected.]))

dnl Output files

AC_CONFIG_FILES([Makefile
		tools/Makefile
		eg/Makefile
		extra/Makefile
		test/Makefile
		try/Makefile
		replace/Makefile
		])	

dnl Do it

AC_OUTPUT

AS_IF([test -f syseg.log],
[echo "Build notes"; cat syseg.log],
[
echo ""
echo "Configuration successfull."
echo "Now, run 'make' (required) and 'make install' (recommended)."
echo "See doc/syseg.md for detailed instructions."
])

dnl Save some data about the project for later user by some scripts.

echo AC_PACKAGE_VERSION > .version
echo $PWD > .srcdir
