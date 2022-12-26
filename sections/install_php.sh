#!/bin/sh

showMessage "Installing PHP 7.4..."
sudo apt-get install -y php7.4>>$LOG_FILE
sudo apt-get install -y php7.4-mysql>>$LOG_FILE
sudo apt-get install -y php7.4-common>>$LOG_FILE
sudo apt-get install -y php7.4-json>>$LOG_FILE
sudo apt-get install -y php7.4-opcache>>$LOG_FILE
sudo apt-get install -y php7.4-readline>>$LOG_FILE
sudo apt-get install -y php7.4-bz2>>$LOG_FILE
sudo apt-get install -y php7.4-cli>>$LOG_FILE
sudo apt-get install -y php7.4-curl>>$LOG_FILE
sudo apt-get install -y php7.4-gd>>$LOG_FILE
sudo apt-get install -y php7.4-mbstring>>$LOG_FILE
sudo apt-get install -y php7.4-xml>>$LOG_FILE
sudo apt-get install -y php7.4-bcmath>>$LOG_FILE
#sudo apt-get install -y php7.4-mcrypt>>$LOG_FILE
sudo apt-get install -y php7.4-zip>>$LOG_FILE
sudo apt-get install -y php7.4-redis>>$LOG_FILE

if [ ! -f /var/www/html/php.php ]; then
 sudo sh -c 'echo "<?php phpinfo(); ?>">/var/www/html/php.php'
 sudo sh -c 'chown www-data:www-data /var/www/html/php.php'
fi

# Update php.ini config
sudo sed -i '/post_max_size/s/8/200/' /etc/php/7.4/apache2/php.ini
sudo sed -i '/upload_max_filesize/s/2/50/' /etc/php/7.4/apache2/php.ini
sudo sed -i '/max_file_uploads/s/20/150/' /etc/php/7.4/apache2/php.ini

sudo sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.4/apache2/php.ini
sudo sed -i 's/error_reporting = E_ALL & ~E_DEPRECATED/error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED/' /etc/php/7.4/apache2/php.ini

sudo sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.4/cli/php.ini
sudo sed -i 's/error_reporting = E_ALL & ~E_DEPRECATED/error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED/' /etc/php/7.4/cli/php.ini

sudo service apache2 restart

showMessage "PHP installed."