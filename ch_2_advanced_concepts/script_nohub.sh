#!/bin/bash

# this process will keep running even after closing the terminal
sleep 200 &
echo "hello from nohup!"

# this is what happens in the terminal

# nohup bash script_nohub.sh 
# nohup: se descarta la entrada y se añade la salida a 'nohup.out'

# also a nohup.out file is created and reserves all the standard output of such command