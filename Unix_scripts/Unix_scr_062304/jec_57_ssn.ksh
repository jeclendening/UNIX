cut -c 96-104 zmd57a1.me0306 > jec_57_gsa.xx
sort jec_57_gsa.xx | uniq -c >jec-gsa_uniq_org.x
#
cut -c 96-104 zmd57a1.opm.me0306 > jec_57_uniq_ft_mon.x
sort jec_57_uniq_ft_mon.x | uniq -c > jec_57_uniq_ft_mon.xxx
#
