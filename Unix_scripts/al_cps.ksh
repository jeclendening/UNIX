#!/bin/ksh
# Script name: al_cps.ksh
#
#  ===============================================================
rm al_trn_opms_opm_ssn.x
#
#export asofcur=me0107
export asofcur=me0309
export SORTIN=$INPUTS/al_trns_cps.x 
export SORTOUT=$TAPES/al_trns_opm_cps_ssn.x
export LRECL=500
export SYNCFIELDS="f1 003 char 9 EBCDIC, f2 012 char 8 EBCDIC, f3 074 char 3 EBCDIC, f4 144 char 2 EBCDIC, f5 146 char 2 EBCDIC, f6 148 char 2 EBCDIC, f7 152 char 1 EBCDIC, f8 163 char 8 EBCDIC, f9 171 char 5 EBCDIC, f10 028 char 3 EBCDIC, f11 020 char 8 EBCDIC"
#export INCL1="/include cond1 "
export SYNCKEYS="f1 ASCENDING"
export REFORM1="/reformat f1, f3, f10, f2, f11, f4, f7, f6, f8, f9, f5"
syncgen
unset COND1 INCL1
unset REFORM1
