#!/bin/bash
# Petit script pour créer facilement swapfile sur une machine virtuelle
# zf190124.1024
# source: https://support.rackspace.com/how-to/create-a-linux-swap-file/


#create the swap space 2GB
echo "Creating 2GB swap space in /swapfile..."
fallocate -l 2G /swapfile
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
