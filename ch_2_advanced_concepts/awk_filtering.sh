#!/bin/bash

# here we illustrate how to use awk to filter content from a file

awk '{print $1}' log.txt
# printing the first field of every line in file log.txt
# By default, awk treats spaces or tabs as separators or delimiters.

echo "--------------------------------------------------------------"

awk '{print $1 $2 $3 $4}' log.txt
# printing first 4 fields of every line of the file log.txt

echo "--------------------------------------------------------------"

awk '{print $1 $NF}' log.txt
# printing the first and last field of every line in file log.txt

echo "--------------------------------------------------------------"

awk 'NR < 10' log.txt
# printing the first 10 lines of the file log.txt
# emulating 'head' command

echo "--------------------------------------------------------------"

grep "42.236.10.117" log.txt | awk '{print $7}'
# picking up the lines that contain that IP 
# then printing the HTTP paths that IP made a request to
