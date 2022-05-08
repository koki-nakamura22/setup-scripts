#!/bin/sh

# install docker (ver 17.09.0)
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get install -y docker-ce=17.09.0~ce-0~ubuntu
sudo usermod -aG docker $USER

# start docker service
sudo cgroupfs-mount
sudo service docker start

# setting docker auto start
echo 'sudo cgroupfs-mount' >> ~/.bashrc
echo 'sudo service docker start' >> ~/.bashrc
