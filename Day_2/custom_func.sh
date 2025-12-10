#!/bin/bash

substitute(){
echo "$1" |sed "s/$2/$3/g"

}

input="Hello World"
search="World"
replace="Sameer"

result=$(substitute "$input" "$search" "$replace")
echo $result