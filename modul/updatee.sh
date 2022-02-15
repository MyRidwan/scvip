#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
clear
echo ""
echo "Start Update.."
sleep 1
wget https://raw.githubusercontent.com/myridwan/scvip/ipuk/sc.sh && chmod +x ins-menu.sh && ./ins-menu.sh
sleep 5
cd
rm -f ins-menu.sh
reboot
