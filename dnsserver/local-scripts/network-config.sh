#!/bin/bash

if ! ip a show vms-network up >/dev/null; then
    echo "Configuring network interface."
    sudo ip tuntap add mode tap vms-network
    sudo ifconfig vms-network 10.0.10.1 netmask 255.255.255.0 up
    echo "Done!"
fi
