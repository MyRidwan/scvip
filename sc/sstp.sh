#!/bin/bash

sleep 0.5
echo "Memulai Install SSTP"
sleep 1

wget https://raw.githubusercontent.com/myridwan/scvip/ipuk/CDN/A/I/U/E/O/sstpo.sh
chmod +x sstpo.sh
./sstpo.sh
rm -f sstpo.sh

echo -e "Powered By RIDWAN"
rm -f sstp.sh
