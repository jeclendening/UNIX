cut -c 01-01,02-03,24-25,51-51,131-132,133-141 zmd42a1.me0309 >jec_42turk.x
grep "AR" jec_42turk.x > jec_42turk.xx
#sort jec_42turk.xx | uniq -c >jec_42turk.xxx
grep "TU" jec_42turk.xx >jec_42turk.xxx
sort jec_42turk.xxx > jec_42turk.zzzz
#
echo "Count of people with a gsa of Turkey" >jec_42turk_awk.xx
echo "------------------------------------" >>jec_42turk_awk.xx
echo "EMP-T AGY GSA ACT DUT SNN" >> jec_42turk_awk.xx
echo "----- --- --- --- --- ---------" >> jec_42turk_awk.xx
#
cat jec_42turk.zzzz | awk '{print substr($0,1,1),
                          substr($0,2,2),
                          substr($0,4,2),
                          substr($0,6,1),
                          substr($0,7,2),
                          substr($0,9,9)}' > jec_42turk_awk.x
#
cat jec_42turk_awk.x | awk '{print $1,"    "$2," " $3," "$4,"  " $5," "$6}' >> jec_42turk_awk.xx
