#!/bin/sh

showMessage "Installing MajorDoMo..."

# BASIC INSTALL

#majordomo_branch
if [ $majordomo_branch == "a" ]; then
  #download alpha
  showMessage "Downloading ALPHA branch."
  wget https://github.com/sergejey/majordomo/archive/refs/heads/alpha.zip>>$LOG_FILE
  sudo unzip alpha.zip -d /var/www/>>$LOG_FILE
  sudo mv -f /var/www/majordomo-alpha/* /var/www/html/>>$LOG_FILE
  sudo mv -f /var/www/majordomo-alpha/.htaccess /var/www/html/>>$LOG_FILE
  sudo rm -Rf /var/www/majordomo-alpha
  rm alpha.zip>>$LOG_FILE
else
  #download master
  showMessage "Downloading MASTER branch."
  wget https://github.com/sergejey/majordomo/archive/refs/heads/master.zip>>$LOG_FILE
  sudo unzip master.zip -d /var/www/>>$LOG_FILE
  sudo mv -f /var/www/majordomo-master/* /var/www/html/>>$LOG_FILE
  sudo mv -f /var/www/majordomo-master/.htaccess /var/www/html/>>$LOG_FILE
  sudo rm -Rf /var/www/majordomo-master
  rm master.zip>>$LOG_FILE
fi

showMessage "Changing files ownership."
sudo chown -Rf www-data:www-data /var/www/html>>$LOG_FILE
showMessage "Removing index.html."
sudo rm /var/www/html/index.html>>$LOG_FILE
showMessage "Updating file attributes."
sudo find /var/www/html/ -type f -exec chmod 0666 {} \;
showMessage "Updating dirs attributes."
sudo find /var/www/html/ -type d -exec chmod 0777 {} \;


showMessage "Updating config file."
sudo mv /var/www/html/config.php.sample /var/www/html/config.php>>$LOG_FILE
sudo sed -i "s/'DB_PASSWORD', ''/'DB_PASSWORD', '$db_root'/" /var/www/html/config.php>>$LOG_FILE
sudo sed -i "s/'\/var\/www'/'\/var\/www\/html'/" /var/www/html/config.php>>$LOG_FILE

# DATABASE
showMessage "Installing MajorDoMo database."
mysql -u root -p$db_root << EOF
CREATE DATABASE db_terminal CHARACTER SET utf8 COLLATE utf8_general_ci;
EOF

mysql -u root -p$db_root db_terminal<./resources/initial_db.sql

# SERVICE
showMessage "Installing MajorDoMo service."
sudo cp ./resources/service_script.sh /etc/init.d/majordomo>>$LOG_FILE
sudo chmod 0755 /etc/init.d/majordomo>>$LOG_FILE
sudo update-rc.d majordomo defaults>>$LOG_FILE
sudo service majordomo start>>$LOG_FILE

# SUDO (Warning!!!)
sudo sh -c 'echo "www-data ALL=(ALL) NOPASSWD: ALL">/etc/sudoers.d/010_www-data-nopasswd'

showMessage "MajorDoMo installed."