#!/bin/sh

showMessage "Setting static IP (${static_ip_address})..."

sudo sed -i "/^interface eth0/d" /etc/dhcpcd.conf
sudo sed -i "/^inform/d" /etc/dhcpcd.conf
sudo sed -i "/^static routers/d" /etc/dhcpcd.conf
sudo sed -i "/^static domain_name_servers/d" /etc/dhcpcd.conf
sudo sed -i "/^noipv6/d" /etc/dhcpcd.conf

sudo echo "interface eth0">>/etc/dhcpcd.conf
sudo echo "inform $static_ip_address/24">>/etc/dhcpcd.conf
sudo echo "static routers=$static_gateway_address">>/etc/dhcpcd.conf
sudo echo "static domain_name_servers=$static_dns_address">>/etc/dhcpcd.conf
sudo echo "noipv6">>/etc/dhcpcd.conf

showMessage "Static IP set."