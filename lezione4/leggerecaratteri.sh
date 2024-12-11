#!/bin/bash

#NCHAR=`cat /usr/include/stdio.h`
#echo ${#NCHAR}

exec {FD}< /usr/include/stdio.h
NCHAR=0

if (( $? == 0 )); then
	while read -u ${FD} -N 1 -r stringRead;
	do
		(( NCHAR=${NCHAR}+1 ))
	done
	exec {FD}>&-
	echo $NCHAR
fi
