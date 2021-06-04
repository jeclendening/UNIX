cut -c 02-05 zmd42a1.$asofcur >jec_42_agy.x
sort jec_42_agy.x | uniq -c > jec_42_agy.xxx
wc -l jec_42_agy.x >>jec_42_agy.xxx
