#!/bin/bash

if (( $VAR <= 10 ))
then
	echo $$
	VAR=$(( ${VAR} + 1 ))
	./figlio.sh
fi

