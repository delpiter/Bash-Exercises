#!/bin/bash

### Nei commenti che seguono vedete dei suggerimenti sull'algoritmo da
### seguire per produrre l'output corretto.
###

# I voti della seconda prova li devo mettere tutti nello standard output


# Poi devo mettere nello standard output i voti della prima prova
# ottenuti dagli studenti che non hanno un voto nella seconda prova

# MAT VOTO

cat ./esame2.txt

while read A B
do
	isPresent=$( grep $A ./esame2.txt )
	if [[ -z $isPresent ]]
	then
		echo $A $B
	fi
done < esame1.txt
