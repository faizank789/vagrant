#!/bin/bash

master_ip=`grep "master" /etc/hosts | awk '{print $1}'` && \

kubeadm join $master_ip:6443 --token yi6muo.4ytkfl3l6vl8zfpk --discovery-token-unsafe-skip-ca-verification

