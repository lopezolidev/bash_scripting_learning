#!/bin/bash

# Check the given argument
if [ "$1" != "HackTheBox" ]
# if first argument is different than HackTheBox
then
    echo -e "You need to give 'HackTheBox' as argument."
    exit 1

elif [ $# -gt 1 ]
# if number of arguments is greater than 1 that's also an error
then
    echo -e "Too many arguments given."
    exit 1

else
# only when neither there're more than 1 argument and the first is HackTheBox, is not an error
    domain=$1
    echo -e "Success!"
fi