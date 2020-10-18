#!/bin/sh
# install tools on Ubuntu 18.04

apt update
apt install -y mysql-client
snap install go --classic
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
apt install -y nodejs
apt install -y npm


# node.js must be installed
cd front
npm install
cd ..

# env
cp setup_env.sh.tmpl setup_env.sh


