#!/bin/bash
## Ensure Passwordless SSH
## Set PasswordAuthentication to yes under /etc/ssh/sshd_config file
## sudo systemctl restart sshd

for i in `cat ~/host_file.txt`
do
        HOSTNAME=$(ssh $i hostname)
        DATETIME=$(ssh $i 'date "+%Y-%m-%d %H:%M:%S"')
        CPUUsage=$(ssh $i top -b -n 1 -d1 | grep "Cpu(s)" | awk '{print $2}' | awk -F . '{print $1}')
        MEMUsage=$(ssh $i free | grep Mem | awk '{print $3/$2 * 100.0}')
        DISKUsage=$(ssh $i df -P | column -t | awk '{print $5}' | tail -n 1 | sed 's/%//g')
        echo "$HOSTNAME, $DATETIME, $CPUUsage, $MEMUsage, $DISKUsage" >> ~/output
done
