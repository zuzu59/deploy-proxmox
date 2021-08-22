#!/bin/bash
# Petit script pour enlever facilement le swapfile pour gagner de la place disque
# z210822.2232
# source: https://www.digitalocean.com/community/questions/how-to-change-swap-size-on-ubuntu-14-04

# erase old swap file
sudo swapoff /swapfile
sudo rm /swapfile

echo " ****** We are done !!! ********"
