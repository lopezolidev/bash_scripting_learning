#!/bin/bash

# until loops run 'until' the boolean condition is "False"

counter=0 
# iterator variable

until [ $counter -eq 10 ]
# until this condition remains False
do
    # increase $counter by 1
    ((counter++))
    echo "Counter: $counter"
    # printing control message
done