#!/bin/bash

# this is a hard command to remember:
# nmap -vv -T4 -p- -sV --max-retries 5 localhost

# therefore we create an alias
alias quickmap="nmap -vv -T4 -p- -sV --max-retries 5 localhost"

# now we can call it like any other commands (it works in the live terminal)
quickmap

# in order to make it permanent, we need to export it to the environment variables
# in the PATH variable. 

# alias for your own scripts:
# alias helloworld="bash ~/scripts/helloworld.sh"