#!/bin/bash

# Accepts two arguments on the command line and assigns them to
# variables. The first argument should be your first name and the
# second should be your last name.

echo "Insert your first name"
read -r firstname

echo "insert your last name"
echo -r lastname

# Creates a new file named output.txt.
touch output.txt

# Writes the current date to output.txt using the date command.
date "+%d-%m-%Y" > output.txt

# Writes your full name to output.txt.
echo "Your first and lastname are: $firstname $lastname" > output.txt

# Makes a backup copy of output.txt, named backup.txt, using the cp command.
cp output.txt backup.txt

# Prints the content of output.txt file to the standard output stream.
cat output.txt