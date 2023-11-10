FROM registry.redhat.io/openshift4/ose-jenkins
USER root
RUN yum update -y && \ 
    yum install -y make && \
    mkdir /srv/backup
ENV JENKINS_PASSWORD admin
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/ref/plugins.txt
