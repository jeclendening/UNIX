#!/bin/ksh
# Script name: al_test.ksh
rm -f $INPUTS/zma57a2.$asofcur
#  *<CPMF DISK
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zma57al.$asofcur
export LRECL=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 080 char 3 EBCDIC, f3 082 char 2 EBCDIC, f4 010 char 27 EBCDIC, f5 111 char 4 EBCDIC, f6 053 char 2 EBCDIC, f7 188 char 1 EBCDIC, f8 136 char 1 EBCDIC, f9 499 char 1 EBCDIC "
export SYNCKEYS="f3 ASCENDING"
export COND1="/condition cond1 f2 EQ \"ARX\" "
export INCL1="/include cond1 "
#export REFORM1="/reformat f1, f4, f2, f3, f5, f6, f7, f8, f9 "
syncgen
#unset COND1 INCL1 REFORM1
unset COND1 INCL1
