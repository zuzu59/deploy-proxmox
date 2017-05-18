#!/bin/bash
#Installation de zdyndns
#zf170518.1540

echo ---------- install zdyndns

sudo cp /home/ubuntu/deploy-proxmox/zdyndns_client.sh /root
sudo cp /home/ubuntu/deploy-proxmox/zdyndns.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/zdyndns.service
sudo systemctl daemon-reload
sudo systemctl enable zdyndns.service
sudo systemctl start zdyndns.service
