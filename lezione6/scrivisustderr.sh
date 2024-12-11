#!/bin/bash

while read A
do
	echo ${A%% *} >&2
	echo evviva
done
