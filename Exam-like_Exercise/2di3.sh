#!/bin/bash

exec {FD}< /usr/include/stdio.h

if [ $? -eq 0 ]
then
	while read -u ${FD} A B C D;
	do
		if [[ -n ${C} && ${#C} -ge 2 ]]
		then
			echo "${C:1:1}"
		fi
	done
	exec {FD}>&-
fi
