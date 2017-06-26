#!/usr/bin/env bash
#Petit script pour patcher la config 50unattended-upgrades afin de ne plus garder les anciens kernels qui bouffent la place du disque à la longue
#zf170626.1647

echo ---------- patch_50unattended-upgrades

sudo patch -f /etc/apt/apt.conf.d/50unattended-upgrades < ~/deploy-proxmox/50unattended-upgrades

sudo rm /etc/apt/apt.conf.d/50unattended-upgrades.rej
sudo rm /etc/apt/apt.conf.d/50unattended-upgrades.orig

sudo systemctl restart unattended-upgrades.service
