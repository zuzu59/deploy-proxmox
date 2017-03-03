#!/bin/bash
#Nettoyage de l'installation
#zf170303.1551

echo ---------- clean install
sudo apt-get -f install               #termine l'installa  si problème dû à l'arrêt du service apt-daily
sudo apt-get -y autoremove
sudo apt-get -y clean
sudo apt-get -y autoclean



