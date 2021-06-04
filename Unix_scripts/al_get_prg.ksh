#!/bin/ksh 
# Script Name: al_get_prg.ksh
#
# the "al_list_ftp.x" file to be used as input to the script "al_getlist"
# or "al_putlist".
#
#==================================================================================
for i in `ls zma*.ksh`
do
    echo $i >> al_list_ftp.x
done
