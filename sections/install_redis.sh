#!/bin/bash

showMessage "Installing Redis for caching..."

runSudo "apt-get install -y redis-server"
runSudo "systemctl enable redis-server"
runSudo "systemctl restart redis-server"

# Uncomment USE_REDIS/REDIS_PORT in config.php.
sudo sed -i -E "s@^//[[:space:]]*(Define\('(USE_REDIS|REDIS_PORT|REDIS_DB)'.*)@\1@I" /var/www/html/config.php
if grep -qiE "^Define\('USE_REDIS'" /var/www/html/config.php; then
  showMessage "Redis enabled in config.php."
else
  showMessage "WARNING: could not enable Redis in config.php, do it manually."
fi

#todo: logrotate config
runSudo "mkdir -p /var/log/redis"
runSudo "chown redis:redis /var/log/redis"
runSudo "chmod 755 /var/log/redis"


showMessage "Redis installed."