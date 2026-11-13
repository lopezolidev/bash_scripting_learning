#!/bin/bash

# using break to stop the execution of a loop

while true; do
    echo "in the loop"
    break
    # this keyword stops the execution of the loop
done

echo "Reachable code block"
# this block of code is reached after execution of 'break' statement