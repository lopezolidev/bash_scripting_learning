#!/bin/bash

# creating the variable

variable=$1

if [ $variable -gt "10" ]
then
    echo "that's a value greater than 10"
fi

# the if block starts with 'if' and ends with 'fi', the 'if' block contains []
# the brackets cannot be joint with the last character: [...'a'] is wron
# correct is: [ ...'a' ] <- spaces starting and ending
