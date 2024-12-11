#!/bin/bash

OLD=$IFS
IFS=$IFS":/"

for name in $PATH
do
	if [[ -n ${name} ]]
	then
		echo $name
	fi
done

IFS=$OLD
