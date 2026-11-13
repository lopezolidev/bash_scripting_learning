#!/bin/bash

IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)
# set an array. Different elements are separated by spaces


echo "${IP_ADDRESSES[*]}"
# printing all the elements of the array
# 192.168.1.1 192.168.1.2 192.168.1.3

echo "${IP_ADDRESSES[0]}"
# print the first element
# 192.168.1.1

unset IP_ADDRESSES[1]
# deleting the second element from the array

echo "${IP_ADDRESSES[*]}"
# 192.168.1.1 192.168.1.3

IP_ADDRESSES[0]="192.168.1.4"
# switching an element by another

echo "${IP_ADDRESSES[*]}"
# 192.168.1.4 192.168.1.3