cat zmd57u1.new | awk '{print substr($0,5,6),
                       substr($0,1,3),
                       substr($0,12,28)}' > zmd57u1.new_1
