#!/bin/sh

read -p "Please enter DB root password [rootpsw]: " db_root
db_root=${db_root:-rootpsw}

read -p "Install MajorDoMo MASTER or ALPHA branch (m/a) [m]: " majordomo_branch
majordomo_branch=${majordomo_branch:-m}

read -p "Do you want to have DB in memory storage [y]: " db_to_memory
db_to_memory=${db_to_memory:-y}

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

#read -p "Install ZWave2MQTT (y/n) [n]: " install_zwave2mqtt
#install_zwave2mqtt=${install_zwave2mqtt:-n}

#read -p "Install KNX2MQTT (y/n) [n]: " install_knx2mqtt
#install_knx2mqtt=${install_knx2mqtt:-n}