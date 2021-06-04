#!/bin/ksh
# Script name: al_ctg.ksh
#
#  ===============================================================
rm al_trn_opm_ctg_ssn.x
#
#export asofcur=me0107
export asofcur=me0309
export SORTIN=$INPUTS/al_trns_ctg.x 
export SORTOUT=$TAPES/al_trns_opm_ctg_ssn.x
export LRECL=1150
export SYNCFIELDS="f1 056 char 9 EBCDIC, f2 001 char 3 EBCDIC, f3 017 char 3 EBCDIC, f4 004 char 8 EBCDIC, f5 298 char 2 EBCDIC, f6 661 char 2 EBCDIC, f7 306 char 1 EBCDIC, f8 302 char 2 EBCDIC, f9 669 char 2 EBCDIC, f10 317 char 8 EBCDIC, f11 671 char 8 EBCDIC, f12 325 char 5 EBCDIC, f13 683 char 5 EBCDIC, f14 300 char 2 EBCDIC, f15 667 char 2 EBCDIC"
#export COND1="/condition cond1 (f10 EQ \"FO\" OR f10 EQ \"FP\" OR f10 EQ \"GG\" OR f10 EQ \"GH\" OR f10 EQ \"GM\" OR f10 EQ \"GS\") AND (f3 EQ \"5\" OR f3 EQ \"6\" OR f3 EQ  \"M\")"
#export INCL1="/include cond1 "
export SYNCKEYS="f1 ASCENDING"
export REFORM1="/reformat f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15"
syncgen
unset COND1 INCL1
unset REFORM1
