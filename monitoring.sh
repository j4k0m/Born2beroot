#!/bin/bash
# This is not working for everyone..
DATE=$(last reboot --time-format iso | head -n1 | awk '{print $5}' | cut -d 'T' -f 1)
HOUR=$(last reboot | head -n1 | awk '{print $8}')
IP=$(ip a | grep inet | sed -n '3p' | awk '{print $2}' | cut -d '/' -f 1)
MAC=$(ip a | grep ether | awk '{print $2}')
LVM=$(lsblk | grep LVM | wc -l)
MEM_USED=$(free -m | grep Mem | awk '{print $3}')
MEM_TOTAL=$(free -m | grep Mem | awk '{print $2}')
MEM_PRE=$(python3 -c "a=$MEM_USED/$MEM_TOTAL*100;print('%.2f'%a)")
DISK_USED=$(df --total -m | grep total | awk '{print $3}')
DISK_TOTAL=$(df --total -h | grep total | awk '{print $2}' | sed 's/G/Gb/g')
DISK_PRE=$(df --total -h | grep total | awk '{print $5}')
CPU_1=$(top -bn1 | grep Cpu | awk '{print $2+$4}')
CPU_USAGE=$(python3 -c "a=$CPU_1;print('%.1f'%a)")
wall "  #Architecture: $(uname -a)
        #CPU physical : $(cat /proc/cpuinfo | grep 'physical id' | sort | uniq | wc -l)
        #vCPU : $(cat /proc/cpuinfo | grep processor | wc -l)
        #Memory Usage: $MEM_USED/$(printf $MEM_TOTAL)MB ($MEM_PRE%)
        #Disk Usage: $DISK_USED/$DISK_TOTAL ($DISK_PRE)
        #CPU load: $CPU_USAGE%
        #Last boot: $DATE $HOUR
        #LVM use: $(if [ $LVM -gt 0 ]; then printf 'yes'; else printf 'no'; fi)
        #Connexions TCP : $(ss | grep tcp | grep ESTAB | wc -l) ESTABLISHED
        #User log: $(w -h | awk '{print $1}' | uniq | wc -l)
        #Network: IP $IP ($MAC)
        #Sudo : $(cat /var/log/sudo/sudo_log | grep TTY | wc -l) cmd
"
