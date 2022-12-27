#!/bin/sh

showMessage "Installing PHP 7.4..."
runSudo "apt-get install -y php7.4"
runSudo "apt-get install -y php7.4-mysql"
runSudo "apt-get install -y php7.4-common"
runSudo "apt-get install -y php7.4-json"
runSudo "apt-get install -y php7.4-opcache"
runSudo "apt-get install -y php7.4-readline"
runSudo "apt-get install -y php7.4-bz2"
runSudo "apt-get install -y php7.4-cli"
runSudo "apt-get install -y php7.4-curl"
runSudo "apt-get install -y php7.4-gd"
runSudo "apt-get install -y php7.4-mbstring"
runSudo "apt-get install -y php7.4-xml"
runSudo "apt-get install -y php7.4-bcmath"
#sudo apt-get install -y php7.4-mcrypt"
runSudo "apt-get install -y php7.4-zip"
runSudo "apt-get install -y php7.4-redis"

if [ ! -f /var/www/html/php.php ]; then
 runSudo 'echo "<?php phpinfo(); ?>">/var/www/html/php.php'
 runSudo 'chown www-data:www-data /var/www/html/php.php'
fi

# Update php.ini config
runSudo "sed -i '/post_max_size/s/8/200/' /etc/php/7.4/apache2/php.ini"
runSudo "sed -i '/upload_max_filesize/s/2/50/' /etc/php/7.4/apache2/php.ini"
runSudo "sed -i '/max_file_uploads/s/20/150/' /etc/php/7.4/apache2/php.ini"

replaceString "/etc/php/7.4/apache2/php.ini" "display_errors = Off" "display_errors = On"
replaceString "/etc/php/7.4/apache2/php.ini" "error_reporting = E_ALL \& \~E_DEPRECATED" "error_reporting = E_ALL \& \~E_NOTICE \& \~E_DEPRECATED"

replaceString "/etc/php/7.4/cli/php.ini" "display_errors = Off" "display_errors = On"
replaceString "/etc/php/7.4/cli/php.ini" "error_reporting = E_ALL \& \~E_DEPRECATED" "error_reporting = E_ALL \& \~E_NOTICE \& \~E_DEPRECATED"

runSudo "service apache2 restart"

showMessage "PHP installed."