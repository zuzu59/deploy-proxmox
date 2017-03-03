#!/usr/bin/env bash
#Install du serveur dhcp
#zf170303.1749

echo ---------- install du serveur dhcp

#arrête la mise à jour du système lors du reboot (https://github.com/boxcutter/ubuntu/issues/73)
./stop_daily_updates.sh

sudo apt-get update
sudo apt-get install isc-dhcp-server
sudo cp dhcpd.conf /etc/dhcp/


