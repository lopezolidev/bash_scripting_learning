#!/bin/bash

# For loop is used to iterate over the elements of a sequence

for index in $(seq 1 10); do
# 'index' will be the variable of each element of the result for the command 'seq 1 10' 
    echo "${index}"
# printing every element of such sequence
done
