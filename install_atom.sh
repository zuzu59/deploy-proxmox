#!/usr/bin/env bash
#Installation de l'éditeur Atom
#zf200306.1116

echo "---------- install d'Atom"


#sudo add-apt-repository ppa:webupd8team/atom
#sudo add-apt-repository ppa:atom.io


wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom g++ build-essential

apm stars --user zuzu59 --install

