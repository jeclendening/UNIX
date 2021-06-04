#!/bin/ksh
# Script name: al_Donnita_CPMF_57.ksh
#
#  *<CPMF DISK
#  ===============================================================
#
#
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/al_57a1.$asofcur
export LRECL=1000;export LRECL
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 10 char 27 EBCDIC, f3 421 char 54 EBCDIC, f4 48 char 1 EBCDIC , f5 130 char 1 EBCDIC, f6 68 char 2 EBCDIC, f7 70 char 4 EBCDIC, f8 76 char 2 EBCDIC, f9 82 char 2 EBCDIC, f10 90 char 6 EBCDIC, f11 53 char 2 EBCDIC, f12 995 char 3 EBCDIC, f13 96 char 9 EBCDIC, f14 261 char 8 EBCDIC, f15 176 char 1 EBCDIC, f16 212 char 4 EBCDIC, f17 136 char 1 EBCDIC "
export COND1="/condition cond1 (f17 EQ \"1\" OR f17 EQ \"2\") AND (f15 GT \"1\" AND f15 LT \"5\") "
#export COND1="/condition cond1 (f15 GT \"1\" AND f15 LT \"5\") "
export INCL1="/include cond1 "
export SYNCKEYS="f1 ASCENDING"
#export DERFIELD1="/derivedfield fd1 \"1\" "
export REFORM1="/reformat f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17"
syncgen
unset COND1 INCL1
unset REFORM1 #DERFIELD1
#
