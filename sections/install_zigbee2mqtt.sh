#!/bin/sh

showMessage "Installing Zigbee2MQTT..."
runSudo "curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -"
runSudo "apt-get install -y nodejs git make g++ gcc"
runSudo " mkdir /opt/zigbee2mqtt"

runSudo "git clone --depth 1 https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt"
runSudo "chown -R pi:pi /opt/zigbee2mqtt"

sudo echo "frontend:">>/opt/zigbee2mqtt/data/configuration.yaml
sudo echo "  port: 8080">>/opt/zigbee2mqtt/data/configuration.yaml
sudo echo "  host: 0.0.0.0">>/opt/zigbee2mqtt/data/configuration.yaml
cd /opt/zigbee2mqtt/
runSudo "npm ci"

cd ~/majordomo-rpi-install
runSudo "cp ./resources/zigbee2mqtt.service /etc/systemd/system/zigbee2mqtt.service"
runSudo "systemctl enable zigbee2mqtt.service"
runSudo "service zigbee2mqtt start"

installModule "zigbeedev"
# todo logrotate config

showMessage "Zigbee2MQTT installed."