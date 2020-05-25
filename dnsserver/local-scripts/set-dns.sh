#!/bin/bash

echo "nameserver 127.0.0.1" | sudo tee /etc/resolv.conf
sudo iptables -t nat -A OUTPUT -o lo -d 127.0.0.1 -p udp --dport 53 -j DNAT  --to-destination 127.0.0.1:5353
