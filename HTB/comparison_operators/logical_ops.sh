#!/bin/bash

# checking if the specified file exists 
# if it does, see if we have read permissions

if [[ -e "$1" && -r "$1" ]]
    # this is how two conditions are tested
then
    echo -e "We can read the file that was specified"
    exit 0

elif [[ ! -e "$1" ]]
    # if the file doesn't exist
then
    echo -e "The specified file doesn't exists"
    exit 2

elif [[ -e "$1" && ! -r "$1" ]]
    # -e "$1" = existence of the file
    # and
    # ! -r "$1" = non-readability test for the file
then
    echo -e "The file exists but we don't have read permissions"
    exit 1

else
    echo -e "An error ocurred"
    exit 5
fi


