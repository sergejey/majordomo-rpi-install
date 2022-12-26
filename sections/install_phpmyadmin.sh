#!/bin/sh

showMessage "Installing phpMyAdmin..."

sudo wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-english.tar.gz>>$LOG_FILE
sudo tar xzvf phpMyAdmin-5.2.0-english.tar.gz -C /var/www/html/>>$LOG_FILE
sudo rm phpMyAdmin-5.2.0-english.tar.gz>>$LOG_FILE
sudo mv /var/www/html/phpMyAdmin-5.2.0-english /var/www/html/phpmyadmin>>$LOG_FILE
sudo chown -Rf www-data:www-data /var/www/html>>$LOG_FILE

showMessage "phpMyAdmin installed."