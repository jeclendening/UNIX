cut -c 04-12 zmd35a3.me0108 |sort >jec_35.x
cut -c 01-09 zmd57a1.me0110 |sort >jec_57.x
diff jec_35.x jec_57.x >jec_35_57.x
