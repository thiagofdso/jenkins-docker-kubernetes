FROM registry.redhat.io/openshift4/ose-jenkins
LABEL Author="Thiago Fernandes da Silva Oliveira" 

ARG master_image_version="v.2.0.0"
ENV master_image_version $master_image_version
ENV JENKINS_PASSWORD admin
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
USER root
RUN /usr/local/bin/install-plugins.sh /usr/share/jenkins/ref/plugins.txt
# Auto Configuration Scripts
COPY groovy/* /opt/openshift/configuration/init.groovy.d/
COPY config/*.properties ${JENKINS_HOME}/config/
