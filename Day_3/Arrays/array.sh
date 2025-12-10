#!/bin/bash

names=("sam" "verma" "niya" "John")

echo "First Element: ${names[0]}"
echo "First Element: ${names[2]}"

#Access Length
echo "Total names: ${#names[@]}"
echo "All the names:" "${names[@]}"

names[1]="Sameer Verma"
echo "Updated: ${names[1]}"

for names in "${names[@]}";
do
    echo $names
done
