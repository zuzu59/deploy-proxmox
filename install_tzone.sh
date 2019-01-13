#!/bin/bash
# Petit script pour configurer la bonne timezone
# zf19013.1445
# source: https://serverfault.com/questions/84521/automate-dpkg-reconfigure-tzdata

sudo ln -fs /usr/share/zoneinfo/Europe/Zurich /etc/localtime
dpkg-reconfigure -f noninteractive tzdata
