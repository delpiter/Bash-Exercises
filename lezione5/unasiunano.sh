#!/bin/bash

EVEN=0
while read A
do
	if(( $EVEN%2==0 ))
	then
		echo "$A"
	fi
	(( EVEN=$EVEN+1 ))
done
