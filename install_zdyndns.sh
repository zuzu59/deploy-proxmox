#!/bin/bash
#Installation de zdyndns
#zf170220.1847

echo ---------- install and setup supervisor
sudo apt-get -y install supervisor

sudo cp zdyndns_client.conf /etc/supervisor/conf.d/zdyndns_client.conf
sudo cp zdyndns_client.sh /home/ubuntu/zdyndns_client.sh

sudo service supervisor restart

