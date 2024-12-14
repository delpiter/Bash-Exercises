#!/bin/bash

if [[ $# -ne 1 ]]
then
	echo insert an integer
	exit 1
fi

PIDS=""

for (( i=0 ; i<$1 ; i++ ))
do
	./discendenti.sh $(( $1 - 1 )) &
	PIDS="${PIDS} $!"
done

for pid in $PIDS
do
	wait $pid
done

echo $1
