#!/bin/sh

showMessage "Installing MajorDoMo..."

# BASIC INSTALL

#majordomo_branch
if [ $majordomo_branch == "a" ]; then
  #download alpha
  showMessage "Installing ALPHA branch."
  wget https://github.com/sergejey/majordomo/archive/refs/heads/alpha.zip>>$LOG_FILE
  sudo unzip alpha.zip -d /var/www/>>$LOG_FILE
  sudo mv -f /var/www/majordomo-alpha/{.,}* /var/www/html/>>$LOG_FILE
  sudo rm -Rf /var/www/majordomo-alpha
  rm alpha.zip>>$LOG_FILE
else
  #download master
  showMessage "Installing MASTER branch."
  wget https://github.com/sergejey/majordomo/archive/refs/heads/master.zip>>$LOG_FILE
  sudo unzip master.zip -d /var/www/>>$LOG_FILE
  sudo mv -f /var/www/majordomo-master/{.,}* /var/www/html/>>$LOG_FILE
  sudo rm -Rf /var/www/majordomo-master
  rm master.zip>>$LOG_FILE
fi

sudo chown -Rf www-data:www-data /var/www/html>>$LOG_FILE
find /var/www/html/ -type f -exec sudo chmod 0666 {} \;>>$LOG_FILE
find /var/www/html/ -type d -exec sudo chmod 0777 {} \;>>$LOG_FILE
sudo rm /var/www/html/index.html>>$LOG_FILE>>$LOG_FILE
sudo mv /var/www/html/config.php.sample /var/www/html/config.php>>$LOG_FILE
sudo sed -i "s/'DB_PASSWORD', ''/'DB_PASSWORD', '$db_root'/g" /var/www/html/config.php>>$LOG_FILE
sudo sed -i "s/'\/var\/www'/'\/var\/www\/html'/g" /var/www/html/config.php>>$LOG_FILE

# DATABASE
mysql -u root -p$db_root << EOF
CREATE DATABASE db_terminal CHARACTER SET utf8 COLLATE utf8_general_ci;
EOF

mysql -u root -p$db_root db_terminal<./resources/initial_db.sql

# SERVICE
sudo cp ./resources/service_script.sh /etc/init.d/majordomo>>$LOG_FILE
sudo chmod 0755 /etc/init.d/majordomo>>$LOG_FILE
sudo update-rc.d majordomo defaults>>$LOG_FILE
sudo service majordomo start>>$LOG_FILE

# SUDO (Warning!!!)
sudo sh -c 'echo "www-data ALL=(ALL) NOPASSWD: ALL">/etc/sudoers.d/010_www-data-nopasswd'

showMessage "MajorDoMo installed."