#!/bin/bash
#Nettoyage de l'installation
#zf170518.1642

echo ---------- clean install
sudo apt-get -y clean
sudo apt-get -y autoclean
sudo apt-get -y autoremove
sudo apt-get -f install               #termine l'installa  si problème dû à l'arrêt du service apt-daily
sudo apt-get -y clean
sudo apt-get -y autoclean
sudo apt-get -y autoremove



