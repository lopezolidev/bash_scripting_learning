#!/bin/bash

# some different arithmetic expressions

# using 'let'

let result="5 * 9"
echo "using let: {$result}" 

# using $(())

unset result
# unsetting first

result=$((42 % 9))
echo "Using $ ( ( ) ): {$result}"

unset result

result=$(expr 5 + 7)
echo "using expr: {$result}"
