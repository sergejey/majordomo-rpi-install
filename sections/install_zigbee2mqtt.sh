#!/bin/bash

showMessage "Installing Zigbee2MQTT..."

runSudo "apt-get install -y make"
runSudo "apt-get install -y g++"
runSudo "apt-get install -y gcc"

runSudo "mkdir /opt/zigbee2mqtt"

runSudo "rm -Rf /opt/zigbee2mqtt"
runSudo "git clone --depth 1 https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt"
runSudo "chown -R pi:pi /opt/zigbee2mqtt"


sudo echo "frontend:">>/opt/zigbee2mqtt/data/configuration.yaml
sudo echo "  port: 8080">>/opt/zigbee2mqtt/data/configuration.yaml
sudo echo "  host: 0.0.0.0">>/opt/zigbee2mqtt/data/configuration.yaml

replaceString "/opt/zigbee2mqtt/data/configuration.yaml" "homeassistant: false" "homeassistant: true"
replaceString "/opt/zigbee2mqtt/data/configuration.yaml" "permit_join: true" "permit_join: false"

if [ $set_install_ablog == "y" ]; then
 # replacing default value for ablog rpi module
 replaceString "/opt/zigbee2mqtt/data/configuration.yaml" "port: \/dev\/ttyACM0" "port: \/dev\/ttyAMA2"
fi

cd /opt/zigbee2mqtt/
runSudo "npm ci"

cd $destPath/majordomo-rpi-install

runSudo "chmod -R 777 /opt/zigbee2mqtt"
runSudo "cp ./resources/zigbee2mqtt.service /etc/systemd/system/zigbee2mqtt.service"
runSudo "systemctl enable zigbee2mqtt.service"
runSudo "service zigbee2mqtt start"

installModule "ha_discovery"
# todo logrotate config

showMessage "Zigbee2MQTT installed."