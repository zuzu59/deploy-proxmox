#!/bin/bash
# Petit script pour se créer facilement une machine virtuelle à 2 balles avec tous mes petits utils ;-)
# zf190108.1018
# source: https://www.scaleway.com/pricing/

~/deploy-proxmox/env_a_zuzu.sh
~/deploy-proxmox/install_utils.sh
~/deploy-proxmox/install_swapfile.sh

echo -e "

Il faut se déconnecter afin que les modfis soient prises en compte !


"


