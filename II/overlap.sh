echo 'Starting overlap'
TEMP1=`mktemp`
TEMP2=`mktemp`
cat $1/* | gawk '{print tolower($0) }' | tr '[ .,/\-]' '\n' | sort > $TEMP1
cat $2/* | gawk '{print tolower($0) }' | tr '[ .,/\-]' '\n' | sort > $TEMP2
comm -1 -2 $TEMP1 $TEMP2 | uniq
