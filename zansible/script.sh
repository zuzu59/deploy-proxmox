#!/usr/bin/env bash
#script.sh, petit script à exécuter en remote
#zf170402.1544

echo ---------- script start $1

#### met à jour la distrib deploy-proxmox de github
#git -C ./deploy-proxmox/ pull

#### patch pour autoriser de transmettre via le ssh forward les variables env pour GIT
#./deploy-proxmox/patch_sshd_AcceptEnv.sh
#cat /etc/ssh/sshd_config |grep GIT

#### patch le problème du /etc/hosts
#cd ./deploy-proxmox
#./change_hostname.sh $1
#sudo /root/zhost.sh
#cat /etc/hosts

#### patch le .bashrc
#cat ~/.bashrc
#~/deploy-proxmox/install_utils.sh

#### voir si on a besoin de faire des updates
sudo /etc/update-motd.d/90-updates-available

#### fait tous les updates
#sudo apt-get -y update ; sudo apt-get -y dist-upgrade ; ~/deploy-proxmox/clean_install.sh

#### voir si on a besoin de rebooter
sudo /etc/update-motd.d/98-reboot-required

#### rebooter si nécesssaire
ifrestart=`sudo /etc/update-motd.d/98-reboot-required | awk {'print $3'}`
if [ "$ifrestart" = "restart" ] ; then echo $ifrestart ; sudo reboot ; fi

#### reboote la machine
#sudo reboot



