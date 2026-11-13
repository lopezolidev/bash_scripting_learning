#!/bin/bash

print_args(){
    echo "first: ${1}, second: ${2}, third: ${3}"
}
# a function can access these arguments because they're sent to the function itself
# like as if it were the actual script

print_args No Starch Press