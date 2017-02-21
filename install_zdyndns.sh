#!/bin/bash
#Installation de zdyndns
#zf170221.1943

echo ---------- install zdyndns
sudo apt-get update
sleep 3
sudo apt-get -y install supervisor

sudo cp zdyndns_client.conf /etc/supervisor/conf.d/zdyndns_client.conf
#sudo cp zdyndns_client.sh /home/ubuntu/zdyndns_client.sh

sudo systemctl enable supervisor.service
sudo service supervisor restart

