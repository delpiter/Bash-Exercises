#!/bin/bash

echo "" > output.txt
while read NOME COGNOME MAT VOTO
do
	if [[ $VOTO -lt 18 ]]
	then
		RIGA=$( grep -c $MAT ./RisultatiProvaPratica1.txt )
		if [[ $RIGA -eq 0 ]]
		then
			echo $MAT $NOME $COGNOME $VOTO
		fi
	fi
done < ./RisultatiProvaPratica2.txt | sort -k 3
