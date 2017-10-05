#!/bin/bash
#passe les updates sur la machine
#zf171005.1750


~/deploy-proxmox/stop_daily_updates.sh

~/deploy-proxmox/clean_install.sh

sudo apt-get update
sudo apt-get dist-upgrade -y

~/deploy-proxmox/clean_install.sh

~/deploy-proxmox/free_swap.sh



