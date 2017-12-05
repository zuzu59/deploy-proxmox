#!/bin/bash
# petit script pour récupérer le DVD original Ubuntu et le backup du master
#zf171205.1520

#Source: 

scp root@sdfproxmox1:/var/lib/vz/template/iso/ubuntu-16.04.1-server-amd64.iso /var/lib/vz/template/iso/
scp root@sdfproxmox1:/var/lib/vz/dump/vzdump-qemu-120-2017_12_05-15_22_26.vma.lzo /var/lib/vz/dump/

