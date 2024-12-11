#!/bin/bash

STOP=0
COUNTER=0
while (( $RANDOM%10!=2 )); do echo sium; done
while(( $STOP==0 ))
do
	COUNTER=$(( $COUNTER + 1 ))
	echo $COUNTER
	RAND=$RANDOM
	echo $RAND
	if(( $RAND%10==2 ))
	then
		STOP=1
	fi
done
