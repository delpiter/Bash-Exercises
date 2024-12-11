#!/bin/bash

echo "Es 33"
echo ""
find /usr/include/ -type f -exec head -n 3 '{}' \;
echo ""

echo "Es 34"
echo ""
find /usr/include/ -type f -exec head -n 3 '{}' \;
echo ""

echo "Es 35"
echo ""
find /usr/include/ -type f -exec head -n 3 '{}' \; | cut -b -3
echo ""
