FROM debian:10

RUN apt-get update
RUN apt-get install -y mariadb-server
RUN mysql
RUN CREATE DATABASE wordpress
RUN CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'dunno'
RUN GRANT ALL ON wordpress.* TO 'wordpress'@'localhost'

EXPOSE 3306

CMD ["mysqld"]
