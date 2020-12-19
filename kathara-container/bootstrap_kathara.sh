#!/bin/bash

echo "installing kathara"

# xterm (recommended)
apt-get install -y xterm software-properties-common

# Kathara repo key
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 21805A48E6CBBA6B991ABE76646193862B759810
add-apt-repository ppa:katharaframework/kathara
# install Kathara
apt-get update
apt-get install -y kathara
