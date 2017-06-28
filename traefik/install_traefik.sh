#!/bin/bash
#Installation de traefik
#zf170628.2233
echo ---------- install traefik

sudo mkdir /root/traefik
sudo wget https://github.com/containous/traefik/releases/download/v1.3.0-rc1/traefik -O /root/traefik/traefik
sudo chmod +x /root/traefik/traefik
sudo /root/traefik/traefik version

sudo cp ~/deploy-proxmox/traefik/config.toml /root/traefik/
sudo cp ~/deploy-proxmox/traefik/traefik_start.sh /root/traefik/
sudo cp ~/deploy-proxmox/traefik/traefik.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/traefik.service
sudo systemctl daemon-reload
sudo systemctl enable traefik.service
sudo systemctl restart traefik.service

