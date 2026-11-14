#!/bin/bash

touch example_file1 example_file2 example_file3

for file in example_file*; do
    # iterating over list of files with 'file' as iterator 
    if [[ "${file}" == "example_file2" ]]; then # 'do' -> 'then'. Made a mistake
    # checking whether current file is the second file
        echo "skipping second file"
        # control message
        continue
        # jumping over next iteration
    fi

    echo "${RANDOM}" > "${file}"
    # inserting a random number if its any other file
done