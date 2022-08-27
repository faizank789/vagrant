#!/bin/bash

sudo kubeadm config images pull && \
sudo kubeadm init --token yi6muo.4ytkfl3l6vl8zfpk --apiserver-advertise-address=master --ignore-preflight-errors=all
sudo mkdir -p $HOME/.kube && \
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config && \
sudo chown $(id -u):$(id -g) $HOME/.kube/config && \
sudo kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"





