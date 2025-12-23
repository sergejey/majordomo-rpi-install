#!/bin/bash

showMessage "Setting static IP (${static_ip_address})..."

sudo nmcli con mod "Wired connection 1" ipv4.addresses "$static_ip_address/24" ipv4.gateway "$static_gateway_address" ipv4.dns "$static_dns_address" ipv4.method "manual"

showMessage "Static IP set."