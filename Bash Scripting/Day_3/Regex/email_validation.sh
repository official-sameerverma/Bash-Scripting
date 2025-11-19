#!/bin/bash

read -rp "Enter your email id : " email
pattern='^[A-Za-z0-9.-_]+@[A-Za-z0-9.]+\.+[A-Za-z]{2,4}$'

if [[ $email =~ $pattern ]];
then
    echo "your $email is valid"
else
    echo "your $email is not valid"
fi