#!/bin/bash
#Installation de consul server
#zf170301.1624

echo ---------- install consul server

sudo systemctl stop consul-client.service
sudo systemctl disable consul-client.service

sudo cp ~/deploy-proxmox/consul-server.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/consul-server.service
sudo systemctl daemon-reload
sudo systemctl enable consul-server.service
sudo systemctl restart consul-server.service
