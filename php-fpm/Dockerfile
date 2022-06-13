FROM debian:10
RUN apt update
RUN apt-get install -y openssl php php-fpm  php-json mariadb-client php-mysqli php-phar \
php-curl php-dom php-exif php-fileinfo php-mbstring php-xml php-zip
RUN apt-get install curl
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar #verifier endroit
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp cli update
RUN wp core download --path=wpclidemo.dev --allow-root
RUN wp config create --dbhost=$WORDPRESS_DB_HOST --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_ROOT_PASSWORD --allow-root
RUN chmod 644 wp-config.php
RUN wp core install --url=xsaulnie.42.fr --title="xsaulnie's inception" --admin_name=$WORDPRESS_ADMIN_NAME --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=xavier.saulnier@hotmail.fr --allow-root
RUN wp user create $WORDPRESS_USER xsaulnie@student.42.fr --user_pass=$WORDPRESS_USER_PASSWORD --allow-root

EXPOSE 9000
CMD tail -f
