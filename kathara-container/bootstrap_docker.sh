#!/bin/bash

# install dependencies
apt-get update
apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    lxc \
    iptables

# add and verify repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
# TODO: verify key
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# install docker
apt-get install -y docker-ce docker-ce-cli containerd.io
