## logging packet from ssh traffic

# type this in command prompt
iptables -A INPUT -p tcp --dport 22 --syn -j LOG --log-prefix="incoming ssh traffic" --log-leve info
iptables -A INPUT -p tcp --dport 22 -j DROP

# check kernel logs with dmesg in command prompt
dmesg | grep "ssh traffic"

# redirect to txt file
dmesg | grep "ssh traffic" > ssh.txt

# check with this
cat ssh.txt

#check tail
tail -f/var/log/kern.log
