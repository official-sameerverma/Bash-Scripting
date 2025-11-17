#!/bin/bash

FILE="backup.txt"

if [ -f "$FILE" ]
then
    echo "$FILE exist"
else
    echo "$FILE not exits"
    echo "creating file...."
    touch "$FILE"
    echo "$FILE created sucessfully!!"
fi
