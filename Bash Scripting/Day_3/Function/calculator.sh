#!/bin/bash

add( ){

    local num1=$1
    local num2=$2
    local sum=$((num1+num2))
    echo $sum
}

sub(){

    local num1=$1
    local num2=$2
    local diff=$((num1-num2))
    echo $diff
}

multiply(){

    local num1=$1
    local num2=$2
    local into=$((num1*num2))
    echo $into
}

div(){

    local num1=$1
    local num2=$2
    local divide=$((num1/num2))
    echo $divide
}

read -p "Enter num1: " num1
read -p "Enter num2: " num2
read -p "Enter your choice (+ - x /): " ch

if [ $ch = "+" ];
then
    result=$(add $num1 $num2)
    echo "Your result is : $result"
elif [ $ch = "-" ];
then
    result=$(sub $num1 $num2)
    echo "Your result is : $result"    
elif [ $ch = "x" ];
then
    result=$(multiply $num1 $num2)
    echo "Your result is : $result" 
elif [ $ch = "/" ];
then
    result=$(div $num1 $num2)
    echo "Your result is : $result" 
fi