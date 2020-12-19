#!/bin/bash

echo "setting up gui"

apt-get install -y --no-install-recommends xfce4
apt-get install -y xrdp

reboot
