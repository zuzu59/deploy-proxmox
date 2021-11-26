#!/usr/bin/env bash
#Petit script pour récupérer toutes les clefs ssh de la FSD sur Github ;-)
#zf210421.1533, zf210924.1103, zf211126.1523

#Usage, simplement faire:
#
# curl https://raw.githubusercontent.com/zuzu59/deploy-proxmox/master/get_ssh_key_fsd.sh | bash

curl https://github.com/zuzu59.keys >> ~/.ssh/authorized_keys
curl https://github.com/domq.keys >> ~/.ssh/authorized_keys
#curl https://github.com/GregLeBarbar.keys >> ~/.ssh/authorized_keys
curl https://github.com/jdelasoie.keys >> ~/.ssh/authorized_keys
curl https://github.com/lvenries.keys >> ~/.ssh/authorized_keys
curl https://github.com/multiscan.keys >> ~/.ssh/authorized_keys
curl https://github.com/ponsfrilus.keys >> ~/.ssh/authorized_keys

curl https://github.com/williambelle.keys >> ~/.ssh/authorized_keys
curl https://github.com/obieler.keys >> ~/.ssh/authorized_keys
curl https://github.com/dragonleman.keys >> ~/.ssh/authorized_keys

#curl https://github.com/nicolasreymond.keys >> ~/.ssh/authorized_keys
#curl https://github.com/strikerpt.keys >> ~/.ssh/authorized_keys

curl https://github.com/JaavLex.keys >> ~/.ssh/authorized_keys
curl https://github.com/SaphireVert.keys >> ~/.ssh/authorized_keys
curl https://github.com/D4rkHeart.keys >> ~/.ssh/authorized_keys
curl https://github.com/Azecko.keys >> ~/.ssh/authorized_keys
curl https://github.com/crazylady2004.keys >> ~/.ssh/authorized_keys

sort -u -o ~/.ssh/authorized_keys ~/.ssh/authorized_keys



