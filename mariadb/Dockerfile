FROM debian:10

RUN apt-get update
RUN apt-get install -y mariadb-server
RUN apt-get install -y procps
EXPOSE 3306
COPY add_user.sh /etc/add_user.sh
#RUN mysql -e "CREATE DATABASE wordpress ; CREATE USER 'wordpress'@'wordpress' IDENTIFIED BY 'WBPASSWORD'; GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'wordpress'"
ENTRYPOINT ["/etc/add_user.sh"]
CMD ["mysqld"]
