#!/bin/bash

echo "es 45"
head -n 5 /usr/include/stdio.h | tail -n 3;

echo "es 46"
tail -n 4 /usr/include/stdio.h | cut -b -3

echo "es 47"
read RIGA1; read RIGA2; echo $RIGA2; echo $RIGA1

echo "es 48"
read A &> /dev/null

echo "es 49"
while read A; do echo ${#A}; done

echo "es 50"

(cut -b 3-5 /usr/include/stdio.h | tail -n 3 ; tail -n 4 /usr/include/stdio.h | cut -b -3) |
(read RIGA1; read RIGA2; echo $RIGA2; echo $RIGA1
read A &> /dev/null
while read A; do echo ${#A};done)
