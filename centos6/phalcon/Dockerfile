FROM klj613:centos6

RUN yum update -y && yum upgrade -y
RUN yum install -y nginx php55u php55u-fpm php55u-pecl-jsonc git

RUN echo "listen = /var/run/php5-fpm.sock" >> /etc/php-fpm.d/www.conf
RUN rm -rf /etc/nginx/conf.d/*

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD ./nginx.conf /etc/nginx/conf.d/www.conf

## phalcon
RUN yum install -y php55u-devel gcc libtool
ADD phalcon /tmp/phalcon
RUN cd /tmp/phalcon/build && ./install
RUN echo "extension=phalcon.so" >> /etc/php.d/phalcon.ini

## app
ADD ./app /srv/www
RUN cd /srv/www && /srv/www/bin/composer.phar install --dev

## ports
EXPOSE 80

## supervisord
RUN yum install -y supervisor
ADD ./supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "-n"]
