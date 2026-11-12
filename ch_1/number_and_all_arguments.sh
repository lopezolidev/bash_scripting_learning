#!/bin/bash

echo "These are all the arguments: $@"
echo "The number of arguments are: $#"

# showing the use of special variables $# and $@

echo "all arguments in a single word $*"
# all positional arguments

echo "arguments quoted $@"
# all positional arguments, where each argument is individually quoted

# to visualize the difference, because echo treats both as a single output, is the following

echo 'Using "$@": (each positional argument is an independent word)'
for arg in "$@"
do    
    echo "- $arg"
done

echo ""

echo 'Using "$*": (all the arguments are a single word)'
for arg in "$*"
do
    echo "- $arg"
done