#!/bin/bash

# illustrating the use of for loops

# Identify Network range for the specified IP address(es)
function network_range {
    for ip in $ip_addr
    do
        netrange=$(whois $ip | grep "NetRange\|CIDR" | tee -a "CIDR.txt")
        # looking up the assigner of such IP address, domain name or network range for that IP
        # then looking for the network range or CIDR by default
        # then writing as standard output to the CIRD.txt file, appending to it 
        
        cidr=$(whois $ip | grep "CIDR" | awk '{print $2}')
        # checking the network range in CIDR of the ip
        # looking up the CIDR lines
        # extracting only the second field of those lines

        cidr_ips=$(prips $cidr) 
        # prints all the ip's contained in that CIDR network range

        echo -e "Network range for $ip: "
        echo -e "$netrange"
        # printing network range for each IP
    done
}