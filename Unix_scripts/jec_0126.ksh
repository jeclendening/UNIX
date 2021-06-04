#!/bin/ksh
# Script name : jec_0126.ksh
# Author      : Alex Soto
# Date        : Dec.2003
# ===================================================================================
# start DYNAMICS
# ===================================================================================
# 
export asofcur=me0309
#
rm -f $INPUTS/jec_zma26a1.$asofcur

#
#  *<HIST DISK
export SORTIN=$INPUTS/jec_ssn_dyn.y
export SORTOUT=$INPUTS/jec_zma26a1.$asofcur
export LRECL=1100
#
#   SORT FIELDS=(1,9,CH,A,010,8,CH,A,18,6,CH,A)
#   SORTED BY:  SSN, EDOA, AND NOA1
#
export SYNCFIELDS="f1 1 char 9 EBCDIC , f2 010 char 8 EBCDIC , f3 18 char 6 EBCDIC, f4 24 char 1077 EBCDIC "
export SYNCKEYS="f1 ASCENDING, f2 ASCENDING, f3 ASCENDING , f4 ASCENDING "
syncgen
#
rm -f $INPUTS/jec_zma26a3.$asofcur
#
#
export ZMA26A1I=$INPUTS/jec_zma26a1.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA26A3O=$INPUTS/jec_zma26a3.$asofcur
export PRTFILE=none
#
cobrun jec_zma26pra.gnt 2>>$ERRFILE
export RTNCODE=$?
chkcode jec_zma26pra
#
#   *<=QC OPM                *<=DYNAMICS
export SORTIN=$INPUTS/jec_zma26a3.$asofcur
export SORTOUT=$TAPES/jec_zma26x3.$asofcur
export LRECL=260
#
# SORT FIELDS=(1,4,CH,A,27,9,CH,A,36,50,ch,a,116,1,ch,a)
export SYNCFIELDS="f1 1 char 4 EBCDIC , f2 27 char 9 EBCDIC , f3 36 char 50 EBCDIC , f4 116 char 1 EBCDIC "
export SYNCKEYS="f1 ASCENDING, f2 ASCENDING, f3 ASCENDING, f4 ASCENDING"
syncgen
# ===================================================================================
# end of DYNAMICS
# ==============================================================================
#
rm -f $INPUTS/jec_zma26a1.$asofcur
rm -f $INPUTS/jec_zma26a3.$asofcur
