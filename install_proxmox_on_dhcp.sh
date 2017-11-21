#!/usr/bin/env bash
#Install proxmox en dhcp
#zf171121.1642

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: install_proxmox_on_dhcp.sh machine_name\n\n"
    exit
fi

echo "---------- installe les petits utilitaires"
~/deploy-proxmox/install_utils.sh

echo "---------- configurer le clavier Suisse Français"
~/deploy-proxmox/keyboard_console.sh

echo "---------- change le hostname avec l'adresse ip du dhcp, forcer le bon DNS et ajouter la machine dans le DNS"
~/deploy-proxmox/change_hostname.sh $1

echo "---------- install le zdyndns"
~/deploy-proxmox/install_zdyndns.sh


