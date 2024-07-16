#!/bin/bash

dnf -y install dnsmasq

cp /vagrant/hosts-file /etc/hosts

sed -i 's/#domain-needed/domain-needed/' /etc/dnsmasq.conf
sed -i 's/#bogus-priv/bogus-priv/' /etc/dnsmasq.conf
sed -i 's/#strict-order/strict-order/' /etc/dnsmasq.conf
sed -i 's/interface=lo/#interface=lo/' /etc/dnsmasq.conf
sed -i 's/bind-interfaces/#bind-interfaces/' /etc/dnsmasq.conf
sed -i 's/#expand-hosts/expand-hosts/' /etc/dnsmasq.conf
sed -i 's/#domain=thekelleys.org.uk/domain=localnet/' /etc/dnsmasq.conf

systemctl enable --now dnsmasq
