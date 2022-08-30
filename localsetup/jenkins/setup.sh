#!/bin/bash


sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo && \
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key && \

sudo yum upgrade -y && \
sudo yum install java-11-openjdk -y && \
sudo yum install jenkins -y && \
sudo systemctl enable jenkins && sudo systemctl start jenkins && \
sudo systemctl daemon-reload && \