#!/usr/bin/env bash
#Install tout ce qu'il faut pour avoir un desktop graphique utilisable via VNC
#zf171111.1712

echo ---------- install du desktop graphique


sudo apt-get update
sudo apt-get -y install xfce4 xdm xfce4-terminal xfce4-goodies x11vnc

