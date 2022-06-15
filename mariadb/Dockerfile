FROM debian:10

RUN apt-get update && apt-get install -y mariadb-server
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
#RUN apt-get install -y mariadb-client
EXPOSE 3306
COPY add_user.sh /etc/add_user.sh
#RUN service mysql start
#RUN mysql -e "CREATE DATABASE wordpress"
#RUN mysql -e "CREATE DATABASE wordpress ; CREATE USER 'wordpress'@'wordpress' IDENTIFIED BY 'WBPASSWORD'; GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'wordpress'"
#RUN service mysql stop
#RUN /etc/add_user.sh
CMD /etc/add_user.sh ; exec mysqld
#CMD tail -f
