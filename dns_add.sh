#!/usr/bin/env bash
#Petit script pour ajouter une machine dans le DNS de Consul
#zf170908.1506

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./dns_add.sh machinename machineip\n\n"
    exit
fi

# ajoute la machine dans le DNS de consul
echo ---------- ajoute la machine dans le DNS de consul

zvar="{\"Datacenter\": \"dc1\", \"Node\": \"$1\", \"Address\": \"$2\" }"
#, \"Service\": {\"Service\": \"$1\", \"Port\": $3, \"Tags\": [\"traefik.frontend.rule=Host:$1.sdftests.xyz\"] }}"

#echo $zvar
curl -X PUT -d "$zvar" http://10.92.103.53:8500/v1/catalog/register

ping -c 1 $1
