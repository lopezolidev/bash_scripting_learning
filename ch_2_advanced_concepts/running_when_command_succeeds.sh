#!/bin/bash

# test a command to run other commands
# structure

# if command ; then
#     command successful
# fi

# if ! command ; then
#     command unsuccessful
# fi 

if touch test123 ; then
    echo "the command was a success"
fi