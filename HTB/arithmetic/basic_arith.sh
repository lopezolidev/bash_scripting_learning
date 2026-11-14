#!/bin/bash

increase=1
decrease=1

# addition
echo "10 + 10 = $((10 + 10))"

# substraction
echo "5 - 7 = $((5 - 7))"

# multiplication
echo "3 * 9 = $((3 * 9))"

# division
echo "51 / 17 = $((51 / 17))"

# modulo
echo "108 % 19 = $((108 % 19))"

# increasing a variable
((increase++))
echo "The value of increase is now: ${increase}"

# decreasing a variable
((decrease--))
# written without the '$'
echo "The value of decrease is now: ${decrease}"