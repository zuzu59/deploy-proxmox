#!/bin/bash
#stop la mise à jour du système lors du boot (https://github.com/boxcutter/ubuntu/issues/73)
#zf170303.1550

echo ---------- stop daily update
sudo systemctl stop apt-daily.service # disable run when system boot
sudo systemctl stop apt-daily.timer   # disable timer run
sudo dpkg --configure -a              #remet en état si problème dû à l'arrêt du service apt-daily
sudo apt-get -f install               #termine l'installa  si problème dû à l'arrêt du service apt-daily

