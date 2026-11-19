#!/bin/bash

# this script portrays the use case of return values as a status sign of the script

function given_args {
    if [ $# -lt 1 ]
    then
        echo -e "Number of arguments: $#"
        return 1
        # if the number of arguments is less than 1, 
        # then a control message is printed and the function returns an error code
    else
        echo -e "Number of arguments: $#"
        return 0
        # in any other case, the function returns a successful status code
    fi
}

# no arguments given
given_args
echo -e "Function status code: $?\n"

# one argument given
given_args "argument"
echo -e "Function status code: $?\n"

# Pass the results of the function into a variable
content=$(given_args "argument")

echo -e "Content of the variable: \n\t$content"
# Content of the variable: 
#         Number of arguments: 1

 # the actual content of the variable $content is the 'echo' statement of the function