#!/bin/bash

PUBLISHER="No Starch Press"
# 'PUBLISHER' is a global variable, exists outside every function 

print_name(){
    # 'name' only exists inside print_name function
    name="Black Hat Bash"
    echo "${name} by ${PUBLISHER}"
}

print_name
# we call a function by typing its name 

echo "The variable ${name} will not be printed because it is a local variable"