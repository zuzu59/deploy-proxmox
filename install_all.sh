#!/usr/bin/env bash
#Petit script pour installer des machines virtuelles Ubuntu dans l'infra de tests Proxmox de la SDF
#zf170222.1618

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: install.sh machine_name\n\n"
    exit
fi

#arrête la mise à jour du système lors du reboot (https://github.com/boxcutter/ubuntu/issues/73)
sudo systemctl stop apt-daily.service # disable run when system boot
sudo systemctl stop apt-daily.timer   # disable timer run
sudo dpkg --configure -a              #remet en état si problème dû à l'arrêt du service apt-daily

# modifie le hostname
./change_hostname.sh $1

# installation de zdyndns
./install_zdyndns.sh

# copie les certificats ssh
./ssh-copy.sh

# installation des utilitaires
./install_utils.sh


# clean l'installation
sudo apt-get -y autoremove
sudo apt-get -y clean
sudo apt-get -y autoclean




echo ---------- end

