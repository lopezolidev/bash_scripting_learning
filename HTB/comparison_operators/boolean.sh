#!/bin/bash

# checking the boolean value

if [[ -z $1 ]]
# -z = will be True if argument is equal to 0
then
    echo -e "Boolean value: True (is null)"
    exit 1

elif [[ $# > 1 ]]
# True if number of positional arguments is greater than 1
then 
    echo -e "Boolean value: True (is greater than 1)"
    exit 1

else
    domain=$1
    echo -e "Boolean value: False (is equal to 1)"
fi
