#!/usr/bin/env bash
#Installation de Ansible
#zf190624.1447

echo "---------- install de Ansible"


sudo apt update
sudo apt install -y python3 python3-pip hiera-eyaml
sudo -H pip3 install ansible bcrypt

