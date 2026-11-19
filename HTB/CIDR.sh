#!/bin/bash

# Check for given arguments
if [ $# -eq 0 ]
then
    echo -e "You need to specify the target domain.\n"
    echo -e "Usage:"
    echo -e "\t$0 <domain>"
    exit 1
else
    domain=$1
fi

# Identify Network range for the specified IP address(es)
function network_range {
    for ip in $ipaddr
    do
        netrange=$(whois $ip | grep "NetRange\|CIDR" | tee -a CIDR.txt)
        cidr=$(whois $ip | grep "CIDR" | awk '{print $2}')
        cidr_ips=$(prips $cidr)
        echo -e "\nNetRange for $ip:"
        echo -e "$netrange"
    done
}

# Ping discovered IP address(es)
function ping_host {
    hosts_up=0
    hosts_total=0
    
    echo -e "\nPinging host(s):"
    for host in $cidr_ips
    do
        stat=1
        while [ $stat -eq 1 ]
        do
            ping -c 2 $host > /dev/null 2>&1
            if [ $? -eq 0 ]
            then
                echo "$host is up."
                ((stat--))
                ((hosts_up++))
                ((hosts_total++))
            else
                echo "$host is down."
                ((stat--))
                ((hosts_total++))
            fi
        done
    done
    
    echo -e "\n$hosts_up out of $hosts_total hosts are up."
}

# Identify IP address of the specified domain
hosts=$(host $domain | grep "has address" | cut -d" " -f4 | tee discovered_hosts.txt)

echo -e "Discovered IP address:\n$hosts\n"
ipaddr=$(host $domain | grep "has address" | cut -d" " -f4 | tr "\n" " ")

# Available options
echo -e "Additional options available:"
echo -e "\t1) Identify the corresponding network range of target domain."
echo -e "\t2) Ping discovered hosts."
echo -e "\t3) All checks."
echo -e "\t*) Exit.\n"

read -p "Select your option: " opt

case $opt in
    "1") network_range ;;
    "2") ping_host ;;
    "3") network_range && ping_host ;;
    "*") exit 0 ;;
esac

# debuggin (-x):
# ╰─ bash -x CIDR.sh  <- executing without parameters

# + '[' 0 -eq 0 ']'
# + echo -e 'You need to specify the target domain.\n'
# You need to specify the target domain.

# + echo -e Usage:
# Usage:
# + echo -e '\tCIDR.sh <domain>'
#         CIDR.sh <domain>
# + exit 1

# until here, the debug showed us which where the lines that executed and which 
# was the trigger. 
# the execution stops of course until 'exit' command is found


# debugging (-x) verbosely (-v) :
# ╰─ bash -x -v CIDR.sh <- executing without parameters
# #!/bin/bash

# # Check for given arguments
# if [ $# -eq 0 ]
# then
#     echo -e "You need to specify the target domain.\n"
#     echo -e "Usage:"
#     echo -e "\t$0 <domain>"
#     exit 1
# else
#     domain=$1
# fi

# until here, it displays verbosely in which block of code there was some failure

# + '[' 0 -eq 0 ']'
# + echo -e 'You need to specify the target domain.\n'
# You need to specify the target domain.

# + echo -e Usage:
# Usage:
# + echo -e '\tCIDR.sh <domain>'
#         CIDR.sh <domain>
# + exit 1