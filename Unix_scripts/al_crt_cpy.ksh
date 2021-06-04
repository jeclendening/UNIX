#!/bin/ksh
# Script name: al_sub_three.ksh
# Author     : Alex Soto
# Date       : June 2003
# Descp : This script will read from two files. One is a list and the other is a
#         file with less than 72 characters per record. 
#=========================================================================================
time
rm -f al_tmp_inspgmtb.cpy
rm -f al_new_inspgmtb.cpy


V_stamp=`date +[%x]`
V_Author=`logname`
V_count=`cat al_inspgmtb | wc -l`

 echo "      * === Last update was created by $V_Author $V_stamp === *" > al_tmp_inspgmtb.cpy
 echo "       01  T-INSPGM-AREA." >> al_tmp_inspgmtb.cpy
 echo "         02  T-INSPGM-VALUE." >> al_tmp_inspgmtb.cpy

cat al_inspgmtb.x | tr " " "~" | while read line; 
do
 echo "            03  FILLER PIC X(54) VALUE" >> al_tmp_inspgmtb.cpy
 echo $line | tr "~" " "  >> al_tmp_inspgmtb.cpy
done


cat  al_tmp_inspgmtb.cpy > al_new_inspgmtb.cpy
 echo "         02  T-INSPGM-USE REDEFINES T-INSPGM-VALUE." >> al_new_inspgmtb.cpy
 echo "           03  T-INSPGM-ENT OCCURS $V_count TIMES" >> al_new_inspgmtb.cpy
 echo "                 ASCENDING KEY IS T-INSPGM-ENTRY" >> al_new_inspgmtb.cpy
 echo "                 INDEXED BY T-INSPGM-INDEX." >> al_new_inspgmtb.cpy 
 echo "              04  T-INSPGM-ENTRY   PIC X(4)." >> al_new_inspgmtb.cpy
 echo "              04 FILLER            PIC X(1)." >> al_new_inspgmtb.cpy
 echo "              04  T-INSPGM-CNT     PIC 9(6)." >> al_new_inspgmtb.cpy
 echo "              04 FILLER            PIC X(1)." >> al_new_inspgmtb.cpy
 echo "              04 T-INDPGM-NAME     PIC X(40).">> al_new_inspgmtb.cpy
 echo "       01  INSPGM-CNT                   PIC 9(4) VALUE $V_count." >> al_new_inspgmtb.cpy
