#!/bin/sh

if [ ! -f /var/www/html/wp-config.php ]
then
	mkdir -p /var/www/html && cd /var/www/html && wp core download --path=/var/www/html --allow-root
	wp config create --dbhost=$WORDPRESS_DB_HOST --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_ROOT_PASSWORD --allow-root
	wp core install --url=xsaulnie.42.fr --title="xsaulnie's inception" --admin_name=$WORDPRESS_ADMIN_NAME --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=xavier.saulnier@hotmail.fr --allow-root
	wp user create $WORDPRESS_USER xsaulnie@student.42.fr --user_pass=$WORDPRESS_USER_PASSWORD --allow-root
fi

#echo "OUI arrive ici"
exec /usr/sbin/php-fpm7.3 -F
