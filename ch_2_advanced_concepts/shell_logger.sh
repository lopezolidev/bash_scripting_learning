#!/bin/bash
# old version, has an infinite loop error

# FILENAME="$(date +%d-%m-%y)_$(RANDOM).log"
# # creating the name of the log with a random number

# if [[ ! -d ~/sessions]]; then
# # if such directory doesn't exist, we create it
#     mkdir ~/sessions
# fi

# # Starting a script session
# script -f -a "~/sessions/${FILENAME}"


# new version, corrected and optimized

if [[ -z "$SESSION_RECORDED" ]]; then
    # if value SESSION_RECORDEED isn't 0, it'll do the following

    mkdir -p "$HOME/sessions"
    # creating the directory sessions inside HOME path

    FILENAME="$(date +%d-%m-%Y)_${RANDOM}.log"
    # creating the file name of the log

    export SESSION_RECORDED=1
    # exporting the SESSION_RECORDED variable to check it every time this script 
    # is open
    script -f -a "$HOME/sessions/${FILENAME}"
    # Capturing all the current session activity of the terminal an output to 
    # the file FILENAME in the specified path

    exit 
    # closing the capturing session and avoiding infinite loop
fi

# now we load it in ~/.bashrc

