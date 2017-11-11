#!/usr/bin/env bash
#lance le vnc server pour pour voir utiliser le desktop graphique utilisable via VNC
#zf171111.2055

echo ---------- start vnc server

sudo x11vnc -passwd tototutu -auth guess -display :0
