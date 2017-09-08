#!/usr/bin/env bash
#Petit script pour ajouter une machine dans le DNS de Consul
#zf170908.1539

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./dns_add.sh machinename machineip\n\n"
    exit
fi

# ajoute la machine dans le DNS de consul
echo -e "\n---------- ajoute la machine $1 dans le DNS de consul\n"

zvar="{\"Datacenter\": \"dc1\", \"Node\": \"$1\", \"Address\": \"$2\" }"
#, \"Service\": {\"Service\": \"$1\", \"Port\": $3, \"Tags\": [\"traefik.frontend.rule=Host:$1.sdftests.xyz\"] }}"

#echo $zvar
/usr/bin/curl -X PUT -d "$zvar" http://10.92.103.53:8500/v1/catalog/register

echo -e "\n---------- test la machine $1 dans le DNS de consul\n"
ping -c 1 $1.node.consul
