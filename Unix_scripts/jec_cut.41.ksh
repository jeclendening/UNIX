cut -c 01-01,33-38,133-141 zmd41a1.me0208 >jec_uic_41.x
cut -c 01-01,2-7,8-16 jec_uic_41.x >jec_uic_41.xx
cat jec_uic_41.xx | awk '{print substr($0,1,1),
                         substr($0,2,6),
                         substr($0,8,9)}' > jec_uic_41.xxx 
                    awk '{print $3, $2, $1 }' jec_uic_41.xxx >jec_uic_41.yy
sort -k 1.11,1.16 jec_uic_41.yy >jec_uic_41.yyyy 
