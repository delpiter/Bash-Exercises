#!/bin/bash

A=$( ./lanciaeprendipid.sh )
echo $A

for pid in $A ; do kill -9 $A ; done
