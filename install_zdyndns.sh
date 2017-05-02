#!/bin/bash
#Installation de zdyndns
#zf170502.0853

echo ---------- install zdyndns

sudo cp zdyndns_client.sh /root
sudo cp zdyndns.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/zdyndns.service
sudo systemctl daemon-reload
sudo systemctl enable zdyndns.service
sudo systemctl start zdyndns.service
