#!/bin/bash

echo "setting up gui"
apt-get update
apt-get install -y ca-certificates \
  crudini \
  firefox \
  less \
  locales \
  uuid-runtime \
  vim \
  wget \
  xauth \
  xautolock \
  xfce4 \
  xfce4-clipman-plugin \
  xfce4-cpugraph-plugin \
  xfce4-netload-plugin \
  xfce4-screenshooter \
  xfce4-taskmanager \
  xfce4-terminal \
  xfce4-xkb-plugin \
  xorgxrdp \
  xprintidle 

echo "setting up xrdp"

apt-get install -y dbus-x11 xrdp

echo "xrdp finished"
