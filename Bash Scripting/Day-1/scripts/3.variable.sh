#!/bin/bash

my_var="sameer verma"
echo "welcome $my_var"


#Arthematic operations
a=10
b=5

echo $((a+b))
echo $((a-b))
echo $((a*b))
echo $((a/b))
echo $((a**b))
echo $((a%b))


user="sameer"

today=$(date +%Y/%m/%d_%H:%M:%S)

echo "user $user created on date/time : $today"