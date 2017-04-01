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

#sudo /etc/update-motd.d/90-updates-available
sudo /etc/update-motd.d/98-reboot-required



