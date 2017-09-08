#!/usr/bin/env bash
#Petit script pour tester la vitesse d'un CPU
#zf170908.1624

sudo apt-get -y install sysbench
sysbench --test=cpu --num-threads=16 run
