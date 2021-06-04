#!/bin/ksh
# Script Name  : zmd_opm_fix.ksh
# Created date : Oct. 2002
# Created By   : Alex and Jeffrey
# ==================================================================================================
# ====sort CPMF====
# =================================================================================================
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmd57a2.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCKEYS="f1 ASCENDING"
export SYNCFIELDS="f1 001 char 9 EBCDIC "
syncgen
# ==================================================================================================
# ==== removing all records from the CPMF that have PAY-PLAN = GS and PAY-DET AND PAY-STP = 0 =====
# ==================================================================================================
cat zmd57a2.$asofcur | awk ' {if(substr($0,68,2)=="GS")
 if(substr($0,87,1)=="0")
 if(substr($0,78,2)=="00") {print$0} '} | cut -c 1-9 >> zmd57_ssn.x
grep -vf zmd57_ssn.x zmd57a2.$asofcur > zmd57x2.$asofcur
echo "                                                  "
echo "CPMF that have PAY-PLAN = GS and PAY-DET AND PAY-STP = 0 "
echo "                                                  "
#
# ==================================================================================================
# ==== removing all records from the CPMF that have PAY-PLAN = 00 ==================================
# ==================================================================================================
#
cat zmd57x2.$asofcur | awk ' {if(substr($0,68,2)=="  ") {print$0} '} | cut -c 1-9 >> zmd57_ssn_2.x
grep -vf zmd57_ssn_2.x zmd57x2.$asofcur > zmd57x3.$asofcur
echo "                                                  "
echo "CPMF that have PAY-PLAN = 00"
echo "                                                  "
# ==================================================================================================
# = this part moves the value in SAL-WAH back to two decimal places in the field ===================
# =========and pads the front of sal-wag where pay-bas = ph  =======================================
#
export SORTIN=$INPUTS/zmd57x3.$asofcur
export SORTOUT=$INPUTS/zmd57x4.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCKEYS="f1 ASCENDING"
export SYNCFIELDS="f1 001 char 9 EBCDIC , f2 010 char 58 EBCDIC, f3 068 char 2 EBCDIC, f4 070 char 8 EBCDIC, f5 078 char 2 EBCDIC, f6 080 char 5 EBCDIC, f7 085 char 2 EBCDIC, f8 087 char 1 EBCDIC, f9 088 char 557 EBCDIC, f10 645 char 8 EBCDIC, f11 645 char 3 EBCDIC, f12 646 char 2 EBCDIC, f13 648 char 5 EBCDIC, f14 653 char 347 EBCDIC "
export COND1="/condition cond1 (f7 EQ \"PH\") AND (f10 >= \"00099999\") AND f13 = \"00000\" "
export INCL1="/include cond1 "
export DERFIELD1="/derivedfield fd1 \"0000\" "
export DERFIELD2="/derivedfield fd2 \"00\" "
export REFORM1="/reformat f1, f2, f3, f4, f5, f6, f7, f8, f9, fd1, f12, fd2, f14 "
syncgen
unset COND1 INCL1
unset REFORM1 DERFIELD1 DERFIELD2
echo "                                                  "
echo " Syncsort finished"
echo "                                                  "
# ==================================================================================================
# ======================= this section obtains the records from the CPMF that were not modified ====
# ==================================================================================================   
cut -c 1-9 zmd57x4.$asofcur >zmdssn_mod.x
grep -vf zmdssn_mod.x zmd57x3.$asofcur > zmd57_rest.$asofcur
cat zmd57x4.$asofcur zmd57_rest.$asofcur | sort > zmd57_final.$asofcur 
echo "Modified records and not modified records appended!!!. New CPMF for OPM used!!!"
# ==============================================================================================
# ======== This section obtains all records the were modified and creates a file with ==========
# ======== selected fields                                                            ==========
# ==============================================================================================
cat  zmd57_ssn.x zmd57_ssn_2.x | sort -u > zmdssn_list.x
# ==================================================================================================
grep -f zmdssn_list.x zmd57a2.$asofcur | sort -u > zmd57_not_on_last_file.x
cut -c 001-009 zmd57_not_on_last_file.x | sort -u > zma_pay_plan_02.x
diff zmdssn_list.x zma_pay_plan_02.x | grep ">" > zma_pay_plan_02.xx

cut -c 001-009,068-069,076-077,080-083,111-114 zmd57_not_on_last_file.x > zma_pay_plan
cat zma_pay_plan | awk '{print substr($0,1,9),
                       substr($0,10,2),
                       substr($0,12,2),
                       substr($0,14,4),
                       substr($0,18,4)}'|  > zma_pay_pln.x
# ==============================================================================================
echo "                                                  "
echo " NEW CPMF INPUT FILE FOR OPM USE HAS BEEN CREATED "
echo "                                                  "
