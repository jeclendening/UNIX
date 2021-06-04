#!/bin/ksh
# Script name: al_r018e.ksh
rm -f $INPUTS/zma57a2.$asofcur
#  *<CPMF DISK
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zma57a2.$asofcur
export LRECL=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 080 char 2 EBCDIC, f3 082 char 2 EBCDIC, f4 010 char 27 EBCDIC, f5 111 char 4 EBCDIC, f6 053 char 2 EBCDIC, f7 188 char 1 EBCDIC, f8 136 char 1 EBCDIC, f9 499 char 1 EBCDIC "
export SYNCKEYS="f3 ASCENDING"
#export COND1="/condition cond1 f2 EQ \"AR\" AND (f9 EQ \"1\" OR f9 EQ \"2\" OR f9 EQ \"3\" OR f9 EQ \"4\" OR f9 EQ \"5\")"
export COND1="/condition cond1 f2 EQ \"AR\" AND f9 EQ \"1\" "
# AND f7 EQ \"C\" AND f7 EQ \"D\" AND f8 LT \"6\" "
export INCL1="/include cond1 "
export REFORM1="/reformat f1, f4, f2, f3, f5, f6, f7, f8, f9 "
syncgen
unset COND1 INCL1 REFORM1
# ==================================================================================
#
# ==  f2-AGY-CD, f4-CMD, f5-POI, f6-CCPO-ID, f7-MOB-EMP, f8-ACT-IND, f9-MOB-POS == #
#
#
# == fields SSN, EMP. NAME, AGY-CD, CMD, POI, CCPO-ID, MOB-EMP, ACT-IND, MOB-POS == #
#
#=======================================================================================
#grep -f dmdc_ssn.x zma57a2.$asofcur > zmadmdc.$asofcur
#cut -c 1-9, 82-84 zmadmdc.$asofcur >  zmadmdc2.$asofcur | sort -k 1.9,10.12 > zmadmdc3.$asofcur
#export PRTFILE=none
#
#cobrun al_8epra.gnt 2>>$ERRFILE
#export RTNCODE=$?
#chkcode al_8epra
#awk '{print substr($0,001,9), substr($0,082,2)}' > zmadmdc.$asofcur
