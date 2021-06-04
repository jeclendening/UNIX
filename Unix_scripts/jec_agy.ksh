cut -c 01-01,02-05,46-46 zmd42a1.me0206 > jec_agy.x 
sort jec_agy.x | uniq -c > jec_agy.uniq.xx
grep DD jec_agy.uniq.xx > jec_agy.uniq.xxx
