NUM=1
OUTPUTEVEN=""
OUTPUTODD=""
for arg in "$@"; do
	if(($NUM % 2 == 0)); then
		OUTPUTEVEN="${OUTPUTEVEN}${!NUM}"
	else
		OUTPUTODD="${OUTPUTODD}${!NUM}"
	fi;
	((NUM=$NUM + 1))
done;

echo "${OUTPUTODD}${OUTPUTEVEN}"
