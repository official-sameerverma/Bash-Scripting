#!/bin/bash

read -rp "Enter your ip address: " ip

pattern='^([0-9]{1,3}\.){3}[0-9]{1,3}$'

if [[ $ip =~ $pattern ]];
then
    echo "your $ip is octet valid"
else
    echo "your $ip is octet invalid"
fi

## ipv4 is 0-255.0-255.0-255.0-255

pattern2='^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.|$)){4}$'


if [[ $ip =~ $pattern2 ]];
then
    echo "your $ip is  totalty valid"
else
    echo "your $ip is ethically  invalid"
fi