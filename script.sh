#!/bin/bash
wget https://download.mikrotik.com/routeros/6.49.2/chr-6.49.2.img.zip -O chr.img.zip  && \
gunzip -c chr.img.zip > chr.img  && \
mount -o loop,offset=512 chr.img /mnt && \
#Check network adapter name in next line
ADDRESS=`ip addr show enp1s0 | grep global | cut -d' ' -f 6 | head -n 1` && \
#Check network adapter name line before
GATEWAY=`ip route list | grep default | cut -d' ' -f 3` && \
echo "/ip address add address=$ADDRESS interface=[/interface ethernet find where name=ether1]
/ip route add gateway=$GATEWAY
/ip service disable telnet
/user set 0 name=root password=xxxxxx
 " > /mnt/rw/autorun.scr && \
umount /mnt && \
echo u > /proc/sysrq-trigger && \
#Check drive name in next line
dd if=chr.img bs=1024 of=/dev/sda && \
#Check drive name in line before
echo "sync disk" && \
echo s > /proc/sysrq-trigger && \
echo "Sleep 5 seconds" && \
sleep 5 && \
echo "Ok, reboot" && \
echo b > /proc/sysrq-trigger
