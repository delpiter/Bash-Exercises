#!/bin/bash

for name in /usr/include/?[c-g]*; do
	if [[ $(( ${#name} <= 18 )) || $(( ${#name} >= 23)) ]]; then
		echo $name
	fi
done
