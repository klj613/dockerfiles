FROM klj613_centos6/base

RUN yum update -y && yum upgrade -y
RUN yum install -y nginx git php55u php55u-fpm php55u-pecl-memcached php55u-mbstring php55u-opcache php55u-pecl-jsonc

RUN echo "listen = /var/run/php5-fpm.sock" >> /etc/php-fpm.d/www.conf
RUN rm -rf /etc/nginx/conf.d/*

ADD ./nginx.conf /etc/nginx/conf.d/www.conf

RUN echo "date.timezone = \"UTC\"" >> /etc/php.d/timezone.ini

EXPOSE 80

RUN yum install -y supervisor
ADD ./supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "-n"]
