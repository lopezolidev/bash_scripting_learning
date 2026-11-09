#!/bin/bash

# here we make use of all the types of special arguments
# $#
# $0
# $n
# $$
# $?

if [ $# -eq 0 ]
then
    echo -e "You must specify at least 1 argument"
    echo -e "Usage:"
    echo -e "\t$0 <arg1> [<arg1>, <arg1>]"
    # $0 = script itself ; mentioning usage of arguments
    exit 1
    # exiting as error
elif [ $# -eq 1 ]
then
    variable1=$1
    # first positional argument -> $n_1
    variable2="0"
    variable3="0"
    # not used variables, instancing them to 0
elif [ $# -eq 2 ]
then
    variable1=$1
    # first positional argument -> $n_1
    variable2=$2
    # second positional argument -> $n_2
    variable3="0"
    # not used variable, instancing it to 0
elif [ $# -eq 3 ]
then
    variable1=$1
    # first positional argument -> $n_1
    variable2=$2
    # second positional argument -> $n_2
    variable3=$3
    # third positional argument -> $n_3
else
    echo -e "Too many arguments"
    exit 1
fi

echo "the list of command line arguments: $@"
# $@ is the list of command line arguments

echo "Current process ID: $$"
# $$ is the variable assigned to current process ID of this script

if [ $? -eq 0 ]
then
    echo "Script succeeded"
elif [ $? -eq 1 ]
then
    echo "Script failed"
fi
# $? is the exit status of the script

# success case 1:
# the list of command line arguments: a
# Current process ID: 12657
# Script succeeded

# success case 2:
# the list of command line arguments: a b c
# Current process ID: 12801
# Script succeeded

# failure case 1, no arguments:
# You must specify at least 1 argument
# Usage:
#         ./arguments.sh <arg1> [<arg1>, <arg1>]

# failure case 2, too many arguments:
# Too many arguments