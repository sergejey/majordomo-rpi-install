#!/bin/bash

showMessage "Post-install sequence."

for d in cached cms debmes modules templates objects rc saverestore; do
  runSudo "mkdir -p /var/www/html/$d"
  runSudo "find /var/www/html/$d -type d -exec chmod 0775 {} \;"
  runSudo "find /var/www/html/$d -type f -exec chmod 0664 {} \;"
done
runSudo "chown -Rf www-data:www-data /var/www/html"

for svc in apache2 mariadb mosquitto; do
  if systemctl is-active --quiet "$svc"; then
    showMessage "Service $svc: active"
  else
    showMessage "WARNING: service $svc is NOT active (systemctl status $svc)"
  fi
done
if pgrep -f "cycle.php" >/dev/null 2>&1; then
  showMessage "MajorDoMo cycle.php: running"
else
  showMessage "WARNING: MajorDoMo cycle.php is not running (service majordomo status, /var/log/majordomo.err)"
fi
