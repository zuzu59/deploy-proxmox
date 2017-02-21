#!/usr/bin/env bash
#Petit script pour installer des machines virtuelles Ubuntu dans l'infra de tests Proxmox de la SDF
#zf170221.1729

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: install.sh machine_name\n\n"
    exit
fi

# modifie au vol le hostname avec l'adrs ip du dhcp
sudo cp zhost.sh /root
sudo sed -i "s/THEHOST=\"toto\"/THEHOST=\"$1\"/" /root/zhost.sh
sudo cp zhost.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/zhost.service
sudo systemctl daemon-reload
sudo systemctl enable zhost.service

# installation de zdyndns
./install_zdyndns.sh


# installation des utilitaires
#sudo apt-get update
#sudo apt-get -y install htop




echo "end"
