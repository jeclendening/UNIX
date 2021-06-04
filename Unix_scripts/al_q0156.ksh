#!/bin/ksh
# Script name : al_q156.ksh
# Author      : 
# Date        :
# ECP         :
# Requested by: 
# Contact     : 
# Phone       : 
# Email       : 
# ===================================================================================
#        Modified: March 2002
# Effective Cycle: ME0202
#      Programmer: Alex Soto
#             ECP: ECP-0019
#    Requested by: Donnita Ackley
#         Contact:
#           Phone: (703)325-1405
#           Email: Donnita.Ackley@asamra.hoffman.army.mil
# ===================================================================================
# Description : Modified to have a report per each Region and one for the others POI.
#
# ===================================================================================
# Note        : 
#
# ===================================================================================
#export asofcur=me0201
#=====================================================
#====           RUN FOR POI  1962         ============
#=====================================================
time
rm $INPUTS/zmaPOI_1962.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $OUTPUTS/zma56a1.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_1962.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"1962\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_1962.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a1.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   1962        ============
#=====================================================
#=====================================================
#====           RUN FOR POI  1991         ============
#=====================================================
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_1991.$asofcur 2>/dev/null
rm $OUTPUTS/zma56a2.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_1991.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"1991\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_1991.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a2.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   1991        ============
#=====================================================
#=====================================================
#====           RUN FOR POI  2043         ============
#=====================================================
rm $INPUTS/zmaPOI_2043.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $OUTPUTS/zma56a3.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_2043.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"2043\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_2043.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a3.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   2043        ============
#=====================================================
#=====================================================
#====           RUN FOR POI  2211         ============
#=====================================================
rm $INPUTS/zmaPOI_2211.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $OUTPUTS/zma56a4.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_2211.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"2211\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_2211.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a4.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   2211        ============
#=====================================================
#=====================================================
#====           RUN FOR POI  2228         ============
#=====================================================
rm $INPUTS/zmaPOI_2228.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur2>/dev/null
rm $OUTPUTS/zma56a5.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_2228.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"2228\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_2228.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a5.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   2228        ============
#=====================================================
#=====================================================
#====           RUN FOR POI  2241         ============
#=====================================================
rm $INPUTS/zmaPOI_2241.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $OUTPUTS/zma56a6.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_2241.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"2241\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_2241.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a6.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   2241        ============
#=====================================================
#=====================================================
#====           RUN FOR POI  2289         ============
#=====================================================
rm $INPUTS/zmaPOI_2289.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $OUTPUTS/zma56a7.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_2289.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"2289\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_2289.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a7.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   2289        ============
#=====================================================
#=====================================================
#====           RUN FOR POI  2306         ============
#=====================================================
rm $INPUTS/zmaPOI_2306.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $OUTPUTS/zma56a8.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_2306.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 EQ \"2306\" "
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#=====================================================
export ZMD57A1I=$INPUTS/zmaPOI_2306.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a8.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?;export RTNCODE
chkcode al_56pra
#
#=====================================================
#====       end RUN FOR POI   2306        ============
#=====================================================
#=====================================================
#====         RUN FOR ALL OTHER POI       ============
#=====================================================
rm $OUTPUTS/zma56a9.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_other.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
#
export SORTIN=$INPUTS/zmd57a1.$asofcur
export SORTOUT=$INPUTS/zmaPOI_other.$asofcur
export LRECL=1000
export LRECL2=1000
export SYNCFIELDS="f1 001 char 9 EBCDIC, f2 111 char 4 EBCDIC "
export SYNCKEYS="f2 ASCENDING "
export COND1="/condition cond1 f2 != \"1962\" and f2 != \"1991\" and f2 != \"2043\" and f2 != \"2211\" and f2 != \"2241\" and f2 != \"2228\" and f2 != \"2289\" and f2 != \"2306\""
export INCL1="/include cond1 "
syncgen
unset COND1 INCL1
#===============================================================
export ZMD57A1I=$INPUTS/zmaPOI_other.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56a9.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun al_56pra.gnt 2>>$ERRFILE
export RTNCODE=$?
chkcode al_56pra
#
#=====================================================
#====     end RUN FOR ALL OTHER POI       ============
#=====================================================
#=====================================================
#====     RUN FOR ZMA56B                  ============
#=====================================================
rm $OUTPUTS/zma56aa.$asofcur 2>/dev/null
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
#=====================================================
export ZMD57A1I=$INPUTS/zmd57a1.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56A1O=$OUTPUTS/zma56aa.$asofcur
export ZMA56A2O=$INPUTS/zma56a2.$asofcur
export PRTFILE=$ZMA56A1O
export COPIES=0
export TITLE=ZMA-56A
. rptlandparms
#
cobrun zma56pra.gnt 2>>$ERRFILE
export RTNCODE=$?
chkcode zma56pra
#
export ZMA56A2I=$INPUTS/zma56a2.$asofcur
export ZMA01A7I=$INPUTS/zma01a7.$asofcur
export ZMA56B1O=$OUTPUTS/zma56b1.$asofcur
#
export PRTFILE=$ZMA56B1O
export COPIES=0
export TITLE=ZMA-56B
. rptlandparms
cobrun zma56prb.gnt 2>>$ERRFILE
export RTNCODE=$?
chkcode zma56prb
#=====================================================
#====      END OF RUN FOR ZMA56B          ============
#=====================================================
#
rm $INPUTS/zma56a2.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_1962.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_1991.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_2043.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_2211.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_2228.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_2241.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_2289.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_2306.$asofcur 2>/dev/null
rm $INPUTS/zmaPOI_other.$asofcur 2>/dev/null
rm $OUTPUTS/zma56aa.$asofcur
echo " this is the end of zmaq0156.ksh"
