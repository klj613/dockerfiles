yum install -y nginx git

yum install -y acl
yum install -y php55u php55u-fpm php55u-mbstring php55u-opcache php55u-pecl-jsonc php55u-devel php55u-apcu
yum install -y php55u-pecl-memcache --enablerepo=ius-testing
yum install -y gcc
pecl install xdebug

pear config-set auto_discover 1
pear channel-discover pear.phpunit.de
pear install phpunit/PHPUnit

useradd -s /bin/bash phavour

yum install -y memcached # for phpunit testing

echo "listen = /var/run/php5-fpm.sock" >> /etc/php-fpm.d/www.conf
echo "apc.enable_cli=1" >> /etc/php.d/zzz_app.ini
rm -rf /etc/nginx/conf.d/*

echo "date.timezone = \"UTC\"" >> /etc/php.d/timezone.ini
