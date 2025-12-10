#!/bin/bash

str_len(){
    local str=$1
    echo "Length of $str is ${#str}"
}

str_len "Sameer Verma"

str_replace(){
    local str=$1
    local search=$2
    local replace=$3

    echo $str | sed "s/$search/$replace/"

}

str_replace "Sameer Verma" "Verma" "Ruma"


str_concat(){
    local str_1=$1
    local str_2=$2
    local concat="$str_1$str_2"
    echo "$concat"
}

str_concat "sameer" "verma"


str_ext(){
    local str=$1
    local ind_1=$2
    local len=$(($3-$2+1))
    echo "${str:$ind_1:$len}"
}

str_ext "Hello World!" 6 10

