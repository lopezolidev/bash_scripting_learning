#!/bin/bash

VAR_ONE="10"
VAR_TWO="20"

if [[ "${VAR_ONE}" -gt "${VAR_TWO}" ]]; then
    echo "${VAR_ONE} is greater than ${VAR_TWO}"
    # learning to use -gt operator to compare integers
else
    echo "${VAR_TWO} is greater than ${VAR_ONE}"
fi

