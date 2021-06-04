#!/bin/ksh
# Script name: al_59_653_16_2.ksh
#
#  ===============================================================
rm al_output_file.$sofcur
#
#export asofcur=me0107
export asofcur=me0309
export SORTIN=$INPUTS/al_59a1.$asofcur
export SORTOUT=$TAPES/al_59_REC.$asofcur
export LRECL=1100;export LRECL
export SYNCFIELDS="f1 101 char 9 EBCDIC , f2 018 char 3 EBCDIC, f3 075 char 1 EBCDIC, f4 076 char 2 EBCDIC, f5 178 char 2 EBCDIC, f6 745 char 8 EBCDIC, f7 010 char 8 EBCDIC, f8 078 char 8 EBCDIC, f9 168 char 2 EBCDIC, f10 168 char 2 EBCDIC, f11 60 char 5 EBCDIC, F12 465 char 5 EBCDIC, f13 071 char 2 EBCDIC, f14 176 char 2 EBCDIC"
#export COND1="/condition cond1 (f10 EQ \"FO\" OR f10 EQ \"FP\" OR f10 EQ \"GG\" OR f10 EQ \"GH\" OR f10 EQ \"GM\" OR f10 EQ \"GS\") AND (f3 EQ \"5\" OR f3 EQ \"6\" OR f3 EQ  \"M\")"
#export INCL1="/include cond1 "
export SYNCKEYS="f1 ASCENDING"
export REFORM1="/reformat f1, f2, f7, f9, f10, f3, f5, f4, f6, f8, f12, f11, f14, f13 "
# export REFORM1="/reformat f1, f2, f3, f4, f5, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17"
syncgen
unset COND1 INCL1
unset REFORM1
