#!/bin/sh
# install toosl on Ubuntu 20.04

apt install mysql-client -y
snap install go --classic -y

cd front
npm install
cd ..

