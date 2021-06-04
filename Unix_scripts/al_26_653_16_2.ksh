#!/bin/ksh
# Script name: al_26_653_16_2.ksh
#
#  ===============================================================
rm al_output_file.$sofcur
#
#export asofcur=me0107
export asofcur=me0309
export SORTIN=$TAPES/al_26x3.$asofcur
export SORTOUT=$TAPES/al_26_REC.$asofcur
export LRECL=260
export SYNCFIELDS="f1 027 char 9 EBCDIC , f2 065 char 3 EBCDIC, f3 104 char 1 EBCDIC, f4 178 char 2 EBCDIC, f5 093 char 2 EBCDIC, f6 095 char 6 EBCDIC, f7 077 char 8 EBCDIC, f8 180 char 6 EBCDIC, f9 085 char 2 EBCDIC, f10 170 char 2 EBCDIC, f11 210 char 5 EBCDIC, F12 224 char 5 EBCDIC, f13 176 char 2 EBCDIC, f14 091 char 2 EBCDIC"
#export COND1="/condition cond1 (f10 EQ \"FO\" OR f10 EQ \"FP\" OR f10 EQ \"GG\" OR f10 EQ \"GH\" OR f10 EQ \"GM\" OR f10 EQ \"GS\") AND (f3 EQ \"5\" OR f3 EQ \"6\" OR f3 EQ  \"M\")"
#export INCL1="/include cond1 "
export SYNCKEYS="f1 ASCENDING"
export REFORM1="/reformat f1, f2, f7, f9, f10, f3, f5, f4, f6, f8, f12, f11, f14, f13"
# export REFORM1="/reformat f1, f2, f3, f4, f5, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17"
syncgen
unset COND1 INCL1
unset REFORM1
