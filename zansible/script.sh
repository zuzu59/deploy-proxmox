#!/usr/bin/env bash
#script.sh, petit script à exécuter en remote
#zf170331.0907

echo ---------- script start $1

#git -C ./deploy-proxmox/ pull

#./deploy-proxmox/patch_sshd_AcceptEnv.sh
#cat /etc/ssh/sshd_config |grep GIT

#cd ./deploy-proxmox
#./change_hostname.sh $1
#sudo /root/zhost.sh
#cat /etc/hosts



#### voir si on a besoin de faire des updates
sudo /etc/update-motd.d/90-updates-available

#### fait tous les updates
#sudo apt-get -y update ; sudo apt-get -y dist-upgrade ; ~/deploy-proxmox/clean_install.sh

#### voir si on a besoin de rebooter
sudo /etc/update-motd.d/98-reboot-required

#### rebooter si nécesssaire
#ifrestart=`sudo /etc/update-motd.d/98-reboot-required | awk {'print $3'}`
#if [ "$ifrestart" = "restart" ] ; then echo $ifrestart ; sudo reboot ; fi

#### reboote la machine
#sudo reboot



