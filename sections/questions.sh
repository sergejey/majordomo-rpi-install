#!/bin/bash

read -p "Do you have ab-log RPI4Poe module [n]: " set_install_ablog
set_install_ablog=${set_install_ablog:-n}

read -p "Please enter DB root password [rootpsw]: " db_root
db_root=${db_root:-rootpsw}

read -p "Install MajorDoMo MASTER or ALPHA branch (m/a) [m]: " majordomo_branch
majordomo_branch=${majordomo_branch:-m}

if checkOS "Ubuntu"; then
  db_to_memory_default=n
else
  db_to_memory_default=y
fi

read -p "Do you want to have DB in memory storage [$db_to_memory_default]: " db_to_memory
db_to_memory=${db_to_memory:-$db_to_memory_default}

if [ $db_to_memory == "y" ]; then
 read -p "How much memory to reserve for DB, Mb [150]: " memory_storage_size
 memory_storage_size=${memory_storage_size:-150}
fi

read -p "Install Homebridge (Homekit support) (y/n) [n]: " install_homebridge
install_homebridge=${install_homebridge:-n}

read -p "Install RHVoice for voice synth on board (y/n) [n]: " install_rhvoice
install_rhvoice=${install_rhvoice:-n}

read -p "Install Redis for caching (y/n) [y]: " install_redis
install_redis=${install_redis:-y}

read -p "Install Zigbee2MQTT (y/n) [n]: " install_z2m
install_z2m=${install_z2m:-n}

if checkOS "Ubuntu"; then
  set_static_ip_default=n
else
  set_static_ip_default=y
fi
read -p "Do you want to set static IP address [$set_static_ip_default]: " set_static_ip
set_static_ip=${set_static_ip:-$set_static_ip_default}

if [ $set_static_ip == "y" ]; then
 read -p "IP address to use [$IP_ADDRESS]: " static_ip_address
 static_ip_address=${static_ip_address:-$IP_ADDRESS}
 IP_ADDRESS=${static_ip_address}

 GATEWAY_IP=$(/sbin/ip route | awk '/default/ { print $3 }')
 read -p "Default gateway address to use [$GATEWAY_IP]: " static_gateway_address
 static_gateway_address=${static_gateway_address:-$GATEWAY_IP}

 default_dns_address="$static_gateway_address 8.8.8.8"
 read -p "DNS servers [$default_dns_address]: " static_dns_address
 static_dns_address=${static_dns_address:-$default_dns_address}
fi

read -p "Do you want to disable daily updates [y]: " set_disable_updates
set_disable_updates=${set_disable_updates:-y}

#read -p "Install ZWave2MQTT (y/n) [n]: " install_zwave2mqtt
#install_zwave2mqtt=${install_zwave2mqtt:-n}

#read -p "Install KNX2MQTT (y/n) [n]: " install_knx2mqtt
#install_knx2mqtt=${install_knx2mqtt:-n}