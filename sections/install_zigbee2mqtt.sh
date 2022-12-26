#!/bin/sh

showMessage "Installing Zigbee2MQTT..."

sudo apt-get install -y nodejs npm>>$LOG_FILE
sudo apt-get install -y yarn>$LOG_FILE
sudo git clone https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt>$LOG_FILE
sudo chown -R pi:pi /opt/zigbee2mqtt>$LOG_FILE

sudo echo "\nfrontend:">>/opt/zigbee2mqtt/data/configuration.yaml>$LOG_FILE
sudo echo "\n  port: 8080">>/opt/zigbee2mqtt/data/configuration.yaml>$LOG_FILE
sudo echo "\n  host: 0.0.0.0">>/opt/zigbee2mqtt/data/configuration.yaml>$LOG_FILE
cd /opt/zigbee2mqtt/
sudo npm ci
cd ~/majordomo-rpi-install
sudo cp ./resources/zigbee2mqtt.service /etc/systemd/system/zigbee2mqtt.service>$LOG_FILE
sudo systemctl enable zigbee2mqtt.service>$LOG_FILE
sudo service zigbee2mqtt start>$LOG_FILE

showMessage "Zigbee2MQTT installed."