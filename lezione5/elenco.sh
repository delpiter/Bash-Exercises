#!/bin/bash

LungNomiDirectory=0
ContNonDir=0
for file in `ls`
do
	if [[ -d $file ]]
	then
		(( LungNomiDirectory=$LungNomiDirectory+${#file} ))
	else
		(( ContNonDir=$ContNonDir + 1 ))
	fi
done

echo "Numero di file di tipo non directory: $ContNonDir"
echo "Lunghezza dei nomi delle directory: $LungNomiDirectory"
