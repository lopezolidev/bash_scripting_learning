#!/bin/bash

# creating a function that returns a number if the effective running user's ID
# is equal to 0 (is root)

check_if_root() {
    if [[ "${EUID}" -eq '0' ]]; then
        return 0
    else
        return 1
    fi
}

is_root=$(check_if_root)
# assigning 'is_root' variable the result of any printed text by calling the function check_if_root
# using parenthesis '$()' to store the printed value of the function, that is
# with 'echo' or 'printf'

# or, the correct way to capture the returned value

check_if_root

is_root=$?
# $? saves the exit status (return value) of the last command executed 

if [[ "${is_root}" -eq "0" ]]; then
    echo "You're root"
    # using integer comparison operator to effectively check if you're root
else    
    echo "You're not root"
fi
