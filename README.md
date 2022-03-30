# Mikrotik-CHR---VPS-Nazwa.pl

Works with Ubuntu 16.04 on VPS on Nazwa.pl

## 1. Download script to Your machine using this command:
```
wget https://raw.githubusercontent.com/iksiu6/Mikrotik-CHR---VPS-Nazwa.pl/main/script.sh
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


## 4. Use this command to install:

```
sh script.sh
```

## 5. Try login using winbox
