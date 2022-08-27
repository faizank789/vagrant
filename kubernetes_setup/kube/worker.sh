#!/bin/bash
set -e

master_ip=`dig master +short` && \

kubeadm join $master_ip:6443 --token yi6muo.4ytkfl3l6vl8zfpk \
--discovery-token-unsafe-skip-ca-verification

