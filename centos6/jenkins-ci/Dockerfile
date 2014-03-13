FROM centos:latest

RUN yum update -y && yum upgrade -y

ADD jenkins.repo /etc/yum.repos.d/jenkins.repo
ADD RPM-GPG-KEY-JENKINS /etc/pki/rpm-gpg/RPM-GPG-KEY-JENKINS
RUN yum update -y
RUN yum install -y java-openjdk jenkins

VOLUME /home/jenkins/.jenkins
ADD bootstrap /bootstrap
EXPOSE 8080
USER jenkins

CMD ["/usr/bin/java", "-jar", "/usr/lib/jenkins/jenkins.war"]
