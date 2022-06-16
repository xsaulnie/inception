FROM debian:10

EXPOSE 3306
RUN apt update
RUN apt-get install -y openssl php php-fpm php-json mariadb-client php-mysqli php-phar \
php-curl php-dom php-exif php-fileinfo php-mbstring php-xml php-zip
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
RUN apt-get install curl
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp cli update
COPY config_create.sh /etc/config_create.sh
#RUN mkdir -p /var/www/html && cd /var/www/html && wp core download  --allow-root

#RUN wp config create --dbhost=$WORDPRESS_DB_HOST --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_ROOT_PASSWORD --allow-root
#RUN chmod 644 wp-config.php
#RUN wp core install --url=xsaulnie.42.fr --title="xsaulnie's inception" --admin_name=$WORDPRESS_ADMIN_NAME --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=xavier.saulnier@hotmail.fr --allow-root
#RUN wp user create $WORDPRESS_USER xsaulnie@student.42.fr --user_pass=$WORDPRESS_USER_PASSWORD --allow-rooti

EXPOSE 9000

ENTRYPOINT ["sh", "/etc/config_create.sh"]
#CMD ["wp", "bash"]
#CMD tail -f
