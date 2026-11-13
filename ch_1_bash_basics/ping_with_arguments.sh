#!/bin/bash

# this script will ping an address provided as an argument
 
SCRIPT_NAME="${0}"
TARGET="${1}"

echo "Running the script ${SCRIPT_NAME}..."
echo "Pinging the target ${TARGET}..."
ping "${TARGET}"

