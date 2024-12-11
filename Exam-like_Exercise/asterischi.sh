#!/bin/bash

for FILE in `find /usr/include -type f -name '*.h'`
do
	COUNT=0
	while read line
	do
		if (grep -q "*" $FILE)
		then
			COUNT=$(($COUNT+1))
		fi
	done < $FILE
	echo $COUNT
done
