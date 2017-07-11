#! /bin/bash

cp /srv/roundcube/config.inc.php /var/www/html/config/
cp /srv/roundcube/composer.json /var/www/html/
cp /srv/roundcube/gmail-logo.png /var/www/html/
cp /srv/roundcube/default /etc/nginx/sites-available/

chown -R www-data:www-data /var/www

# If you need to add plugins with composer.phar, uncomment this section

# service php5-fpm restart
# usermod -s /bin/bash www-data
# sudo -iu www-data sh -c "cd /var/www/html; curl -s https://getcomposer.org/installer | php"
# sudo -iu www-data sh -c "cd /var/www/html; php composer.phar -n update --no-dev"
# echo "Composer done"
# usermod -s /usr/sbin/nologin www-data

service php5-fpm restart && echo "PHP started" && nginx -g 'daemon off;'
