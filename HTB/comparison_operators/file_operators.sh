#!/bin/bash

# check if specified file exists
if [ -e "$1" ]
then
    echo "${1} file exists"
    exit 0

else 
    echo -e "The file ${1} doesn't exist"
    exit 2
fi