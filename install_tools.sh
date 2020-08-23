#!/bin/sh
# install toosl on Ubuntu 20.04

apt install mysql-client -y
snap install go --classic -y


# node.js must be installed
cd front
npm install
cd ..

