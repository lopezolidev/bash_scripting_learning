#!/bin/bash

# setting an array

array=(
    www.inlanefreight.com 
    ftp.inlanefreight.com 
    vpn.inlanefreight.com 
    www2.inlanefreight.com
    )
# different elements are separated by emtpy spaces

echo ${array[0]}
# printing first element

echo ${array[2]}
# printing third element

echo ${array[3]}
# printing ww2.inlanefreight.com

echo ${array[*]}
# printing all the elements

array_with_strings=(
    "www.inlanefreight.com 
    ftp.inlanefreight.com 
    vpn.inlanefreight.com"  
    www2.inlanefreight.com
    )
# this is treated as one single element, not 4

echo ${array_with_strings[0]}
# printing the only element

echo ${array_with_strings[1]}
# prints www2.inlanefreight.com