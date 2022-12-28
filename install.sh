#!/bin/sh

cd ~
rm -Rf ./majordomo-rpi-install
sudo apt-get install -y git
git clone https://github.com/sergejey/majordomo-rpi-install.git

if [ "$0" == *"curl"* ]; then
  echo "Running from curl. Restarting..."
  exit
fi

cd majordomo-rpi-install
clear

echo "Welcome to MajorDoMo installation script for Raspberry Pi!"
echo "More details at https://github.com/sergejey/majordomo-rpi-install"
echo ""
read -p "Ok, are you ready to start? [y]: " startReady
startReady=${startReady:-y}
if [ $startReady != "y" ]; then
 exit
fi


source "./libraries/general.sh"

# Remove old log file if exists
if [ -f $LOG_FILE ]; then
  rm $LOG_FILE
fi

IP_ADDRESS=$(hostname -I | awk '{print $1}')

showMessage "Starting installation script."

# Ask for details
source "./sections/questions.sh"


# Common preparation

source "./sections/common.sh"
source "./sections/install_apache.sh"
source "./sections/install_php.sh"
source "./sections/install_db.sh"
source "./sections/install_phpmyadmin.sh"
source "./sections/install_majordomo.sh"
if [ $db_to_memory == "y" ]; then
  source "./sections/move_db_to_memory.sh"
fi
source "./sections/install_mosquitto.sh"
if [ $install_homebridge == "y" ]; then
 source "./sections/install_homebridge.sh"
fi
if [ $install_rhvoice == "y" ]; then
 source "./sections/install_rhvoice.sh"
fi
if [ $install_redis == "y" ]; then
 source "./sections/install_redis.sh"
fi
if [ $install_z2m == "y" ]; then
 source "./sections/install_zigbee2mqtt.sh"
fi
#todo
#if [ $install_zwave2mqtt == "y" ]; then
# source "./sections/install_zwave2mqtt.sh"
#fi
#if [ $install_knx2mqtt == "y" ]; then
# source "./sections/install_knx2mqtt.sh"
#fi

showMessage "Installation complete."
showMessage "Log file for details: $LOG_FILE"
showMessage "Open web-site: http://$IP_ADDRESS/"

read -p "Do you want to reboot (y/n) [n]: " rebootnow
rebootnow=${rebootnow:-n}

if [ $rebootnow == "y" ]; then
 runSudo "shutdown -r now"
fi