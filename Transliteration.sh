
dir=`pwd`
MOSES=/home/fatemeh/Desktop/Tools/moses-v3
SRILM_BIN=/home/fatemeh/Desktop/Tools/srilm/bin/i686-m64
MGIZA_BIN=/home/fatemeh/Desktop/Tools/mgiza/mgizapp/bin
Corpora=$dir/Corpora/Train/Parallel.clean
SRC=en
TRG=fa
AlignmentFile=$dir/aligned.grow-diag-final-and
AlignmentType=grow-diag-final-and
OutPath=$dir/Output


# Execute command to train transliteration:

$MOSES/scripts/Transliteration/train-transliteration-module.pl  \
    --corpus-f $Corpora.$SRC  --corpus-e $Corpora.$TRG  \
    --alignment $AlignmentFile \
    --moses-src-dir $MOSES --external-bin-dir $MGIZA_BIN  \
    --input-extension $SRC --output-extension $TRG \
    --srilm-dir $SRILM_BIN --out-dir $OutPath



