#!/bin/sh

showMessage "Installing Mosquitto MQTT broker..."

runSudo "apt-get install -y mosquitto"
runSudo "apt-get install -y mosquitto-clients"
replaceString "/etc/mosquitto/mosquitto.conf" "persistence true" "persistence false"
if ! grep -q listener "/etc/mosquitto/mosquitto.conf"; then
 replaceString "/etc/mosquitto/mosquitto.conf" "persistence false" "listener 1883\nallow_anonymous true\npersistence false"
fi
runSudo "service mosquitto restart"

#todo: logrotate config
installModule "mqtt"

showMessage "Mosquitto installed."