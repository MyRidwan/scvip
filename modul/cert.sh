#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
sleep 1
#echo start
sleep 0.5
#source /var/lib/premium-script/ipvps.conf
chmod +x /etc/v2ray/domain
domain=$(cat /etc/v2ray/domain);
systemctl stop v2ray
systemctl stop v2ray@none
clear
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key --ecc
systemctl start v2ray
systemctl start v2ray@none
echo Done
sleep 3
