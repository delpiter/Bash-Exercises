#!/bin/bash

for (( i=0 ; i<10; i=i+1 ))
do
	mkdir 1.$i
done

find ./ -type d -name '1*'

for (( i=0; i<10; i=i+1 ))
do
	((newnum=9-$i))
	mv 1.$i 2.$newnum
done
#for dir in $( find ./ -type d -name '1*')
#do
#	echo ${dir##.[0-9]}
#	$(( newnum=9-${dir##.*} ))
#	mv $dir ${dir/'./1'/"./2$newnum"}
#done

find ./ -type d -name '2*'

