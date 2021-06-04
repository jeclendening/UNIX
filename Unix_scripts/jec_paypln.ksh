cut -c 001-009,068-069,076-077,080-083,111-114 zmd57a1.me0209 >jec_pay_plan
cat jec_pay_plan | awk '{print substr($0,1,9),
                        substr($0,10,2),
                        substr($0,12,2),
                        substr($0,14,4),
                        substr($0,18,4)}'| sort -k 1.10,1.12 >jec_pay_pln.x
head -120 jec_pay_pln.x > jec_pay_pln.xx
#                   awk '{print $2, $5, $1 }' jec_pay_pln.x > jec_pay_pln.xx
#sort jec_pay_pln.xx > jec_pay_pln.xxx
