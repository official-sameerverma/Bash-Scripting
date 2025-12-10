#!/bin/bash

current_time=$(date +"%Y%m%S_%H%M%S")

for i in {1..5}
do 
filname="file_${current_time}_$i.txt"
touch "$filname"
echo "This is the file $i  created on $current_time" >"$filname"
echo "Created : $filname"

done