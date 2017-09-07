#!/bin/bash
# petit script pour récupérer le DVD original Ubuntu et le backup du master
#zf170907.1546

#Source: 

scp root@128.178.116.29:/var/lib/vz/template/iso/ubuntu-16.04.1-server-amd64.iso /var/lib/vz/template/iso/
scp root@128.178.116.29:/var/lib/vz/dump/vzdump-qemu-112-2017_09_07-15_41_58.vma.lzo .

