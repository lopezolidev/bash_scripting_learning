#!/bin/bash

USER_INPUT="${1}"

if [[ -z "${USER_INPUT}" ]]; then
    echo "You must provide an argument"
    exit 1
fi
# first checking if user input is null

# now checking subsequent conditions based on the files and directories inside
# the current directory

if [[ -f "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a file"
    # using '-f' to check if USER_INPUT is a file
elif [[ -d "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a directory"
    # using '-d' to check if USER_INPUT is a directory
    # chaining with 'elif' for an additional condition to meet
else
    echo "${USER_INPUT} is neither a file nor a directory"
    # neither of both previous conditions weren't met
fi