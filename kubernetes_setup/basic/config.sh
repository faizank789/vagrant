#!/bin/bash

yum update -y && \
yum install wget git -y && \
sed -i s/^SELINUX=.*$/SELINUX=disabled/ /etc/selinux/config && \
sudo systemctl stop firewalld.service && \
sudo systemctl disable firewalld.service && \
sudo sed -E -i 's|^#?(PasswordAuthentication)\s.*|\1 yes|' /etc/ssh/sshd_config && sudo sshd -t && sudo systemctl restart sshd.service  



