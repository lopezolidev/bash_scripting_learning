#!/bin/bash

variable=$1

if [ $variable -gt "10" ]
then
    echo "${variable} is greater than 10"
elif [ $variable -lt "10" ]
then
    echo "${variable} is less than 10"
else
    echo "${variable} is not a number"
fi