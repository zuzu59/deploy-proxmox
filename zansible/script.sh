#!/usr/bin/env bash
#toto, test remote ssh commande
#zf170330.1510

echo ---------- toto start

git -C ./deploy-proxmox/ pull
./deploy-proxmox/patch_sshd_AcceptEnv.sh

