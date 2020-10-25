#!/usr/bin/env bash
#Install des utilitaires
#zf170908.1704, zf201025.1830

echo ---------- install des utilitaires

sudo apt-get update
sudo apt-get -y install htop git unzip jq sudo curl nano feh graphviz

echo "source ~/deploy-proxmox/alias" >> ~/.bashrc
echo "source ~/deploy-proxmox/zfunctions.sh" >> ~/.bashrc

echo "export EDITOR=nano" >> ~/.bashrc
echo "export LANG=en_US.UTF-8" >> ~/.bashrc

echo "export PROMPT_COMMAND=\"history -a; history -c; history -r; \$PROMPT_COMMAND\""  >> ~/.bashrc

~/deploy-proxmox/env_a_zuzu.sh

echo "set tabstospaces" >> ~/.nanorc
echo "set tabsize 4" >> ~/.nanorc
echo "include /usr/share/nano/*.nanorc" >> ~/.nanorc
