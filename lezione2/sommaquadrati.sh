SUM=0
INDEX=1
for NUM in $*; do
	((SUM = $SUM + $NUM * $NUM -$INDEX))
	((INDEX = $INDEX + 1))
done;
echo $SUM;
