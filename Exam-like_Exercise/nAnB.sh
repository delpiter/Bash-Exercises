#!/bin/bash

CHARCOUNT=${#1}

if (( $CHARCOUNT % 2 != 0))
then
	echo "falso"
	exit 0
else
	ASTART=0
	BSTART=$(( ($CHARCOUNT/2) + 1))
	A=${1:0:1}
	B=${1:$BSTART:1}
	for ((i=1;i<$CHARCOUNT/2;i++))
	do
		if [[ ${1:$i:1} != $A || ${1:$BSTART:1} != $B ]]
		then
			echo "falso"
			exit 0
		fi
		BSTART=$(($BSTART+1))
	done
fi
echo "vero N=$((${CHARCOUNT}/2))"
