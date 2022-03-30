# Mikrotik-CHR---VPS-Nazwa.pl

Works with Ubuntu 16.04 on VPS on Nazwa.pl
## Installing

At the beginning You must download script to Your machine using this command:
```
wget https://github.com/iksiu6/Mikrotik-CHR---VPS-Nazwa.pl/blob/main/script.sh
```

Check Your network adapter using 
```
ifconfig -a
```
Should be "enp1s0" if is different use
```
nano script.sh 
```
and change it

next check name of Your disk device

Should be "sda" if is different use
```
nano script.sh 
```
and change it



## Use this command to install:

```
bash script.sh
```
