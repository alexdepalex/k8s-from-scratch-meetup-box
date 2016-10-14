#!/bin/bash

docker pull gcr.io/google_containers/hyperkube:v1.4.0
docker pull gcr.io/google_containers/pause-amd64:3.0
docker pull weaveworks/weave-kube:1.7.2
docker pull weaveworks/weave-npc:1.7.2
docker pull weaveworks/weaveexec:1.7.2
docker pull weaveworks/weavedb

sudo mkdir -p /opt/bin

sudo curl -L -o /opt/bin/kubelet -z /opt/bin/kubelet https://storage.googleapis.com/kubernetes-release/release/v1.4.0/bin/linux/amd64/kubelet
sudo curl -L -o /opt/bin/kubectl -z /opt/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.4.0/bin/linux/amd64/kubectl
sudo curl -L -o /opt/bin/kube-proxy -z /opt/bin/kube-proxy https://storage.googleapis.com/kubernetes-release/release/v1.4.0/bin/linux/amd64/kube-proxy
sudo curl -L git.io/weave -o /opt/bin/weave

sudo chmod +x /opt/bin/*
