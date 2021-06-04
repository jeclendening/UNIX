export SORTIN=$INPUTS/zmd59a1.me0309
export SORTOUT=$TAPES/jec_payrate.x
export LRECL=1100
export SYNCFIELDS="f1 101 char 9 EBCDIC, f2 73 char 2 EBCDIC, f3 75 char 1 EBCDIC, f4 60 char 5 EBCDIC, f5 18 char 3 EBCDIC"
export COND1="/condition cond1 (f2 EQ \"FO\" OR f2 EQ \"FP\" OR f2 EQ \"GG\" OR f2 EQ \"GH\" OR f2 EQ \"GM\" OR f2 EQ \"GS\") 
      AND  (f3 EQ \"0\" OR  f3 EQ \"3\" OR  f3 EQ \"7\" OR  f3 EQ \"J\" OR  f3 EQ \"K\")"
export INCL1="/include cond1 "
export SYNCKEYS="f1 ASCENDING"
export REFORM1="/reformat f1, f2, f3, f4, f5"
syncgen
unset COND1 INCL1
unset REFORM1
#
