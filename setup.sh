#!/bin/bash

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg && \

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list && \
 
sudo apt-get install libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev && \

sudo apt update && sudo apt install vagrant && \ 

sudo apt install build-essential && \

sudo apt install vagrant-libvirt && \

sudo vagrant plugin install vagrant-hostmanager && \

sudo vagrant plugin install vagrant-libvirt && \ 

sudo apt install sshpass

