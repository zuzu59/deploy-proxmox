#!/usr/bin/env bash
#Install des utilitaires
#zf170222.1618

echo ---------- install des utilitaires

echo "alias gtree='git log --graph --oneline --decorate --all'" >> ~/.bashrc
sudo apt-get update
sudo apt-get -y install htop git



