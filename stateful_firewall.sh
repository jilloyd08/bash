#!/bin/bash

iptables -F

iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o -j ACCEPT

# add this rule if you want to use receive traffic from a certain IP
    # iptables -A INPUT -p tcp --dport 22 -m state --state NEW -s "IP you want to receive from" -j ACCEPT

iptables -A INPUT -m state --state INVALID -j DROP
iptables -A OUTPUT -m state --state INVALID -j DROP

iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

iptables -P INPUT DROP
iptables -P OUTPUT DROP

## save script & make it executable
    # chmod 700 stateful_firewall.sh

## run script
    # ./stateful_firewall.sh

## test by using "ping" and "ssh"
    ## if you ping or use ssh from your device to another, things should ping and ssh should work
        # anything from other devices pinging or using ssh to you should be blocked

