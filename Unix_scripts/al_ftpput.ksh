#!/bin/ksh
# Script Name: al_ftpput.ksh
#==========================================================================
# The "al_list_ftp.x is the input file for this scriptr,
# you can obtain it by running the script al_get_prg.ksh.
# To run this script from the command line enter al_ftpput.ksh < al_list_ftp.x + extension
# extension = cbl or gnt or cpy
#=========================================================================

#=========================================================================
umask 0000
ext=$1
  case $ext in
    cbl) hostdir=/usr4/local/development/reports/source
         remotedir=/usr17/local/development/reports/source
         ;;
    gnt) hostdir=/usr4/local/development/reports/bin
         remotedir=/usr17/local/development/reports/bin
         ;;
    ksh) hostdir=/usr4/local/development/reports/scripts
         remotedir=/usr17/local/development/reports/scripts
         ;;
    cpy) hostdir=/usr4/local/development/reports/library
         remotedir=/usr17/local/development/reports/library
         ;;
    *)  echo "Invalid parameter!!!"
        exit
        ;;
  esac
cd $hostdir
beginftp="open 128.190.160.21
$LOGNAME
cd $remotedir"
echo "$beginftp" > tempftp
while read fname
do
  echo "put $fname $fname" >> tempftp
  echo "chmod 666 $fname" >> tempftp
done
endftp="close
bye"
echo "$endftp" >> tempftp
ftp < tempftp
rm tempftp
