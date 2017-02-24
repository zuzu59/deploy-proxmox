#!/usr/bin/env bash
#Installation d'un environnement complet Grafana
#zf151107.1548

echo ATTENTION, il faut faire tourner ce script dans le dosier Ubuntu !
#read -p "appuyer une touche pour continuer"

echo ---------- update et upgrade
sudo apt-get -y update
#apt-get -y upgrade

echo ---------- install grafana and setup
wget https://grafanarel.s3.amazonaws.com/builds/grafana_2.5.0_amd64.deb
sudo apt-get -y install adduser libfontconfig
sudo dpkg -i grafana_2.5.0_amd64.deb
sudo update-rc.d grafana-server defaults 95 10

echo ---------- install influxdb
wget https://s3.amazonaws.com/influxdb/influxdb_0.9.4.2_amd64.deb
sudo dpkg -i influxdb_0.9.4.2_amd64.deb

echo ---------- install and setup collectd
sudo apt-get -y install collectd

sudo cp /vagrant/influxdb.conf /etc/opt/influxdb/influxdb.conf
sudo cp /vagrant/collectd_graphite.conf /etc/collectd/collectd.conf.d/graphite.conf

sudo service influxdb restart
sudo service collectd restart
sudo service grafana-server restart
