#!/bin/bash


find /usr/include/linux/ -mindepth 2 -type f > files.txt

NEWEST=` head -n 1 ./files.txt`
REST=` tail -n +2 ./files.txt`

for file in $REST
do
	if [[ $file -nt $NEWEST ]]
	then
		echo found newer file
		NEWEST=$file
	fi
done

echo $NEWEST

rm ./files.txt
