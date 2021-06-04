chmod 777 jec_awk_57.ksh
cat zmd57a1.me0306 | awk "{print substr($0,96,9)}" | tr "511013650" "511013650" > zmd57a1.new
