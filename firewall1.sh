#!/bin/bash

# dropping incoming ssh traffic
iptables -A INPUT -p tcp --dport 22 -j DROP

# dropping outgoing http and https traffic
iptables -A OUTPUT -p tcp --dport 88 -j DROP
iptables -A OUTPUT -p tcp --dport 443 -j DROP

### save and make executable
    # chmod +x ./firewall1.sh

