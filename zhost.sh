#!/usr/bin/env bash
#Petit script pour changer le hostname avec l'adresse ip du dhcp
#zf170221.1424

/bin/sleep 3

THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
THEHOST="toto"

echo $THEHOST-$THEIP > /dev/kmsg

/bin/hostname $THEHOST-$(echo $THEIP |/bin/sed "s/\./-/g")

echo "$THEIP $(hostname)" >> /etc/hosts





