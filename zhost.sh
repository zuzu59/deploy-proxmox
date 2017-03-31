#!/usr/bin/env bash
#Petit script pour changer le hostname avec l'adresse ip du dhcp
#zf170331.1029

#/bin/sleep 3

THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
THEHOST="toto"

echo $THEHOST-$THEIP > /dev/kmsg

/bin/hostname $THEHOST
#-$(echo $THEIP |/bin/sed "s/\./-/g")

echo "127.0.0.1	localhost" > /etc/hosts
echo "127.0.1.1	ubuntu" >> /etc/hosts
echo "# The following lines are desirable for IPv6 capable hosts" >> /etc/hosts
echo "::1     localhost ip6-localhost ip6-loopback" >> /etc/hosts
echo "ff02::1 ip6-allnodes" >> /etc/hosts
echo "ff02::2 ip6-allrouters" >> /etc/hosts

echo "$THEIP $(hostname)" >> /etc/hosts
