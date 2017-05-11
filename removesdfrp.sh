#!/usr/bin/env bash
#Petit script pour enlever la config du reverse proxy pour un service via un curl dans Consul
#zf170511.1527

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

echo $zvar



curl -X PUT -d "$zvar" http://10.92.103.53:8500/v1/catalog/deregister


#'{"Datacenter": "dc1", "Node": "rp-$1", "Address": "$2", "Service": {"Service": "$1", "Port": $3, "Tags": [
#         "traefik.frontend.rule=Host:$1.sdftests.xyz"
#      ] }}' http://10.92.103.53:8500/v1/catalog/register


#curl -X PUT -d '{"Datacenter": "dc1", "Node": "rp-django-example", "Address": "sdf-bill2myprint-zuzu", "Service": {"Service": "django-example", "Port": 8000, "Tags": [
#         "traefik.frontend.rule=Host:django-example.sdftests.xyz"
#      ] }}' http://10.92.103.53:8500/v1/catalog/register




