#!/bin/bash

number=(1 2 3 4 )
echo "${number[@]}"

##append
number+=(5)
echo "append" "${number[@]}"

#multiple append
number+=(6 7 8)
echo "After multiple append" "${number[@]}"

##replace 
number[3]=88
echo "After replace" "${number[@]}"

##delete the number
unset "number[3]"
echo "After delete" "${number[@]}"

#insert the number at certain index
index=3
number=("${number[@]:0:$index}" 4 "${number[@]:$index}")

echo "After insert" "${number[@]}"