#!/usr/bin/env bash
#Petit script pour patcher la config ssh afin que l'on accepte les GIT env forwarding
#zf170329.1819

echo ---------- patch_sshd_AcceptEnv

sudo patch -f /etc/ssh/sshd_config < ~/deploy-proxmox/patch_sshd_AcceptEnv
sudo systemctl restart sshd.service


