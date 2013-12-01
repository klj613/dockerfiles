FROM centos:6.4

RUN yum update -y
RUN yum install -y openssh-server

# Get SSH working. Unsure what pam_loginuid.so does. Use are your own risk.
RUN /etc/init.d/sshd start && /etc/init.d/sshd stop && sed -i 's/session required pam_loginuid.so/#session required pam_loginuid.so/g' /etc/pam.d/sshd && sed -i 's/session required pam_loginuid.so/#session required pam_loginuid.so/g' /etc/pam.d/login

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
