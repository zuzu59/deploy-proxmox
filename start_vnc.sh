#!/usr/bin/env bash
#lance le vnc server pour pour voir utiliser le desktop graphique utilisable via VNC
#zf200315.1656

echo ---------- start vnc server

#sudo x11vnc -passwd tototutu -auth guess -display :0

x11vnc -loop -shared -passwd toto123

