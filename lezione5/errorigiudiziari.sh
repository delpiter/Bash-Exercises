#!/bin/bash
while read A B
do
	IDdenuncia=`grep $A processi.txt | sed "s/ $A//"`
	IDdenuncia=`echo $IDdenuncia | (read C D ; echo $C)`

	if [[ -n $IDdenuncia ]]
	then
		echo `grep $IDdenuncia denunce.txt | sed "s/$IDdenuncia//"`, $B
	fi
done < verdetti.txt
