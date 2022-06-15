#!/bin/sh
service mysql start
mysql -e "CREATE DATABASE wordpress ; CREATE USER 'wordpress'@'wordpress.inception_inception_network' IDENTIFIED BY 'WBPASSWORD'; GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'wordpress' IDENTIFIED BY 'WBPASSWORD' ; flush privileges"
service mysql stop
sleep 10
#kill $(ps aux | grep 'mysqld' | awk '{print $2}')
