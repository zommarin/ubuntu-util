#!/usr/bin/env bash

set -ex

apt-get update

# General build utilities
apt-get install -y curl gnupg

# Install network utilities
apt-get install -y net-tools iputils-ping iproute2 ethtool dnsutils

# Monitoring tools
apt-get install -y htop

# Editors
apt-get install -y emacs-nox

# Misc utils
apt-get install -y less

# Shells
apt-get install -y zsh

# Install kubectl
apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubectl

# Install node.js LTS
apt-get install -y nodejs npm

# Node tools
npm i -g elasticdump
