#!/usr/bin/env bash
#Petit script pour changer le nom du hostname
#zf170908.1551, zf210424.1835


#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ~/just_change_name.sh machine_name\n\n"
    exit
fi

# modifie le hostname
echo ---------- install change hostname
sudo cp ~/deploy-proxmox/zhost.sh /root
sudo cp ~/deploy-proxmox/dns_add.sh /root

sudo sed -i "s/THEHOST=\"toto\"/THEHOST=\"$1\"/" /root/zhost.sh

#sudo cp ~/deploy-proxmox/zhost.service /etc/systemd/system
#sudo chown root:root /etc/systemd/system/zhost.service
#sudo systemctl daemon-reload
#sudo systemctl enable zhost.service
#sudo systemctl restart zhost.service

sudo systemctl disable zhost.service
sudo /root/zhost.sh

/usr/bin/timedatectl set-timezone Europe/Zurich

sudo rm /etc/machine-id
sudo systemd-machine-id-setup

sudo dhclient -r
sudo rm /var/lib/dhcp/dhclient.leases
sudo reboot

exit














#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: change_hostname.sh machine_name\n\n"
    exit
fi

# modifie le hostname 
echo ---------- install change hostname
sudo cp zhost.sh /root
sudo sed -i "s/THEHOST=\"toto\"/THEHOST=\"$1\"/" /root/zhost.sh
sudo cp zhost.service /etc/systemd/system
sudo chown root:root /etc/systemd/system/zhost.service
sudo systemctl daemon-reload
sudo systemctl enable zhost.service



