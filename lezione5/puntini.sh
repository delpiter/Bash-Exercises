#!/bin/bash

if [[ -z $1 ]] ; then echo "there is no parameter"; exit 1; fi

COUNT=0
while (( $COUNT < $1 ))
do
	sleep 1
	echo -n .$$
	(( COUNT=$COUNT+1 ))
done
echo ""
