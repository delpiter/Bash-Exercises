#!/bin/bash

for ((i=0;i<10;i=i+1))
do
	while [[ ! -e pong.txt ]]
	do
		sleep 2
	done
        echo pong
        touch ping.txt
        rm pong.txt
done
