#!/usr/bin/env bash
#Installation du discovery service Consul
#zf170301.0936

echo ATTENTION, il faut faire tourner ce script dans le dosier Ubuntu !
read -p "appuyer une touche pour continuer"

echo ---------- update
sudo dpkg --configure -a
sudo apt-get -f install
sudo apt-get -y update > /dev/null

echo ---------- install consul
rm consul_0.7.5_linux_amd64.zip
wget https://releases.hashicorp.com/consul/0.7.5/consul_0.7.5_linux_amd64.zip
sudo apt-get -y install unzip
sudo unzip consul_0.7.5_linux_amd64.zip -d /usr/local/bin/consul
rm consul_0.7.5_linux_amd64.zip
echo "PATH=$PATH:/usr/local/bin/consul" >> ~/.bashrc

sudo useradd consul
sudo addgroup consul consul
sudo addgroup ubuntu consul
sudo mkdir /var/consul
sudo chown consul:consul /var/consul
sudo chmod 775 /var/consul
sudo mkdir -p /etc/consul.d/{bootstrap,server,client}

echo ---------- 
echo ---------- 
echo ---------- IL FAUT SE RECONNECTER POUR RENDRE VALIDE LE NOUVEAU PATH
echo ---------- 
echo ---------- 





