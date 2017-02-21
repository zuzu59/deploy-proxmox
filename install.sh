#!/usr/bin/env bash
#Petit script pour installer des machines virtuelles Ubuntu dans l'infra de tests Proxmox de la SDF
#zf170221.0732

# modifie au vol le hostname avec l'adrs ip du dhcp
sudo cp zhost.sh /root
sudo crontab root-crontab

# installation des utilitaires
#sudo apt-get update
#sudo apt-get -y install htop


echo "end"
