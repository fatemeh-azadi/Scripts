dir=`pwd`
Moses="/Data/f.azadi/Tools/moses-v2.1.1"
Model1="$dir/../News/Intermediate/Moses/"
Model2="$dir/../Others/Intermediate/Moses/"
DevExtract="$dir/../Dev/Intermediate/Moses/model/extract.sorted"
Output="$dir/../MergedPhraseTable-given-tuning-set"


time python $Moses/contrib/tmcombine/tmcombine.py combine_given_tuning_set $Model1 $Model2 -m counts -o $Output -r $DevExtract

