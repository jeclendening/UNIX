#!/bin/ksh
#
# @(#) change gsa location for ft monroe
#
# Script name: jec_tr_57.ksh
#    Created By: Jeffrey Clendening
#    Purpose: convert gsa "511013650" to 511016650
#    Date: 07/23/2003
#----------------------------------------------------------------------------
# Modification History:
#    MODIFIED:
#    CYCLE:
#    PROGRAMMER:
#    MODIFICATION:
#-----------------------------------------------------------------------------
# Notes:
#
#
#-----------------------------------------------------------------------------
rm -f $INPUTS/zmd57a1.opms.$asofcur
rm -f jec_cpmf_Y.x
rm -f jec_cpmf_N.x
rm -f jec_57_count.x
#
#
#cat zmd57a1.$asofcur | awk '{if(substr($0,1,9)==511013650){print $0}}' >jec_57_ssn.x
#
grep  "511013650" zmd57a1.$asofcur > jec_cpmf_Y.x
grep -v "511013650" zmd57a1.$asofcur > jec_cpmf_N.x
#
echo 'Number Of records with a GSA of 511016650 before sub excuted' > jec_57_count.x
echo '-------' >> jec_57_count.x
#
grep  "511016650" $INPUTS/zmd57a1.$asofcur | wc -l >>jec_57_count.x
#
tr "511013650" "511016650" < $INPUTS/zmd57a1.$asofcur >$INPUTS/zmd57a1.opms.$asofcur
#
echo 'Number of records with a gsa of 511016650 after sub excuted' >> jec_57_count.x
echo '-------' >> jec_57_count.x 
#
#
sort zmd57a1.opms.$asofcur > zmd57a1.opm.$asofcur
#
grep "511016650" $INPUTS/zmd57a1.opm.$asofcur | wc -l >>jec_57_count.x
#
grep "511016650" $INPUTS/zmd57a1.opm.$asofcur > jec_cpmf_Y_out
#
