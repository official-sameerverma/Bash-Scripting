#!/bin/bash

read -rp "Enter the data:" data
pattern='^a[b]+c$'
if [[ $data =~ $pattern ]];
then
    echo "It is correct"
else
    echo "It is wrong"
fi
