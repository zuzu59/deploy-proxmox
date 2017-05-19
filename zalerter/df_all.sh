#!/usr/bin/env bash
#script.sh, petit script pour afficher l'espace disque restant sur une machine en remote
#zf170519.1524

echo ---------- script start $1

#### indique l'espace disque restant
df -h |grep '/dev/mapper' | awk {'print $4'}




