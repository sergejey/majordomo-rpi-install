#!/bin/sh

showMessage "Installing Mosquitto MQTT broker..."

sudo apt-get install -y mosquitto>>$LOG_FILE
sudo apt-get install mosquitto-clients>>$LOG_FILE
sudo sed -i 's/persistence true/persistence false/g' /etc/mosquitto/mosquitto.conf
if ! grep -q listener "/etc/mosquitto/mosquitto.conf"; then
 sudo sed -i 's/persistence/listener 1883\nallow_anonymous true\npersistence false/g' /etc/mosquitto/mosquitto.conf
fi
sudo service mosquitto restart

showMessage "Mosquitto installed."