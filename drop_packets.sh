#!/bin/bash
read -p "Enter IP, Network or Domain to drop:" ip

echo "Blocking connections from $ip"
sleep 1

iptables -I INPUT -s $ip -j DROP
echo "Done"

## save file and return to terminal

## give execution permission
    # chmod +x drop_packets.sh

## run script
    # sudo ./drop_packets.sh

##################################

# copy code to create another script that uses the ip as an argument, which is better for automation!

#!/bin/bash
read -p "Enter IP, Network or Domain to drop:" ip

echo "Blocking connections from $ip"
sleep 1

iptables -I INPUT -s $1 -j DROP # change $ip to $1
echo "Done"

## now we can run the script and provide an ip as an argument
    # sudo ./drop_packets.sh 8.8.4.4 <this will block connections to this ip>