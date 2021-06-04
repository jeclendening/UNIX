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
#
#
#
#
#
cat jec_cpmf_Y.x | tr "511013650" "511016650" > $INPUTS/zmd57a1.cpmfs.$asofcur
#
#
sort zmd57a1.cpmfs.$asofcur > zmd57a1.cpmf.$asofcur
#
