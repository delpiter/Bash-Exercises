#!/bin/bash

./pong.sh &
touch ping.txt
for ((i=0;i<10;i=i+1))
do
	while [[ ! -e ping.txt ]]
	do
		sleep 2
	done
	echo ping
	touch pong.txt
	rm ping.txt
done

