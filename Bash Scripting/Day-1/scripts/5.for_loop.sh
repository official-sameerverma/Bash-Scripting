#!/bin/bash

for i in {1..5}
do 
echo "Number $i"
done


for i in 2 4 6 8 10
do
echo "num  : $i "
done

## loop through all filesin current folder

for file in *.*
do 
echo "Processing : $file"
done