#!/usr/bin/env bash
#Petit script pour installer des machines virtuelles Ubuntu dans l'infra de tests Proxmox de la SDF
#zf170221.2137

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: install.sh machine_name\n\n"
    exit
fi

#arrête la mise à jour du système lors du reboot (https://github.com/boxcutter/ubuntu/issues/73)
sudo systemctl stop apt-daily.service # disable run when system boot
sudo systemctl stop apt-daily.timer   # disable timer run
sleep 5

# modifie le hostname
./change_hostname.sh $1

# installation de zdyndns
./install_zdyndns.sh


# installation des utilitaires
#sudo apt-get update
#sudo apt-get -y install htop



echo ---------- end

