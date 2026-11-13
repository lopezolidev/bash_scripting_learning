#!/bin/bash

FILENAME="flow_control_with_if.txt"
# creating variable name

if [[ -f "${FILENAME}" ]] then
    echo "${FILENAME} already exists"
    exit 1
# checking wether FILENAME variable exists, if it does, it exits the program 
# with an error code
# my interpreter said that ';' after if [[ condition ]] 
# is a syntactic error, that means in this version ';' is no longer needed
else
    touch "${FILENAME}"
# if it doesn't, the script creates the file
fi

