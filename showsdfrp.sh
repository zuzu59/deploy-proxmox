#!/usr/bin/env bash
#Petit script pour afficher la config du reverse proxy pour un service via un curl dans Consul
#zf170511.1942


curl -X GET http://10.92.103.53:8500/v1/catalog/services |jq

