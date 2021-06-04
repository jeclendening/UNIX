cut -c 048,080-081,109-110 zmd57a1.me0306 > jec_car_11.x
sort jec_car_11.x | uniq -c > jec_car_11.xx
grep AR11 jec_car_11.xx > jec_car_11.xxx
grep AR11 jec_car_11.x | wc -l >> jec_car_11.xxx
