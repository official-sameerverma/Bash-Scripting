#!/bin/bash

age=14

if [ $age -ge 18 ]
then
    echo "Eligible  to vote"
else
    echo "Not Eligible to vote"
fi

echo "Enter your age: "
read age

if [ $age -ge 18 ] && [ $age -lt 60 ]
then
    echo "you are eligible adult"
fi

echo "enter user type: admin/root/sde/other"
read user
if [ $user = "admin" ] || [ $user = "root" ]
then
    echo "you have acess"
else
    echo "your acess denied"
fi