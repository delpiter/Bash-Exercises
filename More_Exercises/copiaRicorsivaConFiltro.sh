#!/bin/bash

if [[ $# -ne 2 ]] ; then echo wrong amount of parameters;exit 1;  fi


for file in $(find $1 -name '*.txt')
do
#	VAR=${file##*/}
#	echo $VAR
	if [[ -s $file ]]
	then
		cp $file ${2}${file##*/}
	fi
done
