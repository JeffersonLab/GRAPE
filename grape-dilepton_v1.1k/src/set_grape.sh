# --- for SunOS ---
#export  F77      f77
#export  FFLAGS  '-O -e'
#
# --- for SGI ---
# export  F77      f77
# export  FFLAGS  '-O -extend_source -Wl,-u -Wl,pydata_'
#
# --- for PC-Linux ---
export  F77=gfortran
#export  FFLAGS='-m32 -O -ffixed-line-length-132 -Wl,-u -Wl,pydata_'
export  FFLAGS='-O -ffixed-line-length-132 -fdefault-double-8 -fdefault-real-8 -Wl,-u -Wl,pydata_'
#
# --- for HP ---
# export  F77      f77
# export  FFLAGS  '-O +es'
#
# --- for AIX ---
# export  F77      xlf
# export  FFLAGS  '-O -qstrict -qextname -qfixed=100'
#=======================================

#(Path to CERNLIB)
#export  USRLDIR="-L/vol0/pierre/Bureau/TCSSImulation/GRAPE2/i386_redhat61/2000/lib"
#export  USRLDIR=$(cernlib -dy pdflib804 mathlib packlib)
export  USRLDIR=$(cernlib pdflib804 mathlib packlib)
# pythia6152

export  SYSLIB=" "
#(The following options might be needed for SunOS.)
export  SYSLIB="-lnsl -lm -lc"

#export  USRLIB="-lpdflib804 -lmathlib -lpacklib -lpythia6152  ${SYSLIB}"
#export  USRLIB=$(cernlib -dy pdflib804 mathlib packlib)
export  USRLIB=$(cernlib pdflib804 mathlib packlib)
# pythia6152

#=======================================
export  GRACELDIR="../lib"

#=======================================
source ./set_grape.usrobj.sh

#(EOF)
