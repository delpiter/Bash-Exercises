#!/bin/bash

if (( $# > 9 )) ; then echo troppi argomenti ; exit 1; fi

EVEN=0
ODD=0
#wc -l /usr/include/stdio.h
for (( i=1; i<=$# ; i=i+1 ))
do
	RIGHE=$( wc -l ${!i} )
	if (( ${i}%2==0 ))
	then
		(( EVEN=$EVEN+${RIGHE%% *} ))
	else
		(( ODD=$ODD+${RIGHE%% *} ))
	fi
done

echo $EVEN
echo $ODD >& 2
