#! /bin/bash

#1. Set the ACCEPT policy
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

#2. Flush all tables
iptables -t filter -F
iptables -t nat -F
iptables -t mangle -F
iptables -t raw -F

#3. Delete user defined chains
iptables -X

### save script

### make executable
    # chmod 700 delete_firewall.sh

### run script
    # ./delete_firewall.sh

### the iptables firewall has been CLEARED out and ALL TRAFFIC is permitted ###

    ### this is the default state of any LINUX OS