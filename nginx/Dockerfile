FROM debian:10
RUN apt update && apt-get install -y nginx
RUN apt-get install -y openssl
RUN mkdir -p /etc/nginx/ssl && chown -R root:root /etc/nginx/ssl && chmod -R 600 /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -nodes -keyout /etc/nginx/ssl/key.pem -x509 -days 365 -out etc/nginx/ssl/certificate.pem -subj "/C=FR"
RUN mkdir -p /run/nginx/
COPY default /etc/nginx/sites-available/default
EXPOSE 443
#CMD tail -f
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

