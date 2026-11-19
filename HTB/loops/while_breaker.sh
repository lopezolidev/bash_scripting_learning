#!/bin/bash

counter=0
# iterator variable

while [ $counter -lt 10 ]
# while counter is less than 10
do
    # increase $counter by 1
    ((counter++))
    echo "Counter: $counter"
    # printing value of the counter variable

    if [ $counter == 2 ]
    # case when counter is equal to 2
    then
        continue
        # ignore the code below and go to the next round of the loop
    elif [ $counter == 4 ]
    # when $coutner is equal to 4, stop the loop
    then
        break
        # stop the loop
    fi
done