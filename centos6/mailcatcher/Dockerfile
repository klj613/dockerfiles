FROM centos:latest

RUN yum update -y
RUN yum install -y gcc-c++ make sqlite-devel ruby ruby-devel rubygems
RUN gem install mailcatcher --no-rdoc --no-ri

EXPOSE 1080
EXPOSE 1025

CMD ["mailcatcher", "--foreground"]
