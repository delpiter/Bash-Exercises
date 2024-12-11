#!/bin/bash

ORIGINAL=$IFS
IFS=":"

for path in $PATH
do
	echo "${path} ${#path}"
done

IFS=$ORIGINAL
