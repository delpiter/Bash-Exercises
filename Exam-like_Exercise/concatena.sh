#!/bin/bash

echo -n "" > output.txt

for file in /usr/include/std*
do
	if [[ ! -d $file ]]
	then
		echo $file
		head -n 4  $file | tail -n 3 >> output.txt
#		for (( i=0 ; i<4 ; i++ ))#
#		do
#			read line
#			if (( $i != 0 ))
#			then
#				echo $line # >> output.txt
#			fi
#		done < $file
	fi
done
