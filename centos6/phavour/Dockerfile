FROM klj613_centos6/base

RUN yum update -y && yum upgrade -y

ADD setup.sh /tmp/setup
RUN /tmp/setup

ADD ./nginx.conf /etc/nginx/conf.d/www.conf

EXPOSE 80

RUN yum install -y supervisor
ADD ./supervisord.conf /etc/supervisord.conf

ADD bootstrap.sh /bootstrap

CMD ["bootstrap", "-n"]
