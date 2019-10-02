#!/bin/bash
# Petit script pour changer les sources pour apt-get, cela permet d'aller beaucoup plus vite que les serveurs USA où il y a trop de monde :-(
# zf191002.1023
# source:

echo -e "

Ne fonctionne pas pour l'instant ! zf191002.1023

"
exit

#sed -i -e "s/http:\/\/archive.ubuntu.com/http:\/\/mirror.switch.ch\/ftp\/mirror\/ubuntu/g" /etc/apt/sources.list
sudo sed -i -e "s/http:\/\/archive.ubuntu.com/http:\/\/ubuntu.ethz.ch/g" /etc/apt/sources.list
