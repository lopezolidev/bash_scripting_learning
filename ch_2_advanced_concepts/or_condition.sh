#!/bin/bash

DIR_NAME="dir_test"

mkdir "${DIR_NAME}"
# creating the directory

if [[ -d "dir_test" ]] || [[ -f "dir_test" ]]; then
    # linking with || operator two conditions that either of both can be satisfied
    echo "${DIR_NAME} is either a directory or a file"
fi