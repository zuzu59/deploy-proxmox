#!/usr/bin/env bash
#Installation d'un environnement complet Grafana
#zf170223.1600

echo "ATTENTION, il faut faire tourner ce script dans le dosier racine Ubuntu !"
echo "donc: ~/deploy-proxmox/grafana/install_influxdb_grafana.sh"
echo ""
#read -p "appuyer une touche pour continuer"

echo ---------- update et upgrade
sudo apt-get -y update
#apt-get -y upgrade

echo ---------- install grafana and setup
wget https://grafanarel.s3.amazonaws.com/builds/grafana_4.1.2-1486989747_amd64.deb
sudo apt-get -y install adduser libfontconfig
sudo dpkg -i grafana_4.1.2-1486989747_amd64.deb
sudo update-rc.d grafana-server defaults 95 10

echo ---------- install influxdb
wget https://dl.influxdata.com/influxdb/releases/influxdb_1.2.0_amd64.deb
sudo dpkg -i influxdb_1.2.0_amd64.deb

#sudo cp /vagrant/influxdb.conf /etc/opt/influxdb/influxdb.conf

sudo service influxdb restart
sudo service grafana-server restart
