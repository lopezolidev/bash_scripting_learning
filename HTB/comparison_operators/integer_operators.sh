#!/bin/bash

# check the given argument
if [ $# -lt 1 ]
then
    echo -e "Number of arguments given is less than 1"
    exit 1
elif [ $# -gt 1 ]
then
    echo -e "Number of arguments given is greater than 1"
    exit 1
else 
    domain=$1
    echo -e "Number of arguments give is equal to 1"
    # -e means enabled interpretation of backslash escapes
fi