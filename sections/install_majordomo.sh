#!/bin/bash

showMessage "Installing MajorDoMo..."

# BASIC INSTALL

#majordomo_branch
if [ "$majordomo_branch" = "a" ]; then
  #download alpha
  showMessage "Downloading ALPHA branch."
  wget https://github.com/sergejey/majordomo/archive/refs/heads/alpha.zip
  runSudo "unzip alpha.zip -d /var/www/"
  runSudo "mv -f /var/www/majordomo-alpha/* /var/www/html/"
  runSudo "mv -f /var/www/majordomo-alpha/.htaccess /var/www/html/"
  runSudo "rm -Rf /var/www/majordomo-alpha"
  rm alpha.zip
else
  #download master
  showMessage "Downloading MASTER branch."
  wget https://github.com/sergejey/majordomo/archive/refs/heads/master.zip
  runSudo "unzip master.zip -d /var/www/"
  runSudo "mv -f /var/www/majordomo-master/* /var/www/html/"
  runSudo "mv -f /var/www/majordomo-master/.htaccess /var/www/html/"
  runSudo "rm -Rf /var/www/majordomo-master"
  rm master.zip
fi

showMessage "Changing files ownership."
runSudo "chown -Rf www-data:www-data /var/www/html"
showMessage "Removing index.html."
runSudo "rm /var/www/html/index.html"
showMessage "Updating file attributes."
runSudo "find /var/www/html/ -type f -exec chmod 0666 {} \;"
showMessage "Updating dirs attributes."
runSudo "find /var/www/html/ -type d -exec chmod 0777 {} \;"


showMessage "Updating config file."
runSudo "mv /var/www/html/config.php.sample /var/www/html/config.php"
sudo sed -i "s/'DB_PASSWORD', ''/'DB_PASSWORD', '$db_root'/" /var/www/html/config.php
sudo sed -i "s/'\/var\/www'/'\/var\/www\/html'/" /var/www/html/config.php

# DATABASE
showMessage "Installing MajorDoMo database."
mysql -u root --password="$db_root" >>"$LOG_FILE" 2>&1 << EOF
-- keep utf8(mb3) here: every table in initial_db.sql is created as
-- DEFAULT CHARSET=utf8, and a utf8mb4 database default would make new tables
-- created later collide with them ("Illegal mix of collations" in joins)
CREATE DATABASE IF NOT EXISTS db_terminal CHARACTER SET utf8 COLLATE utf8_general_ci;
EOF

showMessage "Importing initial database dump."
mysql -u root --password="$db_root" db_terminal >>"$LOG_FILE" 2>&1 <./resources/initial_db.sql

db_tables=$(mysql -u root --password="$db_root" -N -B -e \
  "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='db_terminal'" 2>>"$LOG_FILE")
if [ "${db_tables:-0}" -gt 0 ]; then
  showMessage "Database db_terminal is ready ($db_tables tables)."
else
  showMessage "ERROR: database db_terminal is empty or was not created - check the log above!"
fi

# SERVICE
showMessage "Installing MajorDoMo service."
runSudo "cp ./resources/service_script.sh /etc/init.d/majordomo"
runSudo "chmod 0755 /etc/init.d/majordomo"
runSudo "update-rc.d majordomo defaults"
runSudo "service majordomo start"

# runSudo "(Warning!!!)
sudo sh -c 'echo "www-data ALL=(ALL) NOPASSWD: ALL">/etc/sudoers.d/010_www-data-nopasswd'

# Allow audio for www-data
sudo usermod -aG audio www-data

# UPDATE ALL MODULES
showMessage "Updating MajorDoMo modules..."
majordomoWebCall "http://localhost/modules/market/update_iframe.php?mode2=update_all"

# Log rotate
runSudo "cp ./resources/logrotate_majordomo /etc/logrotate.d/majordomo"

showMessage "MajorDoMo installed."