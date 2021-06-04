#!/bin/ksh
asofcur=me0103
cat zmd57a1.$asofcur | while read line ;do
          field=`echo $line | cut -c10-36`
   typeset -u t=`echo $line | cut -c10-36`
      if [ "$field" != "$t" ];then
         echo $line
      fi
done


