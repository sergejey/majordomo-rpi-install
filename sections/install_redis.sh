#!/bin/bash

showMessage "Installing Redis for caching..."

runSudo "apt-get install -y redis"
#replaceString "/var/www/html/config.php" "\/\/define('USE_REDIS" "\/\/\ndefine('USE_REDIS"
sudo sed -i "s/\/\/define('USE_REDIS/\/\/\ndefine('USE_REDIS/" /var/www/html/config.php

#todo: logrotate config
runSudo "mkdir -p /var/log/redis"
runSudo "chown redis:redis /var/log/redis"
runSudo "chmod 755 /var/log/redis"


showMessage "Redis installed."