FROM klj613_centos6/base

ADD ./sources /tmp/docker-ide
RUN /tmp/docker-ide/setup

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
