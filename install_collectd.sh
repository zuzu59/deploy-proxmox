#!/bin/bash
#Installation de collectd pour pousser sur le InfluxDB de exhebdb11.epfl.ch
#zf170222.1639

echo ---------- install and setup collectd
sudo apt-get update
sudo apt-get -y install collectd

sudo cp collectd_graphite.conf /etc/collectd/collectd.conf.d/graphite.conf

sudo service collectd restart
