#!/bin/bash
# petit script pour purger le swap afin d'améliorer la réactivité de la machine
# ATTENTION: cela ne peut tourner seulement si on a assez de RAM disponible !
#zf170818.0822

#Source: https://askubuntu.com/questions/1357/how-to-empty-swap-if-there-is-free-ram

echo "Etat de la mémoire avant:"
free

#purge le cache disque
sync; sync; sync;
sudo sh -c 'echo 3 >/proc/sys/vm/drop_caches'

echo "Etat de la mémoire après le purge du cache disque:"
free


#purge le swap si assez de RAM disponible
free_data="$(free)"
mem_data="$(echo "$free_data" | grep 'Mem:')"
free_mem="$(echo "$mem_data" | awk '{print $4}')"
buffers="$(echo "$mem_data" | awk '{print $6}')"
cache="$(echo "$mem_data" | awk '{print $7}')"
total_free=$((free_mem + buffers + cache))
used_swap="$(echo "$free_data" | grep 'Swap:' | awk '{print $3}')"

echo -e "Free memory:\t$total_free kB ($((total_free / 1024)) MB)\nUsed swap:\t$used_swap kB ($((used_swap / 1024)) MB)"
if [[ $used_swap -eq 0 ]]; then
    echo "Congratulations! No swap is in use."
elif [[ $used_swap -lt $total_free ]]; then
    echo "Freeing swap..."
    sudo swapoff -a
    sudo swapon -a
else
    echo "Not enough free memory. Exiting."
    exit 1
fi

echo "Etat de la mémoire après le purge du swap:"
free

