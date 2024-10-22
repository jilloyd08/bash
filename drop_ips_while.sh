# create file -> nano drop_ips_while.sh

#!/bin/bash
while read ip
do
    echo "Dropping packets from $ip"
    iptables -I INPUT -s $ip -j DROP
done < ./ips.txt

# save file
# in terminal, give file executable permissions -> chmod +x ./drop_ips_while.sh
# run as root
    # sudo ./drop_ips_while.sh