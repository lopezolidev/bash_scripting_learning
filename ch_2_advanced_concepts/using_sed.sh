#!/bin/bash

# first we substitute all the lines that contain 'Mozilla' with 'Godzilla' and 
# create a new file
sed 's/Mozilla/Godzilla/g' log.txt > new_log.txt

# substituing all the whitespaces for nothing
sed 's/ //g' log.txt > new_log2.txt

# deleting the first line (its doing it to a modified copy)
sed '1d' log.txt

# deleting the last line 
sed '$d' log.txt

# deleting a range of lines
sed '5, 7d' log.txt

# printing a range of lines
sed -n '2,15 p' log.txt

# Making the alteration to the original file
sed -i '1d' log.txt