#!/bin/bash
#Installation de consul client
#zf170301.1624

echo ---------- install consul client

sudo cp ~/deploy-proxmox/consul-client.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/consul-client.service
sudo systemctl daemon-reload
sudo systemctl enable consul-client.service
sudo systemctl restart consul-client.service
