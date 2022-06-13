#windows command is "bash ipsweep.sh 192.168.1" linux command is "./ipsweep.sh 192.168.1"

for ip in `seq 1 254`; do ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & done > iplist.txt
