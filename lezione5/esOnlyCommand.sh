#!/bin/bash

echo "es 28"
cut -b 3-5,10-15 fileditestoconalmeno5righe.txt
echo ""

echo "es 29"
cut -b 3-5,10-15 fileditestoconalmeno5righe.txt | sed -E 's/[\*\t ]//g'
echo vov
cut -b 3-5,10-15 fileditestoconalmeno5righe.txt | sed 's/ //g' | sed 's/	//g' | sed 's/*//g'
echo ""

echo "es 30"
cut -b 3-5,10-15 fileditestoconalmeno5righe.txt | sed 's/ //g' | sed 's/	//g' | sed 's/*//g' | wc -c
echo ""
cut -b 3-5,10-15 fileditestoconalmeno5righe.txt | sed -E 's/[\*\t ]//g' | wc -c

echo "es 40"
for (( i=0; `ls ./` ; i=i+1 ))
do
	echo "${i}"
done
