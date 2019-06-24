#!/usr/bin/env bash
#Installation de l'éditeur Atom
#zf190624.1359

echo "---------- install d'Atom"


sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

apm stars --user zuzu59 --install

