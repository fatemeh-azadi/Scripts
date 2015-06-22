dir=`pwd`
MOSES=/Data/f.azadi/Tools/moses-v3
SRILM=/Data/f.azadi/Tools/srilm/bin/i686-m64
Corpora=$dir/Corpora/Train/Parallel.clean
Src=en
Trg=fa
Output=$dir/Output/
AlignmentFile=$dir/aligned.grow-diag-final-and

mkdir $Output
$MOSES/scripts/OSM/OSM-Train.perl --corpus-f $Corpora.$Src --corpus-e $Corpora.$Trg --alignment $AlignmentFile --order 5 --out-dir $Output/OSM --moses-src-dir $MOSES --srilm-dir $SRILM --factor 0-0

###############################
# Edit model/moses.ini to add
#
## [feature]
#
## OpSequenceModel name=OpSequenceModel0 num-features=5 path=$Output/OSM/0-0/operationLM.bin
#
## [weight]
#
## OpSequenceModel0= 0.08 -0.02 0.02 -0.001 0.03
############################### 
##
## Tune the new moses.ini weights

