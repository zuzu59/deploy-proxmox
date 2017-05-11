#!/usr/bin/env bash
#Petit script pour pousser la config du reverse proxy pour un service via un curl dans Consul
#zf170511.1932

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./sdfrp.sh servicename machinename serviceport\n\n"
    exit
fi

# configure le reverse proxy 
echo ---------- configure le reverse proxy

zvar="{\"Datacenter\": \"dc1\", \"Node\": \"rp-$1\", \"Address\": \"$2\", \"Service\": {\"Service\": \"$1\", \"Port\": $3, \"Tags\": [\"traefik.frontend.rule=Host:$1.sdftests.xyz\"] }}"

#echo $zvar
curl -X PUT -d "$zvar" http://10.92.103.53:8500/v1/catalog/register

echo -e "\n\nhttp://$1.sdftests.xyz:8000\n"
