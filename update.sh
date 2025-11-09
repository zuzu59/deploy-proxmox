#!/bin/bash
#passe les updates sur la machine
#zf171005.1750, zf251109.1850


~/deploy-proxmox/stop_daily_updates.sh

~/deploy-proxmox/clean_install.sh

sudo apt-get update
sudo apt-get dist-upgrade -y

~/deploy-proxmox/clean_install.sh

#J'enlève le free_swap quand il n'y a pas assez de RAM pour libérer le swap et que cela bloque la machine

# ~/deploy-proxmox/free_swap.sh



