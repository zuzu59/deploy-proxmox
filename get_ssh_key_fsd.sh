#!/usr/bin/env bash
#Petit script pour récupérer toutes les clefs ssh de la FSD sur Github ;-)
#zf210421.1533

curl https://github.com/zuzu59.keys >> ~/.ssh/authorized_keys
curl https://github.com/domq.keys >> ~/.ssh/authorized_keys
curl https://github.com/GregLeBarbar.keys >> ~/.ssh/authorized_keys
curl https://github.com/jdelasoie.keys >> ~/.ssh/authorized_keys
curl https://github.com/lvenries.keys >> ~/.ssh/authorized_keys
curl https://github.com/multiscan.keys >> ~/.ssh/authorized_keys
curl https://github.com/nicolasreymond.keys >> ~/.ssh/authorized_keys
curl https://github.com/ponsfrilus.keys >> ~/.ssh/authorized_keys
curl https://github.com/SaphireVert.keys >> ~/.ssh/authorized_keys
curl https://github.com/strikerpt.keys >> ~/.ssh/authorized_keys
curl https://github.com/TacticsCH.keys >> ~/.ssh/authorized_keys

sort -u -o ~/.ssh/authorized_keys ~/.ssh/authorized_keys



