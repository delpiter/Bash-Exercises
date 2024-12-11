#!/bin/bash

if [[ -z $1 ]]; then echo "inserire una stringa"; exit 0 ;fi
REVERSE=""
COUNTER=$(( ${#1}-1 ))
while [[ ${#REVERSE} -lt ${#1} ]]
do
	REVERSE=${REVERSE}${1:COUNTER:1}
	(( COUNTER=$COUNTER - 1 ))
done

echo $REVERSE

grep -d skip '*' /usr/include/*
grep -c -d skip '*' /usr/include/*
