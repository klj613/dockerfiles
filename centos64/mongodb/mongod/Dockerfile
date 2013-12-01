FROM centos:6.4

RUN yum update -y && yum upgrade -y

ADD mongodb.repo /etc/yum.repos.d/mongodb.repo
RUN yum update -y
RUN yum install -y mongo-10gen-server

VOLUME /data/db
VOLUME /var/log/mongo

ENTRYPOINT ["/usr/bin/mongod"]
