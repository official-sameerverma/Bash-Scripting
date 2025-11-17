#!/bin/bash

#special variable

#$0 indicates script name (filename)
echo "File Name: $0"


# $1, $2, $3..... argumnets which is passed to the script
echo "argument 1: $1"
echo "argument 2: $2"
echo "argument 3: $3"

# $# for no. of argument passed
echo "No. of arguments : $#"

# $@ for all argument gives as list
# echo "All arguments are: $@"

#$$ for process id which is used to excute the scripts
echo "Process Id : $$ "

# $? for exit statyus 0- sucess 1- sme error
# echo "exit status : $?"


# to run above scripts use below command 
# ./special_var.sh sameer 24 male xyz file.txt 