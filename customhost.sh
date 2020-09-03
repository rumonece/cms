#/bin/bash

echo $HOSTNAME |awk -F . '{print $1}' > /etc/hostname
for host in `cat /etc/hostname`
 do `hostnamectl set-hostname $host`;
done 
