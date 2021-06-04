#!/bin/ksh
# Script Name: al_opm_sptid_check.ksh
# =============================================================================================
rm -f zmd57_SPTID.x
rm -f al_zmd57_SPTID.x
cat zmd57a1.$asofcur | awk ' {if(substr($0,80,4)=="ARCE")
 if(substr($0,68,2)=="DB")
 if(substr($0,138,4)==0414)
 if(substr($0,87,1)==0) {print$0} '}  >> zmd57_SPTID.x
cut -c 80-83,68-69,138-141,87 zmd57_SPTID.x > al_zmd57_SPTID.x
#cut -c 1-9,68-69,80-83,87,138-141 zmd57_SPTID.x > al_zmd57_SPTID.x
#
# =============================================================================================
#
