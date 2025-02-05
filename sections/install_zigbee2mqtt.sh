#!/bin/bash

showMessage "Installing Zigbee2MQTT..."
runSudo "apt-get install -y make"
runSudo "apt-get install -y g++"
runSudo "apt-get install -y gcc"
runSudo "apt-get install -y libsystemd-dev"

runSudo "npm install -g pnpm"

runSudo "mkdir /opt/zigbee2mqtt"

runSudo "rm -Rf /opt/zigbee2mqtt"
runSudo "git clone --depth 1 https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt"
runSudo "chown -R pi:pi /opt/zigbee2mqtt"

cd /opt/zigbee2mqtt/
runSudo "pnpm i --frozen-lockfile"
runSudo "pnpm run build"

cd $destPath/majordomo-rpi-install

replaceStringForce "/opt/zigbee2mqtt/data/configuration.example.yaml" "enabled: false" "enabled: true"
cp /opt/zigbee2mqtt/data/configuration.example.yaml /opt/zigbee2mqtt/data/configuration.yaml

cd $destPath/majordomo-rpi-install

runSudo "chmod -R 777 /opt/zigbee2mqtt"
runSudo "cp ./resources/zigbee2mqtt.service /etc/systemd/system/zigbee2mqtt.service"
runSudo "systemctl enable zigbee2mqtt.service"
runSudo "service zigbee2mqtt start"

installModule "ha_discovery"

showMessage "Zigbee2MQTT installed."