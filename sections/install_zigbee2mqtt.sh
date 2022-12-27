#!/bin/sh

showMessage "Installing Zigbee2MQTT..."

runSudo "apt-get install -y nodejs npm"
runSudo "apt-get install -y yarn"
runSudo "git clone https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt"
runSudo "chown -R pi:pi /opt/zigbee2mqtt"

sudo echo "\nfrontend:">>/opt/zigbee2mqtt/data/configuration.yaml
sudo echo "\n  port: 8080">>/opt/zigbee2mqtt/data/configuration.yaml
sudo echo "\n  host: 0.0.0.0">>/opt/zigbee2mqtt/data/configuration.yaml
cd /opt/zigbee2mqtt/
runSudo "npm ci

cd ~/majordomo-rpi-install
runSudo "cp ./resources/zigbee2mqtt.service /etc/systemd/system/zigbee2mqtt.service"
runSudo "systemctl enable zigbee2mqtt.service"
runSudo "service zigbee2mqtt start"

# todo install zigbeedev module for majordomo
# todo logrotate config

showMessage "Zigbee2MQTT installed."