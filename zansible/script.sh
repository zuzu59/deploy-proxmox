#!/usr/bin/env bash
#script.sh, petit script à exécuter en remote
#zf170420.1051

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

#### patch le zdyndns
#~/deploy-proxmox/install_zdyndns.sh

#### indique l'espace disque restant
df -h |grep '/dev/mapper' | awk {'print $4'}

#### regarde si on a besoin de faire des updates
sudo /etc/update-motd.d/90-updates-available

#### fait tous les updates
sudo apt-get -y update ; sudo apt-get -y dist-upgrade ; sudo ~/deploy-proxmox/clean_install.sh

#### clean les anciens updates
#sudo ~/deploy-proxmox/clean_install.sh

#### voir si on a besoin de rebooter
sudo /etc/update-motd.d/98-reboot-required

#### rebooter si nécesssaire
#ifrestart=`sudo /etc/update-motd.d/98-reboot-required | awk {'print $3'}`
#if [ "$ifrestart" = "restart" ] ; then echo $ifrestart ; sudo reboot ; fi

#### reboote la machine
#sudo reboot



