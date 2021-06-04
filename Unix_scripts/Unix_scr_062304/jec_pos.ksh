cut -c 001-009,421-474 zmd57a1.me0306 >jec_pos_titl.x
cat jec_pos_titl.x | awk '{print substr($0,1,9),
                   substr($0,10,54)}' > jec_pos_titl.xx
cat jec_pos_titl.xx | awk '{print $2," " $1}' > jec_pos_titl.xxx
