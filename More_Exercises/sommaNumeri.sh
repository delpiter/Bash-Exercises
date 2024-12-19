#!/bin/bash

EVEN=0
ODD=0
indx=0
while read A
do
	if (( $indx%2==0 ))
	then
		((EVEN=$EVEN+$A))
	else
		((ODD=$ODD+$A))
	fi
	((indx=$indx+1))
done < input.txt

echo $EVEN
echo $ODD
