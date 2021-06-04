#!/bin/ksh
# Script name : al_concatenate.ksh
# Author      : Alex Soto
# Date        : August 2002
#===============================================================================
# This script will concatenate five lines from a file, into one record per 
# every five lines into a new file.
#===============================================================================
# use this one if you want to print line # 5
#===============================================================================
cat al_test.x | awk 'BEGIN {t=1}{
               if ( t==1 ) l1=$0
               if ( t==2 ) l2=$0
               if ( t==3 ) l3=$0
               if ( t==4 ) l3=$0
               if ( t==5 ) { print l1 l2 l3 l4 $0
                        l1=""
                        l2=""
                        l3=""
                        l4=""
                        t=0}
               t=t+1
              }END {print l1 l2 l3 l4}' > al_test2.x
#===============================================================================
# use this one if you do not want to print line # 5
#===============================================================================

al_INPUTS=/home/sotoa/AWK/INPUTS
al_OUTPUTS=/home/sotoa/AWK/OUTPUTS
cat $al_INPUTS/al_test.x | awk 'BEGIN {t=1};{C=0}{
               if ( t==1 ) l1=$0
               if ( t==2 ) l2=$0
               if ( t==3 ) l3=$0
               if ( t==4 ) l4=$0
               if ( t==5 ) { print l1 l2 l3 l4 
                        l1=""
                        l2=""
                        l3=""
                        l4=""
                        t=0}
               C=C+1
               t=t+1
              }END {print l1 l2 l3 l4 "\n TOTAL_LINES="C}' > $al_OUTPUTS/al_test2.x
#======================================================================
echo "script al_concatenate.ksh has finished"

