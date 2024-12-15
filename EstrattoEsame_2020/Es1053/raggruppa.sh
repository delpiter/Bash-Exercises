#!/bin/bash

while read ANNO CITTA MOTIVO DANNI
do
	N=$( grep $MOTIVO cadutevic.txt | wc -l )
	echo $MOTIVO $N
done < cadutevic.txt | sort | uniq
