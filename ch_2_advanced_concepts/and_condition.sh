#!/bin/bash

echo "Hello, World!" > hello.txt

# checking if the file hello.txt exists and is greater than 0
# using && as condition linker
if [[ -f "hello.txt" ]] && [[ -s "hello.txt" ]]; then
    echo "The file hello.txt exists and is greater than zero"
fi
