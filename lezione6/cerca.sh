#!/bin/bash

if [[ $# -ne 2 ]]
then
	echo "not enough parameters"
	exit 1
fi

find "$1" -type f -name "$2" ;
