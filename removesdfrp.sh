#!/usr/bin/env bash
#Petit script pour enlever la config du reverse proxy pour un service via un curl dans Consul
#zf170511.1942

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./sdfrp.sh servicename\n\n"
    exit
fi

# configure le reverse proxy 
echo ---------- configure le reverse proxy

zvar="{\"Datacenter\": \"dc1\", \"Node\": \"rp-$1\"
}"

#echo $zvar
curl -X PUT -d "$zvar" http://10.92.103.53:8500/v1/catalog/deregister

