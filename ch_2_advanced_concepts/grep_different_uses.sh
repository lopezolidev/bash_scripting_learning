#!/bin/bash

# using grep in a simple form
echo "grep '35.237.4.214' log.txt: "
grep "35.237.4.214" log.txt

# using or operator
echo "grep '35.237.4.214\|13.66.139.0' log.txt"
grep "35.237.4.214\|13.66.139.0" log.txt

# achieving the same with -e
echo 'grep -e "35.237.4.214" -e "13.66.139.0" log.txt'
grep -e "35.237.4.214" -e "13.66.139.0" log.txt

# piping a command to grep with |
echo "ps | grep TTY"
ps | grep TTY

# grep is case insensitive, if we want to make the case sensitivity we use -i
echo "ps | grep -i tty"
ps | grep -i tty

# we can also look for any lines that do not contain the parameter, like so:
echo "grep -v '35.237.4.214' log.txt"
grep -v '35.237.4.214' log.txt

# if we wish to match only the occurence without the entire line, we send -o flag
echo "grep -o '35.237.4.214' log.txt"
grep -o '35.237.4.214' log.txt