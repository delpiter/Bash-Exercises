#!/bin/bash

if [[ $# -ne 1 ]]; then echo incorrect amount of parameters; exit 0; fi

cut -d : -f $1 ./csv.txt
