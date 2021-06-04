#!/bin/ksh
export asofprv=200401  
export asofcur=200402  
export edoa=20040229
export m3dt=20040531
export mmmonth=FEB 
export yyyear=2004
export prvedoa=20040131
#
#
asofprv=$8
asofcur=$9
edoa=$10
m3dt=$11
mmmonth=$12
yyyear=$13
prvedoa=$14
#
#
cat zma01a7.$asofprv | awk '{print substr($0,1,9)
                       substr(0,16,11)
                       substr(0,33,3)
                       substr(0,44,1)
                       substr(0,53,3)
                       substr(0,65,1)
                       substr(0,74,1)' > zma01a7.out     
                              
cat zma01a7.out  | awk '{print $1 $8 $2 $9 $3 $10 $4 $11 $5 $12 $6 $13 $7 $14}' >> zma01a7.$asofcur
