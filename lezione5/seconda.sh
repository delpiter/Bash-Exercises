#!/bin/bash

FINAL=""
while read A B C
do
	FINAL="$FINAL $B"
done < $1

echo $FINAL
