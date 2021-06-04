grep '399987026' zmd59a1.me0309 >jec_ssn_dyn.y
grep '403843956' zmd59a1.me0309 >>jec_ssn_dyn.y
grep '552923830' zmd59a1.me0309 >>jec_ssn_dyn.y
grep '529827307' zmd59a1.me0309 >>jec_ssn_dyn.y
#
#
#cut -c 27-35,65-67,77-84,85-86,93-94,95-100,104-104,178-179,180-185 jec_ssn_dyn.y > jec_ssn_dyn.yy
#
#cat jec_ssn_dyn.yy | awk '{print substr($0,1,9),
#                   substr($0,10,3),
#                   substr($0,13,8),
#                   substr($0,21,2),
#                   substr($0,23,2),
#                   substr($0,25,6),
#                   substr($0,31,1),
#                   substr($0,32,2),
#                   substr($0,34,6)}' > jec_ssn_dyn.yyy
#
#echo "SSN          NOA      EFFDA    GS   STP  SALWAG PD PSTP   PRSWAG" > jec_ssn_dyn.yyyy
#
#cat jec_ssn_dyn.yyy | awk '{print $1,"   " $2,"   "$3,"   "$4,"  "$5,"  "$6,"     "$7,"  "$8,"  "$9}'>> jec_ssn_dyn.yyyy 
