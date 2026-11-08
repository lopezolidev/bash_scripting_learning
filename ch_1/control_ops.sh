#!/bin/bash

# sending a task to the background using '&' operator
echo "sleeping for 10 seconds..."
sleep 10 &
# this previous command was sent to the background, but the following are in the foreground
# therefore are working perfectly

echo "I'm back"
# creating a file
echo "Creating the file test123"
touch test123

# deleting a file
echo "Removing test123"
rm test123