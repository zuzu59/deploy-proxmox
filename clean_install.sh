#!/bin/bash
#Nettoyage de l'installation
#zf170626.1606

echo ---------- clean install
echo ---------- clean
sudo apt-get -y clean
echo ---------- autoclean
sudo apt-get -y autoclean
echo ---------- autoremove
sudo apt-get -y autoremove --purge
echo ---------- install
sudo apt-get -f install               #termine l'installa  si problème dû à l'arrêt du service apt-daily
echo ---------- clean
sudo apt-get -y clean
echo ---------- autoclean
sudo apt-get -y autoclean
echo ---------- autoremove
sudo apt-get -y autoremove --purge



