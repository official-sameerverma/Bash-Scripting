#!/bin/bash

echo "Enter two number :"
read a b

sum=$((a+b))


if [ $((sum%2)) = 0 ]
then
    echo "sum of $a & $b = $sum is even"
else
    echo "sum of $a & $b = $sum is odd"
fi