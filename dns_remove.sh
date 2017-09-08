#!/usr/bin/env bash
#Petit script pour enlever une machine dans le DNS de Consul
#zf170908.1539

#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./dns_remove.sh machinename\n\n"
    exit
fi

# enlève une machine dans le DNS de Consul 
echo -e "\n---------- enlève la machine $1 dans le DNS de consul\n"

zvar="{\"Datacenter\": \"dc1\", \"Node\": \"$1\"
}"

#echo $zvar
curl -X PUT -d "$zvar" http://10.92.103.53:8500/v1/catalog/deregister

echo -e "\n---------- test la machine $1 dans le DNS de consul\n"
ping -c 1 $1.node.consul

