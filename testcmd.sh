#!/usr/bin/env bash
#Petit script pour tester si une commande existe et exécute un truc si oui
#zf170828.1432


echo ------------start
zcommand="zls"

tstcommand=`command -v $zcommand`

echo $zcommand
echo $tstcommand

if [ "$tstcommand" ]
  then

    echo "yeah elle existe"

fi


echo ------------end
