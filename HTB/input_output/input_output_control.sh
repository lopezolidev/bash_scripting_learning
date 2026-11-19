#!/bin/bash

echo -e "Additional options available"
echo -e "\t1) Identify network range of the target domain"
echo -e "\t2) Ping discovered hosts"
echo -e "\t3) All checks"
echo -e "\t*) Exit.\n"
# displaying options to make a decision

read -p "Select your option: " opt
# prompt input, our answer remains in the same line

case $opt in 
    "1") echo "network range"
    ;;
    "2") echo "ping discovered hosts"
    ;;
    "3") echo "all checks"
    ;;
    "*") exit 0 ;;
esac
 # case statement to execute multiple options based on captured input