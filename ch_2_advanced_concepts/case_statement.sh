#!/bin/bash

IP_ADDRESS="${1}"
# first positional argument as the pattern comparison variable

case ${IP_ADDRESS} in
    192.168.*)
    # checking if the variable is in this range by comparison in a set
        echo "Network is 192.168.x.x"
    ;;
    10.*)
    # same for here
        echo "Network is 10.0.x.x"
    ;;
    *)
    # when none of the above sets contain the variable, default case triggered
        echo "Could not identify the network"
    ;;
esac
# end of case statement with 'esac'

