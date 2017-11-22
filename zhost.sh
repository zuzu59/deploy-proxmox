#!/usr/bin/env bash
#Petit script pour changer le hostname avec l'adresse ip du dhcp, forcer le bon DNS et ajouter la machine dans le DNS
#zf171122.1425

#THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
THEIP=$(/sbin/ifconfig | /bin/grep "inet addr" | /bin/grep -v 127\.0 | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')

THEHOST="sdfproxmox3"

echo $THEHOST-$THEIP > /dev/kmsg

/bin/hostname $THEHOST
#-$(echo $THEIP |/bin/sed "s/\./-/g")

# change le hostname
echo "127.0.0.1	localhost" > /etc/hosts
echo "127.0.1.1	ubuntu" >> /etc/hosts
echo "# The following lines are desirable for IPv6 capable hosts" >> /etc/hosts
echo "::1     localhost ip6-localhost ip6-loopback" >> /etc/hosts
echo "ff02::1 ip6-allnodes" >> /etc/hosts
echo "ff02::2 ip6-allrouters" >> /etc/hosts

echo "$THEIP $(hostname)" >> /etc/hosts

# force le bon DNS et interdit la modification par le DHCP !
chattr -i /etc/resolv.conf
echo "nameserver 10.92.103.53" > /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
echo "search node.consul epfl.ch" >> /etc/resolv.conf
chattr +i /etc/resolv.conf

# ajoute la machine dans le DNS de Consul
/root/dns_add.sh $THEHOST $THEIP


# change le message d'accueil sur la console
zcommand="pveversion"
tstcommand=`command -v $zcommand`

echo -e "
$THEIP
`host $THEIP`
" > /etc/issue

#echo $zcommand
#echo $tstcommand

if [ "$tstcommand" ]
  then

echo -e "
------------------------------------------------------------------------------

Welcome to the Proxmox Virtual Environment. Please use your web browser to
configure this server - connect to:

  https://$THEIP:8006/

hello zuzu

------------------------------------------------------------------------------

" >> /etc/issue



fi

