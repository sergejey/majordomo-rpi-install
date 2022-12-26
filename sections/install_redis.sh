#!/bin/sh

showMessage "Installing Redis for caching..."

sudo apt-get install -y redis>>$LOG_FILE
sudo sed -i "s/\/\/define('USE_REDIS/define('USE_REDIS/g" /var/www/html/config.php>>$LOG_FILE

showMessage "Redis installed."