#!/bin/bash


echo >> /tmp/final_check
echo "Crontab Rules">> /tmp/final_check
crontab -l >> /tmp/final_check
echo >> /tmp/final_check
echo "fastdpi.lic">> /tmp/final_check  
cat /etc/dpi/fastdpi.lic >> /tmp/final_check
echo >> /tmp/final_check
echo "FastDPI Coniguration">> /tmp/final_check
cat /etc/dpi/fastdpi.conf | grep -v -e '^$'>> /tmp/final_check
echo >> /tmp/final_check
echo "GRUB Configuration">> /tmp/final_check
cat /etc/default/grub >> /tmp/final_check
echo >> /tmp/final_check
echo "CPU Info">> /tmp/final_check
lscpu >> /tmp/final_check
echo >> /tmp/final_check
echo "Memory Info">> /tmp/final_check
free -h >> /tmp/final_check
echo >> /tmp/final_check
echo "Driverctl">> /tmp/final_check
driverctl list-overrides >> /tmp/final_check
echo >> /tmp/final_check
echo "Ethernet Cards">> /tmp/final_check
lspci | grep Ethernet >> /tmp/final_check
echo >> /tmp/final_check
echo "HP Info">> /tmp/final_check
grep -i hugepages /proc/meminfo >> /tmp/final_check
