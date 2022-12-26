#!/bin/sh

showMessage "Installing Homebridge service..."

sudo apt-get install -y nodejs npm>>$LOG_FILE
sudo apt-get install -y libavahi-compat-libdnssd-dev>>$LOG_FILE
sudo npm -g i homebridge --unsafe-perm>>$LOG_FILE
sudo npm install -g homebridge-mqtt>>$LOG_FILE
sudo npm install homebridge-camera-ffmpeg>>$LOG_FILE

mkdir ~/.homebridge/>>$LOG_FILE
cp ./resources/homebridge_config.json ~/.homebridge/config.json>>$LOG_FILE

sudo cp ./resources/homebridge_service.sh /etc/init.d/homebridge>>$LOG_FILE
sudo chmod 0755 /etc/init.d/homebridge>>$LOG_FILE
sudo update-rc.d homebridge defaults>>$LOG_FILE
sudo service homebridge start>>$LOG_FILE

showMessage "Homebridge installed."