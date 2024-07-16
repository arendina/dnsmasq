#!/bin/bash

dnf -y install bind-utils

nmcli connection modify eth0 ipv4.dns 192.168.56.10
nmcli connection modify "System eth1" ipv4.dns 192.168.56.10

nmcli connection down "eth0" && nmcli connection up "eth0"
nmcli connection down "System eth1" && nmcli connection up "System eth1"

# I don't understand why nmcli won't clean up this line
sed -i '/nameserver 10.0.2.3/d' /etc/resolv.conf

host google.com
host dnsmaq.localnet
host dnsmasq
host dnsclient.localnet
host dnsclient
host 192.168.56.10
