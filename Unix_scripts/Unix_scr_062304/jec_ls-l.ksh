cd /usr37/local/development/reports/inputs
ls -l $* | awk '
#
#1 output column headers
# filesum: list files and total size in bytes
# input: long listing produced by "ls -l"
#1 output column headers
#
BEGIN { print "BYTES", "\t", "FILE" }
#
#2 test for 9 fields; files begin with "-"
#
NF == 9 && /^-/ {
        sum += $5
        ++filenum
        printf("%-15s\t%10d\n", $9, $5)      #$5, "\t", $9  print size and filename
}
#
#3 test for 9 fields; directory begins with "d"
NF == 9 && /^d/ {
        print "<dir>", "\t", $9
}
#
#4 test for ls -lR line ./dir:
$1 ~ /^\..*:$/ {
        print "\t" $0 
}
#
END {  
        printf("Total: %d bytes (%d files)\n", sum, filenum) 
}'
# print "Total: ", sum, "bytes (" filenum " files)"             
