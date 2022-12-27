#!/bin/sh

showMessage "Installing Apache web server..."
runSudo "apt-get install -y apache2"
runSudo "apt-get install -y apache2-bin"
runSudo "apt-get install -y apache2-data"
runSudo "apt-get install -y apache2-utils"

runSudo "a2enmod rewrite"

# Allow .htaccess for all folders
replaceString "/etc/apache2/apache2.conf" "AllowOverride None" "AllowOverride All"

# Disable access log (to save card)
replaceString "/etc/apache2/sites-available/000-default.conf" "CustomLog" "#CustomLog"
replaceString "/etc/apache2/conf-available/other-vhosts-access-log.conf" "CustomLog" "#CustomLog"

# Fixing ownership
runSudo "chown -Rf www-data:www-data /var/www"
runSudo "service apache2 restart"
showMessage "Apache installed."