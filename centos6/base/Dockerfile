FROM centos

RUN yum -y update && yum -y upgrade

ADD ./epel_release/epel.repo /etc/yum.repos.d/epel.repo
ADD ./epel_release/RPM-GPG-KEY-EPEL-6 /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
ADD ./ius_release/ius.repo /etc/yum.repos.d/ius.repo
ADD ./ius_release/IUS-COMMUNITY-GPG-KEY /etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY
