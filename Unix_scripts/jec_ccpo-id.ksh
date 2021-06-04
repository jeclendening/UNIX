cut -c 053-054,80-83,96-104,111-114,152-153,624-625,995-997 zmd57a1.me0203 |sort -u >jec_ccpoid.xx
cut -c 01-02,3-6,7-10,11-35 jec_ccpoid.xx > jec_ccpoid.xxx
#echo 'ccagysgslocatinpoi*pcdtreg' > jec_ccpoid_sp.xx
echo 'cc*agys*gslocatin*poi**pc*dt*reg*' > jec_ccpoid_sp.xx
cat jec_ccpoid.xxx | awk '{print substr($0,1,2),
                          substr($0,3,4),
                          substr($0,7,9),
                          substr($0,16,4),
                          substr($0,20,2),
                          substr($0,22,2),
                          substr($0,24,3)}' >> jec_ccpoid_sp.xx
