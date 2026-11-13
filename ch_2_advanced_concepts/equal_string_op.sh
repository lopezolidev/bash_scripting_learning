#!/bin/bash

VAR_ONE="nostarch"

VAR_TWO="nostarch2"
# creating two variables to check whether they're equal or different

if [[ "${VAR_ONE}" == "${VAR_TWO}" ]]; then
    echo "They're equal!"
    # using string comparison operator '=='
else
    echo "They're not equal!"
fi
