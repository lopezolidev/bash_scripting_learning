#!/bin/bash

book = "this is an invalid variable assignment"
# previous is not a valid assignment. So is never stored in memory
# there's no need to to "unset" such variable

book="black hat bash"
# variable, '=' and variable name must be all together 

echo "the book I'm learning with is called ${book}"