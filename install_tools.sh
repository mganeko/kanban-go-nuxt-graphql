#!/bin/sh
# install tools on Ubuntu 20.04

apt update
apt install -y mysql-client
snap install go --classic
apt install -y nodejs
apt install -y npm


# node.js must be installed
cd front
npm install
npm audit fix
cd ..

# env
cp setup_env.sh.tmpl setup_env.sh


