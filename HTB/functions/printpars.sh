#!/bin/bash

# functions accept parameters like the actual bash script you can execute

# Two methods to declare function

#   method 1:
#   function name {
#       <commands>
#   }

# method 2:
#   name() {
#        <commands>
#   }

# variables in a bash script are processed GLOBALLY by the interpreter
# If you want your variables processed locally, you need to type 
# 'local' inside the function


function print_pars {
    echo $1 $2 $3
    # printing the positional arguments sent to this function
}

one="First parameter"
two="Second parameter"
three="Third parameter"
# assigning string values to variables

print_pars "$one" "$two" "$three"
# sending to function positional arguments of the variables declared 
# above

# this script will be called like: printpars.sh
# (without arguments)