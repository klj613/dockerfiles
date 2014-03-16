FROM centos:latest

RUN yum update -y && yum upgrade -y

RUN yum install -y automake zlib zlib-devel readline libyaml libyaml-devel readline-devel ncurses ncurses-devel gdbm gdbm-devel glibc-devel tcl-devel gcc unzip openssl-devel db4-devel byacc make libffi-devel

ADD install.sh /tmp/ruby20-install
RUN /tmp/ruby20-install
