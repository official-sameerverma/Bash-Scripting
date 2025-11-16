#!/bin/bash

count=1

while [ $count -le 5 ]
do
echo "num : $count"
((count++))
done

count=1
until [ $count -ge 5 ]
do
echo "num : $count"
((count++))
done 