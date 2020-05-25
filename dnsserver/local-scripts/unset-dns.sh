#!/bin/bash

sudo iptables -t nat -D OUTPUT -o lo -d 127.0.0.1 -p udp --dport 53 -j DNAT  --to-destination 127.0.0.1:5353
echo "nameserver 1.1.1.1" | sudo tee /etc/resolv.conf
