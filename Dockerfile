FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y \
    git \
    maven \
    docker.io && \
    apt-get clean

USER jenkins