#!/usr/bin/env bash
#Petit script pour installer des machines virtuelles Ubuntu dans l'infra de tests Proxmox de la SDF
#zf170223.0840

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: install.sh machine_name\n\n"
    exit
fi

#arrête la mise à jour du système lors du reboot (https://github.com/boxcutter/ubuntu/issues/73)
./stop_daily_updates.sh

# modifie le hostname
./change_hostname.sh $1

# installation de collectd
./install_collectd.sh

# installation de zdyndns
./install_zdyndns.sh

# copie les certificats ssh
./ssh-copy.sh

# installation des utilitaires
./install_utils.sh

# nettoie l'installation
./clean_install.sh

echo ---------- end

