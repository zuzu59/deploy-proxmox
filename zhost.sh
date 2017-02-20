#!/usr/bin/env bash
#Petit script pour changer le hostname avec l'adresse ip du dhcp
#zf170221.0019

THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
/bin/hostname $(echo $THEIP |/bin/sed "s/\./-/g")





