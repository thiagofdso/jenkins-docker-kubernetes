FROM registry.redhat.io/openshift4/ose-jenkins
USER root
RUN yum update -y && yum install -y make
ENV JENKINS_PASSWORD admim
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/ref/plugins.txt
