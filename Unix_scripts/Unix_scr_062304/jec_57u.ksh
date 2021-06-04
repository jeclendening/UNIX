cut -c 3-5,6-11,13-82 zmd57u1.new >zmd57u1.new_1
cat zmd57u1.new_1 | awk '{print substr($0,4,6),
                        substr($0,1,3),
                        substr($0,10,72)}' > jec_zmd57u1.new
sort jec_zmd57u1.new >jec_zmd57u1.new.xx    
cut -c 1-6,8-10,12-82 jec_zmd57u1.new.xx >jec_zmd57u1.new.xxx
