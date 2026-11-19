#!/bin/bash

# illustrating the use of while loop

stat=1
# variable to compare on each loop round

while [ $stat -eq 1 ]
# checking if $stat variable is equal to 1

do
    ping -c 2 $host > /dev/null 2>&1
    # pinging 2 times the specific host, discarding result
    if [ $? -eq 0 ]
    # if ping was successful, enter first condition
    then
        echo "$host is up."
        # printing control message
        ((stat--))
        ((hosts_up++))
        ((hosts_total++))
        # altering variables of the script
    else
        # in case the ping command wasn't successful
        echo "$host is down."
        # printing control message
        ((stat--))
        ((hosts_total++))
        # altering variables of the script
    fi
    # end of conditional
done
# end of while loop