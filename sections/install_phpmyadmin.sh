#!/bin/bash

showMessage "Installing phpMyAdmin..."

runSudo "wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-english.tar.gz"
runSudo "tar xzvf phpMyAdmin-5.2.0-english.tar.gz -C /var/www/html/"
runSudo "rm phpMyAdmin-5.2.0-english.tar.gz"
runSudo "mv /var/www/html/phpMyAdmin-5.2.0-english /var/www/html/phpmyadmin"
runSudo "chown -Rf www-data:www-data /var/www/html"

showMessage "phpMyAdmin installed."