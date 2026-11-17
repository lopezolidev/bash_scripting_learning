#!/bin/bash

# In this exercise, we’ll write a bash script that accepts two arguments: a name
# (for example, mysite) and a target domain (for example, nostarch.com). The script
# should also be able to do the following:
# 1.Throw an error if the arguments are missing and exit using the right status
# code.
# 2.Ping the domain and return an indication of whether the ping was
# successful or not.
# 3.Write the results to a CSV file containing the following information:
#     a.The name provided to the script
#     b.The target domain provided to the script
#     c.The ping result (either success or failure)
#     d.The current date and time
CSV_FILE="ping_log.csv"

if [[ $# -ne 2 ]]; then
    echo -e "You must insert 2 arguments" >&2
    exit 1
fi
# 1. Done

ping -c 4 ${2} > /dev/null
# sending to dev/null the output of the string

if [[ $? -ne 0 ]]; then
    echo "Error, could not resolve ${2}..."
    RESULT='FAILURE'
else
    echo "Ping was successful"
    RESULT='SUCCESS'
fi
# 2. done, without exiting

if [[ ! -f "${CSV_FILE}" ]]; then
    echo "Name,Target Domain,Ping Result,Date and Time" > "${CSV_FILE}"
fi

NAME="Name provided to the script: $1"
TARGET_DOMAIN="Target domain: $2"
PING_RESULT="Ping result: ${RESULT}"
DATE_TIME="Current date and time: $(date "+%d-%m-%Y-%T")"
echo "${NAME},${TARGET_DOMAIN},${PING_RESULT},${DATE_TIME}" > ping_log.csv
# 3. Done