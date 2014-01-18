setfacl -R -m u:phavour:rwX /srv/www
setfacl -dR -m u:phavour:rwX /srv/www

/usr/bin/supervisord $@
