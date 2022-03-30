# Mikrotik-CHR---VPS-Nazwa.pl

Works with Ubuntu 16.04 on VPS on Nazwa.pl

## 1. Download script to Your machine using this command:
```
wget https://github.com/iksiu6/Mikrotik-CHR---VPS-Nazwa.pl/blob/main/script.sh
```

## 2. Check Your network adapter using 
```
ifconfig -a
```
Should be "enp1s0" if is different use
```
nano script.sh 
```
and change it

## 3. Check name of Your disk device

Should be "sda" if is different use
```
nano script.sh 
```
and change it


## Use this command to install:

```
bash script.sh
```
