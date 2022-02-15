#!/bin/bash

sleep 0.5
echo "Memulai Install IPSec"
sleep 1

wget https://raw.githubusercontent.com/myridwan/scvip/ipuk/CDN/A/I/U/E/O/ipseco.sh
chmod +x ipseco.sh
./ipseco.sh
rm -f ipseco.sh

echo -e "Powered By Ridwan"
rm -f ipsec.sh
