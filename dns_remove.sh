#!/usr/bin/env bash
#Petit script pour enlever une machine dans le DNS de Consul
#zf170908.1506

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./dns_remove.sh machinename\n\n"
    exit
fi

# enlève une machine dans le DNS de Consul 
echo ---------- enlève une machine dans le DNS de Consul

zvar="{\"Datacenter\": \"dc1\", \"Node\": \"$1\"
}"

#echo $zvar
curl -X PUT -d "$zvar" http://10.92.103.53:8500/v1/catalog/deregister
