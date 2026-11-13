#!/bin/bash

FILENAME="flow_control_with_if_directory"

if [[ ! -d "${FILENAME}" ]]; then
    mkdir "${FILENAME}"
    echo "Directory ${FILENAME} has been created"
# checking if a directory exists, if not, it will be created
else
    echo "${FILENAME} directory already exists"
    exit 1
# error message printing when first condition fails
fi 

