#!/bin/bash

showMessage "Installing phpMyAdmin..."

# keep this in sync with https://www.phpmyadmin.net/downloads/
PMA_VERSION="5.2.3"

runSudo "wget -q https://files.phpmyadmin.net/phpMyAdmin/$PMA_VERSION/phpMyAdmin-$PMA_VERSION-english.tar.gz"
runSudo "tar xzf phpMyAdmin-$PMA_VERSION-english.tar.gz -C /var/www/html/"
runSudo "rm phpMyAdmin-$PMA_VERSION-english.tar.gz"
runSudo "rm -Rf /var/www/html/phpmyadmin"
runSudo "mv /var/www/html/phpMyAdmin-$PMA_VERSION-english /var/www/html/phpmyadmin"

# minimal working config: blowfish secret + temp dir (otherwise phpMyAdmin
# complains and cannot store templates cache)
PMA_SECRET=$(head -c 32 /dev/urandom | base64 | tr -d '\n=+/' | cut -c1-32)
runSudo "mkdir -p /var/www/html/phpmyadmin/tmp"
runSudoNoLog "cp /var/www/html/phpmyadmin/config.sample.inc.php /var/www/html/phpmyadmin/config.inc.php"
runSudoNoLog "cat >>/var/www/html/phpmyadmin/config.inc.php <<'PMACFG'
\$cfg['blowfish_secret'] = '$PMA_SECRET';
\$cfg['TempDir'] = '/var/www/html/phpmyadmin/tmp';
PMACFG"
runSudo "chown -Rf www-data:www-data /var/www/html/phpmyadmin"
runSudo "chmod 0700 /var/www/html/phpmyadmin/tmp"

showMessage "phpMyAdmin $PMA_VERSION installed."
