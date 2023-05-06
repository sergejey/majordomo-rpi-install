#!/bin/bash

# https://ab-log.ru/forum/viewtopic.php?f=1&t=1895
showMessage "Making changes related to AB-LOG RPi4POE module"

# /boot/cmdline.txt
sudo sed -i 's/console=serial0,115200 //' /boot/cmdline.txt

# /boot/config.txt
sudo cp ./resources/boot_config.txt /boot/config.txt>>$LOG_FILE

# clock
sudo systemctl disable hciuart
sudo apt-get purge -y fake-hwclock
# /etc/modules
sudo sed -i "/^i2c-dev/d" /etc/modules
sudo echo "i2c-dev">>/etc/modules


showMessage "All done"