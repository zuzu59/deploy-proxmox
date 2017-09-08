#!/usr/bin/env bash
#Petit script pour juste changer le nom du hostname après un clone et rebooter tout de suite après
#zf170908.1549

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ~/just_change_name.sh machine_name\n\n"
    exit
fi

~/deploy-proxmox/change_hostname.sh $1
sudo reboot

exit





# modifie le hostname 
echo ---------- install change hostname
sudo cp ~/deploy-proxmox/zhost.sh /root
sudo cp ~/deploy-proxmox/dns-add.sh /root

sudo sed -i "s/THEHOST=\"toto\"/THEHOST=\"$1\"/" /root/zhost.sh
sudo cp ~/deploy-proxmox/zhost.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/zhost.service
sudo systemctl daemon-reload
sudo systemctl enable zhost.service

sudo reboot


