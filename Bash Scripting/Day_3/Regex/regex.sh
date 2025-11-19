#!/bin/bash

read -rp "Enter the data:" data
pattern='^[0-9]+$'
if [[ $data =~ $pattern ]];
then
    echo "It is an integer"
else
    echo "Not an integer"
fi

## [[ .... ]] Advanced Test command
## powerful to tesr the pattern
## =~ cannot apper without [[]]