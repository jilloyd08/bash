#!/bin/bash

iptables -F INPUT

## due to possibly needing many MAC addresses to permit, creat a variable
PERMITTED_MACS="","","" # List the MAC's, separated by white space

for MAC in $PERMITTED_MACS
do
    iptables -A FORWARD -m mac --mac-source $MAC -j ACCEPT
    echo "$MAC permitted"
done

iptables -P FORWARD DROP

## save and make executable
    # chmod 700 nat_filter.sh

## run script
    # ./nat_filter.sh
    # this should echo the MAC addresses you listed

