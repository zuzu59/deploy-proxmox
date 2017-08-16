#!/usr/bin/env bash
#Petit script pour patcher la clavier de la console
#zf170816.1538
echo ---------- patch_console_keyboard


sudo apt-get -y install console-common
#sudo dpkg-reconfigure console-data

sudo sed -i.bak 's/^XKBMODEL=.*/XKBMODEL="macintosh"/' /etc/default/keyboard
sudo sed -i.bak 's/^XKBLAYOUT=.*/XKBLAYOUT="ch"/' /etc/default/keyboard
sudo sed -i.bak 's/^XKBVARIANT=.*/XKBVARIANT="fr"/' /etc/default/keyboard
sudo sed -i.bak 's/^XKBOPTIONS=.*/XKBOPTIONS="lv3:alt_switch"/' /etc/default/keyboard





