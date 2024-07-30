## in your terminal open a nano file <example= block_ip.sh> as this is a bash file

#! /bin/bash
read -p "Enter the IP address or domain to block" ip
iptables -I INPUT -s $ip -j DROP

## once created, save and return to terminal

## give full permission for file
    ## chmod +x block_ip.sh

## only root can run iptables
    ## sudo ./block_ip.sh
    # enter ip or domain you wish to block
    