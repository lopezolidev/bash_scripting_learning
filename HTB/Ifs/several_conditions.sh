#!/bin/bash


if [ $# -eq 0 ]
# $# = number of arguments: "foo.sh a b" hast 2 arguments, "foo.sh" has 0 arguments
# if there're no arguments, then...
then
    echo -e "You need to specify the target domain\t"
    # -e = error. \t means tab
    echo -e "Usage:"
    echo -e "\t$0 <domain>"
    # tab, printing name of the script and placeholder for needed argument
    # each 'echo' prints a new line
    exit 1
    # output as an stderror
elif [ $# -eq 1 ]
# if there's at least 1 argument
then
    domain=$1
    # domain variable will be input from keyboard
else
    echo -e "Too many arguments given."
    exit 1
    # output as an stderror
fi