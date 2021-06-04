#!/bin/ksh
#--------------------------------------
# Script name: zmam42a2.ksh
# Written by: Bryan Wilson 
# Description: Produce total number of Active Army Employees
#              in Alaska or Hawaii and pay-bas not equal 
#              'wc' without compensation 
#              to replace easytrieve program EZDDALHI.
# Created: October 2002
# Modifications:
#--------------------------------------
rm -f $TAPES/zma42a2.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd42a1.$asofcur
export SORTOUT=$TAPES/zma42a2.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 1 EBCDIC , f2 2 char 2 EBCDIC , 
            f3 4 char 2 EBCDIC , f4 10 char 2 EBCDIC , f5 24 char 2 EBCDIC , 
            f6 42 char 2 EBCDIC , f7 46 char 1 EBCDIC , f8 51 char 1 EBCDIC , 
            f9 67 char 1 EBCDIC"
# * SORTED BY: Employee Type
export SYNCKEYS="f1 ASCENDING"
export COND1="/condition cond1 f2 EQ \"AR\" 
       AND (f1 LT \"5\" OR f1 EQ \"8\") 
       AND (f5 EQ \"02\" OR f5 EQ \"15\") 
       AND f6 != \"WC\" 
       AND f7 EQ \"1\" 
       AND f8 EQ \"1\" "
export INCL1="/include cond1 "
REFORM1="/reformat f5, f1"
export COND1 INCL1 REFORM1
syncgen
cd /usr17/local/development/reports/tapes
rm -f $TAPES/42a2file
rm -f $TAPES/42a2file_x
rm -f $TAPES/42a2file_xx

#
sort zma42a2.$asofcur | uniq -c > 42a2file
chmod 777 42a2file
unset COND1 INCL1 REFORM1
cat 42a2file | awk '{print substr($0,1,4),
                    substr($0,6,2),
                    substr($0,8,1)}' >> 42a2file_x
#
echo '************************ Number of Employees GSA Count ***************' > 42a2file_xx
echo '************************ Totals used in the Quarterly SF113 **********' >>42a2file_xx
echo '                                                                      ' >>42a2file_xx
echo '************************ HAWAII = 15 *********************************' >>42a2file_xx
echo '************************ ALASKA = 02 *********************************' >>42a2file_xx
echo '                                                                      ' >>42a2file_xx
echo '                                                                      ' >>42a2file_xx
echo 'T GS TOTAL'>> 42a2file_xx
echo '          '>> 42a2file_xx
               awk  '{print $3, $2, $1}' 42a2file_x >> 42a2file_xx                  
#
cd /usr17/local/development/reports/scripts
