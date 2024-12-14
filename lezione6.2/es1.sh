#!/bin/bash

for (( i=0 ; i<10; i=i+1 ))
do
	mkdir 1.$i
done

find ./ -type d -name '1*'

for dir in $( find ./ -type d -name '1*')
do
	mv $dir ${dir/'./1'/'./2'}
done

find ./ -type d -name '2*'

