#
cut -c 01-09,96-104 jec_cpmf_Y.x > jec_57.cpmf_uniq.y
sort jec_57.cpmf_uniq.y | uniq -c > jec_57.cpmf_uniq.yyy
#
#
cut -c 01-09,96-104 zmd57a1.cpmfs.me0306 > jec_57.cpmf_uniq.x
sort jec_57.cpmf_uniq.x | uniq -c > jec_57.cpmf_uniq.xxx
#
