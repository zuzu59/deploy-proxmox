#!/bin/bash
# Petit script pour créer facilement swapfile de 1GB sur une machine virtuelle
# z210822.2232
# source: https://support.rackspace.com/how-to/create-a-linux-swap-file/
# source: https://www.digitalocean.com/community/questions/how-to-change-swap-size-on-ubuntu-14-04

echo ""
echo "ATTENTION, ce script doit tourner en mode 'sudo' !"
echo ""

# erase old swap file
swapoff /swapfile
rm /swapfile

#create the swap space 1GB
echo "Creating 1GB swap space in /swapfile..."
fallocate -l 1G /swapfile
ls -lh /swapfile

#secure the swapfile
echo "Securing the swapfile..."
chown root:root /swapfile
chmod 0600 /swapfile
ls -lh /swapfile

#turn the swapfile on
echo "Turning the swapfile on..."
mkswap /swapfile
swapon /swapfile


echo "Verifying..."
swapon -s
grep -i --color swap /proc/meminfo

echo "Adding swap entry to /etc/fstab"
echo -e "\n/swapfile none            swap    sw              0       0" >> /etc/fstab

echo "Result: "
cat /etc/fstab

echo " ****** We are done !!! ********"
