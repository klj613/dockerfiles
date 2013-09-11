FROM ubuntu:12.10
MAINTAINER Kristian Lewis Jones <klj613@kristianlewisjones.com>

# update
RUN apt-get -y update
RUN apt-get -y upgrade

# NGINX
RUN apt-get -y install nginx
RUN rm /etc/nginx/sites-enabled/*
RUN echo "daemon off;" | tee -a /etc/nginx/nginx.conf

# PHP FPM
RUN apt-get -y install php5-fpm
RUN echo "listen = /var/run/php5-fpm.sock" | tee -a /etc/php5/fpm/php-fpm.conf

# PHP
RUN apt-get -y install php5 php5-cli php5-intl php5-gd
RUN echo "date.timezone = \"UTC\"" | tee /etc/php5/conf.d/timezone.ini

# PHP MySQL
RUN apt-get -y install php5-mysql

# PHP PostgreSQL
RUN apt-get -y install php5-pgsql

# virtualhost
ADD ./vhost.conf.dist /etc/nginx/sites-enabled/site.conf

# ports
EXPOSE 80

# supervisord
RUN apt-get install -y supervisor
ADD ./supervisord.conf /etc/supervisor/conf.d/app.conf
CMD ["supervisord", "-n"]
