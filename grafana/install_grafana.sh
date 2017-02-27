#!/usr/bin/env bash
#Installation de l'interface graphique de Grafana
#zf161110.1639, zf170227.1037

echo ATTENTION, il faut faire tourner ce script dans le dossier de déploiement à cause des fichiers .deb !
echo ""
read -p "appuyer une touche pour continuer"

echo ---------- update et upgrade
sudo apt-get -y update > /dev/null
#apt-get -y upgrade

echo ---------- install grafana and setup
wget https://grafanarel.s3.amazonaws.com/builds/grafana_4.1.2-1486989747_amd64.deb

sudo apt-get -y install adduser libfontconfig
sudo dpkg -i grafana_4.1.2-1486989747_amd64.deb
sudo update-rc.d grafana-server defaults 95 10

sudo service grafana-server restart
