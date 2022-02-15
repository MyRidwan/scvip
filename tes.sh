#!/bin/bash
# SSH Over Websocket OpenSSH Method

wget -q -O /usr/local/bin/edu-vpn "https://raw.githubusercontent.com/myridwan/scvip/ipuk/dot.py"
chmod +x /usr/local/bin/edu-vpn

cat > /etc/systemd/system/edu-vpn.service << END
[Unit]
Description=Python Proxy 
Documentation=https://dhans-project.xyz
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/edu-vpn 2095
Restart=on-failure
[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable edu-vpn
systemctl restart edu-vpn
echo -e "Done Install Websocket OpenSSH"
rm -f tes.sh
