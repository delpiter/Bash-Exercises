#!/bin/bash

OLD=$IFS
IFS='	'
while read ANNO CITTA MOTIVO DANNI
do
	N=$( grep $MOTIVO cadutevic2.txt | wc -l )
	echo $MOTIVO $N
done < cadutevic2.txt | sort | uniq
