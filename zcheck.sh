#!/usr/bin/env bash
# petit script pour tester très simplement si on a été patché ou non pour les failles Meltdown ou Spectre
#zf180111.1208

# source: https://www.ostechnix.com/check-meltdown-spectre-vulnerabilities-patch-linux/

echo ---------- start zcheck


echo "CVE-2017-5753 bounds check bypass (Spectre Variant 1)"
grep CONFIG_PAGE_TABLE_ISOLATION=y /boot/config-`uname -r` && echo -e "\033[42m patched :) \033[0m" || echo -e "\033[41m unpatched :( \033[0m"

echo "CVE-2017-5715 branch target injection (Spectre Variant 2)"
grep cpu_insecure /proc/cpuinfo && echo -e "\033[42m patched :) \033[0m" || echo  -e "\033[41m unpatched :( \033[0m"

echo "CVE-2017-5754 rogue data cache load (Meltdown)"
dmesg | grep "Kernel/User page tables isolation: enabled" && echo -e "\033[42m patched :) \033[0m" || echo  -e "\033[41m unpatched :( \033[0m"
