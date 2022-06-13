#!/bin/sh
mysql -e "CREATE DATABASE wordpress ; CREATE USER 'wordpress'@'wordpress' IDENTIFIED BY 'WBPASSWORD'; GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'wordpress'"

#kill $(ps aux | grep 'mysqld' | awk '{print $2}')
