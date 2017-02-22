#!/bin/bash
#Installation de zdyndns
#zf170222.1553

echo ---------- install zdyndns

sudo cp zdyndns_client.sh /root
sudo cp zdyndns.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/zdyndns.service
sudo systemctl daemon-reload
sudo systemctl enable zdyndns.service





#sudo apt-get update
#sudo apt-get -y install supervisor

#sudo cp zdyndns_client.conf /etc/supervisor/conf.d/zdyndns_client.conf
#sudo cp zdyndns_client.sh /home/ubuntu/zdyndns_client.sh

#sudo systemctl enable supervisor.service
#sudo service supervisor restart

