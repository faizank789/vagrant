#!/bin/bash
sudo kubeadm config images pull && \
sudo kubeadm init --ignore-preflight-errors=all > token.txt && \
sudo grep  "kubeadm" token.txt -A 1 > access_token.sh && \
sudo kubeadm config images pull && \
sudo kubeadm init --ignore-preflight-errors=all
sudo mkdir -p $HOME/.kube && \
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config && \
sudo chown $(id -u):$(id -g) $HOME/.kube/config && \
sudo echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >> ~/.bashrc
