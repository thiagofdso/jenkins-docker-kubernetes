#!/usr/bin/env bash

dockerhub_user=thiagofdso

jenkins_port=8080
image_name=jenkins
image_version=2.0.0
container_name=jenkins


if [ ! -d m2deps ]; then
    mkdir m2deps
fi
if [ -d jobs ]; then
    rm -rf jobs
fi
if [ ! -d jobs ]; then
    mkdir jobs
fi

docker run -p ${jenkins_port}:8080 \
    -v `pwd`/downloads:/var/lib/jenkins/downloads \
    -v `pwd`/jobs:/var/lib/jenkins/jobs/ \
    -v `pwd`/m2deps:/var/lib/jenkins/.m2/repository/ \
    -v $HOME/.ssh:/var/lib/jenkins/.ssh/ \
    --rm --name ${container_name} \
    ${dockerhub_user}/${image_name}:${image_version}
