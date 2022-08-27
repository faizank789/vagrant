#!/bin/bash

ip=sudo hostname -I && sudo echo "worker $ip" >> /etc/hosts  
sudo bash ../basic/config.sh
sudo bash ../docker/setup.sh
sudo bash ../kube/setup.sh