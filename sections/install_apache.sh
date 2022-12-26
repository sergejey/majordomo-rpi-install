#!/bin/sh

showMessage "Installing Apache web server..."
sudo apt-get install -y apache2>>$LOG_FILE
sudo apt-get install -y apache2-bin>>$LOG_FILE
sudo apt-get install -y apache2-data>>$LOG_FILE
sudo apt-get install -y apache2-utils>>$LOG_FILE

sudo a2enmod rewrite>>$LOG_FILE

# Allow .htaccess for all folders
sudo sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Disable access log
sudo sed -i 's/CustomLog/#CustomLog/g' /etc/apache2/sites-available/000-default.conf

# todo: disable access log to save card

# Fixing ownership
sudo chown -Rf www-data:www-data /var/www

sudo service apache2 restart

showMessage "Apache installed."