#!/bin/bash

# until loop is used to repeat a block of code until the condition fails

# until <condition>; do
#   some code...
# done

FILE="some_output.txt"

touch "${FILE}"
# creating the file with the name of FILE

until [[ -s "${FILE}" ]]; do
    # -s = Checks whether the file size is greater than zero
    echo "${FILE} is empty..."
    echo "Checking again in 2 seconds"
    # control messages
    sleep 2
    # blocking the process for 2 seconds
done

echo "It appears that ${FILE} is no longer empty"
# when some content is written to the file

