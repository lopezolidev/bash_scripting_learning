#!/bin/bash

# The difference between if-else statement and case statement is that in if-else
# you compare to a boolean expression, different from the other conditions
# in case statement you only make a comparison with the exact value of the pattern
# the following statement executes if it matches, it won't on the contrary

# Available options
echo -e "Additional options available:"
echo -e "\t1) Identify the corresponding network range of target domain."
echo -e "\t2) Ping discovered hosts."
echo -e "\t3) All checks."
echo -e "\t*) Exit.\n"
# displaying possible option

read -p "Select your option: " opt
# take an option from keyboard

case $opt in
    "1") network_range ;;
    "2") ping_host ;;
    "3") network_range && ping_host ;;
    "*") exit 0 ;;
esac
# from $opt variable, comparing with each pattern and if it mateches, executes 
# following statement
# ';;' = delimeter or "break" as C/C++