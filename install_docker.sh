#!/usr/bin/env bash
#Petit script pour installer facilement Docker et ses outils qui vont bien
#zf210822.1928

# source: https://doc.ubuntu-fr.org/docker
# source: https://docs.docker.com/compose/install/#install-compose

echo -e "\Installation de docker..."
sudo apt-get update
sudo apt-get -y install python2-minimal python3-minimal
#./install_docker.sh
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker $LOGNAME

echo -e "\nInstallation de docker-compose..."
#sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo -e "\nIMPORTANT !\n\nVous devez faire un logoff/logon pour que les modifications de groups fonctionnent !\n"
